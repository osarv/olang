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
%"compiler/typed:Promote" = type { ptr, i32 }
%"compiler/typed:Make" = type { i32, i64, { i64, ptr }, ptr, i32, i32, i1 }
%"compiler/typed:Slice" = type { ptr, ptr, ptr, i32 }
%"compiler/typed:Cond" = type { ptr, ptr, ptr }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/generic:Unmet" = type { i64, i32, i32, i1, i1, i1 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/generic:varRow" = type { i64, i32, i32, i32 }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/check:Checker" = type { ptr, ptr, i1, i1, i1, i1, i64, i64, i1, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, { i64, [3 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, i64, %"compiler/source:Span", i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i32, i1, i1, %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, i32, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/text:StringBuilder", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/typed:Capture" = type { i32, ptr }
%"compiler/check:frame" = type { i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/generic:Context", i32, i32, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i32, i64, i64, i64, i1, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i64, i64, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/source:Span", i64, i1 }
%"compiler/generic:Context" = type { i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/generic:Desc" = type { i64, i32, i64, i64 }
%"compiler/typed:Seq" = type { { i64, ptr }, ptr, i1 }
%"compiler/ast:Chain" = type { { i64, ptr }, { i64, ptr } }
%"compiler/typed:Arm" = type { %"compiler/source:Span", { i64, ptr }, ptr, ptr, ptr }
%"compiler/typed:Alt" = type { ptr, { i64, ptr } }
%"compiler/typed:Bind" = type { i32, ptr }
%"compiler/check:litv" = type { i1, i1, i1, i64, double, i1, i1, i1, i128 }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/ast:Compr" = type { ptr, ptr, i32, i32, ptr, ptr, i1, i64 }
%"compiler/check:factRead" = type { i64, i64, { i64, ptr }, i1, i64, %"compiler/source:Span", { i64, ptr } }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/ast:Sig" = type { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, ptr, i1, i1, { i64, ptr } }
%"compiler/ast:Param" = type { %"compiler/source:Span", i32, ptr, ptr, { i64, ptr } }
%"compiler/check:Gap" = type { i64, %"compiler/source:Span", { i64, ptr } }
%"compiler/generic:Binding" = type { i64, i64, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/names:Entry" = type { i32, %"compiler/source:Span", i32, i1, ptr }
%"compiler/msgs:Nearest" = type { { i64, ptr }, { i64, ptr }, i64 }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/names:Resolver" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/names:Table" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/ast:Path" = type { %"compiler/source:Span", { i64, ptr } }
%"compiler/ast:VarDecl" = type { { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, i1, i1, { i64, ptr }, i1 }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"compiler/check:reflVal" = type { i1, i64, i64, { i64, ptr }, i32 }
%"compiler/names:Ref" = type { i32, i64, i64 }
%"compiler/effects:Effects" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"compiler/effects:Facts", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, { i64, ptr }, i1, %"compiler/source:Span", { i64, ptr }, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/effects:Facts" = type { i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i64, [6 x i64], i64, i64 }
define dso_local i1 @compiler_2fcheck_2eassignsAll(ptr %v0, { i64, ptr } %a0, i32 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l19 = alloca { i64, ptr }
  %l22 = alloca ptr
  %l23 = alloca i1
  %l29 = alloca i32
  %l33 = alloca ptr
  %l34 = alloca i1
  %l41 = alloca i1
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  store i32 %a1, ptr %l1
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
  br label %bb34
bb6:
  br label %bb7
bb7:
  %t22 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t22, ptr %l19, !tbaa !27
  %t23 = load i64, ptr %l3, !tbaa !24
  %t25 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr ptr, ptr %t26, i64 %t23
  %t28 = load ptr, ptr %t27, !tbaa !39
  store ptr %t28, ptr %l5, !tbaa !29
  %t30 = load ptr, ptr %l5, !tbaa !29
  store ptr %t30, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t31 = load ptr, ptr %l22, !tbaa !29
  %t32 = icmp ne ptr %t31, null
  br i1 %t32, label %bb8, label %bb9
bb8:
  %t34 = load ptr, ptr %l22, !tbaa !29
  %t35 = load i64, ptr %t34, !range !{i64 0, i64 11}
  %t37 = icmp eq i64 %t35, 8
  store i1 %t37, ptr %l23, !tbaa !21
  br label %bb9
bb9:
  %t38 = load i1, ptr %l23, !tbaa !21
  br i1 %t38, label %bb10, label %bb11
bb10:
  %t39 = load ptr, ptr %l5, !tbaa !29
  %t41 = getelementptr { i64, [8 x i64] }, ptr %t39, i32 0, i32 1
  %t42 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t41, i32 0, i32 1
  %t43 = load ptr, ptr %t42
  store ptr %t43, ptr %l6, !tbaa !29
  br label %bb12
bb11:
  br label %bb17
bb12:
  %t45 = load ptr, ptr %l6, !tbaa !29
  %t47 = call i32 @compiler_2fcheck_2esetName(ptr %v0, ptr %t45)
  store i32 %t47, ptr %l29
  br label %bb13
bb13:
  %t48 = load i32, ptr %l1, !tbaa !23
  %t49 = load i32, ptr %l29, !tbaa !23
  %t51 = icmp eq i32 %t49, %t48
  br i1 %t51, label %bb14, label %bb15
bb14:
  store i1 true, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  br label %bb32
bb17:
  %t54 = load ptr, ptr %l5, !tbaa !29
  store ptr %t54, ptr %l33, !tbaa !29
  store i1 false, ptr %l34, !tbaa !21
  %t55 = load ptr, ptr %l33, !tbaa !29
  %t56 = icmp ne ptr %t55, null
  br i1 %t56, label %bb18, label %bb19
bb18:
  %t58 = load ptr, ptr %l33, !tbaa !29
  %t59 = load i64, ptr %t58, !range !{i64 0, i64 11}
  %t61 = icmp eq i64 %t59, 7
  store i1 %t61, ptr %l34, !tbaa !21
  br label %bb19
bb19:
  %t62 = load i1, ptr %l34, !tbaa !21
  br i1 %t62, label %bb20, label %bb21
bb20:
  %t63 = load ptr, ptr %l5, !tbaa !29
  %t65 = getelementptr { i64, [8 x i64] }, ptr %t63, i32 0, i32 1
  %t66 = getelementptr { %"compiler/source:Span", ptr }, ptr %t65, i32 0, i32 1
  %t67 = load ptr, ptr %t66
  store ptr %t67, ptr %l7, !tbaa !29
  br label %bb22
bb21:
  br label %bb27
bb22:
  %t69 = load ptr, ptr %l7, !tbaa !29
  %t70 = load i32, ptr %l1, !tbaa !23
  %t73 = call i1 @compiler_2fcheck_2echainAssignsAll(ptr %v0, ptr %t69, i32 %t70)
  store i1 %t73, ptr %l41
  br label %bb23
bb23:
  %t74 = load i1, ptr %l41, !tbaa !21
  br i1 %t74, label %bb24, label %bb25
bb24:
  store i1 true, ptr %rv
  br label %ret
bb25:
  br label %bb26
bb26:
  br label %bb32
bb27:
  br i1 true, label %bb28, label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  call void @__olang_check_failed(ptr @olang_loc_fcbb335a6871d594_96c5adf6eb865188)
  unreachable
bb32:
  br label %bb33
bb33:
  %t76 = load i64, ptr %l3, !tbaa !24
  %t78 = add i64 %t76, 1
  store i64 %t78, ptr %l3, !tbaa !24
  br label %bb4
bb34:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2eclosedExpr(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i1
  %l11 = alloca ptr
  %l12 = alloca i1
  %l15 = alloca ptr
  %l16 = alloca i1
  %l19 = alloca ptr
  %l20 = alloca i1
  %l25 = alloca ptr
  %l26 = alloca i1
  %l32 = alloca i1
  %l33 = alloca ptr
  %l34 = alloca i1
  %l41 = alloca i1
  %l42 = alloca ptr
  %l43 = alloca i1
  %l49 = alloca i1
  %l50 = alloca ptr
  %l51 = alloca i1
  %l58 = alloca i1
  %l59 = alloca i1
  %l63 = alloca i1
  %l69 = alloca i1
  %l70 = alloca ptr
  %l71 = alloca i1
  %l77 = alloca i1
  %l78 = alloca ptr
  %l79 = alloca i1
  %l86 = alloca i1
  %l87 = alloca i1
  %l90 = alloca i1
  %l91 = alloca i1
  %l94 = alloca i1
  %l95 = alloca ptr
  %l96 = alloca i1
  %l103 = alloca i1
  %l104 = alloca i1
  %l108 = alloca i1
  %l114 = alloca i1
  %l115 = alloca i1
  %l118 = alloca i1
  %l119 = alloca ptr
  %l120 = alloca i1
  %l126 = alloca i1
  %l127 = alloca ptr
  %l128 = alloca i1
  %l134 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l11, !tbaa !29
  store i1 false, ptr %l12, !tbaa !21
  %t2 = load ptr, ptr %l11, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l11, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l12, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l12, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb9
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l15, !tbaa !29
  store i1 false, ptr %l16, !tbaa !21
  %t11 = load ptr, ptr %l15, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb5, label %bb6
bb5:
  %t14 = load ptr, ptr %l15, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 18}
  %t17 = icmp eq i64 %t15, 1
  store i1 %t17, ptr %l16, !tbaa !21
  br label %bb6
bb6:
  %t18 = load i1, ptr %l16, !tbaa !21
  br i1 %t18, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb114
bb10:
  %t19 = load ptr, ptr %l0, !tbaa !29
  store ptr %t19, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t20 = load ptr, ptr %l19, !tbaa !29
  %t21 = icmp ne ptr %t20, null
  br i1 %t21, label %bb11, label %bb12
bb11:
  %t23 = load ptr, ptr %l19, !tbaa !29
  %t24 = load i64, ptr %t23, !range !{i64 0, i64 18}
  %t26 = icmp eq i64 %t24, 2
  store i1 %t26, ptr %l20, !tbaa !21
  br label %bb12
bb12:
  %t27 = load i1, ptr %l20, !tbaa !21
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
  store ptr %t34, ptr %l25, !tbaa !29
  store i1 false, ptr %l26, !tbaa !21
  %t35 = load ptr, ptr %l25, !tbaa !29
  %t36 = icmp ne ptr %t35, null
  br i1 %t36, label %bb15, label %bb16
bb15:
  %t38 = load ptr, ptr %l25, !tbaa !29
  %t39 = load i64, ptr %t38, !range !{i64 0, i64 18}
  %t41 = icmp eq i64 %t39, 3
  store i1 %t41, ptr %l26, !tbaa !21
  br label %bb16
bb16:
  %t42 = load i1, ptr %l26, !tbaa !21
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
  %t51 = call i1 @compiler_2fcheck_2eclosedPlace(ptr %v0, ptr %t49)
  store i1 %t51, ptr %l32
  br label %bb20
bb20:
  %t52 = load i1, ptr %l32, !tbaa !21
  store i1 %t52, ptr %l10, !tbaa !21
  br label %bb114
bb21:
  %t53 = load ptr, ptr %l0, !tbaa !29
  store ptr %t53, ptr %l33, !tbaa !29
  store i1 false, ptr %l34, !tbaa !21
  %t54 = load ptr, ptr %l33, !tbaa !29
  %t55 = icmp ne ptr %t54, null
  br i1 %t55, label %bb22, label %bb23
bb22:
  %t57 = load ptr, ptr %l33, !tbaa !29
  %t58 = load i64, ptr %t57, !range !{i64 0, i64 18}
  %t60 = icmp eq i64 %t58, 5
  store i1 %t60, ptr %l34, !tbaa !21
  br label %bb23
bb23:
  %t61 = load i1, ptr %l34, !tbaa !21
  br i1 %t61, label %bb24, label %bb25
bb24:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr { i64, [5 x i64] }, ptr %t62, i32 0, i32 1
  %t65 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t64, i32 0, i32 2
  %t66 = load ptr, ptr %t65
  store ptr %t66, ptr %l2, !tbaa !29
  br label %bb26
bb25:
  br label %bb28
bb26:
  %t68 = load ptr, ptr %l2, !tbaa !29
  %t70 = getelementptr %"compiler/typed:Promote", ptr %t68, i32 0, i32 0
  %t71 = load ptr, ptr %t70, !tbaa !29
  %t73 = call i1 @compiler_2fcheck_2eclosedExpr(ptr %v0, ptr %t71)
  store i1 %t73, ptr %l41
  br label %bb27
bb27:
  %t74 = load i1, ptr %l41, !tbaa !21
  store i1 %t74, ptr %l10, !tbaa !21
  br label %bb114
bb28:
  %t75 = load ptr, ptr %l0, !tbaa !29
  store ptr %t75, ptr %l42, !tbaa !29
  store i1 false, ptr %l43, !tbaa !21
  %t76 = load ptr, ptr %l42, !tbaa !29
  %t77 = icmp ne ptr %t76, null
  br i1 %t77, label %bb29, label %bb30
bb29:
  %t79 = load ptr, ptr %l42, !tbaa !29
  %t80 = load i64, ptr %t79, !range !{i64 0, i64 18}
  %t82 = icmp eq i64 %t80, 6
  store i1 %t82, ptr %l43, !tbaa !21
  br label %bb30
bb30:
  %t83 = load i1, ptr %l43, !tbaa !21
  br i1 %t83, label %bb31, label %bb32
bb31:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr { i64, [5 x i64] }, ptr %t84, i32 0, i32 1
  %t87 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t86, i32 0, i32 2
  %t88 = load ptr, ptr %t87
  store ptr %t88, ptr %l3, !tbaa !29
  br label %bb33
bb32:
  br label %bb35
bb33:
  %t90 = load ptr, ptr %l3, !tbaa !29
  %t92 = call i1 @compiler_2fcheck_2eclosedCall(ptr %v0, ptr %t90)
  store i1 %t92, ptr %l49
  br label %bb34
bb34:
  %t93 = load i1, ptr %l49, !tbaa !21
  store i1 %t93, ptr %l10, !tbaa !21
  br label %bb114
bb35:
  %t94 = load ptr, ptr %l0, !tbaa !29
  store ptr %t94, ptr %l50, !tbaa !29
  store i1 false, ptr %l51, !tbaa !21
  %t95 = load ptr, ptr %l50, !tbaa !29
  %t96 = icmp ne ptr %t95, null
  br i1 %t96, label %bb36, label %bb37
bb36:
  %t98 = load ptr, ptr %l50, !tbaa !29
  %t99 = load i64, ptr %t98, !range !{i64 0, i64 18}
  %t101 = icmp eq i64 %t99, 7
  store i1 %t101, ptr %l51, !tbaa !21
  br label %bb37
bb37:
  %t102 = load i1, ptr %l51, !tbaa !21
  br i1 %t102, label %bb38, label %bb39
bb38:
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr { i64, [5 x i64] }, ptr %t103, i32 0, i32 1
  %t106 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t105, i32 0, i32 2
  %t107 = load ptr, ptr %t106
  store ptr %t107, ptr %l4, !tbaa !29
  br label %bb40
bb39:
  br label %bb52
bb40:
  %t109 = load ptr, ptr %l4, !tbaa !29
  %t111 = getelementptr %"compiler/typed:Make", ptr %t109, i32 0, i32 2
  %t112 = load { i64, ptr }, ptr %t111, !tbaa !27
  %t114 = call i1 @compiler_2fcheck_2eclosedAll(ptr %v0, { i64, ptr } %t112)
  store i1 %t114, ptr %l58
  br label %bb41
bb41:
  %t115 = load i1, ptr %l58, !tbaa !21
  br i1 %t115, label %bb42, label %bb43
bb42:
  %t116 = load ptr, ptr %l4, !tbaa !29
  %t118 = getelementptr %"compiler/typed:Make", ptr %t116, i32 0, i32 3
  %t119 = load ptr, ptr %t118, !tbaa !29
  %t121 = icmp eq ptr %t119, null
  br i1 %t121, label %bb44, label %bb45
bb43:
  store i1 false, ptr %l59, !tbaa !21
  br label %bb51
bb44:
  store i1 true, ptr %l63, !tbaa !21
  br label %bb50
bb45:
  %t123 = load ptr, ptr %l4, !tbaa !29
  %t125 = getelementptr %"compiler/typed:Make", ptr %t123, i32 0, i32 3
  %t126 = load ptr, ptr %t125, !tbaa !29
  %t128 = icmp eq ptr %t126, null
  br i1 %t128, label %bb46, label %bb47
bb46:
  call void @__olang_check_failed(ptr @olang_loc_3c4137bcc23e7cab_322d476e7cbf1657)
  unreachable
bb47:
  br label %bb48
bb48:
  %t130 = load ptr, ptr %l4, !tbaa !29
  %t132 = getelementptr %"compiler/typed:Make", ptr %t130, i32 0, i32 3
  %t133 = load ptr, ptr %t132, !tbaa !29
  %t135 = call i1 @compiler_2fcheck_2eclosedExpr(ptr %v0, ptr %t133)
  store i1 %t135, ptr %l69
  br label %bb49
bb49:
  %t136 = load i1, ptr %l69, !tbaa !21
  store i1 %t136, ptr %l63, !tbaa !21
  br label %bb50
bb50:
  %t137 = load i1, ptr %l63, !tbaa !21
  store i1 %t137, ptr %l59, !tbaa !21
  br label %bb51
bb51:
  %t138 = load i1, ptr %l59, !tbaa !21
  store i1 %t138, ptr %l10, !tbaa !21
  br label %bb114
bb52:
  %t139 = load ptr, ptr %l0, !tbaa !29
  store ptr %t139, ptr %l70, !tbaa !29
  store i1 false, ptr %l71, !tbaa !21
  %t140 = load ptr, ptr %l70, !tbaa !29
  %t141 = icmp ne ptr %t140, null
  br i1 %t141, label %bb53, label %bb54
bb53:
  %t143 = load ptr, ptr %l70, !tbaa !29
  %t144 = load i64, ptr %t143, !range !{i64 0, i64 18}
  %t146 = icmp eq i64 %t144, 9
  store i1 %t146, ptr %l71, !tbaa !21
  br label %bb54
bb54:
  %t147 = load i1, ptr %l71, !tbaa !21
  br i1 %t147, label %bb55, label %bb56
bb55:
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t150 = getelementptr { i64, [5 x i64] }, ptr %t148, i32 0, i32 1
  %t151 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t150, i32 0, i32 4
  %t152 = load { i64, ptr }, ptr %t151
  store { i64, ptr } %t152, ptr %l5, !tbaa !27
  br label %bb57
bb56:
  br label %bb59
bb57:
  %t154 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t156 = call i1 @compiler_2fcheck_2eclosedAll(ptr %v0, { i64, ptr } %t154)
  store i1 %t156, ptr %l77
  br label %bb58
bb58:
  %t157 = load i1, ptr %l77, !tbaa !21
  store i1 %t157, ptr %l10, !tbaa !21
  br label %bb114
bb59:
  %t158 = load ptr, ptr %l0, !tbaa !29
  store ptr %t158, ptr %l78, !tbaa !29
  store i1 false, ptr %l79, !tbaa !21
  %t159 = load ptr, ptr %l78, !tbaa !29
  %t160 = icmp ne ptr %t159, null
  br i1 %t160, label %bb60, label %bb61
bb60:
  %t162 = load ptr, ptr %l78, !tbaa !29
  %t163 = load i64, ptr %t162, !range !{i64 0, i64 18}
  %t165 = icmp eq i64 %t163, 10
  store i1 %t165, ptr %l79, !tbaa !21
  br label %bb61
bb61:
  %t166 = load i1, ptr %l79, !tbaa !21
  br i1 %t166, label %bb62, label %bb63
bb62:
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t169 = getelementptr { i64, [5 x i64] }, ptr %t167, i32 0, i32 1
  %t170 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t169, i32 0, i32 2
  %t171 = load ptr, ptr %t170
  store ptr %t171, ptr %l6, !tbaa !29
  br label %bb64
bb63:
  br label %bb74
bb64:
  %t173 = load ptr, ptr %l6, !tbaa !29
  %t175 = getelementptr %"compiler/typed:Slice", ptr %t173, i32 0, i32 0
  %t176 = load ptr, ptr %t175, !tbaa !29
  %t178 = call i1 @compiler_2fcheck_2eclosedPlace(ptr %v0, ptr %t176)
  store i1 %t178, ptr %l86
  br label %bb65
bb65:
  %t179 = load i1, ptr %l86, !tbaa !21
  br i1 %t179, label %bb66, label %bb67
bb66:
  %t180 = load ptr, ptr %l6, !tbaa !29
  %t182 = getelementptr %"compiler/typed:Slice", ptr %t180, i32 0, i32 1
  %t183 = load ptr, ptr %t182, !tbaa !29
  %t185 = call i1 @compiler_2fcheck_2eclosedExpr(ptr %v0, ptr %t183)
  store i1 %t185, ptr %l90
  br label %bb68
bb67:
  store i1 false, ptr %l87, !tbaa !21
  br label %bb69
bb68:
  %t186 = load i1, ptr %l90, !tbaa !21
  store i1 %t186, ptr %l87, !tbaa !21
  br label %bb69
bb69:
  %t187 = load i1, ptr %l87, !tbaa !21
  br i1 %t187, label %bb70, label %bb71
bb70:
  %t188 = load ptr, ptr %l6, !tbaa !29
  %t190 = getelementptr %"compiler/typed:Slice", ptr %t188, i32 0, i32 2
  %t191 = load ptr, ptr %t190, !tbaa !29
  %t193 = call i1 @compiler_2fcheck_2eclosedExpr(ptr %v0, ptr %t191)
  store i1 %t193, ptr %l94
  br label %bb72
bb71:
  store i1 false, ptr %l91, !tbaa !21
  br label %bb73
bb72:
  %t194 = load i1, ptr %l94, !tbaa !21
  store i1 %t194, ptr %l91, !tbaa !21
  br label %bb73
bb73:
  %t195 = load i1, ptr %l91, !tbaa !21
  store i1 %t195, ptr %l10, !tbaa !21
  br label %bb114
bb74:
  %t196 = load ptr, ptr %l0, !tbaa !29
  store ptr %t196, ptr %l95, !tbaa !29
  store i1 false, ptr %l96, !tbaa !21
  %t197 = load ptr, ptr %l95, !tbaa !29
  %t198 = icmp ne ptr %t197, null
  br i1 %t198, label %bb75, label %bb76
bb75:
  %t200 = load ptr, ptr %l95, !tbaa !29
  %t201 = load i64, ptr %t200, !range !{i64 0, i64 18}
  %t203 = icmp eq i64 %t201, 11
  store i1 %t203, ptr %l96, !tbaa !21
  br label %bb76
bb76:
  %t204 = load i1, ptr %l96, !tbaa !21
  br i1 %t204, label %bb77, label %bb78
bb77:
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t207 = getelementptr { i64, [5 x i64] }, ptr %t205, i32 0, i32 1
  %t208 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t207, i32 0, i32 2
  %t209 = load ptr, ptr %t208
  store ptr %t209, ptr %l7, !tbaa !29
  br label %bb79
bb78:
  br label %bb95
bb79:
  %t211 = load ptr, ptr %l7, !tbaa !29
  %t213 = getelementptr %"compiler/typed:Cond", ptr %t211, i32 0, i32 0
  %t214 = load ptr, ptr %t213, !tbaa !29
  %t216 = call i1 @compiler_2fcheck_2eclosedExpr(ptr %v0, ptr %t214)
  store i1 %t216, ptr %l103
  br label %bb80
bb80:
  %t217 = load i1, ptr %l103, !tbaa !21
  br i1 %t217, label %bb81, label %bb82
bb81:
  %t218 = load ptr, ptr %l7, !tbaa !29
  %t220 = getelementptr %"compiler/typed:Cond", ptr %t218, i32 0, i32 1
  %t221 = load ptr, ptr %t220, !tbaa !29
  %t223 = icmp eq ptr %t221, null
  br i1 %t223, label %bb83, label %bb84
bb82:
  store i1 false, ptr %l104, !tbaa !21
  br label %bb90
bb83:
  store i1 true, ptr %l108, !tbaa !21
  br label %bb89
bb84:
  %t225 = load ptr, ptr %l7, !tbaa !29
  %t227 = getelementptr %"compiler/typed:Cond", ptr %t225, i32 0, i32 1
  %t228 = load ptr, ptr %t227, !tbaa !29
  %t230 = icmp eq ptr %t228, null
  br i1 %t230, label %bb85, label %bb86
bb85:
  call void @__olang_check_failed(ptr @olang_loc_64e99bada124913c_2f99d6e12db86a38)
  unreachable
bb86:
  br label %bb87
bb87:
  %t232 = load ptr, ptr %l7, !tbaa !29
  %t234 = getelementptr %"compiler/typed:Cond", ptr %t232, i32 0, i32 1
  %t235 = load ptr, ptr %t234, !tbaa !29
  %t237 = call i1 @compiler_2fcheck_2eclosedExpr(ptr %v0, ptr %t235)
  store i1 %t237, ptr %l114
  br label %bb88
bb88:
  %t238 = load i1, ptr %l114, !tbaa !21
  store i1 %t238, ptr %l108, !tbaa !21
  br label %bb89
bb89:
  %t239 = load i1, ptr %l108, !tbaa !21
  store i1 %t239, ptr %l104, !tbaa !21
  br label %bb90
bb90:
  %t240 = load i1, ptr %l104, !tbaa !21
  br i1 %t240, label %bb91, label %bb92
bb91:
  %t241 = load ptr, ptr %l7, !tbaa !29
  %t243 = getelementptr %"compiler/typed:Cond", ptr %t241, i32 0, i32 2
  %t244 = load ptr, ptr %t243, !tbaa !29
  %t246 = call i1 @compiler_2fcheck_2eclosedExpr(ptr %v0, ptr %t244)
  store i1 %t246, ptr %l118
  br label %bb93
bb92:
  store i1 false, ptr %l115, !tbaa !21
  br label %bb94
bb93:
  %t247 = load i1, ptr %l118, !tbaa !21
  store i1 %t247, ptr %l115, !tbaa !21
  br label %bb94
bb94:
  %t248 = load i1, ptr %l115, !tbaa !21
  store i1 %t248, ptr %l10, !tbaa !21
  br label %bb114
bb95:
  %t249 = load ptr, ptr %l0, !tbaa !29
  store ptr %t249, ptr %l119, !tbaa !29
  store i1 false, ptr %l120, !tbaa !21
  %t250 = load ptr, ptr %l119, !tbaa !29
  %t251 = icmp ne ptr %t250, null
  br i1 %t251, label %bb96, label %bb97
bb96:
  %t253 = load ptr, ptr %l119, !tbaa !29
  %t254 = load i64, ptr %t253, !range !{i64 0, i64 18}
  %t256 = icmp eq i64 %t254, 17
  store i1 %t256, ptr %l120, !tbaa !21
  br label %bb97
bb97:
  %t257 = load i1, ptr %l120, !tbaa !21
  br i1 %t257, label %bb98, label %bb99
bb98:
  %t258 = load ptr, ptr %l0, !tbaa !29
  %t260 = getelementptr { i64, [5 x i64] }, ptr %t258, i32 0, i32 1
  %t261 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t260, i32 0, i32 2
  %t262 = load ptr, ptr %t261
  store ptr %t262, ptr %l8, !tbaa !29
  br label %bb100
bb99:
  br label %bb102
bb100:
  %t264 = load ptr, ptr %l8, !tbaa !29
  %t266 = call i1 @compiler_2fcheck_2eclosedExpr(ptr %v0, ptr %t264)
  store i1 %t266, ptr %l126
  br label %bb101
bb101:
  %t267 = load i1, ptr %l126, !tbaa !21
  store i1 %t267, ptr %l10, !tbaa !21
  br label %bb114
bb102:
  %t268 = load ptr, ptr %l0, !tbaa !29
  store ptr %t268, ptr %l127, !tbaa !29
  store i1 false, ptr %l128, !tbaa !21
  %t269 = load ptr, ptr %l127, !tbaa !29
  %t270 = icmp ne ptr %t269, null
  br i1 %t270, label %bb103, label %bb104
bb103:
  %t272 = load ptr, ptr %l127, !tbaa !29
  %t273 = load i64, ptr %t272, !range !{i64 0, i64 18}
  %t275 = icmp eq i64 %t273, 15
  store i1 %t275, ptr %l128, !tbaa !21
  br label %bb104
bb104:
  %t276 = load i1, ptr %l128, !tbaa !21
  br i1 %t276, label %bb105, label %bb106
bb105:
  %t277 = load ptr, ptr %l0, !tbaa !29
  %t279 = getelementptr { i64, [5 x i64] }, ptr %t277, i32 0, i32 1
  %t280 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t279, i32 0, i32 2
  %t281 = load ptr, ptr %t280
  store ptr %t281, ptr %l9, !tbaa !29
  br label %bb107
bb106:
  br label %bb109
bb107:
  %t283 = load ptr, ptr %l9, !tbaa !29
  %t285 = call i1 @compiler_2fcheck_2eclosedFn(ptr %v0, ptr %t283)
  store i1 %t285, ptr %l134
  br label %bb108
bb108:
  %t286 = load i1, ptr %l134, !tbaa !21
  store i1 %t286, ptr %l10, !tbaa !21
  br label %bb114
bb109:
  br i1 true, label %bb110, label %bb111
bb110:
  br label %bb112
bb111:
  br label %bb113
bb112:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb114
bb113:
  call void @__olang_check_failed(ptr @olang_loc_f407e4aa2d3806b8_dd2e5682c5fdf6f4)
  unreachable
bb114:
  %t287 = load i1, ptr %l10, !tbaa !21
  store i1 %t287, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aBlock(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l17 = alloca { i64, ptr }
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
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aStmt(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %t28)
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t37 = load i64, ptr %l4, !tbaa !24
  %t39 = add i64 %t37, 1
  store i64 %t39, ptr %l4, !tbaa !24
  br label %bb4
bb10:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebound(ptr %v0, ptr %a0, i64 %a1, i32 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i32
  %l12 = alloca i32
  %l13 = alloca %"compiler/generic:Unmet"
  %l14 = alloca i32
  %l15 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l17 = alloca %"std/prelude/text:StringBuilder"
  %l18 = alloca { i64, ptr }
  %l19 = alloca i32
  %l20 = alloca { i64, ptr }
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca { i64, ptr }
  %l24 = alloca i64
  %l25 = alloca i64
  %l30 = alloca { i64, ptr }
  %l36 = alloca i64
  %l39 = alloca i64
  %l57 = alloca { i64, ptr }
  %l62 = alloca i1
  %l64 = alloca i1
  %l69 = alloca i1
  %l71 = alloca i1
  %l72 = alloca i64
  %l76 = alloca i64
  %l82 = alloca %"compiler/generic:varRow"
  %l88 = alloca i32
  %l92 = alloca i1
  %l95 = alloca i32
  %l99 = alloca ptr
  %l100 = alloca %"compiler/source:Span"
  %l103 = alloca { i64, ptr }
  %l104 = alloca { i64, ptr }
  %l105 = alloca ptr
  %l108 = alloca ptr
  %l113 = alloca i32
  %l114 = alloca i32
  %l115 = alloca { i64, ptr }
  %l116 = alloca ptr
  %l121 = alloca %"compiler/generic:varRow"
  %l123 = alloca { i64, ptr }
  %l124 = alloca ptr
  %l129 = alloca i32
  %l130 = alloca { i64, ptr }
  %l132 = alloca %"compiler/diagmsg:Msg"
  %l133 = alloca i64
  %l141 = alloca %"compiler/generic:Unmet"
  %l149 = alloca { i64, ptr }
  %l150 = alloca { i64, ptr }
  %l153 = alloca ptr
  %l156 = alloca ptr
  %l161 = alloca i32
  %l162 = alloca i32
  %l163 = alloca { i64, ptr }
  %l164 = alloca ptr
  %l169 = alloca %"compiler/generic:varRow"
  %l171 = alloca { i64, ptr }
  %l173 = alloca ptr
  %l174 = alloca %"compiler/source:Span"
  %l177 = alloca { i64, ptr }
  %l178 = alloca { i64, ptr }
  %l179 = alloca { i64, ptr }
  %l180 = alloca { i64, ptr }
  %l181 = alloca { i64, ptr }
  %l184 = alloca { i64, ptr }
  %l185 = alloca %"compiler/diagmsg:Msg"
  %l186 = alloca i64
  %l191 = alloca i1
  %l196 = alloca %"std/prelude/text:StringBuilder"
  %l197 = alloca ptr
  %l198 = alloca %"compiler/source:Span"
  %l201 = alloca { i64, ptr }
  %l202 = alloca { i64, ptr }
  %l203 = alloca { i64, ptr }
  %l204 = alloca { i64, ptr }
  %l205 = alloca { i64, ptr }
  %l207 = alloca { i64, ptr }
  %l209 = alloca %"compiler/diagmsg:Msg"
  %l210 = alloca i64
  %l214 = alloca ptr
  %l215 = alloca %"compiler/source:Span"
  %l218 = alloca { i64, ptr }
  %l222 = alloca %"compiler/diagmsg:Msg"
  %l223 = alloca i64
  %l227 = alloca { i64, ptr }
  %l232 = alloca %"compiler/generic:varRow"
  %l239 = alloca i32
  %l242 = alloca i1
  %l247 = alloca i32
  %l252 = alloca i32
  %l258 = alloca ptr
  %l261 = alloca ptr
  %l266 = alloca i32
  %l267 = alloca i32
  %l268 = alloca { i64, ptr }
  %l271 = alloca { i64, ptr }
  %l272 = alloca i1
  %l273 = alloca i64
  %l276 = alloca i64
  %l277 = alloca i32
  %l278 = alloca ptr
  %l279 = alloca %"compiler/source:Span"
  %l282 = alloca { i64, ptr }
  %l283 = alloca { i64, ptr }
  %l284 = alloca { i64, ptr }
  %l285 = alloca { i64, ptr }
  %l286 = alloca { i64, ptr }
  %l288 = alloca i64
  %l291 = alloca i64
  %l292 = alloca i64
  %l297 = alloca { i64, ptr }
  %l300 = alloca %"compiler/diagmsg:Msg"
  %l301 = alloca i64
  %l303 = alloca ptr
  %l304 = alloca %"compiler/source:Span"
  %l306 = alloca i1
  %l307 = alloca %"compiler/diagmsg:Msg"
  %l310 = alloca { i64, ptr }
  %l312 = alloca { i64, ptr }
  %l315 = alloca %"compiler/diagmsg:Msg"
  %l318 = alloca { i64, ptr }
  %l320 = alloca { i64, ptr }
  %l322 = alloca { i64, ptr }
  %l325 = alloca %"compiler/diagmsg:Msg"
  %l326 = alloca i64
  %l328 = alloca { i64, ptr }
  %l331 = alloca i1
  %l333 = alloca i64
  %l335 = alloca ptr
  %l336 = alloca i32
  %l342 = alloca i32
  %l343 = alloca i64
  %l346 = alloca ptr
  %l347 = alloca i64
  %l348 = alloca i64
  %l351 = alloca %"compiler/diagmsg:Msg"
  %l356 = alloca i64
  %l359 = alloca ptr
  %l360 = alloca i64
  %l361 = alloca i64
  %l363 = alloca %"compiler/diagmsg:Msg"
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i32 %a2, ptr %l2
  store %"compiler/source:Span" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t7 = load i32, ptr %l2, !tbaa !23
  %t10 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t6, i32 %t7)
  store { i64, ptr } %t10, ptr %l30
  br label %bb1
bb1:
  %t11 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t12 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t12, 0
  store i64 %t14, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t16 = load i64, ptr %l6, !tbaa !24
  %t17 = load i64, ptr %l5, !tbaa !24
  %t20 = icmp sgt i64 %t16, %t17
  br i1 %t20, label %bb2, label %bb3
bb2:
  %t22 = load i64, ptr %l7, !tbaa !24
  %t24 = icmp sgt i64 %t22, 0
  br i1 %t24, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l36, !tbaa !24
  br label %bb7
bb4:
  %t26 = load i64, ptr %l6, !tbaa !24
  %t27 = load i64, ptr %l5, !tbaa !24
  %t30 = sub i64 %t26, %t27
  %t31 = load i64, ptr %l7, !tbaa !24
  %t34 = add i64 %t30, %t31
  %t36 = sub i64 %t34, 1
  %t37 = load i64, ptr %l7, !tbaa !24
  %t40 = sdiv i64 %t36, %t37
  store i64 %t40, ptr %l39, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l39, !tbaa !24
  br label %bb6
bb6:
  %t42 = load i64, ptr %l39, !tbaa !24
  store i64 %t42, ptr %l36, !tbaa !24
  br label %bb7
bb7:
  %t43 = load i64, ptr %l36, !tbaa !24
  store i64 %t43, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t44 = load i64, ptr %l9, !tbaa !24
  %t45 = load i64, ptr %l8, !tbaa !24
  %t48 = icmp slt i64 %t44, %t45
  %t50 = xor i1 %t48, true
  br i1 %t50, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb44
bb10:
  br label %bb11
bb11:
  %t52 = load i64, ptr %l5, !tbaa !24
  %t53 = load i64, ptr %l9, !tbaa !24
  %t54 = load i64, ptr %l7, !tbaa !24
  %t57 = mul i64 %t53, %t54
  %t60 = add i64 %t52, %t57
  store i64 %t60, ptr %l10, !tbaa !24
  %t62 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t62, ptr %l57, !tbaa !27
  %t63 = load i64, ptr %l10, !tbaa !24
  %t65 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !27
  %t67 = getelementptr i32, ptr %t66, i64 %t63
  %t68 = load i32, ptr %t67, !tbaa !33
  store i32 %t68, ptr %l11, !tbaa !23
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load i32, ptr %l11, !tbaa !23
  %t74 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t70, i32 %t71)
  store i1 %t74, ptr %l62
  br label %bb12
bb12:
  %t75 = load i1, ptr %l62, !tbaa !21
  %t76 = xor i1 %t75, true
  br i1 %t76, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l64, !tbaa !21
  br label %bb16
bb14:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/check:Checker", ptr %t78, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !29
  %t83 = getelementptr %"compiler/generic:Program", ptr %t81, i32 0, i32 2
  %t84 = load i32, ptr %l11, !tbaa !23
  %t87 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %t83, i32 %t84)
  store i1 %t87, ptr %l69
  br label %bb15
bb15:
  %t88 = load i1, ptr %l69, !tbaa !21
  %t89 = xor i1 %t88, true
  store i1 %t89, ptr %l64, !tbaa !21
  br label %bb16
bb16:
  %t91 = load i1, ptr %l64, !tbaa !21
  br i1 %t91, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l71, !tbaa !21
  br label %bb20
bb18:
  %t92 = load i64, ptr %l10, !tbaa !24
  store i64 %t92, ptr %l72, !tbaa !24
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/check:Checker", ptr %t93, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !29
  %t97 = load i64, ptr %l1, !tbaa !24
  %t100 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t96, i64 %t97)
  store i64 %t100, ptr %l76
  br label %bb19
bb19:
  %t101 = load i64, ptr %l72, !tbaa !24
  %t102 = load i64, ptr %l76, !tbaa !24
  %t103 = icmp sge i64 %t101, %t102
  store i1 %t103, ptr %l71, !tbaa !21
  br label %bb20
bb20:
  %t105 = load i1, ptr %l71, !tbaa !21
  br i1 %t105, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s2)
  br label %bb43
bb22:
  br label %bb23
bb23:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"compiler/check:Checker", ptr %t106, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !29
  %t110 = load i64, ptr %l1, !tbaa !24
  %t111 = load i64, ptr %l10, !tbaa !24
  %t115 = call %"compiler/generic:varRow" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarAt(ptr %v0, ptr %t109, i64 %t110, i64 %t111)
  store %"compiler/generic:varRow" %t115, ptr %l82
  br label %bb24
bb24:
  %t116 = getelementptr %"compiler/generic:varRow", ptr %l82, i32 0, i32 3
  %t117 = load i32, ptr %t116, !tbaa !23
  store i32 %t117, ptr %l12, !tbaa !23
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr %"compiler/check:Checker", ptr %t119, i32 0, i32 1
  %t122 = load ptr, ptr %t121, !tbaa !29
  %t124 = getelementptr %"compiler/generic:Program", ptr %t122, i32 0, i32 2
  %t125 = load i32, ptr %l12, !tbaa !23
  %t128 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t124, i32 %t125)
  store i32 %t128, ptr %l88
  br label %bb25
bb25:
  %t129 = load i32, ptr %l88, !range !{i32 0, i32 33}
  %t131 = trunc i64 18 to i32
  %t132 = icmp eq i32 %t129, %t131
  %t134 = xor i1 %t132, true
  br i1 %t134, label %bb26, label %bb27
bb26:
  store i1 true, ptr %l92, !tbaa !21
  br label %bb29
bb27:
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t137 = load i32, ptr %l12, !tbaa !23
  %t140 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %t136, i32 %t137)
  store i32 %t140, ptr %l95
  br label %bb28
bb28:
  %t141 = load i32, ptr %l95, !range !{i32 0, i32 6}
  %t143 = trunc i64 3 to i32
  %t144 = icmp eq i32 %t141, %t143
  %t146 = xor i1 %t144, true
  store i1 %t146, ptr %l92, !tbaa !21
  br label %bb29
bb29:
  %t148 = load i1, ptr %l92, !tbaa !21
  br i1 %t148, label %bb30, label %bb31
bb30:
  call void @__olang_scope_close(ptr %s2)
  br label %bb43
bb31:
  br label %bb32
bb32:
  %t149 = load ptr, ptr %l0, !tbaa !29
  store ptr %t149, ptr %l99, !tbaa !29
  %t150 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t150, ptr %l100
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t152 = load i32, ptr %l11, !tbaa !23
  %t155 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s2, ptr %t151, i32 %t152)
  store { i64, ptr } %t155, ptr %l103
  br label %bb33
bb33:
  %t156 = load { i64, ptr }, ptr %l103, !tbaa !27
  %t157 = extractvalue { i64, ptr } %t156, 0
  %t158 = extractvalue { i64, ptr } %t156, 1
  %t159 = mul i64 %t157, 1
  %t160 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t159)
  call void @llvm.memcpy.p0.p0.i64(ptr %t160, ptr %t158, i64 %t159, i1 false)
  %t161 = insertvalue { i64, ptr } undef, i64 %t157, 0
  %t162 = insertvalue { i64, ptr } %t161, ptr %t160, 1
  store { i64, ptr } %t162, ptr %l104, !tbaa !27
  %t163 = load ptr, ptr %l0, !tbaa !29
  store ptr %t163, ptr %l105, !tbaa !29
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t166 = getelementptr %"compiler/check:Checker", ptr %t164, i32 0, i32 1
  %t167 = load ptr, ptr %t166, !tbaa !29
  %t169 = getelementptr %"compiler/generic:Program", ptr %t167, i32 0, i32 2
  store ptr %t169, ptr %l108, !tbaa !29
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t172 = getelementptr %"compiler/check:Checker", ptr %t170, i32 0, i32 1
  %t173 = load ptr, ptr %t172, !tbaa !29
  %t175 = getelementptr %"compiler/generic:Program", ptr %t173, i32 0, i32 2
  %t176 = load i32, ptr %l12, !tbaa !23
  %t179 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t175, i32 %t176)
  store i32 %t179, ptr %l113
  br label %bb34
bb34:
  %t180 = load ptr, ptr %l108, !tbaa !29
  %t181 = load i32, ptr %l113, !tbaa !23
  %t182 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t180, i32 %t181)
  store i32 %t182, ptr %l114
  br label %bb35
bb35:
  %t183 = load ptr, ptr %l105, !tbaa !29
  %t184 = load i32, ptr %l114, !tbaa !23
  %t185 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t183, i32 %t184)
  store { i64, ptr } %t185, ptr %l115
  br label %bb36
bb36:
  %t186 = load ptr, ptr %l0, !tbaa !29
  store ptr %t186, ptr %l116, !tbaa !29
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t189 = getelementptr %"compiler/check:Checker", ptr %t187, i32 0, i32 1
  %t190 = load ptr, ptr %t189, !tbaa !29
  %t191 = load i64, ptr %l1, !tbaa !24
  %t192 = load i64, ptr %l10, !tbaa !24
  %t196 = call %"compiler/generic:varRow" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarAt(ptr %v0, ptr %t190, i64 %t191, i64 %t192)
  store %"compiler/generic:varRow" %t196, ptr %l121
  br label %bb37
bb37:
  %t197 = getelementptr %"compiler/generic:varRow", ptr %l121, i32 0, i32 1
  %t198 = load i32, ptr %t197, !tbaa !23
  %t199 = load ptr, ptr %l116, !tbaa !29
  %t201 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t199, i32 %t198)
  store { i64, ptr } %t201, ptr %l123
  br label %bb38
bb38:
  %t202 = load ptr, ptr %l0, !tbaa !29
  store ptr %t202, ptr %l124, !tbaa !29
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t205 = getelementptr %"compiler/check:Checker", ptr %t203, i32 0, i32 1
  %t206 = load ptr, ptr %t205, !tbaa !29
  %t208 = getelementptr %"compiler/generic:Program", ptr %t206, i32 0, i32 2
  %t209 = load i32, ptr %l11, !tbaa !23
  %t212 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNonNull(ptr %v0, ptr %t208, i32 %t209)
  store i32 %t212, ptr %l129
  br label %bb39
bb39:
  %t213 = load ptr, ptr %l124, !tbaa !29
  %t214 = load i32, ptr %l129, !tbaa !23
  %t215 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s2, ptr %t213, i32 %t214)
  store { i64, ptr } %t215, ptr %l130
  br label %bb40
bb40:
  %t216 = load { i64, ptr }, ptr %l130, !tbaa !27
  %t217 = extractvalue { i64, ptr } %t216, 0
  %t218 = extractvalue { i64, ptr } %t216, 1
  %t219 = mul i64 %t217, 1
  %t220 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t219)
  call void @llvm.memcpy.p0.p0.i64(ptr %t220, ptr %t218, i64 %t219, i1 false)
  %t221 = insertvalue { i64, ptr } undef, i64 %t217, 0
  %t222 = insertvalue { i64, ptr } %t221, ptr %t220, 1
  %t223 = load { i64, ptr }, ptr %l104, !tbaa !27
  %t224 = load { i64, ptr }, ptr %l115, !tbaa !27
  %t225 = load { i64, ptr }, ptr %l123, !tbaa !27
  %t227 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNullableMeetsNoTrait(ptr %s2, ptr %v0, ptr %v0, ptr %s2, ptr %s2, { i64, ptr } %t223, { i64, ptr } %t224, { i64, ptr } %t225, { i64, ptr } %t222)
  store %"compiler/diagmsg:Msg" %t227, ptr %l132
  br label %bb41
bb41:
  %t228 = load ptr, ptr %l99, !tbaa !29
  %t229 = load %"compiler/source:Span", ptr %l100
  %t230 = load %"compiler/diagmsg:Msg", ptr %l132
  %t231 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s2, ptr %t228, %"compiler/source:Span" %t229, %"compiler/diagmsg:Msg" %t230)
  store i64 %t231, ptr %l133
  br label %bb42
bb42:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb43:
  %t233 = load i64, ptr %l9, !tbaa !24
  %t235 = add i64 %t233, 1
  store i64 %t235, ptr %l9, !tbaa !24
  br label %bb8
bb44:
  %t237 = load ptr, ptr %l0, !tbaa !29
  %t239 = getelementptr %"compiler/check:Checker", ptr %t237, i32 0, i32 1
  %t240 = load ptr, ptr %t239, !tbaa !29
  %t241 = load i64, ptr %l1, !tbaa !24
  %t242 = load i32, ptr %l2, !tbaa !23
  %t246 = call %"compiler/generic:Unmet" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFirstUnmet(ptr %v0, ptr %t240, i64 %t241, i32 %t242)
  store %"compiler/generic:Unmet" %t246, ptr %l141
  br label %bb45
bb45:
  %t247 = load %"compiler/generic:Unmet", ptr %l141
  store %"compiler/generic:Unmet" %t247, ptr %l13
  %t248 = getelementptr %"compiler/generic:Unmet", ptr %l13, i32 0, i32 0
  %t249 = load i64, ptr %t248, !tbaa !24
  %t251 = icmp slt i64 %t249, 0
  br i1 %t251, label %bb46, label %bb47
bb46:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb47:
  br label %bb48
bb48:
  %t254 = load ptr, ptr %l0, !tbaa !29
  %t256 = getelementptr %"compiler/check:Checker", ptr %t254, i32 0, i32 1
  %t257 = load ptr, ptr %t256, !tbaa !29
  %t259 = getelementptr %"compiler/generic:Program", ptr %t257, i32 0, i32 2
  %t260 = load i32, ptr %l2, !tbaa !23
  %t263 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t259, i32 %t260)
  store { i64, ptr } %t263, ptr %l149
  br label %bb49
bb49:
  %t264 = load { i64, ptr }, ptr %l149, !tbaa !27
  store { i64, ptr } %t264, ptr %l150, !tbaa !27
  %t265 = getelementptr %"compiler/generic:Unmet", ptr %l13, i32 0, i32 0
  %t266 = load i64, ptr %t265, !tbaa !24
  %t268 = getelementptr { i64, ptr }, ptr %l150, i32 0, i32 1
  %t269 = load ptr, ptr %t268, !tbaa !27
  %t270 = getelementptr i32, ptr %t269, i64 %t266
  %t271 = load i32, ptr %t270, !tbaa !33
  store i32 %t271, ptr %l14, !tbaa !23
  %t273 = load ptr, ptr %l0, !tbaa !29
  store ptr %t273, ptr %l153, !tbaa !29
  %t274 = load ptr, ptr %l0, !tbaa !29
  %t276 = getelementptr %"compiler/check:Checker", ptr %t274, i32 0, i32 1
  %t277 = load ptr, ptr %t276, !tbaa !29
  %t279 = getelementptr %"compiler/generic:Program", ptr %t277, i32 0, i32 2
  store ptr %t279, ptr %l156, !tbaa !29
  %t280 = load ptr, ptr %l0, !tbaa !29
  %t282 = getelementptr %"compiler/check:Checker", ptr %t280, i32 0, i32 1
  %t283 = load ptr, ptr %t282, !tbaa !29
  %t285 = getelementptr %"compiler/generic:Program", ptr %t283, i32 0, i32 2
  %t286 = getelementptr %"compiler/generic:Unmet", ptr %l13, i32 0, i32 1
  %t287 = load i32, ptr %t286, !tbaa !23
  %t290 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t285, i32 %t287)
  store i32 %t290, ptr %l161
  br label %bb50
bb50:
  %t291 = load ptr, ptr %l156, !tbaa !29
  %t292 = load i32, ptr %l161, !tbaa !23
  %t293 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t291, i32 %t292)
  store i32 %t293, ptr %l162
  br label %bb51
bb51:
  %t294 = load ptr, ptr %l153, !tbaa !29
  %t295 = load i32, ptr %l162, !tbaa !23
  %t296 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t294, i32 %t295)
  store { i64, ptr } %t296, ptr %l163
  br label %bb52
bb52:
  %t297 = load { i64, ptr }, ptr %l163, !tbaa !27
  store { i64, ptr } %t297, ptr %l15, !tbaa !27
  %t298 = load ptr, ptr %l0, !tbaa !29
  store ptr %t298, ptr %l164, !tbaa !29
  %t299 = load ptr, ptr %l0, !tbaa !29
  %t301 = getelementptr %"compiler/check:Checker", ptr %t299, i32 0, i32 1
  %t302 = load ptr, ptr %t301, !tbaa !29
  %t303 = load i64, ptr %l1, !tbaa !24
  %t304 = getelementptr %"compiler/generic:Unmet", ptr %l13, i32 0, i32 0
  %t305 = load i64, ptr %t304, !tbaa !24
  %t309 = call %"compiler/generic:varRow" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarAt(ptr %v0, ptr %t302, i64 %t303, i64 %t305)
  store %"compiler/generic:varRow" %t309, ptr %l169
  br label %bb53
bb53:
  %t310 = getelementptr %"compiler/generic:varRow", ptr %l169, i32 0, i32 1
  %t311 = load i32, ptr %t310, !tbaa !23
  %t312 = load ptr, ptr %l164, !tbaa !29
  %t314 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t312, i32 %t311)
  store { i64, ptr } %t314, ptr %l171
  br label %bb54
bb54:
  %t315 = load { i64, ptr }, ptr %l171, !tbaa !27
  store { i64, ptr } %t315, ptr %l16, !tbaa !27
  %t316 = getelementptr %"compiler/generic:Unmet", ptr %l13, i32 0, i32 4
  %t317 = load i1, ptr %t316, !tbaa !21
  br i1 %t317, label %bb55, label %bb56
bb55:
  store %olang.scope zeroinitializer, ptr %s7
  %t319 = load ptr, ptr %l0, !tbaa !29
  store ptr %t319, ptr %l173, !tbaa !29
  %t320 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t320, ptr %l174
  %t321 = load ptr, ptr %l0, !tbaa !29
  %t322 = load i32, ptr %l14, !tbaa !23
  %t325 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s7, ptr %t321, i32 %t322)
  store { i64, ptr } %t325, ptr %l177
  br label %bb57
bb56:
  br label %bb61
bb57:
  %t326 = load { i64, ptr }, ptr %l177, !tbaa !27
  %t327 = extractvalue { i64, ptr } %t326, 0
  %t328 = extractvalue { i64, ptr } %t326, 1
  %t329 = mul i64 %t327, 1
  %t330 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t329)
  call void @llvm.memcpy.p0.p0.i64(ptr %t330, ptr %t328, i64 %t329, i1 false)
  %t331 = insertvalue { i64, ptr } undef, i64 %t327, 0
  %t332 = insertvalue { i64, ptr } %t331, ptr %t330, 1
  store { i64, ptr } %t332, ptr %l178, !tbaa !27
  %t333 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t333, ptr %l179, !tbaa !27
  %t334 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t334, ptr %l180, !tbaa !27
  %t335 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t335, ptr %l181, !tbaa !27
  %t336 = load ptr, ptr %l0, !tbaa !29
  %t337 = getelementptr %"compiler/generic:Unmet", ptr %l13, i32 0, i32 2
  %t338 = load i32, ptr %t337, !tbaa !23
  %t341 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t336, i32 %t338)
  store { i64, ptr } %t341, ptr %l184
  br label %bb58
bb58:
  %t342 = load { i64, ptr }, ptr %l178, !tbaa !27
  %t343 = load { i64, ptr }, ptr %l179, !tbaa !27
  %t344 = load { i64, ptr }, ptr %l180, !tbaa !27
  %t345 = load { i64, ptr }, ptr %l181, !tbaa !27
  %t346 = load { i64, ptr }, ptr %l184, !tbaa !27
  %t347 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eConstraintSealed(ptr %s7, ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %s7, { i64, ptr } %t342, { i64, ptr } %t343, { i64, ptr } %t344, { i64, ptr } %t345, { i64, ptr } %t346)
  store %"compiler/diagmsg:Msg" %t347, ptr %l185
  br label %bb59
bb59:
  %t348 = load ptr, ptr %l173, !tbaa !29
  %t349 = load %"compiler/source:Span", ptr %l174
  %t350 = load %"compiler/diagmsg:Msg", ptr %l185
  %t351 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s7, ptr %t348, %"compiler/source:Span" %t349, %"compiler/diagmsg:Msg" %t350)
  store i64 %t351, ptr %l186
  br label %bb60
bb60:
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb61:
  %t353 = getelementptr %"compiler/generic:Unmet", ptr %l13, i32 0, i32 5
  %t354 = load i1, ptr %t353, !tbaa !21
  br i1 %t354, label %bb62, label %bb63
bb62:
  store %olang.scope zeroinitializer, ptr %s8
  %t356 = load ptr, ptr %l0, !tbaa !29
  %t357 = getelementptr %"compiler/generic:Unmet", ptr %l13, i32 0, i32 1
  %t358 = load i32, ptr %t357, !tbaa !23
  %t361 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emembersWritten(ptr %v0, ptr %t356, i32 %t358)
  store i1 %t361, ptr %l191
  br label %bb64
bb63:
  br label %bb73
bb64:
  %t362 = load i1, ptr %l191, !tbaa !21
  %t363 = xor i1 %t362, true
  br i1 %t363, label %bb65, label %bb66
bb65:
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb66:
  br label %bb67
bb67:
  %t366 = load ptr, ptr %l0, !tbaa !29
  %t367 = getelementptr %"compiler/generic:Unmet", ptr %l13, i32 0, i32 1
  %t368 = load i32, ptr %t367, !tbaa !23
  %t371 = call %"std/prelude/text:StringBuilder" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ememberListing(ptr %v0, ptr %s8, ptr %t366, i32 %t368)
  store %"std/prelude/text:StringBuilder" %t371, ptr %l196
  br label %bb68
bb68:
  %t372 = load %"std/prelude/text:StringBuilder", ptr %l196
  store %"std/prelude/text:StringBuilder" %t372, ptr %l17
  %t373 = load ptr, ptr %l0, !tbaa !29
  store ptr %t373, ptr %l197, !tbaa !29
  %t374 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t374, ptr %l198
  %t375 = load ptr, ptr %l0, !tbaa !29
  %t376 = load i32, ptr %l14, !tbaa !23
  %t379 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s8, ptr %t375, i32 %t376)
  store { i64, ptr } %t379, ptr %l201
  br label %bb69
bb69:
  %t380 = load { i64, ptr }, ptr %l201, !tbaa !27
  %t381 = extractvalue { i64, ptr } %t380, 0
  %t382 = extractvalue { i64, ptr } %t380, 1
  %t383 = mul i64 %t381, 1
  %t384 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t383)
  call void @llvm.memcpy.p0.p0.i64(ptr %t384, ptr %t382, i64 %t383, i1 false)
  %t385 = insertvalue { i64, ptr } undef, i64 %t381, 0
  %t386 = insertvalue { i64, ptr } %t385, ptr %t384, 1
  store { i64, ptr } %t386, ptr %l202, !tbaa !27
  %t387 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t387, ptr %l203, !tbaa !27
  %t388 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t388, ptr %l204, !tbaa !27
  %t389 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t389, ptr %l205, !tbaa !27
  %t391 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s8, ptr %s8, ptr %l17)
  store { i64, ptr } %t391, ptr %l207
  br label %bb70
bb70:
  %t392 = load { i64, ptr }, ptr %l207, !tbaa !27
  %t393 = extractvalue { i64, ptr } %t392, 0
  %t394 = extractvalue { i64, ptr } %t392, 1
  %t395 = mul i64 %t393, 1
  %t396 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t395)
  call void @llvm.memcpy.p0.p0.i64(ptr %t396, ptr %t394, i64 %t395, i1 false)
  %t397 = insertvalue { i64, ptr } undef, i64 %t393, 0
  %t398 = insertvalue { i64, ptr } %t397, ptr %t396, 1
  %t399 = load { i64, ptr }, ptr %l202, !tbaa !27
  %t400 = load { i64, ptr }, ptr %l203, !tbaa !27
  %t401 = load { i64, ptr }, ptr %l204, !tbaa !27
  %t402 = load { i64, ptr }, ptr %l205, !tbaa !27
  %t404 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eConstraintClosed(ptr %s8, ptr %v0, ptr %v0, ptr %v0, ptr %s8, ptr %s8, { i64, ptr } %t399, { i64, ptr } %t400, { i64, ptr } %t401, { i64, ptr } %t402, { i64, ptr } %t398)
  store %"compiler/diagmsg:Msg" %t404, ptr %l209
  br label %bb71
bb71:
  %t405 = load ptr, ptr %l197, !tbaa !29
  %t406 = load %"compiler/source:Span", ptr %l198
  %t407 = load %"compiler/diagmsg:Msg", ptr %l209
  %t408 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s8, ptr %t405, %"compiler/source:Span" %t406, %"compiler/diagmsg:Msg" %t407)
  store i64 %t408, ptr %l210
  br label %bb72
bb72:
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb73:
  %t410 = getelementptr %"compiler/generic:Unmet", ptr %l13, i32 0, i32 3
  %t411 = load i1, ptr %t410, !tbaa !21
  %t413 = xor i1 %t411, true
  br i1 %t413, label %bb74, label %bb75
bb74:
  store %olang.scope zeroinitializer, ptr %s10
  %t415 = load ptr, ptr %l0, !tbaa !29
  store ptr %t415, ptr %l214, !tbaa !29
  %t416 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t416, ptr %l215
  %t417 = load ptr, ptr %l0, !tbaa !29
  %t418 = load i32, ptr %l14, !tbaa !23
  %t421 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s10, ptr %t417, i32 %t418)
  store { i64, ptr } %t421, ptr %l218
  br label %bb76
bb75:
  br label %bb79
bb76:
  %t422 = load { i64, ptr }, ptr %l218, !tbaa !27
  %t423 = extractvalue { i64, ptr } %t422, 0
  %t424 = extractvalue { i64, ptr } %t422, 1
  %t425 = mul i64 %t423, 1
  %t426 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t425)
  call void @llvm.memcpy.p0.p0.i64(ptr %t426, ptr %t424, i64 %t425, i1 false)
  %t427 = insertvalue { i64, ptr } undef, i64 %t423, 0
  %t428 = insertvalue { i64, ptr } %t427, ptr %t426, 1
  %t429 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t430 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t434 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eConstraintUnmet(ptr %s10, ptr %v0, ptr %v0, ptr %s10, { i64, ptr } %t428, { i64, ptr } %t429, { i64, ptr } %t430)
  store %"compiler/diagmsg:Msg" %t434, ptr %l222
  br label %bb77
bb77:
  %t435 = load ptr, ptr %l214, !tbaa !29
  %t436 = load %"compiler/source:Span", ptr %l215
  %t437 = load %"compiler/diagmsg:Msg", ptr %l222
  %t438 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s10, ptr %t435, %"compiler/source:Span" %t436, %"compiler/diagmsg:Msg" %t437)
  store i64 %t438, ptr %l223
  br label %bb78
bb78:
  call void @__olang_scope_close(ptr %s10)
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb79:
  %t440 = load ptr, ptr %l0, !tbaa !29
  %t441 = getelementptr %"compiler/generic:Unmet", ptr %l13, i32 0, i32 2
  %t442 = load i32, ptr %t441, !tbaa !23
  %t445 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t440, i32 %t442)
  store { i64, ptr } %t445, ptr %l227
  br label %bb80
bb80:
  %t446 = load { i64, ptr }, ptr %l227, !tbaa !27
  store { i64, ptr } %t446, ptr %l18, !tbaa !27
  %t447 = load ptr, ptr %l0, !tbaa !29
  %t449 = getelementptr %"compiler/check:Checker", ptr %t447, i32 0, i32 1
  %t450 = load ptr, ptr %t449, !tbaa !29
  %t451 = load i64, ptr %l1, !tbaa !24
  %t452 = getelementptr %"compiler/generic:Unmet", ptr %l13, i32 0, i32 0
  %t453 = load i64, ptr %t452, !tbaa !24
  %t457 = call %"compiler/generic:varRow" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarAt(ptr %v0, ptr %t450, i64 %t451, i64 %t453)
  store %"compiler/generic:varRow" %t457, ptr %l232
  br label %bb81
bb81:
  %t458 = getelementptr %"compiler/generic:varRow", ptr %l232, i32 0, i32 3
  %t459 = load i32, ptr %t458, !tbaa !23
  store i32 %t459, ptr %l19, !tbaa !23
  %t461 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t461, ptr %l20, !tbaa !27
  %t463 = load ptr, ptr %l0, !tbaa !29
  %t465 = getelementptr %"compiler/check:Checker", ptr %t463, i32 0, i32 1
  %t466 = load ptr, ptr %t465, !tbaa !29
  %t468 = getelementptr %"compiler/generic:Program", ptr %t466, i32 0, i32 2
  %t469 = load i32, ptr %l19, !tbaa !23
  %t472 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t468, i32 %t469)
  store i32 %t472, ptr %l239
  br label %bb82
bb82:
  %t473 = load i32, ptr %l239, !range !{i32 0, i32 33}
  %t475 = trunc i64 18 to i32
  %t476 = icmp eq i32 %t473, %t475
  br i1 %t476, label %bb83, label %bb84
bb83:
  %t478 = load ptr, ptr %l0, !tbaa !29
  %t480 = getelementptr %"compiler/check:Checker", ptr %t478, i32 0, i32 1
  %t481 = load ptr, ptr %t480, !tbaa !29
  %t483 = getelementptr %"compiler/generic:Program", ptr %t481, i32 0, i32 2
  %t484 = load i32, ptr %l19, !tbaa !23
  %t487 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t483, i32 %t484)
  store i32 %t487, ptr %l247
  br label %bb85
bb84:
  store i1 false, ptr %l242, !tbaa !21
  br label %bb87
bb85:
  %t488 = load ptr, ptr %l0, !tbaa !29
  %t490 = getelementptr %"compiler/check:Checker", ptr %t488, i32 0, i32 1
  %t491 = load ptr, ptr %t490, !tbaa !29
  %t493 = getelementptr %"compiler/generic:Program", ptr %t491, i32 0, i32 2
  %t494 = getelementptr %"compiler/generic:Unmet", ptr %l13, i32 0, i32 1
  %t495 = load i32, ptr %t494, !tbaa !23
  %t498 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t493, i32 %t495)
  store i32 %t498, ptr %l252
  br label %bb86
bb86:
  %t499 = load i32, ptr %l247, !tbaa !23
  %t500 = load i32, ptr %l252, !tbaa !23
  %t501 = icmp ne i32 %t499, %t500
  store i1 %t501, ptr %l242, !tbaa !21
  br label %bb87
bb87:
  %t503 = load i1, ptr %l242, !tbaa !21
  br i1 %t503, label %bb88, label %bb89
bb88:
  %t504 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t505 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t507 = extractvalue { i64, ptr } %t504, 1
  %t508 = extractvalue { i64, ptr } %t504, 0
  %t509 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d0, i32 0, i32 1) }, 1
  %t510 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d0, i32 0, i32 1) }, 0
  %t511 = add i64 %t508, %t510
  %t513 = extractvalue { i64, ptr } %t505, 1
  %t514 = extractvalue { i64, ptr } %t505, 0
  %t515 = add i64 %t511, %t514
  %t516 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d1, i32 0, i32 1) }, 1
  %t517 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  %t518 = add i64 %t515, %t517
  %t519 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t518)
  call void @olang_textcopy(ptr %t519, ptr %t507, i64 %t508)
  %t520 = getelementptr i8, ptr %t519, i64 %t508
  call void @olang_textcopy(ptr %t520, ptr %t509, i64 %t510)
  %t521 = getelementptr i8, ptr %t520, i64 %t510
  call void @olang_textcopy(ptr %t521, ptr %t513, i64 %t514)
  %t522 = getelementptr i8, ptr %t521, i64 %t514
  call void @olang_textcopy(ptr %t522, ptr %t516, i64 %t517)
  %t523 = insertvalue { i64, ptr } undef, i64 %t518, 0
  %t524 = insertvalue { i64, ptr } %t523, ptr %t519, 1
  %t526 = extractvalue { i64, ptr } %t524, 0
  %t527 = extractvalue { i64, ptr } %t524, 1
  %t528 = mul i64 %t526, 1
  %t529 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t528)
  call void @llvm.memcpy.p0.p0.i64(ptr %t529, ptr %t527, i64 %t528, i1 false)
  %t530 = insertvalue { i64, ptr } undef, i64 %t526, 0
  %t531 = insertvalue { i64, ptr } %t530, ptr %t529, 1
  store { i64, ptr } %t531, ptr %l20, !tbaa !27
  %t533 = load ptr, ptr %l0, !tbaa !29
  store ptr %t533, ptr %l258, !tbaa !29
  %t534 = load ptr, ptr %l0, !tbaa !29
  %t536 = getelementptr %"compiler/check:Checker", ptr %t534, i32 0, i32 1
  %t537 = load ptr, ptr %t536, !tbaa !29
  %t539 = getelementptr %"compiler/generic:Program", ptr %t537, i32 0, i32 2
  store ptr %t539, ptr %l261, !tbaa !29
  %t540 = load ptr, ptr %l0, !tbaa !29
  %t542 = getelementptr %"compiler/check:Checker", ptr %t540, i32 0, i32 1
  %t543 = load ptr, ptr %t542, !tbaa !29
  %t545 = getelementptr %"compiler/generic:Program", ptr %t543, i32 0, i32 2
  %t546 = load i32, ptr %l19, !tbaa !23
  %t549 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t545, i32 %t546)
  store i32 %t549, ptr %l266
  br label %bb90
bb89:
  br label %bb93
bb90:
  %t550 = load ptr, ptr %l261, !tbaa !29
  %t551 = load i32, ptr %l266, !tbaa !23
  %t552 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t550, i32 %t551)
  store i32 %t552, ptr %l267
  br label %bb91
bb91:
  %t553 = load ptr, ptr %l258, !tbaa !29
  %t554 = load i32, ptr %l267, !tbaa !23
  %t555 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s0, ptr %t553, i32 %t554)
  store { i64, ptr } %t555, ptr %l268
  br label %bb92
bb92:
  %t556 = load { i64, ptr }, ptr %l268, !tbaa !27
  store { i64, ptr } %t556, ptr %l15, !tbaa !27
  br label %bb93
bb93:
  %t557 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) }, ptr %l271, !tbaa !27
  %t560 = load { i64, ptr }, ptr %l271, !tbaa !27
  %t561 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %s0, { i64, ptr } %t557, { i64, ptr } %t560)
  store i1 %t561, ptr %l272
  br label %bb94
bb94:
  %t562 = load i1, ptr %l272, !tbaa !21
  br i1 %t562, label %bb95, label %bb96
bb95:
  store %olang.scope zeroinitializer, ptr %s13
  %t563 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t566 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v0, { i64, ptr } %t563, i8 46)
  %t567 = extractvalue { i32, i64 } %t566, 1
  %t568 = extractvalue { i32, i64 } %t566, 0
  store i32 %t568, ptr %l277
  %t569 = icmp ne i32 %t568, 0
  br i1 %t569, label %bb98, label %ok.570, !prof !99
ok.570:
  store i64 %t567, ptr %l276
  br label %bb97
bb96:
  br label %bb111
bb97:
  %t571 = load i64, ptr %l276, !tbaa !24
  store i64 %t571, ptr %l273, !tbaa !24
  br label %bb100
bb98:
  br label %bb99
bb99:
  store i64 -1, ptr %l273, !tbaa !24
  br label %bb100
bb100:
  %t572 = load i64, ptr %l273, !tbaa !24
  store i64 %t572, ptr %l21, !tbaa !24
  %t573 = load ptr, ptr %l0, !tbaa !29
  store ptr %t573, ptr %l278, !tbaa !29
  %t574 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t574, ptr %l279
  %t575 = load ptr, ptr %l0, !tbaa !29
  %t576 = load i32, ptr %l14, !tbaa !23
  %t579 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s13, ptr %t575, i32 %t576)
  store { i64, ptr } %t579, ptr %l282
  br label %bb101
bb101:
  %t580 = load { i64, ptr }, ptr %l282, !tbaa !27
  %t581 = extractvalue { i64, ptr } %t580, 0
  %t582 = extractvalue { i64, ptr } %t580, 1
  %t583 = mul i64 %t581, 1
  %t584 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t583)
  call void @llvm.memcpy.p0.p0.i64(ptr %t584, ptr %t582, i64 %t583, i1 false)
  %t585 = insertvalue { i64, ptr } undef, i64 %t581, 0
  %t586 = insertvalue { i64, ptr } %t585, ptr %t584, 1
  store { i64, ptr } %t586, ptr %l283, !tbaa !27
  %t587 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t587, ptr %l284, !tbaa !27
  %t588 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t588, ptr %l285, !tbaa !27
  %t589 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t589, ptr %l286, !tbaa !27
  %t590 = load i64, ptr %l21, !tbaa !24
  %t592 = add i64 %t590, 1
  store i64 %t592, ptr %l288, !tbaa !24
  %t593 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t596 = extractvalue { i64, ptr } %t593, 0
  store i64 %t596, ptr %l291, !tbaa !24
  %t597 = load { i64, ptr }, ptr %l286, !tbaa !27
  %t598 = extractvalue { i64, ptr } %t597, 0
  store i64 %t598, ptr %l292, !tbaa !24
  %t599 = load i64, ptr %l288, !tbaa !24
  %t600 = icmp sge i64 %t599, 0
  br i1 %t600, label %bb102, label %bb103
bb102:
  %t602 = load i64, ptr %l288, !tbaa !24
  %t603 = load i64, ptr %l291, !tbaa !24
  %t604 = icmp sle i64 %t602, %t603
  br i1 %t604, label %bb104, label %bb105
bb103:
  call void @__olang_check_failed(ptr @olang_loc_a9f182c570b9396_c29311a5416207fa)
  unreachable
bb104:
  %t606 = load i64, ptr %l291, !tbaa !24
  %t607 = load i64, ptr %l292, !tbaa !24
  %t608 = icmp sle i64 %t606, %t607
  br i1 %t608, label %bb106, label %bb107
bb105:
  call void @__olang_check_failed(ptr @olang_loc_a9f182c570b9396_c29311a5416207fa)
  unreachable
bb106:
  %t610 = getelementptr { i64, ptr }, ptr %l286, i32 0, i32 1
  %t611 = load ptr, ptr %t610, !tbaa !27
  %t612 = load i64, ptr %l288, !tbaa !24
  %t613 = load i64, ptr %l291, !tbaa !24
  %t614 = getelementptr i8, ptr %t611, i64 %t612
  %t615 = sub i64 %t613, %t612
  %t616 = insertvalue { i64, ptr } undef, i64 %t615, 0
  %t617 = insertvalue { i64, ptr } %t616, ptr %t614, 1
  %t619 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %s13, { i64, ptr } %t617)
  store { i64, ptr } %t619, ptr %l297
  br label %bb108
bb107:
  call void @__olang_check_failed(ptr @olang_loc_a9f182c570b9396_c29311a5416207fa)
  unreachable
bb108:
  %t620 = load { i64, ptr }, ptr %l297, !tbaa !27
  %t621 = extractvalue { i64, ptr } %t620, 0
  %t622 = extractvalue { i64, ptr } %t620, 1
  %t623 = mul i64 %t621, 1
  %t624 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t623)
  call void @llvm.memcpy.p0.p0.i64(ptr %t624, ptr %t622, i64 %t623, i1 false)
  %t625 = insertvalue { i64, ptr } undef, i64 %t621, 0
  %t626 = insertvalue { i64, ptr } %t625, ptr %t624, 1
  %t627 = load { i64, ptr }, ptr %l284, !tbaa !27
  %t628 = extractvalue { i64, ptr } %t627, 1
  %t629 = call ptr @__olang_scope_of(ptr %t628, ptr null)
  %t630 = ptrtoint ptr %t629 to i64
  %t632 = inttoptr i64 %t630 to ptr
  %t633 = load { i64, ptr }, ptr %l283, !tbaa !27
  %t634 = load { i64, ptr }, ptr %l284, !tbaa !27
  %t635 = load { i64, ptr }, ptr %l285, !tbaa !27
  %t637 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eConstraintUnmetBuilder(ptr %s13, ptr %t632, ptr %v0, ptr %s13, ptr %s13, { i64, ptr } %t633, { i64, ptr } %t634, { i64, ptr } %t635, { i64, ptr } %t626)
  store %"compiler/diagmsg:Msg" %t637, ptr %l300
  br label %bb109
bb109:
  %t638 = load ptr, ptr %l278, !tbaa !29
  %t639 = load %"compiler/source:Span", ptr %l279
  %t640 = load %"compiler/diagmsg:Msg", ptr %l300
  %t641 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s13, ptr %t638, %"compiler/source:Span" %t639, %"compiler/diagmsg:Msg" %t640)
  store i64 %t641, ptr %l301
  br label %bb110
bb110:
  call void @__olang_scope_close(ptr %s13)
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb111:
  %t643 = load ptr, ptr %l0, !tbaa !29
  store ptr %t643, ptr %l303, !tbaa !29
  %t644 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t644, ptr %l304
  %t645 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t647 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t645, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store i1 %t647, ptr %l306
  br label %bb112
bb112:
  %t648 = load i1, ptr %l306, !tbaa !21
  br i1 %t648, label %bb113, label %bb114
bb113:
  %t649 = load ptr, ptr %l0, !tbaa !29
  %t650 = load i32, ptr %l14, !tbaa !23
  %t653 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s0, ptr %t649, i32 %t650)
  store { i64, ptr } %t653, ptr %l310
  br label %bb115
bb114:
  %t654 = load ptr, ptr %l0, !tbaa !29
  %t655 = load i32, ptr %l14, !tbaa !23
  %t658 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s0, ptr %t654, i32 %t655)
  store { i64, ptr } %t658, ptr %l318
  br label %bb117
bb115:
  %t659 = load { i64, ptr }, ptr %l310, !tbaa !27
  %t660 = extractvalue { i64, ptr } %t659, 0
  %t661 = extractvalue { i64, ptr } %t659, 1
  %t662 = mul i64 %t660, 1
  %t663 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t662)
  call void @llvm.memcpy.p0.p0.i64(ptr %t663, ptr %t661, i64 %t662, i1 false)
  %t664 = insertvalue { i64, ptr } undef, i64 %t660, 0
  %t665 = insertvalue { i64, ptr } %t664, ptr %t663, 1
  %t666 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t666, ptr %l312, !tbaa !27
  %t667 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t668 = load { i64, ptr }, ptr %l312, !tbaa !27
  %t669 = extractvalue { i64, ptr } %t668, 1
  %t670 = call ptr @__olang_scope_of(ptr %t669, ptr null)
  %t671 = ptrtoint ptr %t670 to i64
  %t673 = inttoptr i64 %t671 to ptr
  %t675 = load { i64, ptr }, ptr %l312, !tbaa !27
  %t677 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eConstraintUnmetHash(ptr %s0, ptr %t673, ptr %v0, ptr %s0, { i64, ptr } %t665, { i64, ptr } %t675, { i64, ptr } %t667)
  store %"compiler/diagmsg:Msg" %t677, ptr %l315
  br label %bb116
bb116:
  %t678 = load %"compiler/diagmsg:Msg", ptr %l315
  store %"compiler/diagmsg:Msg" %t678, ptr %l307
  br label %bb119
bb117:
  %t679 = load { i64, ptr }, ptr %l318, !tbaa !27
  %t680 = extractvalue { i64, ptr } %t679, 0
  %t681 = extractvalue { i64, ptr } %t679, 1
  %t682 = mul i64 %t680, 1
  %t683 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t682)
  call void @llvm.memcpy.p0.p0.i64(ptr %t683, ptr %t681, i64 %t682, i1 false)
  %t684 = insertvalue { i64, ptr } undef, i64 %t680, 0
  %t685 = insertvalue { i64, ptr } %t684, ptr %t683, 1
  %t686 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t686, ptr %l320, !tbaa !27
  %t687 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t688 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t688, ptr %l322, !tbaa !27
  %t689 = load { i64, ptr }, ptr %l320, !tbaa !27
  %t690 = extractvalue { i64, ptr } %t689, 1
  %t691 = call ptr @__olang_scope_of(ptr %t690, ptr null)
  %t692 = ptrtoint ptr %t691 to i64
  %t693 = load { i64, ptr }, ptr %l322, !tbaa !27
  %t694 = extractvalue { i64, ptr } %t693, 1
  %t695 = call ptr @__olang_scope_of(ptr %t694, ptr null)
  %t696 = ptrtoint ptr %t695 to i64
  %t698 = inttoptr i64 %t692 to ptr
  %t700 = inttoptr i64 %t696 to ptr
  %t702 = load { i64, ptr }, ptr %l320, !tbaa !27
  %t704 = load { i64, ptr }, ptr %l322, !tbaa !27
  %t705 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eConstraintUnmetMethod(ptr %s0, ptr %t698, ptr %v0, ptr %t700, ptr %s0, { i64, ptr } %t685, { i64, ptr } %t702, { i64, ptr } %t687, { i64, ptr } %t704)
  store %"compiler/diagmsg:Msg" %t705, ptr %l325
  br label %bb118
bb118:
  %t706 = load %"compiler/diagmsg:Msg", ptr %l325
  store %"compiler/diagmsg:Msg" %t706, ptr %l307
  br label %bb119
bb119:
  %t707 = load ptr, ptr %l303, !tbaa !29
  %t708 = load %"compiler/source:Span", ptr %l304
  %t709 = load %"compiler/diagmsg:Msg", ptr %l307
  %t710 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s0, ptr %t707, %"compiler/source:Span" %t708, %"compiler/diagmsg:Msg" %t709)
  store i64 %t710, ptr %l326
  br label %bb120
bb120:
  %t711 = load i64, ptr %l326, !tbaa !24
  store i64 %t711, ptr %l22, !tbaa !24
  %t712 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t714 = call { i64, ptr } @compiler_2fcheck_2elowerFirst(ptr %v0, ptr %s0, { i64, ptr } %t712)
  store { i64, ptr } %t714, ptr %l328
  br label %bb121
bb121:
  %t715 = load { i64, ptr }, ptr %l328, !tbaa !27
  store { i64, ptr } %t715, ptr %l23, !tbaa !27
  %t716 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t717 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t720 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %v0, { i64, ptr } %t716, { i64, ptr } %t717)
  store i1 %t720, ptr %l331
  br label %bb122
bb122:
  %t721 = load i1, ptr %l331, !tbaa !21
  %t722 = xor i1 %t721, true
  br i1 %t722, label %bb123, label %bb124
bb123:
  %t724 = load ptr, ptr %l0, !tbaa !29
  %t726 = getelementptr %"compiler/check:Checker", ptr %t724, i32 0, i32 1
  %t727 = load ptr, ptr %t726, !tbaa !29
  store ptr %t727, ptr %l335, !tbaa !29
  %t728 = load i32, ptr %l14, !tbaa !23
  store i32 %t728, ptr %l336, !tbaa !23
  %t729 = load ptr, ptr %l0, !tbaa !29
  %t731 = getelementptr %"compiler/check:Checker", ptr %t729, i32 0, i32 1
  %t732 = load ptr, ptr %t731, !tbaa !29
  %t734 = getelementptr %"compiler/generic:Program", ptr %t732, i32 0, i32 0
  %t735 = load ptr, ptr %t734, !tbaa !29
  %t737 = getelementptr %"compiler/load:Loader", ptr %t735, i32 0, i32 3
  %t738 = load ptr, ptr %t737, !tbaa !29
  %t739 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t742 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %s0, ptr %t738, { i64, ptr } %t739)
  store i32 %t742, ptr %l342
  br label %bb125
bb124:
  store i64 -1, ptr %l333, !tbaa !24
  br label %bb127
bb125:
  %t743 = load ptr, ptr %l335, !tbaa !29
  %t744 = load i32, ptr %l336, !tbaa !23
  %t745 = load i32, ptr %l342, !tbaa !23
  %t746 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %t743, i32 %t744, i32 %t745)
  store i64 %t746, ptr %l343
  br label %bb126
bb126:
  %t747 = load i64, ptr %l343, !tbaa !24
  store i64 %t747, ptr %l333, !tbaa !24
  br label %bb127
bb127:
  %t748 = load i64, ptr %l333, !tbaa !24
  store i64 %t748, ptr %l24, !tbaa !24
  %t749 = load i64, ptr %l24, !tbaa !24
  %t751 = icmp sge i64 %t749, 0
  br i1 %t751, label %bb128, label %bb129
bb128:
  store %olang.scope zeroinitializer, ptr %s14
  %t753 = load ptr, ptr %l0, !tbaa !29
  store ptr %t753, ptr %l346, !tbaa !29
  %t754 = load i64, ptr %l22, !tbaa !24
  store i64 %t754, ptr %l347, !tbaa !24
  %t755 = load i64, ptr %l24, !tbaa !24
  store i64 %t755, ptr %l348, !tbaa !24
  %t756 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t757 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t760 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotePrivateSpelling(ptr %s0, ptr %v0, ptr %s14, { i64, ptr } %t756, { i64, ptr } %t757)
  store %"compiler/diagmsg:Msg" %t760, ptr %l351
  br label %bb130
bb129:
  %t761 = load ptr, ptr %l0, !tbaa !29
  %t763 = getelementptr %"compiler/check:Checker", ptr %t761, i32 0, i32 1
  %t764 = load ptr, ptr %t763, !tbaa !29
  %t765 = load i32, ptr %l14, !tbaa !23
  %t766 = getelementptr %"compiler/generic:Unmet", ptr %l13, i32 0, i32 2
  %t767 = load i32, ptr %t766, !tbaa !23
  %t771 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %t764, i32 %t765, i32 %t767)
  store i64 %t771, ptr %l356
  br label %bb132
bb130:
  %t772 = load ptr, ptr %l346, !tbaa !29
  %t773 = load i64, ptr %l347, !tbaa !24
  %t774 = load i64, ptr %l348, !tbaa !24
  %t775 = load %"compiler/diagmsg:Msg", ptr %l351
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoteAt(ptr %v0, ptr %s14, ptr %t772, i64 %t773, i64 %t774, %"compiler/diagmsg:Msg" %t775)
  br label %bb131
bb131:
  call void @__olang_scope_close(ptr %s14)
  br label %bb138
bb132:
  %t776 = load i64, ptr %l356, !tbaa !24
  store i64 %t776, ptr %l25, !tbaa !24
  %t777 = load i64, ptr %l25, !tbaa !24
  %t779 = icmp sge i64 %t777, 0
  br i1 %t779, label %bb133, label %bb134
bb133:
  store %olang.scope zeroinitializer, ptr %s16
  %t781 = load ptr, ptr %l0, !tbaa !29
  store ptr %t781, ptr %l359, !tbaa !29
  %t782 = load i64, ptr %l22, !tbaa !24
  store i64 %t782, ptr %l360, !tbaa !24
  %t783 = load i64, ptr %l25, !tbaa !24
  store i64 %t783, ptr %l361, !tbaa !24
  %t784 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t786 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteOtherSignature(ptr %v0, ptr %s16, { i64, ptr } %t784)
  store %"compiler/diagmsg:Msg" %t786, ptr %l363
  br label %bb135
bb134:
  br label %bb137
bb135:
  %t787 = load ptr, ptr %l359, !tbaa !29
  %t788 = load i64, ptr %l360, !tbaa !24
  %t789 = load i64, ptr %l361, !tbaa !24
  %t790 = load %"compiler/diagmsg:Msg", ptr %l363
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoteAt(ptr %v0, ptr %s16, ptr %t787, i64 %t788, i64 %t789, %"compiler/diagmsg:Msg" %t790)
  br label %bb136
bb136:
  call void @__olang_scope_close(ptr %s16)
  br label %bb137
bb137:
  br label %bb138
bb138:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaptureIn(ptr %v0, ptr %a0, i64 %a1, i32 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i32
  %l8 = alloca ptr
  %l9 = alloca i32
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca i64
  %l16 = alloca ptr
  %l17 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i32
  %l25 = alloca i1
  %l35 = alloca i64
  %l40 = alloca ptr
  %l45 = alloca ptr
  %l48 = alloca ptr
  %l52 = alloca %"compiler/typed:Local"
  %l64 = alloca i1
  %l66 = alloca i1
  %l69 = alloca i32
  %l72 = alloca i1
  %l76 = alloca i1
  %l77 = alloca i1
  %l82 = alloca i1
  %l83 = alloca i1
  %l92 = alloca i32
  %l105 = alloca i1
  %l107 = alloca i1
  %l112 = alloca i1
  %l119 = alloca ptr
  %l120 = alloca ptr
  %l126 = alloca %"compiler/typed:Local"
  %l127 = alloca i32
  %l134 = alloca ptr
  %l137 = alloca i32
  %l141 = alloca %"compiler/typed:Capture"
  %l145 = alloca i1
  %l146 = alloca i1
  %l151 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i64
  %t90 = alloca { i64, [4 x i64] }, align 8
  %t169 = alloca { i64, [5 x i64] }, align 8
  %t192 = alloca { i64, [5 x i64] }, align 8
  %t239 = alloca { i64, [1 x i64] }, align 8
  %t306 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a2, ptr %l2
  store %"compiler/source:Span" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 16
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_Hc8503b2b20cde402cc7bde6f68d96fc0(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store ptr %t7, ptr %l16
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l16, !tbaa !29
  store ptr %t8, ptr %l4, !tbaa !29
  %t9 = load ptr, ptr %l4, !tbaa !29
  %t11 = getelementptr %"compiler/check:frame", ptr %t9, i32 0, i32 8
  %t12 = load i32, ptr %l2, !tbaa !23
  %t15 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H2a27ec2ae5362b2f0ac6d54f3e063c70(ptr %v0, ptr %t11, i32 %t12)
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
  store i64 %t21, ptr %l5, !tbaa !24
  %t22 = load i64, ptr %l5, !tbaa !24
  %t24 = icmp sge i64 %t22, 0
  br i1 %t24, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l25, !tbaa !21
  br label %bb8
bb7:
  %t26 = load ptr, ptr %l4, !tbaa !29
  %t28 = getelementptr %"compiler/check:frame", ptr %t26, i32 0, i32 19
  %t29 = load i64, ptr %t28, !tbaa !24
  %t31 = icmp slt i64 %t29, 0
  store i1 %t31, ptr %l25, !tbaa !21
  br label %bb8
bb8:
  %t33 = load i1, ptr %l25, !tbaa !21
  br i1 %t33, label %bb9, label %bb10
bb9:
  %t34 = load i64, ptr %l5, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t34, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load ptr, ptr %l4, !tbaa !29
  %t39 = getelementptr %"compiler/check:frame", ptr %t37, i32 0, i32 19
  %t40 = load i64, ptr %t39, !tbaa !24
  %t41 = load i32, ptr %l2, !tbaa !23
  %t42 = load %"compiler/source:Span", ptr %l3
  %t47 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaptureIn(ptr %v0, ptr %t36, i64 %t40, i32 %t41, %"compiler/source:Span" %t42)
  store i64 %t47, ptr %l35
  br label %bb12
bb12:
  %t48 = load i64, ptr %l35, !tbaa !24
  store i64 %t48, ptr %l6, !tbaa !24
  %t49 = load i64, ptr %l6, !tbaa !24
  %t51 = icmp slt i64 %t49, 0
  br i1 %t51, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/check:Checker", ptr %t54, i32 0, i32 14
  store ptr %t56, ptr %l40, !tbaa !29
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/check:Checker", ptr %t57, i32 0, i32 16
  %t60 = load ptr, ptr %l4, !tbaa !29
  %t62 = getelementptr %"compiler/check:frame", ptr %t60, i32 0, i32 19
  %t63 = load i64, ptr %t62, !tbaa !24
  %t66 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_Hc8503b2b20cde402cc7bde6f68d96fc0(ptr %v0, ptr %v0, ptr %t59, i64 %t63)
  store ptr %t66, ptr %l45
  br label %bb16
bb16:
  %t67 = load ptr, ptr %l45, !tbaa !29
  %t69 = getelementptr %"compiler/check:frame", ptr %t67, i32 0, i32 0
  %t70 = load i64, ptr %t69, !tbaa !24
  %t71 = load ptr, ptr %l40, !tbaa !29
  %t73 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t71, i64 %t70)
  store ptr %t73, ptr %l48
  br label %bb17
bb17:
  %t74 = load ptr, ptr %l48, !tbaa !29
  %t76 = getelementptr %"compiler/typed:Body", ptr %t74, i32 0, i32 7
  %t77 = load i64, ptr %l6, !tbaa !24
  %t80 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t76, i64 %t77)
  store %"compiler/typed:Local" %t80, ptr %l52
  br label %bb18
bb18:
  %t81 = getelementptr %"compiler/typed:Local", ptr %l52, i32 0, i32 2
  %t82 = load i32, ptr %t81, !tbaa !23
  store i32 %t82, ptr %l7, !tbaa !23
  %t84 = load %"compiler/source:Span", ptr %l3
  %t85 = load i32, ptr %l7, !tbaa !23
  %t86 = load i64, ptr %l6, !tbaa !24
  %t88 = trunc i64 %t86 to i32
  store { i64, [4 x i64] } zeroinitializer, ptr %t90
  %t91 = getelementptr { i64, [4 x i64] }, ptr %t90, i32 0, i32 0
  store i64 0, ptr %t91
  %t93 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t84, 0
  %t95 = insertvalue { %"compiler/source:Span", i32, i32 } %t93, i32 %t85, 1
  %t97 = insertvalue { %"compiler/source:Span", i32, i32 } %t95, i32 %t88, 2
  %t98 = getelementptr { i64, [4 x i64] }, ptr %t90, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t97, ptr %t98
  %t99 = load { i64, [4 x i64] }, ptr %t90
  %t101 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t99, ptr %t101
  store ptr %t101, ptr %l8, !tbaa !29
  %t103 = load i32, ptr %l7, !tbaa !23
  store i32 %t103, ptr %l9, !tbaa !23
  store ptr null, ptr %l10, !tbaa !29
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t106 = load i32, ptr %l7, !tbaa !23
  %t109 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t105, i32 %t106)
  store i1 %t109, ptr %l64
  br label %bb19
bb19:
  %t110 = load i1, ptr %l64, !tbaa !21
  %t111 = xor i1 %t110, true
  br i1 %t111, label %bb20, label %bb21
bb20:
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t114 = load i32, ptr %l7, !tbaa !23
  %t117 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayOf(ptr %v0, ptr %t113, i32 %t114)
  store i32 %t117, ptr %l69
  br label %bb22
bb21:
  store i1 false, ptr %l66, !tbaa !21
  br label %bb31
bb22:
  %t118 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t119 = load i32, ptr %l69, !tbaa !23
  %t121 = icmp ne i32 %t119, %t118
  br i1 %t121, label %bb23, label %bb24
bb23:
  store i1 true, ptr %l72, !tbaa !21
  br label %bb26
bb24:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = getelementptr %"compiler/check:Checker", ptr %t123, i32 0, i32 1
  %t126 = load ptr, ptr %t125, !tbaa !29
  %t127 = load i32, ptr %l7, !tbaa !23
  %t130 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnique(ptr %v0, ptr %t126, i32 %t127)
  store i1 %t130, ptr %l76
  br label %bb25
bb25:
  %t131 = load i1, ptr %l76, !tbaa !21
  store i1 %t131, ptr %l72, !tbaa !21
  br label %bb26
bb26:
  %t132 = load i1, ptr %l72, !tbaa !21
  br i1 %t132, label %bb27, label %bb28
bb27:
  store i1 true, ptr %l77, !tbaa !21
  br label %bb30
bb28:
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t135 = getelementptr %"compiler/check:Checker", ptr %t133, i32 0, i32 1
  %t136 = load ptr, ptr %t135, !tbaa !29
  %t138 = getelementptr %"compiler/generic:Program", ptr %t136, i32 0, i32 2
  %t139 = load i32, ptr %l7, !tbaa !23
  %t142 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %t138, i32 %t139)
  store i1 %t142, ptr %l82
  br label %bb29
bb29:
  %t143 = load i1, ptr %l82, !tbaa !21
  store i1 %t143, ptr %l77, !tbaa !21
  br label %bb30
bb30:
  %t144 = load i1, ptr %l77, !tbaa !21
  store i1 %t144, ptr %l66, !tbaa !21
  br label %bb31
bb31:
  %t145 = load i1, ptr %l66, !tbaa !21
  br i1 %t145, label %bb32, label %bb33
bb32:
  %t146 = load ptr, ptr %l4, !tbaa !29
  %t148 = getelementptr %"compiler/check:frame", ptr %t146, i32 0, i32 20
  %t149 = load i1, ptr %t148, !tbaa !21
  %t151 = xor i1 %t149, true
  store i1 %t151, ptr %l83, !tbaa !21
  br label %bb34
bb33:
  store i1 false, ptr %l83, !tbaa !21
  br label %bb34
bb34:
  %t153 = load i1, ptr %l83, !tbaa !21
  br i1 %t153, label %bb35, label %bb36
bb35:
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr %"compiler/check:Checker", ptr %t154, i32 0, i32 1
  %t157 = load ptr, ptr %t156, !tbaa !29
  %t159 = getelementptr %"compiler/generic:Program", ptr %t157, i32 0, i32 2
  %t160 = load i32, ptr %l7, !tbaa !23
  %t161 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t165 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t159, i32 %t160, i64 %t161)
  store i32 %t165, ptr %l92
  br label %bb37
bb36:
  %t166 = load %"compiler/source:Span", ptr %l3
  %t167 = load i32, ptr %l7, !tbaa !23
  %t168 = load ptr, ptr %l8, !tbaa !29
  store { i64, [5 x i64] } zeroinitializer, ptr %t169
  %t170 = getelementptr { i64, [5 x i64] }, ptr %t169, i32 0, i32 0
  store i64 2, ptr %t170
  %t172 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } undef, %"compiler/source:Span" %t166, 0
  %t174 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t172, i32 %t167, 1
  %t176 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t174, ptr %t168, 2
  %t177 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t176, i32 -1, 3
  %t178 = getelementptr { i64, [5 x i64] }, ptr %t169, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, i32 } %t177, ptr %t178
  %t179 = load { i64, [5 x i64] }, ptr %t169
  %t181 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 48, i64 8)
  store { i64, [5 x i64] } %t179, ptr %t181
  store ptr %t181, ptr %l10, !tbaa !29
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t184 = load i32, ptr %l7, !tbaa !23
  %t187 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t183, i32 %t184)
  store i1 %t187, ptr %l105
  br label %bb38
bb37:
  %t188 = load i32, ptr %l92, !tbaa !23
  store i32 %t188, ptr %l9, !tbaa !23
  %t189 = load %"compiler/source:Span", ptr %l3
  %t190 = load i32, ptr %l9, !tbaa !23
  %t191 = load ptr, ptr %l8, !tbaa !29
  store { i64, [5 x i64] } zeroinitializer, ptr %t192
  %t193 = getelementptr { i64, [5 x i64] }, ptr %t192, i32 0, i32 0
  store i64 3, ptr %t193
  %t195 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t189, 0
  %t197 = insertvalue { %"compiler/source:Span", i32, ptr } %t195, i32 %t190, 1
  %t199 = insertvalue { %"compiler/source:Span", i32, ptr } %t197, ptr %t191, 2
  %t200 = getelementptr { i64, [5 x i64] }, ptr %t192, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t199, ptr %t200
  %t201 = load { i64, [5 x i64] }, ptr %t192
  %t203 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 48, i64 8)
  store { i64, [5 x i64] } %t201, ptr %t203
  store ptr %t203, ptr %l10, !tbaa !29
  br label %bb47
bb38:
  %t205 = load i1, ptr %l105, !tbaa !21
  %t206 = xor i1 %t205, true
  br i1 %t206, label %bb39, label %bb40
bb39:
  %t208 = load ptr, ptr %l0, !tbaa !29
  %t210 = getelementptr %"compiler/check:Checker", ptr %t208, i32 0, i32 1
  %t211 = load ptr, ptr %t210, !tbaa !29
  %t213 = getelementptr %"compiler/generic:Program", ptr %t211, i32 0, i32 2
  %t214 = load i32, ptr %l7, !tbaa !23
  %t217 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnsParts(ptr %v0, ptr %t213, i32 %t214)
  store i1 %t217, ptr %l112
  br label %bb41
bb40:
  store i1 false, ptr %l107, !tbaa !21
  br label %bb42
bb41:
  %t218 = load i1, ptr %l112, !tbaa !21
  store i1 %t218, ptr %l107, !tbaa !21
  br label %bb42
bb42:
  %t219 = load i1, ptr %l107, !tbaa !21
  br i1 %t219, label %bb43, label %bb44
bb43:
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t221 = load i32, ptr %l7, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewantCopy(ptr %v0, ptr %t220, i32 %t221, i64 0)
  br label %bb45
bb44:
  br label %bb46
bb45:
  br label %bb46
bb46:
  br label %bb47
bb47:
  %t224 = load ptr, ptr %l0, !tbaa !29
  %t226 = getelementptr %"compiler/check:Checker", ptr %t224, i32 0, i32 14
  %t227 = load ptr, ptr %l4, !tbaa !29
  %t229 = getelementptr %"compiler/check:frame", ptr %t227, i32 0, i32 0
  %t230 = load i64, ptr %t229, !tbaa !24
  %t233 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t226, i64 %t230)
  store ptr %t233, ptr %l119
  br label %bb48
bb48:
  %t234 = load ptr, ptr %l119, !tbaa !29
  store ptr %t234, ptr %l11, !tbaa !29
  %t235 = load ptr, ptr %l11, !tbaa !29
  store ptr %t235, ptr %l120, !tbaa !29
  %t236 = load i32, ptr %l2, !tbaa !23
  %t237 = load %"compiler/source:Span", ptr %l3
  %t238 = load i32, ptr %l9, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t239
  %t240 = getelementptr { i64, [1 x i64] }, ptr %t239, i32 0, i32 0
  store i64 4, ptr %t240
  %t241 = load { i64, [1 x i64] }, ptr %t239
  %t247 = call %"compiler/typed:Local" @compiler_2ftyped_3aLocal_2ector(ptr %s0, i32 %t236, %"compiler/source:Span" %t237, i32 %t238, i32 0, i32 5, { i64, [1 x i64] } %t241)
  store %"compiler/typed:Local" %t247, ptr %l126
  br label %bb49
bb49:
  %t248 = load ptr, ptr %l120, !tbaa !29
  %t249 = load %"compiler/typed:Local", ptr %l126
  %t250 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eAddLocal(ptr %v0, ptr %t248, %"compiler/typed:Local" %t249)
  store i32 %t250, ptr %l127
  br label %bb50
bb50:
  %t251 = load i32, ptr %l127, !tbaa !23
  %t252 = sext i32 %t251 to i64
  store i64 %t252, ptr %l12, !tbaa !24
  %t254 = load ptr, ptr %l4, !tbaa !29
  %t256 = getelementptr %"compiler/check:frame", ptr %t254, i32 0, i32 8
  %t257 = load i32, ptr %l2, !tbaa !23
  %t258 = load i64, ptr %l12, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H862756c16d115e5c03a79726209f69fa(ptr %v0, ptr %t256, i32 %t257, i64 %t258)
  br label %bb51
bb51:
  %t262 = load ptr, ptr %l4, !tbaa !29
  %t264 = getelementptr %"compiler/check:frame", ptr %t262, i32 0, i32 30
  store ptr %t264, ptr %l134, !tbaa !29
  %t265 = load i64, ptr %l12, !tbaa !24
  %t267 = trunc i64 %t265 to i32
  store i32 %t267, ptr %l137, !tbaa !23
  %t269 = load ptr, ptr %l10, !tbaa !29
  %t271 = icmp eq ptr %t269, null
  br i1 %t271, label %bb52, label %bb53
bb52:
  call void @__olang_check_failed(ptr @olang_loc_486b3db7a819736b_b4c2afa2fe5bd5af)
  unreachable
bb53:
  br label %bb54
bb54:
  %t273 = load ptr, ptr %l10, !tbaa !29
  %t274 = load i32, ptr %l137, !tbaa !23
  %t276 = call %"compiler/typed:Capture" @compiler_2ftyped_3aCapture_2ector(ptr %v0, ptr %v0, i32 %t274, ptr %t273)
  store %"compiler/typed:Capture" %t276, ptr %l141
  br label %bb55
bb55:
  %t277 = load %"compiler/typed:Capture", ptr %l141
  %t278 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 16, i64 8)
  store %"compiler/typed:Capture" %t277, ptr %t278
  %t279 = load ptr, ptr %l134, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aCapture_26_3e_2ePus_Hdab9bd3c8945274d6e7197d4fb29356b(ptr %v0, ptr %v0, ptr %t279, ptr %t278)
  br label %bb56
bb56:
  %t281 = load ptr, ptr %l0, !tbaa !29
  %t282 = load i32, ptr %l9, !tbaa !23
  %t285 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t281, i32 %t282)
  store i1 %t285, ptr %l145
  br label %bb57
bb57:
  %t286 = load i1, ptr %l145, !tbaa !21
  br i1 %t286, label %bb58, label %bb59
bb58:
  store i1 true, ptr %l146, !tbaa !21
  br label %bb61
bb59:
  %t287 = load ptr, ptr %l0, !tbaa !29
  %t289 = getelementptr %"compiler/check:Checker", ptr %t287, i32 0, i32 1
  %t290 = load ptr, ptr %t289, !tbaa !29
  %t292 = getelementptr %"compiler/generic:Program", ptr %t290, i32 0, i32 2
  %t293 = load i32, ptr %l9, !tbaa !23
  %t296 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %t292, i32 %t293)
  store i1 %t296, ptr %l151
  br label %bb60
bb60:
  %t297 = load i1, ptr %l151, !tbaa !21
  store i1 %t297, ptr %l146, !tbaa !21
  br label %bb61
bb61:
  %t298 = load i1, ptr %l146, !tbaa !21
  br i1 %t298, label %bb62, label %bb63
bb62:
  %t299 = load ptr, ptr %l11, !tbaa !29
  %t301 = getelementptr %"compiler/typed:Body", ptr %t299, i32 0, i32 6
  %t302 = load i64, ptr %l12, !tbaa !24
  %t304 = trunc i64 %t302 to i32
  store { i64, [1 x i64] } zeroinitializer, ptr %t306
  %t307 = getelementptr { i64, [1 x i64] }, ptr %t306, i32 0, i32 0
  store i64 4, ptr %t307
  %t309 = insertvalue { i32 } undef, i32 %t304, 0
  %t310 = getelementptr { i64, [1 x i64] }, ptr %t306, i32 0, i32 1
  store { i32 } %t309, ptr %t310
  %t311 = load { i64, [1 x i64] }, ptr %t306
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2ePush_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %t301, { i64, [1 x i64] } %t311)
  br label %bb64
bb63:
  br label %bb65
bb64:
  br label %bb65
bb65:
  %t314 = load i64, ptr %l12, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t314, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"compiler/generic:Desc" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseDesc(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l5 = alloca i32
  %l11 = alloca %"compiler/generic:Desc"
  %l15 = alloca %"compiler/generic:Desc"
  %s1 = alloca %olang.scope
  %rv = alloca %"compiler/generic:Desc"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edescTypeOf(ptr %v0, ptr %v1, ptr %t1, ptr %a1)
  store i32 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i32, ptr %l5, !tbaa !23
  store i32 %t6, ptr %l2, !tbaa !23
  %t7 = load i32, ptr %l2, !tbaa !23
  %t8 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t11 = icmp sle i32 %t7, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t13 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescNone, !tbaa !24
  %t14 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t17 = call %"compiler/generic:Desc" @compiler_2fgeneric_3aDesc_2ector(ptr %s1, i64 %t13, i32 %t14, i64 0, i64 0)
  store %"compiler/generic:Desc" %t17, ptr %l11
  br label %bb4
bb3:
  br label %bb5
bb4:
  call void @__olang_scope_close(ptr %s1)
  %t18 = load %"compiler/generic:Desc", ptr %l11
  store %"compiler/generic:Desc" %t18, ptr %rv
  br label %ret
bb5:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/check:Checker", ptr %t19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t23 = load i32, ptr %l2, !tbaa !23
  %t26 = call %"compiler/generic:Desc" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescOf(ptr %v0, ptr %t22, i32 %t23)
  store %"compiler/generic:Desc" %t26, ptr %l15
  br label %bb6
bb6:
  %t27 = load %"compiler/generic:Desc", ptr %l15
  store %"compiler/generic:Desc" %t27, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/generic:Desc", ptr %rv
  ret %"compiler/generic:Desc" %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseTag(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca %"compiler/generic:Desc"
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca %"compiler/source:Span"
  %l16 = alloca i1
  %l21 = alloca %"compiler/generic:Desc"
  %l30 = alloca i1
  %l31 = alloca i64
  %l33 = alloca ptr
  %l34 = alloca i1
  %l44 = alloca i1
  %l51 = alloca { i64, ptr }
  %l61 = alloca i64
  %l64 = alloca i64
  %l82 = alloca { i64, ptr }
  %l88 = alloca %"compiler/source:Span"
  %l89 = alloca ptr
  %l90 = alloca i32
  %l91 = alloca i32
  %l92 = alloca i32
  %l95 = alloca { i64, ptr }
  %l100 = alloca %"compiler/source:Span"
  %s3 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l2, !tbaa !23
  %t5 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l16
  br label %bb1
bb1:
  %t6 = load i1, ptr %l16, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i64 -1, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load ptr, ptr %l1, !tbaa !29
  %t14 = call %"compiler/generic:Desc" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseDesc(ptr %v0, ptr %v1, ptr %t10, ptr %t11)
  store %"compiler/generic:Desc" %t14, ptr %l21
  br label %bb5
bb5:
  %t15 = load %"compiler/generic:Desc", ptr %l21
  store %"compiler/generic:Desc" %t15, ptr %l3
  %t16 = getelementptr %"compiler/generic:Desc", ptr %l3, i32 0, i32 0
  %t17 = load i64, ptr %t16, !tbaa !24
  %t18 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescCase, !tbaa !24
  %t21 = icmp eq i64 %t17, %t18
  br i1 %t21, label %bb6, label %bb7
bb6:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/check:Checker", ptr %t23, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t28 = getelementptr %"compiler/generic:Program", ptr %t26, i32 0, i32 2
  %t29 = getelementptr %"compiler/generic:Desc", ptr %l3, i32 0, i32 1
  %t30 = load i32, ptr %t29, !tbaa !23
  %t31 = load i32, ptr %l2, !tbaa !23
  %t35 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t28, i32 %t30, i32 %t31)
  store i1 %t35, ptr %l30
  br label %bb8
bb7:
  br label %bb12
bb8:
  %t36 = load i1, ptr %l30, !tbaa !21
  br i1 %t36, label %bb9, label %bb10
bb9:
  %t37 = getelementptr %"compiler/generic:Desc", ptr %l3, i32 0, i32 2
  %t38 = load i64, ptr %t37, !tbaa !24
  store i64 %t38, ptr %l31, !tbaa !24
  br label %bb11
bb10:
  store i64 -1, ptr %l31, !tbaa !24
  br label %bb11
bb11:
  %t40 = load i64, ptr %l31, !tbaa !24
  store i64 %t40, ptr %rv
  br label %ret
bb12:
  %t41 = load ptr, ptr %l1, !tbaa !29
  store ptr %t41, ptr %l33, !tbaa !29
  store i1 false, ptr %l34, !tbaa !21
  %t42 = load ptr, ptr %l33, !tbaa !29
  %t43 = icmp ne ptr %t42, null
  br i1 %t43, label %bb13, label %bb14
bb13:
  %t45 = load ptr, ptr %l33, !tbaa !29
  %t46 = load i64, ptr %t45, !range !{i64 0, i64 30}
  %t48 = icmp eq i64 %t46, 14
  store i1 %t48, ptr %l34, !tbaa !21
  br label %bb14
bb14:
  %t49 = load i1, ptr %l34, !tbaa !21
  br i1 %t49, label %bb15, label %bb16
bb15:
  %t50 = load ptr, ptr %l1, !tbaa !29
  %t52 = getelementptr { i64, [4 x i64] }, ptr %t50, i32 0, i32 1
  %t53 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t52, i32 0, i32 1
  %t54 = load ptr, ptr %t53
  store ptr %t54, ptr %l4, !tbaa !29
  %t56 = load ptr, ptr %l1, !tbaa !29
  %t58 = getelementptr { i64, [4 x i64] }, ptr %t56, i32 0, i32 1
  %t59 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t58, i32 0, i32 2
  %t60 = load i32, ptr %t59
  store i32 %t60, ptr %l5, !tbaa !23
  br label %bb17
bb16:
  br label %bb45
bb17:
  store %olang.scope zeroinitializer, ptr %s3
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load ptr, ptr %l4, !tbaa !29
  %t64 = load i32, ptr %l2, !tbaa !23
  %t68 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enamesEnumOf(ptr %v0, ptr %v1, ptr %t62, ptr %t63, i32 %t64)
  store i1 %t68, ptr %l44
  br label %bb18
bb18:
  %t69 = load i1, ptr %l44, !tbaa !21
  %t70 = xor i1 %t69, true
  br i1 %t70, label %bb19, label %bb20
bb19:
  call void @__olang_scope_close(ptr %s3)
  store i64 -1, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/check:Checker", ptr %t73, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !29
  %t78 = getelementptr %"compiler/generic:Program", ptr %t76, i32 0, i32 2
  %t79 = load i32, ptr %l2, !tbaa !23
  %t82 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCaseNames(ptr %v0, ptr %s3, ptr %t78, i32 %t79)
  store { i64, ptr } %t82, ptr %l51
  br label %bb22
bb22:
  %t83 = load { i64, ptr }, ptr %l51, !tbaa !27
  store { i64, ptr } %t83, ptr %l6, !tbaa !27
  %t84 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t86 = extractvalue { i64, ptr } %t84, 0
  %t88 = icmp eq i64 %t86, 0
  br i1 %t88, label %bb23, label %bb24
bb23:
  call void @__olang_scope_close(ptr %s3)
  store i64 -1, ptr %rv
  br label %ret
bb24:
  br label %bb25
bb25:
  store i64 0, ptr %l7, !tbaa !24
  %t91 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t93 = extractvalue { i64, ptr } %t91, 0
  store i64 %t93, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t95 = load i64, ptr %l8, !tbaa !24
  %t96 = load i64, ptr %l7, !tbaa !24
  %t99 = icmp sgt i64 %t95, %t96
  br i1 %t99, label %bb26, label %bb27
bb26:
  %t101 = load i64, ptr %l9, !tbaa !24
  %t103 = icmp sgt i64 %t101, 0
  br i1 %t103, label %bb28, label %bb29
bb27:
  store i64 0, ptr %l61, !tbaa !24
  br label %bb31
bb28:
  %t105 = load i64, ptr %l8, !tbaa !24
  %t106 = load i64, ptr %l7, !tbaa !24
  %t109 = sub i64 %t105, %t106
  %t110 = load i64, ptr %l9, !tbaa !24
  %t113 = add i64 %t109, %t110
  %t115 = sub i64 %t113, 1
  %t116 = load i64, ptr %l9, !tbaa !24
  %t119 = sdiv i64 %t115, %t116
  store i64 %t119, ptr %l64, !tbaa !24
  br label %bb30
bb29:
  store i64 0, ptr %l64, !tbaa !24
  br label %bb30
bb30:
  %t121 = load i64, ptr %l64, !tbaa !24
  store i64 %t121, ptr %l61, !tbaa !24
  br label %bb31
bb31:
  %t122 = load i64, ptr %l61, !tbaa !24
  store i64 %t122, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb32
bb32:
  %t123 = load i64, ptr %l11, !tbaa !24
  %t124 = load i64, ptr %l10, !tbaa !24
  %t127 = icmp slt i64 %t123, %t124
  %t129 = xor i1 %t127, true
  br i1 %t129, label %bb33, label %bb34
bb33:
  br label %bb44
bb34:
  br label %bb35
bb35:
  %t131 = load i64, ptr %l7, !tbaa !24
  %t132 = load i64, ptr %l11, !tbaa !24
  %t133 = load i64, ptr %l9, !tbaa !24
  %t136 = mul i64 %t132, %t133
  %t139 = add i64 %t131, %t136
  store i64 %t139, ptr %l12, !tbaa !24
  %t141 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t141, ptr %l82, !tbaa !27
  %t142 = load i64, ptr %l12, !tbaa !24
  %t144 = getelementptr { i64, ptr }, ptr %l82, i32 0, i32 1
  %t145 = load ptr, ptr %t144, !tbaa !27
  %t146 = getelementptr i32, ptr %t145, i64 %t142
  %t147 = load i32, ptr %t146, !tbaa !33
  %t148 = load i32, ptr %l5, !tbaa !23
  %t151 = icmp eq i32 %t147, %t148
  br i1 %t151, label %bb36, label %bb37
bb36:
  store %olang.scope zeroinitializer, ptr %s8
  %t153 = load ptr, ptr %l1, !tbaa !29
  %t155 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t153)
  store %"compiler/source:Span" %t155, ptr %l88
  br label %bb38
bb37:
  br label %bb42
bb38:
  %t156 = load %"compiler/source:Span", ptr %l88
  store %"compiler/source:Span" %t156, ptr %l13
  %t157 = load ptr, ptr %l0, !tbaa !29
  store ptr %t157, ptr %l89, !tbaa !29
  %t158 = load i32, ptr %l2, !tbaa !23
  store i32 %t158, ptr %l90, !tbaa !23
  %t159 = load i32, ptr %l5, !tbaa !23
  store i32 %t159, ptr %l91, !tbaa !23
  %t160 = getelementptr %"compiler/source:Span", ptr %l13, i32 0, i32 1
  %t161 = load i32, ptr %t160, !tbaa !23
  store i32 %t161, ptr %l92, !tbaa !23
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t163 = load i32, ptr %l5, !tbaa !23
  %t166 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s8, ptr %t162, i32 %t163)
  store { i64, ptr } %t166, ptr %l95
  br label %bb39
bb39:
  %t167 = load { i64, ptr }, ptr %l95, !tbaa !27
  %t168 = extractvalue { i64, ptr } %t167, 0
  %t170 = trunc i64 %t168 to i32
  %t171 = load i32, ptr %l92, !tbaa !23
  %t173 = sub i32 %t171, %t170
  %t174 = getelementptr %"compiler/source:Span", ptr %l13, i32 0, i32 1
  %t175 = load i32, ptr %t174, !tbaa !23
  %t178 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s8, i32 %t173, i32 %t175)
  store %"compiler/source:Span" %t178, ptr %l100
  br label %bb40
bb40:
  %t179 = load ptr, ptr %l89, !tbaa !29
  %t180 = load i32, ptr %l90, !tbaa !23
  %t181 = load i32, ptr %l91, !tbaa !23
  %t182 = load %"compiler/source:Span", ptr %l100
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecasePublic(ptr %v0, ptr %t179, i32 %t180, i32 %t181, %"compiler/source:Span" %t182)
  br label %bb41
bb41:
  %t183 = load i64, ptr %l12, !tbaa !24
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s3)
  store i64 %t183, ptr %rv
  br label %ret
bb42:
  br label %bb43
bb43:
  %t185 = load i64, ptr %l11, !tbaa !24
  %t187 = add i64 %t185, 1
  store i64 %t187, ptr %l11, !tbaa !24
  br label %bb32
bb44:
  call void @__olang_scope_close(ptr %s3)
  store i64 -1, ptr %rv
  br label %ret
bb45:
  br i1 true, label %bb46, label %bb47
bb46:
  br label %bb48
bb47:
  br label %bb49
bb48:
  store i64 -1, ptr %rv
  br label %ret
bb49:
  call void @__olang_check_failed(ptr @olang_loc_276be77200b53441_cc6e235db38ae28d)
  unreachable
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echainFrom(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3, { i64, ptr } %a4, i64 %a5, ptr %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca ptr
  %lp12 = alloca ptr
  %l21 = alloca ptr
  %l22 = alloca %"compiler/source:Span"
  %l23 = alloca ptr
  %l24 = alloca i64
  %l25 = alloca ptr
  %l26 = alloca { i64, ptr }
  %l30 = alloca ptr
  %l37 = alloca ptr
  %l39 = alloca ptr
  %l40 = alloca { i64, ptr }
  %l44 = alloca %"compiler/source:Span"
  %l45 = alloca i32
  %l51 = alloca ptr
  %l59 = alloca ptr
  %l60 = alloca ptr
  %l64 = alloca ptr
  %l65 = alloca %"compiler/typed:Cond"
  %l75 = alloca ptr
  %l77 = alloca i32
  %l81 = alloca i64
  %l84 = alloca i64
  %l86 = alloca ptr
  %l87 = alloca %"compiler/source:Span"
  %l90 = alloca i32
  %l97 = alloca ptr
  %l100 = alloca ptr
  %l101 = alloca %"compiler/source:Span"
  %l102 = alloca ptr
  %l103 = alloca i64
  %l104 = alloca ptr
  %l108 = alloca ptr
  %l110 = alloca ptr
  %l111 = alloca %"compiler/source:Span"
  %l112 = alloca i32
  %l116 = alloca { i64, ptr }
  %l119 = alloca %"compiler/typed:Seq"
  %l122 = alloca ptr
  %l123 = alloca %"compiler/source:Span"
  %l124 = alloca ptr
  %l125 = alloca i64
  %l126 = alloca { i64, ptr }
  %l128 = alloca i64
  %l132 = alloca ptr
  %l134 = alloca ptr
  %l135 = alloca %"compiler/source:Span"
  %l136 = alloca i32
  %l137 = alloca ptr
  %l139 = alloca ptr
  %l143 = alloca ptr
  %l144 = alloca %"compiler/typed:Cond"
  %s0 = alloca %olang.scope
  %rv = alloca ptr
  %t106 = alloca { i64, [5 x i64] }, align 8
  %t171 = alloca { i64, [3 x i64] }, align 8
  %t222 = alloca { i64, [5 x i64] }, align 8
  %t278 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i64 %a3, ptr %l3
  store { i64, ptr } %a4, ptr %l4
  store i64 %a5, ptr %l5
  store ptr %a6, ptr %l6
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = getelementptr %"compiler/ast:Chain", ptr %t1, i32 0, i32 1
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t8 = load i64, ptr %l5, !tbaa !24
  %t10 = add i64 %t8, 2
  %t14 = icmp sge i64 %t10, %t6
  br i1 %t14, label %bb1, label %bb2
bb1:
  %t16 = load ptr, ptr %l0, !tbaa !29
  store ptr %t16, ptr %l21, !tbaa !29
  %t17 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t17, ptr %l22
  %t18 = load ptr, ptr %l2, !tbaa !29
  store ptr %t18, ptr %l23, !tbaa !29
  %t19 = load i64, ptr %l5, !tbaa !24
  store i64 %t19, ptr %l24, !tbaa !24
  %t20 = load ptr, ptr %l6, !tbaa !29
  store ptr %t20, ptr %l25, !tbaa !29
  %t21 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t21, ptr %l26, !tbaa !27
  %t22 = load i64, ptr %l5, !tbaa !24
  %t24 = add i64 %t22, 1
  %t26 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = getelementptr i1, ptr %t27, i64 %t24
  %t29 = load i1, ptr %t28, !tbaa !31
  br i1 %t29, label %bb3, label %bb4
bb2:
  br label %bb8
bb3:
  store ptr null, ptr %l30, !tbaa !29
  br label %bb6
bb4:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/check:Checker", ptr %t31, i32 0, i32 36
  %t34 = load i64, ptr %l3, !tbaa !24
  %t35 = load i64, ptr %l5, !tbaa !24
  %t38 = add i64 %t34, %t35
  %t40 = add i64 %t38, 1
  %t43 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t33, i64 %t40)
  store ptr %t43, ptr %l37
  br label %bb5
bb5:
  %t44 = load ptr, ptr %l37, !tbaa !29
  store ptr %t44, ptr %l30, !tbaa !29
  br label %bb6
bb6:
  %t46 = load ptr, ptr %l21, !tbaa !29
  %t47 = load %"compiler/source:Span", ptr %l22
  %t48 = load ptr, ptr %l23, !tbaa !29
  %t49 = load i64, ptr %l24, !tbaa !24
  %t50 = load ptr, ptr %l25, !tbaa !29
  %t51 = load ptr, ptr %l30, !tbaa !29
  %t52 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echainCmp(ptr %v0, ptr %v1, ptr %v3, ptr %v0, ptr %v4, ptr %t46, %"compiler/source:Span" %t47, ptr %t48, i64 %t49, ptr %t50, ptr %t51)
  store ptr %t52, ptr %l39
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s0)
  %t53 = load ptr, ptr %l39, !tbaa !29
  store ptr %t53, ptr %rv
  br label %ret
bb8:
  %t54 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t54, ptr %l40, !tbaa !27
  %t55 = load i64, ptr %l5, !tbaa !24
  %t57 = add i64 %t55, 1
  %t59 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !27
  %t61 = getelementptr i1, ptr %t60, i64 %t57
  %t62 = load i1, ptr %t61, !tbaa !31
  br i1 %t62, label %bb9, label %bb10
bb9:
  %t64 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t64, ptr %l44
  %t65 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t65, ptr %l45, !tbaa !23
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load %"compiler/source:Span", ptr %l1
  %t68 = load ptr, ptr %l2, !tbaa !29
  %t69 = load i64, ptr %l5, !tbaa !24
  %t70 = load ptr, ptr %l6, !tbaa !29
  %t76 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echainCmp(ptr %v0, ptr %v1, ptr %v3, ptr %v0, ptr %v0, ptr %t66, %"compiler/source:Span" %t67, ptr %t68, i64 %t69, ptr %t70, ptr null)
  store ptr %t76, ptr %l51
  br label %bb11
bb10:
  br label %bb15
bb11:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t78 = load %"compiler/source:Span", ptr %l1
  %t79 = load ptr, ptr %l2, !tbaa !29
  %t80 = load i64, ptr %l3, !tbaa !24
  %t81 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t82 = load i64, ptr %l5, !tbaa !24
  %t84 = add i64 %t82, 1
  %t91 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echainFrom(ptr %v0, ptr %v1, ptr %v2, ptr %v0, ptr %v4, ptr %t77, %"compiler/source:Span" %t78, ptr %t79, i64 %t80, { i64, ptr } %t81, i64 %t84, ptr null)
  store ptr %t91, ptr %l59
  br label %bb12
bb12:
  %t92 = load ptr, ptr %l59, !tbaa !29
  store ptr %t92, ptr %l60, !tbaa !29
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t94 = load %"compiler/source:Span", ptr %l1
  %t95 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t99 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v4, ptr %t93, %"compiler/source:Span" %t94, i32 %t95, i64 0)
  store ptr %t99, ptr %l64
  br label %bb13
bb13:
  %t100 = load ptr, ptr %l51, !tbaa !29
  %t101 = load ptr, ptr %l60, !tbaa !29
  %t102 = load ptr, ptr %l64, !tbaa !29
  %t103 = call %"compiler/typed:Cond" @compiler_2ftyped_3aCond_2ector(ptr %v0, ptr %v4, ptr %v4, ptr %v4, ptr %t100, ptr %t101, ptr %t102)
  store %"compiler/typed:Cond" %t103, ptr %l65
  br label %bb14
bb14:
  %t104 = load %"compiler/typed:Cond", ptr %l65
  %t105 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 24, i64 8)
  store %"compiler/typed:Cond" %t104, ptr %t105
  store { i64, [5 x i64] } zeroinitializer, ptr %t106
  %t107 = getelementptr { i64, [5 x i64] }, ptr %t106, i32 0, i32 0
  store i64 11, ptr %t107
  %t108 = load %"compiler/source:Span", ptr %l44
  %t109 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t108, 0
  %t110 = load i32, ptr %l45, !tbaa !23
  %t111 = insertvalue { %"compiler/source:Span", i32, ptr } %t109, i32 %t110, 1
  %t113 = insertvalue { %"compiler/source:Span", i32, ptr } %t111, ptr %t105, 2
  %t114 = getelementptr { i64, [5 x i64] }, ptr %t106, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t113, ptr %t114
  %t115 = load { i64, [5 x i64] }, ptr %t106
  %t117 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 48, i64 8)
  store { i64, [5 x i64] } %t115, ptr %t117
  call void @__olang_scope_close(ptr %s0)
  store ptr %t117, ptr %rv
  br label %ret
bb15:
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr %"compiler/check:Checker", ptr %t119, i32 0, i32 36
  %t122 = load i64, ptr %l3, !tbaa !24
  %t123 = load i64, ptr %l5, !tbaa !24
  %t126 = add i64 %t122, %t123
  %t128 = add i64 %t126, 1
  %t131 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %s0, ptr %t121, i64 %t128)
  store ptr %t131, ptr %l75
  br label %bb16
bb16:
  %t132 = load ptr, ptr %l75, !tbaa !29
  %t134 = call i32 @compiler_2fcheck_2etypeOf(ptr %s0, ptr %t132)
  store i32 %t134, ptr %l77
  br label %bb17
bb17:
  %t135 = load i32, ptr %l77, !tbaa !23
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t137 = load %"compiler/source:Span", ptr %l1
  %t142 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %t136, %"compiler/source:Span" %t137, i32 %t135)
  store i64 %t142, ptr %l81
  br label %bb18
bb18:
  %t143 = load i64, ptr %l81, !tbaa !24
  store i64 %t143, ptr %l9, !tbaa !24
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t146 = getelementptr %"compiler/check:Checker", ptr %t144, i32 0, i32 37
  %t148 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t146)
  store i64 %t148, ptr %l84
  br label %bb19
bb19:
  %t149 = load i64, ptr %l84, !tbaa !24
  store i64 %t149, ptr %l10, !tbaa !24
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t152 = getelementptr %"compiler/check:Checker", ptr %t150, i32 0, i32 37
  store ptr %t152, ptr %l86, !tbaa !29
  %t153 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t153, ptr %l87
  %t154 = load i64, ptr %l9, !tbaa !24
  %t156 = trunc i64 %t154 to i32
  store i32 %t156, ptr %l90, !tbaa !23
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t160 = getelementptr %"compiler/check:Checker", ptr %t158, i32 0, i32 36
  %t161 = load i64, ptr %l3, !tbaa !24
  %t162 = load i64, ptr %l5, !tbaa !24
  %t165 = add i64 %t161, %t162
  %t167 = add i64 %t165, 1
  %t170 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t160, i64 %t167)
  store ptr %t170, ptr %l97
  br label %bb20
bb20:
  store { i64, [3 x i64] } zeroinitializer, ptr %t171
  %t172 = getelementptr { i64, [3 x i64] }, ptr %t171, i32 0, i32 0
  store i64 0, ptr %t172
  %t173 = load %"compiler/source:Span", ptr %l87
  %t174 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t173, 0
  %t175 = load i32, ptr %l90, !tbaa !23
  %t176 = insertvalue { %"compiler/source:Span", i32, ptr } %t174, i32 %t175, 1
  %t177 = load ptr, ptr %l97, !tbaa !29
  %t178 = insertvalue { %"compiler/source:Span", i32, ptr } %t176, ptr %t177, 2
  %t179 = getelementptr { i64, [3 x i64] }, ptr %t171, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t178, ptr %t179
  %t180 = load { i64, [3 x i64] }, ptr %t171
  %t182 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t180, ptr %t182
  %t183 = load ptr, ptr %l86, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t183, ptr %t182)
  br label %bb21
bb21:
  %t185 = load ptr, ptr %l0, !tbaa !29
  store ptr %t185, ptr %l100, !tbaa !29
  %t186 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t186, ptr %l101
  %t187 = load ptr, ptr %l2, !tbaa !29
  store ptr %t187, ptr %l102, !tbaa !29
  %t188 = load i64, ptr %l5, !tbaa !24
  store i64 %t188, ptr %l103, !tbaa !24
  %t189 = load ptr, ptr %l6, !tbaa !29
  store ptr %t189, ptr %l104, !tbaa !29
  %t190 = load ptr, ptr %l0, !tbaa !29
  %t191 = load %"compiler/source:Span", ptr %l1
  %t192 = load i64, ptr %l9, !tbaa !24
  %t196 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t190, %"compiler/source:Span" %t191, i64 %t192)
  store ptr %t196, ptr %l108
  br label %bb22
bb22:
  %t197 = load ptr, ptr %l108, !tbaa !29
  %t198 = load ptr, ptr %l100, !tbaa !29
  %t199 = load %"compiler/source:Span", ptr %l101
  %t200 = load ptr, ptr %l102, !tbaa !29
  %t201 = load i64, ptr %l103, !tbaa !24
  %t202 = load ptr, ptr %l104, !tbaa !29
  %t204 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echainCmp(ptr %v0, ptr %v1, ptr %v3, ptr %v0, ptr %v4, ptr %t198, %"compiler/source:Span" %t199, ptr %t200, i64 %t201, ptr %t202, ptr %t197)
  store ptr %t204, ptr %l110
  br label %bb23
bb23:
  %t205 = load ptr, ptr %l110, !tbaa !29
  store ptr %t205, ptr %l11, !tbaa !29
  %t206 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t206, ptr %l111
  %t207 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t207, ptr %l112, !tbaa !23
  %t208 = load ptr, ptr %l0, !tbaa !29
  %t210 = getelementptr %"compiler/check:Checker", ptr %t208, i32 0, i32 37
  %t211 = load i64, ptr %l10, !tbaa !24
  %t214 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t210, i64 %t211)
  store { i64, ptr } %t214, ptr %l116
  br label %bb24
bb24:
  %t215 = load ptr, ptr %l11, !tbaa !29
  %t217 = load { i64, ptr }, ptr %l116, !tbaa !27
  %t219 = call %"compiler/typed:Seq" @compiler_2ftyped_3aSeq_2ector(ptr %v0, ptr %v4, ptr %v4, { i64, ptr } %t217, ptr %t215, i1 false)
  store %"compiler/typed:Seq" %t219, ptr %l119
  br label %bb25
bb25:
  %t220 = load %"compiler/typed:Seq", ptr %l119
  %t221 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 32, i64 8)
  store %"compiler/typed:Seq" %t220, ptr %t221
  store { i64, [5 x i64] } zeroinitializer, ptr %t222
  %t223 = getelementptr { i64, [5 x i64] }, ptr %t222, i32 0, i32 0
  store i64 12, ptr %t223
  %t224 = load %"compiler/source:Span", ptr %l111
  %t225 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t224, 0
  %t226 = load i32, ptr %l112, !tbaa !23
  %t227 = insertvalue { %"compiler/source:Span", i32, ptr } %t225, i32 %t226, 1
  %t229 = insertvalue { %"compiler/source:Span", i32, ptr } %t227, ptr %t221, 2
  %t230 = getelementptr { i64, [5 x i64] }, ptr %t222, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t229, ptr %t230
  %t231 = load { i64, [5 x i64] }, ptr %t222
  %t232 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 48, i64 8)
  store ptr %t232, ptr %lp12
  %t234 = load ptr, ptr %lp12
  store { i64, [5 x i64] } %t231, ptr %t234
  %t235 = load ptr, ptr %l0, !tbaa !29
  store ptr %t235, ptr %l122, !tbaa !29
  %t236 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t236, ptr %l123
  %t237 = load ptr, ptr %l2, !tbaa !29
  store ptr %t237, ptr %l124, !tbaa !29
  %t238 = load i64, ptr %l3, !tbaa !24
  store i64 %t238, ptr %l125, !tbaa !24
  %t239 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t239, ptr %l126, !tbaa !27
  %t240 = load i64, ptr %l5, !tbaa !24
  %t242 = add i64 %t240, 1
  store i64 %t242, ptr %l128, !tbaa !24
  %t243 = load ptr, ptr %l0, !tbaa !29
  %t244 = load %"compiler/source:Span", ptr %l1
  %t245 = load i64, ptr %l9, !tbaa !24
  %t249 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t243, %"compiler/source:Span" %t244, i64 %t245)
  store ptr %t249, ptr %l132
  br label %bb26
bb26:
  %t250 = load ptr, ptr %l132, !tbaa !29
  %t251 = load ptr, ptr %l122, !tbaa !29
  %t252 = load %"compiler/source:Span", ptr %l123
  %t253 = load ptr, ptr %l124, !tbaa !29
  %t254 = load i64, ptr %l125, !tbaa !24
  %t255 = load { i64, ptr }, ptr %l126, !tbaa !27
  %t256 = load i64, ptr %l128, !tbaa !24
  %t258 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echainFrom(ptr %v0, ptr %v1, ptr %v2, ptr %v0, ptr %v4, ptr %t251, %"compiler/source:Span" %t252, ptr %t253, i64 %t254, { i64, ptr } %t255, i64 %t256, ptr %t250)
  store ptr %t258, ptr %l134
  br label %bb27
bb27:
  %t259 = load ptr, ptr %l134, !tbaa !29
  %t260 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t260, ptr %l135
  %t261 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t261, ptr %l136, !tbaa !23
  %t262 = load ptr, ptr %lp12
  store ptr %t262, ptr %l137, !tbaa !29
  store ptr %t259, ptr %l139, !tbaa !29
  %t265 = load ptr, ptr %l0, !tbaa !29
  %t266 = load %"compiler/source:Span", ptr %l1
  %t267 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t271 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v4, ptr %t265, %"compiler/source:Span" %t266, i32 %t267, i64 0)
  store ptr %t271, ptr %l143
  br label %bb28
bb28:
  %t272 = load ptr, ptr %l137, !tbaa !29
  %t273 = load ptr, ptr %l139, !tbaa !29
  %t274 = load ptr, ptr %l143, !tbaa !29
  %t275 = call %"compiler/typed:Cond" @compiler_2ftyped_3aCond_2ector(ptr %v4, ptr %v4, ptr %v4, ptr %v4, ptr %t272, ptr %t273, ptr %t274)
  store %"compiler/typed:Cond" %t275, ptr %l144
  br label %bb29
bb29:
  %t276 = load %"compiler/typed:Cond", ptr %l144
  %t277 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 24, i64 8)
  store %"compiler/typed:Cond" %t276, ptr %t277
  store { i64, [5 x i64] } zeroinitializer, ptr %t278
  %t279 = getelementptr { i64, [5 x i64] }, ptr %t278, i32 0, i32 0
  store i64 11, ptr %t279
  %t280 = load %"compiler/source:Span", ptr %l135
  %t281 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t280, 0
  %t282 = load i32, ptr %l136, !tbaa !23
  %t283 = insertvalue { %"compiler/source:Span", i32, ptr } %t281, i32 %t282, 1
  %t285 = insertvalue { %"compiler/source:Span", i32, ptr } %t283, ptr %t277, 2
  %t286 = getelementptr { i64, [5 x i64] }, ptr %t278, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t285, ptr %t286
  %t287 = load { i64, [5 x i64] }, ptr %t278
  %t289 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 48, i64 8)
  store { i64, [5 x i64] } %t287, ptr %t289
  call void @__olang_scope_close(ptr %s0)
  store ptr %t289, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecolumnSlice(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i1
  %l22 = alloca i1
  %l23 = alloca ptr
  %l24 = alloca i1
  %l30 = alloca ptr
  %l31 = alloca ptr
  %l33 = alloca i32
  %l34 = alloca i32
  %l35 = alloca i1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 10
  store i1 %t8, ptr %l8, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l8, !tbaa !21
  %t10 = xor i1 %t9, true
  br i1 %t10, label %bb3, label %bb4
bb3:
  store i1 false, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t13 = load ptr, ptr %l1, !tbaa !29
  %t15 = getelementptr { i64, [5 x i64] }, ptr %t13, i32 0, i32 1
  %t16 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t15, i32 0, i32 0
  %t17 = load %"compiler/source:Span", ptr %t16
  store %"compiler/source:Span" %t17, ptr %l2
  %t19 = load ptr, ptr %l1, !tbaa !29
  %t21 = getelementptr { i64, [5 x i64] }, ptr %t19, i32 0, i32 1
  %t22 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t21, i32 0, i32 1
  %t23 = load i32, ptr %t22
  store i32 %t23, ptr %l3, !tbaa !23
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr { i64, [5 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t27, i32 0, i32 2
  %t29 = load ptr, ptr %t28
  %t34 = getelementptr %"compiler/typed:Slice", ptr %t29, i32 0, i32 0
  %t35 = load ptr, ptr %t34, !tbaa !29
  store ptr %t35, ptr %l5, !tbaa !29
  %t37 = load ptr, ptr %l5, !tbaa !29
  store ptr %t37, ptr %l23, !tbaa !29
  store i1 false, ptr %l24, !tbaa !21
  %t38 = load ptr, ptr %l23, !tbaa !29
  %t39 = icmp ne ptr %t38, null
  br i1 %t39, label %bb6, label %bb7
bb6:
  %t41 = load ptr, ptr %l23, !tbaa !29
  %t42 = load i64, ptr %t41, !range !{i64 0, i64 8}
  %t44 = icmp eq i64 %t42, 3
  store i1 %t44, ptr %l24, !tbaa !21
  br label %bb7
bb7:
  %t45 = load i1, ptr %l24, !tbaa !21
  br i1 %t45, label %bb8, label %bb9
bb8:
  %t46 = load ptr, ptr %l5, !tbaa !29
  %t48 = getelementptr { i64, [4 x i64] }, ptr %t46, i32 0, i32 1
  %t49 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t48, i32 0, i32 2
  %t50 = load ptr, ptr %t49
  store ptr %t50, ptr %l6, !tbaa !29
  br label %bb10
bb9:
  br label %bb14
bb10:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/check:Checker", ptr %t52, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !29
  store ptr %t55, ptr %l30, !tbaa !29
  %t56 = load ptr, ptr %l0, !tbaa !29
  store ptr %t56, ptr %l31, !tbaa !29
  %t57 = load ptr, ptr %l6, !tbaa !29
  %t59 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t57)
  store i32 %t59, ptr %l33
  br label %bb11
bb11:
  %t60 = load ptr, ptr %l31, !tbaa !29
  %t61 = load i32, ptr %l33, !tbaa !23
  %t62 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t60, i32 %t61)
  store i32 %t62, ptr %l34
  br label %bb12
bb12:
  %t63 = load ptr, ptr %l30, !tbaa !29
  %t64 = load i32, ptr %l34, !tbaa !23
  %t65 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsColumns(ptr %v0, ptr %t63, i32 %t64)
  store i1 %t65, ptr %l35
  br label %bb13
bb13:
  %t66 = load i1, ptr %l35, !tbaa !21
  store i1 %t66, ptr %l22, !tbaa !21
  br label %bb19
bb14:
  br i1 true, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb18
bb17:
  store i1 false, ptr %l22, !tbaa !21
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_8c10df0be32d8eb1_d395e5eefe4361bd)
  unreachable
bb19:
  %t67 = load i1, ptr %l22, !tbaa !21
  store i1 %t67, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur0(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l5 = alloca ptr
  %rv = alloca ptr
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/check:Checker", ptr %a0, i32 0, i32 14
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %t3, i64 %a1)
  store ptr %t7, ptr %l5
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l5, !tbaa !29
  store ptr %t8, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edefaultCopiesRecv(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l4 = alloca i32
  %l8 = alloca i32
  %l11 = alloca ptr
  %l16 = alloca i32
  %l17 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l25 = alloca i32
  %l30 = alloca i32
  %l36 = alloca ptr
  %l41 = alloca i32
  %l46 = alloca i64
  %l51 = alloca i64
  %l52 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t8 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t4, i64 %a1)
  store i32 %t8, ptr %l8
  br label %bb1
bb1:
  %t9 = load i32, ptr %l8, !tbaa !23
  store i32 %t9, ptr %l2, !tbaa !23
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/check:Checker", ptr %t10, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = getelementptr %"compiler/generic:Program", ptr %t13, i32 0, i32 2
  store ptr %t15, ptr %l11, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/check:Checker", ptr %t16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t21 = getelementptr %"compiler/generic:Program", ptr %t19, i32 0, i32 2
  %t22 = load i32, ptr %l2, !tbaa !23
  %t25 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t21, i32 %t22)
  store i32 %t25, ptr %l16
  br label %bb2
bb2:
  %t26 = load ptr, ptr %l11, !tbaa !29
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
  %t62 = xor i1 %t60, true
  br i1 %t62, label %bb9, label %bb10
bb9:
  store i1 false, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/check:Checker", ptr %t65, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !29
  store ptr %t68, ptr %l36, !tbaa !29
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/check:Checker", ptr %t69, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !29
  %t74 = getelementptr %"compiler/generic:Program", ptr %t72, i32 0, i32 2
  %t75 = load i32, ptr %l2, !tbaa !23
  %t78 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t74, i32 %t75)
  store i32 %t78, ptr %l41
  br label %bb12
bb12:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/check:Checker", ptr %t79, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !29
  %t84 = getelementptr %"compiler/generic:Program", ptr %t82, i32 0, i32 2
  %t85 = load i32, ptr %l4, !tbaa !23
  %t88 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %t84, i32 %t85)
  store i64 %t88, ptr %l46
  br label %bb13
bb13:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"compiler/check:Checker", ptr %t89, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !29
  %t94 = getelementptr %"compiler/generic:Program", ptr %t92, i32 0, i32 2
  %t95 = load i32, ptr %l4, !tbaa !23
  %t98 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eB(ptr %v0, ptr %t94, i32 %t95)
  store i64 %t98, ptr %l51
  br label %bb14
bb14:
  %t99 = load ptr, ptr %l36, !tbaa !29
  %t100 = load i32, ptr %l41, !tbaa !23
  %t101 = load i64, ptr %l46, !tbaa !24
  %t102 = load i64, ptr %l51, !tbaa !24
  %t103 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eHoldsVarByValue(ptr %v0, ptr %t99, i32 %t100, i64 %t101, i64 %t102, i64 0)
  store i1 %t103, ptr %l52
  br label %bb15
bb15:
  %t104 = load i1, ptr %l52, !tbaa !21
  store i1 %t104, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffArm(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
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
  %l18 = alloca { i64, ptr }
  %l25 = alloca i1
  %l35 = alloca { i64, ptr }
  %l42 = alloca i1
  %l51 = alloca i1
  %l52 = alloca i1
  %l56 = alloca i1
  %l57 = alloca i1
  %l61 = alloca i1
  %rv = alloca i1
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
  br label %bb20
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
  %t34 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffX(ptr %v0, ptr %v1, ptr %t26, ptr %t30)
  store i1 %t34, ptr %l25
  br label %bb5
bb5:
  %t35 = load i1, ptr %l25, !tbaa !21
  br i1 %t35, label %bb6, label %bb7
bb6:
  store i1 true, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t37 = load ptr, ptr %l5, !tbaa !29
  %t39 = getelementptr %"compiler/typed:Alt", ptr %t37, i32 0, i32 1
  %t40 = load { i64, ptr }, ptr %t39, !tbaa !27
  store { i64, ptr } %t40, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t42 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t44 = extractvalue { i64, ptr } %t42, 0
  store i64 %t44, ptr %l8, !tbaa !24
  br label %bb9
bb9:
  %t46 = load i64, ptr %l7, !tbaa !24
  %t47 = load i64, ptr %l8, !tbaa !24
  %t50 = icmp slt i64 %t46, %t47
  %t52 = xor i1 %t50, true
  br i1 %t52, label %bb10, label %bb11
bb10:
  br label %bb18
bb11:
  br label %bb12
bb12:
  %t54 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t54, ptr %l35, !tbaa !27
  %t55 = load i64, ptr %l7, !tbaa !24
  %t57 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !27
  %t59 = getelementptr ptr, ptr %t58, i64 %t55
  %t60 = load ptr, ptr %t59, !tbaa !39
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/typed:Bind", ptr %t60, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t70 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffX(ptr %v0, ptr %v1, ptr %t62, ptr %t66)
  store i1 %t70, ptr %l42
  br label %bb13
bb13:
  %t71 = load i1, ptr %l42, !tbaa !21
  br i1 %t71, label %bb14, label %bb15
bb14:
  store i1 true, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t73 = load i64, ptr %l7, !tbaa !24
  %t75 = add i64 %t73, 1
  store i64 %t75, ptr %l7, !tbaa !24
  br label %bb9
bb18:
  br label %bb19
bb19:
  %t77 = load i64, ptr %l3, !tbaa !24
  %t79 = add i64 %t77, 1
  store i64 %t79, ptr %l3, !tbaa !24
  br label %bb1
bb20:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = load ptr, ptr %l1, !tbaa !29
  %t84 = getelementptr %"compiler/typed:Arm", ptr %t82, i32 0, i32 2
  %t85 = load ptr, ptr %t84, !tbaa !29
  %t88 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffX(ptr %v0, ptr %v1, ptr %t81, ptr %t85)
  store i1 %t88, ptr %l51
  br label %bb21
bb21:
  %t89 = load i1, ptr %l51, !tbaa !21
  br i1 %t89, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l52, !tbaa !21
  br label %bb25
bb23:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t91 = load ptr, ptr %l1, !tbaa !29
  %t93 = getelementptr %"compiler/typed:Arm", ptr %t91, i32 0, i32 3
  %t94 = load ptr, ptr %t93, !tbaa !29
  %t97 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffB(ptr %v0, ptr %v1, ptr %t90, ptr %t94)
  store i1 %t97, ptr %l56
  br label %bb24
bb24:
  %t98 = load i1, ptr %l56, !tbaa !21
  store i1 %t98, ptr %l52, !tbaa !21
  br label %bb25
bb25:
  %t99 = load i1, ptr %l52, !tbaa !21
  br i1 %t99, label %bb26, label %bb27
bb26:
  store i1 true, ptr %l57, !tbaa !21
  br label %bb29
bb27:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t101 = load ptr, ptr %l1, !tbaa !29
  %t103 = getelementptr %"compiler/typed:Arm", ptr %t101, i32 0, i32 4
  %t104 = load ptr, ptr %t103, !tbaa !29
  %t107 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffX(ptr %v0, ptr %v1, ptr %t100, ptr %t104)
  store i1 %t107, ptr %l61
  br label %bb28
bb28:
  %t108 = load i1, ptr %l61, !tbaa !21
  store i1 %t108, ptr %l57, !tbaa !21
  br label %bb29
bb29:
  %t109 = load i1, ptr %l57, !tbaa !21
  store i1 %t109, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr1(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l4 = alloca i1
  %l5 = alloca i64
  %l6 = alloca %"compiler/check:litv"
  %l7 = alloca %"compiler/source:Span"
  %l8 = alloca i32
  %l9 = alloca %"compiler/source:Span"
  %l10 = alloca i32
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca %"compiler/source:Span"
  %l14 = alloca i32
  %l15 = alloca ptr
  %l16 = alloca ptr
  %l17 = alloca %"compiler/source:Span"
  %l18 = alloca i32
  %l19 = alloca ptr
  %l20 = alloca ptr
  %l21 = alloca %"compiler/source:Span"
  %l22 = alloca ptr
  %l23 = alloca ptr
  %l24 = alloca ptr
  %l25 = alloca %"compiler/source:Span"
  %l26 = alloca ptr
  %l27 = alloca { i64, ptr }
  %l28 = alloca i64
  %l29 = alloca %"compiler/source:Span"
  %l30 = alloca ptr
  %l31 = alloca i32
  %l32 = alloca %"compiler/source:Span"
  %l33 = alloca ptr
  %l34 = alloca { i64, ptr }
  %l35 = alloca %"compiler/source:Span"
  %l36 = alloca ptr
  %l37 = alloca { i64, ptr }
  %l38 = alloca %"compiler/source:Span"
  %l39 = alloca { i64, ptr }
  %l40 = alloca %"compiler/source:Span"
  %l41 = alloca ptr
  %l42 = alloca { i64, ptr }
  %l43 = alloca %"compiler/source:Span"
  %l44 = alloca i32
  %l45 = alloca ptr
  %l46 = alloca %"compiler/source:Span"
  %l47 = alloca i32
  %l48 = alloca ptr
  %l49 = alloca %"compiler/source:Span"
  %l50 = alloca ptr
  %l51 = alloca ptr
  %l52 = alloca i1
  %l53 = alloca %"compiler/source:Span"
  %l54 = alloca ptr
  %l55 = alloca ptr
  %l56 = alloca %"compiler/source:Span"
  %l57 = alloca ptr
  %l58 = alloca ptr
  %l59 = alloca i1
  %l60 = alloca %"compiler/source:Span"
  %l61 = alloca ptr
  %l62 = alloca ptr
  %l63 = alloca ptr
  %l64 = alloca %"compiler/source:Span"
  %l65 = alloca ptr
  %l66 = alloca ptr
  %l67 = alloca %"compiler/source:Span"
  %l68 = alloca ptr
  %l69 = alloca %"compiler/source:Span"
  %l70 = alloca ptr
  %l71 = alloca %"compiler/source:Span"
  %l72 = alloca ptr
  %lp73 = alloca ptr
  %l74 = alloca %"compiler/source:Span"
  %l75 = alloca ptr
  %l76 = alloca %"compiler/source:Span"
  %l77 = alloca ptr
  %l78 = alloca %"compiler/source:Span"
  %l79 = alloca ptr
  %l80 = alloca { i64, ptr }
  %l81 = alloca { i64, ptr }
  %l82 = alloca %"compiler/source:Span"
  %l83 = alloca ptr
  %l84 = alloca %"compiler/source:Span"
  %l85 = alloca { i64, ptr }
  %l86 = alloca %"compiler/source:Span"
  %l87 = alloca ptr
  %l93 = alloca ptr
  %l94 = alloca %"compiler/source:Span"
  %l95 = alloca ptr
  %l97 = alloca ptr
  %l102 = alloca i1
  %l104 = alloca ptr
  %l107 = alloca i64
  %l109 = alloca i64
  %l111 = alloca ptr
  %l113 = alloca ptr
  %l115 = alloca %"compiler/source:Span"
  %l116 = alloca i64
  %l117 = alloca i64
  %l118 = alloca i32
  %l121 = alloca ptr
  %l123 = alloca %"compiler/source:Span"
  %l125 = alloca ptr
  %l129 = alloca %"compiler/check:litv"
  %l135 = alloca ptr
  %l136 = alloca ptr
  %l137 = alloca i1
  %l148 = alloca ptr
  %l149 = alloca ptr
  %l150 = alloca i1
  %l162 = alloca ptr
  %l166 = alloca ptr
  %l167 = alloca i1
  %l178 = alloca ptr
  %l179 = alloca ptr
  %l180 = alloca i1
  %l194 = alloca ptr
  %l198 = alloca ptr
  %l199 = alloca i1
  %l216 = alloca ptr
  %l223 = alloca ptr
  %l224 = alloca ptr
  %l225 = alloca i1
  %l242 = alloca ptr
  %l243 = alloca ptr
  %l244 = alloca i1
  %l256 = alloca i64
  %l259 = alloca ptr
  %l260 = alloca %"compiler/source:Span"
  %l262 = alloca i32
  %l264 = alloca ptr
  %l270 = alloca ptr
  %l271 = alloca ptr
  %l272 = alloca i1
  %l286 = alloca ptr
  %l287 = alloca ptr
  %l288 = alloca i1
  %l301 = alloca ptr
  %l302 = alloca ptr
  %l303 = alloca i1
  %l312 = alloca ptr
  %l313 = alloca %"compiler/source:Span"
  %l317 = alloca %"compiler/source:Span"
  %l318 = alloca ptr
  %l323 = alloca i32
  %l325 = alloca ptr
  %l326 = alloca ptr
  %l327 = alloca i1
  %l337 = alloca ptr
  %l338 = alloca ptr
  %l339 = alloca i1
  %l353 = alloca ptr
  %l354 = alloca ptr
  %l355 = alloca i1
  %l370 = alloca ptr
  %l371 = alloca ptr
  %l372 = alloca i1
  %l381 = alloca ptr
  %l382 = alloca ptr
  %l384 = alloca %"compiler/source:Span"
  %l385 = alloca %"compiler/source:Span"
  %l387 = alloca { i64, ptr }
  %l390 = alloca %"compiler/diagmsg:Msg"
  %l391 = alloca i64
  %l394 = alloca ptr
  %l395 = alloca ptr
  %l396 = alloca i1
  %l412 = alloca ptr
  %l413 = alloca ptr
  %l414 = alloca i1
  %l427 = alloca ptr
  %l428 = alloca ptr
  %l429 = alloca i1
  %l440 = alloca ptr
  %l441 = alloca ptr
  %l443 = alloca %"compiler/source:Span"
  %l445 = alloca %"compiler/source:Span"
  %l446 = alloca %"compiler/source:Span"
  %l448 = alloca { i64, ptr }
  %l449 = alloca %"compiler/diagmsg:Msg"
  %l450 = alloca i64
  %l454 = alloca ptr
  %l455 = alloca ptr
  %l456 = alloca i1
  %l472 = alloca ptr
  %l473 = alloca ptr
  %l474 = alloca i1
  %l483 = alloca ptr
  %l484 = alloca %"compiler/source:Span"
  %l489 = alloca ptr
  %l490 = alloca ptr
  %l491 = alloca ptr
  %l492 = alloca i1
  %l502 = alloca ptr
  %l503 = alloca ptr
  %l504 = alloca i1
  %l515 = alloca ptr
  %l516 = alloca ptr
  %l517 = alloca i1
  %l524 = alloca %"compiler/source:Span"
  %l525 = alloca i32
  %l528 = alloca ptr
  %l530 = alloca %"compiler/source:Span"
  %l531 = alloca i32
  %l532 = alloca ptr
  %l536 = alloca %"compiler/typed:Seq"
  %l540 = alloca ptr
  %l541 = alloca i1
  %l556 = alloca ptr
  %l557 = alloca ptr
  %l558 = alloca %"compiler/source:Span"
  %l559 = alloca %"compiler/diagmsg:Msg"
  %l560 = alloca i64
  %l563 = alloca ptr
  %l567 = alloca ptr
  %l568 = alloca ptr
  %l569 = alloca i1
  %l580 = alloca ptr
  %l581 = alloca ptr
  %l582 = alloca i1
  %l593 = alloca i64
  %l595 = alloca ptr
  %l598 = alloca i64
  %l601 = alloca { i64, ptr }
  %l607 = alloca ptr
  %l608 = alloca ptr
  %l609 = alloca %"compiler/source:Span"
  %l612 = alloca i64
  %l614 = alloca ptr
  %l615 = alloca ptr
  %l616 = alloca i1
  %l624 = alloca ptr
  %l626 = alloca ptr
  %l631 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l632 = alloca i1
  %l634 = alloca ptr
  %l635 = alloca %"compiler/source:Span"
  %l636 = alloca %"compiler/diagmsg:Msg"
  %l637 = alloca i64
  %l642 = alloca ptr
  %l645 = alloca ptr
  %l646 = alloca ptr
  %l647 = alloca i1
  %l658 = alloca ptr
  %l659 = alloca ptr
  %l660 = alloca i1
  %l667 = alloca ptr
  %l668 = alloca %"compiler/source:Span"
  %l669 = alloca %"compiler/diagmsg:Msg"
  %l670 = alloca i64
  %l671 = alloca ptr
  %l672 = alloca i1
  %l679 = alloca ptr
  %l682 = alloca ptr
  %l683 = alloca ptr
  %l685 = alloca %"compiler/source:Span"
  %l687 = alloca { i64, ptr }
  %l688 = alloca ptr
  %l690 = alloca %"compiler/source:Span"
  %l691 = alloca ptr
  %s1 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %s24 = alloca %olang.scope
  %s31 = alloca %olang.scope
  %s36 = alloca %olang.scope
  %s37 = alloca %olang.scope
  %s39 = alloca %olang.scope
  %s42 = alloca %olang.scope
  %rv = alloca ptr
  %t1042 = alloca { i64, [3 x i64] }, align 8
  %t1065 = alloca i64
  %t1079 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 12
  %t4 = load i1, ptr %t3, !tbaa !21
  store i1 %t4, ptr %l4, !tbaa !21
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/check:Checker", ptr %t6, i32 0, i32 12
  store i1 false, ptr %t8, !tbaa !21
  %t9 = load ptr, ptr %l1, !tbaa !29
  %t11 = icmp eq ptr %t9, null
  br i1 %t11, label %bb1, label %bb2
bb1:
  store %olang.scope zeroinitializer, ptr %s1
  %t13 = load ptr, ptr %l0, !tbaa !29
  store ptr %t13, ptr %l93, !tbaa !29
  %t14 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s1, i32 0, i32 0)
  store %"compiler/source:Span" %t14, ptr %l94
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t15 = load ptr, ptr %l93, !tbaa !29
  %t16 = load %"compiler/source:Span", ptr %l94
  %t17 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t15, %"compiler/source:Span" %t16)
  store ptr %t17, ptr %l95
  br label %bb4
bb4:
  call void @__olang_scope_close(ptr %s1)
  %t18 = load ptr, ptr %l95, !tbaa !29
  store ptr %t18, ptr %rv
  br label %ret
bb5:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t19)
  store ptr %t21, ptr %l97
  br label %bb6
bb6:
  %t22 = load ptr, ptr %l97, !tbaa !29
  %t24 = getelementptr %"compiler/check:frame", ptr %t22, i32 0, i32 53
  %t25 = load i64, ptr %t24, !tbaa !24
  %t26 = load i64, ptr @G_2ecompiler_2fcheck_2eCtEns, !tbaa !24
  %t29 = icmp eq i64 %t25, %t26
  br i1 %t29, label %bb7, label %bb8
bb7:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t31)
  store ptr %t33, ptr %l104
  br label %bb9
bb8:
  store i1 false, ptr %l102, !tbaa !21
  br label %bb11
bb9:
  %t34 = load ptr, ptr %l104, !tbaa !29
  %t36 = getelementptr %"compiler/check:frame", ptr %t34, i32 0, i32 55
  %t38 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eLen_3cI64_2c_20I64_3e(ptr %v0, ptr %t36)
  store i64 %t38, ptr %l107
  br label %bb10
bb10:
  %t39 = load i64, ptr %l107, !tbaa !24
  %t40 = icmp sgt i64 %t39, 0
  store i1 %t40, ptr %l102, !tbaa !21
  br label %bb11
bb11:
  %t42 = load i1, ptr %l102, !tbaa !21
  br i1 %t42, label %bb12, label %bb13
bb12:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t43)
  store ptr %t45, ptr %l111
  br label %bb14
bb13:
  br label %bb26
bb14:
  %t46 = load ptr, ptr %l111, !tbaa !29
  %t48 = getelementptr %"compiler/check:frame", ptr %t46, i32 0, i32 55
  store ptr %t48, ptr %l113, !tbaa !29
  %t49 = load ptr, ptr %l1, !tbaa !29
  %t51 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t49)
  store %"compiler/source:Span" %t51, ptr %l115
  br label %bb15
bb15:
  %t52 = load %"compiler/source:Span", ptr %l115
  %t53 = call i64 @compiler_2fcheck_2ectKey(%"compiler/source:Span" %t52)
  store i64 %t53, ptr %l116
  br label %bb16
bb16:
  %t54 = load ptr, ptr %l113, !tbaa !29
  %t55 = load i64, ptr %l116, !tbaa !24
  %t56 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t54, i64 %t55)
  %t57 = extractvalue { i32, i64 } %t56, 1
  %t58 = extractvalue { i32, i64 } %t56, 0
  store i32 %t58, ptr %l118
  %t59 = icmp ne i32 %t58, 0
  br i1 %t59, label %bb18, label %ok.60, !prof !99
ok.60:
  store i64 %t57, ptr %l117
  br label %bb17
bb17:
  %t61 = load i64, ptr %l117, !tbaa !24
  store i64 %t61, ptr %l109, !tbaa !24
  br label %bb20
bb18:
  br label %bb19
bb19:
  store i64 -1, ptr %l109, !tbaa !24
  br label %bb20
bb20:
  %t62 = load i64, ptr %l109, !tbaa !24
  store i64 %t62, ptr %l5, !tbaa !24
  %t63 = load i64, ptr %l5, !tbaa !24
  %t65 = icmp sge i64 %t63, 0
  br i1 %t65, label %bb21, label %bb22
bb21:
  %t67 = load ptr, ptr %l0, !tbaa !29
  store ptr %t67, ptr %l121, !tbaa !29
  %t68 = load ptr, ptr %l1, !tbaa !29
  %t70 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t68)
  store %"compiler/source:Span" %t70, ptr %l123
  br label %bb23
bb22:
  br label %bb25
bb23:
  %t71 = load i64, ptr %l5, !tbaa !24
  %t72 = load ptr, ptr %l121, !tbaa !29
  %t73 = load %"compiler/source:Span", ptr %l123
  %t75 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v2, ptr %t72, %"compiler/source:Span" %t73, i64 %t71)
  store ptr %t75, ptr %l125
  br label %bb24
bb24:
  %t76 = load ptr, ptr %l125, !tbaa !29
  store ptr %t76, ptr %rv
  br label %ret
bb25:
  br label %bb26
bb26:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t78 = load ptr, ptr %l1, !tbaa !29
  %t82 = call %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v1, ptr %t77, ptr %t78)
  store %"compiler/check:litv" %t82, ptr %l129
  br label %bb27
bb27:
  %t83 = load %"compiler/check:litv", ptr %l129
  store %"compiler/check:litv" %t83, ptr %l6
  %t84 = getelementptr %"compiler/check:litv", ptr %l6, i32 0, i32 0
  %t85 = load i1, ptr %t84, !tbaa !21
  br i1 %t85, label %bb28, label %bb29
bb28:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t88 = load ptr, ptr %l1, !tbaa !29
  %t89 = load %"compiler/check:litv", ptr %l6
  %t90 = load i32, ptr %l2, !tbaa !23
  %t95 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitOf(ptr %v0, ptr %v1, ptr %v2, ptr %t87, ptr %t88, %"compiler/check:litv" %t89, i32 %t90)
  store ptr %t95, ptr %l135
  br label %bb30
bb29:
  br label %bb31
bb30:
  %t96 = load ptr, ptr %l135, !tbaa !29
  store ptr %t96, ptr %rv
  br label %ret
bb31:
  %t97 = load ptr, ptr %l1, !tbaa !29
  store ptr %t97, ptr %l136, !tbaa !29
  store i1 false, ptr %l137, !tbaa !21
  %t98 = load ptr, ptr %l136, !tbaa !29
  %t99 = icmp ne ptr %t98, null
  br i1 %t99, label %bb32, label %bb33
bb32:
  %t101 = load ptr, ptr %l136, !tbaa !29
  %t102 = load i64, ptr %t101, !range !{i64 0, i64 30}
  %t104 = icmp eq i64 %t102, 1
  store i1 %t104, ptr %l137, !tbaa !21
  br label %bb33
bb33:
  %t105 = load i1, ptr %l137, !tbaa !21
  br i1 %t105, label %bb34, label %bb35
bb34:
  %t106 = load ptr, ptr %l1, !tbaa !29
  %t108 = getelementptr { i64, [4 x i64] }, ptr %t106, i32 0, i32 1
  %t109 = getelementptr { %"compiler/source:Span", i32 }, ptr %t108, i32 0, i32 0
  %t110 = load %"compiler/source:Span", ptr %t109
  store %"compiler/source:Span" %t110, ptr %l7
  %t112 = load ptr, ptr %l1, !tbaa !29
  %t114 = getelementptr { i64, [4 x i64] }, ptr %t112, i32 0, i32 1
  %t115 = getelementptr { %"compiler/source:Span", i32 }, ptr %t114, i32 0, i32 1
  %t116 = load i32, ptr %t115, !range !{i32 0, i32 114}
  store i32 %t116, ptr %l8
  br label %bb36
bb35:
  br label %bb38
bb36:
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t119 = load %"compiler/source:Span", ptr %l7
  %t120 = load i32, ptr %l8, !range !{i32 0, i32 114}
  %t121 = load i32, ptr %l2, !tbaa !23
  %t126 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eliteral(ptr %v0, ptr %v2, ptr %t118, %"compiler/source:Span" %t119, i32 %t120, i32 %t121)
  store ptr %t126, ptr %l148
  br label %bb37
bb37:
  %t127 = load ptr, ptr %l148, !tbaa !29
  store ptr %t127, ptr %rv
  br label %ret
bb38:
  %t128 = load ptr, ptr %l1, !tbaa !29
  store ptr %t128, ptr %l149, !tbaa !29
  store i1 false, ptr %l150, !tbaa !21
  %t129 = load ptr, ptr %l149, !tbaa !29
  %t130 = icmp ne ptr %t129, null
  br i1 %t130, label %bb39, label %bb40
bb39:
  %t132 = load ptr, ptr %l149, !tbaa !29
  %t133 = load i64, ptr %t132, !range !{i64 0, i64 30}
  %t135 = icmp eq i64 %t133, 0
  store i1 %t135, ptr %l150, !tbaa !21
  br label %bb40
bb40:
  %t136 = load i1, ptr %l150, !tbaa !21
  br i1 %t136, label %bb41, label %bb42
bb41:
  %t137 = load ptr, ptr %l1, !tbaa !29
  %t139 = getelementptr { i64, [4 x i64] }, ptr %t137, i32 0, i32 1
  %t140 = getelementptr { %"compiler/source:Span", i32 }, ptr %t139, i32 0, i32 0
  %t141 = load %"compiler/source:Span", ptr %t140
  store %"compiler/source:Span" %t141, ptr %l9
  %t143 = load ptr, ptr %l1, !tbaa !29
  %t145 = getelementptr { i64, [4 x i64] }, ptr %t143, i32 0, i32 1
  %t146 = getelementptr { %"compiler/source:Span", i32 }, ptr %t145, i32 0, i32 1
  %t147 = load i32, ptr %t146
  store i32 %t147, ptr %l10, !tbaa !23
  br label %bb43
bb42:
  br label %bb48
bb43:
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t150 = load %"compiler/source:Span", ptr %l9
  %t151 = load i32, ptr %l10, !tbaa !23
  %t152 = load i32, ptr %l2, !tbaa !23
  %t153 = load i1, ptr %l4, !tbaa !21
  %t159 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ename(ptr %v0, ptr %v0, ptr %t149, %"compiler/source:Span" %t150, i32 %t151, i32 %t152, i1 %t153)
  store ptr %t159, ptr %l162
  br label %bb44
bb44:
  %t160 = load ptr, ptr %l162, !tbaa !29
  store ptr %t160, ptr %l11, !tbaa !29
  %t161 = load ptr, ptr %l11, !tbaa !29
  %t163 = icmp eq ptr %t161, null
  br i1 %t163, label %bb45, label %bb46
bb45:
  call void @__olang_check_failed(ptr @olang_loc_89186a9ac380dd4_b33b27dd6103e3a0)
  unreachable
bb46:
  br label %bb47
bb47:
  %t165 = load ptr, ptr %l11, !tbaa !29
  store ptr %t165, ptr %rv
  br label %ret
bb48:
  %t167 = load ptr, ptr %l1, !tbaa !29
  store ptr %t167, ptr %l166, !tbaa !29
  store i1 false, ptr %l167, !tbaa !21
  %t168 = load ptr, ptr %l166, !tbaa !29
  %t169 = icmp ne ptr %t168, null
  br i1 %t169, label %bb49, label %bb50
bb49:
  %t171 = load ptr, ptr %l166, !tbaa !29
  %t172 = load i64, ptr %t171, !range !{i64 0, i64 30}
  %t174 = icmp eq i64 %t172, 2
  store i1 %t174, ptr %l167, !tbaa !21
  br label %bb50
bb50:
  %t175 = load i1, ptr %l167, !tbaa !21
  br i1 %t175, label %bb51, label %bb52
bb51:
  %t176 = load ptr, ptr %l1, !tbaa !29
  %t178 = getelementptr { i64, [4 x i64] }, ptr %t176, i32 0, i32 1
  %t179 = getelementptr { %"compiler/source:Span", ptr }, ptr %t178, i32 0, i32 1
  %t180 = load ptr, ptr %t179
  store ptr %t180, ptr %l12, !tbaa !29
  br label %bb53
bb52:
  br label %bb55
bb53:
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t186 = getelementptr %"compiler/check:Checker", ptr %t182, i32 0, i32 40
  store i1 %a3, ptr %t186, !tbaa !21
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t188 = load ptr, ptr %l12, !tbaa !29
  %t190 = load i32, ptr %l2, !tbaa !23
  %t194 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %t187, ptr %t188, i32 %t190)
  store ptr %t194, ptr %l178
  br label %bb54
bb54:
  %t195 = load ptr, ptr %l178, !tbaa !29
  store ptr %t195, ptr %rv
  br label %ret
bb55:
  %t196 = load ptr, ptr %l1, !tbaa !29
  store ptr %t196, ptr %l179, !tbaa !29
  store i1 false, ptr %l180, !tbaa !21
  %t197 = load ptr, ptr %l179, !tbaa !29
  %t198 = icmp ne ptr %t197, null
  br i1 %t198, label %bb56, label %bb57
bb56:
  %t200 = load ptr, ptr %l179, !tbaa !29
  %t201 = load i64, ptr %t200, !range !{i64 0, i64 30}
  %t203 = icmp eq i64 %t201, 3
  store i1 %t203, ptr %l180, !tbaa !21
  br label %bb57
bb57:
  %t204 = load i1, ptr %l180, !tbaa !21
  br i1 %t204, label %bb58, label %bb59
bb58:
  %t205 = load ptr, ptr %l1, !tbaa !29
  %t207 = getelementptr { i64, [4 x i64] }, ptr %t205, i32 0, i32 1
  %t208 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t207, i32 0, i32 0
  %t209 = load %"compiler/source:Span", ptr %t208
  store %"compiler/source:Span" %t209, ptr %l13
  %t211 = load ptr, ptr %l1, !tbaa !29
  %t213 = getelementptr { i64, [4 x i64] }, ptr %t211, i32 0, i32 1
  %t214 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t213, i32 0, i32 1
  %t215 = load i32, ptr %t214, !range !{i32 0, i32 114}
  store i32 %t215, ptr %l14
  %t217 = load ptr, ptr %l1, !tbaa !29
  %t219 = getelementptr { i64, [4 x i64] }, ptr %t217, i32 0, i32 1
  %t220 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t219, i32 0, i32 2
  %t221 = load ptr, ptr %t220
  store ptr %t221, ptr %l15, !tbaa !29
  br label %bb60
bb59:
  br label %bb65
bb60:
  %t223 = load ptr, ptr %l0, !tbaa !29
  %t224 = load %"compiler/source:Span", ptr %l13
  %t225 = load i32, ptr %l14, !range !{i32 0, i32 114}
  %t226 = load ptr, ptr %l15, !tbaa !29
  %t227 = load i32, ptr %l2, !tbaa !23
  %t233 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunary(ptr %v0, ptr %v1, ptr %v0, ptr %t223, %"compiler/source:Span" %t224, i32 %t225, ptr %t226, i32 %t227)
  store ptr %t233, ptr %l194
  br label %bb61
bb61:
  %t234 = load ptr, ptr %l194, !tbaa !29
  store ptr %t234, ptr %l16, !tbaa !29
  %t235 = load ptr, ptr %l16, !tbaa !29
  %t237 = icmp eq ptr %t235, null
  br i1 %t237, label %bb62, label %bb63
bb62:
  call void @__olang_check_failed(ptr @olang_loc_7c4353164dbe9ee3_aefc37a1203a15bf)
  unreachable
bb63:
  br label %bb64
bb64:
  %t239 = load ptr, ptr %l16, !tbaa !29
  store ptr %t239, ptr %rv
  br label %ret
bb65:
  %t241 = load ptr, ptr %l1, !tbaa !29
  store ptr %t241, ptr %l198, !tbaa !29
  store i1 false, ptr %l199, !tbaa !21
  %t242 = load ptr, ptr %l198, !tbaa !29
  %t243 = icmp ne ptr %t242, null
  br i1 %t243, label %bb66, label %bb67
bb66:
  %t245 = load ptr, ptr %l198, !tbaa !29
  %t246 = load i64, ptr %t245, !range !{i64 0, i64 30}
  %t248 = icmp eq i64 %t246, 5
  store i1 %t248, ptr %l199, !tbaa !21
  br label %bb67
bb67:
  %t249 = load i1, ptr %l199, !tbaa !21
  br i1 %t249, label %bb68, label %bb69
bb68:
  %t250 = load ptr, ptr %l1, !tbaa !29
  %t252 = getelementptr { i64, [4 x i64] }, ptr %t250, i32 0, i32 1
  %t253 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t252, i32 0, i32 0
  %t254 = load %"compiler/source:Span", ptr %t253
  store %"compiler/source:Span" %t254, ptr %l17
  %t256 = load ptr, ptr %l1, !tbaa !29
  %t258 = getelementptr { i64, [4 x i64] }, ptr %t256, i32 0, i32 1
  %t259 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t258, i32 0, i32 1
  %t260 = load i32, ptr %t259, !range !{i32 0, i32 114}
  store i32 %t260, ptr %l18
  %t262 = load ptr, ptr %l1, !tbaa !29
  %t264 = getelementptr { i64, [4 x i64] }, ptr %t262, i32 0, i32 1
  %t265 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t264, i32 0, i32 2
  %t266 = load ptr, ptr %t265
  store ptr %t266, ptr %l19, !tbaa !29
  %t268 = load ptr, ptr %l1, !tbaa !29
  %t270 = getelementptr { i64, [4 x i64] }, ptr %t268, i32 0, i32 1
  %t271 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t270, i32 0, i32 3
  %t272 = load ptr, ptr %t271
  store ptr %t272, ptr %l20, !tbaa !29
  br label %bb70
bb69:
  br label %bb76
bb70:
  %t274 = load i32, ptr %l18, !range !{i32 0, i32 114}
  %t276 = trunc i64 27 to i32
  %t277 = icmp eq i32 %t274, %t276
  br i1 %t277, label %bb71, label %bb72
bb71:
  %t279 = load ptr, ptr %l0, !tbaa !29
  %t280 = load %"compiler/source:Span", ptr %l17
  %t281 = load ptr, ptr %l19, !tbaa !29
  %t282 = load ptr, ptr %l20, !tbaa !29
  %t287 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emembership(ptr %v0, ptr %v1, ptr %v1, ptr %v2, ptr %t279, %"compiler/source:Span" %t280, ptr %t281, ptr %t282)
  store ptr %t287, ptr %l216
  br label %bb73
bb72:
  br label %bb74
bb73:
  %t288 = load ptr, ptr %l216, !tbaa !29
  store ptr %t288, ptr %rv
  br label %ret
bb74:
  %t289 = load ptr, ptr %l0, !tbaa !29
  %t290 = load %"compiler/source:Span", ptr %l17
  %t291 = load i32, ptr %l18, !range !{i32 0, i32 114}
  %t292 = load ptr, ptr %l19, !tbaa !29
  %t293 = load ptr, ptr %l20, !tbaa !29
  %t294 = load i32, ptr %l2, !tbaa !23
  %t301 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebinary(ptr %v0, ptr %v1, ptr %v1, ptr %v2, ptr %t289, %"compiler/source:Span" %t290, i32 %t291, ptr %t292, ptr %t293, i32 %t294)
  store ptr %t301, ptr %l223
  br label %bb75
bb75:
  %t302 = load ptr, ptr %l223, !tbaa !29
  store ptr %t302, ptr %rv
  br label %ret
bb76:
  %t303 = load ptr, ptr %l1, !tbaa !29
  store ptr %t303, ptr %l224, !tbaa !29
  store i1 false, ptr %l225, !tbaa !21
  %t304 = load ptr, ptr %l224, !tbaa !29
  %t305 = icmp ne ptr %t304, null
  br i1 %t305, label %bb77, label %bb78
bb77:
  %t307 = load ptr, ptr %l224, !tbaa !29
  %t308 = load i64, ptr %t307, !range !{i64 0, i64 30}
  %t310 = icmp eq i64 %t308, 8
  store i1 %t310, ptr %l225, !tbaa !21
  br label %bb78
bb78:
  %t311 = load i1, ptr %l225, !tbaa !21
  br i1 %t311, label %bb79, label %bb80
bb79:
  %t312 = load ptr, ptr %l1, !tbaa !29
  %t314 = getelementptr { i64, [4 x i64] }, ptr %t312, i32 0, i32 1
  %t315 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t314, i32 0, i32 0
  %t316 = load %"compiler/source:Span", ptr %t315
  store %"compiler/source:Span" %t316, ptr %l21
  %t318 = load ptr, ptr %l1, !tbaa !29
  %t320 = getelementptr { i64, [4 x i64] }, ptr %t318, i32 0, i32 1
  %t321 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t320, i32 0, i32 1
  %t322 = load ptr, ptr %t321
  store ptr %t322, ptr %l22, !tbaa !29
  %t324 = load ptr, ptr %l1, !tbaa !29
  %t326 = getelementptr { i64, [4 x i64] }, ptr %t324, i32 0, i32 1
  %t327 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t326, i32 0, i32 2
  %t328 = load ptr, ptr %t327
  store ptr %t328, ptr %l23, !tbaa !29
  %t330 = load ptr, ptr %l1, !tbaa !29
  %t332 = getelementptr { i64, [4 x i64] }, ptr %t330, i32 0, i32 1
  %t333 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t332, i32 0, i32 3
  %t334 = load ptr, ptr %t333
  store ptr %t334, ptr %l24, !tbaa !29
  br label %bb81
bb80:
  br label %bb83
bb81:
  %t336 = load ptr, ptr %l0, !tbaa !29
  %t337 = load %"compiler/source:Span", ptr %l21
  %t338 = load ptr, ptr %l22, !tbaa !29
  %t339 = load ptr, ptr %l23, !tbaa !29
  %t340 = load ptr, ptr %l24, !tbaa !29
  %t341 = load i32, ptr %l2, !tbaa !23
  %t348 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econd(ptr %v0, ptr %v1, ptr %v1, ptr %v1, ptr %v2, ptr %t336, %"compiler/source:Span" %t337, ptr %t338, ptr %t339, ptr %t340, i32 %t341)
  store ptr %t348, ptr %l242
  br label %bb82
bb82:
  %t349 = load ptr, ptr %l242, !tbaa !29
  store ptr %t349, ptr %rv
  br label %ret
bb83:
  %t350 = load ptr, ptr %l1, !tbaa !29
  store ptr %t350, ptr %l243, !tbaa !29
  store i1 false, ptr %l244, !tbaa !21
  %t351 = load ptr, ptr %l243, !tbaa !29
  %t352 = icmp ne ptr %t351, null
  br i1 %t352, label %bb84, label %bb85
bb84:
  %t354 = load ptr, ptr %l243, !tbaa !29
  %t355 = load i64, ptr %t354, !range !{i64 0, i64 30}
  %t357 = icmp eq i64 %t355, 12
  store i1 %t357, ptr %l244, !tbaa !21
  br label %bb85
bb85:
  %t358 = load i1, ptr %l244, !tbaa !21
  br i1 %t358, label %bb86, label %bb87
bb86:
  %t359 = load ptr, ptr %l1, !tbaa !29
  %t361 = getelementptr { i64, [4 x i64] }, ptr %t359, i32 0, i32 1
  %t362 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t361, i32 0, i32 0
  %t363 = load %"compiler/source:Span", ptr %t362
  store %"compiler/source:Span" %t363, ptr %l25
  %t365 = load ptr, ptr %l1, !tbaa !29
  %t367 = getelementptr { i64, [4 x i64] }, ptr %t365, i32 0, i32 1
  %t368 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t367, i32 0, i32 1
  %t369 = load ptr, ptr %t368
  store ptr %t369, ptr %l26, !tbaa !29
  %t371 = load ptr, ptr %l1, !tbaa !29
  %t373 = getelementptr { i64, [4 x i64] }, ptr %t371, i32 0, i32 1
  %t374 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t373, i32 0, i32 2
  %t375 = load { i64, ptr }, ptr %t374
  store { i64, ptr } %t375, ptr %l27, !tbaa !27
  br label %bb88
bb87:
  br label %bb96
bb88:
  %t377 = load ptr, ptr %l0, !tbaa !29
  %t378 = load ptr, ptr %l26, !tbaa !29
  %t379 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t383 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eparamLen(ptr %v0, ptr %v1, ptr %v1, ptr %t377, ptr %t378, { i64, ptr } %t379)
  store i64 %t383, ptr %l256
  br label %bb89
bb89:
  %t384 = load i64, ptr %l256, !tbaa !24
  store i64 %t384, ptr %l28, !tbaa !24
  %t385 = load i64, ptr %l28, !tbaa !24
  %t387 = icmp sge i64 %t385, 0
  br i1 %t387, label %bb90, label %bb91
bb90:
  %t389 = load ptr, ptr %l0, !tbaa !29
  store ptr %t389, ptr %l259, !tbaa !29
  %t390 = load %"compiler/source:Span", ptr %l25
  store %"compiler/source:Span" %t390, ptr %l260
  %t391 = load ptr, ptr %l0, !tbaa !29
  %t393 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t391)
  store i32 %t393, ptr %l262
  br label %bb92
bb91:
  br label %bb94
bb92:
  %t394 = load i64, ptr %l28, !tbaa !24
  %t395 = load ptr, ptr %l259, !tbaa !29
  %t396 = load %"compiler/source:Span", ptr %l260
  %t397 = load i32, ptr %l262, !tbaa !23
  %t399 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v2, ptr %t395, %"compiler/source:Span" %t396, i32 %t397, i64 %t394)
  store ptr %t399, ptr %l264
  br label %bb93
bb93:
  %t400 = load ptr, ptr %l264, !tbaa !29
  store ptr %t400, ptr %rv
  br label %ret
bb94:
  %t401 = load ptr, ptr %l0, !tbaa !29
  %t402 = load %"compiler/source:Span", ptr %l25
  %t403 = load ptr, ptr %l26, !tbaa !29
  %t404 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t405 = load i32, ptr %l2, !tbaa !23
  %t411 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecall(ptr %v0, ptr %v1, ptr %v1, ptr %v2, ptr %t401, %"compiler/source:Span" %t402, ptr %t403, { i64, ptr } %t404, i32 %t405)
  store ptr %t411, ptr %l270
  br label %bb95
bb95:
  %t412 = load ptr, ptr %l270, !tbaa !29
  store ptr %t412, ptr %rv
  br label %ret
bb96:
  %t413 = load ptr, ptr %l1, !tbaa !29
  store ptr %t413, ptr %l271, !tbaa !29
  store i1 false, ptr %l272, !tbaa !21
  %t414 = load ptr, ptr %l271, !tbaa !29
  %t415 = icmp ne ptr %t414, null
  br i1 %t415, label %bb97, label %bb98
bb97:
  %t417 = load ptr, ptr %l271, !tbaa !29
  %t418 = load i64, ptr %t417, !range !{i64 0, i64 30}
  %t420 = icmp eq i64 %t418, 14
  store i1 %t420, ptr %l272, !tbaa !21
  br label %bb98
bb98:
  %t421 = load i1, ptr %l272, !tbaa !21
  br i1 %t421, label %bb99, label %bb100
bb99:
  %t422 = load ptr, ptr %l1, !tbaa !29
  %t424 = getelementptr { i64, [4 x i64] }, ptr %t422, i32 0, i32 1
  %t425 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t424, i32 0, i32 0
  %t426 = load %"compiler/source:Span", ptr %t425
  store %"compiler/source:Span" %t426, ptr %l29
  %t428 = load ptr, ptr %l1, !tbaa !29
  %t430 = getelementptr { i64, [4 x i64] }, ptr %t428, i32 0, i32 1
  %t431 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t430, i32 0, i32 1
  %t432 = load ptr, ptr %t431
  store ptr %t432, ptr %l30, !tbaa !29
  %t434 = load ptr, ptr %l1, !tbaa !29
  %t436 = getelementptr { i64, [4 x i64] }, ptr %t434, i32 0, i32 1
  %t437 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t436, i32 0, i32 2
  %t438 = load i32, ptr %t437
  store i32 %t438, ptr %l31, !tbaa !23
  br label %bb101
bb100:
  br label %bb103
bb101:
  %t440 = load ptr, ptr %l0, !tbaa !29
  %t441 = load %"compiler/source:Span", ptr %l29
  %t442 = load ptr, ptr %l30, !tbaa !29
  %t443 = load i32, ptr %l31, !tbaa !23
  %t444 = load i32, ptr %l2, !tbaa !23
  %t450 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emember(ptr %v0, ptr %v1, ptr %v2, ptr %t440, %"compiler/source:Span" %t441, ptr %t442, i32 %t443, i32 %t444)
  store ptr %t450, ptr %l286
  br label %bb102
bb102:
  %t451 = load ptr, ptr %l286, !tbaa !29
  store ptr %t451, ptr %rv
  br label %ret
bb103:
  %t452 = load ptr, ptr %l1, !tbaa !29
  store ptr %t452, ptr %l287, !tbaa !29
  store i1 false, ptr %l288, !tbaa !21
  %t453 = load ptr, ptr %l287, !tbaa !29
  %t454 = icmp ne ptr %t453, null
  br i1 %t454, label %bb104, label %bb105
bb104:
  %t456 = load ptr, ptr %l287, !tbaa !29
  %t457 = load i64, ptr %t456, !range !{i64 0, i64 30}
  %t459 = icmp eq i64 %t457, 15
  store i1 %t459, ptr %l288, !tbaa !21
  br label %bb105
bb105:
  %t460 = load i1, ptr %l288, !tbaa !21
  br i1 %t460, label %bb106, label %bb107
bb106:
  %t461 = load ptr, ptr %l1, !tbaa !29
  %t463 = getelementptr { i64, [4 x i64] }, ptr %t461, i32 0, i32 1
  %t464 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t463, i32 0, i32 0
  %t465 = load %"compiler/source:Span", ptr %t464
  store %"compiler/source:Span" %t465, ptr %l32
  %t467 = load ptr, ptr %l1, !tbaa !29
  %t469 = getelementptr { i64, [4 x i64] }, ptr %t467, i32 0, i32 1
  %t470 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t469, i32 0, i32 1
  %t471 = load ptr, ptr %t470
  store ptr %t471, ptr %l33, !tbaa !29
  %t473 = load ptr, ptr %l1, !tbaa !29
  %t475 = getelementptr { i64, [4 x i64] }, ptr %t473, i32 0, i32 1
  %t476 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t475, i32 0, i32 2
  %t477 = load { i64, ptr }, ptr %t476
  store { i64, ptr } %t477, ptr %l34, !tbaa !27
  br label %bb108
bb107:
  br label %bb110
bb108:
  %t479 = load ptr, ptr %l0, !tbaa !29
  %t480 = load %"compiler/source:Span", ptr %l32
  %t481 = load ptr, ptr %l33, !tbaa !29
  %t482 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t487 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eindex(ptr %v0, ptr %v1, ptr %v1, ptr %v2, ptr %t479, %"compiler/source:Span" %t480, ptr %t481, { i64, ptr } %t482)
  store ptr %t487, ptr %l301
  br label %bb109
bb109:
  %t488 = load ptr, ptr %l301, !tbaa !29
  store ptr %t488, ptr %rv
  br label %ret
bb110:
  %t489 = load ptr, ptr %l1, !tbaa !29
  store ptr %t489, ptr %l302, !tbaa !29
  store i1 false, ptr %l303, !tbaa !21
  %t490 = load ptr, ptr %l302, !tbaa !29
  %t491 = icmp ne ptr %t490, null
  br i1 %t491, label %bb111, label %bb112
bb111:
  %t493 = load ptr, ptr %l302, !tbaa !29
  %t494 = load i64, ptr %t493, !range !{i64 0, i64 30}
  %t496 = icmp eq i64 %t494, 17
  store i1 %t496, ptr %l303, !tbaa !21
  br label %bb112
bb112:
  %t497 = load i1, ptr %l303, !tbaa !21
  br i1 %t497, label %bb113, label %bb114
bb113:
  %t498 = load ptr, ptr %l1, !tbaa !29
  %t500 = getelementptr { i64, [4 x i64] }, ptr %t498, i32 0, i32 1
  %t501 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t500, i32 0, i32 0
  %t502 = load %"compiler/source:Span", ptr %t501
  store %"compiler/source:Span" %t502, ptr %l35
  %t504 = load ptr, ptr %l1, !tbaa !29
  %t506 = getelementptr { i64, [4 x i64] }, ptr %t504, i32 0, i32 1
  %t507 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t506, i32 0, i32 1
  %t508 = load ptr, ptr %t507
  store ptr %t508, ptr %l36, !tbaa !29
  %t510 = load ptr, ptr %l1, !tbaa !29
  %t512 = getelementptr { i64, [4 x i64] }, ptr %t510, i32 0, i32 1
  %t513 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t512, i32 0, i32 2
  %t514 = load { i64, ptr }, ptr %t513
  store { i64, ptr } %t514, ptr %l37, !tbaa !27
  br label %bb115
bb114:
  br label %bb125
bb115:
  %t516 = load ptr, ptr %l0, !tbaa !29
  store ptr %t516, ptr %l312, !tbaa !29
  %t517 = load %"compiler/source:Span", ptr %l35
  store %"compiler/source:Span" %t517, ptr %l313
  %t518 = load ptr, ptr %l36, !tbaa !29
  %t520 = icmp eq ptr %t518, null
  br i1 %t520, label %bb116, label %bb117
bb116:
  call void @__olang_check_failed(ptr @olang_loc_53847db9c92a0562_710dd7f3ca4a530e)
  unreachable
bb117:
  br label %bb118
bb118:
  %t522 = load ptr, ptr %l36, !tbaa !29
  %t524 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t522)
  store %"compiler/source:Span" %t524, ptr %l317
  br label %bb119
bb119:
  %t525 = load ptr, ptr %l0, !tbaa !29
  store ptr %t525, ptr %l318, !tbaa !29
  %t526 = load ptr, ptr %l36, !tbaa !29
  %t528 = icmp eq ptr %t526, null
  br i1 %t528, label %bb120, label %bb121
bb120:
  call void @__olang_check_failed(ptr @olang_loc_53847db9c92a0562_710dd7f3ca4a530e)
  unreachable
bb121:
  br label %bb122
bb122:
  %t530 = load ptr, ptr %l36, !tbaa !29
  %t532 = load ptr, ptr %l318, !tbaa !29
  %t534 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolve(ptr %v0, ptr %v1, ptr %t532, ptr %t530)
  store i32 %t534, ptr %l323
  br label %bb123
bb123:
  %t535 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t536 = load ptr, ptr %l312, !tbaa !29
  %t537 = load %"compiler/source:Span", ptr %l313
  %t538 = load %"compiler/source:Span", ptr %l317
  %t539 = load i32, ptr %l323, !tbaa !23
  %t541 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emadeLit(ptr %v0, ptr %v1, ptr %v2, ptr %t536, %"compiler/source:Span" %t537, %"compiler/source:Span" %t538, i32 %t539, { i64, ptr } %t535)
  store ptr %t541, ptr %l325
  br label %bb124
bb124:
  %t542 = load ptr, ptr %l325, !tbaa !29
  store ptr %t542, ptr %rv
  br label %ret
bb125:
  %t543 = load ptr, ptr %l1, !tbaa !29
  store ptr %t543, ptr %l326, !tbaa !29
  store i1 false, ptr %l327, !tbaa !21
  %t544 = load ptr, ptr %l326, !tbaa !29
  %t545 = icmp ne ptr %t544, null
  br i1 %t545, label %bb126, label %bb127
bb126:
  %t547 = load ptr, ptr %l326, !tbaa !29
  %t548 = load i64, ptr %t547, !range !{i64 0, i64 30}
  %t550 = icmp eq i64 %t548, 20
  store i1 %t550, ptr %l327, !tbaa !21
  br label %bb127
bb127:
  %t551 = load i1, ptr %l327, !tbaa !21
  br i1 %t551, label %bb128, label %bb129
bb128:
  %t552 = load ptr, ptr %l1, !tbaa !29
  %t554 = getelementptr { i64, [4 x i64] }, ptr %t552, i32 0, i32 1
  %t555 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t554, i32 0, i32 0
  %t556 = load %"compiler/source:Span", ptr %t555
  store %"compiler/source:Span" %t556, ptr %l38
  %t558 = load ptr, ptr %l1, !tbaa !29
  %t560 = getelementptr { i64, [4 x i64] }, ptr %t558, i32 0, i32 1
  %t561 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t560, i32 0, i32 1
  %t562 = load { i64, ptr }, ptr %t561
  store { i64, ptr } %t562, ptr %l39, !tbaa !27
  br label %bb130
bb129:
  br label %bb132
bb130:
  %t564 = load ptr, ptr %l0, !tbaa !29
  %t565 = load %"compiler/source:Span", ptr %l38
  %t566 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t570 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ejoin(ptr %v0, ptr %v1, ptr %v2, ptr %t564, %"compiler/source:Span" %t565, { i64, ptr } %t566)
  store ptr %t570, ptr %l337
  br label %bb131
bb131:
  %t571 = load ptr, ptr %l337, !tbaa !29
  store ptr %t571, ptr %rv
  br label %ret
bb132:
  %t572 = load ptr, ptr %l1, !tbaa !29
  store ptr %t572, ptr %l338, !tbaa !29
  store i1 false, ptr %l339, !tbaa !21
  %t573 = load ptr, ptr %l338, !tbaa !29
  %t574 = icmp ne ptr %t573, null
  br i1 %t574, label %bb133, label %bb134
bb133:
  %t576 = load ptr, ptr %l338, !tbaa !29
  %t577 = load i64, ptr %t576, !range !{i64 0, i64 30}
  %t579 = icmp eq i64 %t577, 21
  store i1 %t579, ptr %l339, !tbaa !21
  br label %bb134
bb134:
  %t580 = load i1, ptr %l339, !tbaa !21
  br i1 %t580, label %bb135, label %bb136
bb135:
  %t581 = load ptr, ptr %l1, !tbaa !29
  %t583 = getelementptr { i64, [4 x i64] }, ptr %t581, i32 0, i32 1
  %t584 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t583, i32 0, i32 0
  %t585 = load %"compiler/source:Span", ptr %t584
  store %"compiler/source:Span" %t585, ptr %l40
  %t587 = load ptr, ptr %l1, !tbaa !29
  %t589 = getelementptr { i64, [4 x i64] }, ptr %t587, i32 0, i32 1
  %t590 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t589, i32 0, i32 1
  %t591 = load ptr, ptr %t590
  store ptr %t591, ptr %l41, !tbaa !29
  %t593 = load ptr, ptr %l1, !tbaa !29
  %t595 = getelementptr { i64, [4 x i64] }, ptr %t593, i32 0, i32 1
  %t596 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t595, i32 0, i32 2
  %t597 = load { i64, ptr }, ptr %t596
  store { i64, ptr } %t597, ptr %l42, !tbaa !27
  br label %bb137
bb136:
  br label %bb139
bb137:
  %t599 = load ptr, ptr %l0, !tbaa !29
  %t600 = load %"compiler/source:Span", ptr %l40
  %t601 = load ptr, ptr %l41, !tbaa !29
  %t602 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t603 = load i32, ptr %l2, !tbaa !23
  %t609 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etryExpr(ptr %v0, ptr %v1, ptr %v1, ptr %v2, ptr %t599, %"compiler/source:Span" %t600, ptr %t601, { i64, ptr } %t602, i32 %t603)
  store ptr %t609, ptr %l353
  br label %bb138
bb138:
  %t610 = load ptr, ptr %l353, !tbaa !29
  store ptr %t610, ptr %rv
  br label %ret
bb139:
  %t611 = load ptr, ptr %l1, !tbaa !29
  store ptr %t611, ptr %l354, !tbaa !29
  store i1 false, ptr %l355, !tbaa !21
  %t612 = load ptr, ptr %l354, !tbaa !29
  %t613 = icmp ne ptr %t612, null
  br i1 %t613, label %bb140, label %bb141
bb140:
  %t615 = load ptr, ptr %l354, !tbaa !29
  %t616 = load i64, ptr %t615, !range !{i64 0, i64 30}
  %t618 = icmp eq i64 %t616, 4
  store i1 %t618, ptr %l355, !tbaa !21
  br label %bb141
bb141:
  %t619 = load i1, ptr %l355, !tbaa !21
  br i1 %t619, label %bb142, label %bb143
bb142:
  %t620 = load ptr, ptr %l1, !tbaa !29
  %t622 = getelementptr { i64, [4 x i64] }, ptr %t620, i32 0, i32 1
  %t623 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t622, i32 0, i32 0
  %t624 = load %"compiler/source:Span", ptr %t623
  store %"compiler/source:Span" %t624, ptr %l43
  %t626 = load ptr, ptr %l1, !tbaa !29
  %t628 = getelementptr { i64, [4 x i64] }, ptr %t626, i32 0, i32 1
  %t629 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t628, i32 0, i32 1
  %t630 = load i32, ptr %t629, !range !{i32 0, i32 114}
  store i32 %t630, ptr %l44
  %t632 = load ptr, ptr %l1, !tbaa !29
  %t634 = getelementptr { i64, [4 x i64] }, ptr %t632, i32 0, i32 1
  %t635 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t634, i32 0, i32 2
  %t636 = load ptr, ptr %t635
  store ptr %t636, ptr %l45, !tbaa !29
  br label %bb144
bb143:
  br label %bb148
bb144:
  %t638 = load i32, ptr %l44, !range !{i32 0, i32 114}
  %t640 = trunc i64 96 to i32
  %t641 = icmp eq i32 %t638, %t640
  br i1 %t641, label %bb145, label %bb146
bb145:
  %t643 = load ptr, ptr %l0, !tbaa !29
  %t644 = load %"compiler/source:Span", ptr %l43
  %t645 = load ptr, ptr %l45, !tbaa !29
  %t646 = load i32, ptr %l2, !tbaa !23
  %t651 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebang(ptr %v0, ptr %v1, ptr %v2, ptr %t643, %"compiler/source:Span" %t644, ptr %t645, i32 %t646)
  store ptr %t651, ptr %l370
  br label %bb147
bb146:
  br label %bb148
bb147:
  %t652 = load ptr, ptr %l370, !tbaa !29
  store ptr %t652, ptr %rv
  br label %ret
bb148:
  %t653 = load ptr, ptr %l1, !tbaa !29
  store ptr %t653, ptr %l371, !tbaa !29
  store i1 false, ptr %l372, !tbaa !21
  %t654 = load ptr, ptr %l371, !tbaa !29
  %t655 = icmp ne ptr %t654, null
  br i1 %t655, label %bb149, label %bb150
bb149:
  %t657 = load ptr, ptr %l371, !tbaa !29
  %t658 = load i64, ptr %t657, !range !{i64 0, i64 30}
  %t660 = icmp eq i64 %t658, 4
  store i1 %t660, ptr %l372, !tbaa !21
  br label %bb150
bb150:
  %t661 = load i1, ptr %l372, !tbaa !21
  br i1 %t661, label %bb151, label %bb152
bb151:
  %t662 = load ptr, ptr %l1, !tbaa !29
  %t664 = getelementptr { i64, [4 x i64] }, ptr %t662, i32 0, i32 1
  %t665 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t664, i32 0, i32 0
  %t666 = load %"compiler/source:Span", ptr %t665
  store %"compiler/source:Span" %t666, ptr %l46
  %t668 = load ptr, ptr %l1, !tbaa !29
  %t670 = getelementptr { i64, [4 x i64] }, ptr %t668, i32 0, i32 1
  %t671 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t670, i32 0, i32 1
  %t672 = load i32, ptr %t671, !range !{i32 0, i32 114}
  store i32 %t672, ptr %l47
  %t674 = load ptr, ptr %l1, !tbaa !29
  %t676 = getelementptr { i64, [4 x i64] }, ptr %t674, i32 0, i32 1
  %t677 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t676, i32 0, i32 2
  %t678 = load ptr, ptr %t677
  store ptr %t678, ptr %l48, !tbaa !29
  br label %bb153
bb152:
  br label %bb160
bb153:
  store %olang.scope zeroinitializer, ptr %s20
  %t680 = load ptr, ptr %l0, !tbaa !29
  store ptr %t680, ptr %l381, !tbaa !29
  %t681 = load ptr, ptr %l0, !tbaa !29
  store ptr %t681, ptr %l382, !tbaa !29
  %t682 = load ptr, ptr %l48, !tbaa !29
  %t684 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t682)
  store %"compiler/source:Span" %t684, ptr %l384
  br label %bb154
bb154:
  %t685 = load ptr, ptr %l382, !tbaa !29
  %t686 = load %"compiler/source:Span", ptr %l384
  %t687 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopAfter(ptr %v0, ptr %t685, %"compiler/source:Span" %t686, i64 2)
  store %"compiler/source:Span" %t687, ptr %l385
  br label %bb155
bb155:
  %t688 = load i32, ptr %l47, !range !{i32 0, i32 114}
  %t690 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %s20, i32 %t688)
  store { i64, ptr } %t690, ptr %l387
  br label %bb156
bb156:
  %t691 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t692 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  %t693 = load { i64, ptr }, ptr %l387, !tbaa !27
  %t694 = extractvalue { i64, ptr } %t693, 1
  %t695 = extractvalue { i64, ptr } %t693, 0
  %t696 = add i64 %t692, %t695
  %t697 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t698 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  %t699 = add i64 %t696, %t698
  %t700 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t699)
  call void @olang_textcopy(ptr %t700, ptr %t691, i64 %t692)
  %t701 = getelementptr i8, ptr %t700, i64 %t692
  call void @olang_textcopy(ptr %t701, ptr %t694, i64 %t695)
  %t702 = getelementptr i8, ptr %t701, i64 %t695
  call void @olang_textcopy(ptr %t702, ptr %t697, i64 %t698)
  %t703 = insertvalue { i64, ptr } undef, i64 %t699, 0
  %t704 = insertvalue { i64, ptr } %t703, ptr %t700, 1
  %t706 = extractvalue { i64, ptr } %t704, 0
  %t707 = extractvalue { i64, ptr } %t704, 1
  %t708 = mul i64 %t706, 1
  %t709 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t708)
  call void @llvm.memcpy.p0.p0.i64(ptr %t709, ptr %t707, i64 %t708, i1 false)
  %t710 = insertvalue { i64, ptr } undef, i64 %t706, 0
  %t711 = insertvalue { i64, ptr } %t710, ptr %t709, 1
  %t713 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eIncdecInExpression(ptr %s20, ptr %s20, { i64, ptr } %t711)
  store %"compiler/diagmsg:Msg" %t713, ptr %l390
  br label %bb157
bb157:
  %t714 = load ptr, ptr %l381, !tbaa !29
  %t715 = load %"compiler/source:Span", ptr %l385
  %t716 = load %"compiler/diagmsg:Msg", ptr %l390
  %t717 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s20, ptr %t714, %"compiler/source:Span" %t715, %"compiler/diagmsg:Msg" %t716)
  store i64 %t717, ptr %l391
  br label %bb158
bb158:
  %t718 = load ptr, ptr %l0, !tbaa !29
  %t719 = load %"compiler/source:Span", ptr %l46
  %t722 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t718, %"compiler/source:Span" %t719)
  store ptr %t722, ptr %l394
  br label %bb159
bb159:
  call void @__olang_scope_close(ptr %s20)
  %t723 = load ptr, ptr %l394, !tbaa !29
  store ptr %t723, ptr %rv
  br label %ret
bb160:
  %t724 = load ptr, ptr %l1, !tbaa !29
  store ptr %t724, ptr %l395, !tbaa !29
  store i1 false, ptr %l396, !tbaa !21
  %t725 = load ptr, ptr %l395, !tbaa !29
  %t726 = icmp ne ptr %t725, null
  br i1 %t726, label %bb161, label %bb162
bb161:
  %t728 = load ptr, ptr %l395, !tbaa !29
  %t729 = load i64, ptr %t728, !range !{i64 0, i64 30}
  %t731 = icmp eq i64 %t729, 10
  store i1 %t731, ptr %l396, !tbaa !21
  br label %bb162
bb162:
  %t732 = load i1, ptr %l396, !tbaa !21
  br i1 %t732, label %bb163, label %bb164
bb163:
  %t733 = load ptr, ptr %l1, !tbaa !29
  %t735 = getelementptr { i64, [4 x i64] }, ptr %t733, i32 0, i32 1
  %t736 = getelementptr { %"compiler/source:Span", ptr, ptr, i1 }, ptr %t735, i32 0, i32 0
  %t737 = load %"compiler/source:Span", ptr %t736
  store %"compiler/source:Span" %t737, ptr %l49
  %t739 = load ptr, ptr %l1, !tbaa !29
  %t741 = getelementptr { i64, [4 x i64] }, ptr %t739, i32 0, i32 1
  %t742 = getelementptr { %"compiler/source:Span", ptr, ptr, i1 }, ptr %t741, i32 0, i32 1
  %t743 = load ptr, ptr %t742
  store ptr %t743, ptr %l50, !tbaa !29
  %t745 = load ptr, ptr %l1, !tbaa !29
  %t747 = getelementptr { i64, [4 x i64] }, ptr %t745, i32 0, i32 1
  %t748 = getelementptr { %"compiler/source:Span", ptr, ptr, i1 }, ptr %t747, i32 0, i32 2
  %t749 = load ptr, ptr %t748
  store ptr %t749, ptr %l51, !tbaa !29
  %t751 = load ptr, ptr %l1, !tbaa !29
  %t753 = getelementptr { i64, [4 x i64] }, ptr %t751, i32 0, i32 1
  %t754 = getelementptr { %"compiler/source:Span", ptr, ptr, i1 }, ptr %t753, i32 0, i32 3
  %t755 = load i1, ptr %t754
  store i1 %t755, ptr %l52, !tbaa !21
  br label %bb165
bb164:
  br label %bb167
bb165:
  %t757 = load ptr, ptr %l0, !tbaa !29
  %t758 = load %"compiler/source:Span", ptr %l49
  %t759 = load ptr, ptr %l50, !tbaa !29
  %t760 = load ptr, ptr %l51, !tbaa !29
  %t761 = load i1, ptr %l52, !tbaa !21
  %t767 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eidentity(ptr %v0, ptr %v1, ptr %v1, ptr %v2, ptr %t757, %"compiler/source:Span" %t758, ptr %t759, ptr %t760, i1 %t761)
  store ptr %t767, ptr %l412
  br label %bb166
bb166:
  %t768 = load ptr, ptr %l412, !tbaa !29
  store ptr %t768, ptr %rv
  br label %ret
bb167:
  %t769 = load ptr, ptr %l1, !tbaa !29
  store ptr %t769, ptr %l413, !tbaa !29
  store i1 false, ptr %l414, !tbaa !21
  %t770 = load ptr, ptr %l413, !tbaa !29
  %t771 = icmp ne ptr %t770, null
  br i1 %t771, label %bb168, label %bb169
bb168:
  %t773 = load ptr, ptr %l413, !tbaa !29
  %t774 = load i64, ptr %t773, !range !{i64 0, i64 30}
  %t776 = icmp eq i64 %t774, 11
  store i1 %t776, ptr %l414, !tbaa !21
  br label %bb169
bb169:
  %t777 = load i1, ptr %l414, !tbaa !21
  br i1 %t777, label %bb170, label %bb171
bb170:
  %t778 = load ptr, ptr %l1, !tbaa !29
  %t780 = getelementptr { i64, [4 x i64] }, ptr %t778, i32 0, i32 1
  %t781 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t780, i32 0, i32 0
  %t782 = load %"compiler/source:Span", ptr %t781
  store %"compiler/source:Span" %t782, ptr %l53
  %t784 = load ptr, ptr %l1, !tbaa !29
  %t786 = getelementptr { i64, [4 x i64] }, ptr %t784, i32 0, i32 1
  %t787 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t786, i32 0, i32 1
  %t788 = load ptr, ptr %t787
  store ptr %t788, ptr %l54, !tbaa !29
  %t790 = load ptr, ptr %l1, !tbaa !29
  %t792 = getelementptr { i64, [4 x i64] }, ptr %t790, i32 0, i32 1
  %t793 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t792, i32 0, i32 2
  %t794 = load ptr, ptr %t793
  store ptr %t794, ptr %l55, !tbaa !29
  br label %bb172
bb171:
  br label %bb174
bb172:
  %t796 = load ptr, ptr %l0, !tbaa !29
  %t797 = load %"compiler/source:Span", ptr %l53
  %t798 = load ptr, ptr %l54, !tbaa !29
  %t799 = load ptr, ptr %l55, !tbaa !29
  %t804 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2easCase(ptr %v0, ptr %v1, ptr %v1, ptr %v2, ptr %t796, %"compiler/source:Span" %t797, ptr %t798, ptr %t799)
  store ptr %t804, ptr %l427
  br label %bb173
bb173:
  %t805 = load ptr, ptr %l427, !tbaa !29
  store ptr %t805, ptr %rv
  br label %ret
bb174:
  %t806 = load ptr, ptr %l1, !tbaa !29
  store ptr %t806, ptr %l428, !tbaa !29
  store i1 false, ptr %l429, !tbaa !21
  %t807 = load ptr, ptr %l428, !tbaa !29
  %t808 = icmp ne ptr %t807, null
  br i1 %t808, label %bb175, label %bb176
bb175:
  %t810 = load ptr, ptr %l428, !tbaa !29
  %t811 = load i64, ptr %t810, !range !{i64 0, i64 30}
  %t813 = icmp eq i64 %t811, 9
  store i1 %t813, ptr %l429, !tbaa !21
  br label %bb176
bb176:
  %t814 = load i1, ptr %l429, !tbaa !21
  br i1 %t814, label %bb177, label %bb178
bb177:
  %t815 = load ptr, ptr %l1, !tbaa !29
  %t817 = getelementptr { i64, [4 x i64] }, ptr %t815, i32 0, i32 1
  %t818 = getelementptr { %"compiler/source:Span", ptr, ptr, i1 }, ptr %t817, i32 0, i32 0
  %t819 = load %"compiler/source:Span", ptr %t818
  store %"compiler/source:Span" %t819, ptr %l56
  %t821 = load ptr, ptr %l1, !tbaa !29
  %t823 = getelementptr { i64, [4 x i64] }, ptr %t821, i32 0, i32 1
  %t824 = getelementptr { %"compiler/source:Span", ptr, ptr, i1 }, ptr %t823, i32 0, i32 1
  %t825 = load ptr, ptr %t824
  store ptr %t825, ptr %l57, !tbaa !29
  %t827 = load ptr, ptr %l1, !tbaa !29
  %t829 = getelementptr { i64, [4 x i64] }, ptr %t827, i32 0, i32 1
  %t830 = getelementptr { %"compiler/source:Span", ptr, ptr, i1 }, ptr %t829, i32 0, i32 2
  %t831 = load ptr, ptr %t830
  store ptr %t831, ptr %l58, !tbaa !29
  %t833 = load ptr, ptr %l1, !tbaa !29
  %t835 = getelementptr { i64, [4 x i64] }, ptr %t833, i32 0, i32 1
  %t836 = getelementptr { %"compiler/source:Span", ptr, ptr, i1 }, ptr %t835, i32 0, i32 3
  %t837 = load i1, ptr %t836
  store i1 %t837, ptr %l59, !tbaa !21
  br label %bb179
bb178:
  br label %bb189
bb179:
  store %olang.scope zeroinitializer, ptr %s24
  %t839 = load ptr, ptr %l0, !tbaa !29
  store ptr %t839, ptr %l440, !tbaa !29
  %t840 = load ptr, ptr %l0, !tbaa !29
  store ptr %t840, ptr %l441, !tbaa !29
  %t841 = load ptr, ptr %l57, !tbaa !29
  %t843 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t841)
  store %"compiler/source:Span" %t843, ptr %l443
  br label %bb180
bb180:
  %t844 = load ptr, ptr %l58, !tbaa !29
  %t846 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t844)
  store %"compiler/source:Span" %t846, ptr %l445
  br label %bb181
bb181:
  %t847 = load ptr, ptr %l441, !tbaa !29
  %t848 = load %"compiler/source:Span", ptr %l443
  %t849 = load %"compiler/source:Span", ptr %l445
  %t850 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebetween(ptr %v0, ptr %t847, %"compiler/source:Span" %t848, %"compiler/source:Span" %t849, i64 2)
  store %"compiler/source:Span" %t850, ptr %l446
  br label %bb182
bb182:
  %t851 = load i1, ptr %l59, !tbaa !21
  br i1 %t851, label %bb183, label %bb184
bb183:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d5, i32 0, i32 1) }, ptr %l448, !tbaa !27
  br label %bb185
bb184:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d6, i32 0, i32 1) }, ptr %l448, !tbaa !27
  br label %bb185
bb185:
  %t853 = load { i64, ptr }, ptr %l448, !tbaa !27
  %t854 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eIsOnlyNull(ptr %s24, ptr %s24, { i64, ptr } %t853)
  store %"compiler/diagmsg:Msg" %t854, ptr %l449
  br label %bb186
bb186:
  %t855 = load ptr, ptr %l440, !tbaa !29
  %t856 = load %"compiler/source:Span", ptr %l446
  %t857 = load %"compiler/diagmsg:Msg", ptr %l449
  %t858 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s24, ptr %t855, %"compiler/source:Span" %t856, %"compiler/diagmsg:Msg" %t857)
  store i64 %t858, ptr %l450
  br label %bb187
bb187:
  %t859 = load ptr, ptr %l0, !tbaa !29
  %t860 = load %"compiler/source:Span", ptr %l56
  %t861 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t865 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v2, ptr %t859, %"compiler/source:Span" %t860, i32 %t861, i64 0)
  store ptr %t865, ptr %l454
  br label %bb188
bb188:
  call void @__olang_scope_close(ptr %s24)
  %t866 = load ptr, ptr %l454, !tbaa !29
  store ptr %t866, ptr %rv
  br label %ret
bb189:
  %t867 = load ptr, ptr %l1, !tbaa !29
  store ptr %t867, ptr %l455, !tbaa !29
  store i1 false, ptr %l456, !tbaa !21
  %t868 = load ptr, ptr %l455, !tbaa !29
  %t869 = icmp ne ptr %t868, null
  br i1 %t869, label %bb190, label %bb191
bb190:
  %t871 = load ptr, ptr %l455, !tbaa !29
  %t872 = load i64, ptr %t871, !range !{i64 0, i64 30}
  %t874 = icmp eq i64 %t872, 16
  store i1 %t874, ptr %l456, !tbaa !21
  br label %bb191
bb191:
  %t875 = load i1, ptr %l456, !tbaa !21
  br i1 %t875, label %bb192, label %bb193
bb192:
  %t876 = load ptr, ptr %l1, !tbaa !29
  %t878 = getelementptr { i64, [4 x i64] }, ptr %t876, i32 0, i32 1
  %t879 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t878, i32 0, i32 0
  %t880 = load %"compiler/source:Span", ptr %t879
  store %"compiler/source:Span" %t880, ptr %l60
  %t882 = load ptr, ptr %l1, !tbaa !29
  %t884 = getelementptr { i64, [4 x i64] }, ptr %t882, i32 0, i32 1
  %t885 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t884, i32 0, i32 1
  %t886 = load ptr, ptr %t885
  store ptr %t886, ptr %l61, !tbaa !29
  %t888 = load ptr, ptr %l1, !tbaa !29
  %t890 = getelementptr { i64, [4 x i64] }, ptr %t888, i32 0, i32 1
  %t891 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t890, i32 0, i32 2
  %t892 = load ptr, ptr %t891
  store ptr %t892, ptr %l62, !tbaa !29
  %t894 = load ptr, ptr %l1, !tbaa !29
  %t896 = getelementptr { i64, [4 x i64] }, ptr %t894, i32 0, i32 1
  %t897 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t896, i32 0, i32 3
  %t898 = load ptr, ptr %t897
  store ptr %t898, ptr %l63, !tbaa !29
  br label %bb194
bb193:
  br label %bb196
bb194:
  %t900 = load ptr, ptr %l0, !tbaa !29
  %t901 = load %"compiler/source:Span", ptr %l60
  %t902 = load ptr, ptr %l61, !tbaa !29
  %t903 = load ptr, ptr %l62, !tbaa !29
  %t904 = load ptr, ptr %l63, !tbaa !29
  %t910 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eslice(ptr %v0, ptr %v1, ptr %v1, ptr %v1, ptr %v2, ptr %t900, %"compiler/source:Span" %t901, ptr %t902, ptr %t903, ptr %t904)
  store ptr %t910, ptr %l472
  br label %bb195
bb195:
  %t911 = load ptr, ptr %l472, !tbaa !29
  store ptr %t911, ptr %rv
  br label %ret
bb196:
  %t912 = load ptr, ptr %l1, !tbaa !29
  store ptr %t912, ptr %l473, !tbaa !29
  store i1 false, ptr %l474, !tbaa !21
  %t913 = load ptr, ptr %l473, !tbaa !29
  %t914 = icmp ne ptr %t913, null
  br i1 %t914, label %bb197, label %bb198
bb197:
  %t916 = load ptr, ptr %l473, !tbaa !29
  %t917 = load i64, ptr %t916, !range !{i64 0, i64 30}
  %t919 = icmp eq i64 %t917, 6
  store i1 %t919, ptr %l474, !tbaa !21
  br label %bb198
bb198:
  %t920 = load i1, ptr %l474, !tbaa !21
  br i1 %t920, label %bb199, label %bb200
bb199:
  %t921 = load ptr, ptr %l1, !tbaa !29
  %t923 = getelementptr { i64, [4 x i64] }, ptr %t921, i32 0, i32 1
  %t924 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t923, i32 0, i32 0
  %t925 = load %"compiler/source:Span", ptr %t924
  store %"compiler/source:Span" %t925, ptr %l64
  %t927 = load ptr, ptr %l1, !tbaa !29
  %t929 = getelementptr { i64, [4 x i64] }, ptr %t927, i32 0, i32 1
  %t930 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t929, i32 0, i32 1
  %t931 = load ptr, ptr %t930
  store ptr %t931, ptr %l65, !tbaa !29
  %t933 = load ptr, ptr %l1, !tbaa !29
  %t935 = getelementptr { i64, [4 x i64] }, ptr %t933, i32 0, i32 1
  %t936 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t935, i32 0, i32 2
  %t937 = load ptr, ptr %t936
  store ptr %t937, ptr %l66, !tbaa !29
  br label %bb201
bb200:
  br label %bb204
bb201:
  %t939 = load ptr, ptr %l0, !tbaa !29
  store ptr %t939, ptr %l483, !tbaa !29
  %t940 = load %"compiler/source:Span", ptr %l64
  store %"compiler/source:Span" %t940, ptr %l484
  %t941 = load ptr, ptr %l0, !tbaa !29
  %t942 = load %"compiler/source:Span", ptr %l64
  %t943 = load ptr, ptr %l65, !tbaa !29
  %t944 = load ptr, ptr %l66, !tbaa !29
  %t949 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emembership(ptr %v0, ptr %v1, ptr %v1, ptr %v0, ptr %t941, %"compiler/source:Span" %t942, ptr %t943, ptr %t944)
  store ptr %t949, ptr %l489
  br label %bb202
bb202:
  %t950 = load ptr, ptr %l483, !tbaa !29
  %t951 = load %"compiler/source:Span", ptr %l484
  %t952 = load ptr, ptr %l489, !tbaa !29
  %t953 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enegate(ptr %v0, ptr %v0, ptr %v2, ptr %t950, %"compiler/source:Span" %t951, ptr %t952)
  store ptr %t953, ptr %l490
  br label %bb203
bb203:
  %t954 = load ptr, ptr %l490, !tbaa !29
  store ptr %t954, ptr %rv
  br label %ret
bb204:
  %t955 = load ptr, ptr %l1, !tbaa !29
  store ptr %t955, ptr %l491, !tbaa !29
  store i1 false, ptr %l492, !tbaa !21
  %t956 = load ptr, ptr %l491, !tbaa !29
  %t957 = icmp ne ptr %t956, null
  br i1 %t957, label %bb205, label %bb206
bb205:
  %t959 = load ptr, ptr %l491, !tbaa !29
  %t960 = load i64, ptr %t959, !range !{i64 0, i64 30}
  %t962 = icmp eq i64 %t960, 7
  store i1 %t962, ptr %l492, !tbaa !21
  br label %bb206
bb206:
  %t963 = load i1, ptr %l492, !tbaa !21
  br i1 %t963, label %bb207, label %bb208
bb207:
  %t964 = load ptr, ptr %l1, !tbaa !29
  %t966 = getelementptr { i64, [4 x i64] }, ptr %t964, i32 0, i32 1
  %t967 = getelementptr { %"compiler/source:Span", ptr }, ptr %t966, i32 0, i32 0
  %t968 = load %"compiler/source:Span", ptr %t967
  store %"compiler/source:Span" %t968, ptr %l67
  %t970 = load ptr, ptr %l1, !tbaa !29
  %t972 = getelementptr { i64, [4 x i64] }, ptr %t970, i32 0, i32 1
  %t973 = getelementptr { %"compiler/source:Span", ptr }, ptr %t972, i32 0, i32 1
  %t974 = load ptr, ptr %t973
  store ptr %t974, ptr %l68, !tbaa !29
  br label %bb209
bb208:
  br label %bb211
bb209:
  %t976 = load ptr, ptr %l0, !tbaa !29
  %t977 = load %"compiler/source:Span", ptr %l67
  %t978 = load ptr, ptr %l68, !tbaa !29
  %t982 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echain(ptr %v0, ptr %v1, ptr %v2, ptr %t976, %"compiler/source:Span" %t977, ptr %t978)
  store ptr %t982, ptr %l502
  br label %bb210
bb210:
  %t983 = load ptr, ptr %l502, !tbaa !29
  store ptr %t983, ptr %rv
  br label %ret
bb211:
  %t984 = load ptr, ptr %l1, !tbaa !29
  store ptr %t984, ptr %l503, !tbaa !29
  store i1 false, ptr %l504, !tbaa !21
  %t985 = load ptr, ptr %l503, !tbaa !29
  %t986 = icmp ne ptr %t985, null
  br i1 %t986, label %bb212, label %bb213
bb212:
  %t988 = load ptr, ptr %l503, !tbaa !29
  %t989 = load i64, ptr %t988, !range !{i64 0, i64 30}
  %t991 = icmp eq i64 %t989, 23
  store i1 %t991, ptr %l504, !tbaa !21
  br label %bb213
bb213:
  %t992 = load i1, ptr %l504, !tbaa !21
  br i1 %t992, label %bb214, label %bb215
bb214:
  %t993 = load ptr, ptr %l1, !tbaa !29
  %t995 = getelementptr { i64, [4 x i64] }, ptr %t993, i32 0, i32 1
  %t996 = getelementptr { %"compiler/source:Span", ptr }, ptr %t995, i32 0, i32 0
  %t997 = load %"compiler/source:Span", ptr %t996
  store %"compiler/source:Span" %t997, ptr %l69
  %t999 = load ptr, ptr %l1, !tbaa !29
  %t1001 = getelementptr { i64, [4 x i64] }, ptr %t999, i32 0, i32 1
  %t1002 = getelementptr { %"compiler/source:Span", ptr }, ptr %t1001, i32 0, i32 1
  %t1003 = load ptr, ptr %t1002
  store ptr %t1003, ptr %l70, !tbaa !29
  br label %bb216
bb215:
  br label %bb218
bb216:
  %t1005 = load ptr, ptr %l0, !tbaa !29
  %t1006 = load %"compiler/source:Span", ptr %l69
  %t1007 = load ptr, ptr %l70, !tbaa !29
  %t1008 = load i32, ptr %l2, !tbaa !23
  %t1013 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ematchValue(ptr %v0, ptr %v1, ptr %v2, ptr %t1005, %"compiler/source:Span" %t1006, ptr %t1007, i32 %t1008)
  store ptr %t1013, ptr %l515
  br label %bb217
bb217:
  %t1014 = load ptr, ptr %l515, !tbaa !29
  store ptr %t1014, ptr %rv
  br label %ret
bb218:
  %t1015 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1015, ptr %l516, !tbaa !29
  store i1 false, ptr %l517, !tbaa !21
  %t1016 = load ptr, ptr %l516, !tbaa !29
  %t1017 = icmp ne ptr %t1016, null
  br i1 %t1017, label %bb219, label %bb220
bb219:
  %t1019 = load ptr, ptr %l516, !tbaa !29
  %t1020 = load i64, ptr %t1019, !range !{i64 0, i64 30}
  %t1022 = icmp eq i64 %t1020, 27
  store i1 %t1022, ptr %l517, !tbaa !21
  br label %bb220
bb220:
  %t1023 = load i1, ptr %l517, !tbaa !21
  br i1 %t1023, label %bb221, label %bb222
bb221:
  %t1024 = load ptr, ptr %l1, !tbaa !29
  %t1026 = getelementptr { i64, [4 x i64] }, ptr %t1024, i32 0, i32 1
  %t1027 = getelementptr { %"compiler/source:Span", ptr }, ptr %t1026, i32 0, i32 0
  %t1028 = load %"compiler/source:Span", ptr %t1027
  store %"compiler/source:Span" %t1028, ptr %l71
  %t1030 = load ptr, ptr %l1, !tbaa !29
  %t1032 = getelementptr { i64, [4 x i64] }, ptr %t1030, i32 0, i32 1
  %t1033 = getelementptr { %"compiler/source:Span", ptr }, ptr %t1032, i32 0, i32 1
  %t1034 = load ptr, ptr %t1033
  store ptr %t1034, ptr %l72, !tbaa !29
  br label %bb223
bb222:
  br label %bb230
bb223:
  %t1036 = load %"compiler/source:Span", ptr %l71
  store %"compiler/source:Span" %t1036, ptr %l524
  store i32 0, ptr %l525
  %t1037 = load ptr, ptr %l0, !tbaa !29
  %t1038 = load ptr, ptr %l72, !tbaa !29
  %t1041 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emessage(ptr %v0, ptr %v1, ptr %v2, ptr %t1037, ptr %t1038, i1 true)
  store ptr %t1041, ptr %l528
  br label %bb224
bb224:
  store { i64, [3 x i64] } zeroinitializer, ptr %t1042
  %t1043 = getelementptr { i64, [3 x i64] }, ptr %t1042, i32 0, i32 0
  store i64 9, ptr %t1043
  %t1044 = load %"compiler/source:Span", ptr %l524
  %t1045 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t1044, 0
  %t1046 = load i32, ptr %l525, !range !{i32 0, i32 2}
  %t1047 = insertvalue { %"compiler/source:Span", i32, ptr } %t1045, i32 %t1046, 1
  %t1048 = load ptr, ptr %l528, !tbaa !29
  %t1049 = insertvalue { %"compiler/source:Span", i32, ptr } %t1047, ptr %t1048, 2
  %t1050 = getelementptr { i64, [3 x i64] }, ptr %t1042, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t1049, ptr %t1050
  %t1051 = load { i64, [3 x i64] }, ptr %t1042
  %t1052 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t1052, ptr %lp73
  %t1054 = load ptr, ptr %lp73
  store { i64, [3 x i64] } %t1051, ptr %t1054
  %t1055 = load %"compiler/source:Span", ptr %l71
  store %"compiler/source:Span" %t1055, ptr %l530
  %t1056 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  store i32 %t1056, ptr %l531, !tbaa !23
  %t1057 = load ptr, ptr %lp73
  store ptr %t1057, ptr %l532, !tbaa !29
  %t1058 = icmp sge i64 1, 0
  br i1 %t1058, label %bb225, label %bb226
bb225:
  %t1060 = icmp sle i64 1, 1152921504606846975
  br i1 %t1060, label %bb227, label %bb228
bb226:
  call void @__olang_check_failed(ptr @olang_loc_8897572291f0ccb7_c6427496d38daffb)
  unreachable
bb227:
  %t1062 = mul i64 1, 8
  %t1063 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t1062)
  %t1064 = load ptr, ptr %l532, !tbaa !29
  store i64 0, ptr %t1065
  br label %fill.1066
fill.1066:
  %t1069 = load i64, ptr %t1065
  %t1070 = icmp slt i64 %t1069, 1
  br i1 %t1070, label %fillb.1067, label %filld.1068
fillb.1067:
  %t1071 = getelementptr ptr, ptr %t1063, i64 %t1069
  store ptr %t1064, ptr %t1071
  %t1072 = add i64 %t1069, 1
  store i64 %t1072, ptr %t1065
  br label %fill.1066
filld.1068:
  %t1073 = insertvalue { i64, ptr } undef, i64 1, 0
  %t1074 = insertvalue { i64, ptr } %t1073, ptr %t1063, 1
  %t1076 = call %"compiler/typed:Seq" @compiler_2ftyped_3aSeq_2ector(ptr %v2, ptr %v2, ptr %v2, { i64, ptr } %t1074, ptr null, i1 false)
  store %"compiler/typed:Seq" %t1076, ptr %l536
  br label %bb229
bb228:
  call void @__olang_check_failed(ptr @olang_loc_8897572291f0ccb7_c6427496d38daffb)
  unreachable
bb229:
  %t1077 = load %"compiler/typed:Seq", ptr %l536
  %t1078 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store %"compiler/typed:Seq" %t1077, ptr %t1078
  store { i64, [5 x i64] } zeroinitializer, ptr %t1079
  %t1080 = getelementptr { i64, [5 x i64] }, ptr %t1079, i32 0, i32 0
  store i64 12, ptr %t1080
  %t1081 = load %"compiler/source:Span", ptr %l530
  %t1082 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t1081, 0
  %t1083 = load i32, ptr %l531, !tbaa !23
  %t1084 = insertvalue { %"compiler/source:Span", i32, ptr } %t1082, i32 %t1083, 1
  %t1086 = insertvalue { %"compiler/source:Span", i32, ptr } %t1084, ptr %t1078, 2
  %t1087 = getelementptr { i64, [5 x i64] }, ptr %t1079, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t1086, ptr %t1087
  %t1088 = load { i64, [5 x i64] }, ptr %t1079
  %t1090 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t1088, ptr %t1090
  store ptr %t1090, ptr %rv
  br label %ret
bb230:
  %t1092 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1092, ptr %l540, !tbaa !29
  store i1 false, ptr %l541, !tbaa !21
  %t1093 = load ptr, ptr %l540, !tbaa !29
  %t1094 = icmp ne ptr %t1093, null
  br i1 %t1094, label %bb231, label %bb232
bb231:
  %t1096 = load ptr, ptr %l540, !tbaa !29
  %t1097 = load i64, ptr %t1096, !range !{i64 0, i64 30}
  %t1099 = icmp eq i64 %t1097, 19
  store i1 %t1099, ptr %l541, !tbaa !21
  br label %bb232
bb232:
  %t1100 = load i1, ptr %l541, !tbaa !21
  br i1 %t1100, label %bb233, label %bb234
bb233:
  %t1101 = load ptr, ptr %l1, !tbaa !29
  %t1103 = getelementptr { i64, [4 x i64] }, ptr %t1101, i32 0, i32 1
  %t1104 = getelementptr { %"compiler/source:Span", ptr }, ptr %t1103, i32 0, i32 0
  %t1105 = load %"compiler/source:Span", ptr %t1104
  store %"compiler/source:Span" %t1105, ptr %l74
  %t1107 = load ptr, ptr %l1, !tbaa !29
  %t1109 = getelementptr { i64, [4 x i64] }, ptr %t1107, i32 0, i32 1
  %t1110 = getelementptr { %"compiler/source:Span", ptr }, ptr %t1109, i32 0, i32 1
  %t1111 = load ptr, ptr %t1110
  store ptr %t1111, ptr %l75, !tbaa !29
  br label %bb235
bb234:
  br label %bb247
bb235:
  %t1113 = load ptr, ptr %l75, !tbaa !29
  %t1115 = getelementptr %"compiler/ast:Compr", ptr %t1113, i32 0, i32 6
  %t1116 = load i1, ptr %t1115, !tbaa !21
  br i1 %t1116, label %bb236, label %bb237
bb236:
  store %olang.scope zeroinitializer, ptr %s31
  %t1118 = load ptr, ptr %l75, !tbaa !29
  %t1120 = getelementptr %"compiler/ast:Compr", ptr %t1118, i32 0, i32 7
  %t1121 = load i64, ptr %t1120, !tbaa !24
  %t1123 = icmp sge i64 %t1121, 0
  br i1 %t1123, label %bb238, label %bb239
bb237:
  br label %bb245
bb238:
  %t1125 = load ptr, ptr %l0, !tbaa !29
  %t1126 = load ptr, ptr %l75, !tbaa !29
  %t1127 = load i32, ptr %l2, !tbaa !23
  %t1131 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eargItem(ptr %v0, ptr %v1, ptr %v2, ptr %t1125, ptr %t1126, i32 %t1127)
  store ptr %t1131, ptr %l556
  br label %bb240
bb239:
  br label %bb241
bb240:
  call void @__olang_scope_close(ptr %s31)
  %t1132 = load ptr, ptr %l556, !tbaa !29
  store ptr %t1132, ptr %rv
  br label %ret
bb241:
  %t1133 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1133, ptr %l557, !tbaa !29
  %t1134 = load %"compiler/source:Span", ptr %l74
  store %"compiler/source:Span" %t1134, ptr %l558
  %t1135 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflArgCompr(ptr %s31)
  store %"compiler/diagmsg:Msg" %t1135, ptr %l559
  br label %bb242
bb242:
  %t1136 = load ptr, ptr %l557, !tbaa !29
  %t1137 = load %"compiler/source:Span", ptr %l558
  %t1138 = load %"compiler/diagmsg:Msg", ptr %l559
  %t1139 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s31, ptr %t1136, %"compiler/source:Span" %t1137, %"compiler/diagmsg:Msg" %t1138)
  store i64 %t1139, ptr %l560
  br label %bb243
bb243:
  %t1140 = load ptr, ptr %l0, !tbaa !29
  %t1141 = load %"compiler/source:Span", ptr %l74
  %t1144 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t1140, %"compiler/source:Span" %t1141)
  store ptr %t1144, ptr %l563
  br label %bb244
bb244:
  call void @__olang_scope_close(ptr %s31)
  %t1145 = load ptr, ptr %l563, !tbaa !29
  store ptr %t1145, ptr %rv
  br label %ret
bb245:
  %t1146 = load ptr, ptr %l0, !tbaa !29
  %t1147 = load %"compiler/source:Span", ptr %l74
  %t1148 = load ptr, ptr %l75, !tbaa !29
  %t1152 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecomprehension(ptr %v0, ptr %v1, ptr %v2, ptr %t1146, %"compiler/source:Span" %t1147, ptr %t1148)
  store ptr %t1152, ptr %l567
  br label %bb246
bb246:
  %t1153 = load ptr, ptr %l567, !tbaa !29
  store ptr %t1153, ptr %rv
  br label %ret
bb247:
  %t1154 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1154, ptr %l568, !tbaa !29
  store i1 false, ptr %l569, !tbaa !21
  %t1155 = load ptr, ptr %l568, !tbaa !29
  %t1156 = icmp ne ptr %t1155, null
  br i1 %t1156, label %bb248, label %bb249
bb248:
  %t1158 = load ptr, ptr %l568, !tbaa !29
  %t1159 = load i64, ptr %t1158, !range !{i64 0, i64 30}
  %t1161 = icmp eq i64 %t1159, 22
  store i1 %t1161, ptr %l569, !tbaa !21
  br label %bb249
bb249:
  %t1162 = load i1, ptr %l569, !tbaa !21
  br i1 %t1162, label %bb250, label %bb251
bb250:
  %t1163 = load ptr, ptr %l1, !tbaa !29
  %t1165 = getelementptr { i64, [4 x i64] }, ptr %t1163, i32 0, i32 1
  %t1166 = getelementptr { %"compiler/source:Span", ptr }, ptr %t1165, i32 0, i32 0
  %t1167 = load %"compiler/source:Span", ptr %t1166
  store %"compiler/source:Span" %t1167, ptr %l76
  %t1169 = load ptr, ptr %l1, !tbaa !29
  %t1171 = getelementptr { i64, [4 x i64] }, ptr %t1169, i32 0, i32 1
  %t1172 = getelementptr { %"compiler/source:Span", ptr }, ptr %t1171, i32 0, i32 1
  %t1173 = load ptr, ptr %t1172
  store ptr %t1173, ptr %l77, !tbaa !29
  br label %bb252
bb251:
  br label %bb254
bb252:
  %t1175 = load ptr, ptr %l0, !tbaa !29
  %t1176 = load %"compiler/source:Span", ptr %l76
  %t1177 = load ptr, ptr %l77, !tbaa !29
  %t1178 = load i32, ptr %l2, !tbaa !23
  %t1183 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elambda(ptr %v0, ptr %v1, ptr %v2, ptr %t1175, %"compiler/source:Span" %t1176, ptr %t1177, i32 %t1178)
  store ptr %t1183, ptr %l580
  br label %bb253
bb253:
  %t1184 = load ptr, ptr %l580, !tbaa !29
  store ptr %t1184, ptr %rv
  br label %ret
bb254:
  %t1185 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1185, ptr %l581, !tbaa !29
  store i1 false, ptr %l582, !tbaa !21
  %t1186 = load ptr, ptr %l581, !tbaa !29
  %t1187 = icmp ne ptr %t1186, null
  br i1 %t1187, label %bb255, label %bb256
bb255:
  %t1189 = load ptr, ptr %l581, !tbaa !29
  %t1190 = load i64, ptr %t1189, !range !{i64 0, i64 30}
  %t1192 = icmp eq i64 %t1190, 13
  store i1 %t1192, ptr %l582, !tbaa !21
  br label %bb256
bb256:
  %t1193 = load i1, ptr %l582, !tbaa !21
  br i1 %t1193, label %bb257, label %bb258
bb257:
  %t1194 = load ptr, ptr %l1, !tbaa !29
  %t1196 = getelementptr { i64, [4 x i64] }, ptr %t1194, i32 0, i32 1
  %t1197 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t1196, i32 0, i32 0
  %t1198 = load %"compiler/source:Span", ptr %t1197
  store %"compiler/source:Span" %t1198, ptr %l78
  %t1200 = load ptr, ptr %l1, !tbaa !29
  %t1202 = getelementptr { i64, [4 x i64] }, ptr %t1200, i32 0, i32 1
  %t1203 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t1202, i32 0, i32 1
  %t1204 = load ptr, ptr %t1203
  store ptr %t1204, ptr %l79, !tbaa !29
  %t1206 = load ptr, ptr %l1, !tbaa !29
  %t1208 = getelementptr { i64, [4 x i64] }, ptr %t1206, i32 0, i32 1
  %t1209 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t1208, i32 0, i32 2
  %t1210 = load { i64, ptr }, ptr %t1209
  store { i64, ptr } %t1210, ptr %l80, !tbaa !27
  br label %bb259
bb258:
  br label %bb271
bb259:
  %t1212 = load ptr, ptr %l0, !tbaa !29
  %t1213 = load ptr, ptr %l79, !tbaa !29
  %t1216 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenericFn(ptr %v0, ptr %v1, ptr %t1212, ptr %t1213)
  store i64 %t1216, ptr %l593
  br label %bb260
bb260:
  %t1217 = load i64, ptr %l593, !tbaa !24
  %t1218 = icmp sge i64 %t1217, 0
  br i1 %t1218, label %bb261, label %bb262
bb261:
  %t1220 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1220, ptr %l595, !tbaa !29
  %t1221 = load ptr, ptr %l0, !tbaa !29
  %t1222 = load ptr, ptr %l79, !tbaa !29
  %t1225 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenericFn(ptr %v0, ptr %v1, ptr %t1221, ptr %t1222)
  store i64 %t1225, ptr %l598
  br label %bb263
bb262:
  br label %bb271
bb263:
  %t1226 = load { i64, ptr }, ptr %l80, !tbaa !27
  %t1227 = load %"compiler/source:Span", ptr %l78
  %t1228 = load ptr, ptr %l595, !tbaa !29
  %t1229 = load i64, ptr %l598, !tbaa !24
  %t1232 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexplicitArgs(ptr %v0, ptr %v1, ptr %v2, ptr %t1228, i64 %t1229, { i64, ptr } %t1226, %"compiler/source:Span" %t1227)
  store { i64, ptr } %t1232, ptr %l601
  br label %bb264
bb264:
  %t1233 = load { i64, ptr }, ptr %l601, !tbaa !27
  store { i64, ptr } %t1233, ptr %l81, !tbaa !27
  %t1234 = load { i64, ptr }, ptr %l81, !tbaa !27
  %t1236 = extractvalue { i64, ptr } %t1234, 0
  %t1238 = icmp eq i64 %t1236, 0
  br i1 %t1238, label %bb265, label %bb266
bb265:
  %t1240 = load ptr, ptr %l0, !tbaa !29
  %t1241 = load %"compiler/source:Span", ptr %l78
  %t1244 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t1240, %"compiler/source:Span" %t1241)
  store ptr %t1244, ptr %l607
  br label %bb267
bb266:
  br label %bb268
bb267:
  %t1245 = load ptr, ptr %l607, !tbaa !29
  store ptr %t1245, ptr %rv
  br label %ret
bb268:
  %t1246 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1246, ptr %l608, !tbaa !29
  %t1247 = load %"compiler/source:Span", ptr %l78
  store %"compiler/source:Span" %t1247, ptr %l609
  %t1248 = load ptr, ptr %l0, !tbaa !29
  %t1249 = load ptr, ptr %l79, !tbaa !29
  %t1252 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenericFn(ptr %v0, ptr %v1, ptr %t1248, ptr %t1249)
  store i64 %t1252, ptr %l612
  br label %bb269
bb269:
  %t1253 = load { i64, ptr }, ptr %l81, !tbaa !27
  %t1254 = load ptr, ptr %l608, !tbaa !29
  %t1255 = load %"compiler/source:Span", ptr %l609
  %t1256 = load i64, ptr %l612, !tbaa !24
  %t1258 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efnValue(ptr %v0, ptr %v2, ptr %v2, ptr %t1254, %"compiler/source:Span" %t1255, i64 %t1256, { i64, ptr } %t1253)
  store ptr %t1258, ptr %l614
  br label %bb270
bb270:
  %t1259 = load ptr, ptr %l614, !tbaa !29
  store ptr %t1259, ptr %rv
  br label %ret
bb271:
  %t1260 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1260, ptr %l615, !tbaa !29
  store i1 false, ptr %l616, !tbaa !21
  %t1261 = load ptr, ptr %l615, !tbaa !29
  %t1262 = icmp ne ptr %t1261, null
  br i1 %t1262, label %bb272, label %bb273
bb272:
  %t1264 = load ptr, ptr %l615, !tbaa !29
  %t1265 = load i64, ptr %t1264, !range !{i64 0, i64 30}
  %t1267 = icmp eq i64 %t1265, 28
  store i1 %t1267, ptr %l616, !tbaa !21
  br label %bb273
bb273:
  %t1268 = load i1, ptr %l616, !tbaa !21
  br i1 %t1268, label %bb274, label %bb275
bb274:
  %t1269 = load ptr, ptr %l1, !tbaa !29
  %t1271 = getelementptr { i64, [4 x i64] }, ptr %t1269, i32 0, i32 1
  %t1272 = getelementptr { %"compiler/source:Span", ptr }, ptr %t1271, i32 0, i32 0
  %t1273 = load %"compiler/source:Span", ptr %t1272
  store %"compiler/source:Span" %t1273, ptr %l82
  %t1275 = load ptr, ptr %l1, !tbaa !29
  %t1277 = getelementptr { i64, [4 x i64] }, ptr %t1275, i32 0, i32 1
  %t1278 = getelementptr { %"compiler/source:Span", ptr }, ptr %t1277, i32 0, i32 1
  %t1279 = load ptr, ptr %t1278
  store ptr %t1279, ptr %l83, !tbaa !29
  br label %bb276
bb275:
  br label %bb287
bb276:
  store %olang.scope zeroinitializer, ptr %s36
  %t1281 = load ptr, ptr %l0, !tbaa !29
  %t1283 = getelementptr %"compiler/check:Checker", ptr %t1281, i32 0, i32 150
  store ptr %t1283, ptr %l624, !tbaa !29
  %t1284 = load ptr, ptr %l0, !tbaa !29
  %t1286 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1284)
  store ptr %t1286, ptr %l626
  br label %bb277
bb277:
  %t1287 = load ptr, ptr %l626, !tbaa !29
  %t1289 = getelementptr %"compiler/check:frame", ptr %t1287, i32 0, i32 2
  %t1290 = load i64, ptr %t1289, !tbaa !24
  %t1291 = getelementptr %"compiler/source:Span", ptr %l82, i32 0, i32 0
  %t1292 = load i32, ptr %t1291, !tbaa !23
  %t1294 = sext i32 %t1292 to i64
  %t1297 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s36, i64 %t1290, i64 %t1294)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t1297, ptr %l631
  br label %bb278
bb278:
  %t1298 = load ptr, ptr %l624, !tbaa !29
  %t1299 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l631
  %t1300 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %t1298, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t1299)
  store i1 %t1300, ptr %l632
  br label %bb279
bb279:
  %t1301 = load i1, ptr %l632, !tbaa !21
  %t1302 = xor i1 %t1301, true
  br i1 %t1302, label %bb280, label %bb281
bb280:
  store %olang.scope zeroinitializer, ptr %s37
  %t1304 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1304, ptr %l634, !tbaa !29
  %t1305 = load %"compiler/source:Span", ptr %l82
  store %"compiler/source:Span" %t1305, ptr %l635
  %t1306 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpreadNotHere(ptr %s37)
  store %"compiler/diagmsg:Msg" %t1306, ptr %l636
  br label %bb282
bb281:
  br label %bb284
bb282:
  %t1307 = load ptr, ptr %l634, !tbaa !29
  %t1308 = load %"compiler/source:Span", ptr %l635
  %t1309 = load %"compiler/diagmsg:Msg", ptr %l636
  %t1310 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s37, ptr %t1307, %"compiler/source:Span" %t1308, %"compiler/diagmsg:Msg" %t1309)
  store i64 %t1310, ptr %l637
  br label %bb283
bb283:
  call void @__olang_scope_close(ptr %s37)
  br label %bb284
bb284:
  %t1311 = load ptr, ptr %l0, !tbaa !29
  %t1312 = load ptr, ptr %l83, !tbaa !29
  %t1314 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t1318 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v0, ptr %t1311, ptr %t1312, i32 %t1314)
  store ptr %t1318, ptr %l642
  br label %bb285
bb285:
  %t1319 = load ptr, ptr %l0, !tbaa !29
  %t1320 = load %"compiler/source:Span", ptr %l82
  %t1323 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t1319, %"compiler/source:Span" %t1320)
  store ptr %t1323, ptr %l645
  br label %bb286
bb286:
  call void @__olang_scope_close(ptr %s36)
  %t1324 = load ptr, ptr %l645, !tbaa !29
  store ptr %t1324, ptr %rv
  br label %ret
bb287:
  %t1325 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1325, ptr %l646, !tbaa !29
  store i1 false, ptr %l647, !tbaa !21
  %t1326 = load ptr, ptr %l646, !tbaa !29
  %t1327 = icmp ne ptr %t1326, null
  br i1 %t1327, label %bb288, label %bb289
bb288:
  %t1329 = load ptr, ptr %l646, !tbaa !29
  %t1330 = load i64, ptr %t1329, !range !{i64 0, i64 30}
  %t1332 = icmp eq i64 %t1330, 29
  store i1 %t1332, ptr %l647, !tbaa !21
  br label %bb289
bb289:
  %t1333 = load i1, ptr %l647, !tbaa !21
  br i1 %t1333, label %bb290, label %bb291
bb290:
  %t1334 = load ptr, ptr %l1, !tbaa !29
  %t1336 = getelementptr { i64, [4 x i64] }, ptr %t1334, i32 0, i32 1
  %t1337 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t1336, i32 0, i32 0
  %t1338 = load %"compiler/source:Span", ptr %t1337
  store %"compiler/source:Span" %t1338, ptr %l84
  %t1340 = load ptr, ptr %l1, !tbaa !29
  %t1342 = getelementptr { i64, [4 x i64] }, ptr %t1340, i32 0, i32 1
  %t1343 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t1342, i32 0, i32 1
  %t1344 = load { i64, ptr }, ptr %t1343
  store { i64, ptr } %t1344, ptr %l85, !tbaa !27
  br label %bb292
bb291:
  br label %bb294
bb292:
  %t1346 = load ptr, ptr %l0, !tbaa !29
  %t1347 = load %"compiler/source:Span", ptr %l84
  %t1348 = load { i64, ptr }, ptr %l85, !tbaa !27
  %t1349 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t1354 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evariadicArray(ptr %v0, ptr %v1, ptr %v2, ptr %t1346, %"compiler/source:Span" %t1347, { i64, ptr } %t1348, i32 %t1349)
  store ptr %t1354, ptr %l658
  br label %bb293
bb293:
  %t1355 = load ptr, ptr %l658, !tbaa !29
  store ptr %t1355, ptr %rv
  br label %ret
bb294:
  %t1356 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1356, ptr %l659, !tbaa !29
  store i1 false, ptr %l660, !tbaa !21
  %t1357 = load ptr, ptr %l659, !tbaa !29
  %t1358 = icmp ne ptr %t1357, null
  br i1 %t1358, label %bb295, label %bb296
bb295:
  %t1360 = load ptr, ptr %l659, !tbaa !29
  %t1361 = load i64, ptr %t1360, !range !{i64 0, i64 30}
  %t1363 = icmp eq i64 %t1361, 26
  store i1 %t1363, ptr %l660, !tbaa !21
  br label %bb296
bb296:
  %t1364 = load i1, ptr %l660, !tbaa !21
  br i1 %t1364, label %bb297, label %bb298
bb297:
  %t1365 = load ptr, ptr %l1, !tbaa !29
  %t1367 = getelementptr { i64, [4 x i64] }, ptr %t1365, i32 0, i32 1
  %t1368 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t1367, i32 0, i32 0
  %t1369 = load %"compiler/source:Span", ptr %t1368
  store %"compiler/source:Span" %t1369, ptr %l86
  %t1371 = load ptr, ptr %l1, !tbaa !29
  %t1373 = getelementptr { i64, [4 x i64] }, ptr %t1371, i32 0, i32 1
  %t1374 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t1373, i32 0, i32 2
  %t1375 = load ptr, ptr %t1374
  store ptr %t1375, ptr %l87, !tbaa !29
  br label %bb299
bb298:
  br label %bb315
bb299:
  store %olang.scope zeroinitializer, ptr %s39
  %t1377 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1377, ptr %l667, !tbaa !29
  %t1378 = load %"compiler/source:Span", ptr %l86
  store %"compiler/source:Span" %t1378, ptr %l668
  %t1379 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNamedArgNotHere(ptr %s39)
  store %"compiler/diagmsg:Msg" %t1379, ptr %l669
  br label %bb300
bb300:
  %t1380 = load ptr, ptr %l667, !tbaa !29
  %t1381 = load %"compiler/source:Span", ptr %l668
  %t1382 = load %"compiler/diagmsg:Msg", ptr %l669
  %t1383 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s39, ptr %t1380, %"compiler/source:Span" %t1381, %"compiler/diagmsg:Msg" %t1382)
  store i64 %t1383, ptr %l670
  br label %bb301
bb301:
  %t1384 = load ptr, ptr %l87, !tbaa !29
  store ptr %t1384, ptr %l671, !tbaa !29
  store i1 false, ptr %l672, !tbaa !21
  %t1385 = load ptr, ptr %l671, !tbaa !29
  %t1386 = icmp ne ptr %t1385, null
  br i1 %t1386, label %bb302, label %bb303
bb302:
  %t1388 = load ptr, ptr %l671, !tbaa !29
  %t1389 = load i64, ptr %t1388, !range !{i64 0, i64 30}
  %t1391 = icmp eq i64 %t1389, 22
  store i1 %t1391, ptr %l672, !tbaa !21
  br label %bb303
bb303:
  %t1392 = load i1, ptr %l672, !tbaa !21
  br i1 %t1392, label %bb304, label %bb305
bb304:
  br label %bb306
bb305:
  br label %bb307
bb306:
  br label %bb313
bb307:
  br i1 true, label %bb308, label %bb309
bb308:
  br label %bb310
bb309:
  br label %bb312
bb310:
  %t1393 = load ptr, ptr %l0, !tbaa !29
  %t1394 = load ptr, ptr %l87, !tbaa !29
  %t1396 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t1400 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v0, ptr %t1393, ptr %t1394, i32 %t1396)
  store ptr %t1400, ptr %l679
  br label %bb311
bb311:
  br label %bb313
bb312:
  call void @__olang_check_failed(ptr @olang_loc_a8e86c6643416f97_b0a36d4dfce75d0b)
  unreachable
bb313:
  %t1401 = load ptr, ptr %l0, !tbaa !29
  %t1402 = load %"compiler/source:Span", ptr %l86
  %t1405 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t1401, %"compiler/source:Span" %t1402)
  store ptr %t1405, ptr %l682
  br label %bb314
bb314:
  call void @__olang_scope_close(ptr %s39)
  %t1406 = load ptr, ptr %l682, !tbaa !29
  store ptr %t1406, ptr %rv
  br label %ret
bb315:
  br i1 true, label %bb316, label %bb317
bb316:
  br label %bb318
bb317:
  br label %bb324
bb318:
  store %olang.scope zeroinitializer, ptr %s42
  %t1407 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1407, ptr %l683, !tbaa !29
  %t1408 = load ptr, ptr %l1, !tbaa !29
  %t1410 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t1408)
  store %"compiler/source:Span" %t1410, ptr %l685
  br label %bb319
bb319:
  %t1411 = load ptr, ptr %l1, !tbaa !29
  %t1413 = call { i64, ptr } @compiler_2fcheck_2eexprKindName(ptr %v1, ptr %s42, ptr %t1411)
  store { i64, ptr } %t1413, ptr %l687
  br label %bb320
bb320:
  %t1414 = load ptr, ptr %l683, !tbaa !29
  %t1415 = load %"compiler/source:Span", ptr %l685
  %t1416 = load { i64, ptr }, ptr %l687, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %s42, ptr %t1414, %"compiler/source:Span" %t1415, { i64, ptr } %t1416)
  br label %bb321
bb321:
  %t1417 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1417, ptr %l688, !tbaa !29
  %t1418 = load ptr, ptr %l1, !tbaa !29
  %t1420 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t1418)
  store %"compiler/source:Span" %t1420, ptr %l690
  br label %bb322
bb322:
  %t1421 = load ptr, ptr %l688, !tbaa !29
  %t1422 = load %"compiler/source:Span", ptr %l690
  %t1423 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t1421, %"compiler/source:Span" %t1422)
  store ptr %t1423, ptr %l691
  br label %bb323
bb323:
  call void @__olang_scope_close(ptr %s42)
  %t1424 = load ptr, ptr %l691, !tbaa !29
  store ptr %t1424, ptr %rv
  br label %ret
bb324:
  call void @__olang_check_failed(ptr @olang_loc_c0710ded14dc76f6_f7fa39d5f4b8f2ca)
  unreachable
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
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
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 60
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
  %t68 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFactUndecided(ptr %v0, ptr %s2, { i64, ptr } %t66)
  store %"compiler/diagmsg:Msg" %t68, ptr %l32
  br label %bb11
bb11:
  %t69 = load ptr, ptr %l24, !tbaa !29
  %t70 = load { i64, [3 x i64] }, ptr %l30
  %t71 = load %"compiler/diagmsg:Msg", ptr %l32
  %t72 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s2, ptr %t69, { i64, [3 x i64] } %t70, %"compiler/diagmsg:Msg" %t71)
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

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efirstUncovered(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i32
  %l11 = alloca { i64, ptr }
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca i64
  %l15 = alloca { i64, ptr }
  %l16 = alloca ptr
  %l17 = alloca ptr
  %l18 = alloca ptr
  %l19 = alloca { i64, ptr }
  %l22 = alloca ptr
  %l27 = alloca i32
  %l28 = alloca { i64, ptr }
  %l34 = alloca i64
  %l37 = alloca i64
  %l58 = alloca i1
  %l63 = alloca i32
  %l67 = alloca { i64, ptr }
  %l70 = alloca ptr
  %l75 = alloca i32
  %l76 = alloca { i64, ptr }
  %l80 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l83 = alloca i64
  %l85 = alloca i64
  %l90 = alloca { i64, ptr }
  %l91 = alloca { i64, ptr }
  %l95 = alloca i1
  %l96 = alloca ptr
  %l97 = alloca { i64, ptr }
  %l103 = alloca { i64, ptr }
  %l104 = alloca ptr
  %l105 = alloca i1
  %l110 = alloca ptr
  %l111 = alloca i1
  %l119 = alloca i64
  %l122 = alloca ptr
  %l123 = alloca { i64, ptr }
  %l129 = alloca { i64, ptr }
  %l130 = alloca ptr
  %l131 = alloca i1
  %l141 = alloca i64
  %l144 = alloca ptr
  %l145 = alloca ptr
  %l146 = alloca { i64, ptr }
  %l147 = alloca { i64, ptr }
  %l152 = alloca ptr
  %l158 = alloca i1
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  store ptr %t6, ptr %l22, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  %t13 = load i32, ptr %l2, !tbaa !23
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t16, ptr %l27
  br label %bb1
bb1:
  %t17 = load ptr, ptr %l22, !tbaa !29
  %t18 = load i32, ptr %l27, !tbaa !23
  %t19 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t17, i32 %t18)
  store { i64, ptr } %t19, ptr %l28
  br label %bb2
bb2:
  %t20 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t20, 0
  store i64 0, ptr %l4, !tbaa !24
  store i64 %t21, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t25 = load i64, ptr %l5, !tbaa !24
  %t26 = load i64, ptr %l4, !tbaa !24
  %t29 = icmp sgt i64 %t25, %t26
  br i1 %t29, label %bb3, label %bb4
bb3:
  %t31 = load i64, ptr %l6, !tbaa !24
  %t33 = icmp sgt i64 %t31, 0
  br i1 %t33, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l34, !tbaa !24
  br label %bb8
bb5:
  %t35 = load i64, ptr %l5, !tbaa !24
  %t36 = load i64, ptr %l4, !tbaa !24
  %t39 = sub i64 %t35, %t36
  %t40 = load i64, ptr %l6, !tbaa !24
  %t43 = add i64 %t39, %t40
  %t45 = sub i64 %t43, 1
  %t46 = load i64, ptr %l6, !tbaa !24
  %t49 = sdiv i64 %t45, %t46
  store i64 %t49, ptr %l37, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l37, !tbaa !24
  br label %bb7
bb7:
  %t51 = load i64, ptr %l37, !tbaa !24
  store i64 %t51, ptr %l34, !tbaa !24
  br label %bb8
bb8:
  %t52 = load i64, ptr %l34, !tbaa !24
  store i64 %t52, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb9
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t53 = load i64, ptr %l8, !tbaa !24
  %t54 = load i64, ptr %l7, !tbaa !24
  %t57 = icmp slt i64 %t53, %t54
  %t59 = xor i1 %t57, true
  br i1 %t59, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb88
bb11:
  br label %bb12
bb12:
  %t61 = load i64, ptr %l4, !tbaa !24
  %t62 = load i64, ptr %l8, !tbaa !24
  %t63 = load i64, ptr %l6, !tbaa !24
  %t66 = mul i64 %t62, %t63
  %t69 = add i64 %t61, %t66
  store i64 %t69, ptr %l9, !tbaa !24
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = load i32, ptr %l2, !tbaa !23
  %t73 = load i64, ptr %l9, !tbaa !24
  %t77 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoValueCase(ptr %v0, ptr %t71, i32 %t72, i64 %t73)
  store i1 %t77, ptr %l58
  br label %bb13
bb13:
  %t78 = load i1, ptr %l58, !tbaa !21
  br i1 %t78, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s2)
  br label %bb87
bb15:
  br label %bb16
bb16:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/check:Checker", ptr %t79, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !29
  %t83 = load i32, ptr %l2, !tbaa !23
  %t84 = load i64, ptr %l9, !tbaa !24
  %t88 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCaseSig(ptr %v0, ptr %t82, i32 %t83, i64 %t84)
  store i32 %t88, ptr %l63
  br label %bb17
bb17:
  %t89 = load i32, ptr %l63, !tbaa !23
  store i32 %t89, ptr %l10, !tbaa !23
  %t90 = load i32, ptr %l10, !tbaa !23
  %t91 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t94 = icmp ne i32 %t90, %t91
  br i1 %t94, label %bb18, label %bb19
bb18:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/check:Checker", ptr %t96, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !29
  %t101 = getelementptr %"compiler/generic:Program", ptr %t99, i32 0, i32 2
  store ptr %t101, ptr %l70, !tbaa !29
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/check:Checker", ptr %t102, i32 0, i32 1
  %t105 = load ptr, ptr %t104, !tbaa !29
  %t107 = getelementptr %"compiler/generic:Program", ptr %t105, i32 0, i32 2
  %t108 = load i32, ptr %l10, !tbaa !23
  %t111 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t107, i32 %t108)
  store i32 %t111, ptr %l75
  br label %bb20
bb19:
  %t112 = icmp sge i64 0, 0
  br i1 %t112, label %bb22, label %bb23
bb20:
  %t114 = load ptr, ptr %l70, !tbaa !29
  %t115 = load i32, ptr %l75, !tbaa !23
  %t116 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s2, ptr %t114, i32 %t115)
  store { i64, ptr } %t116, ptr %l76
  br label %bb21
bb21:
  %t117 = load { i64, ptr }, ptr %l76, !tbaa !27
  store { i64, ptr } %t117, ptr %l67, !tbaa !27
  br label %bb26
bb22:
  %t118 = icmp sle i64 0, 2305843009213693951
  br i1 %t118, label %bb24, label %bb25
bb23:
  call void @__olang_check_failed(ptr @olang_loc_3f3d818644d50cc7_38dbc52e232a8b93)
  unreachable
bb24:
  %t120 = mul i64 0, 4
  %t121 = insertvalue { i64, ptr } undef, i64 0, 0
  %t122 = insertvalue { i64, ptr } %t121, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t122, ptr %l67, !tbaa !27
  br label %bb26
bb25:
  call void @__olang_check_failed(ptr @olang_loc_3f3d818644d50cc7_38dbc52e232a8b93)
  unreachable
bb26:
  %t124 = load { i64, ptr }, ptr %l67, !tbaa !27
  store { i64, ptr } %t124, ptr %l11, !tbaa !27
  %t125 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_26_3e_2ector(ptr %s2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t125, ptr %l80
  br label %bb27
bb27:
  %t126 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l80
  %t127 = call ptr @__olang_scope_alloc_a(ptr %s2, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t126, ptr %t127
  store ptr %t127, ptr %l12, !tbaa !29
  store ptr %a1, ptr %l13, !tbaa !29
  store i64 0, ptr %l14, !tbaa !24
  br label %bb28
bb28:
  %t131 = load i64, ptr %l14, !tbaa !24
  store i64 %t131, ptr %l83, !tbaa !24
  %t132 = load ptr, ptr %l13, !tbaa !29
  %t134 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_H06f4ae43b564aa38800728c5b9a6edfe(ptr %v1, ptr %t132)
  store i64 %t134, ptr %l85
  br label %bb29
bb29:
  %t135 = load i64, ptr %l83, !tbaa !24
  %t136 = load i64, ptr %l85, !tbaa !24
  %t137 = icmp slt i64 %t135, %t136
  %t139 = xor i1 %t137, true
  br i1 %t139, label %bb30, label %bb31
bb30:
  br label %bb82
bb31:
  br label %bb32
bb32:
  %t141 = load ptr, ptr %l13, !tbaa !29
  %t142 = load i64, ptr %l14, !tbaa !24
  %t145 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_Hb04d670045d084ea2498d9030c4fbba9(ptr %v1, ptr %v1, ptr %t141, i64 %t142)
  store { i64, ptr } %t145, ptr %l90
  br label %bb33
bb33:
  %t146 = load { i64, ptr }, ptr %l90, !tbaa !27
  store { i64, ptr } %t146, ptr %l15, !tbaa !27
  %t147 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t147, ptr %l91, !tbaa !27
  %t148 = getelementptr { i64, ptr }, ptr %l91, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !27
  %t150 = getelementptr ptr, ptr %t149, i64 0
  %t151 = load ptr, ptr %t150, !tbaa !39
  store ptr %t151, ptr %l16, !tbaa !29
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t154 = load ptr, ptr %l16, !tbaa !29
  %t157 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epatWild(ptr %v0, ptr %v1, ptr %t153, ptr %t154)
  store i1 %t157, ptr %l95
  br label %bb34
bb34:
  %t158 = load i1, ptr %l95, !tbaa !21
  br i1 %t158, label %bb35, label %bb36
bb35:
  %t159 = load ptr, ptr %l12, !tbaa !29
  store ptr %t159, ptr %l96, !tbaa !29
  %t160 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t160, ptr %l97, !tbaa !27
  %t161 = icmp sge i64 0, 0
  br i1 %t161, label %bb37, label %bb38
bb36:
  br label %bb43
bb37:
  %t163 = icmp sle i64 0, 1152921504606846975
  br i1 %t163, label %bb39, label %bb40
bb38:
  call void @__olang_check_failed(ptr @olang_loc_f2fc693d8c32a9d2_b249c5d053dbb65e)
  unreachable
bb39:
  %t165 = mul i64 0, 8
  %t166 = insertvalue { i64, ptr } undef, i64 0, 0
  %t167 = insertvalue { i64, ptr } %t166, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t168 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t170 = extractvalue { i64, ptr } %t168, 0
  %t171 = load { i64, ptr }, ptr %l97, !tbaa !27
  %t174 = call { i64, ptr } @compiler_2fcheck_2epatTail(ptr %v1, ptr %v1, ptr %v1, { i64, ptr } %t171, { i64, ptr } %t167, i64 %t170)
  store { i64, ptr } %t174, ptr %l103
  br label %bb41
bb40:
  call void @__olang_check_failed(ptr @olang_loc_f2fc693d8c32a9d2_b249c5d053dbb65e)
  unreachable
bb41:
  %t175 = load ptr, ptr %l96, !tbaa !29
  %t176 = load { i64, ptr }, ptr %l103, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_H19842cc3f9f17801919cd111c108caa0(ptr %s2, ptr %v1, ptr %t175, { i64, ptr } %t176)
  br label %bb42
bb42:
  br label %bb81
bb43:
  %t177 = load ptr, ptr %l16, !tbaa !29
  store ptr %t177, ptr %l104, !tbaa !29
  store i1 false, ptr %l105, !tbaa !21
  %t178 = load ptr, ptr %l104, !tbaa !29
  %t179 = icmp ne ptr %t178, null
  br i1 %t179, label %bb44, label %bb45
bb44:
  %t181 = load ptr, ptr %l104, !tbaa !29
  %t182 = load i64, ptr %t181, !range !{i64 0, i64 9}
  %t184 = icmp eq i64 %t182, 1
  store i1 %t184, ptr %l105, !tbaa !21
  br label %bb45
bb45:
  %t185 = load i1, ptr %l105, !tbaa !21
  br i1 %t185, label %bb46, label %bb47
bb46:
  %t186 = load ptr, ptr %l16, !tbaa !29
  %t188 = getelementptr { i64, [4 x i64] }, ptr %t186, i32 0, i32 1
  %t189 = getelementptr { %"compiler/source:Span", ptr }, ptr %t188, i32 0, i32 1
  %t190 = load ptr, ptr %t189
  store ptr %t190, ptr %l17, !tbaa !29
  br label %bb52
bb47:
  %t192 = load ptr, ptr %l16, !tbaa !29
  store ptr %t192, ptr %l110, !tbaa !29
  store i1 false, ptr %l111, !tbaa !21
  %t193 = load ptr, ptr %l110, !tbaa !29
  %t194 = icmp ne ptr %t193, null
  br i1 %t194, label %bb48, label %bb49
bb48:
  %t196 = load ptr, ptr %l110, !tbaa !29
  %t197 = load i64, ptr %t196, !range !{i64 0, i64 9}
  %t199 = icmp eq i64 %t197, 4
  store i1 %t199, ptr %l111, !tbaa !21
  br label %bb49
bb49:
  %t200 = load i1, ptr %l111, !tbaa !21
  br i1 %t200, label %bb50, label %bb51
bb50:
  %t201 = load ptr, ptr %l16, !tbaa !29
  %t203 = getelementptr { i64, [4 x i64] }, ptr %t201, i32 0, i32 1
  %t204 = getelementptr { %"compiler/source:Span", ptr }, ptr %t203, i32 0, i32 1
  %t205 = load ptr, ptr %t204
  store ptr %t205, ptr %l17, !tbaa !29
  br label %bb52
bb51:
  br label %bb63
bb52:
  %t207 = load ptr, ptr %l0, !tbaa !29
  %t208 = load ptr, ptr %l17, !tbaa !29
  %t209 = load i32, ptr %l2, !tbaa !23
  %t213 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseTag(ptr %v0, ptr %v1, ptr %t207, ptr %t208, i32 %t209)
  store i64 %t213, ptr %l119
  br label %bb53
bb53:
  %t214 = load i64, ptr %l9, !tbaa !24
  %t215 = load i64, ptr %l119, !tbaa !24
  %t217 = icmp eq i64 %t215, %t214
  br i1 %t217, label %bb54, label %bb55
bb54:
  %t219 = load ptr, ptr %l12, !tbaa !29
  store ptr %t219, ptr %l122, !tbaa !29
  %t220 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t220, ptr %l123, !tbaa !27
  %t221 = icmp sge i64 0, 0
  br i1 %t221, label %bb56, label %bb57
bb55:
  br label %bb62
bb56:
  %t223 = icmp sle i64 0, 1152921504606846975
  br i1 %t223, label %bb58, label %bb59
bb57:
  call void @__olang_check_failed(ptr @olang_loc_1aa49c7f94741e71_4937354175d6cb9d)
  unreachable
bb58:
  %t225 = mul i64 0, 8
  %t226 = insertvalue { i64, ptr } undef, i64 0, 0
  %t227 = insertvalue { i64, ptr } %t226, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t228 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t230 = extractvalue { i64, ptr } %t228, 0
  %t231 = load { i64, ptr }, ptr %l123, !tbaa !27
  %t234 = call { i64, ptr } @compiler_2fcheck_2epatTail(ptr %v1, ptr %v1, ptr %v1, { i64, ptr } %t231, { i64, ptr } %t227, i64 %t230)
  store { i64, ptr } %t234, ptr %l129
  br label %bb60
bb59:
  call void @__olang_check_failed(ptr @olang_loc_1aa49c7f94741e71_4937354175d6cb9d)
  unreachable
bb60:
  %t235 = load ptr, ptr %l122, !tbaa !29
  %t236 = load { i64, ptr }, ptr %l129, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_H19842cc3f9f17801919cd111c108caa0(ptr %s2, ptr %v1, ptr %t235, { i64, ptr } %t236)
  br label %bb61
bb61:
  br label %bb62
bb62:
  br label %bb80
bb63:
  %t237 = load ptr, ptr %l16, !tbaa !29
  store ptr %t237, ptr %l130, !tbaa !29
  store i1 false, ptr %l131, !tbaa !21
  %t238 = load ptr, ptr %l130, !tbaa !29
  %t239 = icmp ne ptr %t238, null
  br i1 %t239, label %bb64, label %bb65
bb64:
  %t241 = load ptr, ptr %l130, !tbaa !29
  %t242 = load i64, ptr %t241, !range !{i64 0, i64 9}
  %t244 = icmp eq i64 %t242, 2
  store i1 %t244, ptr %l131, !tbaa !21
  br label %bb65
bb65:
  %t245 = load i1, ptr %l131, !tbaa !21
  br i1 %t245, label %bb66, label %bb67
bb66:
  %t246 = load ptr, ptr %l16, !tbaa !29
  %t248 = getelementptr { i64, [4 x i64] }, ptr %t246, i32 0, i32 1
  %t249 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t248, i32 0, i32 1
  %t250 = load ptr, ptr %t249
  store ptr %t250, ptr %l18, !tbaa !29
  %t252 = load ptr, ptr %l16, !tbaa !29
  %t254 = getelementptr { i64, [4 x i64] }, ptr %t252, i32 0, i32 1
  %t255 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t254, i32 0, i32 2
  %t256 = load { i64, ptr }, ptr %t255
  store { i64, ptr } %t256, ptr %l19, !tbaa !27
  br label %bb68
bb67:
  br label %bb75
bb68:
  %t258 = load ptr, ptr %l0, !tbaa !29
  %t259 = load ptr, ptr %l18, !tbaa !29
  %t260 = load i32, ptr %l2, !tbaa !23
  %t264 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseTag(ptr %v0, ptr %v1, ptr %t258, ptr %t259, i32 %t260)
  store i64 %t264, ptr %l141
  br label %bb69
bb69:
  %t265 = load i64, ptr %l9, !tbaa !24
  %t266 = load i64, ptr %l141, !tbaa !24
  %t268 = icmp eq i64 %t266, %t265
  br i1 %t268, label %bb70, label %bb71
bb70:
  %t270 = load ptr, ptr %l0, !tbaa !29
  store ptr %t270, ptr %l144, !tbaa !29
  %t271 = load ptr, ptr %l12, !tbaa !29
  store ptr %t271, ptr %l145, !tbaa !29
  %t272 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t272, ptr %l146, !tbaa !27
  %t273 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t273, ptr %l147, !tbaa !27
  %t274 = load ptr, ptr %l0, !tbaa !29
  %t275 = load i32, ptr %l2, !tbaa !23
  %t276 = load i64, ptr %l9, !tbaa !24
  %t277 = load ptr, ptr %l18, !tbaa !29
  %t282 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseFields(ptr %v0, ptr %v1, ptr %v0, ptr %t274, i32 %t275, i64 %t276, ptr %t277)
  store ptr %t282, ptr %l152
  br label %bb72
bb71:
  br label %bb74
bb72:
  %t283 = load ptr, ptr %l144, !tbaa !29
  %t284 = load ptr, ptr %l145, !tbaa !29
  %t285 = load { i64, ptr }, ptr %l146, !tbaa !27
  %t286 = load { i64, ptr }, ptr %l147, !tbaa !27
  %t287 = load ptr, ptr %l152, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebyFieldRow(ptr %v0, ptr %s2, ptr %v1, ptr %v1, ptr %v0, ptr %t283, ptr %t284, { i64, ptr } %t285, { i64, ptr } %t286, ptr %t287)
  br label %bb73
bb73:
  br label %bb74
bb74:
  br label %bb80
bb75:
  br i1 true, label %bb76, label %bb77
bb76:
  br label %bb78
bb77:
  br label %bb79
bb78:
  br label %bb80
bb79:
  call void @__olang_check_failed(ptr @olang_loc_a8287edb9132b4cb_1f129b43d5c83daf)
  unreachable
bb80:
  br label %bb81
bb81:
  %t288 = load i64, ptr %l14, !tbaa !24
  %t290 = add i64 %t288, 1
  store i64 %t290, ptr %l14, !tbaa !24
  br label %bb28
bb82:
  %t292 = load ptr, ptr %l0, !tbaa !29
  %t293 = load ptr, ptr %l12, !tbaa !29
  %t294 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t298 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecoversRows(ptr %v0, ptr %s2, ptr %s2, ptr %t292, ptr %t293, { i64, ptr } %t294, i64 1)
  store i1 %t298, ptr %l158
  br label %bb83
bb83:
  %t299 = load i1, ptr %l158, !tbaa !21
  %t300 = xor i1 %t299, true
  br i1 %t300, label %bb84, label %bb85
bb84:
  %t302 = load i64, ptr %l9, !tbaa !24
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  store i64 %t302, ptr %rv
  br label %ret
bb85:
  br label %bb86
bb86:
  call void @__olang_scope_close(ptr %s2)
  br label %bb87
bb87:
  %t304 = load i64, ptr %l8, !tbaa !24
  %t306 = add i64 %t304, 1
  store i64 %t306, ptr %l8, !tbaa !24
  br label %bb9
bb88:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efnBody(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i32
  %l17 = alloca i64
  %l21 = alloca i32
  %l22 = alloca ptr
  %l24 = alloca { i64, [2 x i64] }
  %l25 = alloca i32
  %l29 = alloca i64
  %l33 = alloca ptr
  %l36 = alloca i64
  %l43 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i64
  %t40 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 20
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t3, i64 %t4)
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
  store i64 -1, ptr %l5, !tbaa !24
  br label %bb4
bb4:
  %t13 = load i64, ptr %l5, !tbaa !24
  store i64 %t13, ptr %l2, !tbaa !24
  %t14 = load i64, ptr %l2, !tbaa !24
  %t16 = icmp sge i64 %t14, 0
  br i1 %t16, label %bb5, label %bb6
bb5:
  %t18 = load i64, ptr %l2, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t18, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/check:Checker", ptr %t20, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t24 = load i64, ptr %l1, !tbaa !24
  %t27 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t23, i64 %t24)
  store i64 %t27, ptr %l17
  br label %bb8
bb8:
  %t28 = load i64, ptr %l17, !tbaa !24
  store i64 %t28, ptr %l3, !tbaa !24
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/check:Checker", ptr %t29, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t33 = load i64, ptr %l1, !tbaa !24
  %t36 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceSig(ptr %v0, ptr %t32, i64 %t33)
  store i32 %t36, ptr %l21
  br label %bb9
bb9:
  %t37 = load i32, ptr %l21, !tbaa !23
  store i32 %t37, ptr %l4, !tbaa !23
  %t38 = load ptr, ptr %l0, !tbaa !29
  store ptr %t38, ptr %l22, !tbaa !29
  %t39 = load i64, ptr %l1, !tbaa !24
  store { i64, [2 x i64] } zeroinitializer, ptr %t40
  %t41 = getelementptr { i64, [2 x i64] }, ptr %t40, i32 0, i32 0
  store i64 0, ptr %t41
  %t43 = insertvalue { i64 } undef, i64 %t39, 0
  %t44 = getelementptr { i64, [2 x i64] }, ptr %t40, i32 0, i32 1
  store { i64 } %t43, ptr %t44
  %t45 = load { i64, [2 x i64] }, ptr %t40
  store { i64, [2 x i64] } %t45, ptr %l24
  %t46 = load i32, ptr %l4, !tbaa !23
  store i32 %t46, ptr %l25, !tbaa !23
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/check:Checker", ptr %t47, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !29
  %t51 = load i64, ptr %l3, !tbaa !24
  %t54 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t50, i64 %t51)
  store i64 %t54, ptr %l29
  br label %bb10
bb10:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/check:Checker", ptr %t55, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !29
  %t59 = load i64, ptr %l3, !tbaa !24
  %t62 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s0, ptr %t58, i64 %t59)
  store ptr %t62, ptr %l33
  br label %bb11
bb11:
  %t63 = load ptr, ptr %l33, !tbaa !29
  %t65 = getelementptr %"compiler/ast:Func", ptr %t63, i32 0, i32 0
  %t66 = load %"compiler/source:Span", ptr %t65
  %t67 = load ptr, ptr %l22, !tbaa !29
  %t68 = load { i64, [2 x i64] }, ptr %l24
  %t69 = load i32, ptr %l25, !tbaa !23
  %t70 = load i64, ptr %l29, !tbaa !24
  %t72 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enewBody(ptr %v0, ptr %t67, { i64, [2 x i64] } %t68, i32 %t69, i64 %t70, %"compiler/source:Span" %t66)
  store i64 %t72, ptr %l36
  br label %bb12
bb12:
  %t73 = load i64, ptr %l36, !tbaa !24
  store i64 %t73, ptr %l2, !tbaa !24
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/check:Checker", ptr %t74, i32 0, i32 20
  %t77 = load i64, ptr %l1, !tbaa !24
  %t78 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t76, i64 %t77, i64 %t78)
  br label %bb13
bb13:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t83 = load i32, ptr %l4, !tbaa !23
  %t86 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einfersErrs(ptr %v0, ptr %t82, i32 %t83)
  store i1 %t86, ptr %l43
  br label %bb14
bb14:
  %t87 = load i1, ptr %l43, !tbaa !21
  br i1 %t87, label %bb15, label %bb16
bb15:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/check:Checker", ptr %t88, i32 0, i32 54
  %t91 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t90, i64 %t91, i1 true)
  br label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb18
bb18:
  %t94 = load i64, ptr %l2, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t94, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efromIterElem(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i32
  %l15 = alloca i32
  %l16 = alloca i32
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca i32
  %l24 = alloca i32
  %l27 = alloca ptr
  %l32 = alloca i32
  %l33 = alloca { i64, ptr }
  %l41 = alloca i1
  %l45 = alloca ptr
  %l48 = alloca { i64, ptr }
  %l54 = alloca { i64, ptr }
  %l56 = alloca i32
  %l58 = alloca i64
  %l63 = alloca i32
  %l66 = alloca i1
  %l71 = alloca i64
  %l78 = alloca { i64, ptr }
  %l84 = alloca i64
  %l87 = alloca i64
  %l109 = alloca i64
  %l116 = alloca i32
  %l120 = alloca ptr
  %l121 = alloca i64
  %l126 = alloca i64
  %l127 = alloca %"compiler/generic:varRow"
  %l134 = alloca ptr
  %l135 = alloca i32
  %l136 = alloca i64
  %l141 = alloca i32
  %l142 = alloca i32
  %l147 = alloca i32
  %l151 = alloca i32
  %l155 = alloca ptr
  %l160 = alloca i32
  %l161 = alloca { i64, ptr }
  %l162 = alloca { i64, ptr }
  %l168 = alloca i32
  %l175 = alloca ptr
  %l180 = alloca i32
  %l181 = alloca { i64, ptr }
  %l185 = alloca i1
  %l187 = alloca { i64, ptr }
  %l190 = alloca i1
  %l192 = alloca { i64, ptr }
  %l196 = alloca i64
  %l199 = alloca i1
  %l202 = alloca i1
  %l207 = alloca ptr
  %l212 = alloca i32
  %l213 = alloca i32
  %l217 = alloca i1
  %l218 = alloca i32
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i64, ptr %l1, !tbaa !24
  %t6 = load i32, ptr %l2, !tbaa !23
  %t10 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBuilderSig(ptr %v0, ptr %t4, i64 %t5, i32 %t6)
  store i32 %t10, ptr %l24
  br label %bb1
bb1:
  %t11 = load i32, ptr %l24, !tbaa !23
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/check:Checker", ptr %t12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = getelementptr %"compiler/generic:Program", ptr %t15, i32 0, i32 2
  store ptr %t17, ptr %l27, !tbaa !29
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/check:Checker", ptr %t18, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t23 = getelementptr %"compiler/generic:Program", ptr %t21, i32 0, i32 2
  %t27 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t23, i32 %t11)
  store i32 %t27, ptr %l32
  br label %bb2
bb2:
  %t28 = load ptr, ptr %l27, !tbaa !29
  %t29 = load i32, ptr %l32, !tbaa !23
  %t30 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t28, i32 %t29)
  store { i64, ptr } %t30, ptr %l33
  br label %bb3
bb3:
  %t31 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t31, ptr %l4, !tbaa !27
  %t32 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t32, 0
  %t36 = icmp eq i64 %t34, 0
  br i1 %t36, label %bb4, label %bb5
bb4:
  %t38 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t38, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t40 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t42 = extractvalue { i64, ptr } %t40, 0
  %t44 = icmp sgt i64 %t42, 1
  br i1 %t44, label %bb7, label %bb8
bb7:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/check:Checker", ptr %t46, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !29
  %t50 = load i64, ptr %l1, !tbaa !24
  %t53 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t49, i64 %t50)
  store ptr %t53, ptr %l45
  br label %bb9
bb8:
  store i1 false, ptr %l41, !tbaa !21
  br label %bb10
bb9:
  %t54 = load ptr, ptr %l45, !tbaa !29
  %t56 = getelementptr %"compiler/ast:Func", ptr %t54, i32 0, i32 3
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t59 = getelementptr %"compiler/ast:Sig", ptr %t57, i32 0, i32 0
  %t60 = load { i64, ptr }, ptr %t59, !tbaa !27
  store { i64, ptr } %t60, ptr %l48, !tbaa !27
  %t61 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !27
  %t63 = getelementptr ptr, ptr %t62, i64 1
  %t64 = load ptr, ptr %t63, !tbaa !39
  %t66 = getelementptr %"compiler/ast:Param", ptr %t64, i32 0, i32 3
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t69 = icmp eq ptr %t67, null
  store i1 %t69, ptr %l41, !tbaa !21
  br label %bb10
bb10:
  %t71 = load i1, ptr %l41, !tbaa !21
  br i1 %t71, label %bb11, label %bb12
bb11:
  %t72 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t72, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t75, ptr %l54, !tbaa !27
  %t76 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !27
  %t78 = getelementptr i32, ptr %t77, i64 0
  %t79 = load i32, ptr %t78, !tbaa !33
  %t82 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t74, i32 %t79)
  store i32 %t82, ptr %l56
  br label %bb14
bb14:
  %t83 = load i32, ptr %l56, !tbaa !23
  store i32 %t83, ptr %l5, !tbaa !23
  %t84 = load i64, ptr %l1, !tbaa !24
  %t86 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t84)
  store i64 %t86, ptr %l58
  br label %bb15
bb15:
  %t87 = load i64, ptr %l58, !tbaa !24
  store i64 %t87, ptr %l6, !tbaa !24
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/check:Checker", ptr %t88, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !29
  %t93 = getelementptr %"compiler/generic:Program", ptr %t91, i32 0, i32 2
  %t94 = load i32, ptr %l5, !tbaa !23
  %t97 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t93, i32 %t94)
  store i32 %t97, ptr %l63
  br label %bb16
bb16:
  %t98 = load i32, ptr %l63, !range !{i32 0, i32 33}
  %t100 = trunc i64 25 to i32
  %t101 = icmp eq i32 %t98, %t100
  br i1 %t101, label %bb17, label %bb18
bb17:
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr %"compiler/check:Checker", ptr %t103, i32 0, i32 1
  %t106 = load ptr, ptr %t105, !tbaa !29
  %t108 = getelementptr %"compiler/generic:Program", ptr %t106, i32 0, i32 2
  %t109 = load i32, ptr %l5, !tbaa !23
  %t112 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %t108, i32 %t109)
  store i64 %t112, ptr %l71
  br label %bb19
bb18:
  store i1 false, ptr %l66, !tbaa !21
  br label %bb20
bb19:
  %t113 = load i64, ptr %l6, !tbaa !24
  %t114 = load i64, ptr %l71, !tbaa !24
  %t116 = icmp eq i64 %t114, %t113
  store i1 %t116, ptr %l66, !tbaa !21
  br label %bb20
bb20:
  %t118 = load i1, ptr %l66, !tbaa !21
  br i1 %t118, label %bb21, label %bb22
bb21:
  store %olang.scope zeroinitializer, ptr %s3
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr %"compiler/check:Checker", ptr %t119, i32 0, i32 1
  %t122 = load ptr, ptr %t121, !tbaa !29
  %t123 = load i64, ptr %l1, !tbaa !24
  %t124 = load i32, ptr %l2, !tbaa !23
  %t128 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eOwnerBinding(ptr %v0, ptr %s3, ptr %t122, i64 %t123, i32 %t124)
  store { i64, ptr } %t128, ptr %l78
  br label %bb23
bb22:
  br label %bb66
bb23:
  %t129 = load { i64, ptr }, ptr %l78, !tbaa !27
  store { i64, ptr } %t129, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t130 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t132 = extractvalue { i64, ptr } %t130, 0
  store i64 %t132, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t134 = load i64, ptr %l9, !tbaa !24
  %t135 = load i64, ptr %l8, !tbaa !24
  %t138 = icmp sgt i64 %t134, %t135
  br i1 %t138, label %bb24, label %bb25
bb24:
  %t140 = load i64, ptr %l10, !tbaa !24
  %t142 = icmp sgt i64 %t140, 0
  br i1 %t142, label %bb26, label %bb27
bb25:
  store i64 0, ptr %l84, !tbaa !24
  br label %bb29
bb26:
  %t144 = load i64, ptr %l9, !tbaa !24
  %t145 = load i64, ptr %l8, !tbaa !24
  %t148 = sub i64 %t144, %t145
  %t149 = load i64, ptr %l10, !tbaa !24
  %t152 = add i64 %t148, %t149
  %t154 = sub i64 %t152, 1
  %t155 = load i64, ptr %l10, !tbaa !24
  %t158 = sdiv i64 %t154, %t155
  store i64 %t158, ptr %l87, !tbaa !24
  br label %bb28
bb27:
  store i64 0, ptr %l87, !tbaa !24
  br label %bb28
bb28:
  %t160 = load i64, ptr %l87, !tbaa !24
  store i64 %t160, ptr %l84, !tbaa !24
  br label %bb29
bb29:
  %t161 = load i64, ptr %l84, !tbaa !24
  store i64 %t161, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb30
bb30:
  %t162 = load i64, ptr %l12, !tbaa !24
  %t163 = load i64, ptr %l11, !tbaa !24
  %t166 = icmp slt i64 %t162, %t163
  %t168 = xor i1 %t166, true
  br i1 %t168, label %bb31, label %bb32
bb31:
  br label %bb39
bb32:
  br label %bb33
bb33:
  %t170 = load i64, ptr %l8, !tbaa !24
  %t171 = load i64, ptr %l12, !tbaa !24
  %t172 = load i64, ptr %l10, !tbaa !24
  %t175 = mul i64 %t171, %t172
  %t178 = add i64 %t170, %t175
  store i64 %t178, ptr %l13, !tbaa !24
  %t180 = load i64, ptr %l13, !tbaa !24
  %t182 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t183 = load ptr, ptr %t182, !tbaa !27
  %t184 = getelementptr i32, ptr %t183, i64 %t180
  %t185 = load i32, ptr %t184, !tbaa !33
  %t186 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t189 = icmp eq i32 %t185, %t186
  br i1 %t189, label %bb34, label %bb35
bb34:
  %t191 = load i64, ptr %l13, !tbaa !24
  store i64 %t191, ptr %l109, !tbaa !24
  %t192 = load ptr, ptr %l0, !tbaa !29
  %t194 = getelementptr %"compiler/check:Checker", ptr %t192, i32 0, i32 1
  %t195 = load ptr, ptr %t194, !tbaa !29
  %t197 = getelementptr %"compiler/generic:Program", ptr %t195, i32 0, i32 2
  %t198 = load i64, ptr %l6, !tbaa !24
  %t199 = load i64, ptr %l13, !tbaa !24
  %t200 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t205 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eVar(ptr %v0, ptr %t197, i64 %t198, i64 %t199, i64 %t200)
  store i32 %t205, ptr %l116
  br label %bb36
bb35:
  br label %bb37
bb36:
  %t206 = load i32, ptr %l116, !tbaa !23
  %t207 = load i64, ptr %l109, !tbaa !24
  %t208 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t209 = load ptr, ptr %t208, !tbaa !27
  %t210 = getelementptr i32, ptr %t209, i64 %t207
  store i32 %t206, ptr %t210, !tbaa !33
  br label %bb37
bb37:
  br label %bb38
bb38:
  %t211 = load i64, ptr %l12, !tbaa !24
  %t213 = add i64 %t211, 1
  store i64 %t213, ptr %l12, !tbaa !24
  br label %bb30
bb39:
  %t215 = load ptr, ptr %l0, !tbaa !29
  %t217 = getelementptr %"compiler/check:Checker", ptr %t215, i32 0, i32 1
  %t218 = load ptr, ptr %t217, !tbaa !29
  store ptr %t218, ptr %l120, !tbaa !29
  %t219 = load i64, ptr %l6, !tbaa !24
  store i64 %t219, ptr %l121, !tbaa !24
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t222 = getelementptr %"compiler/check:Checker", ptr %t220, i32 0, i32 1
  %t223 = load ptr, ptr %t222, !tbaa !29
  %t225 = getelementptr %"compiler/generic:Program", ptr %t223, i32 0, i32 2
  %t226 = load i32, ptr %l5, !tbaa !23
  %t229 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eB(ptr %v0, ptr %t225, i32 %t226)
  store i64 %t229, ptr %l126
  br label %bb40
bb40:
  %t230 = load ptr, ptr %l120, !tbaa !29
  %t231 = load i64, ptr %l121, !tbaa !24
  %t232 = load i64, ptr %l126, !tbaa !24
  %t233 = call %"compiler/generic:varRow" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarAt(ptr %v0, ptr %t230, i64 %t231, i64 %t232)
  store %"compiler/generic:varRow" %t233, ptr %l127
  br label %bb41
bb41:
  %t234 = getelementptr %"compiler/generic:varRow", ptr %l127, i32 0, i32 3
  %t235 = load i32, ptr %t234, !tbaa !23
  store i32 %t235, ptr %l14, !tbaa !23
  %t237 = load i32, ptr %l14, !tbaa !23
  %t238 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t241 = icmp eq i32 %t237, %t238
  br i1 %t241, label %bb42, label %bb43
bb42:
  %t243 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store i32 %t243, ptr %rv
  br label %ret
bb43:
  br label %bb44
bb44:
  %t245 = load ptr, ptr %l0, !tbaa !29
  %t247 = getelementptr %"compiler/check:Checker", ptr %t245, i32 0, i32 1
  %t248 = load ptr, ptr %t247, !tbaa !29
  store ptr %t248, ptr %l134, !tbaa !29
  %t249 = load i32, ptr %l14, !tbaa !23
  store i32 %t249, ptr %l135, !tbaa !23
  %t250 = load i64, ptr %l6, !tbaa !24
  store i64 %t250, ptr %l136, !tbaa !24
  %t251 = load ptr, ptr %l0, !tbaa !29
  %t253 = getelementptr %"compiler/check:Checker", ptr %t251, i32 0, i32 1
  %t254 = load ptr, ptr %t253, !tbaa !29
  %t256 = getelementptr %"compiler/generic:Program", ptr %t254, i32 0, i32 2
  %t257 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t260 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s3, ptr %t256, { i64, ptr } %t257)
  store i32 %t260, ptr %l141
  br label %bb45
bb45:
  %t261 = load ptr, ptr %l134, !tbaa !29
  %t262 = load i32, ptr %l135, !tbaa !23
  %t263 = load i64, ptr %l136, !tbaa !24
  %t264 = load i32, ptr %l141, !tbaa !23
  %t265 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSubst(ptr %v0, ptr %t261, i32 %t262, i64 %t263, i32 %t264)
  store i32 %t265, ptr %l142
  br label %bb46
bb46:
  %t266 = load i32, ptr %l142, !tbaa !23
  store i32 %t266, ptr %l15, !tbaa !23
  %t267 = load ptr, ptr %l0, !tbaa !29
  %t269 = getelementptr %"compiler/check:Checker", ptr %t267, i32 0, i32 1
  %t270 = load ptr, ptr %t269, !tbaa !29
  %t272 = getelementptr %"compiler/generic:Program", ptr %t270, i32 0, i32 2
  %t273 = load i32, ptr %l15, !tbaa !23
  %t276 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t272, i32 %t273)
  store i32 %t276, ptr %l147
  br label %bb47
bb47:
  %t277 = load i32, ptr %l147, !range !{i32 0, i32 33}
  %t279 = trunc i64 22 to i32
  %t280 = icmp eq i32 %t277, %t279
  %t282 = xor i1 %t280, true
  br i1 %t282, label %bb48, label %bb49
bb48:
  %t284 = load i32, ptr %l15, !tbaa !23
  store i32 %t284, ptr %l151, !tbaa !23
  br label %bb52
bb49:
  %t286 = load ptr, ptr %l0, !tbaa !29
  %t288 = getelementptr %"compiler/check:Checker", ptr %t286, i32 0, i32 1
  %t289 = load ptr, ptr %t288, !tbaa !29
  %t291 = getelementptr %"compiler/generic:Program", ptr %t289, i32 0, i32 2
  store ptr %t291, ptr %l155, !tbaa !29
  %t292 = load ptr, ptr %l0, !tbaa !29
  %t294 = getelementptr %"compiler/check:Checker", ptr %t292, i32 0, i32 1
  %t295 = load ptr, ptr %t294, !tbaa !29
  %t297 = getelementptr %"compiler/generic:Program", ptr %t295, i32 0, i32 2
  %t298 = load i32, ptr %l15, !tbaa !23
  %t301 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t297, i32 %t298)
  store i32 %t301, ptr %l160
  br label %bb50
bb50:
  %t302 = load ptr, ptr %l155, !tbaa !29
  %t303 = load i32, ptr %l160, !tbaa !23
  %t304 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s3, ptr %t302, i32 %t303)
  store { i64, ptr } %t304, ptr %l161
  br label %bb51
bb51:
  %t305 = load { i64, ptr }, ptr %l161, !tbaa !27
  store { i64, ptr } %t305, ptr %l162, !tbaa !27
  %t306 = getelementptr { i64, ptr }, ptr %l162, i32 0, i32 1
  %t307 = load ptr, ptr %t306, !tbaa !27
  %t308 = getelementptr i32, ptr %t307, i64 0
  %t309 = load i32, ptr %t308, !tbaa !33
  store i32 %t309, ptr %l151, !tbaa !23
  br label %bb52
bb52:
  %t311 = load i32, ptr %l151, !tbaa !23
  store i32 %t311, ptr %l16, !tbaa !23
  %t312 = load ptr, ptr %l0, !tbaa !29
  %t314 = getelementptr %"compiler/check:Checker", ptr %t312, i32 0, i32 1
  %t315 = load ptr, ptr %t314, !tbaa !29
  %t317 = getelementptr %"compiler/generic:Program", ptr %t315, i32 0, i32 2
  %t318 = load i32, ptr %l16, !tbaa !23
  %t321 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t317, i32 %t318)
  store i32 %t321, ptr %l168
  br label %bb53
bb53:
  %t322 = load i32, ptr %l168, !range !{i32 0, i32 33}
  %t324 = trunc i64 18 to i32
  %t325 = icmp eq i32 %t322, %t324
  %t327 = xor i1 %t325, true
  br i1 %t327, label %bb54, label %bb55
bb54:
  %t329 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store i32 %t329, ptr %rv
  br label %ret
bb55:
  br label %bb56
bb56:
  %t331 = load ptr, ptr %l0, !tbaa !29
  %t333 = getelementptr %"compiler/check:Checker", ptr %t331, i32 0, i32 1
  %t334 = load ptr, ptr %t333, !tbaa !29
  %t336 = getelementptr %"compiler/generic:Program", ptr %t334, i32 0, i32 2
  store ptr %t336, ptr %l175, !tbaa !29
  %t337 = load ptr, ptr %l0, !tbaa !29
  %t339 = getelementptr %"compiler/check:Checker", ptr %t337, i32 0, i32 1
  %t340 = load ptr, ptr %t339, !tbaa !29
  %t342 = getelementptr %"compiler/generic:Program", ptr %t340, i32 0, i32 2
  %t343 = load i32, ptr %l16, !tbaa !23
  %t346 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t342, i32 %t343)
  store i32 %t346, ptr %l180
  br label %bb57
bb57:
  %t347 = load ptr, ptr %l175, !tbaa !29
  %t348 = load i32, ptr %l180, !tbaa !23
  %t349 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t347, i32 %t348)
  store { i64, ptr } %t349, ptr %l181
  br label %bb58
bb58:
  %t350 = load { i64, ptr }, ptr %l181, !tbaa !27
  store { i64, ptr } %t350, ptr %l17, !tbaa !27
  %t351 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t353 = extractvalue { i64, ptr } %t351, 0
  %t355 = icmp eq i64 %t353, 0
  br i1 %t355, label %bb59, label %bb60
bb59:
  store i1 true, ptr %l185, !tbaa !21
  br label %bb62
bb60:
  %t357 = load ptr, ptr %l0, !tbaa !29
  %t358 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t358, ptr %l187, !tbaa !27
  %t359 = getelementptr { i64, ptr }, ptr %l187, i32 0, i32 1
  %t360 = load ptr, ptr %t359, !tbaa !27
  %t361 = getelementptr i32, ptr %t360, i64 0
  %t362 = load i32, ptr %t361, !tbaa !33
  %t363 = load i64, ptr %l6, !tbaa !24
  %t367 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ementionsVar(ptr %v0, ptr %t357, i32 %t362, i64 %t363)
  store i1 %t367, ptr %l190
  br label %bb61
bb61:
  %t368 = load i1, ptr %l190, !tbaa !21
  store i1 %t368, ptr %l185, !tbaa !21
  br label %bb62
bb62:
  %t369 = load i1, ptr %l185, !tbaa !21
  br i1 %t369, label %bb63, label %bb64
bb63:
  %t370 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store i32 %t370, ptr %rv
  br label %ret
bb64:
  br label %bb65
bb65:
  %t372 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t372, ptr %l192, !tbaa !27
  %t373 = getelementptr { i64, ptr }, ptr %l192, i32 0, i32 1
  %t374 = load ptr, ptr %t373, !tbaa !27
  %t375 = getelementptr i32, ptr %t374, i64 0
  %t376 = load i32, ptr %t375, !tbaa !33
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store i32 %t376, ptr %rv
  br label %ret
bb66:
  %t378 = load ptr, ptr %l0, !tbaa !29
  %t379 = load i32, ptr %l5, !tbaa !23
  %t382 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleMethod(ptr %v0, ptr %s0, ptr %t378, i32 %t379, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d7, i32 0, i32 1) }, i64 0)
  store i64 %t382, ptr %l196
  br label %bb67
bb67:
  %t383 = load i64, ptr %l196, !tbaa !24
  store i64 %t383, ptr %l18, !tbaa !24
  %t384 = load i64, ptr %l18, !tbaa !24
  %t386 = icmp slt i64 %t384, 0
  br i1 %t386, label %bb68, label %bb69
bb68:
  store i1 true, ptr %l199, !tbaa !21
  br label %bb71
bb69:
  %t388 = load ptr, ptr %l0, !tbaa !29
  %t389 = load i64, ptr %l18, !tbaa !24
  %t392 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eiterShaped(ptr %v0, ptr %t388, i64 %t389)
  store i1 %t392, ptr %l202
  br label %bb70
bb70:
  %t393 = load i1, ptr %l202, !tbaa !21
  %t394 = xor i1 %t393, true
  store i1 %t394, ptr %l199, !tbaa !21
  br label %bb71
bb71:
  %t396 = load i1, ptr %l199, !tbaa !21
  br i1 %t396, label %bb72, label %bb73
bb72:
  %t397 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t397, ptr %rv
  br label %ret
bb73:
  br label %bb74
bb74:
  %t399 = load ptr, ptr %l0, !tbaa !29
  %t401 = getelementptr %"compiler/check:Checker", ptr %t399, i32 0, i32 1
  %t402 = load ptr, ptr %t401, !tbaa !29
  %t404 = getelementptr %"compiler/generic:Program", ptr %t402, i32 0, i32 2
  store ptr %t404, ptr %l207, !tbaa !29
  %t405 = load ptr, ptr %l0, !tbaa !29
  %t407 = getelementptr %"compiler/check:Checker", ptr %t405, i32 0, i32 1
  %t408 = load ptr, ptr %t407, !tbaa !29
  %t409 = load i64, ptr %l18, !tbaa !24
  %t410 = load i32, ptr %l5, !tbaa !23
  %t414 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodSig(ptr %v0, ptr %t408, i64 %t409, i32 %t410)
  store i32 %t414, ptr %l212
  br label %bb75
bb75:
  %t415 = load ptr, ptr %l207, !tbaa !29
  %t416 = load i32, ptr %l212, !tbaa !23
  %t417 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t415, i32 %t416)
  store i32 %t417, ptr %l213
  br label %bb76
bb76:
  %t418 = load i32, ptr %l213, !tbaa !23
  store i32 %t418, ptr %l19, !tbaa !23
  %t419 = load ptr, ptr %l0, !tbaa !29
  %t420 = load i32, ptr %l19, !tbaa !23
  %t421 = load i64, ptr %l6, !tbaa !24
  %t425 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ementionsVar(ptr %v0, ptr %t419, i32 %t420, i64 %t421)
  store i1 %t425, ptr %l217
  br label %bb77
bb77:
  %t426 = load i1, ptr %l217, !tbaa !21
  br i1 %t426, label %bb78, label %bb79
bb78:
  %t427 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t427, ptr %l218, !tbaa !23
  br label %bb80
bb79:
  %t429 = load i32, ptr %l19, !tbaa !23
  store i32 %t429, ptr %l218, !tbaa !23
  br label %bb80
bb80:
  call void @__olang_scope_close(ptr %s0)
  %t431 = load i32, ptr %l218, !tbaa !23
  store i32 %t431, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l6 = alloca i64
  %l9 = alloca ptr
  %l13 = alloca ptr
  %l16 = alloca ptr
  %l17 = alloca i64
  %l18 = alloca %"compiler/source:Span"
  %l19 = alloca i64
  %l24 = alloca %"compiler/check:Gap"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 -1, ptr %l3, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 16
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load i64, ptr %l6, !tbaa !24
  %t7 = icmp sgt i64 %t6, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t9)
  store ptr %t11, ptr %l9
  br label %bb4
bb3:
  br label %bb6
bb4:
  %t12 = load ptr, ptr %l9, !tbaa !29
  %t14 = getelementptr %"compiler/check:frame", ptr %t12, i32 0, i32 2
  %t15 = load i64, ptr %t14, !tbaa !24
  store i64 %t15, ptr %l3, !tbaa !24
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t17)
  store ptr %t19, ptr %l13
  br label %bb5
bb5:
  %t20 = load ptr, ptr %l13, !tbaa !29
  %t22 = getelementptr %"compiler/check:frame", ptr %t20, i32 0, i32 18
  store i1 true, ptr %t22, !tbaa !21
  br label %bb6
bb6:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/check:Checker", ptr %t23, i32 0, i32 15
  store ptr %t25, ptr %l16, !tbaa !29
  %t26 = load i64, ptr %l3, !tbaa !24
  store i64 %t26, ptr %l17, !tbaa !24
  store %"compiler/source:Span" %a1, ptr %l18
  %t28 = ptrtoint ptr %v0 to i64
  store i64 %t28, ptr %l19, !tbaa !24
  %t29 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aGap_2e2
  br i1 %t29, label %bb7, label %bb8
bb7:
  %t31 = call ptr @__olang_region_make(ptr %v0)
  %t32 = ptrtoint ptr %t31 to i64
  store i64 %t32, ptr %l19, !tbaa !24
  br label %bb8
bb8:
  %t35 = extractvalue { i64, ptr } %a2, 1
  %t36 = extractvalue { i64, ptr } %a2, 0
  %t37 = load i64, ptr %l19
  %t38 = inttoptr i64 %t37 to ptr
  %t39 = call ptr @__olang_scope_alloc(ptr %t38, i64 %t36)
  call void @olang_textcopy(ptr %t39, ptr %t35, i64 %t36)
  %t40 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t39, 1
  %t43 = load i64, ptr %l19
  %t44 = inttoptr i64 %t43 to ptr
  %t45 = extractvalue { i64, ptr } %t41, 0
  %t46 = extractvalue { i64, ptr } %t41, 1
  %t47 = mul i64 %t45, 1
  %t48 = call ptr @__olang_scope_alloc(ptr %t44, i64 %t47)
  call void @llvm.memcpy.p0.p0.i64(ptr %t48, ptr %t46, i64 %t47, i1 false)
  %t49 = insertvalue { i64, ptr } undef, i64 %t45, 0
  %t50 = insertvalue { i64, ptr } %t49, ptr %t48, 1
  %t51 = load i64, ptr %l17, !tbaa !24
  %t52 = load %"compiler/source:Span", ptr %l18
  %t54 = call %"compiler/check:Gap" @compiler_2fcheck_3aGap_2ector(ptr %v0, ptr %v0, i64 %t51, %"compiler/source:Span" %t52, { i64, ptr } %t50)
  store %"compiler/check:Gap" %t54, ptr %l24
  br label %bb9
bb9:
  %t55 = load ptr, ptr %l16, !tbaa !29
  %t56 = load %"compiler/check:Gap", ptr %l24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aGap_3e_2ePush_3ccompiler_2fcheck_3aGap_3e(ptr %v0, ptr %v0, ptr %t55, %"compiler/check:Gap" %t56)
  br label %bb10
bb10:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenericCase(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, i32 %a4, { i64, ptr } %a5, i32 %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i32
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca { i64, ptr }
  %l21 = alloca %"compiler/generic:Binding"
  %lp22 = alloca ptr
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca ptr
  %l30 = alloca %"compiler/check:litv"
  %l32 = alloca ptr
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i64
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca i64
  %l39 = alloca i32
  %l40 = alloca { i64, ptr }
  %l41 = alloca i32
  %l45 = alloca i32
  %l48 = alloca ptr
  %l51 = alloca i32
  %l52 = alloca i32
  %l57 = alloca i1
  %l62 = alloca i32
  %l65 = alloca i1
  %l70 = alloca i32
  %l73 = alloca i1
  %l78 = alloca i32
  %l80 = alloca ptr
  %l81 = alloca %"compiler/source:Span"
  %l82 = alloca %"compiler/source:Span"
  %l83 = alloca i32
  %l84 = alloca i32
  %l85 = alloca { i64, ptr }
  %l89 = alloca ptr
  %l93 = alloca i32
  %l97 = alloca i1
  %l103 = alloca ptr
  %l108 = alloca { i64, ptr }
  %l117 = alloca i64
  %l120 = alloca i64
  %l138 = alloca { i64, ptr }
  %l148 = alloca ptr
  %l149 = alloca %"compiler/source:Span"
  %l153 = alloca %"compiler/diagmsg:Msg"
  %l154 = alloca i64
  %l159 = alloca ptr
  %l164 = alloca i32
  %l170 = alloca ptr
  %l172 = alloca i64
  %l177 = alloca i64
  %l180 = alloca ptr
  %l185 = alloca i32
  %l186 = alloca { i64, ptr }
  %l192 = alloca ptr
  %l193 = alloca %"compiler/source:Span"
  %l195 = alloca i64
  %l199 = alloca { i64, ptr }
  %l202 = alloca %"compiler/diagmsg:Msg"
  %l203 = alloca i64
  %l208 = alloca ptr
  %l211 = alloca %"compiler/generic:Binding"
  %l212 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l218 = alloca i64
  %l221 = alloca i64
  %l240 = alloca { i64, ptr }
  %l244 = alloca %"compiler/check:litv"
  %l246 = alloca i1
  %l248 = alloca { i64, ptr }
  %l251 = alloca i1
  %l253 = alloca i1
  %l256 = alloca { i64, ptr }
  %l259 = alloca i1
  %l260 = alloca ptr
  %l261 = alloca { i64, ptr }
  %l263 = alloca i32
  %l265 = alloca i32
  %l269 = alloca i32
  %l271 = alloca i32
  %l273 = alloca { i64, ptr }
  %l276 = alloca ptr
  %l277 = alloca i1
  %l280 = alloca ptr
  %l281 = alloca i1
  %l285 = alloca { i64, ptr }
  %l290 = alloca ptr
  %l295 = alloca i1
  %l298 = alloca i32
  %l301 = alloca i1
  %l304 = alloca i32
  %l307 = alloca ptr
  %l308 = alloca { i64, ptr }
  %l310 = alloca i32
  %l313 = alloca i32
  %l331 = alloca i64
  %l334 = alloca i64
  %l352 = alloca { i64, ptr }
  %l358 = alloca i1
  %l363 = alloca i1
  %l364 = alloca { i64, ptr }
  %l365 = alloca i64
  %l368 = alloca i32
  %l372 = alloca ptr
  %l377 = alloca i32
  %l378 = alloca { i64, ptr }
  %l379 = alloca ptr
  %l380 = alloca %"compiler/source:Span"
  %l381 = alloca { i64, ptr }
  %l382 = alloca { i64, ptr }
  %l385 = alloca { i64, ptr }
  %l388 = alloca %"compiler/diagmsg:Msg"
  %l389 = alloca i64
  %l392 = alloca ptr
  %l395 = alloca i1
  %l396 = alloca { i64, ptr }
  %l397 = alloca i64
  %l400 = alloca ptr
  %l405 = alloca i32
  %l407 = alloca i32
  %l410 = alloca ptr
  %l413 = alloca i32
  %l414 = alloca i32
  %l417 = alloca { i64, ptr }
  %l418 = alloca i64
  %l424 = alloca i32
  %l428 = alloca ptr
  %l429 = alloca i32
  %l434 = alloca i32
  %l435 = alloca i32
  %l439 = alloca i1
  %l441 = alloca i1
  %l445 = alloca i1
  %l449 = alloca ptr
  %l450 = alloca ptr
  %l451 = alloca %"compiler/source:Span"
  %l452 = alloca %"compiler/source:Span"
  %l453 = alloca i32
  %l454 = alloca i32
  %l455 = alloca { i64, ptr }
  %l457 = alloca { i64, ptr }
  %l458 = alloca ptr
  %s0 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s24 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  store i32 %a3, ptr %l3
  store i32 %a4, ptr %l4
  store { i64, ptr } %a5, ptr %l5
  store i32 %a6, ptr %l6
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i32, ptr %l6, !tbaa !23
  %t2 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t5 = icmp ne i32 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  store ptr %t12, ptr %l48, !tbaa !29
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load i32, ptr %l6, !tbaa !23
  %t17 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t13, i32 %t14)
  store i32 %t17, ptr %l51
  br label %bb3
bb2:
  %t18 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t18, ptr %l45, !tbaa !23
  br label %bb5
bb3:
  %t20 = load ptr, ptr %l48, !tbaa !29
  %t21 = load i32, ptr %l51, !tbaa !23
  %t22 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t20, i32 %t21)
  store i32 %t22, ptr %l52
  br label %bb4
bb4:
  %t23 = load i32, ptr %l52, !tbaa !23
  store i32 %t23, ptr %l45, !tbaa !23
  br label %bb5
bb5:
  %t24 = load i32, ptr %l45, !tbaa !23
  store i32 %t24, ptr %l7, !tbaa !23
  %t25 = load i32, ptr %l7, !tbaa !23
  %t26 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t29 = icmp ne i32 %t25, %t26
  br i1 %t29, label %bb6, label %bb7
bb6:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/check:Checker", ptr %t31, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t36 = getelementptr %"compiler/generic:Program", ptr %t34, i32 0, i32 2
  %t37 = load i32, ptr %l7, !tbaa !23
  %t40 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t36, i32 %t37)
  store i32 %t40, ptr %l62
  br label %bb8
bb7:
  store i1 false, ptr %l57, !tbaa !21
  br label %bb9
bb8:
  %t41 = load i32, ptr %l62, !range !{i32 0, i32 33}
  %t43 = trunc i64 18 to i32
  %t44 = icmp eq i32 %t41, %t43
  store i1 %t44, ptr %l57, !tbaa !21
  br label %bb9
bb9:
  %t46 = load i1, ptr %l57, !tbaa !21
  br i1 %t46, label %bb10, label %bb11
bb10:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/check:Checker", ptr %t47, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !29
  %t52 = getelementptr %"compiler/generic:Program", ptr %t50, i32 0, i32 2
  %t53 = load i32, ptr %l7, !tbaa !23
  %t56 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t52, i32 %t53)
  store i32 %t56, ptr %l70
  br label %bb12
bb11:
  store i1 false, ptr %l65, !tbaa !21
  br label %bb13
bb12:
  %t57 = load i32, ptr %l3, !tbaa !23
  %t58 = load i32, ptr %l70, !tbaa !23
  %t60 = icmp eq i32 %t58, %t57
  store i1 %t60, ptr %l65, !tbaa !21
  br label %bb13
bb13:
  %t62 = load i1, ptr %l65, !tbaa !21
  br i1 %t62, label %bb14, label %bb15
bb14:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/check:Checker", ptr %t63, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t68 = getelementptr %"compiler/generic:Program", ptr %t66, i32 0, i32 2
  %t69 = load i32, ptr %l7, !tbaa !23
  %t72 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t68, i32 %t69)
  store i32 %t72, ptr %l78
  br label %bb16
bb15:
  store i1 false, ptr %l73, !tbaa !21
  br label %bb17
bb16:
  %t73 = load i32, ptr %l78, !tbaa !23
  %t74 = icmp ne i32 %t73, 0
  store i1 %t74, ptr %l73, !tbaa !21
  br label %bb17
bb17:
  %t76 = load i1, ptr %l73, !tbaa !21
  br i1 %t76, label %bb18, label %bb19
bb18:
  %t77 = load ptr, ptr %l0, !tbaa !29
  store ptr %t77, ptr %l80, !tbaa !29
  %t78 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t78, ptr %l81
  %t79 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t79, ptr %l82
  %t80 = load i32, ptr %l7, !tbaa !23
  store i32 %t80, ptr %l83, !tbaa !23
  %t81 = load i32, ptr %l4, !tbaa !23
  store i32 %t81, ptr %l84, !tbaa !23
  %t82 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t82, ptr %l85, !tbaa !27
  %t83 = icmp sge i64 0, 0
  br i1 %t83, label %bb20, label %bb21
bb19:
  br label %bb25
bb20:
  %t85 = icmp sle i64 0, 1152921504606846975
  br i1 %t85, label %bb22, label %bb23
bb21:
  call void @__olang_check_failed(ptr @olang_loc_9c930588fc11ccad_eb7b13c9402bcb61)
  unreachable
bb22:
  %t87 = mul i64 0, 8
  %t88 = insertvalue { i64, ptr } undef, i64 0, 0
  %t89 = insertvalue { i64, ptr } %t88, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t90 = load ptr, ptr %l80, !tbaa !29
  %t91 = load %"compiler/source:Span", ptr %l81
  %t92 = load %"compiler/source:Span", ptr %l82
  %t93 = load i32, ptr %l83, !tbaa !23
  %t94 = load i32, ptr %l84, !tbaa !23
  %t95 = load { i64, ptr }, ptr %l85, !tbaa !27
  %t97 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eenumCase(ptr %v0, ptr %v1, ptr %v0, ptr %v2, ptr %t90, %"compiler/source:Span" %t91, %"compiler/source:Span" %t92, i32 %t93, i32 %t94, { i64, ptr } %t95, { i64, ptr } %t89)
  store ptr %t97, ptr %l89
  br label %bb24
bb23:
  call void @__olang_check_failed(ptr @olang_loc_9c930588fc11ccad_eb7b13c9402bcb61)
  unreachable
bb24:
  call void @__olang_scope_close(ptr %s0)
  %t98 = load ptr, ptr %l89, !tbaa !29
  store ptr %t98, ptr %rv
  br label %ret
bb25:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/check:Checker", ptr %t99, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !29
  %t103 = load i32, ptr %l3, !tbaa !23
  %t106 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSelfType(ptr %v0, ptr %t102, i32 %t103)
  store i32 %t106, ptr %l93
  br label %bb26
bb26:
  %t107 = load i32, ptr %l93, !tbaa !23
  store i32 %t107, ptr %l8, !tbaa !23
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/check:Checker", ptr %t108, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !29
  %t112 = load i32, ptr %l8, !tbaa !23
  %t115 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t111, i32 %t112)
  store i1 %t115, ptr %l97
  br label %bb27
bb27:
  %t116 = load i1, ptr %l97, !tbaa !21
  %t117 = xor i1 %t116, true
  br i1 %t117, label %bb28, label %bb29
bb28:
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t120 = load { i64, ptr }, ptr %l5, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v1, ptr %t119, { i64, ptr } %t120)
  br label %bb30
bb29:
  br label %bb32
bb30:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t124 = load %"compiler/source:Span", ptr %l1
  %t127 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t123, %"compiler/source:Span" %t124)
  store ptr %t127, ptr %l103
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s0)
  %t128 = load ptr, ptr %l103, !tbaa !29
  store ptr %t128, ptr %rv
  br label %ret
bb32:
  store i64 -1, ptr %l9, !tbaa !24
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t131 = getelementptr %"compiler/check:Checker", ptr %t129, i32 0, i32 1
  %t132 = load ptr, ptr %t131, !tbaa !29
  %t134 = getelementptr %"compiler/generic:Program", ptr %t132, i32 0, i32 2
  %t135 = load i32, ptr %l8, !tbaa !23
  %t138 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCaseNames(ptr %v0, ptr %s0, ptr %t134, i32 %t135)
  store { i64, ptr } %t138, ptr %l108
  br label %bb33
bb33:
  %t139 = load { i64, ptr }, ptr %l108, !tbaa !27
  store { i64, ptr } %t139, ptr %l10, !tbaa !27
  %t140 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t142 = extractvalue { i64, ptr } %t140, 0
  %t144 = icmp sgt i64 %t142, 0
  br i1 %t144, label %bb34, label %bb35
bb34:
  store i64 0, ptr %l11, !tbaa !24
  %t146 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t148 = extractvalue { i64, ptr } %t146, 0
  store i64 %t148, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t150 = load i64, ptr %l12, !tbaa !24
  %t151 = load i64, ptr %l11, !tbaa !24
  %t154 = icmp sgt i64 %t150, %t151
  br i1 %t154, label %bb36, label %bb37
bb35:
  br label %bb51
bb36:
  %t156 = load i64, ptr %l13, !tbaa !24
  %t158 = icmp sgt i64 %t156, 0
  br i1 %t158, label %bb38, label %bb39
bb37:
  store i64 0, ptr %l117, !tbaa !24
  br label %bb41
bb38:
  %t160 = load i64, ptr %l12, !tbaa !24
  %t161 = load i64, ptr %l11, !tbaa !24
  %t164 = sub i64 %t160, %t161
  %t165 = load i64, ptr %l13, !tbaa !24
  %t168 = add i64 %t164, %t165
  %t170 = sub i64 %t168, 1
  %t171 = load i64, ptr %l13, !tbaa !24
  %t174 = sdiv i64 %t170, %t171
  store i64 %t174, ptr %l120, !tbaa !24
  br label %bb40
bb39:
  store i64 0, ptr %l120, !tbaa !24
  br label %bb40
bb40:
  %t176 = load i64, ptr %l120, !tbaa !24
  store i64 %t176, ptr %l117, !tbaa !24
  br label %bb41
bb41:
  %t177 = load i64, ptr %l117, !tbaa !24
  store i64 %t177, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb42
bb42:
  %t178 = load i64, ptr %l15, !tbaa !24
  %t179 = load i64, ptr %l14, !tbaa !24
  %t182 = icmp slt i64 %t178, %t179
  %t184 = xor i1 %t182, true
  br i1 %t184, label %bb43, label %bb44
bb43:
  br label %bb50
bb44:
  br label %bb45
bb45:
  %t186 = load i64, ptr %l11, !tbaa !24
  %t187 = load i64, ptr %l15, !tbaa !24
  %t188 = load i64, ptr %l13, !tbaa !24
  %t191 = mul i64 %t187, %t188
  %t194 = add i64 %t186, %t191
  store i64 %t194, ptr %l16, !tbaa !24
  %t196 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t196, ptr %l138, !tbaa !27
  %t197 = load i64, ptr %l16, !tbaa !24
  %t199 = getelementptr { i64, ptr }, ptr %l138, i32 0, i32 1
  %t200 = load ptr, ptr %t199, !tbaa !27
  %t201 = getelementptr i32, ptr %t200, i64 %t197
  %t202 = load i32, ptr %t201, !tbaa !33
  %t203 = load i32, ptr %l4, !tbaa !23
  %t206 = icmp eq i32 %t202, %t203
  br i1 %t206, label %bb46, label %bb47
bb46:
  %t208 = load i64, ptr %l16, !tbaa !24
  store i64 %t208, ptr %l9, !tbaa !24
  br label %bb48
bb47:
  br label %bb48
bb48:
  br label %bb49
bb49:
  %t210 = load i64, ptr %l15, !tbaa !24
  %t212 = add i64 %t210, 1
  store i64 %t212, ptr %l15, !tbaa !24
  br label %bb42
bb50:
  br label %bb51
bb51:
  %t214 = load i64, ptr %l9, !tbaa !24
  %t216 = icmp slt i64 %t214, 0
  br i1 %t216, label %bb52, label %bb53
bb52:
  store %olang.scope zeroinitializer, ptr %s8
  %t218 = load ptr, ptr %l0, !tbaa !29
  store ptr %t218, ptr %l148, !tbaa !29
  %t219 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t219, ptr %l149
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t221 = load i32, ptr %l8, !tbaa !23
  %t222 = load i32, ptr %l4, !tbaa !23
  %t226 = call %"compiler/diagmsg:Msg" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoCase(ptr %v0, ptr %s8, ptr %t220, i32 %t221, i32 %t222)
  store %"compiler/diagmsg:Msg" %t226, ptr %l153
  br label %bb54
bb53:
  br label %bb58
bb54:
  %t227 = load ptr, ptr %l148, !tbaa !29
  %t228 = load %"compiler/source:Span", ptr %l149
  %t229 = load %"compiler/diagmsg:Msg", ptr %l153
  %t230 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s8, ptr %t227, %"compiler/source:Span" %t228, %"compiler/diagmsg:Msg" %t229)
  store i64 %t230, ptr %l154
  br label %bb55
bb55:
  %t231 = load ptr, ptr %l0, !tbaa !29
  %t232 = load { i64, ptr }, ptr %l5, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v1, ptr %t231, { i64, ptr } %t232)
  br label %bb56
bb56:
  %t235 = load ptr, ptr %l0, !tbaa !29
  %t236 = load %"compiler/source:Span", ptr %l1
  %t239 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t235, %"compiler/source:Span" %t236)
  store ptr %t239, ptr %l159
  br label %bb57
bb57:
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s0)
  %t240 = load ptr, ptr %l159, !tbaa !29
  store ptr %t240, ptr %rv
  br label %ret
bb58:
  %t241 = load ptr, ptr %l0, !tbaa !29
  %t243 = getelementptr %"compiler/check:Checker", ptr %t241, i32 0, i32 1
  %t244 = load ptr, ptr %t243, !tbaa !29
  %t245 = load i32, ptr %l8, !tbaa !23
  %t246 = load i64, ptr %l9, !tbaa !24
  %t250 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCaseSig(ptr %v0, ptr %t244, i32 %t245, i64 %t246)
  store i32 %t250, ptr %l164
  br label %bb59
bb59:
  %t251 = load i32, ptr %l164, !tbaa !23
  store i32 %t251, ptr %l17, !tbaa !23
  %t252 = load i32, ptr %l17, !tbaa !23
  %t253 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t256 = icmp eq i32 %t252, %t253
  br i1 %t256, label %bb60, label %bb61
bb60:
  %t258 = load ptr, ptr %l0, !tbaa !29
  %t259 = load %"compiler/source:Span", ptr %l1
  %t262 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t258, %"compiler/source:Span" %t259)
  store ptr %t262, ptr %l170
  br label %bb62
bb61:
  br label %bb63
bb62:
  call void @__olang_scope_close(ptr %s0)
  %t263 = load ptr, ptr %l170, !tbaa !29
  store ptr %t263, ptr %rv
  br label %ret
bb63:
  %t264 = load i32, ptr %l3, !tbaa !23
  %t266 = call i64 @compiler_2fgeneric_2eDeclOwner(i32 %t264)
  store i64 %t266, ptr %l172
  br label %bb64
bb64:
  %t267 = load i64, ptr %l172, !tbaa !24
  store i64 %t267, ptr %l18, !tbaa !24
  %t268 = load ptr, ptr %l0, !tbaa !29
  %t270 = getelementptr %"compiler/check:Checker", ptr %t268, i32 0, i32 1
  %t271 = load ptr, ptr %t270, !tbaa !29
  %t273 = getelementptr %"compiler/generic:Program", ptr %t271, i32 0, i32 2
  %t274 = load i32, ptr %l3, !tbaa !23
  %t277 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclParams(ptr %v0, ptr %t273, i32 %t274)
  store i64 %t277, ptr %l177
  br label %bb65
bb65:
  %t278 = load i64, ptr %l177, !tbaa !24
  store i64 %t278, ptr %l19, !tbaa !24
  %t279 = load ptr, ptr %l0, !tbaa !29
  %t281 = getelementptr %"compiler/check:Checker", ptr %t279, i32 0, i32 1
  %t282 = load ptr, ptr %t281, !tbaa !29
  %t284 = getelementptr %"compiler/generic:Program", ptr %t282, i32 0, i32 2
  store ptr %t284, ptr %l180, !tbaa !29
  %t285 = load ptr, ptr %l0, !tbaa !29
  %t287 = getelementptr %"compiler/check:Checker", ptr %t285, i32 0, i32 1
  %t288 = load ptr, ptr %t287, !tbaa !29
  %t290 = getelementptr %"compiler/generic:Program", ptr %t288, i32 0, i32 2
  %t291 = load i32, ptr %l17, !tbaa !23
  %t294 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t290, i32 %t291)
  store i32 %t294, ptr %l185
  br label %bb66
bb66:
  %t295 = load ptr, ptr %l180, !tbaa !29
  %t296 = load i32, ptr %l185, !tbaa !23
  %t297 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t295, i32 %t296)
  store { i64, ptr } %t297, ptr %l186
  br label %bb67
bb67:
  %t298 = load { i64, ptr }, ptr %l186, !tbaa !27
  store { i64, ptr } %t298, ptr %l20, !tbaa !27
  %t299 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t301 = extractvalue { i64, ptr } %t299, 0
  %t302 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t304 = extractvalue { i64, ptr } %t302, 0
  %t307 = icmp ne i64 %t301, %t304
  br i1 %t307, label %bb68, label %bb69
bb68:
  store %olang.scope zeroinitializer, ptr %s10
  %t309 = load ptr, ptr %l0, !tbaa !29
  store ptr %t309, ptr %l192, !tbaa !29
  %t310 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t310, ptr %l193
  %t311 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t313 = extractvalue { i64, ptr } %t311, 0
  store i64 %t313, ptr %l195, !tbaa !24
  %t314 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t316 = extractvalue { i64, ptr } %t314, 0
  %t318 = icmp eq i64 %t316, 1
  br i1 %t318, label %bb70, label %bb71
bb69:
  br label %bb77
bb70:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d8, i32 0, i32 1) }, ptr %l199, !tbaa !27
  br label %bb72
bb71:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d9, i32 0, i32 1) }, ptr %l199, !tbaa !27
  br label %bb72
bb72:
  %t320 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t322 = extractvalue { i64, ptr } %t320, 0
  %t323 = load i64, ptr %l195, !tbaa !24
  %t324 = load { i64, ptr }, ptr %l199, !tbaa !27
  %t326 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArgCount(ptr %s10, ptr %s10, i64 %t323, { i64, ptr } %t324, i64 %t322)
  store %"compiler/diagmsg:Msg" %t326, ptr %l202
  br label %bb73
bb73:
  %t327 = load ptr, ptr %l192, !tbaa !29
  %t328 = load %"compiler/source:Span", ptr %l193
  %t329 = load %"compiler/diagmsg:Msg", ptr %l202
  %t330 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s10, ptr %t327, %"compiler/source:Span" %t328, %"compiler/diagmsg:Msg" %t329)
  store i64 %t330, ptr %l203
  br label %bb74
bb74:
  %t331 = load ptr, ptr %l0, !tbaa !29
  %t332 = load { i64, ptr }, ptr %l5, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v1, ptr %t331, { i64, ptr } %t332)
  br label %bb75
bb75:
  %t335 = load ptr, ptr %l0, !tbaa !29
  %t336 = load %"compiler/source:Span", ptr %l1
  %t339 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t335, %"compiler/source:Span" %t336)
  store ptr %t339, ptr %l208
  br label %bb76
bb76:
  call void @__olang_scope_close(ptr %s10)
  call void @__olang_scope_close(ptr %s0)
  %t340 = load ptr, ptr %l208, !tbaa !29
  store ptr %t340, ptr %rv
  br label %ret
bb77:
  %t341 = load i64, ptr %l18, !tbaa !24
  %t342 = load i64, ptr %l19, !tbaa !24
  %t345 = call %"compiler/generic:Binding" @compiler_2fgeneric_3aBinding_2ector(ptr %s0, i64 %t341, i64 %t342)
  store %"compiler/generic:Binding" %t345, ptr %l211
  br label %bb78
bb78:
  %t346 = load %"compiler/generic:Binding", ptr %l211
  store %"compiler/generic:Binding" %t346, ptr %l21
  %t347 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t347, ptr %l212
  br label %bb79
bb79:
  %t348 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t348, ptr %lp22
  %t349 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l212
  %t350 = load ptr, ptr %lp22
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t349, ptr %t350
  store i64 0, ptr %l23, !tbaa !24
  %t351 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t353 = extractvalue { i64, ptr } %t351, 0
  store i64 %t353, ptr %l24, !tbaa !24
  store i64 1, ptr %l25, !tbaa !24
  %t355 = load i64, ptr %l24, !tbaa !24
  %t356 = load i64, ptr %l23, !tbaa !24
  %t359 = icmp sgt i64 %t355, %t356
  br i1 %t359, label %bb80, label %bb81
bb80:
  %t361 = load i64, ptr %l25, !tbaa !24
  %t363 = icmp sgt i64 %t361, 0
  br i1 %t363, label %bb82, label %bb83
bb81:
  store i64 0, ptr %l218, !tbaa !24
  br label %bb85
bb82:
  %t365 = load i64, ptr %l24, !tbaa !24
  %t366 = load i64, ptr %l23, !tbaa !24
  %t369 = sub i64 %t365, %t366
  %t370 = load i64, ptr %l25, !tbaa !24
  %t373 = add i64 %t369, %t370
  %t375 = sub i64 %t373, 1
  %t376 = load i64, ptr %l25, !tbaa !24
  %t379 = sdiv i64 %t375, %t376
  store i64 %t379, ptr %l221, !tbaa !24
  br label %bb84
bb83:
  store i64 0, ptr %l221, !tbaa !24
  br label %bb84
bb84:
  %t381 = load i64, ptr %l221, !tbaa !24
  store i64 %t381, ptr %l218, !tbaa !24
  br label %bb85
bb85:
  %t382 = load i64, ptr %l218, !tbaa !24
  store i64 %t382, ptr %l26, !tbaa !24
  store i64 0, ptr %l27, !tbaa !24
  br label %bb86
bb86:
  %t383 = load i64, ptr %l27, !tbaa !24
  %t384 = load i64, ptr %l26, !tbaa !24
  %t387 = icmp slt i64 %t383, %t384
  %t389 = xor i1 %t387, true
  br i1 %t389, label %bb87, label %bb88
bb87:
  br label %bb143
bb88:
  br label %bb89
bb89:
  %t391 = load i64, ptr %l23, !tbaa !24
  %t392 = load i64, ptr %l27, !tbaa !24
  %t393 = load i64, ptr %l25, !tbaa !24
  %t396 = mul i64 %t392, %t393
  %t399 = add i64 %t391, %t396
  store i64 %t399, ptr %l28, !tbaa !24
  store ptr null, ptr %l29, !tbaa !29
  %t401 = load ptr, ptr %l0, !tbaa !29
  %t402 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t402, ptr %l240, !tbaa !27
  %t403 = load i64, ptr %l28, !tbaa !24
  %t405 = getelementptr { i64, ptr }, ptr %l240, i32 0, i32 1
  %t406 = load ptr, ptr %t405, !tbaa !27
  %t407 = getelementptr ptr, ptr %t406, i64 %t403
  %t408 = load ptr, ptr %t407, !tbaa !39
  %t412 = call %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v1, ptr %t401, ptr %t408)
  store %"compiler/check:litv" %t412, ptr %l244
  br label %bb90
bb90:
  %t413 = load %"compiler/check:litv", ptr %l244
  store %"compiler/check:litv" %t413, ptr %l30
  %t414 = getelementptr %"compiler/check:litv", ptr %l30, i32 0, i32 0
  %t415 = load i1, ptr %t414, !tbaa !21
  br i1 %t415, label %bb91, label %bb92
bb91:
  store i1 true, ptr %l246, !tbaa !21
  br label %bb94
bb92:
  %t417 = load ptr, ptr %l0, !tbaa !29
  %t418 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t418, ptr %l248, !tbaa !27
  %t419 = load i64, ptr %l28, !tbaa !24
  %t421 = getelementptr { i64, ptr }, ptr %l248, i32 0, i32 1
  %t422 = load ptr, ptr %t421, !tbaa !27
  %t423 = getelementptr ptr, ptr %t422, i64 %t419
  %t424 = load ptr, ptr %t423, !tbaa !39
  %t427 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLike(ptr %v0, ptr %v1, ptr %t417, ptr %t424)
  store i1 %t427, ptr %l251
  br label %bb93
bb93:
  %t428 = load i1, ptr %l251, !tbaa !21
  store i1 %t428, ptr %l246, !tbaa !21
  br label %bb94
bb94:
  %t429 = load i1, ptr %l246, !tbaa !21
  br i1 %t429, label %bb95, label %bb96
bb95:
  store %olang.scope zeroinitializer, ptr %s13
  %t430 = getelementptr %"compiler/check:litv", ptr %l30, i32 0, i32 0
  %t431 = load i1, ptr %t430, !tbaa !21
  br i1 %t431, label %bb97, label %bb98
bb96:
  %t433 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t433, ptr %l273, !tbaa !27
  %t434 = load i64, ptr %l28, !tbaa !24
  %t436 = getelementptr { i64, ptr }, ptr %l273, i32 0, i32 1
  %t437 = load ptr, ptr %t436, !tbaa !27
  %t438 = getelementptr ptr, ptr %t437, i64 %t434
  %t439 = load ptr, ptr %t438, !tbaa !39
  store ptr %t439, ptr %l32, !tbaa !29
  %t441 = load ptr, ptr %l32, !tbaa !29
  store ptr %t441, ptr %l276, !tbaa !29
  store i1 false, ptr %l277, !tbaa !21
  %t442 = load ptr, ptr %l276, !tbaa !29
  %t443 = icmp ne ptr %t442, null
  br i1 %t443, label %bb107, label %bb108
bb97:
  %t445 = getelementptr %"compiler/check:litv", ptr %l30, i32 0, i32 1
  %t446 = load i1, ptr %t445, !tbaa !21
  store i1 %t446, ptr %l253, !tbaa !21
  br label %bb100
bb98:
  %t448 = load ptr, ptr %l0, !tbaa !29
  %t449 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t449, ptr %l256, !tbaa !27
  %t450 = load i64, ptr %l28, !tbaa !24
  %t452 = getelementptr { i64, ptr }, ptr %l256, i32 0, i32 1
  %t453 = load ptr, ptr %t452, !tbaa !27
  %t454 = getelementptr ptr, ptr %t453, i64 %t450
  %t455 = load ptr, ptr %t454, !tbaa !39
  %t458 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitFloat(ptr %v0, ptr %v1, ptr %t448, ptr %t455)
  store i1 %t458, ptr %l259
  br label %bb99
bb99:
  %t459 = load i1, ptr %l259, !tbaa !21
  store i1 %t459, ptr %l253, !tbaa !21
  br label %bb100
bb100:
  %t460 = load i1, ptr %l253, !tbaa !21
  %t461 = load ptr, ptr %l0, !tbaa !29
  store ptr %t461, ptr %l260, !tbaa !29
  %t462 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t462, ptr %l261, !tbaa !27
  %t463 = load i64, ptr %l28, !tbaa !24
  %t465 = getelementptr { i64, ptr }, ptr %l261, i32 0, i32 1
  %t466 = load ptr, ptr %t465, !tbaa !27
  %t467 = getelementptr i32, ptr %t466, i64 %t463
  %t468 = load i32, ptr %t467, !tbaa !33
  store i32 %t468, ptr %l263, !tbaa !23
  br i1 %t460, label %bb101, label %bb102
bb101:
  %t471 = load ptr, ptr %l0, !tbaa !29
  %t473 = getelementptr %"compiler/check:Checker", ptr %t471, i32 0, i32 1
  %t474 = load ptr, ptr %t473, !tbaa !29
  %t476 = getelementptr %"compiler/generic:Program", ptr %t474, i32 0, i32 2
  %t478 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s13, ptr %t476, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d10, i32 0, i32 1) })
  store i32 %t478, ptr %l269
  br label %bb103
bb102:
  %t479 = load ptr, ptr %l0, !tbaa !29
  %t481 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t479)
  store i32 %t481, ptr %l271
  br label %bb104
bb103:
  %t482 = load i32, ptr %l269, !tbaa !23
  store i32 %t482, ptr %l265, !tbaa !23
  br label %bb105
bb104:
  %t483 = load i32, ptr %l271, !tbaa !23
  store i32 %t483, ptr %l265, !tbaa !23
  br label %bb105
bb105:
  %t484 = load ptr, ptr %l260, !tbaa !29
  %t485 = load i32, ptr %l263, !tbaa !23
  %t486 = load i32, ptr %l265, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunify(ptr %v0, ptr %s0, ptr %t484, i32 %t485, i32 %t486, ptr %l21, i1 true, i1 false)
  br label %bb106
bb106:
  call void @__olang_scope_close(ptr %s13)
  br label %bb123
bb107:
  %t488 = load ptr, ptr %l276, !tbaa !29
  %t489 = load i64, ptr %t488, !range !{i64 0, i64 30}
  %t491 = icmp eq i64 %t489, 22
  store i1 %t491, ptr %l277, !tbaa !21
  br label %bb108
bb108:
  %t492 = load i1, ptr %l277, !tbaa !21
  br i1 %t492, label %bb109, label %bb110
bb109:
  br label %bb115
bb110:
  %t493 = load ptr, ptr %l32, !tbaa !29
  store ptr %t493, ptr %l280, !tbaa !29
  store i1 false, ptr %l281, !tbaa !21
  %t494 = load ptr, ptr %l280, !tbaa !29
  %t495 = icmp ne ptr %t494, null
  br i1 %t495, label %bb111, label %bb112
bb111:
  %t497 = load ptr, ptr %l280, !tbaa !29
  %t498 = load i64, ptr %t497, !range !{i64 0, i64 30}
  %t500 = icmp eq i64 %t498, 25
  store i1 %t500, ptr %l281, !tbaa !21
  br label %bb112
bb112:
  %t501 = load i1, ptr %l281, !tbaa !21
  br i1 %t501, label %bb113, label %bb114
bb113:
  br label %bb115
bb114:
  br label %bb116
bb115:
  br label %bb122
bb116:
  br i1 true, label %bb117, label %bb118
bb117:
  br label %bb119
bb118:
  br label %bb121
bb119:
  %t502 = load ptr, ptr %l0, !tbaa !29
  %t503 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t503, ptr %l285, !tbaa !27
  %t504 = load i64, ptr %l28, !tbaa !24
  %t506 = getelementptr { i64, ptr }, ptr %l285, i32 0, i32 1
  %t507 = load ptr, ptr %t506, !tbaa !27
  %t508 = getelementptr ptr, ptr %t507, i64 %t504
  %t509 = load ptr, ptr %t508, !tbaa !39
  %t511 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t515 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %t502, ptr %t509, i32 %t511)
  store ptr %t515, ptr %l290
  br label %bb120
bb120:
  %t516 = load ptr, ptr %l290, !tbaa !29
  store ptr %t516, ptr %l29, !tbaa !29
  br label %bb122
bb121:
  call void @__olang_check_failed(ptr @olang_loc_b3d294b733b0adff_ff9803be963c37bb)
  unreachable
bb122:
  br label %bb123
bb123:
  %t518 = load ptr, ptr %l29, !tbaa !29
  %t520 = icmp eq ptr %t518, null
  %t522 = xor i1 %t520, true
  br i1 %t522, label %bb124, label %bb125
bb124:
  %t524 = load ptr, ptr %l29, !tbaa !29
  %t527 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t524)
  store i32 %t527, ptr %l298
  br label %bb126
bb125:
  store i1 false, ptr %l295, !tbaa !21
  br label %bb127
bb126:
  %t528 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t529 = load i32, ptr %l298, !tbaa !23
  %t531 = icmp ne i32 %t529, %t528
  store i1 %t531, ptr %l295, !tbaa !21
  br label %bb127
bb127:
  %t533 = load i1, ptr %l295, !tbaa !21
  br i1 %t533, label %bb128, label %bb129
bb128:
  %t534 = load ptr, ptr %l29, !tbaa !29
  %t537 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t534)
  store i32 %t537, ptr %l304
  br label %bb130
bb129:
  store i1 false, ptr %l301, !tbaa !21
  br label %bb131
bb130:
  %t538 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t539 = load i32, ptr %l304, !tbaa !23
  %t541 = icmp ne i32 %t539, %t538
  store i1 %t541, ptr %l301, !tbaa !21
  br label %bb131
bb131:
  %t543 = load i1, ptr %l301, !tbaa !21
  br i1 %t543, label %bb132, label %bb133
bb132:
  %t544 = load ptr, ptr %l0, !tbaa !29
  store ptr %t544, ptr %l307, !tbaa !29
  %t545 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t545, ptr %l308, !tbaa !27
  %t546 = load i64, ptr %l28, !tbaa !24
  %t548 = getelementptr { i64, ptr }, ptr %l308, i32 0, i32 1
  %t549 = load ptr, ptr %t548, !tbaa !27
  %t550 = getelementptr i32, ptr %t549, i64 %t546
  %t551 = load i32, ptr %t550, !tbaa !33
  store i32 %t551, ptr %l310, !tbaa !23
  %t552 = load ptr, ptr %l0, !tbaa !29
  %t553 = load ptr, ptr %l29, !tbaa !29
  %t556 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebindType(ptr %v0, ptr %v2, ptr %t552, ptr %t553)
  store i32 %t556, ptr %l313
  br label %bb134
bb133:
  br label %bb136
bb134:
  %t557 = load ptr, ptr %l307, !tbaa !29
  %t558 = load i32, ptr %l310, !tbaa !23
  %t559 = load i32, ptr %l313, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunify(ptr %v0, ptr %s0, ptr %t557, i32 %t558, i32 %t559, ptr %l21, i1 false, i1 false)
  br label %bb135
bb135:
  br label %bb136
bb136:
  %t561 = load ptr, ptr %l29, !tbaa !29
  %t563 = icmp eq ptr %t561, null
  br i1 %t563, label %bb137, label %bb138
bb137:
  %t565 = load ptr, ptr %lp22
  %t566 = load ptr, ptr %l0, !tbaa !29
  %t568 = getelementptr %"compiler/check:Checker", ptr %t566, i32 0, i32 0
  %t569 = load ptr, ptr %t568, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v2, ptr %v0, ptr %t565, ptr %t569)
  br label %bb139
bb138:
  %t572 = load ptr, ptr %lp22
  %t573 = load ptr, ptr %l29, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v2, ptr %v2, ptr %t572, ptr %t573)
  br label %bb140
bb139:
  br label %bb141
bb140:
  br label %bb141
bb141:
  br label %bb142
bb142:
  %t576 = load i64, ptr %l27, !tbaa !24
  %t578 = add i64 %t576, 1
  store i64 %t578, ptr %l27, !tbaa !24
  br label %bb86
bb143:
  %t580 = load ptr, ptr %l0, !tbaa !29
  %t582 = getelementptr %"compiler/check:Checker", ptr %t580, i32 0, i32 1
  %t583 = load ptr, ptr %t582, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInferThroughBounds(ptr %v0, ptr %s0, ptr %t583, ptr %l21)
  br label %bb144
bb144:
  store i64 0, ptr %l33, !tbaa !24
  %t586 = load i64, ptr %l19, !tbaa !24
  store i64 %t586, ptr %l34, !tbaa !24
  store i64 1, ptr %l35, !tbaa !24
  %t588 = load i64, ptr %l34, !tbaa !24
  %t589 = load i64, ptr %l33, !tbaa !24
  %t592 = icmp sgt i64 %t588, %t589
  br i1 %t592, label %bb145, label %bb146
bb145:
  %t594 = load i64, ptr %l35, !tbaa !24
  %t596 = icmp sgt i64 %t594, 0
  br i1 %t596, label %bb147, label %bb148
bb146:
  store i64 0, ptr %l331, !tbaa !24
  br label %bb150
bb147:
  %t598 = load i64, ptr %l34, !tbaa !24
  %t599 = load i64, ptr %l33, !tbaa !24
  %t602 = sub i64 %t598, %t599
  %t603 = load i64, ptr %l35, !tbaa !24
  %t606 = add i64 %t602, %t603
  %t608 = sub i64 %t606, 1
  %t609 = load i64, ptr %l35, !tbaa !24
  %t612 = sdiv i64 %t608, %t609
  store i64 %t612, ptr %l334, !tbaa !24
  br label %bb149
bb148:
  store i64 0, ptr %l334, !tbaa !24
  br label %bb149
bb149:
  %t614 = load i64, ptr %l334, !tbaa !24
  store i64 %t614, ptr %l331, !tbaa !24
  br label %bb150
bb150:
  %t615 = load i64, ptr %l331, !tbaa !24
  store i64 %t615, ptr %l36, !tbaa !24
  store i64 0, ptr %l37, !tbaa !24
  br label %bb151
bb151:
  %t616 = load i64, ptr %l37, !tbaa !24
  %t617 = load i64, ptr %l36, !tbaa !24
  %t620 = icmp slt i64 %t616, %t617
  %t622 = xor i1 %t620, true
  br i1 %t622, label %bb152, label %bb153
bb152:
  br label %bb185
bb153:
  br label %bb154
bb154:
  %t624 = load i64, ptr %l33, !tbaa !24
  %t625 = load i64, ptr %l37, !tbaa !24
  %t626 = load i64, ptr %l35, !tbaa !24
  %t629 = mul i64 %t625, %t626
  %t632 = add i64 %t624, %t629
  store i64 %t632, ptr %l38, !tbaa !24
  %t634 = getelementptr %"compiler/generic:Binding", ptr %l21, i32 0, i32 2
  %t635 = load { i64, ptr }, ptr %t634, !tbaa !27
  store { i64, ptr } %t635, ptr %l352, !tbaa !27
  %t636 = load i64, ptr %l38, !tbaa !24
  %t638 = getelementptr { i64, ptr }, ptr %l352, i32 0, i32 1
  %t639 = load ptr, ptr %t638, !tbaa !27
  %t640 = getelementptr i32, ptr %t639, i64 %t636
  %t641 = load i32, ptr %t640, !tbaa !33
  store i32 %t641, ptr %l39, !tbaa !23
  %t643 = load i32, ptr %l39, !tbaa !23
  %t644 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t647 = icmp eq i32 %t643, %t644
  br i1 %t647, label %bb155, label %bb156
bb155:
  %t649 = load ptr, ptr %l0, !tbaa !29
  %t651 = getelementptr %"compiler/check:Checker", ptr %t649, i32 0, i32 1
  %t652 = load ptr, ptr %t651, !tbaa !29
  %t653 = load i64, ptr %l18, !tbaa !24
  %t654 = load i64, ptr %l38, !tbaa !24
  %t658 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrVarAt(ptr %v0, ptr %t652, i64 %t653, i64 %t654)
  store i1 %t658, ptr %l363
  br label %bb157
bb156:
  store i1 false, ptr %l358, !tbaa !21
  br label %bb158
bb157:
  %t659 = load i1, ptr %l363, !tbaa !21
  store i1 %t659, ptr %l358, !tbaa !21
  br label %bb158
bb158:
  %t660 = load i1, ptr %l358, !tbaa !21
  br i1 %t660, label %bb159, label %bb160
bb159:
  %t661 = getelementptr %"compiler/generic:Binding", ptr %l21, i32 0, i32 2
  %t662 = load { i64, ptr }, ptr %t661, !tbaa !27
  store { i64, ptr } %t662, ptr %l364, !tbaa !27
  %t663 = load i64, ptr %l38, !tbaa !24
  store i64 %t663, ptr %l365, !tbaa !24
  %t664 = load ptr, ptr %l0, !tbaa !29
  %t666 = getelementptr %"compiler/check:Checker", ptr %t664, i32 0, i32 1
  %t667 = load ptr, ptr %t666, !tbaa !29
  %t669 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrSetOf(ptr %v0, ptr %t667, i32 0)
  store i32 %t669, ptr %l368
  br label %bb161
bb160:
  br label %bb162
bb161:
  %t670 = load i32, ptr %l368, !tbaa !23
  %t671 = load i64, ptr %l365, !tbaa !24
  %t672 = getelementptr { i64, ptr }, ptr %l364, i32 0, i32 1
  %t673 = load ptr, ptr %t672, !tbaa !27
  %t674 = getelementptr i32, ptr %t673, i64 %t671
  store i32 %t670, ptr %t674, !tbaa !33
  br label %bb184
bb162:
  %t675 = load i32, ptr %l39, !tbaa !23
  %t676 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t679 = icmp eq i32 %t675, %t676
  br i1 %t679, label %bb163, label %bb164
bb163:
  store %olang.scope zeroinitializer, ptr %s24
  %t681 = load ptr, ptr %l0, !tbaa !29
  store ptr %t681, ptr %l372, !tbaa !29
  %t682 = load ptr, ptr %l0, !tbaa !29
  %t684 = getelementptr %"compiler/check:Checker", ptr %t682, i32 0, i32 1
  %t685 = load ptr, ptr %t684, !tbaa !29
  %t687 = getelementptr %"compiler/generic:Program", ptr %t685, i32 0, i32 2
  %t688 = load i32, ptr %l3, !tbaa !23
  %t691 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t687, i32 %t688)
  store i32 %t691, ptr %l377
  br label %bb165
bb164:
  br label %bb171
bb165:
  %t692 = load ptr, ptr %l372, !tbaa !29
  %t693 = load i32, ptr %l377, !tbaa !23
  %t694 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t692, i32 %t693)
  store { i64, ptr } %t694, ptr %l378
  br label %bb166
bb166:
  %t695 = load { i64, ptr }, ptr %l378, !tbaa !27
  store { i64, ptr } %t695, ptr %l40, !tbaa !27
  %t696 = load ptr, ptr %l0, !tbaa !29
  store ptr %t696, ptr %l379, !tbaa !29
  %t697 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t697, ptr %l380
  %t698 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t698, ptr %l381, !tbaa !27
  %t699 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t699, ptr %l382, !tbaa !27
  %t700 = load ptr, ptr %l0, !tbaa !29
  %t701 = load i32, ptr %l4, !tbaa !23
  %t704 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s24, ptr %t700, i32 %t701)
  store { i64, ptr } %t704, ptr %l385
  br label %bb167
bb167:
  %t705 = load { i64, ptr }, ptr %l382, !tbaa !27
  %t706 = extractvalue { i64, ptr } %t705, 1
  %t707 = extractvalue { i64, ptr } %t705, 0
  %t708 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t709 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  %t710 = add i64 %t707, %t709
  %t711 = load { i64, ptr }, ptr %l385, !tbaa !27
  %t712 = extractvalue { i64, ptr } %t711, 1
  %t713 = extractvalue { i64, ptr } %t711, 0
  %t714 = add i64 %t710, %t713
  %t715 = call ptr @__olang_scope_alloc(ptr %s24, i64 %t714)
  call void @olang_textcopy(ptr %t715, ptr %t706, i64 %t707)
  %t716 = getelementptr i8, ptr %t715, i64 %t707
  call void @olang_textcopy(ptr %t716, ptr %t708, i64 %t709)
  %t717 = getelementptr i8, ptr %t716, i64 %t709
  call void @olang_textcopy(ptr %t717, ptr %t712, i64 %t713)
  %t718 = insertvalue { i64, ptr } undef, i64 %t714, 0
  %t719 = insertvalue { i64, ptr } %t718, ptr %t715, 1
  %t721 = extractvalue { i64, ptr } %t719, 0
  %t722 = extractvalue { i64, ptr } %t719, 1
  %t723 = mul i64 %t721, 1
  %t724 = call ptr @__olang_scope_alloc(ptr %s24, i64 %t723)
  call void @llvm.memcpy.p0.p0.i64(ptr %t724, ptr %t722, i64 %t723, i1 false)
  %t725 = insertvalue { i64, ptr } undef, i64 %t721, 0
  %t726 = insertvalue { i64, ptr } %t725, ptr %t724, 1
  %t727 = load { i64, ptr }, ptr %l381, !tbaa !27
  %t729 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaseTypeArgsNotInferable(ptr %v0, ptr %s24, ptr %s24, { i64, ptr } %t727, { i64, ptr } %t726)
  store %"compiler/diagmsg:Msg" %t729, ptr %l388
  br label %bb168
bb168:
  %t730 = load ptr, ptr %l379, !tbaa !29
  %t731 = load %"compiler/source:Span", ptr %l380
  %t732 = load %"compiler/diagmsg:Msg", ptr %l388
  %t733 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s24, ptr %t730, %"compiler/source:Span" %t731, %"compiler/diagmsg:Msg" %t732)
  store i64 %t733, ptr %l389
  br label %bb169
bb169:
  %t734 = load ptr, ptr %l0, !tbaa !29
  %t735 = load %"compiler/source:Span", ptr %l1
  %t738 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t734, %"compiler/source:Span" %t735)
  store ptr %t738, ptr %l392
  br label %bb170
bb170:
  call void @__olang_scope_close(ptr %s24)
  call void @__olang_scope_close(ptr %s0)
  %t739 = load ptr, ptr %l392, !tbaa !29
  store ptr %t739, ptr %rv
  br label %ret
bb171:
  %t740 = load ptr, ptr %l0, !tbaa !29
  %t741 = load i32, ptr %l39, !tbaa !23
  %t744 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t740, i32 %t741)
  store i1 %t744, ptr %l395
  br label %bb172
bb172:
  %t745 = load i1, ptr %l395, !tbaa !21
  br i1 %t745, label %bb173, label %bb174
bb173:
  %t746 = getelementptr %"compiler/generic:Binding", ptr %l21, i32 0, i32 2
  %t747 = load { i64, ptr }, ptr %t746, !tbaa !27
  store { i64, ptr } %t747, ptr %l396, !tbaa !27
  %t748 = load i64, ptr %l38, !tbaa !24
  store i64 %t748, ptr %l397, !tbaa !24
  %t749 = load ptr, ptr %l0, !tbaa !29
  %t751 = getelementptr %"compiler/check:Checker", ptr %t749, i32 0, i32 1
  %t752 = load ptr, ptr %t751, !tbaa !29
  %t754 = getelementptr %"compiler/generic:Program", ptr %t752, i32 0, i32 2
  store ptr %t754, ptr %l400, !tbaa !29
  %t755 = load ptr, ptr %l0, !tbaa !29
  %t757 = getelementptr %"compiler/check:Checker", ptr %t755, i32 0, i32 1
  %t758 = load ptr, ptr %t757, !tbaa !29
  %t760 = getelementptr %"compiler/generic:Program", ptr %t758, i32 0, i32 2
  %t761 = load i32, ptr %l39, !tbaa !23
  %t764 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t760, i32 %t761)
  store i32 %t764, ptr %l405
  br label %bb175
bb174:
  %t765 = load ptr, ptr %l0, !tbaa !29
  %t767 = getelementptr %"compiler/check:Checker", ptr %t765, i32 0, i32 1
  %t768 = load ptr, ptr %t767, !tbaa !29
  %t770 = getelementptr %"compiler/generic:Program", ptr %t768, i32 0, i32 2
  store ptr %t770, ptr %l410, !tbaa !29
  %t771 = load ptr, ptr %l0, !tbaa !29
  %t772 = load i32, ptr %l39, !tbaa !23
  %t775 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t771, i32 %t772)
  store i32 %t775, ptr %l413
  br label %bb177
bb175:
  %t776 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t777 = load ptr, ptr %l400, !tbaa !29
  %t778 = load i32, ptr %l405, !tbaa !23
  %t780 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t777, i32 %t778, i64 %t776)
  store i32 %t780, ptr %l407
  br label %bb176
bb176:
  %t781 = load i32, ptr %l407, !tbaa !23
  %t782 = load i64, ptr %l397, !tbaa !24
  %t783 = getelementptr { i64, ptr }, ptr %l396, i32 0, i32 1
  %t784 = load ptr, ptr %t783, !tbaa !27
  %t785 = getelementptr i32, ptr %t784, i64 %t782
  store i32 %t781, ptr %t785, !tbaa !33
  br label %bb183
bb177:
  %t786 = load ptr, ptr %l410, !tbaa !29
  %t787 = load i32, ptr %l413, !tbaa !23
  %t788 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t786, i32 %t787)
  store i32 %t788, ptr %l414
  br label %bb178
bb178:
  %t789 = load i32, ptr %l414, !range !{i32 0, i32 33}
  %t791 = trunc i64 19 to i32
  %t792 = icmp eq i32 %t789, %t791
  br i1 %t792, label %bb179, label %bb180
bb179:
  %t794 = getelementptr %"compiler/generic:Binding", ptr %l21, i32 0, i32 2
  %t795 = load { i64, ptr }, ptr %t794, !tbaa !27
  store { i64, ptr } %t795, ptr %l417, !tbaa !27
  %t796 = load i64, ptr %l38, !tbaa !24
  store i64 %t796, ptr %l418, !tbaa !24
  %t797 = load ptr, ptr %l0, !tbaa !29
  %t799 = getelementptr %"compiler/check:Checker", ptr %t797, i32 0, i32 1
  %t800 = load ptr, ptr %t799, !tbaa !29
  %t802 = getelementptr %"compiler/generic:Program", ptr %t800, i32 0, i32 2
  %t803 = load i32, ptr %l39, !tbaa !23
  %t804 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t808 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t802, i32 %t803, i64 %t804)
  store i32 %t808, ptr %l424
  br label %bb181
bb180:
  br label %bb182
bb181:
  %t809 = load i32, ptr %l424, !tbaa !23
  %t810 = load i64, ptr %l418, !tbaa !24
  %t811 = getelementptr { i64, ptr }, ptr %l417, i32 0, i32 1
  %t812 = load ptr, ptr %t811, !tbaa !27
  %t813 = getelementptr i32, ptr %t812, i64 %t810
  store i32 %t809, ptr %t813, !tbaa !33
  br label %bb182
bb182:
  br label %bb183
bb183:
  br label %bb184
bb184:
  %t814 = load i64, ptr %l37, !tbaa !24
  %t816 = add i64 %t814, 1
  store i64 %t816, ptr %l37, !tbaa !24
  br label %bb151
bb185:
  %t818 = load ptr, ptr %l0, !tbaa !29
  %t820 = getelementptr %"compiler/check:Checker", ptr %t818, i32 0, i32 1
  %t821 = load ptr, ptr %t820, !tbaa !29
  store ptr %t821, ptr %l428, !tbaa !29
  %t822 = load i32, ptr %l3, !tbaa !23
  store i32 %t822, ptr %l429, !tbaa !23
  %t823 = load ptr, ptr %l0, !tbaa !29
  %t825 = getelementptr %"compiler/check:Checker", ptr %t823, i32 0, i32 1
  %t826 = load ptr, ptr %t825, !tbaa !29
  %t828 = getelementptr %"compiler/generic:Program", ptr %t826, i32 0, i32 2
  %t829 = getelementptr %"compiler/generic:Binding", ptr %l21, i32 0, i32 2
  %t830 = load { i64, ptr }, ptr %t829, !tbaa !27
  %t833 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t828, { i64, ptr } %t830)
  store i32 %t833, ptr %l434
  br label %bb186
bb186:
  %t834 = load ptr, ptr %l428, !tbaa !29
  %t835 = load i32, ptr %l429, !tbaa !23
  %t836 = load i32, ptr %l434, !tbaa !23
  %t837 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstance(ptr %v0, ptr %t834, i32 %t835, i32 %t836)
  store i32 %t837, ptr %l435
  br label %bb187
bb187:
  %t838 = load i32, ptr %l435, !tbaa !23
  store i32 %t838, ptr %l41, !tbaa !23
  %t839 = load ptr, ptr %l0, !tbaa !29
  %t840 = load i32, ptr %l41, !tbaa !23
  %t841 = load %"compiler/source:Span", ptr %l2
  %t845 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstancesMet(ptr %v0, ptr %t839, i32 %t840, %"compiler/source:Span" %t841)
  store i1 %t845, ptr %l439
  br label %bb188
bb188:
  %t846 = load i1, ptr %l439, !tbaa !21
  %t847 = xor i1 %t846, true
  br i1 %t847, label %bb189, label %bb190
bb189:
  store i1 true, ptr %l441, !tbaa !21
  br label %bb192
bb190:
  %t849 = load ptr, ptr %l0, !tbaa !29
  %t851 = getelementptr %"compiler/check:Checker", ptr %t849, i32 0, i32 1
  %t852 = load ptr, ptr %t851, !tbaa !29
  %t853 = load i32, ptr %l41, !tbaa !23
  %t856 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t852, i32 %t853)
  store i1 %t856, ptr %l445
  br label %bb191
bb191:
  %t857 = load i1, ptr %l445, !tbaa !21
  %t858 = xor i1 %t857, true
  store i1 %t858, ptr %l441, !tbaa !21
  br label %bb192
bb192:
  %t860 = load i1, ptr %l441, !tbaa !21
  br i1 %t860, label %bb193, label %bb194
bb193:
  %t861 = load ptr, ptr %l0, !tbaa !29
  %t862 = load %"compiler/source:Span", ptr %l1
  %t865 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t861, %"compiler/source:Span" %t862)
  store ptr %t865, ptr %l449
  br label %bb195
bb194:
  br label %bb196
bb195:
  call void @__olang_scope_close(ptr %s0)
  %t866 = load ptr, ptr %l449, !tbaa !29
  store ptr %t866, ptr %rv
  br label %ret
bb196:
  %t867 = load ptr, ptr %l0, !tbaa !29
  store ptr %t867, ptr %l450, !tbaa !29
  %t868 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t868, ptr %l451
  %t869 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t869, ptr %l452
  %t870 = load i32, ptr %l41, !tbaa !23
  store i32 %t870, ptr %l453, !tbaa !23
  %t871 = load i32, ptr %l4, !tbaa !23
  store i32 %t871, ptr %l454, !tbaa !23
  %t872 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t872, ptr %l455, !tbaa !27
  %t873 = load ptr, ptr %lp22
  %t875 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eToArra_H50cbff9caa8a2389caf3e92da7e24507(ptr %v2, ptr %v2, ptr %t873)
  store { i64, ptr } %t875, ptr %l457
  br label %bb197
bb197:
  %t876 = load ptr, ptr %l450, !tbaa !29
  %t877 = load %"compiler/source:Span", ptr %l451
  %t878 = load %"compiler/source:Span", ptr %l452
  %t879 = load i32, ptr %l453, !tbaa !23
  %t880 = load i32, ptr %l454, !tbaa !23
  %t881 = load { i64, ptr }, ptr %l455, !tbaa !27
  %t882 = load { i64, ptr }, ptr %l457, !tbaa !27
  %t883 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eenumCase(ptr %v0, ptr %v1, ptr %v2, ptr %v2, ptr %t876, %"compiler/source:Span" %t877, %"compiler/source:Span" %t878, i32 %t879, i32 %t880, { i64, ptr } %t881, { i64, ptr } %t882)
  store ptr %t883, ptr %l458
  br label %bb198
bb198:
  call void @__olang_scope_close(ptr %s0)
  %t884 = load ptr, ptr %l458, !tbaa !29
  store ptr %t884, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eheldOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l6 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca i1
  %l15 = alloca ptr
  %l16 = alloca %"compiler/source:Span"
  %l19 = alloca i32
  %l22 = alloca i64
  %l31 = alloca %"compiler/source:Span"
  %l34 = alloca i32
  %rv = alloca ptr
  %t28 = alloca { i64, [1 x i64] }, align 8
  %t45 = alloca { i64, [3 x i64] }, align 8
  %t68 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = call ptr @compiler_2fcheck_2ereadPlace(ptr %v1, ptr %v2, ptr %t1)
  store ptr %t3, ptr %l6
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l6, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t5 = load ptr, ptr %l3, !tbaa !29
  %t7 = icmp eq ptr %t5, null
  %t9 = xor i1 %t7, true
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l3, !tbaa !29
  store ptr %t11, ptr %l10, !tbaa !29
  store i1 false, ptr %l11, !tbaa !21
  %t12 = load ptr, ptr %l10, !tbaa !29
  %t13 = icmp ne ptr %t12, null
  br i1 %t13, label %bb4, label %bb5
bb3:
  br label %bb15
bb4:
  %t15 = load ptr, ptr %l10, !tbaa !29
  %t16 = load i64, ptr %t15, !range !{i64 0, i64 8}
  %t18 = icmp eq i64 %t16, 0
  store i1 %t18, ptr %l11, !tbaa !21
  br label %bb5
bb5:
  %t19 = load i1, ptr %l11, !tbaa !21
  br i1 %t19, label %bb6, label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb9
bb8:
  %t20 = load ptr, ptr %l3, !tbaa !29
  store ptr %t20, ptr %rv
  br label %ret
bb9:
  br i1 true, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_ab1100555885b989_2cac6a0e3d43e9fd)
  unreachable
bb14:
  br label %bb15
bb15:
  %t22 = load ptr, ptr %l0, !tbaa !29
  store ptr %t22, ptr %l15, !tbaa !29
  %t23 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t23, ptr %l16
  %t24 = load ptr, ptr %l2, !tbaa !29
  %t27 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t24)
  store i32 %t27, ptr %l19
  br label %bb16
bb16:
  store { i64, [1 x i64] } zeroinitializer, ptr %t28
  %t29 = getelementptr { i64, [1 x i64] }, ptr %t28, i32 0, i32 0
  store i64 0, ptr %t29
  %t30 = load { i64, [1 x i64] }, ptr %t28
  %t31 = load ptr, ptr %l15, !tbaa !29
  %t32 = load %"compiler/source:Span", ptr %l16
  %t33 = load i32, ptr %l19, !tbaa !23
  %t36 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocal(ptr %v0, ptr %t31, i32 0, %"compiler/source:Span" %t32, i32 %t33, i32 2, { i64, [1 x i64] } %t30)
  store i64 %t36, ptr %l22
  br label %bb17
bb17:
  %t37 = load i64, ptr %l22, !tbaa !24
  store i64 %t37, ptr %l4, !tbaa !24
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t39 = load %"compiler/source:Span", ptr %l1
  %t40 = load i64, ptr %l4, !tbaa !24
  %t42 = trunc i64 %t40 to i32
  %t44 = load ptr, ptr %l2, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t45
  %t46 = getelementptr { i64, [3 x i64] }, ptr %t45, i32 0, i32 0
  store i64 0, ptr %t46
  %t48 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t39, 0
  %t50 = insertvalue { %"compiler/source:Span", i32, ptr } %t48, i32 %t42, 1
  %t52 = insertvalue { %"compiler/source:Span", i32, ptr } %t50, ptr %t44, 2
  %t53 = getelementptr { i64, [3 x i64] }, ptr %t45, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t52, ptr %t53
  %t54 = load { i64, [3 x i64] }, ptr %t45
  %t56 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t54, ptr %t56
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t38, ptr %t56)
  br label %bb18
bb18:
  %t59 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t59, ptr %l31
  %t60 = load ptr, ptr %l2, !tbaa !29
  %t63 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t60)
  store i32 %t63, ptr %l34
  br label %bb19
bb19:
  %t64 = load i64, ptr %l4, !tbaa !24
  %t66 = trunc i64 %t64 to i32
  store { i64, [4 x i64] } zeroinitializer, ptr %t68
  %t69 = getelementptr { i64, [4 x i64] }, ptr %t68, i32 0, i32 0
  store i64 0, ptr %t69
  %t70 = load %"compiler/source:Span", ptr %l31
  %t71 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t70, 0
  %t72 = load i32, ptr %l34, !tbaa !23
  %t73 = insertvalue { %"compiler/source:Span", i32, i32 } %t71, i32 %t72, 1
  %t75 = insertvalue { %"compiler/source:Span", i32, i32 } %t73, i32 %t66, 2
  %t76 = getelementptr { i64, [4 x i64] }, ptr %t68, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t75, ptr %t76
  %t77 = load { i64, [4 x i64] }, ptr %t68
  %t79 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t77, ptr %t79
  store ptr %t79, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsSelf(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca i32
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i32
  %l12 = alloca ptr
  %l13 = alloca i64
  %l14 = alloca i32
  %l15 = alloca i32
  %l16 = alloca ptr
  %l21 = alloca i32
  %l22 = alloca i32
  %l23 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l27 = alloca i64
  %l30 = alloca i64
  %l50 = alloca i1
  %l52 = alloca i1
  %l55 = alloca i32
  %l64 = alloca i32
  %l69 = alloca i64
  %l71 = alloca i64
  %l76 = alloca i32
  %l80 = alloca i64
  %l84 = alloca i64
  %l86 = alloca i1
  %l101 = alloca i1
  %l108 = alloca i32
  %l113 = alloca i32
  %l118 = alloca ptr
  %l123 = alloca i32
  %l124 = alloca i32
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
  store ptr %t1, ptr %l16, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"compiler/check:Checker", ptr %t2, i32 0, i32 1
  %t5 = load ptr, ptr %t4, !tbaa !29
  %t7 = getelementptr %"compiler/generic:Program", ptr %t5, i32 0, i32 2
  %t11 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t7, i32 %a2)
  store i32 %t11, ptr %l21
  br label %bb1
bb1:
  %t12 = load ptr, ptr %l16, !tbaa !29
  %t13 = load i32, ptr %l21, !tbaa !23
  %t14 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t14, ptr %l22
  br label %bb2
bb2:
  %t15 = load i32, ptr %l22, !tbaa !23
  store i32 %t15, ptr %l3, !tbaa !23
  %t16 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aDeclId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t16, ptr %l23
  br label %bb3
bb3:
  %t17 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l23
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t17, ptr %l4
  store i64 0, ptr %l5, !tbaa !24
  store i64 16, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t18 = load i64, ptr %l6, !tbaa !24
  %t19 = load i64, ptr %l5, !tbaa !24
  %t22 = icmp sgt i64 %t18, %t19
  br i1 %t22, label %bb4, label %bb5
bb4:
  %t24 = load i64, ptr %l7, !tbaa !24
  %t26 = icmp sgt i64 %t24, 0
  br i1 %t26, label %bb6, label %bb7
bb5:
  store i64 0, ptr %l27, !tbaa !24
  br label %bb9
bb6:
  %t28 = load i64, ptr %l6, !tbaa !24
  %t29 = load i64, ptr %l5, !tbaa !24
  %t32 = sub i64 %t28, %t29
  %t33 = load i64, ptr %l7, !tbaa !24
  %t36 = add i64 %t32, %t33
  %t38 = sub i64 %t36, 1
  %t39 = load i64, ptr %l7, !tbaa !24
  %t42 = sdiv i64 %t38, %t39
  store i64 %t42, ptr %l30, !tbaa !24
  br label %bb8
bb7:
  store i64 0, ptr %l30, !tbaa !24
  br label %bb8
bb8:
  %t44 = load i64, ptr %l30, !tbaa !24
  store i64 %t44, ptr %l27, !tbaa !24
  br label %bb9
bb9:
  %t45 = load i64, ptr %l27, !tbaa !24
  store i64 %t45, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb10
bb10:
  %t46 = load i64, ptr %l9, !tbaa !24
  %t47 = load i64, ptr %l8, !tbaa !24
  %t50 = icmp slt i64 %t46, %t47
  %t52 = xor i1 %t50, true
  br i1 %t52, label %bb11, label %bb12
bb11:
  br label %bb55
bb12:
  br label %bb13
bb13:
  %t54 = load i64, ptr %l5, !tbaa !24
  %t55 = load i64, ptr %l9, !tbaa !24
  %t56 = load i64, ptr %l7, !tbaa !24
  %t59 = mul i64 %t55, %t56
  %t62 = add i64 %t54, %t59
  store i64 %t62, ptr %l10, !tbaa !24
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load i32, ptr %l3, !tbaa !23
  %t68 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t64, i32 %t65)
  store i1 %t68, ptr %l50
  br label %bb14
bb14:
  %t69 = load i1, ptr %l50, !tbaa !21
  %t70 = xor i1 %t69, true
  br i1 %t70, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l52, !tbaa !21
  br label %bb18
bb16:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t73 = load i32, ptr %l3, !tbaa !23
  %t76 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %t72, i32 %t73)
  store i32 %t76, ptr %l55
  br label %bb17
bb17:
  %t77 = load i32, ptr %l55, !range !{i32 0, i32 6}
  %t79 = trunc i64 4 to i32
  %t80 = icmp eq i32 %t77, %t79
  %t82 = xor i1 %t80, true
  store i1 %t82, ptr %l52, !tbaa !21
  br label %bb18
bb18:
  %t84 = load i1, ptr %l52, !tbaa !21
  br i1 %t84, label %bb19, label %bb20
bb19:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/check:Checker", ptr %t86, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !29
  %t91 = getelementptr %"compiler/generic:Program", ptr %t89, i32 0, i32 2
  %t92 = load i32, ptr %l3, !tbaa !23
  %t95 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t91, i32 %t92)
  store i32 %t95, ptr %l64
  br label %bb22
bb22:
  %t96 = load i32, ptr %l64, !tbaa !23
  store i32 %t96, ptr %l11, !tbaa !23
  %t97 = load i32, ptr %l11, !tbaa !23
  %t98 = load i32, ptr %l1, !tbaa !23
  %t101 = icmp eq i32 %t97, %t98
  br i1 %t101, label %bb23, label %bb24
bb23:
  store ptr %l4, ptr %l12, !tbaa !29
  store i64 0, ptr %l13, !tbaa !24
  br label %bb25
bb24:
  br label %bb41
bb25:
  %t104 = load i64, ptr %l13, !tbaa !24
  store i64 %t104, ptr %l69, !tbaa !24
  %t105 = load ptr, ptr %l12, !tbaa !29
  %t107 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aDeclId_3e_2eLen_3ccompiler_2ftypes_3aDeclId_3e(ptr %s0, ptr %t105)
  store i64 %t107, ptr %l71
  br label %bb26
bb26:
  %t108 = load i64, ptr %l69, !tbaa !24
  %t109 = load i64, ptr %l71, !tbaa !24
  %t110 = icmp slt i64 %t108, %t109
  %t112 = xor i1 %t110, true
  br i1 %t112, label %bb27, label %bb28
bb27:
  br label %bb40
bb28:
  br label %bb29
bb29:
  %t114 = load ptr, ptr %l12, !tbaa !29
  %t115 = load i64, ptr %l13, !tbaa !24
  %t118 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aDeclId_3e_2eAt_3ccompiler_2ftypes_3aDeclId_3e(ptr %s0, ptr %t114, i64 %t115)
  store i32 %t118, ptr %l76
  br label %bb30
bb30:
  %t119 = load i32, ptr %l76, !tbaa !23
  store i32 %t119, ptr %l14, !tbaa !23
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = getelementptr %"compiler/check:Checker", ptr %t120, i32 0, i32 1
  %t123 = load ptr, ptr %t122, !tbaa !29
  %t124 = load i32, ptr %l14, !tbaa !23
  %t127 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclModule(ptr %v0, ptr %t123, i32 %t124)
  store i64 %t127, ptr %l80
  br label %bb31
bb31:
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t130 = getelementptr %"compiler/check:Checker", ptr %t128, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !29
  %t132 = load i32, ptr %l1, !tbaa !23
  %t135 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclModule(ptr %v0, ptr %t131, i32 %t132)
  store i64 %t135, ptr %l84
  br label %bb32
bb32:
  %t136 = load i64, ptr %l80, !tbaa !24
  %t137 = load i64, ptr %l84, !tbaa !24
  %t138 = icmp eq i64 %t136, %t137
  br i1 %t138, label %bb33, label %bb34
bb33:
  %t140 = load i32, ptr %l14, !tbaa !23
  %t142 = sext i32 %t140 to i64
  %t143 = load i32, ptr %l1, !tbaa !23
  %t145 = sext i32 %t143 to i64
  %t148 = icmp sgt i64 %t142, %t145
  store i1 %t148, ptr %l86, !tbaa !21
  br label %bb35
bb34:
  store i1 false, ptr %l86, !tbaa !21
  br label %bb35
bb35:
  %t150 = load i1, ptr %l86, !tbaa !21
  br i1 %t150, label %bb36, label %bb37
bb36:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb37:
  br label %bb38
bb38:
  br label %bb39
bb39:
  %t152 = load i64, ptr %l13, !tbaa !24
  %t154 = add i64 %t152, 1
  store i64 %t154, ptr %l13, !tbaa !24
  br label %bb25
bb40:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb41:
  %t157 = load i32, ptr %l11, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aDeclId_3e_2ePush_3ccompiler_2ftypes_3aDeclId_3e(ptr %s0, ptr %l4, i32 %t157)
  br label %bb42
bb42:
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t162 = getelementptr %"compiler/check:Checker", ptr %t160, i32 0, i32 1
  %t163 = load ptr, ptr %t162, !tbaa !29
  %t164 = load i32, ptr %l3, !tbaa !23
  %t167 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t163, i32 %t164)
  store i1 %t167, ptr %l101
  br label %bb43
bb43:
  %t168 = load i1, ptr %l101, !tbaa !21
  %t169 = xor i1 %t168, true
  br i1 %t169, label %bb44, label %bb45
bb44:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb45:
  br label %bb46
bb46:
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t174 = getelementptr %"compiler/check:Checker", ptr %t172, i32 0, i32 1
  %t175 = load ptr, ptr %t174, !tbaa !29
  %t177 = getelementptr %"compiler/generic:Program", ptr %t175, i32 0, i32 2
  %t178 = load i32, ptr %l3, !tbaa !23
  %t181 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t177, i32 %t178)
  store i32 %t181, ptr %l108
  br label %bb47
bb47:
  %t182 = load i32, ptr %l108, !tbaa !23
  store i32 %t182, ptr %l15, !tbaa !23
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t185 = getelementptr %"compiler/check:Checker", ptr %t183, i32 0, i32 1
  %t186 = load ptr, ptr %t185, !tbaa !29
  %t188 = getelementptr %"compiler/generic:Program", ptr %t186, i32 0, i32 2
  %t189 = load i32, ptr %l15, !tbaa !23
  %t192 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t188, i32 %t189)
  store i32 %t192, ptr %l113
  br label %bb48
bb48:
  %t193 = load i32, ptr %l113, !range !{i32 0, i32 33}
  %t195 = trunc i64 19 to i32
  %t196 = icmp eq i32 %t193, %t195
  %t198 = xor i1 %t196, true
  br i1 %t198, label %bb49, label %bb50
bb49:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb50:
  br label %bb51
bb51:
  %t201 = load ptr, ptr %l0, !tbaa !29
  store ptr %t201, ptr %l118, !tbaa !29
  %t202 = load ptr, ptr %l0, !tbaa !29
  %t204 = getelementptr %"compiler/check:Checker", ptr %t202, i32 0, i32 1
  %t205 = load ptr, ptr %t204, !tbaa !29
  %t207 = getelementptr %"compiler/generic:Program", ptr %t205, i32 0, i32 2
  %t208 = load i32, ptr %l15, !tbaa !23
  %t211 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t207, i32 %t208)
  store i32 %t211, ptr %l123
  br label %bb52
bb52:
  %t212 = load ptr, ptr %l118, !tbaa !29
  %t213 = load i32, ptr %l123, !tbaa !23
  %t214 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t212, i32 %t213)
  store i32 %t214, ptr %l124
  br label %bb53
bb53:
  %t215 = load i32, ptr %l124, !tbaa !23
  store i32 %t215, ptr %l3, !tbaa !23
  br label %bb54
bb54:
  %t216 = load i64, ptr %l9, !tbaa !24
  %t218 = add i64 %t216, 1
  store i64 %t218, ptr %l9, !tbaa !24
  br label %bb10
bb55:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eindexOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca ptr
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca ptr
  %l12 = alloca i1
  %l23 = alloca i32
  %l24 = alloca ptr
  %l25 = alloca i1
  %l31 = alloca { i64, ptr }
  %l33 = alloca i32
  %l34 = alloca ptr
  %l35 = alloca i1
  %l44 = alloca i1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 15
  store i1 %t8, ptr %l12, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l12, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t12, i32 0, i32 1
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l4, !tbaa !29
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t18, i32 0, i32 2
  %t20 = load { i64, ptr }, ptr %t19
  store { i64, ptr } %t20, ptr %l5, !tbaa !27
  br label %bb5
bb4:
  br label %bb34
bb5:
  %t22 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t24 = extractvalue { i64, ptr } %t22, 0
  %t26 = icmp ne i64 %t24, 1
  br i1 %t26, label %bb6, label %bb7
bb6:
  store i1 false, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t29 = load ptr, ptr %l4, !tbaa !29
  store ptr %t29, ptr %l24, !tbaa !29
  store i1 false, ptr %l25, !tbaa !21
  %t30 = load ptr, ptr %l24, !tbaa !29
  %t31 = icmp ne ptr %t30, null
  br i1 %t31, label %bb9, label %bb10
bb9:
  %t33 = load ptr, ptr %l24, !tbaa !29
  %t34 = load i64, ptr %t33, !range !{i64 0, i64 30}
  %t36 = icmp eq i64 %t34, 0
  store i1 %t36, ptr %l25, !tbaa !21
  br label %bb10
bb10:
  %t37 = load i1, ptr %l25, !tbaa !21
  br i1 %t37, label %bb11, label %bb12
bb11:
  %t38 = load ptr, ptr %l4, !tbaa !29
  %t40 = getelementptr { i64, [4 x i64] }, ptr %t38, i32 0, i32 1
  %t41 = getelementptr { %"compiler/source:Span", i32 }, ptr %t40, i32 0, i32 1
  %t42 = load i32, ptr %t41
  store i32 %t42, ptr %l6, !tbaa !23
  br label %bb13
bb12:
  br label %bb14
bb13:
  %t44 = load i32, ptr %l6, !tbaa !23
  store i32 %t44, ptr %l23, !tbaa !23
  br label %bb19
bb14:
  br i1 true, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb18
bb17:
  store i32 0, ptr %l23, !tbaa !23
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_cf50a113ac2177e6_e3cc5936e852a452)
  unreachable
bb19:
  %t46 = load i32, ptr %l23, !tbaa !23
  store i32 %t46, ptr %l7, !tbaa !23
  %t47 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t47, ptr %l31, !tbaa !27
  %t48 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !27
  %t50 = getelementptr ptr, ptr %t49, i64 0
  %t51 = load ptr, ptr %t50, !tbaa !39
  store ptr %t51, ptr %l8, !tbaa !29
  %t53 = load ptr, ptr %l8, !tbaa !29
  store ptr %t53, ptr %l34, !tbaa !29
  store i1 false, ptr %l35, !tbaa !21
  %t54 = load ptr, ptr %l34, !tbaa !29
  %t55 = icmp ne ptr %t54, null
  br i1 %t55, label %bb20, label %bb21
bb20:
  %t57 = load ptr, ptr %l34, !tbaa !29
  %t58 = load i64, ptr %t57, !range !{i64 0, i64 30}
  %t60 = icmp eq i64 %t58, 0
  store i1 %t60, ptr %l35, !tbaa !21
  br label %bb21
bb21:
  %t61 = load i1, ptr %l35, !tbaa !21
  br i1 %t61, label %bb22, label %bb23
bb22:
  %t62 = load ptr, ptr %l8, !tbaa !29
  %t64 = getelementptr { i64, [4 x i64] }, ptr %t62, i32 0, i32 1
  %t65 = getelementptr { %"compiler/source:Span", i32 }, ptr %t64, i32 0, i32 1
  %t66 = load i32, ptr %t65
  store i32 %t66, ptr %l9, !tbaa !23
  br label %bb24
bb23:
  br label %bb25
bb24:
  %t68 = load i32, ptr %l9, !tbaa !23
  store i32 %t68, ptr %l33, !tbaa !23
  br label %bb30
bb25:
  br i1 true, label %bb26, label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb29
bb28:
  store i32 0, ptr %l33, !tbaa !23
  br label %bb30
bb29:
  call void @__olang_check_failed(ptr @olang_loc_baddfb655e016c47_d17e78f9e01d2853)
  unreachable
bb30:
  %t70 = load i32, ptr %l33, !tbaa !23
  store i32 %t70, ptr %l10, !tbaa !23
  %t71 = load i32, ptr %l7, !tbaa !23
  %t75 = icmp eq i32 %t71, %a2
  br i1 %t75, label %bb31, label %bb32
bb31:
  %t77 = load i32, ptr %l10, !tbaa !23
  %t81 = icmp eq i32 %t77, %a3
  store i1 %t81, ptr %l44, !tbaa !21
  br label %bb33
bb32:
  store i1 false, ptr %l44, !tbaa !21
  br label %bb33
bb33:
  %t83 = load i1, ptr %l44, !tbaa !21
  store i1 %t83, ptr %rv
  br label %ret
bb34:
  br i1 true, label %bb35, label %bb36
bb35:
  br label %bb37
bb36:
  br label %bb38
bb37:
  store i1 false, ptr %rv
  br label %ret
bb38:
  call void @__olang_check_failed(ptr @olang_loc_3e69957d7270204c_dfbf9d9d846a9638)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elengthsMeet(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %l9 = alloca i32
  %l14 = alloca i32
  %l23 = alloca i32
  %l26 = alloca i1
  %l31 = alloca i32
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
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t6, i32 %a1)
  store i32 %t10, ptr %l9
  br label %bb1
bb1:
  %t11 = load i32, ptr %l9, !tbaa !23
  store i32 %t11, ptr %l3, !tbaa !23
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/check:Checker", ptr %t12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = getelementptr %"compiler/generic:Program", ptr %t15, i32 0, i32 2
  %t21 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t17, i32 %a2)
  store i32 %t21, ptr %l14
  br label %bb2
bb2:
  %t22 = load i32, ptr %l14, !tbaa !23
  store i32 %t22, ptr %l4, !tbaa !23
  %t23 = load i32, ptr %l3, !tbaa !23
  %t24 = load i32, ptr %l4, !tbaa !23
  %t27 = icmp eq i32 %t23, %t24
  br i1 %t27, label %bb3, label %bb4
bb3:
  store i1 true, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/check:Checker", ptr %t30, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t35 = getelementptr %"compiler/generic:Program", ptr %t33, i32 0, i32 2
  %t36 = load i32, ptr %l3, !tbaa !23
  %t39 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t35, i32 %t36)
  store i32 %t39, ptr %l23
  br label %bb6
bb6:
  %t40 = load i32, ptr %l23, !range !{i32 0, i32 33}
  %t42 = trunc i64 27 to i32
  %t43 = icmp eq i32 %t40, %t42
  br i1 %t43, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb10
bb8:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/check:Checker", ptr %t45, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !29
  %t50 = getelementptr %"compiler/generic:Program", ptr %t48, i32 0, i32 2
  %t51 = load i32, ptr %l4, !tbaa !23
  %t54 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t50, i32 %t51)
  store i32 %t54, ptr %l31
  br label %bb9
bb9:
  %t55 = load i32, ptr %l31, !range !{i32 0, i32 33}
  %t57 = trunc i64 27 to i32
  %t58 = icmp eq i32 %t55, %t57
  store i1 %t58, ptr %l26, !tbaa !21
  br label %bb10
bb10:
  %t60 = load i1, ptr %l26, !tbaa !21
  store i1 %t60, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enotInModule(ptr %v0, ptr %a0, i64 %a1, i32 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca %"compiler/names:Entry"
  %l15 = alloca ptr
  %l16 = alloca { i64, ptr }
  %l18 = alloca ptr
  %l21 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l23 = alloca i32
  %l25 = alloca i1
  %l27 = alloca ptr
  %l28 = alloca %"compiler/source:Span"
  %l31 = alloca { i64, ptr }
  %l33 = alloca %"compiler/diagmsg:Msg"
  %l34 = alloca i64
  %l37 = alloca { i64, ptr }
  %l38 = alloca %"compiler/msgs:Nearest"
  %l45 = alloca ptr
  %l48 = alloca i64
  %l50 = alloca i64
  %l55 = alloca %"compiler/names:Entry"
  %l58 = alloca i1
  %l59 = alloca i64
  %l61 = alloca ptr
  %l65 = alloca i1
  %l68 = alloca { i64, ptr }
  %l69 = alloca i1
  %l70 = alloca i1
  %l74 = alloca ptr
  %l77 = alloca { i64, ptr }
  %l78 = alloca ptr
  %l81 = alloca { i64, ptr }
  %l84 = alloca ptr
  %l85 = alloca %"compiler/source:Span"
  %l89 = alloca { i64, ptr }
  %l92 = alloca { i64, ptr }
  %l93 = alloca { i64, ptr }
  %l95 = alloca { i64, ptr }
  %l97 = alloca %"compiler/diagmsg:Msg"
  %l98 = alloca i64
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i32 %a2, ptr %l2
  store %"compiler/source:Span" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 0
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = getelementptr %"compiler/load:Loader", ptr %t7, i32 0, i32 10
  %t10 = load i64, ptr %l1, !tbaa !24
  %t13 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t9, i64 %t10)
  store ptr %t13, ptr %l15
  br label %bb1
bb1:
  %t14 = load ptr, ptr %l15, !tbaa !29
  store ptr %t14, ptr %l4, !tbaa !29
  %t15 = load ptr, ptr %l4, !tbaa !29
  %t17 = getelementptr %"compiler/load:Module", ptr %t15, i32 0, i32 33
  store ptr %t17, ptr %l18, !tbaa !29
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load i32, ptr %l2, !tbaa !23
  %t22 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t18, i32 %t19)
  store { i64, ptr } %t22, ptr %l21
  br label %bb2
bb2:
  %t23 = load ptr, ptr %l18, !tbaa !29
  %t24 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t25 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha4444909f5ef14f7626d25b8f59e6ba2(ptr %v0, ptr %v0, ptr %v0, ptr %t23, { i64, ptr } %t24)
  %t26 = extractvalue { i32, { i64, ptr } } %t25, 1
  %t27 = extractvalue { i32, { i64, ptr } } %t25, 0
  store i32 %t27, ptr %l23
  %t28 = icmp ne i32 %t27, 0
  br i1 %t28, label %bb4, label %ok.29, !prof !99
ok.29:
  store { i64, ptr } %t26, ptr %l22
  br label %bb3
bb3:
  %t30 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t30, ptr %l16, !tbaa !27
  br label %bb6
bb4:
  br label %bb5
bb5:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d12, i32 0, i32 1) }, ptr %l16, !tbaa !27
  br label %bb6
bb6:
  %t31 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t31, ptr %l5, !tbaa !27
  %t32 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t34 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t32, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d13, i32 0, i32 1) })
  store i1 %t34, ptr %l25
  br label %bb7
bb7:
  %t35 = load i1, ptr %l25, !tbaa !21
  %t36 = xor i1 %t35, true
  br i1 %t36, label %bb8, label %bb9
bb8:
  store %olang.scope zeroinitializer, ptr %s1
  %t38 = load ptr, ptr %l0, !tbaa !29
  store ptr %t38, ptr %l27, !tbaa !29
  %t39 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t39, ptr %l28
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load i32, ptr %l2, !tbaa !23
  %t44 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t40, i32 %t41)
  store { i64, ptr } %t44, ptr %l31
  br label %bb10
bb9:
  br label %bb13
bb10:
  %t45 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t46 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t48 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCNoForm(ptr %v0, ptr %v0, ptr %s1, { i64, ptr } %t46, { i64, ptr } %t45)
  store %"compiler/diagmsg:Msg" %t48, ptr %l33
  br label %bb11
bb11:
  %t49 = load ptr, ptr %l27, !tbaa !29
  %t50 = load %"compiler/source:Span", ptr %l28
  %t51 = load %"compiler/diagmsg:Msg", ptr %l33
  %t52 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s1, ptr %t49, %"compiler/source:Span" %t50, %"compiler/diagmsg:Msg" %t51)
  store i64 %t52, ptr %l34
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb13:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load i32, ptr %l2, !tbaa !23
  %t57 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t53, i32 %t54)
  store { i64, ptr } %t57, ptr %l37
  br label %bb14
bb14:
  %t58 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t59 = call %"compiler/msgs:Nearest" @compiler_2fmsgs_3aNearest_2ector(ptr %v0, ptr %s0, { i64, ptr } %t58)
  store %"compiler/msgs:Nearest" %t59, ptr %l38
  br label %bb15
bb15:
  %t60 = load %"compiler/msgs:Nearest", ptr %l38
  %t61 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 40, i64 8)
  store %"compiler/msgs:Nearest" %t60, ptr %t61
  store ptr %t61, ptr %l6, !tbaa !29
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/check:Checker", ptr %t63, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t68 = getelementptr %"compiler/generic:Program", ptr %t66, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !29
  %t71 = getelementptr %"compiler/names:Resolver", ptr %t69, i32 0, i32 1
  %t72 = load i64, ptr %l1, !tbaa !24
  %t75 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v0, ptr %t71, i64 %t72)
  store ptr %t75, ptr %l45
  br label %bb16
bb16:
  %t76 = load ptr, ptr %l45, !tbaa !29
  %t78 = getelementptr %"compiler/names:Table", ptr %t76, i32 0, i32 0
  store ptr %t78, ptr %l7, !tbaa !29
  store i64 0, ptr %l8, !tbaa !24
  br label %bb17
bb17:
  %t80 = load i64, ptr %l8, !tbaa !24
  store i64 %t80, ptr %l48, !tbaa !24
  %t81 = load ptr, ptr %l7, !tbaa !29
  %t83 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eLen_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %t81)
  store i64 %t83, ptr %l50
  br label %bb18
bb18:
  %t84 = load i64, ptr %l48, !tbaa !24
  %t85 = load i64, ptr %l50, !tbaa !24
  %t86 = icmp slt i64 %t84, %t85
  %t88 = xor i1 %t86, true
  br i1 %t88, label %bb19, label %bb20
bb19:
  br label %bb43
bb20:
  br label %bb21
bb21:
  %t90 = load ptr, ptr %l7, !tbaa !29
  %t91 = load i64, ptr %l8, !tbaa !24
  %t94 = call %"compiler/names:Entry" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eAt_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %v0, ptr %t90, i64 %t91)
  store %"compiler/names:Entry" %t94, ptr %l55
  br label %bb22
bb22:
  %t95 = load %"compiler/names:Entry", ptr %l55
  store %"compiler/names:Entry" %t95, ptr %l9
  %t96 = getelementptr %"compiler/names:Entry", ptr %l9, i32 0, i32 2
  %t97 = load i32, ptr %t96, !range !{i32 0, i32 9}
  %t99 = trunc i64 5 to i32
  %t100 = icmp eq i32 %t97, %t99
  br i1 %t100, label %bb23, label %bb24
bb23:
  store i1 true, ptr %l58, !tbaa !21
  br label %bb34
bb24:
  %t102 = load i64, ptr %l1, !tbaa !24
  store i64 %t102, ptr %l59, !tbaa !24
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t103)
  store ptr %t105, ptr %l61
  br label %bb25
bb25:
  %t106 = load ptr, ptr %l61, !tbaa !29
  %t108 = getelementptr %"compiler/check:frame", ptr %t106, i32 0, i32 1
  %t109 = load i64, ptr %t108, !tbaa !24
  %t110 = load i64, ptr %l59, !tbaa !24
  %t112 = icmp eq i64 %t110, %t109
  br i1 %t112, label %bb26, label %bb27
bb26:
  store i1 true, ptr %l65, !tbaa !21
  br label %bb30
bb27:
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t115 = getelementptr %"compiler/names:Entry", ptr %l9, i32 0, i32 0
  %t116 = load i32, ptr %t115, !tbaa !23
  %t119 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t114, i32 %t116)
  store { i64, ptr } %t119, ptr %l68
  br label %bb28
bb28:
  %t120 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t121 = call i1 @compiler_2fload_2ePublic(ptr %v0, { i64, ptr } %t120)
  store i1 %t121, ptr %l69
  br label %bb29
bb29:
  %t122 = load i1, ptr %l69, !tbaa !21
  store i1 %t122, ptr %l65, !tbaa !21
  br label %bb30
bb30:
  %t123 = load i1, ptr %l65, !tbaa !21
  br i1 %t123, label %bb31, label %bb32
bb31:
  store i1 true, ptr %l70, !tbaa !21
  br label %bb33
bb32:
  %t124 = load ptr, ptr %l4, !tbaa !29
  %t126 = getelementptr %"compiler/load:Module", ptr %t124, i32 0, i32 30
  %t127 = load i1, ptr %t126, !tbaa !21
  store i1 %t127, ptr %l70, !tbaa !21
  br label %bb33
bb33:
  %t129 = load i1, ptr %l70, !tbaa !21
  %t130 = xor i1 %t129, true
  store i1 %t130, ptr %l58, !tbaa !21
  br label %bb34
bb34:
  %t132 = load i1, ptr %l58, !tbaa !21
  br i1 %t132, label %bb35, label %bb36
bb35:
  br label %bb42
bb36:
  br label %bb37
bb37:
  %t133 = load ptr, ptr %l6, !tbaa !29
  store ptr %t133, ptr %l74, !tbaa !29
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t135 = getelementptr %"compiler/names:Entry", ptr %l9, i32 0, i32 0
  %t136 = load i32, ptr %t135, !tbaa !23
  %t139 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t134, i32 %t136)
  store { i64, ptr } %t139, ptr %l77
  br label %bb38
bb38:
  %t140 = load ptr, ptr %l74, !tbaa !29
  %t141 = load { i64, ptr }, ptr %l77, !tbaa !27
  call void @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eOffer(ptr %s0, ptr %v0, ptr %t140, { i64, ptr } %t141)
  br label %bb39
bb39:
  %t142 = load ptr, ptr %l6, !tbaa !29
  store ptr %t142, ptr %l78, !tbaa !29
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t144 = getelementptr %"compiler/names:Entry", ptr %l9, i32 0, i32 0
  %t145 = load i32, ptr %t144, !tbaa !23
  %t148 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t143, i32 %t145)
  store { i64, ptr } %t148, ptr %l81
  br label %bb40
bb40:
  %t149 = load ptr, ptr %l78, !tbaa !29
  %t150 = load { i64, ptr }, ptr %l81, !tbaa !27
  call void @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eOfferBuilder(ptr %s0, ptr %v0, ptr %t149, { i64, ptr } %t150)
  br label %bb41
bb41:
  br label %bb42
bb42:
  %t151 = load i64, ptr %l8, !tbaa !24
  %t153 = add i64 %t151, 1
  store i64 %t153, ptr %l8, !tbaa !24
  br label %bb17
bb43:
  %t155 = load ptr, ptr %l0, !tbaa !29
  store ptr %t155, ptr %l84, !tbaa !29
  %t156 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t156, ptr %l85
  %t157 = load ptr, ptr %l4, !tbaa !29
  %t159 = getelementptr %"compiler/load:Module", ptr %t157, i32 0, i32 2
  %t160 = load { i64, ptr }, ptr %t159, !tbaa !27
  %t161 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t162 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  %t164 = extractvalue { i64, ptr } %t160, 1
  %t165 = extractvalue { i64, ptr } %t160, 0
  %t166 = add i64 %t162, %t165
  %t167 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t166)
  call void @olang_textcopy(ptr %t167, ptr %t161, i64 %t162)
  %t168 = getelementptr i8, ptr %t167, i64 %t162
  call void @olang_textcopy(ptr %t168, ptr %t164, i64 %t165)
  %t169 = insertvalue { i64, ptr } undef, i64 %t166, 0
  %t170 = insertvalue { i64, ptr } %t169, ptr %t167, 1
  %t172 = extractvalue { i64, ptr } %t170, 0
  %t173 = extractvalue { i64, ptr } %t170, 1
  %t174 = mul i64 %t172, 1
  %t175 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t174)
  call void @llvm.memcpy.p0.p0.i64(ptr %t175, ptr %t173, i64 %t174, i1 false)
  %t176 = insertvalue { i64, ptr } undef, i64 %t172, 0
  %t177 = insertvalue { i64, ptr } %t176, ptr %t175, 1
  store { i64, ptr } %t177, ptr %l89, !tbaa !27
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t179 = load i32, ptr %l2, !tbaa !23
  %t182 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %s0, ptr %t178, i32 %t179)
  store { i64, ptr } %t182, ptr %l92
  br label %bb44
bb44:
  %t183 = load { i64, ptr }, ptr %l92, !tbaa !27
  %t184 = extractvalue { i64, ptr } %t183, 0
  %t185 = extractvalue { i64, ptr } %t183, 1
  %t186 = mul i64 %t184, 1
  %t187 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t186)
  call void @llvm.memcpy.p0.p0.i64(ptr %t187, ptr %t185, i64 %t186, i1 false)
  %t188 = insertvalue { i64, ptr } undef, i64 %t184, 0
  %t189 = insertvalue { i64, ptr } %t188, ptr %t187, 1
  store { i64, ptr } %t189, ptr %l93, !tbaa !27
  %t190 = load ptr, ptr %l6, !tbaa !29
  %t192 = call { i64, ptr } @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eHint(ptr %s0, ptr %s0, ptr %t190)
  store { i64, ptr } %t192, ptr %l95
  br label %bb45
bb45:
  %t193 = load { i64, ptr }, ptr %l95, !tbaa !27
  %t194 = extractvalue { i64, ptr } %t193, 0
  %t195 = extractvalue { i64, ptr } %t193, 1
  %t196 = mul i64 %t194, 1
  %t197 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t196)
  call void @llvm.memcpy.p0.p0.i64(ptr %t197, ptr %t195, i64 %t196, i1 false)
  %t198 = insertvalue { i64, ptr } undef, i64 %t194, 0
  %t199 = insertvalue { i64, ptr } %t198, ptr %t197, 1
  %t200 = load { i64, ptr }, ptr %l89, !tbaa !27
  %t201 = load { i64, ptr }, ptr %l93, !tbaa !27
  %t203 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotInModule(ptr %s0, ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t200, { i64, ptr } %t201, { i64, ptr } %t199)
  store %"compiler/diagmsg:Msg" %t203, ptr %l97
  br label %bb46
bb46:
  %t204 = load ptr, ptr %l84, !tbaa !29
  %t205 = load %"compiler/source:Span", ptr %l85
  %t206 = load %"compiler/diagmsg:Msg", ptr %l97
  %t207 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s0, ptr %t204, %"compiler/source:Span" %t205, %"compiler/diagmsg:Msg" %t206)
  store i64 %t207, ptr %l98
  br label %bb47
bb47:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epathPart(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l15 = alloca { i64, ptr }
  %l23 = alloca i64
  %l26 = alloca i64
  %l47 = alloca i1
  %l48 = alloca { i64, ptr }
  %l69 = alloca %"compiler/source:Span"
  %s4 = alloca %olang.scope
  %rv = alloca %"compiler/source:Span"
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t4 = getelementptr %"compiler/ast:Path", ptr %t2, i32 0, i32 0
  %t5 = load %"compiler/source:Span", ptr %t4
  %t8 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %a0, %"compiler/source:Span" %t5)
  store { i64, ptr } %t8, ptr %l15
  br label %bb1
bb1:
  %t9 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t9, ptr %l3, !tbaa !27
  %t10 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t10, 0
  store i64 %t12, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  %t14 = load i64, ptr %l2, !tbaa !24
  %t16 = add i64 %t14, 1
  store i64 %t16, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t18 = load i64, ptr %l6, !tbaa !24
  %t19 = load i64, ptr %l5, !tbaa !24
  %t22 = icmp sgt i64 %t18, %t19
  br i1 %t22, label %bb2, label %bb3
bb2:
  %t24 = load i64, ptr %l7, !tbaa !24
  %t26 = icmp sgt i64 %t24, 0
  br i1 %t26, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb7
bb4:
  %t28 = load i64, ptr %l6, !tbaa !24
  %t29 = load i64, ptr %l5, !tbaa !24
  %t32 = sub i64 %t28, %t29
  %t33 = load i64, ptr %l7, !tbaa !24
  %t36 = add i64 %t32, %t33
  %t38 = sub i64 %t36, 1
  %t39 = load i64, ptr %l7, !tbaa !24
  %t42 = sdiv i64 %t38, %t39
  store i64 %t42, ptr %l26, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb6
bb6:
  %t44 = load i64, ptr %l26, !tbaa !24
  store i64 %t44, ptr %l23, !tbaa !24
  br label %bb7
bb7:
  %t45 = load i64, ptr %l23, !tbaa !24
  store i64 %t45, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb8
bb8:
  %t46 = load i64, ptr %l9, !tbaa !24
  %t47 = load i64, ptr %l8, !tbaa !24
  %t50 = icmp slt i64 %t46, %t47
  %t52 = xor i1 %t50, true
  br i1 %t52, label %bb9, label %bb10
bb9:
  br label %bb29
bb10:
  br label %bb11
bb11:
  %t54 = load i64, ptr %l5, !tbaa !24
  %t55 = load i64, ptr %l9, !tbaa !24
  %t56 = load i64, ptr %l7, !tbaa !24
  %t59 = mul i64 %t55, %t56
  %t62 = add i64 %t54, %t59
  store i64 %t62, ptr %l10, !tbaa !24
  %t64 = load i64, ptr %l4, !tbaa !24
  store i64 %t64, ptr %l11, !tbaa !24
  br label %bb12
bb12:
  %t66 = load i64, ptr %l11, !tbaa !24
  %t68 = icmp sgt i64 %t66, 0
  br i1 %t68, label %bb13, label %bb14
bb13:
  %t70 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t70, ptr %l48, !tbaa !27
  %t71 = load i64, ptr %l11, !tbaa !24
  %t73 = sub i64 %t71, 1
  %t75 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = getelementptr i8, ptr %t76, i64 %t73
  %t78 = load i8, ptr %t77, !tbaa !32
  %t80 = icmp ne i8 %t78, 46
  store i1 %t80, ptr %l47, !tbaa !21
  br label %bb15
bb14:
  store i1 false, ptr %l47, !tbaa !21
  br label %bb15
bb15:
  %t82 = load i1, ptr %l47, !tbaa !21
  %t83 = xor i1 %t82, true
  br i1 %t83, label %bb16, label %bb17
bb16:
  br label %bb20
bb17:
  br label %bb18
bb18:
  %t85 = load i64, ptr %l11, !tbaa !24
  %t87 = sub i64 %t85, 1
  store i64 %t87, ptr %l11, !tbaa !24
  br label %bb19
bb19:
  br label %bb12
bb20:
  %t89 = load i64, ptr %l10, !tbaa !24
  %t90 = load i64, ptr %l2, !tbaa !24
  %t93 = icmp eq i64 %t89, %t90
  br i1 %t93, label %bb21, label %bb22
bb21:
  store %olang.scope zeroinitializer, ptr %s4
  %t95 = load ptr, ptr %l1, !tbaa !29
  %t97 = getelementptr %"compiler/ast:Path", ptr %t95, i32 0, i32 0
  %t98 = getelementptr %"compiler/source:Span", ptr %t97, i32 0, i32 0
  %t99 = load i32, ptr %t98, !tbaa !23
  %t100 = load i64, ptr %l11, !tbaa !24
  %t102 = trunc i64 %t100 to i32
  %t105 = add i32 %t99, %t102
  %t106 = load ptr, ptr %l1, !tbaa !29
  %t108 = getelementptr %"compiler/ast:Path", ptr %t106, i32 0, i32 0
  %t109 = getelementptr %"compiler/source:Span", ptr %t108, i32 0, i32 0
  %t110 = load i32, ptr %t109, !tbaa !23
  %t111 = load i64, ptr %l4, !tbaa !24
  %t113 = trunc i64 %t111 to i32
  %t116 = add i32 %t110, %t113
  %t119 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s4, i32 %t105, i32 %t116)
  store %"compiler/source:Span" %t119, ptr %l69
  br label %bb23
bb22:
  br label %bb24
bb23:
  call void @__olang_scope_close(ptr %s4)
  %t120 = load %"compiler/source:Span", ptr %l69
  store %"compiler/source:Span" %t120, ptr %rv
  br label %ret
bb24:
  %t121 = load i64, ptr %l11, !tbaa !24
  %t123 = sub i64 %t121, 1
  store i64 %t123, ptr %l4, !tbaa !24
  %t125 = load i64, ptr %l4, !tbaa !24
  %t127 = icmp slt i64 %t125, 0
  br i1 %t127, label %bb25, label %bb26
bb25:
  %t129 = load ptr, ptr %l1, !tbaa !29
  %t131 = getelementptr %"compiler/ast:Path", ptr %t129, i32 0, i32 0
  %t132 = load %"compiler/source:Span", ptr %t131
  store %"compiler/source:Span" %t132, ptr %rv
  br label %ret
bb26:
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t134 = load i64, ptr %l9, !tbaa !24
  %t136 = add i64 %t134, 1
  store i64 %t136, ptr %l9, !tbaa !24
  br label %bb8
bb29:
  %t138 = load ptr, ptr %l1, !tbaa !29
  %t140 = getelementptr %"compiler/ast:Path", ptr %t138, i32 0, i32 0
  %t141 = load %"compiler/source:Span", ptr %t140
  store %"compiler/source:Span" %t141, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplaceWritable(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i1
  %l11 = alloca ptr
  %l12 = alloca i1
  %l18 = alloca ptr
  %l20 = alloca %"compiler/typed:Local"
  %l23 = alloca i1
  %l24 = alloca ptr
  %l26 = alloca ptr
  %l28 = alloca %"compiler/typed:Local"
  %l30 = alloca i1
  %l33 = alloca i1
  %l37 = alloca i1
  %l39 = alloca ptr
  %l40 = alloca i1
  %l51 = alloca ptr
  %l53 = alloca i1
  %l58 = alloca ptr
  %l64 = alloca i1
  %l65 = alloca ptr
  %l66 = alloca i1
  %l73 = alloca ptr
  %l76 = alloca i32
  %l77 = alloca i64
  %l81 = alloca ptr
  %l82 = alloca i1
  %l89 = alloca i1
  %l90 = alloca ptr
  %l91 = alloca i1
  %l99 = alloca i1
  %l100 = alloca ptr
  %l101 = alloca i1
  %l109 = alloca i1
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
  br label %bb18
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t16)
  store ptr %t18, ptr %l18
  br label %bb6
bb6:
  %t19 = load i32, ptr %l2, !tbaa !23
  %t20 = load ptr, ptr %l18, !tbaa !29
  %t22 = call %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %t20, i32 %t19)
  store %"compiler/typed:Local" %t22, ptr %l20
  br label %bb7
bb7:
  %t23 = getelementptr %"compiler/typed:Local", ptr %l20, i32 0, i32 4
  %t24 = load i32, ptr %t23, !range !{i32 0, i32 7}
  %t26 = trunc i64 5 to i32
  %t27 = icmp eq i32 %t24, %t26
  br i1 %t27, label %bb8, label %bb9
bb8:
  %t29 = load ptr, ptr %l0, !tbaa !29
  store ptr %t29, ptr %l24, !tbaa !29
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t30)
  store ptr %t32, ptr %l26
  br label %bb10
bb9:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb13
bb10:
  %t33 = load i32, ptr %l2, !tbaa !23
  %t34 = load ptr, ptr %l26, !tbaa !29
  %t36 = call %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %t34, i32 %t33)
  store %"compiler/typed:Local" %t36, ptr %l28
  br label %bb11
bb11:
  %t37 = getelementptr %"compiler/typed:Local", ptr %l28, i32 0, i32 2
  %t38 = load i32, ptr %t37, !tbaa !23
  %t39 = load ptr, ptr %l24, !tbaa !29
  %t41 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t39, i32 %t38)
  store i1 %t41, ptr %l30
  br label %bb12
bb12:
  %t42 = load i1, ptr %l30, !tbaa !21
  %t43 = xor i1 %t42, true
  store i1 %t43, ptr %l23, !tbaa !21
  br label %bb13
bb13:
  %t45 = load i1, ptr %l23, !tbaa !21
  %t46 = xor i1 %t45, true
  br i1 %t46, label %bb14, label %bb15
bb14:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load i32, ptr %l2, !tbaa !23
  %t51 = sext i32 %t49 to i64
  %t54 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroLocal(ptr %v0, ptr %t48, i64 %t51)
  store i1 %t54, ptr %l37
  br label %bb16
bb15:
  store i1 false, ptr %l33, !tbaa !21
  br label %bb17
bb16:
  %t55 = load i1, ptr %l37, !tbaa !21
  %t56 = xor i1 %t55, true
  store i1 %t56, ptr %l33, !tbaa !21
  br label %bb17
bb17:
  %t58 = load i1, ptr %l33, !tbaa !21
  store i1 %t58, ptr %l10, !tbaa !21
  br label %bb67
bb18:
  %t59 = load ptr, ptr %l1, !tbaa !29
  store ptr %t59, ptr %l39, !tbaa !29
  store i1 false, ptr %l40, !tbaa !21
  %t60 = load ptr, ptr %l39, !tbaa !29
  %t61 = icmp ne ptr %t60, null
  br i1 %t61, label %bb19, label %bb20
bb19:
  %t63 = load ptr, ptr %l39, !tbaa !29
  %t64 = load i64, ptr %t63, !range !{i64 0, i64 8}
  %t66 = icmp eq i64 %t64, 1
  store i1 %t66, ptr %l40, !tbaa !21
  br label %bb20
bb20:
  %t67 = load i1, ptr %l40, !tbaa !21
  br i1 %t67, label %bb21, label %bb22
bb21:
  %t68 = load ptr, ptr %l1, !tbaa !29
  %t70 = getelementptr { i64, [4 x i64] }, ptr %t68, i32 0, i32 1
  %t71 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t70, i32 0, i32 2
  %t72 = load i64, ptr %t71
  store i64 %t72, ptr %l3, !tbaa !24
  %t74 = load ptr, ptr %l1, !tbaa !29
  %t76 = getelementptr { i64, [4 x i64] }, ptr %t74, i32 0, i32 1
  %t77 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t76, i32 0, i32 3
  %t78 = load i32, ptr %t77
  store i32 %t78, ptr %l4, !tbaa !23
  br label %bb23
bb22:
  br label %bb33
bb23:
  store %olang.scope zeroinitializer, ptr %s2
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/check:Checker", ptr %t80, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !29
  %t84 = load i64, ptr %l3, !tbaa !24
  %t85 = load i32, ptr %l4, !tbaa !23
  %t89 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGlobalDecl(ptr %v0, ptr %s2, ptr %t83, i64 %t84, i32 %t85)
  store ptr %t89, ptr %l51
  br label %bb24
bb24:
  %t90 = load ptr, ptr %l51, !tbaa !29
  %t91 = icmp eq ptr %t90, null
  br i1 %t91, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l53, !tbaa !21
  br label %bb32
bb26:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/check:Checker", ptr %t93, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !29
  %t97 = load i64, ptr %l3, !tbaa !24
  %t98 = load i32, ptr %l4, !tbaa !23
  %t102 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGlobalDecl(ptr %v0, ptr %v0, ptr %t96, i64 %t97, i32 %t98)
  store ptr %t102, ptr %l58
  br label %bb27
bb27:
  %t103 = load ptr, ptr %l58, !tbaa !29
  store ptr %t103, ptr %l5, !tbaa !29
  %t104 = load ptr, ptr %l5, !tbaa !29
  %t106 = icmp eq ptr %t104, null
  br i1 %t106, label %bb28, label %bb29
bb28:
  call void @__olang_check_failed(ptr @olang_loc_24dda45681d8cee1_6133aaee564c4ee5)
  unreachable
bb29:
  br label %bb30
bb30:
  %t108 = load ptr, ptr %l5, !tbaa !29
  %t111 = getelementptr %"compiler/ast:VarDecl", ptr %t108, i32 0, i32 2
  %t112 = load ptr, ptr %t111, !tbaa !29
  %t114 = call i1 @compiler_2fgeneric_2eWrittenMut(ptr %v0, ptr %t112)
  store i1 %t114, ptr %l64
  br label %bb31
bb31:
  %t115 = load i1, ptr %l64, !tbaa !21
  store i1 %t115, ptr %l53, !tbaa !21
  br label %bb32
bb32:
  %t116 = load i1, ptr %l53, !tbaa !21
  store i1 %t116, ptr %l10, !tbaa !21
  call void @__olang_scope_close(ptr %s2)
  br label %bb67
bb33:
  %t117 = load ptr, ptr %l1, !tbaa !29
  store ptr %t117, ptr %l65, !tbaa !29
  store i1 false, ptr %l66, !tbaa !21
  %t118 = load ptr, ptr %l65, !tbaa !29
  %t119 = icmp ne ptr %t118, null
  br i1 %t119, label %bb34, label %bb35
bb34:
  %t121 = load ptr, ptr %l65, !tbaa !29
  %t122 = load i64, ptr %t121, !range !{i64 0, i64 8}
  %t124 = icmp eq i64 %t122, 2
  store i1 %t124, ptr %l66, !tbaa !21
  br label %bb35
bb35:
  %t125 = load i1, ptr %l66, !tbaa !21
  br i1 %t125, label %bb36, label %bb37
bb36:
  %t126 = load ptr, ptr %l1, !tbaa !29
  %t128 = getelementptr { i64, [4 x i64] }, ptr %t126, i32 0, i32 1
  %t129 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t128, i32 0, i32 2
  %t130 = load ptr, ptr %t129
  store ptr %t130, ptr %l6, !tbaa !29
  br label %bb38
bb37:
  br label %bb41
bb38:
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t134 = getelementptr %"compiler/check:Checker", ptr %t132, i32 0, i32 1
  %t135 = load ptr, ptr %t134, !tbaa !29
  %t137 = getelementptr %"compiler/generic:Program", ptr %t135, i32 0, i32 2
  store ptr %t137, ptr %l73, !tbaa !29
  %t138 = load ptr, ptr %l6, !tbaa !29
  %t141 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t138)
  store i32 %t141, ptr %l76
  br label %bb39
bb39:
  %t142 = load ptr, ptr %l73, !tbaa !29
  %t143 = load i32, ptr %l76, !tbaa !23
  %t144 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t142, i32 %t143)
  store i64 %t144, ptr %l77
  br label %bb40
bb40:
  %t145 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t146 = load i64, ptr %l77, !tbaa !24
  %t148 = and i64 %t146, %t145
  %t150 = icmp ne i64 %t148, 0
  store i1 %t150, ptr %l10, !tbaa !21
  br label %bb67
bb41:
  %t152 = load ptr, ptr %l1, !tbaa !29
  store ptr %t152, ptr %l81, !tbaa !29
  store i1 false, ptr %l82, !tbaa !21
  %t153 = load ptr, ptr %l81, !tbaa !29
  %t154 = icmp ne ptr %t153, null
  br i1 %t154, label %bb42, label %bb43
bb42:
  %t156 = load ptr, ptr %l81, !tbaa !29
  %t157 = load i64, ptr %t156, !range !{i64 0, i64 8}
  %t159 = icmp eq i64 %t157, 3
  store i1 %t159, ptr %l82, !tbaa !21
  br label %bb43
bb43:
  %t160 = load i1, ptr %l82, !tbaa !21
  br i1 %t160, label %bb44, label %bb45
bb44:
  %t161 = load ptr, ptr %l1, !tbaa !29
  %t163 = getelementptr { i64, [4 x i64] }, ptr %t161, i32 0, i32 1
  %t164 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t163, i32 0, i32 2
  %t165 = load ptr, ptr %t164
  store ptr %t165, ptr %l7, !tbaa !29
  br label %bb46
bb45:
  br label %bb48
bb46:
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t168 = load ptr, ptr %l7, !tbaa !29
  %t171 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplaceWritable(ptr %v0, ptr %v1, ptr %t167, ptr %t168)
  store i1 %t171, ptr %l89
  br label %bb47
bb47:
  %t172 = load i1, ptr %l89, !tbaa !21
  store i1 %t172, ptr %l10, !tbaa !21
  br label %bb67
bb48:
  %t173 = load ptr, ptr %l1, !tbaa !29
  store ptr %t173, ptr %l90, !tbaa !29
  store i1 false, ptr %l91, !tbaa !21
  %t174 = load ptr, ptr %l90, !tbaa !29
  %t175 = icmp ne ptr %t174, null
  br i1 %t175, label %bb49, label %bb50
bb49:
  %t177 = load ptr, ptr %l90, !tbaa !29
  %t178 = load i64, ptr %t177, !range !{i64 0, i64 8}
  %t180 = icmp eq i64 %t178, 4
  store i1 %t180, ptr %l91, !tbaa !21
  br label %bb50
bb50:
  %t181 = load i1, ptr %l91, !tbaa !21
  br i1 %t181, label %bb51, label %bb52
bb51:
  %t182 = load ptr, ptr %l1, !tbaa !29
  %t184 = getelementptr { i64, [4 x i64] }, ptr %t182, i32 0, i32 1
  %t185 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t184, i32 0, i32 2
  %t186 = load ptr, ptr %t185
  store ptr %t186, ptr %l8, !tbaa !29
  br label %bb53
bb52:
  br label %bb55
bb53:
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t189 = load ptr, ptr %l8, !tbaa !29
  %t191 = getelementptr %"compiler/typed:Elem", ptr %t189, i32 0, i32 0
  %t192 = load ptr, ptr %t191, !tbaa !29
  %t195 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplaceWritable(ptr %v0, ptr %v1, ptr %t188, ptr %t192)
  store i1 %t195, ptr %l99
  br label %bb54
bb54:
  %t196 = load i1, ptr %l99, !tbaa !21
  store i1 %t196, ptr %l10, !tbaa !21
  br label %bb67
bb55:
  %t197 = load ptr, ptr %l1, !tbaa !29
  store ptr %t197, ptr %l100, !tbaa !29
  store i1 false, ptr %l101, !tbaa !21
  %t198 = load ptr, ptr %l100, !tbaa !29
  %t199 = icmp ne ptr %t198, null
  br i1 %t199, label %bb56, label %bb57
bb56:
  %t201 = load ptr, ptr %l100, !tbaa !29
  %t202 = load i64, ptr %t201, !range !{i64 0, i64 8}
  %t204 = icmp eq i64 %t202, 5
  store i1 %t204, ptr %l101, !tbaa !21
  br label %bb57
bb57:
  %t205 = load i1, ptr %l101, !tbaa !21
  br i1 %t205, label %bb58, label %bb59
bb58:
  %t206 = load ptr, ptr %l1, !tbaa !29
  %t208 = getelementptr { i64, [4 x i64] }, ptr %t206, i32 0, i32 1
  %t209 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t208, i32 0, i32 2
  %t210 = load ptr, ptr %t209
  store ptr %t210, ptr %l9, !tbaa !29
  br label %bb60
bb59:
  br label %bb62
bb60:
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t213 = load ptr, ptr %l9, !tbaa !29
  %t215 = getelementptr %"compiler/typed:Payload", ptr %t213, i32 0, i32 0
  %t216 = load ptr, ptr %t215, !tbaa !29
  %t219 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplaceWritable(ptr %v0, ptr %v1, ptr %t212, ptr %t216)
  store i1 %t219, ptr %l109
  br label %bb61
bb61:
  %t220 = load i1, ptr %l109, !tbaa !21
  store i1 %t220, ptr %l10, !tbaa !21
  br label %bb67
bb62:
  br i1 true, label %bb63, label %bb64
bb63:
  br label %bb65
bb64:
  br label %bb66
bb65:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb67
bb66:
  call void @__olang_check_failed(ptr @olang_loc_f10316e290a7e1b9_b7814005b7d82bcd)
  unreachable
bb67:
  %t221 = load i1, ptr %l10, !tbaa !21
  store i1 %t221, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epushCases(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca %"compiler/source:Span"
  %l8 = alloca i32
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca { i64, i64 }
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca ptr
  %l15 = alloca i1
  %l24 = alloca ptr
  %l25 = alloca i1
  %l39 = alloca ptr
  %l40 = alloca i1
  %l53 = alloca i1
  %l55 = alloca i1
  %l58 = alloca i1
  %l69 = alloca ptr
  %l70 = alloca ptr
  %l72 = alloca i32
  %l75 = alloca { i64, i64 }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i1 %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l14, !tbaa !29
  store i1 false, ptr %l15, !tbaa !21
  %t2 = load ptr, ptr %l14, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l14, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l15, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l15, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr }, ptr %t12, i32 0, i32 1
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l4, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load ptr, ptr %l4, !tbaa !29
  %t18 = load i1, ptr %l2, !tbaa !21
  %t19 = load i64, ptr %l3, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epushCases(ptr %v0, ptr %v1, ptr %t16, ptr %t17, i1 %t18, i64 %t19)
  br label %bb6
bb6:
  br label %bb50
bb7:
  %t24 = load ptr, ptr %l1, !tbaa !29
  store ptr %t24, ptr %l24, !tbaa !29
  store i1 false, ptr %l25, !tbaa !21
  %t25 = load ptr, ptr %l24, !tbaa !29
  %t26 = icmp ne ptr %t25, null
  br i1 %t26, label %bb8, label %bb9
bb8:
  %t28 = load ptr, ptr %l24, !tbaa !29
  %t29 = load i64, ptr %t28, !range !{i64 0, i64 30}
  %t31 = icmp eq i64 %t29, 3
  store i1 %t31, ptr %l25, !tbaa !21
  br label %bb9
bb9:
  %t32 = load i1, ptr %l25, !tbaa !21
  br i1 %t32, label %bb10, label %bb11
bb10:
  %t33 = load ptr, ptr %l1, !tbaa !29
  %t35 = getelementptr { i64, [4 x i64] }, ptr %t33, i32 0, i32 1
  %t36 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t35, i32 0, i32 1
  %t37 = load i32, ptr %t36, !range !{i32 0, i32 114}
  store i32 %t37, ptr %l5
  %t39 = load ptr, ptr %l1, !tbaa !29
  %t41 = getelementptr { i64, [4 x i64] }, ptr %t39, i32 0, i32 1
  %t42 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t41, i32 0, i32 2
  %t43 = load ptr, ptr %t42
  store ptr %t43, ptr %l6, !tbaa !29
  br label %bb12
bb11:
  br label %bb17
bb12:
  %t45 = load i32, ptr %l5, !range !{i32 0, i32 114}
  %t47 = trunc i64 48 to i32
  %t48 = icmp eq i32 %t45, %t47
  br i1 %t48, label %bb13, label %bb14
bb13:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t51 = load ptr, ptr %l6, !tbaa !29
  %t52 = load i1, ptr %l2, !tbaa !21
  %t54 = xor i1 %t52, true
  %t55 = load i64, ptr %l3, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epushCases(ptr %v0, ptr %v1, ptr %t50, ptr %t51, i1 %t54, i64 %t55)
  br label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb16
bb16:
  br label %bb50
bb17:
  %t60 = load ptr, ptr %l1, !tbaa !29
  store ptr %t60, ptr %l39, !tbaa !29
  store i1 false, ptr %l40, !tbaa !21
  %t61 = load ptr, ptr %l39, !tbaa !29
  %t62 = icmp ne ptr %t61, null
  br i1 %t62, label %bb18, label %bb19
bb18:
  %t64 = load ptr, ptr %l39, !tbaa !29
  %t65 = load i64, ptr %t64, !range !{i64 0, i64 30}
  %t67 = icmp eq i64 %t65, 5
  store i1 %t67, ptr %l40, !tbaa !21
  br label %bb19
bb19:
  %t68 = load i1, ptr %l40, !tbaa !21
  br i1 %t68, label %bb20, label %bb21
bb20:
  %t69 = load ptr, ptr %l1, !tbaa !29
  %t71 = getelementptr { i64, [4 x i64] }, ptr %t69, i32 0, i32 1
  %t72 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t71, i32 0, i32 0
  %t73 = load %"compiler/source:Span", ptr %t72
  store %"compiler/source:Span" %t73, ptr %l7
  %t75 = load ptr, ptr %l1, !tbaa !29
  %t77 = getelementptr { i64, [4 x i64] }, ptr %t75, i32 0, i32 1
  %t78 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t77, i32 0, i32 1
  %t79 = load i32, ptr %t78, !range !{i32 0, i32 114}
  store i32 %t79, ptr %l8
  %t81 = load ptr, ptr %l1, !tbaa !29
  %t83 = getelementptr { i64, [4 x i64] }, ptr %t81, i32 0, i32 1
  %t84 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t83, i32 0, i32 2
  %t85 = load ptr, ptr %t84
  store ptr %t85, ptr %l9, !tbaa !29
  %t87 = load ptr, ptr %l1, !tbaa !29
  %t89 = getelementptr { i64, [4 x i64] }, ptr %t87, i32 0, i32 1
  %t90 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t89, i32 0, i32 3
  %t91 = load ptr, ptr %t90
  store ptr %t91, ptr %l10, !tbaa !29
  br label %bb22
bb21:
  br label %bb45
bb22:
  %t93 = load i32, ptr %l8, !range !{i32 0, i32 114}
  %t95 = trunc i64 45 to i32
  %t96 = icmp eq i32 %t93, %t95
  br i1 %t96, label %bb23, label %bb24
bb23:
  %t98 = load i1, ptr %l2, !tbaa !21
  store i1 %t98, ptr %l53, !tbaa !21
  br label %bb25
bb24:
  store i1 false, ptr %l53, !tbaa !21
  br label %bb25
bb25:
  %t100 = load i1, ptr %l53, !tbaa !21
  br i1 %t100, label %bb26, label %bb27
bb26:
  store i1 true, ptr %l55, !tbaa !21
  br label %bb31
bb27:
  %t101 = load i32, ptr %l8, !range !{i32 0, i32 114}
  %t103 = trunc i64 46 to i32
  %t104 = icmp eq i32 %t101, %t103
  br i1 %t104, label %bb28, label %bb29
bb28:
  %t106 = load i1, ptr %l2, !tbaa !21
  %t108 = xor i1 %t106, true
  store i1 %t108, ptr %l58, !tbaa !21
  br label %bb30
bb29:
  store i1 false, ptr %l58, !tbaa !21
  br label %bb30
bb30:
  %t110 = load i1, ptr %l58, !tbaa !21
  store i1 %t110, ptr %l55, !tbaa !21
  br label %bb31
bb31:
  %t111 = load i1, ptr %l55, !tbaa !21
  br i1 %t111, label %bb32, label %bb33
bb32:
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t113 = load ptr, ptr %l9, !tbaa !29
  %t114 = load i1, ptr %l2, !tbaa !21
  %t115 = load i64, ptr %l3, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epushCases(ptr %v0, ptr %v1, ptr %t112, ptr %t113, i1 %t114, i64 %t115)
  br label %bb34
bb33:
  br label %bb36
bb34:
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t121 = load ptr, ptr %l10, !tbaa !29
  %t122 = load i1, ptr %l2, !tbaa !21
  %t123 = load i64, ptr %l3, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epushCases(ptr %v0, ptr %v1, ptr %t120, ptr %t121, i1 %t122, i64 %t123)
  br label %bb35
bb35:
  br label %ret
bb36:
  %t128 = load ptr, ptr %l0, !tbaa !29
  store ptr %t128, ptr %l69, !tbaa !29
  %t129 = load ptr, ptr %l1, !tbaa !29
  store ptr %t129, ptr %l70, !tbaa !29
  %t130 = load i1, ptr %l2, !tbaa !21
  br i1 %t130, label %bb37, label %bb38
bb37:
  store i32 94, ptr %l72
  br label %bb39
bb38:
  store i32 95, ptr %l72
  br label %bb39
bb39:
  %t134 = load ptr, ptr %l69, !tbaa !29
  %t135 = load ptr, ptr %l70, !tbaa !29
  %t136 = load i32, ptr %l72, !range !{i32 0, i32 114}
  %t137 = call { i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enarrowOf(ptr %v0, ptr %v1, ptr %t134, ptr %t135, i32 %t136)
  store { i64, i64 } %t137, ptr %l75
  br label %bb40
bb40:
  %t138 = load { i64, i64 }, ptr %l75
  store { i64, i64 } %t138, ptr %l11
  %t139 = getelementptr { i64, i64 }, ptr %l11, i32 0, i32 0
  %t140 = load i64, ptr %t139, !tbaa !24
  store i64 %t140, ptr %l12, !tbaa !24
  %t142 = getelementptr { i64, i64 }, ptr %l11, i32 0, i32 1
  %t143 = load i64, ptr %t142, !tbaa !24
  store i64 %t143, ptr %l13, !tbaa !24
  %t145 = load i64, ptr %l12, !tbaa !24
  %t147 = icmp sge i64 %t145, 0
  br i1 %t147, label %bb41, label %bb42
bb41:
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t150 = load %"compiler/source:Span", ptr %l7
  %t151 = load i64, ptr %l12, !tbaa !24
  %t152 = load i64, ptr %l13, !tbaa !24
  %t153 = load i64, ptr %l3, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enarrow(ptr %v0, ptr %t149, %"compiler/source:Span" %t150, i64 %t151, i64 %t152, i64 %t153)
  br label %bb43
bb42:
  br label %bb44
bb43:
  br label %bb44
bb44:
  br label %bb50
bb45:
  br i1 true, label %bb46, label %bb47
bb46:
  br label %bb48
bb47:
  br label %bb49
bb48:
  br label %bb50
bb49:
  call void @__olang_check_failed(ptr @olang_loc_557e36687125b346_f828420618561f4a)
  unreachable
bb50:
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/check:reflVal" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflFold(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca %"compiler/check:litv"
  %l5 = alloca ptr
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca i32
  %l10 = alloca ptr
  %lp11 = alloca ptr
  %l12 = alloca i32
  %l13 = alloca ptr
  %l14 = alloca ptr
  %lp15 = alloca ptr
  %lp16 = alloca ptr
  %l17 = alloca i1
  %l18 = alloca ptr
  %l19 = alloca { i64, ptr }
  %l20 = alloca ptr
  %l21 = alloca { i64, ptr }
  %l22 = alloca ptr
  %l23 = alloca i32
  %l24 = alloca ptr
  %l25 = alloca i32
  %l26 = alloca i32
  %l27 = alloca { i64, ptr }
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i64
  %l34 = alloca ptr
  %l35 = alloca i1
  %l46 = alloca { i64, ptr }
  %l47 = alloca i1
  %l48 = alloca %"compiler/check:reflVal"
  %l51 = alloca i64
  %l55 = alloca { i64, ptr }
  %l56 = alloca { i64, ptr }
  %l57 = alloca i64
  %l58 = alloca { i64, ptr }
  %l61 = alloca %"compiler/check:reflVal"
  %l65 = alloca %"compiler/check:litv"
  %l67 = alloca i1
  %l70 = alloca i1
  %l74 = alloca %"compiler/check:reflVal"
  %l75 = alloca %"compiler/check:reflVal"
  %l76 = alloca ptr
  %l77 = alloca i1
  %l84 = alloca %"compiler/check:reflVal"
  %l85 = alloca ptr
  %l86 = alloca i1
  %l95 = alloca ptr
  %l97 = alloca ptr
  %l101 = alloca %"compiler/names:Ref"
  %l105 = alloca i1
  %l108 = alloca i64
  %l110 = alloca %"compiler/check:reflVal"
  %l111 = alloca i32
  %l113 = alloca ptr
  %l117 = alloca i32
  %l118 = alloca i32
  %l121 = alloca i1
  %l126 = alloca i32
  %l130 = alloca %"compiler/check:reflVal"
  %l136 = alloca i32
  %l143 = alloca i64
  %l145 = alloca %"compiler/check:reflVal"
  %l150 = alloca i64
  %l151 = alloca %"compiler/check:reflVal"
  %l152 = alloca ptr
  %l153 = alloca i1
  %l162 = alloca %"compiler/check:reflVal"
  %l168 = alloca i1
  %l174 = alloca %"compiler/check:reflVal"
  %l177 = alloca i1
  %l183 = alloca %"compiler/check:reflVal"
  %l184 = alloca %"compiler/check:reflVal"
  %l185 = alloca ptr
  %l186 = alloca i1
  %l197 = alloca %"compiler/check:reflVal"
  %l200 = alloca i1
  %l202 = alloca i1
  %l206 = alloca i1
  %l212 = alloca i1
  %l214 = alloca i1
  %l218 = alloca i1
  %l224 = alloca %"compiler/check:reflVal"
  %l227 = alloca i1
  %l230 = alloca i1
  %l234 = alloca %"compiler/check:reflVal"
  %l237 = alloca i1
  %l243 = alloca %"compiler/check:reflVal"
  %l245 = alloca %"compiler/check:reflVal"
  %l248 = alloca i1
  %l259 = alloca i1
  %l264 = alloca i1
  %l272 = alloca %"compiler/check:reflVal"
  %l276 = alloca %"compiler/check:reflVal"
  %l277 = alloca %"compiler/check:reflVal"
  %l283 = alloca %"compiler/check:reflVal"
  %l289 = alloca %"compiler/check:reflVal"
  %l295 = alloca %"compiler/check:reflVal"
  %l301 = alloca %"compiler/check:reflVal"
  %l307 = alloca %"compiler/check:reflVal"
  %l313 = alloca %"compiler/check:reflVal"
  %l319 = alloca %"compiler/check:reflVal"
  %l320 = alloca %"compiler/check:reflVal"
  %l321 = alloca ptr
  %l322 = alloca i1
  %l329 = alloca %"compiler/check:reflVal"
  %l330 = alloca ptr
  %l331 = alloca i1
  %l342 = alloca %"compiler/check:reflVal"
  %l343 = alloca ptr
  %l344 = alloca i1
  %l355 = alloca %"compiler/check:reflVal"
  %l356 = alloca %"compiler/check:reflVal"
  %l357 = alloca ptr
  %l358 = alloca i1
  %l367 = alloca i32
  %l370 = alloca i1
  %l373 = alloca i1
  %l374 = alloca i1
  %l378 = alloca i1
  %l379 = alloca i1
  %l382 = alloca i1
  %l388 = alloca { i64, ptr }
  %l394 = alloca i64
  %l397 = alloca i64
  %l415 = alloca { i64, ptr }
  %l423 = alloca %"compiler/check:reflVal"
  %l429 = alloca %"compiler/check:reflVal"
  %l430 = alloca %"compiler/check:reflVal"
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s36 = alloca %olang.scope
  %rv = alloca %"compiler/check:reflVal"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l34, !tbaa !29
  store i1 false, ptr %l35, !tbaa !21
  %t2 = load ptr, ptr %l34, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l34, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 1
  store i1 %t8, ptr %l35, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l35, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32 }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l2
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32 }, ptr %t18, i32 0, i32 1
  %t20 = load i32, ptr %t19, !range !{i32 0, i32 114}
  store i32 %t20, ptr %l3
  br label %bb5
bb4:
  br label %bb31
bb5:
  %t22 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t24 = trunc i64 6 to i32
  %t25 = icmp eq i32 %t22, %t24
  br i1 %t25, label %bb6, label %bb7
bb6:
  store %olang.scope zeroinitializer, ptr %s2
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load %"compiler/source:Span", ptr %l2
  %t31 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t27, %"compiler/source:Span" %t28)
  store { i64, ptr } %t31, ptr %l46
  br label %bb8
bb7:
  br label %bb11
bb8:
  %t32 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t33 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t32, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d15, i32 0, i32 1) })
  store i1 %t33, ptr %l47
  br label %bb9
bb9:
  %t34 = load i1, ptr %l47, !tbaa !21
  %t35 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2ervBool(ptr %v2, i1 %t34)
  store %"compiler/check:reflVal" %t35, ptr %l48
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s2)
  %t36 = load %"compiler/check:reflVal", ptr %l48
  store %"compiler/check:reflVal" %t36, ptr %rv
  br label %ret
bb11:
  %t37 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t39 = trunc i64 5 to i32
  %t40 = icmp eq i32 %t37, %t39
  br i1 %t40, label %bb12, label %bb13
bb12:
  store %olang.scope zeroinitializer, ptr %s3
  %t42 = ptrtoint ptr %v2 to i64
  store i64 %t42, ptr %l51, !tbaa !24
  %t43 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3areflVal_2e3
  br i1 %t43, label %bb14, label %bb15
bb13:
  br label %bb18
bb14:
  %t45 = call ptr @__olang_region_make(ptr %v2)
  %t46 = ptrtoint ptr %t45 to i64
  store i64 %t46, ptr %l51, !tbaa !24
  br label %bb15
bb15:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load %"compiler/source:Span", ptr %l2
  %t51 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estrBytes(ptr %v0, ptr %s3, ptr %t47, %"compiler/source:Span" %t48)
  store { i64, ptr } %t51, ptr %l55
  br label %bb16
bb16:
  %t52 = load { i64, ptr }, ptr %l55, !tbaa !27
  store { i64, ptr } %t52, ptr %l56, !tbaa !27
  %t53 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t54 = extractvalue { i64, ptr } %t53, 0
  store i64 %t54, ptr %l57, !tbaa !24
  %t55 = load i64, ptr %l57, !tbaa !24
  %t56 = mul i64 %t55, 1
  %t57 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t56)
  %t58 = insertvalue { i64, ptr } undef, i64 %t55, 0
  %t59 = insertvalue { i64, ptr } %t58, ptr %t57, 1
  store { i64, ptr } %t59, ptr %l58, !tbaa !27
  %t60 = getelementptr { i64, ptr }, ptr %l58, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !27
  %t62 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !27
  %t64 = load i64, ptr %l57, !tbaa !24
  %t65 = mul i64 %t64, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t61, ptr %t63, i64 %t65, i1 false)
  %t66 = load { i64, ptr }, ptr %l58, !tbaa !27
  %t68 = load i64, ptr %l51
  %t69 = inttoptr i64 %t68 to ptr
  %t70 = extractvalue { i64, ptr } %t66, 0
  %t71 = extractvalue { i64, ptr } %t66, 1
  %t72 = mul i64 %t70, 1
  %t73 = call ptr @__olang_scope_alloc(ptr %t69, i64 %t72)
  call void @llvm.memcpy.p0.p0.i64(ptr %t73, ptr %t71, i64 %t72, i1 false)
  %t74 = insertvalue { i64, ptr } undef, i64 %t70, 0
  %t75 = insertvalue { i64, ptr } %t74, ptr %t73, 1
  %t77 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2ervText(ptr %v2, ptr %v2, { i64, ptr } %t75)
  store %"compiler/check:reflVal" %t77, ptr %l61
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s3)
  %t78 = load %"compiler/check:reflVal", ptr %l61
  store %"compiler/check:reflVal" %t78, ptr %rv
  br label %ret
bb18:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load ptr, ptr %l1, !tbaa !29
  %t84 = call %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v1, ptr %t79, ptr %t80)
  store %"compiler/check:litv" %t84, ptr %l65
  br label %bb19
bb19:
  %t85 = load %"compiler/check:litv", ptr %l65
  store %"compiler/check:litv" %t85, ptr %l4
  %t86 = getelementptr %"compiler/check:litv", ptr %l4, i32 0, i32 0
  %t87 = load i1, ptr %t86, !tbaa !21
  br i1 %t87, label %bb20, label %bb21
bb20:
  %t89 = getelementptr %"compiler/check:litv", ptr %l4, i32 0, i32 1
  %t90 = load i1, ptr %t89, !tbaa !21
  %t92 = xor i1 %t90, true
  store i1 %t92, ptr %l67, !tbaa !21
  br label %bb22
bb21:
  store i1 false, ptr %l67, !tbaa !21
  br label %bb22
bb22:
  %t94 = load i1, ptr %l67, !tbaa !21
  br i1 %t94, label %bb23, label %bb24
bb23:
  %t95 = getelementptr %"compiler/check:litv", ptr %l4, i32 0, i32 2
  %t96 = load i1, ptr %t95, !tbaa !21
  %t98 = xor i1 %t96, true
  store i1 %t98, ptr %l70, !tbaa !21
  br label %bb25
bb24:
  store i1 false, ptr %l70, !tbaa !21
  br label %bb25
bb25:
  %t100 = load i1, ptr %l70, !tbaa !21
  br i1 %t100, label %bb26, label %bb27
bb26:
  %t101 = getelementptr %"compiler/check:litv", ptr %l4, i32 0, i32 3
  %t102 = load i64, ptr %t101, !tbaa !24
  %t104 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2ervInt(ptr %v2, i64 %t102)
  store %"compiler/check:reflVal" %t104, ptr %l74
  br label %bb28
bb27:
  br label %bb29
bb28:
  %t105 = load %"compiler/check:reflVal", ptr %l74
  store %"compiler/check:reflVal" %t105, ptr %rv
  br label %ret
bb29:
  %t106 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2enoRefl(ptr %v2)
  store %"compiler/check:reflVal" %t106, ptr %l75
  br label %bb30
bb30:
  %t107 = load %"compiler/check:reflVal", ptr %l75
  store %"compiler/check:reflVal" %t107, ptr %rv
  br label %ret
bb31:
  %t108 = load ptr, ptr %l1, !tbaa !29
  store ptr %t108, ptr %l76, !tbaa !29
  store i1 false, ptr %l77, !tbaa !21
  %t109 = load ptr, ptr %l76, !tbaa !29
  %t110 = icmp ne ptr %t109, null
  br i1 %t110, label %bb32, label %bb33
bb32:
  %t112 = load ptr, ptr %l76, !tbaa !29
  %t113 = load i64, ptr %t112, !range !{i64 0, i64 30}
  %t115 = icmp eq i64 %t113, 2
  store i1 %t115, ptr %l77, !tbaa !21
  br label %bb33
bb33:
  %t116 = load i1, ptr %l77, !tbaa !21
  br i1 %t116, label %bb34, label %bb35
bb34:
  %t117 = load ptr, ptr %l1, !tbaa !29
  %t119 = getelementptr { i64, [4 x i64] }, ptr %t117, i32 0, i32 1
  %t120 = getelementptr { %"compiler/source:Span", ptr }, ptr %t119, i32 0, i32 1
  %t121 = load ptr, ptr %t120
  store ptr %t121, ptr %l5, !tbaa !29
  br label %bb36
bb35:
  br label %bb38
bb36:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t124 = load ptr, ptr %l5, !tbaa !29
  %t127 = call %"compiler/check:reflVal" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflFold(ptr %v0, ptr %v1, ptr %v2, ptr %t123, ptr %t124)
  store %"compiler/check:reflVal" %t127, ptr %l84
  br label %bb37
bb37:
  %t128 = load %"compiler/check:reflVal", ptr %l84
  store %"compiler/check:reflVal" %t128, ptr %rv
  br label %ret
bb38:
  %t129 = load ptr, ptr %l1, !tbaa !29
  store ptr %t129, ptr %l85, !tbaa !29
  store i1 false, ptr %l86, !tbaa !21
  %t130 = load ptr, ptr %l85, !tbaa !29
  %t131 = icmp ne ptr %t130, null
  br i1 %t131, label %bb39, label %bb40
bb39:
  %t133 = load ptr, ptr %l85, !tbaa !29
  %t134 = load i64, ptr %t133, !range !{i64 0, i64 30}
  %t136 = icmp eq i64 %t134, 0
  store i1 %t136, ptr %l86, !tbaa !21
  br label %bb40
bb40:
  %t137 = load i1, ptr %l86, !tbaa !21
  br i1 %t137, label %bb41, label %bb42
bb41:
  %t138 = load ptr, ptr %l1, !tbaa !29
  %t140 = getelementptr { i64, [4 x i64] }, ptr %t138, i32 0, i32 1
  %t141 = getelementptr { %"compiler/source:Span", i32 }, ptr %t140, i32 0, i32 0
  %t142 = load %"compiler/source:Span", ptr %t141
  store %"compiler/source:Span" %t142, ptr %l6
  %t144 = load ptr, ptr %l1, !tbaa !29
  %t146 = getelementptr { i64, [4 x i64] }, ptr %t144, i32 0, i32 1
  %t147 = getelementptr { %"compiler/source:Span", i32 }, ptr %t146, i32 0, i32 1
  %t148 = load i32, ptr %t147
  store i32 %t148, ptr %l7, !tbaa !23
  br label %bb43
bb42:
  br label %bb75
bb43:
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t152 = getelementptr %"compiler/check:Checker", ptr %t150, i32 0, i32 1
  %t153 = load ptr, ptr %t152, !tbaa !29
  %t155 = getelementptr %"compiler/generic:Program", ptr %t153, i32 0, i32 1
  %t156 = load ptr, ptr %t155, !tbaa !29
  store ptr %t156, ptr %l95, !tbaa !29
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t159 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t157)
  store ptr %t159, ptr %l97
  br label %bb44
bb44:
  %t160 = load ptr, ptr %l97, !tbaa !29
  %t162 = getelementptr %"compiler/check:frame", ptr %t160, i32 0, i32 2
  %t163 = load i64, ptr %t162, !tbaa !24
  %t164 = getelementptr %"compiler/source:Span", ptr %l6, i32 0, i32 0
  %t165 = load i32, ptr %t164, !tbaa !23
  %t166 = load ptr, ptr %l95, !tbaa !29
  %t169 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t166, i64 %t163, i32 %t165)
  store %"compiler/names:Ref" %t169, ptr %l101
  br label %bb45
bb45:
  %t170 = getelementptr %"compiler/names:Ref", ptr %l101, i32 0, i32 0
  %t171 = load i32, ptr %t170, !range !{i32 0, i32 9}
  %t173 = trunc i64 1 to i32
  %t174 = icmp eq i32 %t171, %t173
  %t176 = xor i1 %t174, true
  br i1 %t176, label %bb46, label %bb47
bb46:
  store i1 true, ptr %l105, !tbaa !21
  br label %bb49
bb47:
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t179 = load i32, ptr %l7, !tbaa !23
  %t182 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalNamed(ptr %v0, ptr %t178, i32 %t179)
  store i64 %t182, ptr %l108
  br label %bb48
bb48:
  %t183 = load i64, ptr %l108, !tbaa !24
  %t184 = icmp sge i64 %t183, 0
  store i1 %t184, ptr %l105, !tbaa !21
  br label %bb49
bb49:
  %t186 = load i1, ptr %l105, !tbaa !21
  br i1 %t186, label %bb50, label %bb51
bb50:
  %t187 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2enoRefl(ptr %v2)
  store %"compiler/check:reflVal" %t187, ptr %l110
  br label %bb52
bb51:
  br label %bb53
bb52:
  %t188 = load %"compiler/check:reflVal", ptr %l110
  store %"compiler/check:reflVal" %t188, ptr %rv
  br label %ret
bb53:
  %t189 = load ptr, ptr %l0, !tbaa !29
  %t191 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t189)
  store ptr %t191, ptr %l113
  br label %bb54
bb54:
  %t192 = load ptr, ptr %l113, !tbaa !29
  %t194 = getelementptr %"compiler/check:frame", ptr %t192, i32 0, i32 4
  %t195 = getelementptr %"compiler/generic:Context", ptr %t194, i32 0, i32 3
  %t196 = load i32, ptr %l7, !tbaa !23
  %t199 = call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Hfd0413fe7fd4e5914f6cad5b418b7a6d(ptr %v0, ptr %t195, i32 %t196)
  %t200 = extractvalue { i32, i32 } %t199, 1
  %t201 = extractvalue { i32, i32 } %t199, 0
  store i32 %t201, ptr %l118
  %t202 = icmp ne i32 %t201, 0
  br i1 %t202, label %bb56, label %ok.203, !prof !99
ok.203:
  store i32 %t200, ptr %l117
  br label %bb55
bb55:
  %t204 = load i32, ptr %l117, !tbaa !23
  store i32 %t204, ptr %l111, !tbaa !23
  br label %bb58
bb56:
  br label %bb57
bb57:
  store i32 -1, ptr %l111, !tbaa !23
  br label %bb58
bb58:
  %t205 = load i32, ptr %l111, !tbaa !23
  store i32 %t205, ptr %l8, !tbaa !23
  %t206 = load i32, ptr %l8, !tbaa !23
  %t208 = icmp slt i32 %t206, 0
  br i1 %t208, label %bb59, label %bb60
bb59:
  store i1 true, ptr %l121, !tbaa !21
  br label %bb62
bb60:
  %t210 = load ptr, ptr %l0, !tbaa !29
  %t212 = getelementptr %"compiler/check:Checker", ptr %t210, i32 0, i32 1
  %t213 = load ptr, ptr %t212, !tbaa !29
  %t215 = getelementptr %"compiler/generic:Program", ptr %t213, i32 0, i32 2
  %t216 = load i32, ptr %l8, !tbaa !23
  %t219 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t215, i32 %t216)
  store i32 %t219, ptr %l126
  br label %bb61
bb61:
  %t220 = load i32, ptr %l126, !range !{i32 0, i32 33}
  %t222 = trunc i64 26 to i32
  %t223 = icmp eq i32 %t220, %t222
  %t225 = xor i1 %t223, true
  store i1 %t225, ptr %l121, !tbaa !21
  br label %bb62
bb62:
  %t227 = load i1, ptr %l121, !tbaa !21
  br i1 %t227, label %bb63, label %bb64
bb63:
  %t228 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2enoRefl(ptr %v2)
  store %"compiler/check:reflVal" %t228, ptr %l130
  br label %bb65
bb64:
  br label %bb66
bb65:
  %t229 = load %"compiler/check:reflVal", ptr %l130
  store %"compiler/check:reflVal" %t229, ptr %rv
  br label %ret
bb66:
  %t230 = load ptr, ptr %l0, !tbaa !29
  %t232 = getelementptr %"compiler/check:Checker", ptr %t230, i32 0, i32 148
  store i1 true, ptr %t232, !tbaa !21
  %t233 = load ptr, ptr %l0, !tbaa !29
  %t235 = getelementptr %"compiler/check:Checker", ptr %t233, i32 0, i32 1
  %t236 = load ptr, ptr %t235, !tbaa !29
  %t238 = getelementptr %"compiler/generic:Program", ptr %t236, i32 0, i32 2
  %t239 = load i32, ptr %l8, !tbaa !23
  %t242 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstType(ptr %v0, ptr %t238, i32 %t239)
  store i32 %t242, ptr %l136
  br label %bb67
bb67:
  %t243 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t244 = load i32, ptr %l136, !tbaa !23
  %t246 = icmp eq i32 %t244, %t243
  br i1 %t246, label %bb68, label %bb69
bb68:
  %t248 = load ptr, ptr %l0, !tbaa !29
  %t250 = getelementptr %"compiler/check:Checker", ptr %t248, i32 0, i32 1
  %t251 = load ptr, ptr %t250, !tbaa !29
  %t253 = getelementptr %"compiler/generic:Program", ptr %t251, i32 0, i32 2
  %t254 = load i32, ptr %l8, !tbaa !23
  %t257 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %t253, i32 %t254)
  store i64 %t257, ptr %l143
  br label %bb70
bb69:
  br label %bb72
bb70:
  %t258 = load i64, ptr %l143, !tbaa !24
  %t259 = icmp ne i64 %t258, 0
  %t261 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2ervBool(ptr %v2, i1 %t259)
  store %"compiler/check:reflVal" %t261, ptr %l145
  br label %bb71
bb71:
  %t262 = load %"compiler/check:reflVal", ptr %l145
  store %"compiler/check:reflVal" %t262, ptr %rv
  br label %ret
bb72:
  %t263 = load ptr, ptr %l0, !tbaa !29
  %t265 = getelementptr %"compiler/check:Checker", ptr %t263, i32 0, i32 1
  %t266 = load ptr, ptr %t265, !tbaa !29
  %t268 = getelementptr %"compiler/generic:Program", ptr %t266, i32 0, i32 2
  %t269 = load i32, ptr %l8, !tbaa !23
  %t272 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %t268, i32 %t269)
  store i64 %t272, ptr %l150
  br label %bb73
bb73:
  %t273 = load i64, ptr %l150, !tbaa !24
  %t274 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2ervInt(ptr %v2, i64 %t273)
  store %"compiler/check:reflVal" %t274, ptr %l151
  br label %bb74
bb74:
  %t275 = load %"compiler/check:reflVal", ptr %l151
  store %"compiler/check:reflVal" %t275, ptr %rv
  br label %ret
bb75:
  %t276 = load ptr, ptr %l1, !tbaa !29
  store ptr %t276, ptr %l152, !tbaa !29
  store i1 false, ptr %l153, !tbaa !21
  %t277 = load ptr, ptr %l152, !tbaa !29
  %t278 = icmp ne ptr %t277, null
  br i1 %t278, label %bb76, label %bb77
bb76:
  %t280 = load ptr, ptr %l152, !tbaa !29
  %t281 = load i64, ptr %t280, !range !{i64 0, i64 30}
  %t283 = icmp eq i64 %t281, 3
  store i1 %t283, ptr %l153, !tbaa !21
  br label %bb77
bb77:
  %t284 = load i1, ptr %l153, !tbaa !21
  br i1 %t284, label %bb78, label %bb79
bb78:
  %t285 = load ptr, ptr %l1, !tbaa !29
  %t287 = getelementptr { i64, [4 x i64] }, ptr %t285, i32 0, i32 1
  %t288 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t287, i32 0, i32 1
  %t289 = load i32, ptr %t288, !range !{i32 0, i32 114}
  store i32 %t289, ptr %l9
  %t291 = load ptr, ptr %l1, !tbaa !29
  %t293 = getelementptr { i64, [4 x i64] }, ptr %t291, i32 0, i32 1
  %t294 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t293, i32 0, i32 2
  %t295 = load ptr, ptr %t294
  store ptr %t295, ptr %l10, !tbaa !29
  br label %bb80
bb79:
  br label %bb100
bb80:
  %t297 = load ptr, ptr %l0, !tbaa !29
  %t298 = load ptr, ptr %l10, !tbaa !29
  %t301 = call %"compiler/check:reflVal" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflFold(ptr %v0, ptr %v1, ptr %v2, ptr %t297, ptr %t298)
  store %"compiler/check:reflVal" %t301, ptr %l162
  br label %bb81
bb81:
  %t302 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store ptr %t302, ptr %lp11
  %t303 = load %"compiler/check:reflVal", ptr %l162
  %t304 = load ptr, ptr %lp11
  store %"compiler/check:reflVal" %t303, ptr %t304
  %t305 = load ptr, ptr %lp11
  %t306 = getelementptr %"compiler/check:reflVal", ptr %t305, i32 0, i32 0
  %t307 = load i1, ptr %t306, !tbaa !21
  %t309 = xor i1 %t307, true
  br i1 %t309, label %bb82, label %bb83
bb82:
  %t311 = load ptr, ptr %lp11
  %t312 = load %"compiler/check:reflVal", ptr %t311
  store %"compiler/check:reflVal" %t312, ptr %rv
  br label %ret
bb83:
  br label %bb84
bb84:
  %t314 = load i32, ptr %l9, !range !{i32 0, i32 114}
  %t316 = trunc i64 48 to i32
  %t317 = icmp eq i32 %t314, %t316
  br i1 %t317, label %bb85, label %bb86
bb85:
  %t319 = load ptr, ptr %lp11
  %t320 = getelementptr %"compiler/check:reflVal", ptr %t319, i32 0, i32 1
  %t321 = load i64, ptr %t320, !tbaa !24
  %t322 = load i64, ptr @G_2ecompiler_2fcheck_2eRvBool, !tbaa !24
  %t325 = icmp eq i64 %t321, %t322
  store i1 %t325, ptr %l168, !tbaa !21
  br label %bb87
bb86:
  store i1 false, ptr %l168, !tbaa !21
  br label %bb87
bb87:
  %t327 = load i1, ptr %l168, !tbaa !21
  br i1 %t327, label %bb88, label %bb89
bb88:
  %t328 = load ptr, ptr %lp11
  %t329 = getelementptr %"compiler/check:reflVal", ptr %t328, i32 0, i32 2
  %t330 = load i64, ptr %t329, !tbaa !24
  %t332 = icmp eq i64 %t330, 0
  %t334 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2ervBool(ptr %v2, i1 %t332)
  store %"compiler/check:reflVal" %t334, ptr %l174
  br label %bb90
bb89:
  br label %bb91
bb90:
  %t335 = load %"compiler/check:reflVal", ptr %l174
  store %"compiler/check:reflVal" %t335, ptr %rv
  br label %ret
bb91:
  %t336 = load i32, ptr %l9, !range !{i32 0, i32 114}
  %t338 = trunc i64 69 to i32
  %t339 = icmp eq i32 %t336, %t338
  br i1 %t339, label %bb92, label %bb93
bb92:
  %t341 = load ptr, ptr %lp11
  %t342 = getelementptr %"compiler/check:reflVal", ptr %t341, i32 0, i32 1
  %t343 = load i64, ptr %t342, !tbaa !24
  %t344 = load i64, ptr @G_2ecompiler_2fcheck_2eRvInt, !tbaa !24
  %t347 = icmp eq i64 %t343, %t344
  store i1 %t347, ptr %l177, !tbaa !21
  br label %bb94
bb93:
  store i1 false, ptr %l177, !tbaa !21
  br label %bb94
bb94:
  %t349 = load i1, ptr %l177, !tbaa !21
  br i1 %t349, label %bb95, label %bb96
bb95:
  %t350 = load ptr, ptr %lp11
  %t351 = getelementptr %"compiler/check:reflVal", ptr %t350, i32 0, i32 2
  %t352 = load i64, ptr %t351, !tbaa !24
  %t354 = sub i64 0, %t352
  %t356 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2ervInt(ptr %v2, i64 %t354)
  store %"compiler/check:reflVal" %t356, ptr %l183
  br label %bb97
bb96:
  br label %bb98
bb97:
  %t357 = load %"compiler/check:reflVal", ptr %l183
  store %"compiler/check:reflVal" %t357, ptr %rv
  br label %ret
bb98:
  %t358 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2enoRefl(ptr %v2)
  store %"compiler/check:reflVal" %t358, ptr %l184
  br label %bb99
bb99:
  %t359 = load %"compiler/check:reflVal", ptr %l184
  store %"compiler/check:reflVal" %t359, ptr %rv
  br label %ret
bb100:
  %t360 = load ptr, ptr %l1, !tbaa !29
  store ptr %t360, ptr %l185, !tbaa !29
  store i1 false, ptr %l186, !tbaa !21
  %t361 = load ptr, ptr %l185, !tbaa !29
  %t362 = icmp ne ptr %t361, null
  br i1 %t362, label %bb101, label %bb102
bb101:
  %t364 = load ptr, ptr %l185, !tbaa !29
  %t365 = load i64, ptr %t364, !range !{i64 0, i64 30}
  %t367 = icmp eq i64 %t365, 5
  store i1 %t367, ptr %l186, !tbaa !21
  br label %bb102
bb102:
  %t368 = load i1, ptr %l186, !tbaa !21
  br i1 %t368, label %bb103, label %bb104
bb103:
  %t369 = load ptr, ptr %l1, !tbaa !29
  %t371 = getelementptr { i64, [4 x i64] }, ptr %t369, i32 0, i32 1
  %t372 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t371, i32 0, i32 1
  %t373 = load i32, ptr %t372, !range !{i32 0, i32 114}
  store i32 %t373, ptr %l12
  %t375 = load ptr, ptr %l1, !tbaa !29
  %t377 = getelementptr { i64, [4 x i64] }, ptr %t375, i32 0, i32 1
  %t378 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t377, i32 0, i32 2
  %t379 = load ptr, ptr %t378
  store ptr %t379, ptr %l13, !tbaa !29
  %t381 = load ptr, ptr %l1, !tbaa !29
  %t383 = getelementptr { i64, [4 x i64] }, ptr %t381, i32 0, i32 1
  %t384 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t383, i32 0, i32 3
  %t385 = load ptr, ptr %t384
  store ptr %t385, ptr %l14, !tbaa !29
  br label %bb105
bb104:
  br label %bb214
bb105:
  %t387 = load ptr, ptr %l0, !tbaa !29
  %t388 = load ptr, ptr %l13, !tbaa !29
  %t391 = call %"compiler/check:reflVal" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflFold(ptr %v0, ptr %v1, ptr %v2, ptr %t387, ptr %t388)
  store %"compiler/check:reflVal" %t391, ptr %l197
  br label %bb106
bb106:
  %t392 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store ptr %t392, ptr %lp15
  %t393 = load %"compiler/check:reflVal", ptr %l197
  %t394 = load ptr, ptr %lp15
  store %"compiler/check:reflVal" %t393, ptr %t394
  %t395 = load i32, ptr %l12, !range !{i32 0, i32 114}
  %t397 = trunc i64 45 to i32
  %t398 = icmp eq i32 %t395, %t397
  br i1 %t398, label %bb107, label %bb108
bb107:
  %t400 = load ptr, ptr %lp15
  %t401 = getelementptr %"compiler/check:reflVal", ptr %t400, i32 0, i32 0
  %t402 = load i1, ptr %t401, !tbaa !21
  store i1 %t402, ptr %l200, !tbaa !21
  br label %bb109
bb108:
  store i1 false, ptr %l200, !tbaa !21
  br label %bb109
bb109:
  %t404 = load i1, ptr %l200, !tbaa !21
  br i1 %t404, label %bb110, label %bb111
bb110:
  %t405 = load ptr, ptr %lp15
  %t406 = getelementptr %"compiler/check:reflVal", ptr %t405, i32 0, i32 1
  %t407 = load i64, ptr %t406, !tbaa !24
  %t408 = load i64, ptr @G_2ecompiler_2fcheck_2eRvBool, !tbaa !24
  %t411 = icmp eq i64 %t407, %t408
  store i1 %t411, ptr %l202, !tbaa !21
  br label %bb112
bb111:
  store i1 false, ptr %l202, !tbaa !21
  br label %bb112
bb112:
  %t413 = load i1, ptr %l202, !tbaa !21
  br i1 %t413, label %bb113, label %bb114
bb113:
  %t414 = load ptr, ptr %lp15
  %t415 = getelementptr %"compiler/check:reflVal", ptr %t414, i32 0, i32 2
  %t416 = load i64, ptr %t415, !tbaa !24
  %t418 = icmp eq i64 %t416, 0
  store i1 %t418, ptr %l206, !tbaa !21
  br label %bb115
bb114:
  store i1 false, ptr %l206, !tbaa !21
  br label %bb115
bb115:
  %t420 = load i1, ptr %l206, !tbaa !21
  br i1 %t420, label %bb116, label %bb117
bb116:
  %t421 = load ptr, ptr %lp15
  %t422 = load %"compiler/check:reflVal", ptr %t421
  store %"compiler/check:reflVal" %t422, ptr %rv
  br label %ret
bb117:
  br label %bb118
bb118:
  %t424 = load i32, ptr %l12, !range !{i32 0, i32 114}
  %t426 = trunc i64 46 to i32
  %t427 = icmp eq i32 %t424, %t426
  br i1 %t427, label %bb119, label %bb120
bb119:
  %t429 = load ptr, ptr %lp15
  %t430 = getelementptr %"compiler/check:reflVal", ptr %t429, i32 0, i32 0
  %t431 = load i1, ptr %t430, !tbaa !21
  store i1 %t431, ptr %l212, !tbaa !21
  br label %bb121
bb120:
  store i1 false, ptr %l212, !tbaa !21
  br label %bb121
bb121:
  %t433 = load i1, ptr %l212, !tbaa !21
  br i1 %t433, label %bb122, label %bb123
bb122:
  %t434 = load ptr, ptr %lp15
  %t435 = getelementptr %"compiler/check:reflVal", ptr %t434, i32 0, i32 1
  %t436 = load i64, ptr %t435, !tbaa !24
  %t437 = load i64, ptr @G_2ecompiler_2fcheck_2eRvBool, !tbaa !24
  %t440 = icmp eq i64 %t436, %t437
  store i1 %t440, ptr %l214, !tbaa !21
  br label %bb124
bb123:
  store i1 false, ptr %l214, !tbaa !21
  br label %bb124
bb124:
  %t442 = load i1, ptr %l214, !tbaa !21
  br i1 %t442, label %bb125, label %bb126
bb125:
  %t443 = load ptr, ptr %lp15
  %t444 = getelementptr %"compiler/check:reflVal", ptr %t443, i32 0, i32 2
  %t445 = load i64, ptr %t444, !tbaa !24
  %t447 = icmp eq i64 %t445, 1
  store i1 %t447, ptr %l218, !tbaa !21
  br label %bb127
bb126:
  store i1 false, ptr %l218, !tbaa !21
  br label %bb127
bb127:
  %t449 = load i1, ptr %l218, !tbaa !21
  br i1 %t449, label %bb128, label %bb129
bb128:
  %t450 = load ptr, ptr %lp15
  %t451 = load %"compiler/check:reflVal", ptr %t450
  store %"compiler/check:reflVal" %t451, ptr %rv
  br label %ret
bb129:
  br label %bb130
bb130:
  %t453 = load ptr, ptr %l0, !tbaa !29
  %t454 = load ptr, ptr %l14, !tbaa !29
  %t457 = call %"compiler/check:reflVal" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflFold(ptr %v0, ptr %v1, ptr %v2, ptr %t453, ptr %t454)
  store %"compiler/check:reflVal" %t457, ptr %l224
  br label %bb131
bb131:
  %t458 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store ptr %t458, ptr %lp16
  %t459 = load %"compiler/check:reflVal", ptr %l224
  %t460 = load ptr, ptr %lp16
  store %"compiler/check:reflVal" %t459, ptr %t460
  %t461 = load ptr, ptr %lp15
  %t462 = getelementptr %"compiler/check:reflVal", ptr %t461, i32 0, i32 0
  %t463 = load i1, ptr %t462, !tbaa !21
  %t465 = xor i1 %t463, true
  br i1 %t465, label %bb132, label %bb133
bb132:
  store i1 true, ptr %l227, !tbaa !21
  br label %bb134
bb133:
  %t467 = load ptr, ptr %lp16
  %t468 = getelementptr %"compiler/check:reflVal", ptr %t467, i32 0, i32 0
  %t469 = load i1, ptr %t468, !tbaa !21
  %t471 = xor i1 %t469, true
  store i1 %t471, ptr %l227, !tbaa !21
  br label %bb134
bb134:
  %t473 = load i1, ptr %l227, !tbaa !21
  br i1 %t473, label %bb135, label %bb136
bb135:
  store i1 true, ptr %l230, !tbaa !21
  br label %bb137
bb136:
  %t474 = load ptr, ptr %lp15
  %t475 = getelementptr %"compiler/check:reflVal", ptr %t474, i32 0, i32 1
  %t476 = load i64, ptr %t475, !tbaa !24
  %t477 = load ptr, ptr %lp16
  %t478 = getelementptr %"compiler/check:reflVal", ptr %t477, i32 0, i32 1
  %t479 = load i64, ptr %t478, !tbaa !24
  %t482 = icmp ne i64 %t476, %t479
  store i1 %t482, ptr %l230, !tbaa !21
  br label %bb137
bb137:
  %t484 = load i1, ptr %l230, !tbaa !21
  br i1 %t484, label %bb138, label %bb139
bb138:
  %t485 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2enoRefl(ptr %v2)
  store %"compiler/check:reflVal" %t485, ptr %l234
  br label %bb140
bb139:
  br label %bb141
bb140:
  %t486 = load %"compiler/check:reflVal", ptr %l234
  store %"compiler/check:reflVal" %t486, ptr %rv
  br label %ret
bb141:
  %t487 = load i32, ptr %l12, !range !{i32 0, i32 114}
  %t489 = trunc i64 45 to i32
  %t490 = icmp eq i32 %t487, %t489
  br i1 %t490, label %bb142, label %bb143
bb142:
  store i1 true, ptr %l237, !tbaa !21
  br label %bb144
bb143:
  %t492 = load i32, ptr %l12, !range !{i32 0, i32 114}
  %t494 = trunc i64 46 to i32
  %t495 = icmp eq i32 %t492, %t494
  store i1 %t495, ptr %l237, !tbaa !21
  br label %bb144
bb144:
  %t497 = load i1, ptr %l237, !tbaa !21
  br i1 %t497, label %bb145, label %bb146
bb145:
  %t498 = load ptr, ptr %lp15
  %t499 = getelementptr %"compiler/check:reflVal", ptr %t498, i32 0, i32 1
  %t500 = load i64, ptr %t499, !tbaa !24
  %t501 = load i64, ptr @G_2ecompiler_2fcheck_2eRvBool, !tbaa !24
  %t504 = icmp eq i64 %t500, %t501
  br i1 %t504, label %bb147, label %bb148
bb146:
  br label %bb151
bb147:
  %t506 = load ptr, ptr %lp16
  %t507 = load %"compiler/check:reflVal", ptr %t506
  store %"compiler/check:reflVal" %t507, ptr %l243
  br label %bb150
bb148:
  %t509 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2enoRefl(ptr %v2)
  store %"compiler/check:reflVal" %t509, ptr %l245
  br label %bb149
bb149:
  %t510 = load %"compiler/check:reflVal", ptr %l245
  store %"compiler/check:reflVal" %t510, ptr %l243
  br label %bb150
bb150:
  %t511 = load %"compiler/check:reflVal", ptr %l243
  store %"compiler/check:reflVal" %t511, ptr %rv
  br label %ret
bb151:
  %t512 = load i32, ptr %l12, !range !{i32 0, i32 114}
  %t514 = trunc i64 94 to i32
  %t515 = icmp eq i32 %t512, %t514
  br i1 %t515, label %bb152, label %bb153
bb152:
  store i1 true, ptr %l248, !tbaa !21
  br label %bb154
bb153:
  %t517 = load i32, ptr %l12, !range !{i32 0, i32 114}
  %t519 = trunc i64 95 to i32
  %t520 = icmp eq i32 %t517, %t519
  store i1 %t520, ptr %l248, !tbaa !21
  br label %bb154
bb154:
  %t522 = load i1, ptr %l248, !tbaa !21
  br i1 %t522, label %bb155, label %bb156
bb155:
  %t523 = load ptr, ptr %lp15
  %t524 = getelementptr %"compiler/check:reflVal", ptr %t523, i32 0, i32 2
  %t525 = load i64, ptr %t524, !tbaa !24
  %t526 = load ptr, ptr %lp16
  %t527 = getelementptr %"compiler/check:reflVal", ptr %t526, i32 0, i32 2
  %t528 = load i64, ptr %t527, !tbaa !24
  %t531 = icmp eq i64 %t525, %t528
  store i1 %t531, ptr %l17, !tbaa !21
  %t533 = load ptr, ptr %lp15
  %t534 = getelementptr %"compiler/check:reflVal", ptr %t533, i32 0, i32 1
  %t535 = load i64, ptr %t534, !tbaa !24
  %t536 = load i64, ptr @G_2ecompiler_2fcheck_2eRvText, !tbaa !24
  %t539 = icmp eq i64 %t535, %t536
  br i1 %t539, label %bb157, label %bb158
bb156:
  br label %bb168
bb157:
  %t541 = load ptr, ptr %lp15
  %t542 = getelementptr %"compiler/check:reflVal", ptr %t541, i32 0, i32 3
  %t543 = load { i64, ptr }, ptr %t542, !tbaa !27
  %t544 = load ptr, ptr %lp16
  %t545 = getelementptr %"compiler/check:reflVal", ptr %t544, i32 0, i32 3
  %t546 = load { i64, ptr }, ptr %t545, !tbaa !27
  %t549 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %v2, { i64, ptr } %t543, { i64, ptr } %t546)
  store i1 %t549, ptr %l259
  br label %bb159
bb158:
  br label %bb160
bb159:
  %t550 = load i1, ptr %l259, !tbaa !21
  store i1 %t550, ptr %l17, !tbaa !21
  br label %bb160
bb160:
  %t551 = load ptr, ptr %lp15
  %t552 = getelementptr %"compiler/check:reflVal", ptr %t551, i32 0, i32 1
  %t553 = load i64, ptr %t552, !tbaa !24
  %t554 = load i64, ptr @G_2ecompiler_2fcheck_2eRvCase, !tbaa !24
  %t557 = icmp eq i64 %t553, %t554
  br i1 %t557, label %bb161, label %bb162
bb161:
  %t559 = load i1, ptr %l17, !tbaa !21
  br i1 %t559, label %bb163, label %bb164
bb162:
  br label %bb166
bb163:
  %t561 = load ptr, ptr %lp15
  %t562 = getelementptr %"compiler/check:reflVal", ptr %t561, i32 0, i32 4
  %t563 = load i32, ptr %t562, !tbaa !23
  %t564 = load ptr, ptr %lp16
  %t565 = getelementptr %"compiler/check:reflVal", ptr %t564, i32 0, i32 4
  %t566 = load i32, ptr %t565, !tbaa !23
  %t569 = icmp eq i32 %t563, %t566
  store i1 %t569, ptr %l264, !tbaa !21
  br label %bb165
bb164:
  store i1 false, ptr %l264, !tbaa !21
  br label %bb165
bb165:
  %t571 = load i1, ptr %l264, !tbaa !21
  store i1 %t571, ptr %l17, !tbaa !21
  br label %bb166
bb166:
  %t572 = load i1, ptr %l17, !tbaa !21
  %t573 = load i32, ptr %l12, !range !{i32 0, i32 114}
  %t575 = trunc i64 94 to i32
  %t576 = icmp eq i32 %t573, %t575
  %t579 = icmp eq i1 %t572, %t576
  %t581 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2ervBool(ptr %v2, i1 %t579)
  store %"compiler/check:reflVal" %t581, ptr %l272
  br label %bb167
bb167:
  %t582 = load %"compiler/check:reflVal", ptr %l272
  store %"compiler/check:reflVal" %t582, ptr %rv
  br label %ret
bb168:
  %t583 = load ptr, ptr %lp15
  %t584 = getelementptr %"compiler/check:reflVal", ptr %t583, i32 0, i32 1
  %t585 = load i64, ptr %t584, !tbaa !24
  %t586 = load i64, ptr @G_2ecompiler_2fcheck_2eRvInt, !tbaa !24
  %t589 = icmp ne i64 %t585, %t586
  br i1 %t589, label %bb169, label %bb170
bb169:
  %t591 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2enoRefl(ptr %v2)
  store %"compiler/check:reflVal" %t591, ptr %l276
  br label %bb171
bb170:
  br label %bb172
bb171:
  %t592 = load %"compiler/check:reflVal", ptr %l276
  store %"compiler/check:reflVal" %t592, ptr %rv
  br label %ret
bb172:
  %t593 = load i32, ptr %l12, !range !{i32 0, i32 114}
  %t595 = trunc i64 97 to i32
  %t596 = icmp eq i32 %t593, %t595
  br i1 %t596, label %bb173, label %bb174
bb173:
  br label %bb175
bb174:
  br label %bb177
bb175:
  %t598 = load ptr, ptr %lp15
  %t599 = getelementptr %"compiler/check:reflVal", ptr %t598, i32 0, i32 2
  %t600 = load i64, ptr %t599, !tbaa !24
  %t601 = load ptr, ptr %lp16
  %t602 = getelementptr %"compiler/check:reflVal", ptr %t601, i32 0, i32 2
  %t603 = load i64, ptr %t602, !tbaa !24
  %t606 = icmp slt i64 %t600, %t603
  %t608 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2ervBool(ptr %v2, i1 %t606)
  store %"compiler/check:reflVal" %t608, ptr %l283
  br label %bb176
bb176:
  %t609 = load %"compiler/check:reflVal", ptr %l283
  store %"compiler/check:reflVal" %t609, ptr %l277
  br label %bb213
bb177:
  %t610 = load i32, ptr %l12, !range !{i32 0, i32 114}
  %t612 = trunc i64 98 to i32
  %t613 = icmp eq i32 %t610, %t612
  br i1 %t613, label %bb178, label %bb179
bb178:
  br label %bb180
bb179:
  br label %bb182
bb180:
  %t615 = load ptr, ptr %lp15
  %t616 = getelementptr %"compiler/check:reflVal", ptr %t615, i32 0, i32 2
  %t617 = load i64, ptr %t616, !tbaa !24
  %t618 = load ptr, ptr %lp16
  %t619 = getelementptr %"compiler/check:reflVal", ptr %t618, i32 0, i32 2
  %t620 = load i64, ptr %t619, !tbaa !24
  %t623 = icmp sle i64 %t617, %t620
  %t625 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2ervBool(ptr %v2, i1 %t623)
  store %"compiler/check:reflVal" %t625, ptr %l289
  br label %bb181
bb181:
  %t626 = load %"compiler/check:reflVal", ptr %l289
  store %"compiler/check:reflVal" %t626, ptr %l277
  br label %bb213
bb182:
  %t627 = load i32, ptr %l12, !range !{i32 0, i32 114}
  %t629 = trunc i64 99 to i32
  %t630 = icmp eq i32 %t627, %t629
  br i1 %t630, label %bb183, label %bb184
bb183:
  br label %bb185
bb184:
  br label %bb187
bb185:
  %t632 = load ptr, ptr %lp15
  %t633 = getelementptr %"compiler/check:reflVal", ptr %t632, i32 0, i32 2
  %t634 = load i64, ptr %t633, !tbaa !24
  %t635 = load ptr, ptr %lp16
  %t636 = getelementptr %"compiler/check:reflVal", ptr %t635, i32 0, i32 2
  %t637 = load i64, ptr %t636, !tbaa !24
  %t640 = icmp sgt i64 %t634, %t637
  %t642 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2ervBool(ptr %v2, i1 %t640)
  store %"compiler/check:reflVal" %t642, ptr %l295
  br label %bb186
bb186:
  %t643 = load %"compiler/check:reflVal", ptr %l295
  store %"compiler/check:reflVal" %t643, ptr %l277
  br label %bb213
bb187:
  %t644 = load i32, ptr %l12, !range !{i32 0, i32 114}
  %t646 = trunc i64 100 to i32
  %t647 = icmp eq i32 %t644, %t646
  br i1 %t647, label %bb188, label %bb189
bb188:
  br label %bb190
bb189:
  br label %bb192
bb190:
  %t649 = load ptr, ptr %lp15
  %t650 = getelementptr %"compiler/check:reflVal", ptr %t649, i32 0, i32 2
  %t651 = load i64, ptr %t650, !tbaa !24
  %t652 = load ptr, ptr %lp16
  %t653 = getelementptr %"compiler/check:reflVal", ptr %t652, i32 0, i32 2
  %t654 = load i64, ptr %t653, !tbaa !24
  %t657 = icmp sge i64 %t651, %t654
  %t659 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2ervBool(ptr %v2, i1 %t657)
  store %"compiler/check:reflVal" %t659, ptr %l301
  br label %bb191
bb191:
  %t660 = load %"compiler/check:reflVal", ptr %l301
  store %"compiler/check:reflVal" %t660, ptr %l277
  br label %bb213
bb192:
  %t661 = load i32, ptr %l12, !range !{i32 0, i32 114}
  %t663 = trunc i64 68 to i32
  %t664 = icmp eq i32 %t661, %t663
  br i1 %t664, label %bb193, label %bb194
bb193:
  br label %bb195
bb194:
  br label %bb197
bb195:
  %t666 = load ptr, ptr %lp15
  %t667 = getelementptr %"compiler/check:reflVal", ptr %t666, i32 0, i32 2
  %t668 = load i64, ptr %t667, !tbaa !24
  %t669 = load ptr, ptr %lp16
  %t670 = getelementptr %"compiler/check:reflVal", ptr %t669, i32 0, i32 2
  %t671 = load i64, ptr %t670, !tbaa !24
  %t674 = add i64 %t668, %t671
  %t676 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2ervInt(ptr %v2, i64 %t674)
  store %"compiler/check:reflVal" %t676, ptr %l307
  br label %bb196
bb196:
  %t677 = load %"compiler/check:reflVal", ptr %l307
  store %"compiler/check:reflVal" %t677, ptr %l277
  br label %bb213
bb197:
  %t678 = load i32, ptr %l12, !range !{i32 0, i32 114}
  %t680 = trunc i64 69 to i32
  %t681 = icmp eq i32 %t678, %t680
  br i1 %t681, label %bb198, label %bb199
bb198:
  br label %bb200
bb199:
  br label %bb202
bb200:
  %t683 = load ptr, ptr %lp15
  %t684 = getelementptr %"compiler/check:reflVal", ptr %t683, i32 0, i32 2
  %t685 = load i64, ptr %t684, !tbaa !24
  %t686 = load ptr, ptr %lp16
  %t687 = getelementptr %"compiler/check:reflVal", ptr %t686, i32 0, i32 2
  %t688 = load i64, ptr %t687, !tbaa !24
  %t691 = sub i64 %t685, %t688
  %t693 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2ervInt(ptr %v2, i64 %t691)
  store %"compiler/check:reflVal" %t693, ptr %l313
  br label %bb201
bb201:
  %t694 = load %"compiler/check:reflVal", ptr %l313
  store %"compiler/check:reflVal" %t694, ptr %l277
  br label %bb213
bb202:
  %t695 = load i32, ptr %l12, !range !{i32 0, i32 114}
  %t697 = trunc i64 70 to i32
  %t698 = icmp eq i32 %t695, %t697
  br i1 %t698, label %bb203, label %bb204
bb203:
  br label %bb205
bb204:
  br label %bb207
bb205:
  %t700 = load ptr, ptr %lp15
  %t701 = getelementptr %"compiler/check:reflVal", ptr %t700, i32 0, i32 2
  %t702 = load i64, ptr %t701, !tbaa !24
  %t703 = load ptr, ptr %lp16
  %t704 = getelementptr %"compiler/check:reflVal", ptr %t703, i32 0, i32 2
  %t705 = load i64, ptr %t704, !tbaa !24
  %t708 = mul i64 %t702, %t705
  %t710 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2ervInt(ptr %v2, i64 %t708)
  store %"compiler/check:reflVal" %t710, ptr %l319
  br label %bb206
bb206:
  %t711 = load %"compiler/check:reflVal", ptr %l319
  store %"compiler/check:reflVal" %t711, ptr %l277
  br label %bb213
bb207:
  br i1 true, label %bb208, label %bb209
bb208:
  br label %bb210
bb209:
  br label %bb212
bb210:
  %t712 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2enoRefl(ptr %v2)
  store %"compiler/check:reflVal" %t712, ptr %l320
  br label %bb211
bb211:
  %t713 = load %"compiler/check:reflVal", ptr %l320
  store %"compiler/check:reflVal" %t713, ptr %l277
  br label %bb213
bb212:
  call void @__olang_check_failed(ptr @olang_loc_86ff27eaf091632f_ba308f61bf434c3)
  unreachable
bb213:
  %t714 = load %"compiler/check:reflVal", ptr %l277
  store %"compiler/check:reflVal" %t714, ptr %rv
  br label %ret
bb214:
  %t715 = load ptr, ptr %l1, !tbaa !29
  store ptr %t715, ptr %l321, !tbaa !29
  store i1 false, ptr %l322, !tbaa !21
  %t716 = load ptr, ptr %l321, !tbaa !29
  %t717 = icmp ne ptr %t716, null
  br i1 %t717, label %bb215, label %bb216
bb215:
  %t719 = load ptr, ptr %l321, !tbaa !29
  %t720 = load i64, ptr %t719, !range !{i64 0, i64 30}
  %t722 = icmp eq i64 %t720, 12
  store i1 %t722, ptr %l322, !tbaa !21
  br label %bb216
bb216:
  %t723 = load i1, ptr %l322, !tbaa !21
  br i1 %t723, label %bb217, label %bb218
bb217:
  %t724 = load ptr, ptr %l1, !tbaa !29
  %t726 = getelementptr { i64, [4 x i64] }, ptr %t724, i32 0, i32 1
  %t727 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t726, i32 0, i32 1
  %t728 = load ptr, ptr %t727
  store ptr %t728, ptr %l18, !tbaa !29
  %t730 = load ptr, ptr %l1, !tbaa !29
  %t732 = getelementptr { i64, [4 x i64] }, ptr %t730, i32 0, i32 1
  %t733 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t732, i32 0, i32 2
  %t734 = load { i64, ptr }, ptr %t733
  store { i64, ptr } %t734, ptr %l19, !tbaa !27
  br label %bb219
bb218:
  br label %bb240
bb219:
  %t736 = load ptr, ptr %l18, !tbaa !29
  store ptr %t736, ptr %l330, !tbaa !29
  store i1 false, ptr %l331, !tbaa !21
  %t737 = load ptr, ptr %l330, !tbaa !29
  %t738 = icmp ne ptr %t737, null
  br i1 %t738, label %bb220, label %bb221
bb220:
  %t740 = load ptr, ptr %l330, !tbaa !29
  %t741 = load i64, ptr %t740, !range !{i64 0, i64 30}
  %t743 = icmp eq i64 %t741, 13
  store i1 %t743, ptr %l331, !tbaa !21
  br label %bb221
bb221:
  %t744 = load i1, ptr %l331, !tbaa !21
  br i1 %t744, label %bb222, label %bb223
bb222:
  %t745 = load ptr, ptr %l18, !tbaa !29
  %t747 = getelementptr { i64, [4 x i64] }, ptr %t745, i32 0, i32 1
  %t748 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t747, i32 0, i32 1
  %t749 = load ptr, ptr %t748
  store ptr %t749, ptr %l20, !tbaa !29
  %t751 = load ptr, ptr %l18, !tbaa !29
  %t753 = getelementptr { i64, [4 x i64] }, ptr %t751, i32 0, i32 1
  %t754 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t753, i32 0, i32 2
  %t755 = load { i64, ptr }, ptr %t754
  store { i64, ptr } %t755, ptr %l21, !tbaa !27
  br label %bb224
bb223:
  br label %bb226
bb224:
  %t757 = load ptr, ptr %l0, !tbaa !29
  %t758 = load ptr, ptr %l20, !tbaa !29
  %t759 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t760 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t765 = call %"compiler/check:reflVal" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflHasAttr(ptr %v0, ptr %v1, ptr %v1, ptr %v1, ptr %v2, ptr %t757, ptr %t758, { i64, ptr } %t759, { i64, ptr } %t760)
  store %"compiler/check:reflVal" %t765, ptr %l342
  br label %bb225
bb225:
  %t766 = load %"compiler/check:reflVal", ptr %l342
  store %"compiler/check:reflVal" %t766, ptr %l329
  br label %bb239
bb226:
  %t767 = load ptr, ptr %l18, !tbaa !29
  store ptr %t767, ptr %l343, !tbaa !29
  store i1 false, ptr %l344, !tbaa !21
  %t768 = load ptr, ptr %l343, !tbaa !29
  %t769 = icmp ne ptr %t768, null
  br i1 %t769, label %bb227, label %bb228
bb227:
  %t771 = load ptr, ptr %l343, !tbaa !29
  %t772 = load i64, ptr %t771, !range !{i64 0, i64 30}
  %t774 = icmp eq i64 %t772, 14
  store i1 %t774, ptr %l344, !tbaa !21
  br label %bb228
bb228:
  %t775 = load i1, ptr %l344, !tbaa !21
  br i1 %t775, label %bb229, label %bb230
bb229:
  %t776 = load ptr, ptr %l18, !tbaa !29
  %t778 = getelementptr { i64, [4 x i64] }, ptr %t776, i32 0, i32 1
  %t779 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t778, i32 0, i32 1
  %t780 = load ptr, ptr %t779
  store ptr %t780, ptr %l22, !tbaa !29
  %t782 = load ptr, ptr %l18, !tbaa !29
  %t784 = getelementptr { i64, [4 x i64] }, ptr %t782, i32 0, i32 1
  %t785 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t784, i32 0, i32 2
  %t786 = load i32, ptr %t785
  store i32 %t786, ptr %l23, !tbaa !23
  br label %bb231
bb230:
  br label %bb233
bb231:
  %t788 = load ptr, ptr %l0, !tbaa !29
  %t789 = load ptr, ptr %l22, !tbaa !29
  %t790 = load i32, ptr %l23, !tbaa !23
  %t791 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t796 = call %"compiler/check:reflVal" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflLen(ptr %v0, ptr %v1, ptr %v1, ptr %v2, ptr %t788, ptr %t789, i32 %t790, { i64, ptr } %t791)
  store %"compiler/check:reflVal" %t796, ptr %l355
  br label %bb232
bb232:
  %t797 = load %"compiler/check:reflVal", ptr %l355
  store %"compiler/check:reflVal" %t797, ptr %l329
  br label %bb239
bb233:
  br i1 true, label %bb234, label %bb235
bb234:
  br label %bb236
bb235:
  br label %bb238
bb236:
  %t798 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2enoRefl(ptr %v2)
  store %"compiler/check:reflVal" %t798, ptr %l356
  br label %bb237
bb237:
  %t799 = load %"compiler/check:reflVal", ptr %l356
  store %"compiler/check:reflVal" %t799, ptr %l329
  br label %bb239
bb238:
  call void @__olang_check_failed(ptr @olang_loc_114cfdec1b4fc26e_cfa662da5043ed42)
  unreachable
bb239:
  %t800 = load %"compiler/check:reflVal", ptr %l329
  store %"compiler/check:reflVal" %t800, ptr %rv
  br label %ret
bb240:
  %t801 = load ptr, ptr %l1, !tbaa !29
  store ptr %t801, ptr %l357, !tbaa !29
  store i1 false, ptr %l358, !tbaa !21
  %t802 = load ptr, ptr %l357, !tbaa !29
  %t803 = icmp ne ptr %t802, null
  br i1 %t803, label %bb241, label %bb242
bb241:
  %t805 = load ptr, ptr %l357, !tbaa !29
  %t806 = load i64, ptr %t805, !range !{i64 0, i64 30}
  %t808 = icmp eq i64 %t806, 14
  store i1 %t808, ptr %l358, !tbaa !21
  br label %bb242
bb242:
  %t809 = load i1, ptr %l358, !tbaa !21
  br i1 %t809, label %bb243, label %bb244
bb243:
  %t810 = load ptr, ptr %l1, !tbaa !29
  %t812 = getelementptr { i64, [4 x i64] }, ptr %t810, i32 0, i32 1
  %t813 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t812, i32 0, i32 1
  %t814 = load ptr, ptr %t813
  store ptr %t814, ptr %l24, !tbaa !29
  %t816 = load ptr, ptr %l1, !tbaa !29
  %t818 = getelementptr { i64, [4 x i64] }, ptr %t816, i32 0, i32 1
  %t819 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t818, i32 0, i32 2
  %t820 = load i32, ptr %t819
  store i32 %t820, ptr %l25, !tbaa !23
  br label %bb245
bb244:
  br label %bb280
bb245:
  %t822 = load ptr, ptr %l0, !tbaa !29
  %t823 = load ptr, ptr %l24, !tbaa !29
  %t826 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNamed(ptr %v0, ptr %v1, ptr %t822, ptr %t823)
  store i32 %t826, ptr %l367
  br label %bb246
bb246:
  %t827 = load i32, ptr %l367, !tbaa !23
  store i32 %t827, ptr %l26, !tbaa !23
  %t828 = load i32, ptr %l26, !tbaa !23
  %t830 = icmp sge i32 %t828, 0
  br i1 %t830, label %bb247, label %bb248
bb247:
  %t832 = load ptr, ptr %l0, !tbaa !29
  %t833 = load i32, ptr %l26, !tbaa !23
  %t836 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %t832, i32 %t833)
  store i1 %t836, ptr %l373
  br label %bb249
bb248:
  store i1 false, ptr %l370, !tbaa !21
  br label %bb250
bb249:
  %t837 = load i1, ptr %l373, !tbaa !21
  store i1 %t837, ptr %l370, !tbaa !21
  br label %bb250
bb250:
  %t838 = load i1, ptr %l370, !tbaa !21
  br i1 %t838, label %bb251, label %bb252
bb251:
  %t839 = load ptr, ptr %l0, !tbaa !29
  %t840 = load i32, ptr %l26, !tbaa !23
  %t841 = load i32, ptr %l25, !tbaa !23
  %t845 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehasCase(ptr %v0, ptr %t839, i32 %t840, i32 %t841)
  store i1 %t845, ptr %l378
  br label %bb253
bb252:
  store i1 false, ptr %l374, !tbaa !21
  br label %bb254
bb253:
  %t846 = load i1, ptr %l378, !tbaa !21
  store i1 %t846, ptr %l374, !tbaa !21
  br label %bb254
bb254:
  %t847 = load i1, ptr %l374, !tbaa !21
  br i1 %t847, label %bb255, label %bb256
bb255:
  %t848 = load ptr, ptr %l0, !tbaa !29
  %t849 = load ptr, ptr %l24, !tbaa !29
  %t852 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eviaTypeVar(ptr %v0, ptr %v1, ptr %t848, ptr %t849)
  store i1 %t852, ptr %l382
  br label %bb257
bb256:
  store i1 false, ptr %l379, !tbaa !21
  br label %bb258
bb257:
  %t853 = load i1, ptr %l382, !tbaa !21
  %t854 = xor i1 %t853, true
  store i1 %t854, ptr %l379, !tbaa !21
  br label %bb258
bb258:
  %t856 = load i1, ptr %l379, !tbaa !21
  br i1 %t856, label %bb259, label %bb260
bb259:
  store %olang.scope zeroinitializer, ptr %s36
  %t857 = load ptr, ptr %l0, !tbaa !29
  %t859 = getelementptr %"compiler/check:Checker", ptr %t857, i32 0, i32 1
  %t860 = load ptr, ptr %t859, !tbaa !29
  %t862 = getelementptr %"compiler/generic:Program", ptr %t860, i32 0, i32 2
  %t863 = load i32, ptr %l26, !tbaa !23
  %t866 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCaseNames(ptr %v0, ptr %s36, ptr %t862, i32 %t863)
  store { i64, ptr } %t866, ptr %l388
  br label %bb261
bb260:
  br label %bb278
bb261:
  %t867 = load { i64, ptr }, ptr %l388, !tbaa !27
  store { i64, ptr } %t867, ptr %l27, !tbaa !27
  store i64 0, ptr %l28, !tbaa !24
  %t868 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t870 = extractvalue { i64, ptr } %t868, 0
  store i64 %t870, ptr %l29, !tbaa !24
  store i64 1, ptr %l30, !tbaa !24
  %t872 = load i64, ptr %l29, !tbaa !24
  %t873 = load i64, ptr %l28, !tbaa !24
  %t876 = icmp sgt i64 %t872, %t873
  br i1 %t876, label %bb262, label %bb263
bb262:
  %t878 = load i64, ptr %l30, !tbaa !24
  %t880 = icmp sgt i64 %t878, 0
  br i1 %t880, label %bb264, label %bb265
bb263:
  store i64 0, ptr %l394, !tbaa !24
  br label %bb267
bb264:
  %t882 = load i64, ptr %l29, !tbaa !24
  %t883 = load i64, ptr %l28, !tbaa !24
  %t886 = sub i64 %t882, %t883
  %t887 = load i64, ptr %l30, !tbaa !24
  %t890 = add i64 %t886, %t887
  %t892 = sub i64 %t890, 1
  %t893 = load i64, ptr %l30, !tbaa !24
  %t896 = sdiv i64 %t892, %t893
  store i64 %t896, ptr %l397, !tbaa !24
  br label %bb266
bb265:
  store i64 0, ptr %l397, !tbaa !24
  br label %bb266
bb266:
  %t898 = load i64, ptr %l397, !tbaa !24
  store i64 %t898, ptr %l394, !tbaa !24
  br label %bb267
bb267:
  %t899 = load i64, ptr %l394, !tbaa !24
  store i64 %t899, ptr %l31, !tbaa !24
  store i64 0, ptr %l32, !tbaa !24
  br label %bb268
bb268:
  %t900 = load i64, ptr %l32, !tbaa !24
  %t901 = load i64, ptr %l31, !tbaa !24
  %t904 = icmp slt i64 %t900, %t901
  %t906 = xor i1 %t904, true
  br i1 %t906, label %bb269, label %bb270
bb269:
  br label %bb277
bb270:
  br label %bb271
bb271:
  %t908 = load i64, ptr %l28, !tbaa !24
  %t909 = load i64, ptr %l32, !tbaa !24
  %t910 = load i64, ptr %l30, !tbaa !24
  %t913 = mul i64 %t909, %t910
  %t916 = add i64 %t908, %t913
  store i64 %t916, ptr %l33, !tbaa !24
  %t918 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t918, ptr %l415, !tbaa !27
  %t919 = load i64, ptr %l33, !tbaa !24
  %t921 = getelementptr { i64, ptr }, ptr %l415, i32 0, i32 1
  %t922 = load ptr, ptr %t921, !tbaa !27
  %t923 = getelementptr i32, ptr %t922, i64 %t919
  %t924 = load i32, ptr %t923, !tbaa !33
  %t925 = load i32, ptr %l25, !tbaa !23
  %t928 = icmp eq i32 %t924, %t925
  br i1 %t928, label %bb272, label %bb273
bb272:
  %t930 = load i64, ptr @G_2ecompiler_2fcheck_2eRvCase, !tbaa !24
  %t931 = load i64, ptr %l33, !tbaa !24
  %t932 = load i32, ptr %l26, !tbaa !23
  %t936 = call %"compiler/check:reflVal" @compiler_2fcheck_3areflVal_2ector(ptr %v2, ptr %v2, i1 true, i64 %t930, i64 %t931, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d16, i32 0, i32 1) }, i32 %t932)
  store %"compiler/check:reflVal" %t936, ptr %l423
  br label %bb274
bb273:
  br label %bb275
bb274:
  call void @__olang_scope_close(ptr %s36)
  %t937 = load %"compiler/check:reflVal", ptr %l423
  store %"compiler/check:reflVal" %t937, ptr %rv
  br label %ret
bb275:
  br label %bb276
bb276:
  %t938 = load i64, ptr %l32, !tbaa !24
  %t940 = add i64 %t938, 1
  store i64 %t940, ptr %l32, !tbaa !24
  br label %bb268
bb277:
  call void @__olang_scope_close(ptr %s36)
  br label %bb278
bb278:
  %t942 = load ptr, ptr %l0, !tbaa !29
  %t943 = load ptr, ptr %l24, !tbaa !29
  %t944 = load i32, ptr %l25, !tbaa !23
  %t948 = call %"compiler/check:reflVal" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflConst(ptr %v0, ptr %v1, ptr %v2, ptr %t942, ptr %t943, i32 %t944)
  store %"compiler/check:reflVal" %t948, ptr %l429
  br label %bb279
bb279:
  %t949 = load %"compiler/check:reflVal", ptr %l429
  store %"compiler/check:reflVal" %t949, ptr %rv
  br label %ret
bb280:
  br i1 true, label %bb281, label %bb282
bb281:
  br label %bb283
bb282:
  br label %bb285
bb283:
  %t950 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2enoRefl(ptr %v2)
  store %"compiler/check:reflVal" %t950, ptr %l430
  br label %bb284
bb284:
  %t951 = load %"compiler/check:reflVal", ptr %l430
  store %"compiler/check:reflVal" %t951, ptr %rv
  br label %ret
bb285:
  call void @__olang_check_failed(ptr @olang_loc_47b54f2ae1cd9e25_7ae3019206b40db9)
  unreachable
ret:
  %rr = load %"compiler/check:reflVal", ptr %rv
  ret %"compiler/check:reflVal" %rr
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

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esettleFacts(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i1
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca %"compiler/check:factRead"
  %l5 = alloca i1
  %l8 = alloca i64
  %l10 = alloca i1
  %l15 = alloca i64
  %l22 = alloca i1
  %l31 = alloca i1
  %l33 = alloca i1
  %l37 = alloca i64
  %l39 = alloca i64
  %l44 = alloca %"compiler/check:factRead"
  %l47 = alloca i1
  %l52 = alloca ptr
  %l53 = alloca i64
  %l57 = alloca { i64, ptr }
  %s4 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 60
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3afactRead_3e_2eLen_3ccompiler_2fcheck_3afactRead_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l8
  br label %bb1
bb1:
  %t6 = load i64, ptr %l8, !tbaa !24
  %t7 = icmp eq i64 %t6, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l10, !tbaa !21
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
  store i64 %t20, ptr %l15
  br label %bb4
bb4:
  %t21 = load i64, ptr %l15, !tbaa !24
  %t22 = icmp sgt i64 %t21, 0
  store i1 %t22, ptr %l10, !tbaa !21
  br label %bb5
bb5:
  %t24 = load i1, ptr %l10, !tbaa !21
  br i1 %t24, label %bb6, label %bb7
bb6:
  store i1 false, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/check:Checker", ptr %t26, i32 0, i32 9
  %t29 = load ptr, ptr %t28, !tbaa !29
  %t31 = icmp eq ptr %t29, null
  %t33 = xor i1 %t31, true
  br i1 %t33, label %bb9, label %bb10
bb9:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/check:Checker", ptr %t35, i32 0, i32 9
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t40 = icmp eq ptr %t38, null
  br i1 %t40, label %bb11, label %bb12
bb10:
  store i1 false, ptr %l22, !tbaa !21
  br label %bb14
bb11:
  call void @__olang_check_failed(ptr @olang_loc_da9147927b21cb28_a289a266556f8214)
  unreachable
bb12:
  br label %bb13
bb13:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/check:Checker", ptr %t42, i32 0, i32 9
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t48 = getelementptr %"compiler/effects:Effects", ptr %t45, i32 0, i32 2
  %t49 = load i1, ptr %t48, !tbaa !21
  %t51 = xor i1 %t49, true
  store i1 %t51, ptr %l22, !tbaa !21
  br label %bb14
bb14:
  %t53 = load i1, ptr %l22, !tbaa !21
  br i1 %t53, label %bb15, label %bb16
bb15:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epureAsked(ptr %v0, ptr %t54)
  store i1 %t56, ptr %l33
  br label %bb17
bb16:
  store i1 false, ptr %l31, !tbaa !21
  br label %bb18
bb17:
  %t57 = load i1, ptr %l33, !tbaa !21
  store i1 %t57, ptr %l31, !tbaa !21
  br label %bb18
bb18:
  %t58 = load i1, ptr %l31, !tbaa !21
  br i1 %t58, label %bb19, label %bb20
bb19:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/check:Checker", ptr %t59, i32 0, i32 9
  store ptr null, ptr %t61, !tbaa !29
  br label %bb21
bb20:
  br label %bb21
bb21:
  store i1 false, ptr %l1, !tbaa !21
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/check:Checker", ptr %t62, i32 0, i32 60
  store ptr %t64, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb22
bb22:
  store %olang.scope zeroinitializer, ptr %s4
  %t66 = load i64, ptr %l3, !tbaa !24
  store i64 %t66, ptr %l37, !tbaa !24
  %t67 = load ptr, ptr %l2, !tbaa !29
  %t69 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3afactRead_3e_2eLen_3ccompiler_2fcheck_3afactRead_3e(ptr %v0, ptr %t67)
  store i64 %t69, ptr %l39
  br label %bb23
bb23:
  %t70 = load i64, ptr %l37, !tbaa !24
  %t71 = load i64, ptr %l39, !tbaa !24
  %t72 = icmp slt i64 %t70, %t71
  %t74 = xor i1 %t72, true
  br i1 %t74, label %bb24, label %bb25
bb24:
  call void @__olang_scope_close(ptr %s4)
  br label %bb39
bb25:
  br label %bb26
bb26:
  %t76 = load ptr, ptr %l2, !tbaa !29
  %t77 = load i64, ptr %l3, !tbaa !24
  %t80 = call %"compiler/check:factRead" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3afactRead_3e_2eAt_3ccompiler_2fcheck_3afactRead_3e(ptr %v0, ptr %v0, ptr %t76, i64 %t77)
  store %"compiler/check:factRead" %t80, ptr %l44
  br label %bb27
bb27:
  %t81 = load %"compiler/check:factRead", ptr %l44
  store %"compiler/check:factRead" %t81, ptr %l4
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t85 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efactFound(ptr %v0, ptr %s4, ptr %t82, ptr %l4)
  store i1 %t85, ptr %l47
  br label %bb28
bb28:
  %t86 = load i1, ptr %l47, !tbaa !21
  store i1 %t86, ptr %l5, !tbaa !21
  %t87 = load i1, ptr %l5, !tbaa !21
  %t88 = getelementptr %"compiler/check:factRead", ptr %l4, i32 0, i32 3
  %t89 = load i1, ptr %t88, !tbaa !21
  %t92 = icmp eq i1 %t87, %t89
  br i1 %t92, label %bb29, label %bb30
bb29:
  call void @__olang_scope_close(ptr %s4)
  br label %bb38
bb30:
  br label %bb31
bb31:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/check:Checker", ptr %t94, i32 0, i32 61
  store ptr %t96, ptr %l52, !tbaa !29
  %t97 = ptrtoint ptr %v0 to i64
  store i64 %t97, ptr %l53, !tbaa !24
  %t98 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e_2e0
  br i1 %t98, label %bb32, label %bb33
bb32:
  %t100 = call ptr @__olang_region_make(ptr %v0)
  %t101 = ptrtoint ptr %t100 to i64
  store i64 %t101, ptr %l53, !tbaa !24
  br label %bb33
bb33:
  %t102 = getelementptr %"compiler/check:factRead", ptr %l4, i32 0, i32 1
  %t103 = load i64, ptr %t102, !tbaa !24
  %t105 = icmp slt i64 %t103, 0
  br i1 %t105, label %bb34, label %bb35
bb34:
  %t107 = getelementptr %"compiler/check:factRead", ptr %l4, i32 0, i32 0
  %t108 = load i64, ptr %t107, !tbaa !24
  %t109 = getelementptr %"compiler/check:factRead", ptr %l4, i32 0, i32 2
  %t110 = load { i64, ptr }, ptr %t109, !tbaa !27
  %t112 = call i64 @__olang_fmt_i64(ptr null, i64 %t108)
  %t113 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t114 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  %t115 = add i64 %t112, %t114
  %t117 = extractvalue { i64, ptr } %t110, 1
  %t118 = extractvalue { i64, ptr } %t110, 0
  %t119 = add i64 %t115, %t118
  %t120 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t119)
  %t121 = call i64 @__olang_fmt_i64(ptr %t120, i64 %t108)
  %t122 = getelementptr i8, ptr %t120, i64 %t112
  call void @olang_textcopy(ptr %t122, ptr %t113, i64 %t114)
  %t123 = getelementptr i8, ptr %t122, i64 %t114
  call void @olang_textcopy(ptr %t123, ptr %t117, i64 %t118)
  %t124 = insertvalue { i64, ptr } undef, i64 %t119, 0
  %t125 = insertvalue { i64, ptr } %t124, ptr %t120, 1
  store { i64, ptr } %t125, ptr %l57, !tbaa !27
  br label %bb36
bb35:
  %t127 = getelementptr %"compiler/check:factRead", ptr %l4, i32 0, i32 1
  %t128 = load i64, ptr %t127, !tbaa !24
  %t129 = getelementptr %"compiler/check:factRead", ptr %l4, i32 0, i32 2
  %t130 = load { i64, ptr }, ptr %t129, !tbaa !27
  %t131 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t132 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t134 = call i64 @__olang_fmt_i64(ptr null, i64 %t128)
  %t135 = add i64 %t132, %t134
  %t136 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t137 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  %t138 = add i64 %t135, %t137
  %t140 = extractvalue { i64, ptr } %t130, 1
  %t141 = extractvalue { i64, ptr } %t130, 0
  %t142 = add i64 %t138, %t141
  %t143 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t142)
  call void @olang_textcopy(ptr %t143, ptr %t131, i64 %t132)
  %t144 = getelementptr i8, ptr %t143, i64 %t132
  %t145 = call i64 @__olang_fmt_i64(ptr %t144, i64 %t128)
  %t146 = getelementptr i8, ptr %t144, i64 %t134
  call void @olang_textcopy(ptr %t146, ptr %t136, i64 %t137)
  %t147 = getelementptr i8, ptr %t146, i64 %t137
  call void @olang_textcopy(ptr %t147, ptr %t140, i64 %t141)
  %t148 = insertvalue { i64, ptr } undef, i64 %t142, 0
  %t149 = insertvalue { i64, ptr } %t148, ptr %t143, 1
  store { i64, ptr } %t149, ptr %l57, !tbaa !27
  br label %bb36
bb36:
  %t151 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t152 = load i64, ptr %l53
  %t153 = inttoptr i64 %t152 to ptr
  %t154 = extractvalue { i64, ptr } %t151, 0
  %t155 = extractvalue { i64, ptr } %t151, 1
  %t156 = mul i64 %t154, 1
  %t157 = call ptr @__olang_scope_alloc(ptr %t153, i64 %t156)
  call void @llvm.memcpy.p0.p0.i64(ptr %t157, ptr %t155, i64 %t156, i1 false)
  %t158 = insertvalue { i64, ptr } undef, i64 %t154, 0
  %t159 = insertvalue { i64, ptr } %t158, ptr %t157, 1
  %t160 = load i1, ptr %l5, !tbaa !21
  %t161 = load ptr, ptr %l52, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H2b85ceff512af6e6ca26c554a1c16247(ptr %v0, ptr %v0, ptr %t161, { i64, ptr } %t159, i1 %t160)
  br label %bb37
bb37:
  store i1 true, ptr %l1, !tbaa !21
  call void @__olang_scope_close(ptr %s4)
  br label %bb38
bb38:
  %t164 = load i64, ptr %l3, !tbaa !24
  %t166 = add i64 %t164, 1
  store i64 %t166, ptr %l3, !tbaa !24
  br label %bb22
bb39:
  %t168 = load i1, ptr %l1, !tbaa !21
  store i1 %t168, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etwinBody(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca i32
  %l11 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l12 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i32
  %l25 = alloca i32
  %l30 = alloca i32
  %l31 = alloca ptr
  %l34 = alloca { i64, [2 x i64] }
  %l35 = alloca i32
  %l40 = alloca i64
  %l41 = alloca %"compiler/source:Span"
  %l42 = alloca i64
  %l49 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i64
  %t55 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i32, ptr %l1, !tbaa !23
  %t3 = sext i32 %t1 to i64
  %t4 = load i32, ptr %l2, !tbaa !23
  %t6 = sext i32 %t4 to i64
  %t9 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t3, i64 %t6)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t9, ptr %l11
  br label %bb1
bb1:
  %t10 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l11
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t10, ptr %l3
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/check:Checker", ptr %t11, i32 0, i32 21
  %t14 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l3
  %t17 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %t13, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t14)
  %t18 = extractvalue { i32, i64 } %t17, 1
  %t19 = extractvalue { i32, i64 } %t17, 0
  store i32 %t19, ptr %l17
  %t20 = icmp ne i32 %t19, 0
  br i1 %t20, label %bb3, label %ok.21, !prof !99
ok.21:
  store i64 %t18, ptr %l16
  br label %bb2
bb2:
  %t22 = load i64, ptr %l16, !tbaa !24
  store i64 %t22, ptr %l12, !tbaa !24
  br label %bb5
bb3:
  br label %bb4
bb4:
  store i64 -1, ptr %l12, !tbaa !24
  br label %bb5
bb5:
  %t23 = load i64, ptr %l12, !tbaa !24
  store i64 %t23, ptr %l4, !tbaa !24
  %t24 = load i64, ptr %l4, !tbaa !24
  %t26 = icmp sge i64 %t24, 0
  br i1 %t26, label %bb6, label %bb7
bb6:
  %t28 = load i64, ptr %l4, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t28, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/check:Checker", ptr %t30, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t35 = getelementptr %"compiler/generic:Program", ptr %t33, i32 0, i32 2
  %t36 = load i32, ptr %l1, !tbaa !23
  %t39 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t35, i32 %t36)
  store i32 %t39, ptr %l25
  br label %bb9
bb9:
  %t40 = load i32, ptr %l25, !tbaa !23
  store i32 %t40, ptr %l5, !tbaa !23
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/check:Checker", ptr %t41, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t45 = load i32, ptr %l1, !tbaa !23
  %t46 = load i32, ptr %l2, !tbaa !23
  %t50 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorSigAt(ptr %v0, ptr %t44, i32 %t45, i32 %t46)
  store i32 %t50, ptr %l30
  br label %bb10
bb10:
  %t51 = load i32, ptr %l30, !tbaa !23
  store i32 %t51, ptr %l6, !tbaa !23
  %t52 = load ptr, ptr %l0, !tbaa !29
  store ptr %t52, ptr %l31, !tbaa !29
  %t53 = load i32, ptr %l1, !tbaa !23
  %t54 = load i32, ptr %l2, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t55
  %t56 = getelementptr { i64, [2 x i64] }, ptr %t55, i32 0, i32 0
  store i64 1, ptr %t56
  %t58 = insertvalue { i32, i32 } undef, i32 %t53, 0
  %t60 = insertvalue { i32, i32 } %t58, i32 %t54, 1
  %t61 = getelementptr { i64, [2 x i64] }, ptr %t55, i32 0, i32 1
  store { i32, i32 } %t60, ptr %t61
  %t62 = load { i64, [2 x i64] }, ptr %t55
  store { i64, [2 x i64] } %t62, ptr %l34
  %t63 = load i32, ptr %l6, !tbaa !23
  store i32 %t63, ptr %l35, !tbaa !23
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/check:Checker", ptr %t64, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t69 = getelementptr %"compiler/generic:Program", ptr %t67, i32 0, i32 2
  %t70 = load i32, ptr %l5, !tbaa !23
  %t73 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t69, i32 %t70)
  store i64 %t73, ptr %l40
  br label %bb11
bb11:
  %t74 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 0, i32 0)
  store %"compiler/source:Span" %t74, ptr %l41
  br label %bb12
bb12:
  %t75 = load ptr, ptr %l31, !tbaa !29
  %t76 = load { i64, [2 x i64] }, ptr %l34
  %t77 = load i32, ptr %l35, !tbaa !23
  %t78 = load i64, ptr %l40, !tbaa !24
  %t79 = load %"compiler/source:Span", ptr %l41
  %t80 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enewBody(ptr %v0, ptr %t75, { i64, [2 x i64] } %t76, i32 %t77, i64 %t78, %"compiler/source:Span" %t79)
  store i64 %t80, ptr %l42
  br label %bb13
bb13:
  %t81 = load i64, ptr %l42, !tbaa !24
  store i64 %t81, ptr %l4, !tbaa !24
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/check:Checker", ptr %t82, i32 0, i32 21
  %t85 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l3
  %t86 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H31314c4e7281f5029d6d8eb3044cef10(ptr %v0, ptr %t84, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t85, i64 %t86)
  br label %bb14
bb14:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t91 = load i32, ptr %l6, !tbaa !23
  %t94 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einfersErrs(ptr %v0, ptr %t90, i32 %t91)
  store i1 %t94, ptr %l49
  br label %bb15
bb15:
  %t95 = load i1, ptr %l49, !tbaa !21
  br i1 %t95, label %bb16, label %bb17
bb16:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/check:Checker", ptr %t96, i32 0, i32 54
  %t99 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t98, i64 %t99, i1 true)
  br label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb19
bb19:
  %t102 = load i64, ptr %l4, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t102, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evarsIn(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2, { i64, ptr } %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca i64
  %l20 = alloca i1
  %l28 = alloca i32
  %l35 = alloca i64
  %l38 = alloca i1
  %l43 = alloca i64
  %l47 = alloca { i64, ptr }
  %l52 = alloca i64
  %l57 = alloca ptr
  %l62 = alloca i32
  %l63 = alloca { i64, ptr }
  %l70 = alloca { i64, ptr }
  %l83 = alloca ptr
  %l88 = alloca i32
  %l97 = alloca i32
  %l99 = alloca ptr
  %l104 = alloca i32
  %l111 = alloca ptr
  %l116 = alloca i32
  %l125 = alloca ptr
  %l130 = alloca i32
  %l131 = alloca { i64, ptr }
  %l138 = alloca { i64, ptr }
  %l149 = alloca ptr
  %l154 = alloca i32
  %l165 = alloca ptr
  %l170 = alloca i32
  %l171 = alloca { i64, ptr }
  %l178 = alloca { i64, ptr }
  %l191 = alloca ptr
  %l196 = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  store i64 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l4, !tbaa !24
  %t3 = icmp sgt i64 %t1, 32
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb3
bb2:
  %t5 = load i32, ptr %l1, !tbaa !23
  %t6 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t9 = icmp eq i32 %t5, %t6
  store i1 %t9, ptr %l20, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l20, !tbaa !21
  br i1 %t11, label %bb4, label %bb5
bb4:
  br label %ret
bb5:
  br label %bb6
bb6:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/check:Checker", ptr %t12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = getelementptr %"compiler/generic:Program", ptr %t15, i32 0, i32 2
  %t18 = load i32, ptr %l1, !tbaa !23
  %t21 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t17, i32 %t18)
  store i32 %t21, ptr %l28
  br label %bb7
bb7:
  %t22 = load i32, ptr %l28, !range !{i32 0, i32 33}
  store i32 %t22, ptr %l5
  %t23 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t25 = trunc i64 25 to i32
  %t26 = icmp eq i32 %t23, %t25
  br i1 %t26, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb20
bb10:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/check:Checker", ptr %t28, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = getelementptr %"compiler/generic:Program", ptr %t31, i32 0, i32 2
  %t34 = load i32, ptr %l1, !tbaa !23
  %t37 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %t33, i32 %t34)
  store i64 %t37, ptr %l35
  br label %bb11
bb11:
  %t38 = load i64, ptr %l2, !tbaa !24
  %t39 = load i64, ptr %l35, !tbaa !24
  %t41 = icmp eq i64 %t39, %t38
  br i1 %t41, label %bb12, label %bb13
bb12:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/check:Checker", ptr %t43, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t48 = getelementptr %"compiler/generic:Program", ptr %t46, i32 0, i32 2
  %t49 = load i32, ptr %l1, !tbaa !23
  %t52 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eB(ptr %v0, ptr %t48, i32 %t49)
  store i64 %t52, ptr %l43
  br label %bb14
bb13:
  store i1 false, ptr %l38, !tbaa !21
  br label %bb15
bb14:
  %t53 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t55 = extractvalue { i64, ptr } %t53, 0
  %t56 = load i64, ptr %l43, !tbaa !24
  %t58 = icmp slt i64 %t56, %t55
  store i1 %t58, ptr %l38, !tbaa !21
  br label %bb15
bb15:
  %t60 = load i1, ptr %l38, !tbaa !21
  br i1 %t60, label %bb16, label %bb17
bb16:
  %t61 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t61, ptr %l47, !tbaa !27
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/check:Checker", ptr %t62, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t67 = getelementptr %"compiler/generic:Program", ptr %t65, i32 0, i32 2
  %t68 = load i32, ptr %l1, !tbaa !23
  %t71 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eB(ptr %v0, ptr %t67, i32 %t68)
  store i64 %t71, ptr %l52
  br label %bb18
bb17:
  br label %bb19
bb18:
  %t72 = load i64, ptr %l52, !tbaa !24
  %t73 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !27
  %t75 = getelementptr i1, ptr %t74, i64 %t72
  store i1 true, ptr %t75, !tbaa !31
  br label %bb19
bb19:
  br label %bb92
bb20:
  %t76 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t78 = trunc i64 18 to i32
  %t79 = icmp eq i32 %t76, %t78
  br i1 %t79, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb33
bb23:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/check:Checker", ptr %t81, i32 0, i32 1
  %t84 = load ptr, ptr %t83, !tbaa !29
  %t86 = getelementptr %"compiler/generic:Program", ptr %t84, i32 0, i32 2
  store ptr %t86, ptr %l57, !tbaa !29
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/check:Checker", ptr %t87, i32 0, i32 1
  %t90 = load ptr, ptr %t89, !tbaa !29
  %t92 = getelementptr %"compiler/generic:Program", ptr %t90, i32 0, i32 2
  %t93 = load i32, ptr %l1, !tbaa !23
  %t96 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t92, i32 %t93)
  store i32 %t96, ptr %l62
  br label %bb24
bb24:
  %t97 = load ptr, ptr %l57, !tbaa !29
  %t98 = load i32, ptr %l62, !tbaa !23
  %t99 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t97, i32 %t98)
  store { i64, ptr } %t99, ptr %l63
  br label %bb25
bb25:
  %t100 = load { i64, ptr }, ptr %l63, !tbaa !27
  store { i64, ptr } %t100, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t101 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t103 = extractvalue { i64, ptr } %t101, 0
  store i64 %t103, ptr %l8, !tbaa !24
  br label %bb26
bb26:
  %t105 = load i64, ptr %l7, !tbaa !24
  %t106 = load i64, ptr %l8, !tbaa !24
  %t109 = icmp slt i64 %t105, %t106
  %t111 = xor i1 %t109, true
  br i1 %t111, label %bb27, label %bb28
bb27:
  br label %bb32
bb28:
  br label %bb29
bb29:
  %t113 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t113, ptr %l70, !tbaa !27
  %t114 = load i64, ptr %l7, !tbaa !24
  %t116 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t117 = load ptr, ptr %t116, !tbaa !27
  %t118 = getelementptr i32, ptr %t117, i64 %t114
  %t119 = load i32, ptr %t118, !tbaa !33
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t123 = load i64, ptr %l2, !tbaa !24
  %t124 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t125 = load i64, ptr %l4, !tbaa !24
  %t127 = add i64 %t125, 1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evarsIn(ptr %v0, ptr %v1, ptr %t121, i32 %t119, i64 %t123, { i64, ptr } %t124, i64 %t127)
  br label %bb30
bb30:
  br label %bb31
bb31:
  %t133 = load i64, ptr %l7, !tbaa !24
  %t135 = add i64 %t133, 1
  store i64 %t135, ptr %l7, !tbaa !24
  br label %bb26
bb32:
  br label %bb92
bb33:
  %t137 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t139 = trunc i64 19 to i32
  %t140 = icmp eq i32 %t137, %t139
  br i1 %t140, label %bb34, label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb45
bb36:
  %t142 = load ptr, ptr %l0, !tbaa !29
  store ptr %t142, ptr %l83, !tbaa !29
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t145 = getelementptr %"compiler/check:Checker", ptr %t143, i32 0, i32 1
  %t146 = load ptr, ptr %t145, !tbaa !29
  %t148 = getelementptr %"compiler/generic:Program", ptr %t146, i32 0, i32 2
  %t149 = load i32, ptr %l1, !tbaa !23
  %t152 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t148, i32 %t149)
  store i32 %t152, ptr %l88
  br label %bb37
bb37:
  %t153 = load i64, ptr %l2, !tbaa !24
  %t154 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t155 = load i64, ptr %l4, !tbaa !24
  %t157 = add i64 %t155, 1
  %t158 = load ptr, ptr %l83, !tbaa !29
  %t159 = load i32, ptr %l88, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evarsIn(ptr %v0, ptr %v1, ptr %t158, i32 %t159, i64 %t153, { i64, ptr } %t154, i64 %t157)
  br label %bb38
bb38:
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t165 = getelementptr %"compiler/check:Checker", ptr %t163, i32 0, i32 1
  %t166 = load ptr, ptr %t165, !tbaa !29
  %t168 = getelementptr %"compiler/generic:Program", ptr %t166, i32 0, i32 2
  %t169 = load i32, ptr %l1, !tbaa !23
  %t172 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t168, i32 %t169)
  store i32 %t172, ptr %l97
  br label %bb39
bb39:
  %t173 = load i32, ptr %l97, !tbaa !23
  %t174 = icmp ne i32 %t173, 0
  br i1 %t174, label %bb40, label %bb41
bb40:
  %t176 = load ptr, ptr %l0, !tbaa !29
  store ptr %t176, ptr %l99, !tbaa !29
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t179 = getelementptr %"compiler/check:Checker", ptr %t177, i32 0, i32 1
  %t180 = load ptr, ptr %t179, !tbaa !29
  %t182 = getelementptr %"compiler/generic:Program", ptr %t180, i32 0, i32 2
  %t183 = load i32, ptr %l1, !tbaa !23
  %t186 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t182, i32 %t183)
  store i32 %t186, ptr %l104
  br label %bb42
bb41:
  br label %bb44
bb42:
  %t187 = load i64, ptr %l2, !tbaa !24
  %t188 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t189 = load i64, ptr %l4, !tbaa !24
  %t191 = add i64 %t189, 1
  %t192 = load ptr, ptr %l99, !tbaa !29
  %t193 = load i32, ptr %l104, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evarsIn(ptr %v0, ptr %v1, ptr %t192, i32 %t193, i64 %t187, { i64, ptr } %t188, i64 %t191)
  br label %bb43
bb43:
  br label %bb44
bb44:
  br label %bb92
bb45:
  %t197 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t199 = trunc i64 20 to i32
  %t200 = icmp eq i32 %t197, %t199
  br i1 %t200, label %bb46, label %bb47
bb46:
  br label %bb48
bb47:
  br label %bb51
bb48:
  %t202 = load ptr, ptr %l0, !tbaa !29
  store ptr %t202, ptr %l111, !tbaa !29
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t205 = getelementptr %"compiler/check:Checker", ptr %t203, i32 0, i32 1
  %t206 = load ptr, ptr %t205, !tbaa !29
  %t208 = getelementptr %"compiler/generic:Program", ptr %t206, i32 0, i32 2
  %t209 = load i32, ptr %l1, !tbaa !23
  %t212 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t208, i32 %t209)
  store i32 %t212, ptr %l116
  br label %bb49
bb49:
  %t213 = load i64, ptr %l2, !tbaa !24
  %t214 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t215 = load i64, ptr %l4, !tbaa !24
  %t217 = add i64 %t215, 1
  %t218 = load ptr, ptr %l111, !tbaa !29
  %t219 = load i32, ptr %l116, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evarsIn(ptr %v0, ptr %v1, ptr %t218, i32 %t219, i64 %t213, { i64, ptr } %t214, i64 %t217)
  br label %bb50
bb50:
  br label %bb92
bb51:
  %t223 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t225 = trunc i64 21 to i32
  %t226 = icmp eq i32 %t223, %t225
  br i1 %t226, label %bb52, label %bb53
bb52:
  br label %bb54
bb53:
  br label %bb66
bb54:
  %t228 = load ptr, ptr %l0, !tbaa !29
  %t230 = getelementptr %"compiler/check:Checker", ptr %t228, i32 0, i32 1
  %t231 = load ptr, ptr %t230, !tbaa !29
  %t233 = getelementptr %"compiler/generic:Program", ptr %t231, i32 0, i32 2
  store ptr %t233, ptr %l125, !tbaa !29
  %t234 = load ptr, ptr %l0, !tbaa !29
  %t236 = getelementptr %"compiler/check:Checker", ptr %t234, i32 0, i32 1
  %t237 = load ptr, ptr %t236, !tbaa !29
  %t239 = getelementptr %"compiler/generic:Program", ptr %t237, i32 0, i32 2
  %t240 = load i32, ptr %l1, !tbaa !23
  %t243 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t239, i32 %t240)
  store i32 %t243, ptr %l130
  br label %bb55
bb55:
  %t244 = load ptr, ptr %l125, !tbaa !29
  %t245 = load i32, ptr %l130, !tbaa !23
  %t246 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t244, i32 %t245)
  store { i64, ptr } %t246, ptr %l131
  br label %bb56
bb56:
  %t247 = load { i64, ptr }, ptr %l131, !tbaa !27
  store { i64, ptr } %t247, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t248 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t250 = extractvalue { i64, ptr } %t248, 0
  store i64 %t250, ptr %l12, !tbaa !24
  br label %bb57
bb57:
  %t252 = load i64, ptr %l11, !tbaa !24
  %t253 = load i64, ptr %l12, !tbaa !24
  %t256 = icmp slt i64 %t252, %t253
  %t258 = xor i1 %t256, true
  br i1 %t258, label %bb58, label %bb59
bb58:
  br label %bb63
bb59:
  br label %bb60
bb60:
  %t260 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t260, ptr %l138, !tbaa !27
  %t261 = load i64, ptr %l11, !tbaa !24
  %t263 = getelementptr { i64, ptr }, ptr %l138, i32 0, i32 1
  %t264 = load ptr, ptr %t263, !tbaa !27
  %t265 = getelementptr i32, ptr %t264, i64 %t261
  %t266 = load i32, ptr %t265, !tbaa !33
  %t268 = load ptr, ptr %l0, !tbaa !29
  %t270 = load i64, ptr %l2, !tbaa !24
  %t271 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t272 = load i64, ptr %l4, !tbaa !24
  %t274 = add i64 %t272, 1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evarsIn(ptr %v0, ptr %v1, ptr %t268, i32 %t266, i64 %t270, { i64, ptr } %t271, i64 %t274)
  br label %bb61
bb61:
  br label %bb62
bb62:
  %t280 = load i64, ptr %l11, !tbaa !24
  %t282 = add i64 %t280, 1
  store i64 %t282, ptr %l11, !tbaa !24
  br label %bb57
bb63:
  %t284 = load ptr, ptr %l0, !tbaa !29
  store ptr %t284, ptr %l149, !tbaa !29
  %t285 = load ptr, ptr %l0, !tbaa !29
  %t287 = getelementptr %"compiler/check:Checker", ptr %t285, i32 0, i32 1
  %t288 = load ptr, ptr %t287, !tbaa !29
  %t290 = getelementptr %"compiler/generic:Program", ptr %t288, i32 0, i32 2
  %t291 = load i32, ptr %l1, !tbaa !23
  %t294 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t290, i32 %t291)
  store i32 %t294, ptr %l154
  br label %bb64
bb64:
  %t295 = load i64, ptr %l2, !tbaa !24
  %t296 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t297 = load i64, ptr %l4, !tbaa !24
  %t299 = add i64 %t297, 1
  %t300 = load ptr, ptr %l149, !tbaa !29
  %t301 = load i32, ptr %l154, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evarsIn(ptr %v0, ptr %v1, ptr %t300, i32 %t301, i64 %t295, { i64, ptr } %t296, i64 %t299)
  br label %bb65
bb65:
  br label %bb92
bb66:
  %t305 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t307 = trunc i64 22 to i32
  %t308 = icmp eq i32 %t305, %t307
  br i1 %t308, label %bb67, label %bb68
bb67:
  br label %bb71
bb68:
  %t310 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t312 = trunc i64 23 to i32
  %t313 = icmp eq i32 %t310, %t312
  br i1 %t313, label %bb69, label %bb70
bb69:
  br label %bb71
bb70:
  br label %bb81
bb71:
  %t315 = load ptr, ptr %l0, !tbaa !29
  %t317 = getelementptr %"compiler/check:Checker", ptr %t315, i32 0, i32 1
  %t318 = load ptr, ptr %t317, !tbaa !29
  %t320 = getelementptr %"compiler/generic:Program", ptr %t318, i32 0, i32 2
  store ptr %t320, ptr %l165, !tbaa !29
  %t321 = load ptr, ptr %l0, !tbaa !29
  %t323 = getelementptr %"compiler/check:Checker", ptr %t321, i32 0, i32 1
  %t324 = load ptr, ptr %t323, !tbaa !29
  %t326 = getelementptr %"compiler/generic:Program", ptr %t324, i32 0, i32 2
  %t327 = load i32, ptr %l1, !tbaa !23
  %t330 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t326, i32 %t327)
  store i32 %t330, ptr %l170
  br label %bb72
bb72:
  %t331 = load ptr, ptr %l165, !tbaa !29
  %t332 = load i32, ptr %l170, !tbaa !23
  %t333 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t331, i32 %t332)
  store { i64, ptr } %t333, ptr %l171
  br label %bb73
bb73:
  %t334 = load { i64, ptr }, ptr %l171, !tbaa !27
  store { i64, ptr } %t334, ptr %l14, !tbaa !27
  store i64 0, ptr %l15, !tbaa !24
  %t335 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t337 = extractvalue { i64, ptr } %t335, 0
  store i64 %t337, ptr %l16, !tbaa !24
  br label %bb74
bb74:
  %t339 = load i64, ptr %l15, !tbaa !24
  %t340 = load i64, ptr %l16, !tbaa !24
  %t343 = icmp slt i64 %t339, %t340
  %t345 = xor i1 %t343, true
  br i1 %t345, label %bb75, label %bb76
bb75:
  br label %bb80
bb76:
  br label %bb77
bb77:
  %t347 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t347, ptr %l178, !tbaa !27
  %t348 = load i64, ptr %l15, !tbaa !24
  %t350 = getelementptr { i64, ptr }, ptr %l178, i32 0, i32 1
  %t351 = load ptr, ptr %t350, !tbaa !27
  %t352 = getelementptr i32, ptr %t351, i64 %t348
  %t353 = load i32, ptr %t352, !tbaa !33
  %t355 = load ptr, ptr %l0, !tbaa !29
  %t357 = load i64, ptr %l2, !tbaa !24
  %t358 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t359 = load i64, ptr %l4, !tbaa !24
  %t361 = add i64 %t359, 1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evarsIn(ptr %v0, ptr %v1, ptr %t355, i32 %t353, i64 %t357, { i64, ptr } %t358, i64 %t361)
  br label %bb78
bb78:
  br label %bb79
bb79:
  %t367 = load i64, ptr %l15, !tbaa !24
  %t369 = add i64 %t367, 1
  store i64 %t369, ptr %l15, !tbaa !24
  br label %bb74
bb80:
  br label %bb92
bb81:
  %t371 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t373 = trunc i64 29 to i32
  %t374 = icmp eq i32 %t371, %t373
  br i1 %t374, label %bb82, label %bb83
bb82:
  br label %bb84
bb83:
  br label %bb87
bb84:
  %t376 = load ptr, ptr %l0, !tbaa !29
  store ptr %t376, ptr %l191, !tbaa !29
  %t377 = load ptr, ptr %l0, !tbaa !29
  %t379 = getelementptr %"compiler/check:Checker", ptr %t377, i32 0, i32 1
  %t380 = load ptr, ptr %t379, !tbaa !29
  %t382 = getelementptr %"compiler/generic:Program", ptr %t380, i32 0, i32 2
  %t383 = load i32, ptr %l1, !tbaa !23
  %t386 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnyTrait(ptr %v0, ptr %t382, i32 %t383)
  store i32 %t386, ptr %l196
  br label %bb85
bb85:
  %t387 = load i64, ptr %l2, !tbaa !24
  %t388 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t389 = load i64, ptr %l4, !tbaa !24
  %t391 = add i64 %t389, 1
  %t392 = load ptr, ptr %l191, !tbaa !29
  %t393 = load i32, ptr %l196, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evarsIn(ptr %v0, ptr %v1, ptr %t392, i32 %t393, i64 %t387, { i64, ptr } %t388, i64 %t391)
  br label %bb86
bb86:
  br label %bb92
bb87:
  br i1 true, label %bb88, label %bb89
bb88:
  br label %bb90
bb89:
  br label %bb91
bb90:
  br label %bb92
bb91:
  call void @__olang_check_failed(ptr @olang_loc_cf2444207f491a80_6c107d983071089c)
  unreachable
bb92:
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/check:litv" @compiler_2fcheck_2elitv_2efloatLit(double %a0) #0 {
entry:
  %l2 = alloca %"compiler/check:litv"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/check:litv"
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call %"compiler/check:litv" @compiler_2fcheck_3alitv_2ector(ptr %s0, i1 true, i1 true, i1 false, i64 0, double %a0)
  store %"compiler/check:litv" %t3, ptr %l2
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  %t4 = load %"compiler/check:litv", ptr %l2
  store %"compiler/check:litv" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:litv", ptr %rv
  ret %"compiler/check:litv" %rr
}

define dso_local i1 @compiler_2fcheck_2enestedSets(ptr %v0, { i64, ptr } %a0, i32 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l18 = alloca { i64, ptr }
  %l21 = alloca ptr
  %l22 = alloca i1
  %l29 = alloca i1
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
  br label %bb24
bb6:
  br label %bb7
bb7:
  %t22 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t22, ptr %l18, !tbaa !27
  %t23 = load i64, ptr %l3, !tbaa !24
  %t25 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr ptr, ptr %t26, i64 %t23
  %t28 = load ptr, ptr %t27, !tbaa !39
  store ptr %t28, ptr %l5, !tbaa !29
  %t30 = load ptr, ptr %l5, !tbaa !29
  store ptr %t30, ptr %l21, !tbaa !29
  store i1 false, ptr %l22, !tbaa !21
  %t31 = load ptr, ptr %l21, !tbaa !29
  %t32 = icmp ne ptr %t31, null
  br i1 %t32, label %bb8, label %bb9
bb8:
  %t34 = load ptr, ptr %l21, !tbaa !29
  %t35 = load i64, ptr %t34, !range !{i64 0, i64 11}
  %t37 = icmp eq i64 %t35, 7
  store i1 %t37, ptr %l22, !tbaa !21
  br label %bb9
bb9:
  %t38 = load i1, ptr %l22, !tbaa !21
  br i1 %t38, label %bb10, label %bb11
bb10:
  %t39 = load ptr, ptr %l5, !tbaa !29
  %t41 = getelementptr { i64, [8 x i64] }, ptr %t39, i32 0, i32 1
  %t42 = getelementptr { %"compiler/source:Span", ptr }, ptr %t41, i32 0, i32 1
  %t43 = load ptr, ptr %t42
  store ptr %t43, ptr %l6, !tbaa !29
  br label %bb12
bb11:
  br label %bb17
bb12:
  %t45 = load ptr, ptr %l6, !tbaa !29
  %t49 = call i1 @compiler_2fcheck_2echainSets(ptr %v0, ptr %t45, i32 %a1)
  store i1 %t49, ptr %l29
  br label %bb13
bb13:
  %t50 = load i1, ptr %l29, !tbaa !21
  br i1 %t50, label %bb14, label %bb15
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
  call void @__olang_check_failed(ptr @olang_loc_f5486e4325103d79_668082c6ca0b25f5)
  unreachable
bb22:
  br label %bb23
bb23:
  %t52 = load i64, ptr %l3, !tbaa !24
  %t54 = add i64 %t52, 1
  store i64 %t54, ptr %l3, !tbaa !24
  br label %bb4
bb24:
  store i1 false, ptr %rv
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
@.d0 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" (" }>, align 8
@.d1 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"'s)" }>, align 8
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
@.d2 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
declare ptr @__olang_scope_of(ptr, ptr) noinline
@.d3 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Hash" }>, align 8
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
@.d4 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d5 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"!=" }>, align 8
@.d6 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"==" }>, align 8
@__olang_empty_array = external constant [16 x i64]
@.d7 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Next" }>, align 8
@olang_2esole_2ecompiler_2fcheck_3aGap_2e2 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d8 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d9 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"s" }>, align 8
@.d10 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"F64" }>, align 8
@.d11 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d12 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d13 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d14 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"module " }>, align 8
@.d15 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"true" }>, align 8
@olang_2esole_2ecompiler_2fcheck_3areflVal_2e3 = weak hidden constant i1 false
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d16 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e_2e0 = weak hidden constant i1 false
declare i64 @__olang_fmt_i64(ptr, i64)
@.d17 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d18 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"extern " }>, align 8
@.d19 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
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
declare i32 @compiler_2fcheck_2esetName(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2echainAssignsAll(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_fcbb335a6871d594_96c5adf6eb865188 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2eclosedPlace(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2eclosedCall(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2eclosedAll(ptr %v0, { i64, ptr } %a0)
@olang_loc_3c4137bcc23e7cab_322d476e7cbf1657 = external constant [0 x i8]
@olang_loc_64e99bada124913c_2f99d6e12db86a38 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2eclosedFn(ptr %v0, ptr %a0)
@olang_loc_f407e4aa2d3806b8_dd2e5682c5fdf6f4 = external constant [0 x i8]
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aStmt(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/generic:varRow" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNonNull(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNullableMeetsNoTrait(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/diagmsg:Msg" %a2)
declare %"compiler/generic:Unmet" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFirstUnmet(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eConstraintSealed(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, { i64, ptr } %a4)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emembersWritten(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/text:StringBuilder" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ememberListing(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eConstraintClosed(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, { i64, ptr } %a4)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eConstraintUnmet(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v0, { i64, ptr } %a0, i8 %a1)
@olang_loc_a9f182c570b9396_c29311a5416207fa = external constant [0 x i8]
declare { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eConstraintUnmetBuilder(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eConstraintUnmetHash(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eConstraintUnmetMethod(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare { i64, ptr } @compiler_2fcheck_2elowerFirst(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotePrivateSpelling(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoteAt(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, %"compiler/diagmsg:Msg" %a3)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteOtherSignature(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_Hc8503b2b20cde402cc7bde6f68d96fc0(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H2a27ec2ae5362b2f0ac6d54f3e063c70(ptr %v0, ptr %a0, i32 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnique(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eReadOnly = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnsParts(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewantCopy(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare %"compiler/typed:Local" @compiler_2ftyped_3aLocal_2ector(ptr %v0, i32 %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3, i32 %a4, { i64, [1 x i64] } %a5)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eAddLocal(ptr %v0, ptr %a0, %"compiler/typed:Local" %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H862756c16d115e5c03a79726209f69fa(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@olang_loc_486b3db7a819736b_b4c2afa2fe5bd5af = external constant [0 x i8]
declare %"compiler/typed:Capture" @compiler_2ftyped_3aCapture_2ector(ptr %v0, ptr %v1, i32 %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aCapture_26_3e_2ePus_Hdab9bd3c8945274d6e7197d4fb29356b(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2ePush_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edescTypeOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@G_2ecompiler_2fgeneric_2eDescNone = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/generic:Desc" @compiler_2fgeneric_3aDesc_2ector(ptr %v0, i64 %a0, i32 %a1, i64 %a2, i64 %a3)
declare %"compiler/generic:Desc" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fgeneric_2eDescCase = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enamesEnumOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCaseNames(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecasePublic(ptr %v0, ptr %a0, i32 %a1, i32 %a2, %"compiler/source:Span" %a3)
@olang_loc_276be77200b53441_cc6e235db38ae28d = external constant [0 x i8]
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echainCmp(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3, ptr %a4, ptr %a5)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i64 %a3)
declare %"compiler/typed:Cond" @compiler_2ftyped_3aCond_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
declare i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/typed:Seq" @compiler_2ftyped_3aSeq_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, ptr %a1, i1 %a2)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsColumns(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_8c10df0be32d8eb1_d395e5eefe4361bd = external constant [0 x i8]
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eB(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eHoldsVarByValue(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i64 %a3, i64 %a4)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffX(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffB(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v1, ptr %a0)
@G_2ecompiler_2fcheck_2eCtEns = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eLen_3cI64_2c_20I64_3e(ptr %v0, ptr %a0)
declare i64 @compiler_2fcheck_2ectKey(%"compiler/source:Span" %a0)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/check:litv" %a2, i32 %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eliteral(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ename(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3, i1 %a4)
@olang_loc_89186a9ac380dd4_b33b27dd6103e3a0 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunary(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3, i32 %a4)
@olang_loc_7c4353164dbe9ee3_aefc37a1203a15bf = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emembership(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebinary(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3, ptr %a4, i32 %a5)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econd(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3, ptr %a4, i32 %a5)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eparamLen(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecall(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, { i64, ptr } %a3, i32 %a4)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emember(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3, i32 %a4)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eindex(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, { i64, ptr } %a3)
@olang_loc_53847db9c92a0562_710dd7f3ca4a530e = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v0, ptr %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolve(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emadeLit(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, { i64, ptr } %a4)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ejoin(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etryExpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, { i64, ptr } %a3, i32 %a4)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebang(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopAfter(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
declare { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %v0, i32 %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eIncdecInExpression(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eidentity(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3, i1 %a4)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2easCase(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebetween(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i64 %a3)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eIsOnlyNull(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eslice(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3, ptr %a4)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enegate(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echain(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ematchValue(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emessage(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i1 %a2)
@G_2ecompiler_2ftypes_2eNoreturnT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
@olang_loc_8897572291f0ccb7_c6427496d38daffb = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eargItem(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflArgCompr(ptr %v0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecomprehension(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elambda(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenericFn(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexplicitArgs(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2, %"compiler/source:Span" %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efnValue(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, { i64, ptr } %a3)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %v0, i64 %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpreadNotHere(ptr %v0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evariadicArray(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2, i32 %a3)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNamedArgNotHere(ptr %v0)
@olang_loc_a8e86c6643416f97_b0a36d4dfce75d0b = external constant [0 x i8]
declare { i64, ptr } @compiler_2fcheck_2eexprKindName(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_c0710ded14dc76f6_f7fa39d5f4b8f2ca = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3afactRead_3e_2eLen_3ccompiler_2fcheck_3afactRead_3e(ptr %v0, ptr %a0)
declare %"compiler/check:factRead" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3afactRead_3e_2eAt_3ccompiler_2fcheck_3afactRead_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efactFound(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFactUndecided(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoValueCase(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCaseSig(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@olang_loc_3f3d818644d50cc7_38dbc52e232a8b93 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_26_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_H06f4ae43b564aa38800728c5b9a6edfe(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_Hb04d670045d084ea2498d9030c4fbba9(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epatWild(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_f2fc693d8c32a9d2_b249c5d053dbb65e = external constant [0 x i8]
declare { i64, ptr } @compiler_2fcheck_2epatTail(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1, i64 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_H19842cc3f9f17801919cd111c108caa0(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_1aa49c7f94741e71_4937354175d6cb9d = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseFields(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, i64 %a2, ptr %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebyFieldRow(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, { i64, ptr } %a2, { i64, ptr } %a3, ptr %a4)
@olang_loc_a8287edb9132b4cb_1f129b43d5c83daf = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecoversRows(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2, i64 %a3)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceSig(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enewBody(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2, i64 %a3, %"compiler/source:Span" %a4)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einfersErrs(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBuilderSig(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i64 @compiler_2fgeneric_2eFnOwner(i64 %a0)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eOwnerBinding(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eVar(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSubst(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i32 %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ementionsVar(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleMethod(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2, i64 %a3)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eiterShaped(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodSig(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %a0)
declare %"compiler/check:Gap" @compiler_2fcheck_3aGap_2ector(ptr %v0, ptr %v1, i64 %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aGap_3e_2ePush_3ccompiler_2fcheck_3aGap_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/check:Gap" %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_9c930588fc11ccad_eb7b13c9402bcb61 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eenumCase(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, i32 %a4, { i64, ptr } %a5, { i64, ptr } %a6)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSelfType(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoCase(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2)
declare i64 @compiler_2fgeneric_2eDeclOwner(i32 %a0)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclParams(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArgCount(ptr %v0, ptr %v1, i64 %a0, { i64, ptr } %a1, i64 %a2)
declare %"compiler/generic:Binding" @compiler_2fgeneric_3aBinding_2ector(ptr %v0, i64 %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ector(ptr %v0, i64 %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLike(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitFloat(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunify(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3, i1 %a4, i1 %a5)
@olang_loc_b3d294b733b0adff_ff9803be963c37bb = external constant [0 x i8]
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebindType(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInferThroughBounds(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrVarAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrSetOf(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaseTypeArgsNotInferable(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstance(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstancesMet(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eToArra_H50cbff9caa8a2389caf3e92da7e24507(ptr %v0, ptr %v1, ptr %a0)
declare ptr @compiler_2fcheck_2ereadPlace(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_ab1100555885b989_2cac6a0e3d43e9fd = external constant [0 x i8]
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocal(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, i32 %a3, i32 %a4, { i64, [1 x i64] } %a5)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aDeclId_3e_2ector(ptr %v0, i64 %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aDeclId_3e_2eLen_3ccompiler_2ftypes_3aDeclId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aDeclId_3e_2eAt_3ccompiler_2ftypes_3aDeclId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aDeclId_3e_2ePush_3ccompiler_2ftypes_3aDeclId_3e(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_cf50a113ac2177e6_e3cc5936e852a452 = external constant [0 x i8]
@olang_loc_baddfb655e016c47_d17e78f9e01d2853 = external constant [0 x i8]
@olang_loc_3e69957d7270204c_dfbf9d9d846a9638 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha4444909f5ef14f7626d25b8f59e6ba2(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCNoForm(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/msgs:Nearest" @compiler_2fmsgs_3aNearest_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eLen_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %a0)
declare %"compiler/names:Entry" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eAt_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fload_2ePublic(ptr %v0, { i64, ptr } %a0)
declare void @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eOffer(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eOfferBuilder(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eHint(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotInModule(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroLocal(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGlobalDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2)
@olang_loc_24dda45681d8cee1_6133aaee564c4ee5 = external constant [0 x i8]
declare i1 @compiler_2fgeneric_2eWrittenMut(ptr %v0, ptr %a0)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@olang_loc_f10316e290a7e1b9_b7814005b7d82bcd = external constant [0 x i8]
declare { i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enarrowOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enarrow(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, i64 %a3, i64 %a4)
@olang_loc_557e36687125b346_f828420618561f4a = external constant [0 x i8]
declare %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2ervBool(ptr %v0, i1 %a0)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estrBytes(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2ervText(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2ervInt(ptr %v0, i64 %a0)
declare %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2enoRefl(ptr %v0)
declare %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalNamed(ptr %v0, ptr %a0, i32 %a1)
declare { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Hfd0413fe7fd4e5914f6cad5b418b7a6d(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstType(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fcheck_2eRvBool = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fcheck_2eRvInt = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fcheck_2eRvText = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fcheck_2eRvCase = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@olang_loc_86ff27eaf091632f_ba308f61bf434c3 = external constant [0 x i8]
declare %"compiler/check:reflVal" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflHasAttr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare %"compiler/check:reflVal" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflLen(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i32 %a2, { i64, ptr } %a3)
@olang_loc_114cfdec1b4fc26e_cfa662da5043ed42 = external constant [0 x i8]
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNamed(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehasCase(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eviaTypeVar(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/check:reflVal" @compiler_2fcheck_3areflVal_2ector(ptr %v0, ptr %v1, i1 %a0, i64 %a1, i64 %a2, { i64, ptr } %a3, i32 %a4)
declare %"compiler/check:reflVal" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflConst(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
@olang_loc_47b54f2ae1cd9e25_7ae3019206b40db9 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eimmutableGlobal(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroRef(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroValue(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_29e885d4e6352517_4af5f3c2b7cab7a3 = external constant [0 x i8]
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrors(ptr %v0, ptr %a0)
@olang_loc_da9147927b21cb28_a289a266556f8214 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epureAsked(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H2b85ceff512af6e6ca26c554a1c16247(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i1 %a2)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorSigAt(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H31314c4e7281f5029d6d8eb3044cef10(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnyTrait(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_cf2444207f491a80_6c107d983071089c = external constant [0 x i8]
declare %"compiler/check:litv" @compiler_2fcheck_3alitv_2ector(ptr %v0, i1 %a0, i1 %a1, i1 %a2, i64 %a3, double %a4)
declare i1 @compiler_2fcheck_2echainSets(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_f5486e4325103d79_668082c6ca0b25f5 = external constant [0 x i8]

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
