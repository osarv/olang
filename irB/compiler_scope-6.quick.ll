source_filename = "compiler_scope-6.quick.ll"
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
%"compiler/scope:fnRecs" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/scope:fnRec" = type { i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/typed:Promote" = type { ptr, i32 }
%"compiler/typed:Seq" = type { { i64, ptr }, ptr, i1 }
%"compiler/typed:Cond" = type { ptr, ptr, ptr }
%"compiler/typed:Match" = type { { i64, ptr }, { i64, ptr }, ptr, i1 }
%"compiler/typed:Arm" = type { %"compiler/source:Span", { i64, ptr }, ptr, ptr, ptr }
%"compiler/typed:Try" = type { ptr, { i64, ptr }, i1, i1, i1 }
%"compiler/typed:Clause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr, { i64, ptr }, i64, i32 }
%"compiler/scope:Scoper" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { ptr, ptr }, { ptr, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, i64, i1, %"compiler/source:Span", %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/typed:Plan", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/source:Span", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, ptr, { i64, [2 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, [2 x i64] }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, [2 x i64] }, i1, %"compiler/source:Span", { i64, [2 x i64] }, i1, { i64, [2 x i64] }, i1, i1, i1, %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/scope:fnRecs", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, [2 x i64] }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, { i64, [2 x i64] }, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i64, i1, i32, i1, i1, i1, i1, i64, %"compiler/source:Span", i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i64, i1, i1, i1, i1, i64, i1, i1, i1, i1, i64, i1, i1, i1, i1, i64, %"compiler/source:Span", %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, ptr, { i64, ptr }, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"compiler/scope:Gap", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, i1, i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/typed:Plan" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:Gap" = type { i64, %"compiler/source:Span", { i64, ptr } }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/scope:Val" = type { i32, { i64, [2 x i64] } }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/typed:Alt" = type { ptr, { i64, ptr } }
%"compiler/typed:Bind" = type { i32, ptr }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/scope:summary" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/scope:fnRecs", i1, i1, i1, i1 }
%"compiler/scope:twinTab" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/scope:rel" = type { { i64, [2 x i64] }, { i64, [2 x i64] }, i1, %"compiler/source:Span", i64, i1, i1 }
%"compiler/typed:DerivedArg" = type { i64, i64, { i64, [2 x i64] } }
%"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" = type { ptr, i64 }
%"compiler/scope:compRun" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/diag:Taken", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"compiler/diag:Taken" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:markRead" = type { i64, i64, { i64, [1 x i64] } }
%"compiler/scope:sumRead" = type { i64, ptr }
%"compiler/typed:If" = type { ptr, ptr, ptr }
%"compiler/typed:Slice" = type { ptr, ptr, ptr, i32 }
%"compiler/typed:Join" = type { ptr, i1, { i64, ptr } }
%"compiler/typed:Spawn" = type { { i64, ptr }, ptr, { i64, ptr }, i32 }
%"compiler/typed:TaskClause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr }
%"compiler/scope:verAtom" = type { i64, i64, i64, i64, i64, i64, i1, i64 }
%"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d" = type { i64, %"compiler/scope:fnRecs" }
%"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" = type { i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
define dso_local i64 @compiler_2fscope_2ecapCode(i64 %a0, i64 %a1) #0 {
entry:
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = mul i64 %a0, 4096
  %t7 = add i64 %t3, %a1
  %t9 = sub i64 -2, %t7
  store i64 %t9, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eaddRecs(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
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
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l14 = alloca ptr
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca i64
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca i64
  %l23 = alloca ptr
  %l24 = alloca i32
  %l25 = alloca i32
  %l26 = alloca i32
  %l27 = alloca i32
  %l28 = alloca i32
  %l29 = alloca ptr
  %l30 = alloca i64
  %l31 = alloca ptr
  %l32 = alloca %"compiler/scope:fnRecs"
  %l35 = alloca ptr
  %l36 = alloca i1
  %l45 = alloca ptr
  %l46 = alloca i1
  %l56 = alloca ptr
  %l57 = alloca i1
  %l66 = alloca i1
  %l72 = alloca { i64, ptr }
  %l76 = alloca ptr
  %l77 = alloca i1
  %l86 = alloca ptr
  %l87 = alloca i1
  %l101 = alloca ptr
  %l102 = alloca i1
  %l115 = alloca { i64, ptr }
  %l128 = alloca ptr
  %l129 = alloca ptr
  %l137 = alloca ptr
  %l138 = alloca i1
  %l155 = alloca { i64, ptr }
  %l166 = alloca { i64, ptr }
  %l177 = alloca ptr
  %l178 = alloca i1
  %l183 = alloca ptr
  %l184 = alloca i1
  %l189 = alloca ptr
  %l191 = alloca i64
  %l192 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l193 = alloca %"compiler/scope:fnRec"
  %l194 = alloca ptr
  %l195 = alloca i1
  %l202 = alloca ptr
  %l204 = alloca i64
  %l205 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l210 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l211 = alloca i32
  %l213 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l214 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l215 = alloca %"compiler/scope:fnRec"
  %l217 = alloca %"compiler/scope:fnRec"
  %l218 = alloca ptr
  %l219 = alloca i1
  %l226 = alloca ptr
  %l228 = alloca i64
  %l229 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l234 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l235 = alloca i32
  %l237 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l238 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l239 = alloca %"compiler/scope:fnRec"
  %l241 = alloca %"compiler/scope:fnRec"
  %l242 = alloca ptr
  %l243 = alloca i1
  %l248 = alloca ptr
  %l249 = alloca i1
  %l254 = alloca ptr
  %l255 = alloca i1
  %l261 = alloca i64
  %l268 = alloca ptr
  %l269 = alloca i1
  %l274 = alloca %"compiler/scope:fnRecs"
  %l280 = alloca %"compiler/scope:fnRecs"
  %l281 = alloca i32
  %l283 = alloca %"compiler/scope:fnRecs"
  %s21 = alloca %olang.scope
  %s22 = alloca %olang.scope
  %s23 = alloca %olang.scope
  %s26 = alloca %olang.scope
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
  store ptr %t5, ptr %l35, !tbaa !29
  store i1 false, ptr %l36, !tbaa !21
  %t6 = load ptr, ptr %l35, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l35, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 18}
  %t12 = icmp eq i64 %t10, 17
  store i1 %t12, ptr %l36, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l36, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l2, !tbaa !29
  %t16 = getelementptr { i64, [5 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t16, i32 0, i32 2
  %t18 = load ptr, ptr %t17
  store ptr %t18, ptr %l3, !tbaa !29
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t22 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eaddRecs(ptr %v0, ptr %v1, ptr %v2, ptr %t20, ptr %t21, ptr %t22)
  br label %bb9
bb9:
  br label %bb167
bb10:
  %t27 = load ptr, ptr %l2, !tbaa !29
  store ptr %t27, ptr %l45, !tbaa !29
  store i1 false, ptr %l46, !tbaa !21
  %t28 = load ptr, ptr %l45, !tbaa !29
  %t29 = icmp ne ptr %t28, null
  br i1 %t29, label %bb11, label %bb12
bb11:
  %t31 = load ptr, ptr %l45, !tbaa !29
  %t32 = load i64, ptr %t31, !range !{i64 0, i64 18}
  %t34 = icmp eq i64 %t32, 5
  store i1 %t34, ptr %l46, !tbaa !21
  br label %bb12
bb12:
  %t35 = load i1, ptr %l46, !tbaa !21
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
  %t46 = getelementptr %"compiler/typed:Promote", ptr %t44, i32 0, i32 0
  %t47 = load ptr, ptr %t46, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eaddRecs(ptr %v0, ptr %v1, ptr %v2, ptr %t42, ptr %t43, ptr %t47)
  br label %bb16
bb16:
  br label %bb167
bb17:
  %t52 = load ptr, ptr %l2, !tbaa !29
  store ptr %t52, ptr %l56, !tbaa !29
  store i1 false, ptr %l57, !tbaa !21
  %t53 = load ptr, ptr %l56, !tbaa !29
  %t54 = icmp ne ptr %t53, null
  br i1 %t54, label %bb18, label %bb19
bb18:
  %t56 = load ptr, ptr %l56, !tbaa !29
  %t57 = load i64, ptr %t56, !range !{i64 0, i64 18}
  %t59 = icmp eq i64 %t57, 9
  store i1 %t59, ptr %l57, !tbaa !21
  br label %bb19
bb19:
  %t60 = load i1, ptr %l57, !tbaa !21
  br i1 %t60, label %bb20, label %bb21
bb20:
  %t61 = load ptr, ptr %l2, !tbaa !29
  %t63 = getelementptr { i64, [5 x i64] }, ptr %t61, i32 0, i32 1
  %t64 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t63, i32 0, i32 2
  %t65 = load i32, ptr %t64, !range !{i32 0, i32 52}
  store i32 %t65, ptr %l5
  %t67 = load ptr, ptr %l2, !tbaa !29
  %t69 = getelementptr { i64, [5 x i64] }, ptr %t67, i32 0, i32 1
  %t70 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t69, i32 0, i32 4
  %t71 = load { i64, ptr }, ptr %t70
  store { i64, ptr } %t71, ptr %l6, !tbaa !27
  br label %bb22
bb21:
  br label %bb30
bb22:
  %t73 = load i32, ptr %l5, !range !{i32 0, i32 52}
  %t75 = trunc i64 20 to i32
  %t76 = icmp eq i32 %t73, %t75
  br i1 %t76, label %bb23, label %bb24
bb23:
  %t78 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t80 = extractvalue { i64, ptr } %t78, 0
  %t82 = icmp eq i64 %t80, 1
  store i1 %t82, ptr %l66, !tbaa !21
  br label %bb25
bb24:
  store i1 false, ptr %l66, !tbaa !21
  br label %bb25
bb25:
  %t84 = load i1, ptr %l66, !tbaa !21
  br i1 %t84, label %bb26, label %bb27
bb26:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load ptr, ptr %l1, !tbaa !29
  %t87 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t87, ptr %l72, !tbaa !27
  %t88 = getelementptr { i64, ptr }, ptr %l72, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !27
  %t90 = getelementptr ptr, ptr %t89, i64 0
  %t91 = load ptr, ptr %t90, !tbaa !39
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eaddRecs(ptr %v0, ptr %v1, ptr %v2, ptr %t85, ptr %t86, ptr %t91)
  br label %bb28
bb27:
  br label %bb29
bb28:
  br label %ret
bb29:
  %t96 = load ptr, ptr %l1, !tbaa !29
  %t98 = getelementptr %"compiler/scope:fnRecs", ptr %t96, i32 0, i32 1
  store i1 false, ptr %t98, !tbaa !21
  br label %bb167
bb30:
  %t99 = load ptr, ptr %l2, !tbaa !29
  store ptr %t99, ptr %l76, !tbaa !29
  store i1 false, ptr %l77, !tbaa !21
  %t100 = load ptr, ptr %l76, !tbaa !29
  %t101 = icmp ne ptr %t100, null
  br i1 %t101, label %bb31, label %bb32
bb31:
  %t103 = load ptr, ptr %l76, !tbaa !29
  %t104 = load i64, ptr %t103, !range !{i64 0, i64 18}
  %t106 = icmp eq i64 %t104, 12
  store i1 %t106, ptr %l77, !tbaa !21
  br label %bb32
bb32:
  %t107 = load i1, ptr %l77, !tbaa !21
  br i1 %t107, label %bb33, label %bb34
bb33:
  %t108 = load ptr, ptr %l2, !tbaa !29
  %t110 = getelementptr { i64, [5 x i64] }, ptr %t108, i32 0, i32 1
  %t111 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t110, i32 0, i32 2
  %t112 = load ptr, ptr %t111
  store ptr %t112, ptr %l7, !tbaa !29
  br label %bb35
bb34:
  br label %bb37
bb35:
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t115 = load ptr, ptr %l1, !tbaa !29
  %t116 = load ptr, ptr %l7, !tbaa !29
  %t118 = getelementptr %"compiler/typed:Seq", ptr %t116, i32 0, i32 1
  %t119 = load ptr, ptr %t118, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eaddRecs(ptr %v0, ptr %v1, ptr %v2, ptr %t114, ptr %t115, ptr %t119)
  br label %bb36
bb36:
  br label %bb167
bb37:
  %t123 = load ptr, ptr %l2, !tbaa !29
  store ptr %t123, ptr %l86, !tbaa !29
  store i1 false, ptr %l87, !tbaa !21
  %t124 = load ptr, ptr %l86, !tbaa !29
  %t125 = icmp ne ptr %t124, null
  br i1 %t125, label %bb38, label %bb39
bb38:
  %t127 = load ptr, ptr %l86, !tbaa !29
  %t128 = load i64, ptr %t127, !range !{i64 0, i64 18}
  %t130 = icmp eq i64 %t128, 11
  store i1 %t130, ptr %l87, !tbaa !21
  br label %bb39
bb39:
  %t131 = load i1, ptr %l87, !tbaa !21
  br i1 %t131, label %bb40, label %bb41
bb40:
  %t132 = load ptr, ptr %l2, !tbaa !29
  %t134 = getelementptr { i64, [5 x i64] }, ptr %t132, i32 0, i32 1
  %t135 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t134, i32 0, i32 2
  %t136 = load ptr, ptr %t135
  store ptr %t136, ptr %l8, !tbaa !29
  br label %bb42
bb41:
  br label %bb45
bb42:
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t139 = load ptr, ptr %l1, !tbaa !29
  %t140 = load ptr, ptr %l8, !tbaa !29
  %t142 = getelementptr %"compiler/typed:Cond", ptr %t140, i32 0, i32 1
  %t143 = load ptr, ptr %t142, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eaddRecs(ptr %v0, ptr %v1, ptr %v2, ptr %t138, ptr %t139, ptr %t143)
  br label %bb43
bb43:
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t148 = load ptr, ptr %l1, !tbaa !29
  %t149 = load ptr, ptr %l8, !tbaa !29
  %t151 = getelementptr %"compiler/typed:Cond", ptr %t149, i32 0, i32 2
  %t152 = load ptr, ptr %t151, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eaddRecs(ptr %v0, ptr %v1, ptr %v2, ptr %t147, ptr %t148, ptr %t152)
  br label %bb44
bb44:
  br label %bb167
bb45:
  %t157 = load ptr, ptr %l2, !tbaa !29
  store ptr %t157, ptr %l101, !tbaa !29
  store i1 false, ptr %l102, !tbaa !21
  %t158 = load ptr, ptr %l101, !tbaa !29
  %t159 = icmp ne ptr %t158, null
  br i1 %t159, label %bb46, label %bb47
bb46:
  %t161 = load ptr, ptr %l101, !tbaa !29
  %t162 = load i64, ptr %t161, !range !{i64 0, i64 18}
  %t164 = icmp eq i64 %t162, 13
  store i1 %t164, ptr %l102, !tbaa !21
  br label %bb47
bb47:
  %t165 = load i1, ptr %l102, !tbaa !21
  br i1 %t165, label %bb48, label %bb49
bb48:
  %t166 = load ptr, ptr %l2, !tbaa !29
  %t168 = getelementptr { i64, [5 x i64] }, ptr %t166, i32 0, i32 1
  %t169 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t168, i32 0, i32 2
  %t170 = load ptr, ptr %t169
  store ptr %t170, ptr %l9, !tbaa !29
  br label %bb50
bb49:
  br label %bb65
bb50:
  %t172 = load ptr, ptr %l9, !tbaa !29
  %t174 = getelementptr %"compiler/typed:Match", ptr %t172, i32 0, i32 1
  %t175 = load { i64, ptr }, ptr %t174, !tbaa !27
  store { i64, ptr } %t175, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t177 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t179 = extractvalue { i64, ptr } %t177, 0
  store i64 %t179, ptr %l12, !tbaa !24
  br label %bb51
bb51:
  %t181 = load i64, ptr %l11, !tbaa !24
  %t182 = load i64, ptr %l12, !tbaa !24
  %t185 = icmp slt i64 %t181, %t182
  %t187 = xor i1 %t185, true
  br i1 %t187, label %bb52, label %bb53
bb52:
  br label %bb57
bb53:
  br label %bb54
bb54:
  %t189 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t189, ptr %l115, !tbaa !27
  %t190 = load i64, ptr %l11, !tbaa !24
  %t192 = getelementptr { i64, ptr }, ptr %l115, i32 0, i32 1
  %t193 = load ptr, ptr %t192, !tbaa !27
  %t194 = getelementptr ptr, ptr %t193, i64 %t190
  %t195 = load ptr, ptr %t194, !tbaa !39
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t198 = load ptr, ptr %l1, !tbaa !29
  %t201 = getelementptr %"compiler/typed:Arm", ptr %t195, i32 0, i32 4
  %t202 = load ptr, ptr %t201, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eaddRecs(ptr %v0, ptr %v1, ptr %v2, ptr %t197, ptr %t198, ptr %t202)
  br label %bb55
bb55:
  br label %bb56
bb56:
  %t206 = load i64, ptr %l11, !tbaa !24
  %t208 = add i64 %t206, 1
  store i64 %t208, ptr %l11, !tbaa !24
  br label %bb51
bb57:
  %t210 = load ptr, ptr %l9, !tbaa !29
  %t212 = getelementptr %"compiler/typed:Match", ptr %t210, i32 0, i32 2
  %t213 = load ptr, ptr %t212, !tbaa !29
  %t215 = icmp eq ptr %t213, null
  %t217 = xor i1 %t215, true
  br i1 %t217, label %bb58, label %bb59
bb58:
  %t219 = load ptr, ptr %l0, !tbaa !29
  store ptr %t219, ptr %l128, !tbaa !29
  %t220 = load ptr, ptr %l1, !tbaa !29
  store ptr %t220, ptr %l129, !tbaa !29
  %t221 = load ptr, ptr %l9, !tbaa !29
  %t223 = getelementptr %"compiler/typed:Match", ptr %t221, i32 0, i32 2
  %t224 = load ptr, ptr %t223, !tbaa !29
  %t226 = icmp eq ptr %t224, null
  br i1 %t226, label %bb60, label %bb61
bb59:
  br label %bb64
bb60:
  call void @__olang_check_failed(ptr @olang_loc_b8b21d171ea0c96b_887a77d2bd40a94f)
  unreachable
bb61:
  br label %bb62
bb62:
  %t228 = load ptr, ptr %l9, !tbaa !29
  %t230 = getelementptr %"compiler/typed:Match", ptr %t228, i32 0, i32 2
  %t231 = load ptr, ptr %t230, !tbaa !29
  %t234 = getelementptr %"compiler/typed:Arm", ptr %t231, i32 0, i32 4
  %t235 = load ptr, ptr %t234, !tbaa !29
  %t236 = load ptr, ptr %l128, !tbaa !29
  %t237 = load ptr, ptr %l129, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eaddRecs(ptr %v0, ptr %v1, ptr %v2, ptr %t236, ptr %t237, ptr %t235)
  br label %bb63
bb63:
  br label %bb64
bb64:
  br label %bb167
bb65:
  %t239 = load ptr, ptr %l2, !tbaa !29
  store ptr %t239, ptr %l137, !tbaa !29
  store i1 false, ptr %l138, !tbaa !21
  %t240 = load ptr, ptr %l137, !tbaa !29
  %t241 = icmp ne ptr %t240, null
  br i1 %t241, label %bb66, label %bb67
bb66:
  %t243 = load ptr, ptr %l137, !tbaa !29
  %t244 = load i64, ptr %t243, !range !{i64 0, i64 18}
  %t246 = icmp eq i64 %t244, 14
  store i1 %t246, ptr %l138, !tbaa !21
  br label %bb67
bb67:
  %t247 = load i1, ptr %l138, !tbaa !21
  br i1 %t247, label %bb68, label %bb69
bb68:
  %t248 = load ptr, ptr %l2, !tbaa !29
  %t250 = getelementptr { i64, [5 x i64] }, ptr %t248, i32 0, i32 1
  %t251 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t250, i32 0, i32 2
  %t252 = load ptr, ptr %t251
  store ptr %t252, ptr %l14, !tbaa !29
  br label %bb70
bb69:
  br label %bb85
bb70:
  %t254 = load ptr, ptr %l0, !tbaa !29
  %t255 = load ptr, ptr %l1, !tbaa !29
  %t256 = load ptr, ptr %l14, !tbaa !29
  %t258 = getelementptr %"compiler/typed:Try", ptr %t256, i32 0, i32 0
  %t259 = load ptr, ptr %t258, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eaddRecs(ptr %v0, ptr %v1, ptr %v2, ptr %t254, ptr %t255, ptr %t259)
  br label %bb71
bb71:
  %t263 = load ptr, ptr %l14, !tbaa !29
  %t265 = getelementptr %"compiler/typed:Try", ptr %t263, i32 0, i32 1
  %t266 = load { i64, ptr }, ptr %t265, !tbaa !27
  store { i64, ptr } %t266, ptr %l15, !tbaa !27
  store i64 0, ptr %l16, !tbaa !24
  %t268 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t270 = extractvalue { i64, ptr } %t268, 0
  store i64 %t270, ptr %l17, !tbaa !24
  br label %bb72
bb72:
  %t272 = load i64, ptr %l16, !tbaa !24
  %t273 = load i64, ptr %l17, !tbaa !24
  %t276 = icmp slt i64 %t272, %t273
  %t278 = xor i1 %t276, true
  br i1 %t278, label %bb73, label %bb74
bb73:
  br label %bb84
bb74:
  br label %bb75
bb75:
  %t280 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t280, ptr %l155, !tbaa !27
  %t281 = load i64, ptr %l16, !tbaa !24
  %t283 = getelementptr { i64, ptr }, ptr %l155, i32 0, i32 1
  %t284 = load ptr, ptr %t283, !tbaa !27
  %t285 = getelementptr ptr, ptr %t284, i64 %t281
  %t286 = load ptr, ptr %t285, !tbaa !39
  %t290 = getelementptr %"compiler/typed:Clause", ptr %t286, i32 0, i32 4
  %t291 = load { i64, ptr }, ptr %t290, !tbaa !27
  store { i64, ptr } %t291, ptr %l19, !tbaa !27
  store i64 0, ptr %l20, !tbaa !24
  %t293 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t295 = extractvalue { i64, ptr } %t293, 0
  store i64 %t295, ptr %l21, !tbaa !24
  br label %bb76
bb76:
  %t297 = load i64, ptr %l20, !tbaa !24
  %t298 = load i64, ptr %l21, !tbaa !24
  %t301 = icmp slt i64 %t297, %t298
  %t303 = xor i1 %t301, true
  br i1 %t303, label %bb77, label %bb78
bb77:
  br label %bb82
bb78:
  br label %bb79
bb79:
  %t305 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t305, ptr %l166, !tbaa !27
  %t306 = load i64, ptr %l20, !tbaa !24
  %t308 = getelementptr { i64, ptr }, ptr %l166, i32 0, i32 1
  %t309 = load ptr, ptr %t308, !tbaa !27
  %t310 = getelementptr ptr, ptr %t309, i64 %t306
  %t311 = load ptr, ptr %t310, !tbaa !39
  %t313 = load ptr, ptr %l0, !tbaa !29
  %t314 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eaddRecs(ptr %v0, ptr %v1, ptr %v2, ptr %t313, ptr %t314, ptr %t311)
  br label %bb80
bb80:
  br label %bb81
bb81:
  %t320 = load i64, ptr %l20, !tbaa !24
  %t322 = add i64 %t320, 1
  store i64 %t322, ptr %l20, !tbaa !24
  br label %bb76
bb82:
  br label %bb83
bb83:
  %t324 = load i64, ptr %l16, !tbaa !24
  %t326 = add i64 %t324, 1
  store i64 %t326, ptr %l16, !tbaa !24
  br label %bb72
bb84:
  br label %bb167
bb85:
  %t328 = load ptr, ptr %l2, !tbaa !29
  store ptr %t328, ptr %l177, !tbaa !29
  store i1 false, ptr %l178, !tbaa !21
  %t329 = load ptr, ptr %l177, !tbaa !29
  %t330 = icmp ne ptr %t329, null
  br i1 %t330, label %bb86, label %bb87
bb86:
  %t332 = load ptr, ptr %l177, !tbaa !29
  %t333 = load i64, ptr %t332, !range !{i64 0, i64 18}
  %t335 = icmp eq i64 %t333, 15
  store i1 %t335, ptr %l178, !tbaa !21
  br label %bb87
bb87:
  %t336 = load i1, ptr %l178, !tbaa !21
  br i1 %t336, label %bb88, label %bb89
bb88:
  %t337 = load ptr, ptr %l2, !tbaa !29
  %t339 = getelementptr { i64, [5 x i64] }, ptr %t337, i32 0, i32 1
  %t340 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t339, i32 0, i32 2
  %t341 = load ptr, ptr %t340
  store ptr %t341, ptr %l23, !tbaa !29
  br label %bb90
bb89:
  br label %bb131
bb90:
  %t343 = load ptr, ptr %l23, !tbaa !29
  store ptr %t343, ptr %l183, !tbaa !29
  store i1 false, ptr %l184, !tbaa !21
  %t344 = load ptr, ptr %l183, !tbaa !29
  %t345 = icmp ne ptr %t344, null
  br i1 %t345, label %bb91, label %bb92
bb91:
  %t347 = load ptr, ptr %l183, !tbaa !29
  %t348 = load i64, ptr %t347, !range !{i64 0, i64 3}
  %t350 = icmp eq i64 %t348, 0
  store i1 %t350, ptr %l184, !tbaa !21
  br label %bb92
bb92:
  %t351 = load i1, ptr %l184, !tbaa !21
  br i1 %t351, label %bb93, label %bb94
bb93:
  %t352 = load ptr, ptr %l23, !tbaa !29
  %t354 = getelementptr { i64, [4 x i64] }, ptr %t352, i32 0, i32 1
  %t355 = getelementptr { i32 }, ptr %t354, i32 0, i32 0
  %t356 = load i32, ptr %t355
  store i32 %t356, ptr %l24, !tbaa !23
  br label %bb95
bb94:
  br label %bb99
bb95:
  store %olang.scope zeroinitializer, ptr %s21
  %t358 = load ptr, ptr %l1, !tbaa !29
  store ptr %t358, ptr %l189, !tbaa !29
  %t359 = load i32, ptr %l24, !tbaa !23
  %t361 = sext i32 %t359 to i64
  store i64 %t361, ptr %l191, !tbaa !24
  %t362 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ector(ptr %s21, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t362, ptr %l192
  br label %bb96
bb96:
  %t363 = load i64, ptr %l191, !tbaa !24
  %t364 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l192
  %t365 = call %"compiler/scope:fnRec" @compiler_2fscope_3afnRec_2ector(ptr %s21, ptr %s21, i64 %t363, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t364, i1 false)
  store %"compiler/scope:fnRec" %t365, ptr %l193
  br label %bb97
bb97:
  %t366 = load ptr, ptr %l189, !tbaa !29
  %t367 = load %"compiler/scope:fnRec", ptr %l193
  call void @compiler_2fscope_2eaddRec(ptr %v1, ptr %s21, ptr %t366, %"compiler/scope:fnRec" %t367)
  br label %bb98
bb98:
  call void @__olang_scope_close(ptr %s21)
  br label %bb130
bb99:
  %t368 = load ptr, ptr %l23, !tbaa !29
  store ptr %t368, ptr %l194, !tbaa !29
  store i1 false, ptr %l195, !tbaa !21
  %t369 = load ptr, ptr %l194, !tbaa !29
  %t370 = icmp ne ptr %t369, null
  br i1 %t370, label %bb100, label %bb101
bb100:
  %t372 = load ptr, ptr %l194, !tbaa !29
  %t373 = load i64, ptr %t372, !range !{i64 0, i64 3}
  %t375 = icmp eq i64 %t373, 1
  store i1 %t375, ptr %l195, !tbaa !21
  br label %bb101
bb101:
  %t376 = load i1, ptr %l195, !tbaa !21
  br i1 %t376, label %bb102, label %bb103
bb102:
  %t377 = load ptr, ptr %l23, !tbaa !29
  %t379 = getelementptr { i64, [4 x i64] }, ptr %t377, i32 0, i32 1
  %t380 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t379, i32 0, i32 0
  %t381 = load i32, ptr %t380
  store i32 %t381, ptr %l25, !tbaa !23
  %t383 = load ptr, ptr %l23, !tbaa !29
  %t385 = getelementptr { i64, [4 x i64] }, ptr %t383, i32 0, i32 1
  %t386 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t385, i32 0, i32 2
  %t387 = load i32, ptr %t386
  store i32 %t387, ptr %l26, !tbaa !23
  br label %bb104
bb103:
  br label %bb114
bb104:
  store %olang.scope zeroinitializer, ptr %s22
  %t389 = load ptr, ptr %l1, !tbaa !29
  store ptr %t389, ptr %l202, !tbaa !29
  %t390 = load i32, ptr %l25, !tbaa !23
  %t392 = sext i32 %t390 to i64
  store i64 %t392, ptr %l204, !tbaa !24
  %t393 = load ptr, ptr %l0, !tbaa !29
  %t395 = getelementptr %"compiler/scope:Scoper", ptr %t393, i32 0, i32 92
  %t396 = load i32, ptr %l26, !tbaa !23
  %t398 = sext i32 %t396 to i64
  %t401 = call { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_Hb676fcc2696545b94a8186e92757a5eb(ptr %v0, ptr %v0, ptr %t395, i64 %t398)
  %t402 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t401, 1
  %t403 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t401, 0
  store i32 %t403, ptr %l211
  %t404 = icmp ne i32 %t403, 0
  br i1 %t404, label %bb106, label %ok.405, !prof !99
ok.405:
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t402, ptr %l210
  br label %bb105
bb105:
  %t407 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %l210)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t407, ptr %l213
  br label %bb108
bb106:
  br label %bb107
bb107:
  %t408 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t408, ptr %l214
  br label %bb109
bb108:
  %t409 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l213
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t409, ptr %l205
  br label %bb110
bb109:
  %t410 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l214
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t410, ptr %l205
  br label %bb110
bb110:
  %t411 = load i64, ptr %l204, !tbaa !24
  %t412 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l205
  %t413 = call %"compiler/scope:fnRec" @compiler_2fscope_3afnRec_2ector(ptr %v0, ptr %s22, i64 %t411, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t412, i1 false)
  store %"compiler/scope:fnRec" %t413, ptr %l215
  br label %bb111
bb111:
  %t415 = call %"compiler/scope:fnRec" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRec(ptr %s22, ptr %l215)
  store %"compiler/scope:fnRec" %t415, ptr %l217
  br label %bb112
bb112:
  %t416 = load ptr, ptr %l202, !tbaa !29
  %t417 = load %"compiler/scope:fnRec", ptr %l217
  call void @compiler_2fscope_2eaddRec(ptr %v1, ptr %s22, ptr %t416, %"compiler/scope:fnRec" %t417)
  br label %bb113
bb113:
  call void @__olang_scope_close(ptr %s22)
  br label %bb130
bb114:
  %t418 = load ptr, ptr %l23, !tbaa !29
  store ptr %t418, ptr %l218, !tbaa !29
  store i1 false, ptr %l219, !tbaa !21
  %t419 = load ptr, ptr %l218, !tbaa !29
  %t420 = icmp ne ptr %t419, null
  br i1 %t420, label %bb115, label %bb116
bb115:
  %t422 = load ptr, ptr %l218, !tbaa !29
  %t423 = load i64, ptr %t422, !range !{i64 0, i64 3}
  %t425 = icmp eq i64 %t423, 2
  store i1 %t425, ptr %l219, !tbaa !21
  br label %bb116
bb116:
  %t426 = load i1, ptr %l219, !tbaa !21
  br i1 %t426, label %bb117, label %bb118
bb117:
  %t427 = load ptr, ptr %l23, !tbaa !29
  %t429 = getelementptr { i64, [4 x i64] }, ptr %t427, i32 0, i32 1
  %t430 = getelementptr { i32, ptr, i32 }, ptr %t429, i32 0, i32 0
  %t431 = load i32, ptr %t430
  store i32 %t431, ptr %l27, !tbaa !23
  %t433 = load ptr, ptr %l23, !tbaa !29
  %t435 = getelementptr { i64, [4 x i64] }, ptr %t433, i32 0, i32 1
  %t436 = getelementptr { i32, ptr, i32 }, ptr %t435, i32 0, i32 2
  %t437 = load i32, ptr %t436
  store i32 %t437, ptr %l28, !tbaa !23
  br label %bb119
bb118:
  br label %bb129
bb119:
  store %olang.scope zeroinitializer, ptr %s23
  %t439 = load ptr, ptr %l1, !tbaa !29
  store ptr %t439, ptr %l226, !tbaa !29
  %t440 = load i32, ptr %l27, !tbaa !23
  %t442 = sext i32 %t440 to i64
  store i64 %t442, ptr %l228, !tbaa !24
  %t443 = load ptr, ptr %l0, !tbaa !29
  %t445 = getelementptr %"compiler/scope:Scoper", ptr %t443, i32 0, i32 92
  %t446 = load i32, ptr %l28, !tbaa !23
  %t448 = sext i32 %t446 to i64
  %t451 = call { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_Hb676fcc2696545b94a8186e92757a5eb(ptr %v0, ptr %v0, ptr %t445, i64 %t448)
  %t452 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t451, 1
  %t453 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t451, 0
  store i32 %t453, ptr %l235
  %t454 = icmp ne i32 %t453, 0
  br i1 %t454, label %bb121, label %ok.455, !prof !99
ok.455:
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t452, ptr %l234
  br label %bb120
bb120:
  %t457 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %l234)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t457, ptr %l237
  br label %bb123
bb121:
  br label %bb122
bb122:
  %t458 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t458, ptr %l238
  br label %bb124
bb123:
  %t459 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l237
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t459, ptr %l229
  br label %bb125
bb124:
  %t460 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l238
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t460, ptr %l229
  br label %bb125
bb125:
  %t461 = load i64, ptr %l228, !tbaa !24
  %t462 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l229
  %t463 = call %"compiler/scope:fnRec" @compiler_2fscope_3afnRec_2ector(ptr %v0, ptr %s23, i64 %t461, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t462, i1 true)
  store %"compiler/scope:fnRec" %t463, ptr %l239
  br label %bb126
bb126:
  %t465 = call %"compiler/scope:fnRec" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRec(ptr %s23, ptr %l239)
  store %"compiler/scope:fnRec" %t465, ptr %l241
  br label %bb127
bb127:
  %t466 = load ptr, ptr %l226, !tbaa !29
  %t467 = load %"compiler/scope:fnRec", ptr %l241
  call void @compiler_2fscope_2eaddRec(ptr %v1, ptr %s23, ptr %t466, %"compiler/scope:fnRec" %t467)
  br label %bb128
bb128:
  call void @__olang_scope_close(ptr %s23)
  br label %bb130
bb129:
  call void @__olang_check_failed(ptr @olang_loc_764ce7d0f8c0de93_859a7e0036b030b7)
  unreachable
bb130:
  br label %bb167
bb131:
  %t468 = load ptr, ptr %l2, !tbaa !29
  store ptr %t468, ptr %l242, !tbaa !29
  store i1 false, ptr %l243, !tbaa !21
  %t469 = load ptr, ptr %l242, !tbaa !29
  %t470 = icmp ne ptr %t469, null
  br i1 %t470, label %bb132, label %bb133
bb132:
  %t472 = load ptr, ptr %l242, !tbaa !29
  %t473 = load i64, ptr %t472, !range !{i64 0, i64 18}
  %t475 = icmp eq i64 %t473, 2
  store i1 %t475, ptr %l243, !tbaa !21
  br label %bb133
bb133:
  %t476 = load i1, ptr %l243, !tbaa !21
  br i1 %t476, label %bb134, label %bb135
bb134:
  %t477 = load ptr, ptr %l2, !tbaa !29
  %t479 = getelementptr { i64, [5 x i64] }, ptr %t477, i32 0, i32 1
  %t480 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t479, i32 0, i32 2
  %t481 = load ptr, ptr %t480
  store ptr %t481, ptr %l29, !tbaa !29
  br label %bb144
bb135:
  %t483 = load ptr, ptr %l2, !tbaa !29
  store ptr %t483, ptr %l248, !tbaa !29
  store i1 false, ptr %l249, !tbaa !21
  %t484 = load ptr, ptr %l248, !tbaa !29
  %t485 = icmp ne ptr %t484, null
  br i1 %t485, label %bb136, label %bb137
bb136:
  %t487 = load ptr, ptr %l248, !tbaa !29
  %t488 = load i64, ptr %t487, !range !{i64 0, i64 18}
  %t490 = icmp eq i64 %t488, 4
  store i1 %t490, ptr %l249, !tbaa !21
  br label %bb137
bb137:
  %t491 = load i1, ptr %l249, !tbaa !21
  br i1 %t491, label %bb138, label %bb139
bb138:
  %t492 = load ptr, ptr %l2, !tbaa !29
  %t494 = getelementptr { i64, [5 x i64] }, ptr %t492, i32 0, i32 1
  %t495 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t494, i32 0, i32 2
  %t496 = load ptr, ptr %t495
  store ptr %t496, ptr %l29, !tbaa !29
  br label %bb144
bb139:
  %t498 = load ptr, ptr %l2, !tbaa !29
  store ptr %t498, ptr %l254, !tbaa !29
  store i1 false, ptr %l255, !tbaa !21
  %t499 = load ptr, ptr %l254, !tbaa !29
  %t500 = icmp ne ptr %t499, null
  br i1 %t500, label %bb140, label %bb141
bb140:
  %t502 = load ptr, ptr %l254, !tbaa !29
  %t503 = load i64, ptr %t502, !range !{i64 0, i64 18}
  %t505 = icmp eq i64 %t503, 3
  store i1 %t505, ptr %l255, !tbaa !21
  br label %bb141
bb141:
  %t506 = load i1, ptr %l255, !tbaa !21
  br i1 %t506, label %bb142, label %bb143
bb142:
  %t507 = load ptr, ptr %l2, !tbaa !29
  %t509 = getelementptr { i64, [5 x i64] }, ptr %t507, i32 0, i32 1
  %t510 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t509, i32 0, i32 2
  %t511 = load ptr, ptr %t510
  store ptr %t511, ptr %l29, !tbaa !29
  br label %bb144
bb143:
  br label %bb150
bb144:
  %t513 = load ptr, ptr %l29, !tbaa !29
  %t515 = call i64 @compiler_2fscope_2ewholeLocal(ptr %v2, ptr %t513)
  store i64 %t515, ptr %l261
  br label %bb145
bb145:
  %t516 = load i64, ptr %l261, !tbaa !24
  store i64 %t516, ptr %l30, !tbaa !24
  %t517 = load i64, ptr %l30, !tbaa !24
  %t519 = icmp slt i64 %t517, 0
  br i1 %t519, label %bb146, label %bb147
bb146:
  %t521 = load ptr, ptr %l1, !tbaa !29
  %t523 = getelementptr %"compiler/scope:fnRecs", ptr %t521, i32 0, i32 1
  store i1 false, ptr %t523, !tbaa !21
  br label %ret
bb147:
  br label %bb148
bb148:
  %t524 = load ptr, ptr %l0, !tbaa !29
  %t525 = load ptr, ptr %l1, !tbaa !29
  %t526 = load i64, ptr %l30, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eaddLocalRecs(ptr %v0, ptr %v1, ptr %t524, ptr %t525, i64 %t526)
  br label %bb149
bb149:
  br label %bb167
bb150:
  %t530 = load ptr, ptr %l2, !tbaa !29
  store ptr %t530, ptr %l268, !tbaa !29
  store i1 false, ptr %l269, !tbaa !21
  %t531 = load ptr, ptr %l268, !tbaa !29
  %t532 = icmp ne ptr %t531, null
  br i1 %t532, label %bb151, label %bb152
bb151:
  %t534 = load ptr, ptr %l268, !tbaa !29
  %t535 = load i64, ptr %t534, !range !{i64 0, i64 18}
  %t537 = icmp eq i64 %t535, 6
  store i1 %t537, ptr %l269, !tbaa !21
  br label %bb152
bb152:
  %t538 = load i1, ptr %l269, !tbaa !21
  br i1 %t538, label %bb153, label %bb154
bb153:
  %t539 = load ptr, ptr %l2, !tbaa !29
  %t541 = getelementptr { i64, [5 x i64] }, ptr %t539, i32 0, i32 1
  %t542 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t541, i32 0, i32 2
  %t543 = load ptr, ptr %t542
  store ptr %t543, ptr %l31, !tbaa !29
  br label %bb155
bb154:
  br label %bb162
bb155:
  store %olang.scope zeroinitializer, ptr %s26
  %t545 = load ptr, ptr %l0, !tbaa !29
  %t547 = getelementptr %"compiler/scope:Scoper", ptr %t545, i32 0, i32 95
  %t548 = load ptr, ptr %l31, !tbaa !29
  %t550 = getelementptr %"compiler/typed:Call", ptr %t548, i32 0, i32 2
  %t551 = load i32, ptr %t550, !tbaa !23
  %t553 = sext i32 %t551 to i64
  %t556 = call { i32, %"compiler/scope:fnRecs" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e__Hf28901f23b5d22676a93f0159a8b63c2(ptr %v0, ptr %v0, ptr %t547, i64 %t553)
  %t557 = extractvalue { i32, %"compiler/scope:fnRecs" } %t556, 1
  %t558 = extractvalue { i32, %"compiler/scope:fnRecs" } %t556, 0
  store i32 %t558, ptr %l281
  %t559 = icmp ne i32 %t558, 0
  br i1 %t559, label %bb157, label %ok.560, !prof !99
ok.560:
  store %"compiler/scope:fnRecs" %t557, ptr %l280
  br label %bb156
bb156:
  %t562 = call %"compiler/scope:fnRecs" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRecs(ptr %s26, ptr %l280)
  store %"compiler/scope:fnRecs" %t562, ptr %l283
  br label %bb159
bb157:
  br label %bb158
bb158:
  %t563 = load ptr, ptr %l1, !tbaa !29
  %t565 = getelementptr %"compiler/scope:fnRecs", ptr %t563, i32 0, i32 1
  store i1 false, ptr %t565, !tbaa !21
  call void @__olang_scope_close(ptr %s26)
  br label %ret
bb159:
  %t566 = load %"compiler/scope:fnRecs", ptr %l283
  store %"compiler/scope:fnRecs" %t566, ptr %l274
  br label %bb160
bb160:
  %t567 = load %"compiler/scope:fnRecs", ptr %l274
  store %"compiler/scope:fnRecs" %t567, ptr %l32
  %t568 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2emergeRecs(ptr %v1, ptr %s26, ptr %t568, ptr %l32)
  br label %bb161
bb161:
  call void @__olang_scope_close(ptr %s26)
  br label %bb167
bb162:
  br i1 true, label %bb163, label %bb164
bb163:
  br label %bb165
bb164:
  br label %bb166
bb165:
  %t571 = load ptr, ptr %l1, !tbaa !29
  %t573 = getelementptr %"compiler/scope:fnRecs", ptr %t571, i32 0, i32 1
  store i1 false, ptr %t573, !tbaa !21
  br label %bb167
bb166:
  call void @__olang_check_failed(ptr @olang_loc_8dca53d24f745a78_72d6bef7529d4afc)
  unreachable
bb167:
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2earm(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca %"compiler/scope:Val"
  %l13 = alloca i64
  %l14 = alloca { i64, [2 x i64] }
  %l15 = alloca i64
  %l16 = alloca %"compiler/scope:Val"
  %l19 = alloca %"compiler/scope:Val"
  %l20 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l29 = alloca { i64, ptr }
  %l37 = alloca %"compiler/scope:Val"
  %l46 = alloca { i64, ptr }
  %l54 = alloca %"compiler/scope:Val"
  %l59 = alloca ptr
  %l60 = alloca i64
  %l61 = alloca ptr
  %l70 = alloca %"compiler/typed:Local"
  %l72 = alloca { i64, [2 x i64] }
  %l73 = alloca { i64, [2 x i64] }
  %l75 = alloca ptr
  %l79 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l80 = alloca { i64, [2 x i64] }
  %l81 = alloca i32
  %l91 = alloca { i64, ptr }
  %l92 = alloca i64
  %l95 = alloca { i64, [2 x i64] }
  %l96 = alloca ptr
  %l97 = alloca { i64, [2 x i64] }
  %l100 = alloca %"compiler/source:Span"
  %l107 = alloca i64
  %l110 = alloca %"compiler/source:Span"
  %l113 = alloca i1
  %l114 = alloca i1
  %l118 = alloca { i64, [2 x i64] }
  %l120 = alloca { i64, [2 x i64] }
  %l122 = alloca i1
  %l124 = alloca i1
  %l128 = alloca { i64, [2 x i64] }
  %l132 = alloca i1
  %l137 = alloca ptr
  %l138 = alloca i64
  %l139 = alloca ptr
  %l143 = alloca { i64, [2 x i64] }
  %l145 = alloca { i64, [2 x i64] }
  %l146 = alloca i64
  %l149 = alloca i64
  %l156 = alloca i1
  %l167 = alloca i64
  %l168 = alloca i64
  %l171 = alloca i64
  %l174 = alloca ptr
  %l175 = alloca i64
  %l178 = alloca i1
  %l182 = alloca i1
  %l185 = alloca i1
  %l186 = alloca i1
  %l189 = alloca i64
  %l191 = alloca i64
  %l201 = alloca %"compiler/scope:Val"
  %l202 = alloca %"compiler/scope:Val"
  %l208 = alloca ptr
  %l216 = alloca ptr
  %l228 = alloca %"compiler/scope:Val"
  %l229 = alloca i32
  %l232 = alloca i32
  %l233 = alloca i32
  %l238 = alloca %"compiler/scope:Val"
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca %"compiler/scope:Val"
  %t40 = alloca { i64, [2 x i64] }, align 8
  %t78 = alloca { i64, [2 x i64] }, align 8
  %t143 = alloca { i64, [2 x i64] }, align 8
  %t382 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, [2 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = call %"compiler/scope:Val" @compiler_2fscope_2eVal_2eplain()
  store %"compiler/scope:Val" %t5, ptr %l19
  br label %bb3
bb2:
  br label %bb4
bb3:
  call void @__olang_scope_close(ptr %s0)
  %t6 = load %"compiler/scope:Val", ptr %l19
  store %"compiler/scope:Val" %t6, ptr %rv
  br label %ret
bb4:
  %t7 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t7, ptr %l20
  br label %bb5
bb5:
  %t8 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %l3
  %t9 = load ptr, ptr %l1, !tbaa !29
  %t11 = getelementptr %"compiler/typed:Arm", ptr %t9, i32 0, i32 1
  %t12 = load { i64, ptr }, ptr %t11, !tbaa !27
  store { i64, ptr } %t12, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t14 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t14, 0
  store i64 %t16, ptr %l6, !tbaa !24
  br label %bb6
bb6:
  %t18 = load i64, ptr %l5, !tbaa !24
  %t19 = load i64, ptr %l6, !tbaa !24
  %t22 = icmp slt i64 %t18, %t19
  %t24 = xor i1 %t22, true
  br i1 %t24, label %bb7, label %bb8
bb7:
  br label %bb91
bb8:
  br label %bb9
bb9:
  %t26 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t26, ptr %l29, !tbaa !27
  %t27 = load i64, ptr %l5, !tbaa !24
  %t29 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = getelementptr ptr, ptr %t30, i64 %t27
  %t32 = load ptr, ptr %t31, !tbaa !39
  store ptr %t32, ptr %l7, !tbaa !29
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load ptr, ptr %l7, !tbaa !29
  %t37 = getelementptr %"compiler/typed:Alt", ptr %t35, i32 0, i32 0
  %t38 = load ptr, ptr %t37, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t40
  %t41 = getelementptr { i64, [2 x i64] }, ptr %t40, i32 0, i32 0
  store i64 0, ptr %t41
  %t42 = load { i64, [2 x i64] }, ptr %t40
  %t46 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t34, ptr %t38, { i64, [2 x i64] } %t42)
  store %"compiler/scope:Val" %t46, ptr %l37
  br label %bb10
bb10:
  %t47 = load ptr, ptr %l7, !tbaa !29
  %t49 = getelementptr %"compiler/typed:Alt", ptr %t47, i32 0, i32 1
  %t50 = load { i64, ptr }, ptr %t49, !tbaa !27
  store { i64, ptr } %t50, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t52 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t54 = extractvalue { i64, ptr } %t52, 0
  store i64 %t54, ptr %l10, !tbaa !24
  br label %bb11
bb11:
  store %olang.scope zeroinitializer, ptr %s5
  %t56 = load i64, ptr %l9, !tbaa !24
  %t57 = load i64, ptr %l10, !tbaa !24
  %t60 = icmp slt i64 %t56, %t57
  %t62 = xor i1 %t60, true
  br i1 %t62, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s5)
  br label %bb89
bb13:
  br label %bb14
bb14:
  %t64 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t64, ptr %l46, !tbaa !27
  %t65 = load i64, ptr %l9, !tbaa !24
  %t67 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !27
  %t69 = getelementptr ptr, ptr %t68, i64 %t65
  %t70 = load ptr, ptr %t69, !tbaa !39
  store ptr %t70, ptr %l11, !tbaa !29
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t73 = load ptr, ptr %l11, !tbaa !29
  %t75 = getelementptr %"compiler/typed:Bind", ptr %t73, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t78
  %t79 = getelementptr { i64, [2 x i64] }, ptr %t78, i32 0, i32 0
  store i64 0, ptr %t79
  %t80 = load { i64, [2 x i64] }, ptr %t78
  %t84 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t72, ptr %t76, { i64, [2 x i64] } %t80)
  store %"compiler/scope:Val" %t84, ptr %l54
  br label %bb15
bb15:
  %t85 = load %"compiler/scope:Val", ptr %l54
  store %"compiler/scope:Val" %t85, ptr %l12
  %t86 = load ptr, ptr %l11, !tbaa !29
  %t88 = getelementptr %"compiler/typed:Bind", ptr %t86, i32 0, i32 0
  %t89 = load i32, ptr %t88, !tbaa !23
  %t91 = sext i32 %t89 to i64
  store i64 %t91, ptr %l13, !tbaa !24
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/scope:Scoper", ptr %t93, i32 0, i32 35
  store ptr %t95, ptr %l59, !tbaa !29
  %t96 = load i64, ptr %l13, !tbaa !24
  store i64 %t96, ptr %l60, !tbaa !24
  %t97 = load ptr, ptr %l0, !tbaa !29
  store ptr %t97, ptr %l61, !tbaa !29
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/scope:Scoper", ptr %t98, i32 0, i32 26
  %t101 = load ptr, ptr %t100, !tbaa !29
  %t103 = icmp eq ptr %t101, null
  br i1 %t103, label %bb16, label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_76dd643541c5999_442dc791771fad)
  unreachable
bb17:
  br label %bb18
bb18:
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t107 = getelementptr %"compiler/scope:Scoper", ptr %t105, i32 0, i32 26
  %t108 = load ptr, ptr %t107, !tbaa !29
  %t111 = getelementptr %"compiler/typed:Body", ptr %t108, i32 0, i32 7
  %t112 = load i64, ptr %l13, !tbaa !24
  %t115 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t111, i64 %t112)
  store %"compiler/typed:Local" %t115, ptr %l70
  br label %bb19
bb19:
  %t116 = getelementptr %"compiler/typed:Local", ptr %l70, i32 0, i32 3
  %t117 = load i32, ptr %t116, !tbaa !23
  %t118 = load ptr, ptr %l61, !tbaa !29
  %t120 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eblockTerm(ptr %v0, ptr %t118, i32 %t117)
  store { i64, [2 x i64] } %t120, ptr %l72
  br label %bb20
bb20:
  %t121 = load ptr, ptr %l59, !tbaa !29
  %t122 = load i64, ptr %l60, !tbaa !24
  %t123 = load { i64, [2 x i64] }, ptr %l72
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eSetAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t121, i64 %t122, { i64, [2 x i64] } %t123)
  br label %bb21
bb21:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t126 = getelementptr %"compiler/scope:Scoper", ptr %t124, i32 0, i32 152
  store ptr %t126, ptr %l75, !tbaa !29
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/scope:Scoper", ptr %t127, i32 0, i32 27
  %t130 = load i64, ptr %t129, !tbaa !24
  %t131 = load i64, ptr %l13, !tbaa !24
  %t134 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s5, i64 %t130, i64 %t131)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t134, ptr %l79
  br label %bb22
bb22:
  %t135 = load ptr, ptr %l75, !tbaa !29
  %t136 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l79
  %t137 = call { i32, { i64, [2 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H568ce559fa980123a387c6ba9ed21aca(ptr %v0, ptr %t135, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t136)
  %t138 = extractvalue { i32, { i64, [2 x i64] } } %t137, 1
  %t139 = extractvalue { i32, { i64, [2 x i64] } } %t137, 0
  store i32 %t139, ptr %l81
  %t140 = icmp ne i32 %t139, 0
  br i1 %t140, label %bb24, label %ok.141, !prof !99
ok.141:
  store { i64, [2 x i64] } %t138, ptr %l80
  br label %bb23
bb23:
  %t142 = load { i64, [2 x i64] }, ptr %l80
  store { i64, [2 x i64] } %t142, ptr %l73
  br label %bb26
bb24:
  br label %bb25
bb25:
  store { i64, [2 x i64] } zeroinitializer, ptr %t143
  %t144 = getelementptr { i64, [2 x i64] }, ptr %t143, i32 0, i32 0
  store i64 0, ptr %t144
  %t145 = load { i64, [2 x i64] }, ptr %t143
  store { i64, [2 x i64] } %t145, ptr %l73
  br label %bb26
bb26:
  %t147 = load { i64, [2 x i64] }, ptr %l73
  store { i64, [2 x i64] } %t147, ptr %l14
  %t148 = load { i64, [2 x i64] }, ptr %l14
  %t150 = extractvalue { i64, [2 x i64] } %t148, 0
  %t151 = icmp eq i64 %t150, 0
  %t153 = xor i1 %t151, true
  br i1 %t153, label %bb27, label %bb28
bb27:
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t157 = getelementptr %"compiler/scope:Scoper", ptr %t155, i32 0, i32 35
  %t158 = load i64, ptr %l13, !tbaa !24
  %t159 = load { i64, [2 x i64] }, ptr %l14
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eSetAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t157, i64 %t158, { i64, [2 x i64] } %t159)
  br label %bb29
bb28:
  br label %bb37
bb29:
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t165 = getelementptr %"compiler/scope:Scoper", ptr %t163, i32 0, i32 33
  %t166 = getelementptr %"compiler/typed:Plan", ptr %t165, i32 0, i32 1
  %t167 = load { i64, ptr }, ptr %t166, !tbaa !27
  store { i64, ptr } %t167, ptr %l91, !tbaa !27
  %t168 = load i64, ptr %l13, !tbaa !24
  store i64 %t168, ptr %l92, !tbaa !24
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t170 = load { i64, [2 x i64] }, ptr %l14
  %t173 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2escopeOf(ptr %v0, ptr %t169, { i64, [2 x i64] } %t170)
  store { i64, [2 x i64] } %t173, ptr %l95
  br label %bb30
bb30:
  %t174 = load { i64, [2 x i64] }, ptr %l95
  %t175 = load i64, ptr %l92, !tbaa !24
  %t176 = getelementptr { i64, ptr }, ptr %l91, i32 0, i32 1
  %t177 = load ptr, ptr %t176, !tbaa !27
  %t178 = getelementptr { i64, [2 x i64] }, ptr %t177, i64 %t175
  store { i64, [2 x i64] } %t174, ptr %t178
  %t179 = load ptr, ptr %l0, !tbaa !29
  store ptr %t179, ptr %l96, !tbaa !29
  %t180 = load { i64, [2 x i64] }, ptr %l14
  store { i64, [2 x i64] } %t180, ptr %l97
  %t181 = load ptr, ptr %l11, !tbaa !29
  %t183 = getelementptr %"compiler/typed:Bind", ptr %t181, i32 0, i32 1
  %t184 = load ptr, ptr %t183, !tbaa !29
  %t186 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t184)
  store %"compiler/source:Span" %t186, ptr %l100
  br label %bb31
bb31:
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t189 = getelementptr %"compiler/scope:Scoper", ptr %t187, i32 0, i32 26
  %t190 = load ptr, ptr %t189, !tbaa !29
  %t192 = icmp eq ptr %t190, null
  br i1 %t192, label %bb32, label %bb33
bb32:
  call void @__olang_check_failed(ptr @olang_loc_a61f6227542ac272_aba93d64b04206c6)
  unreachable
bb33:
  br label %bb34
bb34:
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t196 = getelementptr %"compiler/scope:Scoper", ptr %t194, i32 0, i32 26
  %t197 = load ptr, ptr %t196, !tbaa !29
  %t200 = getelementptr %"compiler/typed:Body", ptr %t197, i32 0, i32 3
  %t201 = load i64, ptr %t200, !tbaa !24
  store i64 %t201, ptr %l107, !tbaa !24
  %t202 = load ptr, ptr %l11, !tbaa !29
  %t204 = getelementptr %"compiler/typed:Bind", ptr %t202, i32 0, i32 1
  %t205 = load ptr, ptr %t204, !tbaa !29
  %t207 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t205)
  store %"compiler/source:Span" %t207, ptr %l110
  br label %bb35
bb35:
  %t208 = load ptr, ptr %l96, !tbaa !29
  %t209 = load { i64, [2 x i64] }, ptr %l97
  %t210 = load %"compiler/source:Span", ptr %l100
  %t211 = load i64, ptr %l107, !tbaa !24
  %t212 = load %"compiler/source:Span", ptr %l110
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuildsInto(ptr %v0, ptr %t208, { i64, [2 x i64] } %t209, %"compiler/source:Span" %t210, i64 %t211, %"compiler/source:Span" %t212)
  br label %bb36
bb36:
  br label %bb37
bb37:
  %t213 = load i64, ptr %l13, !tbaa !24
  %t216 = call i1 @compiler_2fscope_2eflHas(ptr %s0, ptr %l3, i64 %t213)
  store i1 %t216, ptr %l113
  br label %bb38
bb38:
  %t217 = load i1, ptr %l113, !tbaa !21
  br i1 %t217, label %bb39, label %bb40
bb39:
  %t218 = load ptr, ptr %l0, !tbaa !29
  %t220 = getelementptr %"compiler/scope:Scoper", ptr %t218, i32 0, i32 34
  %t221 = load i64, ptr %l13, !tbaa !24
  %t224 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t220, i64 %t221)
  store { i64, [2 x i64] } %t224, ptr %l118
  br label %bb41
bb40:
  store i1 false, ptr %l114, !tbaa !21
  br label %bb43
bb41:
  %t225 = getelementptr %"compiler/scope:Val", ptr %l12, i32 0, i32 1
  %t226 = load { i64, [2 x i64] }, ptr %t225
  store { i64, [2 x i64] } %t226, ptr %l120
  %t229 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3aTerm(ptr %l118, ptr %l120)
  store i1 %t229, ptr %l122
  br label %bb42
bb42:
  %t230 = load i1, ptr %l122, !tbaa !21
  %t231 = xor i1 %t230, true
  store i1 %t231, ptr %l114, !tbaa !21
  br label %bb43
bb43:
  %t233 = load i1, ptr %l114, !tbaa !21
  br i1 %t233, label %bb44, label %bb45
bb44:
  %t234 = load ptr, ptr %l0, !tbaa !29
  %t236 = getelementptr %"compiler/scope:Scoper", ptr %t234, i32 0, i32 34
  %t237 = load i64, ptr %l13, !tbaa !24
  %t240 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t236, i64 %t237)
  store { i64, [2 x i64] } %t240, ptr %l128
  br label %bb46
bb45:
  store i1 false, ptr %l124, !tbaa !21
  br label %bb47
bb46:
  %t241 = load { i64, [2 x i64] }, ptr %l128
  %t243 = extractvalue { i64, [2 x i64] } %t241, 0
  %t244 = icmp eq i64 %t243, 0
  %t246 = xor i1 %t244, true
  store i1 %t246, ptr %l124, !tbaa !21
  br label %bb47
bb47:
  %t248 = load i1, ptr %l124, !tbaa !21
  br i1 %t248, label %bb48, label %bb49
bb48:
  %t249 = getelementptr %"compiler/scope:Val", ptr %l12, i32 0, i32 1
  %t250 = load { i64, [2 x i64] }, ptr %t249
  %t252 = extractvalue { i64, [2 x i64] } %t250, 0
  %t253 = icmp eq i64 %t252, 0
  %t255 = xor i1 %t253, true
  store i1 %t255, ptr %l132, !tbaa !21
  br label %bb50
bb49:
  store i1 false, ptr %l132, !tbaa !21
  br label %bb50
bb50:
  %t257 = load i1, ptr %l132, !tbaa !21
  br i1 %t257, label %bb51, label %bb52
bb51:
  %t258 = load ptr, ptr %l0, !tbaa !29
  %t260 = getelementptr %"compiler/scope:Scoper", ptr %t258, i32 0, i32 34
  store ptr %t260, ptr %l137, !tbaa !29
  %t261 = load i64, ptr %l13, !tbaa !24
  store i64 %t261, ptr %l138, !tbaa !24
  %t262 = load ptr, ptr %l0, !tbaa !29
  store ptr %t262, ptr %l139, !tbaa !29
  %t263 = load ptr, ptr %l0, !tbaa !29
  %t265 = getelementptr %"compiler/scope:Scoper", ptr %t263, i32 0, i32 34
  %t266 = load i64, ptr %l13, !tbaa !24
  %t269 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t265, i64 %t266)
  store { i64, [2 x i64] } %t269, ptr %l143
  br label %bb53
bb52:
  %t270 = load i64, ptr %l13, !tbaa !24
  %t273 = call i1 @compiler_2fscope_2eflHas(ptr %s0, ptr %l3, i64 %t270)
  store i1 %t273, ptr %l156
  br label %bb61
bb53:
  %t274 = getelementptr %"compiler/scope:Val", ptr %l12, i32 0, i32 1
  %t275 = load { i64, [2 x i64] }, ptr %t274
  %t276 = load ptr, ptr %l139, !tbaa !29
  %t277 = load { i64, [2 x i64] }, ptr %l143
  %t279 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esetOf(ptr %v0, ptr %t276, { i64, [2 x i64] } %t277, { i64, [2 x i64] } %t275)
  store { i64, [2 x i64] } %t279, ptr %l145
  br label %bb54
bb54:
  %t280 = load ptr, ptr %l137, !tbaa !29
  %t281 = load i64, ptr %l138, !tbaa !24
  %t282 = load { i64, [2 x i64] }, ptr %l145
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eSetAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t280, i64 %t281, { i64, [2 x i64] } %t282)
  br label %bb55
bb55:
  %t283 = load i64, ptr %l13, !tbaa !24
  store i64 %t283, ptr %l146, !tbaa !24
  %t284 = load ptr, ptr %l0, !tbaa !29
  %t286 = getelementptr %"compiler/scope:Scoper", ptr %t284, i32 0, i32 194
  %t288 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t286)
  store i64 %t288, ptr %l149
  br label %bb56
bb56:
  %t289 = load i64, ptr %l146, !tbaa !24
  %t290 = load i64, ptr %l149, !tbaa !24
  %t291 = icmp slt i64 %t289, %t290
  br i1 %t291, label %bb57, label %bb58
bb57:
  %t293 = load ptr, ptr %l0, !tbaa !29
  %t295 = getelementptr %"compiler/scope:Scoper", ptr %t293, i32 0, i32 194
  %t296 = load i64, ptr %l13, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t295, i64 %t296, i64 -2)
  br label %bb59
bb58:
  br label %bb60
bb59:
  br label %bb60
bb60:
  br label %bb87
bb61:
  %t299 = load i1, ptr %l156, !tbaa !21
  %t300 = xor i1 %t299, true
  br i1 %t300, label %bb62, label %bb63
bb62:
  %t302 = load ptr, ptr %l0, !tbaa !29
  %t304 = getelementptr %"compiler/scope:Scoper", ptr %t302, i32 0, i32 34
  %t305 = load i64, ptr %l13, !tbaa !24
  %t306 = getelementptr %"compiler/scope:Val", ptr %l12, i32 0, i32 1
  %t307 = load { i64, [2 x i64] }, ptr %t306
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eSetAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t304, i64 %t305, { i64, [2 x i64] } %t307)
  br label %bb64
bb63:
  br label %bb86
bb64:
  %t311 = load i64, ptr %l13, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l3, i64 %t311)
  br label %bb65
bb65:
  %t314 = load ptr, ptr %l0, !tbaa !29
  %t315 = load ptr, ptr %l11, !tbaa !29
  %t317 = getelementptr %"compiler/typed:Bind", ptr %t315, i32 0, i32 1
  %t318 = load ptr, ptr %t317, !tbaa !29
  %t321 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eclaimRoot(ptr %v0, ptr %v1, ptr %t314, ptr %t318)
  store i64 %t321, ptr %l167
  br label %bb66
bb66:
  %t322 = load i64, ptr %l167, !tbaa !24
  store i64 %t322, ptr %l15, !tbaa !24
  %t323 = load i64, ptr %l13, !tbaa !24
  store i64 %t323, ptr %l168, !tbaa !24
  %t324 = load ptr, ptr %l0, !tbaa !29
  %t326 = getelementptr %"compiler/scope:Scoper", ptr %t324, i32 0, i32 194
  %t328 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t326)
  store i64 %t328, ptr %l171
  br label %bb67
bb67:
  %t329 = load i64, ptr %l168, !tbaa !24
  %t330 = load i64, ptr %l171, !tbaa !24
  %t331 = icmp slt i64 %t329, %t330
  br i1 %t331, label %bb68, label %bb69
bb68:
  %t333 = load ptr, ptr %l0, !tbaa !29
  %t335 = getelementptr %"compiler/scope:Scoper", ptr %t333, i32 0, i32 194
  store ptr %t335, ptr %l174, !tbaa !29
  %t336 = load i64, ptr %l13, !tbaa !24
  store i64 %t336, ptr %l175, !tbaa !24
  %t337 = load i64, ptr %l15, !tbaa !24
  %t339 = icmp sge i64 %t337, 0
  br i1 %t339, label %bb70, label %bb71
bb69:
  br label %bb85
bb70:
  %t341 = load i64, ptr %l15, !tbaa !24
  %t342 = load i64, ptr %l13, !tbaa !24
  %t345 = icmp ne i64 %t341, %t342
  store i1 %t345, ptr %l178, !tbaa !21
  br label %bb72
bb71:
  store i1 false, ptr %l178, !tbaa !21
  br label %bb72
bb72:
  %t347 = load i1, ptr %l178, !tbaa !21
  br i1 %t347, label %bb73, label %bb74
bb73:
  %t348 = load ptr, ptr %l0, !tbaa !29
  %t349 = load i64, ptr %l15, !tbaa !24
  %t352 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eliftable(ptr %v0, ptr %t348, i64 %t349)
  store i1 %t352, ptr %l185
  br label %bb75
bb74:
  store i1 false, ptr %l182, !tbaa !21
  br label %bb80
bb75:
  %t353 = load i1, ptr %l185, !tbaa !21
  br i1 %t353, label %bb76, label %bb77
bb76:
  store i1 true, ptr %l186, !tbaa !21
  br label %bb79
bb77:
  %t354 = load ptr, ptr %l0, !tbaa !29
  %t355 = load i64, ptr %l15, !tbaa !24
  %t358 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eheldCall(ptr %v0, ptr %t354, i64 %t355)
  store i64 %t358, ptr %l189
  br label %bb78
bb78:
  %t359 = load i64, ptr %l189, !tbaa !24
  %t360 = icmp sge i64 %t359, 0
  store i1 %t360, ptr %l186, !tbaa !21
  br label %bb79
bb79:
  %t362 = load i1, ptr %l186, !tbaa !21
  store i1 %t362, ptr %l182, !tbaa !21
  br label %bb80
bb80:
  %t363 = load i1, ptr %l182, !tbaa !21
  br i1 %t363, label %bb81, label %bb82
bb81:
  %t364 = load i64, ptr %l15, !tbaa !24
  store i64 %t364, ptr %l191, !tbaa !24
  br label %bb83
bb82:
  store i64 -2, ptr %l191, !tbaa !24
  br label %bb83
bb83:
  %t366 = load ptr, ptr %l174, !tbaa !29
  %t367 = load i64, ptr %l175, !tbaa !24
  %t368 = load i64, ptr %l191, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t366, i64 %t367, i64 %t368)
  br label %bb84
bb84:
  br label %bb85
bb85:
  br label %bb86
bb86:
  br label %bb87
bb87:
  call void @__olang_scope_close(ptr %s5)
  br label %bb88
bb88:
  %t369 = load i64, ptr %l9, !tbaa !24
  %t371 = add i64 %t369, 1
  store i64 %t371, ptr %l9, !tbaa !24
  br label %bb11
bb89:
  br label %bb90
bb90:
  %t373 = load i64, ptr %l5, !tbaa !24
  %t375 = add i64 %t373, 1
  store i64 %t375, ptr %l5, !tbaa !24
  br label %bb6
bb91:
  %t377 = load ptr, ptr %l0, !tbaa !29
  %t378 = load ptr, ptr %l1, !tbaa !29
  %t380 = getelementptr %"compiler/typed:Arm", ptr %t378, i32 0, i32 2
  %t381 = load ptr, ptr %t380, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t382
  %t383 = getelementptr { i64, [2 x i64] }, ptr %t382, i32 0, i32 0
  store i64 0, ptr %t383
  %t384 = load { i64, [2 x i64] }, ptr %t382
  %t388 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t377, ptr %t381, { i64, [2 x i64] } %t384)
  store %"compiler/scope:Val" %t388, ptr %l201
  br label %bb92
bb92:
  %t389 = call %"compiler/scope:Val" @compiler_2fscope_2eVal_2eplain()
  store %"compiler/scope:Val" %t389, ptr %l202
  br label %bb93
bb93:
  %t390 = load %"compiler/scope:Val", ptr %l202
  store %"compiler/scope:Val" %t390, ptr %l16
  %t391 = load ptr, ptr %l1, !tbaa !29
  %t393 = getelementptr %"compiler/typed:Arm", ptr %t391, i32 0, i32 3
  %t394 = load ptr, ptr %t393, !tbaa !29
  %t396 = icmp eq ptr %t394, null
  %t398 = xor i1 %t396, true
  br i1 %t398, label %bb94, label %bb95
bb94:
  %t400 = load ptr, ptr %l0, !tbaa !29
  %t402 = getelementptr %"compiler/scope:Scoper", ptr %t400, i32 0, i32 37
  store ptr %t402, ptr %l208, !tbaa !29
  %t403 = load ptr, ptr %l1, !tbaa !29
  %t405 = getelementptr %"compiler/typed:Arm", ptr %t403, i32 0, i32 3
  %t406 = load ptr, ptr %t405, !tbaa !29
  %t408 = icmp eq ptr %t406, null
  br i1 %t408, label %bb96, label %bb97
bb95:
  %t410 = load ptr, ptr %l0, !tbaa !29
  %t411 = load ptr, ptr %l1, !tbaa !29
  %t413 = getelementptr %"compiler/typed:Arm", ptr %t411, i32 0, i32 4
  %t414 = load ptr, ptr %t413, !tbaa !29
  %t415 = load { i64, [2 x i64] }, ptr %l2
  %t419 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t410, ptr %t414, { i64, [2 x i64] } %t415)
  store %"compiler/scope:Val" %t419, ptr %l238
  br label %bb109
bb96:
  call void @__olang_check_failed(ptr @olang_loc_f34ecaa27a4fd2b3_7961e1dcca83cdb7)
  unreachable
bb97:
  br label %bb98
bb98:
  %t420 = load ptr, ptr %l1, !tbaa !29
  %t422 = getelementptr %"compiler/typed:Arm", ptr %t420, i32 0, i32 3
  %t423 = load ptr, ptr %t422, !tbaa !29
  %t426 = getelementptr %"compiler/typed:Block", ptr %t423, i32 0, i32 0
  %t427 = load i32, ptr %t426, !tbaa !23
  %t428 = load ptr, ptr %l208, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ePush_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t428, i32 %t427)
  br label %bb99
bb99:
  %t430 = load ptr, ptr %l0, !tbaa !29
  store ptr %t430, ptr %l216, !tbaa !29
  %t431 = load ptr, ptr %l1, !tbaa !29
  %t433 = getelementptr %"compiler/typed:Arm", ptr %t431, i32 0, i32 3
  %t434 = load ptr, ptr %t433, !tbaa !29
  %t436 = icmp eq ptr %t434, null
  br i1 %t436, label %bb100, label %bb101
bb100:
  call void @__olang_check_failed(ptr @olang_loc_4bafad9c493ca2e4_5e12ba830ed55b98)
  unreachable
bb101:
  br label %bb102
bb102:
  %t438 = load ptr, ptr %l1, !tbaa !29
  %t440 = getelementptr %"compiler/typed:Arm", ptr %t438, i32 0, i32 3
  %t441 = load ptr, ptr %t440, !tbaa !29
  %t444 = getelementptr %"compiler/typed:Block", ptr %t441, i32 0, i32 1
  %t445 = load { i64, ptr }, ptr %t444, !tbaa !27
  %t446 = load ptr, ptr %l216, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estmts(ptr %v0, ptr %v1, ptr %t446, { i64, ptr } %t445)
  br label %bb103
bb103:
  %t448 = load ptr, ptr %l0, !tbaa !29
  %t449 = load ptr, ptr %l1, !tbaa !29
  %t451 = getelementptr %"compiler/typed:Arm", ptr %t449, i32 0, i32 4
  %t452 = load ptr, ptr %t451, !tbaa !29
  %t453 = load { i64, [2 x i64] }, ptr %l2
  %t457 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t448, ptr %t452, { i64, [2 x i64] } %t453)
  store %"compiler/scope:Val" %t457, ptr %l228
  br label %bb104
bb104:
  %t458 = load %"compiler/scope:Val", ptr %l228
  store %"compiler/scope:Val" %t458, ptr %l16
  %t459 = load ptr, ptr %l0, !tbaa !29
  %t461 = getelementptr %"compiler/scope:Scoper", ptr %t459, i32 0, i32 37
  %t463 = call { i32, i32 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ePop_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t461)
  %t464 = extractvalue { i32, i32 } %t463, 1
  %t465 = extractvalue { i32, i32 } %t463, 0
  store i32 %t465, ptr %l233
  %t466 = icmp ne i32 %t465, 0
  br i1 %t466, label %bb106, label %ok.467, !prof !99
ok.467:
  store i32 %t464, ptr %l232
  br label %bb105
bb105:
  %t468 = load i32, ptr %l232, !tbaa !23
  store i32 %t468, ptr %l229, !tbaa !23
  br label %bb108
bb106:
  br label %bb107
bb107:
  br label %bb108
bb108:
  br label %bb110
bb109:
  %t469 = load %"compiler/scope:Val", ptr %l238
  store %"compiler/scope:Val" %t469, ptr %l16
  br label %bb110
bb110:
  %t470 = load %"compiler/scope:Val", ptr %l16
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/scope:Val" %t470, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/scope:Val", ptr %rv
  ret %"compiler/scope:Val" %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndArm(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l21 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
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
  %t7 = getelementptr %"compiler/typed:Arm", ptr %t5, i32 0, i32 1
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
  br label %bb17
bb6:
  br label %bb7
bb7:
  %t22 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t22, ptr %l21, !tbaa !27
  %t23 = load i64, ptr %l4, !tbaa !24
  %t25 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr ptr, ptr %t26, i64 %t23
  %t28 = load ptr, ptr %t27, !tbaa !39
  store ptr %t28, ptr %l6, !tbaa !29
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load ptr, ptr %l6, !tbaa !29
  %t33 = getelementptr %"compiler/typed:Alt", ptr %t31, i32 0, i32 0
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t36 = load i64, ptr @G_2ecompiler_2fscope_2eBndOther, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %t30, ptr %t34, i64 %t36)
  br label %bb8
bb8:
  %t40 = load ptr, ptr %l6, !tbaa !29
  %t42 = getelementptr %"compiler/typed:Alt", ptr %t40, i32 0, i32 1
  %t43 = load { i64, ptr }, ptr %t42, !tbaa !27
  store { i64, ptr } %t43, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t45 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t47 = extractvalue { i64, ptr } %t45, 0
  store i64 %t47, ptr %l9, !tbaa !24
  br label %bb9
bb9:
  %t49 = load i64, ptr %l8, !tbaa !24
  %t50 = load i64, ptr %l9, !tbaa !24
  %t53 = icmp slt i64 %t49, %t50
  %t55 = xor i1 %t53, true
  br i1 %t55, label %bb10, label %bb11
bb10:
  br label %bb15
bb11:
  br label %bb12
bb12:
  %t57 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t57, ptr %l37, !tbaa !27
  %t58 = load i64, ptr %l8, !tbaa !24
  %t60 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !27
  %t62 = getelementptr ptr, ptr %t61, i64 %t58
  %t63 = load ptr, ptr %t62, !tbaa !39
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/typed:Bind", ptr %t63, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !29
  %t71 = load i64, ptr @G_2ecompiler_2fscope_2eBndOther, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %t65, ptr %t69, i64 %t71)
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t75 = load i64, ptr %l8, !tbaa !24
  %t77 = add i64 %t75, 1
  store i64 %t77, ptr %l8, !tbaa !24
  br label %bb9
bb15:
  br label %bb16
bb16:
  %t79 = load i64, ptr %l4, !tbaa !24
  %t81 = add i64 %t79, 1
  store i64 %t81, ptr %l4, !tbaa !24
  br label %bb4
bb17:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t84 = load ptr, ptr %l1, !tbaa !29
  %t86 = getelementptr %"compiler/typed:Arm", ptr %t84, i32 0, i32 2
  %t87 = load ptr, ptr %t86, !tbaa !29
  %t88 = load i64, ptr @G_2ecompiler_2fscope_2eBndOther, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %t83, ptr %t87, i64 %t88)
  br label %bb18
bb18:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load ptr, ptr %l1, !tbaa !29
  %t95 = getelementptr %"compiler/typed:Arm", ptr %t93, i32 0, i32 3
  %t96 = load ptr, ptr %t95, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndBlock(ptr %v0, ptr %v1, ptr %t92, ptr %t96)
  br label %bb19
bb19:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t100 = load ptr, ptr %l1, !tbaa !29
  %t102 = getelementptr %"compiler/typed:Arm", ptr %t100, i32 0, i32 4
  %t103 = load ptr, ptr %t102, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %t99, ptr %t103, i64 %a2)
  br label %bb20
bb20:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndError(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i1 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i1
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca ptr
  %l8 = alloca %"compiler/source:Span"
  %l9 = alloca { { i64, ptr }, { i64, ptr } }
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca i32
  %l13 = alloca { i64, ptr }
  %l14 = alloca { i64, [2 x i64] }
  %l15 = alloca i64
  %l16 = alloca { i64, ptr }
  %l17 = alloca %"compiler/source:Span"
  %l18 = alloca ptr
  %l20 = alloca i32
  %l21 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l26 = alloca ptr
  %l28 = alloca { i64, ptr }
  %l32 = alloca ptr
  %l35 = alloca %"compiler/source:Span"
  %l43 = alloca { { i64, ptr }, { i64, ptr } }
  %l49 = alloca i64
  %l51 = alloca i32
  %l53 = alloca ptr
  %l56 = alloca i32
  %l58 = alloca %"compiler/typed:Local"
  %l63 = alloca i1
  %l68 = alloca i32
  %l73 = alloca i32
  %l78 = alloca i32
  %l81 = alloca { i64, ptr }
  %l85 = alloca ptr
  %l88 = alloca ptr
  %l93 = alloca i32
  %l94 = alloca i32
  %l95 = alloca { i64, ptr }
  %l96 = alloca ptr
  %l97 = alloca %"compiler/source:Span"
  %l99 = alloca i1
  %l101 = alloca %"compiler/diagmsg:Msg"
  %l108 = alloca %"compiler/diagmsg:Msg"
  %l111 = alloca %"compiler/diagmsg:Msg"
  %l112 = alloca i64
  %l121 = alloca ptr
  %l123 = alloca ptr
  %l127 = alloca i64
  %l128 = alloca ptr
  %l131 = alloca { i64, ptr }
  %l132 = alloca ptr
  %l133 = alloca i1
  %l140 = alloca ptr
  %l141 = alloca i1
  %l144 = alloca i1
  %l155 = alloca %"compiler/source:Span"
  %l156 = alloca { i64, ptr }
  %l158 = alloca ptr
  %l166 = alloca { i64, ptr }
  %l167 = alloca i32
  %l173 = alloca { i64, ptr }
  %l175 = alloca i64
  %l177 = alloca i64
  %l178 = alloca i64
  %l183 = alloca ptr
  %l184 = alloca %"compiler/source:Span"
  %l186 = alloca i1
  %l188 = alloca %"compiler/diagmsg:Msg"
  %l195 = alloca %"compiler/diagmsg:Msg"
  %l198 = alloca %"compiler/diagmsg:Msg"
  %l199 = alloca i64
  %l200 = alloca ptr
  %l201 = alloca ptr
  %l205 = alloca ptr
  %l208 = alloca { i64, ptr }
  %l211 = alloca ptr
  %l212 = alloca %"compiler/source:Span"
  %l214 = alloca %"compiler/diagmsg:Msg"
  %l215 = alloca i64
  %l217 = alloca i1
  %l219 = alloca ptr
  %l220 = alloca %"compiler/source:Span"
  %l224 = alloca %"compiler/diagmsg:Msg"
  %l225 = alloca i64
  %l226 = alloca ptr
  %l227 = alloca %"compiler/source:Span"
  %l229 = alloca i1
  %l231 = alloca %"compiler/diagmsg:Msg"
  %l234 = alloca %"compiler/diagmsg:Msg"
  %l236 = alloca %"compiler/diagmsg:Msg"
  %l237 = alloca i64
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s12 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i1 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %l2, !tbaa !24
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  store ptr %t7, ptr %l26
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l26, !tbaa !29
  store ptr %t8, ptr %l5, !tbaa !29
  %t11 = call { i64, ptr } @compiler_2fscope_2ebndText(ptr %s0, i64 %a4)
  store { i64, ptr } %t11, ptr %l28
  br label %bb2
bb2:
  %t12 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t12, ptr %l6, !tbaa !27
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t18 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %v1, ptr %t13, ptr %t14)
  store ptr %t18, ptr %l32
  br label %bb3
bb3:
  %t19 = load ptr, ptr %l32, !tbaa !29
  store ptr %t19, ptr %l7, !tbaa !29
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t24 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eopTok(ptr %v0, ptr %v1, ptr %t20, ptr %t21)
  store %"compiler/source:Span" %t24, ptr %l35
  br label %bb4
bb4:
  %t25 = load %"compiler/source:Span", ptr %l35
  store %"compiler/source:Span" %t25, ptr %l8
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load i64, ptr %l2, !tbaa !24
  %t28 = load i1, ptr %l3, !tbaa !21
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/scope:Scoper", ptr %t29, i32 0, i32 106
  %t32 = load i32, ptr %t31, !tbaa !23
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/scope:Scoper", ptr %t33, i32 0, i32 105
  %t36 = load i64, ptr %t35, !tbaa !24
  %t42 = call { { i64, ptr }, { i64, ptr } } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewordFor(ptr %v0, ptr %s0, ptr %t26, i64 %t27, i1 %t28, i32 %t32, i64 %t36)
  store { { i64, ptr }, { i64, ptr } } %t42, ptr %l43
  br label %bb5
bb5:
  %t43 = load { { i64, ptr }, { i64, ptr } }, ptr %l43
  store { { i64, ptr }, { i64, ptr } } %t43, ptr %l9
  %t44 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l9, i32 0, i32 0
  %t45 = load { i64, ptr }, ptr %t44, !tbaa !27
  store { i64, ptr } %t45, ptr %l10, !tbaa !27
  %t47 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l9, i32 0, i32 1
  %t48 = load { i64, ptr }, ptr %t47, !tbaa !27
  store { i64, ptr } %t48, ptr %l11, !tbaa !27
  %t50 = load i1, ptr %l3, !tbaa !21
  br i1 %t50, label %bb6, label %bb7
bb6:
  store %olang.scope zeroinitializer, ptr %s1
  %t52 = load ptr, ptr %l5, !tbaa !29
  %t54 = getelementptr %"compiler/typed:Body", ptr %t52, i32 0, i32 5
  %t56 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t54)
  store i64 %t56, ptr %l49
  br label %bb8
bb7:
  br label %bb34
bb8:
  %t57 = load i64, ptr %l49, !tbaa !24
  %t58 = icmp sgt i64 %t57, 0
  br i1 %t58, label %bb9, label %bb10
bb9:
  %t60 = load ptr, ptr %l5, !tbaa !29
  %t62 = getelementptr %"compiler/typed:Body", ptr %t60, i32 0, i32 7
  store ptr %t62, ptr %l53, !tbaa !29
  %t63 = load ptr, ptr %l5, !tbaa !29
  %t65 = getelementptr %"compiler/typed:Body", ptr %t63, i32 0, i32 5
  %t67 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t65, i64 0)
  store i32 %t67, ptr %l56
  br label %bb11
bb10:
  %t68 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t68, ptr %l51, !tbaa !23
  br label %bb13
bb11:
  %t70 = load i32, ptr %l56, !tbaa !23
  %t71 = sext i32 %t70 to i64
  %t72 = load ptr, ptr %l53, !tbaa !29
  %t74 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t72, i64 %t71)
  store %"compiler/typed:Local" %t74, ptr %l58
  br label %bb12
bb12:
  %t75 = getelementptr %"compiler/typed:Local", ptr %l58, i32 0, i32 2
  %t76 = load i32, ptr %t75, !tbaa !23
  store i32 %t76, ptr %l51, !tbaa !23
  br label %bb13
bb13:
  %t78 = load i32, ptr %l51, !tbaa !23
  store i32 %t78, ptr %l12, !tbaa !23
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load i32, ptr %l12, !tbaa !23
  %t83 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t79, i32 %t80)
  store i1 %t83, ptr %l63
  br label %bb14
bb14:
  %t84 = load i1, ptr %l63, !tbaa !21
  br i1 %t84, label %bb15, label %bb16
bb15:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/scope:Scoper", ptr %t85, i32 0, i32 0
  %t88 = load ptr, ptr %t87, !tbaa !29
  %t90 = getelementptr %"compiler/generic:Program", ptr %t88, i32 0, i32 2
  %t91 = load i32, ptr %l12, !tbaa !23
  %t94 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t90, i32 %t91)
  store i32 %t94, ptr %l68
  br label %bb17
bb16:
  br label %bb18
bb17:
  %t95 = load i32, ptr %l68, !tbaa !23
  store i32 %t95, ptr %l12, !tbaa !23
  br label %bb18
bb18:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/scope:Scoper", ptr %t96, i32 0, i32 0
  %t99 = load ptr, ptr %t98, !tbaa !29
  %t101 = getelementptr %"compiler/generic:Program", ptr %t99, i32 0, i32 2
  %t102 = load i32, ptr %l12, !tbaa !23
  %t105 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t101, i32 %t102)
  store i32 %t105, ptr %l73
  br label %bb19
bb19:
  %t106 = load i32, ptr %l73, !tbaa !23
  store i32 %t106, ptr %l12, !tbaa !23
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"compiler/scope:Scoper", ptr %t107, i32 0, i32 0
  %t110 = load ptr, ptr %t109, !tbaa !29
  %t112 = getelementptr %"compiler/generic:Program", ptr %t110, i32 0, i32 2
  %t113 = load i32, ptr %l12, !tbaa !23
  %t116 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t112, i32 %t113)
  store i32 %t116, ptr %l78
  br label %bb20
bb20:
  %t117 = load i32, ptr %l78, !range !{i32 0, i32 33}
  %t119 = trunc i64 18 to i32
  %t120 = icmp eq i32 %t117, %t119
  br i1 %t120, label %bb21, label %bb22
bb21:
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t124 = getelementptr %"compiler/scope:Scoper", ptr %t122, i32 0, i32 0
  %t125 = load ptr, ptr %t124, !tbaa !29
  %t127 = getelementptr %"compiler/generic:Program", ptr %t125, i32 0, i32 0
  %t128 = load ptr, ptr %t127, !tbaa !29
  %t130 = getelementptr %"compiler/load:Loader", ptr %t128, i32 0, i32 3
  %t131 = load ptr, ptr %t130, !tbaa !29
  store ptr %t131, ptr %l85, !tbaa !29
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t134 = getelementptr %"compiler/scope:Scoper", ptr %t132, i32 0, i32 0
  %t135 = load ptr, ptr %t134, !tbaa !29
  %t137 = getelementptr %"compiler/generic:Program", ptr %t135, i32 0, i32 2
  store ptr %t137, ptr %l88, !tbaa !29
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t140 = getelementptr %"compiler/scope:Scoper", ptr %t138, i32 0, i32 0
  %t141 = load ptr, ptr %t140, !tbaa !29
  %t143 = getelementptr %"compiler/generic:Program", ptr %t141, i32 0, i32 2
  %t144 = load i32, ptr %l12, !tbaa !23
  %t147 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t143, i32 %t144)
  store i32 %t147, ptr %l93
  br label %bb23
bb22:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d0, i32 0, i32 1) }, ptr %l81, !tbaa !27
  br label %bb26
bb23:
  %t148 = load ptr, ptr %l88, !tbaa !29
  %t149 = load i32, ptr %l93, !tbaa !23
  %t150 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t148, i32 %t149)
  store i32 %t150, ptr %l94
  br label %bb24
bb24:
  %t151 = load ptr, ptr %l85, !tbaa !29
  %t152 = load i32, ptr %l94, !tbaa !23
  %t153 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s1, ptr %t151, i32 %t152)
  store { i64, ptr } %t153, ptr %l95
  br label %bb25
bb25:
  %t154 = load { i64, ptr }, ptr %l95, !tbaa !27
  store { i64, ptr } %t154, ptr %l81, !tbaa !27
  br label %bb26
bb26:
  %t155 = load { i64, ptr }, ptr %l81, !tbaa !27
  store { i64, ptr } %t155, ptr %l13, !tbaa !27
  %t156 = load ptr, ptr %l0, !tbaa !29
  store ptr %t156, ptr %l96, !tbaa !29
  %t157 = load %"compiler/source:Span", ptr %l8
  store %"compiler/source:Span" %t157, ptr %l97
  %t158 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t160 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s1, { i64, ptr } %t158, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d1, i32 0, i32 1) })
  store i1 %t160, ptr %l99
  br label %bb27
bb27:
  %t161 = load i1, ptr %l99, !tbaa !21
  %t162 = xor i1 %t161, true
  br i1 %t162, label %bb28, label %bb29
bb28:
  %t164 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t166 = extractvalue { i64, ptr } %t164, 1
  %t167 = extractvalue { i64, ptr } %t164, 0
  %t168 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t169 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  %t170 = add i64 %t167, %t169
  %t171 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t170)
  call void @olang_textcopy(ptr %t171, ptr %t166, i64 %t167)
  %t172 = getelementptr i8, ptr %t171, i64 %t167
  call void @olang_textcopy(ptr %t172, ptr %t168, i64 %t169)
  %t173 = insertvalue { i64, ptr } undef, i64 %t170, 0
  %t174 = insertvalue { i64, ptr } %t173, ptr %t171, 1
  %t176 = extractvalue { i64, ptr } %t174, 0
  %t177 = extractvalue { i64, ptr } %t174, 1
  %t178 = mul i64 %t176, 1
  %t179 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t178)
  call void @llvm.memcpy.p0.p0.i64(ptr %t179, ptr %t177, i64 %t178, i1 false)
  %t180 = insertvalue { i64, ptr } undef, i64 %t176, 0
  %t181 = insertvalue { i64, ptr } %t180, ptr %t179, 1
  %t182 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t183 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t184 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t189 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eValueBeyondType(ptr %s1, ptr %s0, ptr %s0, ptr %s0, ptr %s1, { i64, ptr } %t181, { i64, ptr } %t182, { i64, ptr } %t183, { i64, ptr } %t184)
  store %"compiler/diagmsg:Msg" %t189, ptr %l108
  br label %bb30
bb29:
  %t190 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t191 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t194 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCallValueObligations(ptr %s1, ptr %s0, ptr %s1, { i64, ptr } %t190, { i64, ptr } %t191)
  store %"compiler/diagmsg:Msg" %t194, ptr %l111
  br label %bb31
bb30:
  %t195 = load %"compiler/diagmsg:Msg", ptr %l108
  store %"compiler/diagmsg:Msg" %t195, ptr %l101
  br label %bb32
bb31:
  %t196 = load %"compiler/diagmsg:Msg", ptr %l111
  store %"compiler/diagmsg:Msg" %t196, ptr %l101
  br label %bb32
bb32:
  %t197 = load ptr, ptr %l96, !tbaa !29
  %t198 = load %"compiler/source:Span", ptr %l97
  %t199 = load %"compiler/diagmsg:Msg", ptr %l101
  %t200 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %s1, ptr %t197, %"compiler/source:Span" %t198, %"compiler/diagmsg:Msg" %t199)
  store i64 %t200, ptr %l112
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb34:
  %t201 = load ptr, ptr %l5, !tbaa !29
  %t203 = getelementptr %"compiler/typed:Body", ptr %t201, i32 0, i32 1
  %t204 = load { i64, [2 x i64] }, ptr %t203
  store { i64, [2 x i64] } %t204, ptr %l14
  %t206 = load { i64, [2 x i64] }, ptr %l14
  %t208 = extractvalue { i64, [2 x i64] } %t206, 0
  %t209 = icmp eq i64 %t208, 0
  br i1 %t209, label %bb35, label %bb36
bb35:
  %t211 = getelementptr { i64, [2 x i64] }, ptr %l14, i32 0, i32 1
  %t212 = getelementptr { i64 }, ptr %t211, i32 0, i32 0
  %t213 = load i64, ptr %t212
  store i64 %t213, ptr %l15, !tbaa !24
  br label %bb37
bb36:
  br label %bb84
bb37:
  store %olang.scope zeroinitializer, ptr %s4
  %t215 = load ptr, ptr %l0, !tbaa !29
  %t217 = getelementptr %"compiler/scope:Scoper", ptr %t215, i32 0, i32 0
  %t218 = load ptr, ptr %t217, !tbaa !29
  %t220 = getelementptr %"compiler/generic:Program", ptr %t218, i32 0, i32 0
  %t221 = load ptr, ptr %t220, !tbaa !29
  %t223 = getelementptr %"compiler/load:Loader", ptr %t221, i32 0, i32 3
  %t224 = load ptr, ptr %t223, !tbaa !29
  store ptr %t224, ptr %l121, !tbaa !29
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t227 = getelementptr %"compiler/scope:Scoper", ptr %t225, i32 0, i32 0
  %t228 = load ptr, ptr %t227, !tbaa !29
  store ptr %t228, ptr %l123, !tbaa !29
  %t229 = load ptr, ptr %l0, !tbaa !29
  %t231 = getelementptr %"compiler/scope:Scoper", ptr %t229, i32 0, i32 0
  %t232 = load ptr, ptr %t231, !tbaa !29
  %t233 = load i64, ptr %l15, !tbaa !24
  %t236 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t232, i64 %t233)
  store i64 %t236, ptr %l127
  br label %bb38
bb38:
  %t237 = load ptr, ptr %l123, !tbaa !29
  %t238 = load i64, ptr %l127, !tbaa !24
  %t239 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s4, ptr %t237, i64 %t238)
  store ptr %t239, ptr %l128
  br label %bb39
bb39:
  %t240 = load ptr, ptr %l128, !tbaa !29
  %t242 = getelementptr %"compiler/ast:Func", ptr %t240, i32 0, i32 2
  %t243 = load i32, ptr %t242, !tbaa !23
  %t244 = load ptr, ptr %l121, !tbaa !29
  %t246 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t244, i32 %t243)
  store { i64, ptr } %t246, ptr %l131
  br label %bb40
bb40:
  %t247 = load { i64, ptr }, ptr %l131, !tbaa !27
  store { i64, ptr } %t247, ptr %l16, !tbaa !27
  %t248 = load ptr, ptr %l7, !tbaa !29
  store ptr %t248, ptr %l132, !tbaa !29
  store i1 false, ptr %l133, !tbaa !21
  %t249 = load ptr, ptr %l132, !tbaa !29
  %t250 = icmp ne ptr %t249, null
  br i1 %t250, label %bb41, label %bb42
bb41:
  %t252 = load ptr, ptr %l132, !tbaa !29
  %t253 = load i64, ptr %t252, !range !{i64 0, i64 18}
  %t255 = icmp eq i64 %t253, 15
  store i1 %t255, ptr %l133, !tbaa !21
  br label %bb42
bb42:
  %t256 = load i1, ptr %l133, !tbaa !21
  br i1 %t256, label %bb43, label %bb44
bb43:
  %t257 = load ptr, ptr %l7, !tbaa !29
  %t259 = getelementptr { i64, [5 x i64] }, ptr %t257, i32 0, i32 1
  %t260 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t259, i32 0, i32 0
  %t261 = load %"compiler/source:Span", ptr %t260
  store %"compiler/source:Span" %t261, ptr %l17
  %t263 = load ptr, ptr %l7, !tbaa !29
  %t265 = getelementptr { i64, [5 x i64] }, ptr %t263, i32 0, i32 1
  %t266 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t265, i32 0, i32 2
  %t267 = load ptr, ptr %t266
  store ptr %t267, ptr %l18, !tbaa !29
  br label %bb45
bb44:
  br label %bb71
bb45:
  %t269 = load ptr, ptr %l18, !tbaa !29
  store ptr %t269, ptr %l140, !tbaa !29
  store i1 false, ptr %l141, !tbaa !21
  %t270 = load ptr, ptr %l140, !tbaa !29
  %t271 = icmp ne ptr %t270, null
  br i1 %t271, label %bb46, label %bb47
bb46:
  %t273 = load ptr, ptr %l140, !tbaa !29
  %t274 = load i64, ptr %t273, !range !{i64 0, i64 3}
  %t276 = icmp eq i64 %t274, 0
  store i1 %t276, ptr %l141, !tbaa !21
  br label %bb47
bb47:
  %t277 = load i1, ptr %l141, !tbaa !21
  br i1 %t277, label %bb48, label %bb49
bb48:
  %t278 = load ptr, ptr %l18, !tbaa !29
  %t280 = getelementptr { i64, [4 x i64] }, ptr %t278, i32 0, i32 1
  %t281 = getelementptr { i32 }, ptr %t280, i32 0, i32 0
  %t282 = load i32, ptr %t281
  %t286 = sext i32 %t282 to i64
  %t287 = load i64, ptr %l2, !tbaa !24
  %t290 = icmp eq i64 %t286, %t287
  store i1 %t290, ptr %l144, !tbaa !21
  br label %bb50
bb49:
  store i1 false, ptr %l144, !tbaa !21
  br label %bb50
bb50:
  %t292 = load i1, ptr %l144, !tbaa !21
  br i1 %t292, label %bb51, label %bb52
bb51:
  %t293 = load ptr, ptr %l18, !tbaa !29
  %t295 = getelementptr { i64, [4 x i64] }, ptr %t293, i32 0, i32 1
  %t296 = getelementptr { i32 }, ptr %t295, i32 0, i32 0
  %t297 = load i32, ptr %t296
  store i32 %t297, ptr %l20, !tbaa !23
  %t299 = load ptr, ptr %l0, !tbaa !29
  %t300 = load %"compiler/source:Span", ptr %l17
  %t303 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efnNameAt(ptr %v0, ptr %t299, %"compiler/source:Span" %t300)
  store %"compiler/source:Span" %t303, ptr %l155
  br label %bb53
bb52:
  br label %bb70
bb53:
  %t304 = load %"compiler/source:Span", ptr %l155
  store %"compiler/source:Span" %t304, ptr %l8
  %t305 = load ptr, ptr %l0, !tbaa !29
  %t307 = getelementptr %"compiler/scope:Scoper", ptr %t305, i32 0, i32 11
  store ptr %t307, ptr %l158, !tbaa !29
  %t308 = load ptr, ptr %l0, !tbaa !29
  %t310 = getelementptr %"compiler/scope:Scoper", ptr %t308, i32 0, i32 26
  %t311 = load ptr, ptr %t310, !tbaa !29
  %t313 = icmp eq ptr %t311, null
  br i1 %t313, label %bb54, label %bb55
bb54:
  call void @__olang_check_failed(ptr @olang_loc_6a005fed5e872d31_d6493210a3120795)
  unreachable
bb55:
  br label %bb56
bb56:
  %t315 = load ptr, ptr %l0, !tbaa !29
  %t317 = getelementptr %"compiler/scope:Scoper", ptr %t315, i32 0, i32 26
  %t318 = load ptr, ptr %t317, !tbaa !29
  %t321 = getelementptr %"compiler/typed:Body", ptr %t318, i32 0, i32 3
  %t322 = load i64, ptr %t321, !tbaa !24
  %t323 = load ptr, ptr %l158, !tbaa !29
  %t325 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %v0, ptr %v0, ptr %t323, i64 %t322)
  %t326 = extractvalue { i32, { i64, ptr } } %t325, 1
  %t327 = extractvalue { i32, { i64, ptr } } %t325, 0
  store i32 %t327, ptr %l167
  %t328 = icmp ne i32 %t327, 0
  br i1 %t328, label %bb58, label %ok.329, !prof !99
ok.329:
  store { i64, ptr } %t326, ptr %l166
  br label %bb57
bb57:
  %t330 = load { i64, ptr }, ptr %l166, !tbaa !27
  store { i64, ptr } %t330, ptr %l156, !tbaa !27
  br label %bb60
bb58:
  br label %bb59
bb59:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) }, ptr %l156, !tbaa !27
  br label %bb60
bb60:
  %t331 = load { i64, ptr }, ptr %l156, !tbaa !27
  store { i64, ptr } %t331, ptr %l21, !tbaa !27
  %t332 = getelementptr %"compiler/source:Span", ptr %l8, i32 0, i32 1
  %t333 = load i32, ptr %t332, !tbaa !23
  %t335 = sext i32 %t333 to i64
  %t336 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t338 = extractvalue { i64, ptr } %t336, 0
  %t341 = icmp sle i64 %t335, %t338
  br i1 %t341, label %bb61, label %bb62
bb61:
  %t343 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t343, ptr %l173, !tbaa !27
  %t344 = getelementptr %"compiler/source:Span", ptr %l8, i32 0, i32 0
  %t345 = load i32, ptr %t344, !tbaa !23
  %t347 = sext i32 %t345 to i64
  store i64 %t347, ptr %l175, !tbaa !24
  %t348 = getelementptr %"compiler/source:Span", ptr %l8, i32 0, i32 1
  %t349 = load i32, ptr %t348, !tbaa !23
  %t351 = sext i32 %t349 to i64
  store i64 %t351, ptr %l177, !tbaa !24
  %t352 = load { i64, ptr }, ptr %l173, !tbaa !27
  %t353 = extractvalue { i64, ptr } %t352, 0
  store i64 %t353, ptr %l178, !tbaa !24
  %t354 = load i64, ptr %l175, !tbaa !24
  %t355 = icmp sge i64 %t354, 0
  br i1 %t355, label %bb63, label %bb64
bb62:
  br label %bb69
bb63:
  %t357 = load i64, ptr %l175, !tbaa !24
  %t358 = load i64, ptr %l177, !tbaa !24
  %t359 = icmp sle i64 %t357, %t358
  br i1 %t359, label %bb65, label %bb66
bb64:
  call void @__olang_check_failed(ptr @olang_loc_6a6b8f4378490922_97e01e7acba54546)
  unreachable
bb65:
  %t361 = load i64, ptr %l177, !tbaa !24
  %t362 = load i64, ptr %l178, !tbaa !24
  %t363 = icmp sle i64 %t361, %t362
  br i1 %t363, label %bb67, label %bb68
bb66:
  call void @__olang_check_failed(ptr @olang_loc_6a6b8f4378490922_97e01e7acba54546)
  unreachable
bb67:
  %t365 = getelementptr { i64, ptr }, ptr %l173, i32 0, i32 1
  %t366 = load ptr, ptr %t365, !tbaa !27
  %t367 = load i64, ptr %l175, !tbaa !24
  %t368 = load i64, ptr %l177, !tbaa !24
  %t369 = getelementptr i8, ptr %t366, i64 %t367
  %t370 = sub i64 %t368, %t367
  %t371 = insertvalue { i64, ptr } undef, i64 %t370, 0
  %t372 = insertvalue { i64, ptr } %t371, ptr %t369, 1
  store { i64, ptr } %t372, ptr %l16, !tbaa !27
  br label %bb69
bb68:
  call void @__olang_check_failed(ptr @olang_loc_6a6b8f4378490922_97e01e7acba54546)
  unreachable
bb69:
  br label %bb70
bb70:
  br label %bb76
bb71:
  br i1 true, label %bb72, label %bb73
bb72:
  br label %bb74
bb73:
  br label %bb75
bb74:
  br label %bb76
bb75:
  call void @__olang_check_failed(ptr @olang_loc_cd98096e4c7f95d2_2c67f287d290c466)
  unreachable
bb76:
  %t374 = load ptr, ptr %l0, !tbaa !29
  store ptr %t374, ptr %l183, !tbaa !29
  %t375 = load %"compiler/source:Span", ptr %l8
  store %"compiler/source:Span" %t375, ptr %l184
  %t376 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t378 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s4, { i64, ptr } %t376, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d4, i32 0, i32 1) })
  store i1 %t378, ptr %l186
  br label %bb77
bb77:
  %t379 = load i1, ptr %l186, !tbaa !21
  %t380 = xor i1 %t379, true
  br i1 %t380, label %bb78, label %bb79
bb78:
  %t382 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t383 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t384 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t386 = extractvalue { i64, ptr } %t382, 1
  %t387 = extractvalue { i64, ptr } %t382, 0
  %t388 = add i64 %t384, %t387
  %t389 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t390 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t391 = add i64 %t388, %t390
  %t392 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t391)
  call void @olang_textcopy(ptr %t392, ptr %t383, i64 %t384)
  %t393 = getelementptr i8, ptr %t392, i64 %t384
  call void @olang_textcopy(ptr %t393, ptr %t386, i64 %t387)
  %t394 = getelementptr i8, ptr %t393, i64 %t387
  call void @olang_textcopy(ptr %t394, ptr %t389, i64 %t390)
  %t395 = insertvalue { i64, ptr } undef, i64 %t391, 0
  %t396 = insertvalue { i64, ptr } %t395, ptr %t392, 1
  %t398 = extractvalue { i64, ptr } %t396, 0
  %t399 = extractvalue { i64, ptr } %t396, 1
  %t400 = mul i64 %t398, 1
  %t401 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t400)
  call void @llvm.memcpy.p0.p0.i64(ptr %t401, ptr %t399, i64 %t400, i1 false)
  %t402 = insertvalue { i64, ptr } undef, i64 %t398, 0
  %t403 = insertvalue { i64, ptr } %t402, ptr %t401, 1
  %t404 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t405 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t406 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t411 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eValueBeyondType(ptr %s4, ptr %s0, ptr %s0, ptr %s0, ptr %s4, { i64, ptr } %t403, { i64, ptr } %t404, { i64, ptr } %t405, { i64, ptr } %t406)
  store %"compiler/diagmsg:Msg" %t411, ptr %l195
  br label %bb80
bb79:
  %t412 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t413 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t416 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFuncValueObligations(ptr %v0, ptr %s0, ptr %s4, { i64, ptr } %t412, { i64, ptr } %t413)
  store %"compiler/diagmsg:Msg" %t416, ptr %l198
  br label %bb81
bb80:
  %t417 = load %"compiler/diagmsg:Msg", ptr %l195
  store %"compiler/diagmsg:Msg" %t417, ptr %l188
  br label %bb82
bb81:
  %t418 = load %"compiler/diagmsg:Msg", ptr %l198
  store %"compiler/diagmsg:Msg" %t418, ptr %l188
  br label %bb82
bb82:
  %t419 = load ptr, ptr %l183, !tbaa !29
  %t420 = load %"compiler/source:Span", ptr %l184
  %t421 = load %"compiler/diagmsg:Msg", ptr %l188
  %t422 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %s4, ptr %t419, %"compiler/source:Span" %t420, %"compiler/diagmsg:Msg" %t421)
  store i64 %t422, ptr %l199
  br label %bb83
bb83:
  call void @__olang_scope_close(ptr %s4)
  br label %bb109
bb84:
  br i1 true, label %bb85, label %bb86
bb85:
  br label %bb87
bb86:
  br label %bb108
bb87:
  store %olang.scope zeroinitializer, ptr %s10
  %t423 = load ptr, ptr %l0, !tbaa !29
  store ptr %t423, ptr %l200, !tbaa !29
  %t424 = load ptr, ptr %l5, !tbaa !29
  store ptr %t424, ptr %l201, !tbaa !29
  %t425 = load ptr, ptr %l0, !tbaa !29
  %t427 = getelementptr %"compiler/scope:Scoper", ptr %t425, i32 0, i32 6
  %t428 = load i64, ptr %l2, !tbaa !24
  %t431 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t427, i64 %t428)
  store ptr %t431, ptr %l205
  br label %bb88
bb88:
  %t432 = load ptr, ptr %l205, !tbaa !29
  %t434 = getelementptr %"compiler/scope:summary", ptr %t432, i32 0, i32 0
  %t435 = load ptr, ptr %l200, !tbaa !29
  %t436 = load ptr, ptr %l201, !tbaa !29
  %t438 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekeptParam(ptr %v0, ptr %v0, ptr %v0, ptr %s10, ptr %t435, ptr %t436, ptr %t434)
  store { i64, ptr } %t438, ptr %l208
  br label %bb89
bb89:
  %t439 = load { i64, ptr }, ptr %l208, !tbaa !27
  store { i64, ptr } %t439, ptr %l22, !tbaa !27
  %t440 = load ptr, ptr %l5, !tbaa !29
  %t442 = getelementptr %"compiler/typed:Body", ptr %t440, i32 0, i32 14
  %t443 = load i1, ptr %t442, !tbaa !21
  br i1 %t443, label %bb90, label %bb91
bb90:
  store %olang.scope zeroinitializer, ptr %s11
  %t445 = load ptr, ptr %l0, !tbaa !29
  store ptr %t445, ptr %l211, !tbaa !29
  %t446 = load %"compiler/source:Span", ptr %l8
  store %"compiler/source:Span" %t446, ptr %l212
  %t447 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t449 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGenYieldsBorrow(ptr %s10, ptr %s11, { i64, ptr } %t447)
  store %"compiler/diagmsg:Msg" %t449, ptr %l214
  br label %bb92
bb91:
  br label %bb94
bb92:
  %t450 = load ptr, ptr %l211, !tbaa !29
  %t451 = load %"compiler/source:Span", ptr %l212
  %t452 = load %"compiler/diagmsg:Msg", ptr %l214
  %t453 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %s11, ptr %t450, %"compiler/source:Span" %t451, %"compiler/diagmsg:Msg" %t452)
  store i64 %t453, ptr %l215
  br label %bb93
bb93:
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s10)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb94:
  %t454 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t456 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s10, { i64, ptr } %t454, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d7, i32 0, i32 1) })
  store i1 %t456, ptr %l217
  br label %bb95
bb95:
  %t457 = load i1, ptr %l217, !tbaa !21
  %t458 = xor i1 %t457, true
  br i1 %t458, label %bb96, label %bb97
bb96:
  store %olang.scope zeroinitializer, ptr %s12
  %t460 = load ptr, ptr %l0, !tbaa !29
  store ptr %t460, ptr %l219, !tbaa !29
  %t461 = load %"compiler/source:Span", ptr %l8
  store %"compiler/source:Span" %t461, ptr %l220
  %t462 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t463 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t464 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t468 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eValueBeyondType(ptr %s12, ptr %s0, ptr %s0, ptr %s0, ptr %s12, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d8, i32 0, i32 1) }, { i64, ptr } %t462, { i64, ptr } %t463, { i64, ptr } %t464)
  store %"compiler/diagmsg:Msg" %t468, ptr %l224
  br label %bb98
bb97:
  br label %bb100
bb98:
  %t469 = load ptr, ptr %l219, !tbaa !29
  %t470 = load %"compiler/source:Span", ptr %l220
  %t471 = load %"compiler/diagmsg:Msg", ptr %l224
  %t472 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %s12, ptr %t469, %"compiler/source:Span" %t470, %"compiler/diagmsg:Msg" %t471)
  store i64 %t472, ptr %l225
  br label %bb99
bb99:
  call void @__olang_scope_close(ptr %s12)
  call void @__olang_scope_close(ptr %s10)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb100:
  %t473 = load ptr, ptr %l0, !tbaa !29
  store ptr %t473, ptr %l226, !tbaa !29
  %t474 = load %"compiler/source:Span", ptr %l8
  store %"compiler/source:Span" %t474, ptr %l227
  %t475 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t477 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s10, ptr %s10, { i64, ptr } %t475, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d9, i32 0, i32 1) })
  store i1 %t477, ptr %l229
  br label %bb101
bb101:
  %t478 = load i1, ptr %l229, !tbaa !21
  %t479 = xor i1 %t478, true
  br i1 %t479, label %bb102, label %bb103
bb102:
  %t481 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t482 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t485 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLambdaValueObligations(ptr %s10, ptr %s0, ptr %s10, { i64, ptr } %t481, { i64, ptr } %t482)
  store %"compiler/diagmsg:Msg" %t485, ptr %l234
  br label %bb104
bb103:
  %t486 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t488 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLambdaValueRelates(ptr %s0, ptr %s10, { i64, ptr } %t486)
  store %"compiler/diagmsg:Msg" %t488, ptr %l236
  br label %bb105
bb104:
  %t489 = load %"compiler/diagmsg:Msg", ptr %l234
  store %"compiler/diagmsg:Msg" %t489, ptr %l231
  br label %bb106
bb105:
  %t490 = load %"compiler/diagmsg:Msg", ptr %l236
  store %"compiler/diagmsg:Msg" %t490, ptr %l231
  br label %bb106
bb106:
  %t491 = load ptr, ptr %l226, !tbaa !29
  %t492 = load %"compiler/source:Span", ptr %l227
  %t493 = load %"compiler/diagmsg:Msg", ptr %l231
  %t494 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %s10, ptr %t491, %"compiler/source:Span" %t492, %"compiler/diagmsg:Msg" %t493)
  store i64 %t494, ptr %l237
  br label %bb107
bb107:
  call void @__olang_scope_close(ptr %s10)
  br label %bb109
bb108:
  call void @__olang_check_failed(ptr @olang_loc_bb4a2931444a19d3_17f54cd98470b8c7)
  unreachable
bb109:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eborrowed(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l12 = alloca i64
  %l18 = alloca i64
  %l22 = alloca i64
  %l25 = alloca i64
  %l46 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 17
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/scope:Scoper", ptr %t4, i32 0, i32 27
  %t7 = load i64, ptr %t6, !tbaa !24
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t3, i64 %t7)
  store i64 %t10, ptr %l12
  br label %bb1
bb1:
  %t11 = load i64, ptr %l12, !tbaa !24
  store i64 %t11, ptr %l2, !tbaa !24
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/scope:Scoper", ptr %t12, i32 0, i32 17
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/scope:Scoper", ptr %t15, i32 0, i32 27
  %t18 = load i64, ptr %t17, !tbaa !24
  %t20 = add i64 %t18, 1
  %t23 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t14, i64 %t20)
  store i64 %t23, ptr %l18
  br label %bb2
bb2:
  %t24 = load i64, ptr %l18, !tbaa !24
  store i64 %t24, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t25 = load i64, ptr %l3, !tbaa !24
  %t26 = load i64, ptr %l2, !tbaa !24
  %t29 = icmp sgt i64 %t25, %t26
  br i1 %t29, label %bb3, label %bb4
bb3:
  %t31 = load i64, ptr %l4, !tbaa !24
  %t33 = icmp sgt i64 %t31, 0
  br i1 %t33, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb8
bb5:
  %t35 = load i64, ptr %l3, !tbaa !24
  %t36 = load i64, ptr %l2, !tbaa !24
  %t39 = sub i64 %t35, %t36
  %t40 = load i64, ptr %l4, !tbaa !24
  %t43 = add i64 %t39, %t40
  %t45 = sub i64 %t43, 1
  %t46 = load i64, ptr %l4, !tbaa !24
  %t49 = sdiv i64 %t45, %t46
  store i64 %t49, ptr %l25, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb7
bb7:
  %t51 = load i64, ptr %l25, !tbaa !24
  store i64 %t51, ptr %l22, !tbaa !24
  br label %bb8
bb8:
  %t52 = load i64, ptr %l22, !tbaa !24
  store i64 %t52, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb9
bb9:
  %t53 = load i64, ptr %l6, !tbaa !24
  %t54 = load i64, ptr %l5, !tbaa !24
  %t57 = icmp slt i64 %t53, %t54
  %t59 = xor i1 %t57, true
  br i1 %t59, label %bb10, label %bb11
bb10:
  br label %bb18
bb11:
  br label %bb12
bb12:
  %t61 = load i64, ptr %l2, !tbaa !24
  %t62 = load i64, ptr %l6, !tbaa !24
  %t63 = load i64, ptr %l4, !tbaa !24
  %t66 = mul i64 %t62, %t63
  %t69 = add i64 %t61, %t66
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/scope:Scoper", ptr %t71, i32 0, i32 18
  %t77 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t73, i64 %t69)
  store i64 %t77, ptr %l46
  br label %bb13
bb13:
  %t79 = load i64, ptr %l46, !tbaa !24
  %t81 = icmp eq i64 %t79, %a1
  br i1 %t81, label %bb14, label %bb15
bb14:
  store i1 true, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t84 = load i64, ptr %l6, !tbaa !24
  %t86 = add i64 %t84, 1
  store i64 %t86, ptr %l6, !tbaa !24
  br label %bb9
bb18:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecall(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3, { i64, [2 x i64] } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca { i64, [2 x i64] }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca %"compiler/scope:Val"
  %l12 = alloca i64
  %l15 = alloca i1
  %l19 = alloca i64
  %l24 = alloca i64
  %l32 = alloca %"compiler/scope:Val"
  %l36 = alloca ptr
  %l38 = alloca ptr
  %l39 = alloca i64
  %l44 = alloca ptr
  %l50 = alloca %"compiler/scope:Val"
  %rv = alloca %"compiler/scope:Val"
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a2, ptr %l2
  store ptr %a3, ptr %l3
  store { i64, [2 x i64] } %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l3, !tbaa !29
  %t4 = getelementptr %"compiler/typed:Call", ptr %t2, i32 0, i32 0
  %t5 = load ptr, ptr %t4, !tbaa !29
  %t8 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebodyOf(ptr %v0, ptr %v1, ptr %t1, ptr %t5)
  store i64 %t8, ptr %l12
  br label %bb1
bb1:
  %t9 = load i64, ptr %l12, !tbaa !24
  store i64 %t9, ptr %l5, !tbaa !24
  %t10 = load i64, ptr %l5, !tbaa !24
  %t12 = icmp sge i64 %t10, 0
  br i1 %t12, label %bb2, label %bb3
bb2:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/scope:Scoper", ptr %t14, i32 0, i32 80
  %t17 = load i1, ptr %t16, !tbaa !21
  %t19 = xor i1 %t17, true
  store i1 %t19, ptr %l15, !tbaa !21
  br label %bb4
bb3:
  store i1 false, ptr %l15, !tbaa !21
  br label %bb4
bb4:
  %t21 = load i1, ptr %l15, !tbaa !21
  br i1 %t21, label %bb5, label %bb6
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load ptr, ptr %l3, !tbaa !29
  %t24 = load i64, ptr %l5, !tbaa !24
  %t25 = load %"compiler/source:Span", ptr %l1
  %t30 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etwinFor(ptr %v0, ptr %v1, ptr %t22, ptr %t23, i64 %t24, %"compiler/source:Span" %t25)
  store i64 %t30, ptr %l24
  br label %bb7
bb6:
  store i64 -1, ptr %l19, !tbaa !24
  br label %bb8
bb7:
  %t31 = load i64, ptr %l24, !tbaa !24
  store i64 %t31, ptr %l19, !tbaa !24
  br label %bb8
bb8:
  %t32 = load i64, ptr %l19, !tbaa !24
  store i64 %t32, ptr %l6, !tbaa !24
  %t33 = load i64, ptr %l6, !tbaa !24
  %t35 = icmp slt i64 %t33, 0
  br i1 %t35, label %bb9, label %bb10
bb9:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load %"compiler/source:Span", ptr %l1
  %t39 = load i32, ptr %l2, !tbaa !23
  %t40 = load ptr, ptr %l3, !tbaa !29
  %t41 = load { i64, [2 x i64] }, ptr %l4
  %t47 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecallAs(ptr %v0, ptr %v1, ptr %t37, %"compiler/source:Span" %t38, i32 %t39, ptr %t40, { i64, [2 x i64] } %t41)
  store %"compiler/scope:Val" %t47, ptr %l32
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t48 = load %"compiler/scope:Val", ptr %l32
  store %"compiler/scope:Val" %t48, ptr %rv
  br label %ret
bb12:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/scope:Scoper", ptr %t49, i32 0, i32 6
  %t52 = load i64, ptr %l5, !tbaa !24
  %t55 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t51, i64 %t52)
  store ptr %t55, ptr %l36
  br label %bb13
bb13:
  %t56 = load ptr, ptr %l36, !tbaa !29
  store ptr %t56, ptr %l7, !tbaa !29
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/scope:Scoper", ptr %t57, i32 0, i32 6
  store ptr %t59, ptr %l38, !tbaa !29
  %t60 = load i64, ptr %l5, !tbaa !24
  store i64 %t60, ptr %l39, !tbaa !24
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/scope:Scoper", ptr %t61, i32 0, i32 227
  %t64 = load ptr, ptr %t63, !tbaa !29
  %t66 = getelementptr %"compiler/scope:twinTab", ptr %t64, i32 0, i32 4
  %t67 = load i64, ptr %l6, !tbaa !24
  %t70 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t66, i64 %t67)
  store ptr %t70, ptr %l44
  br label %bb14
bb14:
  %t71 = load ptr, ptr %l38, !tbaa !29
  %t72 = load i64, ptr %l39, !tbaa !24
  %t73 = load ptr, ptr %l44, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hdd18cd18fee7da2cefbfd21396944747(ptr %v0, ptr %v0, ptr %t71, i64 %t72, ptr %t73)
  br label %bb15
bb15:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load %"compiler/source:Span", ptr %l1
  %t76 = load i32, ptr %l2, !tbaa !23
  %t77 = load ptr, ptr %l3, !tbaa !29
  %t78 = load { i64, [2 x i64] }, ptr %l4
  %t84 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecallAs(ptr %v0, ptr %v1, ptr %t74, %"compiler/source:Span" %t75, i32 %t76, ptr %t77, { i64, [2 x i64] } %t78)
  store %"compiler/scope:Val" %t84, ptr %l50
  br label %bb16
bb16:
  %t85 = load %"compiler/scope:Val", ptr %l50
  store %"compiler/scope:Val" %t85, ptr %l8
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/scope:Scoper", ptr %t86, i32 0, i32 6
  %t89 = load i64, ptr %l5, !tbaa !24
  %t90 = load ptr, ptr %l7, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hdd18cd18fee7da2cefbfd21396944747(ptr %v0, ptr %v0, ptr %t88, i64 %t89, ptr %t90)
  br label %bb17
bb17:
  %t94 = load %"compiler/scope:Val", ptr %l8
  store %"compiler/scope:Val" %t94, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/scope:Val", ptr %rv
  ret %"compiler/scope:Val" %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edischargeRels(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3, { i64, ptr } %a4, ptr %a5, i1 %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca %"compiler/scope:rel"
  %l10 = alloca { i64, [2 x i64] }
  %l11 = alloca { i64, [2 x i64] }
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i32
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca %"compiler/source:Span"
  %l20 = alloca { i64, ptr }
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca %"compiler/diagmsg:Msg"
  %l26 = alloca i64
  %l27 = alloca ptr
  %l28 = alloca i64
  %l29 = alloca i64
  %l31 = alloca i64
  %l33 = alloca i64
  %l38 = alloca %"compiler/scope:rel"
  %l43 = alloca { i64, [2 x i64] }
  %l48 = alloca { i64, [2 x i64] }
  %l51 = alloca i1
  %l57 = alloca i64
  %l63 = alloca i1
  %l67 = alloca i1
  %l69 = alloca i1
  %l76 = alloca i1
  %l80 = alloca i1
  %l83 = alloca i1
  %l87 = alloca ptr
  %l88 = alloca i64
  %l91 = alloca %"compiler/source:Span"
  %l100 = alloca i1
  %l107 = alloca i64
  %l110 = alloca i1
  %l113 = alloca { i64, ptr }
  %l116 = alloca i1
  %l119 = alloca { i64, ptr }
  %l125 = alloca i1
  %l128 = alloca ptr
  %l131 = alloca i32
  %l132 = alloca i32
  %l136 = alloca i1
  %l140 = alloca i1
  %l144 = alloca i1
  %l147 = alloca i1
  %l157 = alloca i1
  %l160 = alloca i1
  %l173 = alloca i1
  %l174 = alloca i1
  %l177 = alloca i1
  %l195 = alloca i1
  %l199 = alloca i1
  %l204 = alloca i1
  %l208 = alloca i1
  %l211 = alloca i1
  %l216 = alloca i1
  %l219 = alloca i1
  %l237 = alloca i1
  %l241 = alloca ptr
  %l246 = alloca i1
  %l247 = alloca { i64, [2 x i64] }
  %l250 = alloca { i64, [2 x i64] }
  %l252 = alloca i1
  %l253 = alloca ptr
  %l255 = alloca %"compiler/source:Span"
  %l258 = alloca %"compiler/diagmsg:Msg"
  %l259 = alloca %"compiler/diagmsg:Msg"
  %l260 = alloca %"compiler/diagmsg:Msg"
  %l261 = alloca i64
  %l264 = alloca i1
  %l267 = alloca i1
  %l268 = alloca i64
  %l269 = alloca ptr
  %l272 = alloca i32
  %l273 = alloca i64
  %l275 = alloca i1
  %l279 = alloca i1
  %l280 = alloca ptr
  %l283 = alloca %"compiler/source:Span"
  %l291 = alloca %"compiler/diagmsg:Msg"
  %l292 = alloca %"compiler/diagmsg:Msg"
  %l293 = alloca %"compiler/diagmsg:Msg"
  %l294 = alloca i64
  %l302 = alloca i64
  %l308 = alloca i64
  %l311 = alloca %"compiler/source:Span"
  %l314 = alloca { i64, ptr }
  %l317 = alloca %"compiler/source:Span"
  %l320 = alloca %"compiler/source:Span"
  %l324 = alloca i1
  %l335 = alloca { i64, ptr }
  %l338 = alloca { i64, ptr }
  %l341 = alloca { i64, ptr }
  %l343 = alloca ptr
  %l344 = alloca %"compiler/source:Span"
  %l348 = alloca %"compiler/diagmsg:Msg"
  %l350 = alloca %"compiler/diagmsg:Msg"
  %l352 = alloca %"compiler/diagmsg:Msg"
  %l353 = alloca i64
  %l356 = alloca i64
  %l359 = alloca i1
  %l362 = alloca ptr
  %l363 = alloca i64
  %l365 = alloca { i64, ptr }
  %l368 = alloca ptr
  %l369 = alloca i64
  %l373 = alloca ptr
  %l382 = alloca %"compiler/typed:Local"
  %l384 = alloca { i64, ptr }
  %l388 = alloca i64
  %l391 = alloca i1
  %l395 = alloca { i64, ptr }
  %l398 = alloca i64
  %l401 = alloca i1
  %l404 = alloca i1
  %l406 = alloca ptr
  %l409 = alloca %"compiler/source:Span"
  %l412 = alloca %"compiler/diagmsg:Msg"
  %l413 = alloca i64
  %l416 = alloca i1
  %l417 = alloca ptr
  %l419 = alloca { i64, ptr }
  %l421 = alloca ptr
  %l424 = alloca %"compiler/source:Span"
  %l425 = alloca i1
  %l428 = alloca i1
  %l429 = alloca ptr
  %l431 = alloca { i64, ptr }
  %l433 = alloca ptr
  %l436 = alloca %"compiler/source:Span"
  %l437 = alloca i1
  %l439 = alloca %"compiler/diagmsg:Msg"
  %l440 = alloca %"compiler/diagmsg:Msg"
  %l441 = alloca %"compiler/diagmsg:Msg"
  %l445 = alloca i1
  %l446 = alloca i1
  %l450 = alloca i1
  %l451 = alloca %"compiler/diagmsg:Msg"
  %l452 = alloca %"compiler/diagmsg:Msg"
  %l455 = alloca ptr
  %l458 = alloca %"compiler/source:Span"
  %l460 = alloca i64
  %l466 = alloca ptr
  %l467 = alloca ptr
  %l468 = alloca i64
  %l470 = alloca i64
  %l475 = alloca %"compiler/source:Span"
  %l476 = alloca %"compiler/diagmsg:Msg"
  %l480 = alloca i64
  %l484 = alloca i64
  %l487 = alloca i1
  %l490 = alloca { i64, ptr }
  %l493 = alloca i1
  %l497 = alloca { i64, ptr }
  %l502 = alloca i1
  %l505 = alloca ptr
  %l506 = alloca i64
  %l509 = alloca %"compiler/source:Span"
  %s2 = alloca %olang.scope
  %s21 = alloca %olang.scope
  %s22 = alloca %olang.scope
  %s23 = alloca %olang.scope
  %s29 = alloca %olang.scope
  %s33 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i64 %a3, ptr %l3
  store { i64, ptr } %a4, ptr %l4
  store ptr %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a2, ptr %l7, !tbaa !29
  store i64 0, ptr %l8, !tbaa !24
  br label %bb1
bb1:
  store %olang.scope zeroinitializer, ptr %s2
  %t3 = load i64, ptr %l8, !tbaa !24
  store i64 %t3, ptr %l31, !tbaa !24
  %t4 = load ptr, ptr %l7, !tbaa !29
  %t6 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eLen_3ccompiler_2fscope_3arel_3e(ptr %v1, ptr %t4)
  store i64 %t6, ptr %l33
  br label %bb2
bb2:
  %t7 = load i64, ptr %l31, !tbaa !24
  %t8 = load i64, ptr %l33, !tbaa !24
  %t9 = icmp slt i64 %t7, %t8
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s2)
  br label %bb309
bb4:
  br label %bb5
bb5:
  %t13 = load ptr, ptr %l7, !tbaa !29
  %t14 = load i64, ptr %l8, !tbaa !24
  %t17 = call %"compiler/scope:rel" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eAt_3ccompiler_2fscope_3arel_3e(ptr %v1, ptr %t13, i64 %t14)
  store %"compiler/scope:rel" %t17, ptr %l38
  br label %bb6
bb6:
  %t18 = load %"compiler/scope:rel", ptr %l38
  store %"compiler/scope:rel" %t18, ptr %l9
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/scope:rel", ptr %l9, i32 0, i32 0
  %t21 = load { i64, [2 x i64] }, ptr %t20
  %t22 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t23 = load ptr, ptr %l5, !tbaa !29
  %t28 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ethrough(ptr %v0, ptr %v2, ptr %v3, ptr %t19, { i64, [2 x i64] } %t21, { i64, ptr } %t22, ptr %t23, i1 true)
  store { i64, [2 x i64] } %t28, ptr %l43
  br label %bb7
bb7:
  %t29 = load { i64, [2 x i64] }, ptr %l43
  store { i64, [2 x i64] } %t29, ptr %l10
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/scope:rel", ptr %l9, i32 0, i32 1
  %t32 = load { i64, [2 x i64] }, ptr %t31
  %t33 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t34 = load ptr, ptr %l5, !tbaa !29
  %t39 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ethrough(ptr %v0, ptr %v2, ptr %v3, ptr %t30, { i64, [2 x i64] } %t32, { i64, ptr } %t33, ptr %t34, i1 false)
  store { i64, [2 x i64] } %t39, ptr %l48
  br label %bb8
bb8:
  %t40 = load { i64, [2 x i64] }, ptr %l48
  store { i64, [2 x i64] } %t40, ptr %l11
  %t41 = load { i64, [2 x i64] }, ptr %l10
  %t43 = extractvalue { i64, [2 x i64] } %t41, 0
  %t44 = icmp eq i64 %t43, 0
  br i1 %t44, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l51, !tbaa !21
  br label %bb11
bb10:
  %t46 = load { i64, [2 x i64] }, ptr %l11
  %t48 = extractvalue { i64, [2 x i64] } %t46, 0
  %t49 = icmp eq i64 %t48, 0
  store i1 %t49, ptr %l51, !tbaa !21
  br label %bb11
bb11:
  %t51 = load i1, ptr %l51, !tbaa !21
  br i1 %t51, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s2)
  br label %bb308
bb13:
  br label %bb14
bb14:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load { i64, [2 x i64] }, ptr %l10
  %t54 = load { i64, [2 x i64] }, ptr %l11
  %t58 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejudgeOut(ptr %v0, ptr %t52, { i64, [2 x i64] } %t53, { i64, [2 x i64] } %t54)
  store i64 %t58, ptr %l57
  br label %bb15
bb15:
  %t59 = load i64, ptr %l57, !tbaa !24
  store i64 %t59, ptr %l12, !tbaa !24
  %t60 = load i64, ptr %l12, !tbaa !24
  %t61 = load i64, ptr @G_2ecompiler_2fscope_2eHolds, !tbaa !24
  %t64 = icmp eq i64 %t60, %t61
  br i1 %t64, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s2)
  br label %bb308
bb17:
  br label %bb18
bb18:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/scope:Scoper", ptr %t66, i32 0, i32 147
  %t69 = load i1, ptr %t68, !tbaa !21
  br i1 %t69, label %bb19, label %bb20
bb19:
  %t71 = load i64, ptr %l12, !tbaa !24
  %t72 = load i64, ptr @G_2ecompiler_2fscope_2eFailsBlock, !tbaa !24
  %t75 = icmp eq i64 %t71, %t72
  store i1 %t75, ptr %l63, !tbaa !21
  br label %bb21
bb20:
  store i1 false, ptr %l63, !tbaa !21
  br label %bb21
bb21:
  %t77 = load i1, ptr %l63, !tbaa !21
  br i1 %t77, label %bb22, label %bb23
bb22:
  %t78 = getelementptr %"compiler/scope:rel", ptr %l9, i32 0, i32 5
  %t79 = load i1, ptr %t78, !tbaa !21
  store i1 %t79, ptr %l67, !tbaa !21
  br label %bb24
bb23:
  store i1 false, ptr %l67, !tbaa !21
  br label %bb24
bb24:
  %t81 = load i1, ptr %l67, !tbaa !21
  br i1 %t81, label %bb25, label %bb26
bb25:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/scope:Scoper", ptr %t82, i32 0, i32 207
  %t85 = load i1, ptr %t84, !tbaa !21
  %t87 = xor i1 %t85, true
  store i1 %t87, ptr %l69, !tbaa !21
  br label %bb27
bb26:
  store i1 false, ptr %l69, !tbaa !21
  br label %bb27
bb27:
  %t89 = load i1, ptr %l69, !tbaa !21
  br i1 %t89, label %bb28, label %bb29
bb28:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/scope:Scoper", ptr %t90, i32 0, i32 210
  store i1 true, ptr %t92, !tbaa !21
  br label %bb30
bb29:
  br label %bb30
bb30:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/scope:Scoper", ptr %t93, i32 0, i32 147
  %t96 = load i1, ptr %t95, !tbaa !21
  br i1 %t96, label %bb31, label %bb32
bb31:
  %t98 = load i64, ptr %l12, !tbaa !24
  %t99 = load i64, ptr @G_2ecompiler_2fscope_2eFailsBlock, !tbaa !24
  %t102 = icmp eq i64 %t98, %t99
  store i1 %t102, ptr %l76, !tbaa !21
  br label %bb33
bb32:
  store i1 false, ptr %l76, !tbaa !21
  br label %bb33
bb33:
  %t104 = load i1, ptr %l76, !tbaa !21
  br i1 %t104, label %bb34, label %bb35
bb34:
  %t105 = getelementptr %"compiler/scope:rel", ptr %l9, i32 0, i32 5
  %t106 = load i1, ptr %t105, !tbaa !21
  %t108 = xor i1 %t106, true
  br i1 %t108, label %bb36, label %bb37
bb35:
  store i1 false, ptr %l80, !tbaa !21
  br label %bb39
bb36:
  store i1 true, ptr %l83, !tbaa !21
  br label %bb38
bb37:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/scope:Scoper", ptr %t110, i32 0, i32 207
  %t113 = load i1, ptr %t112, !tbaa !21
  store i1 %t113, ptr %l83, !tbaa !21
  br label %bb38
bb38:
  %t115 = load i1, ptr %l83, !tbaa !21
  store i1 %t115, ptr %l80, !tbaa !21
  br label %bb39
bb39:
  %t116 = load i1, ptr %l80, !tbaa !21
  br i1 %t116, label %bb40, label %bb41
bb40:
  %t117 = getelementptr %"compiler/scope:rel", ptr %l9, i32 0, i32 5
  %t118 = load i1, ptr %t117, !tbaa !21
  br i1 %t118, label %bb42, label %bb43
bb41:
  br label %bb48
bb42:
  %t120 = load ptr, ptr %l0, !tbaa !29
  store ptr %t120, ptr %l87, !tbaa !29
  %t121 = load i64, ptr @G_2ecompiler_2fscope_2ePlaceView, !tbaa !24
  store i64 %t121, ptr %l88, !tbaa !24
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t123 = load %"compiler/source:Span", ptr %l1
  %t126 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enameSpan(ptr %v0, ptr %t122, %"compiler/source:Span" %t123)
  store %"compiler/source:Span" %t126, ptr %l91
  br label %bb44
bb43:
  br label %bb46
bb44:
  %t127 = load ptr, ptr %l87, !tbaa !29
  %t128 = load i64, ptr %l88, !tbaa !24
  %t129 = load %"compiler/source:Span", ptr %l91
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eviewing(ptr %v0, ptr %t127, i64 %t128, %"compiler/source:Span" %t129)
  br label %bb45
bb45:
  br label %bb46
bb46:
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t131 = load ptr, ptr %l5, !tbaa !29
  %t132 = load %"compiler/scope:rel", ptr %l9
  %t133 = load { i64, [2 x i64] }, ptr %l11
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eliftAtCall(ptr %v0, ptr %v3, ptr %t130, ptr %t131, %"compiler/scope:rel" %t132, { i64, [2 x i64] } %t133)
  br label %bb47
bb47:
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t140 = getelementptr %"compiler/scope:Scoper", ptr %t138, i32 0, i32 213
  store i64 0, ptr %t140, !tbaa !24
  br label %bb48
bb48:
  %t141 = load i64, ptr %l12, !tbaa !24
  %t142 = load i64, ptr @G_2ecompiler_2fscope_2eFailsBlock, !tbaa !24
  %t145 = icmp eq i64 %t141, %t142
  br i1 %t145, label %bb49, label %bb50
bb49:
  store i1 true, ptr %l100, !tbaa !21
  br label %bb51
bb50:
  %t147 = load i64, ptr %l12, !tbaa !24
  %t148 = load i64, ptr @G_2ecompiler_2fscope_2eFailsUnknown, !tbaa !24
  %t151 = icmp eq i64 %t147, %t148
  store i1 %t151, ptr %l100, !tbaa !21
  br label %bb51
bb51:
  %t153 = load i1, ptr %l100, !tbaa !21
  br i1 %t153, label %bb52, label %bb53
bb52:
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t155 = load ptr, ptr %l5, !tbaa !29
  %t156 = getelementptr %"compiler/scope:rel", ptr %l9, i32 0, i32 0
  %t157 = load { i64, [2 x i64] }, ptr %t156
  %t161 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargOfVar(ptr %v0, ptr %v3, ptr %t154, ptr %t155, { i64, [2 x i64] } %t157)
  store i64 %t161, ptr %l107
  br label %bb54
bb53:
  br label %bb63
bb54:
  %t162 = load i64, ptr %l107, !tbaa !24
  store i64 %t162, ptr %l13, !tbaa !24
  %t163 = load i64, ptr %l13, !tbaa !24
  %t165 = icmp sge i64 %t163, 0
  br i1 %t165, label %bb55, label %bb56
bb55:
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t168 = load ptr, ptr %l5, !tbaa !29
  %t170 = getelementptr %"compiler/typed:Call", ptr %t168, i32 0, i32 1
  %t171 = load { i64, ptr }, ptr %t170, !tbaa !27
  store { i64, ptr } %t171, ptr %l113, !tbaa !27
  %t172 = load i64, ptr %l13, !tbaa !24
  %t174 = getelementptr { i64, ptr }, ptr %l113, i32 0, i32 1
  %t175 = load ptr, ptr %t174, !tbaa !27
  %t176 = getelementptr ptr, ptr %t175, i64 %t172
  %t177 = load ptr, ptr %t176, !tbaa !39
  %t180 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartOfOwn(ptr %v0, ptr %v3, ptr %t167, ptr %t177)
  store i1 %t180, ptr %l116
  br label %bb57
bb56:
  store i1 false, ptr %l110, !tbaa !21
  br label %bb58
bb57:
  %t181 = load i1, ptr %l116, !tbaa !21
  store i1 %t181, ptr %l110, !tbaa !21
  br label %bb58
bb58:
  %t182 = load i1, ptr %l110, !tbaa !21
  br i1 %t182, label %bb59, label %bb60
bb59:
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t184 = load ptr, ptr %l5, !tbaa !29
  %t186 = getelementptr %"compiler/typed:Call", ptr %t184, i32 0, i32 1
  %t187 = load { i64, ptr }, ptr %t186, !tbaa !27
  store { i64, ptr } %t187, ptr %l119, !tbaa !27
  %t188 = load i64, ptr %l13, !tbaa !24
  %t190 = getelementptr { i64, ptr }, ptr %l119, i32 0, i32 1
  %t191 = load ptr, ptr %t190, !tbaa !27
  %t192 = getelementptr ptr, ptr %t191, i64 %t188
  %t193 = load ptr, ptr %t192, !tbaa !39
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewantPromotion(ptr %v0, ptr %v3, ptr %t183, ptr %t193)
  br label %bb61
bb60:
  br label %bb62
bb61:
  br label %bb62
bb62:
  br label %bb63
bb63:
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t197 = load ptr, ptr %l5, !tbaa !29
  %t198 = getelementptr %"compiler/scope:rel", ptr %l9, i32 0, i32 0
  %t199 = load { i64, [2 x i64] }, ptr %t198
  %t203 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eonResult(ptr %v0, ptr %v3, ptr %t196, ptr %t197, { i64, [2 x i64] } %t199)
  store i1 %t203, ptr %l125
  br label %bb64
bb64:
  %t204 = load i1, ptr %l125, !tbaa !21
  br i1 %t204, label %bb65, label %bb66
bb65:
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t207 = getelementptr %"compiler/scope:Scoper", ptr %t205, i32 0, i32 0
  %t208 = load ptr, ptr %t207, !tbaa !29
  %t210 = getelementptr %"compiler/generic:Program", ptr %t208, i32 0, i32 2
  store ptr %t210, ptr %l128, !tbaa !29
  %t211 = load ptr, ptr %l0, !tbaa !29
  %t212 = load ptr, ptr %l5, !tbaa !29
  %t215 = call i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeType(ptr %v0, ptr %v3, ptr %t211, ptr %t212)
  store i32 %t215, ptr %l131
  br label %bb67
bb66:
  br label %bb93
bb67:
  %t216 = load ptr, ptr %l128, !tbaa !29
  %t217 = load i32, ptr %l131, !tbaa !23
  %t218 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t216, i32 %t217)
  store i32 %t218, ptr %l132
  br label %bb68
bb68:
  %t219 = load i32, ptr %l132, !tbaa !23
  store i32 %t219, ptr %l14, !tbaa !23
  %t220 = getelementptr %"compiler/scope:rel", ptr %l9, i32 0, i32 4
  %t221 = load i64, ptr %t220, !tbaa !24
  %t222 = load i64, ptr @G_2ecompiler_2fscope_2eWhyHolds, !tbaa !24
  %t225 = icmp eq i64 %t221, %t222
  br i1 %t225, label %bb69, label %bb70
bb69:
  %t227 = load i64, ptr %l12, !tbaa !24
  %t228 = load i64, ptr @G_2ecompiler_2fscope_2eObliged, !tbaa !24
  %t231 = icmp ne i64 %t227, %t228
  br i1 %t231, label %bb71, label %bb72
bb70:
  store i1 false, ptr %l136, !tbaa !21
  br label %bb80
bb71:
  store i1 true, ptr %l140, !tbaa !21
  br label %bb79
bb72:
  %t233 = load ptr, ptr %l0, !tbaa !29
  %t235 = getelementptr %"compiler/scope:Scoper", ptr %t233, i32 0, i32 42
  %t236 = load i64, ptr %t235, !tbaa !24
  %t238 = icmp sge i64 %t236, 0
  br i1 %t238, label %bb73, label %bb74
bb73:
  %t240 = load { i64, [2 x i64] }, ptr %l10
  %t242 = extractvalue { i64, [2 x i64] } %t240, 0
  %t243 = icmp eq i64 %t242, 2
  br i1 %t243, label %bb75, label %bb76
bb74:
  store i1 false, ptr %l144, !tbaa !21
  br label %bb78
bb75:
  %t245 = getelementptr { i64, [2 x i64] }, ptr %l10, i32 0, i32 1
  %t246 = getelementptr { i64 }, ptr %t245, i32 0, i32 0
  %t247 = load i64, ptr %t246
  %t248 = load ptr, ptr %l0, !tbaa !29
  %t250 = getelementptr %"compiler/scope:Scoper", ptr %t248, i32 0, i32 42
  %t251 = load i64, ptr %t250, !tbaa !24
  %t254 = icmp eq i64 %t247, %t251
  store i1 %t254, ptr %l147, !tbaa !21
  br label %bb77
bb76:
  store i1 false, ptr %l147, !tbaa !21
  br label %bb77
bb77:
  %t256 = load i1, ptr %l147, !tbaa !21
  store i1 %t256, ptr %l144, !tbaa !21
  br label %bb78
bb78:
  %t257 = load i1, ptr %l144, !tbaa !21
  store i1 %t257, ptr %l140, !tbaa !21
  br label %bb79
bb79:
  %t258 = load i1, ptr %l140, !tbaa !21
  store i1 %t258, ptr %l136, !tbaa !21
  br label %bb80
bb80:
  %t259 = load i1, ptr %l136, !tbaa !21
  br i1 %t259, label %bb81, label %bb82
bb81:
  %t260 = load ptr, ptr %l0, !tbaa !29
  %t261 = load i32, ptr %l14, !tbaa !23
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewantExact(ptr %v0, ptr %t260, i32 %t261)
  br label %bb83
bb82:
  br label %bb84
bb83:
  br label %bb84
bb84:
  %t264 = load i64, ptr %l12, !tbaa !24
  %t265 = load i64, ptr @G_2ecompiler_2fscope_2eObliged, !tbaa !24
  %t268 = icmp ne i64 %t264, %t265
  br i1 %t268, label %bb85, label %bb86
bb85:
  %t270 = load ptr, ptr %l0, !tbaa !29
  %t271 = load i32, ptr %l14, !tbaa !23
  %t274 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t270, i32 %t271)
  store i1 %t274, ptr %l160
  br label %bb87
bb86:
  store i1 false, ptr %l157, !tbaa !21
  br label %bb88
bb87:
  %t275 = load i1, ptr %l160, !tbaa !21
  %t276 = xor i1 %t275, true
  store i1 %t276, ptr %l157, !tbaa !21
  br label %bb88
bb88:
  %t278 = load i1, ptr %l157, !tbaa !21
  br i1 %t278, label %bb89, label %bb90
bb89:
  %t279 = load ptr, ptr %l0, !tbaa !29
  %t280 = load i32, ptr %l14, !tbaa !23
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewantPromotionOf(ptr %v0, ptr %t279, i32 %t280)
  br label %bb91
bb90:
  br label %bb92
bb91:
  br label %bb92
bb92:
  br label %bb93
bb93:
  %t283 = load i64, ptr %l12, !tbaa !24
  %t284 = load i64, ptr @G_2ecompiler_2fscope_2eObliged, !tbaa !24
  %t287 = icmp ne i64 %t283, %t284
  br i1 %t287, label %bb94, label %bb95
bb94:
  %t289 = load ptr, ptr %l0, !tbaa !29
  %t290 = load { i64, [2 x i64] }, ptr %l10
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egiveBackDerived(ptr %v0, ptr %t289, { i64, [2 x i64] } %t290)
  br label %bb96
bb95:
  br label %bb108
bb96:
  %t293 = load ptr, ptr %l0, !tbaa !29
  %t294 = load { i64, [2 x i64] }, ptr %l11
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egiveBackDerived(ptr %v0, ptr %t293, { i64, [2 x i64] } %t294)
  br label %bb97
bb97:
  %t297 = load ptr, ptr %l0, !tbaa !29
  %t298 = load { i64, [2 x i64] }, ptr %l10
  %t301 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ederivedTerm(ptr %v0, ptr %t297, { i64, [2 x i64] } %t298)
  store i1 %t301, ptr %l173
  br label %bb98
bb98:
  %t302 = load i1, ptr %l173, !tbaa !21
  br i1 %t302, label %bb99, label %bb100
bb99:
  store i1 true, ptr %l174, !tbaa !21
  br label %bb102
bb100:
  %t303 = load ptr, ptr %l0, !tbaa !29
  %t304 = load { i64, [2 x i64] }, ptr %l11
  %t307 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ederivedTerm(ptr %v0, ptr %t303, { i64, [2 x i64] } %t304)
  store i1 %t307, ptr %l177
  br label %bb101
bb101:
  %t308 = load i1, ptr %l177, !tbaa !21
  store i1 %t308, ptr %l174, !tbaa !21
  br label %bb102
bb102:
  %t309 = load i1, ptr %l174, !tbaa !21
  br i1 %t309, label %bb103, label %bb104
bb103:
  %t310 = load ptr, ptr %l0, !tbaa !29
  %t311 = load ptr, ptr %l5, !tbaa !29
  %t312 = getelementptr %"compiler/scope:rel", ptr %l9, i32 0, i32 0
  %t313 = load { i64, [2 x i64] }, ptr %t312
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egiveBackArg(ptr %v0, ptr %v3, ptr %t310, ptr %t311, { i64, [2 x i64] } %t313)
  br label %bb105
bb104:
  br label %bb107
bb105:
  %t317 = load ptr, ptr %l0, !tbaa !29
  %t318 = load ptr, ptr %l5, !tbaa !29
  %t319 = getelementptr %"compiler/scope:rel", ptr %l9, i32 0, i32 1
  %t320 = load { i64, [2 x i64] }, ptr %t319
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egiveBackArg(ptr %v0, ptr %v3, ptr %t317, ptr %t318, { i64, [2 x i64] } %t320)
  br label %bb106
bb106:
  br label %bb107
bb107:
  br label %bb108
bb108:
  %t324 = load i64, ptr %l12, !tbaa !24
  %t325 = load i64, ptr @G_2ecompiler_2fscope_2eObliged, !tbaa !24
  %t328 = icmp eq i64 %t324, %t325
  br i1 %t328, label %bb109, label %bb110
bb109:
  %t330 = load ptr, ptr %l0, !tbaa !29
  %t332 = getelementptr %"compiler/scope:Scoper", ptr %t330, i32 0, i32 125
  %t333 = load i64, ptr %t332, !tbaa !24
  store i64 %t333, ptr %l15, !tbaa !24
  %t335 = load ptr, ptr %l0, !tbaa !29
  %t336 = getelementptr %"compiler/scope:rel", ptr %l9, i32 0, i32 5
  %t337 = load i1, ptr %t336, !tbaa !21
  %t340 = getelementptr %"compiler/scope:Scoper", ptr %t335, i32 0, i32 204
  store i1 %t337, ptr %t340, !tbaa !21
  %t341 = load ptr, ptr %l0, !tbaa !29
  %t342 = getelementptr %"compiler/scope:rel", ptr %l9, i32 0, i32 6
  %t343 = load i1, ptr %t342, !tbaa !21
  %t346 = getelementptr %"compiler/scope:Scoper", ptr %t341, i32 0, i32 205
  store i1 %t343, ptr %t346, !tbaa !21
  %t347 = getelementptr %"compiler/scope:rel", ptr %l9, i32 0, i32 4
  %t348 = load i64, ptr %t347, !tbaa !24
  %t350 = icmp ne i64 %t348, 0
  br i1 %t350, label %bb111, label %bb112
bb110:
  br label %bb135
bb111:
  %t352 = load ptr, ptr %l0, !tbaa !29
  %t353 = load { i64, [2 x i64] }, ptr %l10
  %t354 = load { i64, [2 x i64] }, ptr %l11
  %t358 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2einstanceRel(ptr %v0, ptr %t352, { i64, [2 x i64] } %t353, { i64, [2 x i64] } %t354)
  store i1 %t358, ptr %l199
  br label %bb113
bb112:
  store i1 false, ptr %l195, !tbaa !21
  br label %bb114
bb113:
  %t359 = load i1, ptr %l199, !tbaa !21
  store i1 %t359, ptr %l195, !tbaa !21
  br label %bb114
bb114:
  %t360 = load i1, ptr %l195, !tbaa !21
  br i1 %t360, label %bb115, label %bb116
bb115:
  %t361 = load ptr, ptr %l0, !tbaa !29
  %t362 = getelementptr %"compiler/scope:rel", ptr %l9, i32 0, i32 4
  %t363 = load i64, ptr %t362, !tbaa !24
  %t366 = getelementptr %"compiler/scope:Scoper", ptr %t361, i32 0, i32 125
  store i64 %t363, ptr %t366, !tbaa !24
  br label %bb133
bb116:
  %t367 = getelementptr %"compiler/scope:rel", ptr %l9, i32 0, i32 4
  %t368 = load i64, ptr %t367, !tbaa !24
  %t370 = icmp ne i64 %t368, 0
  br i1 %t370, label %bb117, label %bb118
bb117:
  %t372 = load ptr, ptr %l0, !tbaa !29
  %t374 = getelementptr %"compiler/scope:Scoper", ptr %t372, i32 0, i32 42
  %t375 = load i64, ptr %t374, !tbaa !24
  %t377 = icmp sge i64 %t375, 0
  store i1 %t377, ptr %l204, !tbaa !21
  br label %bb119
bb118:
  store i1 false, ptr %l204, !tbaa !21
  br label %bb119
bb119:
  %t379 = load i1, ptr %l204, !tbaa !21
  br i1 %t379, label %bb120, label %bb121
bb120:
  %t380 = load { i64, [2 x i64] }, ptr %l11
  %t382 = extractvalue { i64, [2 x i64] } %t380, 0
  %t383 = icmp eq i64 %t382, 2
  br i1 %t383, label %bb122, label %bb123
bb121:
  store i1 false, ptr %l208, !tbaa !21
  br label %bb125
bb122:
  %t385 = getelementptr { i64, [2 x i64] }, ptr %l11, i32 0, i32 1
  %t386 = getelementptr { i64 }, ptr %t385, i32 0, i32 0
  %t387 = load i64, ptr %t386
  %t388 = load ptr, ptr %l0, !tbaa !29
  %t390 = getelementptr %"compiler/scope:Scoper", ptr %t388, i32 0, i32 42
  %t391 = load i64, ptr %t390, !tbaa !24
  %t394 = icmp eq i64 %t387, %t391
  store i1 %t394, ptr %l211, !tbaa !21
  br label %bb124
bb123:
  store i1 false, ptr %l211, !tbaa !21
  br label %bb124
bb124:
  %t396 = load i1, ptr %l211, !tbaa !21
  store i1 %t396, ptr %l208, !tbaa !21
  br label %bb125
bb125:
  %t397 = load i1, ptr %l208, !tbaa !21
  br i1 %t397, label %bb126, label %bb127
bb126:
  %t398 = getelementptr { i64, [2 x i64] }, ptr %l11, i32 0, i32 1
  %t399 = getelementptr { i64 }, ptr %t398, i32 0, i32 0
  %t400 = load i64, ptr %t399
  store i64 %t400, ptr %l16, !tbaa !24
  %t402 = load ptr, ptr %l0, !tbaa !29
  %t404 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisCtor(ptr %v0, ptr %t402)
  store i1 %t404, ptr %l219
  br label %bb128
bb127:
  store i1 false, ptr %l216, !tbaa !21
  br label %bb129
bb128:
  %t405 = load i1, ptr %l219, !tbaa !21
  %t406 = xor i1 %t405, true
  store i1 %t406, ptr %l216, !tbaa !21
  br label %bb129
bb129:
  %t408 = load i1, ptr %l216, !tbaa !21
  br i1 %t408, label %bb130, label %bb131
bb130:
  %t409 = getelementptr { i64, [2 x i64] }, ptr %l11, i32 0, i32 1
  %t410 = getelementptr { i64 }, ptr %t409, i32 0, i32 0
  %t411 = load i64, ptr %t410
  store i64 %t411, ptr %l17, !tbaa !24
  %t413 = load ptr, ptr %l0, !tbaa !29
  %t414 = load i64, ptr @G_2ecompiler_2fscope_2eWhyResult, !tbaa !24
  %t417 = getelementptr %"compiler/scope:Scoper", ptr %t413, i32 0, i32 125
  store i64 %t414, ptr %t417, !tbaa !24
  br label %bb132
bb131:
  br label %bb132
bb132:
  br label %bb133
bb133:
  %t418 = load ptr, ptr %l0, !tbaa !29
  %t419 = load { i64, [2 x i64] }, ptr %l10
  %t420 = load { i64, [2 x i64] }, ptr %l11
  %t421 = getelementptr %"compiler/scope:rel", ptr %l9, i32 0, i32 2
  %t422 = load i1, ptr %t421, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eoblige(ptr %v0, ptr %t418, { i64, [2 x i64] } %t419, { i64, [2 x i64] } %t420, i1 %t422)
  br label %bb134
bb134:
  %t427 = load ptr, ptr %l0, !tbaa !29
  %t428 = load i64, ptr %l15, !tbaa !24
  %t431 = getelementptr %"compiler/scope:Scoper", ptr %t427, i32 0, i32 125
  store i64 %t428, ptr %t431, !tbaa !24
  %t432 = load ptr, ptr %l0, !tbaa !29
  %t434 = getelementptr %"compiler/scope:Scoper", ptr %t432, i32 0, i32 204
  store i1 false, ptr %t434, !tbaa !21
  %t435 = load ptr, ptr %l0, !tbaa !29
  %t437 = getelementptr %"compiler/scope:Scoper", ptr %t435, i32 0, i32 205
  store i1 false, ptr %t437, !tbaa !21
  call void @__olang_scope_close(ptr %s2)
  br label %bb308
bb135:
  %t438 = load ptr, ptr %l0, !tbaa !29
  %t440 = getelementptr %"compiler/scope:Scoper", ptr %t438, i32 0, i32 28
  %t441 = load i1, ptr %t440, !tbaa !21
  %t443 = xor i1 %t441, true
  br i1 %t443, label %bb136, label %bb137
bb136:
  call void @__olang_scope_close(ptr %s2)
  br label %bb308
bb137:
  br label %bb138
bb138:
  %t445 = load i64, ptr %l3, !tbaa !24
  %t447 = icmp sge i64 %t445, 0
  br i1 %t447, label %bb139, label %bb140
bb139:
  %t449 = load ptr, ptr %l0, !tbaa !29
  %t451 = getelementptr %"compiler/scope:Scoper", ptr %t449, i32 0, i32 6
  %t452 = load i64, ptr %l3, !tbaa !24
  %t455 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t451, i64 %t452)
  store ptr %t455, ptr %l241
  br label %bb141
bb140:
  store i1 false, ptr %l237, !tbaa !21
  br label %bb142
bb141:
  %t456 = load ptr, ptr %l241, !tbaa !29
  %t458 = getelementptr %"compiler/scope:summary", ptr %t456, i32 0, i32 18
  %t459 = load i1, ptr %t458, !tbaa !21
  store i1 %t459, ptr %l237, !tbaa !21
  br label %bb142
bb142:
  %t461 = load i1, ptr %l237, !tbaa !21
  br i1 %t461, label %bb143, label %bb144
bb143:
  call void @__olang_scope_close(ptr %s2)
  br label %bb308
bb144:
  br label %bb145
bb145:
  %t462 = load ptr, ptr %l0, !tbaa !29
  %t464 = getelementptr %"compiler/scope:Scoper", ptr %t462, i32 0, i32 83
  %t465 = load i1, ptr %t464, !tbaa !21
  br i1 %t465, label %bb146, label %bb147
bb146:
  %t467 = load { i64, [2 x i64] }, ptr %l11
  store { i64, [2 x i64] } %t467, ptr %l247
  %t468 = load ptr, ptr %l0, !tbaa !29
  %t470 = getelementptr %"compiler/scope:Scoper", ptr %t468, i32 0, i32 85
  %t471 = load { i64, [2 x i64] }, ptr %t470
  store { i64, [2 x i64] } %t471, ptr %l250
  %t474 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3aTerm(ptr %l247, ptr %l250)
  store i1 %t474, ptr %l252
  br label %bb148
bb147:
  store i1 false, ptr %l246, !tbaa !21
  br label %bb149
bb148:
  %t475 = load i1, ptr %l252, !tbaa !21
  store i1 %t475, ptr %l246, !tbaa !21
  br label %bb149
bb149:
  %t476 = load i1, ptr %l246, !tbaa !21
  br i1 %t476, label %bb150, label %bb151
bb150:
  store %olang.scope zeroinitializer, ptr %s21
  %t477 = load ptr, ptr %l0, !tbaa !29
  store ptr %t477, ptr %l253, !tbaa !29
  %t478 = load ptr, ptr %l0, !tbaa !29
  %t480 = getelementptr %"compiler/scope:Scoper", ptr %t478, i32 0, i32 84
  %t481 = load %"compiler/source:Span", ptr %t480
  store %"compiler/source:Span" %t481, ptr %l255
  %t482 = load ptr, ptr %l0, !tbaa !29
  %t484 = getelementptr %"compiler/scope:Scoper", ptr %t482, i32 0, i32 86
  %t485 = load i1, ptr %t484, !tbaa !21
  br i1 %t485, label %bb152, label %bb153
bb151:
  br label %bb158
bb152:
  %t487 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpawnFuncTooShort(ptr %s21)
  store %"compiler/diagmsg:Msg" %t487, ptr %l259
  br label %bb154
bb153:
  %t488 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpawnArgHoldsShort(ptr %s21)
  store %"compiler/diagmsg:Msg" %t488, ptr %l260
  br label %bb155
bb154:
  %t489 = load %"compiler/diagmsg:Msg", ptr %l259
  store %"compiler/diagmsg:Msg" %t489, ptr %l258
  br label %bb156
bb155:
  %t490 = load %"compiler/diagmsg:Msg", ptr %l260
  store %"compiler/diagmsg:Msg" %t490, ptr %l258
  br label %bb156
bb156:
  %t491 = load ptr, ptr %l253, !tbaa !29
  %t492 = load %"compiler/source:Span", ptr %l255
  %t493 = load %"compiler/diagmsg:Msg", ptr %l258
  %t494 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %s21, ptr %t491, %"compiler/source:Span" %t492, %"compiler/diagmsg:Msg" %t493)
  store i64 %t494, ptr %l261
  br label %bb157
bb157:
  call void @__olang_scope_close(ptr %s21)
  call void @__olang_scope_close(ptr %s2)
  br label %bb308
bb158:
  %t495 = load ptr, ptr %l0, !tbaa !29
  %t497 = getelementptr %"compiler/scope:Scoper", ptr %t495, i32 0, i32 133
  %t498 = load i1, ptr %t497, !tbaa !21
  br i1 %t498, label %bb159, label %bb160
bb159:
  %t500 = getelementptr %"compiler/scope:rel", ptr %l9, i32 0, i32 1
  %t501 = load { i64, [2 x i64] }, ptr %t500
  %t503 = extractvalue { i64, [2 x i64] } %t501, 0
  %t504 = icmp eq i64 %t503, 2
  br i1 %t504, label %bb161, label %bb162
bb160:
  store i1 false, ptr %l264, !tbaa !21
  br label %bb166
bb161:
  %t506 = getelementptr %"compiler/scope:rel", ptr %l9, i32 0, i32 1
  %t507 = getelementptr { i64, [2 x i64] }, ptr %t506, i32 0, i32 1
  %t508 = getelementptr { i64 }, ptr %t507, i32 0, i32 0
  %t509 = load i64, ptr %t508
  store i64 %t509, ptr %l268, !tbaa !24
  %t510 = load ptr, ptr %l0, !tbaa !29
  store ptr %t510, ptr %l269, !tbaa !29
  %t511 = load ptr, ptr %l0, !tbaa !29
  %t512 = load ptr, ptr %l5, !tbaa !29
  %t515 = call i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeType(ptr %v0, ptr %v3, ptr %t511, ptr %t512)
  store i32 %t515, ptr %l272
  br label %bb163
bb162:
  store i1 false, ptr %l267, !tbaa !21
  br label %bb165
bb163:
  %t516 = load ptr, ptr %l269, !tbaa !29
  %t517 = load i32, ptr %l272, !tbaa !23
  %t518 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eresultVarOf(ptr %v0, ptr %t516, i32 %t517)
  store i64 %t518, ptr %l273
  br label %bb164
bb164:
  %t519 = load i64, ptr %l268, !tbaa !24
  %t520 = load i64, ptr %l273, !tbaa !24
  %t521 = icmp eq i64 %t519, %t520
  store i1 %t521, ptr %l267, !tbaa !21
  br label %bb165
bb165:
  %t523 = load i1, ptr %l267, !tbaa !21
  store i1 %t523, ptr %l264, !tbaa !21
  br label %bb166
bb166:
  %t524 = load i1, ptr %l264, !tbaa !21
  br i1 %t524, label %bb167, label %bb168
bb167:
  %t525 = load ptr, ptr %l0, !tbaa !29
  %t526 = load { i64, [2 x i64] }, ptr %l10
  %t527 = load { i64, [2 x i64] }, ptr %l11
  %t531 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eownIntoResult(ptr %v0, ptr %t525, { i64, [2 x i64] } %t526, { i64, [2 x i64] } %t527)
  store i1 %t531, ptr %l279
  br label %bb169
bb168:
  store i1 false, ptr %l275, !tbaa !21
  br label %bb170
bb169:
  %t532 = load i1, ptr %l279, !tbaa !21
  store i1 %t532, ptr %l275, !tbaa !21
  br label %bb170
bb170:
  %t533 = load i1, ptr %l275, !tbaa !21
  br i1 %t533, label %bb171, label %bb172
bb171:
  store %olang.scope zeroinitializer, ptr %s22
  %t534 = load ptr, ptr %l0, !tbaa !29
  store ptr %t534, ptr %l280, !tbaa !29
  %t535 = load ptr, ptr %l0, !tbaa !29
  %t536 = load %"compiler/source:Span", ptr %l1
  %t539 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enameSpan(ptr %v0, ptr %t535, %"compiler/source:Span" %t536)
  store %"compiler/source:Span" %t539, ptr %l283
  br label %bb173
bb172:
  br label %bb183
bb173:
  %t540 = load ptr, ptr %l0, !tbaa !29
  %t542 = getelementptr %"compiler/scope:Scoper", ptr %t540, i32 0, i32 26
  %t543 = load ptr, ptr %t542, !tbaa !29
  %t545 = icmp eq ptr %t543, null
  br i1 %t545, label %bb174, label %bb175
bb174:
  call void @__olang_check_failed(ptr @olang_loc_42d8e1cf6a002003_df42b906e988f9f7)
  unreachable
bb175:
  br label %bb176
bb176:
  %t547 = load ptr, ptr %l0, !tbaa !29
  %t549 = getelementptr %"compiler/scope:Scoper", ptr %t547, i32 0, i32 26
  %t550 = load ptr, ptr %t549, !tbaa !29
  %t553 = getelementptr %"compiler/typed:Body", ptr %t550, i32 0, i32 14
  %t554 = load i1, ptr %t553, !tbaa !21
  br i1 %t554, label %bb177, label %bb178
bb177:
  %t556 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eYieldOwnStorage(ptr %s22)
  store %"compiler/diagmsg:Msg" %t556, ptr %l292
  br label %bb179
bb178:
  %t557 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReturnOwnStorage(ptr %s22)
  store %"compiler/diagmsg:Msg" %t557, ptr %l293
  br label %bb180
bb179:
  %t558 = load %"compiler/diagmsg:Msg", ptr %l292
  store %"compiler/diagmsg:Msg" %t558, ptr %l291
  br label %bb181
bb180:
  %t559 = load %"compiler/diagmsg:Msg", ptr %l293
  store %"compiler/diagmsg:Msg" %t559, ptr %l291
  br label %bb181
bb181:
  %t560 = load ptr, ptr %l280, !tbaa !29
  %t561 = load %"compiler/source:Span", ptr %l283
  %t562 = load %"compiler/diagmsg:Msg", ptr %l291
  %t563 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %s22, ptr %t560, %"compiler/source:Span" %t561, %"compiler/diagmsg:Msg" %t562)
  store i64 %t563, ptr %l294
  br label %bb182
bb182:
  call void @__olang_scope_close(ptr %s22)
  call void @__olang_scope_close(ptr %s2)
  br label %bb308
bb183:
  %t564 = getelementptr %"compiler/scope:rel", ptr %l9, i32 0, i32 4
  %t565 = load i64, ptr %t564, !tbaa !24
  %t567 = icmp ne i64 %t565, 0
  br i1 %t567, label %bb184, label %bb185
bb184:
  store %olang.scope zeroinitializer, ptr %s23
  %t571 = xor i1 %a6, true
  br i1 %t571, label %bb186, label %bb187
bb185:
  br label %bb228
bb186:
  call void @__olang_scope_close(ptr %s23)
  call void @__olang_scope_close(ptr %s2)
  br label %bb308
bb187:
  br label %bb188
bb188:
  %t573 = load ptr, ptr %l0, !tbaa !29
  %t574 = load ptr, ptr %l5, !tbaa !29
  %t575 = getelementptr %"compiler/scope:rel", ptr %l9, i32 0, i32 0
  %t576 = load { i64, [2 x i64] }, ptr %t575
  %t580 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargOfVar(ptr %v0, ptr %v3, ptr %t573, ptr %t574, { i64, [2 x i64] } %t576)
  store i64 %t580, ptr %l302
  br label %bb189
bb189:
  %t581 = load i64, ptr %l302, !tbaa !24
  store i64 %t581, ptr %l18, !tbaa !24
  %t582 = load i64, ptr %l18, !tbaa !24
  %t584 = icmp slt i64 %t582, 0
  br i1 %t584, label %bb190, label %bb191
bb190:
  %t586 = load ptr, ptr %l0, !tbaa !29
  %t587 = load ptr, ptr %l5, !tbaa !29
  %t588 = getelementptr %"compiler/scope:rel", ptr %l9, i32 0, i32 1
  %t589 = load { i64, [2 x i64] }, ptr %t588
  %t593 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargOfVar(ptr %v0, ptr %v3, ptr %t586, ptr %t587, { i64, [2 x i64] } %t589)
  store i64 %t593, ptr %l308
  br label %bb192
bb191:
  br label %bb193
bb192:
  %t594 = load i64, ptr %l308, !tbaa !24
  store i64 %t594, ptr %l18, !tbaa !24
  br label %bb193
bb193:
  %t595 = load i64, ptr %l18, !tbaa !24
  %t597 = icmp sge i64 %t595, 0
  br i1 %t597, label %bb194, label %bb195
bb194:
  %t599 = load ptr, ptr %l0, !tbaa !29
  %t600 = load ptr, ptr %l5, !tbaa !29
  %t602 = getelementptr %"compiler/typed:Call", ptr %t600, i32 0, i32 1
  %t603 = load { i64, ptr }, ptr %t602, !tbaa !27
  store { i64, ptr } %t603, ptr %l314, !tbaa !27
  %t604 = load i64, ptr %l18, !tbaa !24
  %t606 = getelementptr { i64, ptr }, ptr %l314, i32 0, i32 1
  %t607 = load ptr, ptr %t606, !tbaa !27
  %t608 = getelementptr ptr, ptr %t607, i64 %t604
  %t609 = load ptr, ptr %t608, !tbaa !39
  %t612 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargAt(ptr %v0, ptr %v3, ptr %t599, ptr %t609)
  store %"compiler/source:Span" %t612, ptr %l317
  br label %bb196
bb195:
  %t613 = load ptr, ptr %l0, !tbaa !29
  %t614 = load %"compiler/source:Span", ptr %l1
  %t617 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enameSpan(ptr %v0, ptr %t613, %"compiler/source:Span" %t614)
  store %"compiler/source:Span" %t617, ptr %l320
  br label %bb197
bb196:
  %t618 = load %"compiler/source:Span", ptr %l317
  store %"compiler/source:Span" %t618, ptr %l311
  br label %bb198
bb197:
  %t619 = load %"compiler/source:Span", ptr %l320
  store %"compiler/source:Span" %t619, ptr %l311
  br label %bb198
bb198:
  %t620 = load %"compiler/source:Span", ptr %l311
  store %"compiler/source:Span" %t620, ptr %l19
  %t621 = getelementptr %"compiler/scope:rel", ptr %l9, i32 0, i32 4
  %t622 = load i64, ptr %t621, !tbaa !24
  %t623 = load i64, ptr @G_2ecompiler_2fscope_2eWhyResult, !tbaa !24
  %t626 = icmp eq i64 %t622, %t623
  br i1 %t626, label %bb199, label %bb200
bb199:
  %t628 = load ptr, ptr %l0, !tbaa !29
  %t630 = getelementptr %"compiler/scope:Scoper", ptr %t628, i32 0, i32 145
  %t631 = load i64, ptr %t630, !tbaa !24
  %t632 = load ptr, ptr %l5, !tbaa !29
  %t634 = getelementptr %"compiler/typed:Call", ptr %t632, i32 0, i32 2
  %t635 = load i32, ptr %t634, !tbaa !23
  %t637 = sext i32 %t635 to i64
  %t640 = icmp eq i64 %t631, %t637
  store i1 %t640, ptr %l324, !tbaa !21
  br label %bb201
bb200:
  store i1 false, ptr %l324, !tbaa !21
  br label %bb201
bb201:
  %t642 = load i1, ptr %l324, !tbaa !21
  br i1 %t642, label %bb202, label %bb203
bb202:
  %t643 = load ptr, ptr %l0, !tbaa !29
  %t645 = getelementptr %"compiler/scope:Scoper", ptr %t643, i32 0, i32 146
  %t646 = load %"compiler/source:Span", ptr %t645
  store %"compiler/source:Span" %t646, ptr %l19
  br label %bb204
bb203:
  br label %bb204
bb204:
  %t648 = load i64, ptr %l18, !tbaa !24
  %t650 = icmp sge i64 %t648, 0
  br i1 %t650, label %bb205, label %bb206
bb205:
  %t652 = load ptr, ptr %l0, !tbaa !29
  %t653 = load ptr, ptr %l5, !tbaa !29
  %t655 = getelementptr %"compiler/typed:Call", ptr %t653, i32 0, i32 1
  %t656 = load { i64, ptr }, ptr %t655, !tbaa !27
  store { i64, ptr } %t656, ptr %l338, !tbaa !27
  %t657 = load i64, ptr %l18, !tbaa !24
  %t659 = getelementptr { i64, ptr }, ptr %l338, i32 0, i32 1
  %t660 = load ptr, ptr %t659, !tbaa !27
  %t661 = getelementptr ptr, ptr %t660, i64 %t657
  %t662 = load ptr, ptr %t661, !tbaa !39
  %t665 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecopyHint(ptr %v0, ptr %v3, ptr %s23, ptr %t652, ptr %t662)
  store { i64, ptr } %t665, ptr %l341
  br label %bb207
bb206:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d10, i32 0, i32 1) }, ptr %l335, !tbaa !27
  br label %bb208
bb207:
  %t666 = load { i64, ptr }, ptr %l341, !tbaa !27
  %t667 = extractvalue { i64, ptr } %t666, 0
  %t668 = extractvalue { i64, ptr } %t666, 1
  %t669 = mul i64 %t667, 1
  %t670 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t669)
  call void @llvm.memcpy.p0.p0.i64(ptr %t670, ptr %t668, i64 %t669, i1 false)
  %t671 = insertvalue { i64, ptr } undef, i64 %t667, 0
  %t672 = insertvalue { i64, ptr } %t671, ptr %t670, 1
  store { i64, ptr } %t672, ptr %l335, !tbaa !27
  br label %bb208
bb208:
  %t674 = load { i64, ptr }, ptr %l335, !tbaa !27
  store { i64, ptr } %t674, ptr %l20, !tbaa !27
  %t675 = load ptr, ptr %l0, !tbaa !29
  store ptr %t675, ptr %l343, !tbaa !29
  %t676 = load %"compiler/source:Span", ptr %l19
  store %"compiler/source:Span" %t676, ptr %l344
  %t677 = getelementptr %"compiler/scope:rel", ptr %l9, i32 0, i32 4
  %t678 = load i64, ptr %t677, !tbaa !24
  %t679 = load i64, ptr @G_2ecompiler_2fscope_2eWhyField, !tbaa !24
  %t682 = icmp eq i64 %t678, %t679
  br i1 %t682, label %bb209, label %bb210
bb209:
  %t684 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t686 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eInstanceOutlivesReferent(ptr %s23, ptr %s23, { i64, ptr } %t684)
  store %"compiler/diagmsg:Msg" %t686, ptr %l350
  br label %bb211
bb210:
  %t687 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t689 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eInstanceOutlivesArg(ptr %s23, ptr %s23, { i64, ptr } %t687)
  store %"compiler/diagmsg:Msg" %t689, ptr %l352
  br label %bb212
bb211:
  %t690 = load %"compiler/diagmsg:Msg", ptr %l350
  store %"compiler/diagmsg:Msg" %t690, ptr %l348
  br label %bb213
bb212:
  %t691 = load %"compiler/diagmsg:Msg", ptr %l352
  store %"compiler/diagmsg:Msg" %t691, ptr %l348
  br label %bb213
bb213:
  %t692 = load ptr, ptr %l343, !tbaa !29
  %t693 = load %"compiler/source:Span", ptr %l344
  %t694 = load %"compiler/diagmsg:Msg", ptr %l348
  %t695 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %s23, ptr %t692, %"compiler/source:Span" %t693, %"compiler/diagmsg:Msg" %t694)
  store i64 %t695, ptr %l353
  br label %bb214
bb214:
  %t696 = load i64, ptr %l353, !tbaa !24
  store i64 %t696, ptr %l21, !tbaa !24
  %t697 = load ptr, ptr %l0, !tbaa !29
  %t698 = load { i64, [2 x i64] }, ptr %l11
  %t701 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eparamOfTerm(ptr %v0, ptr %t697, { i64, [2 x i64] } %t698)
  store i64 %t701, ptr %l356
  br label %bb215
bb215:
  %t702 = load i64, ptr %l356, !tbaa !24
  store i64 %t702, ptr %l22, !tbaa !24
  %t703 = load i64, ptr %l18, !tbaa !24
  %t705 = icmp sge i64 %t703, 0
  br i1 %t705, label %bb216, label %bb217
bb216:
  %t707 = load i64, ptr %l22, !tbaa !24
  %t709 = icmp sge i64 %t707, 0
  store i1 %t709, ptr %l359, !tbaa !21
  br label %bb218
bb217:
  store i1 false, ptr %l359, !tbaa !21
  br label %bb218
bb218:
  %t711 = load i1, ptr %l359, !tbaa !21
  br i1 %t711, label %bb219, label %bb220
bb219:
  %t712 = load ptr, ptr %l0, !tbaa !29
  store ptr %t712, ptr %l362, !tbaa !29
  %t713 = load i64, ptr %l21, !tbaa !24
  store i64 %t713, ptr %l363, !tbaa !24
  %t714 = load ptr, ptr %l5, !tbaa !29
  %t716 = getelementptr %"compiler/typed:Call", ptr %t714, i32 0, i32 1
  %t717 = load { i64, ptr }, ptr %t716, !tbaa !27
  store { i64, ptr } %t717, ptr %l365, !tbaa !27
  %t718 = load i64, ptr %l18, !tbaa !24
  %t720 = getelementptr { i64, ptr }, ptr %l365, i32 0, i32 1
  %t721 = load ptr, ptr %t720, !tbaa !27
  %t722 = getelementptr ptr, ptr %t721, i64 %t718
  %t723 = load ptr, ptr %t722, !tbaa !39
  store ptr %t723, ptr %l368, !tbaa !29
  %t725 = load i64, ptr %l22, !tbaa !24
  store i64 %t725, ptr %l369, !tbaa !24
  %t726 = load ptr, ptr %l0, !tbaa !29
  %t728 = getelementptr %"compiler/scope:Scoper", ptr %t726, i32 0, i32 0
  %t729 = load ptr, ptr %t728, !tbaa !29
  %t731 = getelementptr %"compiler/generic:Program", ptr %t729, i32 0, i32 0
  %t732 = load ptr, ptr %t731, !tbaa !29
  %t734 = getelementptr %"compiler/load:Loader", ptr %t732, i32 0, i32 3
  %t735 = load ptr, ptr %t734, !tbaa !29
  store ptr %t735, ptr %l373, !tbaa !29
  %t736 = load ptr, ptr %l0, !tbaa !29
  %t738 = getelementptr %"compiler/scope:Scoper", ptr %t736, i32 0, i32 26
  %t739 = load ptr, ptr %t738, !tbaa !29
  %t741 = icmp eq ptr %t739, null
  br i1 %t741, label %bb221, label %bb222
bb220:
  br label %bb227
bb221:
  call void @__olang_check_failed(ptr @olang_loc_3312418540e5d074_1fc7a45f5317a9d8)
  unreachable
bb222:
  br label %bb223
bb223:
  %t743 = load ptr, ptr %l0, !tbaa !29
  %t745 = getelementptr %"compiler/scope:Scoper", ptr %t743, i32 0, i32 26
  %t746 = load ptr, ptr %t745, !tbaa !29
  %t749 = getelementptr %"compiler/typed:Body", ptr %t746, i32 0, i32 7
  %t750 = load i64, ptr %l22, !tbaa !24
  %t753 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t749, i64 %t750)
  store %"compiler/typed:Local" %t753, ptr %l382
  br label %bb224
bb224:
  %t754 = getelementptr %"compiler/typed:Local", ptr %l382, i32 0, i32 0
  %t755 = load i32, ptr %t754, !tbaa !23
  %t756 = load ptr, ptr %l373, !tbaa !29
  %t758 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t756, i32 %t755)
  store { i64, ptr } %t758, ptr %l384
  br label %bb225
bb225:
  %t759 = load ptr, ptr %l362, !tbaa !29
  %t760 = load i64, ptr %l363, !tbaa !24
  %t761 = load ptr, ptr %l368, !tbaa !29
  %t762 = load i64, ptr %l369, !tbaa !24
  %t763 = load { i64, ptr }, ptr %l384, !tbaa !27
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoteMadeNamed(ptr %v0, ptr %v3, ptr %v0, ptr %t759, i64 %t760, ptr %t761, i64 %t762, { i64, ptr } %t763, i64 0)
  br label %bb226
bb226:
  br label %bb227
bb227:
  call void @__olang_scope_close(ptr %s23)
  call void @__olang_scope_close(ptr %s2)
  br label %bb308
bb228:
  %t764 = load ptr, ptr %l0, !tbaa !29
  %t765 = load ptr, ptr %l5, !tbaa !29
  %t766 = getelementptr %"compiler/scope:rel", ptr %l9, i32 0, i32 0
  %t767 = load { i64, [2 x i64] }, ptr %t766
  %t771 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargOfVar(ptr %v0, ptr %v3, ptr %t764, ptr %t765, { i64, [2 x i64] } %t767)
  store i64 %t771, ptr %l388
  br label %bb229
bb229:
  %t772 = load i64, ptr %l388, !tbaa !24
  store i64 %t772, ptr %l23, !tbaa !24
  %t773 = load i64, ptr %l23, !tbaa !24
  %t775 = icmp sge i64 %t773, 0
  br i1 %t775, label %bb230, label %bb231
bb230:
  %t777 = getelementptr %"compiler/scope:rel", ptr %l9, i32 0, i32 5
  %t778 = load i1, ptr %t777, !tbaa !21
  store i1 %t778, ptr %l391, !tbaa !21
  br label %bb232
bb231:
  store i1 false, ptr %l391, !tbaa !21
  br label %bb232
bb232:
  %t780 = load i1, ptr %l391, !tbaa !21
  br i1 %t780, label %bb233, label %bb234
bb233:
  %t781 = load ptr, ptr %l0, !tbaa !29
  %t782 = load ptr, ptr %l5, !tbaa !29
  %t784 = getelementptr %"compiler/typed:Call", ptr %t782, i32 0, i32 1
  %t785 = load { i64, ptr }, ptr %t784, !tbaa !27
  store { i64, ptr } %t785, ptr %l395, !tbaa !27
  %t786 = load i64, ptr %l23, !tbaa !24
  %t788 = getelementptr { i64, ptr }, ptr %l395, i32 0, i32 1
  %t789 = load ptr, ptr %t788, !tbaa !27
  %t790 = getelementptr ptr, ptr %t789, i64 %t786
  %t791 = load ptr, ptr %t790, !tbaa !39
  %t794 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewholeRoot(ptr %v0, ptr %v3, ptr %t781, ptr %t791)
  store i64 %t794, ptr %l398
  br label %bb235
bb234:
  br label %bb246
bb235:
  %t795 = load i64, ptr %l398, !tbaa !24
  store i64 %t795, ptr %l24, !tbaa !24
  %t796 = load i64, ptr %l24, !tbaa !24
  %t798 = icmp sge i64 %t796, 0
  br i1 %t798, label %bb236, label %bb237
bb236:
  %t800 = load ptr, ptr %l0, !tbaa !29
  %t801 = load i64, ptr %l24, !tbaa !24
  %t804 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisParam(ptr %v0, ptr %t800, i64 %t801)
  store i1 %t804, ptr %l404
  br label %bb238
bb237:
  store i1 false, ptr %l401, !tbaa !21
  br label %bb239
bb238:
  %t805 = load i1, ptr %l404, !tbaa !21
  %t806 = xor i1 %t805, true
  store i1 %t806, ptr %l401, !tbaa !21
  br label %bb239
bb239:
  %t808 = load i1, ptr %l401, !tbaa !21
  br i1 %t808, label %bb240, label %bb241
bb240:
  store %olang.scope zeroinitializer, ptr %s29
  %t809 = load ptr, ptr %l0, !tbaa !29
  store ptr %t809, ptr %l406, !tbaa !29
  %t810 = load ptr, ptr %l0, !tbaa !29
  %t811 = load %"compiler/source:Span", ptr %l1
  %t814 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enameSpan(ptr %v0, ptr %t810, %"compiler/source:Span" %t811)
  store %"compiler/source:Span" %t814, ptr %l409
  br label %bb242
bb241:
  br label %bb245
bb242:
  %t815 = load ptr, ptr %l0, !tbaa !29
  %t816 = load i64, ptr %l24, !tbaa !24
  %t819 = call %"compiler/diagmsg:Msg" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eviewKeptMsg(ptr %v0, ptr %s29, ptr %t815, i64 %t816, i1 false)
  store %"compiler/diagmsg:Msg" %t819, ptr %l412
  br label %bb243
bb243:
  %t820 = load ptr, ptr %l406, !tbaa !29
  %t821 = load %"compiler/source:Span", ptr %l409
  %t822 = load %"compiler/diagmsg:Msg", ptr %l412
  %t823 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %s29, ptr %t820, %"compiler/source:Span" %t821, %"compiler/diagmsg:Msg" %t822)
  store i64 %t823, ptr %l413
  br label %bb244
bb244:
  call void @__olang_scope_close(ptr %s29)
  call void @__olang_scope_close(ptr %s2)
  br label %bb308
bb245:
  br label %bb246
bb246:
  %t824 = load i64, ptr %l23, !tbaa !24
  %t826 = icmp sge i64 %t824, 0
  br i1 %t826, label %bb247, label %bb248
bb247:
  %t828 = load ptr, ptr %l0, !tbaa !29
  store ptr %t828, ptr %l417, !tbaa !29
  %t829 = load ptr, ptr %l5, !tbaa !29
  %t831 = getelementptr %"compiler/typed:Call", ptr %t829, i32 0, i32 1
  %t832 = load { i64, ptr }, ptr %t831, !tbaa !27
  store { i64, ptr } %t832, ptr %l419, !tbaa !27
  %t833 = load i64, ptr %l23, !tbaa !24
  %t835 = getelementptr { i64, ptr }, ptr %l419, i32 0, i32 1
  %t836 = load ptr, ptr %t835, !tbaa !27
  %t837 = getelementptr ptr, ptr %t836, i64 %t833
  %t838 = load ptr, ptr %t837, !tbaa !39
  store ptr %t838, ptr %l421, !tbaa !29
  %t839 = load ptr, ptr %l0, !tbaa !29
  %t840 = load %"compiler/source:Span", ptr %l1
  %t843 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enameSpan(ptr %v0, ptr %t839, %"compiler/source:Span" %t840)
  store %"compiler/source:Span" %t843, ptr %l424
  br label %bb249
bb248:
  store i1 false, ptr %l416, !tbaa !21
  br label %bb251
bb249:
  %t844 = load ptr, ptr %l417, !tbaa !29
  %t845 = load ptr, ptr %l421, !tbaa !29
  %t846 = load %"compiler/source:Span", ptr %l424
  %t847 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eviewKept(ptr %v0, ptr %v3, ptr %t844, ptr %t845, %"compiler/source:Span" %t846, i1 false)
  store i1 %t847, ptr %l425
  br label %bb250
bb250:
  %t848 = load i1, ptr %l425, !tbaa !21
  store i1 %t848, ptr %l416, !tbaa !21
  br label %bb251
bb251:
  %t849 = load i1, ptr %l416, !tbaa !21
  br i1 %t849, label %bb252, label %bb253
bb252:
  call void @__olang_scope_close(ptr %s2)
  br label %bb308
bb253:
  br label %bb254
bb254:
  %t850 = load i64, ptr %l23, !tbaa !24
  %t852 = icmp sge i64 %t850, 0
  br i1 %t852, label %bb255, label %bb256
bb255:
  %t854 = load ptr, ptr %l0, !tbaa !29
  store ptr %t854, ptr %l429, !tbaa !29
  %t855 = load ptr, ptr %l5, !tbaa !29
  %t857 = getelementptr %"compiler/typed:Call", ptr %t855, i32 0, i32 1
  %t858 = load { i64, ptr }, ptr %t857, !tbaa !27
  store { i64, ptr } %t858, ptr %l431, !tbaa !27
  %t859 = load i64, ptr %l23, !tbaa !24
  %t861 = getelementptr { i64, ptr }, ptr %l431, i32 0, i32 1
  %t862 = load ptr, ptr %t861, !tbaa !27
  %t863 = getelementptr ptr, ptr %t862, i64 %t859
  %t864 = load ptr, ptr %t863, !tbaa !39
  store ptr %t864, ptr %l433, !tbaa !29
  %t865 = load ptr, ptr %l0, !tbaa !29
  %t866 = load %"compiler/source:Span", ptr %l1
  %t869 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enameSpan(ptr %v0, ptr %t865, %"compiler/source:Span" %t866)
  store %"compiler/source:Span" %t869, ptr %l436
  br label %bb257
bb256:
  store i1 false, ptr %l428, !tbaa !21
  br label %bb259
bb257:
  %t870 = load ptr, ptr %l429, !tbaa !29
  %t871 = load ptr, ptr %l433, !tbaa !29
  %t872 = load %"compiler/source:Span", ptr %l436
  %t873 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartKept(ptr %v0, ptr %v3, ptr %t870, ptr %t871, %"compiler/source:Span" %t872)
  store i1 %t873, ptr %l437
  br label %bb258
bb258:
  %t874 = load i1, ptr %l437, !tbaa !21
  store i1 %t874, ptr %l428, !tbaa !21
  br label %bb259
bb259:
  %t875 = load i1, ptr %l428, !tbaa !21
  br i1 %t875, label %bb260, label %bb261
bb260:
  call void @__olang_scope_close(ptr %s2)
  br label %bb308
bb261:
  br label %bb262
bb262:
  %t876 = getelementptr %"compiler/scope:rel", ptr %l9, i32 0, i32 2
  %t877 = load i1, ptr %t876, !tbaa !21
  br i1 %t877, label %bb263, label %bb264
bb263:
  %t879 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReferenceNarrowed(ptr %s2)
  store %"compiler/diagmsg:Msg" %t879, ptr %l440
  br label %bb265
bb264:
  %t880 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eScopeObligationUnmet(ptr %s2)
  store %"compiler/diagmsg:Msg" %t880, ptr %l441
  br label %bb266
bb265:
  %t881 = load %"compiler/diagmsg:Msg", ptr %l440
  store %"compiler/diagmsg:Msg" %t881, ptr %l439
  br label %bb267
bb266:
  %t882 = load %"compiler/diagmsg:Msg", ptr %l441
  store %"compiler/diagmsg:Msg" %t882, ptr %l439
  br label %bb267
bb267:
  %t883 = load %"compiler/diagmsg:Msg", ptr %l439
  store %"compiler/diagmsg:Msg" %t883, ptr %l25
  %t884 = load ptr, ptr %l0, !tbaa !29
  %t885 = getelementptr %"compiler/scope:rel", ptr %l9, i32 0, i32 1
  %t886 = load { i64, [2 x i64] }, ptr %t885
  %t887 = load ptr, ptr %l5, !tbaa !29
  %t891 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ederivedThroughElem(ptr %v0, ptr %v3, ptr %t884, { i64, [2 x i64] } %t886, ptr %t887)
  store i1 %t891, ptr %l445
  br label %bb268
bb268:
  %t892 = load i1, ptr %l445, !tbaa !21
  br i1 %t892, label %bb269, label %bb270
bb269:
  store i1 true, ptr %l446, !tbaa !21
  br label %bb272
bb270:
  %t893 = load ptr, ptr %l0, !tbaa !29
  %t894 = getelementptr %"compiler/scope:rel", ptr %l9, i32 0, i32 0
  %t895 = load { i64, [2 x i64] }, ptr %t894
  %t896 = load ptr, ptr %l5, !tbaa !29
  %t900 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ederivedThroughElem(ptr %v0, ptr %v3, ptr %t893, { i64, [2 x i64] } %t895, ptr %t896)
  store i1 %t900, ptr %l450
  br label %bb271
bb271:
  %t901 = load i1, ptr %l450, !tbaa !21
  store i1 %t901, ptr %l446, !tbaa !21
  br label %bb272
bb272:
  %t902 = load i1, ptr %l446, !tbaa !21
  br i1 %t902, label %bb273, label %bb274
bb273:
  %t903 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFieldBindingUnknown(ptr %s2)
  store %"compiler/diagmsg:Msg" %t903, ptr %l451
  br label %bb275
bb274:
  br label %bb280
bb275:
  %t904 = load %"compiler/diagmsg:Msg", ptr %l25
  store %"compiler/diagmsg:Msg" %t904, ptr %l452
  %t905 = load %"compiler/diagmsg:Msg", ptr %l451
  store %"compiler/diagmsg:Msg" %t905, ptr %l25
  %t906 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e1
  br i1 %t906, label %bb276, label %bb277
bb276:
  %t908 = getelementptr %"compiler/diagmsg:Msg", ptr %l452, i32 0, i32 1
  %t909 = load { i64, ptr }, ptr %t908
  %t910 = extractvalue { i64, ptr } %t909, 1
  call void @__olang_region_release(ptr %t910)
  store { i64, ptr } zeroinitializer, ptr %t908
  br label %bb277
bb277:
  %t911 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t911, label %bb278, label %bb279
bb278:
  %t913 = getelementptr %"compiler/diagmsg:Msg", ptr %l452, i32 0, i32 2
  %t914 = load { i64, ptr }, ptr %t913
  %t915 = extractvalue { i64, ptr } %t914, 1
  call void @__olang_region_release(ptr %t915)
  store { i64, ptr } zeroinitializer, ptr %t913
  br label %bb279
bb279:
  br label %bb280
bb280:
  %t916 = load ptr, ptr %l0, !tbaa !29
  store ptr %t916, ptr %l455, !tbaa !29
  %t917 = load ptr, ptr %l0, !tbaa !29
  %t918 = load %"compiler/source:Span", ptr %l1
  %t921 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enameSpan(ptr %v0, ptr %t917, %"compiler/source:Span" %t918)
  store %"compiler/source:Span" %t921, ptr %l458
  br label %bb281
bb281:
  %t922 = load %"compiler/diagmsg:Msg", ptr %l25
  %t923 = load ptr, ptr %l455, !tbaa !29
  %t924 = load %"compiler/source:Span", ptr %l458
  %t926 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %s2, ptr %t923, %"compiler/source:Span" %t924, %"compiler/diagmsg:Msg" %t922)
  store i64 %t926, ptr %l460
  br label %bb282
bb282:
  %t927 = load i64, ptr %l460, !tbaa !24
  store i64 %t927, ptr %l26, !tbaa !24
  %t928 = load i64, ptr %l3, !tbaa !24
  %t930 = icmp sge i64 %t928, 0
  br i1 %t930, label %bb283, label %bb284
bb283:
  store %olang.scope zeroinitializer, ptr %s33
  %t932 = load ptr, ptr %l0, !tbaa !29
  %t934 = getelementptr %"compiler/scope:Scoper", ptr %t932, i32 0, i32 1
  %t935 = load i64, ptr %l3, !tbaa !24
  %t938 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t934, i64 %t935)
  store ptr %t938, ptr %l466
  br label %bb285
bb284:
  br label %bb289
bb285:
  %t939 = load ptr, ptr %l466, !tbaa !29
  store ptr %t939, ptr %l27, !tbaa !29
  %t940 = load ptr, ptr %l0, !tbaa !29
  store ptr %t940, ptr %l467, !tbaa !29
  %t941 = load i64, ptr %l26, !tbaa !24
  store i64 %t941, ptr %l468, !tbaa !24
  %t942 = load ptr, ptr %l27, !tbaa !29
  %t944 = getelementptr %"compiler/typed:Body", ptr %t942, i32 0, i32 3
  %t945 = load i64, ptr %t944, !tbaa !24
  store i64 %t945, ptr %l470, !tbaa !24
  %t946 = load ptr, ptr %l0, !tbaa !29
  %t947 = load ptr, ptr %l27, !tbaa !29
  %t949 = getelementptr %"compiler/typed:Body", ptr %t947, i32 0, i32 3
  %t950 = load i64, ptr %t949, !tbaa !24
  %t951 = getelementptr %"compiler/scope:rel", ptr %l9, i32 0, i32 3
  %t952 = load %"compiler/source:Span", ptr %t951
  %t956 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efirstToken(ptr %v0, ptr %t946, i64 %t950, %"compiler/source:Span" %t952)
  store %"compiler/source:Span" %t956, ptr %l475
  br label %bb286
bb286:
  %t957 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteObligationOrigin(ptr %s33)
  store %"compiler/diagmsg:Msg" %t957, ptr %l476
  br label %bb287
bb287:
  %t958 = load ptr, ptr %l467, !tbaa !29
  %t959 = load i64, ptr %l468, !tbaa !24
  %t960 = load i64, ptr %l470, !tbaa !24
  %t961 = load %"compiler/source:Span", ptr %l475
  %t962 = load %"compiler/diagmsg:Msg", ptr %l476
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enote(ptr %v0, ptr %s33, ptr %t958, i64 %t959, i64 %t960, %"compiler/source:Span" %t961, %"compiler/diagmsg:Msg" %t962)
  br label %bb288
bb288:
  call void @__olang_scope_close(ptr %s33)
  br label %bb289
bb289:
  %t963 = load ptr, ptr %l0, !tbaa !29
  %t964 = load ptr, ptr %l5, !tbaa !29
  %t965 = getelementptr %"compiler/scope:rel", ptr %l9, i32 0, i32 0
  %t966 = load { i64, [2 x i64] }, ptr %t965
  %t970 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargOfVar(ptr %v0, ptr %v3, ptr %t963, ptr %t964, { i64, [2 x i64] } %t966)
  store i64 %t970, ptr %l480
  br label %bb290
bb290:
  %t971 = load i64, ptr %l480, !tbaa !24
  store i64 %t971, ptr %l28, !tbaa !24
  %t972 = load ptr, ptr %l0, !tbaa !29
  %t973 = load ptr, ptr %l5, !tbaa !29
  %t974 = getelementptr %"compiler/scope:rel", ptr %l9, i32 0, i32 1
  %t975 = load { i64, [2 x i64] }, ptr %t974
  %t979 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargOfVar(ptr %v0, ptr %v3, ptr %t972, ptr %t973, { i64, [2 x i64] } %t975)
  store i64 %t979, ptr %l484
  br label %bb291
bb291:
  %t980 = load i64, ptr %l484, !tbaa !24
  store i64 %t980, ptr %l29, !tbaa !24
  %t981 = load i64, ptr %l28, !tbaa !24
  %t983 = icmp sge i64 %t981, 0
  br i1 %t983, label %bb292, label %bb293
bb292:
  %t985 = load ptr, ptr %l0, !tbaa !29
  %t986 = load ptr, ptr %l5, !tbaa !29
  %t988 = getelementptr %"compiler/typed:Call", ptr %t986, i32 0, i32 1
  %t989 = load { i64, ptr }, ptr %t988, !tbaa !27
  store { i64, ptr } %t989, ptr %l490, !tbaa !27
  %t990 = load i64, ptr %l28, !tbaa !24
  %t992 = getelementptr { i64, ptr }, ptr %l490, i32 0, i32 1
  %t993 = load ptr, ptr %t992, !tbaa !27
  %t994 = getelementptr ptr, ptr %t993, i64 %t990
  %t995 = load ptr, ptr %t994, !tbaa !39
  %t998 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elentLoopCopy(ptr %v0, ptr %v3, ptr %t985, ptr %t995)
  store i1 %t998, ptr %l493
  br label %bb294
bb293:
  store i1 false, ptr %l487, !tbaa !21
  br label %bb295
bb294:
  %t999 = load i1, ptr %l493, !tbaa !21
  store i1 %t999, ptr %l487, !tbaa !21
  br label %bb295
bb295:
  %t1000 = load i1, ptr %l487, !tbaa !21
  br i1 %t1000, label %bb296, label %bb297
bb296:
  %t1001 = load ptr, ptr %l0, !tbaa !29
  %t1002 = load i64, ptr %l26, !tbaa !24
  %t1003 = load ptr, ptr %l5, !tbaa !29
  %t1005 = getelementptr %"compiler/typed:Call", ptr %t1003, i32 0, i32 1
  %t1006 = load { i64, ptr }, ptr %t1005, !tbaa !27
  store { i64, ptr } %t1006, ptr %l497, !tbaa !27
  %t1007 = load i64, ptr %l28, !tbaa !24
  %t1009 = getelementptr { i64, ptr }, ptr %l497, i32 0, i32 1
  %t1010 = load ptr, ptr %t1009, !tbaa !27
  %t1011 = getelementptr ptr, ptr %t1010, i64 %t1007
  %t1012 = load ptr, ptr %t1011, !tbaa !39
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoteLoopCopy(ptr %v0, ptr %v3, ptr %t1001, i64 %t1002, ptr %t1012)
  br label %bb298
bb297:
  %t1016 = load i64, ptr %l28, !tbaa !24
  %t1018 = icmp sge i64 %t1016, 0
  br i1 %t1018, label %bb299, label %bb300
bb298:
  br label %bb307
bb299:
  %t1020 = load i64, ptr %l29, !tbaa !24
  %t1022 = icmp sge i64 %t1020, 0
  store i1 %t1022, ptr %l502, !tbaa !21
  br label %bb301
bb300:
  store i1 false, ptr %l502, !tbaa !21
  br label %bb301
bb301:
  %t1024 = load i1, ptr %l502, !tbaa !21
  br i1 %t1024, label %bb302, label %bb303
bb302:
  %t1025 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1025, ptr %l505, !tbaa !29
  %t1026 = load i64, ptr %l26, !tbaa !24
  store i64 %t1026, ptr %l506, !tbaa !24
  %t1027 = load ptr, ptr %l0, !tbaa !29
  %t1028 = load %"compiler/source:Span", ptr %l1
  %t1031 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enameSpan(ptr %v0, ptr %t1027, %"compiler/source:Span" %t1028)
  store %"compiler/source:Span" %t1031, ptr %l509
  br label %bb304
bb303:
  br label %bb306
bb304:
  %t1032 = load ptr, ptr %l5, !tbaa !29
  %t1033 = load i64, ptr %l28, !tbaa !24
  %t1034 = load i64, ptr %l29, !tbaa !24
  %t1035 = load { i64, [2 x i64] }, ptr %l11
  %t1036 = load ptr, ptr %l505, !tbaa !29
  %t1037 = load i64, ptr %l506, !tbaa !24
  %t1038 = load %"compiler/source:Span", ptr %l509
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoteMakeWhere(ptr %v0, ptr %v3, ptr %t1036, i64 %t1037, %"compiler/source:Span" %t1038, ptr %t1032, i64 %t1033, i64 %t1034, { i64, [2 x i64] } %t1035)
  br label %bb305
bb305:
  br label %bb306
bb306:
  br label %bb307
bb307:
  call void @__olang_scope_close(ptr %s2)
  br label %bb308
bb308:
  %t1043 = load i64, ptr %l8, !tbaa !24
  %t1045 = add i64 %t1043, 1
  store i64 %t1045, ptr %l8, !tbaa !24
  br label %bb1
bb309:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edropDerived(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
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
  %l12 = alloca { i64, [2 x i64] }
  %l13 = alloca { i64, [2 x i64] }
  %l14 = alloca ptr
  %l16 = alloca i32
  %l17 = alloca i64
  %l20 = alloca i1
  %l23 = alloca i1
  %l28 = alloca ptr
  %l31 = alloca i64
  %l35 = alloca i64
  %l36 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l39 = alloca i64
  %l43 = alloca i64
  %l46 = alloca i64
  %l67 = alloca i64
  %l69 = alloca { i64, [2 x i64] }
  %l70 = alloca ptr
  %l71 = alloca i64
  %l75 = alloca i64
  %l76 = alloca { i64, [2 x i64] }
  %l80 = alloca i1
  %l81 = alloca i1
  %l84 = alloca i1
  %l88 = alloca { i64, [2 x i64] }
  %l91 = alloca { i64, [2 x i64] }
  %l92 = alloca ptr
  %l96 = alloca i64
  %l100 = alloca i64
  %l102 = alloca %"compiler/typed:DerivedArg"
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %t117 = alloca { i64, [2 x i64] }, align 8
  %t127 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l14, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t4 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t2)
  store i32 %t4, ptr %l16
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l14, !tbaa !29
  %t6 = load i32, ptr %l16, !tbaa !23
  %t7 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edtorBody(ptr %v0, ptr %t5, i32 %t6)
  store i64 %t7, ptr %l17
  br label %bb2
bb2:
  %t8 = load i64, ptr %l17, !tbaa !24
  store i64 %t8, ptr %l2, !tbaa !24
  %t9 = load i64, ptr %l2, !tbaa !24
  %t11 = icmp slt i64 %t9, 0
  br i1 %t11, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb6
bb4:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load i64, ptr %l2, !tbaa !24
  %t17 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esummed(ptr %v0, ptr %t13, i64 %t14)
  store i1 %t17, ptr %l23
  br label %bb5
bb5:
  %t18 = load i1, ptr %l23, !tbaa !21
  %t19 = xor i1 %t18, true
  store i1 %t19, ptr %l20, !tbaa !21
  br label %bb6
bb6:
  %t21 = load i1, ptr %l20, !tbaa !21
  br i1 %t21, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb8:
  br label %bb9
bb9:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/scope:Scoper", ptr %t22, i32 0, i32 6
  %t25 = load i64, ptr %l2, !tbaa !24
  %t28 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t24, i64 %t25)
  store ptr %t28, ptr %l28
  br label %bb10
bb10:
  %t29 = load ptr, ptr %l28, !tbaa !29
  store ptr %t29, ptr %l3, !tbaa !29
  %t30 = load ptr, ptr %l3, !tbaa !29
  %t32 = getelementptr %"compiler/scope:summary", ptr %t30, i32 0, i32 14
  %t34 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t32)
  store i64 %t34, ptr %l31
  br label %bb11
bb11:
  %t35 = load i64, ptr %l31, !tbaa !24
  %t36 = icmp eq i64 %t35, 0
  br i1 %t36, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb13:
  br label %bb14
bb14:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t39 = load ptr, ptr %l1, !tbaa !29
  %t42 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargRec(ptr %v0, ptr %v1, ptr %t38, ptr %t39)
  store i64 %t42, ptr %l35
  br label %bb15
bb15:
  %t43 = load i64, ptr %l35, !tbaa !24
  store i64 %t43, ptr %l4, !tbaa !24
  %t44 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t44, ptr %l36
  br label %bb16
bb16:
  %t45 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l36
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t45, ptr %l5
  store i64 0, ptr %l6, !tbaa !24
  %t46 = load ptr, ptr %l3, !tbaa !29
  %t48 = getelementptr %"compiler/scope:summary", ptr %t46, i32 0, i32 14
  %t50 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t48)
  store i64 %t50, ptr %l39
  br label %bb17
bb17:
  %t51 = load i64, ptr %l39, !tbaa !24
  store i64 %t51, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t52 = load i64, ptr %l7, !tbaa !24
  %t53 = load i64, ptr %l6, !tbaa !24
  %t56 = icmp sgt i64 %t52, %t53
  br i1 %t56, label %bb18, label %bb19
bb18:
  %t58 = load i64, ptr %l8, !tbaa !24
  %t60 = icmp sgt i64 %t58, 0
  br i1 %t60, label %bb20, label %bb21
bb19:
  store i64 0, ptr %l43, !tbaa !24
  br label %bb23
bb20:
  %t62 = load i64, ptr %l7, !tbaa !24
  %t63 = load i64, ptr %l6, !tbaa !24
  %t66 = sub i64 %t62, %t63
  %t67 = load i64, ptr %l8, !tbaa !24
  %t70 = add i64 %t66, %t67
  %t72 = sub i64 %t70, 1
  %t73 = load i64, ptr %l8, !tbaa !24
  %t76 = sdiv i64 %t72, %t73
  store i64 %t76, ptr %l46, !tbaa !24
  br label %bb22
bb21:
  store i64 0, ptr %l46, !tbaa !24
  br label %bb22
bb22:
  %t78 = load i64, ptr %l46, !tbaa !24
  store i64 %t78, ptr %l43, !tbaa !24
  br label %bb23
bb23:
  %t79 = load i64, ptr %l43, !tbaa !24
  store i64 %t79, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb24
bb24:
  store %olang.scope zeroinitializer, ptr %s4
  %t80 = load i64, ptr %l10, !tbaa !24
  %t81 = load i64, ptr %l9, !tbaa !24
  %t84 = icmp slt i64 %t80, %t81
  %t86 = xor i1 %t84, true
  br i1 %t86, label %bb25, label %bb26
bb25:
  call void @__olang_scope_close(ptr %s4)
  br label %bb49
bb26:
  br label %bb27
bb27:
  %t88 = load i64, ptr %l6, !tbaa !24
  %t89 = load i64, ptr %l10, !tbaa !24
  %t90 = load i64, ptr %l8, !tbaa !24
  %t93 = mul i64 %t89, %t90
  %t96 = add i64 %t88, %t93
  store i64 %t96, ptr %l11, !tbaa !24
  %t98 = load ptr, ptr %l3, !tbaa !29
  %t100 = getelementptr %"compiler/scope:summary", ptr %t98, i32 0, i32 14
  %t101 = load i64, ptr %l11, !tbaa !24
  %t104 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t100, i64 %t101)
  store i64 %t104, ptr %l67
  br label %bb28
bb28:
  %t105 = load i64, ptr %l67, !tbaa !24
  %t106 = icmp eq i64 %t105, 0
  br i1 %t106, label %bb29, label %bb30
bb29:
  %t108 = load ptr, ptr %l0, !tbaa !29
  store ptr %t108, ptr %l70, !tbaa !29
  %t109 = load i64, ptr %l4, !tbaa !24
  store i64 %t109, ptr %l71, !tbaa !24
  %t110 = load ptr, ptr %l3, !tbaa !29
  %t112 = getelementptr %"compiler/scope:summary", ptr %t110, i32 0, i32 15
  %t113 = load i64, ptr %l11, !tbaa !24
  %t116 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t112, i64 %t113)
  store i64 %t116, ptr %l75
  br label %bb31
bb30:
  store { i64, [2 x i64] } zeroinitializer, ptr %t117
  %t118 = getelementptr { i64, [2 x i64] }, ptr %t117, i32 0, i32 0
  store i64 0, ptr %t118
  %t119 = load { i64, [2 x i64] }, ptr %t117
  store { i64, [2 x i64] } %t119, ptr %l69
  br label %bb33
bb31:
  %t121 = load ptr, ptr %l70, !tbaa !29
  %t122 = load i64, ptr %l71, !tbaa !24
  %t123 = load i64, ptr %l75, !tbaa !24
  %t124 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erecAt(ptr %v0, ptr %t121, i64 %t122, i64 %t123)
  store { i64, [2 x i64] } %t124, ptr %l76
  br label %bb32
bb32:
  %t125 = load { i64, [2 x i64] }, ptr %l76
  store { i64, [2 x i64] } %t125, ptr %l69
  br label %bb33
bb33:
  %t126 = load { i64, [2 x i64] }, ptr %l69
  store { i64, [2 x i64] } %t126, ptr %l12
  store { i64, [2 x i64] } zeroinitializer, ptr %t127
  %t128 = getelementptr { i64, [2 x i64] }, ptr %t127, i32 0, i32 0
  store i64 0, ptr %t128
  %t129 = load { i64, [2 x i64] }, ptr %t127
  store { i64, [2 x i64] } %t129, ptr %l13
  %t131 = load { i64, [2 x i64] }, ptr %l12
  %t133 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t131)
  store i1 %t133, ptr %l80
  br label %bb34
bb34:
  %t134 = load i1, ptr %l80, !tbaa !21
  br i1 %t134, label %bb35, label %bb36
bb35:
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t136 = load { i64, [2 x i64] }, ptr %l12
  %t139 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efinds(ptr %v0, ptr %t135, { i64, [2 x i64] } %t136)
  store i1 %t139, ptr %l84
  br label %bb37
bb36:
  store i1 false, ptr %l81, !tbaa !21
  br label %bb38
bb37:
  %t140 = load i1, ptr %l84, !tbaa !21
  %t141 = xor i1 %t140, true
  store i1 %t141, ptr %l81, !tbaa !21
  br label %bb38
bb38:
  %t143 = load i1, ptr %l81, !tbaa !21
  br i1 %t143, label %bb39, label %bb40
bb39:
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t145 = load { i64, [2 x i64] }, ptr %l12
  %t148 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2escopeOf(ptr %v0, ptr %t144, { i64, [2 x i64] } %t145)
  store { i64, [2 x i64] } %t148, ptr %l88
  br label %bb41
bb40:
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t150 = load { i64, [2 x i64] }, ptr %l12
  %t153 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ederivedScope(ptr %v0, ptr %t149, { i64, [2 x i64] } %t150, i64 -1)
  store { i64, [2 x i64] } %t153, ptr %l91
  br label %bb42
bb41:
  %t154 = load { i64, [2 x i64] }, ptr %l88
  store { i64, [2 x i64] } %t154, ptr %l13
  br label %bb43
bb42:
  %t155 = load { i64, [2 x i64] }, ptr %l91
  store { i64, [2 x i64] } %t155, ptr %l13
  br label %bb43
bb43:
  store ptr %l5, ptr %l92, !tbaa !29
  %t156 = load ptr, ptr %l3, !tbaa !29
  %t158 = getelementptr %"compiler/scope:summary", ptr %t156, i32 0, i32 14
  %t159 = load i64, ptr %l11, !tbaa !24
  %t162 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t158, i64 %t159)
  store i64 %t162, ptr %l96
  br label %bb44
bb44:
  %t163 = load ptr, ptr %l3, !tbaa !29
  %t165 = getelementptr %"compiler/scope:summary", ptr %t163, i32 0, i32 15
  %t166 = load i64, ptr %l11, !tbaa !24
  %t169 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t165, i64 %t166)
  store i64 %t169, ptr %l100
  br label %bb45
bb45:
  %t170 = load { i64, [2 x i64] }, ptr %l13
  %t171 = load i64, ptr %l96, !tbaa !24
  %t172 = load i64, ptr %l100, !tbaa !24
  %t174 = call %"compiler/typed:DerivedArg" @compiler_2ftyped_3aDerivedArg_2ector(ptr %s4, i64 %t171, i64 %t172, { i64, [2 x i64] } %t170)
  store %"compiler/typed:DerivedArg" %t174, ptr %l102
  br label %bb46
bb46:
  %t175 = load ptr, ptr %l92, !tbaa !29
  %t176 = load %"compiler/typed:DerivedArg", ptr %l102
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_2ePus_Hd9c60b9bc3eb0bc15b58bce924fabf2c(ptr %s0, ptr %t175, %"compiler/typed:DerivedArg" %t176)
  br label %bb47
bb47:
  call void @__olang_scope_close(ptr %s4)
  br label %bb48
bb48:
  %t177 = load i64, ptr %l10, !tbaa !24
  %t179 = add i64 %t177, 1
  store i64 %t179, ptr %l10, !tbaa !24
  br label %bb24
bb49:
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t183 = getelementptr %"compiler/scope:Scoper", ptr %t181, i32 0, i32 33
  %t184 = load ptr, ptr %l1, !tbaa !29
  %t185 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2eDropDerived(ptr %v0, ptr %v1, ptr %s0, ptr %t183, ptr %t184, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t185)
  br label %bb50
bb50:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflowStart(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca { i64, [2 x i64] }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l17 = alloca ptr
  %l27 = alloca %"compiler/typed:Local"
  %l36 = alloca { i64, [2 x i64] }
  %l39 = alloca i64
  %l43 = alloca i64
  %l46 = alloca i64
  %l67 = alloca { i64, [2 x i64] }
  %l69 = alloca { i64, [2 x i64] }
  %l71 = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 134
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t3)
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/scope:Scoper", ptr %t5, i32 0, i32 135
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t7)
  br label %bb2
bb2:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/scope:Scoper", ptr %t9, i32 0, i32 136
  store i1 false, ptr %t11, !tbaa !21
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load i64, ptr %l2, !tbaa !24
  %t16 = getelementptr %"compiler/scope:Scoper", ptr %t12, i32 0, i32 137
  store i64 %t13, ptr %t16, !tbaa !24
  %t17 = load ptr, ptr %l0, !tbaa !29
  store ptr %t17, ptr %l17, !tbaa !29
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/scope:Scoper", ptr %t18, i32 0, i32 26
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t23 = icmp eq ptr %t21, null
  br i1 %t23, label %bb3, label %bb4
bb3:
  call void @__olang_check_failed(ptr @olang_loc_8ac0dfde81ed52b7_ecd118d92b351383)
  unreachable
bb4:
  br label %bb5
bb5:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/scope:Scoper", ptr %t25, i32 0, i32 26
  %t28 = load ptr, ptr %t27, !tbaa !29
  %t31 = getelementptr %"compiler/typed:Body", ptr %t28, i32 0, i32 7
  %t32 = load i32, ptr %l1, !tbaa !23
  %t34 = sext i32 %t32 to i64
  %t37 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t31, i64 %t34)
  store %"compiler/typed:Local" %t37, ptr %l27
  br label %bb6
bb6:
  %t38 = getelementptr %"compiler/typed:Local", ptr %l27, i32 0, i32 3
  %t39 = load i32, ptr %t38, !tbaa !23
  %t41 = load ptr, ptr %l17, !tbaa !29
  %t42 = getelementptr %"compiler/scope:Scoper", ptr %t41, i32 0, i32 140
  store i32 %t39, ptr %t42, !tbaa !23
  %t43 = load i64, ptr %l2, !tbaa !24
  %t45 = icmp eq i64 %t43, 1
  br i1 %t45, label %bb7, label %bb8
bb7:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/scope:Scoper", ptr %t47, i32 0, i32 134
  %t50 = load i32, ptr %l1, !tbaa !23
  %t52 = sext i32 %t50 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t49, i64 %t52)
  br label %bb9
bb8:
  br label %bb10
bb9:
  br label %ret
bb10:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eresultTerm(ptr %v0, ptr %t55, i64 0)
  store { i64, [2 x i64] } %t57, ptr %l36
  br label %bb11
bb11:
  %t58 = load { i64, [2 x i64] }, ptr %l36
  store { i64, [2 x i64] } %t58, ptr %l3
  store i64 0, ptr %l4, !tbaa !24
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/scope:Scoper", ptr %t59, i32 0, i32 34
  %t63 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eLen_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t61)
  store i64 %t63, ptr %l39
  br label %bb12
bb12:
  %t64 = load i64, ptr %l39, !tbaa !24
  store i64 %t64, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t65 = load i64, ptr %l5, !tbaa !24
  %t66 = load i64, ptr %l4, !tbaa !24
  %t69 = icmp sgt i64 %t65, %t66
  br i1 %t69, label %bb13, label %bb14
bb13:
  %t71 = load i64, ptr %l6, !tbaa !24
  %t73 = icmp sgt i64 %t71, 0
  br i1 %t73, label %bb15, label %bb16
bb14:
  store i64 0, ptr %l43, !tbaa !24
  br label %bb18
bb15:
  %t75 = load i64, ptr %l5, !tbaa !24
  %t76 = load i64, ptr %l4, !tbaa !24
  %t79 = sub i64 %t75, %t76
  %t80 = load i64, ptr %l6, !tbaa !24
  %t83 = add i64 %t79, %t80
  %t85 = sub i64 %t83, 1
  %t86 = load i64, ptr %l6, !tbaa !24
  %t89 = sdiv i64 %t85, %t86
  store i64 %t89, ptr %l46, !tbaa !24
  br label %bb17
bb16:
  store i64 0, ptr %l46, !tbaa !24
  br label %bb17
bb17:
  %t91 = load i64, ptr %l46, !tbaa !24
  store i64 %t91, ptr %l43, !tbaa !24
  br label %bb18
bb18:
  %t92 = load i64, ptr %l43, !tbaa !24
  store i64 %t92, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb19
bb19:
  %t93 = load i64, ptr %l8, !tbaa !24
  %t94 = load i64, ptr %l7, !tbaa !24
  %t97 = icmp slt i64 %t93, %t94
  %t99 = xor i1 %t97, true
  br i1 %t99, label %bb20, label %bb21
bb20:
  br label %bb30
bb21:
  br label %bb22
bb22:
  %t101 = load i64, ptr %l4, !tbaa !24
  %t102 = load i64, ptr %l8, !tbaa !24
  %t103 = load i64, ptr %l6, !tbaa !24
  %t106 = mul i64 %t102, %t103
  %t109 = add i64 %t101, %t106
  store i64 %t109, ptr %l9, !tbaa !24
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/scope:Scoper", ptr %t111, i32 0, i32 34
  %t114 = load i64, ptr %l9, !tbaa !24
  %t117 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t113, i64 %t114)
  store { i64, [2 x i64] } %t117, ptr %l67
  br label %bb23
bb23:
  %t118 = load { i64, [2 x i64] }, ptr %l3
  store { i64, [2 x i64] } %t118, ptr %l69
  %t121 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3aTerm(ptr %l67, ptr %l69)
  store i1 %t121, ptr %l71
  br label %bb24
bb24:
  %t122 = load i1, ptr %l71, !tbaa !21
  br i1 %t122, label %bb25, label %bb26
bb25:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = getelementptr %"compiler/scope:Scoper", ptr %t123, i32 0, i32 134
  %t126 = load i64, ptr %l9, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t125, i64 %t126)
  br label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb28
bb28:
  br label %bb29
bb29:
  %t129 = load i64, ptr %l8, !tbaa !24
  %t131 = add i64 %t129, 1
  store i64 %t131, ptr %l8, !tbaa !24
  br label %bb19
bb30:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisCtor(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l9 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 26
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  br i1 %t6, label %bb1, label %bb2
bb1:
  call void @__olang_check_failed(ptr @olang_loc_d38420f770b56a25_293628bae4d10df9)
  unreachable
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/scope:Scoper", ptr %t8, i32 0, i32 26
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t14 = getelementptr %"compiler/typed:Body", ptr %t11, i32 0, i32 1
  %t15 = load { i64, [2 x i64] }, ptr %t14
  %t19 = extractvalue { i64, [2 x i64] } %t15, 0
  %t20 = icmp eq i64 %t19, 1
  br i1 %t20, label %bb4, label %bb5
bb4:
  br label %bb6
bb5:
  br label %bb7
bb6:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb12
bb7:
  br i1 true, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_7d2ed71f654b640d_ba09ac545853f0c1)
  unreachable
bb12:
  %t22 = load i1, ptr %l9, !tbaa !21
  store i1 %t22, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisHandle(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l5 = alloca i1
  %l10 = alloca ptr
  %l15 = alloca i32
  %l16 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l24 = alloca i1
  %l27 = alloca { i64, [1 x i64] }
  %l31 = alloca { i64, ptr }
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
  %t5 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisStruct(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i1, ptr %l5, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/scope:Scoper", ptr %t10, i32 0, i32 0
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = getelementptr %"compiler/generic:Program", ptr %t13, i32 0, i32 2
  store ptr %t15, ptr %l10, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/scope:Scoper", ptr %t16, i32 0, i32 0
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t21 = getelementptr %"compiler/generic:Program", ptr %t19, i32 0, i32 2
  %t22 = load i32, ptr %l1, !tbaa !23
  %t25 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t21, i32 %t22)
  store i32 %t25, ptr %l15
  br label %bb5
bb5:
  %t26 = load ptr, ptr %l10, !tbaa !29
  %t27 = load i32, ptr %l15, !tbaa !23
  %t28 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t26, i32 %t27)
  store { i64, ptr } %t28, ptr %l16
  br label %bb6
bb6:
  %t29 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t29, ptr %l2, !tbaa !27
  %t30 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t30, 0
  %t34 = icmp ne i64 %t32, 1
  br i1 %t34, label %bb7, label %bb8
bb7:
  store i1 false, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t38, ptr %l22, !tbaa !27
  %t39 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !27
  %t41 = getelementptr i32, ptr %t40, i64 0
  %t42 = load i32, ptr %t41, !tbaa !33
  %t45 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t37, i32 %t42)
  store i1 %t45, ptr %l24
  br label %bb10
bb10:
  %t46 = load i1, ptr %l24, !tbaa !21
  br i1 %t46, label %bb11, label %bb12
bb11:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load i32, ptr %l1, !tbaa !23
  %t51 = call { i64, [1 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efieldMark(ptr %v0, ptr %t47, i32 %t48, i64 0)
  store { i64, [1 x i64] } %t51, ptr %l27
  br label %bb13
bb12:
  br label %bb14
bb13:
  %t52 = load { i64, [1 x i64] }, ptr %l27
  %t54 = extractvalue { i64, [1 x i64] } %t52, 0
  %t55 = icmp eq i64 %t54, 1
  store i1 %t55, ptr %rv
  br label %ret
bb14:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t58, ptr %l31, !tbaa !27
  %t59 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !27
  %t61 = getelementptr i32, ptr %t60, i64 0
  %t62 = load i32, ptr %t61, !tbaa !33
  %t65 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisHandle(ptr %v0, ptr %t57, i32 %t62)
  store i1 %t65, ptr %l33
  br label %bb15
bb15:
  %t66 = load i1, ptr %l33, !tbaa !21
  store i1 %t66, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejoin(ptr %v0, ptr %a0, %"compiler/scope:Val" %a1, %"compiler/scope:Val" %a2, { i64, [2 x i64] } %a3) #0 {
entry:
  %l1 = alloca %"compiler/scope:Val"
  %l2 = alloca %"compiler/scope:Val"
  %l3 = alloca { i64, [2 x i64] }
  %l12 = alloca i1
  %l18 = alloca i1
  %l22 = alloca { i64, [2 x i64] }
  %l24 = alloca { i64, [2 x i64] }
  %l26 = alloca i1
  %l29 = alloca i1
  %l32 = alloca i32
  %l36 = alloca %"compiler/scope:Val"
  %l40 = alloca { i64, [2 x i64] }
  %l41 = alloca %"compiler/scope:Val"
  %s5 = alloca %olang.scope
  %rv = alloca %"compiler/scope:Val"
  store %"compiler/scope:Val" %a1, ptr %l1
  store %"compiler/scope:Val" %a2, ptr %l2
  store { i64, [2 x i64] } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/scope:Val", ptr %l1, i32 0, i32 0
  %t2 = load i32, ptr %t1, !range !{i32 0, i32 5}
  %t4 = trunc i64 0 to i32
  %t5 = icmp eq i32 %t2, %t4
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load %"compiler/scope:Val", ptr %l2
  store %"compiler/scope:Val" %t7, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t9 = getelementptr %"compiler/scope:Val", ptr %l2, i32 0, i32 0
  %t10 = load i32, ptr %t9, !range !{i32 0, i32 5}
  %t12 = trunc i64 0 to i32
  %t13 = icmp eq i32 %t10, %t12
  br i1 %t13, label %bb4, label %bb5
bb4:
  %t15 = load %"compiler/scope:Val", ptr %l1
  store %"compiler/scope:Val" %t15, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t17 = getelementptr %"compiler/scope:Val", ptr %l1, i32 0, i32 0
  %t18 = load i32, ptr %t17, !range !{i32 0, i32 5}
  %t20 = trunc i64 1 to i32
  %t21 = icmp eq i32 %t18, %t20
  br i1 %t21, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb9
bb8:
  %t23 = getelementptr %"compiler/scope:Val", ptr %l1, i32 0, i32 0
  %t24 = load i32, ptr %t23, !range !{i32 0, i32 5}
  %t26 = trunc i64 4 to i32
  %t27 = icmp eq i32 %t24, %t26
  store i1 %t27, ptr %l12, !tbaa !21
  br label %bb9
bb9:
  %t29 = load i1, ptr %l12, !tbaa !21
  br i1 %t29, label %bb10, label %bb11
bb10:
  %t30 = load %"compiler/scope:Val", ptr %l2
  store %"compiler/scope:Val" %t30, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t32 = getelementptr %"compiler/scope:Val", ptr %l2, i32 0, i32 0
  %t33 = load i32, ptr %t32, !range !{i32 0, i32 5}
  %t35 = trunc i64 1 to i32
  %t36 = icmp eq i32 %t33, %t35
  br i1 %t36, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb15
bb14:
  %t38 = getelementptr %"compiler/scope:Val", ptr %l2, i32 0, i32 0
  %t39 = load i32, ptr %t38, !range !{i32 0, i32 5}
  %t41 = trunc i64 4 to i32
  %t42 = icmp eq i32 %t39, %t41
  store i1 %t42, ptr %l18, !tbaa !21
  br label %bb15
bb15:
  %t44 = load i1, ptr %l18, !tbaa !21
  br i1 %t44, label %bb16, label %bb17
bb16:
  %t45 = load %"compiler/scope:Val", ptr %l1
  store %"compiler/scope:Val" %t45, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t47 = getelementptr %"compiler/scope:Val", ptr %l1, i32 0, i32 1
  %t48 = load { i64, [2 x i64] }, ptr %t47
  store { i64, [2 x i64] } %t48, ptr %l22
  %t49 = getelementptr %"compiler/scope:Val", ptr %l2, i32 0, i32 1
  %t50 = load { i64, [2 x i64] }, ptr %t49
  store { i64, [2 x i64] } %t50, ptr %l24
  %t53 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3aTerm(ptr %l22, ptr %l24)
  store i1 %t53, ptr %l26
  br label %bb19
bb19:
  %t54 = load i1, ptr %l26, !tbaa !21
  br i1 %t54, label %bb20, label %bb21
bb20:
  store %olang.scope zeroinitializer, ptr %s5
  %t55 = getelementptr %"compiler/scope:Val", ptr %l1, i32 0, i32 0
  %t56 = load i32, ptr %t55, !range !{i32 0, i32 5}
  %t58 = trunc i64 3 to i32
  %t59 = icmp eq i32 %t56, %t58
  br i1 %t59, label %bb22, label %bb23
bb21:
  br label %bb29
bb22:
  store i1 true, ptr %l29, !tbaa !21
  br label %bb24
bb23:
  %t61 = getelementptr %"compiler/scope:Val", ptr %l2, i32 0, i32 0
  %t62 = load i32, ptr %t61, !range !{i32 0, i32 5}
  %t64 = trunc i64 3 to i32
  %t65 = icmp eq i32 %t62, %t64
  store i1 %t65, ptr %l29, !tbaa !21
  br label %bb24
bb24:
  %t67 = load i1, ptr %l29, !tbaa !21
  br i1 %t67, label %bb25, label %bb26
bb25:
  store i32 3, ptr %l32
  br label %bb27
bb26:
  %t69 = getelementptr %"compiler/scope:Val", ptr %l1, i32 0, i32 0
  %t70 = load i32, ptr %t69, !range !{i32 0, i32 5}
  store i32 %t70, ptr %l32
  br label %bb27
bb27:
  %t72 = getelementptr %"compiler/scope:Val", ptr %l1, i32 0, i32 1
  %t73 = load { i64, [2 x i64] }, ptr %t72
  %t74 = load i32, ptr %l32, !range !{i32 0, i32 5}
  %t76 = call %"compiler/scope:Val" @compiler_2fscope_3aVal_2ector(ptr %s5, i32 %t74, { i64, [2 x i64] } %t73)
  store %"compiler/scope:Val" %t76, ptr %l36
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s5)
  %t77 = load %"compiler/scope:Val", ptr %l36
  store %"compiler/scope:Val" %t77, ptr %rv
  br label %ret
bb29:
  %t79 = getelementptr %"compiler/scope:Val", ptr %l1, i32 0, i32 1
  %t80 = load { i64, [2 x i64] }, ptr %t79
  %t81 = getelementptr %"compiler/scope:Val", ptr %l2, i32 0, i32 1
  %t82 = load { i64, [2 x i64] }, ptr %t81
  %t86 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esetOf(ptr %v0, ptr %a0, { i64, [2 x i64] } %t80, { i64, [2 x i64] } %t82)
  store { i64, [2 x i64] } %t86, ptr %l40
  br label %bb30
bb30:
  %t87 = load { i64, [2 x i64] }, ptr %l40
  %t88 = call %"compiler/scope:Val" @compiler_2fscope_2eVal_2eexisting({ i64, [2 x i64] } %t87)
  store %"compiler/scope:Val" %t88, ptr %l41
  br label %bb31
bb31:
  %t89 = load %"compiler/scope:Val", ptr %l41
  store %"compiler/scope:Val" %t89, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/scope:Val", ptr %rv
  ret %"compiler/scope:Val" %rr
}

define dso_local ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejudgeComp(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l17 = alloca ptr
  %l18 = alloca i64
  %l20 = alloca ptr
  %l21 = alloca i64
  %l23 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l24 = alloca { i64, ptr }
  %l25 = alloca i64
  %l26 = alloca i64
  %l28 = alloca { i64, ptr }
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i64
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l39 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l40 = alloca { i64, ptr }
  %l41 = alloca i64
  %l42 = alloca i64
  %l43 = alloca i64
  %l44 = alloca i64
  %l45 = alloca i64
  %l46 = alloca i64
  %l47 = alloca i64
  %l48 = alloca i64
  %l49 = alloca i64
  %l50 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l51 = alloca i64
  %l56 = alloca i64
  %l59 = alloca i64
  %l74 = alloca %"compiler/scope:compRun"
  %l86 = alloca { i64, ptr }
  %l90 = alloca ptr
  %l94 = alloca %"compiler/typed:Plan"
  %l96 = alloca %"compiler/typed:Plan"
  %l98 = alloca ptr
  %l102 = alloca ptr
  %l104 = alloca ptr
  %l108 = alloca i1
  %l111 = alloca ptr
  %l117 = alloca %"compiler/diag:Taken"
  %l118 = alloca %"compiler/diag:Taken"
  %l124 = alloca i64
  %l128 = alloca i64
  %l131 = alloca i64
  %l150 = alloca ptr
  %l154 = alloca %"compiler/scope:Gap"
  %l159 = alloca i64
  %l161 = alloca i64
  %l166 = alloca i64
  %l174 = alloca i64
  %l176 = alloca i64
  %l181 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l192 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l200 = alloca { i64, ptr }
  %l214 = alloca { i64, ptr }
  %l219 = alloca i1
  %l224 = alloca ptr
  %l227 = alloca i64
  %l231 = alloca i64
  %l234 = alloca i64
  %l253 = alloca ptr
  %l256 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l260 = alloca { i64, [1 x i64] }
  %l267 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l268 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l270 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l271 = alloca i32
  %l273 = alloca i1
  %l275 = alloca ptr
  %l276 = alloca i64
  %l277 = alloca i64
  %l278 = alloca { i64, [1 x i64] }
  %l282 = alloca { i64, [1 x i64] }
  %l283 = alloca i32
  %l285 = alloca %"compiler/scope:markRead"
  %l293 = alloca { i64, ptr }
  %l299 = alloca i64
  %l304 = alloca i64
  %l308 = alloca i64
  %l311 = alloca i64
  %l329 = alloca ptr
  %l333 = alloca i64
  %l334 = alloca i1
  %l337 = alloca ptr
  %l341 = alloca i64
  %l348 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l349 = alloca i64
  %l351 = alloca i64
  %l352 = alloca i32
  %l354 = alloca i1
  %l357 = alloca i1
  %l360 = alloca ptr
  %l361 = alloca i64
  %l365 = alloca ptr
  %l366 = alloca %"compiler/scope:sumRead"
  %s0 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %s24 = alloca %olang.scope
  %rv = alloca ptr
  %t50 = alloca %"compiler/scope:compRun", align 8
  %t90 = alloca %"compiler/typed:Plan", align 8
  %t93 = alloca %"compiler/typed:Plan", align 8
  %t96 = alloca %"compiler/typed:Plan", align 8
  %t489 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 0
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = getelementptr %"compiler/load:Loader", ptr %t7, i32 0, i32 4
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCount(ptr %v0, ptr %t10)
  store i64 %t12, ptr %l56
  br label %bb1
bb1:
  %t13 = load i64, ptr %l56, !tbaa !24
  store i64 %t13, ptr %l3, !tbaa !24
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/scope:Scoper", ptr %t14, i32 0, i32 3
  %t18 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aGap_3e_2eLen_3ccompiler_2fscope_3aGap_3e(ptr %v0, ptr %t16)
  store i64 %t18, ptr %l59
  br label %bb2
bb2:
  %t19 = load i64, ptr %l59, !tbaa !24
  store i64 %t19, ptr %l4, !tbaa !24
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/scope:Scoper", ptr %t20, i32 0, i32 218
  %t23 = load i64, ptr %t22, !tbaa !24
  store i64 %t23, ptr %l5, !tbaa !24
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/scope:Scoper", ptr %t25, i32 0, i32 250
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H4ba59ac62e00bdfe20104df12344f819(ptr %v0, ptr %t27)
  br label %bb3
bb3:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/scope:Scoper", ptr %t29, i32 0, i32 251
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eClear_3cI64_2c_20Bool_3e(ptr %v0, ptr %t31)
  br label %bb4
bb4:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/scope:Scoper", ptr %t33, i32 0, i32 252
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t35)
  br label %bb5
bb5:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/scope:Scoper", ptr %t37, i32 0, i32 253
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_H8e86aafb7cbdd2ec2cbc5deec80f6d75(ptr %v0, ptr %t39)
  br label %bb6
bb6:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/scope:Scoper", ptr %t41, i32 0, i32 237
  store i1 false, ptr %t43, !tbaa !21
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t45 = load { i64, ptr }, ptr %l1, !tbaa !27
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecomponent(ptr %v0, ptr %v1, ptr %t44, { i64, ptr } %t45, i1 %a2)
  br label %bb7
bb7:
  call void @compiler_2fscope_3acompRun_2ector(ptr %t50, ptr %v2)
  call void @llvm.memmove.p0.p0.i64(ptr %l74, ptr %t50, i64 400, i1 false)
  br label %bb8
bb8:
  %t51 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 400, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t51, ptr %l74, i64 400, i1 false)
  store ptr %t51, ptr %l6, !tbaa !29
  %t53 = load ptr, ptr %l6, !tbaa !29
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/scope:Scoper", ptr %t54, i32 0, i32 237
  %t57 = load i1, ptr %t56, !tbaa !21
  %t60 = getelementptr %"compiler/scope:compRun", ptr %t53, i32 0, i32 10
  store i1 %t57, ptr %t60, !tbaa !21
  %t61 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t61, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t63 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t65 = extractvalue { i64, ptr } %t63, 0
  store i64 %t65, ptr %l9, !tbaa !24
  br label %bb9
bb9:
  %t67 = load i64, ptr %l8, !tbaa !24
  %t68 = load i64, ptr %l9, !tbaa !24
  %t71 = icmp slt i64 %t67, %t68
  %t73 = xor i1 %t71, true
  br i1 %t73, label %bb10, label %bb11
bb10:
  br label %bb21
bb11:
  br label %bb12
bb12:
  %t75 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t75, ptr %l86, !tbaa !27
  %t76 = load i64, ptr %l8, !tbaa !24
  %t78 = getelementptr { i64, ptr }, ptr %l86, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !27
  %t80 = getelementptr i64, ptr %t79, i64 %t76
  %t81 = load i64, ptr %t80, !tbaa !34
  store i64 %t81, ptr %l10, !tbaa !24
  %t83 = load ptr, ptr %l6, !tbaa !29
  %t85 = getelementptr %"compiler/scope:compRun", ptr %t83, i32 0, i32 0
  store ptr %t85, ptr %l90, !tbaa !29
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/scope:Scoper", ptr %t86, i32 0, i32 2
  %t89 = load i64, ptr %l10, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eAt_3ccompiler_2ftyped_3aPlan_3e(ptr %t90, ptr %v0, ptr %v0, ptr %t88, i64 %t89)
  call void @llvm.memmove.p0.p0.i64(ptr %l94, ptr %t90, i64 536, i1 false)
  br label %bb13
bb13:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ftyped_3aPlan(ptr %t93, ptr %v0, ptr %l94)
  call void @llvm.memmove.p0.p0.i64(ptr %l96, ptr %t93, i64 536, i1 false)
  br label %bb14
bb14:
  %t95 = load ptr, ptr %l90, !tbaa !29
  call void @llvm.memmove.p0.p0.i64(ptr %t96, ptr %l96, i64 536, i1 false)
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2ePush_3ccompiler_2ftyped_3aPlan_3e(ptr %v2, ptr %v0, ptr %t95, ptr %t96)
  br label %bb15
bb15:
  %t97 = load ptr, ptr %l6, !tbaa !29
  %t99 = getelementptr %"compiler/scope:compRun", ptr %t97, i32 0, i32 1
  store ptr %t99, ptr %l98, !tbaa !29
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/scope:Scoper", ptr %t100, i32 0, i32 6
  %t103 = load i64, ptr %l10, !tbaa !24
  %t106 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t102, i64 %t103)
  store ptr %t106, ptr %l102
  br label %bb16
bb16:
  %t107 = load ptr, ptr %l98, !tbaa !29
  %t108 = load ptr, ptr %l102, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_H6c9b3c63d1bd8a9585cb935569d90c26(ptr %v2, ptr %v0, ptr %t107, ptr %t108)
  br label %bb17
bb17:
  %t109 = load ptr, ptr %l6, !tbaa !29
  %t111 = getelementptr %"compiler/scope:compRun", ptr %t109, i32 0, i32 2
  store ptr %t111, ptr %l104, !tbaa !29
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"compiler/scope:Scoper", ptr %t112, i32 0, i32 12
  %t115 = load i64, ptr %l10, !tbaa !24
  %t118 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t114, i64 %t115)
  store i1 %t118, ptr %l108
  br label %bb18
bb18:
  %t119 = load ptr, ptr %l104, !tbaa !29
  %t120 = load i1, ptr %l108, !tbaa !21
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v2, ptr %t119, i1 %t120)
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t121 = load i64, ptr %l8, !tbaa !24
  %t123 = add i64 %t121, 1
  store i64 %t123, ptr %l8, !tbaa !24
  br label %bb9
bb21:
  %t125 = load ptr, ptr %l6, !tbaa !29
  store ptr %t125, ptr %l111, !tbaa !29
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t128 = getelementptr %"compiler/scope:Scoper", ptr %t126, i32 0, i32 0
  %t129 = load ptr, ptr %t128, !tbaa !29
  %t131 = getelementptr %"compiler/generic:Program", ptr %t129, i32 0, i32 0
  %t132 = load ptr, ptr %t131, !tbaa !29
  %t134 = getelementptr %"compiler/load:Loader", ptr %t132, i32 0, i32 4
  %t135 = load ptr, ptr %t134, !tbaa !29
  %t136 = load i64, ptr %l3, !tbaa !24
  %t139 = call %"compiler/diag:Taken" @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eSince(ptr %v0, ptr %v2, ptr %t135, i64 %t136)
  store %"compiler/diag:Taken" %t139, ptr %l117
  br label %bb22
bb22:
  %t140 = load ptr, ptr %l111, !tbaa !29
  %t141 = getelementptr %"compiler/scope:compRun", ptr %t140, i32 0, i32 3
  %t142 = load %"compiler/diag:Taken", ptr %t141
  store %"compiler/diag:Taken" %t142, ptr %l118
  %t143 = load %"compiler/diag:Taken", ptr %l117
  %t144 = load ptr, ptr %l111, !tbaa !29
  %t145 = getelementptr %"compiler/scope:compRun", ptr %t144, i32 0, i32 3
  store %"compiler/diag:Taken" %t143, ptr %t145
  %t146 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aTaken_2e2
  br i1 %t146, label %bb23, label %bb24
bb23:
  %t148 = getelementptr %"compiler/diag:Taken", ptr %l118, i32 0, i32 2
  %t149 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t148, i32 0, i32 0
  %t150 = load { i64, ptr }, ptr %t149
  %t151 = extractvalue { i64, ptr } %t150, 1
  %t152 = call ptr @__olang_region_or(ptr %t151, ptr null)
  %t153 = icmp ne ptr %t152, null
  %t154 = select i1 %t153, ptr %t152, ptr null
  call void @__olang_region_drop(ptr %t154)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %t148
  br label %bb24
bb24:
  %t155 = load i1, ptr @olang_2esole_2ecompiler_2fdiag_3aTaken_2e3
  br i1 %t155, label %bb25, label %bb26
bb25:
  %t157 = getelementptr %"compiler/diag:Taken", ptr %l118, i32 0, i32 3
  %t158 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t157, i32 0, i32 0
  %t159 = load { i64, ptr }, ptr %t158
  %t160 = extractvalue { i64, ptr } %t159, 1
  %t161 = call ptr @__olang_region_or(ptr %t160, ptr null)
  %t162 = icmp ne ptr %t161, null
  %t163 = select i1 %t162, ptr %t161, ptr null
  call void @__olang_region_drop(ptr %t163)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %t157
  br label %bb26
bb26:
  %t164 = load i64, ptr %l4, !tbaa !24
  store i64 %t164, ptr %l11, !tbaa !24
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t168 = getelementptr %"compiler/scope:Scoper", ptr %t166, i32 0, i32 3
  %t170 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aGap_3e_2eLen_3ccompiler_2fscope_3aGap_3e(ptr %v0, ptr %t168)
  store i64 %t170, ptr %l124
  br label %bb27
bb27:
  %t171 = load i64, ptr %l124, !tbaa !24
  store i64 %t171, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t172 = load i64, ptr %l12, !tbaa !24
  %t173 = load i64, ptr %l11, !tbaa !24
  %t176 = icmp sgt i64 %t172, %t173
  br i1 %t176, label %bb28, label %bb29
bb28:
  %t178 = load i64, ptr %l13, !tbaa !24
  %t180 = icmp sgt i64 %t178, 0
  br i1 %t180, label %bb30, label %bb31
bb29:
  store i64 0, ptr %l128, !tbaa !24
  br label %bb33
bb30:
  %t182 = load i64, ptr %l12, !tbaa !24
  %t183 = load i64, ptr %l11, !tbaa !24
  %t186 = sub i64 %t182, %t183
  %t187 = load i64, ptr %l13, !tbaa !24
  %t190 = add i64 %t186, %t187
  %t192 = sub i64 %t190, 1
  %t193 = load i64, ptr %l13, !tbaa !24
  %t196 = sdiv i64 %t192, %t193
  store i64 %t196, ptr %l131, !tbaa !24
  br label %bb32
bb31:
  store i64 0, ptr %l131, !tbaa !24
  br label %bb32
bb32:
  %t198 = load i64, ptr %l131, !tbaa !24
  store i64 %t198, ptr %l128, !tbaa !24
  br label %bb33
bb33:
  %t199 = load i64, ptr %l128, !tbaa !24
  store i64 %t199, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb34
bb34:
  %t200 = load i64, ptr %l15, !tbaa !24
  %t201 = load i64, ptr %l14, !tbaa !24
  %t204 = icmp slt i64 %t200, %t201
  %t206 = xor i1 %t204, true
  br i1 %t206, label %bb35, label %bb36
bb35:
  br label %bb41
bb36:
  br label %bb37
bb37:
  %t208 = load i64, ptr %l11, !tbaa !24
  %t209 = load i64, ptr %l15, !tbaa !24
  %t210 = load i64, ptr %l13, !tbaa !24
  %t213 = mul i64 %t209, %t210
  %t216 = add i64 %t208, %t213
  %t218 = load ptr, ptr %l6, !tbaa !29
  %t220 = getelementptr %"compiler/scope:compRun", ptr %t218, i32 0, i32 4
  store ptr %t220, ptr %l150, !tbaa !29
  %t221 = load ptr, ptr %l0, !tbaa !29
  %t223 = getelementptr %"compiler/scope:Scoper", ptr %t221, i32 0, i32 3
  %t227 = call %"compiler/scope:Gap" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aGap_3e_2eAt_3ccompiler_2fscope_3aGap_3e(ptr %v0, ptr %v0, ptr %t223, i64 %t216)
  store %"compiler/scope:Gap" %t227, ptr %l154
  br label %bb38
bb38:
  %t228 = load ptr, ptr %l150, !tbaa !29
  %t229 = load %"compiler/scope:Gap", ptr %l154
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aGap_3e_2ePush_3ccompiler_2fscope_3aGap_3e(ptr %v2, ptr %v0, ptr %t228, %"compiler/scope:Gap" %t229)
  br label %bb39
bb39:
  br label %bb40
bb40:
  %t230 = load i64, ptr %l15, !tbaa !24
  %t232 = add i64 %t230, 1
  store i64 %t232, ptr %l15, !tbaa !24
  br label %bb34
bb41:
  %t234 = load ptr, ptr %l0, !tbaa !29
  %t236 = getelementptr %"compiler/scope:Scoper", ptr %t234, i32 0, i32 252
  store ptr %t236, ptr %l17, !tbaa !29
  store i64 0, ptr %l18, !tbaa !24
  br label %bb42
bb42:
  %t238 = load i64, ptr %l18, !tbaa !24
  store i64 %t238, ptr %l159, !tbaa !24
  %t239 = load ptr, ptr %l17, !tbaa !29
  %t241 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t239)
  store i64 %t241, ptr %l161
  br label %bb43
bb43:
  %t242 = load i64, ptr %l159, !tbaa !24
  %t243 = load i64, ptr %l161, !tbaa !24
  %t244 = icmp slt i64 %t242, %t243
  %t246 = xor i1 %t244, true
  br i1 %t246, label %bb44, label %bb45
bb44:
  br label %bb50
bb45:
  br label %bb46
bb46:
  %t248 = load ptr, ptr %l17, !tbaa !29
  %t249 = load i64, ptr %l18, !tbaa !24
  %t252 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t248, i64 %t249)
  store i64 %t252, ptr %l166
  br label %bb47
bb47:
  %t253 = load i64, ptr %l166, !tbaa !24
  %t254 = load ptr, ptr %l6, !tbaa !29
  %t256 = getelementptr %"compiler/scope:compRun", ptr %t254, i32 0, i32 5
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v2, ptr %t256, i64 %t253)
  br label %bb48
bb48:
  br label %bb49
bb49:
  %t260 = load i64, ptr %l18, !tbaa !24
  %t262 = add i64 %t260, 1
  store i64 %t262, ptr %l18, !tbaa !24
  br label %bb42
bb50:
  %t264 = load ptr, ptr %l0, !tbaa !29
  %t266 = getelementptr %"compiler/scope:Scoper", ptr %t264, i32 0, i32 253
  store ptr %t266, ptr %l20, !tbaa !29
  store i64 0, ptr %l21, !tbaa !24
  br label %bb51
bb51:
  %t268 = load i64, ptr %l21, !tbaa !24
  store i64 %t268, ptr %l174, !tbaa !24
  %t269 = load ptr, ptr %l20, !tbaa !29
  %t271 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_Hda4ef06466535e66801340e999dad217(ptr %v0, ptr %t269)
  store i64 %t271, ptr %l176
  br label %bb52
bb52:
  %t272 = load i64, ptr %l174, !tbaa !24
  %t273 = load i64, ptr %l176, !tbaa !24
  %t274 = icmp slt i64 %t272, %t273
  %t276 = xor i1 %t274, true
  br i1 %t276, label %bb53, label %bb54
bb53:
  br label %bb59
bb54:
  br label %bb55
bb55:
  %t278 = load ptr, ptr %l20, !tbaa !29
  %t279 = load i64, ptr %l21, !tbaa !24
  %t282 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_H87a29777ccf22aa2985fa9d3c61f9cd3(ptr %v0, ptr %t278, i64 %t279)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t282, ptr %l181
  br label %bb56
bb56:
  %t283 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l181
  %t284 = load ptr, ptr %l6, !tbaa !29
  %t286 = getelementptr %"compiler/scope:compRun", ptr %t284, i32 0, i32 6
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_H2474e1fc3c93452d7765e4ed18f29a03(ptr %v2, ptr %t286, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t283)
  br label %bb57
bb57:
  br label %bb58
bb58:
  %t290 = load i64, ptr %l21, !tbaa !24
  %t292 = add i64 %t290, 1
  store i64 %t292, ptr %l21, !tbaa !24
  br label %bb51
bb59:
  %t294 = load ptr, ptr %l6, !tbaa !29
  %t295 = load ptr, ptr %l0, !tbaa !29
  %t297 = getelementptr %"compiler/scope:Scoper", ptr %t295, i32 0, i32 218
  %t298 = load i64, ptr %t297, !tbaa !24
  %t299 = load i64, ptr %l5, !tbaa !24
  %t302 = sub i64 %t298, %t299
  %t305 = getelementptr %"compiler/scope:compRun", ptr %t294, i32 0, i32 7
  store i64 %t302, ptr %t305, !tbaa !24
  %t306 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t306, ptr %l192
  br label %bb60
bb60:
  %t307 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l192
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t307, ptr %l23
  %t308 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t308, ptr %l24, !tbaa !27
  store i64 0, ptr %l25, !tbaa !24
  %t310 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t312 = extractvalue { i64, ptr } %t310, 0
  store i64 %t312, ptr %l26, !tbaa !24
  br label %bb61
bb61:
  %t314 = load i64, ptr %l25, !tbaa !24
  %t315 = load i64, ptr %l26, !tbaa !24
  %t318 = icmp slt i64 %t314, %t315
  %t320 = xor i1 %t318, true
  br i1 %t320, label %bb62, label %bb63
bb62:
  br label %bb67
bb63:
  br label %bb64
bb64:
  %t322 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t322, ptr %l200, !tbaa !27
  %t323 = load i64, ptr %l25, !tbaa !24
  %t325 = getelementptr { i64, ptr }, ptr %l200, i32 0, i32 1
  %t326 = load ptr, ptr %t325, !tbaa !27
  %t327 = getelementptr i64, ptr %t326, i64 %t323
  %t328 = load i64, ptr %t327, !tbaa !34
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %s0, ptr %l23, i64 %t328, i1 true)
  br label %bb65
bb65:
  br label %bb66
bb66:
  %t333 = load i64, ptr %l25, !tbaa !24
  %t335 = add i64 %t333, 1
  store i64 %t335, ptr %l25, !tbaa !24
  br label %bb61
bb67:
  %t337 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t337, ptr %l28, !tbaa !27
  store i64 0, ptr %l29, !tbaa !24
  %t339 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t341 = extractvalue { i64, ptr } %t339, 0
  store i64 %t341, ptr %l30, !tbaa !24
  br label %bb68
bb68:
  %t343 = load i64, ptr %l29, !tbaa !24
  %t344 = load i64, ptr %l30, !tbaa !24
  %t347 = icmp slt i64 %t343, %t344
  %t349 = xor i1 %t347, true
  br i1 %t349, label %bb69, label %bb70
bb69:
  br label %bb94
bb70:
  br label %bb71
bb71:
  %t351 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t351, ptr %l214, !tbaa !27
  %t352 = load i64, ptr %l29, !tbaa !24
  %t354 = getelementptr { i64, ptr }, ptr %l214, i32 0, i32 1
  %t355 = load ptr, ptr %t354, !tbaa !27
  %t356 = getelementptr i64, ptr %t355, i64 %t352
  %t357 = load i64, ptr %t356, !tbaa !34
  store i64 %t357, ptr %l31, !tbaa !24
  %t359 = load ptr, ptr %l0, !tbaa !29
  %t360 = load i64, ptr %l31, !tbaa !24
  %t363 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisCtorBody(ptr %v0, ptr %t359, i64 %t360)
  store i1 %t363, ptr %l219
  br label %bb72
bb72:
  %t364 = load i1, ptr %l219, !tbaa !21
  %t365 = xor i1 %t364, true
  br i1 %t365, label %bb73, label %bb74
bb73:
  br label %bb93
bb74:
  br label %bb75
bb75:
  store i64 0, ptr %l32, !tbaa !24
  %t367 = load ptr, ptr %l0, !tbaa !29
  %t369 = getelementptr %"compiler/scope:Scoper", ptr %t367, i32 0, i32 1
  %t370 = load i64, ptr %l31, !tbaa !24
  %t373 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t369, i64 %t370)
  store ptr %t373, ptr %l224
  br label %bb76
bb76:
  %t374 = load ptr, ptr %l224, !tbaa !29
  %t376 = getelementptr %"compiler/typed:Body", ptr %t374, i32 0, i32 10
  %t378 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t376)
  store i64 %t378, ptr %l227
  br label %bb77
bb77:
  %t379 = load i64, ptr %l227, !tbaa !24
  store i64 %t379, ptr %l33, !tbaa !24
  store i64 1, ptr %l34, !tbaa !24
  %t380 = load i64, ptr %l33, !tbaa !24
  %t381 = load i64, ptr %l32, !tbaa !24
  %t384 = icmp sgt i64 %t380, %t381
  br i1 %t384, label %bb78, label %bb79
bb78:
  %t386 = load i64, ptr %l34, !tbaa !24
  %t388 = icmp sgt i64 %t386, 0
  br i1 %t388, label %bb80, label %bb81
bb79:
  store i64 0, ptr %l231, !tbaa !24
  br label %bb83
bb80:
  %t390 = load i64, ptr %l33, !tbaa !24
  %t391 = load i64, ptr %l32, !tbaa !24
  %t394 = sub i64 %t390, %t391
  %t395 = load i64, ptr %l34, !tbaa !24
  %t398 = add i64 %t394, %t395
  %t400 = sub i64 %t398, 1
  %t401 = load i64, ptr %l34, !tbaa !24
  %t404 = sdiv i64 %t400, %t401
  store i64 %t404, ptr %l234, !tbaa !24
  br label %bb82
bb81:
  store i64 0, ptr %l234, !tbaa !24
  br label %bb82
bb82:
  %t406 = load i64, ptr %l234, !tbaa !24
  store i64 %t406, ptr %l231, !tbaa !24
  br label %bb83
bb83:
  %t407 = load i64, ptr %l231, !tbaa !24
  store i64 %t407, ptr %l35, !tbaa !24
  store i64 0, ptr %l36, !tbaa !24
  br label %bb84
bb84:
  store %olang.scope zeroinitializer, ptr %s20
  %t408 = load i64, ptr %l36, !tbaa !24
  %t409 = load i64, ptr %l35, !tbaa !24
  %t412 = icmp slt i64 %t408, %t409
  %t414 = xor i1 %t412, true
  br i1 %t414, label %bb85, label %bb86
bb85:
  call void @__olang_scope_close(ptr %s20)
  br label %bb92
bb86:
  br label %bb87
bb87:
  %t416 = load i64, ptr %l32, !tbaa !24
  %t417 = load i64, ptr %l36, !tbaa !24
  %t418 = load i64, ptr %l34, !tbaa !24
  %t421 = mul i64 %t417, %t418
  %t424 = add i64 %t416, %t421
  store i64 %t424, ptr %l37, !tbaa !24
  %t426 = load ptr, ptr %l0, !tbaa !29
  %t428 = getelementptr %"compiler/scope:Scoper", ptr %t426, i32 0, i32 250
  store ptr %t428, ptr %l253, !tbaa !29
  %t429 = load i64, ptr %l31, !tbaa !24
  %t430 = load i64, ptr %l37, !tbaa !24
  %t433 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s20, i64 %t429, i64 %t430)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t433, ptr %l256
  br label %bb88
bb88:
  %t434 = load ptr, ptr %l0, !tbaa !29
  %t435 = load i64, ptr %l31, !tbaa !24
  %t436 = load i64, ptr %l37, !tbaa !24
  %t440 = call { i64, [1 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efieldMarkOf(ptr %v0, ptr %t434, i64 %t435, i64 %t436)
  store { i64, [1 x i64] } %t440, ptr %l260
  br label %bb89
bb89:
  %t441 = load ptr, ptr %l253, !tbaa !29
  %t442 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l256
  %t443 = load { i64, [1 x i64] }, ptr %l260
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hd10c34cdbfb7fa3abdb8b5399b1b7292(ptr %v0, ptr %t441, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t442, { i64, [1 x i64] } %t443)
  br label %bb90
bb90:
  call void @__olang_scope_close(ptr %s20)
  br label %bb91
bb91:
  %t444 = load i64, ptr %l36, !tbaa !24
  %t446 = add i64 %t444, 1
  store i64 %t446, ptr %l36, !tbaa !24
  br label %bb84
bb92:
  br label %bb93
bb93:
  %t448 = load i64, ptr %l29, !tbaa !24
  %t450 = add i64 %t448, 1
  store i64 %t450, ptr %l29, !tbaa !24
  br label %bb68
bb94:
  %t452 = load ptr, ptr %l0, !tbaa !29
  %t454 = getelementptr %"compiler/scope:Scoper", ptr %t452, i32 0, i32 250
  %t456 = call %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H50865c14e146750fabc3646cdf4e5c35(ptr %v0, ptr %v0, ptr %t454)
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t456, ptr %l267
  br label %bb95
bb95:
  %t457 = load %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l267
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t457, ptr %l38
  br label %bb96
bb96:
  store %olang.scope zeroinitializer, ptr %s24
  %t459 = call { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cstd_2fpair_3aPair_3cI64_2c_20I6_H7a20b16ee5db8b6f13354f5ea8a89b5b(ptr %v0, ptr %l38)
  %t460 = extractvalue { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } %t459, 1
  %t461 = extractvalue { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } %t459, 0
  store i32 %t461, ptr %l271
  %t462 = icmp ne i32 %t461, 0
  br i1 %t462, label %bb98, label %ok.463, !prof !99
ok.463:
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t460, ptr %l270
  br label %bb97
bb97:
  %t464 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l270
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t464, ptr %l268
  br label %bb100
bb98:
  %t465 = load i32, ptr %l271, !tbaa !23
  %t466 = ashr i32 %t465, 16
  %t468 = icmp eq i32 %t466, 1
  store i1 %t468, ptr %l273, !tbaa !21
  br label %bb99
bb99:
  call void @__olang_scope_close(ptr %s24)
  br label %bb108
bb100:
  %t469 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l268
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t469, ptr %l39
  %t470 = load ptr, ptr %l6, !tbaa !29
  %t472 = getelementptr %"compiler/scope:compRun", ptr %t470, i32 0, i32 8
  store ptr %t472, ptr %l275, !tbaa !29
  %t473 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l39, i32 0, i32 0
  %t474 = load i64, ptr %t473, !tbaa !24
  store i64 %t474, ptr %l276, !tbaa !24
  %t475 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l39, i32 0, i32 1
  %t476 = load i64, ptr %t475, !tbaa !24
  store i64 %t476, ptr %l277, !tbaa !24
  %t477 = load ptr, ptr %l0, !tbaa !29
  %t479 = getelementptr %"compiler/scope:Scoper", ptr %t477, i32 0, i32 250
  %t480 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l39
  %t483 = call { i32, { i64, [1 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hc5984ad8092bcc1f8400c6a3aa96b134(ptr %v0, ptr %t479, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t480)
  %t484 = extractvalue { i32, { i64, [1 x i64] } } %t483, 1
  %t485 = extractvalue { i32, { i64, [1 x i64] } } %t483, 0
  store i32 %t485, ptr %l283
  %t486 = icmp ne i32 %t485, 0
  br i1 %t486, label %bb102, label %ok.487, !prof !99
ok.487:
  store { i64, [1 x i64] } %t484, ptr %l282
  br label %bb101
bb101:
  %t488 = load { i64, [1 x i64] }, ptr %l282
  store { i64, [1 x i64] } %t488, ptr %l278
  br label %bb104
bb102:
  br label %bb103
bb103:
  store { i64, [1 x i64] } zeroinitializer, ptr %t489
  %t490 = getelementptr { i64, [1 x i64] }, ptr %t489, i32 0, i32 0
  store i64 0, ptr %t490
  %t491 = load { i64, [1 x i64] }, ptr %t489
  store { i64, [1 x i64] } %t491, ptr %l278
  br label %bb104
bb104:
  %t493 = load i64, ptr %l276, !tbaa !24
  %t494 = load i64, ptr %l277, !tbaa !24
  %t495 = load { i64, [1 x i64] }, ptr %l278
  %t496 = call %"compiler/scope:markRead" @compiler_2fscope_3amarkRead_2ector(ptr %s24, i64 %t493, i64 %t494, { i64, [1 x i64] } %t495)
  store %"compiler/scope:markRead" %t496, ptr %l285
  br label %bb105
bb105:
  %t497 = load ptr, ptr %l275, !tbaa !29
  %t498 = load %"compiler/scope:markRead", ptr %l285
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3amarkRead_3e_2ePush_3ccompiler_2fscope_3amarkRead_3e(ptr %v2, ptr %t497, %"compiler/scope:markRead" %t498)
  br label %bb106
bb106:
  call void @__olang_scope_close(ptr %s24)
  br label %bb107
bb107:
  br label %bb96
bb108:
  %t499 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t499, ptr %l40, !tbaa !27
  store i64 0, ptr %l41, !tbaa !24
  %t501 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t503 = extractvalue { i64, ptr } %t501, 0
  store i64 %t503, ptr %l42, !tbaa !24
  br label %bb109
bb109:
  %t505 = load i64, ptr %l41, !tbaa !24
  %t506 = load i64, ptr %l42, !tbaa !24
  %t509 = icmp slt i64 %t505, %t506
  %t511 = xor i1 %t509, true
  br i1 %t511, label %bb110, label %bb111
bb110:
  br label %bb135
bb111:
  br label %bb112
bb112:
  %t513 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t513, ptr %l293, !tbaa !27
  %t514 = load i64, ptr %l41, !tbaa !24
  %t516 = getelementptr { i64, ptr }, ptr %l293, i32 0, i32 1
  %t517 = load ptr, ptr %t516, !tbaa !27
  %t518 = getelementptr i64, ptr %t517, i64 %t514
  %t519 = load i64, ptr %t518, !tbaa !34
  store i64 %t519, ptr %l43, !tbaa !24
  %t521 = load ptr, ptr %l0, !tbaa !29
  %t523 = getelementptr %"compiler/scope:Scoper", ptr %t521, i32 0, i32 13
  %t524 = load i64, ptr %l43, !tbaa !24
  %t527 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t523, i64 %t524)
  store i64 %t527, ptr %l299
  br label %bb113
bb113:
  %t528 = load i64, ptr %l299, !tbaa !24
  store i64 %t528, ptr %l44, !tbaa !24
  %t529 = load ptr, ptr %l0, !tbaa !29
  %t531 = getelementptr %"compiler/scope:Scoper", ptr %t529, i32 0, i32 13
  %t532 = load i64, ptr %l43, !tbaa !24
  %t534 = add i64 %t532, 1
  %t537 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t531, i64 %t534)
  store i64 %t537, ptr %l304
  br label %bb114
bb114:
  %t538 = load i64, ptr %l304, !tbaa !24
  store i64 %t538, ptr %l45, !tbaa !24
  store i64 1, ptr %l46, !tbaa !24
  %t539 = load i64, ptr %l45, !tbaa !24
  %t540 = load i64, ptr %l44, !tbaa !24
  %t543 = icmp sgt i64 %t539, %t540
  br i1 %t543, label %bb115, label %bb116
bb115:
  %t545 = load i64, ptr %l46, !tbaa !24
  %t547 = icmp sgt i64 %t545, 0
  br i1 %t547, label %bb117, label %bb118
bb116:
  store i64 0, ptr %l308, !tbaa !24
  br label %bb120
bb117:
  %t549 = load i64, ptr %l45, !tbaa !24
  %t550 = load i64, ptr %l44, !tbaa !24
  %t553 = sub i64 %t549, %t550
  %t554 = load i64, ptr %l46, !tbaa !24
  %t557 = add i64 %t553, %t554
  %t559 = sub i64 %t557, 1
  %t560 = load i64, ptr %l46, !tbaa !24
  %t563 = sdiv i64 %t559, %t560
  store i64 %t563, ptr %l311, !tbaa !24
  br label %bb119
bb118:
  store i64 0, ptr %l311, !tbaa !24
  br label %bb119
bb119:
  %t565 = load i64, ptr %l311, !tbaa !24
  store i64 %t565, ptr %l308, !tbaa !24
  br label %bb120
bb120:
  %t566 = load i64, ptr %l308, !tbaa !24
  store i64 %t566, ptr %l47, !tbaa !24
  store i64 0, ptr %l48, !tbaa !24
  br label %bb121
bb121:
  %t567 = load i64, ptr %l48, !tbaa !24
  %t568 = load i64, ptr %l47, !tbaa !24
  %t571 = icmp slt i64 %t567, %t568
  %t573 = xor i1 %t571, true
  br i1 %t573, label %bb122, label %bb123
bb122:
  br label %bb133
bb123:
  br label %bb124
bb124:
  %t575 = load i64, ptr %l44, !tbaa !24
  %t576 = load i64, ptr %l48, !tbaa !24
  %t577 = load i64, ptr %l46, !tbaa !24
  %t580 = mul i64 %t576, %t577
  %t583 = add i64 %t575, %t580
  store i64 %t583, ptr %l49, !tbaa !24
  store ptr %l23, ptr %l329, !tbaa !29
  %t585 = load ptr, ptr %l0, !tbaa !29
  %t587 = getelementptr %"compiler/scope:Scoper", ptr %t585, i32 0, i32 14
  %t588 = load i64, ptr %l49, !tbaa !24
  %t591 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t587, i64 %t588)
  store i64 %t591, ptr %l333
  br label %bb125
bb125:
  %t592 = load ptr, ptr %l329, !tbaa !29
  %t593 = load i64, ptr %l333, !tbaa !24
  %t594 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %s0, ptr %t592, i64 %t593)
  store i1 %t594, ptr %l334
  br label %bb126
bb126:
  %t595 = load i1, ptr %l334, !tbaa !21
  %t596 = xor i1 %t595, true
  br i1 %t596, label %bb127, label %bb128
bb127:
  %t598 = load ptr, ptr %l0, !tbaa !29
  %t600 = getelementptr %"compiler/scope:Scoper", ptr %t598, i32 0, i32 251
  store ptr %t600, ptr %l337, !tbaa !29
  %t601 = load ptr, ptr %l0, !tbaa !29
  %t603 = getelementptr %"compiler/scope:Scoper", ptr %t601, i32 0, i32 14
  %t604 = load i64, ptr %l49, !tbaa !24
  %t607 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t603, i64 %t604)
  store i64 %t607, ptr %l341
  br label %bb129
bb128:
  br label %bb131
bb129:
  %t608 = load ptr, ptr %l337, !tbaa !29
  %t609 = load i64, ptr %l341, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t608, i64 %t609, i1 true)
  br label %bb130
bb130:
  br label %bb131
bb131:
  br label %bb132
bb132:
  %t610 = load i64, ptr %l48, !tbaa !24
  %t612 = add i64 %t610, 1
  store i64 %t612, ptr %l48, !tbaa !24
  br label %bb121
bb133:
  br label %bb134
bb134:
  %t614 = load i64, ptr %l41, !tbaa !24
  %t616 = add i64 %t614, 1
  store i64 %t616, ptr %l41, !tbaa !24
  br label %bb109
bb135:
  %t618 = load ptr, ptr %l0, !tbaa !29
  %t620 = getelementptr %"compiler/scope:Scoper", ptr %t618, i32 0, i32 251
  %t622 = call %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eKeys_3cI64_2c_20Bool_3e(ptr %v0, ptr %v0, ptr %t620)
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t622, ptr %l348
  br label %bb136
bb136:
  %t623 = load %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l348
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t623, ptr %l50
  br label %bb137
bb137:
  %t625 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cI64_2c_20Bool_3e_2eNext_3cI64_2c_20Bool_3e(ptr %v0, ptr %l50)
  %t626 = extractvalue { i32, i64 } %t625, 1
  %t627 = extractvalue { i32, i64 } %t625, 0
  store i32 %t627, ptr %l352
  %t628 = icmp ne i32 %t627, 0
  br i1 %t628, label %bb139, label %ok.629, !prof !99
ok.629:
  store i64 %t626, ptr %l351
  br label %bb138
bb138:
  %t630 = load i64, ptr %l351, !tbaa !24
  store i64 %t630, ptr %l349, !tbaa !24
  br label %bb141
bb139:
  %t631 = load i32, ptr %l352, !tbaa !23
  %t632 = ashr i32 %t631, 16
  %t634 = icmp eq i32 %t632, 1
  store i1 %t634, ptr %l354, !tbaa !21
  br label %bb140
bb140:
  br label %bb150
bb141:
  %t635 = load i64, ptr %l349, !tbaa !24
  store i64 %t635, ptr %l51, !tbaa !24
  %t636 = load i64, ptr %l51, !tbaa !24
  %t639 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %s0, ptr %l23, i64 %t636)
  store i1 %t639, ptr %l357
  br label %bb142
bb142:
  %t640 = load i1, ptr %l357, !tbaa !21
  %t641 = xor i1 %t640, true
  br i1 %t641, label %bb143, label %bb144
bb143:
  %t643 = load ptr, ptr %l6, !tbaa !29
  %t645 = getelementptr %"compiler/scope:compRun", ptr %t643, i32 0, i32 9
  store ptr %t645, ptr %l360, !tbaa !29
  %t646 = load i64, ptr %l51, !tbaa !24
  store i64 %t646, ptr %l361, !tbaa !24
  %t647 = load ptr, ptr %l0, !tbaa !29
  %t649 = getelementptr %"compiler/scope:Scoper", ptr %t647, i32 0, i32 6
  %t650 = load i64, ptr %l51, !tbaa !24
  %t653 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t649, i64 %t650)
  store ptr %t653, ptr %l365
  br label %bb145
bb144:
  br label %bb148
bb145:
  %t654 = load i64, ptr %l361, !tbaa !24
  %t655 = load ptr, ptr %l365, !tbaa !29
  %t656 = call %"compiler/scope:sumRead" @compiler_2fscope_3asumRead_2ector(ptr %v0, ptr %v2, i64 %t654, ptr %t655)
  store %"compiler/scope:sumRead" %t656, ptr %l366
  br label %bb146
bb146:
  %t657 = load ptr, ptr %l360, !tbaa !29
  %t658 = load %"compiler/scope:sumRead", ptr %l366
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3asumRead_3e_2ePush_3ccompiler_2fscope_3asumRead_3e(ptr %v2, ptr %v2, ptr %t657, %"compiler/scope:sumRead" %t658)
  br label %bb147
bb147:
  br label %bb148
bb148:
  br label %bb149
bb149:
  br label %bb137
bb150:
  %t659 = load ptr, ptr %l6, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t659, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejudgeOnce(ptr %v0, ptr %a0, i64 %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i1
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
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l26 = alloca i64
  %l29 = alloca i64
  %l34 = alloca i64
  %l37 = alloca i64
  %l40 = alloca i64
  %l43 = alloca i64
  %l44 = alloca ptr
  %l47 = alloca i1
  %l60 = alloca i1
  %l65 = alloca i64
  %l69 = alloca ptr
  %l91 = alloca i64
  %l95 = alloca i64
  %l98 = alloca i64
  %l117 = alloca ptr
  %l121 = alloca i64
  %l122 = alloca i1
  %l128 = alloca i64
  %l132 = alloca i64
  %l135 = alloca i64
  %l154 = alloca ptr
  %l158 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l159 = alloca i1
  %l170 = alloca { i64, ptr }
  %l172 = alloca ptr
  %l173 = alloca i64
  %l174 = alloca %"compiler/scope:summary"
  %s0 = alloca %olang.scope
  %rv = alloca i1
  %t321 = alloca %"compiler/scope:summary", align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i1 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 0
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = getelementptr %"compiler/load:Loader", ptr %t7, i32 0, i32 4
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCount(ptr %v0, ptr %t10)
  store i64 %t12, ptr %l26
  br label %bb1
bb1:
  %t13 = load i64, ptr %l26, !tbaa !24
  store i64 %t13, ptr %l3, !tbaa !24
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/scope:Scoper", ptr %t14, i32 0, i32 3
  %t18 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aGap_3e_2eLen_3ccompiler_2fscope_3aGap_3e(ptr %v0, ptr %t16)
  store i64 %t18, ptr %l29
  br label %bb2
bb2:
  %t19 = load i64, ptr %l29, !tbaa !24
  store i64 %t19, ptr %l4, !tbaa !24
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/scope:Scoper", ptr %t20, i32 0, i32 218
  %t23 = load i64, ptr %t22, !tbaa !24
  store i64 %t23, ptr %l5, !tbaa !24
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/scope:Scoper", ptr %t25, i32 0, i32 252
  %t29 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t27)
  store i64 %t29, ptr %l34
  br label %bb3
bb3:
  %t30 = load i64, ptr %l34, !tbaa !24
  store i64 %t30, ptr %l6, !tbaa !24
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/scope:Scoper", ptr %t31, i32 0, i32 253
  %t35 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_Hda4ef06466535e66801340e999dad217(ptr %v0, ptr %t33)
  store i64 %t35, ptr %l37
  br label %bb4
bb4:
  %t36 = load i64, ptr %l37, !tbaa !24
  store i64 %t36, ptr %l7, !tbaa !24
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/scope:Scoper", ptr %t37, i32 0, i32 254
  %t41 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t39)
  store i64 %t41, ptr %l40
  br label %bb5
bb5:
  %t42 = load i64, ptr %l40, !tbaa !24
  store i64 %t42, ptr %l8, !tbaa !24
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/scope:Scoper", ptr %t43, i32 0, i32 255
  %t47 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_Hda4ef06466535e66801340e999dad217(ptr %v0, ptr %t45)
  store i64 %t47, ptr %l43
  br label %bb6
bb6:
  %t48 = load i64, ptr %l43, !tbaa !24
  store i64 %t48, ptr %l9, !tbaa !24
  %t49 = load ptr, ptr %l0, !tbaa !29
  store ptr %t49, ptr %l44, !tbaa !29
  %t50 = load i1, ptr %l2, !tbaa !21
  %t52 = xor i1 %t50, true
  br i1 %t52, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l47, !tbaa !21
  br label %bb9
bb8:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/scope:Scoper", ptr %t54, i32 0, i32 217
  %t57 = load i1, ptr %t56, !tbaa !21
  store i1 %t57, ptr %l47, !tbaa !21
  br label %bb9
bb9:
  %t59 = load i1, ptr %l47, !tbaa !21
  %t60 = load ptr, ptr %l44, !tbaa !29
  %t61 = getelementptr %"compiler/scope:Scoper", ptr %t60, i32 0, i32 220
  store i1 %t59, ptr %t61, !tbaa !21
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/scope:Scoper", ptr %t62, i32 0, i32 147
  store i1 true, ptr %t64, !tbaa !21
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/scope:Scoper", ptr %t65, i32 0, i32 148
  store i1 false, ptr %t67, !tbaa !21
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load i64, ptr %l1, !tbaa !24
  %t70 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejudge(ptr %v0, ptr %t68, i64 %t69, i1 %t70)
  br label %bb10
bb10:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/scope:Scoper", ptr %t74, i32 0, i32 147
  store i1 false, ptr %t76, !tbaa !21
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/scope:Scoper", ptr %t77, i32 0, i32 220
  store i1 false, ptr %t79, !tbaa !21
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/scope:Scoper", ptr %t80, i32 0, i32 148
  %t83 = load i1, ptr %t82, !tbaa !21
  %t85 = xor i1 %t83, true
  br i1 %t85, label %bb11, label %bb12
bb11:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/scope:Scoper", ptr %t87, i32 0, i32 0
  %t90 = load ptr, ptr %t89, !tbaa !29
  %t92 = getelementptr %"compiler/generic:Program", ptr %t90, i32 0, i32 0
  %t93 = load ptr, ptr %t92, !tbaa !29
  %t95 = getelementptr %"compiler/load:Loader", ptr %t93, i32 0, i32 4
  %t96 = load ptr, ptr %t95, !tbaa !29
  %t98 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCount(ptr %v0, ptr %t96)
  store i64 %t98, ptr %l65
  br label %bb13
bb12:
  store i1 false, ptr %l60, !tbaa !21
  br label %bb14
bb13:
  %t99 = load i64, ptr %l3, !tbaa !24
  %t100 = load i64, ptr %l65, !tbaa !24
  %t102 = icmp eq i64 %t100, %t99
  store i1 %t102, ptr %l60, !tbaa !21
  br label %bb14
bb14:
  %t104 = load i1, ptr %l60, !tbaa !21
  br i1 %t104, label %bb15, label %bb16
bb15:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t106 = load ptr, ptr %l0, !tbaa !29
  store ptr %t106, ptr %l69, !tbaa !29
  %t107 = load ptr, ptr %l69, !tbaa !29
  %t108 = getelementptr %"compiler/scope:Scoper", ptr %t107, i32 0, i32 247
  %t109 = load i64, ptr %t108, !tbaa !24
  %t111 = add i64 %t109, 1
  %t113 = load ptr, ptr %l69, !tbaa !29
  %t114 = getelementptr %"compiler/scope:Scoper", ptr %t113, i32 0, i32 247
  store i64 %t111, ptr %t114, !tbaa !24
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t117 = getelementptr %"compiler/scope:Scoper", ptr %t115, i32 0, i32 0
  %t118 = load ptr, ptr %t117, !tbaa !29
  %t120 = getelementptr %"compiler/generic:Program", ptr %t118, i32 0, i32 0
  %t121 = load ptr, ptr %t120, !tbaa !29
  %t123 = getelementptr %"compiler/load:Loader", ptr %t121, i32 0, i32 4
  %t124 = load ptr, ptr %t123, !tbaa !29
  %t125 = load i64, ptr %l3, !tbaa !24
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eForget(ptr %v0, ptr %t124, i64 %t125)
  br label %bb18
bb18:
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t130 = getelementptr %"compiler/scope:Scoper", ptr %t128, i32 0, i32 3
  %t131 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aGap_3e_2eTruncate_3ccompiler_2fscope_3aGap_3e(ptr %v0, ptr %t130, i64 %t131)
  br label %bb19
bb19:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t135 = load i64, ptr %l5, !tbaa !24
  %t138 = getelementptr %"compiler/scope:Scoper", ptr %t134, i32 0, i32 218
  store i64 %t135, ptr %t138, !tbaa !24
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t141 = getelementptr %"compiler/scope:Scoper", ptr %t139, i32 0, i32 252
  %t142 = load i64, ptr %l6, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eTruncate_3cI64_3e(ptr %v0, ptr %t141, i64 %t142)
  br label %bb20
bb20:
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t147 = getelementptr %"compiler/scope:Scoper", ptr %t145, i32 0, i32 253
  %t148 = load i64, ptr %l7, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_Haf2ee04ed658e65f26719862d5a58e20(ptr %v0, ptr %t147, i64 %t148)
  br label %bb21
bb21:
  %t151 = load i64, ptr %l8, !tbaa !24
  store i64 %t151, ptr %l10, !tbaa !24
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t155 = getelementptr %"compiler/scope:Scoper", ptr %t153, i32 0, i32 254
  %t157 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t155)
  store i64 %t157, ptr %l91
  br label %bb22
bb22:
  %t158 = load i64, ptr %l91, !tbaa !24
  store i64 %t158, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t159 = load i64, ptr %l11, !tbaa !24
  %t160 = load i64, ptr %l10, !tbaa !24
  %t163 = icmp sgt i64 %t159, %t160
  br i1 %t163, label %bb23, label %bb24
bb23:
  %t165 = load i64, ptr %l12, !tbaa !24
  %t167 = icmp sgt i64 %t165, 0
  br i1 %t167, label %bb25, label %bb26
bb24:
  store i64 0, ptr %l95, !tbaa !24
  br label %bb28
bb25:
  %t169 = load i64, ptr %l11, !tbaa !24
  %t170 = load i64, ptr %l10, !tbaa !24
  %t173 = sub i64 %t169, %t170
  %t174 = load i64, ptr %l12, !tbaa !24
  %t177 = add i64 %t173, %t174
  %t179 = sub i64 %t177, 1
  %t180 = load i64, ptr %l12, !tbaa !24
  %t183 = sdiv i64 %t179, %t180
  store i64 %t183, ptr %l98, !tbaa !24
  br label %bb27
bb26:
  store i64 0, ptr %l98, !tbaa !24
  br label %bb27
bb27:
  %t185 = load i64, ptr %l98, !tbaa !24
  store i64 %t185, ptr %l95, !tbaa !24
  br label %bb28
bb28:
  %t186 = load i64, ptr %l95, !tbaa !24
  store i64 %t186, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb29
bb29:
  %t187 = load i64, ptr %l14, !tbaa !24
  %t188 = load i64, ptr %l13, !tbaa !24
  %t191 = icmp slt i64 %t187, %t188
  %t193 = xor i1 %t191, true
  br i1 %t193, label %bb30, label %bb31
bb30:
  br label %bb36
bb31:
  br label %bb32
bb32:
  %t195 = load i64, ptr %l10, !tbaa !24
  %t196 = load i64, ptr %l14, !tbaa !24
  %t197 = load i64, ptr %l12, !tbaa !24
  %t200 = mul i64 %t196, %t197
  %t203 = add i64 %t195, %t200
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t207 = getelementptr %"compiler/scope:Scoper", ptr %t205, i32 0, i32 221
  store ptr %t207, ptr %l117, !tbaa !29
  %t208 = load ptr, ptr %l0, !tbaa !29
  %t210 = getelementptr %"compiler/scope:Scoper", ptr %t208, i32 0, i32 254
  %t214 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t210, i64 %t203)
  store i64 %t214, ptr %l121
  br label %bb33
bb33:
  %t215 = load ptr, ptr %l117, !tbaa !29
  %t216 = load i64, ptr %l121, !tbaa !24
  %t217 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eRemove_3cI64_2c_20Bool_3e(ptr %v0, ptr %t215, i64 %t216)
  store i1 %t217, ptr %l122
  br label %bb34
bb34:
  br label %bb35
bb35:
  %t218 = load i64, ptr %l14, !tbaa !24
  %t220 = add i64 %t218, 1
  store i64 %t220, ptr %l14, !tbaa !24
  br label %bb29
bb36:
  %t222 = load i64, ptr %l9, !tbaa !24
  store i64 %t222, ptr %l16, !tbaa !24
  %t224 = load ptr, ptr %l0, !tbaa !29
  %t226 = getelementptr %"compiler/scope:Scoper", ptr %t224, i32 0, i32 255
  %t228 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_Hda4ef06466535e66801340e999dad217(ptr %v0, ptr %t226)
  store i64 %t228, ptr %l128
  br label %bb37
bb37:
  %t229 = load i64, ptr %l128, !tbaa !24
  store i64 %t229, ptr %l17, !tbaa !24
  store i64 1, ptr %l18, !tbaa !24
  %t230 = load i64, ptr %l17, !tbaa !24
  %t231 = load i64, ptr %l16, !tbaa !24
  %t234 = icmp sgt i64 %t230, %t231
  br i1 %t234, label %bb38, label %bb39
bb38:
  %t236 = load i64, ptr %l18, !tbaa !24
  %t238 = icmp sgt i64 %t236, 0
  br i1 %t238, label %bb40, label %bb41
bb39:
  store i64 0, ptr %l132, !tbaa !24
  br label %bb43
bb40:
  %t240 = load i64, ptr %l17, !tbaa !24
  %t241 = load i64, ptr %l16, !tbaa !24
  %t244 = sub i64 %t240, %t241
  %t245 = load i64, ptr %l18, !tbaa !24
  %t248 = add i64 %t244, %t245
  %t250 = sub i64 %t248, 1
  %t251 = load i64, ptr %l18, !tbaa !24
  %t254 = sdiv i64 %t250, %t251
  store i64 %t254, ptr %l135, !tbaa !24
  br label %bb42
bb41:
  store i64 0, ptr %l135, !tbaa !24
  br label %bb42
bb42:
  %t256 = load i64, ptr %l135, !tbaa !24
  store i64 %t256, ptr %l132, !tbaa !24
  br label %bb43
bb43:
  %t257 = load i64, ptr %l132, !tbaa !24
  store i64 %t257, ptr %l19, !tbaa !24
  store i64 0, ptr %l20, !tbaa !24
  br label %bb44
bb44:
  %t258 = load i64, ptr %l20, !tbaa !24
  %t259 = load i64, ptr %l19, !tbaa !24
  %t262 = icmp slt i64 %t258, %t259
  %t264 = xor i1 %t262, true
  br i1 %t264, label %bb45, label %bb46
bb45:
  br label %bb51
bb46:
  br label %bb47
bb47:
  %t266 = load i64, ptr %l16, !tbaa !24
  %t267 = load i64, ptr %l20, !tbaa !24
  %t268 = load i64, ptr %l18, !tbaa !24
  %t271 = mul i64 %t267, %t268
  %t274 = add i64 %t266, %t271
  %t276 = load ptr, ptr %l0, !tbaa !29
  %t278 = getelementptr %"compiler/scope:Scoper", ptr %t276, i32 0, i32 222
  store ptr %t278, ptr %l154, !tbaa !29
  %t279 = load ptr, ptr %l0, !tbaa !29
  %t281 = getelementptr %"compiler/scope:Scoper", ptr %t279, i32 0, i32 255
  %t285 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_H87a29777ccf22aa2985fa9d3c61f9cd3(ptr %v0, ptr %t281, i64 %t274)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t285, ptr %l158
  br label %bb48
bb48:
  %t286 = load ptr, ptr %l154, !tbaa !29
  %t287 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l158
  %t288 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H8cf0101d1da75ad9e65d10673bedc6a2(ptr %v0, ptr %t286, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t287)
  store i1 %t288, ptr %l159
  br label %bb49
bb49:
  br label %bb50
bb50:
  %t289 = load i64, ptr %l20, !tbaa !24
  %t291 = add i64 %t289, 1
  store i64 %t291, ptr %l20, !tbaa !24
  br label %bb44
bb51:
  %t293 = load ptr, ptr %l0, !tbaa !29
  %t295 = getelementptr %"compiler/scope:Scoper", ptr %t293, i32 0, i32 254
  %t296 = load i64, ptr %l8, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eTruncate_3cI64_3e(ptr %v0, ptr %t295, i64 %t296)
  br label %bb52
bb52:
  %t299 = load ptr, ptr %l0, !tbaa !29
  %t301 = getelementptr %"compiler/scope:Scoper", ptr %t299, i32 0, i32 255
  %t302 = load i64, ptr %l9, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_Haf2ee04ed658e65f26719862d5a58e20(ptr %v0, ptr %t301, i64 %t302)
  br label %bb53
bb53:
  %t305 = load ptr, ptr %l0, !tbaa !29
  %t306 = load i64, ptr %l1, !tbaa !24
  %t307 = mul i64 1, 8
  %t308 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t307)
  %t309 = insertvalue { i64, ptr } undef, i64 1, 0
  %t310 = insertvalue { i64, ptr } %t309, ptr %t308, 1
  store { i64, ptr } %t310, ptr %l170, !tbaa !27
  %t312 = getelementptr { i64, ptr }, ptr %l170, i32 0, i32 1
  %t313 = load ptr, ptr %t312, !tbaa !27
  %t314 = getelementptr i64, ptr %t313, i64 0
  store i64 %t306, ptr %t314, !tbaa !34
  %t316 = load { i64, ptr }, ptr %l170, !tbaa !27
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edropLifts(ptr %v0, ptr %s0, ptr %t305, { i64, ptr } %t316)
  br label %bb54
bb54:
  %t317 = load ptr, ptr %l0, !tbaa !29
  %t319 = getelementptr %"compiler/scope:Scoper", ptr %t317, i32 0, i32 6
  store ptr %t319, ptr %l172, !tbaa !29
  %t320 = load i64, ptr %l1, !tbaa !24
  store i64 %t320, ptr %l173, !tbaa !24
  call void @compiler_2fscope_3asummary_2ector(ptr %t321, ptr %v0)
  call void @llvm.memmove.p0.p0.i64(ptr %l174, ptr %t321, i64 624, i1 false)
  br label %bb55
bb55:
  %t322 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 624, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t322, ptr %l174, i64 624, i1 false)
  %t323 = load ptr, ptr %l172, !tbaa !29
  %t324 = load i64, ptr %l173, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hdd18cd18fee7da2cefbfd21396944747(ptr %v0, ptr %v0, ptr %t323, i64 %t324, ptr %t322)
  br label %bb56
bb56:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwStmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca i32
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca ptr
  %l17 = alloca i64
  %l18 = alloca %"compiler/source:Span"
  %l19 = alloca i32
  %l21 = alloca %"compiler/source:Span"
  %l22 = alloca i32
  %l24 = alloca ptr
  %l25 = alloca ptr
  %l26 = alloca ptr
  %l27 = alloca ptr
  %l28 = alloca ptr
  %l29 = alloca ptr
  %l30 = alloca { i64, ptr }
  %l31 = alloca i64
  %l32 = alloca i64
  %l34 = alloca ptr
  %l35 = alloca { i64, ptr }
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca ptr
  %l39 = alloca i64
  %l40 = alloca { i64, ptr }
  %l41 = alloca i64
  %l42 = alloca i64
  %l44 = alloca ptr
  %l47 = alloca ptr
  %l48 = alloca i1
  %l59 = alloca i64
  %l64 = alloca ptr
  %l65 = alloca ptr
  %l66 = alloca i1
  %l80 = alloca i1
  %l81 = alloca i1
  %l85 = alloca ptr
  %l86 = alloca i64
  %l91 = alloca ptr
  %l92 = alloca i1
  %l99 = alloca ptr
  %l101 = alloca i64
  %l102 = alloca i1
  %l103 = alloca i1
  %l107 = alloca ptr
  %l108 = alloca i64
  %l117 = alloca i64
  %l120 = alloca i1
  %l121 = alloca ptr
  %l123 = alloca i32
  %l124 = alloca i1
  %l125 = alloca i1
  %l130 = alloca i1
  %l134 = alloca ptr
  %l135 = alloca i1
  %l143 = alloca ptr
  %l144 = alloca i1
  %l160 = alloca ptr
  %l161 = alloca i1
  %l173 = alloca ptr
  %l174 = alloca i1
  %l179 = alloca ptr
  %l180 = alloca i1
  %l190 = alloca i1
  %l191 = alloca ptr
  %l193 = alloca i32
  %l194 = alloca i1
  %l195 = alloca i1
  %l196 = alloca ptr
  %l198 = alloca i32
  %l199 = alloca i1
  %l200 = alloca i1
  %l201 = alloca ptr
  %l203 = alloca i32
  %l204 = alloca i1
  %l208 = alloca ptr
  %l211 = alloca i64
  %l214 = alloca i1
  %l217 = alloca i1
  %l218 = alloca i1
  %l221 = alloca i1
  %l225 = alloca ptr
  %l226 = alloca i1
  %l229 = alloca i1
  %l239 = alloca i1
  %l246 = alloca ptr
  %l250 = alloca i64
  %l251 = alloca ptr
  %l252 = alloca i1
  %l264 = alloca ptr
  %l265 = alloca i1
  %l272 = alloca ptr
  %l273 = alloca i1
  %l281 = alloca ptr
  %l282 = alloca i1
  %l290 = alloca ptr
  %l291 = alloca i1
  %l308 = alloca { i64, ptr }
  %l316 = alloca ptr
  %l317 = alloca i1
  %l330 = alloca { i64, ptr }
  %l339 = alloca i64
  %l342 = alloca i1
  %l343 = alloca ptr
  %l345 = alloca i32
  %l346 = alloca i1
  %l363 = alloca { i64, ptr }
  %l371 = alloca ptr
  %l372 = alloca i1
  %s2 = alloca %olang.scope
  %s6 = alloca %olang.scope
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
  store ptr %t5, ptr %l47, !tbaa !29
  store i1 false, ptr %l48, !tbaa !21
  %t6 = load ptr, ptr %l47, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l47, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 17}
  %t12 = icmp eq i64 %t10, 0
  store i1 %t12, ptr %l48, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l48, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t16 = getelementptr { i64, [3 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t16, i32 0, i32 1
  %t18 = load i32, ptr %t17
  store i32 %t18, ptr %l2, !tbaa !23
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t22 = getelementptr { i64, [3 x i64] }, ptr %t20, i32 0, i32 1
  %t23 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t22, i32 0, i32 2
  %t24 = load ptr, ptr %t23
  store ptr %t24, ptr %l3, !tbaa !29
  br label %bb8
bb7:
  br label %bb30
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/scope:Scoper", ptr %t26, i32 0, i32 122
  %t29 = load i32, ptr %l2, !tbaa !23
  %t31 = sext i32 %t29 to i64
  %t34 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t28, i64 %t31)
  store i64 %t34, ptr %l59
  br label %bb9
bb9:
  %t35 = load i64, ptr %l59, !tbaa !24
  %t36 = icmp sge i64 %t35, 0
  br i1 %t36, label %bb10, label %bb11
bb10:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t39 = load ptr, ptr %l3, !tbaa !29
  %t43 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %v1, ptr %t38, ptr %t39)
  store ptr %t43, ptr %l64
  br label %bb12
bb11:
  br label %bb19
bb12:
  %t44 = load ptr, ptr %l64, !tbaa !29
  store ptr %t44, ptr %l4, !tbaa !29
  %t45 = load ptr, ptr %l4, !tbaa !29
  store ptr %t45, ptr %l65, !tbaa !29
  store i1 false, ptr %l66, !tbaa !21
  %t46 = load ptr, ptr %l65, !tbaa !29
  %t47 = icmp ne ptr %t46, null
  br i1 %t47, label %bb13, label %bb14
bb13:
  %t49 = load ptr, ptr %l65, !tbaa !29
  %t50 = load i64, ptr %t49, !range !{i64 0, i64 18}
  %t52 = icmp eq i64 %t50, 3
  store i1 %t52, ptr %l66, !tbaa !21
  br label %bb14
bb14:
  %t53 = load i1, ptr %l66, !tbaa !21
  br i1 %t53, label %bb15, label %bb16
bb15:
  %t54 = load ptr, ptr %l4, !tbaa !29
  %t56 = getelementptr { i64, [5 x i64] }, ptr %t54, i32 0, i32 1
  %t57 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t56, i32 0, i32 0
  %t58 = load %"compiler/source:Span", ptr %t57
  store %"compiler/source:Span" %t58, ptr %l5
  %t60 = load ptr, ptr %l4, !tbaa !29
  %t62 = getelementptr { i64, [5 x i64] }, ptr %t60, i32 0, i32 1
  %t63 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t62, i32 0, i32 1
  %t64 = load i32, ptr %t63
  store i32 %t64, ptr %l6, !tbaa !23
  %t66 = load ptr, ptr %l4, !tbaa !29
  %t68 = getelementptr { i64, [5 x i64] }, ptr %t66, i32 0, i32 1
  %t69 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t68, i32 0, i32 2
  %t70 = load ptr, ptr %t69
  %t72 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwPlace(ptr %v0, ptr %v1, ptr %t72, ptr %t70)
  br label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s2)
  br label %ret
bb19:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t77 = load i32, ptr %l2, !tbaa !23
  %t79 = sext i32 %t77 to i64
  %t82 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisCursorLocal(ptr %v0, ptr %t76, i64 %t79)
  store i1 %t82, ptr %l80
  br label %bb20
bb20:
  %t83 = load i1, ptr %l80, !tbaa !21
  br i1 %t83, label %bb21, label %bb22
bb21:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t85 = load ptr, ptr %l3, !tbaa !29
  %t89 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %s2, ptr %t84, ptr %t85)
  store ptr %t89, ptr %l85
  br label %bb23
bb22:
  store i1 false, ptr %l81, !tbaa !21
  br label %bb25
bb23:
  %t90 = load ptr, ptr %l85, !tbaa !29
  %t91 = call i64 @compiler_2fscope_2elocalRead(ptr %s2, ptr %t90)
  store i64 %t91, ptr %l86
  br label %bb24
bb24:
  %t92 = load i64, ptr %l86, !tbaa !24
  %t93 = icmp sge i64 %t92, 0
  store i1 %t93, ptr %l81, !tbaa !21
  br label %bb25
bb25:
  %t95 = load i1, ptr %l81, !tbaa !21
  br i1 %t95, label %bb26, label %bb27
bb26:
  call void @__olang_scope_close(ptr %s2)
  br label %ret
bb27:
  br label %bb28
bb28:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwExpr(ptr %v0, ptr %v1, ptr %t96, ptr %t97, i1 false)
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s2)
  br label %bb229
bb30:
  %t101 = load ptr, ptr %l1, !tbaa !29
  store ptr %t101, ptr %l91, !tbaa !29
  store i1 false, ptr %l92, !tbaa !21
  %t102 = load ptr, ptr %l91, !tbaa !29
  %t103 = icmp ne ptr %t102, null
  br i1 %t103, label %bb31, label %bb32
bb31:
  %t105 = load ptr, ptr %l91, !tbaa !29
  %t106 = load i64, ptr %t105, !range !{i64 0, i64 17}
  %t108 = icmp eq i64 %t106, 1
  store i1 %t108, ptr %l92, !tbaa !21
  br label %bb32
bb32:
  %t109 = load i1, ptr %l92, !tbaa !21
  br i1 %t109, label %bb33, label %bb34
bb33:
  %t110 = load ptr, ptr %l1, !tbaa !29
  %t112 = getelementptr { i64, [3 x i64] }, ptr %t110, i32 0, i32 1
  %t113 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t112, i32 0, i32 1
  %t114 = load ptr, ptr %t113
  store ptr %t114, ptr %l8, !tbaa !29
  %t116 = load ptr, ptr %l1, !tbaa !29
  %t118 = getelementptr { i64, [3 x i64] }, ptr %t116, i32 0, i32 1
  %t119 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t118, i32 0, i32 2
  %t120 = load ptr, ptr %t119
  store ptr %t120, ptr %l9, !tbaa !29
  br label %bb35
bb34:
  br label %bb62
bb35:
  store %olang.scope zeroinitializer, ptr %s6
  %t122 = load ptr, ptr %l0, !tbaa !29
  store ptr %t122, ptr %l99, !tbaa !29
  %t123 = load ptr, ptr %l8, !tbaa !29
  %t125 = call i64 @compiler_2fscope_2ewholeLocal(ptr %v1, ptr %t123)
  store i64 %t125, ptr %l101
  br label %bb36
bb36:
  %t126 = load ptr, ptr %l99, !tbaa !29
  %t127 = load i64, ptr %l101, !tbaa !24
  %t128 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisCursorLocal(ptr %v0, ptr %t126, i64 %t127)
  store i1 %t128, ptr %l102
  br label %bb37
bb37:
  %t129 = load i1, ptr %l102, !tbaa !21
  br i1 %t129, label %bb38, label %bb39
bb38:
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t131 = load ptr, ptr %l9, !tbaa !29
  %t135 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %s6, ptr %t130, ptr %t131)
  store ptr %t135, ptr %l107
  br label %bb40
bb39:
  store i1 false, ptr %l103, !tbaa !21
  br label %bb42
bb40:
  %t136 = load ptr, ptr %l107, !tbaa !29
  %t137 = call i64 @compiler_2fscope_2elocalRead(ptr %s6, ptr %t136)
  store i64 %t137, ptr %l108
  br label %bb41
bb41:
  %t138 = load i64, ptr %l108, !tbaa !24
  %t139 = icmp sge i64 %t138, 0
  store i1 %t139, ptr %l103, !tbaa !21
  br label %bb42
bb42:
  %t141 = load i1, ptr %l103, !tbaa !21
  br i1 %t141, label %bb43, label %bb44
bb43:
  call void @__olang_scope_close(ptr %s6)
  br label %ret
bb44:
  br label %bb45
bb45:
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t143 = load ptr, ptr %l8, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwPlace(ptr %v0, ptr %v1, ptr %t142, ptr %t143)
  br label %bb46
bb46:
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t147 = load ptr, ptr %l9, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwExpr(ptr %v0, ptr %v1, ptr %t146, ptr %t147, i1 false)
  br label %bb47
bb47:
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t152 = load ptr, ptr %l8, !tbaa !29
  %t155 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eregionOf(ptr %v0, ptr %v1, ptr %t151, ptr %t152)
  store i64 %t155, ptr %l117
  br label %bb48
bb48:
  %t156 = load i64, ptr %l117, !tbaa !24
  store i64 %t156, ptr %l10, !tbaa !24
  %t157 = load i64, ptr %l10, !tbaa !24
  %t159 = icmp sge i64 %t157, 0
  br i1 %t159, label %bb49, label %bb50
bb49:
  %t161 = load ptr, ptr %l0, !tbaa !29
  store ptr %t161, ptr %l121, !tbaa !29
  %t162 = load ptr, ptr %l8, !tbaa !29
  %t164 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t162)
  store i32 %t164, ptr %l123
  br label %bb51
bb50:
  store i1 false, ptr %l120, !tbaa !21
  br label %bb53
bb51:
  %t165 = load ptr, ptr %l121, !tbaa !29
  %t166 = load i32, ptr %l123, !tbaa !23
  %t167 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholds(ptr %v0, ptr %t165, i32 %t166)
  store i1 %t167, ptr %l124
  br label %bb52
bb52:
  %t168 = load i1, ptr %l124, !tbaa !21
  store i1 %t168, ptr %l120, !tbaa !21
  br label %bb53
bb53:
  %t169 = load i1, ptr %l120, !tbaa !21
  br i1 %t169, label %bb54, label %bb55
bb54:
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t171 = load ptr, ptr %l9, !tbaa !29
  %t173 = load i64, ptr %l10, !tbaa !24
  %t177 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eregionRead(ptr %v0, ptr %v1, ptr %t170, ptr %t171, i64 %t173)
  store i1 %t177, ptr %l130
  br label %bb56
bb55:
  store i1 false, ptr %l125, !tbaa !21
  br label %bb57
bb56:
  %t178 = load i1, ptr %l130, !tbaa !21
  %t179 = xor i1 %t178, true
  store i1 %t179, ptr %l125, !tbaa !21
  br label %bb57
bb57:
  %t181 = load i1, ptr %l125, !tbaa !21
  br i1 %t181, label %bb58, label %bb59
bb58:
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t183 = load i64, ptr %l10, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estoreParam(ptr %v0, ptr %t182, i64 %t183, i1 true)
  br label %bb60
bb59:
  br label %bb61
bb60:
  br label %bb61
bb61:
  call void @__olang_scope_close(ptr %s6)
  br label %bb229
bb62:
  %t186 = load ptr, ptr %l1, !tbaa !29
  store ptr %t186, ptr %l134, !tbaa !29
  store i1 false, ptr %l135, !tbaa !21
  %t187 = load ptr, ptr %l134, !tbaa !29
  %t188 = icmp ne ptr %t187, null
  br i1 %t188, label %bb63, label %bb64
bb63:
  %t190 = load ptr, ptr %l134, !tbaa !29
  %t191 = load i64, ptr %t190, !range !{i64 0, i64 17}
  %t193 = icmp eq i64 %t191, 2
  store i1 %t193, ptr %l135, !tbaa !21
  br label %bb64
bb64:
  %t194 = load i1, ptr %l135, !tbaa !21
  br i1 %t194, label %bb65, label %bb66
bb65:
  %t195 = load ptr, ptr %l1, !tbaa !29
  %t197 = getelementptr { i64, [3 x i64] }, ptr %t195, i32 0, i32 1
  %t198 = getelementptr { %"compiler/source:Span", ptr }, ptr %t197, i32 0, i32 1
  %t199 = load ptr, ptr %t198
  store ptr %t199, ptr %l11, !tbaa !29
  br label %bb67
bb66:
  br label %bb69
bb67:
  %t201 = load ptr, ptr %l0, !tbaa !29
  %t202 = load ptr, ptr %l11, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwExpr(ptr %v0, ptr %v1, ptr %t201, ptr %t202, i1 false)
  br label %bb68
bb68:
  br label %bb229
bb69:
  %t206 = load ptr, ptr %l1, !tbaa !29
  store ptr %t206, ptr %l143, !tbaa !29
  store i1 false, ptr %l144, !tbaa !21
  %t207 = load ptr, ptr %l143, !tbaa !29
  %t208 = icmp ne ptr %t207, null
  br i1 %t208, label %bb70, label %bb71
bb70:
  %t210 = load ptr, ptr %l143, !tbaa !29
  %t211 = load i64, ptr %t210, !range !{i64 0, i64 17}
  %t213 = icmp eq i64 %t211, 3
  store i1 %t213, ptr %l144, !tbaa !21
  br label %bb71
bb71:
  %t214 = load i1, ptr %l144, !tbaa !21
  br i1 %t214, label %bb72, label %bb73
bb72:
  %t215 = load ptr, ptr %l1, !tbaa !29
  %t217 = getelementptr { i64, [3 x i64] }, ptr %t215, i32 0, i32 1
  %t218 = getelementptr { %"compiler/source:Span", ptr }, ptr %t217, i32 0, i32 1
  %t219 = load ptr, ptr %t218
  store ptr %t219, ptr %l12, !tbaa !29
  br label %bb74
bb73:
  br label %bb78
bb74:
  %t221 = load ptr, ptr %l0, !tbaa !29
  %t222 = load ptr, ptr %l12, !tbaa !29
  %t224 = getelementptr %"compiler/typed:If", ptr %t222, i32 0, i32 0
  %t225 = load ptr, ptr %t224, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwExpr(ptr %v0, ptr %v1, ptr %t221, ptr %t225, i1 true)
  br label %bb75
bb75:
  %t229 = load ptr, ptr %l0, !tbaa !29
  %t230 = load ptr, ptr %l12, !tbaa !29
  %t232 = getelementptr %"compiler/typed:If", ptr %t230, i32 0, i32 1
  %t233 = load ptr, ptr %t232, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwBlock(ptr %v0, ptr %v1, ptr %t229, ptr %t233)
  br label %bb76
bb76:
  %t237 = load ptr, ptr %l0, !tbaa !29
  %t238 = load ptr, ptr %l12, !tbaa !29
  %t240 = getelementptr %"compiler/typed:If", ptr %t238, i32 0, i32 2
  %t241 = load ptr, ptr %t240, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwBlock(ptr %v0, ptr %v1, ptr %t237, ptr %t241)
  br label %bb77
bb77:
  br label %bb229
bb78:
  %t244 = load ptr, ptr %l1, !tbaa !29
  store ptr %t244, ptr %l160, !tbaa !29
  store i1 false, ptr %l161, !tbaa !21
  %t245 = load ptr, ptr %l160, !tbaa !29
  %t246 = icmp ne ptr %t245, null
  br i1 %t246, label %bb79, label %bb80
bb79:
  %t248 = load ptr, ptr %l160, !tbaa !29
  %t249 = load i64, ptr %t248, !range !{i64 0, i64 17}
  %t251 = icmp eq i64 %t249, 4
  store i1 %t251, ptr %l161, !tbaa !21
  br label %bb80
bb80:
  %t252 = load i1, ptr %l161, !tbaa !21
  br i1 %t252, label %bb81, label %bb82
bb81:
  %t253 = load ptr, ptr %l1, !tbaa !29
  %t255 = getelementptr { i64, [3 x i64] }, ptr %t253, i32 0, i32 1
  %t256 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t255, i32 0, i32 1
  %t257 = load ptr, ptr %t256
  store ptr %t257, ptr %l13, !tbaa !29
  %t259 = load ptr, ptr %l1, !tbaa !29
  %t261 = getelementptr { i64, [3 x i64] }, ptr %t259, i32 0, i32 1
  %t262 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t261, i32 0, i32 2
  %t263 = load ptr, ptr %t262
  store ptr %t263, ptr %l14, !tbaa !29
  br label %bb83
bb82:
  br label %bb86
bb83:
  %t265 = load ptr, ptr %l0, !tbaa !29
  %t266 = load ptr, ptr %l13, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwBlock(ptr %v0, ptr %v1, ptr %t265, ptr %t266)
  br label %bb84
bb84:
  %t270 = load ptr, ptr %l0, !tbaa !29
  %t271 = load ptr, ptr %l14, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwBlock(ptr %v0, ptr %v1, ptr %t270, ptr %t271)
  br label %bb85
bb85:
  br label %bb229
bb86:
  %t274 = load ptr, ptr %l1, !tbaa !29
  store ptr %t274, ptr %l173, !tbaa !29
  store i1 false, ptr %l174, !tbaa !21
  %t275 = load ptr, ptr %l173, !tbaa !29
  %t276 = icmp ne ptr %t275, null
  br i1 %t276, label %bb87, label %bb88
bb87:
  %t278 = load ptr, ptr %l173, !tbaa !29
  %t279 = load i64, ptr %t278, !range !{i64 0, i64 17}
  %t281 = icmp eq i64 %t279, 6
  store i1 %t281, ptr %l174, !tbaa !21
  br label %bb88
bb88:
  %t282 = load i1, ptr %l174, !tbaa !21
  br i1 %t282, label %bb89, label %bb90
bb89:
  %t283 = load ptr, ptr %l1, !tbaa !29
  %t285 = getelementptr { i64, [3 x i64] }, ptr %t283, i32 0, i32 1
  %t286 = getelementptr { %"compiler/source:Span", ptr }, ptr %t285, i32 0, i32 1
  %t287 = load ptr, ptr %t286
  store ptr %t287, ptr %l15, !tbaa !29
  br label %bb95
bb90:
  %t289 = load ptr, ptr %l1, !tbaa !29
  store ptr %t289, ptr %l179, !tbaa !29
  store i1 false, ptr %l180, !tbaa !21
  %t290 = load ptr, ptr %l179, !tbaa !29
  %t291 = icmp ne ptr %t290, null
  br i1 %t291, label %bb91, label %bb92
bb91:
  %t293 = load ptr, ptr %l179, !tbaa !29
  %t294 = load i64, ptr %t293, !range !{i64 0, i64 17}
  %t296 = icmp eq i64 %t294, 16
  store i1 %t296, ptr %l180, !tbaa !21
  br label %bb92
bb92:
  %t297 = load i1, ptr %l180, !tbaa !21
  br i1 %t297, label %bb93, label %bb94
bb93:
  %t298 = load ptr, ptr %l1, !tbaa !29
  %t300 = getelementptr { i64, [3 x i64] }, ptr %t298, i32 0, i32 1
  %t301 = getelementptr { %"compiler/source:Span", ptr }, ptr %t300, i32 0, i32 1
  %t302 = load ptr, ptr %t301
  store ptr %t302, ptr %l15, !tbaa !29
  br label %bb95
bb94:
  br label %bb140
bb95:
  %t304 = load ptr, ptr %l0, !tbaa !29
  %t305 = load ptr, ptr %l15, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwExpr(ptr %v0, ptr %v1, ptr %t304, ptr %t305, i1 false)
  br label %bb96
bb96:
  %t308 = load ptr, ptr %l15, !tbaa !29
  %t310 = icmp eq ptr %t308, null
  %t312 = xor i1 %t310, true
  br i1 %t312, label %bb97, label %bb98
bb97:
  %t314 = load ptr, ptr %l0, !tbaa !29
  store ptr %t314, ptr %l191, !tbaa !29
  %t315 = load ptr, ptr %l15, !tbaa !29
  %t317 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t315)
  store i32 %t317, ptr %l193
  br label %bb99
bb98:
  store i1 false, ptr %l190, !tbaa !21
  br label %bb111
bb99:
  %t318 = load ptr, ptr %l191, !tbaa !29
  %t319 = load i32, ptr %l193, !tbaa !23
  %t320 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estoreThrough(ptr %v0, ptr %t318, i32 %t319)
  store i1 %t320, ptr %l194
  br label %bb100
bb100:
  %t321 = load i1, ptr %l194, !tbaa !21
  br i1 %t321, label %bb101, label %bb102
bb101:
  store i1 true, ptr %l195, !tbaa !21
  br label %bb110
bb102:
  %t322 = load ptr, ptr %l0, !tbaa !29
  store ptr %t322, ptr %l196, !tbaa !29
  %t323 = load ptr, ptr %l15, !tbaa !29
  %t325 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t323)
  store i32 %t325, ptr %l198
  br label %bb103
bb103:
  %t326 = load ptr, ptr %l196, !tbaa !29
  %t327 = load i32, ptr %l198, !tbaa !23
  %t328 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t326, i32 %t327)
  store i1 %t328, ptr %l199
  br label %bb104
bb104:
  %t329 = load i1, ptr %l199, !tbaa !21
  br i1 %t329, label %bb105, label %bb106
bb105:
  %t330 = load ptr, ptr %l0, !tbaa !29
  store ptr %t330, ptr %l201, !tbaa !29
  %t331 = load ptr, ptr %l15, !tbaa !29
  %t333 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t331)
  store i32 %t333, ptr %l203
  br label %bb107
bb106:
  store i1 false, ptr %l200, !tbaa !21
  br label %bb109
bb107:
  %t334 = load ptr, ptr %l201, !tbaa !29
  %t335 = load i32, ptr %l203, !tbaa !23
  %t336 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eadmitsStores(ptr %v0, ptr %t334, i32 %t335)
  store i1 %t336, ptr %l204
  br label %bb108
bb108:
  %t337 = load i1, ptr %l204, !tbaa !21
  store i1 %t337, ptr %l200, !tbaa !21
  br label %bb109
bb109:
  %t338 = load i1, ptr %l200, !tbaa !21
  store i1 %t338, ptr %l195, !tbaa !21
  br label %bb110
bb110:
  %t339 = load i1, ptr %l195, !tbaa !21
  store i1 %t339, ptr %l190, !tbaa !21
  br label %bb111
bb111:
  %t340 = load i1, ptr %l190, !tbaa !21
  br i1 %t340, label %bb112, label %bb113
bb112:
  %t341 = load ptr, ptr %l0, !tbaa !29
  %t342 = load ptr, ptr %l15, !tbaa !29
  %t346 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %v1, ptr %t341, ptr %t342)
  store ptr %t346, ptr %l208
  br label %bb114
bb113:
  br label %bb139
bb114:
  %t347 = load ptr, ptr %l208, !tbaa !29
  store ptr %t347, ptr %l16, !tbaa !29
  %t348 = load ptr, ptr %l16, !tbaa !29
  %t351 = call i64 @compiler_2fscope_2eflRootExpr(ptr %v1, ptr %t348)
  store i64 %t351, ptr %l211
  br label %bb115
bb115:
  %t352 = load i64, ptr %l211, !tbaa !24
  store i64 %t352, ptr %l17, !tbaa !24
  %t353 = load i64, ptr %l17, !tbaa !24
  %t355 = icmp sge i64 %t353, 0
  br i1 %t355, label %bb116, label %bb117
bb116:
  %t357 = load ptr, ptr %l16, !tbaa !29
  %t360 = call i1 @compiler_2fscope_2eflThroughRefExpr(ptr %v1, ptr %t357)
  store i1 %t360, ptr %l217
  br label %bb118
bb117:
  store i1 false, ptr %l214, !tbaa !21
  br label %bb119
bb118:
  %t361 = load i1, ptr %l217, !tbaa !21
  store i1 %t361, ptr %l214, !tbaa !21
  br label %bb119
bb119:
  %t362 = load i1, ptr %l214, !tbaa !21
  br i1 %t362, label %bb120, label %bb121
bb120:
  %t363 = load ptr, ptr %l0, !tbaa !29
  %t364 = load ptr, ptr %l16, !tbaa !29
  %t367 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ethroughDerivedExpr(ptr %v0, ptr %v1, ptr %t363, ptr %t364)
  store i1 %t367, ptr %l221
  br label %bb122
bb121:
  store i1 false, ptr %l218, !tbaa !21
  br label %bb123
bb122:
  %t368 = load i1, ptr %l221, !tbaa !21
  %t369 = xor i1 %t368, true
  store i1 %t369, ptr %l218, !tbaa !21
  br label %bb123
bb123:
  %t371 = load i1, ptr %l218, !tbaa !21
  br i1 %t371, label %bb124, label %bb125
bb124:
  %t372 = load ptr, ptr %l0, !tbaa !29
  %t373 = load i64, ptr %l17, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estoreParam(ptr %v0, ptr %t372, i64 %t373, i1 false)
  br label %bb126
bb125:
  br label %bb127
bb126:
  br label %bb127
bb127:
  %t376 = load ptr, ptr %l16, !tbaa !29
  store ptr %t376, ptr %l225, !tbaa !29
  store i1 false, ptr %l226, !tbaa !21
  %t377 = load ptr, ptr %l225, !tbaa !29
  %t378 = icmp ne ptr %t377, null
  br i1 %t378, label %bb128, label %bb129
bb128:
  %t380 = load ptr, ptr %l225, !tbaa !29
  %t381 = load i64, ptr %t380, !range !{i64 0, i64 18}
  %t383 = icmp eq i64 %t381, 10
  store i1 %t383, ptr %l226, !tbaa !21
  br label %bb129
bb129:
  %t384 = load i1, ptr %l226, !tbaa !21
  br i1 %t384, label %bb130, label %bb131
bb130:
  %t385 = load ptr, ptr %l16, !tbaa !29
  %t387 = getelementptr { i64, [5 x i64] }, ptr %t385, i32 0, i32 1
  %t388 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t387, i32 0, i32 0
  %t389 = load %"compiler/source:Span", ptr %t388
  store %"compiler/source:Span" %t389, ptr %l18
  %t391 = load ptr, ptr %l16, !tbaa !29
  %t393 = getelementptr { i64, [5 x i64] }, ptr %t391, i32 0, i32 1
  %t394 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t393, i32 0, i32 1
  %t395 = load i32, ptr %t394
  store i32 %t395, ptr %l19, !tbaa !23
  %t397 = load ptr, ptr %l16, !tbaa !29
  %t399 = getelementptr { i64, [5 x i64] }, ptr %t397, i32 0, i32 1
  %t400 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t399, i32 0, i32 2
  %t401 = load ptr, ptr %t400
  %t406 = getelementptr %"compiler/typed:Slice", ptr %t401, i32 0, i32 0
  %t407 = load ptr, ptr %t406, !tbaa !29
  %t409 = call i1 @compiler_2fscope_2eflThroughRef(ptr %v1, ptr %t407)
  store i1 %t409, ptr %l239
  br label %bb132
bb131:
  store i1 false, ptr %l229, !tbaa !21
  br label %bb133
bb132:
  %t410 = load i1, ptr %l239, !tbaa !21
  store i1 %t410, ptr %l229, !tbaa !21
  br label %bb133
bb133:
  %t411 = load i1, ptr %l229, !tbaa !21
  br i1 %t411, label %bb134, label %bb135
bb134:
  %t412 = load ptr, ptr %l16, !tbaa !29
  %t414 = getelementptr { i64, [5 x i64] }, ptr %t412, i32 0, i32 1
  %t415 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t414, i32 0, i32 0
  %t416 = load %"compiler/source:Span", ptr %t415
  store %"compiler/source:Span" %t416, ptr %l21
  %t418 = load ptr, ptr %l16, !tbaa !29
  %t420 = getelementptr { i64, [5 x i64] }, ptr %t418, i32 0, i32 1
  %t421 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t420, i32 0, i32 1
  %t422 = load i32, ptr %t421
  store i32 %t422, ptr %l22, !tbaa !23
  %t424 = load ptr, ptr %l16, !tbaa !29
  %t426 = getelementptr { i64, [5 x i64] }, ptr %t424, i32 0, i32 1
  %t427 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t426, i32 0, i32 2
  %t428 = load ptr, ptr %t427
  %t430 = load ptr, ptr %l0, !tbaa !29
  store ptr %t430, ptr %l246, !tbaa !29
  %t434 = getelementptr %"compiler/typed:Slice", ptr %t428, i32 0, i32 0
  %t435 = load ptr, ptr %t434, !tbaa !29
  %t437 = call i64 @compiler_2fscope_2eflRoot(ptr %v1, ptr %t435)
  store i64 %t437, ptr %l250
  br label %bb136
bb135:
  br label %bb138
bb136:
  %t438 = load ptr, ptr %l246, !tbaa !29
  %t439 = load i64, ptr %l250, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estoreParam(ptr %v0, ptr %t438, i64 %t439, i1 false)
  br label %bb137
bb137:
  br label %bb138
bb138:
  br label %bb139
bb139:
  br label %bb229
bb140:
  %t440 = load ptr, ptr %l1, !tbaa !29
  store ptr %t440, ptr %l251, !tbaa !29
  store i1 false, ptr %l252, !tbaa !21
  %t441 = load ptr, ptr %l251, !tbaa !29
  %t442 = icmp ne ptr %t441, null
  br i1 %t442, label %bb141, label %bb142
bb141:
  %t444 = load ptr, ptr %l251, !tbaa !29
  %t445 = load i64, ptr %t444, !range !{i64 0, i64 17}
  %t447 = icmp eq i64 %t445, 10
  store i1 %t447, ptr %l252, !tbaa !21
  br label %bb142
bb142:
  %t448 = load i1, ptr %l252, !tbaa !21
  br i1 %t448, label %bb143, label %bb144
bb143:
  %t449 = load ptr, ptr %l1, !tbaa !29
  %t451 = getelementptr { i64, [3 x i64] }, ptr %t449, i32 0, i32 1
  %t452 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t451, i32 0, i32 1
  %t453 = load ptr, ptr %t452
  store ptr %t453, ptr %l24, !tbaa !29
  %t455 = load ptr, ptr %l1, !tbaa !29
  %t457 = getelementptr { i64, [3 x i64] }, ptr %t455, i32 0, i32 1
  %t458 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t457, i32 0, i32 2
  %t459 = load ptr, ptr %t458
  store ptr %t459, ptr %l25, !tbaa !29
  br label %bb145
bb144:
  br label %bb148
bb145:
  %t461 = load ptr, ptr %l0, !tbaa !29
  %t462 = load ptr, ptr %l24, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwExpr(ptr %v0, ptr %v1, ptr %t461, ptr %t462, i1 true)
  br label %bb146
bb146:
  %t466 = load ptr, ptr %l0, !tbaa !29
  %t467 = load ptr, ptr %l25, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwExpr(ptr %v0, ptr %v1, ptr %t466, ptr %t467, i1 true)
  br label %bb147
bb147:
  br label %bb229
bb148:
  %t470 = load ptr, ptr %l1, !tbaa !29
  store ptr %t470, ptr %l264, !tbaa !29
  store i1 false, ptr %l265, !tbaa !21
  %t471 = load ptr, ptr %l264, !tbaa !29
  %t472 = icmp ne ptr %t471, null
  br i1 %t472, label %bb149, label %bb150
bb149:
  %t474 = load ptr, ptr %l264, !tbaa !29
  %t475 = load i64, ptr %t474, !range !{i64 0, i64 17}
  %t477 = icmp eq i64 %t475, 9
  store i1 %t477, ptr %l265, !tbaa !21
  br label %bb150
bb150:
  %t478 = load i1, ptr %l265, !tbaa !21
  br i1 %t478, label %bb151, label %bb152
bb151:
  %t479 = load ptr, ptr %l1, !tbaa !29
  %t481 = getelementptr { i64, [3 x i64] }, ptr %t479, i32 0, i32 1
  %t482 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t481, i32 0, i32 2
  %t483 = load ptr, ptr %t482
  store ptr %t483, ptr %l26, !tbaa !29
  br label %bb153
bb152:
  br label %bb155
bb153:
  %t485 = load ptr, ptr %l0, !tbaa !29
  %t486 = load ptr, ptr %l26, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwExpr(ptr %v0, ptr %v1, ptr %t485, ptr %t486, i1 true)
  br label %bb154
bb154:
  br label %bb229
bb155:
  %t489 = load ptr, ptr %l1, !tbaa !29
  store ptr %t489, ptr %l272, !tbaa !29
  store i1 false, ptr %l273, !tbaa !21
  %t490 = load ptr, ptr %l272, !tbaa !29
  %t491 = icmp ne ptr %t490, null
  br i1 %t491, label %bb156, label %bb157
bb156:
  %t493 = load ptr, ptr %l272, !tbaa !29
  %t494 = load i64, ptr %t493, !range !{i64 0, i64 17}
  %t496 = icmp eq i64 %t494, 11
  store i1 %t496, ptr %l273, !tbaa !21
  br label %bb157
bb157:
  %t497 = load i1, ptr %l273, !tbaa !21
  br i1 %t497, label %bb158, label %bb159
bb158:
  %t498 = load ptr, ptr %l1, !tbaa !29
  %t500 = getelementptr { i64, [3 x i64] }, ptr %t498, i32 0, i32 1
  %t501 = getelementptr { %"compiler/source:Span", ptr }, ptr %t500, i32 0, i32 1
  %t502 = load ptr, ptr %t501
  store ptr %t502, ptr %l27, !tbaa !29
  br label %bb160
bb159:
  br label %bb162
bb160:
  %t504 = load ptr, ptr %l0, !tbaa !29
  %t505 = load ptr, ptr %l27, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwBlock(ptr %v0, ptr %v1, ptr %t504, ptr %t505)
  br label %bb161
bb161:
  br label %bb229
bb162:
  %t509 = load ptr, ptr %l1, !tbaa !29
  store ptr %t509, ptr %l281, !tbaa !29
  store i1 false, ptr %l282, !tbaa !21
  %t510 = load ptr, ptr %l281, !tbaa !29
  %t511 = icmp ne ptr %t510, null
  br i1 %t511, label %bb163, label %bb164
bb163:
  %t513 = load ptr, ptr %l281, !tbaa !29
  %t514 = load i64, ptr %t513, !range !{i64 0, i64 17}
  %t516 = icmp eq i64 %t514, 12
  store i1 %t516, ptr %l282, !tbaa !21
  br label %bb164
bb164:
  %t517 = load i1, ptr %l282, !tbaa !21
  br i1 %t517, label %bb165, label %bb166
bb165:
  %t518 = load ptr, ptr %l1, !tbaa !29
  %t520 = getelementptr { i64, [3 x i64] }, ptr %t518, i32 0, i32 1
  %t521 = getelementptr { %"compiler/source:Span", ptr }, ptr %t520, i32 0, i32 1
  %t522 = load ptr, ptr %t521
  store ptr %t522, ptr %l28, !tbaa !29
  br label %bb167
bb166:
  br label %bb169
bb167:
  %t524 = load ptr, ptr %l0, !tbaa !29
  %t525 = load ptr, ptr %l28, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwBlock(ptr %v0, ptr %v1, ptr %t524, ptr %t525)
  br label %bb168
bb168:
  br label %bb229
bb169:
  %t529 = load ptr, ptr %l1, !tbaa !29
  store ptr %t529, ptr %l290, !tbaa !29
  store i1 false, ptr %l291, !tbaa !21
  %t530 = load ptr, ptr %l290, !tbaa !29
  %t531 = icmp ne ptr %t530, null
  br i1 %t531, label %bb170, label %bb171
bb170:
  %t533 = load ptr, ptr %l290, !tbaa !29
  %t534 = load i64, ptr %t533, !range !{i64 0, i64 17}
  %t536 = icmp eq i64 %t534, 13
  store i1 %t536, ptr %l291, !tbaa !21
  br label %bb171
bb171:
  %t537 = load i1, ptr %l291, !tbaa !21
  br i1 %t537, label %bb172, label %bb173
bb172:
  %t538 = load ptr, ptr %l1, !tbaa !29
  %t540 = getelementptr { i64, [3 x i64] }, ptr %t538, i32 0, i32 1
  %t541 = getelementptr { %"compiler/source:Span", ptr }, ptr %t540, i32 0, i32 1
  %t542 = load ptr, ptr %t541
  store ptr %t542, ptr %l29, !tbaa !29
  br label %bb174
bb173:
  br label %bb183
bb174:
  %t544 = load ptr, ptr %l0, !tbaa !29
  %t545 = load ptr, ptr %l29, !tbaa !29
  %t547 = getelementptr %"compiler/typed:Join", ptr %t545, i32 0, i32 0
  %t548 = load ptr, ptr %t547, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwBlock(ptr %v0, ptr %v1, ptr %t544, ptr %t548)
  br label %bb175
bb175:
  %t552 = load ptr, ptr %l29, !tbaa !29
  %t554 = getelementptr %"compiler/typed:Join", ptr %t552, i32 0, i32 2
  %t555 = load { i64, ptr }, ptr %t554, !tbaa !27
  store { i64, ptr } %t555, ptr %l30, !tbaa !27
  store i64 0, ptr %l31, !tbaa !24
  %t557 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t559 = extractvalue { i64, ptr } %t557, 0
  store i64 %t559, ptr %l32, !tbaa !24
  br label %bb176
bb176:
  %t561 = load i64, ptr %l31, !tbaa !24
  %t562 = load i64, ptr %l32, !tbaa !24
  %t565 = icmp slt i64 %t561, %t562
  %t567 = xor i1 %t565, true
  br i1 %t567, label %bb177, label %bb178
bb177:
  br label %bb182
bb178:
  br label %bb179
bb179:
  %t569 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t569, ptr %l308, !tbaa !27
  %t570 = load i64, ptr %l31, !tbaa !24
  %t572 = getelementptr { i64, ptr }, ptr %l308, i32 0, i32 1
  %t573 = load ptr, ptr %t572, !tbaa !27
  %t574 = getelementptr ptr, ptr %t573, i64 %t570
  %t575 = load ptr, ptr %t574, !tbaa !39
  %t577 = load ptr, ptr %l0, !tbaa !29
  %t580 = getelementptr %"compiler/typed:Clause", ptr %t575, i32 0, i32 3
  %t581 = load ptr, ptr %t580, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwBlock(ptr %v0, ptr %v1, ptr %t577, ptr %t581)
  br label %bb180
bb180:
  br label %bb181
bb181:
  %t584 = load i64, ptr %l31, !tbaa !24
  %t586 = add i64 %t584, 1
  store i64 %t586, ptr %l31, !tbaa !24
  br label %bb176
bb182:
  br label %bb229
bb183:
  %t588 = load ptr, ptr %l1, !tbaa !29
  store ptr %t588, ptr %l316, !tbaa !29
  store i1 false, ptr %l317, !tbaa !21
  %t589 = load ptr, ptr %l316, !tbaa !29
  %t590 = icmp ne ptr %t589, null
  br i1 %t590, label %bb184, label %bb185
bb184:
  %t592 = load ptr, ptr %l316, !tbaa !29
  %t593 = load i64, ptr %t592, !range !{i64 0, i64 17}
  %t595 = icmp eq i64 %t593, 14
  store i1 %t595, ptr %l317, !tbaa !21
  br label %bb185
bb185:
  %t596 = load i1, ptr %l317, !tbaa !21
  br i1 %t596, label %bb186, label %bb187
bb186:
  %t597 = load ptr, ptr %l1, !tbaa !29
  %t599 = getelementptr { i64, [3 x i64] }, ptr %t597, i32 0, i32 1
  %t600 = getelementptr { %"compiler/source:Span", ptr }, ptr %t599, i32 0, i32 1
  %t601 = load ptr, ptr %t600
  store ptr %t601, ptr %l34, !tbaa !29
  br label %bb188
bb187:
  br label %bb217
bb188:
  %t603 = load ptr, ptr %l34, !tbaa !29
  %t605 = getelementptr %"compiler/typed:Spawn", ptr %t603, i32 0, i32 0
  %t606 = load { i64, ptr }, ptr %t605, !tbaa !27
  store { i64, ptr } %t606, ptr %l35, !tbaa !27
  store i64 0, ptr %l36, !tbaa !24
  %t608 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t610 = extractvalue { i64, ptr } %t608, 0
  store i64 %t610, ptr %l37, !tbaa !24
  br label %bb189
bb189:
  %t612 = load i64, ptr %l36, !tbaa !24
  %t613 = load i64, ptr %l37, !tbaa !24
  %t616 = icmp slt i64 %t612, %t613
  %t618 = xor i1 %t616, true
  br i1 %t618, label %bb190, label %bb191
bb190:
  br label %bb208
bb191:
  br label %bb192
bb192:
  %t620 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t620, ptr %l330, !tbaa !27
  %t621 = load i64, ptr %l36, !tbaa !24
  %t623 = getelementptr { i64, ptr }, ptr %l330, i32 0, i32 1
  %t624 = load ptr, ptr %t623, !tbaa !27
  %t625 = getelementptr ptr, ptr %t624, i64 %t621
  %t626 = load ptr, ptr %t625, !tbaa !39
  store ptr %t626, ptr %l38, !tbaa !29
  %t628 = load ptr, ptr %l38, !tbaa !29
  %t630 = icmp eq ptr %t628, null
  br i1 %t630, label %bb193, label %bb194
bb193:
  br label %bb207
bb194:
  br label %bb195
bb195:
  %t632 = load ptr, ptr %l0, !tbaa !29
  %t633 = load ptr, ptr %l38, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwPlace(ptr %v0, ptr %v1, ptr %t632, ptr %t633)
  br label %bb196
bb196:
  %t636 = load ptr, ptr %l0, !tbaa !29
  %t637 = load ptr, ptr %l38, !tbaa !29
  %t640 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eregionOf(ptr %v0, ptr %v1, ptr %t636, ptr %t637)
  store i64 %t640, ptr %l339
  br label %bb197
bb197:
  %t641 = load i64, ptr %l339, !tbaa !24
  store i64 %t641, ptr %l39, !tbaa !24
  %t642 = load i64, ptr %l39, !tbaa !24
  %t644 = icmp sge i64 %t642, 0
  br i1 %t644, label %bb198, label %bb199
bb198:
  %t646 = load ptr, ptr %l0, !tbaa !29
  store ptr %t646, ptr %l343, !tbaa !29
  %t647 = load ptr, ptr %l38, !tbaa !29
  %t649 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t647)
  store i32 %t649, ptr %l345
  br label %bb200
bb199:
  store i1 false, ptr %l342, !tbaa !21
  br label %bb202
bb200:
  %t650 = load ptr, ptr %l343, !tbaa !29
  %t651 = load i32, ptr %l345, !tbaa !23
  %t652 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholds(ptr %v0, ptr %t650, i32 %t651)
  store i1 %t652, ptr %l346
  br label %bb201
bb201:
  %t653 = load i1, ptr %l346, !tbaa !21
  store i1 %t653, ptr %l342, !tbaa !21
  br label %bb202
bb202:
  %t654 = load i1, ptr %l342, !tbaa !21
  br i1 %t654, label %bb203, label %bb204
bb203:
  %t655 = load ptr, ptr %l0, !tbaa !29
  %t656 = load i64, ptr %l39, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estoreParam(ptr %v0, ptr %t655, i64 %t656, i1 true)
  br label %bb205
bb204:
  br label %bb206
bb205:
  br label %bb206
bb206:
  br label %bb207
bb207:
  %t659 = load i64, ptr %l36, !tbaa !24
  %t661 = add i64 %t659, 1
  store i64 %t661, ptr %l36, !tbaa !24
  br label %bb189
bb208:
  %t663 = load ptr, ptr %l0, !tbaa !29
  %t664 = load ptr, ptr %l34, !tbaa !29
  %t666 = getelementptr %"compiler/typed:Spawn", ptr %t664, i32 0, i32 1
  %t667 = load ptr, ptr %t666, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwExpr(ptr %v0, ptr %v1, ptr %t663, ptr %t667, i1 false)
  br label %bb209
bb209:
  %t671 = load ptr, ptr %l34, !tbaa !29
  %t673 = getelementptr %"compiler/typed:Spawn", ptr %t671, i32 0, i32 2
  %t674 = load { i64, ptr }, ptr %t673, !tbaa !27
  store { i64, ptr } %t674, ptr %l40, !tbaa !27
  store i64 0, ptr %l41, !tbaa !24
  %t676 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t678 = extractvalue { i64, ptr } %t676, 0
  store i64 %t678, ptr %l42, !tbaa !24
  br label %bb210
bb210:
  %t680 = load i64, ptr %l41, !tbaa !24
  %t681 = load i64, ptr %l42, !tbaa !24
  %t684 = icmp slt i64 %t680, %t681
  %t686 = xor i1 %t684, true
  br i1 %t686, label %bb211, label %bb212
bb211:
  br label %bb216
bb212:
  br label %bb213
bb213:
  %t688 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t688, ptr %l363, !tbaa !27
  %t689 = load i64, ptr %l41, !tbaa !24
  %t691 = getelementptr { i64, ptr }, ptr %l363, i32 0, i32 1
  %t692 = load ptr, ptr %t691, !tbaa !27
  %t693 = getelementptr ptr, ptr %t692, i64 %t689
  %t694 = load ptr, ptr %t693, !tbaa !39
  %t696 = load ptr, ptr %l0, !tbaa !29
  %t699 = getelementptr %"compiler/typed:TaskClause", ptr %t694, i32 0, i32 3
  %t700 = load ptr, ptr %t699, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwExpr(ptr %v0, ptr %v1, ptr %t696, ptr %t700, i1 false)
  br label %bb214
bb214:
  br label %bb215
bb215:
  %t703 = load i64, ptr %l41, !tbaa !24
  %t705 = add i64 %t703, 1
  store i64 %t705, ptr %l41, !tbaa !24
  br label %bb210
bb216:
  br label %bb229
bb217:
  %t707 = load ptr, ptr %l1, !tbaa !29
  store ptr %t707, ptr %l371, !tbaa !29
  store i1 false, ptr %l372, !tbaa !21
  %t708 = load ptr, ptr %l371, !tbaa !29
  %t709 = icmp ne ptr %t708, null
  br i1 %t709, label %bb218, label %bb219
bb218:
  %t711 = load ptr, ptr %l371, !tbaa !29
  %t712 = load i64, ptr %t711, !range !{i64 0, i64 17}
  %t714 = icmp eq i64 %t712, 15
  store i1 %t714, ptr %l372, !tbaa !21
  br label %bb219
bb219:
  %t715 = load i1, ptr %l372, !tbaa !21
  br i1 %t715, label %bb220, label %bb221
bb220:
  %t716 = load ptr, ptr %l1, !tbaa !29
  %t718 = getelementptr { i64, [3 x i64] }, ptr %t716, i32 0, i32 1
  %t719 = getelementptr { %"compiler/source:Span", ptr }, ptr %t718, i32 0, i32 1
  %t720 = load ptr, ptr %t719
  store ptr %t720, ptr %l44, !tbaa !29
  br label %bb222
bb221:
  br label %bb224
bb222:
  %t722 = load ptr, ptr %l0, !tbaa !29
  %t723 = load ptr, ptr %l44, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwExpr(ptr %v0, ptr %v1, ptr %t722, ptr %t723, i1 false)
  br label %bb223
bb223:
  br label %bb229
bb224:
  br i1 true, label %bb225, label %bb226
bb225:
  br label %bb227
bb226:
  br label %bb228
bb227:
  br label %bb229
bb228:
  call void @__olang_check_failed(ptr @olang_loc_9e28678b759cd512_fe4d218246f136e6)
  unreachable
bb229:
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elastBracket(ptr %v0, ptr %a0, %"compiler/source:Span" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i8
  %l12 = alloca { i64, ptr }
  %l14 = alloca ptr
  %l22 = alloca { i64, ptr }
  %l23 = alloca i32
  %l31 = alloca i64
  %l34 = alloca i64
  %l56 = alloca { i64, ptr }
  %l72 = alloca i1
  %l75 = alloca i1
  %l84 = alloca %"compiler/source:Span"
  %l90 = alloca %"compiler/source:Span"
  %l91 = alloca ptr
  %l100 = alloca %"compiler/source:Span"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/source:Span"
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 11
  store ptr %t3, ptr %l14, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/scope:Scoper", ptr %t4, i32 0, i32 26
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = icmp eq ptr %t7, null
  br i1 %t9, label %bb1, label %bb2
bb1:
  call void @__olang_check_failed(ptr @olang_loc_80dc90fe4960987f_e8c65fabb0c3bdbb)
  unreachable
bb2:
  br label %bb3
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/scope:Scoper", ptr %t11, i32 0, i32 26
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t17 = getelementptr %"compiler/typed:Body", ptr %t14, i32 0, i32 3
  %t18 = load i64, ptr %t17, !tbaa !24
  %t19 = load ptr, ptr %l14, !tbaa !29
  %t21 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %v0, ptr %v0, ptr %t19, i64 %t18)
  %t22 = extractvalue { i32, { i64, ptr } } %t21, 1
  %t23 = extractvalue { i32, { i64, ptr } } %t21, 0
  store i32 %t23, ptr %l23
  %t24 = icmp ne i32 %t23, 0
  br i1 %t24, label %bb5, label %ok.25, !prof !99
ok.25:
  store { i64, ptr } %t22, ptr %l22
  br label %bb4
bb4:
  %t26 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t26, ptr %l12, !tbaa !27
  br label %bb7
bb5:
  br label %bb6
bb6:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d11, i32 0, i32 1) }, ptr %l12, !tbaa !27
  br label %bb7
bb7:
  %t27 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t27, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  store i64 -1, ptr %l4, !tbaa !24
  %t28 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t29 = load i32, ptr %t28, !tbaa !23
  %t31 = sext i32 %t29 to i64
  store i64 %t31, ptr %l5, !tbaa !24
  %t33 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 1
  %t34 = load i32, ptr %t33, !tbaa !23
  %t36 = sext i32 %t34 to i64
  store i64 %t36, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t38 = load i64, ptr %l6, !tbaa !24
  %t39 = load i64, ptr %l5, !tbaa !24
  %t42 = icmp sgt i64 %t38, %t39
  br i1 %t42, label %bb8, label %bb9
bb8:
  %t44 = load i64, ptr %l7, !tbaa !24
  %t46 = icmp sgt i64 %t44, 0
  br i1 %t46, label %bb10, label %bb11
bb9:
  store i64 0, ptr %l31, !tbaa !24
  br label %bb13
bb10:
  %t48 = load i64, ptr %l6, !tbaa !24
  %t49 = load i64, ptr %l5, !tbaa !24
  %t52 = sub i64 %t48, %t49
  %t53 = load i64, ptr %l7, !tbaa !24
  %t56 = add i64 %t52, %t53
  %t58 = sub i64 %t56, 1
  %t59 = load i64, ptr %l7, !tbaa !24
  %t62 = sdiv i64 %t58, %t59
  store i64 %t62, ptr %l34, !tbaa !24
  br label %bb12
bb11:
  store i64 0, ptr %l34, !tbaa !24
  br label %bb12
bb12:
  %t64 = load i64, ptr %l34, !tbaa !24
  store i64 %t64, ptr %l31, !tbaa !24
  br label %bb13
bb13:
  %t65 = load i64, ptr %l31, !tbaa !24
  store i64 %t65, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb14
bb14:
  %t66 = load i64, ptr %l9, !tbaa !24
  %t67 = load i64, ptr %l8, !tbaa !24
  %t70 = icmp slt i64 %t66, %t67
  %t72 = xor i1 %t70, true
  br i1 %t72, label %bb15, label %bb16
bb15:
  br label %bb40
bb16:
  br label %bb17
bb17:
  %t74 = load i64, ptr %l5, !tbaa !24
  %t75 = load i64, ptr %l9, !tbaa !24
  %t76 = load i64, ptr %l7, !tbaa !24
  %t79 = mul i64 %t75, %t76
  %t82 = add i64 %t74, %t79
  store i64 %t82, ptr %l10, !tbaa !24
  %t84 = load i64, ptr %l10, !tbaa !24
  %t85 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t87 = extractvalue { i64, ptr } %t85, 0
  %t90 = icmp sge i64 %t84, %t87
  br i1 %t90, label %bb18, label %bb19
bb18:
  br label %bb40
bb19:
  br label %bb20
bb20:
  %t92 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t92, ptr %l56, !tbaa !27
  %t93 = load i64, ptr %l10, !tbaa !24
  %t95 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !27
  %t97 = getelementptr i8, ptr %t96, i64 %t93
  %t98 = load i8, ptr %t97, !tbaa !32
  store i8 %t98, ptr %l11, !tbaa !22
  %t100 = load i8, ptr %l11, !tbaa !22
  %t102 = icmp eq i8 %t100, 91
  br i1 %t102, label %bb21, label %bb22
bb21:
  %t104 = load i64, ptr %l3, !tbaa !24
  %t106 = icmp eq i64 %t104, 0
  br i1 %t106, label %bb23, label %bb24
bb22:
  %t108 = load i8, ptr %l11, !tbaa !22
  %t110 = icmp eq i8 %t108, 40
  br i1 %t110, label %bb26, label %bb27
bb23:
  %t112 = load i64, ptr %l10, !tbaa !24
  store i64 %t112, ptr %l4, !tbaa !24
  br label %bb25
bb24:
  br label %bb25
bb25:
  %t114 = load i64, ptr %l3, !tbaa !24
  %t116 = add i64 %t114, 1
  store i64 %t116, ptr %l3, !tbaa !24
  br label %bb38
bb26:
  %t118 = load i64, ptr %l3, !tbaa !24
  %t120 = add i64 %t118, 1
  store i64 %t120, ptr %l3, !tbaa !24
  br label %bb37
bb27:
  %t122 = load i8, ptr %l11, !tbaa !22
  %t124 = icmp eq i8 %t122, 93
  br i1 %t124, label %bb28, label %bb29
bb28:
  store i1 true, ptr %l72, !tbaa !21
  br label %bb30
bb29:
  %t126 = load i8, ptr %l11, !tbaa !22
  %t128 = icmp eq i8 %t126, 41
  store i1 %t128, ptr %l72, !tbaa !21
  br label %bb30
bb30:
  %t130 = load i1, ptr %l72, !tbaa !21
  br i1 %t130, label %bb31, label %bb32
bb31:
  %t131 = load i64, ptr %l3, !tbaa !24
  %t133 = icmp sgt i64 %t131, 0
  store i1 %t133, ptr %l75, !tbaa !21
  br label %bb33
bb32:
  store i1 false, ptr %l75, !tbaa !21
  br label %bb33
bb33:
  %t135 = load i1, ptr %l75, !tbaa !21
  br i1 %t135, label %bb34, label %bb35
bb34:
  %t136 = load i64, ptr %l3, !tbaa !24
  %t138 = sub i64 %t136, 1
  store i64 %t138, ptr %l3, !tbaa !24
  br label %bb36
bb35:
  br label %bb36
bb36:
  br label %bb37
bb37:
  br label %bb38
bb38:
  br label %bb39
bb39:
  %t140 = load i64, ptr %l9, !tbaa !24
  %t142 = add i64 %t140, 1
  store i64 %t142, ptr %l9, !tbaa !24
  br label %bb14
bb40:
  %t144 = load i64, ptr %l4, !tbaa !24
  %t146 = icmp sge i64 %t144, 0
  br i1 %t146, label %bb41, label %bb42
bb41:
  %t148 = load i64, ptr %l4, !tbaa !24
  %t150 = trunc i64 %t148 to i32
  %t151 = load i64, ptr %l4, !tbaa !24
  %t153 = add i64 %t151, 1
  %t155 = trunc i64 %t153 to i32
  %t158 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 %t150, i32 %t155)
  store %"compiler/source:Span" %t158, ptr %l90
  br label %bb43
bb42:
  %t159 = load ptr, ptr %l0, !tbaa !29
  store ptr %t159, ptr %l91, !tbaa !29
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t162 = getelementptr %"compiler/scope:Scoper", ptr %t160, i32 0, i32 26
  %t163 = load ptr, ptr %t162, !tbaa !29
  %t165 = icmp eq ptr %t163, null
  br i1 %t165, label %bb44, label %bb45
bb43:
  %t167 = load %"compiler/source:Span", ptr %l90
  store %"compiler/source:Span" %t167, ptr %l84
  br label %bb48
bb44:
  call void @__olang_check_failed(ptr @olang_loc_e199b27d8a069b60_e8a91e9929fc614c)
  unreachable
bb45:
  br label %bb46
bb46:
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t170 = getelementptr %"compiler/scope:Scoper", ptr %t168, i32 0, i32 26
  %t171 = load ptr, ptr %t170, !tbaa !29
  %t174 = getelementptr %"compiler/typed:Body", ptr %t171, i32 0, i32 3
  %t175 = load i64, ptr %t174, !tbaa !24
  %t176 = load %"compiler/source:Span", ptr %l1
  %t177 = load ptr, ptr %l91, !tbaa !29
  %t180 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efirstToken(ptr %v0, ptr %t177, i64 %t175, %"compiler/source:Span" %t176)
  store %"compiler/source:Span" %t180, ptr %l100
  br label %bb47
bb47:
  %t181 = load %"compiler/source:Span", ptr %l100
  store %"compiler/source:Span" %t181, ptr %l84
  br label %bb48
bb48:
  call void @__olang_scope_close(ptr %s0)
  %t182 = load %"compiler/source:Span", ptr %l84
  store %"compiler/source:Span" %t182, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elocalName(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i32 %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca i32
  %l9 = alloca %"compiler/typed:Local"
  %l13 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"compiler/typed:Body", ptr %a1, i32 0, i32 7
  %t6 = sext i32 %a2 to i64
  %t9 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v1, ptr %t3, i64 %t6)
  store %"compiler/typed:Local" %t9, ptr %l9
  br label %bb1
bb1:
  %t10 = getelementptr %"compiler/typed:Local", ptr %l9, i32 0, i32 0
  %t11 = load i32, ptr %t10, !tbaa !23
  store i32 %t11, ptr %l4, !tbaa !23
  %t13 = load i32, ptr %l4, !tbaa !23
  %t15 = icmp eq i32 %t13, 0
  br i1 %t15, label %bb2, label %bb3
bb2:
  store { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d12, i32 0, i32 1) }, ptr %l14, !tbaa !27
  %t17 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t17, ptr %l13, !tbaa !27
  br label %bb5
bb3:
  %t20 = load i32, ptr %l4, !tbaa !23
  %t23 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v2, ptr %s0, ptr %a3, i32 %t20)
  store { i64, ptr } %t23, ptr %l18
  br label %bb4
bb4:
  %t24 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t25 = extractvalue { i64, ptr } %t24, 1
  %t26 = extractvalue { i64, ptr } %t24, 0
  %t27 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t26)
  call void @olang_textcopy(ptr %t27, ptr %t25, i64 %t26)
  %t28 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t29 = insertvalue { i64, ptr } %t28, ptr %t27, 1
  store { i64, ptr } %t29, ptr %l13, !tbaa !27
  br label %bb5
bb5:
  %t31 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t31, 0
  store i64 %t32, ptr %l20, !tbaa !24
  %t33 = load i64, ptr %l20, !tbaa !24
  %t34 = mul i64 %t33, 1
  %t35 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t34)
  %t36 = insertvalue { i64, ptr } undef, i64 %t33, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t35, 1
  store { i64, ptr } %t37, ptr %l21, !tbaa !27
  %t38 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !27
  %t40 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !27
  %t42 = load i64, ptr %l20, !tbaa !24
  %t43 = mul i64 %t42, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t39, ptr %t41, i64 %t43, i1 false)
  %t44 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t44, ptr %l13, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t45 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t45, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ematchMadeHere(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l18 = alloca { i64, ptr }
  %l25 = alloca i1
  %l29 = alloca i1
  %l42 = alloca i1
  %l43 = alloca ptr
  %l51 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Match", ptr %t1, i32 0, i32 3
  %t4 = load i1, ptr %t3, !tbaa !21
  %t6 = xor i1 %t4, true
  br i1 %t6, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t9 = load ptr, ptr %l1, !tbaa !29
  %t11 = getelementptr %"compiler/typed:Match", ptr %t9, i32 0, i32 1
  %t12 = load { i64, ptr }, ptr %t11, !tbaa !27
  store { i64, ptr } %t12, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t14 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t14, 0
  store i64 %t16, ptr %l4, !tbaa !24
  br label %bb4
bb4:
  %t18 = load i64, ptr %l3, !tbaa !24
  %t19 = load i64, ptr %l4, !tbaa !24
  %t22 = icmp slt i64 %t18, %t19
  %t24 = xor i1 %t22, true
  br i1 %t24, label %bb5, label %bb6
bb5:
  br label %bb16
bb6:
  br label %bb7
bb7:
  %t26 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t26, ptr %l18, !tbaa !27
  %t27 = load i64, ptr %l3, !tbaa !24
  %t29 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = getelementptr ptr, ptr %t30, i64 %t27
  %t32 = load ptr, ptr %t31, !tbaa !39
  store ptr %t32, ptr %l5, !tbaa !29
  %t34 = load ptr, ptr %l5, !tbaa !29
  %t36 = getelementptr %"compiler/typed:Arm", ptr %t34, i32 0, i32 4
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t39 = icmp eq ptr %t37, null
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb8, label %bb9
bb8:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = load ptr, ptr %l5, !tbaa !29
  %t46 = getelementptr %"compiler/typed:Arm", ptr %t44, i32 0, i32 4
  %t47 = load ptr, ptr %t46, !tbaa !29
  %t50 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emadeHere(ptr %v0, ptr %v1, ptr %t43, ptr %t47)
  store i1 %t50, ptr %l29
  br label %bb10
bb9:
  store i1 false, ptr %l25, !tbaa !21
  br label %bb11
bb10:
  %t51 = load i1, ptr %l29, !tbaa !21
  %t52 = xor i1 %t51, true
  store i1 %t52, ptr %l25, !tbaa !21
  br label %bb11
bb11:
  %t54 = load i1, ptr %l25, !tbaa !21
  br i1 %t54, label %bb12, label %bb13
bb12:
  store i1 false, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t56 = load i64, ptr %l3, !tbaa !24
  %t58 = add i64 %t56, 1
  store i64 %t58, ptr %l3, !tbaa !24
  br label %bb4
bb16:
  %t60 = load ptr, ptr %l1, !tbaa !29
  %t62 = getelementptr %"compiler/typed:Match", ptr %t60, i32 0, i32 2
  %t63 = load ptr, ptr %t62, !tbaa !29
  %t65 = icmp eq ptr %t63, null
  br i1 %t65, label %bb17, label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_bfbb893df1c35f5d_ebb7b8931b043491)
  unreachable
bb18:
  br label %bb19
bb19:
  %t67 = load ptr, ptr %l1, !tbaa !29
  %t69 = getelementptr %"compiler/typed:Match", ptr %t67, i32 0, i32 2
  %t70 = load ptr, ptr %t69, !tbaa !29
  %t73 = getelementptr %"compiler/typed:Arm", ptr %t70, i32 0, i32 4
  %t74 = load ptr, ptr %t73, !tbaa !29
  %t76 = icmp eq ptr %t74, null
  br i1 %t76, label %bb20, label %bb21
bb20:
  store i1 true, ptr %l42, !tbaa !21
  br label %bb26
bb21:
  %t78 = load ptr, ptr %l0, !tbaa !29
  store ptr %t78, ptr %l43, !tbaa !29
  %t79 = load ptr, ptr %l1, !tbaa !29
  %t81 = getelementptr %"compiler/typed:Match", ptr %t79, i32 0, i32 2
  %t82 = load ptr, ptr %t81, !tbaa !29
  %t84 = icmp eq ptr %t82, null
  br i1 %t84, label %bb22, label %bb23
bb22:
  call void @__olang_check_failed(ptr @olang_loc_bfbb893df1c35f5d_ebb7b8931b043491)
  unreachable
bb23:
  br label %bb24
bb24:
  %t86 = load ptr, ptr %l1, !tbaa !29
  %t88 = getelementptr %"compiler/typed:Match", ptr %t86, i32 0, i32 2
  %t89 = load ptr, ptr %t88, !tbaa !29
  %t92 = getelementptr %"compiler/typed:Arm", ptr %t89, i32 0, i32 4
  %t93 = load ptr, ptr %t92, !tbaa !29
  %t94 = load ptr, ptr %l43, !tbaa !29
  %t96 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emadeHere(ptr %v0, ptr %v1, ptr %t94, ptr %t93)
  store i1 %t96, ptr %l51
  br label %bb25
bb25:
  %t97 = load i1, ptr %l51, !tbaa !21
  store i1 %t97, ptr %l42, !tbaa !21
  br label %bb26
bb26:
  %t98 = load i1, ptr %l42, !tbaa !21
  store i1 %t98, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enamedRecs(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
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
  %l11 = alloca ptr
  %l12 = alloca i1
  %l21 = alloca i32
  %l23 = alloca ptr
  %l24 = alloca i1
  %l34 = alloca i32
  %l36 = alloca ptr
  %l37 = alloca i1
  %l47 = alloca i1
  %l53 = alloca { i64, ptr }
  %l57 = alloca i32
  %l59 = alloca ptr
  %l60 = alloca i1
  %l69 = alloca i32
  %l76 = alloca i32
  %l78 = alloca ptr
  %l79 = alloca i1
  %l87 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i32 0, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t5 = load ptr, ptr %l1, !tbaa !29
  store ptr %t5, ptr %l11, !tbaa !29
  store i1 false, ptr %l12, !tbaa !21
  %t6 = load ptr, ptr %l11, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l11, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 18}
  %t12 = icmp eq i64 %t10, 17
  store i1 %t12, ptr %l12, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l12, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t16 = getelementptr { i64, [5 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t16, i32 0, i32 2
  %t18 = load ptr, ptr %t17
  store ptr %t18, ptr %l3, !tbaa !29
  br label %bb8
bb7:
  br label %bb12
bb8:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load ptr, ptr %l3, !tbaa !29
  %t23 = load ptr, ptr %l2, !tbaa !29
  %t27 = call i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enamedRecs(ptr %v0, ptr %v1, ptr %v2, ptr %t20, ptr %t21, ptr %t23)
  store i32 %t27, ptr %l21
  %t28 = icmp ne i32 %t27, 0
  br i1 %t28, label %bb10, label %ok.29, !prof !99
ok.29:
  br label %bb9
bb9:
  br label %bb11
bb10:
  %t30 = load i32, ptr %l21, !tbaa !23
  %t31 = lshr i32 %t30, 16
  %t32 = and i32 %t30, 65535
  %t33 = icmp eq i32 %t31, 1
  %t34 = select i1 %t33, i32 1, i32 0
  %t35 = icmp eq i32 %t30, 0
  %t36 = shl i32 %t34, 16
  %t37 = or i32 %t36, %t32
  %t38 = select i1 %t35, i32 0, i32 %t37
  store i32 %t38, ptr %rv
  br label %ret
bb11:
  br label %bb62
bb12:
  %t40 = load ptr, ptr %l1, !tbaa !29
  store ptr %t40, ptr %l23, !tbaa !29
  store i1 false, ptr %l24, !tbaa !21
  %t41 = load ptr, ptr %l23, !tbaa !29
  %t42 = icmp ne ptr %t41, null
  br i1 %t42, label %bb13, label %bb14
bb13:
  %t44 = load ptr, ptr %l23, !tbaa !29
  %t45 = load i64, ptr %t44, !range !{i64 0, i64 18}
  %t47 = icmp eq i64 %t45, 5
  store i1 %t47, ptr %l24, !tbaa !21
  br label %bb14
bb14:
  %t48 = load i1, ptr %l24, !tbaa !21
  br i1 %t48, label %bb15, label %bb16
bb15:
  %t49 = load ptr, ptr %l1, !tbaa !29
  %t51 = getelementptr { i64, [5 x i64] }, ptr %t49, i32 0, i32 1
  %t52 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t51, i32 0, i32 2
  %t53 = load ptr, ptr %t52
  store ptr %t53, ptr %l4, !tbaa !29
  br label %bb17
bb16:
  br label %bb21
bb17:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = load ptr, ptr %l4, !tbaa !29
  %t58 = getelementptr %"compiler/typed:Promote", ptr %t56, i32 0, i32 0
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t61 = load ptr, ptr %l2, !tbaa !29
  %t65 = call i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enamedRecs(ptr %v0, ptr %v1, ptr %v2, ptr %t55, ptr %t59, ptr %t61)
  store i32 %t65, ptr %l34
  %t66 = icmp ne i32 %t65, 0
  br i1 %t66, label %bb19, label %ok.67, !prof !99
ok.67:
  br label %bb18
bb18:
  br label %bb20
bb19:
  %t68 = load i32, ptr %l34, !tbaa !23
  %t69 = lshr i32 %t68, 16
  %t70 = and i32 %t68, 65535
  %t71 = icmp eq i32 %t69, 1
  %t72 = select i1 %t71, i32 1, i32 0
  %t73 = icmp eq i32 %t68, 0
  %t74 = shl i32 %t72, 16
  %t75 = or i32 %t74, %t70
  %t76 = select i1 %t73, i32 0, i32 %t75
  store i32 %t76, ptr %rv
  br label %ret
bb20:
  br label %bb62
bb21:
  %t78 = load ptr, ptr %l1, !tbaa !29
  store ptr %t78, ptr %l36, !tbaa !29
  store i1 false, ptr %l37, !tbaa !21
  %t79 = load ptr, ptr %l36, !tbaa !29
  %t80 = icmp ne ptr %t79, null
  br i1 %t80, label %bb22, label %bb23
bb22:
  %t82 = load ptr, ptr %l36, !tbaa !29
  %t83 = load i64, ptr %t82, !range !{i64 0, i64 18}
  %t85 = icmp eq i64 %t83, 9
  store i1 %t85, ptr %l37, !tbaa !21
  br label %bb23
bb23:
  %t86 = load i1, ptr %l37, !tbaa !21
  br i1 %t86, label %bb24, label %bb25
bb24:
  %t87 = load ptr, ptr %l1, !tbaa !29
  %t89 = getelementptr { i64, [5 x i64] }, ptr %t87, i32 0, i32 1
  %t90 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t89, i32 0, i32 2
  %t91 = load i32, ptr %t90, !range !{i32 0, i32 52}
  store i32 %t91, ptr %l5
  %t93 = load ptr, ptr %l1, !tbaa !29
  %t95 = getelementptr { i64, [5 x i64] }, ptr %t93, i32 0, i32 1
  %t96 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t95, i32 0, i32 4
  %t97 = load { i64, ptr }, ptr %t96
  store { i64, ptr } %t97, ptr %l6, !tbaa !27
  br label %bb26
bb25:
  br label %bb36
bb26:
  %t99 = load i32, ptr %l5, !range !{i32 0, i32 52}
  %t101 = trunc i64 20 to i32
  %t102 = icmp eq i32 %t99, %t101
  %t104 = xor i1 %t102, true
  br i1 %t104, label %bb27, label %bb28
bb27:
  store i1 true, ptr %l47, !tbaa !21
  br label %bb29
bb28:
  %t106 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t108 = extractvalue { i64, ptr } %t106, 0
  %t110 = icmp ne i64 %t108, 1
  store i1 %t110, ptr %l47, !tbaa !21
  br label %bb29
bb29:
  %t112 = load i1, ptr %l47, !tbaa !21
  br i1 %t112, label %bb30, label %bb31
bb30:
  store i32 65536, ptr %rv
  br label %ret
bb31:
  br label %bb32
bb32:
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t115 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t115, ptr %l53, !tbaa !27
  %t116 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t117 = load ptr, ptr %t116, !tbaa !27
  %t118 = getelementptr ptr, ptr %t117, i64 0
  %t119 = load ptr, ptr %t118, !tbaa !39
  %t121 = load ptr, ptr %l2, !tbaa !29
  %t125 = call i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enamedRecs(ptr %v0, ptr %v1, ptr %v2, ptr %t114, ptr %t119, ptr %t121)
  store i32 %t125, ptr %l57
  %t126 = icmp ne i32 %t125, 0
  br i1 %t126, label %bb34, label %ok.127, !prof !99
ok.127:
  br label %bb33
bb33:
  br label %bb35
bb34:
  %t128 = load i32, ptr %l57, !tbaa !23
  %t129 = lshr i32 %t128, 16
  %t130 = and i32 %t128, 65535
  %t131 = icmp eq i32 %t129, 1
  %t132 = select i1 %t131, i32 1, i32 0
  %t133 = icmp eq i32 %t128, 0
  %t134 = shl i32 %t132, 16
  %t135 = or i32 %t134, %t130
  %t136 = select i1 %t133, i32 0, i32 %t135
  store i32 %t136, ptr %rv
  br label %ret
bb35:
  br label %bb62
bb36:
  %t138 = load ptr, ptr %l1, !tbaa !29
  store ptr %t138, ptr %l59, !tbaa !29
  store i1 false, ptr %l60, !tbaa !21
  %t139 = load ptr, ptr %l59, !tbaa !29
  %t140 = icmp ne ptr %t139, null
  br i1 %t140, label %bb37, label %bb38
bb37:
  %t142 = load ptr, ptr %l59, !tbaa !29
  %t143 = load i64, ptr %t142, !range !{i64 0, i64 18}
  %t145 = icmp eq i64 %t143, 11
  store i1 %t145, ptr %l60, !tbaa !21
  br label %bb38
bb38:
  %t146 = load i1, ptr %l60, !tbaa !21
  br i1 %t146, label %bb39, label %bb40
bb39:
  %t147 = load ptr, ptr %l1, !tbaa !29
  %t149 = getelementptr { i64, [5 x i64] }, ptr %t147, i32 0, i32 1
  %t150 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t149, i32 0, i32 2
  %t151 = load ptr, ptr %t150
  store ptr %t151, ptr %l7, !tbaa !29
  br label %bb41
bb40:
  br label %bb48
bb41:
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t154 = load ptr, ptr %l7, !tbaa !29
  %t156 = getelementptr %"compiler/typed:Cond", ptr %t154, i32 0, i32 1
  %t157 = load ptr, ptr %t156, !tbaa !29
  %t158 = load ptr, ptr %l2, !tbaa !29
  %t162 = call i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enamedRecs(ptr %v0, ptr %v1, ptr %v2, ptr %t153, ptr %t157, ptr %t158)
  store i32 %t162, ptr %l69
  %t163 = icmp ne i32 %t162, 0
  br i1 %t163, label %bb43, label %ok.164, !prof !99
ok.164:
  br label %bb42
bb42:
  br label %bb44
bb43:
  %t165 = load i32, ptr %l69, !tbaa !23
  %t166 = lshr i32 %t165, 16
  %t167 = and i32 %t165, 65535
  %t168 = icmp eq i32 %t166, 1
  %t169 = select i1 %t168, i32 1, i32 0
  %t170 = icmp eq i32 %t165, 0
  %t171 = shl i32 %t169, 16
  %t172 = or i32 %t171, %t167
  %t173 = select i1 %t170, i32 0, i32 %t172
  store i32 %t173, ptr %rv
  br label %ret
bb44:
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t176 = load ptr, ptr %l7, !tbaa !29
  %t178 = getelementptr %"compiler/typed:Cond", ptr %t176, i32 0, i32 2
  %t179 = load ptr, ptr %t178, !tbaa !29
  %t181 = load ptr, ptr %l2, !tbaa !29
  %t185 = call i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enamedRecs(ptr %v0, ptr %v1, ptr %v2, ptr %t175, ptr %t179, ptr %t181)
  store i32 %t185, ptr %l76
  %t186 = icmp ne i32 %t185, 0
  br i1 %t186, label %bb46, label %ok.187, !prof !99
ok.187:
  br label %bb45
bb45:
  br label %bb47
bb46:
  %t188 = load i32, ptr %l76, !tbaa !23
  %t189 = lshr i32 %t188, 16
  %t190 = and i32 %t188, 65535
  %t191 = icmp eq i32 %t189, 1
  %t192 = select i1 %t191, i32 1, i32 0
  %t193 = icmp eq i32 %t188, 0
  %t194 = shl i32 %t192, 16
  %t195 = or i32 %t194, %t190
  %t196 = select i1 %t193, i32 0, i32 %t195
  store i32 %t196, ptr %rv
  br label %ret
bb47:
  br label %bb62
bb48:
  %t198 = load ptr, ptr %l1, !tbaa !29
  store ptr %t198, ptr %l78, !tbaa !29
  store i1 false, ptr %l79, !tbaa !21
  %t199 = load ptr, ptr %l78, !tbaa !29
  %t200 = icmp ne ptr %t199, null
  br i1 %t200, label %bb49, label %bb50
bb49:
  %t202 = load ptr, ptr %l78, !tbaa !29
  %t203 = load i64, ptr %t202, !range !{i64 0, i64 18}
  %t205 = icmp eq i64 %t203, 15
  store i1 %t205, ptr %l79, !tbaa !21
  br label %bb50
bb50:
  %t206 = load i1, ptr %l79, !tbaa !21
  br i1 %t206, label %bb51, label %bb52
bb51:
  %t207 = load ptr, ptr %l1, !tbaa !29
  %t209 = getelementptr { i64, [5 x i64] }, ptr %t207, i32 0, i32 1
  %t210 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t209, i32 0, i32 2
  %t211 = load ptr, ptr %t210
  store ptr %t211, ptr %l8, !tbaa !29
  br label %bb53
bb52:
  br label %bb57
bb53:
  %t213 = load ptr, ptr %l0, !tbaa !29
  %t214 = load ptr, ptr %l8, !tbaa !29
  %t215 = load ptr, ptr %l2, !tbaa !29
  %t219 = call i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enamedRec(ptr %v0, ptr %v1, ptr %v2, ptr %t213, ptr %t214, ptr %t215)
  store i32 %t219, ptr %l87
  %t220 = icmp ne i32 %t219, 0
  br i1 %t220, label %bb55, label %ok.221, !prof !99
ok.221:
  br label %bb54
bb54:
  br label %bb56
bb55:
  %t222 = load i32, ptr %l87, !tbaa !23
  %t223 = lshr i32 %t222, 16
  %t224 = and i32 %t222, 65535
  %t225 = icmp eq i32 %t223, 1
  %t226 = select i1 %t225, i32 1, i32 0
  %t227 = icmp eq i32 %t222, 0
  %t228 = shl i32 %t226, 16
  %t229 = or i32 %t228, %t224
  %t230 = select i1 %t227, i32 0, i32 %t229
  store i32 %t230, ptr %rv
  br label %ret
bb56:
  br label %bb62
bb57:
  br i1 true, label %bb58, label %bb59
bb58:
  br label %bb60
bb59:
  br label %bb61
bb60:
  store i32 65536, ptr %rv
  br label %ret
bb61:
  call void @__olang_check_failed(ptr @olang_loc_5ac3e862d6703e38_923f94a85f2c12c)
  unreachable
bb62:
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enewTwin(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l4 = alloca ptr
  %l5 = alloca i64
  %l10 = alloca i64
  %l24 = alloca ptr
  %l26 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l28 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l30 = alloca ptr
  %l31 = alloca %"compiler/scope:summary"
  %l34 = alloca ptr
  %l38 = alloca ptr
  %l39 = alloca %"compiler/typed:Plan"
  %l47 = alloca ptr
  %l48 = alloca i64
  %l49 = alloca i64
  %l53 = alloca i64
  %l54 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i64
  %t47 = alloca %"compiler/scope:summary", align 8
  %t61 = alloca %"compiler/typed:Plan", align 8
  %t64 = alloca %"compiler/typed:Plan", align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 227
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l4, !tbaa !29
  %t6 = load ptr, ptr %l4, !tbaa !29
  %t8 = getelementptr %"compiler/scope:twinTab", ptr %t6, i32 0, i32 1
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l10
  br label %bb1
bb1:
  %t11 = load i64, ptr %l10, !tbaa !24
  store i64 %t11, ptr %l5, !tbaa !24
  %t12 = load ptr, ptr %l4, !tbaa !29
  %t14 = getelementptr %"compiler/scope:twinTab", ptr %t12, i32 0, i32 0
  %t15 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t17 = load i64, ptr %l5, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20I64_H3f302293c6f4c07a80dfb5e30c1500bf(ptr %v0, ptr %t14, { i64, ptr } %t15, i64 %t17)
  br label %bb2
bb2:
  %t21 = load ptr, ptr %l4, !tbaa !29
  %t23 = getelementptr %"compiler/scope:twinTab", ptr %t21, i32 0, i32 1
  %t24 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t23, i64 %t24)
  br label %bb3
bb3:
  %t27 = load ptr, ptr %l4, !tbaa !29
  %t29 = getelementptr %"compiler/scope:twinTab", ptr %t27, i32 0, i32 2
  %t30 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_3e_2ePus_H7d1143c374f11cf9cab67f1e79e7bcb4(ptr %v0, ptr %t29, { i64, ptr } %t30)
  br label %bb4
bb4:
  %t34 = load ptr, ptr %l4, !tbaa !29
  %t36 = getelementptr %"compiler/scope:twinTab", ptr %t34, i32 0, i32 3
  store ptr %t36, ptr %l24, !tbaa !29
  %t39 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %a3
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t39, ptr %l26
  %t41 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e(ptr %s0, ptr %l26)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t41, ptr %l28
  br label %bb5
bb5:
  %t42 = load ptr, ptr %l24, !tbaa !29
  %t43 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l28
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fmap_3aMap_3cI64_2c_20c_H3625ae7f5f9460b5970f31ce1f03179d(ptr %v0, ptr %s0, ptr %t42, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t43)
  br label %bb6
bb6:
  %t44 = load ptr, ptr %l4, !tbaa !29
  %t46 = getelementptr %"compiler/scope:twinTab", ptr %t44, i32 0, i32 4
  store ptr %t46, ptr %l30, !tbaa !29
  call void @compiler_2fscope_3asummary_2ector(ptr %t47, ptr %v0)
  call void @llvm.memmove.p0.p0.i64(ptr %l31, ptr %t47, i64 624, i1 false)
  br label %bb7
bb7:
  %t48 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 624, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t48, ptr %l31, i64 624, i1 false)
  %t49 = load ptr, ptr %l30, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_H6c9b3c63d1bd8a9585cb935569d90c26(ptr %v0, ptr %v0, ptr %t49, ptr %t48)
  br label %bb8
bb8:
  %t51 = load ptr, ptr %l4, !tbaa !29
  %t53 = getelementptr %"compiler/scope:twinTab", ptr %t51, i32 0, i32 5
  store ptr %t53, ptr %l34, !tbaa !29
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/scope:Scoper", ptr %t54, i32 0, i32 1
  %t57 = load i64, ptr %l1, !tbaa !24
  %t60 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t56, i64 %t57)
  store ptr %t60, ptr %l38
  br label %bb9
bb9:
  %t62 = load ptr, ptr %l38, !tbaa !29
  call void @compiler_2ftyped_2ePlan_2eNew(ptr %t61, ptr %v0, ptr %v0, ptr %t62)
  call void @llvm.memmove.p0.p0.i64(ptr %l39, ptr %t61, i64 536, i1 false)
  br label %bb10
bb10:
  %t63 = load ptr, ptr %l34, !tbaa !29
  call void @llvm.memmove.p0.p0.i64(ptr %t64, ptr %l39, i64 536, i1 false)
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2ePush_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %v0, ptr %t63, ptr %t64)
  br label %bb11
bb11:
  %t65 = load ptr, ptr %l4, !tbaa !29
  %t67 = getelementptr %"compiler/scope:twinTab", ptr %t65, i32 0, i32 6
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t67, i1 false)
  br label %bb12
bb12:
  %t69 = load ptr, ptr %l4, !tbaa !29
  %t71 = getelementptr %"compiler/scope:twinTab", ptr %t69, i32 0, i32 7
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t71, i1 false)
  br label %bb13
bb13:
  %t73 = load ptr, ptr %l4, !tbaa !29
  %t75 = getelementptr %"compiler/scope:twinTab", ptr %t73, i32 0, i32 8
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t75, i64 -1)
  br label %bb14
bb14:
  %t77 = load ptr, ptr %l4, !tbaa !29
  %t79 = getelementptr %"compiler/scope:twinTab", ptr %t77, i32 0, i32 10
  store ptr %t79, ptr %l47, !tbaa !29
  %t80 = load i64, ptr %l1, !tbaa !24
  store i64 %t80, ptr %l48, !tbaa !24
  %t81 = load ptr, ptr %l4, !tbaa !29
  %t83 = getelementptr %"compiler/scope:twinTab", ptr %t81, i32 0, i32 10
  %t84 = load i64, ptr %l1, !tbaa !24
  %t87 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t83, i64 %t84)
  %t88 = extractvalue { i32, i64 } %t87, 1
  %t89 = extractvalue { i32, i64 } %t87, 0
  store i32 %t89, ptr %l54
  %t90 = icmp ne i32 %t89, 0
  br i1 %t90, label %bb16, label %ok.91, !prof !99
ok.91:
  store i64 %t88, ptr %l53
  br label %bb15
bb15:
  %t92 = load i64, ptr %l53, !tbaa !24
  store i64 %t92, ptr %l49, !tbaa !24
  br label %bb18
bb16:
  br label %bb17
bb17:
  store i64 0, ptr %l49, !tbaa !24
  br label %bb18
bb18:
  %t93 = load i64, ptr %l49, !tbaa !24
  %t94 = add i64 %t93, 1
  %t95 = load ptr, ptr %l47, !tbaa !29
  %t96 = load i64, ptr %l48, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t95, i64 %t96, i64 %t94)
  br label %bb19
bb19:
  %t98 = load i64, ptr %l5, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t98, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enullLit(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca i32
  %l6 = alloca i1
  %l7 = alloca ptr
  %l8 = alloca i1
  %l15 = alloca i1
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
  %t6 = load ptr, ptr %l1, !tbaa !29
  store ptr %t6, ptr %l7, !tbaa !29
  store i1 false, ptr %l8, !tbaa !21
  %t7 = load ptr, ptr %l7, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb4, label %bb5
bb4:
  %t10 = load ptr, ptr %l7, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 18}
  %t13 = icmp eq i64 %t11, 0
  store i1 %t13, ptr %l8, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l8, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr { i64, [5 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { %"compiler/source:Span", i32, i64 }, ptr %t17, i32 0, i32 1
  %t19 = load i32, ptr %t18
  store i32 %t19, ptr %l2, !tbaa !23
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t22 = load i32, ptr %l2, !tbaa !23
  %t25 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholds(ptr %v0, ptr %a0, i32 %t22)
  store i1 %t25, ptr %l15
  br label %bb9
bb9:
  %t26 = load i1, ptr %l15, !tbaa !21
  store i1 %t26, ptr %l6, !tbaa !21
  br label %bb15
bb10:
  br i1 true, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb14
bb13:
  store i1 false, ptr %l6, !tbaa !21
  br label %bb15
bb14:
  call void @__olang_check_failed(ptr @olang_loc_e7681619463fd7dc_9fce73d958638c28)
  unreachable
bb15:
  %t27 = load i1, ptr %l6, !tbaa !21
  store i1 %t27, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartLand(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, { i64, [2 x i64] } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca { i64, [2 x i64] }
  %l4 = alloca i64
  %l6 = alloca i1
  %l8 = alloca i1
  %l9 = alloca { i64, [2 x i64] }
  %l10 = alloca ptr
  %l12 = alloca { i64, [2 x i64] }
  %l14 = alloca i1
  %l15 = alloca i1
  %l18 = alloca i1
  %l23 = alloca i64
  %l26 = alloca i1
  %l27 = alloca { i64, [2 x i64] }
  %l31 = alloca { i64, [2 x i64] }
  %l32 = alloca i32
  %l37 = alloca i1
  %l41 = alloca i1
  %rv = alloca i64
  %t48 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, [2 x i64] } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [2 x i64] }, ptr %l3
  %t3 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t1)
  store i1 %t3, ptr %l6
  br label %bb1
bb1:
  %t4 = load i1, ptr %l6, !tbaa !21
  %t5 = xor i1 %t4, true
  br i1 %t5, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb6
bb3:
  %t7 = load { i64, [2 x i64] }, ptr %l3
  store { i64, [2 x i64] } %t7, ptr %l9
  store ptr %l9, ptr %l10, !tbaa !29
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehere(ptr %v0, ptr %t8)
  store { i64, [2 x i64] } %t10, ptr %l12
  br label %bb4
bb4:
  %t11 = load ptr, ptr %l10, !tbaa !29
  %t13 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3aTerm(ptr %t11, ptr %l12)
  store i1 %t13, ptr %l14
  br label %bb5
bb5:
  %t14 = load i1, ptr %l14, !tbaa !21
  store i1 %t14, ptr %l8, !tbaa !21
  br label %bb6
bb6:
  %t15 = load i1, ptr %l8, !tbaa !21
  br i1 %t15, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb10
bb8:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t20 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholds(ptr %v0, ptr %t16, i32 %a2)
  store i1 %t20, ptr %l18
  br label %bb9
bb9:
  %t21 = load i1, ptr %l18, !tbaa !21
  %t22 = xor i1 %t21, true
  store i1 %t22, ptr %l15, !tbaa !21
  br label %bb10
bb10:
  %t24 = load i1, ptr %l15, !tbaa !21
  br i1 %t24, label %bb11, label %bb12
bb11:
  store i64 -1, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load ptr, ptr %l1, !tbaa !29
  %t30 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartCall(ptr %v0, ptr %v1, ptr %t26, ptr %t27)
  store i64 %t30, ptr %l23
  br label %bb14
bb14:
  %t31 = load i64, ptr %l23, !tbaa !24
  store i64 %t31, ptr %l4, !tbaa !24
  %t32 = load i64, ptr %l4, !tbaa !24
  %t34 = icmp slt i64 %t32, 0
  br i1 %t34, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb21
bb16:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/scope:Scoper", ptr %t36, i32 0, i32 114
  %t39 = load i64, ptr %l4, !tbaa !24
  %t42 = call { i32, { i64, [2 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e_2e_H65b4b9a6d1679f5b3ddedaa5b2e336bd(ptr %v0, ptr %t38, i64 %t39)
  %t43 = extractvalue { i32, { i64, [2 x i64] } } %t42, 1
  %t44 = extractvalue { i32, { i64, [2 x i64] } } %t42, 0
  store i32 %t44, ptr %l32
  %t45 = icmp ne i32 %t44, 0
  br i1 %t45, label %bb18, label %ok.46, !prof !99
ok.46:
  store { i64, [2 x i64] } %t43, ptr %l31
  br label %bb17
bb17:
  %t47 = load { i64, [2 x i64] }, ptr %l31
  store { i64, [2 x i64] } %t47, ptr %l27
  br label %bb20
bb18:
  br label %bb19
bb19:
  store { i64, [2 x i64] } zeroinitializer, ptr %t48
  %t49 = getelementptr { i64, [2 x i64] }, ptr %t48, i32 0, i32 0
  store i64 0, ptr %t49
  %t50 = load { i64, [2 x i64] }, ptr %t48
  store { i64, [2 x i64] } %t50, ptr %l27
  br label %bb20
bb20:
  %t52 = load { i64, [2 x i64] }, ptr %l27
  %t54 = extractvalue { i64, [2 x i64] } %t52, 0
  %t55 = icmp eq i64 %t54, 0
  %t57 = xor i1 %t55, true
  store i1 %t57, ptr %l26, !tbaa !21
  br label %bb21
bb21:
  %t59 = load i1, ptr %l26, !tbaa !21
  br i1 %t59, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l37, !tbaa !21
  br label %bb25
bb23:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load ptr, ptr %l1, !tbaa !29
  %t62 = load { i64, [2 x i64] }, ptr %l3
  %t66 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartOK(ptr %v0, ptr %v1, ptr %t60, ptr %t61, { i64, [2 x i64] } %t62)
  store i1 %t66, ptr %l41
  br label %bb24
bb24:
  %t67 = load i1, ptr %l41, !tbaa !21
  %t68 = xor i1 %t67, true
  store i1 %t68, ptr %l37, !tbaa !21
  br label %bb25
bb25:
  %t70 = load i1, ptr %l37, !tbaa !21
  br i1 %t70, label %bb26, label %bb27
bb26:
  store i64 -1, ptr %rv
  br label %ret
bb27:
  br label %bb28
bb28:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"compiler/scope:Scoper", ptr %t72, i32 0, i32 114
  %t75 = load i64, ptr %l4, !tbaa !24
  %t76 = load { i64, [2 x i64] }, ptr %l3
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e_2e_H38f9aff1b0310316a48dc5a28922f96e(ptr %v0, ptr %t74, i64 %t75, { i64, [2 x i64] } %t76)
  br label %bb29
bb29:
  %t80 = load i64, ptr %l4, !tbaa !24
  store i64 %t80, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epeekBorrow(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca { i64, [2 x i64] }
  %l5 = alloca ptr
  %l6 = alloca i1
  %l13 = alloca { i64, [2 x i64] }
  %l18 = alloca { i64, [2 x i64] }
  %l19 = alloca i32
  %l25 = alloca ptr
  %l27 = alloca i32
  %l28 = alloca i1
  %l31 = alloca { i64, [2 x i64] }
  %l35 = alloca { i64, [2 x i64] }
  %rv = alloca { i64, [2 x i64] }
  %t36 = alloca { i64, [2 x i64] }, align 8
  %t64 = alloca { i64, [2 x i64] }, align 8
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
  %t8 = icmp eq i64 %t6, 6
  store i1 %t8, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t18, i32 0, i32 3
  %t20 = load i32, ptr %t19
  store i32 %t20, ptr %l3, !tbaa !23
  br label %bb5
bb4:
  br label %bb19
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/scope:Scoper", ptr %t22, i32 0, i32 113
  %t25 = load i32, ptr %l3, !tbaa !23
  %t27 = sext i32 %t25 to i64
  %t30 = call { i32, { i64, [2 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e_2e_H65b4b9a6d1679f5b3ddedaa5b2e336bd(ptr %v0, ptr %t24, i64 %t27)
  %t31 = extractvalue { i32, { i64, [2 x i64] } } %t30, 1
  %t32 = extractvalue { i32, { i64, [2 x i64] } } %t30, 0
  store i32 %t32, ptr %l19
  %t33 = icmp ne i32 %t32, 0
  br i1 %t33, label %bb7, label %ok.34, !prof !99
ok.34:
  store { i64, [2 x i64] } %t31, ptr %l18
  br label %bb6
bb6:
  %t35 = load { i64, [2 x i64] }, ptr %l18
  store { i64, [2 x i64] } %t35, ptr %l13
  br label %bb9
bb7:
  br label %bb8
bb8:
  store { i64, [2 x i64] } zeroinitializer, ptr %t36
  %t37 = getelementptr { i64, [2 x i64] }, ptr %t36, i32 0, i32 0
  store i64 0, ptr %t37
  %t38 = load { i64, [2 x i64] }, ptr %t36
  store { i64, [2 x i64] } %t38, ptr %l13
  br label %bb9
bb9:
  %t40 = load { i64, [2 x i64] }, ptr %l13
  store { i64, [2 x i64] } %t40, ptr %l4
  %t41 = load { i64, [2 x i64] }, ptr %l4
  %t43 = extractvalue { i64, [2 x i64] } %t41, 0
  %t44 = icmp eq i64 %t43, 0
  %t46 = xor i1 %t44, true
  br i1 %t46, label %bb10, label %bb11
bb10:
  %t48 = load { i64, [2 x i64] }, ptr %l4
  store { i64, [2 x i64] } %t48, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t50 = load ptr, ptr %l0, !tbaa !29
  store ptr %t50, ptr %l25, !tbaa !29
  %t51 = load ptr, ptr %l2, !tbaa !29
  %t53 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t51)
  store i32 %t53, ptr %l27
  br label %bb13
bb13:
  %t54 = load ptr, ptr %l25, !tbaa !29
  %t55 = load i32, ptr %l27, !tbaa !23
  %t56 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisHandle(ptr %v0, ptr %t54, i32 %t55)
  store i1 %t56, ptr %l28
  br label %bb14
bb14:
  %t57 = load i1, ptr %l28, !tbaa !21
  br i1 %t57, label %bb15, label %bb16
bb15:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t59 = load ptr, ptr %l2, !tbaa !29
  %t62 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elandTerm(ptr %v0, ptr %v1, ptr %t58, ptr %t59)
  store { i64, [2 x i64] } %t62, ptr %l31
  br label %bb17
bb16:
  br label %bb18
bb17:
  %t63 = load { i64, [2 x i64] }, ptr %l31
  store { i64, [2 x i64] } %t63, ptr %rv
  br label %ret
bb18:
  store { i64, [2 x i64] } zeroinitializer, ptr %t64
  %t65 = getelementptr { i64, [2 x i64] }, ptr %t64, i32 0, i32 0
  store i64 0, ptr %t65
  %t66 = load { i64, [2 x i64] }, ptr %t64
  store { i64, [2 x i64] } %t66, ptr %rv
  br label %ret
bb19:
  br i1 true, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb24
bb22:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load ptr, ptr %l1, !tbaa !29
  %t72 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epeekPlace(ptr %v0, ptr %v1, ptr %t68, ptr %t69, i1 false)
  store { i64, [2 x i64] } %t72, ptr %l35
  br label %bb23
bb23:
  %t73 = load { i64, [2 x i64] }, ptr %l35
  store { i64, [2 x i64] } %t73, ptr %rv
  br label %ret
bb24:
  call void @__olang_check_failed(ptr @olang_loc_a696eb2979219c3c_c9efb41471de78f8)
  unreachable
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epromoted(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i1
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l4, !tbaa !29
  store i1 false, ptr %l5, !tbaa !21
  %t2 = load ptr, ptr %l4, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l4, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 5
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
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
  store ptr %t16, ptr %l3, !tbaa !29
  br label %bb11
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store ptr null, ptr %l3, !tbaa !29
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_f0e101f213a92cb6_721bd2f168b35a9a)
  unreachable
bb11:
  %t19 = load ptr, ptr %l3, !tbaa !29
  store ptr %t19, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eread(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, { i64, [2 x i64] } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca { i64, [2 x i64] }
  %l4 = alloca i64
  %l5 = alloca i1
  %l6 = alloca %"compiler/scope:Val"
  %l11 = alloca i64
  %l14 = alloca ptr
  %l16 = alloca i1
  %l19 = alloca i1
  %l25 = alloca %"compiler/scope:Val"
  %l33 = alloca i1
  %rv = alloca %"compiler/scope:Val"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  store { i64, [2 x i64] } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t3 = load i32, ptr %l2, !tbaa !23
  %t4 = load { i64, [2 x i64] }, ptr %l3
  %t9 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartLand(ptr %v0, ptr %v1, ptr %t1, ptr %t2, i32 %t3, { i64, [2 x i64] } %t4)
  store i64 %t9, ptr %l11
  br label %bb1
bb1:
  %t10 = load i64, ptr %l11, !tbaa !24
  store i64 %t10, ptr %l4, !tbaa !24
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/scope:Scoper", ptr %t11, i32 0, i32 132
  %t14 = load i1, ptr %t13, !tbaa !21
  store i1 %t14, ptr %l5, !tbaa !21
  %t16 = load ptr, ptr %l0, !tbaa !29
  store ptr %t16, ptr %l14, !tbaa !29
  %t17 = load i1, ptr %l5, !tbaa !21
  br i1 %t17, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb5
bb3:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = load i32, ptr %l2, !tbaa !23
  %t23 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholds(ptr %v0, ptr %t19, i32 %t20)
  store i1 %t23, ptr %l19
  br label %bb4
bb4:
  %t24 = load i1, ptr %l19, !tbaa !21
  %t25 = xor i1 %t24, true
  store i1 %t25, ptr %l16, !tbaa !21
  br label %bb5
bb5:
  %t27 = load i1, ptr %l16, !tbaa !21
  %t28 = load ptr, ptr %l14, !tbaa !29
  %t29 = getelementptr %"compiler/scope:Scoper", ptr %t28, i32 0, i32 132
  store i1 %t27, ptr %t29, !tbaa !21
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t32 = load i32, ptr %l2, !tbaa !23
  %t33 = load { i64, [2 x i64] }, ptr %l3
  %t38 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ereadPart(ptr %v0, ptr %v1, ptr %t30, ptr %t31, i32 %t32, { i64, [2 x i64] } %t33)
  store %"compiler/scope:Val" %t38, ptr %l25
  br label %bb6
bb6:
  %t39 = load %"compiler/scope:Val", ptr %l25
  store %"compiler/scope:Val" %t39, ptr %l6
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load i1, ptr %l5, !tbaa !21
  %t44 = getelementptr %"compiler/scope:Scoper", ptr %t40, i32 0, i32 132
  store i1 %t41, ptr %t44, !tbaa !21
  %t45 = load i64, ptr %l4, !tbaa !24
  %t47 = icmp sge i64 %t45, 0
  br i1 %t47, label %bb7, label %bb8
bb7:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/scope:Scoper", ptr %t49, i32 0, i32 114
  %t52 = load i64, ptr %l4, !tbaa !24
  %t55 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e_2e_Hb4ab14fd1aa8deeb21095c3402461540(ptr %v0, ptr %t51, i64 %t52)
  store i1 %t55, ptr %l33
  br label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb10
bb10:
  %t56 = load %"compiler/scope:Val", ptr %l6
  store %"compiler/scope:Val" %t56, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/scope:Val", ptr %rv
  ret %"compiler/scope:Val" %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erlStmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca i32
  %l9 = alloca i32
  %l10 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca i64
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca ptr
  %l17 = alloca ptr
  %l18 = alloca ptr
  %l19 = alloca ptr
  %l20 = alloca ptr
  %l21 = alloca ptr
  %l22 = alloca ptr
  %l23 = alloca { i64, ptr }
  %l24 = alloca i64
  %l25 = alloca i64
  %l27 = alloca ptr
  %l28 = alloca { i64, ptr }
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca ptr
  %l34 = alloca ptr
  %l35 = alloca i1
  %l45 = alloca ptr
  %l48 = alloca i1
  %l49 = alloca ptr
  %l50 = alloca i1
  %l63 = alloca i64
  %l66 = alloca i1
  %l76 = alloca %"compiler/typed:Local"
  %l89 = alloca ptr
  %l90 = alloca i1
  %l99 = alloca i1
  %l101 = alloca i1
  %l104 = alloca i64
  %l107 = alloca i1
  %l108 = alloca i64
  %l111 = alloca i64
  %l113 = alloca i1
  %l117 = alloca i64
  %l119 = alloca i1
  %l120 = alloca ptr
  %l122 = alloca ptr
  %l126 = alloca i64
  %l127 = alloca i1
  %l135 = alloca ptr
  %l136 = alloca i1
  %l141 = alloca ptr
  %l142 = alloca i1
  %l147 = alloca ptr
  %l148 = alloca i1
  %l153 = alloca ptr
  %l154 = alloca i1
  %l162 = alloca ptr
  %l163 = alloca i1
  %l182 = alloca ptr
  %l183 = alloca i1
  %l197 = alloca ptr
  %l198 = alloca i1
  %l212 = alloca ptr
  %l213 = alloca i1
  %l221 = alloca ptr
  %l222 = alloca i1
  %l227 = alloca ptr
  %l228 = alloca i1
  %l237 = alloca ptr
  %l238 = alloca i1
  %l256 = alloca { i64, ptr }
  %l265 = alloca ptr
  %l266 = alloca i1
  %l281 = alloca { i64, ptr }
  %l287 = alloca i1
  %l289 = alloca ptr
  %l291 = alloca i64
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
  %t5 = load ptr, ptr %l1, !tbaa !29
  store ptr %t5, ptr %l34, !tbaa !29
  store i1 false, ptr %l35, !tbaa !21
  %t6 = load ptr, ptr %l34, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l34, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 17}
  %t12 = icmp eq i64 %t10, 0
  store i1 %t12, ptr %l35, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l35, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t16 = getelementptr { i64, [3 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t16, i32 0, i32 1
  %t18 = load i32, ptr %t17
  store i32 %t18, ptr %l3, !tbaa !23
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t22 = getelementptr { i64, [3 x i64] }, ptr %t20, i32 0, i32 1
  %t23 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t22, i32 0, i32 2
  %t24 = load ptr, ptr %t23
  store ptr %t24, ptr %l4, !tbaa !29
  br label %bb8
bb7:
  br label %bb31
bb8:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load ptr, ptr %l4, !tbaa !29
  %t31 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %v1, ptr %t26, ptr %t27)
  store ptr %t31, ptr %l45
  br label %bb9
bb9:
  %t32 = load ptr, ptr %l45, !tbaa !29
  store ptr %t32, ptr %l5, !tbaa !29
  %t33 = load i64, ptr %l2, !tbaa !24
  %t35 = icmp eq i64 %t33, 0
  br i1 %t35, label %bb10, label %bb11
bb10:
  %t37 = load ptr, ptr %l5, !tbaa !29
  store ptr %t37, ptr %l49, !tbaa !29
  store i1 false, ptr %l50, !tbaa !21
  %t38 = load ptr, ptr %l49, !tbaa !29
  %t39 = icmp ne ptr %t38, null
  br i1 %t39, label %bb12, label %bb13
bb11:
  store i1 false, ptr %l48, !tbaa !21
  br label %bb14
bb12:
  %t41 = load ptr, ptr %l49, !tbaa !29
  %t42 = load i64, ptr %t41, !range !{i64 0, i64 18}
  %t44 = icmp eq i64 %t42, 2
  store i1 %t44, ptr %l50, !tbaa !21
  br label %bb13
bb13:
  %t45 = load i1, ptr %l50, !tbaa !21
  store i1 %t45, ptr %l48, !tbaa !21
  br label %bb14
bb14:
  %t46 = load i1, ptr %l48, !tbaa !21
  br i1 %t46, label %bb15, label %bb16
bb15:
  %t47 = load ptr, ptr %l5, !tbaa !29
  %t49 = getelementptr { i64, [5 x i64] }, ptr %t47, i32 0, i32 1
  %t50 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t49, i32 0, i32 0
  %t51 = load %"compiler/source:Span", ptr %t50
  store %"compiler/source:Span" %t51, ptr %l6
  %t53 = load ptr, ptr %l5, !tbaa !29
  %t55 = getelementptr { i64, [5 x i64] }, ptr %t53, i32 0, i32 1
  %t56 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t55, i32 0, i32 1
  %t57 = load i32, ptr %t56
  store i32 %t57, ptr %l7, !tbaa !23
  %t59 = load ptr, ptr %l5, !tbaa !29
  %t61 = getelementptr { i64, [5 x i64] }, ptr %t59, i32 0, i32 1
  %t62 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t61, i32 0, i32 2
  %t63 = load ptr, ptr %t62
  %t65 = load ptr, ptr %l5, !tbaa !29
  %t67 = getelementptr { i64, [5 x i64] }, ptr %t65, i32 0, i32 1
  %t68 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t67, i32 0, i32 3
  %t69 = load i32, ptr %t68
  store i32 %t69, ptr %l9, !tbaa !23
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t75 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eregionOf(ptr %v0, ptr %v1, ptr %t71, ptr %t63)
  store i64 %t75, ptr %l63
  br label %bb17
bb16:
  br label %bb29
bb17:
  %t76 = load i64, ptr %l63, !tbaa !24
  store i64 %t76, ptr %l10, !tbaa !24
  %t77 = load i64, ptr %l10, !tbaa !24
  %t79 = icmp sge i64 %t77, 0
  br i1 %t79, label %bb18, label %bb19
bb18:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/scope:Scoper", ptr %t81, i32 0, i32 26
  %t84 = load ptr, ptr %t83, !tbaa !29
  %t86 = icmp eq ptr %t84, null
  br i1 %t86, label %bb20, label %bb21
bb19:
  store i1 false, ptr %l66, !tbaa !21
  br label %bb24
bb20:
  call void @__olang_check_failed(ptr @olang_loc_bd5c9e8774f8b04b_a0af931721a110f)
  unreachable
bb21:
  br label %bb22
bb22:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/scope:Scoper", ptr %t88, i32 0, i32 26
  %t91 = load ptr, ptr %t90, !tbaa !29
  %t94 = getelementptr %"compiler/typed:Body", ptr %t91, i32 0, i32 7
  %t95 = load i32, ptr %l3, !tbaa !23
  %t97 = sext i32 %t95 to i64
  %t100 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t94, i64 %t97)
  store %"compiler/typed:Local" %t100, ptr %l76
  br label %bb23
bb23:
  %t101 = getelementptr %"compiler/typed:Local", ptr %l76, i32 0, i32 4
  %t102 = load i32, ptr %t101, !range !{i32 0, i32 7}
  %t104 = trunc i64 0 to i32
  %t105 = icmp eq i32 %t102, %t104
  %t107 = xor i1 %t105, true
  store i1 %t107, ptr %l66, !tbaa !21
  br label %bb24
bb24:
  %t109 = load i1, ptr %l66, !tbaa !21
  br i1 %t109, label %bb25, label %bb26
bb25:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/scope:Scoper", ptr %t110, i32 0, i32 121
  %t113 = load i32, ptr %l3, !tbaa !23
  %t115 = sext i32 %t113 to i64
  %t116 = load i64, ptr %l10, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t112, i64 %t115, i64 %t116)
  br label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb28
bb28:
  br label %bb29
bb29:
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t121 = load ptr, ptr %l4, !tbaa !29
  %t123 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erlExpr(ptr %v0, ptr %v1, ptr %t120, ptr %t121, i64 %t123)
  br label %bb30
bb30:
  br label %bb169
bb31:
  %t127 = load ptr, ptr %l1, !tbaa !29
  store ptr %t127, ptr %l89, !tbaa !29
  store i1 false, ptr %l90, !tbaa !21
  %t128 = load ptr, ptr %l89, !tbaa !29
  %t129 = icmp ne ptr %t128, null
  br i1 %t129, label %bb32, label %bb33
bb32:
  %t131 = load ptr, ptr %l89, !tbaa !29
  %t132 = load i64, ptr %t131, !range !{i64 0, i64 17}
  %t134 = icmp eq i64 %t132, 1
  store i1 %t134, ptr %l90, !tbaa !21
  br label %bb33
bb33:
  %t135 = load i1, ptr %l90, !tbaa !21
  br i1 %t135, label %bb34, label %bb35
bb34:
  %t136 = load ptr, ptr %l1, !tbaa !29
  %t138 = getelementptr { i64, [3 x i64] }, ptr %t136, i32 0, i32 1
  %t139 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t138, i32 0, i32 1
  %t140 = load ptr, ptr %t139
  store ptr %t140, ptr %l11, !tbaa !29
  %t142 = load ptr, ptr %l1, !tbaa !29
  %t144 = getelementptr { i64, [3 x i64] }, ptr %t142, i32 0, i32 1
  %t145 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t144, i32 0, i32 2
  %t146 = load ptr, ptr %t145
  store ptr %t146, ptr %l12, !tbaa !29
  br label %bb36
bb35:
  br label %bb63
bb36:
  %t148 = load i64, ptr %l2, !tbaa !24
  %t150 = icmp eq i64 %t148, 1
  br i1 %t150, label %bb37, label %bb38
bb37:
  %t152 = load ptr, ptr %l11, !tbaa !29
  %t154 = call i1 @compiler_2fscope_2eflThroughRef(ptr %v1, ptr %t152)
  store i1 %t154, ptr %l101
  br label %bb39
bb38:
  store i1 false, ptr %l99, !tbaa !21
  br label %bb40
bb39:
  %t155 = load i1, ptr %l101, !tbaa !21
  %t156 = xor i1 %t155, true
  store i1 %t156, ptr %l99, !tbaa !21
  br label %bb40
bb40:
  %t158 = load i1, ptr %l99, !tbaa !21
  br i1 %t158, label %bb41, label %bb42
bb41:
  %t159 = load ptr, ptr %l11, !tbaa !29
  %t161 = call i64 @compiler_2fscope_2eflRoot(ptr %v1, ptr %t159)
  store i64 %t161, ptr %l104
  br label %bb43
bb42:
  br label %bb61
bb43:
  %t162 = load i64, ptr %l104, !tbaa !24
  store i64 %t162, ptr %l13, !tbaa !24
  %t163 = load i64, ptr %l13, !tbaa !24
  %t165 = icmp sge i64 %t163, 0
  br i1 %t165, label %bb44, label %bb45
bb44:
  %t167 = load i64, ptr %l13, !tbaa !24
  store i64 %t167, ptr %l108, !tbaa !24
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t170 = getelementptr %"compiler/scope:Scoper", ptr %t168, i32 0, i32 121
  %t172 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t170)
  store i64 %t172, ptr %l111
  br label %bb46
bb45:
  store i1 false, ptr %l107, !tbaa !21
  br label %bb47
bb46:
  %t173 = load i64, ptr %l108, !tbaa !24
  %t174 = load i64, ptr %l111, !tbaa !24
  %t175 = icmp slt i64 %t173, %t174
  store i1 %t175, ptr %l107, !tbaa !21
  br label %bb47
bb47:
  %t177 = load i1, ptr %l107, !tbaa !21
  br i1 %t177, label %bb48, label %bb49
bb48:
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t180 = getelementptr %"compiler/scope:Scoper", ptr %t178, i32 0, i32 121
  %t181 = load i64, ptr %l13, !tbaa !24
  %t184 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t180, i64 %t181)
  store i64 %t184, ptr %l117
  br label %bb50
bb49:
  store i1 false, ptr %l113, !tbaa !21
  br label %bb51
bb50:
  %t185 = load i64, ptr %l117, !tbaa !24
  %t186 = icmp sge i64 %t185, 0
  store i1 %t186, ptr %l113, !tbaa !21
  br label %bb51
bb51:
  %t188 = load i1, ptr %l113, !tbaa !21
  br i1 %t188, label %bb52, label %bb53
bb52:
  %t189 = load ptr, ptr %l0, !tbaa !29
  store ptr %t189, ptr %l120, !tbaa !29
  %t190 = load ptr, ptr %l12, !tbaa !29
  store ptr %t190, ptr %l122, !tbaa !29
  %t192 = load ptr, ptr %l0, !tbaa !29
  %t194 = getelementptr %"compiler/scope:Scoper", ptr %t192, i32 0, i32 121
  %t195 = load i64, ptr %l13, !tbaa !24
  %t198 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t194, i64 %t195)
  store i64 %t198, ptr %l126
  br label %bb54
bb53:
  store i1 false, ptr %l119, !tbaa !21
  br label %bb56
bb54:
  %t199 = load ptr, ptr %l120, !tbaa !29
  %t200 = load ptr, ptr %l122, !tbaa !29
  %t201 = load i64, ptr %l126, !tbaa !24
  %t202 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eregionRead(ptr %v0, ptr %v1, ptr %t199, ptr %t200, i64 %t201)
  store i1 %t202, ptr %l127
  br label %bb55
bb55:
  %t203 = load i1, ptr %l127, !tbaa !21
  %t204 = xor i1 %t203, true
  store i1 %t204, ptr %l119, !tbaa !21
  br label %bb56
bb56:
  %t206 = load i1, ptr %l119, !tbaa !21
  br i1 %t206, label %bb57, label %bb58
bb57:
  %t207 = load ptr, ptr %l0, !tbaa !29
  %t208 = load i64, ptr %l13, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erlDrop(ptr %v0, ptr %t207, i64 %t208)
  br label %bb59
bb58:
  br label %bb60
bb59:
  br label %bb60
bb60:
  br label %bb61
bb61:
  %t211 = load ptr, ptr %l0, !tbaa !29
  %t212 = load ptr, ptr %l12, !tbaa !29
  %t214 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erlExpr(ptr %v0, ptr %v1, ptr %t211, ptr %t212, i64 %t214)
  br label %bb62
bb62:
  br label %bb169
bb63:
  %t218 = load ptr, ptr %l1, !tbaa !29
  store ptr %t218, ptr %l135, !tbaa !29
  store i1 false, ptr %l136, !tbaa !21
  %t219 = load ptr, ptr %l135, !tbaa !29
  %t220 = icmp ne ptr %t219, null
  br i1 %t220, label %bb64, label %bb65
bb64:
  %t222 = load ptr, ptr %l135, !tbaa !29
  %t223 = load i64, ptr %t222, !range !{i64 0, i64 17}
  %t225 = icmp eq i64 %t223, 2
  store i1 %t225, ptr %l136, !tbaa !21
  br label %bb65
bb65:
  %t226 = load i1, ptr %l136, !tbaa !21
  br i1 %t226, label %bb66, label %bb67
bb66:
  %t227 = load ptr, ptr %l1, !tbaa !29
  %t229 = getelementptr { i64, [3 x i64] }, ptr %t227, i32 0, i32 1
  %t230 = getelementptr { %"compiler/source:Span", ptr }, ptr %t229, i32 0, i32 1
  %t231 = load ptr, ptr %t230
  store ptr %t231, ptr %l14, !tbaa !29
  br label %bb80
bb67:
  %t233 = load ptr, ptr %l1, !tbaa !29
  store ptr %t233, ptr %l141, !tbaa !29
  store i1 false, ptr %l142, !tbaa !21
  %t234 = load ptr, ptr %l141, !tbaa !29
  %t235 = icmp ne ptr %t234, null
  br i1 %t235, label %bb68, label %bb69
bb68:
  %t237 = load ptr, ptr %l141, !tbaa !29
  %t238 = load i64, ptr %t237, !range !{i64 0, i64 17}
  %t240 = icmp eq i64 %t238, 6
  store i1 %t240, ptr %l142, !tbaa !21
  br label %bb69
bb69:
  %t241 = load i1, ptr %l142, !tbaa !21
  br i1 %t241, label %bb70, label %bb71
bb70:
  %t242 = load ptr, ptr %l1, !tbaa !29
  %t244 = getelementptr { i64, [3 x i64] }, ptr %t242, i32 0, i32 1
  %t245 = getelementptr { %"compiler/source:Span", ptr }, ptr %t244, i32 0, i32 1
  %t246 = load ptr, ptr %t245
  store ptr %t246, ptr %l14, !tbaa !29
  br label %bb80
bb71:
  %t248 = load ptr, ptr %l1, !tbaa !29
  store ptr %t248, ptr %l147, !tbaa !29
  store i1 false, ptr %l148, !tbaa !21
  %t249 = load ptr, ptr %l147, !tbaa !29
  %t250 = icmp ne ptr %t249, null
  br i1 %t250, label %bb72, label %bb73
bb72:
  %t252 = load ptr, ptr %l147, !tbaa !29
  %t253 = load i64, ptr %t252, !range !{i64 0, i64 17}
  %t255 = icmp eq i64 %t253, 15
  store i1 %t255, ptr %l148, !tbaa !21
  br label %bb73
bb73:
  %t256 = load i1, ptr %l148, !tbaa !21
  br i1 %t256, label %bb74, label %bb75
bb74:
  %t257 = load ptr, ptr %l1, !tbaa !29
  %t259 = getelementptr { i64, [3 x i64] }, ptr %t257, i32 0, i32 1
  %t260 = getelementptr { %"compiler/source:Span", ptr }, ptr %t259, i32 0, i32 1
  %t261 = load ptr, ptr %t260
  store ptr %t261, ptr %l14, !tbaa !29
  br label %bb80
bb75:
  %t263 = load ptr, ptr %l1, !tbaa !29
  store ptr %t263, ptr %l153, !tbaa !29
  store i1 false, ptr %l154, !tbaa !21
  %t264 = load ptr, ptr %l153, !tbaa !29
  %t265 = icmp ne ptr %t264, null
  br i1 %t265, label %bb76, label %bb77
bb76:
  %t267 = load ptr, ptr %l153, !tbaa !29
  %t268 = load i64, ptr %t267, !range !{i64 0, i64 17}
  %t270 = icmp eq i64 %t268, 16
  store i1 %t270, ptr %l154, !tbaa !21
  br label %bb77
bb77:
  %t271 = load i1, ptr %l154, !tbaa !21
  br i1 %t271, label %bb78, label %bb79
bb78:
  %t272 = load ptr, ptr %l1, !tbaa !29
  %t274 = getelementptr { i64, [3 x i64] }, ptr %t272, i32 0, i32 1
  %t275 = getelementptr { %"compiler/source:Span", ptr }, ptr %t274, i32 0, i32 1
  %t276 = load ptr, ptr %t275
  store ptr %t276, ptr %l14, !tbaa !29
  br label %bb80
bb79:
  br label %bb82
bb80:
  %t278 = load ptr, ptr %l0, !tbaa !29
  %t279 = load ptr, ptr %l14, !tbaa !29
  %t280 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erlExpr(ptr %v0, ptr %v1, ptr %t278, ptr %t279, i64 %t280)
  br label %bb81
bb81:
  br label %bb169
bb82:
  %t284 = load ptr, ptr %l1, !tbaa !29
  store ptr %t284, ptr %l162, !tbaa !29
  store i1 false, ptr %l163, !tbaa !21
  %t285 = load ptr, ptr %l162, !tbaa !29
  %t286 = icmp ne ptr %t285, null
  br i1 %t286, label %bb83, label %bb84
bb83:
  %t288 = load ptr, ptr %l162, !tbaa !29
  %t289 = load i64, ptr %t288, !range !{i64 0, i64 17}
  %t291 = icmp eq i64 %t289, 3
  store i1 %t291, ptr %l163, !tbaa !21
  br label %bb84
bb84:
  %t292 = load i1, ptr %l163, !tbaa !21
  br i1 %t292, label %bb85, label %bb86
bb85:
  %t293 = load ptr, ptr %l1, !tbaa !29
  %t295 = getelementptr { i64, [3 x i64] }, ptr %t293, i32 0, i32 1
  %t296 = getelementptr { %"compiler/source:Span", ptr }, ptr %t295, i32 0, i32 1
  %t297 = load ptr, ptr %t296
  store ptr %t297, ptr %l15, !tbaa !29
  br label %bb87
bb86:
  br label %bb91
bb87:
  %t299 = load ptr, ptr %l0, !tbaa !29
  %t300 = load ptr, ptr %l15, !tbaa !29
  %t302 = getelementptr %"compiler/typed:If", ptr %t300, i32 0, i32 0
  %t303 = load ptr, ptr %t302, !tbaa !29
  %t305 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erlExpr(ptr %v0, ptr %v1, ptr %t299, ptr %t303, i64 %t305)
  br label %bb88
bb88:
  %t309 = load ptr, ptr %l0, !tbaa !29
  %t310 = load ptr, ptr %l15, !tbaa !29
  %t312 = getelementptr %"compiler/typed:If", ptr %t310, i32 0, i32 1
  %t313 = load ptr, ptr %t312, !tbaa !29
  %t315 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erlBlock(ptr %v0, ptr %v1, ptr %t309, ptr %t313, i64 %t315)
  br label %bb89
bb89:
  %t319 = load ptr, ptr %l0, !tbaa !29
  %t320 = load ptr, ptr %l15, !tbaa !29
  %t322 = getelementptr %"compiler/typed:If", ptr %t320, i32 0, i32 2
  %t323 = load ptr, ptr %t322, !tbaa !29
  %t324 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erlBlock(ptr %v0, ptr %v1, ptr %t319, ptr %t323, i64 %t324)
  br label %bb90
bb90:
  br label %bb169
bb91:
  %t328 = load ptr, ptr %l1, !tbaa !29
  store ptr %t328, ptr %l182, !tbaa !29
  store i1 false, ptr %l183, !tbaa !21
  %t329 = load ptr, ptr %l182, !tbaa !29
  %t330 = icmp ne ptr %t329, null
  br i1 %t330, label %bb92, label %bb93
bb92:
  %t332 = load ptr, ptr %l182, !tbaa !29
  %t333 = load i64, ptr %t332, !range !{i64 0, i64 17}
  %t335 = icmp eq i64 %t333, 4
  store i1 %t335, ptr %l183, !tbaa !21
  br label %bb93
bb93:
  %t336 = load i1, ptr %l183, !tbaa !21
  br i1 %t336, label %bb94, label %bb95
bb94:
  %t337 = load ptr, ptr %l1, !tbaa !29
  %t339 = getelementptr { i64, [3 x i64] }, ptr %t337, i32 0, i32 1
  %t340 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t339, i32 0, i32 1
  %t341 = load ptr, ptr %t340
  store ptr %t341, ptr %l16, !tbaa !29
  %t343 = load ptr, ptr %l1, !tbaa !29
  %t345 = getelementptr { i64, [3 x i64] }, ptr %t343, i32 0, i32 1
  %t346 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t345, i32 0, i32 2
  %t347 = load ptr, ptr %t346
  store ptr %t347, ptr %l17, !tbaa !29
  br label %bb96
bb95:
  br label %bb99
bb96:
  %t349 = load ptr, ptr %l0, !tbaa !29
  %t350 = load ptr, ptr %l16, !tbaa !29
  %t352 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erlBlock(ptr %v0, ptr %v1, ptr %t349, ptr %t350, i64 %t352)
  br label %bb97
bb97:
  %t356 = load ptr, ptr %l0, !tbaa !29
  %t357 = load ptr, ptr %l17, !tbaa !29
  %t358 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erlBlock(ptr %v0, ptr %v1, ptr %t356, ptr %t357, i64 %t358)
  br label %bb98
bb98:
  br label %bb169
bb99:
  %t362 = load ptr, ptr %l1, !tbaa !29
  store ptr %t362, ptr %l197, !tbaa !29
  store i1 false, ptr %l198, !tbaa !21
  %t363 = load ptr, ptr %l197, !tbaa !29
  %t364 = icmp ne ptr %t363, null
  br i1 %t364, label %bb100, label %bb101
bb100:
  %t366 = load ptr, ptr %l197, !tbaa !29
  %t367 = load i64, ptr %t366, !range !{i64 0, i64 17}
  %t369 = icmp eq i64 %t367, 10
  store i1 %t369, ptr %l198, !tbaa !21
  br label %bb101
bb101:
  %t370 = load i1, ptr %l198, !tbaa !21
  br i1 %t370, label %bb102, label %bb103
bb102:
  %t371 = load ptr, ptr %l1, !tbaa !29
  %t373 = getelementptr { i64, [3 x i64] }, ptr %t371, i32 0, i32 1
  %t374 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t373, i32 0, i32 1
  %t375 = load ptr, ptr %t374
  store ptr %t375, ptr %l18, !tbaa !29
  %t377 = load ptr, ptr %l1, !tbaa !29
  %t379 = getelementptr { i64, [3 x i64] }, ptr %t377, i32 0, i32 1
  %t380 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t379, i32 0, i32 2
  %t381 = load ptr, ptr %t380
  store ptr %t381, ptr %l19, !tbaa !29
  br label %bb104
bb103:
  br label %bb107
bb104:
  %t383 = load ptr, ptr %l0, !tbaa !29
  %t384 = load ptr, ptr %l18, !tbaa !29
  %t386 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erlExpr(ptr %v0, ptr %v1, ptr %t383, ptr %t384, i64 %t386)
  br label %bb105
bb105:
  %t390 = load ptr, ptr %l0, !tbaa !29
  %t391 = load ptr, ptr %l19, !tbaa !29
  %t392 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erlExpr(ptr %v0, ptr %v1, ptr %t390, ptr %t391, i64 %t392)
  br label %bb106
bb106:
  br label %bb169
bb107:
  %t396 = load ptr, ptr %l1, !tbaa !29
  store ptr %t396, ptr %l212, !tbaa !29
  store i1 false, ptr %l213, !tbaa !21
  %t397 = load ptr, ptr %l212, !tbaa !29
  %t398 = icmp ne ptr %t397, null
  br i1 %t398, label %bb108, label %bb109
bb108:
  %t400 = load ptr, ptr %l212, !tbaa !29
  %t401 = load i64, ptr %t400, !range !{i64 0, i64 17}
  %t403 = icmp eq i64 %t401, 9
  store i1 %t403, ptr %l213, !tbaa !21
  br label %bb109
bb109:
  %t404 = load i1, ptr %l213, !tbaa !21
  br i1 %t404, label %bb110, label %bb111
bb110:
  %t405 = load ptr, ptr %l1, !tbaa !29
  %t407 = getelementptr { i64, [3 x i64] }, ptr %t405, i32 0, i32 1
  %t408 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t407, i32 0, i32 2
  %t409 = load ptr, ptr %t408
  store ptr %t409, ptr %l20, !tbaa !29
  br label %bb112
bb111:
  br label %bb114
bb112:
  %t411 = load ptr, ptr %l0, !tbaa !29
  %t412 = load ptr, ptr %l20, !tbaa !29
  %t413 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erlExpr(ptr %v0, ptr %v1, ptr %t411, ptr %t412, i64 %t413)
  br label %bb113
bb113:
  br label %bb169
bb114:
  %t417 = load ptr, ptr %l1, !tbaa !29
  store ptr %t417, ptr %l221, !tbaa !29
  store i1 false, ptr %l222, !tbaa !21
  %t418 = load ptr, ptr %l221, !tbaa !29
  %t419 = icmp ne ptr %t418, null
  br i1 %t419, label %bb115, label %bb116
bb115:
  %t421 = load ptr, ptr %l221, !tbaa !29
  %t422 = load i64, ptr %t421, !range !{i64 0, i64 17}
  %t424 = icmp eq i64 %t422, 11
  store i1 %t424, ptr %l222, !tbaa !21
  br label %bb116
bb116:
  %t425 = load i1, ptr %l222, !tbaa !21
  br i1 %t425, label %bb117, label %bb118
bb117:
  %t426 = load ptr, ptr %l1, !tbaa !29
  %t428 = getelementptr { i64, [3 x i64] }, ptr %t426, i32 0, i32 1
  %t429 = getelementptr { %"compiler/source:Span", ptr }, ptr %t428, i32 0, i32 1
  %t430 = load ptr, ptr %t429
  store ptr %t430, ptr %l21, !tbaa !29
  br label %bb123
bb118:
  %t432 = load ptr, ptr %l1, !tbaa !29
  store ptr %t432, ptr %l227, !tbaa !29
  store i1 false, ptr %l228, !tbaa !21
  %t433 = load ptr, ptr %l227, !tbaa !29
  %t434 = icmp ne ptr %t433, null
  br i1 %t434, label %bb119, label %bb120
bb119:
  %t436 = load ptr, ptr %l227, !tbaa !29
  %t437 = load i64, ptr %t436, !range !{i64 0, i64 17}
  %t439 = icmp eq i64 %t437, 12
  store i1 %t439, ptr %l228, !tbaa !21
  br label %bb120
bb120:
  %t440 = load i1, ptr %l228, !tbaa !21
  br i1 %t440, label %bb121, label %bb122
bb121:
  %t441 = load ptr, ptr %l1, !tbaa !29
  %t443 = getelementptr { i64, [3 x i64] }, ptr %t441, i32 0, i32 1
  %t444 = getelementptr { %"compiler/source:Span", ptr }, ptr %t443, i32 0, i32 1
  %t445 = load ptr, ptr %t444
  store ptr %t445, ptr %l21, !tbaa !29
  br label %bb123
bb122:
  br label %bb125
bb123:
  %t447 = load ptr, ptr %l0, !tbaa !29
  %t448 = load ptr, ptr %l21, !tbaa !29
  %t450 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erlBlock(ptr %v0, ptr %v1, ptr %t447, ptr %t448, i64 %t450)
  br label %bb124
bb124:
  br label %bb169
bb125:
  %t454 = load ptr, ptr %l1, !tbaa !29
  store ptr %t454, ptr %l237, !tbaa !29
  store i1 false, ptr %l238, !tbaa !21
  %t455 = load ptr, ptr %l237, !tbaa !29
  %t456 = icmp ne ptr %t455, null
  br i1 %t456, label %bb126, label %bb127
bb126:
  %t458 = load ptr, ptr %l237, !tbaa !29
  %t459 = load i64, ptr %t458, !range !{i64 0, i64 17}
  %t461 = icmp eq i64 %t459, 13
  store i1 %t461, ptr %l238, !tbaa !21
  br label %bb127
bb127:
  %t462 = load i1, ptr %l238, !tbaa !21
  br i1 %t462, label %bb128, label %bb129
bb128:
  %t463 = load ptr, ptr %l1, !tbaa !29
  %t465 = getelementptr { i64, [3 x i64] }, ptr %t463, i32 0, i32 1
  %t466 = getelementptr { %"compiler/source:Span", ptr }, ptr %t465, i32 0, i32 1
  %t467 = load ptr, ptr %t466
  store ptr %t467, ptr %l22, !tbaa !29
  br label %bb130
bb129:
  br label %bb139
bb130:
  %t469 = load ptr, ptr %l0, !tbaa !29
  %t470 = load ptr, ptr %l22, !tbaa !29
  %t472 = getelementptr %"compiler/typed:Join", ptr %t470, i32 0, i32 0
  %t473 = load ptr, ptr %t472, !tbaa !29
  %t475 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erlBlock(ptr %v0, ptr %v1, ptr %t469, ptr %t473, i64 %t475)
  br label %bb131
bb131:
  %t479 = load ptr, ptr %l22, !tbaa !29
  %t481 = getelementptr %"compiler/typed:Join", ptr %t479, i32 0, i32 2
  %t482 = load { i64, ptr }, ptr %t481, !tbaa !27
  store { i64, ptr } %t482, ptr %l23, !tbaa !27
  store i64 0, ptr %l24, !tbaa !24
  %t484 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t486 = extractvalue { i64, ptr } %t484, 0
  store i64 %t486, ptr %l25, !tbaa !24
  br label %bb132
bb132:
  %t488 = load i64, ptr %l24, !tbaa !24
  %t489 = load i64, ptr %l25, !tbaa !24
  %t492 = icmp slt i64 %t488, %t489
  %t494 = xor i1 %t492, true
  br i1 %t494, label %bb133, label %bb134
bb133:
  br label %bb138
bb134:
  br label %bb135
bb135:
  %t496 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t496, ptr %l256, !tbaa !27
  %t497 = load i64, ptr %l24, !tbaa !24
  %t499 = getelementptr { i64, ptr }, ptr %l256, i32 0, i32 1
  %t500 = load ptr, ptr %t499, !tbaa !27
  %t501 = getelementptr ptr, ptr %t500, i64 %t497
  %t502 = load ptr, ptr %t501, !tbaa !39
  %t504 = load ptr, ptr %l0, !tbaa !29
  %t507 = getelementptr %"compiler/typed:Clause", ptr %t502, i32 0, i32 3
  %t508 = load ptr, ptr %t507, !tbaa !29
  %t509 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erlBlock(ptr %v0, ptr %v1, ptr %t504, ptr %t508, i64 %t509)
  br label %bb136
bb136:
  br label %bb137
bb137:
  %t513 = load i64, ptr %l24, !tbaa !24
  %t515 = add i64 %t513, 1
  store i64 %t515, ptr %l24, !tbaa !24
  br label %bb132
bb138:
  br label %bb169
bb139:
  %t517 = load ptr, ptr %l1, !tbaa !29
  store ptr %t517, ptr %l265, !tbaa !29
  store i1 false, ptr %l266, !tbaa !21
  %t518 = load ptr, ptr %l265, !tbaa !29
  %t519 = icmp ne ptr %t518, null
  br i1 %t519, label %bb140, label %bb141
bb140:
  %t521 = load ptr, ptr %l265, !tbaa !29
  %t522 = load i64, ptr %t521, !range !{i64 0, i64 17}
  %t524 = icmp eq i64 %t522, 14
  store i1 %t524, ptr %l266, !tbaa !21
  br label %bb141
bb141:
  %t525 = load i1, ptr %l266, !tbaa !21
  br i1 %t525, label %bb142, label %bb143
bb142:
  %t526 = load ptr, ptr %l1, !tbaa !29
  %t528 = getelementptr { i64, [3 x i64] }, ptr %t526, i32 0, i32 1
  %t529 = getelementptr { %"compiler/source:Span", ptr }, ptr %t528, i32 0, i32 1
  %t530 = load ptr, ptr %t529
  store ptr %t530, ptr %l27, !tbaa !29
  br label %bb144
bb143:
  br label %bb164
bb144:
  %t532 = load i64, ptr %l2, !tbaa !24
  %t534 = icmp eq i64 %t532, 1
  br i1 %t534, label %bb145, label %bb146
bb145:
  %t536 = load ptr, ptr %l27, !tbaa !29
  %t538 = getelementptr %"compiler/typed:Spawn", ptr %t536, i32 0, i32 0
  %t539 = load { i64, ptr }, ptr %t538, !tbaa !27
  store { i64, ptr } %t539, ptr %l28, !tbaa !27
  store i64 0, ptr %l29, !tbaa !24
  %t541 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t543 = extractvalue { i64, ptr } %t541, 0
  store i64 %t543, ptr %l30, !tbaa !24
  br label %bb147
bb146:
  br label %bb162
bb147:
  %t545 = load i64, ptr %l29, !tbaa !24
  %t546 = load i64, ptr %l30, !tbaa !24
  %t549 = icmp slt i64 %t545, %t546
  %t551 = xor i1 %t549, true
  br i1 %t551, label %bb148, label %bb149
bb148:
  br label %bb161
bb149:
  br label %bb150
bb150:
  %t553 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t553, ptr %l281, !tbaa !27
  %t554 = load i64, ptr %l29, !tbaa !24
  %t556 = getelementptr { i64, ptr }, ptr %l281, i32 0, i32 1
  %t557 = load ptr, ptr %t556, !tbaa !27
  %t558 = getelementptr ptr, ptr %t557, i64 %t554
  %t559 = load ptr, ptr %t558, !tbaa !39
  store ptr %t559, ptr %l31, !tbaa !29
  %t561 = load ptr, ptr %l31, !tbaa !29
  %t563 = icmp eq ptr %t561, null
  br i1 %t563, label %bb151, label %bb152
bb151:
  br label %bb160
bb152:
  br label %bb153
bb153:
  %t565 = load ptr, ptr %l31, !tbaa !29
  %t567 = call i1 @compiler_2fscope_2eflThroughRef(ptr %v1, ptr %t565)
  store i1 %t567, ptr %l287
  br label %bb154
bb154:
  %t568 = load i1, ptr %l287, !tbaa !21
  %t569 = xor i1 %t568, true
  br i1 %t569, label %bb155, label %bb156
bb155:
  %t571 = load ptr, ptr %l0, !tbaa !29
  store ptr %t571, ptr %l289, !tbaa !29
  %t572 = load ptr, ptr %l31, !tbaa !29
  %t574 = call i64 @compiler_2fscope_2eflRoot(ptr %v1, ptr %t572)
  store i64 %t574, ptr %l291
  br label %bb157
bb156:
  br label %bb159
bb157:
  %t575 = load ptr, ptr %l289, !tbaa !29
  %t576 = load i64, ptr %l291, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erlDrop(ptr %v0, ptr %t575, i64 %t576)
  br label %bb158
bb158:
  br label %bb159
bb159:
  br label %bb160
bb160:
  %t577 = load i64, ptr %l29, !tbaa !24
  %t579 = add i64 %t577, 1
  store i64 %t579, ptr %l29, !tbaa !24
  br label %bb147
bb161:
  br label %bb162
bb162:
  %t581 = load ptr, ptr %l0, !tbaa !29
  %t582 = load ptr, ptr %l27, !tbaa !29
  %t584 = getelementptr %"compiler/typed:Spawn", ptr %t582, i32 0, i32 1
  %t585 = load ptr, ptr %t584, !tbaa !29
  %t587 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erlExpr(ptr %v0, ptr %v1, ptr %t581, ptr %t585, i64 %t587)
  br label %bb163
bb163:
  br label %bb169
bb164:
  br i1 true, label %bb165, label %bb166
bb165:
  br label %bb167
bb166:
  br label %bb168
bb167:
  br label %bb169
bb168:
  call void @__olang_check_failed(ptr @olang_loc_c073c5ed856c69f3_85faef458a71bd77)
  unreachable
bb169:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esplitRefused(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l5 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l12 = alloca %"compiler/source:Span"
  %l13 = alloca %"compiler/source:Span"
  %l14 = alloca %"compiler/diagmsg:Msg"
  %l15 = alloca i64
  %l16 = alloca ptr
  %l19 = alloca %"compiler/source:Span"
  %l20 = alloca %"compiler/diagmsg:Msg"
  %l21 = alloca i64
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t5 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eatPart(ptr %v0, ptr %v1, ptr %v1, ptr %t1, ptr %t2)
  store ptr %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l5, !tbaa !29
  store ptr %t6, ptr %l2, !tbaa !29
  %t7 = load ptr, ptr %l2, !tbaa !29
  %t9 = icmp eq ptr %t7, null
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t13 = load ptr, ptr %l0, !tbaa !29
  store ptr %t13, ptr %l9, !tbaa !29
  %t14 = load ptr, ptr %l0, !tbaa !29
  store ptr %t14, ptr %l10, !tbaa !29
  %t15 = load ptr, ptr %l2, !tbaa !29
  %t17 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eSpan(ptr %v1, ptr %t15)
  store %"compiler/source:Span" %t17, ptr %l12
  br label %bb4
bb3:
  store %olang.scope zeroinitializer, ptr %s2
  %t18 = load ptr, ptr %l0, !tbaa !29
  store ptr %t18, ptr %l16, !tbaa !29
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t23 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargAt(ptr %v0, ptr %v1, ptr %t19, ptr %t20)
  store %"compiler/source:Span" %t23, ptr %l19
  br label %bb8
bb4:
  %t24 = load ptr, ptr %l10, !tbaa !29
  %t25 = load %"compiler/source:Span", ptr %l12
  %t26 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elastName(ptr %v0, ptr %t24, %"compiler/source:Span" %t25)
  store %"compiler/source:Span" %t26, ptr %l13
  br label %bb5
bb5:
  %t27 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eWriteThroughAtBuilds(ptr %s1)
  store %"compiler/diagmsg:Msg" %t27, ptr %l14
  br label %bb6
bb6:
  %t28 = load ptr, ptr %l9, !tbaa !29
  %t29 = load %"compiler/source:Span", ptr %l13
  %t30 = load %"compiler/diagmsg:Msg", ptr %l14
  %t31 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %s1, ptr %t28, %"compiler/source:Span" %t29, %"compiler/diagmsg:Msg" %t30)
  store i64 %t31, ptr %l15
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s1)
  br label %bb11
bb8:
  %t32 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBorrowSplitScopes(ptr %s2)
  store %"compiler/diagmsg:Msg" %t32, ptr %l20
  br label %bb9
bb9:
  %t33 = load ptr, ptr %l16, !tbaa !29
  %t34 = load %"compiler/source:Span", ptr %l19
  %t35 = load %"compiler/diagmsg:Msg", ptr %l20
  %t36 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %s2, ptr %t33, %"compiler/source:Span" %t34, %"compiler/diagmsg:Msg" %t35)
  store i64 %t36, ptr %l21
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb11
bb11:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2everDefine(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca i1
  %l7 = alloca i64
  %l10 = alloca i64
  %l12 = alloca ptr
  %l18 = alloca i1
  %l19 = alloca i1
  %l23 = alloca { i64, [2 x i64] }
  %l25 = alloca { i64, [2 x i64] }
  %l27 = alloca i1
  %l29 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l33 = alloca { i64, [2 x i64] }
  %l37 = alloca ptr
  %l38 = alloca ptr
  %l42 = alloca { i64, [2 x i64] }
  %l51 = alloca { i64, [2 x i64] }
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, [2 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb4
bb2:
  %t5 = load i64, ptr %l1, !tbaa !24
  store i64 %t5, ptr %l7, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/scope:Scoper", ptr %t6, i32 0, i32 164
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eLen_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l10
  br label %bb3
bb3:
  %t11 = load i64, ptr %l7, !tbaa !24
  %t12 = load i64, ptr %l10, !tbaa !24
  %t13 = icmp sge i64 %t11, %t12
  store i1 %t13, ptr %l6, !tbaa !21
  br label %bb4
bb4:
  %t15 = load i1, ptr %l6, !tbaa !21
  br i1 %t15, label %bb5, label %bb6
bb5:
  br label %ret
bb6:
  br label %bb7
bb7:
  %t16 = load ptr, ptr %l0, !tbaa !29
  store ptr %t16, ptr %l12, !tbaa !29
  %t17 = load ptr, ptr %l12, !tbaa !29
  %t18 = getelementptr %"compiler/scope:Scoper", ptr %t17, i32 0, i32 178
  %t19 = load i64, ptr %t18, !tbaa !24
  %t21 = add i64 %t19, 1
  %t23 = load ptr, ptr %l12, !tbaa !29
  %t24 = getelementptr %"compiler/scope:Scoper", ptr %t23, i32 0, i32 178
  store i64 %t21, ptr %t24, !tbaa !24
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/scope:Scoper", ptr %t25, i32 0, i32 165
  %t28 = load i64, ptr %l1, !tbaa !24
  %t31 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t27, i64 %t28)
  store i1 %t31, ptr %l18
  br label %bb8
bb8:
  %t32 = load i1, ptr %l18, !tbaa !21
  br i1 %t32, label %bb9, label %bb10
bb9:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/scope:Scoper", ptr %t33, i32 0, i32 164
  %t36 = load i64, ptr %l1, !tbaa !24
  %t39 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t35, i64 %t36)
  store { i64, [2 x i64] } %t39, ptr %l23
  br label %bb11
bb10:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb13
bb11:
  %t40 = load { i64, [2 x i64] }, ptr %l2
  store { i64, [2 x i64] } %t40, ptr %l25
  %t43 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3aTerm(ptr %l23, ptr %l25)
  store i1 %t43, ptr %l27
  br label %bb12
bb12:
  %t44 = load i1, ptr %l27, !tbaa !21
  %t45 = xor i1 %t44, true
  store i1 %t45, ptr %l19, !tbaa !21
  br label %bb13
bb13:
  %t47 = load i1, ptr %l19, !tbaa !21
  br i1 %t47, label %bb14, label %bb15
bb14:
  store %olang.scope zeroinitializer, ptr %s2
  %t48 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ector(ptr %s2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t48, ptr %l29
  br label %bb16
bb15:
  br label %bb28
bb16:
  %t49 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l29
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t49, ptr %l3
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/scope:Scoper", ptr %t50, i32 0, i32 164
  %t53 = load i64, ptr %l1, !tbaa !24
  %t56 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t52, i64 %t53)
  store { i64, [2 x i64] } %t56, ptr %l33
  br label %bb17
bb17:
  %t57 = load { i64, [2 x i64] }, ptr %l33
  %t59 = extractvalue { i64, [2 x i64] } %t57, 0
  %t60 = icmp eq i64 %t59, 0
  %t62 = xor i1 %t60, true
  br i1 %t62, label %bb18, label %bb19
bb18:
  %t64 = load ptr, ptr %l0, !tbaa !29
  store ptr %t64, ptr %l37, !tbaa !29
  store ptr %l3, ptr %l38, !tbaa !29
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/scope:Scoper", ptr %t65, i32 0, i32 164
  %t68 = load i64, ptr %l1, !tbaa !24
  %t71 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t67, i64 %t68)
  store { i64, [2 x i64] } %t71, ptr %l42
  br label %bb20
bb19:
  br label %bb22
bb20:
  %t72 = load ptr, ptr %l37, !tbaa !29
  %t73 = load ptr, ptr %l38, !tbaa !29
  %t74 = load { i64, [2 x i64] }, ptr %l42
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eaddToSet(ptr %v0, ptr %s2, ptr %t72, ptr %t73, { i64, [2 x i64] } %t74)
  br label %bb21
bb21:
  br label %bb22
bb22:
  %t75 = load { i64, [2 x i64] }, ptr %l2
  %t77 = extractvalue { i64, [2 x i64] } %t75, 0
  %t78 = icmp eq i64 %t77, 0
  %t80 = xor i1 %t78, true
  br i1 %t80, label %bb23, label %bb24
bb23:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t83 = load { i64, [2 x i64] }, ptr %l2
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eaddToSet(ptr %v0, ptr %s2, ptr %t82, ptr %l3, { i64, [2 x i64] } %t83)
  br label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb26
bb26:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t90 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etermOf(ptr %v0, ptr %s2, ptr %t87, ptr %l3)
  store { i64, [2 x i64] } %t90, ptr %l51
  br label %bb27
bb27:
  %t91 = load { i64, [2 x i64] }, ptr %l51
  store { i64, [2 x i64] } %t91, ptr %l2
  call void @__olang_scope_close(ptr %s2)
  br label %bb28
bb28:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/scope:Scoper", ptr %t92, i32 0, i32 164
  %t95 = load i64, ptr %l1, !tbaa !24
  %t96 = load { i64, [2 x i64] }, ptr %l2
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eSetAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t94, i64 %t95, { i64, [2 x i64] } %t96)
  br label %bb29
bb29:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/scope:Scoper", ptr %t100, i32 0, i32 165
  %t103 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t102, i64 %t103, i1 true)
  br label %bb30
bb30:
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/diagmsg:Msg" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eviewKeptMsg(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca %"compiler/typed:Local"
  %l4 = alloca { i64, ptr }
  %l13 = alloca %"compiler/typed:Local"
  %l19 = alloca { i64, ptr }
  %l22 = alloca i1
  %l26 = alloca %"compiler/diagmsg:Msg"
  %l28 = alloca %"compiler/diagmsg:Msg"
  %l30 = alloca %"compiler/diagmsg:Msg"
  %l32 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca %"compiler/diagmsg:Msg"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 26
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  br i1 %t6, label %bb1, label %bb2
bb1:
  call void @__olang_check_failed(ptr @olang_loc_82f140fa352aa561_4fbcae78997f2455)
  unreachable
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/scope:Scoper", ptr %t8, i32 0, i32 26
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t14 = getelementptr %"compiler/typed:Body", ptr %t11, i32 0, i32 7
  %t18 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t14, i64 %a1)
  store %"compiler/typed:Local" %t18, ptr %l13
  br label %bb4
bb4:
  %t19 = load %"compiler/typed:Local", ptr %l13
  store %"compiler/typed:Local" %t19, ptr %l3
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/scope:Scoper", ptr %t20, i32 0, i32 0
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t25 = getelementptr %"compiler/generic:Program", ptr %t23, i32 0, i32 0
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t28 = getelementptr %"compiler/load:Loader", ptr %t26, i32 0, i32 3
  %t29 = load ptr, ptr %t28, !tbaa !29
  %t30 = getelementptr %"compiler/typed:Local", ptr %l3, i32 0, i32 0
  %t31 = load i32, ptr %t30, !tbaa !23
  %t34 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t29, i32 %t31)
  store { i64, ptr } %t34, ptr %l19
  br label %bb5
bb5:
  %t35 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t35, ptr %l4, !tbaa !27
  %t36 = getelementptr %"compiler/typed:Local", ptr %l3, i32 0, i32 4
  %t37 = load i32, ptr %t36, !range !{i32 0, i32 7}
  %t39 = trunc i64 4 to i32
  %t40 = icmp eq i32 %t37, %t39
  br i1 %t40, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb8
bb7:
  %t42 = getelementptr %"compiler/typed:Local", ptr %l3, i32 0, i32 4
  %t43 = load i32, ptr %t42, !range !{i32 0, i32 7}
  %t45 = trunc i64 5 to i32
  %t46 = icmp eq i32 %t43, %t45
  store i1 %t46, ptr %l22, !tbaa !21
  br label %bb8
bb8:
  %t48 = load i1, ptr %l22, !tbaa !21
  br i1 %t48, label %bb9, label %bb10
bb9:
  %t49 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t51 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eViewKeptCopy(ptr %v0, ptr %v1, { i64, ptr } %t49)
  store %"compiler/diagmsg:Msg" %t51, ptr %l26
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t52 = load %"compiler/diagmsg:Msg", ptr %l26
  store %"compiler/diagmsg:Msg" %t52, ptr %rv
  br label %ret
bb12:
  br i1 %a2, label %bb13, label %bb14
bb13:
  %t55 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t57 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eViewReturned(ptr %v0, ptr %v1, { i64, ptr } %t55)
  store %"compiler/diagmsg:Msg" %t57, ptr %l30
  br label %bb15
bb14:
  %t58 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t60 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eViewKept(ptr %v0, ptr %v1, { i64, ptr } %t58)
  store %"compiler/diagmsg:Msg" %t60, ptr %l32
  br label %bb16
bb15:
  %t61 = load %"compiler/diagmsg:Msg", ptr %l30
  store %"compiler/diagmsg:Msg" %t61, ptr %l28
  br label %bb17
bb16:
  %t62 = load %"compiler/diagmsg:Msg", ptr %l32
  store %"compiler/diagmsg:Msg" %t62, ptr %l28
  br label %bb17
bb17:
  %t63 = load %"compiler/diagmsg:Msg", ptr %l28
  store %"compiler/diagmsg:Msg" %t63, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diagmsg:Msg", ptr %rv
  ret %"compiler/diagmsg:Msg" %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewant(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l5 = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 221
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t3, i64 %t4)
  store i1 %t7, ptr %l5
  br label %bb1
bb1:
  %t8 = load i1, ptr %l5, !tbaa !21
  %t9 = xor i1 %t8, true
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/scope:Scoper", ptr %t11, i32 0, i32 254
  %t14 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t13, i64 %t14)
  br label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb5
bb5:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/scope:Scoper", ptr %t17, i32 0, i32 221
  %t20 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t19, i64 %t20, i1 true)
  br label %bb6
bb6:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/scope:Scoper", ptr %t23, i32 0, i32 252
  %t26 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t25, i64 %t26)
  br label %bb7
bb7:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2eisBlockTerm({ i64, [2 x i64] } %a0) #0 {
entry:
  %l1 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = extractvalue { i64, [2 x i64] } %a0, 0
  %t4 = icmp eq i64 %t3, 1
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  store i1 true, ptr %l1, !tbaa !21
  br label %bb9
bb4:
  br i1 true, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  store i1 false, ptr %l1, !tbaa !21
  br label %bb9
bb8:
  call void @__olang_check_failed(ptr @olang_loc_f7b7284e8bdb42c_7d0460b025534e78)
  unreachable
bb9:
  %t6 = load i1, ptr %l1, !tbaa !21
  store i1 %t6, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2eisCapCode(i64 %a0) #0 {
entry:
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = icmp sle i64 %a0, -2
  store i1 %t3, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fscope_2emergeRecs(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca i64
  %l13 = alloca i64
  %l15 = alloca i64
  %l20 = alloca %"compiler/scope:fnRec"
  %l22 = alloca %"compiler/scope:fnRec"
  %l33 = alloca i64
  %l35 = alloca i64
  %l40 = alloca i64
  %l44 = alloca i1
  %l53 = alloca i64
  %l55 = alloca i64
  %l60 = alloca i64
  %l64 = alloca i1
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/scope:fnRecs", ptr %t1, i32 0, i32 0
  store ptr %t3, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  store %olang.scope zeroinitializer, ptr %s2
  %t5 = load i64, ptr %l3, !tbaa !24
  store i64 %t5, ptr %l13, !tbaa !24
  %t6 = load ptr, ptr %l2, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eLen_3ccompiler_2fscope_3afnRec_3e(ptr %v1, ptr %t6)
  store i64 %t8, ptr %l15
  br label %bb2
bb2:
  %t9 = load i64, ptr %l13, !tbaa !24
  %t10 = load i64, ptr %l15, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s2)
  br label %bb10
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l2, !tbaa !29
  %t16 = load i64, ptr %l3, !tbaa !24
  %t19 = call %"compiler/scope:fnRec" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eAt_3ccompiler_2fscope_3afnRec_3e(ptr %v1, ptr %v1, ptr %t15, i64 %t16)
  store %"compiler/scope:fnRec" %t19, ptr %l20
  br label %bb6
bb6:
  %t21 = call %"compiler/scope:fnRec" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRec(ptr %s2, ptr %l20)
  store %"compiler/scope:fnRec" %t21, ptr %l22
  br label %bb7
bb7:
  %t22 = load %"compiler/scope:fnRec", ptr %l22
  %t23 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fscope_2eaddRec(ptr %v0, ptr %s2, ptr %t23, %"compiler/scope:fnRec" %t22)
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s2)
  br label %bb9
bb9:
  %t27 = load i64, ptr %l3, !tbaa !24
  %t29 = add i64 %t27, 1
  store i64 %t29, ptr %l3, !tbaa !24
  br label %bb1
bb10:
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t33 = getelementptr %"compiler/scope:fnRecs", ptr %t31, i32 0, i32 1
  %t34 = load i1, ptr %t33, !tbaa !21
  %t36 = xor i1 %t34, true
  br i1 %t36, label %bb11, label %bb12
bb11:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/scope:fnRecs", ptr %t38, i32 0, i32 1
  store i1 false, ptr %t40, !tbaa !21
  br label %bb13
bb12:
  br label %bb13
bb13:
  %t41 = load ptr, ptr %l1, !tbaa !29
  %t43 = getelementptr %"compiler/scope:fnRecs", ptr %t41, i32 0, i32 2
  store ptr %t43, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb14
bb14:
  %t45 = load i64, ptr %l6, !tbaa !24
  store i64 %t45, ptr %l33, !tbaa !24
  %t46 = load ptr, ptr %l5, !tbaa !29
  %t48 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t46)
  store i64 %t48, ptr %l35
  br label %bb15
bb15:
  %t49 = load i64, ptr %l33, !tbaa !24
  %t50 = load i64, ptr %l35, !tbaa !24
  %t51 = icmp slt i64 %t49, %t50
  %t53 = xor i1 %t51, true
  br i1 %t53, label %bb16, label %bb17
bb16:
  br label %bb26
bb17:
  br label %bb18
bb18:
  %t55 = load ptr, ptr %l5, !tbaa !29
  %t56 = load i64, ptr %l6, !tbaa !24
  %t59 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t55, i64 %t56)
  store i64 %t59, ptr %l40
  br label %bb19
bb19:
  %t60 = load i64, ptr %l40, !tbaa !24
  store i64 %t60, ptr %l7, !tbaa !24
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/scope:fnRecs", ptr %t61, i32 0, i32 2
  %t64 = load i64, ptr %l7, !tbaa !24
  %t67 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %t63, i64 %t64)
  store i1 %t67, ptr %l44
  br label %bb20
bb20:
  %t68 = load i1, ptr %l44, !tbaa !21
  %t69 = xor i1 %t68, true
  br i1 %t69, label %bb21, label %bb22
bb21:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/scope:fnRecs", ptr %t71, i32 0, i32 2
  %t74 = load i64, ptr %l7, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t73, i64 %t74)
  br label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t77 = load i64, ptr %l6, !tbaa !24
  %t79 = add i64 %t77, 1
  store i64 %t79, ptr %l6, !tbaa !24
  br label %bb14
bb26:
  %t81 = load ptr, ptr %l1, !tbaa !29
  %t83 = getelementptr %"compiler/scope:fnRecs", ptr %t81, i32 0, i32 3
  store ptr %t83, ptr %l8, !tbaa !29
  store i64 0, ptr %l9, !tbaa !24
  br label %bb27
bb27:
  %t85 = load i64, ptr %l9, !tbaa !24
  store i64 %t85, ptr %l53, !tbaa !24
  %t86 = load ptr, ptr %l8, !tbaa !29
  %t88 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t86)
  store i64 %t88, ptr %l55
  br label %bb28
bb28:
  %t89 = load i64, ptr %l53, !tbaa !24
  %t90 = load i64, ptr %l55, !tbaa !24
  %t91 = icmp slt i64 %t89, %t90
  %t93 = xor i1 %t91, true
  br i1 %t93, label %bb29, label %bb30
bb29:
  br label %bb39
bb30:
  br label %bb31
bb31:
  %t95 = load ptr, ptr %l8, !tbaa !29
  %t96 = load i64, ptr %l9, !tbaa !24
  %t99 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t95, i64 %t96)
  store i64 %t99, ptr %l60
  br label %bb32
bb32:
  %t100 = load i64, ptr %l60, !tbaa !24
  store i64 %t100, ptr %l10, !tbaa !24
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = getelementptr %"compiler/scope:fnRecs", ptr %t101, i32 0, i32 3
  %t104 = load i64, ptr %l10, !tbaa !24
  %t107 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %t103, i64 %t104)
  store i1 %t107, ptr %l64
  br label %bb33
bb33:
  %t108 = load i1, ptr %l64, !tbaa !21
  %t109 = xor i1 %t108, true
  br i1 %t109, label %bb34, label %bb35
bb34:
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/scope:fnRecs", ptr %t111, i32 0, i32 3
  %t114 = load i64, ptr %l10, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t113, i64 %t114)
  br label %bb36
bb35:
  br label %bb37
bb36:
  br label %bb37
bb37:
  br label %bb38
bb38:
  %t117 = load i64, ptr %l9, !tbaa !24
  %t119 = add i64 %t117, 1
  store i64 %t119, ptr %l9, !tbaa !24
  br label %bb27
bb39:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2erecLess(ptr %v0, ptr %v1, %"compiler/scope:fnRec" %a0, %"compiler/scope:fnRec" %a1) #0 {
entry:
  %l0 = alloca %"compiler/scope:fnRec"
  %l1 = alloca %"compiler/scope:fnRec"
  %l5 = alloca i1
  %l9 = alloca i1
  %l12 = alloca i1
  %rv = alloca i1
  store %"compiler/scope:fnRec" %a0, ptr %l0
  store %"compiler/scope:fnRec" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/scope:fnRec", ptr %l0, i32 0, i32 0
  %t2 = load i64, ptr %t1, !tbaa !24
  %t3 = getelementptr %"compiler/scope:fnRec", ptr %l1, i32 0, i32 0
  %t4 = load i64, ptr %t3, !tbaa !24
  %t7 = icmp slt i64 %t2, %t4
  br i1 %t7, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb9
bb2:
  %t9 = getelementptr %"compiler/scope:fnRec", ptr %l0, i32 0, i32 0
  %t10 = load i64, ptr %t9, !tbaa !24
  %t11 = getelementptr %"compiler/scope:fnRec", ptr %l1, i32 0, i32 0
  %t12 = load i64, ptr %t11, !tbaa !24
  %t15 = icmp eq i64 %t10, %t12
  br i1 %t15, label %bb3, label %bb4
bb3:
  %t17 = getelementptr %"compiler/scope:fnRec", ptr %l0, i32 0, i32 2
  %t18 = load i1, ptr %t17, !tbaa !21
  %t20 = xor i1 %t18, true
  store i1 %t20, ptr %l9, !tbaa !21
  br label %bb5
bb4:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb5
bb5:
  %t22 = load i1, ptr %l9, !tbaa !21
  br i1 %t22, label %bb6, label %bb7
bb6:
  %t23 = getelementptr %"compiler/scope:fnRec", ptr %l1, i32 0, i32 2
  %t24 = load i1, ptr %t23, !tbaa !21
  store i1 %t24, ptr %l12, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb8
bb8:
  %t26 = load i1, ptr %l12, !tbaa !21
  store i1 %t26, ptr %l5, !tbaa !21
  br label %bb9
bb9:
  %t27 = load i1, ptr %l5, !tbaa !21
  store i1 %t27, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fscope_2eregionLocal(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca i1
  %l9 = alloca ptr
  %l10 = alloca i1
  %rv = alloca i64
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
  br label %bb17
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  store ptr %t16, ptr %l9, !tbaa !29
  store i1 false, ptr %l10, !tbaa !21
  %t17 = load ptr, ptr %l9, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb6, label %bb7
bb6:
  %t20 = load ptr, ptr %l9, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 8}
  %t23 = icmp eq i64 %t21, 0
  store i1 %t23, ptr %l10, !tbaa !21
  br label %bb7
bb7:
  %t24 = load i1, ptr %l10, !tbaa !21
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr { i64, [4 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t27, i32 0, i32 2
  %t29 = load i32, ptr %t28
  store i32 %t29, ptr %l2, !tbaa !23
  br label %bb10
bb9:
  br label %bb11
bb10:
  %t31 = load i32, ptr %l2, !tbaa !23
  %t33 = sext i32 %t31 to i64
  store i64 %t33, ptr %rv
  br label %ret
bb11:
  br i1 true, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  call void @__olang_check_failed(ptr @olang_loc_926310a74149af64_7456b8629edeed00)
  unreachable
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
  call void @__olang_check_failed(ptr @olang_loc_d723be5f6d33c955_f64e13843779cd91)
  unreachable
bb22:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fscope_2etermGiven({ i64, [2 x i64] } %a0) #0 {
entry:
  %l0 = alloca { i64, [2 x i64] }
  %l1 = alloca i1
  %rv = alloca i1
  store { i64, [2 x i64] } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [2 x i64] }, ptr %l0
  %t3 = extractvalue { i64, [2 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 3
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb5
bb2:
  %t6 = load { i64, [2 x i64] }, ptr %l0
  %t8 = extractvalue { i64, [2 x i64] } %t6, 0
  %t9 = icmp eq i64 %t8, 2
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
  call void @__olang_check_failed(ptr @olang_loc_6421b9c211daea5c_85adafb275b4c978)
  unreachable
bb11:
  %t11 = load i1, ptr %l1, !tbaa !21
  store i1 %t11, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/scope:Gap" @compiler_2fscope_3aGap_2ector(ptr %v0, ptr %v1, i64 %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2) #0 {
entry:
  %rv = alloca %"compiler/scope:Gap"
  br label %start
start:
  br label %bb0
bb0:
  %t8 = insertvalue %"compiler/scope:Gap" undef, i64 %a0, 0
  %t10 = insertvalue %"compiler/scope:Gap" %t8, %"compiler/source:Span" %a1, 1
  %t12 = insertvalue %"compiler/scope:Gap" %t10, { i64, ptr } %a2, 2
  store %"compiler/scope:Gap" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/scope:Gap", ptr %rv
  ret %"compiler/scope:Gap" %rr
}

define dso_local void @compiler_2fscope_3asummary_2ector(ptr %out, ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l22 = alloca i64
  %l24 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l26 = alloca i64
  %l28 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l30 = alloca i64
  %l32 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l34 = alloca i64
  %l36 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l38 = alloca i64
  %l40 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l42 = alloca i64
  %l44 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l46 = alloca i64
  %l48 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l50 = alloca i64
  %l52 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l54 = alloca i64
  %l56 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l58 = alloca i64
  %l60 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l62 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l63 = alloca i64
  %l65 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l67 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l68 = alloca i64
  %l70 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l72 = alloca i64
  %l74 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l76 = alloca %"compiler/scope:fnRecs"
  %l77 = alloca %"compiler/scope:summary"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l21
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l0
  %t3 = ptrtoint ptr %v0 to i64
  store i64 %t3, ptr %l22, !tbaa !24
  %t4 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3asummary_2e1
  br i1 %t4, label %bb2, label %bb3
bb2:
  %t6 = call ptr @__olang_region_make(ptr %v0)
  %t7 = ptrtoint ptr %t6 to i64
  store i64 %t7, ptr %l22, !tbaa !24
  br label %bb3
bb3:
  %t8 = load i64, ptr %l22
  %t9 = inttoptr i64 %t8 to ptr
  %t10 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t9, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %l24
  br label %bb4
bb4:
  %t11 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3asummary_2e1
  br i1 %t11, label %bb5, label %bb6
bb5:
  %t13 = load i64, ptr %l22
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l24, i32 0, i32 0
  %t16 = load { i64, ptr }, ptr %t15
  %t17 = extractvalue { i64, ptr } %t16, 1
  %t18 = call ptr @__olang_region_or(ptr %t17, ptr null)
  %t19 = icmp ne ptr %t18, null
  %t20 = select i1 %t19, ptr %t18, ptr null
  %t21 = icmp eq ptr %t20, %t14
  call void @__olang_region_settle(ptr %t14, i1 %t21)
  br label %bb6
bb6:
  %t22 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l24
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t22, ptr %l1
  %t23 = ptrtoint ptr %v0 to i64
  store i64 %t23, ptr %l26, !tbaa !24
  %t24 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3asummary_2e2
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t26 = call ptr @__olang_region_make(ptr %v0)
  %t27 = ptrtoint ptr %t26 to i64
  store i64 %t27, ptr %l26, !tbaa !24
  br label %bb8
bb8:
  %t28 = load i64, ptr %l26
  %t29 = inttoptr i64 %t28 to ptr
  %t30 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t29, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t30, ptr %l28
  br label %bb9
bb9:
  %t31 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3asummary_2e2
  br i1 %t31, label %bb10, label %bb11
bb10:
  %t33 = load i64, ptr %l26
  %t34 = inttoptr i64 %t33 to ptr
  %t35 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l28, i32 0, i32 0
  %t36 = load { i64, ptr }, ptr %t35
  %t37 = extractvalue { i64, ptr } %t36, 1
  %t38 = call ptr @__olang_region_or(ptr %t37, ptr null)
  %t39 = icmp ne ptr %t38, null
  %t40 = select i1 %t39, ptr %t38, ptr null
  %t41 = icmp eq ptr %t40, %t34
  call void @__olang_region_settle(ptr %t34, i1 %t41)
  br label %bb11
bb11:
  %t42 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l28
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t42, ptr %l2
  %t43 = ptrtoint ptr %v0 to i64
  store i64 %t43, ptr %l30, !tbaa !24
  %t44 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3asummary_2e3
  br i1 %t44, label %bb12, label %bb13
bb12:
  %t46 = call ptr @__olang_region_make(ptr %v0)
  %t47 = ptrtoint ptr %t46 to i64
  store i64 %t47, ptr %l30, !tbaa !24
  br label %bb13
bb13:
  %t48 = load i64, ptr %l30
  %t49 = inttoptr i64 %t48 to ptr
  %t50 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t49, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t50, ptr %l32
  br label %bb14
bb14:
  %t51 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3asummary_2e3
  br i1 %t51, label %bb15, label %bb16
bb15:
  %t53 = load i64, ptr %l30
  %t54 = inttoptr i64 %t53 to ptr
  %t55 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l32, i32 0, i32 0
  %t56 = load { i64, ptr }, ptr %t55
  %t57 = extractvalue { i64, ptr } %t56, 1
  %t58 = call ptr @__olang_region_or(ptr %t57, ptr null)
  %t59 = icmp ne ptr %t58, null
  %t60 = select i1 %t59, ptr %t58, ptr null
  %t61 = icmp eq ptr %t60, %t54
  call void @__olang_region_settle(ptr %t54, i1 %t61)
  br label %bb16
bb16:
  %t62 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l32
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t62, ptr %l3
  %t63 = ptrtoint ptr %v0 to i64
  store i64 %t63, ptr %l34, !tbaa !24
  %t64 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3asummary_2e4
  br i1 %t64, label %bb17, label %bb18
bb17:
  %t66 = call ptr @__olang_region_make(ptr %v0)
  %t67 = ptrtoint ptr %t66 to i64
  store i64 %t67, ptr %l34, !tbaa !24
  br label %bb18
bb18:
  %t68 = load i64, ptr %l34
  %t69 = inttoptr i64 %t68 to ptr
  %t70 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ector(ptr %t69, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t70, ptr %l36
  br label %bb19
bb19:
  %t71 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3asummary_2e4
  br i1 %t71, label %bb20, label %bb21
bb20:
  %t73 = load i64, ptr %l34
  %t74 = inttoptr i64 %t73 to ptr
  %t75 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l36, i32 0, i32 0
  %t76 = load { i64, ptr }, ptr %t75
  %t77 = extractvalue { i64, ptr } %t76, 1
  %t78 = call ptr @__olang_region_or(ptr %t77, ptr null)
  %t79 = icmp ne ptr %t78, null
  %t80 = select i1 %t79, ptr %t78, ptr null
  %t81 = icmp eq ptr %t80, %t74
  call void @__olang_region_settle(ptr %t74, i1 %t81)
  br label %bb21
bb21:
  %t82 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l36
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t82, ptr %l4
  %t83 = ptrtoint ptr %v0 to i64
  store i64 %t83, ptr %l38, !tbaa !24
  %t84 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3asummary_2e5
  br i1 %t84, label %bb22, label %bb23
bb22:
  %t86 = call ptr @__olang_region_make(ptr %v0)
  %t87 = ptrtoint ptr %t86 to i64
  store i64 %t87, ptr %l38, !tbaa !24
  br label %bb23
bb23:
  %t88 = load i64, ptr %l38
  %t89 = inttoptr i64 %t88 to ptr
  %t90 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t89, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t90, ptr %l40
  br label %bb24
bb24:
  %t91 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3asummary_2e5
  br i1 %t91, label %bb25, label %bb26
bb25:
  %t93 = load i64, ptr %l38
  %t94 = inttoptr i64 %t93 to ptr
  %t95 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l40, i32 0, i32 0
  %t96 = load { i64, ptr }, ptr %t95
  %t97 = extractvalue { i64, ptr } %t96, 1
  %t98 = call ptr @__olang_region_or(ptr %t97, ptr null)
  %t99 = icmp ne ptr %t98, null
  %t100 = select i1 %t99, ptr %t98, ptr null
  %t101 = icmp eq ptr %t100, %t94
  call void @__olang_region_settle(ptr %t94, i1 %t101)
  br label %bb26
bb26:
  %t102 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l40
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t102, ptr %l5
  %t103 = ptrtoint ptr %v0 to i64
  store i64 %t103, ptr %l42, !tbaa !24
  %t104 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3asummary_2e6
  br i1 %t104, label %bb27, label %bb28
bb27:
  %t106 = call ptr @__olang_region_make(ptr %v0)
  %t107 = ptrtoint ptr %t106 to i64
  store i64 %t107, ptr %l42, !tbaa !24
  br label %bb28
bb28:
  %t108 = load i64, ptr %l42
  %t109 = inttoptr i64 %t108 to ptr
  %t110 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t109, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t110, ptr %l44
  br label %bb29
bb29:
  %t111 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3asummary_2e6
  br i1 %t111, label %bb30, label %bb31
bb30:
  %t113 = load i64, ptr %l42
  %t114 = inttoptr i64 %t113 to ptr
  %t115 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l44, i32 0, i32 0
  %t116 = load { i64, ptr }, ptr %t115
  %t117 = extractvalue { i64, ptr } %t116, 1
  %t118 = call ptr @__olang_region_or(ptr %t117, ptr null)
  %t119 = icmp ne ptr %t118, null
  %t120 = select i1 %t119, ptr %t118, ptr null
  %t121 = icmp eq ptr %t120, %t114
  call void @__olang_region_settle(ptr %t114, i1 %t121)
  br label %bb31
bb31:
  %t122 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l44
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t122, ptr %l6
  %t123 = ptrtoint ptr %v0 to i64
  store i64 %t123, ptr %l46, !tbaa !24
  %t124 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3asummary_2e7
  br i1 %t124, label %bb32, label %bb33
bb32:
  %t126 = call ptr @__olang_region_make(ptr %v0)
  %t127 = ptrtoint ptr %t126 to i64
  store i64 %t127, ptr %l46, !tbaa !24
  br label %bb33
bb33:
  %t128 = load i64, ptr %l46
  %t129 = inttoptr i64 %t128 to ptr
  %t130 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t129, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t130, ptr %l48
  br label %bb34
bb34:
  %t131 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3asummary_2e7
  br i1 %t131, label %bb35, label %bb36
bb35:
  %t133 = load i64, ptr %l46
  %t134 = inttoptr i64 %t133 to ptr
  %t135 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l48, i32 0, i32 0
  %t136 = load { i64, ptr }, ptr %t135
  %t137 = extractvalue { i64, ptr } %t136, 1
  %t138 = call ptr @__olang_region_or(ptr %t137, ptr null)
  %t139 = icmp ne ptr %t138, null
  %t140 = select i1 %t139, ptr %t138, ptr null
  %t141 = icmp eq ptr %t140, %t134
  call void @__olang_region_settle(ptr %t134, i1 %t141)
  br label %bb36
bb36:
  %t142 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l48
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t142, ptr %l7
  %t143 = ptrtoint ptr %v0 to i64
  store i64 %t143, ptr %l50, !tbaa !24
  %t144 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3asummary_2e8
  br i1 %t144, label %bb37, label %bb38
bb37:
  %t146 = call ptr @__olang_region_make(ptr %v0)
  %t147 = ptrtoint ptr %t146 to i64
  store i64 %t147, ptr %l50, !tbaa !24
  br label %bb38
bb38:
  %t148 = load i64, ptr %l50
  %t149 = inttoptr i64 %t148 to ptr
  %t150 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t149, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t150, ptr %l52
  br label %bb39
bb39:
  %t151 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3asummary_2e8
  br i1 %t151, label %bb40, label %bb41
bb40:
  %t153 = load i64, ptr %l50
  %t154 = inttoptr i64 %t153 to ptr
  %t155 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l52, i32 0, i32 0
  %t156 = load { i64, ptr }, ptr %t155
  %t157 = extractvalue { i64, ptr } %t156, 1
  %t158 = call ptr @__olang_region_or(ptr %t157, ptr null)
  %t159 = icmp ne ptr %t158, null
  %t160 = select i1 %t159, ptr %t158, ptr null
  %t161 = icmp eq ptr %t160, %t154
  call void @__olang_region_settle(ptr %t154, i1 %t161)
  br label %bb41
bb41:
  %t162 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l52
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t162, ptr %l8
  %t163 = ptrtoint ptr %v0 to i64
  store i64 %t163, ptr %l54, !tbaa !24
  %t164 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3asummary_2e9
  br i1 %t164, label %bb42, label %bb43
bb42:
  %t166 = call ptr @__olang_region_make(ptr %v0)
  %t167 = ptrtoint ptr %t166 to i64
  store i64 %t167, ptr %l54, !tbaa !24
  br label %bb43
bb43:
  %t168 = load i64, ptr %l54
  %t169 = inttoptr i64 %t168 to ptr
  %t170 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t169, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t170, ptr %l56
  br label %bb44
bb44:
  %t171 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3asummary_2e9
  br i1 %t171, label %bb45, label %bb46
bb45:
  %t173 = load i64, ptr %l54
  %t174 = inttoptr i64 %t173 to ptr
  %t175 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l56, i32 0, i32 0
  %t176 = load { i64, ptr }, ptr %t175
  %t177 = extractvalue { i64, ptr } %t176, 1
  %t178 = call ptr @__olang_region_or(ptr %t177, ptr null)
  %t179 = icmp ne ptr %t178, null
  %t180 = select i1 %t179, ptr %t178, ptr null
  %t181 = icmp eq ptr %t180, %t174
  call void @__olang_region_settle(ptr %t174, i1 %t181)
  br label %bb46
bb46:
  %t182 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l56
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t182, ptr %l9
  %t183 = ptrtoint ptr %v0 to i64
  store i64 %t183, ptr %l58, !tbaa !24
  %t184 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3asummary_2e10
  br i1 %t184, label %bb47, label %bb48
bb47:
  %t186 = call ptr @__olang_region_make(ptr %v0)
  %t187 = ptrtoint ptr %t186 to i64
  store i64 %t187, ptr %l58, !tbaa !24
  br label %bb48
bb48:
  %t188 = load i64, ptr %l58
  %t189 = inttoptr i64 %t188 to ptr
  %t190 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t189, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t190, ptr %l60
  br label %bb49
bb49:
  %t191 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3asummary_2e10
  br i1 %t191, label %bb50, label %bb51
bb50:
  %t193 = load i64, ptr %l58
  %t194 = inttoptr i64 %t193 to ptr
  %t195 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l60, i32 0, i32 0
  %t196 = load { i64, ptr }, ptr %t195
  %t197 = extractvalue { i64, ptr } %t196, 1
  %t198 = call ptr @__olang_region_or(ptr %t197, ptr null)
  %t199 = icmp ne ptr %t198, null
  %t200 = select i1 %t199, ptr %t198, ptr null
  %t201 = icmp eq ptr %t200, %t194
  call void @__olang_region_settle(ptr %t194, i1 %t201)
  br label %bb51
bb51:
  %t202 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l60
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t202, ptr %l10
  %t203 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t203, ptr %l62
  br label %bb52
bb52:
  %t204 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l62
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t204, ptr %l11
  %t205 = ptrtoint ptr %v0 to i64
  store i64 %t205, ptr %l63, !tbaa !24
  %t206 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3asummary_2e12
  br i1 %t206, label %bb53, label %bb54
bb53:
  %t208 = call ptr @__olang_region_make(ptr %v0)
  %t209 = ptrtoint ptr %t208 to i64
  store i64 %t209, ptr %l63, !tbaa !24
  br label %bb54
bb54:
  %t210 = load i64, ptr %l63
  %t211 = inttoptr i64 %t210 to ptr
  %t212 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t211, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t212, ptr %l65
  br label %bb55
bb55:
  %t213 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3asummary_2e12
  br i1 %t213, label %bb56, label %bb57
bb56:
  %t215 = load i64, ptr %l63
  %t216 = inttoptr i64 %t215 to ptr
  %t217 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l65, i32 0, i32 0
  %t218 = load { i64, ptr }, ptr %t217
  %t219 = extractvalue { i64, ptr } %t218, 1
  %t220 = call ptr @__olang_region_or(ptr %t219, ptr null)
  %t221 = icmp ne ptr %t220, null
  %t222 = select i1 %t221, ptr %t220, ptr null
  %t223 = icmp eq ptr %t222, %t216
  call void @__olang_region_settle(ptr %t216, i1 %t223)
  br label %bb57
bb57:
  %t224 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l65
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t224, ptr %l12
  %t225 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t225, ptr %l67
  br label %bb58
bb58:
  %t226 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l67
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t226, ptr %l13
  %t227 = ptrtoint ptr %v0 to i64
  store i64 %t227, ptr %l68, !tbaa !24
  %t228 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3asummary_2e14
  br i1 %t228, label %bb59, label %bb60
bb59:
  %t230 = call ptr @__olang_region_make(ptr %v0)
  %t231 = ptrtoint ptr %t230 to i64
  store i64 %t231, ptr %l68, !tbaa !24
  br label %bb60
bb60:
  %t232 = load i64, ptr %l68
  %t233 = inttoptr i64 %t232 to ptr
  %t234 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t233, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t234, ptr %l70
  br label %bb61
bb61:
  %t235 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3asummary_2e14
  br i1 %t235, label %bb62, label %bb63
bb62:
  %t237 = load i64, ptr %l68
  %t238 = inttoptr i64 %t237 to ptr
  %t239 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l70, i32 0, i32 0
  %t240 = load { i64, ptr }, ptr %t239
  %t241 = extractvalue { i64, ptr } %t240, 1
  %t242 = call ptr @__olang_region_or(ptr %t241, ptr null)
  %t243 = icmp ne ptr %t242, null
  %t244 = select i1 %t243, ptr %t242, ptr null
  %t245 = icmp eq ptr %t244, %t238
  call void @__olang_region_settle(ptr %t238, i1 %t245)
  br label %bb63
bb63:
  %t246 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l70
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t246, ptr %l14
  %t247 = ptrtoint ptr %v0 to i64
  store i64 %t247, ptr %l72, !tbaa !24
  %t248 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3asummary_2e15
  br i1 %t248, label %bb64, label %bb65
bb64:
  %t250 = call ptr @__olang_region_make(ptr %v0)
  %t251 = ptrtoint ptr %t250 to i64
  store i64 %t251, ptr %l72, !tbaa !24
  br label %bb65
bb65:
  %t252 = load i64, ptr %l72
  %t253 = inttoptr i64 %t252 to ptr
  %t254 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t253, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t254, ptr %l74
  br label %bb66
bb66:
  %t255 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3asummary_2e15
  br i1 %t255, label %bb67, label %bb68
bb67:
  %t257 = load i64, ptr %l72
  %t258 = inttoptr i64 %t257 to ptr
  %t259 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l74, i32 0, i32 0
  %t260 = load { i64, ptr }, ptr %t259
  %t261 = extractvalue { i64, ptr } %t260, 1
  %t262 = call ptr @__olang_region_or(ptr %t261, ptr null)
  %t263 = icmp ne ptr %t262, null
  %t264 = select i1 %t263, ptr %t262, ptr null
  %t265 = icmp eq ptr %t264, %t258
  call void @__olang_region_settle(ptr %t258, i1 %t265)
  br label %bb68
bb68:
  %t266 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l74
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t266, ptr %l15
  %t267 = call %"compiler/scope:fnRecs" @olang_2emir_2eHelperKind_2eZero_2ecompiler_2fscope_3afnRecs(ptr %v0)
  store %"compiler/scope:fnRecs" %t267, ptr %l76
  br label %bb69
bb69:
  %t268 = load %"compiler/scope:fnRecs", ptr %l76
  %t269 = getelementptr %"compiler/scope:summary", ptr %l77, i32 0, i32 0
  %t270 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t270, ptr %t269
  %t271 = getelementptr %"compiler/scope:summary", ptr %l77, i32 0, i32 1
  %t272 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t272, ptr %t271
  %t273 = getelementptr %"compiler/scope:summary", ptr %l77, i32 0, i32 2
  %t274 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t274, ptr %t273
  %t275 = getelementptr %"compiler/scope:summary", ptr %l77, i32 0, i32 3
  %t276 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t276, ptr %t275
  %t277 = getelementptr %"compiler/scope:summary", ptr %l77, i32 0, i32 4
  %t278 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t278, ptr %t277
  %t279 = getelementptr %"compiler/scope:summary", ptr %l77, i32 0, i32 5
  %t280 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t280, ptr %t279
  %t281 = getelementptr %"compiler/scope:summary", ptr %l77, i32 0, i32 6
  %t282 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t282, ptr %t281
  %t283 = getelementptr %"compiler/scope:summary", ptr %l77, i32 0, i32 7
  %t284 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t284, ptr %t283
  %t285 = getelementptr %"compiler/scope:summary", ptr %l77, i32 0, i32 8
  %t286 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t286, ptr %t285
  %t287 = getelementptr %"compiler/scope:summary", ptr %l77, i32 0, i32 9
  %t288 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t288, ptr %t287
  %t289 = getelementptr %"compiler/scope:summary", ptr %l77, i32 0, i32 10
  %t290 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t290, ptr %t289
  %t291 = getelementptr %"compiler/scope:summary", ptr %l77, i32 0, i32 11
  %t292 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t292, ptr %t291
  %t293 = getelementptr %"compiler/scope:summary", ptr %l77, i32 0, i32 12
  %t294 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t294, ptr %t293
  %t295 = getelementptr %"compiler/scope:summary", ptr %l77, i32 0, i32 13
  %t296 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t296, ptr %t295
  %t297 = getelementptr %"compiler/scope:summary", ptr %l77, i32 0, i32 14
  %t298 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t298, ptr %t297
  %t299 = getelementptr %"compiler/scope:summary", ptr %l77, i32 0, i32 15
  %t300 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t300, ptr %t299
  %t301 = getelementptr %"compiler/scope:summary", ptr %l77, i32 0, i32 16
  store %"compiler/scope:fnRecs" %t268, ptr %t301
  %t303 = getelementptr %"compiler/scope:summary", ptr %l77, i32 0, i32 17
  store i1 false, ptr %t303, !tbaa !21
  %t305 = getelementptr %"compiler/scope:summary", ptr %l77, i32 0, i32 18
  store i1 false, ptr %t305, !tbaa !21
  %t307 = getelementptr %"compiler/scope:summary", ptr %l77, i32 0, i32 19
  store i1 false, ptr %t307, !tbaa !21
  %t309 = getelementptr %"compiler/scope:summary", ptr %l77, i32 0, i32 20
  store i1 false, ptr %t309, !tbaa !21
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l77, i64 624, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/scope:verAtom" @compiler_2fscope_3averAtom_2ector(ptr %v0, i64 %a0, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i1 %a6, i64 %a7) #0 {
entry:
  %rv = alloca %"compiler/scope:verAtom"
  br label %start
start:
  br label %bb0
bb0:
  %t18 = insertvalue %"compiler/scope:verAtom" undef, i64 %a0, 0
  %t20 = insertvalue %"compiler/scope:verAtom" %t18, i64 %a1, 1
  %t22 = insertvalue %"compiler/scope:verAtom" %t20, i64 %a2, 2
  %t24 = insertvalue %"compiler/scope:verAtom" %t22, i64 %a3, 3
  %t26 = insertvalue %"compiler/scope:verAtom" %t24, i64 %a4, 4
  %t28 = insertvalue %"compiler/scope:verAtom" %t26, i64 %a5, 5
  %t30 = insertvalue %"compiler/scope:verAtom" %t28, i1 %a6, 6
  %t32 = insertvalue %"compiler/scope:verAtom" %t30, i64 %a7, 7
  store %"compiler/scope:verAtom" %t32, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/scope:verAtom", ptr %rv
  ret %"compiler/scope:verAtom" %rr
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
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"compiler/scope:fnRec" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRec(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/scope:fnRec"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/scope:fnRec"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/scope:fnRec", ptr %a0
  store %"compiler/scope:fnRec" %t2, ptr %l1
  %t3 = getelementptr %"compiler/scope:fnRec", ptr %l1, i32 0, i32 1
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"compiler/scope:fnRec", ptr %l1, i32 0, i32 1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = load %"compiler/scope:fnRec", ptr %l1
  store %"compiler/scope:fnRec" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/scope:fnRec", ptr %rv
  ret %"compiler/scope:fnRec" %rr
}

define linkonce_odr %"compiler/scope:fnRecs" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRecs(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/scope:fnRecs"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/scope:fnRecs"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/scope:fnRecs", ptr %a0
  store %"compiler/scope:fnRecs" %t2, ptr %l1
  %t3 = getelementptr %"compiler/scope:fnRecs", ptr %l1, i32 0, i32 0
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"compiler/scope:fnRecs", ptr %l1, i32 0, i32 0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = getelementptr %"compiler/scope:fnRecs", ptr %l1, i32 0, i32 2
  %t10 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %l5
  br label %bb2
bb2:
  %t11 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t12 = getelementptr %"compiler/scope:fnRecs", ptr %l1, i32 0, i32 2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t11, ptr %t12
  %t13 = getelementptr %"compiler/scope:fnRecs", ptr %l1, i32 0, i32 3
  %t15 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t13)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %l7
  br label %bb3
bb3:
  %t16 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  %t17 = getelementptr %"compiler/scope:fnRecs", ptr %l1, i32 0, i32 3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t16, ptr %t17
  %t18 = load %"compiler/scope:fnRecs", ptr %l1
  store %"compiler/scope:fnRecs" %t18, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/scope:fnRecs", ptr %rv
  ret %"compiler/scope:fnRecs" %rr
}

define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3aTerm(ptr %a0, ptr %a1) #0 {
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
  %t2 = load i64, ptr %t1, !range !{i64 0, i64 7}
  store i64 %t2, ptr %l3, !tbaa !24
  %t3 = load ptr, ptr %l1, !tbaa !29
  %t4 = load i64, ptr %t3, !range !{i64 0, i64 7}
  %t5 = load i64, ptr %l3, !tbaa !24
  %t7 = icmp eq i64 %t5, %t4
  br i1 %t7, label %bb2, label %bb1
bb1:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb13
bb2:
  %t9 = load i64, ptr %l3, !tbaa !24
  switch i64 %t9, label %bb3 [ i64 1, label %bb4 i64 2, label %bb5 i64 4, label %bb6 i64 5, label %bb7 ]
bb3:
  br label %bb13
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr { i64, [2 x i64] }, ptr %t10, i32 0, i32 1
  %t12 = getelementptr { i32 }, ptr %t11, i32 0, i32 0
  %t13 = load i32, ptr %t12
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t15 = getelementptr { i64, [2 x i64] }, ptr %t14, i32 0, i32 1
  %t16 = getelementptr { i32 }, ptr %t15, i32 0, i32 0
  %t17 = load i32, ptr %t16
  %t20 = icmp eq i32 %t13, %t17
  br i1 %t20, label %bb8, label %bb1
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr { i64, [2 x i64] }, ptr %t22, i32 0, i32 1
  %t24 = getelementptr { i64 }, ptr %t23, i32 0, i32 0
  %t25 = load i64, ptr %t24
  %t26 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr { i64, [2 x i64] }, ptr %t26, i32 0, i32 1
  %t28 = getelementptr { i64 }, ptr %t27, i32 0, i32 0
  %t29 = load i64, ptr %t28
  %t32 = icmp eq i64 %t25, %t29
  br i1 %t32, label %bb9, label %bb1
bb6:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr { i64, [2 x i64] }, ptr %t34, i32 0, i32 1
  %t36 = getelementptr { i64, i64 }, ptr %t35, i32 0, i32 0
  %t37 = load i64, ptr %t36
  %t38 = load ptr, ptr %l1, !tbaa !29
  %t39 = getelementptr { i64, [2 x i64] }, ptr %t38, i32 0, i32 1
  %t40 = getelementptr { i64, i64 }, ptr %t39, i32 0, i32 0
  %t41 = load i64, ptr %t40
  %t44 = icmp eq i64 %t37, %t41
  br i1 %t44, label %bb10, label %bb1
bb7:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr { i64, [2 x i64] }, ptr %t46, i32 0, i32 1
  %t48 = getelementptr { i64 }, ptr %t47, i32 0, i32 0
  %t49 = load i64, ptr %t48
  %t50 = load ptr, ptr %l1, !tbaa !29
  %t51 = getelementptr { i64, [2 x i64] }, ptr %t50, i32 0, i32 1
  %t52 = getelementptr { i64 }, ptr %t51, i32 0, i32 0
  %t53 = load i64, ptr %t52
  %t56 = icmp eq i64 %t49, %t53
  br i1 %t56, label %bb12, label %bb1
bb8:
  br label %bb3
bb9:
  br label %bb3
bb10:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr { i64, [2 x i64] }, ptr %t58, i32 0, i32 1
  %t60 = getelementptr { i64, i64 }, ptr %t59, i32 0, i32 1
  %t61 = load i64, ptr %t60
  %t62 = load ptr, ptr %l1, !tbaa !29
  %t63 = getelementptr { i64, [2 x i64] }, ptr %t62, i32 0, i32 1
  %t64 = getelementptr { i64, i64 }, ptr %t63, i32 0, i32 1
  %t65 = load i64, ptr %t64
  %t68 = icmp eq i64 %t61, %t65
  br i1 %t68, label %bb11, label %bb1
bb11:
  br label %bb3
bb12:
  br label %bb3
bb13:
  %t70 = load i1, ptr %l2, !tbaa !21
  store i1 %t70, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@.d0 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d1 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d2 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"'s Call" }>, align 8
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
@.d3 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d4 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d5 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d6 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d7 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d8 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"this lambda" }>, align 8
@.d9 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d10 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e1 = weak hidden constant i1 false
declare void @__olang_region_release(ptr) noinline
@olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2 = weak hidden constant i1 false
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

@olang_2esole_2ecompiler_2fdiag_3aTaken_2e2 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_drop(ptr) noinline
@olang_2esole_2ecompiler_2fdiag_3aTaken_2e3 = weak hidden constant i1 false
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

declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@.d11 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d12 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"a hidden local" }>, align 8
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20compiler_2fscope_3afnRecs_3e_3e(ptr %v0, { i64, ptr } %t4)
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

@olang_2esole_2ecompiler_2fscope_3asummary_2e1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
declare void @__olang_region_settle(ptr, i1)
@olang_2esole_2ecompiler_2fscope_3asummary_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fscope_3asummary_2e3 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fscope_3asummary_2e4 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fscope_3asummary_2e5 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fscope_3asummary_2e6 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fscope_3asummary_2e7 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fscope_3asummary_2e8 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fscope_3asummary_2e9 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fscope_3asummary_2e10 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fscope_3asummary_2e12 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fscope_3asummary_2e14 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fscope_3asummary_2e15 = weak hidden constant i1 false
define linkonce_odr %"compiler/scope:fnRecs" @olang_2emir_2eHelperKind_2eZero_2ecompiler_2fscope_3afnRecs(ptr %v0) #0 {
entry:
  %l0 = alloca %"compiler/scope:fnRecs"
  %rv = alloca %"compiler/scope:fnRecs"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"compiler/scope:fnRecs" @compiler_2fscope_3afnRecs_2ector(ptr %v0)
  store %"compiler/scope:fnRecs" %t1, ptr %l0
  br label %bb1
bb1:
  %t2 = load %"compiler/scope:fnRecs", ptr %l0
  store %"compiler/scope:fnRecs" %t2, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/scope:fnRecs", ptr %rv
  ret %"compiler/scope:fnRecs" %rr
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
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3ccompiler_2fscope_3afnRec_3e(ptr %v0, { i64, ptr } %t4)
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

declare noalias ptr @__olang_scope_alloc_slow(ptr, i64, i64) noinline
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

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20compiler_2fscope_3afnRecs_3e_3e(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d"
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
  %t4 = mul i64 %t3, 112
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
  %t15 = getelementptr %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d", ptr %t14, i64 %t12
  %t17 = call %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20compiler_2fscope_3afnRecs_3e(ptr %v0, ptr %t15)
  store %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d" %t17, ptr %l6
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d", ptr %l6
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d", ptr %t22, i64 %t20
  store %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d" %t19, ptr %t23
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t24, 1
  store i64 %t25, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3ccompiler_2fscope_3afnRec_3e(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"compiler/scope:fnRec"
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
  %t15 = getelementptr %"compiler/scope:fnRec", ptr %t14, i64 %t12
  %t17 = call %"compiler/scope:fnRec" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRec(ptr %v0, ptr %t15)
  store %"compiler/scope:fnRec" %t17, ptr %l6
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load %"compiler/scope:fnRec", ptr %l6
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr %"compiler/scope:fnRec", ptr %t22, i64 %t20
  store %"compiler/scope:fnRec" %t19, ptr %t23
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t24, 1
  store i64 %t25, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

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

define linkonce_odr %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20compiler_2fscope_3afnRecs_3e(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d"
  %l3 = alloca %"compiler/scope:fnRecs"
  %rv = alloca %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d", ptr %a0
  store %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d", ptr %l1, i32 0, i32 1
  %t5 = call %"compiler/scope:fnRecs" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRecs(ptr %v0, ptr %t3)
  store %"compiler/scope:fnRecs" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"compiler/scope:fnRecs", ptr %l3
  %t7 = getelementptr %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d", ptr %l1, i32 0, i32 1
  store %"compiler/scope:fnRecs" %t6, ptr %t7
  %t8 = load %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d", ptr %l1
  store %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d", ptr %rv
  ret %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d" %rr
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

@olang_loc_b8b21d171ea0c96b_887a77d2bd40a94f = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ector(ptr %v0, i64 %a0)
declare %"compiler/scope:fnRec" @compiler_2fscope_3afnRec_2ector(ptr %v0, ptr %v1, i64 %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1, i1 %a2)
declare void @compiler_2fscope_2eaddRec(ptr %v0, ptr %v1, ptr %a0, %"compiler/scope:fnRec" %a1)
declare { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_Hb676fcc2696545b94a8186e92757a5eb(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_764ce7d0f8c0de93_859a7e0036b030b7 = external constant [0 x i8]
declare i64 @compiler_2fscope_2ewholeLocal(ptr %v0, ptr %a0)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eaddLocalRecs(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare { i32, %"compiler/scope:fnRecs" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e__Hf28901f23b5d22676a93f0159a8b63c2(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_8dca53d24f745a78_72d6bef7529d4afc = external constant [0 x i8]
declare %"compiler/scope:Val" @compiler_2fscope_2eVal_2eplain()
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
@olang_loc_76dd643541c5999_442dc791771fad = external constant [0 x i8]
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eblockTerm(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eSetAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %v0, i64 %a0, i64 %a1)
declare { i32, { i64, [2 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H568ce559fa980123a387c6ba9ed21aca(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2escopeOf(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %a0)
@olang_loc_a61f6227542ac272_aba93d64b04206c6 = external constant [0 x i8]
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuildsInto(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, %"compiler/source:Span" %a2, i64 %a3, %"compiler/source:Span" %a4)
declare i1 @compiler_2fscope_2eflHas(ptr %v0, ptr %a0, i64 %a1)
declare { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esetOf(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, { i64, [2 x i64] } %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eclaimRoot(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eliftable(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eheldCall(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_f34ecaa27a4fd2b3_7961e1dcca83cdb7 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ePush_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_4bafad9c493ca2e4_5e12ba830ed55b98 = external constant [0 x i8]
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estmts(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i32, i32 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ePop_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %a0)
@G_2ecompiler_2fscope_2eBndOther = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndBlock(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fscope_2ebndText(ptr %v0, i64 %a0)
declare ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eopTok(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { { i64, ptr }, { i64, ptr } } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewordFor(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i1 %a2, i32 %a3, i64 %a4)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eValueBeyondType(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCallValueObligations(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/diagmsg:Msg" %a2)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efnNameAt(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
@olang_loc_6a005fed5e872d31_d6493210a3120795 = external constant [0 x i8]
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_6a6b8f4378490922_97e01e7acba54546 = external constant [0 x i8]
@olang_loc_cd98096e4c7f95d2_2c67f287d290c466 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFuncValueObligations(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekeptParam(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGenYieldsBorrow(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLambdaValueObligations(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLambdaValueRelates(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_bb4a2931444a19d3_17f54cd98470b8c7 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebodyOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etwinFor(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, %"compiler/source:Span" %a3)
declare %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecallAs(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3, { i64, [2 x i64] } %a4)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hdd18cd18fee7da2cefbfd21396944747(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eLen_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %a0)
declare %"compiler/scope:rel" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eAt_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ethrough(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, [2 x i64] } %a1, { i64, ptr } %a2, ptr %a3, i1 %a4)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejudgeOut(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, { i64, [2 x i64] } %a2)
@G_2ecompiler_2fscope_2eHolds = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fscope_2eFailsBlock = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fscope_2ePlaceView = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enameSpan(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eviewing(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eliftAtCall(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/scope:rel" %a2, { i64, [2 x i64] } %a3)
@G_2ecompiler_2fscope_2eFailsUnknown = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargOfVar(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartOfOwn(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewantPromotion(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eonResult(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
declare i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeType(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fscope_2eWhyHolds = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fscope_2eObliged = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewantExact(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewantPromotionOf(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egiveBackDerived(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ederivedTerm(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egiveBackArg(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2einstanceRel(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, { i64, [2 x i64] } %a2)
@G_2ecompiler_2fscope_2eWhyResult = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eoblige(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, { i64, [2 x i64] } %a2, i1 %a3)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpawnFuncTooShort(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpawnArgHoldsShort(ptr %v0)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eresultVarOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eownIntoResult(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, { i64, [2 x i64] } %a2)
@olang_loc_42d8e1cf6a002003_df42b906e988f9f7 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eYieldOwnStorage(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReturnOwnStorage(ptr %v0)
declare %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargAt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecopyHint(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
@G_2ecompiler_2fscope_2eWhyField = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eInstanceOutlivesReferent(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eInstanceOutlivesArg(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eparamOfTerm(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
@olang_loc_3312418540e5d074_1fc7a45f5317a9d8 = external constant [0 x i8]
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoteMadeNamed(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, i64 %a3, { i64, ptr } %a4, i64 %a5)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewholeRoot(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisParam(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eviewKept(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, i1 %a3)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartKept(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReferenceNarrowed(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eScopeObligationUnmet(ptr %v0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ederivedThroughElem(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1, ptr %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFieldBindingUnknown(ptr %v0)
declare %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efirstToken(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteObligationOrigin(ptr %v0)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enote(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, %"compiler/source:Span" %a3, %"compiler/diagmsg:Msg" %a4)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elentLoopCopy(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoteLoopCopy(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoteMakeWhere(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/source:Span" %a2, ptr %a3, i64 %a4, i64 %a5, { i64, [2 x i64] } %a6)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v0, ptr %a0)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edtorBody(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esummed(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargRec(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_2ector(ptr %v0, i64 %a0)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erecAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %a0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efinds(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ederivedScope(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, i64 %a2)
declare %"compiler/typed:DerivedArg" @compiler_2ftyped_3aDerivedArg_2ector(ptr %v0, i64 %a0, i64 %a1, { i64, [2 x i64] } %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_2ePus_Hd9c60b9bc3eb0bc15b58bce924fabf2c(ptr %v0, ptr %a0, %"compiler/typed:DerivedArg" %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2eDropDerived(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %a0)
@olang_loc_8ac0dfde81ed52b7_ecd118d92b351383 = external constant [0 x i8]
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eresultTerm(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eLen_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0)
@olang_loc_d38420f770b56a25_293628bae4d10df9 = external constant [0 x i8]
@olang_loc_7d2ed71f654b640d_ba09ac545853f0c1 = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisStruct(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, [1 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efieldMark(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare %"compiler/scope:Val" @compiler_2fscope_3aVal_2ector(ptr %v0, i32 %a0, { i64, [2 x i64] } %a1)
declare %"compiler/scope:Val" @compiler_2fscope_2eVal_2eexisting({ i64, [2 x i64] } %a0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCount(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aGap_3e_2eLen_3ccompiler_2fscope_3aGap_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H4ba59ac62e00bdfe20104df12344f819(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eClear_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_H8e86aafb7cbdd2ec2cbc5deec80f6d75(ptr %v0, ptr %a0)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecomponent(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i1 %a2)
declare void @compiler_2fscope_3acompRun_2ector(ptr %out, ptr %v0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eAt_3ccompiler_2ftyped_3aPlan_3e(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2ePush_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_H6c9b3c63d1bd8a9585cb935569d90c26(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %a0, i1 %a1)
declare %"compiler/diag:Taken" @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eSince(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/scope:Gap" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aGap_3e_2eAt_3ccompiler_2fscope_3aGap_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aGap_3e_2ePush_3ccompiler_2fscope_3aGap_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/scope:Gap" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_Hda4ef06466535e66801340e999dad217(ptr %v0, ptr %a0)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_H87a29777ccf22aa2985fa9d3c61f9cd3(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_H2474e1fc3c93452d7765e4ed18f29a03(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisCtorBody(ptr %v0, ptr %a0, i64 %a1)
declare { i64, [1 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efieldMarkOf(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hd10c34cdbfb7fa3abdb8b5399b1b7292(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, { i64, [1 x i64] } %a2)
declare %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H50865c14e146750fabc3646cdf4e5c35(ptr %v0, ptr %v1, ptr %a0)
declare { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cstd_2fpair_3aPair_3cI64_2c_20I6_H7a20b16ee5db8b6f13354f5ea8a89b5b(ptr %v0, ptr %a0)
declare { i32, { i64, [1 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hc5984ad8092bcc1f8400c6a3aa96b134(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare %"compiler/scope:markRead" @compiler_2fscope_3amarkRead_2ector(ptr %v0, i64 %a0, i64 %a1, { i64, [1 x i64] } %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3amarkRead_3e_2ePush_3ccompiler_2fscope_3amarkRead_3e(ptr %v0, ptr %a0, %"compiler/scope:markRead" %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eKeys_3cI64_2c_20Bool_3e(ptr %v0, ptr %v1, ptr %a0)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cI64_2c_20Bool_3e_2eNext_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0)
declare %"compiler/scope:sumRead" @compiler_2fscope_3asumRead_2ector(ptr %v0, ptr %v1, i64 %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3asumRead_3e_2ePush_3ccompiler_2fscope_3asumRead_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/scope:sumRead" %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejudge(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eForget(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aGap_3e_2eTruncate_3ccompiler_2fscope_3aGap_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eTruncate_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_Haf2ee04ed658e65f26719862d5a58e20(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eRemove_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H8cf0101d1da75ad9e65d10673bedc6a2(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edropLifts(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisCursorLocal(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fscope_2elocalRead(ptr %v0, ptr %a0)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwExpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eregionOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholds(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eregionRead(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estoreParam(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwBlock(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estoreThrough(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eadmitsStores(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fscope_2eflRootExpr(ptr %v0, ptr %a0)
declare i1 @compiler_2fscope_2eflThroughRefExpr(ptr %v0, ptr %a0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ethroughDerivedExpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2eflThroughRef(ptr %v0, ptr %a0)
declare i64 @compiler_2fscope_2eflRoot(ptr %v0, ptr %a0)
@olang_loc_9e28678b759cd512_fe4d218246f136e6 = external constant [0 x i8]
@olang_loc_80dc90fe4960987f_e8c65fabb0c3bdbb = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
@olang_loc_e199b27d8a069b60_e8a91e9929fc614c = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emadeHere(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_bfbb893df1c35f5d_ebb7b8931b043491 = external constant [0 x i8]
declare i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enamedRec(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
@olang_loc_5ac3e862d6703e38_923f94a85f2c12c = external constant [0 x i8]
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20I64_H3f302293c6f4c07a80dfb5e30c1500bf(ptr %v0, ptr %a0, { i64, ptr } %a1, i64 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_3e_2ePus_H7d1143c374f11cf9cab67f1e79e7bcb4(ptr %v0, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fmap_3aMap_3cI64_2c_20c_H3625ae7f5f9460b5970f31ce1f03179d(ptr %v0, ptr %v1, ptr %a0, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %a1)
declare void @compiler_2ftyped_2ePlan_2eNew(ptr %out, ptr %v0, ptr %v1, ptr %a0)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@olang_loc_e7681619463fd7dc_9fce73d958638c28 = external constant [0 x i8]
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehere(ptr %v0, ptr %a0)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartCall(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i32, { i64, [2 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e_2e_H65b4b9a6d1679f5b3ddedaa5b2e336bd(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartOK(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e_2e_H38f9aff1b0310316a48dc5a28922f96e(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elandTerm(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epeekPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2)
@olang_loc_a696eb2979219c3c_c9efb41471de78f8 = external constant [0 x i8]
@olang_loc_f0e101f213a92cb6_721bd2f168b35a9a = external constant [0 x i8]
declare %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ereadPart(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, { i64, [2 x i64] } %a3)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e_2e_Hb4ab14fd1aa8deeb21095c3402461540(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_bd5c9e8774f8b04b_a0af931721a110f = external constant [0 x i8]
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erlExpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erlDrop(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erlBlock(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
@olang_loc_c073c5ed856c69f3_85faef458a71bd77 = external constant [0 x i8]
declare ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eatPart(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eSpan(ptr %v0, ptr %a0)
declare %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elastName(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eWriteThroughAtBuilds(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBorrowSplitScopes(ptr %v0)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eaddToSet(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etermOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
@olang_loc_82f140fa352aa561_4fbcae78997f2455 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eViewKeptCopy(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eViewReturned(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eViewKept(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_f7b7284e8bdb42c_7d0460b025534e78 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eLen_3ccompiler_2fscope_3afnRec_3e(ptr %v0, ptr %a0)
declare %"compiler/scope:fnRec" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eAt_3ccompiler_2fscope_3afnRec_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_926310a74149af64_7456b8629edeed00 = external constant [0 x i8]
@olang_loc_d723be5f6d33c955_f64e13843779cd91 = external constant [0 x i8]
@olang_loc_6421b9c211daea5c_85adafb275b4c978 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ector(ptr %v0)
declare %"compiler/scope:fnRecs" @compiler_2fscope_3afnRecs_2ector(ptr %v0)

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
