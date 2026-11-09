source_filename = "compiler_scope-2.quick.ll"
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
%"compiler/scope:walked" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/typed:Promote" = type { ptr, i32 }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
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
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/typed:Plan" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:BlockInfo" = type { i32, i32, %"compiler/source:Span" }
%"compiler/scope:Scoper" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { ptr, ptr }, { ptr, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, i64, i1, %"compiler/source:Span", %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/typed:Plan", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/source:Span", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, ptr, { i64, [2 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, [2 x i64] }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, [2 x i64] }, i1, %"compiler/source:Span", { i64, [2 x i64] }, i1, { i64, [2 x i64] }, i1, i1, i1, %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/scope:fnRecs", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, [2 x i64] }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, { i64, [2 x i64] }, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i64, i1, i32, i1, i1, i1, i1, i64, %"compiler/source:Span", i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i64, i1, i1, i1, i1, i64, i1, i1, i1, i1, i64, i1, i1, i1, i1, i64, %"compiler/source:Span", %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, ptr, { i64, ptr }, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"compiler/scope:Gap", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, i1, i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:fnRecs" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:Gap" = type { i64, %"compiler/source:Span", { i64, ptr } }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:verAtom" = type { i64, i64, i64, i64, i64, i64, i1, i64 }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/typed:If" = type { ptr, ptr, ptr }
%"compiler/typed:Join" = type { ptr, i1, { i64, ptr } }
%"compiler/typed:Spawn" = type { { i64, ptr }, ptr, { i64, ptr }, i32 }
%"compiler/scope:rel" = type { { i64, [2 x i64] }, { i64, [2 x i64] }, i1, %"compiler/source:Span", i64, i1, i1 }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/scope:summary" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/scope:fnRecs", i1, i1, i1, i1 }
%"compiler/typed:TaskClause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr }
%"compiler/typed:Versions" = type { ptr, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" = type { i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
define dso_local void @compiler_2fscope_2ecollectExpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i32
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i32
  %l11 = alloca ptr
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l16 = alloca i32
  %l17 = alloca ptr
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca i64
  %l22 = alloca ptr
  %l23 = alloca i32
  %l24 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l26 = alloca i64
  %l27 = alloca i64
  %l29 = alloca ptr
  %l30 = alloca ptr
  %l31 = alloca ptr
  %l32 = alloca { i64, ptr }
  %l33 = alloca i64
  %l34 = alloca i64
  %l36 = alloca ptr
  %l37 = alloca { i64, ptr }
  %l38 = alloca i64
  %l39 = alloca i64
  %l41 = alloca { i64, ptr }
  %l42 = alloca i64
  %l43 = alloca i64
  %l45 = alloca ptr
  %l46 = alloca { i64, ptr }
  %l47 = alloca i64
  %l48 = alloca i64
  %l49 = alloca ptr
  %l50 = alloca { i64, ptr }
  %l51 = alloca i64
  %l52 = alloca i64
  %l54 = alloca ptr
  %l55 = alloca i32
  %l56 = alloca i32
  %l57 = alloca { i64, ptr }
  %l58 = alloca { i64, ptr }
  %l59 = alloca i64
  %l60 = alloca i64
  %l62 = alloca i32
  %l63 = alloca ptr
  %l64 = alloca ptr
  %l65 = alloca { i64, ptr }
  %l66 = alloca i64
  %l67 = alloca i64
  %l68 = alloca ptr
  %l69 = alloca ptr
  %l70 = alloca ptr
  %l73 = alloca ptr
  %l74 = alloca i1
  %l82 = alloca ptr
  %l83 = alloca i1
  %l91 = alloca i1
  %l93 = alloca i1
  %l95 = alloca i64
  %l98 = alloca ptr
  %l100 = alloca i64
  %l107 = alloca ptr
  %l108 = alloca i1
  %l116 = alloca ptr
  %l117 = alloca i1
  %l126 = alloca ptr
  %l127 = alloca i1
  %l136 = alloca ptr
  %l137 = alloca i1
  %l146 = alloca ptr
  %l147 = alloca i1
  %l177 = alloca { i64, ptr }
  %l185 = alloca ptr
  %l186 = alloca i1
  %l206 = alloca { i64, ptr }
  %l217 = alloca ptr
  %l218 = alloca i1
  %l230 = alloca ptr
  %l231 = alloca i1
  %l240 = alloca i1
  %l245 = alloca ptr
  %l246 = alloca { i64, ptr }
  %l248 = alloca i32
  %l256 = alloca { i64, ptr }
  %l264 = alloca ptr
  %l265 = alloca i1
  %l272 = alloca i1
  %l274 = alloca i1
  %l277 = alloca i64
  %l280 = alloca ptr
  %l283 = alloca i64
  %l298 = alloca ptr
  %l299 = alloca i1
  %l315 = alloca ptr
  %l316 = alloca i1
  %l329 = alloca { i64, ptr }
  %l340 = alloca ptr
  %l341 = alloca i1
  %l354 = alloca { i64, ptr }
  %l370 = alloca { i64, ptr }
  %l381 = alloca ptr
  %l382 = alloca i1
  %l398 = alloca { i64, ptr }
  %l412 = alloca { i64, ptr }
  %l422 = alloca ptr
  %l423 = alloca i1
  %l428 = alloca ptr
  %l429 = alloca i1
  %l438 = alloca ptr
  %l439 = alloca i1
  %l465 = alloca { i64, ptr }
  %l474 = alloca ptr
  %l475 = alloca i1
  %l489 = alloca ptr
  %l490 = alloca i1
  %l503 = alloca { i64, ptr }
  %l506 = alloca ptr
  %l507 = alloca i1
  %l517 = alloca ptr
  %l518 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t5 = load ptr, ptr %l0, !tbaa !29
  store ptr %t5, ptr %l73, !tbaa !29
  store i1 false, ptr %l74, !tbaa !21
  %t6 = load ptr, ptr %l73, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l73, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 18}
  %t12 = icmp eq i64 %t10, 2
  store i1 %t12, ptr %l74, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l74, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr { i64, [5 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t16, i32 0, i32 2
  %t18 = load ptr, ptr %t17
  store ptr %t18, ptr %l2, !tbaa !29
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t20 = load ptr, ptr %l2, !tbaa !29
  %t22 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectPlace(ptr %v0, ptr %v1, ptr %t20, ptr %t22)
  br label %bb9
bb9:
  br label %bb289
bb10:
  %t25 = load ptr, ptr %l0, !tbaa !29
  store ptr %t25, ptr %l82, !tbaa !29
  store i1 false, ptr %l83, !tbaa !21
  %t26 = load ptr, ptr %l82, !tbaa !29
  %t27 = icmp ne ptr %t26, null
  br i1 %t27, label %bb11, label %bb12
bb11:
  %t29 = load ptr, ptr %l82, !tbaa !29
  %t30 = load i64, ptr %t29, !range !{i64 0, i64 18}
  %t32 = icmp eq i64 %t30, 3
  store i1 %t32, ptr %l83, !tbaa !21
  br label %bb12
bb12:
  %t33 = load i1, ptr %l83, !tbaa !21
  br i1 %t33, label %bb13, label %bb14
bb13:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr { i64, [5 x i64] }, ptr %t34, i32 0, i32 1
  %t37 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t36, i32 0, i32 1
  %t38 = load i32, ptr %t37
  store i32 %t38, ptr %l3, !tbaa !23
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr { i64, [5 x i64] }, ptr %t40, i32 0, i32 1
  %t43 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t42, i32 0, i32 2
  %t44 = load ptr, ptr %t43
  store ptr %t44, ptr %l4, !tbaa !29
  br label %bb15
bb14:
  br label %bb28
bb15:
  %t46 = load ptr, ptr %l4, !tbaa !29
  %t48 = call i1 @compiler_2fscope_2eflThroughRef(ptr %v0, ptr %t46)
  store i1 %t48, ptr %l91
  br label %bb16
bb16:
  %t49 = load i1, ptr %l91, !tbaa !21
  %t50 = xor i1 %t49, true
  br i1 %t50, label %bb17, label %bb18
bb17:
  %t52 = load ptr, ptr %l4, !tbaa !29
  %t54 = call i64 @compiler_2fscope_2eflRoot(ptr %v0, ptr %t52)
  store i64 %t54, ptr %l95
  br label %bb19
bb18:
  store i1 false, ptr %l93, !tbaa !21
  br label %bb20
bb19:
  %t55 = load i64, ptr %l95, !tbaa !24
  %t56 = icmp sge i64 %t55, 0
  store i1 %t56, ptr %l93, !tbaa !21
  br label %bb20
bb20:
  %t58 = load i1, ptr %l93, !tbaa !21
  br i1 %t58, label %bb21, label %bb22
bb21:
  %t59 = load ptr, ptr %l1, !tbaa !29
  %t61 = getelementptr %"compiler/scope:walked", ptr %t59, i32 0, i32 3
  store ptr %t61, ptr %l98, !tbaa !29
  %t62 = load ptr, ptr %l4, !tbaa !29
  %t64 = call i64 @compiler_2fscope_2eflRoot(ptr %v0, ptr %t62)
  store i64 %t64, ptr %l100
  br label %bb23
bb22:
  br label %bb26
bb23:
  %t65 = load ptr, ptr %l98, !tbaa !29
  %t66 = load i64, ptr %l100, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t65, i64 %t66)
  br label %bb24
bb24:
  %t67 = load ptr, ptr %l1, !tbaa !29
  %t69 = getelementptr %"compiler/scope:walked", ptr %t67, i32 0, i32 4
  %t70 = load i32, ptr %l3, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t69, i32 %t70)
  br label %bb25
bb25:
  br label %bb26
bb26:
  %t73 = load ptr, ptr %l4, !tbaa !29
  %t75 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectPlace(ptr %v0, ptr %v1, ptr %t73, ptr %t75)
  br label %bb27
bb27:
  br label %bb289
bb28:
  %t78 = load ptr, ptr %l0, !tbaa !29
  store ptr %t78, ptr %l107, !tbaa !29
  store i1 false, ptr %l108, !tbaa !21
  %t79 = load ptr, ptr %l107, !tbaa !29
  %t80 = icmp ne ptr %t79, null
  br i1 %t80, label %bb29, label %bb30
bb29:
  %t82 = load ptr, ptr %l107, !tbaa !29
  %t83 = load i64, ptr %t82, !range !{i64 0, i64 18}
  %t85 = icmp eq i64 %t83, 4
  store i1 %t85, ptr %l108, !tbaa !21
  br label %bb30
bb30:
  %t86 = load i1, ptr %l108, !tbaa !21
  br i1 %t86, label %bb31, label %bb32
bb31:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr { i64, [5 x i64] }, ptr %t87, i32 0, i32 1
  %t90 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t89, i32 0, i32 2
  %t91 = load ptr, ptr %t90
  store ptr %t91, ptr %l5, !tbaa !29
  br label %bb33
bb32:
  br label %bb35
bb33:
  %t93 = load ptr, ptr %l5, !tbaa !29
  %t95 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectPlace(ptr %v0, ptr %v1, ptr %t93, ptr %t95)
  br label %bb34
bb34:
  br label %bb289
bb35:
  %t98 = load ptr, ptr %l0, !tbaa !29
  store ptr %t98, ptr %l116, !tbaa !29
  store i1 false, ptr %l117, !tbaa !21
  %t99 = load ptr, ptr %l116, !tbaa !29
  %t100 = icmp ne ptr %t99, null
  br i1 %t100, label %bb36, label %bb37
bb36:
  %t102 = load ptr, ptr %l116, !tbaa !29
  %t103 = load i64, ptr %t102, !range !{i64 0, i64 18}
  %t105 = icmp eq i64 %t103, 5
  store i1 %t105, ptr %l117, !tbaa !21
  br label %bb37
bb37:
  %t106 = load i1, ptr %l117, !tbaa !21
  br i1 %t106, label %bb38, label %bb39
bb38:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr { i64, [5 x i64] }, ptr %t107, i32 0, i32 1
  %t110 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t109, i32 0, i32 2
  %t111 = load ptr, ptr %t110
  store ptr %t111, ptr %l6, !tbaa !29
  br label %bb40
bb39:
  br label %bb42
bb40:
  %t113 = load ptr, ptr %l6, !tbaa !29
  %t115 = getelementptr %"compiler/typed:Promote", ptr %t113, i32 0, i32 0
  %t116 = load ptr, ptr %t115, !tbaa !29
  %t118 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectExpr(ptr %v0, ptr %v1, ptr %t116, ptr %t118)
  br label %bb41
bb41:
  br label %bb289
bb42:
  %t121 = load ptr, ptr %l0, !tbaa !29
  store ptr %t121, ptr %l126, !tbaa !29
  store i1 false, ptr %l127, !tbaa !21
  %t122 = load ptr, ptr %l126, !tbaa !29
  %t123 = icmp ne ptr %t122, null
  br i1 %t123, label %bb43, label %bb44
bb43:
  %t125 = load ptr, ptr %l126, !tbaa !29
  %t126 = load i64, ptr %t125, !range !{i64 0, i64 18}
  %t128 = icmp eq i64 %t126, 6
  store i1 %t128, ptr %l127, !tbaa !21
  br label %bb44
bb44:
  %t129 = load i1, ptr %l127, !tbaa !21
  br i1 %t129, label %bb45, label %bb46
bb45:
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t132 = getelementptr { i64, [5 x i64] }, ptr %t130, i32 0, i32 1
  %t133 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t132, i32 0, i32 1
  %t134 = load i32, ptr %t133
  store i32 %t134, ptr %l7, !tbaa !23
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t138 = getelementptr { i64, [5 x i64] }, ptr %t136, i32 0, i32 1
  %t139 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t138, i32 0, i32 2
  %t140 = load ptr, ptr %t139
  store ptr %t140, ptr %l8, !tbaa !29
  br label %bb47
bb46:
  br label %bb83
bb47:
  %t142 = load ptr, ptr %l8, !tbaa !29
  %t144 = getelementptr %"compiler/typed:Call", ptr %t142, i32 0, i32 0
  %t145 = load ptr, ptr %t144, !tbaa !29
  store ptr %t145, ptr %l9, !tbaa !29
  %t147 = load ptr, ptr %l9, !tbaa !29
  store ptr %t147, ptr %l136, !tbaa !29
  store i1 false, ptr %l137, !tbaa !21
  %t148 = load ptr, ptr %l136, !tbaa !29
  %t149 = icmp ne ptr %t148, null
  br i1 %t149, label %bb48, label %bb49
bb48:
  %t151 = load ptr, ptr %l136, !tbaa !29
  %t152 = load i64, ptr %t151, !range !{i64 0, i64 5}
  %t154 = icmp eq i64 %t152, 0
  store i1 %t154, ptr %l137, !tbaa !21
  br label %bb49
bb49:
  %t155 = load i1, ptr %l137, !tbaa !21
  br i1 %t155, label %bb50, label %bb51
bb50:
  %t156 = load ptr, ptr %l9, !tbaa !29
  %t158 = getelementptr { i64, [3 x i64] }, ptr %t156, i32 0, i32 1
  %t159 = getelementptr { i32 }, ptr %t158, i32 0, i32 0
  %t160 = load i32, ptr %t159
  store i32 %t160, ptr %l10, !tbaa !23
  br label %bb52
bb51:
  br label %bb54
bb52:
  %t162 = load ptr, ptr %l1, !tbaa !29
  %t164 = getelementptr %"compiler/scope:walked", ptr %t162, i32 0, i32 0
  %t165 = load i32, ptr %l10, !tbaa !23
  %t167 = sext i32 %t165 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t164, i64 %t167)
  br label %bb53
bb53:
  br label %bb66
bb54:
  %t170 = load ptr, ptr %l9, !tbaa !29
  store ptr %t170, ptr %l146, !tbaa !29
  store i1 false, ptr %l147, !tbaa !21
  %t171 = load ptr, ptr %l146, !tbaa !29
  %t172 = icmp ne ptr %t171, null
  br i1 %t172, label %bb55, label %bb56
bb55:
  %t174 = load ptr, ptr %l146, !tbaa !29
  %t175 = load i64, ptr %t174, !range !{i64 0, i64 5}
  %t177 = icmp eq i64 %t175, 2
  store i1 %t177, ptr %l147, !tbaa !21
  br label %bb56
bb56:
  %t178 = load i1, ptr %l147, !tbaa !21
  br i1 %t178, label %bb57, label %bb58
bb57:
  %t179 = load ptr, ptr %l9, !tbaa !29
  %t181 = getelementptr { i64, [3 x i64] }, ptr %t179, i32 0, i32 1
  %t182 = getelementptr { ptr }, ptr %t181, i32 0, i32 0
  %t183 = load ptr, ptr %t182
  store ptr %t183, ptr %l11, !tbaa !29
  br label %bb59
bb58:
  br label %bb61
bb59:
  %t185 = load ptr, ptr %l11, !tbaa !29
  %t187 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectExpr(ptr %v0, ptr %v1, ptr %t185, ptr %t187)
  br label %bb60
bb60:
  br label %bb66
bb61:
  br i1 true, label %bb62, label %bb63
bb62:
  br label %bb64
bb63:
  br label %bb65
bb64:
  br label %bb66
bb65:
  call void @__olang_check_failed(ptr @olang_loc_883886568ed4caca_31f6a1dcc1a6d9de)
  unreachable
bb66:
  %t190 = load ptr, ptr %l8, !tbaa !29
  %t192 = getelementptr %"compiler/typed:Call", ptr %t190, i32 0, i32 4
  %t193 = load i1, ptr %t192, !tbaa !21
  br i1 %t193, label %bb67, label %bb68
bb67:
  %t195 = load ptr, ptr %l1, !tbaa !29
  %t197 = getelementptr %"compiler/scope:walked", ptr %t195, i32 0, i32 8
  %t198 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v1, ptr %v0, ptr %t197, ptr %t198)
  br label %bb69
bb68:
  br label %bb71
bb69:
  %t201 = load ptr, ptr %l1, !tbaa !29
  %t203 = getelementptr %"compiler/scope:walked", ptr %t201, i32 0, i32 9
  %t204 = load ptr, ptr %l1, !tbaa !29
  %t206 = getelementptr %"compiler/scope:walked", ptr %t204, i32 0, i32 10
  %t207 = load i32, ptr %t206, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ePush_3ccompiler_2ftyped_3aBlockId_3e(ptr %v1, ptr %t203, i32 %t207)
  br label %bb70
bb70:
  br label %bb71
bb71:
  %t210 = load ptr, ptr %l1, !tbaa !29
  %t212 = getelementptr %"compiler/scope:walked", ptr %t210, i32 0, i32 11
  %t213 = load i1, ptr %t212, !tbaa !21
  br i1 %t213, label %bb72, label %bb73
bb72:
  %t215 = load ptr, ptr %l1, !tbaa !29
  %t217 = getelementptr %"compiler/scope:walked", ptr %t215, i32 0, i32 12
  %t218 = load i32, ptr %l7, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t217, i32 %t218)
  br label %bb74
bb73:
  br label %bb75
bb74:
  br label %bb75
bb75:
  %t221 = load ptr, ptr %l8, !tbaa !29
  %t223 = getelementptr %"compiler/typed:Call", ptr %t221, i32 0, i32 1
  %t224 = load { i64, ptr }, ptr %t223, !tbaa !27
  store { i64, ptr } %t224, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t226 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t228 = extractvalue { i64, ptr } %t226, 0
  store i64 %t228, ptr %l14, !tbaa !24
  br label %bb76
bb76:
  %t230 = load i64, ptr %l13, !tbaa !24
  %t231 = load i64, ptr %l14, !tbaa !24
  %t234 = icmp slt i64 %t230, %t231
  %t236 = xor i1 %t234, true
  br i1 %t236, label %bb77, label %bb78
bb77:
  br label %bb82
bb78:
  br label %bb79
bb79:
  %t238 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t238, ptr %l177, !tbaa !27
  %t239 = load i64, ptr %l13, !tbaa !24
  %t241 = getelementptr { i64, ptr }, ptr %l177, i32 0, i32 1
  %t242 = load ptr, ptr %t241, !tbaa !27
  %t243 = getelementptr ptr, ptr %t242, i64 %t239
  %t244 = load ptr, ptr %t243, !tbaa !39
  %t248 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectExpr(ptr %v0, ptr %v1, ptr %t244, ptr %t248)
  br label %bb80
bb80:
  br label %bb81
bb81:
  %t251 = load i64, ptr %l13, !tbaa !24
  %t253 = add i64 %t251, 1
  store i64 %t253, ptr %l13, !tbaa !24
  br label %bb76
bb82:
  br label %bb289
bb83:
  %t255 = load ptr, ptr %l0, !tbaa !29
  store ptr %t255, ptr %l185, !tbaa !29
  store i1 false, ptr %l186, !tbaa !21
  %t256 = load ptr, ptr %l185, !tbaa !29
  %t257 = icmp ne ptr %t256, null
  br i1 %t257, label %bb84, label %bb85
bb84:
  %t259 = load ptr, ptr %l185, !tbaa !29
  %t260 = load i64, ptr %t259, !range !{i64 0, i64 18}
  %t262 = icmp eq i64 %t260, 7
  store i1 %t262, ptr %l186, !tbaa !21
  br label %bb85
bb85:
  %t263 = load i1, ptr %l186, !tbaa !21
  br i1 %t263, label %bb86, label %bb87
bb86:
  %t264 = load ptr, ptr %l0, !tbaa !29
  %t266 = getelementptr { i64, [5 x i64] }, ptr %t264, i32 0, i32 1
  %t267 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t266, i32 0, i32 1
  %t268 = load i32, ptr %t267
  store i32 %t268, ptr %l16, !tbaa !23
  %t270 = load ptr, ptr %l0, !tbaa !29
  %t272 = getelementptr { i64, [5 x i64] }, ptr %t270, i32 0, i32 1
  %t273 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t272, i32 0, i32 2
  %t274 = load ptr, ptr %t273
  store ptr %t274, ptr %l17, !tbaa !29
  br label %bb88
bb87:
  br label %bb101
bb88:
  %t276 = load ptr, ptr %l1, !tbaa !29
  %t278 = getelementptr %"compiler/scope:walked", ptr %t276, i32 0, i32 11
  %t279 = load i1, ptr %t278, !tbaa !21
  br i1 %t279, label %bb89, label %bb90
bb89:
  %t281 = load ptr, ptr %l1, !tbaa !29
  %t283 = getelementptr %"compiler/scope:walked", ptr %t281, i32 0, i32 12
  %t284 = load i32, ptr %l16, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t283, i32 %t284)
  br label %bb91
bb90:
  br label %bb92
bb91:
  br label %bb92
bb92:
  %t287 = load ptr, ptr %l17, !tbaa !29
  %t289 = getelementptr %"compiler/typed:Make", ptr %t287, i32 0, i32 2
  %t290 = load { i64, ptr }, ptr %t289, !tbaa !27
  store { i64, ptr } %t290, ptr %l18, !tbaa !27
  store i64 0, ptr %l19, !tbaa !24
  %t292 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t294 = extractvalue { i64, ptr } %t292, 0
  store i64 %t294, ptr %l20, !tbaa !24
  br label %bb93
bb93:
  %t296 = load i64, ptr %l19, !tbaa !24
  %t297 = load i64, ptr %l20, !tbaa !24
  %t300 = icmp slt i64 %t296, %t297
  %t302 = xor i1 %t300, true
  br i1 %t302, label %bb94, label %bb95
bb94:
  br label %bb99
bb95:
  br label %bb96
bb96:
  %t304 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t304, ptr %l206, !tbaa !27
  %t305 = load i64, ptr %l19, !tbaa !24
  %t307 = getelementptr { i64, ptr }, ptr %l206, i32 0, i32 1
  %t308 = load ptr, ptr %t307, !tbaa !27
  %t309 = getelementptr ptr, ptr %t308, i64 %t305
  %t310 = load ptr, ptr %t309, !tbaa !39
  %t314 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectExpr(ptr %v0, ptr %v1, ptr %t310, ptr %t314)
  br label %bb97
bb97:
  br label %bb98
bb98:
  %t317 = load i64, ptr %l19, !tbaa !24
  %t319 = add i64 %t317, 1
  store i64 %t319, ptr %l19, !tbaa !24
  br label %bb93
bb99:
  %t321 = load ptr, ptr %l17, !tbaa !29
  %t323 = getelementptr %"compiler/typed:Make", ptr %t321, i32 0, i32 3
  %t324 = load ptr, ptr %t323, !tbaa !29
  %t325 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectExpr(ptr %v0, ptr %v1, ptr %t324, ptr %t325)
  br label %bb100
bb100:
  br label %bb289
bb101:
  %t328 = load ptr, ptr %l0, !tbaa !29
  store ptr %t328, ptr %l217, !tbaa !29
  store i1 false, ptr %l218, !tbaa !21
  %t329 = load ptr, ptr %l217, !tbaa !29
  %t330 = icmp ne ptr %t329, null
  br i1 %t330, label %bb102, label %bb103
bb102:
  %t332 = load ptr, ptr %l217, !tbaa !29
  %t333 = load i64, ptr %t332, !range !{i64 0, i64 18}
  %t335 = icmp eq i64 %t333, 8
  store i1 %t335, ptr %l218, !tbaa !21
  br label %bb103
bb103:
  %t336 = load i1, ptr %l218, !tbaa !21
  br i1 %t336, label %bb104, label %bb105
bb104:
  %t337 = load ptr, ptr %l0, !tbaa !29
  %t339 = getelementptr { i64, [5 x i64] }, ptr %t337, i32 0, i32 1
  %t340 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t339, i32 0, i32 2
  %t341 = load ptr, ptr %t340
  store ptr %t341, ptr %l22, !tbaa !29
  br label %bb106
bb105:
  br label %bb109
bb106:
  %t343 = load ptr, ptr %l22, !tbaa !29
  %t345 = getelementptr %"compiler/typed:Collect", ptr %t343, i32 0, i32 0
  %t346 = load ptr, ptr %t345, !tbaa !29
  %t347 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectExpr(ptr %v0, ptr %v1, ptr %t346, ptr %t347)
  br label %bb107
bb107:
  %t350 = load ptr, ptr %l22, !tbaa !29
  %t352 = getelementptr %"compiler/typed:Collect", ptr %t350, i32 0, i32 1
  %t353 = load ptr, ptr %t352, !tbaa !29
  %t355 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectBlock(ptr %v0, ptr %v1, ptr %t353, ptr %t355)
  br label %bb108
bb108:
  br label %bb289
bb109:
  %t358 = load ptr, ptr %l0, !tbaa !29
  store ptr %t358, ptr %l230, !tbaa !29
  store i1 false, ptr %l231, !tbaa !21
  %t359 = load ptr, ptr %l230, !tbaa !29
  %t360 = icmp ne ptr %t359, null
  br i1 %t360, label %bb110, label %bb111
bb110:
  %t362 = load ptr, ptr %l230, !tbaa !29
  %t363 = load i64, ptr %t362, !range !{i64 0, i64 18}
  %t365 = icmp eq i64 %t363, 9
  store i1 %t365, ptr %l231, !tbaa !21
  br label %bb111
bb111:
  %t366 = load i1, ptr %l231, !tbaa !21
  br i1 %t366, label %bb112, label %bb113
bb112:
  %t367 = load ptr, ptr %l0, !tbaa !29
  %t369 = getelementptr { i64, [5 x i64] }, ptr %t367, i32 0, i32 1
  %t370 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t369, i32 0, i32 2
  %t371 = load i32, ptr %t370, !range !{i32 0, i32 52}
  store i32 %t371, ptr %l23
  %t373 = load ptr, ptr %l0, !tbaa !29
  %t375 = getelementptr { i64, [5 x i64] }, ptr %t373, i32 0, i32 1
  %t376 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t375, i32 0, i32 4
  %t377 = load { i64, ptr }, ptr %t376
  store { i64, ptr } %t377, ptr %l24, !tbaa !27
  br label %bb114
bb113:
  br label %bb130
bb114:
  %t379 = load i32, ptr %l23, !range !{i32 0, i32 52}
  %t381 = trunc i64 30 to i32
  %t382 = icmp eq i32 %t379, %t381
  br i1 %t382, label %bb115, label %bb116
bb115:
  %t384 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t386 = extractvalue { i64, ptr } %t384, 0
  %t388 = icmp eq i64 %t386, 1
  store i1 %t388, ptr %l240, !tbaa !21
  br label %bb117
bb116:
  store i1 false, ptr %l240, !tbaa !21
  br label %bb117
bb117:
  %t390 = load i1, ptr %l240, !tbaa !21
  br i1 %t390, label %bb118, label %bb119
bb118:
  %t391 = load ptr, ptr %l1, !tbaa !29
  %t393 = getelementptr %"compiler/scope:walked", ptr %t391, i32 0, i32 1
  store ptr %t393, ptr %l245, !tbaa !29
  %t394 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t394, ptr %l246, !tbaa !27
  %t395 = getelementptr { i64, ptr }, ptr %l246, i32 0, i32 1
  %t396 = load ptr, ptr %t395, !tbaa !27
  %t397 = getelementptr ptr, ptr %t396, i64 0
  %t398 = load ptr, ptr %t397, !tbaa !39
  %t400 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v0, ptr %t398)
  store i32 %t400, ptr %l248
  br label %bb120
bb119:
  br label %bb122
bb120:
  %t401 = load ptr, ptr %l245, !tbaa !29
  %t402 = load i32, ptr %l248, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t401, i32 %t402)
  br label %bb121
bb121:
  br label %bb122
bb122:
  %t403 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t403, ptr %l25, !tbaa !27
  store i64 0, ptr %l26, !tbaa !24
  %t405 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t407 = extractvalue { i64, ptr } %t405, 0
  store i64 %t407, ptr %l27, !tbaa !24
  br label %bb123
bb123:
  %t409 = load i64, ptr %l26, !tbaa !24
  %t410 = load i64, ptr %l27, !tbaa !24
  %t413 = icmp slt i64 %t409, %t410
  %t415 = xor i1 %t413, true
  br i1 %t415, label %bb124, label %bb125
bb124:
  br label %bb129
bb125:
  br label %bb126
bb126:
  %t417 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t417, ptr %l256, !tbaa !27
  %t418 = load i64, ptr %l26, !tbaa !24
  %t420 = getelementptr { i64, ptr }, ptr %l256, i32 0, i32 1
  %t421 = load ptr, ptr %t420, !tbaa !27
  %t422 = getelementptr ptr, ptr %t421, i64 %t418
  %t423 = load ptr, ptr %t422, !tbaa !39
  %t427 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectExpr(ptr %v0, ptr %v1, ptr %t423, ptr %t427)
  br label %bb127
bb127:
  br label %bb128
bb128:
  %t430 = load i64, ptr %l26, !tbaa !24
  %t432 = add i64 %t430, 1
  store i64 %t432, ptr %l26, !tbaa !24
  br label %bb123
bb129:
  br label %bb289
bb130:
  %t434 = load ptr, ptr %l0, !tbaa !29
  store ptr %t434, ptr %l264, !tbaa !29
  store i1 false, ptr %l265, !tbaa !21
  %t435 = load ptr, ptr %l264, !tbaa !29
  %t436 = icmp ne ptr %t435, null
  br i1 %t436, label %bb131, label %bb132
bb131:
  %t438 = load ptr, ptr %l264, !tbaa !29
  %t439 = load i64, ptr %t438, !range !{i64 0, i64 18}
  %t441 = icmp eq i64 %t439, 10
  store i1 %t441, ptr %l265, !tbaa !21
  br label %bb132
bb132:
  %t442 = load i1, ptr %l265, !tbaa !21
  br i1 %t442, label %bb133, label %bb134
bb133:
  %t443 = load ptr, ptr %l0, !tbaa !29
  %t445 = getelementptr { i64, [5 x i64] }, ptr %t443, i32 0, i32 1
  %t446 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t445, i32 0, i32 2
  %t447 = load ptr, ptr %t446
  store ptr %t447, ptr %l29, !tbaa !29
  br label %bb135
bb134:
  br label %bb150
bb135:
  %t449 = load ptr, ptr %l29, !tbaa !29
  %t451 = getelementptr %"compiler/typed:Slice", ptr %t449, i32 0, i32 0
  %t452 = load ptr, ptr %t451, !tbaa !29
  %t454 = call i1 @compiler_2fscope_2eflThroughRef(ptr %v0, ptr %t452)
  store i1 %t454, ptr %l272
  br label %bb136
bb136:
  %t455 = load i1, ptr %l272, !tbaa !21
  %t456 = xor i1 %t455, true
  br i1 %t456, label %bb137, label %bb138
bb137:
  %t458 = load ptr, ptr %l29, !tbaa !29
  %t460 = getelementptr %"compiler/typed:Slice", ptr %t458, i32 0, i32 0
  %t461 = load ptr, ptr %t460, !tbaa !29
  %t463 = call i64 @compiler_2fscope_2eflRoot(ptr %v0, ptr %t461)
  store i64 %t463, ptr %l277
  br label %bb139
bb138:
  store i1 false, ptr %l274, !tbaa !21
  br label %bb140
bb139:
  %t464 = load i64, ptr %l277, !tbaa !24
  %t465 = icmp sge i64 %t464, 0
  store i1 %t465, ptr %l274, !tbaa !21
  br label %bb140
bb140:
  %t467 = load i1, ptr %l274, !tbaa !21
  br i1 %t467, label %bb141, label %bb142
bb141:
  %t468 = load ptr, ptr %l1, !tbaa !29
  %t470 = getelementptr %"compiler/scope:walked", ptr %t468, i32 0, i32 3
  store ptr %t470, ptr %l280, !tbaa !29
  %t471 = load ptr, ptr %l29, !tbaa !29
  %t473 = getelementptr %"compiler/typed:Slice", ptr %t471, i32 0, i32 0
  %t474 = load ptr, ptr %t473, !tbaa !29
  %t476 = call i64 @compiler_2fscope_2eflRoot(ptr %v0, ptr %t474)
  store i64 %t476, ptr %l283
  br label %bb143
bb142:
  br label %bb146
bb143:
  %t477 = load ptr, ptr %l280, !tbaa !29
  %t478 = load i64, ptr %l283, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t477, i64 %t478)
  br label %bb144
bb144:
  %t479 = load ptr, ptr %l1, !tbaa !29
  %t481 = getelementptr %"compiler/scope:walked", ptr %t479, i32 0, i32 4
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t481, i32 0)
  br label %bb145
bb145:
  br label %bb146
bb146:
  %t483 = load ptr, ptr %l29, !tbaa !29
  %t485 = getelementptr %"compiler/typed:Slice", ptr %t483, i32 0, i32 0
  %t486 = load ptr, ptr %t485, !tbaa !29
  %t488 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectPlace(ptr %v0, ptr %v1, ptr %t486, ptr %t488)
  br label %bb147
bb147:
  %t491 = load ptr, ptr %l29, !tbaa !29
  %t493 = getelementptr %"compiler/typed:Slice", ptr %t491, i32 0, i32 1
  %t494 = load ptr, ptr %t493, !tbaa !29
  %t496 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectExpr(ptr %v0, ptr %v1, ptr %t494, ptr %t496)
  br label %bb148
bb148:
  %t499 = load ptr, ptr %l29, !tbaa !29
  %t501 = getelementptr %"compiler/typed:Slice", ptr %t499, i32 0, i32 2
  %t502 = load ptr, ptr %t501, !tbaa !29
  %t504 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectExpr(ptr %v0, ptr %v1, ptr %t502, ptr %t504)
  br label %bb149
bb149:
  br label %bb289
bb150:
  %t507 = load ptr, ptr %l0, !tbaa !29
  store ptr %t507, ptr %l298, !tbaa !29
  store i1 false, ptr %l299, !tbaa !21
  %t508 = load ptr, ptr %l298, !tbaa !29
  %t509 = icmp ne ptr %t508, null
  br i1 %t509, label %bb151, label %bb152
bb151:
  %t511 = load ptr, ptr %l298, !tbaa !29
  %t512 = load i64, ptr %t511, !range !{i64 0, i64 18}
  %t514 = icmp eq i64 %t512, 11
  store i1 %t514, ptr %l299, !tbaa !21
  br label %bb152
bb152:
  %t515 = load i1, ptr %l299, !tbaa !21
  br i1 %t515, label %bb153, label %bb154
bb153:
  %t516 = load ptr, ptr %l0, !tbaa !29
  %t518 = getelementptr { i64, [5 x i64] }, ptr %t516, i32 0, i32 1
  %t519 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t518, i32 0, i32 2
  %t520 = load ptr, ptr %t519
  store ptr %t520, ptr %l30, !tbaa !29
  br label %bb155
bb154:
  br label %bb159
bb155:
  %t522 = load ptr, ptr %l30, !tbaa !29
  %t524 = getelementptr %"compiler/typed:Cond", ptr %t522, i32 0, i32 0
  %t525 = load ptr, ptr %t524, !tbaa !29
  %t527 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectExpr(ptr %v0, ptr %v1, ptr %t525, ptr %t527)
  br label %bb156
bb156:
  %t530 = load ptr, ptr %l30, !tbaa !29
  %t532 = getelementptr %"compiler/typed:Cond", ptr %t530, i32 0, i32 1
  %t533 = load ptr, ptr %t532, !tbaa !29
  %t534 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectExpr(ptr %v0, ptr %v1, ptr %t533, ptr %t534)
  br label %bb157
bb157:
  %t537 = load ptr, ptr %l30, !tbaa !29
  %t539 = getelementptr %"compiler/typed:Cond", ptr %t537, i32 0, i32 2
  %t540 = load ptr, ptr %t539, !tbaa !29
  %t542 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectExpr(ptr %v0, ptr %v1, ptr %t540, ptr %t542)
  br label %bb158
bb158:
  br label %bb289
bb159:
  %t545 = load ptr, ptr %l0, !tbaa !29
  store ptr %t545, ptr %l315, !tbaa !29
  store i1 false, ptr %l316, !tbaa !21
  %t546 = load ptr, ptr %l315, !tbaa !29
  %t547 = icmp ne ptr %t546, null
  br i1 %t547, label %bb160, label %bb161
bb160:
  %t549 = load ptr, ptr %l315, !tbaa !29
  %t550 = load i64, ptr %t549, !range !{i64 0, i64 18}
  %t552 = icmp eq i64 %t550, 12
  store i1 %t552, ptr %l316, !tbaa !21
  br label %bb161
bb161:
  %t553 = load i1, ptr %l316, !tbaa !21
  br i1 %t553, label %bb162, label %bb163
bb162:
  %t554 = load ptr, ptr %l0, !tbaa !29
  %t556 = getelementptr { i64, [5 x i64] }, ptr %t554, i32 0, i32 1
  %t557 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t556, i32 0, i32 2
  %t558 = load ptr, ptr %t557
  store ptr %t558, ptr %l31, !tbaa !29
  br label %bb164
bb163:
  br label %bb173
bb164:
  %t560 = load ptr, ptr %l31, !tbaa !29
  %t562 = getelementptr %"compiler/typed:Seq", ptr %t560, i32 0, i32 0
  %t563 = load { i64, ptr }, ptr %t562, !tbaa !27
  store { i64, ptr } %t563, ptr %l32, !tbaa !27
  store i64 0, ptr %l33, !tbaa !24
  %t565 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t567 = extractvalue { i64, ptr } %t565, 0
  store i64 %t567, ptr %l34, !tbaa !24
  br label %bb165
bb165:
  %t569 = load i64, ptr %l33, !tbaa !24
  %t570 = load i64, ptr %l34, !tbaa !24
  %t573 = icmp slt i64 %t569, %t570
  %t575 = xor i1 %t573, true
  br i1 %t575, label %bb166, label %bb167
bb166:
  br label %bb171
bb167:
  br label %bb168
bb168:
  %t577 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t577, ptr %l329, !tbaa !27
  %t578 = load i64, ptr %l33, !tbaa !24
  %t580 = getelementptr { i64, ptr }, ptr %l329, i32 0, i32 1
  %t581 = load ptr, ptr %t580, !tbaa !27
  %t582 = getelementptr ptr, ptr %t581, i64 %t578
  %t583 = load ptr, ptr %t582, !tbaa !39
  %t587 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectStmt(ptr %v0, ptr %v1, ptr %t583, ptr %t587)
  br label %bb169
bb169:
  br label %bb170
bb170:
  %t590 = load i64, ptr %l33, !tbaa !24
  %t592 = add i64 %t590, 1
  store i64 %t592, ptr %l33, !tbaa !24
  br label %bb165
bb171:
  %t594 = load ptr, ptr %l31, !tbaa !29
  %t596 = getelementptr %"compiler/typed:Seq", ptr %t594, i32 0, i32 1
  %t597 = load ptr, ptr %t596, !tbaa !29
  %t598 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectExpr(ptr %v0, ptr %v1, ptr %t597, ptr %t598)
  br label %bb172
bb172:
  br label %bb289
bb173:
  %t601 = load ptr, ptr %l0, !tbaa !29
  store ptr %t601, ptr %l340, !tbaa !29
  store i1 false, ptr %l341, !tbaa !21
  %t602 = load ptr, ptr %l340, !tbaa !29
  %t603 = icmp ne ptr %t602, null
  br i1 %t603, label %bb174, label %bb175
bb174:
  %t605 = load ptr, ptr %l340, !tbaa !29
  %t606 = load i64, ptr %t605, !range !{i64 0, i64 18}
  %t608 = icmp eq i64 %t606, 13
  store i1 %t608, ptr %l341, !tbaa !21
  br label %bb175
bb175:
  %t609 = load i1, ptr %l341, !tbaa !21
  br i1 %t609, label %bb176, label %bb177
bb176:
  %t610 = load ptr, ptr %l0, !tbaa !29
  %t612 = getelementptr { i64, [5 x i64] }, ptr %t610, i32 0, i32 1
  %t613 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t612, i32 0, i32 2
  %t614 = load ptr, ptr %t613
  store ptr %t614, ptr %l36, !tbaa !29
  br label %bb178
bb177:
  br label %bb194
bb178:
  %t616 = load ptr, ptr %l36, !tbaa !29
  %t618 = getelementptr %"compiler/typed:Match", ptr %t616, i32 0, i32 0
  %t619 = load { i64, ptr }, ptr %t618, !tbaa !27
  store { i64, ptr } %t619, ptr %l37, !tbaa !27
  store i64 0, ptr %l38, !tbaa !24
  %t621 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t623 = extractvalue { i64, ptr } %t621, 0
  store i64 %t623, ptr %l39, !tbaa !24
  br label %bb179
bb179:
  %t625 = load i64, ptr %l38, !tbaa !24
  %t626 = load i64, ptr %l39, !tbaa !24
  %t629 = icmp slt i64 %t625, %t626
  %t631 = xor i1 %t629, true
  br i1 %t631, label %bb180, label %bb181
bb180:
  br label %bb185
bb181:
  br label %bb182
bb182:
  %t633 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t633, ptr %l354, !tbaa !27
  %t634 = load i64, ptr %l38, !tbaa !24
  %t636 = getelementptr { i64, ptr }, ptr %l354, i32 0, i32 1
  %t637 = load ptr, ptr %t636, !tbaa !27
  %t638 = getelementptr ptr, ptr %t637, i64 %t634
  %t639 = load ptr, ptr %t638, !tbaa !39
  %t643 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectStmt(ptr %v0, ptr %v1, ptr %t639, ptr %t643)
  br label %bb183
bb183:
  br label %bb184
bb184:
  %t646 = load i64, ptr %l38, !tbaa !24
  %t648 = add i64 %t646, 1
  store i64 %t648, ptr %l38, !tbaa !24
  br label %bb179
bb185:
  %t650 = load ptr, ptr %l36, !tbaa !29
  %t652 = getelementptr %"compiler/typed:Match", ptr %t650, i32 0, i32 1
  %t653 = load { i64, ptr }, ptr %t652, !tbaa !27
  store { i64, ptr } %t653, ptr %l41, !tbaa !27
  store i64 0, ptr %l42, !tbaa !24
  %t655 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t657 = extractvalue { i64, ptr } %t655, 0
  store i64 %t657, ptr %l43, !tbaa !24
  br label %bb186
bb186:
  %t659 = load i64, ptr %l42, !tbaa !24
  %t660 = load i64, ptr %l43, !tbaa !24
  %t663 = icmp slt i64 %t659, %t660
  %t665 = xor i1 %t663, true
  br i1 %t665, label %bb187, label %bb188
bb187:
  br label %bb192
bb188:
  br label %bb189
bb189:
  %t667 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t667, ptr %l370, !tbaa !27
  %t668 = load i64, ptr %l42, !tbaa !24
  %t670 = getelementptr { i64, ptr }, ptr %l370, i32 0, i32 1
  %t671 = load ptr, ptr %t670, !tbaa !27
  %t672 = getelementptr ptr, ptr %t671, i64 %t668
  %t673 = load ptr, ptr %t672, !tbaa !39
  %t677 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectArm(ptr %v0, ptr %v1, ptr %t673, ptr %t677)
  br label %bb190
bb190:
  br label %bb191
bb191:
  %t680 = load i64, ptr %l42, !tbaa !24
  %t682 = add i64 %t680, 1
  store i64 %t682, ptr %l42, !tbaa !24
  br label %bb186
bb192:
  %t684 = load ptr, ptr %l36, !tbaa !29
  %t686 = getelementptr %"compiler/typed:Match", ptr %t684, i32 0, i32 2
  %t687 = load ptr, ptr %t686, !tbaa !29
  %t688 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectArm(ptr %v0, ptr %v1, ptr %t687, ptr %t688)
  br label %bb193
bb193:
  br label %bb289
bb194:
  %t691 = load ptr, ptr %l0, !tbaa !29
  store ptr %t691, ptr %l381, !tbaa !29
  store i1 false, ptr %l382, !tbaa !21
  %t692 = load ptr, ptr %l381, !tbaa !29
  %t693 = icmp ne ptr %t692, null
  br i1 %t693, label %bb195, label %bb196
bb195:
  %t695 = load ptr, ptr %l381, !tbaa !29
  %t696 = load i64, ptr %t695, !range !{i64 0, i64 18}
  %t698 = icmp eq i64 %t696, 14
  store i1 %t698, ptr %l382, !tbaa !21
  br label %bb196
bb196:
  %t699 = load i1, ptr %l382, !tbaa !21
  br i1 %t699, label %bb197, label %bb198
bb197:
  %t700 = load ptr, ptr %l0, !tbaa !29
  %t702 = getelementptr { i64, [5 x i64] }, ptr %t700, i32 0, i32 1
  %t703 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t702, i32 0, i32 2
  %t704 = load ptr, ptr %t703
  store ptr %t704, ptr %l45, !tbaa !29
  br label %bb199
bb198:
  br label %bb215
bb199:
  %t706 = load ptr, ptr %l45, !tbaa !29
  %t708 = getelementptr %"compiler/typed:Try", ptr %t706, i32 0, i32 0
  %t709 = load ptr, ptr %t708, !tbaa !29
  %t710 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectExpr(ptr %v0, ptr %v1, ptr %t709, ptr %t710)
  br label %bb200
bb200:
  %t713 = load ptr, ptr %l45, !tbaa !29
  %t715 = getelementptr %"compiler/typed:Try", ptr %t713, i32 0, i32 1
  %t716 = load { i64, ptr }, ptr %t715, !tbaa !27
  store { i64, ptr } %t716, ptr %l46, !tbaa !27
  store i64 0, ptr %l47, !tbaa !24
  %t718 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t720 = extractvalue { i64, ptr } %t718, 0
  store i64 %t720, ptr %l48, !tbaa !24
  br label %bb201
bb201:
  %t722 = load i64, ptr %l47, !tbaa !24
  %t723 = load i64, ptr %l48, !tbaa !24
  %t726 = icmp slt i64 %t722, %t723
  %t728 = xor i1 %t726, true
  br i1 %t728, label %bb202, label %bb203
bb202:
  br label %bb214
bb203:
  br label %bb204
bb204:
  %t730 = load { i64, ptr }, ptr %l46, !tbaa !27
  store { i64, ptr } %t730, ptr %l398, !tbaa !27
  %t731 = load i64, ptr %l47, !tbaa !24
  %t733 = getelementptr { i64, ptr }, ptr %l398, i32 0, i32 1
  %t734 = load ptr, ptr %t733, !tbaa !27
  %t735 = getelementptr ptr, ptr %t734, i64 %t731
  %t736 = load ptr, ptr %t735, !tbaa !39
  store ptr %t736, ptr %l49, !tbaa !29
  %t738 = load ptr, ptr %l49, !tbaa !29
  %t740 = getelementptr %"compiler/typed:Clause", ptr %t738, i32 0, i32 3
  %t741 = load ptr, ptr %t740, !tbaa !29
  %t742 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectBlock(ptr %v0, ptr %v1, ptr %t741, ptr %t742)
  br label %bb205
bb205:
  %t745 = load ptr, ptr %l49, !tbaa !29
  %t747 = getelementptr %"compiler/typed:Clause", ptr %t745, i32 0, i32 4
  %t748 = load { i64, ptr }, ptr %t747, !tbaa !27
  store { i64, ptr } %t748, ptr %l50, !tbaa !27
  store i64 0, ptr %l51, !tbaa !24
  %t750 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t752 = extractvalue { i64, ptr } %t750, 0
  store i64 %t752, ptr %l52, !tbaa !24
  br label %bb206
bb206:
  %t754 = load i64, ptr %l51, !tbaa !24
  %t755 = load i64, ptr %l52, !tbaa !24
  %t758 = icmp slt i64 %t754, %t755
  %t760 = xor i1 %t758, true
  br i1 %t760, label %bb207, label %bb208
bb207:
  br label %bb212
bb208:
  br label %bb209
bb209:
  %t762 = load { i64, ptr }, ptr %l50, !tbaa !27
  store { i64, ptr } %t762, ptr %l412, !tbaa !27
  %t763 = load i64, ptr %l51, !tbaa !24
  %t765 = getelementptr { i64, ptr }, ptr %l412, i32 0, i32 1
  %t766 = load ptr, ptr %t765, !tbaa !27
  %t767 = getelementptr ptr, ptr %t766, i64 %t763
  %t768 = load ptr, ptr %t767, !tbaa !39
  %t772 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectExpr(ptr %v0, ptr %v1, ptr %t768, ptr %t772)
  br label %bb210
bb210:
  br label %bb211
bb211:
  %t775 = load i64, ptr %l51, !tbaa !24
  %t777 = add i64 %t775, 1
  store i64 %t777, ptr %l51, !tbaa !24
  br label %bb206
bb212:
  br label %bb213
bb213:
  %t779 = load i64, ptr %l47, !tbaa !24
  %t781 = add i64 %t779, 1
  store i64 %t781, ptr %l47, !tbaa !24
  br label %bb201
bb214:
  br label %bb289
bb215:
  %t783 = load ptr, ptr %l0, !tbaa !29
  store ptr %t783, ptr %l422, !tbaa !29
  store i1 false, ptr %l423, !tbaa !21
  %t784 = load ptr, ptr %l422, !tbaa !29
  %t785 = icmp ne ptr %t784, null
  br i1 %t785, label %bb216, label %bb217
bb216:
  %t787 = load ptr, ptr %l422, !tbaa !29
  %t788 = load i64, ptr %t787, !range !{i64 0, i64 18}
  %t790 = icmp eq i64 %t788, 15
  store i1 %t790, ptr %l423, !tbaa !21
  br label %bb217
bb217:
  %t791 = load i1, ptr %l423, !tbaa !21
  br i1 %t791, label %bb218, label %bb219
bb218:
  %t792 = load ptr, ptr %l0, !tbaa !29
  %t794 = getelementptr { i64, [5 x i64] }, ptr %t792, i32 0, i32 1
  %t795 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t794, i32 0, i32 2
  %t796 = load ptr, ptr %t795
  store ptr %t796, ptr %l54, !tbaa !29
  br label %bb220
bb219:
  br label %bb253
bb220:
  %t798 = load ptr, ptr %l54, !tbaa !29
  store ptr %t798, ptr %l428, !tbaa !29
  store i1 false, ptr %l429, !tbaa !21
  %t799 = load ptr, ptr %l428, !tbaa !29
  %t800 = icmp ne ptr %t799, null
  br i1 %t800, label %bb221, label %bb222
bb221:
  %t802 = load ptr, ptr %l428, !tbaa !29
  %t803 = load i64, ptr %t802, !range !{i64 0, i64 3}
  %t805 = icmp eq i64 %t803, 0
  store i1 %t805, ptr %l429, !tbaa !21
  br label %bb222
bb222:
  %t806 = load i1, ptr %l429, !tbaa !21
  br i1 %t806, label %bb223, label %bb224
bb223:
  %t807 = load ptr, ptr %l54, !tbaa !29
  %t809 = getelementptr { i64, [4 x i64] }, ptr %t807, i32 0, i32 1
  %t810 = getelementptr { i32 }, ptr %t809, i32 0, i32 0
  %t811 = load i32, ptr %t810
  store i32 %t811, ptr %l55, !tbaa !23
  br label %bb225
bb224:
  br label %bb227
bb225:
  %t813 = load ptr, ptr %l1, !tbaa !29
  %t815 = getelementptr %"compiler/scope:walked", ptr %t813, i32 0, i32 0
  %t816 = load i32, ptr %l55, !tbaa !23
  %t818 = sext i32 %t816 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t815, i64 %t818)
  br label %bb226
bb226:
  br label %bb252
bb227:
  %t821 = load ptr, ptr %l54, !tbaa !29
  store ptr %t821, ptr %l438, !tbaa !29
  store i1 false, ptr %l439, !tbaa !21
  %t822 = load ptr, ptr %l438, !tbaa !29
  %t823 = icmp ne ptr %t822, null
  br i1 %t823, label %bb228, label %bb229
bb228:
  %t825 = load ptr, ptr %l438, !tbaa !29
  %t826 = load i64, ptr %t825, !range !{i64 0, i64 3}
  %t828 = icmp eq i64 %t826, 1
  store i1 %t828, ptr %l439, !tbaa !21
  br label %bb229
bb229:
  %t829 = load i1, ptr %l439, !tbaa !21
  br i1 %t829, label %bb230, label %bb231
bb230:
  %t830 = load ptr, ptr %l54, !tbaa !29
  %t832 = getelementptr { i64, [4 x i64] }, ptr %t830, i32 0, i32 1
  %t833 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t832, i32 0, i32 0
  %t834 = load i32, ptr %t833
  store i32 %t834, ptr %l56, !tbaa !23
  %t836 = load ptr, ptr %l54, !tbaa !29
  %t838 = getelementptr { i64, [4 x i64] }, ptr %t836, i32 0, i32 1
  %t839 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t838, i32 0, i32 1
  %t840 = load { i64, ptr }, ptr %t839
  store { i64, ptr } %t840, ptr %l57, !tbaa !27
  br label %bb232
bb231:
  br label %bb243
bb232:
  %t842 = load ptr, ptr %l1, !tbaa !29
  %t844 = getelementptr %"compiler/scope:walked", ptr %t842, i32 0, i32 0
  %t845 = load i32, ptr %l56, !tbaa !23
  %t847 = sext i32 %t845 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t844, i64 %t847)
  br label %bb233
bb233:
  %t850 = load ptr, ptr %l1, !tbaa !29
  %t852 = getelementptr %"compiler/scope:walked", ptr %t850, i32 0, i32 13
  %t853 = load i32, ptr %l56, !tbaa !23
  %t855 = sext i32 %t853 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t852, i64 %t855)
  br label %bb234
bb234:
  %t858 = load ptr, ptr %l1, !tbaa !29
  %t860 = getelementptr %"compiler/scope:walked", ptr %t858, i32 0, i32 14
  %t861 = load { i64, ptr }, ptr %l57, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2ftyped_3aCapture_26__Hbce50ad940bb00a7deeff65a4c93e11e(ptr %v1, ptr %v0, ptr %t860, { i64, ptr } %t861)
  br label %bb235
bb235:
  %t865 = load { i64, ptr }, ptr %l57, !tbaa !27
  store { i64, ptr } %t865, ptr %l58, !tbaa !27
  store i64 0, ptr %l59, !tbaa !24
  %t867 = load { i64, ptr }, ptr %l58, !tbaa !27
  %t869 = extractvalue { i64, ptr } %t867, 0
  store i64 %t869, ptr %l60, !tbaa !24
  br label %bb236
bb236:
  %t871 = load i64, ptr %l59, !tbaa !24
  %t872 = load i64, ptr %l60, !tbaa !24
  %t875 = icmp slt i64 %t871, %t872
  %t877 = xor i1 %t875, true
  br i1 %t877, label %bb237, label %bb238
bb237:
  br label %bb242
bb238:
  br label %bb239
bb239:
  %t879 = load { i64, ptr }, ptr %l58, !tbaa !27
  store { i64, ptr } %t879, ptr %l465, !tbaa !27
  %t880 = load i64, ptr %l59, !tbaa !24
  %t882 = getelementptr { i64, ptr }, ptr %l465, i32 0, i32 1
  %t883 = load ptr, ptr %t882, !tbaa !27
  %t884 = getelementptr ptr, ptr %t883, i64 %t880
  %t885 = load ptr, ptr %t884, !tbaa !39
  %t889 = getelementptr %"compiler/typed:Capture", ptr %t885, i32 0, i32 1
  %t890 = load ptr, ptr %t889, !tbaa !29
  %t892 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectExpr(ptr %v0, ptr %v1, ptr %t890, ptr %t892)
  br label %bb240
bb240:
  br label %bb241
bb241:
  %t895 = load i64, ptr %l59, !tbaa !24
  %t897 = add i64 %t895, 1
  store i64 %t897, ptr %l59, !tbaa !24
  br label %bb236
bb242:
  br label %bb252
bb243:
  %t899 = load ptr, ptr %l54, !tbaa !29
  store ptr %t899, ptr %l474, !tbaa !29
  store i1 false, ptr %l475, !tbaa !21
  %t900 = load ptr, ptr %l474, !tbaa !29
  %t901 = icmp ne ptr %t900, null
  br i1 %t901, label %bb244, label %bb245
bb244:
  %t903 = load ptr, ptr %l474, !tbaa !29
  %t904 = load i64, ptr %t903, !range !{i64 0, i64 3}
  %t906 = icmp eq i64 %t904, 2
  store i1 %t906, ptr %l475, !tbaa !21
  br label %bb245
bb245:
  %t907 = load i1, ptr %l475, !tbaa !21
  br i1 %t907, label %bb246, label %bb247
bb246:
  %t908 = load ptr, ptr %l54, !tbaa !29
  %t910 = getelementptr { i64, [4 x i64] }, ptr %t908, i32 0, i32 1
  %t911 = getelementptr { i32, ptr, i32 }, ptr %t910, i32 0, i32 0
  %t912 = load i32, ptr %t911
  store i32 %t912, ptr %l62, !tbaa !23
  %t914 = load ptr, ptr %l54, !tbaa !29
  %t916 = getelementptr { i64, [4 x i64] }, ptr %t914, i32 0, i32 1
  %t917 = getelementptr { i32, ptr, i32 }, ptr %t916, i32 0, i32 1
  %t918 = load ptr, ptr %t917
  store ptr %t918, ptr %l63, !tbaa !29
  br label %bb248
bb247:
  br label %bb251
bb248:
  %t920 = load ptr, ptr %l1, !tbaa !29
  %t922 = getelementptr %"compiler/scope:walked", ptr %t920, i32 0, i32 0
  %t923 = load i32, ptr %l62, !tbaa !23
  %t925 = sext i32 %t923 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t922, i64 %t925)
  br label %bb249
bb249:
  %t928 = load ptr, ptr %l63, !tbaa !29
  %t930 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectExpr(ptr %v0, ptr %v1, ptr %t928, ptr %t930)
  br label %bb250
bb250:
  br label %bb252
bb251:
  call void @__olang_check_failed(ptr @olang_loc_40e1b9ce9703350b_4e76bb25ade4a65f)
  unreachable
bb252:
  br label %bb289
bb253:
  %t933 = load ptr, ptr %l0, !tbaa !29
  store ptr %t933, ptr %l489, !tbaa !29
  store i1 false, ptr %l490, !tbaa !21
  %t934 = load ptr, ptr %l489, !tbaa !29
  %t935 = icmp ne ptr %t934, null
  br i1 %t935, label %bb254, label %bb255
bb254:
  %t937 = load ptr, ptr %l489, !tbaa !29
  %t938 = load i64, ptr %t937, !range !{i64 0, i64 18}
  %t940 = icmp eq i64 %t938, 16
  store i1 %t940, ptr %l490, !tbaa !21
  br label %bb255
bb255:
  %t941 = load i1, ptr %l490, !tbaa !21
  br i1 %t941, label %bb256, label %bb257
bb256:
  %t942 = load ptr, ptr %l0, !tbaa !29
  %t944 = getelementptr { i64, [5 x i64] }, ptr %t942, i32 0, i32 1
  %t945 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t944, i32 0, i32 2
  %t946 = load ptr, ptr %t945
  store ptr %t946, ptr %l64, !tbaa !29
  br label %bb258
bb257:
  br label %bb277
bb258:
  %t948 = load ptr, ptr %l64, !tbaa !29
  %t950 = getelementptr %"compiler/typed:Text", ptr %t948, i32 0, i32 0
  %t951 = load { i64, ptr }, ptr %t950, !tbaa !27
  store { i64, ptr } %t951, ptr %l65, !tbaa !27
  store i64 0, ptr %l66, !tbaa !24
  %t953 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t955 = extractvalue { i64, ptr } %t953, 0
  store i64 %t955, ptr %l67, !tbaa !24
  br label %bb259
bb259:
  %t957 = load i64, ptr %l66, !tbaa !24
  %t958 = load i64, ptr %l67, !tbaa !24
  %t961 = icmp slt i64 %t957, %t958
  %t963 = xor i1 %t961, true
  br i1 %t963, label %bb260, label %bb261
bb260:
  br label %bb276
bb261:
  br label %bb262
bb262:
  %t965 = load { i64, ptr }, ptr %l65, !tbaa !27
  store { i64, ptr } %t965, ptr %l503, !tbaa !27
  %t966 = load i64, ptr %l66, !tbaa !24
  %t968 = getelementptr { i64, ptr }, ptr %l503, i32 0, i32 1
  %t969 = load ptr, ptr %t968, !tbaa !27
  %t970 = getelementptr ptr, ptr %t969, i64 %t966
  %t971 = load ptr, ptr %t970, !tbaa !39
  store ptr %t971, ptr %l68, !tbaa !29
  %t973 = load ptr, ptr %l68, !tbaa !29
  store ptr %t973, ptr %l506, !tbaa !29
  store i1 false, ptr %l507, !tbaa !21
  %t974 = load ptr, ptr %l506, !tbaa !29
  %t975 = icmp ne ptr %t974, null
  br i1 %t975, label %bb263, label %bb264
bb263:
  %t977 = load ptr, ptr %l506, !tbaa !29
  %t978 = load i64, ptr %t977, !range !{i64 0, i64 2}
  %t980 = icmp eq i64 %t978, 1
  store i1 %t980, ptr %l507, !tbaa !21
  br label %bb264
bb264:
  %t981 = load i1, ptr %l507, !tbaa !21
  br i1 %t981, label %bb265, label %bb266
bb265:
  %t982 = load ptr, ptr %l68, !tbaa !29
  %t984 = getelementptr { i64, [2 x i64] }, ptr %t982, i32 0, i32 1
  %t985 = getelementptr { ptr }, ptr %t984, i32 0, i32 0
  %t986 = load ptr, ptr %t985
  store ptr %t986, ptr %l69, !tbaa !29
  br label %bb267
bb266:
  br label %bb269
bb267:
  %t988 = load ptr, ptr %l69, !tbaa !29
  %t990 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectExpr(ptr %v0, ptr %v1, ptr %t988, ptr %t990)
  br label %bb268
bb268:
  br label %bb274
bb269:
  br i1 true, label %bb270, label %bb271
bb270:
  br label %bb272
bb271:
  br label %bb273
bb272:
  br label %bb274
bb273:
  call void @__olang_check_failed(ptr @olang_loc_751fe83ccffcd5d0_cf7f8de089a85c24)
  unreachable
bb274:
  br label %bb275
bb275:
  %t993 = load i64, ptr %l66, !tbaa !24
  %t995 = add i64 %t993, 1
  store i64 %t995, ptr %l66, !tbaa !24
  br label %bb259
bb276:
  br label %bb289
bb277:
  %t997 = load ptr, ptr %l0, !tbaa !29
  store ptr %t997, ptr %l517, !tbaa !29
  store i1 false, ptr %l518, !tbaa !21
  %t998 = load ptr, ptr %l517, !tbaa !29
  %t999 = icmp ne ptr %t998, null
  br i1 %t999, label %bb278, label %bb279
bb278:
  %t1001 = load ptr, ptr %l517, !tbaa !29
  %t1002 = load i64, ptr %t1001, !range !{i64 0, i64 18}
  %t1004 = icmp eq i64 %t1002, 17
  store i1 %t1004, ptr %l518, !tbaa !21
  br label %bb279
bb279:
  %t1005 = load i1, ptr %l518, !tbaa !21
  br i1 %t1005, label %bb280, label %bb281
bb280:
  %t1006 = load ptr, ptr %l0, !tbaa !29
  %t1008 = getelementptr { i64, [5 x i64] }, ptr %t1006, i32 0, i32 1
  %t1009 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t1008, i32 0, i32 2
  %t1010 = load ptr, ptr %t1009
  store ptr %t1010, ptr %l70, !tbaa !29
  br label %bb282
bb281:
  br label %bb284
bb282:
  %t1012 = load ptr, ptr %l70, !tbaa !29
  %t1014 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectExpr(ptr %v0, ptr %v1, ptr %t1012, ptr %t1014)
  br label %bb283
bb283:
  br label %bb289
bb284:
  br i1 true, label %bb285, label %bb286
bb285:
  br label %bb287
bb286:
  br label %bb288
bb287:
  br label %bb289
bb288:
  call void @__olang_check_failed(ptr @olang_loc_2ab82ae701676b61_1888e5291152cb15)
  unreachable
bb289:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecollectPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i1
  %l18 = alloca ptr
  %l19 = alloca i1
  %l27 = alloca ptr
  %l28 = alloca i1
  %l41 = alloca ptr
  %l42 = alloca i1
  %l51 = alloca ptr
  %l52 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t5 = load ptr, ptr %l0, !tbaa !29
  store ptr %t5, ptr %l9, !tbaa !29
  store i1 false, ptr %l10, !tbaa !21
  %t6 = load ptr, ptr %l9, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l9, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 8}
  %t12 = icmp eq i64 %t10, 2
  store i1 %t12, ptr %l10, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l10, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr { i64, [4 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t16, i32 0, i32 2
  %t18 = load ptr, ptr %t17
  store ptr %t18, ptr %l2, !tbaa !29
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t20 = load ptr, ptr %l2, !tbaa !29
  %t22 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectExpr(ptr %v0, ptr %v1, ptr %t20, ptr %t22)
  br label %bb9
bb9:
  br label %bb44
bb10:
  %t25 = load ptr, ptr %l0, !tbaa !29
  store ptr %t25, ptr %l18, !tbaa !29
  store i1 false, ptr %l19, !tbaa !21
  %t26 = load ptr, ptr %l18, !tbaa !29
  %t27 = icmp ne ptr %t26, null
  br i1 %t27, label %bb11, label %bb12
bb11:
  %t29 = load ptr, ptr %l18, !tbaa !29
  %t30 = load i64, ptr %t29, !range !{i64 0, i64 8}
  %t32 = icmp eq i64 %t30, 3
  store i1 %t32, ptr %l19, !tbaa !21
  br label %bb12
bb12:
  %t33 = load i1, ptr %l19, !tbaa !21
  br i1 %t33, label %bb13, label %bb14
bb13:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr { i64, [4 x i64] }, ptr %t34, i32 0, i32 1
  %t37 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t36, i32 0, i32 2
  %t38 = load ptr, ptr %t37
  store ptr %t38, ptr %l3, !tbaa !29
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t40 = load ptr, ptr %l3, !tbaa !29
  %t42 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectPlace(ptr %v0, ptr %v1, ptr %t40, ptr %t42)
  br label %bb16
bb16:
  br label %bb44
bb17:
  %t45 = load ptr, ptr %l0, !tbaa !29
  store ptr %t45, ptr %l27, !tbaa !29
  store i1 false, ptr %l28, !tbaa !21
  %t46 = load ptr, ptr %l27, !tbaa !29
  %t47 = icmp ne ptr %t46, null
  br i1 %t47, label %bb18, label %bb19
bb18:
  %t49 = load ptr, ptr %l27, !tbaa !29
  %t50 = load i64, ptr %t49, !range !{i64 0, i64 8}
  %t52 = icmp eq i64 %t50, 4
  store i1 %t52, ptr %l28, !tbaa !21
  br label %bb19
bb19:
  %t53 = load i1, ptr %l28, !tbaa !21
  br i1 %t53, label %bb20, label %bb21
bb20:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr { i64, [4 x i64] }, ptr %t54, i32 0, i32 1
  %t57 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t56, i32 0, i32 2
  %t58 = load ptr, ptr %t57
  store ptr %t58, ptr %l4, !tbaa !29
  br label %bb22
bb21:
  br label %bb25
bb22:
  %t60 = load ptr, ptr %l4, !tbaa !29
  %t62 = getelementptr %"compiler/typed:Elem", ptr %t60, i32 0, i32 0
  %t63 = load ptr, ptr %t62, !tbaa !29
  %t65 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectPlace(ptr %v0, ptr %v1, ptr %t63, ptr %t65)
  br label %bb23
bb23:
  %t68 = load ptr, ptr %l4, !tbaa !29
  %t70 = getelementptr %"compiler/typed:Elem", ptr %t68, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !29
  %t73 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectExpr(ptr %v0, ptr %v1, ptr %t71, ptr %t73)
  br label %bb24
bb24:
  br label %bb44
bb25:
  %t76 = load ptr, ptr %l0, !tbaa !29
  store ptr %t76, ptr %l41, !tbaa !29
  store i1 false, ptr %l42, !tbaa !21
  %t77 = load ptr, ptr %l41, !tbaa !29
  %t78 = icmp ne ptr %t77, null
  br i1 %t78, label %bb26, label %bb27
bb26:
  %t80 = load ptr, ptr %l41, !tbaa !29
  %t81 = load i64, ptr %t80, !range !{i64 0, i64 8}
  %t83 = icmp eq i64 %t81, 5
  store i1 %t83, ptr %l42, !tbaa !21
  br label %bb27
bb27:
  %t84 = load i1, ptr %l42, !tbaa !21
  br i1 %t84, label %bb28, label %bb29
bb28:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr { i64, [4 x i64] }, ptr %t85, i32 0, i32 1
  %t88 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t87, i32 0, i32 2
  %t89 = load ptr, ptr %t88
  store ptr %t89, ptr %l5, !tbaa !29
  br label %bb30
bb29:
  br label %bb32
bb30:
  %t91 = load ptr, ptr %l5, !tbaa !29
  %t93 = getelementptr %"compiler/typed:Payload", ptr %t91, i32 0, i32 0
  %t94 = load ptr, ptr %t93, !tbaa !29
  %t96 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectPlace(ptr %v0, ptr %v1, ptr %t94, ptr %t96)
  br label %bb31
bb31:
  br label %bb44
bb32:
  %t99 = load ptr, ptr %l0, !tbaa !29
  store ptr %t99, ptr %l51, !tbaa !29
  store i1 false, ptr %l52, !tbaa !21
  %t100 = load ptr, ptr %l51, !tbaa !29
  %t101 = icmp ne ptr %t100, null
  br i1 %t101, label %bb33, label %bb34
bb33:
  %t103 = load ptr, ptr %l51, !tbaa !29
  %t104 = load i64, ptr %t103, !range !{i64 0, i64 8}
  %t106 = icmp eq i64 %t104, 6
  store i1 %t106, ptr %l52, !tbaa !21
  br label %bb34
bb34:
  %t107 = load i1, ptr %l52, !tbaa !21
  br i1 %t107, label %bb35, label %bb36
bb35:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr { i64, [4 x i64] }, ptr %t108, i32 0, i32 1
  %t111 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t110, i32 0, i32 2
  %t112 = load ptr, ptr %t111
  store ptr %t112, ptr %l6, !tbaa !29
  br label %bb37
bb36:
  br label %bb39
bb37:
  %t114 = load ptr, ptr %l6, !tbaa !29
  %t116 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectExpr(ptr %v0, ptr %v1, ptr %t114, ptr %t116)
  br label %bb38
bb38:
  br label %bb44
bb39:
  br i1 true, label %bb40, label %bb41
bb40:
  br label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb44
bb43:
  call void @__olang_check_failed(ptr @olang_loc_61be1b0fda526a24_254af50801a17418)
  unreachable
bb44:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eFoldStats(ptr %v0, ptr %v1, ptr %a0) #0 {
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
  %l9 = alloca ptr
  %l10 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca { i64, [2 x i64] }
  %l18 = alloca i32
  %l21 = alloca i64
  %l25 = alloca i64
  %l28 = alloca i64
  %l49 = alloca ptr
  %l50 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l54 = alloca %"compiler/typed:Plan"
  %l56 = alloca %"compiler/typed:Plan"
  %l62 = alloca i64
  %l65 = alloca i64
  %l86 = alloca %"compiler/typed:Plan"
  %l88 = alloca %"compiler/typed:Plan"
  %l89 = alloca { i64, ptr }
  %l98 = alloca i1
  %l105 = alloca i64
  %l108 = alloca i64
  %l110 = alloca i1
  %l115 = alloca %"compiler/typed:BlockInfo"
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t67 = alloca %"compiler/typed:Plan", align 8
  %t70 = alloca %"compiler/typed:Plan", align 8
  %t127 = alloca %"compiler/typed:Plan", align 8
  %t130 = alloca %"compiler/typed:Plan", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l1, !tbaa !24
  store i64 0, ptr %l2, !tbaa !24
  store i64 0, ptr %l3, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 2
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eLen_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l21
  br label %bb1
bb1:
  %t6 = load i64, ptr %l21, !tbaa !24
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
  store i64 0, ptr %l25, !tbaa !24
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
  store i64 %t31, ptr %l28, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l28, !tbaa !24
  br label %bb6
bb6:
  %t33 = load i64, ptr %l28, !tbaa !24
  store i64 %t33, ptr %l25, !tbaa !24
  br label %bb7
bb7:
  %t34 = load i64, ptr %l25, !tbaa !24
  store i64 %t34, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t35 = load i64, ptr %l7, !tbaa !24
  %t36 = load i64, ptr %l6, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb53
bb10:
  br label %bb11
bb11:
  %t43 = load i64, ptr %l3, !tbaa !24
  %t44 = load i64, ptr %l7, !tbaa !24
  %t45 = load i64, ptr %l5, !tbaa !24
  %t48 = mul i64 %t44, %t45
  %t51 = add i64 %t43, %t48
  store i64 %t51, ptr %l8, !tbaa !24
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/scope:Scoper", ptr %t53, i32 0, i32 1
  %t56 = load i64, ptr %l8, !tbaa !24
  %t59 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t55, i64 %t56)
  store ptr %t59, ptr %l49
  br label %bb12
bb12:
  %t60 = load ptr, ptr %l49, !tbaa !29
  store ptr %t60, ptr %l9, !tbaa !29
  %t61 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %s2)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t61, ptr %l50
  br label %bb13
bb13:
  %t62 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l50
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t62, ptr %l10
  store i64 0, ptr %l11, !tbaa !24
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/scope:Scoper", ptr %t63, i32 0, i32 2
  %t66 = load i64, ptr %l8, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eAt_3ccompiler_2ftyped_3aPlan_3e(ptr %t67, ptr %v0, ptr %v0, ptr %t65, i64 %t66)
  call void @llvm.memmove.p0.p0.i64(ptr %l54, ptr %t67, i64 536, i1 false)
  br label %bb14
bb14:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ftyped_3aPlan(ptr %t70, ptr %v0, ptr %l54)
  call void @llvm.memmove.p0.p0.i64(ptr %l56, ptr %t70, i64 536, i1 false)
  br label %bb15
bb15:
  %t72 = getelementptr %"compiler/typed:Plan", ptr %l56, i32 0, i32 0
  %t73 = load { i64, ptr }, ptr %t72, !tbaa !27
  %t75 = extractvalue { i64, ptr } %t73, 0
  store i64 %t75, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t77 = load i64, ptr %l12, !tbaa !24
  %t78 = load i64, ptr %l11, !tbaa !24
  %t81 = icmp sgt i64 %t77, %t78
  br i1 %t81, label %bb16, label %bb17
bb16:
  %t83 = load i64, ptr %l13, !tbaa !24
  %t85 = icmp sgt i64 %t83, 0
  br i1 %t85, label %bb18, label %bb19
bb17:
  store i64 0, ptr %l62, !tbaa !24
  br label %bb21
bb18:
  %t87 = load i64, ptr %l12, !tbaa !24
  %t88 = load i64, ptr %l11, !tbaa !24
  %t91 = sub i64 %t87, %t88
  %t92 = load i64, ptr %l13, !tbaa !24
  %t95 = add i64 %t91, %t92
  %t97 = sub i64 %t95, 1
  %t98 = load i64, ptr %l13, !tbaa !24
  %t101 = sdiv i64 %t97, %t98
  store i64 %t101, ptr %l65, !tbaa !24
  br label %bb20
bb19:
  store i64 0, ptr %l65, !tbaa !24
  br label %bb20
bb20:
  %t103 = load i64, ptr %l65, !tbaa !24
  store i64 %t103, ptr %l62, !tbaa !24
  br label %bb21
bb21:
  %t104 = load i64, ptr %l62, !tbaa !24
  store i64 %t104, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb22
bb22:
  %t105 = load i64, ptr %l15, !tbaa !24
  %t106 = load i64, ptr %l14, !tbaa !24
  %t109 = icmp slt i64 %t105, %t106
  %t111 = xor i1 %t109, true
  br i1 %t111, label %bb23, label %bb24
bb23:
  br label %bb51
bb24:
  br label %bb25
bb25:
  %t113 = load i64, ptr %l11, !tbaa !24
  %t114 = load i64, ptr %l15, !tbaa !24
  %t115 = load i64, ptr %l13, !tbaa !24
  %t118 = mul i64 %t114, %t115
  %t121 = add i64 %t113, %t118
  store i64 %t121, ptr %l16, !tbaa !24
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = getelementptr %"compiler/scope:Scoper", ptr %t123, i32 0, i32 2
  %t126 = load i64, ptr %l8, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eAt_3ccompiler_2ftyped_3aPlan_3e(ptr %t127, ptr %v0, ptr %v0, ptr %t125, i64 %t126)
  call void @llvm.memmove.p0.p0.i64(ptr %l86, ptr %t127, i64 536, i1 false)
  br label %bb26
bb26:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ftyped_3aPlan(ptr %t130, ptr %v0, ptr %l86)
  call void @llvm.memmove.p0.p0.i64(ptr %l88, ptr %t130, i64 536, i1 false)
  br label %bb27
bb27:
  %t132 = getelementptr %"compiler/typed:Plan", ptr %l88, i32 0, i32 0
  %t133 = load { i64, ptr }, ptr %t132, !tbaa !27
  store { i64, ptr } %t133, ptr %l89, !tbaa !27
  %t134 = load i64, ptr %l16, !tbaa !24
  %t136 = getelementptr { i64, ptr }, ptr %l89, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !27
  %t138 = getelementptr { i64, [2 x i64] }, ptr %t137, i64 %t134
  %t139 = load { i64, [2 x i64] }, ptr %t138
  store { i64, [2 x i64] } %t139, ptr %l17
  %t141 = load { i64, [2 x i64] }, ptr %l17
  %t143 = extractvalue { i64, [2 x i64] } %t141, 0
  %t144 = icmp eq i64 %t143, 1
  br i1 %t144, label %bb28, label %bb29
bb28:
  %t146 = getelementptr { i64, [2 x i64] }, ptr %l17, i32 0, i32 1
  %t147 = getelementptr { i32 }, ptr %t146, i32 0, i32 0
  %t148 = load i32, ptr %t147
  store i32 %t148, ptr %l18, !tbaa !23
  br label %bb30
bb29:
  br label %bb44
bb30:
  %t150 = load i32, ptr %l18, !tbaa !23
  %t152 = sext i32 %t150 to i64
  %t155 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %s2, ptr %l10, i64 %t152)
  store i1 %t155, ptr %l98
  br label %bb31
bb31:
  %t156 = load i1, ptr %l98, !tbaa !21
  br i1 %t156, label %bb32, label %bb33
bb32:
  br label %bb50
bb33:
  br label %bb34
bb34:
  %t157 = load i32, ptr %l18, !tbaa !23
  %t159 = sext i32 %t157 to i64
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %s2, ptr %l10, i64 %t159, i1 true)
  br label %bb35
bb35:
  %t162 = load i64, ptr %l2, !tbaa !24
  %t164 = add i64 %t162, 1
  store i64 %t164, ptr %l2, !tbaa !24
  %t166 = load i32, ptr %l18, !tbaa !23
  %t168 = sext i32 %t166 to i64
  store i64 %t168, ptr %l105, !tbaa !24
  %t169 = load ptr, ptr %l9, !tbaa !29
  %t171 = getelementptr %"compiler/typed:Body", ptr %t169, i32 0, i32 8
  %t173 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2eLen__Hdc799a0fe091f8e84d50200d058b631d(ptr %v0, ptr %t171)
  store i64 %t173, ptr %l108
  br label %bb36
bb36:
  %t174 = load i64, ptr %l105, !tbaa !24
  %t175 = load i64, ptr %l108, !tbaa !24
  %t176 = icmp slt i64 %t174, %t175
  br i1 %t176, label %bb37, label %bb38
bb37:
  %t178 = load ptr, ptr %l9, !tbaa !29
  %t180 = getelementptr %"compiler/typed:Body", ptr %t178, i32 0, i32 8
  %t181 = load i32, ptr %l18, !tbaa !23
  %t183 = sext i32 %t181 to i64
  %t186 = call %"compiler/typed:BlockInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2eAt_3ccompiler_2ftyped_3aBlockInfo_3e(ptr %v0, ptr %t180, i64 %t183)
  store %"compiler/typed:BlockInfo" %t186, ptr %l115
  br label %bb39
bb38:
  store i1 false, ptr %l110, !tbaa !21
  br label %bb40
bb39:
  %t187 = getelementptr %"compiler/typed:BlockInfo", ptr %l115, i32 0, i32 1
  %t188 = load i32, ptr %t187, !range !{i32 0, i32 10}
  %t190 = trunc i64 1 to i32
  %t191 = icmp eq i32 %t188, %t190
  store i1 %t191, ptr %l110, !tbaa !21
  br label %bb40
bb40:
  %t193 = load i1, ptr %l110, !tbaa !21
  br i1 %t193, label %bb41, label %bb42
bb41:
  %t194 = load i64, ptr %l1, !tbaa !24
  %t196 = add i64 %t194, 1
  store i64 %t196, ptr %l1, !tbaa !24
  br label %bb43
bb42:
  br label %bb43
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
  call void @__olang_check_failed(ptr @olang_loc_c4dcb08f8057e6b4_879f1d415f5e90f0)
  unreachable
bb49:
  br label %bb50
bb50:
  %t198 = load i64, ptr %l15, !tbaa !24
  %t200 = add i64 %t198, 1
  store i64 %t200, ptr %l15, !tbaa !24
  br label %bb22
bb51:
  call void @__olang_scope_close(ptr %s2)
  br label %bb52
bb52:
  %t202 = load i64, ptr %l7, !tbaa !24
  %t204 = add i64 %t202, 1
  store i64 %t204, ptr %l7, !tbaa !24
  br label %bb8
bb53:
  %t206 = load i64, ptr %l2, !tbaa !24
  %t207 = load i64, ptr %l1, !tbaa !24
  %t208 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d0, i32 0, i32 1) }, 1
  %t209 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d0, i32 0, i32 1) }, 0
  %t211 = call i64 @__olang_fmt_i64(ptr null, i64 %t206)
  %t212 = add i64 %t209, %t211
  %t213 = extractvalue { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d1, i32 0, i32 1) }, 1
  %t214 = extractvalue { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  %t215 = add i64 %t212, %t214
  %t217 = call i64 @__olang_fmt_i64(ptr null, i64 %t207)
  %t218 = add i64 %t215, %t217
  %t219 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t218)
  call void @olang_textcopy(ptr %t219, ptr %t208, i64 %t209)
  %t220 = getelementptr i8, ptr %t219, i64 %t209
  %t221 = call i64 @__olang_fmt_i64(ptr %t220, i64 %t206)
  %t222 = getelementptr i8, ptr %t220, i64 %t211
  call void @olang_textcopy(ptr %t222, ptr %t213, i64 %t214)
  %t223 = getelementptr i8, ptr %t222, i64 %t214
  %t224 = call i64 @__olang_fmt_i64(ptr %t223, i64 %t207)
  %t225 = insertvalue { i64, ptr } undef, i64 %t218, 0
  %t226 = insertvalue { i64, ptr } %t225, ptr %t219, 1
  store { i64, ptr } %t226, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eaddToSet(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca i64
  %l19 = alloca i64
  %l22 = alloca i64
  %l26 = alloca i64
  %l29 = alloca i64
  %l47 = alloca ptr
  %l48 = alloca ptr
  %l52 = alloca { i64, [2 x i64] }
  %l56 = alloca i64
  %l58 = alloca i64
  %l63 = alloca { i64, [2 x i64] }
  %l64 = alloca { i64, [2 x i64] }
  %l66 = alloca { i64, [2 x i64] }
  %l68 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, [2 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [2 x i64] }, ptr %l2
  %t3 = extractvalue { i64, [2 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 5
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t7 = getelementptr { i64 }, ptr %t6, i32 0, i32 0
  %t8 = load i64, ptr %t7
  store i64 %t8, ptr %l3, !tbaa !24
  br label %bb3
bb2:
  br label %bb20
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/scope:Scoper", ptr %t10, i32 0, i32 39
  %t13 = load i64, ptr %l3, !tbaa !24
  %t16 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t12, i64 %t13)
  store i64 %t16, ptr %l19
  br label %bb4
bb4:
  %t17 = load i64, ptr %l19, !tbaa !24
  store i64 %t17, ptr %l4, !tbaa !24
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load i64, ptr %l3, !tbaa !24
  %t22 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esetEnd(ptr %v0, ptr %t18, i64 %t19)
  store i64 %t22, ptr %l22
  br label %bb5
bb5:
  %t23 = load i64, ptr %l22, !tbaa !24
  store i64 %t23, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t24 = load i64, ptr %l5, !tbaa !24
  %t25 = load i64, ptr %l4, !tbaa !24
  %t28 = icmp sgt i64 %t24, %t25
  br i1 %t28, label %bb6, label %bb7
bb6:
  %t30 = load i64, ptr %l6, !tbaa !24
  %t32 = icmp sgt i64 %t30, 0
  br i1 %t32, label %bb8, label %bb9
bb7:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb11
bb8:
  %t34 = load i64, ptr %l5, !tbaa !24
  %t35 = load i64, ptr %l4, !tbaa !24
  %t38 = sub i64 %t34, %t35
  %t39 = load i64, ptr %l6, !tbaa !24
  %t42 = add i64 %t38, %t39
  %t44 = sub i64 %t42, 1
  %t45 = load i64, ptr %l6, !tbaa !24
  %t48 = sdiv i64 %t44, %t45
  store i64 %t48, ptr %l29, !tbaa !24
  br label %bb10
bb9:
  store i64 0, ptr %l29, !tbaa !24
  br label %bb10
bb10:
  %t50 = load i64, ptr %l29, !tbaa !24
  store i64 %t50, ptr %l26, !tbaa !24
  br label %bb11
bb11:
  %t51 = load i64, ptr %l26, !tbaa !24
  store i64 %t51, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb12
bb12:
  %t52 = load i64, ptr %l8, !tbaa !24
  %t53 = load i64, ptr %l7, !tbaa !24
  %t56 = icmp slt i64 %t52, %t53
  %t58 = xor i1 %t56, true
  br i1 %t58, label %bb13, label %bb14
bb13:
  br label %bb19
bb14:
  br label %bb15
bb15:
  %t60 = load i64, ptr %l4, !tbaa !24
  %t61 = load i64, ptr %l8, !tbaa !24
  %t62 = load i64, ptr %l6, !tbaa !24
  %t65 = mul i64 %t61, %t62
  %t68 = add i64 %t60, %t65
  %t70 = load ptr, ptr %l0, !tbaa !29
  store ptr %t70, ptr %l47, !tbaa !29
  %t71 = load ptr, ptr %l1, !tbaa !29
  store ptr %t71, ptr %l48, !tbaa !29
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"compiler/scope:Scoper", ptr %t72, i32 0, i32 40
  %t78 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t74, i64 %t68)
  store { i64, [2 x i64] } %t78, ptr %l52
  br label %bb16
bb16:
  %t79 = load ptr, ptr %l47, !tbaa !29
  %t80 = load ptr, ptr %l48, !tbaa !29
  %t81 = load { i64, [2 x i64] }, ptr %l52
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eaddToSet(ptr %v0, ptr %v1, ptr %t79, ptr %t80, { i64, [2 x i64] } %t81)
  br label %bb17
bb17:
  br label %bb18
bb18:
  %t82 = load i64, ptr %l8, !tbaa !24
  %t84 = add i64 %t82, 1
  store i64 %t84, ptr %l8, !tbaa !24
  br label %bb12
bb19:
  br label %ret
bb20:
  br i1 true, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_ade2525ec560ecac_5eadaea182574e0)
  unreachable
bb25:
  %t86 = load ptr, ptr %l1, !tbaa !29
  store ptr %t86, ptr %l10, !tbaa !29
  store i64 0, ptr %l11, !tbaa !24
  br label %bb26
bb26:
  %t88 = load i64, ptr %l11, !tbaa !24
  store i64 %t88, ptr %l56, !tbaa !24
  %t89 = load ptr, ptr %l10, !tbaa !29
  %t91 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eLen_3ccompiler_2fscope_3aTerm_3e(ptr %v1, ptr %t89)
  store i64 %t91, ptr %l58
  br label %bb27
bb27:
  %t92 = load i64, ptr %l56, !tbaa !24
  %t93 = load i64, ptr %l58, !tbaa !24
  %t94 = icmp slt i64 %t92, %t93
  %t96 = xor i1 %t94, true
  br i1 %t96, label %bb28, label %bb29
bb28:
  br label %bb37
bb29:
  br label %bb30
bb30:
  %t98 = load ptr, ptr %l10, !tbaa !29
  %t99 = load i64, ptr %l11, !tbaa !24
  %t102 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v1, ptr %t98, i64 %t99)
  store { i64, [2 x i64] } %t102, ptr %l63
  br label %bb31
bb31:
  %t103 = load { i64, [2 x i64] }, ptr %l63
  store { i64, [2 x i64] } %t103, ptr %l64
  %t105 = load { i64, [2 x i64] }, ptr %l2
  store { i64, [2 x i64] } %t105, ptr %l66
  %t108 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3aTerm(ptr %l64, ptr %l66)
  store i1 %t108, ptr %l68
  br label %bb32
bb32:
  %t109 = load i1, ptr %l68, !tbaa !21
  br i1 %t109, label %bb33, label %bb34
bb33:
  br label %ret
bb34:
  br label %bb35
bb35:
  br label %bb36
bb36:
  %t110 = load i64, ptr %l11, !tbaa !24
  %t112 = add i64 %t110, 1
  store i64 %t112, ptr %l11, !tbaa !24
  br label %bb26
bb37:
  %t114 = load ptr, ptr %l1, !tbaa !29
  %t115 = load { i64, [2 x i64] }, ptr %l2
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ePush_3ccompiler_2fscope_3aTerm_3e(ptr %v1, ptr %t114, { i64, [2 x i64] } %t115)
  br label %bb38
bb38:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eatPart(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i1
  %l15 = alloca ptr
  %l16 = alloca i1
  %l21 = alloca ptr
  %l25 = alloca i1
  %l29 = alloca i1
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t6 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %v2, ptr %t1, ptr %a1)
  store ptr %t6, ptr %l8
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l8, !tbaa !29
  store ptr %t7, ptr %l2, !tbaa !29
  %t8 = load ptr, ptr %l2, !tbaa !29
  store ptr %t8, ptr %l9, !tbaa !29
  store i1 false, ptr %l10, !tbaa !21
  %t9 = load ptr, ptr %l9, !tbaa !29
  %t10 = icmp ne ptr %t9, null
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = load ptr, ptr %l9, !tbaa !29
  %t13 = load i64, ptr %t12, !range !{i64 0, i64 18}
  %t15 = icmp eq i64 %t13, 3
  store i1 %t15, ptr %l10, !tbaa !21
  br label %bb3
bb3:
  %t16 = load i1, ptr %l10, !tbaa !21
  br i1 %t16, label %bb4, label %bb5
bb4:
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t19 = getelementptr { i64, [5 x i64] }, ptr %t17, i32 0, i32 1
  %t20 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t19, i32 0, i32 2
  %t21 = load ptr, ptr %t20
  store ptr %t21, ptr %l3, !tbaa !29
  br label %bb6
bb5:
  br label %bb26
bb6:
  %t23 = load ptr, ptr %l3, !tbaa !29
  store ptr %t23, ptr %l15, !tbaa !29
  store i1 false, ptr %l16, !tbaa !21
  %t24 = load ptr, ptr %l15, !tbaa !29
  %t25 = icmp ne ptr %t24, null
  br i1 %t25, label %bb7, label %bb8
bb7:
  %t27 = load ptr, ptr %l15, !tbaa !29
  %t28 = load i64, ptr %t27, !range !{i64 0, i64 8}
  %t30 = icmp eq i64 %t28, 6
  store i1 %t30, ptr %l16, !tbaa !21
  br label %bb8
bb8:
  %t31 = load i1, ptr %l16, !tbaa !21
  br i1 %t31, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  store ptr null, ptr %rv
  br label %ret
bb12:
  br i1 true, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_d8f2a28da3d637a2_5ae1fbc253d52bc6)
  unreachable
bb17:
  %t33 = load ptr, ptr %l3, !tbaa !29
  %t35 = call ptr @compiler_2fscope_2etempOf(ptr %v2, ptr %v2, ptr %t33)
  store ptr %t35, ptr %l21
  br label %bb18
bb18:
  %t36 = load ptr, ptr %l21, !tbaa !29
  store ptr %t36, ptr %l4, !tbaa !29
  %t37 = load ptr, ptr %l4, !tbaa !29
  %t39 = icmp eq ptr %t37, null
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb19, label %bb20
bb19:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = load ptr, ptr %l4, !tbaa !29
  %t48 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eatCall(ptr %v0, ptr %v2, ptr %t43, ptr %t44)
  store i1 %t48, ptr %l29
  br label %bb21
bb20:
  store i1 false, ptr %l25, !tbaa !21
  br label %bb22
bb21:
  %t49 = load i1, ptr %l29, !tbaa !21
  store i1 %t49, ptr %l25, !tbaa !21
  br label %bb22
bb22:
  %t50 = load i1, ptr %l25, !tbaa !21
  br i1 %t50, label %bb23, label %bb24
bb23:
  %t51 = load ptr, ptr %l3, !tbaa !29
  store ptr %t51, ptr %rv
  br label %ret
bb24:
  br label %bb25
bb25:
  br label %bb31
bb26:
  br i1 true, label %bb27, label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb31
bb30:
  call void @__olang_check_failed(ptr @olang_loc_8c5cb00b3e3258a3_21ae247adf4ca1a7)
  unreachable
bb31:
  store ptr null, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eatomIn(ptr %v0, ptr %a0, %"compiler/scope:verAtom" %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l15 = alloca i64
  %l18 = alloca i64
  %l39 = alloca %"compiler/scope:verAtom"
  %l41 = alloca %"compiler/scope:verAtom"
  %l43 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store i64 %a2, ptr %l4, !tbaa !24
  store i64 %a3, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t5 = load i64, ptr %l5, !tbaa !24
  %t6 = load i64, ptr %l4, !tbaa !24
  %t9 = icmp sgt i64 %t5, %t6
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = load i64, ptr %l6, !tbaa !24
  %t13 = icmp sgt i64 %t11, 0
  br i1 %t13, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l15, !tbaa !24
  br label %bb6
bb3:
  %t15 = load i64, ptr %l5, !tbaa !24
  %t16 = load i64, ptr %l4, !tbaa !24
  %t19 = sub i64 %t15, %t16
  %t20 = load i64, ptr %l6, !tbaa !24
  %t23 = add i64 %t19, %t20
  %t25 = sub i64 %t23, 1
  %t26 = load i64, ptr %l6, !tbaa !24
  %t29 = sdiv i64 %t25, %t26
  store i64 %t29, ptr %l18, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb5
bb5:
  %t31 = load i64, ptr %l18, !tbaa !24
  store i64 %t31, ptr %l15, !tbaa !24
  br label %bb6
bb6:
  %t32 = load i64, ptr %l15, !tbaa !24
  store i64 %t32, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb7
bb7:
  %t33 = load i64, ptr %l8, !tbaa !24
  %t34 = load i64, ptr %l7, !tbaa !24
  %t37 = icmp slt i64 %t33, %t34
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb8, label %bb9
bb8:
  br label %bb17
bb9:
  br label %bb10
bb10:
  %t41 = load i64, ptr %l4, !tbaa !24
  %t42 = load i64, ptr %l8, !tbaa !24
  %t43 = load i64, ptr %l6, !tbaa !24
  %t46 = mul i64 %t42, %t43
  %t49 = add i64 %t41, %t46
  %t53 = getelementptr %"compiler/scope:Scoper", ptr %a0, i32 0, i32 169
  %t57 = call %"compiler/scope:verAtom" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e_2eAt_3ccompiler_2fscope_3averAtom_3e(ptr %v0, ptr %t53, i64 %t49)
  store %"compiler/scope:verAtom" %t57, ptr %l39
  br label %bb11
bb11:
  store %"compiler/scope:verAtom" %a1, ptr %l41
  %t61 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3averAtom(ptr %l39, ptr %l41)
  store i1 %t61, ptr %l43
  br label %bb12
bb12:
  %t62 = load i1, ptr %l43, !tbaa !21
  br i1 %t62, label %bb13, label %bb14
bb13:
  store i1 true, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t64 = load i64, ptr %l8, !tbaa !24
  %t66 = add i64 %t64, 1
  store i64 %t66, ptr %l8, !tbaa !24
  br label %bb7
bb17:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edisagree(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, { i64, [2 x i64] } %a2, { i64, [2 x i64] } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca { i64, [2 x i64] }
  %l7 = alloca i64
  %l10 = alloca i1
  %l14 = alloca i64
  %l25 = alloca ptr
  %l26 = alloca %"compiler/source:Span"
  %l27 = alloca %"compiler/diagmsg:Msg"
  %l28 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a2, ptr %l2
  store { i64, [2 x i64] } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load { i64, [2 x i64] }, ptr %l2
  %t3 = load { i64, [2 x i64] }, ptr %l3
  %t7 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejudgeOut(ptr %v0, ptr %t1, { i64, [2 x i64] } %t2, { i64, [2 x i64] } %t3)
  store i64 %t7, ptr %l7
  br label %bb1
bb1:
  %t8 = load i64, ptr @G_2ecompiler_2fscope_2eObliged, !tbaa !24
  %t9 = load i64, ptr %l7, !tbaa !24
  %t11 = icmp eq i64 %t9, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load { i64, [2 x i64] }, ptr %l3
  %t15 = load { i64, [2 x i64] }, ptr %l2
  %t19 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejudgeOut(ptr %v0, ptr %t13, { i64, [2 x i64] } %t14, { i64, [2 x i64] } %t15)
  store i64 %t19, ptr %l14
  br label %bb4
bb3:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb5
bb4:
  %t20 = load i64, ptr @G_2ecompiler_2fscope_2eObliged, !tbaa !24
  %t21 = load i64, ptr %l14, !tbaa !24
  %t23 = icmp eq i64 %t21, %t20
  store i1 %t23, ptr %l10, !tbaa !21
  br label %bb5
bb5:
  %t25 = load i1, ptr %l10, !tbaa !21
  br i1 %t25, label %bb6, label %bb7
bb6:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load { i64, [2 x i64] }, ptr %l2
  %t28 = load { i64, [2 x i64] }, ptr %l3
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eoblige(ptr %v0, ptr %t26, { i64, [2 x i64] } %t27, { i64, [2 x i64] } %t28, i1 true)
  br label %bb8
bb7:
  br label %bb9
bb8:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb9:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/scope:Scoper", ptr %t33, i32 0, i32 28
  %t36 = load i1, ptr %t35, !tbaa !21
  %t38 = xor i1 %t36, true
  br i1 %t38, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t41 = load ptr, ptr %l0, !tbaa !29
  store ptr %t41, ptr %l25, !tbaa !29
  store %"compiler/source:Span" %a1, ptr %l26
  %t43 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eScopeArgsDisagree(ptr %s0)
  store %"compiler/diagmsg:Msg" %t43, ptr %l27
  br label %bb13
bb13:
  %t44 = load ptr, ptr %l25, !tbaa !29
  %t45 = load %"compiler/source:Span", ptr %l26
  %t46 = load %"compiler/diagmsg:Msg", ptr %l27
  %t47 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %s0, ptr %t44, %"compiler/source:Span" %t45, %"compiler/diagmsg:Msg" %t46)
  store i64 %t47, ptr %l28
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s0)
  %t48 = load i64, ptr %l28, !tbaa !24
  store i64 %t48, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edropHome(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca { i64, [2 x i64] }
  %l7 = alloca ptr
  %l8 = alloca i1
  %l13 = alloca ptr
  %l14 = alloca i1
  %l25 = alloca { i64, [2 x i64] }
  %l27 = alloca i1
  %l29 = alloca ptr
  %l30 = alloca ptr
  %l33 = alloca { i64, [2 x i64] }
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 3
  store i1 %t8, ptr %l8, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l8, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb18
bb5:
  %t16 = load ptr, ptr %l2, !tbaa !29
  store ptr %t16, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t17 = load ptr, ptr %l13, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb6, label %bb7
bb6:
  %t20 = load ptr, ptr %l13, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 8}
  %t23 = icmp eq i64 %t21, 0
  store i1 %t23, ptr %l14, !tbaa !21
  br label %bb7
bb7:
  %t24 = load i1, ptr %l14, !tbaa !21
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t25 = load ptr, ptr %l2, !tbaa !29
  %t27 = getelementptr { i64, [4 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t27, i32 0, i32 0
  %t29 = load %"compiler/source:Span", ptr %t28
  store %"compiler/source:Span" %t29, ptr %l3
  %t31 = load ptr, ptr %l2, !tbaa !29
  %t33 = getelementptr { i64, [4 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t33, i32 0, i32 1
  %t35 = load i32, ptr %t34
  store i32 %t35, ptr %l4, !tbaa !23
  %t37 = load ptr, ptr %l2, !tbaa !29
  %t39 = getelementptr { i64, [4 x i64] }, ptr %t37, i32 0, i32 1
  %t40 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t39, i32 0, i32 2
  %t41 = load i32, ptr %t40
  store i32 %t41, ptr %l5, !tbaa !23
  br label %ret
bb9:
  br label %bb10
bb10:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = load ptr, ptr %l2, !tbaa !29
  %t47 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epeekPlace(ptr %v0, ptr %v1, ptr %t43, ptr %t44, i1 false)
  store { i64, [2 x i64] } %t47, ptr %l25
  br label %bb11
bb11:
  %t48 = load { i64, [2 x i64] }, ptr %l25
  store { i64, [2 x i64] } %t48, ptr %l6
  %t49 = load { i64, [2 x i64] }, ptr %l6
  %t51 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t49)
  store i1 %t51, ptr %l27
  br label %bb12
bb12:
  %t52 = load i1, ptr %l27, !tbaa !21
  br i1 %t52, label %bb13, label %bb14
bb13:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/scope:Scoper", ptr %t53, i32 0, i32 33
  store ptr %t55, ptr %l29, !tbaa !29
  %t56 = load ptr, ptr %l1, !tbaa !29
  store ptr %t56, ptr %l30, !tbaa !29
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load { i64, [2 x i64] }, ptr %l6
  %t61 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2escopeOf(ptr %v0, ptr %t57, { i64, [2 x i64] } %t58)
  store { i64, [2 x i64] } %t61, ptr %l33
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t62 = load ptr, ptr %l29, !tbaa !29
  %t63 = load ptr, ptr %l30, !tbaa !29
  %t64 = load { i64, [2 x i64] }, ptr %l33
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2eDropHome(ptr %v0, ptr %v1, ptr %t62, ptr %t63, { i64, [2 x i64] } %t64)
  br label %bb16
bb16:
  br label %bb17
bb17:
  br label %bb23
bb18:
  br i1 true, label %bb19, label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb23
bb22:
  call void @__olang_check_failed(ptr @olang_loc_e91a00981d6f64a8_cc82ef7defd2ad24)
  unreachable
bb23:
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eeqAfter(ptr %v0, ptr %a0, %"compiler/source:Span" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i8
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l9 = alloca ptr
  %l17 = alloca { i64, ptr }
  %l18 = alloca i32
  %l25 = alloca i1
  %l26 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l36 = alloca i1
  %l39 = alloca i1
  %l46 = alloca i1
  %l49 = alloca i1
  %l56 = alloca i1
  %l64 = alloca i1
  %l65 = alloca { i64, ptr }
  %l77 = alloca i1
  %l78 = alloca { i64, ptr }
  %l83 = alloca i1
  %l84 = alloca { i64, ptr }
  %l89 = alloca i1
  %l90 = alloca { i64, ptr }
  %l95 = alloca i1
  %l96 = alloca { i64, ptr }
  %l100 = alloca i1
  %l110 = alloca %"compiler/source:Span"
  %s6 = alloca %olang.scope
  %rv = alloca %"compiler/source:Span"
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 11
  store ptr %t3, ptr %l9, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/scope:Scoper", ptr %t4, i32 0, i32 26
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = icmp eq ptr %t7, null
  br i1 %t9, label %bb1, label %bb2
bb1:
  call void @__olang_check_failed(ptr @olang_loc_7b1e363353e9e01f_5d568e34003a167b)
  unreachable
bb2:
  br label %bb3
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/scope:Scoper", ptr %t11, i32 0, i32 26
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t17 = getelementptr %"compiler/typed:Body", ptr %t14, i32 0, i32 3
  %t18 = load i64, ptr %t17, !tbaa !24
  %t19 = load ptr, ptr %l9, !tbaa !29
  %t21 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %v0, ptr %v0, ptr %t19, i64 %t18)
  %t22 = extractvalue { i32, { i64, ptr } } %t21, 1
  %t23 = extractvalue { i32, { i64, ptr } } %t21, 0
  store i32 %t23, ptr %l18
  %t24 = icmp ne i32 %t23, 0
  br i1 %t24, label %bb5, label %ok.25, !prof !99
ok.25:
  store { i64, ptr } %t22, ptr %l17
  br label %bb4
bb4:
  %t26 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t26, ptr %l7, !tbaa !27
  br label %bb7
bb5:
  br label %bb6
bb6:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, ptr %l7, !tbaa !27
  br label %bb7
bb7:
  %t27 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t27, ptr %l2, !tbaa !27
  %t28 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 1
  %t29 = load i32, ptr %t28, !tbaa !23
  %t31 = sext i32 %t29 to i64
  store i64 %t31, ptr %l3, !tbaa !24
  store i64 0, ptr %l4, !tbaa !24
  br label %bb8
bb8:
  %t33 = load i64, ptr %l3, !tbaa !24
  %t34 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t36 = extractvalue { i64, ptr } %t34, 0
  %t39 = icmp slt i64 %t33, %t36
  br i1 %t39, label %bb9, label %bb10
bb9:
  %t41 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t41, ptr %l26, !tbaa !27
  %t42 = load i64, ptr %l3, !tbaa !24
  %t44 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !27
  %t46 = getelementptr i8, ptr %t45, i64 %t42
  %t47 = load i8, ptr %t46, !tbaa !32
  %t49 = icmp ne i8 %t47, 10
  store i1 %t49, ptr %l25, !tbaa !21
  br label %bb11
bb10:
  store i1 false, ptr %l25, !tbaa !21
  br label %bb11
bb11:
  %t51 = load i1, ptr %l25, !tbaa !21
  %t52 = xor i1 %t51, true
  br i1 %t52, label %bb12, label %bb13
bb12:
  br label %bb66
bb13:
  br label %bb14
bb14:
  %t54 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t54, ptr %l31, !tbaa !27
  %t55 = load i64, ptr %l3, !tbaa !24
  %t57 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !27
  %t59 = getelementptr i8, ptr %t58, i64 %t55
  %t60 = load i8, ptr %t59, !tbaa !32
  store i8 %t60, ptr %l5, !tbaa !22
  %t62 = load i8, ptr %l5, !tbaa !22
  %t64 = icmp eq i8 %t62, 40
  br i1 %t64, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l36, !tbaa !21
  br label %bb17
bb16:
  %t66 = load i8, ptr %l5, !tbaa !22
  %t68 = icmp eq i8 %t66, 91
  store i1 %t68, ptr %l36, !tbaa !21
  br label %bb17
bb17:
  %t70 = load i1, ptr %l36, !tbaa !21
  br i1 %t70, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l39, !tbaa !21
  br label %bb20
bb19:
  %t71 = load i8, ptr %l5, !tbaa !22
  %t73 = icmp eq i8 %t71, 123
  store i1 %t73, ptr %l39, !tbaa !21
  br label %bb20
bb20:
  %t75 = load i1, ptr %l39, !tbaa !21
  br i1 %t75, label %bb21, label %bb22
bb21:
  %t76 = load i64, ptr %l4, !tbaa !24
  %t78 = add i64 %t76, 1
  store i64 %t78, ptr %l4, !tbaa !24
  br label %bb64
bb22:
  %t80 = load i8, ptr %l5, !tbaa !22
  %t82 = icmp eq i8 %t80, 41
  br i1 %t82, label %bb23, label %bb24
bb23:
  store i1 true, ptr %l46, !tbaa !21
  br label %bb25
bb24:
  %t84 = load i8, ptr %l5, !tbaa !22
  %t86 = icmp eq i8 %t84, 93
  store i1 %t86, ptr %l46, !tbaa !21
  br label %bb25
bb25:
  %t88 = load i1, ptr %l46, !tbaa !21
  br i1 %t88, label %bb26, label %bb27
bb26:
  store i1 true, ptr %l49, !tbaa !21
  br label %bb28
bb27:
  %t89 = load i8, ptr %l5, !tbaa !22
  %t91 = icmp eq i8 %t89, 125
  store i1 %t91, ptr %l49, !tbaa !21
  br label %bb28
bb28:
  %t93 = load i1, ptr %l49, !tbaa !21
  br i1 %t93, label %bb29, label %bb30
bb29:
  %t94 = load i64, ptr %l4, !tbaa !24
  %t96 = sub i64 %t94, 1
  store i64 %t96, ptr %l4, !tbaa !24
  br label %bb63
bb30:
  %t98 = load i8, ptr %l5, !tbaa !22
  %t100 = icmp eq i8 %t98, 61
  br i1 %t100, label %bb31, label %bb32
bb31:
  %t102 = load i64, ptr %l4, !tbaa !24
  %t104 = icmp eq i64 %t102, 0
  store i1 %t104, ptr %l56, !tbaa !21
  br label %bb33
bb32:
  store i1 false, ptr %l56, !tbaa !21
  br label %bb33
bb33:
  %t106 = load i1, ptr %l56, !tbaa !21
  br i1 %t106, label %bb34, label %bb35
bb34:
  store %olang.scope zeroinitializer, ptr %s6
  %t107 = load i64, ptr %l3, !tbaa !24
  %t109 = add i64 %t107, 1
  %t110 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t112 = extractvalue { i64, ptr } %t110, 0
  %t115 = icmp slt i64 %t109, %t112
  br i1 %t115, label %bb36, label %bb37
bb35:
  br label %bb62
bb36:
  %t117 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t117, ptr %l65, !tbaa !27
  %t118 = load i64, ptr %l3, !tbaa !24
  %t120 = add i64 %t118, 1
  %t122 = getelementptr { i64, ptr }, ptr %l65, i32 0, i32 1
  %t123 = load ptr, ptr %t122, !tbaa !27
  %t124 = getelementptr i8, ptr %t123, i64 %t120
  %t125 = load i8, ptr %t124, !tbaa !32
  %t127 = icmp eq i8 %t125, 61
  store i1 %t127, ptr %l64, !tbaa !21
  br label %bb38
bb37:
  store i1 false, ptr %l64, !tbaa !21
  br label %bb38
bb38:
  %t129 = load i1, ptr %l64, !tbaa !21
  br i1 %t129, label %bb39, label %bb40
bb39:
  %t130 = load i64, ptr %l3, !tbaa !24
  %t132 = add i64 %t130, 2
  store i64 %t132, ptr %l3, !tbaa !24
  call void @__olang_scope_close(ptr %s6)
  br label %bb65
bb40:
  br label %bb41
bb41:
  %t134 = load i64, ptr %l3, !tbaa !24
  store i64 %t134, ptr %l6, !tbaa !24
  br label %bb42
bb42:
  %t136 = load i64, ptr %l6, !tbaa !24
  %t137 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 1
  %t138 = load i32, ptr %t137, !tbaa !23
  %t140 = sext i32 %t138 to i64
  %t143 = icmp sgt i64 %t136, %t140
  br i1 %t143, label %bb43, label %bb44
bb43:
  %t145 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t145, ptr %l78, !tbaa !27
  %t146 = load i64, ptr %l6, !tbaa !24
  %t148 = sub i64 %t146, 1
  %t150 = getelementptr { i64, ptr }, ptr %l78, i32 0, i32 1
  %t151 = load ptr, ptr %t150, !tbaa !27
  %t152 = getelementptr i8, ptr %t151, i64 %t148
  %t153 = load i8, ptr %t152, !tbaa !32
  %t155 = icmp ne i8 %t153, 32
  store i1 %t155, ptr %l77, !tbaa !21
  br label %bb45
bb44:
  store i1 false, ptr %l77, !tbaa !21
  br label %bb45
bb45:
  %t157 = load i1, ptr %l77, !tbaa !21
  br i1 %t157, label %bb46, label %bb47
bb46:
  %t158 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t158, ptr %l84, !tbaa !27
  %t159 = load i64, ptr %l6, !tbaa !24
  %t161 = sub i64 %t159, 1
  %t163 = getelementptr { i64, ptr }, ptr %l84, i32 0, i32 1
  %t164 = load ptr, ptr %t163, !tbaa !27
  %t165 = getelementptr i8, ptr %t164, i64 %t161
  %t166 = load i8, ptr %t165, !tbaa !32
  %t168 = icmp ne i8 %t166, 41
  store i1 %t168, ptr %l83, !tbaa !21
  br label %bb48
bb47:
  store i1 false, ptr %l83, !tbaa !21
  br label %bb48
bb48:
  %t170 = load i1, ptr %l83, !tbaa !21
  br i1 %t170, label %bb49, label %bb50
bb49:
  %t171 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t171, ptr %l90, !tbaa !27
  %t172 = load i64, ptr %l6, !tbaa !24
  %t174 = sub i64 %t172, 1
  %t176 = getelementptr { i64, ptr }, ptr %l90, i32 0, i32 1
  %t177 = load ptr, ptr %t176, !tbaa !27
  %t178 = getelementptr i8, ptr %t177, i64 %t174
  %t179 = load i8, ptr %t178, !tbaa !32
  %t181 = icmp ne i8 %t179, 93
  store i1 %t181, ptr %l89, !tbaa !21
  br label %bb51
bb50:
  store i1 false, ptr %l89, !tbaa !21
  br label %bb51
bb51:
  %t183 = load i1, ptr %l89, !tbaa !21
  br i1 %t183, label %bb52, label %bb53
bb52:
  %t184 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t184, ptr %l96, !tbaa !27
  %t185 = load i64, ptr %l6, !tbaa !24
  %t187 = sub i64 %t185, 1
  %t189 = getelementptr { i64, ptr }, ptr %l96, i32 0, i32 1
  %t190 = load ptr, ptr %t189, !tbaa !27
  %t191 = getelementptr i8, ptr %t190, i64 %t187
  %t192 = load i8, ptr %t191, !tbaa !32
  %t194 = call i1 @compiler_2fscope_2eisNameChar(i8 %t192)
  store i1 %t194, ptr %l100
  br label %bb54
bb53:
  store i1 false, ptr %l95, !tbaa !21
  br label %bb55
bb54:
  %t195 = load i1, ptr %l100, !tbaa !21
  %t196 = xor i1 %t195, true
  store i1 %t196, ptr %l95, !tbaa !21
  br label %bb55
bb55:
  %t198 = load i1, ptr %l95, !tbaa !21
  %t199 = xor i1 %t198, true
  br i1 %t199, label %bb56, label %bb57
bb56:
  br label %bb60
bb57:
  br label %bb58
bb58:
  %t201 = load i64, ptr %l6, !tbaa !24
  %t203 = sub i64 %t201, 1
  store i64 %t203, ptr %l6, !tbaa !24
  br label %bb59
bb59:
  br label %bb42
bb60:
  %t205 = load i64, ptr %l6, !tbaa !24
  %t207 = trunc i64 %t205 to i32
  %t208 = load i64, ptr %l3, !tbaa !24
  %t210 = add i64 %t208, 1
  %t212 = trunc i64 %t210 to i32
  %t215 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s6, i32 %t207, i32 %t212)
  store %"compiler/source:Span" %t215, ptr %l110
  br label %bb61
bb61:
  call void @__olang_scope_close(ptr %s6)
  %t216 = load %"compiler/source:Span", ptr %l110
  store %"compiler/source:Span" %t216, ptr %rv
  br label %ret
bb62:
  br label %bb63
bb63:
  br label %bb64
bb64:
  %t217 = load i64, ptr %l3, !tbaa !24
  %t219 = add i64 %t217, 1
  store i64 %t219, ptr %l3, !tbaa !24
  br label %bb65
bb65:
  br label %bb8
bb66:
  %t221 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t221, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efieldDecl(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca i1
  %l24 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t6 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %s0, ptr %t1, ptr %a1)
  store ptr %t6, ptr %l7
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l7, !tbaa !29
  %t8 = call ptr @compiler_2fscope_2eunPassed(ptr %s0, ptr %s0, ptr %t7)
  store ptr %t8, ptr %l8
  br label %bb2
bb2:
  %t9 = load ptr, ptr %l8, !tbaa !29
  store ptr %t9, ptr %l2, !tbaa !29
  %t10 = load ptr, ptr %l2, !tbaa !29
  store ptr %t10, ptr %l10, !tbaa !29
  store i1 false, ptr %l11, !tbaa !21
  %t11 = load ptr, ptr %l10, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb3, label %bb4
bb3:
  %t14 = load ptr, ptr %l10, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 18}
  %t17 = icmp eq i64 %t15, 2
  store i1 %t17, ptr %l11, !tbaa !21
  br label %bb4
bb4:
  %t18 = load i1, ptr %l11, !tbaa !21
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t19 = load ptr, ptr %l2, !tbaa !29
  %t21 = getelementptr { i64, [5 x i64] }, ptr %t19, i32 0, i32 1
  %t22 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t21, i32 0, i32 2
  %t23 = load ptr, ptr %t22
  store ptr %t23, ptr %l3, !tbaa !29
  br label %bb11
bb6:
  %t25 = load ptr, ptr %l2, !tbaa !29
  store ptr %t25, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t26 = load ptr, ptr %l16, !tbaa !29
  %t27 = icmp ne ptr %t26, null
  br i1 %t27, label %bb7, label %bb8
bb7:
  %t29 = load ptr, ptr %l16, !tbaa !29
  %t30 = load i64, ptr %t29, !range !{i64 0, i64 18}
  %t32 = icmp eq i64 %t30, 3
  store i1 %t32, ptr %l17, !tbaa !21
  br label %bb8
bb8:
  %t33 = load i1, ptr %l17, !tbaa !21
  br i1 %t33, label %bb9, label %bb10
bb9:
  %t34 = load ptr, ptr %l2, !tbaa !29
  %t36 = getelementptr { i64, [5 x i64] }, ptr %t34, i32 0, i32 1
  %t37 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t36, i32 0, i32 2
  %t38 = load ptr, ptr %t37
  store ptr %t38, ptr %l3, !tbaa !29
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load ptr, ptr %l3, !tbaa !29
  %t44 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eplaceDecl(ptr %v0, ptr %s0, ptr %t40, ptr %t41)
  store i64 %t44, ptr %l24
  br label %bb12
bb12:
  %t45 = load i64, ptr %l24, !tbaa !24
  store i64 %t45, ptr %l9, !tbaa !24
  br label %bb18
bb13:
  br i1 true, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  store i64 -1, ptr %l9, !tbaa !24
  br label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_e3d7361eb9c064f6_d6d91699ddbb69ea)
  unreachable
bb18:
  call void @__olang_scope_close(ptr %s0)
  %t46 = load i64, ptr %l9, !tbaa !24
  store i64 %t46, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efieldPos(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca { i64, [1 x i64] }
  %l16 = alloca i64
  %l19 = alloca ptr
  %l24 = alloca i32
  %l25 = alloca { i64, ptr }
  %l28 = alloca i1
  %l35 = alloca { i64, ptr }
  %l38 = alloca i1
  %l39 = alloca i32
  %l43 = alloca { i64, ptr }
  %l46 = alloca i32
  %l47 = alloca { i64, ptr }
  %l50 = alloca i64
  %l54 = alloca i64
  %l55 = alloca i32
  %l58 = alloca i1
  %l61 = alloca i1
  %l67 = alloca ptr
  %l70 = alloca i64
  %l74 = alloca i64
  %l77 = alloca i64
  %l96 = alloca ptr
  %l100 = alloca i32
  %l102 = alloca %"compiler/typed:Local"
  %l110 = alloca { i64, [1 x i64] }
  %l119 = alloca i64
  %l122 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  store ptr %t6, ptr %l19, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/scope:Scoper", ptr %t7, i32 0, i32 0
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t12, i32 %a1)
  store i32 %t16, ptr %l24
  br label %bb1
bb1:
  %t17 = load ptr, ptr %l19, !tbaa !29
  %t18 = load i32, ptr %l24, !tbaa !23
  %t19 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t17, i32 %t18)
  store { i64, ptr } %t19, ptr %l25
  br label %bb2
bb2:
  %t20 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t20, ptr %l4, !tbaa !27
  %t21 = load i64, ptr %l3, !tbaa !24
  %t23 = icmp eq i64 %t21, 0
  br i1 %t23, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l28, !tbaa !21
  br label %bb5
bb4:
  %t25 = load i64, ptr %l2, !tbaa !24
  %t26 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t28 = extractvalue { i64, ptr } %t26, 0
  %t31 = icmp sge i64 %t25, %t28
  store i1 %t31, ptr %l28, !tbaa !21
  br label %bb5
bb5:
  %t33 = load i1, ptr %l28, !tbaa !21
  br i1 %t33, label %bb6, label %bb7
bb6:
  %t34 = load i64, ptr %l2, !tbaa !24
  store i64 %t34, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t37, ptr %l35, !tbaa !27
  %t38 = load i64, ptr %l2, !tbaa !24
  %t40 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !27
  %t42 = getelementptr i32, ptr %t41, i64 %t38
  %t43 = load i32, ptr %t42, !tbaa !33
  %t46 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t36, i32 %t43)
  store i1 %t46, ptr %l38
  br label %bb9
bb9:
  %t47 = load i1, ptr %l38, !tbaa !21
  br i1 %t47, label %bb10, label %bb11
bb10:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/scope:Scoper", ptr %t48, i32 0, i32 0
  %t51 = load ptr, ptr %t50, !tbaa !29
  %t53 = getelementptr %"compiler/generic:Program", ptr %t51, i32 0, i32 2
  %t54 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t54, ptr %l43, !tbaa !27
  %t55 = load i64, ptr %l2, !tbaa !24
  %t57 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !27
  %t59 = getelementptr i32, ptr %t58, i64 %t55
  %t60 = load i32, ptr %t59, !tbaa !33
  %t63 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t53, i32 %t60)
  store i32 %t63, ptr %l46
  br label %bb12
bb11:
  %t64 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t64, ptr %l47, !tbaa !27
  %t65 = load i64, ptr %l2, !tbaa !24
  %t67 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !27
  %t69 = getelementptr i32, ptr %t68, i64 %t65
  %t70 = load i32, ptr %t69, !tbaa !33
  store i32 %t70, ptr %l39, !tbaa !23
  br label %bb13
bb12:
  %t72 = load i32, ptr %l46, !tbaa !23
  store i32 %t72, ptr %l39, !tbaa !23
  br label %bb13
bb13:
  %t73 = load i32, ptr %l39, !tbaa !23
  store i32 %t73, ptr %l5, !tbaa !23
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/scope:Scoper", ptr %t74, i32 0, i32 7
  %t77 = load i32, ptr %l5, !tbaa !23
  %t80 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__H165e1ff795edcbb725e28dde18fd1dc2(ptr %v0, ptr %t76, i32 %t77)
  %t81 = extractvalue { i32, i64 } %t80, 1
  %t82 = extractvalue { i32, i64 } %t80, 0
  store i32 %t82, ptr %l55
  %t83 = icmp ne i32 %t82, 0
  br i1 %t83, label %bb15, label %ok.84, !prof !99
ok.84:
  store i64 %t81, ptr %l54
  br label %bb14
bb14:
  %t85 = load i64, ptr %l54, !tbaa !24
  store i64 %t85, ptr %l50, !tbaa !24
  br label %bb17
bb15:
  br label %bb16
bb16:
  store i64 -1, ptr %l50, !tbaa !24
  br label %bb17
bb17:
  %t86 = load i64, ptr %l50, !tbaa !24
  store i64 %t86, ptr %l6, !tbaa !24
  %t87 = load i64, ptr %l6, !tbaa !24
  %t89 = icmp slt i64 %t87, 0
  br i1 %t89, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l58, !tbaa !21
  br label %bb21
bb19:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load i32, ptr %l5, !tbaa !23
  %t95 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisStruct(ptr %v0, ptr %t91, i32 %t92)
  store i1 %t95, ptr %l61
  br label %bb20
bb20:
  %t96 = load i1, ptr %l61, !tbaa !21
  %t97 = xor i1 %t96, true
  store i1 %t97, ptr %l58, !tbaa !21
  br label %bb21
bb21:
  %t99 = load i1, ptr %l58, !tbaa !21
  br i1 %t99, label %bb22, label %bb23
bb22:
  %t100 = load i64, ptr %l2, !tbaa !24
  store i64 %t100, ptr %rv
  br label %ret
bb23:
  br label %bb24
bb24:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/scope:Scoper", ptr %t102, i32 0, i32 1
  %t105 = load i64, ptr %l6, !tbaa !24
  %t108 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t104, i64 %t105)
  store ptr %t108, ptr %l67
  br label %bb25
bb25:
  %t109 = load ptr, ptr %l67, !tbaa !29
  store ptr %t109, ptr %l7, !tbaa !29
  store i64 0, ptr %l8, !tbaa !24
  %t110 = load ptr, ptr %l7, !tbaa !29
  %t112 = getelementptr %"compiler/typed:Body", ptr %t110, i32 0, i32 10
  %t114 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t112)
  store i64 %t114, ptr %l70
  br label %bb26
bb26:
  %t115 = load i64, ptr %l70, !tbaa !24
  store i64 %t115, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t116 = load i64, ptr %l9, !tbaa !24
  %t117 = load i64, ptr %l8, !tbaa !24
  %t120 = icmp sgt i64 %t116, %t117
  br i1 %t120, label %bb27, label %bb28
bb27:
  %t122 = load i64, ptr %l10, !tbaa !24
  %t124 = icmp sgt i64 %t122, 0
  br i1 %t124, label %bb29, label %bb30
bb28:
  store i64 0, ptr %l74, !tbaa !24
  br label %bb32
bb29:
  %t126 = load i64, ptr %l9, !tbaa !24
  %t127 = load i64, ptr %l8, !tbaa !24
  %t130 = sub i64 %t126, %t127
  %t131 = load i64, ptr %l10, !tbaa !24
  %t134 = add i64 %t130, %t131
  %t136 = sub i64 %t134, 1
  %t137 = load i64, ptr %l10, !tbaa !24
  %t140 = sdiv i64 %t136, %t137
  store i64 %t140, ptr %l77, !tbaa !24
  br label %bb31
bb30:
  store i64 0, ptr %l77, !tbaa !24
  br label %bb31
bb31:
  %t142 = load i64, ptr %l77, !tbaa !24
  store i64 %t142, ptr %l74, !tbaa !24
  br label %bb32
bb32:
  %t143 = load i64, ptr %l74, !tbaa !24
  store i64 %t143, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb33
bb33:
  %t144 = load i64, ptr %l12, !tbaa !24
  %t145 = load i64, ptr %l11, !tbaa !24
  %t148 = icmp slt i64 %t144, %t145
  %t150 = xor i1 %t148, true
  br i1 %t150, label %bb34, label %bb35
bb34:
  br label %bb51
bb35:
  br label %bb36
bb36:
  %t152 = load i64, ptr %l8, !tbaa !24
  %t153 = load i64, ptr %l12, !tbaa !24
  %t154 = load i64, ptr %l10, !tbaa !24
  %t157 = mul i64 %t153, %t154
  %t160 = add i64 %t152, %t157
  store i64 %t160, ptr %l13, !tbaa !24
  %t162 = load ptr, ptr %l7, !tbaa !29
  %t164 = getelementptr %"compiler/typed:Body", ptr %t162, i32 0, i32 7
  store ptr %t164, ptr %l96, !tbaa !29
  %t165 = load ptr, ptr %l7, !tbaa !29
  %t167 = getelementptr %"compiler/typed:Body", ptr %t165, i32 0, i32 10
  %t168 = load i64, ptr %l13, !tbaa !24
  %t171 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t167, i64 %t168)
  store i32 %t171, ptr %l100
  br label %bb37
bb37:
  %t172 = load i32, ptr %l100, !tbaa !23
  %t173 = sext i32 %t172 to i64
  %t174 = load ptr, ptr %l96, !tbaa !29
  %t176 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t174, i64 %t173)
  store %"compiler/typed:Local" %t176, ptr %l102
  br label %bb38
bb38:
  %t177 = getelementptr %"compiler/typed:Local", ptr %l102, i32 0, i32 0
  %t178 = load i32, ptr %t177, !tbaa !23
  %t180 = sext i32 %t178 to i64
  %t181 = load i64, ptr %l3, !tbaa !24
  %t184 = icmp ne i64 %t180, %t181
  br i1 %t184, label %bb39, label %bb40
bb39:
  br label %bb50
bb40:
  br label %bb41
bb41:
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t187 = load i32, ptr %l5, !tbaa !23
  %t188 = load i64, ptr %l13, !tbaa !24
  %t192 = call { i64, [1 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efieldMark(ptr %v0, ptr %t186, i32 %t187, i64 %t188)
  store { i64, [1 x i64] } %t192, ptr %l110
  br label %bb42
bb42:
  %t193 = load { i64, [1 x i64] }, ptr %l110
  store { i64, [1 x i64] } %t193, ptr %l14
  %t194 = load { i64, [1 x i64] }, ptr %l14
  %t196 = extractvalue { i64, [1 x i64] } %t194, 0
  %t197 = icmp eq i64 %t196, 2
  %t199 = xor i1 %t197, true
  br i1 %t199, label %bb43, label %bb44
bb43:
  %t201 = load i64, ptr %l2, !tbaa !24
  store i64 %t201, ptr %rv
  br label %ret
bb44:
  br label %bb45
bb45:
  %t203 = getelementptr { i64, [1 x i64] }, ptr %l14, i32 0, i32 1
  %t204 = getelementptr { i32 }, ptr %t203, i32 0, i32 0
  %t205 = load i32, ptr %t204
  %t207 = load ptr, ptr %l0, !tbaa !29
  %t208 = load i32, ptr %l5, !tbaa !23
  %t213 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ectorParamIndex(ptr %v0, ptr %t207, i32 %t208, i32 %t205)
  store i64 %t213, ptr %l119
  br label %bb46
bb46:
  %t214 = load i64, ptr %l119, !tbaa !24
  store i64 %t214, ptr %l16, !tbaa !24
  %t215 = load i64, ptr %l16, !tbaa !24
  %t217 = icmp sge i64 %t215, 0
  br i1 %t217, label %bb47, label %bb48
bb47:
  %t219 = load i64, ptr @G_2ecompiler_2fscope_2ePosDerived, !tbaa !24
  %t220 = load i64, ptr %l2, !tbaa !24
  %t222 = mul i64 65536, %t220
  %t225 = add i64 %t219, %t222
  %t226 = load i64, ptr %l16, !tbaa !24
  %t229 = add i64 %t225, %t226
  store i64 %t229, ptr %l122, !tbaa !24
  br label %bb49
bb48:
  %t231 = load i64, ptr %l2, !tbaa !24
  store i64 %t231, ptr %l122, !tbaa !24
  br label %bb49
bb49:
  %t233 = load i64, ptr %l122, !tbaa !24
  store i64 %t233, ptr %rv
  br label %ret
bb50:
  %t234 = load i64, ptr %l12, !tbaa !24
  %t236 = add i64 %t234, 1
  store i64 %t236, ptr %l12, !tbaa !24
  br label %bb33
bb51:
  %t238 = load i64, ptr %l2, !tbaa !24
  store i64 %t238, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflStmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca i1
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca ptr
  %l15 = alloca i64
  %l16 = alloca i64
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
  %l28 = alloca ptr
  %l29 = alloca ptr
  %l32 = alloca ptr
  %l33 = alloca i1
  %l43 = alloca ptr
  %l45 = alloca i64
  %l55 = alloca %"compiler/typed:Local"
  %l59 = alloca ptr
  %l60 = alloca i1
  %l74 = alloca i64
  %l75 = alloca i1
  %l76 = alloca ptr
  %l77 = alloca i1
  %l80 = alloca ptr
  %l81 = alloca i64
  %l83 = alloca i32
  %l85 = alloca ptr
  %l87 = alloca i1
  %l88 = alloca i1
  %l91 = alloca i1
  %l94 = alloca i1
  %l96 = alloca ptr
  %l97 = alloca i1
  %l105 = alloca ptr
  %l106 = alloca i1
  %l122 = alloca ptr
  %l123 = alloca i1
  %l135 = alloca ptr
  %l136 = alloca i1
  %l148 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l158 = alloca i64
  %l160 = alloca i64
  %l165 = alloca i64
  %l171 = alloca i1
  %l180 = alloca i1
  %l182 = alloca ptr
  %l183 = alloca i1
  %l195 = alloca ptr
  %l196 = alloca i1
  %l203 = alloca ptr
  %l204 = alloca i1
  %l212 = alloca ptr
  %l213 = alloca i1
  %l221 = alloca ptr
  %l222 = alloca i1
  %l239 = alloca { i64, ptr }
  %l247 = alloca ptr
  %l248 = alloca i1
  %l260 = alloca i1
  %l264 = alloca i1
  %l266 = alloca ptr
  %l267 = alloca i1
  %l278 = alloca i1
  %l281 = alloca i1
  %l283 = alloca ptr
  %l284 = alloca i1
  %l294 = alloca i1
  %l295 = alloca ptr
  %l299 = alloca i1
  %s11 = alloca %olang.scope
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
  store ptr %t5, ptr %l32, !tbaa !29
  store i1 false, ptr %l33, !tbaa !21
  %t6 = load ptr, ptr %l32, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l32, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 17}
  %t12 = icmp eq i64 %t10, 0
  store i1 %t12, ptr %l33, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l33, !tbaa !21
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
  br label %bb15
bb8:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflExpr(ptr %v0, ptr %v1, ptr %t26, ptr %t27)
  br label %bb9
bb9:
  %t31 = load ptr, ptr %l0, !tbaa !29
  store ptr %t31, ptr %l43, !tbaa !29
  %t32 = load i32, ptr %l2, !tbaa !23
  %t34 = sext i32 %t32 to i64
  store i64 %t34, ptr %l45, !tbaa !24
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/scope:Scoper", ptr %t35, i32 0, i32 26
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t40 = icmp eq ptr %t38, null
  br i1 %t40, label %bb10, label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_6038e9a8843bd167_10c714601f259253)
  unreachable
bb11:
  br label %bb12
bb12:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/scope:Scoper", ptr %t42, i32 0, i32 26
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t48 = getelementptr %"compiler/typed:Body", ptr %t45, i32 0, i32 7
  %t49 = load i32, ptr %l2, !tbaa !23
  %t51 = sext i32 %t49 to i64
  %t54 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t48, i64 %t51)
  store %"compiler/typed:Local" %t54, ptr %l55
  br label %bb13
bb13:
  %t55 = getelementptr %"compiler/typed:Local", ptr %l55, i32 0, i32 2
  %t56 = load i32, ptr %t55, !tbaa !23
  %t57 = load ptr, ptr %l3, !tbaa !29
  %t59 = load ptr, ptr %l43, !tbaa !29
  %t60 = load i64, ptr %l45, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflInto(ptr %v0, ptr %v1, ptr %t59, i64 %t60, i32 %t56, ptr %t57, i1 false, i1 true)
  br label %bb14
bb14:
  br label %bb196
bb15:
  %t63 = load ptr, ptr %l1, !tbaa !29
  store ptr %t63, ptr %l59, !tbaa !29
  store i1 false, ptr %l60, !tbaa !21
  %t64 = load ptr, ptr %l59, !tbaa !29
  %t65 = icmp ne ptr %t64, null
  br i1 %t65, label %bb16, label %bb17
bb16:
  %t67 = load ptr, ptr %l59, !tbaa !29
  %t68 = load i64, ptr %t67, !range !{i64 0, i64 17}
  %t70 = icmp eq i64 %t68, 1
  store i1 %t70, ptr %l60, !tbaa !21
  br label %bb17
bb17:
  %t71 = load i1, ptr %l60, !tbaa !21
  br i1 %t71, label %bb18, label %bb19
bb18:
  %t72 = load ptr, ptr %l1, !tbaa !29
  %t74 = getelementptr { i64, [3 x i64] }, ptr %t72, i32 0, i32 1
  %t75 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t74, i32 0, i32 1
  %t76 = load ptr, ptr %t75
  store ptr %t76, ptr %l4, !tbaa !29
  %t78 = load ptr, ptr %l1, !tbaa !29
  %t80 = getelementptr { i64, [3 x i64] }, ptr %t78, i32 0, i32 1
  %t81 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t80, i32 0, i32 2
  %t82 = load ptr, ptr %t81
  store ptr %t82, ptr %l5, !tbaa !29
  br label %bb20
bb19:
  br label %bb45
bb20:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t85 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflPlace(ptr %v0, ptr %v1, ptr %t84, ptr %t85)
  br label %bb21
bb21:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t89 = load ptr, ptr %l5, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflExpr(ptr %v0, ptr %v1, ptr %t88, ptr %t89)
  br label %bb22
bb22:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t94 = load ptr, ptr %l4, !tbaa !29
  %t97 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflPlaceRoot(ptr %v0, ptr %v1, ptr %t93, ptr %t94)
  store i64 %t97, ptr %l74
  br label %bb23
bb23:
  %t98 = load i64, ptr %l74, !tbaa !24
  store i64 %t98, ptr %l6, !tbaa !24
  %t99 = load ptr, ptr %l4, !tbaa !29
  store ptr %t99, ptr %l76, !tbaa !29
  store i1 false, ptr %l77, !tbaa !21
  %t100 = load ptr, ptr %l76, !tbaa !29
  %t101 = icmp ne ptr %t100, null
  br i1 %t101, label %bb24, label %bb25
bb24:
  %t103 = load ptr, ptr %l76, !tbaa !29
  %t104 = load i64, ptr %t103, !range !{i64 0, i64 8}
  %t106 = icmp eq i64 %t104, 0
  store i1 %t106, ptr %l77, !tbaa !21
  br label %bb25
bb25:
  %t107 = load i1, ptr %l77, !tbaa !21
  br i1 %t107, label %bb26, label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb29
bb28:
  store i1 true, ptr %l75, !tbaa !21
  br label %bb34
bb29:
  br i1 true, label %bb30, label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb33
bb32:
  store i1 false, ptr %l75, !tbaa !21
  br label %bb34
bb33:
  call void @__olang_check_failed(ptr @olang_loc_c1fa5f0b83cd997f_623e25aaa52b89ab)
  unreachable
bb34:
  %t108 = load i1, ptr %l75, !tbaa !21
  store i1 %t108, ptr %l7, !tbaa !21
  %t109 = load ptr, ptr %l0, !tbaa !29
  store ptr %t109, ptr %l80, !tbaa !29
  %t110 = load i64, ptr %l6, !tbaa !24
  store i64 %t110, ptr %l81, !tbaa !24
  %t111 = load ptr, ptr %l4, !tbaa !29
  %t113 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t111)
  store i32 %t113, ptr %l83
  br label %bb35
bb35:
  %t114 = load ptr, ptr %l5, !tbaa !29
  store ptr %t114, ptr %l85, !tbaa !29
  %t116 = load ptr, ptr %l4, !tbaa !29
  %t118 = call i1 @compiler_2fscope_2eflThroughRef(ptr %v1, ptr %t116)
  store i1 %t118, ptr %l87
  br label %bb36
bb36:
  %t119 = load i1, ptr %l87, !tbaa !21
  br i1 %t119, label %bb37, label %bb38
bb37:
  store i1 true, ptr %l88, !tbaa !21
  br label %bb39
bb38:
  %t120 = load i64, ptr %l6, !tbaa !24
  %t122 = icmp slt i64 %t120, 0
  store i1 %t122, ptr %l88, !tbaa !21
  br label %bb39
bb39:
  %t124 = load i1, ptr %l88, !tbaa !21
  br i1 %t124, label %bb40, label %bb41
bb40:
  store i1 true, ptr %l91, !tbaa !21
  br label %bb43
bb41:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t126 = load i64, ptr %l6, !tbaa !24
  %t129 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eoutside(ptr %v0, ptr %t125, i64 %t126)
  store i1 %t129, ptr %l94
  br label %bb42
bb42:
  %t130 = load i1, ptr %l94, !tbaa !21
  store i1 %t130, ptr %l91, !tbaa !21
  br label %bb43
bb43:
  %t131 = load i1, ptr %l7, !tbaa !21
  %t132 = load ptr, ptr %l80, !tbaa !29
  %t133 = load i64, ptr %l81, !tbaa !24
  %t134 = load i32, ptr %l83, !tbaa !23
  %t135 = load ptr, ptr %l85, !tbaa !29
  %t136 = load i1, ptr %l91, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflInto(ptr %v0, ptr %v1, ptr %t132, i64 %t133, i32 %t134, ptr %t135, i1 %t136, i1 %t131)
  br label %bb44
bb44:
  br label %bb196
bb45:
  %t138 = load ptr, ptr %l1, !tbaa !29
  store ptr %t138, ptr %l96, !tbaa !29
  store i1 false, ptr %l97, !tbaa !21
  %t139 = load ptr, ptr %l96, !tbaa !29
  %t140 = icmp ne ptr %t139, null
  br i1 %t140, label %bb46, label %bb47
bb46:
  %t142 = load ptr, ptr %l96, !tbaa !29
  %t143 = load i64, ptr %t142, !range !{i64 0, i64 17}
  %t145 = icmp eq i64 %t143, 2
  store i1 %t145, ptr %l97, !tbaa !21
  br label %bb47
bb47:
  %t146 = load i1, ptr %l97, !tbaa !21
  br i1 %t146, label %bb48, label %bb49
bb48:
  %t147 = load ptr, ptr %l1, !tbaa !29
  %t149 = getelementptr { i64, [3 x i64] }, ptr %t147, i32 0, i32 1
  %t150 = getelementptr { %"compiler/source:Span", ptr }, ptr %t149, i32 0, i32 1
  %t151 = load ptr, ptr %t150
  store ptr %t151, ptr %l8, !tbaa !29
  br label %bb50
bb49:
  br label %bb52
bb50:
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t154 = load ptr, ptr %l8, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflExpr(ptr %v0, ptr %v1, ptr %t153, ptr %t154)
  br label %bb51
bb51:
  br label %bb196
bb52:
  %t158 = load ptr, ptr %l1, !tbaa !29
  store ptr %t158, ptr %l105, !tbaa !29
  store i1 false, ptr %l106, !tbaa !21
  %t159 = load ptr, ptr %l105, !tbaa !29
  %t160 = icmp ne ptr %t159, null
  br i1 %t160, label %bb53, label %bb54
bb53:
  %t162 = load ptr, ptr %l105, !tbaa !29
  %t163 = load i64, ptr %t162, !range !{i64 0, i64 17}
  %t165 = icmp eq i64 %t163, 3
  store i1 %t165, ptr %l106, !tbaa !21
  br label %bb54
bb54:
  %t166 = load i1, ptr %l106, !tbaa !21
  br i1 %t166, label %bb55, label %bb56
bb55:
  %t167 = load ptr, ptr %l1, !tbaa !29
  %t169 = getelementptr { i64, [3 x i64] }, ptr %t167, i32 0, i32 1
  %t170 = getelementptr { %"compiler/source:Span", ptr }, ptr %t169, i32 0, i32 1
  %t171 = load ptr, ptr %t170
  store ptr %t171, ptr %l9, !tbaa !29
  br label %bb57
bb56:
  br label %bb61
bb57:
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t174 = load ptr, ptr %l9, !tbaa !29
  %t176 = getelementptr %"compiler/typed:If", ptr %t174, i32 0, i32 0
  %t177 = load ptr, ptr %t176, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflExpr(ptr %v0, ptr %v1, ptr %t173, ptr %t177)
  br label %bb58
bb58:
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t182 = load ptr, ptr %l9, !tbaa !29
  %t184 = getelementptr %"compiler/typed:If", ptr %t182, i32 0, i32 1
  %t185 = load ptr, ptr %t184, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflBlockOf(ptr %v0, ptr %v1, ptr %t181, ptr %t185)
  br label %bb59
bb59:
  %t189 = load ptr, ptr %l0, !tbaa !29
  %t190 = load ptr, ptr %l9, !tbaa !29
  %t192 = getelementptr %"compiler/typed:If", ptr %t190, i32 0, i32 2
  %t193 = load ptr, ptr %t192, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflBlockOf(ptr %v0, ptr %v1, ptr %t189, ptr %t193)
  br label %bb60
bb60:
  br label %bb196
bb61:
  %t196 = load ptr, ptr %l1, !tbaa !29
  store ptr %t196, ptr %l122, !tbaa !29
  store i1 false, ptr %l123, !tbaa !21
  %t197 = load ptr, ptr %l122, !tbaa !29
  %t198 = icmp ne ptr %t197, null
  br i1 %t198, label %bb62, label %bb63
bb62:
  %t200 = load ptr, ptr %l122, !tbaa !29
  %t201 = load i64, ptr %t200, !range !{i64 0, i64 17}
  %t203 = icmp eq i64 %t201, 4
  store i1 %t203, ptr %l123, !tbaa !21
  br label %bb63
bb63:
  %t204 = load i1, ptr %l123, !tbaa !21
  br i1 %t204, label %bb64, label %bb65
bb64:
  %t205 = load ptr, ptr %l1, !tbaa !29
  %t207 = getelementptr { i64, [3 x i64] }, ptr %t205, i32 0, i32 1
  %t208 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t207, i32 0, i32 1
  %t209 = load ptr, ptr %t208
  store ptr %t209, ptr %l10, !tbaa !29
  %t211 = load ptr, ptr %l1, !tbaa !29
  %t213 = getelementptr { i64, [3 x i64] }, ptr %t211, i32 0, i32 1
  %t214 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t213, i32 0, i32 2
  %t215 = load ptr, ptr %t214
  store ptr %t215, ptr %l11, !tbaa !29
  br label %bb66
bb65:
  br label %bb69
bb66:
  %t217 = load ptr, ptr %l0, !tbaa !29
  %t218 = load ptr, ptr %l10, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflBlockOf(ptr %v0, ptr %v1, ptr %t217, ptr %t218)
  br label %bb67
bb67:
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t223 = load ptr, ptr %l11, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflBlockOf(ptr %v0, ptr %v1, ptr %t222, ptr %t223)
  br label %bb68
bb68:
  br label %bb196
bb69:
  %t226 = load ptr, ptr %l1, !tbaa !29
  store ptr %t226, ptr %l135, !tbaa !29
  store i1 false, ptr %l136, !tbaa !21
  %t227 = load ptr, ptr %l135, !tbaa !29
  %t228 = icmp ne ptr %t227, null
  br i1 %t228, label %bb70, label %bb71
bb70:
  %t230 = load ptr, ptr %l135, !tbaa !29
  %t231 = load i64, ptr %t230, !range !{i64 0, i64 17}
  %t233 = icmp eq i64 %t231, 6
  store i1 %t233, ptr %l136, !tbaa !21
  br label %bb71
bb71:
  %t234 = load i1, ptr %l136, !tbaa !21
  br i1 %t234, label %bb72, label %bb73
bb72:
  %t235 = load ptr, ptr %l1, !tbaa !29
  %t237 = getelementptr { i64, [3 x i64] }, ptr %t235, i32 0, i32 1
  %t238 = getelementptr { %"compiler/source:Span", ptr }, ptr %t237, i32 0, i32 1
  %t239 = load ptr, ptr %t238
  store ptr %t239, ptr %l12, !tbaa !29
  br label %bb74
bb73:
  br label %bb103
bb74:
  %t241 = load ptr, ptr %l0, !tbaa !29
  %t242 = load ptr, ptr %l12, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflExpr(ptr %v0, ptr %v1, ptr %t241, ptr %t242)
  br label %bb75
bb75:
  %t245 = load ptr, ptr %l12, !tbaa !29
  %t247 = icmp eq ptr %t245, null
  br i1 %t247, label %bb76, label %bb77
bb76:
  br label %ret
bb77:
  br label %bb78
bb78:
  %t249 = load ptr, ptr %l0, !tbaa !29
  %t251 = getelementptr %"compiler/scope:Scoper", ptr %t249, i32 0, i32 137
  %t252 = load i64, ptr %t251, !tbaa !24
  %t254 = icmp eq i64 %t252, 0
  br i1 %t254, label %bb79, label %bb80
bb79:
  store %olang.scope zeroinitializer, ptr %s11
  %t256 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s11, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t256, ptr %l148
  br label %bb81
bb80:
  %t257 = load ptr, ptr %l0, !tbaa !29
  %t258 = load ptr, ptr %l12, !tbaa !29
  %t261 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecarries(ptr %v0, ptr %v1, ptr %t257, ptr %t258)
  store i1 %t261, ptr %l180
  br label %bb98
bb81:
  %t262 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l148
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t262, ptr %l13
  %t263 = load ptr, ptr %l0, !tbaa !29
  %t264 = load ptr, ptr %l12, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecarried(ptr %v0, ptr %v1, ptr %s11, ptr %t263, ptr %t264, ptr %l13)
  br label %bb82
bb82:
  %t269 = load ptr, ptr %l0, !tbaa !29
  %t270 = load ptr, ptr %l12, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ereturnedArrays(ptr %v0, ptr %v1, ptr %s11, ptr %t269, ptr %t270, ptr %l13)
  br label %bb83
bb83:
  store ptr %l13, ptr %l14, !tbaa !29
  store i64 0, ptr %l15, !tbaa !24
  br label %bb84
bb84:
  %t276 = load i64, ptr %l15, !tbaa !24
  store i64 %t276, ptr %l158, !tbaa !24
  %t277 = load ptr, ptr %l14, !tbaa !29
  %t279 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s11, ptr %t277)
  store i64 %t279, ptr %l160
  br label %bb85
bb85:
  %t280 = load i64, ptr %l158, !tbaa !24
  %t281 = load i64, ptr %l160, !tbaa !24
  %t282 = icmp slt i64 %t280, %t281
  %t284 = xor i1 %t282, true
  br i1 %t284, label %bb86, label %bb87
bb86:
  br label %bb97
bb87:
  br label %bb88
bb88:
  %t286 = load ptr, ptr %l14, !tbaa !29
  %t287 = load i64, ptr %l15, !tbaa !24
  %t290 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s11, ptr %t286, i64 %t287)
  store i64 %t290, ptr %l165
  br label %bb89
bb89:
  %t291 = load i64, ptr %l165, !tbaa !24
  store i64 %t291, ptr %l16, !tbaa !24
  %t292 = load ptr, ptr %l0, !tbaa !29
  %t293 = load i64, ptr %l16, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflAdd(ptr %v0, ptr %t292, i64 %t293)
  br label %bb90
bb90:
  %t296 = load ptr, ptr %l0, !tbaa !29
  %t298 = getelementptr %"compiler/scope:Scoper", ptr %t296, i32 0, i32 135
  %t299 = load i64, ptr %l16, !tbaa !24
  %t302 = call i1 @compiler_2fscope_2eflHas(ptr %v0, ptr %t298, i64 %t299)
  store i1 %t302, ptr %l171
  br label %bb91
bb91:
  %t303 = load i1, ptr %l171, !tbaa !21
  %t304 = xor i1 %t303, true
  br i1 %t304, label %bb92, label %bb93
bb92:
  %t306 = load ptr, ptr %l0, !tbaa !29
  %t308 = getelementptr %"compiler/scope:Scoper", ptr %t306, i32 0, i32 135
  %t309 = load i64, ptr %l16, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t308, i64 %t309)
  br label %bb94
bb93:
  br label %bb95
bb94:
  br label %bb95
bb95:
  br label %bb96
bb96:
  %t312 = load i64, ptr %l15, !tbaa !24
  %t314 = add i64 %t312, 1
  store i64 %t314, ptr %l15, !tbaa !24
  br label %bb84
bb97:
  call void @__olang_scope_close(ptr %s11)
  br label %bb102
bb98:
  %t316 = load i1, ptr %l180, !tbaa !21
  br i1 %t316, label %bb99, label %bb100
bb99:
  %t317 = load ptr, ptr %l0, !tbaa !29
  %t319 = getelementptr %"compiler/scope:Scoper", ptr %t317, i32 0, i32 136
  store i1 true, ptr %t319, !tbaa !21
  br label %bb101
bb100:
  br label %bb101
bb101:
  br label %bb102
bb102:
  br label %bb196
bb103:
  %t320 = load ptr, ptr %l1, !tbaa !29
  store ptr %t320, ptr %l182, !tbaa !29
  store i1 false, ptr %l183, !tbaa !21
  %t321 = load ptr, ptr %l182, !tbaa !29
  %t322 = icmp ne ptr %t321, null
  br i1 %t322, label %bb104, label %bb105
bb104:
  %t324 = load ptr, ptr %l182, !tbaa !29
  %t325 = load i64, ptr %t324, !range !{i64 0, i64 17}
  %t327 = icmp eq i64 %t325, 10
  store i1 %t327, ptr %l183, !tbaa !21
  br label %bb105
bb105:
  %t328 = load i1, ptr %l183, !tbaa !21
  br i1 %t328, label %bb106, label %bb107
bb106:
  %t329 = load ptr, ptr %l1, !tbaa !29
  %t331 = getelementptr { i64, [3 x i64] }, ptr %t329, i32 0, i32 1
  %t332 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t331, i32 0, i32 1
  %t333 = load ptr, ptr %t332
  store ptr %t333, ptr %l17, !tbaa !29
  %t335 = load ptr, ptr %l1, !tbaa !29
  %t337 = getelementptr { i64, [3 x i64] }, ptr %t335, i32 0, i32 1
  %t338 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t337, i32 0, i32 2
  %t339 = load ptr, ptr %t338
  store ptr %t339, ptr %l18, !tbaa !29
  br label %bb108
bb107:
  br label %bb111
bb108:
  %t341 = load ptr, ptr %l0, !tbaa !29
  %t342 = load ptr, ptr %l17, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflExpr(ptr %v0, ptr %v1, ptr %t341, ptr %t342)
  br label %bb109
bb109:
  %t346 = load ptr, ptr %l0, !tbaa !29
  %t347 = load ptr, ptr %l18, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflExpr(ptr %v0, ptr %v1, ptr %t346, ptr %t347)
  br label %bb110
bb110:
  br label %bb196
bb111:
  %t350 = load ptr, ptr %l1, !tbaa !29
  store ptr %t350, ptr %l195, !tbaa !29
  store i1 false, ptr %l196, !tbaa !21
  %t351 = load ptr, ptr %l195, !tbaa !29
  %t352 = icmp ne ptr %t351, null
  br i1 %t352, label %bb112, label %bb113
bb112:
  %t354 = load ptr, ptr %l195, !tbaa !29
  %t355 = load i64, ptr %t354, !range !{i64 0, i64 17}
  %t357 = icmp eq i64 %t355, 9
  store i1 %t357, ptr %l196, !tbaa !21
  br label %bb113
bb113:
  %t358 = load i1, ptr %l196, !tbaa !21
  br i1 %t358, label %bb114, label %bb115
bb114:
  %t359 = load ptr, ptr %l1, !tbaa !29
  %t361 = getelementptr { i64, [3 x i64] }, ptr %t359, i32 0, i32 1
  %t362 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t361, i32 0, i32 2
  %t363 = load ptr, ptr %t362
  store ptr %t363, ptr %l19, !tbaa !29
  br label %bb116
bb115:
  br label %bb118
bb116:
  %t365 = load ptr, ptr %l0, !tbaa !29
  %t366 = load ptr, ptr %l19, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflExpr(ptr %v0, ptr %v1, ptr %t365, ptr %t366)
  br label %bb117
bb117:
  br label %bb196
bb118:
  %t369 = load ptr, ptr %l1, !tbaa !29
  store ptr %t369, ptr %l203, !tbaa !29
  store i1 false, ptr %l204, !tbaa !21
  %t370 = load ptr, ptr %l203, !tbaa !29
  %t371 = icmp ne ptr %t370, null
  br i1 %t371, label %bb119, label %bb120
bb119:
  %t373 = load ptr, ptr %l203, !tbaa !29
  %t374 = load i64, ptr %t373, !range !{i64 0, i64 17}
  %t376 = icmp eq i64 %t374, 11
  store i1 %t376, ptr %l204, !tbaa !21
  br label %bb120
bb120:
  %t377 = load i1, ptr %l204, !tbaa !21
  br i1 %t377, label %bb121, label %bb122
bb121:
  %t378 = load ptr, ptr %l1, !tbaa !29
  %t380 = getelementptr { i64, [3 x i64] }, ptr %t378, i32 0, i32 1
  %t381 = getelementptr { %"compiler/source:Span", ptr }, ptr %t380, i32 0, i32 1
  %t382 = load ptr, ptr %t381
  store ptr %t382, ptr %l20, !tbaa !29
  br label %bb123
bb122:
  br label %bb125
bb123:
  %t384 = load ptr, ptr %l0, !tbaa !29
  %t385 = load ptr, ptr %l20, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflBlockOf(ptr %v0, ptr %v1, ptr %t384, ptr %t385)
  br label %bb124
bb124:
  br label %bb196
bb125:
  %t389 = load ptr, ptr %l1, !tbaa !29
  store ptr %t389, ptr %l212, !tbaa !29
  store i1 false, ptr %l213, !tbaa !21
  %t390 = load ptr, ptr %l212, !tbaa !29
  %t391 = icmp ne ptr %t390, null
  br i1 %t391, label %bb126, label %bb127
bb126:
  %t393 = load ptr, ptr %l212, !tbaa !29
  %t394 = load i64, ptr %t393, !range !{i64 0, i64 17}
  %t396 = icmp eq i64 %t394, 12
  store i1 %t396, ptr %l213, !tbaa !21
  br label %bb127
bb127:
  %t397 = load i1, ptr %l213, !tbaa !21
  br i1 %t397, label %bb128, label %bb129
bb128:
  %t398 = load ptr, ptr %l1, !tbaa !29
  %t400 = getelementptr { i64, [3 x i64] }, ptr %t398, i32 0, i32 1
  %t401 = getelementptr { %"compiler/source:Span", ptr }, ptr %t400, i32 0, i32 1
  %t402 = load ptr, ptr %t401
  store ptr %t402, ptr %l21, !tbaa !29
  br label %bb130
bb129:
  br label %bb132
bb130:
  %t404 = load ptr, ptr %l0, !tbaa !29
  %t405 = load ptr, ptr %l21, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflBlockOf(ptr %v0, ptr %v1, ptr %t404, ptr %t405)
  br label %bb131
bb131:
  br label %bb196
bb132:
  %t409 = load ptr, ptr %l1, !tbaa !29
  store ptr %t409, ptr %l221, !tbaa !29
  store i1 false, ptr %l222, !tbaa !21
  %t410 = load ptr, ptr %l221, !tbaa !29
  %t411 = icmp ne ptr %t410, null
  br i1 %t411, label %bb133, label %bb134
bb133:
  %t413 = load ptr, ptr %l221, !tbaa !29
  %t414 = load i64, ptr %t413, !range !{i64 0, i64 17}
  %t416 = icmp eq i64 %t414, 13
  store i1 %t416, ptr %l222, !tbaa !21
  br label %bb134
bb134:
  %t417 = load i1, ptr %l222, !tbaa !21
  br i1 %t417, label %bb135, label %bb136
bb135:
  %t418 = load ptr, ptr %l1, !tbaa !29
  %t420 = getelementptr { i64, [3 x i64] }, ptr %t418, i32 0, i32 1
  %t421 = getelementptr { %"compiler/source:Span", ptr }, ptr %t420, i32 0, i32 1
  %t422 = load ptr, ptr %t421
  store ptr %t422, ptr %l22, !tbaa !29
  br label %bb137
bb136:
  br label %bb146
bb137:
  %t424 = load ptr, ptr %l0, !tbaa !29
  %t425 = load ptr, ptr %l22, !tbaa !29
  %t427 = getelementptr %"compiler/typed:Join", ptr %t425, i32 0, i32 0
  %t428 = load ptr, ptr %t427, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflBlockOf(ptr %v0, ptr %v1, ptr %t424, ptr %t428)
  br label %bb138
bb138:
  %t432 = load ptr, ptr %l22, !tbaa !29
  %t434 = getelementptr %"compiler/typed:Join", ptr %t432, i32 0, i32 2
  %t435 = load { i64, ptr }, ptr %t434, !tbaa !27
  store { i64, ptr } %t435, ptr %l23, !tbaa !27
  store i64 0, ptr %l24, !tbaa !24
  %t437 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t439 = extractvalue { i64, ptr } %t437, 0
  store i64 %t439, ptr %l25, !tbaa !24
  br label %bb139
bb139:
  %t441 = load i64, ptr %l24, !tbaa !24
  %t442 = load i64, ptr %l25, !tbaa !24
  %t445 = icmp slt i64 %t441, %t442
  %t447 = xor i1 %t445, true
  br i1 %t447, label %bb140, label %bb141
bb140:
  br label %bb145
bb141:
  br label %bb142
bb142:
  %t449 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t449, ptr %l239, !tbaa !27
  %t450 = load i64, ptr %l24, !tbaa !24
  %t452 = getelementptr { i64, ptr }, ptr %l239, i32 0, i32 1
  %t453 = load ptr, ptr %t452, !tbaa !27
  %t454 = getelementptr ptr, ptr %t453, i64 %t450
  %t455 = load ptr, ptr %t454, !tbaa !39
  %t457 = load ptr, ptr %l0, !tbaa !29
  %t460 = getelementptr %"compiler/typed:Clause", ptr %t455, i32 0, i32 3
  %t461 = load ptr, ptr %t460, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflBlockOf(ptr %v0, ptr %v1, ptr %t457, ptr %t461)
  br label %bb143
bb143:
  br label %bb144
bb144:
  %t464 = load i64, ptr %l24, !tbaa !24
  %t466 = add i64 %t464, 1
  store i64 %t466, ptr %l24, !tbaa !24
  br label %bb139
bb145:
  br label %bb196
bb146:
  %t468 = load ptr, ptr %l1, !tbaa !29
  store ptr %t468, ptr %l247, !tbaa !29
  store i1 false, ptr %l248, !tbaa !21
  %t469 = load ptr, ptr %l247, !tbaa !29
  %t470 = icmp ne ptr %t469, null
  br i1 %t470, label %bb147, label %bb148
bb147:
  %t472 = load ptr, ptr %l247, !tbaa !29
  %t473 = load i64, ptr %t472, !range !{i64 0, i64 17}
  %t475 = icmp eq i64 %t473, 14
  store i1 %t475, ptr %l248, !tbaa !21
  br label %bb148
bb148:
  %t476 = load i1, ptr %l248, !tbaa !21
  br i1 %t476, label %bb149, label %bb150
bb149:
  %t477 = load ptr, ptr %l1, !tbaa !29
  %t479 = getelementptr { i64, [3 x i64] }, ptr %t477, i32 0, i32 1
  %t480 = getelementptr { %"compiler/source:Span", ptr }, ptr %t479, i32 0, i32 1
  %t481 = load ptr, ptr %t480
  store ptr %t481, ptr %l27, !tbaa !29
  br label %bb151
bb150:
  br label %bb160
bb151:
  %t483 = load ptr, ptr %l0, !tbaa !29
  %t484 = load ptr, ptr %l27, !tbaa !29
  %t486 = getelementptr %"compiler/typed:Spawn", ptr %t484, i32 0, i32 1
  %t487 = load ptr, ptr %t486, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflExpr(ptr %v0, ptr %v1, ptr %t483, ptr %t487)
  br label %bb152
bb152:
  %t491 = load ptr, ptr %l0, !tbaa !29
  %t493 = getelementptr %"compiler/scope:Scoper", ptr %t491, i32 0, i32 137
  %t494 = load i64, ptr %t493, !tbaa !24
  %t496 = icmp eq i64 %t494, 1
  br i1 %t496, label %bb153, label %bb154
bb153:
  %t498 = load ptr, ptr %l0, !tbaa !29
  %t499 = load ptr, ptr %l27, !tbaa !29
  %t501 = getelementptr %"compiler/typed:Spawn", ptr %t499, i32 0, i32 1
  %t502 = load ptr, ptr %t501, !tbaa !29
  %t505 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecarries(ptr %v0, ptr %v1, ptr %t498, ptr %t502)
  store i1 %t505, ptr %l264
  br label %bb155
bb154:
  store i1 false, ptr %l260, !tbaa !21
  br label %bb156
bb155:
  %t506 = load i1, ptr %l264, !tbaa !21
  store i1 %t506, ptr %l260, !tbaa !21
  br label %bb156
bb156:
  %t507 = load i1, ptr %l260, !tbaa !21
  br i1 %t507, label %bb157, label %bb158
bb157:
  %t508 = load ptr, ptr %l0, !tbaa !29
  %t510 = getelementptr %"compiler/scope:Scoper", ptr %t508, i32 0, i32 136
  store i1 true, ptr %t510, !tbaa !21
  br label %bb159
bb158:
  br label %bb159
bb159:
  br label %bb196
bb160:
  %t511 = load ptr, ptr %l1, !tbaa !29
  store ptr %t511, ptr %l266, !tbaa !29
  store i1 false, ptr %l267, !tbaa !21
  %t512 = load ptr, ptr %l266, !tbaa !29
  %t513 = icmp ne ptr %t512, null
  br i1 %t513, label %bb161, label %bb162
bb161:
  %t515 = load ptr, ptr %l266, !tbaa !29
  %t516 = load i64, ptr %t515, !range !{i64 0, i64 17}
  %t518 = icmp eq i64 %t516, 15
  store i1 %t518, ptr %l267, !tbaa !21
  br label %bb162
bb162:
  %t519 = load i1, ptr %l267, !tbaa !21
  br i1 %t519, label %bb163, label %bb164
bb163:
  %t520 = load ptr, ptr %l1, !tbaa !29
  %t522 = getelementptr { i64, [3 x i64] }, ptr %t520, i32 0, i32 1
  %t523 = getelementptr { %"compiler/source:Span", ptr }, ptr %t522, i32 0, i32 1
  %t524 = load ptr, ptr %t523
  store ptr %t524, ptr %l28, !tbaa !29
  br label %bb165
bb164:
  br label %bb174
bb165:
  %t526 = load ptr, ptr %l0, !tbaa !29
  %t527 = load ptr, ptr %l28, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflExpr(ptr %v0, ptr %v1, ptr %t526, ptr %t527)
  br label %bb166
bb166:
  %t531 = load ptr, ptr %l0, !tbaa !29
  %t533 = getelementptr %"compiler/scope:Scoper", ptr %t531, i32 0, i32 137
  %t534 = load i64, ptr %t533, !tbaa !24
  %t536 = icmp eq i64 %t534, 1
  br i1 %t536, label %bb167, label %bb168
bb167:
  %t538 = load ptr, ptr %l0, !tbaa !29
  %t539 = load ptr, ptr %l28, !tbaa !29
  %t542 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecarries(ptr %v0, ptr %v1, ptr %t538, ptr %t539)
  store i1 %t542, ptr %l281
  br label %bb169
bb168:
  store i1 false, ptr %l278, !tbaa !21
  br label %bb170
bb169:
  %t543 = load i1, ptr %l281, !tbaa !21
  store i1 %t543, ptr %l278, !tbaa !21
  br label %bb170
bb170:
  %t544 = load i1, ptr %l278, !tbaa !21
  br i1 %t544, label %bb171, label %bb172
bb171:
  %t545 = load ptr, ptr %l0, !tbaa !29
  %t547 = getelementptr %"compiler/scope:Scoper", ptr %t545, i32 0, i32 136
  store i1 true, ptr %t547, !tbaa !21
  br label %bb173
bb172:
  br label %bb173
bb173:
  br label %bb196
bb174:
  %t548 = load ptr, ptr %l1, !tbaa !29
  store ptr %t548, ptr %l283, !tbaa !29
  store i1 false, ptr %l284, !tbaa !21
  %t549 = load ptr, ptr %l283, !tbaa !29
  %t550 = icmp ne ptr %t549, null
  br i1 %t550, label %bb175, label %bb176
bb175:
  %t552 = load ptr, ptr %l283, !tbaa !29
  %t553 = load i64, ptr %t552, !range !{i64 0, i64 17}
  %t555 = icmp eq i64 %t553, 16
  store i1 %t555, ptr %l284, !tbaa !21
  br label %bb176
bb176:
  %t556 = load i1, ptr %l284, !tbaa !21
  br i1 %t556, label %bb177, label %bb178
bb177:
  %t557 = load ptr, ptr %l1, !tbaa !29
  %t559 = getelementptr { i64, [3 x i64] }, ptr %t557, i32 0, i32 1
  %t560 = getelementptr { %"compiler/source:Span", ptr }, ptr %t559, i32 0, i32 1
  %t561 = load ptr, ptr %t560
  store ptr %t561, ptr %l29, !tbaa !29
  br label %bb179
bb178:
  br label %bb191
bb179:
  %t563 = load ptr, ptr %l0, !tbaa !29
  %t564 = load ptr, ptr %l29, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflExpr(ptr %v0, ptr %v1, ptr %t563, ptr %t564)
  br label %bb180
bb180:
  %t567 = load ptr, ptr %l0, !tbaa !29
  %t569 = getelementptr %"compiler/scope:Scoper", ptr %t567, i32 0, i32 137
  %t570 = load i64, ptr %t569, !tbaa !24
  %t572 = icmp eq i64 %t570, 1
  br i1 %t572, label %bb181, label %bb182
bb181:
  %t574 = load ptr, ptr %l0, !tbaa !29
  store ptr %t574, ptr %l295, !tbaa !29
  %t575 = load ptr, ptr %l29, !tbaa !29
  %t577 = icmp eq ptr %t575, null
  br i1 %t577, label %bb183, label %bb184
bb182:
  store i1 false, ptr %l294, !tbaa !21
  br label %bb187
bb183:
  call void @__olang_check_failed(ptr @olang_loc_86dbdc94d883d21d_a5f7ab2189e86539)
  unreachable
bb184:
  br label %bb185
bb185:
  %t579 = load ptr, ptr %l29, !tbaa !29
  %t580 = load ptr, ptr %l295, !tbaa !29
  %t582 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecarries(ptr %v0, ptr %v1, ptr %t580, ptr %t579)
  store i1 %t582, ptr %l299
  br label %bb186
bb186:
  %t583 = load i1, ptr %l299, !tbaa !21
  store i1 %t583, ptr %l294, !tbaa !21
  br label %bb187
bb187:
  %t584 = load i1, ptr %l294, !tbaa !21
  br i1 %t584, label %bb188, label %bb189
bb188:
  %t585 = load ptr, ptr %l0, !tbaa !29
  %t587 = getelementptr %"compiler/scope:Scoper", ptr %t585, i32 0, i32 136
  store i1 true, ptr %t587, !tbaa !21
  br label %bb190
bb189:
  br label %bb190
bb190:
  br label %bb196
bb191:
  br i1 true, label %bb192, label %bb193
bb192:
  br label %bb194
bb193:
  br label %bb195
bb194:
  br label %bb196
bb195:
  call void @__olang_check_failed(ptr @olang_loc_815b49be05c0135_ff7bc6f5d03d3901)
  unreachable
bb196:
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efnNameAt(ptr %v0, ptr %a0, %"compiler/source:Span" %a1) #0 {
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
  %l10 = alloca %"compiler/source:Span"
  %l11 = alloca { i64, ptr }
  %l13 = alloca ptr
  %l21 = alloca { i64, ptr }
  %l22 = alloca i32
  %l36 = alloca i64
  %l39 = alloca i64
  %l57 = alloca { i64, ptr }
  %l61 = alloca ptr
  %l65 = alloca %"compiler/source:Span"
  %l66 = alloca %"compiler/source:Span"
  %l69 = alloca %"compiler/source:Span"
  %l74 = alloca %"compiler/source:Span"
  %s4 = alloca %olang.scope
  %rv = alloca %"compiler/source:Span"
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 11
  store ptr %t3, ptr %l13, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/scope:Scoper", ptr %t4, i32 0, i32 26
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = icmp eq ptr %t7, null
  br i1 %t9, label %bb1, label %bb2
bb1:
  call void @__olang_check_failed(ptr @olang_loc_132784778ede3455_1ad64f1fb4961019)
  unreachable
bb2:
  br label %bb3
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/scope:Scoper", ptr %t11, i32 0, i32 26
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t17 = getelementptr %"compiler/typed:Body", ptr %t14, i32 0, i32 3
  %t18 = load i64, ptr %t17, !tbaa !24
  %t19 = load ptr, ptr %l13, !tbaa !29
  %t21 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %v0, ptr %v0, ptr %t19, i64 %t18)
  %t22 = extractvalue { i32, { i64, ptr } } %t21, 1
  %t23 = extractvalue { i32, { i64, ptr } } %t21, 0
  store i32 %t23, ptr %l22
  %t24 = icmp ne i32 %t23, 0
  br i1 %t24, label %bb5, label %ok.25, !prof !99
ok.25:
  store { i64, ptr } %t22, ptr %l21
  br label %bb4
bb4:
  %t26 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t26, ptr %l11, !tbaa !27
  br label %bb7
bb5:
  br label %bb6
bb6:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) }, ptr %l11, !tbaa !27
  br label %bb7
bb7:
  %t27 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t27, ptr %l2, !tbaa !27
  %t28 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 1
  %t29 = load i32, ptr %t28, !tbaa !23
  %t31 = sext i32 %t29 to i64
  store i64 %t31, ptr %l3, !tbaa !24
  %t33 = load i64, ptr %l3, !tbaa !24
  %t34 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t36 = extractvalue { i64, ptr } %t34, 0
  %t39 = icmp sgt i64 %t33, %t36
  br i1 %t39, label %bb8, label %bb9
bb8:
  %t41 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t41, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t43 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t44 = load i32, ptr %t43, !tbaa !23
  %t46 = sext i32 %t44 to i64
  store i64 %t46, ptr %l4, !tbaa !24
  %t48 = load i64, ptr %l3, !tbaa !24
  store i64 %t48, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t50 = load i64, ptr %l5, !tbaa !24
  %t51 = load i64, ptr %l4, !tbaa !24
  %t54 = icmp sgt i64 %t50, %t51
  br i1 %t54, label %bb11, label %bb12
bb11:
  %t56 = load i64, ptr %l6, !tbaa !24
  %t58 = icmp sgt i64 %t56, 0
  br i1 %t58, label %bb13, label %bb14
bb12:
  store i64 0, ptr %l36, !tbaa !24
  br label %bb16
bb13:
  %t60 = load i64, ptr %l5, !tbaa !24
  %t61 = load i64, ptr %l4, !tbaa !24
  %t64 = sub i64 %t60, %t61
  %t65 = load i64, ptr %l6, !tbaa !24
  %t68 = add i64 %t64, %t65
  %t70 = sub i64 %t68, 1
  %t71 = load i64, ptr %l6, !tbaa !24
  %t74 = sdiv i64 %t70, %t71
  store i64 %t74, ptr %l39, !tbaa !24
  br label %bb15
bb14:
  store i64 0, ptr %l39, !tbaa !24
  br label %bb15
bb15:
  %t76 = load i64, ptr %l39, !tbaa !24
  store i64 %t76, ptr %l36, !tbaa !24
  br label %bb16
bb16:
  %t77 = load i64, ptr %l36, !tbaa !24
  store i64 %t77, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb17
bb17:
  %t78 = load i64, ptr %l8, !tbaa !24
  %t79 = load i64, ptr %l7, !tbaa !24
  %t82 = icmp slt i64 %t78, %t79
  %t84 = xor i1 %t82, true
  br i1 %t84, label %bb18, label %bb19
bb18:
  br label %bb28
bb19:
  br label %bb20
bb20:
  %t86 = load i64, ptr %l4, !tbaa !24
  %t87 = load i64, ptr %l8, !tbaa !24
  %t88 = load i64, ptr %l6, !tbaa !24
  %t91 = mul i64 %t87, %t88
  %t94 = add i64 %t86, %t91
  store i64 %t94, ptr %l9, !tbaa !24
  %t96 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t96, ptr %l57, !tbaa !27
  %t97 = load i64, ptr %l9, !tbaa !24
  %t99 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !27
  %t101 = getelementptr i8, ptr %t100, i64 %t97
  %t102 = load i8, ptr %t101, !tbaa !32
  %t104 = icmp eq i8 %t102, 60
  br i1 %t104, label %bb21, label %bb22
bb21:
  store %olang.scope zeroinitializer, ptr %s4
  %t106 = load ptr, ptr %l0, !tbaa !29
  store ptr %t106, ptr %l61, !tbaa !29
  %t107 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t108 = load i32, ptr %t107, !tbaa !23
  %t109 = load i64, ptr %l9, !tbaa !24
  %t111 = trunc i64 %t109 to i32
  %t114 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s4, i32 %t108, i32 %t111)
  store %"compiler/source:Span" %t114, ptr %l65
  br label %bb23
bb22:
  br label %bb26
bb23:
  %t115 = load ptr, ptr %l61, !tbaa !29
  %t116 = load %"compiler/source:Span", ptr %l65
  %t117 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elastName(ptr %v0, ptr %t115, %"compiler/source:Span" %t116)
  store %"compiler/source:Span" %t117, ptr %l66
  br label %bb24
bb24:
  %t118 = load %"compiler/source:Span", ptr %l66
  store %"compiler/source:Span" %t118, ptr %l10
  %t119 = getelementptr %"compiler/source:Span", ptr %l10, i32 0, i32 0
  %t120 = load i32, ptr %t119, !tbaa !23
  %t121 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 1
  %t122 = load i32, ptr %t121, !tbaa !23
  %t125 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s4, i32 %t120, i32 %t122)
  store %"compiler/source:Span" %t125, ptr %l69
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s4)
  %t126 = load %"compiler/source:Span", ptr %l69
  store %"compiler/source:Span" %t126, ptr %rv
  br label %ret
bb26:
  br label %bb27
bb27:
  %t127 = load i64, ptr %l8, !tbaa !24
  %t129 = add i64 %t127, 1
  store i64 %t129, ptr %l8, !tbaa !24
  br label %bb17
bb28:
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t132 = load %"compiler/source:Span", ptr %l1
  %t135 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elastName(ptr %v0, ptr %t131, %"compiler/source:Span" %t132)
  store %"compiler/source:Span" %t135, ptr %l74
  br label %bb29
bb29:
  %t136 = load %"compiler/source:Span", ptr %l74
  store %"compiler/source:Span" %t136, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eforcedBy(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca %"compiler/scope:rel"
  %l7 = alloca i64
  %l9 = alloca i64
  %l14 = alloca %"compiler/scope:rel"
  %l17 = alloca i1
  %l21 = alloca i1
  %l24 = alloca i1
  %l31 = alloca i1
  %l34 = alloca i1
  %l38 = alloca i1
  %l41 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a1, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb1
bb1:
  %t3 = load i64, ptr %l4, !tbaa !24
  store i64 %t3, ptr %l7, !tbaa !24
  %t4 = load ptr, ptr %l3, !tbaa !29
  %t6 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eLen_3ccompiler_2fscope_3arel_3e(ptr %v1, ptr %t4)
  store i64 %t6, ptr %l9
  br label %bb2
bb2:
  %t7 = load i64, ptr %l7, !tbaa !24
  %t8 = load i64, ptr %l9, !tbaa !24
  %t9 = icmp slt i64 %t7, %t8
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb3, label %bb4
bb3:
  br label %bb35
bb4:
  br label %bb5
bb5:
  %t13 = load ptr, ptr %l3, !tbaa !29
  %t14 = load i64, ptr %l4, !tbaa !24
  %t17 = call %"compiler/scope:rel" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eAt_3ccompiler_2fscope_3arel_3e(ptr %v1, ptr %t13, i64 %t14)
  store %"compiler/scope:rel" %t17, ptr %l14
  br label %bb6
bb6:
  %t18 = load %"compiler/scope:rel", ptr %l14
  store %"compiler/scope:rel" %t18, ptr %l5
  %t19 = getelementptr %"compiler/scope:rel", ptr %l5, i32 0, i32 0
  %t20 = load { i64, [2 x i64] }, ptr %t19
  %t22 = extractvalue { i64, [2 x i64] } %t20, 0
  %t23 = icmp eq i64 %t22, 2
  br i1 %t23, label %bb7, label %bb8
bb7:
  %t25 = getelementptr %"compiler/scope:rel", ptr %l5, i32 0, i32 0
  %t26 = getelementptr { i64, [2 x i64] }, ptr %t25, i32 0, i32 1
  %t27 = getelementptr { i64 }, ptr %t26, i32 0, i32 0
  %t28 = load i64, ptr %t27
  %t29 = load i64, ptr %l2, !tbaa !24
  %t32 = icmp eq i64 %t28, %t29
  store i1 %t32, ptr %l17, !tbaa !21
  br label %bb9
bb8:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb9
bb9:
  %t34 = load i1, ptr %l17, !tbaa !21
  br i1 %t34, label %bb10, label %bb11
bb10:
  %t35 = getelementptr %"compiler/scope:rel", ptr %l5, i32 0, i32 1
  %t36 = load { i64, [2 x i64] }, ptr %t35
  %t38 = extractvalue { i64, [2 x i64] } %t36, 0
  %t39 = icmp eq i64 %t38, 2
  br i1 %t39, label %bb12, label %bb13
bb11:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb15
bb12:
  %t41 = getelementptr %"compiler/scope:rel", ptr %l5, i32 0, i32 1
  %t42 = getelementptr { i64, [2 x i64] }, ptr %t41, i32 0, i32 1
  %t43 = getelementptr { i64 }, ptr %t42, i32 0, i32 0
  %t44 = load i64, ptr %t43
  %t45 = load i64, ptr %l2, !tbaa !24
  %t48 = icmp eq i64 %t44, %t45
  store i1 %t48, ptr %l24, !tbaa !21
  br label %bb14
bb13:
  store i1 false, ptr %l24, !tbaa !21
  br label %bb14
bb14:
  %t50 = load i1, ptr %l24, !tbaa !21
  %t51 = xor i1 %t50, true
  store i1 %t51, ptr %l21, !tbaa !21
  br label %bb15
bb15:
  %t53 = load i1, ptr %l21, !tbaa !21
  br i1 %t53, label %bb16, label %bb17
bb16:
  store i1 true, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t55 = getelementptr %"compiler/scope:rel", ptr %l5, i32 0, i32 2
  %t56 = load i1, ptr %t55, !tbaa !21
  br i1 %t56, label %bb19, label %bb20
bb19:
  %t58 = getelementptr %"compiler/scope:rel", ptr %l5, i32 0, i32 1
  %t59 = load { i64, [2 x i64] }, ptr %t58
  %t61 = extractvalue { i64, [2 x i64] } %t59, 0
  %t62 = icmp eq i64 %t61, 2
  br i1 %t62, label %bb21, label %bb22
bb20:
  store i1 false, ptr %l31, !tbaa !21
  br label %bb24
bb21:
  %t64 = getelementptr %"compiler/scope:rel", ptr %l5, i32 0, i32 1
  %t65 = getelementptr { i64, [2 x i64] }, ptr %t64, i32 0, i32 1
  %t66 = getelementptr { i64 }, ptr %t65, i32 0, i32 0
  %t67 = load i64, ptr %t66
  %t68 = load i64, ptr %l2, !tbaa !24
  %t71 = icmp eq i64 %t67, %t68
  store i1 %t71, ptr %l34, !tbaa !21
  br label %bb23
bb22:
  store i1 false, ptr %l34, !tbaa !21
  br label %bb23
bb23:
  %t73 = load i1, ptr %l34, !tbaa !21
  store i1 %t73, ptr %l31, !tbaa !21
  br label %bb24
bb24:
  %t74 = load i1, ptr %l31, !tbaa !21
  br i1 %t74, label %bb25, label %bb26
bb25:
  %t75 = getelementptr %"compiler/scope:rel", ptr %l5, i32 0, i32 0
  %t76 = load { i64, [2 x i64] }, ptr %t75
  %t78 = extractvalue { i64, [2 x i64] } %t76, 0
  %t79 = icmp eq i64 %t78, 2
  br i1 %t79, label %bb27, label %bb28
bb26:
  store i1 false, ptr %l38, !tbaa !21
  br label %bb30
bb27:
  %t81 = getelementptr %"compiler/scope:rel", ptr %l5, i32 0, i32 0
  %t82 = getelementptr { i64, [2 x i64] }, ptr %t81, i32 0, i32 1
  %t83 = getelementptr { i64 }, ptr %t82, i32 0, i32 0
  %t84 = load i64, ptr %t83
  %t85 = load i64, ptr %l2, !tbaa !24
  %t88 = icmp eq i64 %t84, %t85
  store i1 %t88, ptr %l41, !tbaa !21
  br label %bb29
bb28:
  store i1 false, ptr %l41, !tbaa !21
  br label %bb29
bb29:
  %t90 = load i1, ptr %l41, !tbaa !21
  %t91 = xor i1 %t90, true
  store i1 %t91, ptr %l38, !tbaa !21
  br label %bb30
bb30:
  %t93 = load i1, ptr %l38, !tbaa !21
  br i1 %t93, label %bb31, label %bb32
bb31:
  store i1 true, ptr %rv
  br label %ret
bb32:
  br label %bb33
bb33:
  br label %bb34
bb34:
  %t95 = load i64, ptr %l4, !tbaa !24
  %t97 = add i64 %t95, 1
  store i64 %t97, ptr %l4, !tbaa !24
  br label %bb1
bb35:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efreshIntoUnknown(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, { i64, [2 x i64] } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca { i64, [2 x i64] }
  %l4 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l14 = alloca %"compiler/source:Span"
  %l15 = alloca %"compiler/source:Span"
  %l16 = alloca %"compiler/diagmsg:Msg"
  %l17 = alloca i64
  %l23 = alloca i1
  %l24 = alloca ptr
  %l25 = alloca ptr
  %l27 = alloca %"compiler/source:Span"
  %l28 = alloca %"compiler/source:Span"
  %l30 = alloca i1
  %l32 = alloca ptr
  %l33 = alloca ptr
  %l35 = alloca %"compiler/source:Span"
  %l36 = alloca %"compiler/source:Span"
  %l37 = alloca %"compiler/diagmsg:Msg"
  %l38 = alloca i64
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  store { i64, [2 x i64] } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, [2 x i64] }, ptr %l3
  %t3 = extractvalue { i64, [2 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 4
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb12
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egiveBackPlace(ptr %v0, ptr %v1, ptr %t6, ptr %t7)
  br label %bb4
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/scope:Scoper", ptr %t10, i32 0, i32 28
  %t13 = load i1, ptr %t12, !tbaa !21
  br i1 %t13, label %bb5, label %bb6
bb5:
  store %olang.scope zeroinitializer, ptr %s2
  %t15 = load ptr, ptr %l0, !tbaa !29
  store ptr %t15, ptr %l11, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  store ptr %t16, ptr %l12, !tbaa !29
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t19 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eSpan(ptr %v1, ptr %t17)
  store %"compiler/source:Span" %t19, ptr %l14
  br label %bb7
bb6:
  br label %bb11
bb7:
  %t20 = load ptr, ptr %l12, !tbaa !29
  %t21 = load %"compiler/source:Span", ptr %l14
  %t22 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eeqAfter(ptr %v0, ptr %t20, %"compiler/source:Span" %t21)
  store %"compiler/source:Span" %t22, ptr %l15
  br label %bb8
bb8:
  %t23 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuildThroughUnknownScope(ptr %s2)
  store %"compiler/diagmsg:Msg" %t23, ptr %l16
  br label %bb9
bb9:
  %t24 = load ptr, ptr %l11, !tbaa !29
  %t25 = load %"compiler/source:Span", ptr %l15
  %t26 = load %"compiler/diagmsg:Msg", ptr %l16
  %t27 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %s2, ptr %t24, %"compiler/source:Span" %t25, %"compiler/diagmsg:Msg" %t26)
  store i64 %t27, ptr %l17
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb12:
  %t28 = load { i64, [2 x i64] }, ptr %l3
  %t30 = extractvalue { i64, [2 x i64] } %t28, 0
  %t31 = icmp eq i64 %t30, 5
  br i1 %t31, label %bb13, label %bb14
bb13:
  %t33 = getelementptr { i64, [2 x i64] }, ptr %l3, i32 0, i32 1
  %t34 = getelementptr { i64 }, ptr %t33, i32 0, i32 0
  %t35 = load i64, ptr %t34
  store i64 %t35, ptr %l4, !tbaa !24
  br label %bb15
bb14:
  br label %bb29
bb15:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/scope:Scoper", ptr %t37, i32 0, i32 28
  %t40 = load i1, ptr %t39, !tbaa !21
  br i1 %t40, label %bb16, label %bb17
bb16:
  %t42 = load ptr, ptr %l0, !tbaa !29
  store ptr %t42, ptr %l24, !tbaa !29
  %t43 = load ptr, ptr %l0, !tbaa !29
  store ptr %t43, ptr %l25, !tbaa !29
  %t44 = load ptr, ptr %l2, !tbaa !29
  %t46 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eSpan(ptr %v1, ptr %t44)
  store %"compiler/source:Span" %t46, ptr %l27
  br label %bb18
bb17:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb21
bb18:
  %t47 = load ptr, ptr %l25, !tbaa !29
  %t48 = load %"compiler/source:Span", ptr %l27
  %t49 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eeqAfter(ptr %v0, ptr %t47, %"compiler/source:Span" %t48)
  store %"compiler/source:Span" %t49, ptr %l28
  br label %bb19
bb19:
  %t50 = load i64, ptr %l4, !tbaa !24
  %t51 = load ptr, ptr %l24, !tbaa !29
  %t52 = load %"compiler/source:Span", ptr %l28
  %t54 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eversionsDiffer(ptr %v0, ptr %t51, %"compiler/source:Span" %t52, i64 %t50)
  store i1 %t54, ptr %l30
  br label %bb20
bb20:
  %t55 = load i1, ptr %l30, !tbaa !21
  %t56 = xor i1 %t55, true
  store i1 %t56, ptr %l23, !tbaa !21
  br label %bb21
bb21:
  %t58 = load i1, ptr %l23, !tbaa !21
  br i1 %t58, label %bb22, label %bb23
bb22:
  store %olang.scope zeroinitializer, ptr %s4
  %t59 = load ptr, ptr %l0, !tbaa !29
  store ptr %t59, ptr %l32, !tbaa !29
  %t60 = load ptr, ptr %l0, !tbaa !29
  store ptr %t60, ptr %l33, !tbaa !29
  %t61 = load ptr, ptr %l2, !tbaa !29
  %t63 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eSpan(ptr %v1, ptr %t61)
  store %"compiler/source:Span" %t63, ptr %l35
  br label %bb24
bb23:
  br label %bb28
bb24:
  %t64 = load ptr, ptr %l33, !tbaa !29
  %t65 = load %"compiler/source:Span", ptr %l35
  %t66 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eeqAfter(ptr %v0, ptr %t64, %"compiler/source:Span" %t65)
  store %"compiler/source:Span" %t66, ptr %l36
  br label %bb25
bb25:
  %t67 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eStoreIntoUnknownScope(ptr %s4)
  store %"compiler/diagmsg:Msg" %t67, ptr %l37
  br label %bb26
bb26:
  %t68 = load ptr, ptr %l32, !tbaa !29
  %t69 = load %"compiler/source:Span", ptr %l36
  %t70 = load %"compiler/diagmsg:Msg", ptr %l37
  %t71 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %s4, ptr %t68, %"compiler/source:Span" %t69, %"compiler/diagmsg:Msg" %t70)
  store i64 %t71, ptr %l38
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s4)
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb29:
  br i1 true, label %bb30, label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb34
bb33:
  call void @__olang_check_failed(ptr @olang_loc_4b743cabd11a232a_8c47700ea8df566)
  unreachable
bb34:
  %t72 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egapAt(ptr %v0, ptr %s0, ptr %t72, %"compiler/source:Span" %a1, { i64, ptr } { i64 71, ptr getelementptr inbounds (<{ i64, [71 x i8] }>, ptr @.d4, i32 0, i32 1) })
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egiveBackRead(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l6 = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 217
  %t4 = load i1, ptr %t3, !tbaa !21
  %t6 = xor i1 %t4, true
  br i1 %t6, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb3
bb2:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/scope:Scoper", ptr %t8, i32 0, i32 220
  %t11 = load i1, ptr %t10, !tbaa !21
  %t13 = xor i1 %t11, true
  store i1 %t13, ptr %l6, !tbaa !21
  br label %bb3
bb3:
  %t15 = load i1, ptr %l6, !tbaa !21
  br i1 %t15, label %bb4, label %bb5
bb4:
  br label %ret
bb5:
  br label %bb6
bb6:
  %t16 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egiveBackExpr(ptr %v0, ptr %v1, ptr %t16, ptr %a1)
  br label %bb7
bb7:
  %t20 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egiveBackDerived(ptr %v0, ptr %t20, { i64, [2 x i64] } %a2)
  br label %bb8
bb8:
  br label %ret
ret:
  ret void
}

define dso_local { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2einner(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, { i64, [2 x i64] } %a2) #0 {
entry:
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca { i64, [2 x i64] }
  %l6 = alloca i64
  %rv = alloca { i64, [2 x i64] }
  store { i64, [2 x i64] } %a1, ptr %l1
  store { i64, [2 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load { i64, [2 x i64] }, ptr %l1
  %t3 = load { i64, [2 x i64] }, ptr %l2
  %t7 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eorder(ptr %v0, ptr %a0, { i64, [2 x i64] } %t2, { i64, [2 x i64] } %t3)
  store i64 %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = load i64, ptr @G_2ecompiler_2fscope_2eHolds, !tbaa !24
  %t9 = load i64, ptr %l6, !tbaa !24
  %t11 = icmp eq i64 %t9, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load { i64, [2 x i64] }, ptr %l2
  store { i64, [2 x i64] } %t13, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, [2 x i64] }, ptr %l1
  store { i64, [2 x i64] } %t15, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2einstanceOf(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca { i64, [2 x i64] }
  %l9 = alloca i64
  %l10 = alloca i32
  %l14 = alloca i64
  %l17 = alloca i64
  %l38 = alloca ptr
  %rv = alloca i64
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  store i64 64, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t1 = load i64, ptr %l3, !tbaa !24
  %t2 = load i64, ptr %l2, !tbaa !24
  %t5 = icmp sgt i64 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load i64, ptr %l4, !tbaa !24
  %t9 = icmp sgt i64 %t7, 0
  br i1 %t9, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l14, !tbaa !24
  br label %bb6
bb3:
  %t11 = load i64, ptr %l3, !tbaa !24
  %t12 = load i64, ptr %l2, !tbaa !24
  %t15 = sub i64 %t11, %t12
  %t16 = load i64, ptr %l4, !tbaa !24
  %t19 = add i64 %t15, %t16
  %t21 = sub i64 %t19, 1
  %t22 = load i64, ptr %l4, !tbaa !24
  %t25 = sdiv i64 %t21, %t22
  store i64 %t25, ptr %l17, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb5
bb5:
  %t27 = load i64, ptr %l17, !tbaa !24
  store i64 %t27, ptr %l14, !tbaa !24
  br label %bb6
bb6:
  %t28 = load i64, ptr %l14, !tbaa !24
  store i64 %t28, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb7
bb7:
  %t29 = load i64, ptr %l6, !tbaa !24
  %t30 = load i64, ptr %l5, !tbaa !24
  %t33 = icmp slt i64 %t29, %t30
  %t35 = xor i1 %t33, true
  br i1 %t35, label %bb8, label %bb9
bb8:
  br label %bb26
bb9:
  br label %bb10
bb10:
  %t37 = load i64, ptr %l2, !tbaa !24
  %t38 = load i64, ptr %l6, !tbaa !24
  %t39 = load i64, ptr %l4, !tbaa !24
  %t42 = mul i64 %t38, %t39
  %t45 = add i64 %t37, %t42
  store i64 %t45, ptr %l7, !tbaa !24
  %t49 = getelementptr %"compiler/scope:Scoper", ptr %a0, i32 0, i32 1
  %t50 = load i64, ptr %l1, !tbaa !24
  %t53 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t49, i64 %t50)
  store ptr %t53, ptr %l38
  br label %bb11
bb11:
  %t54 = load ptr, ptr %l38, !tbaa !29
  %t56 = getelementptr %"compiler/typed:Body", ptr %t54, i32 0, i32 1
  %t57 = load { i64, [2 x i64] }, ptr %t56
  store { i64, [2 x i64] } %t57, ptr %l8
  %t59 = load { i64, [2 x i64] }, ptr %l8
  %t61 = extractvalue { i64, [2 x i64] } %t59, 0
  %t62 = icmp eq i64 %t61, 0
  br i1 %t62, label %bb12, label %bb13
bb12:
  %t64 = getelementptr { i64, [2 x i64] }, ptr %l8, i32 0, i32 1
  %t65 = getelementptr { i64 }, ptr %t64, i32 0, i32 0
  %t66 = load i64, ptr %t65
  store i64 %t66, ptr %l9, !tbaa !24
  br label %bb14
bb13:
  br label %bb15
bb14:
  %t68 = load i64, ptr %l9, !tbaa !24
  store i64 %t68, ptr %rv
  br label %ret
bb15:
  %t70 = load { i64, [2 x i64] }, ptr %l8
  %t72 = extractvalue { i64, [2 x i64] } %t70, 0
  %t73 = icmp eq i64 %t72, 4
  br i1 %t73, label %bb16, label %bb17
bb16:
  %t75 = getelementptr { i64, [2 x i64] }, ptr %l8, i32 0, i32 1
  %t76 = getelementptr { i32 }, ptr %t75, i32 0, i32 0
  %t77 = load i32, ptr %t76
  store i32 %t77, ptr %l10, !tbaa !23
  br label %bb18
bb17:
  br label %bb19
bb18:
  %t79 = load i32, ptr %l10, !tbaa !23
  %t81 = sext i32 %t79 to i64
  store i64 %t81, ptr %l1, !tbaa !24
  br label %bb24
bb19:
  br i1 true, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb23
bb22:
  store i64 -1, ptr %rv
  br label %ret
bb23:
  call void @__olang_check_failed(ptr @olang_loc_e2ea0fea769db7e4_aa8c1e0e7de89fc8)
  unreachable
bb24:
  br label %bb25
bb25:
  %t84 = load i64, ptr %l6, !tbaa !24
  %t86 = add i64 %t84, 1
  store i64 %t86, ptr %l6, !tbaa !24
  br label %bb7
bb26:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eliftOf(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i1
  %l7 = alloca { i64, [2 x i64] }
  %l9 = alloca ptr
  %l13 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l14 = alloca { i64, [2 x i64] }
  %l15 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca { i64, [2 x i64] }
  %t9 = alloca { i64, [2 x i64] }, align 8
  %t32 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eliftable(ptr %v0, ptr %t1, i64 %t2)
  store i1 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i1, ptr %l4, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  store { i64, [2 x i64] } zeroinitializer, ptr %t9
  %t10 = getelementptr { i64, [2 x i64] }, ptr %t9, i32 0, i32 0
  store i64 0, ptr %t10
  %t11 = load { i64, [2 x i64] }, ptr %t9
  call void @__olang_scope_close(ptr %s0)
  store { i64, [2 x i64] } %t11, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/scope:Scoper", ptr %t13, i32 0, i32 149
  store ptr %t15, ptr %l9, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/scope:Scoper", ptr %t16, i32 0, i32 27
  %t19 = load i64, ptr %t18, !tbaa !24
  %t20 = load i64, ptr %l1, !tbaa !24
  %t23 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t19, i64 %t20)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t23, ptr %l13
  br label %bb5
bb5:
  %t24 = load ptr, ptr %l9, !tbaa !29
  %t25 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l13
  %t26 = call { i32, { i64, [2 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H568ce559fa980123a387c6ba9ed21aca(ptr %v0, ptr %t24, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t25)
  %t27 = extractvalue { i32, { i64, [2 x i64] } } %t26, 1
  %t28 = extractvalue { i32, { i64, [2 x i64] } } %t26, 0
  store i32 %t28, ptr %l15
  %t29 = icmp ne i32 %t28, 0
  br i1 %t29, label %bb7, label %ok.30, !prof !99
ok.30:
  store { i64, [2 x i64] } %t27, ptr %l14
  br label %bb6
bb6:
  %t31 = load { i64, [2 x i64] }, ptr %l14
  store { i64, [2 x i64] } %t31, ptr %l7
  br label %bb9
bb7:
  br label %bb8
bb8:
  store { i64, [2 x i64] } zeroinitializer, ptr %t32
  %t33 = getelementptr { i64, [2 x i64] }, ptr %t32, i32 0, i32 0
  store i64 0, ptr %t33
  %t34 = load { i64, [2 x i64] }, ptr %t32
  store { i64, [2 x i64] } %t34, ptr %l7
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s0)
  %t36 = load { i64, [2 x i64] }, ptr %l7
  store { i64, [2 x i64] } %t36, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eliftSplitPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i64
  %l6 = alloca { i64, [2 x i64] }
  %l8 = alloca i64
  %l12 = alloca i1
  %l14 = alloca i1
  %l16 = alloca i1
  %l19 = alloca i1
  %l20 = alloca i1
  %l23 = alloca i1
  %l26 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t5 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epeekPlace(ptr %v0, ptr %v1, ptr %t1, ptr %t2, i1 true)
  store { i64, [2 x i64] } %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load { i64, [2 x i64] }, ptr %l6
  store { i64, [2 x i64] } %t6, ptr %l2
  %t7 = load ptr, ptr %l1, !tbaa !29
  %t9 = call i64 @compiler_2fscope_2eflRoot(ptr %v1, ptr %t7)
  store i64 %t9, ptr %l8
  br label %bb2
bb2:
  %t10 = load i64, ptr %l8, !tbaa !24
  store i64 %t10, ptr %l3, !tbaa !24
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/scope:Scoper", ptr %t11, i32 0, i32 147
  %t14 = load i1, ptr %t13, !tbaa !21
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb6
bb4:
  %t18 = load { i64, [2 x i64] }, ptr %l2
  %t20 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t18)
  store i1 %t20, ptr %l14
  br label %bb5
bb5:
  %t21 = load i1, ptr %l14, !tbaa !21
  %t22 = xor i1 %t21, true
  store i1 %t22, ptr %l12, !tbaa !21
  br label %bb6
bb6:
  %t24 = load i1, ptr %l12, !tbaa !21
  br i1 %t24, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb10
bb8:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load { i64, [2 x i64] }, ptr %l2
  %t29 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egenResult(ptr %v0, ptr %t25, { i64, [2 x i64] } %t26)
  store i1 %t29, ptr %l19
  br label %bb9
bb9:
  %t30 = load i1, ptr %l19, !tbaa !21
  store i1 %t30, ptr %l16, !tbaa !21
  br label %bb10
bb10:
  %t31 = load i1, ptr %l16, !tbaa !21
  br i1 %t31, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb13
bb12:
  %t32 = load i64, ptr %l3, !tbaa !24
  %t34 = icmp slt i64 %t32, 0
  store i1 %t34, ptr %l20, !tbaa !21
  br label %bb13
bb13:
  %t36 = load i1, ptr %l20, !tbaa !21
  br i1 %t36, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l23, !tbaa !21
  br label %bb17
bb15:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load i64, ptr %l3, !tbaa !24
  %t41 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eliftable(ptr %v0, ptr %t37, i64 %t38)
  store i1 %t41, ptr %l26
  br label %bb16
bb16:
  %t42 = load i1, ptr %l26, !tbaa !21
  %t43 = xor i1 %t42, true
  store i1 %t43, ptr %l23, !tbaa !21
  br label %bb17
bb17:
  %t45 = load i1, ptr %l23, !tbaa !21
  br i1 %t45, label %bb18, label %bb19
bb18:
  store i1 false, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load i64, ptr %l3, !tbaa !24
  %t49 = load { i64, [2 x i64] }, ptr %l2
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eliftStorage(ptr %v0, ptr %t47, i64 %t48, { i64, [2 x i64] } %t49)
  br label %bb21
bb21:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enewOrConst(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l10 = alloca i1
  %l11 = alloca i1
  %l14 = alloca i1
  %l15 = alloca i1
  %l18 = alloca i1
  %l20 = alloca i1
  %l21 = alloca ptr
  %l22 = alloca i1
  %l25 = alloca ptr
  %l26 = alloca i1
  %l34 = alloca i1
  %l35 = alloca ptr
  %l36 = alloca i1
  %l44 = alloca i1
  %l45 = alloca i1
  %l50 = alloca i1
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
  store i1 true, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load ptr, ptr %l1, !tbaa !29
  %t11 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFresh(ptr %v0, ptr %v1, ptr %t6, ptr %t7)
  store i1 %t11, ptr %l10
  br label %bb4
bb4:
  %t12 = load i1, ptr %l10, !tbaa !21
  br i1 %t12, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb8
bb6:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t17 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisNullLit(ptr %v0, ptr %v1, ptr %t13, ptr %t14)
  store i1 %t17, ptr %l14
  br label %bb7
bb7:
  %t18 = load i1, ptr %l14, !tbaa !21
  store i1 %t18, ptr %l11, !tbaa !21
  br label %bb8
bb8:
  %t19 = load i1, ptr %l11, !tbaa !21
  br i1 %t19, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb12
bb10:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t24 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estaticLiteral(ptr %v0, ptr %v1, ptr %t20, ptr %t21)
  store i1 %t24, ptr %l18
  br label %bb11
bb11:
  %t25 = load i1, ptr %l18, !tbaa !21
  store i1 %t25, ptr %l15, !tbaa !21
  br label %bb12
bb12:
  %t26 = load i1, ptr %l15, !tbaa !21
  br i1 %t26, label %bb13, label %bb14
bb13:
  store i1 true, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t28 = load ptr, ptr %l1, !tbaa !29
  store ptr %t28, ptr %l21, !tbaa !29
  store i1 false, ptr %l22, !tbaa !21
  %t29 = load ptr, ptr %l21, !tbaa !29
  %t30 = icmp ne ptr %t29, null
  br i1 %t30, label %bb16, label %bb17
bb16:
  %t32 = load ptr, ptr %l21, !tbaa !29
  %t33 = load i64, ptr %t32, !range !{i64 0, i64 18}
  %t35 = icmp eq i64 %t33, 1
  store i1 %t35, ptr %l22, !tbaa !21
  br label %bb17
bb17:
  %t36 = load i1, ptr %l22, !tbaa !21
  br i1 %t36, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb21
bb20:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb44
bb21:
  %t37 = load ptr, ptr %l1, !tbaa !29
  store ptr %t37, ptr %l25, !tbaa !29
  store i1 false, ptr %l26, !tbaa !21
  %t38 = load ptr, ptr %l25, !tbaa !29
  %t39 = icmp ne ptr %t38, null
  br i1 %t39, label %bb22, label %bb23
bb22:
  %t41 = load ptr, ptr %l25, !tbaa !29
  %t42 = load i64, ptr %t41, !range !{i64 0, i64 18}
  %t44 = icmp eq i64 %t42, 17
  store i1 %t44, ptr %l26, !tbaa !21
  br label %bb23
bb23:
  %t45 = load i1, ptr %l26, !tbaa !21
  br i1 %t45, label %bb24, label %bb25
bb24:
  %t46 = load ptr, ptr %l1, !tbaa !29
  %t48 = getelementptr { i64, [5 x i64] }, ptr %t46, i32 0, i32 1
  %t49 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t48, i32 0, i32 2
  %t50 = load ptr, ptr %t49
  store ptr %t50, ptr %l2, !tbaa !29
  br label %bb26
bb25:
  br label %bb28
bb26:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load ptr, ptr %l2, !tbaa !29
  %t57 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enewOrConst(ptr %v0, ptr %v1, ptr %t52, ptr %t53)
  store i1 %t57, ptr %l34
  br label %bb27
bb27:
  %t58 = load i1, ptr %l34, !tbaa !21
  store i1 %t58, ptr %l20, !tbaa !21
  br label %bb44
bb28:
  %t59 = load ptr, ptr %l1, !tbaa !29
  store ptr %t59, ptr %l35, !tbaa !29
  store i1 false, ptr %l36, !tbaa !21
  %t60 = load ptr, ptr %l35, !tbaa !29
  %t61 = icmp ne ptr %t60, null
  br i1 %t61, label %bb29, label %bb30
bb29:
  %t63 = load ptr, ptr %l35, !tbaa !29
  %t64 = load i64, ptr %t63, !range !{i64 0, i64 18}
  %t66 = icmp eq i64 %t64, 11
  store i1 %t66, ptr %l36, !tbaa !21
  br label %bb30
bb30:
  %t67 = load i1, ptr %l36, !tbaa !21
  br i1 %t67, label %bb31, label %bb32
bb31:
  %t68 = load ptr, ptr %l1, !tbaa !29
  %t70 = getelementptr { i64, [5 x i64] }, ptr %t68, i32 0, i32 1
  %t71 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t70, i32 0, i32 2
  %t72 = load ptr, ptr %t71
  store ptr %t72, ptr %l3, !tbaa !29
  br label %bb33
bb32:
  br label %bb39
bb33:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load ptr, ptr %l3, !tbaa !29
  %t77 = getelementptr %"compiler/typed:Cond", ptr %t75, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !29
  %t81 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enewOrConst(ptr %v0, ptr %v1, ptr %t74, ptr %t78)
  store i1 %t81, ptr %l44
  br label %bb34
bb34:
  %t82 = load i1, ptr %l44, !tbaa !21
  br i1 %t82, label %bb35, label %bb36
bb35:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t84 = load ptr, ptr %l3, !tbaa !29
  %t86 = getelementptr %"compiler/typed:Cond", ptr %t84, i32 0, i32 2
  %t87 = load ptr, ptr %t86, !tbaa !29
  %t91 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enewOrConst(ptr %v0, ptr %v1, ptr %t83, ptr %t87)
  store i1 %t91, ptr %l50
  br label %bb37
bb36:
  store i1 false, ptr %l45, !tbaa !21
  br label %bb38
bb37:
  %t92 = load i1, ptr %l50, !tbaa !21
  store i1 %t92, ptr %l45, !tbaa !21
  br label %bb38
bb38:
  %t93 = load i1, ptr %l45, !tbaa !21
  store i1 %t93, ptr %l20, !tbaa !21
  br label %bb44
bb39:
  br i1 true, label %bb40, label %bb41
bb40:
  br label %bb42
bb41:
  br label %bb43
bb42:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb44
bb43:
  call void @__olang_check_failed(ptr @olang_loc_13609328335a5af4_71f6842a5be0a9a0)
  unreachable
bb44:
  %t94 = load i1, ptr %l20, !tbaa !21
  store i1 %t94, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enote(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, %"compiler/source:Span" %a3, %"compiler/diagmsg:Msg" %a4) #0 {
entry:
  %l3 = alloca %"compiler/source:Span"
  %t21 = alloca { i64, [3 x i64] }, align 8
  store %"compiler/source:Span" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 0
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = getelementptr %"compiler/load:Loader", ptr %t7, i32 0, i32 4
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t13 = getelementptr %"compiler/source:Span", ptr %l3, i32 0, i32 0
  %t14 = load i32, ptr %t13, !tbaa !23
  %t16 = sext i32 %t14 to i64
  %t17 = getelementptr %"compiler/source:Span", ptr %l3, i32 0, i32 1
  %t18 = load i32, ptr %t17, !tbaa !23
  %t20 = sext i32 %t18 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t21
  %t22 = getelementptr { i64, [3 x i64] }, ptr %t21, i32 0, i32 0
  store i64 3, ptr %t22
  %t24 = insertvalue { i64, i64, i64 } undef, i64 %a2, 0
  %t26 = insertvalue { i64, i64, i64 } %t24, i64 %t16, 1
  %t28 = insertvalue { i64, i64, i64 } %t26, i64 %t20, 2
  %t29 = getelementptr { i64, [3 x i64] }, ptr %t21, i32 0, i32 1
  store { i64, i64, i64 } %t28, ptr %t29
  %t30 = load { i64, [3 x i64] }, ptr %t21
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v1, ptr %t10, i64 %a1, { i64, [3 x i64] } %t30, %"compiler/diagmsg:Msg" %a4)
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoteMadeNamed(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, i64 %a3, { i64, ptr } %a4, i64 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca i64
  %l17 = alloca %"compiler/typed:Local"
  %l18 = alloca i32
  %l19 = alloca { i64, ptr }
  %l20 = alloca %"compiler/source:Span"
  %l21 = alloca ptr
  %l22 = alloca ptr
  %l23 = alloca { i64, ptr }
  %l24 = alloca i32
  %l25 = alloca i32
  %l26 = alloca i32
  %l27 = alloca i64
  %l29 = alloca { i64, ptr }
  %l32 = alloca i1
  %l38 = alloca ptr
  %l42 = alloca i64
  %l45 = alloca i64
  %l63 = alloca ptr
  %l64 = alloca i1
  %l72 = alloca ptr
  %l74 = alloca ptr
  %l75 = alloca ptr
  %l76 = alloca i1
  %l79 = alloca i1
  %l81 = alloca ptr
  %l82 = alloca i1
  %l85 = alloca i1
  %l88 = alloca ptr
  %l89 = alloca i1
  %l98 = alloca ptr
  %l100 = alloca ptr
  %l104 = alloca ptr
  %l106 = alloca ptr
  %l110 = alloca i1
  %l113 = alloca ptr
  %l116 = alloca i32
  %l117 = alloca i64
  %l120 = alloca i1
  %l127 = alloca i1
  %l131 = alloca i64
  %l134 = alloca i1
  %l146 = alloca %"compiler/typed:Local"
  %l149 = alloca i1
  %l152 = alloca i1
  %l163 = alloca { i64, ptr }
  %l167 = alloca %"compiler/source:Span"
  %l170 = alloca ptr
  %l171 = alloca i64
  %l178 = alloca i64
  %l179 = alloca %"compiler/source:Span"
  %l182 = alloca %"compiler/diagmsg:Msg"
  %l183 = alloca ptr
  %l187 = alloca ptr
  %l188 = alloca i32
  %l192 = alloca ptr
  %l195 = alloca ptr
  %l199 = alloca i1
  %l202 = alloca ptr
  %l205 = alloca i32
  %l206 = alloca i64
  %l215 = alloca i1
  %l218 = alloca i1
  %l219 = alloca i1
  %l222 = alloca i1
  %l225 = alloca { i64, ptr }
  %l229 = alloca i1
  %l230 = alloca ptr
  %l233 = alloca i32
  %l234 = alloca i64
  %l236 = alloca ptr
  %l237 = alloca i64
  %l244 = alloca i64
  %l245 = alloca %"compiler/source:Span"
  %l249 = alloca %"compiler/diagmsg:Msg"
  %l255 = alloca i32
  %l258 = alloca i1
  %l260 = alloca i1
  %l263 = alloca i1
  %l265 = alloca i1
  %l269 = alloca i1
  %l278 = alloca i1
  %l279 = alloca i32
  %l284 = alloca i32
  %l289 = alloca i64
  %l292 = alloca i1
  %l295 = alloca ptr
  %l299 = alloca i32
  %l300 = alloca { i64, ptr }
  %l304 = alloca ptr
  %l305 = alloca i32
  %l309 = alloca i64
  %l310 = alloca i64
  %l314 = alloca i32
  %l315 = alloca i32
  %l326 = alloca i1
  %l327 = alloca i1
  %l332 = alloca i64
  %l337 = alloca i1
  %l340 = alloca i1
  %l342 = alloca { i64, ptr }
  %l349 = alloca { i64, ptr }
  %l351 = alloca ptr
  %l352 = alloca i64
  %l359 = alloca i64
  %l360 = alloca %"compiler/source:Span"
  %l364 = alloca %"compiler/diagmsg:Msg"
  %s0 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s17 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i64 %a3, ptr %l3
  store { i64, ptr } %a4, ptr %l4
  store i64 %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l5, !tbaa !24
  %t3 = icmp sgt i64 %t1, 8
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l32, !tbaa !21
  br label %bb3
bb2:
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t7 = icmp eq ptr %t5, null
  store i1 %t7, ptr %l32, !tbaa !21
  br label %bb3
bb3:
  %t9 = load i1, ptr %l32, !tbaa !21
  br i1 %t9, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb5:
  br label %bb6
bb6:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load ptr, ptr %l2, !tbaa !29
  %t15 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %v1, ptr %t10, ptr %t11)
  store ptr %t15, ptr %l38
  br label %bb7
bb7:
  %t16 = load ptr, ptr %l38, !tbaa !29
  store ptr %t16, ptr %l6, !tbaa !29
  store i64 0, ptr %l7, !tbaa !24
  store i64 16, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t17 = load i64, ptr %l8, !tbaa !24
  %t18 = load i64, ptr %l7, !tbaa !24
  %t21 = icmp sgt i64 %t17, %t18
  br i1 %t21, label %bb8, label %bb9
bb8:
  %t23 = load i64, ptr %l9, !tbaa !24
  %t25 = icmp sgt i64 %t23, 0
  br i1 %t25, label %bb10, label %bb11
bb9:
  store i64 0, ptr %l42, !tbaa !24
  br label %bb13
bb10:
  %t27 = load i64, ptr %l8, !tbaa !24
  %t28 = load i64, ptr %l7, !tbaa !24
  %t31 = sub i64 %t27, %t28
  %t32 = load i64, ptr %l9, !tbaa !24
  %t35 = add i64 %t31, %t32
  %t37 = sub i64 %t35, 1
  %t38 = load i64, ptr %l9, !tbaa !24
  %t41 = sdiv i64 %t37, %t38
  store i64 %t41, ptr %l45, !tbaa !24
  br label %bb12
bb11:
  store i64 0, ptr %l45, !tbaa !24
  br label %bb12
bb12:
  %t43 = load i64, ptr %l45, !tbaa !24
  store i64 %t43, ptr %l42, !tbaa !24
  br label %bb13
bb13:
  %t44 = load i64, ptr %l42, !tbaa !24
  store i64 %t44, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb14
bb14:
  %t45 = load i64, ptr %l11, !tbaa !24
  %t46 = load i64, ptr %l10, !tbaa !24
  %t49 = icmp slt i64 %t45, %t46
  %t51 = xor i1 %t49, true
  br i1 %t51, label %bb15, label %bb16
bb15:
  br label %bb48
bb16:
  br label %bb17
bb17:
  %t53 = load i64, ptr %l7, !tbaa !24
  %t54 = load i64, ptr %l11, !tbaa !24
  %t55 = load i64, ptr %l9, !tbaa !24
  %t58 = mul i64 %t54, %t55
  %t61 = add i64 %t53, %t58
  store i64 %t61, ptr %l12, !tbaa !24
  %t63 = load ptr, ptr %l6, !tbaa !29
  store ptr %t63, ptr %l63, !tbaa !29
  store i1 false, ptr %l64, !tbaa !21
  %t64 = load ptr, ptr %l63, !tbaa !29
  %t65 = icmp ne ptr %t64, null
  br i1 %t65, label %bb18, label %bb19
bb18:
  %t67 = load ptr, ptr %l63, !tbaa !29
  %t68 = load i64, ptr %t67, !range !{i64 0, i64 18}
  %t70 = icmp eq i64 %t68, 5
  store i1 %t70, ptr %l64, !tbaa !21
  br label %bb19
bb19:
  %t71 = load i1, ptr %l64, !tbaa !21
  br i1 %t71, label %bb20, label %bb21
bb20:
  %t72 = load ptr, ptr %l6, !tbaa !29
  %t74 = getelementptr { i64, [5 x i64] }, ptr %t72, i32 0, i32 1
  %t75 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t74, i32 0, i32 2
  %t76 = load ptr, ptr %t75
  store ptr %t76, ptr %l13, !tbaa !29
  br label %bb22
bb21:
  br label %bb24
bb22:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t79 = load ptr, ptr %l13, !tbaa !29
  %t81 = getelementptr %"compiler/typed:Promote", ptr %t79, i32 0, i32 0
  %t82 = load ptr, ptr %t81, !tbaa !29
  store ptr %t82, ptr %l72, !tbaa !29
  %t84 = load ptr, ptr %l72, !tbaa !29
  %t85 = call ptr @__olang_scope_of(ptr %t84, ptr null)
  %t86 = ptrtoint ptr %t85 to i64
  %t88 = inttoptr i64 %t86 to ptr
  %t90 = load ptr, ptr %l72, !tbaa !29
  %t91 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %t88, ptr %s0, ptr %t78, ptr %t90)
  store ptr %t91, ptr %l74
  br label %bb23
bb23:
  %t92 = load ptr, ptr %l74, !tbaa !29
  store ptr %t92, ptr %l6, !tbaa !29
  br label %bb46
bb24:
  %t93 = load ptr, ptr %l6, !tbaa !29
  store ptr %t93, ptr %l75, !tbaa !29
  store i1 false, ptr %l76, !tbaa !21
  %t94 = load ptr, ptr %l75, !tbaa !29
  %t95 = icmp ne ptr %t94, null
  br i1 %t95, label %bb25, label %bb26
bb25:
  %t97 = load ptr, ptr %l75, !tbaa !29
  %t98 = load i64, ptr %t97, !range !{i64 0, i64 18}
  %t100 = icmp eq i64 %t98, 2
  store i1 %t100, ptr %l76, !tbaa !21
  br label %bb26
bb26:
  %t101 = load i1, ptr %l76, !tbaa !21
  br i1 %t101, label %bb27, label %bb28
bb27:
  %t102 = load ptr, ptr %l6, !tbaa !29
  %t104 = getelementptr { i64, [5 x i64] }, ptr %t102, i32 0, i32 1
  %t105 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t104, i32 0, i32 2
  %t106 = load ptr, ptr %t105
  store ptr %t106, ptr %l81, !tbaa !29
  store i1 false, ptr %l82, !tbaa !21
  %t107 = load ptr, ptr %l81, !tbaa !29
  %t108 = icmp ne ptr %t107, null
  br i1 %t108, label %bb29, label %bb30
bb28:
  store i1 false, ptr %l79, !tbaa !21
  br label %bb36
bb29:
  %t110 = load ptr, ptr %l81, !tbaa !29
  %t111 = load i64, ptr %t110, !range !{i64 0, i64 8}
  %t113 = icmp eq i64 %t111, 3
  store i1 %t113, ptr %l82, !tbaa !21
  br label %bb30
bb30:
  %t114 = load i1, ptr %l82, !tbaa !21
  br i1 %t114, label %bb31, label %bb32
bb31:
  %t115 = load ptr, ptr %l6, !tbaa !29
  %t117 = getelementptr { i64, [5 x i64] }, ptr %t115, i32 0, i32 1
  %t118 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t117, i32 0, i32 2
  %t119 = load ptr, ptr %t118
  %t121 = getelementptr { i64, [4 x i64] }, ptr %t119, i32 0, i32 1
  %t122 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t121, i32 0, i32 2
  %t123 = load ptr, ptr %t122
  store ptr %t123, ptr %l88, !tbaa !29
  store i1 false, ptr %l89, !tbaa !21
  %t124 = load ptr, ptr %l88, !tbaa !29
  %t125 = icmp ne ptr %t124, null
  br i1 %t125, label %bb33, label %bb34
bb32:
  store i1 false, ptr %l85, !tbaa !21
  br label %bb35
bb33:
  %t127 = load ptr, ptr %l88, !tbaa !29
  %t128 = load i64, ptr %t127, !range !{i64 0, i64 8}
  %t130 = icmp eq i64 %t128, 6
  store i1 %t130, ptr %l89, !tbaa !21
  br label %bb34
bb34:
  %t131 = load i1, ptr %l89, !tbaa !21
  store i1 %t131, ptr %l85, !tbaa !21
  br label %bb35
bb35:
  %t132 = load i1, ptr %l85, !tbaa !21
  store i1 %t132, ptr %l79, !tbaa !21
  br label %bb36
bb36:
  %t133 = load i1, ptr %l79, !tbaa !21
  br i1 %t133, label %bb37, label %bb38
bb37:
  %t134 = load ptr, ptr %l6, !tbaa !29
  %t136 = getelementptr { i64, [5 x i64] }, ptr %t134, i32 0, i32 1
  %t137 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t136, i32 0, i32 2
  %t138 = load ptr, ptr %t137
  %t140 = getelementptr { i64, [4 x i64] }, ptr %t138, i32 0, i32 1
  %t141 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t140, i32 0, i32 2
  %t142 = load ptr, ptr %t141
  %t144 = getelementptr { i64, [4 x i64] }, ptr %t142, i32 0, i32 1
  %t145 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t144, i32 0, i32 2
  %t146 = load ptr, ptr %t145
  store ptr %t146, ptr %l14, !tbaa !29
  br label %bb39
bb38:
  br label %bb41
bb39:
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t149 = load ptr, ptr %l14, !tbaa !29
  store ptr %t149, ptr %l98, !tbaa !29
  %t151 = load ptr, ptr %l98, !tbaa !29
  %t152 = call ptr @__olang_scope_of(ptr %t151, ptr null)
  %t153 = ptrtoint ptr %t152 to i64
  %t155 = inttoptr i64 %t153 to ptr
  %t157 = load ptr, ptr %l98, !tbaa !29
  %t158 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %t155, ptr %s0, ptr %t148, ptr %t157)
  store ptr %t158, ptr %l100
  br label %bb40
bb40:
  %t159 = load ptr, ptr %l100, !tbaa !29
  store ptr %t159, ptr %l6, !tbaa !29
  br label %bb46
bb41:
  br i1 true, label %bb42, label %bb43
bb42:
  br label %bb44
bb43:
  br label %bb45
bb44:
  br label %bb48
bb45:
  call void @__olang_check_failed(ptr @olang_loc_2a83bf20490fb4f0_b79be661c23cb1e4)
  unreachable
bb46:
  br label %bb47
bb47:
  %t160 = load i64, ptr %l11, !tbaa !24
  %t162 = add i64 %t160, 1
  store i64 %t162, ptr %l11, !tbaa !24
  br label %bb14
bb48:
  %t164 = load ptr, ptr %l6, !tbaa !29
  store ptr %t164, ptr %l104, !tbaa !29
  %t166 = load ptr, ptr %l104, !tbaa !29
  %t167 = call ptr @__olang_scope_of(ptr %t166, ptr null)
  %t168 = ptrtoint ptr %t167 to i64
  %t170 = inttoptr i64 %t168 to ptr
  %t171 = load ptr, ptr %l104, !tbaa !29
  %t172 = call ptr @compiler_2ftyped_2eCall_2eOf(ptr %t170, ptr %s0, ptr %t171)
  store ptr %t172, ptr %l106
  br label %bb49
bb49:
  %t173 = load ptr, ptr %l106, !tbaa !29
  store ptr %t173, ptr %l15, !tbaa !29
  %t174 = load ptr, ptr %l15, !tbaa !29
  %t176 = icmp eq ptr %t174, null
  %t178 = xor i1 %t176, true
  br i1 %t178, label %bb50, label %bb51
bb50:
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t182 = getelementptr %"compiler/scope:Scoper", ptr %t180, i32 0, i32 0
  %t183 = load ptr, ptr %t182, !tbaa !29
  %t185 = getelementptr %"compiler/generic:Program", ptr %t183, i32 0, i32 2
  store ptr %t185, ptr %l113, !tbaa !29
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t187 = load ptr, ptr %l15, !tbaa !29
  %t190 = call i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeType(ptr %v0, ptr %s0, ptr %t186, ptr %t187)
  store i32 %t190, ptr %l116
  br label %bb52
bb51:
  store i1 false, ptr %l110, !tbaa !21
  br label %bb54
bb52:
  %t191 = load ptr, ptr %l113, !tbaa !29
  %t192 = load i32, ptr %l116, !tbaa !23
  %t193 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRole(ptr %v0, ptr %t191, i32 %t192)
  store i64 %t193, ptr %l117
  br label %bb53
bb53:
  %t194 = load i64, ptr @G_2ecompiler_2ftypes_2eRoleCtor, !tbaa !24
  %t195 = load i64, ptr %l117, !tbaa !24
  %t197 = icmp ne i64 %t195, %t194
  store i1 %t197, ptr %l110, !tbaa !21
  br label %bb54
bb54:
  %t199 = load i1, ptr %l110, !tbaa !21
  br i1 %t199, label %bb55, label %bb56
bb55:
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t201 = load i64, ptr %l1, !tbaa !24
  %t202 = load ptr, ptr %l15, !tbaa !29
  %t203 = load i64, ptr %l3, !tbaa !24
  %t204 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t205 = load i64, ptr %l5, !tbaa !24
  %t212 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoteThroughResult(ptr %v0, ptr %s0, ptr %v2, ptr %t200, i64 %t201, ptr %t202, i64 %t203, { i64, ptr } %t204, i64 %t205)
  store i1 %t212, ptr %l127
  br label %bb57
bb56:
  store i1 false, ptr %l120, !tbaa !21
  br label %bb58
bb57:
  %t213 = load i1, ptr %l127, !tbaa !21
  store i1 %t213, ptr %l120, !tbaa !21
  br label %bb58
bb58:
  %t214 = load i1, ptr %l120, !tbaa !21
  br i1 %t214, label %bb59, label %bb60
bb59:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb60:
  br label %bb61
bb61:
  %t215 = load ptr, ptr %l0, !tbaa !29
  %t216 = load ptr, ptr %l2, !tbaa !29
  %t220 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emadeLocal(ptr %v0, ptr %v1, ptr %t215, ptr %t216, i64 0)
  store i64 %t220, ptr %l131
  br label %bb62
bb62:
  %t221 = load i64, ptr %l131, !tbaa !24
  store i64 %t221, ptr %l16, !tbaa !24
  %t222 = load i64, ptr %l16, !tbaa !24
  %t224 = icmp slt i64 %t222, 0
  br i1 %t224, label %bb63, label %bb64
bb63:
  store i1 true, ptr %l134, !tbaa !21
  br label %bb65
bb64:
  %t226 = load i64, ptr %l16, !tbaa !24
  %t227 = load i64, ptr %l3, !tbaa !24
  %t230 = icmp eq i64 %t226, %t227
  store i1 %t230, ptr %l134, !tbaa !21
  br label %bb65
bb65:
  %t232 = load i1, ptr %l134, !tbaa !21
  br i1 %t232, label %bb66, label %bb67
bb66:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb67:
  br label %bb68
bb68:
  %t233 = load ptr, ptr %l0, !tbaa !29
  %t235 = getelementptr %"compiler/scope:Scoper", ptr %t233, i32 0, i32 26
  %t236 = load ptr, ptr %t235, !tbaa !29
  %t238 = icmp eq ptr %t236, null
  br i1 %t238, label %bb69, label %bb70
bb69:
  call void @__olang_check_failed(ptr @olang_loc_c00f0eb027871792_20073d10539efd6)
  unreachable
bb70:
  br label %bb71
bb71:
  %t240 = load ptr, ptr %l0, !tbaa !29
  %t242 = getelementptr %"compiler/scope:Scoper", ptr %t240, i32 0, i32 26
  %t243 = load ptr, ptr %t242, !tbaa !29
  %t246 = getelementptr %"compiler/typed:Body", ptr %t243, i32 0, i32 7
  %t247 = load i64, ptr %l16, !tbaa !24
  %t250 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t246, i64 %t247)
  store %"compiler/typed:Local" %t250, ptr %l146
  br label %bb72
bb72:
  %t251 = load %"compiler/typed:Local", ptr %l146
  store %"compiler/typed:Local" %t251, ptr %l17
  %t252 = getelementptr %"compiler/typed:Local", ptr %l17, i32 0, i32 0
  %t253 = load i32, ptr %t252, !tbaa !23
  %t255 = icmp eq i32 %t253, 0
  br i1 %t255, label %bb73, label %bb74
bb73:
  store i1 true, ptr %l149, !tbaa !21
  br label %bb76
bb74:
  %t257 = load ptr, ptr %l0, !tbaa !29
  %t258 = load i64, ptr %l16, !tbaa !24
  %t261 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eloopElement(ptr %v0, ptr %t257, i64 %t258)
  store i1 %t261, ptr %l152
  br label %bb75
bb75:
  %t262 = load i1, ptr %l152, !tbaa !21
  store i1 %t262, ptr %l149, !tbaa !21
  br label %bb76
bb76:
  %t263 = load i1, ptr %l149, !tbaa !21
  br i1 %t263, label %bb77, label %bb78
bb77:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb78:
  br label %bb79
bb79:
  %t264 = getelementptr %"compiler/typed:Local", ptr %l17, i32 0, i32 4
  %t265 = load i32, ptr %t264, !range !{i32 0, i32 7}
  store i32 %t265, ptr %l18
  %t267 = load i32, ptr %l18, !range !{i32 0, i32 7}
  %t269 = trunc i64 1 to i32
  %t270 = icmp eq i32 %t267, %t269
  br i1 %t270, label %bb80, label %bb81
bb80:
  br label %bb84
bb81:
  %t272 = load i32, ptr %l18, !range !{i32 0, i32 7}
  %t274 = trunc i64 4 to i32
  %t275 = icmp eq i32 %t272, %t274
  br i1 %t275, label %bb82, label %bb83
bb82:
  br label %bb84
bb83:
  br label %bb85
bb84:
  br label %bb90
bb85:
  br i1 true, label %bb86, label %bb87
bb86:
  br label %bb88
bb87:
  br label %bb89
bb88:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb89:
  call void @__olang_check_failed(ptr @olang_loc_e2b2a689ed5c2c6a_2e02b8bd326f399e)
  unreachable
bb90:
  %t277 = load ptr, ptr %l0, !tbaa !29
  %t279 = getelementptr %"compiler/scope:Scoper", ptr %t277, i32 0, i32 0
  %t280 = load ptr, ptr %t279, !tbaa !29
  %t282 = getelementptr %"compiler/generic:Program", ptr %t280, i32 0, i32 0
  %t283 = load ptr, ptr %t282, !tbaa !29
  %t285 = getelementptr %"compiler/load:Loader", ptr %t283, i32 0, i32 3
  %t286 = load ptr, ptr %t285, !tbaa !29
  %t287 = getelementptr %"compiler/typed:Local", ptr %l17, i32 0, i32 0
  %t288 = load i32, ptr %t287, !tbaa !23
  %t291 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t286, i32 %t288)
  store { i64, ptr } %t291, ptr %l163
  br label %bb91
bb91:
  %t292 = load { i64, ptr }, ptr %l163, !tbaa !27
  store { i64, ptr } %t292, ptr %l19, !tbaa !27
  %t293 = load ptr, ptr %l0, !tbaa !29
  %t294 = getelementptr %"compiler/typed:Local", ptr %l17, i32 0, i32 1
  %t295 = load %"compiler/source:Span", ptr %t294
  %t296 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t300 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewordAt(ptr %v0, ptr %v0, ptr %t293, %"compiler/source:Span" %t295, { i64, ptr } %t296)
  store %"compiler/source:Span" %t300, ptr %l167
  br label %bb92
bb92:
  %t301 = load %"compiler/source:Span", ptr %l167
  store %"compiler/source:Span" %t301, ptr %l20
  %t302 = getelementptr %"compiler/typed:Local", ptr %l17, i32 0, i32 4
  %t303 = load i32, ptr %t302, !range !{i32 0, i32 7}
  %t305 = trunc i64 4 to i32
  %t306 = icmp eq i32 %t303, %t305
  br i1 %t306, label %bb93, label %bb94
bb93:
  store %olang.scope zeroinitializer, ptr %s13
  %t308 = load ptr, ptr %l0, !tbaa !29
  store ptr %t308, ptr %l170, !tbaa !29
  %t309 = load i64, ptr %l1, !tbaa !24
  store i64 %t309, ptr %l171, !tbaa !24
  %t310 = load ptr, ptr %l0, !tbaa !29
  %t312 = getelementptr %"compiler/scope:Scoper", ptr %t310, i32 0, i32 26
  %t313 = load ptr, ptr %t312, !tbaa !29
  %t315 = icmp eq ptr %t313, null
  br i1 %t315, label %bb95, label %bb96
bb94:
  br label %bb100
bb95:
  call void @__olang_check_failed(ptr @olang_loc_9f5a8ccf03b4db04_630c918a623736e8)
  unreachable
bb96:
  br label %bb97
bb97:
  %t317 = load ptr, ptr %l0, !tbaa !29
  %t319 = getelementptr %"compiler/scope:Scoper", ptr %t317, i32 0, i32 26
  %t320 = load ptr, ptr %t319, !tbaa !29
  %t323 = getelementptr %"compiler/typed:Body", ptr %t320, i32 0, i32 3
  %t324 = load i64, ptr %t323, !tbaa !24
  store i64 %t324, ptr %l178, !tbaa !24
  %t325 = load %"compiler/source:Span", ptr %l20
  store %"compiler/source:Span" %t325, ptr %l179
  %t326 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t327 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t330 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteBindingWhere(ptr %v0, ptr %v2, ptr %s13, { i64, ptr } %t326, { i64, ptr } %t327)
  store %"compiler/diagmsg:Msg" %t330, ptr %l182
  br label %bb98
bb98:
  %t331 = load ptr, ptr %l170, !tbaa !29
  %t332 = load i64, ptr %l171, !tbaa !24
  %t333 = load i64, ptr %l178, !tbaa !24
  %t334 = load %"compiler/source:Span", ptr %l179
  %t335 = load %"compiler/diagmsg:Msg", ptr %l182
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enote(ptr %v0, ptr %s13, ptr %t331, i64 %t332, i64 %t333, %"compiler/source:Span" %t334, %"compiler/diagmsg:Msg" %t335)
  br label %bb99
bb99:
  call void @__olang_scope_close(ptr %s13)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb100:
  %t336 = load ptr, ptr %l0, !tbaa !29
  %t338 = getelementptr %"compiler/scope:Scoper", ptr %t336, i32 0, i32 45
  %t339 = load i64, ptr %l16, !tbaa !24
  %t342 = call { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_H68cd31c3dbcdb47f3349b834dda1e07d(ptr %v0, ptr %v0, ptr %t338, i64 %t339)
  %t343 = extractvalue { i32, ptr } %t342, 1
  %t344 = extractvalue { i32, ptr } %t342, 0
  store i32 %t344, ptr %l188
  %t345 = icmp ne i32 %t344, 0
  br i1 %t345, label %bb102, label %ok.346, !prof !99
ok.346:
  store ptr %t343, ptr %l187
  br label %bb101
bb101:
  %t347 = load ptr, ptr %l187, !tbaa !29
  store ptr %t347, ptr %l183, !tbaa !29
  br label %bb104
bb102:
  br label %bb103
bb103:
  store ptr null, ptr %l183, !tbaa !29
  br label %bb104
bb104:
  %t348 = load ptr, ptr %l183, !tbaa !29
  store ptr %t348, ptr %l21, !tbaa !29
  %t349 = load ptr, ptr %l21, !tbaa !29
  %t351 = icmp eq ptr %t349, null
  %t353 = xor i1 %t351, true
  br i1 %t353, label %bb105, label %bb106
bb105:
  %t355 = load ptr, ptr %l21, !tbaa !29
  %t358 = call ptr @compiler_2ftyped_2eCall_2eOf(ptr %v0, ptr %s0, ptr %t355)
  store ptr %t358, ptr %l195
  br label %bb107
bb106:
  store ptr null, ptr %l192, !tbaa !29
  br label %bb108
bb107:
  %t359 = load ptr, ptr %l195, !tbaa !29
  store ptr %t359, ptr %l192, !tbaa !29
  br label %bb108
bb108:
  %t360 = load ptr, ptr %l192, !tbaa !29
  store ptr %t360, ptr %l22, !tbaa !29
  %t361 = load ptr, ptr %l22, !tbaa !29
  %t363 = icmp eq ptr %t361, null
  %t365 = xor i1 %t363, true
  br i1 %t365, label %bb109, label %bb110
bb109:
  %t367 = load ptr, ptr %l0, !tbaa !29
  %t369 = getelementptr %"compiler/scope:Scoper", ptr %t367, i32 0, i32 0
  %t370 = load ptr, ptr %t369, !tbaa !29
  %t372 = getelementptr %"compiler/generic:Program", ptr %t370, i32 0, i32 2
  store ptr %t372, ptr %l202, !tbaa !29
  %t373 = load ptr, ptr %l0, !tbaa !29
  %t374 = load ptr, ptr %l22, !tbaa !29
  %t377 = call i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeType(ptr %v0, ptr %s0, ptr %t373, ptr %t374)
  store i32 %t377, ptr %l205
  br label %bb111
bb110:
  store i1 false, ptr %l199, !tbaa !21
  br label %bb113
bb111:
  %t378 = load ptr, ptr %l202, !tbaa !29
  %t379 = load i32, ptr %l205, !tbaa !23
  %t380 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRole(ptr %v0, ptr %t378, i32 %t379)
  store i64 %t380, ptr %l206
  br label %bb112
bb112:
  %t381 = load i64, ptr @G_2ecompiler_2ftypes_2eRoleCtor, !tbaa !24
  %t382 = load i64, ptr %l206, !tbaa !24
  %t384 = icmp ne i64 %t382, %t381
  store i1 %t384, ptr %l199, !tbaa !21
  br label %bb113
bb113:
  %t386 = load i1, ptr %l199, !tbaa !21
  br i1 %t386, label %bb114, label %bb115
bb114:
  store %olang.scope zeroinitializer, ptr %s14
  %t387 = load ptr, ptr %l0, !tbaa !29
  %t388 = load i64, ptr %l1, !tbaa !24
  %t389 = load ptr, ptr %l22, !tbaa !29
  %t390 = load i64, ptr %l3, !tbaa !24
  %t391 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t392 = load i64, ptr %l5, !tbaa !24
  %t399 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoteThroughResult(ptr %v0, ptr %s0, ptr %v2, ptr %t387, i64 %t388, ptr %t389, i64 %t390, { i64, ptr } %t391, i64 %t392)
  store i1 %t399, ptr %l215
  br label %bb116
bb115:
  br label %bb142
bb116:
  %t400 = load i1, ptr %l215, !tbaa !21
  br i1 %t400, label %bb117, label %bb118
bb117:
  call void @__olang_scope_close(ptr %s14)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb118:
  br label %bb119
bb119:
  %t401 = load ptr, ptr %l0, !tbaa !29
  %t402 = load ptr, ptr %l22, !tbaa !29
  %t405 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisMethodCall(ptr %v0, ptr %s0, ptr %t401, ptr %t402)
  store i1 %t405, ptr %l218
  br label %bb120
bb120:
  %t406 = load i1, ptr %l218, !tbaa !21
  br i1 %t406, label %bb121, label %bb122
bb121:
  store i1 true, ptr %l219, !tbaa !21
  br label %bb124
bb122:
  %t407 = load ptr, ptr %l0, !tbaa !29
  %t408 = load ptr, ptr %l22, !tbaa !29
  %t411 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eindexCall(ptr %v0, ptr %s0, ptr %t407, ptr %t408)
  store i1 %t411, ptr %l222
  br label %bb123
bb123:
  %t412 = load i1, ptr %l222, !tbaa !21
  store i1 %t412, ptr %l219, !tbaa !21
  br label %bb124
bb124:
  %t413 = load i1, ptr %l219, !tbaa !21
  br i1 %t413, label %bb125, label %bb126
bb125:
  call void @__olang_scope_close(ptr %s14)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb126:
  br label %bb127
bb127:
  %t414 = load ptr, ptr %l0, !tbaa !29
  %t415 = load ptr, ptr %l22, !tbaa !29
  %t418 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeName(ptr %v0, ptr %s0, ptr %s14, ptr %t414, ptr %t415)
  store { i64, ptr } %t418, ptr %l225
  br label %bb128
bb128:
  %t419 = load { i64, ptr }, ptr %l225, !tbaa !27
  store { i64, ptr } %t419, ptr %l23, !tbaa !27
  %t420 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t422 = extractvalue { i64, ptr } %t420, 0
  %t424 = icmp sgt i64 %t422, 0
  br i1 %t424, label %bb129, label %bb130
bb129:
  %t426 = load ptr, ptr %l0, !tbaa !29
  store ptr %t426, ptr %l230, !tbaa !29
  %t427 = load ptr, ptr %l0, !tbaa !29
  %t428 = load ptr, ptr %l22, !tbaa !29
  %t431 = call i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeType(ptr %v0, ptr %s0, ptr %t427, ptr %t428)
  store i32 %t431, ptr %l233
  br label %bb131
bb130:
  store i1 false, ptr %l229, !tbaa !21
  br label %bb133
bb131:
  %t432 = load ptr, ptr %l230, !tbaa !29
  %t433 = load i32, ptr %l233, !tbaa !23
  %t434 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eresultVarOf(ptr %v0, ptr %t432, i32 %t433)
  store i64 %t434, ptr %l234
  br label %bb132
bb132:
  %t435 = load i64, ptr %l234, !tbaa !24
  %t436 = icmp sge i64 %t435, 0
  store i1 %t436, ptr %l229, !tbaa !21
  br label %bb133
bb133:
  %t438 = load i1, ptr %l229, !tbaa !21
  br i1 %t438, label %bb134, label %bb135
bb134:
  store %olang.scope zeroinitializer, ptr %s17
  %t439 = load ptr, ptr %l0, !tbaa !29
  store ptr %t439, ptr %l236, !tbaa !29
  %t440 = load i64, ptr %l1, !tbaa !24
  store i64 %t440, ptr %l237, !tbaa !24
  %t441 = load ptr, ptr %l0, !tbaa !29
  %t443 = getelementptr %"compiler/scope:Scoper", ptr %t441, i32 0, i32 26
  %t444 = load ptr, ptr %t443, !tbaa !29
  %t446 = icmp eq ptr %t444, null
  br i1 %t446, label %bb136, label %bb137
bb135:
  br label %bb141
bb136:
  call void @__olang_check_failed(ptr @olang_loc_17e7add56c17a955_fd89ad37b1d5baa1)
  unreachable
bb137:
  br label %bb138
bb138:
  %t448 = load ptr, ptr %l0, !tbaa !29
  %t450 = getelementptr %"compiler/scope:Scoper", ptr %t448, i32 0, i32 26
  %t451 = load ptr, ptr %t450, !tbaa !29
  %t454 = getelementptr %"compiler/typed:Body", ptr %t451, i32 0, i32 3
  %t455 = load i64, ptr %t454, !tbaa !24
  store i64 %t455, ptr %l244, !tbaa !24
  %t456 = load %"compiler/source:Span", ptr %l20
  store %"compiler/source:Span" %t456, ptr %l245
  %t457 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t458 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t459 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t463 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteMakeWhere(ptr %v0, ptr %v2, ptr %s14, ptr %s17, { i64, ptr } %t457, { i64, ptr } %t458, { i64, ptr } %t459)
  store %"compiler/diagmsg:Msg" %t463, ptr %l249
  br label %bb139
bb139:
  %t464 = load ptr, ptr %l236, !tbaa !29
  %t465 = load i64, ptr %l237, !tbaa !24
  %t466 = load i64, ptr %l244, !tbaa !24
  %t467 = load %"compiler/source:Span", ptr %l245
  %t468 = load %"compiler/diagmsg:Msg", ptr %l249
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enote(ptr %v0, ptr %s17, ptr %t464, i64 %t465, i64 %t466, %"compiler/source:Span" %t467, %"compiler/diagmsg:Msg" %t468)
  br label %bb140
bb140:
  call void @__olang_scope_close(ptr %s17)
  call void @__olang_scope_close(ptr %s14)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb141:
  call void @__olang_scope_close(ptr %s14)
  br label %bb142
bb142:
  %t469 = getelementptr %"compiler/typed:Local", ptr %l17, i32 0, i32 2
  %t470 = load i32, ptr %t469, !tbaa !23
  store i32 %t470, ptr %l24, !tbaa !23
  %t472 = load ptr, ptr %l0, !tbaa !29
  %t474 = getelementptr %"compiler/scope:Scoper", ptr %t472, i32 0, i32 0
  %t475 = load ptr, ptr %t474, !tbaa !29
  %t477 = getelementptr %"compiler/generic:Program", ptr %t475, i32 0, i32 2
  %t478 = load i32, ptr %l24, !tbaa !23
  %t481 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t477, i32 %t478)
  store i32 %t481, ptr %l255
  br label %bb143
bb143:
  %t482 = load i32, ptr %l255, !range !{i32 0, i32 33}
  store i32 %t482, ptr %l25
  %t483 = load ptr, ptr %l0, !tbaa !29
  %t484 = load i32, ptr %l24, !tbaa !23
  %t487 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t483, i32 %t484)
  store i1 %t487, ptr %l258
  br label %bb144
bb144:
  %t488 = load i1, ptr %l258, !tbaa !21
  %t489 = xor i1 %t488, true
  br i1 %t489, label %bb145, label %bb146
bb145:
  %t491 = load ptr, ptr %l0, !tbaa !29
  %t492 = load i32, ptr %l24, !tbaa !23
  %t495 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholds(ptr %v0, ptr %t491, i32 %t492)
  store i1 %t495, ptr %l263
  br label %bb147
bb146:
  store i1 false, ptr %l260, !tbaa !21
  br label %bb148
bb147:
  %t496 = load i1, ptr %l263, !tbaa !21
  %t497 = xor i1 %t496, true
  store i1 %t497, ptr %l260, !tbaa !21
  br label %bb148
bb148:
  %t499 = load i1, ptr %l260, !tbaa !21
  br i1 %t499, label %bb149, label %bb150
bb149:
  %t500 = load i32, ptr %l25, !range !{i32 0, i32 33}
  %t502 = trunc i64 19 to i32
  %t503 = icmp eq i32 %t500, %t502
  %t505 = xor i1 %t503, true
  store i1 %t505, ptr %l265, !tbaa !21
  br label %bb151
bb150:
  store i1 false, ptr %l265, !tbaa !21
  br label %bb151
bb151:
  %t507 = load i1, ptr %l265, !tbaa !21
  br i1 %t507, label %bb152, label %bb153
bb152:
  %t508 = load i32, ptr %l25, !range !{i32 0, i32 33}
  %t510 = trunc i64 18 to i32
  %t511 = icmp eq i32 %t508, %t510
  %t513 = xor i1 %t511, true
  store i1 %t513, ptr %l269, !tbaa !21
  br label %bb154
bb153:
  store i1 false, ptr %l269, !tbaa !21
  br label %bb154
bb154:
  %t515 = load i1, ptr %l269, !tbaa !21
  br i1 %t515, label %bb155, label %bb156
bb155:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb156:
  br label %bb157
bb157:
  %t516 = load ptr, ptr %l0, !tbaa !29
  %t518 = getelementptr %"compiler/scope:Scoper", ptr %t516, i32 0, i32 5
  %t519 = load { ptr, ptr }, ptr %t518
  %t521 = extractvalue { ptr, ptr } %t519, 0
  %t522 = extractvalue { ptr, ptr } zeroinitializer, 0
  %t523 = icmp eq ptr %t521, %t522
  %t524 = extractvalue { ptr, ptr } %t519, 1
  %t525 = extractvalue { ptr, ptr } zeroinitializer, 1
  %t526 = icmp eq ptr %t524, %t525
  %t527 = and i1 %t523, %t526
  br i1 %t527, label %bb158, label %bb159
bb158:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb159:
  br label %bb160
bb160:
  %t529 = load ptr, ptr %l0, !tbaa !29
  %t530 = load i32, ptr %l24, !tbaa !23
  %t533 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t529, i32 %t530)
  store i1 %t533, ptr %l278
  br label %bb161
bb161:
  %t534 = load i1, ptr %l278, !tbaa !21
  br i1 %t534, label %bb162, label %bb163
bb162:
  %t535 = load ptr, ptr %l0, !tbaa !29
  %t537 = getelementptr %"compiler/scope:Scoper", ptr %t535, i32 0, i32 0
  %t538 = load ptr, ptr %t537, !tbaa !29
  %t540 = getelementptr %"compiler/generic:Program", ptr %t538, i32 0, i32 2
  %t541 = load i32, ptr %l24, !tbaa !23
  %t544 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t540, i32 %t541)
  store i32 %t544, ptr %l284
  br label %bb164
bb163:
  %t545 = load i32, ptr %l24, !tbaa !23
  store i32 %t545, ptr %l279, !tbaa !23
  br label %bb165
bb164:
  %t547 = load i32, ptr %l284, !tbaa !23
  store i32 %t547, ptr %l279, !tbaa !23
  br label %bb165
bb165:
  %t548 = load i32, ptr %l279, !tbaa !23
  store i32 %t548, ptr %l26, !tbaa !23
  %t549 = load ptr, ptr %l0, !tbaa !29
  %t550 = load ptr, ptr %l0, !tbaa !29
  %t552 = getelementptr %"compiler/scope:Scoper", ptr %t550, i32 0, i32 27
  %t553 = load i64, ptr %t552, !tbaa !24
  %t556 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2einstanceOf(ptr %v0, ptr %t549, i64 %t553)
  store i64 %t556, ptr %l289
  br label %bb166
bb166:
  %t557 = load i64, ptr %l289, !tbaa !24
  store i64 %t557, ptr %l27, !tbaa !24
  %t558 = load i64, ptr %l27, !tbaa !24
  %t560 = icmp sge i64 %t558, 0
  br i1 %t560, label %bb167, label %bb168
bb167:
  %t562 = load ptr, ptr %l0, !tbaa !29
  %t564 = getelementptr %"compiler/scope:Scoper", ptr %t562, i32 0, i32 0
  %t565 = load ptr, ptr %t564, !tbaa !29
  %t567 = getelementptr %"compiler/generic:Program", ptr %t565, i32 0, i32 2
  store ptr %t567, ptr %l295, !tbaa !29
  %t568 = load ptr, ptr %l0, !tbaa !29
  %t570 = getelementptr %"compiler/scope:Scoper", ptr %t568, i32 0, i32 0
  %t571 = load ptr, ptr %t570, !tbaa !29
  %t572 = load i64, ptr %l27, !tbaa !24
  %t575 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceArgs(ptr %v0, ptr %t571, i64 %t572)
  store i32 %t575, ptr %l299
  br label %bb169
bb168:
  store i1 false, ptr %l292, !tbaa !21
  br label %bb171
bb169:
  %t576 = load ptr, ptr %l295, !tbaa !29
  %t577 = load i32, ptr %l299, !tbaa !23
  %t578 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t576, i32 %t577)
  store { i64, ptr } %t578, ptr %l300
  br label %bb170
bb170:
  %t579 = load { i64, ptr }, ptr %l300, !tbaa !27
  %t580 = extractvalue { i64, ptr } %t579, 0
  %t582 = icmp sgt i64 %t580, 0
  store i1 %t582, ptr %l292, !tbaa !21
  br label %bb171
bb171:
  %t584 = load i1, ptr %l292, !tbaa !21
  br i1 %t584, label %bb172, label %bb173
bb172:
  %t585 = load ptr, ptr %l0, !tbaa !29
  %t587 = getelementptr %"compiler/scope:Scoper", ptr %t585, i32 0, i32 0
  %t588 = load ptr, ptr %t587, !tbaa !29
  store ptr %t588, ptr %l304, !tbaa !29
  %t589 = load i32, ptr %l26, !tbaa !23
  store i32 %t589, ptr %l305, !tbaa !23
  %t590 = load ptr, ptr %l0, !tbaa !29
  %t592 = getelementptr %"compiler/scope:Scoper", ptr %t590, i32 0, i32 0
  %t593 = load ptr, ptr %t592, !tbaa !29
  %t594 = load i64, ptr %l27, !tbaa !24
  %t597 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t593, i64 %t594)
  store i64 %t597, ptr %l309
  br label %bb174
bb173:
  br label %bb182
bb174:
  %t598 = load i64, ptr %l309, !tbaa !24
  %t599 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t598)
  store i64 %t599, ptr %l310
  br label %bb175
bb175:
  %t600 = load ptr, ptr %l0, !tbaa !29
  %t602 = getelementptr %"compiler/scope:Scoper", ptr %t600, i32 0, i32 0
  %t603 = load ptr, ptr %t602, !tbaa !29
  %t604 = load i64, ptr %l27, !tbaa !24
  %t607 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceArgs(ptr %v0, ptr %t603, i64 %t604)
  store i32 %t607, ptr %l314
  br label %bb176
bb176:
  %t608 = load ptr, ptr %l304, !tbaa !29
  %t609 = load i32, ptr %l305, !tbaa !23
  %t610 = load i64, ptr %l310, !tbaa !24
  %t611 = load i32, ptr %l314, !tbaa !23
  %t612 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnsubst(ptr %v0, ptr %t608, i32 %t609, i64 %t610, i32 %t611)
  store i32 %t612, ptr %l315
  br label %bb177
bb177:
  %t613 = load i32, ptr %l315, !tbaa !23
  store i32 %t613, ptr %l26, !tbaa !23
  %t614 = load i32, ptr %l26, !tbaa !23
  %t615 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t618 = icmp eq i32 %t614, %t615
  br i1 %t618, label %bb178, label %bb179
bb178:
  %t620 = load ptr, ptr %l0, !tbaa !29
  %t622 = getelementptr %"compiler/scope:Scoper", ptr %t620, i32 0, i32 0
  %t623 = load ptr, ptr %t622, !tbaa !29
  %t625 = getelementptr %"compiler/generic:Program", ptr %t623, i32 0, i32 0
  %t626 = load ptr, ptr %t625, !tbaa !29
  %t628 = getelementptr %"compiler/load:Loader", ptr %t626, i32 0, i32 4
  %t629 = load ptr, ptr %t628, !tbaa !29
  %t630 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eYield(ptr %v0, ptr %t629, i64 %t630)
  br label %bb180
bb179:
  br label %bb181
bb180:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb181:
  br label %bb182
bb182:
  %t633 = load ptr, ptr %l0, !tbaa !29
  %t634 = load i32, ptr %l24, !tbaa !23
  %t637 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t633, i32 %t634)
  store i1 %t637, ptr %l326
  br label %bb183
bb183:
  %t638 = load i1, ptr %l326, !tbaa !21
  br i1 %t638, label %bb184, label %bb185
bb184:
  %t639 = load ptr, ptr %l0, !tbaa !29
  %t641 = getelementptr %"compiler/scope:Scoper", ptr %t639, i32 0, i32 0
  %t642 = load ptr, ptr %t641, !tbaa !29
  %t644 = getelementptr %"compiler/generic:Program", ptr %t642, i32 0, i32 2
  %t645 = load i32, ptr %l24, !tbaa !23
  %t648 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t644, i32 %t645)
  store i64 %t648, ptr %l332
  br label %bb186
bb185:
  store i1 true, ptr %l327, !tbaa !21
  br label %bb187
bb186:
  %t649 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t650 = load i64, ptr %l332, !tbaa !24
  %t652 = and i64 %t650, %t649
  %t654 = icmp ne i64 %t652, 0
  store i1 %t654, ptr %l327, !tbaa !21
  br label %bb187
bb187:
  %t656 = load i1, ptr %l327, !tbaa !21
  br i1 %t656, label %bb188, label %bb189
bb188:
  %t659 = load ptr, ptr %l0, !tbaa !29
  %t660 = load i32, ptr %l26, !tbaa !23
  %t663 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFunc(ptr %v0, ptr %t659, i32 %t660)
  store i1 %t663, ptr %l340
  br label %bb190
bb189:
  store i1 false, ptr %l337, !tbaa !21
  br label %bb191
bb190:
  %t664 = load i1, ptr %l340, !tbaa !21
  %t665 = xor i1 %t664, true
  store i1 %t665, ptr %l337, !tbaa !21
  br label %bb191
bb191:
  %t667 = load i1, ptr %l337, !tbaa !21
  br i1 %t667, label %bb192, label %bb193
bb192:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d5, i32 0, i32 1) }, ptr %l342, !tbaa !27
  br label %bb194
bb193:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d6, i32 0, i32 1) }, ptr %l342, !tbaa !27
  br label %bb194
bb194:
  %t668 = load ptr, ptr %l0, !tbaa !29
  %t670 = getelementptr %"compiler/scope:Scoper", ptr %t668, i32 0, i32 5
  %t671 = load { ptr, ptr }, ptr %t670
  %t673 = extractvalue { ptr, ptr } %t671, 0
  %t674 = extractvalue { ptr, ptr } zeroinitializer, 0
  %t675 = icmp eq ptr %t673, %t674
  %t676 = extractvalue { ptr, ptr } %t671, 1
  %t677 = extractvalue { ptr, ptr } zeroinitializer, 1
  %t678 = icmp eq ptr %t676, %t677
  %t679 = and i1 %t675, %t678
  br i1 %t679, label %bb195, label %bb196
bb195:
  call void @__olang_check_failed(ptr @olang_loc_7cb574562870c9ae_44cb25218e79651a)
  unreachable
bb196:
  br label %bb197
bb197:
  %t681 = load ptr, ptr %l0, !tbaa !29
  %t683 = getelementptr %"compiler/scope:Scoper", ptr %t681, i32 0, i32 5
  %t684 = load { ptr, ptr }, ptr %t683
  %t685 = load i32, ptr %l26, !tbaa !23
  %t687 = extractvalue { ptr, ptr } %t684, 0
  %t688 = extractvalue { ptr, ptr } %t684, 1
  %t690 = call { i64, ptr } %t687(ptr %t688, ptr %s0, i32 %t685)
  store { i64, ptr } %t690, ptr %l349
  br label %bb198
bb198:
  %t691 = load { i64, ptr }, ptr %l342, !tbaa !27
  %t692 = extractvalue { i64, ptr } %t691, 1
  %t693 = extractvalue { i64, ptr } %t691, 0
  %t694 = load { i64, ptr }, ptr %l349, !tbaa !27
  %t695 = extractvalue { i64, ptr } %t694, 1
  %t696 = extractvalue { i64, ptr } %t694, 0
  %t697 = add i64 %t693, %t696
  %t698 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t697)
  call void @olang_textcopy(ptr %t698, ptr %t692, i64 %t693)
  %t699 = getelementptr i8, ptr %t698, i64 %t693
  call void @olang_textcopy(ptr %t699, ptr %t695, i64 %t696)
  %t700 = insertvalue { i64, ptr } undef, i64 %t697, 0
  %t701 = insertvalue { i64, ptr } %t700, ptr %t698, 1
  store { i64, ptr } %t701, ptr %l29, !tbaa !27
  %t703 = load ptr, ptr %l0, !tbaa !29
  store ptr %t703, ptr %l351, !tbaa !29
  %t704 = load i64, ptr %l1, !tbaa !24
  store i64 %t704, ptr %l352, !tbaa !24
  %t705 = load ptr, ptr %l0, !tbaa !29
  %t707 = getelementptr %"compiler/scope:Scoper", ptr %t705, i32 0, i32 26
  %t708 = load ptr, ptr %t707, !tbaa !29
  %t710 = icmp eq ptr %t708, null
  br i1 %t710, label %bb199, label %bb200
bb199:
  call void @__olang_check_failed(ptr @olang_loc_a5d7ffc0375a2adf_b8092e4cba9985db)
  unreachable
bb200:
  br label %bb201
bb201:
  %t712 = load ptr, ptr %l0, !tbaa !29
  %t714 = getelementptr %"compiler/scope:Scoper", ptr %t712, i32 0, i32 26
  %t715 = load ptr, ptr %t714, !tbaa !29
  %t718 = getelementptr %"compiler/typed:Body", ptr %t715, i32 0, i32 3
  %t719 = load i64, ptr %t718, !tbaa !24
  store i64 %t719, ptr %l359, !tbaa !24
  %t720 = load %"compiler/source:Span", ptr %l20
  store %"compiler/source:Span" %t720, ptr %l360
  %t721 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t722 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t723 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t727 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteDeclareWhere(ptr %v0, ptr %v2, ptr %s0, ptr %s0, { i64, ptr } %t721, { i64, ptr } %t722, { i64, ptr } %t723)
  store %"compiler/diagmsg:Msg" %t727, ptr %l364
  br label %bb202
bb202:
  %t728 = load ptr, ptr %l351, !tbaa !29
  %t729 = load i64, ptr %l352, !tbaa !24
  %t730 = load i64, ptr %l359, !tbaa !24
  %t731 = load %"compiler/source:Span", ptr %l360
  %t732 = load %"compiler/diagmsg:Msg", ptr %l364
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enote(ptr %v0, ptr %s0, ptr %t728, i64 %t729, i64 %t730, %"compiler/source:Span" %t731, %"compiler/diagmsg:Msg" %t732)
  br label %bb203
bb203:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocExprs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2, i1 %a3) #0 {
entry:
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l15 = alloca { i64, ptr }
  %l23 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a1, ptr %l4, !tbaa !27
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
  br label %bb10
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t15, ptr %l15, !tbaa !27
  %t16 = load i64, ptr %l5, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr ptr, ptr %t19, i64 %t16
  %t21 = load ptr, ptr %t20, !tbaa !39
  %t32 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocExpr(ptr %v0, ptr %v1, ptr %a0, ptr %t21, i64 %a2, i1 %a3)
  store i1 %t32, ptr %l23
  br label %bb5
bb5:
  %t33 = load i1, ptr %l23, !tbaa !21
  %t34 = xor i1 %t33, true
  br i1 %t34, label %bb6, label %bb7
bb6:
  store i1 false, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t37 = load i64, ptr %l5, !tbaa !24
  %t39 = add i64 %t37, 1
  store i64 %t39, ptr %l5, !tbaa !24
  br label %bb1
bb10:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eorder(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, { i64, [2 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca { i64, [2 x i64] }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i32
  %l23 = alloca i32
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca { i64, [2 x i64] }
  %l28 = alloca { i64, [2 x i64] }
  %l30 = alloca i1
  %l31 = alloca i64
  %l42 = alloca { i64, [2 x i64] }
  %l49 = alloca { i64, [2 x i64] }
  %l56 = alloca i64
  %l69 = alloca i64
  %l72 = alloca i64
  %l76 = alloca i64
  %l79 = alloca i64
  %l97 = alloca ptr
  %l101 = alloca { i64, [2 x i64] }
  %l103 = alloca i64
  %l126 = alloca i64
  %l129 = alloca i64
  %l133 = alloca i64
  %l136 = alloca i64
  %l154 = alloca ptr
  %l155 = alloca { i64, [2 x i64] }
  %l159 = alloca { i64, [2 x i64] }
  %l160 = alloca i64
  %l186 = alloca i1
  %l187 = alloca i64
  %l197 = alloca i1
  %l202 = alloca i1
  %l205 = alloca i1
  %l210 = alloca i1
  %l214 = alloca i1
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a1, ptr %l1
  store { i64, [2 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [2 x i64] }, ptr %l1
  store { i64, [2 x i64] } %t1, ptr %l26
  %t2 = load { i64, [2 x i64] }, ptr %l2
  store { i64, [2 x i64] } %t2, ptr %l28
  %t5 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3aTerm(ptr %l26, ptr %l28)
  store i1 %t5, ptr %l30
  br label %bb1
bb1:
  %t6 = load i1, ptr %l30, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  %t7 = load { i64, [2 x i64] }, ptr %l1
  %t9 = extractvalue { i64, [2 x i64] } %t7, 0
  %t10 = icmp eq i64 %t9, 5
  br i1 %t10, label %bb4, label %bb5
bb3:
  br label %bb17
bb4:
  br label %bb10
bb5:
  %t12 = load { i64, [2 x i64] }, ptr %l1
  %t14 = extractvalue { i64, [2 x i64] } %t12, 0
  %t15 = icmp eq i64 %t14, 6
  br i1 %t15, label %bb6, label %bb7
bb6:
  br label %bb10
bb7:
  %t17 = load { i64, [2 x i64] }, ptr %l1
  %t19 = extractvalue { i64, [2 x i64] } %t17, 0
  %t20 = icmp eq i64 %t19, 0
  br i1 %t20, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  %t22 = load i64, ptr @G_2ecompiler_2fscope_2eFailsUnknown, !tbaa !24
  store i64 %t22, ptr %l31, !tbaa !24
  br label %bb16
bb11:
  br i1 true, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb15
bb14:
  %t24 = load i64, ptr @G_2ecompiler_2fscope_2eHolds, !tbaa !24
  store i64 %t24, ptr %l31, !tbaa !24
  br label %bb16
bb15:
  call void @__olang_check_failed(ptr @olang_loc_7532eb5a793acb52_3a769c1ae1efb406)
  unreachable
bb16:
  %t26 = load i64, ptr %l31, !tbaa !24
  store i64 %t26, ptr %rv
  br label %ret
bb17:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load { i64, [2 x i64] }, ptr %l2
  %t31 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efloorOf(ptr %v0, ptr %t27, { i64, [2 x i64] } %t28)
  store { i64, [2 x i64] } %t31, ptr %l42
  br label %bb18
bb18:
  %t32 = load { i64, [2 x i64] }, ptr %l42
  %t34 = extractvalue { i64, [2 x i64] } %t32, 0
  %t35 = icmp eq i64 %t34, 0
  %t37 = xor i1 %t35, true
  br i1 %t37, label %bb19, label %bb20
bb19:
  %t39 = load i64, ptr @G_2ecompiler_2fscope_2eFailsUnknown, !tbaa !24
  store i64 %t39, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load { i64, [2 x i64] }, ptr %l1
  %t45 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efloorOf(ptr %v0, ptr %t41, { i64, [2 x i64] } %t42)
  store { i64, [2 x i64] } %t45, ptr %l49
  br label %bb22
bb22:
  %t46 = load { i64, [2 x i64] }, ptr %l49
  store { i64, [2 x i64] } %t46, ptr %l3
  %t47 = load { i64, [2 x i64] }, ptr %l3
  %t49 = extractvalue { i64, [2 x i64] } %t47, 0
  %t50 = icmp eq i64 %t49, 0
  %t52 = xor i1 %t50, true
  br i1 %t52, label %bb23, label %bb24
bb23:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load { i64, [2 x i64] }, ptr %l3
  %t56 = load { i64, [2 x i64] }, ptr %l2
  %t60 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eorder(ptr %v0, ptr %t54, { i64, [2 x i64] } %t55, { i64, [2 x i64] } %t56)
  store i64 %t60, ptr %l56
  br label %bb25
bb24:
  br label %bb26
bb25:
  %t61 = load i64, ptr %l56, !tbaa !24
  store i64 %t61, ptr %rv
  br label %ret
bb26:
  %t62 = load { i64, [2 x i64] }, ptr %l1
  %t64 = extractvalue { i64, [2 x i64] } %t62, 0
  %t65 = icmp eq i64 %t64, 6
  br i1 %t65, label %bb27, label %bb28
bb27:
  br label %bb31
bb28:
  %t67 = load { i64, [2 x i64] }, ptr %l1
  %t69 = extractvalue { i64, [2 x i64] } %t67, 0
  %t70 = icmp eq i64 %t69, 0
  br i1 %t70, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  %t72 = load i64, ptr @G_2ecompiler_2fscope_2eFailsUnknown, !tbaa !24
  store i64 %t72, ptr %rv
  br label %ret
bb32:
  %t74 = load { i64, [2 x i64] }, ptr %l1
  %t76 = extractvalue { i64, [2 x i64] } %t74, 0
  %t77 = icmp eq i64 %t76, 5
  br i1 %t77, label %bb33, label %bb34
bb33:
  %t79 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t80 = getelementptr { i64 }, ptr %t79, i32 0, i32 0
  %t81 = load i64, ptr %t80
  store i64 %t81, ptr %l4, !tbaa !24
  br label %bb35
bb34:
  br label %bb55
bb35:
  %t83 = load i64, ptr @G_2ecompiler_2fscope_2eHolds, !tbaa !24
  store i64 %t83, ptr %l5, !tbaa !24
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/scope:Scoper", ptr %t85, i32 0, i32 39
  %t88 = load i64, ptr %l4, !tbaa !24
  %t91 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t87, i64 %t88)
  store i64 %t91, ptr %l69
  br label %bb36
bb36:
  %t92 = load i64, ptr %l69, !tbaa !24
  store i64 %t92, ptr %l6, !tbaa !24
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t94 = load i64, ptr %l4, !tbaa !24
  %t97 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esetEnd(ptr %v0, ptr %t93, i64 %t94)
  store i64 %t97, ptr %l72
  br label %bb37
bb37:
  %t98 = load i64, ptr %l72, !tbaa !24
  store i64 %t98, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t99 = load i64, ptr %l7, !tbaa !24
  %t100 = load i64, ptr %l6, !tbaa !24
  %t103 = icmp sgt i64 %t99, %t100
  br i1 %t103, label %bb38, label %bb39
bb38:
  %t105 = load i64, ptr %l8, !tbaa !24
  %t107 = icmp sgt i64 %t105, 0
  br i1 %t107, label %bb40, label %bb41
bb39:
  store i64 0, ptr %l76, !tbaa !24
  br label %bb43
bb40:
  %t109 = load i64, ptr %l7, !tbaa !24
  %t110 = load i64, ptr %l6, !tbaa !24
  %t113 = sub i64 %t109, %t110
  %t114 = load i64, ptr %l8, !tbaa !24
  %t117 = add i64 %t113, %t114
  %t119 = sub i64 %t117, 1
  %t120 = load i64, ptr %l8, !tbaa !24
  %t123 = sdiv i64 %t119, %t120
  store i64 %t123, ptr %l79, !tbaa !24
  br label %bb42
bb41:
  store i64 0, ptr %l79, !tbaa !24
  br label %bb42
bb42:
  %t125 = load i64, ptr %l79, !tbaa !24
  store i64 %t125, ptr %l76, !tbaa !24
  br label %bb43
bb43:
  %t126 = load i64, ptr %l76, !tbaa !24
  store i64 %t126, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb44
bb44:
  %t127 = load i64, ptr %l10, !tbaa !24
  %t128 = load i64, ptr %l9, !tbaa !24
  %t131 = icmp slt i64 %t127, %t128
  %t133 = xor i1 %t131, true
  br i1 %t133, label %bb45, label %bb46
bb45:
  br label %bb54
bb46:
  br label %bb47
bb47:
  %t135 = load i64, ptr %l6, !tbaa !24
  %t136 = load i64, ptr %l10, !tbaa !24
  %t137 = load i64, ptr %l8, !tbaa !24
  %t140 = mul i64 %t136, %t137
  %t143 = add i64 %t135, %t140
  %t145 = load ptr, ptr %l0, !tbaa !29
  store ptr %t145, ptr %l97, !tbaa !29
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t148 = getelementptr %"compiler/scope:Scoper", ptr %t146, i32 0, i32 40
  %t152 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t148, i64 %t143)
  store { i64, [2 x i64] } %t152, ptr %l101
  br label %bb48
bb48:
  %t153 = load { i64, [2 x i64] }, ptr %l2
  %t154 = load ptr, ptr %l97, !tbaa !29
  %t155 = load { i64, [2 x i64] }, ptr %l101
  %t157 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eorder(ptr %v0, ptr %t154, { i64, [2 x i64] } %t155, { i64, [2 x i64] } %t153)
  store i64 %t157, ptr %l103
  br label %bb49
bb49:
  %t158 = load i64, ptr %l103, !tbaa !24
  store i64 %t158, ptr %l12, !tbaa !24
  %t159 = load i64, ptr %l12, !tbaa !24
  %t160 = load i64, ptr %l5, !tbaa !24
  %t163 = icmp sgt i64 %t159, %t160
  br i1 %t163, label %bb50, label %bb51
bb50:
  %t165 = load i64, ptr %l12, !tbaa !24
  store i64 %t165, ptr %l5, !tbaa !24
  br label %bb52
bb51:
  br label %bb52
bb52:
  br label %bb53
bb53:
  %t167 = load i64, ptr %l10, !tbaa !24
  %t169 = add i64 %t167, 1
  store i64 %t169, ptr %l10, !tbaa !24
  br label %bb44
bb54:
  %t171 = load i64, ptr %l5, !tbaa !24
  store i64 %t171, ptr %rv
  br label %ret
bb55:
  %t173 = load { i64, [2 x i64] }, ptr %l1
  %t175 = extractvalue { i64, [2 x i64] } %t173, 0
  %t176 = icmp eq i64 %t175, 3
  br i1 %t176, label %bb56, label %bb57
bb56:
  br label %bb58
bb57:
  br label %bb59
bb58:
  %t178 = load i64, ptr @G_2ecompiler_2fscope_2eHolds, !tbaa !24
  store i64 %t178, ptr %rv
  br label %ret
bb59:
  br i1 true, label %bb60, label %bb61
bb60:
  br label %bb62
bb61:
  br label %bb63
bb62:
  br label %bb64
bb63:
  call void @__olang_check_failed(ptr @olang_loc_62e50b1d71054f53_eecbe9be4e2fbee7)
  unreachable
bb64:
  %t180 = load { i64, [2 x i64] }, ptr %l2
  %t182 = extractvalue { i64, [2 x i64] } %t180, 0
  %t183 = icmp eq i64 %t182, 6
  br i1 %t183, label %bb65, label %bb66
bb65:
  br label %bb69
bb66:
  %t185 = load { i64, [2 x i64] }, ptr %l2
  %t187 = extractvalue { i64, [2 x i64] } %t185, 0
  %t188 = icmp eq i64 %t187, 0
  br i1 %t188, label %bb67, label %bb68
bb67:
  br label %bb69
bb68:
  br label %bb70
bb69:
  %t190 = load i64, ptr @G_2ecompiler_2fscope_2eFailsUnknown, !tbaa !24
  store i64 %t190, ptr %rv
  br label %ret
bb70:
  %t192 = load { i64, [2 x i64] }, ptr %l2
  %t194 = extractvalue { i64, [2 x i64] } %t192, 0
  %t195 = icmp eq i64 %t194, 5
  br i1 %t195, label %bb71, label %bb72
bb71:
  %t197 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t198 = getelementptr { i64 }, ptr %t197, i32 0, i32 0
  %t199 = load i64, ptr %t198
  store i64 %t199, ptr %l13, !tbaa !24
  br label %bb73
bb72:
  br label %bb93
bb73:
  %t201 = load i64, ptr @G_2ecompiler_2fscope_2eHolds, !tbaa !24
  store i64 %t201, ptr %l14, !tbaa !24
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t205 = getelementptr %"compiler/scope:Scoper", ptr %t203, i32 0, i32 39
  %t206 = load i64, ptr %l13, !tbaa !24
  %t209 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t205, i64 %t206)
  store i64 %t209, ptr %l126
  br label %bb74
bb74:
  %t210 = load i64, ptr %l126, !tbaa !24
  store i64 %t210, ptr %l15, !tbaa !24
  %t211 = load ptr, ptr %l0, !tbaa !29
  %t212 = load i64, ptr %l13, !tbaa !24
  %t215 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esetEnd(ptr %v0, ptr %t211, i64 %t212)
  store i64 %t215, ptr %l129
  br label %bb75
bb75:
  %t216 = load i64, ptr %l129, !tbaa !24
  store i64 %t216, ptr %l16, !tbaa !24
  store i64 1, ptr %l17, !tbaa !24
  %t217 = load i64, ptr %l16, !tbaa !24
  %t218 = load i64, ptr %l15, !tbaa !24
  %t221 = icmp sgt i64 %t217, %t218
  br i1 %t221, label %bb76, label %bb77
bb76:
  %t223 = load i64, ptr %l17, !tbaa !24
  %t225 = icmp sgt i64 %t223, 0
  br i1 %t225, label %bb78, label %bb79
bb77:
  store i64 0, ptr %l133, !tbaa !24
  br label %bb81
bb78:
  %t227 = load i64, ptr %l16, !tbaa !24
  %t228 = load i64, ptr %l15, !tbaa !24
  %t231 = sub i64 %t227, %t228
  %t232 = load i64, ptr %l17, !tbaa !24
  %t235 = add i64 %t231, %t232
  %t237 = sub i64 %t235, 1
  %t238 = load i64, ptr %l17, !tbaa !24
  %t241 = sdiv i64 %t237, %t238
  store i64 %t241, ptr %l136, !tbaa !24
  br label %bb80
bb79:
  store i64 0, ptr %l136, !tbaa !24
  br label %bb80
bb80:
  %t243 = load i64, ptr %l136, !tbaa !24
  store i64 %t243, ptr %l133, !tbaa !24
  br label %bb81
bb81:
  %t244 = load i64, ptr %l133, !tbaa !24
  store i64 %t244, ptr %l18, !tbaa !24
  store i64 0, ptr %l19, !tbaa !24
  br label %bb82
bb82:
  %t245 = load i64, ptr %l19, !tbaa !24
  %t246 = load i64, ptr %l18, !tbaa !24
  %t249 = icmp slt i64 %t245, %t246
  %t251 = xor i1 %t249, true
  br i1 %t251, label %bb83, label %bb84
bb83:
  br label %bb92
bb84:
  br label %bb85
bb85:
  %t253 = load i64, ptr %l15, !tbaa !24
  %t254 = load i64, ptr %l19, !tbaa !24
  %t255 = load i64, ptr %l17, !tbaa !24
  %t258 = mul i64 %t254, %t255
  %t261 = add i64 %t253, %t258
  %t263 = load ptr, ptr %l0, !tbaa !29
  store ptr %t263, ptr %l154, !tbaa !29
  %t264 = load { i64, [2 x i64] }, ptr %l1
  store { i64, [2 x i64] } %t264, ptr %l155
  %t265 = load ptr, ptr %l0, !tbaa !29
  %t267 = getelementptr %"compiler/scope:Scoper", ptr %t265, i32 0, i32 40
  %t271 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t267, i64 %t261)
  store { i64, [2 x i64] } %t271, ptr %l159
  br label %bb86
bb86:
  %t272 = load ptr, ptr %l154, !tbaa !29
  %t273 = load { i64, [2 x i64] }, ptr %l155
  %t274 = load { i64, [2 x i64] }, ptr %l159
  %t275 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eorder(ptr %v0, ptr %t272, { i64, [2 x i64] } %t273, { i64, [2 x i64] } %t274)
  store i64 %t275, ptr %l160
  br label %bb87
bb87:
  %t276 = load i64, ptr %l160, !tbaa !24
  store i64 %t276, ptr %l21, !tbaa !24
  %t277 = load i64, ptr %l21, !tbaa !24
  %t278 = load i64, ptr %l14, !tbaa !24
  %t281 = icmp sgt i64 %t277, %t278
  br i1 %t281, label %bb88, label %bb89
bb88:
  %t283 = load i64, ptr %l21, !tbaa !24
  store i64 %t283, ptr %l14, !tbaa !24
  br label %bb90
bb89:
  br label %bb90
bb90:
  br label %bb91
bb91:
  %t285 = load i64, ptr %l19, !tbaa !24
  %t287 = add i64 %t285, 1
  store i64 %t287, ptr %l19, !tbaa !24
  br label %bb82
bb92:
  %t289 = load i64, ptr %l14, !tbaa !24
  store i64 %t289, ptr %rv
  br label %ret
bb93:
  %t291 = load { i64, [2 x i64] }, ptr %l2
  %t293 = extractvalue { i64, [2 x i64] } %t291, 0
  %t294 = icmp eq i64 %t293, 1
  br i1 %t294, label %bb94, label %bb95
bb94:
  %t296 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t297 = getelementptr { i32 }, ptr %t296, i32 0, i32 0
  %t298 = load i32, ptr %t297
  store i32 %t298, ptr %l22, !tbaa !23
  br label %bb96
bb95:
  br label %bb118
bb96:
  %t300 = load { i64, [2 x i64] }, ptr %l1
  %t302 = extractvalue { i64, [2 x i64] } %t300, 0
  %t303 = icmp eq i64 %t302, 2
  br i1 %t303, label %bb97, label %bb98
bb97:
  br label %bb101
bb98:
  %t305 = load { i64, [2 x i64] }, ptr %l1
  %t307 = extractvalue { i64, [2 x i64] } %t305, 0
  %t308 = icmp eq i64 %t307, 4
  br i1 %t308, label %bb99, label %bb100
bb99:
  br label %bb101
bb100:
  br label %bb102
bb101:
  %t310 = load i64, ptr @G_2ecompiler_2fscope_2eHolds, !tbaa !24
  store i64 %t310, ptr %rv
  br label %ret
bb102:
  %t312 = load { i64, [2 x i64] }, ptr %l1
  %t314 = extractvalue { i64, [2 x i64] } %t312, 0
  %t315 = icmp eq i64 %t314, 1
  br i1 %t315, label %bb103, label %bb104
bb103:
  %t317 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t318 = getelementptr { i32 }, ptr %t317, i32 0, i32 0
  %t319 = load i32, ptr %t318
  store i32 %t319, ptr %l23, !tbaa !23
  br label %bb105
bb104:
  br label %bb113
bb105:
  %t321 = load ptr, ptr %l0, !tbaa !29
  %t323 = getelementptr %"compiler/scope:Scoper", ptr %t321, i32 0, i32 26
  %t324 = load ptr, ptr %t323, !tbaa !29
  %t326 = icmp eq ptr %t324, null
  br i1 %t326, label %bb106, label %bb107
bb106:
  call void @__olang_check_failed(ptr @olang_loc_127b48cc431305b1_a1696d510fe190b5)
  unreachable
bb107:
  br label %bb108
bb108:
  %t328 = load ptr, ptr %l0, !tbaa !29
  %t330 = getelementptr %"compiler/scope:Scoper", ptr %t328, i32 0, i32 26
  %t331 = load ptr, ptr %t330, !tbaa !29
  %t332 = load i32, ptr %l23, !tbaa !23
  %t333 = load i32, ptr %l22, !tbaa !23
  %t337 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eEncloses(ptr %v0, ptr %t331, i32 %t332, i32 %t333)
  store i1 %t337, ptr %l186
  br label %bb109
bb109:
  %t338 = load i1, ptr %l186, !tbaa !21
  br i1 %t338, label %bb110, label %bb111
bb110:
  %t339 = load i64, ptr @G_2ecompiler_2fscope_2eHolds, !tbaa !24
  store i64 %t339, ptr %l187, !tbaa !24
  br label %bb112
bb111:
  %t341 = load i64, ptr @G_2ecompiler_2fscope_2eFailsBlock, !tbaa !24
  store i64 %t341, ptr %l187, !tbaa !24
  br label %bb112
bb112:
  %t343 = load i64, ptr %l187, !tbaa !24
  store i64 %t343, ptr %rv
  br label %ret
bb113:
  br i1 true, label %bb114, label %bb115
bb114:
  br label %bb116
bb115:
  br label %bb117
bb116:
  %t344 = load i64, ptr @G_2ecompiler_2fscope_2eFailsUnknown, !tbaa !24
  store i64 %t344, ptr %rv
  br label %ret
bb117:
  call void @__olang_check_failed(ptr @olang_loc_76ab01ddfcfbe309_8f18aa764587f91d)
  unreachable
bb118:
  br i1 true, label %bb119, label %bb120
bb119:
  br label %bb121
bb120:
  br label %bb122
bb121:
  br label %bb123
bb122:
  call void @__olang_check_failed(ptr @olang_loc_2849491c6333adae_c9e54b70540ea8ca)
  unreachable
bb123:
  %t346 = load { i64, [2 x i64] }, ptr %l1
  %t348 = extractvalue { i64, [2 x i64] } %t346, 0
  %t349 = icmp eq i64 %t348, 1
  br i1 %t349, label %bb124, label %bb125
bb124:
  br label %bb126
bb125:
  br label %bb127
bb126:
  %t351 = load i64, ptr @G_2ecompiler_2fscope_2eFailsBlock, !tbaa !24
  store i64 %t351, ptr %rv
  br label %ret
bb127:
  br i1 true, label %bb128, label %bb129
bb128:
  br label %bb130
bb129:
  br label %bb131
bb130:
  br label %bb132
bb131:
  call void @__olang_check_failed(ptr @olang_loc_7e08cd2032342a6f_828e7ee85c3d130b)
  unreachable
bb132:
  %t353 = load ptr, ptr %l0, !tbaa !29
  %t354 = load { i64, [2 x i64] }, ptr %l1
  %t355 = load { i64, [2 x i64] }, ptr %l2
  %t359 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egammaHolds(ptr %v0, ptr %t353, { i64, [2 x i64] } %t354, { i64, [2 x i64] } %t355)
  store i1 %t359, ptr %l197
  br label %bb133
bb133:
  %t360 = load i1, ptr %l197, !tbaa !21
  br i1 %t360, label %bb134, label %bb135
bb134:
  %t361 = load i64, ptr @G_2ecompiler_2fscope_2eHolds, !tbaa !24
  store i64 %t361, ptr %rv
  br label %ret
bb135:
  br label %bb136
bb136:
  %t363 = load ptr, ptr %l0, !tbaa !29
  %t365 = getelementptr %"compiler/scope:Scoper", ptr %t363, i32 0, i32 72
  %t366 = load i64, ptr %t365, !tbaa !24
  %t368 = icmp sge i64 %t366, 0
  br i1 %t368, label %bb137, label %bb138
bb137:
  %t370 = load { i64, [2 x i64] }, ptr %l2
  %t372 = extractvalue { i64, [2 x i64] } %t370, 0
  %t373 = icmp eq i64 %t372, 2
  br i1 %t373, label %bb139, label %bb140
bb138:
  store i1 false, ptr %l202, !tbaa !21
  br label %bb142
bb139:
  %t375 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t376 = getelementptr { i64 }, ptr %t375, i32 0, i32 0
  %t377 = load i64, ptr %t376
  %t378 = load ptr, ptr %l0, !tbaa !29
  %t380 = getelementptr %"compiler/scope:Scoper", ptr %t378, i32 0, i32 72
  %t381 = load i64, ptr %t380, !tbaa !24
  %t384 = icmp eq i64 %t377, %t381
  store i1 %t384, ptr %l205, !tbaa !21
  br label %bb141
bb140:
  store i1 false, ptr %l205, !tbaa !21
  br label %bb141
bb141:
  %t386 = load i1, ptr %l205, !tbaa !21
  store i1 %t386, ptr %l202, !tbaa !21
  br label %bb142
bb142:
  %t387 = load i1, ptr %l202, !tbaa !21
  br i1 %t387, label %bb143, label %bb144
bb143:
  %t388 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t389 = getelementptr { i64 }, ptr %t388, i32 0, i32 0
  %t390 = load i64, ptr %t389
  store i64 %t390, ptr %l24, !tbaa !24
  %t392 = load ptr, ptr %l0, !tbaa !29
  %t393 = load { i64, [2 x i64] }, ptr %l1
  %t396 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecaptureTerm(ptr %v0, ptr %t392, { i64, [2 x i64] } %t393)
  store i1 %t396, ptr %l214
  br label %bb145
bb144:
  store i1 false, ptr %l210, !tbaa !21
  br label %bb146
bb145:
  %t397 = load i1, ptr %l214, !tbaa !21
  store i1 %t397, ptr %l210, !tbaa !21
  br label %bb146
bb146:
  %t398 = load i1, ptr %l210, !tbaa !21
  br i1 %t398, label %bb147, label %bb148
bb147:
  %t399 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t400 = getelementptr { i64 }, ptr %t399, i32 0, i32 0
  %t401 = load i64, ptr %t400
  store i64 %t401, ptr %l25, !tbaa !24
  %t403 = load i64, ptr @G_2ecompiler_2fscope_2eHolds, !tbaa !24
  store i64 %t403, ptr %rv
  br label %ret
bb148:
  br label %bb149
bb149:
  %t405 = load i64, ptr @G_2ecompiler_2fscope_2eObliged, !tbaa !24
  store i64 %t405, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eparamBinding(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l16 = alloca i32
  %l25 = alloca { i64, ptr }
  %l31 = alloca i64
  %l34 = alloca i64
  %l42 = alloca i64
  %l45 = alloca i64
  %l67 = alloca i1
  %l72 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, [2 x i64] }
  %t13 = alloca { i64, [2 x i64] }, align 8
  %t132 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeType(ptr %v0, ptr %v1, ptr %t1, ptr %a1)
  store i32 %t5, ptr %l16
  br label %bb1
bb1:
  %t6 = load i32, ptr %l16, !tbaa !23
  store i32 %t6, ptr %l4, !tbaa !23
  %t7 = load i32, ptr %l4, !tbaa !23
  %t8 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t11 = icmp eq i32 %t7, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  store { i64, [2 x i64] } zeroinitializer, ptr %t13
  %t14 = getelementptr { i64, [2 x i64] }, ptr %t13, i32 0, i32 0
  store i64 0, ptr %t14
  %t15 = load { i64, [2 x i64] }, ptr %t13
  call void @__olang_scope_close(ptr %s0)
  store { i64, [2 x i64] } %t15, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/scope:Scoper", ptr %t17, i32 0, i32 0
  %t20 = load ptr, ptr %t19, !tbaa !29
  %t22 = getelementptr %"compiler/generic:Program", ptr %t20, i32 0, i32 2
  %t23 = load i32, ptr %l4, !tbaa !23
  %t26 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopeVarsOf(ptr %v0, ptr %s0, ptr %t22, i32 %t23)
  store { i64, ptr } %t26, ptr %l25
  br label %bb5
bb5:
  %t27 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t27, ptr %l5, !tbaa !27
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/scope:Scoper", ptr %t28, i32 0, i32 0
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = getelementptr %"compiler/generic:Program", ptr %t31, i32 0, i32 2
  %t34 = load i32, ptr %l4, !tbaa !23
  %t35 = load i64, ptr %l2, !tbaa !24
  %t39 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShareOf(ptr %v0, ptr %t33, i32 %t34, i64 %t35)
  store i64 %t39, ptr %l31
  br label %bb6
bb6:
  %t40 = load i64, ptr %l31, !tbaa !24
  store i64 %t40, ptr %l6, !tbaa !24
  %t41 = load i64, ptr %l6, !tbaa !24
  %t43 = icmp sge i64 %t41, 0
  br i1 %t43, label %bb7, label %bb8
bb7:
  %t45 = load i64, ptr %l6, !tbaa !24
  store i64 %t45, ptr %l34, !tbaa !24
  br label %bb9
bb8:
  %t47 = load i64, ptr %l2, !tbaa !24
  store i64 %t47, ptr %l34, !tbaa !24
  br label %bb9
bb9:
  %t49 = load i64, ptr %l34, !tbaa !24
  store i64 %t49, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  %t50 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t52 = extractvalue { i64, ptr } %t50, 0
  store i64 %t52, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t54 = load i64, ptr %l9, !tbaa !24
  %t55 = load i64, ptr %l8, !tbaa !24
  %t58 = icmp sgt i64 %t54, %t55
  br i1 %t58, label %bb10, label %bb11
bb10:
  %t60 = load i64, ptr %l10, !tbaa !24
  %t62 = icmp sgt i64 %t60, 0
  br i1 %t62, label %bb12, label %bb13
bb11:
  store i64 0, ptr %l42, !tbaa !24
  br label %bb15
bb12:
  %t64 = load i64, ptr %l9, !tbaa !24
  %t65 = load i64, ptr %l8, !tbaa !24
  %t68 = sub i64 %t64, %t65
  %t69 = load i64, ptr %l10, !tbaa !24
  %t72 = add i64 %t68, %t69
  %t74 = sub i64 %t72, 1
  %t75 = load i64, ptr %l10, !tbaa !24
  %t78 = sdiv i64 %t74, %t75
  store i64 %t78, ptr %l45, !tbaa !24
  br label %bb14
bb13:
  store i64 0, ptr %l45, !tbaa !24
  br label %bb14
bb14:
  %t80 = load i64, ptr %l45, !tbaa !24
  store i64 %t80, ptr %l42, !tbaa !24
  br label %bb15
bb15:
  %t81 = load i64, ptr %l42, !tbaa !24
  store i64 %t81, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb16
bb16:
  %t82 = load i64, ptr %l12, !tbaa !24
  %t83 = load i64, ptr %l11, !tbaa !24
  %t86 = icmp slt i64 %t82, %t83
  %t88 = xor i1 %t86, true
  br i1 %t88, label %bb17, label %bb18
bb17:
  br label %bb27
bb18:
  br label %bb19
bb19:
  %t90 = load i64, ptr %l8, !tbaa !24
  %t91 = load i64, ptr %l12, !tbaa !24
  %t92 = load i64, ptr %l10, !tbaa !24
  %t95 = mul i64 %t91, %t92
  %t98 = add i64 %t90, %t95
  store i64 %t98, ptr %l13, !tbaa !24
  %t100 = load i64, ptr %l13, !tbaa !24
  %t102 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t103 = load ptr, ptr %t102, !tbaa !27
  %t104 = getelementptr i64, ptr %t103, i64 %t100
  %t105 = load i64, ptr %t104, !tbaa !34
  %t106 = load i64, ptr %l7, !tbaa !24
  %t109 = icmp eq i64 %t105, %t106
  br i1 %t109, label %bb20, label %bb21
bb20:
  %t111 = load i64, ptr %l13, !tbaa !24
  %t112 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t114 = extractvalue { i64, ptr } %t112, 0
  %t117 = icmp slt i64 %t111, %t114
  store i1 %t117, ptr %l67, !tbaa !21
  br label %bb22
bb21:
  store i1 false, ptr %l67, !tbaa !21
  br label %bb22
bb22:
  %t119 = load i1, ptr %l67, !tbaa !21
  br i1 %t119, label %bb23, label %bb24
bb23:
  %t120 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t120, ptr %l72, !tbaa !27
  %t121 = load i64, ptr %l13, !tbaa !24
  %t123 = getelementptr { i64, ptr }, ptr %l72, i32 0, i32 1
  %t124 = load ptr, ptr %t123, !tbaa !27
  %t125 = getelementptr { i64, [2 x i64] }, ptr %t124, i64 %t121
  %t126 = load { i64, [2 x i64] }, ptr %t125
  call void @__olang_scope_close(ptr %s0)
  store { i64, [2 x i64] } %t126, ptr %rv
  br label %ret
bb24:
  br label %bb25
bb25:
  br label %bb26
bb26:
  %t128 = load i64, ptr %l12, !tbaa !24
  %t130 = add i64 %t128, 1
  store i64 %t130, ptr %l12, !tbaa !24
  br label %bb16
bb27:
  store { i64, [2 x i64] } zeroinitializer, ptr %t132
  %t133 = getelementptr { i64, [2 x i64] }, ptr %t132, i32 0, i32 0
  store i64 0, ptr %t133
  %t134 = load { i64, [2 x i64] }, ptr %t132
  call void @__olang_scope_close(ptr %s0)
  store { i64, [2 x i64] } %t134, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epassedScope(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2, i64 %a3, { i64, [2 x i64] } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l4 = alloca { i64, [2 x i64] }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca ptr
  %l13 = alloca i1
  %l14 = alloca i1
  %l17 = alloca i1
  %l20 = alloca i1
  %l23 = alloca { i64, [2 x i64] }
  %l29 = alloca i64
  %l32 = alloca i64
  %l50 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l60 = alloca ptr
  %l64 = alloca ptr
  %l65 = alloca { i64, [2 x i64] }
  %l69 = alloca { i64, [2 x i64] }
  %l70 = alloca { i64, [2 x i64] }
  %l75 = alloca { i64, [2 x i64] }
  %rv = alloca { i64, [2 x i64] }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a2, ptr %l2
  store { i64, [2 x i64] } %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [2 x i64] }, ptr %l4
  %t3 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t1)
  store i1 %t3, ptr %l13
  br label %bb1
bb1:
  %t4 = load i1, ptr %l13, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l14, !tbaa !21
  br label %bb4
bb3:
  %t5 = load { i64, [2 x i64] }, ptr %l4
  %t7 = extractvalue { i64, [2 x i64] } %t5, 0
  %t8 = icmp eq i64 %t7, 0
  store i1 %t8, ptr %l14, !tbaa !21
  br label %bb4
bb4:
  %t10 = load i1, ptr %l14, !tbaa !21
  br i1 %t10, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l17, !tbaa !21
  br label %bb8
bb6:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load { i64, [2 x i64] }, ptr %l4
  %t15 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efinds(ptr %v0, ptr %t11, { i64, [2 x i64] } %t12)
  store i1 %t15, ptr %l20
  br label %bb7
bb7:
  %t16 = load i1, ptr %l20, !tbaa !21
  store i1 %t16, ptr %l17, !tbaa !21
  br label %bb8
bb8:
  %t17 = load i1, ptr %l17, !tbaa !21
  br i1 %t17, label %bb9, label %bb10
bb9:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load { i64, [2 x i64] }, ptr %l4
  %t22 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2escopeOf(ptr %v0, ptr %t18, { i64, [2 x i64] } %t19)
  store { i64, [2 x i64] } %t22, ptr %l23
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t23 = load { i64, [2 x i64] }, ptr %l23
  store { i64, [2 x i64] } %t23, ptr %rv
  br label %ret
bb12:
  store i64 0, ptr %l5, !tbaa !24
  %t24 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t24, 0
  store i64 %t26, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t28 = load i64, ptr %l6, !tbaa !24
  %t29 = load i64, ptr %l5, !tbaa !24
  %t32 = icmp sgt i64 %t28, %t29
  br i1 %t32, label %bb13, label %bb14
bb13:
  %t34 = load i64, ptr %l7, !tbaa !24
  %t36 = icmp sgt i64 %t34, 0
  br i1 %t36, label %bb15, label %bb16
bb14:
  store i64 0, ptr %l29, !tbaa !24
  br label %bb18
bb15:
  %t38 = load i64, ptr %l6, !tbaa !24
  %t39 = load i64, ptr %l5, !tbaa !24
  %t42 = sub i64 %t38, %t39
  %t43 = load i64, ptr %l7, !tbaa !24
  %t46 = add i64 %t42, %t43
  %t48 = sub i64 %t46, 1
  %t49 = load i64, ptr %l7, !tbaa !24
  %t52 = sdiv i64 %t48, %t49
  store i64 %t52, ptr %l32, !tbaa !24
  br label %bb17
bb16:
  store i64 0, ptr %l32, !tbaa !24
  br label %bb17
bb17:
  %t54 = load i64, ptr %l32, !tbaa !24
  store i64 %t54, ptr %l29, !tbaa !24
  br label %bb18
bb18:
  %t55 = load i64, ptr %l29, !tbaa !24
  store i64 %t55, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb19
bb19:
  %t56 = load i64, ptr %l9, !tbaa !24
  %t57 = load i64, ptr %l8, !tbaa !24
  %t60 = icmp slt i64 %t56, %t57
  %t62 = xor i1 %t60, true
  br i1 %t62, label %bb20, label %bb21
bb20:
  br label %bb33
bb21:
  br label %bb22
bb22:
  %t64 = load i64, ptr %l5, !tbaa !24
  %t65 = load i64, ptr %l9, !tbaa !24
  %t66 = load i64, ptr %l7, !tbaa !24
  %t69 = mul i64 %t65, %t66
  %t72 = add i64 %t64, %t69
  store i64 %t72, ptr %l10, !tbaa !24
  %t74 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t74, ptr %l50, !tbaa !27
  %t75 = load i64, ptr %l10, !tbaa !24
  %t77 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !27
  %t79 = getelementptr i64, ptr %t78, i64 %t75
  %t80 = load i64, ptr %t79, !tbaa !34
  %t84 = icmp ne i64 %t80, %a3
  br i1 %t84, label %bb23, label %bb24
bb23:
  br label %bb32
bb24:
  br label %bb25
bb25:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/typed:Call", ptr %a1, i32 0, i32 1
  %t90 = load { i64, ptr }, ptr %t89, !tbaa !27
  store { i64, ptr } %t90, ptr %l57, !tbaa !27
  %t91 = load i64, ptr %l10, !tbaa !24
  %t93 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t94 = load ptr, ptr %t93, !tbaa !27
  %t95 = getelementptr ptr, ptr %t94, i64 %t91
  %t96 = load ptr, ptr %t95, !tbaa !39
  %t99 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargRoot(ptr %v0, ptr %v1, ptr %v1, ptr %t86, ptr %t96)
  store ptr %t99, ptr %l60
  br label %bb26
bb26:
  %t100 = load ptr, ptr %l60, !tbaa !29
  store ptr %t100, ptr %l11, !tbaa !29
  %t101 = load ptr, ptr %l11, !tbaa !29
  %t103 = icmp eq ptr %t101, null
  %t105 = xor i1 %t103, true
  br i1 %t105, label %bb27, label %bb28
bb27:
  %t107 = load ptr, ptr %l0, !tbaa !29
  store ptr %t107, ptr %l64, !tbaa !29
  %t108 = load { i64, [2 x i64] }, ptr %l4
  store { i64, [2 x i64] } %t108, ptr %l65
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = getelementptr %"compiler/scope:Scoper", ptr %t109, i32 0, i32 33
  %t112 = load ptr, ptr %l11, !tbaa !29
  %t115 = call { i64, [2 x i64] } @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2eFind(ptr %v0, ptr %v1, ptr %t111, ptr %t112)
  store { i64, [2 x i64] } %t115, ptr %l69
  br label %bb29
bb28:
  br label %bb31
bb29:
  %t116 = load ptr, ptr %l64, !tbaa !29
  %t117 = load { i64, [2 x i64] }, ptr %l65
  %t118 = load { i64, [2 x i64] }, ptr %l69
  %t119 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efoundOr(ptr %v0, ptr %t116, { i64, [2 x i64] } %t117, { i64, [2 x i64] } %t118)
  store { i64, [2 x i64] } %t119, ptr %l70
  br label %bb30
bb30:
  %t120 = load { i64, [2 x i64] }, ptr %l70
  store { i64, [2 x i64] } %t120, ptr %rv
  br label %ret
bb31:
  br label %bb32
bb32:
  %t121 = load i64, ptr %l9, !tbaa !24
  %t123 = add i64 %t121, 1
  store i64 %t123, ptr %l9, !tbaa !24
  br label %bb19
bb33:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t126 = load { i64, [2 x i64] }, ptr %l4
  %t129 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2escopeOf(ptr %v0, ptr %t125, { i64, [2 x i64] } %t126)
  store { i64, [2 x i64] } %t129, ptr %l75
  br label %bb34
bb34:
  %t130 = load { i64, [2 x i64] }, ptr %l75
  store { i64, [2 x i64] } %t130, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eplaceCallOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
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
  %l15 = alloca ptr
  %l16 = alloca ptr
  %l17 = alloca i1
  %l25 = alloca ptr
  %l26 = alloca ptr
  %l27 = alloca i1
  %l35 = alloca ptr
  %l36 = alloca ptr
  %l37 = alloca i1
  %l45 = alloca i1
  %l46 = alloca ptr
  %l49 = alloca ptr
  %rv = alloca ptr
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
  %t8 = icmp eq i64 %t6, 3
  store i1 %t8, ptr %l8, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l8, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t20 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eplaceCallOf(ptr %v0, ptr %v1, ptr %v2, ptr %t16, ptr %t17)
  store ptr %t20, ptr %l15
  br label %bb6
bb6:
  %t21 = load ptr, ptr %l15, !tbaa !29
  store ptr %t21, ptr %l6, !tbaa !29
  br label %bb37
bb7:
  %t22 = load ptr, ptr %l1, !tbaa !29
  store ptr %t22, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t23 = load ptr, ptr %l16, !tbaa !29
  %t24 = icmp ne ptr %t23, null
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t26 = load ptr, ptr %l16, !tbaa !29
  %t27 = load i64, ptr %t26, !range !{i64 0, i64 8}
  %t29 = icmp eq i64 %t27, 4
  store i1 %t29, ptr %l17, !tbaa !21
  br label %bb9
bb9:
  %t30 = load i1, ptr %l17, !tbaa !21
  br i1 %t30, label %bb10, label %bb11
bb10:
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t33 = getelementptr { i64, [4 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t33, i32 0, i32 2
  %t35 = load ptr, ptr %t34
  store ptr %t35, ptr %l3, !tbaa !29
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load ptr, ptr %l3, !tbaa !29
  %t40 = getelementptr %"compiler/typed:Elem", ptr %t38, i32 0, i32 0
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t44 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eplaceCallOf(ptr %v0, ptr %v1, ptr %v2, ptr %t37, ptr %t41)
  store ptr %t44, ptr %l25
  br label %bb13
bb13:
  %t45 = load ptr, ptr %l25, !tbaa !29
  store ptr %t45, ptr %l6, !tbaa !29
  br label %bb37
bb14:
  %t46 = load ptr, ptr %l1, !tbaa !29
  store ptr %t46, ptr %l26, !tbaa !29
  store i1 false, ptr %l27, !tbaa !21
  %t47 = load ptr, ptr %l26, !tbaa !29
  %t48 = icmp ne ptr %t47, null
  br i1 %t48, label %bb15, label %bb16
bb15:
  %t50 = load ptr, ptr %l26, !tbaa !29
  %t51 = load i64, ptr %t50, !range !{i64 0, i64 8}
  %t53 = icmp eq i64 %t51, 5
  store i1 %t53, ptr %l27, !tbaa !21
  br label %bb16
bb16:
  %t54 = load i1, ptr %l27, !tbaa !21
  br i1 %t54, label %bb17, label %bb18
bb17:
  %t55 = load ptr, ptr %l1, !tbaa !29
  %t57 = getelementptr { i64, [4 x i64] }, ptr %t55, i32 0, i32 1
  %t58 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t57, i32 0, i32 2
  %t59 = load ptr, ptr %t58
  store ptr %t59, ptr %l4, !tbaa !29
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = load ptr, ptr %l4, !tbaa !29
  %t64 = getelementptr %"compiler/typed:Payload", ptr %t62, i32 0, i32 0
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t68 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eplaceCallOf(ptr %v0, ptr %v1, ptr %v2, ptr %t61, ptr %t65)
  store ptr %t68, ptr %l35
  br label %bb20
bb20:
  %t69 = load ptr, ptr %l35, !tbaa !29
  store ptr %t69, ptr %l6, !tbaa !29
  br label %bb37
bb21:
  %t70 = load ptr, ptr %l1, !tbaa !29
  store ptr %t70, ptr %l36, !tbaa !29
  store i1 false, ptr %l37, !tbaa !21
  %t71 = load ptr, ptr %l36, !tbaa !29
  %t72 = icmp ne ptr %t71, null
  br i1 %t72, label %bb22, label %bb23
bb22:
  %t74 = load ptr, ptr %l36, !tbaa !29
  %t75 = load i64, ptr %t74, !range !{i64 0, i64 8}
  %t77 = icmp eq i64 %t75, 6
  store i1 %t77, ptr %l37, !tbaa !21
  br label %bb23
bb23:
  %t78 = load i1, ptr %l37, !tbaa !21
  br i1 %t78, label %bb24, label %bb25
bb24:
  %t79 = load ptr, ptr %l1, !tbaa !29
  %t81 = getelementptr { i64, [4 x i64] }, ptr %t79, i32 0, i32 1
  %t82 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t81, i32 0, i32 2
  %t83 = load ptr, ptr %t82
  store ptr %t83, ptr %l5, !tbaa !29
  br label %bb26
bb25:
  br label %bb32
bb26:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load ptr, ptr %l5, !tbaa !29
  %t90 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFresh(ptr %v0, ptr %v1, ptr %t85, ptr %t86)
  store i1 %t90, ptr %l45
  br label %bb27
bb27:
  %t91 = load i1, ptr %l45, !tbaa !21
  br i1 %t91, label %bb28, label %bb29
bb28:
  %t92 = load ptr, ptr %l5, !tbaa !29
  %t95 = call ptr @compiler_2ftyped_2eCall_2eOf(ptr %v1, ptr %v2, ptr %t92)
  store ptr %t95, ptr %l49
  br label %bb30
bb29:
  store ptr null, ptr %l46, !tbaa !29
  br label %bb31
bb30:
  %t96 = load ptr, ptr %l49, !tbaa !29
  store ptr %t96, ptr %l46, !tbaa !29
  br label %bb31
bb31:
  %t97 = load ptr, ptr %l46, !tbaa !29
  store ptr %t97, ptr %l6, !tbaa !29
  br label %bb37
bb32:
  br i1 true, label %bb33, label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb36
bb35:
  store ptr null, ptr %l6, !tbaa !29
  br label %bb37
bb36:
  call void @__olang_check_failed(ptr @olang_loc_da1486de58138450_28784370eb22bac)
  unreachable
bb37:
  %t98 = load ptr, ptr %l6, !tbaa !29
  store ptr %t98, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeCall(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2) #0 {
entry:
  %l3 = alloca ptr
  %l6 = alloca ptr
  br label %start
start:
  br label %bb0
bb0:
  %t4 = call ptr @compiler_2ftyped_2eCall_2eOf(ptr %v1, ptr %v1, ptr %a1)
  store ptr %t4, ptr %l6
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l6, !tbaa !29
  store ptr %t5, ptr %l3, !tbaa !29
  %t6 = load ptr, ptr %l3, !tbaa !29
  %t8 = icmp eq ptr %t6, null
  %t10 = xor i1 %t8, true
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t13 = load ptr, ptr %l3, !tbaa !29
  %t15 = getelementptr %"compiler/typed:Call", ptr %t13, i32 0, i32 2
  %t16 = load i32, ptr %t15, !tbaa !23
  %t18 = sext i32 %t16 to i64
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeSite(ptr %v0, ptr %a0, i64 %t18, { i64, [2 x i64] } %a2)
  br label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb5
bb5:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2equalifiesMove(ptr %v0, ptr %v1, ptr %a0, %"compiler/typed:Local" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/typed:Local"
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca { i64, [1 x i64] }
  %l5 = alloca { i64, [1 x i64] }
  %l6 = alloca i32
  %l10 = alloca i1
  %l14 = alloca i1
  %l24 = alloca i1
  %l25 = alloca i1
  %l28 = alloca i1
  %l29 = alloca i1
  %l32 = alloca i1
  %l33 = alloca i1
  %l36 = alloca i1
  %l46 = alloca i1
  %l48 = alloca i1
  %l50 = alloca i1
  %l55 = alloca i1
  %l61 = alloca i32
  %l64 = alloca i1
  %l67 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store %"compiler/typed:Local" %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/typed:Local", ptr %l1, i32 0, i32 2
  %t2 = load i32, ptr %t1, !tbaa !23
  store i32 %t2, ptr %l3, !tbaa !23
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t5 = load i32, ptr %l3, !tbaa !23
  %t8 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFunc(ptr %v0, ptr %t4, i32 %t5)
  store i1 %t8, ptr %l10
  br label %bb1
bb1:
  %t9 = load i1, ptr %l10, !tbaa !21
  br i1 %t9, label %bb2, label %bb3
bb2:
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i32, ptr %l3, !tbaa !23
  %t15 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t11, i32 %t12)
  store i1 %t15, ptr %l14
  br label %bb5
bb5:
  %t16 = load i1, ptr %l14, !tbaa !21
  br i1 %t16, label %bb6, label %bb7
bb6:
  %t17 = getelementptr %"compiler/typed:Local", ptr %l1, i32 0, i32 5
  %t18 = load { i64, [1 x i64] }, ptr %t17
  store { i64, [1 x i64] } %t18, ptr %l4
  %t20 = load { i64, [1 x i64] }, ptr %l4
  %t22 = extractvalue { i64, [1 x i64] } %t20, 0
  %t23 = icmp eq i64 %t22, 1
  br i1 %t23, label %bb8, label %bb9
bb7:
  br label %bb32
bb8:
  br label %bb12
bb9:
  %t25 = load { i64, [1 x i64] }, ptr %l4
  %t27 = extractvalue { i64, [1 x i64] } %t25, 0
  %t28 = icmp eq i64 %t27, 4
  br i1 %t28, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb18
bb13:
  br i1 true, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  store i1 false, ptr %rv
  br label %ret
bb17:
  call void @__olang_check_failed(ptr @olang_loc_554265ba1528b3d8_d73d8ae267adc184)
  unreachable
bb18:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load ptr, ptr %l2, !tbaa !29
  %t36 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFresh(ptr %v0, ptr %v1, ptr %t31, ptr %t32)
  store i1 %t36, ptr %l24
  br label %bb19
bb19:
  %t37 = load i1, ptr %l24, !tbaa !21
  br i1 %t37, label %bb20, label %bb21
bb20:
  store i1 true, ptr %l25, !tbaa !21
  br label %bb23
bb21:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t39 = load ptr, ptr %l2, !tbaa !29
  %t42 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisNullLit(ptr %v0, ptr %v1, ptr %t38, ptr %t39)
  store i1 %t42, ptr %l28
  br label %bb22
bb22:
  %t43 = load i1, ptr %l28, !tbaa !21
  store i1 %t43, ptr %l25, !tbaa !21
  br label %bb23
bb23:
  %t44 = load i1, ptr %l25, !tbaa !21
  br i1 %t44, label %bb24, label %bb25
bb24:
  store i1 true, ptr %l29, !tbaa !21
  br label %bb27
bb25:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load ptr, ptr %l2, !tbaa !29
  %t49 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisData(ptr %v0, ptr %v1, ptr %t45, ptr %t46)
  store i1 %t49, ptr %l32
  br label %bb26
bb26:
  %t50 = load i1, ptr %l32, !tbaa !21
  store i1 %t50, ptr %l29, !tbaa !21
  br label %bb27
bb27:
  %t51 = load i1, ptr %l29, !tbaa !21
  br i1 %t51, label %bb28, label %bb29
bb28:
  store i1 true, ptr %l33, !tbaa !21
  br label %bb31
bb29:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load ptr, ptr %l2, !tbaa !29
  %t56 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estaticLiteral(ptr %v0, ptr %v1, ptr %t52, ptr %t53)
  store i1 %t56, ptr %l36
  br label %bb30
bb30:
  %t57 = load i1, ptr %l36, !tbaa !21
  store i1 %t57, ptr %l33, !tbaa !21
  br label %bb31
bb31:
  %t58 = load i1, ptr %l33, !tbaa !21
  store i1 %t58, ptr %rv
  br label %ret
bb32:
  %t59 = getelementptr %"compiler/typed:Local", ptr %l1, i32 0, i32 5
  %t60 = load { i64, [1 x i64] }, ptr %t59
  store { i64, [1 x i64] } %t60, ptr %l5
  %t62 = load { i64, [1 x i64] }, ptr %l5
  %t64 = extractvalue { i64, [1 x i64] } %t62, 0
  %t65 = icmp eq i64 %t64, 0
  br i1 %t65, label %bb33, label %bb34
bb33:
  br label %bb37
bb34:
  %t67 = load { i64, [1 x i64] }, ptr %l5
  %t69 = extractvalue { i64, [1 x i64] } %t67, 0
  %t70 = icmp eq i64 %t69, 4
  br i1 %t70, label %bb35, label %bb36
bb35:
  br label %bb37
bb36:
  br label %bb38
bb37:
  br label %bb43
bb38:
  br i1 true, label %bb39, label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb42
bb41:
  store i1 false, ptr %rv
  br label %ret
bb42:
  call void @__olang_check_failed(ptr @olang_loc_c484f993348186a9_88a471068962d75)
  unreachable
bb43:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load ptr, ptr %l2, !tbaa !29
  %t78 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emadeHere(ptr %v0, ptr %v1, ptr %t73, ptr %t74)
  store i1 %t78, ptr %l46
  br label %bb44
bb44:
  %t79 = load i1, ptr %l46, !tbaa !21
  %t80 = xor i1 %t79, true
  br i1 %t80, label %bb45, label %bb46
bb45:
  %t82 = load ptr, ptr %l2, !tbaa !29
  %t84 = call i1 @compiler_2fscope_2ecopiedRead(ptr %v1, ptr %t82)
  store i1 %t84, ptr %l50
  br label %bb47
bb46:
  store i1 false, ptr %l48, !tbaa !21
  br label %bb48
bb47:
  %t85 = load i1, ptr %l50, !tbaa !21
  %t86 = xor i1 %t85, true
  store i1 %t86, ptr %l48, !tbaa !21
  br label %bb48
bb48:
  %t88 = load i1, ptr %l48, !tbaa !21
  br i1 %t88, label %bb49, label %bb50
bb49:
  store i1 false, ptr %rv
  br label %ret
bb50:
  br label %bb51
bb51:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t91 = load i32, ptr %l3, !tbaa !23
  %t94 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholds(ptr %v0, ptr %t90, i32 %t91)
  store i1 %t94, ptr %l55
  br label %bb52
bb52:
  %t95 = load i1, ptr %l55, !tbaa !21
  br i1 %t95, label %bb53, label %bb54
bb53:
  store i1 true, ptr %rv
  br label %ret
bb54:
  br label %bb55
bb55:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/scope:Scoper", ptr %t97, i32 0, i32 0
  %t100 = load ptr, ptr %t99, !tbaa !29
  %t102 = getelementptr %"compiler/generic:Program", ptr %t100, i32 0, i32 2
  %t103 = load i32, ptr %l3, !tbaa !23
  %t106 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t102, i32 %t103)
  store i32 %t106, ptr %l61
  br label %bb56
bb56:
  %t107 = load i32, ptr %l61, !range !{i32 0, i32 33}
  store i32 %t107, ptr %l6
  %t108 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t110 = trunc i64 19 to i32
  %t111 = icmp eq i32 %t108, %t110
  br i1 %t111, label %bb57, label %bb58
bb57:
  store i1 true, ptr %l64, !tbaa !21
  br label %bb59
bb58:
  %t113 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t115 = trunc i64 18 to i32
  %t116 = icmp eq i32 %t113, %t115
  store i1 %t116, ptr %l64, !tbaa !21
  br label %bb59
bb59:
  %t118 = load i1, ptr %l64, !tbaa !21
  br i1 %t118, label %bb60, label %bb61
bb60:
  store i1 true, ptr %l67, !tbaa !21
  br label %bb62
bb61:
  %t119 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t121 = trunc i64 22 to i32
  %t122 = icmp eq i32 %t119, %t121
  store i1 %t122, ptr %l67, !tbaa !21
  br label %bb62
bb62:
  %t124 = load i1, ptr %l67, !tbaa !21
  store i1 %t124, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eregionRead(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i32
  %l8 = alloca { i64, ptr }
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca i32
  %l12 = alloca i64
  %l13 = alloca ptr
  %l17 = alloca ptr
  %l18 = alloca i1
  %l25 = alloca i64
  %l30 = alloca i64
  %l33 = alloca i1
  %l34 = alloca i64
  %l37 = alloca i64
  %l39 = alloca i1
  %l43 = alloca i64
  %l46 = alloca ptr
  %l47 = alloca i1
  %l50 = alloca ptr
  %l51 = alloca i1
  %l55 = alloca ptr
  %l56 = alloca i1
  %l65 = alloca i1
  %l66 = alloca ptr
  %l67 = alloca i1
  %l76 = alloca i1
  %l77 = alloca i1
  %l83 = alloca i1
  %l84 = alloca ptr
  %l85 = alloca i1
  %l93 = alloca i1
  %l94 = alloca i1
  %l98 = alloca i1
  %l100 = alloca { i64, ptr }
  %l104 = alloca i1
  %l105 = alloca ptr
  %l106 = alloca i1
  %l115 = alloca i1
  %l120 = alloca i1
  %l121 = alloca ptr
  %l122 = alloca i1
  %l129 = alloca i32
  %l138 = alloca i64
  %l141 = alloca i1
  %l149 = alloca { i64, ptr }
  %l152 = alloca ptr
  %l155 = alloca i64
  %l156 = alloca i64
  %l159 = alloca i1
  %l164 = alloca i1
  %rv = alloca i1
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
  store i1 true, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l1, !tbaa !29
  store ptr %t6, ptr %l17, !tbaa !29
  store i1 false, ptr %l18, !tbaa !21
  %t7 = load ptr, ptr %l17, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb4, label %bb5
bb4:
  %t10 = load ptr, ptr %l17, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 18}
  %t13 = icmp eq i64 %t11, 2
  store i1 %t13, ptr %l18, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l18, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr { i64, [5 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t17, i32 0, i32 2
  %t19 = load ptr, ptr %t18
  store ptr %t19, ptr %l3, !tbaa !29
  br label %bb8
bb7:
  br label %bb22
bb8:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load ptr, ptr %l3, !tbaa !29
  %t25 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eregionOf(ptr %v0, ptr %v1, ptr %t21, ptr %t22)
  store i64 %t25, ptr %l25
  br label %bb9
bb9:
  %t26 = load i64, ptr %l2, !tbaa !24
  %t27 = load i64, ptr %l25, !tbaa !24
  %t29 = icmp eq i64 %t27, %t26
  br i1 %t29, label %bb10, label %bb11
bb10:
  store i1 true, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t32 = load ptr, ptr %l3, !tbaa !29
  %t34 = call i64 @compiler_2fscope_2eflRoot(ptr %v1, ptr %t32)
  store i64 %t34, ptr %l30
  br label %bb13
bb13:
  %t35 = load i64, ptr %l30, !tbaa !24
  store i64 %t35, ptr %l4, !tbaa !24
  %t36 = load i64, ptr %l4, !tbaa !24
  %t38 = icmp sge i64 %t36, 0
  br i1 %t38, label %bb14, label %bb15
bb14:
  %t40 = load i64, ptr %l4, !tbaa !24
  store i64 %t40, ptr %l34, !tbaa !24
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/scope:Scoper", ptr %t41, i32 0, i32 121
  %t45 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t43)
  store i64 %t45, ptr %l37
  br label %bb16
bb15:
  store i1 false, ptr %l33, !tbaa !21
  br label %bb17
bb16:
  %t46 = load i64, ptr %l34, !tbaa !24
  %t47 = load i64, ptr %l37, !tbaa !24
  %t48 = icmp slt i64 %t46, %t47
  store i1 %t48, ptr %l33, !tbaa !21
  br label %bb17
bb17:
  %t50 = load i1, ptr %l33, !tbaa !21
  br i1 %t50, label %bb18, label %bb19
bb18:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/scope:Scoper", ptr %t51, i32 0, i32 121
  %t54 = load i64, ptr %l4, !tbaa !24
  %t57 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t53, i64 %t54)
  store i64 %t57, ptr %l43
  br label %bb20
bb19:
  store i1 false, ptr %l39, !tbaa !21
  br label %bb21
bb20:
  %t58 = load i64, ptr %l2, !tbaa !24
  %t59 = load i64, ptr %l43, !tbaa !24
  %t61 = icmp eq i64 %t59, %t58
  store i1 %t61, ptr %l39, !tbaa !21
  br label %bb21
bb21:
  %t63 = load i1, ptr %l39, !tbaa !21
  store i1 %t63, ptr %rv
  br label %ret
bb22:
  %t64 = load ptr, ptr %l1, !tbaa !29
  store ptr %t64, ptr %l46, !tbaa !29
  store i1 false, ptr %l47, !tbaa !21
  %t65 = load ptr, ptr %l46, !tbaa !29
  %t66 = icmp ne ptr %t65, null
  br i1 %t66, label %bb23, label %bb24
bb23:
  %t68 = load ptr, ptr %l46, !tbaa !29
  %t69 = load i64, ptr %t68, !range !{i64 0, i64 18}
  %t71 = icmp eq i64 %t69, 0
  store i1 %t71, ptr %l47, !tbaa !21
  br label %bb24
bb24:
  %t72 = load i1, ptr %l47, !tbaa !21
  br i1 %t72, label %bb25, label %bb26
bb25:
  br label %bb31
bb26:
  %t73 = load ptr, ptr %l1, !tbaa !29
  store ptr %t73, ptr %l50, !tbaa !29
  store i1 false, ptr %l51, !tbaa !21
  %t74 = load ptr, ptr %l50, !tbaa !29
  %t75 = icmp ne ptr %t74, null
  br i1 %t75, label %bb27, label %bb28
bb27:
  %t77 = load ptr, ptr %l50, !tbaa !29
  %t78 = load i64, ptr %t77, !range !{i64 0, i64 18}
  %t80 = icmp eq i64 %t78, 1
  store i1 %t80, ptr %l51, !tbaa !21
  br label %bb28
bb28:
  %t81 = load i1, ptr %l51, !tbaa !21
  br i1 %t81, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  store i1 true, ptr %rv
  br label %ret
bb32:
  %t83 = load ptr, ptr %l1, !tbaa !29
  store ptr %t83, ptr %l55, !tbaa !29
  store i1 false, ptr %l56, !tbaa !21
  %t84 = load ptr, ptr %l55, !tbaa !29
  %t85 = icmp ne ptr %t84, null
  br i1 %t85, label %bb33, label %bb34
bb33:
  %t87 = load ptr, ptr %l55, !tbaa !29
  %t88 = load i64, ptr %t87, !range !{i64 0, i64 18}
  %t90 = icmp eq i64 %t88, 17
  store i1 %t90, ptr %l56, !tbaa !21
  br label %bb34
bb34:
  %t91 = load i1, ptr %l56, !tbaa !21
  br i1 %t91, label %bb35, label %bb36
bb35:
  %t92 = load ptr, ptr %l1, !tbaa !29
  %t94 = getelementptr { i64, [5 x i64] }, ptr %t92, i32 0, i32 1
  %t95 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t94, i32 0, i32 2
  %t96 = load ptr, ptr %t95
  store ptr %t96, ptr %l5, !tbaa !29
  br label %bb37
bb36:
  br label %bb39
bb37:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t99 = load ptr, ptr %l5, !tbaa !29
  %t101 = load i64, ptr %l2, !tbaa !24
  %t105 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eregionRead(ptr %v0, ptr %v1, ptr %t98, ptr %t99, i64 %t101)
  store i1 %t105, ptr %l65
  br label %bb38
bb38:
  %t106 = load i1, ptr %l65, !tbaa !21
  store i1 %t106, ptr %rv
  br label %ret
bb39:
  %t107 = load ptr, ptr %l1, !tbaa !29
  store ptr %t107, ptr %l66, !tbaa !29
  store i1 false, ptr %l67, !tbaa !21
  %t108 = load ptr, ptr %l66, !tbaa !29
  %t109 = icmp ne ptr %t108, null
  br i1 %t109, label %bb40, label %bb41
bb40:
  %t111 = load ptr, ptr %l66, !tbaa !29
  %t112 = load i64, ptr %t111, !range !{i64 0, i64 18}
  %t114 = icmp eq i64 %t112, 11
  store i1 %t114, ptr %l67, !tbaa !21
  br label %bb41
bb41:
  %t115 = load i1, ptr %l67, !tbaa !21
  br i1 %t115, label %bb42, label %bb43
bb42:
  %t116 = load ptr, ptr %l1, !tbaa !29
  %t118 = getelementptr { i64, [5 x i64] }, ptr %t116, i32 0, i32 1
  %t119 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t118, i32 0, i32 2
  %t120 = load ptr, ptr %t119
  store ptr %t120, ptr %l6, !tbaa !29
  br label %bb44
bb43:
  br label %bb50
bb44:
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t123 = load ptr, ptr %l6, !tbaa !29
  %t125 = getelementptr %"compiler/typed:Cond", ptr %t123, i32 0, i32 1
  %t126 = load ptr, ptr %t125, !tbaa !29
  %t127 = load i64, ptr %l2, !tbaa !24
  %t131 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eregionRead(ptr %v0, ptr %v1, ptr %t122, ptr %t126, i64 %t127)
  store i1 %t131, ptr %l76
  br label %bb45
bb45:
  %t132 = load i1, ptr %l76, !tbaa !21
  br i1 %t132, label %bb46, label %bb47
bb46:
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t134 = load ptr, ptr %l6, !tbaa !29
  %t136 = getelementptr %"compiler/typed:Cond", ptr %t134, i32 0, i32 2
  %t137 = load ptr, ptr %t136, !tbaa !29
  %t139 = load i64, ptr %l2, !tbaa !24
  %t143 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eregionRead(ptr %v0, ptr %v1, ptr %t133, ptr %t137, i64 %t139)
  store i1 %t143, ptr %l83
  br label %bb48
bb47:
  store i1 false, ptr %l77, !tbaa !21
  br label %bb49
bb48:
  %t144 = load i1, ptr %l83, !tbaa !21
  store i1 %t144, ptr %l77, !tbaa !21
  br label %bb49
bb49:
  %t145 = load i1, ptr %l77, !tbaa !21
  store i1 %t145, ptr %rv
  br label %ret
bb50:
  %t146 = load ptr, ptr %l1, !tbaa !29
  store ptr %t146, ptr %l84, !tbaa !29
  store i1 false, ptr %l85, !tbaa !21
  %t147 = load ptr, ptr %l84, !tbaa !29
  %t148 = icmp ne ptr %t147, null
  br i1 %t148, label %bb51, label %bb52
bb51:
  %t150 = load ptr, ptr %l84, !tbaa !29
  %t151 = load i64, ptr %t150, !range !{i64 0, i64 18}
  %t153 = icmp eq i64 %t151, 9
  store i1 %t153, ptr %l85, !tbaa !21
  br label %bb52
bb52:
  %t154 = load i1, ptr %l85, !tbaa !21
  br i1 %t154, label %bb53, label %bb54
bb53:
  %t155 = load ptr, ptr %l1, !tbaa !29
  %t157 = getelementptr { i64, [5 x i64] }, ptr %t155, i32 0, i32 1
  %t158 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t157, i32 0, i32 2
  %t159 = load i32, ptr %t158, !range !{i32 0, i32 52}
  store i32 %t159, ptr %l7
  %t161 = load ptr, ptr %l1, !tbaa !29
  %t163 = getelementptr { i64, [5 x i64] }, ptr %t161, i32 0, i32 1
  %t164 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t163, i32 0, i32 4
  %t165 = load { i64, ptr }, ptr %t164
  store { i64, ptr } %t165, ptr %l8, !tbaa !27
  br label %bb55
bb54:
  br label %bb64
bb55:
  %t167 = load i32, ptr %l7, !range !{i32 0, i32 52}
  %t169 = call i1 @compiler_2ftyped_2ePassesRefs(i32 %t167)
  store i1 %t169, ptr %l93
  br label %bb56
bb56:
  %t170 = load i1, ptr %l93, !tbaa !21
  br i1 %t170, label %bb57, label %bb58
bb57:
  %t171 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t173 = extractvalue { i64, ptr } %t171, 0
  %t175 = icmp sgt i64 %t173, 0
  store i1 %t175, ptr %l94, !tbaa !21
  br label %bb59
bb58:
  store i1 false, ptr %l94, !tbaa !21
  br label %bb59
bb59:
  %t177 = load i1, ptr %l94, !tbaa !21
  br i1 %t177, label %bb60, label %bb61
bb60:
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t179 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t179, ptr %l100, !tbaa !27
  %t180 = getelementptr { i64, ptr }, ptr %l100, i32 0, i32 1
  %t181 = load ptr, ptr %t180, !tbaa !27
  %t182 = getelementptr ptr, ptr %t181, i64 0
  %t183 = load ptr, ptr %t182, !tbaa !39
  %t185 = load i64, ptr %l2, !tbaa !24
  %t189 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eregionRead(ptr %v0, ptr %v1, ptr %t178, ptr %t183, i64 %t185)
  store i1 %t189, ptr %l104
  br label %bb62
bb61:
  store i1 false, ptr %l98, !tbaa !21
  br label %bb63
bb62:
  %t190 = load i1, ptr %l104, !tbaa !21
  store i1 %t190, ptr %l98, !tbaa !21
  br label %bb63
bb63:
  %t191 = load i1, ptr %l98, !tbaa !21
  store i1 %t191, ptr %rv
  br label %ret
bb64:
  %t192 = load ptr, ptr %l1, !tbaa !29
  store ptr %t192, ptr %l105, !tbaa !29
  store i1 false, ptr %l106, !tbaa !21
  %t193 = load ptr, ptr %l105, !tbaa !29
  %t194 = icmp ne ptr %t193, null
  br i1 %t194, label %bb65, label %bb66
bb65:
  %t196 = load ptr, ptr %l105, !tbaa !29
  %t197 = load i64, ptr %t196, !range !{i64 0, i64 18}
  %t199 = icmp eq i64 %t197, 12
  store i1 %t199, ptr %l106, !tbaa !21
  br label %bb66
bb66:
  %t200 = load i1, ptr %l106, !tbaa !21
  br i1 %t200, label %bb67, label %bb68
bb67:
  %t201 = load ptr, ptr %l1, !tbaa !29
  %t203 = getelementptr { i64, [5 x i64] }, ptr %t201, i32 0, i32 1
  %t204 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t203, i32 0, i32 2
  %t205 = load ptr, ptr %t204
  store ptr %t205, ptr %l9, !tbaa !29
  br label %bb69
bb68:
  br label %bb74
bb69:
  %t207 = load ptr, ptr %l9, !tbaa !29
  %t209 = getelementptr %"compiler/typed:Seq", ptr %t207, i32 0, i32 0
  %t210 = load { i64, ptr }, ptr %t209, !tbaa !27
  %t212 = extractvalue { i64, ptr } %t210, 0
  %t214 = icmp eq i64 %t212, 0
  br i1 %t214, label %bb70, label %bb71
bb70:
  %t216 = load ptr, ptr %l0, !tbaa !29
  %t217 = load ptr, ptr %l9, !tbaa !29
  %t219 = getelementptr %"compiler/typed:Seq", ptr %t217, i32 0, i32 1
  %t220 = load ptr, ptr %t219, !tbaa !29
  %t221 = load i64, ptr %l2, !tbaa !24
  %t225 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eregionRead(ptr %v0, ptr %v1, ptr %t216, ptr %t220, i64 %t221)
  store i1 %t225, ptr %l120
  br label %bb72
bb71:
  store i1 false, ptr %l115, !tbaa !21
  br label %bb73
bb72:
  %t226 = load i1, ptr %l120, !tbaa !21
  store i1 %t226, ptr %l115, !tbaa !21
  br label %bb73
bb73:
  %t227 = load i1, ptr %l115, !tbaa !21
  store i1 %t227, ptr %rv
  br label %ret
bb74:
  %t228 = load ptr, ptr %l1, !tbaa !29
  store ptr %t228, ptr %l121, !tbaa !29
  store i1 false, ptr %l122, !tbaa !21
  %t229 = load ptr, ptr %l121, !tbaa !29
  %t230 = icmp ne ptr %t229, null
  br i1 %t230, label %bb75, label %bb76
bb75:
  %t232 = load ptr, ptr %l121, !tbaa !29
  %t233 = load i64, ptr %t232, !range !{i64 0, i64 18}
  %t235 = icmp eq i64 %t233, 6
  store i1 %t235, ptr %l122, !tbaa !21
  br label %bb76
bb76:
  %t236 = load i1, ptr %l122, !tbaa !21
  br i1 %t236, label %bb77, label %bb78
bb77:
  %t237 = load ptr, ptr %l1, !tbaa !29
  %t239 = getelementptr { i64, [5 x i64] }, ptr %t237, i32 0, i32 1
  %t240 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t239, i32 0, i32 2
  %t241 = load ptr, ptr %t240
  store ptr %t241, ptr %l10, !tbaa !29
  br label %bb79
bb78:
  br label %bb97
bb79:
  %t243 = load ptr, ptr %l0, !tbaa !29
  %t244 = load ptr, ptr %l10, !tbaa !29
  %t247 = call i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeType(ptr %v0, ptr %v1, ptr %t243, ptr %t244)
  store i32 %t247, ptr %l129
  br label %bb80
bb80:
  %t248 = load i32, ptr %l129, !tbaa !23
  store i32 %t248, ptr %l11, !tbaa !23
  %t249 = load i32, ptr %l11, !tbaa !23
  %t250 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t253 = icmp eq i32 %t249, %t250
  br i1 %t253, label %bb81, label %bb82
bb81:
  store i1 false, ptr %rv
  br label %ret
bb82:
  br label %bb83
bb83:
  %t256 = load ptr, ptr %l0, !tbaa !29
  %t258 = getelementptr %"compiler/scope:Scoper", ptr %t256, i32 0, i32 0
  %t259 = load ptr, ptr %t258, !tbaa !29
  %t261 = getelementptr %"compiler/generic:Program", ptr %t259, i32 0, i32 2
  %t262 = load i32, ptr %l11, !tbaa !23
  %t265 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResultFrom(ptr %v0, ptr %t261, i32 %t262, i64 0)
  store i64 %t265, ptr %l138
  br label %bb84
bb84:
  %t266 = load i64, ptr %l138, !tbaa !24
  store i64 %t266, ptr %l12, !tbaa !24
  %t267 = load i64, ptr %l12, !tbaa !24
  %t269 = icmp slt i64 %t267, 0
  br i1 %t269, label %bb85, label %bb86
bb85:
  store i1 true, ptr %l141, !tbaa !21
  br label %bb87
bb86:
  %t271 = load i64, ptr %l12, !tbaa !24
  %t272 = load ptr, ptr %l10, !tbaa !29
  %t274 = getelementptr %"compiler/typed:Call", ptr %t272, i32 0, i32 1
  %t275 = load { i64, ptr }, ptr %t274, !tbaa !27
  %t277 = extractvalue { i64, ptr } %t275, 0
  %t280 = icmp sge i64 %t271, %t277
  store i1 %t280, ptr %l141, !tbaa !21
  br label %bb87
bb87:
  %t282 = load i1, ptr %l141, !tbaa !21
  br i1 %t282, label %bb88, label %bb89
bb88:
  store i1 false, ptr %rv
  br label %ret
bb89:
  br label %bb90
bb90:
  %t284 = load ptr, ptr %l10, !tbaa !29
  %t286 = getelementptr %"compiler/typed:Call", ptr %t284, i32 0, i32 1
  %t287 = load { i64, ptr }, ptr %t286, !tbaa !27
  store { i64, ptr } %t287, ptr %l149, !tbaa !27
  %t288 = load i64, ptr %l12, !tbaa !24
  %t290 = getelementptr { i64, ptr }, ptr %l149, i32 0, i32 1
  %t291 = load ptr, ptr %t290, !tbaa !27
  %t292 = getelementptr ptr, ptr %t291, i64 %t288
  %t293 = load ptr, ptr %t292, !tbaa !39
  store ptr %t293, ptr %l13, !tbaa !29
  %t295 = load ptr, ptr %l0, !tbaa !29
  store ptr %t295, ptr %l152, !tbaa !29
  %t296 = load ptr, ptr %l0, !tbaa !29
  %t297 = load ptr, ptr %l13, !tbaa !29
  %t300 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehandedRegion(ptr %v0, ptr %v1, ptr %t296, ptr %t297)
  store i64 %t300, ptr %l155
  br label %bb91
bb91:
  %t301 = load ptr, ptr %l152, !tbaa !29
  %t302 = load i64, ptr %l155, !tbaa !24
  %t303 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eregionParam(ptr %v0, ptr %t301, i64 %t302)
  store i64 %t303, ptr %l156
  br label %bb92
bb92:
  %t304 = load i64, ptr %l2, !tbaa !24
  %t305 = load i64, ptr %l156, !tbaa !24
  %t307 = icmp eq i64 %t305, %t304
  br i1 %t307, label %bb93, label %bb94
bb93:
  store i1 true, ptr %l159, !tbaa !21
  br label %bb96
bb94:
  %t309 = load ptr, ptr %l0, !tbaa !29
  %t310 = load ptr, ptr %l13, !tbaa !29
  %t312 = load i64, ptr %l2, !tbaa !24
  %t316 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eregionRead(ptr %v0, ptr %v1, ptr %t309, ptr %t310, i64 %t312)
  store i1 %t316, ptr %l164
  br label %bb95
bb95:
  %t317 = load i1, ptr %l164, !tbaa !21
  store i1 %t317, ptr %l159, !tbaa !21
  br label %bb96
bb96:
  %t318 = load i1, ptr %l159, !tbaa !21
  store i1 %t318, ptr %rv
  br label %ret
bb97:
  br i1 true, label %bb98, label %bb99
bb98:
  br label %bb100
bb99:
  br label %bb101
bb100:
  br label %bb102
bb101:
  call void @__olang_check_failed(ptr @olang_loc_6ccd45388b9650e6_c3dc20dea523dcba)
  unreachable
bb102:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleBlock(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
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
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleStmt(ptr %v0, ptr %v1, ptr %a0, ptr %t28)
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t35 = load i64, ptr %l3, !tbaa !24
  %t37 = add i64 %t35, 1
  store i64 %t37, ptr %l3, !tbaa !24
  br label %bb4
bb10:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleBorrow(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i1
  %l13 = alloca i1
  %l19 = alloca ptr
  %l20 = alloca i1
  %l28 = alloca i1
  %l43 = alloca ptr
  %l44 = alloca i1
  %l51 = alloca i1
  %rv = alloca i1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 3
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
  br label %bb11
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t20 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleRooted(ptr %v0, ptr %v1, ptr %t16, ptr %t17)
  store i1 %t20, ptr %l13
  br label %bb6
bb6:
  %t21 = load i1, ptr %l13, !tbaa !21
  %t22 = xor i1 %t21, true
  br i1 %t22, label %bb7, label %bb8
bb7:
  store i1 false, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esolePlace(ptr %v0, ptr %v1, ptr %t25, ptr %t26, i1 false)
  br label %bb10
bb10:
  store i1 true, ptr %rv
  br label %ret
bb11:
  %t30 = load ptr, ptr %l1, !tbaa !29
  store ptr %t30, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t31 = load ptr, ptr %l19, !tbaa !29
  %t32 = icmp ne ptr %t31, null
  br i1 %t32, label %bb12, label %bb13
bb12:
  %t34 = load ptr, ptr %l19, !tbaa !29
  %t35 = load i64, ptr %t34, !range !{i64 0, i64 18}
  %t37 = icmp eq i64 %t35, 10
  store i1 %t37, ptr %l20, !tbaa !21
  br label %bb13
bb13:
  %t38 = load i1, ptr %l20, !tbaa !21
  br i1 %t38, label %bb14, label %bb15
bb14:
  %t39 = load ptr, ptr %l1, !tbaa !29
  %t41 = getelementptr { i64, [5 x i64] }, ptr %t39, i32 0, i32 1
  %t42 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t41, i32 0, i32 2
  %t43 = load ptr, ptr %t42
  store ptr %t43, ptr %l3, !tbaa !29
  br label %bb16
bb15:
  br label %bb24
bb16:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load ptr, ptr %l3, !tbaa !29
  %t48 = getelementptr %"compiler/typed:Slice", ptr %t46, i32 0, i32 0
  %t49 = load ptr, ptr %t48, !tbaa !29
  %t52 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleRooted(ptr %v0, ptr %v1, ptr %t45, ptr %t49)
  store i1 %t52, ptr %l28
  br label %bb17
bb17:
  %t53 = load i1, ptr %l28, !tbaa !21
  %t54 = xor i1 %t53, true
  br i1 %t54, label %bb18, label %bb19
bb18:
  store i1 false, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load ptr, ptr %l3, !tbaa !29
  %t60 = getelementptr %"compiler/typed:Slice", ptr %t58, i32 0, i32 0
  %t61 = load ptr, ptr %t60, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esolePlace(ptr %v0, ptr %v1, ptr %t57, ptr %t61, i1 false)
  br label %bb21
bb21:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load ptr, ptr %l3, !tbaa !29
  %t67 = getelementptr %"compiler/typed:Slice", ptr %t65, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t64, ptr %t68, i1 false)
  br label %bb22
bb22:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t73 = load ptr, ptr %l3, !tbaa !29
  %t75 = getelementptr %"compiler/typed:Slice", ptr %t73, i32 0, i32 2
  %t76 = load ptr, ptr %t75, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t72, ptr %t76, i1 false)
  br label %bb23
bb23:
  store i1 true, ptr %rv
  br label %ret
bb24:
  %t81 = load ptr, ptr %l1, !tbaa !29
  store ptr %t81, ptr %l43, !tbaa !29
  store i1 false, ptr %l44, !tbaa !21
  %t82 = load ptr, ptr %l43, !tbaa !29
  %t83 = icmp ne ptr %t82, null
  br i1 %t83, label %bb25, label %bb26
bb25:
  %t85 = load ptr, ptr %l43, !tbaa !29
  %t86 = load i64, ptr %t85, !range !{i64 0, i64 18}
  %t88 = icmp eq i64 %t86, 17
  store i1 %t88, ptr %l44, !tbaa !21
  br label %bb26
bb26:
  %t89 = load i1, ptr %l44, !tbaa !21
  br i1 %t89, label %bb27, label %bb28
bb27:
  %t90 = load ptr, ptr %l1, !tbaa !29
  %t92 = getelementptr { i64, [5 x i64] }, ptr %t90, i32 0, i32 1
  %t93 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t92, i32 0, i32 2
  %t94 = load ptr, ptr %t93
  store ptr %t94, ptr %l4, !tbaa !29
  br label %bb29
bb28:
  br label %bb31
bb29:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = load ptr, ptr %l4, !tbaa !29
  %t100 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleBorrow(ptr %v0, ptr %v1, ptr %t96, ptr %t97)
  store i1 %t100, ptr %l51
  br label %bb30
bb30:
  %t101 = load i1, ptr %l51, !tbaa !21
  store i1 %t101, ptr %rv
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
  call void @__olang_check_failed(ptr @olang_loc_a0f62e15f83dbcd2_e5e27d58af67db56)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esolePlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i1
  %l16 = alloca i1
  %l23 = alloca ptr
  %l24 = alloca i1
  %l33 = alloca ptr
  %l34 = alloca i1
  %l42 = alloca ptr
  %l43 = alloca i1
  %l57 = alloca ptr
  %l58 = alloca i1
  %l67 = alloca ptr
  %l68 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i1 %a2, ptr %l2
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l10, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l10, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l3, !tbaa !23
  br label %bb5
bb4:
  br label %bb12
bb5:
  %t16 = load i1, ptr %l2, !tbaa !21
  br i1 %t16, label %bb6, label %bb7
bb6:
  %t18 = load i32, ptr %l3, !tbaa !23
  %t20 = sext i32 %t18 to i64
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/scope:Scoper", ptr %t21, i32 0, i32 138
  %t24 = load i64, ptr %t23, !tbaa !24
  %t27 = icmp eq i64 %t20, %t24
  store i1 %t27, ptr %l16, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l16, !tbaa !21
  br label %bb8
bb8:
  %t29 = load i1, ptr %l16, !tbaa !21
  br i1 %t29, label %bb9, label %bb10
bb9:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/scope:Scoper", ptr %t30, i32 0, i32 139
  store i1 true, ptr %t32, !tbaa !21
  br label %bb11
bb10:
  br label %bb11
bb11:
  br label %bb53
bb12:
  %t33 = load ptr, ptr %l1, !tbaa !29
  store ptr %t33, ptr %l23, !tbaa !29
  store i1 false, ptr %l24, !tbaa !21
  %t34 = load ptr, ptr %l23, !tbaa !29
  %t35 = icmp ne ptr %t34, null
  br i1 %t35, label %bb13, label %bb14
bb13:
  %t37 = load ptr, ptr %l23, !tbaa !29
  %t38 = load i64, ptr %t37, !range !{i64 0, i64 8}
  %t40 = icmp eq i64 %t38, 2
  store i1 %t40, ptr %l24, !tbaa !21
  br label %bb14
bb14:
  %t41 = load i1, ptr %l24, !tbaa !21
  br i1 %t41, label %bb15, label %bb16
bb15:
  %t42 = load ptr, ptr %l1, !tbaa !29
  %t44 = getelementptr { i64, [4 x i64] }, ptr %t42, i32 0, i32 1
  %t45 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t44, i32 0, i32 2
  %t46 = load ptr, ptr %t45
  store ptr %t46, ptr %l4, !tbaa !29
  br label %bb17
bb16:
  br label %bb19
bb17:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load ptr, ptr %l4, !tbaa !29
  %t51 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t48, ptr %t49, i1 %t51)
  br label %bb18
bb18:
  br label %bb53
bb19:
  %t55 = load ptr, ptr %l1, !tbaa !29
  store ptr %t55, ptr %l33, !tbaa !29
  store i1 false, ptr %l34, !tbaa !21
  %t56 = load ptr, ptr %l33, !tbaa !29
  %t57 = icmp ne ptr %t56, null
  br i1 %t57, label %bb20, label %bb21
bb20:
  %t59 = load ptr, ptr %l33, !tbaa !29
  %t60 = load i64, ptr %t59, !range !{i64 0, i64 8}
  %t62 = icmp eq i64 %t60, 3
  store i1 %t62, ptr %l34, !tbaa !21
  br label %bb21
bb21:
  %t63 = load i1, ptr %l34, !tbaa !21
  br i1 %t63, label %bb22, label %bb23
bb22:
  %t64 = load ptr, ptr %l1, !tbaa !29
  %t66 = getelementptr { i64, [4 x i64] }, ptr %t64, i32 0, i32 1
  %t67 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t66, i32 0, i32 2
  %t68 = load ptr, ptr %t67
  store ptr %t68, ptr %l5, !tbaa !29
  br label %bb24
bb23:
  br label %bb26
bb24:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load ptr, ptr %l5, !tbaa !29
  %t72 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esolePlace(ptr %v0, ptr %v1, ptr %t70, ptr %t71, i1 %t72)
  br label %bb25
bb25:
  br label %bb53
bb26:
  %t76 = load ptr, ptr %l1, !tbaa !29
  store ptr %t76, ptr %l42, !tbaa !29
  store i1 false, ptr %l43, !tbaa !21
  %t77 = load ptr, ptr %l42, !tbaa !29
  %t78 = icmp ne ptr %t77, null
  br i1 %t78, label %bb27, label %bb28
bb27:
  %t80 = load ptr, ptr %l42, !tbaa !29
  %t81 = load i64, ptr %t80, !range !{i64 0, i64 8}
  %t83 = icmp eq i64 %t81, 4
  store i1 %t83, ptr %l43, !tbaa !21
  br label %bb28
bb28:
  %t84 = load i1, ptr %l43, !tbaa !21
  br i1 %t84, label %bb29, label %bb30
bb29:
  %t85 = load ptr, ptr %l1, !tbaa !29
  %t87 = getelementptr { i64, [4 x i64] }, ptr %t85, i32 0, i32 1
  %t88 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t87, i32 0, i32 2
  %t89 = load ptr, ptr %t88
  store ptr %t89, ptr %l6, !tbaa !29
  br label %bb31
bb30:
  br label %bb34
bb31:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load ptr, ptr %l6, !tbaa !29
  %t94 = getelementptr %"compiler/typed:Elem", ptr %t92, i32 0, i32 0
  %t95 = load ptr, ptr %t94, !tbaa !29
  %t96 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esolePlace(ptr %v0, ptr %v1, ptr %t91, ptr %t95, i1 %t96)
  br label %bb32
bb32:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t101 = load ptr, ptr %l6, !tbaa !29
  %t103 = getelementptr %"compiler/typed:Elem", ptr %t101, i32 0, i32 1
  %t104 = load ptr, ptr %t103, !tbaa !29
  %t106 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t100, ptr %t104, i1 %t106)
  br label %bb33
bb33:
  br label %bb53
bb34:
  %t110 = load ptr, ptr %l1, !tbaa !29
  store ptr %t110, ptr %l57, !tbaa !29
  store i1 false, ptr %l58, !tbaa !21
  %t111 = load ptr, ptr %l57, !tbaa !29
  %t112 = icmp ne ptr %t111, null
  br i1 %t112, label %bb35, label %bb36
bb35:
  %t114 = load ptr, ptr %l57, !tbaa !29
  %t115 = load i64, ptr %t114, !range !{i64 0, i64 8}
  %t117 = icmp eq i64 %t115, 5
  store i1 %t117, ptr %l58, !tbaa !21
  br label %bb36
bb36:
  %t118 = load i1, ptr %l58, !tbaa !21
  br i1 %t118, label %bb37, label %bb38
bb37:
  %t119 = load ptr, ptr %l1, !tbaa !29
  %t121 = getelementptr { i64, [4 x i64] }, ptr %t119, i32 0, i32 1
  %t122 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t121, i32 0, i32 2
  %t123 = load ptr, ptr %t122
  store ptr %t123, ptr %l7, !tbaa !29
  br label %bb39
bb38:
  br label %bb41
bb39:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t126 = load ptr, ptr %l7, !tbaa !29
  %t128 = getelementptr %"compiler/typed:Payload", ptr %t126, i32 0, i32 0
  %t129 = load ptr, ptr %t128, !tbaa !29
  %t130 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esolePlace(ptr %v0, ptr %v1, ptr %t125, ptr %t129, i1 %t130)
  br label %bb40
bb40:
  br label %bb53
bb41:
  %t134 = load ptr, ptr %l1, !tbaa !29
  store ptr %t134, ptr %l67, !tbaa !29
  store i1 false, ptr %l68, !tbaa !21
  %t135 = load ptr, ptr %l67, !tbaa !29
  %t136 = icmp ne ptr %t135, null
  br i1 %t136, label %bb42, label %bb43
bb42:
  %t138 = load ptr, ptr %l67, !tbaa !29
  %t139 = load i64, ptr %t138, !range !{i64 0, i64 8}
  %t141 = icmp eq i64 %t139, 6
  store i1 %t141, ptr %l68, !tbaa !21
  br label %bb43
bb43:
  %t142 = load i1, ptr %l68, !tbaa !21
  br i1 %t142, label %bb44, label %bb45
bb44:
  %t143 = load ptr, ptr %l1, !tbaa !29
  %t145 = getelementptr { i64, [4 x i64] }, ptr %t143, i32 0, i32 1
  %t146 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t145, i32 0, i32 2
  %t147 = load ptr, ptr %t146
  store ptr %t147, ptr %l8, !tbaa !29
  br label %bb46
bb45:
  br label %bb48
bb46:
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t150 = load ptr, ptr %l8, !tbaa !29
  %t152 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t149, ptr %t150, i1 %t152)
  br label %bb47
bb47:
  br label %bb53
bb48:
  br i1 true, label %bb49, label %bb50
bb49:
  br label %bb51
bb50:
  br label %bb52
bb51:
  br label %bb53
bb52:
  call void @__olang_check_failed(ptr @olang_loc_566ec92d5eb42aa6_b52d725096b7c0ca)
  unreachable
bb53:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etailBuilt(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l9 = alloca i32
  %l14 = alloca i1
  %l16 = alloca i1
  %l19 = alloca i1
  %l25 = alloca ptr
  %l26 = alloca ptr
  %l27 = alloca i1
  %l28 = alloca ptr
  %l29 = alloca i1
  %l32 = alloca ptr
  %l33 = alloca i1
  %l36 = alloca ptr
  %l37 = alloca i1
  %l42 = alloca ptr
  %l43 = alloca i1
  %l48 = alloca ptr
  %l49 = alloca i1
  %l58 = alloca i1
  %l60 = alloca ptr
  %l61 = alloca i1
  %l71 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t1)
  store i32 %t3, ptr %l9
  br label %bb1
bb1:
  %t4 = load i32, ptr %l9, !tbaa !23
  store i32 %t4, ptr %l4, !tbaa !23
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/scope:Scoper", ptr %t5, i32 0, i32 0
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t10 = getelementptr %"compiler/generic:Program", ptr %t8, i32 0, i32 2
  %t11 = load i32, ptr %l4, !tbaa !23
  %t14 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %t10, i32 %t11)
  store i1 %t14, ptr %l14
  br label %bb2
bb2:
  %t15 = load i1, ptr %l14, !tbaa !21
  %t16 = xor i1 %t15, true
  br i1 %t16, label %bb3, label %bb4
bb3:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load i32, ptr %l4, !tbaa !23
  %t22 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2earenaValue(ptr %v0, ptr %t18, i32 %t19)
  store i1 %t22, ptr %l19
  br label %bb5
bb4:
  store i1 false, ptr %l16, !tbaa !21
  br label %bb6
bb5:
  %t23 = load i1, ptr %l19, !tbaa !21
  %t24 = xor i1 %t23, true
  store i1 %t24, ptr %l16, !tbaa !21
  br label %bb6
bb6:
  %t26 = load i1, ptr %l16, !tbaa !21
  br i1 %t26, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load ptr, ptr %l2, !tbaa !29
  %t33 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %s0, ptr %t28, ptr %t29)
  store ptr %t33, ptr %l25
  br label %bb10
bb10:
  %t34 = load ptr, ptr %l25, !tbaa !29
  %t35 = call ptr @compiler_2fscope_2eunPassed(ptr %s0, ptr %s0, ptr %t34)
  store ptr %t35, ptr %l26
  br label %bb11
bb11:
  %t36 = load ptr, ptr %l26, !tbaa !29
  store ptr %t36, ptr %l5, !tbaa !29
  %t37 = load ptr, ptr %l5, !tbaa !29
  store ptr %t37, ptr %l28, !tbaa !29
  store i1 false, ptr %l29, !tbaa !21
  %t38 = load ptr, ptr %l28, !tbaa !29
  %t39 = icmp ne ptr %t38, null
  br i1 %t39, label %bb12, label %bb13
bb12:
  %t41 = load ptr, ptr %l28, !tbaa !29
  %t42 = load i64, ptr %t41, !range !{i64 0, i64 18}
  %t44 = icmp eq i64 %t42, 1
  store i1 %t44, ptr %l29, !tbaa !21
  br label %bb13
bb13:
  %t45 = load i1, ptr %l29, !tbaa !21
  br i1 %t45, label %bb14, label %bb15
bb14:
  br label %bb20
bb15:
  %t46 = load ptr, ptr %l5, !tbaa !29
  store ptr %t46, ptr %l32, !tbaa !29
  store i1 false, ptr %l33, !tbaa !21
  %t47 = load ptr, ptr %l32, !tbaa !29
  %t48 = icmp ne ptr %t47, null
  br i1 %t48, label %bb16, label %bb17
bb16:
  %t50 = load ptr, ptr %l32, !tbaa !29
  %t51 = load i64, ptr %t50, !range !{i64 0, i64 18}
  %t53 = icmp eq i64 %t51, 0
  store i1 %t53, ptr %l33, !tbaa !21
  br label %bb17
bb17:
  %t54 = load i1, ptr %l33, !tbaa !21
  br i1 %t54, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb21
bb20:
  store i1 false, ptr %l27, !tbaa !21
  br label %bb48
bb21:
  %t55 = load ptr, ptr %l5, !tbaa !29
  store ptr %t55, ptr %l36, !tbaa !29
  store i1 false, ptr %l37, !tbaa !21
  %t56 = load ptr, ptr %l36, !tbaa !29
  %t57 = icmp ne ptr %t56, null
  br i1 %t57, label %bb22, label %bb23
bb22:
  %t59 = load ptr, ptr %l36, !tbaa !29
  %t60 = load i64, ptr %t59, !range !{i64 0, i64 18}
  %t62 = icmp eq i64 %t60, 2
  store i1 %t62, ptr %l37, !tbaa !21
  br label %bb23
bb23:
  %t63 = load i1, ptr %l37, !tbaa !21
  br i1 %t63, label %bb24, label %bb25
bb24:
  %t64 = load ptr, ptr %l5, !tbaa !29
  %t66 = getelementptr { i64, [5 x i64] }, ptr %t64, i32 0, i32 1
  %t67 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t66, i32 0, i32 2
  %t68 = load ptr, ptr %t67
  store ptr %t68, ptr %l6, !tbaa !29
  br label %bb34
bb25:
  %t70 = load ptr, ptr %l5, !tbaa !29
  store ptr %t70, ptr %l42, !tbaa !29
  store i1 false, ptr %l43, !tbaa !21
  %t71 = load ptr, ptr %l42, !tbaa !29
  %t72 = icmp ne ptr %t71, null
  br i1 %t72, label %bb26, label %bb27
bb26:
  %t74 = load ptr, ptr %l42, !tbaa !29
  %t75 = load i64, ptr %t74, !range !{i64 0, i64 18}
  %t77 = icmp eq i64 %t75, 4
  store i1 %t77, ptr %l43, !tbaa !21
  br label %bb27
bb27:
  %t78 = load i1, ptr %l43, !tbaa !21
  br i1 %t78, label %bb28, label %bb29
bb28:
  %t79 = load ptr, ptr %l5, !tbaa !29
  %t81 = getelementptr { i64, [5 x i64] }, ptr %t79, i32 0, i32 1
  %t82 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t81, i32 0, i32 2
  %t83 = load ptr, ptr %t82
  store ptr %t83, ptr %l6, !tbaa !29
  br label %bb34
bb29:
  %t85 = load ptr, ptr %l5, !tbaa !29
  store ptr %t85, ptr %l48, !tbaa !29
  store i1 false, ptr %l49, !tbaa !21
  %t86 = load ptr, ptr %l48, !tbaa !29
  %t87 = icmp ne ptr %t86, null
  br i1 %t87, label %bb30, label %bb31
bb30:
  %t89 = load ptr, ptr %l48, !tbaa !29
  %t90 = load i64, ptr %t89, !range !{i64 0, i64 18}
  %t92 = icmp eq i64 %t90, 3
  store i1 %t92, ptr %l49, !tbaa !21
  br label %bb31
bb31:
  %t93 = load i1, ptr %l49, !tbaa !21
  br i1 %t93, label %bb32, label %bb33
bb32:
  %t94 = load ptr, ptr %l5, !tbaa !29
  %t96 = getelementptr { i64, [5 x i64] }, ptr %t94, i32 0, i32 1
  %t97 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t96, i32 0, i32 2
  %t98 = load ptr, ptr %t97
  store ptr %t98, ptr %l6, !tbaa !29
  br label %bb34
bb33:
  br label %bb36
bb34:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t101 = load i64, ptr %l1, !tbaa !24
  %t102 = load ptr, ptr %l6, !tbaa !29
  %t103 = load ptr, ptr %l3, !tbaa !29
  %t108 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etailGiven(ptr %v0, ptr %s0, ptr %v2, ptr %t100, i64 %t101, ptr %t102, ptr %t103)
  store i1 %t108, ptr %l58
  br label %bb35
bb35:
  %t109 = load i1, ptr %l58, !tbaa !21
  %t110 = xor i1 %t109, true
  store i1 %t110, ptr %l27, !tbaa !21
  br label %bb48
bb36:
  %t112 = load ptr, ptr %l5, !tbaa !29
  store ptr %t112, ptr %l60, !tbaa !29
  store i1 false, ptr %l61, !tbaa !21
  %t113 = load ptr, ptr %l60, !tbaa !29
  %t114 = icmp ne ptr %t113, null
  br i1 %t114, label %bb37, label %bb38
bb37:
  %t116 = load ptr, ptr %l60, !tbaa !29
  %t117 = load i64, ptr %t116, !range !{i64 0, i64 18}
  %t119 = icmp eq i64 %t117, 10
  store i1 %t119, ptr %l61, !tbaa !21
  br label %bb38
bb38:
  %t120 = load i1, ptr %l61, !tbaa !21
  br i1 %t120, label %bb39, label %bb40
bb39:
  %t121 = load ptr, ptr %l5, !tbaa !29
  %t123 = getelementptr { i64, [5 x i64] }, ptr %t121, i32 0, i32 1
  %t124 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t123, i32 0, i32 2
  %t125 = load ptr, ptr %t124
  store ptr %t125, ptr %l7, !tbaa !29
  br label %bb41
bb40:
  br label %bb43
bb41:
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t128 = load i64, ptr %l1, !tbaa !24
  %t129 = load ptr, ptr %l7, !tbaa !29
  %t131 = getelementptr %"compiler/typed:Slice", ptr %t129, i32 0, i32 0
  %t132 = load ptr, ptr %t131, !tbaa !29
  %t133 = load ptr, ptr %l3, !tbaa !29
  %t138 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etailGiven(ptr %v0, ptr %s0, ptr %v2, ptr %t127, i64 %t128, ptr %t132, ptr %t133)
  store i1 %t138, ptr %l71
  br label %bb42
bb42:
  %t139 = load i1, ptr %l71, !tbaa !21
  %t140 = xor i1 %t139, true
  store i1 %t140, ptr %l27, !tbaa !21
  br label %bb48
bb43:
  br i1 true, label %bb44, label %bb45
bb44:
  br label %bb46
bb45:
  br label %bb47
bb46:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb48
bb47:
  call void @__olang_check_failed(ptr @olang_loc_95037a04ed425830_2b58d7c0cb40fd64)
  unreachable
bb48:
  call void @__olang_scope_close(ptr %s0)
  %t142 = load i1, ptr %l27, !tbaa !21
  store i1 %t142, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etransientNow(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca ptr
  %l17 = alloca i64
  %l18 = alloca %"compiler/scope:rel"
  %l19 = alloca { i64, [2 x i64] }
  %l20 = alloca i64
  %l21 = alloca { i64, [2 x i64] }
  %l22 = alloca i64
  %l23 = alloca i32
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i64
  %l36 = alloca i64
  %l37 = alloca i64
  %l41 = alloca ptr
  %l50 = alloca i1
  %l54 = alloca i1
  %l56 = alloca i1
  %l60 = alloca ptr
  %l64 = alloca i1
  %l65 = alloca i64
  %l68 = alloca i64
  %l78 = alloca i64
  %l81 = alloca i64
  %l88 = alloca { i64, ptr }
  %l94 = alloca i64
  %l97 = alloca i64
  %l128 = alloca ptr
  %l131 = alloca i64
  %l133 = alloca i64
  %l138 = alloca %"compiler/scope:rel"
  %l141 = alloca i1
  %l145 = alloca i1
  %l148 = alloca i1
  %l175 = alloca i32
  %l180 = alloca i32
  %l183 = alloca i64
  %l186 = alloca ptr
  %l191 = alloca i32
  %l192 = alloca { i64, ptr }
  %l198 = alloca i64
  %l201 = alloca i64
  %l224 = alloca i64
  %l232 = alloca i64
  %l236 = alloca i64
  %l239 = alloca i64
  %l260 = alloca i1
  %l266 = alloca i64
  %l269 = alloca i1
  %l273 = alloca i1
  %l282 = alloca i32
  %l284 = alloca ptr
  %l288 = alloca %"compiler/typed:Local"
  %l290 = alloca i1
  %l297 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  store ptr %t7, ptr %l41
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l41, !tbaa !29
  store ptr %t8, ptr %l3, !tbaa !29
  %t9 = load ptr, ptr %l3, !tbaa !29
  %t11 = getelementptr %"compiler/typed:Body", ptr %t9, i32 0, i32 1
  %t12 = load { i64, [2 x i64] }, ptr %t11
  %t16 = extractvalue { i64, [2 x i64] } %t12, 0
  %t17 = icmp eq i64 %t16, 0
  br i1 %t17, label %bb2, label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb10
bb5:
  br i1 true, label %bb6, label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb9
bb8:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb9:
  call void @__olang_check_failed(ptr @olang_loc_a99f843f7bf434a0_94e1f929e5b915f4)
  unreachable
bb10:
  %t20 = load ptr, ptr %l3, !tbaa !29
  %t22 = getelementptr %"compiler/typed:Body", ptr %t20, i32 0, i32 11
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t25 = icmp eq ptr %t23, null
  br i1 %t25, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l50, !tbaa !21
  br label %bb14
bb12:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/scope:Scoper", ptr %t27, i32 0, i32 12
  %t30 = load i64, ptr %l1, !tbaa !24
  %t33 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t29, i64 %t30)
  store i1 %t33, ptr %l54
  br label %bb13
bb13:
  %t34 = load i1, ptr %l54, !tbaa !21
  %t35 = xor i1 %t34, true
  store i1 %t35, ptr %l50, !tbaa !21
  br label %bb14
bb14:
  %t37 = load i1, ptr %l50, !tbaa !21
  br i1 %t37, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l56, !tbaa !21
  br label %bb18
bb16:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/scope:Scoper", ptr %t38, i32 0, i32 6
  %t41 = load i64, ptr %l1, !tbaa !24
  %t44 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t40, i64 %t41)
  store ptr %t44, ptr %l60
  br label %bb17
bb17:
  %t45 = load ptr, ptr %l60, !tbaa !29
  %t47 = getelementptr %"compiler/scope:summary", ptr %t45, i32 0, i32 19
  %t48 = load i1, ptr %t47, !tbaa !21
  %t50 = xor i1 %t48, true
  store i1 %t50, ptr %l56, !tbaa !21
  br label %bb18
bb18:
  %t52 = load i1, ptr %l56, !tbaa !21
  br i1 %t52, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l64, !tbaa !21
  br label %bb22
bb20:
  %t53 = load i64, ptr %l2, !tbaa !24
  store i64 %t53, ptr %l65, !tbaa !24
  %t54 = load ptr, ptr %l3, !tbaa !29
  %t56 = getelementptr %"compiler/typed:Body", ptr %t54, i32 0, i32 5
  %t58 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t56)
  store i64 %t58, ptr %l68
  br label %bb21
bb21:
  %t59 = load i64, ptr %l65, !tbaa !24
  %t60 = load i64, ptr %l68, !tbaa !24
  %t61 = icmp sge i64 %t59, %t60
  store i1 %t61, ptr %l64, !tbaa !21
  br label %bb22
bb22:
  %t63 = load i1, ptr %l64, !tbaa !21
  br i1 %t63, label %bb23, label %bb24
bb23:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb24:
  br label %bb25
bb25:
  %t65 = load ptr, ptr %l3, !tbaa !29
  %t67 = getelementptr %"compiler/typed:Body", ptr %t65, i32 0, i32 2
  %t68 = load i32, ptr %t67, !tbaa !23
  store i32 %t68, ptr %l5, !tbaa !23
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/scope:Scoper", ptr %t70, i32 0, i32 0
  %t73 = load ptr, ptr %t72, !tbaa !29
  %t75 = getelementptr %"compiler/generic:Program", ptr %t73, i32 0, i32 2
  %t76 = load i32, ptr %l5, !tbaa !23
  %t77 = load i64, ptr %l2, !tbaa !24
  %t81 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShareOf(ptr %v0, ptr %t75, i32 %t76, i64 %t77)
  store i64 %t81, ptr %l78
  br label %bb26
bb26:
  %t82 = load i64, ptr %l78, !tbaa !24
  store i64 %t82, ptr %l6, !tbaa !24
  %t83 = load i64, ptr %l6, !tbaa !24
  %t85 = icmp sge i64 %t83, 0
  br i1 %t85, label %bb27, label %bb28
bb27:
  %t87 = load i64, ptr %l6, !tbaa !24
  store i64 %t87, ptr %l81, !tbaa !24
  br label %bb29
bb28:
  %t89 = load i64, ptr %l2, !tbaa !24
  store i64 %t89, ptr %l81, !tbaa !24
  br label %bb29
bb29:
  %t91 = load i64, ptr %l81, !tbaa !24
  store i64 %t91, ptr %l7, !tbaa !24
  store i64 -1, ptr %l8, !tbaa !24
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/scope:Scoper", ptr %t92, i32 0, i32 0
  %t95 = load ptr, ptr %t94, !tbaa !29
  %t97 = getelementptr %"compiler/generic:Program", ptr %t95, i32 0, i32 2
  %t98 = load i32, ptr %l5, !tbaa !23
  %t101 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopeVarsOf(ptr %v0, ptr %s0, ptr %t97, i32 %t98)
  store { i64, ptr } %t101, ptr %l88
  br label %bb30
bb30:
  %t102 = load { i64, ptr }, ptr %l88, !tbaa !27
  store { i64, ptr } %t102, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t103 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t105 = extractvalue { i64, ptr } %t103, 0
  store i64 %t105, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t107 = load i64, ptr %l11, !tbaa !24
  %t108 = load i64, ptr %l10, !tbaa !24
  %t111 = icmp sgt i64 %t107, %t108
  br i1 %t111, label %bb31, label %bb32
bb31:
  %t113 = load i64, ptr %l12, !tbaa !24
  %t115 = icmp sgt i64 %t113, 0
  br i1 %t115, label %bb33, label %bb34
bb32:
  store i64 0, ptr %l94, !tbaa !24
  br label %bb36
bb33:
  %t117 = load i64, ptr %l11, !tbaa !24
  %t118 = load i64, ptr %l10, !tbaa !24
  %t121 = sub i64 %t117, %t118
  %t122 = load i64, ptr %l12, !tbaa !24
  %t125 = add i64 %t121, %t122
  %t127 = sub i64 %t125, 1
  %t128 = load i64, ptr %l12, !tbaa !24
  %t131 = sdiv i64 %t127, %t128
  store i64 %t131, ptr %l97, !tbaa !24
  br label %bb35
bb34:
  store i64 0, ptr %l97, !tbaa !24
  br label %bb35
bb35:
  %t133 = load i64, ptr %l97, !tbaa !24
  store i64 %t133, ptr %l94, !tbaa !24
  br label %bb36
bb36:
  %t134 = load i64, ptr %l94, !tbaa !24
  store i64 %t134, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb37
bb37:
  %t135 = load i64, ptr %l14, !tbaa !24
  %t136 = load i64, ptr %l13, !tbaa !24
  %t139 = icmp slt i64 %t135, %t136
  %t141 = xor i1 %t139, true
  br i1 %t141, label %bb38, label %bb39
bb38:
  br label %bb45
bb39:
  br label %bb40
bb40:
  %t143 = load i64, ptr %l10, !tbaa !24
  %t144 = load i64, ptr %l14, !tbaa !24
  %t145 = load i64, ptr %l12, !tbaa !24
  %t148 = mul i64 %t144, %t145
  %t151 = add i64 %t143, %t148
  store i64 %t151, ptr %l15, !tbaa !24
  %t153 = load i64, ptr %l15, !tbaa !24
  %t155 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t156 = load ptr, ptr %t155, !tbaa !27
  %t157 = getelementptr i64, ptr %t156, i64 %t153
  %t158 = load i64, ptr %t157, !tbaa !34
  %t159 = load i64, ptr %l7, !tbaa !24
  %t162 = icmp eq i64 %t158, %t159
  br i1 %t162, label %bb41, label %bb42
bb41:
  %t164 = load i64, ptr %l15, !tbaa !24
  store i64 %t164, ptr %l8, !tbaa !24
  br label %bb43
bb42:
  br label %bb43
bb43:
  br label %bb44
bb44:
  %t166 = load i64, ptr %l14, !tbaa !24
  %t168 = add i64 %t166, 1
  store i64 %t168, ptr %l14, !tbaa !24
  br label %bb37
bb45:
  %t170 = load i64, ptr %l8, !tbaa !24
  %t172 = icmp slt i64 %t170, 0
  br i1 %t172, label %bb46, label %bb47
bb46:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb47:
  br label %bb48
bb48:
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t177 = getelementptr %"compiler/scope:Scoper", ptr %t175, i32 0, i32 6
  %t178 = load i64, ptr %l1, !tbaa !24
  %t181 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t177, i64 %t178)
  store ptr %t181, ptr %l128
  br label %bb49
bb49:
  %t182 = load ptr, ptr %l128, !tbaa !29
  %t184 = getelementptr %"compiler/scope:summary", ptr %t182, i32 0, i32 0
  store ptr %t184, ptr %l16, !tbaa !29
  store i64 0, ptr %l17, !tbaa !24
  br label %bb50
bb50:
  %t186 = load i64, ptr %l17, !tbaa !24
  store i64 %t186, ptr %l131, !tbaa !24
  %t187 = load ptr, ptr %l16, !tbaa !29
  %t189 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eLen_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t187)
  store i64 %t189, ptr %l133
  br label %bb51
bb51:
  %t190 = load i64, ptr %l131, !tbaa !24
  %t191 = load i64, ptr %l133, !tbaa !24
  %t192 = icmp slt i64 %t190, %t191
  %t194 = xor i1 %t192, true
  br i1 %t194, label %bb52, label %bb53
bb52:
  br label %bb93
bb53:
  br label %bb54
bb54:
  %t196 = load ptr, ptr %l16, !tbaa !29
  %t197 = load i64, ptr %l17, !tbaa !24
  %t200 = call %"compiler/scope:rel" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eAt_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t196, i64 %t197)
  store %"compiler/scope:rel" %t200, ptr %l138
  br label %bb55
bb55:
  %t201 = load %"compiler/scope:rel", ptr %l138
  store %"compiler/scope:rel" %t201, ptr %l18
  %t202 = getelementptr %"compiler/scope:rel", ptr %l18, i32 0, i32 0
  %t203 = load { i64, [2 x i64] }, ptr %t202
  %t205 = extractvalue { i64, [2 x i64] } %t203, 0
  %t206 = icmp eq i64 %t205, 2
  br i1 %t206, label %bb56, label %bb57
bb56:
  %t208 = getelementptr %"compiler/scope:rel", ptr %l18, i32 0, i32 0
  %t209 = getelementptr { i64, [2 x i64] }, ptr %t208, i32 0, i32 1
  %t210 = getelementptr { i64 }, ptr %t209, i32 0, i32 0
  %t211 = load i64, ptr %t210
  %t212 = load i64, ptr %l8, !tbaa !24
  %t215 = icmp eq i64 %t211, %t212
  store i1 %t215, ptr %l141, !tbaa !21
  br label %bb58
bb57:
  store i1 false, ptr %l141, !tbaa !21
  br label %bb58
bb58:
  %t217 = load i1, ptr %l141, !tbaa !21
  br i1 %t217, label %bb59, label %bb60
bb59:
  store i1 true, ptr %l145, !tbaa !21
  br label %bb64
bb60:
  %t218 = getelementptr %"compiler/scope:rel", ptr %l18, i32 0, i32 1
  %t219 = load { i64, [2 x i64] }, ptr %t218
  %t221 = extractvalue { i64, [2 x i64] } %t219, 0
  %t222 = icmp eq i64 %t221, 2
  br i1 %t222, label %bb61, label %bb62
bb61:
  %t224 = getelementptr %"compiler/scope:rel", ptr %l18, i32 0, i32 1
  %t225 = getelementptr { i64, [2 x i64] }, ptr %t224, i32 0, i32 1
  %t226 = getelementptr { i64 }, ptr %t225, i32 0, i32 0
  %t227 = load i64, ptr %t226
  %t228 = load i64, ptr %l8, !tbaa !24
  %t231 = icmp eq i64 %t227, %t228
  store i1 %t231, ptr %l148, !tbaa !21
  br label %bb63
bb62:
  store i1 false, ptr %l148, !tbaa !21
  br label %bb63
bb63:
  %t233 = load i1, ptr %l148, !tbaa !21
  store i1 %t233, ptr %l145, !tbaa !21
  br label %bb64
bb64:
  %t234 = load i1, ptr %l145, !tbaa !21
  br i1 %t234, label %bb65, label %bb66
bb65:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb66:
  br label %bb67
bb67:
  %t236 = getelementptr %"compiler/scope:rel", ptr %l18, i32 0, i32 0
  %t237 = load { i64, [2 x i64] }, ptr %t236
  store { i64, [2 x i64] } %t237, ptr %l19
  %t239 = load { i64, [2 x i64] }, ptr %l19
  %t241 = extractvalue { i64, [2 x i64] } %t239, 0
  %t242 = icmp eq i64 %t241, 4
  br i1 %t242, label %bb68, label %bb69
bb68:
  %t244 = getelementptr { i64, [2 x i64] }, ptr %l19, i32 0, i32 1
  %t245 = getelementptr { i64, i64 }, ptr %t244, i32 0, i32 0
  %t246 = load i64, ptr %t245
  store i64 %t246, ptr %l20, !tbaa !24
  br label %bb70
bb69:
  br label %bb74
bb70:
  %t248 = load i64, ptr %l20, !tbaa !24
  %t249 = load i64, ptr %l2, !tbaa !24
  %t252 = icmp eq i64 %t248, %t249
  br i1 %t252, label %bb71, label %bb72
bb71:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb72:
  br label %bb73
bb73:
  br label %bb79
bb74:
  br i1 true, label %bb75, label %bb76
bb75:
  br label %bb77
bb76:
  br label %bb78
bb77:
  br label %bb79
bb78:
  call void @__olang_check_failed(ptr @olang_loc_4aed99841ab3b8b1_8d3edbdcac983025)
  unreachable
bb79:
  %t255 = getelementptr %"compiler/scope:rel", ptr %l18, i32 0, i32 1
  %t256 = load { i64, [2 x i64] }, ptr %t255
  store { i64, [2 x i64] } %t256, ptr %l21
  %t258 = load { i64, [2 x i64] }, ptr %l21
  %t260 = extractvalue { i64, [2 x i64] } %t258, 0
  %t261 = icmp eq i64 %t260, 4
  br i1 %t261, label %bb80, label %bb81
bb80:
  %t263 = getelementptr { i64, [2 x i64] }, ptr %l21, i32 0, i32 1
  %t264 = getelementptr { i64, i64 }, ptr %t263, i32 0, i32 0
  %t265 = load i64, ptr %t264
  store i64 %t265, ptr %l22, !tbaa !24
  br label %bb82
bb81:
  br label %bb86
bb82:
  %t267 = load i64, ptr %l22, !tbaa !24
  %t268 = load i64, ptr %l2, !tbaa !24
  %t271 = icmp eq i64 %t267, %t268
  br i1 %t271, label %bb83, label %bb84
bb83:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
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
  call void @__olang_check_failed(ptr @olang_loc_c7fdd76f48c1d89a_56d68a9de61a546e)
  unreachable
bb91:
  br label %bb92
bb92:
  %t274 = load i64, ptr %l17, !tbaa !24
  %t276 = add i64 %t274, 1
  store i64 %t276, ptr %l17, !tbaa !24
  br label %bb50
bb93:
  %t278 = load ptr, ptr %l0, !tbaa !29
  %t280 = getelementptr %"compiler/scope:Scoper", ptr %t278, i32 0, i32 0
  %t281 = load ptr, ptr %t280, !tbaa !29
  %t283 = getelementptr %"compiler/generic:Program", ptr %t281, i32 0, i32 2
  %t284 = load i32, ptr %l5, !tbaa !23
  %t287 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t283, i32 %t284)
  store i32 %t287, ptr %l175
  br label %bb94
bb94:
  %t288 = load i32, ptr %l175, !tbaa !23
  store i32 %t288, ptr %l23, !tbaa !23
  %t289 = load ptr, ptr %l0, !tbaa !29
  %t291 = getelementptr %"compiler/scope:Scoper", ptr %t289, i32 0, i32 0
  %t292 = load ptr, ptr %t291, !tbaa !29
  %t294 = getelementptr %"compiler/generic:Program", ptr %t292, i32 0, i32 2
  %t295 = load i32, ptr %l23, !tbaa !23
  %t298 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t294, i32 %t295)
  store i32 %t298, ptr %l180
  br label %bb95
bb95:
  %t299 = load i32, ptr %l180, !range !{i32 0, i32 33}
  %t301 = trunc i64 22 to i32
  %t302 = icmp eq i32 %t299, %t301
  br i1 %t302, label %bb96, label %bb97
bb96:
  %t304 = load ptr, ptr %l0, !tbaa !29
  %t306 = getelementptr %"compiler/scope:Scoper", ptr %t304, i32 0, i32 0
  %t307 = load ptr, ptr %t306, !tbaa !29
  %t309 = getelementptr %"compiler/generic:Program", ptr %t307, i32 0, i32 2
  store ptr %t309, ptr %l186, !tbaa !29
  %t310 = load ptr, ptr %l0, !tbaa !29
  %t312 = getelementptr %"compiler/scope:Scoper", ptr %t310, i32 0, i32 0
  %t313 = load ptr, ptr %t312, !tbaa !29
  %t315 = getelementptr %"compiler/generic:Program", ptr %t313, i32 0, i32 2
  %t316 = load i32, ptr %l23, !tbaa !23
  %t319 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t315, i32 %t316)
  store i32 %t319, ptr %l191
  br label %bb98
bb97:
  store i64 1, ptr %l183, !tbaa !24
  br label %bb100
bb98:
  %t320 = load ptr, ptr %l186, !tbaa !29
  %t321 = load i32, ptr %l191, !tbaa !23
  %t322 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t320, i32 %t321)
  store { i64, ptr } %t322, ptr %l192
  br label %bb99
bb99:
  %t323 = load { i64, ptr }, ptr %l192, !tbaa !27
  %t324 = extractvalue { i64, ptr } %t323, 0
  store i64 %t324, ptr %l183, !tbaa !24
  br label %bb100
bb100:
  %t326 = load i64, ptr %l183, !tbaa !24
  store i64 0, ptr %l25, !tbaa !24
  store i64 %t326, ptr %l26, !tbaa !24
  store i64 1, ptr %l27, !tbaa !24
  %t329 = load i64, ptr %l26, !tbaa !24
  %t330 = load i64, ptr %l25, !tbaa !24
  %t333 = icmp sgt i64 %t329, %t330
  br i1 %t333, label %bb101, label %bb102
bb101:
  %t335 = load i64, ptr %l27, !tbaa !24
  %t337 = icmp sgt i64 %t335, 0
  br i1 %t337, label %bb103, label %bb104
bb102:
  store i64 0, ptr %l198, !tbaa !24
  br label %bb106
bb103:
  %t339 = load i64, ptr %l26, !tbaa !24
  %t340 = load i64, ptr %l25, !tbaa !24
  %t343 = sub i64 %t339, %t340
  %t344 = load i64, ptr %l27, !tbaa !24
  %t347 = add i64 %t343, %t344
  %t349 = sub i64 %t347, 1
  %t350 = load i64, ptr %l27, !tbaa !24
  %t353 = sdiv i64 %t349, %t350
  store i64 %t353, ptr %l201, !tbaa !24
  br label %bb105
bb104:
  store i64 0, ptr %l201, !tbaa !24
  br label %bb105
bb105:
  %t355 = load i64, ptr %l201, !tbaa !24
  store i64 %t355, ptr %l198, !tbaa !24
  br label %bb106
bb106:
  %t356 = load i64, ptr %l198, !tbaa !24
  store i64 %t356, ptr %l28, !tbaa !24
  store i64 0, ptr %l29, !tbaa !24
  br label %bb107
bb107:
  %t357 = load i64, ptr %l29, !tbaa !24
  %t358 = load i64, ptr %l28, !tbaa !24
  %t361 = icmp slt i64 %t357, %t358
  %t363 = xor i1 %t361, true
  br i1 %t363, label %bb108, label %bb109
bb108:
  br label %bb116
bb109:
  br label %bb110
bb110:
  %t365 = load i64, ptr %l25, !tbaa !24
  %t366 = load i64, ptr %l29, !tbaa !24
  %t367 = load i64, ptr %l27, !tbaa !24
  %t370 = mul i64 %t366, %t367
  %t373 = add i64 %t365, %t370
  %t375 = load ptr, ptr %l0, !tbaa !29
  %t377 = getelementptr %"compiler/scope:Scoper", ptr %t375, i32 0, i32 0
  %t378 = load ptr, ptr %t377, !tbaa !29
  %t380 = getelementptr %"compiler/generic:Program", ptr %t378, i32 0, i32 2
  %t381 = load i32, ptr %l5, !tbaa !23
  %t386 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResultFrom(ptr %v0, ptr %t380, i32 %t381, i64 %t373)
  store i64 %t386, ptr %l224
  br label %bb111
bb111:
  %t387 = load i64, ptr %l7, !tbaa !24
  %t388 = load i64, ptr %l224, !tbaa !24
  %t390 = icmp eq i64 %t388, %t387
  br i1 %t390, label %bb112, label %bb113
bb112:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb113:
  br label %bb114
bb114:
  br label %bb115
bb115:
  %t393 = load i64, ptr %l29, !tbaa !24
  %t395 = add i64 %t393, 1
  store i64 %t395, ptr %l29, !tbaa !24
  br label %bb107
bb116:
  store i64 0, ptr %l31, !tbaa !24
  %t397 = load ptr, ptr %l3, !tbaa !29
  %t399 = getelementptr %"compiler/typed:Body", ptr %t397, i32 0, i32 5
  %t401 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t399)
  store i64 %t401, ptr %l232
  br label %bb117
bb117:
  %t402 = load i64, ptr %l232, !tbaa !24
  store i64 %t402, ptr %l32, !tbaa !24
  store i64 1, ptr %l33, !tbaa !24
  %t403 = load i64, ptr %l32, !tbaa !24
  %t404 = load i64, ptr %l31, !tbaa !24
  %t407 = icmp sgt i64 %t403, %t404
  br i1 %t407, label %bb118, label %bb119
bb118:
  %t409 = load i64, ptr %l33, !tbaa !24
  %t411 = icmp sgt i64 %t409, 0
  br i1 %t411, label %bb120, label %bb121
bb119:
  store i64 0, ptr %l236, !tbaa !24
  br label %bb123
bb120:
  %t413 = load i64, ptr %l32, !tbaa !24
  %t414 = load i64, ptr %l31, !tbaa !24
  %t417 = sub i64 %t413, %t414
  %t418 = load i64, ptr %l33, !tbaa !24
  %t421 = add i64 %t417, %t418
  %t423 = sub i64 %t421, 1
  %t424 = load i64, ptr %l33, !tbaa !24
  %t427 = sdiv i64 %t423, %t424
  store i64 %t427, ptr %l239, !tbaa !24
  br label %bb122
bb121:
  store i64 0, ptr %l239, !tbaa !24
  br label %bb122
bb122:
  %t429 = load i64, ptr %l239, !tbaa !24
  store i64 %t429, ptr %l236, !tbaa !24
  br label %bb123
bb123:
  %t430 = load i64, ptr %l236, !tbaa !24
  store i64 %t430, ptr %l34, !tbaa !24
  store i64 0, ptr %l35, !tbaa !24
  br label %bb124
bb124:
  %t431 = load i64, ptr %l35, !tbaa !24
  %t432 = load i64, ptr %l34, !tbaa !24
  %t435 = icmp slt i64 %t431, %t432
  %t437 = xor i1 %t435, true
  br i1 %t437, label %bb125, label %bb126
bb125:
  br label %bb142
bb126:
  br label %bb127
bb127:
  %t439 = load i64, ptr %l31, !tbaa !24
  %t440 = load i64, ptr %l35, !tbaa !24
  %t441 = load i64, ptr %l33, !tbaa !24
  %t444 = mul i64 %t440, %t441
  %t447 = add i64 %t439, %t444
  store i64 %t447, ptr %l36, !tbaa !24
  %t449 = load i64, ptr %l36, !tbaa !24
  %t450 = load i64, ptr %l2, !tbaa !24
  %t453 = icmp ne i64 %t449, %t450
  br i1 %t453, label %bb128, label %bb129
bb128:
  %t455 = load ptr, ptr %l0, !tbaa !29
  %t457 = getelementptr %"compiler/scope:Scoper", ptr %t455, i32 0, i32 0
  %t458 = load ptr, ptr %t457, !tbaa !29
  %t460 = getelementptr %"compiler/generic:Program", ptr %t458, i32 0, i32 2
  %t461 = load i32, ptr %l5, !tbaa !23
  %t462 = load i64, ptr %l36, !tbaa !24
  %t466 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShareOf(ptr %v0, ptr %t460, i32 %t461, i64 %t462)
  store i64 %t466, ptr %l266
  br label %bb130
bb129:
  store i1 false, ptr %l260, !tbaa !21
  br label %bb137
bb130:
  %t467 = load i64, ptr %l7, !tbaa !24
  %t468 = load i64, ptr %l266, !tbaa !24
  %t470 = icmp eq i64 %t468, %t467
  br i1 %t470, label %bb131, label %bb132
bb131:
  store i1 true, ptr %l269, !tbaa !21
  br label %bb136
bb132:
  %t472 = load i64, ptr %l36, !tbaa !24
  %t473 = load i64, ptr %l7, !tbaa !24
  %t476 = icmp eq i64 %t472, %t473
  br i1 %t476, label %bb133, label %bb134
bb133:
  %t478 = load i64, ptr %l6, !tbaa !24
  %t480 = icmp sge i64 %t478, 0
  store i1 %t480, ptr %l273, !tbaa !21
  br label %bb135
bb134:
  store i1 false, ptr %l273, !tbaa !21
  br label %bb135
bb135:
  %t482 = load i1, ptr %l273, !tbaa !21
  store i1 %t482, ptr %l269, !tbaa !21
  br label %bb136
bb136:
  %t483 = load i1, ptr %l269, !tbaa !21
  store i1 %t483, ptr %l260, !tbaa !21
  br label %bb137
bb137:
  %t484 = load i1, ptr %l260, !tbaa !21
  br i1 %t484, label %bb138, label %bb139
bb138:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb139:
  br label %bb140
bb140:
  br label %bb141
bb141:
  %t486 = load i64, ptr %l35, !tbaa !24
  %t488 = add i64 %t486, 1
  store i64 %t488, ptr %l35, !tbaa !24
  br label %bb124
bb142:
  %t490 = load ptr, ptr %l3, !tbaa !29
  %t492 = getelementptr %"compiler/typed:Body", ptr %t490, i32 0, i32 5
  %t493 = load i64, ptr %l2, !tbaa !24
  %t496 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t492, i64 %t493)
  store i32 %t496, ptr %l282
  br label %bb143
bb143:
  %t497 = load i32, ptr %l282, !tbaa !23
  %t498 = sext i32 %t497 to i64
  store i64 %t498, ptr %l37, !tbaa !24
  %t500 = load ptr, ptr %l0, !tbaa !29
  store ptr %t500, ptr %l284, !tbaa !29
  %t501 = load ptr, ptr %l3, !tbaa !29
  %t503 = getelementptr %"compiler/typed:Body", ptr %t501, i32 0, i32 7
  %t504 = load i64, ptr %l37, !tbaa !24
  %t507 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t503, i64 %t504)
  store %"compiler/typed:Local" %t507, ptr %l288
  br label %bb144
bb144:
  %t508 = getelementptr %"compiler/typed:Local", ptr %l288, i32 0, i32 2
  %t509 = load i32, ptr %t508, !tbaa !23
  %t510 = load ptr, ptr %l284, !tbaa !29
  %t512 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFunc(ptr %v0, ptr %t510, i32 %t509)
  store i1 %t512, ptr %l290
  br label %bb145
bb145:
  %t513 = load i1, ptr %l290, !tbaa !21
  %t514 = xor i1 %t513, true
  br i1 %t514, label %bb146, label %bb147
bb146:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb147:
  br label %bb148
bb148:
  %t517 = load ptr, ptr %l0, !tbaa !29
  %t518 = load ptr, ptr %l3, !tbaa !29
  %t520 = getelementptr %"compiler/typed:Body", ptr %t518, i32 0, i32 11
  %t521 = load ptr, ptr %t520, !tbaa !29
  %t522 = load i64, ptr %l37, !tbaa !24
  %t526 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocBlock(ptr %v0, ptr %v0, ptr %t517, ptr %t521, i64 %t522, i1 true)
  store i1 %t526, ptr %l297
  br label %bb149
bb149:
  call void @__olang_scope_close(ptr %s0)
  %t527 = load i1, ptr %l297, !tbaa !21
  store i1 %t527, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etwinnable(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca { i64, [2 x i64] }
  %l4 = alloca i64
  %l8 = alloca ptr
  %l14 = alloca i1
  %l19 = alloca ptr
  %l23 = alloca i64
  %l24 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 1
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store ptr %t7, ptr %l8
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l8, !tbaa !29
  store ptr %t8, ptr %l2, !tbaa !29
  %t9 = load ptr, ptr %l2, !tbaa !29
  %t11 = getelementptr %"compiler/typed:Body", ptr %t9, i32 0, i32 14
  %t12 = load i1, ptr %t11, !tbaa !21
  br i1 %t12, label %bb2, label %bb3
bb2:
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t15 = load ptr, ptr %l2, !tbaa !29
  %t17 = getelementptr %"compiler/typed:Body", ptr %t15, i32 0, i32 1
  %t18 = load { i64, [2 x i64] }, ptr %t17
  store { i64, [2 x i64] } %t18, ptr %l3
  %t20 = load { i64, [2 x i64] }, ptr %l3
  %t22 = extractvalue { i64, [2 x i64] } %t20, 0
  %t23 = icmp eq i64 %t22, 0
  br i1 %t23, label %bb5, label %bb6
bb5:
  %t25 = getelementptr { i64, [2 x i64] }, ptr %l3, i32 0, i32 1
  %t26 = getelementptr { i64 }, ptr %t25, i32 0, i32 0
  %t27 = load i64, ptr %t26
  store i64 %t27, ptr %l4, !tbaa !24
  br label %bb7
bb6:
  br label %bb10
bb7:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/scope:Scoper", ptr %t29, i32 0, i32 0
  %t32 = load ptr, ptr %t31, !tbaa !29
  store ptr %t32, ptr %l19, !tbaa !29
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/scope:Scoper", ptr %t33, i32 0, i32 0
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t37 = load i64, ptr %l4, !tbaa !24
  %t40 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t36, i64 %t37)
  store i64 %t40, ptr %l23
  br label %bb8
bb8:
  %t41 = load ptr, ptr %l19, !tbaa !29
  %t42 = load i64, ptr %l23, !tbaa !24
  %t43 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsGenerator(ptr %v0, ptr %t41, i64 %t42)
  store i1 %t43, ptr %l24
  br label %bb9
bb9:
  %t44 = load i1, ptr %l24, !tbaa !21
  %t45 = xor i1 %t44, true
  store i1 %t45, ptr %l14, !tbaa !21
  br label %bb15
bb10:
  br i1 true, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb14
bb13:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb15
bb14:
  call void @__olang_check_failed(ptr @olang_loc_74f3c7016b68858a_f00072b6ce08b166)
  unreachable
bb15:
  %t47 = load i1, ptr %l14, !tbaa !21
  store i1 %t47, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueStmt(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i64 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca ptr
  %l17 = alloca ptr
  %l18 = alloca ptr
  %l19 = alloca ptr
  %l20 = alloca { i64, ptr }
  %l21 = alloca i64
  %l22 = alloca i64
  %l24 = alloca ptr
  %l25 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l26 = alloca { i64, ptr }
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca ptr
  %l30 = alloca { i64, ptr }
  %l31 = alloca i64
  %l32 = alloca i64
  %l34 = alloca ptr
  %l38 = alloca ptr
  %l39 = alloca i1
  %l49 = alloca i1
  %l50 = alloca ptr
  %l55 = alloca %"compiler/typed:Local"
  %l57 = alloca i1
  %l58 = alloca i1
  %l61 = alloca i1
  %l69 = alloca i1
  %l76 = alloca i1
  %l77 = alloca ptr
  %l78 = alloca i1
  %l93 = alloca i1
  %l94 = alloca i1
  %l101 = alloca i1
  %l107 = alloca i1
  %l108 = alloca i1
  %l115 = alloca i1
  %l116 = alloca ptr
  %l117 = alloca i1
  %l128 = alloca i1
  %l129 = alloca ptr
  %l130 = alloca i1
  %l142 = alloca i1
  %l143 = alloca i1
  %l151 = alloca i1
  %l152 = alloca i1
  %l159 = alloca i1
  %l160 = alloca ptr
  %l161 = alloca i1
  %l174 = alloca i1
  %l175 = alloca i1
  %l181 = alloca i1
  %l182 = alloca ptr
  %l183 = alloca i1
  %l188 = alloca ptr
  %l189 = alloca i1
  %l199 = alloca i1
  %l200 = alloca ptr
  %l201 = alloca i1
  %l214 = alloca i1
  %l215 = alloca i1
  %l221 = alloca i1
  %l222 = alloca ptr
  %l223 = alloca i1
  %l233 = alloca i1
  %l234 = alloca ptr
  %l235 = alloca i1
  %l246 = alloca i1
  %l247 = alloca ptr
  %l248 = alloca i1
  %l259 = alloca i1
  %l260 = alloca ptr
  %l261 = alloca i1
  %l273 = alloca i1
  %l284 = alloca { i64, ptr }
  %l293 = alloca i1
  %l299 = alloca ptr
  %l300 = alloca i1
  %l305 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l313 = alloca i1
  %l323 = alloca { i64, ptr }
  %l333 = alloca i1
  %l345 = alloca i1
  %l356 = alloca { i64, ptr }
  %l365 = alloca i1
  %l371 = alloca ptr
  %l372 = alloca i1
  %l383 = alloca i1
  %s20 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i64 %a3, ptr %l3
  store i64 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l2, !tbaa !29
  store ptr %t6, ptr %l38, !tbaa !29
  store i1 false, ptr %l39, !tbaa !21
  %t7 = load ptr, ptr %l38, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb4, label %bb5
bb4:
  %t10 = load ptr, ptr %l38, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 17}
  %t13 = icmp eq i64 %t11, 0
  store i1 %t13, ptr %l39, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l39, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  %t15 = load ptr, ptr %l2, !tbaa !29
  %t17 = getelementptr { i64, [3 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t17, i32 0, i32 1
  %t19 = load i32, ptr %t18
  store i32 %t19, ptr %l5, !tbaa !23
  %t21 = load ptr, ptr %l2, !tbaa !29
  %t23 = getelementptr { i64, [3 x i64] }, ptr %t21, i32 0, i32 1
  %t24 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t23, i32 0, i32 2
  %t25 = load ptr, ptr %t24
  store ptr %t25, ptr %l6, !tbaa !29
  br label %bb8
bb7:
  br label %bb23
bb8:
  %t27 = load i64, ptr %l4, !tbaa !24
  %t28 = load i64, ptr @G_2ecompiler_2fscope_2eUseOwn, !tbaa !24
  %t31 = icmp eq i64 %t27, %t28
  br i1 %t31, label %bb9, label %bb10
bb9:
  %t33 = load ptr, ptr %l0, !tbaa !29
  store ptr %t33, ptr %l50, !tbaa !29
  %t34 = load ptr, ptr %l1, !tbaa !29
  %t36 = getelementptr %"compiler/typed:Body", ptr %t34, i32 0, i32 7
  %t37 = load i32, ptr %l5, !tbaa !23
  %t39 = sext i32 %t37 to i64
  %t42 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v1, ptr %t36, i64 %t39)
  store %"compiler/typed:Local" %t42, ptr %l55
  br label %bb11
bb10:
  store i1 false, ptr %l49, !tbaa !21
  br label %bb13
bb11:
  %t43 = getelementptr %"compiler/typed:Local", ptr %l55, i32 0, i32 2
  %t44 = load i32, ptr %t43, !tbaa !23
  %t45 = load ptr, ptr %l50, !tbaa !29
  %t47 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t45, i32 %t44)
  store i1 %t47, ptr %l57
  br label %bb12
bb12:
  %t48 = load i1, ptr %l57, !tbaa !21
  store i1 %t48, ptr %l49, !tbaa !21
  br label %bb13
bb13:
  %t49 = load i1, ptr %l49, !tbaa !21
  br i1 %t49, label %bb14, label %bb15
bb14:
  %t50 = load ptr, ptr %l6, !tbaa !29
  %t51 = load i64, ptr %l3, !tbaa !24
  %t54 = call i1 @compiler_2fscope_2eownView(ptr %v2, ptr %t50, i64 %t51)
  store i1 %t54, ptr %l61
  br label %bb16
bb15:
  store i1 false, ptr %l58, !tbaa !21
  br label %bb17
bb16:
  %t55 = load i1, ptr %l61, !tbaa !21
  store i1 %t55, ptr %l58, !tbaa !21
  br label %bb17
bb17:
  %t56 = load i1, ptr %l58, !tbaa !21
  br i1 %t56, label %bb18, label %bb19
bb18:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load ptr, ptr %l1, !tbaa !29
  %t59 = load ptr, ptr %l1, !tbaa !29
  %t61 = getelementptr %"compiler/typed:Body", ptr %t59, i32 0, i32 11
  %t62 = load ptr, ptr %t61, !tbaa !29
  %t63 = load i32, ptr %l5, !tbaa !23
  %t65 = sext i32 %t63 to i64
  %t66 = load i64, ptr %l4, !tbaa !24
  %t72 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueBlock(ptr %v0, ptr %v1, ptr %v1, ptr %t57, ptr %t58, ptr %t62, i64 %t65, i64 %t66)
  store i1 %t72, ptr %l69
  br label %bb20
bb19:
  br label %bb21
bb20:
  %t73 = load i1, ptr %l69, !tbaa !21
  store i1 %t73, ptr %rv
  br label %ret
bb21:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load ptr, ptr %l1, !tbaa !29
  %t76 = load ptr, ptr %l6, !tbaa !29
  %t78 = load i64, ptr %l3, !tbaa !24
  %t79 = load i64, ptr %l4, !tbaa !24
  %t85 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t74, ptr %t75, ptr %t76, i64 %t78, i64 %t79)
  store i1 %t85, ptr %l76
  br label %bb22
bb22:
  %t86 = load i1, ptr %l76, !tbaa !21
  store i1 %t86, ptr %rv
  br label %ret
bb23:
  %t87 = load ptr, ptr %l2, !tbaa !29
  store ptr %t87, ptr %l77, !tbaa !29
  store i1 false, ptr %l78, !tbaa !21
  %t88 = load ptr, ptr %l77, !tbaa !29
  %t89 = icmp ne ptr %t88, null
  br i1 %t89, label %bb24, label %bb25
bb24:
  %t91 = load ptr, ptr %l77, !tbaa !29
  %t92 = load i64, ptr %t91, !range !{i64 0, i64 17}
  %t94 = icmp eq i64 %t92, 1
  store i1 %t94, ptr %l78, !tbaa !21
  br label %bb25
bb25:
  %t95 = load i1, ptr %l78, !tbaa !21
  br i1 %t95, label %bb26, label %bb27
bb26:
  %t96 = load ptr, ptr %l2, !tbaa !29
  %t98 = getelementptr { i64, [3 x i64] }, ptr %t96, i32 0, i32 1
  %t99 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t98, i32 0, i32 1
  %t100 = load ptr, ptr %t99
  store ptr %t100, ptr %l7, !tbaa !29
  %t102 = load ptr, ptr %l2, !tbaa !29
  %t104 = getelementptr { i64, [3 x i64] }, ptr %t102, i32 0, i32 1
  %t105 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t104, i32 0, i32 2
  %t106 = load ptr, ptr %t105
  store ptr %t106, ptr %l8, !tbaa !29
  br label %bb28
bb27:
  br label %bb42
bb28:
  %t108 = load i64, ptr %l4, !tbaa !24
  %t109 = load i64, ptr @G_2ecompiler_2fscope_2eUseOwn, !tbaa !24
  %t112 = icmp eq i64 %t108, %t109
  br i1 %t112, label %bb29, label %bb30
bb29:
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t115 = load ptr, ptr %l1, !tbaa !29
  %t116 = load ptr, ptr %l7, !tbaa !29
  %t117 = load i64, ptr %l3, !tbaa !24
  %t118 = load i64, ptr %l4, !tbaa !24
  %t124 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueTarget(ptr %v0, ptr %v1, ptr %v2, ptr %t114, ptr %t115, ptr %t116, i64 %t117, i64 %t118)
  store i1 %t124, ptr %l93
  br label %bb31
bb30:
  br label %bb36
bb31:
  %t125 = load i1, ptr %l93, !tbaa !21
  br i1 %t125, label %bb32, label %bb33
bb32:
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t127 = load ptr, ptr %l1, !tbaa !29
  %t128 = load ptr, ptr %l8, !tbaa !29
  %t130 = load i64, ptr %l3, !tbaa !24
  %t131 = load i64, ptr %l4, !tbaa !24
  %t137 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t126, ptr %t127, ptr %t128, i64 %t130, i64 %t131)
  store i1 %t137, ptr %l101
  br label %bb34
bb33:
  store i1 false, ptr %l94, !tbaa !21
  br label %bb35
bb34:
  %t138 = load i1, ptr %l101, !tbaa !21
  store i1 %t138, ptr %l94, !tbaa !21
  br label %bb35
bb35:
  %t139 = load i1, ptr %l94, !tbaa !21
  store i1 %t139, ptr %rv
  br label %ret
bb36:
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t141 = load ptr, ptr %l1, !tbaa !29
  %t142 = load ptr, ptr %l7, !tbaa !29
  %t143 = load i64, ptr %l3, !tbaa !24
  %t144 = load i64, ptr %l4, !tbaa !24
  %t150 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2euePlace(ptr %v0, ptr %v1, ptr %v2, ptr %t140, ptr %t141, ptr %t142, i64 %t143, i64 %t144)
  store i1 %t150, ptr %l107
  br label %bb37
bb37:
  %t151 = load i1, ptr %l107, !tbaa !21
  br i1 %t151, label %bb38, label %bb39
bb38:
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t153 = load ptr, ptr %l1, !tbaa !29
  %t154 = load ptr, ptr %l8, !tbaa !29
  %t156 = load i64, ptr %l3, !tbaa !24
  %t157 = load i64, ptr %l4, !tbaa !24
  %t163 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t152, ptr %t153, ptr %t154, i64 %t156, i64 %t157)
  store i1 %t163, ptr %l115
  br label %bb40
bb39:
  store i1 false, ptr %l108, !tbaa !21
  br label %bb41
bb40:
  %t164 = load i1, ptr %l115, !tbaa !21
  store i1 %t164, ptr %l108, !tbaa !21
  br label %bb41
bb41:
  %t165 = load i1, ptr %l108, !tbaa !21
  store i1 %t165, ptr %rv
  br label %ret
bb42:
  %t166 = load ptr, ptr %l2, !tbaa !29
  store ptr %t166, ptr %l116, !tbaa !29
  store i1 false, ptr %l117, !tbaa !21
  %t167 = load ptr, ptr %l116, !tbaa !29
  %t168 = icmp ne ptr %t167, null
  br i1 %t168, label %bb43, label %bb44
bb43:
  %t170 = load ptr, ptr %l116, !tbaa !29
  %t171 = load i64, ptr %t170, !range !{i64 0, i64 17}
  %t173 = icmp eq i64 %t171, 2
  store i1 %t173, ptr %l117, !tbaa !21
  br label %bb44
bb44:
  %t174 = load i1, ptr %l117, !tbaa !21
  br i1 %t174, label %bb45, label %bb46
bb45:
  %t175 = load ptr, ptr %l2, !tbaa !29
  %t177 = getelementptr { i64, [3 x i64] }, ptr %t175, i32 0, i32 1
  %t178 = getelementptr { %"compiler/source:Span", ptr }, ptr %t177, i32 0, i32 1
  %t179 = load ptr, ptr %t178
  store ptr %t179, ptr %l9, !tbaa !29
  br label %bb47
bb46:
  br label %bb49
bb47:
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t182 = load ptr, ptr %l1, !tbaa !29
  %t183 = load ptr, ptr %l9, !tbaa !29
  %t185 = load i64, ptr %l3, !tbaa !24
  %t186 = load i64, ptr %l4, !tbaa !24
  %t192 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t181, ptr %t182, ptr %t183, i64 %t185, i64 %t186)
  store i1 %t192, ptr %l128
  br label %bb48
bb48:
  %t193 = load i1, ptr %l128, !tbaa !21
  store i1 %t193, ptr %rv
  br label %ret
bb49:
  %t194 = load ptr, ptr %l2, !tbaa !29
  store ptr %t194, ptr %l129, !tbaa !29
  store i1 false, ptr %l130, !tbaa !21
  %t195 = load ptr, ptr %l129, !tbaa !29
  %t196 = icmp ne ptr %t195, null
  br i1 %t196, label %bb50, label %bb51
bb50:
  %t198 = load ptr, ptr %l129, !tbaa !29
  %t199 = load i64, ptr %t198, !range !{i64 0, i64 17}
  %t201 = icmp eq i64 %t199, 3
  store i1 %t201, ptr %l130, !tbaa !21
  br label %bb51
bb51:
  %t202 = load i1, ptr %l130, !tbaa !21
  br i1 %t202, label %bb52, label %bb53
bb52:
  %t203 = load ptr, ptr %l2, !tbaa !29
  %t205 = getelementptr { i64, [3 x i64] }, ptr %t203, i32 0, i32 1
  %t206 = getelementptr { %"compiler/source:Span", ptr }, ptr %t205, i32 0, i32 1
  %t207 = load ptr, ptr %t206
  store ptr %t207, ptr %l10, !tbaa !29
  br label %bb54
bb53:
  br label %bb64
bb54:
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t210 = load ptr, ptr %l1, !tbaa !29
  %t211 = load ptr, ptr %l10, !tbaa !29
  %t213 = getelementptr %"compiler/typed:If", ptr %t211, i32 0, i32 0
  %t214 = load ptr, ptr %t213, !tbaa !29
  %t216 = load i64, ptr %l3, !tbaa !24
  %t217 = load i64, ptr %l4, !tbaa !24
  %t223 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t209, ptr %t210, ptr %t214, i64 %t216, i64 %t217)
  store i1 %t223, ptr %l142
  br label %bb55
bb55:
  %t224 = load i1, ptr %l142, !tbaa !21
  br i1 %t224, label %bb56, label %bb57
bb56:
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t226 = load ptr, ptr %l1, !tbaa !29
  %t227 = load ptr, ptr %l10, !tbaa !29
  %t229 = getelementptr %"compiler/typed:If", ptr %t227, i32 0, i32 1
  %t230 = load ptr, ptr %t229, !tbaa !29
  %t232 = load i64, ptr %l3, !tbaa !24
  %t233 = load i64, ptr %l4, !tbaa !24
  %t239 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueBlock(ptr %v0, ptr %v1, ptr %v2, ptr %t225, ptr %t226, ptr %t230, i64 %t232, i64 %t233)
  store i1 %t239, ptr %l151
  br label %bb58
bb57:
  store i1 false, ptr %l143, !tbaa !21
  br label %bb59
bb58:
  %t240 = load i1, ptr %l151, !tbaa !21
  store i1 %t240, ptr %l143, !tbaa !21
  br label %bb59
bb59:
  %t241 = load i1, ptr %l143, !tbaa !21
  br i1 %t241, label %bb60, label %bb61
bb60:
  %t242 = load ptr, ptr %l0, !tbaa !29
  %t243 = load ptr, ptr %l1, !tbaa !29
  %t244 = load ptr, ptr %l10, !tbaa !29
  %t246 = getelementptr %"compiler/typed:If", ptr %t244, i32 0, i32 2
  %t247 = load ptr, ptr %t246, !tbaa !29
  %t248 = load i64, ptr %l3, !tbaa !24
  %t249 = load i64, ptr %l4, !tbaa !24
  %t255 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueBlock(ptr %v0, ptr %v1, ptr %v2, ptr %t242, ptr %t243, ptr %t247, i64 %t248, i64 %t249)
  store i1 %t255, ptr %l159
  br label %bb62
bb61:
  store i1 false, ptr %l152, !tbaa !21
  br label %bb63
bb62:
  %t256 = load i1, ptr %l159, !tbaa !21
  store i1 %t256, ptr %l152, !tbaa !21
  br label %bb63
bb63:
  %t257 = load i1, ptr %l152, !tbaa !21
  store i1 %t257, ptr %rv
  br label %ret
bb64:
  %t258 = load ptr, ptr %l2, !tbaa !29
  store ptr %t258, ptr %l160, !tbaa !29
  store i1 false, ptr %l161, !tbaa !21
  %t259 = load ptr, ptr %l160, !tbaa !29
  %t260 = icmp ne ptr %t259, null
  br i1 %t260, label %bb65, label %bb66
bb65:
  %t262 = load ptr, ptr %l160, !tbaa !29
  %t263 = load i64, ptr %t262, !range !{i64 0, i64 17}
  %t265 = icmp eq i64 %t263, 4
  store i1 %t265, ptr %l161, !tbaa !21
  br label %bb66
bb66:
  %t266 = load i1, ptr %l161, !tbaa !21
  br i1 %t266, label %bb67, label %bb68
bb67:
  %t267 = load ptr, ptr %l2, !tbaa !29
  %t269 = getelementptr { i64, [3 x i64] }, ptr %t267, i32 0, i32 1
  %t270 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t269, i32 0, i32 1
  %t271 = load ptr, ptr %t270
  store ptr %t271, ptr %l11, !tbaa !29
  %t273 = load ptr, ptr %l2, !tbaa !29
  %t275 = getelementptr { i64, [3 x i64] }, ptr %t273, i32 0, i32 1
  %t276 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t275, i32 0, i32 2
  %t277 = load ptr, ptr %t276
  store ptr %t277, ptr %l12, !tbaa !29
  br label %bb69
bb68:
  br label %bb75
bb69:
  %t279 = load ptr, ptr %l0, !tbaa !29
  %t280 = load ptr, ptr %l1, !tbaa !29
  %t281 = load ptr, ptr %l11, !tbaa !29
  %t283 = load i64, ptr %l3, !tbaa !24
  %t284 = load i64, ptr %l4, !tbaa !24
  %t290 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueBlock(ptr %v0, ptr %v1, ptr %v2, ptr %t279, ptr %t280, ptr %t281, i64 %t283, i64 %t284)
  store i1 %t290, ptr %l174
  br label %bb70
bb70:
  %t291 = load i1, ptr %l174, !tbaa !21
  br i1 %t291, label %bb71, label %bb72
bb71:
  %t292 = load ptr, ptr %l0, !tbaa !29
  %t293 = load ptr, ptr %l1, !tbaa !29
  %t294 = load ptr, ptr %l12, !tbaa !29
  %t295 = load i64, ptr %l3, !tbaa !24
  %t296 = load i64, ptr %l4, !tbaa !24
  %t302 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueBlock(ptr %v0, ptr %v1, ptr %v2, ptr %t292, ptr %t293, ptr %t294, i64 %t295, i64 %t296)
  store i1 %t302, ptr %l181
  br label %bb73
bb72:
  store i1 false, ptr %l175, !tbaa !21
  br label %bb74
bb73:
  %t303 = load i1, ptr %l181, !tbaa !21
  store i1 %t303, ptr %l175, !tbaa !21
  br label %bb74
bb74:
  %t304 = load i1, ptr %l175, !tbaa !21
  store i1 %t304, ptr %rv
  br label %ret
bb75:
  %t305 = load ptr, ptr %l2, !tbaa !29
  store ptr %t305, ptr %l182, !tbaa !29
  store i1 false, ptr %l183, !tbaa !21
  %t306 = load ptr, ptr %l182, !tbaa !29
  %t307 = icmp ne ptr %t306, null
  br i1 %t307, label %bb76, label %bb77
bb76:
  %t309 = load ptr, ptr %l182, !tbaa !29
  %t310 = load i64, ptr %t309, !range !{i64 0, i64 17}
  %t312 = icmp eq i64 %t310, 6
  store i1 %t312, ptr %l183, !tbaa !21
  br label %bb77
bb77:
  %t313 = load i1, ptr %l183, !tbaa !21
  br i1 %t313, label %bb78, label %bb79
bb78:
  %t314 = load ptr, ptr %l2, !tbaa !29
  %t316 = getelementptr { i64, [3 x i64] }, ptr %t314, i32 0, i32 1
  %t317 = getelementptr { %"compiler/source:Span", ptr }, ptr %t316, i32 0, i32 1
  %t318 = load ptr, ptr %t317
  store ptr %t318, ptr %l13, !tbaa !29
  br label %bb84
bb79:
  %t320 = load ptr, ptr %l2, !tbaa !29
  store ptr %t320, ptr %l188, !tbaa !29
  store i1 false, ptr %l189, !tbaa !21
  %t321 = load ptr, ptr %l188, !tbaa !29
  %t322 = icmp ne ptr %t321, null
  br i1 %t322, label %bb80, label %bb81
bb80:
  %t324 = load ptr, ptr %l188, !tbaa !29
  %t325 = load i64, ptr %t324, !range !{i64 0, i64 17}
  %t327 = icmp eq i64 %t325, 16
  store i1 %t327, ptr %l189, !tbaa !21
  br label %bb81
bb81:
  %t328 = load i1, ptr %l189, !tbaa !21
  br i1 %t328, label %bb82, label %bb83
bb82:
  %t329 = load ptr, ptr %l2, !tbaa !29
  %t331 = getelementptr { i64, [3 x i64] }, ptr %t329, i32 0, i32 1
  %t332 = getelementptr { %"compiler/source:Span", ptr }, ptr %t331, i32 0, i32 1
  %t333 = load ptr, ptr %t332
  store ptr %t333, ptr %l13, !tbaa !29
  br label %bb84
bb83:
  br label %bb86
bb84:
  %t335 = load ptr, ptr %l0, !tbaa !29
  %t336 = load ptr, ptr %l1, !tbaa !29
  %t337 = load ptr, ptr %l13, !tbaa !29
  %t338 = load i64, ptr %l3, !tbaa !24
  %t339 = load i64, ptr %l4, !tbaa !24
  %t345 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t335, ptr %t336, ptr %t337, i64 %t338, i64 %t339)
  store i1 %t345, ptr %l199
  br label %bb85
bb85:
  %t346 = load i1, ptr %l199, !tbaa !21
  store i1 %t346, ptr %rv
  br label %ret
bb86:
  %t347 = load ptr, ptr %l2, !tbaa !29
  store ptr %t347, ptr %l200, !tbaa !29
  store i1 false, ptr %l201, !tbaa !21
  %t348 = load ptr, ptr %l200, !tbaa !29
  %t349 = icmp ne ptr %t348, null
  br i1 %t349, label %bb87, label %bb88
bb87:
  %t351 = load ptr, ptr %l200, !tbaa !29
  %t352 = load i64, ptr %t351, !range !{i64 0, i64 17}
  %t354 = icmp eq i64 %t352, 10
  store i1 %t354, ptr %l201, !tbaa !21
  br label %bb88
bb88:
  %t355 = load i1, ptr %l201, !tbaa !21
  br i1 %t355, label %bb89, label %bb90
bb89:
  %t356 = load ptr, ptr %l2, !tbaa !29
  %t358 = getelementptr { i64, [3 x i64] }, ptr %t356, i32 0, i32 1
  %t359 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t358, i32 0, i32 1
  %t360 = load ptr, ptr %t359
  store ptr %t360, ptr %l14, !tbaa !29
  %t362 = load ptr, ptr %l2, !tbaa !29
  %t364 = getelementptr { i64, [3 x i64] }, ptr %t362, i32 0, i32 1
  %t365 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t364, i32 0, i32 2
  %t366 = load ptr, ptr %t365
  store ptr %t366, ptr %l15, !tbaa !29
  br label %bb91
bb90:
  br label %bb97
bb91:
  %t368 = load ptr, ptr %l0, !tbaa !29
  %t369 = load ptr, ptr %l1, !tbaa !29
  %t370 = load ptr, ptr %l14, !tbaa !29
  %t372 = load i64, ptr %l3, !tbaa !24
  %t373 = load i64, ptr %l4, !tbaa !24
  %t379 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t368, ptr %t369, ptr %t370, i64 %t372, i64 %t373)
  store i1 %t379, ptr %l214
  br label %bb92
bb92:
  %t380 = load i1, ptr %l214, !tbaa !21
  br i1 %t380, label %bb93, label %bb94
bb93:
  %t381 = load ptr, ptr %l0, !tbaa !29
  %t382 = load ptr, ptr %l1, !tbaa !29
  %t383 = load ptr, ptr %l15, !tbaa !29
  %t384 = load i64, ptr %l3, !tbaa !24
  %t385 = load i64, ptr %l4, !tbaa !24
  %t391 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t381, ptr %t382, ptr %t383, i64 %t384, i64 %t385)
  store i1 %t391, ptr %l221
  br label %bb95
bb94:
  store i1 false, ptr %l215, !tbaa !21
  br label %bb96
bb95:
  %t392 = load i1, ptr %l221, !tbaa !21
  store i1 %t392, ptr %l215, !tbaa !21
  br label %bb96
bb96:
  %t393 = load i1, ptr %l215, !tbaa !21
  store i1 %t393, ptr %rv
  br label %ret
bb97:
  %t394 = load ptr, ptr %l2, !tbaa !29
  store ptr %t394, ptr %l222, !tbaa !29
  store i1 false, ptr %l223, !tbaa !21
  %t395 = load ptr, ptr %l222, !tbaa !29
  %t396 = icmp ne ptr %t395, null
  br i1 %t396, label %bb98, label %bb99
bb98:
  %t398 = load ptr, ptr %l222, !tbaa !29
  %t399 = load i64, ptr %t398, !range !{i64 0, i64 17}
  %t401 = icmp eq i64 %t399, 9
  store i1 %t401, ptr %l223, !tbaa !21
  br label %bb99
bb99:
  %t402 = load i1, ptr %l223, !tbaa !21
  br i1 %t402, label %bb100, label %bb101
bb100:
  %t403 = load ptr, ptr %l2, !tbaa !29
  %t405 = getelementptr { i64, [3 x i64] }, ptr %t403, i32 0, i32 1
  %t406 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t405, i32 0, i32 2
  %t407 = load ptr, ptr %t406
  store ptr %t407, ptr %l16, !tbaa !29
  br label %bb102
bb101:
  br label %bb104
bb102:
  %t409 = load ptr, ptr %l0, !tbaa !29
  %t410 = load ptr, ptr %l1, !tbaa !29
  %t411 = load ptr, ptr %l16, !tbaa !29
  %t412 = load i64, ptr %l3, !tbaa !24
  %t413 = load i64, ptr %l4, !tbaa !24
  %t419 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t409, ptr %t410, ptr %t411, i64 %t412, i64 %t413)
  store i1 %t419, ptr %l233
  br label %bb103
bb103:
  %t420 = load i1, ptr %l233, !tbaa !21
  store i1 %t420, ptr %rv
  br label %ret
bb104:
  %t421 = load ptr, ptr %l2, !tbaa !29
  store ptr %t421, ptr %l234, !tbaa !29
  store i1 false, ptr %l235, !tbaa !21
  %t422 = load ptr, ptr %l234, !tbaa !29
  %t423 = icmp ne ptr %t422, null
  br i1 %t423, label %bb105, label %bb106
bb105:
  %t425 = load ptr, ptr %l234, !tbaa !29
  %t426 = load i64, ptr %t425, !range !{i64 0, i64 17}
  %t428 = icmp eq i64 %t426, 11
  store i1 %t428, ptr %l235, !tbaa !21
  br label %bb106
bb106:
  %t429 = load i1, ptr %l235, !tbaa !21
  br i1 %t429, label %bb107, label %bb108
bb107:
  %t430 = load ptr, ptr %l2, !tbaa !29
  %t432 = getelementptr { i64, [3 x i64] }, ptr %t430, i32 0, i32 1
  %t433 = getelementptr { %"compiler/source:Span", ptr }, ptr %t432, i32 0, i32 1
  %t434 = load ptr, ptr %t433
  store ptr %t434, ptr %l17, !tbaa !29
  br label %bb109
bb108:
  br label %bb111
bb109:
  %t436 = load ptr, ptr %l0, !tbaa !29
  %t437 = load ptr, ptr %l1, !tbaa !29
  %t438 = load ptr, ptr %l17, !tbaa !29
  %t440 = load i64, ptr %l3, !tbaa !24
  %t441 = load i64, ptr %l4, !tbaa !24
  %t447 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueBlock(ptr %v0, ptr %v1, ptr %v2, ptr %t436, ptr %t437, ptr %t438, i64 %t440, i64 %t441)
  store i1 %t447, ptr %l246
  br label %bb110
bb110:
  %t448 = load i1, ptr %l246, !tbaa !21
  store i1 %t448, ptr %rv
  br label %ret
bb111:
  %t449 = load ptr, ptr %l2, !tbaa !29
  store ptr %t449, ptr %l247, !tbaa !29
  store i1 false, ptr %l248, !tbaa !21
  %t450 = load ptr, ptr %l247, !tbaa !29
  %t451 = icmp ne ptr %t450, null
  br i1 %t451, label %bb112, label %bb113
bb112:
  %t453 = load ptr, ptr %l247, !tbaa !29
  %t454 = load i64, ptr %t453, !range !{i64 0, i64 17}
  %t456 = icmp eq i64 %t454, 12
  store i1 %t456, ptr %l248, !tbaa !21
  br label %bb113
bb113:
  %t457 = load i1, ptr %l248, !tbaa !21
  br i1 %t457, label %bb114, label %bb115
bb114:
  %t458 = load ptr, ptr %l2, !tbaa !29
  %t460 = getelementptr { i64, [3 x i64] }, ptr %t458, i32 0, i32 1
  %t461 = getelementptr { %"compiler/source:Span", ptr }, ptr %t460, i32 0, i32 1
  %t462 = load ptr, ptr %t461
  store ptr %t462, ptr %l18, !tbaa !29
  br label %bb116
bb115:
  br label %bb118
bb116:
  %t464 = load ptr, ptr %l0, !tbaa !29
  %t465 = load ptr, ptr %l1, !tbaa !29
  %t466 = load ptr, ptr %l18, !tbaa !29
  %t468 = load i64, ptr %l3, !tbaa !24
  %t469 = load i64, ptr %l4, !tbaa !24
  %t475 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueBlock(ptr %v0, ptr %v1, ptr %v2, ptr %t464, ptr %t465, ptr %t466, i64 %t468, i64 %t469)
  store i1 %t475, ptr %l259
  br label %bb117
bb117:
  %t476 = load i1, ptr %l259, !tbaa !21
  store i1 %t476, ptr %rv
  br label %ret
bb118:
  %t477 = load ptr, ptr %l2, !tbaa !29
  store ptr %t477, ptr %l260, !tbaa !29
  store i1 false, ptr %l261, !tbaa !21
  %t478 = load ptr, ptr %l260, !tbaa !29
  %t479 = icmp ne ptr %t478, null
  br i1 %t479, label %bb119, label %bb120
bb119:
  %t481 = load ptr, ptr %l260, !tbaa !29
  %t482 = load i64, ptr %t481, !range !{i64 0, i64 17}
  %t484 = icmp eq i64 %t482, 13
  store i1 %t484, ptr %l261, !tbaa !21
  br label %bb120
bb120:
  %t485 = load i1, ptr %l261, !tbaa !21
  br i1 %t485, label %bb121, label %bb122
bb121:
  %t486 = load ptr, ptr %l2, !tbaa !29
  %t488 = getelementptr { i64, [3 x i64] }, ptr %t486, i32 0, i32 1
  %t489 = getelementptr { %"compiler/source:Span", ptr }, ptr %t488, i32 0, i32 1
  %t490 = load ptr, ptr %t489
  store ptr %t490, ptr %l19, !tbaa !29
  br label %bb123
bb122:
  br label %bb138
bb123:
  %t492 = load ptr, ptr %l0, !tbaa !29
  %t493 = load ptr, ptr %l1, !tbaa !29
  %t494 = load ptr, ptr %l19, !tbaa !29
  %t496 = getelementptr %"compiler/typed:Join", ptr %t494, i32 0, i32 0
  %t497 = load ptr, ptr %t496, !tbaa !29
  %t499 = load i64, ptr %l3, !tbaa !24
  %t500 = load i64, ptr %l4, !tbaa !24
  %t506 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueBlock(ptr %v0, ptr %v1, ptr %v2, ptr %t492, ptr %t493, ptr %t497, i64 %t499, i64 %t500)
  store i1 %t506, ptr %l273
  br label %bb124
bb124:
  %t507 = load i1, ptr %l273, !tbaa !21
  %t508 = xor i1 %t507, true
  br i1 %t508, label %bb125, label %bb126
bb125:
  store i1 false, ptr %rv
  br label %ret
bb126:
  br label %bb127
bb127:
  %t511 = load ptr, ptr %l19, !tbaa !29
  %t513 = getelementptr %"compiler/typed:Join", ptr %t511, i32 0, i32 2
  %t514 = load { i64, ptr }, ptr %t513, !tbaa !27
  store { i64, ptr } %t514, ptr %l20, !tbaa !27
  store i64 0, ptr %l21, !tbaa !24
  %t516 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t518 = extractvalue { i64, ptr } %t516, 0
  store i64 %t518, ptr %l22, !tbaa !24
  br label %bb128
bb128:
  %t520 = load i64, ptr %l21, !tbaa !24
  %t521 = load i64, ptr %l22, !tbaa !24
  %t524 = icmp slt i64 %t520, %t521
  %t526 = xor i1 %t524, true
  br i1 %t526, label %bb129, label %bb130
bb129:
  br label %bb137
bb130:
  br label %bb131
bb131:
  %t528 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t528, ptr %l284, !tbaa !27
  %t529 = load i64, ptr %l21, !tbaa !24
  %t531 = getelementptr { i64, ptr }, ptr %l284, i32 0, i32 1
  %t532 = load ptr, ptr %t531, !tbaa !27
  %t533 = getelementptr ptr, ptr %t532, i64 %t529
  %t534 = load ptr, ptr %t533, !tbaa !39
  %t536 = load ptr, ptr %l0, !tbaa !29
  %t537 = load ptr, ptr %l1, !tbaa !29
  %t540 = getelementptr %"compiler/typed:Clause", ptr %t534, i32 0, i32 3
  %t541 = load ptr, ptr %t540, !tbaa !29
  %t542 = load i64, ptr %l3, !tbaa !24
  %t543 = load i64, ptr %l4, !tbaa !24
  %t549 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueBlock(ptr %v0, ptr %v1, ptr %v2, ptr %t536, ptr %t537, ptr %t541, i64 %t542, i64 %t543)
  store i1 %t549, ptr %l293
  br label %bb132
bb132:
  %t550 = load i1, ptr %l293, !tbaa !21
  %t551 = xor i1 %t550, true
  br i1 %t551, label %bb133, label %bb134
bb133:
  store i1 false, ptr %rv
  br label %ret
bb134:
  br label %bb135
bb135:
  br label %bb136
bb136:
  %t554 = load i64, ptr %l21, !tbaa !24
  %t556 = add i64 %t554, 1
  store i64 %t556, ptr %l21, !tbaa !24
  br label %bb128
bb137:
  store i1 true, ptr %rv
  br label %ret
bb138:
  %t559 = load ptr, ptr %l2, !tbaa !29
  store ptr %t559, ptr %l299, !tbaa !29
  store i1 false, ptr %l300, !tbaa !21
  %t560 = load ptr, ptr %l299, !tbaa !29
  %t561 = icmp ne ptr %t560, null
  br i1 %t561, label %bb139, label %bb140
bb139:
  %t563 = load ptr, ptr %l299, !tbaa !29
  %t564 = load i64, ptr %t563, !range !{i64 0, i64 17}
  %t566 = icmp eq i64 %t564, 14
  store i1 %t566, ptr %l300, !tbaa !21
  br label %bb140
bb140:
  %t567 = load i1, ptr %l300, !tbaa !21
  br i1 %t567, label %bb141, label %bb142
bb141:
  %t568 = load ptr, ptr %l2, !tbaa !29
  %t570 = getelementptr { i64, [3 x i64] }, ptr %t568, i32 0, i32 1
  %t571 = getelementptr { %"compiler/source:Span", ptr }, ptr %t570, i32 0, i32 1
  %t572 = load ptr, ptr %t571
  store ptr %t572, ptr %l24, !tbaa !29
  br label %bb143
bb142:
  br label %bb177
bb143:
  store %olang.scope zeroinitializer, ptr %s20
  %t574 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s20, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t574, ptr %l305
  br label %bb144
bb144:
  %t575 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l305
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t575, ptr %l25
  %t576 = load ptr, ptr %l0, !tbaa !29
  %t577 = load ptr, ptr %l24, !tbaa !29
  %t579 = getelementptr %"compiler/typed:Spawn", ptr %t577, i32 0, i32 1
  %t580 = load ptr, ptr %t579, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecarried(ptr %v0, ptr %v2, ptr %s20, ptr %t576, ptr %t580, ptr %l25)
  br label %bb145
bb145:
  %t585 = load i64, ptr %l3, !tbaa !24
  %t588 = call i1 @compiler_2fscope_2eflHas(ptr %s20, ptr %l25, i64 %t585)
  store i1 %t588, ptr %l313
  br label %bb146
bb146:
  %t589 = load i1, ptr %l313, !tbaa !21
  br i1 %t589, label %bb147, label %bb148
bb147:
  call void @__olang_scope_close(ptr %s20)
  store i1 false, ptr %rv
  br label %ret
bb148:
  br label %bb149
bb149:
  %t591 = load ptr, ptr %l24, !tbaa !29
  %t593 = getelementptr %"compiler/typed:Spawn", ptr %t591, i32 0, i32 0
  %t594 = load { i64, ptr }, ptr %t593, !tbaa !27
  store { i64, ptr } %t594, ptr %l26, !tbaa !27
  store i64 0, ptr %l27, !tbaa !24
  %t596 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t598 = extractvalue { i64, ptr } %t596, 0
  store i64 %t598, ptr %l28, !tbaa !24
  br label %bb150
bb150:
  %t600 = load i64, ptr %l27, !tbaa !24
  %t601 = load i64, ptr %l28, !tbaa !24
  %t604 = icmp slt i64 %t600, %t601
  %t606 = xor i1 %t604, true
  br i1 %t606, label %bb151, label %bb152
bb151:
  br label %bb162
bb152:
  br label %bb153
bb153:
  %t608 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t608, ptr %l323, !tbaa !27
  %t609 = load i64, ptr %l27, !tbaa !24
  %t611 = getelementptr { i64, ptr }, ptr %l323, i32 0, i32 1
  %t612 = load ptr, ptr %t611, !tbaa !27
  %t613 = getelementptr ptr, ptr %t612, i64 %t609
  %t614 = load ptr, ptr %t613, !tbaa !39
  store ptr %t614, ptr %l29, !tbaa !29
  %t616 = load ptr, ptr %l29, !tbaa !29
  %t618 = icmp eq ptr %t616, null
  br i1 %t618, label %bb154, label %bb155
bb154:
  br label %bb161
bb155:
  br label %bb156
bb156:
  %t620 = load ptr, ptr %l0, !tbaa !29
  %t621 = load ptr, ptr %l1, !tbaa !29
  %t622 = load ptr, ptr %l29, !tbaa !29
  %t623 = load i64, ptr %l3, !tbaa !24
  %t624 = load i64, ptr %l4, !tbaa !24
  %t630 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2euePlace(ptr %v0, ptr %v1, ptr %v2, ptr %t620, ptr %t621, ptr %t622, i64 %t623, i64 %t624)
  store i1 %t630, ptr %l333
  br label %bb157
bb157:
  %t631 = load i1, ptr %l333, !tbaa !21
  %t632 = xor i1 %t631, true
  br i1 %t632, label %bb158, label %bb159
bb158:
  call void @__olang_scope_close(ptr %s20)
  store i1 false, ptr %rv
  br label %ret
bb159:
  br label %bb160
bb160:
  br label %bb161
bb161:
  %t635 = load i64, ptr %l27, !tbaa !24
  %t637 = add i64 %t635, 1
  store i64 %t637, ptr %l27, !tbaa !24
  br label %bb150
bb162:
  %t639 = load ptr, ptr %l0, !tbaa !29
  %t640 = load ptr, ptr %l1, !tbaa !29
  %t641 = load ptr, ptr %l24, !tbaa !29
  %t643 = getelementptr %"compiler/typed:Spawn", ptr %t641, i32 0, i32 1
  %t644 = load ptr, ptr %t643, !tbaa !29
  %t646 = load i64, ptr %l3, !tbaa !24
  %t647 = load i64, ptr %l4, !tbaa !24
  %t653 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t639, ptr %t640, ptr %t644, i64 %t646, i64 %t647)
  store i1 %t653, ptr %l345
  br label %bb163
bb163:
  %t654 = load i1, ptr %l345, !tbaa !21
  %t655 = xor i1 %t654, true
  br i1 %t655, label %bb164, label %bb165
bb164:
  call void @__olang_scope_close(ptr %s20)
  store i1 false, ptr %rv
  br label %ret
bb165:
  br label %bb166
bb166:
  %t658 = load ptr, ptr %l24, !tbaa !29
  %t660 = getelementptr %"compiler/typed:Spawn", ptr %t658, i32 0, i32 2
  %t661 = load { i64, ptr }, ptr %t660, !tbaa !27
  store { i64, ptr } %t661, ptr %l30, !tbaa !27
  store i64 0, ptr %l31, !tbaa !24
  %t663 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t665 = extractvalue { i64, ptr } %t663, 0
  store i64 %t665, ptr %l32, !tbaa !24
  br label %bb167
bb167:
  %t667 = load i64, ptr %l31, !tbaa !24
  %t668 = load i64, ptr %l32, !tbaa !24
  %t671 = icmp slt i64 %t667, %t668
  %t673 = xor i1 %t671, true
  br i1 %t673, label %bb168, label %bb169
bb168:
  br label %bb176
bb169:
  br label %bb170
bb170:
  %t675 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t675, ptr %l356, !tbaa !27
  %t676 = load i64, ptr %l31, !tbaa !24
  %t678 = getelementptr { i64, ptr }, ptr %l356, i32 0, i32 1
  %t679 = load ptr, ptr %t678, !tbaa !27
  %t680 = getelementptr ptr, ptr %t679, i64 %t676
  %t681 = load ptr, ptr %t680, !tbaa !39
  %t683 = load ptr, ptr %l0, !tbaa !29
  %t684 = load ptr, ptr %l1, !tbaa !29
  %t687 = getelementptr %"compiler/typed:TaskClause", ptr %t681, i32 0, i32 3
  %t688 = load ptr, ptr %t687, !tbaa !29
  %t689 = load i64, ptr %l3, !tbaa !24
  %t690 = load i64, ptr %l4, !tbaa !24
  %t696 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t683, ptr %t684, ptr %t688, i64 %t689, i64 %t690)
  store i1 %t696, ptr %l365
  br label %bb171
bb171:
  %t697 = load i1, ptr %l365, !tbaa !21
  %t698 = xor i1 %t697, true
  br i1 %t698, label %bb172, label %bb173
bb172:
  call void @__olang_scope_close(ptr %s20)
  store i1 false, ptr %rv
  br label %ret
bb173:
  br label %bb174
bb174:
  br label %bb175
bb175:
  %t701 = load i64, ptr %l31, !tbaa !24
  %t703 = add i64 %t701, 1
  store i64 %t703, ptr %l31, !tbaa !24
  br label %bb167
bb176:
  call void @__olang_scope_close(ptr %s20)
  store i1 true, ptr %rv
  br label %ret
bb177:
  %t706 = load ptr, ptr %l2, !tbaa !29
  store ptr %t706, ptr %l371, !tbaa !29
  store i1 false, ptr %l372, !tbaa !21
  %t707 = load ptr, ptr %l371, !tbaa !29
  %t708 = icmp ne ptr %t707, null
  br i1 %t708, label %bb178, label %bb179
bb178:
  %t710 = load ptr, ptr %l371, !tbaa !29
  %t711 = load i64, ptr %t710, !range !{i64 0, i64 17}
  %t713 = icmp eq i64 %t711, 15
  store i1 %t713, ptr %l372, !tbaa !21
  br label %bb179
bb179:
  %t714 = load i1, ptr %l372, !tbaa !21
  br i1 %t714, label %bb180, label %bb181
bb180:
  %t715 = load ptr, ptr %l2, !tbaa !29
  %t717 = getelementptr { i64, [3 x i64] }, ptr %t715, i32 0, i32 1
  %t718 = getelementptr { %"compiler/source:Span", ptr }, ptr %t717, i32 0, i32 1
  %t719 = load ptr, ptr %t718
  store ptr %t719, ptr %l34, !tbaa !29
  br label %bb182
bb181:
  br label %bb184
bb182:
  %t721 = load ptr, ptr %l0, !tbaa !29
  %t722 = load ptr, ptr %l1, !tbaa !29
  %t723 = load ptr, ptr %l34, !tbaa !29
  %t725 = load i64, ptr %l3, !tbaa !24
  %t726 = load i64, ptr %l4, !tbaa !24
  %t732 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t721, ptr %t722, ptr %t723, i64 %t725, i64 %t726)
  store i1 %t732, ptr %l383
  br label %bb183
bb183:
  %t733 = load i1, ptr %l383, !tbaa !21
  store i1 %t733, ptr %rv
  br label %ret
bb184:
  br i1 true, label %bb185, label %bb186
bb185:
  br label %bb187
bb186:
  br label %bb188
bb187:
  store i1 true, ptr %rv
  br label %ret
bb188:
  call void @__olang_check_failed(ptr @olang_loc_32fd86c1b7051b0e_a69c29150a84755a)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2everEnd(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca ptr
  %l10 = alloca i64
  %l12 = alloca i32
  %l13 = alloca i1
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l22 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l23 = alloca ptr
  %l24 = alloca i64
  %l31 = alloca i64
  %l35 = alloca i64
  %l38 = alloca i64
  %l59 = alloca i64
  %l63 = alloca i1
  %l65 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l66 = alloca ptr
  %l70 = alloca { i64, [2 x i64] }
  %l73 = alloca i64
  %l75 = alloca i64
  %l80 = alloca %"compiler/scope:verAtom"
  %l81 = alloca ptr
  %l82 = alloca %"compiler/scope:verAtom"
  %l86 = alloca i64
  %l90 = alloca i64
  %l91 = alloca i1
  %l96 = alloca ptr
  %l97 = alloca i64
  %l99 = alloca i64
  %l103 = alloca { i64, [2 x i64] }
  %l104 = alloca ptr
  %l113 = alloca %"compiler/source:Span"
  %l115 = alloca { i64, ptr }
  %l117 = alloca { i64, ptr }
  %l124 = alloca i32
  %l127 = alloca i1
  %l128 = alloca ptr
  %l132 = alloca { i64, [2 x i64] }
  %l134 = alloca i1
  %l140 = alloca ptr
  %l141 = alloca i64
  %l143 = alloca i64
  %l144 = alloca i32
  %l145 = alloca ptr
  %l154 = alloca %"compiler/source:Span"
  %l156 = alloca { i64, ptr }
  %l165 = alloca i1
  %l168 = alloca i64
  %l172 = alloca i64
  %l175 = alloca i64
  %l196 = alloca i1
  %l201 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l202 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l204 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l208 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l209 = alloca i32
  %l211 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l212 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l214 = alloca i64
  %l216 = alloca i64
  %l221 = alloca %"compiler/scope:verAtom"
  %l226 = alloca ptr
  %l230 = alloca { i64, [2 x i64] }
  %l239 = alloca i1
  %l246 = alloca i1
  %l252 = alloca ptr
  %l258 = alloca i1
  %l262 = alloca ptr
  %s3 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s9 = alloca %olang.builder
  %s9room = alloca [64 x i8], align 8
  %s12 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s26 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 159
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  br i1 %t6, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  store i64 0, ptr %l1, !tbaa !24
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/scope:Scoper", ptr %t8, i32 0, i32 166
  %t12 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t10)
  store i64 %t12, ptr %l31
  br label %bb4
bb4:
  %t13 = load i64, ptr %l31, !tbaa !24
  store i64 %t13, ptr %l2, !tbaa !24
  store i64 1, ptr %l3, !tbaa !24
  %t14 = load i64, ptr %l2, !tbaa !24
  %t15 = load i64, ptr %l1, !tbaa !24
  %t18 = icmp sgt i64 %t14, %t15
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t20 = load i64, ptr %l3, !tbaa !24
  %t22 = icmp sgt i64 %t20, 0
  br i1 %t22, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l35, !tbaa !24
  br label %bb10
bb7:
  %t24 = load i64, ptr %l2, !tbaa !24
  %t25 = load i64, ptr %l1, !tbaa !24
  %t28 = sub i64 %t24, %t25
  %t29 = load i64, ptr %l3, !tbaa !24
  %t32 = add i64 %t28, %t29
  %t34 = sub i64 %t32, 1
  %t35 = load i64, ptr %l3, !tbaa !24
  %t38 = sdiv i64 %t34, %t35
  store i64 %t38, ptr %l38, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l38, !tbaa !24
  br label %bb9
bb9:
  %t40 = load i64, ptr %l38, !tbaa !24
  store i64 %t40, ptr %l35, !tbaa !24
  br label %bb10
bb10:
  %t41 = load i64, ptr %l35, !tbaa !24
  store i64 %t41, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb11
bb11:
  store %olang.scope zeroinitializer, ptr %s3
  %t42 = load i64, ptr %l5, !tbaa !24
  %t43 = load i64, ptr %l4, !tbaa !24
  %t46 = icmp slt i64 %t42, %t43
  %t48 = xor i1 %t46, true
  br i1 %t48, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s3)
  br label %bb71
bb13:
  br label %bb14
bb14:
  %t50 = load i64, ptr %l1, !tbaa !24
  %t51 = load i64, ptr %l5, !tbaa !24
  %t52 = load i64, ptr %l3, !tbaa !24
  %t55 = mul i64 %t51, %t52
  %t58 = add i64 %t50, %t55
  store i64 %t58, ptr %l6, !tbaa !24
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/scope:Scoper", ptr %t60, i32 0, i32 166
  %t63 = load i64, ptr %l6, !tbaa !24
  %t66 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t62, i64 %t63)
  store i64 %t66, ptr %l59
  br label %bb15
bb15:
  %t67 = load i64, ptr %l59, !tbaa !24
  store i64 %t67, ptr %l7, !tbaa !24
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/scope:Scoper", ptr %t68, i32 0, i32 165
  %t71 = load i64, ptr %l7, !tbaa !24
  %t74 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t70, i64 %t71)
  store i1 %t74, ptr %l63
  br label %bb16
bb16:
  %t75 = load i1, ptr %l63, !tbaa !21
  %t76 = xor i1 %t75, true
  br i1 %t76, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s3)
  br label %bb70
bb18:
  br label %bb19
bb19:
  %t78 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e_2ector(ptr %s3, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t78, ptr %l65
  br label %bb20
bb20:
  %t79 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l65
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t79, ptr %l8
  %t80 = load ptr, ptr %l0, !tbaa !29
  store ptr %t80, ptr %l66, !tbaa !29
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/scope:Scoper", ptr %t81, i32 0, i32 164
  %t84 = load i64, ptr %l7, !tbaa !24
  %t87 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t83, i64 %t84)
  store { i64, [2 x i64] } %t87, ptr %l70
  br label %bb21
bb21:
  %t88 = load ptr, ptr %l66, !tbaa !29
  %t89 = load { i64, [2 x i64] }, ptr %l70
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etoAtoms(ptr %v0, ptr %s3, ptr %t88, { i64, [2 x i64] } %t89, ptr %l8)
  br label %bb22
bb22:
  store ptr %l8, ptr %l9, !tbaa !29
  store i64 0, ptr %l10, !tbaa !24
  br label %bb23
bb23:
  %t92 = load i64, ptr %l10, !tbaa !24
  store i64 %t92, ptr %l73, !tbaa !24
  %t93 = load ptr, ptr %l9, !tbaa !29
  %t95 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e_2eLen_3ccompiler_2fscope_3averAtom_3e(ptr %s3, ptr %t93)
  store i64 %t95, ptr %l75
  br label %bb24
bb24:
  %t96 = load i64, ptr %l73, !tbaa !24
  %t97 = load i64, ptr %l75, !tbaa !24
  %t98 = icmp slt i64 %t96, %t97
  %t100 = xor i1 %t98, true
  br i1 %t100, label %bb25, label %bb26
bb25:
  br label %bb49
bb26:
  br label %bb27
bb27:
  %t102 = load ptr, ptr %l9, !tbaa !29
  %t103 = load i64, ptr %l10, !tbaa !24
  %t106 = call %"compiler/scope:verAtom" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e_2eAt_3ccompiler_2fscope_3averAtom_3e(ptr %s3, ptr %t102, i64 %t103)
  store %"compiler/scope:verAtom" %t106, ptr %l80
  br label %bb28
bb28:
  %t107 = load %"compiler/scope:verAtom", ptr %l80
  %t108 = load ptr, ptr %l0, !tbaa !29
  store ptr %t108, ptr %l81, !tbaa !29
  store %"compiler/scope:verAtom" %t107, ptr %l82
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/scope:Scoper", ptr %t110, i32 0, i32 167
  %t113 = load i64, ptr %l6, !tbaa !24
  %t116 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t112, i64 %t113)
  store i64 %t116, ptr %l86
  br label %bb29
bb29:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/scope:Scoper", ptr %t117, i32 0, i32 168
  %t120 = load i64, ptr %l6, !tbaa !24
  %t123 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t119, i64 %t120)
  store i64 %t123, ptr %l90
  br label %bb30
bb30:
  %t124 = load ptr, ptr %l81, !tbaa !29
  %t125 = load %"compiler/scope:verAtom", ptr %l82
  %t126 = load i64, ptr %l86, !tbaa !24
  %t127 = load i64, ptr %l90, !tbaa !24
  %t128 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eatomIn(ptr %v0, ptr %t124, %"compiler/scope:verAtom" %t125, i64 %t126, i64 %t127)
  store i1 %t128, ptr %l91
  br label %bb31
bb31:
  %t129 = load i1, ptr %l91, !tbaa !21
  br i1 %t129, label %bb32, label %bb33
bb32:
  br label %bb48
bb33:
  br label %bb34
bb34:
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t132 = getelementptr %"compiler/scope:Scoper", ptr %t130, i32 0, i32 173
  store i1 true, ptr %t132, !tbaa !21
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t135 = getelementptr %"compiler/scope:Scoper", ptr %t133, i32 0, i32 226
  %t136 = load i1, ptr %t135, !tbaa !21
  br i1 %t136, label %bb35, label %bb36
bb35:
  store %olang.scope zeroinitializer, ptr %s8
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t140 = getelementptr %"compiler/scope:Scoper", ptr %t138, i32 0, i32 256
  store ptr %t140, ptr %l96, !tbaa !29
  %t141 = ptrtoint ptr %v0 to i64
  store i64 %t141, ptr %l97, !tbaa !24
  %t142 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t142, label %bb37, label %bb38
bb36:
  br label %bb47
bb37:
  %t144 = call ptr @__olang_region_make(ptr %v0)
  %t145 = ptrtoint ptr %t144 to i64
  store i64 %t145, ptr %l97, !tbaa !24
  br label %bb38
bb38:
  %t146 = load i64, ptr %l7, !tbaa !24
  store i64 %t146, ptr %l99, !tbaa !24
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t149 = getelementptr %"compiler/scope:Scoper", ptr %t147, i32 0, i32 164
  %t150 = load i64, ptr %l7, !tbaa !24
  %t153 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t149, i64 %t150)
  store { i64, [2 x i64] } %t153, ptr %l103
  br label %bb39
bb39:
  %t154 = load ptr, ptr %l0, !tbaa !29
  store ptr %t154, ptr %l104, !tbaa !29
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t157 = getelementptr %"compiler/scope:Scoper", ptr %t155, i32 0, i32 159
  %t158 = load ptr, ptr %t157, !tbaa !29
  %t160 = icmp eq ptr %t158, null
  br i1 %t160, label %bb40, label %bb41
bb40:
  call void @__olang_check_failed(ptr @olang_loc_e95d11079edfa6c5_f5aa1a3bf3a58b01)
  unreachable
bb41:
  br label %bb42
bb42:
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t164 = getelementptr %"compiler/scope:Scoper", ptr %t162, i32 0, i32 159
  %t165 = load ptr, ptr %t164, !tbaa !29
  %t168 = getelementptr %"compiler/typed:Versions", ptr %t165, i32 0, i32 4
  %t169 = load i64, ptr %l7, !tbaa !24
  %t172 = call %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t168, i64 %t169)
  store %"compiler/source:Span" %t172, ptr %l113
  br label %bb43
bb43:
  %t173 = getelementptr %"compiler/source:Span", ptr %l113, i32 0, i32 0
  %t174 = load i32, ptr %t173, !tbaa !23
  %t175 = load ptr, ptr %l104, !tbaa !29
  %t177 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etraceAt(ptr %v0, ptr %s8, ptr %t175, i32 %t174)
  store { i64, ptr } %t177, ptr %l115
  br label %bb44
bb44:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s9
  store ptr %s9room, ptr %s9
  %t178 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t179 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s9, ptr %t178, i64 %t179)
  %t180 = load i64, ptr %l99, !tbaa !24
  %t181 = call ptr @__olang_sb_room(ptr %s9, i64 24)
  %t182 = call i64 @__olang_fmt_i64(ptr %t181, i64 %t180)
  call void @__olang_sb_add(ptr %s9, i64 %t182)
  %t183 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t184 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s9, ptr %t183, i64 %t184)
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2fscope_3aTerm(ptr %s9, ptr %l103, i64 0)
  br label %bb45
bb45:
  %t186 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t187 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s9, ptr %t186, i64 %t187)
  %t188 = load { i64, ptr }, ptr %l115, !tbaa !27
  %t189 = extractvalue { i64, ptr } %t188, 1
  %t190 = extractvalue { i64, ptr } %t188, 0
  call void @__olang_sb_put(ptr %s9, ptr %t189, i64 %t190)
  %t191 = load ptr, ptr %s9
  %t192 = getelementptr %olang.builder, ptr %s9, i32 0, i32 1
  %t193 = load i64, ptr %t192
  %t194 = load i64, ptr %l97
  %t195 = inttoptr i64 %t194 to ptr
  %t196 = call ptr @__olang_scope_alloc(ptr %t195, i64 %t193)
  call void @olang_textcopy(ptr %t196, ptr %t191, i64 %t193)
  %t197 = insertvalue { i64, ptr } undef, i64 %t193, 0
  %t198 = insertvalue { i64, ptr } %t197, ptr %t196, 1
  store { i64, ptr } %t198, ptr %l117, !tbaa !27
  %t199 = getelementptr %olang.builder, ptr %s9, i32 0, i32 3
  %t200 = load ptr, ptr %t199
  %t201 = icmp ne ptr %t200, null
  br i1 %t201, label %sbgrew.202, label %sbdone.203
sbgrew.202:
  call void @__olang_sb_done(ptr %s9)
  br label %sbdone.203
sbdone.203:
  %t204 = load { i64, ptr }, ptr %l117, !tbaa !27
  %t205 = load i64, ptr %l97
  %t206 = inttoptr i64 %t205 to ptr
  %t207 = extractvalue { i64, ptr } %t204, 0
  %t208 = extractvalue { i64, ptr } %t204, 1
  %t209 = mul i64 %t207, 1
  %t210 = call ptr @__olang_scope_alloc(ptr %t206, i64 %t209)
  call void @llvm.memcpy.p0.p0.i64(ptr %t210, ptr %t208, i64 %t209, i1 false)
  %t211 = insertvalue { i64, ptr } undef, i64 %t207, 0
  %t212 = insertvalue { i64, ptr } %t211, ptr %t210, 1
  %t213 = load ptr, ptr %l96, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t213, { i64, ptr } %t212)
  br label %bb46
bb46:
  call void @__olang_scope_close(ptr %s8)
  br label %bb47
bb47:
  br label %bb48
bb48:
  %t215 = load i64, ptr %l10, !tbaa !24
  %t217 = add i64 %t215, 1
  store i64 %t217, ptr %l10, !tbaa !24
  br label %bb23
bb49:
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t221 = getelementptr %"compiler/scope:Scoper", ptr %t219, i32 0, i32 175
  %t222 = load i64, ptr %l6, !tbaa !24
  %t225 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eAt_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t221, i64 %t222)
  store i32 %t225, ptr %l124
  br label %bb50
bb50:
  %t226 = load i32, ptr %l124, !tbaa !23
  store i32 %t226, ptr %l12, !tbaa !23
  %t227 = load i32, ptr %l12, !tbaa !23
  %t229 = icmp sge i32 %t227, 0
  br i1 %t229, label %bb51, label %bb52
bb51:
  %t231 = load ptr, ptr %l0, !tbaa !29
  store ptr %t231, ptr %l128, !tbaa !29
  %t232 = load ptr, ptr %l0, !tbaa !29
  %t234 = getelementptr %"compiler/scope:Scoper", ptr %t232, i32 0, i32 164
  %t235 = load i64, ptr %l7, !tbaa !24
  %t238 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t234, i64 %t235)
  store { i64, [2 x i64] } %t238, ptr %l132
  br label %bb53
bb52:
  store i1 false, ptr %l127, !tbaa !21
  br label %bb55
bb53:
  %t239 = load i32, ptr %l12, !tbaa !23
  %t240 = load ptr, ptr %l128, !tbaa !29
  %t241 = load { i64, [2 x i64] }, ptr %l132
  %t243 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eopenAt(ptr %v0, ptr %t240, { i64, [2 x i64] } %t241, i32 %t239)
  store i1 %t243, ptr %l134
  br label %bb54
bb54:
  %t244 = load i1, ptr %l134, !tbaa !21
  %t245 = xor i1 %t244, true
  store i1 %t245, ptr %l127, !tbaa !21
  br label %bb55
bb55:
  %t247 = load i1, ptr %l127, !tbaa !21
  br i1 %t247, label %bb56, label %bb57
bb56:
  %t248 = load ptr, ptr %l0, !tbaa !29
  %t250 = getelementptr %"compiler/scope:Scoper", ptr %t248, i32 0, i32 173
  store i1 true, ptr %t250, !tbaa !21
  %t251 = load ptr, ptr %l0, !tbaa !29
  %t253 = getelementptr %"compiler/scope:Scoper", ptr %t251, i32 0, i32 226
  %t254 = load i1, ptr %t253, !tbaa !21
  br i1 %t254, label %bb58, label %bb59
bb57:
  br label %bb69
bb58:
  store %olang.scope zeroinitializer, ptr %s12
  %t256 = load ptr, ptr %l0, !tbaa !29
  %t258 = getelementptr %"compiler/scope:Scoper", ptr %t256, i32 0, i32 256
  store ptr %t258, ptr %l140, !tbaa !29
  %t259 = ptrtoint ptr %v0 to i64
  store i64 %t259, ptr %l141, !tbaa !24
  %t260 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t260, label %bb60, label %bb61
bb59:
  br label %bb68
bb60:
  %t262 = call ptr @__olang_region_make(ptr %v0)
  %t263 = ptrtoint ptr %t262 to i64
  store i64 %t263, ptr %l141, !tbaa !24
  br label %bb61
bb61:
  %t264 = load i64, ptr %l7, !tbaa !24
  store i64 %t264, ptr %l143, !tbaa !24
  %t265 = load i32, ptr %l12, !tbaa !23
  store i32 %t265, ptr %l144, !tbaa !23
  %t266 = load ptr, ptr %l0, !tbaa !29
  store ptr %t266, ptr %l145, !tbaa !29
  %t267 = load ptr, ptr %l0, !tbaa !29
  %t269 = getelementptr %"compiler/scope:Scoper", ptr %t267, i32 0, i32 159
  %t270 = load ptr, ptr %t269, !tbaa !29
  %t272 = icmp eq ptr %t270, null
  br i1 %t272, label %bb62, label %bb63
bb62:
  call void @__olang_check_failed(ptr @olang_loc_95f67bc87c53621e_1cb39134fd046c7a)
  unreachable
bb63:
  br label %bb64
bb64:
  %t274 = load ptr, ptr %l0, !tbaa !29
  %t276 = getelementptr %"compiler/scope:Scoper", ptr %t274, i32 0, i32 159
  %t277 = load ptr, ptr %t276, !tbaa !29
  %t280 = getelementptr %"compiler/typed:Versions", ptr %t277, i32 0, i32 4
  %t281 = load i64, ptr %l7, !tbaa !24
  %t284 = call %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t280, i64 %t281)
  store %"compiler/source:Span" %t284, ptr %l154
  br label %bb65
bb65:
  %t285 = getelementptr %"compiler/source:Span", ptr %l154, i32 0, i32 0
  %t286 = load i32, ptr %t285, !tbaa !23
  %t287 = load ptr, ptr %l145, !tbaa !29
  %t289 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etraceAt(ptr %v0, ptr %s12, ptr %t287, i32 %t286)
  store { i64, ptr } %t289, ptr %l156
  br label %bb66
bb66:
  %t290 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t291 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  %t292 = load i64, ptr %l143, !tbaa !24
  %t293 = call i64 @__olang_fmt_i64(ptr null, i64 %t292)
  %t294 = add i64 %t291, %t293
  %t295 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t296 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  %t297 = add i64 %t294, %t296
  %t298 = load i32, ptr %l144, !tbaa !23
  %t299 = sext i32 %t298 to i64
  %t300 = call i64 @__olang_fmt_i64(ptr null, i64 %t299)
  %t301 = add i64 %t297, %t300
  %t302 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t303 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  %t304 = add i64 %t301, %t303
  %t305 = load { i64, ptr }, ptr %l156, !tbaa !27
  %t306 = extractvalue { i64, ptr } %t305, 1
  %t307 = extractvalue { i64, ptr } %t305, 0
  %t308 = add i64 %t304, %t307
  %t309 = load i64, ptr %l141
  %t310 = inttoptr i64 %t309 to ptr
  %t311 = call ptr @__olang_scope_alloc(ptr %t310, i64 %t308)
  call void @olang_textcopy(ptr %t311, ptr %t290, i64 %t291)
  %t312 = getelementptr i8, ptr %t311, i64 %t291
  %t313 = call i64 @__olang_fmt_i64(ptr %t312, i64 %t292)
  %t314 = getelementptr i8, ptr %t312, i64 %t293
  call void @olang_textcopy(ptr %t314, ptr %t295, i64 %t296)
  %t315 = getelementptr i8, ptr %t314, i64 %t296
  %t316 = call i64 @__olang_fmt_i64(ptr %t315, i64 %t299)
  %t317 = getelementptr i8, ptr %t315, i64 %t300
  call void @olang_textcopy(ptr %t317, ptr %t302, i64 %t303)
  %t318 = getelementptr i8, ptr %t317, i64 %t303
  call void @olang_textcopy(ptr %t318, ptr %t306, i64 %t307)
  %t319 = insertvalue { i64, ptr } undef, i64 %t308, 0
  %t320 = insertvalue { i64, ptr } %t319, ptr %t311, 1
  %t322 = load i64, ptr %l141
  %t323 = inttoptr i64 %t322 to ptr
  %t324 = extractvalue { i64, ptr } %t320, 0
  %t325 = extractvalue { i64, ptr } %t320, 1
  %t326 = mul i64 %t324, 1
  %t327 = call ptr @__olang_scope_alloc(ptr %t323, i64 %t326)
  call void @llvm.memcpy.p0.p0.i64(ptr %t327, ptr %t325, i64 %t326, i1 false)
  %t328 = insertvalue { i64, ptr } undef, i64 %t324, 0
  %t329 = insertvalue { i64, ptr } %t328, ptr %t327, 1
  %t330 = load ptr, ptr %l140, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t330, { i64, ptr } %t329)
  br label %bb67
bb67:
  call void @__olang_scope_close(ptr %s12)
  br label %bb68
bb68:
  br label %bb69
bb69:
  call void @__olang_scope_close(ptr %s3)
  br label %bb70
bb70:
  %t332 = load i64, ptr %l5, !tbaa !24
  %t334 = add i64 %t332, 1
  store i64 %t334, ptr %l5, !tbaa !24
  br label %bb11
bb71:
  %t336 = load ptr, ptr %l0, !tbaa !29
  %t338 = getelementptr %"compiler/scope:Scoper", ptr %t336, i32 0, i32 172
  %t339 = load ptr, ptr %l0, !tbaa !29
  %t341 = getelementptr %"compiler/scope:Scoper", ptr %t339, i32 0, i32 27
  %t342 = load i64, ptr %t341, !tbaa !24
  %t345 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t338, i64 %t342)
  store i1 %t345, ptr %l165
  br label %bb72
bb72:
  %t346 = load i1, ptr %l165, !tbaa !21
  store i1 %t346, ptr %l13, !tbaa !21
  store i64 0, ptr %l14, !tbaa !24
  %t347 = load ptr, ptr %l0, !tbaa !29
  %t349 = getelementptr %"compiler/scope:Scoper", ptr %t347, i32 0, i32 164
  %t351 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eLen_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t349)
  store i64 %t351, ptr %l168
  br label %bb73
bb73:
  %t352 = load i64, ptr %l168, !tbaa !24
  store i64 %t352, ptr %l15, !tbaa !24
  store i64 1, ptr %l16, !tbaa !24
  %t353 = load i64, ptr %l15, !tbaa !24
  %t354 = load i64, ptr %l14, !tbaa !24
  %t357 = icmp sgt i64 %t353, %t354
  br i1 %t357, label %bb74, label %bb75
bb74:
  %t359 = load i64, ptr %l16, !tbaa !24
  %t361 = icmp sgt i64 %t359, 0
  br i1 %t361, label %bb76, label %bb77
bb75:
  store i64 0, ptr %l172, !tbaa !24
  br label %bb79
bb76:
  %t363 = load i64, ptr %l15, !tbaa !24
  %t364 = load i64, ptr %l14, !tbaa !24
  %t367 = sub i64 %t363, %t364
  %t368 = load i64, ptr %l16, !tbaa !24
  %t371 = add i64 %t367, %t368
  %t373 = sub i64 %t371, 1
  %t374 = load i64, ptr %l16, !tbaa !24
  %t377 = sdiv i64 %t373, %t374
  store i64 %t377, ptr %l175, !tbaa !24
  br label %bb78
bb77:
  store i64 0, ptr %l175, !tbaa !24
  br label %bb78
bb78:
  %t379 = load i64, ptr %l175, !tbaa !24
  store i64 %t379, ptr %l172, !tbaa !24
  br label %bb79
bb79:
  %t380 = load i64, ptr %l172, !tbaa !24
  store i64 %t380, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  br label %bb80
bb80:
  store %olang.scope zeroinitializer, ptr %s16
  %t381 = load i64, ptr %l18, !tbaa !24
  %t382 = load i64, ptr %l17, !tbaa !24
  %t385 = icmp slt i64 %t381, %t382
  %t387 = xor i1 %t385, true
  br i1 %t387, label %bb81, label %bb82
bb81:
  call void @__olang_scope_close(ptr %s16)
  br label %bb118
bb82:
  br label %bb83
bb83:
  %t389 = load i64, ptr %l14, !tbaa !24
  %t390 = load i64, ptr %l18, !tbaa !24
  %t391 = load i64, ptr %l16, !tbaa !24
  %t394 = mul i64 %t390, %t391
  %t397 = add i64 %t389, %t394
  store i64 %t397, ptr %l19, !tbaa !24
  %t399 = load ptr, ptr %l0, !tbaa !29
  %t401 = getelementptr %"compiler/scope:Scoper", ptr %t399, i32 0, i32 165
  %t402 = load i64, ptr %l19, !tbaa !24
  %t405 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t401, i64 %t402)
  store i1 %t405, ptr %l196
  br label %bb84
bb84:
  %t406 = load i1, ptr %l196, !tbaa !21
  %t407 = xor i1 %t406, true
  br i1 %t407, label %bb85, label %bb86
bb85:
  call void @__olang_scope_close(ptr %s16)
  br label %bb117
bb86:
  br label %bb87
bb87:
  %t409 = load ptr, ptr %l0, !tbaa !29
  %t411 = getelementptr %"compiler/scope:Scoper", ptr %t409, i32 0, i32 27
  %t412 = load i64, ptr %t411, !tbaa !24
  %t413 = load i64, ptr %l19, !tbaa !24
  %t416 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s16, i64 %t412, i64 %t413)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t416, ptr %l201
  br label %bb88
bb88:
  %t417 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l201
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t417, ptr %l20
  %t418 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e_2ector(ptr %s16, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t418, ptr %l202
  br label %bb89
bb89:
  %t419 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l202
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t419, ptr %l21
  %t420 = load i1, ptr %l13, !tbaa !21
  br i1 %t420, label %bb90, label %bb91
bb90:
  store %olang.scope zeroinitializer, ptr %s18
  %t422 = load ptr, ptr %l0, !tbaa !29
  %t424 = getelementptr %"compiler/scope:Scoper", ptr %t422, i32 0, i32 170
  %t425 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l20
  %t428 = call { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H484a2d6bc28fb22773868b400093b7cd(ptr %v0, ptr %v0, ptr %t424, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t425)
  %t429 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t428, 1
  %t430 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t428, 0
  store i32 %t430, ptr %l209
  %t431 = icmp ne i32 %t430, 0
  br i1 %t431, label %bb93, label %ok.432, !prof !99
ok.432:
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t429, ptr %l208
  br label %bb92
bb91:
  br label %bb107
bb92:
  %t434 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e(ptr %s18, ptr %l208)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t434, ptr %l211
  br label %bb95
bb93:
  br label %bb94
bb94:
  %t435 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t435, ptr %l212
  br label %bb96
bb95:
  %t436 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l211
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t436, ptr %l204
  br label %bb97
bb96:
  %t437 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l212
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t437, ptr %l204
  br label %bb97
bb97:
  %t438 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l204
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t438, ptr %l22
  store ptr %l22, ptr %l23, !tbaa !29
  store i64 0, ptr %l24, !tbaa !24
  br label %bb98
bb98:
  %t440 = load i64, ptr %l24, !tbaa !24
  store i64 %t440, ptr %l214, !tbaa !24
  %t441 = load ptr, ptr %l23, !tbaa !29
  %t443 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e_2eLen_3ccompiler_2fscope_3averAtom_3e(ptr %s18, ptr %t441)
  store i64 %t443, ptr %l216
  br label %bb99
bb99:
  %t444 = load i64, ptr %l214, !tbaa !24
  %t445 = load i64, ptr %l216, !tbaa !24
  %t446 = icmp slt i64 %t444, %t445
  %t448 = xor i1 %t446, true
  br i1 %t448, label %bb100, label %bb101
bb100:
  br label %bb106
bb101:
  br label %bb102
bb102:
  %t450 = load ptr, ptr %l23, !tbaa !29
  %t451 = load i64, ptr %l24, !tbaa !24
  %t454 = call %"compiler/scope:verAtom" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e_2eAt_3ccompiler_2fscope_3averAtom_3e(ptr %s18, ptr %t450, i64 %t451)
  store %"compiler/scope:verAtom" %t454, ptr %l221
  br label %bb103
bb103:
  %t455 = load %"compiler/scope:verAtom", ptr %l221
  call void @compiler_2fscope_2eaddAtom(ptr %s16, ptr %l21, %"compiler/scope:verAtom" %t455)
  br label %bb104
bb104:
  br label %bb105
bb105:
  %t459 = load i64, ptr %l24, !tbaa !24
  %t461 = add i64 %t459, 1
  store i64 %t461, ptr %l24, !tbaa !24
  br label %bb98
bb106:
  call void @__olang_scope_close(ptr %s18)
  br label %bb107
bb107:
  %t463 = load ptr, ptr %l0, !tbaa !29
  store ptr %t463, ptr %l226, !tbaa !29
  %t464 = load ptr, ptr %l0, !tbaa !29
  %t466 = getelementptr %"compiler/scope:Scoper", ptr %t464, i32 0, i32 164
  %t467 = load i64, ptr %l19, !tbaa !24
  %t470 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t466, i64 %t467)
  store { i64, [2 x i64] } %t470, ptr %l230
  br label %bb108
bb108:
  %t471 = load ptr, ptr %l226, !tbaa !29
  %t472 = load { i64, [2 x i64] }, ptr %l230
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etoAtoms(ptr %v0, ptr %s16, ptr %t471, { i64, [2 x i64] } %t472, ptr %l21)
  br label %bb109
bb109:
  %t474 = load ptr, ptr %l0, !tbaa !29
  %t476 = getelementptr %"compiler/scope:Scoper", ptr %t474, i32 0, i32 170
  %t477 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l20
  %t478 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H9f9f84ce166b58669472616a8f24fc59(ptr %v0, ptr %s16, ptr %t476, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t477, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t478)
  br label %bb110
bb110:
  %t482 = load ptr, ptr %l0, !tbaa !29
  %t484 = getelementptr %"compiler/scope:Scoper", ptr %t482, i32 0, i32 176
  %t485 = load i64, ptr %l19, !tbaa !24
  %t488 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t484, i64 %t485)
  store i1 %t488, ptr %l239
  br label %bb111
bb111:
  %t489 = load i1, ptr %l239, !tbaa !21
  br i1 %t489, label %bb112, label %bb113
bb112:
  %t490 = load ptr, ptr %l0, !tbaa !29
  %t492 = getelementptr %"compiler/scope:Scoper", ptr %t490, i32 0, i32 177
  %t493 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l20
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %t492, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t493, i1 true)
  br label %bb114
bb113:
  %t496 = load ptr, ptr %l0, !tbaa !29
  %t498 = getelementptr %"compiler/scope:Scoper", ptr %t496, i32 0, i32 177
  %t499 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l20
  %t502 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H8cf0101d1da75ad9e65d10673bedc6a2(ptr %v0, ptr %t498, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t499)
  store i1 %t502, ptr %l246
  br label %bb115
bb114:
  br label %bb116
bb115:
  br label %bb116
bb116:
  call void @__olang_scope_close(ptr %s16)
  br label %bb117
bb117:
  %t503 = load i64, ptr %l18, !tbaa !24
  %t505 = add i64 %t503, 1
  store i64 %t505, ptr %l18, !tbaa !24
  br label %bb80
bb118:
  %t507 = load ptr, ptr %l0, !tbaa !29
  %t509 = getelementptr %"compiler/scope:Scoper", ptr %t507, i32 0, i32 173
  %t510 = load i1, ptr %t509, !tbaa !21
  %t512 = xor i1 %t510, true
  br i1 %t512, label %bb119, label %bb120
bb119:
  br label %ret
bb120:
  br label %bb121
bb121:
  %t514 = load ptr, ptr %l0, !tbaa !29
  store ptr %t514, ptr %l252, !tbaa !29
  %t515 = load ptr, ptr %l252, !tbaa !29
  %t516 = getelementptr %"compiler/scope:Scoper", ptr %t515, i32 0, i32 184
  %t517 = load i64, ptr %t516, !tbaa !24
  %t519 = add i64 %t517, 1
  %t521 = load ptr, ptr %l252, !tbaa !29
  %t522 = getelementptr %"compiler/scope:Scoper", ptr %t521, i32 0, i32 184
  store i64 %t519, ptr %t522, !tbaa !24
  %t523 = load ptr, ptr %l0, !tbaa !29
  %t525 = getelementptr %"compiler/scope:Scoper", ptr %t523, i32 0, i32 148
  store i1 true, ptr %t525, !tbaa !21
  %t526 = load ptr, ptr %l0, !tbaa !29
  %t528 = getelementptr %"compiler/scope:Scoper", ptr %t526, i32 0, i32 28
  %t529 = load i1, ptr %t528, !tbaa !21
  br i1 %t529, label %bb122, label %bb123
bb122:
  %t531 = load ptr, ptr %l0, !tbaa !29
  %t533 = getelementptr %"compiler/scope:Scoper", ptr %t531, i32 0, i32 147
  %t534 = load i1, ptr %t533, !tbaa !21
  %t536 = xor i1 %t534, true
  store i1 %t536, ptr %l258, !tbaa !21
  br label %bb124
bb123:
  store i1 false, ptr %l258, !tbaa !21
  br label %bb124
bb124:
  %t538 = load i1, ptr %l258, !tbaa !21
  br i1 %t538, label %bb125, label %bb126
bb125:
  store %olang.scope zeroinitializer, ptr %s26
  %t539 = load ptr, ptr %l0, !tbaa !29
  store ptr %t539, ptr %l262, !tbaa !29
  %t540 = load ptr, ptr %l0, !tbaa !29
  %t542 = getelementptr %"compiler/scope:Scoper", ptr %t540, i32 0, i32 26
  %t543 = load ptr, ptr %t542, !tbaa !29
  %t545 = icmp eq ptr %t543, null
  br i1 %t545, label %bb127, label %bb128
bb126:
  br label %bb131
bb127:
  call void @__olang_check_failed(ptr @olang_loc_4d65b00d05d3c4f_6b3b0e5809785e3b)
  unreachable
bb128:
  br label %bb129
bb129:
  %t547 = load ptr, ptr %l0, !tbaa !29
  %t549 = getelementptr %"compiler/scope:Scoper", ptr %t547, i32 0, i32 26
  %t550 = load ptr, ptr %t549, !tbaa !29
  %t553 = getelementptr %"compiler/typed:Body", ptr %t550, i32 0, i32 4
  %t554 = load %"compiler/source:Span", ptr %t553
  %t555 = load ptr, ptr %l262, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egapAt(ptr %v0, ptr %s26, ptr %t555, %"compiler/source:Span" %t554, { i64, ptr } { i64 54, ptr getelementptr inbounds (<{ i64, [54 x i8] }>, ptr @.d13, i32 0, i32 1) })
  br label %bb130
bb130:
  call void @__olang_scope_close(ptr %s26)
  br label %bb131
bb131:
  br label %ret
ret:
  ret void
}

define dso_local { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewhereLives(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, [2 x i64] }
  %l7 = alloca { i64, [2 x i64] }
  %l16 = alloca { i64, [2 x i64] }
  %rv = alloca { i64, [2 x i64] }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 34
  %t4 = load i32, ptr %l1, !tbaa !23
  %t6 = sext i32 %t4 to i64
  %t9 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t3, i64 %t6)
  store { i64, [2 x i64] } %t9, ptr %l7
  br label %bb1
bb1:
  %t10 = load { i64, [2 x i64] }, ptr %l7
  store { i64, [2 x i64] } %t10, ptr %l2
  %t11 = load { i64, [2 x i64] }, ptr %l2
  %t13 = extractvalue { i64, [2 x i64] } %t11, 0
  %t14 = icmp eq i64 %t13, 0
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb2, label %bb3
bb2:
  %t18 = load { i64, [2 x i64] }, ptr %l2
  store { i64, [2 x i64] } %t18, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/scope:Scoper", ptr %t20, i32 0, i32 35
  %t23 = load i32, ptr %l1, !tbaa !23
  %t25 = sext i32 %t23 to i64
  %t28 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t22, i64 %t25)
  store { i64, [2 x i64] } %t28, ptr %l16
  br label %bb5
bb5:
  %t29 = load { i64, [2 x i64] }, ptr %l16
  store { i64, [2 x i64] } %t29, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRelatable({ i64, [2 x i64] } %a0) #0 {
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
  %t4 = icmp eq i64 %t3, 2
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb7
bb2:
  %t6 = load { i64, [2 x i64] }, ptr %l0
  %t8 = extractvalue { i64, [2 x i64] } %t6, 0
  %t9 = icmp eq i64 %t8, 4
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb7
bb4:
  %t11 = load { i64, [2 x i64] }, ptr %l0
  %t13 = extractvalue { i64, [2 x i64] } %t11, 0
  %t14 = icmp eq i64 %t13, 3
  br i1 %t14, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  store i1 true, ptr %l1, !tbaa !21
  br label %bb13
bb8:
  br i1 true, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  store i1 false, ptr %l1, !tbaa !21
  br label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_df7e42d0d720f8e0_ba1485f60a37606c)
  unreachable
bb13:
  %t16 = load i1, ptr %l1, !tbaa !21
  store i1 %t16, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2eisParamRead(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i1
  %l11 = alloca ptr
  %l12 = alloca i1
  %l21 = alloca ptr
  %l22 = alloca i1
  %l29 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
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
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb17
bb5:
  %t16 = load ptr, ptr %l2, !tbaa !29
  store ptr %t16, ptr %l11, !tbaa !29
  store i1 false, ptr %l12, !tbaa !21
  %t17 = load ptr, ptr %l11, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb6, label %bb7
bb6:
  %t20 = load ptr, ptr %l11, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 8}
  %t23 = icmp eq i64 %t21, 0
  store i1 %t23, ptr %l12, !tbaa !21
  br label %bb7
bb7:
  %t24 = load i1, ptr %l12, !tbaa !21
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t25 = load ptr, ptr %l2, !tbaa !29
  %t27 = getelementptr { i64, [4 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t27, i32 0, i32 2
  %t29 = load i32, ptr %t28
  store i32 %t29, ptr %l3, !tbaa !23
  br label %bb10
bb9:
  br label %bb11
bb10:
  %t31 = load i32, ptr %l3, !tbaa !23
  %t33 = sext i32 %t31 to i64
  %t34 = load i64, ptr %l1, !tbaa !24
  %t37 = icmp eq i64 %t33, %t34
  store i1 %t37, ptr %rv
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
  call void @__olang_check_failed(ptr @olang_loc_bca71f80792af732_46d2468b055fa9be)
  unreachable
bb16:
  br label %bb29
bb17:
  %t39 = load ptr, ptr %l0, !tbaa !29
  store ptr %t39, ptr %l21, !tbaa !29
  store i1 false, ptr %l22, !tbaa !21
  %t40 = load ptr, ptr %l21, !tbaa !29
  %t41 = icmp ne ptr %t40, null
  br i1 %t41, label %bb18, label %bb19
bb18:
  %t43 = load ptr, ptr %l21, !tbaa !29
  %t44 = load i64, ptr %t43, !range !{i64 0, i64 18}
  %t46 = icmp eq i64 %t44, 17
  store i1 %t46, ptr %l22, !tbaa !21
  br label %bb19
bb19:
  %t47 = load i1, ptr %l22, !tbaa !21
  br i1 %t47, label %bb20, label %bb21
bb20:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr { i64, [5 x i64] }, ptr %t48, i32 0, i32 1
  %t51 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t50, i32 0, i32 2
  %t52 = load ptr, ptr %t51
  store ptr %t52, ptr %l4, !tbaa !29
  br label %bb22
bb21:
  br label %bb24
bb22:
  %t54 = load ptr, ptr %l4, !tbaa !29
  %t55 = load i64, ptr %l1, !tbaa !24
  %t58 = call i1 @compiler_2fscope_2eisParamRead(ptr %v0, ptr %t54, i64 %t55)
  store i1 %t58, ptr %l29
  br label %bb23
bb23:
  %t59 = load i1, ptr %l29, !tbaa !21
  store i1 %t59, ptr %rv
  br label %ret
bb24:
  br i1 true, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb29
bb28:
  call void @__olang_check_failed(ptr @olang_loc_8c45af194e46a0b3_e5de6b081dd69cbf)
  unreachable
bb29:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fscope_2etempSite(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca i1
  %l14 = alloca ptr
  %l15 = alloca i1
  %l21 = alloca i64
  %l22 = alloca ptr
  %l23 = alloca i1
  %l30 = alloca i64
  %l31 = alloca ptr
  %l32 = alloca i1
  %l39 = alloca i64
  %rv = alloca i64
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 6
  store i1 %t8, ptr %l7, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l7, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t12, i32 0, i32 3
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l1, !tbaa !23
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t16 = load i32, ptr %l1, !tbaa !23
  %t18 = sext i32 %t16 to i64
  store i64 %t18, ptr %l5, !tbaa !24
  br label %bb32
bb6:
  %t20 = load ptr, ptr %l0, !tbaa !29
  store ptr %t20, ptr %l14, !tbaa !29
  store i1 false, ptr %l15, !tbaa !21
  %t21 = load ptr, ptr %l14, !tbaa !29
  %t22 = icmp ne ptr %t21, null
  br i1 %t22, label %bb7, label %bb8
bb7:
  %t24 = load ptr, ptr %l14, !tbaa !29
  %t25 = load i64, ptr %t24, !range !{i64 0, i64 8}
  %t27 = icmp eq i64 %t25, 3
  store i1 %t27, ptr %l15, !tbaa !21
  br label %bb8
bb8:
  %t28 = load i1, ptr %l15, !tbaa !21
  br i1 %t28, label %bb9, label %bb10
bb9:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr { i64, [4 x i64] }, ptr %t29, i32 0, i32 1
  %t32 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t31, i32 0, i32 2
  %t33 = load ptr, ptr %t32
  store ptr %t33, ptr %l2, !tbaa !29
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t35 = load ptr, ptr %l2, !tbaa !29
  %t37 = call i64 @compiler_2fscope_2etempSite(ptr %v0, ptr %t35)
  store i64 %t37, ptr %l21
  br label %bb12
bb12:
  %t38 = load i64, ptr %l21, !tbaa !24
  store i64 %t38, ptr %l5, !tbaa !24
  br label %bb32
bb13:
  %t39 = load ptr, ptr %l0, !tbaa !29
  store ptr %t39, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t40 = load ptr, ptr %l22, !tbaa !29
  %t41 = icmp ne ptr %t40, null
  br i1 %t41, label %bb14, label %bb15
bb14:
  %t43 = load ptr, ptr %l22, !tbaa !29
  %t44 = load i64, ptr %t43, !range !{i64 0, i64 8}
  %t46 = icmp eq i64 %t44, 4
  store i1 %t46, ptr %l23, !tbaa !21
  br label %bb15
bb15:
  %t47 = load i1, ptr %l23, !tbaa !21
  br i1 %t47, label %bb16, label %bb17
bb16:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr { i64, [4 x i64] }, ptr %t48, i32 0, i32 1
  %t51 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t50, i32 0, i32 2
  %t52 = load ptr, ptr %t51
  store ptr %t52, ptr %l3, !tbaa !29
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t54 = load ptr, ptr %l3, !tbaa !29
  %t56 = getelementptr %"compiler/typed:Elem", ptr %t54, i32 0, i32 0
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t59 = call i64 @compiler_2fscope_2etempSite(ptr %v0, ptr %t57)
  store i64 %t59, ptr %l30
  br label %bb19
bb19:
  %t60 = load i64, ptr %l30, !tbaa !24
  store i64 %t60, ptr %l5, !tbaa !24
  br label %bb32
bb20:
  %t61 = load ptr, ptr %l0, !tbaa !29
  store ptr %t61, ptr %l31, !tbaa !29
  store i1 false, ptr %l32, !tbaa !21
  %t62 = load ptr, ptr %l31, !tbaa !29
  %t63 = icmp ne ptr %t62, null
  br i1 %t63, label %bb21, label %bb22
bb21:
  %t65 = load ptr, ptr %l31, !tbaa !29
  %t66 = load i64, ptr %t65, !range !{i64 0, i64 8}
  %t68 = icmp eq i64 %t66, 5
  store i1 %t68, ptr %l32, !tbaa !21
  br label %bb22
bb22:
  %t69 = load i1, ptr %l32, !tbaa !21
  br i1 %t69, label %bb23, label %bb24
bb23:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr { i64, [4 x i64] }, ptr %t70, i32 0, i32 1
  %t73 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t72, i32 0, i32 2
  %t74 = load ptr, ptr %t73
  store ptr %t74, ptr %l4, !tbaa !29
  br label %bb25
bb24:
  br label %bb27
bb25:
  %t76 = load ptr, ptr %l4, !tbaa !29
  %t78 = getelementptr %"compiler/typed:Payload", ptr %t76, i32 0, i32 0
  %t79 = load ptr, ptr %t78, !tbaa !29
  %t81 = call i64 @compiler_2fscope_2etempSite(ptr %v0, ptr %t79)
  store i64 %t81, ptr %l39
  br label %bb26
bb26:
  %t82 = load i64, ptr %l39, !tbaa !24
  store i64 %t82, ptr %l5, !tbaa !24
  br label %bb32
bb27:
  br i1 true, label %bb28, label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb31
bb30:
  store i64 -1, ptr %l5, !tbaa !24
  br label %bb32
bb31:
  call void @__olang_check_failed(ptr @olang_loc_6c3c94894200ad68_65df54557dc7b93c)
  unreachable
bb32:
  %t83 = load i64, ptr %l5, !tbaa !24
  store i64 %t83, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fscope_2ewithin(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l7 = alloca i1
  %l9 = alloca i1
  %l10 = alloca ptr
  %l11 = alloca i1
  %l18 = alloca i1
  %l19 = alloca ptr
  %l20 = alloca i1
  %l28 = alloca i1
  %l29 = alloca ptr
  %l30 = alloca i1
  %l38 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t5 = call i1 @compiler_2fscope_2esamePlace(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  store i1 %t5, ptr %l7
  br label %bb1
bb1:
  %t6 = load i1, ptr %l7, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  store i1 true, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t8 = load ptr, ptr %l0, !tbaa !29
  store ptr %t8, ptr %l10, !tbaa !29
  store i1 false, ptr %l11, !tbaa !21
  %t9 = load ptr, ptr %l10, !tbaa !29
  %t10 = icmp ne ptr %t9, null
  br i1 %t10, label %bb5, label %bb6
bb5:
  %t12 = load ptr, ptr %l10, !tbaa !29
  %t13 = load i64, ptr %t12, !range !{i64 0, i64 8}
  %t15 = icmp eq i64 %t13, 3
  store i1 %t15, ptr %l11, !tbaa !21
  br label %bb6
bb6:
  %t16 = load i1, ptr %l11, !tbaa !21
  br i1 %t16, label %bb7, label %bb8
bb7:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr { i64, [4 x i64] }, ptr %t17, i32 0, i32 1
  %t20 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t19, i32 0, i32 2
  %t21 = load ptr, ptr %t20
  store ptr %t21, ptr %l2, !tbaa !29
  br label %bb9
bb8:
  br label %bb11
bb9:
  %t23 = load ptr, ptr %l2, !tbaa !29
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t27 = call i1 @compiler_2fscope_2ewithin(ptr %v0, ptr %v1, ptr %t23, ptr %t24)
  store i1 %t27, ptr %l18
  br label %bb10
bb10:
  %t28 = load i1, ptr %l18, !tbaa !21
  store i1 %t28, ptr %l9, !tbaa !21
  br label %bb30
bb11:
  %t29 = load ptr, ptr %l0, !tbaa !29
  store ptr %t29, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t30 = load ptr, ptr %l19, !tbaa !29
  %t31 = icmp ne ptr %t30, null
  br i1 %t31, label %bb12, label %bb13
bb12:
  %t33 = load ptr, ptr %l19, !tbaa !29
  %t34 = load i64, ptr %t33, !range !{i64 0, i64 8}
  %t36 = icmp eq i64 %t34, 4
  store i1 %t36, ptr %l20, !tbaa !21
  br label %bb13
bb13:
  %t37 = load i1, ptr %l20, !tbaa !21
  br i1 %t37, label %bb14, label %bb15
bb14:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr { i64, [4 x i64] }, ptr %t38, i32 0, i32 1
  %t41 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t40, i32 0, i32 2
  %t42 = load ptr, ptr %t41
  store ptr %t42, ptr %l3, !tbaa !29
  br label %bb16
bb15:
  br label %bb18
bb16:
  %t44 = load ptr, ptr %l3, !tbaa !29
  %t46 = getelementptr %"compiler/typed:Elem", ptr %t44, i32 0, i32 0
  %t47 = load ptr, ptr %t46, !tbaa !29
  %t48 = load ptr, ptr %l1, !tbaa !29
  %t51 = call i1 @compiler_2fscope_2ewithin(ptr %v0, ptr %v1, ptr %t47, ptr %t48)
  store i1 %t51, ptr %l28
  br label %bb17
bb17:
  %t52 = load i1, ptr %l28, !tbaa !21
  store i1 %t52, ptr %l9, !tbaa !21
  br label %bb30
bb18:
  %t53 = load ptr, ptr %l0, !tbaa !29
  store ptr %t53, ptr %l29, !tbaa !29
  store i1 false, ptr %l30, !tbaa !21
  %t54 = load ptr, ptr %l29, !tbaa !29
  %t55 = icmp ne ptr %t54, null
  br i1 %t55, label %bb19, label %bb20
bb19:
  %t57 = load ptr, ptr %l29, !tbaa !29
  %t58 = load i64, ptr %t57, !range !{i64 0, i64 8}
  %t60 = icmp eq i64 %t58, 5
  store i1 %t60, ptr %l30, !tbaa !21
  br label %bb20
bb20:
  %t61 = load i1, ptr %l30, !tbaa !21
  br i1 %t61, label %bb21, label %bb22
bb21:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr { i64, [4 x i64] }, ptr %t62, i32 0, i32 1
  %t65 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t64, i32 0, i32 2
  %t66 = load ptr, ptr %t65
  store ptr %t66, ptr %l4, !tbaa !29
  br label %bb23
bb22:
  br label %bb25
bb23:
  %t68 = load ptr, ptr %l4, !tbaa !29
  %t70 = getelementptr %"compiler/typed:Payload", ptr %t68, i32 0, i32 0
  %t71 = load ptr, ptr %t70, !tbaa !29
  %t72 = load ptr, ptr %l1, !tbaa !29
  %t75 = call i1 @compiler_2fscope_2ewithin(ptr %v0, ptr %v1, ptr %t71, ptr %t72)
  store i1 %t75, ptr %l38
  br label %bb24
bb24:
  %t76 = load i1, ptr %l38, !tbaa !21
  store i1 %t76, ptr %l9, !tbaa !21
  br label %bb30
bb25:
  br i1 true, label %bb26, label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb29
bb28:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb30
bb29:
  call void @__olang_check_failed(ptr @olang_loc_54cb93a6de18c312_16e8d0818733306)
  unreachable
bb30:
  %t77 = load i1, ptr %l9, !tbaa !21
  store i1 %t77, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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

declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
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

@.d0 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"blocks built into: " }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d1 = private constant <{ i64, [44 x i8] }> <{ i64 0, [44 x i8] c", of them plain (what folding could reach): " }>, align 8
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

define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3averAtom(ptr %a0, ptr %a1) #0 {
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
  %t2 = getelementptr %"compiler/scope:verAtom", ptr %t1, i32 0, i32 0
  %t3 = load i64, ptr %t2, !tbaa !24
  %t4 = load ptr, ptr %l1, !tbaa !29
  %t5 = getelementptr %"compiler/scope:verAtom", ptr %t4, i32 0, i32 0
  %t6 = load i64, ptr %t5, !tbaa !24
  %t9 = icmp eq i64 %t3, %t6
  br i1 %t9, label %bb2, label %bb1
bb1:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb10
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/scope:verAtom", ptr %t11, i32 0, i32 1
  %t13 = load i64, ptr %t12, !tbaa !24
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t15 = getelementptr %"compiler/scope:verAtom", ptr %t14, i32 0, i32 1
  %t16 = load i64, ptr %t15, !tbaa !24
  %t19 = icmp eq i64 %t13, %t16
  br i1 %t19, label %bb3, label %bb1
bb3:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/scope:verAtom", ptr %t21, i32 0, i32 2
  %t23 = load i64, ptr %t22, !tbaa !24
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t25 = getelementptr %"compiler/scope:verAtom", ptr %t24, i32 0, i32 2
  %t26 = load i64, ptr %t25, !tbaa !24
  %t29 = icmp eq i64 %t23, %t26
  br i1 %t29, label %bb4, label %bb1
bb4:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/scope:verAtom", ptr %t31, i32 0, i32 3
  %t33 = load i64, ptr %t32, !tbaa !24
  %t34 = load ptr, ptr %l1, !tbaa !29
  %t35 = getelementptr %"compiler/scope:verAtom", ptr %t34, i32 0, i32 3
  %t36 = load i64, ptr %t35, !tbaa !24
  %t39 = icmp eq i64 %t33, %t36
  br i1 %t39, label %bb5, label %bb1
bb5:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/scope:verAtom", ptr %t41, i32 0, i32 4
  %t43 = load i64, ptr %t42, !tbaa !24
  %t44 = load ptr, ptr %l1, !tbaa !29
  %t45 = getelementptr %"compiler/scope:verAtom", ptr %t44, i32 0, i32 4
  %t46 = load i64, ptr %t45, !tbaa !24
  %t49 = icmp eq i64 %t43, %t46
  br i1 %t49, label %bb6, label %bb1
bb6:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/scope:verAtom", ptr %t51, i32 0, i32 5
  %t53 = load i64, ptr %t52, !tbaa !24
  %t54 = load ptr, ptr %l1, !tbaa !29
  %t55 = getelementptr %"compiler/scope:verAtom", ptr %t54, i32 0, i32 5
  %t56 = load i64, ptr %t55, !tbaa !24
  %t59 = icmp eq i64 %t53, %t56
  br i1 %t59, label %bb7, label %bb1
bb7:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/scope:verAtom", ptr %t61, i32 0, i32 6
  %t63 = load i1, ptr %t62, !tbaa !21
  %t64 = load ptr, ptr %l1, !tbaa !29
  %t65 = getelementptr %"compiler/scope:verAtom", ptr %t64, i32 0, i32 6
  %t66 = load i1, ptr %t65, !tbaa !21
  %t69 = icmp eq i1 %t63, %t66
  br i1 %t69, label %bb8, label %bb1
bb8:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/scope:verAtom", ptr %t71, i32 0, i32 7
  %t73 = load i64, ptr %t72, !tbaa !24
  %t74 = load ptr, ptr %l1, !tbaa !29
  %t75 = getelementptr %"compiler/scope:verAtom", ptr %t74, i32 0, i32 7
  %t76 = load i64, ptr %t75, !tbaa !24
  %t79 = icmp eq i64 %t73, %t76
  br i1 %t79, label %bb9, label %bb1
bb9:
  br label %bb10
bb10:
  %t81 = load i1, ptr %l2, !tbaa !21
  store i1 %t81, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@.d2 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d3 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d4 = private constant <{ i64, [71 x i8] }> <{ i64 0, [71 x i8] c"a temporary stored where its slot's scope is not known here (O12, O23a)" }>, align 8
declare ptr @__olang_scope_of(ptr, ptr) noinline
@.d5 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"mut " }>, align 8
@.d6 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d7 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"version " }>, align 8
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
@.d8 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" came to " }>, align 8
define linkonce_odr void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2fscope_3aTerm(ptr %v0, ptr %a0, i64 %a1) #0 {
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
  %t2 = load i64, ptr %t1, !range !{i64 0, i64 7}
  switch i64 %t2, label %bb1 [ i64 0, label %bb2 i64 1, label %bb3 i64 2, label %bb4 i64 3, label %bb5 i64 4, label %bb6 i64 5, label %bb7 i64 6, label %bb8 ]
bb1:
  br label %ret
bb2:
  %t4 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t5 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t4, i64 %t5)
  br label %bb1
bb3:
  %t6 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t7 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t6, i64 %t7)
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t8, i64 %t9)
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr { i64, [2 x i64] }, ptr %t10, i32 0, i32 1
  %t12 = getelementptr { i32 }, ptr %t11, i32 0, i32 0
  %t13 = load i32, ptr %t12
  %t15 = sext i32 %t13 to i64
  %t16 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t17 = call i64 @__olang_fmt_i64(ptr %t16, i64 %t15)
  call void @__olang_sb_add(ptr %v0, i64 %t17)
  %t18 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t18, i64 %t19)
  br label %bb1
bb4:
  %t20 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t21 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t20, i64 %t21)
  %t22 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t22, i64 %t23)
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr { i64, [2 x i64] }, ptr %t24, i32 0, i32 1
  %t26 = getelementptr { i64 }, ptr %t25, i32 0, i32 0
  %t27 = load i64, ptr %t26
  %t29 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t30 = call i64 @__olang_fmt_i64(ptr %t29, i64 %t27)
  call void @__olang_sb_add(ptr %v0, i64 %t30)
  %t31 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t32 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t31, i64 %t32)
  br label %bb1
bb5:
  %t33 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t34 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t33, i64 %t34)
  br label %bb1
bb6:
  %t35 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t36 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t35, i64 %t36)
  %t37 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t38 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t37, i64 %t38)
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr { i64, [2 x i64] }, ptr %t39, i32 0, i32 1
  %t41 = getelementptr { i64, i64 }, ptr %t40, i32 0, i32 0
  %t42 = load i64, ptr %t41
  %t44 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t45 = call i64 @__olang_fmt_i64(ptr %t44, i64 %t42)
  call void @__olang_sb_add(ptr %v0, i64 %t45)
  %t46 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t47 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t46, i64 %t47)
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr { i64, [2 x i64] }, ptr %t48, i32 0, i32 1
  %t50 = getelementptr { i64, i64 }, ptr %t49, i32 0, i32 1
  %t51 = load i64, ptr %t50
  %t53 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t54 = call i64 @__olang_fmt_i64(ptr %t53, i64 %t51)
  call void @__olang_sb_add(ptr %v0, i64 %t54)
  %t55 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t56 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t55, i64 %t56)
  br label %bb1
bb7:
  %t57 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t58 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t57, i64 %t58)
  %t59 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t60 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t59, i64 %t60)
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr { i64, [2 x i64] }, ptr %t61, i32 0, i32 1
  %t63 = getelementptr { i64 }, ptr %t62, i32 0, i32 0
  %t64 = load i64, ptr %t63
  %t66 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t67 = call i64 @__olang_fmt_i64(ptr %t66, i64 %t64)
  call void @__olang_sb_add(ptr %v0, i64 %t67)
  %t68 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t69 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t68, i64 %t69)
  br label %bb1
bb8:
  %t70 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d23, i32 0, i32 1) }, 1
  %t71 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d23, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t70, i64 %t71)
  br label %bb1
ret:
  ret void
}

@.d9 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" | " }>, align 8
declare void @__olang_sb_done(ptr)
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@.d10 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"version " }>, align 8
@.d11 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c" not valid at " }>, align 8
@.d12 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" | " }>, align 8
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e(ptr %v0, ptr %a0) #0 {
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
  %t8 = mul i64 %t7, 64
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 64
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

@.d13 = private constant <{ i64, [54 x i8] }> <{ i64 0, [54 x i8] c"a reference local whose versions did not settle (O25i)" }>, align 8
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
declare ptr @__olang_sb_grow(ptr, i64) noinline
@.d14 = private unnamed_addr constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"scope.Term.None" }>, align 8
@.d15 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"scope.Term.Block" }>, align 8
@.d16 = private unnamed_addr constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d17 = private unnamed_addr constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d18 = private unnamed_addr constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"scope.Term.Var" }>, align 8
@.d19 = private unnamed_addr constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"scope.Term.Program" }>, align 8
@.d20 = private unnamed_addr constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"scope.Term.Derived" }>, align 8
@.d21 = private unnamed_addr constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d22 = private unnamed_addr constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"scope.Term.Set" }>, align 8
@.d23 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"scope.Term.Untraced" }>, align 8
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

declare noalias ptr @__olang_scope_alloc_slow(ptr, i64, i64) noinline
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

declare i1 @compiler_2fscope_2eflThroughRef(ptr %v0, ptr %a0)
declare i64 @compiler_2fscope_2eflRoot(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_883886568ed4caca_31f6a1dcc1a6d9de = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ePush_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fscope_2ecollectBlock(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v0, ptr %a0)
declare void @compiler_2fscope_2ecollectStmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fscope_2ecollectArm(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2ftyped_3aCapture_26__Hbce50ad940bb00a7deeff65a4c93e11e(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_40e1b9ce9703350b_4e76bb25ade4a65f = external constant [0 x i8]
@olang_loc_751fe83ccffcd5d0_cf7f8de089a85c24 = external constant [0 x i8]
@olang_loc_2ab82ae701676b61_1888e5291152cb15 = external constant [0 x i8]
@olang_loc_61be1b0fda526a24_254af50801a17418 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eLen_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eAt_3ccompiler_2ftyped_3aPlan_3e(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2eLen__Hdc799a0fe091f8e84d50200d058b631d(ptr %v0, ptr %a0)
declare %"compiler/typed:BlockInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2eAt_3ccompiler_2ftyped_3aBlockInfo_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_c4dcb08f8057e6b4_879f1d415f5e90f0 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esetEnd(ptr %v0, ptr %a0, i64 %a1)
declare { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_ade2525ec560ecac_5eadaea182574e0 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eLen_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ePush_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
@olang_loc_d8f2a28da3d637a2_5ae1fbc253d52bc6 = external constant [0 x i8]
declare ptr @compiler_2fscope_2etempOf(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eatCall(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_8c5cb00b3e3258a3_21ae247adf4ca1a7 = external constant [0 x i8]
declare %"compiler/scope:verAtom" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e_2eAt_3ccompiler_2fscope_3averAtom_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejudgeOut(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, { i64, [2 x i64] } %a2)
@G_2ecompiler_2fscope_2eObliged = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eoblige(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, { i64, [2 x i64] } %a2, i1 %a3)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eScopeArgsDisagree(ptr %v0)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/diagmsg:Msg" %a2)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epeekPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %a0)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2escopeOf(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2eDropHome(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
@olang_loc_e91a00981d6f64a8_cc82ef7defd2ad24 = external constant [0 x i8]
@olang_loc_7b1e363353e9e01f_5d568e34003a167b = external constant [0 x i8]
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2eisNameChar(i8 %a0)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare ptr @compiler_2fscope_2eunPassed(ptr %v0, ptr %v1, ptr %a0)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eplaceDecl(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_e3d7361eb9c064f6_d6d91699ddbb69ea = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__H165e1ff795edcbb725e28dde18fd1dc2(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisStruct(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, [1 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efieldMark(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ectorParamIndex(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@G_2ecompiler_2fscope_2ePosDerived = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\01\00\00" }>, align 8
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflExpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_6038e9a8843bd167_10c714601f259253 = external constant [0 x i8]
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflInto(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2, ptr %a3, i1 %a4, i1 %a5)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflPlaceRoot(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_c1fa5f0b83cd997f_623e25aaa52b89ab = external constant [0 x i8]
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eoutside(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflBlockOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecarries(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecarried(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ereturnedArrays(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflAdd(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2eflHas(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_86dbdc94d883d21d_a5f7ab2189e86539 = external constant [0 x i8]
@olang_loc_815b49be05c0135_ff7bc6f5d03d3901 = external constant [0 x i8]
@olang_loc_132784778ede3455_1ad64f1fb4961019 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elastName(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eLen_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %a0)
declare %"compiler/scope:rel" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eAt_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egiveBackPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eSpan(ptr %v0, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuildThroughUnknownScope(ptr %v0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eversionsDiffer(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eStoreIntoUnknownScope(ptr %v0)
@olang_loc_4b743cabd11a232a_8c47700ea8df566 = external constant [0 x i8]
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egapAt(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egiveBackExpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egiveBackDerived(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
@G_2ecompiler_2fscope_2eHolds = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@olang_loc_e2ea0fea769db7e4_aa8c1e0e7de89fc8 = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eliftable(ptr %v0, ptr %a0, i64 %a1)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %v0, i64 %a0, i64 %a1)
declare { i32, { i64, [2 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H568ce559fa980123a387c6ba9ed21aca(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egenResult(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eliftStorage(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFresh(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisNullLit(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estaticLiteral(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_13609328335a5af4_71f6842a5be0a9a0 = external constant [0 x i8]
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, [3 x i64] } %a2, %"compiler/diagmsg:Msg" %a3)
@olang_loc_2a83bf20490fb4f0_b79be661c23cb1e4 = external constant [0 x i8]
declare ptr @compiler_2ftyped_2eCall_2eOf(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeType(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRole(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eRoleCtor = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoteThroughResult(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, i64 %a3, { i64, ptr } %a4, i64 %a5)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emadeLocal(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
@olang_loc_c00f0eb027871792_20073d10539efd6 = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eloopElement(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_e2b2a689ed5c2c6a_2e02b8bd326f399e = external constant [0 x i8]
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewordAt(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
@olang_loc_9f5a8ccf03b4db04_630c918a623736e8 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteBindingWhere(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_H68cd31c3dbcdb47f3349b834dda1e07d(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisMethodCall(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eindexCall(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeName(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eresultVarOf(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_17e7add56c17a955_fd89ad37b1d5baa1 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteMakeWhere(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholds(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceArgs(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2eFnOwner(i64 %a0)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnsubst(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i32 %a3)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eYield(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFunc(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_7cb574562870c9ae_44cb25218e79651a = external constant [0 x i8]
@olang_loc_a5d7ffc0375a2adf_b8092e4cba9985db = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteDeclareWhere(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocExpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i1 %a3)
@G_2ecompiler_2fscope_2eFailsUnknown = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@olang_loc_7532eb5a793acb52_3a769c1ae1efb406 = external constant [0 x i8]
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efloorOf(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
@olang_loc_62e50b1d71054f53_eecbe9be4e2fbee7 = external constant [0 x i8]
@olang_loc_127b48cc431305b1_a1696d510fe190b5 = external constant [0 x i8]
declare i1 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eEncloses(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@G_2ecompiler_2fscope_2eFailsBlock = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@olang_loc_76ab01ddfcfbe309_8f18aa764587f91d = external constant [0 x i8]
@olang_loc_2849491c6333adae_c9e54b70540ea8ca = external constant [0 x i8]
@olang_loc_7e08cd2032342a6f_828e7ee85c3d130b = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egammaHolds(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, { i64, [2 x i64] } %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecaptureTerm(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopeVarsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShareOf(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efinds(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargRoot(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare { i64, [2 x i64] } @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2eFind(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efoundOr(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, { i64, [2 x i64] } %a2)
@olang_loc_da1486de58138450_28784370eb22bac = external constant [0 x i8]
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeSite(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2)
@olang_loc_554265ba1528b3d8_d73d8ae267adc184 = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisData(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_c484f993348186a9_88a471068962d75 = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emadeHere(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2ecopiedRead(ptr %v0, ptr %a0)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eregionOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2ftyped_2ePassesRefs(i32 %a0)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResultFrom(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehandedRegion(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eregionParam(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_6ccd45388b9650e6_c3dc20dea523dcba = external constant [0 x i8]
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleStmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleRooted(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2)
@olang_loc_a0f62e15f83dbcd2_e5e27d58af67db56 = external constant [0 x i8]
@olang_loc_566ec92d5eb42aa6_b52d725096b7c0ca = external constant [0 x i8]
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2earenaValue(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etailGiven(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, ptr %a3)
@olang_loc_95037a04ed425830_2b58d7c0cb40fd64 = external constant [0 x i8]
@olang_loc_a99f843f7bf434a0_94e1f929e5b915f4 = external constant [0 x i8]
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_4aed99841ab3b8b1_8d3edbdcac983025 = external constant [0 x i8]
@olang_loc_c7fdd76f48c1d89a_56d68a9de61a546e = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocBlock(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i1 %a3)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsGenerator(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_74f3c7016b68858a_f00072b6ce08b166 = external constant [0 x i8]
@G_2ecompiler_2fscope_2eUseOwn = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2fscope_2eownView(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueBlock(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i64 %a3, i64 %a4)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueExpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i64 %a3, i64 %a4)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueTarget(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i64 %a3, i64 %a4)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2euePlace(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i64 %a3, i64 %a4)
@olang_loc_32fd86c1b7051b0e_a69c29150a84755a = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e_2ector(ptr %v0, i64 %a0)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etoAtoms(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1, ptr %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e_2eLen_3ccompiler_2fscope_3averAtom_3e(ptr %v0, ptr %a0)
@olang_loc_e95d11079edfa6c5_f5aa1a3bf3a58b01 = external constant [0 x i8]
declare %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etraceAt(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eAt_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eopenAt(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2)
@olang_loc_95f67bc87c53621e_1cb39134fd046c7a = external constant [0 x i8]
declare { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H484a2d6bc28fb22773868b400093b7cd(ptr %v0, ptr %v1, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare void @compiler_2fscope_2eaddAtom(ptr %v0, ptr %a0, %"compiler/scope:verAtom" %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H9f9f84ce166b58669472616a8f24fc59(ptr %v0, ptr %v1, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, i1 %a2)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H8cf0101d1da75ad9e65d10673bedc6a2(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
@olang_loc_4d65b00d05d3c4f_6b3b0e5809785e3b = external constant [0 x i8]
@olang_loc_df7e42d0d720f8e0_ba1485f60a37606c = external constant [0 x i8]
@olang_loc_bca71f80792af732_46d2468b055fa9be = external constant [0 x i8]
@olang_loc_8c45af194e46a0b3_e5de6b081dd69cbf = external constant [0 x i8]
@olang_loc_6c3c94894200ad68_65df54557dc7b93c = external constant [0 x i8]
declare i1 @compiler_2fscope_2esamePlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_54cb93a6de18c312_16e8d0818733306 = external constant [0 x i8]
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ector(ptr %v0)

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
