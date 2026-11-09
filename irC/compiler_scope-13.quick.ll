source_filename = "compiler_scope-13.quick.ll"
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
%"compiler/scope:verAtom" = type { i64, i64, i64, i64, i64, i64, i1, i64 }
%"compiler/scope:Scoper" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { ptr, ptr }, { ptr, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, i64, i1, %"compiler/source:Span", %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/typed:Plan", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/source:Span", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, ptr, { i64, [2 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, [2 x i64] }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, [2 x i64] }, i1, %"compiler/source:Span", { i64, [2 x i64] }, i1, { i64, [2 x i64] }, i1, i1, i1, %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/scope:fnRecs", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, [2 x i64] }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, { i64, [2 x i64] }, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i64, i1, i32, i1, i1, i1, i1, i64, %"compiler/source:Span", i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i64, i1, i1, i1, i1, i64, i1, i1, i1, i1, i64, i1, i1, i1, i1, i64, %"compiler/source:Span", %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, ptr, { i64, ptr }, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"compiler/scope:Gap", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, i1, i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/typed:Plan" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:fnRecs" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:Gap" = type { i64, %"compiler/source:Span", { i64, ptr } }
%"compiler/scope:twinTab" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:If" = type { ptr, ptr, ptr }
%"compiler/typed:Join" = type { ptr, i1, { i64, ptr } }
%"compiler/typed:Promote" = type { ptr, i32 }
%"compiler/typed:Cond" = type { ptr, ptr, ptr }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/scope:Val" = type { i32, { i64, [2 x i64] } }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/scope:summary" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/scope:fnRecs", i1, i1, i1, i1 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" = type { ptr, i64 }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/scope:rel" = type { { i64, [2 x i64] }, { i64, [2 x i64] }, i1, %"compiler/source:Span", i64, i1, i1 }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/typed:Make" = type { i32, i64, { i64, ptr }, ptr, i32, i32, i1 }
%"compiler/typed:Versions" = type { ptr, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"compiler/scope:placedRow" = type { %"compiler/source:Span", i64 }
%"compiler/typed:SiteInfo" = type { i32, %"compiler/source:Span" }
%"compiler/typed:Slice" = type { ptr, ptr, ptr, i32 }
%"compiler/scope:fnRec" = type { i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"compiler/typed:Seq" = type { { i64, ptr }, ptr, i1 }
%"compiler/scope:markRead" = type { i64, i64, { i64, [1 x i64] } }
%"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d" = type { i64, %"compiler/scope:fnRecs" }
%"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" = type { i64, { i64, ptr } }
%"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd" = type { %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", %"compiler/scope:Placement" }
%"compiler/scope:Placement" = type { i64, i64, i64, i64, { i64, ptr }, i1 }
%"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" = type { i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f" = type { %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad" = type { %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", %"compiler/scope:fnRecs" }
define dso_local void @compiler_2fscope_2eaddAtom(ptr %v0, ptr %a0, %"compiler/scope:verAtom" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/scope:verAtom"
  %l4 = alloca i1
  store ptr %a0, ptr %l0
  store %"compiler/scope:verAtom" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load %"compiler/scope:verAtom", ptr %l1
  %t5 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e_2eHas_3ccompiler_2fscope_3averAtom_3e(ptr %v0, ptr %t1, %"compiler/scope:verAtom" %t2)
  store i1 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i1, ptr %l4, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load %"compiler/scope:verAtom", ptr %l1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e_2ePush_3ccompiler_2fscope_3averAtom_3e(ptr %v0, ptr %t9, %"compiler/scope:verAtom" %t10)
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

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eJudged(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l5 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %a0, i32 0, i32 12
  %t7 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t3, i64 %a1)
  store i1 %t7, ptr %l5
  br label %bb1
bb1:
  %t8 = load i1, ptr %l5, !tbaa !21
  store i1 %t8, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eTwinKey(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %a0, i32 0, i32 227
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/scope:twinTab", ptr %t4, i32 0, i32 2
  %t10 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_3e_2eAt__Hb06c5aa34d45867a1decef3b510ab43e(ptr %v0, ptr %v1, ptr %t6, i64 %a1)
  store { i64, ptr } %t10, ptr %l6
  br label %bb1
bb1:
  %t11 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t11, 0
  store i64 %t12, ptr %l7, !tbaa !24
  %t13 = load i64, ptr %l7, !tbaa !24
  %t14 = mul i64 %t13, 1
  %t15 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t14)
  %t16 = insertvalue { i64, ptr } undef, i64 %t13, 0
  %t17 = insertvalue { i64, ptr } %t16, ptr %t15, 1
  store { i64, ptr } %t17, ptr %l8, !tbaa !27
  %t18 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = load i64, ptr %l7, !tbaa !24
  %t23 = mul i64 %t22, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t19, ptr %t21, i64 %t23, i1 false)
  %t24 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t24, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ealiasBlock(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca i1
  %l10 = alloca i1
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca ptr
  %l27 = alloca { i64, ptr }
  %l30 = alloca ptr
  %l31 = alloca i1
  %l41 = alloca i64
  %l51 = alloca %"compiler/typed:Local"
  %l57 = alloca i1
  %l60 = alloca i1
  %l63 = alloca i1
  %l66 = alloca i1
  %l67 = alloca ptr
  %l77 = alloca %"compiler/typed:Local"
  %l79 = alloca i1
  %l80 = alloca i1
  %l81 = alloca ptr
  %l90 = alloca %"compiler/typed:Local"
  %l92 = alloca i1
  %l96 = alloca i64
  %l101 = alloca i64
  %l104 = alloca i1
  %l105 = alloca i1
  %l108 = alloca i1
  %l114 = alloca ptr
  %l115 = alloca i1
  %l127 = alloca ptr
  %l128 = alloca i1
  %l140 = alloca ptr
  %l141 = alloca i1
  %l146 = alloca ptr
  %l147 = alloca i1
  %l155 = alloca ptr
  %l156 = alloca i1
  %l165 = alloca ptr
  %l166 = alloca i1
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
  br label %bb106
bb6:
  br label %bb7
bb7:
  %t22 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t22, ptr %l27, !tbaa !27
  %t23 = load i64, ptr %l3, !tbaa !24
  %t25 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr ptr, ptr %t26, i64 %t23
  %t28 = load ptr, ptr %t27, !tbaa !39
  store ptr %t28, ptr %l5, !tbaa !29
  %t30 = load ptr, ptr %l5, !tbaa !29
  store ptr %t30, ptr %l30, !tbaa !29
  store i1 false, ptr %l31, !tbaa !21
  %t31 = load ptr, ptr %l30, !tbaa !29
  %t32 = icmp ne ptr %t31, null
  br i1 %t32, label %bb8, label %bb9
bb8:
  %t34 = load ptr, ptr %l30, !tbaa !29
  %t35 = load i64, ptr %t34, !range !{i64 0, i64 17}
  %t37 = icmp eq i64 %t35, 0
  store i1 %t37, ptr %l31, !tbaa !21
  br label %bb9
bb9:
  %t38 = load i1, ptr %l31, !tbaa !21
  br i1 %t38, label %bb10, label %bb11
bb10:
  %t39 = load ptr, ptr %l5, !tbaa !29
  %t41 = getelementptr { i64, [3 x i64] }, ptr %t39, i32 0, i32 1
  %t42 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t41, i32 0, i32 1
  %t43 = load i32, ptr %t42
  store i32 %t43, ptr %l6, !tbaa !23
  %t45 = load ptr, ptr %l5, !tbaa !29
  %t47 = getelementptr { i64, [3 x i64] }, ptr %t45, i32 0, i32 1
  %t48 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t47, i32 0, i32 2
  %t49 = load ptr, ptr %t48
  store ptr %t49, ptr %l7, !tbaa !29
  br label %bb12
bb11:
  br label %bb58
bb12:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = load i32, ptr %l6, !tbaa !23
  %t53 = load ptr, ptr %l7, !tbaa !29
  %t57 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eletRegion(ptr %v0, ptr %v1, ptr %t51, i32 %t52, ptr %t53)
  store i64 %t57, ptr %l41
  br label %bb13
bb13:
  %t58 = load i64, ptr %l41, !tbaa !24
  store i64 %t58, ptr %l8, !tbaa !24
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/scope:Scoper", ptr %t59, i32 0, i32 26
  %t62 = load ptr, ptr %t61, !tbaa !29
  %t64 = icmp eq ptr %t62, null
  br i1 %t64, label %bb14, label %bb15
bb14:
  call void @__olang_check_failed(ptr @olang_loc_94d65e4b75f62e06_97039da03323bd42)
  unreachable
bb15:
  br label %bb16
bb16:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/scope:Scoper", ptr %t66, i32 0, i32 26
  %t69 = load ptr, ptr %t68, !tbaa !29
  %t72 = getelementptr %"compiler/typed:Body", ptr %t69, i32 0, i32 7
  %t73 = load i32, ptr %l6, !tbaa !23
  %t75 = sext i32 %t73 to i64
  %t78 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t72, i64 %t75)
  store %"compiler/typed:Local" %t78, ptr %l51
  br label %bb17
bb17:
  %t79 = getelementptr %"compiler/typed:Local", ptr %l51, i32 0, i32 4
  %t80 = load i32, ptr %t79, !range !{i32 0, i32 7}
  %t82 = trunc i64 6 to i32
  %t83 = icmp eq i32 %t80, %t82
  store i1 %t83, ptr %l9, !tbaa !21
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load i32, ptr %l6, !tbaa !23
  %t88 = sext i32 %t86 to i64
  %t91 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisCursorLocal(ptr %v0, ptr %t85, i64 %t88)
  store i1 %t91, ptr %l57
  br label %bb18
bb18:
  %t92 = load i1, ptr %l57, !tbaa !21
  store i1 %t92, ptr %l10, !tbaa !21
  %t93 = load i64, ptr %l8, !tbaa !24
  %t95 = icmp sge i64 %t93, 0
  br i1 %t95, label %bb19, label %bb20
bb19:
  %t97 = load i1, ptr %l9, !tbaa !21
  %t99 = xor i1 %t97, true
  store i1 %t99, ptr %l60, !tbaa !21
  br label %bb21
bb20:
  store i1 false, ptr %l60, !tbaa !21
  br label %bb21
bb21:
  %t101 = load i1, ptr %l60, !tbaa !21
  br i1 %t101, label %bb22, label %bb23
bb22:
  %t102 = load i1, ptr %l10, !tbaa !21
  %t104 = xor i1 %t102, true
  store i1 %t104, ptr %l63, !tbaa !21
  br label %bb24
bb23:
  store i1 false, ptr %l63, !tbaa !21
  br label %bb24
bb24:
  %t106 = load i1, ptr %l63, !tbaa !21
  br i1 %t106, label %bb25, label %bb26
bb25:
  %t107 = load ptr, ptr %l0, !tbaa !29
  store ptr %t107, ptr %l67, !tbaa !29
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/scope:Scoper", ptr %t108, i32 0, i32 26
  %t111 = load ptr, ptr %t110, !tbaa !29
  %t113 = icmp eq ptr %t111, null
  br i1 %t113, label %bb27, label %bb28
bb26:
  store i1 false, ptr %l66, !tbaa !21
  br label %bb32
bb27:
  call void @__olang_check_failed(ptr @olang_loc_96f6f37c4f8350ed_c50a63a27885a929)
  unreachable
bb28:
  br label %bb29
bb29:
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t117 = getelementptr %"compiler/scope:Scoper", ptr %t115, i32 0, i32 26
  %t118 = load ptr, ptr %t117, !tbaa !29
  %t121 = getelementptr %"compiler/typed:Body", ptr %t118, i32 0, i32 7
  %t122 = load i32, ptr %l6, !tbaa !23
  %t124 = sext i32 %t122 to i64
  %t127 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t121, i64 %t124)
  store %"compiler/typed:Local" %t127, ptr %l77
  br label %bb30
bb30:
  %t128 = getelementptr %"compiler/typed:Local", ptr %l77, i32 0, i32 2
  %t129 = load i32, ptr %t128, !tbaa !23
  %t130 = load ptr, ptr %l67, !tbaa !29
  %t132 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t130, i32 %t129)
  store i1 %t132, ptr %l79
  br label %bb31
bb31:
  %t133 = load i1, ptr %l79, !tbaa !21
  store i1 %t133, ptr %l66, !tbaa !21
  br label %bb32
bb32:
  %t134 = load i1, ptr %l66, !tbaa !21
  br i1 %t134, label %bb33, label %bb34
bb33:
  %t135 = load ptr, ptr %l0, !tbaa !29
  store ptr %t135, ptr %l81, !tbaa !29
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t138 = getelementptr %"compiler/scope:Scoper", ptr %t136, i32 0, i32 26
  %t139 = load ptr, ptr %t138, !tbaa !29
  %t141 = icmp eq ptr %t139, null
  br i1 %t141, label %bb35, label %bb36
bb34:
  store i1 false, ptr %l80, !tbaa !21
  br label %bb40
bb35:
  call void @__olang_check_failed(ptr @olang_loc_96f6f37c4f8350ed_c50a63a27885a929)
  unreachable
bb36:
  br label %bb37
bb37:
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t145 = getelementptr %"compiler/scope:Scoper", ptr %t143, i32 0, i32 26
  %t146 = load ptr, ptr %t145, !tbaa !29
  %t149 = getelementptr %"compiler/typed:Body", ptr %t146, i32 0, i32 7
  %t150 = load i64, ptr %l8, !tbaa !24
  %t153 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t149, i64 %t150)
  store %"compiler/typed:Local" %t153, ptr %l90
  br label %bb38
bb38:
  %t154 = getelementptr %"compiler/typed:Local", ptr %l90, i32 0, i32 2
  %t155 = load i32, ptr %t154, !tbaa !23
  %t156 = load ptr, ptr %l81, !tbaa !29
  %t158 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t156, i32 %t155)
  store i1 %t158, ptr %l92
  br label %bb39
bb39:
  %t159 = load i1, ptr %l92, !tbaa !21
  store i1 %t159, ptr %l80, !tbaa !21
  br label %bb40
bb40:
  %t160 = load i1, ptr %l80, !tbaa !21
  br i1 %t160, label %bb41, label %bb42
bb41:
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t163 = getelementptr %"compiler/scope:Scoper", ptr %t161, i32 0, i32 122
  %t164 = load i64, ptr %l8, !tbaa !24
  %t167 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t163, i64 %t164)
  store i64 %t167, ptr %l96
  br label %bb43
bb42:
  br label %bb57
bb43:
  %t168 = load i64, ptr %l96, !tbaa !24
  %t169 = icmp sge i64 %t168, 0
  br i1 %t169, label %bb44, label %bb45
bb44:
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t173 = getelementptr %"compiler/scope:Scoper", ptr %t171, i32 0, i32 122
  %t174 = load i64, ptr %l8, !tbaa !24
  %t177 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t173, i64 %t174)
  store i64 %t177, ptr %l101
  br label %bb46
bb45:
  br label %bb47
bb46:
  %t178 = load i64, ptr %l101, !tbaa !24
  store i64 %t178, ptr %l8, !tbaa !24
  br label %bb47
bb47:
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t180 = load i64, ptr %l8, !tbaa !24
  %t183 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eregionKind(ptr %v0, ptr %t179, i64 %t180)
  store i1 %t183, ptr %l104
  br label %bb48
bb48:
  %t184 = load i1, ptr %l104, !tbaa !21
  br i1 %t184, label %bb49, label %bb50
bb49:
  store i1 true, ptr %l105, !tbaa !21
  br label %bb52
bb50:
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t186 = load i64, ptr %l8, !tbaa !24
  %t189 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisCursorLocal(ptr %v0, ptr %t185, i64 %t186)
  store i1 %t189, ptr %l108
  br label %bb51
bb51:
  %t190 = load i1, ptr %l108, !tbaa !21
  store i1 %t190, ptr %l105, !tbaa !21
  br label %bb52
bb52:
  %t191 = load i1, ptr %l105, !tbaa !21
  br i1 %t191, label %bb53, label %bb54
bb53:
  %t192 = load ptr, ptr %l0, !tbaa !29
  %t194 = getelementptr %"compiler/scope:Scoper", ptr %t192, i32 0, i32 122
  %t195 = load i32, ptr %l6, !tbaa !23
  %t197 = sext i32 %t195 to i64
  %t198 = load i64, ptr %l8, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t194, i64 %t197, i64 %t198)
  br label %bb55
bb54:
  br label %bb56
bb55:
  br label %bb56
bb56:
  br label %bb57
bb57:
  br label %bb104
bb58:
  %t202 = load ptr, ptr %l5, !tbaa !29
  store ptr %t202, ptr %l114, !tbaa !29
  store i1 false, ptr %l115, !tbaa !21
  %t203 = load ptr, ptr %l114, !tbaa !29
  %t204 = icmp ne ptr %t203, null
  br i1 %t204, label %bb59, label %bb60
bb59:
  %t206 = load ptr, ptr %l114, !tbaa !29
  %t207 = load i64, ptr %t206, !range !{i64 0, i64 17}
  %t209 = icmp eq i64 %t207, 3
  store i1 %t209, ptr %l115, !tbaa !21
  br label %bb60
bb60:
  %t210 = load i1, ptr %l115, !tbaa !21
  br i1 %t210, label %bb61, label %bb62
bb61:
  %t211 = load ptr, ptr %l5, !tbaa !29
  %t213 = getelementptr { i64, [3 x i64] }, ptr %t211, i32 0, i32 1
  %t214 = getelementptr { %"compiler/source:Span", ptr }, ptr %t213, i32 0, i32 1
  %t215 = load ptr, ptr %t214
  store ptr %t215, ptr %l11, !tbaa !29
  br label %bb63
bb62:
  br label %bb66
bb63:
  %t217 = load ptr, ptr %l0, !tbaa !29
  %t218 = load ptr, ptr %l11, !tbaa !29
  %t220 = getelementptr %"compiler/typed:If", ptr %t218, i32 0, i32 1
  %t221 = load ptr, ptr %t220, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ealiasBlock(ptr %v0, ptr %v1, ptr %t217, ptr %t221)
  br label %bb64
bb64:
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t226 = load ptr, ptr %l11, !tbaa !29
  %t228 = getelementptr %"compiler/typed:If", ptr %t226, i32 0, i32 2
  %t229 = load ptr, ptr %t228, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ealiasBlock(ptr %v0, ptr %v1, ptr %t225, ptr %t229)
  br label %bb65
bb65:
  br label %bb104
bb66:
  %t232 = load ptr, ptr %l5, !tbaa !29
  store ptr %t232, ptr %l127, !tbaa !29
  store i1 false, ptr %l128, !tbaa !21
  %t233 = load ptr, ptr %l127, !tbaa !29
  %t234 = icmp ne ptr %t233, null
  br i1 %t234, label %bb67, label %bb68
bb67:
  %t236 = load ptr, ptr %l127, !tbaa !29
  %t237 = load i64, ptr %t236, !range !{i64 0, i64 17}
  %t239 = icmp eq i64 %t237, 4
  store i1 %t239, ptr %l128, !tbaa !21
  br label %bb68
bb68:
  %t240 = load i1, ptr %l128, !tbaa !21
  br i1 %t240, label %bb69, label %bb70
bb69:
  %t241 = load ptr, ptr %l5, !tbaa !29
  %t243 = getelementptr { i64, [3 x i64] }, ptr %t241, i32 0, i32 1
  %t244 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t243, i32 0, i32 1
  %t245 = load ptr, ptr %t244
  store ptr %t245, ptr %l12, !tbaa !29
  %t247 = load ptr, ptr %l5, !tbaa !29
  %t249 = getelementptr { i64, [3 x i64] }, ptr %t247, i32 0, i32 1
  %t250 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t249, i32 0, i32 2
  %t251 = load ptr, ptr %t250
  store ptr %t251, ptr %l13, !tbaa !29
  br label %bb71
bb70:
  br label %bb74
bb71:
  %t253 = load ptr, ptr %l0, !tbaa !29
  %t254 = load ptr, ptr %l12, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ealiasBlock(ptr %v0, ptr %v1, ptr %t253, ptr %t254)
  br label %bb72
bb72:
  %t258 = load ptr, ptr %l0, !tbaa !29
  %t259 = load ptr, ptr %l13, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ealiasBlock(ptr %v0, ptr %v1, ptr %t258, ptr %t259)
  br label %bb73
bb73:
  br label %bb104
bb74:
  %t262 = load ptr, ptr %l5, !tbaa !29
  store ptr %t262, ptr %l140, !tbaa !29
  store i1 false, ptr %l141, !tbaa !21
  %t263 = load ptr, ptr %l140, !tbaa !29
  %t264 = icmp ne ptr %t263, null
  br i1 %t264, label %bb75, label %bb76
bb75:
  %t266 = load ptr, ptr %l140, !tbaa !29
  %t267 = load i64, ptr %t266, !range !{i64 0, i64 17}
  %t269 = icmp eq i64 %t267, 11
  store i1 %t269, ptr %l141, !tbaa !21
  br label %bb76
bb76:
  %t270 = load i1, ptr %l141, !tbaa !21
  br i1 %t270, label %bb77, label %bb78
bb77:
  %t271 = load ptr, ptr %l5, !tbaa !29
  %t273 = getelementptr { i64, [3 x i64] }, ptr %t271, i32 0, i32 1
  %t274 = getelementptr { %"compiler/source:Span", ptr }, ptr %t273, i32 0, i32 1
  %t275 = load ptr, ptr %t274
  store ptr %t275, ptr %l14, !tbaa !29
  br label %bb83
bb78:
  %t277 = load ptr, ptr %l5, !tbaa !29
  store ptr %t277, ptr %l146, !tbaa !29
  store i1 false, ptr %l147, !tbaa !21
  %t278 = load ptr, ptr %l146, !tbaa !29
  %t279 = icmp ne ptr %t278, null
  br i1 %t279, label %bb79, label %bb80
bb79:
  %t281 = load ptr, ptr %l146, !tbaa !29
  %t282 = load i64, ptr %t281, !range !{i64 0, i64 17}
  %t284 = icmp eq i64 %t282, 12
  store i1 %t284, ptr %l147, !tbaa !21
  br label %bb80
bb80:
  %t285 = load i1, ptr %l147, !tbaa !21
  br i1 %t285, label %bb81, label %bb82
bb81:
  %t286 = load ptr, ptr %l5, !tbaa !29
  %t288 = getelementptr { i64, [3 x i64] }, ptr %t286, i32 0, i32 1
  %t289 = getelementptr { %"compiler/source:Span", ptr }, ptr %t288, i32 0, i32 1
  %t290 = load ptr, ptr %t289
  store ptr %t290, ptr %l14, !tbaa !29
  br label %bb83
bb82:
  br label %bb85
bb83:
  %t292 = load ptr, ptr %l0, !tbaa !29
  %t293 = load ptr, ptr %l14, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ealiasBlock(ptr %v0, ptr %v1, ptr %t292, ptr %t293)
  br label %bb84
bb84:
  br label %bb104
bb85:
  %t297 = load ptr, ptr %l5, !tbaa !29
  store ptr %t297, ptr %l155, !tbaa !29
  store i1 false, ptr %l156, !tbaa !21
  %t298 = load ptr, ptr %l155, !tbaa !29
  %t299 = icmp ne ptr %t298, null
  br i1 %t299, label %bb86, label %bb87
bb86:
  %t301 = load ptr, ptr %l155, !tbaa !29
  %t302 = load i64, ptr %t301, !range !{i64 0, i64 17}
  %t304 = icmp eq i64 %t302, 13
  store i1 %t304, ptr %l156, !tbaa !21
  br label %bb87
bb87:
  %t305 = load i1, ptr %l156, !tbaa !21
  br i1 %t305, label %bb88, label %bb89
bb88:
  %t306 = load ptr, ptr %l5, !tbaa !29
  %t308 = getelementptr { i64, [3 x i64] }, ptr %t306, i32 0, i32 1
  %t309 = getelementptr { %"compiler/source:Span", ptr }, ptr %t308, i32 0, i32 1
  %t310 = load ptr, ptr %t309
  store ptr %t310, ptr %l15, !tbaa !29
  br label %bb90
bb89:
  br label %bb92
bb90:
  %t312 = load ptr, ptr %l0, !tbaa !29
  %t313 = load ptr, ptr %l15, !tbaa !29
  %t315 = getelementptr %"compiler/typed:Join", ptr %t313, i32 0, i32 0
  %t316 = load ptr, ptr %t315, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ealiasBlock(ptr %v0, ptr %v1, ptr %t312, ptr %t316)
  br label %bb91
bb91:
  br label %bb104
bb92:
  %t320 = load ptr, ptr %l5, !tbaa !29
  store ptr %t320, ptr %l165, !tbaa !29
  store i1 false, ptr %l166, !tbaa !21
  %t321 = load ptr, ptr %l165, !tbaa !29
  %t322 = icmp ne ptr %t321, null
  br i1 %t322, label %bb93, label %bb94
bb93:
  %t324 = load ptr, ptr %l165, !tbaa !29
  %t325 = load i64, ptr %t324, !range !{i64 0, i64 17}
  %t327 = icmp eq i64 %t325, 2
  store i1 %t327, ptr %l166, !tbaa !21
  br label %bb94
bb94:
  %t328 = load i1, ptr %l166, !tbaa !21
  br i1 %t328, label %bb95, label %bb96
bb95:
  %t329 = load ptr, ptr %l5, !tbaa !29
  %t331 = getelementptr { i64, [3 x i64] }, ptr %t329, i32 0, i32 1
  %t332 = getelementptr { %"compiler/source:Span", ptr }, ptr %t331, i32 0, i32 1
  %t333 = load ptr, ptr %t332
  store ptr %t333, ptr %l16, !tbaa !29
  br label %bb97
bb96:
  br label %bb99
bb97:
  %t335 = load ptr, ptr %l0, !tbaa !29
  %t336 = load ptr, ptr %l16, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ealiasExpr(ptr %v0, ptr %v1, ptr %t335, ptr %t336)
  br label %bb98
bb98:
  br label %bb104
bb99:
  br i1 true, label %bb100, label %bb101
bb100:
  br label %bb102
bb101:
  br label %bb103
bb102:
  br label %bb104
bb103:
  call void @__olang_check_failed(ptr @olang_loc_e45607aaa9337dcf_7e22bcf5356f305b)
  unreachable
bb104:
  br label %bb105
bb105:
  %t340 = load i64, ptr %l3, !tbaa !24
  %t342 = add i64 %t340, 1
  store i64 %t342, ptr %l3, !tbaa !24
  br label %bb4
bb106:
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargAt(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l18 = alloca ptr
  %l19 = alloca ptr
  %l20 = alloca i1
  %l28 = alloca ptr
  %l30 = alloca ptr
  %l31 = alloca ptr
  %l32 = alloca i1
  %l37 = alloca { i64, ptr }
  %l39 = alloca ptr
  %l47 = alloca { i64, ptr }
  %l48 = alloca i32
  %l53 = alloca ptr
  %l55 = alloca %"compiler/source:Span"
  %l58 = alloca ptr
  %l60 = alloca %"compiler/source:Span"
  %l69 = alloca i64
  %l72 = alloca i64
  %l95 = alloca i1
  %l96 = alloca { i64, ptr }
  %l100 = alloca i1
  %l101 = alloca { i64, ptr }
  %l107 = alloca i1
  %l110 = alloca i1
  %l111 = alloca { i64, ptr }
  %l115 = alloca i1
  %l117 = alloca i1
  %l123 = alloca i1
  %l124 = alloca { i64, ptr }
  %l128 = alloca i1
  %l135 = alloca %"compiler/source:Span"
  %l139 = alloca %"compiler/source:Span"
  %s0 = alloca %olang.scope
  %s6 = alloca %olang.scope
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
  %t6 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %v1, ptr %t1, ptr %t2)
  store ptr %t6, ptr %l18
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l18, !tbaa !29
  store ptr %t7, ptr %l2, !tbaa !29
  %t8 = load ptr, ptr %l2, !tbaa !29
  store ptr %t8, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t9 = load ptr, ptr %l19, !tbaa !29
  %t10 = icmp ne ptr %t9, null
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = load ptr, ptr %l19, !tbaa !29
  %t13 = load i64, ptr %t12, !range !{i64 0, i64 18}
  %t15 = icmp eq i64 %t13, 5
  store i1 %t15, ptr %l20, !tbaa !21
  br label %bb3
bb3:
  %t16 = load i1, ptr %l20, !tbaa !21
  br i1 %t16, label %bb4, label %bb5
bb4:
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t19 = getelementptr { i64, [5 x i64] }, ptr %t17, i32 0, i32 1
  %t20 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t19, i32 0, i32 2
  %t21 = load ptr, ptr %t20
  store ptr %t21, ptr %l3, !tbaa !29
  br label %bb6
bb5:
  br label %bb8
bb6:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load ptr, ptr %l3, !tbaa !29
  %t26 = getelementptr %"compiler/typed:Promote", ptr %t24, i32 0, i32 0
  %t27 = load ptr, ptr %t26, !tbaa !29
  store ptr %t27, ptr %l28, !tbaa !29
  %t29 = load ptr, ptr %l28, !tbaa !29
  %t30 = call ptr @__olang_scope_of(ptr %t29, ptr null)
  %t31 = ptrtoint ptr %t30 to i64
  %t33 = inttoptr i64 %t31 to ptr
  %t35 = load ptr, ptr %l28, !tbaa !29
  %t36 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %t33, ptr %s0, ptr %t23, ptr %t35)
  store ptr %t36, ptr %l30
  br label %bb7
bb7:
  %t37 = load ptr, ptr %l30, !tbaa !29
  store ptr %t37, ptr %l2, !tbaa !29
  br label %bb13
bb8:
  br i1 true, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_896b3e52356ae049_f1e25ca94b788215)
  unreachable
bb13:
  %t38 = load ptr, ptr %l2, !tbaa !29
  store ptr %t38, ptr %l31, !tbaa !29
  store i1 false, ptr %l32, !tbaa !21
  %t39 = load ptr, ptr %l31, !tbaa !29
  %t40 = icmp ne ptr %t39, null
  br i1 %t40, label %bb14, label %bb15
bb14:
  %t42 = load ptr, ptr %l31, !tbaa !29
  %t43 = load i64, ptr %t42, !range !{i64 0, i64 18}
  %t45 = icmp eq i64 %t43, 11
  store i1 %t45, ptr %l32, !tbaa !21
  br label %bb15
bb15:
  %t46 = load i1, ptr %l32, !tbaa !21
  br i1 %t46, label %bb16, label %bb17
bb16:
  %t47 = load ptr, ptr %l2, !tbaa !29
  %t49 = getelementptr { i64, [5 x i64] }, ptr %t47, i32 0, i32 1
  %t50 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t49, i32 0, i32 2
  %t51 = load ptr, ptr %t50
  store ptr %t51, ptr %l4, !tbaa !29
  br label %bb18
bb17:
  br label %bb67
bb18:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/scope:Scoper", ptr %t53, i32 0, i32 11
  store ptr %t55, ptr %l39, !tbaa !29
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/scope:Scoper", ptr %t56, i32 0, i32 26
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t61 = icmp eq ptr %t59, null
  br i1 %t61, label %bb19, label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_5c964c9b753026f1_283bdb5675168efd)
  unreachable
bb20:
  br label %bb21
bb21:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/scope:Scoper", ptr %t63, i32 0, i32 26
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t69 = getelementptr %"compiler/typed:Body", ptr %t66, i32 0, i32 3
  %t70 = load i64, ptr %t69, !tbaa !24
  %t71 = load ptr, ptr %l39, !tbaa !29
  %t73 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %v0, ptr %v0, ptr %t71, i64 %t70)
  %t74 = extractvalue { i32, { i64, ptr } } %t73, 1
  %t75 = extractvalue { i32, { i64, ptr } } %t73, 0
  store i32 %t75, ptr %l48
  %t76 = icmp ne i32 %t75, 0
  br i1 %t76, label %bb23, label %ok.77, !prof !99
ok.77:
  store { i64, ptr } %t74, ptr %l47
  br label %bb22
bb22:
  %t78 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t78, ptr %l37, !tbaa !27
  br label %bb25
bb23:
  br label %bb24
bb24:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d0, i32 0, i32 1) }, ptr %l37, !tbaa !27
  br label %bb25
bb25:
  %t79 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t79, ptr %l5, !tbaa !27
  %t80 = load ptr, ptr %l4, !tbaa !29
  %t82 = getelementptr %"compiler/typed:Cond", ptr %t80, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !29
  %t85 = icmp eq ptr %t83, null
  br i1 %t85, label %bb26, label %bb27
bb26:
  call void @__olang_check_failed(ptr @olang_loc_b702fb1875409afc_cfbcfdec164d6e28)
  unreachable
bb27:
  br label %bb28
bb28:
  %t87 = load ptr, ptr %l4, !tbaa !29
  %t89 = getelementptr %"compiler/typed:Cond", ptr %t87, i32 0, i32 1
  %t90 = load ptr, ptr %t89, !tbaa !29
  store ptr %t90, ptr %l53, !tbaa !29
  %t91 = load ptr, ptr %l53, !tbaa !29
  %t92 = call ptr @__olang_scope_of(ptr %t91, ptr null)
  %t93 = ptrtoint ptr %t92 to i64
  %t95 = inttoptr i64 %t93 to ptr
  %t96 = load ptr, ptr %l53, !tbaa !29
  %t97 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %t95, ptr %t96)
  store %"compiler/source:Span" %t97, ptr %l55
  br label %bb29
bb29:
  %t98 = getelementptr %"compiler/source:Span", ptr %l55, i32 0, i32 1
  %t99 = load i32, ptr %t98, !tbaa !23
  %t101 = sext i32 %t99 to i64
  store i64 %t101, ptr %l6, !tbaa !24
  %t103 = load ptr, ptr %l2, !tbaa !29
  store ptr %t103, ptr %l58, !tbaa !29
  %t104 = load ptr, ptr %l58, !tbaa !29
  %t105 = call ptr @__olang_scope_of(ptr %t104, ptr null)
  %t106 = ptrtoint ptr %t105 to i64
  %t108 = inttoptr i64 %t106 to ptr
  %t109 = load ptr, ptr %l58, !tbaa !29
  %t110 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %t108, ptr %t109)
  store %"compiler/source:Span" %t110, ptr %l60
  br label %bb30
bb30:
  %t111 = getelementptr %"compiler/source:Span", ptr %l60, i32 0, i32 1
  %t112 = load i32, ptr %t111, !tbaa !23
  %t114 = sext i32 %t112 to i64
  %t116 = load i64, ptr %l6, !tbaa !24
  store i64 %t116, ptr %l8, !tbaa !24
  %t120 = sub i64 %t114, 1
  store i64 %t120, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t122 = load i64, ptr %l9, !tbaa !24
  %t123 = load i64, ptr %l8, !tbaa !24
  %t126 = icmp sgt i64 %t122, %t123
  br i1 %t126, label %bb31, label %bb32
bb31:
  %t128 = load i64, ptr %l10, !tbaa !24
  %t130 = icmp sgt i64 %t128, 0
  br i1 %t130, label %bb33, label %bb34
bb32:
  store i64 0, ptr %l69, !tbaa !24
  br label %bb36
bb33:
  %t132 = load i64, ptr %l9, !tbaa !24
  %t133 = load i64, ptr %l8, !tbaa !24
  %t136 = sub i64 %t132, %t133
  %t137 = load i64, ptr %l10, !tbaa !24
  %t140 = add i64 %t136, %t137
  %t142 = sub i64 %t140, 1
  %t143 = load i64, ptr %l10, !tbaa !24
  %t146 = sdiv i64 %t142, %t143
  store i64 %t146, ptr %l72, !tbaa !24
  br label %bb35
bb34:
  store i64 0, ptr %l72, !tbaa !24
  br label %bb35
bb35:
  %t148 = load i64, ptr %l72, !tbaa !24
  store i64 %t148, ptr %l69, !tbaa !24
  br label %bb36
bb36:
  %t149 = load i64, ptr %l69, !tbaa !24
  store i64 %t149, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb37
bb37:
  %t150 = load i64, ptr %l12, !tbaa !24
  %t151 = load i64, ptr %l11, !tbaa !24
  %t154 = icmp slt i64 %t150, %t151
  %t156 = xor i1 %t154, true
  br i1 %t156, label %bb38, label %bb39
bb38:
  br label %bb66
bb39:
  br label %bb40
bb40:
  %t158 = load i64, ptr %l8, !tbaa !24
  %t159 = load i64, ptr %l12, !tbaa !24
  %t160 = load i64, ptr %l10, !tbaa !24
  %t163 = mul i64 %t159, %t160
  %t166 = add i64 %t158, %t163
  store i64 %t166, ptr %l13, !tbaa !24
  %t168 = load i64, ptr %l13, !tbaa !24
  %t170 = add i64 %t168, 2
  %t171 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t173 = extractvalue { i64, ptr } %t171, 0
  %t176 = icmp sle i64 %t170, %t173
  br i1 %t176, label %bb41, label %bb42
bb41:
  %t178 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t178, ptr %l96, !tbaa !27
  %t179 = load i64, ptr %l13, !tbaa !24
  %t181 = getelementptr { i64, ptr }, ptr %l96, i32 0, i32 1
  %t182 = load ptr, ptr %t181, !tbaa !27
  %t183 = getelementptr i8, ptr %t182, i64 %t179
  %t184 = load i8, ptr %t183, !tbaa !32
  %t186 = icmp eq i8 %t184, 105
  store i1 %t186, ptr %l95, !tbaa !21
  br label %bb43
bb42:
  store i1 false, ptr %l95, !tbaa !21
  br label %bb43
bb43:
  %t188 = load i1, ptr %l95, !tbaa !21
  br i1 %t188, label %bb44, label %bb45
bb44:
  %t189 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t189, ptr %l101, !tbaa !27
  %t190 = load i64, ptr %l13, !tbaa !24
  %t192 = add i64 %t190, 1
  %t194 = getelementptr { i64, ptr }, ptr %l101, i32 0, i32 1
  %t195 = load ptr, ptr %t194, !tbaa !27
  %t196 = getelementptr i8, ptr %t195, i64 %t192
  %t197 = load i8, ptr %t196, !tbaa !32
  %t199 = icmp eq i8 %t197, 102
  store i1 %t199, ptr %l100, !tbaa !21
  br label %bb46
bb45:
  store i1 false, ptr %l100, !tbaa !21
  br label %bb46
bb46:
  %t201 = load i1, ptr %l100, !tbaa !21
  br i1 %t201, label %bb47, label %bb48
bb47:
  %t204 = load i64, ptr %l13, !tbaa !24
  %t206 = icmp eq i64 %t204, 0
  br i1 %t206, label %bb49, label %bb50
bb48:
  store i1 false, ptr %l107, !tbaa !21
  br label %bb53
bb49:
  store i1 true, ptr %l110, !tbaa !21
  br label %bb52
bb50:
  %t208 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t208, ptr %l111, !tbaa !27
  %t209 = load i64, ptr %l13, !tbaa !24
  %t211 = sub i64 %t209, 1
  %t213 = getelementptr { i64, ptr }, ptr %l111, i32 0, i32 1
  %t214 = load ptr, ptr %t213, !tbaa !27
  %t215 = getelementptr i8, ptr %t214, i64 %t211
  %t216 = load i8, ptr %t215, !tbaa !32
  %t218 = call i1 @compiler_2fscope_2eisNameChar(i8 %t216)
  store i1 %t218, ptr %l115
  br label %bb51
bb51:
  %t219 = load i1, ptr %l115, !tbaa !21
  %t220 = xor i1 %t219, true
  store i1 %t220, ptr %l110, !tbaa !21
  br label %bb52
bb52:
  %t222 = load i1, ptr %l110, !tbaa !21
  store i1 %t222, ptr %l107, !tbaa !21
  br label %bb53
bb53:
  %t223 = load i1, ptr %l107, !tbaa !21
  br i1 %t223, label %bb54, label %bb55
bb54:
  %t224 = load i64, ptr %l13, !tbaa !24
  %t226 = add i64 %t224, 2
  %t227 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t229 = extractvalue { i64, ptr } %t227, 0
  %t232 = icmp sge i64 %t226, %t229
  br i1 %t232, label %bb56, label %bb57
bb55:
  store i1 false, ptr %l117, !tbaa !21
  br label %bb60
bb56:
  store i1 true, ptr %l123, !tbaa !21
  br label %bb59
bb57:
  %t234 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t234, ptr %l124, !tbaa !27
  %t235 = load i64, ptr %l13, !tbaa !24
  %t237 = add i64 %t235, 2
  %t239 = getelementptr { i64, ptr }, ptr %l124, i32 0, i32 1
  %t240 = load ptr, ptr %t239, !tbaa !27
  %t241 = getelementptr i8, ptr %t240, i64 %t237
  %t242 = load i8, ptr %t241, !tbaa !32
  %t244 = call i1 @compiler_2fscope_2eisNameChar(i8 %t242)
  store i1 %t244, ptr %l128
  br label %bb58
bb58:
  %t245 = load i1, ptr %l128, !tbaa !21
  %t246 = xor i1 %t245, true
  store i1 %t246, ptr %l123, !tbaa !21
  br label %bb59
bb59:
  %t248 = load i1, ptr %l123, !tbaa !21
  store i1 %t248, ptr %l117, !tbaa !21
  br label %bb60
bb60:
  %t249 = load i1, ptr %l117, !tbaa !21
  br i1 %t249, label %bb61, label %bb62
bb61:
  store %olang.scope zeroinitializer, ptr %s6
  %t250 = load i64, ptr %l13, !tbaa !24
  %t252 = trunc i64 %t250 to i32
  %t253 = load i64, ptr %l13, !tbaa !24
  %t255 = add i64 %t253, 2
  %t257 = trunc i64 %t255 to i32
  %t260 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s6, i32 %t252, i32 %t257)
  store %"compiler/source:Span" %t260, ptr %l135
  br label %bb63
bb62:
  br label %bb64
bb63:
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  %t261 = load %"compiler/source:Span", ptr %l135
  store %"compiler/source:Span" %t261, ptr %rv
  br label %ret
bb64:
  br label %bb65
bb65:
  %t262 = load i64, ptr %l12, !tbaa !24
  %t264 = add i64 %t262, 1
  store i64 %t264, ptr %l12, !tbaa !24
  br label %bb37
bb66:
  br label %bb72
bb67:
  br i1 true, label %bb68, label %bb69
bb68:
  br label %bb70
bb69:
  br label %bb71
bb70:
  br label %bb72
bb71:
  call void @__olang_check_failed(ptr @olang_loc_3a30563fd2608f92_b50195cfbcc90de)
  unreachable
bb72:
  %t266 = load ptr, ptr %l1, !tbaa !29
  %t268 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t266)
  store %"compiler/source:Span" %t268, ptr %l139
  br label %bb73
bb73:
  call void @__olang_scope_close(ptr %s0)
  %t269 = load %"compiler/source:Span", ptr %l139
  store %"compiler/source:Span" %t269, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eassignedWhole(ptr %v0, ptr %a0, i64 %a1) #0 {
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
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 15
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
  %t14 = getelementptr %"compiler/scope:Scoper", ptr %t12, i32 0, i32 15
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
  %t73 = getelementptr %"compiler/scope:Scoper", ptr %t71, i32 0, i32 16
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

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebindingUnknown(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca ptr
  %l4 = alloca i64
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca i1
  %l15 = alloca ptr
  %l17 = alloca i32
  %l18 = alloca i1
  %l21 = alloca ptr
  %l23 = alloca i32
  %l25 = alloca { i64, [1 x i64] }
  %l29 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, [2 x i64] } %a2, ptr %l2
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
  store ptr %t14, ptr %l3, !tbaa !29
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t18, i32 0, i32 3
  %t20 = load i64, ptr %t19
  store i64 %t20, ptr %l4, !tbaa !24
  br label %bb5
bb4:
  br label %bb31
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  store ptr %t22, ptr %l15, !tbaa !29
  %t23 = load ptr, ptr %l3, !tbaa !29
  %t25 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t23)
  store i32 %t25, ptr %l17
  br label %bb6
bb6:
  %t26 = load ptr, ptr %l15, !tbaa !29
  %t27 = load i32, ptr %l17, !tbaa !23
  %t28 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisStruct(ptr %v0, ptr %t26, i32 %t27)
  store i1 %t28, ptr %l18
  br label %bb7
bb7:
  %t29 = load i1, ptr %l18, !tbaa !21
  %t30 = xor i1 %t29, true
  br i1 %t30, label %bb8, label %bb9
bb8:
  store i1 false, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t33 = load ptr, ptr %l0, !tbaa !29
  store ptr %t33, ptr %l21, !tbaa !29
  %t34 = load ptr, ptr %l3, !tbaa !29
  %t36 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t34)
  store i32 %t36, ptr %l23
  br label %bb11
bb11:
  %t37 = load i64, ptr %l4, !tbaa !24
  %t38 = load ptr, ptr %l21, !tbaa !29
  %t39 = load i32, ptr %l23, !tbaa !23
  %t41 = call { i64, [1 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efieldMark(ptr %v0, ptr %t38, i32 %t39, i64 %t37)
  store { i64, [1 x i64] } %t41, ptr %l25
  br label %bb12
bb12:
  %t42 = load { i64, [1 x i64] }, ptr %l25
  %t45 = extractvalue { i64, [1 x i64] } %t42, 0
  %t46 = icmp eq i64 %t45, 2
  br i1 %t46, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb21
bb16:
  br i1 true, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store i1 false, ptr %rv
  br label %ret
bb20:
  call void @__olang_check_failed(ptr @olang_loc_ac0d17f36fa4a139_f3b1184fd7456b0d)
  unreachable
bb21:
  %t49 = load { i64, [2 x i64] }, ptr %l2
  %t51 = extractvalue { i64, [2 x i64] } %t49, 0
  %t52 = icmp eq i64 %t51, 4
  br i1 %t52, label %bb22, label %bb23
bb22:
  %t54 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t55 = getelementptr { i64, i64 }, ptr %t54, i32 0, i32 0
  %t56 = load i64, ptr %t55
  store i64 %t56, ptr %l6, !tbaa !24
  br label %bb24
bb23:
  br label %bb25
bb24:
  %t58 = load i64, ptr %l6, !tbaa !24
  %t60 = icmp slt i64 %t58, 0
  store i1 %t60, ptr %l29, !tbaa !21
  br label %bb30
bb25:
  br i1 true, label %bb26, label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb29
bb28:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb30
bb29:
  call void @__olang_check_failed(ptr @olang_loc_7c9efa997924b168_5c902c6ea22cd1dc)
  unreachable
bb30:
  %t62 = load i1, ptr %l29, !tbaa !21
  store i1 %t62, ptr %rv
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
  call void @__olang_check_failed(ptr @olang_loc_3ccd1f5784e4c843_987dbe246adf0a17)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
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
  %l19 = alloca ptr
  %l20 = alloca i1
  %l28 = alloca ptr
  %l29 = alloca i1
  %l43 = alloca ptr
  %l44 = alloca i1
  %l53 = alloca ptr
  %l54 = alloca i1
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
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t16 = getelementptr { i64, [4 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t16, i32 0, i32 2
  %t18 = load ptr, ptr %t17
  store ptr %t18, ptr %l2, !tbaa !29
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load ptr, ptr %l2, !tbaa !29
  %t23 = load i64, ptr @G_2ecompiler_2fscope_2eBndOther, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %t20, ptr %t21, i64 %t23)
  br label %bb9
bb9:
  br label %bb44
bb10:
  %t27 = load ptr, ptr %l1, !tbaa !29
  store ptr %t27, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t28 = load ptr, ptr %l19, !tbaa !29
  %t29 = icmp ne ptr %t28, null
  br i1 %t29, label %bb11, label %bb12
bb11:
  %t31 = load ptr, ptr %l19, !tbaa !29
  %t32 = load i64, ptr %t31, !range !{i64 0, i64 8}
  %t34 = icmp eq i64 %t32, 3
  store i1 %t34, ptr %l20, !tbaa !21
  br label %bb12
bb12:
  %t35 = load i1, ptr %l20, !tbaa !21
  br i1 %t35, label %bb13, label %bb14
bb13:
  %t36 = load ptr, ptr %l1, !tbaa !29
  %t38 = getelementptr { i64, [4 x i64] }, ptr %t36, i32 0, i32 1
  %t39 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t38, i32 0, i32 2
  %t40 = load ptr, ptr %t39
  store ptr %t40, ptr %l3, !tbaa !29
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndPlace(ptr %v0, ptr %v1, ptr %t42, ptr %t43)
  br label %bb16
bb16:
  br label %bb44
bb17:
  %t47 = load ptr, ptr %l1, !tbaa !29
  store ptr %t47, ptr %l28, !tbaa !29
  store i1 false, ptr %l29, !tbaa !21
  %t48 = load ptr, ptr %l28, !tbaa !29
  %t49 = icmp ne ptr %t48, null
  br i1 %t49, label %bb18, label %bb19
bb18:
  %t51 = load ptr, ptr %l28, !tbaa !29
  %t52 = load i64, ptr %t51, !range !{i64 0, i64 8}
  %t54 = icmp eq i64 %t52, 4
  store i1 %t54, ptr %l29, !tbaa !21
  br label %bb19
bb19:
  %t55 = load i1, ptr %l29, !tbaa !21
  br i1 %t55, label %bb20, label %bb21
bb20:
  %t56 = load ptr, ptr %l1, !tbaa !29
  %t58 = getelementptr { i64, [4 x i64] }, ptr %t56, i32 0, i32 1
  %t59 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t58, i32 0, i32 2
  %t60 = load ptr, ptr %t59
  store ptr %t60, ptr %l4, !tbaa !29
  br label %bb22
bb21:
  br label %bb25
bb22:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load ptr, ptr %l4, !tbaa !29
  %t65 = getelementptr %"compiler/typed:Elem", ptr %t63, i32 0, i32 0
  %t66 = load ptr, ptr %t65, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndPlace(ptr %v0, ptr %v1, ptr %t62, ptr %t66)
  br label %bb23
bb23:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load ptr, ptr %l4, !tbaa !29
  %t73 = getelementptr %"compiler/typed:Elem", ptr %t71, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !29
  %t76 = load i64, ptr @G_2ecompiler_2fscope_2eBndOther, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %t70, ptr %t74, i64 %t76)
  br label %bb24
bb24:
  br label %bb44
bb25:
  %t80 = load ptr, ptr %l1, !tbaa !29
  store ptr %t80, ptr %l43, !tbaa !29
  store i1 false, ptr %l44, !tbaa !21
  %t81 = load ptr, ptr %l43, !tbaa !29
  %t82 = icmp ne ptr %t81, null
  br i1 %t82, label %bb26, label %bb27
bb26:
  %t84 = load ptr, ptr %l43, !tbaa !29
  %t85 = load i64, ptr %t84, !range !{i64 0, i64 8}
  %t87 = icmp eq i64 %t85, 5
  store i1 %t87, ptr %l44, !tbaa !21
  br label %bb27
bb27:
  %t88 = load i1, ptr %l44, !tbaa !21
  br i1 %t88, label %bb28, label %bb29
bb28:
  %t89 = load ptr, ptr %l1, !tbaa !29
  %t91 = getelementptr { i64, [4 x i64] }, ptr %t89, i32 0, i32 1
  %t92 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t91, i32 0, i32 2
  %t93 = load ptr, ptr %t92
  store ptr %t93, ptr %l5, !tbaa !29
  br label %bb30
bb29:
  br label %bb32
bb30:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t96 = load ptr, ptr %l5, !tbaa !29
  %t98 = getelementptr %"compiler/typed:Payload", ptr %t96, i32 0, i32 0
  %t99 = load ptr, ptr %t98, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndPlace(ptr %v0, ptr %v1, ptr %t95, ptr %t99)
  br label %bb31
bb31:
  br label %bb44
bb32:
  %t103 = load ptr, ptr %l1, !tbaa !29
  store ptr %t103, ptr %l53, !tbaa !29
  store i1 false, ptr %l54, !tbaa !21
  %t104 = load ptr, ptr %l53, !tbaa !29
  %t105 = icmp ne ptr %t104, null
  br i1 %t105, label %bb33, label %bb34
bb33:
  %t107 = load ptr, ptr %l53, !tbaa !29
  %t108 = load i64, ptr %t107, !range !{i64 0, i64 8}
  %t110 = icmp eq i64 %t108, 6
  store i1 %t110, ptr %l54, !tbaa !21
  br label %bb34
bb34:
  %t111 = load i1, ptr %l54, !tbaa !21
  br i1 %t111, label %bb35, label %bb36
bb35:
  %t112 = load ptr, ptr %l1, !tbaa !29
  %t114 = getelementptr { i64, [4 x i64] }, ptr %t112, i32 0, i32 1
  %t115 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t114, i32 0, i32 2
  %t116 = load ptr, ptr %t115
  store ptr %t116, ptr %l6, !tbaa !29
  br label %bb37
bb36:
  br label %bb39
bb37:
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t119 = load ptr, ptr %l6, !tbaa !29
  %t121 = load i64, ptr @G_2ecompiler_2fscope_2eBndOther, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %t118, ptr %t119, i64 %t121)
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
  call void @__olang_check_failed(ptr @olang_loc_bd4ca23a40cfc0db_43a814c1b1d9691f)
  unreachable
bb44:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebodyOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca i1
  %rv = alloca i64
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 5}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [3 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { i32 }, ptr %t12, i32 0, i32 0
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t16 = load i32, ptr %l2, !tbaa !23
  %t18 = sext i32 %t16 to i64
  store i64 %t18, ptr %l3, !tbaa !24
  br label %bb11
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i64 -1, ptr %l3, !tbaa !24
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_1cbcbb68212d18c9_a0b41c71999484fd)
  unreachable
bb11:
  %t20 = load i64, ptr %l3, !tbaa !24
  store i64 %t20, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuildSite(ptr %v0, ptr %a0, i32 %a1, { i64, [2 x i64] } %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca { i64, [2 x i64] }
  %l7 = alloca i1
  %l16 = alloca i1
  %l18 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca ptr
  %l22 = alloca { i64, [2 x i64] }
  %l24 = alloca ptr
  %l30 = alloca { i64, [2 x i64] }
  %l31 = alloca { i64, [2 x i64] }
  %l34 = alloca i1
  %l36 = alloca { i64, ptr }
  %l38 = alloca i64
  %l41 = alloca { i64, [2 x i64] }
  %l43 = alloca i1
  %l44 = alloca { i64, [2 x i64] }
  %l47 = alloca { i64, [2 x i64] }
  %l49 = alloca { i64, ptr }
  %l51 = alloca i64
  %l54 = alloca { i64, [2 x i64] }
  %l55 = alloca ptr
  %l56 = alloca { i64, [2 x i64] }
  %l57 = alloca %"compiler/source:Span"
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store { i64, [2 x i64] } %a2, ptr %l2
  store %"compiler/source:Span" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l1, !tbaa !23
  %t3 = icmp slt i32 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb3
bb2:
  %t5 = load i32, ptr %l1, !tbaa !23
  %t7 = sext i32 %t5 to i64
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/scope:Scoper", ptr %t8, i32 0, i32 33
  %t11 = getelementptr %"compiler/typed:Plan", ptr %t10, i32 0, i32 0
  %t12 = load { i64, ptr }, ptr %t11, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t12, 0
  %t17 = icmp sge i64 %t7, %t14
  store i1 %t17, ptr %l7, !tbaa !21
  br label %bb3
bb3:
  %t19 = load i1, ptr %l7, !tbaa !21
  br i1 %t19, label %bb4, label %bb5
bb4:
  br label %ret
bb5:
  br label %bb6
bb6:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load { i64, [2 x i64] }, ptr %l2
  %t24 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efinds(ptr %v0, ptr %t20, { i64, [2 x i64] } %t21)
  store i1 %t24, ptr %l16
  br label %bb7
bb7:
  %t25 = load i1, ptr %l16, !tbaa !21
  br i1 %t25, label %bb8, label %bb9
bb8:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/scope:Scoper", ptr %t26, i32 0, i32 33
  %t29 = getelementptr %"compiler/typed:Plan", ptr %t28, i32 0, i32 0
  %t30 = load { i64, ptr }, ptr %t29, !tbaa !27
  store { i64, ptr } %t30, ptr %l18, !tbaa !27
  %t31 = load i32, ptr %l1, !tbaa !23
  %t33 = sext i32 %t31 to i64
  store i64 %t33, ptr %l20, !tbaa !24
  %t34 = load ptr, ptr %l0, !tbaa !29
  store ptr %t34, ptr %l21, !tbaa !29
  %t35 = load { i64, [2 x i64] }, ptr %l2
  store { i64, [2 x i64] } %t35, ptr %l22
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/scope:Scoper", ptr %t36, i32 0, i32 33
  store ptr %t38, ptr %l24, !tbaa !29
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/scope:Scoper", ptr %t39, i32 0, i32 64
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t44 = icmp eq ptr %t42, null
  br i1 %t44, label %bb10, label %bb11
bb9:
  br label %bb15
bb10:
  call void @__olang_check_failed(ptr @olang_loc_3e89652ff7706bd0_4686e7e94f816f94)
  unreachable
bb11:
  br label %bb12
bb12:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/scope:Scoper", ptr %t46, i32 0, i32 64
  %t49 = load ptr, ptr %t48, !tbaa !29
  %t50 = load ptr, ptr %l24, !tbaa !29
  %t52 = call { i64, [2 x i64] } @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2eFind(ptr %v0, ptr %v0, ptr %t50, ptr %t49)
  store { i64, [2 x i64] } %t52, ptr %l30
  br label %bb13
bb13:
  %t53 = load ptr, ptr %l21, !tbaa !29
  %t54 = load { i64, [2 x i64] }, ptr %l22
  %t55 = load { i64, [2 x i64] }, ptr %l30
  %t56 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efoundOr(ptr %v0, ptr %t53, { i64, [2 x i64] } %t54, { i64, [2 x i64] } %t55)
  store { i64, [2 x i64] } %t56, ptr %l31
  br label %bb14
bb14:
  %t57 = load { i64, [2 x i64] }, ptr %l31
  %t58 = load i64, ptr %l20, !tbaa !24
  %t59 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !27
  %t61 = getelementptr { i64, [2 x i64] }, ptr %t60, i64 %t58
  store { i64, [2 x i64] } %t57, ptr %t61
  br label %ret
bb15:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load { i64, [2 x i64] }, ptr %l2
  %t66 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecapPassed(ptr %v0, ptr %t62, { i64, [2 x i64] } %t63)
  store i1 %t66, ptr %l34
  br label %bb16
bb16:
  %t67 = load i1, ptr %l34, !tbaa !21
  br i1 %t67, label %bb17, label %bb18
bb17:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/scope:Scoper", ptr %t68, i32 0, i32 33
  %t71 = getelementptr %"compiler/typed:Plan", ptr %t70, i32 0, i32 0
  %t72 = load { i64, ptr }, ptr %t71, !tbaa !27
  store { i64, ptr } %t72, ptr %l36, !tbaa !27
  %t73 = load i32, ptr %l1, !tbaa !23
  %t75 = sext i32 %t73 to i64
  store i64 %t75, ptr %l38, !tbaa !24
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t77 = load { i64, [2 x i64] }, ptr %l2
  %t80 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ederivedScope(ptr %v0, ptr %t76, { i64, [2 x i64] } %t77, i64 -1)
  store { i64, [2 x i64] } %t80, ptr %l41
  br label %bb19
bb18:
  br label %bb20
bb19:
  %t81 = load { i64, [2 x i64] }, ptr %l41
  %t82 = load i64, ptr %l38, !tbaa !24
  %t83 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t84 = load ptr, ptr %t83, !tbaa !27
  %t85 = getelementptr { i64, [2 x i64] }, ptr %t84, i64 %t82
  store { i64, [2 x i64] } %t81, ptr %t85
  br label %ret
bb20:
  %t86 = load { i64, [2 x i64] }, ptr %l2
  %t88 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t86)
  store i1 %t88, ptr %l43
  br label %bb21
bb21:
  %t89 = load i1, ptr %l43, !tbaa !21
  br i1 %t89, label %bb22, label %bb23
bb22:
  %t90 = load { i64, [2 x i64] }, ptr %l2
  store { i64, [2 x i64] } %t90, ptr %l44
  br label %bb25
bb23:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehere(ptr %v0, ptr %t92)
  store { i64, [2 x i64] } %t94, ptr %l47
  br label %bb24
bb24:
  %t95 = load { i64, [2 x i64] }, ptr %l47
  store { i64, [2 x i64] } %t95, ptr %l44
  br label %bb25
bb25:
  %t96 = load { i64, [2 x i64] }, ptr %l44
  store { i64, [2 x i64] } %t96, ptr %l4
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/scope:Scoper", ptr %t97, i32 0, i32 33
  %t100 = getelementptr %"compiler/typed:Plan", ptr %t99, i32 0, i32 0
  %t101 = load { i64, ptr }, ptr %t100, !tbaa !27
  store { i64, ptr } %t101, ptr %l49, !tbaa !27
  %t102 = load i32, ptr %l1, !tbaa !23
  %t104 = sext i32 %t102 to i64
  store i64 %t104, ptr %l51, !tbaa !24
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t106 = load { i64, [2 x i64] }, ptr %l4
  %t109 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2escopeOf(ptr %v0, ptr %t105, { i64, [2 x i64] } %t106)
  store { i64, [2 x i64] } %t109, ptr %l54
  br label %bb26
bb26:
  %t110 = load { i64, [2 x i64] }, ptr %l54
  %t111 = load i64, ptr %l51, !tbaa !24
  %t112 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !27
  %t114 = getelementptr { i64, [2 x i64] }, ptr %t113, i64 %t111
  store { i64, [2 x i64] } %t110, ptr %t114
  %t115 = load ptr, ptr %l0, !tbaa !29
  store ptr %t115, ptr %l55, !tbaa !29
  %t116 = load { i64, [2 x i64] }, ptr %l4
  store { i64, [2 x i64] } %t116, ptr %l56
  %t117 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t117, ptr %l57
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = getelementptr %"compiler/scope:Scoper", ptr %t118, i32 0, i32 26
  %t121 = load ptr, ptr %t120, !tbaa !29
  %t123 = icmp eq ptr %t121, null
  br i1 %t123, label %bb27, label %bb28
bb27:
  call void @__olang_check_failed(ptr @olang_loc_fa10e11083db12f_27cbee13329baa3)
  unreachable
bb28:
  br label %bb29
bb29:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = getelementptr %"compiler/scope:Scoper", ptr %t125, i32 0, i32 26
  %t128 = load ptr, ptr %t127, !tbaa !29
  %t131 = getelementptr %"compiler/typed:Body", ptr %t128, i32 0, i32 3
  %t132 = load i64, ptr %t131, !tbaa !24
  %t133 = load %"compiler/source:Span", ptr %l3
  %t134 = load ptr, ptr %l55, !tbaa !29
  %t135 = load { i64, [2 x i64] }, ptr %l56
  %t136 = load %"compiler/source:Span", ptr %l57
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuildsInto(ptr %v0, ptr %t134, { i64, [2 x i64] } %t135, %"compiler/source:Span" %t136, i64 %t132, %"compiler/source:Span" %t133)
  br label %bb30
bb30:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecallBuilds(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i32
  %l7 = alloca i1
  %l12 = alloca i32
  %l21 = alloca i64
  %l29 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholds(ptr %v0, ptr %t1, i32 %a2)
  store i1 %t5, ptr %l7
  br label %bb1
bb1:
  %t6 = load i1, ptr %l7, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t14 = call i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeType(ptr %v0, ptr %v1, ptr %t10, ptr %a1)
  store i32 %t14, ptr %l12
  br label %bb5
bb5:
  %t15 = load i32, ptr %l12, !tbaa !23
  store i32 %t15, ptr %l3, !tbaa !23
  %t16 = load i32, ptr %l3, !tbaa !23
  %t17 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t20 = icmp eq i32 %t16, %t17
  br i1 %t20, label %bb6, label %bb7
bb6:
  store i1 true, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/scope:Scoper", ptr %t23, i32 0, i32 0
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t28 = getelementptr %"compiler/generic:Program", ptr %t26, i32 0, i32 2
  %t29 = load i32, ptr %l3, !tbaa !23
  %t32 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRole(ptr %v0, ptr %t28, i32 %t29)
  store i64 %t32, ptr %l21
  br label %bb9
bb9:
  %t33 = load i64, ptr @G_2ecompiler_2ftypes_2eRoleCtor, !tbaa !24
  %t34 = load i64, ptr %l21, !tbaa !24
  %t36 = icmp eq i64 %t34, %t33
  br i1 %t36, label %bb10, label %bb11
bb10:
  store i1 true, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/scope:Scoper", ptr %t39, i32 0, i32 0
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t44 = getelementptr %"compiler/generic:Program", ptr %t42, i32 0, i32 2
  %t45 = load i32, ptr %l3, !tbaa !23
  %t48 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResultFrom(ptr %v0, ptr %t44, i32 %t45, i64 0)
  store i64 %t48, ptr %l29
  br label %bb13
bb13:
  %t49 = load i64, ptr %l29, !tbaa !24
  %t52 = icmp slt i64 %t49, 0
  store i1 %t52, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecarriedPlace(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l7 = alloca i64
  %l10 = alloca i1
  %l13 = alloca i1
  %l17 = alloca ptr
  %l18 = alloca i1
  %l27 = alloca ptr
  %l28 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = call i64 @compiler_2fscope_2eflRoot(ptr %v1, ptr %t1)
  store i64 %t3, ptr %l7
  br label %bb1
bb1:
  %t4 = load i64, ptr %l7, !tbaa !24
  store i64 %t4, ptr %l3, !tbaa !24
  %t5 = load i64, ptr %l3, !tbaa !24
  %t7 = icmp sge i64 %t5, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load ptr, ptr %l2, !tbaa !29
  %t10 = load i64, ptr %l3, !tbaa !24
  %t13 = call i1 @compiler_2fscope_2eflHas(ptr %v2, ptr %t9, i64 %t10)
  store i1 %t13, ptr %l13
  br label %bb4
bb3:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb5
bb4:
  %t14 = load i1, ptr %l13, !tbaa !21
  %t15 = xor i1 %t14, true
  store i1 %t15, ptr %l10, !tbaa !21
  br label %bb5
bb5:
  %t17 = load i1, ptr %l10, !tbaa !21
  br i1 %t17, label %bb6, label %bb7
bb6:
  %t18 = load ptr, ptr %l2, !tbaa !29
  %t19 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v2, ptr %t18, i64 %t19)
  br label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb9
bb9:
  %t22 = load ptr, ptr %l1, !tbaa !29
  store ptr %t22, ptr %l17, !tbaa !29
  store i1 false, ptr %l18, !tbaa !21
  %t23 = load ptr, ptr %l17, !tbaa !29
  %t24 = icmp ne ptr %t23, null
  br i1 %t24, label %bb10, label %bb11
bb10:
  %t26 = load ptr, ptr %l17, !tbaa !29
  %t27 = load i64, ptr %t26, !range !{i64 0, i64 8}
  %t29 = icmp eq i64 %t27, 2
  store i1 %t29, ptr %l18, !tbaa !21
  br label %bb11
bb11:
  %t30 = load i1, ptr %l18, !tbaa !21
  br i1 %t30, label %bb12, label %bb13
bb12:
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t33 = getelementptr { i64, [4 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t33, i32 0, i32 2
  %t35 = load ptr, ptr %t34
  store ptr %t35, ptr %l4, !tbaa !29
  br label %bb14
bb13:
  br label %bb16
bb14:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load ptr, ptr %l4, !tbaa !29
  %t40 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecarried(ptr %v0, ptr %v1, ptr %v2, ptr %t37, ptr %t38, ptr %t40)
  br label %bb15
bb15:
  br label %bb28
bb16:
  %t44 = load ptr, ptr %l1, !tbaa !29
  store ptr %t44, ptr %l27, !tbaa !29
  store i1 false, ptr %l28, !tbaa !21
  %t45 = load ptr, ptr %l27, !tbaa !29
  %t46 = icmp ne ptr %t45, null
  br i1 %t46, label %bb17, label %bb18
bb17:
  %t48 = load ptr, ptr %l27, !tbaa !29
  %t49 = load i64, ptr %t48, !range !{i64 0, i64 8}
  %t51 = icmp eq i64 %t49, 6
  store i1 %t51, ptr %l28, !tbaa !21
  br label %bb18
bb18:
  %t52 = load i1, ptr %l28, !tbaa !21
  br i1 %t52, label %bb19, label %bb20
bb19:
  %t53 = load ptr, ptr %l1, !tbaa !29
  %t55 = getelementptr { i64, [4 x i64] }, ptr %t53, i32 0, i32 1
  %t56 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t55, i32 0, i32 2
  %t57 = load ptr, ptr %t56
  store ptr %t57, ptr %l5, !tbaa !29
  br label %bb21
bb20:
  br label %bb23
bb21:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t60 = load ptr, ptr %l5, !tbaa !29
  %t62 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecarried(ptr %v0, ptr %v1, ptr %v2, ptr %t59, ptr %t60, ptr %t62)
  br label %bb22
bb22:
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
  call void @__olang_check_failed(ptr @olang_loc_fd998b806b7f953d_c6e6cde82781bfb1)
  unreachable
bb28:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecarries(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca ptr
  %l4 = alloca i64
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca i64
  %l14 = alloca i64
  %l19 = alloca i64
  %l23 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l6
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l2
  %t3 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecarried(ptr %v0, ptr %v1, ptr %s0, ptr %t3, ptr %a1, ptr %l2)
  br label %bb2
bb2:
  store ptr %l2, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb3
bb3:
  %t10 = load i64, ptr %l4, !tbaa !24
  store i64 %t10, ptr %l12, !tbaa !24
  %t11 = load ptr, ptr %l3, !tbaa !29
  %t13 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t11)
  store i64 %t13, ptr %l14
  br label %bb4
bb4:
  %t14 = load i64, ptr %l12, !tbaa !24
  %t15 = load i64, ptr %l14, !tbaa !24
  %t16 = icmp slt i64 %t14, %t15
  %t18 = xor i1 %t16, true
  br i1 %t18, label %bb5, label %bb6
bb5:
  br label %bb14
bb6:
  br label %bb7
bb7:
  %t20 = load ptr, ptr %l3, !tbaa !29
  %t21 = load i64, ptr %l4, !tbaa !24
  %t24 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t20, i64 %t21)
  store i64 %t24, ptr %l19
  br label %bb8
bb8:
  %t25 = load i64, ptr %l19, !tbaa !24
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/scope:Scoper", ptr %t26, i32 0, i32 134
  %t32 = call i1 @compiler_2fscope_2eflHas(ptr %v0, ptr %t28, i64 %t25)
  store i1 %t32, ptr %l23
  br label %bb9
bb9:
  %t33 = load i1, ptr %l23, !tbaa !21
  br i1 %t33, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t35 = load i64, ptr %l4, !tbaa !24
  %t37 = add i64 %t35, 1
  store i64 %t37, ptr %l4, !tbaa !24
  br label %bb3
bb14:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2echoiceDest(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca { i64, [2 x i64] }
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca { i64, [2 x i64] }
  %l14 = alloca i64
  %l16 = alloca i64
  %l21 = alloca ptr
  %l25 = alloca i1
  %l26 = alloca i1
  %l29 = alloca i1
  %l30 = alloca i1
  %l31 = alloca ptr
  %l33 = alloca i32
  %l34 = alloca i1
  %l38 = alloca { i64, [2 x i64] }
  %l41 = alloca i1
  %l43 = alloca i1
  %l49 = alloca { i64, [2 x i64] }
  %l51 = alloca { i64, [2 x i64] }
  %l53 = alloca i1
  %l60 = alloca { i64, [2 x i64] }
  %rv = alloca { i64, [2 x i64] }
  %t11 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 144
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/scope:Scoper", ptr %t6, i32 0, i32 144
  store i1 false, ptr %t8, !tbaa !21
  %t9 = load { i64, [2 x i64] }, ptr %l2
  store { i64, [2 x i64] } %t9, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  store { i64, [2 x i64] } zeroinitializer, ptr %t11
  %t12 = getelementptr { i64, [2 x i64] }, ptr %t11, i32 0, i32 0
  store i64 0, ptr %t12
  %t13 = load { i64, [2 x i64] }, ptr %t11
  store { i64, [2 x i64] } %t13, ptr %l3
  store ptr %a1, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb4
bb4:
  %t17 = load i64, ptr %l5, !tbaa !24
  store i64 %t17, ptr %l14, !tbaa !24
  %t18 = load ptr, ptr %l4, !tbaa !29
  %t20 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v1, ptr %t18)
  store i64 %t20, ptr %l16
  br label %bb5
bb5:
  %t21 = load i64, ptr %l14, !tbaa !24
  %t22 = load i64, ptr %l16, !tbaa !24
  %t23 = icmp slt i64 %t21, %t22
  %t25 = xor i1 %t23, true
  br i1 %t25, label %bb6, label %bb7
bb6:
  br label %bb39
bb7:
  br label %bb8
bb8:
  %t27 = load ptr, ptr %l4, !tbaa !29
  %t28 = load i64, ptr %l5, !tbaa !24
  %t31 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v1, ptr %v1, ptr %t27, i64 %t28)
  store ptr %t31, ptr %l21
  br label %bb9
bb9:
  %t32 = load ptr, ptr %l21, !tbaa !29
  store ptr %t32, ptr %l6, !tbaa !29
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t34 = load ptr, ptr %l6, !tbaa !29
  %t38 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFresh(ptr %v0, ptr %v1, ptr %t33, ptr %t34)
  store i1 %t38, ptr %l25
  br label %bb10
bb10:
  %t39 = load i1, ptr %l25, !tbaa !21
  br i1 %t39, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb14
bb12:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load ptr, ptr %l6, !tbaa !29
  %t44 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisNullLit(ptr %v0, ptr %v1, ptr %t40, ptr %t41)
  store i1 %t44, ptr %l29
  br label %bb13
bb13:
  %t45 = load i1, ptr %l29, !tbaa !21
  store i1 %t45, ptr %l26, !tbaa !21
  br label %bb14
bb14:
  %t46 = load i1, ptr %l26, !tbaa !21
  br i1 %t46, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb19
bb16:
  %t47 = load ptr, ptr %l0, !tbaa !29
  store ptr %t47, ptr %l31, !tbaa !29
  %t48 = load ptr, ptr %l6, !tbaa !29
  %t50 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t48)
  store i32 %t50, ptr %l33
  br label %bb17
bb17:
  %t51 = load ptr, ptr %l31, !tbaa !29
  %t52 = load i32, ptr %l33, !tbaa !23
  %t53 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholds(ptr %v0, ptr %t51, i32 %t52)
  store i1 %t53, ptr %l34
  br label %bb18
bb18:
  %t54 = load i1, ptr %l34, !tbaa !21
  %t55 = xor i1 %t54, true
  store i1 %t55, ptr %l30, !tbaa !21
  br label %bb19
bb19:
  %t57 = load i1, ptr %l30, !tbaa !21
  br i1 %t57, label %bb20, label %bb21
bb20:
  br label %bb38
bb21:
  br label %bb22
bb22:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t59 = load ptr, ptr %l6, !tbaa !29
  %t62 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2echoicePeek(ptr %v0, ptr %v1, ptr %t58, ptr %t59)
  store { i64, [2 x i64] } %t62, ptr %l38
  br label %bb23
bb23:
  %t63 = load { i64, [2 x i64] }, ptr %l38
  store { i64, [2 x i64] } %t63, ptr %l7
  %t64 = load { i64, [2 x i64] }, ptr %l7
  %t66 = extractvalue { i64, [2 x i64] } %t64, 0
  %t67 = icmp eq i64 %t66, 0
  br i1 %t67, label %bb24, label %bb25
bb24:
  store i1 true, ptr %l41, !tbaa !21
  br label %bb27
bb25:
  %t69 = load { i64, [2 x i64] }, ptr %l7
  %t71 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t69)
  store i1 %t71, ptr %l43
  br label %bb26
bb26:
  %t72 = load i1, ptr %l43, !tbaa !21
  %t73 = xor i1 %t72, true
  store i1 %t73, ptr %l41, !tbaa !21
  br label %bb27
bb27:
  %t75 = load i1, ptr %l41, !tbaa !21
  br i1 %t75, label %bb28, label %bb29
bb28:
  %t76 = load { i64, [2 x i64] }, ptr %l2
  store { i64, [2 x i64] } %t76, ptr %rv
  br label %ret
bb29:
  br label %bb30
bb30:
  %t78 = load { i64, [2 x i64] }, ptr %l3
  %t80 = extractvalue { i64, [2 x i64] } %t78, 0
  %t81 = icmp eq i64 %t80, 0
  br i1 %t81, label %bb31, label %bb32
bb31:
  %t83 = load { i64, [2 x i64] }, ptr %l7
  store { i64, [2 x i64] } %t83, ptr %l3
  br label %bb37
bb32:
  %t85 = load { i64, [2 x i64] }, ptr %l3
  store { i64, [2 x i64] } %t85, ptr %l49
  %t86 = load { i64, [2 x i64] }, ptr %l7
  store { i64, [2 x i64] } %t86, ptr %l51
  %t89 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3aTerm(ptr %l49, ptr %l51)
  store i1 %t89, ptr %l53
  br label %bb33
bb33:
  %t90 = load i1, ptr %l53, !tbaa !21
  %t91 = xor i1 %t90, true
  br i1 %t91, label %bb34, label %bb35
bb34:
  %t93 = load { i64, [2 x i64] }, ptr %l2
  store { i64, [2 x i64] } %t93, ptr %rv
  br label %ret
bb35:
  br label %bb36
bb36:
  br label %bb37
bb37:
  br label %bb38
bb38:
  %t95 = load i64, ptr %l5, !tbaa !24
  %t97 = add i64 %t95, 1
  store i64 %t97, ptr %l5, !tbaa !24
  br label %bb4
bb39:
  %t99 = load { i64, [2 x i64] }, ptr %l3
  %t101 = extractvalue { i64, [2 x i64] } %t99, 0
  %t102 = icmp eq i64 %t101, 0
  br i1 %t102, label %bb40, label %bb41
bb40:
  %t104 = load { i64, [2 x i64] }, ptr %l2
  store { i64, [2 x i64] } %t104, ptr %l60
  br label %bb42
bb41:
  %t106 = load { i64, [2 x i64] }, ptr %l3
  store { i64, [2 x i64] } %t106, ptr %l60
  br label %bb42
bb42:
  %t108 = load { i64, [2 x i64] }, ptr %l60
  store { i64, [2 x i64] } %t108, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edefaultFits(ptr %v0, ptr %a0, %"compiler/scope:Val" %a1, %"compiler/scope:Val" %a2, i1 %a3) #0 {
entry:
  %l1 = alloca %"compiler/scope:Val"
  %l2 = alloca %"compiler/scope:Val"
  %l4 = alloca { i64, [2 x i64] }
  %l5 = alloca i1
  %l6 = alloca i32
  %l8 = alloca i1
  %l14 = alloca i1
  %l18 = alloca i1
  %l22 = alloca i1
  %l23 = alloca { i64, [2 x i64] }
  %l25 = alloca { i64, [2 x i64] }
  %l27 = alloca i1
  %l28 = alloca i1
  %l31 = alloca i1
  %l35 = alloca i64
  %rv = alloca i1
  store %"compiler/scope:Val" %a1, ptr %l1
  store %"compiler/scope:Val" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/scope:Val", ptr %l1, i32 0, i32 1
  %t2 = load { i64, [2 x i64] }, ptr %t1
  store { i64, [2 x i64] } %t2, ptr %l4
  %t4 = load { i64, [2 x i64] }, ptr %l4
  %t6 = extractvalue { i64, [2 x i64] } %t4, 0
  %t7 = icmp eq i64 %t6, 5
  br i1 %t7, label %bb1, label %bb2
bb1:
  br label %bb5
bb2:
  %t9 = load { i64, [2 x i64] }, ptr %l4
  %t11 = extractvalue { i64, [2 x i64] } %t9, 0
  %t12 = icmp eq i64 %t11, 6
  br i1 %t12, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb6
bb5:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb11
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_44f08e273b94dac1_2814062679ab87ad)
  unreachable
bb11:
  %t14 = load i1, ptr %l8, !tbaa !21
  store i1 %t14, ptr %l5, !tbaa !21
  %t15 = getelementptr %"compiler/scope:Val", ptr %l2, i32 0, i32 0
  %t16 = load i32, ptr %t15, !range !{i32 0, i32 5}
  store i32 %t16, ptr %l6
  %t18 = load i32, ptr %l6, !range !{i32 0, i32 5}
  %t20 = trunc i64 3 to i32
  %t21 = icmp eq i32 %t18, %t20
  br i1 %t21, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb29
bb14:
  %t23 = load i1, ptr %l5, !tbaa !21
  br i1 %t23, label %bb15, label %bb16
bb15:
  %t25 = getelementptr %"compiler/scope:Val", ptr %l1, i32 0, i32 1
  %t26 = load { i64, [2 x i64] }, ptr %t25
  %t28 = extractvalue { i64, [2 x i64] } %t26, 0
  %t29 = icmp eq i64 %t28, 0
  %t31 = xor i1 %t29, true
  store i1 %t31, ptr %l18, !tbaa !21
  br label %bb17
bb16:
  store i1 false, ptr %l18, !tbaa !21
  br label %bb17
bb17:
  %t33 = load i1, ptr %l18, !tbaa !21
  br i1 %t33, label %bb18, label %bb19
bb18:
  %t34 = getelementptr %"compiler/scope:Val", ptr %l2, i32 0, i32 1
  %t35 = load { i64, [2 x i64] }, ptr %t34
  store { i64, [2 x i64] } %t35, ptr %l23
  %t36 = getelementptr %"compiler/scope:Val", ptr %l1, i32 0, i32 1
  %t37 = load { i64, [2 x i64] }, ptr %t36
  store { i64, [2 x i64] } %t37, ptr %l25
  %t40 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3aTerm(ptr %l23, ptr %l25)
  store i1 %t40, ptr %l27
  br label %bb20
bb19:
  store i1 false, ptr %l22, !tbaa !21
  br label %bb28
bb20:
  %t41 = load i1, ptr %l27, !tbaa !21
  br i1 %t41, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l28, !tbaa !21
  br label %bb27
bb22:
  %t44 = xor i1 %a3, true
  br i1 %t44, label %bb23, label %bb24
bb23:
  %t47 = getelementptr %"compiler/scope:Val", ptr %l2, i32 0, i32 1
  %t48 = load { i64, [2 x i64] }, ptr %t47
  %t49 = getelementptr %"compiler/scope:Val", ptr %l1, i32 0, i32 1
  %t50 = load { i64, [2 x i64] }, ptr %t49
  %t54 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eorder(ptr %v0, ptr %a0, { i64, [2 x i64] } %t48, { i64, [2 x i64] } %t50)
  store i64 %t54, ptr %l35
  br label %bb25
bb24:
  store i1 false, ptr %l31, !tbaa !21
  br label %bb26
bb25:
  %t55 = load i64, ptr @G_2ecompiler_2fscope_2eHolds, !tbaa !24
  %t56 = load i64, ptr %l35, !tbaa !24
  %t58 = icmp eq i64 %t56, %t55
  store i1 %t58, ptr %l31, !tbaa !21
  br label %bb26
bb26:
  %t60 = load i1, ptr %l31, !tbaa !21
  store i1 %t60, ptr %l28, !tbaa !21
  br label %bb27
bb27:
  %t61 = load i1, ptr %l28, !tbaa !21
  store i1 %t61, ptr %l22, !tbaa !21
  br label %bb28
bb28:
  %t62 = load i1, ptr %l22, !tbaa !21
  store i1 %t62, ptr %l14, !tbaa !21
  br label %bb40
bb29:
  %t63 = load i32, ptr %l6, !range !{i32 0, i32 5}
  %t65 = trunc i64 2 to i32
  %t66 = icmp eq i32 %t63, %t65
  br i1 %t66, label %bb30, label %bb31
bb30:
  br label %bb34
bb31:
  %t68 = load i32, ptr %l6, !range !{i32 0, i32 5}
  %t70 = trunc i64 4 to i32
  %t71 = icmp eq i32 %t68, %t70
  br i1 %t71, label %bb32, label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb35
bb34:
  %t73 = load i1, ptr %l5, !tbaa !21
  store i1 %t73, ptr %l14, !tbaa !21
  br label %bb40
bb35:
  br i1 true, label %bb36, label %bb37
bb36:
  br label %bb38
bb37:
  br label %bb39
bb38:
  store i1 true, ptr %l14, !tbaa !21
  br label %bb40
bb39:
  call void @__olang_check_failed(ptr @olang_loc_319b840e5d0a9b30_92f3157cb26da7fc)
  unreachable
bb40:
  %t75 = load i1, ptr %l14, !tbaa !21
  store i1 %t75, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eedgeWord(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l9 = alloca i1
  %l13 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l56 = alloca { i64, ptr }
  %l64 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb3
bb2:
  %t5 = load i64, ptr %l2, !tbaa !24
  %t6 = load i64, ptr @G_2ecompiler_2fscope_2ePosDerived, !tbaa !24
  %t9 = icmp sge i64 %t5, %t6
  store i1 %t9, ptr %l9, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l9, !tbaa !21
  br i1 %t11, label %bb4, label %bb5
bb4:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d1, i32 0, i32 1) }, ptr %l13, !tbaa !27
  %t12 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t12, ptr %l14, !tbaa !27
  %t13 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t13, 0
  store i64 %t14, ptr %l15, !tbaa !24
  %t15 = load i64, ptr %l15, !tbaa !24
  %t16 = mul i64 %t15, 1
  %t17 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t16)
  %t18 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t19 = insertvalue { i64, ptr } %t18, ptr %t17, 1
  store { i64, ptr } %t19, ptr %l16, !tbaa !27
  %t20 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = load i64, ptr %l15, !tbaa !24
  %t25 = mul i64 %t24, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t21, ptr %t23, i64 %t25, i1 false)
  %t26 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t26, ptr %l14, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t27 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t27, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/scope:Scoper", ptr %t28, i32 0, i32 0
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = getelementptr %"compiler/generic:Program", ptr %t31, i32 0, i32 2
  %t34 = load i32, ptr %l1, !tbaa !23
  %t35 = load i64, ptr %l2, !tbaa !24
  %t37 = inttoptr i64 0 to ptr
  %t41 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParamName(ptr %v0, ptr %s0, ptr %t37, ptr %t33, i32 %t34, i64 %t35)
  store { i64, ptr } %t41, ptr %l23
  br label %bb7
bb7:
  %t42 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t42, ptr %l4, !tbaa !27
  %t43 = load i64, ptr %l3, !tbaa !24
  %t44 = load i64, ptr @G_2ecompiler_2fscope_2ePosResult, !tbaa !24
  %t47 = icmp eq i64 %t43, %t44
  br i1 %t47, label %bb8, label %bb9
bb8:
  %t49 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t50 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t51 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  %t53 = extractvalue { i64, ptr } %t49, 1
  %t54 = extractvalue { i64, ptr } %t49, 0
  %t55 = add i64 %t51, %t54
  %t56 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t55)
  call void @olang_textcopy(ptr %t56, ptr %t50, i64 %t51)
  %t57 = getelementptr i8, ptr %t56, i64 %t51
  call void @olang_textcopy(ptr %t57, ptr %t53, i64 %t54)
  %t58 = insertvalue { i64, ptr } undef, i64 %t55, 0
  %t59 = insertvalue { i64, ptr } %t58, ptr %t56, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t59, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t61 = load i64, ptr %l3, !tbaa !24
  %t62 = load i64, ptr @G_2ecompiler_2fscope_2ePosHome, !tbaa !24
  %t65 = icmp eq i64 %t61, %t62
  br i1 %t65, label %bb11, label %bb12
bb11:
  %t67 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t68 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t69 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  %t71 = extractvalue { i64, ptr } %t67, 1
  %t72 = extractvalue { i64, ptr } %t67, 0
  %t73 = add i64 %t69, %t72
  %t74 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t73)
  call void @olang_textcopy(ptr %t74, ptr %t68, i64 %t69)
  %t75 = getelementptr i8, ptr %t74, i64 %t69
  call void @olang_textcopy(ptr %t75, ptr %t71, i64 %t72)
  %t76 = insertvalue { i64, ptr } undef, i64 %t73, 0
  %t77 = insertvalue { i64, ptr } %t76, ptr %t74, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t77, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t79 = load i64, ptr %l3, !tbaa !24
  %t80 = load i64, ptr @G_2ecompiler_2fscope_2ePosDerived, !tbaa !24
  %t83 = icmp slt i64 %t79, %t80
  br i1 %t83, label %bb14, label %bb15
bb14:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/scope:Scoper", ptr %t85, i32 0, i32 0
  %t88 = load ptr, ptr %t87, !tbaa !29
  %t90 = getelementptr %"compiler/generic:Program", ptr %t88, i32 0, i32 2
  %t91 = load i32, ptr %l1, !tbaa !23
  %t92 = load i64, ptr %l2, !tbaa !24
  %t93 = load i64, ptr %l3, !tbaa !24
  %t95 = inttoptr i64 0 to ptr
  %t100 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKeepsText(ptr %v0, ptr %v1, ptr %t95, ptr %t90, i32 %t91, i64 %t92, i64 %t93, i64 0)
  store { i64, ptr } %t100, ptr %l44
  br label %bb16
bb15:
  br label %bb17
bb16:
  call void @__olang_scope_close(ptr %s0)
  %t101 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t101, ptr %rv
  br label %ret
bb17:
  %t102 = load i64, ptr %l3, !tbaa !24
  %t103 = load i64, ptr @G_2ecompiler_2fscope_2ePosDerived, !tbaa !24
  %t106 = sub i64 %t102, %t103
  %t108 = sdiv i64 %t106, 65536
  store i64 %t108, ptr %l5, !tbaa !24
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t111 = load i32, ptr %l1, !tbaa !23
  %t112 = load i64, ptr %l5, !tbaa !24
  %t113 = load i64, ptr %l3, !tbaa !24
  %t114 = load i64, ptr @G_2ecompiler_2fscope_2ePosDerived, !tbaa !24
  %t117 = sub i64 %t113, %t114
  %t119 = srem i64 %t117, 65536
  %t124 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ederivedField(ptr %v0, ptr %s0, ptr %t110, i32 %t111, i64 %t112, i64 %t119)
  store { i64, ptr } %t124, ptr %l56
  br label %bb18
bb18:
  %t125 = load { i64, ptr }, ptr %l56, !tbaa !27
  store { i64, ptr } %t125, ptr %l6, !tbaa !27
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t128 = getelementptr %"compiler/scope:Scoper", ptr %t126, i32 0, i32 0
  %t129 = load ptr, ptr %t128, !tbaa !29
  %t131 = getelementptr %"compiler/generic:Program", ptr %t129, i32 0, i32 2
  %t132 = load i32, ptr %l1, !tbaa !23
  %t133 = load i64, ptr %l2, !tbaa !24
  %t134 = load i64, ptr %l5, !tbaa !24
  %t136 = inttoptr i64 0 to ptr
  %t141 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKeepsText(ptr %v0, ptr %s0, ptr %t136, ptr %t131, i32 %t132, i64 %t133, i64 %t134, i64 0)
  store { i64, ptr } %t141, ptr %l64
  br label %bb19
bb19:
  %t142 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t143 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t144 = extractvalue { i64, ptr } %t143, 1
  %t145 = extractvalue { i64, ptr } %t143, 0
  %t146 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t147 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  %t148 = add i64 %t145, %t147
  %t150 = extractvalue { i64, ptr } %t142, 1
  %t151 = extractvalue { i64, ptr } %t142, 0
  %t152 = add i64 %t148, %t151
  %t153 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t152)
  call void @olang_textcopy(ptr %t153, ptr %t144, i64 %t145)
  %t154 = getelementptr i8, ptr %t153, i64 %t145
  call void @olang_textcopy(ptr %t154, ptr %t146, i64 %t147)
  %t155 = getelementptr i8, ptr %t154, i64 %t147
  call void @olang_textcopy(ptr %t155, ptr %t150, i64 %t151)
  %t156 = insertvalue { i64, ptr } undef, i64 %t152, 0
  %t157 = insertvalue { i64, ptr } %t156, ptr %t153, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t157, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eexports(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca { i64, [2 x i64] }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca i64
  %l12 = alloca { i64, ptr }
  %l15 = alloca i64
  %l19 = alloca i64
  %l22 = alloca i64
  %l43 = alloca ptr
  %l52 = alloca i64
  %l56 = alloca ptr
  %l60 = alloca i1
  %l64 = alloca ptr
  %l67 = alloca i64
  %l72 = alloca ptr
  %l76 = alloca ptr
  %l80 = alloca i64
  %l81 = alloca ptr
  %l90 = alloca { i64, ptr }
  %l94 = alloca ptr
  %l103 = alloca { i64, [3 x i64] }
  %l107 = alloca { i64, ptr }
  %l109 = alloca %"compiler/diagmsg:Msg"
  %l110 = alloca i64
  %s3 = alloca %olang.scope
  %t192 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l1, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 1
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l15
  br label %bb1
bb1:
  %t6 = load i64, ptr %l15, !tbaa !24
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
  store i64 0, ptr %l19, !tbaa !24
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
  store i64 %t31, ptr %l22, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb6
bb6:
  %t33 = load i64, ptr %l22, !tbaa !24
  store i64 %t33, ptr %l19, !tbaa !24
  br label %bb7
bb7:
  %t34 = load i64, ptr %l19, !tbaa !24
  store i64 %t34, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb8
bb8:
  %t35 = load i64, ptr %l5, !tbaa !24
  %t36 = load i64, ptr %l4, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb9, label %bb10
bb9:
  br label %bb42
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
  %t55 = getelementptr %"compiler/scope:Scoper", ptr %t53, i32 0, i32 1
  %t56 = load i64, ptr %l6, !tbaa !24
  %t59 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t55, i64 %t56)
  store ptr %t59, ptr %l43
  br label %bb12
bb12:
  %t60 = load ptr, ptr %l43, !tbaa !29
  %t62 = getelementptr %"compiler/typed:Body", ptr %t60, i32 0, i32 1
  %t63 = load { i64, [2 x i64] }, ptr %t62
  store { i64, [2 x i64] } %t63, ptr %l7
  %t65 = load { i64, [2 x i64] }, ptr %l7
  %t67 = extractvalue { i64, [2 x i64] } %t65, 0
  %t68 = icmp eq i64 %t67, 0
  br i1 %t68, label %bb13, label %bb14
bb13:
  %t70 = getelementptr { i64, [2 x i64] }, ptr %l7, i32 0, i32 1
  %t71 = getelementptr { i64 }, ptr %t70, i32 0, i32 0
  %t72 = load i64, ptr %t71
  store i64 %t72, ptr %l8, !tbaa !24
  br label %bb15
bb14:
  br label %bb35
bb15:
  store %olang.scope zeroinitializer, ptr %s3
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/scope:Scoper", ptr %t74, i32 0, i32 0
  %t77 = load ptr, ptr %t76, !tbaa !29
  %t78 = load i64, ptr %l8, !tbaa !24
  %t81 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t77, i64 %t78)
  store i64 %t81, ptr %l52
  br label %bb16
bb16:
  %t82 = load i64, ptr %l52, !tbaa !24
  store i64 %t82, ptr %l9, !tbaa !24
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/scope:Scoper", ptr %t83, i32 0, i32 0
  %t86 = load ptr, ptr %t85, !tbaa !29
  %t87 = load i64, ptr %l9, !tbaa !24
  %t90 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s3, ptr %t86, i64 %t87)
  store ptr %t90, ptr %l56
  br label %bb17
bb17:
  %t91 = load ptr, ptr %l56, !tbaa !29
  %t93 = getelementptr %"compiler/ast:Func", ptr %t91, i32 0, i32 7
  %t94 = load i1, ptr %t93, !tbaa !21
  %t96 = xor i1 %t94, true
  br i1 %t96, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l60, !tbaa !21
  br label %bb22
bb19:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/scope:Scoper", ptr %t98, i32 0, i32 6
  %t101 = load i64, ptr %l6, !tbaa !24
  %t104 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t100, i64 %t101)
  store ptr %t104, ptr %l64
  br label %bb20
bb20:
  %t105 = load ptr, ptr %l64, !tbaa !29
  %t107 = getelementptr %"compiler/scope:summary", ptr %t105, i32 0, i32 0
  %t109 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eLen_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t107)
  store i64 %t109, ptr %l67
  br label %bb21
bb21:
  %t110 = load i64, ptr %l67, !tbaa !24
  %t111 = icmp eq i64 %t110, 0
  store i1 %t111, ptr %l60, !tbaa !21
  br label %bb22
bb22:
  %t113 = load i1, ptr %l60, !tbaa !21
  br i1 %t113, label %bb23, label %bb24
bb23:
  call void @__olang_scope_close(ptr %s3)
  br label %bb41
bb24:
  br label %bb25
bb25:
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t116 = getelementptr %"compiler/scope:Scoper", ptr %t114, i32 0, i32 0
  %t117 = load ptr, ptr %t116, !tbaa !29
  %t118 = load i64, ptr %l9, !tbaa !24
  %t121 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t117, i64 %t118)
  store ptr %t121, ptr %l72
  br label %bb26
bb26:
  %t122 = load ptr, ptr %l72, !tbaa !29
  store ptr %t122, ptr %l10, !tbaa !29
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = getelementptr %"compiler/scope:Scoper", ptr %t123, i32 0, i32 0
  %t126 = load ptr, ptr %t125, !tbaa !29
  %t128 = getelementptr %"compiler/generic:Program", ptr %t126, i32 0, i32 0
  %t129 = load ptr, ptr %t128, !tbaa !29
  %t131 = getelementptr %"compiler/load:Loader", ptr %t129, i32 0, i32 10
  store ptr %t131, ptr %l76, !tbaa !29
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t134 = getelementptr %"compiler/scope:Scoper", ptr %t132, i32 0, i32 0
  %t135 = load ptr, ptr %t134, !tbaa !29
  %t136 = load i64, ptr %l9, !tbaa !24
  %t139 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t135, i64 %t136)
  store i64 %t139, ptr %l80
  br label %bb27
bb27:
  %t140 = load ptr, ptr %l76, !tbaa !29
  %t141 = load i64, ptr %l80, !tbaa !24
  %t142 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t140, i64 %t141)
  store ptr %t142, ptr %l81
  br label %bb28
bb28:
  %t143 = load ptr, ptr %l81, !tbaa !29
  %t145 = getelementptr %"compiler/load:Module", ptr %t143, i32 0, i32 4
  %t146 = load i64, ptr %t145, !tbaa !24
  store i64 %t146, ptr %l11, !tbaa !24
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t149 = load i64, ptr %l6, !tbaa !24
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t152 = getelementptr %"compiler/scope:Scoper", ptr %t150, i32 0, i32 0
  %t153 = load ptr, ptr %t152, !tbaa !29
  %t155 = getelementptr %"compiler/generic:Program", ptr %t153, i32 0, i32 0
  %t156 = load ptr, ptr %t155, !tbaa !29
  %t158 = getelementptr %"compiler/load:Loader", ptr %t156, i32 0, i32 3
  %t159 = load ptr, ptr %t158, !tbaa !29
  %t163 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eObligations(ptr %v0, ptr %v0, ptr %s3, ptr %t148, i64 %t149, ptr %t159)
  store { i64, ptr } %t163, ptr %l90
  br label %bb29
bb29:
  %t164 = load { i64, ptr }, ptr %l90, !tbaa !27
  store { i64, ptr } %t164, ptr %l12, !tbaa !27
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t167 = getelementptr %"compiler/scope:Scoper", ptr %t165, i32 0, i32 0
  %t168 = load ptr, ptr %t167, !tbaa !29
  %t170 = getelementptr %"compiler/generic:Program", ptr %t168, i32 0, i32 0
  %t171 = load ptr, ptr %t170, !tbaa !29
  %t173 = getelementptr %"compiler/load:Loader", ptr %t171, i32 0, i32 4
  %t174 = load ptr, ptr %t173, !tbaa !29
  store ptr %t174, ptr %l94, !tbaa !29
  %t175 = load i64, ptr %l11, !tbaa !24
  %t176 = load ptr, ptr %l10, !tbaa !29
  %t178 = getelementptr %"compiler/ast:Func", ptr %t176, i32 0, i32 0
  %t179 = getelementptr %"compiler/source:Span", ptr %t178, i32 0, i32 0
  %t180 = load i32, ptr %t179, !tbaa !23
  %t182 = sext i32 %t180 to i64
  %t183 = load ptr, ptr %l10, !tbaa !29
  %t185 = getelementptr %"compiler/ast:Func", ptr %t183, i32 0, i32 0
  %t186 = getelementptr %"compiler/source:Span", ptr %t185, i32 0, i32 0
  %t187 = load i32, ptr %t186, !tbaa !23
  %t189 = sext i32 %t187 to i64
  %t191 = add i64 %t189, 6
  store { i64, [3 x i64] } zeroinitializer, ptr %t192
  %t193 = getelementptr { i64, [3 x i64] }, ptr %t192, i32 0, i32 0
  store i64 3, ptr %t193
  %t195 = insertvalue { i64, i64, i64 } undef, i64 %t175, 0
  %t197 = insertvalue { i64, i64, i64 } %t195, i64 %t182, 1
  %t199 = insertvalue { i64, i64, i64 } %t197, i64 %t191, 2
  %t200 = getelementptr { i64, [3 x i64] }, ptr %t192, i32 0, i32 1
  store { i64, i64, i64 } %t199, ptr %t200
  %t201 = load { i64, [3 x i64] }, ptr %t192
  store { i64, [3 x i64] } %t201, ptr %l103
  %t202 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t204 = extractvalue { i64, ptr } %t202, 0
  %t206 = icmp sgt i64 %t204, 0
  br i1 %t206, label %bb30, label %bb31
bb30:
  %t208 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t209 = load ptr, ptr %t208, !tbaa !27
  %t210 = getelementptr { i64, ptr }, ptr %t209, i64 0
  %t211 = load { i64, ptr }, ptr %t210, !tbaa !37
  store { i64, ptr } %t211, ptr %l107, !tbaa !27
  br label %bb32
bb31:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d5, i32 0, i32 1) }, ptr %l107, !tbaa !27
  br label %bb32
bb32:
  %t213 = load { i64, ptr }, ptr %l107, !tbaa !27
  %t214 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eExportObligation(ptr %s3, ptr %v0, { i64, ptr } %t213)
  store %"compiler/diagmsg:Msg" %t214, ptr %l109
  br label %bb33
bb33:
  %t215 = load ptr, ptr %l94, !tbaa !29
  %t216 = load { i64, [3 x i64] }, ptr %l103
  %t217 = load %"compiler/diagmsg:Msg", ptr %l109
  %t218 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t215, { i64, [3 x i64] } %t216, %"compiler/diagmsg:Msg" %t217)
  store i64 %t218, ptr %l110
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s3)
  br label %bb40
bb35:
  br i1 true, label %bb36, label %bb37
bb36:
  br label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb40
bb39:
  call void @__olang_check_failed(ptr @olang_loc_3d4ddf74a6173f57_410f107a77dd9b9b)
  unreachable
bb40:
  br label %bb41
bb41:
  %t219 = load i64, ptr %l5, !tbaa !24
  %t221 = add i64 %t219, 1
  store i64 %t221, ptr %l5, !tbaa !24
  br label %bb8
bb42:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflAdd(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i1
  %l8 = alloca i1
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
  store i1 true, ptr %l4, !tbaa !21
  br label %bb4
bb2:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/scope:Scoper", ptr %t5, i32 0, i32 134
  %t8 = load i64, ptr %l1, !tbaa !24
  %t11 = call i1 @compiler_2fscope_2eflHas(ptr %v0, ptr %t7, i64 %t8)
  store i1 %t11, ptr %l8
  br label %bb3
bb3:
  %t12 = load i1, ptr %l8, !tbaa !21
  store i1 %t12, ptr %l4, !tbaa !21
  br label %bb4
bb4:
  %t13 = load i1, ptr %l4, !tbaa !21
  br i1 %t13, label %bb5, label %bb6
bb5:
  br label %ret
bb6:
  br label %bb7
bb7:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/scope:Scoper", ptr %t14, i32 0, i32 134
  %t17 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t16, i64 %t17)
  br label %bb8
bb8:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/scope:Scoper", ptr %t20, i32 0, i32 141
  store i1 true, ptr %t22, !tbaa !21
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egiveBackPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l9 = alloca i1
  %l13 = alloca ptr
  %l14 = alloca i1
  %l19 = alloca ptr
  %l20 = alloca ptr
  %l22 = alloca i32
  %l23 = alloca i64
  %l26 = alloca ptr
  %l27 = alloca i1
  %l35 = alloca ptr
  %l36 = alloca i1
  %l44 = alloca ptr
  %l45 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
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
  store i1 true, ptr %l9, !tbaa !21
  br label %bb3
bb2:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/scope:Scoper", ptr %t8, i32 0, i32 220
  %t11 = load i1, ptr %t10, !tbaa !21
  %t13 = xor i1 %t11, true
  store i1 %t13, ptr %l9, !tbaa !21
  br label %bb3
bb3:
  %t15 = load i1, ptr %l9, !tbaa !21
  br i1 %t15, label %bb4, label %bb5
bb4:
  br label %ret
bb5:
  br label %bb6
bb6:
  %t16 = load ptr, ptr %l1, !tbaa !29
  store ptr %t16, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t17 = load ptr, ptr %l13, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb7, label %bb8
bb7:
  %t20 = load ptr, ptr %l13, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 8}
  %t23 = icmp eq i64 %t21, 3
  store i1 %t23, ptr %l14, !tbaa !21
  br label %bb8
bb8:
  %t24 = load i1, ptr %l14, !tbaa !21
  br i1 %t24, label %bb9, label %bb10
bb9:
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr { i64, [4 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t27, i32 0, i32 2
  %t29 = load ptr, ptr %t28
  store ptr %t29, ptr %l2, !tbaa !29
  br label %bb11
bb10:
  br label %bb16
bb11:
  %t31 = load ptr, ptr %l0, !tbaa !29
  store ptr %t31, ptr %l19, !tbaa !29
  %t32 = load ptr, ptr %l0, !tbaa !29
  store ptr %t32, ptr %l20, !tbaa !29
  %t33 = load ptr, ptr %l2, !tbaa !29
  %t35 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t33)
  store i32 %t35, ptr %l22
  br label %bb12
bb12:
  %t36 = load ptr, ptr %l20, !tbaa !29
  %t37 = load i32, ptr %l22, !tbaa !23
  %t38 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edeclOf(ptr %v0, ptr %t36, i32 %t37)
  store i64 %t38, ptr %l23
  br label %bb13
bb13:
  %t39 = load ptr, ptr %l19, !tbaa !29
  %t40 = load i64, ptr %l23, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egiveBack(ptr %v0, ptr %t39, i64 %t40)
  br label %bb14
bb14:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egiveBackPlace(ptr %v0, ptr %v1, ptr %t41, ptr %t42)
  br label %bb15
bb15:
  br label %bb42
bb16:
  %t45 = load ptr, ptr %l1, !tbaa !29
  store ptr %t45, ptr %l26, !tbaa !29
  store i1 false, ptr %l27, !tbaa !21
  %t46 = load ptr, ptr %l26, !tbaa !29
  %t47 = icmp ne ptr %t46, null
  br i1 %t47, label %bb17, label %bb18
bb17:
  %t49 = load ptr, ptr %l26, !tbaa !29
  %t50 = load i64, ptr %t49, !range !{i64 0, i64 8}
  %t52 = icmp eq i64 %t50, 4
  store i1 %t52, ptr %l27, !tbaa !21
  br label %bb18
bb18:
  %t53 = load i1, ptr %l27, !tbaa !21
  br i1 %t53, label %bb19, label %bb20
bb19:
  %t54 = load ptr, ptr %l1, !tbaa !29
  %t56 = getelementptr { i64, [4 x i64] }, ptr %t54, i32 0, i32 1
  %t57 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t56, i32 0, i32 2
  %t58 = load ptr, ptr %t57
  store ptr %t58, ptr %l3, !tbaa !29
  br label %bb21
bb20:
  br label %bb23
bb21:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load ptr, ptr %l3, !tbaa !29
  %t63 = getelementptr %"compiler/typed:Elem", ptr %t61, i32 0, i32 0
  %t64 = load ptr, ptr %t63, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egiveBackPlace(ptr %v0, ptr %v1, ptr %t60, ptr %t64)
  br label %bb22
bb22:
  br label %bb42
bb23:
  %t67 = load ptr, ptr %l1, !tbaa !29
  store ptr %t67, ptr %l35, !tbaa !29
  store i1 false, ptr %l36, !tbaa !21
  %t68 = load ptr, ptr %l35, !tbaa !29
  %t69 = icmp ne ptr %t68, null
  br i1 %t69, label %bb24, label %bb25
bb24:
  %t71 = load ptr, ptr %l35, !tbaa !29
  %t72 = load i64, ptr %t71, !range !{i64 0, i64 8}
  %t74 = icmp eq i64 %t72, 5
  store i1 %t74, ptr %l36, !tbaa !21
  br label %bb25
bb25:
  %t75 = load i1, ptr %l36, !tbaa !21
  br i1 %t75, label %bb26, label %bb27
bb26:
  %t76 = load ptr, ptr %l1, !tbaa !29
  %t78 = getelementptr { i64, [4 x i64] }, ptr %t76, i32 0, i32 1
  %t79 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t78, i32 0, i32 2
  %t80 = load ptr, ptr %t79
  store ptr %t80, ptr %l4, !tbaa !29
  br label %bb28
bb27:
  br label %bb30
bb28:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t83 = load ptr, ptr %l4, !tbaa !29
  %t85 = getelementptr %"compiler/typed:Payload", ptr %t83, i32 0, i32 0
  %t86 = load ptr, ptr %t85, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egiveBackPlace(ptr %v0, ptr %v1, ptr %t82, ptr %t86)
  br label %bb29
bb29:
  br label %bb42
bb30:
  %t89 = load ptr, ptr %l1, !tbaa !29
  store ptr %t89, ptr %l44, !tbaa !29
  store i1 false, ptr %l45, !tbaa !21
  %t90 = load ptr, ptr %l44, !tbaa !29
  %t91 = icmp ne ptr %t90, null
  br i1 %t91, label %bb31, label %bb32
bb31:
  %t93 = load ptr, ptr %l44, !tbaa !29
  %t94 = load i64, ptr %t93, !range !{i64 0, i64 8}
  %t96 = icmp eq i64 %t94, 2
  store i1 %t96, ptr %l45, !tbaa !21
  br label %bb32
bb32:
  %t97 = load i1, ptr %l45, !tbaa !21
  br i1 %t97, label %bb33, label %bb34
bb33:
  %t98 = load ptr, ptr %l1, !tbaa !29
  %t100 = getelementptr { i64, [4 x i64] }, ptr %t98, i32 0, i32 1
  %t101 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t100, i32 0, i32 2
  %t102 = load ptr, ptr %t101
  store ptr %t102, ptr %l5, !tbaa !29
  br label %bb35
bb34:
  br label %bb37
bb35:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t105 = load ptr, ptr %l5, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egiveBackExpr(ptr %v0, ptr %v1, ptr %t104, ptr %t105)
  br label %bb36
bb36:
  br label %bb42
bb37:
  br i1 true, label %bb38, label %bb39
bb38:
  br label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb42
bb41:
  call void @__olang_check_failed(ptr @olang_loc_6ed8db51a3dfced1_45a76436772cba65)
  unreachable
bb42:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2einferRounds(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l14 = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  br label %bb1
bb1:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 147
  store i1 true, ptr %t3, !tbaa !21
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/scope:Scoper", ptr %t4, i32 0, i32 148
  store i1 false, ptr %t6, !tbaa !21
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/scope:Scoper", ptr %t7, i32 0, i32 185
  store i1 false, ptr %t9, !tbaa !21
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/scope:Scoper", ptr %t10, i32 0, i32 210
  store i1 false, ptr %t12, !tbaa !21
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/scope:Scoper", ptr %t13, i32 0, i32 212
  store i1 false, ptr %t15, !tbaa !21
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejudge(ptr %v0, ptr %t16, i64 %t17, i1 false)
  br label %bb2
bb2:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/scope:Scoper", ptr %t20, i32 0, i32 147
  store i1 false, ptr %t22, !tbaa !21
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/scope:Scoper", ptr %t23, i32 0, i32 148
  %t26 = load i1, ptr %t25, !tbaa !21
  %t28 = xor i1 %t26, true
  br i1 %t28, label %bb3, label %bb4
bb3:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/scope:Scoper", ptr %t30, i32 0, i32 212
  %t33 = load i1, ptr %t32, !tbaa !21
  store i1 %t33, ptr %l14, !tbaa !21
  br label %bb5
bb4:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb5
bb5:
  %t35 = load i1, ptr %l14, !tbaa !21
  br i1 %t35, label %bb6, label %bb7
bb6:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/scope:Scoper", ptr %t36, i32 0, i32 211
  store i1 true, ptr %t38, !tbaa !21
  br label %bb8
bb7:
  br label %bb8
bb8:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/scope:Scoper", ptr %t39, i32 0, i32 148
  %t42 = load i1, ptr %t41, !tbaa !21
  %t44 = xor i1 %t42, true
  br i1 %t44, label %bb9, label %bb10
bb9:
  br label %bb21
bb10:
  br label %bb11
bb11:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/scope:Scoper", ptr %t46, i32 0, i32 185
  %t49 = load i1, ptr %t48, !tbaa !21
  br i1 %t49, label %bb12, label %bb13
bb12:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edropDefs(ptr %v0, ptr %t51, i64 %t52, i1 true)
  br label %bb14
bb13:
  br label %bb15
bb14:
  store i64 0, ptr %l2, !tbaa !24
  br label %bb20
bb15:
  %t55 = load i64, ptr %l2, !tbaa !24
  %t57 = add i64 %t55, 1
  store i64 %t57, ptr %l2, !tbaa !24
  %t59 = load i64, ptr %l2, !tbaa !24
  %t61 = icmp eq i64 %t59, 8
  br i1 %t61, label %bb16, label %bb17
bb16:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/scope:Scoper", ptr %t63, i32 0, i32 172
  %t66 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t65, i64 %t66, i1 true)
  br label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb19
bb19:
  br label %bb20
bb20:
  br label %bb1
bb21:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisLambda(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l5 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/typed:Body", ptr %a1, i32 0, i32 1
  %t4 = load { i64, [2 x i64] }, ptr %t3
  %t8 = extractvalue { i64, [2 x i64] } %t4, 0
  %t9 = icmp eq i64 %t8, 4
  br i1 %t9, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb9
bb4:
  br i1 true, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  store i1 false, ptr %l5, !tbaa !21
  br label %bb9
bb8:
  call void @__olang_check_failed(ptr @olang_loc_eb1882221c8ba3ab_83c8c93664e1ea07)
  unreachable
bb9:
  %t11 = load i1, ptr %l5, !tbaa !21
  store i1 %t11, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l6 = alloca i32
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t6, i32 %a1)
  store i32 %t10, ptr %l6
  br label %bb1
bb1:
  %t11 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t13 = trunc i64 20 to i32
  %t14 = icmp eq i32 %t11, %t13
  store i1 %t14, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejudgeTwin(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i64
  %lp5 = alloca ptr
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l14 = alloca i64
  %l16 = alloca %"compiler/scope:Scoper"
  %l18 = alloca %"compiler/scope:Scoper"
  %l22 = alloca { i64, ptr }
  %l23 = alloca i64
  %l24 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l34 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l36 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l37 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l42 = alloca %"compiler/source:Span"
  %l51 = alloca %"compiler/scope:Gap"
  %l52 = alloca %"compiler/scope:Gap"
  %l54 = alloca ptr
  %l55 = alloca i64
  %l56 = alloca %"compiler/scope:summary"
  %l60 = alloca { i64, ptr }
  %l63 = alloca { i64, ptr }
  %l67 = alloca ptr
  %l68 = alloca i64
  %l71 = alloca ptr
  %l80 = alloca ptr
  %l81 = alloca i64
  %l84 = alloca %"compiler/typed:Plan"
  %l86 = alloca %"compiler/typed:Plan"
  %l91 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l92 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l94 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l95 = alloca i32
  %l97 = alloca i1
  %s0 = alloca %olang.scope
  %t16 = alloca %"compiler/scope:Scoper", align 8
  %t127 = alloca %"compiler/scope:summary", align 8
  %t209 = alloca %"compiler/typed:Plan", align 8
  %t212 = alloca %"compiler/typed:Plan", align 8
  %t216 = alloca %"compiler/typed:Plan", align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 227
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t6 = load ptr, ptr %l3, !tbaa !29
  %t8 = getelementptr %"compiler/scope:twinTab", ptr %t6, i32 0, i32 1
  %t9 = load i64, ptr %l1, !tbaa !24
  %t12 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t8, i64 %t9)
  store i64 %t12, ptr %l14
  br label %bb1
bb1:
  %t13 = load i64, ptr %l14, !tbaa !24
  store i64 %t13, ptr %l4, !tbaa !24
  %t14 = load ptr, ptr %l0, !tbaa !29
  call void @llvm.memmove.p0.p0.i64(ptr %l16, ptr %t14, i64 8968, i1 false)
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3aScoper(ptr %t16, ptr %v0, ptr %l16)
  call void @llvm.memmove.p0.p0.i64(ptr %l18, ptr %t16, i64 8968, i1 false)
  br label %bb2
bb2:
  %t18 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 8968, i64 8)
  store ptr %t18, ptr %lp5
  %t19 = load ptr, ptr %lp5
  call void @llvm.memmove.p0.p0.i64(ptr %t19, ptr %l18, i64 8968, i1 false)
  %t20 = load ptr, ptr %l3, !tbaa !29
  %t22 = getelementptr %"compiler/scope:twinTab", ptr %t20, i32 0, i32 2
  %t23 = load i64, ptr %l1, !tbaa !24
  %t26 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_3e_2eAt__Hb06c5aa34d45867a1decef3b510ab43e(ptr %v0, ptr %v0, ptr %t22, i64 %t23)
  store { i64, ptr } %t26, ptr %l22
  br label %bb3
bb3:
  %t27 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t28 = extractvalue { i64, ptr } %t27, 0
  store i64 %t28, ptr %l23, !tbaa !24
  %t29 = load i64, ptr %l23, !tbaa !24
  %t30 = mul i64 %t29, 1
  %t31 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t30)
  %t32 = insertvalue { i64, ptr } undef, i64 %t29, 0
  %t33 = insertvalue { i64, ptr } %t32, ptr %t31, 1
  store { i64, ptr } %t33, ptr %l24, !tbaa !27
  %t34 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !27
  %t36 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !27
  %t38 = load i64, ptr %l23, !tbaa !24
  %t39 = mul i64 %t38, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t35, ptr %t37, i64 %t39, i1 false)
  %t40 = load ptr, ptr %lp5
  %t41 = getelementptr %"compiler/scope:Scoper", ptr %t40, i32 0, i32 228
  %t42 = load { i64, ptr }, ptr %t41, !tbaa !27
  store { i64, ptr } %t42, ptr %l25, !tbaa !27
  %t43 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t44 = load ptr, ptr %lp5
  %t45 = getelementptr %"compiler/scope:Scoper", ptr %t44, i32 0, i32 228
  store { i64, ptr } %t43, ptr %t45, !tbaa !27
  %t46 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3aScoper_2e228
  br i1 %t46, label %bb4, label %bb5
bb4:
  %t48 = load { i64, ptr }, ptr %l25
  %t49 = extractvalue { i64, ptr } %t48, 1
  call void @__olang_region_release(ptr %t49)
  store { i64, ptr } zeroinitializer, ptr %l25
  br label %bb5
bb5:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/scope:Scoper", ptr %t50, i32 0, i32 229
  %t53 = load i64, ptr %t52, !tbaa !24
  %t55 = add i64 %t53, 1
  %t57 = load ptr, ptr %lp5
  %t58 = getelementptr %"compiler/scope:Scoper", ptr %t57, i32 0, i32 229
  store i64 %t55, ptr %t58, !tbaa !24
  %t59 = load i64, ptr %l4, !tbaa !24
  %t61 = load ptr, ptr %lp5
  %t62 = getelementptr %"compiler/scope:Scoper", ptr %t61, i32 0, i32 230
  store i64 %t59, ptr %t62, !tbaa !24
  %t63 = load ptr, ptr %l3, !tbaa !29
  %t65 = getelementptr %"compiler/scope:twinTab", ptr %t63, i32 0, i32 3
  %t66 = load i64, ptr %l1, !tbaa !24
  %t69 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fmap_3aMap_3cI64_2c_20c_H79f8cf5232af2c4206851a77600e2775(ptr %v0, ptr %v0, ptr %t65, i64 %t66)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t69, ptr %l34
  br label %bb6
bb6:
  %t71 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e(ptr %v0, ptr %l34)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t71, ptr %l36
  br label %bb7
bb7:
  %t72 = load ptr, ptr %lp5
  %t73 = getelementptr %"compiler/scope:Scoper", ptr %t72, i32 0, i32 231
  %t74 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t73
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t74, ptr %l37
  %t75 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l36
  %t76 = load ptr, ptr %lp5
  %t77 = getelementptr %"compiler/scope:Scoper", ptr %t76, i32 0, i32 231
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t75, ptr %t77
  %t78 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e_2e1
  br i1 %t78, label %bb8, label %bb9
bb8:
  %t80 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l37, i32 0, i32 1
  %t81 = load { i64, ptr }, ptr %t80
  %t82 = extractvalue { i64, ptr } %t81, 1
  call void @__olang_region_release(ptr %t82)
  store { i64, ptr } zeroinitializer, ptr %t80
  br label %bb9
bb9:
  %t83 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e_2e2
  br i1 %t83, label %bb10, label %bb11
bb10:
  %t85 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l37, i32 0, i32 2
  %t86 = load { i64, ptr }, ptr %t85
  %t87 = extractvalue { i64, ptr } %t86, 1
  call void @__olang_region_release(ptr %t87)
  store { i64, ptr } zeroinitializer, ptr %t85
  br label %bb11
bb11:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t92 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enameSpan(ptr %v0, ptr %t88, %"compiler/source:Span" %a2)
  store %"compiler/source:Span" %t92, ptr %l42
  br label %bb12
bb12:
  %t93 = load %"compiler/source:Span", ptr %l42
  store %"compiler/source:Span" %t93, ptr %l6
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/scope:Scoper", ptr %t94, i32 0, i32 26
  %t97 = load ptr, ptr %t96, !tbaa !29
  %t99 = icmp eq ptr %t97, null
  br i1 %t99, label %bb13, label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_8aab7bf10c0c26_6168f58a9a2594a)
  unreachable
bb14:
  br label %bb15
bb15:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = getelementptr %"compiler/scope:Scoper", ptr %t101, i32 0, i32 26
  %t104 = load ptr, ptr %t103, !tbaa !29
  %t107 = getelementptr %"compiler/typed:Body", ptr %t104, i32 0, i32 3
  %t108 = load i64, ptr %t107, !tbaa !24
  %t109 = load %"compiler/source:Span", ptr %l6
  %t112 = call %"compiler/scope:Gap" @compiler_2fscope_3aGap_2ector(ptr %v0, ptr %v0, i64 %t108, %"compiler/source:Span" %t109, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d6, i32 0, i32 1) })
  store %"compiler/scope:Gap" %t112, ptr %l51
  br label %bb16
bb16:
  %t113 = load ptr, ptr %lp5
  %t114 = getelementptr %"compiler/scope:Scoper", ptr %t113, i32 0, i32 238
  %t115 = load %"compiler/scope:Gap", ptr %t114
  store %"compiler/scope:Gap" %t115, ptr %l52
  %t116 = load %"compiler/scope:Gap", ptr %l51
  %t117 = load ptr, ptr %lp5
  %t118 = getelementptr %"compiler/scope:Scoper", ptr %t117, i32 0, i32 238
  store %"compiler/scope:Gap" %t116, ptr %t118
  %t119 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3aGap_2e2
  br i1 %t119, label %bb17, label %bb18
bb17:
  %t121 = getelementptr %"compiler/scope:Gap", ptr %l52, i32 0, i32 2
  %t122 = load { i64, ptr }, ptr %t121
  %t123 = extractvalue { i64, ptr } %t122, 1
  call void @__olang_region_release(ptr %t123)
  store { i64, ptr } zeroinitializer, ptr %t121
  br label %bb18
bb18:
  %t124 = load ptr, ptr %lp5
  %t125 = getelementptr %"compiler/scope:Scoper", ptr %t124, i32 0, i32 6
  store ptr %t125, ptr %l54, !tbaa !29
  %t126 = load i64, ptr %l4, !tbaa !24
  store i64 %t126, ptr %l55, !tbaa !24
  call void @compiler_2fscope_3asummary_2ector(ptr %t127, ptr %v0)
  call void @llvm.memmove.p0.p0.i64(ptr %l56, ptr %t127, i64 624, i1 false)
  br label %bb19
bb19:
  %t128 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 624, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t128, ptr %l56, i64 624, i1 false)
  %t129 = load ptr, ptr %l54, !tbaa !29
  %t130 = load i64, ptr %l55, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hdd18cd18fee7da2cefbfd21396944747(ptr %v0, ptr %v0, ptr %t129, i64 %t130, ptr %t128)
  br label %bb20
bb20:
  %t132 = load ptr, ptr %lp5
  %t133 = load i64, ptr %l4, !tbaa !24
  %t134 = mul i64 1, 8
  %t135 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t134)
  %t136 = insertvalue { i64, ptr } undef, i64 1, 0
  %t137 = insertvalue { i64, ptr } %t136, ptr %t135, 1
  store { i64, ptr } %t137, ptr %l60, !tbaa !27
  %t139 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t140 = load ptr, ptr %t139, !tbaa !27
  %t141 = getelementptr i64, ptr %t140, i64 0
  store i64 %t133, ptr %t141, !tbaa !34
  %t143 = load { i64, ptr }, ptr %l60, !tbaa !27
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edropLifts(ptr %v0, ptr %s0, ptr %t132, { i64, ptr } %t143)
  br label %bb21
bb21:
  %t144 = load ptr, ptr %lp5
  %t145 = getelementptr %"compiler/scope:Scoper", ptr %t144, i32 0, i32 147
  store i1 false, ptr %t145, !tbaa !21
  %t146 = load ptr, ptr %lp5
  %t147 = getelementptr %"compiler/scope:Scoper", ptr %t146, i32 0, i32 148
  store i1 false, ptr %t147, !tbaa !21
  %t148 = load ptr, ptr %lp5
  %t149 = getelementptr %"compiler/scope:Scoper", ptr %t148, i32 0, i32 52
  store i1 false, ptr %t149, !tbaa !21
  %t150 = load ptr, ptr %lp5
  %t151 = getelementptr %"compiler/scope:Scoper", ptr %t150, i32 0, i32 220
  store i1 false, ptr %t151, !tbaa !21
  %t152 = load ptr, ptr %lp5
  %t153 = getelementptr %"compiler/scope:Scoper", ptr %t152, i32 0, i32 80
  store i1 false, ptr %t153, !tbaa !21
  %t154 = load ptr, ptr %lp5
  %t155 = getelementptr %"compiler/scope:Scoper", ptr %t154, i32 0, i32 128
  store i1 false, ptr %t155, !tbaa !21
  %t156 = load ptr, ptr %lp5
  %t157 = load i64, ptr %l4, !tbaa !24
  %t158 = mul i64 1, 8
  %t159 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t158)
  %t160 = insertvalue { i64, ptr } undef, i64 1, 0
  %t161 = insertvalue { i64, ptr } %t160, ptr %t159, 1
  store { i64, ptr } %t161, ptr %l63, !tbaa !27
  %t163 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t164 = load ptr, ptr %t163, !tbaa !27
  %t165 = getelementptr i64, ptr %t164, i64 0
  store i64 %t157, ptr %t165, !tbaa !34
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t168 = getelementptr %"compiler/scope:Scoper", ptr %t166, i32 0, i32 28
  %t169 = load i1, ptr %t168, !tbaa !21
  %t171 = load { i64, ptr }, ptr %l63, !tbaa !27
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecomponent(ptr %v0, ptr %s0, ptr %t156, { i64, ptr } %t171, i1 %t169)
  br label %bb22
bb22:
  %t173 = load ptr, ptr %l3, !tbaa !29
  %t175 = getelementptr %"compiler/scope:twinTab", ptr %t173, i32 0, i32 4
  store ptr %t175, ptr %l67, !tbaa !29
  %t176 = load i64, ptr %l1, !tbaa !24
  store i64 %t176, ptr %l68, !tbaa !24
  %t177 = load ptr, ptr %lp5
  %t178 = getelementptr %"compiler/scope:Scoper", ptr %t177, i32 0, i32 6
  %t179 = load i64, ptr %l4, !tbaa !24
  %t182 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t178, i64 %t179)
  store ptr %t182, ptr %l71
  br label %bb23
bb23:
  %t183 = load ptr, ptr %l67, !tbaa !29
  %t184 = load i64, ptr %l68, !tbaa !24
  %t185 = load ptr, ptr %l71, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hdd18cd18fee7da2cefbfd21396944747(ptr %v0, ptr %v0, ptr %t183, i64 %t184, ptr %t185)
  br label %bb24
bb24:
  %t186 = load ptr, ptr %l3, !tbaa !29
  %t188 = getelementptr %"compiler/scope:twinTab", ptr %t186, i32 0, i32 8
  %t189 = load i64, ptr %l1, !tbaa !24
  %t190 = load ptr, ptr %l3, !tbaa !29
  %t192 = getelementptr %"compiler/scope:twinTab", ptr %t190, i32 0, i32 9
  %t193 = load i64, ptr %t192, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t188, i64 %t189, i64 %t193)
  br label %bb25
bb25:
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t199 = getelementptr %"compiler/scope:Scoper", ptr %t197, i32 0, i32 28
  %t200 = load i1, ptr %t199, !tbaa !21
  br i1 %t200, label %bb26, label %bb27
bb26:
  %t202 = load ptr, ptr %l3, !tbaa !29
  %t204 = getelementptr %"compiler/scope:twinTab", ptr %t202, i32 0, i32 5
  store ptr %t204, ptr %l80, !tbaa !29
  %t205 = load i64, ptr %l1, !tbaa !24
  store i64 %t205, ptr %l81, !tbaa !24
  %t206 = load ptr, ptr %lp5
  %t207 = getelementptr %"compiler/scope:Scoper", ptr %t206, i32 0, i32 2
  %t208 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eAt_3ccompiler_2ftyped_3aPlan_3e(ptr %t209, ptr %v0, ptr %v0, ptr %t207, i64 %t208)
  call void @llvm.memmove.p0.p0.i64(ptr %l84, ptr %t209, i64 536, i1 false)
  br label %bb28
bb27:
  br label %bb32
bb28:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ftyped_3aPlan(ptr %t212, ptr %v0, ptr %l84)
  call void @llvm.memmove.p0.p0.i64(ptr %l86, ptr %t212, i64 536, i1 false)
  br label %bb29
bb29:
  %t214 = load ptr, ptr %l80, !tbaa !29
  %t215 = load i64, ptr %l81, !tbaa !24
  call void @llvm.memmove.p0.p0.i64(ptr %t216, ptr %l86, i64 536, i1 false)
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eSetAt_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %v0, ptr %t214, i64 %t215, ptr %t216)
  br label %bb30
bb30:
  %t217 = load ptr, ptr %l3, !tbaa !29
  %t219 = getelementptr %"compiler/scope:twinTab", ptr %t217, i32 0, i32 6
  %t220 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t219, i64 %t220, i1 true)
  br label %bb31
bb31:
  br label %bb32
bb32:
  %t223 = load ptr, ptr %lp5
  %t224 = getelementptr %"compiler/scope:Scoper", ptr %t223, i32 0, i32 234
  %t226 = call %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H0d83a40c67cd8749e6caf886dac77c3a(ptr %v0, ptr %v0, ptr %t224)
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t226, ptr %l91
  br label %bb33
bb33:
  %t227 = load %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l91
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t227, ptr %l7
  br label %bb34
bb34:
  %t229 = call { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cstd_2fpair_3aPair_3cI64_2c_20I6_H50b542c856ab641bdb3083563d5a1f0c(ptr %v0, ptr %l7)
  %t230 = extractvalue { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } %t229, 1
  %t231 = extractvalue { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } %t229, 0
  store i32 %t231, ptr %l95
  %t232 = icmp ne i32 %t231, 0
  br i1 %t232, label %bb36, label %ok.233, !prof !99
ok.233:
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t230, ptr %l94
  br label %bb35
bb35:
  %t234 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l94
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t234, ptr %l92
  br label %bb38
bb36:
  %t235 = load i32, ptr %l95, !tbaa !23
  %t236 = ashr i32 %t235, 16
  %t238 = icmp eq i32 %t236, 1
  store i1 %t238, ptr %l97, !tbaa !21
  br label %bb37
bb37:
  br label %bb41
bb38:
  %t239 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l92
  %t240 = load ptr, ptr %l0, !tbaa !29
  %t242 = getelementptr %"compiler/scope:Scoper", ptr %t240, i32 0, i32 234
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %t242, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t239, i1 true)
  br label %bb39
bb39:
  br label %bb40
bb40:
  br label %bb34
bb41:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
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
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwExpr(ptr %v0, ptr %v1, ptr %t16, ptr %t17, i1 true)
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
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwPlace(ptr %v0, ptr %v1, ptr %t36, ptr %t37)
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
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwPlace(ptr %v0, ptr %v1, ptr %t55, ptr %t59)
  br label %bb20
bb20:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load ptr, ptr %l4, !tbaa !29
  %t65 = getelementptr %"compiler/typed:Elem", ptr %t63, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwExpr(ptr %v0, ptr %v1, ptr %t62, ptr %t66, i1 true)
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
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwPlace(ptr %v0, ptr %v1, ptr %t85, ptr %t89)
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
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwExpr(ptr %v0, ptr %v1, ptr %t107, ptr %t108, i1 false)
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
  call void @__olang_check_failed(ptr @olang_loc_18a5faea2cb1c4f1_869f553adf885b95)
  unreachable
bb41:
  br label %ret
ret:
  ret void
}

define dso_local { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elandByObligations(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca { i64, [2 x i64] }
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca %"compiler/scope:rel"
  %l9 = alloca { i64, [2 x i64] }
  %l10 = alloca { i64, [2 x i64] }
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l17 = alloca i64
  %l19 = alloca ptr
  %l20 = alloca i1
  %l24 = alloca i1
  %l27 = alloca i1
  %l30 = alloca i1
  %l36 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l38 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l40 = alloca i64
  %l42 = alloca i64
  %l47 = alloca %"compiler/scope:rel"
  %l50 = alloca i1
  %l55 = alloca i1
  %l58 = alloca i1
  %l71 = alloca { i64, ptr }
  %l79 = alloca i1
  %l93 = alloca { i64, [2 x i64] }
  %l95 = alloca i1
  %l97 = alloca i1
  %l104 = alloca { i64, [2 x i64] }
  %l114 = alloca i1
  %l118 = alloca i1
  %l127 = alloca i64
  %l134 = alloca i64
  %s2 = alloca %olang.scope
  %rv = alloca { i64, [2 x i64] }
  %t38 = alloca { i64, [2 x i64] }, align 8
  %t42 = alloca { i64, [2 x i64] }, align 8
  %t107 = alloca { i64, [2 x i64] }, align 8
  %t154 = alloca { i64, [2 x i64] }, align 8
  %t209 = alloca { i64, [2 x i64] }, align 8
  %t241 = alloca { i64, [2 x i64] }, align 8
  %t245 = alloca { i64, [2 x i64] }, align 8
  %t282 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t4 = getelementptr %"compiler/typed:Call", ptr %t2, i32 0, i32 0
  %t5 = load ptr, ptr %t4, !tbaa !29
  %t8 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebodyOf(ptr %v0, ptr %v1, ptr %t1, ptr %t5)
  store i64 %t8, ptr %l17
  br label %bb1
bb1:
  %t9 = load i64, ptr %l17, !tbaa !24
  store i64 %t9, ptr %l4, !tbaa !24
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr %"compiler/typed:Call", ptr %t10, i32 0, i32 0
  %t13 = load ptr, ptr %t12, !tbaa !29
  store ptr %t13, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t14 = load ptr, ptr %l19, !tbaa !29
  %t15 = icmp ne ptr %t14, null
  br i1 %t15, label %bb2, label %bb3
bb2:
  %t17 = load ptr, ptr %l19, !tbaa !29
  %t18 = load i64, ptr %t17, !range !{i64 0, i64 5}
  %t20 = icmp eq i64 %t18, 2
  store i1 %t20, ptr %l20, !tbaa !21
  br label %bb3
bb3:
  %t21 = load i1, ptr %l20, !tbaa !21
  %t22 = xor i1 %t21, true
  br i1 %t22, label %bb4, label %bb5
bb4:
  %t24 = load i64, ptr %l4, !tbaa !24
  %t26 = icmp slt i64 %t24, 0
  br i1 %t26, label %bb6, label %bb7
bb5:
  store i1 false, ptr %l24, !tbaa !21
  br label %bb10
bb6:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb9
bb7:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load i64, ptr %l4, !tbaa !24
  %t32 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esummed(ptr %v0, ptr %t28, i64 %t29)
  store i1 %t32, ptr %l30
  br label %bb8
bb8:
  %t33 = load i1, ptr %l30, !tbaa !21
  %t34 = xor i1 %t33, true
  store i1 %t34, ptr %l27, !tbaa !21
  br label %bb9
bb9:
  %t36 = load i1, ptr %l27, !tbaa !21
  store i1 %t36, ptr %l24, !tbaa !21
  br label %bb10
bb10:
  %t37 = load i1, ptr %l24, !tbaa !21
  br i1 %t37, label %bb11, label %bb12
bb11:
  store { i64, [2 x i64] } zeroinitializer, ptr %t38
  %t39 = getelementptr { i64, [2 x i64] }, ptr %t38, i32 0, i32 0
  store i64 0, ptr %t39
  %t40 = load { i64, [2 x i64] }, ptr %t38
  store { i64, [2 x i64] } %t40, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  store { i64, [2 x i64] } zeroinitializer, ptr %t42
  %t43 = getelementptr { i64, [2 x i64] }, ptr %t42, i32 0, i32 0
  store i64 0, ptr %t43
  %t44 = load { i64, [2 x i64] }, ptr %t42
  store { i64, [2 x i64] } %t44, ptr %l5
  store %olang.scope zeroinitializer, ptr %s2
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load ptr, ptr %l1, !tbaa !29
  %t50 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecallRels(ptr %v0, ptr %v1, ptr %s2, ptr %t46, ptr %t47)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t50, ptr %l36
  br label %bb14
bb14:
  %t52 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e(ptr %s2, ptr %l36)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t52, ptr %l38
  br label %bb15
bb15:
  %t53 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l38
  %t54 = call ptr @__olang_scope_alloc_a(ptr %s2, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t53, ptr %t54
  store ptr %t54, ptr %l6, !tbaa !29
  store i64 0, ptr %l7, !tbaa !24
  br label %bb16
bb16:
  %t56 = load i64, ptr %l7, !tbaa !24
  store i64 %t56, ptr %l40, !tbaa !24
  %t57 = load ptr, ptr %l6, !tbaa !29
  %t59 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eLen_3ccompiler_2fscope_3arel_3e(ptr %s2, ptr %t57)
  store i64 %t59, ptr %l42
  br label %bb17
bb17:
  %t60 = load i64, ptr %l40, !tbaa !24
  %t61 = load i64, ptr %l42, !tbaa !24
  %t62 = icmp slt i64 %t60, %t61
  %t64 = xor i1 %t62, true
  br i1 %t64, label %bb18, label %bb19
bb18:
  br label %bb103
bb19:
  br label %bb20
bb20:
  %t66 = load ptr, ptr %l6, !tbaa !29
  %t67 = load i64, ptr %l7, !tbaa !24
  %t70 = call %"compiler/scope:rel" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eAt_3ccompiler_2fscope_3arel_3e(ptr %s2, ptr %t66, i64 %t67)
  store %"compiler/scope:rel" %t70, ptr %l47
  br label %bb21
bb21:
  %t71 = load %"compiler/scope:rel", ptr %l47
  store %"compiler/scope:rel" %t71, ptr %l8
  %t72 = getelementptr %"compiler/scope:rel", ptr %l8, i32 0, i32 1
  %t73 = load { i64, [2 x i64] }, ptr %t72
  %t75 = extractvalue { i64, [2 x i64] } %t73, 0
  %t76 = icmp eq i64 %t75, 2
  br i1 %t76, label %bb22, label %bb23
bb22:
  %t78 = getelementptr %"compiler/scope:rel", ptr %l8, i32 0, i32 1
  %t79 = getelementptr { i64, [2 x i64] }, ptr %t78, i32 0, i32 1
  %t80 = getelementptr { i64 }, ptr %t79, i32 0, i32 0
  %t81 = load i64, ptr %t80
  %t82 = load i64, ptr %l2, !tbaa !24
  %t85 = icmp eq i64 %t81, %t82
  store i1 %t85, ptr %l50, !tbaa !21
  br label %bb24
bb23:
  store i1 false, ptr %l50, !tbaa !21
  br label %bb24
bb24:
  %t87 = load i1, ptr %l50, !tbaa !21
  %t88 = xor i1 %t87, true
  br i1 %t88, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l55, !tbaa !21
  br label %bb30
bb26:
  %t90 = getelementptr %"compiler/scope:rel", ptr %l8, i32 0, i32 0
  %t91 = load { i64, [2 x i64] }, ptr %t90
  %t93 = extractvalue { i64, [2 x i64] } %t91, 0
  %t94 = icmp eq i64 %t93, 2
  br i1 %t94, label %bb27, label %bb28
bb27:
  %t96 = getelementptr %"compiler/scope:rel", ptr %l8, i32 0, i32 0
  %t97 = getelementptr { i64, [2 x i64] }, ptr %t96, i32 0, i32 1
  %t98 = getelementptr { i64 }, ptr %t97, i32 0, i32 0
  %t99 = load i64, ptr %t98
  %t100 = load i64, ptr %l2, !tbaa !24
  %t103 = icmp eq i64 %t99, %t100
  store i1 %t103, ptr %l58, !tbaa !21
  br label %bb29
bb28:
  store i1 false, ptr %l58, !tbaa !21
  br label %bb29
bb29:
  %t105 = load i1, ptr %l58, !tbaa !21
  store i1 %t105, ptr %l55, !tbaa !21
  br label %bb30
bb30:
  %t106 = load i1, ptr %l55, !tbaa !21
  br i1 %t106, label %bb31, label %bb32
bb31:
  br label %bb102
bb32:
  br label %bb33
bb33:
  store { i64, [2 x i64] } zeroinitializer, ptr %t107
  %t108 = getelementptr { i64, [2 x i64] }, ptr %t107, i32 0, i32 0
  store i64 0, ptr %t108
  %t109 = load { i64, [2 x i64] }, ptr %t107
  store { i64, [2 x i64] } %t109, ptr %l9
  %t111 = getelementptr %"compiler/scope:rel", ptr %l8, i32 0, i32 0
  %t112 = load { i64, [2 x i64] }, ptr %t111
  store { i64, [2 x i64] } %t112, ptr %l10
  %t114 = load { i64, [2 x i64] }, ptr %l10
  %t116 = extractvalue { i64, [2 x i64] } %t114, 0
  %t117 = icmp eq i64 %t116, 2
  br i1 %t117, label %bb34, label %bb35
bb34:
  %t119 = getelementptr { i64, [2 x i64] }, ptr %l10, i32 0, i32 1
  %t120 = getelementptr { i64 }, ptr %t119, i32 0, i32 0
  %t121 = load i64, ptr %t120
  store i64 %t121, ptr %l11, !tbaa !24
  br label %bb36
bb35:
  br label %bb47
bb36:
  %t123 = load i64, ptr %l11, !tbaa !24
  %t124 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t126 = extractvalue { i64, ptr } %t124, 0
  %t129 = icmp slt i64 %t123, %t126
  br i1 %t129, label %bb37, label %bb38
bb37:
  %t131 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t131, ptr %l71, !tbaa !27
  %t132 = load i64, ptr %l11, !tbaa !24
  %t134 = getelementptr { i64, ptr }, ptr %l71, i32 0, i32 1
  %t135 = load ptr, ptr %t134, !tbaa !27
  %t136 = getelementptr { i64, [2 x i64] }, ptr %t135, i64 %t132
  %t137 = load { i64, [2 x i64] }, ptr %t136
  store { i64, [2 x i64] } %t137, ptr %l9
  br label %bb39
bb38:
  br label %bb39
bb39:
  %t139 = load { i64, [2 x i64] }, ptr %l9
  %t141 = extractvalue { i64, [2 x i64] } %t139, 0
  %t142 = icmp eq i64 %t141, 0
  br i1 %t142, label %bb40, label %bb41
bb40:
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t145 = load ptr, ptr %l1, !tbaa !29
  %t146 = load i64, ptr %l11, !tbaa !24
  %t150 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estaticVar(ptr %v0, ptr %v1, ptr %t144, ptr %t145, i64 %t146)
  store i1 %t150, ptr %l79
  br label %bb42
bb41:
  br label %bb46
bb42:
  %t151 = load i1, ptr %l79, !tbaa !21
  %t152 = xor i1 %t151, true
  br i1 %t152, label %bb43, label %bb44
bb43:
  br label %bb102
bb44:
  br label %bb45
bb45:
  store { i64, [2 x i64] } zeroinitializer, ptr %t154
  %t155 = getelementptr { i64, [2 x i64] }, ptr %t154, i32 0, i32 0
  store i64 3, ptr %t155
  %t156 = load { i64, [2 x i64] }, ptr %t154
  store { i64, [2 x i64] } %t156, ptr %l9
  br label %bb46
bb46:
  br label %bb68
bb47:
  %t158 = load { i64, [2 x i64] }, ptr %l10
  %t160 = extractvalue { i64, [2 x i64] } %t158, 0
  %t161 = icmp eq i64 %t160, 4
  br i1 %t161, label %bb48, label %bb49
bb48:
  %t163 = getelementptr { i64, [2 x i64] }, ptr %l10, i32 0, i32 1
  %t164 = getelementptr { i64, i64 }, ptr %t163, i32 0, i32 0
  %t165 = load i64, ptr %t164
  store i64 %t165, ptr %l12, !tbaa !24
  %t167 = getelementptr { i64, [2 x i64] }, ptr %l10, i32 0, i32 1
  %t168 = getelementptr { i64, i64 }, ptr %t167, i32 0, i32 1
  %t169 = load i64, ptr %t168
  store i64 %t169, ptr %l13, !tbaa !24
  br label %bb50
bb49:
  br label %bb63
bb50:
  %t171 = load i64, ptr %l12, !tbaa !24
  %t173 = icmp sge i64 %t171, 0
  br i1 %t173, label %bb51, label %bb52
bb51:
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t176 = load i64, ptr %l12, !tbaa !24
  %t177 = load i64, ptr %l13, !tbaa !24
  %t178 = load ptr, ptr %l1, !tbaa !29
  %t179 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t185 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ederivedAt(ptr %v0, ptr %v1, ptr %v2, ptr %t175, i64 %t176, i64 %t177, ptr %t178, i1 true, { i64, ptr } %t179)
  store { i64, [2 x i64] } %t185, ptr %l93
  br label %bb53
bb52:
  br label %bb62
bb53:
  %t186 = load { i64, [2 x i64] }, ptr %l93
  store { i64, [2 x i64] } %t186, ptr %l9
  %t187 = load { i64, [2 x i64] }, ptr %l9
  %t189 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t187)
  store i1 %t189, ptr %l95
  br label %bb54
bb54:
  %t190 = load i1, ptr %l95, !tbaa !21
  %t191 = xor i1 %t190, true
  br i1 %t191, label %bb55, label %bb56
bb55:
  store i1 true, ptr %l97, !tbaa !21
  br label %bb57
bb56:
  %t193 = load { i64, [2 x i64] }, ptr %l9
  %t195 = extractvalue { i64, [2 x i64] } %t193, 0
  %t196 = icmp eq i64 %t195, 3
  store i1 %t196, ptr %l97, !tbaa !21
  br label %bb57
bb57:
  %t198 = load i1, ptr %l97, !tbaa !21
  br i1 %t198, label %bb58, label %bb59
bb58:
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t200 = load ptr, ptr %l1, !tbaa !29
  %t201 = load i64, ptr %l12, !tbaa !24
  %t202 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t207 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eparamBinding(ptr %v0, ptr %v1, ptr %v2, ptr %t199, ptr %t200, i64 %t201, { i64, ptr } %t202)
  store { i64, [2 x i64] } %t207, ptr %l104
  br label %bb60
bb59:
  br label %bb61
bb60:
  %t208 = load { i64, [2 x i64] }, ptr %l104
  store { i64, [2 x i64] } %t208, ptr %l9
  br label %bb61
bb61:
  br label %bb62
bb62:
  br label %bb68
bb63:
  br i1 true, label %bb64, label %bb65
bb64:
  br label %bb66
bb65:
  br label %bb67
bb66:
  store { i64, [2 x i64] } zeroinitializer, ptr %t209
  %t210 = getelementptr { i64, [2 x i64] }, ptr %t209, i32 0, i32 0
  store i64 0, ptr %t210
  %t211 = load { i64, [2 x i64] }, ptr %t209
  call void @__olang_scope_close(ptr %s2)
  store { i64, [2 x i64] } %t211, ptr %rv
  br label %ret
bb67:
  call void @__olang_check_failed(ptr @olang_loc_8c8a5a319e38c1bd_d671b8fda2886981)
  unreachable
bb68:
  %t213 = load { i64, [2 x i64] }, ptr %l9
  %t215 = extractvalue { i64, [2 x i64] } %t213, 0
  %t216 = icmp eq i64 %t215, 1
  br i1 %t216, label %bb69, label %bb70
bb69:
  br label %bb73
bb70:
  %t218 = load { i64, [2 x i64] }, ptr %l9
  %t220 = extractvalue { i64, [2 x i64] } %t218, 0
  %t221 = icmp eq i64 %t220, 2
  br i1 %t221, label %bb71, label %bb72
bb71:
  br label %bb73
bb72:
  br label %bb74
bb73:
  br label %bb90
bb74:
  %t223 = load { i64, [2 x i64] }, ptr %l9
  %t225 = extractvalue { i64, [2 x i64] } %t223, 0
  %t226 = icmp eq i64 %t225, 3
  br i1 %t226, label %bb75, label %bb76
bb75:
  br label %bb77
bb76:
  br label %bb85
bb77:
  %t228 = load i64, ptr %l4, !tbaa !24
  %t230 = icmp slt i64 %t228, 0
  br i1 %t230, label %bb78, label %bb79
bb78:
  store i1 true, ptr %l114, !tbaa !21
  br label %bb81
bb79:
  %t232 = load ptr, ptr %l0, !tbaa !29
  %t233 = load i64, ptr %l4, !tbaa !24
  %t234 = load i64, ptr %l2, !tbaa !24
  %t238 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esumBuilds(ptr %v0, ptr %t232, i64 %t233, i64 %t234)
  store i1 %t238, ptr %l118
  br label %bb80
bb80:
  %t239 = load i1, ptr %l118, !tbaa !21
  store i1 %t239, ptr %l114, !tbaa !21
  br label %bb81
bb81:
  %t240 = load i1, ptr %l114, !tbaa !21
  br i1 %t240, label %bb82, label %bb83
bb82:
  store { i64, [2 x i64] } zeroinitializer, ptr %t241
  %t242 = getelementptr { i64, [2 x i64] }, ptr %t241, i32 0, i32 0
  store i64 0, ptr %t242
  %t243 = load { i64, [2 x i64] }, ptr %t241
  call void @__olang_scope_close(ptr %s2)
  store { i64, [2 x i64] } %t243, ptr %rv
  br label %ret
bb83:
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
  store { i64, [2 x i64] } zeroinitializer, ptr %t245
  %t246 = getelementptr { i64, [2 x i64] }, ptr %t245, i32 0, i32 0
  store i64 0, ptr %t246
  %t247 = load { i64, [2 x i64] }, ptr %t245
  call void @__olang_scope_close(ptr %s2)
  store { i64, [2 x i64] } %t247, ptr %rv
  br label %ret
bb89:
  call void @__olang_check_failed(ptr @olang_loc_d6d71e16ab160a8c_d85efb61f7dcc5f0)
  unreachable
bb90:
  %t249 = load { i64, [2 x i64] }, ptr %l5
  %t251 = extractvalue { i64, [2 x i64] } %t249, 0
  %t252 = icmp eq i64 %t251, 0
  br i1 %t252, label %bb91, label %bb92
bb91:
  %t254 = load { i64, [2 x i64] }, ptr %l9
  store { i64, [2 x i64] } %t254, ptr %l5
  br label %bb101
bb92:
  %t256 = load ptr, ptr %l0, !tbaa !29
  %t257 = load { i64, [2 x i64] }, ptr %l5
  %t258 = load { i64, [2 x i64] }, ptr %l9
  %t262 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eorder(ptr %v0, ptr %t256, { i64, [2 x i64] } %t257, { i64, [2 x i64] } %t258)
  store i64 %t262, ptr %l127
  br label %bb93
bb93:
  %t263 = load i64, ptr @G_2ecompiler_2fscope_2eHolds, !tbaa !24
  %t264 = load i64, ptr %l127, !tbaa !24
  %t266 = icmp eq i64 %t264, %t263
  br i1 %t266, label %bb94, label %bb95
bb94:
  %t268 = load { i64, [2 x i64] }, ptr %l9
  store { i64, [2 x i64] } %t268, ptr %l5
  br label %bb100
bb95:
  %t270 = load ptr, ptr %l0, !tbaa !29
  %t271 = load { i64, [2 x i64] }, ptr %l9
  %t272 = load { i64, [2 x i64] }, ptr %l5
  %t276 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eorder(ptr %v0, ptr %t270, { i64, [2 x i64] } %t271, { i64, [2 x i64] } %t272)
  store i64 %t276, ptr %l134
  br label %bb96
bb96:
  %t277 = load i64, ptr @G_2ecompiler_2fscope_2eHolds, !tbaa !24
  %t278 = load i64, ptr %l134, !tbaa !24
  %t280 = icmp ne i64 %t278, %t277
  br i1 %t280, label %bb97, label %bb98
bb97:
  store { i64, [2 x i64] } zeroinitializer, ptr %t282
  %t283 = getelementptr { i64, [2 x i64] }, ptr %t282, i32 0, i32 0
  store i64 0, ptr %t283
  %t284 = load { i64, [2 x i64] }, ptr %t282
  call void @__olang_scope_close(ptr %s2)
  store { i64, [2 x i64] } %t284, ptr %rv
  br label %ret
bb98:
  br label %bb99
bb99:
  br label %bb100
bb100:
  br label %bb101
bb101:
  br label %bb102
bb102:
  %t286 = load i64, ptr %l7, !tbaa !24
  %t288 = add i64 %t286, 1
  store i64 %t288, ptr %l7, !tbaa !24
  br label %bb16
bb103:
  call void @__olang_scope_close(ptr %s2)
  %t290 = load { i64, [2 x i64] }, ptr %l5
  store { i64, [2 x i64] } %t290, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elastName(ptr %v0, ptr %a0, %"compiler/source:Span" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l9 = alloca ptr
  %l17 = alloca { i64, ptr }
  %l18 = alloca i32
  %l33 = alloca { i64, ptr }
  %l36 = alloca i1
  %l41 = alloca i1
  %l42 = alloca { i64, ptr }
  %l45 = alloca i1
  %l53 = alloca %"compiler/source:Span"
  %s3 = alloca %olang.scope
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
  call void @__olang_check_failed(ptr @olang_loc_d50f79fefbee4394_12c4367532f3ae80)
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d7, i32 0, i32 1) }, ptr %l7, !tbaa !27
  br label %bb7
bb7:
  %t27 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t27, ptr %l2, !tbaa !27
  %t28 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t29 = load i32, ptr %t28, !tbaa !23
  %t31 = sext i32 %t29 to i64
  store i64 %t31, ptr %l3, !tbaa !24
  %t33 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 1
  %t34 = load i32, ptr %t33, !tbaa !23
  %t36 = sext i32 %t34 to i64
  store i64 %t36, ptr %l4, !tbaa !24
  %t38 = load i64, ptr %l4, !tbaa !24
  %t39 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t39, 0
  %t44 = icmp sgt i64 %t38, %t41
  br i1 %t44, label %bb8, label %bb9
bb8:
  %t46 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t46, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t48 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t48, ptr %l5
  br label %bb11
bb11:
  %t50 = load i64, ptr %l3, !tbaa !24
  %t51 = load i64, ptr %l4, !tbaa !24
  %t54 = icmp slt i64 %t50, %t51
  %t56 = xor i1 %t54, true
  br i1 %t56, label %bb12, label %bb13
bb12:
  br label %bb31
bb13:
  br label %bb14
bb14:
  %t58 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t58, ptr %l33, !tbaa !27
  %t59 = load i64, ptr %l3, !tbaa !24
  %t61 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !27
  %t63 = getelementptr i8, ptr %t62, i64 %t59
  %t64 = load i8, ptr %t63, !tbaa !32
  %t66 = call i1 @compiler_2fscope_2eisNameChar(i8 %t64)
  store i1 %t66, ptr %l36
  br label %bb15
bb15:
  %t67 = load i1, ptr %l36, !tbaa !21
  br i1 %t67, label %bb16, label %bb17
bb16:
  store %olang.scope zeroinitializer, ptr %s3
  %t68 = load i64, ptr %l3, !tbaa !24
  store i64 %t68, ptr %l6, !tbaa !24
  br label %bb18
bb17:
  br label %bb29
bb18:
  %t70 = load i64, ptr %l3, !tbaa !24
  %t71 = load i64, ptr %l4, !tbaa !24
  %t74 = icmp slt i64 %t70, %t71
  br i1 %t74, label %bb19, label %bb20
bb19:
  %t76 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t76, ptr %l42, !tbaa !27
  %t77 = load i64, ptr %l3, !tbaa !24
  %t79 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !27
  %t81 = getelementptr i8, ptr %t80, i64 %t77
  %t82 = load i8, ptr %t81, !tbaa !32
  %t84 = call i1 @compiler_2fscope_2eisNameChar(i8 %t82)
  store i1 %t84, ptr %l45
  br label %bb21
bb20:
  store i1 false, ptr %l41, !tbaa !21
  br label %bb22
bb21:
  %t85 = load i1, ptr %l45, !tbaa !21
  store i1 %t85, ptr %l41, !tbaa !21
  br label %bb22
bb22:
  %t86 = load i1, ptr %l41, !tbaa !21
  %t87 = xor i1 %t86, true
  br i1 %t87, label %bb23, label %bb24
bb23:
  br label %bb27
bb24:
  br label %bb25
bb25:
  %t89 = load i64, ptr %l3, !tbaa !24
  %t91 = add i64 %t89, 1
  store i64 %t91, ptr %l3, !tbaa !24
  br label %bb26
bb26:
  br label %bb18
bb27:
  %t93 = load i64, ptr %l6, !tbaa !24
  %t95 = trunc i64 %t93 to i32
  %t96 = load i64, ptr %l3, !tbaa !24
  %t98 = trunc i64 %t96 to i32
  %t101 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s3, i32 %t95, i32 %t98)
  store %"compiler/source:Span" %t101, ptr %l53
  br label %bb28
bb28:
  %t102 = load %"compiler/source:Span", ptr %l53
  store %"compiler/source:Span" %t102, ptr %l5
  call void @__olang_scope_close(ptr %s3)
  br label %bb30
bb29:
  %t103 = load i64, ptr %l3, !tbaa !24
  %t105 = add i64 %t103, 1
  store i64 %t105, ptr %l3, !tbaa !24
  br label %bb30
bb30:
  br label %bb11
bb31:
  %t107 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t107, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elift(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i32
  %rv = alloca i32
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %a0, i32 0, i32 116
  %t4 = load i32, ptr %l1, !tbaa !23
  %t6 = sext i32 %t4 to i64
  %t9 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t3, i64 %t6)
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
  %t15 = load i32, ptr %l1, !tbaa !23
  %t17 = sext i32 %t15 to i64
  store i64 %t17, ptr %l2, !tbaa !24
  br label %bb4
bb4:
  %t19 = load i64, ptr %l2, !tbaa !24
  %t20 = trunc i64 %t19 to i32
  store i32 %t20, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emadeCase(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i1
  %l9 = alloca ptr
  %l10 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t6 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %s0, ptr %a0, ptr %a1)
  store ptr %t6, ptr %l7
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l7, !tbaa !29
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
  %t15 = icmp eq i64 %t13, 7
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
  br label %bb7
bb6:
  %t23 = load ptr, ptr %l3, !tbaa !29
  %t25 = getelementptr %"compiler/typed:Make", ptr %t23, i32 0, i32 0
  %t26 = load i32, ptr %t25, !range !{i32 0, i32 5}
  %t28 = trunc i64 1 to i32
  %t29 = icmp eq i32 %t26, %t28
  store i1 %t29, ptr %l8, !tbaa !21
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
  call void @__olang_check_failed(ptr @olang_loc_ebf3252f75f0963d_4d00f10623fd4f01)
  unreachable
bb12:
  call void @__olang_scope_close(ptr %s0)
  %t31 = load i1, ptr %l8, !tbaa !21
  store i1 %t31, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoteMakeWhere(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/source:Span" %a2, ptr %a3, i64 %a4, i64 %a5, { i64, [2 x i64] } %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i64
  %l7 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i1
  %l15 = alloca %"compiler/source:Span"
  %l16 = alloca ptr
  %l18 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l25 = alloca ptr
  %l29 = alloca ptr
  %l31 = alloca i64
  %l32 = alloca i64
  %l38 = alloca ptr
  %l47 = alloca %"compiler/typed:Local"
  %l49 = alloca { i64, ptr }
  %l52 = alloca i1
  %l56 = alloca i64
  %l59 = alloca i1
  %l63 = alloca i1
  %l72 = alloca %"compiler/typed:Local"
  %l78 = alloca ptr
  %l87 = alloca %"compiler/typed:Local"
  %l89 = alloca { i64, ptr }
  %l90 = alloca ptr
  %l91 = alloca i64
  %l98 = alloca i64
  %l99 = alloca ptr
  %l108 = alloca %"compiler/typed:Local"
  %l111 = alloca %"compiler/source:Span"
  %l114 = alloca %"compiler/diagmsg:Msg"
  %l124 = alloca ptr
  %l126 = alloca i64
  %l129 = alloca i1
  %l130 = alloca i1
  %l133 = alloca i1
  %l140 = alloca i1
  %l143 = alloca i1
  %l147 = alloca i1
  %l156 = alloca %"compiler/typed:Local"
  %l159 = alloca i1
  %l161 = alloca ptr
  %l162 = alloca i64
  %l169 = alloca i64
  %l170 = alloca %"compiler/source:Span"
  %l172 = alloca %"compiler/diagmsg:Msg"
  %l173 = alloca ptr
  %l175 = alloca i32
  %l176 = alloca i1
  %l177 = alloca i1
  %l181 = alloca i64
  %l185 = alloca %"compiler/source:Span"
  %l188 = alloca i1
  %l197 = alloca %"compiler/typed:Local"
  %l200 = alloca ptr
  %l204 = alloca ptr
  %l205 = alloca i32
  %l211 = alloca %"compiler/source:Span"
  %l212 = alloca ptr
  %l213 = alloca i64
  %l220 = alloca i64
  %l221 = alloca %"compiler/source:Span"
  %l223 = alloca %"compiler/diagmsg:Msg"
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a3, ptr %l3
  store i64 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l3, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Call", ptr %t1, i32 0, i32 1
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l18, !tbaa !27
  %t5 = load i64, ptr %l4, !tbaa !24
  %t7 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !27
  %t9 = getelementptr ptr, ptr %t8, i64 %t5
  %t10 = load ptr, ptr %t9, !tbaa !39
  store ptr %t10, ptr %l7, !tbaa !29
  %t12 = load ptr, ptr %l3, !tbaa !29
  %t14 = getelementptr %"compiler/typed:Call", ptr %t12, i32 0, i32 1
  %t15 = load { i64, ptr }, ptr %t14, !tbaa !27
  store { i64, ptr } %t15, ptr %l22, !tbaa !27
  %t18 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr ptr, ptr %t19, i64 %a5
  %t21 = load ptr, ptr %t20, !tbaa !39
  %t23 = load ptr, ptr %l0, !tbaa !29
  store ptr %t23, ptr %l25, !tbaa !29
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t29 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %s0, ptr %t24, ptr %t21)
  store ptr %t29, ptr %l29
  br label %bb1
bb1:
  %t30 = load ptr, ptr %l29, !tbaa !29
  %t32 = call i64 @compiler_2fscope_2eflRootExpr(ptr %s0, ptr %t30)
  store i64 %t32, ptr %l31
  br label %bb2
bb2:
  %t33 = load ptr, ptr %l25, !tbaa !29
  %t34 = load i64, ptr %l31, !tbaa !24
  %t35 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eshownLocal(ptr %v0, ptr %t33, i64 %t34, i64 0)
  store i64 %t35, ptr %l32
  br label %bb3
bb3:
  %t36 = load i64, ptr %l32, !tbaa !24
  store i64 %t36, ptr %l9, !tbaa !24
  %t37 = load i64, ptr %l9, !tbaa !24
  %t39 = icmp slt i64 %t37, 0
  br i1 %t39, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb5:
  br label %bb6
bb6:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/scope:Scoper", ptr %t41, i32 0, i32 0
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t46 = getelementptr %"compiler/generic:Program", ptr %t44, i32 0, i32 0
  %t47 = load ptr, ptr %t46, !tbaa !29
  %t49 = getelementptr %"compiler/load:Loader", ptr %t47, i32 0, i32 3
  %t50 = load ptr, ptr %t49, !tbaa !29
  store ptr %t50, ptr %l38, !tbaa !29
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/scope:Scoper", ptr %t51, i32 0, i32 26
  %t54 = load ptr, ptr %t53, !tbaa !29
  %t56 = icmp eq ptr %t54, null
  br i1 %t56, label %bb7, label %bb8
bb7:
  call void @__olang_check_failed(ptr @olang_loc_3b124163f404c032_f61e7eda275eee66)
  unreachable
bb8:
  br label %bb9
bb9:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/scope:Scoper", ptr %t58, i32 0, i32 26
  %t61 = load ptr, ptr %t60, !tbaa !29
  %t64 = getelementptr %"compiler/typed:Body", ptr %t61, i32 0, i32 7
  %t65 = load i64, ptr %l9, !tbaa !24
  %t68 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t64, i64 %t65)
  store %"compiler/typed:Local" %t68, ptr %l47
  br label %bb10
bb10:
  %t69 = getelementptr %"compiler/typed:Local", ptr %l47, i32 0, i32 0
  %t70 = load i32, ptr %t69, !tbaa !23
  %t71 = load ptr, ptr %l38, !tbaa !29
  %t73 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t71, i32 %t70)
  store { i64, ptr } %t73, ptr %l49
  br label %bb11
bb11:
  %t74 = load { i64, ptr }, ptr %l49, !tbaa !27
  store { i64, ptr } %t74, ptr %l10, !tbaa !27
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t79 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoBuildTerm(ptr %v0, ptr %t75, { i64, [2 x i64] } %a6)
  store i1 %t79, ptr %l52
  br label %bb12
bb12:
  %t80 = load i1, ptr %l52, !tbaa !21
  br i1 %t80, label %bb13, label %bb14
bb13:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = load ptr, ptr %l7, !tbaa !29
  %t86 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emadeLocal(ptr %v0, ptr %v1, ptr %t81, ptr %t82, i64 0)
  store i64 %t86, ptr %l56
  br label %bb15
bb14:
  br label %bb44
bb15:
  %t87 = load i64, ptr %l56, !tbaa !24
  store i64 %t87, ptr %l11, !tbaa !24
  %t88 = load i64, ptr %l11, !tbaa !24
  %t90 = icmp sge i64 %t88, 0
  br i1 %t90, label %bb16, label %bb17
bb16:
  %t92 = load i64, ptr %l11, !tbaa !24
  %t93 = load i64, ptr %l9, !tbaa !24
  %t96 = icmp ne i64 %t92, %t93
  store i1 %t96, ptr %l59, !tbaa !21
  br label %bb18
bb17:
  store i1 false, ptr %l59, !tbaa !21
  br label %bb18
bb18:
  %t98 = load i1, ptr %l59, !tbaa !21
  br i1 %t98, label %bb19, label %bb20
bb19:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/scope:Scoper", ptr %t99, i32 0, i32 26
  %t102 = load ptr, ptr %t101, !tbaa !29
  %t104 = icmp eq ptr %t102, null
  br i1 %t104, label %bb21, label %bb22
bb20:
  store i1 false, ptr %l63, !tbaa !21
  br label %bb25
bb21:
  call void @__olang_check_failed(ptr @olang_loc_4046876e7ea1d159_b2112eb816f2c84d)
  unreachable
bb22:
  br label %bb23
bb23:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"compiler/scope:Scoper", ptr %t106, i32 0, i32 26
  %t109 = load ptr, ptr %t108, !tbaa !29
  %t112 = getelementptr %"compiler/typed:Body", ptr %t109, i32 0, i32 7
  %t113 = load i64, ptr %l11, !tbaa !24
  %t116 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t112, i64 %t113)
  store %"compiler/typed:Local" %t116, ptr %l72
  br label %bb24
bb24:
  %t117 = getelementptr %"compiler/typed:Local", ptr %l72, i32 0, i32 0
  %t118 = load i32, ptr %t117, !tbaa !23
  %t120 = icmp ne i32 %t118, 0
  store i1 %t120, ptr %l63, !tbaa !21
  br label %bb25
bb25:
  %t122 = load i1, ptr %l63, !tbaa !21
  br i1 %t122, label %bb26, label %bb27
bb26:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = getelementptr %"compiler/scope:Scoper", ptr %t123, i32 0, i32 0
  %t126 = load ptr, ptr %t125, !tbaa !29
  %t128 = getelementptr %"compiler/generic:Program", ptr %t126, i32 0, i32 0
  %t129 = load ptr, ptr %t128, !tbaa !29
  %t131 = getelementptr %"compiler/load:Loader", ptr %t129, i32 0, i32 3
  %t132 = load ptr, ptr %t131, !tbaa !29
  store ptr %t132, ptr %l78, !tbaa !29
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t135 = getelementptr %"compiler/scope:Scoper", ptr %t133, i32 0, i32 26
  %t136 = load ptr, ptr %t135, !tbaa !29
  %t138 = icmp eq ptr %t136, null
  br i1 %t138, label %bb28, label %bb29
bb27:
  br label %bb43
bb28:
  call void @__olang_check_failed(ptr @olang_loc_79d12197ff1a95a4_7d7576a4aa48dc38)
  unreachable
bb29:
  br label %bb30
bb30:
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t142 = getelementptr %"compiler/scope:Scoper", ptr %t140, i32 0, i32 26
  %t143 = load ptr, ptr %t142, !tbaa !29
  %t146 = getelementptr %"compiler/typed:Body", ptr %t143, i32 0, i32 7
  %t147 = load i64, ptr %l11, !tbaa !24
  %t150 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t146, i64 %t147)
  store %"compiler/typed:Local" %t150, ptr %l87
  br label %bb31
bb31:
  %t151 = getelementptr %"compiler/typed:Local", ptr %l87, i32 0, i32 0
  %t152 = load i32, ptr %t151, !tbaa !23
  %t153 = load ptr, ptr %l78, !tbaa !29
  %t155 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t153, i32 %t152)
  store { i64, ptr } %t155, ptr %l89
  br label %bb32
bb32:
  %t156 = load { i64, ptr }, ptr %l89, !tbaa !27
  store { i64, ptr } %t156, ptr %l12, !tbaa !27
  %t157 = load ptr, ptr %l0, !tbaa !29
  store ptr %t157, ptr %l90, !tbaa !29
  %t158 = load i64, ptr %l1, !tbaa !24
  store i64 %t158, ptr %l91, !tbaa !24
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t161 = getelementptr %"compiler/scope:Scoper", ptr %t159, i32 0, i32 26
  %t162 = load ptr, ptr %t161, !tbaa !29
  %t164 = icmp eq ptr %t162, null
  br i1 %t164, label %bb33, label %bb34
bb33:
  call void @__olang_check_failed(ptr @olang_loc_2cb2f05c33c43f73_8008e731f94f8857)
  unreachable
bb34:
  br label %bb35
bb35:
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t168 = getelementptr %"compiler/scope:Scoper", ptr %t166, i32 0, i32 26
  %t169 = load ptr, ptr %t168, !tbaa !29
  %t172 = getelementptr %"compiler/typed:Body", ptr %t169, i32 0, i32 3
  %t173 = load i64, ptr %t172, !tbaa !24
  store i64 %t173, ptr %l98, !tbaa !24
  %t174 = load ptr, ptr %l0, !tbaa !29
  store ptr %t174, ptr %l99, !tbaa !29
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t177 = getelementptr %"compiler/scope:Scoper", ptr %t175, i32 0, i32 26
  %t178 = load ptr, ptr %t177, !tbaa !29
  %t180 = icmp eq ptr %t178, null
  br i1 %t180, label %bb36, label %bb37
bb36:
  call void @__olang_check_failed(ptr @olang_loc_2cb2f05c33c43f73_8008e731f94f8857)
  unreachable
bb37:
  br label %bb38
bb38:
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t184 = getelementptr %"compiler/scope:Scoper", ptr %t182, i32 0, i32 26
  %t185 = load ptr, ptr %t184, !tbaa !29
  %t188 = getelementptr %"compiler/typed:Body", ptr %t185, i32 0, i32 7
  %t189 = load i64, ptr %l11, !tbaa !24
  %t192 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t188, i64 %t189)
  store %"compiler/typed:Local" %t192, ptr %l108
  br label %bb39
bb39:
  %t193 = getelementptr %"compiler/typed:Local", ptr %l108, i32 0, i32 1
  %t194 = load %"compiler/source:Span", ptr %t193
  %t195 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t196 = load ptr, ptr %l99, !tbaa !29
  %t199 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewordAt(ptr %v0, ptr %v0, ptr %t196, %"compiler/source:Span" %t194, { i64, ptr } %t195)
  store %"compiler/source:Span" %t199, ptr %l111
  br label %bb40
bb40:
  %t200 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t201 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t204 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteStrKeepCopies(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t200, { i64, ptr } %t201)
  store %"compiler/diagmsg:Msg" %t204, ptr %l114
  br label %bb41
bb41:
  %t205 = load ptr, ptr %l90, !tbaa !29
  %t206 = load i64, ptr %l91, !tbaa !24
  %t207 = load i64, ptr %l98, !tbaa !24
  %t208 = load %"compiler/source:Span", ptr %l111
  %t209 = load %"compiler/diagmsg:Msg", ptr %l114
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enote(ptr %v0, ptr %v0, ptr %t205, i64 %t206, i64 %t207, %"compiler/source:Span" %t208, %"compiler/diagmsg:Msg" %t209)
  br label %bb42
bb42:
  br label %bb43
bb43:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb44:
  %t210 = load ptr, ptr %l0, !tbaa !29
  %t211 = load i64, ptr %l1, !tbaa !24
  %t212 = load ptr, ptr %l7, !tbaa !29
  %t214 = load i64, ptr %l9, !tbaa !24
  %t215 = load { i64, ptr }, ptr %l10, !tbaa !27
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoteMadeNamed(ptr %v0, ptr %v1, ptr %v0, ptr %t210, i64 %t211, ptr %t212, i64 %t214, { i64, ptr } %t215, i64 0)
  br label %bb45
bb45:
  %t221 = load ptr, ptr %l0, !tbaa !29
  %t222 = load ptr, ptr %l7, !tbaa !29
  %t226 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %s0, ptr %t221, ptr %t222)
  store ptr %t226, ptr %l124
  br label %bb46
bb46:
  %t227 = load ptr, ptr %l124, !tbaa !29
  %t229 = call i64 @compiler_2fscope_2eflRootExpr(ptr %s0, ptr %t227)
  store i64 %t229, ptr %l126
  br label %bb47
bb47:
  %t230 = load i64, ptr %l126, !tbaa !24
  store i64 %t230, ptr %l13, !tbaa !24
  %t231 = load ptr, ptr %l0, !tbaa !29
  %t232 = load ptr, ptr %l3, !tbaa !29
  %t235 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eindexCall(ptr %v0, ptr %v1, ptr %t231, ptr %t232)
  store i1 %t235, ptr %l129
  br label %bb48
bb48:
  %t236 = load i1, ptr %l129, !tbaa !21
  br i1 %t236, label %bb49, label %bb50
bb49:
  %t237 = load i64, ptr %l4, !tbaa !24
  %t239 = icmp sgt i64 %t237, 0
  store i1 %t239, ptr %l130, !tbaa !21
  br label %bb51
bb50:
  store i1 false, ptr %l130, !tbaa !21
  br label %bb51
bb51:
  %t241 = load i1, ptr %l130, !tbaa !21
  br i1 %t241, label %bb52, label %bb53
bb52:
  %t242 = load i64, ptr %l4, !tbaa !24
  %t243 = load ptr, ptr %l3, !tbaa !29
  %t245 = getelementptr %"compiler/typed:Call", ptr %t243, i32 0, i32 1
  %t246 = load { i64, ptr }, ptr %t245, !tbaa !27
  %t248 = extractvalue { i64, ptr } %t246, 0
  %t250 = sub i64 %t248, 1
  %t253 = icmp slt i64 %t242, %t250
  br i1 %t253, label %bb54, label %bb55
bb53:
  store i1 false, ptr %l133, !tbaa !21
  br label %bb58
bb54:
  store i1 true, ptr %l140, !tbaa !21
  br label %bb57
bb55:
  %t255 = load ptr, ptr %l0, !tbaa !29
  %t256 = load ptr, ptr %l3, !tbaa !29
  %t259 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esetAtCall(ptr %v0, ptr %v1, ptr %t255, ptr %t256)
  store i1 %t259, ptr %l143
  br label %bb56
bb56:
  %t260 = load i1, ptr %l143, !tbaa !21
  %t261 = xor i1 %t260, true
  store i1 %t261, ptr %l140, !tbaa !21
  br label %bb57
bb57:
  %t263 = load i1, ptr %l140, !tbaa !21
  store i1 %t263, ptr %l133, !tbaa !21
  br label %bb58
bb58:
  %t264 = load i1, ptr %l133, !tbaa !21
  store i1 %t264, ptr %l14, !tbaa !21
  %t265 = load i64, ptr %l13, !tbaa !24
  %t267 = icmp sge i64 %t265, 0
  br i1 %t267, label %bb59, label %bb60
bb59:
  %t269 = load ptr, ptr %l0, !tbaa !29
  %t271 = getelementptr %"compiler/scope:Scoper", ptr %t269, i32 0, i32 26
  %t272 = load ptr, ptr %t271, !tbaa !29
  %t274 = icmp eq ptr %t272, null
  br i1 %t274, label %bb61, label %bb62
bb60:
  store i1 false, ptr %l147, !tbaa !21
  br label %bb65
bb61:
  call void @__olang_check_failed(ptr @olang_loc_3be66b99fba73c4e_1215a57d292f746a)
  unreachable
bb62:
  br label %bb63
bb63:
  %t276 = load ptr, ptr %l0, !tbaa !29
  %t278 = getelementptr %"compiler/scope:Scoper", ptr %t276, i32 0, i32 26
  %t279 = load ptr, ptr %t278, !tbaa !29
  %t282 = getelementptr %"compiler/typed:Body", ptr %t279, i32 0, i32 7
  %t283 = load i64, ptr %l13, !tbaa !24
  %t286 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t282, i64 %t283)
  store %"compiler/typed:Local" %t286, ptr %l156
  br label %bb64
bb64:
  %t287 = getelementptr %"compiler/typed:Local", ptr %l156, i32 0, i32 4
  %t288 = load i32, ptr %t287, !range !{i32 0, i32 7}
  %t290 = trunc i64 2 to i32
  %t291 = icmp eq i32 %t288, %t290
  store i1 %t291, ptr %l147, !tbaa !21
  br label %bb65
bb65:
  %t293 = load i1, ptr %l147, !tbaa !21
  br i1 %t293, label %bb66, label %bb67
bb66:
  %t294 = load i1, ptr %l14, !tbaa !21
  store i1 %t294, ptr %l159, !tbaa !21
  br label %bb68
bb67:
  store i1 false, ptr %l159, !tbaa !21
  br label %bb68
bb68:
  %t296 = load i1, ptr %l159, !tbaa !21
  br i1 %t296, label %bb69, label %bb70
bb69:
  %t297 = load ptr, ptr %l0, !tbaa !29
  store ptr %t297, ptr %l161, !tbaa !29
  %t298 = load i64, ptr %l1, !tbaa !24
  store i64 %t298, ptr %l162, !tbaa !24
  %t299 = load ptr, ptr %l0, !tbaa !29
  %t301 = getelementptr %"compiler/scope:Scoper", ptr %t299, i32 0, i32 26
  %t302 = load ptr, ptr %t301, !tbaa !29
  %t304 = icmp eq ptr %t302, null
  br i1 %t304, label %bb71, label %bb72
bb70:
  %t306 = load ptr, ptr %l0, !tbaa !29
  store ptr %t306, ptr %l173, !tbaa !29
  %t307 = load ptr, ptr %l7, !tbaa !29
  %t309 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t307)
  store i32 %t309, ptr %l175
  br label %bb76
bb71:
  call void @__olang_check_failed(ptr @olang_loc_9cb83d16c8558bf5_7c19eecf9e07b071)
  unreachable
bb72:
  br label %bb73
bb73:
  %t310 = load ptr, ptr %l0, !tbaa !29
  %t312 = getelementptr %"compiler/scope:Scoper", ptr %t310, i32 0, i32 26
  %t313 = load ptr, ptr %t312, !tbaa !29
  %t316 = getelementptr %"compiler/typed:Body", ptr %t313, i32 0, i32 3
  %t317 = load i64, ptr %t316, !tbaa !24
  store i64 %t317, ptr %l169, !tbaa !24
  store %"compiler/source:Span" %a2, ptr %l170
  %t319 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t321 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteHeldIndexWhere(ptr %v0, ptr %v0, { i64, ptr } %t319)
  store %"compiler/diagmsg:Msg" %t321, ptr %l172
  br label %bb74
bb74:
  %t322 = load ptr, ptr %l161, !tbaa !29
  %t323 = load i64, ptr %l162, !tbaa !24
  %t324 = load i64, ptr %l169, !tbaa !24
  %t325 = load %"compiler/source:Span", ptr %l170
  %t326 = load %"compiler/diagmsg:Msg", ptr %l172
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enote(ptr %v0, ptr %v0, ptr %t322, i64 %t323, i64 %t324, %"compiler/source:Span" %t325, %"compiler/diagmsg:Msg" %t326)
  br label %bb75
bb75:
  br label %bb109
bb76:
  %t327 = load ptr, ptr %l173, !tbaa !29
  %t328 = load i32, ptr %l175, !tbaa !23
  %t329 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisText(ptr %v0, ptr %t327, i32 %t328)
  store i1 %t329, ptr %l176
  br label %bb77
bb77:
  %t330 = load i1, ptr %l176, !tbaa !21
  br i1 %t330, label %bb78, label %bb79
bb78:
  %t331 = load ptr, ptr %l0, !tbaa !29
  %t332 = load ptr, ptr %l7, !tbaa !29
  %t336 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emadeLocal(ptr %v0, ptr %v1, ptr %t331, ptr %t332, i64 0)
  store i64 %t336, ptr %l181
  br label %bb80
bb79:
  store i1 false, ptr %l177, !tbaa !21
  br label %bb81
bb80:
  %t337 = load i64, ptr %l181, !tbaa !24
  %t338 = icmp sge i64 %t337, 0
  store i1 %t338, ptr %l177, !tbaa !21
  br label %bb81
bb81:
  %t340 = load i1, ptr %l177, !tbaa !21
  br i1 %t340, label %bb82, label %bb83
bb82:
  %t341 = load ptr, ptr %l0, !tbaa !29
  %t342 = load ptr, ptr %l7, !tbaa !29
  %t345 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargAt(ptr %v0, ptr %v1, ptr %t341, ptr %t342)
  store %"compiler/source:Span" %t345, ptr %l185
  br label %bb84
bb83:
  br label %bb108
bb84:
  %t346 = load %"compiler/source:Span", ptr %l185
  store %"compiler/source:Span" %t346, ptr %l15
  %t347 = load i64, ptr %l13, !tbaa !24
  %t349 = icmp sge i64 %t347, 0
  br i1 %t349, label %bb85, label %bb86
bb85:
  %t351 = load ptr, ptr %l0, !tbaa !29
  %t353 = getelementptr %"compiler/scope:Scoper", ptr %t351, i32 0, i32 26
  %t354 = load ptr, ptr %t353, !tbaa !29
  %t356 = icmp eq ptr %t354, null
  br i1 %t356, label %bb87, label %bb88
bb86:
  store i1 false, ptr %l188, !tbaa !21
  br label %bb91
bb87:
  call void @__olang_check_failed(ptr @olang_loc_98ba305d5e2403e0_d6869d4c9e18247c)
  unreachable
bb88:
  br label %bb89
bb89:
  %t358 = load ptr, ptr %l0, !tbaa !29
  %t360 = getelementptr %"compiler/scope:Scoper", ptr %t358, i32 0, i32 26
  %t361 = load ptr, ptr %t360, !tbaa !29
  %t364 = getelementptr %"compiler/typed:Body", ptr %t361, i32 0, i32 7
  %t365 = load i64, ptr %l13, !tbaa !24
  %t368 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t364, i64 %t365)
  store %"compiler/typed:Local" %t368, ptr %l197
  br label %bb90
bb90:
  %t369 = getelementptr %"compiler/typed:Local", ptr %l197, i32 0, i32 4
  %t370 = load i32, ptr %t369, !range !{i32 0, i32 7}
  %t372 = trunc i64 2 to i32
  %t373 = icmp eq i32 %t370, %t372
  store i1 %t373, ptr %l188, !tbaa !21
  br label %bb91
bb91:
  %t375 = load i1, ptr %l188, !tbaa !21
  br i1 %t375, label %bb92, label %bb93
bb92:
  %t376 = load ptr, ptr %l0, !tbaa !29
  %t378 = getelementptr %"compiler/scope:Scoper", ptr %t376, i32 0, i32 45
  %t379 = load i64, ptr %l13, !tbaa !24
  %t382 = call { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_H68cd31c3dbcdb47f3349b834dda1e07d(ptr %v0, ptr %v0, ptr %t378, i64 %t379)
  %t383 = extractvalue { i32, ptr } %t382, 1
  %t384 = extractvalue { i32, ptr } %t382, 0
  store i32 %t384, ptr %l205
  %t385 = icmp ne i32 %t384, 0
  br i1 %t385, label %bb95, label %ok.386, !prof !99
ok.386:
  store ptr %t383, ptr %l204
  br label %bb94
bb93:
  br label %bb102
bb94:
  %t387 = load ptr, ptr %l204, !tbaa !29
  store ptr %t387, ptr %l200, !tbaa !29
  br label %bb97
bb95:
  br label %bb96
bb96:
  store ptr null, ptr %l200, !tbaa !29
  br label %bb97
bb97:
  %t388 = load ptr, ptr %l200, !tbaa !29
  store ptr %t388, ptr %l16, !tbaa !29
  %t389 = load ptr, ptr %l16, !tbaa !29
  %t391 = icmp eq ptr %t389, null
  %t393 = xor i1 %t391, true
  br i1 %t393, label %bb98, label %bb99
bb98:
  %t395 = load ptr, ptr %l0, !tbaa !29
  %t396 = load ptr, ptr %l16, !tbaa !29
  %t399 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargAt(ptr %v0, ptr %v0, ptr %t395, ptr %t396)
  store %"compiler/source:Span" %t399, ptr %l211
  br label %bb100
bb99:
  br label %bb101
bb100:
  %t400 = load %"compiler/source:Span", ptr %l211
  store %"compiler/source:Span" %t400, ptr %l15
  br label %bb101
bb101:
  br label %bb102
bb102:
  %t401 = load ptr, ptr %l0, !tbaa !29
  store ptr %t401, ptr %l212, !tbaa !29
  %t402 = load i64, ptr %l1, !tbaa !24
  store i64 %t402, ptr %l213, !tbaa !24
  %t403 = load ptr, ptr %l0, !tbaa !29
  %t405 = getelementptr %"compiler/scope:Scoper", ptr %t403, i32 0, i32 26
  %t406 = load ptr, ptr %t405, !tbaa !29
  %t408 = icmp eq ptr %t406, null
  br i1 %t408, label %bb103, label %bb104
bb103:
  call void @__olang_check_failed(ptr @olang_loc_37fd0ede1d7e00ff_4f25c812a3c753eb)
  unreachable
bb104:
  br label %bb105
bb105:
  %t410 = load ptr, ptr %l0, !tbaa !29
  %t412 = getelementptr %"compiler/scope:Scoper", ptr %t410, i32 0, i32 26
  %t413 = load ptr, ptr %t412, !tbaa !29
  %t416 = getelementptr %"compiler/typed:Body", ptr %t413, i32 0, i32 3
  %t417 = load i64, ptr %t416, !tbaa !24
  store i64 %t417, ptr %l220, !tbaa !24
  %t418 = load %"compiler/source:Span", ptr %l15
  store %"compiler/source:Span" %t418, ptr %l221
  %t419 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t421 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteTextCopyWhere(ptr %v0, ptr %v0, { i64, ptr } %t419)
  store %"compiler/diagmsg:Msg" %t421, ptr %l223
  br label %bb106
bb106:
  %t422 = load ptr, ptr %l212, !tbaa !29
  %t423 = load i64, ptr %l213, !tbaa !24
  %t424 = load i64, ptr %l220, !tbaa !24
  %t425 = load %"compiler/source:Span", ptr %l221
  %t426 = load %"compiler/diagmsg:Msg", ptr %l223
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enote(ptr %v0, ptr %v0, ptr %t422, i64 %t423, i64 %t424, %"compiler/source:Span" %t425, %"compiler/diagmsg:Msg" %t426)
  br label %bb107
bb107:
  br label %bb108
bb108:
  br label %bb109
bb109:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enumberField(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i1
  %l11 = alloca ptr
  %l12 = alloca i1
  %l21 = alloca i64
  %l23 = alloca i1
  %l26 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t6 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %s0, ptr %t1, ptr %a1)
  store ptr %t6, ptr %l9
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l9, !tbaa !29
  store ptr %t7, ptr %l3, !tbaa !29
  %t8 = load ptr, ptr %l3, !tbaa !29
  store ptr %t8, ptr %l11, !tbaa !29
  store i1 false, ptr %l12, !tbaa !21
  %t9 = load ptr, ptr %l11, !tbaa !29
  %t10 = icmp ne ptr %t9, null
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = load ptr, ptr %l11, !tbaa !29
  %t13 = load i64, ptr %t12, !range !{i64 0, i64 18}
  %t15 = icmp eq i64 %t13, 2
  store i1 %t15, ptr %l12, !tbaa !21
  br label %bb3
bb3:
  %t16 = load i1, ptr %l12, !tbaa !21
  br i1 %t16, label %bb4, label %bb5
bb4:
  %t17 = load ptr, ptr %l3, !tbaa !29
  %t19 = getelementptr { i64, [5 x i64] }, ptr %t17, i32 0, i32 1
  %t20 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t19, i32 0, i32 1
  %t21 = load i32, ptr %t20
  store i32 %t21, ptr %l4, !tbaa !23
  %t23 = load ptr, ptr %l3, !tbaa !29
  %t25 = getelementptr { i64, [5 x i64] }, ptr %t23, i32 0, i32 1
  %t26 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t25, i32 0, i32 2
  %t27 = load ptr, ptr %t26
  store ptr %t27, ptr %l5, !tbaa !29
  br label %bb6
bb5:
  br label %bb12
bb6:
  %t29 = load ptr, ptr %l5, !tbaa !29
  %t33 = call i64 @compiler_2fscope_2eownField(ptr %s0, ptr %t29, i64 %a2)
  store i64 %t33, ptr %l21
  br label %bb7
bb7:
  %t34 = load i64, ptr %l21, !tbaa !24
  %t35 = icmp sge i64 %t34, 0
  br i1 %t35, label %bb8, label %bb9
bb8:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load i32, ptr %l4, !tbaa !23
  %t41 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisNumberLike(ptr %v0, ptr %t37, i32 %t38)
  store i1 %t41, ptr %l26
  br label %bb10
bb9:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb11
bb10:
  %t42 = load i1, ptr %l26, !tbaa !21
  store i1 %t42, ptr %l23, !tbaa !21
  br label %bb11
bb11:
  %t43 = load i1, ptr %l23, !tbaa !21
  store i1 %t43, ptr %l10, !tbaa !21
  br label %bb17
bb12:
  br i1 true, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_4e916d94ce354cf_7e8c78090f47617b)
  unreachable
bb17:
  call void @__olang_scope_close(ptr %s0)
  %t44 = load i1, ptr %l10, !tbaa !21
  store i1 %t44, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eplaceOperands(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i32
  %l8 = alloca ptr
  %l9 = alloca i1
  %l18 = alloca %"compiler/scope:Val"
  %l19 = alloca ptr
  %l20 = alloca i1
  %l27 = alloca ptr
  %l28 = alloca i1
  %l41 = alloca %"compiler/scope:Val"
  %l42 = alloca ptr
  %l43 = alloca i1
  %l51 = alloca ptr
  %l52 = alloca i1
  %l62 = alloca { i64, [2 x i64] }
  %t19 = alloca { i64, [2 x i64] }, align 8
  %t73 = alloca { i64, [2 x i64] }, align 8
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
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l9, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l9, !tbaa !21
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
  store { i64, [2 x i64] } zeroinitializer, ptr %t19
  %t20 = getelementptr { i64, [2 x i64] }, ptr %t19, i32 0, i32 0
  store i64 0, ptr %t20
  %t21 = load { i64, [2 x i64] }, ptr %t19
  %t25 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t16, ptr %t17, { i64, [2 x i64] } %t21)
  store %"compiler/scope:Val" %t25, ptr %l18
  br label %bb6
bb6:
  br label %bb41
bb7:
  %t26 = load ptr, ptr %l1, !tbaa !29
  store ptr %t26, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t27 = load ptr, ptr %l19, !tbaa !29
  %t28 = icmp ne ptr %t27, null
  br i1 %t28, label %bb8, label %bb9
bb8:
  %t30 = load ptr, ptr %l19, !tbaa !29
  %t31 = load i64, ptr %t30, !range !{i64 0, i64 8}
  %t33 = icmp eq i64 %t31, 3
  store i1 %t33, ptr %l20, !tbaa !21
  br label %bb9
bb9:
  %t34 = load i1, ptr %l20, !tbaa !21
  br i1 %t34, label %bb10, label %bb11
bb10:
  %t35 = load ptr, ptr %l1, !tbaa !29
  %t37 = getelementptr { i64, [4 x i64] }, ptr %t35, i32 0, i32 1
  %t38 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t37, i32 0, i32 2
  %t39 = load ptr, ptr %t38
  store ptr %t39, ptr %l3, !tbaa !29
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eplaceOperands(ptr %v0, ptr %v1, ptr %t41, ptr %t42)
  br label %bb13
bb13:
  br label %bb41
bb14:
  %t45 = load ptr, ptr %l1, !tbaa !29
  store ptr %t45, ptr %l27, !tbaa !29
  store i1 false, ptr %l28, !tbaa !21
  %t46 = load ptr, ptr %l27, !tbaa !29
  %t47 = icmp ne ptr %t46, null
  br i1 %t47, label %bb15, label %bb16
bb15:
  %t49 = load ptr, ptr %l27, !tbaa !29
  %t50 = load i64, ptr %t49, !range !{i64 0, i64 8}
  %t52 = icmp eq i64 %t50, 4
  store i1 %t52, ptr %l28, !tbaa !21
  br label %bb16
bb16:
  %t53 = load i1, ptr %l28, !tbaa !21
  br i1 %t53, label %bb17, label %bb18
bb17:
  %t54 = load ptr, ptr %l1, !tbaa !29
  %t56 = getelementptr { i64, [4 x i64] }, ptr %t54, i32 0, i32 1
  %t57 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t56, i32 0, i32 2
  %t58 = load ptr, ptr %t57
  store ptr %t58, ptr %l4, !tbaa !29
  br label %bb19
bb18:
  br label %bb22
bb19:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load ptr, ptr %l4, !tbaa !29
  %t63 = getelementptr %"compiler/typed:Elem", ptr %t61, i32 0, i32 0
  %t64 = load ptr, ptr %t63, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eplaceOperands(ptr %v0, ptr %v1, ptr %t60, ptr %t64)
  br label %bb20
bb20:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load ptr, ptr %l4, !tbaa !29
  %t70 = getelementptr %"compiler/typed:Elem", ptr %t68, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t73
  %t74 = getelementptr { i64, [2 x i64] }, ptr %t73, i32 0, i32 0
  store i64 0, ptr %t74
  %t75 = load { i64, [2 x i64] }, ptr %t73
  %t79 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t67, ptr %t71, { i64, [2 x i64] } %t75)
  store %"compiler/scope:Val" %t79, ptr %l41
  br label %bb21
bb21:
  br label %bb41
bb22:
  %t80 = load ptr, ptr %l1, !tbaa !29
  store ptr %t80, ptr %l42, !tbaa !29
  store i1 false, ptr %l43, !tbaa !21
  %t81 = load ptr, ptr %l42, !tbaa !29
  %t82 = icmp ne ptr %t81, null
  br i1 %t82, label %bb23, label %bb24
bb23:
  %t84 = load ptr, ptr %l42, !tbaa !29
  %t85 = load i64, ptr %t84, !range !{i64 0, i64 8}
  %t87 = icmp eq i64 %t85, 5
  store i1 %t87, ptr %l43, !tbaa !21
  br label %bb24
bb24:
  %t88 = load i1, ptr %l43, !tbaa !21
  br i1 %t88, label %bb25, label %bb26
bb25:
  %t89 = load ptr, ptr %l1, !tbaa !29
  %t91 = getelementptr { i64, [4 x i64] }, ptr %t89, i32 0, i32 1
  %t92 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t91, i32 0, i32 2
  %t93 = load ptr, ptr %t92
  store ptr %t93, ptr %l5, !tbaa !29
  br label %bb27
bb26:
  br label %bb29
bb27:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t96 = load ptr, ptr %l5, !tbaa !29
  %t98 = getelementptr %"compiler/typed:Payload", ptr %t96, i32 0, i32 0
  %t99 = load ptr, ptr %t98, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eplaceOperands(ptr %v0, ptr %v1, ptr %t95, ptr %t99)
  br label %bb28
bb28:
  br label %bb41
bb29:
  %t102 = load ptr, ptr %l1, !tbaa !29
  store ptr %t102, ptr %l51, !tbaa !29
  store i1 false, ptr %l52, !tbaa !21
  %t103 = load ptr, ptr %l51, !tbaa !29
  %t104 = icmp ne ptr %t103, null
  br i1 %t104, label %bb30, label %bb31
bb30:
  %t106 = load ptr, ptr %l51, !tbaa !29
  %t107 = load i64, ptr %t106, !range !{i64 0, i64 8}
  %t109 = icmp eq i64 %t107, 6
  store i1 %t109, ptr %l52, !tbaa !21
  br label %bb31
bb31:
  %t110 = load i1, ptr %l52, !tbaa !21
  br i1 %t110, label %bb32, label %bb33
bb32:
  %t111 = load ptr, ptr %l1, !tbaa !29
  %t113 = getelementptr { i64, [4 x i64] }, ptr %t111, i32 0, i32 1
  %t114 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t113, i32 0, i32 2
  %t115 = load ptr, ptr %t114
  store ptr %t115, ptr %l6, !tbaa !29
  %t117 = load ptr, ptr %l1, !tbaa !29
  %t119 = getelementptr { i64, [4 x i64] }, ptr %t117, i32 0, i32 1
  %t120 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t119, i32 0, i32 3
  %t121 = load i32, ptr %t120
  store i32 %t121, ptr %l7, !tbaa !23
  br label %bb34
bb33:
  br label %bb36
bb34:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t124 = load ptr, ptr %l6, !tbaa !29
  %t125 = load i32, ptr %l7, !tbaa !23
  %t129 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etempTerm(ptr %v0, ptr %v1, ptr %t123, ptr %t124, i32 %t125)
  store { i64, [2 x i64] } %t129, ptr %l62
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
  call void @__olang_check_failed(ptr @olang_loc_b55787a4eb4fe241_8ea57e4945f8f00d)
  unreachable
bb41:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeDef(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l6 = alloca { i64, [2 x i64] }
  %l7 = alloca { i64, [2 x i64] }
  %l8 = alloca i64
  %l10 = alloca i1
  %l12 = alloca i1
  %l15 = alloca i1
  %l24 = alloca ptr
  %l29 = alloca i64
  %l34 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l35 = alloca { i64, [2 x i64] }
  %l39 = alloca { i64, [2 x i64] }
  %l40 = alloca i32
  %l43 = alloca i1
  %l44 = alloca { i64, [2 x i64] }
  %l48 = alloca { i64, [2 x i64] }
  %l50 = alloca { i64, [2 x i64] }
  %l52 = alloca { i64, [2 x i64] }
  %l54 = alloca i1
  %l65 = alloca ptr
  %l66 = alloca i64
  %l68 = alloca i64
  %l69 = alloca { i64, [2 x i64] }
  %l70 = alloca ptr
  %l74 = alloca %"compiler/source:Span"
  %l76 = alloca { i64, ptr }
  %l78 = alloca { i64, ptr }
  %l82 = alloca ptr
  %l86 = alloca %"compiler/source:Span"
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s6 = alloca %olang.builder
  %s6room = alloca [64 x i8], align 8
  %t67 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, [2 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [2 x i64] }, ptr %l2
  %t3 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t1)
  store i1 %t3, ptr %l10
  br label %bb1
bb1:
  %t4 = load i1, ptr %l10, !tbaa !21
  %t5 = xor i1 %t4, true
  br i1 %t5, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb5
bb3:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load { i64, [2 x i64] }, ptr %l2
  %t11 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egenResult(ptr %v0, ptr %t7, { i64, [2 x i64] } %t8)
  store i1 %t11, ptr %l15
  br label %bb4
bb4:
  %t12 = load i1, ptr %l15, !tbaa !21
  store i1 %t12, ptr %l12, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l12, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  br label %ret
bb7:
  br label %bb8
bb8:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/scope:Scoper", ptr %t14, i32 0, i32 159
  %t17 = load ptr, ptr %t16, !tbaa !29
  %t19 = icmp eq ptr %t17, null
  br i1 %t19, label %bb9, label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_8b2906635595db32_8dcfaafc9c909d36)
  unreachable
bb10:
  br label %bb11
bb11:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/scope:Scoper", ptr %t21, i32 0, i32 159
  %t24 = load ptr, ptr %t23, !tbaa !29
  store ptr %t24, ptr %l3, !tbaa !29
  %t26 = load ptr, ptr %l3, !tbaa !29
  %t28 = getelementptr %"compiler/typed:Versions", ptr %t26, i32 0, i32 6
  %t29 = load i64, ptr %l1, !tbaa !24
  %t32 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2eAt__H2e4a6474e10b73ca754517844b8d7700(ptr %v0, ptr %v0, ptr %t28, i64 %t29)
  store ptr %t32, ptr %l24
  br label %bb12
bb12:
  %t33 = load ptr, ptr %l24, !tbaa !29
  store ptr %t33, ptr %l4, !tbaa !29
  %t34 = load ptr, ptr %l4, !tbaa !29
  %t36 = icmp eq ptr %t34, null
  br i1 %t36, label %bb13, label %bb14
bb13:
  br label %ret
bb14:
  br label %bb15
bb15:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t39 = load ptr, ptr %l4, !tbaa !29
  %t42 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eclaimRoot(ptr %v0, ptr %v0, ptr %t38, ptr %t39)
  store i64 %t42, ptr %l29
  br label %bb16
bb16:
  %t43 = load i64, ptr %l29, !tbaa !24
  %t44 = icmp slt i64 %t43, 0
  br i1 %t44, label %bb17, label %bb18
bb17:
  store %olang.scope zeroinitializer, ptr %s3
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/scope:Scoper", ptr %t46, i32 0, i32 27
  %t49 = load i64, ptr %t48, !tbaa !24
  %t50 = load i64, ptr %l1, !tbaa !24
  %t53 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s3, i64 %t49, i64 %t50)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t53, ptr %l34
  br label %bb19
bb18:
  br label %bb43
bb19:
  %t54 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l34
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t54, ptr %l5
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/scope:Scoper", ptr %t55, i32 0, i32 171
  %t58 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l5
  %t61 = call { i32, { i64, [2 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H568ce559fa980123a387c6ba9ed21aca(ptr %v0, ptr %t57, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t58)
  %t62 = extractvalue { i32, { i64, [2 x i64] } } %t61, 1
  %t63 = extractvalue { i32, { i64, [2 x i64] } } %t61, 0
  store i32 %t63, ptr %l40
  %t64 = icmp ne i32 %t63, 0
  br i1 %t64, label %bb21, label %ok.65, !prof !99
ok.65:
  store { i64, [2 x i64] } %t62, ptr %l39
  br label %bb20
bb20:
  %t66 = load { i64, [2 x i64] }, ptr %l39
  store { i64, [2 x i64] } %t66, ptr %l35
  br label %bb23
bb21:
  br label %bb22
bb22:
  store { i64, [2 x i64] } zeroinitializer, ptr %t67
  %t68 = getelementptr { i64, [2 x i64] }, ptr %t67, i32 0, i32 0
  store i64 0, ptr %t68
  %t69 = load { i64, [2 x i64] }, ptr %t67
  store { i64, [2 x i64] } %t69, ptr %l35
  br label %bb23
bb23:
  %t71 = load { i64, [2 x i64] }, ptr %l35
  store { i64, [2 x i64] } %t71, ptr %l6
  %t72 = load { i64, [2 x i64] }, ptr %l6
  %t74 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t72)
  store i1 %t74, ptr %l43
  br label %bb24
bb24:
  %t75 = load i1, ptr %l43, !tbaa !21
  br i1 %t75, label %bb25, label %bb26
bb25:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t77 = load { i64, [2 x i64] }, ptr %l6
  %t78 = load { i64, [2 x i64] }, ptr %l2
  %t82 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejoinTerm(ptr %v0, ptr %t76, { i64, [2 x i64] } %t77, { i64, [2 x i64] } %t78)
  store { i64, [2 x i64] } %t82, ptr %l48
  br label %bb27
bb26:
  %t83 = load { i64, [2 x i64] }, ptr %l2
  store { i64, [2 x i64] } %t83, ptr %l44
  br label %bb28
bb27:
  %t85 = load { i64, [2 x i64] }, ptr %l48
  store { i64, [2 x i64] } %t85, ptr %l44
  br label %bb28
bb28:
  %t86 = load { i64, [2 x i64] }, ptr %l44
  store { i64, [2 x i64] } %t86, ptr %l7
  %t87 = load { i64, [2 x i64] }, ptr %l7
  store { i64, [2 x i64] } %t87, ptr %l50
  %t88 = load { i64, [2 x i64] }, ptr %l6
  store { i64, [2 x i64] } %t88, ptr %l52
  %t91 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3aTerm(ptr %l50, ptr %l52)
  store i1 %t91, ptr %l54
  br label %bb29
bb29:
  %t92 = load i1, ptr %l54, !tbaa !21
  %t93 = xor i1 %t92, true
  br i1 %t93, label %bb30, label %bb31
bb30:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"compiler/scope:Scoper", ptr %t95, i32 0, i32 171
  %t98 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l5
  %t99 = load { i64, [2 x i64] }, ptr %l7
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H240bd86caf003ea6de374cb77d0dbfc6(ptr %v0, ptr %t97, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t98, { i64, [2 x i64] } %t99)
  br label %bb32
bb31:
  br label %bb42
bb32:
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr %"compiler/scope:Scoper", ptr %t103, i32 0, i32 148
  store i1 true, ptr %t105, !tbaa !21
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"compiler/scope:Scoper", ptr %t106, i32 0, i32 185
  store i1 true, ptr %t108, !tbaa !21
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = getelementptr %"compiler/scope:Scoper", ptr %t109, i32 0, i32 226
  %t112 = load i1, ptr %t111, !tbaa !21
  br i1 %t112, label %bb33, label %bb34
bb33:
  store %olang.scope zeroinitializer, ptr %s5
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t116 = getelementptr %"compiler/scope:Scoper", ptr %t114, i32 0, i32 256
  store ptr %t116, ptr %l65, !tbaa !29
  %t117 = ptrtoint ptr %v0 to i64
  store i64 %t117, ptr %l66, !tbaa !24
  %t118 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t118, label %bb35, label %bb36
bb34:
  br label %bb41
bb35:
  %t120 = call ptr @__olang_region_make(ptr %v0)
  %t121 = ptrtoint ptr %t120 to i64
  store i64 %t121, ptr %l66, !tbaa !24
  br label %bb36
bb36:
  %t122 = load i64, ptr %l1, !tbaa !24
  store i64 %t122, ptr %l68, !tbaa !24
  %t123 = load { i64, [2 x i64] }, ptr %l7
  store { i64, [2 x i64] } %t123, ptr %l69
  %t124 = load ptr, ptr %l0, !tbaa !29
  store ptr %t124, ptr %l70, !tbaa !29
  %t125 = load ptr, ptr %l3, !tbaa !29
  %t127 = getelementptr %"compiler/typed:Versions", ptr %t125, i32 0, i32 4
  %t128 = load i64, ptr %l1, !tbaa !24
  %t131 = call %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t127, i64 %t128)
  store %"compiler/source:Span" %t131, ptr %l74
  br label %bb37
bb37:
  %t132 = getelementptr %"compiler/source:Span", ptr %l74, i32 0, i32 0
  %t133 = load i32, ptr %t132, !tbaa !23
  %t134 = load ptr, ptr %l70, !tbaa !29
  %t136 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etraceAt(ptr %v0, ptr %s5, ptr %t134, i32 %t133)
  store { i64, ptr } %t136, ptr %l76
  br label %bb38
bb38:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s6
  store ptr %s6room, ptr %s6
  %t137 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t138 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s6, ptr %t137, i64 %t138)
  %t139 = load i64, ptr %l68, !tbaa !24
  %t140 = call ptr @__olang_sb_room(ptr %s6, i64 24)
  %t141 = call i64 @__olang_fmt_i64(ptr %t140, i64 %t139)
  call void @__olang_sb_add(ptr %s6, i64 %t141)
  %t142 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t143 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s6, ptr %t142, i64 %t143)
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2fscope_3aTerm(ptr %s6, ptr %l69, i64 0)
  br label %bb39
bb39:
  %t145 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t146 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s6, ptr %t145, i64 %t146)
  %t147 = load { i64, ptr }, ptr %l76, !tbaa !27
  %t148 = extractvalue { i64, ptr } %t147, 1
  %t149 = extractvalue { i64, ptr } %t147, 0
  call void @__olang_sb_put(ptr %s6, ptr %t148, i64 %t149)
  %t150 = load ptr, ptr %s6
  %t151 = getelementptr %olang.builder, ptr %s6, i32 0, i32 1
  %t152 = load i64, ptr %t151
  %t153 = load i64, ptr %l66
  %t154 = inttoptr i64 %t153 to ptr
  %t155 = call ptr @__olang_scope_alloc(ptr %t154, i64 %t152)
  call void @olang_textcopy(ptr %t155, ptr %t150, i64 %t152)
  %t156 = insertvalue { i64, ptr } undef, i64 %t152, 0
  %t157 = insertvalue { i64, ptr } %t156, ptr %t155, 1
  store { i64, ptr } %t157, ptr %l78, !tbaa !27
  %t158 = getelementptr %olang.builder, ptr %s6, i32 0, i32 3
  %t159 = load ptr, ptr %t158
  %t160 = icmp ne ptr %t159, null
  br i1 %t160, label %sbgrew.161, label %sbdone.162
sbgrew.161:
  call void @__olang_sb_done(ptr %s6)
  br label %sbdone.162
sbdone.162:
  %t163 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t164 = load i64, ptr %l66
  %t165 = inttoptr i64 %t164 to ptr
  %t166 = extractvalue { i64, ptr } %t163, 0
  %t167 = extractvalue { i64, ptr } %t163, 1
  %t168 = mul i64 %t166, 1
  %t169 = call ptr @__olang_scope_alloc(ptr %t165, i64 %t168)
  call void @llvm.memcpy.p0.p0.i64(ptr %t169, ptr %t167, i64 %t168, i1 false)
  %t170 = insertvalue { i64, ptr } undef, i64 %t166, 0
  %t171 = insertvalue { i64, ptr } %t170, ptr %t169, 1
  %t172 = load ptr, ptr %l65, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t172, { i64, ptr } %t171)
  br label %bb40
bb40:
  call void @__olang_scope_close(ptr %s5)
  br label %bb41
bb41:
  br label %bb42
bb42:
  call void @__olang_scope_close(ptr %s3)
  br label %bb43
bb43:
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t176 = getelementptr %"compiler/scope:Scoper", ptr %t174, i32 0, i32 190
  %t177 = load i64, ptr %t176, !tbaa !24
  store i64 %t177, ptr %l8, !tbaa !24
  %t179 = load ptr, ptr %l0, !tbaa !29
  store ptr %t179, ptr %l82, !tbaa !29
  %t180 = load ptr, ptr %l3, !tbaa !29
  %t182 = getelementptr %"compiler/typed:Versions", ptr %t180, i32 0, i32 4
  %t183 = load i64, ptr %l1, !tbaa !24
  %t186 = call %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t182, i64 %t183)
  store %"compiler/source:Span" %t186, ptr %l86
  br label %bb44
bb44:
  %t187 = getelementptr %"compiler/source:Span", ptr %l86, i32 0, i32 0
  %t188 = load i32, ptr %t187, !tbaa !23
  %t190 = sext i32 %t188 to i64
  %t192 = load ptr, ptr %l82, !tbaa !29
  %t193 = getelementptr %"compiler/scope:Scoper", ptr %t192, i32 0, i32 190
  store i64 %t190, ptr %t193, !tbaa !24
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t195 = load ptr, ptr %l4, !tbaa !29
  %t196 = load { i64, [2 x i64] }, ptr %l2
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epropose(ptr %v0, ptr %v0, ptr %t194, ptr %t195, { i64, [2 x i64] } %t196)
  br label %bb45
bb45:
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t201 = load i64, ptr %l8, !tbaa !24
  %t204 = getelementptr %"compiler/scope:Scoper", ptr %t200, i32 0, i32 190
  store i64 %t201, ptr %t204, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeSite(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l4 = alloca { i64, [2 x i64] }
  %l5 = alloca { i64, [2 x i64] }
  %l8 = alloca i1
  %l10 = alloca i1
  %l12 = alloca i1
  %l15 = alloca i1
  %l19 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l20 = alloca { i64, [2 x i64] }
  %l24 = alloca { i64, [2 x i64] }
  %l25 = alloca i32
  %l28 = alloca i1
  %l29 = alloca { i64, [2 x i64] }
  %l33 = alloca { i64, [2 x i64] }
  %l35 = alloca { i64, [2 x i64] }
  %l37 = alloca { i64, [2 x i64] }
  %l39 = alloca i1
  %l50 = alloca ptr
  %l55 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l60 = alloca %"compiler/scope:placedRow"
  %l64 = alloca ptr
  %l65 = alloca i64
  %l67 = alloca i64
  %l68 = alloca { i64, [2 x i64] }
  %l69 = alloca ptr
  %l78 = alloca %"compiler/typed:SiteInfo"
  %l80 = alloca { i64, ptr }
  %l82 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.builder
  %s5room = alloca [64 x i8], align 8
  %t40 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, [2 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb4
bb2:
  %t5 = load { i64, [2 x i64] }, ptr %l2
  %t7 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t5)
  store i1 %t7, ptr %l10
  br label %bb3
bb3:
  %t8 = load i1, ptr %l10, !tbaa !21
  %t9 = xor i1 %t8, true
  store i1 %t9, ptr %l8, !tbaa !21
  br label %bb4
bb4:
  %t11 = load i1, ptr %l8, !tbaa !21
  br i1 %t11, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb8
bb6:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load { i64, [2 x i64] }, ptr %l2
  %t16 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egenResult(ptr %v0, ptr %t12, { i64, [2 x i64] } %t13)
  store i1 %t16, ptr %l15
  br label %bb7
bb7:
  %t17 = load i1, ptr %l15, !tbaa !21
  store i1 %t17, ptr %l12, !tbaa !21
  br label %bb8
bb8:
  %t18 = load i1, ptr %l12, !tbaa !21
  br i1 %t18, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb10:
  br label %bb11
bb11:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/scope:Scoper", ptr %t19, i32 0, i32 27
  %t22 = load i64, ptr %t21, !tbaa !24
  %t23 = load i64, ptr %l1, !tbaa !24
  %t26 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t22, i64 %t23)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t26, ptr %l19
  br label %bb12
bb12:
  %t27 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l19
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t27, ptr %l3
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/scope:Scoper", ptr %t28, i32 0, i32 150
  %t31 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l3
  %t34 = call { i32, { i64, [2 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H568ce559fa980123a387c6ba9ed21aca(ptr %v0, ptr %t30, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t31)
  %t35 = extractvalue { i32, { i64, [2 x i64] } } %t34, 1
  %t36 = extractvalue { i32, { i64, [2 x i64] } } %t34, 0
  store i32 %t36, ptr %l25
  %t37 = icmp ne i32 %t36, 0
  br i1 %t37, label %bb14, label %ok.38, !prof !99
ok.38:
  store { i64, [2 x i64] } %t35, ptr %l24
  br label %bb13
bb13:
  %t39 = load { i64, [2 x i64] }, ptr %l24
  store { i64, [2 x i64] } %t39, ptr %l20
  br label %bb16
bb14:
  br label %bb15
bb15:
  store { i64, [2 x i64] } zeroinitializer, ptr %t40
  %t41 = getelementptr { i64, [2 x i64] }, ptr %t40, i32 0, i32 0
  store i64 0, ptr %t41
  %t42 = load { i64, [2 x i64] }, ptr %t40
  store { i64, [2 x i64] } %t42, ptr %l20
  br label %bb16
bb16:
  %t44 = load { i64, [2 x i64] }, ptr %l20
  store { i64, [2 x i64] } %t44, ptr %l4
  %t45 = load { i64, [2 x i64] }, ptr %l4
  %t47 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t45)
  store i1 %t47, ptr %l28
  br label %bb17
bb17:
  %t48 = load i1, ptr %l28, !tbaa !21
  br i1 %t48, label %bb18, label %bb19
bb18:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load { i64, [2 x i64] }, ptr %l4
  %t51 = load { i64, [2 x i64] }, ptr %l2
  %t55 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejoinTerm(ptr %v0, ptr %t49, { i64, [2 x i64] } %t50, { i64, [2 x i64] } %t51)
  store { i64, [2 x i64] } %t55, ptr %l33
  br label %bb20
bb19:
  %t56 = load { i64, [2 x i64] }, ptr %l2
  store { i64, [2 x i64] } %t56, ptr %l29
  br label %bb21
bb20:
  %t58 = load { i64, [2 x i64] }, ptr %l33
  store { i64, [2 x i64] } %t58, ptr %l29
  br label %bb21
bb21:
  %t59 = load { i64, [2 x i64] }, ptr %l29
  store { i64, [2 x i64] } %t59, ptr %l5
  %t60 = load { i64, [2 x i64] }, ptr %l5
  store { i64, [2 x i64] } %t60, ptr %l35
  %t61 = load { i64, [2 x i64] }, ptr %l4
  store { i64, [2 x i64] } %t61, ptr %l37
  %t64 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3aTerm(ptr %l35, ptr %l37)
  store i1 %t64, ptr %l39
  br label %bb22
bb22:
  %t65 = load i1, ptr %l39, !tbaa !21
  br i1 %t65, label %bb23, label %bb24
bb23:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb24:
  br label %bb25
bb25:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/scope:Scoper", ptr %t66, i32 0, i32 150
  %t69 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l3
  %t70 = load { i64, [2 x i64] }, ptr %l5
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H240bd86caf003ea6de374cb77d0dbfc6(ptr %v0, ptr %t68, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t69, { i64, [2 x i64] } %t70)
  br label %bb26
bb26:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/scope:Scoper", ptr %t74, i32 0, i32 148
  store i1 true, ptr %t76, !tbaa !21
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/scope:Scoper", ptr %t77, i32 0, i32 185
  store i1 true, ptr %t79, !tbaa !21
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/scope:Scoper", ptr %t80, i32 0, i32 213
  %t83 = load i64, ptr %t82, !tbaa !24
  %t85 = icmp ne i64 %t83, 0
  br i1 %t85, label %bb27, label %bb28
bb27:
  store %olang.scope zeroinitializer, ptr %s3
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/scope:Scoper", ptr %t87, i32 0, i32 216
  store ptr %t89, ptr %l50, !tbaa !29
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/scope:Scoper", ptr %t90, i32 0, i32 27
  %t93 = load i64, ptr %t92, !tbaa !24
  %t94 = load i64, ptr %l1, !tbaa !24
  %t96 = sub i64 -1, %t94
  %t99 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s3, i64 %t93, i64 %t96)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t99, ptr %l55
  br label %bb29
bb28:
  br label %bb32
bb29:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/scope:Scoper", ptr %t100, i32 0, i32 214
  %t103 = load %"compiler/source:Span", ptr %t102
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/scope:Scoper", ptr %t104, i32 0, i32 213
  %t107 = load i64, ptr %t106, !tbaa !24
  %t110 = call %"compiler/scope:placedRow" @compiler_2fscope_3aplacedRow_2ector(ptr %s3, %"compiler/source:Span" %t103, i64 %t107)
  store %"compiler/scope:placedRow" %t110, ptr %l60
  br label %bb30
bb30:
  %t111 = load ptr, ptr %l50, !tbaa !29
  %t112 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l55
  %t113 = load %"compiler/scope:placedRow", ptr %l60
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hf457f2e49081178a88b1688ded3555ea(ptr %v0, ptr %t111, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t112, %"compiler/scope:placedRow" %t113)
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s3)
  br label %bb32
bb32:
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t116 = getelementptr %"compiler/scope:Scoper", ptr %t114, i32 0, i32 226
  %t117 = load i1, ptr %t116, !tbaa !21
  br i1 %t117, label %bb33, label %bb34
bb33:
  store %olang.scope zeroinitializer, ptr %s4
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr %"compiler/scope:Scoper", ptr %t119, i32 0, i32 256
  store ptr %t121, ptr %l64, !tbaa !29
  %t122 = ptrtoint ptr %v0 to i64
  store i64 %t122, ptr %l65, !tbaa !24
  %t123 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t123, label %bb35, label %bb36
bb34:
  br label %bb44
bb35:
  %t125 = call ptr @__olang_region_make(ptr %v0)
  %t126 = ptrtoint ptr %t125 to i64
  store i64 %t126, ptr %l65, !tbaa !24
  br label %bb36
bb36:
  %t127 = load i64, ptr %l1, !tbaa !24
  store i64 %t127, ptr %l67, !tbaa !24
  %t128 = load { i64, [2 x i64] }, ptr %l5
  store { i64, [2 x i64] } %t128, ptr %l68
  %t129 = load ptr, ptr %l0, !tbaa !29
  store ptr %t129, ptr %l69, !tbaa !29
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t132 = getelementptr %"compiler/scope:Scoper", ptr %t130, i32 0, i32 26
  %t133 = load ptr, ptr %t132, !tbaa !29
  %t135 = icmp eq ptr %t133, null
  br i1 %t135, label %bb37, label %bb38
bb37:
  call void @__olang_check_failed(ptr @olang_loc_a1dfdb3aa5c3dabe_f256725844591b12)
  unreachable
bb38:
  br label %bb39
bb39:
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t139 = getelementptr %"compiler/scope:Scoper", ptr %t137, i32 0, i32 26
  %t140 = load ptr, ptr %t139, !tbaa !29
  %t143 = getelementptr %"compiler/typed:Body", ptr %t140, i32 0, i32 9
  %t144 = load i64, ptr %l1, !tbaa !24
  %t147 = call %"compiler/typed:SiteInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aSiteInfo_3e_2eAt_3ccompiler_2ftyped_3aSiteInfo_3e(ptr %v0, ptr %t143, i64 %t144)
  store %"compiler/typed:SiteInfo" %t147, ptr %l78
  br label %bb40
bb40:
  %t148 = getelementptr %"compiler/typed:SiteInfo", ptr %l78, i32 0, i32 1
  %t149 = getelementptr %"compiler/source:Span", ptr %t148, i32 0, i32 0
  %t150 = load i32, ptr %t149, !tbaa !23
  %t151 = load ptr, ptr %l69, !tbaa !29
  %t153 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etraceAt(ptr %v0, ptr %s4, ptr %t151, i32 %t150)
  store { i64, ptr } %t153, ptr %l80
  br label %bb41
bb41:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s5
  store ptr %s5room, ptr %s5
  %t154 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t155 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t154, i64 %t155)
  %t156 = load i64, ptr %l67, !tbaa !24
  %t157 = call ptr @__olang_sb_room(ptr %s5, i64 24)
  %t158 = call i64 @__olang_fmt_i64(ptr %t157, i64 %t156)
  call void @__olang_sb_add(ptr %s5, i64 %t158)
  %t159 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t160 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t159, i64 %t160)
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2fscope_3aTerm(ptr %s5, ptr %l68, i64 0)
  br label %bb42
bb42:
  %t162 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t163 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t162, i64 %t163)
  %t164 = load { i64, ptr }, ptr %l80, !tbaa !27
  %t165 = extractvalue { i64, ptr } %t164, 1
  %t166 = extractvalue { i64, ptr } %t164, 0
  call void @__olang_sb_put(ptr %s5, ptr %t165, i64 %t166)
  %t167 = load ptr, ptr %s5
  %t168 = getelementptr %olang.builder, ptr %s5, i32 0, i32 1
  %t169 = load i64, ptr %t168
  %t170 = load i64, ptr %l65
  %t171 = inttoptr i64 %t170 to ptr
  %t172 = call ptr @__olang_scope_alloc(ptr %t171, i64 %t169)
  call void @olang_textcopy(ptr %t172, ptr %t167, i64 %t169)
  %t173 = insertvalue { i64, ptr } undef, i64 %t169, 0
  %t174 = insertvalue { i64, ptr } %t173, ptr %t172, 1
  store { i64, ptr } %t174, ptr %l82, !tbaa !27
  %t175 = getelementptr %olang.builder, ptr %s5, i32 0, i32 3
  %t176 = load ptr, ptr %t175
  %t177 = icmp ne ptr %t176, null
  br i1 %t177, label %sbgrew.178, label %sbdone.179
sbgrew.178:
  call void @__olang_sb_done(ptr %s5)
  br label %sbdone.179
sbdone.179:
  %t180 = load { i64, ptr }, ptr %l82, !tbaa !27
  %t181 = load i64, ptr %l65
  %t182 = inttoptr i64 %t181 to ptr
  %t183 = extractvalue { i64, ptr } %t180, 0
  %t184 = extractvalue { i64, ptr } %t180, 1
  %t185 = mul i64 %t183, 1
  %t186 = call ptr @__olang_scope_alloc(ptr %t182, i64 %t185)
  call void @llvm.memcpy.p0.p0.i64(ptr %t186, ptr %t184, i64 %t185, i1 false)
  %t187 = insertvalue { i64, ptr } undef, i64 %t183, 0
  %t188 = insertvalue { i64, ptr } %t187, ptr %t186, 1
  %t189 = load ptr, ptr %l64, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t189, { i64, ptr } %t188)
  br label %bb43
bb43:
  call void @__olang_scope_close(ptr %s4)
  br label %bb44
bb44:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ereadPart(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, { i64, [2 x i64] } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca { i64, [2 x i64] }
  %l4 = alloca ptr
  %l5 = alloca %"compiler/scope:Val"
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca i32
  %l8 = alloca ptr
  %l9 = alloca %"compiler/source:Span"
  %l10 = alloca i32
  %l12 = alloca %"compiler/source:Span"
  %l13 = alloca i32
  %l14 = alloca ptr
  %l15 = alloca i32
  %l16 = alloca ptr
  %l17 = alloca %"compiler/scope:Val"
  %l18 = alloca i64
  %l19 = alloca ptr
  %l20 = alloca %"compiler/scope:Val"
  %l21 = alloca i32
  %l22 = alloca ptr
  %l23 = alloca ptr
  %l24 = alloca i1
  %l32 = alloca i1
  %l35 = alloca i1
  %l36 = alloca i1
  %l40 = alloca i1
  %l41 = alloca i1
  %l44 = alloca i1
  %l50 = alloca %"compiler/scope:Val"
  %l53 = alloca i1
  %l55 = alloca %"compiler/scope:Val"
  %l57 = alloca %"compiler/scope:Val"
  %l58 = alloca ptr
  %l59 = alloca i1
  %l62 = alloca i1
  %l71 = alloca i1
  %l72 = alloca i1
  %l83 = alloca i1
  %l94 = alloca %"compiler/scope:Val"
  %l97 = alloca ptr
  %l98 = alloca i1
  %l103 = alloca ptr
  %l108 = alloca ptr
  %l109 = alloca i32
  %l117 = alloca i1
  %l122 = alloca %"compiler/scope:Val"
  %l130 = alloca i64
  %l133 = alloca i1
  %l135 = alloca i1
  %l137 = alloca ptr
  %l141 = alloca ptr
  %l142 = alloca i32
  %l149 = alloca i1
  %l154 = alloca %"compiler/scope:Val"
  %l161 = alloca i1
  %l163 = alloca %"compiler/scope:Val"
  %l164 = alloca ptr
  %l165 = alloca i1
  %l172 = alloca { i64, [2 x i64] }
  %l173 = alloca %"compiler/scope:Val"
  %l174 = alloca ptr
  %l175 = alloca i1
  %l184 = alloca %"compiler/scope:Val"
  %l186 = alloca %"compiler/scope:Val"
  %l189 = alloca { i64, [2 x i64] }
  %l190 = alloca %"compiler/scope:Val"
  %s5 = alloca %olang.scope
  %rv = alloca %"compiler/scope:Val"
  %t156 = alloca { i64, [2 x i64] }, align 8
  %t344 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  store { i64, [2 x i64] } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l23, !tbaa !29
  store i1 false, ptr %l24, !tbaa !21
  %t2 = load ptr, ptr %l23, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l23, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l24, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l24, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l4, !tbaa !29
  br label %bb5
bb4:
  br label %bb28
bb5:
  %t16 = load { i64, [2 x i64] }, ptr %l3
  %t18 = extractvalue { i64, [2 x i64] } %t16, 0
  %t19 = icmp eq i64 %t18, 0
  %t21 = xor i1 %t19, true
  br i1 %t21, label %bb6, label %bb7
bb6:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load i32, ptr %l2, !tbaa !23
  %t27 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2earenaValue(ptr %v0, ptr %t23, i32 %t24)
  store i1 %t27, ptr %l35
  br label %bb8
bb7:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb9
bb8:
  %t28 = load i1, ptr %l35, !tbaa !21
  store i1 %t28, ptr %l32, !tbaa !21
  br label %bb9
bb9:
  %t29 = load i1, ptr %l32, !tbaa !21
  br i1 %t29, label %bb10, label %bb11
bb10:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load ptr, ptr %l4, !tbaa !29
  %t35 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFresh(ptr %v0, ptr %v1, ptr %t30, ptr %t31)
  store i1 %t35, ptr %l40
  br label %bb12
bb11:
  store i1 false, ptr %l36, !tbaa !21
  br label %bb13
bb12:
  %t36 = load i1, ptr %l40, !tbaa !21
  store i1 %t36, ptr %l36, !tbaa !21
  br label %bb13
bb13:
  %t37 = load i1, ptr %l36, !tbaa !21
  br i1 %t37, label %bb14, label %bb15
bb14:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t39 = load ptr, ptr %l4, !tbaa !29
  %t42 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekeptCall(ptr %v0, ptr %v1, ptr %t38, ptr %t39)
  store i1 %t42, ptr %l44
  br label %bb16
bb15:
  store i1 false, ptr %l41, !tbaa !21
  br label %bb17
bb16:
  %t43 = load i1, ptr %l44, !tbaa !21
  %t44 = xor i1 %t43, true
  store i1 %t44, ptr %l41, !tbaa !21
  br label %bb17
bb17:
  %t46 = load i1, ptr %l41, !tbaa !21
  br i1 %t46, label %bb18, label %bb19
bb18:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load ptr, ptr %l4, !tbaa !29
  %t50 = load { i64, [2 x i64] }, ptr %l3
  %t54 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t47, ptr %t48, { i64, [2 x i64] } %t50)
  store %"compiler/scope:Val" %t54, ptr %l50
  br label %bb20
bb19:
  br label %bb27
bb20:
  %t55 = load %"compiler/scope:Val", ptr %l50
  store %"compiler/scope:Val" %t55, ptr %l5
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = load i32, ptr %l2, !tbaa !23
  %t60 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholds(ptr %v0, ptr %t56, i32 %t57)
  store i1 %t60, ptr %l53
  br label %bb21
bb21:
  %t61 = load i1, ptr %l53, !tbaa !21
  %t62 = xor i1 %t61, true
  br i1 %t62, label %bb22, label %bb23
bb22:
  %t64 = call %"compiler/scope:Val" @compiler_2fscope_2eVal_2eplain()
  store %"compiler/scope:Val" %t64, ptr %l55
  br label %bb24
bb23:
  br label %bb25
bb24:
  %t65 = load %"compiler/scope:Val", ptr %l55
  store %"compiler/scope:Val" %t65, ptr %rv
  br label %ret
bb25:
  %t66 = getelementptr %"compiler/scope:Val", ptr %l5, i32 0, i32 1
  %t67 = load { i64, [2 x i64] }, ptr %t66
  %t69 = call %"compiler/scope:Val" @compiler_2fscope_2eVal_2eexisting({ i64, [2 x i64] } %t67)
  store %"compiler/scope:Val" %t69, ptr %l57
  br label %bb26
bb26:
  %t70 = load %"compiler/scope:Val", ptr %l57
  store %"compiler/scope:Val" %t70, ptr %rv
  br label %ret
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
  call void @__olang_check_failed(ptr @olang_loc_c91b1cdc23aab6c5_bcff614648d867b1)
  unreachable
bb33:
  %t71 = load ptr, ptr %l1, !tbaa !29
  store ptr %t71, ptr %l58, !tbaa !29
  store i1 false, ptr %l59, !tbaa !21
  %t72 = load ptr, ptr %l58, !tbaa !29
  %t73 = icmp ne ptr %t72, null
  br i1 %t73, label %bb34, label %bb35
bb34:
  %t75 = load ptr, ptr %l58, !tbaa !29
  %t76 = load i64, ptr %t75, !range !{i64 0, i64 8}
  %t78 = icmp eq i64 %t76, 4
  store i1 %t78, ptr %l59, !tbaa !21
  br label %bb35
bb35:
  %t79 = load i1, ptr %l59, !tbaa !21
  br i1 %t79, label %bb36, label %bb37
bb36:
  %t80 = load ptr, ptr %l1, !tbaa !29
  %t82 = getelementptr { i64, [4 x i64] }, ptr %t80, i32 0, i32 1
  %t83 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t82, i32 0, i32 0
  %t84 = load %"compiler/source:Span", ptr %t83
  store %"compiler/source:Span" %t84, ptr %l6
  %t86 = load ptr, ptr %l1, !tbaa !29
  %t88 = getelementptr { i64, [4 x i64] }, ptr %t86, i32 0, i32 1
  %t89 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t88, i32 0, i32 1
  %t90 = load i32, ptr %t89
  store i32 %t90, ptr %l7, !tbaa !23
  %t92 = load ptr, ptr %l1, !tbaa !29
  %t94 = getelementptr { i64, [4 x i64] }, ptr %t92, i32 0, i32 1
  %t95 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t94, i32 0, i32 2
  %t96 = load ptr, ptr %t95
  store ptr %t96, ptr %l8, !tbaa !29
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t99 = load i32, ptr %l2, !tbaa !23
  %t102 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholds(ptr %v0, ptr %t98, i32 %t99)
  store i1 %t102, ptr %l71
  br label %bb38
bb37:
  store i1 false, ptr %l62, !tbaa !21
  br label %bb39
bb38:
  %t103 = load i1, ptr %l71, !tbaa !21
  store i1 %t103, ptr %l62, !tbaa !21
  br label %bb39
bb39:
  %t104 = load i1, ptr %l62, !tbaa !21
  br i1 %t104, label %bb40, label %bb41
bb40:
  %t105 = load ptr, ptr %l1, !tbaa !29
  %t107 = getelementptr { i64, [4 x i64] }, ptr %t105, i32 0, i32 1
  %t108 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t107, i32 0, i32 0
  %t109 = load %"compiler/source:Span", ptr %t108
  store %"compiler/source:Span" %t109, ptr %l9
  %t111 = load ptr, ptr %l1, !tbaa !29
  %t113 = getelementptr { i64, [4 x i64] }, ptr %t111, i32 0, i32 1
  %t114 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t113, i32 0, i32 1
  %t115 = load i32, ptr %t114
  store i32 %t115, ptr %l10, !tbaa !23
  %t117 = load ptr, ptr %l1, !tbaa !29
  %t119 = getelementptr { i64, [4 x i64] }, ptr %t117, i32 0, i32 1
  %t120 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t119, i32 0, i32 2
  %t121 = load ptr, ptr %t120
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t127 = getelementptr %"compiler/typed:Elem", ptr %t121, i32 0, i32 0
  %t128 = load ptr, ptr %t127, !tbaa !29
  %t131 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2econstLiteral(ptr %v0, ptr %v1, ptr %t123, ptr %t128)
  store i1 %t131, ptr %l83
  br label %bb42
bb41:
  store i1 false, ptr %l72, !tbaa !21
  br label %bb43
bb42:
  %t132 = load i1, ptr %l83, !tbaa !21
  store i1 %t132, ptr %l72, !tbaa !21
  br label %bb43
bb43:
  %t133 = load i1, ptr %l72, !tbaa !21
  br i1 %t133, label %bb44, label %bb45
bb44:
  store %olang.scope zeroinitializer, ptr %s5
  %t134 = load ptr, ptr %l1, !tbaa !29
  %t136 = getelementptr { i64, [4 x i64] }, ptr %t134, i32 0, i32 1
  %t137 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t136, i32 0, i32 0
  %t138 = load %"compiler/source:Span", ptr %t137
  store %"compiler/source:Span" %t138, ptr %l12
  %t140 = load ptr, ptr %l1, !tbaa !29
  %t142 = getelementptr { i64, [4 x i64] }, ptr %t140, i32 0, i32 1
  %t143 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t142, i32 0, i32 1
  %t144 = load i32, ptr %t143
  store i32 %t144, ptr %l13, !tbaa !23
  %t146 = load ptr, ptr %l1, !tbaa !29
  %t148 = getelementptr { i64, [4 x i64] }, ptr %t146, i32 0, i32 1
  %t149 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t148, i32 0, i32 2
  %t150 = load ptr, ptr %t149
  store ptr %t150, ptr %l14, !tbaa !29
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t153 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eplaceOperands(ptr %v0, ptr %v1, ptr %t152, ptr %t153)
  br label %bb46
bb45:
  br label %bb48
bb46:
  store { i64, [2 x i64] } zeroinitializer, ptr %t156
  %t157 = getelementptr { i64, [2 x i64] }, ptr %t156, i32 0, i32 0
  store i64 3, ptr %t157
  %t158 = load { i64, [2 x i64] }, ptr %t156
  %t161 = call %"compiler/scope:Val" @compiler_2fscope_3aVal_2ector(ptr %s5, i32 4, { i64, [2 x i64] } %t158)
  store %"compiler/scope:Val" %t161, ptr %l94
  br label %bb47
bb47:
  call void @__olang_scope_close(ptr %s5)
  %t162 = load %"compiler/scope:Val", ptr %l94
  store %"compiler/scope:Val" %t162, ptr %rv
  br label %ret
bb48:
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t164 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eplaceOperands(ptr %v0, ptr %v1, ptr %t163, ptr %t164)
  br label %bb49
bb49:
  %t167 = load ptr, ptr %l1, !tbaa !29
  store ptr %t167, ptr %l97, !tbaa !29
  store i1 false, ptr %l98, !tbaa !21
  %t168 = load ptr, ptr %l97, !tbaa !29
  %t169 = icmp ne ptr %t168, null
  br i1 %t169, label %bb50, label %bb51
bb50:
  %t171 = load ptr, ptr %l97, !tbaa !29
  %t172 = load i64, ptr %t171, !range !{i64 0, i64 8}
  %t174 = icmp eq i64 %t172, 0
  store i1 %t174, ptr %l98, !tbaa !21
  br label %bb51
bb51:
  %t175 = load i1, ptr %l98, !tbaa !21
  br i1 %t175, label %bb52, label %bb53
bb52:
  %t176 = load ptr, ptr %l1, !tbaa !29
  %t178 = getelementptr { i64, [4 x i64] }, ptr %t176, i32 0, i32 1
  %t179 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t178, i32 0, i32 2
  %t180 = load i32, ptr %t179
  store i32 %t180, ptr %l15, !tbaa !23
  br label %bb54
bb53:
  br label %bb65
bb54:
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t184 = getelementptr %"compiler/scope:Scoper", ptr %t182, i32 0, i32 43
  %t185 = load i32, ptr %l15, !tbaa !23
  %t187 = sext i32 %t185 to i64
  %t190 = call { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_H68cd31c3dbcdb47f3349b834dda1e07d(ptr %v0, ptr %v0, ptr %t184, i64 %t187)
  %t191 = extractvalue { i32, ptr } %t190, 1
  %t192 = extractvalue { i32, ptr } %t190, 0
  store i32 %t192, ptr %l109
  %t193 = icmp ne i32 %t192, 0
  br i1 %t193, label %bb56, label %ok.194, !prof !99
ok.194:
  store ptr %t191, ptr %l108
  br label %bb55
bb55:
  %t195 = load ptr, ptr %l108, !tbaa !29
  store ptr %t195, ptr %l103, !tbaa !29
  br label %bb58
bb56:
  br label %bb57
bb57:
  store ptr null, ptr %l103, !tbaa !29
  br label %bb58
bb58:
  %t196 = load ptr, ptr %l103, !tbaa !29
  store ptr %t196, ptr %l16, !tbaa !29
  %t197 = load ptr, ptr %l16, !tbaa !29
  %t199 = icmp eq ptr %t197, null
  %t201 = xor i1 %t199, true
  br i1 %t201, label %bb59, label %bb60
bb59:
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t205 = getelementptr %"compiler/scope:Scoper", ptr %t203, i32 0, i32 43
  %t206 = load i32, ptr %l15, !tbaa !23
  %t208 = sext i32 %t206 to i64
  %t211 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_Hb9b7b1d0a60c104971d2bbda63d84eec(ptr %v0, ptr %t205, i64 %t208)
  store i1 %t211, ptr %l117
  br label %bb61
bb60:
  br label %bb64
bb61:
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t213 = load ptr, ptr %l16, !tbaa !29
  %t215 = load { i64, [2 x i64] }, ptr %l3
  %t219 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v0, ptr %t212, ptr %t213, { i64, [2 x i64] } %t215)
  store %"compiler/scope:Val" %t219, ptr %l122
  br label %bb62
bb62:
  %t220 = load %"compiler/scope:Val", ptr %l122
  store %"compiler/scope:Val" %t220, ptr %l17
  %t221 = load ptr, ptr %l0, !tbaa !29
  %t223 = getelementptr %"compiler/scope:Scoper", ptr %t221, i32 0, i32 34
  %t224 = load i32, ptr %l15, !tbaa !23
  %t226 = sext i32 %t224 to i64
  %t227 = getelementptr %"compiler/scope:Val", ptr %l17, i32 0, i32 1
  %t228 = load { i64, [2 x i64] }, ptr %t227
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eSetAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t223, i64 %t226, { i64, [2 x i64] } %t228)
  br label %bb63
bb63:
  %t232 = load %"compiler/scope:Val", ptr %l17
  store %"compiler/scope:Val" %t232, ptr %rv
  br label %ret
bb64:
  br label %bb88
bb65:
  br i1 true, label %bb66, label %bb67
bb66:
  br label %bb68
bb67:
  br label %bb87
bb68:
  %t234 = load ptr, ptr %l1, !tbaa !29
  %t236 = call i64 @compiler_2fscope_2eflRoot(ptr %v1, ptr %t234)
  store i64 %t236, ptr %l130
  br label %bb69
bb69:
  %t237 = load i64, ptr %l130, !tbaa !24
  store i64 %t237, ptr %l18, !tbaa !24
  %t238 = load i64, ptr %l18, !tbaa !24
  %t240 = icmp sge i64 %t238, 0
  br i1 %t240, label %bb70, label %bb71
bb70:
  %t242 = load ptr, ptr %l1, !tbaa !29
  %t244 = call i1 @compiler_2fscope_2eflThroughRef(ptr %v1, ptr %t242)
  store i1 %t244, ptr %l135
  br label %bb72
bb71:
  store i1 false, ptr %l133, !tbaa !21
  br label %bb73
bb72:
  %t245 = load i1, ptr %l135, !tbaa !21
  %t246 = xor i1 %t245, true
  store i1 %t246, ptr %l133, !tbaa !21
  br label %bb73
bb73:
  %t248 = load i1, ptr %l133, !tbaa !21
  br i1 %t248, label %bb74, label %bb75
bb74:
  %t249 = load ptr, ptr %l0, !tbaa !29
  %t251 = getelementptr %"compiler/scope:Scoper", ptr %t249, i32 0, i32 43
  %t252 = load i64, ptr %l18, !tbaa !24
  %t255 = call { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_H68cd31c3dbcdb47f3349b834dda1e07d(ptr %v0, ptr %v0, ptr %t251, i64 %t252)
  %t256 = extractvalue { i32, ptr } %t255, 1
  %t257 = extractvalue { i32, ptr } %t255, 0
  store i32 %t257, ptr %l142
  %t258 = icmp ne i32 %t257, 0
  br i1 %t258, label %bb77, label %ok.259, !prof !99
ok.259:
  store ptr %t256, ptr %l141
  br label %bb76
bb75:
  br label %bb86
bb76:
  %t260 = load ptr, ptr %l141, !tbaa !29
  store ptr %t260, ptr %l137, !tbaa !29
  br label %bb79
bb77:
  br label %bb78
bb78:
  store ptr null, ptr %l137, !tbaa !29
  br label %bb79
bb79:
  %t261 = load ptr, ptr %l137, !tbaa !29
  store ptr %t261, ptr %l19, !tbaa !29
  %t262 = load ptr, ptr %l19, !tbaa !29
  %t264 = icmp eq ptr %t262, null
  %t266 = xor i1 %t264, true
  br i1 %t266, label %bb80, label %bb81
bb80:
  %t268 = load ptr, ptr %l0, !tbaa !29
  %t270 = getelementptr %"compiler/scope:Scoper", ptr %t268, i32 0, i32 43
  %t271 = load i64, ptr %l18, !tbaa !24
  %t274 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_Hb9b7b1d0a60c104971d2bbda63d84eec(ptr %v0, ptr %t270, i64 %t271)
  store i1 %t274, ptr %l149
  br label %bb82
bb81:
  br label %bb85
bb82:
  %t275 = load ptr, ptr %l0, !tbaa !29
  %t276 = load ptr, ptr %l19, !tbaa !29
  %t278 = load { i64, [2 x i64] }, ptr %l3
  %t282 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v0, ptr %t275, ptr %t276, { i64, [2 x i64] } %t278)
  store %"compiler/scope:Val" %t282, ptr %l154
  br label %bb83
bb83:
  %t283 = load %"compiler/scope:Val", ptr %l154
  store %"compiler/scope:Val" %t283, ptr %l20
  %t284 = load ptr, ptr %l0, !tbaa !29
  %t286 = getelementptr %"compiler/scope:Scoper", ptr %t284, i32 0, i32 34
  %t287 = load i64, ptr %l18, !tbaa !24
  %t288 = getelementptr %"compiler/scope:Val", ptr %l20, i32 0, i32 1
  %t289 = load { i64, [2 x i64] }, ptr %t288
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eSetAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t286, i64 %t287, { i64, [2 x i64] } %t289)
  br label %bb84
bb84:
  br label %bb85
bb85:
  br label %bb86
bb86:
  br label %bb88
bb87:
  call void @__olang_check_failed(ptr @olang_loc_9b2b18bf4fb48614_1bb14c01aa18e3a0)
  unreachable
bb88:
  %t293 = load ptr, ptr %l0, !tbaa !29
  %t294 = load i32, ptr %l2, !tbaa !23
  %t297 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholds(ptr %v0, ptr %t293, i32 %t294)
  store i1 %t297, ptr %l161
  br label %bb89
bb89:
  %t298 = load i1, ptr %l161, !tbaa !21
  %t299 = xor i1 %t298, true
  br i1 %t299, label %bb90, label %bb91
bb90:
  %t301 = call %"compiler/scope:Val" @compiler_2fscope_2eVal_2eplain()
  store %"compiler/scope:Val" %t301, ptr %l163
  br label %bb92
bb91:
  br label %bb93
bb92:
  %t302 = load %"compiler/scope:Val", ptr %l163
  store %"compiler/scope:Val" %t302, ptr %rv
  br label %ret
bb93:
  %t303 = load ptr, ptr %l1, !tbaa !29
  store ptr %t303, ptr %l164, !tbaa !29
  store i1 false, ptr %l165, !tbaa !21
  %t304 = load ptr, ptr %l164, !tbaa !29
  %t305 = icmp ne ptr %t304, null
  br i1 %t305, label %bb94, label %bb95
bb94:
  %t307 = load ptr, ptr %l164, !tbaa !29
  %t308 = load i64, ptr %t307, !range !{i64 0, i64 8}
  %t310 = icmp eq i64 %t308, 0
  store i1 %t310, ptr %l165, !tbaa !21
  br label %bb95
bb95:
  %t311 = load i1, ptr %l165, !tbaa !21
  br i1 %t311, label %bb96, label %bb97
bb96:
  %t312 = load ptr, ptr %l1, !tbaa !29
  %t314 = getelementptr { i64, [4 x i64] }, ptr %t312, i32 0, i32 1
  %t315 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t314, i32 0, i32 2
  %t316 = load i32, ptr %t315
  store i32 %t316, ptr %l21, !tbaa !23
  br label %bb98
bb97:
  br label %bb101
bb98:
  %t318 = load ptr, ptr %l0, !tbaa !29
  %t319 = load i32, ptr %l21, !tbaa !23
  %t322 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewhereLives(ptr %v0, ptr %t318, i32 %t319)
  store { i64, [2 x i64] } %t322, ptr %l172
  br label %bb99
bb99:
  %t323 = load { i64, [2 x i64] }, ptr %l172
  %t324 = call %"compiler/scope:Val" @compiler_2fscope_2eVal_2eexisting({ i64, [2 x i64] } %t323)
  store %"compiler/scope:Val" %t324, ptr %l173
  br label %bb100
bb100:
  %t325 = load %"compiler/scope:Val", ptr %l173
  store %"compiler/scope:Val" %t325, ptr %rv
  br label %ret
bb101:
  %t326 = load ptr, ptr %l1, !tbaa !29
  store ptr %t326, ptr %l174, !tbaa !29
  store i1 false, ptr %l175, !tbaa !21
  %t327 = load ptr, ptr %l174, !tbaa !29
  %t328 = icmp ne ptr %t327, null
  br i1 %t328, label %bb102, label %bb103
bb102:
  %t330 = load ptr, ptr %l174, !tbaa !29
  %t331 = load i64, ptr %t330, !range !{i64 0, i64 8}
  %t333 = icmp eq i64 %t331, 2
  store i1 %t333, ptr %l175, !tbaa !21
  br label %bb103
bb103:
  %t334 = load i1, ptr %l175, !tbaa !21
  br i1 %t334, label %bb104, label %bb105
bb104:
  %t335 = load ptr, ptr %l1, !tbaa !29
  %t337 = getelementptr { i64, [4 x i64] }, ptr %t335, i32 0, i32 1
  %t338 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t337, i32 0, i32 2
  %t339 = load ptr, ptr %t338
  store ptr %t339, ptr %l22, !tbaa !29
  br label %bb106
bb105:
  br label %bb109
bb106:
  %t341 = load ptr, ptr %l0, !tbaa !29
  %t342 = load ptr, ptr %l22, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t344
  %t345 = getelementptr { i64, [2 x i64] }, ptr %t344, i32 0, i32 0
  store i64 0, ptr %t345
  %t346 = load { i64, [2 x i64] }, ptr %t344
  %t350 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t341, ptr %t342, { i64, [2 x i64] } %t346)
  store %"compiler/scope:Val" %t350, ptr %l184
  br label %bb107
bb107:
  %t351 = getelementptr %"compiler/scope:Val", ptr %l184, i32 0, i32 1
  %t352 = load { i64, [2 x i64] }, ptr %t351
  %t354 = call %"compiler/scope:Val" @compiler_2fscope_2eVal_2eexisting({ i64, [2 x i64] } %t352)
  store %"compiler/scope:Val" %t354, ptr %l186
  br label %bb108
bb108:
  %t355 = load %"compiler/scope:Val", ptr %l186
  store %"compiler/scope:Val" %t355, ptr %rv
  br label %ret
bb109:
  br i1 true, label %bb110, label %bb111
bb110:
  br label %bb112
bb111:
  br label %bb115
bb112:
  %t356 = load ptr, ptr %l0, !tbaa !29
  %t357 = load ptr, ptr %l1, !tbaa !29
  %t360 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartsTerm(ptr %v0, ptr %v1, ptr %t356, ptr %t357)
  store { i64, [2 x i64] } %t360, ptr %l189
  br label %bb113
bb113:
  %t361 = load { i64, [2 x i64] }, ptr %l189
  %t362 = call %"compiler/scope:Val" @compiler_2fscope_2eVal_2eexisting({ i64, [2 x i64] } %t361)
  store %"compiler/scope:Val" %t362, ptr %l190
  br label %bb114
bb114:
  %t363 = load %"compiler/scope:Val", ptr %l190
  store %"compiler/scope:Val" %t363, ptr %rv
  br label %ret
bb115:
  call void @__olang_check_failed(ptr @olang_loc_99a14be980ef284f_7692c216cde3a19b)
  unreachable
ret:
  %rr = load %"compiler/scope:Val", ptr %rv
  ret %"compiler/scope:Val" %rr
}

define dso_local { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erecAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca { i64, [2 x i64] }
  %l6 = alloca i1
  %l9 = alloca i1
  %l12 = alloca i64
  %l15 = alloca i64
  %l23 = alloca { i64, [2 x i64] }
  %l25 = alloca i1
  %l26 = alloca { i64, [2 x i64] }
  %rv = alloca { i64, [2 x i64] }
  %t25 = alloca { i64, [2 x i64] }, align 8
  %t47 = alloca { i64, [2 x i64] }, align 8
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
  store i1 true, ptr %l6, !tbaa !21
  br label %bb3
bb2:
  %t5 = load i64, ptr %l2, !tbaa !24
  %t7 = icmp slt i64 %t5, 0
  store i1 %t7, ptr %l6, !tbaa !21
  br label %bb3
bb3:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb7
bb5:
  %t10 = load i64, ptr %l1, !tbaa !24
  %t11 = load i64, ptr %l2, !tbaa !24
  %t14 = add i64 %t10, %t11
  store i64 %t14, ptr %l12, !tbaa !24
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/scope:Scoper", ptr %t15, i32 0, i32 47
  %t19 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eLen_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t17)
  store i64 %t19, ptr %l15
  br label %bb6
bb6:
  %t20 = load i64, ptr %l12, !tbaa !24
  %t21 = load i64, ptr %l15, !tbaa !24
  %t22 = icmp sge i64 %t20, %t21
  store i1 %t22, ptr %l9, !tbaa !21
  br label %bb7
bb7:
  %t24 = load i1, ptr %l9, !tbaa !21
  br i1 %t24, label %bb8, label %bb9
bb8:
  store { i64, [2 x i64] } zeroinitializer, ptr %t25
  %t26 = getelementptr { i64, [2 x i64] }, ptr %t25, i32 0, i32 0
  store i64 0, ptr %t26
  %t27 = load { i64, [2 x i64] }, ptr %t25
  store { i64, [2 x i64] } %t27, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/scope:Scoper", ptr %t29, i32 0, i32 47
  %t32 = load i64, ptr %l1, !tbaa !24
  %t33 = load i64, ptr %l2, !tbaa !24
  %t36 = add i64 %t32, %t33
  %t39 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t31, i64 %t36)
  store { i64, [2 x i64] } %t39, ptr %l23
  br label %bb11
bb11:
  %t40 = load { i64, [2 x i64] }, ptr %l23
  store { i64, [2 x i64] } %t40, ptr %l3
  %t41 = load { i64, [2 x i64] }, ptr %l3
  %t43 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t41)
  store i1 %t43, ptr %l25
  br label %bb12
bb12:
  %t44 = load i1, ptr %l25, !tbaa !21
  br i1 %t44, label %bb13, label %bb14
bb13:
  %t45 = load { i64, [2 x i64] }, ptr %l3
  store { i64, [2 x i64] } %t45, ptr %l26
  br label %bb15
bb14:
  store { i64, [2 x i64] } zeroinitializer, ptr %t47
  %t48 = getelementptr { i64, [2 x i64] }, ptr %t47, i32 0, i32 0
  store i64 0, ptr %t48
  %t49 = load { i64, [2 x i64] }, ptr %t47
  store { i64, [2 x i64] } %t49, ptr %l26
  br label %bb15
bb15:
  %t51 = load { i64, [2 x i64] }, ptr %l26
  store { i64, [2 x i64] } %t51, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erlDrop(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i1
  %l5 = alloca i64
  %l8 = alloca i64
  %l10 = alloca i1
  %l14 = alloca i64
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
  %t5 = load i64, ptr %l1, !tbaa !24
  store i64 %t5, ptr %l5, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/scope:Scoper", ptr %t6, i32 0, i32 121
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l8
  br label %bb3
bb2:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb4
bb3:
  %t11 = load i64, ptr %l5, !tbaa !24
  %t12 = load i64, ptr %l8, !tbaa !24
  %t13 = icmp slt i64 %t11, %t12
  store i1 %t13, ptr %l4, !tbaa !21
  br label %bb4
bb4:
  %t15 = load i1, ptr %l4, !tbaa !21
  br i1 %t15, label %bb5, label %bb6
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/scope:Scoper", ptr %t16, i32 0, i32 121
  %t19 = load i64, ptr %l1, !tbaa !24
  %t22 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t18, i64 %t19)
  store i64 %t22, ptr %l14
  br label %bb7
bb6:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb8
bb7:
  %t23 = load i64, ptr %l14, !tbaa !24
  %t24 = icmp sge i64 %t23, 0
  store i1 %t24, ptr %l10, !tbaa !21
  br label %bb8
bb8:
  %t26 = load i1, ptr %l10, !tbaa !21
  br i1 %t26, label %bb9, label %bb10
bb9:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/scope:Scoper", ptr %t27, i32 0, i32 121
  %t30 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t29, i64 %t30, i64 -1)
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/scope:Scoper", ptr %t33, i32 0, i32 124
  store i1 true, ptr %t35, !tbaa !21
  br label %bb12
bb12:
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esliceAt(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l7 = alloca ptr
  %l15 = alloca { i64, ptr }
  %l16 = alloca i32
  %l19 = alloca %"compiler/source:Span"
  %l26 = alloca i1
  %l32 = alloca { i64, ptr }
  %l41 = alloca %"compiler/source:Span"
  %s2 = alloca %olang.scope
  %rv = alloca %"compiler/source:Span"
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 11
  store ptr %t3, ptr %l7, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/scope:Scoper", ptr %t4, i32 0, i32 26
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = icmp eq ptr %t7, null
  br i1 %t9, label %bb1, label %bb2
bb1:
  call void @__olang_check_failed(ptr @olang_loc_e18696d73c32363c_a4e51a2c5acfe520)
  unreachable
bb2:
  br label %bb3
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/scope:Scoper", ptr %t11, i32 0, i32 26
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t17 = getelementptr %"compiler/typed:Body", ptr %t14, i32 0, i32 3
  %t18 = load i64, ptr %t17, !tbaa !24
  %t19 = load ptr, ptr %l7, !tbaa !29
  %t21 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %v0, ptr %v0, ptr %t19, i64 %t18)
  %t22 = extractvalue { i32, { i64, ptr } } %t21, 1
  %t23 = extractvalue { i32, { i64, ptr } } %t21, 0
  store i32 %t23, ptr %l16
  %t24 = icmp ne i32 %t23, 0
  br i1 %t24, label %bb5, label %ok.25, !prof !99
ok.25:
  store { i64, ptr } %t22, ptr %l15
  br label %bb4
bb4:
  %t26 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t26, ptr %l5, !tbaa !27
  br label %bb7
bb5:
  br label %bb6
bb6:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d14, i32 0, i32 1) }, ptr %l5, !tbaa !27
  br label %bb7
bb7:
  %t27 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t27, ptr %l3, !tbaa !27
  %t30 = getelementptr %"compiler/typed:Slice", ptr %a2, i32 0, i32 0
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eSpan(ptr %v1, ptr %t31)
  store %"compiler/source:Span" %t33, ptr %l19
  br label %bb8
bb8:
  %t34 = getelementptr %"compiler/source:Span", ptr %l19, i32 0, i32 1
  %t35 = load i32, ptr %t34, !tbaa !23
  %t37 = sext i32 %t35 to i64
  store i64 %t37, ptr %l4, !tbaa !24
  br label %bb9
bb9:
  %t39 = load i64, ptr %l4, !tbaa !24
  %t40 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 1
  %t41 = load i32, ptr %t40, !tbaa !23
  %t43 = sext i32 %t41 to i64
  %t46 = icmp slt i64 %t39, %t43
  br i1 %t46, label %bb10, label %bb11
bb10:
  %t48 = load i64, ptr %l4, !tbaa !24
  %t49 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t51 = extractvalue { i64, ptr } %t49, 0
  %t54 = icmp slt i64 %t48, %t51
  store i1 %t54, ptr %l26, !tbaa !21
  br label %bb12
bb11:
  store i1 false, ptr %l26, !tbaa !21
  br label %bb12
bb12:
  %t56 = load i1, ptr %l26, !tbaa !21
  %t57 = xor i1 %t56, true
  br i1 %t57, label %bb13, label %bb14
bb13:
  br label %bb21
bb14:
  br label %bb15
bb15:
  %t59 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t59, ptr %l32, !tbaa !27
  %t60 = load i64, ptr %l4, !tbaa !24
  %t62 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !27
  %t64 = getelementptr i8, ptr %t63, i64 %t60
  %t65 = load i8, ptr %t64, !tbaa !32
  %t67 = icmp eq i8 %t65, 91
  br i1 %t67, label %bb16, label %bb17
bb16:
  store %olang.scope zeroinitializer, ptr %s2
  %t69 = load i64, ptr %l4, !tbaa !24
  %t71 = trunc i64 %t69 to i32
  %t72 = load i64, ptr %l4, !tbaa !24
  %t74 = add i64 %t72, 1
  %t76 = trunc i64 %t74 to i32
  %t79 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s2, i32 %t71, i32 %t76)
  store %"compiler/source:Span" %t79, ptr %l41
  br label %bb18
bb17:
  br label %bb19
bb18:
  call void @__olang_scope_close(ptr %s2)
  %t80 = load %"compiler/source:Span", ptr %l41
  store %"compiler/source:Span" %t80, ptr %rv
  br label %ret
bb19:
  %t81 = load i64, ptr %l4, !tbaa !24
  %t83 = add i64 %t81, 1
  store i64 %t83, ptr %l4, !tbaa !24
  br label %bb20
bb20:
  br label %bb9
bb21:
  %t85 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t85, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esomeUncovered(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l3 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca %"compiler/scope:fnRec"
  %l7 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l10 = alloca i64
  %l12 = alloca i64
  %l17 = alloca %"compiler/scope:fnRec"
  %l19 = alloca %"compiler/scope:fnRec"
  %l25 = alloca i64
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1, ptr %l7
  br label %bb1
bb1:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l7
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %l3
  %t5 = getelementptr %"compiler/scope:fnRecs", ptr %a1, i32 0, i32 0
  store ptr %t5, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  store %olang.scope zeroinitializer, ptr %s2
  %t7 = load i64, ptr %l5, !tbaa !24
  store i64 %t7, ptr %l10, !tbaa !24
  %t8 = load ptr, ptr %l4, !tbaa !29
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eLen_3ccompiler_2fscope_3afnRec_3e(ptr %v1, ptr %t8)
  store i64 %t10, ptr %l12
  br label %bb3
bb3:
  %t11 = load i64, ptr %l10, !tbaa !24
  %t12 = load i64, ptr %l12, !tbaa !24
  %t13 = icmp slt i64 %t11, %t12
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s2)
  br label %bb14
bb5:
  br label %bb6
bb6:
  %t17 = load ptr, ptr %l4, !tbaa !29
  %t18 = load i64, ptr %l5, !tbaa !24
  %t21 = call %"compiler/scope:fnRec" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eAt_3ccompiler_2fscope_3afnRec_3e(ptr %v1, ptr %v1, ptr %t17, i64 %t18)
  store %"compiler/scope:fnRec" %t21, ptr %l17
  br label %bb7
bb7:
  %t23 = call %"compiler/scope:fnRec" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRec(ptr %s2, ptr %l17)
  store %"compiler/scope:fnRec" %t23, ptr %l19
  br label %bb8
bb8:
  %t24 = load %"compiler/scope:fnRec", ptr %l19
  store %"compiler/scope:fnRec" %t24, ptr %l6
  %t26 = getelementptr %"compiler/scope:fnRec", ptr %l6, i32 0, i32 0
  %t27 = load i64, ptr %t26, !tbaa !24
  %t28 = getelementptr %"compiler/scope:fnRec", ptr %l6, i32 0, i32 2
  %t29 = load i1, ptr %t28, !tbaa !21
  %t36 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2euncovered(ptr %v0, ptr %s0, ptr %a0, i64 %t27, i1 %t29, i32 %a2, ptr %l3)
  store i64 %t36, ptr %l25
  br label %bb9
bb9:
  %t37 = load i64, ptr %l25, !tbaa !24
  %t38 = icmp sge i64 %t37, 0
  br i1 %t38, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s2)
  br label %bb13
bb13:
  %t41 = load i64, ptr %l5, !tbaa !24
  %t43 = add i64 %t41, 1
  store i64 %t43, ptr %l5, !tbaa !24
  br label %bb2
bb14:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esplitHeld(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca { i64, [2 x i64] }
  %l5 = alloca i1
  %l6 = alloca i1
  %l7 = alloca ptr
  %l9 = alloca i32
  %l10 = alloca i1
  %l11 = alloca i1
  %l14 = alloca ptr
  %l16 = alloca i32
  %l17 = alloca i1
  %l19 = alloca i1
  %l22 = alloca ptr
  %l24 = alloca i32
  %l25 = alloca i1
  %l30 = alloca { i64, [2 x i64] }
  %l33 = alloca { i64, [2 x i64] }
  %l44 = alloca i1
  %l48 = alloca i1
  %l49 = alloca { i64, [2 x i64] }
  %l51 = alloca { i64, [2 x i64] }
  %l53 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = call i1 @compiler_2fscope_2eflThroughRef(ptr %v1, ptr %t1)
  store i1 %t3, ptr %l5
  br label %bb1
bb1:
  %t4 = load i1, ptr %l5, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb6
bb3:
  %t5 = load ptr, ptr %l0, !tbaa !29
  store ptr %t5, ptr %l7, !tbaa !29
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t8 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t6)
  store i32 %t8, ptr %l9
  br label %bb4
bb4:
  %t9 = load ptr, ptr %l7, !tbaa !29
  %t10 = load i32, ptr %l9, !tbaa !23
  %t11 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t9, i32 %t10)
  store i1 %t11, ptr %l10
  br label %bb5
bb5:
  %t12 = load i1, ptr %l10, !tbaa !21
  store i1 %t12, ptr %l6, !tbaa !21
  br label %bb6
bb6:
  %t13 = load i1, ptr %l6, !tbaa !21
  br i1 %t13, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb11
bb8:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/scope:Scoper", ptr %t14, i32 0, i32 0
  %t17 = load ptr, ptr %t16, !tbaa !29
  %t19 = getelementptr %"compiler/generic:Program", ptr %t17, i32 0, i32 2
  store ptr %t19, ptr %l14, !tbaa !29
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t22 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t20)
  store i32 %t22, ptr %l16
  br label %bb9
bb9:
  %t23 = load ptr, ptr %l14, !tbaa !29
  %t24 = load i32, ptr %l16, !tbaa !23
  %t25 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnsParts(ptr %v0, ptr %t23, i32 %t24)
  store i1 %t25, ptr %l17
  br label %bb10
bb10:
  %t26 = load i1, ptr %l17, !tbaa !21
  %t27 = xor i1 %t26, true
  store i1 %t27, ptr %l11, !tbaa !21
  br label %bb11
bb11:
  %t29 = load i1, ptr %l11, !tbaa !21
  br i1 %t29, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l19, !tbaa !21
  br label %bb16
bb13:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/scope:Scoper", ptr %t30, i32 0, i32 0
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t35 = getelementptr %"compiler/generic:Program", ptr %t33, i32 0, i32 2
  store ptr %t35, ptr %l22, !tbaa !29
  %t36 = load ptr, ptr %l1, !tbaa !29
  %t38 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t36)
  store i32 %t38, ptr %l24
  br label %bb14
bb14:
  %t39 = load ptr, ptr %l22, !tbaa !29
  %t40 = load i32, ptr %l24, !tbaa !23
  %t41 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSharesRefs(ptr %v0, ptr %t39, i32 %t40)
  store i1 %t41, ptr %l25
  br label %bb15
bb15:
  %t42 = load i1, ptr %l25, !tbaa !21
  %t43 = xor i1 %t42, true
  store i1 %t43, ptr %l19, !tbaa !21
  br label %bb16
bb16:
  %t45 = load i1, ptr %l19, !tbaa !21
  br i1 %t45, label %bb17, label %bb18
bb17:
  store i1 false, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load ptr, ptr %l1, !tbaa !29
  %t51 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epeekPlace(ptr %v0, ptr %v1, ptr %t47, ptr %t48, i1 true)
  store { i64, [2 x i64] } %t51, ptr %l30
  br label %bb20
bb20:
  %t52 = load { i64, [2 x i64] }, ptr %l30
  store { i64, [2 x i64] } %t52, ptr %l2
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load ptr, ptr %l1, !tbaa !29
  %t57 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epeekPlace(ptr %v0, ptr %v1, ptr %t53, ptr %t54, i1 false)
  store { i64, [2 x i64] } %t57, ptr %l33
  br label %bb21
bb21:
  %t58 = load { i64, [2 x i64] }, ptr %l33
  store { i64, [2 x i64] } %t58, ptr %l3
  %t59 = load { i64, [2 x i64] }, ptr %l2
  %t61 = extractvalue { i64, [2 x i64] } %t59, 0
  %t62 = icmp eq i64 %t61, 5
  br i1 %t62, label %bb22, label %bb23
bb22:
  br label %bb28
bb23:
  %t64 = load { i64, [2 x i64] }, ptr %l2
  %t66 = extractvalue { i64, [2 x i64] } %t64, 0
  %t67 = icmp eq i64 %t66, 0
  br i1 %t67, label %bb24, label %bb25
bb24:
  br label %bb28
bb25:
  %t69 = load { i64, [2 x i64] }, ptr %l2
  %t71 = extractvalue { i64, [2 x i64] } %t69, 0
  %t72 = icmp eq i64 %t71, 6
  br i1 %t72, label %bb26, label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb29
bb28:
  store i1 false, ptr %rv
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
  call void @__olang_check_failed(ptr @olang_loc_3adcdc5611d30137_893c219db59797b)
  unreachable
bb34:
  %t75 = load { i64, [2 x i64] }, ptr %l3
  %t77 = extractvalue { i64, [2 x i64] } %t75, 0
  %t78 = icmp eq i64 %t77, 0
  %t80 = xor i1 %t78, true
  br i1 %t80, label %bb35, label %bb36
bb35:
  %t82 = load { i64, [2 x i64] }, ptr %l3
  %t84 = extractvalue { i64, [2 x i64] } %t82, 0
  %t85 = icmp eq i64 %t84, 6
  %t87 = xor i1 %t85, true
  store i1 %t87, ptr %l44, !tbaa !21
  br label %bb37
bb36:
  store i1 false, ptr %l44, !tbaa !21
  br label %bb37
bb37:
  %t89 = load i1, ptr %l44, !tbaa !21
  br i1 %t89, label %bb38, label %bb39
bb38:
  %t90 = load { i64, [2 x i64] }, ptr %l2
  store { i64, [2 x i64] } %t90, ptr %l49
  %t91 = load { i64, [2 x i64] }, ptr %l3
  store { i64, [2 x i64] } %t91, ptr %l51
  %t94 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3aTerm(ptr %l49, ptr %l51)
  store i1 %t94, ptr %l53
  br label %bb40
bb39:
  store i1 false, ptr %l48, !tbaa !21
  br label %bb41
bb40:
  %t95 = load i1, ptr %l53, !tbaa !21
  %t96 = xor i1 %t95, true
  store i1 %t96, ptr %l48, !tbaa !21
  br label %bb41
bb41:
  %t98 = load i1, ptr %l48, !tbaa !21
  store i1 %t98, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estaticVar(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca i1
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l17 = alloca i32
  %l26 = alloca { i64, ptr }
  %l38 = alloca i64
  %l41 = alloca i64
  %l64 = alloca i64
  %l67 = alloca i64
  %l76 = alloca { i64, ptr }
  %l80 = alloca ptr
  %l81 = alloca ptr
  %l82 = alloca i1
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t5 = call i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeType(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  store i32 %t5, ptr %l17
  br label %bb1
bb1:
  %t6 = load i32, ptr %l17, !tbaa !23
  store i32 %t6, ptr %l3, !tbaa !23
  %t7 = load i32, ptr %l3, !tbaa !23
  %t8 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t11 = icmp eq i32 %t7, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/scope:Scoper", ptr %t14, i32 0, i32 0
  %t17 = load ptr, ptr %t16, !tbaa !29
  %t19 = getelementptr %"compiler/generic:Program", ptr %t17, i32 0, i32 2
  %t20 = load i32, ptr %l3, !tbaa !23
  %t23 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopeVarsOf(ptr %v0, ptr %s0, ptr %t19, i32 %t20)
  store { i64, ptr } %t23, ptr %l26
  br label %bb5
bb5:
  %t24 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t24, ptr %l4, !tbaa !27
  %t25 = load i64, ptr %l2, !tbaa !24
  %t26 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t28 = extractvalue { i64, ptr } %t26, 0
  %t31 = icmp sge i64 %t25, %t28
  br i1 %t31, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  store i1 false, ptr %l5, !tbaa !21
  store i64 0, ptr %l6, !tbaa !24
  %t34 = load ptr, ptr %l1, !tbaa !29
  %t36 = getelementptr %"compiler/typed:Call", ptr %t34, i32 0, i32 1
  %t37 = load { i64, ptr }, ptr %t36, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t37, 0
  store i64 %t39, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t41 = load i64, ptr %l7, !tbaa !24
  %t42 = load i64, ptr %l6, !tbaa !24
  %t45 = icmp sgt i64 %t41, %t42
  br i1 %t45, label %bb9, label %bb10
bb9:
  %t47 = load i64, ptr %l8, !tbaa !24
  %t49 = icmp sgt i64 %t47, 0
  br i1 %t49, label %bb11, label %bb12
bb10:
  store i64 0, ptr %l38, !tbaa !24
  br label %bb14
bb11:
  %t51 = load i64, ptr %l7, !tbaa !24
  %t52 = load i64, ptr %l6, !tbaa !24
  %t55 = sub i64 %t51, %t52
  %t56 = load i64, ptr %l8, !tbaa !24
  %t59 = add i64 %t55, %t56
  %t61 = sub i64 %t59, 1
  %t62 = load i64, ptr %l8, !tbaa !24
  %t65 = sdiv i64 %t61, %t62
  store i64 %t65, ptr %l41, !tbaa !24
  br label %bb13
bb12:
  store i64 0, ptr %l41, !tbaa !24
  br label %bb13
bb13:
  %t67 = load i64, ptr %l41, !tbaa !24
  store i64 %t67, ptr %l38, !tbaa !24
  br label %bb14
bb14:
  %t68 = load i64, ptr %l38, !tbaa !24
  store i64 %t68, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb15
bb15:
  store %olang.scope zeroinitializer, ptr %s4
  %t69 = load i64, ptr %l10, !tbaa !24
  %t70 = load i64, ptr %l9, !tbaa !24
  %t73 = icmp slt i64 %t69, %t70
  %t75 = xor i1 %t73, true
  br i1 %t75, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s4)
  br label %bb39
bb17:
  br label %bb18
bb18:
  %t77 = load i64, ptr %l6, !tbaa !24
  %t78 = load i64, ptr %l10, !tbaa !24
  %t79 = load i64, ptr %l8, !tbaa !24
  %t82 = mul i64 %t78, %t79
  %t85 = add i64 %t77, %t82
  store i64 %t85, ptr %l11, !tbaa !24
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/scope:Scoper", ptr %t87, i32 0, i32 0
  %t90 = load ptr, ptr %t89, !tbaa !29
  %t92 = getelementptr %"compiler/generic:Program", ptr %t90, i32 0, i32 2
  %t93 = load i32, ptr %l3, !tbaa !23
  %t94 = load i64, ptr %l11, !tbaa !24
  %t98 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShareOf(ptr %v0, ptr %t92, i32 %t93, i64 %t94)
  store i64 %t98, ptr %l64
  br label %bb19
bb19:
  %t99 = load i64, ptr %l64, !tbaa !24
  store i64 %t99, ptr %l12, !tbaa !24
  %t100 = load i64, ptr %l12, !tbaa !24
  %t102 = icmp sge i64 %t100, 0
  br i1 %t102, label %bb20, label %bb21
bb20:
  %t104 = load i64, ptr %l12, !tbaa !24
  store i64 %t104, ptr %l67, !tbaa !24
  br label %bb22
bb21:
  %t106 = load i64, ptr %l11, !tbaa !24
  store i64 %t106, ptr %l67, !tbaa !24
  br label %bb22
bb22:
  %t108 = load i64, ptr %l67, !tbaa !24
  %t109 = load i64, ptr %l2, !tbaa !24
  %t111 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t112 = load ptr, ptr %t111, !tbaa !27
  %t113 = getelementptr i64, ptr %t112, i64 %t109
  %t114 = load i64, ptr %t113, !tbaa !34
  %t118 = icmp ne i64 %t114, %t108
  br i1 %t118, label %bb23, label %bb24
bb23:
  call void @__olang_scope_close(ptr %s4)
  br label %bb38
bb24:
  br label %bb25
bb25:
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t121 = load ptr, ptr %l1, !tbaa !29
  %t123 = getelementptr %"compiler/typed:Call", ptr %t121, i32 0, i32 1
  %t124 = load { i64, ptr }, ptr %t123, !tbaa !27
  store { i64, ptr } %t124, ptr %l76, !tbaa !27
  %t125 = load i64, ptr %l11, !tbaa !24
  %t127 = getelementptr { i64, ptr }, ptr %l76, i32 0, i32 1
  %t128 = load ptr, ptr %t127, !tbaa !27
  %t129 = getelementptr ptr, ptr %t128, i64 %t125
  %t130 = load ptr, ptr %t129, !tbaa !39
  %t134 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %s4, ptr %t120, ptr %t130)
  store ptr %t134, ptr %l80
  br label %bb26
bb26:
  %t135 = load ptr, ptr %l80, !tbaa !29
  store ptr %t135, ptr %l81, !tbaa !29
  store i1 false, ptr %l82, !tbaa !21
  %t137 = load ptr, ptr %l81, !tbaa !29
  %t138 = icmp ne ptr %t137, null
  br i1 %t138, label %bb27, label %bb28
bb27:
  %t140 = load ptr, ptr %l81, !tbaa !29
  %t141 = load i64, ptr %t140, !range !{i64 0, i64 18}
  %t143 = icmp eq i64 %t141, 1
  store i1 %t143, ptr %l82, !tbaa !21
  br label %bb28
bb28:
  %t144 = load i1, ptr %l82, !tbaa !21
  br i1 %t144, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb37
bb32:
  br i1 true, label %bb33, label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb36
bb35:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb36:
  call void @__olang_check_failed(ptr @olang_loc_e22ca2126d036b2f_5c370e93157d3a93)
  unreachable
bb37:
  call void @__olang_scope_close(ptr %s4)
  br label %bb38
bb38:
  %t146 = load i64, ptr %l10, !tbaa !24
  %t148 = add i64 %t146, 1
  store i64 %t148, ptr %l10, !tbaa !24
  br label %bb15
bb39:
  %t150 = load i1, ptr %l5, !tbaa !21
  call void @__olang_scope_close(ptr %s0)
  store i1 %t150, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estorOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
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
  %l9 = alloca i32
  %l10 = alloca { i64, [2 x i64] }
  %l11 = alloca ptr
  %l12 = alloca i1
  %l21 = alloca { i64, [2 x i64] }
  %l22 = alloca ptr
  %l23 = alloca i1
  %l27 = alloca ptr
  %l28 = alloca i1
  %l37 = alloca %"compiler/scope:Val"
  %l39 = alloca ptr
  %l40 = alloca i1
  %l47 = alloca { i64, [2 x i64] }
  %l48 = alloca ptr
  %l49 = alloca i1
  %l56 = alloca i32
  %l61 = alloca i32
  %l64 = alloca i1
  %l69 = alloca i32
  %l74 = alloca { i64, [2 x i64] }
  %l78 = alloca { i64, [2 x i64] }
  %l79 = alloca ptr
  %l80 = alloca i1
  %l88 = alloca { i64, [2 x i64] }
  %l89 = alloca ptr
  %l90 = alloca i1
  %l100 = alloca { i64, [2 x i64] }
  %l104 = alloca { i64, [2 x i64] }
  %l106 = alloca i1
  %l107 = alloca { i64, [2 x i64] }
  %l110 = alloca { i64, [2 x i64] }
  %l111 = alloca ptr
  %l112 = alloca i1
  %l117 = alloca i64
  %l119 = alloca ptr
  %l121 = alloca ptr
  %l124 = alloca i64
  %l126 = alloca ptr
  %l127 = alloca { i64, [2 x i64] }
  %rv = alloca { i64, [2 x i64] }
  %t35 = alloca { i64, [2 x i64] }, align 8
  %t57 = alloca { i64, [2 x i64] }, align 8
  %t263 = alloca { i64, [2 x i64] }, align 8
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l12, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l12, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/scope:Scoper", ptr %t16, i32 0, i32 35
  %t19 = load i32, ptr %l2, !tbaa !23
  %t21 = sext i32 %t19 to i64
  %t24 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t18, i64 %t21)
  store { i64, [2 x i64] } %t24, ptr %l21
  br label %bb6
bb6:
  %t25 = load { i64, [2 x i64] }, ptr %l21
  store { i64, [2 x i64] } %t25, ptr %rv
  br label %ret
bb7:
  %t26 = load ptr, ptr %l1, !tbaa !29
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
  br label %bb12
bb11:
  br label %bb13
bb12:
  store { i64, [2 x i64] } zeroinitializer, ptr %t35
  %t36 = getelementptr { i64, [2 x i64] }, ptr %t35, i32 0, i32 0
  store i64 3, ptr %t36
  %t37 = load { i64, [2 x i64] }, ptr %t35
  store { i64, [2 x i64] } %t37, ptr %rv
  br label %ret
bb13:
  %t39 = load ptr, ptr %l1, !tbaa !29
  store ptr %t39, ptr %l27, !tbaa !29
  store i1 false, ptr %l28, !tbaa !21
  %t40 = load ptr, ptr %l27, !tbaa !29
  %t41 = icmp ne ptr %t40, null
  br i1 %t41, label %bb14, label %bb15
bb14:
  %t43 = load ptr, ptr %l27, !tbaa !29
  %t44 = load i64, ptr %t43, !range !{i64 0, i64 8}
  %t46 = icmp eq i64 %t44, 2
  store i1 %t46, ptr %l28, !tbaa !21
  br label %bb15
bb15:
  %t47 = load i1, ptr %l28, !tbaa !21
  br i1 %t47, label %bb16, label %bb17
bb16:
  %t48 = load ptr, ptr %l1, !tbaa !29
  %t50 = getelementptr { i64, [4 x i64] }, ptr %t48, i32 0, i32 1
  %t51 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t50, i32 0, i32 2
  %t52 = load ptr, ptr %t51
  store ptr %t52, ptr %l3, !tbaa !29
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load ptr, ptr %l3, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t57
  %t58 = getelementptr { i64, [2 x i64] }, ptr %t57, i32 0, i32 0
  store i64 0, ptr %t58
  %t59 = load { i64, [2 x i64] }, ptr %t57
  %t63 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t54, ptr %t55, { i64, [2 x i64] } %t59)
  store %"compiler/scope:Val" %t63, ptr %l37
  br label %bb19
bb19:
  %t64 = getelementptr %"compiler/scope:Val", ptr %l37, i32 0, i32 1
  %t65 = load { i64, [2 x i64] }, ptr %t64
  store { i64, [2 x i64] } %t65, ptr %rv
  br label %ret
bb20:
  %t67 = load ptr, ptr %l1, !tbaa !29
  store ptr %t67, ptr %l39, !tbaa !29
  store i1 false, ptr %l40, !tbaa !21
  %t68 = load ptr, ptr %l39, !tbaa !29
  %t69 = icmp ne ptr %t68, null
  br i1 %t69, label %bb21, label %bb22
bb21:
  %t71 = load ptr, ptr %l39, !tbaa !29
  %t72 = load i64, ptr %t71, !range !{i64 0, i64 8}
  %t74 = icmp eq i64 %t72, 3
  store i1 %t74, ptr %l40, !tbaa !21
  br label %bb22
bb22:
  %t75 = load i1, ptr %l40, !tbaa !21
  br i1 %t75, label %bb23, label %bb24
bb23:
  %t76 = load ptr, ptr %l1, !tbaa !29
  %t78 = getelementptr { i64, [4 x i64] }, ptr %t76, i32 0, i32 1
  %t79 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t78, i32 0, i32 2
  %t80 = load ptr, ptr %t79
  store ptr %t80, ptr %l4, !tbaa !29
  br label %bb25
bb24:
  br label %bb27
bb25:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t83 = load ptr, ptr %l4, !tbaa !29
  %t86 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estorOf(ptr %v0, ptr %v1, ptr %t82, ptr %t83)
  store { i64, [2 x i64] } %t86, ptr %l47
  br label %bb26
bb26:
  %t87 = load { i64, [2 x i64] }, ptr %l47
  store { i64, [2 x i64] } %t87, ptr %rv
  br label %ret
bb27:
  %t88 = load ptr, ptr %l1, !tbaa !29
  store ptr %t88, ptr %l48, !tbaa !29
  store i1 false, ptr %l49, !tbaa !21
  %t89 = load ptr, ptr %l48, !tbaa !29
  %t90 = icmp ne ptr %t89, null
  br i1 %t90, label %bb28, label %bb29
bb28:
  %t92 = load ptr, ptr %l48, !tbaa !29
  %t93 = load i64, ptr %t92, !range !{i64 0, i64 8}
  %t95 = icmp eq i64 %t93, 4
  store i1 %t95, ptr %l49, !tbaa !21
  br label %bb29
bb29:
  %t96 = load i1, ptr %l49, !tbaa !21
  br i1 %t96, label %bb30, label %bb31
bb30:
  %t97 = load ptr, ptr %l1, !tbaa !29
  %t99 = getelementptr { i64, [4 x i64] }, ptr %t97, i32 0, i32 1
  %t100 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t99, i32 0, i32 2
  %t101 = load ptr, ptr %t100
  store ptr %t101, ptr %l5, !tbaa !29
  br label %bb32
bb31:
  br label %bb44
bb32:
  %t103 = load ptr, ptr %l5, !tbaa !29
  %t105 = getelementptr %"compiler/typed:Elem", ptr %t103, i32 0, i32 0
  %t106 = load ptr, ptr %t105, !tbaa !29
  %t108 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t106)
  store i32 %t108, ptr %l56
  br label %bb33
bb33:
  %t109 = load i32, ptr %l56, !tbaa !23
  store i32 %t109, ptr %l6, !tbaa !23
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/scope:Scoper", ptr %t110, i32 0, i32 0
  %t113 = load ptr, ptr %t112, !tbaa !29
  %t115 = getelementptr %"compiler/generic:Program", ptr %t113, i32 0, i32 2
  %t116 = load i32, ptr %l6, !tbaa !23
  %t119 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t115, i32 %t116)
  store i32 %t119, ptr %l61
  br label %bb34
bb34:
  %t120 = load i32, ptr %l61, !range !{i32 0, i32 33}
  %t122 = trunc i64 19 to i32
  %t123 = icmp eq i32 %t120, %t122
  br i1 %t123, label %bb35, label %bb36
bb35:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = getelementptr %"compiler/scope:Scoper", ptr %t125, i32 0, i32 0
  %t128 = load ptr, ptr %t127, !tbaa !29
  %t130 = getelementptr %"compiler/generic:Program", ptr %t128, i32 0, i32 2
  %t131 = load i32, ptr %l6, !tbaa !23
  %t134 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t130, i32 %t131)
  store i32 %t134, ptr %l69
  br label %bb37
bb36:
  store i1 false, ptr %l64, !tbaa !21
  br label %bb38
bb37:
  %t135 = load i32, ptr %l69, !tbaa !23
  %t136 = icmp eq i32 %t135, 0
  store i1 %t136, ptr %l64, !tbaa !21
  br label %bb38
bb38:
  %t138 = load i1, ptr %l64, !tbaa !21
  br i1 %t138, label %bb39, label %bb40
bb39:
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t140 = load ptr, ptr %l5, !tbaa !29
  %t142 = getelementptr %"compiler/typed:Elem", ptr %t140, i32 0, i32 0
  %t143 = load ptr, ptr %t142, !tbaa !29
  %t146 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartsTerm(ptr %v0, ptr %v1, ptr %t139, ptr %t143)
  store { i64, [2 x i64] } %t146, ptr %l74
  br label %bb41
bb40:
  br label %bb42
bb41:
  %t147 = load { i64, [2 x i64] }, ptr %l74
  store { i64, [2 x i64] } %t147, ptr %rv
  br label %ret
bb42:
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t149 = load ptr, ptr %l5, !tbaa !29
  %t151 = getelementptr %"compiler/typed:Elem", ptr %t149, i32 0, i32 0
  %t152 = load ptr, ptr %t151, !tbaa !29
  %t155 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estorOf(ptr %v0, ptr %v1, ptr %t148, ptr %t152)
  store { i64, [2 x i64] } %t155, ptr %l78
  br label %bb43
bb43:
  %t156 = load { i64, [2 x i64] }, ptr %l78
  store { i64, [2 x i64] } %t156, ptr %rv
  br label %ret
bb44:
  %t157 = load ptr, ptr %l1, !tbaa !29
  store ptr %t157, ptr %l79, !tbaa !29
  store i1 false, ptr %l80, !tbaa !21
  %t158 = load ptr, ptr %l79, !tbaa !29
  %t159 = icmp ne ptr %t158, null
  br i1 %t159, label %bb45, label %bb46
bb45:
  %t161 = load ptr, ptr %l79, !tbaa !29
  %t162 = load i64, ptr %t161, !range !{i64 0, i64 8}
  %t164 = icmp eq i64 %t162, 5
  store i1 %t164, ptr %l80, !tbaa !21
  br label %bb46
bb46:
  %t165 = load i1, ptr %l80, !tbaa !21
  br i1 %t165, label %bb47, label %bb48
bb47:
  %t166 = load ptr, ptr %l1, !tbaa !29
  %t168 = getelementptr { i64, [4 x i64] }, ptr %t166, i32 0, i32 1
  %t169 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t168, i32 0, i32 2
  %t170 = load ptr, ptr %t169
  store ptr %t170, ptr %l7, !tbaa !29
  br label %bb49
bb48:
  br label %bb51
bb49:
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t173 = load ptr, ptr %l7, !tbaa !29
  %t175 = getelementptr %"compiler/typed:Payload", ptr %t173, i32 0, i32 0
  %t176 = load ptr, ptr %t175, !tbaa !29
  %t179 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estorOf(ptr %v0, ptr %v1, ptr %t172, ptr %t176)
  store { i64, [2 x i64] } %t179, ptr %l88
  br label %bb50
bb50:
  %t180 = load { i64, [2 x i64] }, ptr %l88
  store { i64, [2 x i64] } %t180, ptr %rv
  br label %ret
bb51:
  %t181 = load ptr, ptr %l1, !tbaa !29
  store ptr %t181, ptr %l89, !tbaa !29
  store i1 false, ptr %l90, !tbaa !21
  %t182 = load ptr, ptr %l89, !tbaa !29
  %t183 = icmp ne ptr %t182, null
  br i1 %t183, label %bb52, label %bb53
bb52:
  %t185 = load ptr, ptr %l89, !tbaa !29
  %t186 = load i64, ptr %t185, !range !{i64 0, i64 8}
  %t188 = icmp eq i64 %t186, 6
  store i1 %t188, ptr %l90, !tbaa !21
  br label %bb53
bb53:
  %t189 = load i1, ptr %l90, !tbaa !21
  br i1 %t189, label %bb54, label %bb55
bb54:
  %t190 = load ptr, ptr %l1, !tbaa !29
  %t192 = getelementptr { i64, [4 x i64] }, ptr %t190, i32 0, i32 1
  %t193 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t192, i32 0, i32 2
  %t194 = load ptr, ptr %t193
  store ptr %t194, ptr %l8, !tbaa !29
  %t196 = load ptr, ptr %l1, !tbaa !29
  %t198 = getelementptr { i64, [4 x i64] }, ptr %t196, i32 0, i32 1
  %t199 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t198, i32 0, i32 3
  %t200 = load i32, ptr %t199
  store i32 %t200, ptr %l9, !tbaa !23
  br label %bb56
bb55:
  br label %bb64
bb56:
  %t202 = load ptr, ptr %l0, !tbaa !29
  %t203 = load ptr, ptr %l8, !tbaa !29
  %t204 = load i32, ptr %l9, !tbaa !23
  %t208 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etempTerm(ptr %v0, ptr %v1, ptr %t202, ptr %t203, i32 %t204)
  store { i64, [2 x i64] } %t208, ptr %l100
  br label %bb57
bb57:
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t210 = load i32, ptr %l9, !tbaa !23
  %t212 = sext i32 %t210 to i64
  %t215 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esiteLift(ptr %v0, ptr %t209, i64 %t212)
  store { i64, [2 x i64] } %t215, ptr %l104
  br label %bb58
bb58:
  %t216 = load { i64, [2 x i64] }, ptr %l104
  store { i64, [2 x i64] } %t216, ptr %l10
  %t217 = load { i64, [2 x i64] }, ptr %l10
  %t219 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t217)
  store i1 %t219, ptr %l106
  br label %bb59
bb59:
  %t220 = load i1, ptr %l106, !tbaa !21
  br i1 %t220, label %bb60, label %bb61
bb60:
  %t221 = load { i64, [2 x i64] }, ptr %l10
  store { i64, [2 x i64] } %t221, ptr %l107
  br label %bb63
bb61:
  %t223 = load ptr, ptr %l0, !tbaa !29
  %t225 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eframeHere(ptr %v0, ptr %t223)
  store { i64, [2 x i64] } %t225, ptr %l110
  br label %bb62
bb62:
  %t226 = load { i64, [2 x i64] }, ptr %l110
  store { i64, [2 x i64] } %t226, ptr %l107
  br label %bb63
bb63:
  %t227 = load { i64, [2 x i64] }, ptr %l107
  store { i64, [2 x i64] } %t227, ptr %rv
  br label %ret
bb64:
  %t228 = load ptr, ptr %l1, !tbaa !29
  store ptr %t228, ptr %l111, !tbaa !29
  store i1 false, ptr %l112, !tbaa !21
  %t229 = load ptr, ptr %l111, !tbaa !29
  %t230 = icmp ne ptr %t229, null
  br i1 %t230, label %bb65, label %bb66
bb65:
  %t232 = load ptr, ptr %l111, !tbaa !29
  %t233 = load i64, ptr %t232, !range !{i64 0, i64 8}
  %t235 = icmp eq i64 %t233, 7
  store i1 %t235, ptr %l112, !tbaa !21
  br label %bb66
bb66:
  %t236 = load i1, ptr %l112, !tbaa !21
  br i1 %t236, label %bb67, label %bb68
bb67:
  br label %bb69
bb68:
  br label %bb77
bb69:
  %t237 = load ptr, ptr %l0, !tbaa !29
  %t239 = getelementptr %"compiler/scope:Scoper", ptr %t237, i32 0, i32 60
  %t241 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eLen__H22c160154c8542d83ffe3c77c98973d0(ptr %v0, ptr %t239)
  store i64 %t241, ptr %l117
  br label %bb70
bb70:
  %t242 = load i64, ptr %l117, !tbaa !24
  %t243 = icmp sge i64 %t242, 2
  br i1 %t243, label %bb71, label %bb72
bb71:
  %t245 = load ptr, ptr %l0, !tbaa !29
  store ptr %t245, ptr %l119, !tbaa !29
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t248 = getelementptr %"compiler/scope:Scoper", ptr %t246, i32 0, i32 60
  store ptr %t248, ptr %l121, !tbaa !29
  %t249 = load ptr, ptr %l0, !tbaa !29
  %t251 = getelementptr %"compiler/scope:Scoper", ptr %t249, i32 0, i32 60
  %t253 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eLen__H22c160154c8542d83ffe3c77c98973d0(ptr %v0, ptr %t251)
  store i64 %t253, ptr %l124
  br label %bb73
bb72:
  br label %bb76
bb73:
  %t254 = load i64, ptr %l124, !tbaa !24
  %t255 = sub i64 %t254, 2
  %t256 = load ptr, ptr %l121, !tbaa !29
  %t258 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eAt_3ccompiler_2ftyped_3aLvalue_26_3e(ptr %v0, ptr %v0, ptr %t256, i64 %t255)
  store ptr %t258, ptr %l126
  br label %bb74
bb74:
  %t259 = load ptr, ptr %l119, !tbaa !29
  %t260 = load ptr, ptr %l126, !tbaa !29
  %t261 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estorOf(ptr %v0, ptr %v0, ptr %t259, ptr %t260)
  store { i64, [2 x i64] } %t261, ptr %l127
  br label %bb75
bb75:
  %t262 = load { i64, [2 x i64] }, ptr %l127
  store { i64, [2 x i64] } %t262, ptr %rv
  br label %ret
bb76:
  store { i64, [2 x i64] } zeroinitializer, ptr %t263
  %t264 = getelementptr { i64, [2 x i64] }, ptr %t263, i32 0, i32 0
  store i64 6, ptr %t264
  %t265 = load { i64, [2 x i64] }, ptr %t263
  store { i64, [2 x i64] } %t265, ptr %rv
  br label %ret
bb77:
  call void @__olang_check_failed(ptr @olang_loc_8bfac37a1f29704b_1a5bb9d5b57da78f)
  unreachable
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estoreOne(ptr %v0, ptr %a0, i64 %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l5 = alloca i1
  %l6 = alloca i64
  %l9 = alloca i64
  %l11 = alloca i1
  %l14 = alloca i1
  %l15 = alloca i1
  %l16 = alloca ptr
  %l25 = alloca %"compiler/typed:Local"
  %l27 = alloca i1
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
  %t5 = load i64, ptr %l1, !tbaa !24
  store i64 %t5, ptr %l6, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/scope:Scoper", ptr %t6, i32 0, i32 107
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l9
  br label %bb3
bb2:
  store i1 false, ptr %l5, !tbaa !21
  br label %bb4
bb3:
  %t11 = load i64, ptr %l6, !tbaa !24
  %t12 = load i64, ptr %l9, !tbaa !24
  %t13 = icmp slt i64 %t11, %t12
  store i1 %t13, ptr %l5, !tbaa !21
  br label %bb4
bb4:
  %t15 = load i1, ptr %l5, !tbaa !21
  br i1 %t15, label %bb5, label %bb6
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load i64, ptr %l1, !tbaa !24
  %t20 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eregionKind(ptr %v0, ptr %t16, i64 %t17)
  store i1 %t20, ptr %l14
  br label %bb7
bb6:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb8
bb7:
  %t21 = load i1, ptr %l14, !tbaa !21
  store i1 %t21, ptr %l11, !tbaa !21
  br label %bb8
bb8:
  %t22 = load i1, ptr %l11, !tbaa !21
  br i1 %t22, label %bb9, label %bb10
bb9:
  %t23 = load ptr, ptr %l0, !tbaa !29
  store ptr %t23, ptr %l16, !tbaa !29
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/scope:Scoper", ptr %t24, i32 0, i32 26
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t29 = icmp eq ptr %t27, null
  br i1 %t29, label %bb11, label %bb12
bb10:
  store i1 false, ptr %l15, !tbaa !21
  br label %bb16
bb11:
  call void @__olang_check_failed(ptr @olang_loc_f9acba08895e11a8_8a6deabb7adf677c)
  unreachable
bb12:
  br label %bb13
bb13:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/scope:Scoper", ptr %t31, i32 0, i32 26
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t37 = getelementptr %"compiler/typed:Body", ptr %t34, i32 0, i32 7
  %t38 = load i64, ptr %l1, !tbaa !24
  %t41 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t37, i64 %t38)
  store %"compiler/typed:Local" %t41, ptr %l25
  br label %bb14
bb14:
  %t42 = getelementptr %"compiler/typed:Local", ptr %l25, i32 0, i32 2
  %t43 = load i32, ptr %t42, !tbaa !23
  %t44 = load ptr, ptr %l16, !tbaa !29
  %t46 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t44, i32 %t43)
  store i1 %t46, ptr %l27
  br label %bb15
bb15:
  %t47 = load i1, ptr %l27, !tbaa !21
  store i1 %t47, ptr %l15, !tbaa !21
  br label %bb16
bb16:
  %t48 = load i1, ptr %l15, !tbaa !21
  br i1 %t48, label %bb17, label %bb18
bb17:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/scope:Scoper", ptr %t49, i32 0, i32 107
  %t52 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t51, i64 %t52, i1 true)
  br label %bb19
bb18:
  br label %bb25
bb19:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/scope:Scoper", ptr %t55, i32 0, i32 108
  %t58 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t57, i64 %t58, i1 true)
  br label %bb20
bb20:
  br i1 %a2, label %bb21, label %bb22
bb21:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/scope:Scoper", ptr %t63, i32 0, i32 109
  %t66 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t65, i64 %t66, i1 true)
  br label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb24
bb24:
  br label %bb25
bb25:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etakeable(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca ptr
  %l13 = alloca ptr
  %l15 = alloca i64
  %l19 = alloca i64
  %l22 = alloca i64
  %l40 = alloca ptr
  %l42 = alloca i64
  %l46 = alloca ptr
  %l49 = alloca i1
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 249
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cmut_20comp_Hcb6fae2338a785d6927a8587899f4e85(ptr %v0, ptr %v1, ptr %t3, i64 %a1)
  store ptr %t7, ptr %l13
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l13, !tbaa !29
  store ptr %t8, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  %t9 = load ptr, ptr %l2, !tbaa !29
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3acompRun_26_3e_H0296d27dcb58febef67dd9f1f1b292fb(ptr %v1, ptr %t9)
  store i64 %t11, ptr %l15
  br label %bb2
bb2:
  %t12 = load i64, ptr %l15, !tbaa !24
  store i64 %t12, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t13 = load i64, ptr %l4, !tbaa !24
  %t14 = load i64, ptr %l3, !tbaa !24
  %t17 = icmp sgt i64 %t13, %t14
  br i1 %t17, label %bb3, label %bb4
bb3:
  %t19 = load i64, ptr %l5, !tbaa !24
  %t21 = icmp sgt i64 %t19, 0
  br i1 %t21, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb8
bb5:
  %t23 = load i64, ptr %l4, !tbaa !24
  %t24 = load i64, ptr %l3, !tbaa !24
  %t27 = sub i64 %t23, %t24
  %t28 = load i64, ptr %l5, !tbaa !24
  %t31 = add i64 %t27, %t28
  %t33 = sub i64 %t31, 1
  %t34 = load i64, ptr %l5, !tbaa !24
  %t37 = sdiv i64 %t33, %t34
  store i64 %t37, ptr %l22, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb7
bb7:
  %t39 = load i64, ptr %l22, !tbaa !24
  store i64 %t39, ptr %l19, !tbaa !24
  br label %bb8
bb8:
  %t40 = load i64, ptr %l19, !tbaa !24
  store i64 %t40, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb9
bb9:
  %t41 = load i64, ptr %l7, !tbaa !24
  %t42 = load i64, ptr %l6, !tbaa !24
  %t45 = icmp slt i64 %t41, %t42
  %t47 = xor i1 %t45, true
  br i1 %t47, label %bb10, label %bb11
bb10:
  br label %bb20
bb11:
  br label %bb12
bb12:
  %t49 = load i64, ptr %l3, !tbaa !24
  %t50 = load i64, ptr %l7, !tbaa !24
  %t51 = load i64, ptr %l5, !tbaa !24
  %t54 = mul i64 %t50, %t51
  %t57 = add i64 %t49, %t54
  store i64 %t57, ptr %l8, !tbaa !24
  %t59 = load ptr, ptr %l2, !tbaa !29
  store ptr %t59, ptr %l40, !tbaa !29
  %t60 = load ptr, ptr %l2, !tbaa !29
  %t62 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3acompRun_26_3e_H0296d27dcb58febef67dd9f1f1b292fb(ptr %v1, ptr %t60)
  store i64 %t62, ptr %l42
  br label %bb13
bb13:
  %t63 = load i64, ptr %l42, !tbaa !24
  %t64 = sub i64 %t63, 1
  %t65 = load i64, ptr %l8, !tbaa !24
  %t68 = sub i64 %t64, %t65
  %t69 = load ptr, ptr %l40, !tbaa !29
  %t71 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3acompRun_26_3e_H665b0c71977ef42adbc51fe96e6e85ee(ptr %v1, ptr %v1, ptr %t69, i64 %t68)
  store ptr %t71, ptr %l46
  br label %bb14
bb14:
  %t72 = load ptr, ptr %l46, !tbaa !29
  store ptr %t72, ptr %l9, !tbaa !29
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load ptr, ptr %l9, !tbaa !29
  %t77 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2easItWas(ptr %v0, ptr %v1, ptr %t73, ptr %t74)
  store i1 %t77, ptr %l49
  br label %bb15
bb15:
  %t78 = load i1, ptr %l49, !tbaa !21
  br i1 %t78, label %bb16, label %bb17
bb16:
  %t79 = load ptr, ptr %l9, !tbaa !29
  store ptr %t79, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t82 = load i64, ptr %l7, !tbaa !24
  %t84 = add i64 %t82, 1
  store i64 %t84, ptr %l7, !tbaa !24
  br label %bb9
bb20:
  store ptr null, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etypeBeyond(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca { i64, ptr }
  %l18 = alloca i32
  %l23 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l25 = alloca i64
  %l27 = alloca i64
  %l32 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l36 = alloca i1
  %l41 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l46 = alloca i64
  %l47 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
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
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eboundEdges(ptr %v0, ptr %s0, ptr %t1, i32 %t2)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l10
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %l3
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/scope:Scoper", ptr %t7, i32 0, i32 0
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  %t13 = load i32, ptr %l1, !tbaa !23
  %t16 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamesOf(ptr %v0, ptr %s0, ptr %t12, i32 %t13)
  store { i64, ptr } %t16, ptr %l15
  br label %bb2
bb2:
  %t17 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t17, 0
  %t20 = icmp sgt i64 %t18, 0
  br i1 %t20, label %bb3, label %bb4
bb3:
  %t22 = load i32, ptr %l1, !tbaa !23
  store i32 %t22, ptr %l18, !tbaa !23
  br label %bb5
bb4:
  %t24 = load i32, ptr %l2, !tbaa !23
  store i32 %t24, ptr %l18, !tbaa !23
  br label %bb5
bb5:
  %t26 = load i32, ptr %l18, !tbaa !23
  store i32 %t26, ptr %l4, !tbaa !23
  store %olang.scope zeroinitializer, ptr %s1
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load i32, ptr %l1, !tbaa !23
  %t31 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eboundEdges(ptr %v0, ptr %s1, ptr %t27, i32 %t28)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t31, ptr %l23
  br label %bb6
bb6:
  %t32 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l23
  %t33 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t32, ptr %t33
  store ptr %t33, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb7
bb7:
  %t35 = load i64, ptr %l6, !tbaa !24
  store i64 %t35, ptr %l25, !tbaa !24
  %t36 = load ptr, ptr %l5, !tbaa !29
  %t38 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_Hda4ef06466535e66801340e999dad217(ptr %s1, ptr %t36)
  store i64 %t38, ptr %l27
  br label %bb8
bb8:
  %t39 = load i64, ptr %l25, !tbaa !24
  %t40 = load i64, ptr %l27, !tbaa !24
  %t41 = icmp slt i64 %t39, %t40
  %t43 = xor i1 %t41, true
  br i1 %t43, label %bb9, label %bb10
bb9:
  br label %bb19
bb10:
  br label %bb11
bb11:
  %t45 = load ptr, ptr %l5, !tbaa !29
  %t46 = load i64, ptr %l6, !tbaa !24
  %t49 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_H87a29777ccf22aa2985fa9d3c61f9cd3(ptr %s1, ptr %t45, i64 %t46)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t49, ptr %l32
  br label %bb12
bb12:
  %t50 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l32
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t50, ptr %l7
  %t51 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l7, i32 0, i32 0
  %t52 = load i64, ptr %t51, !tbaa !24
  %t53 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l7, i32 0, i32 1
  %t54 = load i64, ptr %t53, !tbaa !24
  %t58 = call i1 @compiler_2fscope_2ereaches(ptr %s0, ptr %l3, i64 %t52, i64 %t54)
  store i1 %t58, ptr %l36
  br label %bb13
bb13:
  %t59 = load i1, ptr %l36, !tbaa !21
  br i1 %t59, label %bb14, label %bb15
bb14:
  br label %bb18
bb15:
  br label %bb16
bb16:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load i32, ptr %l4, !tbaa !23
  %t62 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l7, i32 0, i32 0
  %t63 = load i64, ptr %t62, !tbaa !24
  %t64 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l7, i32 0, i32 1
  %t65 = load i64, ptr %t64, !tbaa !24
  %t70 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eedgeWord(ptr %v0, ptr %v1, ptr %t60, i32 %t61, i64 %t63, i64 %t65)
  store { i64, ptr } %t70, ptr %l41
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t71 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t71, ptr %rv
  br label %ret
bb18:
  %t72 = load i64, ptr %l6, !tbaa !24
  %t74 = add i64 %t72, 1
  store i64 %t74, ptr %l6, !tbaa !24
  br label %bb7
bb19:
  call void @__olang_scope_close(ptr %s1)
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d15, i32 0, i32 1) }, ptr %l44, !tbaa !27
  %t76 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t76, ptr %l45, !tbaa !27
  %t77 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t78 = extractvalue { i64, ptr } %t77, 0
  store i64 %t78, ptr %l46, !tbaa !24
  %t79 = load i64, ptr %l46, !tbaa !24
  %t80 = mul i64 %t79, 1
  %t81 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t80)
  %t82 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t83 = insertvalue { i64, ptr } %t82, ptr %t81, 1
  store { i64, ptr } %t83, ptr %l47, !tbaa !27
  %t84 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !27
  %t86 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t87 = load ptr, ptr %t86, !tbaa !27
  %t88 = load i64, ptr %l46, !tbaa !24
  %t89 = mul i64 %t88, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t85, ptr %t87, i64 %t89, i1 false)
  %t90 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t90, ptr %l45, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t91 = load { i64, ptr }, ptr %l45, !tbaa !27
  store { i64, ptr } %t91, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunderOf(ptr %v0, ptr %a0, %"compiler/scope:verAtom" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/scope:verAtom"
  %l2 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i32
  %l16 = alloca ptr
  %l20 = alloca %"compiler/scope:verAtom"
  %l21 = alloca { i64, [2 x i64] }
  %l33 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca { i64, [2 x i64] }
  %t21 = alloca { i64, [2 x i64] }, align 8
  %t84 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/scope:verAtom" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 186
  %t4 = load %"compiler/scope:verAtom", ptr %l1
  %t7 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fscope_3averAtom_2c_20I64_3e_H7feb99756ef3806dc9fbf0cf3216792e(ptr %v0, ptr %t3, %"compiler/scope:verAtom" %t4)
  %t8 = extractvalue { i32, i64 } %t7, 1
  %t9 = extractvalue { i32, i64 } %t7, 0
  store i32 %t9, ptr %l10
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store i64 %t8, ptr %l9
  br label %bb1
bb1:
  %t12 = load i64, ptr %l9, !tbaa !24
  store i64 %t12, ptr %l5, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i64 0, ptr %l5, !tbaa !24
  br label %bb4
bb4:
  %t13 = load i64, ptr %l5, !tbaa !24
  store i64 %t13, ptr %l2, !tbaa !24
  %t14 = load i64, ptr %l2, !tbaa !24
  %t16 = icmp slt i64 %t14, 0
  br i1 %t16, label %bb5, label %bb6
bb5:
  %t18 = load i64, ptr %l2, !tbaa !24
  %t19 = getelementptr %"compiler/scope:verAtom", ptr %l1, i32 0, i32 2
  %t20 = load i64, ptr %t19, !tbaa !24
  store { i64, [2 x i64] } zeroinitializer, ptr %t21
  %t22 = getelementptr { i64, [2 x i64] }, ptr %t21, i32 0, i32 0
  store i64 4, ptr %t22
  %t24 = insertvalue { i64, i64 } undef, i64 %t18, 0
  %t26 = insertvalue { i64, i64 } %t24, i64 %t20, 1
  %t27 = getelementptr { i64, [2 x i64] }, ptr %t21, i32 0, i32 1
  store { i64, i64 } %t26, ptr %t27
  %t28 = load { i64, [2 x i64] }, ptr %t21
  call void @__olang_scope_close(ptr %s0)
  store { i64, [2 x i64] } %t28, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t30 = load ptr, ptr %l0, !tbaa !29
  store ptr %t30, ptr %l16, !tbaa !29
  %t31 = getelementptr %"compiler/scope:verAtom", ptr %l1, i32 0, i32 3
  %t32 = load i64, ptr %t31, !tbaa !24
  %t33 = getelementptr %"compiler/scope:verAtom", ptr %l1, i32 0, i32 4
  %t34 = load i64, ptr %t33, !tbaa !24
  %t35 = getelementptr %"compiler/scope:verAtom", ptr %l1, i32 0, i32 5
  %t36 = load i64, ptr %t35, !tbaa !24
  %t40 = call %"compiler/scope:verAtom" @compiler_2fscope_3averAtom_2ector(ptr %s0, i64 %t32, i64 %t34, i64 %t36, i64 0, i64 0, i64 0, i1 false, i64 -1)
  store %"compiler/scope:verAtom" %t40, ptr %l20
  br label %bb8
bb8:
  %t41 = load ptr, ptr %l16, !tbaa !29
  %t42 = load %"compiler/scope:verAtom", ptr %l20
  %t43 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eatomTerm(ptr %v0, ptr %t41, %"compiler/scope:verAtom" %t42)
  store { i64, [2 x i64] } %t43, ptr %l21
  br label %bb9
bb9:
  %t44 = load { i64, [2 x i64] }, ptr %l21
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/scope:Scoper", ptr %t45, i32 0, i32 110
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ePush_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t47, { i64, [2 x i64] } %t44)
  br label %bb10
bb10:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/scope:Scoper", ptr %t51, i32 0, i32 111
  %t54 = getelementptr %"compiler/scope:verAtom", ptr %l1, i32 0, i32 6
  %t55 = load i1, ptr %t54, !tbaa !21
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t53, i1 %t55)
  br label %bb11
bb11:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/scope:Scoper", ptr %t58, i32 0, i32 112
  %t61 = getelementptr %"compiler/scope:verAtom", ptr %l1, i32 0, i32 7
  %t62 = load i64, ptr %t61, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t60, i64 %t62)
  br label %bb12
bb12:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/scope:Scoper", ptr %t65, i32 0, i32 110
  %t69 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eLen_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t67)
  store i64 %t69, ptr %l33
  br label %bb13
bb13:
  %t70 = load i64, ptr %l33, !tbaa !24
  %t71 = sub i64 0, %t70
  store i64 %t71, ptr %l4, !tbaa !24
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/scope:Scoper", ptr %t73, i32 0, i32 186
  %t76 = load %"compiler/scope:verAtom", ptr %l1
  %t77 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fscope_3averAtom_2c_20I64_3e_Hb2687b8a10fef42af6310eb22cb740bf(ptr %v0, ptr %t75, %"compiler/scope:verAtom" %t76, i64 %t77)
  br label %bb14
bb14:
  %t81 = load i64, ptr %l4, !tbaa !24
  %t82 = getelementptr %"compiler/scope:verAtom", ptr %l1, i32 0, i32 2
  %t83 = load i64, ptr %t82, !tbaa !24
  store { i64, [2 x i64] } zeroinitializer, ptr %t84
  %t85 = getelementptr { i64, [2 x i64] }, ptr %t84, i32 0, i32 0
  store i64 4, ptr %t85
  %t87 = insertvalue { i64, i64 } undef, i64 %t81, 0
  %t89 = insertvalue { i64, i64 } %t87, i64 %t83, 1
  %t90 = getelementptr { i64, [2 x i64] }, ptr %t84, i32 0, i32 1
  store { i64, i64 } %t89, ptr %t90
  %t91 = load { i64, [2 x i64] }, ptr %t84
  call void @__olang_scope_close(ptr %s0)
  store { i64, [2 x i64] } %t91, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2everEntry(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l18 = alloca i64
  %l22 = alloca i64
  %l25 = alloca i64
  %l46 = alloca %"compiler/source:Span"
  %l49 = alloca ptr
  %l50 = alloca i64
  %l52 = alloca ptr
  %l56 = alloca i64
  %l57 = alloca { i64, [2 x i64] }
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
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/scope:Scoper", ptr %t8, i32 0, i32 159
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t13 = icmp eq ptr %t11, null
  br i1 %t13, label %bb4, label %bb5
bb4:
  call void @__olang_check_failed(ptr @olang_loc_99724d3349260954_a26c7c5961f375c0)
  unreachable
bb5:
  br label %bb6
bb6:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/scope:Scoper", ptr %t15, i32 0, i32 159
  %t18 = load ptr, ptr %t17, !tbaa !29
  store ptr %t18, ptr %l1, !tbaa !29
  store i64 0, ptr %l2, !tbaa !24
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t22 = getelementptr %"compiler/typed:Versions", ptr %t20, i32 0, i32 3
  %t24 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t22)
  store i64 %t24, ptr %l18
  br label %bb7
bb7:
  %t25 = load i64, ptr %l18, !tbaa !24
  store i64 %t25, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t26 = load i64, ptr %l3, !tbaa !24
  %t27 = load i64, ptr %l2, !tbaa !24
  %t30 = icmp sgt i64 %t26, %t27
  br i1 %t30, label %bb8, label %bb9
bb8:
  %t32 = load i64, ptr %l4, !tbaa !24
  %t34 = icmp sgt i64 %t32, 0
  br i1 %t34, label %bb10, label %bb11
bb9:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb13
bb10:
  %t36 = load i64, ptr %l3, !tbaa !24
  %t37 = load i64, ptr %l2, !tbaa !24
  %t40 = sub i64 %t36, %t37
  %t41 = load i64, ptr %l4, !tbaa !24
  %t44 = add i64 %t40, %t41
  %t46 = sub i64 %t44, 1
  %t47 = load i64, ptr %l4, !tbaa !24
  %t50 = sdiv i64 %t46, %t47
  store i64 %t50, ptr %l25, !tbaa !24
  br label %bb12
bb11:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb12
bb12:
  %t52 = load i64, ptr %l25, !tbaa !24
  store i64 %t52, ptr %l22, !tbaa !24
  br label %bb13
bb13:
  %t53 = load i64, ptr %l22, !tbaa !24
  store i64 %t53, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb14
bb14:
  %t54 = load i64, ptr %l6, !tbaa !24
  %t55 = load i64, ptr %l5, !tbaa !24
  %t58 = icmp slt i64 %t54, %t55
  %t60 = xor i1 %t58, true
  br i1 %t60, label %bb15, label %bb16
bb15:
  br label %bb26
bb16:
  br label %bb17
bb17:
  %t62 = load i64, ptr %l2, !tbaa !24
  %t63 = load i64, ptr %l6, !tbaa !24
  %t64 = load i64, ptr %l4, !tbaa !24
  %t67 = mul i64 %t63, %t64
  %t70 = add i64 %t62, %t67
  store i64 %t70, ptr %l7, !tbaa !24
  %t72 = load ptr, ptr %l1, !tbaa !29
  %t74 = getelementptr %"compiler/typed:Versions", ptr %t72, i32 0, i32 4
  %t75 = load i64, ptr %l7, !tbaa !24
  %t78 = call %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t74, i64 %t75)
  store %"compiler/source:Span" %t78, ptr %l46
  br label %bb18
bb18:
  %t79 = getelementptr %"compiler/source:Span", ptr %l46, i32 0, i32 0
  %t80 = load i32, ptr %t79, !tbaa !23
  %t82 = icmp slt i32 %t80, 0
  br i1 %t82, label %bb19, label %bb20
bb19:
  %t84 = load ptr, ptr %l0, !tbaa !29
  store ptr %t84, ptr %l49, !tbaa !29
  %t85 = load i64, ptr %l7, !tbaa !24
  store i64 %t85, ptr %l50, !tbaa !24
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/scope:Scoper", ptr %t86, i32 0, i32 34
  store ptr %t88, ptr %l52, !tbaa !29
  %t89 = load ptr, ptr %l1, !tbaa !29
  %t91 = getelementptr %"compiler/typed:Versions", ptr %t89, i32 0, i32 3
  %t92 = load i64, ptr %l7, !tbaa !24
  %t95 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t91, i64 %t92)
  store i64 %t95, ptr %l56
  br label %bb21
bb20:
  br label %bb24
bb21:
  %t96 = load ptr, ptr %l52, !tbaa !29
  %t97 = load i64, ptr %l56, !tbaa !24
  %t98 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t96, i64 %t97)
  store { i64, [2 x i64] } %t98, ptr %l57
  br label %bb22
bb22:
  %t99 = load ptr, ptr %l49, !tbaa !29
  %t100 = load i64, ptr %l50, !tbaa !24
  %t101 = load { i64, [2 x i64] }, ptr %l57
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2everDefine(ptr %v0, ptr %t99, i64 %t100, { i64, [2 x i64] } %t101)
  br label %bb23
bb23:
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t102 = load i64, ptr %l6, !tbaa !24
  %t104 = add i64 %t102, 1
  store i64 %t104, ptr %l6, !tbaa !24
  br label %bb14
bb26:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eversionsDiffer(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i32
  %l28 = alloca ptr
  %l37 = alloca %"compiler/typed:Local"
  %l39 = alloca { i64, ptr }
  %l40 = alloca ptr
  %l41 = alloca %"compiler/source:Span"
  %l43 = alloca %"compiler/diagmsg:Msg"
  %l44 = alloca i64
  %l47 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l49 = alloca i64
  %l51 = alloca i64
  %l56 = alloca i64
  %l60 = alloca %"compiler/source:Span"
  %l63 = alloca i1
  %l66 = alloca ptr
  %l67 = alloca i64
  %l74 = alloca i64
  %l78 = alloca %"compiler/source:Span"
  %l80 = alloca %"compiler/diagmsg:Msg"
  %s2 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 187
  %t7 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t3, i64 %a2)
  %t8 = extractvalue { i32, i64 } %t7, 1
  %t9 = extractvalue { i32, i64 } %t7, 0
  store i32 %t9, ptr %l16
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store i64 %t8, ptr %l15
  br label %bb1
bb1:
  %t12 = load i64, ptr %l15, !tbaa !24
  store i64 %t12, ptr %l11, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i64 -1, ptr %l11, !tbaa !24
  br label %bb4
bb4:
  %t13 = load i64, ptr %l11, !tbaa !24
  store i64 %t13, ptr %l3, !tbaa !24
  %t14 = load i64, ptr %l3, !tbaa !24
  %t16 = icmp slt i64 %t14, 0
  br i1 %t16, label %bb5, label %bb6
bb5:
  store i1 false, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/scope:Scoper", ptr %t19, i32 0, i32 159
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t24 = icmp eq ptr %t22, null
  br i1 %t24, label %bb8, label %bb9
bb8:
  call void @__olang_check_failed(ptr @olang_loc_902232b6dd8d0696_1dd7740f0a73924a)
  unreachable
bb9:
  br label %bb10
bb10:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/scope:Scoper", ptr %t26, i32 0, i32 159
  %t29 = load ptr, ptr %t28, !tbaa !29
  store ptr %t29, ptr %l4, !tbaa !29
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/scope:Scoper", ptr %t31, i32 0, i32 0
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t36 = getelementptr %"compiler/generic:Program", ptr %t34, i32 0, i32 0
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t39 = getelementptr %"compiler/load:Loader", ptr %t37, i32 0, i32 3
  %t40 = load ptr, ptr %t39, !tbaa !29
  store ptr %t40, ptr %l28, !tbaa !29
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/scope:Scoper", ptr %t41, i32 0, i32 26
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t46 = icmp eq ptr %t44, null
  br i1 %t46, label %bb11, label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_13bffa23f71fb67d_39ab2ce74b1a8b51)
  unreachable
bb12:
  br label %bb13
bb13:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/scope:Scoper", ptr %t48, i32 0, i32 26
  %t51 = load ptr, ptr %t50, !tbaa !29
  %t54 = getelementptr %"compiler/typed:Body", ptr %t51, i32 0, i32 7
  %t55 = load i64, ptr %l3, !tbaa !24
  %t58 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t54, i64 %t55)
  store %"compiler/typed:Local" %t58, ptr %l37
  br label %bb14
bb14:
  %t59 = getelementptr %"compiler/typed:Local", ptr %l37, i32 0, i32 0
  %t60 = load i32, ptr %t59, !tbaa !23
  %t61 = load ptr, ptr %l28, !tbaa !29
  %t63 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t61, i32 %t60)
  store { i64, ptr } %t63, ptr %l39
  br label %bb15
bb15:
  %t64 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t64, ptr %l5, !tbaa !27
  %t65 = load ptr, ptr %l0, !tbaa !29
  store ptr %t65, ptr %l40, !tbaa !29
  store %"compiler/source:Span" %a1, ptr %l41
  %t67 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t69 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eVersionsDiffer(ptr %v0, ptr %v0, { i64, ptr } %t67)
  store %"compiler/diagmsg:Msg" %t69, ptr %l43
  br label %bb16
bb16:
  %t70 = load ptr, ptr %l40, !tbaa !29
  %t71 = load %"compiler/source:Span", ptr %l41
  %t72 = load %"compiler/diagmsg:Msg", ptr %l43
  %t73 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %v0, ptr %t70, %"compiler/source:Span" %t71, %"compiler/diagmsg:Msg" %t72)
  store i64 %t73, ptr %l44
  br label %bb17
bb17:
  %t74 = load i64, ptr %l44, !tbaa !24
  store i64 %t74, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  store %olang.scope zeroinitializer, ptr %s2
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load i64, ptr %l3, !tbaa !24
  %t79 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ereachFor(ptr %v0, ptr %s2, ptr %t75, i64 %t76, i64 -1)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t79, ptr %l47
  br label %bb18
bb18:
  %t80 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l47
  %t81 = call ptr @__olang_scope_alloc_a(ptr %s2, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t80, ptr %t81
  store ptr %t81, ptr %l8, !tbaa !29
  store i64 0, ptr %l9, !tbaa !24
  br label %bb19
bb19:
  %t83 = load i64, ptr %l9, !tbaa !24
  store i64 %t83, ptr %l49, !tbaa !24
  %t84 = load ptr, ptr %l8, !tbaa !29
  %t86 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s2, ptr %t84)
  store i64 %t86, ptr %l51
  br label %bb20
bb20:
  %t87 = load i64, ptr %l49, !tbaa !24
  %t88 = load i64, ptr %l51, !tbaa !24
  %t89 = icmp slt i64 %t87, %t88
  %t91 = xor i1 %t89, true
  br i1 %t91, label %bb21, label %bb22
bb21:
  br label %bb39
bb22:
  br label %bb23
bb23:
  %t93 = load ptr, ptr %l8, !tbaa !29
  %t94 = load i64, ptr %l9, !tbaa !24
  %t97 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s2, ptr %t93, i64 %t94)
  store i64 %t97, ptr %l56
  br label %bb24
bb24:
  %t98 = load i64, ptr %l56, !tbaa !24
  store i64 %t98, ptr %l10, !tbaa !24
  %t99 = load ptr, ptr %l4, !tbaa !29
  %t101 = getelementptr %"compiler/typed:Versions", ptr %t99, i32 0, i32 4
  %t102 = load i64, ptr %l10, !tbaa !24
  %t105 = call %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t101, i64 %t102)
  store %"compiler/source:Span" %t105, ptr %l60
  br label %bb25
bb25:
  %t106 = getelementptr %"compiler/source:Span", ptr %l60, i32 0, i32 0
  %t107 = load i32, ptr %t106, !tbaa !23
  %t109 = icmp slt i32 %t107, 0
  br i1 %t109, label %bb26, label %bb27
bb26:
  store i1 true, ptr %l63, !tbaa !21
  br label %bb28
bb27:
  %t111 = load i64, ptr %l7, !tbaa !24
  %t113 = icmp eq i64 %t111, 4
  store i1 %t113, ptr %l63, !tbaa !21
  br label %bb28
bb28:
  %t115 = load i1, ptr %l63, !tbaa !21
  br i1 %t115, label %bb29, label %bb30
bb29:
  br label %bb38
bb30:
  br label %bb31
bb31:
  %t116 = load ptr, ptr %l0, !tbaa !29
  store ptr %t116, ptr %l66, !tbaa !29
  %t117 = load i64, ptr %l6, !tbaa !24
  store i64 %t117, ptr %l67, !tbaa !24
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = getelementptr %"compiler/scope:Scoper", ptr %t118, i32 0, i32 26
  %t121 = load ptr, ptr %t120, !tbaa !29
  %t123 = icmp eq ptr %t121, null
  br i1 %t123, label %bb32, label %bb33
bb32:
  call void @__olang_check_failed(ptr @olang_loc_bb411cb9985695a8_9ee393c5b6d8495c)
  unreachable
bb33:
  br label %bb34
bb34:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = getelementptr %"compiler/scope:Scoper", ptr %t125, i32 0, i32 26
  %t128 = load ptr, ptr %t127, !tbaa !29
  %t131 = getelementptr %"compiler/typed:Body", ptr %t128, i32 0, i32 3
  %t132 = load i64, ptr %t131, !tbaa !24
  store i64 %t132, ptr %l74, !tbaa !24
  %t133 = load ptr, ptr %l4, !tbaa !29
  %t135 = getelementptr %"compiler/typed:Versions", ptr %t133, i32 0, i32 4
  %t136 = load i64, ptr %l10, !tbaa !24
  %t139 = call %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t135, i64 %t136)
  store %"compiler/source:Span" %t139, ptr %l78
  br label %bb35
bb35:
  %t140 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t142 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteAssignedHere(ptr %v0, ptr %v0, { i64, ptr } %t140)
  store %"compiler/diagmsg:Msg" %t142, ptr %l80
  br label %bb36
bb36:
  %t143 = load ptr, ptr %l66, !tbaa !29
  %t144 = load i64, ptr %l67, !tbaa !24
  %t145 = load i64, ptr %l74, !tbaa !24
  %t146 = load %"compiler/source:Span", ptr %l78
  %t147 = load %"compiler/diagmsg:Msg", ptr %l80
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enote(ptr %v0, ptr %v0, ptr %t143, i64 %t144, i64 %t145, %"compiler/source:Span" %t146, %"compiler/diagmsg:Msg" %t147)
  br label %bb37
bb37:
  %t148 = load i64, ptr %l7, !tbaa !24
  %t150 = add i64 %t148, 1
  store i64 %t150, ptr %l7, !tbaa !24
  br label %bb38
bb38:
  %t152 = load i64, ptr %l9, !tbaa !24
  %t154 = add i64 %t152, 1
  store i64 %t154, ptr %l9, !tbaa !24
  br label %bb19
bb39:
  call void @__olang_scope_close(ptr %s2)
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eviewedBy(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i1
  %l5 = alloca i64
  %l8 = alloca i64
  %l14 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i32
  %rv = alloca i64
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
  store i1 true, ptr %l4, !tbaa !21
  br label %bb4
bb2:
  %t5 = load i64, ptr %l1, !tbaa !24
  store i64 %t5, ptr %l5, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/scope:Scoper", ptr %t6, i32 0, i32 195
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l8
  br label %bb3
bb3:
  %t11 = load i64, ptr %l5, !tbaa !24
  %t12 = load i64, ptr %l8, !tbaa !24
  %t13 = icmp sge i64 %t11, %t12
  store i1 %t13, ptr %l4, !tbaa !21
  br label %bb4
bb4:
  %t15 = load i1, ptr %l4, !tbaa !21
  br i1 %t15, label %bb5, label %bb6
bb5:
  store i64 -1, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/scope:Scoper", ptr %t17, i32 0, i32 195
  %t20 = load i64, ptr %l1, !tbaa !24
  %t23 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t19, i64 %t20)
  store i64 %t23, ptr %l14
  br label %bb8
bb8:
  %t24 = load i64, ptr %l14, !tbaa !24
  %t25 = icmp sge i64 %t24, 0
  br i1 %t25, label %bb9, label %bb10
bb9:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/scope:Scoper", ptr %t27, i32 0, i32 195
  %t30 = load i64, ptr %l1, !tbaa !24
  %t33 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t29, i64 %t30)
  store i64 %t33, ptr %l19
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t34 = load i64, ptr %l19, !tbaa !24
  store i64 %t34, ptr %rv
  br label %ret
bb12:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/scope:Scoper", ptr %t35, i32 0, i32 75
  %t38 = load i64, ptr %l1, !tbaa !24
  %t41 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t37, i64 %t38)
  %t42 = extractvalue { i32, i64 } %t41, 1
  %t43 = extractvalue { i32, i64 } %t41, 0
  store i32 %t43, ptr %l25
  %t44 = icmp ne i32 %t43, 0
  br i1 %t44, label %bb14, label %ok.45, !prof !99
ok.45:
  store i64 %t42, ptr %l24
  br label %bb13
bb13:
  %t46 = load i64, ptr %l24, !tbaa !24
  store i64 %t46, ptr %l20, !tbaa !24
  br label %bb16
bb14:
  br label %bb15
bb15:
  store i64 -1, ptr %l20, !tbaa !24
  br label %bb16
bb16:
  %t47 = load i64, ptr %l20, !tbaa !24
  store i64 %t47, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evisit(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l20 = alloca ptr
  %l32 = alloca i64
  %l37 = alloca i64
  %l41 = alloca i64
  %l44 = alloca i64
  %l65 = alloca i64
  %l68 = alloca i1
  %l69 = alloca i64
  %l72 = alloca i64
  %l77 = alloca i64
  %l84 = alloca i64
  %l88 = alloca i64
  %l91 = alloca ptr
  %l92 = alloca i64
  %l96 = alloca i64
  %l100 = alloca i1
  %l101 = alloca i1
  %l105 = alloca i64
  %l109 = alloca i64
  %l112 = alloca ptr
  %l113 = alloca i64
  %l117 = alloca i64
  %l123 = alloca i64
  %l127 = alloca i64
  %l130 = alloca ptr
  %l133 = alloca i64
  %l134 = alloca i64
  %l137 = alloca i64
  %l138 = alloca i32
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 19
  %t4 = load i64, ptr %l1, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/scope:Scoper", ptr %t5, i32 0, i32 23
  %t8 = load i64, ptr %t7, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t3, i64 %t4, i64 %t8)
  br label %bb1
bb1:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/scope:Scoper", ptr %t12, i32 0, i32 20
  %t15 = load i64, ptr %l1, !tbaa !24
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/scope:Scoper", ptr %t16, i32 0, i32 23
  %t19 = load i64, ptr %t18, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t14, i64 %t15, i64 %t19)
  br label %bb2
bb2:
  %t23 = load ptr, ptr %l0, !tbaa !29
  store ptr %t23, ptr %l20, !tbaa !29
  %t24 = load ptr, ptr %l20, !tbaa !29
  %t25 = getelementptr %"compiler/scope:Scoper", ptr %t24, i32 0, i32 23
  %t26 = load i64, ptr %t25, !tbaa !24
  %t28 = add i64 %t26, 1
  %t30 = load ptr, ptr %l20, !tbaa !29
  %t31 = getelementptr %"compiler/scope:Scoper", ptr %t30, i32 0, i32 23
  store i64 %t28, ptr %t31, !tbaa !24
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/scope:Scoper", ptr %t32, i32 0, i32 22
  %t35 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t34, i64 %t35)
  br label %bb3
bb3:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/scope:Scoper", ptr %t38, i32 0, i32 21
  %t41 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t40, i64 %t41, i1 true)
  br label %bb4
bb4:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/scope:Scoper", ptr %t44, i32 0, i32 13
  %t47 = load i64, ptr %l1, !tbaa !24
  %t50 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t46, i64 %t47)
  store i64 %t50, ptr %l32
  br label %bb5
bb5:
  %t51 = load i64, ptr %l32, !tbaa !24
  store i64 %t51, ptr %l2, !tbaa !24
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/scope:Scoper", ptr %t52, i32 0, i32 13
  %t55 = load i64, ptr %l1, !tbaa !24
  %t57 = add i64 %t55, 1
  %t60 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t54, i64 %t57)
  store i64 %t60, ptr %l37
  br label %bb6
bb6:
  %t61 = load i64, ptr %l37, !tbaa !24
  store i64 %t61, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t62 = load i64, ptr %l3, !tbaa !24
  %t63 = load i64, ptr %l2, !tbaa !24
  %t66 = icmp sgt i64 %t62, %t63
  br i1 %t66, label %bb7, label %bb8
bb7:
  %t68 = load i64, ptr %l4, !tbaa !24
  %t70 = icmp sgt i64 %t68, 0
  br i1 %t70, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l41, !tbaa !24
  br label %bb12
bb9:
  %t72 = load i64, ptr %l3, !tbaa !24
  %t73 = load i64, ptr %l2, !tbaa !24
  %t76 = sub i64 %t72, %t73
  %t77 = load i64, ptr %l4, !tbaa !24
  %t80 = add i64 %t76, %t77
  %t82 = sub i64 %t80, 1
  %t83 = load i64, ptr %l4, !tbaa !24
  %t86 = sdiv i64 %t82, %t83
  store i64 %t86, ptr %l44, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l44, !tbaa !24
  br label %bb11
bb11:
  %t88 = load i64, ptr %l44, !tbaa !24
  store i64 %t88, ptr %l41, !tbaa !24
  br label %bb12
bb12:
  %t89 = load i64, ptr %l41, !tbaa !24
  store i64 %t89, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb13
bb13:
  %t90 = load i64, ptr %l6, !tbaa !24
  %t91 = load i64, ptr %l5, !tbaa !24
  %t94 = icmp slt i64 %t90, %t91
  %t96 = xor i1 %t94, true
  br i1 %t96, label %bb14, label %bb15
bb14:
  br label %bb49
bb15:
  br label %bb16
bb16:
  %t98 = load i64, ptr %l2, !tbaa !24
  %t99 = load i64, ptr %l6, !tbaa !24
  %t100 = load i64, ptr %l4, !tbaa !24
  %t103 = mul i64 %t99, %t100
  %t106 = add i64 %t98, %t103
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/scope:Scoper", ptr %t108, i32 0, i32 14
  %t114 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t110, i64 %t106)
  store i64 %t114, ptr %l65
  br label %bb17
bb17:
  %t115 = load i64, ptr %l65, !tbaa !24
  store i64 %t115, ptr %l8, !tbaa !24
  %t116 = load i64, ptr %l8, !tbaa !24
  %t118 = icmp slt i64 %t116, 0
  br i1 %t118, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l68, !tbaa !21
  br label %bb21
bb19:
  %t120 = load i64, ptr %l8, !tbaa !24
  store i64 %t120, ptr %l69, !tbaa !24
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t123 = getelementptr %"compiler/scope:Scoper", ptr %t121, i32 0, i32 19
  %t125 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t123)
  store i64 %t125, ptr %l72
  br label %bb20
bb20:
  %t126 = load i64, ptr %l69, !tbaa !24
  %t127 = load i64, ptr %l72, !tbaa !24
  %t128 = icmp sge i64 %t126, %t127
  store i1 %t128, ptr %l68, !tbaa !21
  br label %bb21
bb21:
  %t130 = load i1, ptr %l68, !tbaa !21
  br i1 %t130, label %bb22, label %bb23
bb22:
  br label %bb48
bb23:
  br label %bb24
bb24:
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t133 = getelementptr %"compiler/scope:Scoper", ptr %t131, i32 0, i32 19
  %t134 = load i64, ptr %l8, !tbaa !24
  %t137 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t133, i64 %t134)
  store i64 %t137, ptr %l77
  br label %bb25
bb25:
  %t138 = load i64, ptr %l77, !tbaa !24
  %t139 = icmp slt i64 %t138, 0
  br i1 %t139, label %bb26, label %bb27
bb26:
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t142 = load i64, ptr %l8, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evisit(ptr %v0, ptr %t141, i64 %t142)
  br label %bb28
bb27:
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t147 = getelementptr %"compiler/scope:Scoper", ptr %t145, i32 0, i32 21
  %t148 = load i64, ptr %l8, !tbaa !24
  %t151 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t147, i64 %t148)
  store i1 %t151, ptr %l100
  br label %bb36
bb28:
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t154 = getelementptr %"compiler/scope:Scoper", ptr %t152, i32 0, i32 20
  %t155 = load i64, ptr %l8, !tbaa !24
  %t158 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t154, i64 %t155)
  store i64 %t158, ptr %l84
  br label %bb29
bb29:
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t161 = getelementptr %"compiler/scope:Scoper", ptr %t159, i32 0, i32 20
  %t162 = load i64, ptr %l1, !tbaa !24
  %t165 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t161, i64 %t162)
  store i64 %t165, ptr %l88
  br label %bb30
bb30:
  %t166 = load i64, ptr %l84, !tbaa !24
  %t167 = load i64, ptr %l88, !tbaa !24
  %t168 = icmp slt i64 %t166, %t167
  br i1 %t168, label %bb31, label %bb32
bb31:
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t172 = getelementptr %"compiler/scope:Scoper", ptr %t170, i32 0, i32 20
  store ptr %t172, ptr %l91, !tbaa !29
  %t173 = load i64, ptr %l1, !tbaa !24
  store i64 %t173, ptr %l92, !tbaa !24
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t176 = getelementptr %"compiler/scope:Scoper", ptr %t174, i32 0, i32 20
  %t177 = load i64, ptr %l8, !tbaa !24
  %t180 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t176, i64 %t177)
  store i64 %t180, ptr %l96
  br label %bb33
bb32:
  br label %bb35
bb33:
  %t181 = load ptr, ptr %l91, !tbaa !29
  %t182 = load i64, ptr %l92, !tbaa !24
  %t183 = load i64, ptr %l96, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t181, i64 %t182, i64 %t183)
  br label %bb34
bb34:
  br label %bb35
bb35:
  br label %bb47
bb36:
  %t184 = load i1, ptr %l100, !tbaa !21
  br i1 %t184, label %bb37, label %bb38
bb37:
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t187 = getelementptr %"compiler/scope:Scoper", ptr %t185, i32 0, i32 19
  %t188 = load i64, ptr %l8, !tbaa !24
  %t191 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t187, i64 %t188)
  store i64 %t191, ptr %l105
  br label %bb39
bb38:
  store i1 false, ptr %l101, !tbaa !21
  br label %bb41
bb39:
  %t192 = load ptr, ptr %l0, !tbaa !29
  %t194 = getelementptr %"compiler/scope:Scoper", ptr %t192, i32 0, i32 20
  %t195 = load i64, ptr %l1, !tbaa !24
  %t198 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t194, i64 %t195)
  store i64 %t198, ptr %l109
  br label %bb40
bb40:
  %t199 = load i64, ptr %l105, !tbaa !24
  %t200 = load i64, ptr %l109, !tbaa !24
  %t201 = icmp slt i64 %t199, %t200
  store i1 %t201, ptr %l101, !tbaa !21
  br label %bb41
bb41:
  %t203 = load i1, ptr %l101, !tbaa !21
  br i1 %t203, label %bb42, label %bb43
bb42:
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t206 = getelementptr %"compiler/scope:Scoper", ptr %t204, i32 0, i32 20
  store ptr %t206, ptr %l112, !tbaa !29
  %t207 = load i64, ptr %l1, !tbaa !24
  store i64 %t207, ptr %l113, !tbaa !24
  %t208 = load ptr, ptr %l0, !tbaa !29
  %t210 = getelementptr %"compiler/scope:Scoper", ptr %t208, i32 0, i32 19
  %t211 = load i64, ptr %l8, !tbaa !24
  %t214 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t210, i64 %t211)
  store i64 %t214, ptr %l117
  br label %bb44
bb43:
  br label %bb46
bb44:
  %t215 = load ptr, ptr %l112, !tbaa !29
  %t216 = load i64, ptr %l113, !tbaa !24
  %t217 = load i64, ptr %l117, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t215, i64 %t216, i64 %t217)
  br label %bb45
bb45:
  br label %bb46
bb46:
  br label %bb47
bb47:
  br label %bb48
bb48:
  %t218 = load i64, ptr %l6, !tbaa !24
  %t220 = add i64 %t218, 1
  store i64 %t220, ptr %l6, !tbaa !24
  br label %bb13
bb49:
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t224 = getelementptr %"compiler/scope:Scoper", ptr %t222, i32 0, i32 20
  %t225 = load i64, ptr %l1, !tbaa !24
  %t228 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t224, i64 %t225)
  store i64 %t228, ptr %l123
  br label %bb50
bb50:
  %t229 = load ptr, ptr %l0, !tbaa !29
  %t231 = getelementptr %"compiler/scope:Scoper", ptr %t229, i32 0, i32 19
  %t232 = load i64, ptr %l1, !tbaa !24
  %t235 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t231, i64 %t232)
  store i64 %t235, ptr %l127
  br label %bb51
bb51:
  %t236 = load i64, ptr %l123, !tbaa !24
  %t237 = load i64, ptr %l127, !tbaa !24
  %t238 = icmp eq i64 %t236, %t237
  br i1 %t238, label %bb52, label %bb53
bb52:
  %t240 = load ptr, ptr %l0, !tbaa !29
  %t242 = getelementptr %"compiler/scope:Scoper", ptr %t240, i32 0, i32 24
  store ptr %t242, ptr %l130, !tbaa !29
  %t243 = load ptr, ptr %l0, !tbaa !29
  %t245 = getelementptr %"compiler/scope:Scoper", ptr %t243, i32 0, i32 25
  %t247 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t245)
  store i64 %t247, ptr %l133
  br label %bb54
bb53:
  br label %bb68
bb54:
  %t248 = load ptr, ptr %l130, !tbaa !29
  %t249 = load i64, ptr %l133, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t248, i64 %t249)
  br label %bb55
bb55:
  br label %bb56
bb56:
  %t250 = load ptr, ptr %l0, !tbaa !29
  %t252 = getelementptr %"compiler/scope:Scoper", ptr %t250, i32 0, i32 22
  %t254 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %t252)
  %t255 = extractvalue { i32, i64 } %t254, 1
  %t256 = extractvalue { i32, i64 } %t254, 0
  store i32 %t256, ptr %l138
  %t257 = icmp ne i32 %t256, 0
  br i1 %t257, label %bb58, label %ok.258, !prof !99
ok.258:
  store i64 %t255, ptr %l137
  br label %bb57
bb57:
  %t259 = load i64, ptr %l137, !tbaa !24
  store i64 %t259, ptr %l134, !tbaa !24
  br label %bb60
bb58:
  br label %bb59
bb59:
  br label %bb67
bb60:
  %t260 = load i64, ptr %l134, !tbaa !24
  store i64 %t260, ptr %l9, !tbaa !24
  %t261 = load ptr, ptr %l0, !tbaa !29
  %t263 = getelementptr %"compiler/scope:Scoper", ptr %t261, i32 0, i32 21
  %t264 = load i64, ptr %l9, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t263, i64 %t264, i1 false)
  br label %bb61
bb61:
  %t267 = load ptr, ptr %l0, !tbaa !29
  %t269 = getelementptr %"compiler/scope:Scoper", ptr %t267, i32 0, i32 25
  %t270 = load i64, ptr %l9, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t269, i64 %t270)
  br label %bb62
bb62:
  %t273 = load i64, ptr %l9, !tbaa !24
  %t274 = load i64, ptr %l1, !tbaa !24
  %t277 = icmp eq i64 %t273, %t274
  br i1 %t277, label %bb63, label %bb64
bb63:
  br label %bb67
bb64:
  br label %bb65
bb65:
  br label %bb66
bb66:
  br label %bb56
bb67:
  br label %bb68
bb68:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewantPromotion(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l6 = alloca i1
  %l12 = alloca i64
  %l15 = alloca ptr
  %l17 = alloca i32
  %l18 = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
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
  %t17 = load ptr, ptr %l1, !tbaa !29
  %t20 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efieldDecl(ptr %v0, ptr %v1, ptr %t16, ptr %t17)
  store i64 %t20, ptr %l12
  br label %bb7
bb7:
  %t21 = load i64, ptr %l12, !tbaa !24
  store i64 %t21, ptr %l2, !tbaa !24
  %t22 = load i64, ptr %l2, !tbaa !24
  %t24 = icmp slt i64 %t22, 0
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t26 = load ptr, ptr %l0, !tbaa !29
  store ptr %t26, ptr %l15, !tbaa !29
  %t27 = load ptr, ptr %l1, !tbaa !29
  %t29 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t27)
  store i32 %t29, ptr %l17
  br label %bb10
bb9:
  br label %bb12
bb10:
  %t30 = load ptr, ptr %l15, !tbaa !29
  %t31 = load i32, ptr %l17, !tbaa !23
  %t32 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edeclOf(ptr %v0, ptr %t30, i32 %t31)
  store i64 %t32, ptr %l18
  br label %bb11
bb11:
  %t33 = load i64, ptr %l18, !tbaa !24
  store i64 %t33, ptr %l2, !tbaa !24
  br label %bb12
bb12:
  %t34 = load i64, ptr %l2, !tbaa !24
  %t36 = icmp sge i64 %t34, 0
  br i1 %t36, label %bb13, label %bb14
bb13:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t39 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewant(ptr %v0, ptr %t38, i64 %t39)
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

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewholeRoot(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca i1
  %l20 = alloca i64
  %l21 = alloca ptr
  %l22 = alloca i1
  %l29 = alloca i64
  %l30 = alloca ptr
  %l31 = alloca i1
  %l39 = alloca i64
  %l40 = alloca ptr
  %l41 = alloca i1
  %l49 = alloca i64
  %l50 = alloca ptr
  %l56 = alloca i64
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
  store ptr %t6, ptr %l10
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l10, !tbaa !29
  %t8 = call ptr @compiler_2fscope_2eunPassed(ptr %s0, ptr %s0, ptr %t7)
  store ptr %t8, ptr %l11
  br label %bb2
bb2:
  %t9 = load ptr, ptr %l11, !tbaa !29
  store ptr %t9, ptr %l2, !tbaa !29
  %t10 = load ptr, ptr %l2, !tbaa !29
  store ptr %t10, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t11 = load ptr, ptr %l13, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb3, label %bb4
bb3:
  %t14 = load ptr, ptr %l13, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 18}
  %t17 = icmp eq i64 %t15, 2
  store i1 %t17, ptr %l14, !tbaa !21
  br label %bb4
bb4:
  %t18 = load i1, ptr %l14, !tbaa !21
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t19 = load ptr, ptr %l2, !tbaa !29
  %t21 = getelementptr { i64, [5 x i64] }, ptr %t19, i32 0, i32 1
  %t22 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t21, i32 0, i32 2
  %t23 = load ptr, ptr %t22
  store ptr %t23, ptr %l3, !tbaa !29
  br label %bb7
bb6:
  br label %bb9
bb7:
  %t25 = load ptr, ptr %l3, !tbaa !29
  %t27 = call i64 @compiler_2fscope_2eflRoot(ptr %s0, ptr %t25)
  store i64 %t27, ptr %l20
  br label %bb8
bb8:
  %t28 = load i64, ptr %l20, !tbaa !24
  store i64 %t28, ptr %l12, !tbaa !24
  br label %bb41
bb9:
  %t29 = load ptr, ptr %l2, !tbaa !29
  store ptr %t29, ptr %l21, !tbaa !29
  store i1 false, ptr %l22, !tbaa !21
  %t30 = load ptr, ptr %l21, !tbaa !29
  %t31 = icmp ne ptr %t30, null
  br i1 %t31, label %bb10, label %bb11
bb10:
  %t33 = load ptr, ptr %l21, !tbaa !29
  %t34 = load i64, ptr %t33, !range !{i64 0, i64 18}
  %t36 = icmp eq i64 %t34, 3
  store i1 %t36, ptr %l22, !tbaa !21
  br label %bb11
bb11:
  %t37 = load i1, ptr %l22, !tbaa !21
  br i1 %t37, label %bb12, label %bb13
bb12:
  %t38 = load ptr, ptr %l2, !tbaa !29
  %t40 = getelementptr { i64, [5 x i64] }, ptr %t38, i32 0, i32 1
  %t41 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t40, i32 0, i32 2
  %t42 = load ptr, ptr %t41
  store ptr %t42, ptr %l4, !tbaa !29
  br label %bb14
bb13:
  br label %bb16
bb14:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t45 = load ptr, ptr %l4, !tbaa !29
  %t48 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eborrowRoot(ptr %v0, ptr %s0, ptr %t44, ptr %t45)
  store i64 %t48, ptr %l29
  br label %bb15
bb15:
  %t49 = load i64, ptr %l29, !tbaa !24
  store i64 %t49, ptr %l12, !tbaa !24
  br label %bb41
bb16:
  %t50 = load ptr, ptr %l2, !tbaa !29
  store ptr %t50, ptr %l30, !tbaa !29
  store i1 false, ptr %l31, !tbaa !21
  %t51 = load ptr, ptr %l30, !tbaa !29
  %t52 = icmp ne ptr %t51, null
  br i1 %t52, label %bb17, label %bb18
bb17:
  %t54 = load ptr, ptr %l30, !tbaa !29
  %t55 = load i64, ptr %t54, !range !{i64 0, i64 18}
  %t57 = icmp eq i64 %t55, 5
  store i1 %t57, ptr %l31, !tbaa !21
  br label %bb18
bb18:
  %t58 = load i1, ptr %l31, !tbaa !21
  br i1 %t58, label %bb19, label %bb20
bb19:
  %t59 = load ptr, ptr %l2, !tbaa !29
  %t61 = getelementptr { i64, [5 x i64] }, ptr %t59, i32 0, i32 1
  %t62 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t61, i32 0, i32 2
  %t63 = load ptr, ptr %t62
  store ptr %t63, ptr %l5, !tbaa !29
  br label %bb21
bb20:
  br label %bb23
bb21:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load ptr, ptr %l5, !tbaa !29
  %t68 = getelementptr %"compiler/typed:Promote", ptr %t66, i32 0, i32 0
  %t69 = load ptr, ptr %t68, !tbaa !29
  %t72 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewholeRoot(ptr %v0, ptr %s0, ptr %t65, ptr %t69)
  store i64 %t72, ptr %l39
  br label %bb22
bb22:
  %t73 = load i64, ptr %l39, !tbaa !24
  store i64 %t73, ptr %l12, !tbaa !24
  br label %bb41
bb23:
  %t74 = load ptr, ptr %l2, !tbaa !29
  store ptr %t74, ptr %l40, !tbaa !29
  store i1 false, ptr %l41, !tbaa !21
  %t75 = load ptr, ptr %l40, !tbaa !29
  %t76 = icmp ne ptr %t75, null
  br i1 %t76, label %bb24, label %bb25
bb24:
  %t78 = load ptr, ptr %l40, !tbaa !29
  %t79 = load i64, ptr %t78, !range !{i64 0, i64 18}
  %t81 = icmp eq i64 %t79, 12
  store i1 %t81, ptr %l41, !tbaa !21
  br label %bb25
bb25:
  %t82 = load i1, ptr %l41, !tbaa !21
  br i1 %t82, label %bb26, label %bb27
bb26:
  %t83 = load ptr, ptr %l2, !tbaa !29
  %t85 = getelementptr { i64, [5 x i64] }, ptr %t83, i32 0, i32 1
  %t86 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t85, i32 0, i32 2
  %t87 = load ptr, ptr %t86
  store ptr %t87, ptr %l6, !tbaa !29
  br label %bb28
bb27:
  br label %bb36
bb28:
  %t89 = load ptr, ptr %l6, !tbaa !29
  %t91 = getelementptr %"compiler/typed:Seq", ptr %t89, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !29
  %t94 = icmp eq ptr %t92, null
  br i1 %t94, label %bb29, label %bb30
bb29:
  store i64 -1, ptr %l49, !tbaa !24
  br label %bb35
bb30:
  %t96 = load ptr, ptr %l0, !tbaa !29
  store ptr %t96, ptr %l50, !tbaa !29
  %t97 = load ptr, ptr %l6, !tbaa !29
  %t99 = getelementptr %"compiler/typed:Seq", ptr %t97, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !29
  %t102 = icmp eq ptr %t100, null
  br i1 %t102, label %bb31, label %bb32
bb31:
  call void @__olang_check_failed(ptr @olang_loc_2604b54ceaf5ac58_8a6d930b5e8314fc)
  unreachable
bb32:
  br label %bb33
bb33:
  %t104 = load ptr, ptr %l6, !tbaa !29
  %t106 = getelementptr %"compiler/typed:Seq", ptr %t104, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !29
  %t108 = load ptr, ptr %l50, !tbaa !29
  %t110 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewholeRoot(ptr %v0, ptr %s0, ptr %t108, ptr %t107)
  store i64 %t110, ptr %l56
  br label %bb34
bb34:
  %t111 = load i64, ptr %l56, !tbaa !24
  store i64 %t111, ptr %l49, !tbaa !24
  br label %bb35
bb35:
  %t112 = load i64, ptr %l49, !tbaa !24
  store i64 %t112, ptr %l12, !tbaa !24
  br label %bb41
bb36:
  br i1 true, label %bb37, label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb40
bb39:
  store i64 -1, ptr %l12, !tbaa !24
  br label %bb41
bb40:
  call void @__olang_check_failed(ptr @olang_loc_fee63ae15dece90e_627da4ca7452ed92)
  unreachable
bb41:
  call void @__olang_scope_close(ptr %s0)
  %t113 = load i64, ptr %l12, !tbaa !24
  store i64 %t113, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fscope_2ecopiedRead(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i1
  %l4 = alloca ptr
  %l5 = alloca i1
  %l10 = alloca ptr
  %l11 = alloca i1
  %l15 = alloca ptr
  %l16 = alloca i1
  %l22 = alloca i1
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
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l1, !tbaa !29
  br label %bb5
bb4:
  br label %bb8
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  store ptr %t16, ptr %l10, !tbaa !29
  store i1 false, ptr %l11, !tbaa !21
  %t17 = load ptr, ptr %l10, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb6, label %bb7
bb6:
  %t20 = load ptr, ptr %l10, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 8}
  %t23 = icmp eq i64 %t21, 6
  store i1 %t23, ptr %l11, !tbaa !21
  br label %bb7
bb7:
  %t24 = load i1, ptr %l11, !tbaa !21
  %t25 = xor i1 %t24, true
  store i1 %t25, ptr %l3, !tbaa !21
  br label %bb20
bb8:
  %t27 = load ptr, ptr %l0, !tbaa !29
  store ptr %t27, ptr %l15, !tbaa !29
  store i1 false, ptr %l16, !tbaa !21
  %t28 = load ptr, ptr %l15, !tbaa !29
  %t29 = icmp ne ptr %t28, null
  br i1 %t29, label %bb9, label %bb10
bb9:
  %t31 = load ptr, ptr %l15, !tbaa !29
  %t32 = load i64, ptr %t31, !range !{i64 0, i64 18}
  %t34 = icmp eq i64 %t32, 17
  store i1 %t34, ptr %l16, !tbaa !21
  br label %bb10
bb10:
  %t35 = load i1, ptr %l16, !tbaa !21
  br i1 %t35, label %bb11, label %bb12
bb11:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr { i64, [5 x i64] }, ptr %t36, i32 0, i32 1
  %t39 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t38, i32 0, i32 2
  %t40 = load ptr, ptr %t39
  store ptr %t40, ptr %l2, !tbaa !29
  br label %bb13
bb12:
  br label %bb15
bb13:
  %t42 = load ptr, ptr %l2, !tbaa !29
  %t44 = call i1 @compiler_2fscope_2ecopiedRead(ptr %v0, ptr %t42)
  store i1 %t44, ptr %l22
  br label %bb14
bb14:
  %t45 = load i1, ptr %l22, !tbaa !21
  store i1 %t45, ptr %l3, !tbaa !21
  br label %bb20
bb15:
  br i1 true, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb19
bb18:
  store i1 false, ptr %l3, !tbaa !21
  br label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_825a81e7f5138d1b_866e780fc6f79e3f)
  unreachable
bb20:
  %t46 = load i1, ptr %l3, !tbaa !21
  store i1 %t46, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ederivedOf({ i64, [2 x i64] } %a0, i64 %a1) #0 {
entry:
  %l0 = alloca { i64, [2 x i64] }
  %l2 = alloca i64
  %l3 = alloca i1
  %rv = alloca i1
  store { i64, [2 x i64] } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [2 x i64] }, ptr %l0
  %t3 = extractvalue { i64, [2 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 4
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [2 x i64] }, ptr %l0, i32 0, i32 1
  %t7 = getelementptr { i64, i64 }, ptr %t6, i32 0, i32 0
  %t8 = load i64, ptr %t7
  store i64 %t8, ptr %l2, !tbaa !24
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t10 = load i64, ptr %l2, !tbaa !24
  %t14 = icmp eq i64 %t10, %a1
  store i1 %t14, ptr %l3, !tbaa !21
  br label %bb9
bb4:
  br i1 true, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  store i1 false, ptr %l3, !tbaa !21
  br label %bb9
bb8:
  call void @__olang_check_failed(ptr @olang_loc_304a7c19a723c349_c16969d5dd317575)
  unreachable
bb9:
  %t16 = load i1, ptr %l3, !tbaa !21
  store i1 %t16, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fscope_2eparamIndexIn(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l10 = alloca i64
  %l14 = alloca i64
  %l17 = alloca i64
  %l38 = alloca i32
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Body", ptr %t1, i32 0, i32 5
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l10
  br label %bb1
bb1:
  %t6 = load i64, ptr %l10, !tbaa !24
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
  br label %bb17
bb10:
  br label %bb11
bb11:
  %t43 = load i64, ptr %l2, !tbaa !24
  %t44 = load i64, ptr %l6, !tbaa !24
  %t45 = load i64, ptr %l4, !tbaa !24
  %t48 = mul i64 %t44, %t45
  %t51 = add i64 %t43, %t48
  store i64 %t51, ptr %l7, !tbaa !24
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/typed:Body", ptr %t53, i32 0, i32 5
  %t56 = load i64, ptr %l7, !tbaa !24
  %t59 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t55, i64 %t56)
  store i32 %t59, ptr %l38
  br label %bb12
bb12:
  %t61 = load i32, ptr %l38, !tbaa !23
  %t63 = icmp eq i32 %t61, %a1
  br i1 %t63, label %bb13, label %bb14
bb13:
  %t65 = load i64, ptr %l7, !tbaa !24
  store i64 %t65, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t67 = load i64, ptr %l6, !tbaa !24
  %t69 = add i64 %t67, 1
  store i64 %t69, ptr %l6, !tbaa !24
  br label %bb8
bb17:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fscope_2eregionRoot(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca i1
  %l13 = alloca i64
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
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l7, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l7, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l1, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = call i64 @compiler_2fscope_2eregionLocal(ptr %v0, ptr %t16)
  store i64 %t18, ptr %l13
  br label %bb6
bb6:
  %t19 = load i64, ptr %l13, !tbaa !24
  store i64 %t19, ptr %l5, !tbaa !24
  br label %bb33
bb7:
  %t20 = load ptr, ptr %l0, !tbaa !29
  store ptr %t20, ptr %l14, !tbaa !29
  store i1 false, ptr %l15, !tbaa !21
  %t21 = load ptr, ptr %l14, !tbaa !29
  %t22 = icmp ne ptr %t21, null
  br i1 %t22, label %bb8, label %bb9
bb8:
  %t24 = load ptr, ptr %l14, !tbaa !29
  %t25 = load i64, ptr %t24, !range !{i64 0, i64 8}
  %t27 = icmp eq i64 %t25, 3
  store i1 %t27, ptr %l15, !tbaa !21
  br label %bb9
bb9:
  %t28 = load i1, ptr %l15, !tbaa !21
  br i1 %t28, label %bb10, label %bb11
bb10:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr { i64, [4 x i64] }, ptr %t29, i32 0, i32 1
  %t32 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t31, i32 0, i32 2
  %t33 = load ptr, ptr %t32
  store ptr %t33, ptr %l2, !tbaa !29
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t35 = load ptr, ptr %l2, !tbaa !29
  %t37 = call i64 @compiler_2fscope_2eregionRoot(ptr %v0, ptr %t35)
  store i64 %t37, ptr %l21
  br label %bb13
bb13:
  %t38 = load i64, ptr %l21, !tbaa !24
  store i64 %t38, ptr %l5, !tbaa !24
  br label %bb33
bb14:
  %t39 = load ptr, ptr %l0, !tbaa !29
  store ptr %t39, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t40 = load ptr, ptr %l22, !tbaa !29
  %t41 = icmp ne ptr %t40, null
  br i1 %t41, label %bb15, label %bb16
bb15:
  %t43 = load ptr, ptr %l22, !tbaa !29
  %t44 = load i64, ptr %t43, !range !{i64 0, i64 8}
  %t46 = icmp eq i64 %t44, 5
  store i1 %t46, ptr %l23, !tbaa !21
  br label %bb16
bb16:
  %t47 = load i1, ptr %l23, !tbaa !21
  br i1 %t47, label %bb17, label %bb18
bb17:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr { i64, [4 x i64] }, ptr %t48, i32 0, i32 1
  %t51 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t50, i32 0, i32 2
  %t52 = load ptr, ptr %t51
  store ptr %t52, ptr %l3, !tbaa !29
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t54 = load ptr, ptr %l3, !tbaa !29
  %t56 = getelementptr %"compiler/typed:Payload", ptr %t54, i32 0, i32 0
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t59 = call i64 @compiler_2fscope_2eregionRoot(ptr %v0, ptr %t57)
  store i64 %t59, ptr %l30
  br label %bb20
bb20:
  %t60 = load i64, ptr %l30, !tbaa !24
  store i64 %t60, ptr %l5, !tbaa !24
  br label %bb33
bb21:
  %t61 = load ptr, ptr %l0, !tbaa !29
  store ptr %t61, ptr %l31, !tbaa !29
  store i1 false, ptr %l32, !tbaa !21
  %t62 = load ptr, ptr %l31, !tbaa !29
  %t63 = icmp ne ptr %t62, null
  br i1 %t63, label %bb22, label %bb23
bb22:
  %t65 = load ptr, ptr %l31, !tbaa !29
  %t66 = load i64, ptr %t65, !range !{i64 0, i64 8}
  %t68 = icmp eq i64 %t66, 4
  store i1 %t68, ptr %l32, !tbaa !21
  br label %bb23
bb23:
  %t69 = load i1, ptr %l32, !tbaa !21
  br i1 %t69, label %bb24, label %bb25
bb24:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr { i64, [4 x i64] }, ptr %t70, i32 0, i32 1
  %t73 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t72, i32 0, i32 2
  %t74 = load ptr, ptr %t73
  store ptr %t74, ptr %l4, !tbaa !29
  br label %bb26
bb25:
  br label %bb28
bb26:
  %t76 = load ptr, ptr %l4, !tbaa !29
  %t78 = getelementptr %"compiler/typed:Elem", ptr %t76, i32 0, i32 0
  %t79 = load ptr, ptr %t78, !tbaa !29
  %t81 = call i64 @compiler_2fscope_2eregionRoot(ptr %v0, ptr %t79)
  store i64 %t81, ptr %l39
  br label %bb27
bb27:
  %t82 = load i64, ptr %l39, !tbaa !24
  store i64 %t82, ptr %l5, !tbaa !24
  br label %bb33
bb28:
  br i1 true, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  store i64 -1, ptr %l5, !tbaa !24
  br label %bb33
bb32:
  call void @__olang_check_failed(ptr @olang_loc_b150ba266c9424e3_527b6225611e1947)
  unreachable
bb33:
  %t83 = load i64, ptr %l5, !tbaa !24
  store i64 %t83, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"compiler/scope:markRead" @compiler_2fscope_3amarkRead_2ector(ptr %v0, i64 %a0, i64 %a1, { i64, [1 x i64] } %a2) #0 {
entry:
  %rv = alloca %"compiler/scope:markRead"
  br label %start
start:
  br label %bb0
bb0:
  %t8 = insertvalue %"compiler/scope:markRead" undef, i64 %a0, 0
  %t10 = insertvalue %"compiler/scope:markRead" %t8, i64 %a1, 1
  %t12 = insertvalue %"compiler/scope:markRead" %t10, { i64, [1 x i64] } %a2, 2
  store %"compiler/scope:markRead" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/scope:markRead", ptr %rv
  ret %"compiler/scope:markRead" %rr
}

define dso_local %"compiler/scope:rel" @compiler_2fscope_3arel_2ector(ptr %v0, { i64, [2 x i64] } %a0, { i64, [2 x i64] } %a1, i1 %a2, %"compiler/source:Span" %a3, i64 %a4, i1 %a5, i1 %a6) #0 {
entry:
  %rv = alloca %"compiler/scope:rel"
  br label %start
start:
  br label %bb0
bb0:
  %t16 = insertvalue %"compiler/scope:rel" undef, { i64, [2 x i64] } %a0, 0
  %t18 = insertvalue %"compiler/scope:rel" %t16, { i64, [2 x i64] } %a1, 1
  %t20 = insertvalue %"compiler/scope:rel" %t18, i1 %a2, 2
  %t22 = insertvalue %"compiler/scope:rel" %t20, %"compiler/source:Span" %a3, 3
  %t24 = insertvalue %"compiler/scope:rel" %t22, i64 %a4, 4
  %t26 = insertvalue %"compiler/scope:rel" %t24, i1 %a5, 5
  %t28 = insertvalue %"compiler/scope:rel" %t26, i1 %a6, 6
  store %"compiler/scope:rel" %t28, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/scope:rel", ptr %rv
  ret %"compiler/scope:rel" %rr
}

define dso_local void @compiler_2fscope_3atwinTab_2ector(ptr %out, ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca i64
  %l11 = alloca i64
  %l13 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l15 = alloca i64
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca i64
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l23 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l24 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l25 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l26 = alloca i64
  %l28 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l30 = alloca i64
  %l32 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l34 = alloca i64
  %l36 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l38 = alloca i64
  %l40 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l42 = alloca %"compiler/scope:twinTab"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = ptrtoint ptr %v0 to i64
  store i64 %t1, ptr %l11, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3atwinTab_2e0
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v0)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l11, !tbaa !24
  br label %bb2
bb2:
  %t6 = load i64, ptr %l11
  %t7 = inttoptr i64 %t6 to ptr
  %t8 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20I64_3e(ptr %t7)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t8, ptr %l13
  br label %bb3
bb3:
  %t9 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3atwinTab_2e0
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t11 = load i64, ptr %l11
  %t12 = inttoptr i64 %t11 to ptr
  %t13 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l13, i32 0, i32 2
  %t14 = load { i64, ptr }, ptr %t13
  %t15 = extractvalue { i64, ptr } %t14, 1
  %t16 = call ptr @__olang_region_or(ptr %t15, ptr null)
  %t17 = icmp ne ptr %t16, null
  %t18 = select i1 %t17, ptr %t16, ptr null
  %t19 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l13, i32 0, i32 1
  %t20 = load { i64, ptr }, ptr %t19
  %t21 = extractvalue { i64, ptr } %t20, 1
  %t22 = call ptr @__olang_region_or(ptr %t21, ptr null)
  %t23 = icmp ne ptr %t22, null
  %t24 = select i1 %t23, ptr %t22, ptr %t18
  %t25 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l13, i32 0, i32 0
  %t26 = load { i64, ptr }, ptr %t25
  %t27 = extractvalue { i64, ptr } %t26, 1
  %t28 = call ptr @__olang_region_or(ptr %t27, ptr null)
  %t29 = icmp ne ptr %t28, null
  %t30 = select i1 %t29, ptr %t28, ptr %t24
  %t31 = icmp eq ptr %t30, %t12
  call void @__olang_region_settle(ptr %t12, i1 %t31)
  br label %bb5
bb5:
  %t32 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l13
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t32, ptr %l0
  %t33 = ptrtoint ptr %v0 to i64
  store i64 %t33, ptr %l15, !tbaa !24
  %t34 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3atwinTab_2e1
  br i1 %t34, label %bb6, label %bb7
bb6:
  %t36 = call ptr @__olang_region_make(ptr %v0)
  %t37 = ptrtoint ptr %t36 to i64
  store i64 %t37, ptr %l15, !tbaa !24
  br label %bb7
bb7:
  %t38 = load i64, ptr %l15
  %t39 = inttoptr i64 %t38 to ptr
  %t40 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t39, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t40, ptr %l17
  br label %bb8
bb8:
  %t41 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3atwinTab_2e1
  br i1 %t41, label %bb9, label %bb10
bb9:
  %t43 = load i64, ptr %l15
  %t44 = inttoptr i64 %t43 to ptr
  %t45 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17, i32 0, i32 0
  %t46 = load { i64, ptr }, ptr %t45
  %t47 = extractvalue { i64, ptr } %t46, 1
  %t48 = call ptr @__olang_region_or(ptr %t47, ptr null)
  %t49 = icmp ne ptr %t48, null
  %t50 = select i1 %t49, ptr %t48, ptr null
  %t51 = icmp eq ptr %t50, %t44
  call void @__olang_region_settle(ptr %t44, i1 %t51)
  br label %bb10
bb10:
  %t52 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t52, ptr %l1
  %t53 = ptrtoint ptr %v0 to i64
  store i64 %t53, ptr %l19, !tbaa !24
  %t54 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3atwinTab_2e2
  br i1 %t54, label %bb11, label %bb12
bb11:
  %t56 = call ptr @__olang_region_make(ptr %v0)
  %t57 = ptrtoint ptr %t56 to i64
  store i64 %t57, ptr %l19, !tbaa !24
  br label %bb12
bb12:
  %t58 = load i64, ptr %l19
  %t59 = inttoptr i64 %t58 to ptr
  %t60 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_3e_2ector(ptr %t59, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t60, ptr %l21
  br label %bb13
bb13:
  %t61 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3atwinTab_2e2
  br i1 %t61, label %bb14, label %bb15
bb14:
  %t63 = load i64, ptr %l19
  %t64 = inttoptr i64 %t63 to ptr
  %t65 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21, i32 0, i32 0
  %t66 = load { i64, ptr }, ptr %t65
  %t67 = extractvalue { i64, ptr } %t66, 1
  %t68 = call ptr @__olang_region_or(ptr %t67, ptr null)
  %t69 = icmp ne ptr %t68, null
  %t70 = select i1 %t69, ptr %t68, ptr null
  %t71 = icmp eq ptr %t70, %t64
  call void @__olang_region_settle(ptr %t64, i1 %t71)
  br label %bb15
bb15:
  %t72 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t72, ptr %l2
  %t73 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t73, ptr %l23
  br label %bb16
bb16:
  %t74 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l23
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t74, ptr %l3
  %t75 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t75, ptr %l24
  br label %bb17
bb17:
  %t76 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l24
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t76, ptr %l4
  %t77 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t77, ptr %l25
  br label %bb18
bb18:
  %t78 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l25
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t78, ptr %l5
  %t79 = ptrtoint ptr %v0 to i64
  store i64 %t79, ptr %l26, !tbaa !24
  %t80 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3atwinTab_2e6
  br i1 %t80, label %bb19, label %bb20
bb19:
  %t82 = call ptr @__olang_region_make(ptr %v0)
  %t83 = ptrtoint ptr %t82 to i64
  store i64 %t83, ptr %l26, !tbaa !24
  br label %bb20
bb20:
  %t84 = load i64, ptr %l26
  %t85 = inttoptr i64 %t84 to ptr
  %t86 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t85, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t86, ptr %l28
  br label %bb21
bb21:
  %t87 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3atwinTab_2e6
  br i1 %t87, label %bb22, label %bb23
bb22:
  %t89 = load i64, ptr %l26
  %t90 = inttoptr i64 %t89 to ptr
  %t91 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l28, i32 0, i32 0
  %t92 = load { i64, ptr }, ptr %t91
  %t93 = extractvalue { i64, ptr } %t92, 1
  %t94 = call ptr @__olang_region_or(ptr %t93, ptr null)
  %t95 = icmp ne ptr %t94, null
  %t96 = select i1 %t95, ptr %t94, ptr null
  %t97 = icmp eq ptr %t96, %t90
  call void @__olang_region_settle(ptr %t90, i1 %t97)
  br label %bb23
bb23:
  %t98 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l28
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t98, ptr %l6
  %t99 = ptrtoint ptr %v0 to i64
  store i64 %t99, ptr %l30, !tbaa !24
  %t100 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3atwinTab_2e7
  br i1 %t100, label %bb24, label %bb25
bb24:
  %t102 = call ptr @__olang_region_make(ptr %v0)
  %t103 = ptrtoint ptr %t102 to i64
  store i64 %t103, ptr %l30, !tbaa !24
  br label %bb25
bb25:
  %t104 = load i64, ptr %l30
  %t105 = inttoptr i64 %t104 to ptr
  %t106 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t105, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t106, ptr %l32
  br label %bb26
bb26:
  %t107 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3atwinTab_2e7
  br i1 %t107, label %bb27, label %bb28
bb27:
  %t109 = load i64, ptr %l30
  %t110 = inttoptr i64 %t109 to ptr
  %t111 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l32, i32 0, i32 0
  %t112 = load { i64, ptr }, ptr %t111
  %t113 = extractvalue { i64, ptr } %t112, 1
  %t114 = call ptr @__olang_region_or(ptr %t113, ptr null)
  %t115 = icmp ne ptr %t114, null
  %t116 = select i1 %t115, ptr %t114, ptr null
  %t117 = icmp eq ptr %t116, %t110
  call void @__olang_region_settle(ptr %t110, i1 %t117)
  br label %bb28
bb28:
  %t118 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l32
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t118, ptr %l7
  %t119 = ptrtoint ptr %v0 to i64
  store i64 %t119, ptr %l34, !tbaa !24
  %t120 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3atwinTab_2e8
  br i1 %t120, label %bb29, label %bb30
bb29:
  %t122 = call ptr @__olang_region_make(ptr %v0)
  %t123 = ptrtoint ptr %t122 to i64
  store i64 %t123, ptr %l34, !tbaa !24
  br label %bb30
bb30:
  %t124 = load i64, ptr %l34
  %t125 = inttoptr i64 %t124 to ptr
  %t126 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t125, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t126, ptr %l36
  br label %bb31
bb31:
  %t127 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3atwinTab_2e8
  br i1 %t127, label %bb32, label %bb33
bb32:
  %t129 = load i64, ptr %l34
  %t130 = inttoptr i64 %t129 to ptr
  %t131 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l36, i32 0, i32 0
  %t132 = load { i64, ptr }, ptr %t131
  %t133 = extractvalue { i64, ptr } %t132, 1
  %t134 = call ptr @__olang_region_or(ptr %t133, ptr null)
  %t135 = icmp ne ptr %t134, null
  %t136 = select i1 %t135, ptr %t134, ptr null
  %t137 = icmp eq ptr %t136, %t130
  call void @__olang_region_settle(ptr %t130, i1 %t137)
  br label %bb33
bb33:
  %t138 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l36
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t138, ptr %l8
  store i64 0, ptr %l9, !tbaa !24
  %t139 = ptrtoint ptr %v0 to i64
  store i64 %t139, ptr %l38, !tbaa !24
  %t140 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3atwinTab_2e10
  br i1 %t140, label %bb34, label %bb35
bb34:
  %t142 = call ptr @__olang_region_make(ptr %v0)
  %t143 = ptrtoint ptr %t142 to i64
  store i64 %t143, ptr %l38, !tbaa !24
  br label %bb35
bb35:
  %t144 = load i64, ptr %l38
  %t145 = inttoptr i64 %t144 to ptr
  %t146 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t145)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t146, ptr %l40
  br label %bb36
bb36:
  %t147 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3atwinTab_2e10
  br i1 %t147, label %bb37, label %bb38
bb37:
  %t149 = load i64, ptr %l38
  %t150 = inttoptr i64 %t149 to ptr
  %t151 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l40, i32 0, i32 2
  %t152 = load { i64, ptr }, ptr %t151
  %t153 = extractvalue { i64, ptr } %t152, 1
  %t154 = call ptr @__olang_region_or(ptr %t153, ptr null)
  %t155 = icmp ne ptr %t154, null
  %t156 = select i1 %t155, ptr %t154, ptr null
  %t157 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l40, i32 0, i32 1
  %t158 = load { i64, ptr }, ptr %t157
  %t159 = extractvalue { i64, ptr } %t158, 1
  %t160 = call ptr @__olang_region_or(ptr %t159, ptr null)
  %t161 = icmp ne ptr %t160, null
  %t162 = select i1 %t161, ptr %t160, ptr %t156
  %t163 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l40, i32 0, i32 0
  %t164 = load { i64, ptr }, ptr %t163
  %t165 = extractvalue { i64, ptr } %t164, 1
  %t166 = call ptr @__olang_region_or(ptr %t165, ptr null)
  %t167 = icmp ne ptr %t166, null
  %t168 = select i1 %t167, ptr %t166, ptr %t162
  %t169 = icmp eq ptr %t168, %t150
  call void @__olang_region_settle(ptr %t150, i1 %t169)
  br label %bb38
bb38:
  %t170 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l40
  %t171 = getelementptr %"compiler/scope:twinTab", ptr %l42, i32 0, i32 0
  %t172 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t172, ptr %t171
  %t173 = getelementptr %"compiler/scope:twinTab", ptr %l42, i32 0, i32 1
  %t174 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t174, ptr %t173
  %t175 = getelementptr %"compiler/scope:twinTab", ptr %l42, i32 0, i32 2
  %t176 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t176, ptr %t175
  %t177 = getelementptr %"compiler/scope:twinTab", ptr %l42, i32 0, i32 3
  %t178 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t178, ptr %t177
  %t179 = getelementptr %"compiler/scope:twinTab", ptr %l42, i32 0, i32 4
  %t180 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t180, ptr %t179
  %t181 = getelementptr %"compiler/scope:twinTab", ptr %l42, i32 0, i32 5
  %t182 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t182, ptr %t181
  %t183 = getelementptr %"compiler/scope:twinTab", ptr %l42, i32 0, i32 6
  %t184 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t184, ptr %t183
  %t185 = getelementptr %"compiler/scope:twinTab", ptr %l42, i32 0, i32 7
  %t186 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t186, ptr %t185
  %t187 = getelementptr %"compiler/scope:twinTab", ptr %l42, i32 0, i32 8
  %t188 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t188, ptr %t187
  %t189 = getelementptr %"compiler/scope:twinTab", ptr %l42, i32 0, i32 9
  %t190 = load i64, ptr %l9, !tbaa !24
  store i64 %t190, ptr %t189, !tbaa !24
  %t191 = getelementptr %"compiler/scope:twinTab", ptr %l42, i32 0, i32 10
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t170, ptr %t191
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l42, i64 408, i1 false)
  br label %ret
ret:
  ret void
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
declare void @__olang_check_failed(ptr) cold noreturn
declare ptr @__olang_scope_of(ptr, ptr) noinline
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

@.d1 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"keeps" }>, align 8
@.d2 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"borrows " }>, align 8
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
@.d3 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"keeps " }>, align 8
@.d4 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d5 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
define linkonce_odr void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3aScoper(ptr %out, ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/scope:Scoper"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l13 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l15 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l17 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l19 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
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
  %l47 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l49 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l51 = alloca %"compiler/typed:Plan"
  %l53 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l55 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l57 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l59 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l61 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l63 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l65 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l67 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l69 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l71 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l73 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l75 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l77 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l79 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l81 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l83 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l85 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l87 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l89 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l91 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l93 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l95 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l97 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l99 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l101 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l103 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l105 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l107 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l109 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l111 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l113 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l115 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l117 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l119 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l121 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l123 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l125 = alloca %"compiler/scope:fnRecs"
  %l127 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l129 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l131 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l133 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l135 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l137 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l139 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l141 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l143 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l145 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l147 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l149 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l151 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l153 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l155 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l157 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l159 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l161 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l163 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l165 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l167 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l169 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l171 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l173 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l175 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l177 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l179 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l181 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l183 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l185 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l187 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l189 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l191 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l193 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l195 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l197 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l199 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l201 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l203 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l205 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l207 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l209 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l211 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l213 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l215 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l217 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l219 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l221 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l223 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l225 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l227 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l229 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l231 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l233 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l235 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l237 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l239 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l241 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l243 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l245 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l247 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l249 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l251 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l253 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l255 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l257 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l258 = alloca { i64, ptr }
  %l259 = alloca i64
  %l260 = alloca { i64, ptr }
  %l262 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l264 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l266 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l268 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l270 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l272 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l274 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l276 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l278 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l280 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l282 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l284 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l286 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l288 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l290 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l292 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l294 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l296 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %t123 = alloca %"compiler/typed:Plan", align 8
  br label %start
start:
  br label %bb0
bb0:
  call void @llvm.memmove.p0.p0.i64(ptr %l1, ptr %a0, i64 8968, i1 false)
  %t2 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 1
  %t4 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e(ptr %v0, ptr %t2)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l3
  br label %bb1
bb1:
  %t5 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t6 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %t6
  %t7 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 2
  %t9 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %t7)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %l5
  br label %bb2
bb2:
  %t10 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t11 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %t11
  %t12 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 3
  %t14 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aGap_3e(ptr %v0, ptr %t12)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l7
  br label %bb3
bb3:
  %t15 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  %t16 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %t16
  %t17 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 6
  %t19 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e(ptr %v0, ptr %t17)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t19, ptr %l9
  br label %bb4
bb4:
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  %t21 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %t21
  %t22 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 7
  %t24 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e(ptr %v0, ptr %t22)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t24, ptr %l11
  br label %bb5
bb5:
  %t25 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l11
  %t26 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 7
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t25, ptr %t26
  %t27 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 8
  %t29 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e(ptr %v0, ptr %t27)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t29, ptr %l13
  br label %bb6
bb6:
  %t30 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l13
  %t31 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 8
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t30, ptr %t31
  %t32 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 9
  %t34 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e(ptr %v0, ptr %t32)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t34, ptr %l15
  br label %bb7
bb7:
  %t35 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l15
  %t36 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 9
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t35, ptr %t36
  %t37 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 10
  %t39 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20I64_3e(ptr %v0, ptr %t37)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t39, ptr %l17
  br label %bb8
bb8:
  %t40 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l17
  %t41 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 10
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t40, ptr %t41
  %t42 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 11
  %t44 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %t42)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t44, ptr %l19
  br label %bb9
bb9:
  %t45 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l19
  %t46 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 11
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t45, ptr %t46
  %t47 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 12
  %t49 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %v0, ptr %t47)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t49, ptr %l21
  br label %bb10
bb10:
  %t50 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21
  %t51 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t50, ptr %t51
  %t52 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 13
  %t54 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t52)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t54, ptr %l23
  br label %bb11
bb11:
  %t55 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l23
  %t56 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t55, ptr %t56
  %t57 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 14
  %t59 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t57)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t59, ptr %l25
  br label %bb12
bb12:
  %t60 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l25
  %t61 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t60, ptr %t61
  %t62 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 15
  %t64 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t62)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t64, ptr %l27
  br label %bb13
bb13:
  %t65 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27
  %t66 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 15
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t65, ptr %t66
  %t67 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 16
  %t69 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t67)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t69, ptr %l29
  br label %bb14
bb14:
  %t70 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l29
  %t71 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t70, ptr %t71
  %t72 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 17
  %t74 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t72)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t74, ptr %l31
  br label %bb15
bb15:
  %t75 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l31
  %t76 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 17
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t75, ptr %t76
  %t77 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 18
  %t79 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t77)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t79, ptr %l33
  br label %bb16
bb16:
  %t80 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l33
  %t81 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 18
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t80, ptr %t81
  %t82 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 19
  %t84 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t82)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t84, ptr %l35
  br label %bb17
bb17:
  %t85 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l35
  %t86 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 19
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t85, ptr %t86
  %t87 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 20
  %t89 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t87)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t89, ptr %l37
  br label %bb18
bb18:
  %t90 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l37
  %t91 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t90, ptr %t91
  %t92 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 21
  %t94 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %v0, ptr %t92)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t94, ptr %l39
  br label %bb19
bb19:
  %t95 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l39
  %t96 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 21
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t95, ptr %t96
  %t97 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 22
  %t99 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t97)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t99, ptr %l41
  br label %bb20
bb20:
  %t100 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l41
  %t101 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 22
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t100, ptr %t101
  %t102 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 24
  %t104 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t102)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t104, ptr %l43
  br label %bb21
bb21:
  %t105 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l43
  %t106 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 24
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t105, ptr %t106
  %t107 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 25
  %t109 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t107)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t109, ptr %l45
  br label %bb22
bb22:
  %t110 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l45
  %t111 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 25
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t110, ptr %t111
  %t112 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 31
  %t114 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3ccompiler_2ftyped_3aBlockId_3e_3e(ptr %v0, ptr %t112)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t114, ptr %l47
  br label %bb23
bb23:
  %t115 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l47
  %t116 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 31
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t115, ptr %t116
  %t117 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 32
  %t119 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_H90251316700b89c67e565c550ab10b7e(ptr %v0, ptr %t117)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t119, ptr %l49
  br label %bb24
bb24:
  %t120 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l49
  %t121 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 32
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t120, ptr %t121
  %t122 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 33
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ftyped_3aPlan(ptr %t123, ptr %v0, ptr %t122)
  call void @llvm.memmove.p0.p0.i64(ptr %l51, ptr %t123, i64 536, i1 false)
  br label %bb25
bb25:
  %t125 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 33
  call void @llvm.memmove.p0.p0.i64(ptr %t125, ptr %l51, i64 536, i1 false)
  %t126 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 34
  %t128 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t126)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t128, ptr %l53
  br label %bb26
bb26:
  %t129 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l53
  %t130 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 34
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t129, ptr %t130
  %t131 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 35
  %t133 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t131)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t133, ptr %l55
  br label %bb27
bb27:
  %t134 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l55
  %t135 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 35
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t134, ptr %t135
  %t136 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 36
  %t138 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t136)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t138, ptr %l57
  br label %bb28
bb28:
  %t139 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l57
  %t140 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 36
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t139, ptr %t140
  %t141 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 37
  %t143 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t141)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t143, ptr %l59
  br label %bb29
bb29:
  %t144 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l59
  %t145 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 37
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t144, ptr %t145
  %t146 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 38
  %t148 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t146)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t148, ptr %l61
  br label %bb30
bb30:
  %t149 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l61
  %t150 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 38
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t149, ptr %t150
  %t151 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 39
  %t153 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t151)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t153, ptr %l63
  br label %bb31
bb31:
  %t154 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l63
  %t155 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 39
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t154, ptr %t155
  %t156 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 40
  %t158 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t156)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t158, ptr %l65
  br label %bb32
bb32:
  %t159 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l65
  %t160 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 40
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t159, ptr %t160
  %t161 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 43
  %t163 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t161)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t163, ptr %l67
  br label %bb33
bb33:
  %t164 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l67
  %t165 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 43
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t164, ptr %t165
  %t166 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 44
  %t168 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e(ptr %v0, ptr %t166)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t168, ptr %l69
  br label %bb34
bb34:
  %t169 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l69
  %t170 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 44
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t169, ptr %t170
  %t171 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 45
  %t173 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t171)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t173, ptr %l71
  br label %bb35
bb35:
  %t174 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l71
  %t175 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 45
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t174, ptr %t175
  %t176 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 46
  %t178 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %v0, ptr %t176)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t178, ptr %l73
  br label %bb36
bb36:
  %t179 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l73
  %t180 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 46
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t179, ptr %t180
  %t181 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 47
  %t183 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t181)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t183, ptr %l75
  br label %bb37
bb37:
  %t184 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l75
  %t185 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 47
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t184, ptr %t185
  %t186 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 48
  %t188 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t186)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t188, ptr %l77
  br label %bb38
bb38:
  %t189 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l77
  %t190 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 48
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t189, ptr %t190
  %t191 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 49
  %t193 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %v0, ptr %t191)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t193, ptr %l79
  br label %bb39
bb39:
  %t194 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l79
  %t195 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 49
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t194, ptr %t195
  %t196 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 50
  %t198 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %v0, ptr %t196)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t198, ptr %l81
  br label %bb40
bb40:
  %t199 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l81
  %t200 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 50
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t199, ptr %t200
  %t201 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 53
  %t203 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fv_H7ef236450d3feb960a8cf3e06f49bf11(ptr %v0, ptr %t201)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t203, ptr %l83
  br label %bb41
bb41:
  %t204 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l83
  %t205 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 53
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t204, ptr %t205
  %t206 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 54
  %t208 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t206)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t208, ptr %l85
  br label %bb42
bb42:
  %t209 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l85
  %t210 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 54
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t209, ptr %t210
  %t211 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 55
  %t213 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t211)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t213, ptr %l87
  br label %bb43
bb43:
  %t214 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l87
  %t215 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 55
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t214, ptr %t215
  %t216 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 58
  %t218 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t216)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t218, ptr %l89
  br label %bb44
bb44:
  %t219 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l89
  %t220 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 58
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t219, ptr %t220
  %t221 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 60
  %t223 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e(ptr %v0, ptr %t221)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t223, ptr %l91
  br label %bb45
bb45:
  %t224 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l91
  %t225 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 60
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t224, ptr %t225
  %t226 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 61
  %t228 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %v0, ptr %t226)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t228, ptr %l93
  br label %bb46
bb46:
  %t229 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l93
  %t230 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 61
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t229, ptr %t230
  %t231 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 62
  %t233 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %v0, ptr %t231)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t233, ptr %l95
  br label %bb47
bb47:
  %t234 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l95
  %t235 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 62
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t234, ptr %t235
  %t236 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 66
  %t238 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t236)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t238, ptr %l97
  br label %bb48
bb48:
  %t239 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l97
  %t240 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 66
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t239, ptr %t240
  %t241 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 67
  %t243 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t241)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t243, ptr %l99
  br label %bb49
bb49:
  %t244 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l99
  %t245 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 67
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t244, ptr %t245
  %t246 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 68
  %t248 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t246)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t248, ptr %l101
  br label %bb50
bb50:
  %t249 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l101
  %t250 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 68
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t249, ptr %t250
  %t251 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 69
  %t253 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %v0, ptr %t251)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t253, ptr %l103
  br label %bb51
bb51:
  %t254 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l103
  %t255 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 69
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t254, ptr %t255
  %t256 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 71
  %t258 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t256)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t258, ptr %l105
  br label %bb52
bb52:
  %t259 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l105
  %t260 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 71
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t259, ptr %t260
  %t261 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 73
  %t263 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e(ptr %v0, ptr %t261)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t263, ptr %l107
  br label %bb53
bb53:
  %t264 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l107
  %t265 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 73
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t264, ptr %t265
  %t266 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 75
  %t268 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %v0, ptr %t266)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t268, ptr %l109
  br label %bb54
bb54:
  %t269 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l109
  %t270 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 75
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t269, ptr %t270
  %t271 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 81
  %t273 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t271)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t273, ptr %l111
  br label %bb55
bb55:
  %t274 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l111
  %t275 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 81
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t274, ptr %t275
  %t276 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 92
  %t278 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fv_H7ef236450d3feb960a8cf3e06f49bf11(ptr %v0, ptr %t276)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t278, ptr %l113
  br label %bb56
bb56:
  %t279 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l113
  %t280 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 92
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t279, ptr %t280
  %t281 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 93
  %t283 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e(ptr %v0, ptr %t281)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t283, ptr %l115
  br label %bb57
bb57:
  %t284 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l115
  %t285 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 93
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t284, ptr %t285
  %t286 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 94
  %t288 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e(ptr %v0, ptr %t286)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t288, ptr %l117
  br label %bb58
bb58:
  %t289 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l117
  %t290 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 94
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t289, ptr %t290
  %t291 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 95
  %t293 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e(ptr %v0, ptr %t291)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t293, ptr %l119
  br label %bb59
bb59:
  %t294 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l119
  %t295 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 95
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t294, ptr %t295
  %t296 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 96
  %t298 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e(ptr %v0, ptr %t296)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t298, ptr %l121
  br label %bb60
bb60:
  %t299 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l121
  %t300 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 96
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t299, ptr %t300
  %t301 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 97
  %t303 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fv_H09c3079d182b8cef4a686eac89911323(ptr %v0, ptr %t301)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t303, ptr %l123
  br label %bb61
bb61:
  %t304 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l123
  %t305 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 97
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t304, ptr %t305
  %t306 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 98
  %t308 = call %"compiler/scope:fnRecs" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRecs(ptr %v0, ptr %t306)
  store %"compiler/scope:fnRecs" %t308, ptr %l125
  br label %bb62
bb62:
  %t309 = load %"compiler/scope:fnRecs", ptr %l125
  %t310 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 98
  store %"compiler/scope:fnRecs" %t309, ptr %t310
  %t311 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 102
  %t313 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fv_H1486ed990d77c8f720439dfec9d6318c(ptr %v0, ptr %t311)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t313, ptr %l127
  br label %bb63
bb63:
  %t314 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l127
  %t315 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 102
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t314, ptr %t315
  %t316 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 103
  %t318 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t316)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t318, ptr %l129
  br label %bb64
bb64:
  %t319 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l129
  %t320 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 103
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t319, ptr %t320
  %t321 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 107
  %t323 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %v0, ptr %t321)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t323, ptr %l131
  br label %bb65
bb65:
  %t324 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l131
  %t325 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 107
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t324, ptr %t325
  %t326 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 108
  %t328 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %v0, ptr %t326)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t328, ptr %l133
  br label %bb66
bb66:
  %t329 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l133
  %t330 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 108
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t329, ptr %t330
  %t331 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 109
  %t333 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %v0, ptr %t331)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t333, ptr %l135
  br label %bb67
bb67:
  %t334 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l135
  %t335 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 109
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t334, ptr %t335
  %t336 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 110
  %t338 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t336)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t338, ptr %l137
  br label %bb68
bb68:
  %t339 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l137
  %t340 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 110
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t339, ptr %t340
  %t341 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 111
  %t343 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %v0, ptr %t341)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t343, ptr %l139
  br label %bb69
bb69:
  %t344 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l139
  %t345 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 111
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t344, ptr %t345
  %t346 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 112
  %t348 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t346)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t348, ptr %l141
  br label %bb70
bb70:
  %t349 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l141
  %t350 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 112
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t349, ptr %t350
  %t351 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 113
  %t353 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e(ptr %v0, ptr %t351)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t353, ptr %l143
  br label %bb71
bb71:
  %t354 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l143
  %t355 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 113
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t354, ptr %t355
  %t356 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 114
  %t358 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e(ptr %v0, ptr %t356)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t358, ptr %l145
  br label %bb72
bb72:
  %t359 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l145
  %t360 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 114
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t359, ptr %t360
  %t361 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 116
  %t363 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %v0, ptr %t361)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t363, ptr %l147
  br label %bb73
bb73:
  %t364 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l147
  %t365 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 116
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t364, ptr %t365
  %t366 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 117
  %t368 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20I64_3e(ptr %v0, ptr %t366)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t368, ptr %l149
  br label %bb74
bb74:
  %t369 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l149
  %t370 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 117
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t369, ptr %t370
  %t371 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 118
  %t373 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20I64_3e(ptr %v0, ptr %t371)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t373, ptr %l151
  br label %bb75
bb75:
  %t374 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l151
  %t375 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 118
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t374, ptr %t375
  %t376 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 119
  %t378 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_Hdb5ecd177dbbe8266fbcd9adcd3a6e46(ptr %v0, ptr %t376)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t378, ptr %l153
  br label %bb76
bb76:
  %t379 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l153
  %t380 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 119
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t379, ptr %t380
  %t381 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 121
  %t383 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t381)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t383, ptr %l155
  br label %bb77
bb77:
  %t384 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l155
  %t385 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 121
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t384, ptr %t385
  %t386 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 122
  %t388 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t386)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t388, ptr %l157
  br label %bb78
bb78:
  %t389 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l157
  %t390 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 122
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t389, ptr %t390
  %t391 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 123
  %t393 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI64_3e_3e(ptr %v0, ptr %t391)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t393, ptr %l159
  br label %bb79
bb79:
  %t394 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l159
  %t395 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 123
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t394, ptr %t395
  %t396 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 129
  %t398 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t396)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t398, ptr %l161
  br label %bb80
bb80:
  %t399 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l161
  %t400 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 129
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t399, ptr %t400
  %t401 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 134
  %t403 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t401)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t403, ptr %l163
  br label %bb81
bb81:
  %t404 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l163
  %t405 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 134
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t404, ptr %t405
  %t406 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 135
  %t408 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t406)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t408, ptr %l165
  br label %bb82
bb82:
  %t409 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l165
  %t410 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 135
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t409, ptr %t410
  %t411 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 149
  %t413 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_Haa0337ae63b732d75ee2e0a37f501ff2(ptr %v0, ptr %t411)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t413, ptr %l167
  br label %bb83
bb83:
  %t414 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l167
  %t415 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 149
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t414, ptr %t415
  %t416 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 150
  %t418 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_Haa0337ae63b732d75ee2e0a37f501ff2(ptr %v0, ptr %t416)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t418, ptr %l169
  br label %bb84
bb84:
  %t419 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l169
  %t420 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 150
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t419, ptr %t420
  %t421 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 151
  %t423 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %v0, ptr %t421)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t423, ptr %l171
  br label %bb85
bb85:
  %t424 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l171
  %t425 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 151
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t424, ptr %t425
  %t426 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 152
  %t428 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_Haa0337ae63b732d75ee2e0a37f501ff2(ptr %v0, ptr %t426)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t428, ptr %l173
  br label %bb86
bb86:
  %t429 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l173
  %t430 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 152
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t429, ptr %t430
  %t431 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 153
  %t433 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20I64_3e(ptr %v0, ptr %t431)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t433, ptr %l175
  br label %bb87
bb87:
  %t434 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l175
  %t435 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 153
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t434, ptr %t435
  %t436 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 154
  %t438 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t436)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t438, ptr %l177
  br label %bb88
bb88:
  %t439 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l177
  %t440 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 154
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t439, ptr %t440
  %t441 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 155
  %t443 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %v0, ptr %t441)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t443, ptr %l179
  br label %bb89
bb89:
  %t444 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l179
  %t445 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 155
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t444, ptr %t445
  %t446 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 156
  %t448 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %v0, ptr %t446)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t448, ptr %l181
  br label %bb90
bb90:
  %t449 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l181
  %t450 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 156
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t449, ptr %t450
  %t451 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 158
  %t453 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20I64_3e(ptr %v0, ptr %t451)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t453, ptr %l183
  br label %bb91
bb91:
  %t454 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l183
  %t455 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 158
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t454, ptr %t455
  %t456 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 160
  %t458 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aVersions_26_3e(ptr %v0, ptr %t456)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t458, ptr %l185
  br label %bb92
bb92:
  %t459 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l185
  %t460 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 160
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t459, ptr %t460
  %t461 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 161
  %t463 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t461)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t463, ptr %l187
  br label %bb93
bb93:
  %t464 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l187
  %t465 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 161
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t464, ptr %t465
  %t466 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 162
  %t468 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t466)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t468, ptr %l189
  br label %bb94
bb94:
  %t469 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l189
  %t470 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 162
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t469, ptr %t470
  %t471 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 163
  %t473 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t471)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t473, ptr %l191
  br label %bb95
bb95:
  %t474 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l191
  %t475 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 163
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t474, ptr %t475
  %t476 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 164
  %t478 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t476)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t478, ptr %l193
  br label %bb96
bb96:
  %t479 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l193
  %t480 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 164
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t479, ptr %t480
  %t481 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 165
  %t483 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %v0, ptr %t481)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t483, ptr %l195
  br label %bb97
bb97:
  %t484 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l195
  %t485 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 165
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t484, ptr %t485
  %t486 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 166
  %t488 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t486)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t488, ptr %l197
  br label %bb98
bb98:
  %t489 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l197
  %t490 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 166
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t489, ptr %t490
  %t491 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 167
  %t493 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t491)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t493, ptr %l199
  br label %bb99
bb99:
  %t494 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l199
  %t495 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 167
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t494, ptr %t495
  %t496 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 168
  %t498 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t496)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t498, ptr %l201
  br label %bb100
bb100:
  %t499 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l201
  %t500 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 168
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t499, ptr %t500
  %t501 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 169
  %t503 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e(ptr %v0, ptr %t501)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t503, ptr %l203
  br label %bb101
bb101:
  %t504 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l203
  %t505 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 169
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t504, ptr %t505
  %t506 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 170
  %t508 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_H02d7c113dc0c806945ae5d5c07175526(ptr %v0, ptr %t506)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t508, ptr %l205
  br label %bb102
bb102:
  %t509 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l205
  %t510 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 170
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t509, ptr %t510
  %t511 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 171
  %t513 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_Haa0337ae63b732d75ee2e0a37f501ff2(ptr %v0, ptr %t511)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t513, ptr %l207
  br label %bb103
bb103:
  %t514 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l207
  %t515 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 171
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t514, ptr %t515
  %t516 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 172
  %t518 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t516)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t518, ptr %l209
  br label %bb104
bb104:
  %t519 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l209
  %t520 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 172
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t519, ptr %t520
  %t521 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 174
  %t523 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t521)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t523, ptr %l211
  br label %bb105
bb105:
  %t524 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l211
  %t525 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 174
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t524, ptr %t525
  %t526 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 175
  %t528 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t526)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t528, ptr %l213
  br label %bb106
bb106:
  %t529 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l213
  %t530 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 175
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t529, ptr %t530
  %t531 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 176
  %t533 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %v0, ptr %t531)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t533, ptr %l215
  br label %bb107
bb107:
  %t534 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l215
  %t535 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 176
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t534, ptr %t535
  %t536 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 177
  %t538 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %v0, ptr %t536)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t538, ptr %l217
  br label %bb108
bb108:
  %t539 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l217
  %t540 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 177
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t539, ptr %t540
  %t541 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 179
  %t543 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t541)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t543, ptr %l219
  br label %bb109
bb109:
  %t544 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l219
  %t545 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 179
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t544, ptr %t545
  %t546 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 180
  %t548 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t546)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t548, ptr %l221
  br label %bb110
bb110:
  %t549 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l221
  %t550 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 180
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t549, ptr %t550
  %t551 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 181
  %t553 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t551)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t553, ptr %l223
  br label %bb111
bb111:
  %t554 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l223
  %t555 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 181
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t554, ptr %t555
  %t556 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 182
  %t558 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %v0, ptr %t556)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t558, ptr %l225
  br label %bb112
bb112:
  %t559 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l225
  %t560 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 182
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t559, ptr %t560
  %t561 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 183
  %t563 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t561)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t563, ptr %l227
  br label %bb113
bb113:
  %t564 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l227
  %t565 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 183
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t564, ptr %t565
  %t566 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 186
  %t568 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fscope_3averAtom_2c_20I64_3e(ptr %v0, ptr %t566)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t568, ptr %l229
  br label %bb114
bb114:
  %t569 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l229
  %t570 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 186
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t569, ptr %t570
  %t571 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 187
  %t573 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %v0, ptr %t571)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t573, ptr %l231
  br label %bb115
bb115:
  %t574 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l231
  %t575 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 187
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t574, ptr %t575
  %t576 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 188
  %t578 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e(ptr %v0, ptr %t576)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t578, ptr %l233
  br label %bb116
bb116:
  %t579 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l233
  %t580 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 188
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t579, ptr %t580
  %t581 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 189
  %t583 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %v0, ptr %t581)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t583, ptr %l235
  br label %bb117
bb117:
  %t584 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l235
  %t585 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 189
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t584, ptr %t585
  %t586 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 192
  %t588 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t586)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t588, ptr %l237
  br label %bb118
bb118:
  %t589 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l237
  %t590 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 192
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t589, ptr %t590
  %t591 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 193
  %t593 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t591)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t593, ptr %l239
  br label %bb119
bb119:
  %t594 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l239
  %t595 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 193
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t594, ptr %t595
  %t596 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 194
  %t598 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t596)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t598, ptr %l241
  br label %bb120
bb120:
  %t599 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l241
  %t600 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 194
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t599, ptr %t600
  %t601 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 195
  %t603 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t601)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t603, ptr %l243
  br label %bb121
bb121:
  %t604 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l243
  %t605 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 195
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t604, ptr %t605
  %t606 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 216
  %t608 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_H33ad8677ba7b567a135a5f5a3960fb01(ptr %v0, ptr %t606)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t608, ptr %l245
  br label %bb122
bb122:
  %t609 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l245
  %t610 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 216
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t609, ptr %t610
  %t611 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 219
  %t613 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t611)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t613, ptr %l247
  br label %bb123
bb123:
  %t614 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l247
  %t615 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 219
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t614, ptr %t615
  %t616 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 221
  %t618 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t616)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t618, ptr %l249
  br label %bb124
bb124:
  %t619 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l249
  %t620 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 221
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t619, ptr %t620
  %t621 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 222
  %t623 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %v0, ptr %t621)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t623, ptr %l251
  br label %bb125
bb125:
  %t624 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l251
  %t625 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 222
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t624, ptr %t625
  %t626 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 223
  %t628 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20I64_3e(ptr %v0, ptr %t626)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t628, ptr %l253
  br label %bb126
bb126:
  %t629 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l253
  %t630 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 223
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t629, ptr %t630
  %t631 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 224
  %t633 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %v0, ptr %t631)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t633, ptr %l255
  br label %bb127
bb127:
  %t634 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l255
  %t635 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 224
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t634, ptr %t635
  %t636 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 225
  %t638 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %t636)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t638, ptr %l257
  br label %bb128
bb128:
  %t639 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l257
  %t640 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 225
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t639, ptr %t640
  %t641 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 228
  %t642 = load { i64, ptr }, ptr %t641, !tbaa !27
  store { i64, ptr } %t642, ptr %l258, !tbaa !27
  %t643 = load { i64, ptr }, ptr %l258, !tbaa !27
  %t644 = extractvalue { i64, ptr } %t643, 0
  store i64 %t644, ptr %l259, !tbaa !24
  %t645 = load i64, ptr %l259, !tbaa !24
  %t646 = mul i64 %t645, 1
  %t647 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t646)
  %t648 = insertvalue { i64, ptr } undef, i64 %t645, 0
  %t649 = insertvalue { i64, ptr } %t648, ptr %t647, 1
  store { i64, ptr } %t649, ptr %l260, !tbaa !27
  %t650 = getelementptr { i64, ptr }, ptr %l260, i32 0, i32 1
  %t651 = load ptr, ptr %t650, !tbaa !27
  %t652 = getelementptr { i64, ptr }, ptr %l258, i32 0, i32 1
  %t653 = load ptr, ptr %t652, !tbaa !27
  %t654 = load i64, ptr %l259, !tbaa !24
  %t655 = mul i64 %t654, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t651, ptr %t653, i64 %t655, i1 false)
  %t656 = load { i64, ptr }, ptr %l260, !tbaa !27
  %t657 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 228
  store { i64, ptr } %t656, ptr %t657, !tbaa !27
  %t658 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 231
  %t660 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e(ptr %v0, ptr %t658)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t660, ptr %l262
  br label %bb129
bb129:
  %t661 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l262
  %t662 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 231
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t661, ptr %t662
  %t663 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 232
  %t665 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %v0, ptr %t663)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t665, ptr %l264
  br label %bb130
bb130:
  %t666 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l264
  %t667 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 232
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t666, ptr %t667
  %t668 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 233
  %t670 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %v0, ptr %t668)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t670, ptr %l266
  br label %bb131
bb131:
  %t671 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l266
  %t672 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 233
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t671, ptr %t672
  %t673 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 234
  %t675 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %v0, ptr %t673)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t675, ptr %l268
  br label %bb132
bb132:
  %t676 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l268
  %t677 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 234
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t676, ptr %t677
  %t678 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 235
  %t680 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3ccompiler_2ftyped_3aCapture_26_3e_3e(ptr %v0, ptr %t678)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t680, ptr %l270
  br label %bb133
bb133:
  %t681 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l270
  %t682 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 235
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t681, ptr %t682
  %t683 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 236
  %t685 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t683)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t685, ptr %l272
  br label %bb134
bb134:
  %t686 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l272
  %t687 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 236
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t686, ptr %t687
  %t688 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 239
  %t690 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_H914f32a339b5444c6d16c69a20d2d561(ptr %v0, ptr %t688)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t690, ptr %l274
  br label %bb135
bb135:
  %t691 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l274
  %t692 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 239
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t691, ptr %t692
  %t693 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 240
  %t695 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %v0, ptr %t693)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t695, ptr %l276
  br label %bb136
bb136:
  %t696 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l276
  %t697 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 240
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t696, ptr %t697
  %t698 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 241
  %t700 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t698)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t700, ptr %l278
  br label %bb137
bb137:
  %t701 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l278
  %t702 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 241
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t701, ptr %t702
  %t703 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 242
  %t705 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %v0, ptr %t703)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t705, ptr %l280
  br label %bb138
bb138:
  %t706 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l280
  %t707 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 242
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t706, ptr %t707
  %t708 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 249
  %t710 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec__H3d323b423d49e8dd9f04e04715566ac1(ptr %v0, ptr %t708)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t710, ptr %l282
  br label %bb139
bb139:
  %t711 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l282
  %t712 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 249
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t711, ptr %t712
  %t713 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 250
  %t715 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_Hf0da9692a6959d4aeac270438b2ff1fc(ptr %v0, ptr %t713)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t715, ptr %l284
  br label %bb140
bb140:
  %t716 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l284
  %t717 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 250
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t716, ptr %t717
  %t718 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 251
  %t720 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t718)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t720, ptr %l286
  br label %bb141
bb141:
  %t721 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l286
  %t722 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 251
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t721, ptr %t722
  %t723 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 252
  %t725 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t723)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t725, ptr %l288
  br label %bb142
bb142:
  %t726 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l288
  %t727 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 252
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t726, ptr %t727
  %t728 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 253
  %t730 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e(ptr %v0, ptr %t728)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t730, ptr %l290
  br label %bb143
bb143:
  %t731 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l290
  %t732 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 253
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t731, ptr %t732
  %t733 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 254
  %t735 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t733)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t735, ptr %l292
  br label %bb144
bb144:
  %t736 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l292
  %t737 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 254
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t736, ptr %t737
  %t738 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 255
  %t740 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e(ptr %v0, ptr %t738)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t740, ptr %l294
  br label %bb145
bb145:
  %t741 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l294
  %t742 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 255
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t741, ptr %t742
  %t743 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 256
  %t745 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %t743)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t745, ptr %l296
  br label %bb146
bb146:
  %t746 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l296
  %t747 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 256
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t746, ptr %t747
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l1, i64 8968, i1 false)
  br label %ret
ret:
  ret void
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
@olang_2esole_2ecompiler_2fscope_3aScoper_2e228 = weak hidden constant i1 false
declare void @__olang_region_release(ptr) noinline
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

@olang_2esole_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e_2e1 = weak hidden constant i1 false
@olang_2esole_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e_2e2 = weak hidden constant i1 false
@.d6 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fscope_3aGap_2e2 = weak hidden constant i1 false
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %a0) #0 {
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
  %t8 = mul i64 %t7, 80
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 80
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

@.d7 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d8 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"lift version " }>, align 8
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
declare i64 @__olang_fmt_i64(ptr, i64)
declare void @__olang_sb_add(ptr, i64)
@.d9 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" to " }>, align 8
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
  %t4 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t5 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t4, i64 %t5)
  br label %bb1
bb3:
  %t6 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t7 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t6, i64 %t7)
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t8, i64 %t9)
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr { i64, [2 x i64] }, ptr %t10, i32 0, i32 1
  %t12 = getelementptr { i32 }, ptr %t11, i32 0, i32 0
  %t13 = load i32, ptr %t12
  %t15 = sext i32 %t13 to i64
  %t16 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t17 = call i64 @__olang_fmt_i64(ptr %t16, i64 %t15)
  call void @__olang_sb_add(ptr %v0, i64 %t17)
  %t18 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t18, i64 %t19)
  br label %bb1
bb4:
  %t20 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t21 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t20, i64 %t21)
  %t22 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t22, i64 %t23)
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr { i64, [2 x i64] }, ptr %t24, i32 0, i32 1
  %t26 = getelementptr { i64 }, ptr %t25, i32 0, i32 0
  %t27 = load i64, ptr %t26
  %t29 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t30 = call i64 @__olang_fmt_i64(ptr %t29, i64 %t27)
  call void @__olang_sb_add(ptr %v0, i64 %t30)
  %t31 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t32 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t31, i64 %t32)
  br label %bb1
bb5:
  %t33 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t34 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t33, i64 %t34)
  br label %bb1
bb6:
  %t35 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t36 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t35, i64 %t36)
  %t37 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t38 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t37, i64 %t38)
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr { i64, [2 x i64] }, ptr %t39, i32 0, i32 1
  %t41 = getelementptr { i64, i64 }, ptr %t40, i32 0, i32 0
  %t42 = load i64, ptr %t41
  %t44 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t45 = call i64 @__olang_fmt_i64(ptr %t44, i64 %t42)
  call void @__olang_sb_add(ptr %v0, i64 %t45)
  %t46 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d23, i32 0, i32 1) }, 1
  %t47 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d23, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t46, i64 %t47)
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr { i64, [2 x i64] }, ptr %t48, i32 0, i32 1
  %t50 = getelementptr { i64, i64 }, ptr %t49, i32 0, i32 1
  %t51 = load i64, ptr %t50
  %t53 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t54 = call i64 @__olang_fmt_i64(ptr %t53, i64 %t51)
  call void @__olang_sb_add(ptr %v0, i64 %t54)
  %t55 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t56 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t55, i64 %t56)
  br label %bb1
bb7:
  %t57 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d24, i32 0, i32 1) }, 1
  %t58 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d24, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t57, i64 %t58)
  %t59 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t60 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t59, i64 %t60)
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr { i64, [2 x i64] }, ptr %t61, i32 0, i32 1
  %t63 = getelementptr { i64 }, ptr %t62, i32 0, i32 0
  %t64 = load i64, ptr %t63
  %t66 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t67 = call i64 @__olang_fmt_i64(ptr %t66, i64 %t64)
  call void @__olang_sb_add(ptr %v0, i64 %t67)
  %t68 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t69 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t68, i64 %t69)
  br label %bb1
bb8:
  %t70 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t71 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d25, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t70, i64 %t71)
  br label %bb1
ret:
  ret void
}

@.d10 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" | " }>, align 8
declare void @__olang_sb_done(ptr)
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@.d11 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"lift site " }>, align 8
@.d12 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" to " }>, align 8
@.d13 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" | " }>, align 8
@.d14 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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

@.d15 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fscope_3atwinTab_2e0 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20I64_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20I64_3e_2ector(ptr %v0)
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

declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
@olang_2esole_2ecompiler_2fscope_3atwinTab_2e1 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fscope_3atwinTab_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fscope_3atwinTab_2e6 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fscope_3atwinTab_2e7 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fscope_3atwinTab_2e8 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fscope_3atwinTab_2e10 = weak hidden constant i1 false
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
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, { i64, ptr } %t4)
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aGap_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20I64_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3ccompiler_2ftyped_3aBlockId_3e_3e(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20Arra_H3754a7a53f9c3df2a9a6243d146906a5(ptr %v0, { i64, ptr } %t4)
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_H90251316700b89c67e565c550ab10b7e(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cstd_2fpair_3a_Hbd2ae184353a9c65166b58ded2f03aef(ptr %v0, { i64, ptr } %t4)
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fv_H7ef236450d3feb960a8cf3e06f49bf11(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std__H46e9870415440eb929428c107005dab1(ptr %v0, { i64, ptr } %t4)
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fv_H09c3079d182b8cef4a686eac89911323(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std__Heb206f2e84d8edcc6bd0c4cf1e4ad9b1(ptr %v0, { i64, ptr } %t4)
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fv_H1486ed990d77c8f720439dfec9d6318c(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std__H820e5950ca8610a4db942db17cebed6e(ptr %v0, { i64, ptr } %t4)
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_Hdb5ecd177dbbe8266fbcd9adcd3a6e46(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI64_3e_3e(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std__H57d5c8605cc7fd44e810264046d9b247(ptr %v0, { i64, ptr } %t4)
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_Haa0337ae63b732d75ee2e0a37f501ff2(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aVersions_26_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_H02d7c113dc0c806945ae5d5c07175526(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cstd_2fpair_3a_H7b35f03bb561057eca2e7862ee253215(ptr %v0, { i64, ptr } %t4)
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fscope_3averAtom_2c_20I64_3e(ptr %v0, ptr %a0) #0 {
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
  %t8 = mul i64 %t7, 72
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 72
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_H33ad8677ba7b567a135a5f5a3960fb01(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3ccompiler_2ftyped_3aCapture_26_3e_3e(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20Arra_Hb5684bfafa29c4cae0e6f1c5df0e58ef(ptr %v0, { i64, ptr } %t4)
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_H914f32a339b5444c6d16c69a20d2d561(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cstd_2fpair_3a_H22e6af9a6dfb33c1c3ba8b840b708334(ptr %v0, { i64, ptr } %t4)
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec__H3d323b423d49e8dd9f04e04715566ac1(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3acompRun_26_3e_3e(ptr %v0, { i64, ptr } %t4)
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_Hf0da9692a6959d4aeac270438b2ff1fc(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e(ptr %v0, ptr %a0) #0 {
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

declare ptr @__olang_sb_grow(ptr, i64) noinline
@.d16 = private unnamed_addr constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"scope.Term.None" }>, align 8
@.d17 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"scope.Term.Block" }>, align 8
@.d18 = private unnamed_addr constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d19 = private unnamed_addr constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d20 = private unnamed_addr constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"scope.Term.Var" }>, align 8
@.d21 = private unnamed_addr constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"scope.Term.Program" }>, align 8
@.d22 = private unnamed_addr constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"scope.Term.Derived" }>, align 8
@.d23 = private unnamed_addr constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d24 = private unnamed_addr constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"scope.Term.Set" }>, align 8
@.d25 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"scope.Term.Untraced" }>, align 8
define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"compiler/typed:Plan"
  %rv = alloca { i64, ptr }
  %t16 = alloca %"compiler/typed:Plan", align 8
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t2 = extractvalue { i64, ptr } %t1, 0
  store i64 %t2, ptr %l1, !tbaa !24
  %t3 = load i64, ptr %l1, !tbaa !24
  %t4 = mul i64 %t3, 536
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
  %t15 = getelementptr %"compiler/typed:Plan", ptr %t14, i64 %t12
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ftyped_3aPlan(ptr %t16, ptr %v0, ptr %t15)
  call void @llvm.memmove.p0.p0.i64(ptr %l6, ptr %t16, i64 536, i1 false)
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load i64, ptr %l3, !tbaa !24
  %t20 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr %"compiler/typed:Plan", ptr %t21, i64 %t19
  call void @llvm.memmove.p0.p0.i64(ptr %t22, ptr %l6, i64 536, i1 false)
  %t23 = load i64, ptr %l3, !tbaa !24
  %t24 = add i64 %t23, 1
  store i64 %t24, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20Arra_H3754a7a53f9c3df2a9a6243d146906a5(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406"
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
  %t4 = mul i64 %t3, 24
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
  %t15 = getelementptr %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %t14, i64 %t12
  %t17 = call %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20Array_3ccompiler_2ftyped_3aBlockId_3e_3e(ptr %v0, ptr %t15)
  store %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" %t17, ptr %l6
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %l6
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %t22, i64 %t20
  store %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" %t19, ptr %t23
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t24, 1
  store i64 %t25, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cstd_2fpair_3a_Hbd2ae184353a9c65166b58ded2f03aef(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd"
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
  %t15 = getelementptr %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd", ptr %t14, i64 %t12
  %t17 = call %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fpair_3aPair_3cI_Hba3d3054cd7ffa4093e8aae0f585f337(ptr %v0, ptr %t15)
  store %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd" %t17, ptr %l6
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd", ptr %l6
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd", ptr %t22, i64 %t20
  store %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd" %t19, ptr %t23
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t24, 1
  store i64 %t25, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std__H46e9870415440eb929428c107005dab1(ptr %v0, { i64, ptr } %a0) #0 {
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
  %t17 = call %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelud_H5e5591591a9c0dc82035b67f3c188b05(ptr %v0, ptr %t15)
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

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std__Heb206f2e84d8edcc6bd0c4cf1e4ad9b1(ptr %v0, { i64, ptr } %a0) #0 {
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
  %t17 = call %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelud_H42ee29add8a5c225791d9887f7c78b2f(ptr %v0, ptr %t15)
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

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std__H820e5950ca8610a4db942db17cebed6e(ptr %v0, { i64, ptr } %a0) #0 {
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
  %t17 = call %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelud_Hff03c904942c15bd0aa9c7c744faa430(ptr %v0, ptr %t15)
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

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std__H57d5c8605cc7fd44e810264046d9b247(ptr %v0, { i64, ptr } %a0) #0 {
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
  %t17 = call %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI64_3e_3e(ptr %v0, ptr %t15)
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

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cstd_2fpair_3a_H7b35f03bb561057eca2e7862ee253215(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f"
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
  %t15 = getelementptr %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f", ptr %t14, i64 %t12
  %t17 = call %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fpair_3aPair_3cI_Hf236050a4c87b3db613542553d971547(ptr %v0, ptr %t15)
  store %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f" %t17, ptr %l6
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f", ptr %l6
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f", ptr %t22, i64 %t20
  store %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f" %t19, ptr %t23
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t24, 1
  store i64 %t25, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20Arra_Hb5684bfafa29c4cae0e6f1c5df0e58ef(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406"
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
  %t4 = mul i64 %t3, 24
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
  %t15 = getelementptr %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %t14, i64 %t12
  %t17 = call %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20Array_3ccompiler_2ftyped_3aCapture_26_3e_3e(ptr %v0, ptr %t15)
  store %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" %t17, ptr %l6
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %l6
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %t22, i64 %t20
  store %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" %t19, ptr %t23
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t24, 1
  store i64 %t25, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cstd_2fpair_3a_H22e6af9a6dfb33c1c3ba8b840b708334(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad"
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
  %t4 = mul i64 %t3, 120
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
  %t15 = getelementptr %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad", ptr %t14, i64 %t12
  %t17 = call %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fpair_3aPair_3cI_He76ccdd46fc8fd3edee4364d67fec2b5(ptr %v0, ptr %t15)
  store %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad" %t17, ptr %l6
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad", ptr %l6
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad", ptr %t22, i64 %t20
  store %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad" %t19, ptr %t23
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t24, 1
  store i64 %t25, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3acompRun_26_3e_3e(ptr %v0, { i64, ptr } %a0) #0 {
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
  %t17 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3acompRun_26_3e(ptr %v0, ptr %t15)
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

define linkonce_odr %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20Array_3ccompiler_2ftyped_3aBlockId_3e_3e(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %rv = alloca %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %a0
  store %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %l1, i32 0, i32 1
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
  %t19 = getelementptr %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %l1, i32 0, i32 1
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = load %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %l1
  store %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %rv
  ret %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" %rr
}

define linkonce_odr %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fpair_3aPair_3cI_Hba3d3054cd7ffa4093e8aae0f585f337(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd"
  %l3 = alloca %"compiler/scope:Placement"
  %rv = alloca %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd", ptr %a0
  store %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd", ptr %l1, i32 0, i32 1
  %t5 = call %"compiler/scope:Placement" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3aPlacement(ptr %v0, ptr %t3)
  store %"compiler/scope:Placement" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"compiler/scope:Placement", ptr %l3
  %t7 = getelementptr %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd", ptr %l1, i32 0, i32 1
  store %"compiler/scope:Placement" %t6, ptr %t7
  %t8 = load %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd", ptr %l1
  store %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd", ptr %rv
  ret %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd" %rr
}

define linkonce_odr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelud_H5e5591591a9c0dc82035b67f3c188b05(ptr %v0, ptr %a0) #0 {
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
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t3)
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

define linkonce_odr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelud_H42ee29add8a5c225791d9887f7c78b2f(ptr %v0, ptr %a0) #0 {
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
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t3)
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

define linkonce_odr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelud_Hff03c904942c15bd0aa9c7c744faa430(ptr %v0, ptr %a0) #0 {
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
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t3)
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

define linkonce_odr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI64_3e_3e(ptr %v0, ptr %a0) #0 {
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
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t3)
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

define linkonce_odr %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fpair_3aPair_3cI_Hf236050a4c87b3db613542553d971547(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f", ptr %a0
  store %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f", ptr %l1, i32 0, i32 1
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f", ptr %l1, i32 0, i32 1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = load %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f", ptr %l1
  store %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f", ptr %rv
  ret %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f" %rr
}

define linkonce_odr %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20Array_3ccompiler_2ftyped_3aCapture_26_3e_3e(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %rv = alloca %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %a0
  store %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %l1, i32 0, i32 1
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
  %t19 = getelementptr %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %l1, i32 0, i32 1
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = load %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %l1
  store %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %rv
  ret %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" %rr
}

define linkonce_odr %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fpair_3aPair_3cI_He76ccdd46fc8fd3edee4364d67fec2b5(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad"
  %l3 = alloca %"compiler/scope:fnRecs"
  %rv = alloca %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad", ptr %a0
  store %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad", ptr %l1, i32 0, i32 1
  %t5 = call %"compiler/scope:fnRecs" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRecs(ptr %v0, ptr %t3)
  store %"compiler/scope:fnRecs" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"compiler/scope:fnRecs", ptr %l3
  %t7 = getelementptr %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad", ptr %l1, i32 0, i32 1
  store %"compiler/scope:fnRecs" %t6, ptr %t7
  %t8 = load %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad", ptr %l1
  store %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad", ptr %rv
  ret %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad" %rr
}

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3acompRun_26_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"compiler/scope:Placement" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3aPlacement(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/scope:Placement"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %rv = alloca %"compiler/scope:Placement"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/scope:Placement", ptr %a0
  store %"compiler/scope:Placement" %t2, ptr %l1
  %t3 = getelementptr %"compiler/scope:Placement", ptr %l1, i32 0, i32 4
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
  %t19 = getelementptr %"compiler/scope:Placement", ptr %l1, i32 0, i32 4
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = load %"compiler/scope:Placement", ptr %l1
  store %"compiler/scope:Placement" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/scope:Placement", ptr %rv
  ret %"compiler/scope:Placement" %rr
}

declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e_2eHas_3ccompiler_2fscope_3averAtom_3e(ptr %v0, ptr %a0, %"compiler/scope:verAtom" %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e_2ePush_3ccompiler_2fscope_3averAtom_3e(ptr %v0, ptr %a0, %"compiler/scope:verAtom" %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_3e_2eAt__Hb06c5aa34d45867a1decef3b510ab43e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eletRegion(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2)
@olang_loc_94d65e4b75f62e06_97039da03323bd42 = external constant [0 x i8]
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisCursorLocal(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_96f6f37c4f8350ed_c50a63a27885a929 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eregionKind(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ealiasExpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_e45607aaa9337dcf_7e22bcf5356f305b = external constant [0 x i8]
declare ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
@olang_loc_896b3e52356ae049_f1e25ca94b788215 = external constant [0 x i8]
@olang_loc_5c964c9b753026f1_283bdb5675168efd = external constant [0 x i8]
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_b702fb1875409afc_cfbcfdec164d6e28 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare i1 @compiler_2fscope_2eisNameChar(i8 %a0)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
@olang_loc_3a30563fd2608f92_b50195cfbcc90de = external constant [0 x i8]
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisStruct(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [1 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efieldMark(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@olang_loc_ac0d17f36fa4a139_f3b1184fd7456b0d = external constant [0 x i8]
@olang_loc_7c9efa997924b168_5c902c6ea22cd1dc = external constant [0 x i8]
@olang_loc_3ccd1f5784e4c843_987dbe246adf0a17 = external constant [0 x i8]
@G_2ecompiler_2fscope_2eBndOther = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
@olang_loc_bd4ca23a40cfc0db_43a814c1b1d9691f = external constant [0 x i8]
@olang_loc_1cbcbb68212d18c9_a0b41c71999484fd = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efinds(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
@olang_loc_3e89652ff7706bd0_4686e7e94f816f94 = external constant [0 x i8]
declare { i64, [2 x i64] } @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2eFind(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efoundOr(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, { i64, [2 x i64] } %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecapPassed(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ederivedScope(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, i64 %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %a0)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehere(ptr %v0, ptr %a0)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2escopeOf(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
@olang_loc_fa10e11083db12f_27cbee13329baa3 = external constant [0 x i8]
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuildsInto(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, %"compiler/source:Span" %a2, i64 %a3, %"compiler/source:Span" %a4)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholds(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeType(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRole(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eRoleCtor = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResultFrom(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i64 @compiler_2fscope_2eflRoot(ptr %v0, ptr %a0)
declare i1 @compiler_2fscope_2eflHas(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecarried(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
@olang_loc_fd998b806b7f953d_c6e6cde82781bfb1 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFresh(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisNullLit(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v0, ptr %a0)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2echoicePeek(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_44f08e273b94dac1_2814062679ab87ad = external constant [0 x i8]
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eorder(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, { i64, [2 x i64] } %a2)
@G_2ecompiler_2fscope_2eHolds = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@olang_loc_319b840e5d0a9b30_92f3157cb26da7fc = external constant [0 x i8]
@G_2ecompiler_2fscope_2ePosDerived = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\01\00\00" }>, align 8
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParamName(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, i64 %a2)
@G_2ecompiler_2fscope_2ePosResult = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
@G_2ecompiler_2fscope_2ePosHome = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FE\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKeepsText(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, i64 %a2, i64 %a3, i64 %a4)
declare { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ederivedField(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2, i64 %a3)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eLen_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %a0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eObligations(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eExportObligation(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
@olang_loc_3d4ddf74a6173f57_410f107a77dd9b9b = external constant [0 x i8]
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edeclOf(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egiveBack(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egiveBackExpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_6ed8db51a3dfced1_45a76436772cba65 = external constant [0 x i8]
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejudge(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edropDefs(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
@olang_loc_eb1882221c8ba3ab_83c8c93664e1ea07 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fmap_3aMap_3cI64_2c_20c_H79f8cf5232af2c4206851a77600e2775(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enameSpan(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
@olang_loc_8aab7bf10c0c26_6168f58a9a2594a = external constant [0 x i8]
declare %"compiler/scope:Gap" @compiler_2fscope_3aGap_2ector(ptr %v0, ptr %v1, i64 %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
declare void @compiler_2fscope_3asummary_2ector(ptr %out, ptr %v0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hdd18cd18fee7da2cefbfd21396944747(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edropLifts(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecomponent(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i1 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eAt_3ccompiler_2ftyped_3aPlan_3e(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eSetAt_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H0d83a40c67cd8749e6caf886dac77c3a(ptr %v0, ptr %v1, ptr %a0)
declare { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cstd_2fpair_3aPair_3cI64_2c_20I6_H50b542c856ab641bdb3083563d5a1f0c(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, i1 %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwExpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2)
@olang_loc_18a5faea2cb1c4f1_869f553adf885b95 = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esummed(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecallRels(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"compiler/scope:rel" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eAt_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ederivedAt(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, i64 %a2, ptr %a3, i1 %a4, { i64, ptr } %a5)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eparamBinding(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2, { i64, ptr } %a3)
@olang_loc_8c8a5a319e38c1bd_d671b8fda2886981 = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esumBuilds(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@olang_loc_d6d71e16ab160a8c_d85efb61f7dcc5f0 = external constant [0 x i8]
@olang_loc_d50f79fefbee4394_12c4367532f3ae80 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_ebf3252f75f0963d_4d00f10623fd4f01 = external constant [0 x i8]
declare i64 @compiler_2fscope_2eflRootExpr(ptr %v0, ptr %a0)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eshownLocal(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@olang_loc_3b124163f404c032_f61e7eda275eee66 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoBuildTerm(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emadeLocal(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
@olang_loc_4046876e7ea1d159_b2112eb816f2c84d = external constant [0 x i8]
@olang_loc_79d12197ff1a95a4_7d7576a4aa48dc38 = external constant [0 x i8]
@olang_loc_2cb2f05c33c43f73_8008e731f94f8857 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewordAt(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteStrKeepCopies(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enote(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, %"compiler/source:Span" %a3, %"compiler/diagmsg:Msg" %a4)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoteMadeNamed(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, i64 %a3, { i64, ptr } %a4, i64 %a5)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eindexCall(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esetAtCall(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_3be66b99fba73c4e_1215a57d292f746a = external constant [0 x i8]
@olang_loc_9cb83d16c8558bf5_7c19eecf9e07b071 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteHeldIndexWhere(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisText(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_98ba305d5e2403e0_d6869d4c9e18247c = external constant [0 x i8]
declare { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_H68cd31c3dbcdb47f3349b834dda1e07d(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_37fd0ede1d7e00ff_4f25c812a3c753eb = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteTextCopyWhere(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fscope_2eownField(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisNumberLike(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_4e916d94ce354cf_7e8c78090f47617b = external constant [0 x i8]
declare %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etempTerm(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
@olang_loc_b55787a4eb4fe241_8ea57e4945f8f00d = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egenResult(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
@olang_loc_8b2906635595db32_8dcfaafc9c909d36 = external constant [0 x i8]
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2eAt__H2e4a6474e10b73ca754517844b8d7700(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eclaimRoot(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %v0, i64 %a0, i64 %a1)
declare { i32, { i64, [2 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H568ce559fa980123a387c6ba9ed21aca(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejoinTerm(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, { i64, [2 x i64] } %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H240bd86caf003ea6de374cb77d0dbfc6(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, { i64, [2 x i64] } %a2)
declare %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etraceAt(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epropose(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
declare %"compiler/scope:placedRow" @compiler_2fscope_3aplacedRow_2ector(ptr %v0, %"compiler/source:Span" %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hf457f2e49081178a88b1688ded3555ea(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, %"compiler/scope:placedRow" %a2)
@olang_loc_a1dfdb3aa5c3dabe_f256725844591b12 = external constant [0 x i8]
declare %"compiler/typed:SiteInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aSiteInfo_3e_2eAt_3ccompiler_2ftyped_3aSiteInfo_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2earenaValue(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekeptCall(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/scope:Val" @compiler_2fscope_2eVal_2eplain()
declare %"compiler/scope:Val" @compiler_2fscope_2eVal_2eexisting({ i64, [2 x i64] } %a0)
@olang_loc_c91b1cdc23aab6c5_bcff614648d867b1 = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2econstLiteral(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/scope:Val" @compiler_2fscope_3aVal_2ector(ptr %v0, i32 %a0, { i64, [2 x i64] } %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_Hb9b7b1d0a60c104971d2bbda63d84eec(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eSetAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2)
declare i1 @compiler_2fscope_2eflThroughRef(ptr %v0, ptr %a0)
@olang_loc_9b2b18bf4fb48614_1bb14c01aa18e3a0 = external constant [0 x i8]
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewhereLives(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartsTerm(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_99a14be980ef284f_7692c216cde3a19b = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eLen_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0)
declare { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_e18696d73c32363c_a4e51a2c5acfe520 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eSpan(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eLen_3ccompiler_2fscope_3afnRec_3e(ptr %v0, ptr %a0)
declare %"compiler/scope:fnRec" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eAt_3ccompiler_2fscope_3afnRec_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2euncovered(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i1 %a2, i32 %a3, ptr %a4)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnsParts(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSharesRefs(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epeekPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2)
@olang_loc_3adcdc5611d30137_893c219db59797b = external constant [0 x i8]
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopeVarsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShareOf(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@olang_loc_e22ca2126d036b2f_5c370e93157d3a93 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esiteLift(ptr %v0, ptr %a0, i64 %a1)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eframeHere(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eLen__H22c160154c8542d83ffe3c77c98973d0(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eAt_3ccompiler_2ftyped_3aLvalue_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_8bfac37a1f29704b_1a5bb9d5b57da78f = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %a0)
@olang_loc_f9acba08895e11a8_8a6deabb7adf677c = external constant [0 x i8]
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cmut_20comp_Hcb6fae2338a785d6927a8587899f4e85(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3acompRun_26_3e_H0296d27dcb58febef67dd9f1f1b292fb(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3acompRun_26_3e_H665b0c71977ef42adbc51fe96e6e85ee(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2easItWas(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eboundEdges(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamesOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_Hda4ef06466535e66801340e999dad217(ptr %v0, ptr %a0)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_H87a29777ccf22aa2985fa9d3c61f9cd3(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2ereaches(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fscope_3averAtom_2c_20I64_3e_H7feb99756ef3806dc9fbf0cf3216792e(ptr %v0, ptr %a0, %"compiler/scope:verAtom" %a1)
declare %"compiler/scope:verAtom" @compiler_2fscope_3averAtom_2ector(ptr %v0, i64 %a0, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i1 %a6, i64 %a7)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eatomTerm(ptr %v0, ptr %a0, %"compiler/scope:verAtom" %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ePush_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %a0, i1 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fscope_3averAtom_2c_20I64_3e_Hb2687b8a10fef42af6310eb22cb740bf(ptr %v0, ptr %a0, %"compiler/scope:verAtom" %a1, i64 %a2)
@olang_loc_99724d3349260954_a26c7c5961f375c0 = external constant [0 x i8]
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2everDefine(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2)
@olang_loc_902232b6dd8d0696_1dd7740f0a73924a = external constant [0 x i8]
@olang_loc_13bffa23f71fb67d_39ab2ce74b1a8b51 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eVersionsDiffer(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/diagmsg:Msg" %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ereachFor(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2)
@olang_loc_bb411cb9985695a8_9ee393c5b6d8495c = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteAssignedHere(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efieldDecl(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewant(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fscope_2eunPassed(ptr %v0, ptr %v1, ptr %a0)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eborrowRoot(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_2604b54ceaf5ac58_8a6d930b5e8314fc = external constant [0 x i8]
@olang_loc_fee63ae15dece90e_627da4ca7452ed92 = external constant [0 x i8]
@olang_loc_825a81e7f5138d1b_866e780fc6f79e3f = external constant [0 x i8]
@olang_loc_304a7c19a723c349_c16969d5dd317575 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fscope_2eregionLocal(ptr %v0, ptr %a0)
@olang_loc_b150ba266c9424e3_527b6225611e1947 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20I64_3e_2ector(ptr %v0)
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
