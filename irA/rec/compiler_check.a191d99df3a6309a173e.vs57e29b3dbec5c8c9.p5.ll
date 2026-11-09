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
%"compiler/check:Checker" = type { ptr, ptr, i1, i1, i1, i1, i64, i64, i1, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, { i64, [3 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, i64, %"compiler/source:Span", i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i32, i1, i1, %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, i32, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/text:StringBuilder", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/generic:Unmet" = type { i64, i32, i32, i1, i1, i1 }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/ast:Attr" = type { %"compiler/source:Span", ptr, i32 }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/names:Ref" = type { i32, i64, i64 }
%"compiler/generic:Desc" = type { i64, i32, i64, i64 }
%"compiler/check:reflList" = type { i1, i32, i64, i64 }
%"compiler/check:frame" = type { i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/generic:Context", i32, i32, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i32, i64, i64, i64, i1, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i64, i64, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/source:Span", i64, i1 }
%"compiler/generic:Context" = type { i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/check:errBind" = type { i32, i64, i32, %"compiler/source:Span" }
%"compiler/check:ctSource" = type { ptr, ptr, { i64, ptr }, i64, { i64, ptr } }
%"compiler/ast:Param" = type { %"compiler/source:Span", i32, ptr, ptr, { i64, ptr } }
%"compiler/typed:If" = type { ptr, ptr, ptr }
%"compiler/typed:Make" = type { i32, i64, { i64, ptr }, ptr, i32, i32, i1 }
%"compiler/ast:Path" = type { %"compiler/source:Span", { i64, ptr } }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/check:litv" = type { i1, i1, i1, i64, double, i1, i1, i1, i128 }
%"compiler/check:payloadItem" = type { i32, ptr }
%"compiler/check:inPlaceRead" = type { { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"compiler/source:Span" }
%"compiler/effects:Facts" = type { i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i64, [6 x i64], i64, i64 }
%"compiler/typed:Promote" = type { ptr, i32 }
%"compiler/check:reflVal" = type { i1, i64, i64, { i64, ptr }, i32 }
%"compiler/check:signMag" = type { i1, i128 }
%"compiler/check:Ask" = type { i64, i64, i32, ptr, i64, { i64, ptr } }
define dso_local ptr @compiler_2fcheck_2ecasePath(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i1
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l2, !tbaa !29
  store i1 false, ptr %l3, !tbaa !21
  %t2 = load ptr, ptr %l2, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 12
  store i1 %t8, ptr %l3, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l3, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t12, i32 0, i32 1
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l1, !tbaa !29
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  store ptr %t16, ptr %rv
  br label %ret
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  %t18 = load ptr, ptr %l0, !tbaa !29
  store ptr %t18, ptr %rv
  br label %ret
bb10:
  call void @__olang_check_failed(ptr @olang_loc_27266ce16db26f9e_9560a2a6a3954b82)
  unreachable
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
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

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eanyMeets(ptr %v0, ptr %a0, i32 %a1, i32 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca %"compiler/generic:Unmet"
  %l5 = alloca { i64, ptr }
  %l6 = alloca %"std/prelude/text:StringBuilder"
  %l7 = alloca i64
  %l8 = alloca i64
  %l13 = alloca %"compiler/generic:Unmet"
  %l19 = alloca { i64, ptr }
  %l23 = alloca i1
  %l28 = alloca %"std/prelude/text:StringBuilder"
  %l29 = alloca ptr
  %l30 = alloca %"compiler/source:Span"
  %l33 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
  %l39 = alloca %"compiler/diagmsg:Msg"
  %l40 = alloca i64
  %l42 = alloca ptr
  %l43 = alloca %"compiler/source:Span"
  %l46 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l51 = alloca { i64, ptr }
  %l53 = alloca %"compiler/diagmsg:Msg"
  %l54 = alloca i64
  %l59 = alloca i64
  %l62 = alloca ptr
  %l63 = alloca i64
  %l64 = alloca i64
  %l67 = alloca { i64, ptr }
  %l68 = alloca %"compiler/diagmsg:Msg"
  %l69 = alloca ptr
  %l70 = alloca %"compiler/source:Span"
  %l73 = alloca { i64, ptr }
  %l76 = alloca %"compiler/diagmsg:Msg"
  %l77 = alloca i64
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
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
  %t5 = load i32, ptr %l1, !tbaa !23
  %t6 = load i32, ptr %l2, !tbaa !23
  %t10 = call %"compiler/generic:Unmet" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMissing(ptr %v0, ptr %t4, i32 %t5, i32 %t6, i1 true, i64 0)
  store %"compiler/generic:Unmet" %t10, ptr %l13
  br label %bb1
bb1:
  %t11 = load %"compiler/generic:Unmet", ptr %l13
  store %"compiler/generic:Unmet" %t11, ptr %l4
  %t12 = getelementptr %"compiler/generic:Unmet", ptr %l4, i32 0, i32 0
  %t13 = load i64, ptr %t12, !tbaa !24
  %t15 = icmp slt i64 %t13, 0
  br i1 %t15, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load i32, ptr %l2, !tbaa !23
  %t22 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s0, ptr %t18, i32 %t19)
  store { i64, ptr } %t22, ptr %l19
  br label %bb5
bb5:
  %t23 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t23, ptr %l5, !tbaa !27
  %t24 = getelementptr %"compiler/generic:Unmet", ptr %l4, i32 0, i32 5
  %t25 = load i1, ptr %t24, !tbaa !21
  br i1 %t25, label %bb6, label %bb7
bb6:
  store %olang.scope zeroinitializer, ptr %s2
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/generic:Unmet", ptr %l4, i32 0, i32 1
  %t29 = load i32, ptr %t28, !tbaa !23
  %t32 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emembersWritten(ptr %v0, ptr %t27, i32 %t29)
  store i1 %t32, ptr %l23
  br label %bb8
bb7:
  %t33 = getelementptr %"compiler/generic:Unmet", ptr %l4, i32 0, i32 3
  %t34 = load i1, ptr %t33, !tbaa !21
  br i1 %t34, label %bb17, label %bb18
bb8:
  %t36 = load i1, ptr %l23, !tbaa !21
  %t37 = xor i1 %t36, true
  br i1 %t37, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/generic:Unmet", ptr %l4, i32 0, i32 1
  %t42 = load i32, ptr %t41, !tbaa !23
  %t45 = call %"std/prelude/text:StringBuilder" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ememberListing(ptr %v0, ptr %s2, ptr %t40, i32 %t42)
  store %"std/prelude/text:StringBuilder" %t45, ptr %l28
  br label %bb12
bb12:
  %t46 = load %"std/prelude/text:StringBuilder", ptr %l28
  store %"std/prelude/text:StringBuilder" %t46, ptr %l6
  %t47 = load ptr, ptr %l0, !tbaa !29
  store ptr %t47, ptr %l29, !tbaa !29
  %t48 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t48, ptr %l30
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load i32, ptr %l1, !tbaa !23
  %t53 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s2, ptr %t49, i32 %t50)
  store { i64, ptr } %t53, ptr %l33
  br label %bb13
bb13:
  %t54 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t55 = extractvalue { i64, ptr } %t54, 0
  %t56 = extractvalue { i64, ptr } %t54, 1
  %t57 = mul i64 %t55, 1
  %t58 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t57)
  call void @llvm.memcpy.p0.p0.i64(ptr %t58, ptr %t56, i64 %t57, i1 false)
  %t59 = insertvalue { i64, ptr } undef, i64 %t55, 0
  %t60 = insertvalue { i64, ptr } %t59, ptr %t58, 1
  store { i64, ptr } %t60, ptr %l34, !tbaa !27
  %t61 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t61, ptr %l35, !tbaa !27
  %t63 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s2, ptr %s2, ptr %l6)
  store { i64, ptr } %t63, ptr %l37
  br label %bb14
bb14:
  %t64 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t65 = extractvalue { i64, ptr } %t64, 0
  %t66 = extractvalue { i64, ptr } %t64, 1
  %t67 = mul i64 %t65, 1
  %t68 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t67)
  call void @llvm.memcpy.p0.p0.i64(ptr %t68, ptr %t66, i64 %t67, i1 false)
  %t69 = insertvalue { i64, ptr } undef, i64 %t65, 0
  %t70 = insertvalue { i64, ptr } %t69, ptr %t68, 1
  %t71 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t72 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t74 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnyNotMember(ptr %s2, ptr %s0, ptr %s2, ptr %s2, { i64, ptr } %t71, { i64, ptr } %t72, { i64, ptr } %t70)
  store %"compiler/diagmsg:Msg" %t74, ptr %l39
  br label %bb15
bb15:
  %t75 = load ptr, ptr %l29, !tbaa !29
  %t76 = load %"compiler/source:Span", ptr %l30
  %t77 = load %"compiler/diagmsg:Msg", ptr %l39
  %t78 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s2, ptr %t75, %"compiler/source:Span" %t76, %"compiler/diagmsg:Msg" %t77)
  store i64 %t78, ptr %l40
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s2)
  br label %bb34
bb17:
  store %olang.scope zeroinitializer, ptr %s5
  %t79 = load ptr, ptr %l0, !tbaa !29
  store ptr %t79, ptr %l42, !tbaa !29
  %t80 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t80, ptr %l43
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = load i32, ptr %l1, !tbaa !23
  %t85 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s5, ptr %t81, i32 %t82)
  store { i64, ptr } %t85, ptr %l46
  br label %bb19
bb18:
  store %olang.scope zeroinitializer, ptr %s7
  %t86 = load ptr, ptr %l0, !tbaa !29
  store ptr %t86, ptr %l69, !tbaa !29
  %t87 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t87, ptr %l70
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t89 = load i32, ptr %l1, !tbaa !23
  %t92 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s7, ptr %t88, i32 %t89)
  store { i64, ptr } %t92, ptr %l73
  br label %bb30
bb19:
  %t93 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t94 = extractvalue { i64, ptr } %t93, 0
  %t95 = extractvalue { i64, ptr } %t93, 1
  %t96 = mul i64 %t94, 1
  %t97 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t96)
  call void @llvm.memcpy.p0.p0.i64(ptr %t97, ptr %t95, i64 %t96, i1 false)
  %t98 = insertvalue { i64, ptr } undef, i64 %t94, 0
  %t99 = insertvalue { i64, ptr } %t98, ptr %t97, 1
  store { i64, ptr } %t99, ptr %l47, !tbaa !27
  %t100 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t100, ptr %l48, !tbaa !27
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/generic:Unmet", ptr %l4, i32 0, i32 2
  %t103 = load i32, ptr %t102, !tbaa !23
  %t106 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %s5, ptr %t101, i32 %t103)
  store { i64, ptr } %t106, ptr %l51
  br label %bb20
bb20:
  %t107 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t108 = extractvalue { i64, ptr } %t107, 0
  %t109 = extractvalue { i64, ptr } %t107, 1
  %t110 = mul i64 %t108, 1
  %t111 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t110)
  call void @llvm.memcpy.p0.p0.i64(ptr %t111, ptr %t109, i64 %t110, i1 false)
  %t112 = insertvalue { i64, ptr } undef, i64 %t108, 0
  %t113 = insertvalue { i64, ptr } %t112, ptr %t111, 1
  %t114 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t115 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t117 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnyUnmetMethod(ptr %s5, ptr %s0, ptr %s5, ptr %s5, { i64, ptr } %t114, { i64, ptr } %t115, { i64, ptr } %t113)
  store %"compiler/diagmsg:Msg" %t117, ptr %l53
  br label %bb21
bb21:
  %t118 = load ptr, ptr %l42, !tbaa !29
  %t119 = load %"compiler/source:Span", ptr %l43
  %t120 = load %"compiler/diagmsg:Msg", ptr %l53
  %t121 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s5, ptr %t118, %"compiler/source:Span" %t119, %"compiler/diagmsg:Msg" %t120)
  store i64 %t121, ptr %l54
  br label %bb22
bb22:
  %t122 = load i64, ptr %l54, !tbaa !24
  store i64 %t122, ptr %l7, !tbaa !24
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = getelementptr %"compiler/check:Checker", ptr %t123, i32 0, i32 1
  %t126 = load ptr, ptr %t125, !tbaa !29
  %t127 = load i32, ptr %l1, !tbaa !23
  %t128 = getelementptr %"compiler/generic:Unmet", ptr %l4, i32 0, i32 2
  %t129 = load i32, ptr %t128, !tbaa !23
  %t133 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %t126, i32 %t127, i32 %t129)
  store i64 %t133, ptr %l59
  br label %bb23
bb23:
  %t134 = load i64, ptr %l59, !tbaa !24
  store i64 %t134, ptr %l8, !tbaa !24
  %t135 = load i64, ptr %l8, !tbaa !24
  %t137 = icmp sge i64 %t135, 0
  br i1 %t137, label %bb24, label %bb25
bb24:
  store %olang.scope zeroinitializer, ptr %s6
  %t139 = load ptr, ptr %l0, !tbaa !29
  store ptr %t139, ptr %l62, !tbaa !29
  %t140 = load i64, ptr %l7, !tbaa !24
  store i64 %t140, ptr %l63, !tbaa !24
  %t141 = load i64, ptr %l8, !tbaa !24
  store i64 %t141, ptr %l64, !tbaa !24
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t143 = getelementptr %"compiler/generic:Unmet", ptr %l4, i32 0, i32 2
  %t144 = load i32, ptr %t143, !tbaa !23
  %t147 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t142, i32 %t144)
  store { i64, ptr } %t147, ptr %l67
  br label %bb26
bb25:
  br label %bb29
bb26:
  %t148 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t149 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteOtherSignature(ptr %v0, ptr %s6, { i64, ptr } %t148)
  store %"compiler/diagmsg:Msg" %t149, ptr %l68
  br label %bb27
bb27:
  %t150 = load ptr, ptr %l62, !tbaa !29
  %t151 = load i64, ptr %l63, !tbaa !24
  %t152 = load i64, ptr %l64, !tbaa !24
  %t153 = load %"compiler/diagmsg:Msg", ptr %l68
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoteAt(ptr %v0, ptr %s6, ptr %t150, i64 %t151, i64 %t152, %"compiler/diagmsg:Msg" %t153)
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s6)
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s5)
  br label %bb33
bb30:
  %t154 = load { i64, ptr }, ptr %l73, !tbaa !27
  %t155 = extractvalue { i64, ptr } %t154, 0
  %t156 = extractvalue { i64, ptr } %t154, 1
  %t157 = mul i64 %t155, 1
  %t158 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t157)
  call void @llvm.memcpy.p0.p0.i64(ptr %t158, ptr %t156, i64 %t157, i1 false)
  %t159 = insertvalue { i64, ptr } undef, i64 %t155, 0
  %t160 = insertvalue { i64, ptr } %t159, ptr %t158, 1
  %t161 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t164 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnyUnmet(ptr %s7, ptr %s0, ptr %s7, { i64, ptr } %t160, { i64, ptr } %t161)
  store %"compiler/diagmsg:Msg" %t164, ptr %l76
  br label %bb31
bb31:
  %t165 = load ptr, ptr %l69, !tbaa !29
  %t166 = load %"compiler/source:Span", ptr %l70
  %t167 = load %"compiler/diagmsg:Msg", ptr %l76
  %t168 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s7, ptr %t165, %"compiler/source:Span" %t166, %"compiler/diagmsg:Msg" %t167)
  store i64 %t168, ptr %l77
  br label %bb32
bb32:
  call void @__olang_scope_close(ptr %s7)
  br label %bb33
bb33:
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { ptr, { i64, ptr }, %"compiler/source:Span" } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattrCallee(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca ptr
  %l7 = alloca i1
  %l18 = alloca { i64, ptr }
  %l20 = alloca i1
  %l21 = alloca i1
  %l23 = alloca i1
  %l24 = alloca ptr
  %l26 = alloca { i64, ptr }
  %l30 = alloca %"compiler/source:Span"
  %l33 = alloca { i64, ptr }
  %l36 = alloca { ptr, { i64, ptr }, %"compiler/source:Span" }
  %l37 = alloca { i64, ptr }
  %l38 = alloca i64
  %l39 = alloca { i64, ptr }
  %l40 = alloca ptr
  %l41 = alloca { i64, ptr }
  %l42 = alloca { i64, ptr }
  %l44 = alloca %"compiler/source:Span"
  %l45 = alloca { ptr, { i64, ptr }, %"compiler/source:Span" }
  %l46 = alloca { i64, ptr }
  %l47 = alloca i64
  %l48 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %rv = alloca { ptr, { i64, ptr }, %"compiler/source:Span" }
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 14
  store i1 %t8, ptr %l7, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l7, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l2
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t18, i32 0, i32 1
  %t20 = load ptr, ptr %t19
  store ptr %t20, ptr %l3, !tbaa !29
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = getelementptr { i64, [4 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t24, i32 0, i32 2
  %t26 = load i32, ptr %t25
  store i32 %t26, ptr %l4, !tbaa !23
  br label %bb5
bb4:
  br label %bb16
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t29 = load i32, ptr %l4, !tbaa !23
  %t32 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %a0, i32 %t29)
  store { i64, ptr } %t32, ptr %l18
  br label %bb6
bb6:
  %t33 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t33, ptr %l5, !tbaa !27
  %t34 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t36 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s1, { i64, ptr } %t34, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d0, i32 0, i32 1) })
  store i1 %t36, ptr %l20
  br label %bb7
bb7:
  %t37 = load i1, ptr %l20, !tbaa !21
  br i1 %t37, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb11
bb9:
  %t38 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t40 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s1, { i64, ptr } %t38, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d1, i32 0, i32 1) })
  store i1 %t40, ptr %l23
  br label %bb10
bb10:
  %t41 = load i1, ptr %l23, !tbaa !21
  store i1 %t41, ptr %l21, !tbaa !21
  br label %bb11
bb11:
  %t42 = load i1, ptr %l21, !tbaa !21
  br i1 %t42, label %bb12, label %bb13
bb12:
  %t43 = load ptr, ptr %l3, !tbaa !29
  store ptr %t43, ptr %l24, !tbaa !29
  %t44 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t46 = extractvalue { i64, ptr } %t44, 1
  %t47 = extractvalue { i64, ptr } %t44, 0
  %t48 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t47)
  call void @olang_textcopy(ptr %t48, ptr %t46, i64 %t47)
  %t49 = insertvalue { i64, ptr } undef, i64 %t47, 0
  %t50 = insertvalue { i64, ptr } %t49, ptr %t48, 1
  store { i64, ptr } %t50, ptr %l26, !tbaa !27
  %t51 = load %"compiler/source:Span", ptr %l2
  %t52 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t54 = extractvalue { i64, ptr } %t52, 0
  %t57 = call %"compiler/source:Span" @compiler_2fcheck_2ememberSpan(%"compiler/source:Span" %t51, i64 %t54)
  store %"compiler/source:Span" %t57, ptr %l30
  br label %bb14
bb13:
  br label %bb15
bb14:
  %t58 = load ptr, ptr %l24, !tbaa !29
  %t59 = insertvalue { ptr, { i64, ptr }, %"compiler/source:Span" } undef, ptr %t58, 0
  %t60 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t61 = insertvalue { ptr, { i64, ptr }, %"compiler/source:Span" } %t59, { i64, ptr } %t60, 1
  %t62 = load %"compiler/source:Span", ptr %l30
  %t63 = insertvalue { ptr, { i64, ptr }, %"compiler/source:Span" } %t61, %"compiler/source:Span" %t62, 2
  call void @__olang_scope_close(ptr %s1)
  store { ptr, { i64, ptr }, %"compiler/source:Span" } %t63, ptr %rv
  br label %ret
bb15:
  %t65 = load ptr, ptr %l1, !tbaa !29
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, ptr %l33, !tbaa !27
  %t66 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t67 = load %"compiler/source:Span", ptr %l2
  %t69 = insertvalue { ptr, { i64, ptr }, %"compiler/source:Span" } undef, ptr %t65, 0
  %t71 = insertvalue { ptr, { i64, ptr }, %"compiler/source:Span" } %t69, { i64, ptr } %t66, 1
  %t73 = insertvalue { ptr, { i64, ptr }, %"compiler/source:Span" } %t71, %"compiler/source:Span" %t67, 2
  store { ptr, { i64, ptr }, %"compiler/source:Span" } %t73, ptr %l36
  %t74 = getelementptr { ptr, { i64, ptr }, %"compiler/source:Span" }, ptr %l36, i32 0, i32 1
  %t75 = load { i64, ptr }, ptr %t74, !tbaa !27
  store { i64, ptr } %t75, ptr %l37, !tbaa !27
  %t76 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t77 = extractvalue { i64, ptr } %t76, 0
  store i64 %t77, ptr %l38, !tbaa !24
  %t78 = load i64, ptr %l38, !tbaa !24
  %t79 = mul i64 %t78, 1
  %t80 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t79)
  %t81 = insertvalue { i64, ptr } undef, i64 %t78, 0
  %t82 = insertvalue { i64, ptr } %t81, ptr %t80, 1
  store { i64, ptr } %t82, ptr %l39, !tbaa !27
  %t83 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t84 = load ptr, ptr %t83, !tbaa !27
  %t85 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !27
  %t87 = load i64, ptr %l38, !tbaa !24
  %t88 = mul i64 %t87, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t84, ptr %t86, i64 %t88, i1 false)
  %t89 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t90 = getelementptr { ptr, { i64, ptr }, %"compiler/source:Span" }, ptr %l36, i32 0, i32 1
  store { i64, ptr } %t89, ptr %t90, !tbaa !27
  call void @__olang_scope_close(ptr %s1)
  %t91 = load { ptr, { i64, ptr }, %"compiler/source:Span" }, ptr %l36
  store { ptr, { i64, ptr }, %"compiler/source:Span" } %t91, ptr %rv
  br label %ret
bb16:
  br i1 true, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t92 = load ptr, ptr %l1, !tbaa !29
  store ptr %t92, ptr %l40, !tbaa !29
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) }, ptr %l41, !tbaa !27
  %t93 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t93, ptr %l42, !tbaa !27
  %t94 = load ptr, ptr %l1, !tbaa !29
  %t96 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t94)
  store %"compiler/source:Span" %t96, ptr %l44
  br label %bb20
bb20:
  %t97 = load ptr, ptr %l40, !tbaa !29
  %t98 = insertvalue { ptr, { i64, ptr }, %"compiler/source:Span" } undef, ptr %t97, 0
  %t99 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t100 = insertvalue { ptr, { i64, ptr }, %"compiler/source:Span" } %t98, { i64, ptr } %t99, 1
  %t101 = load %"compiler/source:Span", ptr %l44
  %t102 = insertvalue { ptr, { i64, ptr }, %"compiler/source:Span" } %t100, %"compiler/source:Span" %t101, 2
  store { ptr, { i64, ptr }, %"compiler/source:Span" } %t102, ptr %l45
  %t103 = getelementptr { ptr, { i64, ptr }, %"compiler/source:Span" }, ptr %l45, i32 0, i32 1
  %t104 = load { i64, ptr }, ptr %t103, !tbaa !27
  store { i64, ptr } %t104, ptr %l46, !tbaa !27
  %t105 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t106 = extractvalue { i64, ptr } %t105, 0
  store i64 %t106, ptr %l47, !tbaa !24
  %t107 = load i64, ptr %l47, !tbaa !24
  %t108 = mul i64 %t107, 1
  %t109 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t108)
  %t110 = insertvalue { i64, ptr } undef, i64 %t107, 0
  %t111 = insertvalue { i64, ptr } %t110, ptr %t109, 1
  store { i64, ptr } %t111, ptr %l48, !tbaa !27
  %t112 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !27
  %t114 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t115 = load ptr, ptr %t114, !tbaa !27
  %t116 = load i64, ptr %l47, !tbaa !24
  %t117 = mul i64 %t116, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t113, ptr %t115, i64 %t117, i1 false)
  %t118 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t119 = getelementptr { ptr, { i64, ptr }, %"compiler/source:Span" }, ptr %l45, i32 0, i32 1
  store { i64, ptr } %t118, ptr %t119, !tbaa !27
  %t120 = load { ptr, { i64, ptr }, %"compiler/source:Span" }, ptr %l45
  store { ptr, { i64, ptr }, %"compiler/source:Span" } %t120, ptr %rv
  br label %ret
bb21:
  call void @__olang_check_failed(ptr @olang_loc_e8df0bdf3cd721f8_b505cb518d2727a4)
  unreachable
ret:
  %rr = load { ptr, { i64, ptr }, %"compiler/source:Span" }, ptr %rv
  ret { ptr, { i64, ptr }, %"compiler/source:Span" } %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattrsChecked(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca i32
  %l9 = alloca ptr
  %l10 = alloca i64
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l23 = alloca { i64, ptr }
  %l30 = alloca i32
  %l35 = alloca i64
  %l37 = alloca i64
  %l42 = alloca i32
  %l48 = alloca i1
  %l52 = alloca ptr
  %l53 = alloca ptr
  %l55 = alloca %"compiler/source:Span"
  %l58 = alloca { i64, ptr }
  %l60 = alloca %"compiler/diagmsg:Msg"
  %l61 = alloca i64
  %s0 = alloca %olang.scope
  %s7 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp eq i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t7, ptr %l15
  br label %bb4
bb4:
  %t8 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %l3
  %t9 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t9, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t11 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t11, 0
  store i64 %t13, ptr %l6, !tbaa !24
  br label %bb5
bb5:
  %t15 = load i64, ptr %l5, !tbaa !24
  %t16 = load i64, ptr %l6, !tbaa !24
  %t19 = icmp slt i64 %t15, %t16
  %t21 = xor i1 %t19, true
  br i1 %t21, label %bb6, label %bb7
bb6:
  br label %bb32
bb7:
  br label %bb8
bb8:
  %t23 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t23, ptr %l23, !tbaa !27
  %t24 = load i64, ptr %l5, !tbaa !24
  %t26 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = getelementptr ptr, ptr %t27, i64 %t24
  %t29 = load ptr, ptr %t28, !tbaa !39
  store ptr %t29, ptr %l7, !tbaa !29
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load i64, ptr %l1, !tbaa !24
  %t33 = load ptr, ptr %l7, !tbaa !29
  %t35 = getelementptr %"compiler/ast:Attr", ptr %t33, i32 0, i32 2
  %t36 = load i32, ptr %t35, !tbaa !23
  %t40 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eglobalType(ptr %v0, ptr %t31, i64 %t32, i32 %t36)
  store i32 %t40, ptr %l30
  br label %bb9
bb9:
  %t41 = load i32, ptr %l30, !tbaa !23
  store i32 %t41, ptr %l8, !tbaa !23
  %t42 = load i32, ptr %l8, !tbaa !23
  %t43 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t46 = icmp eq i32 %t42, %t43
  br i1 %t46, label %bb10, label %bb11
bb10:
  br label %bb31
bb11:
  br label %bb12
bb12:
  store ptr %l3, ptr %l9, !tbaa !29
  store i64 0, ptr %l10, !tbaa !24
  br label %bb13
bb13:
  %t49 = load i64, ptr %l10, !tbaa !24
  store i64 %t49, ptr %l35, !tbaa !24
  %t50 = load ptr, ptr %l9, !tbaa !29
  %t52 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %t50)
  store i64 %t52, ptr %l37
  br label %bb14
bb14:
  %t53 = load i64, ptr %l35, !tbaa !24
  %t54 = load i64, ptr %l37, !tbaa !24
  %t55 = icmp slt i64 %t53, %t54
  %t57 = xor i1 %t55, true
  br i1 %t57, label %bb15, label %bb16
bb15:
  br label %bb29
bb16:
  br label %bb17
bb17:
  %t59 = load ptr, ptr %l9, !tbaa !29
  %t60 = load i64, ptr %l10, !tbaa !24
  %t63 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %t59, i64 %t60)
  store i32 %t63, ptr %l42
  br label %bb18
bb18:
  %t64 = load i32, ptr %l42, !tbaa !23
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/check:Checker", ptr %t65, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !29
  %t70 = getelementptr %"compiler/generic:Program", ptr %t68, i32 0, i32 2
  %t72 = load i32, ptr %l8, !tbaa !23
  %t76 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t70, i32 %t64, i32 %t72)
  store i1 %t76, ptr %l48
  br label %bb19
bb19:
  %t77 = load i1, ptr %l48, !tbaa !21
  br i1 %t77, label %bb20, label %bb21
bb20:
  store %olang.scope zeroinitializer, ptr %s7
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t79 = load i64, ptr %l1, !tbaa !24
  %t80 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t84 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v0, ptr %t78, i64 -1, i64 %t79, i32 %t80, i32 0)
  store ptr %t84, ptr %l52
  br label %bb22
bb21:
  br label %bb27
bb22:
  %t85 = load ptr, ptr %l0, !tbaa !29
  store ptr %t85, ptr %l53, !tbaa !29
  %t86 = load ptr, ptr %l7, !tbaa !29
  %t88 = getelementptr %"compiler/ast:Attr", ptr %t86, i32 0, i32 0
  %t89 = load %"compiler/source:Span", ptr %t88
  store %"compiler/source:Span" %t89, ptr %l55
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t91 = load i32, ptr %l8, !tbaa !23
  %t94 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s7, ptr %t90, i32 %t91)
  store { i64, ptr } %t94, ptr %l58
  br label %bb23
bb23:
  %t95 = load { i64, ptr }, ptr %l58, !tbaa !27
  %t96 = extractvalue { i64, ptr } %t95, 0
  %t97 = extractvalue { i64, ptr } %t95, 1
  %t98 = mul i64 %t96, 1
  %t99 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t98)
  call void @llvm.memcpy.p0.p0.i64(ptr %t99, ptr %t97, i64 %t98, i1 false)
  %t100 = insertvalue { i64, ptr } undef, i64 %t96, 0
  %t101 = insertvalue { i64, ptr } %t100, ptr %t99, 1
  %t103 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAttrTwice(ptr %s7, ptr %s7, { i64, ptr } %t101)
  store %"compiler/diagmsg:Msg" %t103, ptr %l60
  br label %bb24
bb24:
  %t104 = load ptr, ptr %l53, !tbaa !29
  %t105 = load %"compiler/source:Span", ptr %l55
  %t106 = load %"compiler/diagmsg:Msg", ptr %l60
  %t107 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s7, ptr %t104, %"compiler/source:Span" %t105, %"compiler/diagmsg:Msg" %t106)
  store i64 %t107, ptr %l61
  br label %bb25
bb25:
  %t108 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t108)
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s7)
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t110 = load i64, ptr %l10, !tbaa !24
  %t112 = add i64 %t110, 1
  store i64 %t112, ptr %l10, !tbaa !24
  br label %bb13
bb29:
  %t114 = load i32, ptr %l8, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l3, i32 %t114)
  br label %bb30
bb30:
  br label %bb31
bb31:
  %t117 = load i64, ptr %l5, !tbaa !24
  %t119 = add i64 %t117, 1
  store i64 %t119, ptr %l5, !tbaa !24
  br label %bb5
bb32:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eblockOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca { i64, i64, i64 }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l11 = alloca i64
  %l15 = alloca { i64, i64, i64 }
  %l26 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 37
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l11
  br label %bb1
bb1:
  %t6 = load i64, ptr %l11, !tbaa !24
  store i64 %t6, ptr %l4, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t13 = call { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %t7, i32 %a2, %"compiler/source:Span" %a3)
  store { i64, i64, i64 } %t13, ptr %l15
  br label %bb2
bb2:
  %t14 = load { i64, i64, i64 }, ptr %l15
  store { i64, i64, i64 } %t14, ptr %l5
  %t15 = getelementptr { i64, i64, i64 }, ptr %l5, i32 0, i32 0
  %t16 = load i64, ptr %t15, !tbaa !24
  store i64 %t16, ptr %l6, !tbaa !24
  %t18 = getelementptr { i64, i64, i64 }, ptr %l5, i32 0, i32 1
  %t19 = load i64, ptr %t18, !tbaa !24
  store i64 %t19, ptr %l7, !tbaa !24
  %t21 = getelementptr { i64, i64, i64 }, ptr %l5, i32 0, i32 2
  %t22 = load i64, ptr %t21, !tbaa !24
  store i64 %t22, ptr %l8, !tbaa !24
  %t24 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estmtsOf(ptr %v0, ptr %v1, ptr %t24, { i64, ptr } %a1)
  br label %bb3
bb3:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load i64, ptr %l6, !tbaa !24
  %t30 = load i64, ptr %l7, !tbaa !24
  %t31 = load i64, ptr %l8, !tbaa !24
  %t32 = load i64, ptr %l4, !tbaa !24
  %t38 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v2, ptr %t28, i64 %t29, i64 %t30, i64 %t31, i64 %t32)
  store ptr %t38, ptr %l26
  br label %bb4
bb4:
  %t39 = load ptr, ptr %l26, !tbaa !29
  store ptr %t39, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebothSpellings(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2, { i64, ptr } %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l11 = alloca i1
  %l12 = alloca { i64, ptr }
  %l14 = alloca i1
  %l18 = alloca { i64, ptr }
  %l20 = alloca i64
  %l24 = alloca { i64, ptr }
  %l26 = alloca ptr
  %l27 = alloca i32
  %l33 = alloca i32
  %l34 = alloca i64
  %l37 = alloca i1
  %l40 = alloca i1
  %l43 = alloca ptr
  %l46 = alloca ptr
  %l50 = alloca i32
  %l51 = alloca i32
  %l52 = alloca { i64, ptr }
  %l57 = alloca ptr
  %l58 = alloca ptr
  %l62 = alloca ptr
  %l63 = alloca %"compiler/source:Span"
  %l64 = alloca ptr
  %l69 = alloca i32
  %l70 = alloca { i64, ptr }
  %l75 = alloca %"compiler/diagmsg:Msg"
  %l76 = alloca i64
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i32 %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp eq i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb4
bb2:
  %t7 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t7, ptr %l12, !tbaa !27
  %t8 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !27
  %t10 = getelementptr i8, ptr %t9, i64 0
  %t11 = load i8, ptr %t10, !tbaa !32
  %t13 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %t11)
  store i1 %t13, ptr %l14
  br label %bb3
bb3:
  %t14 = load i1, ptr %l14, !tbaa !21
  %t15 = xor i1 %t14, true
  store i1 %t15, ptr %l11, !tbaa !21
  br label %bb4
bb4:
  %t17 = load i1, ptr %l11, !tbaa !21
  br i1 %t17, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb6:
  br label %bb7
bb7:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t22 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoperatorRole(ptr %v0, ptr %v1, ptr %s0, ptr %t18, { i64, ptr } %t19)
  store { i64, ptr } %t22, ptr %l18
  br label %bb8
bb8:
  %t23 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t24 = extractvalue { i64, ptr } %t23, 0
  %t25 = extractvalue { i64, ptr } %t23, 1
  %t26 = mul i64 %t24, 1
  %t27 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t26)
  call void @llvm.memcpy.p0.p0.i64(ptr %t27, ptr %t25, i64 %t26, i1 false)
  %t28 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t29 = insertvalue { i64, ptr } %t28, ptr %t27, 1
  %t31 = call i64 @compiler_2fcheck_2eprotocolArity(ptr %s0, { i64, ptr } %t29)
  store i64 %t31, ptr %l20
  br label %bb9
bb9:
  %t32 = load i64, ptr %l20, !tbaa !24
  store i64 %t32, ptr %l5, !tbaa !24
  %t33 = load i64, ptr %l5, !tbaa !24
  %t35 = icmp eq i64 %t33, -2
  br i1 %t35, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb11:
  br label %bb12
bb12:
  %t37 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t39 = call { i64, ptr } @compiler_2fcheck_2elowerFirst(ptr %v1, ptr %s0, { i64, ptr } %t37)
  store { i64, ptr } %t39, ptr %l24
  br label %bb13
bb13:
  %t40 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t40, ptr %l6, !tbaa !27
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/check:Checker", ptr %t41, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !29
  store ptr %t44, ptr %l26, !tbaa !29
  %t45 = load i32, ptr %l2, !tbaa !23
  store i32 %t45, ptr %l27, !tbaa !23
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/check:Checker", ptr %t46, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !29
  %t51 = getelementptr %"compiler/generic:Program", ptr %t49, i32 0, i32 0
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t54 = getelementptr %"compiler/load:Loader", ptr %t52, i32 0, i32 3
  %t55 = load ptr, ptr %t54, !tbaa !29
  %t56 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t59 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %s0, ptr %t55, { i64, ptr } %t56)
  store i32 %t59, ptr %l33
  br label %bb14
bb14:
  %t60 = load ptr, ptr %l26, !tbaa !29
  %t61 = load i32, ptr %l27, !tbaa !23
  %t62 = load i32, ptr %l33, !tbaa !23
  %t63 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %t60, i32 %t61, i32 %t62)
  store i64 %t63, ptr %l34
  br label %bb15
bb15:
  %t64 = load i64, ptr %l34, !tbaa !24
  store i64 %t64, ptr %l7, !tbaa !24
  %t65 = load i64, ptr %l7, !tbaa !24
  %t67 = icmp slt i64 %t65, 0
  br i1 %t67, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l37, !tbaa !21
  br label %bb24
bb17:
  %t69 = load i64, ptr %l5, !tbaa !24
  %t71 = icmp sge i64 %t69, 0
  br i1 %t71, label %bb18, label %bb19
bb18:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/check:Checker", ptr %t73, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !29
  %t78 = getelementptr %"compiler/generic:Program", ptr %t76, i32 0, i32 2
  store ptr %t78, ptr %l43, !tbaa !29
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/check:Checker", ptr %t79, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !29
  %t84 = getelementptr %"compiler/generic:Program", ptr %t82, i32 0, i32 2
  store ptr %t84, ptr %l46, !tbaa !29
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/check:Checker", ptr %t85, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !29
  %t89 = load i64, ptr %l7, !tbaa !24
  %t92 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t88, i64 %t89)
  store i32 %t92, ptr %l50
  br label %bb20
bb19:
  store i1 false, ptr %l40, !tbaa !21
  br label %bb23
bb20:
  %t93 = load ptr, ptr %l46, !tbaa !29
  %t94 = load i32, ptr %l50, !tbaa !23
  %t95 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t93, i32 %t94)
  store i32 %t95, ptr %l51
  br label %bb21
bb21:
  %t96 = load ptr, ptr %l43, !tbaa !29
  %t97 = load i32, ptr %l51, !tbaa !23
  %t98 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t96, i32 %t97)
  store { i64, ptr } %t98, ptr %l52
  br label %bb22
bb22:
  %t99 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t100 = extractvalue { i64, ptr } %t99, 0
  %t102 = sub i64 %t100, 1
  %t106 = icmp ne i64 %t102, %a4
  store i1 %t106, ptr %l40, !tbaa !21
  br label %bb23
bb23:
  %t108 = load i1, ptr %l40, !tbaa !21
  store i1 %t108, ptr %l37, !tbaa !21
  br label %bb24
bb24:
  %t109 = load i1, ptr %l37, !tbaa !21
  br i1 %t109, label %bb25, label %bb26
bb25:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb26:
  br label %bb27
bb27:
  %t110 = load ptr, ptr %l0, !tbaa !29
  store ptr %t110, ptr %l57, !tbaa !29
  %t111 = load ptr, ptr %l0, !tbaa !29
  store ptr %t111, ptr %l58, !tbaa !29
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"compiler/check:Checker", ptr %t112, i32 0, i32 1
  %t115 = load ptr, ptr %t114, !tbaa !29
  %t119 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t115, i64 %a1)
  store ptr %t119, ptr %l62
  br label %bb28
bb28:
  %t120 = load ptr, ptr %l58, !tbaa !29
  %t121 = load ptr, ptr %l62, !tbaa !29
  %t122 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enameSpan(ptr %v0, ptr %v0, ptr %t120, ptr %t121)
  store %"compiler/source:Span" %t122, ptr %l63
  br label %bb29
bb29:
  %t123 = load ptr, ptr %l0, !tbaa !29
  store ptr %t123, ptr %l64, !tbaa !29
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t126 = getelementptr %"compiler/check:Checker", ptr %t124, i32 0, i32 1
  %t127 = load ptr, ptr %t126, !tbaa !29
  %t129 = getelementptr %"compiler/generic:Program", ptr %t127, i32 0, i32 2
  %t130 = load i32, ptr %l2, !tbaa !23
  %t133 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t129, i32 %t130)
  store i32 %t133, ptr %l69
  br label %bb30
bb30:
  %t134 = load ptr, ptr %l64, !tbaa !29
  %t135 = load i32, ptr %l69, !tbaa !23
  %t136 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s0, ptr %t134, i32 %t135)
  store { i64, ptr } %t136, ptr %l70
  br label %bb31
bb31:
  %t137 = load { i64, ptr }, ptr %l70, !tbaa !27
  %t138 = extractvalue { i64, ptr } %t137, 0
  %t139 = extractvalue { i64, ptr } %t137, 1
  %t140 = mul i64 %t138, 1
  %t141 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t140)
  call void @llvm.memcpy.p0.p0.i64(ptr %t141, ptr %t139, i64 %t140, i1 false)
  %t142 = insertvalue { i64, ptr } undef, i64 %t138, 0
  %t143 = insertvalue { i64, ptr } %t142, ptr %t141, 1
  %t144 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t145 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t146 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t151 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eProtocolBothSpellings(ptr %s0, ptr %v1, ptr %v1, ptr %s0, ptr %s0, { i64, ptr } %t143, { i64, ptr } %t144, { i64, ptr } %t145, { i64, ptr } %t146)
  store %"compiler/diagmsg:Msg" %t151, ptr %l75
  br label %bb32
bb32:
  %t152 = load ptr, ptr %l57, !tbaa !29
  %t153 = load %"compiler/source:Span", ptr %l63
  %t154 = load %"compiler/diagmsg:Msg", ptr %l75
  %t155 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s0, ptr %t152, %"compiler/source:Span" %t153, %"compiler/diagmsg:Msg" %t154)
  store i64 %t155, ptr %l76
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecall(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, { i64, ptr } %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i32
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca i32
  %l7 = alloca %"compiler/names:Ref"
  %l8 = alloca i32
  %l9 = alloca { i64, ptr }
  %l10 = alloca i32
  %l11 = alloca %"compiler/generic:Desc"
  %l12 = alloca i32
  %l13 = alloca i32
  %l14 = alloca %"compiler/source:Span"
  %l15 = alloca ptr
  %l16 = alloca i32
  %l17 = alloca %"compiler/names:Ref"
  %l18 = alloca %"compiler/source:Span"
  %l19 = alloca i32
  %l20 = alloca ptr
  %l21 = alloca i32
  %l22 = alloca i1
  %l23 = alloca i32
  %l24 = alloca i32
  %l25 = alloca i32
  %l26 = alloca i32
  %l27 = alloca %"compiler/check:reflList"
  %l28 = alloca i32
  %l29 = alloca ptr
  %l30 = alloca %"compiler/source:Span"
  %l31 = alloca %"compiler/source:Span"
  %l32 = alloca i64
  %l33 = alloca %"compiler/source:Span"
  %l34 = alloca ptr
  %l35 = alloca { i64, ptr }
  %l36 = alloca ptr
  %l37 = alloca ptr
  %l40 = alloca { i64, ptr }
  %l46 = alloca ptr
  %l47 = alloca ptr
  %l48 = alloca i1
  %l57 = alloca ptr
  %l59 = alloca ptr
  %l63 = alloca %"compiler/names:Ref"
  %l66 = alloca ptr
  %l67 = alloca %"compiler/source:Span"
  %l68 = alloca %"compiler/source:Span"
  %l73 = alloca i64
  %l74 = alloca { i64, ptr }
  %l77 = alloca { i64, ptr }
  %l81 = alloca ptr
  %l84 = alloca ptr
  %l85 = alloca %"compiler/source:Span"
  %l88 = alloca i32
  %l90 = alloca ptr
  %l95 = alloca i32
  %l98 = alloca i1
  %l101 = alloca ptr
  %l102 = alloca %"compiler/source:Span"
  %l103 = alloca %"compiler/source:Span"
  %l108 = alloca i32
  %l111 = alloca ptr
  %l116 = alloca ptr
  %l122 = alloca ptr
  %l125 = alloca ptr
  %l128 = alloca { i64, ptr }
  %l129 = alloca { i64, ptr }
  %l133 = alloca ptr
  %l134 = alloca %"compiler/source:Span"
  %l137 = alloca { i64, ptr }
  %l139 = alloca %"compiler/diagmsg:Msg"
  %l140 = alloca i64
  %l145 = alloca i32
  %l148 = alloca ptr
  %l149 = alloca %"compiler/source:Span"
  %l152 = alloca { i64, ptr }
  %l155 = alloca %"compiler/diagmsg:Msg"
  %l156 = alloca i64
  %l157 = alloca ptr
  %l158 = alloca %"compiler/source:Span"
  %l161 = alloca { i64, ptr }
  %l164 = alloca %"compiler/diagmsg:Msg"
  %l165 = alloca i64
  %l170 = alloca ptr
  %l175 = alloca i32
  %l183 = alloca ptr
  %l186 = alloca i1
  %l190 = alloca %"compiler/generic:Desc"
  %l194 = alloca ptr
  %l195 = alloca %"compiler/source:Span"
  %l196 = alloca %"compiler/source:Span"
  %l200 = alloca %"compiler/generic:Desc"
  %l202 = alloca ptr
  %l205 = alloca i1
  %l209 = alloca %"compiler/generic:Desc"
  %l216 = alloca %"compiler/generic:Desc"
  %l220 = alloca i32
  %l223 = alloca i1
  %l229 = alloca ptr
  %l234 = alloca i32
  %l242 = alloca ptr
  %l243 = alloca ptr
  %l244 = alloca %"compiler/source:Span"
  %l245 = alloca %"compiler/source:Span"
  %l246 = alloca i32
  %l251 = alloca { i64, ptr }
  %l252 = alloca { i64, ptr }
  %l254 = alloca i32
  %l255 = alloca { i64, ptr }
  %l259 = alloca ptr
  %l262 = alloca i1
  %l265 = alloca ptr
  %l266 = alloca %"compiler/source:Span"
  %l267 = alloca %"compiler/source:Span"
  %l272 = alloca ptr
  %l274 = alloca ptr
  %l279 = alloca i32
  %l282 = alloca i1
  %l287 = alloca i1
  %l288 = alloca i1
  %l293 = alloca i1
  %l294 = alloca i1
  %l302 = alloca ptr
  %l305 = alloca i1
  %l308 = alloca i1
  %l314 = alloca ptr
  %l317 = alloca i1
  %l322 = alloca i32
  %l326 = alloca ptr
  %l327 = alloca %"compiler/source:Span"
  %l330 = alloca { i64, ptr }
  %l332 = alloca %"compiler/diagmsg:Msg"
  %l333 = alloca i64
  %l338 = alloca ptr
  %l343 = alloca ptr
  %l344 = alloca ptr
  %l345 = alloca i1
  %l356 = alloca ptr
  %l358 = alloca ptr
  %l362 = alloca %"compiler/names:Ref"
  %l363 = alloca %"compiler/source:Span"
  %l366 = alloca { i64, ptr }
  %l368 = alloca %"compiler/source:Span"
  %l371 = alloca ptr
  %l372 = alloca %"compiler/source:Span"
  %l373 = alloca %"compiler/source:Span"
  %l378 = alloca i64
  %l379 = alloca { i64, ptr }
  %l382 = alloca { i64, ptr }
  %l386 = alloca ptr
  %l391 = alloca i32
  %l394 = alloca i1
  %l397 = alloca ptr
  %l398 = alloca %"compiler/source:Span"
  %l399 = alloca %"compiler/source:Span"
  %l404 = alloca i32
  %l407 = alloca ptr
  %l412 = alloca ptr
  %l418 = alloca ptr
  %l426 = alloca ptr
  %l427 = alloca ptr
  %l428 = alloca %"compiler/source:Span"
  %l429 = alloca %"compiler/source:Span"
  %l430 = alloca ptr
  %l431 = alloca i32
  %l432 = alloca { i64, ptr }
  %l437 = alloca ptr
  %l444 = alloca i32
  %l447 = alloca i1
  %l450 = alloca i1
  %l451 = alloca i1
  %l455 = alloca i1
  %l458 = alloca i32
  %l461 = alloca i1
  %l466 = alloca i32
  %l471 = alloca { i64, ptr }
  %l472 = alloca i1
  %l473 = alloca i1
  %l478 = alloca i32
  %l486 = alloca ptr
  %l489 = alloca i1
  %l494 = alloca i1
  %l495 = alloca i1
  %l500 = alloca i1
  %l501 = alloca i1
  %l509 = alloca ptr
  %l512 = alloca i1
  %l515 = alloca i1
  %l521 = alloca ptr
  %l524 = alloca ptr
  %l525 = alloca %"compiler/source:Span"
  %l528 = alloca { i64, ptr }
  %l530 = alloca %"compiler/diagmsg:Msg"
  %l531 = alloca i64
  %l536 = alloca ptr
  %l539 = alloca i32
  %l544 = alloca i32
  %l547 = alloca i1
  %l550 = alloca { i64, ptr }
  %l551 = alloca i1
  %l552 = alloca i1
  %l555 = alloca i1
  %l556 = alloca i1
  %l560 = alloca i1
  %l567 = alloca ptr
  %l570 = alloca i1
  %l573 = alloca i1
  %l575 = alloca i1
  %l578 = alloca i1
  %l579 = alloca i1
  %l582 = alloca i32
  %l595 = alloca ptr
  %l598 = alloca ptr
  %l599 = alloca %"compiler/source:Span"
  %l600 = alloca %"compiler/source:Span"
  %l601 = alloca i32
  %l602 = alloca i32
  %l603 = alloca { i64, ptr }
  %l607 = alloca ptr
  %l610 = alloca i32
  %l613 = alloca i1
  %l618 = alloca i32
  %l628 = alloca ptr
  %l631 = alloca %"compiler/check:reflList"
  %l635 = alloca { i64, ptr }
  %l636 = alloca i1
  %l637 = alloca i1
  %l646 = alloca ptr
  %l647 = alloca ptr
  %l648 = alloca %"compiler/source:Span"
  %l650 = alloca i32
  %l651 = alloca ptr
  %l653 = alloca %"compiler/source:Span"
  %l655 = alloca { i64, ptr }
  %l657 = alloca ptr
  %l658 = alloca ptr
  %l660 = alloca %"compiler/source:Span"
  %l661 = alloca ptr
  %l663 = alloca %"compiler/source:Span"
  %l664 = alloca { i64, ptr }
  %l667 = alloca %"compiler/diagmsg:Msg"
  %l668 = alloca i64
  %l673 = alloca ptr
  %l676 = alloca i32
  %l679 = alloca i1
  %l682 = alloca { i64, ptr }
  %l683 = alloca i1
  %l689 = alloca ptr
  %l695 = alloca ptr
  %l700 = alloca ptr
  %l704 = alloca ptr
  %l707 = alloca i1
  %l710 = alloca i1
  %l711 = alloca i64
  %l712 = alloca ptr
  %l713 = alloca i1
  %l720 = alloca ptr
  %l722 = alloca ptr
  %l726 = alloca %"compiler/names:Ref"
  %l728 = alloca ptr
  %l729 = alloca i1
  %l736 = alloca ptr
  %l738 = alloca ptr
  %l742 = alloca %"compiler/names:Ref"
  %l746 = alloca i1
  %l750 = alloca i1
  %l760 = alloca ptr
  %l761 = alloca ptr
  %l762 = alloca %"compiler/source:Span"
  %l763 = alloca ptr
  %l764 = alloca i32
  %l765 = alloca %"compiler/source:Span"
  %l766 = alloca { i64, ptr }
  %l769 = alloca { i64, ptr }
  %l770 = alloca %"compiler/source:Span"
  %l771 = alloca ptr
  %l772 = alloca ptr
  %l773 = alloca i1
  %l787 = alloca ptr
  %l799 = alloca ptr
  %l803 = alloca ptr
  %l804 = alloca %"compiler/source:Span"
  %l805 = alloca ptr
  %l807 = alloca %"compiler/source:Span"
  %l808 = alloca %"compiler/source:Span"
  %l813 = alloca ptr
  %l815 = alloca ptr
  %s2 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %s23 = alloca %olang.scope
  %s24 = alloca %olang.scope
  %s29 = alloca %olang.scope
  %s36 = alloca %olang.scope
  %s42 = alloca %olang.scope
  %s43 = alloca %olang.scope
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
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t5 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2espreadArgs(ptr %v0, ptr %v2, ptr %v0, ptr %t1, { i64, ptr } %t2)
  store { i64, ptr } %t5, ptr %l40
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t6, ptr %l3, !tbaa !27
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 151
  %t10 = load i1, ptr %t9, !tbaa !21
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/check:Checker", ptr %t12, i32 0, i32 151
  store i1 false, ptr %t14, !tbaa !21
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load %"compiler/source:Span", ptr %l1
  %t19 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t15, %"compiler/source:Span" %t16)
  store ptr %t19, ptr %l46
  br label %bb4
bb3:
  br label %bb5
bb4:
  %t20 = load ptr, ptr %l46, !tbaa !29
  store ptr %t20, ptr %rv
  br label %ret
bb5:
  %t21 = load ptr, ptr %l2, !tbaa !29
  store ptr %t21, ptr %l47, !tbaa !29
  store i1 false, ptr %l48, !tbaa !21
  %t22 = load ptr, ptr %l47, !tbaa !29
  %t23 = icmp ne ptr %t22, null
  br i1 %t23, label %bb6, label %bb7
bb6:
  %t25 = load ptr, ptr %l47, !tbaa !29
  %t26 = load i64, ptr %t25, !range !{i64 0, i64 30}
  %t28 = icmp eq i64 %t26, 0
  store i1 %t28, ptr %l48, !tbaa !21
  br label %bb7
bb7:
  %t29 = load i1, ptr %l48, !tbaa !21
  br i1 %t29, label %bb8, label %bb9
bb8:
  %t30 = load ptr, ptr %l2, !tbaa !29
  %t32 = getelementptr { i64, [4 x i64] }, ptr %t30, i32 0, i32 1
  %t33 = getelementptr { %"compiler/source:Span", i32 }, ptr %t32, i32 0, i32 0
  %t34 = load %"compiler/source:Span", ptr %t33
  store %"compiler/source:Span" %t34, ptr %l5
  %t36 = load ptr, ptr %l2, !tbaa !29
  %t38 = getelementptr { i64, [4 x i64] }, ptr %t36, i32 0, i32 1
  %t39 = getelementptr { %"compiler/source:Span", i32 }, ptr %t38, i32 0, i32 1
  %t40 = load i32, ptr %t39
  store i32 %t40, ptr %l6, !tbaa !23
  br label %bb10
bb9:
  br label %bb163
bb10:
  store %olang.scope zeroinitializer, ptr %s2
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/check:Checker", ptr %t42, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t47 = getelementptr %"compiler/generic:Program", ptr %t45, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !29
  store ptr %t48, ptr %l57, !tbaa !29
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t49)
  store ptr %t51, ptr %l59
  br label %bb11
bb11:
  %t52 = load ptr, ptr %l59, !tbaa !29
  %t54 = getelementptr %"compiler/check:frame", ptr %t52, i32 0, i32 2
  %t55 = load i64, ptr %t54, !tbaa !24
  %t56 = getelementptr %"compiler/source:Span", ptr %l5, i32 0, i32 0
  %t57 = load i32, ptr %t56, !tbaa !23
  %t58 = load ptr, ptr %l57, !tbaa !29
  %t61 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t58, i64 %t55, i32 %t57)
  store %"compiler/names:Ref" %t61, ptr %l63
  br label %bb12
bb12:
  %t62 = load %"compiler/names:Ref", ptr %l63
  store %"compiler/names:Ref" %t62, ptr %l7
  %t63 = getelementptr %"compiler/names:Ref", ptr %l7, i32 0, i32 0
  %t64 = load i32, ptr %t63, !range !{i32 0, i32 9}
  %t66 = trunc i64 3 to i32
  %t67 = icmp eq i32 %t64, %t66
  br i1 %t67, label %bb13, label %bb14
bb13:
  %t69 = load ptr, ptr %l0, !tbaa !29
  store ptr %t69, ptr %l66, !tbaa !29
  %t70 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t70, ptr %l67
  %t71 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t71, ptr %l68
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"compiler/check:Checker", ptr %t72, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !29
  %t76 = getelementptr %"compiler/names:Ref", ptr %l7, i32 0, i32 1
  %t77 = load i64, ptr %t76, !tbaa !24
  %t78 = load i32, ptr %l6, !tbaa !23
  %t82 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnNamed(ptr %v0, ptr %t75, i64 %t77, i32 %t78)
  store i64 %t82, ptr %l73
  br label %bb15
bb14:
  br label %bb25
bb15:
  %t83 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t83, ptr %l74, !tbaa !27
  %t84 = icmp sge i64 0, 0
  br i1 %t84, label %bb16, label %bb17
bb16:
  %t86 = icmp sle i64 0, 1152921504606846975
  br i1 %t86, label %bb18, label %bb19
bb17:
  call void @__olang_check_failed(ptr @olang_loc_fa331e3bd652ab70_372bcfd3a1e19234)
  unreachable
bb18:
  %t88 = mul i64 0, 8
  %t89 = insertvalue { i64, ptr } undef, i64 0, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t90, ptr %l77, !tbaa !27
  %t91 = icmp sge i64 0, 0
  br i1 %t91, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_fa331e3bd652ab70_372bcfd3a1e19234)
  unreachable
bb20:
  %t93 = icmp sle i64 0, 2305843009213693951
  br i1 %t93, label %bb22, label %bb23
bb21:
  call void @__olang_check_failed(ptr @olang_loc_36fec0e9bab8fe1d_cd1d759a002b5041)
  unreachable
bb22:
  %t95 = mul i64 0, 4
  %t96 = insertvalue { i64, ptr } undef, i64 0, 0
  %t97 = insertvalue { i64, ptr } %t96, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t98 = load ptr, ptr %l66, !tbaa !29
  %t99 = load %"compiler/source:Span", ptr %l67
  %t100 = load %"compiler/source:Span", ptr %l68
  %t101 = load i64, ptr %l73, !tbaa !24
  %t102 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t103 = load { i64, ptr }, ptr %l77, !tbaa !27
  %t105 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v3, ptr %v3, ptr %t98, %"compiler/source:Span" %t99, %"compiler/source:Span" %t100, i64 %t101, ptr null, { i64, ptr } %t102, { i64, ptr } %t103, { i64, ptr } %t97)
  store ptr %t105, ptr %l81
  br label %bb24
bb23:
  call void @__olang_check_failed(ptr @olang_loc_36fec0e9bab8fe1d_cd1d759a002b5041)
  unreachable
bb24:
  call void @__olang_scope_close(ptr %s2)
  %t106 = load ptr, ptr %l81, !tbaa !29
  store ptr %t106, ptr %rv
  br label %ret
bb25:
  %t107 = getelementptr %"compiler/names:Ref", ptr %l7, i32 0, i32 0
  %t108 = load i32, ptr %t107, !range !{i32 0, i32 9}
  %t110 = trunc i64 7 to i32
  %t111 = icmp eq i32 %t108, %t110
  br i1 %t111, label %bb26, label %bb27
bb26:
  %t113 = load ptr, ptr %l0, !tbaa !29
  store ptr %t113, ptr %l84, !tbaa !29
  %t114 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t114, ptr %l85
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t116 = load i32, ptr %l6, !tbaa !23
  %t119 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebuiltinType(ptr %v0, ptr %t115, i32 %t116)
  store i32 %t119, ptr %l88
  br label %bb28
bb27:
  br label %bb30
bb28:
  %t120 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t121 = load ptr, ptr %l84, !tbaa !29
  %t122 = load %"compiler/source:Span", ptr %l85
  %t123 = load i32, ptr %l88, !tbaa !23
  %t125 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econversion(ptr %v0, ptr %v0, ptr %v3, ptr %t121, %"compiler/source:Span" %t122, i32 %t123, { i64, ptr } %t120)
  store ptr %t125, ptr %l90
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s2)
  %t126 = load ptr, ptr %l90, !tbaa !29
  store ptr %t126, ptr %rv
  br label %ret
bb30:
  %t127 = getelementptr %"compiler/names:Ref", ptr %l7, i32 0, i32 0
  %t128 = load i32, ptr %t127, !range !{i32 0, i32 9}
  %t130 = trunc i64 4 to i32
  %t131 = icmp eq i32 %t128, %t130
  br i1 %t131, label %bb31, label %bb32
bb31:
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t134 = load ptr, ptr %l2, !tbaa !29
  %t137 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNamed(ptr %v0, ptr %v1, ptr %t133, ptr %t134)
  store i32 %t137, ptr %l95
  br label %bb33
bb32:
  br label %bb47
bb33:
  %t138 = load i32, ptr %l95, !tbaa !23
  store i32 %t138, ptr %l8, !tbaa !23
  %t139 = load i32, ptr %l8, !tbaa !23
  %t141 = icmp slt i32 %t139, 0
  br i1 %t141, label %bb34, label %bb35
bb34:
  %t143 = getelementptr %"compiler/names:Ref", ptr %l7, i32 0, i32 2
  %t144 = load i64, ptr %t143, !tbaa !24
  %t146 = icmp sge i64 %t144, 0
  store i1 %t146, ptr %l98, !tbaa !21
  br label %bb36
bb35:
  store i1 false, ptr %l98, !tbaa !21
  br label %bb36
bb36:
  %t148 = load i1, ptr %l98, !tbaa !21
  br i1 %t148, label %bb37, label %bb38
bb37:
  %t149 = load ptr, ptr %l0, !tbaa !29
  store ptr %t149, ptr %l101, !tbaa !29
  %t150 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t150, ptr %l102
  %t151 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t151, ptr %l103
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t154 = getelementptr %"compiler/check:Checker", ptr %t152, i32 0, i32 1
  %t155 = load ptr, ptr %t154, !tbaa !29
  %t156 = getelementptr %"compiler/names:Ref", ptr %l7, i32 0, i32 1
  %t157 = load i64, ptr %t156, !tbaa !24
  %t158 = getelementptr %"compiler/names:Ref", ptr %l7, i32 0, i32 2
  %t159 = load i64, ptr %t158, !tbaa !24
  %t163 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %t155, i64 %t157, i64 %t159)
  store i32 %t163, ptr %l108
  br label %bb39
bb38:
  br label %bb41
bb39:
  %t164 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t165 = load i32, ptr %l4, !tbaa !23
  %t166 = load ptr, ptr %l101, !tbaa !29
  %t167 = load %"compiler/source:Span", ptr %l102
  %t168 = load %"compiler/source:Span", ptr %l103
  %t169 = load i32, ptr %l108, !tbaa !23
  %t172 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einferredCtor(ptr %v0, ptr %v0, ptr %v3, ptr %t166, %"compiler/source:Span" %t167, %"compiler/source:Span" %t168, i32 %t169, { i64, ptr } %t164, i32 %t165)
  store ptr %t172, ptr %l111
  br label %bb40
bb40:
  call void @__olang_scope_close(ptr %s2)
  %t173 = load ptr, ptr %l111, !tbaa !29
  store ptr %t173, ptr %rv
  br label %ret
bb41:
  %t174 = load i32, ptr %l8, !tbaa !23
  %t176 = icmp slt i32 %t174, 0
  br i1 %t176, label %bb42, label %bb43
bb42:
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t179 = load %"compiler/source:Span", ptr %l1
  %t182 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t178, %"compiler/source:Span" %t179)
  store ptr %t182, ptr %l116
  br label %bb44
bb43:
  br label %bb45
bb44:
  call void @__olang_scope_close(ptr %s2)
  %t183 = load ptr, ptr %l116, !tbaa !29
  store ptr %t183, ptr %rv
  br label %ret
bb45:
  %t184 = load ptr, ptr %l0, !tbaa !29
  %t185 = load %"compiler/source:Span", ptr %l1
  %t186 = load %"compiler/source:Span", ptr %l5
  %t187 = load i32, ptr %l8, !tbaa !23
  %t188 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t194 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econstruct(ptr %v0, ptr %v0, ptr %v3, ptr %t184, %"compiler/source:Span" %t185, %"compiler/source:Span" %t186, i32 %t187, { i64, ptr } %t188)
  store ptr %t194, ptr %l122
  br label %bb46
bb46:
  call void @__olang_scope_close(ptr %s2)
  %t195 = load ptr, ptr %l122, !tbaa !29
  store ptr %t195, ptr %rv
  br label %ret
bb47:
  %t196 = getelementptr %"compiler/names:Ref", ptr %l7, i32 0, i32 0
  %t197 = load i32, ptr %t196, !range !{i32 0, i32 9}
  %t199 = trunc i64 0 to i32
  %t200 = icmp eq i32 %t197, %t199
  br i1 %t200, label %bb48, label %bb49
bb48:
  store %olang.scope zeroinitializer, ptr %s8
  %t202 = load ptr, ptr %l0, !tbaa !29
  store ptr %t202, ptr %l125, !tbaa !29
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t204 = load i32, ptr %l6, !tbaa !23
  %t207 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t203, i32 %t204)
  store { i64, ptr } %t207, ptr %l128
  br label %bb50
bb49:
  br label %bb70
bb50:
  %t208 = load ptr, ptr %l125, !tbaa !29
  %t209 = load { i64, ptr }, ptr %l128, !tbaa !27
  %t210 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esuggest(ptr %v0, ptr %v0, ptr %s8, ptr %t208, { i64, ptr } %t209, i1 true)
  store { i64, ptr } %t210, ptr %l129
  br label %bb51
bb51:
  %t211 = load { i64, ptr }, ptr %l129, !tbaa !27
  store { i64, ptr } %t211, ptr %l9, !tbaa !27
  %t212 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t214 = extractvalue { i64, ptr } %t212, 0
  %t216 = icmp eq i64 %t214, 0
  br i1 %t216, label %bb52, label %bb53
bb52:
  store %olang.scope zeroinitializer, ptr %s9
  %t218 = load ptr, ptr %l0, !tbaa !29
  store ptr %t218, ptr %l133, !tbaa !29
  %t219 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t219, ptr %l134
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t221 = load i32, ptr %l6, !tbaa !23
  %t224 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %s9, ptr %t220, i32 %t221)
  store { i64, ptr } %t224, ptr %l137
  br label %bb54
bb53:
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t227 = getelementptr %"compiler/check:Checker", ptr %t225, i32 0, i32 1
  %t228 = load ptr, ptr %t227, !tbaa !29
  %t230 = getelementptr %"compiler/generic:Program", ptr %t228, i32 0, i32 2
  %t231 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t234 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s8, ptr %t230, { i64, ptr } %t231)
  store i32 %t234, ptr %l145
  br label %bb57
bb54:
  %t235 = load { i64, ptr }, ptr %l137, !tbaa !27
  %t236 = extractvalue { i64, ptr } %t235, 0
  %t237 = extractvalue { i64, ptr } %t235, 1
  %t238 = mul i64 %t236, 1
  %t239 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t238)
  call void @llvm.memcpy.p0.p0.i64(ptr %t239, ptr %t237, i64 %t238, i1 false)
  %t240 = insertvalue { i64, ptr } undef, i64 %t236, 0
  %t241 = insertvalue { i64, ptr } %t240, ptr %t239, 1
  %t243 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownFunction(ptr %s9, ptr %s9, { i64, ptr } %t241)
  store %"compiler/diagmsg:Msg" %t243, ptr %l139
  br label %bb55
bb55:
  %t244 = load ptr, ptr %l133, !tbaa !29
  %t245 = load %"compiler/source:Span", ptr %l134
  %t246 = load %"compiler/diagmsg:Msg", ptr %l139
  %t247 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s9, ptr %t244, %"compiler/source:Span" %t245, %"compiler/diagmsg:Msg" %t246)
  store i64 %t247, ptr %l140
  br label %bb56
bb56:
  call void @__olang_scope_close(ptr %s9)
  br label %bb67
bb57:
  %t248 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t249 = load i32, ptr %l145, !tbaa !23
  %t251 = icmp ne i32 %t249, %t248
  br i1 %t251, label %bb58, label %bb59
bb58:
  store %olang.scope zeroinitializer, ptr %s11
  %t253 = load ptr, ptr %l0, !tbaa !29
  store ptr %t253, ptr %l148, !tbaa !29
  %t254 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t254, ptr %l149
  %t255 = load ptr, ptr %l0, !tbaa !29
  %t256 = load i32, ptr %l6, !tbaa !23
  %t259 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %s11, ptr %t255, i32 %t256)
  store { i64, ptr } %t259, ptr %l152
  br label %bb60
bb59:
  store %olang.scope zeroinitializer, ptr %s12
  %t260 = load ptr, ptr %l0, !tbaa !29
  store ptr %t260, ptr %l157, !tbaa !29
  %t261 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t261, ptr %l158
  %t262 = load ptr, ptr %l0, !tbaa !29
  %t263 = load i32, ptr %l6, !tbaa !23
  %t266 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %s12, ptr %t262, i32 %t263)
  store { i64, ptr } %t266, ptr %l161
  br label %bb63
bb60:
  %t267 = load { i64, ptr }, ptr %l152, !tbaa !27
  %t268 = extractvalue { i64, ptr } %t267, 0
  %t269 = extractvalue { i64, ptr } %t267, 1
  %t270 = mul i64 %t268, 1
  %t271 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t270)
  call void @llvm.memcpy.p0.p0.i64(ptr %t271, ptr %t269, i64 %t270, i1 false)
  %t272 = insertvalue { i64, ptr } undef, i64 %t268, 0
  %t273 = insertvalue { i64, ptr } %t272, ptr %t271, 1
  %t274 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t277 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownNumberType(ptr %s11, ptr %s8, ptr %s11, { i64, ptr } %t273, { i64, ptr } %t274)
  store %"compiler/diagmsg:Msg" %t277, ptr %l155
  br label %bb61
bb61:
  %t278 = load ptr, ptr %l148, !tbaa !29
  %t279 = load %"compiler/source:Span", ptr %l149
  %t280 = load %"compiler/diagmsg:Msg", ptr %l155
  %t281 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s11, ptr %t278, %"compiler/source:Span" %t279, %"compiler/diagmsg:Msg" %t280)
  store i64 %t281, ptr %l156
  br label %bb62
bb62:
  call void @__olang_scope_close(ptr %s11)
  br label %bb66
bb63:
  %t282 = load { i64, ptr }, ptr %l161, !tbaa !27
  %t283 = extractvalue { i64, ptr } %t282, 0
  %t284 = extractvalue { i64, ptr } %t282, 1
  %t285 = mul i64 %t283, 1
  %t286 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t285)
  call void @llvm.memcpy.p0.p0.i64(ptr %t286, ptr %t284, i64 %t285, i1 false)
  %t287 = insertvalue { i64, ptr } undef, i64 %t283, 0
  %t288 = insertvalue { i64, ptr } %t287, ptr %t286, 1
  %t289 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t292 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownFunctionMeant(ptr %s12, ptr %s8, ptr %s12, { i64, ptr } %t288, { i64, ptr } %t289)
  store %"compiler/diagmsg:Msg" %t292, ptr %l164
  br label %bb64
bb64:
  %t293 = load ptr, ptr %l157, !tbaa !29
  %t294 = load %"compiler/source:Span", ptr %l158
  %t295 = load %"compiler/diagmsg:Msg", ptr %l164
  %t296 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s12, ptr %t293, %"compiler/source:Span" %t294, %"compiler/diagmsg:Msg" %t295)
  store i64 %t296, ptr %l165
  br label %bb65
bb65:
  call void @__olang_scope_close(ptr %s12)
  br label %bb66
bb66:
  br label %bb67
bb67:
  %t297 = load ptr, ptr %l0, !tbaa !29
  %t298 = load { i64, ptr }, ptr %l3, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v0, ptr %t297, { i64, ptr } %t298)
  br label %bb68
bb68:
  %t301 = load ptr, ptr %l0, !tbaa !29
  %t302 = load %"compiler/source:Span", ptr %l1
  %t305 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t301, %"compiler/source:Span" %t302)
  store ptr %t305, ptr %l170
  br label %bb69
bb69:
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s2)
  %t306 = load ptr, ptr %l170, !tbaa !29
  store ptr %t306, ptr %rv
  br label %ret
bb70:
  %t307 = getelementptr %"compiler/names:Ref", ptr %l7, i32 0, i32 0
  %t308 = load i32, ptr %t307, !range !{i32 0, i32 9}
  %t310 = trunc i64 1 to i32
  %t311 = icmp eq i32 %t308, %t310
  br i1 %t311, label %bb71, label %bb72
bb71:
  %t313 = load ptr, ptr %l0, !tbaa !29
  %t314 = load ptr, ptr %l2, !tbaa !29
  %t317 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edescTypeOf(ptr %v0, ptr %v1, ptr %t313, ptr %t314)
  store i32 %t317, ptr %l175
  br label %bb73
bb72:
  br label %bb113
bb73:
  %t318 = load i32, ptr %l175, !tbaa !23
  store i32 %t318, ptr %l10, !tbaa !23
  %t319 = load i32, ptr %l10, !tbaa !23
  %t320 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t323 = icmp eq i32 %t319, %t320
  br i1 %t323, label %bb74, label %bb75
bb74:
  %t325 = load ptr, ptr %l0, !tbaa !29
  %t326 = load { i64, ptr }, ptr %l3, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v0, ptr %t325, { i64, ptr } %t326)
  br label %bb76
bb75:
  br label %bb78
bb76:
  %t329 = load ptr, ptr %l0, !tbaa !29
  %t330 = load %"compiler/source:Span", ptr %l1
  %t333 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t329, %"compiler/source:Span" %t330)
  store ptr %t333, ptr %l183
  br label %bb77
bb77:
  call void @__olang_scope_close(ptr %s2)
  %t334 = load ptr, ptr %l183, !tbaa !29
  store ptr %t334, ptr %rv
  br label %ret
bb78:
  %t335 = load i32, ptr %l10, !tbaa !23
  %t337 = icmp sge i32 %t335, 0
  br i1 %t337, label %bb79, label %bb80
bb79:
  %t339 = load ptr, ptr %l0, !tbaa !29
  %t341 = getelementptr %"compiler/check:Checker", ptr %t339, i32 0, i32 1
  %t342 = load ptr, ptr %t341, !tbaa !29
  %t343 = load i32, ptr %l10, !tbaa !23
  %t346 = call %"compiler/generic:Desc" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescOf(ptr %v0, ptr %t342, i32 %t343)
  store %"compiler/generic:Desc" %t346, ptr %l190
  br label %bb81
bb80:
  store i1 false, ptr %l186, !tbaa !21
  br label %bb82
bb81:
  %t347 = getelementptr %"compiler/generic:Desc", ptr %l190, i32 0, i32 0
  %t348 = load i64, ptr %t347, !tbaa !24
  %t349 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescFunc, !tbaa !24
  %t352 = icmp eq i64 %t348, %t349
  store i1 %t352, ptr %l186, !tbaa !21
  br label %bb82
bb82:
  %t354 = load i1, ptr %l186, !tbaa !21
  br i1 %t354, label %bb83, label %bb84
bb83:
  %t355 = load ptr, ptr %l0, !tbaa !29
  store ptr %t355, ptr %l194, !tbaa !29
  %t356 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t356, ptr %l195
  %t357 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t357, ptr %l196
  %t358 = load ptr, ptr %l0, !tbaa !29
  %t360 = getelementptr %"compiler/check:Checker", ptr %t358, i32 0, i32 1
  %t361 = load ptr, ptr %t360, !tbaa !29
  %t362 = load i32, ptr %l10, !tbaa !23
  %t365 = call %"compiler/generic:Desc" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescOf(ptr %v0, ptr %t361, i32 %t362)
  store %"compiler/generic:Desc" %t365, ptr %l200
  br label %bb85
bb84:
  br label %bb87
bb85:
  %t366 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t367 = load ptr, ptr %l194, !tbaa !29
  %t368 = load %"compiler/source:Span", ptr %l195
  %t369 = load %"compiler/source:Span", ptr %l196
  %t370 = load %"compiler/generic:Desc", ptr %l200
  %t372 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflFnCall(ptr %v0, ptr %v0, ptr %v3, ptr %t367, %"compiler/source:Span" %t368, %"compiler/source:Span" %t369, %"compiler/generic:Desc" %t370, { i64, ptr } %t366)
  store ptr %t372, ptr %l202
  br label %bb86
bb86:
  call void @__olang_scope_close(ptr %s2)
  %t373 = load ptr, ptr %l202, !tbaa !29
  store ptr %t373, ptr %rv
  br label %ret
bb87:
  %t374 = load i32, ptr %l10, !tbaa !23
  %t376 = icmp sge i32 %t374, 0
  br i1 %t376, label %bb88, label %bb89
bb88:
  %t378 = load ptr, ptr %l0, !tbaa !29
  %t380 = getelementptr %"compiler/check:Checker", ptr %t378, i32 0, i32 1
  %t381 = load ptr, ptr %t380, !tbaa !29
  %t382 = load i32, ptr %l10, !tbaa !23
  %t385 = call %"compiler/generic:Desc" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescOf(ptr %v0, ptr %t381, i32 %t382)
  store %"compiler/generic:Desc" %t385, ptr %l209
  br label %bb90
bb89:
  store i1 false, ptr %l205, !tbaa !21
  br label %bb91
bb90:
  %t386 = getelementptr %"compiler/generic:Desc", ptr %l209, i32 0, i32 0
  %t387 = load i64, ptr %t386, !tbaa !24
  %t388 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescCase, !tbaa !24
  %t391 = icmp eq i64 %t387, %t388
  store i1 %t391, ptr %l205, !tbaa !21
  br label %bb91
bb91:
  %t393 = load i1, ptr %l205, !tbaa !21
  br i1 %t393, label %bb92, label %bb93
bb92:
  store %olang.scope zeroinitializer, ptr %s16
  %t394 = load ptr, ptr %l0, !tbaa !29
  %t396 = getelementptr %"compiler/check:Checker", ptr %t394, i32 0, i32 1
  %t397 = load ptr, ptr %t396, !tbaa !29
  %t398 = load i32, ptr %l10, !tbaa !23
  %t401 = call %"compiler/generic:Desc" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescOf(ptr %v0, ptr %t397, i32 %t398)
  store %"compiler/generic:Desc" %t401, ptr %l216
  br label %bb94
bb93:
  br label %bb112
bb94:
  %t402 = load %"compiler/generic:Desc", ptr %l216
  store %"compiler/generic:Desc" %t402, ptr %l11
  %t403 = load ptr, ptr %l0, !tbaa !29
  %t405 = getelementptr %"compiler/check:Checker", ptr %t403, i32 0, i32 1
  %t406 = load ptr, ptr %t405, !tbaa !29
  %t407 = getelementptr %"compiler/generic:Desc", ptr %l11, i32 0, i32 1
  %t408 = load i32, ptr %t407, !tbaa !23
  %t411 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eReflUnder(ptr %v0, ptr %t406, i32 %t408)
  store i32 %t411, ptr %l220
  br label %bb95
bb95:
  %t412 = load i32, ptr %l220, !tbaa !23
  store i32 %t412, ptr %l12, !tbaa !23
  %t413 = load ptr, ptr %l0, !tbaa !29
  %t414 = load i32, ptr %l12, !tbaa !23
  %t417 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisStruct(ptr %v0, ptr %t413, i32 %t414)
  store i1 %t417, ptr %l223
  br label %bb96
bb96:
  %t418 = load i1, ptr %l223, !tbaa !21
  br i1 %t418, label %bb97, label %bb98
bb97:
  %t419 = load ptr, ptr %l0, !tbaa !29
  %t420 = load %"compiler/source:Span", ptr %l1
  %t421 = load %"compiler/source:Span", ptr %l5
  %t422 = getelementptr %"compiler/generic:Desc", ptr %l11, i32 0, i32 1
  %t423 = load i32, ptr %t422, !tbaa !23
  %t424 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t430 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econstruct(ptr %v0, ptr %v0, ptr %v3, ptr %t419, %"compiler/source:Span" %t420, %"compiler/source:Span" %t421, i32 %t423, { i64, ptr } %t424)
  store ptr %t430, ptr %l229
  br label %bb99
bb98:
  br label %bb100
bb99:
  call void @__olang_scope_close(ptr %s16)
  call void @__olang_scope_close(ptr %s2)
  %t431 = load ptr, ptr %l229, !tbaa !29
  store ptr %t431, ptr %rv
  br label %ret
bb100:
  %t432 = load ptr, ptr %l0, !tbaa !29
  %t434 = getelementptr %"compiler/check:Checker", ptr %t432, i32 0, i32 1
  %t435 = load ptr, ptr %t434, !tbaa !29
  %t437 = getelementptr %"compiler/generic:Program", ptr %t435, i32 0, i32 2
  %t438 = load i32, ptr %l12, !tbaa !23
  %t441 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t437, i32 %t438)
  store i32 %t441, ptr %l234
  br label %bb101
bb101:
  %t442 = load i32, ptr %l234, !range !{i32 0, i32 33}
  %t444 = trunc i64 32 to i32
  %t445 = icmp eq i32 %t442, %t444
  br i1 %t445, label %bb102, label %bb103
bb102:
  %t447 = load ptr, ptr %l0, !tbaa !29
  %t448 = load %"compiler/source:Span", ptr %l1
  %t449 = load i32, ptr %l12, !tbaa !23
  %t450 = getelementptr %"compiler/generic:Desc", ptr %l11, i32 0, i32 2
  %t451 = load i64, ptr %t450, !tbaa !24
  %t452 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t458 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrWordCalled(ptr %v0, ptr %v0, ptr %v3, ptr %t447, %"compiler/source:Span" %t448, i32 %t449, i64 %t451, { i64, ptr } %t452)
  store ptr %t458, ptr %l242
  br label %bb104
bb103:
  br label %bb105
bb104:
  call void @__olang_scope_close(ptr %s16)
  call void @__olang_scope_close(ptr %s2)
  %t459 = load ptr, ptr %l242, !tbaa !29
  store ptr %t459, ptr %rv
  br label %ret
bb105:
  %t460 = load ptr, ptr %l0, !tbaa !29
  store ptr %t460, ptr %l243, !tbaa !29
  %t461 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t461, ptr %l244
  %t462 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t462, ptr %l245
  %t463 = getelementptr %"compiler/generic:Desc", ptr %l11, i32 0, i32 1
  %t464 = load i32, ptr %t463, !tbaa !23
  store i32 %t464, ptr %l246, !tbaa !23
  %t465 = load ptr, ptr %l0, !tbaa !29
  %t467 = getelementptr %"compiler/check:Checker", ptr %t465, i32 0, i32 1
  %t468 = load ptr, ptr %t467, !tbaa !29
  %t470 = getelementptr %"compiler/generic:Program", ptr %t468, i32 0, i32 2
  %t471 = load i32, ptr %l12, !tbaa !23
  %t474 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCaseNames(ptr %v0, ptr %s16, ptr %t470, i32 %t471)
  store { i64, ptr } %t474, ptr %l251
  br label %bb106
bb106:
  %t475 = load { i64, ptr }, ptr %l251, !tbaa !27
  store { i64, ptr } %t475, ptr %l252, !tbaa !27
  %t476 = getelementptr %"compiler/generic:Desc", ptr %l11, i32 0, i32 2
  %t477 = load i64, ptr %t476, !tbaa !24
  %t479 = getelementptr { i64, ptr }, ptr %l252, i32 0, i32 1
  %t480 = load ptr, ptr %t479, !tbaa !27
  %t481 = getelementptr i32, ptr %t480, i64 %t477
  %t482 = load i32, ptr %t481, !tbaa !33
  store i32 %t482, ptr %l254, !tbaa !23
  %t483 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t483, ptr %l255, !tbaa !27
  %t484 = icmp sge i64 0, 0
  br i1 %t484, label %bb107, label %bb108
bb107:
  %t486 = icmp sle i64 0, 1152921504606846975
  br i1 %t486, label %bb109, label %bb110
bb108:
  call void @__olang_check_failed(ptr @olang_loc_a011517898bde8de_8eac0aa93ba66722)
  unreachable
bb109:
  %t488 = mul i64 0, 8
  %t489 = insertvalue { i64, ptr } undef, i64 0, 0
  %t490 = insertvalue { i64, ptr } %t489, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t491 = load ptr, ptr %l243, !tbaa !29
  %t492 = load %"compiler/source:Span", ptr %l244
  %t493 = load %"compiler/source:Span", ptr %l245
  %t494 = load i32, ptr %l246, !tbaa !23
  %t495 = load i32, ptr %l254, !tbaa !23
  %t496 = load { i64, ptr }, ptr %l255, !tbaa !27
  %t498 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eenumCase(ptr %v0, ptr %v0, ptr %v0, ptr %v3, ptr %t491, %"compiler/source:Span" %t492, %"compiler/source:Span" %t493, i32 %t494, i32 %t495, { i64, ptr } %t496, { i64, ptr } %t490)
  store ptr %t498, ptr %l259
  br label %bb111
bb110:
  call void @__olang_check_failed(ptr @olang_loc_a011517898bde8de_8eac0aa93ba66722)
  unreachable
bb111:
  call void @__olang_scope_close(ptr %s16)
  call void @__olang_scope_close(ptr %s2)
  %t499 = load ptr, ptr %l259, !tbaa !29
  store ptr %t499, ptr %rv
  br label %ret
bb112:
  br label %bb113
bb113:
  %t500 = getelementptr %"compiler/names:Ref", ptr %l7, i32 0, i32 0
  %t501 = load i32, ptr %t500, !range !{i32 0, i32 9}
  %t503 = trunc i64 1 to i32
  %t504 = icmp eq i32 %t501, %t503
  br i1 %t504, label %bb114, label %bb115
bb114:
  store i1 true, ptr %l262, !tbaa !21
  br label %bb116
bb115:
  %t506 = getelementptr %"compiler/names:Ref", ptr %l7, i32 0, i32 0
  %t507 = load i32, ptr %t506, !range !{i32 0, i32 9}
  %t509 = trunc i64 2 to i32
  %t510 = icmp eq i32 %t507, %t509
  store i1 %t510, ptr %l262, !tbaa !21
  br label %bb116
bb116:
  %t512 = load i1, ptr %l262, !tbaa !21
  br i1 %t512, label %bb117, label %bb118
bb117:
  %t513 = load ptr, ptr %l0, !tbaa !29
  store ptr %t513, ptr %l265, !tbaa !29
  %t514 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t514, ptr %l266
  %t515 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t515, ptr %l267
  %t516 = load ptr, ptr %l0, !tbaa !29
  %t517 = load ptr, ptr %l2, !tbaa !29
  %t519 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t523 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v0, ptr %t516, ptr %t517, i32 %t519)
  store ptr %t523, ptr %l272
  br label %bb119
bb118:
  br label %bb121
bb119:
  %t524 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t525 = load ptr, ptr %l265, !tbaa !29
  %t526 = load %"compiler/source:Span", ptr %l266
  %t527 = load %"compiler/source:Span", ptr %l267
  %t528 = load ptr, ptr %l272, !tbaa !29
  %t530 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallValue(ptr %v0, ptr %v0, ptr %v0, ptr %v3, ptr %t525, %"compiler/source:Span" %t526, %"compiler/source:Span" %t527, ptr %t528, { i64, ptr } %t524)
  store ptr %t530, ptr %l274
  br label %bb120
bb120:
  call void @__olang_scope_close(ptr %s2)
  %t531 = load ptr, ptr %l274, !tbaa !29
  store ptr %t531, ptr %rv
  br label %ret
bb121:
  %t532 = getelementptr %"compiler/names:Ref", ptr %l7, i32 0, i32 0
  %t533 = load i32, ptr %t532, !range !{i32 0, i32 9}
  %t535 = trunc i64 8 to i32
  %t536 = icmp eq i32 %t533, %t535
  br i1 %t536, label %bb122, label %bb123
bb122:
  %t538 = load ptr, ptr %l0, !tbaa !29
  %t539 = load ptr, ptr %l2, !tbaa !29
  %t542 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNamed(ptr %v0, ptr %v1, ptr %t538, ptr %t539)
  store i32 %t542, ptr %l279
  br label %bb124
bb123:
  br label %bb160
bb124:
  %t543 = load i32, ptr %l279, !tbaa !23
  store i32 %t543, ptr %l13, !tbaa !23
  %t544 = load i32, ptr %l13, !tbaa !23
  %t546 = icmp sge i32 %t544, 0
  br i1 %t546, label %bb125, label %bb126
bb125:
  %t548 = load ptr, ptr %l0, !tbaa !29
  %t550 = getelementptr %"compiler/check:Checker", ptr %t548, i32 0, i32 1
  %t551 = load ptr, ptr %t550, !tbaa !29
  %t553 = getelementptr %"compiler/generic:Program", ptr %t551, i32 0, i32 2
  %t554 = load i32, ptr %l13, !tbaa !23
  %t557 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %t553, i32 %t554)
  store i1 %t557, ptr %l287
  br label %bb127
bb126:
  store i1 false, ptr %l282, !tbaa !21
  br label %bb135
bb127:
  %t558 = load i1, ptr %l287, !tbaa !21
  br i1 %t558, label %bb128, label %bb129
bb128:
  store i1 true, ptr %l288, !tbaa !21
  br label %bb131
bb129:
  %t559 = load ptr, ptr %l0, !tbaa !29
  %t561 = getelementptr %"compiler/check:Checker", ptr %t559, i32 0, i32 1
  %t562 = load ptr, ptr %t561, !tbaa !29
  %t564 = getelementptr %"compiler/generic:Program", ptr %t562, i32 0, i32 2
  %t565 = load i32, ptr %l13, !tbaa !23
  %t568 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %t564, i32 %t565)
  store i1 %t568, ptr %l293
  br label %bb130
bb130:
  %t569 = load i1, ptr %l293, !tbaa !21
  store i1 %t569, ptr %l288, !tbaa !21
  br label %bb131
bb131:
  %t570 = load i1, ptr %l288, !tbaa !21
  br i1 %t570, label %bb132, label %bb133
bb132:
  store i1 true, ptr %l294, !tbaa !21
  br label %bb134
bb133:
  %t571 = load i32, ptr %l13, !tbaa !23
  %t572 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t575 = icmp eq i32 %t571, %t572
  store i1 %t575, ptr %l294, !tbaa !21
  br label %bb134
bb134:
  %t577 = load i1, ptr %l294, !tbaa !21
  store i1 %t577, ptr %l282, !tbaa !21
  br label %bb135
bb135:
  %t578 = load i1, ptr %l282, !tbaa !21
  br i1 %t578, label %bb136, label %bb137
bb136:
  %t579 = load ptr, ptr %l0, !tbaa !29
  %t580 = load %"compiler/source:Span", ptr %l1
  %t581 = load i32, ptr %l13, !tbaa !23
  %t582 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t587 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econversion(ptr %v0, ptr %v0, ptr %v3, ptr %t579, %"compiler/source:Span" %t580, i32 %t581, { i64, ptr } %t582)
  store ptr %t587, ptr %l302
  br label %bb138
bb137:
  br label %bb139
bb138:
  call void @__olang_scope_close(ptr %s2)
  %t588 = load ptr, ptr %l302, !tbaa !29
  store ptr %t588, ptr %rv
  br label %ret
bb139:
  %t589 = load i32, ptr %l13, !tbaa !23
  %t591 = icmp sge i32 %t589, 0
  br i1 %t591, label %bb140, label %bb141
bb140:
  %t593 = load ptr, ptr %l0, !tbaa !29
  %t594 = load i32, ptr %l13, !tbaa !23
  %t597 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t593, i32 %t594)
  store i1 %t597, ptr %l308
  br label %bb142
bb141:
  store i1 false, ptr %l305, !tbaa !21
  br label %bb143
bb142:
  %t598 = load i1, ptr %l308, !tbaa !21
  store i1 %t598, ptr %l305, !tbaa !21
  br label %bb143
bb143:
  %t599 = load i1, ptr %l305, !tbaa !21
  br i1 %t599, label %bb144, label %bb145
bb144:
  %t600 = load ptr, ptr %l0, !tbaa !29
  %t601 = load %"compiler/source:Span", ptr %l1
  %t602 = load %"compiler/source:Span", ptr %l5
  %t603 = load i32, ptr %l13, !tbaa !23
  %t604 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t610 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econstruct(ptr %v0, ptr %v0, ptr %v3, ptr %t600, %"compiler/source:Span" %t601, %"compiler/source:Span" %t602, i32 %t603, { i64, ptr } %t604)
  store ptr %t610, ptr %l314
  br label %bb146
bb145:
  br label %bb147
bb146:
  call void @__olang_scope_close(ptr %s2)
  %t611 = load ptr, ptr %l314, !tbaa !29
  store ptr %t611, ptr %rv
  br label %ret
bb147:
  %t612 = load i32, ptr %l13, !tbaa !23
  %t614 = icmp sge i32 %t612, 0
  br i1 %t614, label %bb148, label %bb149
bb148:
  %t616 = load ptr, ptr %l0, !tbaa !29
  %t618 = getelementptr %"compiler/check:Checker", ptr %t616, i32 0, i32 1
  %t619 = load ptr, ptr %t618, !tbaa !29
  %t621 = getelementptr %"compiler/generic:Program", ptr %t619, i32 0, i32 2
  %t622 = load i32, ptr %l13, !tbaa !23
  %t625 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t621, i32 %t622)
  store i32 %t625, ptr %l322
  br label %bb150
bb149:
  store i1 false, ptr %l317, !tbaa !21
  br label %bb151
bb150:
  %t626 = load i32, ptr %l322, !range !{i32 0, i32 33}
  %t628 = trunc i64 25 to i32
  %t629 = icmp eq i32 %t626, %t628
  %t631 = xor i1 %t629, true
  store i1 %t631, ptr %l317, !tbaa !21
  br label %bb151
bb151:
  %t633 = load i1, ptr %l317, !tbaa !21
  br i1 %t633, label %bb152, label %bb153
bb152:
  store %olang.scope zeroinitializer, ptr %s23
  %t634 = load ptr, ptr %l0, !tbaa !29
  store ptr %t634, ptr %l326, !tbaa !29
  %t635 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t635, ptr %l327
  %t636 = load ptr, ptr %l0, !tbaa !29
  %t637 = load i32, ptr %l13, !tbaa !23
  %t640 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s23, ptr %t636, i32 %t637)
  store { i64, ptr } %t640, ptr %l330
  br label %bb154
bb153:
  br label %bb159
bb154:
  %t641 = load { i64, ptr }, ptr %l330, !tbaa !27
  %t642 = extractvalue { i64, ptr } %t641, 0
  %t643 = extractvalue { i64, ptr } %t641, 1
  %t644 = mul i64 %t642, 1
  %t645 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t644)
  call void @llvm.memcpy.p0.p0.i64(ptr %t645, ptr %t643, i64 %t644, i1 false)
  %t646 = insertvalue { i64, ptr } undef, i64 %t642, 0
  %t647 = insertvalue { i64, ptr } %t646, ptr %t645, 1
  %t649 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotCallable(ptr %s23, ptr %s23, { i64, ptr } %t647)
  store %"compiler/diagmsg:Msg" %t649, ptr %l332
  br label %bb155
bb155:
  %t650 = load ptr, ptr %l326, !tbaa !29
  %t651 = load %"compiler/source:Span", ptr %l327
  %t652 = load %"compiler/diagmsg:Msg", ptr %l332
  %t653 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s23, ptr %t650, %"compiler/source:Span" %t651, %"compiler/diagmsg:Msg" %t652)
  store i64 %t653, ptr %l333
  br label %bb156
bb156:
  %t654 = load ptr, ptr %l0, !tbaa !29
  %t655 = load { i64, ptr }, ptr %l3, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v0, ptr %t654, { i64, ptr } %t655)
  br label %bb157
bb157:
  %t658 = load ptr, ptr %l0, !tbaa !29
  %t659 = load %"compiler/source:Span", ptr %l1
  %t662 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t658, %"compiler/source:Span" %t659)
  store ptr %t662, ptr %l338
  br label %bb158
bb158:
  call void @__olang_scope_close(ptr %s23)
  call void @__olang_scope_close(ptr %s2)
  %t663 = load ptr, ptr %l338, !tbaa !29
  store ptr %t663, ptr %rv
  br label %ret
bb159:
  br label %bb160
bb160:
  %t664 = load ptr, ptr %l0, !tbaa !29
  %t665 = load %"compiler/source:Span", ptr %l5
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %s2, ptr %t664, %"compiler/source:Span" %t665, { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d4, i32 0, i32 1) })
  br label %bb161
bb161:
  %t668 = load ptr, ptr %l0, !tbaa !29
  %t669 = load %"compiler/source:Span", ptr %l1
  %t672 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t668, %"compiler/source:Span" %t669)
  store ptr %t672, ptr %l343
  br label %bb162
bb162:
  call void @__olang_scope_close(ptr %s2)
  %t673 = load ptr, ptr %l343, !tbaa !29
  store ptr %t673, ptr %rv
  br label %ret
bb163:
  %t674 = load ptr, ptr %l2, !tbaa !29
  store ptr %t674, ptr %l344, !tbaa !29
  store i1 false, ptr %l345, !tbaa !21
  %t675 = load ptr, ptr %l344, !tbaa !29
  %t676 = icmp ne ptr %t675, null
  br i1 %t676, label %bb164, label %bb165
bb164:
  %t678 = load ptr, ptr %l344, !tbaa !29
  %t679 = load i64, ptr %t678, !range !{i64 0, i64 30}
  %t681 = icmp eq i64 %t679, 14
  store i1 %t681, ptr %l345, !tbaa !21
  br label %bb165
bb165:
  %t682 = load i1, ptr %l345, !tbaa !21
  br i1 %t682, label %bb166, label %bb167
bb166:
  %t683 = load ptr, ptr %l2, !tbaa !29
  %t685 = getelementptr { i64, [4 x i64] }, ptr %t683, i32 0, i32 1
  %t686 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t685, i32 0, i32 0
  %t687 = load %"compiler/source:Span", ptr %t686
  store %"compiler/source:Span" %t687, ptr %l14
  %t689 = load ptr, ptr %l2, !tbaa !29
  %t691 = getelementptr { i64, [4 x i64] }, ptr %t689, i32 0, i32 1
  %t692 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t691, i32 0, i32 1
  %t693 = load ptr, ptr %t692
  store ptr %t693, ptr %l15, !tbaa !29
  %t695 = load ptr, ptr %l2, !tbaa !29
  %t697 = getelementptr { i64, [4 x i64] }, ptr %t695, i32 0, i32 1
  %t698 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t697, i32 0, i32 2
  %t699 = load i32, ptr %t698
  store i32 %t699, ptr %l16, !tbaa !23
  br label %bb168
bb167:
  br label %bb425
bb168:
  store %olang.scope zeroinitializer, ptr %s24
  %t701 = load ptr, ptr %l0, !tbaa !29
  %t703 = getelementptr %"compiler/check:Checker", ptr %t701, i32 0, i32 1
  %t704 = load ptr, ptr %t703, !tbaa !29
  %t706 = getelementptr %"compiler/generic:Program", ptr %t704, i32 0, i32 1
  %t707 = load ptr, ptr %t706, !tbaa !29
  store ptr %t707, ptr %l356, !tbaa !29
  %t708 = load ptr, ptr %l0, !tbaa !29
  %t710 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t708)
  store ptr %t710, ptr %l358
  br label %bb169
bb169:
  %t711 = load ptr, ptr %l358, !tbaa !29
  %t713 = getelementptr %"compiler/check:frame", ptr %t711, i32 0, i32 2
  %t714 = load i64, ptr %t713, !tbaa !24
  %t715 = getelementptr %"compiler/source:Span", ptr %l14, i32 0, i32 1
  %t716 = load i32, ptr %t715, !tbaa !23
  %t717 = load ptr, ptr %l356, !tbaa !29
  %t720 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eMember(ptr %v0, ptr %t717, i64 %t714, i32 %t716)
  store %"compiler/names:Ref" %t720, ptr %l362
  br label %bb170
bb170:
  %t721 = load %"compiler/names:Ref", ptr %l362
  store %"compiler/names:Ref" %t721, ptr %l17
  %t722 = load %"compiler/source:Span", ptr %l14
  store %"compiler/source:Span" %t722, ptr %l363
  %t723 = load ptr, ptr %l0, !tbaa !29
  %t724 = load i32, ptr %l16, !tbaa !23
  %t727 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s24, ptr %t723, i32 %t724)
  store { i64, ptr } %t727, ptr %l366
  br label %bb171
bb171:
  %t728 = load { i64, ptr }, ptr %l366, !tbaa !27
  %t729 = extractvalue { i64, ptr } %t728, 0
  %t730 = load %"compiler/source:Span", ptr %l363
  %t732 = call %"compiler/source:Span" @compiler_2fcheck_2ememberSpan(%"compiler/source:Span" %t730, i64 %t729)
  store %"compiler/source:Span" %t732, ptr %l368
  br label %bb172
bb172:
  %t733 = load %"compiler/source:Span", ptr %l368
  store %"compiler/source:Span" %t733, ptr %l18
  %t734 = getelementptr %"compiler/names:Ref", ptr %l17, i32 0, i32 0
  %t735 = load i32, ptr %t734, !range !{i32 0, i32 9}
  %t737 = trunc i64 3 to i32
  %t738 = icmp eq i32 %t735, %t737
  br i1 %t738, label %bb173, label %bb174
bb173:
  %t740 = load ptr, ptr %l0, !tbaa !29
  store ptr %t740, ptr %l371, !tbaa !29
  %t741 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t741, ptr %l372
  %t742 = load %"compiler/source:Span", ptr %l18
  store %"compiler/source:Span" %t742, ptr %l373
  %t743 = load ptr, ptr %l0, !tbaa !29
  %t745 = getelementptr %"compiler/check:Checker", ptr %t743, i32 0, i32 1
  %t746 = load ptr, ptr %t745, !tbaa !29
  %t747 = getelementptr %"compiler/names:Ref", ptr %l17, i32 0, i32 1
  %t748 = load i64, ptr %t747, !tbaa !24
  %t749 = load i32, ptr %l16, !tbaa !23
  %t753 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnNamed(ptr %v0, ptr %t746, i64 %t748, i32 %t749)
  store i64 %t753, ptr %l378
  br label %bb175
bb174:
  br label %bb185
bb175:
  %t754 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t754, ptr %l379, !tbaa !27
  %t755 = icmp sge i64 0, 0
  br i1 %t755, label %bb176, label %bb177
bb176:
  %t757 = icmp sle i64 0, 1152921504606846975
  br i1 %t757, label %bb178, label %bb179
bb177:
  call void @__olang_check_failed(ptr @olang_loc_26a350d6680cbe13_ae05507bcf86f3d7)
  unreachable
bb178:
  %t759 = mul i64 0, 8
  %t760 = insertvalue { i64, ptr } undef, i64 0, 0
  %t761 = insertvalue { i64, ptr } %t760, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t761, ptr %l382, !tbaa !27
  %t762 = icmp sge i64 0, 0
  br i1 %t762, label %bb180, label %bb181
bb179:
  call void @__olang_check_failed(ptr @olang_loc_26a350d6680cbe13_ae05507bcf86f3d7)
  unreachable
bb180:
  %t764 = icmp sle i64 0, 2305843009213693951
  br i1 %t764, label %bb182, label %bb183
bb181:
  call void @__olang_check_failed(ptr @olang_loc_36fec0e9bab8fe1d_cd1d759a002b5041)
  unreachable
bb182:
  %t766 = mul i64 0, 4
  %t767 = insertvalue { i64, ptr } undef, i64 0, 0
  %t768 = insertvalue { i64, ptr } %t767, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t769 = load ptr, ptr %l371, !tbaa !29
  %t770 = load %"compiler/source:Span", ptr %l372
  %t771 = load %"compiler/source:Span", ptr %l373
  %t772 = load i64, ptr %l378, !tbaa !24
  %t773 = load { i64, ptr }, ptr %l379, !tbaa !27
  %t774 = load { i64, ptr }, ptr %l382, !tbaa !27
  %t776 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v3, ptr %v3, ptr %t769, %"compiler/source:Span" %t770, %"compiler/source:Span" %t771, i64 %t772, ptr null, { i64, ptr } %t773, { i64, ptr } %t774, { i64, ptr } %t768)
  store ptr %t776, ptr %l386
  br label %bb184
bb183:
  call void @__olang_check_failed(ptr @olang_loc_36fec0e9bab8fe1d_cd1d759a002b5041)
  unreachable
bb184:
  call void @__olang_scope_close(ptr %s24)
  %t777 = load ptr, ptr %l386, !tbaa !29
  store ptr %t777, ptr %rv
  br label %ret
bb185:
  %t778 = getelementptr %"compiler/names:Ref", ptr %l17, i32 0, i32 0
  %t779 = load i32, ptr %t778, !range !{i32 0, i32 9}
  %t781 = trunc i64 4 to i32
  %t782 = icmp eq i32 %t779, %t781
  br i1 %t782, label %bb186, label %bb187
bb186:
  %t784 = load ptr, ptr %l0, !tbaa !29
  %t785 = load ptr, ptr %l2, !tbaa !29
  %t788 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNamed(ptr %v0, ptr %v1, ptr %t784, ptr %t785)
  store i32 %t788, ptr %l391
  br label %bb188
bb187:
  br label %bb202
bb188:
  %t789 = load i32, ptr %l391, !tbaa !23
  store i32 %t789, ptr %l19, !tbaa !23
  %t790 = load i32, ptr %l19, !tbaa !23
  %t792 = icmp slt i32 %t790, 0
  br i1 %t792, label %bb189, label %bb190
bb189:
  %t794 = getelementptr %"compiler/names:Ref", ptr %l17, i32 0, i32 2
  %t795 = load i64, ptr %t794, !tbaa !24
  %t797 = icmp sge i64 %t795, 0
  store i1 %t797, ptr %l394, !tbaa !21
  br label %bb191
bb190:
  store i1 false, ptr %l394, !tbaa !21
  br label %bb191
bb191:
  %t799 = load i1, ptr %l394, !tbaa !21
  br i1 %t799, label %bb192, label %bb193
bb192:
  %t800 = load ptr, ptr %l0, !tbaa !29
  store ptr %t800, ptr %l397, !tbaa !29
  %t801 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t801, ptr %l398
  %t802 = load %"compiler/source:Span", ptr %l18
  store %"compiler/source:Span" %t802, ptr %l399
  %t803 = load ptr, ptr %l0, !tbaa !29
  %t805 = getelementptr %"compiler/check:Checker", ptr %t803, i32 0, i32 1
  %t806 = load ptr, ptr %t805, !tbaa !29
  %t807 = getelementptr %"compiler/names:Ref", ptr %l17, i32 0, i32 1
  %t808 = load i64, ptr %t807, !tbaa !24
  %t809 = getelementptr %"compiler/names:Ref", ptr %l17, i32 0, i32 2
  %t810 = load i64, ptr %t809, !tbaa !24
  %t814 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %t806, i64 %t808, i64 %t810)
  store i32 %t814, ptr %l404
  br label %bb194
bb193:
  br label %bb196
bb194:
  %t815 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t816 = load i32, ptr %l4, !tbaa !23
  %t817 = load ptr, ptr %l397, !tbaa !29
  %t818 = load %"compiler/source:Span", ptr %l398
  %t819 = load %"compiler/source:Span", ptr %l399
  %t820 = load i32, ptr %l404, !tbaa !23
  %t823 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einferredCtor(ptr %v0, ptr %v0, ptr %v3, ptr %t817, %"compiler/source:Span" %t818, %"compiler/source:Span" %t819, i32 %t820, { i64, ptr } %t815, i32 %t816)
  store ptr %t823, ptr %l407
  br label %bb195
bb195:
  call void @__olang_scope_close(ptr %s24)
  %t824 = load ptr, ptr %l407, !tbaa !29
  store ptr %t824, ptr %rv
  br label %ret
bb196:
  %t825 = load i32, ptr %l19, !tbaa !23
  %t827 = icmp slt i32 %t825, 0
  br i1 %t827, label %bb197, label %bb198
bb197:
  %t829 = load ptr, ptr %l0, !tbaa !29
  %t830 = load %"compiler/source:Span", ptr %l1
  %t833 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t829, %"compiler/source:Span" %t830)
  store ptr %t833, ptr %l412
  br label %bb199
bb198:
  br label %bb200
bb199:
  call void @__olang_scope_close(ptr %s24)
  %t834 = load ptr, ptr %l412, !tbaa !29
  store ptr %t834, ptr %rv
  br label %ret
bb200:
  %t835 = load ptr, ptr %l0, !tbaa !29
  %t836 = load %"compiler/source:Span", ptr %l1
  %t837 = load %"compiler/source:Span", ptr %l18
  %t838 = load i32, ptr %l19, !tbaa !23
  %t839 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t845 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econstruct(ptr %v0, ptr %v0, ptr %v3, ptr %t835, %"compiler/source:Span" %t836, %"compiler/source:Span" %t837, i32 %t838, { i64, ptr } %t839)
  store ptr %t845, ptr %l418
  br label %bb201
bb201:
  call void @__olang_scope_close(ptr %s24)
  %t846 = load ptr, ptr %l418, !tbaa !29
  store ptr %t846, ptr %rv
  br label %ret
bb202:
  %t847 = getelementptr %"compiler/names:Ref", ptr %l17, i32 0, i32 0
  %t848 = load i32, ptr %t847, !range !{i32 0, i32 9}
  %t850 = trunc i64 0 to i32
  %t851 = icmp eq i32 %t848, %t850
  %t853 = xor i1 %t851, true
  br i1 %t853, label %bb203, label %bb204
bb203:
  store %olang.scope zeroinitializer, ptr %s29
  %t855 = load ptr, ptr %l0, !tbaa !29
  %t856 = load %"compiler/source:Span", ptr %l18
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %s29, ptr %t855, %"compiler/source:Span" %t856, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d5, i32 0, i32 1) })
  br label %bb205
bb204:
  br label %bb207
bb205:
  %t859 = load ptr, ptr %l0, !tbaa !29
  %t860 = load %"compiler/source:Span", ptr %l1
  %t863 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t859, %"compiler/source:Span" %t860)
  store ptr %t863, ptr %l426
  br label %bb206
bb206:
  call void @__olang_scope_close(ptr %s29)
  call void @__olang_scope_close(ptr %s24)
  %t864 = load ptr, ptr %l426, !tbaa !29
  store ptr %t864, ptr %rv
  br label %ret
bb207:
  %t865 = load ptr, ptr %l0, !tbaa !29
  store ptr %t865, ptr %l427, !tbaa !29
  %t866 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t866, ptr %l428
  %t867 = load %"compiler/source:Span", ptr %l18
  store %"compiler/source:Span" %t867, ptr %l429
  %t868 = load ptr, ptr %l15, !tbaa !29
  store ptr %t868, ptr %l430, !tbaa !29
  %t869 = load i32, ptr %l16, !tbaa !23
  store i32 %t869, ptr %l431, !tbaa !23
  %t870 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t870, ptr %l432, !tbaa !27
  %t871 = icmp sge i64 0, 0
  br i1 %t871, label %bb208, label %bb209
bb208:
  %t873 = icmp sle i64 0, 1152921504606846975
  br i1 %t873, label %bb210, label %bb211
bb209:
  call void @__olang_check_failed(ptr @olang_loc_5266260c5f5a343c_36d17a256f11e368)
  unreachable
bb210:
  %t875 = mul i64 0, 8
  %t876 = insertvalue { i64, ptr } undef, i64 0, 0
  %t877 = insertvalue { i64, ptr } %t876, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t878 = load %"compiler/source:Span", ptr %l18
  %t879 = load ptr, ptr %l427, !tbaa !29
  %t880 = load %"compiler/source:Span", ptr %l428
  %t881 = load %"compiler/source:Span", ptr %l429
  %t882 = load ptr, ptr %l430, !tbaa !29
  %t883 = load i32, ptr %l431, !tbaa !23
  %t884 = load { i64, ptr }, ptr %l432, !tbaa !27
  %t887 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebuilderCall(ptr %v0, ptr %v1, ptr %v0, ptr %v3, ptr %v3, ptr %t879, %"compiler/source:Span" %t880, %"compiler/source:Span" %t881, ptr %t882, i32 %t883, { i64, ptr } %t884, { i64, ptr } %t877, %"compiler/source:Span" %t878)
  store ptr %t887, ptr %l437
  br label %bb212
bb211:
  call void @__olang_check_failed(ptr @olang_loc_5266260c5f5a343c_36d17a256f11e368)
  unreachable
bb212:
  %t888 = load ptr, ptr %l437, !tbaa !29
  store ptr %t888, ptr %l20, !tbaa !29
  %t889 = load ptr, ptr %l20, !tbaa !29
  %t891 = icmp eq ptr %t889, null
  %t893 = xor i1 %t891, true
  br i1 %t893, label %bb213, label %bb214
bb213:
  %t895 = load ptr, ptr %l20, !tbaa !29
  call void @__olang_scope_close(ptr %s24)
  store ptr %t895, ptr %rv
  br label %ret
bb214:
  br label %bb215
bb215:
  %t897 = load ptr, ptr %l0, !tbaa !29
  %t898 = load ptr, ptr %l15, !tbaa !29
  %t901 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNamed(ptr %v0, ptr %v1, ptr %t897, ptr %t898)
  store i32 %t901, ptr %l444
  br label %bb216
bb216:
  %t902 = load i32, ptr %l444, !tbaa !23
  store i32 %t902, ptr %l21, !tbaa !23
  %t903 = load i32, ptr %l21, !tbaa !23
  %t905 = icmp sge i32 %t903, 0
  br i1 %t905, label %bb217, label %bb218
bb217:
  %t907 = load ptr, ptr %l0, !tbaa !29
  %t908 = load i32, ptr %l21, !tbaa !23
  %t911 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %t907, i32 %t908)
  store i1 %t911, ptr %l450
  br label %bb219
bb218:
  store i1 false, ptr %l447, !tbaa !21
  br label %bb220
bb219:
  %t912 = load i1, ptr %l450, !tbaa !21
  store i1 %t912, ptr %l447, !tbaa !21
  br label %bb220
bb220:
  %t913 = load i1, ptr %l447, !tbaa !21
  br i1 %t913, label %bb221, label %bb222
bb221:
  %t914 = load ptr, ptr %l0, !tbaa !29
  %t915 = load i32, ptr %l21, !tbaa !23
  %t916 = load i32, ptr %l16, !tbaa !23
  %t920 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehasCase(ptr %v0, ptr %t914, i32 %t915, i32 %t916)
  store i1 %t920, ptr %l455
  br label %bb223
bb222:
  store i1 false, ptr %l451, !tbaa !21
  br label %bb224
bb223:
  %t921 = load i1, ptr %l455, !tbaa !21
  store i1 %t921, ptr %l451, !tbaa !21
  br label %bb224
bb224:
  %t922 = load i1, ptr %l451, !tbaa !21
  store i1 %t922, ptr %l22, !tbaa !21
  %t923 = load ptr, ptr %l0, !tbaa !29
  %t924 = load ptr, ptr %l15, !tbaa !29
  %t927 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenericNamed(ptr %v0, ptr %v1, ptr %t923, ptr %t924)
  store i32 %t927, ptr %l458
  br label %bb225
bb225:
  %t928 = load i32, ptr %l458, !tbaa !23
  store i32 %t928, ptr %l23, !tbaa !23
  %t929 = load i32, ptr %l23, !tbaa !23
  %t931 = icmp sge i32 %t929, 0
  br i1 %t931, label %bb226, label %bb227
bb226:
  %t933 = load ptr, ptr %l0, !tbaa !29
  %t935 = getelementptr %"compiler/check:Checker", ptr %t933, i32 0, i32 1
  %t936 = load ptr, ptr %t935, !tbaa !29
  %t938 = getelementptr %"compiler/generic:Program", ptr %t936, i32 0, i32 2
  %t939 = load i32, ptr %l23, !tbaa !23
  %t942 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t938, i32 %t939)
  store i32 %t942, ptr %l466
  br label %bb228
bb227:
  store i1 false, ptr %l461, !tbaa !21
  br label %bb229
bb228:
  %t943 = load i32, ptr %l466, !range !{i32 0, i32 6}
  %t945 = trunc i64 1 to i32
  %t946 = icmp eq i32 %t943, %t945
  store i1 %t946, ptr %l461, !tbaa !21
  br label %bb229
bb229:
  %t948 = load i1, ptr %l461, !tbaa !21
  br i1 %t948, label %bb230, label %bb231
bb230:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb232
bb231:
  br label %bb232
bb232:
  %t949 = load ptr, ptr %l0, !tbaa !29
  %t950 = load i32, ptr %l16, !tbaa !23
  %t953 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t949, i32 %t950)
  store { i64, ptr } %t953, ptr %l471
  br label %bb233
bb233:
  %t954 = load { i64, ptr }, ptr %l471, !tbaa !27
  %t955 = call i1 @compiler_2fgeneric_2eProjectsType(ptr %v0, { i64, ptr } %t954)
  store i1 %t955, ptr %l472
  br label %bb234
bb234:
  %t956 = load i1, ptr %l472, !tbaa !21
  br i1 %t956, label %bb235, label %bb236
bb235:
  %t957 = load i1, ptr %l22, !tbaa !21
  %t959 = xor i1 %t957, true
  store i1 %t959, ptr %l473, !tbaa !21
  br label %bb237
bb236:
  store i1 false, ptr %l473, !tbaa !21
  br label %bb237
bb237:
  %t961 = load i1, ptr %l473, !tbaa !21
  br i1 %t961, label %bb238, label %bb239
bb238:
  %t962 = load ptr, ptr %l0, !tbaa !29
  %t963 = load ptr, ptr %l2, !tbaa !29
  %t966 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflType(ptr %v0, ptr %v1, ptr %t962, ptr %t963)
  store i32 %t966, ptr %l478
  br label %bb240
bb239:
  br label %bb277
bb240:
  %t967 = load i32, ptr %l478, !tbaa !23
  store i32 %t967, ptr %l24, !tbaa !23
  %t968 = load i32, ptr %l24, !tbaa !23
  %t969 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t972 = icmp eq i32 %t968, %t969
  br i1 %t972, label %bb241, label %bb242
bb241:
  %t974 = load ptr, ptr %l0, !tbaa !29
  %t975 = load { i64, ptr }, ptr %l3, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v0, ptr %t974, { i64, ptr } %t975)
  br label %bb243
bb242:
  br label %bb245
bb243:
  %t978 = load ptr, ptr %l0, !tbaa !29
  %t979 = load %"compiler/source:Span", ptr %l1
  %t982 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t978, %"compiler/source:Span" %t979)
  store ptr %t982, ptr %l486
  br label %bb244
bb244:
  call void @__olang_scope_close(ptr %s24)
  %t983 = load ptr, ptr %l486, !tbaa !29
  store ptr %t983, ptr %rv
  br label %ret
bb245:
  %t984 = load i32, ptr %l24, !tbaa !23
  %t986 = icmp sge i32 %t984, 0
  br i1 %t986, label %bb246, label %bb247
bb246:
  %t988 = load ptr, ptr %l0, !tbaa !29
  %t990 = getelementptr %"compiler/check:Checker", ptr %t988, i32 0, i32 1
  %t991 = load ptr, ptr %t990, !tbaa !29
  %t993 = getelementptr %"compiler/generic:Program", ptr %t991, i32 0, i32 2
  %t994 = load i32, ptr %l24, !tbaa !23
  %t997 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %t993, i32 %t994)
  store i1 %t997, ptr %l494
  br label %bb248
bb247:
  store i1 false, ptr %l489, !tbaa !21
  br label %bb256
bb248:
  %t998 = load i1, ptr %l494, !tbaa !21
  br i1 %t998, label %bb249, label %bb250
bb249:
  store i1 true, ptr %l495, !tbaa !21
  br label %bb252
bb250:
  %t999 = load ptr, ptr %l0, !tbaa !29
  %t1001 = getelementptr %"compiler/check:Checker", ptr %t999, i32 0, i32 1
  %t1002 = load ptr, ptr %t1001, !tbaa !29
  %t1004 = getelementptr %"compiler/generic:Program", ptr %t1002, i32 0, i32 2
  %t1005 = load i32, ptr %l24, !tbaa !23
  %t1008 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %t1004, i32 %t1005)
  store i1 %t1008, ptr %l500
  br label %bb251
bb251:
  %t1009 = load i1, ptr %l500, !tbaa !21
  store i1 %t1009, ptr %l495, !tbaa !21
  br label %bb252
bb252:
  %t1010 = load i1, ptr %l495, !tbaa !21
  br i1 %t1010, label %bb253, label %bb254
bb253:
  store i1 true, ptr %l501, !tbaa !21
  br label %bb255
bb254:
  %t1011 = load i32, ptr %l24, !tbaa !23
  %t1012 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t1015 = icmp eq i32 %t1011, %t1012
  store i1 %t1015, ptr %l501, !tbaa !21
  br label %bb255
bb255:
  %t1017 = load i1, ptr %l501, !tbaa !21
  store i1 %t1017, ptr %l489, !tbaa !21
  br label %bb256
bb256:
  %t1018 = load i1, ptr %l489, !tbaa !21
  br i1 %t1018, label %bb257, label %bb258
bb257:
  %t1019 = load ptr, ptr %l0, !tbaa !29
  %t1020 = load %"compiler/source:Span", ptr %l1
  %t1021 = load i32, ptr %l24, !tbaa !23
  %t1022 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t1027 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econversion(ptr %v0, ptr %v0, ptr %v3, ptr %t1019, %"compiler/source:Span" %t1020, i32 %t1021, { i64, ptr } %t1022)
  store ptr %t1027, ptr %l509
  br label %bb259
bb258:
  br label %bb260
bb259:
  call void @__olang_scope_close(ptr %s24)
  %t1028 = load ptr, ptr %l509, !tbaa !29
  store ptr %t1028, ptr %rv
  br label %ret
bb260:
  %t1029 = load i32, ptr %l24, !tbaa !23
  %t1031 = icmp sge i32 %t1029, 0
  br i1 %t1031, label %bb261, label %bb262
bb261:
  %t1033 = load ptr, ptr %l0, !tbaa !29
  %t1034 = load i32, ptr %l24, !tbaa !23
  %t1037 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t1033, i32 %t1034)
  store i1 %t1037, ptr %l515
  br label %bb263
bb262:
  store i1 false, ptr %l512, !tbaa !21
  br label %bb264
bb263:
  %t1038 = load i1, ptr %l515, !tbaa !21
  store i1 %t1038, ptr %l512, !tbaa !21
  br label %bb264
bb264:
  %t1039 = load i1, ptr %l512, !tbaa !21
  br i1 %t1039, label %bb265, label %bb266
bb265:
  %t1040 = load ptr, ptr %l0, !tbaa !29
  %t1041 = load %"compiler/source:Span", ptr %l1
  %t1042 = load %"compiler/source:Span", ptr %l18
  %t1043 = load i32, ptr %l24, !tbaa !23
  %t1044 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t1050 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econstruct(ptr %v0, ptr %v0, ptr %v3, ptr %t1040, %"compiler/source:Span" %t1041, %"compiler/source:Span" %t1042, i32 %t1043, { i64, ptr } %t1044)
  store ptr %t1050, ptr %l521
  br label %bb267
bb266:
  br label %bb268
bb267:
  call void @__olang_scope_close(ptr %s24)
  %t1051 = load ptr, ptr %l521, !tbaa !29
  store ptr %t1051, ptr %rv
  br label %ret
bb268:
  %t1052 = load i32, ptr %l24, !tbaa !23
  %t1054 = icmp sge i32 %t1052, 0
  br i1 %t1054, label %bb269, label %bb270
bb269:
  store %olang.scope zeroinitializer, ptr %s36
  %t1056 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1056, ptr %l524, !tbaa !29
  %t1057 = load %"compiler/source:Span", ptr %l18
  store %"compiler/source:Span" %t1057, ptr %l525
  %t1058 = load ptr, ptr %l0, !tbaa !29
  %t1059 = load i32, ptr %l24, !tbaa !23
  %t1062 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s36, ptr %t1058, i32 %t1059)
  store { i64, ptr } %t1062, ptr %l528
  br label %bb271
bb270:
  br label %bb276
bb271:
  %t1063 = load { i64, ptr }, ptr %l528, !tbaa !27
  %t1064 = extractvalue { i64, ptr } %t1063, 0
  %t1065 = extractvalue { i64, ptr } %t1063, 1
  %t1066 = mul i64 %t1064, 1
  %t1067 = call ptr @__olang_scope_alloc(ptr %s36, i64 %t1066)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1067, ptr %t1065, i64 %t1066, i1 false)
  %t1068 = insertvalue { i64, ptr } undef, i64 %t1064, 0
  %t1069 = insertvalue { i64, ptr } %t1068, ptr %t1067, 1
  %t1071 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotCallable(ptr %s36, ptr %s36, { i64, ptr } %t1069)
  store %"compiler/diagmsg:Msg" %t1071, ptr %l530
  br label %bb272
bb272:
  %t1072 = load ptr, ptr %l524, !tbaa !29
  %t1073 = load %"compiler/source:Span", ptr %l525
  %t1074 = load %"compiler/diagmsg:Msg", ptr %l530
  %t1075 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s36, ptr %t1072, %"compiler/source:Span" %t1073, %"compiler/diagmsg:Msg" %t1074)
  store i64 %t1075, ptr %l531
  br label %bb273
bb273:
  %t1076 = load ptr, ptr %l0, !tbaa !29
  %t1077 = load { i64, ptr }, ptr %l3, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v0, ptr %t1076, { i64, ptr } %t1077)
  br label %bb274
bb274:
  %t1080 = load ptr, ptr %l0, !tbaa !29
  %t1081 = load %"compiler/source:Span", ptr %l1
  %t1084 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t1080, %"compiler/source:Span" %t1081)
  store ptr %t1084, ptr %l536
  br label %bb275
bb275:
  call void @__olang_scope_close(ptr %s36)
  call void @__olang_scope_close(ptr %s24)
  %t1085 = load ptr, ptr %l536, !tbaa !29
  store ptr %t1085, ptr %rv
  br label %ret
bb276:
  br label %bb277
bb277:
  %t1086 = load ptr, ptr %l0, !tbaa !29
  %t1087 = load ptr, ptr %l15, !tbaa !29
  %t1090 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNamed(ptr %v0, ptr %v1, ptr %t1086, ptr %t1087)
  store i32 %t1090, ptr %l539
  br label %bb278
bb278:
  %t1091 = load i32, ptr %l539, !tbaa !23
  store i32 %t1091, ptr %l25, !tbaa !23
  %t1092 = load i32, ptr %l25, !tbaa !23
  %t1094 = icmp slt i32 %t1092, 0
  br i1 %t1094, label %bb279, label %bb280
bb279:
  %t1096 = load ptr, ptr %l0, !tbaa !29
  %t1097 = load ptr, ptr %l15, !tbaa !29
  %t1100 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstanceWritten(ptr %v0, ptr %v1, ptr %t1096, ptr %t1097)
  store i32 %t1100, ptr %l544
  br label %bb281
bb280:
  br label %bb282
bb281:
  %t1101 = load i32, ptr %l544, !tbaa !23
  store i32 %t1101, ptr %l25, !tbaa !23
  br label %bb282
bb282:
  %t1102 = load i32, ptr %l25, !tbaa !23
  %t1104 = icmp sge i32 %t1102, 0
  br i1 %t1104, label %bb283, label %bb284
bb283:
  %t1106 = load ptr, ptr %l0, !tbaa !29
  %t1107 = load i32, ptr %l16, !tbaa !23
  %t1110 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t1106, i32 %t1107)
  store { i64, ptr } %t1110, ptr %l550
  br label %bb285
bb284:
  store i1 false, ptr %l547, !tbaa !21
  br label %bb287
bb285:
  %t1111 = load { i64, ptr }, ptr %l550, !tbaa !27
  %t1112 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s24, { i64, ptr } %t1111, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d6, i32 0, i32 1) })
  store i1 %t1112, ptr %l551
  br label %bb286
bb286:
  %t1113 = load i1, ptr %l551, !tbaa !21
  store i1 %t1113, ptr %l547, !tbaa !21
  br label %bb287
bb287:
  %t1114 = load i1, ptr %l547, !tbaa !21
  br i1 %t1114, label %bb288, label %bb289
bb288:
  %t1115 = load ptr, ptr %l0, !tbaa !29
  %t1116 = load i32, ptr %l25, !tbaa !23
  %t1119 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %t1115, i32 %t1116)
  store i1 %t1119, ptr %l555
  br label %bb290
bb289:
  store i1 false, ptr %l552, !tbaa !21
  br label %bb291
bb290:
  %t1120 = load i1, ptr %l555, !tbaa !21
  store i1 %t1120, ptr %l552, !tbaa !21
  br label %bb291
bb291:
  %t1121 = load i1, ptr %l552, !tbaa !21
  br i1 %t1121, label %bb292, label %bb293
bb292:
  %t1122 = load ptr, ptr %l0, !tbaa !29
  %t1123 = load i32, ptr %l25, !tbaa !23
  %t1124 = load i32, ptr %l16, !tbaa !23
  %t1128 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehasCase(ptr %v0, ptr %t1122, i32 %t1123, i32 %t1124)
  store i1 %t1128, ptr %l560
  br label %bb294
bb293:
  store i1 false, ptr %l556, !tbaa !21
  br label %bb295
bb294:
  %t1129 = load i1, ptr %l560, !tbaa !21
  %t1130 = xor i1 %t1129, true
  store i1 %t1130, ptr %l556, !tbaa !21
  br label %bb295
bb295:
  %t1132 = load i1, ptr %l556, !tbaa !21
  br i1 %t1132, label %bb296, label %bb297
bb296:
  %t1133 = load ptr, ptr %l0, !tbaa !29
  %t1134 = load %"compiler/source:Span", ptr %l1
  %t1135 = load %"compiler/source:Span", ptr %l18
  %t1136 = load i32, ptr %l25, !tbaa !23
  %t1137 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t1143 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eenumFrom(ptr %v0, ptr %v0, ptr %v3, ptr %t1133, %"compiler/source:Span" %t1134, %"compiler/source:Span" %t1135, i32 %t1136, { i64, ptr } %t1137)
  store ptr %t1143, ptr %l567
  br label %bb298
bb297:
  br label %bb299
bb298:
  call void @__olang_scope_close(ptr %s24)
  %t1144 = load ptr, ptr %l567, !tbaa !29
  store ptr %t1144, ptr %rv
  br label %ret
bb299:
  %t1145 = load i32, ptr %l25, !tbaa !23
  %t1147 = icmp sge i32 %t1145, 0
  br i1 %t1147, label %bb300, label %bb301
bb300:
  %t1149 = load ptr, ptr %l0, !tbaa !29
  %t1150 = load i32, ptr %l25, !tbaa !23
  %t1153 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %t1149, i32 %t1150)
  store i1 %t1153, ptr %l573
  br label %bb302
bb301:
  store i1 false, ptr %l570, !tbaa !21
  br label %bb303
bb302:
  %t1154 = load i1, ptr %l573, !tbaa !21
  %t1155 = xor i1 %t1154, true
  store i1 %t1155, ptr %l570, !tbaa !21
  br label %bb303
bb303:
  %t1157 = load i1, ptr %l570, !tbaa !21
  br i1 %t1157, label %bb304, label %bb305
bb304:
  %t1158 = load ptr, ptr %l0, !tbaa !29
  %t1159 = load i32, ptr %l25, !tbaa !23
  %t1162 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t1158, i32 %t1159)
  store i1 %t1162, ptr %l578
  br label %bb306
bb305:
  store i1 false, ptr %l575, !tbaa !21
  br label %bb311
bb306:
  %t1163 = load i1, ptr %l578, !tbaa !21
  br i1 %t1163, label %bb307, label %bb308
bb307:
  %t1164 = load ptr, ptr %l0, !tbaa !29
  %t1165 = load i32, ptr %l25, !tbaa !23
  %t1168 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %t1164, i32 %t1165)
  store i32 %t1168, ptr %l582
  br label %bb309
bb308:
  store i1 false, ptr %l579, !tbaa !21
  br label %bb310
bb309:
  %t1169 = load i32, ptr %l582, !range !{i32 0, i32 6}
  %t1171 = trunc i64 2 to i32
  %t1172 = icmp eq i32 %t1169, %t1171
  store i1 %t1172, ptr %l579, !tbaa !21
  br label %bb310
bb310:
  %t1174 = load i1, ptr %l579, !tbaa !21
  %t1175 = xor i1 %t1174, true
  store i1 %t1175, ptr %l575, !tbaa !21
  br label %bb311
bb311:
  %t1177 = load i1, ptr %l575, !tbaa !21
  br i1 %t1177, label %bb312, label %bb313
bb312:
  %t1178 = load ptr, ptr %l0, !tbaa !29
  %t1179 = load %"compiler/source:Span", ptr %l18
  %t1180 = load ptr, ptr %l15, !tbaa !29
  %t1181 = load i32, ptr %l25, !tbaa !23
  %t1182 = load i32, ptr %l16, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoBuilder(ptr %v0, ptr %v1, ptr %t1178, %"compiler/source:Span" %t1179, ptr %t1180, i32 %t1181, i32 %t1182)
  br label %bb314
bb313:
  br label %bb317
bb314:
  %t1188 = load ptr, ptr %l0, !tbaa !29
  %t1189 = load { i64, ptr }, ptr %l3, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v0, ptr %t1188, { i64, ptr } %t1189)
  br label %bb315
bb315:
  %t1192 = load ptr, ptr %l0, !tbaa !29
  %t1193 = load %"compiler/source:Span", ptr %l1
  %t1196 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t1192, %"compiler/source:Span" %t1193)
  store ptr %t1196, ptr %l595
  br label %bb316
bb316:
  call void @__olang_scope_close(ptr %s24)
  %t1197 = load ptr, ptr %l595, !tbaa !29
  store ptr %t1197, ptr %rv
  br label %ret
bb317:
  %t1198 = load i32, ptr %l25, !tbaa !23
  %t1200 = icmp sge i32 %t1198, 0
  br i1 %t1200, label %bb318, label %bb319
bb318:
  %t1202 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1202, ptr %l598, !tbaa !29
  %t1203 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1203, ptr %l599
  %t1204 = load %"compiler/source:Span", ptr %l18
  store %"compiler/source:Span" %t1204, ptr %l600
  %t1205 = load i32, ptr %l25, !tbaa !23
  store i32 %t1205, ptr %l601, !tbaa !23
  %t1206 = load i32, ptr %l16, !tbaa !23
  store i32 %t1206, ptr %l602, !tbaa !23
  %t1207 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t1207, ptr %l603, !tbaa !27
  %t1208 = icmp sge i64 0, 0
  br i1 %t1208, label %bb320, label %bb321
bb319:
  br label %bb325
bb320:
  %t1210 = icmp sle i64 0, 1152921504606846975
  br i1 %t1210, label %bb322, label %bb323
bb321:
  call void @__olang_check_failed(ptr @olang_loc_a011517898bde8de_8eac0aa93ba66722)
  unreachable
bb322:
  %t1212 = mul i64 0, 8
  %t1213 = insertvalue { i64, ptr } undef, i64 0, 0
  %t1214 = insertvalue { i64, ptr } %t1213, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t1215 = load ptr, ptr %l598, !tbaa !29
  %t1216 = load %"compiler/source:Span", ptr %l599
  %t1217 = load %"compiler/source:Span", ptr %l600
  %t1218 = load i32, ptr %l601, !tbaa !23
  %t1219 = load i32, ptr %l602, !tbaa !23
  %t1220 = load { i64, ptr }, ptr %l603, !tbaa !27
  %t1222 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eenumCase(ptr %v0, ptr %v0, ptr %v0, ptr %v3, ptr %t1215, %"compiler/source:Span" %t1216, %"compiler/source:Span" %t1217, i32 %t1218, i32 %t1219, { i64, ptr } %t1220, { i64, ptr } %t1214)
  store ptr %t1222, ptr %l607
  br label %bb324
bb323:
  call void @__olang_check_failed(ptr @olang_loc_a011517898bde8de_8eac0aa93ba66722)
  unreachable
bb324:
  call void @__olang_scope_close(ptr %s24)
  %t1223 = load ptr, ptr %l607, !tbaa !29
  store ptr %t1223, ptr %rv
  br label %ret
bb325:
  %t1224 = load ptr, ptr %l0, !tbaa !29
  %t1225 = load ptr, ptr %l15, !tbaa !29
  %t1228 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenericNamed(ptr %v0, ptr %v1, ptr %t1224, ptr %t1225)
  store i32 %t1228, ptr %l610
  br label %bb326
bb326:
  %t1229 = load i32, ptr %l610, !tbaa !23
  store i32 %t1229, ptr %l26, !tbaa !23
  %t1230 = load i32, ptr %l26, !tbaa !23
  %t1232 = icmp sge i32 %t1230, 0
  br i1 %t1232, label %bb327, label %bb328
bb327:
  %t1234 = load ptr, ptr %l0, !tbaa !29
  %t1236 = getelementptr %"compiler/check:Checker", ptr %t1234, i32 0, i32 1
  %t1237 = load ptr, ptr %t1236, !tbaa !29
  %t1239 = getelementptr %"compiler/generic:Program", ptr %t1237, i32 0, i32 2
  %t1240 = load i32, ptr %l26, !tbaa !23
  %t1243 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t1239, i32 %t1240)
  store i32 %t1243, ptr %l618
  br label %bb329
bb328:
  store i1 false, ptr %l613, !tbaa !21
  br label %bb330
bb329:
  %t1244 = load i32, ptr %l618, !range !{i32 0, i32 6}
  %t1246 = trunc i64 1 to i32
  %t1247 = icmp eq i32 %t1244, %t1246
  store i1 %t1247, ptr %l613, !tbaa !21
  br label %bb330
bb330:
  %t1249 = load i1, ptr %l613, !tbaa !21
  br i1 %t1249, label %bb331, label %bb332
bb331:
  %t1250 = load ptr, ptr %l0, !tbaa !29
  %t1251 = load %"compiler/source:Span", ptr %l1
  %t1252 = load %"compiler/source:Span", ptr %l18
  %t1253 = load i32, ptr %l26, !tbaa !23
  %t1254 = load i32, ptr %l16, !tbaa !23
  %t1255 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t1256 = load i32, ptr %l4, !tbaa !23
  %t1264 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenericCase(ptr %v0, ptr %v0, ptr %v3, ptr %t1250, %"compiler/source:Span" %t1251, %"compiler/source:Span" %t1252, i32 %t1253, i32 %t1254, { i64, ptr } %t1255, i32 %t1256)
  store ptr %t1264, ptr %l628
  br label %bb333
bb332:
  br label %bb334
bb333:
  call void @__olang_scope_close(ptr %s24)
  %t1265 = load ptr, ptr %l628, !tbaa !29
  store ptr %t1265, ptr %rv
  br label %ret
bb334:
  %t1266 = load ptr, ptr %l0, !tbaa !29
  %t1267 = load ptr, ptr %l15, !tbaa !29
  %t1270 = call %"compiler/check:reflList" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistOf(ptr %v0, ptr %v1, ptr %t1266, ptr %t1267)
  store %"compiler/check:reflList" %t1270, ptr %l631
  br label %bb335
bb335:
  %t1271 = load %"compiler/check:reflList", ptr %l631
  store %"compiler/check:reflList" %t1271, ptr %l27
  %t1272 = getelementptr %"compiler/check:reflList", ptr %l27, i32 0, i32 0
  %t1273 = load i1, ptr %t1272, !tbaa !21
  br i1 %t1273, label %bb336, label %bb337
bb336:
  store %olang.scope zeroinitializer, ptr %s42
  %t1275 = load ptr, ptr %l0, !tbaa !29
  %t1276 = load i32, ptr %l16, !tbaa !23
  %t1279 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t1275, i32 %t1276)
  store { i64, ptr } %t1279, ptr %l635
  br label %bb338
bb337:
  br label %bb361
bb338:
  %t1280 = load { i64, ptr }, ptr %l635, !tbaa !27
  %t1281 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s42, { i64, ptr } %t1280, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d7, i32 0, i32 1) })
  store i1 %t1281, ptr %l636
  br label %bb339
bb339:
  %t1282 = load i1, ptr %l636, !tbaa !21
  br i1 %t1282, label %bb340, label %bb341
bb340:
  %t1283 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t1285 = extractvalue { i64, ptr } %t1283, 0
  %t1287 = icmp eq i64 %t1285, 0
  store i1 %t1287, ptr %l637, !tbaa !21
  br label %bb342
bb341:
  store i1 false, ptr %l637, !tbaa !21
  br label %bb342
bb342:
  %t1289 = load i1, ptr %l637, !tbaa !21
  br i1 %t1289, label %bb343, label %bb344
bb343:
  store %olang.scope zeroinitializer, ptr %s43
  %t1290 = getelementptr %"compiler/check:reflList", ptr %l27, i32 0, i32 1
  %t1291 = load i32, ptr %t1290, !tbaa !23
  %t1292 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t1295 = icmp eq i32 %t1291, %t1292
  br i1 %t1295, label %bb345, label %bb346
bb344:
  br label %bb353
bb345:
  %t1297 = load ptr, ptr %l0, !tbaa !29
  %t1298 = load %"compiler/source:Span", ptr %l1
  %t1301 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t1297, %"compiler/source:Span" %t1298)
  store ptr %t1301, ptr %l646
  br label %bb347
bb346:
  br label %bb348
bb347:
  call void @__olang_scope_close(ptr %s43)
  call void @__olang_scope_close(ptr %s42)
  call void @__olang_scope_close(ptr %s24)
  %t1302 = load ptr, ptr %l646, !tbaa !29
  store ptr %t1302, ptr %rv
  br label %ret
bb348:
  %t1303 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1303, ptr %l647, !tbaa !29
  %t1304 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1304, ptr %l648
  %t1305 = load ptr, ptr %l0, !tbaa !29
  %t1307 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t1305)
  store i32 %t1307, ptr %l650
  br label %bb349
bb349:
  %t1308 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1308, ptr %l651, !tbaa !29
  %t1309 = load ptr, ptr %l15, !tbaa !29
  %t1311 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t1309)
  store %"compiler/source:Span" %t1311, ptr %l653
  br label %bb350
bb350:
  %t1312 = load %"compiler/check:reflList", ptr %l27
  %t1313 = load ptr, ptr %l651, !tbaa !29
  %t1314 = load %"compiler/source:Span", ptr %l653
  %t1316 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistItems(ptr %v0, ptr %s43, ptr %t1313, %"compiler/source:Span" %t1314, %"compiler/check:reflList" %t1312)
  store { i64, ptr } %t1316, ptr %l655
  br label %bb351
bb351:
  %t1317 = load { i64, ptr }, ptr %l655, !tbaa !27
  %t1318 = extractvalue { i64, ptr } %t1317, 0
  %t1319 = load ptr, ptr %l647, !tbaa !29
  %t1320 = load %"compiler/source:Span", ptr %l648
  %t1321 = load i32, ptr %l650, !tbaa !23
  %t1323 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v3, ptr %t1319, %"compiler/source:Span" %t1320, i32 %t1321, i64 %t1318)
  store ptr %t1323, ptr %l657
  br label %bb352
bb352:
  call void @__olang_scope_close(ptr %s43)
  call void @__olang_scope_close(ptr %s42)
  call void @__olang_scope_close(ptr %s24)
  %t1324 = load ptr, ptr %l657, !tbaa !29
  store ptr %t1324, ptr %rv
  br label %ret
bb353:
  %t1325 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1325, ptr %l658, !tbaa !29
  %t1326 = load ptr, ptr %l15, !tbaa !29
  %t1328 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t1326)
  store %"compiler/source:Span" %t1328, ptr %l660
  br label %bb354
bb354:
  %t1329 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1329, ptr %l661, !tbaa !29
  %t1330 = load ptr, ptr %l15, !tbaa !29
  %t1332 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t1330)
  store %"compiler/source:Span" %t1332, ptr %l663
  br label %bb355
bb355:
  %t1333 = load ptr, ptr %l661, !tbaa !29
  %t1334 = load %"compiler/source:Span", ptr %l663
  %t1335 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %s42, ptr %t1333, %"compiler/source:Span" %t1334)
  store { i64, ptr } %t1335, ptr %l664
  br label %bb356
bb356:
  %t1336 = load { i64, ptr }, ptr %l664, !tbaa !27
  %t1337 = extractvalue { i64, ptr } %t1336, 1
  %t1338 = extractvalue { i64, ptr } %t1336, 0
  %t1339 = call ptr @__olang_scope_alloc(ptr %s42, i64 %t1338)
  call void @olang_textcopy(ptr %t1339, ptr %t1337, i64 %t1338)
  %t1340 = insertvalue { i64, ptr } undef, i64 %t1338, 0
  %t1341 = insertvalue { i64, ptr } %t1340, ptr %t1339, 1
  %t1343 = extractvalue { i64, ptr } %t1341, 0
  %t1344 = extractvalue { i64, ptr } %t1341, 1
  %t1345 = mul i64 %t1343, 1
  %t1346 = call ptr @__olang_scope_alloc(ptr %s42, i64 %t1345)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1346, ptr %t1344, i64 %t1345, i1 false)
  %t1347 = insertvalue { i64, ptr } undef, i64 %t1343, 0
  %t1348 = insertvalue { i64, ptr } %t1347, ptr %t1346, 1
  %t1350 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflListValue(ptr %s42, ptr %s42, { i64, ptr } %t1348)
  store %"compiler/diagmsg:Msg" %t1350, ptr %l667
  br label %bb357
bb357:
  %t1351 = load ptr, ptr %l658, !tbaa !29
  %t1352 = load %"compiler/source:Span", ptr %l660
  %t1353 = load %"compiler/diagmsg:Msg", ptr %l667
  %t1354 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s42, ptr %t1351, %"compiler/source:Span" %t1352, %"compiler/diagmsg:Msg" %t1353)
  store i64 %t1354, ptr %l668
  br label %bb358
bb358:
  %t1355 = load ptr, ptr %l0, !tbaa !29
  %t1356 = load { i64, ptr }, ptr %l3, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v0, ptr %t1355, { i64, ptr } %t1356)
  br label %bb359
bb359:
  %t1359 = load ptr, ptr %l0, !tbaa !29
  %t1360 = load %"compiler/source:Span", ptr %l1
  %t1363 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t1359, %"compiler/source:Span" %t1360)
  store ptr %t1363, ptr %l673
  br label %bb360
bb360:
  call void @__olang_scope_close(ptr %s42)
  call void @__olang_scope_close(ptr %s24)
  %t1364 = load ptr, ptr %l673, !tbaa !29
  store ptr %t1364, ptr %rv
  br label %ret
bb361:
  %t1365 = load ptr, ptr %l0, !tbaa !29
  %t1366 = load ptr, ptr %l15, !tbaa !29
  %t1369 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edescTypeOf(ptr %v0, ptr %v1, ptr %t1365, ptr %t1366)
  store i32 %t1369, ptr %l676
  br label %bb362
bb362:
  %t1370 = load i32, ptr %l676, !tbaa !23
  store i32 %t1370, ptr %l28, !tbaa !23
  %t1371 = load i32, ptr %l28, !tbaa !23
  %t1373 = icmp sge i32 %t1371, 0
  br i1 %t1373, label %bb363, label %bb364
bb363:
  %t1375 = load ptr, ptr %l0, !tbaa !29
  %t1376 = load i32, ptr %l16, !tbaa !23
  %t1379 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t1375, i32 %t1376)
  store { i64, ptr } %t1379, ptr %l682
  br label %bb365
bb364:
  store i1 false, ptr %l679, !tbaa !21
  br label %bb367
bb365:
  %t1380 = load { i64, ptr }, ptr %l682, !tbaa !27
  %t1381 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s24, { i64, ptr } %t1380, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d8, i32 0, i32 1) })
  store i1 %t1381, ptr %l683
  br label %bb366
bb366:
  %t1382 = load i1, ptr %l683, !tbaa !21
  store i1 %t1382, ptr %l679, !tbaa !21
  br label %bb367
bb367:
  %t1383 = load i1, ptr %l679, !tbaa !21
  br i1 %t1383, label %bb368, label %bb369
bb368:
  %t1384 = load i32, ptr %l28, !tbaa !23
  %t1385 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t1388 = icmp eq i32 %t1384, %t1385
  br i1 %t1388, label %bb370, label %bb371
bb369:
  br label %bb380
bb370:
  %t1390 = load ptr, ptr %l0, !tbaa !29
  %t1391 = load %"compiler/source:Span", ptr %l1
  %t1394 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t1390, %"compiler/source:Span" %t1391)
  store ptr %t1394, ptr %l689
  br label %bb372
bb371:
  br label %bb373
bb372:
  call void @__olang_scope_close(ptr %s24)
  %t1395 = load ptr, ptr %l689, !tbaa !29
  store ptr %t1395, ptr %rv
  br label %ret
bb373:
  %t1396 = load ptr, ptr %l0, !tbaa !29
  %t1397 = load %"compiler/source:Span", ptr %l1
  %t1398 = load %"compiler/source:Span", ptr %l18
  %t1399 = load i32, ptr %l28, !tbaa !23
  %t1400 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t1406 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflOf(ptr %v0, ptr %v0, ptr %v3, ptr %t1396, %"compiler/source:Span" %t1397, %"compiler/source:Span" %t1398, i32 %t1399, { i64, ptr } %t1400)
  store ptr %t1406, ptr %l695
  br label %bb374
bb374:
  %t1407 = load ptr, ptr %l695, !tbaa !29
  store ptr %t1407, ptr %l29, !tbaa !29
  %t1408 = load ptr, ptr %l29, !tbaa !29
  %t1410 = icmp eq ptr %t1408, null
  br i1 %t1410, label %bb375, label %bb376
bb375:
  %t1412 = load ptr, ptr %l0, !tbaa !29
  %t1413 = load %"compiler/source:Span", ptr %l1
  %t1416 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t1412, %"compiler/source:Span" %t1413)
  store ptr %t1416, ptr %l700
  br label %bb377
bb376:
  br label %bb378
bb377:
  call void @__olang_scope_close(ptr %s24)
  %t1417 = load ptr, ptr %l700, !tbaa !29
  store ptr %t1417, ptr %rv
  br label %ret
bb378:
  %t1418 = load ptr, ptr %l0, !tbaa !29
  %t1419 = load %"compiler/source:Span", ptr %l1
  %t1420 = load ptr, ptr %l29, !tbaa !29
  %t1424 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v3, ptr %v3, ptr %t1418, %"compiler/source:Span" %t1419, ptr %t1420)
  store ptr %t1424, ptr %l704
  br label %bb379
bb379:
  call void @__olang_scope_close(ptr %s24)
  %t1425 = load ptr, ptr %l704, !tbaa !29
  store ptr %t1425, ptr %rv
  br label %ret
bb380:
  %t1426 = getelementptr %"compiler/names:Ref", ptr %l17, i32 0, i32 0
  %t1427 = load i32, ptr %t1426, !range !{i32 0, i32 9}
  %t1429 = trunc i64 0 to i32
  %t1430 = icmp eq i32 %t1427, %t1429
  br i1 %t1430, label %bb381, label %bb382
bb381:
  %t1432 = load ptr, ptr %l0, !tbaa !29
  %t1433 = load ptr, ptr %l15, !tbaa !29
  %t1436 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eimportPath(ptr %v0, ptr %v1, ptr %t1432, ptr %t1433)
  store i1 %t1436, ptr %l710
  br label %bb383
bb382:
  store i1 false, ptr %l707, !tbaa !21
  br label %bb384
bb383:
  %t1437 = load i1, ptr %l710, !tbaa !21
  store i1 %t1437, ptr %l707, !tbaa !21
  br label %bb384
bb384:
  %t1438 = load i1, ptr %l707, !tbaa !21
  br i1 %t1438, label %bb385, label %bb386
bb385:
  %t1439 = load ptr, ptr %l15, !tbaa !29
  store ptr %t1439, ptr %l712, !tbaa !29
  store i1 false, ptr %l713, !tbaa !21
  %t1440 = load ptr, ptr %l712, !tbaa !29
  %t1441 = icmp ne ptr %t1440, null
  br i1 %t1441, label %bb387, label %bb388
bb386:
  br label %bb418
bb387:
  %t1443 = load ptr, ptr %l712, !tbaa !29
  %t1444 = load i64, ptr %t1443, !range !{i64 0, i64 30}
  %t1446 = icmp eq i64 %t1444, 0
  store i1 %t1446, ptr %l713, !tbaa !21
  br label %bb388
bb388:
  %t1447 = load i1, ptr %l713, !tbaa !21
  br i1 %t1447, label %bb389, label %bb390
bb389:
  %t1448 = load ptr, ptr %l15, !tbaa !29
  %t1450 = getelementptr { i64, [4 x i64] }, ptr %t1448, i32 0, i32 1
  %t1451 = getelementptr { %"compiler/source:Span", i32 }, ptr %t1450, i32 0, i32 0
  %t1452 = load %"compiler/source:Span", ptr %t1451
  store %"compiler/source:Span" %t1452, ptr %l30
  br label %bb391
bb390:
  br label %bb394
bb391:
  %t1454 = load ptr, ptr %l0, !tbaa !29
  %t1456 = getelementptr %"compiler/check:Checker", ptr %t1454, i32 0, i32 1
  %t1457 = load ptr, ptr %t1456, !tbaa !29
  %t1459 = getelementptr %"compiler/generic:Program", ptr %t1457, i32 0, i32 1
  %t1460 = load ptr, ptr %t1459, !tbaa !29
  store ptr %t1460, ptr %l720, !tbaa !29
  %t1461 = load ptr, ptr %l0, !tbaa !29
  %t1463 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1461)
  store ptr %t1463, ptr %l722
  br label %bb392
bb392:
  %t1464 = load ptr, ptr %l722, !tbaa !29
  %t1466 = getelementptr %"compiler/check:frame", ptr %t1464, i32 0, i32 2
  %t1467 = load i64, ptr %t1466, !tbaa !24
  %t1468 = getelementptr %"compiler/source:Span", ptr %l30, i32 0, i32 0
  %t1469 = load i32, ptr %t1468, !tbaa !23
  %t1470 = load ptr, ptr %l720, !tbaa !29
  %t1473 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t1470, i64 %t1467, i32 %t1469)
  store %"compiler/names:Ref" %t1473, ptr %l726
  br label %bb393
bb393:
  %t1474 = getelementptr %"compiler/names:Ref", ptr %l726, i32 0, i32 1
  %t1475 = load i64, ptr %t1474, !tbaa !24
  store i64 %t1475, ptr %l711, !tbaa !24
  br label %bb407
bb394:
  %t1477 = load ptr, ptr %l15, !tbaa !29
  store ptr %t1477, ptr %l728, !tbaa !29
  store i1 false, ptr %l729, !tbaa !21
  %t1478 = load ptr, ptr %l728, !tbaa !29
  %t1479 = icmp ne ptr %t1478, null
  br i1 %t1479, label %bb395, label %bb396
bb395:
  %t1481 = load ptr, ptr %l728, !tbaa !29
  %t1482 = load i64, ptr %t1481, !range !{i64 0, i64 30}
  %t1484 = icmp eq i64 %t1482, 14
  store i1 %t1484, ptr %l729, !tbaa !21
  br label %bb396
bb396:
  %t1485 = load i1, ptr %l729, !tbaa !21
  br i1 %t1485, label %bb397, label %bb398
bb397:
  %t1486 = load ptr, ptr %l15, !tbaa !29
  %t1488 = getelementptr { i64, [4 x i64] }, ptr %t1486, i32 0, i32 1
  %t1489 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t1488, i32 0, i32 0
  %t1490 = load %"compiler/source:Span", ptr %t1489
  store %"compiler/source:Span" %t1490, ptr %l31
  br label %bb399
bb398:
  br label %bb402
bb399:
  %t1492 = load ptr, ptr %l0, !tbaa !29
  %t1494 = getelementptr %"compiler/check:Checker", ptr %t1492, i32 0, i32 1
  %t1495 = load ptr, ptr %t1494, !tbaa !29
  %t1497 = getelementptr %"compiler/generic:Program", ptr %t1495, i32 0, i32 1
  %t1498 = load ptr, ptr %t1497, !tbaa !29
  store ptr %t1498, ptr %l736, !tbaa !29
  %t1499 = load ptr, ptr %l0, !tbaa !29
  %t1501 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1499)
  store ptr %t1501, ptr %l738
  br label %bb400
bb400:
  %t1502 = load ptr, ptr %l738, !tbaa !29
  %t1504 = getelementptr %"compiler/check:frame", ptr %t1502, i32 0, i32 2
  %t1505 = load i64, ptr %t1504, !tbaa !24
  %t1506 = getelementptr %"compiler/source:Span", ptr %l31, i32 0, i32 1
  %t1507 = load i32, ptr %t1506, !tbaa !23
  %t1508 = load ptr, ptr %l736, !tbaa !29
  %t1511 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eMember(ptr %v0, ptr %t1508, i64 %t1505, i32 %t1507)
  store %"compiler/names:Ref" %t1511, ptr %l742
  br label %bb401
bb401:
  %t1512 = getelementptr %"compiler/names:Ref", ptr %l742, i32 0, i32 1
  %t1513 = load i64, ptr %t1512, !tbaa !24
  store i64 %t1513, ptr %l711, !tbaa !24
  br label %bb407
bb402:
  br i1 true, label %bb403, label %bb404
bb403:
  br label %bb405
bb404:
  br label %bb406
bb405:
  store i64 -1, ptr %l711, !tbaa !24
  br label %bb407
bb406:
  call void @__olang_check_failed(ptr @olang_loc_3232b878747d812_d16ad228b357b416)
  unreachable
bb407:
  %t1515 = load i64, ptr %l711, !tbaa !24
  store i64 %t1515, ptr %l32, !tbaa !24
  %t1516 = load i64, ptr %l32, !tbaa !24
  %t1518 = icmp sge i64 %t1516, 0
  br i1 %t1518, label %bb408, label %bb409
bb408:
  %t1520 = load ptr, ptr %l0, !tbaa !29
  %t1521 = load i64, ptr %l32, !tbaa !24
  %t1522 = load i32, ptr %l16, !tbaa !23
  %t1526 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclaresName(ptr %v0, ptr %t1520, i64 %t1521, i32 %t1522)
  store i1 %t1526, ptr %l750
  br label %bb410
bb409:
  store i1 false, ptr %l746, !tbaa !21
  br label %bb411
bb410:
  %t1527 = load i1, ptr %l750, !tbaa !21
  %t1528 = xor i1 %t1527, true
  store i1 %t1528, ptr %l746, !tbaa !21
  br label %bb411
bb411:
  %t1530 = load i1, ptr %l746, !tbaa !21
  br i1 %t1530, label %bb412, label %bb413
bb412:
  %t1531 = load ptr, ptr %l0, !tbaa !29
  %t1532 = load i64, ptr %l32, !tbaa !24
  %t1533 = load i32, ptr %l16, !tbaa !23
  %t1534 = load %"compiler/source:Span", ptr %l18
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enotInModule(ptr %v0, ptr %t1531, i64 %t1532, i32 %t1533, %"compiler/source:Span" %t1534)
  br label %bb414
bb413:
  br label %bb415
bb414:
  br label %bb415
bb415:
  %t1539 = load ptr, ptr %l0, !tbaa !29
  %t1540 = load { i64, ptr }, ptr %l3, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v0, ptr %t1539, { i64, ptr } %t1540)
  br label %bb416
bb416:
  %t1543 = load ptr, ptr %l0, !tbaa !29
  %t1544 = load %"compiler/source:Span", ptr %l1
  %t1547 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t1543, %"compiler/source:Span" %t1544)
  store ptr %t1547, ptr %l760
  br label %bb417
bb417:
  call void @__olang_scope_close(ptr %s24)
  %t1548 = load ptr, ptr %l760, !tbaa !29
  store ptr %t1548, ptr %rv
  br label %ret
bb418:
  %t1549 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1549, ptr %l761, !tbaa !29
  %t1550 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1550, ptr %l762
  %t1551 = load ptr, ptr %l15, !tbaa !29
  store ptr %t1551, ptr %l763, !tbaa !29
  %t1552 = load i32, ptr %l16, !tbaa !23
  store i32 %t1552, ptr %l764, !tbaa !23
  %t1553 = load %"compiler/source:Span", ptr %l18
  store %"compiler/source:Span" %t1553, ptr %l765
  %t1554 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t1554, ptr %l766, !tbaa !27
  %t1555 = icmp sge i64 0, 0
  br i1 %t1555, label %bb419, label %bb420
bb419:
  %t1557 = icmp sle i64 0, 1152921504606846975
  br i1 %t1557, label %bb421, label %bb422
bb420:
  call void @__olang_check_failed(ptr @olang_loc_2ae84e14818660ca_d6b1ea5d85db4e36)
  unreachable
bb421:
  %t1559 = mul i64 0, 8
  %t1560 = insertvalue { i64, ptr } undef, i64 0, 0
  %t1561 = insertvalue { i64, ptr } %t1560, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t1561, ptr %l769, !tbaa !27
  %t1562 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s24, i32 0, i32 0)
  store %"compiler/source:Span" %t1562, ptr %l770
  br label %bb423
bb422:
  call void @__olang_check_failed(ptr @olang_loc_2ae84e14818660ca_d6b1ea5d85db4e36)
  unreachable
bb423:
  %t1563 = load ptr, ptr %l761, !tbaa !29
  %t1564 = load %"compiler/source:Span", ptr %l762
  %t1565 = load ptr, ptr %l763, !tbaa !29
  %t1566 = load i32, ptr %l764, !tbaa !23
  %t1567 = load %"compiler/source:Span", ptr %l765
  %t1568 = load { i64, ptr }, ptr %l766, !tbaa !27
  %t1569 = load { i64, ptr }, ptr %l769, !tbaa !27
  %t1570 = load %"compiler/source:Span", ptr %l770
  %t1571 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emethodCall(ptr %v0, ptr %v1, ptr %v0, ptr %v3, ptr %v3, ptr %t1563, %"compiler/source:Span" %t1564, ptr %t1565, i32 %t1566, %"compiler/source:Span" %t1567, { i64, ptr } %t1568, { i64, ptr } %t1569, %"compiler/source:Span" %t1570)
  store ptr %t1571, ptr %l771
  br label %bb424
bb424:
  call void @__olang_scope_close(ptr %s24)
  %t1572 = load ptr, ptr %l771, !tbaa !29
  store ptr %t1572, ptr %rv
  br label %ret
bb425:
  %t1573 = load ptr, ptr %l2, !tbaa !29
  store ptr %t1573, ptr %l772, !tbaa !29
  store i1 false, ptr %l773, !tbaa !21
  %t1574 = load ptr, ptr %l772, !tbaa !29
  %t1575 = icmp ne ptr %t1574, null
  br i1 %t1575, label %bb426, label %bb427
bb426:
  %t1577 = load ptr, ptr %l772, !tbaa !29
  %t1578 = load i64, ptr %t1577, !range !{i64 0, i64 30}
  %t1580 = icmp eq i64 %t1578, 13
  store i1 %t1580, ptr %l773, !tbaa !21
  br label %bb427
bb427:
  %t1581 = load i1, ptr %l773, !tbaa !21
  br i1 %t1581, label %bb428, label %bb429
bb428:
  %t1582 = load ptr, ptr %l2, !tbaa !29
  %t1584 = getelementptr { i64, [4 x i64] }, ptr %t1582, i32 0, i32 1
  %t1585 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t1584, i32 0, i32 0
  %t1586 = load %"compiler/source:Span", ptr %t1585
  store %"compiler/source:Span" %t1586, ptr %l33
  %t1588 = load ptr, ptr %l2, !tbaa !29
  %t1590 = getelementptr { i64, [4 x i64] }, ptr %t1588, i32 0, i32 1
  %t1591 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t1590, i32 0, i32 1
  %t1592 = load ptr, ptr %t1591
  store ptr %t1592, ptr %l34, !tbaa !29
  %t1594 = load ptr, ptr %l2, !tbaa !29
  %t1596 = getelementptr { i64, [4 x i64] }, ptr %t1594, i32 0, i32 1
  %t1597 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t1596, i32 0, i32 2
  %t1598 = load { i64, ptr }, ptr %t1597
  store { i64, ptr } %t1598, ptr %l35, !tbaa !27
  br label %bb430
bb429:
  br label %bb439
bb430:
  %t1600 = load ptr, ptr %l0, !tbaa !29
  %t1601 = load %"compiler/source:Span", ptr %l1
  %t1602 = load ptr, ptr %l34, !tbaa !29
  %t1603 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t1604 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t1610 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattrRead(ptr %v0, ptr %v1, ptr %v1, ptr %v0, ptr %v3, ptr %t1600, %"compiler/source:Span" %t1601, ptr %t1602, { i64, ptr } %t1603, { i64, ptr } %t1604)
  store ptr %t1610, ptr %l787
  br label %bb431
bb431:
  %t1611 = load ptr, ptr %l787, !tbaa !29
  store ptr %t1611, ptr %l36, !tbaa !29
  %t1612 = load ptr, ptr %l36, !tbaa !29
  %t1614 = icmp eq ptr %t1612, null
  %t1616 = xor i1 %t1614, true
  br i1 %t1616, label %bb432, label %bb433
bb432:
  %t1618 = load ptr, ptr %l36, !tbaa !29
  store ptr %t1618, ptr %rv
  br label %ret
bb433:
  br label %bb434
bb434:
  %t1620 = load ptr, ptr %l0, !tbaa !29
  %t1621 = load %"compiler/source:Span", ptr %l1
  %t1622 = load %"compiler/source:Span", ptr %l33
  %t1623 = load ptr, ptr %l34, !tbaa !29
  %t1624 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t1625 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t1626 = load i32, ptr %l4, !tbaa !23
  %t1634 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenericCall(ptr %v0, ptr %v1, ptr %v1, ptr %v0, ptr %v0, ptr %t1620, %"compiler/source:Span" %t1621, %"compiler/source:Span" %t1622, ptr %t1623, { i64, ptr } %t1624, { i64, ptr } %t1625, i32 %t1626)
  store ptr %t1634, ptr %l799
  br label %bb435
bb435:
  %t1635 = load ptr, ptr %l799, !tbaa !29
  store ptr %t1635, ptr %l37, !tbaa !29
  %t1636 = load ptr, ptr %l37, !tbaa !29
  %t1638 = icmp eq ptr %t1636, null
  br i1 %t1638, label %bb436, label %bb437
bb436:
  call void @__olang_check_failed(ptr @olang_loc_27ea26ba0b212871_efa975473d719345)
  unreachable
bb437:
  br label %bb438
bb438:
  %t1640 = load ptr, ptr %l37, !tbaa !29
  store ptr %t1640, ptr %rv
  br label %ret
bb439:
  br i1 true, label %bb440, label %bb441
bb440:
  br label %bb442
bb441:
  br label %bb447
bb442:
  %t1642 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1642, ptr %l803, !tbaa !29
  %t1643 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1643, ptr %l804
  %t1644 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1644, ptr %l805, !tbaa !29
  %t1645 = load ptr, ptr %l2, !tbaa !29
  %t1647 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t1645)
  store %"compiler/source:Span" %t1647, ptr %l807
  br label %bb443
bb443:
  %t1648 = load ptr, ptr %l805, !tbaa !29
  %t1649 = load %"compiler/source:Span", ptr %l807
  %t1650 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopAfter(ptr %v0, ptr %t1648, %"compiler/source:Span" %t1649, i64 1)
  store %"compiler/source:Span" %t1650, ptr %l808
  br label %bb444
bb444:
  %t1651 = load ptr, ptr %l0, !tbaa !29
  %t1652 = load ptr, ptr %l2, !tbaa !29
  %t1654 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t1658 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v0, ptr %t1651, ptr %t1652, i32 %t1654)
  store ptr %t1658, ptr %l813
  br label %bb445
bb445:
  %t1659 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t1660 = load ptr, ptr %l803, !tbaa !29
  %t1661 = load %"compiler/source:Span", ptr %l804
  %t1662 = load %"compiler/source:Span", ptr %l808
  %t1663 = load ptr, ptr %l813, !tbaa !29
  %t1665 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallValue(ptr %v0, ptr %v0, ptr %v0, ptr %v3, ptr %t1660, %"compiler/source:Span" %t1661, %"compiler/source:Span" %t1662, ptr %t1663, { i64, ptr } %t1659)
  store ptr %t1665, ptr %l815
  br label %bb446
bb446:
  %t1666 = load ptr, ptr %l815, !tbaa !29
  store ptr %t1666, ptr %rv
  br label %ret
bb447:
  call void @__olang_check_failed(ptr @olang_loc_bf0bdcd735859107_778f86f66c349b43)
  unreachable
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecalledInst(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l4 = alloca i64
  %l7 = alloca i1
  %l8 = alloca i64
  %l11 = alloca i64
  %l13 = alloca i64
  %l17 = alloca ptr
  %l18 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call i64 @compiler_2ftyped_2eCalledBody(ptr %v1, ptr %a1)
  store i64 %t3, ptr %l4
  br label %bb1
bb1:
  %t4 = load i64, ptr %l4, !tbaa !24
  store i64 %t4, ptr %l2, !tbaa !24
  %t5 = load i64, ptr %l2, !tbaa !24
  %t7 = icmp sge i64 %t5, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load i64, ptr %l2, !tbaa !24
  store i64 %t9, ptr %l8, !tbaa !24
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/check:Checker", ptr %t10, i32 0, i32 14
  %t14 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t12)
  store i64 %t14, ptr %l11
  br label %bb4
bb3:
  store i1 false, ptr %l7, !tbaa !21
  br label %bb5
bb4:
  %t15 = load i64, ptr %l8, !tbaa !24
  %t16 = load i64, ptr %l11, !tbaa !24
  %t17 = icmp slt i64 %t15, %t16
  store i1 %t17, ptr %l7, !tbaa !21
  br label %bb5
bb5:
  %t19 = load i1, ptr %l7, !tbaa !21
  br i1 %t19, label %bb6, label %bb7
bb6:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/check:Checker", ptr %t20, i32 0, i32 14
  %t23 = load i64, ptr %l2, !tbaa !24
  %t26 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t22, i64 %t23)
  store ptr %t26, ptr %l17
  br label %bb8
bb7:
  store i64 -1, ptr %l13, !tbaa !24
  br label %bb10
bb8:
  %t27 = load ptr, ptr %l17, !tbaa !29
  %t28 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eInst(ptr %v0, ptr %t27)
  store i64 %t28, ptr %l18
  br label %bb9
bb9:
  %t29 = load i64, ptr %l18, !tbaa !24
  store i64 %t29, ptr %l13, !tbaa !24
  br label %bb10
bb10:
  %t30 = load i64, ptr %l13, !tbaa !24
  store i64 %t30, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtNamed(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca i64
  %l5 = alloca ptr
  %l8 = alloca i64
  %l16 = alloca %"compiler/check:errBind"
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %a0)
  store ptr %t3, ptr %l5
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l5, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t7 = getelementptr %"compiler/check:frame", ptr %t5, i32 0, i32 57
  %t9 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrBind_3e_2eLen_3ccompiler_2fcheck_3aerrBind_3e(ptr %v0, ptr %t7)
  store i64 %t9, ptr %l8
  br label %bb2
bb2:
  %t10 = load i64, ptr %l8, !tbaa !24
  %t11 = sub i64 %t10, 1
  store i64 %t11, ptr %l3, !tbaa !24
  br label %bb3
bb3:
  %t13 = load i64, ptr %l3, !tbaa !24
  %t15 = icmp sge i64 %t13, 0
  %t17 = xor i1 %t15, true
  br i1 %t17, label %bb4, label %bb5
bb4:
  br label %bb12
bb5:
  br label %bb6
bb6:
  %t19 = load ptr, ptr %l2, !tbaa !29
  %t21 = getelementptr %"compiler/check:frame", ptr %t19, i32 0, i32 57
  %t22 = load i64, ptr %l3, !tbaa !24
  %t25 = call %"compiler/check:errBind" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrBind_3e_2eAt_3ccompiler_2fcheck_3aerrBind_3e(ptr %v0, ptr %t21, i64 %t22)
  store %"compiler/check:errBind" %t25, ptr %l16
  br label %bb7
bb7:
  %t26 = getelementptr %"compiler/check:errBind", ptr %l16, i32 0, i32 0
  %t27 = load i32, ptr %t26, !tbaa !23
  %t31 = icmp eq i32 %t27, %a1
  br i1 %t31, label %bb8, label %bb9
bb8:
  %t33 = load i64, ptr %l3, !tbaa !24
  store i64 %t33, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  br label %bb11
bb11:
  %t35 = load i64, ptr %l3, !tbaa !24
  %t37 = sub i64 %t35, 1
  store i64 %t37, ptr %l3, !tbaa !24
  br label %bb3
bb12:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectBody(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i32 %a3, %"compiler/source:Span" %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca i32
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i32
  %l17 = alloca i32
  %l18 = alloca i64
  %l19 = alloca ptr
  %l20 = alloca i64
  %l21 = alloca { i64, ptr }
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca ptr
  %l27 = alloca ptr
  %l33 = alloca ptr
  %l38 = alloca i32
  %l39 = alloca { i64, ptr }
  %l40 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l41 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l47 = alloca i64
  %l50 = alloca i64
  %l68 = alloca { i64, ptr }
  %l73 = alloca i1
  %l76 = alloca ptr
  %l81 = alloca i32
  %l86 = alloca i64
  %l90 = alloca i32
  %l93 = alloca ptr
  %l99 = alloca i64
  %l104 = alloca ptr
  %l107 = alloca ptr
  %l109 = alloca { i64, ptr }
  %l110 = alloca i32
  %l111 = alloca i32
  %l116 = alloca i32
  %l119 = alloca ptr
  %l120 = alloca i64
  %l122 = alloca { i64, ptr }
  %l124 = alloca { i64, ptr }
  %l125 = alloca i32
  %l126 = alloca i32
  %l138 = alloca i64
  %l145 = alloca ptr
  %l146 = alloca i64
  %l148 = alloca i64
  %l149 = alloca i32
  %l154 = alloca i32
  %l155 = alloca ptr
  %l156 = alloca ptr
  %l157 = alloca i64
  %l161 = alloca %"compiler/generic:Context"
  %l163 = alloca %"compiler/generic:Context"
  %l168 = alloca ptr
  %l171 = alloca i32
  %l180 = alloca ptr
  %l187 = alloca i32
  %l194 = alloca %"compiler/source:Span"
  %l196 = alloca i32
  %l212 = alloca { i64, ptr }
  %l219 = alloca ptr
  %l221 = alloca i32
  %l223 = alloca %"compiler/source:Span"
  %l226 = alloca i32
  %l235 = alloca ptr
  %l239 = alloca { i64, ptr }
  %l241 = alloca ptr
  %l244 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i64
  %t223 = alloca { i64, [2 x i64] }, align 8
  %t290 = alloca %"compiler/generic:Context", align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i32 %a3, ptr %l3
  store %"compiler/source:Span" %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectSourceOf(ptr %v0, ptr %s0, ptr %t1, i64 %t2)
  store ptr %t5, ptr %l27
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l27, !tbaa !29
  store ptr %t6, ptr %l5, !tbaa !29
  %t7 = load ptr, ptr %l5, !tbaa !29
  %t9 = icmp eq ptr %t7, null
  br i1 %t9, label %bb2, label %bb3
bb2:
  call void @__olang_check_failed(ptr @olang_loc_4d78ccd557b2cb07_4b61304073c9a48b)
  unreachable
bb3:
  br label %bb4
bb4:
  %t11 = load ptr, ptr %l5, !tbaa !29
  store ptr %t11, ptr %l6, !tbaa !29
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/check:Checker", ptr %t13, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t18 = getelementptr %"compiler/generic:Program", ptr %t16, i32 0, i32 2
  store ptr %t18, ptr %l33, !tbaa !29
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/check:Checker", ptr %t19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t24 = getelementptr %"compiler/generic:Program", ptr %t22, i32 0, i32 2
  %t25 = load i32, ptr %l3, !tbaa !23
  %t28 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t24, i32 %t25)
  store i32 %t28, ptr %l38
  br label %bb5
bb5:
  %t29 = load ptr, ptr %l33, !tbaa !29
  %t30 = load i32, ptr %l38, !tbaa !23
  %t31 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t29, i32 %t30)
  store { i64, ptr } %t31, ptr %l39
  br label %bb6
bb6:
  %t32 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t32, ptr %l7, !tbaa !27
  %t33 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t33, ptr %l40
  br label %bb7
bb7:
  %t34 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l40
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t34, ptr %l8
  %t35 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t35, ptr %l41
  br label %bb8
bb8:
  %t36 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l41
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t36, ptr %l9
  store i64 0, ptr %l10, !tbaa !24
  %t37 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t37, 0
  store i64 %t39, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t41 = load i64, ptr %l11, !tbaa !24
  %t42 = load i64, ptr %l10, !tbaa !24
  %t45 = icmp sgt i64 %t41, %t42
  br i1 %t45, label %bb9, label %bb10
bb9:
  %t47 = load i64, ptr %l12, !tbaa !24
  %t49 = icmp sgt i64 %t47, 0
  br i1 %t49, label %bb11, label %bb12
bb10:
  store i64 0, ptr %l47, !tbaa !24
  br label %bb14
bb11:
  %t51 = load i64, ptr %l11, !tbaa !24
  %t52 = load i64, ptr %l10, !tbaa !24
  %t55 = sub i64 %t51, %t52
  %t56 = load i64, ptr %l12, !tbaa !24
  %t59 = add i64 %t55, %t56
  %t61 = sub i64 %t59, 1
  %t62 = load i64, ptr %l12, !tbaa !24
  %t65 = sdiv i64 %t61, %t62
  store i64 %t65, ptr %l50, !tbaa !24
  br label %bb13
bb12:
  store i64 0, ptr %l50, !tbaa !24
  br label %bb13
bb13:
  %t67 = load i64, ptr %l50, !tbaa !24
  store i64 %t67, ptr %l47, !tbaa !24
  br label %bb14
bb14:
  %t68 = load i64, ptr %l47, !tbaa !24
  store i64 %t68, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb15
bb15:
  %t69 = load i64, ptr %l14, !tbaa !24
  %t70 = load i64, ptr %l13, !tbaa !24
  %t73 = icmp slt i64 %t69, %t70
  %t75 = xor i1 %t73, true
  br i1 %t75, label %bb16, label %bb17
bb16:
  br label %bb30
bb17:
  br label %bb18
bb18:
  %t77 = load i64, ptr %l10, !tbaa !24
  %t78 = load i64, ptr %l14, !tbaa !24
  %t79 = load i64, ptr %l12, !tbaa !24
  %t82 = mul i64 %t78, %t79
  %t85 = add i64 %t77, %t82
  store i64 %t85, ptr %l15, !tbaa !24
  %t87 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t87, ptr %l68, !tbaa !27
  %t88 = load i64, ptr %l15, !tbaa !24
  %t90 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !27
  %t92 = getelementptr i32, ptr %t91, i64 %t88
  %t93 = load i32, ptr %t92, !tbaa !33
  store i32 %t93, ptr %l16, !tbaa !23
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t96 = load i32, ptr %l16, !tbaa !23
  %t99 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t95, i32 %t96)
  store i1 %t99, ptr %l73
  br label %bb19
bb19:
  %t100 = load i1, ptr %l73, !tbaa !21
  br i1 %t100, label %bb20, label %bb21
bb20:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = getelementptr %"compiler/check:Checker", ptr %t101, i32 0, i32 1
  %t104 = load ptr, ptr %t103, !tbaa !29
  %t106 = getelementptr %"compiler/generic:Program", ptr %t104, i32 0, i32 2
  store ptr %t106, ptr %l76, !tbaa !29
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"compiler/check:Checker", ptr %t107, i32 0, i32 1
  %t110 = load ptr, ptr %t109, !tbaa !29
  %t112 = getelementptr %"compiler/generic:Program", ptr %t110, i32 0, i32 2
  %t113 = load i32, ptr %l16, !tbaa !23
  %t116 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t112, i32 %t113)
  store i32 %t116, ptr %l81
  br label %bb22
bb21:
  br label %bb25
bb22:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/check:Checker", ptr %t117, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !29
  %t122 = getelementptr %"compiler/generic:Program", ptr %t120, i32 0, i32 2
  %t123 = load i32, ptr %l16, !tbaa !23
  %t126 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t122, i32 %t123)
  store i64 %t126, ptr %l86
  br label %bb23
bb23:
  %t127 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t129 = xor i64 %t127, -1
  %t130 = load i64, ptr %l86, !tbaa !24
  %t132 = and i64 %t130, %t129
  %t133 = load ptr, ptr %l76, !tbaa !29
  %t134 = load i32, ptr %l81, !tbaa !23
  %t136 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t133, i32 %t134, i64 %t132)
  store i32 %t136, ptr %l90
  br label %bb24
bb24:
  %t137 = load i32, ptr %l90, !tbaa !23
  store i32 %t137, ptr %l16, !tbaa !23
  br label %bb25
bb25:
  %t138 = load i32, ptr %l16, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l8, i32 %t138)
  br label %bb26
bb26:
  store ptr %l9, ptr %l93, !tbaa !29
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t143 = getelementptr %"compiler/check:Checker", ptr %t141, i32 0, i32 1
  %t144 = load ptr, ptr %t143, !tbaa !29
  %t146 = getelementptr %"compiler/generic:Program", ptr %t144, i32 0, i32 2
  %t147 = load i32, ptr %l3, !tbaa !23
  %t148 = load i64, ptr %l15, !tbaa !24
  %t152 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShareOf(ptr %v0, ptr %t146, i32 %t147, i64 %t148)
  store i64 %t152, ptr %l99
  br label %bb27
bb27:
  %t153 = load ptr, ptr %l93, !tbaa !29
  %t154 = load i64, ptr %l99, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %t153, i64 %t154)
  br label %bb28
bb28:
  br label %bb29
bb29:
  %t155 = load i64, ptr %l14, !tbaa !24
  %t157 = add i64 %t155, 1
  store i64 %t157, ptr %l14, !tbaa !24
  br label %bb15
bb30:
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t161 = getelementptr %"compiler/check:Checker", ptr %t159, i32 0, i32 1
  %t162 = load ptr, ptr %t161, !tbaa !29
  %t164 = getelementptr %"compiler/generic:Program", ptr %t162, i32 0, i32 2
  store ptr %t164, ptr %l104, !tbaa !29
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t167 = getelementptr %"compiler/check:Checker", ptr %t165, i32 0, i32 1
  %t168 = load ptr, ptr %t167, !tbaa !29
  %t170 = getelementptr %"compiler/generic:Program", ptr %t168, i32 0, i32 2
  store ptr %t170, ptr %l107, !tbaa !29
  %t172 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eToArray_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %s0, ptr %l8)
  store { i64, ptr } %t172, ptr %l109
  br label %bb31
bb31:
  %t173 = load ptr, ptr %l107, !tbaa !29
  %t174 = load { i64, ptr }, ptr %l109, !tbaa !27
  %t175 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t173, { i64, ptr } %t174)
  store i32 %t175, ptr %l110
  br label %bb32
bb32:
  %t176 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t176, ptr %l111, !tbaa !23
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t179 = getelementptr %"compiler/check:Checker", ptr %t177, i32 0, i32 1
  %t180 = load ptr, ptr %t179, !tbaa !29
  %t182 = getelementptr %"compiler/generic:Program", ptr %t180, i32 0, i32 2
  %t183 = load i32, ptr @G_2ecompiler_2ftypes_2eDefaultErrT, !tbaa !23
  %t186 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList1(ptr %v0, ptr %t182, i32 %t183)
  store i32 %t186, ptr %l116
  br label %bb33
bb33:
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t189 = getelementptr %"compiler/check:Checker", ptr %t187, i32 0, i32 1
  %t190 = load ptr, ptr %t189, !tbaa !29
  %t192 = getelementptr %"compiler/generic:Program", ptr %t190, i32 0, i32 2
  store ptr %t192, ptr %l119, !tbaa !29
  %t193 = load i64, ptr @G_2ecompiler_2ftypes_2eRoleFn, !tbaa !24
  store i64 %t193, ptr %l120, !tbaa !24
  %t195 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %s0, ptr %s0, ptr %l9)
  store { i64, ptr } %t195, ptr %l122
  br label %bb34
bb34:
  %t196 = load i64, ptr @G_2ecompiler_2ftypes_2eOwnScope, !tbaa !24
  %t197 = mul i64 1, 8
  %t198 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t197)
  %t199 = insertvalue { i64, ptr } undef, i64 1, 0
  %t200 = insertvalue { i64, ptr } %t199, ptr %t198, 1
  store { i64, ptr } %t200, ptr %l124, !tbaa !27
  %t202 = getelementptr { i64, ptr }, ptr %l124, i32 0, i32 1
  %t203 = load ptr, ptr %t202, !tbaa !27
  %t204 = getelementptr i64, ptr %t203, i64 0
  store i64 %t196, ptr %t204, !tbaa !34
  %t205 = load ptr, ptr %l119, !tbaa !29
  %t206 = load i64, ptr %l120, !tbaa !24
  %t207 = load { i64, ptr }, ptr %l122, !tbaa !27
  %t208 = load { i64, ptr }, ptr %l124, !tbaa !27
  %t209 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopes(ptr %v0, ptr %s0, ptr %s0, ptr %t205, i64 %t206, { i64, ptr } %t207, { i64, ptr } %t208)
  store i32 %t209, ptr %l125
  br label %bb35
bb35:
  %t210 = load ptr, ptr %l104, !tbaa !29
  %t211 = load i32, ptr %l110, !tbaa !23
  %t212 = load i32, ptr %l111, !tbaa !23
  %t213 = load i32, ptr %l116, !tbaa !23
  %t214 = load i32, ptr %l125, !tbaa !23
  %t215 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t210, i32 %t211, i32 %t212, i32 %t213, i32 %t214, i64 0, i1 false, i32 0, i64 0)
  store i32 %t215, ptr %l126
  br label %bb36
bb36:
  %t216 = load i32, ptr %l126, !tbaa !23
  store i32 %t216, ptr %l17, !tbaa !23
  %t217 = load ptr, ptr %l0, !tbaa !29
  %t218 = load i64, ptr %l1, !tbaa !24
  %t220 = trunc i64 %t218 to i32
  store { i64, [2 x i64] } zeroinitializer, ptr %t223
  %t224 = getelementptr { i64, [2 x i64] }, ptr %t223, i32 0, i32 0
  store i64 8, ptr %t224
  %t226 = insertvalue { i32, i32, i64 } undef, i32 %t220, 0
  %t228 = insertvalue { i32, i32, i64 } %t226, i32 0, 1
  %t230 = insertvalue { i32, i32, i64 } %t228, i64 %a2, 2
  %t231 = getelementptr { i64, [2 x i64] }, ptr %t223, i32 0, i32 1
  store { i32, i32, i64 } %t230, ptr %t231
  %t232 = load { i64, [2 x i64] }, ptr %t223
  %t233 = load i32, ptr %l17, !tbaa !23
  %t234 = load ptr, ptr %l6, !tbaa !29
  %t236 = getelementptr %"compiler/check:ctSource", ptr %t234, i32 0, i32 3
  %t237 = load i64, ptr %t236, !tbaa !24
  %t238 = load %"compiler/source:Span", ptr %l4
  %t244 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enewBody(ptr %v0, ptr %t217, { i64, [2 x i64] } %t232, i32 %t233, i64 %t237, %"compiler/source:Span" %t238)
  store i64 %t244, ptr %l138
  br label %bb37
bb37:
  %t245 = load i64, ptr %l138, !tbaa !24
  store i64 %t245, ptr %l18, !tbaa !24
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t248 = getelementptr %"compiler/check:Checker", ptr %t246, i32 0, i32 19
  %t249 = load i64, ptr %l18, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t248, i64 %t249, i64 1)
  br label %bb38
bb38:
  %t252 = load ptr, ptr %l0, !tbaa !29
  %t254 = getelementptr %"compiler/check:Checker", ptr %t252, i32 0, i32 54
  %t255 = load i64, ptr %l18, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t254, i64 %t255, i1 true)
  br label %bb39
bb39:
  %t258 = load ptr, ptr %l0, !tbaa !29
  store ptr %t258, ptr %l145, !tbaa !29
  %t259 = load i64, ptr %l18, !tbaa !24
  store i64 %t259, ptr %l146, !tbaa !24
  %t260 = load ptr, ptr %l6, !tbaa !29
  %t262 = getelementptr %"compiler/check:ctSource", ptr %t260, i32 0, i32 3
  %t263 = load i64, ptr %t262, !tbaa !24
  store i64 %t263, ptr %l148, !tbaa !24
  %t264 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t264, ptr %l149, !tbaa !23
  %t265 = load ptr, ptr %l0, !tbaa !29
  %t267 = getelementptr %"compiler/check:Checker", ptr %t265, i32 0, i32 1
  %t268 = load ptr, ptr %t267, !tbaa !29
  %t270 = getelementptr %"compiler/generic:Program", ptr %t268, i32 0, i32 2
  %t271 = load i32, ptr %l17, !tbaa !23
  %t274 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t270, i32 %t271)
  store i32 %t274, ptr %l154
  br label %bb40
bb40:
  %t275 = load ptr, ptr %l145, !tbaa !29
  %t276 = load i64, ptr %l146, !tbaa !24
  %t277 = load i64, ptr %l148, !tbaa !24
  %t278 = load i32, ptr %l149, !tbaa !23
  %t279 = load i32, ptr %l154, !tbaa !23
  %t280 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v0, ptr %t275, i64 %t276, i64 %t277, i32 %t278, i32 %t279)
  store ptr %t280, ptr %l155
  br label %bb41
bb41:
  %t281 = load ptr, ptr %l155, !tbaa !29
  store ptr %t281, ptr %l19, !tbaa !29
  %t282 = load ptr, ptr %l19, !tbaa !29
  store ptr %t282, ptr %l156, !tbaa !29
  %t283 = ptrtoint ptr %v0 to i64
  store i64 %t283, ptr %l157, !tbaa !24
  %t284 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t284, label %bb42, label %bb43
bb42:
  %t286 = call ptr @__olang_region_make(ptr %v0)
  %t287 = ptrtoint ptr %t286 to i64
  store i64 %t287, ptr %l157, !tbaa !24
  br label %bb43
bb43:
  %t288 = load ptr, ptr %l0, !tbaa !29
  %t289 = load i64, ptr %l1, !tbaa !24
  %t291 = load i64, ptr %l157
  %t292 = inttoptr i64 %t291 to ptr
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectContext(ptr %t290, ptr %v0, ptr %t292, ptr %t288, i64 %t289)
  call void @llvm.memmove.p0.p0.i64(ptr %l161, ptr %t290, i64 160, i1 false)
  br label %bb44
bb44:
  %t295 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t295, label %bb45, label %bb46
bb45:
  %t297 = load i64, ptr %l157
  %t298 = inttoptr i64 %t297 to ptr
  %t299 = getelementptr %"compiler/generic:Context", ptr %l161, i32 0, i32 3
  %t300 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t299, i32 0, i32 2
  %t301 = load { i64, ptr }, ptr %t300
  %t302 = extractvalue { i64, ptr } %t301, 1
  %t303 = call ptr @__olang_region_or(ptr %t302, ptr null)
  %t304 = icmp ne ptr %t303, null
  %t305 = select i1 %t304, ptr %t303, ptr null
  %t306 = getelementptr %"compiler/generic:Context", ptr %l161, i32 0, i32 3
  %t307 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t306, i32 0, i32 1
  %t308 = load { i64, ptr }, ptr %t307
  %t309 = extractvalue { i64, ptr } %t308, 1
  %t310 = call ptr @__olang_region_or(ptr %t309, ptr null)
  %t311 = icmp ne ptr %t310, null
  %t312 = select i1 %t311, ptr %t310, ptr %t305
  %t313 = getelementptr %"compiler/generic:Context", ptr %l161, i32 0, i32 3
  %t314 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t313, i32 0, i32 0
  %t315 = load { i64, ptr }, ptr %t314
  %t316 = extractvalue { i64, ptr } %t315, 1
  %t317 = call ptr @__olang_region_or(ptr %t316, ptr null)
  %t318 = icmp ne ptr %t317, null
  %t319 = select i1 %t318, ptr %t317, ptr %t312
  %t320 = getelementptr %"compiler/generic:Context", ptr %l161, i32 0, i32 2
  %t321 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t320, i32 0, i32 2
  %t322 = load { i64, ptr }, ptr %t321
  %t323 = extractvalue { i64, ptr } %t322, 1
  %t324 = call ptr @__olang_region_or(ptr %t323, ptr null)
  %t325 = icmp ne ptr %t324, null
  %t326 = select i1 %t325, ptr %t324, ptr %t319
  %t327 = getelementptr %"compiler/generic:Context", ptr %l161, i32 0, i32 2
  %t328 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t327, i32 0, i32 1
  %t329 = load { i64, ptr }, ptr %t328
  %t330 = extractvalue { i64, ptr } %t329, 1
  %t331 = call ptr @__olang_region_or(ptr %t330, ptr null)
  %t332 = icmp ne ptr %t331, null
  %t333 = select i1 %t332, ptr %t331, ptr %t326
  %t334 = getelementptr %"compiler/generic:Context", ptr %l161, i32 0, i32 2
  %t335 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t334, i32 0, i32 0
  %t336 = load { i64, ptr }, ptr %t335
  %t337 = extractvalue { i64, ptr } %t336, 1
  %t338 = call ptr @__olang_region_or(ptr %t337, ptr null)
  %t339 = icmp ne ptr %t338, null
  %t340 = select i1 %t339, ptr %t338, ptr %t333
  %t341 = icmp eq ptr %t340, %t298
  call void @__olang_region_settle(ptr %t298, i1 %t341)
  br label %bb46
bb46:
  %t342 = load ptr, ptr %l156, !tbaa !29
  %t343 = getelementptr %"compiler/check:frame", ptr %t342, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %l163, ptr %t343, i64 160, i1 false)
  %t344 = load ptr, ptr %l156, !tbaa !29
  %t345 = getelementptr %"compiler/check:frame", ptr %t344, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %t345, ptr %l161, i64 160, i1 false)
  %t346 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t346, label %bb47, label %bb48
bb47:
  %t348 = getelementptr %"compiler/generic:Context", ptr %l163, i32 0, i32 3
  %t349 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t348, i32 0, i32 2
  %t350 = load { i64, ptr }, ptr %t349
  %t351 = extractvalue { i64, ptr } %t350, 1
  %t352 = call ptr @__olang_region_or(ptr %t351, ptr null)
  %t353 = icmp ne ptr %t352, null
  %t354 = select i1 %t353, ptr %t352, ptr null
  %t355 = getelementptr %"compiler/generic:Context", ptr %l163, i32 0, i32 3
  %t356 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t355, i32 0, i32 1
  %t357 = load { i64, ptr }, ptr %t356
  %t358 = extractvalue { i64, ptr } %t357, 1
  %t359 = call ptr @__olang_region_or(ptr %t358, ptr null)
  %t360 = icmp ne ptr %t359, null
  %t361 = select i1 %t360, ptr %t359, ptr %t354
  %t362 = getelementptr %"compiler/generic:Context", ptr %l163, i32 0, i32 3
  %t363 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t362, i32 0, i32 0
  %t364 = load { i64, ptr }, ptr %t363
  %t365 = extractvalue { i64, ptr } %t364, 1
  %t366 = call ptr @__olang_region_or(ptr %t365, ptr null)
  %t367 = icmp ne ptr %t366, null
  %t368 = select i1 %t367, ptr %t366, ptr %t361
  %t369 = getelementptr %"compiler/generic:Context", ptr %l163, i32 0, i32 2
  %t370 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t369, i32 0, i32 2
  %t371 = load { i64, ptr }, ptr %t370
  %t372 = extractvalue { i64, ptr } %t371, 1
  %t373 = call ptr @__olang_region_or(ptr %t372, ptr null)
  %t374 = icmp ne ptr %t373, null
  %t375 = select i1 %t374, ptr %t373, ptr %t368
  %t376 = getelementptr %"compiler/generic:Context", ptr %l163, i32 0, i32 2
  %t377 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t376, i32 0, i32 1
  %t378 = load { i64, ptr }, ptr %t377
  %t379 = extractvalue { i64, ptr } %t378, 1
  %t380 = call ptr @__olang_region_or(ptr %t379, ptr null)
  %t381 = icmp ne ptr %t380, null
  %t382 = select i1 %t381, ptr %t380, ptr %t375
  %t383 = getelementptr %"compiler/generic:Context", ptr %l163, i32 0, i32 2
  %t384 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t383, i32 0, i32 0
  %t385 = load { i64, ptr }, ptr %t384
  %t386 = extractvalue { i64, ptr } %t385, 1
  %t387 = call ptr @__olang_region_or(ptr %t386, ptr null)
  %t388 = icmp ne ptr %t387, null
  %t389 = select i1 %t388, ptr %t387, ptr %t382
  call void @__olang_region_drop(ptr %t389)
  store %"compiler/generic:Context" zeroinitializer, ptr %l163
  br label %bb48
bb48:
  %t390 = load ptr, ptr %l19, !tbaa !29
  %t391 = load i64, ptr @G_2ecompiler_2fcheck_2eCtReq, !tbaa !24
  %t394 = getelementptr %"compiler/check:frame", ptr %t390, i32 0, i32 53
  store i64 %t391, ptr %t394, !tbaa !24
  %t395 = load ptr, ptr %l0, !tbaa !29
  %t397 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t395)
  store ptr %t397, ptr %l168
  br label %bb49
bb49:
  %t398 = load %"compiler/source:Span", ptr %l4
  %t399 = load ptr, ptr %l168, !tbaa !29
  %t402 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eAddBlock(ptr %v0, ptr %t399, i32 -1, i32 0, %"compiler/source:Span" %t398)
  store i32 %t402, ptr %l171
  br label %bb50
bb50:
  store i64 0, ptr %l20, !tbaa !24
  %t403 = load ptr, ptr %l6, !tbaa !29
  %t405 = getelementptr %"compiler/check:ctSource", ptr %t403, i32 0, i32 1
  %t406 = load ptr, ptr %t405, !tbaa !29
  %t408 = icmp eq ptr %t406, null
  %t410 = xor i1 %t408, true
  br i1 %t410, label %bb51, label %bb52
bb51:
  %t412 = load i64, ptr %l20, !tbaa !24
  %t413 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t415 = extractvalue { i64, ptr } %t413, 0
  %t418 = icmp slt i64 %t412, %t415
  br i1 %t418, label %bb53, label %bb54
bb52:
  br label %bb67
bb53:
  %t420 = load ptr, ptr %l0, !tbaa !29
  store ptr %t420, ptr %l180, !tbaa !29
  %t421 = load ptr, ptr %l6, !tbaa !29
  %t423 = getelementptr %"compiler/check:ctSource", ptr %t421, i32 0, i32 1
  %t424 = load ptr, ptr %t423, !tbaa !29
  %t426 = icmp eq ptr %t424, null
  br i1 %t426, label %bb55, label %bb56
bb54:
  br label %bb66
bb55:
  call void @__olang_check_failed(ptr @olang_loc_82a7c94587506de8_24388316e0066d9c)
  unreachable
bb56:
  br label %bb57
bb57:
  %t428 = load ptr, ptr %l6, !tbaa !29
  %t430 = getelementptr %"compiler/check:ctSource", ptr %t428, i32 0, i32 1
  %t431 = load ptr, ptr %t430, !tbaa !29
  %t434 = getelementptr %"compiler/ast:Param", ptr %t431, i32 0, i32 1
  %t435 = load i32, ptr %t434, !tbaa !23
  store i32 %t435, ptr %l187, !tbaa !23
  %t436 = load ptr, ptr %l6, !tbaa !29
  %t438 = getelementptr %"compiler/check:ctSource", ptr %t436, i32 0, i32 1
  %t439 = load ptr, ptr %t438, !tbaa !29
  %t441 = icmp eq ptr %t439, null
  br i1 %t441, label %bb58, label %bb59
bb58:
  call void @__olang_check_failed(ptr @olang_loc_82a7c94587506de8_24388316e0066d9c)
  unreachable
bb59:
  br label %bb60
bb60:
  %t443 = load ptr, ptr %l6, !tbaa !29
  %t445 = getelementptr %"compiler/check:ctSource", ptr %t443, i32 0, i32 1
  %t446 = load ptr, ptr %t445, !tbaa !29
  %t449 = getelementptr %"compiler/ast:Param", ptr %t446, i32 0, i32 0
  %t450 = load %"compiler/source:Span", ptr %t449
  store %"compiler/source:Span" %t450, ptr %l194
  %t452 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l8, i64 0)
  store i32 %t452, ptr %l196
  br label %bb61
bb61:
  %t453 = load ptr, ptr %l6, !tbaa !29
  %t455 = getelementptr %"compiler/check:ctSource", ptr %t453, i32 0, i32 1
  %t456 = load ptr, ptr %t455, !tbaa !29
  %t458 = icmp eq ptr %t456, null
  br i1 %t458, label %bb62, label %bb63
bb62:
  call void @__olang_check_failed(ptr @olang_loc_82a7c94587506de8_24388316e0066d9c)
  unreachable
bb63:
  br label %bb64
bb64:
  %t460 = load ptr, ptr %l6, !tbaa !29
  %t462 = getelementptr %"compiler/check:ctSource", ptr %t460, i32 0, i32 1
  %t463 = load ptr, ptr %t462, !tbaa !29
  %t466 = getelementptr %"compiler/ast:Param", ptr %t463, i32 0, i32 2
  %t467 = load ptr, ptr %t466, !tbaa !29
  %t468 = load ptr, ptr %l180, !tbaa !29
  %t469 = load i32, ptr %l187, !tbaa !23
  %t470 = load %"compiler/source:Span", ptr %l194
  %t471 = load i32, ptr %l196, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eparam(ptr %v0, ptr %s0, ptr %t468, i32 %t469, %"compiler/source:Span" %t470, i32 %t471, i64 0, ptr %t467)
  br label %bb65
bb65:
  br label %bb66
bb66:
  store i64 1, ptr %l20, !tbaa !24
  br label %bb67
bb67:
  %t473 = load ptr, ptr %l6, !tbaa !29
  %t475 = getelementptr %"compiler/check:ctSource", ptr %t473, i32 0, i32 2
  %t476 = load { i64, ptr }, ptr %t475, !tbaa !27
  store { i64, ptr } %t476, ptr %l21, !tbaa !27
  store i64 0, ptr %l22, !tbaa !24
  %t478 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t480 = extractvalue { i64, ptr } %t478, 0
  store i64 %t480, ptr %l23, !tbaa !24
  br label %bb68
bb68:
  %t482 = load i64, ptr %l22, !tbaa !24
  %t483 = load i64, ptr %l23, !tbaa !24
  %t486 = icmp slt i64 %t482, %t483
  %t488 = xor i1 %t486, true
  br i1 %t488, label %bb69, label %bb70
bb69:
  br label %bb78
bb70:
  br label %bb71
bb71:
  %t490 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t490, ptr %l212, !tbaa !27
  %t491 = load i64, ptr %l22, !tbaa !24
  %t493 = getelementptr { i64, ptr }, ptr %l212, i32 0, i32 1
  %t494 = load ptr, ptr %t493, !tbaa !27
  %t495 = getelementptr ptr, ptr %t494, i64 %t491
  %t496 = load ptr, ptr %t495, !tbaa !39
  store ptr %t496, ptr %l24, !tbaa !29
  %t498 = load i64, ptr %l20, !tbaa !24
  %t499 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t501 = extractvalue { i64, ptr } %t499, 0
  %t504 = icmp slt i64 %t498, %t501
  br i1 %t504, label %bb72, label %bb73
bb72:
  %t506 = load ptr, ptr %l0, !tbaa !29
  store ptr %t506, ptr %l219, !tbaa !29
  %t507 = load ptr, ptr %l24, !tbaa !29
  %t509 = getelementptr %"compiler/ast:Param", ptr %t507, i32 0, i32 1
  %t510 = load i32, ptr %t509, !tbaa !23
  store i32 %t510, ptr %l221, !tbaa !23
  %t511 = load ptr, ptr %l24, !tbaa !29
  %t513 = getelementptr %"compiler/ast:Param", ptr %t511, i32 0, i32 0
  %t514 = load %"compiler/source:Span", ptr %t513
  store %"compiler/source:Span" %t514, ptr %l223
  %t515 = load i64, ptr %l20, !tbaa !24
  %t518 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l8, i64 %t515)
  store i32 %t518, ptr %l226
  br label %bb74
bb73:
  br label %bb76
bb74:
  %t519 = load i64, ptr %l20, !tbaa !24
  %t520 = load ptr, ptr %l24, !tbaa !29
  %t522 = getelementptr %"compiler/ast:Param", ptr %t520, i32 0, i32 2
  %t523 = load ptr, ptr %t522, !tbaa !29
  %t524 = load ptr, ptr %l219, !tbaa !29
  %t525 = load i32, ptr %l221, !tbaa !23
  %t526 = load %"compiler/source:Span", ptr %l223
  %t527 = load i32, ptr %l226, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eparam(ptr %v0, ptr %s0, ptr %t524, i32 %t525, %"compiler/source:Span" %t526, i32 %t527, i64 %t519, ptr %t523)
  br label %bb75
bb75:
  br label %bb76
bb76:
  %t530 = load i64, ptr %l20, !tbaa !24
  %t532 = add i64 %t530, 1
  store i64 %t532, ptr %l20, !tbaa !24
  br label %bb77
bb77:
  %t534 = load i64, ptr %l22, !tbaa !24
  %t536 = add i64 %t534, 1
  store i64 %t536, ptr %l22, !tbaa !24
  br label %bb68
bb78:
  %t538 = load ptr, ptr %l0, !tbaa !29
  %t540 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t538)
  store ptr %t540, ptr %l235
  br label %bb79
bb79:
  %t541 = load ptr, ptr %l0, !tbaa !29
  %t543 = getelementptr %"compiler/check:Checker", ptr %t541, i32 0, i32 1
  %t544 = load ptr, ptr %t543, !tbaa !29
  %t545 = load i32, ptr %l17, !tbaa !23
  %t548 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eScopeVarsOf(ptr %v0, ptr %s0, ptr %t544, i32 %t545)
  store { i64, ptr } %t548, ptr %l239
  br label %bb80
bb80:
  %t549 = load { i64, ptr }, ptr %l239, !tbaa !27
  %t550 = extractvalue { i64, ptr } %t549, 0
  %t551 = extractvalue { i64, ptr } %t549, 1
  %t552 = mul i64 %t550, 8
  %t553 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t552)
  call void @llvm.memcpy.p0.p0.i64(ptr %t553, ptr %t551, i64 %t552, i1 false)
  %t554 = insertvalue { i64, ptr } undef, i64 %t550, 0
  %t555 = insertvalue { i64, ptr } %t554, ptr %t553, 1
  %t556 = load ptr, ptr %l235, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eSetVars(ptr %v0, ptr %s0, ptr %t556, { i64, ptr } %t555)
  br label %bb81
bb81:
  %t558 = load ptr, ptr %l19, !tbaa !29
  store ptr %t558, ptr %l241, !tbaa !29
  %t559 = load ptr, ptr %l0, !tbaa !29
  %t561 = getelementptr %"compiler/check:Checker", ptr %t559, i32 0, i32 37
  %t563 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t561)
  store i64 %t563, ptr %l244
  br label %bb82
bb82:
  %t564 = load i64, ptr %l244, !tbaa !24
  %t565 = load ptr, ptr %l241, !tbaa !29
  %t566 = getelementptr %"compiler/check:frame", ptr %t565, i32 0, i32 56
  store i64 %t564, ptr %t566, !tbaa !24
  %t567 = load i64, ptr %l18, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t567, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ediscardOr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i1
  %l12 = alloca { i64, ptr }
  %l13 = alloca i1
  %l18 = alloca ptr
  %l22 = alloca ptr
  %l23 = alloca ptr
  %l25 = alloca %"compiler/source:Span"
  %s1 = alloca %olang.scope
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32 }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  br label %bb5
bb4:
  br label %bb11
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load i32, ptr %l2, !tbaa !23
  %t20 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t16, i32 %t17)
  store { i64, ptr } %t20, ptr %l12
  br label %bb6
bb6:
  %t21 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t22 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s1, { i64, ptr } %t21, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d9, i32 0, i32 1) })
  store i1 %t22, ptr %l13
  br label %bb7
bb7:
  %t23 = load i1, ptr %l13, !tbaa !21
  br i1 %t23, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s1)
  store ptr null, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s1)
  br label %bb16
bb11:
  br i1 true, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  call void @__olang_check_failed(ptr @olang_loc_eaffdf15d9c064d4_e1a7ee300abdca20)
  unreachable
bb16:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/check:Checker", ptr %t25, i32 0, i32 11
  store i1 true, ptr %t27, !tbaa !21
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load ptr, ptr %l1, !tbaa !29
  %t32 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplace(ptr %v0, ptr %v1, ptr %v2, ptr %t28, ptr %t29)
  store ptr %t32, ptr %l18
  br label %bb17
bb17:
  %t33 = load ptr, ptr %l18, !tbaa !29
  store ptr %t33, ptr %l3, !tbaa !29
  %t34 = load ptr, ptr %l3, !tbaa !29
  %t36 = icmp eq ptr %t34, null
  %t38 = xor i1 %t36, true
  br i1 %t38, label %bb18, label %bb19
bb18:
  %t40 = load ptr, ptr %l0, !tbaa !29
  store ptr %t40, ptr %l22, !tbaa !29
  %t41 = load ptr, ptr %l3, !tbaa !29
  store ptr %t41, ptr %l23, !tbaa !29
  %t42 = load ptr, ptr %l1, !tbaa !29
  %t44 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t42)
  store %"compiler/source:Span" %t44, ptr %l25
  br label %bb20
bb19:
  br label %bb22
bb20:
  %t45 = load ptr, ptr %l22, !tbaa !29
  %t46 = load ptr, ptr %l23, !tbaa !29
  %t47 = load %"compiler/source:Span", ptr %l25
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enotCapture(ptr %v0, ptr %v2, ptr %t45, ptr %t46, %"compiler/source:Span" %t47)
  br label %bb21
bb21:
  br label %bb22
bb22:
  %t48 = load ptr, ptr %l3, !tbaa !29
  store ptr %t48, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l17 = alloca { i64, ptr }
  %l20 = alloca ptr
  %l21 = alloca i1
  %l24 = alloca ptr
  %l25 = alloca i1
  %l30 = alloca ptr
  %l31 = alloca i1
  %l38 = alloca ptr
  %l43 = alloca ptr
  store ptr %a0, ptr %l0
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
  br label %bb39
bb6:
  br label %bb7
bb7:
  %t21 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t21, ptr %l17, !tbaa !27
  %t22 = load i64, ptr %l3, !tbaa !24
  %t24 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr ptr, ptr %t25, i64 %t22
  %t27 = load ptr, ptr %t26, !tbaa !39
  store ptr %t27, ptr %l5, !tbaa !29
  %t29 = load ptr, ptr %l5, !tbaa !29
  store ptr %t29, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t30 = load ptr, ptr %l20, !tbaa !29
  %t31 = icmp ne ptr %t30, null
  br i1 %t31, label %bb8, label %bb9
bb8:
  %t33 = load ptr, ptr %l20, !tbaa !29
  %t34 = load i64, ptr %t33, !range !{i64 0, i64 30}
  %t36 = icmp eq i64 %t34, 22
  store i1 %t36, ptr %l21, !tbaa !21
  br label %bb9
bb9:
  %t37 = load i1, ptr %l21, !tbaa !21
  br i1 %t37, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb37
bb13:
  %t38 = load ptr, ptr %l5, !tbaa !29
  store ptr %t38, ptr %l24, !tbaa !29
  store i1 false, ptr %l25, !tbaa !21
  %t39 = load ptr, ptr %l24, !tbaa !29
  %t40 = icmp ne ptr %t39, null
  br i1 %t40, label %bb14, label %bb15
bb14:
  %t42 = load ptr, ptr %l24, !tbaa !29
  %t43 = load i64, ptr %t42, !range !{i64 0, i64 30}
  %t45 = icmp eq i64 %t43, 26
  store i1 %t45, ptr %l25, !tbaa !21
  br label %bb15
bb15:
  %t46 = load i1, ptr %l25, !tbaa !21
  br i1 %t46, label %bb16, label %bb17
bb16:
  %t47 = load ptr, ptr %l5, !tbaa !29
  %t49 = getelementptr { i64, [4 x i64] }, ptr %t47, i32 0, i32 1
  %t50 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t49, i32 0, i32 2
  %t51 = load ptr, ptr %t50
  store ptr %t51, ptr %l6, !tbaa !29
  br label %bb18
bb17:
  br label %bb31
bb18:
  %t53 = load ptr, ptr %l6, !tbaa !29
  store ptr %t53, ptr %l30, !tbaa !29
  store i1 false, ptr %l31, !tbaa !21
  %t54 = load ptr, ptr %l30, !tbaa !29
  %t55 = icmp ne ptr %t54, null
  br i1 %t55, label %bb19, label %bb20
bb19:
  %t57 = load ptr, ptr %l30, !tbaa !29
  %t58 = load i64, ptr %t57, !range !{i64 0, i64 30}
  %t60 = icmp eq i64 %t58, 22
  store i1 %t60, ptr %l31, !tbaa !21
  br label %bb20
bb20:
  %t61 = load i1, ptr %l31, !tbaa !21
  br i1 %t61, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb30
bb24:
  br i1 true, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb29
bb27:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load ptr, ptr %l6, !tbaa !29
  %t65 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t69 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v0, ptr %t62, ptr %t63, i32 %t65)
  store ptr %t69, ptr %l38
  br label %bb28
bb28:
  br label %bb30
bb29:
  call void @__olang_check_failed(ptr @olang_loc_721d232fa5d325a7_d23ce00c5b55667b)
  unreachable
bb30:
  br label %bb37
bb31:
  br i1 true, label %bb32, label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb36
bb34:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load ptr, ptr %l5, !tbaa !29
  %t73 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t77 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v0, ptr %t70, ptr %t71, i32 %t73)
  store ptr %t77, ptr %l43
  br label %bb35
bb35:
  br label %bb37
bb36:
  call void @__olang_check_failed(ptr @olang_loc_ab50fa771a5bafc6_239e772f46bf41fa)
  unreachable
bb37:
  br label %bb38
bb38:
  %t78 = load i64, ptr %l3, !tbaa !24
  %t80 = add i64 %t78, 1
  store i64 %t80, ptr %l3, !tbaa !24
  br label %bb4
bb39:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropIfHeld(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca i64
  %lp4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca { i64, i64, i64 }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca %"compiler/source:Span"
  %l12 = alloca ptr
  %l13 = alloca %"compiler/source:Span"
  %l14 = alloca i32
  %l15 = alloca i32
  %l16 = alloca %"compiler/source:Span"
  %l19 = alloca ptr
  %l21 = alloca i32
  %l23 = alloca i32
  %l27 = alloca ptr
  %l34 = alloca i64
  %l38 = alloca { i64, i64, i64 }
  %l44 = alloca ptr
  %l45 = alloca %"compiler/source:Span"
  %l52 = alloca ptr
  %l56 = alloca ptr
  %l64 = alloca ptr
  %l65 = alloca %"compiler/source:Span"
  %l69 = alloca ptr
  %l71 = alloca %"compiler/typed:If"
  %rv = alloca ptr
  %t21 = alloca { i64, [5 x i64] }, align 8
  %t39 = alloca { i64, [3 x i64] }, align 8
  %t90 = alloca { i64, [4 x i64] }, align 8
  %t109 = alloca { i64, [3 x i64] }, align 8
  %t149 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1, ptr %l11
  %t2 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2, ptr %l12, !tbaa !29
  %t3 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t3, ptr %l13
  %t4 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  store i32 %t4, ptr %l14, !tbaa !23
  store i32 30, ptr %l15
  %t5 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t5, ptr %l16
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/check:Checker", ptr %t6, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t11 = getelementptr %"compiler/generic:Program", ptr %t9, i32 0, i32 2
  store ptr %t11, ptr %l19, !tbaa !29
  %t12 = load ptr, ptr %l2, !tbaa !29
  %t14 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t12)
  store i32 %t14, ptr %l21
  br label %bb1
bb1:
  %t15 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t16 = load ptr, ptr %l19, !tbaa !29
  %t17 = load i32, ptr %l21, !tbaa !23
  %t19 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t16, i32 %t17, i64 %t15)
  store i32 %t19, ptr %l23
  br label %bb2
bb2:
  %t20 = load ptr, ptr %l2, !tbaa !29
  store { i64, [5 x i64] } zeroinitializer, ptr %t21
  %t22 = getelementptr { i64, [5 x i64] }, ptr %t21, i32 0, i32 0
  store i64 3, ptr %t22
  %t23 = load %"compiler/source:Span", ptr %l16
  %t24 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t23, 0
  %t25 = load i32, ptr %l23, !tbaa !23
  %t26 = insertvalue { %"compiler/source:Span", i32, ptr } %t24, i32 %t25, 1
  %t28 = insertvalue { %"compiler/source:Span", i32, ptr } %t26, ptr %t20, 2
  %t29 = getelementptr { i64, [5 x i64] }, ptr %t21, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t28, ptr %t29
  %t30 = load { i64, [5 x i64] }, ptr %t21
  %t32 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 48, i64 8)
  store { i64, [5 x i64] } %t30, ptr %t32
  %t33 = load ptr, ptr %l12, !tbaa !29
  %t34 = load %"compiler/source:Span", ptr %l13
  %t35 = load i32, ptr %l14, !tbaa !23
  %t36 = load i32, ptr %l15, !range !{i32 0, i32 52}
  %t38 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v0, ptr %v0, ptr %v2, ptr %t33, %"compiler/source:Span" %t34, i32 %t35, i32 %t36, ptr %t32, ptr null)
  store ptr %t38, ptr %l27
  br label %bb3
bb3:
  store { i64, [3 x i64] } zeroinitializer, ptr %t39
  %t40 = getelementptr { i64, [3 x i64] }, ptr %t39, i32 0, i32 0
  store i64 2, ptr %t40
  %t41 = load %"compiler/source:Span", ptr %l11
  %t42 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t41, 0
  %t43 = load ptr, ptr %l27, !tbaa !29
  %t44 = insertvalue { %"compiler/source:Span", ptr } %t42, ptr %t43, 1
  %t45 = getelementptr { i64, [3 x i64] }, ptr %t39, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t44, ptr %t45
  %t46 = load { i64, [3 x i64] }, ptr %t39
  %t47 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t47, ptr %lp4
  %t49 = load ptr, ptr %lp4
  store { i64, [3 x i64] } %t46, ptr %t49
  %t50 = load i64, ptr %l3, !tbaa !24
  %t52 = icmp slt i64 %t50, 0
  br i1 %t52, label %bb4, label %bb5
bb4:
  %t54 = load ptr, ptr %lp4
  store ptr %t54, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/check:Checker", ptr %t56, i32 0, i32 37
  %t60 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t58)
  store i64 %t60, ptr %l34
  br label %bb7
bb7:
  %t61 = load i64, ptr %l34, !tbaa !24
  store i64 %t61, ptr %l5, !tbaa !24
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load %"compiler/source:Span", ptr %l1
  %t67 = call { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %t62, i32 1, %"compiler/source:Span" %t63)
  store { i64, i64, i64 } %t67, ptr %l38
  br label %bb8
bb8:
  %t68 = load { i64, i64, i64 }, ptr %l38
  store { i64, i64, i64 } %t68, ptr %l6
  %t69 = getelementptr { i64, i64, i64 }, ptr %l6, i32 0, i32 0
  %t70 = load i64, ptr %t69, !tbaa !24
  store i64 %t70, ptr %l7, !tbaa !24
  %t72 = getelementptr { i64, i64, i64 }, ptr %l6, i32 0, i32 1
  %t73 = load i64, ptr %t72, !tbaa !24
  store i64 %t73, ptr %l8, !tbaa !24
  %t75 = getelementptr { i64, i64, i64 }, ptr %l6, i32 0, i32 2
  %t76 = load i64, ptr %t75, !tbaa !24
  store i64 %t76, ptr %l9, !tbaa !24
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t79 = load ptr, ptr %lp4
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v2, ptr %t78, ptr %t79)
  br label %bb9
bb9:
  %t82 = load ptr, ptr %l0, !tbaa !29
  store ptr %t82, ptr %l44, !tbaa !29
  %t83 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t83, ptr %l45
  %t84 = load %"compiler/source:Span", ptr %l1
  %t85 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t86 = load i64, ptr %l3, !tbaa !24
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
  store ptr %t101, ptr %l52, !tbaa !29
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t103 = load %"compiler/source:Span", ptr %l1
  %t104 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t108 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t102, %"compiler/source:Span" %t103, i32 %t104, i64 0)
  store ptr %t108, ptr %l56
  br label %bb10
bb10:
  store { i64, [3 x i64] } zeroinitializer, ptr %t109
  %t110 = getelementptr { i64, [3 x i64] }, ptr %t109, i32 0, i32 0
  store i64 1, ptr %t110
  %t111 = load %"compiler/source:Span", ptr %l45
  %t112 = insertvalue { %"compiler/source:Span", ptr, ptr } undef, %"compiler/source:Span" %t111, 0
  %t113 = load ptr, ptr %l52, !tbaa !29
  %t114 = insertvalue { %"compiler/source:Span", ptr, ptr } %t112, ptr %t113, 1
  %t115 = load ptr, ptr %l56, !tbaa !29
  %t116 = insertvalue { %"compiler/source:Span", ptr, ptr } %t114, ptr %t115, 2
  %t117 = getelementptr { i64, [3 x i64] }, ptr %t109, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr } %t116, ptr %t117
  %t118 = load { i64, [3 x i64] }, ptr %t109
  %t120 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t118, ptr %t120
  %t121 = load ptr, ptr %l44, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t121, ptr %t120)
  br label %bb11
bb11:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t124 = load i64, ptr %l7, !tbaa !24
  %t125 = load i64, ptr %l8, !tbaa !24
  %t126 = load i64, ptr %l9, !tbaa !24
  %t127 = load i64, ptr %l5, !tbaa !24
  %t133 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v2, ptr %t123, i64 %t124, i64 %t125, i64 %t126, i64 %t127)
  store ptr %t133, ptr %l64
  br label %bb12
bb12:
  %t134 = load ptr, ptr %l64, !tbaa !29
  store ptr %t134, ptr %l10, !tbaa !29
  %t135 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t135, ptr %l65
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t137 = load %"compiler/source:Span", ptr %l1
  %t138 = load i64, ptr %l3, !tbaa !24
  %t142 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v2, ptr %t136, %"compiler/source:Span" %t137, i64 %t138)
  store ptr %t142, ptr %l69
  br label %bb13
bb13:
  %t143 = load ptr, ptr %l10, !tbaa !29
  %t144 = load ptr, ptr %l69, !tbaa !29
  %t146 = call %"compiler/typed:If" @compiler_2ftyped_3aIf_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %t144, ptr %t143, ptr null)
  store %"compiler/typed:If" %t146, ptr %l71
  br label %bb14
bb14:
  %t147 = load %"compiler/typed:If", ptr %l71
  %t148 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 24, i64 8)
  store %"compiler/typed:If" %t147, ptr %t148
  store { i64, [3 x i64] } zeroinitializer, ptr %t149
  %t150 = getelementptr { i64, [3 x i64] }, ptr %t149, i32 0, i32 0
  store i64 3, ptr %t150
  %t151 = load %"compiler/source:Span", ptr %l65
  %t152 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t151, 0
  %t154 = insertvalue { %"compiler/source:Span", ptr } %t152, ptr %t148, 1
  %t155 = getelementptr { i64, [3 x i64] }, ptr %t149, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t154, ptr %t155
  %t156 = load { i64, [3 x i64] }, ptr %t149
  %t158 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store { i64, [3 x i64] } %t156, ptr %t158
  store ptr %t158, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eentriesLit(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l4 = alloca i32
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca %"compiler/source:Span"
  %l11 = alloca i32
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l15 = alloca { i64, ptr }
  %l19 = alloca i32
  %l20 = alloca ptr
  %l23 = alloca i32
  %l24 = alloca i1
  %l26 = alloca i1
  %l29 = alloca ptr
  %l32 = alloca i32
  %l33 = alloca i32
  %l38 = alloca i32
  %l40 = alloca ptr
  %l41 = alloca { i64, ptr }
  %l44 = alloca i64
  %l46 = alloca %"compiler/source:Span"
  %l49 = alloca { i64, ptr }
  %l51 = alloca %"compiler/diagmsg:Msg"
  %l52 = alloca i64
  %l57 = alloca ptr
  %l60 = alloca i64
  %l68 = alloca { i64, ptr }
  %l71 = alloca ptr
  %l72 = alloca i1
  %l85 = alloca ptr
  %l86 = alloca %"compiler/source:Span"
  %l87 = alloca %"compiler/source:Span"
  %l90 = alloca i32
  %l93 = alloca { i64, ptr }
  %l94 = alloca ptr
  %l96 = alloca ptr
  %l99 = alloca ptr
  %l103 = alloca ptr
  %l105 = alloca %"compiler/source:Span"
  %l108 = alloca ptr
  %l114 = alloca { i64, ptr }
  %l117 = alloca ptr
  %l120 = alloca i32
  %l123 = alloca ptr
  %l125 = alloca i32
  %l128 = alloca i32
  %l129 = alloca i32
  %l130 = alloca %"compiler/source:Span"
  %l131 = alloca i32
  %l132 = alloca i32
  %l133 = alloca { i64, ptr }
  %l137 = alloca i32
  %l139 = alloca %"compiler/typed:Make"
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca ptr
  %t274 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePreludeType(ptr %v0, ptr %s0, ptr %s0, ptr %t4, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d10, i32 0, i32 1) }, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d11, i32 0, i32 1) })
  store i32 %t6, ptr %l19
  br label %bb1
bb1:
  %t7 = load i32, ptr %l19, !tbaa !23
  store i32 %t7, ptr %l4, !tbaa !23
  %t8 = load ptr, ptr %l0, !tbaa !29
  store ptr %t8, ptr %l20, !tbaa !29
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load i32, ptr %l2, !tbaa !23
  %t13 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t9, i32 %t10)
  store i32 %t13, ptr %l23
  br label %bb2
bb2:
  %t14 = load ptr, ptr %l20, !tbaa !29
  %t15 = load i32, ptr %l23, !tbaa !23
  %t16 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t14, i32 %t15)
  store i1 %t16, ptr %l24
  br label %bb3
bb3:
  %t17 = load i1, ptr %l24, !tbaa !21
  %t18 = xor i1 %t17, true
  br i1 %t18, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb9
bb5:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/check:Checker", ptr %t20, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t25 = getelementptr %"compiler/generic:Program", ptr %t23, i32 0, i32 2
  store ptr %t25, ptr %l29, !tbaa !29
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load i32, ptr %l2, !tbaa !23
  %t30 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t26, i32 %t27)
  store i32 %t30, ptr %l32
  br label %bb6
bb6:
  %t31 = load ptr, ptr %l29, !tbaa !29
  %t32 = load i32, ptr %l32, !tbaa !23
  %t33 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t31, i32 %t32)
  store i32 %t33, ptr %l33
  br label %bb7
bb7:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/check:Checker", ptr %t34, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t39 = getelementptr %"compiler/generic:Program", ptr %t37, i32 0, i32 2
  %t40 = load i32, ptr %l4, !tbaa !23
  %t43 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t39, i32 %t40)
  store i32 %t43, ptr %l38
  br label %bb8
bb8:
  %t44 = load i32, ptr %l33, !tbaa !23
  %t45 = load i32, ptr %l38, !tbaa !23
  %t46 = icmp ne i32 %t44, %t45
  store i1 %t46, ptr %l26, !tbaa !21
  br label %bb9
bb9:
  %t48 = load i1, ptr %l26, !tbaa !21
  br i1 %t48, label %bb10, label %bb11
bb10:
  store %olang.scope zeroinitializer, ptr %s1
  %t49 = load ptr, ptr %l0, !tbaa !29
  store ptr %t49, ptr %l40, !tbaa !29
  %t50 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t50, ptr %l41, !tbaa !27
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t55 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eentryAt(ptr %v0, ptr %v1, ptr %t51, { i64, ptr } %t52)
  store i64 %t55, ptr %l44
  br label %bb12
bb11:
  br label %bb19
bb12:
  %t56 = load i64, ptr %l44, !tbaa !24
  %t57 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !27
  %t59 = getelementptr ptr, ptr %t58, i64 %t56
  %t60 = load ptr, ptr %t59, !tbaa !39
  %t62 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t60)
  store %"compiler/source:Span" %t62, ptr %l46
  br label %bb13
bb13:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t64 = load i32, ptr %l2, !tbaa !23
  %t67 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s1, ptr %t63, i32 %t64)
  store { i64, ptr } %t67, ptr %l49
  br label %bb14
bb14:
  %t68 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t69 = extractvalue { i64, ptr } %t68, 0
  %t70 = extractvalue { i64, ptr } %t68, 1
  %t71 = mul i64 %t69, 1
  %t72 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t71)
  call void @llvm.memcpy.p0.p0.i64(ptr %t72, ptr %t70, i64 %t71, i1 false)
  %t73 = insertvalue { i64, ptr } undef, i64 %t69, 0
  %t74 = insertvalue { i64, ptr } %t73, ptr %t72, 1
  %t76 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLiteralEntries(ptr %s1, ptr %s1, { i64, ptr } %t74)
  store %"compiler/diagmsg:Msg" %t76, ptr %l51
  br label %bb15
bb15:
  %t77 = load ptr, ptr %l40, !tbaa !29
  %t78 = load %"compiler/source:Span", ptr %l46
  %t79 = load %"compiler/diagmsg:Msg", ptr %l51
  %t80 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s1, ptr %t77, %"compiler/source:Span" %t78, %"compiler/diagmsg:Msg" %t79)
  store i64 %t80, ptr %l52
  br label %bb16
bb16:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = load { i64, ptr }, ptr %l3, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropItems(ptr %v0, ptr %v1, ptr %t81, { i64, ptr } %t82)
  br label %bb17
bb17:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load %"compiler/source:Span", ptr %l1
  %t89 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t85, %"compiler/source:Span" %t86)
  store ptr %t89, ptr %l57
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t90 = load ptr, ptr %l57, !tbaa !29
  store ptr %t90, ptr %rv
  br label %ret
bb19:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/check:Checker", ptr %t91, i32 0, i32 36
  %t95 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t93)
  store i64 %t95, ptr %l60
  br label %bb20
bb20:
  %t96 = load i64, ptr %l60, !tbaa !24
  store i64 %t96, ptr %l5, !tbaa !24
  %t97 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t97, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t99 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t101 = extractvalue { i64, ptr } %t99, 0
  store i64 %t101, ptr %l8, !tbaa !24
  br label %bb21
bb21:
  %t103 = load i64, ptr %l7, !tbaa !24
  %t104 = load i64, ptr %l8, !tbaa !24
  %t107 = icmp slt i64 %t103, %t104
  %t109 = xor i1 %t107, true
  br i1 %t109, label %bb22, label %bb23
bb22:
  br label %bb47
bb23:
  br label %bb24
bb24:
  %t111 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t111, ptr %l68, !tbaa !27
  %t112 = load i64, ptr %l7, !tbaa !24
  %t114 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t115 = load ptr, ptr %t114, !tbaa !27
  %t116 = getelementptr ptr, ptr %t115, i64 %t112
  %t117 = load ptr, ptr %t116, !tbaa !39
  store ptr %t117, ptr %l9, !tbaa !29
  %t119 = load ptr, ptr %l9, !tbaa !29
  store ptr %t119, ptr %l71, !tbaa !29
  store i1 false, ptr %l72, !tbaa !21
  %t120 = load ptr, ptr %l71, !tbaa !29
  %t121 = icmp ne ptr %t120, null
  br i1 %t121, label %bb25, label %bb26
bb25:
  %t123 = load ptr, ptr %l71, !tbaa !29
  %t124 = load i64, ptr %t123, !range !{i64 0, i64 30}
  %t126 = icmp eq i64 %t124, 5
  store i1 %t126, ptr %l72, !tbaa !21
  br label %bb26
bb26:
  %t127 = load i1, ptr %l72, !tbaa !21
  br i1 %t127, label %bb27, label %bb28
bb27:
  %t128 = load ptr, ptr %l9, !tbaa !29
  %t130 = getelementptr { i64, [4 x i64] }, ptr %t128, i32 0, i32 1
  %t131 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t130, i32 0, i32 0
  %t132 = load %"compiler/source:Span", ptr %t131
  store %"compiler/source:Span" %t132, ptr %l10
  %t134 = load ptr, ptr %l9, !tbaa !29
  %t136 = getelementptr { i64, [4 x i64] }, ptr %t134, i32 0, i32 1
  %t137 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t136, i32 0, i32 1
  %t138 = load i32, ptr %t137, !range !{i32 0, i32 114}
  store i32 %t138, ptr %l11
  %t140 = load ptr, ptr %l9, !tbaa !29
  %t142 = getelementptr { i64, [4 x i64] }, ptr %t140, i32 0, i32 1
  %t143 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t142, i32 0, i32 2
  %t144 = load ptr, ptr %t143
  store ptr %t144, ptr %l12, !tbaa !29
  %t146 = load ptr, ptr %l9, !tbaa !29
  %t148 = getelementptr { i64, [4 x i64] }, ptr %t146, i32 0, i32 1
  %t149 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t148, i32 0, i32 3
  %t150 = load ptr, ptr %t149
  store ptr %t150, ptr %l13, !tbaa !29
  br label %bb29
bb28:
  br label %bb36
bb29:
  %t152 = load i32, ptr %l11, !range !{i32 0, i32 114}
  %t154 = trunc i64 79 to i32
  %t155 = icmp eq i32 %t152, %t154
  br i1 %t155, label %bb30, label %bb31
bb30:
  %t157 = load ptr, ptr %l0, !tbaa !29
  store ptr %t157, ptr %l85, !tbaa !29
  %t158 = load %"compiler/source:Span", ptr %l10
  store %"compiler/source:Span" %t158, ptr %l86
  %t159 = load %"compiler/source:Span", ptr %l10
  store %"compiler/source:Span" %t159, ptr %l87
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t161 = load i32, ptr %l2, !tbaa !23
  %t164 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t160, i32 %t161)
  store i32 %t164, ptr %l90
  br label %bb32
bb31:
  br label %bb36
bb32:
  %t165 = load ptr, ptr %l12, !tbaa !29
  %t166 = load ptr, ptr %l13, !tbaa !29
  %t167 = mul i64 2, 8
  %t168 = call ptr @__olang_scope_alloc_zeroed(ptr %v0, i64 %t167)
  %t169 = insertvalue { i64, ptr } undef, i64 2, 0
  %t170 = insertvalue { i64, ptr } %t169, ptr %t168, 1
  store { i64, ptr } %t170, ptr %l93, !tbaa !27
  %t172 = getelementptr { i64, ptr }, ptr %l93, i32 0, i32 1
  %t173 = load ptr, ptr %t172, !tbaa !27
  %t174 = getelementptr ptr, ptr %t173, i64 0
  store ptr %t165, ptr %t174, !tbaa !39
  %t176 = getelementptr { i64, ptr }, ptr %l93, i32 0, i32 1
  %t177 = load ptr, ptr %t176, !tbaa !27
  %t178 = getelementptr ptr, ptr %t177, i64 1
  store ptr %t166, ptr %t178, !tbaa !39
  %t179 = load ptr, ptr %l85, !tbaa !29
  %t180 = load %"compiler/source:Span", ptr %l86
  %t181 = load %"compiler/source:Span", ptr %l87
  %t182 = load i32, ptr %l90, !tbaa !23
  %t183 = load { i64, ptr }, ptr %l93, !tbaa !27
  %t184 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econstruct(ptr %v0, ptr %v0, ptr %v0, ptr %t179, %"compiler/source:Span" %t180, %"compiler/source:Span" %t181, i32 %t182, { i64, ptr } %t183)
  store ptr %t184, ptr %l94
  br label %bb33
bb33:
  %t185 = load ptr, ptr %l94, !tbaa !29
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t188 = getelementptr %"compiler/check:Checker", ptr %t186, i32 0, i32 36
  store ptr %t188, ptr %l96, !tbaa !29
  %t189 = load ptr, ptr %l0, !tbaa !29
  %t193 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epartCopy(ptr %v0, ptr %v0, ptr %v0, ptr %t189, ptr %t185)
  store ptr %t193, ptr %l99
  br label %bb34
bb34:
  %t194 = load ptr, ptr %l96, !tbaa !29
  %t195 = load ptr, ptr %l99, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t194, ptr %t195)
  br label %bb35
bb35:
  br label %bb45
bb36:
  br i1 true, label %bb37, label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb44
bb39:
  store %olang.scope zeroinitializer, ptr %s5
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t198 = getelementptr %"compiler/check:Checker", ptr %t196, i32 0, i32 36
  %t199 = load i64, ptr %l5, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eTrunca_Hdac151ce4e73ec212dc55b02b0b7e7d0(ptr %v0, ptr %t198, i64 %t199)
  br label %bb40
bb40:
  %t202 = load ptr, ptr %l0, !tbaa !29
  store ptr %t202, ptr %l103, !tbaa !29
  %t203 = load ptr, ptr %l9, !tbaa !29
  %t205 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t203)
  store %"compiler/source:Span" %t205, ptr %l105
  br label %bb41
bb41:
  %t206 = load ptr, ptr %l103, !tbaa !29
  %t207 = load %"compiler/source:Span", ptr %l105
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %s5, ptr %t206, %"compiler/source:Span" %t207, { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d12, i32 0, i32 1) })
  br label %bb42
bb42:
  %t208 = load ptr, ptr %l0, !tbaa !29
  %t209 = load %"compiler/source:Span", ptr %l1
  %t212 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t208, %"compiler/source:Span" %t209)
  store ptr %t212, ptr %l108
  br label %bb43
bb43:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  %t213 = load ptr, ptr %l108, !tbaa !29
  store ptr %t213, ptr %rv
  br label %ret
bb44:
  call void @__olang_check_failed(ptr @olang_loc_a6a174194301ea24_539b26413c501980)
  unreachable
bb45:
  br label %bb46
bb46:
  %t214 = load i64, ptr %l7, !tbaa !24
  %t216 = add i64 %t214, 1
  store i64 %t216, ptr %l7, !tbaa !24
  br label %bb21
bb47:
  %t218 = load ptr, ptr %l0, !tbaa !29
  %t220 = getelementptr %"compiler/check:Checker", ptr %t218, i32 0, i32 36
  %t221 = load i64, ptr %l5, !tbaa !24
  %t224 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v2, ptr %t220, i64 %t221)
  store { i64, ptr } %t224, ptr %l114
  br label %bb48
bb48:
  %t225 = load { i64, ptr }, ptr %l114, !tbaa !27
  store { i64, ptr } %t225, ptr %l15, !tbaa !27
  %t226 = load ptr, ptr %l0, !tbaa !29
  %t228 = getelementptr %"compiler/check:Checker", ptr %t226, i32 0, i32 1
  %t229 = load ptr, ptr %t228, !tbaa !29
  %t231 = getelementptr %"compiler/generic:Program", ptr %t229, i32 0, i32 2
  store ptr %t231, ptr %l117, !tbaa !29
  %t232 = load ptr, ptr %l0, !tbaa !29
  %t233 = load i32, ptr %l2, !tbaa !23
  %t236 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t232, i32 %t233)
  store i32 %t236, ptr %l120
  br label %bb49
bb49:
  %t237 = load ptr, ptr %l0, !tbaa !29
  %t239 = getelementptr %"compiler/check:Checker", ptr %t237, i32 0, i32 1
  %t240 = load ptr, ptr %t239, !tbaa !29
  %t242 = getelementptr %"compiler/generic:Program", ptr %t240, i32 0, i32 2
  store ptr %t242, ptr %l123, !tbaa !29
  %t243 = load ptr, ptr %l0, !tbaa !29
  %t245 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t243)
  store i32 %t245, ptr %l125
  br label %bb50
bb50:
  %t246 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t248 = extractvalue { i64, ptr } %t246, 0
  %t249 = load ptr, ptr %l123, !tbaa !29
  %t250 = load i32, ptr %l125, !tbaa !23
  %t252 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConst(ptr %v0, ptr %t249, i32 %t250, i64 %t248)
  store i32 %t252, ptr %l128
  br label %bb51
bb51:
  %t253 = load ptr, ptr %l117, !tbaa !29
  %t254 = load i32, ptr %l120, !tbaa !23
  %t255 = load i32, ptr %l128, !tbaa !23
  %t256 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %t253, i32 %t254, i32 %t255)
  store i32 %t256, ptr %l129
  br label %bb52
bb52:
  %t257 = load i32, ptr %l129, !tbaa !23
  %t258 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t258, ptr %l130
  store i32 %t257, ptr %l131, !tbaa !23
  store i32 2, ptr %l132
  %t260 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t260, ptr %l133, !tbaa !27
  %t261 = load ptr, ptr %l0, !tbaa !29
  %t262 = load %"compiler/source:Span", ptr %l1
  %t266 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %t261, i32 1, %"compiler/source:Span" %t262)
  store i32 %t266, ptr %l137
  br label %bb53
bb53:
  %t267 = load i32, ptr %l132, !range !{i32 0, i32 5}
  %t268 = load { i64, ptr }, ptr %l133, !tbaa !27
  %t269 = load i32, ptr %l137, !tbaa !23
  %t271 = call %"compiler/typed:Make" @compiler_2ftyped_3aMake_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t267, i64 0, { i64, ptr } %t268, ptr null, i32 %t269, i32 0, i1 false)
  store %"compiler/typed:Make" %t271, ptr %l139
  br label %bb54
bb54:
  %t272 = load %"compiler/typed:Make", ptr %l139
  %t273 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 56, i64 8)
  store %"compiler/typed:Make" %t272, ptr %t273
  store { i64, [5 x i64] } zeroinitializer, ptr %t274
  %t275 = getelementptr { i64, [5 x i64] }, ptr %t274, i32 0, i32 0
  store i64 7, ptr %t275
  %t276 = load %"compiler/source:Span", ptr %l130
  %t277 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t276, 0
  %t278 = load i32, ptr %l131, !tbaa !23
  %t279 = insertvalue { %"compiler/source:Span", i32, ptr } %t277, i32 %t278, 1
  %t281 = insertvalue { %"compiler/source:Span", i32, ptr } %t279, ptr %t273, 2
  %t282 = getelementptr { i64, [5 x i64] }, ptr %t274, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t281, ptr %t282
  %t283 = load { i64, [5 x i64] }, ptr %t274
  %t285 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t283, ptr %t285
  call void @__olang_scope_close(ptr %s0)
  store ptr %t285, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrItemPath(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %l6 = alloca ptr
  %l12 = alloca ptr
  %l14 = alloca ptr
  %l19 = alloca %"compiler/names:Ref"
  %l24 = alloca i1
  %l30 = alloca ptr
  %l32 = alloca ptr
  %l36 = alloca i32
  %l46 = alloca ptr
  %l48 = alloca ptr
  %l50 = alloca ptr
  %l52 = alloca %"compiler/source:Span"
  %l54 = alloca { i64, ptr }
  %l58 = alloca i64
  %l59 = alloca i64
  %l64 = alloca %"compiler/ast:Path"
  %l66 = alloca i32
  %l71 = alloca ptr
  %l76 = alloca i32
  %l78 = alloca { i64, ptr }
  %l84 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call ptr @compiler_2fcheck_2eexprPath(ptr %v1, ptr %s0, ptr %a1)
  store ptr %t3, ptr %l6
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l6, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t7 = icmp eq ptr %t5, null
  br i1 %t7, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/check:Checker", ptr %t10, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = getelementptr %"compiler/generic:Program", ptr %t13, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !29
  store ptr %t16, ptr %l12, !tbaa !29
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t17)
  store ptr %t19, ptr %l14
  br label %bb5
bb5:
  %t20 = load ptr, ptr %l14, !tbaa !29
  %t22 = getelementptr %"compiler/check:frame", ptr %t20, i32 0, i32 2
  %t23 = load i64, ptr %t22, !tbaa !24
  %t24 = load ptr, ptr %l2, !tbaa !29
  %t26 = getelementptr %"compiler/ast:Path", ptr %t24, i32 0, i32 0
  %t27 = getelementptr %"compiler/source:Span", ptr %t26, i32 0, i32 0
  %t28 = load i32, ptr %t27, !tbaa !23
  %t29 = load ptr, ptr %l12, !tbaa !29
  %t32 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t29, i64 %t23, i32 %t28)
  store %"compiler/names:Ref" %t32, ptr %l19
  br label %bb6
bb6:
  %t33 = getelementptr %"compiler/names:Ref", ptr %l19, i32 0, i32 0
  %t34 = load i32, ptr %t33, !range !{i32 0, i32 9}
  store i32 %t34, ptr %l3
  %t36 = load i32, ptr %l3, !range !{i32 0, i32 9}
  %t38 = trunc i64 4 to i32
  %t39 = icmp eq i32 %t36, %t38
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb7, label %bb8
bb7:
  %t43 = load i32, ptr %l3, !range !{i32 0, i32 9}
  %t45 = trunc i64 5 to i32
  %t46 = icmp eq i32 %t43, %t45
  %t48 = xor i1 %t46, true
  store i1 %t48, ptr %l24, !tbaa !21
  br label %bb9
bb8:
  store i1 false, ptr %l24, !tbaa !21
  br label %bb9
bb9:
  %t50 = load i1, ptr %l24, !tbaa !21
  br i1 %t50, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/check:Checker", ptr %t52, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !29
  store ptr %t55, ptr %l30, !tbaa !29
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t56)
  store ptr %t58, ptr %l32
  br label %bb13
bb13:
  %t59 = load ptr, ptr %l32, !tbaa !29
  %t61 = getelementptr %"compiler/check:frame", ptr %t59, i32 0, i32 4
  %t62 = load ptr, ptr %l2, !tbaa !29
  %t63 = load ptr, ptr %l30, !tbaa !29
  %t66 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorType(ptr %v0, ptr %v0, ptr %s0, ptr %t63, ptr %t61, ptr %t62)
  store i32 %t66, ptr %l36
  br label %bb14
bb14:
  %t67 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t68 = load i32, ptr %l36, !tbaa !23
  %t70 = icmp ne i32 %t68, %t67
  br i1 %t70, label %bb15, label %bb16
bb15:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t73 = load ptr, ptr %l2, !tbaa !29
  %t75 = getelementptr %"compiler/ast:Path", ptr %t73, i32 0, i32 1
  %t76 = load { i64, ptr }, ptr %t75, !tbaa !27
  %t78 = extractvalue { i64, ptr } %t76, 0
  %t80 = icmp slt i64 %t78, 2
  br i1 %t80, label %bb18, label %bb19
bb18:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/check:Checker", ptr %t83, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !29
  store ptr %t86, ptr %l46, !tbaa !29
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t87)
  store ptr %t89, ptr %l48
  br label %bb21
bb21:
  %t90 = load ptr, ptr %l48, !tbaa !29
  %t92 = getelementptr %"compiler/check:frame", ptr %t90, i32 0, i32 4
  store ptr %t92, ptr %l50, !tbaa !29
  %t93 = load ptr, ptr %l2, !tbaa !29
  %t95 = getelementptr %"compiler/ast:Path", ptr %t93, i32 0, i32 0
  %t96 = load %"compiler/source:Span", ptr %t95
  store %"compiler/source:Span" %t96, ptr %l52
  %t97 = load ptr, ptr %l2, !tbaa !29
  %t99 = getelementptr %"compiler/ast:Path", ptr %t97, i32 0, i32 1
  %t100 = load { i64, ptr }, ptr %t99, !tbaa !27
  store { i64, ptr } %t100, ptr %l54, !tbaa !27
  %t101 = load ptr, ptr %l2, !tbaa !29
  %t103 = getelementptr %"compiler/ast:Path", ptr %t101, i32 0, i32 1
  %t104 = load { i64, ptr }, ptr %t103, !tbaa !27
  %t106 = extractvalue { i64, ptr } %t104, 0
  %t108 = sub i64 %t106, 1
  store i64 %t108, ptr %l58, !tbaa !24
  %t109 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t110 = extractvalue { i64, ptr } %t109, 0
  store i64 %t110, ptr %l59, !tbaa !24
  %t111 = icmp sge i64 0, 0
  br i1 %t111, label %bb22, label %bb23
bb22:
  %t113 = load i64, ptr %l58, !tbaa !24
  %t114 = icmp sle i64 0, %t113
  br i1 %t114, label %bb24, label %bb25
bb23:
  call void @__olang_check_failed(ptr @olang_loc_21bd7d1c01cb29ff_7bd6b7239395673b)
  unreachable
bb24:
  %t116 = load i64, ptr %l58, !tbaa !24
  %t117 = load i64, ptr %l59, !tbaa !24
  %t118 = icmp sle i64 %t116, %t117
  br i1 %t118, label %bb26, label %bb27
bb25:
  call void @__olang_check_failed(ptr @olang_loc_21bd7d1c01cb29ff_7bd6b7239395673b)
  unreachable
bb26:
  %t120 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t121 = load ptr, ptr %t120, !tbaa !27
  %t122 = load i64, ptr %l58, !tbaa !24
  %t123 = getelementptr i32, ptr %t121, i64 0
  %t124 = sub i64 %t122, 0
  %t125 = insertvalue { i64, ptr } undef, i64 %t124, 0
  %t126 = insertvalue { i64, ptr } %t125, ptr %t123, 1
  %t127 = load %"compiler/source:Span", ptr %l52
  %t129 = call %"compiler/ast:Path" @compiler_2fast_3aPath_2ector(ptr %s0, ptr %s0, %"compiler/source:Span" %t127, { i64, ptr } %t126)
  store %"compiler/ast:Path" %t129, ptr %l64
  br label %bb28
bb27:
  call void @__olang_check_failed(ptr @olang_loc_21bd7d1c01cb29ff_7bd6b7239395673b)
  unreachable
bb28:
  %t130 = load ptr, ptr %l46, !tbaa !29
  %t131 = load ptr, ptr %l50, !tbaa !29
  %t133 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorType(ptr %v0, ptr %v0, ptr %s0, ptr %t130, ptr %t131, ptr %l64)
  store i32 %t133, ptr %l66
  br label %bb29
bb29:
  %t134 = load i32, ptr %l66, !tbaa !23
  store i32 %t134, ptr %l4, !tbaa !23
  %t135 = load i32, ptr %l4, !tbaa !23
  %t136 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t139 = icmp eq i32 %t135, %t136
  br i1 %t139, label %bb30, label %bb31
bb30:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb31:
  br label %bb32
bb32:
  %t142 = load ptr, ptr %l0, !tbaa !29
  store ptr %t142, ptr %l71, !tbaa !29
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t145 = getelementptr %"compiler/check:Checker", ptr %t143, i32 0, i32 1
  %t146 = load ptr, ptr %t145, !tbaa !29
  %t148 = getelementptr %"compiler/generic:Program", ptr %t146, i32 0, i32 2
  %t149 = load i32, ptr %l4, !tbaa !23
  %t152 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t148, i32 %t149)
  store i32 %t152, ptr %l76
  br label %bb33
bb33:
  %t153 = load ptr, ptr %l2, !tbaa !29
  %t155 = getelementptr %"compiler/ast:Path", ptr %t153, i32 0, i32 1
  %t156 = load { i64, ptr }, ptr %t155, !tbaa !27
  store { i64, ptr } %t156, ptr %l78, !tbaa !27
  %t157 = load ptr, ptr %l2, !tbaa !29
  %t159 = getelementptr %"compiler/ast:Path", ptr %t157, i32 0, i32 1
  %t160 = load { i64, ptr }, ptr %t159, !tbaa !27
  %t162 = extractvalue { i64, ptr } %t160, 0
  %t164 = sub i64 %t162, 1
  %t166 = getelementptr { i64, ptr }, ptr %l78, i32 0, i32 1
  %t167 = load ptr, ptr %t166, !tbaa !27
  %t168 = getelementptr i32, ptr %t167, i64 %t164
  %t169 = load i32, ptr %t168, !tbaa !33
  %t170 = load ptr, ptr %l71, !tbaa !29
  %t171 = load i32, ptr %l76, !tbaa !23
  %t173 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewordIndex(ptr %v0, ptr %t170, i32 %t171, i32 %t169)
  store i64 %t173, ptr %l84
  br label %bb34
bb34:
  %t174 = load i64, ptr %l84, !tbaa !24
  %t175 = icmp sge i64 %t174, 0
  call void @__olang_scope_close(ptr %s0)
  store i1 %t175, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrTest(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca ptr
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca ptr
  %l32 = alloca ptr
  %l35 = alloca ptr
  %l38 = alloca i32
  %l39 = alloca i32
  %l40 = alloca { i64, ptr }
  %l43 = alloca ptr
  %l47 = alloca i32
  %l49 = alloca i64
  %l51 = alloca i64
  %l56 = alloca i32
  %l61 = alloca i32
  %l67 = alloca i64
  %l70 = alloca i64
  %l91 = alloca { i64, ptr }
  %l94 = alloca i32
  %l105 = alloca { i64, ptr }
  %l108 = alloca i64
  %l111 = alloca i64
  %l117 = alloca i64
  %l122 = alloca ptr
  %l123 = alloca %"compiler/source:Span"
  %l124 = alloca i32
  %l125 = alloca i32
  %l126 = alloca ptr
  %l130 = alloca ptr
  %l132 = alloca ptr
  %l133 = alloca ptr
  %l134 = alloca %"compiler/source:Span"
  %l135 = alloca i32
  %l136 = alloca i32
  %l137 = alloca ptr
  %l143 = alloca ptr
  %l145 = alloca ptr
  %l151 = alloca i64
  %l157 = alloca i64
  %l160 = alloca i64
  %l179 = alloca i64
  %l183 = alloca ptr
  %l184 = alloca %"compiler/source:Span"
  %l185 = alloca i32
  %l186 = alloca i32
  %l187 = alloca ptr
  %l188 = alloca ptr
  %l189 = alloca %"compiler/source:Span"
  %l192 = alloca i32
  %l198 = alloca ptr
  %l200 = alloca ptr
  %l203 = alloca ptr
  %l213 = alloca ptr
  %l221 = alloca ptr
  %l228 = alloca ptr
  %l232 = alloca ptr
  %l241 = alloca ptr
  %s0 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  store ptr %t6, ptr %l32, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  store ptr %t12, ptr %l35, !tbaa !29
  %t13 = load ptr, ptr %l2, !tbaa !29
  %t16 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t13)
  store i32 %t16, ptr %l38
  br label %bb1
bb1:
  %t17 = load ptr, ptr %l35, !tbaa !29
  %t18 = load i32, ptr %l38, !tbaa !23
  %t19 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %t17, i32 %t18)
  store i32 %t19, ptr %l39
  br label %bb2
bb2:
  %t20 = load ptr, ptr %l32, !tbaa !29
  %t21 = load i32, ptr %l39, !tbaa !23
  %t22 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t20, i32 %t21)
  store { i64, ptr } %t22, ptr %l40
  br label %bb3
bb3:
  %t23 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t23, ptr %l4, !tbaa !27
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load ptr, ptr %l2, !tbaa !29
  %t28 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrCode(ptr %v0, ptr %v1, ptr %v3, ptr %t24, ptr %t25)
  store ptr %t28, ptr %l43
  br label %bb4
bb4:
  %t29 = load ptr, ptr %l43, !tbaa !29
  store ptr %t29, ptr %l5, !tbaa !29
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/check:Checker", ptr %t30, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t35 = getelementptr %"compiler/generic:Program", ptr %t33, i32 0, i32 2
  %t37 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s0, ptr %t35, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d13, i32 0, i32 1) })
  store i32 %t37, ptr %l47
  br label %bb5
bb5:
  %t38 = load i32, ptr %l47, !tbaa !23
  store i32 %t38, ptr %l6, !tbaa !23
  store ptr null, ptr %l7, !tbaa !29
  store ptr %a3, ptr %l8, !tbaa !29
  store i64 0, ptr %l9, !tbaa !24
  br label %bb6
bb6:
  %t41 = load i64, ptr %l9, !tbaa !24
  store i64 %t41, ptr %l49, !tbaa !24
  %t42 = load ptr, ptr %l8, !tbaa !29
  %t44 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v2, ptr %t42)
  store i64 %t44, ptr %l51
  br label %bb7
bb7:
  %t45 = load i64, ptr %l49, !tbaa !24
  %t46 = load i64, ptr %l51, !tbaa !24
  %t47 = icmp slt i64 %t45, %t46
  %t49 = xor i1 %t47, true
  br i1 %t49, label %bb8, label %bb9
bb8:
  br label %bb73
bb9:
  br label %bb10
bb10:
  %t51 = load ptr, ptr %l8, !tbaa !29
  %t52 = load i64, ptr %l9, !tbaa !24
  %t55 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v2, ptr %t51, i64 %t52)
  store i32 %t55, ptr %l56
  br label %bb11
bb11:
  %t56 = load i32, ptr %l56, !tbaa !23
  store i32 %t56, ptr %l10, !tbaa !23
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/check:Checker", ptr %t57, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !29
  %t62 = getelementptr %"compiler/generic:Program", ptr %t60, i32 0, i32 2
  %t63 = load i32, ptr %l10, !tbaa !23
  %t66 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t62, i32 %t63)
  store i32 %t66, ptr %l61
  br label %bb12
bb12:
  %t67 = load i32, ptr %l61, !tbaa !23
  store i32 %t67, ptr %l11, !tbaa !23
  store i64 -1, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  %t68 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t70 = extractvalue { i64, ptr } %t68, 0
  store i64 %t70, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t72 = load i64, ptr %l14, !tbaa !24
  %t73 = load i64, ptr %l13, !tbaa !24
  %t76 = icmp sgt i64 %t72, %t73
  br i1 %t76, label %bb13, label %bb14
bb13:
  %t78 = load i64, ptr %l15, !tbaa !24
  %t80 = icmp sgt i64 %t78, 0
  br i1 %t80, label %bb15, label %bb16
bb14:
  store i64 0, ptr %l67, !tbaa !24
  br label %bb18
bb15:
  %t82 = load i64, ptr %l14, !tbaa !24
  %t83 = load i64, ptr %l13, !tbaa !24
  %t86 = sub i64 %t82, %t83
  %t87 = load i64, ptr %l15, !tbaa !24
  %t90 = add i64 %t86, %t87
  %t92 = sub i64 %t90, 1
  %t93 = load i64, ptr %l15, !tbaa !24
  %t96 = sdiv i64 %t92, %t93
  store i64 %t96, ptr %l70, !tbaa !24
  br label %bb17
bb16:
  store i64 0, ptr %l70, !tbaa !24
  br label %bb17
bb17:
  %t98 = load i64, ptr %l70, !tbaa !24
  store i64 %t98, ptr %l67, !tbaa !24
  br label %bb18
bb18:
  %t99 = load i64, ptr %l67, !tbaa !24
  store i64 %t99, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb19
bb19:
  %t100 = load i64, ptr %l17, !tbaa !24
  %t101 = load i64, ptr %l16, !tbaa !24
  %t104 = icmp slt i64 %t100, %t101
  %t106 = xor i1 %t104, true
  br i1 %t106, label %bb20, label %bb21
bb20:
  br label %bb28
bb21:
  br label %bb22
bb22:
  %t108 = load i64, ptr %l13, !tbaa !24
  %t109 = load i64, ptr %l17, !tbaa !24
  %t110 = load i64, ptr %l15, !tbaa !24
  %t113 = mul i64 %t109, %t110
  %t116 = add i64 %t108, %t113
  store i64 %t116, ptr %l18, !tbaa !24
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = getelementptr %"compiler/check:Checker", ptr %t118, i32 0, i32 1
  %t121 = load ptr, ptr %t120, !tbaa !29
  %t123 = getelementptr %"compiler/generic:Program", ptr %t121, i32 0, i32 2
  %t124 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t124, ptr %l91, !tbaa !27
  %t125 = load i64, ptr %l18, !tbaa !24
  %t127 = getelementptr { i64, ptr }, ptr %l91, i32 0, i32 1
  %t128 = load ptr, ptr %t127, !tbaa !27
  %t129 = getelementptr i32, ptr %t128, i64 %t125
  %t130 = load i32, ptr %t129, !tbaa !33
  %t133 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t123, i32 %t130)
  store i32 %t133, ptr %l94
  br label %bb23
bb23:
  %t134 = load i32, ptr %l11, !tbaa !23
  %t135 = load i32, ptr %l94, !tbaa !23
  %t137 = icmp eq i32 %t135, %t134
  br i1 %t137, label %bb24, label %bb25
bb24:
  %t139 = load i64, ptr %l18, !tbaa !24
  store i64 %t139, ptr %l12, !tbaa !24
  br label %bb26
bb25:
  br label %bb26
bb26:
  br label %bb27
bb27:
  %t141 = load i64, ptr %l17, !tbaa !24
  %t143 = add i64 %t141, 1
  store i64 %t143, ptr %l17, !tbaa !24
  br label %bb19
bb28:
  %t145 = load i64, ptr %l12, !tbaa !24
  %t147 = icmp slt i64 %t145, 0
  br i1 %t147, label %bb29, label %bb30
bb29:
  br label %bb72
bb30:
  br label %bb31
bb31:
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t151 = getelementptr %"compiler/check:Checker", ptr %t149, i32 0, i32 1
  %t152 = load ptr, ptr %t151, !tbaa !29
  %t154 = getelementptr %"compiler/generic:Program", ptr %t152, i32 0, i32 2
  %t155 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t155, ptr %l105, !tbaa !27
  %t156 = load i64, ptr %l12, !tbaa !24
  %t158 = getelementptr { i64, ptr }, ptr %l105, i32 0, i32 1
  %t159 = load ptr, ptr %t158, !tbaa !27
  %t160 = getelementptr i32, ptr %t159, i64 %t156
  %t161 = load i32, ptr %t160, !tbaa !33
  %t164 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrMask(ptr %v0, ptr %t154, i32 %t161)
  store i64 %t164, ptr %l108
  br label %bb32
bb32:
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t166 = load i32, ptr %l11, !tbaa !23
  %t169 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eallWords(ptr %v0, ptr %t165, i32 %t166)
  store i64 %t169, ptr %l111
  br label %bb33
bb33:
  %t170 = load i64, ptr %l108, !tbaa !65
  %t171 = load i64, ptr %l111, !tbaa !65
  %t172 = and i64 %t170, %t171
  store i64 %t172, ptr %l19, !tbaa !65
  store ptr null, ptr %l20, !tbaa !29
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t176 = getelementptr %"compiler/check:Checker", ptr %t174, i32 0, i32 1
  %t177 = load ptr, ptr %t176, !tbaa !29
  %t179 = getelementptr %"compiler/generic:Program", ptr %t177, i32 0, i32 2
  %t180 = load i32, ptr %l10, !tbaa !23
  %t183 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrMask(ptr %v0, ptr %t179, i32 %t180)
  store i64 %t183, ptr %l117
  br label %bb34
bb34:
  %t184 = load i64, ptr %l19, !tbaa !65
  %t185 = load i64, ptr %l117, !tbaa !65
  %t187 = and i64 %t185, %t184
  %t188 = load i64, ptr %l19, !tbaa !65
  %t191 = icmp eq i64 %t187, %t188
  br i1 %t191, label %bb35, label %bb36
bb35:
  %t193 = load ptr, ptr %l0, !tbaa !29
  store ptr %t193, ptr %l122, !tbaa !29
  %t194 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t194, ptr %l123
  %t195 = load i32, ptr %l6, !tbaa !23
  store i32 %t195, ptr %l124, !tbaa !23
  store i32 9, ptr %l125
  %t196 = load ptr, ptr %l5, !tbaa !29
  store ptr %t196, ptr %l126, !tbaa !29
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t198 = load %"compiler/source:Span", ptr %l1
  %t199 = load i32, ptr %l6, !tbaa !23
  %t203 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t197, %"compiler/source:Span" %t198, i32 %t199, i64 16)
  store ptr %t203, ptr %l130
  br label %bb37
bb36:
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t206 = getelementptr %"compiler/check:Checker", ptr %t204, i32 0, i32 1
  %t207 = load ptr, ptr %t206, !tbaa !29
  %t209 = getelementptr %"compiler/generic:Program", ptr %t207, i32 0, i32 2
  %t210 = load i32, ptr %l10, !tbaa !23
  %t213 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrMask(ptr %v0, ptr %t209, i32 %t210)
  store i64 %t213, ptr %l151
  br label %bb41
bb37:
  %t214 = load ptr, ptr %l130, !tbaa !29
  %t215 = load ptr, ptr %l122, !tbaa !29
  %t216 = load %"compiler/source:Span", ptr %l123
  %t217 = load i32, ptr %l124, !tbaa !23
  %t218 = load i32, ptr %l125, !range !{i32 0, i32 52}
  %t219 = load ptr, ptr %l126, !tbaa !29
  %t221 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v3, ptr %v0, ptr %v0, ptr %t215, %"compiler/source:Span" %t216, i32 %t217, i32 %t218, ptr %t219, ptr %t214)
  store ptr %t221, ptr %l132
  br label %bb38
bb38:
  %t222 = load ptr, ptr %l132, !tbaa !29
  %t223 = load ptr, ptr %l0, !tbaa !29
  store ptr %t223, ptr %l133, !tbaa !29
  %t224 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t224, ptr %l134
  %t225 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t225, ptr %l135, !tbaa !23
  store i32 13, ptr %l136
  store ptr %t222, ptr %l137, !tbaa !29
  %t227 = load ptr, ptr %l0, !tbaa !29
  %t228 = load %"compiler/source:Span", ptr %l1
  %t229 = load i32, ptr %l6, !tbaa !23
  %t230 = load i64, ptr %l12, !tbaa !24
  %t232 = add i64 %t230, 1
  %t237 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t227, %"compiler/source:Span" %t228, i32 %t229, i64 %t232)
  store ptr %t237, ptr %l143
  br label %bb39
bb39:
  %t238 = load ptr, ptr %l143, !tbaa !29
  %t239 = load ptr, ptr %l133, !tbaa !29
  %t240 = load %"compiler/source:Span", ptr %l134
  %t241 = load i32, ptr %l135, !tbaa !23
  %t242 = load i32, ptr %l136, !range !{i32 0, i32 52}
  %t243 = load ptr, ptr %l137, !tbaa !29
  %t245 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t239, %"compiler/source:Span" %t240, i32 %t241, i32 %t242, ptr %t243, ptr %t238)
  store ptr %t245, ptr %l145
  br label %bb40
bb40:
  %t246 = load ptr, ptr %l145, !tbaa !29
  store ptr %t246, ptr %l20, !tbaa !29
  br label %bb64
bb41:
  %t248 = load i64, ptr %l19, !tbaa !65
  %t249 = load i64, ptr %l151, !tbaa !65
  %t251 = and i64 %t249, %t248
  store i64 %t251, ptr %l22, !tbaa !65
  store i64 0, ptr %l23, !tbaa !24
  store i64 64, ptr %l24, !tbaa !24
  store i64 1, ptr %l25, !tbaa !24
  %t253 = load i64, ptr %l24, !tbaa !24
  %t254 = load i64, ptr %l23, !tbaa !24
  %t257 = icmp sgt i64 %t253, %t254
  br i1 %t257, label %bb42, label %bb43
bb42:
  %t259 = load i64, ptr %l25, !tbaa !24
  %t261 = icmp sgt i64 %t259, 0
  br i1 %t261, label %bb44, label %bb45
bb43:
  store i64 0, ptr %l157, !tbaa !24
  br label %bb47
bb44:
  %t263 = load i64, ptr %l24, !tbaa !24
  %t264 = load i64, ptr %l23, !tbaa !24
  %t267 = sub i64 %t263, %t264
  %t268 = load i64, ptr %l25, !tbaa !24
  %t271 = add i64 %t267, %t268
  %t273 = sub i64 %t271, 1
  %t274 = load i64, ptr %l25, !tbaa !24
  %t277 = sdiv i64 %t273, %t274
  store i64 %t277, ptr %l160, !tbaa !24
  br label %bb46
bb45:
  store i64 0, ptr %l160, !tbaa !24
  br label %bb46
bb46:
  %t279 = load i64, ptr %l160, !tbaa !24
  store i64 %t279, ptr %l157, !tbaa !24
  br label %bb47
bb47:
  %t280 = load i64, ptr %l157, !tbaa !24
  store i64 %t280, ptr %l26, !tbaa !24
  store i64 0, ptr %l27, !tbaa !24
  br label %bb48
bb48:
  %t281 = load i64, ptr %l27, !tbaa !24
  %t282 = load i64, ptr %l26, !tbaa !24
  %t285 = icmp slt i64 %t281, %t282
  %t287 = xor i1 %t285, true
  br i1 %t287, label %bb49, label %bb50
bb49:
  br label %bb63
bb50:
  br label %bb51
bb51:
  %t289 = load i64, ptr %l23, !tbaa !24
  %t290 = load i64, ptr %l27, !tbaa !24
  %t291 = load i64, ptr %l25, !tbaa !24
  %t294 = mul i64 %t290, %t291
  %t297 = add i64 %t289, %t294
  store i64 %t297, ptr %l28, !tbaa !24
  %t299 = load i64, ptr %l22, !tbaa !65
  %t300 = load i64, ptr %l28, !tbaa !24
  store i64 %t300, ptr %l179, !tbaa !24
  %t301 = load i64, ptr %l179, !tbaa !24
  %t302 = load i64, ptr %l179, !tbaa !24
  %t303 = shl i64 1, %t302
  %t306 = and i64 %t299, %t303
  %t308 = icmp eq i64 %t306, 0
  br i1 %t308, label %bb52, label %bb53
bb52:
  br label %bb62
bb53:
  br label %bb54
bb54:
  %t310 = load ptr, ptr %l0, !tbaa !29
  store ptr %t310, ptr %l183, !tbaa !29
  %t311 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t311, ptr %l184
  %t312 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t312, ptr %l185, !tbaa !23
  store i32 13, ptr %l186
  %t313 = load ptr, ptr %l5, !tbaa !29
  store ptr %t313, ptr %l187, !tbaa !29
  %t314 = load ptr, ptr %l0, !tbaa !29
  store ptr %t314, ptr %l188, !tbaa !29
  %t315 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t315, ptr %l189
  %t316 = load ptr, ptr %l5, !tbaa !29
  %t319 = call i32 @compiler_2fcheck_2etypeOf(ptr %v3, ptr %t316)
  store i32 %t319, ptr %l192
  br label %bb55
bb55:
  %t320 = load i64, ptr %l12, !tbaa !24
  %t322 = add i64 %t320, 1
  %t324 = shl i64 %t322, 16
  %t325 = load i64, ptr %l28, !tbaa !24
  %t328 = or i64 %t324, %t325
  %t329 = load ptr, ptr %l188, !tbaa !29
  %t330 = load %"compiler/source:Span", ptr %l189
  %t331 = load i32, ptr %l192, !tbaa !23
  %t333 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t329, %"compiler/source:Span" %t330, i32 %t331, i64 %t328)
  store ptr %t333, ptr %l198
  br label %bb56
bb56:
  %t334 = load ptr, ptr %l198, !tbaa !29
  %t335 = load ptr, ptr %l183, !tbaa !29
  %t336 = load %"compiler/source:Span", ptr %l184
  %t337 = load i32, ptr %l185, !tbaa !23
  %t338 = load i32, ptr %l186, !range !{i32 0, i32 52}
  %t339 = load ptr, ptr %l187, !tbaa !29
  %t341 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v3, ptr %v0, ptr %v0, ptr %t335, %"compiler/source:Span" %t336, i32 %t337, i32 %t338, ptr %t339, ptr %t334)
  store ptr %t341, ptr %l200
  br label %bb57
bb57:
  %t342 = load ptr, ptr %l200, !tbaa !29
  store ptr %t342, ptr %l29, !tbaa !29
  %t343 = load ptr, ptr %l20, !tbaa !29
  %t345 = icmp eq ptr %t343, null
  br i1 %t345, label %bb58, label %bb59
bb58:
  %t347 = load ptr, ptr %l29, !tbaa !29
  store ptr %t347, ptr %l203, !tbaa !29
  br label %bb61
bb59:
  %t350 = load ptr, ptr %l0, !tbaa !29
  %t351 = load %"compiler/source:Span", ptr %l1
  %t352 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t353 = load ptr, ptr %l20, !tbaa !29
  %t354 = load ptr, ptr %l29, !tbaa !29
  %t362 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t350, %"compiler/source:Span" %t351, i32 %t352, i32 11, ptr %t353, ptr %t354)
  store ptr %t362, ptr %l213
  br label %bb60
bb60:
  %t363 = load ptr, ptr %l213, !tbaa !29
  store ptr %t363, ptr %l203, !tbaa !29
  br label %bb61
bb61:
  %t365 = load ptr, ptr %l203, !tbaa !29
  store ptr %t365, ptr %l20, !tbaa !29
  br label %bb62
bb62:
  %t366 = load i64, ptr %l27, !tbaa !24
  %t368 = add i64 %t366, 1
  store i64 %t368, ptr %l27, !tbaa !24
  br label %bb48
bb63:
  br label %bb64
bb64:
  %t370 = load ptr, ptr %l20, !tbaa !29
  %t372 = icmp eq ptr %t370, null
  br i1 %t372, label %bb65, label %bb66
bb65:
  br label %bb72
bb66:
  br label %bb67
bb67:
  %t374 = load ptr, ptr %l7, !tbaa !29
  %t376 = icmp eq ptr %t374, null
  br i1 %t376, label %bb68, label %bb69
bb68:
  %t378 = load ptr, ptr %l20, !tbaa !29
  store ptr %t378, ptr %l221, !tbaa !29
  br label %bb71
bb69:
  %t381 = load ptr, ptr %l0, !tbaa !29
  %t382 = load %"compiler/source:Span", ptr %l1
  %t383 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t384 = load ptr, ptr %l7, !tbaa !29
  store ptr %t384, ptr %l228, !tbaa !29
  %t385 = load ptr, ptr %l20, !tbaa !29
  %t387 = load ptr, ptr %l228, !tbaa !29
  %t388 = call ptr @__olang_scope_of(ptr %t387, ptr null)
  %t389 = ptrtoint ptr %t388 to i64
  %t391 = inttoptr i64 %t389 to ptr
  %t396 = load ptr, ptr %l228, !tbaa !29
  %t398 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %t391, ptr %v0, ptr %v3, ptr %t381, %"compiler/source:Span" %t382, i32 %t383, i32 11, ptr %t396, ptr %t385)
  store ptr %t398, ptr %l232
  br label %bb70
bb70:
  %t399 = load ptr, ptr %l232, !tbaa !29
  store ptr %t399, ptr %l221, !tbaa !29
  br label %bb71
bb71:
  %t401 = load ptr, ptr %l221, !tbaa !29
  store ptr %t401, ptr %l7, !tbaa !29
  br label %bb72
bb72:
  %t402 = load i64, ptr %l9, !tbaa !24
  %t404 = add i64 %t402, 1
  store i64 %t404, ptr %l9, !tbaa !24
  br label %bb6
bb73:
  %t406 = load ptr, ptr %l7, !tbaa !29
  %t408 = icmp eq ptr %t406, null
  br i1 %t408, label %bb74, label %bb75
bb74:
  %t410 = load ptr, ptr %l0, !tbaa !29
  %t411 = load %"compiler/source:Span", ptr %l1
  %t412 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t416 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v3, ptr %t410, %"compiler/source:Span" %t411, i32 %t412, i64 0)
  store ptr %t416, ptr %l241
  br label %bb76
bb75:
  br label %bb77
bb76:
  call void @__olang_scope_close(ptr %s0)
  %t417 = load ptr, ptr %l241, !tbaa !29
  store ptr %t417, ptr %rv
  br label %ret
bb77:
  %t418 = load ptr, ptr %l7, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t418, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eescapes(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
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
  %l18 = alloca ptr
  %l19 = alloca i64
  %l22 = alloca ptr
  %l32 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l38 = alloca i64
  %l42 = alloca i64
  %l45 = alloca i64
  %l63 = alloca ptr
  %l67 = alloca i32
  %l77 = alloca i64
  %l80 = alloca i64
  %l99 = alloca ptr
  %l103 = alloca i32
  %l110 = alloca i64
  %l112 = alloca i64
  %l117 = alloca i32
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l22
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l22, !tbaa !29
  store ptr %t4, ptr %l4, !tbaa !29
  %t5 = load i64, ptr %l3, !tbaa !24
  %t7 = icmp eq i64 %t5, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb3:
  br label %bb4
bb4:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = load i64, ptr %l2, !tbaa !24
  %t12 = load i64, ptr %l3, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eescapeRules(ptr %v0, ptr %t9, %"compiler/source:Span" %a1, i64 %t11, i64 %t12)
  br label %bb5
bb5:
  %t17 = load ptr, ptr %l4, !tbaa !29
  %t19 = getelementptr %"compiler/check:frame", ptr %t17, i32 0, i32 15
  %t20 = load i64, ptr %t19, !tbaa !24
  %t22 = icmp eq i64 %t20, 0
  br i1 %t22, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb7:
  br label %bb8
bb8:
  %t24 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t24, ptr %l32
  br label %bb9
bb9:
  %t25 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l32
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t25, ptr %l5
  %t26 = load i64, ptr %l2, !tbaa !24
  %t27 = load i64, ptr %l3, !tbaa !24
  %t30 = add i64 %t26, %t27
  store i64 %t30, ptr %l6, !tbaa !24
  %t32 = load ptr, ptr %l4, !tbaa !29
  %t34 = getelementptr %"compiler/check:frame", ptr %t32, i32 0, i32 28
  %t36 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t34)
  store i64 %t36, ptr %l38
  br label %bb10
bb10:
  %t37 = load i64, ptr %l38, !tbaa !24
  store i64 %t37, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t38 = load i64, ptr %l7, !tbaa !24
  %t39 = load i64, ptr %l6, !tbaa !24
  %t42 = icmp sgt i64 %t38, %t39
  br i1 %t42, label %bb11, label %bb12
bb11:
  %t44 = load i64, ptr %l8, !tbaa !24
  %t46 = icmp sgt i64 %t44, 0
  br i1 %t46, label %bb13, label %bb14
bb12:
  store i64 0, ptr %l42, !tbaa !24
  br label %bb16
bb13:
  %t48 = load i64, ptr %l7, !tbaa !24
  %t49 = load i64, ptr %l6, !tbaa !24
  %t52 = sub i64 %t48, %t49
  %t53 = load i64, ptr %l8, !tbaa !24
  %t56 = add i64 %t52, %t53
  %t58 = sub i64 %t56, 1
  %t59 = load i64, ptr %l8, !tbaa !24
  %t62 = sdiv i64 %t58, %t59
  store i64 %t62, ptr %l45, !tbaa !24
  br label %bb15
bb14:
  store i64 0, ptr %l45, !tbaa !24
  br label %bb15
bb15:
  %t64 = load i64, ptr %l45, !tbaa !24
  store i64 %t64, ptr %l42, !tbaa !24
  br label %bb16
bb16:
  %t65 = load i64, ptr %l42, !tbaa !24
  store i64 %t65, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb17
bb17:
  %t66 = load i64, ptr %l10, !tbaa !24
  %t67 = load i64, ptr %l9, !tbaa !24
  %t70 = icmp slt i64 %t66, %t67
  %t72 = xor i1 %t70, true
  br i1 %t72, label %bb18, label %bb19
bb18:
  br label %bb24
bb19:
  br label %bb20
bb20:
  %t74 = load i64, ptr %l6, !tbaa !24
  %t75 = load i64, ptr %l10, !tbaa !24
  %t76 = load i64, ptr %l8, !tbaa !24
  %t79 = mul i64 %t75, %t76
  %t82 = add i64 %t74, %t79
  store ptr %l5, ptr %l63, !tbaa !29
  %t84 = load ptr, ptr %l4, !tbaa !29
  %t86 = getelementptr %"compiler/check:frame", ptr %t84, i32 0, i32 28
  %t90 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t86, i64 %t82)
  store i32 %t90, ptr %l67
  br label %bb21
bb21:
  %t91 = load ptr, ptr %l63, !tbaa !29
  %t92 = load i32, ptr %l67, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %t91, i32 %t92)
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t93 = load i64, ptr %l10, !tbaa !24
  %t95 = add i64 %t93, 1
  store i64 %t95, ptr %l10, !tbaa !24
  br label %bb17
bb24:
  %t97 = load i64, ptr %l2, !tbaa !24
  store i64 %t97, ptr %l12, !tbaa !24
  %t99 = load i64, ptr %l2, !tbaa !24
  %t100 = load i64, ptr %l3, !tbaa !24
  %t103 = add i64 %t99, %t100
  store i64 %t103, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t105 = load i64, ptr %l13, !tbaa !24
  %t106 = load i64, ptr %l12, !tbaa !24
  %t109 = icmp sgt i64 %t105, %t106
  br i1 %t109, label %bb25, label %bb26
bb25:
  %t111 = load i64, ptr %l14, !tbaa !24
  %t113 = icmp sgt i64 %t111, 0
  br i1 %t113, label %bb27, label %bb28
bb26:
  store i64 0, ptr %l77, !tbaa !24
  br label %bb30
bb27:
  %t115 = load i64, ptr %l13, !tbaa !24
  %t116 = load i64, ptr %l12, !tbaa !24
  %t119 = sub i64 %t115, %t116
  %t120 = load i64, ptr %l14, !tbaa !24
  %t123 = add i64 %t119, %t120
  %t125 = sub i64 %t123, 1
  %t126 = load i64, ptr %l14, !tbaa !24
  %t129 = sdiv i64 %t125, %t126
  store i64 %t129, ptr %l80, !tbaa !24
  br label %bb29
bb28:
  store i64 0, ptr %l80, !tbaa !24
  br label %bb29
bb29:
  %t131 = load i64, ptr %l80, !tbaa !24
  store i64 %t131, ptr %l77, !tbaa !24
  br label %bb30
bb30:
  %t132 = load i64, ptr %l77, !tbaa !24
  store i64 %t132, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb31
bb31:
  %t133 = load i64, ptr %l16, !tbaa !24
  %t134 = load i64, ptr %l15, !tbaa !24
  %t137 = icmp slt i64 %t133, %t134
  %t139 = xor i1 %t137, true
  br i1 %t139, label %bb32, label %bb33
bb32:
  br label %bb38
bb33:
  br label %bb34
bb34:
  %t141 = load i64, ptr %l12, !tbaa !24
  %t142 = load i64, ptr %l16, !tbaa !24
  %t143 = load i64, ptr %l14, !tbaa !24
  %t146 = mul i64 %t142, %t143
  %t149 = add i64 %t141, %t146
  %t151 = load ptr, ptr %l4, !tbaa !29
  %t153 = getelementptr %"compiler/check:frame", ptr %t151, i32 0, i32 29
  store ptr %t153, ptr %l99, !tbaa !29
  %t154 = load ptr, ptr %l4, !tbaa !29
  %t156 = getelementptr %"compiler/check:frame", ptr %t154, i32 0, i32 28
  %t160 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t156, i64 %t149)
  store i32 %t160, ptr %l103
  br label %bb35
bb35:
  %t161 = load ptr, ptr %l99, !tbaa !29
  %t162 = load i32, ptr %l103, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t161, i32 %t162)
  br label %bb36
bb36:
  br label %bb37
bb37:
  %t163 = load i64, ptr %l16, !tbaa !24
  %t165 = add i64 %t163, 1
  store i64 %t165, ptr %l16, !tbaa !24
  br label %bb31
bb38:
  %t167 = load ptr, ptr %l4, !tbaa !29
  %t169 = getelementptr %"compiler/check:frame", ptr %t167, i32 0, i32 28
  %t170 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eTruncate_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t169, i64 %t170)
  br label %bb39
bb39:
  store ptr %l5, ptr %l18, !tbaa !29
  store i64 0, ptr %l19, !tbaa !24
  br label %bb40
bb40:
  %t174 = load i64, ptr %l19, !tbaa !24
  store i64 %t174, ptr %l110, !tbaa !24
  %t175 = load ptr, ptr %l18, !tbaa !29
  %t177 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %t175)
  store i64 %t177, ptr %l112
  br label %bb41
bb41:
  %t178 = load i64, ptr %l110, !tbaa !24
  %t179 = load i64, ptr %l112, !tbaa !24
  %t180 = icmp slt i64 %t178, %t179
  %t182 = xor i1 %t180, true
  br i1 %t182, label %bb42, label %bb43
bb42:
  br label %bb48
bb43:
  br label %bb44
bb44:
  %t184 = load ptr, ptr %l18, !tbaa !29
  %t185 = load i64, ptr %l19, !tbaa !24
  %t188 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %t184, i64 %t185)
  store i32 %t188, ptr %l117
  br label %bb45
bb45:
  %t189 = load i32, ptr %l117, !tbaa !23
  %t190 = load ptr, ptr %l4, !tbaa !29
  %t192 = getelementptr %"compiler/check:frame", ptr %t190, i32 0, i32 28
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t192, i32 %t189)
  br label %bb46
bb46:
  br label %bb47
bb47:
  %t196 = load i64, ptr %l19, !tbaa !24
  %t198 = add i64 %t196, 1
  store i64 %t198, ptr %l19, !tbaa !24
  br label %bb40
bb48:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenByValue(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, [3 x i64] }
  %l5 = alloca i64
  %l7 = alloca ptr
  %l9 = alloca %"compiler/source:Span"
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, [3 x i64] }
  %l13 = alloca ptr
  %l16 = alloca ptr
  %l18 = alloca ptr
  %l20 = alloca ptr
  %l25 = alloca i32
  %l26 = alloca i32
  %l28 = alloca { i64, [3 x i64] }
  %l29 = alloca i32
  %l34 = alloca i64
  %l36 = alloca ptr
  %l43 = alloca ptr
  %l44 = alloca { i64, [3 x i64] }
  %l46 = alloca %"compiler/diagmsg:Msg"
  %l47 = alloca i64
  %l51 = alloca ptr
  %l52 = alloca i64
  %l55 = alloca { i64, [3 x i64] }
  %l57 = alloca %"compiler/diagmsg:Msg"
  %l58 = alloca ptr
  %l59 = alloca %"compiler/source:Span"
  %l61 = alloca %"compiler/diagmsg:Msg"
  %l62 = alloca i64
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %t47 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l7, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t4 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t2)
  store %"compiler/source:Span" %t4, ptr %l9
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l7, !tbaa !29
  %t6 = load %"compiler/source:Span", ptr %l9
  %t7 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t5, %"compiler/source:Span" %t6)
  store { i64, ptr } %t7, ptr %l10
  br label %bb2
bb2:
  %t8 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t8, ptr %l3, !tbaa !27
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/check:Checker", ptr %t9, i32 0, i32 98
  store ptr %t11, ptr %l13, !tbaa !29
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/check:Checker", ptr %t12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = getelementptr %"compiler/generic:Program", ptr %t15, i32 0, i32 2
  store ptr %t17, ptr %l16, !tbaa !29
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/check:Checker", ptr %t18, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !29
  store ptr %t21, ptr %l18, !tbaa !29
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t22)
  store ptr %t24, ptr %l20
  br label %bb3
bb3:
  %t25 = load ptr, ptr %l20, !tbaa !29
  %t27 = getelementptr %"compiler/check:frame", ptr %t25, i32 0, i32 4
  %t28 = load ptr, ptr %l1, !tbaa !29
  %t30 = load ptr, ptr %l18, !tbaa !29
  %t33 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v0, ptr %v1, ptr %t30, ptr %t27, ptr %t28)
  store i32 %t33, ptr %l25
  br label %bb4
bb4:
  %t34 = load ptr, ptr %l16, !tbaa !29
  %t35 = load i32, ptr %l25, !tbaa !23
  %t36 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t34, i32 %t35)
  store i32 %t36, ptr %l26
  br label %bb5
bb5:
  %t37 = load i32, ptr %l26, !tbaa !23
  %t38 = sext i32 %t37 to i64
  %t39 = load ptr, ptr %l13, !tbaa !29
  %t41 = call { i32, { i64, [3 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fdiag_3aWhere_3e_2e_H38805f4eed72f99710d38d2dedaea985(ptr %v0, ptr %t39, i64 %t38)
  %t42 = extractvalue { i32, { i64, [3 x i64] } } %t41, 1
  %t43 = extractvalue { i32, { i64, [3 x i64] } } %t41, 0
  store i32 %t43, ptr %l29
  %t44 = icmp ne i32 %t43, 0
  br i1 %t44, label %bb7, label %ok.45, !prof !99
ok.45:
  store { i64, [3 x i64] } %t42, ptr %l28
  br label %bb6
bb6:
  %t46 = load { i64, [3 x i64] }, ptr %l28
  store { i64, [3 x i64] } %t46, ptr %l11
  br label %bb9
bb7:
  br label %bb8
bb8:
  store { i64, [3 x i64] } zeroinitializer, ptr %t47
  %t48 = getelementptr { i64, [3 x i64] }, ptr %t47, i32 0, i32 0
  store i64 0, ptr %t48
  %t49 = load { i64, [3 x i64] }, ptr %t47
  store { i64, [3 x i64] } %t49, ptr %l11
  br label %bb9
bb9:
  %t51 = load { i64, [3 x i64] }, ptr %l11
  store { i64, [3 x i64] } %t51, ptr %l4
  %t52 = load { i64, [3 x i64] }, ptr %l4
  %t54 = extractvalue { i64, [3 x i64] } %t52, 0
  %t55 = icmp eq i64 %t54, 3
  br i1 %t55, label %bb10, label %bb11
bb10:
  %t57 = getelementptr { i64, [3 x i64] }, ptr %l4, i32 0, i32 1
  %t58 = getelementptr { i64, i64, i64 }, ptr %t57, i32 0, i32 0
  %t59 = load i64, ptr %t58
  store i64 %t59, ptr %l5, !tbaa !24
  br label %bb12
bb11:
  br label %bb21
bb12:
  %t61 = load i64, ptr %l5, !tbaa !24
  store i64 %t61, ptr %l34, !tbaa !24
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t62)
  store ptr %t64, ptr %l36
  br label %bb13
bb13:
  %t65 = load ptr, ptr %l36, !tbaa !29
  %t67 = getelementptr %"compiler/check:frame", ptr %t65, i32 0, i32 2
  %t68 = load i64, ptr %t67, !tbaa !24
  %t69 = load i64, ptr %l34, !tbaa !24
  %t71 = icmp ne i64 %t69, %t68
  br i1 %t71, label %bb14, label %bb15
bb14:
  store %olang.scope zeroinitializer, ptr %s1
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/check:Checker", ptr %t73, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !29
  %t78 = getelementptr %"compiler/generic:Program", ptr %t76, i32 0, i32 0
  %t79 = load ptr, ptr %t78, !tbaa !29
  %t81 = getelementptr %"compiler/load:Loader", ptr %t79, i32 0, i32 4
  %t82 = load ptr, ptr %t81, !tbaa !29
  store ptr %t82, ptr %l43, !tbaa !29
  %t83 = load { i64, [3 x i64] }, ptr %l4
  store { i64, [3 x i64] } %t83, ptr %l44
  %t84 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t86 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGenByValueAway(ptr %v0, ptr %s1, { i64, ptr } %t84)
  store %"compiler/diagmsg:Msg" %t86, ptr %l46
  br label %bb16
bb15:
  br label %bb21
bb16:
  %t87 = load ptr, ptr %l43, !tbaa !29
  %t88 = load { i64, [3 x i64] }, ptr %l44
  %t89 = load %"compiler/diagmsg:Msg", ptr %l46
  %t90 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s1, ptr %t87, { i64, [3 x i64] } %t88, %"compiler/diagmsg:Msg" %t89)
  store i64 %t90, ptr %l47
  br label %bb17
bb17:
  %t91 = load i64, ptr %l47, !tbaa !24
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/check:Checker", ptr %t92, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !29
  %t97 = getelementptr %"compiler/generic:Program", ptr %t95, i32 0, i32 0
  %t98 = load ptr, ptr %t97, !tbaa !29
  %t100 = getelementptr %"compiler/load:Loader", ptr %t98, i32 0, i32 4
  %t101 = load ptr, ptr %t100, !tbaa !29
  store ptr %t101, ptr %l51, !tbaa !29
  store i64 %t91, ptr %l52, !tbaa !24
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t104 = load %"compiler/source:Span", ptr %l2
  %t107 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %t103, %"compiler/source:Span" %t104)
  store { i64, [3 x i64] } %t107, ptr %l55
  br label %bb18
bb18:
  %t108 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t110 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteGenSlot(ptr %v0, ptr %s1, { i64, ptr } %t108)
  store %"compiler/diagmsg:Msg" %t110, ptr %l57
  br label %bb19
bb19:
  %t111 = load ptr, ptr %l51, !tbaa !29
  %t112 = load i64, ptr %l52, !tbaa !24
  %t113 = load { i64, [3 x i64] }, ptr %l55
  %t114 = load %"compiler/diagmsg:Msg", ptr %l57
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %s1, ptr %t111, i64 %t112, { i64, [3 x i64] } %t113, %"compiler/diagmsg:Msg" %t114)
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb21:
  br i1 true, label %bb22, label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb26
bb25:
  call void @__olang_check_failed(ptr @olang_loc_15eb6f7c806fc73b_bac9f6515206ea7f)
  unreachable
bb26:
  %t115 = load ptr, ptr %l0, !tbaa !29
  store ptr %t115, ptr %l58, !tbaa !29
  %t116 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t116, ptr %l59
  %t117 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t119 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGenByValue(ptr %v0, ptr %s0, { i64, ptr } %t117)
  store %"compiler/diagmsg:Msg" %t119, ptr %l61
  br label %bb27
bb27:
  %t120 = load ptr, ptr %l58, !tbaa !29
  %t121 = load %"compiler/source:Span", ptr %l59
  %t122 = load %"compiler/diagmsg:Msg", ptr %l61
  %t123 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s0, ptr %t120, %"compiler/source:Span" %t121, %"compiler/diagmsg:Msg" %t122)
  store i64 %t123, ptr %l62
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenRoot(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca i64
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca i64
  %l10 = alloca i32
  %l11 = alloca ptr
  %l13 = alloca i32
  %l19 = alloca i64
  %l24 = alloca i32
  %l28 = alloca i32
  %l32 = alloca i1
  %l35 = alloca ptr
  %l40 = alloca i32
  %l41 = alloca { i64, ptr }
  %l49 = alloca { i64, ptr }
  %l50 = alloca %"compiler/typed:Block"
  %l54 = alloca ptr
  %l59 = alloca i32
  %l60 = alloca { i64, ptr }
  %l61 = alloca { i64, ptr }
  %l73 = alloca i32
  %l79 = alloca i64
  %l80 = alloca ptr
  %l81 = alloca %"compiler/source:Span"
  %l84 = alloca i32
  %l88 = alloca ptr
  %l96 = alloca ptr
  %l99 = alloca i64
  %l104 = alloca ptr
  %l105 = alloca %"compiler/source:Span"
  %l106 = alloca %"compiler/source:Span"
  %l107 = alloca i32
  %l112 = alloca ptr
  %l117 = alloca { i64, ptr }
  %l118 = alloca ptr
  %l130 = alloca { i64, ptr }
  %l131 = alloca %"compiler/typed:Block"
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %rv = alloca ptr
  %t130 = alloca { i64, [1 x i64] }, align 8
  %t153 = alloca { i64, [3 x i64] }, align 8
  %t203 = alloca { i64, [3 x i64] }, align 8
  %t245 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/ast:Func", ptr %t1, i32 0, i32 0
  %t4 = load %"compiler/source:Span", ptr %t3
  store %"compiler/source:Span" %t4, ptr %l4
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/check:Checker", ptr %t6, i32 0, i32 37
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l19
  br label %bb1
bb1:
  %t11 = load i64, ptr %l19, !tbaa !24
  store i64 %t11, ptr %l5, !tbaa !24
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/check:Checker", ptr %t12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = getelementptr %"compiler/generic:Program", ptr %t15, i32 0, i32 2
  %t21 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t17, i32 %a2)
  store i32 %t21, ptr %l24
  br label %bb2
bb2:
  %t22 = load i32, ptr %l24, !tbaa !23
  store i32 %t22, ptr %l6, !tbaa !23
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/check:Checker", ptr %t23, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t27 = load i32, ptr %l6, !tbaa !23
  %t30 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorSig(ptr %v0, ptr %t26, i32 %t27)
  store i32 %t30, ptr %l28
  br label %bb3
bb3:
  %t31 = load i32, ptr %l28, !tbaa !23
  store i32 %t31, ptr %l7, !tbaa !23
  %t32 = load i32, ptr %l7, !tbaa !23
  %t33 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t36 = icmp eq i32 %t32, %t33
  br i1 %t36, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l32, !tbaa !21
  br label %bb8
bb5:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/check:Checker", ptr %t38, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t43 = getelementptr %"compiler/generic:Program", ptr %t41, i32 0, i32 2
  store ptr %t43, ptr %l35, !tbaa !29
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/check:Checker", ptr %t44, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !29
  %t49 = getelementptr %"compiler/generic:Program", ptr %t47, i32 0, i32 2
  %t50 = load i32, ptr %l7, !tbaa !23
  %t53 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t49, i32 %t50)
  store i32 %t53, ptr %l40
  br label %bb6
bb6:
  %t54 = load ptr, ptr %l35, !tbaa !29
  %t55 = load i32, ptr %l40, !tbaa !23
  %t56 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t54, i32 %t55)
  store { i64, ptr } %t56, ptr %l41
  br label %bb7
bb7:
  %t57 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t58 = extractvalue { i64, ptr } %t57, 0
  %t60 = icmp ne i64 %t58, 1
  store i1 %t60, ptr %l32, !tbaa !21
  br label %bb8
bb8:
  %t62 = load i1, ptr %l32, !tbaa !21
  br i1 %t62, label %bb9, label %bb10
bb9:
  store %olang.scope zeroinitializer, ptr %s1
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t64 = load %"compiler/source:Span", ptr %l4
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %s1, ptr %t63, %"compiler/source:Span" %t64, { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d14, i32 0, i32 1) })
  br label %bb11
bb10:
  br label %bb14
bb11:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/check:Checker", ptr %t67, i32 0, i32 37
  %t70 = load i64, ptr %l5, !tbaa !24
  %t73 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t69, i64 %t70)
  store { i64, ptr } %t73, ptr %l49
  br label %bb12
bb12:
  %t74 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t75 = call %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v0, ptr %v2, i32 0, { i64, ptr } %t74)
  store %"compiler/typed:Block" %t75, ptr %l50
  br label %bb13
bb13:
  %t76 = load %"compiler/typed:Block", ptr %l50
  %t77 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 24, i64 8)
  store %"compiler/typed:Block" %t76, ptr %t77
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t77, ptr %rv
  br label %ret
bb14:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/check:Checker", ptr %t79, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !29
  %t84 = getelementptr %"compiler/generic:Program", ptr %t82, i32 0, i32 2
  store ptr %t84, ptr %l54, !tbaa !29
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/check:Checker", ptr %t85, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !29
  %t90 = getelementptr %"compiler/generic:Program", ptr %t88, i32 0, i32 2
  %t91 = load i32, ptr %l7, !tbaa !23
  %t94 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t90, i32 %t91)
  store i32 %t94, ptr %l59
  br label %bb15
bb15:
  %t95 = load ptr, ptr %l54, !tbaa !29
  %t96 = load i32, ptr %l59, !tbaa !23
  %t97 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t95, i32 %t96)
  store { i64, ptr } %t97, ptr %l60
  br label %bb16
bb16:
  %t98 = load { i64, ptr }, ptr %l60, !tbaa !27
  store { i64, ptr } %t98, ptr %l61, !tbaa !27
  %t99 = getelementptr { i64, ptr }, ptr %l61, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !27
  %t101 = getelementptr i32, ptr %t100, i64 0
  %t102 = load i32, ptr %t101, !tbaa !33
  store i32 %t102, ptr %l8, !tbaa !23
  store i64 -1, ptr %l9, !tbaa !24
  %t104 = load i64, ptr %l3, !tbaa !24
  %t105 = load i64, ptr @G_2ecompiler_2fgeneric_2eGenFromReturn, !tbaa !24
  %t108 = icmp eq i64 %t104, %t105
  br i1 %t108, label %bb17, label %bb18
bb17:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/check:Checker", ptr %t110, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !29
  %t115 = getelementptr %"compiler/generic:Program", ptr %t113, i32 0, i32 2
  %t116 = load i32, ptr %l6, !tbaa !23
  %t117 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t118 = load i64, ptr @G_2ecompiler_2ftypes_2eNullable, !tbaa !24
  %t121 = or i64 %t117, %t118
  %t125 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t115, i32 %t116, i64 %t121)
  store i32 %t125, ptr %l73
  br label %bb19
bb18:
  br label %bb23
bb19:
  %t126 = load i32, ptr %l73, !tbaa !23
  store i32 %t126, ptr %l10, !tbaa !23
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t128 = load %"compiler/source:Span", ptr %l4
  %t129 = load i32, ptr %l10, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t130
  %t131 = getelementptr { i64, [1 x i64] }, ptr %t130, i32 0, i32 0
  store i64 3, ptr %t131
  %t132 = load { i64, [1 x i64] }, ptr %t130
  %t138 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocal(ptr %v0, ptr %t127, i32 0, %"compiler/source:Span" %t128, i32 %t129, i32 3, { i64, [1 x i64] } %t132)
  store i64 %t138, ptr %l79
  br label %bb20
bb20:
  %t139 = load i64, ptr %l79, !tbaa !24
  store i64 %t139, ptr %l9, !tbaa !24
  %t140 = load ptr, ptr %l0, !tbaa !29
  store ptr %t140, ptr %l80, !tbaa !29
  %t141 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t141, ptr %l81
  %t142 = load i64, ptr %l9, !tbaa !24
  %t144 = trunc i64 %t142 to i32
  store i32 %t144, ptr %l84, !tbaa !23
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t147 = load %"compiler/source:Span", ptr %l4
  %t148 = load i32, ptr %l10, !tbaa !23
  %t152 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t146, %"compiler/source:Span" %t147, i32 %t148, i64 0)
  store ptr %t152, ptr %l88
  br label %bb21
bb21:
  store { i64, [3 x i64] } zeroinitializer, ptr %t153
  %t154 = getelementptr { i64, [3 x i64] }, ptr %t153, i32 0, i32 0
  store i64 0, ptr %t154
  %t155 = load %"compiler/source:Span", ptr %l81
  %t156 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t155, 0
  %t157 = load i32, ptr %l84, !tbaa !23
  %t158 = insertvalue { %"compiler/source:Span", i32, ptr } %t156, i32 %t157, 1
  %t159 = load ptr, ptr %l88, !tbaa !29
  %t160 = insertvalue { %"compiler/source:Span", i32, ptr } %t158, ptr %t159, 2
  %t161 = getelementptr { i64, [3 x i64] }, ptr %t153, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t160, ptr %t161
  %t162 = load { i64, [3 x i64] }, ptr %t153
  %t164 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t162, ptr %t164
  %t165 = load ptr, ptr %l80, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t165, ptr %t164)
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t168 = load ptr, ptr %l1, !tbaa !29
  %t169 = load i32, ptr %l8, !tbaa !23
  %t170 = load i64, ptr %l3, !tbaa !24
  %t171 = load i64, ptr %l9, !tbaa !24
  %t177 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenLambda(ptr %v0, ptr %v1, ptr %v2, ptr %t167, ptr %t168, i32 %t169, i64 %t170, i64 %t171)
  store ptr %t177, ptr %l96
  br label %bb24
bb24:
  %t178 = load ptr, ptr %l96, !tbaa !29
  store ptr %t178, ptr %l11, !tbaa !29
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t180 = load i32, ptr %l6, !tbaa !23
  %t183 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorBody(ptr %v0, ptr %t179, i32 %t180)
  store i64 %t183, ptr %l99
  br label %bb25
bb25:
  %t184 = load i64, ptr %l99, !tbaa !24
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t187 = getelementptr %"compiler/check:Checker", ptr %t185, i32 0, i32 23
  %t188 = load i32, ptr %t187, !tbaa !23
  store i32 %t188, ptr %l13, !tbaa !23
  %t190 = load ptr, ptr %l0, !tbaa !29
  %t191 = load i32, ptr %l6, !tbaa !23
  %t194 = getelementptr %"compiler/check:Checker", ptr %t190, i32 0, i32 23
  store i32 %t191, ptr %t194, !tbaa !23
  %t195 = load ptr, ptr %l0, !tbaa !29
  store ptr %t195, ptr %l104, !tbaa !29
  %t196 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t196, ptr %l105
  %t197 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t197, ptr %l106
  %t198 = load i32, ptr %l7, !tbaa !23
  store i32 %t198, ptr %l107, !tbaa !23
  %t201 = trunc i64 %t184 to i32
  store { i64, [3 x i64] } zeroinitializer, ptr %t203
  %t204 = getelementptr { i64, [3 x i64] }, ptr %t203, i32 0, i32 0
  store i64 0, ptr %t204
  %t206 = insertvalue { i32 } undef, i32 %t201, 0
  %t207 = getelementptr { i64, [3 x i64] }, ptr %t203, i32 0, i32 1
  store { i32 } %t206, ptr %t207
  %t208 = load { i64, [3 x i64] }, ptr %t203
  %t210 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store { i64, [3 x i64] } %t208, ptr %t210
  store ptr %t210, ptr %l112, !tbaa !29
  %t211 = icmp sge i64 0, 0
  br i1 %t211, label %bb26, label %bb27
bb26:
  %t213 = icmp sle i64 0, 1152921504606846975
  br i1 %t213, label %bb28, label %bb29
bb27:
  call void @__olang_check_failed(ptr @olang_loc_8107208a4245ff9c_ccbe9a9f570baf38)
  unreachable
bb28:
  %t215 = mul i64 0, 8
  %t216 = insertvalue { i64, ptr } undef, i64 0, 0
  %t217 = insertvalue { i64, ptr } %t216, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t218 = load ptr, ptr %l11, !tbaa !29
  %t219 = mul i64 1, 8
  %t220 = call ptr @__olang_scope_alloc_zeroed(ptr %v0, i64 %t219)
  %t221 = insertvalue { i64, ptr } undef, i64 1, 0
  %t222 = insertvalue { i64, ptr } %t221, ptr %t220, 1
  store { i64, ptr } %t222, ptr %l117, !tbaa !27
  %t224 = getelementptr { i64, ptr }, ptr %l117, i32 0, i32 1
  %t225 = load ptr, ptr %t224, !tbaa !27
  %t226 = getelementptr ptr, ptr %t225, i64 0
  store ptr %t218, ptr %t226, !tbaa !39
  %t227 = load ptr, ptr %l104, !tbaa !29
  %t228 = load %"compiler/source:Span", ptr %l105
  %t229 = load %"compiler/source:Span", ptr %l106
  %t230 = load i32, ptr %l107, !tbaa !23
  %t231 = load ptr, ptr %l112, !tbaa !29
  %t233 = load { i64, ptr }, ptr %l117, !tbaa !27
  %t234 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallBody(ptr %v0, ptr %v2, ptr %v0, ptr %v0, ptr %v0, ptr %v2, ptr %t227, %"compiler/source:Span" %t228, %"compiler/source:Span" %t229, i32 %t230, ptr %t231, i64 -1, ptr null, { i64, ptr } %t217, { i64, ptr } %t233)
  store ptr %t234, ptr %l118
  br label %bb30
bb29:
  call void @__olang_check_failed(ptr @olang_loc_8107208a4245ff9c_ccbe9a9f570baf38)
  unreachable
bb30:
  %t235 = load ptr, ptr %l118, !tbaa !29
  %t236 = load ptr, ptr %l0, !tbaa !29
  %t237 = load i32, ptr %l13, !tbaa !23
  %t240 = getelementptr %"compiler/check:Checker", ptr %t236, i32 0, i32 23
  store i32 %t237, ptr %t240, !tbaa !23
  %t241 = load ptr, ptr %l0, !tbaa !29
  %t242 = load %"compiler/source:Span", ptr %l4
  store { i64, [3 x i64] } zeroinitializer, ptr %t245
  %t246 = getelementptr { i64, [3 x i64] }, ptr %t245, i32 0, i32 0
  store i64 6, ptr %t246
  %t248 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t242, 0
  %t250 = insertvalue { %"compiler/source:Span", ptr } %t248, ptr %t235, 1
  %t251 = getelementptr { i64, [3 x i64] }, ptr %t245, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t250, ptr %t251
  %t252 = load { i64, [3 x i64] }, ptr %t245
  %t254 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t252, ptr %t254
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t241, ptr %t254)
  br label %bb31
bb31:
  %t257 = load ptr, ptr %l0, !tbaa !29
  %t259 = getelementptr %"compiler/check:Checker", ptr %t257, i32 0, i32 37
  %t260 = load i64, ptr %l5, !tbaa !24
  %t263 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t259, i64 %t260)
  store { i64, ptr } %t263, ptr %l130
  br label %bb32
bb32:
  %t264 = load { i64, ptr }, ptr %l130, !tbaa !27
  %t265 = call %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v0, ptr %v2, i32 0, { i64, ptr } %t264)
  store %"compiler/typed:Block" %t265, ptr %l131
  br label %bb33
bb33:
  %t266 = load %"compiler/typed:Block", ptr %l131
  %t267 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 24, i64 8)
  store %"compiler/typed:Block" %t266, ptr %t267
  call void @__olang_scope_close(ptr %s0)
  store ptr %t267, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsHandle(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca i32
  %l17 = alloca i32
  %l22 = alloca i32
  %l25 = alloca ptr
  %l30 = alloca i32
  %l33 = alloca i1
  %l38 = alloca ptr
  %l43 = alloca i32
  %l45 = alloca i1
  %l53 = alloca i1
  %l60 = alloca i32
  %l61 = alloca ptr
  %l66 = alloca i32
  %l67 = alloca { i64, ptr }
  %l72 = alloca i64
  %l75 = alloca i1
  %l76 = alloca i64
  %l81 = alloca i64
  %l88 = alloca ptr
  %l96 = alloca ptr
  %l99 = alloca i1
  %l101 = alloca i1
  %l102 = alloca i1
  %l104 = alloca i1
  %l105 = alloca i1
  %l107 = alloca i1
  %l110 = alloca i1
  %l111 = alloca i1
  %l113 = alloca i1
  %l114 = alloca i1
  %l116 = alloca i1
  %l117 = alloca i1
  %l119 = alloca i1
  %l122 = alloca i1
  %l123 = alloca i1
  %l125 = alloca i1
  %l131 = alloca i32
  %l132 = alloca i1
  %l135 = alloca ptr
  %l140 = alloca i32
  %l142 = alloca i1
  %l145 = alloca ptr
  %l150 = alloca i32
  %l152 = alloca i1
  %l155 = alloca ptr
  %l160 = alloca i32
  %l163 = alloca i1
  %s7 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = icmp sgt i64 %t1, 12
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
  %t15 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t11, i32 %a1)
  store i32 %t15, ptr %l17
  br label %bb4
bb4:
  %t16 = load i32, ptr %l17, !tbaa !23
  store i32 %t16, ptr %l3, !tbaa !23
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/check:Checker", ptr %t17, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !29
  %t22 = getelementptr %"compiler/generic:Program", ptr %t20, i32 0, i32 2
  %t23 = load i32, ptr %l3, !tbaa !23
  %t26 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t22, i32 %t23)
  store i32 %t26, ptr %l22
  br label %bb5
bb5:
  %t27 = load i32, ptr %l22, !range !{i32 0, i32 33}
  store i32 %t27, ptr %l4
  %t28 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t30 = trunc i64 19 to i32
  %t31 = icmp eq i32 %t28, %t30
  br i1 %t31, label %bb6, label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb11
bb8:
  %t33 = load ptr, ptr %l0, !tbaa !29
  store ptr %t33, ptr %l25, !tbaa !29
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/check:Checker", ptr %t34, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t39 = getelementptr %"compiler/generic:Program", ptr %t37, i32 0, i32 2
  %t40 = load i32, ptr %l3, !tbaa !23
  %t43 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t39, i32 %t40)
  store i32 %t43, ptr %l30
  br label %bb9
bb9:
  %t44 = load i64, ptr %l2, !tbaa !24
  %t46 = add i64 %t44, 1
  %t47 = load ptr, ptr %l25, !tbaa !29
  %t48 = load i32, ptr %l30, !tbaa !23
  %t50 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsHandle(ptr %v0, ptr %t47, i32 %t48, i64 %t46)
  store i1 %t50, ptr %l33
  br label %bb10
bb10:
  %t51 = load i1, ptr %l33, !tbaa !21
  store i1 %t51, ptr %rv
  br label %ret
bb11:
  %t52 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t54 = trunc i64 22 to i32
  %t55 = icmp eq i32 %t52, %t54
  br i1 %t55, label %bb12, label %bb13
bb12:
  br label %bb16
bb13:
  %t57 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t59 = trunc i64 23 to i32
  %t60 = icmp eq i32 %t57, %t59
  br i1 %t60, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb19
bb16:
  %t62 = load ptr, ptr %l0, !tbaa !29
  store ptr %t62, ptr %l38, !tbaa !29
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/check:Checker", ptr %t63, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t68 = getelementptr %"compiler/generic:Program", ptr %t66, i32 0, i32 2
  %t69 = load i32, ptr %l3, !tbaa !23
  %t72 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t68, i32 %t69)
  store i32 %t72, ptr %l43
  br label %bb17
bb17:
  %t73 = load i64, ptr %l2, !tbaa !24
  %t74 = load ptr, ptr %l38, !tbaa !29
  %t75 = load i32, ptr %l43, !tbaa !23
  %t77 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eanyHandle(ptr %v0, ptr %t74, i32 %t75, i64 %t73)
  store i1 %t77, ptr %l45
  br label %bb18
bb18:
  %t78 = load i1, ptr %l45, !tbaa !21
  store i1 %t78, ptr %rv
  br label %ret
bb19:
  %t79 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t81 = trunc i64 18 to i32
  %t82 = icmp eq i32 %t79, %t81
  br i1 %t82, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb28
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
  call void @__olang_check_failed(ptr @olang_loc_968c62dd2cdb7cc9_e4aa23f03d53ae95)
  unreachable
bb28:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/check:Checker", ptr %t85, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !29
  %t90 = getelementptr %"compiler/generic:Program", ptr %t88, i32 0, i32 2
  %t91 = load i32, ptr %l3, !tbaa !23
  %t94 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %t90, i32 %t91)
  store i1 %t94, ptr %l53
  br label %bb29
bb29:
  %t95 = load i1, ptr %l53, !tbaa !21
  %t96 = xor i1 %t95, true
  br i1 %t96, label %bb30, label %bb31
bb30:
  store i1 false, ptr %rv
  br label %ret
bb31:
  br label %bb32
bb32:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/check:Checker", ptr %t99, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !29
  %t104 = getelementptr %"compiler/generic:Program", ptr %t102, i32 0, i32 2
  %t105 = load i32, ptr %l3, !tbaa !23
  %t108 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t104, i32 %t105)
  store i32 %t108, ptr %l60
  br label %bb33
bb33:
  %t109 = load i32, ptr %l60, !tbaa !23
  store i32 %t109, ptr %l5, !tbaa !23
  %t110 = load ptr, ptr %l0, !tbaa !29
  store ptr %t110, ptr %l61, !tbaa !29
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/check:Checker", ptr %t111, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !29
  %t116 = getelementptr %"compiler/generic:Program", ptr %t114, i32 0, i32 2
  %t117 = load i32, ptr %l5, !tbaa !23
  %t120 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t116, i32 %t117)
  store i32 %t120, ptr %l66
  br label %bb34
bb34:
  %t121 = load ptr, ptr %l61, !tbaa !29
  %t122 = load i32, ptr %l66, !tbaa !23
  %t123 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t121, i32 %t122)
  store { i64, ptr } %t123, ptr %l67
  br label %bb35
bb35:
  %t124 = load { i64, ptr }, ptr %l67, !tbaa !27
  store { i64, ptr } %t124, ptr %l6, !tbaa !27
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = getelementptr %"compiler/check:Checker", ptr %t125, i32 0, i32 1
  %t128 = load ptr, ptr %t127, !tbaa !29
  %t130 = getelementptr %"compiler/generic:Program", ptr %t128, i32 0, i32 2
  %t131 = load i32, ptr %l5, !tbaa !23
  %t134 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t130, i32 %t131)
  store i64 %t134, ptr %l72
  br label %bb36
bb36:
  %t135 = load i64, ptr %l72, !tbaa !24
  store i64 %t135, ptr %l7, !tbaa !24
  %t136 = load i64, ptr %l7, !tbaa !24
  %t138 = icmp sge i64 %t136, 0
  br i1 %t138, label %bb37, label %bb38
bb37:
  %t140 = load i64, ptr %l7, !tbaa !24
  store i64 %t140, ptr %l76, !tbaa !24
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t143 = getelementptr %"compiler/check:Checker", ptr %t141, i32 0, i32 1
  %t144 = load ptr, ptr %t143, !tbaa !29
  %t146 = getelementptr %"compiler/generic:Program", ptr %t144, i32 0, i32 0
  %t147 = load ptr, ptr %t146, !tbaa !29
  %t149 = getelementptr %"compiler/load:Loader", ptr %t147, i32 0, i32 10
  %t151 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t149)
  store i64 %t151, ptr %l81
  br label %bb39
bb38:
  store i1 false, ptr %l75, !tbaa !21
  br label %bb40
bb39:
  %t152 = load i64, ptr %l76, !tbaa !24
  %t153 = load i64, ptr %l81, !tbaa !24
  %t154 = icmp slt i64 %t152, %t153
  store i1 %t154, ptr %l75, !tbaa !21
  br label %bb40
bb40:
  %t156 = load i1, ptr %l75, !tbaa !21
  br i1 %t156, label %bb41, label %bb42
bb41:
  store %olang.scope zeroinitializer, ptr %s7
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t159 = getelementptr %"compiler/check:Checker", ptr %t157, i32 0, i32 1
  %t160 = load ptr, ptr %t159, !tbaa !29
  %t162 = getelementptr %"compiler/generic:Program", ptr %t160, i32 0, i32 0
  %t163 = load ptr, ptr %t162, !tbaa !29
  %t165 = getelementptr %"compiler/load:Loader", ptr %t163, i32 0, i32 10
  %t166 = load i64, ptr %l7, !tbaa !24
  %t169 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t165, i64 %t166)
  store ptr %t169, ptr %l88
  br label %bb43
bb42:
  br label %bb84
bb43:
  %t170 = load ptr, ptr %l88, !tbaa !29
  %t172 = getelementptr %"compiler/load:Module", ptr %t170, i32 0, i32 2
  %t173 = load { i64, ptr }, ptr %t172, !tbaa !27
  store { i64, ptr } %t173, ptr %l8, !tbaa !27
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t177 = getelementptr %"compiler/check:Checker", ptr %t175, i32 0, i32 1
  %t178 = load ptr, ptr %t177, !tbaa !29
  %t180 = getelementptr %"compiler/generic:Program", ptr %t178, i32 0, i32 0
  %t181 = load ptr, ptr %t180, !tbaa !29
  %t183 = getelementptr %"compiler/load:Loader", ptr %t181, i32 0, i32 10
  %t184 = load i64, ptr %l7, !tbaa !24
  %t187 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t183, i64 %t184)
  store ptr %t187, ptr %l96
  br label %bb44
bb44:
  %t188 = load ptr, ptr %l96, !tbaa !29
  %t190 = getelementptr %"compiler/load:Module", ptr %t188, i32 0, i32 3
  %t191 = load i1, ptr %t190, !tbaa !21
  br i1 %t191, label %bb45, label %bb46
bb45:
  %t193 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t195 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s7, { i64, ptr } %t193, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d15, i32 0, i32 1) })
  store i1 %t195, ptr %l101
  br label %bb47
bb46:
  store i1 false, ptr %l99, !tbaa !21
  br label %bb56
bb47:
  %t196 = load i1, ptr %l101, !tbaa !21
  br i1 %t196, label %bb48, label %bb49
bb48:
  store i1 true, ptr %l102, !tbaa !21
  br label %bb51
bb49:
  %t197 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t199 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s7, { i64, ptr } %t197, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d16, i32 0, i32 1) })
  store i1 %t199, ptr %l104
  br label %bb50
bb50:
  %t200 = load i1, ptr %l104, !tbaa !21
  store i1 %t200, ptr %l102, !tbaa !21
  br label %bb51
bb51:
  %t201 = load i1, ptr %l102, !tbaa !21
  br i1 %t201, label %bb52, label %bb53
bb52:
  store i1 true, ptr %l105, !tbaa !21
  br label %bb55
bb53:
  %t202 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t204 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s7, { i64, ptr } %t202, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d17, i32 0, i32 1) })
  store i1 %t204, ptr %l107
  br label %bb54
bb54:
  %t205 = load i1, ptr %l107, !tbaa !21
  store i1 %t205, ptr %l105, !tbaa !21
  br label %bb55
bb55:
  %t206 = load i1, ptr %l105, !tbaa !21
  store i1 %t206, ptr %l99, !tbaa !21
  br label %bb56
bb56:
  %t207 = load i1, ptr %l99, !tbaa !21
  br i1 %t207, label %bb57, label %bb58
bb57:
  call void @__olang_scope_close(ptr %s7)
  store i1 true, ptr %rv
  br label %ret
bb58:
  br label %bb59
bb59:
  %t209 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t211 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %s7, { i64, ptr } %t209, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d18, i32 0, i32 1) })
  store i1 %t211, ptr %l110
  br label %bb60
bb60:
  %t212 = load i1, ptr %l110, !tbaa !21
  br i1 %t212, label %bb61, label %bb62
bb61:
  %t213 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t215 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s7, { i64, ptr } %t213, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d19, i32 0, i32 1) })
  store i1 %t215, ptr %l113
  br label %bb63
bb62:
  store i1 false, ptr %l111, !tbaa !21
  br label %bb64
bb63:
  %t216 = load i1, ptr %l113, !tbaa !21
  store i1 %t216, ptr %l111, !tbaa !21
  br label %bb64
bb64:
  %t217 = load i1, ptr %l111, !tbaa !21
  br i1 %t217, label %bb65, label %bb66
bb65:
  store i1 true, ptr %l114, !tbaa !21
  br label %bb72
bb66:
  %t218 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t220 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %s7, { i64, ptr } %t218, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d20, i32 0, i32 1) })
  store i1 %t220, ptr %l116
  br label %bb67
bb67:
  %t221 = load i1, ptr %l116, !tbaa !21
  br i1 %t221, label %bb68, label %bb69
bb68:
  %t222 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t224 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s7, { i64, ptr } %t222, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d21, i32 0, i32 1) })
  store i1 %t224, ptr %l119
  br label %bb70
bb69:
  store i1 false, ptr %l117, !tbaa !21
  br label %bb71
bb70:
  %t225 = load i1, ptr %l119, !tbaa !21
  store i1 %t225, ptr %l117, !tbaa !21
  br label %bb71
bb71:
  %t226 = load i1, ptr %l117, !tbaa !21
  store i1 %t226, ptr %l114, !tbaa !21
  br label %bb72
bb72:
  %t227 = load i1, ptr %l114, !tbaa !21
  br i1 %t227, label %bb73, label %bb74
bb73:
  call void @__olang_scope_close(ptr %s7)
  store i1 true, ptr %rv
  br label %ret
bb74:
  br label %bb75
bb75:
  %t229 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t231 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %s7, { i64, ptr } %t229, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d22, i32 0, i32 1) })
  store i1 %t231, ptr %l122
  br label %bb76
bb76:
  %t232 = load i1, ptr %l122, !tbaa !21
  br i1 %t232, label %bb77, label %bb78
bb77:
  %t233 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t235 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s7, { i64, ptr } %t233, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d23, i32 0, i32 1) })
  store i1 %t235, ptr %l125
  br label %bb79
bb78:
  store i1 false, ptr %l123, !tbaa !21
  br label %bb80
bb79:
  %t236 = load i1, ptr %l125, !tbaa !21
  store i1 %t236, ptr %l123, !tbaa !21
  br label %bb80
bb80:
  %t237 = load i1, ptr %l123, !tbaa !21
  br i1 %t237, label %bb81, label %bb82
bb81:
  call void @__olang_scope_close(ptr %s7)
  store i1 true, ptr %rv
  br label %ret
bb82:
  br label %bb83
bb83:
  call void @__olang_scope_close(ptr %s7)
  br label %bb84
bb84:
  %t239 = load ptr, ptr %l0, !tbaa !29
  %t241 = getelementptr %"compiler/check:Checker", ptr %t239, i32 0, i32 1
  %t242 = load ptr, ptr %t241, !tbaa !29
  %t244 = getelementptr %"compiler/generic:Program", ptr %t242, i32 0, i32 2
  %t245 = load i32, ptr %l5, !tbaa !23
  %t248 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t244, i32 %t245)
  store i32 %t248, ptr %l131
  br label %bb85
bb85:
  %t249 = load i32, ptr %l131, !range !{i32 0, i32 6}
  store i32 %t249, ptr %l9
  %t250 = load i32, ptr %l9, !range !{i32 0, i32 6}
  %t252 = trunc i64 0 to i32
  %t253 = icmp eq i32 %t250, %t252
  br i1 %t253, label %bb86, label %bb87
bb86:
  br label %bb88
bb87:
  br label %bb91
bb88:
  %t255 = load ptr, ptr %l0, !tbaa !29
  store ptr %t255, ptr %l135, !tbaa !29
  %t256 = load ptr, ptr %l0, !tbaa !29
  %t258 = getelementptr %"compiler/check:Checker", ptr %t256, i32 0, i32 1
  %t259 = load ptr, ptr %t258, !tbaa !29
  %t261 = getelementptr %"compiler/generic:Program", ptr %t259, i32 0, i32 2
  %t262 = load i32, ptr %l3, !tbaa !23
  %t265 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t261, i32 %t262)
  store i32 %t265, ptr %l140
  br label %bb89
bb89:
  %t266 = load i64, ptr %l2, !tbaa !24
  %t267 = load ptr, ptr %l135, !tbaa !29
  %t268 = load i32, ptr %l140, !tbaa !23
  %t270 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eanyHandle(ptr %v0, ptr %t267, i32 %t268, i64 %t266)
  store i1 %t270, ptr %l142
  br label %bb90
bb90:
  %t271 = load i1, ptr %l142, !tbaa !21
  store i1 %t271, ptr %l132, !tbaa !21
  br label %bb108
bb91:
  %t272 = load i32, ptr %l9, !range !{i32 0, i32 6}
  %t274 = trunc i64 1 to i32
  %t275 = icmp eq i32 %t272, %t274
  br i1 %t275, label %bb92, label %bb93
bb92:
  br label %bb94
bb93:
  br label %bb97
bb94:
  %t277 = load ptr, ptr %l0, !tbaa !29
  store ptr %t277, ptr %l145, !tbaa !29
  %t278 = load ptr, ptr %l0, !tbaa !29
  %t280 = getelementptr %"compiler/check:Checker", ptr %t278, i32 0, i32 1
  %t281 = load ptr, ptr %t280, !tbaa !29
  %t283 = getelementptr %"compiler/generic:Program", ptr %t281, i32 0, i32 2
  %t284 = load i32, ptr %l3, !tbaa !23
  %t287 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t283, i32 %t284)
  store i32 %t287, ptr %l150
  br label %bb95
bb95:
  %t288 = load i64, ptr %l2, !tbaa !24
  %t289 = load ptr, ptr %l145, !tbaa !29
  %t290 = load i32, ptr %l150, !tbaa !23
  %t292 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eanyHandle(ptr %v0, ptr %t289, i32 %t290, i64 %t288)
  store i1 %t292, ptr %l152
  br label %bb96
bb96:
  %t293 = load i1, ptr %l152, !tbaa !21
  store i1 %t293, ptr %l132, !tbaa !21
  br label %bb108
bb97:
  %t294 = load i32, ptr %l9, !range !{i32 0, i32 6}
  %t296 = trunc i64 4 to i32
  %t297 = icmp eq i32 %t294, %t296
  br i1 %t297, label %bb98, label %bb99
bb98:
  br label %bb100
bb99:
  br label %bb103
bb100:
  %t299 = load ptr, ptr %l0, !tbaa !29
  store ptr %t299, ptr %l155, !tbaa !29
  %t300 = load ptr, ptr %l0, !tbaa !29
  %t302 = getelementptr %"compiler/check:Checker", ptr %t300, i32 0, i32 1
  %t303 = load ptr, ptr %t302, !tbaa !29
  %t305 = getelementptr %"compiler/generic:Program", ptr %t303, i32 0, i32 2
  %t306 = load i32, ptr %l3, !tbaa !23
  %t309 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t305, i32 %t306)
  store i32 %t309, ptr %l160
  br label %bb101
bb101:
  %t310 = load i64, ptr %l2, !tbaa !24
  %t312 = add i64 %t310, 1
  %t313 = load ptr, ptr %l155, !tbaa !29
  %t314 = load i32, ptr %l160, !tbaa !23
  %t316 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsHandle(ptr %v0, ptr %t313, i32 %t314, i64 %t312)
  store i1 %t316, ptr %l163
  br label %bb102
bb102:
  %t317 = load i1, ptr %l163, !tbaa !21
  store i1 %t317, ptr %l132, !tbaa !21
  br label %bb108
bb103:
  br i1 true, label %bb104, label %bb105
bb104:
  br label %bb106
bb105:
  br label %bb107
bb106:
  store i1 false, ptr %l132, !tbaa !21
  br label %bb108
bb107:
  call void @__olang_check_failed(ptr @olang_loc_9c0e2310e04cd1f8_9ba0cca7b5a93fa4)
  unreachable
bb108:
  %t318 = load i1, ptr %l132, !tbaa !21
  store i1 %t318, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLike(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l8 = alloca %"compiler/check:litv"
  %l11 = alloca ptr
  %l12 = alloca i1
  %l19 = alloca i1
  %l20 = alloca ptr
  %l21 = alloca i1
  %l30 = alloca i1
  %l31 = alloca i1
  %l34 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t6 = call %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  store %"compiler/check:litv" %t6, ptr %l8
  br label %bb1
bb1:
  %t7 = getelementptr %"compiler/check:litv", ptr %l8, i32 0, i32 0
  %t8 = load i1, ptr %t7, !tbaa !21
  br i1 %t8, label %bb2, label %bb3
bb2:
  store i1 true, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t11 = load ptr, ptr %l1, !tbaa !29
  store ptr %t11, ptr %l11, !tbaa !29
  store i1 false, ptr %l12, !tbaa !21
  %t12 = load ptr, ptr %l11, !tbaa !29
  %t13 = icmp ne ptr %t12, null
  br i1 %t13, label %bb5, label %bb6
bb5:
  %t15 = load ptr, ptr %l11, !tbaa !29
  %t16 = load i64, ptr %t15, !range !{i64 0, i64 30}
  %t18 = icmp eq i64 %t16, 2
  store i1 %t18, ptr %l12, !tbaa !21
  br label %bb6
bb6:
  %t19 = load i1, ptr %l12, !tbaa !21
  br i1 %t19, label %bb7, label %bb8
bb7:
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t22 = getelementptr { i64, [4 x i64] }, ptr %t20, i32 0, i32 1
  %t23 = getelementptr { %"compiler/source:Span", ptr }, ptr %t22, i32 0, i32 1
  %t24 = load ptr, ptr %t23
  store ptr %t24, ptr %l2, !tbaa !29
  br label %bb9
bb8:
  br label %bb11
bb9:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load ptr, ptr %l2, !tbaa !29
  %t30 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLike(ptr %v0, ptr %v1, ptr %t26, ptr %t27)
  store i1 %t30, ptr %l19
  br label %bb10
bb10:
  %t31 = load i1, ptr %l19, !tbaa !21
  store i1 %t31, ptr %rv
  br label %ret
bb11:
  %t32 = load ptr, ptr %l1, !tbaa !29
  store ptr %t32, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t33 = load ptr, ptr %l20, !tbaa !29
  %t34 = icmp ne ptr %t33, null
  br i1 %t34, label %bb12, label %bb13
bb12:
  %t36 = load ptr, ptr %l20, !tbaa !29
  %t37 = load i64, ptr %t36, !range !{i64 0, i64 30}
  %t39 = icmp eq i64 %t37, 8
  store i1 %t39, ptr %l21, !tbaa !21
  br label %bb13
bb13:
  %t40 = load i1, ptr %l21, !tbaa !21
  br i1 %t40, label %bb14, label %bb15
bb14:
  %t41 = load ptr, ptr %l1, !tbaa !29
  %t43 = getelementptr { i64, [4 x i64] }, ptr %t41, i32 0, i32 1
  %t44 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t43, i32 0, i32 1
  %t45 = load ptr, ptr %t44
  store ptr %t45, ptr %l3, !tbaa !29
  %t47 = load ptr, ptr %l1, !tbaa !29
  %t49 = getelementptr { i64, [4 x i64] }, ptr %t47, i32 0, i32 1
  %t50 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t49, i32 0, i32 3
  %t51 = load ptr, ptr %t50
  store ptr %t51, ptr %l4, !tbaa !29
  br label %bb16
bb15:
  br label %bb22
bb16:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load ptr, ptr %l3, !tbaa !29
  %t57 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLike(ptr %v0, ptr %v1, ptr %t53, ptr %t54)
  store i1 %t57, ptr %l30
  br label %bb17
bb17:
  %t58 = load i1, ptr %l30, !tbaa !21
  br i1 %t58, label %bb18, label %bb19
bb18:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t60 = load ptr, ptr %l4, !tbaa !29
  %t63 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLike(ptr %v0, ptr %v1, ptr %t59, ptr %t60)
  store i1 %t63, ptr %l34
  br label %bb20
bb19:
  store i1 false, ptr %l31, !tbaa !21
  br label %bb21
bb20:
  %t64 = load i1, ptr %l34, !tbaa !21
  store i1 %t64, ptr %l31, !tbaa !21
  br label %bb21
bb21:
  %t65 = load i1, ptr %l31, !tbaa !21
  store i1 %t65, ptr %rv
  br label %ret
bb22:
  br i1 true, label %bb23, label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb26
bb25:
  store i1 false, ptr %rv
  br label %ret
bb26:
  call void @__olang_check_failed(ptr @olang_loc_c608509fed4a7aab_41eb2a14c072322f)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enewInstance(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"compiler/names:Ref"
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca i1
  %l13 = alloca ptr
  %l15 = alloca ptr
  %l17 = alloca i64
  %l19 = alloca %"compiler/source:Span"
  %l21 = alloca %"compiler/names:Ref"
  %l25 = alloca i1
  %l33 = alloca i32
  %l39 = alloca i1
  %l45 = alloca i32
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 12
  store i1 %t8, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t12, i32 0, i32 1
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb21
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/check:Checker", ptr %t16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t21 = getelementptr %"compiler/generic:Program", ptr %t19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !29
  store ptr %t22, ptr %l13, !tbaa !29
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t23)
  store ptr %t25, ptr %l15
  br label %bb6
bb6:
  %t26 = load ptr, ptr %l15, !tbaa !29
  %t28 = getelementptr %"compiler/check:frame", ptr %t26, i32 0, i32 2
  %t29 = load i64, ptr %t28, !tbaa !24
  store i64 %t29, ptr %l17, !tbaa !24
  %t30 = load ptr, ptr %l2, !tbaa !29
  %t32 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t30)
  store %"compiler/source:Span" %t32, ptr %l19
  br label %bb7
bb7:
  %t33 = getelementptr %"compiler/source:Span", ptr %l19, i32 0, i32 0
  %t34 = load i32, ptr %t33, !tbaa !23
  %t35 = load ptr, ptr %l13, !tbaa !29
  %t36 = load i64, ptr %l17, !tbaa !24
  %t38 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t35, i64 %t36, i32 %t34)
  store %"compiler/names:Ref" %t38, ptr %l21
  br label %bb8
bb8:
  %t39 = load %"compiler/names:Ref", ptr %l21
  store %"compiler/names:Ref" %t39, ptr %l3
  %t40 = getelementptr %"compiler/names:Ref", ptr %l3, i32 0, i32 0
  %t41 = load i32, ptr %t40, !range !{i32 0, i32 9}
  %t43 = trunc i64 4 to i32
  %t44 = icmp eq i32 %t41, %t43
  %t46 = xor i1 %t44, true
  br i1 %t46, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l25, !tbaa !21
  br label %bb11
bb10:
  %t48 = getelementptr %"compiler/names:Ref", ptr %l3, i32 0, i32 2
  %t49 = load i64, ptr %t48, !tbaa !24
  %t51 = icmp slt i64 %t49, 0
  store i1 %t51, ptr %l25, !tbaa !21
  br label %bb11
bb11:
  %t53 = load i1, ptr %l25, !tbaa !21
  br i1 %t53, label %bb12, label %bb13
bb12:
  %t54 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t54, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/check:Checker", ptr %t56, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t60 = getelementptr %"compiler/names:Ref", ptr %l3, i32 0, i32 1
  %t61 = load i64, ptr %t60, !tbaa !24
  %t62 = getelementptr %"compiler/names:Ref", ptr %l3, i32 0, i32 2
  %t63 = load i64, ptr %t62, !tbaa !24
  %t67 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %t59, i64 %t61, i64 %t63)
  store i32 %t67, ptr %l33
  br label %bb15
bb15:
  %t68 = load i32, ptr %l33, !tbaa !23
  store i32 %t68, ptr %l4, !tbaa !23
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/check:Checker", ptr %t69, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !29
  %t74 = getelementptr %"compiler/generic:Program", ptr %t72, i32 0, i32 5
  %t75 = load i32, ptr %l4, !tbaa !23
  %t77 = sext i32 %t75 to i64
  %t80 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_H3993e9d21a27b6abd527556382000d9e(ptr %v0, ptr %t74, i64 %t77)
  store i1 %t80, ptr %l39
  br label %bb16
bb16:
  %t81 = load i1, ptr %l39, !tbaa !21
  %t82 = xor i1 %t81, true
  br i1 %t82, label %bb17, label %bb18
bb17:
  %t84 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t84, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/check:Checker", ptr %t86, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !29
  %t90 = load i32, ptr %l4, !tbaa !23
  %t93 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSelfType(ptr %v0, ptr %t89, i32 %t90)
  store i32 %t93, ptr %l45
  br label %bb20
bb20:
  %t94 = load i32, ptr %l45, !tbaa !23
  store i32 %t94, ptr %rv
  br label %ret
bb21:
  br i1 true, label %bb22, label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb25
bb24:
  %t95 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t95, ptr %rv
  br label %ret
bb25:
  call void @__olang_check_failed(ptr @olang_loc_6728bdcea83aedf6_67611a29005fa232)
  unreachable
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eparamWritten(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l1 = alloca ptr
  %l3 = alloca ptr
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l3, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t4 = getelementptr %"compiler/ast:Param", ptr %t2, i32 0, i32 2
  %t5 = load ptr, ptr %t4, !tbaa !29
  %t7 = icmp eq ptr %t5, null
  br i1 %t7, label %bb1, label %bb2
bb1:
  call void @__olang_check_failed(ptr @olang_loc_70239da7d97117f8_be3796eb66d568d4)
  unreachable
bb2:
  br label %bb3
bb3:
  %t9 = load ptr, ptr %l1, !tbaa !29
  %t11 = getelementptr %"compiler/ast:Param", ptr %t9, i32 0, i32 2
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t14 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emutParam(ptr %v0, ptr %v1, ptr %t14, ptr %t12, i32 %a2)
  br label %bb4
bb4:
  br label %ret
ret:
  ret void
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epayloadItems(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %lp2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l6 = alloca { i64, i32 }
  %l7 = alloca i64
  %l8 = alloca i32
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca ptr
  %l15 = alloca i32
  %l16 = alloca ptr
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l18 = alloca ptr
  %l19 = alloca i1
  %l27 = alloca ptr
  %l33 = alloca { i64, i32 }
  %l40 = alloca ptr
  %l45 = alloca i32
  %l47 = alloca { i64, ptr }
  %l56 = alloca { i64, ptr }
  %l59 = alloca ptr
  %l60 = alloca i1
  %l67 = alloca ptr
  %l70 = alloca %"compiler/check:payloadItem"
  %l75 = alloca ptr
  %l76 = alloca { i64, ptr }
  %l81 = alloca %"compiler/check:payloadItem"
  %s1 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3apayloadItem_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l17
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t2, ptr %lp2
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  %t4 = load ptr, ptr %lp2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  %t5 = load ptr, ptr %l1, !tbaa !29
  store ptr %t5, ptr %l18, !tbaa !29
  store i1 false, ptr %l19, !tbaa !21
  %t6 = load ptr, ptr %l18, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load ptr, ptr %l18, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 9}
  %t12 = icmp eq i64 %t10, 2
  store i1 %t12, ptr %l19, !tbaa !21
  br label %bb3
bb3:
  %t13 = load i1, ptr %l19, !tbaa !21
  br i1 %t13, label %bb4, label %bb5
bb4:
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t16 = getelementptr { i64, [4 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t16, i32 0, i32 1
  %t18 = load ptr, ptr %t17
  store ptr %t18, ptr %l3, !tbaa !29
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t22 = getelementptr { i64, [4 x i64] }, ptr %t20, i32 0, i32 1
  %t23 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t22, i32 0, i32 2
  %t24 = load { i64, ptr }, ptr %t23
  store { i64, ptr } %t24, ptr %l4, !tbaa !27
  br label %bb6
bb5:
  br label %bb41
bb6:
  store %olang.scope zeroinitializer, ptr %s1
  %t26 = load ptr, ptr %l3, !tbaa !29
  %t28 = call ptr @compiler_2fcheck_2eexprPath(ptr %v1, ptr %s1, ptr %t26)
  store ptr %t28, ptr %l27
  br label %bb7
bb7:
  %t29 = load ptr, ptr %l27, !tbaa !29
  store ptr %t29, ptr %l5, !tbaa !29
  %t30 = load ptr, ptr %l5, !tbaa !29
  %t32 = icmp eq ptr %t30, null
  br i1 %t32, label %bb8, label %bb9
bb8:
  %t34 = load ptr, ptr %lp2
  %t35 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t34
  call void @__olang_scope_close(ptr %s1)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t35, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load ptr, ptr %l5, !tbaa !29
  %t41 = call { i64, i32 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrorWord(ptr %v0, ptr %s1, ptr %t37, ptr %t38)
  store { i64, i32 } %t41, ptr %l33
  br label %bb11
bb11:
  %t42 = load { i64, i32 }, ptr %l33
  store { i64, i32 } %t42, ptr %l6
  %t43 = getelementptr { i64, i32 }, ptr %l6, i32 0, i32 0
  %t44 = load i64, ptr %t43, !tbaa !24
  store i64 %t44, ptr %l7, !tbaa !24
  %t46 = getelementptr { i64, i32 }, ptr %l6, i32 0, i32 1
  %t47 = load i32, ptr %t46, !tbaa !23
  store i32 %t47, ptr %l8, !tbaa !23
  %t49 = load i64, ptr %l7, !tbaa !24
  %t51 = icmp slt i64 %t49, 0
  br i1 %t51, label %bb12, label %bb13
bb12:
  %t53 = load ptr, ptr %lp2
  %t54 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t53
  call void @__olang_scope_close(ptr %s1)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t54, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/check:Checker", ptr %t56, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !29
  store ptr %t59, ptr %l40, !tbaa !29
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/check:Checker", ptr %t60, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !29
  %t65 = getelementptr %"compiler/generic:Program", ptr %t63, i32 0, i32 2
  %t66 = load i32, ptr %l8, !tbaa !23
  %t69 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t65, i32 %t66)
  store i32 %t69, ptr %l45
  br label %bb15
bb15:
  %t70 = load i64, ptr %l7, !tbaa !24
  %t71 = load ptr, ptr %l40, !tbaa !29
  %t72 = load i32, ptr %l45, !tbaa !23
  %t74 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eWordFields(ptr %v0, ptr %s1, ptr %t71, i32 %t72, i64 %t70)
  store { i64, ptr } %t74, ptr %l47
  br label %bb16
bb16:
  %t75 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t75, ptr %l9, !tbaa !27
  %t76 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t76, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t78 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t80 = extractvalue { i64, ptr } %t78, 0
  store i64 %t80, ptr %l12, !tbaa !24
  br label %bb17
bb17:
  %t82 = load i64, ptr %l11, !tbaa !24
  %t83 = load i64, ptr %l12, !tbaa !24
  %t86 = icmp slt i64 %t82, %t83
  %t88 = xor i1 %t86, true
  br i1 %t88, label %bb18, label %bb19
bb18:
  br label %bb40
bb19:
  br label %bb20
bb20:
  %t90 = load i64, ptr %l11, !tbaa !24
  store i64 %t90, ptr %l13, !tbaa !24
  %t92 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t92, ptr %l56, !tbaa !27
  %t93 = load i64, ptr %l11, !tbaa !24
  %t95 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !27
  %t97 = getelementptr ptr, ptr %t96, i64 %t93
  %t98 = load ptr, ptr %t97, !tbaa !39
  store ptr %t98, ptr %l14, !tbaa !29
  %t100 = load ptr, ptr %l14, !tbaa !29
  store ptr %t100, ptr %l59, !tbaa !29
  store i1 false, ptr %l60, !tbaa !21
  %t101 = load ptr, ptr %l59, !tbaa !29
  %t102 = icmp ne ptr %t101, null
  br i1 %t102, label %bb21, label %bb22
bb21:
  %t104 = load ptr, ptr %l59, !tbaa !29
  %t105 = load i64, ptr %t104, !range !{i64 0, i64 9}
  %t107 = icmp eq i64 %t105, 8
  store i1 %t107, ptr %l60, !tbaa !21
  br label %bb22
bb22:
  %t108 = load i1, ptr %l60, !tbaa !21
  br i1 %t108, label %bb23, label %bb24
bb23:
  %t109 = load ptr, ptr %l14, !tbaa !29
  %t111 = getelementptr { i64, [4 x i64] }, ptr %t109, i32 0, i32 1
  %t112 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t111, i32 0, i32 1
  %t113 = load i32, ptr %t112
  store i32 %t113, ptr %l15, !tbaa !23
  %t115 = load ptr, ptr %l14, !tbaa !29
  %t117 = getelementptr { i64, [4 x i64] }, ptr %t115, i32 0, i32 1
  %t118 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t117, i32 0, i32 2
  %t119 = load ptr, ptr %t118
  store ptr %t119, ptr %l16, !tbaa !29
  br label %bb25
bb24:
  br label %bb28
bb25:
  %t121 = load ptr, ptr %lp2
  store ptr %t121, ptr %l67, !tbaa !29
  %t122 = load i32, ptr %l15, !tbaa !23
  %t123 = load ptr, ptr %l16, !tbaa !29
  %t126 = call %"compiler/check:payloadItem" @compiler_2fcheck_3apayloadItem_2ector(ptr %v1, ptr %v2, i32 %t122, ptr %t123)
  store %"compiler/check:payloadItem" %t126, ptr %l70
  br label %bb26
bb26:
  %t127 = load ptr, ptr %l67, !tbaa !29
  %t128 = load %"compiler/check:payloadItem", ptr %l70
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3apayloadItem_3e_2ePu_H56e661e7866ebbaff102f6db3c63f52b(ptr %v2, ptr %v2, ptr %t127, %"compiler/check:payloadItem" %t128)
  br label %bb27
bb27:
  br label %bb38
bb28:
  br i1 true, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb37
bb31:
  %t129 = load i64, ptr %l13, !tbaa !24
  %t130 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t132 = extractvalue { i64, ptr } %t130, 0
  %t135 = icmp slt i64 %t129, %t132
  br i1 %t135, label %bb32, label %bb33
bb32:
  %t137 = load ptr, ptr %lp2
  store ptr %t137, ptr %l75, !tbaa !29
  %t138 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t138, ptr %l76, !tbaa !27
  %t139 = load i64, ptr %l13, !tbaa !24
  %t141 = getelementptr { i64, ptr }, ptr %l76, i32 0, i32 1
  %t142 = load ptr, ptr %t141, !tbaa !27
  %t143 = getelementptr ptr, ptr %t142, i64 %t139
  %t144 = load ptr, ptr %t143, !tbaa !39
  %t146 = getelementptr %"compiler/ast:Param", ptr %t144, i32 0, i32 1
  %t147 = load i32, ptr %t146, !tbaa !23
  %t148 = load ptr, ptr %l14, !tbaa !29
  %t151 = call %"compiler/check:payloadItem" @compiler_2fcheck_3apayloadItem_2ector(ptr %v1, ptr %v2, i32 %t147, ptr %t148)
  store %"compiler/check:payloadItem" %t151, ptr %l81
  br label %bb34
bb33:
  br label %bb36
bb34:
  %t152 = load ptr, ptr %l75, !tbaa !29
  %t153 = load %"compiler/check:payloadItem", ptr %l81
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3apayloadItem_3e_2ePu_H56e661e7866ebbaff102f6db3c63f52b(ptr %v2, ptr %v2, ptr %t152, %"compiler/check:payloadItem" %t153)
  br label %bb35
bb35:
  br label %bb36
bb36:
  br label %bb38
bb37:
  call void @__olang_check_failed(ptr @olang_loc_99a2219cf20f55d9_bdfeae2ff747ebc5)
  unreachable
bb38:
  br label %bb39
bb39:
  %t154 = load i64, ptr %l11, !tbaa !24
  %t156 = add i64 %t154, 1
  store i64 %t156, ptr %l11, !tbaa !24
  br label %bb17
bb40:
  call void @__olang_scope_close(ptr %s1)
  br label %bb46
bb41:
  br i1 true, label %bb42, label %bb43
bb42:
  br label %bb44
bb43:
  br label %bb45
bb44:
  br label %bb46
bb45:
  call void @__olang_check_failed(ptr @olang_loc_aa9d1041871ddc08_900eaa132351bb14)
  unreachable
bb46:
  %t158 = load ptr, ptr %lp2
  %t159 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t158
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t159, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplainScalar(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i1
  %l5 = alloca i1
  %l8 = alloca i32
  %l14 = alloca i1
  %l15 = alloca i1
  %l18 = alloca ptr
  %l23 = alloca i32
  %l24 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i1, ptr %l4, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb5
bb3:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i32, ptr %l1, !tbaa !23
  %t11 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t7, i32 %t8)
  store i32 %t11, ptr %l8
  br label %bb4
bb4:
  %t12 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t13 = load i32, ptr %l8, !tbaa !23
  %t15 = icmp eq i32 %t13, %t12
  store i1 %t15, ptr %l5, !tbaa !21
  br label %bb5
bb5:
  %t17 = load i1, ptr %l5, !tbaa !21
  br i1 %t17, label %bb6, label %bb7
bb6:
  store i1 true, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = load i32, ptr %l1, !tbaa !23
  %t23 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %t19, i32 %t20)
  store i1 %t23, ptr %l14
  br label %bb9
bb9:
  %t24 = load i1, ptr %l14, !tbaa !21
  br i1 %t24, label %bb10, label %bb11
bb10:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/check:Checker", ptr %t25, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !29
  %t30 = getelementptr %"compiler/generic:Program", ptr %t28, i32 0, i32 2
  store ptr %t30, ptr %l18, !tbaa !29
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/check:Checker", ptr %t31, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t36 = getelementptr %"compiler/generic:Program", ptr %t34, i32 0, i32 2
  %t37 = load i32, ptr %l1, !tbaa !23
  %t40 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t36, i32 %t37)
  store i32 %t40, ptr %l23
  br label %bb12
bb11:
  store i1 false, ptr %l15, !tbaa !21
  br label %bb14
bb12:
  %t41 = load ptr, ptr %l18, !tbaa !29
  %t42 = load i32, ptr %l23, !tbaa !23
  %t43 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasPayload(ptr %v0, ptr %t41, i32 %t42)
  store i1 %t43, ptr %l24
  br label %bb13
bb13:
  %t44 = load i1, ptr %l24, !tbaa !21
  %t45 = xor i1 %t44, true
  store i1 %t45, ptr %l15, !tbaa !21
  br label %bb14
bb14:
  %t47 = load i1, ptr %l15, !tbaa !21
  store i1 %t47, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3, ptr %a4, ptr %a5) #0 {
entry:
  %l0 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i64
  %l9 = alloca i64
  %l19 = alloca %"compiler/source:Span"
  %l20 = alloca i32
  %l21 = alloca i32
  %l22 = alloca i32
  %l26 = alloca { i64, ptr }
  %rv = alloca ptr
  %t35 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 36
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l9
  br label %bb1
bb1:
  %t6 = load i64, ptr %l9, !tbaa !24
  store i64 %t6, ptr %l6, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 36
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %t9, ptr %a4)
  br label %bb2
bb2:
  %t13 = load ptr, ptr %l5, !tbaa !29
  %t15 = icmp eq ptr %t13, null
  %t17 = xor i1 %t15, true
  br i1 %t17, label %bb3, label %bb4
bb3:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/check:Checker", ptr %t19, i32 0, i32 36
  %t22 = load ptr, ptr %l5, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v2, ptr %t21, ptr %t22)
  br label %bb5
bb4:
  br label %bb6
bb5:
  br label %bb6
bb6:
  store %"compiler/source:Span" %a1, ptr %l19
  store i32 %a2, ptr %l20, !tbaa !23
  store i32 %a3, ptr %l21
  store i32 0, ptr %l22
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/check:Checker", ptr %t28, i32 0, i32 36
  %t31 = load i64, ptr %l6, !tbaa !24
  %t34 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v3, ptr %t30, i64 %t31)
  store { i64, ptr } %t34, ptr %l26
  br label %bb7
bb7:
  store { i64, [5 x i64] } zeroinitializer, ptr %t35
  %t36 = getelementptr { i64, [5 x i64] }, ptr %t35, i32 0, i32 0
  store i64 9, ptr %t36
  %t37 = load %"compiler/source:Span", ptr %l19
  %t38 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } undef, %"compiler/source:Span" %t37, 0
  %t39 = load i32, ptr %l20, !tbaa !23
  %t40 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t38, i32 %t39, 1
  %t41 = load i32, ptr %l21, !range !{i32 0, i32 52}
  %t42 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t40, i32 %t41, 2
  %t43 = load i32, ptr %l22, !range !{i32 0, i32 3}
  %t44 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t42, i32 %t43, 3
  %t45 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t46 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t44, { i64, ptr } %t45, 4
  %t47 = getelementptr { i64, [5 x i64] }, ptr %t35, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t46, ptr %t47
  %t48 = load { i64, [5 x i64] }, ptr %t35
  %t50 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 48, i64 8)
  store { i64, [5 x i64] } %t48, ptr %t50
  store ptr %t50, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eraise(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca { i64, i32 }
  %l8 = alloca i64
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca ptr
  %l12 = alloca i32
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i32
  %l18 = alloca ptr
  %l21 = alloca ptr
  %l22 = alloca %"compiler/source:Span"
  %l23 = alloca %"compiler/diagmsg:Msg"
  %l24 = alloca i64
  %l26 = alloca ptr
  %l30 = alloca ptr
  %l34 = alloca %"compiler/source:Span"
  %l35 = alloca %"compiler/diagmsg:Msg"
  %l36 = alloca i64
  %l38 = alloca ptr
  %l42 = alloca ptr
  %l46 = alloca %"compiler/source:Span"
  %l47 = alloca ptr
  %l49 = alloca ptr
  %l52 = alloca { i64, ptr }
  %l53 = alloca %"compiler/diagmsg:Msg"
  %l54 = alloca i64
  %l59 = alloca ptr
  %l61 = alloca ptr
  %l66 = alloca %"compiler/names:Ref"
  %l72 = alloca i1
  %l75 = alloca i1
  %l81 = alloca ptr
  %l83 = alloca %"compiler/source:Span"
  %l86 = alloca { i64, ptr }
  %l88 = alloca { i64, ptr }
  %l89 = alloca %"compiler/diagmsg:Msg"
  %l90 = alloca i64
  %l95 = alloca { i64, ptr }
  %l98 = alloca ptr
  %l103 = alloca i32
  %l111 = alloca i1
  %l113 = alloca ptr
  %l115 = alloca %"compiler/source:Span"
  %l118 = alloca { i64, ptr }
  %l120 = alloca { i64, ptr }
  %l122 = alloca %"compiler/diagmsg:Msg"
  %l123 = alloca i64
  %l129 = alloca { i64, i32 }
  %l138 = alloca i1
  %l140 = alloca ptr
  %l145 = alloca i32
  %l146 = alloca i1
  %l148 = alloca i32
  %l153 = alloca i64
  %l155 = alloca i32
  %l158 = alloca ptr
  %l162 = alloca i1
  %l172 = alloca { i64, ptr }
  %l179 = alloca { i64, ptr }
  %l186 = alloca i32
  %l195 = alloca ptr
  %l198 = alloca %"compiler/source:Span"
  %l200 = alloca i1
  %l201 = alloca %"compiler/diagmsg:Msg"
  %l204 = alloca { i64, ptr }
  %l206 = alloca %"compiler/diagmsg:Msg"
  %l209 = alloca { i64, ptr }
  %l211 = alloca %"compiler/diagmsg:Msg"
  %l212 = alloca i64
  %l217 = alloca i32
  %l220 = alloca ptr
  %l223 = alloca %"compiler/source:Span"
  %l226 = alloca { i64, ptr }
  %l228 = alloca %"compiler/diagmsg:Msg"
  %l229 = alloca i64
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %t497 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l18
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l18, !tbaa !29
  %t6 = getelementptr %"compiler/check:frame", ptr %t4, i32 0, i32 32
  %t7 = load i1, ptr %t6, !tbaa !21
  br i1 %t7, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t9 = load ptr, ptr %l0, !tbaa !29
  store ptr %t9, ptr %l21, !tbaa !29
  %t10 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t10, ptr %l22
  %t11 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTaskClauseError(ptr %s1)
  store %"compiler/diagmsg:Msg" %t11, ptr %l23
  br label %bb4
bb3:
  br label %bb6
bb4:
  %t12 = load ptr, ptr %l21, !tbaa !29
  %t13 = load %"compiler/source:Span", ptr %l22
  %t14 = load %"compiler/diagmsg:Msg", ptr %l23
  %t15 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s1, ptr %t12, %"compiler/source:Span" %t13, %"compiler/diagmsg:Msg" %t14)
  store i64 %t15, ptr %l24
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s1)
  br label %ret
bb6:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t16)
  store ptr %t18, ptr %l26
  br label %bb7
bb7:
  %t19 = load ptr, ptr %l26, !tbaa !29
  %t21 = getelementptr %"compiler/check:frame", ptr %t19, i32 0, i32 34
  %t22 = load i64, ptr %t21, !tbaa !24
  %t24 = icmp sge i64 %t22, 0
  br i1 %t24, label %bb8, label %bb9
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t26 = load ptr, ptr %l0, !tbaa !29
  store ptr %t26, ptr %l30, !tbaa !29
  %t27 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t28 = load i32, ptr %t27, !tbaa !23
  %t29 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t30 = load i32, ptr %t29, !tbaa !23
  %t32 = add i32 %t30, 5
  %t35 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s2, i32 %t28, i32 %t32)
  store %"compiler/source:Span" %t35, ptr %l34
  br label %bb10
bb9:
  br label %bb13
bb10:
  %t36 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDeferErrorEscapes(ptr %s2)
  store %"compiler/diagmsg:Msg" %t36, ptr %l35
  br label %bb11
bb11:
  %t37 = load ptr, ptr %l30, !tbaa !29
  %t38 = load %"compiler/source:Span", ptr %l34
  %t39 = load %"compiler/diagmsg:Msg", ptr %l35
  %t40 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s2, ptr %t37, %"compiler/source:Span" %t38, %"compiler/diagmsg:Msg" %t39)
  store i64 %t40, ptr %l36
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s2)
  br label %ret
bb13:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t41)
  store ptr %t43, ptr %l38
  br label %bb14
bb14:
  %t44 = load ptr, ptr %l38, !tbaa !29
  %t46 = getelementptr %"compiler/check:frame", ptr %t44, i32 0, i32 35
  %t47 = load i64, ptr %t46, !tbaa !24
  %t49 = icmp sge i64 %t47, 0
  br i1 %t49, label %bb15, label %bb16
bb15:
  store %olang.scope zeroinitializer, ptr %s3
  %t51 = load ptr, ptr %l0, !tbaa !29
  store ptr %t51, ptr %l42, !tbaa !29
  %t52 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t53 = load i32, ptr %t52, !tbaa !23
  %t54 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t55 = load i32, ptr %t54, !tbaa !23
  %t57 = add i32 %t55, 5
  %t60 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s3, i32 %t53, i32 %t57)
  store %"compiler/source:Span" %t60, ptr %l46
  br label %bb17
bb16:
  br label %bb22
bb17:
  %t61 = load ptr, ptr %l0, !tbaa !29
  store ptr %t61, ptr %l47, !tbaa !29
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t62)
  store ptr %t64, ptr %l49
  br label %bb18
bb18:
  %t65 = load ptr, ptr %l49, !tbaa !29
  %t67 = getelementptr %"compiler/check:frame", ptr %t65, i32 0, i32 36
  %t68 = load i1, ptr %t67, !tbaa !21
  %t69 = load ptr, ptr %l47, !tbaa !29
  %t71 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emsgOwner(ptr %v0, ptr %s3, ptr %t69, i1 %t68)
  store { i64, ptr } %t71, ptr %l52
  br label %bb19
bb19:
  %t72 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t73 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAssertMsgError(ptr %s3, ptr %s3, { i64, ptr } %t72)
  store %"compiler/diagmsg:Msg" %t73, ptr %l53
  br label %bb20
bb20:
  %t74 = load ptr, ptr %l42, !tbaa !29
  %t75 = load %"compiler/source:Span", ptr %l46
  %t76 = load %"compiler/diagmsg:Msg", ptr %l53
  %t77 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s3, ptr %t74, %"compiler/source:Span" %t75, %"compiler/diagmsg:Msg" %t76)
  store i64 %t77, ptr %l54
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s3)
  br label %ret
bb22:
  %t78 = load ptr, ptr %l2, !tbaa !29
  %t80 = icmp eq ptr %t78, null
  br i1 %t80, label %bb23, label %bb24
bb23:
  br label %ret
bb24:
  br label %bb25
bb25:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/check:Checker", ptr %t82, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !29
  %t87 = getelementptr %"compiler/generic:Program", ptr %t85, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !29
  store ptr %t88, ptr %l59, !tbaa !29
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t89)
  store ptr %t91, ptr %l61
  br label %bb26
bb26:
  %t92 = load ptr, ptr %l61, !tbaa !29
  %t94 = getelementptr %"compiler/check:frame", ptr %t92, i32 0, i32 2
  %t95 = load i64, ptr %t94, !tbaa !24
  %t96 = load ptr, ptr %l2, !tbaa !29
  %t98 = getelementptr %"compiler/ast:Path", ptr %t96, i32 0, i32 0
  %t99 = getelementptr %"compiler/source:Span", ptr %t98, i32 0, i32 0
  %t100 = load i32, ptr %t99, !tbaa !23
  %t101 = load ptr, ptr %l59, !tbaa !29
  %t104 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t101, i64 %t95, i32 %t100)
  store %"compiler/names:Ref" %t104, ptr %l66
  br label %bb27
bb27:
  %t105 = getelementptr %"compiler/names:Ref", ptr %l66, i32 0, i32 0
  %t106 = load i32, ptr %t105, !range !{i32 0, i32 9}
  store i32 %t106, ptr %l4
  %t108 = load ptr, ptr %l2, !tbaa !29
  %t110 = getelementptr %"compiler/ast:Path", ptr %t108, i32 0, i32 1
  %t111 = load { i64, ptr }, ptr %t110, !tbaa !27
  %t113 = extractvalue { i64, ptr } %t111, 0
  %t115 = icmp eq i64 %t113, 1
  br i1 %t115, label %bb28, label %bb29
bb28:
  %t117 = load i32, ptr %l4, !range !{i32 0, i32 9}
  %t119 = trunc i64 1 to i32
  %t120 = icmp eq i32 %t117, %t119
  br i1 %t120, label %bb30, label %bb31
bb29:
  store i1 false, ptr %l72, !tbaa !21
  br label %bb33
bb30:
  store i1 true, ptr %l75, !tbaa !21
  br label %bb32
bb31:
  %t122 = load i32, ptr %l4, !range !{i32 0, i32 9}
  %t124 = trunc i64 2 to i32
  %t125 = icmp eq i32 %t122, %t124
  store i1 %t125, ptr %l75, !tbaa !21
  br label %bb32
bb32:
  %t127 = load i1, ptr %l75, !tbaa !21
  store i1 %t127, ptr %l72, !tbaa !21
  br label %bb33
bb33:
  %t128 = load i1, ptr %l72, !tbaa !21
  br i1 %t128, label %bb34, label %bb35
bb34:
  %t129 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t131 = extractvalue { i64, ptr } %t129, 0
  %t132 = extractvalue { i64, ptr } { i64 -1, ptr null }, 0
  %t133 = icmp eq i64 %t131, %t132
  %t134 = extractvalue { i64, ptr } %t129, 1
  %t135 = extractvalue { i64, ptr } { i64 -1, ptr null }, 1
  %t136 = icmp eq ptr %t134, %t135
  %t137 = and i1 %t133, %t136
  %t139 = xor i1 %t137, true
  br i1 %t139, label %bb36, label %bb37
bb35:
  br label %bb58
bb36:
  store %olang.scope zeroinitializer, ptr %s6
  %t141 = load ptr, ptr %l0, !tbaa !29
  store ptr %t141, ptr %l81, !tbaa !29
  %t142 = load ptr, ptr %l2, !tbaa !29
  %t144 = getelementptr %"compiler/ast:Path", ptr %t142, i32 0, i32 0
  %t145 = load %"compiler/source:Span", ptr %t144
  store %"compiler/source:Span" %t145, ptr %l83
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t147 = load ptr, ptr %l2, !tbaa !29
  %t149 = getelementptr %"compiler/ast:Path", ptr %t147, i32 0, i32 1
  %t150 = load { i64, ptr }, ptr %t149, !tbaa !27
  store { i64, ptr } %t150, ptr %l86, !tbaa !27
  %t151 = getelementptr { i64, ptr }, ptr %l86, i32 0, i32 1
  %t152 = load ptr, ptr %t151, !tbaa !27
  %t153 = getelementptr i32, ptr %t152, i64 0
  %t154 = load i32, ptr %t153, !tbaa !33
  %t157 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t146, i32 %t154)
  store { i64, ptr } %t157, ptr %l88
  br label %bb38
bb37:
  br label %bb41
bb38:
  %t158 = load { i64, ptr }, ptr %l88, !tbaa !27
  %t159 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePlainWordCalled(ptr %v0, ptr %s6, { i64, ptr } %t158)
  store %"compiler/diagmsg:Msg" %t159, ptr %l89
  br label %bb39
bb39:
  %t160 = load ptr, ptr %l81, !tbaa !29
  %t161 = load %"compiler/source:Span", ptr %l83
  %t162 = load %"compiler/diagmsg:Msg", ptr %l89
  %t163 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s6, ptr %t160, %"compiler/source:Span" %t161, %"compiler/diagmsg:Msg" %t162)
  store i64 %t163, ptr %l90
  br label %bb40
bb40:
  call void @__olang_scope_close(ptr %s6)
  br label %ret
bb41:
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t165 = load ptr, ptr %l2, !tbaa !29
  %t167 = getelementptr %"compiler/ast:Path", ptr %t165, i32 0, i32 0
  %t168 = load %"compiler/source:Span", ptr %t167
  %t169 = load ptr, ptr %l2, !tbaa !29
  %t171 = getelementptr %"compiler/ast:Path", ptr %t169, i32 0, i32 1
  %t172 = load { i64, ptr }, ptr %t171, !tbaa !27
  store { i64, ptr } %t172, ptr %l95, !tbaa !27
  %t173 = getelementptr { i64, ptr }, ptr %l95, i32 0, i32 1
  %t174 = load ptr, ptr %t173, !tbaa !27
  %t175 = getelementptr i32, ptr %t174, i64 0
  %t176 = load i32, ptr %t175, !tbaa !33
  %t177 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t182 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ename(ptr %v0, ptr %v0, ptr %t164, %"compiler/source:Span" %t168, i32 %t176, i32 %t177, i1 false)
  store ptr %t182, ptr %l98
  br label %bb42
bb42:
  %t183 = load ptr, ptr %l98, !tbaa !29
  store ptr %t183, ptr %l5, !tbaa !29
  %t184 = load ptr, ptr %l5, !tbaa !29
  %t186 = icmp eq ptr %t184, null
  br i1 %t186, label %bb43, label %bb44
bb43:
  br label %ret
bb44:
  br label %bb45
bb45:
  %t188 = load ptr, ptr %l5, !tbaa !29
  %t191 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t188)
  store i32 %t191, ptr %l103
  br label %bb46
bb46:
  %t192 = load i32, ptr %l103, !tbaa !23
  store i32 %t192, ptr %l6, !tbaa !23
  %t193 = load i32, ptr %l6, !tbaa !23
  %t194 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t197 = icmp eq i32 %t193, %t194
  br i1 %t197, label %bb47, label %bb48
bb47:
  br label %ret
bb48:
  br label %bb49
bb49:
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t201 = getelementptr %"compiler/check:Checker", ptr %t199, i32 0, i32 1
  %t202 = load ptr, ptr %t201, !tbaa !29
  %t204 = getelementptr %"compiler/generic:Program", ptr %t202, i32 0, i32 2
  %t205 = load i32, ptr %l6, !tbaa !23
  %t208 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsErrVal(ptr %v0, ptr %t204, i32 %t205)
  store i1 %t208, ptr %l111
  br label %bb50
bb50:
  %t209 = load i1, ptr %l111, !tbaa !21
  %t210 = xor i1 %t209, true
  br i1 %t210, label %bb51, label %bb52
bb51:
  store %olang.scope zeroinitializer, ptr %s9
  %t212 = load ptr, ptr %l0, !tbaa !29
  store ptr %t212, ptr %l113, !tbaa !29
  %t213 = load ptr, ptr %l2, !tbaa !29
  %t215 = getelementptr %"compiler/ast:Path", ptr %t213, i32 0, i32 0
  %t216 = load %"compiler/source:Span", ptr %t215
  store %"compiler/source:Span" %t216, ptr %l115
  %t217 = load ptr, ptr %l0, !tbaa !29
  %t218 = load ptr, ptr %l2, !tbaa !29
  %t220 = getelementptr %"compiler/ast:Path", ptr %t218, i32 0, i32 1
  %t221 = load { i64, ptr }, ptr %t220, !tbaa !27
  store { i64, ptr } %t221, ptr %l118, !tbaa !27
  %t222 = getelementptr { i64, ptr }, ptr %l118, i32 0, i32 1
  %t223 = load ptr, ptr %t222, !tbaa !27
  %t224 = getelementptr i32, ptr %t223, i64 0
  %t225 = load i32, ptr %t224, !tbaa !33
  %t228 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %s9, ptr %t217, i32 %t225)
  store { i64, ptr } %t228, ptr %l120
  br label %bb53
bb52:
  br label %bb56
bb53:
  %t229 = load { i64, ptr }, ptr %l120, !tbaa !27
  %t230 = extractvalue { i64, ptr } %t229, 0
  %t231 = extractvalue { i64, ptr } %t229, 1
  %t232 = mul i64 %t230, 1
  %t233 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t232)
  call void @llvm.memcpy.p0.p0.i64(ptr %t233, ptr %t231, i64 %t232, i1 false)
  %t234 = insertvalue { i64, ptr } undef, i64 %t230, 0
  %t235 = insertvalue { i64, ptr } %t234, ptr %t233, 1
  %t237 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eRaiseNotCaught(ptr %s9, ptr %s9, { i64, ptr } %t235)
  store %"compiler/diagmsg:Msg" %t237, ptr %l122
  br label %bb54
bb54:
  %t238 = load ptr, ptr %l113, !tbaa !29
  %t239 = load %"compiler/source:Span", ptr %l115
  %t240 = load %"compiler/diagmsg:Msg", ptr %l122
  %t241 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s9, ptr %t238, %"compiler/source:Span" %t239, %"compiler/diagmsg:Msg" %t240)
  store i64 %t241, ptr %l123
  br label %bb55
bb55:
  call void @__olang_scope_close(ptr %s9)
  br label %ret
bb56:
  %t242 = load ptr, ptr %l0, !tbaa !29
  %t243 = load %"compiler/source:Span", ptr %l1
  %t244 = load ptr, ptr %l5, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereraise(ptr %v0, ptr %v0, ptr %t242, %"compiler/source:Span" %t243, ptr %t244)
  br label %bb57
bb57:
  br label %ret
bb58:
  %t248 = load ptr, ptr %l0, !tbaa !29
  %t249 = load ptr, ptr %l2, !tbaa !29
  %t252 = call { i64, i32 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrorWord(ptr %v0, ptr %v1, ptr %t248, ptr %t249)
  store { i64, i32 } %t252, ptr %l129
  br label %bb59
bb59:
  %t253 = load { i64, i32 }, ptr %l129
  store { i64, i32 } %t253, ptr %l7
  %t254 = getelementptr { i64, i32 }, ptr %l7, i32 0, i32 0
  %t255 = load i64, ptr %t254, !tbaa !24
  store i64 %t255, ptr %l8, !tbaa !24
  %t257 = getelementptr { i64, i32 }, ptr %l7, i32 0, i32 1
  %t258 = load i32, ptr %t257, !tbaa !23
  store i32 %t258, ptr %l9, !tbaa !23
  %t260 = load i64, ptr %l8, !tbaa !24
  %t262 = icmp slt i64 %t260, 0
  br i1 %t262, label %bb60, label %bb61
bb60:
  %t264 = load ptr, ptr %l0, !tbaa !29
  %t265 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eraiseUnknown(ptr %v0, ptr %v1, ptr %t264, ptr %t265)
  br label %bb62
bb61:
  br label %bb63
bb62:
  br label %ret
bb63:
  %t268 = load i64, ptr %l8, !tbaa !24
  %t270 = icmp slt i64 %t268, 64
  br i1 %t270, label %bb64, label %bb65
bb64:
  %t272 = load ptr, ptr %l0, !tbaa !29
  %t274 = getelementptr %"compiler/check:Checker", ptr %t272, i32 0, i32 1
  %t275 = load ptr, ptr %t274, !tbaa !29
  store ptr %t275, ptr %l140, !tbaa !29
  %t276 = load ptr, ptr %l0, !tbaa !29
  %t278 = getelementptr %"compiler/check:Checker", ptr %t276, i32 0, i32 1
  %t279 = load ptr, ptr %t278, !tbaa !29
  %t281 = getelementptr %"compiler/generic:Program", ptr %t279, i32 0, i32 2
  %t282 = load i32, ptr %l9, !tbaa !23
  %t285 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t281, i32 %t282)
  store i32 %t285, ptr %l145
  br label %bb66
bb65:
  store i1 false, ptr %l138, !tbaa !21
  br label %bb68
bb66:
  %t286 = load ptr, ptr %l140, !tbaa !29
  %t287 = load i32, ptr %l145, !tbaa !23
  %t288 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsRaisedError(ptr %v0, ptr %t286, i32 %t287)
  store i1 %t288, ptr %l146
  br label %bb67
bb67:
  %t289 = load i1, ptr %l146, !tbaa !21
  %t290 = xor i1 %t289, true
  store i1 %t290, ptr %l138, !tbaa !21
  br label %bb68
bb68:
  %t292 = load i1, ptr %l138, !tbaa !21
  br i1 %t292, label %bb69, label %bb70
bb69:
  %t293 = load ptr, ptr %l0, !tbaa !29
  %t295 = getelementptr %"compiler/check:Checker", ptr %t293, i32 0, i32 1
  %t296 = load ptr, ptr %t295, !tbaa !29
  %t298 = getelementptr %"compiler/generic:Program", ptr %t296, i32 0, i32 2
  %t299 = load i32, ptr %l9, !tbaa !23
  %t300 = load i64, ptr %l8, !tbaa !24
  store i64 %t300, ptr %l153, !tbaa !24
  %t301 = load i64, ptr %l153, !tbaa !24
  %t302 = load i64, ptr %l153, !tbaa !24
  %t303 = shl i64 1, %t302
  %t307 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrWords(ptr %v0, ptr %t298, i32 %t299, i64 %t303)
  store i32 %t307, ptr %l155
  br label %bb71
bb70:
  %t308 = load i32, ptr %l9, !tbaa !23
  store i32 %t308, ptr %l148, !tbaa !23
  br label %bb72
bb71:
  %t310 = load i32, ptr %l155, !tbaa !23
  store i32 %t310, ptr %l148, !tbaa !23
  br label %bb72
bb72:
  %t311 = load i32, ptr %l148, !tbaa !23
  store i32 %t311, ptr %l10, !tbaa !23
  %t312 = load ptr, ptr %l0, !tbaa !29
  %t314 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t312)
  store ptr %t314, ptr %l158
  br label %bb73
bb73:
  %t315 = load ptr, ptr %l158, !tbaa !29
  store ptr %t315, ptr %l11, !tbaa !29
  %t316 = load ptr, ptr %l11, !tbaa !29
  %t318 = getelementptr %"compiler/check:frame", ptr %t316, i32 0, i32 26
  %t319 = load i1, ptr %t318, !tbaa !21
  %t321 = xor i1 %t319, true
  br i1 %t321, label %bb74, label %bb75
bb74:
  %t323 = load ptr, ptr %l11, !tbaa !29
  %t325 = getelementptr %"compiler/check:frame", ptr %t323, i32 0, i32 12
  %t326 = load i1, ptr %t325, !tbaa !21
  %t328 = xor i1 %t326, true
  store i1 %t328, ptr %l162, !tbaa !21
  br label %bb76
bb75:
  store i1 false, ptr %l162, !tbaa !21
  br label %bb76
bb76:
  %t330 = load i1, ptr %l162, !tbaa !21
  br i1 %t330, label %bb77, label %bb78
bb77:
  %t331 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t331, ptr %l12, !tbaa !23
  %t333 = load ptr, ptr %l0, !tbaa !29
  %t335 = getelementptr %"compiler/check:Checker", ptr %t333, i32 0, i32 1
  %t336 = load ptr, ptr %t335, !tbaa !29
  %t338 = getelementptr %"compiler/generic:Program", ptr %t336, i32 0, i32 2
  %t339 = load ptr, ptr %l11, !tbaa !29
  %t341 = getelementptr %"compiler/check:frame", ptr %t339, i32 0, i32 6
  %t342 = load i32, ptr %t341, !tbaa !23
  %t345 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t338, i32 %t342)
  store { i64, ptr } %t345, ptr %l172
  br label %bb79
bb78:
  br label %bb111
bb79:
  %t346 = load { i64, ptr }, ptr %l172, !tbaa !27
  store { i64, ptr } %t346, ptr %l13, !tbaa !27
  store i64 0, ptr %l14, !tbaa !24
  %t347 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t349 = extractvalue { i64, ptr } %t347, 0
  store i64 %t349, ptr %l15, !tbaa !24
  br label %bb80
bb80:
  %t351 = load i64, ptr %l14, !tbaa !24
  %t352 = load i64, ptr %l15, !tbaa !24
  %t355 = icmp slt i64 %t351, %t352
  %t357 = xor i1 %t355, true
  br i1 %t357, label %bb81, label %bb82
bb81:
  br label %bb89
bb82:
  br label %bb83
bb83:
  %t359 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t359, ptr %l179, !tbaa !27
  %t360 = load i64, ptr %l14, !tbaa !24
  %t362 = getelementptr { i64, ptr }, ptr %l179, i32 0, i32 1
  %t363 = load ptr, ptr %t362, !tbaa !27
  %t364 = getelementptr i32, ptr %t363, i64 %t360
  %t365 = load i32, ptr %t364, !tbaa !33
  store i32 %t365, ptr %l16, !tbaa !23
  %t367 = load ptr, ptr %l0, !tbaa !29
  %t369 = getelementptr %"compiler/check:Checker", ptr %t367, i32 0, i32 1
  %t370 = load ptr, ptr %t369, !tbaa !29
  %t372 = getelementptr %"compiler/generic:Program", ptr %t370, i32 0, i32 2
  %t373 = load i32, ptr %l16, !tbaa !23
  %t376 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t372, i32 %t373)
  store i32 %t376, ptr %l186
  br label %bb84
bb84:
  %t377 = load i32, ptr %l9, !tbaa !23
  %t378 = load i32, ptr %l186, !tbaa !23
  %t380 = icmp eq i32 %t378, %t377
  br i1 %t380, label %bb85, label %bb86
bb85:
  %t382 = load i32, ptr %l16, !tbaa !23
  store i32 %t382, ptr %l12, !tbaa !23
  br label %bb87
bb86:
  br label %bb87
bb87:
  br label %bb88
bb88:
  %t384 = load i64, ptr %l14, !tbaa !24
  %t386 = add i64 %t384, 1
  store i64 %t386, ptr %l14, !tbaa !24
  br label %bb80
bb89:
  %t388 = load i32, ptr %l12, !tbaa !23
  %t389 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t392 = icmp eq i32 %t388, %t389
  br i1 %t392, label %bb90, label %bb91
bb90:
  store %olang.scope zeroinitializer, ptr %s16
  %t394 = load ptr, ptr %l0, !tbaa !29
  store ptr %t394, ptr %l195, !tbaa !29
  %t395 = load ptr, ptr %l0, !tbaa !29
  %t396 = load ptr, ptr %l2, !tbaa !29
  %t399 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epathPart(ptr %v0, ptr %v1, ptr %t395, ptr %t396, i64 1)
  store %"compiler/source:Span" %t399, ptr %l198
  br label %bb92
bb91:
  %t400 = load ptr, ptr %l0, !tbaa !29
  %t401 = load ptr, ptr %l11, !tbaa !29
  %t403 = getelementptr %"compiler/check:frame", ptr %t401, i32 0, i32 6
  %t404 = load i32, ptr %t403, !tbaa !23
  %t405 = load i32, ptr %l10, !tbaa !23
  %t409 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euncovered(ptr %v0, ptr %t400, i32 %t404, i32 %t405)
  store i32 %t409, ptr %l217
  br label %bb102
bb92:
  %t410 = load ptr, ptr %l0, !tbaa !29
  %t412 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewritesNoQuestion(ptr %v0, ptr %t410)
  store i1 %t412, ptr %l200
  br label %bb93
bb93:
  %t413 = load i1, ptr %l200, !tbaa !21
  br i1 %t413, label %bb94, label %bb95
bb94:
  %t414 = load ptr, ptr %l0, !tbaa !29
  %t415 = load i32, ptr %l9, !tbaa !23
  %t418 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s16, ptr %t414, i32 %t415)
  store { i64, ptr } %t418, ptr %l204
  br label %bb96
bb95:
  %t419 = load ptr, ptr %l0, !tbaa !29
  %t420 = load i32, ptr %l9, !tbaa !23
  %t423 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s16, ptr %t419, i32 %t420)
  store { i64, ptr } %t423, ptr %l209
  br label %bb98
bb96:
  %t424 = load { i64, ptr }, ptr %l204, !tbaa !27
  %t425 = extractvalue { i64, ptr } %t424, 0
  %t426 = extractvalue { i64, ptr } %t424, 1
  %t427 = mul i64 %t425, 1
  %t428 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t427)
  call void @llvm.memcpy.p0.p0.i64(ptr %t428, ptr %t426, i64 %t427, i1 false)
  %t429 = insertvalue { i64, ptr } undef, i64 %t425, 0
  %t430 = insertvalue { i64, ptr } %t429, ptr %t428, 1
  %t432 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eRaiseNeedsQuestion(ptr %s16, ptr %s16, { i64, ptr } %t430)
  store %"compiler/diagmsg:Msg" %t432, ptr %l206
  br label %bb97
bb97:
  %t433 = load %"compiler/diagmsg:Msg", ptr %l206
  store %"compiler/diagmsg:Msg" %t433, ptr %l201
  br label %bb100
bb98:
  %t434 = load { i64, ptr }, ptr %l209, !tbaa !27
  %t435 = extractvalue { i64, ptr } %t434, 0
  %t436 = extractvalue { i64, ptr } %t434, 1
  %t437 = mul i64 %t435, 1
  %t438 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t437)
  call void @llvm.memcpy.p0.p0.i64(ptr %t438, ptr %t436, i64 %t437, i1 false)
  %t439 = insertvalue { i64, ptr } undef, i64 %t435, 0
  %t440 = insertvalue { i64, ptr } %t439, ptr %t438, 1
  %t442 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrorUndeclared(ptr %s16, ptr %s16, { i64, ptr } %t440)
  store %"compiler/diagmsg:Msg" %t442, ptr %l211
  br label %bb99
bb99:
  %t443 = load %"compiler/diagmsg:Msg", ptr %l211
  store %"compiler/diagmsg:Msg" %t443, ptr %l201
  br label %bb100
bb100:
  %t444 = load ptr, ptr %l195, !tbaa !29
  %t445 = load %"compiler/source:Span", ptr %l198
  %t446 = load %"compiler/diagmsg:Msg", ptr %l201
  %t447 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s16, ptr %t444, %"compiler/source:Span" %t445, %"compiler/diagmsg:Msg" %t446)
  store i64 %t447, ptr %l212
  br label %bb101
bb101:
  call void @__olang_scope_close(ptr %s16)
  br label %bb110
bb102:
  %t448 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t449 = load i32, ptr %l217, !tbaa !23
  %t451 = icmp ne i32 %t449, %t448
  br i1 %t451, label %bb103, label %bb104
bb103:
  store %olang.scope zeroinitializer, ptr %s18
  %t453 = load ptr, ptr %l0, !tbaa !29
  store ptr %t453, ptr %l220, !tbaa !29
  %t454 = load ptr, ptr %l0, !tbaa !29
  %t455 = load ptr, ptr %l2, !tbaa !29
  %t458 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epathPart(ptr %v0, ptr %v1, ptr %t454, ptr %t455, i64 0)
  store %"compiler/source:Span" %t458, ptr %l223
  br label %bb105
bb104:
  br label %bb109
bb105:
  %t459 = load ptr, ptr %l0, !tbaa !29
  %t460 = load i32, ptr %l12, !tbaa !23
  %t463 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s18, ptr %t459, i32 %t460)
  store { i64, ptr } %t463, ptr %l226
  br label %bb106
bb106:
  %t464 = load { i64, ptr }, ptr %l226, !tbaa !27
  %t465 = extractvalue { i64, ptr } %t464, 0
  %t466 = extractvalue { i64, ptr } %t464, 1
  %t467 = mul i64 %t465, 1
  %t468 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t467)
  call void @llvm.memcpy.p0.p0.i64(ptr %t468, ptr %t466, i64 %t467, i1 false)
  %t469 = insertvalue { i64, ptr } undef, i64 %t465, 0
  %t470 = insertvalue { i64, ptr } %t469, ptr %t468, 1
  %t472 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrorWordNotInSet(ptr %s18, ptr %s18, { i64, ptr } %t470)
  store %"compiler/diagmsg:Msg" %t472, ptr %l228
  br label %bb107
bb107:
  %t473 = load ptr, ptr %l220, !tbaa !29
  %t474 = load %"compiler/source:Span", ptr %l223
  %t475 = load %"compiler/diagmsg:Msg", ptr %l228
  %t476 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s18, ptr %t473, %"compiler/source:Span" %t474, %"compiler/diagmsg:Msg" %t475)
  store i64 %t476, ptr %l229
  br label %bb108
bb108:
  call void @__olang_scope_close(ptr %s18)
  br label %bb109
bb109:
  br label %bb110
bb110:
  br label %bb111
bb111:
  %t477 = load ptr, ptr %l0, !tbaa !29
  %t478 = load i32, ptr %l10, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eleaks1(ptr %v0, ptr %t477, i32 %t478)
  br label %bb112
bb112:
  %t481 = load ptr, ptr %l0, !tbaa !29
  %t482 = load %"compiler/source:Span", ptr %l1
  %t483 = load ptr, ptr %l2, !tbaa !29
  %t484 = load i32, ptr %l9, !tbaa !23
  %t485 = load i64, ptr %l8, !tbaa !24
  %t486 = load { i64, ptr }, ptr %l3, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epushPayload(ptr %v0, ptr %v1, ptr %v2, ptr %t481, %"compiler/source:Span" %t482, ptr %t483, i32 %t484, i64 %t485, { i64, ptr } %t486)
  br label %bb113
bb113:
  %t493 = load ptr, ptr %l0, !tbaa !29
  %t494 = load %"compiler/source:Span", ptr %l1
  %t495 = load i32, ptr %l9, !tbaa !23
  %t496 = load i64, ptr %l8, !tbaa !24
  store { i64, [3 x i64] } zeroinitializer, ptr %t497
  %t498 = getelementptr { i64, [3 x i64] }, ptr %t497, i32 0, i32 0
  store i64 7, ptr %t498
  %t500 = insertvalue { %"compiler/source:Span", i32, i64 } undef, %"compiler/source:Span" %t494, 0
  %t502 = insertvalue { %"compiler/source:Span", i32, i64 } %t500, i32 %t495, 1
  %t504 = insertvalue { %"compiler/source:Span", i32, i64 } %t502, i64 %t496, 2
  %t505 = getelementptr { i64, [3 x i64] }, ptr %t497, i32 0, i32 1
  store { %"compiler/source:Span", i32, i64 } %t504, ptr %t505
  %t506 = load { i64, [3 x i64] }, ptr %t497
  %t508 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t506, ptr %t508
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t493, ptr %t508)
  br label %bb114
bb114:
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolveNamed(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i1
  %l10 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 96
  %t4 = load i1, ptr %t3, !tbaa !21
  store i1 %t4, ptr %l2, !tbaa !21
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/check:Checker", ptr %t6, i32 0, i32 96
  store i1 true, ptr %t8, !tbaa !21
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t14 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolve(ptr %v0, ptr %v1, ptr %t9, ptr %a1)
  store i32 %t14, ptr %l10
  br label %bb1
bb1:
  %t15 = load i32, ptr %l10, !tbaa !23
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load i1, ptr %l2, !tbaa !21
  %t20 = getelementptr %"compiler/check:Checker", ptr %t16, i32 0, i32 96
  store i1 %t17, ptr %t20, !tbaa !21
  store i32 %t15, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroStore(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca %"compiler/diagmsg:Msg"
  %l10 = alloca i1
  %l15 = alloca i1
  %l16 = alloca ptr
  %l19 = alloca i32
  %l20 = alloca i1
  %l22 = alloca ptr
  %l24 = alloca ptr
  %l34 = alloca i32
  %l35 = alloca ptr
  %l36 = alloca ptr
  %l40 = alloca i32
  %l42 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l48 = alloca %"compiler/diagmsg:Msg"
  %l53 = alloca { i64, ptr }
  %l56 = alloca %"compiler/diagmsg:Msg"
  %l57 = alloca %"compiler/diagmsg:Msg"
  %l64 = alloca { i64, ptr }
  %l67 = alloca %"compiler/diagmsg:Msg"
  %l68 = alloca %"compiler/diagmsg:Msg"
  %l75 = alloca { i64, ptr }
  %l78 = alloca %"compiler/diagmsg:Msg"
  %l79 = alloca %"compiler/diagmsg:Msg"
  %l85 = alloca i64
  %l86 = alloca ptr
  %l87 = alloca i64
  %l91 = alloca ptr
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t5 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroValue(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  store i1 %t5, ptr %l10
  br label %bb1
bb1:
  %t6 = load i1, ptr %l10, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load ptr, ptr %l1, !tbaa !29
  %t11 = icmp eq ptr %t9, null
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb4, label %bb5
bb3:
  br label %bb19
bb4:
  %t15 = load ptr, ptr %l0, !tbaa !29
  store ptr %t15, ptr %l16, !tbaa !29
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t19 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t16)
  store i32 %t19, ptr %l19
  br label %bb6
bb5:
  store i1 false, ptr %l15, !tbaa !21
  br label %bb8
bb6:
  %t20 = load ptr, ptr %l16, !tbaa !29
  %t21 = load i32, ptr %l19, !tbaa !23
  %t22 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t20, i32 %t21)
  store i1 %t22, ptr %l20
  br label %bb7
bb7:
  %t23 = load i1, ptr %l20, !tbaa !21
  %t24 = xor i1 %t23, true
  store i1 %t24, ptr %l15, !tbaa !21
  br label %bb8
bb8:
  %t26 = load i1, ptr %l15, !tbaa !21
  br i1 %t26, label %bb9, label %bb10
bb9:
  %t27 = load ptr, ptr %l0, !tbaa !29
  store ptr %t27, ptr %l22, !tbaa !29
  %t28 = load ptr, ptr %l1, !tbaa !29
  %t30 = call ptr @compiler_2fcheck_2ereadPlace(ptr %v1, ptr %v1, ptr %t28)
  store ptr %t30, ptr %l24
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t31 = load ptr, ptr %l22, !tbaa !29
  %t32 = load ptr, ptr %l24, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroNeed(ptr %v0, ptr %v1, ptr %t31, ptr %t32)
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t33 = load i64, ptr %l3, !tbaa !24
  %t34 = load i64, ptr @G_2ecompiler_2fcheck_2eRoReturned, !tbaa !24
  %t37 = icmp eq i64 %t33, %t34
  br i1 %t37, label %bb14, label %bb15
bb14:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroResult(ptr %v0, ptr %v1, ptr %t39, ptr %t40)
  br label %bb16
bb15:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroDeepNeed(ptr %v0, ptr %v1, ptr %t43, ptr %t44)
  br label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb19:
  %t48 = load ptr, ptr %l1, !tbaa !29
  %t50 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t48)
  store i32 %t50, ptr %l34
  br label %bb20
bb20:
  %t51 = load i32, ptr %l34, !tbaa !23
  store i32 %t51, ptr %l4, !tbaa !23
  %t52 = load ptr, ptr %l0, !tbaa !29
  store ptr %t52, ptr %l35, !tbaa !29
  %t53 = load ptr, ptr %l0, !tbaa !29
  store ptr %t53, ptr %l36, !tbaa !29
  %t54 = load ptr, ptr %l1, !tbaa !29
  %t56 = icmp eq ptr %t54, null
  br i1 %t56, label %bb21, label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_57dc1f8c088d198a_6c44e525bc3c6ade)
  unreachable
bb22:
  br label %bb23
bb23:
  %t58 = load ptr, ptr %l1, !tbaa !29
  %t59 = load ptr, ptr %l36, !tbaa !29
  %t61 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroName(ptr %v0, ptr %v1, ptr %t59, ptr %t58)
  store i32 %t61, ptr %l40
  br label %bb24
bb24:
  %t62 = load i32, ptr %l4, !tbaa !23
  %t63 = load ptr, ptr %l35, !tbaa !29
  %t64 = load i32, ptr %l40, !tbaa !23
  %t66 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroFix(ptr %v0, ptr %s0, ptr %t63, i32 %t64, i32 %t62)
  store { i64, ptr } %t66, ptr %l42
  br label %bb25
bb25:
  %t67 = load { i64, ptr }, ptr %l42, !tbaa !27
  store { i64, ptr } %t67, ptr %l5, !tbaa !27
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load i32, ptr %l4, !tbaa !23
  %t72 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s0, ptr %t68, i32 %t69)
  store { i64, ptr } %t72, ptr %l45
  br label %bb26
bb26:
  %t73 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t74 = extractvalue { i64, ptr } %t73, 0
  %t75 = extractvalue { i64, ptr } %t73, 1
  %t76 = mul i64 %t74, 1
  %t77 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t76)
  call void @llvm.memcpy.p0.p0.i64(ptr %t77, ptr %t75, i64 %t76, i1 false)
  %t78 = insertvalue { i64, ptr } undef, i64 %t74, 0
  %t79 = insertvalue { i64, ptr } %t78, ptr %t77, 1
  %t80 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t83 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadOnlyCopyStored(ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t79, { i64, ptr } %t80)
  store %"compiler/diagmsg:Msg" %t83, ptr %l48
  br label %bb27
bb27:
  %t84 = load %"compiler/diagmsg:Msg", ptr %l48
  store %"compiler/diagmsg:Msg" %t84, ptr %l6
  %t85 = load i64, ptr %l3, !tbaa !24
  %t87 = icmp eq i64 %t85, 1
  br i1 %t87, label %bb28, label %bb29
bb28:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = load i32, ptr %l4, !tbaa !23
  %t93 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s0, ptr %t89, i32 %t90)
  store { i64, ptr } %t93, ptr %l53
  br label %bb30
bb29:
  br label %bb36
bb30:
  %t94 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t95 = extractvalue { i64, ptr } %t94, 0
  %t96 = extractvalue { i64, ptr } %t94, 1
  %t97 = mul i64 %t95, 1
  %t98 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t97)
  call void @llvm.memcpy.p0.p0.i64(ptr %t98, ptr %t96, i64 %t97, i1 false)
  %t99 = insertvalue { i64, ptr } undef, i64 %t95, 0
  %t100 = insertvalue { i64, ptr } %t99, ptr %t98, 1
  %t101 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t104 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadOnlyCopyDecl(ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t100, { i64, ptr } %t101)
  store %"compiler/diagmsg:Msg" %t104, ptr %l56
  br label %bb31
bb31:
  %t105 = load %"compiler/diagmsg:Msg", ptr %l6
  store %"compiler/diagmsg:Msg" %t105, ptr %l57
  %t106 = load %"compiler/diagmsg:Msg", ptr %l56
  store %"compiler/diagmsg:Msg" %t106, ptr %l6
  %t107 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e1
  br i1 %t107, label %bb32, label %bb33
bb32:
  %t109 = getelementptr %"compiler/diagmsg:Msg", ptr %l57, i32 0, i32 1
  %t110 = load { i64, ptr }, ptr %t109
  %t111 = extractvalue { i64, ptr } %t110, 1
  call void @__olang_region_release(ptr %t111)
  store { i64, ptr } zeroinitializer, ptr %t109
  br label %bb33
bb33:
  %t112 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t112, label %bb34, label %bb35
bb34:
  %t114 = getelementptr %"compiler/diagmsg:Msg", ptr %l57, i32 0, i32 2
  %t115 = load { i64, ptr }, ptr %t114
  %t116 = extractvalue { i64, ptr } %t115, 1
  call void @__olang_region_release(ptr %t116)
  store { i64, ptr } zeroinitializer, ptr %t114
  br label %bb35
bb35:
  br label %bb36
bb36:
  %t117 = load i64, ptr %l3, !tbaa !24
  %t119 = icmp eq i64 %t117, 2
  br i1 %t119, label %bb37, label %bb38
bb37:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t122 = load i32, ptr %l4, !tbaa !23
  %t125 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s0, ptr %t121, i32 %t122)
  store { i64, ptr } %t125, ptr %l64
  br label %bb39
bb38:
  br label %bb45
bb39:
  %t126 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t127 = extractvalue { i64, ptr } %t126, 0
  %t128 = extractvalue { i64, ptr } %t126, 1
  %t129 = mul i64 %t127, 1
  %t130 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t129)
  call void @llvm.memcpy.p0.p0.i64(ptr %t130, ptr %t128, i64 %t129, i1 false)
  %t131 = insertvalue { i64, ptr } undef, i64 %t127, 0
  %t132 = insertvalue { i64, ptr } %t131, ptr %t130, 1
  %t133 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t136 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadOnlyCopyReturned(ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t132, { i64, ptr } %t133)
  store %"compiler/diagmsg:Msg" %t136, ptr %l67
  br label %bb40
bb40:
  %t137 = load %"compiler/diagmsg:Msg", ptr %l6
  store %"compiler/diagmsg:Msg" %t137, ptr %l68
  %t138 = load %"compiler/diagmsg:Msg", ptr %l67
  store %"compiler/diagmsg:Msg" %t138, ptr %l6
  %t139 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e1
  br i1 %t139, label %bb41, label %bb42
bb41:
  %t141 = getelementptr %"compiler/diagmsg:Msg", ptr %l68, i32 0, i32 1
  %t142 = load { i64, ptr }, ptr %t141
  %t143 = extractvalue { i64, ptr } %t142, 1
  call void @__olang_region_release(ptr %t143)
  store { i64, ptr } zeroinitializer, ptr %t141
  br label %bb42
bb42:
  %t144 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t144, label %bb43, label %bb44
bb43:
  %t146 = getelementptr %"compiler/diagmsg:Msg", ptr %l68, i32 0, i32 2
  %t147 = load { i64, ptr }, ptr %t146
  %t148 = extractvalue { i64, ptr } %t147, 1
  call void @__olang_region_release(ptr %t148)
  store { i64, ptr } zeroinitializer, ptr %t146
  br label %bb44
bb44:
  br label %bb45
bb45:
  %t149 = load i64, ptr %l3, !tbaa !24
  %t151 = icmp eq i64 %t149, 3
  br i1 %t151, label %bb46, label %bb47
bb46:
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t154 = load i32, ptr %l4, !tbaa !23
  %t157 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s0, ptr %t153, i32 %t154)
  store { i64, ptr } %t157, ptr %l75
  br label %bb48
bb47:
  br label %bb54
bb48:
  %t158 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t159 = extractvalue { i64, ptr } %t158, 0
  %t160 = extractvalue { i64, ptr } %t158, 1
  %t161 = mul i64 %t159, 1
  %t162 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t161)
  call void @llvm.memcpy.p0.p0.i64(ptr %t162, ptr %t160, i64 %t161, i1 false)
  %t163 = insertvalue { i64, ptr } undef, i64 %t159, 0
  %t164 = insertvalue { i64, ptr } %t163, ptr %t162, 1
  %t165 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t168 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadOnlyCopyGlobal(ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t164, { i64, ptr } %t165)
  store %"compiler/diagmsg:Msg" %t168, ptr %l78
  br label %bb49
bb49:
  %t169 = load %"compiler/diagmsg:Msg", ptr %l6
  store %"compiler/diagmsg:Msg" %t169, ptr %l79
  %t170 = load %"compiler/diagmsg:Msg", ptr %l78
  store %"compiler/diagmsg:Msg" %t170, ptr %l6
  %t171 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e1
  br i1 %t171, label %bb50, label %bb51
bb50:
  %t173 = getelementptr %"compiler/diagmsg:Msg", ptr %l79, i32 0, i32 1
  %t174 = load { i64, ptr }, ptr %t173
  %t175 = extractvalue { i64, ptr } %t174, 1
  call void @__olang_region_release(ptr %t175)
  store { i64, ptr } zeroinitializer, ptr %t173
  br label %bb51
bb51:
  %t176 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t176, label %bb52, label %bb53
bb52:
  %t178 = getelementptr %"compiler/diagmsg:Msg", ptr %l79, i32 0, i32 2
  %t179 = load { i64, ptr }, ptr %t178
  %t180 = extractvalue { i64, ptr } %t179, 1
  call void @__olang_region_release(ptr %t180)
  store { i64, ptr } zeroinitializer, ptr %t178
  br label %bb53
bb53:
  br label %bb54
bb54:
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t183 = load %"compiler/diagmsg:Msg", ptr %l6
  %t187 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s0, ptr %t181, %"compiler/source:Span" %a2, %"compiler/diagmsg:Msg" %t183)
  store i64 %t187, ptr %l85
  br label %bb55
bb55:
  %t188 = load i64, ptr %l85, !tbaa !24
  %t189 = load ptr, ptr %l0, !tbaa !29
  store ptr %t189, ptr %l86, !tbaa !29
  store i64 %t188, ptr %l87, !tbaa !24
  %t191 = load ptr, ptr %l1, !tbaa !29
  %t193 = icmp eq ptr %t191, null
  br i1 %t193, label %bb56, label %bb57
bb56:
  call void @__olang_check_failed(ptr @olang_loc_658c1f9b991d3291_83ad80e13fec4285)
  unreachable
bb57:
  br label %bb58
bb58:
  %t195 = load ptr, ptr %l1, !tbaa !29
  %t197 = call ptr @compiler_2fcheck_2ereadPlace(ptr %v1, ptr %s0, ptr %t195)
  store ptr %t197, ptr %l91
  br label %bb59
bb59:
  %t198 = load ptr, ptr %l86, !tbaa !29
  %t199 = load i64, ptr %l87, !tbaa !24
  %t200 = load ptr, ptr %l91, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoteRo(ptr %v0, ptr %s0, ptr %t198, i64 %t199, ptr %t200)
  br label %bb60
bb60:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetReaches(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca %"compiler/generic:Context"
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca ptr
  %l14 = alloca i1
  %l19 = alloca i32
  %l23 = alloca i1
  %l31 = alloca i32
  %l39 = alloca { i64, ptr }
  %l48 = alloca i64
  %l49 = alloca %"compiler/generic:Context"
  %l57 = alloca { i64, ptr }
  %l60 = alloca ptr
  %l61 = alloca ptr
  %l62 = alloca i64
  %l68 = alloca i32
  %l72 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  %t75 = alloca %"compiler/generic:Context", align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  store i64 %a3, ptr %l3
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
  store i1 true, ptr %l14, !tbaa !21
  br label %bb4
bb2:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  %t13 = load i32, ptr %l1, !tbaa !23
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t16, ptr %l19
  br label %bb3
bb3:
  %t17 = load i32, ptr %l19, !range !{i32 0, i32 33}
  %t19 = trunc i64 18 to i32
  %t20 = icmp eq i32 %t17, %t19
  %t22 = xor i1 %t20, true
  store i1 %t22, ptr %l14, !tbaa !21
  br label %bb4
bb4:
  %t24 = load i1, ptr %l14, !tbaa !21
  br i1 %t24, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l23, !tbaa !21
  br label %bb7
bb6:
  %t25 = load i64, ptr %l3, !tbaa !24
  %t27 = icmp sgt i64 %t25, 64
  store i1 %t27, ptr %l23, !tbaa !21
  br label %bb7
bb7:
  %t29 = load i1, ptr %l23, !tbaa !21
  br i1 %t29, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/check:Checker", ptr %t31, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t36 = getelementptr %"compiler/generic:Program", ptr %t34, i32 0, i32 2
  %t37 = load i32, ptr %l1, !tbaa !23
  %t40 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t36, i32 %t37)
  store i32 %t40, ptr %l31
  br label %bb11
bb11:
  %t41 = load i32, ptr %l31, !tbaa !23
  store i32 %t41, ptr %l4, !tbaa !23
  %t42 = load i32, ptr %l4, !tbaa !23
  %t43 = load i32, ptr %l2, !tbaa !23
  %t46 = icmp eq i32 %t42, %t43
  br i1 %t46, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/check:Checker", ptr %t49, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t53 = load i32, ptr %l4, !tbaa !23
  %t56 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorMembers(ptr %v0, ptr %s0, ptr %t52, i32 %t53)
  store { i64, ptr } %t56, ptr %l39
  br label %bb15
bb15:
  %t57 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t57, ptr %l5, !tbaa !27
  %t58 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t60 = extractvalue { i64, ptr } %t58, 0
  %t62 = icmp eq i64 %t60, 0
  br i1 %t62, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/check:Checker", ptr %t65, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !29
  %t70 = getelementptr %"compiler/generic:Program", ptr %t68, i32 0, i32 2
  %t71 = load i32, ptr %l4, !tbaa !23
  %t74 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t70, i32 %t71)
  store i64 %t74, ptr %l48
  br label %bb19
bb19:
  %t76 = load i64, ptr %l48, !tbaa !24
  call void @compiler_2fgeneric_3aContext_2ector(ptr %t75, ptr %s0, i64 %t76, i64 -1)
  call void @llvm.memmove.p0.p0.i64(ptr %l49, ptr %t75, i64 160, i1 false)
  br label %bb20
bb20:
  call void @llvm.memmove.p0.p0.i64(ptr %l6, ptr %l49, i64 160, i1 false)
  %t77 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t77, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t79 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t81 = extractvalue { i64, ptr } %t79, 0
  store i64 %t81, ptr %l9, !tbaa !24
  br label %bb21
bb21:
  %t83 = load i64, ptr %l8, !tbaa !24
  %t84 = load i64, ptr %l9, !tbaa !24
  %t87 = icmp slt i64 %t83, %t84
  %t89 = xor i1 %t87, true
  br i1 %t89, label %bb22, label %bb23
bb22:
  br label %bb33
bb23:
  br label %bb24
bb24:
  %t91 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t91, ptr %l57, !tbaa !27
  %t92 = load i64, ptr %l8, !tbaa !24
  %t94 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !27
  %t96 = getelementptr ptr, ptr %t95, i64 %t92
  %t97 = load ptr, ptr %t96, !tbaa !39
  store ptr %t97, ptr %l10, !tbaa !29
  %t99 = load ptr, ptr %l0, !tbaa !29
  store ptr %t99, ptr %l60, !tbaa !29
  %t100 = load ptr, ptr %l10, !tbaa !29
  store ptr %t100, ptr %l61, !tbaa !29
  %t101 = ptrtoint ptr %s0 to i64
  store i64 %t101, ptr %l62, !tbaa !24
  %t102 = load i1, ptr @olang_2esole_2eArray_3ccompiler_2fast_3aPath_26_3e_2e_2d1
  br i1 %t102, label %bb25, label %bb26
bb25:
  %t104 = load ptr, ptr %l61, !tbaa !29
  %t105 = call ptr @__olang_region_or(ptr %t104, ptr %s0)
  %t106 = ptrtoint ptr %t105 to i64
  store i64 %t106, ptr %l62, !tbaa !24
  br label %bb26
bb26:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"compiler/check:Checker", ptr %t107, i32 0, i32 1
  %t110 = load ptr, ptr %t109, !tbaa !29
  %t111 = load ptr, ptr %l10, !tbaa !29
  %t112 = load i64, ptr %l62
  %t113 = inttoptr i64 %t112 to ptr
  %t117 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorSetItem(ptr %v0, ptr %s0, ptr %t113, ptr %t110, ptr %l6, ptr %t111)
  store i32 %t117, ptr %l68
  br label %bb27
bb27:
  %t118 = load i32, ptr %l2, !tbaa !23
  %t119 = load i64, ptr %l3, !tbaa !24
  %t121 = add i64 %t119, 1
  %t122 = load ptr, ptr %l60, !tbaa !29
  %t123 = load i32, ptr %l68, !tbaa !23
  %t126 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetReaches(ptr %v0, ptr %t122, i32 %t123, i32 %t118, i64 %t121)
  store i1 %t126, ptr %l72
  br label %bb28
bb28:
  %t127 = load i1, ptr %l72, !tbaa !21
  br i1 %t127, label %bb29, label %bb30
bb29:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb30:
  br label %bb31
bb31:
  br label %bb32
bb32:
  %t129 = load i64, ptr %l8, !tbaa !24
  %t131 = add i64 %t129, 1
  store i64 %t131, ptr %l8, !tbaa !24
  br label %bb21
bb33:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esettleInPlace(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i1
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca %"compiler/check:inPlaceRead"
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca %"compiler/effects:Facts"
  %l11 = alloca i64
  %l13 = alloca i1
  %l18 = alloca i64
  %l24 = alloca i64
  %l26 = alloca i64
  %l31 = alloca %"compiler/check:inPlaceRead"
  %l33 = alloca %"compiler/check:inPlaceRead"
  %l37 = alloca i1
  %l39 = alloca i64
  %l41 = alloca i64
  %l46 = alloca i64
  %l48 = alloca ptr
  %l50 = alloca %"compiler/effects:Facts"
  %l52 = alloca i1
  %l54 = alloca i1
  %l56 = alloca i1
  %s3 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 65
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3ainPlaceRead_3e_2eLe_Hf613227d99bb55cc0c1d4d516f382642(ptr %v0, ptr %t3)
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
  store i1 false, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/check:Checker", ptr %t26, i32 0, i32 9
  store ptr null, ptr %t28, !tbaa !29
  store i1 false, ptr %l1, !tbaa !21
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/check:Checker", ptr %t29, i32 0, i32 65
  store ptr %t31, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb9
bb9:
  store %olang.scope zeroinitializer, ptr %s3
  %t33 = load i64, ptr %l3, !tbaa !24
  store i64 %t33, ptr %l24, !tbaa !24
  %t34 = load ptr, ptr %l2, !tbaa !29
  %t36 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3ainPlaceRead_3e_2eLe_Hf613227d99bb55cc0c1d4d516f382642(ptr %v0, ptr %t34)
  store i64 %t36, ptr %l26
  br label %bb10
bb10:
  %t37 = load i64, ptr %l24, !tbaa !24
  %t38 = load i64, ptr %l26, !tbaa !24
  %t39 = icmp slt i64 %t37, %t38
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s3)
  br label %bb44
bb12:
  br label %bb13
bb13:
  %t43 = load ptr, ptr %l2, !tbaa !29
  %t44 = load i64, ptr %l3, !tbaa !24
  %t47 = call %"compiler/check:inPlaceRead" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3ainPlaceRead_3e_2eAt_Hf62b397eb49933d0308b5b903703d314(ptr %v0, ptr %v0, ptr %t43, i64 %t44)
  store %"compiler/check:inPlaceRead" %t47, ptr %l31
  br label %bb14
bb14:
  %t49 = call %"compiler/check:inPlaceRead" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fcheck_3ainPlaceRead(ptr %v0, ptr %l31)
  store %"compiler/check:inPlaceRead" %t49, ptr %l33
  br label %bb15
bb15:
  %t50 = load %"compiler/check:inPlaceRead", ptr %l33
  store %"compiler/check:inPlaceRead" %t50, ptr %l4
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/check:Checker", ptr %t51, i32 0, i32 71
  %t54 = getelementptr %"compiler/check:inPlaceRead", ptr %l4, i32 0, i32 0
  %t55 = load { i64, ptr }, ptr %t54, !tbaa !27
  %t58 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6b5ccacad8db807339a3579aa8c82ff8(ptr %v0, ptr %v0, ptr %t53, { i64, ptr } %t55)
  store i1 %t58, ptr %l37
  br label %bb16
bb16:
  %t59 = load i1, ptr %l37, !tbaa !21
  br i1 %t59, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s3)
  br label %bb43
bb18:
  br label %bb19
bb19:
  %t60 = getelementptr %"compiler/check:inPlaceRead", ptr %l4, i32 0, i32 1
  store ptr %t60, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb20
bb20:
  %t62 = load i64, ptr %l6, !tbaa !24
  store i64 %t62, ptr %l39, !tbaa !24
  %t63 = load ptr, ptr %l5, !tbaa !29
  %t65 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s3, ptr %t63)
  store i64 %t65, ptr %l41
  br label %bb21
bb21:
  %t66 = load i64, ptr %l39, !tbaa !24
  %t67 = load i64, ptr %l41, !tbaa !24
  %t68 = icmp slt i64 %t66, %t67
  %t70 = xor i1 %t68, true
  br i1 %t70, label %bb22, label %bb23
bb22:
  br label %bb42
bb23:
  br label %bb24
bb24:
  %t72 = load ptr, ptr %l5, !tbaa !29
  %t73 = load i64, ptr %l6, !tbaa !24
  %t76 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s3, ptr %t72, i64 %t73)
  store i64 %t76, ptr %l46
  br label %bb25
bb25:
  %t77 = load i64, ptr %l46, !tbaa !24
  store i64 %t77, ptr %l7, !tbaa !24
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eEffects(ptr %v0, ptr %v0, ptr %t78)
  store ptr %t80, ptr %l48
  br label %bb26
bb26:
  %t81 = load i64, ptr %l7, !tbaa !24
  %t82 = load ptr, ptr %l48, !tbaa !29
  %t84 = call %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eOf(ptr %v0, ptr %t82, i64 %t81)
  store %"compiler/effects:Facts" %t84, ptr %l50
  br label %bb27
bb27:
  %t85 = load %"compiler/effects:Facts", ptr %l50
  store %"compiler/effects:Facts" %t85, ptr %l8
  %t86 = getelementptr %"compiler/effects:Facts", ptr %l8, i32 0, i32 2
  %t87 = load i1, ptr %t86, !tbaa !21
  br i1 %t87, label %bb28, label %bb29
bb28:
  store i1 true, ptr %l52, !tbaa !21
  br label %bb30
bb29:
  %t89 = getelementptr %"compiler/effects:Facts", ptr %l8, i32 0, i32 9
  %t90 = load i1, ptr %t89, !tbaa !21
  store i1 %t90, ptr %l52, !tbaa !21
  br label %bb30
bb30:
  %t92 = load i1, ptr %l52, !tbaa !21
  br i1 %t92, label %bb31, label %bb32
bb31:
  store i1 true, ptr %l54, !tbaa !21
  br label %bb33
bb32:
  %t93 = getelementptr %"compiler/effects:Facts", ptr %l8, i32 0, i32 14
  %t94 = load i1, ptr %t93, !tbaa !21
  store i1 %t94, ptr %l54, !tbaa !21
  br label %bb33
bb33:
  %t96 = load i1, ptr %l54, !tbaa !21
  br i1 %t96, label %bb34, label %bb35
bb34:
  store i1 true, ptr %l56, !tbaa !21
  br label %bb36
bb35:
  %t97 = getelementptr %"compiler/effects:Facts", ptr %l8, i32 0, i32 13
  %t98 = load i1, ptr %t97, !tbaa !21
  store i1 %t98, ptr %l56, !tbaa !21
  br label %bb36
bb36:
  %t100 = load i1, ptr %l56, !tbaa !21
  %t101 = xor i1 %t100, true
  br i1 %t101, label %bb37, label %bb38
bb37:
  br label %bb41
bb38:
  br label %bb39
bb39:
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr %"compiler/check:Checker", ptr %t103, i32 0, i32 71
  %t106 = getelementptr %"compiler/check:inPlaceRead", ptr %l4, i32 0, i32 0
  %t107 = load { i64, ptr }, ptr %t106, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H2b85ceff512af6e6ca26c554a1c16247(ptr %v0, ptr %v0, ptr %t105, { i64, ptr } %t107, i1 true)
  br label %bb40
bb40:
  store i1 true, ptr %l1, !tbaa !21
  br label %bb42
bb41:
  %t110 = load i64, ptr %l6, !tbaa !24
  %t112 = add i64 %t110, 1
  store i64 %t112, ptr %l6, !tbaa !24
  br label %bb20
bb42:
  call void @__olang_scope_close(ptr %s3)
  br label %bb43
bb43:
  %t114 = load i64, ptr %l3, !tbaa !24
  %t116 = add i64 %t114, 1
  store i64 %t116, ptr %l3, !tbaa !24
  br label %bb9
bb44:
  %t118 = load i1, ptr %l1, !tbaa !21
  store i1 %t118, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estoreCopy(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i1
  %l6 = alloca i32
  %l9 = alloca i1
  %l13 = alloca i1
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l18 = alloca { i64, ptr }
  %l20 = alloca ptr
  %l27 = alloca i1
  %l28 = alloca i1
  %l33 = alloca i1
  %l34 = alloca i1
  %l36 = alloca i1
  %l39 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t1)
  store i32 %t3, ptr %l6
  br label %bb1
bb1:
  %t4 = load i32, ptr %l6, !tbaa !23
  store i32 %t4, ptr %l3, !tbaa !23
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t6 = load i32, ptr %l3, !tbaa !23
  %t9 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t5, i32 %t6)
  store i1 %t9, ptr %l9
  br label %bb2
bb2:
  %t10 = load i1, ptr %l9, !tbaa !21
  br i1 %t10, label %bb3, label %bb4
bb3:
  %t11 = load ptr, ptr %l2, !tbaa !29
  store ptr %t11, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load ptr, ptr %l2, !tbaa !29
  %t17 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueMoved(ptr %v0, ptr %v2, ptr %t13, ptr %t14)
  store i1 %t17, ptr %l13
  br label %bb6
bb6:
  %t18 = load i1, ptr %l13, !tbaa !21
  store i1 %t18, ptr %l4, !tbaa !21
  %t19 = load ptr, ptr %l0, !tbaa !29
  store ptr %t19, ptr %l14, !tbaa !29
  %t20 = load ptr, ptr %l2, !tbaa !29
  store ptr %t20, ptr %l15, !tbaa !29
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t25 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eslotWhat(ptr %v0, ptr %v1, ptr %v3, ptr %t21, ptr %t22)
  store { i64, ptr } %t25, ptr %l18
  br label %bb7
bb7:
  %t26 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t27 = extractvalue { i64, ptr } %t26, 0
  %t28 = extractvalue { i64, ptr } %t26, 1
  %t29 = mul i64 %t27, 1
  %t30 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t29)
  call void @llvm.memcpy.p0.p0.i64(ptr %t30, ptr %t28, i64 %t29, i1 false)
  %t31 = insertvalue { i64, ptr } undef, i64 %t27, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t30, 1
  %t33 = load ptr, ptr %l14, !tbaa !29
  %t34 = load ptr, ptr %l15, !tbaa !29
  %t36 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueLand(ptr %v0, ptr %v2, ptr %v3, ptr %v3, ptr %t33, ptr %t34, { i64, ptr } %t32, i1 false)
  store ptr %t36, ptr %l20
  br label %bb8
bb8:
  %t37 = load ptr, ptr %l20, !tbaa !29
  store ptr %t37, ptr %l2, !tbaa !29
  %t38 = load i1, ptr %l4, !tbaa !21
  br i1 %t38, label %bb9, label %bb10
bb9:
  %t40 = load ptr, ptr %l2, !tbaa !29
  store ptr %t40, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/check:Checker", ptr %t42, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t47 = getelementptr %"compiler/generic:Program", ptr %t45, i32 0, i32 2
  %t48 = load i32, ptr %l3, !tbaa !23
  %t51 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnsParts(ptr %v0, ptr %t47, i32 %t48)
  store i1 %t51, ptr %l27
  br label %bb12
bb12:
  %t52 = load i1, ptr %l27, !tbaa !21
  br i1 %t52, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l28, !tbaa !21
  br label %bb20
bb14:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/check:Checker", ptr %t53, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t58 = getelementptr %"compiler/generic:Program", ptr %t56, i32 0, i32 2
  %t59 = load i32, ptr %l3, !tbaa !23
  %t62 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnedPart(ptr %v0, ptr %t58, i32 %t59)
  store i1 %t62, ptr %l33
  br label %bb15
bb15:
  %t63 = load i1, ptr %l33, !tbaa !21
  br i1 %t63, label %bb16, label %bb17
bb16:
  %t64 = load ptr, ptr %l1, !tbaa !29
  %t66 = call i1 @compiler_2fcheck_2epartPlace(ptr %v1, ptr %t64)
  store i1 %t66, ptr %l36
  br label %bb18
bb17:
  store i1 false, ptr %l34, !tbaa !21
  br label %bb19
bb18:
  %t67 = load i1, ptr %l36, !tbaa !21
  store i1 %t67, ptr %l34, !tbaa !21
  br label %bb19
bb19:
  %t68 = load i1, ptr %l34, !tbaa !21
  store i1 %t68, ptr %l28, !tbaa !21
  br label %bb20
bb20:
  %t69 = load i1, ptr %l28, !tbaa !21
  br i1 %t69, label %bb21, label %bb22
bb21:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load ptr, ptr %l2, !tbaa !29
  %t74 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eownCopy(ptr %v0, ptr %v3, ptr %v3, ptr %t70, ptr %t71)
  store ptr %t74, ptr %l39
  br label %bb23
bb22:
  br label %bb24
bb23:
  %t75 = load ptr, ptr %l39, !tbaa !29
  store ptr %t75, ptr %rv
  br label %ret
bb24:
  %t76 = load ptr, ptr %l2, !tbaa !29
  store ptr %t76, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etoDeclaredFunc(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca i32
  %l10 = alloca i32
  %l14 = alloca ptr
  %l15 = alloca %"compiler/source:Span"
  %l18 = alloca %"compiler/diagmsg:Msg"
  %l19 = alloca i64
  %l24 = alloca ptr
  %l26 = alloca { i64, ptr }
  %l30 = alloca ptr
  %l33 = alloca i32
  %l42 = alloca i32
  %l45 = alloca i1
  %l50 = alloca i32
  %l53 = alloca ptr
  %l54 = alloca %"compiler/source:Span"
  %l55 = alloca ptr
  %l60 = alloca i32
  %l61 = alloca ptr
  %l62 = alloca ptr
  %l63 = alloca ptr
  %l68 = alloca i1
  %l69 = alloca i32
  %l74 = alloca i32
  %l76 = alloca { i64, ptr }
  %l78 = alloca %"compiler/source:Span"
  %l79 = alloca ptr
  %s1 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i32, ptr %l2, !tbaa !23
  %t8 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclaredFunc(ptr %v0, ptr %t4, i32 %t5)
  store i32 %t8, ptr %l10
  br label %bb1
bb1:
  %t9 = load i32, ptr %l10, !tbaa !23
  store i32 %t9, ptr %l4, !tbaa !23
  %t10 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t10, 0
  %t14 = icmp ne i64 %t12, 1
  br i1 %t14, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t16 = load ptr, ptr %l0, !tbaa !29
  store ptr %t16, ptr %l14, !tbaa !29
  %t17 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t17, ptr %l15
  %t18 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t20 = extractvalue { i64, ptr } %t18, 0
  %t22 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArgCount(ptr %s1, ptr %s1, i64 1, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d24, i32 0, i32 1) }, i64 %t20)
  store %"compiler/diagmsg:Msg" %t22, ptr %l18
  br label %bb4
bb3:
  br label %bb8
bb4:
  %t23 = load ptr, ptr %l14, !tbaa !29
  %t24 = load %"compiler/source:Span", ptr %l15
  %t25 = load %"compiler/diagmsg:Msg", ptr %l18
  %t26 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s1, ptr %t23, %"compiler/source:Span" %t24, %"compiler/diagmsg:Msg" %t25)
  store i64 %t26, ptr %l19
  br label %bb5
bb5:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load { i64, ptr }, ptr %l3, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v1, ptr %t27, { i64, ptr } %t28)
  br label %bb6
bb6:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load %"compiler/source:Span", ptr %l1
  %t35 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t31, %"compiler/source:Span" %t32)
  store ptr %t35, ptr %l24
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s1)
  %t36 = load ptr, ptr %l24, !tbaa !29
  store ptr %t36, ptr %rv
  br label %ret
bb8:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t38, ptr %l26, !tbaa !27
  %t39 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !27
  %t41 = getelementptr ptr, ptr %t40, i64 0
  %t42 = load ptr, ptr %t41, !tbaa !39
  %t44 = load i32, ptr %l4, !tbaa !23
  %t48 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %t37, ptr %t42, i32 %t44)
  store ptr %t48, ptr %l30
  br label %bb9
bb9:
  %t49 = load ptr, ptr %l30, !tbaa !29
  store ptr %t49, ptr %l5, !tbaa !29
  %t50 = load ptr, ptr %l5, !tbaa !29
  %t53 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t50)
  store i32 %t53, ptr %l33
  br label %bb10
bb10:
  %t54 = load i32, ptr %l33, !tbaa !23
  store i32 %t54, ptr %l6, !tbaa !23
  %t55 = load i32, ptr %l6, !tbaa !23
  %t56 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t59 = icmp eq i32 %t55, %t56
  br i1 %t59, label %bb11, label %bb12
bb11:
  %t61 = load ptr, ptr %l5, !tbaa !29
  store ptr %t61, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/check:Checker", ptr %t63, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t68 = getelementptr %"compiler/generic:Program", ptr %t66, i32 0, i32 2
  %t69 = load i32, ptr %l6, !tbaa !23
  %t72 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncTag(ptr %v0, ptr %t68, i32 %t69)
  store i32 %t72, ptr %l42
  br label %bb14
bb14:
  %t73 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t74 = load i32, ptr %l42, !tbaa !23
  %t76 = icmp ne i32 %t74, %t73
  br i1 %t76, label %bb15, label %bb16
bb15:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/check:Checker", ptr %t78, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !29
  %t83 = getelementptr %"compiler/generic:Program", ptr %t81, i32 0, i32 2
  %t84 = load i32, ptr %l6, !tbaa !23
  %t87 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncTag(ptr %v0, ptr %t83, i32 %t84)
  store i32 %t87, ptr %l50
  br label %bb17
bb16:
  store i1 false, ptr %l45, !tbaa !21
  br label %bb18
bb17:
  %t88 = load i32, ptr %l2, !tbaa !23
  %t89 = load i32, ptr %l50, !tbaa !23
  %t91 = icmp ne i32 %t89, %t88
  store i1 %t91, ptr %l45, !tbaa !21
  br label %bb18
bb18:
  %t93 = load i1, ptr %l45, !tbaa !21
  br i1 %t93, label %bb19, label %bb20
bb19:
  %t94 = load ptr, ptr %l0, !tbaa !29
  store ptr %t94, ptr %l53, !tbaa !29
  %t95 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t95, ptr %l54
  %t96 = load ptr, ptr %l5, !tbaa !29
  store ptr %t96, ptr %l55, !tbaa !29
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/check:Checker", ptr %t97, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !29
  %t102 = getelementptr %"compiler/generic:Program", ptr %t100, i32 0, i32 2
  %t103 = load i32, ptr %l6, !tbaa !23
  %t106 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eUntagged(ptr %v0, ptr %t102, i32 %t103)
  store i32 %t106, ptr %l60
  br label %bb21
bb20:
  br label %bb23
bb21:
  %t107 = load ptr, ptr %l53, !tbaa !29
  %t108 = load %"compiler/source:Span", ptr %l54
  %t109 = load ptr, ptr %l55, !tbaa !29
  %t110 = load i32, ptr %l60, !tbaa !23
  %t111 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvert(ptr %v0, ptr %v2, ptr %v2, ptr %t107, %"compiler/source:Span" %t108, ptr %t109, i32 %t110)
  store ptr %t111, ptr %l61
  br label %bb22
bb22:
  %t112 = load ptr, ptr %l61, !tbaa !29
  store ptr %t112, ptr %l5, !tbaa !29
  br label %bb23
bb23:
  %t113 = load ptr, ptr %l0, !tbaa !29
  store ptr %t113, ptr %l62, !tbaa !29
  %t114 = load ptr, ptr %l5, !tbaa !29
  store ptr %t114, ptr %l63, !tbaa !29
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t117 = getelementptr %"compiler/check:Checker", ptr %t115, i32 0, i32 1
  %t118 = load ptr, ptr %t117, !tbaa !29
  %t120 = getelementptr %"compiler/generic:Program", ptr %t118, i32 0, i32 2
  %t121 = load i32, ptr %l6, !tbaa !23
  %t124 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncNullable(ptr %v0, ptr %t120, i32 %t121)
  store i1 %t124, ptr %l68
  br label %bb24
bb24:
  %t125 = load i1, ptr %l68, !tbaa !21
  br i1 %t125, label %bb25, label %bb26
bb25:
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t128 = getelementptr %"compiler/check:Checker", ptr %t126, i32 0, i32 1
  %t129 = load ptr, ptr %t128, !tbaa !29
  %t131 = getelementptr %"compiler/generic:Program", ptr %t129, i32 0, i32 2
  %t132 = load i32, ptr %l4, !tbaa !23
  %t135 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOrNull(ptr %v0, ptr %t131, i32 %t132)
  store i32 %t135, ptr %l74
  br label %bb27
bb26:
  %t136 = load i32, ptr %l4, !tbaa !23
  store i32 %t136, ptr %l69, !tbaa !23
  br label %bb28
bb27:
  %t138 = load i32, ptr %l74, !tbaa !23
  store i32 %t138, ptr %l69, !tbaa !23
  br label %bb28
bb28:
  %t139 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t139, ptr %l76, !tbaa !27
  %t140 = getelementptr { i64, ptr }, ptr %l76, i32 0, i32 1
  %t141 = load ptr, ptr %t140, !tbaa !27
  %t142 = getelementptr ptr, ptr %t141, i64 0
  %t143 = load ptr, ptr %t142, !tbaa !39
  %t145 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t143)
  store %"compiler/source:Span" %t145, ptr %l78
  br label %bb29
bb29:
  %t146 = load ptr, ptr %l62, !tbaa !29
  %t147 = load ptr, ptr %l63, !tbaa !29
  %t148 = load i32, ptr %l69, !tbaa !23
  %t149 = load %"compiler/source:Span", ptr %l78
  %t150 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v2, ptr %v2, ptr %t146, ptr %t147, i32 %t148, %"compiler/source:Span" %t149)
  store ptr %t150, ptr %l79
  br label %bb30
bb30:
  %t151 = load ptr, ptr %l79, !tbaa !29
  store ptr %t151, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etopSets(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l3 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l4 = alloca ptr
  %l5 = alloca i64
  %l11 = alloca ptr
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1, ptr %l3
  br label %bb1
bb1:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l3
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %l2
  %t3 = load ptr, ptr %l0, !tbaa !29
  store ptr %t3, ptr %l4, !tbaa !29
  %t4 = load i64, ptr %l1, !tbaa !24
  store i64 %t4, ptr %l5, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/check:Checker", ptr %t5, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t10 = getelementptr %"compiler/generic:Program", ptr %t8, i32 0, i32 0
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t13 = getelementptr %"compiler/load:Loader", ptr %t11, i32 0, i32 10
  %t14 = load i64, ptr %l1, !tbaa !24
  %t17 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t13, i64 %t14)
  store ptr %t17, ptr %l11
  br label %bb2
bb2:
  %t18 = load ptr, ptr %l11, !tbaa !29
  %t20 = getelementptr %"compiler/load:Module", ptr %t18, i32 0, i32 8
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !27
  %t22 = load ptr, ptr %l4, !tbaa !29
  %t23 = load i64, ptr %l5, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etopSetDecls(ptr %v0, ptr %v0, ptr %s0, ptr %t22, i64 %t23, { i64, ptr } %t21, i1 false, i1 true, ptr %l2)
  br label %bb3
bb3:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewantCopyParts(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
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
  %l15 = alloca i1
  %l19 = alloca i32
  %l24 = alloca ptr
  %l29 = alloca i32
  %l30 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
  %l50 = alloca ptr
  %l55 = alloca i32
  %l56 = alloca { i64, ptr }
  %l63 = alloca { i64, ptr }
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
  %t8 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t4, i32 %t5)
  store i1 %t8, ptr %l15
  br label %bb1
bb1:
  %t9 = load i1, ptr %l15, !tbaa !21
  %t10 = xor i1 %t9, true
  br i1 %t10, label %bb2, label %bb3
bb2:
  br label %ret
bb3:
  br label %bb4
bb4:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load i32, ptr %l1, !tbaa !23
  %t16 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t16, ptr %l19
  br label %bb5
bb5:
  %t17 = load i32, ptr %l19, !range !{i32 0, i32 6}
  store i32 %t17, ptr %l3
  %t18 = load i32, ptr %l3, !range !{i32 0, i32 6}
  %t20 = trunc i64 0 to i32
  %t21 = icmp eq i32 %t18, %t20
  br i1 %t21, label %bb6, label %bb7
bb6:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/check:Checker", ptr %t23, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t28 = getelementptr %"compiler/generic:Program", ptr %t26, i32 0, i32 2
  store ptr %t28, ptr %l24, !tbaa !29
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/check:Checker", ptr %t29, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t34 = getelementptr %"compiler/generic:Program", ptr %t32, i32 0, i32 2
  %t35 = load i32, ptr %l1, !tbaa !23
  %t38 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t34, i32 %t35)
  store i32 %t38, ptr %l29
  br label %bb8
bb7:
  %t39 = load i32, ptr %l3, !range !{i32 0, i32 6}
  %t41 = trunc i64 1 to i32
  %t42 = icmp eq i32 %t39, %t41
  br i1 %t42, label %bb17, label %bb18
bb8:
  %t44 = load ptr, ptr %l24, !tbaa !29
  %t45 = load i32, ptr %l29, !tbaa !23
  %t46 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t44, i32 %t45)
  store { i64, ptr } %t46, ptr %l30
  br label %bb9
bb9:
  %t47 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t47, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t48 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t50 = extractvalue { i64, ptr } %t48, 0
  store i64 %t50, ptr %l6, !tbaa !24
  br label %bb10
bb10:
  %t52 = load i64, ptr %l5, !tbaa !24
  %t53 = load i64, ptr %l6, !tbaa !24
  %t56 = icmp slt i64 %t52, %t53
  %t58 = xor i1 %t56, true
  br i1 %t58, label %bb11, label %bb12
bb11:
  br label %bb16
bb12:
  br label %bb13
bb13:
  %t60 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t60, ptr %l37, !tbaa !27
  %t61 = load i64, ptr %l5, !tbaa !24
  %t63 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !27
  %t65 = getelementptr i32, ptr %t64, i64 %t61
  %t66 = load i32, ptr %t65, !tbaa !33
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = load i64, ptr %l2, !tbaa !24
  %t72 = add i64 %t70, 1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewantCopy(ptr %v0, ptr %t68, i32 %t66, i64 %t72)
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t76 = load i64, ptr %l5, !tbaa !24
  %t78 = add i64 %t76, 1
  store i64 %t78, ptr %l5, !tbaa !24
  br label %bb10
bb16:
  br label %bb29
bb17:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/check:Checker", ptr %t80, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !29
  %t85 = getelementptr %"compiler/generic:Program", ptr %t83, i32 0, i32 2
  store ptr %t85, ptr %l50, !tbaa !29
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/check:Checker", ptr %t86, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !29
  %t91 = getelementptr %"compiler/generic:Program", ptr %t89, i32 0, i32 2
  %t92 = load i32, ptr %l1, !tbaa !23
  %t95 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t91, i32 %t92)
  store i32 %t95, ptr %l55
  br label %bb19
bb18:
  br label %bb28
bb19:
  %t96 = load ptr, ptr %l50, !tbaa !29
  %t97 = load i32, ptr %l55, !tbaa !23
  %t98 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t96, i32 %t97)
  store { i64, ptr } %t98, ptr %l56
  br label %bb20
bb20:
  %t99 = load { i64, ptr }, ptr %l56, !tbaa !27
  store { i64, ptr } %t99, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t100 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t102 = extractvalue { i64, ptr } %t100, 0
  store i64 %t102, ptr %l10, !tbaa !24
  br label %bb21
bb21:
  %t104 = load i64, ptr %l9, !tbaa !24
  %t105 = load i64, ptr %l10, !tbaa !24
  %t108 = icmp slt i64 %t104, %t105
  %t110 = xor i1 %t108, true
  br i1 %t110, label %bb22, label %bb23
bb22:
  br label %bb27
bb23:
  br label %bb24
bb24:
  %t112 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t112, ptr %l63, !tbaa !27
  %t113 = load i64, ptr %l9, !tbaa !24
  %t115 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t116 = load ptr, ptr %t115, !tbaa !27
  %t117 = getelementptr i32, ptr %t116, i64 %t113
  %t118 = load i32, ptr %t117, !tbaa !33
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = load i64, ptr %l2, !tbaa !24
  %t124 = add i64 %t122, 1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewantCopy(ptr %v0, ptr %t120, i32 %t118, i64 %t124)
  br label %bb25
bb25:
  br label %bb26
bb26:
  %t128 = load i64, ptr %l9, !tbaa !24
  %t130 = add i64 %t128, 1
  store i64 %t130, ptr %l9, !tbaa !24
  br label %bb21
bb27:
  br label %bb28
bb28:
  br label %bb29
bb29:
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eweakWord(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l5 = alloca %"compiler/source:Span"
  %l11 = alloca %"compiler/source:Span"
  %l14 = alloca i1
  %l17 = alloca { i64, ptr }
  %l18 = alloca i1
  %l21 = alloca %"compiler/source:Span"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/source:Span"
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t1)
  store %"compiler/source:Span" %t3, ptr %l5
  br label %bb1
bb1:
  %t4 = getelementptr %"compiler/source:Span", ptr %l5, i32 0, i32 0
  %t5 = load i32, ptr %t4, !tbaa !23
  store i32 %t5, ptr %l2, !tbaa !23
  %t7 = load i32, ptr %l2, !tbaa !23
  %t9 = sub i32 %t7, 5
  %t10 = load i32, ptr %l2, !tbaa !23
  %t12 = sub i32 %t10, 1
  %t15 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 %t9, i32 %t12)
  store %"compiler/source:Span" %t15, ptr %l11
  br label %bb2
bb2:
  %t16 = load %"compiler/source:Span", ptr %l11
  store %"compiler/source:Span" %t16, ptr %l3
  %t17 = load i32, ptr %l2, !tbaa !23
  %t19 = icmp sge i32 %t17, 5
  br i1 %t19, label %bb3, label %bb4
bb3:
  %t22 = load %"compiler/source:Span", ptr %l3
  %t25 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %a0, %"compiler/source:Span" %t22)
  store { i64, ptr } %t25, ptr %l17
  br label %bb5
bb4:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb7
bb5:
  %t26 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t27 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t26, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d25, i32 0, i32 1) })
  store i1 %t27, ptr %l18
  br label %bb6
bb6:
  %t28 = load i1, ptr %l18, !tbaa !21
  store i1 %t28, ptr %l14, !tbaa !21
  br label %bb7
bb7:
  %t29 = load i1, ptr %l14, !tbaa !21
  br i1 %t29, label %bb8, label %bb9
bb8:
  %t30 = load %"compiler/source:Span", ptr %l3
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/source:Span" %t30, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t32 = load ptr, ptr %l1, !tbaa !29
  %t34 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t32)
  store %"compiler/source:Span" %t34, ptr %l21
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s0)
  %t35 = load %"compiler/source:Span", ptr %l21
  store %"compiler/source:Span" %t35, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewrittenEnum(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca i1
  %l13 = alloca i32
  %l19 = alloca i32
  %l25 = alloca i32
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 14
  store i1 %t8, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t12, i32 0, i32 1
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb15
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t20 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNamed(ptr %v0, ptr %v1, ptr %t16, ptr %t17)
  store i32 %t20, ptr %l13
  br label %bb6
bb6:
  %t21 = load i32, ptr %l13, !tbaa !23
  store i32 %t21, ptr %l3, !tbaa !23
  %t22 = load i32, ptr %l3, !tbaa !23
  %t24 = icmp sge i32 %t22, 0
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t26 = load i32, ptr %l3, !tbaa !23
  store i32 %t26, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load ptr, ptr %l2, !tbaa !29
  %t32 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenericNamed(ptr %v0, ptr %v1, ptr %t28, ptr %t29)
  store i32 %t32, ptr %l19
  br label %bb10
bb10:
  %t33 = load i32, ptr %l19, !tbaa !23
  store i32 %t33, ptr %l4, !tbaa !23
  %t34 = load i32, ptr %l4, !tbaa !23
  %t36 = icmp sge i32 %t34, 0
  br i1 %t36, label %bb11, label %bb12
bb11:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/check:Checker", ptr %t38, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t42 = load i32, ptr %l4, !tbaa !23
  %t45 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSelfType(ptr %v0, ptr %t41, i32 %t42)
  store i32 %t45, ptr %l25
  br label %bb13
bb12:
  br label %bb14
bb13:
  %t46 = load i32, ptr %l25, !tbaa !23
  store i32 %t46, ptr %rv
  br label %ret
bb14:
  br label %bb20
bb15:
  br i1 true, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_dcc186c1d376e3fb_9ec0343880193f07)
  unreachable
bb20:
  store i32 -1, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fcheck_2ehasName(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca i64
  %l6 = alloca i64
  %l8 = alloca i64
  %l13 = alloca i32
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t3 = load i64, ptr %l3, !tbaa !24
  store i64 %t3, ptr %l6, !tbaa !24
  %t4 = load ptr, ptr %l2, !tbaa !29
  %t6 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t4)
  store i64 %t6, ptr %l8
  br label %bb2
bb2:
  %t7 = load i64, ptr %l6, !tbaa !24
  %t8 = load i64, ptr %l8, !tbaa !24
  %t9 = icmp slt i64 %t7, %t8
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb3, label %bb4
bb3:
  br label %bb11
bb4:
  br label %bb5
bb5:
  %t13 = load ptr, ptr %l2, !tbaa !29
  %t14 = load i64, ptr %l3, !tbaa !24
  %t17 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eAt_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t13, i64 %t14)
  store i32 %t17, ptr %l13
  br label %bb6
bb6:
  %t18 = load i32, ptr %l13, !tbaa !23
  %t23 = icmp eq i32 %t18, %a1
  br i1 %t23, label %bb7, label %bb8
bb7:
  store i1 true, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t26 = load i64, ptr %l3, !tbaa !24
  %t28 = add i64 %t26, 1
  store i64 %t28, ptr %l3, !tbaa !24
  br label %bb1
bb11:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2eheldValue(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i1
  %l14 = alloca ptr
  %l15 = alloca i1
  %l24 = alloca ptr
  %rv = alloca ptr
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
  %t8 = icmp eq i64 %t6, 5
  store i1 %t8, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
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
  %t18 = getelementptr %"compiler/typed:Promote", ptr %t16, i32 0, i32 0
  %t19 = load ptr, ptr %t18, !tbaa !29
  store ptr %t19, ptr %l4, !tbaa !29
  br label %bb18
bb6:
  %t22 = load ptr, ptr %l0, !tbaa !29
  store ptr %t22, ptr %l14, !tbaa !29
  store i1 false, ptr %l15, !tbaa !21
  %t23 = load ptr, ptr %l14, !tbaa !29
  %t24 = icmp ne ptr %t23, null
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t26 = load ptr, ptr %l14, !tbaa !29
  %t27 = load i64, ptr %t26, !range !{i64 0, i64 18}
  %t29 = icmp eq i64 %t27, 14
  store i1 %t29, ptr %l15, !tbaa !21
  br label %bb8
bb8:
  %t30 = load i1, ptr %l15, !tbaa !21
  br i1 %t30, label %bb9, label %bb10
bb9:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr { i64, [5 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t33, i32 0, i32 0
  %t35 = load %"compiler/source:Span", ptr %t34
  store %"compiler/source:Span" %t35, ptr %l2
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr { i64, [5 x i64] }, ptr %t37, i32 0, i32 1
  %t40 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t39, i32 0, i32 2
  %t41 = load ptr, ptr %t40
  store ptr %t41, ptr %l3, !tbaa !29
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t43 = load %"compiler/source:Span", ptr %l2
  %t44 = load ptr, ptr %l3, !tbaa !29
  %t47 = call ptr @compiler_2fcheck_2eheldTry(ptr %v0, ptr %v1, %"compiler/source:Span" %t43, ptr %t44)
  store ptr %t47, ptr %l24
  br label %bb12
bb12:
  %t48 = load ptr, ptr %l24, !tbaa !29
  store ptr %t48, ptr %l4, !tbaa !29
  br label %bb18
bb13:
  br i1 true, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  store ptr null, ptr %l4, !tbaa !29
  br label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_338177df999812ed_466eceed6b347ea1)
  unreachable
bb18:
  %t49 = load ptr, ptr %l4, !tbaa !29
  store ptr %t49, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2eisEntry(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i1
  %l3 = alloca ptr
  %l4 = alloca i1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 5
  store i1 %t8, ptr %l4, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l4, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13, !range !{i32 0, i32 114}
  store i32 %t14, ptr %l1
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t16 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t18 = trunc i64 79 to i32
  %t19 = icmp eq i32 %t16, %t18
  store i1 %t19, ptr %l2, !tbaa !21
  br label %bb11
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_264a2a6908485689_7d6fe96b47d57f6d)
  unreachable
bb11:
  %t21 = load i1, ptr %l2, !tbaa !21
  store i1 %t21, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2eplainIndexes(ptr %v0, { i64, ptr } %a0) #0 {
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
  %t25 = call i1 @compiler_2fcheck_2eplainIndex(ptr %v0, ptr %t21)
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

define dso_local %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2ervInt(ptr %v0, i64 %a0) #0 {
entry:
  %l4 = alloca %"compiler/check:reflVal"
  %rv = alloca %"compiler/check:reflVal"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr @G_2ecompiler_2fcheck_2eRvInt, !tbaa !24
  %t3 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t7 = call %"compiler/check:reflVal" @compiler_2fcheck_3areflVal_2ector(ptr %v0, ptr %v0, i1 true, i64 %t1, i64 %a0, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d26, i32 0, i32 1) }, i32 %t3)
  store %"compiler/check:reflVal" %t7, ptr %l4
  br label %bb1
bb1:
  %t8 = load %"compiler/check:reflVal", ptr %l4
  store %"compiler/check:reflVal" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:reflVal", ptr %rv
  ret %"compiler/check:reflVal" %rr
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

define dso_local %"compiler/check:Ask" @compiler_2fcheck_3aAsk_2ector(ptr %v0, ptr %v1, ptr %v2, i64 %a0, i64 %a1, i32 %a2, ptr %a3, i64 %a4, { i64, ptr } %a5) #0 {
entry:
  %rv = alloca %"compiler/check:Ask"
  br label %start
start:
  br label %bb0
bb0:
  %t14 = insertvalue %"compiler/check:Ask" undef, i64 %a0, 0
  %t16 = insertvalue %"compiler/check:Ask" %t14, i64 %a1, 1
  %t18 = insertvalue %"compiler/check:Ask" %t16, i32 %a2, 2
  %t20 = insertvalue %"compiler/check:Ask" %t18, ptr %a3, 3
  %t22 = insertvalue %"compiler/check:Ask" %t20, i64 %a4, 4
  %t24 = insertvalue %"compiler/check:Ask" %t22, { i64, ptr } %a5, 5
  store %"compiler/check:Ask" %t24, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:Ask", ptr %rv
  ret %"compiler/check:Ask" %rr
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
@.d0 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Attr" }>, align 8
@.d1 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"HasAttr" }>, align 8
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
@.d2 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d3 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@__olang_empty_array = external constant [16 x i64]
@.d4 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c"a call of a name of this kind" }>, align 8
@.d5 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"a call of this kind" }>, align 8
@.d6 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"From" }>, align 8
@.d7 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Len" }>, align 8
@.d8 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"Of" }>, align 8
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@olang_2esole_2ecompiler_2fcheck_3aframe_2e4 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
declare void @__olang_region_drop(ptr) noinline
@.d9 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
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
@.d10 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"std/prelude/map" }>, align 8
@.d11 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"MapEntry" }>, align 8
@.d12 = private constant <{ i64, [28 x i8] }> <{ i64 0, [28 x i8] c"a keyed literal's plain item" }>, align 8
@.d13 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I32" }>, align 8
declare ptr @__olang_scope_of(ptr, ptr) noinline
@.d14 = private constant <{ i64, [46 x i8] }> <{ i64 0, [46 x i8] c"a generator whose Generator has no constructor" }>, align 8
@.d15 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Vec" }>, align 8
@.d16 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Map" }>, align 8
@.d17 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"StringBuilder" }>, align 8
@.d18 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"std/set" }>, align 8
@.d19 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Set" }>, align 8
@.d20 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"std/deque" }>, align 8
@.d21 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Deque" }>, align 8
@.d22 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"std/heap" }>, align 8
@.d23 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Heap" }>, align 8
@olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e1 = weak hidden constant i1 false
declare void @__olang_region_release(ptr) noinline
@olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2 = weak hidden constant i1 false
@olang_2esole_2eArray_3ccompiler_2fast_3aPath_26_3e_2e_2d1 = weak hidden constant i1 false
define linkonce_odr %"compiler/check:inPlaceRead" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fcheck_3ainPlaceRead(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/check:inPlaceRead"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/check:inPlaceRead"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/check:inPlaceRead", ptr %a0
  store %"compiler/check:inPlaceRead" %t2, ptr %l1
  %t3 = getelementptr %"compiler/check:inPlaceRead", ptr %l1, i32 0, i32 1
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"compiler/check:inPlaceRead", ptr %l1, i32 0, i32 1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = load %"compiler/check:inPlaceRead", ptr %l1
  store %"compiler/check:inPlaceRead" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:inPlaceRead", ptr %rv
  ret %"compiler/check:inPlaceRead" %rr
}

@.d24 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3e_2ector(ptr %v0)
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

@.d25 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"weak" }>, align 8
@.d26 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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

@olang_loc_27266ce16db26f9e_9560a2a6a3954b82 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstNote(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/generic:Unmet" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMissing(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i1 %a3, i64 %a4)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emembersWritten(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/text:StringBuilder" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ememberListing(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnyNotMember(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/diagmsg:Msg" %a2)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnyUnmetMethod(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteOtherSignature(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoteAt(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, %"compiler/diagmsg:Msg" %a3)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnyUnmet(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/source:Span" @compiler_2fcheck_2ememberSpan(%"compiler/source:Span" %a0, i64 %a1)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %a0)
@olang_loc_e8df0bdf3cd721f8_b505cb518d2727a4 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %v0, i64 %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eglobalType(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i32 %a3, i32 %a4)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAttrTwice(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %a0)
declare { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estmtsOf(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i64 %a3, i64 %a4)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %a0)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoperatorRole(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare i64 @compiler_2fcheck_2eprotocolArity(ptr %v0, { i64, ptr } %a0)
declare { i64, ptr } @compiler_2fcheck_2elowerFirst(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enameSpan(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eProtocolBothSpellings(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2espreadArgs(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnNamed(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
@olang_loc_fa331e3bd652ab70_372bcfd3a1e19234 = external constant [0 x i8]
@olang_loc_36fec0e9bab8fe1d_cd1d759a002b5041 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i64 %a3, ptr %a4, { i64, ptr } %a5, { i64, ptr } %a6, { i64, ptr } %a7)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebuiltinType(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econversion(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, { i64, ptr } %a3)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNamed(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einferredCtor(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, { i64, ptr } %a4, i32 %a5)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econstruct(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, { i64, ptr } %a4)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esuggest(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i1 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownFunction(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownNumberType(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownFunctionMeant(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edescTypeOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/generic:Desc" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fgeneric_2eDescFunc = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflFnCall(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, %"compiler/generic:Desc" %a3, { i64, ptr } %a4)
@G_2ecompiler_2fgeneric_2eDescCase = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eReflUnder(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisStruct(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrWordCalled(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i64 %a3, { i64, ptr } %a4)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCaseNames(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_a011517898bde8de_8eac0aa93ba66722 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eenumCase(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, i32 %a4, { i64, ptr } %a5, { i64, ptr } %a6)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallValue(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, ptr %a3, { i64, ptr } %a4)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotCallable(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
declare %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eMember(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
@olang_loc_26a350d6680cbe13_ae05507bcf86f3d7 = external constant [0 x i8]
@olang_loc_5266260c5f5a343c_36d17a256f11e368 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebuilderCall(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, ptr %a3, i32 %a4, { i64, ptr } %a5, { i64, ptr } %a6, %"compiler/source:Span" %a7)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehasCase(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenericNamed(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2eProjectsType(ptr %v0, { i64, ptr } %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflType(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstanceWritten(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eenumFrom(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, { i64, ptr } %a4)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoBuilder(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3, i32 %a4)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenericCase(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, i32 %a4, { i64, ptr } %a5, i32 %a6)
declare %"compiler/check:reflList" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistItems(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/check:reflList" %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i64 %a3)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflListValue(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, { i64, ptr } %a4)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eimportPath(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_3232b878747d812_d16ad228b357b416 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclaresName(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enotInModule(ptr %v0, ptr %a0, i64 %a1, i32 %a2, %"compiler/source:Span" %a3)
@olang_loc_2ae84e14818660ca_d6b1ea5d85db4e36 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emethodCall(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3, %"compiler/source:Span" %a4, { i64, ptr } %a5, { i64, ptr } %a6, %"compiler/source:Span" %a7)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattrRead(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, { i64, ptr } %a3, { i64, ptr } %a4)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenericCall(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, ptr %a3, { i64, ptr } %a4, { i64, ptr } %a5, i32 %a6)
@olang_loc_27ea26ba0b212871_efa975473d719345 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopAfter(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
@olang_loc_bf0bdcd735859107_778f86f66c349b43 = external constant [0 x i8]
declare i64 @compiler_2ftyped_2eCalledBody(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eInst(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrBind_3e_2eLen_3ccompiler_2fcheck_3aerrBind_3e(ptr %v0, ptr %a0)
declare %"compiler/check:errBind" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrBind_3e_2eAt_3ccompiler_2fcheck_3aerrBind_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectSourceOf(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_4d78ccd557b2cb07_4b61304073c9a48b = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShareOf(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eToArray_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@G_2ecompiler_2ftypes_2eDefaultErrT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList1(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eRoleFn = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %v0, ptr %v1, ptr %a0)
@G_2ecompiler_2ftypes_2eOwnScope = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopes(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i64 %a5, i1 %a6, i32 %a7, i64 %a8)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enewBody(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2, i64 %a3, %"compiler/source:Span" %a4)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectContext(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@G_2ecompiler_2fcheck_2eCtReq = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eAddBlock(ptr %v0, ptr %a0, i32 %a1, i32 %a2, %"compiler/source:Span" %a3)
@olang_loc_82a7c94587506de8_24388316e0066d9c = external constant [0 x i8]
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eparam(ptr %v0, ptr %v1, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, i32 %a3, i64 %a4, ptr %a5)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eScopeVarsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eSetVars(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_eaffdf15d9c064d4_e1a7ee300abdca20 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplace(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enotCapture(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2)
@olang_loc_721d232fa5d325a7_d23ce00c5b55667b = external constant [0 x i8]
@olang_loc_ab50fa771a5bafc6_239e772f46bf41fa = external constant [0 x i8]
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
declare %"compiler/typed:If" @compiler_2ftyped_3aIf_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePreludeType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eentryAt(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLiteralEntries(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropItems(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epartCopy(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eTrunca_Hdac151ce4e73ec212dc55b02b0b7e7d0(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_a6a174194301ea24_539b26413c501980 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConst(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare %"compiler/typed:Make" @compiler_2ftyped_3aMake_2ector(ptr %v0, ptr %v1, ptr %v2, i32 %a0, i64 %a1, { i64, ptr } %a2, ptr %a3, i32 %a4, i32 %a5, i1 %a6)
declare ptr @compiler_2fcheck_2eexprPath(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
@olang_loc_21bd7d1c01cb29ff_7bd6b7239395673b = external constant [0 x i8]
declare %"compiler/ast:Path" @compiler_2fast_3aPath_2ector(ptr %v0, ptr %v1, %"compiler/source:Span" %a0, { i64, ptr } %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewordIndex(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrCode(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrMask(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eallWords(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eescapeRules(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, i64 %a3)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eTruncate_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v0, ptr %a0)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare { i32, { i64, [3 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fdiag_3aWhere_3e_2e_H38805f4eed72f99710d38d2dedaea985(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGenByValueAway(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteGenSlot(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, [3 x i64] } %a2, %"compiler/diagmsg:Msg" %a3)
@olang_loc_15eb6f7c806fc73b_bac9f6515206ea7f = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGenByValue(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorSig(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v0, ptr %v1, i32 %a0, { i64, ptr } %a1)
@G_2ecompiler_2fgeneric_2eGenFromReturn = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FE\FF\FF\FF\FF\FF\FF\FF" }>, align 8
@G_2ecompiler_2ftypes_2eReadOnly = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eNullable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocal(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, i32 %a3, i32 %a4, { i64, [1 x i64] } %a5)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenLambda(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, i64 %a3, i64 %a4)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorBody(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_8107208a4245ff9c_ccbe9a9f570baf38 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallBody(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, ptr %a4, i64 %a5, ptr %a6, { i64, ptr } %a7, { i64, ptr } %a8)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eanyHandle(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@olang_loc_968c62dd2cdb7cc9_e4aa23f03d53ae95 = external constant [0 x i8]
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_9c0e2310e04cd1f8_9ba0cca7b5a93fa4 = external constant [0 x i8]
declare %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_c608509fed4a7aab_41eb2a14c072322f = external constant [0 x i8]
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_H3993e9d21a27b6abd527556382000d9e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSelfType(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_6728bdcea83aedf6_67611a29005fa232 = external constant [0 x i8]
@olang_loc_70239da7d97117f8_be3796eb66d568d4 = external constant [0 x i8]
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emutParam(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3apayloadItem_3e_2ector(ptr %v0, i64 %a0)
declare { i64, i32 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrorWord(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eWordFields(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2)
declare %"compiler/check:payloadItem" @compiler_2fcheck_3apayloadItem_2ector(ptr %v0, ptr %v1, i32 %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3apayloadItem_3e_2ePu_H56e661e7866ebbaff102f6db3c63f52b(ptr %v0, ptr %v1, ptr %a0, %"compiler/check:payloadItem" %a1)
@olang_loc_99a2219cf20f55d9_bdfeae2ff747ebc5 = external constant [0 x i8]
@olang_loc_aa9d1041871ddc08_900eaa132351bb14 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasPayload(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTaskClauseError(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDeferErrorEscapes(ptr %v0)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emsgOwner(ptr %v0, ptr %v1, ptr %a0, i1 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAssertMsgError(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePlainWordCalled(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ename(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3, i1 %a4)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsErrVal(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eRaiseNotCaught(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereraise(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eraiseUnknown(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsRaisedError(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrWords(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epathPart(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euncovered(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewritesNoQuestion(ptr %v0, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eRaiseNeedsQuestion(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrorUndeclared(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrorWordNotInSet(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eleaks1(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epushPayload(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3, i64 %a4, { i64, ptr } %a5)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolve(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroValue(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ereadPlace(ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroNeed(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@G_2ecompiler_2fcheck_2eRoReturned = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroResult(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroDeepNeed(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_57dc1f8c088d198a_6c44e525bc3c6ade = external constant [0 x i8]
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroName(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroFix(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadOnlyCopyStored(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadOnlyCopyDecl(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadOnlyCopyReturned(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadOnlyCopyGlobal(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_658c1f9b991d3291_83ad80e13fec4285 = external constant [0 x i8]
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoteRo(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorMembers(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @compiler_2fgeneric_3aContext_2ector(ptr %out, ptr %v0, i64 %a0, i64 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorSetItem(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3ainPlaceRead_3e_2eLe_Hf613227d99bb55cc0c1d4d516f382642(ptr %v0, ptr %a0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrors(ptr %v0, ptr %a0)
declare %"compiler/check:inPlaceRead" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3ainPlaceRead_3e_2eAt_Hf62b397eb49933d0308b5b903703d314(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6b5ccacad8db807339a3579aa8c82ff8(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eEffects(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eOf(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H2b85ceff512af6e6ca26c554a1c16247(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i1 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueMoved(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eslotWhat(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueLand(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, ptr } %a2, i1 %a3)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnsParts(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnedPart(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2epartPlace(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eownCopy(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclaredFunc(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArgCount(ptr %v0, ptr %v1, i64 %a0, { i64, ptr } %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncTag(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eUntagged(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvert(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncNullable(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOrNull(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etopSetDecls(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2, i1 %a3, i1 %a4, ptr %a5)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewantCopy(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@olang_loc_dcc186c1d376e3fb_9ec0343880193f07 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eAt_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fcheck_2eheldTry(ptr %v0, ptr %v1, %"compiler/source:Span" %a0, ptr %a1)
@olang_loc_338177df999812ed_466eceed6b347ea1 = external constant [0 x i8]
@olang_loc_264a2a6908485689_7d6fe96b47d57f6d = external constant [0 x i8]
declare i1 @compiler_2fcheck_2eplainIndex(ptr %v0, ptr %a0)
@G_2ecompiler_2fcheck_2eRvInt = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/check:reflVal" @compiler_2fcheck_3areflVal_2ector(ptr %v0, ptr %v1, i1 %a0, i64 %a1, i64 %a2, { i64, ptr } %a3, i32 %a4)
declare %"compiler/check:signMag" @compiler_2fcheck_3asignMag_2ector(ptr %v0, i1 %a0, i128 %a1)
declare %"compiler/check:signMag" @compiler_2fcheck_2esignMag_2emagOf(%"compiler/check:litv" %a0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3e_2ector(ptr %v0)

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
