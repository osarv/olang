source_filename = "compiler_effects.quick.ll"
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
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/effects:Facts" = type { i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i64, [6 x i64], i64, i64 }
%"compiler/effects:link" = type { i64, i64, i64 }
%"compiler/effects:Effects" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"compiler/effects:Facts", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, { i64, ptr }, i1, %"compiler/source:Span", { i64, ptr }, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/effects:root" = type { i64, i1 }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/typed:Arm" = type { %"compiler/source:Span", { i64, ptr }, ptr, ptr, ptr }
%"compiler/typed:Alt" = type { ptr, { i64, ptr } }
%"compiler/typed:Bind" = type { i32, ptr }
%"compiler/typed:Make" = type { i32, i64, { i64, ptr }, ptr, i32, i32, i1 }
%"compiler/effects:pend" = type { i64, i64, ptr }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/effects:part" = type { i64, i64, i32, ptr }
%"compiler/typed:Cond" = type { ptr, ptr, ptr }
%"compiler/typed:Match" = type { { i64, ptr }, { i64, ptr }, ptr, i1 }
%"compiler/typed:Try" = type { ptr, { i64, ptr }, i1, i1, i1 }
%"compiler/typed:Clause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr, { i64, ptr }, i64, i32 }
%"compiler/typed:Seq" = type { { i64, ptr }, ptr, i1 }
%"compiler/effects:given" = type { i64, i64, i64, i64, i32 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/ast:Sig" = type { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, ptr, i1, i1, { i64, ptr } }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/effects:Verdict" = type { { i64, ptr }, { i64, ptr }, i1, i32, { i64, ptr }, i64, %"compiler/source:Span", { i64, ptr } }
%"compiler/typed:Capture" = type { i32, ptr }
%"compiler/typed:If" = type { ptr, ptr, ptr }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/typed:Join" = type { ptr, i1, { i64, ptr } }
%"compiler/typed:Spawn" = type { { i64, ptr }, ptr, { i64, ptr }, i32 }
%"compiler/typed:TaskClause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr }
%"compiler/effects:pair" = type { i64, i64 }
@G_2ecompiler_2feffects_2eCapC = constant <{ [8 x i8] }> <{ [8 x i8] c"\10\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feffects_2eCapCount = constant <{ [8 x i8] }> <{ [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feffects_2eCapEnvironment = constant <{ [8 x i8] }> <{ [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feffects_2eCapFiles = constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feffects_2eCapNetwork = constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feffects_2eCapProcesses = constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feffects_2eCapThreads = constant <{ [8 x i8] }> <{ [8 x i8] c"\20\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feffects_2eEffectWords = constant <{ [8 x i8] }> <{ [8 x i8] c"\7F\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feffects_2eGivBound = constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feffects_2eGivMade = constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feffects_2eGivNamed = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feffects_2eGivResult = constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feffects_2eGivSlot = constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feffects_2ePartAdapter = constant <{ [8 x i8] }> <{ [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feffects_2ePartLambda = constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feffects_2eenvNames = constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2eenvNames.k1, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2eenvNames.k2, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2eenvNames.k3, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2eenvNames.k4, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2eenvNames.k5 }>, align 64
@G_2ecompiler_2feffects_2eenvNames.k1 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\67\65\74\65\6E\76" }>, align 8
@G_2ecompiler_2feffects_2eenvNames.k2 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\73\65\74\65\6E\76" }>, align 8
@G_2ecompiler_2feffects_2eenvNames.k3 = internal constant <{ [8 x i8] }> <{ [8 x i8] c"\75\6E\73\65\74\65\6E\76" }>, align 8
@G_2ecompiler_2feffects_2eenvNames.k4 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\70\75\74\65\6E\76" }>, align 8
@G_2ecompiler_2feffects_2eenvNames.k5 = internal constant <{ [11 x i8] }> <{ [11 x i8] c"\5F\5F\6F\6C\61\6E\67\5F\65\6E\76" }>, align 8
@G_2ecompiler_2feffects_2efileNames = constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2efileNames.k1, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2efileNames.k2, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2efileNames.k3, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2efileNames.k4, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2efileNames.k5, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2efileNames.k6, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2efileNames.k7, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2efileNames.k8, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2efileNames.k9, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2efileNames.k10, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2efileNames.k11, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2efileNames.k12, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2efileNames.k13, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2efileNames.k14, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2efileNames.k15, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2efileNames.k16, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2efileNames.k17, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2efileNames.k18, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2efileNames.k19, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2efileNames.k20, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2efileNames.k21, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2efileNames.k22, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2efileNames.k23, [8 x i8] c"\10\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2efileNames.k24, [8 x i8] c"\0F\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2efileNames.k25 }>, align 64
@G_2ecompiler_2feffects_2efileNames.k1 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\6F\70\65\6E" }>, align 8
@G_2ecompiler_2feffects_2efileNames.k2 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\6F\70\65\6E\61\74" }>, align 8
@G_2ecompiler_2feffects_2efileNames.k3 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\63\72\65\61\74" }>, align 8
@G_2ecompiler_2feffects_2efileNames.k4 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\66\6F\70\65\6E" }>, align 8
@G_2ecompiler_2feffects_2efileNames.k5 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\6D\6B\64\69\72" }>, align 8
@G_2ecompiler_2feffects_2efileNames.k6 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\72\6D\64\69\72" }>, align 8
@G_2ecompiler_2feffects_2efileNames.k7 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\72\65\6D\6F\76\65" }>, align 8
@G_2ecompiler_2feffects_2efileNames.k8 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\75\6E\6C\69\6E\6B" }>, align 8
@G_2ecompiler_2feffects_2efileNames.k9 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\72\65\6E\61\6D\65" }>, align 8
@G_2ecompiler_2feffects_2efileNames.k10 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\6C\69\6E\6B" }>, align 8
@G_2ecompiler_2feffects_2efileNames.k11 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\73\79\6D\6C\69\6E\6B" }>, align 8
@G_2ecompiler_2feffects_2efileNames.k12 = internal constant <{ [8 x i8] }> <{ [8 x i8] c"\72\65\61\64\6C\69\6E\6B" }>, align 8
@G_2ecompiler_2feffects_2efileNames.k13 = internal constant <{ [8 x i8] }> <{ [8 x i8] c"\72\65\61\6C\70\61\74\68" }>, align 8
@G_2ecompiler_2feffects_2efileNames.k14 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\6F\70\65\6E\64\69\72" }>, align 8
@G_2ecompiler_2feffects_2efileNames.k15 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\63\68\64\69\72" }>, align 8
@G_2ecompiler_2feffects_2efileNames.k16 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\67\65\74\63\77\64" }>, align 8
@G_2ecompiler_2feffects_2efileNames.k17 = internal constant <{ [8 x i8] }> <{ [8 x i8] c"\74\72\75\6E\63\61\74\65" }>, align 8
@G_2ecompiler_2feffects_2efileNames.k18 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\63\68\6D\6F\64" }>, align 8
@G_2ecompiler_2feffects_2efileNames.k19 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\61\63\63\65\73\73" }>, align 8
@G_2ecompiler_2feffects_2efileNames.k20 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\6D\6B\73\74\65\6D\70" }>, align 8
@G_2ecompiler_2feffects_2efileNames.k21 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\6D\6B\64\74\65\6D\70" }>, align 8
@G_2ecompiler_2feffects_2efileNames.k22 = internal constant <{ [12 x i8] }> <{ [12 x i8] c"\5F\5F\6F\6C\61\6E\67\5F\73\74\61\74" }>, align 8
@G_2ecompiler_2feffects_2efileNames.k23 = internal constant <{ [11 x i8] }> <{ [11 x i8] c"\5F\5F\6F\6C\61\6E\67\5F\64\69\72" }>, align 8
@G_2ecompiler_2feffects_2efileNames.k24 = internal constant <{ [16 x i8] }> <{ [16 x i8] c"\5F\5F\6F\6C\61\6E\67\5F\72\65\61\6C\70\61\74\68" }>, align 8
@G_2ecompiler_2feffects_2efileNames.k25 = internal constant <{ [15 x i8] }> <{ [15 x i8] c"\5F\5F\6F\6C\61\6E\67\5F\6D\6B\64\74\65\6D\70" }>, align 8
@G_2ecompiler_2feffects_2eglobalParam = constant <{ [8 x i8] }> <{ [8 x i8] c"\FE\FF\FF\FF\FF\FF\FF\FF" }>, align 8
@G_2ecompiler_2feffects_2enetNames = constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2enetNames.k1, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2enetNames.k2, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2enetNames.k3, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2enetNames.k4, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2enetNames.k5, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2enetNames.k6, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2enetNames.k7 }>, align 64
@G_2ecompiler_2feffects_2enetNames.k1 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\73\6F\63\6B\65\74" }>, align 8
@G_2ecompiler_2feffects_2enetNames.k2 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\63\6F\6E\6E\65\63\74" }>, align 8
@G_2ecompiler_2feffects_2enetNames.k3 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\62\69\6E\64" }>, align 8
@G_2ecompiler_2feffects_2enetNames.k4 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\6C\69\73\74\65\6E" }>, align 8
@G_2ecompiler_2feffects_2enetNames.k5 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\61\63\63\65\70\74" }>, align 8
@G_2ecompiler_2feffects_2enetNames.k6 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\61\63\63\65\70\74\34" }>, align 8
@G_2ecompiler_2feffects_2enetNames.k7 = internal constant <{ [11 x i8] }> <{ [11 x i8] c"\67\65\74\61\64\64\72\69\6E\66\6F" }>, align 8
@G_2ecompiler_2feffects_2eoutLocal = constant <{ [8 x i8] }> <{ [8 x i8] c"\18\FC\FF\FF\FF\FF\FF\FF" }>, align 8
@G_2ecompiler_2feffects_2eoutParam = constant <{ [8 x i8] }> <{ [8 x i8] c"\FD\FF\FF\FF\FF\FF\FF\FF" }>, align 8
@G_2ecompiler_2feffects_2eprocNames = constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2eprocNames.k1, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2eprocNames.k2, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2eprocNames.k3, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2eprocNames.k4, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2eprocNames.k5, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2eprocNames.k6, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2eprocNames.k7, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2eprocNames.k8, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2eprocNames.k9, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2eprocNames.k10, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2eprocNames.k11, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2eprocNames.k12 }>, align 64
@G_2ecompiler_2feffects_2eprocNames.k1 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\66\6F\72\6B" }>, align 8
@G_2ecompiler_2feffects_2eprocNames.k2 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\76\66\6F\72\6B" }>, align 8
@G_2ecompiler_2feffects_2eprocNames.k3 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\65\78\65\63\76" }>, align 8
@G_2ecompiler_2feffects_2eprocNames.k4 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\65\78\65\63\76\65" }>, align 8
@G_2ecompiler_2feffects_2eprocNames.k5 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\65\78\65\63\76\70" }>, align 8
@G_2ecompiler_2feffects_2eprocNames.k6 = internal constant <{ [11 x i8] }> <{ [11 x i8] c"\70\6F\73\69\78\5F\73\70\61\77\6E" }>, align 8
@G_2ecompiler_2feffects_2eprocNames.k7 = internal constant <{ [12 x i8] }> <{ [12 x i8] c"\70\6F\73\69\78\5F\73\70\61\77\6E\70" }>, align 8
@G_2ecompiler_2feffects_2eprocNames.k8 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\73\79\73\74\65\6D" }>, align 8
@G_2ecompiler_2feffects_2eprocNames.k9 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\6B\69\6C\6C" }>, align 8
@G_2ecompiler_2feffects_2eprocNames.k10 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\77\61\69\74\70\69\64" }>, align 8
@G_2ecompiler_2feffects_2eprocNames.k11 = internal constant <{ [13 x i8] }> <{ [13 x i8] c"\5F\5F\6F\6C\61\6E\67\5F\73\70\61\77\6E" }>, align 8
@G_2ecompiler_2feffects_2eprocNames.k12 = internal constant <{ [12 x i8] }> <{ [12 x i8] c"\5F\5F\6F\6C\61\6E\67\5F\65\78\65\63" }>, align 8
@G_2ecompiler_2feffects_2equickNames = constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2equickNames.k1, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2equickNames.k2, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2equickNames.k3, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2equickNames.k4, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2equickNames.k5, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2equickNames.k6, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2equickNames.k7, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2equickNames.k8, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2equickNames.k9, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2equickNames.k10, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2equickNames.k11, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2equickNames.k12, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2equickNames.k13, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2equickNames.k14, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2equickNames.k15, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2equickNames.k16, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2equickNames.k17, [8 x i8] c"\15\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2equickNames.k18, [8 x i8] c"\13\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2equickNames.k19, [8 x i8] c"\16\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2equickNames.k20, [8 x i8] c"\12\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2equickNames.k21, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2equickNames.k22, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2equickNames.k23, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2equickNames.k24, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2equickNames.k25, [8 x i8] c"\0A\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2equickNames.k26 }>, align 64
@G_2ecompiler_2feffects_2equickNames.k1 = internal constant <{ [11 x i8] }> <{ [11 x i8] c"\5F\5F\6F\6C\61\6E\67\5F\65\72\72" }>, align 8
@G_2ecompiler_2feffects_2equickNames.k2 = internal constant <{ [17 x i8] }> <{ [17 x i8] c"\5F\5F\6F\6C\61\6E\67\5F\61\72\67\5F\63\6F\75\6E\74" }>, align 8
@G_2ecompiler_2feffects_2equickNames.k3 = internal constant <{ [11 x i8] }> <{ [11 x i8] c"\5F\5F\6F\6C\61\6E\67\5F\61\72\67" }>, align 8
@G_2ecompiler_2feffects_2equickNames.k4 = internal constant <{ [11 x i8] }> <{ [11 x i8] c"\5F\5F\6F\6C\61\6E\67\5F\65\6E\76" }>, align 8
@G_2ecompiler_2feffects_2equickNames.k5 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\6D\65\6D\63\70\79" }>, align 8
@G_2ecompiler_2feffects_2equickNames.k6 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\6D\65\6D\6D\6F\76\65" }>, align 8
@G_2ecompiler_2feffects_2equickNames.k7 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\6D\65\6D\73\65\74" }>, align 8
@G_2ecompiler_2feffects_2equickNames.k8 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\6D\65\6D\63\6D\70" }>, align 8
@G_2ecompiler_2feffects_2equickNames.k9 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\73\74\72\6C\65\6E" }>, align 8
@G_2ecompiler_2feffects_2equickNames.k10 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\73\74\72\63\6D\70" }>, align 8
@G_2ecompiler_2feffects_2equickNames.k11 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\73\74\72\6E\63\6D\70" }>, align 8
@G_2ecompiler_2feffects_2equickNames.k12 = internal constant <{ [13 x i8] }> <{ [13 x i8] c"\63\6C\6F\63\6B\5F\67\65\74\74\69\6D\65" }>, align 8
@G_2ecompiler_2feffects_2equickNames.k13 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\74\69\6D\65" }>, align 8
@G_2ecompiler_2feffects_2equickNames.k14 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\67\65\74\65\6E\76" }>, align 8
@G_2ecompiler_2feffects_2equickNames.k15 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\69\73\61\74\74\79" }>, align 8
@G_2ecompiler_2feffects_2equickNames.k16 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\67\65\74\70\69\64" }>, align 8
@G_2ecompiler_2feffects_2equickNames.k17 = internal constant <{ [20 x i8] }> <{ [20 x i8] c"\70\74\68\72\65\61\64\5F\6D\75\74\65\78\5F\75\6E\6C\6F\63\6B" }>, align 8
@G_2ecompiler_2feffects_2equickNames.k18 = internal constant <{ [21 x i8] }> <{ [21 x i8] c"\70\74\68\72\65\61\64\5F\72\77\6C\6F\63\6B\5F\75\6E\6C\6F\63\6B" }>, align 8
@G_2ecompiler_2feffects_2equickNames.k19 = internal constant <{ [19 x i8] }> <{ [19 x i8] c"\70\74\68\72\65\61\64\5F\63\6F\6E\64\5F\73\69\67\6E\61\6C" }>, align 8
@G_2ecompiler_2feffects_2equickNames.k20 = internal constant <{ [22 x i8] }> <{ [22 x i8] c"\70\74\68\72\65\61\64\5F\63\6F\6E\64\5F\62\72\6F\61\64\63\61\73\74" }>, align 8
@G_2ecompiler_2feffects_2equickNames.k21 = internal constant <{ [18 x i8] }> <{ [18 x i8] c"\70\74\68\72\65\61\64\5F\6D\75\74\65\78\5F\69\6E\69\74" }>, align 8
@G_2ecompiler_2feffects_2equickNames.k22 = internal constant <{ [17 x i8] }> <{ [17 x i8] c"\70\74\68\72\65\61\64\5F\63\6F\6E\64\5F\69\6E\69\74" }>, align 8
@G_2ecompiler_2feffects_2equickNames.k23 = internal constant <{ [12 x i8] }> <{ [12 x i8] c"\66\72\65\65\61\64\64\72\69\6E\66\6F" }>, align 8
@G_2ecompiler_2feffects_2equickNames.k24 = internal constant <{ [11 x i8] }> <{ [11 x i8] c"\67\65\74\73\6F\63\6B\6E\61\6D\65" }>, align 8
@G_2ecompiler_2feffects_2equickNames.k25 = internal constant <{ [11 x i8] }> <{ [11 x i8] c"\67\65\74\70\65\65\72\6E\61\6D\65" }>, align 8
@G_2ecompiler_2feffects_2equickNames.k26 = internal constant <{ [10 x i8] }> <{ [10 x i8] c"\73\65\74\73\6F\63\6B\6F\70\74" }>, align 8
define dso_local { i64, ptr } @compiler_2feffects_2eCapName(ptr %v0, i64 %a0) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l24 = alloca i64
  %l25 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store i64 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l0, !tbaa !24
  %t3 = icmp eq i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d0, i32 0, i32 1) }, ptr %l4, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t5, ptr %l1, !tbaa !27
  br label %bb25
bb4:
  %t7 = load i64, ptr %l0, !tbaa !24
  %t9 = icmp eq i64 %t7, 1
  br i1 %t9, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d1, i32 0, i32 1) }, ptr %l8, !tbaa !27
  %t11 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t11, ptr %l1, !tbaa !27
  br label %bb25
bb8:
  %t13 = load i64, ptr %l0, !tbaa !24
  %t15 = icmp eq i64 %t13, 2
  br i1 %t15, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  store { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d2, i32 0, i32 1) }, ptr %l12, !tbaa !27
  %t17 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t17, ptr %l1, !tbaa !27
  br label %bb25
bb12:
  %t19 = load i64, ptr %l0, !tbaa !24
  %t21 = icmp eq i64 %t19, 3
  br i1 %t21, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d3, i32 0, i32 1) }, ptr %l16, !tbaa !27
  %t23 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t23, ptr %l1, !tbaa !27
  br label %bb25
bb16:
  %t25 = load i64, ptr %l0, !tbaa !24
  %t27 = icmp eq i64 %t25, 4
  br i1 %t27, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, ptr %l20, !tbaa !27
  %t29 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t29, ptr %l1, !tbaa !27
  br label %bb25
bb20:
  br i1 true, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d5, i32 0, i32 1) }, ptr %l22, !tbaa !27
  %t31 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t31, ptr %l1, !tbaa !27
  br label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_290980515b4efda2_9d4c073daad962b6)
  unreachable
bb25:
  %t33 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t33, 0
  store i64 %t34, ptr %l24, !tbaa !24
  %t35 = load i64, ptr %l24, !tbaa !24
  %t36 = mul i64 %t35, 1
  %t37 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t36)
  %t38 = insertvalue { i64, ptr } undef, i64 %t35, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr %t37, 1
  store { i64, ptr } %t39, ptr %l25, !tbaa !27
  %t40 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !27
  %t42 = getelementptr { i64, ptr }, ptr %l1, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !27
  %t44 = load i64, ptr %l24, !tbaa !24
  %t45 = mul i64 %t44, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t41, ptr %t43, i64 %t45, i1 false)
  %t46 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t46, ptr %l1, !tbaa !27
  %t47 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t47, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2feffects_2eCapText(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca i64
  %l18 = alloca i64
  %l38 = alloca i64
  %l47 = alloca i1
  %l52 = alloca ptr
  %l53 = alloca i64
  %l56 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l62 = alloca ptr
  %l63 = alloca i64
  %l66 = alloca { i64, ptr }
  %l71 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l10
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l2
  store i64 0, ptr %l3, !tbaa !24
  %t3 = load i64, ptr @G_2ecompiler_2feffects_2eCapCount, !tbaa !24
  store i64 %t3, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t5 = load i64, ptr %l4, !tbaa !24
  %t6 = load i64, ptr %l3, !tbaa !24
  %t9 = icmp sgt i64 %t5, %t6
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load i64, ptr %l5, !tbaa !24
  %t13 = icmp sgt i64 %t11, 0
  br i1 %t13, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l15, !tbaa !24
  br label %bb7
bb4:
  %t15 = load i64, ptr %l4, !tbaa !24
  %t16 = load i64, ptr %l3, !tbaa !24
  %t19 = sub i64 %t15, %t16
  %t20 = load i64, ptr %l5, !tbaa !24
  %t23 = add i64 %t19, %t20
  %t25 = sub i64 %t23, 1
  %t26 = load i64, ptr %l5, !tbaa !24
  %t29 = sdiv i64 %t25, %t26
  store i64 %t29, ptr %l18, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb6
bb6:
  %t31 = load i64, ptr %l18, !tbaa !24
  store i64 %t31, ptr %l15, !tbaa !24
  br label %bb7
bb7:
  %t32 = load i64, ptr %l15, !tbaa !24
  store i64 %t32, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb8
bb8:
  %t33 = load i64, ptr %l7, !tbaa !24
  %t34 = load i64, ptr %l6, !tbaa !24
  %t37 = icmp slt i64 %t33, %t34
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb9, label %bb10
bb9:
  br label %bb30
bb10:
  br label %bb11
bb11:
  %t41 = load i64, ptr %l3, !tbaa !24
  %t42 = load i64, ptr %l7, !tbaa !24
  %t43 = load i64, ptr %l5, !tbaa !24
  %t46 = mul i64 %t42, %t43
  %t49 = add i64 %t41, %t46
  store i64 %t49, ptr %l8, !tbaa !24
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/effects:Facts", ptr %t51, i32 0, i32 18
  %t54 = load i64, ptr %t53, !tbaa !24
  %t55 = load i64, ptr %l8, !tbaa !24
  store i64 %t55, ptr %l38, !tbaa !24
  %t56 = load i64, ptr %l38, !tbaa !24
  %t57 = load i64, ptr %l38, !tbaa !24
  %t58 = shl i64 1, %t57
  %t61 = and i64 %t54, %t58
  %t63 = icmp eq i64 %t61, 0
  br i1 %t63, label %bb12, label %bb13
bb12:
  br label %bb29
bb13:
  br label %bb14
bb14:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load i64, ptr %l8, !tbaa !24
  %t68 = getelementptr %"compiler/effects:Facts", ptr %t65, i32 0, i32 19
  %t70 = getelementptr [6 x i64], ptr %t68, i64 0, i64 %t66
  %t71 = load i64, ptr %t70, !tbaa !34
  store i64 %t71, ptr %l9, !tbaa !24
  %t73 = load i64, ptr %l9, !tbaa !24
  %t75 = icmp sge i64 %t73, 0
  br i1 %t75, label %bb15, label %bb16
bb15:
  %t77 = load i64, ptr %l9, !tbaa !24
  %t78 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t80 = extractvalue { i64, ptr } %t78, 0
  %t83 = icmp slt i64 %t77, %t80
  store i1 %t83, ptr %l47, !tbaa !21
  br label %bb17
bb16:
  store i1 false, ptr %l47, !tbaa !21
  br label %bb17
bb17:
  %t85 = load i1, ptr %l47, !tbaa !21
  br i1 %t85, label %bb18, label %bb19
bb18:
  store %olang.scope zeroinitializer, ptr %s4
  store ptr %l2, ptr %l52, !tbaa !29
  %t86 = ptrtoint ptr %s0 to i64
  store i64 %t86, ptr %l53, !tbaa !24
  %t87 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t87, label %bb20, label %bb21
bb19:
  store ptr %l2, ptr %l62, !tbaa !29
  %t89 = ptrtoint ptr %s0 to i64
  store i64 %t89, ptr %l63, !tbaa !24
  %t90 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t90, label %bb24, label %bb25
bb20:
  %t92 = call ptr @__olang_region_make(ptr %s0)
  %t93 = ptrtoint ptr %t92 to i64
  store i64 %t93, ptr %l53, !tbaa !24
  br label %bb21
bb21:
  %t94 = load i64, ptr %l8, !tbaa !24
  %t96 = call { i64, ptr } @compiler_2feffects_2eCapName(ptr %s4, i64 %t94)
  store { i64, ptr } %t96, ptr %l56
  br label %bb22
bb22:
  %t97 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t97, ptr %l57, !tbaa !27
  %t98 = load i64, ptr %l9, !tbaa !24
  %t100 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t101 = load ptr, ptr %t100, !tbaa !27
  %t102 = getelementptr { i64, ptr }, ptr %t101, i64 %t98
  %t103 = load { i64, ptr }, ptr %t102, !tbaa !37
  %t104 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t105 = extractvalue { i64, ptr } %t104, 1
  %t106 = extractvalue { i64, ptr } %t104, 0
  %t107 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t108 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t109 = add i64 %t106, %t108
  %t111 = extractvalue { i64, ptr } %t103, 1
  %t112 = extractvalue { i64, ptr } %t103, 0
  %t113 = add i64 %t109, %t112
  %t114 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t115 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  %t116 = add i64 %t113, %t115
  %t117 = load i64, ptr %l53
  %t118 = inttoptr i64 %t117 to ptr
  %t119 = call ptr @__olang_scope_alloc(ptr %t118, i64 %t116)
  call void @olang_textcopy(ptr %t119, ptr %t105, i64 %t106)
  %t120 = getelementptr i8, ptr %t119, i64 %t106
  call void @olang_textcopy(ptr %t120, ptr %t107, i64 %t108)
  %t121 = getelementptr i8, ptr %t120, i64 %t108
  call void @olang_textcopy(ptr %t121, ptr %t111, i64 %t112)
  %t122 = getelementptr i8, ptr %t121, i64 %t112
  call void @olang_textcopy(ptr %t122, ptr %t114, i64 %t115)
  %t123 = insertvalue { i64, ptr } undef, i64 %t116, 0
  %t124 = insertvalue { i64, ptr } %t123, ptr %t119, 1
  %t126 = load i64, ptr %l53
  %t127 = inttoptr i64 %t126 to ptr
  %t128 = extractvalue { i64, ptr } %t124, 0
  %t129 = extractvalue { i64, ptr } %t124, 1
  %t130 = mul i64 %t128, 1
  %t131 = call ptr @__olang_scope_alloc(ptr %t127, i64 %t130)
  call void @llvm.memcpy.p0.p0.i64(ptr %t131, ptr %t129, i64 %t130, i1 false)
  %t132 = insertvalue { i64, ptr } undef, i64 %t128, 0
  %t133 = insertvalue { i64, ptr } %t132, ptr %t131, 1
  %t134 = load ptr, ptr %l52, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t134, { i64, ptr } %t133)
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s4)
  br label %bb28
bb24:
  %t136 = call ptr @__olang_region_make(ptr %s0)
  %t137 = ptrtoint ptr %t136 to i64
  store i64 %t137, ptr %l63, !tbaa !24
  br label %bb25
bb25:
  %t138 = load i64, ptr %l8, !tbaa !24
  %t139 = load i64, ptr %l63
  %t140 = inttoptr i64 %t139 to ptr
  %t142 = call { i64, ptr } @compiler_2feffects_2eCapName(ptr %t140, i64 %t138)
  store { i64, ptr } %t142, ptr %l66
  br label %bb26
bb26:
  %t143 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t144 = load i64, ptr %l63
  %t145 = inttoptr i64 %t144 to ptr
  %t146 = extractvalue { i64, ptr } %t143, 0
  %t147 = extractvalue { i64, ptr } %t143, 1
  %t148 = mul i64 %t146, 1
  %t149 = call ptr @__olang_scope_alloc(ptr %t145, i64 %t148)
  call void @llvm.memcpy.p0.p0.i64(ptr %t149, ptr %t147, i64 %t148, i1 false)
  %t150 = insertvalue { i64, ptr } undef, i64 %t146, 0
  %t151 = insertvalue { i64, ptr } %t150, ptr %t149, 1
  %t152 = load ptr, ptr %l62, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t152, { i64, ptr } %t151)
  br label %bb27
bb27:
  br label %bb28
bb28:
  br label %bb29
bb29:
  %t154 = load i64, ptr %l7, !tbaa !24
  %t156 = add i64 %t154, 1
  store i64 %t156, ptr %l7, !tbaa !24
  br label %bb8
bb30:
  %t159 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %s0, ptr %v2, ptr %v2, ptr %l2, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d8, i32 0, i32 1) })
  store { i64, ptr } %t159, ptr %l71
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s0)
  %t160 = load { i64, ptr }, ptr %l71, !tbaa !27
  store { i64, ptr } %t160, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2feffects_2eConservative(i32 %a0) #0 {
entry:
  %l0 = alloca i32
  %l3 = alloca i1
  %l6 = alloca i1
  %rv = alloca i1
  store i32 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l0, !range !{i32 0, i32 10}
  %t3 = trunc i64 6 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb3
bb2:
  %t6 = load i32, ptr %l0, !range !{i32 0, i32 10}
  %t8 = trunc i64 7 to i32
  %t9 = icmp eq i32 %t6, %t8
  store i1 %t9, ptr %l3, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l3, !tbaa !21
  br i1 %t11, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb6
bb5:
  %t12 = load i32, ptr %l0, !range !{i32 0, i32 10}
  %t14 = trunc i64 8 to i32
  %t15 = icmp eq i32 %t12, %t14
  store i1 %t15, ptr %l6, !tbaa !21
  br label %bb6
bb6:
  %t17 = load i1, ptr %l6, !tbaa !21
  %t18 = xor i1 %t17, true
  store i1 %t18, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2feffects_2eDescribe(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l22 = alloca i64
  %l23 = alloca { i64, ptr }
  %l26 = alloca i1
  %l30 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l38 = alloca i1
  %l40 = alloca i1
  %l42 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l47 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l48 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l54 = alloca i64
  %l57 = alloca i64
  %l78 = alloca i1
  %l79 = alloca ptr
  %l80 = alloca i64
  %l82 = alloca { i64, ptr }
  %l90 = alloca i64
  %l92 = alloca ptr
  %l93 = alloca i64
  %l96 = alloca { i64, ptr }
  %l99 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l105 = alloca i64
  %l108 = alloca i64
  %l129 = alloca i1
  %l130 = alloca ptr
  %l131 = alloca i64
  %l133 = alloca { i64, ptr }
  %l141 = alloca i64
  %l143 = alloca ptr
  %l144 = alloca i64
  %l147 = alloca { i64, ptr }
  %l153 = alloca ptr
  %l154 = alloca i64
  %l158 = alloca { i64, ptr }
  %l159 = alloca { i64, ptr }
  %l161 = alloca { i64, ptr }
  %l171 = alloca { i64, ptr }
  %l173 = alloca i1
  %l183 = alloca ptr
  %l184 = alloca i64
  %l188 = alloca { i64, ptr }
  %l189 = alloca { i64, ptr }
  %l191 = alloca { i64, ptr }
  %l198 = alloca i1
  %l201 = alloca i1
  %l204 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s22 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/effects:Facts", ptr %t1, i32 0, i32 13
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  store { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d9, i32 0, i32 1) }, ptr %l20, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t6, ptr %l21, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t7, 0
  store i64 %t8, ptr %l22, !tbaa !24
  %t9 = load i64, ptr %l22, !tbaa !24
  %t10 = mul i64 %t9, 1
  %t11 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t10)
  %t12 = insertvalue { i64, ptr } undef, i64 %t9, 0
  %t13 = insertvalue { i64, ptr } %t12, ptr %t11, 1
  store { i64, ptr } %t13, ptr %l23, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = load i64, ptr %l22, !tbaa !24
  %t19 = mul i64 %t18, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t15, ptr %t17, i64 %t19, i1 false)
  %t20 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t20, ptr %l21, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t21 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t21, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/effects:Facts", ptr %t22, i32 0, i32 9
  %t25 = load i1, ptr %t24, !tbaa !21
  br i1 %t25, label %bb4, label %bb5
bb4:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/effects:Facts", ptr %t27, i32 0, i32 10
  %t30 = load i1, ptr %t29, !tbaa !21
  store i1 %t30, ptr %l26, !tbaa !21
  br label %bb6
bb5:
  store i1 false, ptr %l26, !tbaa !21
  br label %bb6
bb6:
  %t32 = load i1, ptr %l26, !tbaa !21
  br i1 %t32, label %bb7, label %bb8
bb7:
  store %olang.scope zeroinitializer, ptr %s2
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = call { i64, ptr } @compiler_2feffects_2eendsNote(ptr %v0, ptr %s2, ptr %t33)
  store { i64, ptr } %t35, ptr %l30
  br label %bb9
bb8:
  br label %bb10
bb9:
  %t36 = extractvalue { i64, ptr } { i64 62, ptr getelementptr inbounds (<{ i64, [62 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t37 = extractvalue { i64, ptr } { i64 62, ptr getelementptr inbounds (<{ i64, [62 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  %t38 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t38, 1
  %t40 = extractvalue { i64, ptr } %t38, 0
  %t41 = add i64 %t37, %t40
  %t42 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t41)
  call void @olang_textcopy(ptr %t42, ptr %t36, i64 %t37)
  %t43 = getelementptr i8, ptr %t42, i64 %t37
  call void @olang_textcopy(ptr %t43, ptr %t39, i64 %t40)
  %t44 = insertvalue { i64, ptr } undef, i64 %t41, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t42, 1
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t45, ptr %rv
  br label %ret
bb10:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/effects:Facts", ptr %t47, i32 0, i32 9
  %t50 = load i1, ptr %t49, !tbaa !21
  br i1 %t50, label %bb11, label %bb12
bb11:
  store %olang.scope zeroinitializer, ptr %s4
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = call { i64, ptr } @compiler_2feffects_2eendsNote(ptr %v0, ptr %s4, ptr %t52)
  store { i64, ptr } %t54, ptr %l35
  br label %bb13
bb12:
  br label %bb14
bb13:
  %t55 = extractvalue { i64, ptr } { i64 56, ptr getelementptr inbounds (<{ i64, [56 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t56 = extractvalue { i64, ptr } { i64 56, ptr getelementptr inbounds (<{ i64, [56 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  %t57 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t58 = extractvalue { i64, ptr } %t57, 1
  %t59 = extractvalue { i64, ptr } %t57, 0
  %t60 = add i64 %t56, %t59
  %t61 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t60)
  call void @olang_textcopy(ptr %t61, ptr %t55, i64 %t56)
  %t62 = getelementptr i8, ptr %t61, i64 %t56
  call void @olang_textcopy(ptr %t62, ptr %t58, i64 %t59)
  %t63 = insertvalue { i64, ptr } undef, i64 %t60, 0
  %t64 = insertvalue { i64, ptr } %t63, ptr %t61, 1
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t64, ptr %rv
  br label %ret
bb14:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aFacts_2eIdle(ptr %v0, ptr %t66)
  store i1 %t68, ptr %l38
  br label %bb15
bb15:
  %t69 = load i1, ptr %l38, !tbaa !21
  br i1 %t69, label %bb16, label %bb17
bb16:
  store %olang.scope zeroinitializer, ptr %s6
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aFacts_2eEvaluable(ptr %v0, ptr %t70)
  store i1 %t72, ptr %l40
  br label %bb18
bb17:
  br label %bb24
bb18:
  %t73 = load i1, ptr %l40, !tbaa !21
  br i1 %t73, label %bb19, label %bb20
bb19:
  store %olang.scope zeroinitializer, ptr %s7
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = call { i64, ptr } @compiler_2feffects_2eendsNote(ptr %v0, ptr %s7, ptr %t74)
  store { i64, ptr } %t76, ptr %l42
  br label %bb21
bb20:
  br label %bb22
bb21:
  %t77 = extractvalue { i64, ptr } { i64 71, ptr getelementptr inbounds (<{ i64, [71 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t78 = extractvalue { i64, ptr } { i64 71, ptr getelementptr inbounds (<{ i64, [71 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  %t79 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t80 = extractvalue { i64, ptr } %t79, 1
  %t81 = extractvalue { i64, ptr } %t79, 0
  %t82 = add i64 %t78, %t81
  %t83 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t82)
  call void @olang_textcopy(ptr %t83, ptr %t77, i64 %t78)
  %t84 = getelementptr i8, ptr %t83, i64 %t78
  call void @olang_textcopy(ptr %t84, ptr %t80, i64 %t81)
  %t85 = insertvalue { i64, ptr } undef, i64 %t82, 0
  %t86 = insertvalue { i64, ptr } %t85, ptr %t83, 1
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t86, ptr %rv
  br label %ret
bb22:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = call { i64, ptr } @compiler_2feffects_2eendsNote(ptr %v0, ptr %s6, ptr %t88)
  store { i64, ptr } %t90, ptr %l45
  br label %bb23
bb23:
  %t91 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t92 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
  %t93 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t94 = extractvalue { i64, ptr } %t93, 1
  %t95 = extractvalue { i64, ptr } %t93, 0
  %t96 = add i64 %t92, %t95
  %t97 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t96)
  call void @olang_textcopy(ptr %t97, ptr %t91, i64 %t92)
  %t98 = getelementptr i8, ptr %t97, i64 %t92
  call void @olang_textcopy(ptr %t98, ptr %t94, i64 %t95)
  %t99 = insertvalue { i64, ptr } undef, i64 %t96, 0
  %t100 = insertvalue { i64, ptr } %t99, ptr %t97, 1
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t100, ptr %rv
  br label %ret
bb24:
  %t102 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t102, ptr %l47
  br label %bb25
bb25:
  %t103 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l47
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t103, ptr %l2
  %t104 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t104, ptr %l48
  br label %bb26
bb26:
  %t105 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l48
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t105, ptr %l3
  store i64 0, ptr %l4, !tbaa !24
  %t106 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t108 = extractvalue { i64, ptr } %t106, 0
  store i64 %t108, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t110 = load i64, ptr %l5, !tbaa !24
  %t111 = load i64, ptr %l4, !tbaa !24
  %t114 = icmp sgt i64 %t110, %t111
  br i1 %t114, label %bb27, label %bb28
bb27:
  %t116 = load i64, ptr %l6, !tbaa !24
  %t118 = icmp sgt i64 %t116, 0
  br i1 %t118, label %bb29, label %bb30
bb28:
  store i64 0, ptr %l54, !tbaa !24
  br label %bb32
bb29:
  %t120 = load i64, ptr %l5, !tbaa !24
  %t121 = load i64, ptr %l4, !tbaa !24
  %t124 = sub i64 %t120, %t121
  %t125 = load i64, ptr %l6, !tbaa !24
  %t128 = add i64 %t124, %t125
  %t130 = sub i64 %t128, 1
  %t131 = load i64, ptr %l6, !tbaa !24
  %t134 = sdiv i64 %t130, %t131
  store i64 %t134, ptr %l57, !tbaa !24
  br label %bb31
bb30:
  store i64 0, ptr %l57, !tbaa !24
  br label %bb31
bb31:
  %t136 = load i64, ptr %l57, !tbaa !24
  store i64 %t136, ptr %l54, !tbaa !24
  br label %bb32
bb32:
  %t137 = load i64, ptr %l54, !tbaa !24
  store i64 %t137, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb33
bb33:
  %t138 = load i64, ptr %l8, !tbaa !24
  %t139 = load i64, ptr %l7, !tbaa !24
  %t142 = icmp slt i64 %t138, %t139
  %t144 = xor i1 %t142, true
  br i1 %t144, label %bb34, label %bb35
bb34:
  br label %bb45
bb35:
  br label %bb36
bb36:
  %t146 = load i64, ptr %l4, !tbaa !24
  %t147 = load i64, ptr %l8, !tbaa !24
  %t148 = load i64, ptr %l6, !tbaa !24
  %t151 = mul i64 %t147, %t148
  %t154 = add i64 %t146, %t151
  store i64 %t154, ptr %l9, !tbaa !24
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t158 = getelementptr %"compiler/effects:Facts", ptr %t156, i32 0, i32 20
  %t159 = load i64, ptr %t158, !tbaa !24
  %t160 = load i64, ptr %l9, !tbaa !24
  %t163 = call i1 @compiler_2feffects_2ehasBit(i64 %t159, i64 %t160)
  store i1 %t163, ptr %l78
  br label %bb37
bb37:
  %t164 = load i1, ptr %l78, !tbaa !21
  br i1 %t164, label %bb38, label %bb39
bb38:
  store ptr %l3, ptr %l79, !tbaa !29
  %t165 = ptrtoint ptr %s0 to i64
  store i64 %t165, ptr %l80, !tbaa !24
  %t166 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t166, label %bb40, label %bb41
bb39:
  br label %bb43
bb40:
  %t168 = call ptr @__olang_region_make(ptr %s0)
  %t169 = ptrtoint ptr %t168 to i64
  store i64 %t169, ptr %l80, !tbaa !24
  br label %bb41
bb41:
  %t170 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t170, ptr %l82, !tbaa !27
  %t171 = load i64, ptr %l9, !tbaa !24
  %t173 = getelementptr { i64, ptr }, ptr %l82, i32 0, i32 1
  %t174 = load ptr, ptr %t173, !tbaa !27
  %t175 = getelementptr { i64, ptr }, ptr %t174, i64 %t171
  %t176 = load { i64, ptr }, ptr %t175, !tbaa !37
  %t177 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t178 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  %t180 = extractvalue { i64, ptr } %t176, 1
  %t181 = extractvalue { i64, ptr } %t176, 0
  %t182 = add i64 %t178, %t181
  %t183 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t184 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t185 = add i64 %t182, %t184
  %t186 = load i64, ptr %l80
  %t187 = inttoptr i64 %t186 to ptr
  %t188 = call ptr @__olang_scope_alloc(ptr %t187, i64 %t185)
  call void @olang_textcopy(ptr %t188, ptr %t177, i64 %t178)
  %t189 = getelementptr i8, ptr %t188, i64 %t178
  call void @olang_textcopy(ptr %t189, ptr %t180, i64 %t181)
  %t190 = getelementptr i8, ptr %t189, i64 %t181
  call void @olang_textcopy(ptr %t190, ptr %t183, i64 %t184)
  %t191 = insertvalue { i64, ptr } undef, i64 %t185, 0
  %t192 = insertvalue { i64, ptr } %t191, ptr %t188, 1
  %t194 = load i64, ptr %l80
  %t195 = inttoptr i64 %t194 to ptr
  %t196 = extractvalue { i64, ptr } %t192, 0
  %t197 = extractvalue { i64, ptr } %t192, 1
  %t198 = mul i64 %t196, 1
  %t199 = call ptr @__olang_scope_alloc(ptr %t195, i64 %t198)
  call void @llvm.memcpy.p0.p0.i64(ptr %t199, ptr %t197, i64 %t198, i1 false)
  %t200 = insertvalue { i64, ptr } undef, i64 %t196, 0
  %t201 = insertvalue { i64, ptr } %t200, ptr %t199, 1
  %t202 = load ptr, ptr %l79, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t202, { i64, ptr } %t201)
  br label %bb42
bb42:
  br label %bb43
bb43:
  br label %bb44
bb44:
  %t204 = load i64, ptr %l8, !tbaa !24
  %t206 = add i64 %t204, 1
  store i64 %t206, ptr %l8, !tbaa !24
  br label %bb33
bb45:
  %t209 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l3)
  store i64 %t209, ptr %l90
  br label %bb46
bb46:
  %t210 = load i64, ptr %l90, !tbaa !24
  %t211 = icmp sgt i64 %t210, 0
  br i1 %t211, label %bb47, label %bb48
bb47:
  store %olang.scope zeroinitializer, ptr %s15
  store ptr %l2, ptr %l92, !tbaa !29
  %t213 = ptrtoint ptr %s0 to i64
  store i64 %t213, ptr %l93, !tbaa !24
  %t214 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t214, label %bb49, label %bb50
bb48:
  br label %bb53
bb49:
  %t216 = call ptr @__olang_region_make(ptr %s0)
  %t217 = ptrtoint ptr %t216 to i64
  store i64 %t217, ptr %l93, !tbaa !24
  br label %bb50
bb50:
  %t219 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %s0, ptr %s15, ptr %s15, ptr %l3, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d16, i32 0, i32 1) })
  store { i64, ptr } %t219, ptr %l96
  br label %bb51
bb51:
  %t220 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t221 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  %t222 = load { i64, ptr }, ptr %l96, !tbaa !27
  %t223 = extractvalue { i64, ptr } %t222, 1
  %t224 = extractvalue { i64, ptr } %t222, 0
  %t225 = add i64 %t221, %t224
  %t226 = load i64, ptr %l93
  %t227 = inttoptr i64 %t226 to ptr
  %t228 = call ptr @__olang_scope_alloc(ptr %t227, i64 %t225)
  call void @olang_textcopy(ptr %t228, ptr %t220, i64 %t221)
  %t229 = getelementptr i8, ptr %t228, i64 %t221
  call void @olang_textcopy(ptr %t229, ptr %t223, i64 %t224)
  %t230 = insertvalue { i64, ptr } undef, i64 %t225, 0
  %t231 = insertvalue { i64, ptr } %t230, ptr %t228, 1
  %t233 = load i64, ptr %l93
  %t234 = inttoptr i64 %t233 to ptr
  %t235 = extractvalue { i64, ptr } %t231, 0
  %t236 = extractvalue { i64, ptr } %t231, 1
  %t237 = mul i64 %t235, 1
  %t238 = call ptr @__olang_scope_alloc(ptr %t234, i64 %t237)
  call void @llvm.memcpy.p0.p0.i64(ptr %t238, ptr %t236, i64 %t237, i1 false)
  %t239 = insertvalue { i64, ptr } undef, i64 %t235, 0
  %t240 = insertvalue { i64, ptr } %t239, ptr %t238, 1
  %t241 = load ptr, ptr %l92, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t241, { i64, ptr } %t240)
  br label %bb52
bb52:
  call void @__olang_scope_close(ptr %s15)
  br label %bb53
bb53:
  %t243 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t243, ptr %l99
  br label %bb54
bb54:
  %t244 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l99
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t244, ptr %l10
  store i64 0, ptr %l11, !tbaa !24
  %t245 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t247 = extractvalue { i64, ptr } %t245, 0
  store i64 %t247, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t249 = load i64, ptr %l12, !tbaa !24
  %t250 = load i64, ptr %l11, !tbaa !24
  %t253 = icmp sgt i64 %t249, %t250
  br i1 %t253, label %bb55, label %bb56
bb55:
  %t255 = load i64, ptr %l13, !tbaa !24
  %t257 = icmp sgt i64 %t255, 0
  br i1 %t257, label %bb57, label %bb58
bb56:
  store i64 0, ptr %l105, !tbaa !24
  br label %bb60
bb57:
  %t259 = load i64, ptr %l12, !tbaa !24
  %t260 = load i64, ptr %l11, !tbaa !24
  %t263 = sub i64 %t259, %t260
  %t264 = load i64, ptr %l13, !tbaa !24
  %t267 = add i64 %t263, %t264
  %t269 = sub i64 %t267, 1
  %t270 = load i64, ptr %l13, !tbaa !24
  %t273 = sdiv i64 %t269, %t270
  store i64 %t273, ptr %l108, !tbaa !24
  br label %bb59
bb58:
  store i64 0, ptr %l108, !tbaa !24
  br label %bb59
bb59:
  %t275 = load i64, ptr %l108, !tbaa !24
  store i64 %t275, ptr %l105, !tbaa !24
  br label %bb60
bb60:
  %t276 = load i64, ptr %l105, !tbaa !24
  store i64 %t276, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb61
bb61:
  %t277 = load i64, ptr %l15, !tbaa !24
  %t278 = load i64, ptr %l14, !tbaa !24
  %t281 = icmp slt i64 %t277, %t278
  %t283 = xor i1 %t281, true
  br i1 %t283, label %bb62, label %bb63
bb62:
  br label %bb73
bb63:
  br label %bb64
bb64:
  %t285 = load i64, ptr %l11, !tbaa !24
  %t286 = load i64, ptr %l15, !tbaa !24
  %t287 = load i64, ptr %l13, !tbaa !24
  %t290 = mul i64 %t286, %t287
  %t293 = add i64 %t285, %t290
  store i64 %t293, ptr %l16, !tbaa !24
  %t295 = load ptr, ptr %l0, !tbaa !29
  %t297 = getelementptr %"compiler/effects:Facts", ptr %t295, i32 0, i32 21
  %t298 = load i64, ptr %t297, !tbaa !24
  %t299 = load i64, ptr %l16, !tbaa !24
  %t302 = call i1 @compiler_2feffects_2ehasBit(i64 %t298, i64 %t299)
  store i1 %t302, ptr %l129
  br label %bb65
bb65:
  %t303 = load i1, ptr %l129, !tbaa !21
  br i1 %t303, label %bb66, label %bb67
bb66:
  store ptr %l10, ptr %l130, !tbaa !29
  %t304 = ptrtoint ptr %s0 to i64
  store i64 %t304, ptr %l131, !tbaa !24
  %t305 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t305, label %bb68, label %bb69
bb67:
  br label %bb71
bb68:
  %t307 = call ptr @__olang_region_make(ptr %s0)
  %t308 = ptrtoint ptr %t307 to i64
  store i64 %t308, ptr %l131, !tbaa !24
  br label %bb69
bb69:
  %t309 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t309, ptr %l133, !tbaa !27
  %t310 = load i64, ptr %l16, !tbaa !24
  %t312 = getelementptr { i64, ptr }, ptr %l133, i32 0, i32 1
  %t313 = load ptr, ptr %t312, !tbaa !27
  %t314 = getelementptr { i64, ptr }, ptr %t313, i64 %t310
  %t315 = load { i64, ptr }, ptr %t314, !tbaa !37
  %t316 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t317 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t319 = extractvalue { i64, ptr } %t315, 1
  %t320 = extractvalue { i64, ptr } %t315, 0
  %t321 = add i64 %t317, %t320
  %t322 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t323 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  %t324 = add i64 %t321, %t323
  %t325 = load i64, ptr %l131
  %t326 = inttoptr i64 %t325 to ptr
  %t327 = call ptr @__olang_scope_alloc(ptr %t326, i64 %t324)
  call void @olang_textcopy(ptr %t327, ptr %t316, i64 %t317)
  %t328 = getelementptr i8, ptr %t327, i64 %t317
  call void @olang_textcopy(ptr %t328, ptr %t319, i64 %t320)
  %t329 = getelementptr i8, ptr %t328, i64 %t320
  call void @olang_textcopy(ptr %t329, ptr %t322, i64 %t323)
  %t330 = insertvalue { i64, ptr } undef, i64 %t324, 0
  %t331 = insertvalue { i64, ptr } %t330, ptr %t327, 1
  %t333 = load i64, ptr %l131
  %t334 = inttoptr i64 %t333 to ptr
  %t335 = extractvalue { i64, ptr } %t331, 0
  %t336 = extractvalue { i64, ptr } %t331, 1
  %t337 = mul i64 %t335, 1
  %t338 = call ptr @__olang_scope_alloc(ptr %t334, i64 %t337)
  call void @llvm.memcpy.p0.p0.i64(ptr %t338, ptr %t336, i64 %t337, i1 false)
  %t339 = insertvalue { i64, ptr } undef, i64 %t335, 0
  %t340 = insertvalue { i64, ptr } %t339, ptr %t338, 1
  %t341 = load ptr, ptr %l130, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t341, { i64, ptr } %t340)
  br label %bb70
bb70:
  br label %bb71
bb71:
  br label %bb72
bb72:
  %t343 = load i64, ptr %l15, !tbaa !24
  %t345 = add i64 %t343, 1
  store i64 %t345, ptr %l15, !tbaa !24
  br label %bb61
bb73:
  %t348 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l10)
  store i64 %t348, ptr %l141
  br label %bb74
bb74:
  %t349 = load i64, ptr %l141, !tbaa !24
  %t350 = icmp sgt i64 %t349, 0
  br i1 %t350, label %bb75, label %bb76
bb75:
  store %olang.scope zeroinitializer, ptr %s22
  store ptr %l2, ptr %l143, !tbaa !29
  %t352 = ptrtoint ptr %s0 to i64
  store i64 %t352, ptr %l144, !tbaa !24
  %t353 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t353, label %bb77, label %bb78
bb76:
  br label %bb81
bb77:
  %t355 = call ptr @__olang_region_make(ptr %s0)
  %t356 = ptrtoint ptr %t355 to i64
  store i64 %t356, ptr %l144, !tbaa !24
  br label %bb78
bb78:
  %t358 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %s0, ptr %s22, ptr %s22, ptr %l10, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d20, i32 0, i32 1) })
  store { i64, ptr } %t358, ptr %l147
  br label %bb79
bb79:
  %t359 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t360 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  %t361 = load { i64, ptr }, ptr %l147, !tbaa !27
  %t362 = extractvalue { i64, ptr } %t361, 1
  %t363 = extractvalue { i64, ptr } %t361, 0
  %t364 = add i64 %t360, %t363
  %t365 = load i64, ptr %l144
  %t366 = inttoptr i64 %t365 to ptr
  %t367 = call ptr @__olang_scope_alloc(ptr %t366, i64 %t364)
  call void @olang_textcopy(ptr %t367, ptr %t359, i64 %t360)
  %t368 = getelementptr i8, ptr %t367, i64 %t360
  call void @olang_textcopy(ptr %t368, ptr %t362, i64 %t363)
  %t369 = insertvalue { i64, ptr } undef, i64 %t364, 0
  %t370 = insertvalue { i64, ptr } %t369, ptr %t367, 1
  %t372 = load i64, ptr %l144
  %t373 = inttoptr i64 %t372 to ptr
  %t374 = extractvalue { i64, ptr } %t370, 0
  %t375 = extractvalue { i64, ptr } %t370, 1
  %t376 = mul i64 %t374, 1
  %t377 = call ptr @__olang_scope_alloc(ptr %t373, i64 %t376)
  call void @llvm.memcpy.p0.p0.i64(ptr %t377, ptr %t375, i64 %t376, i1 false)
  %t378 = insertvalue { i64, ptr } undef, i64 %t374, 0
  %t379 = insertvalue { i64, ptr } %t378, ptr %t377, 1
  %t380 = load ptr, ptr %l143, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t380, { i64, ptr } %t379)
  br label %bb80
bb80:
  call void @__olang_scope_close(ptr %s22)
  br label %bb81
bb81:
  %t382 = load ptr, ptr %l0, !tbaa !29
  %t384 = getelementptr %"compiler/effects:Facts", ptr %t382, i32 0, i32 2
  %t385 = load i1, ptr %t384, !tbaa !21
  br i1 %t385, label %bb82, label %bb83
bb82:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l2, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d22, i32 0, i32 1) })
  br label %bb84
bb83:
  br label %bb85
bb84:
  br label %bb85
bb85:
  store ptr %l2, ptr %l153, !tbaa !29
  %t388 = ptrtoint ptr %s0 to i64
  store i64 %t388, ptr %l154, !tbaa !24
  %t389 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t389, label %bb86, label %bb87
bb86:
  %t391 = call ptr @__olang_region_make(ptr %s0)
  %t392 = ptrtoint ptr %t391 to i64
  store i64 %t392, ptr %l154, !tbaa !24
  br label %bb87
bb87:
  %t393 = load ptr, ptr %l0, !tbaa !29
  %t395 = getelementptr %"compiler/effects:Facts", ptr %t393, i32 0, i32 0
  %t396 = load i1, ptr %t395, !tbaa !21
  br i1 %t396, label %bb88, label %bb89
bb88:
  store { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d23, i32 0, i32 1) }, ptr %l159, !tbaa !27
  %t398 = load { i64, ptr }, ptr %l159, !tbaa !27
  store { i64, ptr } %t398, ptr %l158, !tbaa !27
  br label %bb90
bb89:
  store { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d24, i32 0, i32 1) }, ptr %l161, !tbaa !27
  %t400 = load { i64, ptr }, ptr %l161, !tbaa !27
  store { i64, ptr } %t400, ptr %l158, !tbaa !27
  br label %bb90
bb90:
  %t402 = load { i64, ptr }, ptr %l158, !tbaa !27
  %t403 = load i64, ptr %l154
  %t404 = inttoptr i64 %t403 to ptr
  %t405 = extractvalue { i64, ptr } %t402, 0
  %t406 = extractvalue { i64, ptr } %t402, 1
  %t407 = mul i64 %t405, 1
  %t408 = call ptr @__olang_scope_alloc(ptr %t404, i64 %t407)
  call void @llvm.memcpy.p0.p0.i64(ptr %t408, ptr %t406, i64 %t407, i1 false)
  %t409 = insertvalue { i64, ptr } undef, i64 %t405, 0
  %t410 = insertvalue { i64, ptr } %t409, ptr %t408, 1
  %t411 = load ptr, ptr %l153, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t411, { i64, ptr } %t410)
  br label %bb91
bb91:
  %t413 = load ptr, ptr %l0, !tbaa !29
  %t415 = getelementptr %"compiler/effects:Facts", ptr %t413, i32 0, i32 11
  %t416 = load i1, ptr %t415, !tbaa !21
  br i1 %t416, label %bb92, label %bb93
bb92:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l2, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d25, i32 0, i32 1) })
  br label %bb94
bb93:
  br label %bb95
bb94:
  br label %bb95
bb95:
  %t419 = load ptr, ptr %l0, !tbaa !29
  %t421 = getelementptr %"compiler/effects:Facts", ptr %t419, i32 0, i32 6
  %t422 = load i1, ptr %t421, !tbaa !21
  br i1 %t422, label %bb96, label %bb97
bb96:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l2, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d26, i32 0, i32 1) })
  br label %bb98
bb97:
  br label %bb99
bb98:
  br label %bb99
bb99:
  %t425 = load ptr, ptr %l0, !tbaa !29
  %t427 = call { i64, ptr } @compiler_2feffects_2ecapText(ptr %v0, ptr %s0, ptr %t425)
  store { i64, ptr } %t427, ptr %l171
  br label %bb100
bb100:
  %t428 = load { i64, ptr }, ptr %l171, !tbaa !27
  store { i64, ptr } %t428, ptr %l17, !tbaa !27
  %t429 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t431 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t429, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d27, i32 0, i32 1) })
  store i1 %t431, ptr %l173
  br label %bb101
bb101:
  %t432 = load i1, ptr %l173, !tbaa !21
  %t433 = xor i1 %t432, true
  br i1 %t433, label %bb102, label %bb103
bb102:
  %t435 = load { i64, ptr }, ptr %l17, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l2, { i64, ptr } %t435)
  br label %bb104
bb103:
  %t438 = load ptr, ptr %l0, !tbaa !29
  %t440 = getelementptr %"compiler/effects:Facts", ptr %t438, i32 0, i32 4
  %t441 = load i1, ptr %t440, !tbaa !21
  br i1 %t441, label %bb105, label %bb106
bb104:
  br label %bb109
bb105:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l2, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d28, i32 0, i32 1) })
  br label %bb107
bb106:
  br label %bb108
bb107:
  br label %bb108
bb108:
  br label %bb109
bb109:
  %t444 = load ptr, ptr %l0, !tbaa !29
  %t446 = getelementptr %"compiler/effects:Facts", ptr %t444, i32 0, i32 12
  %t447 = load i1, ptr %t446, !tbaa !21
  br i1 %t447, label %bb110, label %bb111
bb110:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l2, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d29, i32 0, i32 1) })
  br label %bb112
bb111:
  br label %bb113
bb112:
  br label %bb113
bb113:
  store ptr %l2, ptr %l183, !tbaa !29
  %t450 = ptrtoint ptr %s0 to i64
  store i64 %t450, ptr %l184, !tbaa !24
  %t451 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t451, label %bb114, label %bb115
bb114:
  %t453 = call ptr @__olang_region_make(ptr %s0)
  %t454 = ptrtoint ptr %t453 to i64
  store i64 %t454, ptr %l184, !tbaa !24
  br label %bb115
bb115:
  %t455 = load ptr, ptr %l0, !tbaa !29
  %t457 = getelementptr %"compiler/effects:Facts", ptr %t455, i32 0, i32 1
  %t458 = load i1, ptr %t457, !tbaa !21
  br i1 %t458, label %bb116, label %bb117
bb116:
  store { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d30, i32 0, i32 1) }, ptr %l189, !tbaa !27
  %t460 = load { i64, ptr }, ptr %l189, !tbaa !27
  store { i64, ptr } %t460, ptr %l188, !tbaa !27
  br label %bb118
bb117:
  store { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d31, i32 0, i32 1) }, ptr %l191, !tbaa !27
  %t462 = load { i64, ptr }, ptr %l191, !tbaa !27
  store { i64, ptr } %t462, ptr %l188, !tbaa !27
  br label %bb118
bb118:
  %t464 = load { i64, ptr }, ptr %l188, !tbaa !27
  %t465 = load i64, ptr %l184
  %t466 = inttoptr i64 %t465 to ptr
  %t467 = extractvalue { i64, ptr } %t464, 0
  %t468 = extractvalue { i64, ptr } %t464, 1
  %t469 = mul i64 %t467, 1
  %t470 = call ptr @__olang_scope_alloc(ptr %t466, i64 %t469)
  call void @llvm.memcpy.p0.p0.i64(ptr %t470, ptr %t468, i64 %t469, i1 false)
  %t471 = insertvalue { i64, ptr } undef, i64 %t467, 0
  %t472 = insertvalue { i64, ptr } %t471, ptr %t470, 1
  %t473 = load ptr, ptr %l183, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t473, { i64, ptr } %t472)
  br label %bb119
bb119:
  %t475 = load ptr, ptr %l0, !tbaa !29
  %t477 = getelementptr %"compiler/effects:Facts", ptr %t475, i32 0, i32 7
  %t478 = load i1, ptr %t477, !tbaa !21
  br i1 %t478, label %bb120, label %bb121
bb120:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l2, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d32, i32 0, i32 1) })
  br label %bb122
bb121:
  br label %bb123
bb122:
  br label %bb123
bb123:
  %t481 = load ptr, ptr %l0, !tbaa !29
  %t483 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aFacts_2eTerminates(ptr %v0, ptr %t481)
  store i1 %t483, ptr %l198
  br label %bb124
bb124:
  %t484 = load i1, ptr %l198, !tbaa !21
  br i1 %t484, label %bb125, label %bb126
bb125:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l2, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d33, i32 0, i32 1) })
  br label %bb127
bb126:
  br label %bb128
bb127:
  br label %bb128
bb128:
  %t486 = load ptr, ptr %l0, !tbaa !29
  %t488 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aFacts_2eEvaluable(ptr %v0, ptr %t486)
  store i1 %t488, ptr %l201
  br label %bb129
bb129:
  %t489 = load i1, ptr %l201, !tbaa !21
  br i1 %t489, label %bb130, label %bb131
bb130:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l2, { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d34, i32 0, i32 1) })
  br label %bb132
bb131:
  br label %bb133
bb132:
  br label %bb133
bb133:
  %t492 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %s0, ptr %v2, ptr %v2, ptr %l2, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d35, i32 0, i32 1) })
  store { i64, ptr } %t492, ptr %l204
  br label %bb134
bb134:
  call void @__olang_scope_close(ptr %s0)
  %t493 = load { i64, ptr }, ptr %l204, !tbaa !27
  store { i64, ptr } %t493, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2feffects_2eFact_2eNamed(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i32
  %l3 = alloca i1
  %l6 = alloca i1
  %l9 = alloca i1
  %l12 = alloca i1
  %l15 = alloca i1
  %l18 = alloca i1
  %l21 = alloca i1
  %l24 = alloca i1
  %l27 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d36, i32 0, i32 1) })
  store i1 %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load i1, ptr %l3, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb5
bb4:
  store i32 0, ptr %l1
  br label %bb50
bb5:
  %t6 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t8 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t6, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d37, i32 0, i32 1) })
  store i1 %t8, ptr %l6
  br label %bb6
bb6:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i32 1, ptr %l1
  br label %bb50
bb10:
  %t11 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t13 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t11, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d38, i32 0, i32 1) })
  store i1 %t13, ptr %l9
  br label %bb11
bb11:
  %t14 = load i1, ptr %l9, !tbaa !21
  br i1 %t14, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb15
bb14:
  store i32 2, ptr %l1
  br label %bb50
bb15:
  %t16 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t18 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t16, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d39, i32 0, i32 1) })
  store i1 %t18, ptr %l12
  br label %bb16
bb16:
  %t19 = load i1, ptr %l12, !tbaa !21
  br i1 %t19, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store i32 3, ptr %l1
  br label %bb50
bb20:
  %t21 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t23 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t21, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d40, i32 0, i32 1) })
  store i1 %t23, ptr %l15
  br label %bb21
bb21:
  %t24 = load i1, ptr %l15, !tbaa !21
  br i1 %t24, label %bb22, label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb25
bb24:
  store i32 4, ptr %l1
  br label %bb50
bb25:
  %t26 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t28 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t26, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d41, i32 0, i32 1) })
  store i1 %t28, ptr %l18
  br label %bb26
bb26:
  %t29 = load i1, ptr %l18, !tbaa !21
  br i1 %t29, label %bb27, label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb30
bb29:
  store i32 5, ptr %l1
  br label %bb50
bb30:
  %t31 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t33 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t31, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d42, i32 0, i32 1) })
  store i1 %t33, ptr %l21
  br label %bb31
bb31:
  %t34 = load i1, ptr %l21, !tbaa !21
  br i1 %t34, label %bb32, label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb35
bb34:
  store i32 6, ptr %l1
  br label %bb50
bb35:
  %t36 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t38 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t36, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d43, i32 0, i32 1) })
  store i1 %t38, ptr %l24
  br label %bb36
bb36:
  %t39 = load i1, ptr %l24, !tbaa !21
  br i1 %t39, label %bb37, label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb40
bb39:
  store i32 7, ptr %l1
  br label %bb50
bb40:
  %t41 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t43 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t41, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d44, i32 0, i32 1) })
  store i1 %t43, ptr %l27
  br label %bb41
bb41:
  %t44 = load i1, ptr %l27, !tbaa !21
  br i1 %t44, label %bb42, label %bb43
bb42:
  br label %bb44
bb43:
  br label %bb45
bb44:
  store i32 8, ptr %l1
  br label %bb50
bb45:
  br i1 true, label %bb46, label %bb47
bb46:
  br label %bb48
bb47:
  br label %bb49
bb48:
  store i32 9, ptr %l1
  br label %bb50
bb49:
  call void @__olang_check_failed(ptr @olang_loc_158e937bb9d0bd20_7156a314163e06b4)
  unreachable
bb50:
  call void @__olang_scope_close(ptr %s0)
  %t47 = load i32, ptr %l1, !range !{i32 0, i32 10}
  store i32 %t47, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local %"compiler/effects:Facts" @compiler_2feffects_2eFacts_2eBound(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca %"compiler/effects:Facts"
  %l3 = alloca i64
  %l4 = alloca i1
  %l5 = alloca i1
  %l6 = alloca i1
  %l7 = alloca %"compiler/effects:Facts"
  %l10 = alloca i32
  %l13 = alloca i64
  %l16 = alloca i64
  %l31 = alloca i1
  %l43 = alloca i1
  %l54 = alloca i1
  %l62 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/effects:Facts"
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"compiler/effects:Facts" @compiler_2feffects_3aFacts_2ector(ptr %s0)
  store %"compiler/effects:Facts" %t1, ptr %l7
  br label %bb1
bb1:
  %t2 = load %"compiler/effects:Facts", ptr %l7
  store %"compiler/effects:Facts" %t2, ptr %l2
  %t3 = getelementptr %"compiler/effects:Facts", ptr %l2, i32 0, i32 14
  store i1 true, ptr %t3, !tbaa !21
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t5 = load i32, ptr %l1, !tbaa !23
  %t8 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t4, i32 %t5)
  store i32 %t8, ptr %l10
  br label %bb2
bb2:
  %t9 = load i32, ptr %l10, !range !{i32 0, i32 33}
  %t11 = trunc i64 21 to i32
  %t12 = icmp eq i32 %t9, %t11
  br i1 %t12, label %bb3, label %bb4
bb3:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load i32, ptr %l1, !tbaa !23
  %t18 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePromiseWords(ptr %v0, ptr %t14, i32 %t15)
  store i64 %t18, ptr %l16
  br label %bb5
bb4:
  store i64 0, ptr %l13, !tbaa !24
  br label %bb6
bb5:
  %t19 = load i64, ptr @G_2ecompiler_2feffects_2eEffectWords, !tbaa !24
  %t20 = load i64, ptr %l16, !tbaa !24
  %t22 = and i64 %t20, %t19
  store i64 %t22, ptr %l13, !tbaa !24
  br label %bb6
bb6:
  %t24 = load i64, ptr %l13, !tbaa !24
  store i64 %t24, ptr %l3, !tbaa !24
  %t25 = load i64, ptr %l3, !tbaa !24
  %t27 = icmp eq i64 %t25, 0
  br i1 %t27, label %bb7, label %bb8
bb7:
  %t29 = getelementptr %"compiler/effects:Facts", ptr %l2, i32 0, i32 9
  store i1 true, ptr %t29, !tbaa !21
  %t30 = load %"compiler/effects:Facts", ptr %l2
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/effects:Facts" %t30, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t32 = load i64, ptr %l3, !tbaa !24
  %t33 = load i64, ptr @G_2ecompiler_2ftypes_2ePromReturns, !tbaa !24
  %t36 = and i64 %t32, %t33
  %t38 = icmp ne i64 %t36, 0
  store i1 %t38, ptr %l4, !tbaa !21
  %t40 = load i64, ptr %l3, !tbaa !24
  %t41 = load i64, ptr @G_2ecompiler_2ftypes_2ePromPure, !tbaa !24
  %t44 = and i64 %t40, %t41
  %t46 = icmp ne i64 %t44, 0
  store i1 %t46, ptr %l5, !tbaa !21
  %t48 = load i1, ptr %l5, !tbaa !21
  br i1 %t48, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l31, !tbaa !21
  br label %bb12
bb11:
  %t50 = load i64, ptr %l3, !tbaa !24
  %t51 = load i64, ptr @G_2ecompiler_2ftypes_2ePromNoextern, !tbaa !24
  %t54 = and i64 %t50, %t51
  %t56 = icmp ne i64 %t54, 0
  store i1 %t56, ptr %l31, !tbaa !21
  br label %bb12
bb12:
  %t58 = load i1, ptr %l31, !tbaa !21
  store i1 %t58, ptr %l6, !tbaa !21
  %t59 = load i64, ptr %l3, !tbaa !24
  %t60 = load i64, ptr @G_2ecompiler_2ftypes_2ePromNoalloc, !tbaa !24
  %t63 = and i64 %t59, %t60
  %t65 = icmp eq i64 %t63, 0
  %t67 = getelementptr %"compiler/effects:Facts", ptr %l2, i32 0, i32 0
  store i1 %t65, ptr %t67, !tbaa !21
  %t68 = getelementptr %"compiler/effects:Facts", ptr %l2, i32 0, i32 0
  %t69 = load i1, ptr %t68, !tbaa !21
  %t71 = getelementptr %"compiler/effects:Facts", ptr %l2, i32 0, i32 11
  store i1 %t69, ptr %t71, !tbaa !21
  %t72 = load i1, ptr %l4, !tbaa !21
  %t74 = xor i1 %t72, true
  br i1 %t74, label %bb13, label %bb14
bb13:
  %t76 = load i64, ptr %l3, !tbaa !24
  %t77 = load i64, ptr @G_2ecompiler_2ftypes_2ePromNoblock, !tbaa !24
  %t80 = and i64 %t76, %t77
  %t82 = icmp eq i64 %t80, 0
  store i1 %t82, ptr %l43, !tbaa !21
  br label %bb15
bb14:
  store i1 false, ptr %l43, !tbaa !21
  br label %bb15
bb15:
  %t84 = load i1, ptr %l43, !tbaa !21
  %t85 = getelementptr %"compiler/effects:Facts", ptr %l2, i32 0, i32 1
  store i1 %t84, ptr %t85, !tbaa !21
  %t86 = load i64, ptr %l3, !tbaa !24
  %t87 = load i64, ptr @G_2ecompiler_2ftypes_2ePromNospawn, !tbaa !24
  %t90 = and i64 %t86, %t87
  %t92 = icmp eq i64 %t90, 0
  %t94 = getelementptr %"compiler/effects:Facts", ptr %l2, i32 0, i32 6
  store i1 %t92, ptr %t94, !tbaa !21
  %t95 = load i1, ptr %l4, !tbaa !21
  %t97 = xor i1 %t95, true
  br i1 %t97, label %bb16, label %bb17
bb16:
  %t99 = load i64, ptr %l3, !tbaa !24
  %t100 = load i64, ptr @G_2ecompiler_2ftypes_2ePromNorecurse, !tbaa !24
  %t103 = and i64 %t99, %t100
  %t105 = icmp eq i64 %t103, 0
  store i1 %t105, ptr %l54, !tbaa !21
  br label %bb18
bb17:
  store i1 false, ptr %l54, !tbaa !21
  br label %bb18
bb18:
  %t107 = load i1, ptr %l54, !tbaa !21
  %t108 = getelementptr %"compiler/effects:Facts", ptr %l2, i32 0, i32 7
  store i1 %t107, ptr %t108, !tbaa !21
  %t109 = load i1, ptr %l6, !tbaa !21
  %t111 = xor i1 %t109, true
  %t113 = getelementptr %"compiler/effects:Facts", ptr %l2, i32 0, i32 4
  store i1 %t111, ptr %t113, !tbaa !21
  %t114 = load i1, ptr %l4, !tbaa !21
  br i1 %t114, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l62, !tbaa !21
  br label %bb21
bb20:
  %t116 = load i1, ptr %l6, !tbaa !21
  store i1 %t116, ptr %l62, !tbaa !21
  br label %bb21
bb21:
  %t118 = load i1, ptr %l62, !tbaa !21
  %t119 = xor i1 %t118, true
  %t121 = getelementptr %"compiler/effects:Facts", ptr %l2, i32 0, i32 5
  store i1 %t119, ptr %t121, !tbaa !21
  %t122 = load i1, ptr %l4, !tbaa !21
  %t124 = xor i1 %t122, true
  %t126 = getelementptr %"compiler/effects:Facts", ptr %l2, i32 0, i32 8
  store i1 %t124, ptr %t126, !tbaa !21
  %t127 = load i1, ptr %l4, !tbaa !21
  %t129 = xor i1 %t127, true
  %t131 = getelementptr %"compiler/effects:Facts", ptr %l2, i32 0, i32 12
  store i1 %t129, ptr %t131, !tbaa !21
  %t132 = load i1, ptr %l4, !tbaa !21
  %t134 = xor i1 %t132, true
  %t136 = getelementptr %"compiler/effects:Facts", ptr %l2, i32 0, i32 15
  store i1 %t134, ptr %t136, !tbaa !21
  %t137 = load i1, ptr %l5, !tbaa !21
  %t139 = xor i1 %t137, true
  %t141 = getelementptr %"compiler/effects:Facts", ptr %l2, i32 0, i32 2
  store i1 %t139, ptr %t141, !tbaa !21
  %t142 = load i1, ptr %l5, !tbaa !21
  %t144 = xor i1 %t142, true
  %t146 = getelementptr %"compiler/effects:Facts", ptr %l2, i32 0, i32 3
  store i1 %t144, ptr %t146, !tbaa !21
  %t147 = load i1, ptr %l5, !tbaa !21
  %t149 = xor i1 %t147, true
  %t151 = getelementptr %"compiler/effects:Facts", ptr %l2, i32 0, i32 16
  store i1 %t149, ptr %t151, !tbaa !21
  %t152 = load i1, ptr %l5, !tbaa !21
  %t154 = xor i1 %t152, true
  %t156 = getelementptr %"compiler/effects:Facts", ptr %l2, i32 0, i32 17
  store i1 %t154, ptr %t156, !tbaa !21
  %t157 = load i1, ptr %l6, !tbaa !21
  %t159 = xor i1 %t157, true
  br i1 %t159, label %bb22, label %bb23
bb22:
  %t161 = load i64, ptr @G_2ecompiler_2feffects_2eCapFiles, !tbaa !24
  %t162 = load i64, ptr @G_2ecompiler_2feffects_2eCapNetwork, !tbaa !24
  %t165 = or i64 %t161, %t162
  %t166 = load i64, ptr @G_2ecompiler_2feffects_2eCapProcesses, !tbaa !24
  %t169 = or i64 %t165, %t166
  %t170 = load i64, ptr @G_2ecompiler_2feffects_2eCapEnvironment, !tbaa !24
  %t173 = or i64 %t169, %t170
  %t174 = load i64, ptr @G_2ecompiler_2feffects_2eCapC, !tbaa !24
  %t177 = or i64 %t173, %t174
  %t179 = getelementptr %"compiler/effects:Facts", ptr %l2, i32 0, i32 18
  store i64 %t177, ptr %t179, !tbaa !24
  br label %bb24
bb23:
  br label %bb24
bb24:
  %t180 = getelementptr %"compiler/effects:Facts", ptr %l2, i32 0, i32 6
  %t181 = load i1, ptr %t180, !tbaa !21
  br i1 %t181, label %bb25, label %bb26
bb25:
  %t183 = getelementptr %"compiler/effects:Facts", ptr %l2, i32 0, i32 18
  %t184 = load i64, ptr %t183, !tbaa !24
  %t185 = load i64, ptr @G_2ecompiler_2feffects_2eCapThreads, !tbaa !24
  %t188 = or i64 %t184, %t185
  %t190 = getelementptr %"compiler/effects:Facts", ptr %l2, i32 0, i32 18
  store i64 %t188, ptr %t190, !tbaa !24
  br label %bb27
bb26:
  br label %bb27
bb27:
  %t191 = load %"compiler/effects:Facts", ptr %l2
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/effects:Facts" %t191, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/effects:Facts", ptr %rv
  ret %"compiler/effects:Facts" %rr
}

define dso_local i64 @compiler_2feffects_2ecapOf(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca i64
  %l15 = alloca i64
  %l29 = alloca i1
  %l45 = alloca i1
  %l61 = alloca i1
  %l77 = alloca i1
  %l82 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store ptr @G_2ecompiler_2feffects_2efileNames, ptr %l1
  store i64 0, ptr %l2, !tbaa !24
  %t2 = load ptr, ptr %l1
  store i64 25, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t5 = load i64, ptr %l2, !tbaa !24
  %t6 = load i64, ptr %l3, !tbaa !24
  %t9 = icmp slt i64 %t5, %t6
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb2, label %bb3
bb2:
  br label %bb10
bb3:
  br label %bb4
bb4:
  %t13 = load ptr, ptr %l1
  %t14 = load i64, ptr %l2, !tbaa !24
  %t17 = getelementptr [25 x { i64, ptr }], ptr %t13, i64 0, i64 %t14
  %t18 = load { i64, ptr }, ptr %t17, !tbaa !37
  %t20 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t22 = load ptr, ptr @__olang_prog_scope
  %t25 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %t22, { i64, ptr } %t20, { i64, ptr } %t18)
  store i1 %t25, ptr %l29
  br label %bb5
bb5:
  %t26 = load i1, ptr %l29, !tbaa !21
  br i1 %t26, label %bb6, label %bb7
bb6:
  %t27 = load i64, ptr @G_2ecompiler_2feffects_2eCapFiles, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t27, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t29 = load i64, ptr %l2, !tbaa !24
  %t31 = add i64 %t29, 1
  store i64 %t31, ptr %l2, !tbaa !24
  br label %bb1
bb10:
  store ptr @G_2ecompiler_2feffects_2enetNames, ptr %l5
  store i64 0, ptr %l6, !tbaa !24
  %t34 = load ptr, ptr %l5
  store i64 7, ptr %l7, !tbaa !24
  br label %bb11
bb11:
  %t37 = load i64, ptr %l6, !tbaa !24
  %t38 = load i64, ptr %l7, !tbaa !24
  %t41 = icmp slt i64 %t37, %t38
  %t43 = xor i1 %t41, true
  br i1 %t43, label %bb12, label %bb13
bb12:
  br label %bb20
bb13:
  br label %bb14
bb14:
  %t45 = load ptr, ptr %l5
  %t46 = load i64, ptr %l6, !tbaa !24
  %t49 = getelementptr [7 x { i64, ptr }], ptr %t45, i64 0, i64 %t46
  %t50 = load { i64, ptr }, ptr %t49, !tbaa !37
  %t52 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t54 = load ptr, ptr @__olang_prog_scope
  %t57 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %t54, { i64, ptr } %t52, { i64, ptr } %t50)
  store i1 %t57, ptr %l45
  br label %bb15
bb15:
  %t58 = load i1, ptr %l45, !tbaa !21
  br i1 %t58, label %bb16, label %bb17
bb16:
  %t59 = load i64, ptr @G_2ecompiler_2feffects_2eCapNetwork, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t59, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t61 = load i64, ptr %l6, !tbaa !24
  %t63 = add i64 %t61, 1
  store i64 %t63, ptr %l6, !tbaa !24
  br label %bb11
bb20:
  store ptr @G_2ecompiler_2feffects_2eprocNames, ptr %l9
  store i64 0, ptr %l10, !tbaa !24
  %t66 = load ptr, ptr %l9
  store i64 12, ptr %l11, !tbaa !24
  br label %bb21
bb21:
  %t69 = load i64, ptr %l10, !tbaa !24
  %t70 = load i64, ptr %l11, !tbaa !24
  %t73 = icmp slt i64 %t69, %t70
  %t75 = xor i1 %t73, true
  br i1 %t75, label %bb22, label %bb23
bb22:
  br label %bb30
bb23:
  br label %bb24
bb24:
  %t77 = load ptr, ptr %l9
  %t78 = load i64, ptr %l10, !tbaa !24
  %t81 = getelementptr [12 x { i64, ptr }], ptr %t77, i64 0, i64 %t78
  %t82 = load { i64, ptr }, ptr %t81, !tbaa !37
  %t84 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t86 = load ptr, ptr @__olang_prog_scope
  %t89 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %t86, { i64, ptr } %t84, { i64, ptr } %t82)
  store i1 %t89, ptr %l61
  br label %bb25
bb25:
  %t90 = load i1, ptr %l61, !tbaa !21
  br i1 %t90, label %bb26, label %bb27
bb26:
  %t91 = load i64, ptr @G_2ecompiler_2feffects_2eCapProcesses, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t91, ptr %rv
  br label %ret
bb27:
  br label %bb28
bb28:
  br label %bb29
bb29:
  %t93 = load i64, ptr %l10, !tbaa !24
  %t95 = add i64 %t93, 1
  store i64 %t95, ptr %l10, !tbaa !24
  br label %bb21
bb30:
  store ptr @G_2ecompiler_2feffects_2eenvNames, ptr %l13
  store i64 0, ptr %l14, !tbaa !24
  %t98 = load ptr, ptr %l13
  store i64 5, ptr %l15, !tbaa !24
  br label %bb31
bb31:
  %t101 = load i64, ptr %l14, !tbaa !24
  %t102 = load i64, ptr %l15, !tbaa !24
  %t105 = icmp slt i64 %t101, %t102
  %t107 = xor i1 %t105, true
  br i1 %t107, label %bb32, label %bb33
bb32:
  br label %bb40
bb33:
  br label %bb34
bb34:
  %t109 = load ptr, ptr %l13
  %t110 = load i64, ptr %l14, !tbaa !24
  %t113 = getelementptr [5 x { i64, ptr }], ptr %t109, i64 0, i64 %t110
  %t114 = load { i64, ptr }, ptr %t113, !tbaa !37
  %t116 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t118 = load ptr, ptr @__olang_prog_scope
  %t121 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %t118, { i64, ptr } %t116, { i64, ptr } %t114)
  store i1 %t121, ptr %l77
  br label %bb35
bb35:
  %t122 = load i1, ptr %l77, !tbaa !21
  br i1 %t122, label %bb36, label %bb37
bb36:
  %t123 = load i64, ptr @G_2ecompiler_2feffects_2eCapEnvironment, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t123, ptr %rv
  br label %ret
bb37:
  br label %bb38
bb38:
  br label %bb39
bb39:
  %t125 = load i64, ptr %l14, !tbaa !24
  %t127 = add i64 %t125, 1
  store i64 %t127, ptr %l14, !tbaa !24
  br label %bb31
bb40:
  %t129 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t131 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t129, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d45, i32 0, i32 1) })
  store i1 %t131, ptr %l82
  br label %bb41
bb41:
  %t132 = load i1, ptr %l82, !tbaa !21
  br i1 %t132, label %bb42, label %bb43
bb42:
  %t133 = load i64, ptr @G_2ecompiler_2feffects_2eCapThreads, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t133, ptr %rv
  br label %ret
bb43:
  br label %bb44
bb44:
  call void @__olang_scope_close(ptr %s0)
  store i64 0, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2feffects_2ecapText(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca i64
  %l16 = alloca i64
  %l36 = alloca i64
  %l40 = alloca ptr
  %l41 = alloca i64
  %l44 = alloca { i64, ptr }
  %l49 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l8
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l1
  store i64 0, ptr %l2, !tbaa !24
  %t3 = load i64, ptr @G_2ecompiler_2feffects_2eCapCount, !tbaa !24
  store i64 %t3, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t5 = load i64, ptr %l3, !tbaa !24
  %t6 = load i64, ptr %l2, !tbaa !24
  %t9 = icmp sgt i64 %t5, %t6
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load i64, ptr %l4, !tbaa !24
  %t13 = icmp sgt i64 %t11, 0
  br i1 %t13, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l13, !tbaa !24
  br label %bb7
bb4:
  %t15 = load i64, ptr %l3, !tbaa !24
  %t16 = load i64, ptr %l2, !tbaa !24
  %t19 = sub i64 %t15, %t16
  %t20 = load i64, ptr %l4, !tbaa !24
  %t23 = add i64 %t19, %t20
  %t25 = sub i64 %t23, 1
  %t26 = load i64, ptr %l4, !tbaa !24
  %t29 = sdiv i64 %t25, %t26
  store i64 %t29, ptr %l16, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l16, !tbaa !24
  br label %bb6
bb6:
  %t31 = load i64, ptr %l16, !tbaa !24
  store i64 %t31, ptr %l13, !tbaa !24
  br label %bb7
bb7:
  %t32 = load i64, ptr %l13, !tbaa !24
  store i64 %t32, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb8
bb8:
  %t33 = load i64, ptr %l6, !tbaa !24
  %t34 = load i64, ptr %l5, !tbaa !24
  %t37 = icmp slt i64 %t33, %t34
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb9, label %bb10
bb9:
  br label %bb20
bb10:
  br label %bb11
bb11:
  %t41 = load i64, ptr %l2, !tbaa !24
  %t42 = load i64, ptr %l6, !tbaa !24
  %t43 = load i64, ptr %l4, !tbaa !24
  %t46 = mul i64 %t42, %t43
  %t49 = add i64 %t41, %t46
  store i64 %t49, ptr %l7, !tbaa !24
  %t53 = getelementptr %"compiler/effects:Facts", ptr %a0, i32 0, i32 18
  %t54 = load i64, ptr %t53, !tbaa !24
  %t55 = load i64, ptr %l7, !tbaa !24
  store i64 %t55, ptr %l36, !tbaa !24
  %t56 = load i64, ptr %l36, !tbaa !24
  %t57 = load i64, ptr %l36, !tbaa !24
  %t58 = shl i64 1, %t57
  %t61 = and i64 %t54, %t58
  %t63 = icmp ne i64 %t61, 0
  br i1 %t63, label %bb12, label %bb13
bb12:
  store ptr %l1, ptr %l40, !tbaa !29
  %t65 = ptrtoint ptr %s0 to i64
  store i64 %t65, ptr %l41, !tbaa !24
  %t66 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t66, label %bb14, label %bb15
bb13:
  br label %bb18
bb14:
  %t68 = call ptr @__olang_region_make(ptr %s0)
  %t69 = ptrtoint ptr %t68 to i64
  store i64 %t69, ptr %l41, !tbaa !24
  br label %bb15
bb15:
  %t70 = load i64, ptr %l7, !tbaa !24
  %t71 = load i64, ptr %l41
  %t72 = inttoptr i64 %t71 to ptr
  %t74 = call { i64, ptr } @compiler_2feffects_2eCapName(ptr %t72, i64 %t70)
  store { i64, ptr } %t74, ptr %l44
  br label %bb16
bb16:
  %t75 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t76 = load i64, ptr %l41
  %t77 = inttoptr i64 %t76 to ptr
  %t78 = extractvalue { i64, ptr } %t75, 0
  %t79 = extractvalue { i64, ptr } %t75, 1
  %t80 = mul i64 %t78, 1
  %t81 = call ptr @__olang_scope_alloc(ptr %t77, i64 %t80)
  call void @llvm.memcpy.p0.p0.i64(ptr %t81, ptr %t79, i64 %t80, i1 false)
  %t82 = insertvalue { i64, ptr } undef, i64 %t78, 0
  %t83 = insertvalue { i64, ptr } %t82, ptr %t81, 1
  %t84 = load ptr, ptr %l40, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t84, { i64, ptr } %t83)
  br label %bb17
bb17:
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t86 = load i64, ptr %l6, !tbaa !24
  %t88 = add i64 %t86, 1
  store i64 %t88, ptr %l6, !tbaa !24
  br label %bb8
bb20:
  %t91 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %s0, ptr %v1, ptr %v1, ptr %l1, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d46, i32 0, i32 1) })
  store { i64, ptr } %t91, ptr %l49
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s0)
  %t92 = load { i64, ptr }, ptr %l49, !tbaa !27
  store { i64, ptr } %t92, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eargLink(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l8 = alloca i64
  %l12 = alloca ptr
  %l16 = alloca %"compiler/effects:link"
  %l19 = alloca i1
  %l21 = alloca ptr
  %l25 = alloca %"compiler/effects:link"
  %l30 = alloca i64
  %l34 = alloca ptr
  %l38 = alloca %"compiler/effects:link"
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s6 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l3, !tbaa !29
  %t5 = call i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eargParam(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  store i64 %t5, ptr %l8
  br label %bb1
bb1:
  %t6 = load i64, ptr %l8, !tbaa !24
  store i64 %t6, ptr %l4, !tbaa !24
  %t7 = load i64, ptr %l4, !tbaa !24
  %t9 = icmp sge i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/effects:Effects", ptr %t11, i32 0, i32 24
  store ptr %t13, ptr %l12, !tbaa !29
  %t14 = load i64, ptr %l1, !tbaa !24
  %t15 = load i64, ptr %l2, !tbaa !24
  %t16 = load i64, ptr %l4, !tbaa !24
  %t20 = call %"compiler/effects:link" @compiler_2feffects_3alink_2ector(ptr %s1, i64 %t14, i64 %t15, i64 %t16)
  store %"compiler/effects:link" %t20, ptr %l16
  br label %bb4
bb3:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load ptr, ptr %l3, !tbaa !29
  %t25 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eargGlobal(ptr %v0, ptr %v1, ptr %t21, ptr %t22)
  store i1 %t25, ptr %l19
  br label %bb6
bb4:
  %t26 = load ptr, ptr %l12, !tbaa !29
  %t27 = load %"compiler/effects:link", ptr %l16
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3alink_3e_2ePush_3ccompiler_2feffects_3alink_3e(ptr %v0, ptr %t26, %"compiler/effects:link" %t27)
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s1)
  br label %bb21
bb6:
  %t28 = load i1, ptr %l19, !tbaa !21
  br i1 %t28, label %bb7, label %bb8
bb7:
  store %olang.scope zeroinitializer, ptr %s3
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/effects:Effects", ptr %t29, i32 0, i32 24
  store ptr %t31, ptr %l21, !tbaa !29
  %t32 = load i64, ptr %l1, !tbaa !24
  %t33 = load i64, ptr %l2, !tbaa !24
  %t34 = load i64, ptr @G_2ecompiler_2feffects_2eglobalParam, !tbaa !24
  %t38 = call %"compiler/effects:link" @compiler_2feffects_3alink_2ector(ptr %s3, i64 %t32, i64 %t33, i64 %t34)
  store %"compiler/effects:link" %t38, ptr %l25
  br label %bb9
bb8:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/effects:Effects", ptr %t39, i32 0, i32 2
  %t42 = load i1, ptr %t41, !tbaa !21
  br i1 %t42, label %bb11, label %bb12
bb9:
  %t44 = load ptr, ptr %l21, !tbaa !29
  %t45 = load %"compiler/effects:link", ptr %l25
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3alink_3e_2ePush_3ccompiler_2feffects_3alink_3e(ptr %v0, ptr %t44, %"compiler/effects:link" %t45)
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s3)
  br label %bb20
bb11:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load ptr, ptr %l3, !tbaa !29
  %t50 = call i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eargOut(ptr %v0, ptr %v1, ptr %t46, ptr %t47)
  store i64 %t50, ptr %l30
  br label %bb13
bb12:
  br label %bb19
bb13:
  %t51 = load i64, ptr %l30, !tbaa !24
  store i64 %t51, ptr %l5, !tbaa !24
  %t52 = load i64, ptr %l5, !tbaa !24
  %t54 = icmp ne i64 %t52, 0
  br i1 %t54, label %bb14, label %bb15
bb14:
  store %olang.scope zeroinitializer, ptr %s6
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/effects:Effects", ptr %t56, i32 0, i32 24
  store ptr %t58, ptr %l34, !tbaa !29
  %t59 = load i64, ptr %l1, !tbaa !24
  %t60 = load i64, ptr %l2, !tbaa !24
  %t61 = load i64, ptr %l5, !tbaa !24
  %t65 = call %"compiler/effects:link" @compiler_2feffects_3alink_2ector(ptr %s6, i64 %t59, i64 %t60, i64 %t61)
  store %"compiler/effects:link" %t65, ptr %l38
  br label %bb16
bb15:
  br label %bb18
bb16:
  %t66 = load ptr, ptr %l34, !tbaa !29
  %t67 = load %"compiler/effects:link", ptr %l38
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3alink_3e_2ePush_3ccompiler_2feffects_3alink_3e(ptr %v0, ptr %t66, %"compiler/effects:link" %t67)
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s6)
  br label %bb18
bb18:
  br label %bb19
bb19:
  br label %bb20
bb20:
  br label %bb21
bb21:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eargOut(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
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
  %l9 = alloca i1
  %l20 = alloca i1
  %l21 = alloca i1
  %l26 = alloca i1
  %l31 = alloca i64
  %l32 = alloca ptr
  %l33 = alloca i1
  %l40 = alloca %"compiler/effects:root"
  %l42 = alloca i64
  %l45 = alloca i64
  %l46 = alloca ptr
  %l47 = alloca i1
  %l54 = alloca i64
  %l55 = alloca ptr
  %l56 = alloca i1
  %l67 = alloca i1
  %l68 = alloca i1
  %l73 = alloca i1
  %l74 = alloca i1
  %l77 = alloca i1
  %l79 = alloca i64
  %rv = alloca i64
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l9, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l9, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [5 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t18, i32 0, i32 2
  %t20 = load ptr, ptr %t19
  store ptr %t20, ptr %l3, !tbaa !29
  br label %bb5
bb4:
  br label %bb15
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/effects:Effects", ptr %t22, i32 0, i32 0
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/generic:Program", ptr %t25, i32 0, i32 2
  %t28 = load i32, ptr %l2, !tbaa !23
  %t31 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %t27, i32 %t28)
  store i1 %t31, ptr %l20
  br label %bb6
bb6:
  %t32 = load i1, ptr %l20, !tbaa !21
  br i1 %t32, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb10
bb8:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/effects:Effects", ptr %t33, i32 0, i32 0
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t38 = getelementptr %"compiler/generic:Program", ptr %t36, i32 0, i32 2
  %t39 = load i32, ptr %l2, !tbaa !23
  %t42 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t38, i32 %t39)
  store i1 %t42, ptr %l26
  br label %bb9
bb9:
  %t43 = load i1, ptr %l26, !tbaa !21
  store i1 %t43, ptr %l21, !tbaa !21
  br label %bb10
bb10:
  %t44 = load i1, ptr %l21, !tbaa !21
  %t45 = xor i1 %t44, true
  br i1 %t45, label %bb11, label %bb12
bb11:
  store i64 0, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load ptr, ptr %l3, !tbaa !29
  %t52 = call i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eoutOf(ptr %v0, ptr %v1, ptr %t48, ptr %t49)
  store i64 %t52, ptr %l31
  br label %bb14
bb14:
  %t53 = load i64, ptr %l31, !tbaa !24
  store i64 %t53, ptr %rv
  br label %ret
bb15:
  %t54 = load ptr, ptr %l1, !tbaa !29
  store ptr %t54, ptr %l32, !tbaa !29
  store i1 false, ptr %l33, !tbaa !21
  %t55 = load ptr, ptr %l32, !tbaa !29
  %t56 = icmp ne ptr %t55, null
  br i1 %t56, label %bb16, label %bb17
bb16:
  %t58 = load ptr, ptr %l32, !tbaa !29
  %t59 = load i64, ptr %t58, !range !{i64 0, i64 18}
  %t61 = icmp eq i64 %t59, 3
  store i1 %t61, ptr %l33, !tbaa !21
  br label %bb17
bb17:
  %t62 = load i1, ptr %l33, !tbaa !21
  br i1 %t62, label %bb18, label %bb19
bb18:
  %t63 = load ptr, ptr %l1, !tbaa !29
  %t65 = getelementptr { i64, [5 x i64] }, ptr %t63, i32 0, i32 1
  %t66 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t65, i32 0, i32 2
  %t67 = load ptr, ptr %t66
  store ptr %t67, ptr %l4, !tbaa !29
  br label %bb20
bb19:
  br label %bb26
bb20:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load ptr, ptr %l4, !tbaa !29
  %t73 = call %"compiler/effects:root" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eplaceRoot(ptr %v0, ptr %v1, ptr %t69, ptr %t70)
  store %"compiler/effects:root" %t73, ptr %l40
  br label %bb21
bb21:
  %t74 = getelementptr %"compiler/effects:root", ptr %l40, i32 0, i32 1
  %t75 = load i1, ptr %t74, !tbaa !21
  br i1 %t75, label %bb22, label %bb23
bb22:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t78 = load ptr, ptr %l4, !tbaa !29
  %t81 = call i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eoutOf(ptr %v0, ptr %v1, ptr %t77, ptr %t78)
  store i64 %t81, ptr %l45
  br label %bb24
bb23:
  store i64 0, ptr %l42, !tbaa !24
  br label %bb25
bb24:
  %t82 = load i64, ptr %l45, !tbaa !24
  store i64 %t82, ptr %l42, !tbaa !24
  br label %bb25
bb25:
  %t83 = load i64, ptr %l42, !tbaa !24
  store i64 %t83, ptr %rv
  br label %ret
bb26:
  %t84 = load ptr, ptr %l1, !tbaa !29
  store ptr %t84, ptr %l46, !tbaa !29
  store i1 false, ptr %l47, !tbaa !21
  %t85 = load ptr, ptr %l46, !tbaa !29
  %t86 = icmp ne ptr %t85, null
  br i1 %t86, label %bb27, label %bb28
bb27:
  %t88 = load ptr, ptr %l46, !tbaa !29
  %t89 = load i64, ptr %t88, !range !{i64 0, i64 18}
  %t91 = icmp eq i64 %t89, 17
  store i1 %t91, ptr %l47, !tbaa !21
  br label %bb28
bb28:
  %t92 = load i1, ptr %l47, !tbaa !21
  br i1 %t92, label %bb29, label %bb30
bb29:
  %t93 = load ptr, ptr %l1, !tbaa !29
  %t95 = getelementptr { i64, [5 x i64] }, ptr %t93, i32 0, i32 1
  %t96 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t95, i32 0, i32 2
  %t97 = load ptr, ptr %t96
  store ptr %t97, ptr %l5, !tbaa !29
  br label %bb31
bb30:
  br label %bb33
bb31:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t100 = load ptr, ptr %l5, !tbaa !29
  %t103 = call i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eargOut(ptr %v0, ptr %v1, ptr %t99, ptr %t100)
  store i64 %t103, ptr %l54
  br label %bb32
bb32:
  %t104 = load i64, ptr %l54, !tbaa !24
  store i64 %t104, ptr %rv
  br label %ret
bb33:
  %t105 = load ptr, ptr %l1, !tbaa !29
  store ptr %t105, ptr %l55, !tbaa !29
  store i1 false, ptr %l56, !tbaa !21
  %t106 = load ptr, ptr %l55, !tbaa !29
  %t107 = icmp ne ptr %t106, null
  br i1 %t107, label %bb34, label %bb35
bb34:
  %t109 = load ptr, ptr %l55, !tbaa !29
  %t110 = load i64, ptr %t109, !range !{i64 0, i64 18}
  %t112 = icmp eq i64 %t110, 6
  store i1 %t112, ptr %l56, !tbaa !21
  br label %bb35
bb35:
  %t113 = load i1, ptr %l56, !tbaa !21
  br i1 %t113, label %bb36, label %bb37
bb36:
  %t114 = load ptr, ptr %l1, !tbaa !29
  %t116 = getelementptr { i64, [5 x i64] }, ptr %t114, i32 0, i32 1
  %t117 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t116, i32 0, i32 1
  %t118 = load i32, ptr %t117
  store i32 %t118, ptr %l6, !tbaa !23
  %t120 = load ptr, ptr %l1, !tbaa !29
  %t122 = getelementptr { i64, [5 x i64] }, ptr %t120, i32 0, i32 1
  %t123 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t122, i32 0, i32 2
  %t124 = load ptr, ptr %t123
  store ptr %t124, ptr %l7, !tbaa !29
  br label %bb38
bb37:
  br label %bb51
bb38:
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t128 = getelementptr %"compiler/effects:Effects", ptr %t126, i32 0, i32 0
  %t129 = load ptr, ptr %t128, !tbaa !29
  %t131 = getelementptr %"compiler/generic:Program", ptr %t129, i32 0, i32 2
  %t132 = load i32, ptr %l6, !tbaa !23
  %t135 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %t131, i32 %t132)
  store i1 %t135, ptr %l67
  br label %bb39
bb39:
  %t136 = load i1, ptr %l67, !tbaa !21
  br i1 %t136, label %bb40, label %bb41
bb40:
  store i1 true, ptr %l68, !tbaa !21
  br label %bb43
bb41:
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t139 = getelementptr %"compiler/effects:Effects", ptr %t137, i32 0, i32 0
  %t140 = load ptr, ptr %t139, !tbaa !29
  %t142 = getelementptr %"compiler/generic:Program", ptr %t140, i32 0, i32 2
  %t143 = load i32, ptr %l6, !tbaa !23
  %t146 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t142, i32 %t143)
  store i1 %t146, ptr %l73
  br label %bb42
bb42:
  %t147 = load i1, ptr %l73, !tbaa !21
  store i1 %t147, ptr %l68, !tbaa !21
  br label %bb43
bb43:
  %t148 = load i1, ptr %l68, !tbaa !21
  br i1 %t148, label %bb44, label %bb45
bb44:
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t150 = load ptr, ptr %l7, !tbaa !29
  %t153 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ectorCall(ptr %v0, ptr %v1, ptr %t149, ptr %t150)
  store i1 %t153, ptr %l77
  br label %bb46
bb45:
  store i1 false, ptr %l74, !tbaa !21
  br label %bb47
bb46:
  %t154 = load i1, ptr %l77, !tbaa !21
  %t155 = xor i1 %t154, true
  store i1 %t155, ptr %l74, !tbaa !21
  br label %bb47
bb47:
  %t157 = load i1, ptr %l74, !tbaa !21
  br i1 %t157, label %bb48, label %bb49
bb48:
  %t158 = load i64, ptr @G_2ecompiler_2feffects_2eoutParam, !tbaa !24
  store i64 %t158, ptr %l79, !tbaa !24
  br label %bb50
bb49:
  store i64 0, ptr %l79, !tbaa !24
  br label %bb50
bb50:
  %t160 = load i64, ptr %l79, !tbaa !24
  store i64 %t160, ptr %rv
  br label %ret
bb51:
  br i1 true, label %bb52, label %bb53
bb52:
  br label %bb54
bb53:
  br label %bb55
bb54:
  store i64 0, ptr %rv
  br label %ret
bb55:
  call void @__olang_check_failed(ptr @olang_loc_650dda860f99b242_5ce1da2dd4f47486)
  unreachable
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2earm(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
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
  %l9 = alloca ptr
  %l18 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
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
  br label %bb15
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
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %t26, ptr %t30)
  br label %bb5
bb5:
  %t34 = load ptr, ptr %l5, !tbaa !29
  %t36 = getelementptr %"compiler/typed:Alt", ptr %t34, i32 0, i32 1
  %t37 = load { i64, ptr }, ptr %t36, !tbaa !27
  store { i64, ptr } %t37, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t39 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t39, 0
  store i64 %t41, ptr %l8, !tbaa !24
  br label %bb6
bb6:
  %t43 = load i64, ptr %l7, !tbaa !24
  %t44 = load i64, ptr %l8, !tbaa !24
  %t47 = icmp slt i64 %t43, %t44
  %t49 = xor i1 %t47, true
  br i1 %t49, label %bb7, label %bb8
bb7:
  br label %bb13
bb8:
  br label %bb9
bb9:
  %t51 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t51, ptr %l33, !tbaa !27
  %t52 = load i64, ptr %l7, !tbaa !24
  %t54 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr ptr, ptr %t55, i64 %t52
  %t57 = load ptr, ptr %t56, !tbaa !39
  store ptr %t57, ptr %l9, !tbaa !29
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t60 = load ptr, ptr %l9, !tbaa !29
  %t62 = getelementptr %"compiler/typed:Bind", ptr %t60, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %t59, ptr %t63)
  br label %bb10
bb10:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load ptr, ptr %l9, !tbaa !29
  %t70 = getelementptr %"compiler/typed:Bind", ptr %t68, i32 0, i32 0
  %t71 = load i32, ptr %t70, !tbaa !23
  %t73 = sext i32 %t71 to i64
  %t74 = load ptr, ptr %l9, !tbaa !29
  %t76 = getelementptr %"compiler/typed:Bind", ptr %t74, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2edefine(ptr %v0, ptr %v1, ptr %t67, i64 %t73, ptr %t77)
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t81 = load i64, ptr %l7, !tbaa !24
  %t83 = add i64 %t81, 1
  store i64 %t83, ptr %l7, !tbaa !24
  br label %bb6
bb13:
  br label %bb14
bb14:
  %t85 = load i64, ptr %l3, !tbaa !24
  %t87 = add i64 %t85, 1
  store i64 %t87, ptr %l3, !tbaa !24
  br label %bb1
bb15:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = load ptr, ptr %l1, !tbaa !29
  %t92 = getelementptr %"compiler/typed:Arm", ptr %t90, i32 0, i32 2
  %t93 = load ptr, ptr %t92, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %t89, ptr %t93)
  br label %bb16
bb16:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = load ptr, ptr %l1, !tbaa !29
  %t99 = getelementptr %"compiler/typed:Arm", ptr %t97, i32 0, i32 3
  %t100 = load ptr, ptr %t99, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eblock(ptr %v0, ptr %v1, ptr %t96, ptr %t100)
  br label %bb17
bb17:
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t104 = load ptr, ptr %l1, !tbaa !29
  %t106 = getelementptr %"compiler/typed:Arm", ptr %t104, i32 0, i32 4
  %t107 = load ptr, ptr %t106, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %t103, ptr %t107)
  br label %bb18
bb18:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ebecause(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i64
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/effects:Effects", ptr %t1, i32 0, i32 46
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/effects:Effects", ptr %t6, i32 0, i32 46
  store i1 true, ptr %t8, !tbaa !21
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/effects:Effects", ptr %t9, i32 0, i32 47
  store %"compiler/source:Span" %a1, ptr %t13
  %t14 = load ptr, ptr %l0, !tbaa !29
  store ptr %t14, ptr %l8, !tbaa !29
  %t15 = ptrtoint ptr %v0 to i64
  store i64 %t15, ptr %l9, !tbaa !24
  %t16 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e48
  br i1 %t16, label %bb4, label %bb5
bb4:
  %t18 = call ptr @__olang_region_make(ptr %v0)
  %t19 = ptrtoint ptr %t18 to i64
  store i64 %t19, ptr %l9, !tbaa !24
  br label %bb5
bb5:
  store { i64, ptr } %a2, ptr %l12, !tbaa !27
  %t22 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t22, 0
  store i64 %t23, ptr %l13, !tbaa !24
  %t24 = load i64, ptr %l13, !tbaa !24
  %t25 = mul i64 %t24, 1
  %t26 = load i64, ptr %l9
  %t27 = inttoptr i64 %t26 to ptr
  %t28 = call ptr @__olang_scope_alloc(ptr %t27, i64 %t25)
  %t29 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t30 = insertvalue { i64, ptr } %t29, ptr %t28, 1
  store { i64, ptr } %t30, ptr %l14, !tbaa !27
  %t31 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !27
  %t35 = load i64, ptr %l13, !tbaa !24
  %t36 = mul i64 %t35, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t32, ptr %t34, i64 %t36, i1 false)
  %t37 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e48
  br i1 %t37, label %bb6, label %bb7
bb6:
  %t39 = load i64, ptr %l9
  %t40 = inttoptr i64 %t39 to ptr
  %t41 = load { i64, ptr }, ptr %l14
  %t42 = extractvalue { i64, ptr } %t41, 1
  %t43 = call ptr @__olang_region_or(ptr %t42, ptr null)
  %t44 = icmp ne ptr %t43, null
  %t45 = select i1 %t44, ptr %t43, ptr null
  %t46 = icmp eq ptr %t45, %t40
  call void @__olang_region_settle(ptr %t40, i1 %t46)
  br label %bb7
bb7:
  %t47 = load ptr, ptr %l8, !tbaa !29
  %t48 = getelementptr %"compiler/effects:Effects", ptr %t47, i32 0, i32 48
  %t49 = load { i64, ptr }, ptr %t48, !tbaa !27
  store { i64, ptr } %t49, ptr %l16, !tbaa !27
  %t50 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t51 = load ptr, ptr %l8, !tbaa !29
  %t52 = getelementptr %"compiler/effects:Effects", ptr %t51, i32 0, i32 48
  store { i64, ptr } %t50, ptr %t52, !tbaa !27
  %t53 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e48
  br i1 %t53, label %bb8, label %bb9
bb8:
  %t55 = load { i64, ptr }, ptr %l16
  %t56 = extractvalue { i64, ptr } %t55, 1
  call void @__olang_region_release(ptr %t56)
  store { i64, ptr } zeroinitializer, ptr %l16
  br label %bb9
bb9:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ebuilt(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i1
  %l6 = alloca ptr
  %l7 = alloca i1
  %l10 = alloca ptr
  %l11 = alloca i1
  %l14 = alloca ptr
  %l15 = alloca i1
  %l18 = alloca ptr
  %l19 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca i1
  %l32 = alloca ptr
  %l33 = alloca i1
  %l40 = alloca i1
  %l41 = alloca ptr
  %l42 = alloca i1
  %l49 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 5
  store i1 %t8, ptr %l7, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l7, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb17
bb4:
  %t10 = load ptr, ptr %l1, !tbaa !29
  store ptr %t10, ptr %l10, !tbaa !29
  store i1 false, ptr %l11, !tbaa !21
  %t11 = load ptr, ptr %l10, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb5, label %bb6
bb5:
  %t14 = load ptr, ptr %l10, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 18}
  %t17 = icmp eq i64 %t15, 8
  store i1 %t17, ptr %l11, !tbaa !21
  br label %bb6
bb6:
  %t18 = load i1, ptr %l11, !tbaa !21
  br i1 %t18, label %bb7, label %bb8
bb7:
  br label %bb17
bb8:
  %t19 = load ptr, ptr %l1, !tbaa !29
  store ptr %t19, ptr %l14, !tbaa !29
  store i1 false, ptr %l15, !tbaa !21
  %t20 = load ptr, ptr %l14, !tbaa !29
  %t21 = icmp ne ptr %t20, null
  br i1 %t21, label %bb9, label %bb10
bb9:
  %t23 = load ptr, ptr %l14, !tbaa !29
  %t24 = load i64, ptr %t23, !range !{i64 0, i64 18}
  %t26 = icmp eq i64 %t24, 16
  store i1 %t26, ptr %l15, !tbaa !21
  br label %bb10
bb10:
  %t27 = load i1, ptr %l15, !tbaa !21
  br i1 %t27, label %bb11, label %bb12
bb11:
  br label %bb17
bb12:
  %t28 = load ptr, ptr %l1, !tbaa !29
  store ptr %t28, ptr %l18, !tbaa !29
  store i1 false, ptr %l19, !tbaa !21
  %t29 = load ptr, ptr %l18, !tbaa !29
  %t30 = icmp ne ptr %t29, null
  br i1 %t30, label %bb13, label %bb14
bb13:
  %t32 = load ptr, ptr %l18, !tbaa !29
  %t33 = load i64, ptr %t32, !range !{i64 0, i64 18}
  %t35 = icmp eq i64 %t33, 0
  store i1 %t35, ptr %l19, !tbaa !21
  br label %bb14
bb14:
  %t36 = load i1, ptr %l19, !tbaa !21
  br i1 %t36, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb18
bb17:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb43
bb18:
  %t37 = load ptr, ptr %l1, !tbaa !29
  store ptr %t37, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t38 = load ptr, ptr %l22, !tbaa !29
  %t39 = icmp ne ptr %t38, null
  br i1 %t39, label %bb19, label %bb20
bb19:
  %t41 = load ptr, ptr %l22, !tbaa !29
  %t42 = load i64, ptr %t41, !range !{i64 0, i64 18}
  %t44 = icmp eq i64 %t42, 7
  store i1 %t44, ptr %l23, !tbaa !21
  br label %bb20
bb20:
  %t45 = load i1, ptr %l23, !tbaa !21
  br i1 %t45, label %bb21, label %bb22
bb21:
  %t46 = load ptr, ptr %l1, !tbaa !29
  %t48 = getelementptr { i64, [5 x i64] }, ptr %t46, i32 0, i32 1
  %t49 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t48, i32 0, i32 2
  %t50 = load ptr, ptr %t49
  store ptr %t50, ptr %l2, !tbaa !29
  br label %bb23
bb22:
  br label %bb24
bb23:
  %t52 = load ptr, ptr %l2, !tbaa !29
  %t54 = getelementptr %"compiler/typed:Make", ptr %t52, i32 0, i32 4
  %t55 = load i32, ptr %t54, !tbaa !23
  %t57 = sext i32 %t55 to i64
  %t59 = icmp sge i64 %t57, 0
  store i1 %t59, ptr %l5, !tbaa !21
  br label %bb43
bb24:
  %t61 = load ptr, ptr %l1, !tbaa !29
  store ptr %t61, ptr %l32, !tbaa !29
  store i1 false, ptr %l33, !tbaa !21
  %t62 = load ptr, ptr %l32, !tbaa !29
  %t63 = icmp ne ptr %t62, null
  br i1 %t63, label %bb25, label %bb26
bb25:
  %t65 = load ptr, ptr %l32, !tbaa !29
  %t66 = load i64, ptr %t65, !range !{i64 0, i64 18}
  %t68 = icmp eq i64 %t66, 17
  store i1 %t68, ptr %l33, !tbaa !21
  br label %bb26
bb26:
  %t69 = load i1, ptr %l33, !tbaa !21
  br i1 %t69, label %bb27, label %bb28
bb27:
  %t70 = load ptr, ptr %l1, !tbaa !29
  %t72 = getelementptr { i64, [5 x i64] }, ptr %t70, i32 0, i32 1
  %t73 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t72, i32 0, i32 2
  %t74 = load ptr, ptr %t73
  store ptr %t74, ptr %l3, !tbaa !29
  br label %bb29
bb28:
  br label %bb31
bb29:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t77 = load ptr, ptr %l3, !tbaa !29
  %t80 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ebuilt(ptr %v0, ptr %v1, ptr %t76, ptr %t77)
  store i1 %t80, ptr %l40
  br label %bb30
bb30:
  %t81 = load i1, ptr %l40, !tbaa !21
  store i1 %t81, ptr %l5, !tbaa !21
  br label %bb43
bb31:
  %t82 = load ptr, ptr %l1, !tbaa !29
  store ptr %t82, ptr %l41, !tbaa !29
  store i1 false, ptr %l42, !tbaa !21
  %t83 = load ptr, ptr %l41, !tbaa !29
  %t84 = icmp ne ptr %t83, null
  br i1 %t84, label %bb32, label %bb33
bb32:
  %t86 = load ptr, ptr %l41, !tbaa !29
  %t87 = load i64, ptr %t86, !range !{i64 0, i64 18}
  %t89 = icmp eq i64 %t87, 6
  store i1 %t89, ptr %l42, !tbaa !21
  br label %bb33
bb33:
  %t90 = load i1, ptr %l42, !tbaa !21
  br i1 %t90, label %bb34, label %bb35
bb34:
  %t91 = load ptr, ptr %l1, !tbaa !29
  %t93 = getelementptr { i64, [5 x i64] }, ptr %t91, i32 0, i32 1
  %t94 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t93, i32 0, i32 2
  %t95 = load ptr, ptr %t94
  store ptr %t95, ptr %l4, !tbaa !29
  br label %bb36
bb35:
  br label %bb38
bb36:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t98 = load ptr, ptr %l4, !tbaa !29
  %t101 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ectorCall(ptr %v0, ptr %v1, ptr %t97, ptr %t98)
  store i1 %t101, ptr %l49
  br label %bb37
bb37:
  %t102 = load i1, ptr %l49, !tbaa !21
  store i1 %t102, ptr %l5, !tbaa !21
  br label %bb43
bb38:
  br i1 true, label %bb39, label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb42
bb41:
  store i1 false, ptr %l5, !tbaa !21
  br label %bb43
bb42:
  call void @__olang_check_failed(ptr @olang_loc_f7c8ab04542d2f7e_3025df788b022d62)
  unreachable
bb43:
  %t103 = load i1, ptr %l5, !tbaa !21
  store i1 %t103, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ecall(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca ptr
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca i64
  %l23 = alloca ptr
  %l24 = alloca i1
  %l31 = alloca i64
  %l42 = alloca i64
  %l45 = alloca i64
  %l68 = alloca { i64, ptr }
  %l74 = alloca i1
  %l75 = alloca i1
  %l76 = alloca ptr
  %l78 = alloca { i64, ptr }
  %l81 = alloca i32
  %l82 = alloca i1
  %l84 = alloca ptr
  %l88 = alloca { i64, ptr }
  %l91 = alloca %"compiler/effects:pend"
  %l95 = alloca ptr
  %l96 = alloca i1
  %l103 = alloca ptr
  %l104 = alloca i1
  %l110 = alloca ptr
  %l112 = alloca %"compiler/effects:pend"
  %l124 = alloca { i64, ptr }
  %l129 = alloca ptr
  %l131 = alloca i32
  %l132 = alloca i1
  %l133 = alloca i1
  %l136 = alloca ptr
  %l138 = alloca i32
  %l139 = alloca i64
  %l147 = alloca ptr
  %l148 = alloca i1
  %l153 = alloca ptr
  %l154 = alloca i1
  %l165 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Call", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  store ptr %t6, ptr %l23, !tbaa !29
  store i1 false, ptr %l24, !tbaa !21
  %t7 = load ptr, ptr %l23, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l23, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 5}
  %t13 = icmp eq i64 %t11, 0
  store i1 %t13, ptr %l24, !tbaa !21
  br label %bb2
bb2:
  %t14 = load i1, ptr %l24, !tbaa !21
  br i1 %t14, label %bb3, label %bb4
bb3:
  %t15 = load ptr, ptr %l2, !tbaa !29
  %t17 = getelementptr { i64, [3 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { i32 }, ptr %t17, i32 0, i32 0
  %t19 = load i32, ptr %t18
  store i32 %t19, ptr %l3, !tbaa !23
  br label %bb5
bb4:
  br label %bb32
bb5:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/effects:Effects", ptr %t21, i32 0, i32 23
  %t25 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t23)
  store i64 %t25, ptr %l31
  br label %bb6
bb6:
  %t26 = load i64, ptr %l31, !tbaa !24
  store i64 %t26, ptr %l4, !tbaa !24
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/effects:Effects", ptr %t27, i32 0, i32 23
  %t30 = load i32, ptr %l3, !tbaa !23
  %t32 = sext i32 %t30 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t29, i64 %t32)
  br label %bb7
bb7:
  store i64 0, ptr %l5, !tbaa !24
  %t35 = load ptr, ptr %l1, !tbaa !29
  %t37 = getelementptr %"compiler/typed:Call", ptr %t35, i32 0, i32 1
  %t38 = load { i64, ptr }, ptr %t37, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t38, 0
  store i64 %t40, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t42 = load i64, ptr %l6, !tbaa !24
  %t43 = load i64, ptr %l5, !tbaa !24
  %t46 = icmp sgt i64 %t42, %t43
  br i1 %t46, label %bb8, label %bb9
bb8:
  %t48 = load i64, ptr %l7, !tbaa !24
  %t50 = icmp sgt i64 %t48, 0
  br i1 %t50, label %bb10, label %bb11
bb9:
  store i64 0, ptr %l42, !tbaa !24
  br label %bb13
bb10:
  %t52 = load i64, ptr %l6, !tbaa !24
  %t53 = load i64, ptr %l5, !tbaa !24
  %t56 = sub i64 %t52, %t53
  %t57 = load i64, ptr %l7, !tbaa !24
  %t60 = add i64 %t56, %t57
  %t62 = sub i64 %t60, 1
  %t63 = load i64, ptr %l7, !tbaa !24
  %t66 = sdiv i64 %t62, %t63
  store i64 %t66, ptr %l45, !tbaa !24
  br label %bb12
bb11:
  store i64 0, ptr %l45, !tbaa !24
  br label %bb12
bb12:
  %t68 = load i64, ptr %l45, !tbaa !24
  store i64 %t68, ptr %l42, !tbaa !24
  br label %bb13
bb13:
  %t69 = load i64, ptr %l42, !tbaa !24
  store i64 %t69, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb14
bb14:
  %t70 = load i64, ptr %l9, !tbaa !24
  %t71 = load i64, ptr %l8, !tbaa !24
  %t74 = icmp slt i64 %t70, %t71
  %t76 = xor i1 %t74, true
  br i1 %t76, label %bb15, label %bb16
bb15:
  br label %bb31
bb16:
  br label %bb17
bb17:
  %t78 = load i64, ptr %l5, !tbaa !24
  %t79 = load i64, ptr %l9, !tbaa !24
  %t80 = load i64, ptr %l7, !tbaa !24
  %t83 = mul i64 %t79, %t80
  %t86 = add i64 %t78, %t83
  store i64 %t86, ptr %l10, !tbaa !24
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t89 = load i32, ptr %l3, !tbaa !23
  %t91 = sext i32 %t89 to i64
  %t92 = load i64, ptr %l10, !tbaa !24
  %t93 = load ptr, ptr %l1, !tbaa !29
  %t95 = getelementptr %"compiler/typed:Call", ptr %t93, i32 0, i32 1
  %t96 = load { i64, ptr }, ptr %t95, !tbaa !27
  store { i64, ptr } %t96, ptr %l68, !tbaa !27
  %t97 = load i64, ptr %l10, !tbaa !24
  %t99 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !27
  %t101 = getelementptr ptr, ptr %t100, i64 %t97
  %t102 = load ptr, ptr %t101, !tbaa !39
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eargLink(ptr %v0, ptr %v1, ptr %t88, i64 %t91, i64 %t92, ptr %t102)
  br label %bb18
bb18:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load i32, ptr %l3, !tbaa !23
  %t110 = sext i32 %t108 to i64
  %t113 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2etakesFn(ptr %v0, ptr %t107, i64 %t110)
  store i1 %t113, ptr %l74
  br label %bb19
bb19:
  %t114 = load i1, ptr %l74, !tbaa !21
  br i1 %t114, label %bb20, label %bb21
bb20:
  %t115 = load ptr, ptr %l0, !tbaa !29
  store ptr %t115, ptr %l76, !tbaa !29
  %t116 = load ptr, ptr %l1, !tbaa !29
  %t118 = getelementptr %"compiler/typed:Call", ptr %t116, i32 0, i32 1
  %t119 = load { i64, ptr }, ptr %t118, !tbaa !27
  store { i64, ptr } %t119, ptr %l78, !tbaa !27
  %t120 = load i64, ptr %l10, !tbaa !24
  %t122 = getelementptr { i64, ptr }, ptr %l78, i32 0, i32 1
  %t123 = load ptr, ptr %t122, !tbaa !27
  %t124 = getelementptr ptr, ptr %t123, i64 %t120
  %t125 = load ptr, ptr %t124, !tbaa !39
  %t127 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t125)
  store i32 %t127, ptr %l81
  br label %bb22
bb21:
  store i1 false, ptr %l75, !tbaa !21
  br label %bb24
bb22:
  %t128 = load ptr, ptr %l76, !tbaa !29
  %t129 = load i32, ptr %l81, !tbaa !23
  %t130 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eisFn(ptr %v0, ptr %t128, i32 %t129)
  store i1 %t130, ptr %l82
  br label %bb23
bb23:
  %t131 = load i1, ptr %l82, !tbaa !21
  store i1 %t131, ptr %l75, !tbaa !21
  br label %bb24
bb24:
  %t132 = load i1, ptr %l75, !tbaa !21
  br i1 %t132, label %bb25, label %bb26
bb25:
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t135 = getelementptr %"compiler/effects:Effects", ptr %t133, i32 0, i32 32
  store ptr %t135, ptr %l84, !tbaa !29
  %t136 = load i64, ptr %l4, !tbaa !24
  %t137 = load i64, ptr %l10, !tbaa !24
  %t138 = load ptr, ptr %l1, !tbaa !29
  %t140 = getelementptr %"compiler/typed:Call", ptr %t138, i32 0, i32 1
  %t141 = load { i64, ptr }, ptr %t140, !tbaa !27
  store { i64, ptr } %t141, ptr %l88, !tbaa !27
  %t142 = load i64, ptr %l10, !tbaa !24
  %t144 = getelementptr { i64, ptr }, ptr %l88, i32 0, i32 1
  %t145 = load ptr, ptr %t144, !tbaa !27
  %t146 = getelementptr ptr, ptr %t145, i64 %t142
  %t147 = load ptr, ptr %t146, !tbaa !39
  %t151 = call %"compiler/effects:pend" @compiler_2feffects_3apend_2ector(ptr %v1, ptr %v0, i64 %t136, i64 %t137, ptr %t147)
  store %"compiler/effects:pend" %t151, ptr %l91
  br label %bb27
bb26:
  br label %bb29
bb27:
  %t152 = load ptr, ptr %l84, !tbaa !29
  %t153 = load %"compiler/effects:pend", ptr %l91
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apend_3e_2ePush_3ccompiler_2feffects_3apend_3e(ptr %v0, ptr %v0, ptr %t152, %"compiler/effects:pend" %t153)
  br label %bb28
bb28:
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr %"compiler/effects:Effects", ptr %t154, i32 0, i32 39
  store i1 true, ptr %t156, !tbaa !21
  br label %bb29
bb29:
  br label %bb30
bb30:
  %t157 = load i64, ptr %l9, !tbaa !24
  %t159 = add i64 %t157, 1
  store i64 %t159, ptr %l9, !tbaa !24
  br label %bb14
bb31:
  br label %bb78
bb32:
  %t161 = load ptr, ptr %l2, !tbaa !29
  store ptr %t161, ptr %l95, !tbaa !29
  store i1 false, ptr %l96, !tbaa !21
  %t162 = load ptr, ptr %l95, !tbaa !29
  %t163 = icmp ne ptr %t162, null
  br i1 %t163, label %bb33, label %bb34
bb33:
  %t165 = load ptr, ptr %l95, !tbaa !29
  %t166 = load i64, ptr %t165, !range !{i64 0, i64 5}
  %t168 = icmp eq i64 %t166, 1
  store i1 %t168, ptr %l96, !tbaa !21
  br label %bb34
bb34:
  %t169 = load i1, ptr %l96, !tbaa !21
  br i1 %t169, label %bb35, label %bb36
bb35:
  %t170 = load ptr, ptr %l2, !tbaa !29
  %t172 = getelementptr { i64, [3 x i64] }, ptr %t170, i32 0, i32 1
  %t173 = getelementptr { i64 }, ptr %t172, i32 0, i32 0
  %t174 = load i64, ptr %t173
  store i64 %t174, ptr %l11, !tbaa !24
  br label %bb37
bb36:
  br label %bb39
bb37:
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t177 = load i64, ptr %l11, !tbaa !24
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eextern(ptr %v0, ptr %t176, i64 %t177)
  br label %bb38
bb38:
  br label %bb78
bb39:
  %t180 = load ptr, ptr %l2, !tbaa !29
  store ptr %t180, ptr %l103, !tbaa !29
  store i1 false, ptr %l104, !tbaa !21
  %t181 = load ptr, ptr %l103, !tbaa !29
  %t182 = icmp ne ptr %t181, null
  br i1 %t182, label %bb40, label %bb41
bb40:
  %t184 = load ptr, ptr %l103, !tbaa !29
  %t185 = load i64, ptr %t184, !range !{i64 0, i64 5}
  %t187 = icmp eq i64 %t185, 2
  store i1 %t187, ptr %l104, !tbaa !21
  br label %bb41
bb41:
  %t188 = load i1, ptr %l104, !tbaa !21
  br i1 %t188, label %bb42, label %bb43
bb42:
  %t189 = load ptr, ptr %l2, !tbaa !29
  %t191 = getelementptr { i64, [3 x i64] }, ptr %t189, i32 0, i32 1
  %t192 = getelementptr { ptr }, ptr %t191, i32 0, i32 0
  %t193 = load ptr, ptr %t192
  store ptr %t193, ptr %l12, !tbaa !29
  br label %bb44
bb43:
  br label %bb65
bb44:
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t197 = getelementptr %"compiler/effects:Effects", ptr %t195, i32 0, i32 32
  store ptr %t197, ptr %l110, !tbaa !29
  %t198 = load ptr, ptr %l12, !tbaa !29
  %t200 = call %"compiler/effects:pend" @compiler_2feffects_3apend_2ector(ptr %v1, ptr %v0, i64 -1, i64 0, ptr %t198)
  store %"compiler/effects:pend" %t200, ptr %l112
  br label %bb45
bb45:
  %t201 = load ptr, ptr %l110, !tbaa !29
  %t202 = load %"compiler/effects:pend", ptr %l112
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apend_3e_2ePush_3ccompiler_2feffects_3apend_3e(ptr %v0, ptr %v0, ptr %t201, %"compiler/effects:pend" %t202)
  br label %bb46
bb46:
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t204 = load ptr, ptr %l12, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %t203, ptr %t204)
  br label %bb47
bb47:
  %t208 = load ptr, ptr %l1, !tbaa !29
  %t210 = getelementptr %"compiler/typed:Call", ptr %t208, i32 0, i32 1
  %t211 = load { i64, ptr }, ptr %t210, !tbaa !27
  store { i64, ptr } %t211, ptr %l13, !tbaa !27
  store i64 0, ptr %l14, !tbaa !24
  %t213 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t215 = extractvalue { i64, ptr } %t213, 0
  store i64 %t215, ptr %l15, !tbaa !24
  br label %bb48
bb48:
  %t217 = load i64, ptr %l14, !tbaa !24
  %t218 = load i64, ptr %l15, !tbaa !24
  %t221 = icmp slt i64 %t217, %t218
  %t223 = xor i1 %t221, true
  br i1 %t223, label %bb49, label %bb50
bb49:
  br label %bb64
bb50:
  br label %bb51
bb51:
  %t225 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t225, ptr %l124, !tbaa !27
  %t226 = load i64, ptr %l14, !tbaa !24
  %t228 = getelementptr { i64, ptr }, ptr %l124, i32 0, i32 1
  %t229 = load ptr, ptr %t228, !tbaa !27
  %t230 = getelementptr ptr, ptr %t229, i64 %t226
  %t231 = load ptr, ptr %t230, !tbaa !39
  store ptr %t231, ptr %l16, !tbaa !29
  %t233 = load ptr, ptr %l0, !tbaa !29
  %t235 = getelementptr %"compiler/effects:Effects", ptr %t233, i32 0, i32 0
  %t236 = load ptr, ptr %t235, !tbaa !29
  %t238 = getelementptr %"compiler/generic:Program", ptr %t236, i32 0, i32 2
  store ptr %t238, ptr %l129, !tbaa !29
  %t239 = load ptr, ptr %l16, !tbaa !29
  %t241 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t239)
  store i32 %t241, ptr %l131
  br label %bb52
bb52:
  %t242 = load ptr, ptr %l129, !tbaa !29
  %t243 = load i32, ptr %l131, !tbaa !23
  %t244 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t242, i32 %t243)
  store i1 %t244, ptr %l132
  br label %bb53
bb53:
  %t245 = load i1, ptr %l132, !tbaa !21
  br i1 %t245, label %bb54, label %bb55
bb54:
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t248 = getelementptr %"compiler/effects:Effects", ptr %t246, i32 0, i32 0
  %t249 = load ptr, ptr %t248, !tbaa !29
  %t251 = getelementptr %"compiler/generic:Program", ptr %t249, i32 0, i32 2
  store ptr %t251, ptr %l136, !tbaa !29
  %t252 = load ptr, ptr %l16, !tbaa !29
  %t254 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t252)
  store i32 %t254, ptr %l138
  br label %bb56
bb55:
  store i1 false, ptr %l133, !tbaa !21
  br label %bb58
bb56:
  %t255 = load ptr, ptr %l136, !tbaa !29
  %t256 = load i32, ptr %l138, !tbaa !23
  %t257 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t255, i32 %t256)
  store i64 %t257, ptr %l139
  br label %bb57
bb57:
  %t258 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t259 = load i64, ptr %l139, !tbaa !24
  %t261 = and i64 %t259, %t258
  %t263 = icmp ne i64 %t261, 0
  store i1 %t263, ptr %l133, !tbaa !21
  br label %bb58
bb58:
  %t265 = load i1, ptr %l133, !tbaa !21
  br i1 %t265, label %bb59, label %bb60
bb59:
  %t266 = load ptr, ptr %l0, !tbaa !29
  %t267 = load ptr, ptr %l16, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ewritten(ptr %v0, ptr %v1, ptr %t266, ptr %t267)
  br label %bb61
bb60:
  br label %bb62
bb61:
  br label %bb62
bb62:
  br label %bb63
bb63:
  %t270 = load i64, ptr %l14, !tbaa !24
  %t272 = add i64 %t270, 1
  store i64 %t272, ptr %l14, !tbaa !24
  br label %bb48
bb64:
  br label %bb78
bb65:
  %t274 = load ptr, ptr %l2, !tbaa !29
  store ptr %t274, ptr %l147, !tbaa !29
  store i1 false, ptr %l148, !tbaa !21
  %t275 = load ptr, ptr %l147, !tbaa !29
  %t276 = icmp ne ptr %t275, null
  br i1 %t276, label %bb66, label %bb67
bb66:
  %t278 = load ptr, ptr %l147, !tbaa !29
  %t279 = load i64, ptr %t278, !range !{i64 0, i64 5}
  %t281 = icmp eq i64 %t279, 3
  store i1 %t281, ptr %l148, !tbaa !21
  br label %bb67
bb67:
  %t282 = load i1, ptr %l148, !tbaa !21
  br i1 %t282, label %bb68, label %bb69
bb68:
  br label %bb70
bb69:
  br label %bb71
bb70:
  %t283 = load ptr, ptr %l0, !tbaa !29
  %t285 = getelementptr %"compiler/effects:Effects", ptr %t283, i32 0, i32 22
  %t286 = getelementptr %"compiler/effects:Facts", ptr %t285, i32 0, i32 9
  store i1 true, ptr %t286, !tbaa !21
  %t287 = load ptr, ptr %l0, !tbaa !29
  %t289 = getelementptr %"compiler/effects:Effects", ptr %t287, i32 0, i32 22
  %t290 = getelementptr %"compiler/effects:Facts", ptr %t289, i32 0, i32 14
  store i1 true, ptr %t290, !tbaa !21
  br label %bb78
bb71:
  %t291 = load ptr, ptr %l2, !tbaa !29
  store ptr %t291, ptr %l153, !tbaa !29
  store i1 false, ptr %l154, !tbaa !21
  %t292 = load ptr, ptr %l153, !tbaa !29
  %t293 = icmp ne ptr %t292, null
  br i1 %t293, label %bb72, label %bb73
bb72:
  %t295 = load ptr, ptr %l153, !tbaa !29
  %t296 = load i64, ptr %t295, !range !{i64 0, i64 5}
  %t298 = icmp eq i64 %t296, 4
  store i1 %t298, ptr %l154, !tbaa !21
  br label %bb73
bb73:
  %t299 = load i1, ptr %l154, !tbaa !21
  br i1 %t299, label %bb74, label %bb75
bb74:
  br label %bb76
bb75:
  br label %bb77
bb76:
  br label %bb78
bb77:
  call void @__olang_check_failed(ptr @olang_loc_1bc29689bbb58e32_9924d9acc7f0abd6)
  unreachable
bb78:
  %t300 = load ptr, ptr %l1, !tbaa !29
  %t302 = getelementptr %"compiler/typed:Call", ptr %t300, i32 0, i32 1
  %t303 = load { i64, ptr }, ptr %t302, !tbaa !27
  store { i64, ptr } %t303, ptr %l17, !tbaa !27
  store i64 0, ptr %l18, !tbaa !24
  %t305 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t307 = extractvalue { i64, ptr } %t305, 0
  store i64 %t307, ptr %l19, !tbaa !24
  br label %bb79
bb79:
  %t309 = load i64, ptr %l18, !tbaa !24
  %t310 = load i64, ptr %l19, !tbaa !24
  %t313 = icmp slt i64 %t309, %t310
  %t315 = xor i1 %t313, true
  br i1 %t315, label %bb80, label %bb81
bb80:
  br label %bb85
bb81:
  br label %bb82
bb82:
  %t317 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t317, ptr %l165, !tbaa !27
  %t318 = load i64, ptr %l18, !tbaa !24
  %t320 = getelementptr { i64, ptr }, ptr %l165, i32 0, i32 1
  %t321 = load ptr, ptr %t320, !tbaa !27
  %t322 = getelementptr ptr, ptr %t321, i64 %t318
  %t323 = load ptr, ptr %t322, !tbaa !39
  %t325 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %t325, ptr %t323)
  br label %bb83
bb83:
  br label %bb84
bb84:
  %t330 = load i64, ptr %l18, !tbaa !24
  %t332 = add i64 %t330, 1
  store i64 %t332, ptr %l18, !tbaa !24
  br label %bb79
bb85:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ecallsThrough(ptr %v0, ptr %a0, i64 %a1) #0 {
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
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca i64
  %l18 = alloca i64
  %l21 = alloca i64
  %l42 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l45 = alloca i64
  %l48 = alloca i1
  %l49 = alloca i64
  %l52 = alloca i64
  %l54 = alloca i1
  %l58 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/effects:Effects", ptr %t1, i32 0, i32 4
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H7b6d4eff6fc9c3821aae8b284e12e095(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t7, ptr %l12
  br label %bb1
bb1:
  %t9 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %l12)
  store i64 %t9, ptr %l14
  br label %bb2
bb2:
  %t10 = load i64, ptr %l14, !tbaa !24
  store i64 %t10, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t11 = load i64, ptr %l3, !tbaa !24
  %t12 = load i64, ptr %l2, !tbaa !24
  %t15 = icmp sgt i64 %t11, %t12
  br i1 %t15, label %bb3, label %bb4
bb3:
  %t17 = load i64, ptr %l4, !tbaa !24
  %t19 = icmp sgt i64 %t17, 0
  br i1 %t19, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb8
bb5:
  %t21 = load i64, ptr %l3, !tbaa !24
  %t22 = load i64, ptr %l2, !tbaa !24
  %t25 = sub i64 %t21, %t22
  %t26 = load i64, ptr %l4, !tbaa !24
  %t29 = add i64 %t25, %t26
  %t31 = sub i64 %t29, 1
  %t32 = load i64, ptr %l4, !tbaa !24
  %t35 = sdiv i64 %t31, %t32
  store i64 %t35, ptr %l21, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb7
bb7:
  %t37 = load i64, ptr %l21, !tbaa !24
  store i64 %t37, ptr %l18, !tbaa !24
  br label %bb8
bb8:
  %t38 = load i64, ptr %l18, !tbaa !24
  store i64 %t38, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb9
bb9:
  %t39 = load i64, ptr %l6, !tbaa !24
  %t40 = load i64, ptr %l5, !tbaa !24
  %t43 = icmp slt i64 %t39, %t40
  %t45 = xor i1 %t43, true
  br i1 %t45, label %bb10, label %bb11
bb10:
  br label %bb27
bb11:
  br label %bb12
bb12:
  %t47 = load i64, ptr %l2, !tbaa !24
  %t48 = load i64, ptr %l6, !tbaa !24
  %t49 = load i64, ptr %l4, !tbaa !24
  %t52 = mul i64 %t48, %t49
  %t55 = add i64 %t47, %t52
  store i64 %t55, ptr %l7, !tbaa !24
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/effects:Effects", ptr %t57, i32 0, i32 4
  %t60 = load i64, ptr %l1, !tbaa !24
  %t63 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H7b6d4eff6fc9c3821aae8b284e12e095(ptr %v0, ptr %v0, ptr %t59, i64 %t60)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t63, ptr %l42
  br label %bb13
bb13:
  %t64 = load i64, ptr %l7, !tbaa !24
  %t67 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %l42, i64 %t64)
  store i64 %t67, ptr %l45
  br label %bb14
bb14:
  %t68 = load i64, ptr %l45, !tbaa !24
  store i64 %t68, ptr %l8, !tbaa !24
  %t69 = load i64, ptr %l8, !tbaa !24
  %t71 = icmp sge i64 %t69, 0
  br i1 %t71, label %bb15, label %bb16
bb15:
  %t73 = load i64, ptr %l8, !tbaa !24
  store i64 %t73, ptr %l49, !tbaa !24
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/effects:Effects", ptr %t74, i32 0, i32 1
  %t78 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t76)
  store i64 %t78, ptr %l52
  br label %bb17
bb16:
  store i1 false, ptr %l48, !tbaa !21
  br label %bb18
bb17:
  %t79 = load i64, ptr %l49, !tbaa !24
  %t80 = load i64, ptr %l52, !tbaa !24
  %t81 = icmp slt i64 %t79, %t80
  store i1 %t81, ptr %l48, !tbaa !21
  br label %bb18
bb18:
  %t83 = load i1, ptr %l48, !tbaa !21
  br i1 %t83, label %bb19, label %bb20
bb19:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr %"compiler/effects:Effects", ptr %t84, i32 0, i32 9
  %t87 = load i64, ptr %l8, !tbaa !24
  %t90 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t86, i64 %t87)
  store i64 %t90, ptr %l58
  br label %bb21
bb20:
  store i1 false, ptr %l54, !tbaa !21
  br label %bb22
bb21:
  %t91 = load i64, ptr %l58, !tbaa !24
  %t92 = icmp ne i64 %t91, 0
  store i1 %t92, ptr %l54, !tbaa !21
  br label %bb22
bb22:
  %t94 = load i1, ptr %l54, !tbaa !21
  br i1 %t94, label %bb23, label %bb24
bb23:
  store i1 true, ptr %rv
  br label %ret
bb24:
  br label %bb25
bb25:
  br label %bb26
bb26:
  %t96 = load i64, ptr %l6, !tbaa !24
  %t98 = add i64 %t96, 1
  store i64 %t98, ptr %l6, !tbaa !24
  br label %bb9
bb27:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ecap(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l9 = alloca i64
  %l12 = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"compiler/effects:Effects", ptr %t2, i32 0, i32 22
  %t5 = getelementptr %"compiler/effects:Facts", ptr %t4, i32 0, i32 18
  %t6 = load i64, ptr %t5, !tbaa !24
  %t7 = load i64, ptr %l1, !tbaa !24
  %t10 = or i64 %t6, %t7
  %t13 = getelementptr %"compiler/effects:Effects", ptr %t1, i32 0, i32 22
  %t14 = getelementptr %"compiler/effects:Facts", ptr %t13, i32 0, i32 18
  store i64 %t10, ptr %t14, !tbaa !24
  %t15 = load i64, ptr %l1, !tbaa !24
  %t17 = call i64 @compiler_2feffects_2ecapIndex(i64 %t15)
  store i64 %t17, ptr %l9
  br label %bb1
bb1:
  %t18 = load i64, ptr %l9, !tbaa !24
  store i64 %t18, ptr %l2, !tbaa !24
  %t19 = load i64, ptr %l2, !tbaa !24
  %t21 = icmp sge i64 %t19, 0
  br i1 %t21, label %bb2, label %bb3
bb2:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load i64, ptr %l2, !tbaa !24
  %t26 = getelementptr %"compiler/effects:Effects", ptr %t23, i32 0, i32 22
  %t27 = getelementptr %"compiler/effects:Facts", ptr %t26, i32 0, i32 19
  %t29 = getelementptr [6 x i64], ptr %t27, i64 0, i64 %t24
  %t30 = load i64, ptr %t29, !tbaa !34
  %t32 = icmp slt i64 %t30, 0
  store i1 %t32, ptr %l12, !tbaa !21
  br label %bb4
bb3:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb4
bb4:
  %t34 = load i1, ptr %l12, !tbaa !21
  br i1 %t34, label %bb5, label %bb6
bb5:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load i64, ptr %l2, !tbaa !24
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/effects:Effects", ptr %t37, i32 0, i32 31
  %t40 = load i64, ptr %t39, !tbaa !24
  %t43 = getelementptr %"compiler/effects:Effects", ptr %t35, i32 0, i32 22
  %t44 = getelementptr %"compiler/effects:Facts", ptr %t43, i32 0, i32 19
  %t46 = getelementptr [6 x i64], ptr %t44, i64 0, i64 %t36
  store i64 %t40, ptr %t46, !tbaa !34
  br label %bb7
bb6:
  br label %bb7
bb7:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ecaptureSlot(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l14 = alloca ptr
  %l17 = alloca i64
  %l22 = alloca i64
  %l25 = alloca i64
  %l46 = alloca %"compiler/typed:Local"
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/effects:Effects", ptr %a0, i32 0, i32 1
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store ptr %t7, ptr %l14
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l14, !tbaa !29
  store ptr %t8, ptr %l3, !tbaa !29
  %t9 = load ptr, ptr %l3, !tbaa !29
  %t11 = getelementptr %"compiler/typed:Body", ptr %t9, i32 0, i32 5
  %t13 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t11)
  store i64 %t13, ptr %l17
  br label %bb2
bb2:
  %t14 = load i64, ptr %l17, !tbaa !24
  store i64 %t14, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  store i64 %a2, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t17 = load i64, ptr %l6, !tbaa !24
  %t18 = load i64, ptr %l5, !tbaa !24
  %t21 = icmp sgt i64 %t17, %t18
  br i1 %t21, label %bb3, label %bb4
bb3:
  %t23 = load i64, ptr %l7, !tbaa !24
  %t25 = icmp sgt i64 %t23, 0
  br i1 %t25, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb8
bb5:
  %t27 = load i64, ptr %l6, !tbaa !24
  %t28 = load i64, ptr %l5, !tbaa !24
  %t31 = sub i64 %t27, %t28
  %t32 = load i64, ptr %l7, !tbaa !24
  %t35 = add i64 %t31, %t32
  %t37 = sub i64 %t35, 1
  %t38 = load i64, ptr %l7, !tbaa !24
  %t41 = sdiv i64 %t37, %t38
  store i64 %t41, ptr %l25, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb7
bb7:
  %t43 = load i64, ptr %l25, !tbaa !24
  store i64 %t43, ptr %l22, !tbaa !24
  br label %bb8
bb8:
  %t44 = load i64, ptr %l22, !tbaa !24
  store i64 %t44, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb9
bb9:
  %t45 = load i64, ptr %l9, !tbaa !24
  %t46 = load i64, ptr %l8, !tbaa !24
  %t49 = icmp slt i64 %t45, %t46
  %t51 = xor i1 %t49, true
  br i1 %t51, label %bb10, label %bb11
bb10:
  br label %bb18
bb11:
  br label %bb12
bb12:
  %t53 = load i64, ptr %l5, !tbaa !24
  %t54 = load i64, ptr %l9, !tbaa !24
  %t55 = load i64, ptr %l7, !tbaa !24
  %t58 = mul i64 %t54, %t55
  %t61 = add i64 %t53, %t58
  %t63 = load ptr, ptr %l3, !tbaa !29
  %t65 = getelementptr %"compiler/typed:Body", ptr %t63, i32 0, i32 7
  %t69 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t65, i64 %t61)
  store %"compiler/typed:Local" %t69, ptr %l46
  br label %bb13
bb13:
  %t70 = getelementptr %"compiler/typed:Local", ptr %l46, i32 0, i32 4
  %t71 = load i32, ptr %t70, !range !{i32 0, i32 7}
  %t73 = trunc i64 5 to i32
  %t74 = icmp eq i32 %t71, %t73
  br i1 %t74, label %bb14, label %bb15
bb14:
  %t76 = load i64, ptr %l4, !tbaa !24
  %t78 = add i64 %t76, 1
  store i64 %t78, ptr %l4, !tbaa !24
  br label %bb16
bb15:
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t80 = load i64, ptr %l9, !tbaa !24
  %t82 = add i64 %t80, 1
  store i64 %t82, ptr %l9, !tbaa !24
  br label %bb9
bb18:
  %t84 = load i64, ptr %l4, !tbaa !24
  store i64 %t84, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eclassify(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca i64
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca i64
  %l21 = alloca ptr
  %l22 = alloca ptr
  %l23 = alloca i32
  %l24 = alloca i32
  %l25 = alloca i32
  %l26 = alloca ptr
  %l27 = alloca ptr
  %l28 = alloca i32
  %l34 = alloca ptr
  %l35 = alloca i64
  %l37 = alloca i32
  %l38 = alloca %"compiler/effects:part"
  %l39 = alloca ptr
  %l40 = alloca i1
  %l50 = alloca ptr
  %l51 = alloca i1
  %l60 = alloca i1
  %l64 = alloca i1
  %l65 = alloca ptr
  %l66 = alloca { i64, ptr }
  %l68 = alloca i32
  %l69 = alloca i1
  %l71 = alloca { i64, ptr }
  %l77 = alloca ptr
  %l78 = alloca i64
  %l80 = alloca i32
  %l81 = alloca %"compiler/effects:part"
  %l82 = alloca ptr
  %l83 = alloca i1
  %l92 = alloca ptr
  %l93 = alloca i64
  %l95 = alloca i32
  %l96 = alloca %"compiler/effects:part"
  %l97 = alloca ptr
  %l112 = alloca ptr
  %l113 = alloca i1
  %l126 = alloca { i64, ptr }
  %l140 = alloca ptr
  %l150 = alloca ptr
  %l151 = alloca i1
  %l169 = alloca { i64, ptr }
  %l180 = alloca { i64, ptr }
  %l192 = alloca ptr
  %l193 = alloca i1
  %l202 = alloca ptr
  %l203 = alloca i64
  %l205 = alloca i32
  %l206 = alloca %"compiler/effects:part"
  %l207 = alloca ptr
  %l216 = alloca ptr
  %l217 = alloca i1
  %l223 = alloca ptr
  %l227 = alloca %"compiler/effects:part"
  %l228 = alloca ptr
  %l229 = alloca i1
  %l232 = alloca i1
  %l234 = alloca ptr
  %l235 = alloca i1
  %l248 = alloca ptr
  %l249 = alloca i1
  %l253 = alloca ptr
  %l254 = alloca i64
  %l256 = alloca i32
  %l257 = alloca %"compiler/effects:part"
  %l258 = alloca ptr
  %l259 = alloca i1
  %l268 = alloca ptr
  %l269 = alloca i1
  %l275 = alloca ptr
  %l280 = alloca %"compiler/effects:part"
  %l282 = alloca ptr
  %l285 = alloca %"compiler/effects:part"
  %l287 = alloca ptr
  %l288 = alloca i64
  %l290 = alloca i32
  %l291 = alloca %"compiler/effects:part"
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
  %t5 = load i64, ptr %l2, !tbaa !24
  %t7 = icmp sgt i64 %t5, 16
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/effects:Effects", ptr %t9, i32 0, i32 33
  store ptr %t11, ptr %l34, !tbaa !29
  %t12 = load i64, ptr @G_2ecompiler_2feffects_2eGivBound, !tbaa !24
  store i64 %t12, ptr %l35, !tbaa !24
  %t13 = load ptr, ptr %l1, !tbaa !29
  %t15 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t13)
  store i32 %t15, ptr %l37
  br label %bb6
bb5:
  br label %bb9
bb6:
  %t16 = load i64, ptr %l35, !tbaa !24
  %t17 = load i32, ptr %l37, !tbaa !23
  %t18 = call %"compiler/effects:part" @compiler_2feffects_3apart_2ector(ptr %v0, ptr %v0, i64 %t16, i64 0, i32 %t17, ptr null)
  store %"compiler/effects:part" %t18, ptr %l38
  br label %bb7
bb7:
  %t19 = load ptr, ptr %l34, !tbaa !29
  %t20 = load %"compiler/effects:part", ptr %l38
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2ePush_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %v0, ptr %t19, %"compiler/effects:part" %t20)
  br label %bb8
bb8:
  br label %ret
bb9:
  %t21 = load ptr, ptr %l1, !tbaa !29
  store ptr %t21, ptr %l39, !tbaa !29
  store i1 false, ptr %l40, !tbaa !21
  %t22 = load ptr, ptr %l39, !tbaa !29
  %t23 = icmp ne ptr %t22, null
  br i1 %t23, label %bb10, label %bb11
bb10:
  %t25 = load ptr, ptr %l39, !tbaa !29
  %t26 = load i64, ptr %t25, !range !{i64 0, i64 18}
  %t28 = icmp eq i64 %t26, 17
  store i1 %t28, ptr %l40, !tbaa !21
  br label %bb11
bb11:
  %t29 = load i1, ptr %l40, !tbaa !21
  br i1 %t29, label %bb12, label %bb13
bb12:
  %t30 = load ptr, ptr %l1, !tbaa !29
  %t32 = getelementptr { i64, [5 x i64] }, ptr %t30, i32 0, i32 1
  %t33 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t32, i32 0, i32 2
  %t34 = load ptr, ptr %t33
  store ptr %t34, ptr %l3, !tbaa !29
  br label %bb14
bb13:
  br label %bb16
bb14:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load ptr, ptr %l3, !tbaa !29
  %t39 = load i64, ptr %l2, !tbaa !24
  %t41 = add i64 %t39, 1
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eclassify(ptr %v0, ptr %v1, ptr %t36, ptr %t37, i64 %t41)
  br label %bb15
bb15:
  br label %bb168
bb16:
  %t45 = load ptr, ptr %l1, !tbaa !29
  store ptr %t45, ptr %l50, !tbaa !29
  store i1 false, ptr %l51, !tbaa !21
  %t46 = load ptr, ptr %l50, !tbaa !29
  %t47 = icmp ne ptr %t46, null
  br i1 %t47, label %bb17, label %bb18
bb17:
  %t49 = load ptr, ptr %l50, !tbaa !29
  %t50 = load i64, ptr %t49, !range !{i64 0, i64 18}
  %t52 = icmp eq i64 %t50, 9
  store i1 %t52, ptr %l51, !tbaa !21
  br label %bb18
bb18:
  %t53 = load i1, ptr %l51, !tbaa !21
  br i1 %t53, label %bb19, label %bb20
bb19:
  %t54 = load ptr, ptr %l1, !tbaa !29
  %t56 = getelementptr { i64, [5 x i64] }, ptr %t54, i32 0, i32 1
  %t57 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t56, i32 0, i32 2
  %t58 = load i32, ptr %t57, !range !{i32 0, i32 52}
  store i32 %t58, ptr %l4
  %t60 = load ptr, ptr %l1, !tbaa !29
  %t62 = getelementptr { i64, [5 x i64] }, ptr %t60, i32 0, i32 1
  %t63 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t62, i32 0, i32 4
  %t64 = load { i64, ptr }, ptr %t63
  store { i64, ptr } %t64, ptr %l5, !tbaa !27
  br label %bb21
bb20:
  br label %bb37
bb21:
  %t66 = load i32, ptr %l4, !range !{i32 0, i32 52}
  %t68 = trunc i64 20 to i32
  %t69 = icmp eq i32 %t66, %t68
  br i1 %t69, label %bb22, label %bb23
bb22:
  %t71 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t73 = extractvalue { i64, ptr } %t71, 0
  %t75 = icmp eq i64 %t73, 1
  store i1 %t75, ptr %l60, !tbaa !21
  br label %bb24
bb23:
  store i1 false, ptr %l60, !tbaa !21
  br label %bb24
bb24:
  %t77 = load i1, ptr %l60, !tbaa !21
  br i1 %t77, label %bb25, label %bb26
bb25:
  %t78 = load ptr, ptr %l0, !tbaa !29
  store ptr %t78, ptr %l65, !tbaa !29
  %t79 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t79, ptr %l66, !tbaa !27
  %t80 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !27
  %t82 = getelementptr ptr, ptr %t81, i64 0
  %t83 = load ptr, ptr %t82, !tbaa !39
  %t85 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t83)
  store i32 %t85, ptr %l68
  br label %bb27
bb26:
  store i1 false, ptr %l64, !tbaa !21
  br label %bb29
bb27:
  %t86 = load ptr, ptr %l65, !tbaa !29
  %t87 = load i32, ptr %l68, !tbaa !23
  %t88 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eisFn(ptr %v0, ptr %t86, i32 %t87)
  store i1 %t88, ptr %l69
  br label %bb28
bb28:
  %t89 = load i1, ptr %l69, !tbaa !21
  store i1 %t89, ptr %l64, !tbaa !21
  br label %bb29
bb29:
  %t90 = load i1, ptr %l64, !tbaa !21
  br i1 %t90, label %bb30, label %bb31
bb30:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t92, ptr %l71, !tbaa !27
  %t93 = getelementptr { i64, ptr }, ptr %l71, i32 0, i32 1
  %t94 = load ptr, ptr %t93, !tbaa !27
  %t95 = getelementptr ptr, ptr %t94, i64 0
  %t96 = load ptr, ptr %t95, !tbaa !39
  %t98 = load i64, ptr %l2, !tbaa !24
  %t100 = add i64 %t98, 1
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eclassify(ptr %v0, ptr %v1, ptr %t91, ptr %t96, i64 %t100)
  br label %bb32
bb31:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/effects:Effects", ptr %t104, i32 0, i32 33
  store ptr %t106, ptr %l77, !tbaa !29
  %t107 = load i64, ptr @G_2ecompiler_2feffects_2eGivBound, !tbaa !24
  store i64 %t107, ptr %l78, !tbaa !24
  %t108 = load ptr, ptr %l1, !tbaa !29
  %t110 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t108)
  store i32 %t110, ptr %l80
  br label %bb33
bb32:
  br label %bb36
bb33:
  %t111 = load i64, ptr %l78, !tbaa !24
  %t112 = load i32, ptr %l80, !tbaa !23
  %t113 = call %"compiler/effects:part" @compiler_2feffects_3apart_2ector(ptr %v0, ptr %v0, i64 %t111, i64 0, i32 %t112, ptr null)
  store %"compiler/effects:part" %t113, ptr %l81
  br label %bb34
bb34:
  %t114 = load ptr, ptr %l77, !tbaa !29
  %t115 = load %"compiler/effects:part", ptr %l81
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2ePush_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %v0, ptr %t114, %"compiler/effects:part" %t115)
  br label %bb35
bb35:
  br label %bb36
bb36:
  br label %bb168
bb37:
  %t116 = load ptr, ptr %l1, !tbaa !29
  store ptr %t116, ptr %l82, !tbaa !29
  store i1 false, ptr %l83, !tbaa !21
  %t117 = load ptr, ptr %l82, !tbaa !29
  %t118 = icmp ne ptr %t117, null
  br i1 %t118, label %bb38, label %bb39
bb38:
  %t120 = load ptr, ptr %l82, !tbaa !29
  %t121 = load i64, ptr %t120, !range !{i64 0, i64 18}
  %t123 = icmp eq i64 %t121, 11
  store i1 %t123, ptr %l83, !tbaa !21
  br label %bb39
bb39:
  %t124 = load i1, ptr %l83, !tbaa !21
  br i1 %t124, label %bb40, label %bb41
bb40:
  %t125 = load ptr, ptr %l1, !tbaa !29
  %t127 = getelementptr { i64, [5 x i64] }, ptr %t125, i32 0, i32 1
  %t128 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t127, i32 0, i32 2
  %t129 = load ptr, ptr %t128
  store ptr %t129, ptr %l6, !tbaa !29
  br label %bb42
bb41:
  br label %bb54
bb42:
  %t131 = load ptr, ptr %l6, !tbaa !29
  %t133 = getelementptr %"compiler/typed:Cond", ptr %t131, i32 0, i32 1
  %t134 = load ptr, ptr %t133, !tbaa !29
  %t136 = icmp eq ptr %t134, null
  br i1 %t136, label %bb43, label %bb44
bb43:
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t140 = getelementptr %"compiler/effects:Effects", ptr %t138, i32 0, i32 33
  store ptr %t140, ptr %l92, !tbaa !29
  %t141 = load i64, ptr @G_2ecompiler_2feffects_2eGivBound, !tbaa !24
  store i64 %t141, ptr %l93, !tbaa !24
  %t142 = load ptr, ptr %l1, !tbaa !29
  %t144 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t142)
  store i32 %t144, ptr %l95
  br label %bb45
bb44:
  %t145 = load ptr, ptr %l0, !tbaa !29
  store ptr %t145, ptr %l97, !tbaa !29
  %t146 = load ptr, ptr %l6, !tbaa !29
  %t148 = getelementptr %"compiler/typed:Cond", ptr %t146, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !29
  %t151 = icmp eq ptr %t149, null
  br i1 %t151, label %bb48, label %bb49
bb45:
  %t153 = load i64, ptr %l93, !tbaa !24
  %t154 = load i32, ptr %l95, !tbaa !23
  %t155 = call %"compiler/effects:part" @compiler_2feffects_3apart_2ector(ptr %v0, ptr %v0, i64 %t153, i64 0, i32 %t154, ptr null)
  store %"compiler/effects:part" %t155, ptr %l96
  br label %bb46
bb46:
  %t156 = load ptr, ptr %l92, !tbaa !29
  %t157 = load %"compiler/effects:part", ptr %l96
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2ePush_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %v0, ptr %t156, %"compiler/effects:part" %t157)
  br label %bb47
bb47:
  br label %bb52
bb48:
  call void @__olang_check_failed(ptr @olang_loc_b51fd4885ec92e5_d8c1bbe4cc347d79)
  unreachable
bb49:
  br label %bb50
bb50:
  %t158 = load ptr, ptr %l6, !tbaa !29
  %t160 = getelementptr %"compiler/typed:Cond", ptr %t158, i32 0, i32 1
  %t161 = load ptr, ptr %t160, !tbaa !29
  %t163 = load i64, ptr %l2, !tbaa !24
  %t165 = add i64 %t163, 1
  %t166 = load ptr, ptr %l97, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eclassify(ptr %v0, ptr %v1, ptr %t166, ptr %t161, i64 %t165)
  br label %bb51
bb51:
  br label %bb52
bb52:
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t170 = load ptr, ptr %l6, !tbaa !29
  %t172 = getelementptr %"compiler/typed:Cond", ptr %t170, i32 0, i32 2
  %t173 = load ptr, ptr %t172, !tbaa !29
  %t175 = load i64, ptr %l2, !tbaa !24
  %t177 = add i64 %t175, 1
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eclassify(ptr %v0, ptr %v1, ptr %t169, ptr %t173, i64 %t177)
  br label %bb53
bb53:
  br label %bb168
bb54:
  %t181 = load ptr, ptr %l1, !tbaa !29
  store ptr %t181, ptr %l112, !tbaa !29
  store i1 false, ptr %l113, !tbaa !21
  %t182 = load ptr, ptr %l112, !tbaa !29
  %t183 = icmp ne ptr %t182, null
  br i1 %t183, label %bb55, label %bb56
bb55:
  %t185 = load ptr, ptr %l112, !tbaa !29
  %t186 = load i64, ptr %t185, !range !{i64 0, i64 18}
  %t188 = icmp eq i64 %t186, 13
  store i1 %t188, ptr %l113, !tbaa !21
  br label %bb56
bb56:
  %t189 = load i1, ptr %l113, !tbaa !21
  br i1 %t189, label %bb57, label %bb58
bb57:
  %t190 = load ptr, ptr %l1, !tbaa !29
  %t192 = getelementptr { i64, [5 x i64] }, ptr %t190, i32 0, i32 1
  %t193 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t192, i32 0, i32 2
  %t194 = load ptr, ptr %t193
  store ptr %t194, ptr %l7, !tbaa !29
  br label %bb59
bb58:
  br label %bb74
bb59:
  %t196 = load ptr, ptr %l7, !tbaa !29
  %t198 = getelementptr %"compiler/typed:Match", ptr %t196, i32 0, i32 1
  %t199 = load { i64, ptr }, ptr %t198, !tbaa !27
  store { i64, ptr } %t199, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t201 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t203 = extractvalue { i64, ptr } %t201, 0
  store i64 %t203, ptr %l10, !tbaa !24
  br label %bb60
bb60:
  %t205 = load i64, ptr %l9, !tbaa !24
  %t206 = load i64, ptr %l10, !tbaa !24
  %t209 = icmp slt i64 %t205, %t206
  %t211 = xor i1 %t209, true
  br i1 %t211, label %bb61, label %bb62
bb61:
  br label %bb66
bb62:
  br label %bb63
bb63:
  %t213 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t213, ptr %l126, !tbaa !27
  %t214 = load i64, ptr %l9, !tbaa !24
  %t216 = getelementptr { i64, ptr }, ptr %l126, i32 0, i32 1
  %t217 = load ptr, ptr %t216, !tbaa !27
  %t218 = getelementptr ptr, ptr %t217, i64 %t214
  %t219 = load ptr, ptr %t218, !tbaa !39
  %t221 = load ptr, ptr %l0, !tbaa !29
  %t224 = getelementptr %"compiler/typed:Arm", ptr %t219, i32 0, i32 4
  %t225 = load ptr, ptr %t224, !tbaa !29
  %t226 = load i64, ptr %l2, !tbaa !24
  %t228 = add i64 %t226, 1
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eclassify(ptr %v0, ptr %v1, ptr %t221, ptr %t225, i64 %t228)
  br label %bb64
bb64:
  br label %bb65
bb65:
  %t232 = load i64, ptr %l9, !tbaa !24
  %t234 = add i64 %t232, 1
  store i64 %t234, ptr %l9, !tbaa !24
  br label %bb60
bb66:
  %t236 = load ptr, ptr %l7, !tbaa !29
  %t238 = getelementptr %"compiler/typed:Match", ptr %t236, i32 0, i32 2
  %t239 = load ptr, ptr %t238, !tbaa !29
  %t241 = icmp eq ptr %t239, null
  %t243 = xor i1 %t241, true
  br i1 %t243, label %bb67, label %bb68
bb67:
  %t245 = load ptr, ptr %l0, !tbaa !29
  store ptr %t245, ptr %l140, !tbaa !29
  %t246 = load ptr, ptr %l7, !tbaa !29
  %t248 = getelementptr %"compiler/typed:Match", ptr %t246, i32 0, i32 2
  %t249 = load ptr, ptr %t248, !tbaa !29
  %t251 = icmp eq ptr %t249, null
  br i1 %t251, label %bb69, label %bb70
bb68:
  br label %bb73
bb69:
  call void @__olang_check_failed(ptr @olang_loc_488be308cffaf13e_20c0e7cb8e30f352)
  unreachable
bb70:
  br label %bb71
bb71:
  %t253 = load ptr, ptr %l7, !tbaa !29
  %t255 = getelementptr %"compiler/typed:Match", ptr %t253, i32 0, i32 2
  %t256 = load ptr, ptr %t255, !tbaa !29
  %t259 = getelementptr %"compiler/typed:Arm", ptr %t256, i32 0, i32 4
  %t260 = load ptr, ptr %t259, !tbaa !29
  %t261 = load i64, ptr %l2, !tbaa !24
  %t263 = add i64 %t261, 1
  %t264 = load ptr, ptr %l140, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eclassify(ptr %v0, ptr %v1, ptr %t264, ptr %t260, i64 %t263)
  br label %bb72
bb72:
  br label %bb73
bb73:
  br label %bb168
bb74:
  %t267 = load ptr, ptr %l1, !tbaa !29
  store ptr %t267, ptr %l150, !tbaa !29
  store i1 false, ptr %l151, !tbaa !21
  %t268 = load ptr, ptr %l150, !tbaa !29
  %t269 = icmp ne ptr %t268, null
  br i1 %t269, label %bb75, label %bb76
bb75:
  %t271 = load ptr, ptr %l150, !tbaa !29
  %t272 = load i64, ptr %t271, !range !{i64 0, i64 18}
  %t274 = icmp eq i64 %t272, 14
  store i1 %t274, ptr %l151, !tbaa !21
  br label %bb76
bb76:
  %t275 = load i1, ptr %l151, !tbaa !21
  br i1 %t275, label %bb77, label %bb78
bb77:
  %t276 = load ptr, ptr %l1, !tbaa !29
  %t278 = getelementptr { i64, [5 x i64] }, ptr %t276, i32 0, i32 1
  %t279 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t278, i32 0, i32 2
  %t280 = load ptr, ptr %t279
  store ptr %t280, ptr %l12, !tbaa !29
  br label %bb79
bb78:
  br label %bb94
bb79:
  %t282 = load ptr, ptr %l0, !tbaa !29
  %t283 = load ptr, ptr %l12, !tbaa !29
  %t285 = getelementptr %"compiler/typed:Try", ptr %t283, i32 0, i32 0
  %t286 = load ptr, ptr %t285, !tbaa !29
  %t287 = load i64, ptr %l2, !tbaa !24
  %t289 = add i64 %t287, 1
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eclassify(ptr %v0, ptr %v1, ptr %t282, ptr %t286, i64 %t289)
  br label %bb80
bb80:
  %t293 = load ptr, ptr %l12, !tbaa !29
  %t295 = getelementptr %"compiler/typed:Try", ptr %t293, i32 0, i32 1
  %t296 = load { i64, ptr }, ptr %t295, !tbaa !27
  store { i64, ptr } %t296, ptr %l13, !tbaa !27
  store i64 0, ptr %l14, !tbaa !24
  %t298 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t300 = extractvalue { i64, ptr } %t298, 0
  store i64 %t300, ptr %l15, !tbaa !24
  br label %bb81
bb81:
  %t302 = load i64, ptr %l14, !tbaa !24
  %t303 = load i64, ptr %l15, !tbaa !24
  %t306 = icmp slt i64 %t302, %t303
  %t308 = xor i1 %t306, true
  br i1 %t308, label %bb82, label %bb83
bb82:
  br label %bb93
bb83:
  br label %bb84
bb84:
  %t310 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t310, ptr %l169, !tbaa !27
  %t311 = load i64, ptr %l14, !tbaa !24
  %t313 = getelementptr { i64, ptr }, ptr %l169, i32 0, i32 1
  %t314 = load ptr, ptr %t313, !tbaa !27
  %t315 = getelementptr ptr, ptr %t314, i64 %t311
  %t316 = load ptr, ptr %t315, !tbaa !39
  %t320 = getelementptr %"compiler/typed:Clause", ptr %t316, i32 0, i32 4
  %t321 = load { i64, ptr }, ptr %t320, !tbaa !27
  store { i64, ptr } %t321, ptr %l17, !tbaa !27
  store i64 0, ptr %l18, !tbaa !24
  %t323 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t325 = extractvalue { i64, ptr } %t323, 0
  store i64 %t325, ptr %l19, !tbaa !24
  br label %bb85
bb85:
  %t327 = load i64, ptr %l18, !tbaa !24
  %t328 = load i64, ptr %l19, !tbaa !24
  %t331 = icmp slt i64 %t327, %t328
  %t333 = xor i1 %t331, true
  br i1 %t333, label %bb86, label %bb87
bb86:
  br label %bb91
bb87:
  br label %bb88
bb88:
  %t335 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t335, ptr %l180, !tbaa !27
  %t336 = load i64, ptr %l18, !tbaa !24
  %t338 = getelementptr { i64, ptr }, ptr %l180, i32 0, i32 1
  %t339 = load ptr, ptr %t338, !tbaa !27
  %t340 = getelementptr ptr, ptr %t339, i64 %t336
  %t341 = load ptr, ptr %t340, !tbaa !39
  %t343 = load ptr, ptr %l0, !tbaa !29
  %t346 = load i64, ptr %l2, !tbaa !24
  %t348 = add i64 %t346, 1
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eclassify(ptr %v0, ptr %v1, ptr %t343, ptr %t341, i64 %t348)
  br label %bb89
bb89:
  br label %bb90
bb90:
  %t352 = load i64, ptr %l18, !tbaa !24
  %t354 = add i64 %t352, 1
  store i64 %t354, ptr %l18, !tbaa !24
  br label %bb85
bb91:
  br label %bb92
bb92:
  %t356 = load i64, ptr %l14, !tbaa !24
  %t358 = add i64 %t356, 1
  store i64 %t358, ptr %l14, !tbaa !24
  br label %bb81
bb93:
  br label %bb168
bb94:
  %t360 = load ptr, ptr %l1, !tbaa !29
  store ptr %t360, ptr %l192, !tbaa !29
  store i1 false, ptr %l193, !tbaa !21
  %t361 = load ptr, ptr %l192, !tbaa !29
  %t362 = icmp ne ptr %t361, null
  br i1 %t362, label %bb95, label %bb96
bb95:
  %t364 = load ptr, ptr %l192, !tbaa !29
  %t365 = load i64, ptr %t364, !range !{i64 0, i64 18}
  %t367 = icmp eq i64 %t365, 12
  store i1 %t367, ptr %l193, !tbaa !21
  br label %bb96
bb96:
  %t368 = load i1, ptr %l193, !tbaa !21
  br i1 %t368, label %bb97, label %bb98
bb97:
  %t369 = load ptr, ptr %l1, !tbaa !29
  %t371 = getelementptr { i64, [5 x i64] }, ptr %t369, i32 0, i32 1
  %t372 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t371, i32 0, i32 2
  %t373 = load ptr, ptr %t372
  store ptr %t373, ptr %l21, !tbaa !29
  br label %bb99
bb98:
  br label %bb110
bb99:
  %t375 = load ptr, ptr %l21, !tbaa !29
  %t377 = getelementptr %"compiler/typed:Seq", ptr %t375, i32 0, i32 1
  %t378 = load ptr, ptr %t377, !tbaa !29
  %t380 = icmp eq ptr %t378, null
  br i1 %t380, label %bb100, label %bb101
bb100:
  %t382 = load ptr, ptr %l0, !tbaa !29
  %t384 = getelementptr %"compiler/effects:Effects", ptr %t382, i32 0, i32 33
  store ptr %t384, ptr %l202, !tbaa !29
  %t385 = load i64, ptr @G_2ecompiler_2feffects_2eGivBound, !tbaa !24
  store i64 %t385, ptr %l203, !tbaa !24
  %t386 = load ptr, ptr %l1, !tbaa !29
  %t388 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t386)
  store i32 %t388, ptr %l205
  br label %bb102
bb101:
  %t389 = load ptr, ptr %l0, !tbaa !29
  store ptr %t389, ptr %l207, !tbaa !29
  %t390 = load ptr, ptr %l21, !tbaa !29
  %t392 = getelementptr %"compiler/typed:Seq", ptr %t390, i32 0, i32 1
  %t393 = load ptr, ptr %t392, !tbaa !29
  %t395 = icmp eq ptr %t393, null
  br i1 %t395, label %bb105, label %bb106
bb102:
  %t397 = load i64, ptr %l203, !tbaa !24
  %t398 = load i32, ptr %l205, !tbaa !23
  %t399 = call %"compiler/effects:part" @compiler_2feffects_3apart_2ector(ptr %v0, ptr %v0, i64 %t397, i64 0, i32 %t398, ptr null)
  store %"compiler/effects:part" %t399, ptr %l206
  br label %bb103
bb103:
  %t400 = load ptr, ptr %l202, !tbaa !29
  %t401 = load %"compiler/effects:part", ptr %l206
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2ePush_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %v0, ptr %t400, %"compiler/effects:part" %t401)
  br label %bb104
bb104:
  br label %bb109
bb105:
  call void @__olang_check_failed(ptr @olang_loc_59fe423ba48f95ef_125e5ca5a1678c93)
  unreachable
bb106:
  br label %bb107
bb107:
  %t402 = load ptr, ptr %l21, !tbaa !29
  %t404 = getelementptr %"compiler/typed:Seq", ptr %t402, i32 0, i32 1
  %t405 = load ptr, ptr %t404, !tbaa !29
  %t407 = load i64, ptr %l2, !tbaa !24
  %t409 = add i64 %t407, 1
  %t410 = load ptr, ptr %l207, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eclassify(ptr %v0, ptr %v1, ptr %t410, ptr %t405, i64 %t409)
  br label %bb108
bb108:
  br label %bb109
bb109:
  br label %bb168
bb110:
  %t413 = load ptr, ptr %l1, !tbaa !29
  store ptr %t413, ptr %l216, !tbaa !29
  store i1 false, ptr %l217, !tbaa !21
  %t414 = load ptr, ptr %l216, !tbaa !29
  %t415 = icmp ne ptr %t414, null
  br i1 %t415, label %bb111, label %bb112
bb111:
  %t417 = load ptr, ptr %l216, !tbaa !29
  %t418 = load i64, ptr %t417, !range !{i64 0, i64 18}
  %t420 = icmp eq i64 %t418, 15
  store i1 %t420, ptr %l217, !tbaa !21
  br label %bb112
bb112:
  %t421 = load i1, ptr %l217, !tbaa !21
  br i1 %t421, label %bb113, label %bb114
bb113:
  %t422 = load ptr, ptr %l1, !tbaa !29
  %t424 = getelementptr { i64, [5 x i64] }, ptr %t422, i32 0, i32 1
  %t425 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t424, i32 0, i32 2
  %t426 = load ptr, ptr %t425
  store ptr %t426, ptr %l22, !tbaa !29
  br label %bb115
bb114:
  br label %bb118
bb115:
  %t428 = load ptr, ptr %l0, !tbaa !29
  %t430 = getelementptr %"compiler/effects:Effects", ptr %t428, i32 0, i32 33
  store ptr %t430, ptr %l223, !tbaa !29
  %t431 = load ptr, ptr %l0, !tbaa !29
  %t432 = load ptr, ptr %l22, !tbaa !29
  %t433 = load ptr, ptr %l1, !tbaa !29
  %t437 = call %"compiler/effects:part" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2efnPart(ptr %v0, ptr %v1, ptr %v1, ptr %v1, ptr %t431, ptr %t432, ptr %t433)
  store %"compiler/effects:part" %t437, ptr %l227
  br label %bb116
bb116:
  %t438 = load ptr, ptr %l223, !tbaa !29
  %t439 = load %"compiler/effects:part", ptr %l227
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2ePush_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %v1, ptr %t438, %"compiler/effects:part" %t439)
  br label %bb117
bb117:
  br label %bb168
bb118:
  %t440 = load ptr, ptr %l1, !tbaa !29
  store ptr %t440, ptr %l228, !tbaa !29
  store i1 false, ptr %l229, !tbaa !21
  %t441 = load ptr, ptr %l228, !tbaa !29
  %t442 = icmp ne ptr %t441, null
  br i1 %t442, label %bb119, label %bb120
bb119:
  %t444 = load ptr, ptr %l228, !tbaa !29
  %t445 = load i64, ptr %t444, !range !{i64 0, i64 18}
  %t447 = icmp eq i64 %t445, 2
  store i1 %t447, ptr %l229, !tbaa !21
  br label %bb120
bb120:
  %t448 = load i1, ptr %l229, !tbaa !21
  br i1 %t448, label %bb121, label %bb122
bb121:
  %t449 = load ptr, ptr %l1, !tbaa !29
  %t451 = getelementptr { i64, [5 x i64] }, ptr %t449, i32 0, i32 1
  %t452 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t451, i32 0, i32 2
  %t453 = load ptr, ptr %t452
  store ptr %t453, ptr %l234, !tbaa !29
  store i1 false, ptr %l235, !tbaa !21
  %t454 = load ptr, ptr %l234, !tbaa !29
  %t455 = icmp ne ptr %t454, null
  br i1 %t455, label %bb123, label %bb124
bb122:
  store i1 false, ptr %l232, !tbaa !21
  br label %bb125
bb123:
  %t457 = load ptr, ptr %l234, !tbaa !29
  %t458 = load i64, ptr %t457, !range !{i64 0, i64 8}
  %t460 = icmp eq i64 %t458, 0
  store i1 %t460, ptr %l235, !tbaa !21
  br label %bb124
bb124:
  %t461 = load i1, ptr %l235, !tbaa !21
  store i1 %t461, ptr %l232, !tbaa !21
  br label %bb125
bb125:
  %t462 = load i1, ptr %l232, !tbaa !21
  br i1 %t462, label %bb126, label %bb127
bb126:
  %t463 = load ptr, ptr %l1, !tbaa !29
  %t465 = getelementptr { i64, [5 x i64] }, ptr %t463, i32 0, i32 1
  %t466 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t465, i32 0, i32 1
  %t467 = load i32, ptr %t466
  store i32 %t467, ptr %l23, !tbaa !23
  %t469 = load ptr, ptr %l1, !tbaa !29
  %t471 = getelementptr { i64, [5 x i64] }, ptr %t469, i32 0, i32 1
  %t472 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t471, i32 0, i32 2
  %t473 = load ptr, ptr %t472
  %t475 = getelementptr { i64, [4 x i64] }, ptr %t473, i32 0, i32 1
  %t476 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t475, i32 0, i32 2
  %t477 = load i32, ptr %t476
  store i32 %t477, ptr %l24, !tbaa !23
  br label %bb128
bb127:
  br label %bb130
bb128:
  %t479 = load ptr, ptr %l0, !tbaa !29
  %t480 = load i32, ptr %l24, !tbaa !23
  %t482 = sext i32 %t480 to i64
  %t483 = load i32, ptr %l23, !tbaa !23
  %t484 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eclassifyLocal(ptr %v0, ptr %t479, i64 %t482, i32 %t483, i64 %t484)
  br label %bb129
bb129:
  br label %bb168
bb130:
  %t489 = load ptr, ptr %l1, !tbaa !29
  store ptr %t489, ptr %l248, !tbaa !29
  store i1 false, ptr %l249, !tbaa !21
  %t490 = load ptr, ptr %l248, !tbaa !29
  %t491 = icmp ne ptr %t490, null
  br i1 %t491, label %bb131, label %bb132
bb131:
  %t493 = load ptr, ptr %l248, !tbaa !29
  %t494 = load i64, ptr %t493, !range !{i64 0, i64 18}
  %t496 = icmp eq i64 %t494, 0
  store i1 %t496, ptr %l249, !tbaa !21
  br label %bb132
bb132:
  %t497 = load i1, ptr %l249, !tbaa !21
  br i1 %t497, label %bb133, label %bb134
bb133:
  br label %bb135
bb134:
  br label %bb139
bb135:
  %t498 = load ptr, ptr %l0, !tbaa !29
  %t500 = getelementptr %"compiler/effects:Effects", ptr %t498, i32 0, i32 33
  store ptr %t500, ptr %l253, !tbaa !29
  %t501 = load i64, ptr @G_2ecompiler_2feffects_2eGivMade, !tbaa !24
  store i64 %t501, ptr %l254, !tbaa !24
  %t502 = load ptr, ptr %l1, !tbaa !29
  %t504 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t502)
  store i32 %t504, ptr %l256
  br label %bb136
bb136:
  %t505 = load i64, ptr %l254, !tbaa !24
  %t506 = load i32, ptr %l256, !tbaa !23
  %t507 = call %"compiler/effects:part" @compiler_2feffects_3apart_2ector(ptr %v0, ptr %v0, i64 %t505, i64 0, i32 %t506, ptr null)
  store %"compiler/effects:part" %t507, ptr %l257
  br label %bb137
bb137:
  %t508 = load ptr, ptr %l253, !tbaa !29
  %t509 = load %"compiler/effects:part", ptr %l257
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2ePush_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %v0, ptr %t508, %"compiler/effects:part" %t509)
  br label %bb138
bb138:
  br label %bb168
bb139:
  %t510 = load ptr, ptr %l1, !tbaa !29
  store ptr %t510, ptr %l258, !tbaa !29
  store i1 false, ptr %l259, !tbaa !21
  %t511 = load ptr, ptr %l258, !tbaa !29
  %t512 = icmp ne ptr %t511, null
  br i1 %t512, label %bb140, label %bb141
bb140:
  %t514 = load ptr, ptr %l258, !tbaa !29
  %t515 = load i64, ptr %t514, !range !{i64 0, i64 18}
  %t517 = icmp eq i64 %t515, 6
  store i1 %t517, ptr %l259, !tbaa !21
  br label %bb141
bb141:
  %t518 = load i1, ptr %l259, !tbaa !21
  br i1 %t518, label %bb142, label %bb143
bb142:
  %t519 = load ptr, ptr %l1, !tbaa !29
  %t521 = getelementptr { i64, [5 x i64] }, ptr %t519, i32 0, i32 1
  %t522 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t521, i32 0, i32 1
  %t523 = load i32, ptr %t522
  store i32 %t523, ptr %l25, !tbaa !23
  %t525 = load ptr, ptr %l1, !tbaa !29
  %t527 = getelementptr { i64, [5 x i64] }, ptr %t525, i32 0, i32 1
  %t528 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t527, i32 0, i32 2
  %t529 = load ptr, ptr %t528
  store ptr %t529, ptr %l26, !tbaa !29
  br label %bb144
bb143:
  br label %bb160
bb144:
  %t531 = load ptr, ptr %l26, !tbaa !29
  %t533 = getelementptr %"compiler/typed:Call", ptr %t531, i32 0, i32 0
  %t534 = load ptr, ptr %t533, !tbaa !29
  store ptr %t534, ptr %l27, !tbaa !29
  %t536 = load ptr, ptr %l27, !tbaa !29
  store ptr %t536, ptr %l268, !tbaa !29
  store i1 false, ptr %l269, !tbaa !21
  %t537 = load ptr, ptr %l268, !tbaa !29
  %t538 = icmp ne ptr %t537, null
  br i1 %t538, label %bb145, label %bb146
bb145:
  %t540 = load ptr, ptr %l268, !tbaa !29
  %t541 = load i64, ptr %t540, !range !{i64 0, i64 5}
  %t543 = icmp eq i64 %t541, 0
  store i1 %t543, ptr %l269, !tbaa !21
  br label %bb146
bb146:
  %t544 = load i1, ptr %l269, !tbaa !21
  br i1 %t544, label %bb147, label %bb148
bb147:
  %t545 = load ptr, ptr %l27, !tbaa !29
  %t547 = getelementptr { i64, [3 x i64] }, ptr %t545, i32 0, i32 1
  %t548 = getelementptr { i32 }, ptr %t547, i32 0, i32 0
  %t549 = load i32, ptr %t548
  store i32 %t549, ptr %l28, !tbaa !23
  br label %bb149
bb148:
  br label %bb152
bb149:
  %t551 = load ptr, ptr %l0, !tbaa !29
  %t553 = getelementptr %"compiler/effects:Effects", ptr %t551, i32 0, i32 33
  store ptr %t553, ptr %l275, !tbaa !29
  %t554 = load i64, ptr @G_2ecompiler_2feffects_2eGivResult, !tbaa !24
  %t555 = load i32, ptr %l28, !tbaa !23
  %t557 = sext i32 %t555 to i64
  %t558 = load i32, ptr %l25, !tbaa !23
  %t562 = call %"compiler/effects:part" @compiler_2feffects_3apart_2ector(ptr %v0, ptr %v0, i64 %t554, i64 %t557, i32 %t558, ptr null)
  store %"compiler/effects:part" %t562, ptr %l280
  br label %bb150
bb150:
  %t563 = load ptr, ptr %l275, !tbaa !29
  %t564 = load %"compiler/effects:part", ptr %l280
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2ePush_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %v0, ptr %t563, %"compiler/effects:part" %t564)
  br label %bb151
bb151:
  br label %bb159
bb152:
  br i1 true, label %bb153, label %bb154
bb153:
  br label %bb155
bb154:
  br label %bb158
bb155:
  %t565 = load ptr, ptr %l0, !tbaa !29
  %t567 = getelementptr %"compiler/effects:Effects", ptr %t565, i32 0, i32 33
  store ptr %t567, ptr %l282, !tbaa !29
  %t568 = load i64, ptr @G_2ecompiler_2feffects_2eGivBound, !tbaa !24
  %t569 = load i32, ptr %l25, !tbaa !23
  %t572 = call %"compiler/effects:part" @compiler_2feffects_3apart_2ector(ptr %v0, ptr %v0, i64 %t568, i64 0, i32 %t569, ptr null)
  store %"compiler/effects:part" %t572, ptr %l285
  br label %bb156
bb156:
  %t573 = load ptr, ptr %l282, !tbaa !29
  %t574 = load %"compiler/effects:part", ptr %l285
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2ePush_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %v0, ptr %t573, %"compiler/effects:part" %t574)
  br label %bb157
bb157:
  br label %bb159
bb158:
  call void @__olang_check_failed(ptr @olang_loc_8e13f40ea2f1e4d7_76f885d7d8afa3eb)
  unreachable
bb159:
  br label %bb168
bb160:
  br i1 true, label %bb161, label %bb162
bb161:
  br label %bb163
bb162:
  br label %bb167
bb163:
  %t575 = load ptr, ptr %l0, !tbaa !29
  %t577 = getelementptr %"compiler/effects:Effects", ptr %t575, i32 0, i32 33
  store ptr %t577, ptr %l287, !tbaa !29
  %t578 = load i64, ptr @G_2ecompiler_2feffects_2eGivBound, !tbaa !24
  store i64 %t578, ptr %l288, !tbaa !24
  %t579 = load ptr, ptr %l1, !tbaa !29
  %t581 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t579)
  store i32 %t581, ptr %l290
  br label %bb164
bb164:
  %t582 = load i64, ptr %l288, !tbaa !24
  %t583 = load i32, ptr %l290, !tbaa !23
  %t584 = call %"compiler/effects:part" @compiler_2feffects_3apart_2ector(ptr %v0, ptr %v0, i64 %t582, i64 0, i32 %t583, ptr null)
  store %"compiler/effects:part" %t584, ptr %l291
  br label %bb165
bb165:
  %t585 = load ptr, ptr %l287, !tbaa !29
  %t586 = load %"compiler/effects:part", ptr %l291
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2ePush_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %v0, ptr %t585, %"compiler/effects:part" %t586)
  br label %bb166
bb166:
  br label %bb168
bb167:
  call void @__olang_check_failed(ptr @olang_loc_2b1992bc034d4ac0_3aae813f6df6734c)
  unreachable
bb168:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ectorCall(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca i1
  %l16 = alloca ptr
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/typed:Call", ptr %a1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  store ptr %t6, ptr %l6, !tbaa !29
  store i1 false, ptr %l7, !tbaa !21
  %t7 = load ptr, ptr %l6, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l6, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 5}
  %t13 = icmp eq i64 %t11, 0
  store i1 %t13, ptr %l7, !tbaa !21
  br label %bb2
bb2:
  %t14 = load i1, ptr %l7, !tbaa !21
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
  %t23 = getelementptr %"compiler/effects:Effects", ptr %a0, i32 0, i32 1
  %t24 = load i32, ptr %l3, !tbaa !23
  %t26 = sext i32 %t24 to i64
  %t29 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t23, i64 %t26)
  store ptr %t29, ptr %l16
  br label %bb6
bb6:
  %t30 = load ptr, ptr %l16, !tbaa !29
  %t32 = getelementptr %"compiler/typed:Body", ptr %t30, i32 0, i32 1
  %t33 = load { i64, [2 x i64] }, ptr %t32
  %t35 = extractvalue { i64, [2 x i64] } %t33, 0
  %t36 = icmp eq i64 %t35, 1
  store i1 %t36, ptr %rv
  br label %ret
bb7:
  br i1 true, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  store i1 false, ptr %rv
  br label %ret
bb11:
  call void @__olang_check_failed(ptr @olang_loc_bf15bc95d959b66c_7e73e2171d14fc00)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2edtorCalled(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i32
  %l11 = alloca i64
  %l13 = alloca ptr
  %l18 = alloca i32
  %l19 = alloca i64
  %l20 = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/effects:Effects", ptr %t1, i32 0, i32 51
  %t4 = load i32, ptr %l1, !tbaa !23
  %t7 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__H165e1ff795edcbb725e28dde18fd1dc2(ptr %v0, ptr %t3, i32 %t4)
  %t8 = extractvalue { i32, i64 } %t7, 1
  %t9 = extractvalue { i32, i64 } %t7, 0
  store i32 %t9, ptr %l8
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store i64 %t8, ptr %l7
  br label %bb1
bb1:
  %t12 = load i64, ptr %l7, !tbaa !24
  store i64 %t12, ptr %l3, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i64 -1, ptr %l3, !tbaa !24
  br label %bb4
bb4:
  %t13 = load i64, ptr %l3, !tbaa !24
  store i64 %t13, ptr %l2, !tbaa !24
  %t14 = load i64, ptr %l2, !tbaa !24
  %t16 = icmp slt i64 %t14, 0
  br i1 %t16, label %bb5, label %bb6
bb5:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/effects:Effects", ptr %t18, i32 0, i32 51
  store ptr %t20, ptr %l13, !tbaa !29
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/effects:Effects", ptr %t21, i32 0, i32 0
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t26 = getelementptr %"compiler/generic:Program", ptr %t24, i32 0, i32 2
  %t27 = load i32, ptr %l1, !tbaa !23
  %t30 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t26, i32 %t27)
  store i32 %t30, ptr %l18
  br label %bb7
bb6:
  br label %bb12
bb7:
  %t31 = load ptr, ptr %l13, !tbaa !29
  %t32 = load i32, ptr %l18, !tbaa !23
  %t33 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__H165e1ff795edcbb725e28dde18fd1dc2(ptr %v0, ptr %t31, i32 %t32)
  %t34 = extractvalue { i32, i64 } %t33, 1
  %t35 = extractvalue { i32, i64 } %t33, 0
  store i32 %t35, ptr %l20
  %t36 = icmp ne i32 %t35, 0
  br i1 %t36, label %bb9, label %ok.37, !prof !99
ok.37:
  store i64 %t34, ptr %l19
  br label %bb8
bb8:
  %t38 = load i64, ptr %l19, !tbaa !24
  store i64 %t38, ptr %l11, !tbaa !24
  br label %bb11
bb9:
  br label %bb10
bb10:
  store i64 -1, ptr %l11, !tbaa !24
  br label %bb11
bb11:
  %t39 = load i64, ptr %l11, !tbaa !24
  store i64 %t39, ptr %l2, !tbaa !24
  br label %bb12
bb12:
  %t40 = load i64, ptr %l2, !tbaa !24
  %t42 = icmp sge i64 %t40, 0
  br i1 %t42, label %bb13, label %bb14
bb13:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/effects:Effects", ptr %t44, i32 0, i32 23
  %t47 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t46, i64 %t47)
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

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpand(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca %"compiler/effects:given"
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca i64
  %l13 = alloca i1
  %l15 = alloca i1
  %l19 = alloca i1
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l25 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l26 = alloca i32
  %l28 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l29 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l31 = alloca i64
  %l33 = alloca i64
  %l38 = alloca %"compiler/effects:given"
  %l42 = alloca i1
  %l51 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l54 = alloca i64
  %l57 = alloca i1
  %l58 = alloca i64
  %l61 = alloca i64
  %l63 = alloca i1
  %l67 = alloca i64
  %l69 = alloca i1
  %l73 = alloca i64
  %l75 = alloca i1
  %l86 = alloca i1
  %l89 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l91 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l93 = alloca i64
  %l95 = alloca i64
  %l100 = alloca i64
  %l111 = alloca ptr
  %l116 = alloca %"compiler/effects:Facts"
  %s0 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s13 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/effects:Effects", ptr %t1, i32 0, i32 13
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t3, i64 %t4)
  store i1 %t7, ptr %l13
  br label %bb1
bb1:
  %t8 = load i1, ptr %l13, !tbaa !21
  %t9 = xor i1 %t8, true
  br i1 %t9, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb5
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/effects:Effects", ptr %t11, i32 0, i32 6
  %t14 = load i64, ptr %l1, !tbaa !24
  %t17 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_Hb5dd413d586c55d7ccefa7dbc5ad43c5(ptr %v0, ptr %t13, i64 %t14)
  store i1 %t17, ptr %l19
  br label %bb4
bb4:
  %t18 = load i1, ptr %l19, !tbaa !21
  %t19 = xor i1 %t18, true
  store i1 %t19, ptr %l15, !tbaa !21
  br label %bb5
bb5:
  %t21 = load i1, ptr %l15, !tbaa !21
  br i1 %t21, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb7:
  br label %bb8
bb8:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/effects:Effects", ptr %t22, i32 0, i32 6
  %t25 = load i64, ptr %l1, !tbaa !24
  %t28 = call { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H7b34d2d8e55697dbed551519dd59c955(ptr %v0, ptr %v0, ptr %t24, i64 %t25)
  %t29 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t28, 1
  %t30 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t28, 0
  store i32 %t30, ptr %l26
  %t31 = icmp ne i32 %t30, 0
  br i1 %t31, label %bb10, label %ok.32, !prof !99
ok.32:
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t29, ptr %l25
  br label %bb9
bb9:
  %t34 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3agiven_3e(ptr %s0, ptr %l25)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t34, ptr %l28
  br label %bb12
bb10:
  br label %bb11
bb11:
  %t35 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3agiven_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t35, ptr %l29
  br label %bb13
bb12:
  %t36 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l28
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t36, ptr %l21
  br label %bb14
bb13:
  %t37 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l29
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t37, ptr %l21
  br label %bb14
bb14:
  %t38 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t38, ptr %l2
  store ptr %l2, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb15
bb15:
  %t40 = load i64, ptr %l4, !tbaa !24
  store i64 %t40, ptr %l31, !tbaa !24
  %t41 = load ptr, ptr %l3, !tbaa !29
  %t43 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3agiven_3e_2eLen_3ccompiler_2feffects_3agiven_3e(ptr %s0, ptr %t41)
  store i64 %t43, ptr %l33
  br label %bb16
bb16:
  %t44 = load i64, ptr %l31, !tbaa !24
  %t45 = load i64, ptr %l33, !tbaa !24
  %t46 = icmp slt i64 %t44, %t45
  %t48 = xor i1 %t46, true
  br i1 %t48, label %bb17, label %bb18
bb17:
  br label %bb74
bb18:
  br label %bb19
bb19:
  %t50 = load ptr, ptr %l3, !tbaa !29
  %t51 = load i64, ptr %l4, !tbaa !24
  %t54 = call %"compiler/effects:given" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3agiven_3e_2eAt_3ccompiler_2feffects_3agiven_3e(ptr %s0, ptr %t50, i64 %t51)
  store %"compiler/effects:given" %t54, ptr %l38
  br label %bb20
bb20:
  %t55 = load %"compiler/effects:given", ptr %l38
  store %"compiler/effects:given" %t55, ptr %l5
  %t56 = getelementptr %"compiler/effects:given", ptr %l5, i32 0, i32 2
  %t57 = load i64, ptr %t56, !tbaa !24
  %t58 = load i64, ptr @G_2ecompiler_2feffects_2eGivNamed, !tbaa !24
  %t61 = icmp ne i64 %t57, %t58
  br i1 %t61, label %bb21, label %bb22
bb21:
  %t63 = getelementptr %"compiler/effects:given", ptr %l5, i32 0, i32 2
  %t64 = load i64, ptr %t63, !tbaa !24
  %t65 = load i64, ptr @G_2ecompiler_2feffects_2eGivResult, !tbaa !24
  %t68 = icmp ne i64 %t64, %t65
  store i1 %t68, ptr %l42, !tbaa !21
  br label %bb23
bb22:
  store i1 false, ptr %l42, !tbaa !21
  br label %bb23
bb23:
  %t70 = load i1, ptr %l42, !tbaa !21
  br i1 %t70, label %bb24, label %bb25
bb24:
  br label %bb73
bb25:
  br label %bb26
bb26:
  %t71 = getelementptr %"compiler/effects:given", ptr %l5, i32 0, i32 0
  %t72 = load i64, ptr %t71, !tbaa !24
  %t74 = icmp sge i64 %t72, 0
  br i1 %t74, label %bb27, label %bb28
bb27:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/effects:Effects", ptr %t76, i32 0, i32 4
  %t79 = load i64, ptr %l1, !tbaa !24
  %t82 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H7b6d4eff6fc9c3821aae8b284e12e095(ptr %v0, ptr %v0, ptr %t78, i64 %t79)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t82, ptr %l51
  br label %bb29
bb28:
  br label %bb47
bb29:
  %t83 = getelementptr %"compiler/effects:given", ptr %l5, i32 0, i32 0
  %t84 = load i64, ptr %t83, !tbaa !24
  %t87 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %l51, i64 %t84)
  store i64 %t87, ptr %l54
  br label %bb30
bb30:
  %t88 = load i64, ptr %l54, !tbaa !24
  store i64 %t88, ptr %l6, !tbaa !24
  %t89 = load i64, ptr %l6, !tbaa !24
  %t91 = icmp slt i64 %t89, 0
  br i1 %t91, label %bb31, label %bb32
bb31:
  store i1 true, ptr %l57, !tbaa !21
  br label %bb34
bb32:
  %t93 = load i64, ptr %l6, !tbaa !24
  store i64 %t93, ptr %l58, !tbaa !24
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/effects:Effects", ptr %t94, i32 0, i32 1
  %t98 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t96)
  store i64 %t98, ptr %l61
  br label %bb33
bb33:
  %t99 = load i64, ptr %l58, !tbaa !24
  %t100 = load i64, ptr %l61, !tbaa !24
  %t101 = icmp sge i64 %t99, %t100
  store i1 %t101, ptr %l57, !tbaa !21
  br label %bb34
bb34:
  %t103 = load i1, ptr %l57, !tbaa !21
  br i1 %t103, label %bb35, label %bb36
bb35:
  store i1 true, ptr %l63, !tbaa !21
  br label %bb43
bb36:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/effects:Effects", ptr %t104, i32 0, i32 14
  %t107 = load i64, ptr %l6, !tbaa !24
  %t110 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t106, i64 %t107)
  store i64 %t110, ptr %l67
  br label %bb37
bb37:
  %t111 = load i64, ptr %l67, !tbaa !24
  %t112 = icmp eq i64 %t111, 2
  br i1 %t112, label %bb38, label %bb39
bb38:
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t116 = getelementptr %"compiler/effects:Effects", ptr %t114, i32 0, i32 9
  %t117 = load i64, ptr %l6, !tbaa !24
  %t120 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t116, i64 %t117)
  store i64 %t120, ptr %l73
  br label %bb40
bb39:
  store i1 false, ptr %l69, !tbaa !21
  br label %bb42
bb40:
  %t121 = getelementptr %"compiler/effects:given", ptr %l5, i32 0, i32 1
  %t122 = load i64, ptr %t121, !tbaa !24
  %t123 = load i64, ptr %l73, !tbaa !24
  %t125 = call i1 @compiler_2feffects_2ehasBit(i64 %t123, i64 %t122)
  store i1 %t125, ptr %l75
  br label %bb41
bb41:
  %t126 = load i1, ptr %l75, !tbaa !21
  %t127 = xor i1 %t126, true
  store i1 %t127, ptr %l69, !tbaa !21
  br label %bb42
bb42:
  %t129 = load i1, ptr %l69, !tbaa !21
  store i1 %t129, ptr %l63, !tbaa !21
  br label %bb43
bb43:
  %t130 = load i1, ptr %l63, !tbaa !21
  br i1 %t130, label %bb44, label %bb45
bb44:
  br label %bb73
bb45:
  br label %bb46
bb46:
  br label %bb47
bb47:
  %t131 = getelementptr %"compiler/effects:given", ptr %l5, i32 0, i32 2
  %t132 = load i64, ptr %t131, !tbaa !24
  %t133 = load i64, ptr @G_2ecompiler_2feffects_2eGivNamed, !tbaa !24
  %t136 = icmp eq i64 %t132, %t133
  br i1 %t136, label %bb48, label %bb49
bb48:
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t139 = load i64, ptr %l1, !tbaa !24
  %t140 = getelementptr %"compiler/effects:given", ptr %l5, i32 0, i32 3
  %t141 = load i64, ptr %t140, !tbaa !24
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ecallEdge(ptr %v0, ptr %t138, i64 %t139, i64 %t141)
  br label %bb50
bb49:
  br label %bb51
bb50:
  br label %bb73
bb51:
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t147 = getelementptr %"compiler/effects:Effects", ptr %t145, i32 0, i32 7
  %t148 = getelementptr %"compiler/effects:given", ptr %l5, i32 0, i32 3
  %t149 = load i64, ptr %t148, !tbaa !24
  %t152 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI_Hbd09c84b003bb96b764c8a61b7f32193(ptr %v0, ptr %t147, i64 %t149)
  store i1 %t152, ptr %l86
  br label %bb52
bb52:
  %t153 = load i1, ptr %l86, !tbaa !21
  br i1 %t153, label %bb53, label %bb54
bb53:
  store %olang.scope zeroinitializer, ptr %s9
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t155 = getelementptr %"compiler/effects:given", ptr %l5, i32 0, i32 3
  %t156 = load i64, ptr %t155, !tbaa !24
  %t159 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eretsOf(ptr %v0, ptr %s9, ptr %t154, i64 %t156)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t159, ptr %l89
  br label %bb55
bb54:
  %t160 = getelementptr %"compiler/effects:given", ptr %l5, i32 0, i32 0
  %t161 = load i64, ptr %t160, !tbaa !24
  %t163 = icmp slt i64 %t161, 0
  br i1 %t163, label %bb66, label %bb67
bb55:
  %t166 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s9, ptr %l89)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t166, ptr %l91
  br label %bb56
bb56:
  %t167 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l91
  %t168 = call ptr @__olang_scope_alloc_a(ptr %s9, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t167, ptr %t168
  store ptr %t168, ptr %l7, !tbaa !29
  store i64 0, ptr %l8, !tbaa !24
  br label %bb57
bb57:
  %t170 = load i64, ptr %l8, !tbaa !24
  store i64 %t170, ptr %l93, !tbaa !24
  %t171 = load ptr, ptr %l7, !tbaa !29
  %t173 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s9, ptr %t171)
  store i64 %t173, ptr %l95
  br label %bb58
bb58:
  %t174 = load i64, ptr %l93, !tbaa !24
  %t175 = load i64, ptr %l95, !tbaa !24
  %t176 = icmp slt i64 %t174, %t175
  %t178 = xor i1 %t176, true
  br i1 %t178, label %bb59, label %bb60
bb59:
  br label %bb65
bb60:
  br label %bb61
bb61:
  %t180 = load ptr, ptr %l7, !tbaa !29
  %t181 = load i64, ptr %l8, !tbaa !24
  %t184 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s9, ptr %t180, i64 %t181)
  store i64 %t184, ptr %l100
  br label %bb62
bb62:
  %t185 = load i64, ptr %l100, !tbaa !24
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t187 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ecallEdge(ptr %v0, ptr %t186, i64 %t187, i64 %t185)
  br label %bb63
bb63:
  br label %bb64
bb64:
  %t192 = load i64, ptr %l8, !tbaa !24
  %t194 = add i64 %t192, 1
  store i64 %t194, ptr %l8, !tbaa !24
  br label %bb57
bb65:
  call void @__olang_scope_close(ptr %s9)
  br label %bb72
bb66:
  store %olang.scope zeroinitializer, ptr %s13
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t198 = getelementptr %"compiler/effects:Effects", ptr %t196, i32 0, i32 3
  %t199 = load i64, ptr %l1, !tbaa !24
  %t202 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3aFacts_3e_2eRefMut_3ccompiler_2feffects_3aFacts_3e(ptr %v0, ptr %v0, ptr %t198, i64 %t199)
  store ptr %t202, ptr %l111
  br label %bb68
bb67:
  br label %bb71
bb68:
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t205 = getelementptr %"compiler/effects:Effects", ptr %t203, i32 0, i32 0
  %t206 = load ptr, ptr %t205, !tbaa !29
  %t208 = getelementptr %"compiler/generic:Program", ptr %t206, i32 0, i32 2
  %t209 = getelementptr %"compiler/effects:given", ptr %l5, i32 0, i32 4
  %t210 = load i32, ptr %t209, !tbaa !23
  %t213 = call %"compiler/effects:Facts" @compiler_2feffects_2eFacts_2eBound(ptr %v0, ptr %t208, i32 %t210)
  store %"compiler/effects:Facts" %t213, ptr %l116
  br label %bb69
bb69:
  %t214 = load ptr, ptr %l111, !tbaa !29
  call void @compiler_2feffects_2eMerge(ptr %v0, ptr %s13, ptr %t214, ptr %l116)
  br label %bb70
bb70:
  call void @__olang_scope_close(ptr %s13)
  br label %bb71
bb71:
  br label %bb72
bb72:
  br label %bb73
bb73:
  %t216 = load i64, ptr %l4, !tbaa !24
  %t218 = add i64 %t216, 1
  store i64 %t218, ptr %l4, !tbaa !24
  br label %bb15
bb74:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eextern(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l9 = alloca ptr
  %l16 = alloca { i64, ptr }
  %l22 = alloca i1
  %l24 = alloca i1
  %l28 = alloca i1
  %l33 = alloca i1
  %l34 = alloca i1
  %l36 = alloca i1
  %l37 = alloca i1
  %l39 = alloca i1
  %l42 = alloca i1
  %l43 = alloca i1
  %l45 = alloca i1
  %l47 = alloca i1
  %l49 = alloca i1
  %l51 = alloca i1
  %l53 = alloca i1
  %l58 = alloca i64
  %l66 = alloca i1
  %l73 = alloca ptr
  %l76 = alloca i1
  %l79 = alloca i1
  %l81 = alloca i1
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/effects:Effects", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t8 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t4, i64 %a1)
  store ptr %t8, ptr %l9
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l9, !tbaa !29
  store ptr %t9, ptr %l2, !tbaa !29
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/effects:Effects", ptr %t10, i32 0, i32 0
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = getelementptr %"compiler/generic:Program", ptr %t13, i32 0, i32 0
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t18 = getelementptr %"compiler/load:Loader", ptr %t16, i32 0, i32 3
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t20 = load ptr, ptr %l2, !tbaa !29
  %t22 = getelementptr %"compiler/ast:Func", ptr %t20, i32 0, i32 2
  %t23 = load i32, ptr %t22, !tbaa !23
  %t26 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t19, i32 %t23)
  store { i64, ptr } %t26, ptr %l16
  br label %bb2
bb2:
  %t27 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t27, ptr %l3, !tbaa !27
  %t28 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t29 = load ptr, ptr %l2, !tbaa !29
  %t31 = getelementptr %"compiler/ast:Func", ptr %t29, i32 0, i32 3
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t34 = getelementptr %"compiler/ast:Sig", ptr %t32, i32 0, i32 0
  %t35 = load { i64, ptr }, ptr %t34, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t35, 0
  %t40 = call i1 @compiler_2ftyped_2eMathExtern(ptr %v0, { i64, ptr } %t28, i64 %t37)
  store i1 %t40, ptr %l22
  br label %bb3
bb3:
  %t41 = load i1, ptr %l22, !tbaa !21
  br i1 %t41, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb5:
  br label %bb6
bb6:
  %t42 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t44 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t42, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d47, i32 0, i32 1) })
  store i1 %t44, ptr %l24
  br label %bb7
bb7:
  %t45 = load i1, ptr %l24, !tbaa !21
  %t46 = xor i1 %t45, true
  br i1 %t46, label %bb8, label %bb9
bb8:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/effects:Effects", ptr %t48, i32 0, i32 22
  %t51 = getelementptr %"compiler/effects:Facts", ptr %t50, i32 0, i32 4
  store i1 true, ptr %t51, !tbaa !21
  br label %bb10
bb9:
  br label %bb10
bb10:
  %t52 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t54 = call i1 @compiler_2feffects_2equickC(ptr %v0, { i64, ptr } %t52)
  store i1 %t54, ptr %l28
  br label %bb11
bb11:
  %t55 = load i1, ptr %l28, !tbaa !21
  %t56 = xor i1 %t55, true
  br i1 %t56, label %bb12, label %bb13
bb12:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/effects:Effects", ptr %t58, i32 0, i32 22
  %t61 = getelementptr %"compiler/effects:Facts", ptr %t60, i32 0, i32 1
  store i1 true, ptr %t61, !tbaa !21
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/effects:Effects", ptr %t62, i32 0, i32 22
  %t65 = getelementptr %"compiler/effects:Facts", ptr %t64, i32 0, i32 5
  store i1 true, ptr %t65, !tbaa !21
  br label %bb14
bb13:
  br label %bb14
bb14:
  %t66 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t68 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t66, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d48, i32 0, i32 1) })
  store i1 %t68, ptr %l33
  br label %bb15
bb15:
  %t69 = load i1, ptr %l33, !tbaa !21
  br i1 %t69, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l34, !tbaa !21
  br label %bb19
bb17:
  %t70 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t72 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t70, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d49, i32 0, i32 1) })
  store i1 %t72, ptr %l36
  br label %bb18
bb18:
  %t73 = load i1, ptr %l36, !tbaa !21
  store i1 %t73, ptr %l34, !tbaa !21
  br label %bb19
bb19:
  %t74 = load i1, ptr %l34, !tbaa !21
  br i1 %t74, label %bb20, label %bb21
bb20:
  store i1 true, ptr %l37, !tbaa !21
  br label %bb23
bb21:
  %t75 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t77 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t75, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d50, i32 0, i32 1) })
  store i1 %t77, ptr %l39
  br label %bb22
bb22:
  %t78 = load i1, ptr %l39, !tbaa !21
  store i1 %t78, ptr %l37, !tbaa !21
  br label %bb23
bb23:
  %t79 = load i1, ptr %l37, !tbaa !21
  br i1 %t79, label %bb24, label %bb25
bb24:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/effects:Effects", ptr %t80, i32 0, i32 22
  %t83 = getelementptr %"compiler/effects:Facts", ptr %t82, i32 0, i32 12
  store i1 true, ptr %t83, !tbaa !21
  br label %bb26
bb25:
  br label %bb26
bb26:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ecMayCallBack(ptr %v0, ptr %t84)
  store i1 %t86, ptr %l42
  br label %bb27
bb27:
  %t87 = load i1, ptr %l42, !tbaa !21
  br i1 %t87, label %bb28, label %bb29
bb28:
  %t88 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t90 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t88, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d51, i32 0, i32 1) })
  store i1 %t90, ptr %l45
  br label %bb30
bb29:
  store i1 false, ptr %l43, !tbaa !21
  br label %bb31
bb30:
  %t91 = load i1, ptr %l45, !tbaa !21
  %t92 = xor i1 %t91, true
  store i1 %t92, ptr %l43, !tbaa !21
  br label %bb31
bb31:
  %t94 = load i1, ptr %l43, !tbaa !21
  br i1 %t94, label %bb32, label %bb33
bb32:
  %t95 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t97 = call i1 @compiler_2feffects_2equickC(ptr %v0, { i64, ptr } %t95)
  store i1 %t97, ptr %l49
  br label %bb34
bb33:
  store i1 false, ptr %l47, !tbaa !21
  br label %bb35
bb34:
  %t98 = load i1, ptr %l49, !tbaa !21
  %t99 = xor i1 %t98, true
  store i1 %t99, ptr %l47, !tbaa !21
  br label %bb35
bb35:
  %t101 = load i1, ptr %l47, !tbaa !21
  br i1 %t101, label %bb36, label %bb37
bb36:
  %t102 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t104 = call i1 @compiler_2ftyped_2eNoCallbackExtern(ptr %v0, { i64, ptr } %t102)
  store i1 %t104, ptr %l53
  br label %bb38
bb37:
  store i1 false, ptr %l51, !tbaa !21
  br label %bb39
bb38:
  %t105 = load i1, ptr %l53, !tbaa !21
  %t106 = xor i1 %t105, true
  store i1 %t106, ptr %l51, !tbaa !21
  br label %bb39
bb39:
  %t108 = load i1, ptr %l51, !tbaa !21
  br i1 %t108, label %bb40, label %bb41
bb40:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = getelementptr %"compiler/effects:Effects", ptr %t109, i32 0, i32 22
  %t112 = getelementptr %"compiler/effects:Facts", ptr %t111, i32 0, i32 9
  store i1 true, ptr %t112, !tbaa !21
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t115 = getelementptr %"compiler/effects:Effects", ptr %t113, i32 0, i32 22
  %t116 = getelementptr %"compiler/effects:Facts", ptr %t115, i32 0, i32 10
  store i1 true, ptr %t116, !tbaa !21
  br label %bb42
bb41:
  br label %bb42
bb42:
  %t117 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t119 = call i64 @compiler_2feffects_2ecapOf(ptr %v0, { i64, ptr } %t117)
  store i64 %t119, ptr %l58
  br label %bb43
bb43:
  %t120 = load i64, ptr %l58, !tbaa !24
  store i64 %t120, ptr %l4, !tbaa !24
  %t121 = load i64, ptr %l4, !tbaa !24
  %t123 = icmp ne i64 %t121, 0
  br i1 %t123, label %bb44, label %bb45
bb44:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t126 = load i64, ptr %l4, !tbaa !24
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ecap(ptr %v0, ptr %t125, i64 %t126)
  br label %bb46
bb45:
  br label %bb47
bb46:
  br label %bb47
bb47:
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t131 = getelementptr %"compiler/effects:Effects", ptr %t129, i32 0, i32 31
  %t132 = load i64, ptr %t131, !tbaa !24
  %t134 = icmp sge i64 %t132, 0
  br i1 %t134, label %bb48, label %bb49
bb48:
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t138 = getelementptr %"compiler/effects:Effects", ptr %t136, i32 0, i32 0
  %t139 = load ptr, ptr %t138, !tbaa !29
  %t141 = getelementptr %"compiler/generic:Program", ptr %t139, i32 0, i32 0
  %t142 = load ptr, ptr %t141, !tbaa !29
  %t144 = getelementptr %"compiler/load:Loader", ptr %t142, i32 0, i32 10
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t147 = getelementptr %"compiler/effects:Effects", ptr %t145, i32 0, i32 31
  %t148 = load i64, ptr %t147, !tbaa !24
  %t151 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t144, i64 %t148)
  store ptr %t151, ptr %l73
  br label %bb50
bb49:
  store i1 false, ptr %l66, !tbaa !21
  br label %bb52
bb50:
  %t152 = load ptr, ptr %l73, !tbaa !29
  %t154 = getelementptr %"compiler/load:Module", ptr %t152, i32 0, i32 2
  %t155 = load { i64, ptr }, ptr %t154, !tbaa !27
  %t157 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t155, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d52, i32 0, i32 1) })
  store i1 %t157, ptr %l76
  br label %bb51
bb51:
  %t158 = load i1, ptr %l76, !tbaa !21
  %t159 = xor i1 %t158, true
  store i1 %t159, ptr %l66, !tbaa !21
  br label %bb52
bb52:
  %t161 = load i1, ptr %l66, !tbaa !21
  br i1 %t161, label %bb53, label %bb54
bb53:
  %t164 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t166 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t164, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d53, i32 0, i32 1) })
  store i1 %t166, ptr %l81
  br label %bb55
bb54:
  store i1 false, ptr %l79, !tbaa !21
  br label %bb56
bb55:
  %t167 = load i1, ptr %l81, !tbaa !21
  %t168 = xor i1 %t167, true
  store i1 %t168, ptr %l79, !tbaa !21
  br label %bb56
bb56:
  %t170 = load i1, ptr %l79, !tbaa !21
  br i1 %t170, label %bb57, label %bb58
bb57:
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t172 = load i64, ptr @G_2ecompiler_2feffects_2eCapC, !tbaa !24
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ecap(ptr %v0, ptr %t171, i64 %t172)
  br label %bb59
bb58:
  br label %bb60
bb59:
  br label %bb60
bb60:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ehasExport(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l4 = alloca { i64, [2 x i64] }
  %l6 = alloca i64
  %l9 = alloca i64
  %l11 = alloca i64
  %l16 = alloca ptr
  %l21 = alloca i1
  %l24 = alloca ptr
  %l28 = alloca i64
  %l29 = alloca ptr
  %s2 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/effects:Effects", ptr %t1, i32 0, i32 1
  store ptr %t3, ptr %l1, !tbaa !29
  store i64 0, ptr %l2, !tbaa !24
  br label %bb1
bb1:
  store %olang.scope zeroinitializer, ptr %s2
  %t5 = load i64, ptr %l2, !tbaa !24
  store i64 %t5, ptr %l9, !tbaa !24
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l11
  br label %bb2
bb2:
  %t9 = load i64, ptr %l9, !tbaa !24
  %t10 = load i64, ptr %l11, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s2)
  br label %bb16
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t16 = load i64, ptr %l2, !tbaa !24
  %t19 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t15, i64 %t16)
  store ptr %t19, ptr %l16
  br label %bb6
bb6:
  %t20 = load ptr, ptr %l16, !tbaa !29
  %t23 = getelementptr %"compiler/typed:Body", ptr %t20, i32 0, i32 1
  %t24 = load { i64, [2 x i64] }, ptr %t23
  store { i64, [2 x i64] } %t24, ptr %l4
  %t26 = load { i64, [2 x i64] }, ptr %l4
  %t28 = extractvalue { i64, [2 x i64] } %t26, 0
  %t29 = icmp eq i64 %t28, 0
  br i1 %t29, label %bb7, label %bb8
bb7:
  %t31 = getelementptr { i64, [2 x i64] }, ptr %l4, i32 0, i32 1
  %t32 = getelementptr { i64 }, ptr %t31, i32 0, i32 0
  %t33 = load i64, ptr %t32
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/effects:Effects", ptr %t35, i32 0, i32 0
  %t38 = load ptr, ptr %t37, !tbaa !29
  store ptr %t38, ptr %l24, !tbaa !29
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/effects:Effects", ptr %t39, i32 0, i32 0
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t46 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t42, i64 %t33)
  store i64 %t46, ptr %l28
  br label %bb9
bb8:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb11
bb9:
  %t47 = load ptr, ptr %l24, !tbaa !29
  %t48 = load i64, ptr %l28, !tbaa !24
  %t49 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s2, ptr %t47, i64 %t48)
  store ptr %t49, ptr %l29
  br label %bb10
bb10:
  %t50 = load ptr, ptr %l29, !tbaa !29
  %t52 = getelementptr %"compiler/ast:Func", ptr %t50, i32 0, i32 7
  %t53 = load i1, ptr %t52, !tbaa !21
  store i1 %t53, ptr %l21, !tbaa !21
  br label %bb11
bb11:
  %t55 = load i1, ptr %l21, !tbaa !21
  br i1 %t55, label %bb12, label %bb13
bb12:
  %t56 = getelementptr { i64, [2 x i64] }, ptr %l4, i32 0, i32 1
  %t57 = getelementptr { i64 }, ptr %t56, i32 0, i32 0
  %t58 = load i64, ptr %t57
  store i64 %t58, ptr %l6, !tbaa !24
  call void @__olang_scope_close(ptr %s2)
  store i1 true, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s2)
  br label %bb15
bb15:
  %t61 = load i64, ptr %l2, !tbaa !24
  %t63 = add i64 %t61, 1
  store i64 %t63, ptr %l2, !tbaa !24
  br label %bb1
bb16:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eisFn(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l6 = alloca i32
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/effects:Effects", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t6, i32 %a1)
  store i32 %t10, ptr %l6
  br label %bb1
bb1:
  %t11 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t13 = trunc i64 21 to i32
  %t14 = icmp eq i32 %t11, %t13
  store i1 %t14, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ejudgeFacts(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %lp11 = alloca ptr
  %l17 = alloca i64
  %l20 = alloca i64
  %l38 = alloca i64
  %l46 = alloca { i64, ptr }
  %l48 = alloca i1
  %l49 = alloca ptr
  %l50 = alloca i64
  %l54 = alloca { i64, ptr }
  %l55 = alloca i64
  %l56 = alloca { i64, ptr }
  %l58 = alloca { i64, ptr }
  %l60 = alloca ptr
  %l61 = alloca i64
  %l63 = alloca { i64, ptr }
  %l64 = alloca i64
  %l65 = alloca { i64, ptr }
  %l67 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l4, !tbaa !24
  %t1 = load [8 x { i64, ptr }], ptr @G_2ecompiler_2ftypes_2ePromiseNames
  store i64 8, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t4 = load i64, ptr %l5, !tbaa !24
  %t5 = load i64, ptr %l4, !tbaa !24
  %t8 = icmp sgt i64 %t4, %t5
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load i64, ptr %l6, !tbaa !24
  %t12 = icmp sgt i64 %t10, 0
  br i1 %t12, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb6
bb3:
  %t14 = load i64, ptr %l5, !tbaa !24
  %t15 = load i64, ptr %l4, !tbaa !24
  %t18 = sub i64 %t14, %t15
  %t19 = load i64, ptr %l6, !tbaa !24
  %t22 = add i64 %t18, %t19
  %t24 = sub i64 %t22, 1
  %t25 = load i64, ptr %l6, !tbaa !24
  %t28 = sdiv i64 %t24, %t25
  store i64 %t28, ptr %l20, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb5
bb5:
  %t30 = load i64, ptr %l20, !tbaa !24
  store i64 %t30, ptr %l17, !tbaa !24
  br label %bb6
bb6:
  %t31 = load i64, ptr %l17, !tbaa !24
  store i64 %t31, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb7
bb7:
  store %olang.scope zeroinitializer, ptr %s2
  %t32 = load i64, ptr %l8, !tbaa !24
  %t33 = load i64, ptr %l7, !tbaa !24
  %t36 = icmp slt i64 %t32, %t33
  %t38 = xor i1 %t36, true
  br i1 %t38, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s2)
  br label %bb32
bb9:
  br label %bb10
bb10:
  %t40 = load i64, ptr %l4, !tbaa !24
  %t41 = load i64, ptr %l8, !tbaa !24
  %t42 = load i64, ptr %l6, !tbaa !24
  %t45 = mul i64 %t41, %t42
  %t48 = add i64 %t40, %t45
  store i64 %t48, ptr %l9, !tbaa !24
  %t50 = load i64, ptr %l9, !tbaa !24
  store i64 %t50, ptr %l38, !tbaa !24
  %t51 = load i64, ptr %l38, !tbaa !24
  %t52 = load i64, ptr %l38, !tbaa !24
  %t53 = shl i64 1, %t52
  store i64 %t53, ptr %l10, !tbaa !24
  %t56 = load i64, ptr %l10, !tbaa !24
  %t59 = and i64 %a2, %t56
  %t61 = icmp eq i64 %t59, 0
  br i1 %t61, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s2)
  br label %bb31
bb12:
  br label %bb13
bb13:
  %t64 = load i64, ptr %l10, !tbaa !24
  %t67 = call { i64, ptr } @compiler_2feffects_2eBreaks(ptr %v1, ptr %v2, ptr %a1, i64 %t64)
  store { i64, ptr } %t67, ptr %l46
  br label %bb14
bb14:
  %t68 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t68, ptr %lp11
  %t69 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t70 = load ptr, ptr %lp11
  store { i64, ptr } %t69, ptr %t70, !tbaa !27
  %t71 = load ptr, ptr %lp11
  %t72 = load { i64, ptr }, ptr %t71, !tbaa !27
  %t74 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s2, { i64, ptr } %t72, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d54, i32 0, i32 1) })
  store i1 %t74, ptr %l48
  br label %bb15
bb15:
  %t75 = load i1, ptr %l48, !tbaa !21
  br i1 %t75, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s2)
  br label %bb31
bb17:
  br label %bb18
bb18:
  %t76 = load ptr, ptr %l3, !tbaa !29
  store ptr %t76, ptr %l49, !tbaa !29
  %t77 = ptrtoint ptr %v2 to i64
  store i64 %t77, ptr %l50, !tbaa !24
  %t78 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aVerdict_2e0
  br i1 %t78, label %bb19, label %bb20
bb19:
  %t80 = call ptr @__olang_region_make(ptr %v2)
  %t81 = ptrtoint ptr %t80 to i64
  store i64 %t81, ptr %l50, !tbaa !24
  br label %bb20
bb20:
  %t82 = load i64, ptr %l9, !tbaa !24
  %t84 = getelementptr [8 x { i64, ptr }], ptr @G_2ecompiler_2ftypes_2ePromiseNames, i64 0, i64 %t82
  %t85 = load { i64, ptr }, ptr %t84, !tbaa !37
  store { i64, ptr } %t85, ptr %l54, !tbaa !27
  %t87 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t88 = extractvalue { i64, ptr } %t87, 0
  store i64 %t88, ptr %l55, !tbaa !24
  %t89 = load i64, ptr %l55, !tbaa !24
  %t90 = mul i64 %t89, 1
  %t91 = load i64, ptr %l50
  %t92 = inttoptr i64 %t91 to ptr
  %t93 = call ptr @__olang_scope_alloc(ptr %t92, i64 %t90)
  %t94 = insertvalue { i64, ptr } undef, i64 %t89, 0
  %t95 = insertvalue { i64, ptr } %t94, ptr %t93, 1
  store { i64, ptr } %t95, ptr %l56, !tbaa !27
  %t96 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !27
  %t98 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !27
  %t100 = load i64, ptr %l55, !tbaa !24
  %t101 = mul i64 %t100, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t97, ptr %t99, i64 %t101, i1 false)
  %t102 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aVerdict_2e0
  br i1 %t102, label %bb21, label %bb22
bb21:
  %t104 = load i64, ptr %l50
  %t105 = inttoptr i64 %t104 to ptr
  %t106 = load { i64, ptr }, ptr %l56
  %t107 = extractvalue { i64, ptr } %t106, 1
  %t108 = call ptr @__olang_region_or(ptr %t107, ptr null)
  %t109 = icmp ne ptr %t108, null
  %t110 = select i1 %t109, ptr %t108, ptr null
  %t111 = icmp eq ptr %t110, %t105
  call void @__olang_region_settle(ptr %t105, i1 %t111)
  br label %bb22
bb22:
  %t112 = load ptr, ptr %l49, !tbaa !29
  %t113 = getelementptr %"compiler/effects:Verdict", ptr %t112, i32 0, i32 0
  %t114 = load { i64, ptr }, ptr %t113, !tbaa !27
  store { i64, ptr } %t114, ptr %l58, !tbaa !27
  %t115 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t116 = load ptr, ptr %l49, !tbaa !29
  %t117 = getelementptr %"compiler/effects:Verdict", ptr %t116, i32 0, i32 0
  store { i64, ptr } %t115, ptr %t117, !tbaa !27
  %t118 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aVerdict_2e0
  br i1 %t118, label %bb23, label %bb24
bb23:
  %t120 = load { i64, ptr }, ptr %l58
  %t121 = extractvalue { i64, ptr } %t120, 1
  call void @__olang_region_release(ptr %t121)
  store { i64, ptr } zeroinitializer, ptr %l58
  br label %bb24
bb24:
  %t122 = load ptr, ptr %l3, !tbaa !29
  store ptr %t122, ptr %l60, !tbaa !29
  %t123 = ptrtoint ptr %v2 to i64
  store i64 %t123, ptr %l61, !tbaa !24
  %t124 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aVerdict_2e1
  br i1 %t124, label %bb25, label %bb26
bb25:
  %t126 = call ptr @__olang_region_make(ptr %v2)
  %t127 = ptrtoint ptr %t126 to i64
  store i64 %t127, ptr %l61, !tbaa !24
  br label %bb26
bb26:
  %t128 = load ptr, ptr %lp11
  %t129 = load { i64, ptr }, ptr %t128, !tbaa !27
  store { i64, ptr } %t129, ptr %l63, !tbaa !27
  %t130 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t131 = extractvalue { i64, ptr } %t130, 0
  store i64 %t131, ptr %l64, !tbaa !24
  %t132 = load i64, ptr %l64, !tbaa !24
  %t133 = mul i64 %t132, 1
  %t134 = load i64, ptr %l61
  %t135 = inttoptr i64 %t134 to ptr
  %t136 = call ptr @__olang_scope_alloc(ptr %t135, i64 %t133)
  %t137 = insertvalue { i64, ptr } undef, i64 %t132, 0
  %t138 = insertvalue { i64, ptr } %t137, ptr %t136, 1
  store { i64, ptr } %t138, ptr %l65, !tbaa !27
  %t139 = getelementptr { i64, ptr }, ptr %l65, i32 0, i32 1
  %t140 = load ptr, ptr %t139, !tbaa !27
  %t141 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t142 = load ptr, ptr %t141, !tbaa !27
  %t143 = load i64, ptr %l64, !tbaa !24
  %t144 = mul i64 %t143, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t140, ptr %t142, i64 %t144, i1 false)
  %t145 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aVerdict_2e1
  br i1 %t145, label %bb27, label %bb28
bb27:
  %t147 = load i64, ptr %l61
  %t148 = inttoptr i64 %t147 to ptr
  %t149 = load { i64, ptr }, ptr %l65
  %t150 = extractvalue { i64, ptr } %t149, 1
  %t151 = call ptr @__olang_region_or(ptr %t150, ptr null)
  %t152 = icmp ne ptr %t151, null
  %t153 = select i1 %t152, ptr %t151, ptr null
  %t154 = icmp eq ptr %t153, %t148
  call void @__olang_region_settle(ptr %t148, i1 %t154)
  br label %bb28
bb28:
  %t155 = load ptr, ptr %l60, !tbaa !29
  %t156 = getelementptr %"compiler/effects:Verdict", ptr %t155, i32 0, i32 1
  %t157 = load { i64, ptr }, ptr %t156, !tbaa !27
  store { i64, ptr } %t157, ptr %l67, !tbaa !27
  %t158 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t159 = load ptr, ptr %l60, !tbaa !29
  %t160 = getelementptr %"compiler/effects:Verdict", ptr %t159, i32 0, i32 1
  store { i64, ptr } %t158, ptr %t160, !tbaa !27
  %t161 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aVerdict_2e1
  br i1 %t161, label %bb29, label %bb30
bb29:
  %t163 = load { i64, ptr }, ptr %l67
  %t164 = extractvalue { i64, ptr } %t163, 1
  call void @__olang_region_release(ptr %t164)
  store { i64, ptr } zeroinitializer, ptr %l67
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s2)
  br label %ret
bb31:
  %t165 = load i64, ptr %l8, !tbaa !24
  %t167 = add i64 %t165, 1
  store i64 %t167, ptr %l8, !tbaa !24
  br label %bb7
bb32:
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2elambdaFacts(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca %"compiler/effects:Facts"
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca ptr
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca ptr
  %l18 = alloca i64
  %lp19 = alloca ptr
  %l22 = alloca %"compiler/effects:Facts"
  %l26 = alloca %"compiler/effects:Facts"
  %l33 = alloca ptr
  %l36 = alloca i64
  %l40 = alloca i64
  %l43 = alloca i64
  %l63 = alloca i1
  %l64 = alloca ptr
  %l67 = alloca ptr
  %l71 = alloca i32
  %l72 = alloca %"compiler/effects:Facts"
  %l76 = alloca ptr
  %l77 = alloca i1
  %l80 = alloca i1
  %l82 = alloca ptr
  %l83 = alloca i1
  %l96 = alloca { i64, ptr }
  %l99 = alloca i64
  %l105 = alloca i64
  %l106 = alloca i1
  %l117 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l119 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l121 = alloca i64
  %l123 = alloca i64
  %l128 = alloca %"compiler/effects:part"
  %l129 = alloca ptr
  %l133 = alloca %"compiler/effects:Facts"
  %l139 = alloca ptr
  %l142 = alloca ptr
  %l144 = alloca i32
  %l145 = alloca %"compiler/effects:Facts"
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %rv = alloca %"compiler/effects:Facts"
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l2, !tbaa !24
  %t5 = call %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eOf(ptr %v0, ptr %t1, i64 %t2)
  store %"compiler/effects:Facts" %t5, ptr %l22
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/effects:Effects", ptr %t6, i32 0, i32 8
  %t9 = load i64, ptr %l2, !tbaa !24
  %t12 = call %"compiler/effects:Facts" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3aFacts_3e_2eAt_3ccompiler_2feffects_3aFacts_3e(ptr %v0, ptr %t8, i64 %t9)
  store %"compiler/effects:Facts" %t12, ptr %l26
  br label %bb2
bb2:
  %t13 = load %"compiler/effects:Facts", ptr %l26
  store %"compiler/effects:Facts" %t13, ptr %l4
  %t14 = getelementptr %"compiler/effects:Facts", ptr %l4, i32 0, i32 21
  %t15 = load i64, ptr %t14, !tbaa !24
  %t17 = icmp eq i64 %t15, 0
  br i1 %t17, label %bb3, label %bb4
bb3:
  %t19 = load %"compiler/effects:Facts", ptr %l4
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/effects:Facts" %t19, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  store i64 0, ptr %l5, !tbaa !24
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/effects:Effects", ptr %t21, i32 0, i32 1
  %t24 = load i64, ptr %l2, !tbaa !24
  %t27 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t23, i64 %t24)
  store ptr %t27, ptr %l33
  br label %bb6
bb6:
  %t28 = load ptr, ptr %l33, !tbaa !29
  %t30 = getelementptr %"compiler/typed:Body", ptr %t28, i32 0, i32 5
  %t32 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t30)
  store i64 %t32, ptr %l36
  br label %bb7
bb7:
  %t33 = load i64, ptr %l36, !tbaa !24
  store i64 %t33, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t34 = load i64, ptr %l6, !tbaa !24
  %t35 = load i64, ptr %l5, !tbaa !24
  %t38 = icmp sgt i64 %t34, %t35
  br i1 %t38, label %bb8, label %bb9
bb8:
  %t40 = load i64, ptr %l7, !tbaa !24
  %t42 = icmp sgt i64 %t40, 0
  br i1 %t42, label %bb10, label %bb11
bb9:
  store i64 0, ptr %l40, !tbaa !24
  br label %bb13
bb10:
  %t44 = load i64, ptr %l6, !tbaa !24
  %t45 = load i64, ptr %l5, !tbaa !24
  %t48 = sub i64 %t44, %t45
  %t49 = load i64, ptr %l7, !tbaa !24
  %t52 = add i64 %t48, %t49
  %t54 = sub i64 %t52, 1
  %t55 = load i64, ptr %l7, !tbaa !24
  %t58 = sdiv i64 %t54, %t55
  store i64 %t58, ptr %l43, !tbaa !24
  br label %bb12
bb11:
  store i64 0, ptr %l43, !tbaa !24
  br label %bb12
bb12:
  %t60 = load i64, ptr %l43, !tbaa !24
  store i64 %t60, ptr %l40, !tbaa !24
  br label %bb13
bb13:
  %t61 = load i64, ptr %l40, !tbaa !24
  store i64 %t61, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb14
bb14:
  %t62 = load i64, ptr %l9, !tbaa !24
  %t63 = load i64, ptr %l8, !tbaa !24
  %t66 = icmp slt i64 %t62, %t63
  %t68 = xor i1 %t66, true
  br i1 %t68, label %bb15, label %bb16
bb15:
  br label %bb26
bb16:
  br label %bb17
bb17:
  %t70 = load i64, ptr %l5, !tbaa !24
  %t71 = load i64, ptr %l9, !tbaa !24
  %t72 = load i64, ptr %l7, !tbaa !24
  %t75 = mul i64 %t71, %t72
  %t78 = add i64 %t70, %t75
  store i64 %t78, ptr %l10, !tbaa !24
  %t80 = getelementptr %"compiler/effects:Facts", ptr %l4, i32 0, i32 21
  %t81 = load i64, ptr %t80, !tbaa !24
  %t82 = load i64, ptr %l10, !tbaa !24
  %t85 = call i1 @compiler_2feffects_2ehasBit(i64 %t81, i64 %t82)
  store i1 %t85, ptr %l63
  br label %bb18
bb18:
  %t86 = load i1, ptr %l63, !tbaa !21
  br i1 %t86, label %bb19, label %bb20
bb19:
  store %olang.scope zeroinitializer, ptr %s4
  store ptr %l4, ptr %l64, !tbaa !29
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/effects:Effects", ptr %t87, i32 0, i32 0
  %t90 = load ptr, ptr %t89, !tbaa !29
  %t92 = getelementptr %"compiler/generic:Program", ptr %t90, i32 0, i32 2
  store ptr %t92, ptr %l67, !tbaa !29
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t94 = load i64, ptr %l2, !tbaa !24
  %t95 = load i64, ptr %l10, !tbaa !24
  %t99 = call i32 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eslotType(ptr %v0, ptr %t93, i64 %t94, i64 %t95)
  store i32 %t99, ptr %l71
  br label %bb21
bb20:
  br label %bb24
bb21:
  %t100 = load ptr, ptr %l67, !tbaa !29
  %t101 = load i32, ptr %l71, !tbaa !23
  %t102 = call %"compiler/effects:Facts" @compiler_2feffects_2eFacts_2eBound(ptr %v0, ptr %t100, i32 %t101)
  store %"compiler/effects:Facts" %t102, ptr %l72
  br label %bb22
bb22:
  %t103 = load ptr, ptr %l64, !tbaa !29
  call void @compiler_2feffects_2eMerge(ptr %s0, ptr %s4, ptr %t103, ptr %l72)
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s4)
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t105 = load i64, ptr %l9, !tbaa !24
  %t107 = add i64 %t105, 1
  store i64 %t107, ptr %l9, !tbaa !24
  br label %bb14
bb26:
  %t109 = load ptr, ptr %l3, !tbaa !29
  store ptr %t109, ptr %l76, !tbaa !29
  store i1 false, ptr %l77, !tbaa !21
  %t110 = load ptr, ptr %l76, !tbaa !29
  %t111 = icmp ne ptr %t110, null
  br i1 %t111, label %bb27, label %bb28
bb27:
  %t113 = load ptr, ptr %l76, !tbaa !29
  %t114 = load i64, ptr %t113, !range !{i64 0, i64 18}
  %t116 = icmp eq i64 %t114, 15
  store i1 %t116, ptr %l77, !tbaa !21
  br label %bb28
bb28:
  %t117 = load i1, ptr %l77, !tbaa !21
  br i1 %t117, label %bb29, label %bb30
bb29:
  %t118 = load ptr, ptr %l3, !tbaa !29
  %t120 = getelementptr { i64, [5 x i64] }, ptr %t118, i32 0, i32 1
  %t121 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t120, i32 0, i32 2
  %t122 = load ptr, ptr %t121
  store ptr %t122, ptr %l82, !tbaa !29
  store i1 false, ptr %l83, !tbaa !21
  %t123 = load ptr, ptr %l82, !tbaa !29
  %t124 = icmp ne ptr %t123, null
  br i1 %t124, label %bb31, label %bb32
bb30:
  store i1 false, ptr %l80, !tbaa !21
  br label %bb33
bb31:
  %t126 = load ptr, ptr %l82, !tbaa !29
  %t127 = load i64, ptr %t126, !range !{i64 0, i64 3}
  %t129 = icmp eq i64 %t127, 1
  store i1 %t129, ptr %l83, !tbaa !21
  br label %bb32
bb32:
  %t130 = load i1, ptr %l83, !tbaa !21
  store i1 %t130, ptr %l80, !tbaa !21
  br label %bb33
bb33:
  %t131 = load i1, ptr %l80, !tbaa !21
  br i1 %t131, label %bb34, label %bb35
bb34:
  %t132 = load ptr, ptr %l3, !tbaa !29
  %t134 = getelementptr { i64, [5 x i64] }, ptr %t132, i32 0, i32 1
  %t135 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t134, i32 0, i32 2
  %t136 = load ptr, ptr %t135
  %t138 = getelementptr { i64, [4 x i64] }, ptr %t136, i32 0, i32 1
  %t139 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t138, i32 0, i32 1
  %t140 = load { i64, ptr }, ptr %t139
  store { i64, ptr } %t140, ptr %l11, !tbaa !27
  br label %bb36
bb35:
  br label %bb62
bb36:
  %t142 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t142, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t144 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t146 = extractvalue { i64, ptr } %t144, 0
  store i64 %t146, ptr %l14, !tbaa !24
  br label %bb37
bb37:
  %t148 = load i64, ptr %l13, !tbaa !24
  %t149 = load i64, ptr %l14, !tbaa !24
  %t152 = icmp slt i64 %t148, %t149
  %t154 = xor i1 %t152, true
  br i1 %t154, label %bb38, label %bb39
bb38:
  br label %bb61
bb39:
  br label %bb40
bb40:
  %t156 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t156, ptr %l96, !tbaa !27
  %t157 = load i64, ptr %l13, !tbaa !24
  %t159 = getelementptr { i64, ptr }, ptr %l96, i32 0, i32 1
  %t160 = load ptr, ptr %t159, !tbaa !27
  %t161 = getelementptr ptr, ptr %t160, i64 %t157
  %t162 = load ptr, ptr %t161, !tbaa !39
  store ptr %t162, ptr %l15, !tbaa !29
  %t164 = getelementptr %"compiler/effects:Facts", ptr %l4, i32 0, i32 21
  %t165 = load i64, ptr %t164, !tbaa !24
  store i64 %t165, ptr %l99, !tbaa !24
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t167 = load i64, ptr %l2, !tbaa !24
  %t168 = load ptr, ptr %l15, !tbaa !29
  %t170 = getelementptr %"compiler/typed:Capture", ptr %t168, i32 0, i32 0
  %t171 = load i32, ptr %t170, !tbaa !23
  %t173 = sext i32 %t171 to i64
  %t177 = call i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ecaptureSlot(ptr %v0, ptr %t166, i64 %t167, i64 %t173)
  store i64 %t177, ptr %l105
  br label %bb41
bb41:
  %t178 = load i64, ptr %l99, !tbaa !24
  %t179 = load i64, ptr %l105, !tbaa !24
  %t180 = call i1 @compiler_2feffects_2ehasBit(i64 %t178, i64 %t179)
  store i1 %t180, ptr %l106
  br label %bb42
bb42:
  %t181 = load i1, ptr %l106, !tbaa !21
  %t182 = xor i1 %t181, true
  br i1 %t182, label %bb43, label %bb44
bb43:
  br label %bb60
bb44:
  br label %bb45
bb45:
  %t184 = load ptr, ptr %l0, !tbaa !29
  %t185 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ewalkBody(ptr %v0, ptr %t184, i64 %t185)
  br label %bb46
bb46:
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t190 = getelementptr %"compiler/effects:Effects", ptr %t188, i32 0, i32 33
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2eClear_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %t190)
  br label %bb47
bb47:
  %t192 = load ptr, ptr %l0, !tbaa !29
  %t193 = load ptr, ptr %l15, !tbaa !29
  %t195 = getelementptr %"compiler/typed:Capture", ptr %t193, i32 0, i32 1
  %t196 = load ptr, ptr %t195, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eclassify(ptr %v0, ptr %v1, ptr %t192, ptr %t196, i64 0)
  br label %bb48
bb48:
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t202 = getelementptr %"compiler/effects:Effects", ptr %t200, i32 0, i32 33
  %t203 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t202
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t203, ptr %l117
  %t205 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %l117)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t205, ptr %l119
  br label %bb49
bb49:
  %t206 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l119
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t206, ptr %l16
  store ptr %l16, ptr %l17, !tbaa !29
  store i64 0, ptr %l18, !tbaa !24
  br label %bb50
bb50:
  store %olang.scope zeroinitializer, ptr %s11
  %t208 = load i64, ptr %l18, !tbaa !24
  store i64 %t208, ptr %l121, !tbaa !24
  %t209 = load ptr, ptr %l17, !tbaa !29
  %t211 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2eLen_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %t209)
  store i64 %t211, ptr %l123
  br label %bb51
bb51:
  %t212 = load i64, ptr %l121, !tbaa !24
  %t213 = load i64, ptr %l123, !tbaa !24
  %t214 = icmp slt i64 %t212, %t213
  %t216 = xor i1 %t214, true
  br i1 %t216, label %bb52, label %bb53
bb52:
  call void @__olang_scope_close(ptr %s11)
  br label %bb59
bb53:
  br label %bb54
bb54:
  %t218 = load ptr, ptr %l17, !tbaa !29
  %t219 = load i64, ptr %l18, !tbaa !24
  %t222 = call %"compiler/effects:part" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2eAt_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %v0, ptr %t218, i64 %t219)
  store %"compiler/effects:part" %t222, ptr %l128
  br label %bb55
bb55:
  %t223 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store ptr %t223, ptr %lp19
  %t224 = load %"compiler/effects:part", ptr %l128
  %t225 = load ptr, ptr %lp19
  store %"compiler/effects:part" %t224, ptr %t225
  store ptr %l4, ptr %l129, !tbaa !29
  %t226 = load ptr, ptr %l0, !tbaa !29
  %t227 = load i64, ptr %l1, !tbaa !24
  %t228 = load ptr, ptr %lp19
  %t232 = call %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2epartFacts(ptr %v0, ptr %v0, ptr %t226, i64 %t227, ptr %t228)
  store %"compiler/effects:Facts" %t232, ptr %l133
  br label %bb56
bb56:
  %t233 = load ptr, ptr %l129, !tbaa !29
  call void @compiler_2feffects_2eMerge(ptr %s0, ptr %s11, ptr %t233, ptr %l133)
  br label %bb57
bb57:
  call void @__olang_scope_close(ptr %s11)
  br label %bb58
bb58:
  %t235 = load i64, ptr %l18, !tbaa !24
  %t237 = add i64 %t235, 1
  store i64 %t237, ptr %l18, !tbaa !24
  br label %bb50
bb59:
  br label %bb60
bb60:
  %t239 = load i64, ptr %l13, !tbaa !24
  %t241 = add i64 %t239, 1
  store i64 %t241, ptr %l13, !tbaa !24
  br label %bb37
bb61:
  br label %bb70
bb62:
  br i1 true, label %bb63, label %bb64
bb63:
  br label %bb65
bb64:
  br label %bb69
bb65:
  store %olang.scope zeroinitializer, ptr %s14
  store ptr %l4, ptr %l139, !tbaa !29
  %t243 = load ptr, ptr %l0, !tbaa !29
  %t245 = getelementptr %"compiler/effects:Effects", ptr %t243, i32 0, i32 0
  %t246 = load ptr, ptr %t245, !tbaa !29
  %t248 = getelementptr %"compiler/generic:Program", ptr %t246, i32 0, i32 2
  store ptr %t248, ptr %l142, !tbaa !29
  %t249 = load ptr, ptr %l3, !tbaa !29
  %t251 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t249)
  store i32 %t251, ptr %l144
  br label %bb66
bb66:
  %t252 = load ptr, ptr %l142, !tbaa !29
  %t253 = load i32, ptr %l144, !tbaa !23
  %t254 = call %"compiler/effects:Facts" @compiler_2feffects_2eFacts_2eBound(ptr %v0, ptr %t252, i32 %t253)
  store %"compiler/effects:Facts" %t254, ptr %l145
  br label %bb67
bb67:
  %t255 = load ptr, ptr %l139, !tbaa !29
  call void @compiler_2feffects_2eMerge(ptr %s0, ptr %s14, ptr %t255, ptr %l145)
  br label %bb68
bb68:
  call void @__olang_scope_close(ptr %s14)
  br label %bb70
bb69:
  call void @__olang_check_failed(ptr @olang_loc_9b481a3036e75930_9f21b77026d49cd4)
  unreachable
bb70:
  %t257 = load %"compiler/effects:Facts", ptr %l4
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/effects:Facts" %t257, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/effects:Facts", ptr %rv
  ret %"compiler/effects:Facts" %rr
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eoutsJudged(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca i64
  %lp8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca %"compiler/effects:link"
  %l12 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l15 = alloca i64
  %l17 = alloca i64
  %l22 = alloca i64
  %l23 = alloca ptr
  %l25 = alloca i64
  %l29 = alloca i1
  %l30 = alloca i1
  %l34 = alloca i1
  %l35 = alloca i32
  %l40 = alloca i64
  %l42 = alloca i64
  %l47 = alloca i64
  %l48 = alloca i1
  %l51 = alloca i1
  %l52 = alloca i32
  %l60 = alloca i64
  %l62 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l65 = alloca i64
  %l67 = alloca i64
  %l72 = alloca %"compiler/effects:link"
  %l78 = alloca i1
  %l83 = alloca i1
  %l84 = alloca i32
  %l86 = alloca ptr
  %l90 = alloca %"compiler/effects:link"
  %l93 = alloca ptr
  %l95 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %s0 = alloca %olang.scope
  %s13 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1, ptr %l12
  br label %bb1
bb1:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l12
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %l1
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/effects:Effects", ptr %t3, i32 0, i32 36
  store ptr %t5, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t7 = load i64, ptr %l3, !tbaa !24
  store i64 %t7, ptr %l15, !tbaa !24
  %t8 = load ptr, ptr %l2, !tbaa !29
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l17
  br label %bb3
bb3:
  %t11 = load i64, ptr %l15, !tbaa !24
  %t12 = load i64, ptr %l17, !tbaa !24
  %t13 = icmp slt i64 %t11, %t12
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb4, label %bb5
bb4:
  br label %bb17
bb5:
  br label %bb6
bb6:
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t18 = load i64, ptr %l3, !tbaa !24
  %t21 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t17, i64 %t18)
  store i64 %t21, ptr %l22
  br label %bb7
bb7:
  %t22 = load i64, ptr %l22, !tbaa !24
  store i64 %t22, ptr %l4, !tbaa !24
  store ptr %l1, ptr %l23, !tbaa !29
  %t23 = load i64, ptr %l4, !tbaa !24
  %t25 = sdiv i64 %t23, 2
  store i64 %t25, ptr %l25, !tbaa !24
  %t26 = load i64, ptr %l4, !tbaa !24
  %t28 = srem i64 %t26, 2
  %t30 = icmp eq i64 %t28, 1
  br i1 %t30, label %bb8, label %bb9
bb8:
  %t32 = load i64, ptr %l4, !tbaa !24
  %t34 = sdiv i64 %t32, 2
  %t37 = call { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eGet_3cI64_2c_20Bool_3e(ptr %s0, ptr %l1, i64 %t34)
  %t38 = extractvalue { i32, i1 } %t37, 1
  %t39 = extractvalue { i32, i1 } %t37, 0
  store i32 %t39, ptr %l35
  %t40 = icmp ne i32 %t39, 0
  br i1 %t40, label %bb11, label %ok.41, !prof !99
ok.41:
  store i1 %t38, ptr %l34
  br label %bb10
bb9:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb14
bb10:
  %t42 = load i1, ptr %l34, !tbaa !21
  store i1 %t42, ptr %l30, !tbaa !21
  br label %bb13
bb11:
  br label %bb12
bb12:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb13
bb13:
  %t43 = load i1, ptr %l30, !tbaa !21
  store i1 %t43, ptr %l29, !tbaa !21
  br label %bb14
bb14:
  %t44 = load ptr, ptr %l23, !tbaa !29
  %t45 = load i64, ptr %l25, !tbaa !24
  %t46 = load i1, ptr %l29, !tbaa !21
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %s0, ptr %t44, i64 %t45, i1 %t46)
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t47 = load i64, ptr %l3, !tbaa !24
  %t49 = add i64 %t47, 1
  store i64 %t49, ptr %l3, !tbaa !24
  br label %bb2
bb17:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/effects:Effects", ptr %t51, i32 0, i32 37
  store ptr %t53, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb18
bb18:
  %t55 = load i64, ptr %l6, !tbaa !24
  store i64 %t55, ptr %l40, !tbaa !24
  %t56 = load ptr, ptr %l5, !tbaa !29
  %t58 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t56)
  store i64 %t58, ptr %l42
  br label %bb19
bb19:
  %t59 = load i64, ptr %l40, !tbaa !24
  %t60 = load i64, ptr %l42, !tbaa !24
  %t61 = icmp slt i64 %t59, %t60
  %t63 = xor i1 %t61, true
  br i1 %t63, label %bb20, label %bb21
bb20:
  br label %bb32
bb21:
  br label %bb22
bb22:
  %t65 = load ptr, ptr %l5, !tbaa !29
  %t66 = load i64, ptr %l6, !tbaa !24
  %t69 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t65, i64 %t66)
  store i64 %t69, ptr %l47
  br label %bb23
bb23:
  %t70 = load i64, ptr %l47, !tbaa !24
  %t74 = call { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eGet_3cI64_2c_20Bool_3e(ptr %s0, ptr %l1, i64 %t70)
  %t75 = extractvalue { i32, i1 } %t74, 1
  %t76 = extractvalue { i32, i1 } %t74, 0
  store i32 %t76, ptr %l52
  %t77 = icmp ne i32 %t76, 0
  br i1 %t77, label %bb25, label %ok.78, !prof !99
ok.78:
  store i1 %t75, ptr %l51
  br label %bb24
bb24:
  %t79 = load i1, ptr %l51, !tbaa !21
  store i1 %t79, ptr %l48, !tbaa !21
  br label %bb27
bb25:
  br label %bb26
bb26:
  store i1 false, ptr %l48, !tbaa !21
  br label %bb27
bb27:
  %t80 = load i1, ptr %l48, !tbaa !21
  %t81 = xor i1 %t80, true
  br i1 %t81, label %bb28, label %bb29
bb28:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/effects:Effects", ptr %t83, i32 0, i32 22
  %t86 = getelementptr %"compiler/effects:Facts", ptr %t85, i32 0, i32 16
  store i1 true, ptr %t86, !tbaa !21
  br label %bb30
bb29:
  br label %bb30
bb30:
  br label %bb31
bb31:
  %t87 = load i64, ptr %l6, !tbaa !24
  %t89 = add i64 %t87, 1
  store i64 %t89, ptr %l6, !tbaa !24
  br label %bb18
bb32:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/effects:Effects", ptr %t91, i32 0, i32 38
  %t94 = load i1, ptr %t93, !tbaa !21
  %t96 = xor i1 %t94, true
  br i1 %t96, label %bb33, label %bb34
bb33:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb34:
  br label %bb35
bb35:
  %t98 = ptrtoint ptr %v0 to i64
  store i64 %t98, ptr %l60, !tbaa !24
  %t99 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e24
  br i1 %t99, label %bb36, label %bb37
bb36:
  %t101 = call ptr @__olang_region_make(ptr %v0)
  %t102 = ptrtoint ptr %t101 to i64
  store i64 %t102, ptr %l60, !tbaa !24
  br label %bb37
bb37:
  %t103 = load i64, ptr %l60
  %t104 = inttoptr i64 %t103 to ptr
  %t105 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3alink_3e_2ector(ptr %t104, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t105, ptr %l62
  br label %bb38
bb38:
  %t106 = load i64, ptr %l60
  %t107 = inttoptr i64 %t106 to ptr
  %t108 = call ptr @__olang_scope_alloc_a(ptr %t107, i64 32, i64 8)
  store ptr %t108, ptr %lp8
  %t109 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l62
  %t110 = load ptr, ptr %lp8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t109, ptr %t110
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/effects:Effects", ptr %t111, i32 0, i32 24
  store ptr %t113, ptr %l9, !tbaa !29
  store i64 0, ptr %l10, !tbaa !24
  br label %bb39
bb39:
  %t115 = load i64, ptr %l10, !tbaa !24
  store i64 %t115, ptr %l65, !tbaa !24
  %t116 = load ptr, ptr %l9, !tbaa !29
  %t118 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3alink_3e_2eLen_3ccompiler_2feffects_3alink_3e(ptr %v0, ptr %t116)
  store i64 %t118, ptr %l67
  br label %bb40
bb40:
  %t119 = load i64, ptr %l65, !tbaa !24
  %t120 = load i64, ptr %l67, !tbaa !24
  %t121 = icmp slt i64 %t119, %t120
  %t123 = xor i1 %t121, true
  br i1 %t123, label %bb41, label %bb42
bb41:
  br label %bb59
bb42:
  br label %bb43
bb43:
  %t125 = load ptr, ptr %l9, !tbaa !29
  %t126 = load i64, ptr %l10, !tbaa !24
  %t129 = call %"compiler/effects:link" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3alink_3e_2eAt_3ccompiler_2feffects_3alink_3e(ptr %v0, ptr %t125, i64 %t126)
  store %"compiler/effects:link" %t129, ptr %l72
  br label %bb44
bb44:
  %t130 = load %"compiler/effects:link", ptr %l72
  store %"compiler/effects:link" %t130, ptr %l11
  %t131 = getelementptr %"compiler/effects:link", ptr %l11, i32 0, i32 2
  %t132 = load i64, ptr %t131, !tbaa !24
  %t133 = load i64, ptr @G_2ecompiler_2feffects_2eoutLocal, !tbaa !24
  %t136 = icmp sgt i64 %t132, %t133
  br i1 %t136, label %bb45, label %bb46
bb45:
  %t138 = load ptr, ptr %lp8
  %t139 = load %"compiler/effects:link", ptr %l11
  %t140 = load i64, ptr %l60
  %t141 = inttoptr i64 %t140 to ptr
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3alink_3e_2ePush_3ccompiler_2feffects_3alink_3e(ptr %t141, ptr %t138, %"compiler/effects:link" %t139)
  br label %bb47
bb46:
  %t144 = load i64, ptr @G_2ecompiler_2feffects_2eoutLocal, !tbaa !24
  %t145 = getelementptr %"compiler/effects:link", ptr %l11, i32 0, i32 2
  %t146 = load i64, ptr %t145, !tbaa !24
  %t149 = sub i64 %t144, %t146
  %t152 = call { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eGet_3cI64_2c_20Bool_3e(ptr %s0, ptr %l1, i64 %t149)
  %t153 = extractvalue { i32, i1 } %t152, 1
  %t154 = extractvalue { i32, i1 } %t152, 0
  store i32 %t154, ptr %l84
  %t155 = icmp ne i32 %t154, 0
  br i1 %t155, label %bb49, label %ok.156, !prof !99
ok.156:
  store i1 %t153, ptr %l83
  br label %bb48
bb47:
  br label %bb57
bb48:
  %t157 = load i1, ptr %l83, !tbaa !21
  store i1 %t157, ptr %l78, !tbaa !21
  br label %bb51
bb49:
  br label %bb50
bb50:
  store i1 false, ptr %l78, !tbaa !21
  br label %bb51
bb51:
  %t158 = load i1, ptr %l78, !tbaa !21
  %t159 = xor i1 %t158, true
  br i1 %t159, label %bb52, label %bb53
bb52:
  store %olang.scope zeroinitializer, ptr %s13
  %t161 = load ptr, ptr %lp8
  store ptr %t161, ptr %l86, !tbaa !29
  %t162 = getelementptr %"compiler/effects:link", ptr %l11, i32 0, i32 0
  %t163 = load i64, ptr %t162, !tbaa !24
  %t164 = getelementptr %"compiler/effects:link", ptr %l11, i32 0, i32 1
  %t165 = load i64, ptr %t164, !tbaa !24
  %t166 = load i64, ptr @G_2ecompiler_2feffects_2eoutParam, !tbaa !24
  %t170 = call %"compiler/effects:link" @compiler_2feffects_3alink_2ector(ptr %s13, i64 %t163, i64 %t165, i64 %t166)
  store %"compiler/effects:link" %t170, ptr %l90
  br label %bb54
bb53:
  br label %bb56
bb54:
  %t171 = load i64, ptr %l60
  %t172 = inttoptr i64 %t171 to ptr
  %t173 = load ptr, ptr %l86, !tbaa !29
  %t174 = load %"compiler/effects:link", ptr %l90
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3alink_3e_2ePush_3ccompiler_2feffects_3alink_3e(ptr %t172, ptr %t173, %"compiler/effects:link" %t174)
  br label %bb55
bb55:
  call void @__olang_scope_close(ptr %s13)
  br label %bb56
bb56:
  br label %bb57
bb57:
  br label %bb58
bb58:
  %t175 = load i64, ptr %l10, !tbaa !24
  %t177 = add i64 %t175, 1
  store i64 %t177, ptr %l10, !tbaa !24
  br label %bb39
bb59:
  %t179 = load ptr, ptr %l0, !tbaa !29
  store ptr %t179, ptr %l93, !tbaa !29
  %t180 = load ptr, ptr %lp8
  %t181 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t180
  %t182 = load ptr, ptr %l93, !tbaa !29
  %t183 = getelementptr %"compiler/effects:Effects", ptr %t182, i32 0, i32 24
  %t184 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t183
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t184, ptr %l95
  %t186 = load ptr, ptr %l93, !tbaa !29
  %t187 = getelementptr %"compiler/effects:Effects", ptr %t186, i32 0, i32 24
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t181, ptr %t187
  %t188 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e24
  br i1 %t188, label %bb60, label %bb61
bb60:
  %t190 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l95, i32 0, i32 0
  %t191 = load { i64, ptr }, ptr %t190
  %t192 = extractvalue { i64, ptr } %t191, 1
  %t193 = call ptr @__olang_region_or(ptr %t192, ptr null)
  %t194 = icmp ne ptr %t193, null
  %t195 = select i1 %t194, ptr %t193, ptr null
  call void @__olang_region_drop(ptr %t195)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l95
  br label %bb61
bb61:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2epartFacts(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca %"compiler/effects:Facts"
  %l4 = alloca ptr
  %l5 = alloca i64
  %l14 = alloca %"compiler/effects:Facts"
  %l21 = alloca ptr
  %l26 = alloca i32
  %l27 = alloca %"compiler/effects:Facts"
  %l35 = alloca %"compiler/effects:Facts"
  %l40 = alloca ptr
  %l41 = alloca i64
  %l43 = alloca i64
  %l49 = alloca %"compiler/effects:Facts"
  %l54 = alloca %"compiler/effects:Facts"
  %l59 = alloca i1
  %l64 = alloca i1
  %l65 = alloca %"compiler/effects:Facts"
  %l69 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l71 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l73 = alloca i64
  %l75 = alloca i64
  %l80 = alloca i64
  %l81 = alloca ptr
  %l84 = alloca %"compiler/effects:Facts"
  %l94 = alloca %"compiler/effects:Facts"
  %s5 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %rv = alloca %"compiler/effects:Facts"
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = getelementptr %"compiler/effects:part", ptr %t1, i32 0, i32 0
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load i64, ptr @G_2ecompiler_2feffects_2eGivNamed, !tbaa !24
  %t8 = icmp eq i64 %t4, %t5
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load ptr, ptr %l2, !tbaa !29
  %t13 = getelementptr %"compiler/effects:part", ptr %t11, i32 0, i32 1
  %t14 = load i64, ptr %t13, !tbaa !24
  %t17 = call %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eOf(ptr %v0, ptr %t10, i64 %t14)
  store %"compiler/effects:Facts" %t17, ptr %l14
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t18 = load %"compiler/effects:Facts", ptr %l14
  store %"compiler/effects:Facts" %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load ptr, ptr %l2, !tbaa !29
  %t21 = getelementptr %"compiler/effects:part", ptr %t19, i32 0, i32 0
  %t22 = load i64, ptr %t21, !tbaa !24
  %t23 = load i64, ptr @G_2ecompiler_2feffects_2eGivSlot, !tbaa !24
  %t26 = icmp eq i64 %t22, %t23
  br i1 %t26, label %bb5, label %bb6
bb5:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/effects:Effects", ptr %t28, i32 0, i32 0
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = getelementptr %"compiler/generic:Program", ptr %t31, i32 0, i32 2
  store ptr %t33, ptr %l21, !tbaa !29
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load i64, ptr %l1, !tbaa !24
  %t36 = load ptr, ptr %l2, !tbaa !29
  %t38 = getelementptr %"compiler/effects:part", ptr %t36, i32 0, i32 1
  %t39 = load i64, ptr %t38, !tbaa !24
  %t43 = call i32 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eslotType(ptr %v0, ptr %t34, i64 %t35, i64 %t39)
  store i32 %t43, ptr %l26
  br label %bb7
bb6:
  br label %bb9
bb7:
  %t44 = load ptr, ptr %l21, !tbaa !29
  %t45 = load i32, ptr %l26, !tbaa !23
  %t46 = call %"compiler/effects:Facts" @compiler_2feffects_2eFacts_2eBound(ptr %v0, ptr %t44, i32 %t45)
  store %"compiler/effects:Facts" %t46, ptr %l27
  br label %bb8
bb8:
  %t47 = load %"compiler/effects:Facts", ptr %l27
  store %"compiler/effects:Facts" %t47, ptr %rv
  br label %ret
bb9:
  %t48 = load ptr, ptr %l2, !tbaa !29
  %t50 = getelementptr %"compiler/effects:part", ptr %t48, i32 0, i32 0
  %t51 = load i64, ptr %t50, !tbaa !24
  %t52 = load i64, ptr @G_2ecompiler_2feffects_2ePartAdapter, !tbaa !24
  %t55 = icmp eq i64 %t51, %t52
  br i1 %t55, label %bb10, label %bb11
bb10:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load ptr, ptr %l2, !tbaa !29
  %t60 = getelementptr %"compiler/effects:part", ptr %t58, i32 0, i32 1
  %t61 = load i64, ptr %t60, !tbaa !24
  %t64 = call %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eOf(ptr %v0, ptr %t57, i64 %t61)
  store %"compiler/effects:Facts" %t64, ptr %l35
  br label %bb12
bb11:
  br label %bb13
bb12:
  %t65 = load %"compiler/effects:Facts", ptr %l35
  store %"compiler/effects:Facts" %t65, ptr %rv
  br label %ret
bb13:
  %t66 = load ptr, ptr %l2, !tbaa !29
  %t68 = getelementptr %"compiler/effects:part", ptr %t66, i32 0, i32 0
  %t69 = load i64, ptr %t68, !tbaa !24
  %t70 = load i64, ptr @G_2ecompiler_2feffects_2ePartLambda, !tbaa !24
  %t73 = icmp eq i64 %t69, %t70
  br i1 %t73, label %bb14, label %bb15
bb14:
  %t75 = load ptr, ptr %l0, !tbaa !29
  store ptr %t75, ptr %l40, !tbaa !29
  %t76 = load i64, ptr %l1, !tbaa !24
  store i64 %t76, ptr %l41, !tbaa !24
  %t77 = load ptr, ptr %l2, !tbaa !29
  %t79 = getelementptr %"compiler/effects:part", ptr %t77, i32 0, i32 1
  %t80 = load i64, ptr %t79, !tbaa !24
  store i64 %t80, ptr %l43, !tbaa !24
  %t81 = load ptr, ptr %l2, !tbaa !29
  %t83 = getelementptr %"compiler/effects:part", ptr %t81, i32 0, i32 3
  %t84 = load ptr, ptr %t83, !tbaa !29
  %t86 = icmp eq ptr %t84, null
  br i1 %t86, label %bb16, label %bb17
bb15:
  br label %bb20
bb16:
  call void @__olang_check_failed(ptr @olang_loc_89d258cb45db8a97_6792eaa695d1effb)
  unreachable
bb17:
  br label %bb18
bb18:
  %t88 = load ptr, ptr %l2, !tbaa !29
  %t90 = getelementptr %"compiler/effects:part", ptr %t88, i32 0, i32 3
  %t91 = load ptr, ptr %t90, !tbaa !29
  %t92 = load ptr, ptr %l40, !tbaa !29
  %t93 = load i64, ptr %l41, !tbaa !24
  %t94 = load i64, ptr %l43, !tbaa !24
  %t96 = call %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2elambdaFacts(ptr %v0, ptr %v1, ptr %t92, i64 %t93, i64 %t94, ptr %t91)
  store %"compiler/effects:Facts" %t96, ptr %l49
  br label %bb19
bb19:
  %t97 = load %"compiler/effects:Facts", ptr %l49
  store %"compiler/effects:Facts" %t97, ptr %rv
  br label %ret
bb20:
  %t98 = load ptr, ptr %l2, !tbaa !29
  %t100 = getelementptr %"compiler/effects:part", ptr %t98, i32 0, i32 0
  %t101 = load i64, ptr %t100, !tbaa !24
  %t102 = load i64, ptr @G_2ecompiler_2feffects_2eGivMade, !tbaa !24
  %t105 = icmp eq i64 %t101, %t102
  br i1 %t105, label %bb21, label %bb22
bb21:
  store %olang.scope zeroinitializer, ptr %s5
  %t107 = call %"compiler/effects:Facts" @compiler_2feffects_3aFacts_2ector(ptr %s5)
  store %"compiler/effects:Facts" %t107, ptr %l54
  br label %bb23
bb22:
  br label %bb24
bb23:
  call void @__olang_scope_close(ptr %s5)
  %t108 = load %"compiler/effects:Facts", ptr %l54
  store %"compiler/effects:Facts" %t108, ptr %rv
  br label %ret
bb24:
  %t109 = load ptr, ptr %l2, !tbaa !29
  %t111 = getelementptr %"compiler/effects:part", ptr %t109, i32 0, i32 0
  %t112 = load i64, ptr %t111, !tbaa !24
  %t113 = load i64, ptr @G_2ecompiler_2feffects_2eGivResult, !tbaa !24
  %t116 = icmp eq i64 %t112, %t113
  br i1 %t116, label %bb25, label %bb26
bb25:
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = getelementptr %"compiler/effects:Effects", ptr %t118, i32 0, i32 7
  %t121 = load ptr, ptr %l2, !tbaa !29
  %t123 = getelementptr %"compiler/effects:part", ptr %t121, i32 0, i32 1
  %t124 = load i64, ptr %t123, !tbaa !24
  %t127 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI_Hbd09c84b003bb96b764c8a61b7f32193(ptr %v0, ptr %t120, i64 %t124)
  store i1 %t127, ptr %l64
  br label %bb27
bb26:
  store i1 false, ptr %l59, !tbaa !21
  br label %bb28
bb27:
  %t128 = load i1, ptr %l64, !tbaa !21
  store i1 %t128, ptr %l59, !tbaa !21
  br label %bb28
bb28:
  %t129 = load i1, ptr %l59, !tbaa !21
  br i1 %t129, label %bb29, label %bb30
bb29:
  store %olang.scope zeroinitializer, ptr %s6
  %t130 = call %"compiler/effects:Facts" @compiler_2feffects_3aFacts_2ector(ptr %s6)
  store %"compiler/effects:Facts" %t130, ptr %l65
  br label %bb31
bb30:
  br label %bb44
bb31:
  %t131 = load %"compiler/effects:Facts", ptr %l65
  store %"compiler/effects:Facts" %t131, ptr %l3
  store %olang.scope zeroinitializer, ptr %s7
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t133 = load ptr, ptr %l2, !tbaa !29
  %t135 = getelementptr %"compiler/effects:part", ptr %t133, i32 0, i32 1
  %t136 = load i64, ptr %t135, !tbaa !24
  %t139 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eretsOf(ptr %v0, ptr %s7, ptr %t132, i64 %t136)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t139, ptr %l69
  br label %bb32
bb32:
  %t141 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s7, ptr %l69)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t141, ptr %l71
  br label %bb33
bb33:
  %t142 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l71
  %t143 = call ptr @__olang_scope_alloc_a(ptr %s7, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t142, ptr %t143
  store ptr %t143, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb34
bb34:
  store %olang.scope zeroinitializer, ptr %s8
  %t145 = load i64, ptr %l5, !tbaa !24
  store i64 %t145, ptr %l73, !tbaa !24
  %t146 = load ptr, ptr %l4, !tbaa !29
  %t148 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s7, ptr %t146)
  store i64 %t148, ptr %l75
  br label %bb35
bb35:
  %t149 = load i64, ptr %l73, !tbaa !24
  %t150 = load i64, ptr %l75, !tbaa !24
  %t151 = icmp slt i64 %t149, %t150
  %t153 = xor i1 %t151, true
  br i1 %t153, label %bb36, label %bb37
bb36:
  call void @__olang_scope_close(ptr %s8)
  br label %bb43
bb37:
  br label %bb38
bb38:
  %t155 = load ptr, ptr %l4, !tbaa !29
  %t156 = load i64, ptr %l5, !tbaa !24
  %t159 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s7, ptr %t155, i64 %t156)
  store i64 %t159, ptr %l80
  br label %bb39
bb39:
  %t160 = load i64, ptr %l80, !tbaa !24
  store ptr %l3, ptr %l81, !tbaa !29
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t165 = call %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eOf(ptr %v0, ptr %t161, i64 %t160)
  store %"compiler/effects:Facts" %t165, ptr %l84
  br label %bb40
bb40:
  %t166 = load ptr, ptr %l81, !tbaa !29
  call void @compiler_2feffects_2eMerge(ptr %s6, ptr %s8, ptr %t166, ptr %l84)
  br label %bb41
bb41:
  call void @__olang_scope_close(ptr %s8)
  br label %bb42
bb42:
  %t168 = load i64, ptr %l5, !tbaa !24
  %t170 = add i64 %t168, 1
  store i64 %t170, ptr %l5, !tbaa !24
  br label %bb34
bb43:
  call void @__olang_scope_close(ptr %s7)
  %t172 = load %"compiler/effects:Facts", ptr %l3
  call void @__olang_scope_close(ptr %s6)
  store %"compiler/effects:Facts" %t172, ptr %rv
  br label %ret
bb44:
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t176 = getelementptr %"compiler/effects:Effects", ptr %t174, i32 0, i32 0
  %t177 = load ptr, ptr %t176, !tbaa !29
  %t179 = getelementptr %"compiler/generic:Program", ptr %t177, i32 0, i32 2
  %t180 = load ptr, ptr %l2, !tbaa !29
  %t182 = getelementptr %"compiler/effects:part", ptr %t180, i32 0, i32 2
  %t183 = load i32, ptr %t182, !tbaa !23
  %t186 = call %"compiler/effects:Facts" @compiler_2feffects_2eFacts_2eBound(ptr %v0, ptr %t179, i32 %t183)
  store %"compiler/effects:Facts" %t186, ptr %l94
  br label %bb45
bb45:
  %t187 = load %"compiler/effects:Facts", ptr %l94
  store %"compiler/effects:Facts" %t187, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/effects:Facts", ptr %rv
  ret %"compiler/effects:Facts" %rr
}

define dso_local i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2epassCalls(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca i64
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca %"compiler/effects:given"
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l15 = alloca i1
  %l17 = alloca i1
  %l21 = alloca i1
  %l24 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l28 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l29 = alloca i32
  %l31 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l32 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l34 = alloca i64
  %l36 = alloca i64
  %l41 = alloca %"compiler/effects:given"
  %l45 = alloca i1
  %l51 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l54 = alloca i64
  %l57 = alloca i1
  %l58 = alloca i64
  %l61 = alloca i64
  %l63 = alloca i1
  %l66 = alloca i1
  %l67 = alloca i1
  %l71 = alloca i64
  %l77 = alloca %"compiler/effects:Facts"
  %l80 = alloca i1
  %l82 = alloca i1
  %l86 = alloca %"compiler/effects:Facts"
  %l89 = alloca i1
  %l94 = alloca %"compiler/effects:Facts"
  %l95 = alloca i64
  %l97 = alloca i64
  %l102 = alloca ptr
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store i64 0, ptr %l3, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/effects:Effects", ptr %t1, i32 0, i32 13
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t3, i64 %t4)
  store i1 %t7, ptr %l15
  br label %bb1
bb1:
  %t8 = load i1, ptr %l15, !tbaa !21
  %t9 = xor i1 %t8, true
  br i1 %t9, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l17, !tbaa !21
  br label %bb5
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/effects:Effects", ptr %t11, i32 0, i32 6
  %t14 = load i64, ptr %l1, !tbaa !24
  %t17 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_Hb5dd413d586c55d7ccefa7dbc5ad43c5(ptr %v0, ptr %t13, i64 %t14)
  store i1 %t17, ptr %l21
  br label %bb4
bb4:
  %t18 = load i1, ptr %l21, !tbaa !21
  %t19 = xor i1 %t18, true
  store i1 %t19, ptr %l17, !tbaa !21
  br label %bb5
bb5:
  %t21 = load i1, ptr %l17, !tbaa !21
  br i1 %t21, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  store i64 0, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/effects:Effects", ptr %t23, i32 0, i32 6
  %t26 = load i64, ptr %l1, !tbaa !24
  %t29 = call { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H7b34d2d8e55697dbed551519dd59c955(ptr %v0, ptr %v0, ptr %t25, i64 %t26)
  %t30 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t29, 1
  %t31 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t29, 0
  store i32 %t31, ptr %l29
  %t32 = icmp ne i32 %t31, 0
  br i1 %t32, label %bb10, label %ok.33, !prof !99
ok.33:
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t30, ptr %l28
  br label %bb9
bb9:
  %t35 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3agiven_3e(ptr %s0, ptr %l28)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t35, ptr %l31
  br label %bb12
bb10:
  br label %bb11
bb11:
  %t36 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3agiven_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t36, ptr %l32
  br label %bb13
bb12:
  %t37 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l31
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t37, ptr %l24
  br label %bb14
bb13:
  %t38 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l32
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t38, ptr %l24
  br label %bb14
bb14:
  %t39 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l24
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t39, ptr %l4
  store ptr %l4, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb15
bb15:
  %t41 = load i64, ptr %l6, !tbaa !24
  store i64 %t41, ptr %l34, !tbaa !24
  %t42 = load ptr, ptr %l5, !tbaa !29
  %t44 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3agiven_3e_2eLen_3ccompiler_2feffects_3agiven_3e(ptr %s0, ptr %t42)
  store i64 %t44, ptr %l36
  br label %bb16
bb16:
  %t45 = load i64, ptr %l34, !tbaa !24
  %t46 = load i64, ptr %l36, !tbaa !24
  %t47 = icmp slt i64 %t45, %t46
  %t49 = xor i1 %t47, true
  br i1 %t49, label %bb17, label %bb18
bb17:
  br label %bb58
bb18:
  br label %bb19
bb19:
  %t51 = load ptr, ptr %l5, !tbaa !29
  %t52 = load i64, ptr %l6, !tbaa !24
  %t55 = call %"compiler/effects:given" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3agiven_3e_2eAt_3ccompiler_2feffects_3agiven_3e(ptr %s0, ptr %t51, i64 %t52)
  store %"compiler/effects:given" %t55, ptr %l41
  br label %bb20
bb20:
  %t56 = load %"compiler/effects:given", ptr %l41
  store %"compiler/effects:given" %t56, ptr %l7
  %t57 = getelementptr %"compiler/effects:given", ptr %l7, i32 0, i32 2
  %t58 = load i64, ptr %t57, !tbaa !24
  %t59 = load i64, ptr @G_2ecompiler_2feffects_2eGivSlot, !tbaa !24
  %t62 = icmp ne i64 %t58, %t59
  br i1 %t62, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l45, !tbaa !21
  br label %bb23
bb22:
  %t64 = getelementptr %"compiler/effects:given", ptr %l7, i32 0, i32 0
  %t65 = load i64, ptr %t64, !tbaa !24
  %t67 = icmp slt i64 %t65, 0
  store i1 %t67, ptr %l45, !tbaa !21
  br label %bb23
bb23:
  %t69 = load i1, ptr %l45, !tbaa !21
  br i1 %t69, label %bb24, label %bb25
bb24:
  br label %bb57
bb25:
  br label %bb26
bb26:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/effects:Effects", ptr %t70, i32 0, i32 4
  %t73 = load i64, ptr %l1, !tbaa !24
  %t76 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H7b6d4eff6fc9c3821aae8b284e12e095(ptr %v0, ptr %v0, ptr %t72, i64 %t73)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t76, ptr %l51
  br label %bb27
bb27:
  %t77 = getelementptr %"compiler/effects:given", ptr %l7, i32 0, i32 0
  %t78 = load i64, ptr %t77, !tbaa !24
  %t81 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %l51, i64 %t78)
  store i64 %t81, ptr %l54
  br label %bb28
bb28:
  %t82 = load i64, ptr %l54, !tbaa !24
  store i64 %t82, ptr %l8, !tbaa !24
  %t83 = load i64, ptr %l8, !tbaa !24
  %t85 = icmp slt i64 %t83, 0
  br i1 %t85, label %bb29, label %bb30
bb29:
  store i1 true, ptr %l57, !tbaa !21
  br label %bb32
bb30:
  %t87 = load i64, ptr %l8, !tbaa !24
  store i64 %t87, ptr %l58, !tbaa !24
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/effects:Effects", ptr %t88, i32 0, i32 1
  %t92 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t90)
  store i64 %t92, ptr %l61
  br label %bb31
bb31:
  %t93 = load i64, ptr %l58, !tbaa !24
  %t94 = load i64, ptr %l61, !tbaa !24
  %t95 = icmp sge i64 %t93, %t94
  store i1 %t95, ptr %l57, !tbaa !21
  br label %bb32
bb32:
  %t97 = load i1, ptr %l57, !tbaa !21
  br i1 %t97, label %bb33, label %bb34
bb33:
  store i1 true, ptr %l63, !tbaa !21
  br label %bb40
bb34:
  %t99 = load i64, ptr %l8, !tbaa !24
  %t102 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v1, ptr %a2, i64 %t99)
  store i1 %t102, ptr %l66
  br label %bb35
bb35:
  %t103 = load i1, ptr %l66, !tbaa !21
  br i1 %t103, label %bb36, label %bb37
bb36:
  store i1 true, ptr %l67, !tbaa !21
  br label %bb39
bb37:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/effects:Effects", ptr %t104, i32 0, i32 14
  %t107 = load i64, ptr %l8, !tbaa !24
  %t110 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t106, i64 %t107)
  store i64 %t110, ptr %l71
  br label %bb38
bb38:
  %t111 = load i64, ptr %l71, !tbaa !24
  %t112 = icmp eq i64 %t111, 2
  store i1 %t112, ptr %l67, !tbaa !21
  br label %bb39
bb39:
  %t114 = load i1, ptr %l67, !tbaa !21
  %t115 = xor i1 %t114, true
  store i1 %t115, ptr %l63, !tbaa !21
  br label %bb40
bb40:
  %t117 = load i1, ptr %l63, !tbaa !21
  br i1 %t117, label %bb41, label %bb42
bb41:
  br label %bb57
bb42:
  br label %bb43
bb43:
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = getelementptr %"compiler/effects:Effects", ptr %t118, i32 0, i32 8
  %t121 = load i64, ptr %l8, !tbaa !24
  %t124 = call %"compiler/effects:Facts" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3aFacts_3e_2eAt_3ccompiler_2feffects_3aFacts_3e(ptr %v0, ptr %t120, i64 %t121)
  store %"compiler/effects:Facts" %t124, ptr %l77
  br label %bb44
bb44:
  %t125 = getelementptr %"compiler/effects:Facts", ptr %l77, i32 0, i32 21
  %t126 = load i64, ptr %t125, !tbaa !24
  %t127 = getelementptr %"compiler/effects:given", ptr %l7, i32 0, i32 1
  %t128 = load i64, ptr %t127, !tbaa !24
  %t131 = call i1 @compiler_2feffects_2ehasBit(i64 %t126, i64 %t128)
  store i1 %t131, ptr %l80
  br label %bb45
bb45:
  %t132 = load i1, ptr %l80, !tbaa !21
  %t133 = xor i1 %t132, true
  br i1 %t133, label %bb46, label %bb47
bb46:
  store i1 true, ptr %l82, !tbaa !21
  br label %bb50
bb47:
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t137 = getelementptr %"compiler/effects:Effects", ptr %t135, i32 0, i32 8
  %t138 = load i64, ptr %l1, !tbaa !24
  %t141 = call %"compiler/effects:Facts" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3aFacts_3e_2eAt_3ccompiler_2feffects_3aFacts_3e(ptr %v0, ptr %t137, i64 %t138)
  store %"compiler/effects:Facts" %t141, ptr %l86
  br label %bb48
bb48:
  %t142 = getelementptr %"compiler/effects:Facts", ptr %l86, i32 0, i32 21
  %t143 = load i64, ptr %t142, !tbaa !24
  %t144 = getelementptr %"compiler/effects:given", ptr %l7, i32 0, i32 3
  %t145 = load i64, ptr %t144, !tbaa !24
  %t148 = call i1 @compiler_2feffects_2ehasBit(i64 %t143, i64 %t145)
  store i1 %t148, ptr %l89
  br label %bb49
bb49:
  %t149 = load i1, ptr %l89, !tbaa !21
  store i1 %t149, ptr %l82, !tbaa !21
  br label %bb50
bb50:
  %t150 = load i1, ptr %l82, !tbaa !21
  br i1 %t150, label %bb51, label %bb52
bb51:
  br label %bb57
bb52:
  br label %bb53
bb53:
  %t151 = load i64, ptr %l1, !tbaa !24
  store i64 %t151, ptr %l9, !tbaa !24
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t155 = getelementptr %"compiler/effects:Effects", ptr %t153, i32 0, i32 8
  %t156 = load i64, ptr %l1, !tbaa !24
  %t159 = call %"compiler/effects:Facts" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3aFacts_3e_2eAt_3ccompiler_2feffects_3aFacts_3e(ptr %v0, ptr %t155, i64 %t156)
  store %"compiler/effects:Facts" %t159, ptr %l94
  br label %bb54
bb54:
  %t160 = getelementptr %"compiler/effects:Facts", ptr %l94, i32 0, i32 21
  %t161 = load i64, ptr %t160, !tbaa !24
  store i64 %t161, ptr %l95, !tbaa !24
  %t162 = getelementptr %"compiler/effects:given", ptr %l7, i32 0, i32 3
  %t163 = load i64, ptr %t162, !tbaa !24
  %t165 = call i64 @compiler_2feffects_2eparamBit(i64 %t163)
  store i64 %t165, ptr %l97
  br label %bb55
bb55:
  %t166 = load i64, ptr %l95, !tbaa !24
  %t167 = load i64, ptr %l97, !tbaa !24
  %t168 = or i64 %t166, %t167
  store i64 %t168, ptr %l10, !tbaa !24
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t172 = getelementptr %"compiler/effects:Effects", ptr %t170, i32 0, i32 8
  %t173 = load i64, ptr %l9, !tbaa !24
  %t176 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3aFacts_3e_2eRefMut_3ccompiler_2feffects_3aFacts_3e(ptr %v0, ptr %v0, ptr %t172, i64 %t173)
  store ptr %t176, ptr %l102
  br label %bb56
bb56:
  %t177 = load ptr, ptr %l102, !tbaa !29
  %t179 = load i64, ptr %l10, !tbaa !24
  %t182 = getelementptr %"compiler/effects:Facts", ptr %t177, i32 0, i32 21
  store i64 %t179, ptr %t182, !tbaa !24
  %t183 = load i64, ptr %l3, !tbaa !24
  %t185 = add i64 %t183, 1
  store i64 %t185, ptr %l3, !tbaa !24
  br label %bb57
bb57:
  %t187 = load i64, ptr %l6, !tbaa !24
  %t189 = add i64 %t187, 1
  store i64 %t189, ptr %l6, !tbaa !24
  br label %bb15
bb58:
  %t191 = load i64, ptr %l3, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t191, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eprim(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l15 = alloca ptr
  %l18 = alloca ptr
  %l19 = alloca { i64, ptr }
  %l21 = alloca i32
  %l22 = alloca i32
  %l35 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t3 = trunc i64 29 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/effects:Effects", ptr %t6, i32 0, i32 22
  %t9 = getelementptr %"compiler/effects:Facts", ptr %t8, i32 0, i32 11
  store i1 true, ptr %t9, !tbaa !21
  br label %bb33
bb4:
  %t10 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t12 = trunc i64 30 to i32
  %t13 = icmp eq i32 %t10, %t12
  br i1 %t13, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb14
bb7:
  %t15 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t15, 0
  %t19 = icmp sgt i64 %t17, 0
  br i1 %t19, label %bb8, label %bb9
bb8:
  %t21 = load ptr, ptr %l0, !tbaa !29
  store ptr %t21, ptr %l15, !tbaa !29
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/effects:Effects", ptr %t22, i32 0, i32 0
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/generic:Program", ptr %t25, i32 0, i32 2
  store ptr %t27, ptr %l18, !tbaa !29
  %t28 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t28, ptr %l19, !tbaa !27
  %t29 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = getelementptr ptr, ptr %t30, i64 0
  %t32 = load ptr, ptr %t31, !tbaa !39
  %t34 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t32)
  store i32 %t34, ptr %l21
  br label %bb10
bb9:
  br label %bb13
bb10:
  %t35 = load ptr, ptr %l18, !tbaa !29
  %t36 = load i32, ptr %l21, !tbaa !23
  %t37 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t35, i32 %t36)
  store i32 %t37, ptr %l22
  br label %bb11
bb11:
  %t38 = load ptr, ptr %l15, !tbaa !29
  %t39 = load i32, ptr %l22, !tbaa !23
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2edropsCalled(ptr %v0, ptr %t38, i32 %t39, i64 0)
  br label %bb12
bb12:
  br label %bb13
bb13:
  br label %bb33
bb14:
  %t40 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t42 = trunc i64 25 to i32
  %t43 = icmp eq i32 %t40, %t42
  br i1 %t43, label %bb15, label %bb16
bb15:
  br label %bb23
bb16:
  %t45 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t47 = trunc i64 26 to i32
  %t48 = icmp eq i32 %t45, %t47
  br i1 %t48, label %bb17, label %bb18
bb17:
  br label %bb23
bb18:
  %t50 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t52 = trunc i64 27 to i32
  %t53 = icmp eq i32 %t50, %t52
  br i1 %t53, label %bb19, label %bb20
bb19:
  br label %bb23
bb20:
  %t55 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t57 = trunc i64 28 to i32
  %t58 = icmp eq i32 %t55, %t57
  br i1 %t58, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb28
bb23:
  %t60 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t62 = extractvalue { i64, ptr } %t60, 0
  %t64 = icmp sgt i64 %t62, 0
  br i1 %t64, label %bb24, label %bb25
bb24:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t67, ptr %l35, !tbaa !27
  %t68 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !27
  %t70 = getelementptr ptr, ptr %t69, i64 0
  %t71 = load ptr, ptr %t70, !tbaa !39
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ewritten(ptr %v0, ptr %v1, ptr %t66, ptr %t71)
  br label %bb26
bb25:
  br label %bb27
bb26:
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
  call void @__olang_check_failed(ptr @olang_loc_31e57a958c31a5ba_705aefa950dbf3e6)
  unreachable
bb33:
  %t74 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t74, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t76 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t78 = extractvalue { i64, ptr } %t76, 0
  store i64 %t78, ptr %l5, !tbaa !24
  br label %bb34
bb34:
  %t80 = load i64, ptr %l4, !tbaa !24
  %t81 = load i64, ptr %l5, !tbaa !24
  %t84 = icmp slt i64 %t80, %t81
  %t86 = xor i1 %t84, true
  br i1 %t86, label %bb35, label %bb36
bb35:
  br label %bb40
bb36:
  br label %bb37
bb37:
  %t88 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t88, ptr %l44, !tbaa !27
  %t89 = load i64, ptr %l4, !tbaa !24
  %t91 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !27
  %t93 = getelementptr ptr, ptr %t92, i64 %t89
  %t94 = load ptr, ptr %t93, !tbaa !39
  %t96 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %t96, ptr %t94)
  br label %bb38
bb38:
  br label %bb39
bb39:
  %t101 = load i64, ptr %l4, !tbaa !24
  %t103 = add i64 %t101, 1
  store i64 %t103, ptr %l4, !tbaa !24
  br label %bb34
bb40:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eresolve(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca %"compiler/effects:part"
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l17 = alloca i1
  %l19 = alloca i1
  %l22 = alloca i64
  %l24 = alloca i64
  %l29 = alloca %"compiler/effects:part"
  %l34 = alloca i1
  %l42 = alloca i1
  %l50 = alloca ptr
  %l58 = alloca %"compiler/effects:given"
  %l62 = alloca ptr
  %l64 = alloca i64
  %l66 = alloca i64
  %l72 = alloca ptr
  %l75 = alloca ptr
  %l80 = alloca i32
  %l81 = alloca %"compiler/effects:Facts"
  %l87 = alloca ptr
  %l92 = alloca %"compiler/effects:Facts"
  %l97 = alloca i1
  %l102 = alloca ptr
  %l106 = alloca %"compiler/effects:given"
  %l110 = alloca i1
  %l112 = alloca i1
  %l115 = alloca { i64, ptr }
  %l116 = alloca ptr
  %l119 = alloca %"compiler/source:Span"
  %l121 = alloca i1
  %l122 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s11 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/effects:Effects", ptr %t1, i32 0, i32 33
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2eClear_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %t3)
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t8 = getelementptr %"compiler/effects:pend", ptr %t6, i32 0, i32 2
  %t9 = load ptr, ptr %t8, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eclassify(ptr %v0, ptr %v1, ptr %t5, ptr %t9, i64 0)
  br label %bb2
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/effects:Effects", ptr %t13, i32 0, i32 44
  %t16 = load i64, ptr %t15, !tbaa !24
  %t18 = icmp ne i64 %t16, 0
  br i1 %t18, label %bb3, label %bb4
bb3:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ewhyNow(ptr %v0, ptr %t20)
  store i1 %t22, ptr %l19
  br label %bb5
bb4:
  store i1 true, ptr %l17, !tbaa !21
  br label %bb6
bb5:
  %t23 = load i1, ptr %l19, !tbaa !21
  store i1 %t23, ptr %l17, !tbaa !21
  br label %bb6
bb6:
  %t24 = load i1, ptr %l17, !tbaa !21
  store i1 %t24, ptr %l2, !tbaa !21
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/effects:Effects", ptr %t25, i32 0, i32 33
  store ptr %t27, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb7
bb7:
  %t29 = load i64, ptr %l4, !tbaa !24
  store i64 %t29, ptr %l22, !tbaa !24
  %t30 = load ptr, ptr %l3, !tbaa !29
  %t32 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2eLen_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %t30)
  store i64 %t32, ptr %l24
  br label %bb8
bb8:
  %t33 = load i64, ptr %l22, !tbaa !24
  %t34 = load i64, ptr %l24, !tbaa !24
  %t35 = icmp slt i64 %t33, %t34
  %t37 = xor i1 %t35, true
  br i1 %t37, label %bb9, label %bb10
bb9:
  br label %bb54
bb10:
  br label %bb11
bb11:
  %t39 = load ptr, ptr %l3, !tbaa !29
  %t40 = load i64, ptr %l4, !tbaa !24
  %t43 = call %"compiler/effects:part" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2eAt_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %v0, ptr %t39, i64 %t40)
  store %"compiler/effects:part" %t43, ptr %l29
  br label %bb12
bb12:
  %t44 = load %"compiler/effects:part", ptr %l29
  store %"compiler/effects:part" %t44, ptr %l5
  %t45 = getelementptr %"compiler/effects:part", ptr %l5, i32 0, i32 0
  %t46 = load i64, ptr %t45, !tbaa !24
  store i64 %t46, ptr %l6, !tbaa !24
  %t48 = load i64, ptr %l6, !tbaa !24
  %t49 = load i64, ptr @G_2ecompiler_2feffects_2ePartLambda, !tbaa !24
  %t52 = icmp eq i64 %t48, %t49
  br i1 %t52, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l34, !tbaa !21
  br label %bb15
bb14:
  %t54 = load i64, ptr %l6, !tbaa !24
  %t55 = load i64, ptr @G_2ecompiler_2feffects_2ePartAdapter, !tbaa !24
  %t58 = icmp eq i64 %t54, %t55
  store i1 %t58, ptr %l34, !tbaa !21
  br label %bb15
bb15:
  %t60 = load i1, ptr %l34, !tbaa !21
  br i1 %t60, label %bb16, label %bb17
bb16:
  %t61 = load i64, ptr @G_2ecompiler_2feffects_2eGivMade, !tbaa !24
  store i64 %t61, ptr %l6, !tbaa !24
  br label %bb18
bb17:
  br label %bb18
bb18:
  %t63 = load i64, ptr %l6, !tbaa !24
  %t64 = load i64, ptr @G_2ecompiler_2feffects_2eGivSlot, !tbaa !24
  %t67 = icmp eq i64 %t63, %t64
  br i1 %t67, label %bb19, label %bb20
bb19:
  %t69 = getelementptr %"compiler/effects:part", ptr %l5, i32 0, i32 1
  %t70 = load i64, ptr %t69, !tbaa !24
  %t72 = icmp sge i64 %t70, 63
  store i1 %t72, ptr %l42, !tbaa !21
  br label %bb21
bb20:
  store i1 false, ptr %l42, !tbaa !21
  br label %bb21
bb21:
  %t74 = load i1, ptr %l42, !tbaa !21
  br i1 %t74, label %bb22, label %bb23
bb22:
  %t75 = load i64, ptr @G_2ecompiler_2feffects_2eGivBound, !tbaa !24
  store i64 %t75, ptr %l6, !tbaa !24
  br label %bb24
bb23:
  br label %bb24
bb24:
  %t77 = load ptr, ptr %l1, !tbaa !29
  %t79 = getelementptr %"compiler/effects:pend", ptr %t77, i32 0, i32 0
  %t80 = load i64, ptr %t79, !tbaa !24
  %t82 = icmp sge i64 %t80, 0
  br i1 %t82, label %bb25, label %bb26
bb25:
  store %olang.scope zeroinitializer, ptr %s5
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr %"compiler/effects:Effects", ptr %t84, i32 0, i32 25
  store ptr %t86, ptr %l50, !tbaa !29
  %t87 = load ptr, ptr %l1, !tbaa !29
  %t89 = getelementptr %"compiler/effects:pend", ptr %t87, i32 0, i32 0
  %t90 = load i64, ptr %t89, !tbaa !24
  %t91 = load ptr, ptr %l1, !tbaa !29
  %t93 = getelementptr %"compiler/effects:pend", ptr %t91, i32 0, i32 1
  %t94 = load i64, ptr %t93, !tbaa !24
  %t95 = load i64, ptr %l6, !tbaa !24
  %t96 = getelementptr %"compiler/effects:part", ptr %l5, i32 0, i32 1
  %t97 = load i64, ptr %t96, !tbaa !24
  %t98 = getelementptr %"compiler/effects:part", ptr %l5, i32 0, i32 2
  %t99 = load i32, ptr %t98, !tbaa !23
  %t105 = call %"compiler/effects:given" @compiler_2feffects_3agiven_2ector(ptr %s5, i64 %t90, i64 %t94, i64 %t95, i64 %t97, i32 %t99)
  store %"compiler/effects:given" %t105, ptr %l58
  br label %bb27
bb26:
  br label %bb29
bb27:
  %t106 = load ptr, ptr %l50, !tbaa !29
  %t107 = load %"compiler/effects:given", ptr %l58
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3agiven_3e_2ePush_3ccompiler_2feffects_3agiven_3e(ptr %v0, ptr %t106, %"compiler/effects:given" %t107)
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s5)
  br label %bb53
bb29:
  %t108 = load i64, ptr %l6, !tbaa !24
  %t109 = load i64, ptr @G_2ecompiler_2feffects_2eGivSlot, !tbaa !24
  %t112 = icmp eq i64 %t108, %t109
  br i1 %t112, label %bb30, label %bb31
bb30:
  %t114 = load ptr, ptr %l0, !tbaa !29
  store ptr %t114, ptr %l62, !tbaa !29
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t117 = getelementptr %"compiler/effects:Effects", ptr %t115, i32 0, i32 22
  %t118 = getelementptr %"compiler/effects:Facts", ptr %t117, i32 0, i32 21
  %t119 = load i64, ptr %t118, !tbaa !24
  store i64 %t119, ptr %l64, !tbaa !24
  %t120 = getelementptr %"compiler/effects:part", ptr %l5, i32 0, i32 1
  %t121 = load i64, ptr %t120, !tbaa !24
  %t123 = call i64 @compiler_2feffects_2eparamBit(i64 %t121)
  store i64 %t123, ptr %l66
  br label %bb32
bb31:
  %t124 = load i64, ptr %l6, !tbaa !24
  %t125 = load i64, ptr @G_2ecompiler_2feffects_2eGivBound, !tbaa !24
  %t128 = icmp eq i64 %t124, %t125
  br i1 %t128, label %bb39, label %bb40
bb32:
  %t130 = load i64, ptr %l64, !tbaa !24
  %t131 = load i64, ptr %l66, !tbaa !24
  %t132 = or i64 %t130, %t131
  %t134 = load ptr, ptr %l62, !tbaa !29
  %t135 = getelementptr %"compiler/effects:Effects", ptr %t134, i32 0, i32 22
  %t136 = getelementptr %"compiler/effects:Facts", ptr %t135, i32 0, i32 21
  store i64 %t132, ptr %t136, !tbaa !24
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t139 = getelementptr %"compiler/effects:Effects", ptr %t137, i32 0, i32 44
  %t140 = load i64, ptr %t139, !tbaa !24
  %t142 = icmp ne i64 %t140, 0
  br i1 %t142, label %bb33, label %bb34
bb33:
  store %olang.scope zeroinitializer, ptr %s7
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t146 = getelementptr %"compiler/effects:Effects", ptr %t144, i32 0, i32 22
  store ptr %t146, ptr %l72, !tbaa !29
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t149 = getelementptr %"compiler/effects:Effects", ptr %t147, i32 0, i32 0
  %t150 = load ptr, ptr %t149, !tbaa !29
  %t152 = getelementptr %"compiler/generic:Program", ptr %t150, i32 0, i32 2
  store ptr %t152, ptr %l75, !tbaa !29
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr %"compiler/effects:Effects", ptr %t154, i32 0, i32 30
  %t157 = load i64, ptr %t156, !tbaa !24
  %t158 = getelementptr %"compiler/effects:part", ptr %l5, i32 0, i32 1
  %t159 = load i64, ptr %t158, !tbaa !24
  %t163 = call i32 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eslotType(ptr %v0, ptr %t153, i64 %t157, i64 %t159)
  store i32 %t163, ptr %l80
  br label %bb35
bb34:
  br label %bb38
bb35:
  %t164 = load ptr, ptr %l75, !tbaa !29
  %t165 = load i32, ptr %l80, !tbaa !23
  %t166 = call %"compiler/effects:Facts" @compiler_2feffects_2eFacts_2eBound(ptr %v0, ptr %t164, i32 %t165)
  store %"compiler/effects:Facts" %t166, ptr %l81
  br label %bb36
bb36:
  %t167 = load ptr, ptr %l72, !tbaa !29
  call void @compiler_2feffects_2eMerge(ptr %v0, ptr %s7, ptr %t167, ptr %l81)
  br label %bb37
bb37:
  call void @__olang_scope_close(ptr %s7)
  br label %bb38
bb38:
  br label %bb52
bb39:
  store %olang.scope zeroinitializer, ptr %s9
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t171 = getelementptr %"compiler/effects:Effects", ptr %t169, i32 0, i32 22
  store ptr %t171, ptr %l87, !tbaa !29
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t174 = getelementptr %"compiler/effects:Effects", ptr %t172, i32 0, i32 0
  %t175 = load ptr, ptr %t174, !tbaa !29
  %t177 = getelementptr %"compiler/generic:Program", ptr %t175, i32 0, i32 2
  %t178 = getelementptr %"compiler/effects:part", ptr %l5, i32 0, i32 2
  %t179 = load i32, ptr %t178, !tbaa !23
  %t182 = call %"compiler/effects:Facts" @compiler_2feffects_2eFacts_2eBound(ptr %v0, ptr %t177, i32 %t179)
  store %"compiler/effects:Facts" %t182, ptr %l92
  br label %bb41
bb40:
  %t183 = load i64, ptr %l6, !tbaa !24
  %t184 = load i64, ptr @G_2ecompiler_2feffects_2eGivNamed, !tbaa !24
  %t187 = icmp eq i64 %t183, %t184
  br i1 %t187, label %bb43, label %bb44
bb41:
  %t189 = load ptr, ptr %l87, !tbaa !29
  call void @compiler_2feffects_2eMerge(ptr %v0, ptr %s9, ptr %t189, ptr %l92)
  br label %bb42
bb42:
  call void @__olang_scope_close(ptr %s9)
  br label %bb51
bb43:
  store i1 true, ptr %l97, !tbaa !21
  br label %bb45
bb44:
  %t191 = load i64, ptr %l6, !tbaa !24
  %t192 = load i64, ptr @G_2ecompiler_2feffects_2eGivResult, !tbaa !24
  %t195 = icmp eq i64 %t191, %t192
  store i1 %t195, ptr %l97, !tbaa !21
  br label %bb45
bb45:
  %t197 = load i1, ptr %l97, !tbaa !21
  br i1 %t197, label %bb46, label %bb47
bb46:
  store %olang.scope zeroinitializer, ptr %s11
  %t198 = load ptr, ptr %l0, !tbaa !29
  %t200 = getelementptr %"compiler/effects:Effects", ptr %t198, i32 0, i32 25
  store ptr %t200, ptr %l102, !tbaa !29
  %t201 = load i64, ptr %l6, !tbaa !24
  %t202 = getelementptr %"compiler/effects:part", ptr %l5, i32 0, i32 1
  %t203 = load i64, ptr %t202, !tbaa !24
  %t204 = getelementptr %"compiler/effects:part", ptr %l5, i32 0, i32 2
  %t205 = load i32, ptr %t204, !tbaa !23
  %t209 = call %"compiler/effects:given" @compiler_2feffects_3agiven_2ector(ptr %s11, i64 -1, i64 0, i64 %t201, i64 %t203, i32 %t205)
  store %"compiler/effects:given" %t209, ptr %l106
  br label %bb48
bb47:
  br label %bb50
bb48:
  %t210 = load ptr, ptr %l102, !tbaa !29
  %t211 = load %"compiler/effects:given", ptr %l106
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3agiven_3e_2ePush_3ccompiler_2feffects_3agiven_3e(ptr %v0, ptr %t210, %"compiler/effects:given" %t211)
  br label %bb49
bb49:
  call void @__olang_scope_close(ptr %s11)
  br label %bb50
bb50:
  br label %bb51
bb51:
  br label %bb52
bb52:
  br label %bb53
bb53:
  %t212 = load i64, ptr %l4, !tbaa !24
  %t214 = add i64 %t212, 1
  store i64 %t214, ptr %l4, !tbaa !24
  br label %bb7
bb54:
  %t216 = load i1, ptr %l2, !tbaa !21
  br i1 %t216, label %bb55, label %bb56
bb55:
  store i1 true, ptr %l110, !tbaa !21
  br label %bb58
bb56:
  %t218 = load ptr, ptr %l0, !tbaa !29
  %t220 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ewhyNow(ptr %v0, ptr %t218)
  store i1 %t220, ptr %l112
  br label %bb57
bb57:
  %t221 = load i1, ptr %l112, !tbaa !21
  %t222 = xor i1 %t221, true
  store i1 %t222, ptr %l110, !tbaa !21
  br label %bb58
bb58:
  %t224 = load i1, ptr %l110, !tbaa !21
  br i1 %t224, label %bb59, label %bb60
bb59:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb60:
  br label %bb61
bb61:
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t227 = call { i64, ptr } @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ewhyDoes(ptr %v0, ptr %s0, ptr %t225)
  store { i64, ptr } %t227, ptr %l115
  br label %bb62
bb62:
  %t228 = load { i64, ptr }, ptr %l115, !tbaa !27
  store { i64, ptr } %t228, ptr %l7, !tbaa !27
  %t229 = load ptr, ptr %l0, !tbaa !29
  store ptr %t229, ptr %l116, !tbaa !29
  %t230 = load ptr, ptr %l1, !tbaa !29
  %t232 = getelementptr %"compiler/effects:pend", ptr %t230, i32 0, i32 2
  %t233 = load ptr, ptr %t232, !tbaa !29
  %t235 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t233)
  store %"compiler/source:Span" %t235, ptr %l119
  br label %bb63
bb63:
  %t236 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t238 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s0, { i64, ptr } %t236, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d55, i32 0, i32 1) })
  store i1 %t238, ptr %l121
  br label %bb64
bb64:
  %t239 = load i1, ptr %l121, !tbaa !21
  br i1 %t239, label %bb65, label %bb66
bb65:
  store { i64, ptr } { i64 75, ptr getelementptr inbounds (<{ i64, [75 x i8] }>, ptr @.d56, i32 0, i32 1) }, ptr %l122, !tbaa !27
  br label %bb67
bb66:
  %t240 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t241 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d57, i32 0, i32 1) }, 1
  %t242 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d57, i32 0, i32 1) }, 0
  %t244 = extractvalue { i64, ptr } %t240, 1
  %t245 = extractvalue { i64, ptr } %t240, 0
  %t246 = add i64 %t242, %t245
  %t247 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t246)
  call void @olang_textcopy(ptr %t247, ptr %t241, i64 %t242)
  %t248 = getelementptr i8, ptr %t247, i64 %t242
  call void @olang_textcopy(ptr %t248, ptr %t244, i64 %t245)
  %t249 = insertvalue { i64, ptr } undef, i64 %t246, 0
  %t250 = insertvalue { i64, ptr } %t249, ptr %t247, 1
  %t252 = extractvalue { i64, ptr } %t250, 0
  %t253 = extractvalue { i64, ptr } %t250, 1
  %t254 = mul i64 %t252, 1
  %t255 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t254)
  call void @llvm.memcpy.p0.p0.i64(ptr %t255, ptr %t253, i64 %t254, i1 false)
  %t256 = insertvalue { i64, ptr } undef, i64 %t252, 0
  %t257 = insertvalue { i64, ptr } %t256, ptr %t255, 1
  store { i64, ptr } %t257, ptr %l122, !tbaa !27
  br label %bb67
bb67:
  %t259 = load ptr, ptr %l116, !tbaa !29
  %t260 = load %"compiler/source:Span", ptr %l119
  %t261 = load { i64, ptr }, ptr %l122, !tbaa !27
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ebecause(ptr %v0, ptr %s0, ptr %t259, %"compiler/source:Span" %t260, { i64, ptr } %t261)
  br label %bb68
bb68:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2erootBits(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca i64
  %l15 = alloca ptr
  %l16 = alloca i1
  %l25 = alloca i64
  %l26 = alloca ptr
  %l34 = alloca i64
  %l35 = alloca i64
  %l41 = alloca i64
  %l43 = alloca ptr
  %l44 = alloca i1
  %l57 = alloca { i64, ptr }
  %l64 = alloca i64
  %l65 = alloca ptr
  %l73 = alloca i64
  %l80 = alloca i64
  %l81 = alloca i64
  %l85 = alloca i64
  %l86 = alloca i32
  %l87 = alloca i64
  %l88 = alloca i64
  %l92 = alloca i64
  %l93 = alloca i32
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = icmp sgt i64 %t1, 16
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i64 0, ptr %rv
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
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 18}
  %t13 = icmp eq i64 %t11, 11
  store i1 %t13, ptr %l16, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l16, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr { i64, [5 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t17, i32 0, i32 2
  %t19 = load ptr, ptr %t18
  store ptr %t19, ptr %l3, !tbaa !29
  br label %bb8
bb7:
  br label %bb17
bb8:
  %t21 = load ptr, ptr %l3, !tbaa !29
  %t23 = getelementptr %"compiler/typed:Cond", ptr %t21, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t26 = icmp eq ptr %t24, null
  %t28 = xor i1 %t26, true
  br i1 %t28, label %bb9, label %bb10
bb9:
  %t30 = load ptr, ptr %l0, !tbaa !29
  store ptr %t30, ptr %l26, !tbaa !29
  %t31 = load ptr, ptr %l3, !tbaa !29
  %t33 = getelementptr %"compiler/typed:Cond", ptr %t31, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t36 = icmp eq ptr %t34, null
  br i1 %t36, label %bb11, label %bb12
bb10:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb15
bb11:
  call void @__olang_check_failed(ptr @olang_loc_e883a08fe0a2dfcb_10d50552a173805f)
  unreachable
bb12:
  br label %bb13
bb13:
  %t38 = load ptr, ptr %l3, !tbaa !29
  %t40 = getelementptr %"compiler/typed:Cond", ptr %t38, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t42 = load i64, ptr %l2, !tbaa !24
  %t44 = add i64 %t42, 1
  %t45 = load ptr, ptr %l26, !tbaa !29
  %t48 = call i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2erootBits(ptr %v0, ptr %v1, ptr %t45, ptr %t41, i64 %t44)
  store i64 %t48, ptr %l34
  br label %bb14
bb14:
  %t49 = load i64, ptr %l34, !tbaa !24
  store i64 %t49, ptr %l25, !tbaa !24
  br label %bb15
bb15:
  %t50 = load i64, ptr %l25, !tbaa !24
  store i64 %t50, ptr %l35, !tbaa !24
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load ptr, ptr %l3, !tbaa !29
  %t55 = getelementptr %"compiler/typed:Cond", ptr %t53, i32 0, i32 2
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t57 = load i64, ptr %l2, !tbaa !24
  %t59 = add i64 %t57, 1
  %t63 = call i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2erootBits(ptr %v0, ptr %v1, ptr %t52, ptr %t56, i64 %t59)
  store i64 %t63, ptr %l41
  br label %bb16
bb16:
  %t64 = load i64, ptr %l35, !tbaa !24
  %t65 = load i64, ptr %l41, !tbaa !24
  %t66 = or i64 %t64, %t65
  store i64 %t66, ptr %rv
  br label %ret
bb17:
  %t68 = load ptr, ptr %l1, !tbaa !29
  store ptr %t68, ptr %l43, !tbaa !29
  store i1 false, ptr %l44, !tbaa !21
  %t69 = load ptr, ptr %l43, !tbaa !29
  %t70 = icmp ne ptr %t69, null
  br i1 %t70, label %bb18, label %bb19
bb18:
  %t72 = load ptr, ptr %l43, !tbaa !29
  %t73 = load i64, ptr %t72, !range !{i64 0, i64 18}
  %t75 = icmp eq i64 %t73, 13
  store i1 %t75, ptr %l44, !tbaa !21
  br label %bb19
bb19:
  %t76 = load i1, ptr %l44, !tbaa !21
  br i1 %t76, label %bb20, label %bb21
bb20:
  %t77 = load ptr, ptr %l1, !tbaa !29
  %t79 = getelementptr { i64, [5 x i64] }, ptr %t77, i32 0, i32 1
  %t80 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t79, i32 0, i32 2
  %t81 = load ptr, ptr %t80
  store ptr %t81, ptr %l5, !tbaa !29
  br label %bb22
bb21:
  br label %bb36
bb22:
  store i64 0, ptr %l6, !tbaa !24
  %t83 = load ptr, ptr %l5, !tbaa !29
  %t85 = getelementptr %"compiler/typed:Match", ptr %t83, i32 0, i32 1
  %t86 = load { i64, ptr }, ptr %t85, !tbaa !27
  store { i64, ptr } %t86, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t88 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t90 = extractvalue { i64, ptr } %t88, 0
  store i64 %t90, ptr %l9, !tbaa !24
  br label %bb23
bb23:
  %t92 = load i64, ptr %l8, !tbaa !24
  %t93 = load i64, ptr %l9, !tbaa !24
  %t96 = icmp slt i64 %t92, %t93
  %t98 = xor i1 %t96, true
  br i1 %t98, label %bb24, label %bb25
bb24:
  br label %bb35
bb25:
  br label %bb26
bb26:
  %t100 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t100, ptr %l57, !tbaa !27
  %t101 = load i64, ptr %l8, !tbaa !24
  %t103 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t104 = load ptr, ptr %t103, !tbaa !27
  %t105 = getelementptr ptr, ptr %t104, i64 %t101
  %t106 = load ptr, ptr %t105, !tbaa !39
  store ptr %t106, ptr %l10, !tbaa !29
  %t108 = load ptr, ptr %l10, !tbaa !29
  %t110 = getelementptr %"compiler/typed:Arm", ptr %t108, i32 0, i32 4
  %t111 = load ptr, ptr %t110, !tbaa !29
  %t113 = icmp eq ptr %t111, null
  %t115 = xor i1 %t113, true
  br i1 %t115, label %bb27, label %bb28
bb27:
  %t117 = load i64, ptr %l6, !tbaa !24
  store i64 %t117, ptr %l64, !tbaa !24
  %t118 = load ptr, ptr %l0, !tbaa !29
  store ptr %t118, ptr %l65, !tbaa !29
  %t119 = load ptr, ptr %l10, !tbaa !29
  %t121 = getelementptr %"compiler/typed:Arm", ptr %t119, i32 0, i32 4
  %t122 = load ptr, ptr %t121, !tbaa !29
  %t124 = icmp eq ptr %t122, null
  br i1 %t124, label %bb29, label %bb30
bb28:
  br label %bb33
bb29:
  call void @__olang_check_failed(ptr @olang_loc_be89c63eecba24dc_20b8a06f464464c0)
  unreachable
bb30:
  br label %bb31
bb31:
  %t126 = load ptr, ptr %l10, !tbaa !29
  %t128 = getelementptr %"compiler/typed:Arm", ptr %t126, i32 0, i32 4
  %t129 = load ptr, ptr %t128, !tbaa !29
  %t130 = load i64, ptr %l2, !tbaa !24
  %t132 = add i64 %t130, 1
  %t133 = load ptr, ptr %l65, !tbaa !29
  %t136 = call i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2erootBits(ptr %v0, ptr %v1, ptr %t133, ptr %t129, i64 %t132)
  store i64 %t136, ptr %l73
  br label %bb32
bb32:
  %t137 = load i64, ptr %l64, !tbaa !24
  %t138 = load i64, ptr %l73, !tbaa !24
  %t139 = or i64 %t137, %t138
  store i64 %t139, ptr %l6, !tbaa !24
  br label %bb33
bb33:
  br label %bb34
bb34:
  %t141 = load i64, ptr %l8, !tbaa !24
  %t143 = add i64 %t141, 1
  store i64 %t143, ptr %l8, !tbaa !24
  br label %bb23
bb35:
  %t145 = load i64, ptr %l6, !tbaa !24
  store i64 %t145, ptr %rv
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
  call void @__olang_check_failed(ptr @olang_loc_da29f57e967b0d58_398b0b5997e9910c)
  unreachable
bb41:
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t148 = load ptr, ptr %l1, !tbaa !29
  %t151 = call i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexprRoot(ptr %v0, ptr %v1, ptr %t147, ptr %t148)
  store i64 %t151, ptr %l80
  br label %bb42
bb42:
  %t152 = load i64, ptr %l80, !tbaa !24
  store i64 %t152, ptr %l11, !tbaa !24
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t155 = getelementptr %"compiler/effects:Effects", ptr %t153, i32 0, i32 26
  %t156 = load i64, ptr %l11, !tbaa !24
  %t159 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t155, i64 %t156)
  %t160 = extractvalue { i32, i64 } %t159, 1
  %t161 = extractvalue { i32, i64 } %t159, 0
  store i32 %t161, ptr %l86
  %t162 = icmp ne i32 %t161, 0
  br i1 %t162, label %bb44, label %ok.163, !prof !99
ok.163:
  store i64 %t160, ptr %l85
  br label %bb43
bb43:
  %t164 = load i64, ptr %l85, !tbaa !24
  store i64 %t164, ptr %l81, !tbaa !24
  br label %bb46
bb44:
  br label %bb45
bb45:
  store i64 -1, ptr %l81, !tbaa !24
  br label %bb46
bb46:
  %t165 = load i64, ptr %l81, !tbaa !24
  %t166 = call i64 @compiler_2feffects_2eparamBit(i64 %t165)
  store i64 %t166, ptr %l87
  br label %bb47
bb47:
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t169 = getelementptr %"compiler/effects:Effects", ptr %t167, i32 0, i32 27
  %t170 = load i64, ptr %l11, !tbaa !24
  %t173 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t169, i64 %t170)
  %t174 = extractvalue { i32, i64 } %t173, 1
  %t175 = extractvalue { i32, i64 } %t173, 0
  store i32 %t175, ptr %l93
  %t176 = icmp ne i32 %t175, 0
  br i1 %t176, label %bb49, label %ok.177, !prof !99
ok.177:
  store i64 %t174, ptr %l92
  br label %bb48
bb48:
  %t178 = load i64, ptr %l92, !tbaa !24
  store i64 %t178, ptr %l88, !tbaa !24
  br label %bb51
bb49:
  br label %bb50
bb50:
  store i64 0, ptr %l88, !tbaa !24
  br label %bb51
bb51:
  %t179 = load i64, ptr %l87, !tbaa !24
  %t180 = load i64, ptr %l88, !tbaa !24
  %t181 = or i64 %t179, %t180
  store i64 %t181, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i32 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eslotType(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l14 = alloca ptr
  %l15 = alloca i64
  %l18 = alloca i64
  %l21 = alloca ptr
  %l25 = alloca i32
  %l27 = alloca %"compiler/typed:Local"
  %l31 = alloca i64
  %l34 = alloca i64
  %l38 = alloca i64
  %l41 = alloca i64
  %l62 = alloca %"compiler/typed:Local"
  %l72 = alloca %"compiler/typed:Local"
  %rv = alloca i32
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/effects:Effects", ptr %a0, i32 0, i32 1
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store ptr %t7, ptr %l14
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l14, !tbaa !29
  store ptr %t8, ptr %l3, !tbaa !29
  %t9 = load i64, ptr %l2, !tbaa !24
  store i64 %t9, ptr %l15, !tbaa !24
  %t10 = load ptr, ptr %l3, !tbaa !29
  %t12 = getelementptr %"compiler/typed:Body", ptr %t10, i32 0, i32 5
  %t14 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t12)
  store i64 %t14, ptr %l18
  br label %bb2
bb2:
  %t15 = load i64, ptr %l15, !tbaa !24
  %t16 = load i64, ptr %l18, !tbaa !24
  %t17 = icmp slt i64 %t15, %t16
  br i1 %t17, label %bb3, label %bb4
bb3:
  %t19 = load ptr, ptr %l3, !tbaa !29
  %t21 = getelementptr %"compiler/typed:Body", ptr %t19, i32 0, i32 7
  store ptr %t21, ptr %l21, !tbaa !29
  %t22 = load ptr, ptr %l3, !tbaa !29
  %t24 = getelementptr %"compiler/typed:Body", ptr %t22, i32 0, i32 5
  %t25 = load i64, ptr %l2, !tbaa !24
  %t28 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t24, i64 %t25)
  store i32 %t28, ptr %l25
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t29 = load i32, ptr %l25, !tbaa !23
  %t30 = sext i32 %t29 to i64
  %t31 = load ptr, ptr %l21, !tbaa !29
  %t33 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t31, i64 %t30)
  store %"compiler/typed:Local" %t33, ptr %l27
  br label %bb6
bb6:
  %t34 = getelementptr %"compiler/typed:Local", ptr %l27, i32 0, i32 2
  %t35 = load i32, ptr %t34, !tbaa !23
  store i32 %t35, ptr %rv
  br label %ret
bb7:
  %t37 = load ptr, ptr %l3, !tbaa !29
  %t39 = getelementptr %"compiler/typed:Body", ptr %t37, i32 0, i32 5
  %t41 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t39)
  store i64 %t41, ptr %l31
  br label %bb8
bb8:
  %t42 = load i64, ptr %l31, !tbaa !24
  store i64 %t42, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  %t43 = load ptr, ptr %l3, !tbaa !29
  %t45 = getelementptr %"compiler/typed:Body", ptr %t43, i32 0, i32 7
  %t47 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t45)
  store i64 %t47, ptr %l34
  br label %bb9
bb9:
  %t48 = load i64, ptr %l34, !tbaa !24
  store i64 %t48, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t49 = load i64, ptr %l6, !tbaa !24
  %t50 = load i64, ptr %l5, !tbaa !24
  %t53 = icmp sgt i64 %t49, %t50
  br i1 %t53, label %bb10, label %bb11
bb10:
  %t55 = load i64, ptr %l7, !tbaa !24
  %t57 = icmp sgt i64 %t55, 0
  br i1 %t57, label %bb12, label %bb13
bb11:
  store i64 0, ptr %l38, !tbaa !24
  br label %bb15
bb12:
  %t59 = load i64, ptr %l6, !tbaa !24
  %t60 = load i64, ptr %l5, !tbaa !24
  %t63 = sub i64 %t59, %t60
  %t64 = load i64, ptr %l7, !tbaa !24
  %t67 = add i64 %t63, %t64
  %t69 = sub i64 %t67, 1
  %t70 = load i64, ptr %l7, !tbaa !24
  %t73 = sdiv i64 %t69, %t70
  store i64 %t73, ptr %l41, !tbaa !24
  br label %bb14
bb13:
  store i64 0, ptr %l41, !tbaa !24
  br label %bb14
bb14:
  %t75 = load i64, ptr %l41, !tbaa !24
  store i64 %t75, ptr %l38, !tbaa !24
  br label %bb15
bb15:
  %t76 = load i64, ptr %l38, !tbaa !24
  store i64 %t76, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb16
bb16:
  %t77 = load i64, ptr %l9, !tbaa !24
  %t78 = load i64, ptr %l8, !tbaa !24
  %t81 = icmp slt i64 %t77, %t78
  %t83 = xor i1 %t81, true
  br i1 %t83, label %bb17, label %bb18
bb17:
  br label %bb29
bb18:
  br label %bb19
bb19:
  %t85 = load i64, ptr %l5, !tbaa !24
  %t86 = load i64, ptr %l9, !tbaa !24
  %t87 = load i64, ptr %l7, !tbaa !24
  %t90 = mul i64 %t86, %t87
  %t93 = add i64 %t85, %t90
  store i64 %t93, ptr %l10, !tbaa !24
  %t95 = load ptr, ptr %l3, !tbaa !29
  %t97 = getelementptr %"compiler/typed:Body", ptr %t95, i32 0, i32 7
  %t98 = load i64, ptr %l10, !tbaa !24
  %t101 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t97, i64 %t98)
  store %"compiler/typed:Local" %t101, ptr %l62
  br label %bb20
bb20:
  %t102 = getelementptr %"compiler/typed:Local", ptr %l62, i32 0, i32 4
  %t103 = load i32, ptr %t102, !range !{i32 0, i32 7}
  %t105 = trunc i64 5 to i32
  %t106 = icmp eq i32 %t103, %t105
  %t108 = xor i1 %t106, true
  br i1 %t108, label %bb21, label %bb22
bb21:
  br label %bb28
bb22:
  br label %bb23
bb23:
  %t110 = load i64, ptr %l4, !tbaa !24
  %t111 = load i64, ptr %l2, !tbaa !24
  %t114 = icmp eq i64 %t110, %t111
  br i1 %t114, label %bb24, label %bb25
bb24:
  %t116 = load ptr, ptr %l3, !tbaa !29
  %t118 = getelementptr %"compiler/typed:Body", ptr %t116, i32 0, i32 7
  %t119 = load i64, ptr %l10, !tbaa !24
  %t122 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t118, i64 %t119)
  store %"compiler/typed:Local" %t122, ptr %l72
  br label %bb26
bb25:
  br label %bb27
bb26:
  %t123 = getelementptr %"compiler/typed:Local", ptr %l72, i32 0, i32 2
  %t124 = load i32, ptr %t123, !tbaa !23
  store i32 %t124, ptr %rv
  br label %ret
bb27:
  %t126 = load i64, ptr %l4, !tbaa !24
  %t128 = add i64 %t126, 1
  store i64 %t128, ptr %l4, !tbaa !24
  br label %bb28
bb28:
  %t130 = load i64, ptr %l9, !tbaa !24
  %t132 = add i64 %t130, 1
  store i64 %t132, ptr %l9, !tbaa !24
  br label %bb16
bb29:
  %t134 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t134, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca ptr
  %l17 = alloca i64
  %l18 = alloca ptr
  %l19 = alloca ptr
  %l20 = alloca ptr
  %l21 = alloca ptr
  %l22 = alloca { i64, ptr }
  %l23 = alloca i64
  %l24 = alloca i64
  %l26 = alloca ptr
  %l27 = alloca { i64, ptr }
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca ptr
  %l31 = alloca i32
  %l32 = alloca { i64, ptr }
  %l33 = alloca i64
  %l34 = alloca i64
  %l36 = alloca ptr
  %l37 = alloca i1
  %l51 = alloca ptr
  %l52 = alloca i1
  %l57 = alloca ptr
  %l58 = alloca i1
  %l66 = alloca ptr
  %l67 = alloca i1
  %l79 = alloca ptr
  %l80 = alloca i1
  %l89 = alloca i1
  %l92 = alloca i1
  %l97 = alloca ptr
  %l98 = alloca i1
  %l114 = alloca ptr
  %l115 = alloca i1
  %l127 = alloca i1
  %l135 = alloca ptr
  %l136 = alloca i1
  %l145 = alloca i1
  %l152 = alloca ptr
  %l153 = alloca i1
  %l160 = alloca ptr
  %l161 = alloca i1
  %l169 = alloca ptr
  %l170 = alloca i1
  %l173 = alloca ptr
  %l174 = alloca i1
  %l177 = alloca ptr
  %l178 = alloca i1
  %l186 = alloca ptr
  %l187 = alloca i1
  %l196 = alloca ptr
  %l198 = alloca i64
  %l201 = alloca i1
  %l205 = alloca i1
  %l209 = alloca ptr
  %l210 = alloca i1
  %l218 = alloca ptr
  %l219 = alloca i1
  %l227 = alloca i1
  %l235 = alloca ptr
  %l236 = alloca i1
  %l254 = alloca { i64, ptr }
  %l261 = alloca ptr
  %l262 = alloca i1
  %l278 = alloca { i64, ptr }
  %l285 = alloca ptr
  %l286 = alloca i1
  %l316 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l36, !tbaa !29
  store i1 false, ptr %l37, !tbaa !21
  %t2 = load ptr, ptr %l36, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l36, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 17}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l37, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l37, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [3 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [3 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t18, i32 0, i32 2
  %t20 = load ptr, ptr %t19
  store ptr %t20, ptr %l3, !tbaa !29
  br label %bb5
bb4:
  br label %bb8
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %t22, ptr %t23)
  br label %bb6
bb6:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load i32, ptr %l2, !tbaa !23
  %t30 = sext i32 %t28 to i64
  %t31 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2edefine(ptr %v0, ptr %v1, ptr %t27, i64 %t30, ptr %t31)
  br label %bb7
bb7:
  br label %bb203
bb8:
  %t35 = load ptr, ptr %l1, !tbaa !29
  store ptr %t35, ptr %l51, !tbaa !29
  store i1 false, ptr %l52, !tbaa !21
  %t36 = load ptr, ptr %l51, !tbaa !29
  %t37 = icmp ne ptr %t36, null
  br i1 %t37, label %bb9, label %bb10
bb9:
  %t39 = load ptr, ptr %l51, !tbaa !29
  %t40 = load i64, ptr %t39, !range !{i64 0, i64 17}
  %t42 = icmp eq i64 %t40, 2
  store i1 %t42, ptr %l52, !tbaa !21
  br label %bb10
bb10:
  %t43 = load i1, ptr %l52, !tbaa !21
  br i1 %t43, label %bb11, label %bb12
bb11:
  %t44 = load ptr, ptr %l1, !tbaa !29
  %t46 = getelementptr { i64, [3 x i64] }, ptr %t44, i32 0, i32 1
  %t47 = getelementptr { %"compiler/source:Span", ptr }, ptr %t46, i32 0, i32 1
  %t48 = load ptr, ptr %t47
  store ptr %t48, ptr %l4, !tbaa !29
  br label %bb17
bb12:
  %t50 = load ptr, ptr %l1, !tbaa !29
  store ptr %t50, ptr %l57, !tbaa !29
  store i1 false, ptr %l58, !tbaa !21
  %t51 = load ptr, ptr %l57, !tbaa !29
  %t52 = icmp ne ptr %t51, null
  br i1 %t52, label %bb13, label %bb14
bb13:
  %t54 = load ptr, ptr %l57, !tbaa !29
  %t55 = load i64, ptr %t54, !range !{i64 0, i64 17}
  %t57 = icmp eq i64 %t55, 15
  store i1 %t57, ptr %l58, !tbaa !21
  br label %bb14
bb14:
  %t58 = load i1, ptr %l58, !tbaa !21
  br i1 %t58, label %bb15, label %bb16
bb15:
  %t59 = load ptr, ptr %l1, !tbaa !29
  %t61 = getelementptr { i64, [3 x i64] }, ptr %t59, i32 0, i32 1
  %t62 = getelementptr { %"compiler/source:Span", ptr }, ptr %t61, i32 0, i32 1
  %t63 = load ptr, ptr %t62
  store ptr %t63, ptr %l4, !tbaa !29
  br label %bb17
bb16:
  br label %bb19
bb17:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %t65, ptr %t66)
  br label %bb18
bb18:
  br label %bb203
bb19:
  %t70 = load ptr, ptr %l1, !tbaa !29
  store ptr %t70, ptr %l66, !tbaa !29
  store i1 false, ptr %l67, !tbaa !21
  %t71 = load ptr, ptr %l66, !tbaa !29
  %t72 = icmp ne ptr %t71, null
  br i1 %t72, label %bb20, label %bb21
bb20:
  %t74 = load ptr, ptr %l66, !tbaa !29
  %t75 = load i64, ptr %t74, !range !{i64 0, i64 17}
  %t77 = icmp eq i64 %t75, 1
  store i1 %t77, ptr %l67, !tbaa !21
  br label %bb21
bb21:
  %t78 = load i1, ptr %l67, !tbaa !21
  br i1 %t78, label %bb22, label %bb23
bb22:
  %t79 = load ptr, ptr %l1, !tbaa !29
  %t81 = getelementptr { i64, [3 x i64] }, ptr %t79, i32 0, i32 1
  %t82 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t81, i32 0, i32 1
  %t83 = load ptr, ptr %t82
  store ptr %t83, ptr %l5, !tbaa !29
  %t85 = load ptr, ptr %l1, !tbaa !29
  %t87 = getelementptr { i64, [3 x i64] }, ptr %t85, i32 0, i32 1
  %t88 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t87, i32 0, i32 2
  %t89 = load ptr, ptr %t88
  store ptr %t89, ptr %l6, !tbaa !29
  br label %bb24
bb23:
  br label %bb46
bb24:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load ptr, ptr %l5, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eplace(ptr %v0, ptr %v1, ptr %t91, ptr %t92, i1 true)
  br label %bb25
bb25:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t96 = load ptr, ptr %l6, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %t95, ptr %t96)
  br label %bb26
bb26:
  %t100 = load ptr, ptr %l5, !tbaa !29
  store ptr %t100, ptr %l79, !tbaa !29
  store i1 false, ptr %l80, !tbaa !21
  %t101 = load ptr, ptr %l79, !tbaa !29
  %t102 = icmp ne ptr %t101, null
  br i1 %t102, label %bb27, label %bb28
bb27:
  %t104 = load ptr, ptr %l79, !tbaa !29
  %t105 = load i64, ptr %t104, !range !{i64 0, i64 8}
  %t107 = icmp eq i64 %t105, 0
  store i1 %t107, ptr %l80, !tbaa !21
  br label %bb28
bb28:
  %t108 = load i1, ptr %l80, !tbaa !21
  br i1 %t108, label %bb29, label %bb30
bb29:
  %t109 = load ptr, ptr %l5, !tbaa !29
  %t111 = getelementptr { i64, [4 x i64] }, ptr %t109, i32 0, i32 1
  %t112 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t111, i32 0, i32 1
  %t113 = load i32, ptr %t112
  store i32 %t113, ptr %l7, !tbaa !23
  %t115 = load ptr, ptr %l5, !tbaa !29
  %t117 = getelementptr { i64, [4 x i64] }, ptr %t115, i32 0, i32 1
  %t118 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t117, i32 0, i32 2
  %t119 = load i32, ptr %t118
  store i32 %t119, ptr %l8, !tbaa !23
  br label %bb31
bb30:
  br label %bb40
bb31:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t123 = getelementptr %"compiler/effects:Effects", ptr %t121, i32 0, i32 2
  %t124 = load i1, ptr %t123, !tbaa !21
  br i1 %t124, label %bb32, label %bb33
bb32:
  store i1 true, ptr %l89, !tbaa !21
  br label %bb35
bb33:
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t127 = load i32, ptr %l7, !tbaa !23
  %t130 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eisFn(ptr %v0, ptr %t126, i32 %t127)
  store i1 %t130, ptr %l92
  br label %bb34
bb34:
  %t131 = load i1, ptr %l92, !tbaa !21
  store i1 %t131, ptr %l89, !tbaa !21
  br label %bb35
bb35:
  %t132 = load i1, ptr %l89, !tbaa !21
  br i1 %t132, label %bb36, label %bb37
bb36:
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t134 = load i32, ptr %l8, !tbaa !23
  %t136 = sext i32 %t134 to i64
  %t137 = load ptr, ptr %l6, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2edefine(ptr %v0, ptr %v1, ptr %t133, i64 %t136, ptr %t137)
  br label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb39
bb39:
  br label %bb45
bb40:
  br i1 true, label %bb41, label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb44
bb43:
  br label %bb45
bb44:
  call void @__olang_check_failed(ptr @olang_loc_cdd9fd819eb1314_592489ef7c054390)
  unreachable
bb45:
  br label %bb203
bb46:
  %t141 = load ptr, ptr %l1, !tbaa !29
  store ptr %t141, ptr %l97, !tbaa !29
  store i1 false, ptr %l98, !tbaa !21
  %t142 = load ptr, ptr %l97, !tbaa !29
  %t143 = icmp ne ptr %t142, null
  br i1 %t143, label %bb47, label %bb48
bb47:
  %t145 = load ptr, ptr %l97, !tbaa !29
  %t146 = load i64, ptr %t145, !range !{i64 0, i64 17}
  %t148 = icmp eq i64 %t146, 3
  store i1 %t148, ptr %l98, !tbaa !21
  br label %bb48
bb48:
  %t149 = load i1, ptr %l98, !tbaa !21
  br i1 %t149, label %bb49, label %bb50
bb49:
  %t150 = load ptr, ptr %l1, !tbaa !29
  %t152 = getelementptr { i64, [3 x i64] }, ptr %t150, i32 0, i32 1
  %t153 = getelementptr { %"compiler/source:Span", ptr }, ptr %t152, i32 0, i32 1
  %t154 = load ptr, ptr %t153
  store ptr %t154, ptr %l9, !tbaa !29
  br label %bb51
bb50:
  br label %bb55
bb51:
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t157 = load ptr, ptr %l9, !tbaa !29
  %t159 = getelementptr %"compiler/typed:If", ptr %t157, i32 0, i32 0
  %t160 = load ptr, ptr %t159, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %t156, ptr %t160)
  br label %bb52
bb52:
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t165 = load ptr, ptr %l9, !tbaa !29
  %t167 = getelementptr %"compiler/typed:If", ptr %t165, i32 0, i32 1
  %t168 = load ptr, ptr %t167, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eblock(ptr %v0, ptr %v1, ptr %t164, ptr %t168)
  br label %bb53
bb53:
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t173 = load ptr, ptr %l9, !tbaa !29
  %t175 = getelementptr %"compiler/typed:If", ptr %t173, i32 0, i32 2
  %t176 = load ptr, ptr %t175, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eblock(ptr %v0, ptr %v1, ptr %t172, ptr %t176)
  br label %bb54
bb54:
  br label %bb203
bb55:
  %t179 = load ptr, ptr %l1, !tbaa !29
  store ptr %t179, ptr %l114, !tbaa !29
  store i1 false, ptr %l115, !tbaa !21
  %t180 = load ptr, ptr %l114, !tbaa !29
  %t181 = icmp ne ptr %t180, null
  br i1 %t181, label %bb56, label %bb57
bb56:
  %t183 = load ptr, ptr %l114, !tbaa !29
  %t184 = load i64, ptr %t183, !range !{i64 0, i64 17}
  %t186 = icmp eq i64 %t184, 4
  store i1 %t186, ptr %l115, !tbaa !21
  br label %bb57
bb57:
  %t187 = load i1, ptr %l115, !tbaa !21
  br i1 %t187, label %bb58, label %bb59
bb58:
  %t188 = load ptr, ptr %l1, !tbaa !29
  %t190 = getelementptr { i64, [3 x i64] }, ptr %t188, i32 0, i32 1
  %t191 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t190, i32 0, i32 1
  %t192 = load ptr, ptr %t191
  store ptr %t192, ptr %l10, !tbaa !29
  %t194 = load ptr, ptr %l1, !tbaa !29
  %t196 = getelementptr { i64, [3 x i64] }, ptr %t194, i32 0, i32 1
  %t197 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t196, i32 0, i32 2
  %t198 = load ptr, ptr %t197
  store ptr %t198, ptr %l11, !tbaa !29
  br label %bb60
bb59:
  br label %bb67
bb60:
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t202 = getelementptr %"compiler/effects:Effects", ptr %t200, i32 0, i32 28
  %t203 = load ptr, ptr %l10, !tbaa !29
  %t205 = getelementptr %"compiler/typed:Block", ptr %t203, i32 0, i32 0
  %t206 = load i32, ptr %t205, !tbaa !23
  %t208 = sext i32 %t206 to i64
  %t211 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t202, i64 %t208)
  store i1 %t211, ptr %l127
  br label %bb61
bb61:
  %t212 = load i1, ptr %l127, !tbaa !21
  %t213 = xor i1 %t212, true
  br i1 %t213, label %bb62, label %bb63
bb62:
  %t215 = load ptr, ptr %l0, !tbaa !29
  %t217 = getelementptr %"compiler/effects:Effects", ptr %t215, i32 0, i32 22
  %t218 = getelementptr %"compiler/effects:Facts", ptr %t217, i32 0, i32 8
  store i1 true, ptr %t218, !tbaa !21
  br label %bb64
bb63:
  br label %bb64
bb64:
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t220 = load ptr, ptr %l10, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eblock(ptr %v0, ptr %v1, ptr %t219, ptr %t220)
  br label %bb65
bb65:
  %t224 = load ptr, ptr %l0, !tbaa !29
  %t225 = load ptr, ptr %l11, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eblock(ptr %v0, ptr %v1, ptr %t224, ptr %t225)
  br label %bb66
bb66:
  br label %bb203
bb67:
  %t228 = load ptr, ptr %l1, !tbaa !29
  store ptr %t228, ptr %l135, !tbaa !29
  store i1 false, ptr %l136, !tbaa !21
  %t229 = load ptr, ptr %l135, !tbaa !29
  %t230 = icmp ne ptr %t229, null
  br i1 %t230, label %bb68, label %bb69
bb68:
  %t232 = load ptr, ptr %l135, !tbaa !29
  %t233 = load i64, ptr %t232, !range !{i64 0, i64 17}
  %t235 = icmp eq i64 %t233, 6
  store i1 %t235, ptr %l136, !tbaa !21
  br label %bb69
bb69:
  %t236 = load i1, ptr %l136, !tbaa !21
  br i1 %t236, label %bb70, label %bb71
bb70:
  %t237 = load ptr, ptr %l1, !tbaa !29
  %t239 = getelementptr { i64, [3 x i64] }, ptr %t237, i32 0, i32 1
  %t240 = getelementptr { %"compiler/source:Span", ptr }, ptr %t239, i32 0, i32 1
  %t241 = load ptr, ptr %t240
  store ptr %t241, ptr %l12, !tbaa !29
  br label %bb72
bb71:
  br label %bb81
bb72:
  %t243 = load ptr, ptr %l0, !tbaa !29
  %t244 = load ptr, ptr %l12, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %t243, ptr %t244)
  br label %bb73
bb73:
  %t247 = load ptr, ptr %l0, !tbaa !29
  %t249 = getelementptr %"compiler/effects:Effects", ptr %t247, i32 0, i32 40
  %t250 = load i1, ptr %t249, !tbaa !21
  br i1 %t250, label %bb74, label %bb75
bb74:
  %t252 = load ptr, ptr %l12, !tbaa !29
  %t254 = icmp eq ptr %t252, null
  %t256 = xor i1 %t254, true
  store i1 %t256, ptr %l145, !tbaa !21
  br label %bb76
bb75:
  store i1 false, ptr %l145, !tbaa !21
  br label %bb76
bb76:
  %t258 = load i1, ptr %l145, !tbaa !21
  br i1 %t258, label %bb77, label %bb78
bb77:
  %t259 = load ptr, ptr %l0, !tbaa !29
  %t261 = getelementptr %"compiler/effects:Effects", ptr %t259, i32 0, i32 41
  %t262 = load ptr, ptr %l12, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %t261, ptr %t262)
  br label %bb79
bb78:
  br label %bb80
bb79:
  br label %bb80
bb80:
  br label %bb203
bb81:
  %t265 = load ptr, ptr %l1, !tbaa !29
  store ptr %t265, ptr %l152, !tbaa !29
  store i1 false, ptr %l153, !tbaa !21
  %t266 = load ptr, ptr %l152, !tbaa !29
  %t267 = icmp ne ptr %t266, null
  br i1 %t267, label %bb82, label %bb83
bb82:
  %t269 = load ptr, ptr %l152, !tbaa !29
  %t270 = load i64, ptr %t269, !range !{i64 0, i64 17}
  %t272 = icmp eq i64 %t270, 16
  store i1 %t272, ptr %l153, !tbaa !21
  br label %bb83
bb83:
  %t273 = load i1, ptr %l153, !tbaa !21
  br i1 %t273, label %bb84, label %bb85
bb84:
  %t274 = load ptr, ptr %l1, !tbaa !29
  %t276 = getelementptr { i64, [3 x i64] }, ptr %t274, i32 0, i32 1
  %t277 = getelementptr { %"compiler/source:Span", ptr }, ptr %t276, i32 0, i32 1
  %t278 = load ptr, ptr %t277
  store ptr %t278, ptr %l13, !tbaa !29
  br label %bb86
bb85:
  br label %bb88
bb86:
  %t280 = load ptr, ptr %l0, !tbaa !29
  %t281 = load ptr, ptr %l13, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %t280, ptr %t281)
  br label %bb87
bb87:
  br label %bb203
bb88:
  %t284 = load ptr, ptr %l1, !tbaa !29
  store ptr %t284, ptr %l160, !tbaa !29
  store i1 false, ptr %l161, !tbaa !21
  %t285 = load ptr, ptr %l160, !tbaa !29
  %t286 = icmp ne ptr %t285, null
  br i1 %t286, label %bb89, label %bb90
bb89:
  %t288 = load ptr, ptr %l160, !tbaa !29
  %t289 = load i64, ptr %t288, !range !{i64 0, i64 17}
  %t291 = icmp eq i64 %t289, 8
  store i1 %t291, ptr %l161, !tbaa !21
  br label %bb90
bb90:
  %t292 = load i1, ptr %l161, !tbaa !21
  br i1 %t292, label %bb91, label %bb92
bb91:
  %t293 = load ptr, ptr %l1, !tbaa !29
  %t295 = getelementptr { i64, [3 x i64] }, ptr %t293, i32 0, i32 1
  %t296 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t295, i32 0, i32 1
  %t297 = load ptr, ptr %t296
  store ptr %t297, ptr %l14, !tbaa !29
  br label %bb93
bb92:
  br label %bb95
bb93:
  %t299 = load ptr, ptr %l0, !tbaa !29
  %t300 = load ptr, ptr %l14, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %t299, ptr %t300)
  br label %bb94
bb94:
  br label %bb203
bb95:
  %t304 = load ptr, ptr %l1, !tbaa !29
  store ptr %t304, ptr %l169, !tbaa !29
  store i1 false, ptr %l170, !tbaa !21
  %t305 = load ptr, ptr %l169, !tbaa !29
  %t306 = icmp ne ptr %t305, null
  br i1 %t306, label %bb96, label %bb97
bb96:
  %t308 = load ptr, ptr %l169, !tbaa !29
  %t309 = load i64, ptr %t308, !range !{i64 0, i64 17}
  %t311 = icmp eq i64 %t309, 5
  store i1 %t311, ptr %l170, !tbaa !21
  br label %bb97
bb97:
  %t312 = load i1, ptr %l170, !tbaa !21
  br i1 %t312, label %bb98, label %bb99
bb98:
  br label %bb104
bb99:
  %t313 = load ptr, ptr %l1, !tbaa !29
  store ptr %t313, ptr %l173, !tbaa !29
  store i1 false, ptr %l174, !tbaa !21
  %t314 = load ptr, ptr %l173, !tbaa !29
  %t315 = icmp ne ptr %t314, null
  br i1 %t315, label %bb100, label %bb101
bb100:
  %t317 = load ptr, ptr %l173, !tbaa !29
  %t318 = load i64, ptr %t317, !range !{i64 0, i64 17}
  %t320 = icmp eq i64 %t318, 7
  store i1 %t320, ptr %l174, !tbaa !21
  br label %bb101
bb101:
  %t321 = load i1, ptr %l174, !tbaa !21
  br i1 %t321, label %bb102, label %bb103
bb102:
  br label %bb104
bb103:
  br label %bb105
bb104:
  br label %bb203
bb105:
  %t322 = load ptr, ptr %l1, !tbaa !29
  store ptr %t322, ptr %l177, !tbaa !29
  store i1 false, ptr %l178, !tbaa !21
  %t323 = load ptr, ptr %l177, !tbaa !29
  %t324 = icmp ne ptr %t323, null
  br i1 %t324, label %bb106, label %bb107
bb106:
  %t326 = load ptr, ptr %l177, !tbaa !29
  %t327 = load i64, ptr %t326, !range !{i64 0, i64 17}
  %t329 = icmp eq i64 %t327, 11
  store i1 %t329, ptr %l178, !tbaa !21
  br label %bb107
bb107:
  %t330 = load i1, ptr %l178, !tbaa !21
  br i1 %t330, label %bb108, label %bb109
bb108:
  %t331 = load ptr, ptr %l1, !tbaa !29
  %t333 = getelementptr { i64, [3 x i64] }, ptr %t331, i32 0, i32 1
  %t334 = getelementptr { %"compiler/source:Span", ptr }, ptr %t333, i32 0, i32 1
  %t335 = load ptr, ptr %t334
  store ptr %t335, ptr %l15, !tbaa !29
  br label %bb110
bb109:
  br label %bb112
bb110:
  %t337 = load ptr, ptr %l0, !tbaa !29
  %t338 = load ptr, ptr %l15, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eblock(ptr %v0, ptr %v1, ptr %t337, ptr %t338)
  br label %bb111
bb111:
  br label %bb203
bb112:
  %t342 = load ptr, ptr %l1, !tbaa !29
  store ptr %t342, ptr %l186, !tbaa !29
  store i1 false, ptr %l187, !tbaa !21
  %t343 = load ptr, ptr %l186, !tbaa !29
  %t344 = icmp ne ptr %t343, null
  br i1 %t344, label %bb113, label %bb114
bb113:
  %t346 = load ptr, ptr %l186, !tbaa !29
  %t347 = load i64, ptr %t346, !range !{i64 0, i64 17}
  %t349 = icmp eq i64 %t347, 12
  store i1 %t349, ptr %l187, !tbaa !21
  br label %bb114
bb114:
  %t350 = load i1, ptr %l187, !tbaa !21
  br i1 %t350, label %bb115, label %bb116
bb115:
  %t351 = load ptr, ptr %l1, !tbaa !29
  %t353 = getelementptr { i64, [3 x i64] }, ptr %t351, i32 0, i32 1
  %t354 = getelementptr { %"compiler/source:Span", ptr }, ptr %t353, i32 0, i32 1
  %t355 = load ptr, ptr %t354
  store ptr %t355, ptr %l16, !tbaa !29
  br label %bb117
bb116:
  br label %bb128
bb117:
  %t357 = load ptr, ptr %l0, !tbaa !29
  %t359 = getelementptr %"compiler/effects:Effects", ptr %t357, i32 0, i32 1
  %t360 = load ptr, ptr %l0, !tbaa !29
  %t362 = getelementptr %"compiler/effects:Effects", ptr %t360, i32 0, i32 30
  %t363 = load i64, ptr %t362, !tbaa !24
  %t366 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t359, i64 %t363)
  store ptr %t366, ptr %l196
  br label %bb118
bb118:
  %t367 = load ptr, ptr %l16, !tbaa !29
  %t368 = load ptr, ptr %l196, !tbaa !29
  %t370 = call i64 @compiler_2ftyped_2eDropFlag(ptr %v0, ptr %v1, ptr %t368, ptr %t367)
  store i64 %t370, ptr %l198
  br label %bb119
bb119:
  %t371 = load i64, ptr %l198, !tbaa !24
  store i64 %t371, ptr %l17, !tbaa !24
  %t372 = load i64, ptr %l17, !tbaa !24
  %t374 = icmp slt i64 %t372, 0
  br i1 %t374, label %bb120, label %bb121
bb120:
  store i1 true, ptr %l201, !tbaa !21
  br label %bb123
bb121:
  %t376 = load ptr, ptr %l0, !tbaa !29
  %t378 = getelementptr %"compiler/effects:Effects", ptr %t376, i32 0, i32 29
  %t379 = load i64, ptr %l17, !tbaa !24
  %t382 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t378, i64 %t379)
  store i1 %t382, ptr %l205
  br label %bb122
bb122:
  %t383 = load i1, ptr %l205, !tbaa !21
  store i1 %t383, ptr %l201, !tbaa !21
  br label %bb123
bb123:
  %t384 = load i1, ptr %l201, !tbaa !21
  br i1 %t384, label %bb124, label %bb125
bb124:
  %t385 = load ptr, ptr %l0, !tbaa !29
  %t386 = load ptr, ptr %l16, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eblock(ptr %v0, ptr %v1, ptr %t385, ptr %t386)
  br label %bb126
bb125:
  br label %bb127
bb126:
  br label %bb127
bb127:
  br label %bb203
bb128:
  %t390 = load ptr, ptr %l1, !tbaa !29
  store ptr %t390, ptr %l209, !tbaa !29
  store i1 false, ptr %l210, !tbaa !21
  %t391 = load ptr, ptr %l209, !tbaa !29
  %t392 = icmp ne ptr %t391, null
  br i1 %t392, label %bb129, label %bb130
bb129:
  %t394 = load ptr, ptr %l209, !tbaa !29
  %t395 = load i64, ptr %t394, !range !{i64 0, i64 17}
  %t397 = icmp eq i64 %t395, 9
  store i1 %t397, ptr %l210, !tbaa !21
  br label %bb130
bb130:
  %t398 = load i1, ptr %l210, !tbaa !21
  br i1 %t398, label %bb131, label %bb132
bb131:
  %t399 = load ptr, ptr %l1, !tbaa !29
  %t401 = getelementptr { i64, [3 x i64] }, ptr %t399, i32 0, i32 1
  %t402 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t401, i32 0, i32 2
  %t403 = load ptr, ptr %t402
  store ptr %t403, ptr %l18, !tbaa !29
  br label %bb133
bb132:
  br label %bb135
bb133:
  %t405 = load ptr, ptr %l0, !tbaa !29
  %t407 = getelementptr %"compiler/effects:Effects", ptr %t405, i32 0, i32 22
  %t408 = getelementptr %"compiler/effects:Facts", ptr %t407, i32 0, i32 15
  store i1 true, ptr %t408, !tbaa !21
  %t409 = load ptr, ptr %l0, !tbaa !29
  %t410 = load ptr, ptr %l18, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %t409, ptr %t410)
  br label %bb134
bb134:
  br label %bb203
bb135:
  %t413 = load ptr, ptr %l1, !tbaa !29
  store ptr %t413, ptr %l218, !tbaa !29
  store i1 false, ptr %l219, !tbaa !21
  %t414 = load ptr, ptr %l218, !tbaa !29
  %t415 = icmp ne ptr %t414, null
  br i1 %t415, label %bb136, label %bb137
bb136:
  %t417 = load ptr, ptr %l218, !tbaa !29
  %t418 = load i64, ptr %t417, !range !{i64 0, i64 17}
  %t420 = icmp eq i64 %t418, 10
  store i1 %t420, ptr %l219, !tbaa !21
  br label %bb137
bb137:
  %t421 = load i1, ptr %l219, !tbaa !21
  br i1 %t421, label %bb138, label %bb139
bb138:
  %t422 = load ptr, ptr %l1, !tbaa !29
  %t424 = getelementptr { i64, [3 x i64] }, ptr %t422, i32 0, i32 1
  %t425 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t424, i32 0, i32 1
  %t426 = load ptr, ptr %t425
  store ptr %t426, ptr %l19, !tbaa !29
  %t428 = load ptr, ptr %l1, !tbaa !29
  %t430 = getelementptr { i64, [3 x i64] }, ptr %t428, i32 0, i32 1
  %t431 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t430, i32 0, i32 2
  %t432 = load ptr, ptr %t431
  store ptr %t432, ptr %l20, !tbaa !29
  br label %bb140
bb139:
  br label %bb147
bb140:
  %t434 = load ptr, ptr %l19, !tbaa !29
  %t436 = call i1 @compiler_2feffects_2elitTrue(ptr %v1, ptr %t434)
  store i1 %t436, ptr %l227
  br label %bb141
bb141:
  %t437 = load i1, ptr %l227, !tbaa !21
  %t438 = xor i1 %t437, true
  br i1 %t438, label %bb142, label %bb143
bb142:
  %t440 = load ptr, ptr %l0, !tbaa !29
  %t442 = getelementptr %"compiler/effects:Effects", ptr %t440, i32 0, i32 22
  %t443 = getelementptr %"compiler/effects:Facts", ptr %t442, i32 0, i32 15
  store i1 true, ptr %t443, !tbaa !21
  br label %bb144
bb143:
  br label %bb144
bb144:
  %t444 = load ptr, ptr %l0, !tbaa !29
  %t445 = load ptr, ptr %l19, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %t444, ptr %t445)
  br label %bb145
bb145:
  %t449 = load ptr, ptr %l0, !tbaa !29
  %t450 = load ptr, ptr %l20, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %t449, ptr %t450)
  br label %bb146
bb146:
  br label %bb203
bb147:
  %t453 = load ptr, ptr %l1, !tbaa !29
  store ptr %t453, ptr %l235, !tbaa !29
  store i1 false, ptr %l236, !tbaa !21
  %t454 = load ptr, ptr %l235, !tbaa !29
  %t455 = icmp ne ptr %t454, null
  br i1 %t455, label %bb148, label %bb149
bb148:
  %t457 = load ptr, ptr %l235, !tbaa !29
  %t458 = load i64, ptr %t457, !range !{i64 0, i64 17}
  %t460 = icmp eq i64 %t458, 13
  store i1 %t460, ptr %l236, !tbaa !21
  br label %bb149
bb149:
  %t461 = load i1, ptr %l236, !tbaa !21
  br i1 %t461, label %bb150, label %bb151
bb150:
  %t462 = load ptr, ptr %l1, !tbaa !29
  %t464 = getelementptr { i64, [3 x i64] }, ptr %t462, i32 0, i32 1
  %t465 = getelementptr { %"compiler/source:Span", ptr }, ptr %t464, i32 0, i32 1
  %t466 = load ptr, ptr %t465
  store ptr %t466, ptr %l21, !tbaa !29
  br label %bb152
bb151:
  br label %bb161
bb152:
  %t468 = load ptr, ptr %l0, !tbaa !29
  %t470 = getelementptr %"compiler/effects:Effects", ptr %t468, i32 0, i32 22
  %t471 = getelementptr %"compiler/effects:Facts", ptr %t470, i32 0, i32 1
  store i1 true, ptr %t471, !tbaa !21
  %t472 = load ptr, ptr %l0, !tbaa !29
  %t473 = load ptr, ptr %l21, !tbaa !29
  %t475 = getelementptr %"compiler/typed:Join", ptr %t473, i32 0, i32 0
  %t476 = load ptr, ptr %t475, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eblock(ptr %v0, ptr %v1, ptr %t472, ptr %t476)
  br label %bb153
bb153:
  %t480 = load ptr, ptr %l21, !tbaa !29
  %t482 = getelementptr %"compiler/typed:Join", ptr %t480, i32 0, i32 2
  %t483 = load { i64, ptr }, ptr %t482, !tbaa !27
  store { i64, ptr } %t483, ptr %l22, !tbaa !27
  store i64 0, ptr %l23, !tbaa !24
  %t485 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t487 = extractvalue { i64, ptr } %t485, 0
  store i64 %t487, ptr %l24, !tbaa !24
  br label %bb154
bb154:
  %t489 = load i64, ptr %l23, !tbaa !24
  %t490 = load i64, ptr %l24, !tbaa !24
  %t493 = icmp slt i64 %t489, %t490
  %t495 = xor i1 %t493, true
  br i1 %t495, label %bb155, label %bb156
bb155:
  br label %bb160
bb156:
  br label %bb157
bb157:
  %t497 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t497, ptr %l254, !tbaa !27
  %t498 = load i64, ptr %l23, !tbaa !24
  %t500 = getelementptr { i64, ptr }, ptr %l254, i32 0, i32 1
  %t501 = load ptr, ptr %t500, !tbaa !27
  %t502 = getelementptr ptr, ptr %t501, i64 %t498
  %t503 = load ptr, ptr %t502, !tbaa !39
  %t505 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eclause(ptr %v0, ptr %v1, ptr %t505, ptr %t503)
  br label %bb158
bb158:
  br label %bb159
bb159:
  %t509 = load i64, ptr %l23, !tbaa !24
  %t511 = add i64 %t509, 1
  store i64 %t511, ptr %l23, !tbaa !24
  br label %bb154
bb160:
  br label %bb203
bb161:
  %t513 = load ptr, ptr %l1, !tbaa !29
  store ptr %t513, ptr %l261, !tbaa !29
  store i1 false, ptr %l262, !tbaa !21
  %t514 = load ptr, ptr %l261, !tbaa !29
  %t515 = icmp ne ptr %t514, null
  br i1 %t515, label %bb162, label %bb163
bb162:
  %t517 = load ptr, ptr %l261, !tbaa !29
  %t518 = load i64, ptr %t517, !range !{i64 0, i64 17}
  %t520 = icmp eq i64 %t518, 14
  store i1 %t520, ptr %l262, !tbaa !21
  br label %bb163
bb163:
  %t521 = load i1, ptr %l262, !tbaa !21
  br i1 %t521, label %bb164, label %bb165
bb164:
  %t522 = load ptr, ptr %l1, !tbaa !29
  %t524 = getelementptr { i64, [3 x i64] }, ptr %t522, i32 0, i32 1
  %t525 = getelementptr { %"compiler/source:Span", ptr }, ptr %t524, i32 0, i32 1
  %t526 = load ptr, ptr %t525
  store ptr %t526, ptr %l26, !tbaa !29
  br label %bb166
bb165:
  br label %bb202
bb166:
  %t528 = load ptr, ptr %l0, !tbaa !29
  %t530 = getelementptr %"compiler/effects:Effects", ptr %t528, i32 0, i32 22
  %t531 = getelementptr %"compiler/effects:Facts", ptr %t530, i32 0, i32 6
  store i1 true, ptr %t531, !tbaa !21
  %t532 = load ptr, ptr %l0, !tbaa !29
  %t533 = load i64, ptr @G_2ecompiler_2feffects_2eCapThreads, !tbaa !24
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ecap(ptr %v0, ptr %t532, i64 %t533)
  br label %bb167
bb167:
  %t536 = load ptr, ptr %l26, !tbaa !29
  %t538 = getelementptr %"compiler/typed:Spawn", ptr %t536, i32 0, i32 0
  %t539 = load { i64, ptr }, ptr %t538, !tbaa !27
  store { i64, ptr } %t539, ptr %l27, !tbaa !27
  store i64 0, ptr %l28, !tbaa !24
  %t541 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t543 = extractvalue { i64, ptr } %t541, 0
  store i64 %t543, ptr %l29, !tbaa !24
  br label %bb168
bb168:
  %t545 = load i64, ptr %l28, !tbaa !24
  %t546 = load i64, ptr %l29, !tbaa !24
  %t549 = icmp slt i64 %t545, %t546
  %t551 = xor i1 %t549, true
  br i1 %t551, label %bb169, label %bb170
bb169:
  br label %bb193
bb170:
  br label %bb171
bb171:
  %t553 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t553, ptr %l278, !tbaa !27
  %t554 = load i64, ptr %l28, !tbaa !24
  %t556 = getelementptr { i64, ptr }, ptr %l278, i32 0, i32 1
  %t557 = load ptr, ptr %t556, !tbaa !27
  %t558 = getelementptr ptr, ptr %t557, i64 %t554
  %t559 = load ptr, ptr %t558, !tbaa !39
  store ptr %t559, ptr %l30, !tbaa !29
  %t561 = load ptr, ptr %l30, !tbaa !29
  %t563 = icmp eq ptr %t561, null
  br i1 %t563, label %bb172, label %bb173
bb172:
  br label %bb192
bb173:
  br label %bb174
bb174:
  %t565 = load ptr, ptr %l0, !tbaa !29
  %t566 = load ptr, ptr %l30, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eplace(ptr %v0, ptr %v1, ptr %t565, ptr %t566, i1 true)
  br label %bb175
bb175:
  %t569 = load ptr, ptr %l30, !tbaa !29
  store ptr %t569, ptr %l285, !tbaa !29
  store i1 false, ptr %l286, !tbaa !21
  %t570 = load ptr, ptr %l285, !tbaa !29
  %t571 = icmp ne ptr %t570, null
  br i1 %t571, label %bb176, label %bb177
bb176:
  %t573 = load ptr, ptr %l285, !tbaa !29
  %t574 = load i64, ptr %t573, !range !{i64 0, i64 8}
  %t576 = icmp eq i64 %t574, 0
  store i1 %t576, ptr %l286, !tbaa !21
  br label %bb177
bb177:
  %t577 = load i1, ptr %l286, !tbaa !21
  br i1 %t577, label %bb178, label %bb179
bb178:
  %t578 = load ptr, ptr %l30, !tbaa !29
  %t580 = getelementptr { i64, [4 x i64] }, ptr %t578, i32 0, i32 1
  %t581 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t580, i32 0, i32 2
  %t582 = load i32, ptr %t581
  store i32 %t582, ptr %l31, !tbaa !23
  br label %bb180
bb179:
  br label %bb186
bb180:
  %t584 = load ptr, ptr %l0, !tbaa !29
  %t586 = getelementptr %"compiler/effects:Effects", ptr %t584, i32 0, i32 35
  %t587 = load i32, ptr %l31, !tbaa !23
  %t589 = sext i32 %t587 to i64
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t586, i64 %t589, i1 true)
  br label %bb181
bb181:
  %t592 = load ptr, ptr %l0, !tbaa !29
  %t594 = getelementptr %"compiler/effects:Effects", ptr %t592, i32 0, i32 2
  %t595 = load i1, ptr %t594, !tbaa !21
  br i1 %t595, label %bb182, label %bb183
bb182:
  %t597 = load ptr, ptr %l0, !tbaa !29
  %t599 = getelementptr %"compiler/effects:Effects", ptr %t597, i32 0, i32 36
  %t600 = load i32, ptr %l31, !tbaa !23
  %t602 = sext i32 %t600 to i64
  %t604 = mul i64 2, %t602
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t599, i64 %t604)
  br label %bb184
bb183:
  br label %bb185
bb184:
  br label %bb185
bb185:
  br label %bb191
bb186:
  br i1 true, label %bb187, label %bb188
bb187:
  br label %bb189
bb188:
  br label %bb190
bb189:
  br label %bb191
bb190:
  call void @__olang_check_failed(ptr @olang_loc_3acda3f4ede143c5_a4a37c6d9d693e21)
  unreachable
bb191:
  br label %bb192
bb192:
  %t607 = load i64, ptr %l28, !tbaa !24
  %t609 = add i64 %t607, 1
  store i64 %t609, ptr %l28, !tbaa !24
  br label %bb168
bb193:
  %t611 = load ptr, ptr %l0, !tbaa !29
  %t612 = load ptr, ptr %l26, !tbaa !29
  %t614 = getelementptr %"compiler/typed:Spawn", ptr %t612, i32 0, i32 1
  %t615 = load ptr, ptr %t614, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %t611, ptr %t615)
  br label %bb194
bb194:
  %t619 = load ptr, ptr %l26, !tbaa !29
  %t621 = getelementptr %"compiler/typed:Spawn", ptr %t619, i32 0, i32 2
  %t622 = load { i64, ptr }, ptr %t621, !tbaa !27
  store { i64, ptr } %t622, ptr %l32, !tbaa !27
  store i64 0, ptr %l33, !tbaa !24
  %t624 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t626 = extractvalue { i64, ptr } %t624, 0
  store i64 %t626, ptr %l34, !tbaa !24
  br label %bb195
bb195:
  %t628 = load i64, ptr %l33, !tbaa !24
  %t629 = load i64, ptr %l34, !tbaa !24
  %t632 = icmp slt i64 %t628, %t629
  %t634 = xor i1 %t632, true
  br i1 %t634, label %bb196, label %bb197
bb196:
  br label %bb201
bb197:
  br label %bb198
bb198:
  %t636 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t636, ptr %l316, !tbaa !27
  %t637 = load i64, ptr %l33, !tbaa !24
  %t639 = getelementptr { i64, ptr }, ptr %l316, i32 0, i32 1
  %t640 = load ptr, ptr %t639, !tbaa !27
  %t641 = getelementptr ptr, ptr %t640, i64 %t637
  %t642 = load ptr, ptr %t641, !tbaa !39
  %t644 = load ptr, ptr %l0, !tbaa !29
  %t647 = getelementptr %"compiler/typed:TaskClause", ptr %t642, i32 0, i32 3
  %t648 = load ptr, ptr %t647, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %t644, ptr %t648)
  br label %bb199
bb199:
  br label %bb200
bb200:
  %t651 = load i64, ptr %l33, !tbaa !24
  %t653 = add i64 %t651, 1
  store i64 %t653, ptr %l33, !tbaa !24
  br label %bb195
bb201:
  br label %bb203
bb202:
  call void @__olang_check_failed(ptr @olang_loc_da35c31532ef850e_8e7d78b8065e228a)
  unreachable
bb203:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2etakesFn(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l8 = alloca i1
  %l9 = alloca i64
  %l12 = alloca i64
  %l18 = alloca i64
  %l26 = alloca ptr
  %l29 = alloca i64
  %l31 = alloca i64
  %l36 = alloca i32
  %l37 = alloca ptr
  %l42 = alloca %"compiler/typed:Local"
  %l44 = alloca i1
  %l53 = alloca i64
  %rv = alloca i1
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
  store i1 true, ptr %l8, !tbaa !21
  br label %bb4
bb2:
  %t5 = load i64, ptr %l1, !tbaa !24
  store i64 %t5, ptr %l9, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/effects:Effects", ptr %t6, i32 0, i32 1
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l12
  br label %bb3
bb3:
  %t11 = load i64, ptr %l9, !tbaa !24
  %t12 = load i64, ptr %l12, !tbaa !24
  %t13 = icmp sge i64 %t11, %t12
  store i1 %t13, ptr %l8, !tbaa !21
  br label %bb4
bb4:
  %t15 = load i1, ptr %l8, !tbaa !21
  br i1 %t15, label %bb5, label %bb6
bb5:
  store i1 true, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/effects:Effects", ptr %t17, i32 0, i32 10
  %t20 = load i64, ptr %l1, !tbaa !24
  %t23 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t19, i64 %t20)
  store i64 %t23, ptr %l18
  br label %bb8
bb8:
  %t24 = load i64, ptr %l18, !tbaa !24
  %t25 = icmp slt i64 %t24, 0
  br i1 %t25, label %bb9, label %bb10
bb9:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/effects:Effects", ptr %t27, i32 0, i32 10
  %t30 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t29, i64 %t30, i64 0)
  br label %bb11
bb10:
  br label %bb27
bb11:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/effects:Effects", ptr %t33, i32 0, i32 1
  %t36 = load i64, ptr %l1, !tbaa !24
  %t39 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t35, i64 %t36)
  store ptr %t39, ptr %l26
  br label %bb12
bb12:
  %t40 = load ptr, ptr %l26, !tbaa !29
  store ptr %t40, ptr %l2, !tbaa !29
  %t41 = load ptr, ptr %l2, !tbaa !29
  %t43 = getelementptr %"compiler/typed:Body", ptr %t41, i32 0, i32 5
  store ptr %t43, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb13
bb13:
  %t45 = load i64, ptr %l4, !tbaa !24
  store i64 %t45, ptr %l29, !tbaa !24
  %t46 = load ptr, ptr %l3, !tbaa !29
  %t48 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t46)
  store i64 %t48, ptr %l31
  br label %bb14
bb14:
  %t49 = load i64, ptr %l29, !tbaa !24
  %t50 = load i64, ptr %l31, !tbaa !24
  %t51 = icmp slt i64 %t49, %t50
  %t53 = xor i1 %t51, true
  br i1 %t53, label %bb15, label %bb16
bb15:
  br label %bb26
bb16:
  br label %bb17
bb17:
  %t55 = load ptr, ptr %l3, !tbaa !29
  %t56 = load i64, ptr %l4, !tbaa !24
  %t59 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t55, i64 %t56)
  store i32 %t59, ptr %l36
  br label %bb18
bb18:
  %t60 = load i32, ptr %l36, !tbaa !23
  %t61 = load ptr, ptr %l0, !tbaa !29
  store ptr %t61, ptr %l37, !tbaa !29
  %t62 = load ptr, ptr %l2, !tbaa !29
  %t64 = getelementptr %"compiler/typed:Body", ptr %t62, i32 0, i32 7
  %t67 = sext i32 %t60 to i64
  %t70 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t64, i64 %t67)
  store %"compiler/typed:Local" %t70, ptr %l42
  br label %bb19
bb19:
  %t71 = getelementptr %"compiler/typed:Local", ptr %l42, i32 0, i32 2
  %t72 = load i32, ptr %t71, !tbaa !23
  %t73 = load ptr, ptr %l37, !tbaa !29
  %t75 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eisFn(ptr %v0, ptr %t73, i32 %t72)
  store i1 %t75, ptr %l44
  br label %bb20
bb20:
  %t76 = load i1, ptr %l44, !tbaa !21
  br i1 %t76, label %bb21, label %bb22
bb21:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/effects:Effects", ptr %t77, i32 0, i32 10
  %t80 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t79, i64 %t80, i64 1)
  br label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t83 = load i64, ptr %l4, !tbaa !24
  %t85 = add i64 %t83, 1
  store i64 %t85, ptr %l4, !tbaa !24
  br label %bb13
bb26:
  br label %bb27
bb27:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/effects:Effects", ptr %t87, i32 0, i32 10
  %t90 = load i64, ptr %l1, !tbaa !24
  %t93 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t89, i64 %t90)
  store i64 %t93, ptr %l53
  br label %bb28
bb28:
  %t94 = load i64, ptr %l53, !tbaa !24
  %t95 = icmp eq i64 %t94, 1
  store i1 %t95, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ethroughBounds(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/effects:Facts"
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca i64
  %l9 = alloca %"compiler/effects:Facts"
  %l11 = alloca i64
  %l13 = alloca i64
  %l18 = alloca i64
  %l21 = alloca i1
  %l22 = alloca ptr
  %l25 = alloca %"compiler/effects:Facts"
  %l30 = alloca i64
  %l32 = alloca i64
  %l37 = alloca i64
  %l41 = alloca ptr
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"compiler/effects:Facts" @compiler_2feffects_3aFacts_2ector(ptr %s0)
  store %"compiler/effects:Facts" %t1, ptr %l9
  br label %bb1
bb1:
  %t2 = load %"compiler/effects:Facts", ptr %l9
  store %"compiler/effects:Facts" %t2, ptr %l2
  %t3 = load ptr, ptr %l1, !tbaa !29
  store ptr %t3, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t5 = load i64, ptr %l4, !tbaa !24
  store i64 %t5, ptr %l11, !tbaa !24
  %t6 = load ptr, ptr %l3, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t6)
  store i64 %t8, ptr %l13
  br label %bb3
bb3:
  %t9 = load i64, ptr %l11, !tbaa !24
  %t10 = load i64, ptr %l13, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb4, label %bb5
bb4:
  br label %bb15
bb5:
  br label %bb6
bb6:
  %t15 = load ptr, ptr %l3, !tbaa !29
  %t16 = load i64, ptr %l4, !tbaa !24
  %t19 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t15, i64 %t16)
  store i64 %t19, ptr %l18
  br label %bb7
bb7:
  %t20 = load i64, ptr %l18, !tbaa !24
  store i64 %t20, ptr %l5, !tbaa !24
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load i64, ptr %l5, !tbaa !24
  %t25 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ecallsThrough(ptr %v0, ptr %t21, i64 %t22)
  store i1 %t25, ptr %l21
  br label %bb8
bb8:
  %t26 = load i1, ptr %l21, !tbaa !21
  br i1 %t26, label %bb9, label %bb10
bb9:
  store %olang.scope zeroinitializer, ptr %s3
  store ptr %l2, ptr %l22, !tbaa !29
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load i64, ptr %l5, !tbaa !24
  %t31 = call %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ebounds(ptr %v0, ptr %t27, i64 %t28)
  store %"compiler/effects:Facts" %t31, ptr %l25
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t32 = load ptr, ptr %l22, !tbaa !29
  call void @compiler_2feffects_2eMerge(ptr %s0, ptr %s3, ptr %t32, ptr %l25)
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s3)
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t34 = load i64, ptr %l4, !tbaa !24
  %t36 = add i64 %t34, 1
  store i64 %t36, ptr %l4, !tbaa !24
  br label %bb2
bb15:
  %t38 = load ptr, ptr %l1, !tbaa !29
  store ptr %t38, ptr %l6, !tbaa !29
  store i64 0, ptr %l7, !tbaa !24
  br label %bb16
bb16:
  %t40 = load i64, ptr %l7, !tbaa !24
  store i64 %t40, ptr %l30, !tbaa !24
  %t41 = load ptr, ptr %l6, !tbaa !29
  %t43 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t41)
  store i64 %t43, ptr %l32
  br label %bb17
bb17:
  %t44 = load i64, ptr %l30, !tbaa !24
  %t45 = load i64, ptr %l32, !tbaa !24
  %t46 = icmp slt i64 %t44, %t45
  %t48 = xor i1 %t46, true
  br i1 %t48, label %bb18, label %bb19
bb18:
  br label %bb25
bb19:
  br label %bb20
bb20:
  %t50 = load ptr, ptr %l6, !tbaa !29
  %t51 = load i64, ptr %l7, !tbaa !24
  %t54 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t50, i64 %t51)
  store i64 %t54, ptr %l37
  br label %bb21
bb21:
  %t55 = load i64, ptr %l37, !tbaa !24
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/effects:Effects", ptr %t56, i32 0, i32 8
  %t62 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3aFacts_3e_2eRefMut_3ccompiler_2feffects_3aFacts_3e(ptr %v0, ptr %v0, ptr %t58, i64 %t55)
  store ptr %t62, ptr %l41
  br label %bb22
bb22:
  %t63 = load ptr, ptr %l41, !tbaa !29
  call void @compiler_2feffects_2eMerge(ptr %v0, ptr %s0, ptr %t63, ptr %l2)
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t65 = load i64, ptr %l7, !tbaa !24
  %t67 = add i64 %t65, 1
  store i64 %t67, ptr %l7, !tbaa !24
  br label %bb16
bb25:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ewhyNow(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l6 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call { i64, ptr } @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ewhyDoes(ptr %v0, ptr %s0, ptr %t1)
  store { i64, ptr } %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t4, 0
  %t6 = extractvalue { i64, ptr } %t4, 1
  %t7 = mul i64 %t5, 1
  %t8 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t7)
  call void @llvm.memcpy.p0.p0.i64(ptr %t8, ptr %t6, i64 %t7, i1 false)
  %t9 = insertvalue { i64, ptr } undef, i64 %t5, 0
  %t10 = insertvalue { i64, ptr } %t9, ptr %t8, 1
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/effects:Effects", ptr %t11, i32 0, i32 45
  %t14 = load { i64, ptr }, ptr %t13, !tbaa !27
  %t17 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %v0, { i64, ptr } %t10, { i64, ptr } %t14)
  store i1 %t17, ptr %l6
  br label %bb2
bb2:
  call void @__olang_scope_close(ptr %s0)
  %t18 = load i1, ptr %l6, !tbaa !21
  store i1 %t18, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ewhyStmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l10 = alloca i64
  %l11 = alloca { i64, ptr }
  %l13 = alloca i1
  %l16 = alloca i64
  %l24 = alloca i64
  %l28 = alloca i64
  %l31 = alloca i64
  %l52 = alloca i64
  %l55 = alloca i1
  %l56 = alloca i64
  %l59 = alloca i64
  %l61 = alloca i1
  %l65 = alloca i64
  %l69 = alloca %"compiler/effects:Facts"
  %l73 = alloca { i64, ptr }
  %l75 = alloca i1
  %l76 = alloca ptr
  %l78 = alloca %"compiler/source:Span"
  %l81 = alloca { i64, ptr }
  %l89 = alloca i1
  %l91 = alloca i1
  %l92 = alloca ptr
  %l94 = alloca %"compiler/source:Span"
  %l96 = alloca { i64, ptr }
  %s3 = alloca %olang.scope
  %s8 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ewhyNow(ptr %v0, ptr %t1)
  store i1 %t3, ptr %l13
  br label %bb1
bb1:
  %t4 = load i1, ptr %l13, !tbaa !21
  store i1 %t4, ptr %l2, !tbaa !21
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/effects:Effects", ptr %t5, i32 0, i32 23
  %t9 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t7)
  store i64 %t9, ptr %l16
  br label %bb2
bb2:
  %t10 = load i64, ptr %l16, !tbaa !24
  store i64 %t10, ptr %l3, !tbaa !24
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2estmt(ptr %v0, ptr %v1, ptr %t11, ptr %t12)
  br label %bb3
bb3:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/effects:Effects", ptr %t15, i32 0, i32 46
  %t18 = load i1, ptr %t17, !tbaa !21
  br i1 %t18, label %bb4, label %bb5
bb4:
  br label %ret
bb5:
  br label %bb6
bb6:
  %t20 = load i64, ptr %l3, !tbaa !24
  store i64 %t20, ptr %l4, !tbaa !24
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/effects:Effects", ptr %t22, i32 0, i32 23
  %t26 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t24)
  store i64 %t26, ptr %l24
  br label %bb7
bb7:
  %t27 = load i64, ptr %l24, !tbaa !24
  store i64 %t27, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t28 = load i64, ptr %l5, !tbaa !24
  %t29 = load i64, ptr %l4, !tbaa !24
  %t32 = icmp sgt i64 %t28, %t29
  br i1 %t32, label %bb8, label %bb9
bb8:
  %t34 = load i64, ptr %l6, !tbaa !24
  %t36 = icmp sgt i64 %t34, 0
  br i1 %t36, label %bb10, label %bb11
bb9:
  store i64 0, ptr %l28, !tbaa !24
  br label %bb13
bb10:
  %t38 = load i64, ptr %l5, !tbaa !24
  %t39 = load i64, ptr %l4, !tbaa !24
  %t42 = sub i64 %t38, %t39
  %t43 = load i64, ptr %l6, !tbaa !24
  %t46 = add i64 %t42, %t43
  %t48 = sub i64 %t46, 1
  %t49 = load i64, ptr %l6, !tbaa !24
  %t52 = sdiv i64 %t48, %t49
  store i64 %t52, ptr %l31, !tbaa !24
  br label %bb12
bb11:
  store i64 0, ptr %l31, !tbaa !24
  br label %bb12
bb12:
  %t54 = load i64, ptr %l31, !tbaa !24
  store i64 %t54, ptr %l28, !tbaa !24
  br label %bb13
bb13:
  %t55 = load i64, ptr %l28, !tbaa !24
  store i64 %t55, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb14
bb14:
  store %olang.scope zeroinitializer, ptr %s3
  %t56 = load i64, ptr %l8, !tbaa !24
  %t57 = load i64, ptr %l7, !tbaa !24
  %t60 = icmp slt i64 %t56, %t57
  %t62 = xor i1 %t60, true
  br i1 %t62, label %bb15, label %bb16
bb15:
  call void @__olang_scope_close(ptr %s3)
  br label %bb40
bb16:
  br label %bb17
bb17:
  %t64 = load i64, ptr %l4, !tbaa !24
  %t65 = load i64, ptr %l8, !tbaa !24
  %t66 = load i64, ptr %l6, !tbaa !24
  %t69 = mul i64 %t65, %t66
  %t72 = add i64 %t64, %t69
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/effects:Effects", ptr %t74, i32 0, i32 23
  %t80 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t76, i64 %t72)
  store i64 %t80, ptr %l52
  br label %bb18
bb18:
  %t81 = load i64, ptr %l52, !tbaa !24
  store i64 %t81, ptr %l10, !tbaa !24
  %t82 = load i64, ptr %l10, !tbaa !24
  %t84 = icmp slt i64 %t82, 0
  br i1 %t84, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l55, !tbaa !21
  br label %bb22
bb20:
  %t86 = load i64, ptr %l10, !tbaa !24
  store i64 %t86, ptr %l56, !tbaa !24
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/effects:Effects", ptr %t87, i32 0, i32 1
  %t91 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t89)
  store i64 %t91, ptr %l59
  br label %bb21
bb21:
  %t92 = load i64, ptr %l56, !tbaa !24
  %t93 = load i64, ptr %l59, !tbaa !24
  %t94 = icmp sge i64 %t92, %t93
  store i1 %t94, ptr %l55, !tbaa !21
  br label %bb22
bb22:
  %t96 = load i1, ptr %l55, !tbaa !21
  br i1 %t96, label %bb23, label %bb24
bb23:
  store i1 true, ptr %l61, !tbaa !21
  br label %bb26
bb24:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/effects:Effects", ptr %t97, i32 0, i32 14
  %t100 = load i64, ptr %l10, !tbaa !24
  %t103 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t99, i64 %t100)
  store i64 %t103, ptr %l65
  br label %bb25
bb25:
  %t104 = load i64, ptr %l65, !tbaa !24
  %t105 = icmp slt i64 %t104, 2
  store i1 %t105, ptr %l61, !tbaa !21
  br label %bb26
bb26:
  %t107 = load i1, ptr %l61, !tbaa !21
  br i1 %t107, label %bb27, label %bb28
bb27:
  call void @__olang_scope_close(ptr %s3)
  br label %bb39
bb28:
  br label %bb29
bb29:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t109 = load i64, ptr %l10, !tbaa !24
  %t112 = call %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2enamed(ptr %v0, ptr %t108, i64 %t109)
  store %"compiler/effects:Facts" %t112, ptr %l69
  br label %bb30
bb30:
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t115 = getelementptr %"compiler/effects:Effects", ptr %t113, i32 0, i32 44
  %t116 = load i64, ptr %t115, !tbaa !24
  %t119 = call { i64, ptr } @compiler_2feffects_2eBreaks(ptr %s3, ptr %s3, ptr %l69, i64 %t116)
  store { i64, ptr } %t119, ptr %l73
  br label %bb31
bb31:
  %t120 = load { i64, ptr }, ptr %l73, !tbaa !27
  store { i64, ptr } %t120, ptr %l11, !tbaa !27
  %t121 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t123 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s3, ptr %s3, { i64, ptr } %t121, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d58, i32 0, i32 1) })
  store i1 %t123, ptr %l75
  br label %bb32
bb32:
  %t124 = load i1, ptr %l75, !tbaa !21
  br i1 %t124, label %bb33, label %bb34
bb33:
  call void @__olang_scope_close(ptr %s3)
  br label %bb39
bb34:
  br label %bb35
bb35:
  %t125 = load ptr, ptr %l0, !tbaa !29
  store ptr %t125, ptr %l76, !tbaa !29
  %t126 = load ptr, ptr %l1, !tbaa !29
  %t128 = call %"compiler/source:Span" @compiler_2feffects_2estmtSpan(ptr %v1, ptr %t126)
  store %"compiler/source:Span" %t128, ptr %l78
  br label %bb36
bb36:
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t130 = load i64, ptr %l10, !tbaa !24
  %t133 = call { i64, ptr } @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ebodyName(ptr %v0, ptr %s3, ptr %t129, i64 %t130)
  store { i64, ptr } %t133, ptr %l81
  br label %bb37
bb37:
  %t134 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t135 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d59, i32 0, i32 1) }, 1
  %t136 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d59, i32 0, i32 1) }, 0
  %t137 = load { i64, ptr }, ptr %l81, !tbaa !27
  %t138 = extractvalue { i64, ptr } %t137, 1
  %t139 = extractvalue { i64, ptr } %t137, 0
  %t140 = add i64 %t136, %t139
  %t141 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d60, i32 0, i32 1) }, 1
  %t142 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d60, i32 0, i32 1) }, 0
  %t143 = add i64 %t140, %t142
  %t145 = extractvalue { i64, ptr } %t134, 1
  %t146 = extractvalue { i64, ptr } %t134, 0
  %t147 = add i64 %t143, %t146
  %t148 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t147)
  call void @olang_textcopy(ptr %t148, ptr %t135, i64 %t136)
  %t149 = getelementptr i8, ptr %t148, i64 %t136
  call void @olang_textcopy(ptr %t149, ptr %t138, i64 %t139)
  %t150 = getelementptr i8, ptr %t149, i64 %t139
  call void @olang_textcopy(ptr %t150, ptr %t141, i64 %t142)
  %t151 = getelementptr i8, ptr %t150, i64 %t142
  call void @olang_textcopy(ptr %t151, ptr %t145, i64 %t146)
  %t152 = insertvalue { i64, ptr } undef, i64 %t147, 0
  %t153 = insertvalue { i64, ptr } %t152, ptr %t148, 1
  %t155 = extractvalue { i64, ptr } %t153, 0
  %t156 = extractvalue { i64, ptr } %t153, 1
  %t157 = mul i64 %t155, 1
  %t158 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t157)
  call void @llvm.memcpy.p0.p0.i64(ptr %t158, ptr %t156, i64 %t157, i1 false)
  %t159 = insertvalue { i64, ptr } undef, i64 %t155, 0
  %t160 = insertvalue { i64, ptr } %t159, ptr %t158, 1
  %t161 = load ptr, ptr %l76, !tbaa !29
  %t162 = load %"compiler/source:Span", ptr %l78
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ebecause(ptr %v0, ptr %s3, ptr %t161, %"compiler/source:Span" %t162, { i64, ptr } %t160)
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s3)
  br label %ret
bb39:
  %t164 = load i64, ptr %l8, !tbaa !24
  %t166 = add i64 %t164, 1
  store i64 %t166, ptr %l8, !tbaa !24
  br label %bb14
bb40:
  %t168 = load i1, ptr %l2, !tbaa !21
  %t170 = xor i1 %t168, true
  br i1 %t170, label %bb41, label %bb42
bb41:
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t174 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ewhyNow(ptr %v0, ptr %t172)
  store i1 %t174, ptr %l91
  br label %bb43
bb42:
  store i1 false, ptr %l89, !tbaa !21
  br label %bb44
bb43:
  %t175 = load i1, ptr %l91, !tbaa !21
  store i1 %t175, ptr %l89, !tbaa !21
  br label %bb44
bb44:
  %t176 = load i1, ptr %l89, !tbaa !21
  br i1 %t176, label %bb45, label %bb46
bb45:
  store %olang.scope zeroinitializer, ptr %s8
  %t177 = load ptr, ptr %l0, !tbaa !29
  store ptr %t177, ptr %l92, !tbaa !29
  %t178 = load ptr, ptr %l1, !tbaa !29
  %t180 = call %"compiler/source:Span" @compiler_2feffects_2estmtSpan(ptr %v1, ptr %t178)
  store %"compiler/source:Span" %t180, ptr %l94
  br label %bb47
bb46:
  br label %bb50
bb47:
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t183 = call { i64, ptr } @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ewhyDoes(ptr %v0, ptr %s8, ptr %t181)
  store { i64, ptr } %t183, ptr %l96
  br label %bb48
bb48:
  %t184 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d61, i32 0, i32 1) }, 1
  %t185 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d61, i32 0, i32 1) }, 0
  %t186 = load { i64, ptr }, ptr %l96, !tbaa !27
  %t187 = extractvalue { i64, ptr } %t186, 1
  %t188 = extractvalue { i64, ptr } %t186, 0
  %t189 = add i64 %t185, %t188
  %t190 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d62, i32 0, i32 1) }, 1
  %t191 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d62, i32 0, i32 1) }, 0
  %t192 = add i64 %t189, %t191
  %t193 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t192)
  call void @olang_textcopy(ptr %t193, ptr %t184, i64 %t185)
  %t194 = getelementptr i8, ptr %t193, i64 %t185
  call void @olang_textcopy(ptr %t194, ptr %t187, i64 %t188)
  %t195 = getelementptr i8, ptr %t194, i64 %t188
  call void @olang_textcopy(ptr %t195, ptr %t190, i64 %t191)
  %t196 = insertvalue { i64, ptr } undef, i64 %t192, 0
  %t197 = insertvalue { i64, ptr } %t196, ptr %t193, 1
  %t199 = extractvalue { i64, ptr } %t197, 0
  %t200 = extractvalue { i64, ptr } %t197, 1
  %t201 = mul i64 %t199, 1
  %t202 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t201)
  call void @llvm.memcpy.p0.p0.i64(ptr %t202, ptr %t200, i64 %t201, i1 false)
  %t203 = insertvalue { i64, ptr } undef, i64 %t199, 0
  %t204 = insertvalue { i64, ptr } %t203, ptr %t202, 1
  %t205 = load ptr, ptr %l92, !tbaa !29
  %t206 = load %"compiler/source:Span", ptr %l94
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ebecause(ptr %v0, ptr %s8, ptr %t205, %"compiler/source:Span" %t206, { i64, ptr } %t204)
  br label %bb49
bb49:
  call void @__olang_scope_close(ptr %s8)
  br label %bb50
bb50:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ewritesUnowned(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i32
  %l17 = alloca ptr
  %l21 = alloca i64
  %l24 = alloca i64
  %l44 = alloca i1
  %l46 = alloca i64
  %l49 = alloca i64
  %l53 = alloca ptr
  %l57 = alloca i32
  %l59 = alloca %"compiler/typed:Local"
  %l65 = alloca i1
  %l67 = alloca i1
  %l72 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = icmp eq i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/effects:Effects", ptr %t6, i32 0, i32 1
  %t12 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t8, i64 %a1)
  store ptr %t12, ptr %l17
  br label %bb4
bb4:
  %t13 = load ptr, ptr %l17, !tbaa !29
  store ptr %t13, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  store i64 63, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t14 = load i64, ptr %l5, !tbaa !24
  %t15 = load i64, ptr %l4, !tbaa !24
  %t18 = icmp sgt i64 %t14, %t15
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t20 = load i64, ptr %l6, !tbaa !24
  %t22 = icmp sgt i64 %t20, 0
  br i1 %t22, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb10
bb7:
  %t24 = load i64, ptr %l5, !tbaa !24
  %t25 = load i64, ptr %l4, !tbaa !24
  %t28 = sub i64 %t24, %t25
  %t29 = load i64, ptr %l6, !tbaa !24
  %t32 = add i64 %t28, %t29
  %t34 = sub i64 %t32, 1
  %t35 = load i64, ptr %l6, !tbaa !24
  %t38 = sdiv i64 %t34, %t35
  store i64 %t38, ptr %l24, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb9
bb9:
  %t40 = load i64, ptr %l24, !tbaa !24
  store i64 %t40, ptr %l21, !tbaa !24
  br label %bb10
bb10:
  %t41 = load i64, ptr %l21, !tbaa !24
  store i64 %t41, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb11
bb11:
  %t42 = load i64, ptr %l8, !tbaa !24
  %t43 = load i64, ptr %l7, !tbaa !24
  %t46 = icmp slt i64 %t42, %t43
  %t48 = xor i1 %t46, true
  br i1 %t48, label %bb12, label %bb13
bb12:
  br label %bb34
bb13:
  br label %bb14
bb14:
  %t50 = load i64, ptr %l4, !tbaa !24
  %t51 = load i64, ptr %l8, !tbaa !24
  %t52 = load i64, ptr %l6, !tbaa !24
  %t55 = mul i64 %t51, %t52
  %t58 = add i64 %t50, %t55
  store i64 %t58, ptr %l9, !tbaa !24
  %t60 = load i64, ptr %l2, !tbaa !24
  %t61 = load i64, ptr %l9, !tbaa !24
  %t64 = call i1 @compiler_2feffects_2ehasBit(i64 %t60, i64 %t61)
  store i1 %t64, ptr %l44
  br label %bb15
bb15:
  %t65 = load i1, ptr %l44, !tbaa !21
  %t66 = xor i1 %t65, true
  br i1 %t66, label %bb16, label %bb17
bb16:
  br label %bb33
bb17:
  br label %bb18
bb18:
  %t68 = load i64, ptr %l9, !tbaa !24
  store i64 %t68, ptr %l46, !tbaa !24
  %t69 = load ptr, ptr %l3, !tbaa !29
  %t71 = getelementptr %"compiler/typed:Body", ptr %t69, i32 0, i32 5
  %t73 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t71)
  store i64 %t73, ptr %l49
  br label %bb19
bb19:
  %t74 = load i64, ptr %l46, !tbaa !24
  %t75 = load i64, ptr %l49, !tbaa !24
  %t76 = icmp sge i64 %t74, %t75
  br i1 %t76, label %bb20, label %bb21
bb20:
  store i1 true, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  %t79 = load ptr, ptr %l3, !tbaa !29
  %t81 = getelementptr %"compiler/typed:Body", ptr %t79, i32 0, i32 7
  store ptr %t81, ptr %l53, !tbaa !29
  %t82 = load ptr, ptr %l3, !tbaa !29
  %t84 = getelementptr %"compiler/typed:Body", ptr %t82, i32 0, i32 5
  %t85 = load i64, ptr %l9, !tbaa !24
  %t88 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t84, i64 %t85)
  store i32 %t88, ptr %l57
  br label %bb23
bb23:
  %t89 = load i32, ptr %l57, !tbaa !23
  %t90 = sext i32 %t89 to i64
  %t91 = load ptr, ptr %l53, !tbaa !29
  %t93 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t91, i64 %t90)
  store %"compiler/typed:Local" %t93, ptr %l59
  br label %bb24
bb24:
  %t94 = getelementptr %"compiler/typed:Local", ptr %l59, i32 0, i32 2
  %t95 = load i32, ptr %t94, !tbaa !23
  store i32 %t95, ptr %l10, !tbaa !23
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/effects:Effects", ptr %t97, i32 0, i32 0
  %t100 = load ptr, ptr %t99, !tbaa !29
  %t102 = getelementptr %"compiler/generic:Program", ptr %t100, i32 0, i32 2
  %t103 = load i32, ptr %l10, !tbaa !23
  %t106 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t102, i32 %t103)
  store i1 %t106, ptr %l65
  br label %bb25
bb25:
  %t107 = load i1, ptr %l65, !tbaa !21
  %t108 = xor i1 %t107, true
  br i1 %t108, label %bb26, label %bb27
bb26:
  store i1 true, ptr %l67, !tbaa !21
  br label %bb29
bb27:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/effects:Effects", ptr %t110, i32 0, i32 0
  %t113 = load ptr, ptr %t112, !tbaa !29
  %t115 = getelementptr %"compiler/generic:Program", ptr %t113, i32 0, i32 2
  %t116 = load i32, ptr %l10, !tbaa !23
  %t119 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t115, i32 %t116)
  store i64 %t119, ptr %l72
  br label %bb28
bb28:
  %t120 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t121 = load i64, ptr %l72, !tbaa !24
  %t123 = and i64 %t121, %t120
  %t125 = icmp eq i64 %t123, 0
  store i1 %t125, ptr %l67, !tbaa !21
  br label %bb29
bb29:
  %t127 = load i1, ptr %l67, !tbaa !21
  br i1 %t127, label %bb30, label %bb31
bb30:
  store i1 true, ptr %rv
  br label %ret
bb31:
  br label %bb32
bb32:
  br label %bb33
bb33:
  %t129 = load i64, ptr %l8, !tbaa !24
  %t131 = add i64 %t129, 1
  store i64 %t131, ptr %l8, !tbaa !24
  br label %bb11
bb34:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2feffects_2ecompiler_2feffects_3aFacts_2eEvaluable(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i1
  %l6 = alloca i1
  %l9 = alloca i1
  %l12 = alloca i1
  %l15 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/effects:Facts", ptr %t1, i32 0, i32 4
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb3
bb2:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/effects:Facts", ptr %t6, i32 0, i32 2
  %t9 = load i1, ptr %t8, !tbaa !21
  store i1 %t9, ptr %l3, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l3, !tbaa !21
  br i1 %t11, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb6
bb5:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/effects:Facts", ptr %t12, i32 0, i32 3
  %t15 = load i1, ptr %t14, !tbaa !21
  store i1 %t15, ptr %l6, !tbaa !21
  br label %bb6
bb6:
  %t17 = load i1, ptr %l6, !tbaa !21
  br i1 %t17, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb9
bb8:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/effects:Facts", ptr %t18, i32 0, i32 9
  %t21 = load i1, ptr %t20, !tbaa !21
  store i1 %t21, ptr %l9, !tbaa !21
  br label %bb9
bb9:
  %t23 = load i1, ptr %l9, !tbaa !21
  br i1 %t23, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb12
bb11:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/effects:Facts", ptr %t24, i32 0, i32 13
  %t27 = load i1, ptr %t26, !tbaa !21
  store i1 %t27, ptr %l12, !tbaa !21
  br label %bb12
bb12:
  %t29 = load i1, ptr %l12, !tbaa !21
  br i1 %t29, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb15
bb14:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/effects:Facts", ptr %t30, i32 0, i32 12
  %t33 = load i1, ptr %t32, !tbaa !21
  store i1 %t33, ptr %l15, !tbaa !21
  br label %bb15
bb15:
  %t35 = load i1, ptr %l15, !tbaa !21
  %t36 = xor i1 %t35, true
  store i1 %t36, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2feffects_2ecompiler_2feffects_3aFacts_2eReturns(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca i1
  %l6 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aFacts_2eTerminates(ptr %v0, ptr %t1)
  store i1 %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load i1, ptr %l2, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/effects:Facts", ptr %t5, i32 0, i32 12
  %t8 = load i1, ptr %t7, !tbaa !21
  br i1 %t8, label %bb4, label %bb5
bb3:
  store i1 false, ptr %l3, !tbaa !21
  br label %bb7
bb4:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb6
bb5:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/effects:Facts", ptr %t10, i32 0, i32 15
  %t13 = load i1, ptr %t12, !tbaa !21
  store i1 %t13, ptr %l6, !tbaa !21
  br label %bb6
bb6:
  %t15 = load i1, ptr %l6, !tbaa !21
  %t16 = xor i1 %t15, true
  store i1 %t16, ptr %l3, !tbaa !21
  br label %bb7
bb7:
  %t18 = load i1, ptr %l3, !tbaa !21
  store i1 %t18, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2feffects_2ehasBit(i64 %a0, i64 %a1) #0 {
entry:
  %l2 = alloca i64
  %l4 = alloca i64
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store i64 %a0, ptr %l2, !tbaa !24
  %t4 = call i64 @compiler_2feffects_2eparamBit(i64 %a1)
  store i64 %t4, ptr %l4
  br label %bb1
bb1:
  %t5 = load i64, ptr %l2, !tbaa !24
  %t6 = load i64, ptr %l4, !tbaa !24
  %t7 = and i64 %t5, %t6
  %t9 = icmp ne i64 %t7, 0
  store i1 %t9, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2feffects_2elitTrue(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i1
  %l4 = alloca ptr
  %l5 = alloca i1
  %l15 = alloca i1
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
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i64 }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l1, !tbaa !23
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr { i64, [5 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, i64 }, ptr %t18, i32 0, i32 2
  %t20 = load i64, ptr %t19
  store i64 %t20, ptr %l2, !tbaa !24
  br label %bb5
bb4:
  br label %bb9
bb5:
  %t22 = load i32, ptr %l1, !tbaa !23
  %t23 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t26 = icmp eq i32 %t22, %t23
  br i1 %t26, label %bb6, label %bb7
bb6:
  %t28 = load i64, ptr %l2, !tbaa !24
  %t30 = icmp eq i64 %t28, 1
  store i1 %t30, ptr %l15, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l15, !tbaa !21
  br label %bb8
bb8:
  %t32 = load i1, ptr %l15, !tbaa !21
  store i1 %t32, ptr %l3, !tbaa !21
  br label %bb14
bb9:
  br i1 true, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  store i1 false, ptr %l3, !tbaa !21
  br label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_d8bf60be8d53266c_65df02eeff1797b0)
  unreachable
bb14:
  %t33 = load i1, ptr %l3, !tbaa !21
  store i1 %t33, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2feffects_2enotReturning(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i1
  %l6 = alloca i1
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l23 = alloca i64
  %l24 = alloca { i64, ptr }
  %l27 = alloca i1
  %l30 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l32 = alloca i64
  %l33 = alloca { i64, ptr }
  %l36 = alloca i1
  %l39 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l41 = alloca i64
  %l42 = alloca { i64, ptr }
  %l43 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l45 = alloca i64
  %l46 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/effects:Facts", ptr %t1, i32 0, i32 14
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb3
bb2:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/effects:Facts", ptr %t6, i32 0, i32 9
  %t9 = load i1, ptr %t8, !tbaa !21
  store i1 %t9, ptr %l3, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l3, !tbaa !21
  br i1 %t11, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb6
bb5:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/effects:Facts", ptr %t12, i32 0, i32 10
  %t15 = load i1, ptr %t14, !tbaa !21
  store i1 %t15, ptr %l6, !tbaa !21
  br label %bb6
bb6:
  %t17 = load i1, ptr %l6, !tbaa !21
  br i1 %t17, label %bb7, label %bb8
bb7:
  store { i64, ptr } { i64 73, ptr getelementptr inbounds (<{ i64, [73 x i8] }>, ptr @.d63, i32 0, i32 1) }, ptr %l9, !tbaa !27
  %t18 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t18, ptr %l10, !tbaa !27
  %t19 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t20 = extractvalue { i64, ptr } %t19, 0
  store i64 %t20, ptr %l11, !tbaa !24
  %t21 = load i64, ptr %l11, !tbaa !24
  %t22 = mul i64 %t21, 1
  %t23 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t22)
  %t24 = insertvalue { i64, ptr } undef, i64 %t21, 0
  %t25 = insertvalue { i64, ptr } %t24, ptr %t23, 1
  store { i64, ptr } %t25, ptr %l12, !tbaa !27
  %t26 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !27
  %t30 = load i64, ptr %l11, !tbaa !24
  %t31 = mul i64 %t30, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t27, ptr %t29, i64 %t31, i1 false)
  %t32 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t32, ptr %l10, !tbaa !27
  %t33 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t33, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/effects:Facts", ptr %t34, i32 0, i32 7
  %t37 = load i1, ptr %t36, !tbaa !21
  br i1 %t37, label %bb10, label %bb11
bb10:
  store { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d64, i32 0, i32 1) }, ptr %l15, !tbaa !27
  %t39 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t39, ptr %l16, !tbaa !27
  %t40 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t40, 0
  store i64 %t41, ptr %l17, !tbaa !24
  %t42 = load i64, ptr %l17, !tbaa !24
  %t43 = mul i64 %t42, 1
  %t44 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t43)
  %t45 = insertvalue { i64, ptr } undef, i64 %t42, 0
  %t46 = insertvalue { i64, ptr } %t45, ptr %t44, 1
  store { i64, ptr } %t46, ptr %l18, !tbaa !27
  %t47 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !27
  %t49 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !27
  %t51 = load i64, ptr %l17, !tbaa !24
  %t52 = mul i64 %t51, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t48, ptr %t50, i64 %t52, i1 false)
  %t53 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t53, ptr %l16, !tbaa !27
  %t54 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t54, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/effects:Facts", ptr %t55, i32 0, i32 8
  %t58 = load i1, ptr %t57, !tbaa !21
  br i1 %t58, label %bb13, label %bb14
bb13:
  store { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d65, i32 0, i32 1) }, ptr %l21, !tbaa !27
  %t60 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t60, ptr %l22, !tbaa !27
  %t61 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t62 = extractvalue { i64, ptr } %t61, 0
  store i64 %t62, ptr %l23, !tbaa !24
  %t63 = load i64, ptr %l23, !tbaa !24
  %t64 = mul i64 %t63, 1
  %t65 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t64)
  %t66 = insertvalue { i64, ptr } undef, i64 %t63, 0
  %t67 = insertvalue { i64, ptr } %t66, ptr %t65, 1
  store { i64, ptr } %t67, ptr %l24, !tbaa !27
  %t68 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !27
  %t70 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !27
  %t72 = load i64, ptr %l23, !tbaa !24
  %t73 = mul i64 %t72, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t69, ptr %t71, i64 %t73, i1 false)
  %t74 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t74, ptr %l22, !tbaa !27
  %t75 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t75, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/effects:Facts", ptr %t76, i32 0, i32 1
  %t79 = load i1, ptr %t78, !tbaa !21
  br i1 %t79, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb18
bb17:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/effects:Facts", ptr %t81, i32 0, i32 5
  %t84 = load i1, ptr %t83, !tbaa !21
  store i1 %t84, ptr %l27, !tbaa !21
  br label %bb18
bb18:
  %t86 = load i1, ptr %l27, !tbaa !21
  br i1 %t86, label %bb19, label %bb20
bb19:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d66, i32 0, i32 1) }, ptr %l30, !tbaa !27
  %t87 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t87, ptr %l31, !tbaa !27
  %t88 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t89 = extractvalue { i64, ptr } %t88, 0
  store i64 %t89, ptr %l32, !tbaa !24
  %t90 = load i64, ptr %l32, !tbaa !24
  %t91 = mul i64 %t90, 1
  %t92 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t91)
  %t93 = insertvalue { i64, ptr } undef, i64 %t90, 0
  %t94 = insertvalue { i64, ptr } %t93, ptr %t92, 1
  store { i64, ptr } %t94, ptr %l33, !tbaa !27
  %t95 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !27
  %t97 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !27
  %t99 = load i64, ptr %l32, !tbaa !24
  %t100 = mul i64 %t99, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t96, ptr %t98, i64 %t100, i1 false)
  %t101 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t101, ptr %l31, !tbaa !27
  %t102 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t102, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr %"compiler/effects:Facts", ptr %t103, i32 0, i32 12
  %t106 = load i1, ptr %t105, !tbaa !21
  br i1 %t106, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l36, !tbaa !21
  br label %bb24
bb23:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/effects:Facts", ptr %t108, i32 0, i32 15
  %t111 = load i1, ptr %t110, !tbaa !21
  store i1 %t111, ptr %l36, !tbaa !21
  br label %bb24
bb24:
  %t113 = load i1, ptr %l36, !tbaa !21
  br i1 %t113, label %bb25, label %bb26
bb25:
  store { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d67, i32 0, i32 1) }, ptr %l39, !tbaa !27
  %t114 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t114, ptr %l40, !tbaa !27
  %t115 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t116 = extractvalue { i64, ptr } %t115, 0
  store i64 %t116, ptr %l41, !tbaa !24
  %t117 = load i64, ptr %l41, !tbaa !24
  %t118 = mul i64 %t117, 1
  %t119 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t118)
  %t120 = insertvalue { i64, ptr } undef, i64 %t117, 0
  %t121 = insertvalue { i64, ptr } %t120, ptr %t119, 1
  store { i64, ptr } %t121, ptr %l42, !tbaa !27
  %t122 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t123 = load ptr, ptr %t122, !tbaa !27
  %t124 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t125 = load ptr, ptr %t124, !tbaa !27
  %t126 = load i64, ptr %l41, !tbaa !24
  %t127 = mul i64 %t126, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t123, ptr %t125, i64 %t127, i1 false)
  %t128 = load { i64, ptr }, ptr %l42, !tbaa !27
  store { i64, ptr } %t128, ptr %l40, !tbaa !27
  %t129 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t129, ptr %rv
  br label %ret
bb26:
  br label %bb27
bb27:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d68, i32 0, i32 1) }, ptr %l43, !tbaa !27
  %t130 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t130, ptr %l44, !tbaa !27
  %t131 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t132 = extractvalue { i64, ptr } %t131, 0
  store i64 %t132, ptr %l45, !tbaa !24
  %t133 = load i64, ptr %l45, !tbaa !24
  %t134 = mul i64 %t133, 1
  %t135 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t134)
  %t136 = insertvalue { i64, ptr } undef, i64 %t133, 0
  %t137 = insertvalue { i64, ptr } %t136, ptr %t135, 1
  store { i64, ptr } %t137, ptr %l46, !tbaa !27
  %t138 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t139 = load ptr, ptr %t138, !tbaa !27
  %t140 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t141 = load ptr, ptr %t140, !tbaa !27
  %t142 = load i64, ptr %l45, !tbaa !24
  %t143 = mul i64 %t142, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t139, ptr %t141, i64 %t143, i1 false)
  %t144 = load { i64, ptr }, ptr %l46, !tbaa !27
  store { i64, ptr } %t144, ptr %l44, !tbaa !27
  %t145 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t145, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2feffects_3aEffects_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca i1
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l9 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca i64
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l18 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l22 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l23 = alloca i64
  %l24 = alloca %"compiler/effects:Facts"
  %l25 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l26 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l27 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l28 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l29 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l30 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l31 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l32 = alloca i64
  %l33 = alloca i64
  %l34 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l35 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l36 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l37 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l38 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l39 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l40 = alloca i1
  %l41 = alloca i1
  %l42 = alloca i1
  %l43 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l44 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l45 = alloca i1
  %l46 = alloca i64
  %l47 = alloca { i64, ptr }
  %l48 = alloca i1
  %l49 = alloca %"compiler/source:Span"
  %l50 = alloca { i64, ptr }
  %l51 = alloca i1
  %l52 = alloca i64
  %l56 = alloca i64
  %l58 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l60 = alloca i64
  %l62 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l64 = alloca i64
  %l66 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l68 = alloca i64
  %l70 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l72 = alloca i64
  %l74 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l76 = alloca i64
  %l78 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l80 = alloca i64
  %l82 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l84 = alloca i64
  %l86 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l88 = alloca i64
  %l90 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l92 = alloca i64
  %l94 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l96 = alloca i64
  %l98 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l100 = alloca i64
  %l102 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l104 = alloca i64
  %l106 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l108 = alloca i64
  %l110 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l112 = alloca i64
  %l114 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l116 = alloca i64
  %l118 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l120 = alloca i64
  %l122 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l124 = alloca %"compiler/effects:Facts"
  %l125 = alloca i64
  %l127 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l129 = alloca i64
  %l131 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l133 = alloca i64
  %l135 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l137 = alloca i64
  %l139 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l141 = alloca i64
  %l143 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l145 = alloca i64
  %l147 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l149 = alloca i64
  %l151 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l153 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l154 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l155 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l156 = alloca i64
  %l158 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l160 = alloca i64
  %l162 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l164 = alloca i64
  %l166 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l168 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l169 = alloca i64
  %l171 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l173 = alloca { i64, ptr }
  %l174 = alloca { i64, ptr }
  %l175 = alloca i64
  %l176 = alloca { i64, ptr }
  %l177 = alloca %"compiler/source:Span"
  %l178 = alloca { i64, ptr }
  %l179 = alloca { i64, ptr }
  %l180 = alloca i64
  %l181 = alloca { i64, ptr }
  %l182 = alloca i64
  %l184 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l186 = alloca %"compiler/effects:Effects"
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l2, !tbaa !29
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1, ptr %l3
  store i1 false, ptr %l4, !tbaa !21
  %t5 = ptrtoint ptr %v2 to i64
  store i64 %t5, ptr %l56, !tbaa !24
  %t6 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e3
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = call ptr @__olang_region_make(ptr %v2)
  %t9 = ptrtoint ptr %t8 to i64
  store i64 %t9, ptr %l56, !tbaa !24
  br label %bb2
bb2:
  %t10 = load i64, ptr %l56
  %t11 = inttoptr i64 %t10 to ptr
  %t12 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3aFacts_3e_2ector(ptr %t11, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t12, ptr %l58
  br label %bb3
bb3:
  %t13 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e3
  br i1 %t13, label %bb4, label %bb5
bb4:
  %t15 = load i64, ptr %l56
  %t16 = inttoptr i64 %t15 to ptr
  %t17 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l58, i32 0, i32 0
  %t18 = load { i64, ptr }, ptr %t17
  %t19 = extractvalue { i64, ptr } %t18, 1
  %t20 = call ptr @__olang_region_or(ptr %t19, ptr null)
  %t21 = icmp ne ptr %t20, null
  %t22 = select i1 %t21, ptr %t20, ptr null
  %t23 = icmp eq ptr %t22, %t16
  call void @__olang_region_settle(ptr %t16, i1 %t23)
  br label %bb5
bb5:
  %t24 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l58
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t24, ptr %l5
  %t25 = ptrtoint ptr %v2 to i64
  store i64 %t25, ptr %l60, !tbaa !24
  %t26 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e4
  br i1 %t26, label %bb6, label %bb7
bb6:
  %t28 = call ptr @__olang_region_make(ptr %v2)
  %t29 = ptrtoint ptr %t28 to i64
  store i64 %t29, ptr %l60, !tbaa !24
  br label %bb7
bb7:
  %t30 = load i64, ptr %l60
  %t31 = inttoptr i64 %t30 to ptr
  %t32 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e_2ector(ptr %t31, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t32, ptr %l62
  br label %bb8
bb8:
  %t33 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e4
  br i1 %t33, label %bb9, label %bb10
bb9:
  %t35 = load i64, ptr %l60
  %t36 = inttoptr i64 %t35 to ptr
  %t37 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l62, i32 0, i32 0
  %t38 = load { i64, ptr }, ptr %t37
  %t39 = extractvalue { i64, ptr } %t38, 1
  %t40 = call ptr @__olang_region_or(ptr %t39, ptr null)
  %t41 = icmp ne ptr %t40, null
  %t42 = select i1 %t41, ptr %t40, ptr null
  %t43 = icmp eq ptr %t42, %t36
  call void @__olang_region_settle(ptr %t36, i1 %t43)
  br label %bb10
bb10:
  %t44 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l62
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t44, ptr %l6
  %t45 = ptrtoint ptr %v2 to i64
  store i64 %t45, ptr %l64, !tbaa !24
  %t46 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e5
  br i1 %t46, label %bb11, label %bb12
bb11:
  %t48 = call ptr @__olang_region_make(ptr %v2)
  %t49 = ptrtoint ptr %t48 to i64
  store i64 %t49, ptr %l64, !tbaa !24
  br label %bb12
bb12:
  %t50 = load i64, ptr %l64
  %t51 = inttoptr i64 %t50 to ptr
  %t52 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3alink_3e_3e_2ector(ptr %t51, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t52, ptr %l66
  br label %bb13
bb13:
  %t53 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e5
  br i1 %t53, label %bb14, label %bb15
bb14:
  %t55 = load i64, ptr %l64
  %t56 = inttoptr i64 %t55 to ptr
  %t57 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l66, i32 0, i32 0
  %t58 = load { i64, ptr }, ptr %t57
  %t59 = extractvalue { i64, ptr } %t58, 1
  %t60 = call ptr @__olang_region_or(ptr %t59, ptr null)
  %t61 = icmp ne ptr %t60, null
  %t62 = select i1 %t61, ptr %t60, ptr null
  %t63 = icmp eq ptr %t62, %t56
  call void @__olang_region_settle(ptr %t56, i1 %t63)
  br label %bb15
bb15:
  %t64 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l66
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t64, ptr %l7
  %t65 = ptrtoint ptr %v2 to i64
  store i64 %t65, ptr %l68, !tbaa !24
  %t66 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e6
  br i1 %t66, label %bb16, label %bb17
bb16:
  %t68 = call ptr @__olang_region_make(ptr %v2)
  %t69 = ptrtoint ptr %t68 to i64
  store i64 %t69, ptr %l68, !tbaa !24
  br label %bb17
bb17:
  %t70 = load i64, ptr %l68
  %t71 = inttoptr i64 %t70 to ptr
  %t72 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fv_Hbea44694f2ac293c111b1f169c7495eb(ptr %t71)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t72, ptr %l70
  br label %bb18
bb18:
  %t73 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e6
  br i1 %t73, label %bb19, label %bb20
bb19:
  %t75 = load i64, ptr %l68
  %t76 = inttoptr i64 %t75 to ptr
  %t77 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l70, i32 0, i32 2
  %t78 = load { i64, ptr }, ptr %t77
  %t79 = extractvalue { i64, ptr } %t78, 1
  %t80 = call ptr @__olang_region_or(ptr %t79, ptr null)
  %t81 = icmp ne ptr %t80, null
  %t82 = select i1 %t81, ptr %t80, ptr null
  %t83 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l70, i32 0, i32 1
  %t84 = load { i64, ptr }, ptr %t83
  %t85 = extractvalue { i64, ptr } %t84, 1
  %t86 = call ptr @__olang_region_or(ptr %t85, ptr null)
  %t87 = icmp ne ptr %t86, null
  %t88 = select i1 %t87, ptr %t86, ptr %t82
  %t89 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l70, i32 0, i32 0
  %t90 = load { i64, ptr }, ptr %t89
  %t91 = extractvalue { i64, ptr } %t90, 1
  %t92 = call ptr @__olang_region_or(ptr %t91, ptr null)
  %t93 = icmp ne ptr %t92, null
  %t94 = select i1 %t93, ptr %t92, ptr %t88
  %t95 = icmp eq ptr %t94, %t76
  call void @__olang_region_settle(ptr %t76, i1 %t95)
  br label %bb20
bb20:
  %t96 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l70
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t96, ptr %l8
  %t97 = ptrtoint ptr %v2 to i64
  store i64 %t97, ptr %l72, !tbaa !24
  %t98 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e7
  br i1 %t98, label %bb21, label %bb22
bb21:
  %t100 = call ptr @__olang_region_make(ptr %v2)
  %t101 = ptrtoint ptr %t100 to i64
  store i64 %t101, ptr %l72, !tbaa !24
  br label %bb22
bb22:
  %t102 = load i64, ptr %l72
  %t103 = inttoptr i64 %t102 to ptr
  %t104 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI64_3e_3e(ptr %t103)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t104, ptr %l74
  br label %bb23
bb23:
  %t105 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e7
  br i1 %t105, label %bb24, label %bb25
bb24:
  %t107 = load i64, ptr %l72
  %t108 = inttoptr i64 %t107 to ptr
  %t109 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l74, i32 0, i32 2
  %t110 = load { i64, ptr }, ptr %t109
  %t111 = extractvalue { i64, ptr } %t110, 1
  %t112 = call ptr @__olang_region_or(ptr %t111, ptr null)
  %t113 = icmp ne ptr %t112, null
  %t114 = select i1 %t113, ptr %t112, ptr null
  %t115 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l74, i32 0, i32 1
  %t116 = load { i64, ptr }, ptr %t115
  %t117 = extractvalue { i64, ptr } %t116, 1
  %t118 = call ptr @__olang_region_or(ptr %t117, ptr null)
  %t119 = icmp ne ptr %t118, null
  %t120 = select i1 %t119, ptr %t118, ptr %t114
  %t121 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l74, i32 0, i32 0
  %t122 = load { i64, ptr }, ptr %t121
  %t123 = extractvalue { i64, ptr } %t122, 1
  %t124 = call ptr @__olang_region_or(ptr %t123, ptr null)
  %t125 = icmp ne ptr %t124, null
  %t126 = select i1 %t125, ptr %t124, ptr %t120
  %t127 = icmp eq ptr %t126, %t108
  call void @__olang_region_settle(ptr %t108, i1 %t127)
  br label %bb25
bb25:
  %t128 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l74
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t128, ptr %l9
  %t129 = ptrtoint ptr %v2 to i64
  store i64 %t129, ptr %l76, !tbaa !24
  %t130 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e8
  br i1 %t130, label %bb26, label %bb27
bb26:
  %t132 = call ptr @__olang_region_make(ptr %v2)
  %t133 = ptrtoint ptr %t132 to i64
  store i64 %t133, ptr %l76, !tbaa !24
  br label %bb27
bb27:
  %t134 = load i64, ptr %l76
  %t135 = inttoptr i64 %t134 to ptr
  %t136 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3aFacts_3e_2ector(ptr %t135, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t136, ptr %l78
  br label %bb28
bb28:
  %t137 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e8
  br i1 %t137, label %bb29, label %bb30
bb29:
  %t139 = load i64, ptr %l76
  %t140 = inttoptr i64 %t139 to ptr
  %t141 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l78, i32 0, i32 0
  %t142 = load { i64, ptr }, ptr %t141
  %t143 = extractvalue { i64, ptr } %t142, 1
  %t144 = call ptr @__olang_region_or(ptr %t143, ptr null)
  %t145 = icmp ne ptr %t144, null
  %t146 = select i1 %t145, ptr %t144, ptr null
  %t147 = icmp eq ptr %t146, %t140
  call void @__olang_region_settle(ptr %t140, i1 %t147)
  br label %bb30
bb30:
  %t148 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l78
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t148, ptr %l10
  %t149 = ptrtoint ptr %v2 to i64
  store i64 %t149, ptr %l80, !tbaa !24
  %t150 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e9
  br i1 %t150, label %bb31, label %bb32
bb31:
  %t152 = call ptr @__olang_region_make(ptr %v2)
  %t153 = ptrtoint ptr %t152 to i64
  store i64 %t153, ptr %l80, !tbaa !24
  br label %bb32
bb32:
  %t154 = load i64, ptr %l80
  %t155 = inttoptr i64 %t154 to ptr
  %t156 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t155, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t156, ptr %l82
  br label %bb33
bb33:
  %t157 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e9
  br i1 %t157, label %bb34, label %bb35
bb34:
  %t159 = load i64, ptr %l80
  %t160 = inttoptr i64 %t159 to ptr
  %t161 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l82, i32 0, i32 0
  %t162 = load { i64, ptr }, ptr %t161
  %t163 = extractvalue { i64, ptr } %t162, 1
  %t164 = call ptr @__olang_region_or(ptr %t163, ptr null)
  %t165 = icmp ne ptr %t164, null
  %t166 = select i1 %t165, ptr %t164, ptr null
  %t167 = icmp eq ptr %t166, %t160
  call void @__olang_region_settle(ptr %t160, i1 %t167)
  br label %bb35
bb35:
  %t168 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l82
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t168, ptr %l11
  %t169 = ptrtoint ptr %v2 to i64
  store i64 %t169, ptr %l84, !tbaa !24
  %t170 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e10
  br i1 %t170, label %bb36, label %bb37
bb36:
  %t172 = call ptr @__olang_region_make(ptr %v2)
  %t173 = ptrtoint ptr %t172 to i64
  store i64 %t173, ptr %l84, !tbaa !24
  br label %bb37
bb37:
  %t174 = load i64, ptr %l84
  %t175 = inttoptr i64 %t174 to ptr
  %t176 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t175, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t176, ptr %l86
  br label %bb38
bb38:
  %t177 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e10
  br i1 %t177, label %bb39, label %bb40
bb39:
  %t179 = load i64, ptr %l84
  %t180 = inttoptr i64 %t179 to ptr
  %t181 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l86, i32 0, i32 0
  %t182 = load { i64, ptr }, ptr %t181
  %t183 = extractvalue { i64, ptr } %t182, 1
  %t184 = call ptr @__olang_region_or(ptr %t183, ptr null)
  %t185 = icmp ne ptr %t184, null
  %t186 = select i1 %t185, ptr %t184, ptr null
  %t187 = icmp eq ptr %t186, %t180
  call void @__olang_region_settle(ptr %t180, i1 %t187)
  br label %bb40
bb40:
  %t188 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l86
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t188, ptr %l12
  %t189 = ptrtoint ptr %v2 to i64
  store i64 %t189, ptr %l88, !tbaa !24
  %t190 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e11
  br i1 %t190, label %bb41, label %bb42
bb41:
  %t192 = call ptr @__olang_region_make(ptr %v2)
  %t193 = ptrtoint ptr %t192 to i64
  store i64 %t193, ptr %l88, !tbaa !24
  br label %bb42
bb42:
  %t194 = load i64, ptr %l88
  %t195 = inttoptr i64 %t194 to ptr
  %t196 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t195, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t196, ptr %l90
  br label %bb43
bb43:
  %t197 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e11
  br i1 %t197, label %bb44, label %bb45
bb44:
  %t199 = load i64, ptr %l88
  %t200 = inttoptr i64 %t199 to ptr
  %t201 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l90, i32 0, i32 0
  %t202 = load { i64, ptr }, ptr %t201
  %t203 = extractvalue { i64, ptr } %t202, 1
  %t204 = call ptr @__olang_region_or(ptr %t203, ptr null)
  %t205 = icmp ne ptr %t204, null
  %t206 = select i1 %t205, ptr %t204, ptr null
  %t207 = icmp eq ptr %t206, %t200
  call void @__olang_region_settle(ptr %t200, i1 %t207)
  br label %bb45
bb45:
  %t208 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l90
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t208, ptr %l13
  store i64 0, ptr %l14, !tbaa !24
  %t209 = ptrtoint ptr %v2 to i64
  store i64 %t209, ptr %l92, !tbaa !24
  %t210 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e13
  br i1 %t210, label %bb46, label %bb47
bb46:
  %t212 = call ptr @__olang_region_make(ptr %v2)
  %t213 = ptrtoint ptr %t212 to i64
  store i64 %t213, ptr %l92, !tbaa !24
  br label %bb47
bb47:
  %t214 = load i64, ptr %l92
  %t215 = inttoptr i64 %t214 to ptr
  %t216 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t215, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t216, ptr %l94
  br label %bb48
bb48:
  %t217 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e13
  br i1 %t217, label %bb49, label %bb50
bb49:
  %t219 = load i64, ptr %l92
  %t220 = inttoptr i64 %t219 to ptr
  %t221 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l94, i32 0, i32 0
  %t222 = load { i64, ptr }, ptr %t221
  %t223 = extractvalue { i64, ptr } %t222, 1
  %t224 = call ptr @__olang_region_or(ptr %t223, ptr null)
  %t225 = icmp ne ptr %t224, null
  %t226 = select i1 %t225, ptr %t224, ptr null
  %t227 = icmp eq ptr %t226, %t220
  call void @__olang_region_settle(ptr %t220, i1 %t227)
  br label %bb50
bb50:
  %t228 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l94
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t228, ptr %l15
  %t229 = ptrtoint ptr %v2 to i64
  store i64 %t229, ptr %l96, !tbaa !24
  %t230 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e14
  br i1 %t230, label %bb51, label %bb52
bb51:
  %t232 = call ptr @__olang_region_make(ptr %v2)
  %t233 = ptrtoint ptr %t232 to i64
  store i64 %t233, ptr %l96, !tbaa !24
  br label %bb52
bb52:
  %t234 = load i64, ptr %l96
  %t235 = inttoptr i64 %t234 to ptr
  %t236 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t235, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t236, ptr %l98
  br label %bb53
bb53:
  %t237 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e14
  br i1 %t237, label %bb54, label %bb55
bb54:
  %t239 = load i64, ptr %l96
  %t240 = inttoptr i64 %t239 to ptr
  %t241 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l98, i32 0, i32 0
  %t242 = load { i64, ptr }, ptr %t241
  %t243 = extractvalue { i64, ptr } %t242, 1
  %t244 = call ptr @__olang_region_or(ptr %t243, ptr null)
  %t245 = icmp ne ptr %t244, null
  %t246 = select i1 %t245, ptr %t244, ptr null
  %t247 = icmp eq ptr %t246, %t240
  call void @__olang_region_settle(ptr %t240, i1 %t247)
  br label %bb55
bb55:
  %t248 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l98
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t248, ptr %l16
  %t249 = ptrtoint ptr %v2 to i64
  store i64 %t249, ptr %l100, !tbaa !24
  %t250 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e15
  br i1 %t250, label %bb56, label %bb57
bb56:
  %t252 = call ptr @__olang_region_make(ptr %v2)
  %t253 = ptrtoint ptr %t252 to i64
  store i64 %t253, ptr %l100, !tbaa !24
  br label %bb57
bb57:
  %t254 = load i64, ptr %l100
  %t255 = inttoptr i64 %t254 to ptr
  %t256 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t255)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t256, ptr %l102
  br label %bb58
bb58:
  %t257 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e15
  br i1 %t257, label %bb59, label %bb60
bb59:
  %t259 = load i64, ptr %l100
  %t260 = inttoptr i64 %t259 to ptr
  %t261 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l102, i32 0, i32 2
  %t262 = load { i64, ptr }, ptr %t261
  %t263 = extractvalue { i64, ptr } %t262, 1
  %t264 = call ptr @__olang_region_or(ptr %t263, ptr null)
  %t265 = icmp ne ptr %t264, null
  %t266 = select i1 %t265, ptr %t264, ptr null
  %t267 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l102, i32 0, i32 1
  %t268 = load { i64, ptr }, ptr %t267
  %t269 = extractvalue { i64, ptr } %t268, 1
  %t270 = call ptr @__olang_region_or(ptr %t269, ptr null)
  %t271 = icmp ne ptr %t270, null
  %t272 = select i1 %t271, ptr %t270, ptr %t266
  %t273 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l102, i32 0, i32 0
  %t274 = load { i64, ptr }, ptr %t273
  %t275 = extractvalue { i64, ptr } %t274, 1
  %t276 = call ptr @__olang_region_or(ptr %t275, ptr null)
  %t277 = icmp ne ptr %t276, null
  %t278 = select i1 %t277, ptr %t276, ptr %t272
  %t279 = icmp eq ptr %t278, %t260
  call void @__olang_region_settle(ptr %t260, i1 %t279)
  br label %bb60
bb60:
  %t280 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l102
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t280, ptr %l17
  %t281 = ptrtoint ptr %v2 to i64
  store i64 %t281, ptr %l104, !tbaa !24
  %t282 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e16
  br i1 %t282, label %bb61, label %bb62
bb61:
  %t284 = call ptr @__olang_region_make(ptr %v2)
  %t285 = ptrtoint ptr %t284 to i64
  store i64 %t285, ptr %l104, !tbaa !24
  br label %bb62
bb62:
  %t286 = load i64, ptr %l104
  %t287 = inttoptr i64 %t286 to ptr
  %t288 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2feffects_3apair_2c_20Bool_3e(ptr %t287)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t288, ptr %l106
  br label %bb63
bb63:
  %t289 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e16
  br i1 %t289, label %bb64, label %bb65
bb64:
  %t291 = load i64, ptr %l104
  %t292 = inttoptr i64 %t291 to ptr
  %t293 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l106, i32 0, i32 2
  %t294 = load { i64, ptr }, ptr %t293
  %t295 = extractvalue { i64, ptr } %t294, 1
  %t296 = call ptr @__olang_region_or(ptr %t295, ptr null)
  %t297 = icmp ne ptr %t296, null
  %t298 = select i1 %t297, ptr %t296, ptr null
  %t299 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l106, i32 0, i32 1
  %t300 = load { i64, ptr }, ptr %t299
  %t301 = extractvalue { i64, ptr } %t300, 1
  %t302 = call ptr @__olang_region_or(ptr %t301, ptr null)
  %t303 = icmp ne ptr %t302, null
  %t304 = select i1 %t303, ptr %t302, ptr %t298
  %t305 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l106, i32 0, i32 0
  %t306 = load { i64, ptr }, ptr %t305
  %t307 = extractvalue { i64, ptr } %t306, 1
  %t308 = call ptr @__olang_region_or(ptr %t307, ptr null)
  %t309 = icmp ne ptr %t308, null
  %t310 = select i1 %t309, ptr %t308, ptr %t304
  %t311 = icmp eq ptr %t310, %t292
  call void @__olang_region_settle(ptr %t292, i1 %t311)
  br label %bb65
bb65:
  %t312 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l106
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t312, ptr %l18
  %t313 = ptrtoint ptr %v2 to i64
  store i64 %t313, ptr %l108, !tbaa !24
  %t314 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e17
  br i1 %t314, label %bb66, label %bb67
bb66:
  %t316 = call ptr @__olang_region_make(ptr %v2)
  %t317 = ptrtoint ptr %t316 to i64
  store i64 %t317, ptr %l108, !tbaa !24
  br label %bb67
bb67:
  %t318 = load i64, ptr %l108
  %t319 = inttoptr i64 %t318 to ptr
  %t320 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t319, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t320, ptr %l110
  br label %bb68
bb68:
  %t321 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e17
  br i1 %t321, label %bb69, label %bb70
bb69:
  %t323 = load i64, ptr %l108
  %t324 = inttoptr i64 %t323 to ptr
  %t325 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l110, i32 0, i32 0
  %t326 = load { i64, ptr }, ptr %t325
  %t327 = extractvalue { i64, ptr } %t326, 1
  %t328 = call ptr @__olang_region_or(ptr %t327, ptr null)
  %t329 = icmp ne ptr %t328, null
  %t330 = select i1 %t329, ptr %t328, ptr null
  %t331 = icmp eq ptr %t330, %t324
  call void @__olang_region_settle(ptr %t324, i1 %t331)
  br label %bb70
bb70:
  %t332 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l110
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t332, ptr %l19
  %t333 = ptrtoint ptr %v2 to i64
  store i64 %t333, ptr %l112, !tbaa !24
  %t334 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e18
  br i1 %t334, label %bb71, label %bb72
bb71:
  %t336 = call ptr @__olang_region_make(ptr %v2)
  %t337 = ptrtoint ptr %t336 to i64
  store i64 %t337, ptr %l112, !tbaa !24
  br label %bb72
bb72:
  %t338 = load i64, ptr %l112
  %t339 = inttoptr i64 %t338 to ptr
  %t340 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t339, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t340, ptr %l114
  br label %bb73
bb73:
  %t341 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e18
  br i1 %t341, label %bb74, label %bb75
bb74:
  %t343 = load i64, ptr %l112
  %t344 = inttoptr i64 %t343 to ptr
  %t345 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l114, i32 0, i32 0
  %t346 = load { i64, ptr }, ptr %t345
  %t347 = extractvalue { i64, ptr } %t346, 1
  %t348 = call ptr @__olang_region_or(ptr %t347, ptr null)
  %t349 = icmp ne ptr %t348, null
  %t350 = select i1 %t349, ptr %t348, ptr null
  %t351 = icmp eq ptr %t350, %t344
  call void @__olang_region_settle(ptr %t344, i1 %t351)
  br label %bb75
bb75:
  %t352 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l114
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t352, ptr %l20
  %t353 = ptrtoint ptr %v2 to i64
  store i64 %t353, ptr %l116, !tbaa !24
  %t354 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e19
  br i1 %t354, label %bb76, label %bb77
bb76:
  %t356 = call ptr @__olang_region_make(ptr %v2)
  %t357 = ptrtoint ptr %t356 to i64
  store i64 %t357, ptr %l116, !tbaa !24
  br label %bb77
bb77:
  %t358 = load i64, ptr %l116
  %t359 = inttoptr i64 %t358 to ptr
  %t360 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t359, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t360, ptr %l118
  br label %bb78
bb78:
  %t361 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e19
  br i1 %t361, label %bb79, label %bb80
bb79:
  %t363 = load i64, ptr %l116
  %t364 = inttoptr i64 %t363 to ptr
  %t365 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l118, i32 0, i32 0
  %t366 = load { i64, ptr }, ptr %t365
  %t367 = extractvalue { i64, ptr } %t366, 1
  %t368 = call ptr @__olang_region_or(ptr %t367, ptr null)
  %t369 = icmp ne ptr %t368, null
  %t370 = select i1 %t369, ptr %t368, ptr null
  %t371 = icmp eq ptr %t370, %t364
  call void @__olang_region_settle(ptr %t364, i1 %t371)
  br label %bb80
bb80:
  %t372 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l118
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t372, ptr %l21
  %t373 = ptrtoint ptr %v2 to i64
  store i64 %t373, ptr %l120, !tbaa !24
  %t374 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e20
  br i1 %t374, label %bb81, label %bb82
bb81:
  %t376 = call ptr @__olang_region_make(ptr %v2)
  %t377 = ptrtoint ptr %t376 to i64
  store i64 %t377, ptr %l120, !tbaa !24
  br label %bb82
bb82:
  %t378 = load i64, ptr %l120
  %t379 = inttoptr i64 %t378 to ptr
  %t380 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t379, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t380, ptr %l122
  br label %bb83
bb83:
  %t381 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e20
  br i1 %t381, label %bb84, label %bb85
bb84:
  %t383 = load i64, ptr %l120
  %t384 = inttoptr i64 %t383 to ptr
  %t385 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l122, i32 0, i32 0
  %t386 = load { i64, ptr }, ptr %t385
  %t387 = extractvalue { i64, ptr } %t386, 1
  %t388 = call ptr @__olang_region_or(ptr %t387, ptr null)
  %t389 = icmp ne ptr %t388, null
  %t390 = select i1 %t389, ptr %t388, ptr null
  %t391 = icmp eq ptr %t390, %t384
  call void @__olang_region_settle(ptr %t384, i1 %t391)
  br label %bb85
bb85:
  %t392 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l122
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t392, ptr %l22
  store i64 0, ptr %l23, !tbaa !24
  %t393 = call %"compiler/effects:Facts" @compiler_2feffects_3aFacts_2ector(ptr %v2)
  store %"compiler/effects:Facts" %t393, ptr %l124
  br label %bb86
bb86:
  %t394 = load %"compiler/effects:Facts", ptr %l124
  store %"compiler/effects:Facts" %t394, ptr %l24
  %t395 = ptrtoint ptr %v2 to i64
  store i64 %t395, ptr %l125, !tbaa !24
  %t396 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e23
  br i1 %t396, label %bb87, label %bb88
bb87:
  %t398 = call ptr @__olang_region_make(ptr %v2)
  %t399 = ptrtoint ptr %t398 to i64
  store i64 %t399, ptr %l125, !tbaa !24
  br label %bb88
bb88:
  %t400 = load i64, ptr %l125
  %t401 = inttoptr i64 %t400 to ptr
  %t402 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t401, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t402, ptr %l127
  br label %bb89
bb89:
  %t403 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e23
  br i1 %t403, label %bb90, label %bb91
bb90:
  %t405 = load i64, ptr %l125
  %t406 = inttoptr i64 %t405 to ptr
  %t407 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l127, i32 0, i32 0
  %t408 = load { i64, ptr }, ptr %t407
  %t409 = extractvalue { i64, ptr } %t408, 1
  %t410 = call ptr @__olang_region_or(ptr %t409, ptr null)
  %t411 = icmp ne ptr %t410, null
  %t412 = select i1 %t411, ptr %t410, ptr null
  %t413 = icmp eq ptr %t412, %t406
  call void @__olang_region_settle(ptr %t406, i1 %t413)
  br label %bb91
bb91:
  %t414 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l127
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t414, ptr %l25
  %t415 = ptrtoint ptr %v2 to i64
  store i64 %t415, ptr %l129, !tbaa !24
  %t416 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e24
  br i1 %t416, label %bb92, label %bb93
bb92:
  %t418 = call ptr @__olang_region_make(ptr %v2)
  %t419 = ptrtoint ptr %t418 to i64
  store i64 %t419, ptr %l129, !tbaa !24
  br label %bb93
bb93:
  %t420 = load i64, ptr %l129
  %t421 = inttoptr i64 %t420 to ptr
  %t422 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3alink_3e_2ector(ptr %t421, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t422, ptr %l131
  br label %bb94
bb94:
  %t423 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e24
  br i1 %t423, label %bb95, label %bb96
bb95:
  %t425 = load i64, ptr %l129
  %t426 = inttoptr i64 %t425 to ptr
  %t427 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l131, i32 0, i32 0
  %t428 = load { i64, ptr }, ptr %t427
  %t429 = extractvalue { i64, ptr } %t428, 1
  %t430 = call ptr @__olang_region_or(ptr %t429, ptr null)
  %t431 = icmp ne ptr %t430, null
  %t432 = select i1 %t431, ptr %t430, ptr null
  %t433 = icmp eq ptr %t432, %t426
  call void @__olang_region_settle(ptr %t426, i1 %t433)
  br label %bb96
bb96:
  %t434 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l131
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t434, ptr %l26
  %t435 = ptrtoint ptr %v2 to i64
  store i64 %t435, ptr %l133, !tbaa !24
  %t436 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e25
  br i1 %t436, label %bb97, label %bb98
bb97:
  %t438 = call ptr @__olang_region_make(ptr %v2)
  %t439 = ptrtoint ptr %t438 to i64
  store i64 %t439, ptr %l133, !tbaa !24
  br label %bb98
bb98:
  %t440 = load i64, ptr %l133
  %t441 = inttoptr i64 %t440 to ptr
  %t442 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3agiven_3e_2ector(ptr %t441, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t442, ptr %l135
  br label %bb99
bb99:
  %t443 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e25
  br i1 %t443, label %bb100, label %bb101
bb100:
  %t445 = load i64, ptr %l133
  %t446 = inttoptr i64 %t445 to ptr
  %t447 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l135, i32 0, i32 0
  %t448 = load { i64, ptr }, ptr %t447
  %t449 = extractvalue { i64, ptr } %t448, 1
  %t450 = call ptr @__olang_region_or(ptr %t449, ptr null)
  %t451 = icmp ne ptr %t450, null
  %t452 = select i1 %t451, ptr %t450, ptr null
  %t453 = icmp eq ptr %t452, %t446
  call void @__olang_region_settle(ptr %t446, i1 %t453)
  br label %bb101
bb101:
  %t454 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l135
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t454, ptr %l27
  %t455 = ptrtoint ptr %v2 to i64
  store i64 %t455, ptr %l137, !tbaa !24
  %t456 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e26
  br i1 %t456, label %bb102, label %bb103
bb102:
  %t458 = call ptr @__olang_region_make(ptr %v2)
  %t459 = ptrtoint ptr %t458 to i64
  store i64 %t459, ptr %l137, !tbaa !24
  br label %bb103
bb103:
  %t460 = load i64, ptr %l137
  %t461 = inttoptr i64 %t460 to ptr
  %t462 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t461)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t462, ptr %l139
  br label %bb104
bb104:
  %t463 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e26
  br i1 %t463, label %bb105, label %bb106
bb105:
  %t465 = load i64, ptr %l137
  %t466 = inttoptr i64 %t465 to ptr
  %t467 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l139, i32 0, i32 2
  %t468 = load { i64, ptr }, ptr %t467
  %t469 = extractvalue { i64, ptr } %t468, 1
  %t470 = call ptr @__olang_region_or(ptr %t469, ptr null)
  %t471 = icmp ne ptr %t470, null
  %t472 = select i1 %t471, ptr %t470, ptr null
  %t473 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l139, i32 0, i32 1
  %t474 = load { i64, ptr }, ptr %t473
  %t475 = extractvalue { i64, ptr } %t474, 1
  %t476 = call ptr @__olang_region_or(ptr %t475, ptr null)
  %t477 = icmp ne ptr %t476, null
  %t478 = select i1 %t477, ptr %t476, ptr %t472
  %t479 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l139, i32 0, i32 0
  %t480 = load { i64, ptr }, ptr %t479
  %t481 = extractvalue { i64, ptr } %t480, 1
  %t482 = call ptr @__olang_region_or(ptr %t481, ptr null)
  %t483 = icmp ne ptr %t482, null
  %t484 = select i1 %t483, ptr %t482, ptr %t478
  %t485 = icmp eq ptr %t484, %t466
  call void @__olang_region_settle(ptr %t466, i1 %t485)
  br label %bb106
bb106:
  %t486 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l139
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t486, ptr %l28
  %t487 = ptrtoint ptr %v2 to i64
  store i64 %t487, ptr %l141, !tbaa !24
  %t488 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e27
  br i1 %t488, label %bb107, label %bb108
bb107:
  %t490 = call ptr @__olang_region_make(ptr %v2)
  %t491 = ptrtoint ptr %t490 to i64
  store i64 %t491, ptr %l141, !tbaa !24
  br label %bb108
bb108:
  %t492 = load i64, ptr %l141
  %t493 = inttoptr i64 %t492 to ptr
  %t494 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t493)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t494, ptr %l143
  br label %bb109
bb109:
  %t495 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e27
  br i1 %t495, label %bb110, label %bb111
bb110:
  %t497 = load i64, ptr %l141
  %t498 = inttoptr i64 %t497 to ptr
  %t499 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l143, i32 0, i32 2
  %t500 = load { i64, ptr }, ptr %t499
  %t501 = extractvalue { i64, ptr } %t500, 1
  %t502 = call ptr @__olang_region_or(ptr %t501, ptr null)
  %t503 = icmp ne ptr %t502, null
  %t504 = select i1 %t503, ptr %t502, ptr null
  %t505 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l143, i32 0, i32 1
  %t506 = load { i64, ptr }, ptr %t505
  %t507 = extractvalue { i64, ptr } %t506, 1
  %t508 = call ptr @__olang_region_or(ptr %t507, ptr null)
  %t509 = icmp ne ptr %t508, null
  %t510 = select i1 %t509, ptr %t508, ptr %t504
  %t511 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l143, i32 0, i32 0
  %t512 = load { i64, ptr }, ptr %t511
  %t513 = extractvalue { i64, ptr } %t512, 1
  %t514 = call ptr @__olang_region_or(ptr %t513, ptr null)
  %t515 = icmp ne ptr %t514, null
  %t516 = select i1 %t515, ptr %t514, ptr %t510
  %t517 = icmp eq ptr %t516, %t498
  call void @__olang_region_settle(ptr %t498, i1 %t517)
  br label %bb111
bb111:
  %t518 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l143
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t518, ptr %l29
  %t519 = ptrtoint ptr %v2 to i64
  store i64 %t519, ptr %l145, !tbaa !24
  %t520 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e28
  br i1 %t520, label %bb112, label %bb113
bb112:
  %t522 = call ptr @__olang_region_make(ptr %v2)
  %t523 = ptrtoint ptr %t522 to i64
  store i64 %t523, ptr %l145, !tbaa !24
  br label %bb113
bb113:
  %t524 = load i64, ptr %l145
  %t525 = inttoptr i64 %t524 to ptr
  %t526 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t525)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t526, ptr %l147
  br label %bb114
bb114:
  %t527 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e28
  br i1 %t527, label %bb115, label %bb116
bb115:
  %t529 = load i64, ptr %l145
  %t530 = inttoptr i64 %t529 to ptr
  %t531 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l147, i32 0, i32 2
  %t532 = load { i64, ptr }, ptr %t531
  %t533 = extractvalue { i64, ptr } %t532, 1
  %t534 = call ptr @__olang_region_or(ptr %t533, ptr null)
  %t535 = icmp ne ptr %t534, null
  %t536 = select i1 %t535, ptr %t534, ptr null
  %t537 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l147, i32 0, i32 1
  %t538 = load { i64, ptr }, ptr %t537
  %t539 = extractvalue { i64, ptr } %t538, 1
  %t540 = call ptr @__olang_region_or(ptr %t539, ptr null)
  %t541 = icmp ne ptr %t540, null
  %t542 = select i1 %t541, ptr %t540, ptr %t536
  %t543 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l147, i32 0, i32 0
  %t544 = load { i64, ptr }, ptr %t543
  %t545 = extractvalue { i64, ptr } %t544, 1
  %t546 = call ptr @__olang_region_or(ptr %t545, ptr null)
  %t547 = icmp ne ptr %t546, null
  %t548 = select i1 %t547, ptr %t546, ptr %t542
  %t549 = icmp eq ptr %t548, %t530
  call void @__olang_region_settle(ptr %t530, i1 %t549)
  br label %bb116
bb116:
  %t550 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l147
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t550, ptr %l30
  %t551 = ptrtoint ptr %v2 to i64
  store i64 %t551, ptr %l149, !tbaa !24
  %t552 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e29
  br i1 %t552, label %bb117, label %bb118
bb117:
  %t554 = call ptr @__olang_region_make(ptr %v2)
  %t555 = ptrtoint ptr %t554 to i64
  store i64 %t555, ptr %l149, !tbaa !24
  br label %bb118
bb118:
  %t556 = load i64, ptr %l149
  %t557 = inttoptr i64 %t556 to ptr
  %t558 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t557)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t558, ptr %l151
  br label %bb119
bb119:
  %t559 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e29
  br i1 %t559, label %bb120, label %bb121
bb120:
  %t561 = load i64, ptr %l149
  %t562 = inttoptr i64 %t561 to ptr
  %t563 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l151, i32 0, i32 2
  %t564 = load { i64, ptr }, ptr %t563
  %t565 = extractvalue { i64, ptr } %t564, 1
  %t566 = call ptr @__olang_region_or(ptr %t565, ptr null)
  %t567 = icmp ne ptr %t566, null
  %t568 = select i1 %t567, ptr %t566, ptr null
  %t569 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l151, i32 0, i32 1
  %t570 = load { i64, ptr }, ptr %t569
  %t571 = extractvalue { i64, ptr } %t570, 1
  %t572 = call ptr @__olang_region_or(ptr %t571, ptr null)
  %t573 = icmp ne ptr %t572, null
  %t574 = select i1 %t573, ptr %t572, ptr %t568
  %t575 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l151, i32 0, i32 0
  %t576 = load { i64, ptr }, ptr %t575
  %t577 = extractvalue { i64, ptr } %t576, 1
  %t578 = call ptr @__olang_region_or(ptr %t577, ptr null)
  %t579 = icmp ne ptr %t578, null
  %t580 = select i1 %t579, ptr %t578, ptr %t574
  %t581 = icmp eq ptr %t580, %t562
  call void @__olang_region_settle(ptr %t562, i1 %t581)
  br label %bb121
bb121:
  %t582 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l151
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t582, ptr %l31
  store i64 -1, ptr %l32, !tbaa !24
  store i64 -1, ptr %l33, !tbaa !24
  %t583 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apend_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t583, ptr %l153
  br label %bb122
bb122:
  %t584 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l153
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t584, ptr %l34
  %t585 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t585, ptr %l154
  br label %bb123
bb123:
  %t586 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l154
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t586, ptr %l35
  %t587 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fv_H3227b03907400d34f4865c02b6d98850(ptr %v2)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t587, ptr %l155
  br label %bb124
bb124:
  %t588 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l155
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t588, ptr %l36
  %t589 = ptrtoint ptr %v2 to i64
  store i64 %t589, ptr %l156, !tbaa !24
  %t590 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e35
  br i1 %t590, label %bb125, label %bb126
bb125:
  %t592 = call ptr @__olang_region_make(ptr %v2)
  %t593 = ptrtoint ptr %t592 to i64
  store i64 %t593, ptr %l156, !tbaa !24
  br label %bb126
bb126:
  %t594 = load i64, ptr %l156
  %t595 = inttoptr i64 %t594 to ptr
  %t596 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t595)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t596, ptr %l158
  br label %bb127
bb127:
  %t597 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e35
  br i1 %t597, label %bb128, label %bb129
bb128:
  %t599 = load i64, ptr %l156
  %t600 = inttoptr i64 %t599 to ptr
  %t601 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l158, i32 0, i32 2
  %t602 = load { i64, ptr }, ptr %t601
  %t603 = extractvalue { i64, ptr } %t602, 1
  %t604 = call ptr @__olang_region_or(ptr %t603, ptr null)
  %t605 = icmp ne ptr %t604, null
  %t606 = select i1 %t605, ptr %t604, ptr null
  %t607 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l158, i32 0, i32 1
  %t608 = load { i64, ptr }, ptr %t607
  %t609 = extractvalue { i64, ptr } %t608, 1
  %t610 = call ptr @__olang_region_or(ptr %t609, ptr null)
  %t611 = icmp ne ptr %t610, null
  %t612 = select i1 %t611, ptr %t610, ptr %t606
  %t613 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l158, i32 0, i32 0
  %t614 = load { i64, ptr }, ptr %t613
  %t615 = extractvalue { i64, ptr } %t614, 1
  %t616 = call ptr @__olang_region_or(ptr %t615, ptr null)
  %t617 = icmp ne ptr %t616, null
  %t618 = select i1 %t617, ptr %t616, ptr %t612
  %t619 = icmp eq ptr %t618, %t600
  call void @__olang_region_settle(ptr %t600, i1 %t619)
  br label %bb129
bb129:
  %t620 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l158
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t620, ptr %l37
  %t621 = ptrtoint ptr %v2 to i64
  store i64 %t621, ptr %l160, !tbaa !24
  %t622 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e36
  br i1 %t622, label %bb130, label %bb131
bb130:
  %t624 = call ptr @__olang_region_make(ptr %v2)
  %t625 = ptrtoint ptr %t624 to i64
  store i64 %t625, ptr %l160, !tbaa !24
  br label %bb131
bb131:
  %t626 = load i64, ptr %l160
  %t627 = inttoptr i64 %t626 to ptr
  %t628 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t627, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t628, ptr %l162
  br label %bb132
bb132:
  %t629 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e36
  br i1 %t629, label %bb133, label %bb134
bb133:
  %t631 = load i64, ptr %l160
  %t632 = inttoptr i64 %t631 to ptr
  %t633 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l162, i32 0, i32 0
  %t634 = load { i64, ptr }, ptr %t633
  %t635 = extractvalue { i64, ptr } %t634, 1
  %t636 = call ptr @__olang_region_or(ptr %t635, ptr null)
  %t637 = icmp ne ptr %t636, null
  %t638 = select i1 %t637, ptr %t636, ptr null
  %t639 = icmp eq ptr %t638, %t632
  call void @__olang_region_settle(ptr %t632, i1 %t639)
  br label %bb134
bb134:
  %t640 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l162
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t640, ptr %l38
  %t641 = ptrtoint ptr %v2 to i64
  store i64 %t641, ptr %l164, !tbaa !24
  %t642 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e37
  br i1 %t642, label %bb135, label %bb136
bb135:
  %t644 = call ptr @__olang_region_make(ptr %v2)
  %t645 = ptrtoint ptr %t644 to i64
  store i64 %t645, ptr %l164, !tbaa !24
  br label %bb136
bb136:
  %t646 = load i64, ptr %l164
  %t647 = inttoptr i64 %t646 to ptr
  %t648 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t647, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t648, ptr %l166
  br label %bb137
bb137:
  %t649 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e37
  br i1 %t649, label %bb138, label %bb139
bb138:
  %t651 = load i64, ptr %l164
  %t652 = inttoptr i64 %t651 to ptr
  %t653 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l166, i32 0, i32 0
  %t654 = load { i64, ptr }, ptr %t653
  %t655 = extractvalue { i64, ptr } %t654, 1
  %t656 = call ptr @__olang_region_or(ptr %t655, ptr null)
  %t657 = icmp ne ptr %t656, null
  %t658 = select i1 %t657, ptr %t656, ptr null
  %t659 = icmp eq ptr %t658, %t652
  call void @__olang_region_settle(ptr %t652, i1 %t659)
  br label %bb139
bb139:
  %t660 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l166
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t660, ptr %l39
  store i1 false, ptr %l40, !tbaa !21
  store i1 false, ptr %l41, !tbaa !21
  store i1 false, ptr %l42, !tbaa !21
  %t661 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t661, ptr %l168
  br label %bb140
bb140:
  %t662 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l168
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t662, ptr %l43
  %t663 = ptrtoint ptr %v2 to i64
  store i64 %t663, ptr %l169, !tbaa !24
  %t664 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e42
  br i1 %t664, label %bb141, label %bb142
bb141:
  %t666 = call ptr @__olang_region_make(ptr %v2)
  %t667 = ptrtoint ptr %t666 to i64
  store i64 %t667, ptr %l169, !tbaa !24
  br label %bb142
bb142:
  %t668 = load i64, ptr %l169
  %t669 = inttoptr i64 %t668 to ptr
  %t670 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t669, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t670, ptr %l171
  br label %bb143
bb143:
  %t671 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e42
  br i1 %t671, label %bb144, label %bb145
bb144:
  %t673 = load i64, ptr %l169
  %t674 = inttoptr i64 %t673 to ptr
  %t675 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l171, i32 0, i32 0
  %t676 = load { i64, ptr }, ptr %t675
  %t677 = extractvalue { i64, ptr } %t676, 1
  %t678 = call ptr @__olang_region_or(ptr %t677, ptr null)
  %t679 = icmp ne ptr %t678, null
  %t680 = select i1 %t679, ptr %t678, ptr null
  %t681 = icmp eq ptr %t680, %t674
  call void @__olang_region_settle(ptr %t674, i1 %t681)
  br label %bb145
bb145:
  %t682 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l171
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t682, ptr %l44
  store i1 false, ptr %l45, !tbaa !21
  store i64 0, ptr %l46, !tbaa !24
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d69, i32 0, i32 1) }, ptr %l173, !tbaa !27
  %t683 = load { i64, ptr }, ptr %l173, !tbaa !27
  store { i64, ptr } %t683, ptr %l174, !tbaa !27
  %t684 = load { i64, ptr }, ptr %l174, !tbaa !27
  %t685 = extractvalue { i64, ptr } %t684, 0
  store i64 %t685, ptr %l175, !tbaa !24
  %t686 = load i64, ptr %l175, !tbaa !24
  %t687 = mul i64 %t686, 1
  %t688 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t687)
  %t689 = insertvalue { i64, ptr } undef, i64 %t686, 0
  %t690 = insertvalue { i64, ptr } %t689, ptr %t688, 1
  store { i64, ptr } %t690, ptr %l176, !tbaa !27
  %t691 = getelementptr { i64, ptr }, ptr %l176, i32 0, i32 1
  %t692 = load ptr, ptr %t691, !tbaa !27
  %t693 = getelementptr { i64, ptr }, ptr %l174, i32 0, i32 1
  %t694 = load ptr, ptr %t693, !tbaa !27
  %t695 = load i64, ptr %l175, !tbaa !24
  %t696 = mul i64 %t695, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t692, ptr %t694, i64 %t696, i1 false)
  %t697 = load { i64, ptr }, ptr %l176, !tbaa !27
  store { i64, ptr } %t697, ptr %l47, !tbaa !27
  store i1 false, ptr %l48, !tbaa !21
  %t698 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v2, i32 -1, i32 -1)
  store %"compiler/source:Span" %t698, ptr %l177
  br label %bb146
bb146:
  %t699 = load %"compiler/source:Span", ptr %l177
  store %"compiler/source:Span" %t699, ptr %l49
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d70, i32 0, i32 1) }, ptr %l178, !tbaa !27
  %t700 = load { i64, ptr }, ptr %l178, !tbaa !27
  store { i64, ptr } %t700, ptr %l179, !tbaa !27
  %t701 = load { i64, ptr }, ptr %l179, !tbaa !27
  %t702 = extractvalue { i64, ptr } %t701, 0
  store i64 %t702, ptr %l180, !tbaa !24
  %t703 = load i64, ptr %l180, !tbaa !24
  %t704 = mul i64 %t703, 1
  %t705 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t704)
  %t706 = insertvalue { i64, ptr } undef, i64 %t703, 0
  %t707 = insertvalue { i64, ptr } %t706, ptr %t705, 1
  store { i64, ptr } %t707, ptr %l181, !tbaa !27
  %t708 = getelementptr { i64, ptr }, ptr %l181, i32 0, i32 1
  %t709 = load ptr, ptr %t708, !tbaa !27
  %t710 = getelementptr { i64, ptr }, ptr %l179, i32 0, i32 1
  %t711 = load ptr, ptr %t710, !tbaa !27
  %t712 = load i64, ptr %l180, !tbaa !24
  %t713 = mul i64 %t712, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t709, ptr %t711, i64 %t713, i1 false)
  %t714 = load { i64, ptr }, ptr %l181, !tbaa !27
  store { i64, ptr } %t714, ptr %l50, !tbaa !27
  store i1 false, ptr %l51, !tbaa !21
  store i64 -1, ptr %l52, !tbaa !24
  %t715 = ptrtoint ptr %v2 to i64
  store i64 %t715, ptr %l182, !tbaa !24
  %t716 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e51
  br i1 %t716, label %bb147, label %bb148
bb147:
  %t718 = call ptr @__olang_region_make(ptr %v2)
  %t719 = ptrtoint ptr %t718 to i64
  store i64 %t719, ptr %l182, !tbaa !24
  br label %bb148
bb148:
  %t720 = load i64, ptr %l182
  %t721 = inttoptr i64 %t720 to ptr
  %t722 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e(ptr %t721)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t722, ptr %l184
  br label %bb149
bb149:
  %t723 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e51
  br i1 %t723, label %bb150, label %bb151
bb150:
  %t725 = load i64, ptr %l182
  %t726 = inttoptr i64 %t725 to ptr
  %t727 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l184, i32 0, i32 2
  %t728 = load { i64, ptr }, ptr %t727
  %t729 = extractvalue { i64, ptr } %t728, 1
  %t730 = call ptr @__olang_region_or(ptr %t729, ptr null)
  %t731 = icmp ne ptr %t730, null
  %t732 = select i1 %t731, ptr %t730, ptr null
  %t733 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l184, i32 0, i32 1
  %t734 = load { i64, ptr }, ptr %t733
  %t735 = extractvalue { i64, ptr } %t734, 1
  %t736 = call ptr @__olang_region_or(ptr %t735, ptr null)
  %t737 = icmp ne ptr %t736, null
  %t738 = select i1 %t737, ptr %t736, ptr %t732
  %t739 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l184, i32 0, i32 0
  %t740 = load { i64, ptr }, ptr %t739
  %t741 = extractvalue { i64, ptr } %t740, 1
  %t742 = call ptr @__olang_region_or(ptr %t741, ptr null)
  %t743 = icmp ne ptr %t742, null
  %t744 = select i1 %t743, ptr %t742, ptr %t738
  %t745 = icmp eq ptr %t744, %t726
  call void @__olang_region_settle(ptr %t726, i1 %t745)
  br label %bb151
bb151:
  %t746 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l184
  %t747 = getelementptr %"compiler/effects:Effects", ptr %l186, i32 0, i32 0
  %t748 = load ptr, ptr %l2, !tbaa !29
  store ptr %t748, ptr %t747, !tbaa !29
  %t749 = getelementptr %"compiler/effects:Effects", ptr %l186, i32 0, i32 1
  %t750 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t750, ptr %t749
  %t751 = getelementptr %"compiler/effects:Effects", ptr %l186, i32 0, i32 2
  %t752 = load i1, ptr %l4, !tbaa !21
  store i1 %t752, ptr %t751, !tbaa !21
  %t753 = getelementptr %"compiler/effects:Effects", ptr %l186, i32 0, i32 3
  %t754 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t754, ptr %t753
  %t755 = getelementptr %"compiler/effects:Effects", ptr %l186, i32 0, i32 4
  %t756 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t756, ptr %t755
  %t757 = getelementptr %"compiler/effects:Effects", ptr %l186, i32 0, i32 5
  %t758 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t758, ptr %t757
  %t759 = getelementptr %"compiler/effects:Effects", ptr %l186, i32 0, i32 6
  %t760 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l8
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t760, ptr %t759
  %t761 = getelementptr %"compiler/effects:Effects", ptr %l186, i32 0, i32 7
  %t762 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l9
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t762, ptr %t761
  %t763 = getelementptr %"compiler/effects:Effects", ptr %l186, i32 0, i32 8
  %t764 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t764, ptr %t763
  %t765 = getelementptr %"compiler/effects:Effects", ptr %l186, i32 0, i32 9
  %t766 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t766, ptr %t765
  %t767 = getelementptr %"compiler/effects:Effects", ptr %l186, i32 0, i32 10
  %t768 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t768, ptr %t767
  %t769 = getelementptr %"compiler/effects:Effects", ptr %l186, i32 0, i32 11
  %t770 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t770, ptr %t769
  %t771 = getelementptr %"compiler/effects:Effects", ptr %l186, i32 0, i32 12
  %t772 = load i64, ptr %l14, !tbaa !24
  store i64 %t772, ptr %t771, !tbaa !24
  %t773 = getelementptr %"compiler/effects:Effects", ptr %l186, i32 0, i32 13
  %t774 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t774, ptr %t773
  %t775 = getelementptr %"compiler/effects:Effects", ptr %l186, i32 0, i32 14
  %t776 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t776, ptr %t775
  %t777 = getelementptr %"compiler/effects:Effects", ptr %l186, i32 0, i32 15
  %t778 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l17
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t778, ptr %t777
  %t779 = getelementptr %"compiler/effects:Effects", ptr %l186, i32 0, i32 16
  %t780 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l18
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t780, ptr %t779
  %t781 = getelementptr %"compiler/effects:Effects", ptr %l186, i32 0, i32 17
  %t782 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t782, ptr %t781
  %t783 = getelementptr %"compiler/effects:Effects", ptr %l186, i32 0, i32 18
  %t784 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t784, ptr %t783
  %t785 = getelementptr %"compiler/effects:Effects", ptr %l186, i32 0, i32 19
  %t786 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t786, ptr %t785
  %t787 = getelementptr %"compiler/effects:Effects", ptr %l186, i32 0, i32 20
  %t788 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l22
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t788, ptr %t787
  %t789 = getelementptr %"compiler/effects:Effects", ptr %l186, i32 0, i32 21
  %t790 = load i64, ptr %l23, !tbaa !24
  store i64 %t790, ptr %t789, !tbaa !24
  %t791 = getelementptr %"compiler/effects:Effects", ptr %l186, i32 0, i32 22
  %t792 = load %"compiler/effects:Facts", ptr %l24
  store %"compiler/effects:Facts" %t792, ptr %t791
  %t793 = getelementptr %"compiler/effects:Effects", ptr %l186, i32 0, i32 23
  %t794 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l25
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t794, ptr %t793
  %t795 = getelementptr %"compiler/effects:Effects", ptr %l186, i32 0, i32 24
  %t796 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l26
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t796, ptr %t795
  %t797 = getelementptr %"compiler/effects:Effects", ptr %l186, i32 0, i32 25
  %t798 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t798, ptr %t797
  %t799 = getelementptr %"compiler/effects:Effects", ptr %l186, i32 0, i32 26
  %t800 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l28
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t800, ptr %t799
  %t801 = getelementptr %"compiler/effects:Effects", ptr %l186, i32 0, i32 27
  %t802 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l29
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t802, ptr %t801
  %t803 = getelementptr %"compiler/effects:Effects", ptr %l186, i32 0, i32 28
  %t804 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l30
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t804, ptr %t803
  %t805 = getelementptr %"compiler/effects:Effects", ptr %l186, i32 0, i32 29
  %t806 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l31
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t806, ptr %t805
  %t807 = getelementptr %"compiler/effects:Effects", ptr %l186, i32 0, i32 30
  %t808 = load i64, ptr %l32, !tbaa !24
  store i64 %t808, ptr %t807, !tbaa !24
  %t809 = getelementptr %"compiler/effects:Effects", ptr %l186, i32 0, i32 31
  %t810 = load i64, ptr %l33, !tbaa !24
  store i64 %t810, ptr %t809, !tbaa !24
  %t811 = getelementptr %"compiler/effects:Effects", ptr %l186, i32 0, i32 32
  %t812 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l34
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t812, ptr %t811
  %t813 = getelementptr %"compiler/effects:Effects", ptr %l186, i32 0, i32 33
  %t814 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l35
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t814, ptr %t813
  %t815 = getelementptr %"compiler/effects:Effects", ptr %l186, i32 0, i32 34
  %t816 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l36
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t816, ptr %t815
  %t817 = getelementptr %"compiler/effects:Effects", ptr %l186, i32 0, i32 35
  %t818 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l37
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t818, ptr %t817
  %t819 = getelementptr %"compiler/effects:Effects", ptr %l186, i32 0, i32 36
  %t820 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l38
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t820, ptr %t819
  %t821 = getelementptr %"compiler/effects:Effects", ptr %l186, i32 0, i32 37
  %t822 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l39
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t822, ptr %t821
  %t823 = getelementptr %"compiler/effects:Effects", ptr %l186, i32 0, i32 38
  %t824 = load i1, ptr %l40, !tbaa !21
  store i1 %t824, ptr %t823, !tbaa !21
  %t825 = getelementptr %"compiler/effects:Effects", ptr %l186, i32 0, i32 39
  %t826 = load i1, ptr %l41, !tbaa !21
  store i1 %t826, ptr %t825, !tbaa !21
  %t827 = getelementptr %"compiler/effects:Effects", ptr %l186, i32 0, i32 40
  %t828 = load i1, ptr %l42, !tbaa !21
  store i1 %t828, ptr %t827, !tbaa !21
  %t829 = getelementptr %"compiler/effects:Effects", ptr %l186, i32 0, i32 41
  %t830 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l43
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t830, ptr %t829
  %t831 = getelementptr %"compiler/effects:Effects", ptr %l186, i32 0, i32 42
  %t832 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l44
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t832, ptr %t831
  %t833 = getelementptr %"compiler/effects:Effects", ptr %l186, i32 0, i32 43
  %t834 = load i1, ptr %l45, !tbaa !21
  store i1 %t834, ptr %t833, !tbaa !21
  %t835 = getelementptr %"compiler/effects:Effects", ptr %l186, i32 0, i32 44
  %t836 = load i64, ptr %l46, !tbaa !24
  store i64 %t836, ptr %t835, !tbaa !24
  %t837 = getelementptr %"compiler/effects:Effects", ptr %l186, i32 0, i32 45
  %t838 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t838, ptr %t837, !tbaa !27
  %t839 = getelementptr %"compiler/effects:Effects", ptr %l186, i32 0, i32 46
  %t840 = load i1, ptr %l48, !tbaa !21
  store i1 %t840, ptr %t839, !tbaa !21
  %t841 = getelementptr %"compiler/effects:Effects", ptr %l186, i32 0, i32 47
  %t842 = load %"compiler/source:Span", ptr %l49
  store %"compiler/source:Span" %t842, ptr %t841
  %t843 = getelementptr %"compiler/effects:Effects", ptr %l186, i32 0, i32 48
  %t844 = load { i64, ptr }, ptr %l50, !tbaa !27
  store { i64, ptr } %t844, ptr %t843, !tbaa !27
  %t845 = getelementptr %"compiler/effects:Effects", ptr %l186, i32 0, i32 49
  %t846 = load i1, ptr %l51, !tbaa !21
  store i1 %t846, ptr %t845, !tbaa !21
  %t847 = getelementptr %"compiler/effects:Effects", ptr %l186, i32 0, i32 50
  %t848 = load i64, ptr %l52, !tbaa !24
  store i64 %t848, ptr %t847, !tbaa !24
  %t849 = getelementptr %"compiler/effects:Effects", ptr %l186, i32 0, i32 51
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t746, ptr %t849
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l186, i64 1760, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/effects:link" @compiler_2feffects_3alink_2ector(ptr %v0, i64 %a0, i64 %a1, i64 %a2) #0 {
entry:
  %rv = alloca %"compiler/effects:link"
  br label %start
start:
  br label %bb0
bb0:
  %t8 = insertvalue %"compiler/effects:link" undef, i64 %a0, 0
  %t10 = insertvalue %"compiler/effects:link" %t8, i64 %a1, 1
  %t12 = insertvalue %"compiler/effects:link" %t10, i64 %a2, 2
  store %"compiler/effects:link" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/effects:link", ptr %rv
  ret %"compiler/effects:link" %rr
}

define dso_local %"compiler/effects:pair" @compiler_2feffects_3apair_2ector(ptr %v0, i64 %a0, i64 %a1) #0 {
entry:
  %rv = alloca %"compiler/effects:pair"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"compiler/effects:pair" undef, i64 %a0, 0
  %t8 = insertvalue %"compiler/effects:pair" %t6, i64 %a1, 1
  store %"compiler/effects:pair" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/effects:pair", ptr %rv
  ret %"compiler/effects:pair" %rr
}

define dso_local %"compiler/effects:root" @compiler_2feffects_3aroot_2ector(ptr %v0, i64 %a0, i1 %a1) #0 {
entry:
  %rv = alloca %"compiler/effects:root"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"compiler/effects:root" undef, i64 %a0, 0
  %t8 = insertvalue %"compiler/effects:root" %t6, i1 %a1, 1
  store %"compiler/effects:root" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/effects:root", ptr %rv
  ret %"compiler/effects:root" %rr
}

@.d0 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"files" }>, align 8
@.d1 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"network" }>, align 8
@.d2 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"processes" }>, align 8
@.d3 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"environment" }>, align 8
@.d4 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"C" }>, align 8
@.d5 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"threads" }>, align 8
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
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d6 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" (" }>, align 8
@.d7 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
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
@.d8 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d9 = private constant <{ i64, [46 x i8] }> <{ i64 0, [46 x i8] c"not known - it reaches code that did not check" }>, align 8
@.d10 = private constant <{ i64, [62 x i8] }> <{ i64 0, [62 x i8] c"anything - it calls C, which may call the program's export fns" }>, align 8
@.d11 = private constant <{ i64, [56 x i8] }> <{ i64 0, [56 x i8] c"anything - it calls through a function value or an 'any'" }>, align 8
@.d12 = private constant <{ i64, [71 x i8] }> <{ i64 0, [71 x i8] c"none - it may be computed while compiling where its arguments are known" }>, align 8
@.d13 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"none" }>, align 8
@.d14 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d15 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d16 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d17 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"writes through " }>, align 8
@.d18 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d19 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d20 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d21 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"calls through " }>, align 8
@.d22 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"writes a global" }>, align 8
@.d23 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"allocates" }>, align 8
@.d24 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"allocates nothing" }>, align 8
@.d25 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"may grow a Vec" }>, align 8
@.d26 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"starts tasks" }>, align 8
@.d27 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d28 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"calls C" }>, align 8
@.d29 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"may end the program" }>, align 8
@.d30 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"may block" }>, align 8
@.d31 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"never blocks" }>, align 8
@.d32 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"recursive" }>, align 8
@.d33 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"always ends" }>, align 8
@.d34 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"may be computed while compiling" }>, align 8
@.d35 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"; " }>, align 8
@.d36 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"Allocates" }>, align 8
@.d37 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Blocks" }>, align 8
@.d38 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"WritesGlobals" }>, align 8
@.d39 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"CallsC" }>, align 8
@.d40 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Spawns" }>, align 8
@.d41 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"Recursive" }>, align 8
@.d42 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"Terminates" }>, align 8
@.d43 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Pure" }>, align 8
@.d44 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"Returns" }>, align 8
@__olang_prog_scope = external thread_local(initialexec) global ptr
@.d45 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"pthread_create" }>, align 8
@.d46 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@olang_2esole_2ecompiler_2feffects_3aEffects_2e48 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
declare void @__olang_region_release(ptr) noinline
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3agiven_3e(ptr %v0, ptr %a0) #0 {
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
@.d47 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"__olang_" }>, align 8
@.d48 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"exit" }>, align 8
@.d49 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"_exit" }>, align 8
@.d50 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"abort" }>, align 8
@.d51 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"__olang_" }>, align 8
@.d52 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"std/" }>, align 8
@.d53 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"__olang_" }>, align 8
@.d54 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2feffects_3aVerdict_2e0 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feffects_3aVerdict_2e1 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %a0) #0 {
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

@olang_2esole_2ecompiler_2feffects_3aEffects_2e24 = weak hidden constant i1 false
declare void @__olang_region_drop(ptr) noinline
@.d55 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"call through" }>, align 8
@.d56 = private constant <{ i64, [75 x i8] }> <{ i64 0, [75 x i8] c"it calls through a function value here, and what that calls is not followed" }>, align 8
@.d57 = private constant <{ i64, [41 x i8] }> <{ i64 0, [41 x i8] c"its call through this function value may " }>, align 8
@.d58 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d59 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"its call of " }>, align 8
@.d60 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" may " }>, align 8
@.d61 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"it may " }>, align 8
@.d62 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" here" }>, align 8
@.d63 = private constant <{ i64, [73 x i8] }> <{ i64 0, [73 x i8] c"call through a function value it does not follow, which may not come back" }>, align 8
@.d64 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"call itself" }>, align 8
@.d65 = private constant <{ i64, [47 x i8] }> <{ i64 0, [47 x i8] c"loop with no count known before the loop starts" }>, align 8
@.d66 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"block" }>, align 8
@.d67 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"end the program" }>, align 8
@.d68 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2feffects_3aEffects_2e3 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feffects_3aEffects_2e4 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feffects_3aEffects_2e5 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feffects_3aEffects_2e6 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fv_Hbea44694f2ac293c111b1f169c7495eb(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3agiven_3e_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2feffects_3aEffects_2e7 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI64_3e_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI64_3e_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2feffects_3aEffects_2e8 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feffects_3aEffects_2e9 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feffects_3aEffects_2e10 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feffects_3aEffects_2e11 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feffects_3aEffects_2e13 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feffects_3aEffects_2e14 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feffects_3aEffects_2e15 = weak hidden constant i1 false
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

@olang_2esole_2ecompiler_2feffects_3aEffects_2e16 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2feffects_3apair_2c_20Bool_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2feffects_3apair_2c_20Bool_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2feffects_3aEffects_2e17 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feffects_3aEffects_2e18 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feffects_3aEffects_2e19 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feffects_3aEffects_2e20 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feffects_3aEffects_2e23 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feffects_3aEffects_2e25 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feffects_3aEffects_2e26 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feffects_3aEffects_2e27 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feffects_3aEffects_2e28 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feffects_3aEffects_2e29 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fv_H3227b03907400d34f4865c02b6d98850(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2feffects_3aEffects_2e35 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feffects_3aEffects_2e36 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feffects_3aEffects_2e37 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feffects_3aEffects_2e42 = weak hidden constant i1 false
@.d69 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d70 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2feffects_3aEffects_2e51 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e_2ector(ptr %v0)
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
@olang_loc_290980515b4efda2_9d4c073daad962b6 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2feffects_2eendsNote(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2feffects_2ecompiler_2feffects_3aFacts_2eIdle(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @compiler_2feffects_2ecompiler_2feffects_3aFacts_2eTerminates(ptr %v0, ptr %a0)
@olang_loc_158e937bb9d0bd20_7156a314163e06b4 = external constant [0 x i8]
declare %"compiler/effects:Facts" @compiler_2feffects_3aFacts_2ector(ptr %v0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePromiseWords(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2ePromReturns = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2ePromPure = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\40\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2ePromNoextern = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\20\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2ePromNoalloc = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2ePromNoblock = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2ePromNospawn = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2ePromNorecurse = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\10\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eargParam(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eargGlobal(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3alink_3e_2ePush_3ccompiler_2feffects_3alink_3e(ptr %v0, ptr %a0, %"compiler/effects:link" %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eoutOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/effects:root" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eplaceRoot(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_650dda860f99b242_5ce1da2dd4f47486 = external constant [0 x i8]
declare void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2edefine(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eblock(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_f7c8ab04542d2f7e_3025df788b022d62 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v0, ptr %a0)
declare %"compiler/effects:pend" @compiler_2feffects_3apend_2ector(ptr %v0, ptr %v1, i64 %a0, i64 %a1, ptr %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apend_3e_2ePush_3ccompiler_2feffects_3apend_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/effects:pend" %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ewritten(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_1bc29689bbb58e32_9924d9acc7f0abd6 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H7b6d4eff6fc9c3821aae8b284e12e095(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %a0)
declare i64 @compiler_2feffects_2ecapIndex(i64 %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0)
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/effects:part" @compiler_2feffects_3apart_2ector(ptr %v0, ptr %v1, i64 %a0, i64 %a1, i32 %a2, ptr %a3)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2ePush_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/effects:part" %a1)
@olang_loc_b51fd4885ec92e5_d8c1bbe4cc347d79 = external constant [0 x i8]
@olang_loc_488be308cffaf13e_20c0e7cb8e30f352 = external constant [0 x i8]
@olang_loc_59fe423ba48f95ef_125e5ca5a1678c93 = external constant [0 x i8]
declare %"compiler/effects:part" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2efnPart(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
declare void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eclassifyLocal(ptr %v0, ptr %a0, i64 %a1, i32 %a2, i64 %a3)
@olang_loc_8e13f40ea2f1e4d7_76f885d7d8afa3eb = external constant [0 x i8]
@olang_loc_2b1992bc034d4ac0_3aae813f6df6734c = external constant [0 x i8]
@olang_loc_bf15bc95d959b66c_7e73e2171d14fc00 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__H165e1ff795edcbb725e28dde18fd1dc2(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_Hb5dd413d586c55d7ccefa7dbc5ad43c5(ptr %v0, ptr %a0, i64 %a1)
declare { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H7b34d2d8e55697dbed551519dd59c955(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3agiven_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3agiven_3e_2eLen_3ccompiler_2feffects_3agiven_3e(ptr %v0, ptr %a0)
declare %"compiler/effects:given" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3agiven_3e_2eAt_3ccompiler_2feffects_3agiven_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ecallEdge(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI_Hbd09c84b003bb96b764c8a61b7f32193(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eretsOf(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3aFacts_3e_2eRefMut_3ccompiler_2feffects_3aFacts_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2feffects_2eMerge(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2ftyped_2eMathExtern(ptr %v0, { i64, ptr } %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @compiler_2feffects_2equickC(ptr %v0, { i64, ptr } %a0)
declare i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ecMayCallBack(ptr %v0, ptr %a0)
declare i1 @compiler_2ftyped_2eNoCallbackExtern(ptr %v0, { i64, ptr } %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2ftypes_2ePromiseNames = external constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }>
declare { i64, ptr } @compiler_2feffects_2eBreaks(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eOf(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/effects:Facts" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3aFacts_3e_2eAt_3ccompiler_2feffects_3aFacts_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ewalkBody(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2eClear_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2eLen_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %a0)
declare %"compiler/effects:part" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2eAt_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_9b481a3036e75930_9f21b77026d49cd4 = external constant [0 x i8]
declare { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eGet_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3alink_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3alink_3e_2eLen_3ccompiler_2feffects_3alink_3e(ptr %v0, ptr %a0)
declare %"compiler/effects:link" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3alink_3e_2eAt_3ccompiler_2feffects_3alink_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_89d258cb45db8a97_6792eaa695d1effb = external constant [0 x i8]
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2feffects_2eparamBit(i64 %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2edropsCalled(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@olang_loc_31e57a958c31a5ba_705aefa950dbf3e6 = external constant [0 x i8]
declare %"compiler/effects:given" @compiler_2feffects_3agiven_2ector(ptr %v0, i64 %a0, i64 %a1, i64 %a2, i64 %a3, i32 %a4)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3agiven_3e_2ePush_3ccompiler_2feffects_3agiven_3e(ptr %v0, ptr %a0, %"compiler/effects:given" %a1)
declare { i64, ptr } @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ewhyDoes(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %a0)
@olang_loc_e883a08fe0a2dfcb_10d50552a173805f = external constant [0 x i8]
@olang_loc_be89c63eecba24dc_20b8a06f464464c0 = external constant [0 x i8]
@olang_loc_da29f57e967b0d58_398b0b5997e9910c = external constant [0 x i8]
declare i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexprRoot(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eplace(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2)
@olang_loc_cdd9fd819eb1314_592489ef7c054390 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2ftyped_2eDropFlag(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eclause(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_3acda3f4ede143c5_a4a37c6d9d693e21 = external constant [0 x i8]
@olang_loc_da35c31532ef850e_8e7d78b8065e228a = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ebounds(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2enamed(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/source:Span" @compiler_2feffects_2estmtSpan(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ebodyName(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@olang_loc_d8bf60be8d53266c_65df02eeff1797b0 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3aFacts_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3alink_3e_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apend_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ector(ptr %v0, i64 %a0)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3agiven_3e_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI64_3e_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2feffects_3apair_2c_20Bool_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e_2ector(ptr %v0)

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
