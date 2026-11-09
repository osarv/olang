source_filename = "compiler_typed.quick.ll"
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
%"compiler/typed:Cond" = type { ptr, ptr, ptr }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"compiler/typed:Versions" = type { ptr, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:BlockInfo" = type { i32, i32, %"compiler/source:Span" }
%"compiler/typed:Landings" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 }
%"compiler/typed:LastUses" = type { i64, { i64, ptr }, { i64, ptr }, i64, i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/typed:Clause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr, { i64, ptr }, i64, i32 }
%"compiler/typed:Arm" = type { %"compiler/source:Span", { i64, ptr }, ptr, ptr, ptr }
%"compiler/typed:Alt" = type { ptr, { i64, ptr } }
%"compiler/typed:Bind" = type { i32, ptr }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/typed:LocalUses" = type { ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i32 }
%"compiler/typed:Promote" = type { ptr, i32 }
%"compiler/typed:Make" = type { i32, i64, { i64, ptr }, ptr, i32, i32, i1 }
%"compiler/typed:Collect" = type { ptr, ptr, i32, i32, i1 }
%"compiler/typed:Slice" = type { ptr, ptr, ptr, i32 }
%"compiler/typed:Seq" = type { { i64, ptr }, ptr, i1 }
%"compiler/typed:Match" = type { { i64, ptr }, { i64, ptr }, ptr, i1 }
%"compiler/typed:Try" = type { ptr, { i64, ptr }, i1, i1, i1 }
%"compiler/typed:Text" = type { { i64, ptr }, i32 }
%"compiler/typed:Capture" = type { i32, ptr }
%"compiler/typed:DerivedArg" = type { i64, i64, { i64, [2 x i64] } }
%"compiler/typed:Plan" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:ViewWalk" = type { ptr, ptr, i64, { ptr, ptr }, { ptr, ptr } }
%"compiler/typed:dropWalk" = type { ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/typed:holdWalk" = type { ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:leaveWalk" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:If" = type { ptr, ptr, ptr }
%"compiler/typed:Join" = type { ptr, i1, { i64, ptr } }
%"compiler/typed:Spawn" = type { { i64, ptr }, ptr, { i64, ptr }, i32 }
%"compiler/typed:DropHolding" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:landLoop" = type { i32, i64, { i64, ptr }, { i64, ptr }, i1, i1 }
@G_2ecompiler_2ftyped_2eMutGlobalsFact = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\13\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2eMutGlobalsFact.k1 }>, align 8
@G_2ecompiler_2ftyped_2eMutGlobalsFact.k1 = internal global <{ [19 x i8] }> <{ [19 x i8] c"\44\39\68\20\6D\75\74\61\62\6C\65\20\67\6C\6F\62\61\6C\73" }>, align 8
@G_2ecompiler_2ftyped_2eViewBits = constant <{ [8 x i8] }> <{ [8 x i8] c"\3E\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftyped_2eViewOther = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\40" }>, align 8
@G_2ecompiler_2ftyped_2emathArity = constant <{ [248 x i8] }> <{ [248 x i8] c"\01\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00" }>, align 64
@G_2ecompiler_2ftyped_2emathNames = constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2emathNames.k1, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2emathNames.k2, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2emathNames.k3, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2emathNames.k4, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2emathNames.k5, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2emathNames.k6, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2emathNames.k7, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2emathNames.k8, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2emathNames.k9, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2emathNames.k10, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2emathNames.k11, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2emathNames.k12, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2emathNames.k13, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2emathNames.k14, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2emathNames.k15, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2emathNames.k16, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2emathNames.k17, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2emathNames.k18, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2emathNames.k19, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2emathNames.k20, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2emathNames.k21, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2emathNames.k22, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2emathNames.k23, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2emathNames.k24, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2emathNames.k25, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2emathNames.k26, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2emathNames.k27, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2emathNames.k28, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2emathNames.k29, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2emathNames.k30, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2emathNames.k31 }>, align 64
@G_2ecompiler_2ftyped_2emathNames.k1 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\73\71\72\74" }>, align 8
@G_2ecompiler_2ftyped_2emathNames.k2 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\66\6D\61" }>, align 8
@G_2ecompiler_2ftyped_2emathNames.k3 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\66\6C\6F\6F\72" }>, align 8
@G_2ecompiler_2ftyped_2emathNames.k4 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\63\65\69\6C" }>, align 8
@G_2ecompiler_2ftyped_2emathNames.k5 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\74\72\75\6E\63" }>, align 8
@G_2ecompiler_2ftyped_2emathNames.k6 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\72\6F\75\6E\64" }>, align 8
@G_2ecompiler_2ftyped_2emathNames.k7 = internal constant <{ [9 x i8] }> <{ [9 x i8] c"\72\6F\75\6E\64\65\76\65\6E" }>, align 8
@G_2ecompiler_2ftyped_2emathNames.k8 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\66\61\62\73" }>, align 8
@G_2ecompiler_2ftyped_2emathNames.k9 = internal constant <{ [8 x i8] }> <{ [8 x i8] c"\63\6F\70\79\73\69\67\6E" }>, align 8
@G_2ecompiler_2ftyped_2emathNames.k10 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\63\62\72\74" }>, align 8
@G_2ecompiler_2ftyped_2emathNames.k11 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\65\78\70" }>, align 8
@G_2ecompiler_2ftyped_2emathNames.k12 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\65\78\70\32" }>, align 8
@G_2ecompiler_2ftyped_2emathNames.k13 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\65\78\70\6D\31" }>, align 8
@G_2ecompiler_2ftyped_2emathNames.k14 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\6C\6F\67" }>, align 8
@G_2ecompiler_2ftyped_2emathNames.k15 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\6C\6F\67\32" }>, align 8
@G_2ecompiler_2ftyped_2emathNames.k16 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\6C\6F\67\31\30" }>, align 8
@G_2ecompiler_2ftyped_2emathNames.k17 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\6C\6F\67\31\70" }>, align 8
@G_2ecompiler_2ftyped_2emathNames.k18 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\70\6F\77" }>, align 8
@G_2ecompiler_2ftyped_2emathNames.k19 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\73\69\6E" }>, align 8
@G_2ecompiler_2ftyped_2emathNames.k20 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\63\6F\73" }>, align 8
@G_2ecompiler_2ftyped_2emathNames.k21 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\74\61\6E" }>, align 8
@G_2ecompiler_2ftyped_2emathNames.k22 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\61\73\69\6E" }>, align 8
@G_2ecompiler_2ftyped_2emathNames.k23 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\61\63\6F\73" }>, align 8
@G_2ecompiler_2ftyped_2emathNames.k24 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\61\74\61\6E" }>, align 8
@G_2ecompiler_2ftyped_2emathNames.k25 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\61\74\61\6E\32" }>, align 8
@G_2ecompiler_2ftyped_2emathNames.k26 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\73\69\6E\68" }>, align 8
@G_2ecompiler_2ftyped_2emathNames.k27 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\63\6F\73\68" }>, align 8
@G_2ecompiler_2ftyped_2emathNames.k28 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\74\61\6E\68" }>, align 8
@G_2ecompiler_2ftyped_2emathNames.k29 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\65\72\66" }>, align 8
@G_2ecompiler_2ftyped_2emathNames.k30 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\65\72\66\63" }>, align 8
@G_2ecompiler_2ftyped_2emathNames.k31 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\68\79\70\6F\74" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames = constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k1, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k2, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k3, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k4, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k5, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k6, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k7, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k8, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k9, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k10, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k11, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k12, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k13, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k14, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k15, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k16, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k17, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k18, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k19, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k20, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k21, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k22, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k23, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k24, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k25, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k26, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k27, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k28, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k29, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k30, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k31, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k32, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k33, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k34, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k35, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k36, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k37, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k38, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k39, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k40, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k41, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k42, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k43, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k44, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k45, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k46, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k47, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k48, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k49, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k50, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k51, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k52, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k53, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k54, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k55, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k56, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k57, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k58, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k59, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k60, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k61, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k62, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k63, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k64, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k65, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k66, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k67, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k68, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k69, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k70, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k71, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k72, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k73, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k74, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k75, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k76, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k77, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k78, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k79, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k80, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k81, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k82, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k83, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k84, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k85, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k86, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k87, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k88, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k89, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k90, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k91, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k92, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k93, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k94, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftyped_2enoCallbackNames.k95 }>, align 64
@G_2ecompiler_2ftyped_2enoCallbackNames.k1 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\72\65\61\64" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k2 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\77\72\69\74\65" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k3 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\70\72\65\61\64" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k4 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\70\77\72\69\74\65" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k5 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\72\65\61\64\76" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k6 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\77\72\69\74\65\76" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k7 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\6F\70\65\6E" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k8 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\6F\70\65\6E\61\74" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k9 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\63\72\65\61\74" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k10 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\63\6C\6F\73\65" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k11 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\6C\73\65\65\6B" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k12 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\66\73\79\6E\63" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k13 = internal constant <{ [9 x i8] }> <{ [9 x i8] c"\66\64\61\74\61\73\79\6E\63" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k14 = internal constant <{ [9 x i8] }> <{ [9 x i8] c"\66\74\72\75\6E\63\61\74\65" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k15 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\66\73\74\61\74" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k16 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\73\74\61\74" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k17 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\6C\73\74\61\74" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k18 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\66\73\74\61\74\61\74" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k19 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\61\63\63\65\73\73" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k20 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\75\6E\6C\69\6E\6B" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k21 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\72\65\6E\61\6D\65" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k22 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\6D\6B\64\69\72" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k23 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\72\6D\64\69\72" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k24 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\6F\70\65\6E\64\69\72" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k25 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\72\65\61\64\64\69\72" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k26 = internal constant <{ [8 x i8] }> <{ [8 x i8] c"\63\6C\6F\73\65\64\69\72" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k27 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\67\65\74\63\77\64" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k28 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\63\68\64\69\72" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k29 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\64\75\70" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k30 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\64\75\70\32" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k31 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\70\69\70\65" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k32 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\70\6F\6C\6C" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k33 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\69\73\61\74\74\79" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k34 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\66\6F\70\65\6E" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k35 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\66\63\6C\6F\73\65" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k36 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\66\72\65\61\64" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k37 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\66\77\72\69\74\65" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k38 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\66\66\6C\75\73\68" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k39 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\66\70\75\74\73" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k40 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\66\67\65\74\73" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k41 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\70\75\74\73" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k42 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\70\75\74\63\68\61\72" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k43 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\67\65\74\63\68\61\72" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k44 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\70\72\69\6E\74\66" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k45 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\66\70\72\69\6E\74\66" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k46 = internal constant <{ [8 x i8] }> <{ [8 x i8] c"\73\6E\70\72\69\6E\74\66" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k47 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\73\70\72\69\6E\74\66" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k48 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\70\65\72\72\6F\72" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k49 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\73\74\72\6C\65\6E" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k50 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\73\74\72\6E\6C\65\6E" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k51 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\73\74\72\63\6D\70" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k52 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\73\74\72\6E\63\6D\70" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k53 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\73\74\72\63\70\79" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k54 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\73\74\72\6E\63\70\79" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k55 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\73\74\72\63\61\74" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k56 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\73\74\72\6E\63\61\74" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k57 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\73\74\72\63\68\72" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k58 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\73\74\72\72\63\68\72" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k59 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\73\74\72\73\74\72" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k60 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\73\74\72\64\75\70" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k61 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\73\74\72\6E\64\75\70" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k62 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\73\74\72\74\6F\6C" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k63 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\73\74\72\74\6F\6C\6C" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k64 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\73\74\72\74\6F\75\6C" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k65 = internal constant <{ [8 x i8] }> <{ [8 x i8] c"\73\74\72\74\6F\75\6C\6C" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k66 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\73\74\72\74\6F\64" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k67 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\73\74\72\74\6F\66" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k68 = internal constant <{ [8 x i8] }> <{ [8 x i8] c"\73\74\72\65\72\72\6F\72" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k69 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\6D\65\6D\63\70\79" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k70 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\6D\65\6D\6D\6F\76\65" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k71 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\6D\65\6D\73\65\74" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k72 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\6D\65\6D\63\6D\70" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k73 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\6D\65\6D\63\68\72" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k74 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\6D\61\6C\6C\6F\63" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k75 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\63\61\6C\6C\6F\63" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k76 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\72\65\61\6C\6C\6F\63" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k77 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\66\72\65\65" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k78 = internal constant <{ [13 x i8] }> <{ [13 x i8] c"\61\6C\69\67\6E\65\64\5F\61\6C\6C\6F\63" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k79 = internal constant <{ [14 x i8] }> <{ [14 x i8] c"\70\6F\73\69\78\5F\6D\65\6D\61\6C\69\67\6E" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k80 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\6D\6D\61\70" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k81 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\6D\75\6E\6D\61\70" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k82 = internal constant <{ [8 x i8] }> <{ [8 x i8] c"\6D\70\72\6F\74\65\63\74" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k83 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\6D\61\64\76\69\73\65" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k84 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\74\69\6D\65" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k85 = internal constant <{ [13 x i8] }> <{ [13 x i8] c"\63\6C\6F\63\6B\5F\67\65\74\74\69\6D\65" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k86 = internal constant <{ [12 x i8] }> <{ [12 x i8] c"\63\6C\6F\63\6B\5F\67\65\74\72\65\73" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k87 = internal constant <{ [12 x i8] }> <{ [12 x i8] c"\67\65\74\74\69\6D\65\6F\66\64\61\79" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k88 = internal constant <{ [9 x i8] }> <{ [9 x i8] c"\6E\61\6E\6F\73\6C\65\65\70" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k89 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\75\73\6C\65\65\70" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k90 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\73\6C\65\65\70" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k91 = internal constant <{ [11 x i8] }> <{ [11 x i8] c"\6C\6F\63\61\6C\74\69\6D\65\5F\72" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k92 = internal constant <{ [8 x i8] }> <{ [8 x i8] c"\67\6D\74\69\6D\65\5F\72" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k93 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\6D\6B\74\69\6D\65" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k94 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\74\69\6D\65\67\6D" }>, align 8
@G_2ecompiler_2ftyped_2enoCallbackNames.k95 = internal constant <{ [8 x i8] }> <{ [8 x i8] c"\73\74\72\66\74\69\6D\65" }>, align 8
define dso_local ptr @compiler_2ftyped_2eCopiedOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l4 = alloca ptr
  %rv = alloca ptr
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call ptr @compiler_2ftyped_2ecopied(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
  store ptr %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l4, !tbaa !29
  store ptr %t6, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2ftyped_2ePure(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l6 = alloca i1
  %l7 = alloca ptr
  %l8 = alloca i1
  %l11 = alloca ptr
  %l12 = alloca i1
  %l17 = alloca ptr
  %l18 = alloca i1
  %l24 = alloca i1
  %l25 = alloca ptr
  %l26 = alloca i1
  %l32 = alloca i1
  %l33 = alloca ptr
  %l34 = alloca i1
  %l43 = alloca i1
  %l46 = alloca i1
  %l47 = alloca ptr
  %l48 = alloca i1
  %l55 = alloca i1
  %l56 = alloca i1
  %l60 = alloca i1
  %l66 = alloca i1
  %l67 = alloca i1
  %l70 = alloca i1
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l7, !tbaa !29
  store i1 false, ptr %l8, !tbaa !21
  %t2 = load ptr, ptr %l7, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l7, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l8, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l8, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb6
bb5:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb60
bb6:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l11, !tbaa !29
  store i1 false, ptr %l12, !tbaa !21
  %t11 = load ptr, ptr %l11, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb7, label %bb8
bb7:
  %t14 = load ptr, ptr %l11, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 18}
  %t17 = icmp eq i64 %t15, 2
  store i1 %t17, ptr %l12, !tbaa !21
  br label %bb8
bb8:
  %t18 = load i1, ptr %l12, !tbaa !21
  br i1 %t18, label %bb9, label %bb10
bb9:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr { i64, [5 x i64] }, ptr %t19, i32 0, i32 1
  %t22 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t21, i32 0, i32 2
  %t23 = load ptr, ptr %t22
  store ptr %t23, ptr %l1, !tbaa !29
  br label %bb15
bb10:
  %t25 = load ptr, ptr %l0, !tbaa !29
  store ptr %t25, ptr %l17, !tbaa !29
  store i1 false, ptr %l18, !tbaa !21
  %t26 = load ptr, ptr %l17, !tbaa !29
  %t27 = icmp ne ptr %t26, null
  br i1 %t27, label %bb11, label %bb12
bb11:
  %t29 = load ptr, ptr %l17, !tbaa !29
  %t30 = load i64, ptr %t29, !range !{i64 0, i64 18}
  %t32 = icmp eq i64 %t30, 3
  store i1 %t32, ptr %l18, !tbaa !21
  br label %bb12
bb12:
  %t33 = load i1, ptr %l18, !tbaa !21
  br i1 %t33, label %bb13, label %bb14
bb13:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr { i64, [5 x i64] }, ptr %t34, i32 0, i32 1
  %t37 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t36, i32 0, i32 2
  %t38 = load ptr, ptr %t37
  store ptr %t38, ptr %l1, !tbaa !29
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t40 = load ptr, ptr %l1, !tbaa !29
  %t42 = call i1 @compiler_2ftyped_2ePurePlace(ptr %v0, ptr %t40)
  store i1 %t42, ptr %l24
  br label %bb16
bb16:
  %t43 = load i1, ptr %l24, !tbaa !21
  store i1 %t43, ptr %l6, !tbaa !21
  br label %bb60
bb17:
  %t44 = load ptr, ptr %l0, !tbaa !29
  store ptr %t44, ptr %l25, !tbaa !29
  store i1 false, ptr %l26, !tbaa !21
  %t45 = load ptr, ptr %l25, !tbaa !29
  %t46 = icmp ne ptr %t45, null
  br i1 %t46, label %bb18, label %bb19
bb18:
  %t48 = load ptr, ptr %l25, !tbaa !29
  %t49 = load i64, ptr %t48, !range !{i64 0, i64 18}
  %t51 = icmp eq i64 %t49, 17
  store i1 %t51, ptr %l26, !tbaa !21
  br label %bb19
bb19:
  %t52 = load i1, ptr %l26, !tbaa !21
  br i1 %t52, label %bb20, label %bb21
bb20:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr { i64, [5 x i64] }, ptr %t53, i32 0, i32 1
  %t56 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t55, i32 0, i32 2
  %t57 = load ptr, ptr %t56
  store ptr %t57, ptr %l2, !tbaa !29
  br label %bb22
bb21:
  br label %bb24
bb22:
  %t59 = load ptr, ptr %l2, !tbaa !29
  %t61 = call i1 @compiler_2ftyped_2ePure(ptr %v0, ptr %t59)
  store i1 %t61, ptr %l32
  br label %bb23
bb23:
  %t62 = load i1, ptr %l32, !tbaa !21
  store i1 %t62, ptr %l6, !tbaa !21
  br label %bb60
bb24:
  %t63 = load ptr, ptr %l0, !tbaa !29
  store ptr %t63, ptr %l33, !tbaa !29
  store i1 false, ptr %l34, !tbaa !21
  %t64 = load ptr, ptr %l33, !tbaa !29
  %t65 = icmp ne ptr %t64, null
  br i1 %t65, label %bb25, label %bb26
bb25:
  %t67 = load ptr, ptr %l33, !tbaa !29
  %t68 = load i64, ptr %t67, !range !{i64 0, i64 18}
  %t70 = icmp eq i64 %t68, 9
  store i1 %t70, ptr %l34, !tbaa !21
  br label %bb26
bb26:
  %t71 = load i1, ptr %l34, !tbaa !21
  br i1 %t71, label %bb27, label %bb28
bb27:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr { i64, [5 x i64] }, ptr %t72, i32 0, i32 1
  %t75 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t74, i32 0, i32 3
  %t76 = load i32, ptr %t75, !range !{i32 0, i32 3}
  store i32 %t76, ptr %l3
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr { i64, [5 x i64] }, ptr %t78, i32 0, i32 1
  %t81 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t80, i32 0, i32 4
  %t82 = load { i64, ptr }, ptr %t81
  store { i64, ptr } %t82, ptr %l4, !tbaa !27
  br label %bb29
bb28:
  br label %bb34
bb29:
  store %olang.scope zeroinitializer, ptr %s4
  %t84 = load i32, ptr %l3, !range !{i32 0, i32 3}
  %t86 = trunc i64 0 to i32
  %t87 = icmp eq i32 %t84, %t86
  br i1 %t87, label %bb30, label %bb31
bb30:
  %t89 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t90 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_0, 0
  %t91 = insertvalue { ptr, ptr } %t90, ptr null, 1
  %t94 = extractvalue { ptr, ptr } %t91, 0
  %t95 = extractvalue { ptr, ptr } %t91, 1
  %t96 = call i1 @std_2fprelude_2farray_2eArray_3ccompiler_2ftyped_3aExpr_26_3e_2eEvery_3ccompiler_2ftyped_3aExpr_26_2c_20_3f_3e(ptr %v0, ptr %s4, { i64, ptr } %t89, ptr %t94, ptr %t95)
  store i1 %t96, ptr %l46
  br label %bb32
bb31:
  store i1 false, ptr %l43, !tbaa !21
  br label %bb33
bb32:
  %t97 = load i1, ptr %l46, !tbaa !21
  store i1 %t97, ptr %l43, !tbaa !21
  br label %bb33
bb33:
  %t98 = load i1, ptr %l43, !tbaa !21
  store i1 %t98, ptr %l6, !tbaa !21
  call void @__olang_scope_close(ptr %s4)
  br label %bb60
bb34:
  %t99 = load ptr, ptr %l0, !tbaa !29
  store ptr %t99, ptr %l47, !tbaa !29
  store i1 false, ptr %l48, !tbaa !21
  %t100 = load ptr, ptr %l47, !tbaa !29
  %t101 = icmp ne ptr %t100, null
  br i1 %t101, label %bb35, label %bb36
bb35:
  %t103 = load ptr, ptr %l47, !tbaa !29
  %t104 = load i64, ptr %t103, !range !{i64 0, i64 18}
  %t106 = icmp eq i64 %t104, 11
  store i1 %t106, ptr %l48, !tbaa !21
  br label %bb36
bb36:
  %t107 = load i1, ptr %l48, !tbaa !21
  br i1 %t107, label %bb37, label %bb38
bb37:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr { i64, [5 x i64] }, ptr %t108, i32 0, i32 1
  %t111 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t110, i32 0, i32 2
  %t112 = load ptr, ptr %t111
  store ptr %t112, ptr %l5, !tbaa !29
  br label %bb39
bb38:
  br label %bb55
bb39:
  %t114 = load ptr, ptr %l5, !tbaa !29
  %t116 = getelementptr %"compiler/typed:Cond", ptr %t114, i32 0, i32 0
  %t117 = load ptr, ptr %t116, !tbaa !29
  %t119 = call i1 @compiler_2ftyped_2ePure(ptr %v0, ptr %t117)
  store i1 %t119, ptr %l55
  br label %bb40
bb40:
  %t120 = load i1, ptr %l55, !tbaa !21
  br i1 %t120, label %bb41, label %bb42
bb41:
  %t121 = load ptr, ptr %l5, !tbaa !29
  %t123 = getelementptr %"compiler/typed:Cond", ptr %t121, i32 0, i32 1
  %t124 = load ptr, ptr %t123, !tbaa !29
  %t126 = icmp eq ptr %t124, null
  br i1 %t126, label %bb43, label %bb44
bb42:
  store i1 false, ptr %l56, !tbaa !21
  br label %bb50
bb43:
  store i1 true, ptr %l60, !tbaa !21
  br label %bb49
bb44:
  %t128 = load ptr, ptr %l5, !tbaa !29
  %t130 = getelementptr %"compiler/typed:Cond", ptr %t128, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !29
  %t133 = icmp eq ptr %t131, null
  br i1 %t133, label %bb45, label %bb46
bb45:
  call void @__olang_check_failed(ptr @olang_loc_d912efc235b928ee_346c19f829a98a12)
  unreachable
bb46:
  br label %bb47
bb47:
  %t135 = load ptr, ptr %l5, !tbaa !29
  %t137 = getelementptr %"compiler/typed:Cond", ptr %t135, i32 0, i32 1
  %t138 = load ptr, ptr %t137, !tbaa !29
  %t140 = call i1 @compiler_2ftyped_2ePure(ptr %v0, ptr %t138)
  store i1 %t140, ptr %l66
  br label %bb48
bb48:
  %t141 = load i1, ptr %l66, !tbaa !21
  store i1 %t141, ptr %l60, !tbaa !21
  br label %bb49
bb49:
  %t142 = load i1, ptr %l60, !tbaa !21
  store i1 %t142, ptr %l56, !tbaa !21
  br label %bb50
bb50:
  %t143 = load i1, ptr %l56, !tbaa !21
  br i1 %t143, label %bb51, label %bb52
bb51:
  %t144 = load ptr, ptr %l5, !tbaa !29
  %t146 = getelementptr %"compiler/typed:Cond", ptr %t144, i32 0, i32 2
  %t147 = load ptr, ptr %t146, !tbaa !29
  %t149 = call i1 @compiler_2ftyped_2ePure(ptr %v0, ptr %t147)
  store i1 %t149, ptr %l70
  br label %bb53
bb52:
  store i1 false, ptr %l67, !tbaa !21
  br label %bb54
bb53:
  %t150 = load i1, ptr %l70, !tbaa !21
  store i1 %t150, ptr %l67, !tbaa !21
  br label %bb54
bb54:
  %t151 = load i1, ptr %l67, !tbaa !21
  store i1 %t151, ptr %l6, !tbaa !21
  br label %bb60
bb55:
  br i1 true, label %bb56, label %bb57
bb56:
  br label %bb58
bb57:
  br label %bb59
bb58:
  store i1 false, ptr %l6, !tbaa !21
  br label %bb60
bb59:
  call void @__olang_check_failed(ptr @olang_loc_65920c013e21fbcc_fef959193df4a870)
  unreachable
bb60:
  call void @__olang_scope_close(ptr %s0)
  %t152 = load i1, ptr %l6, !tbaa !21
  store i1 %t152, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftyped_2ePurePlace(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i1
  %l7 = alloca ptr
  %l8 = alloca i1
  %l11 = alloca ptr
  %l12 = alloca i1
  %l15 = alloca ptr
  %l16 = alloca i1
  %l22 = alloca i1
  %l23 = alloca ptr
  %l24 = alloca i1
  %l31 = alloca i1
  %l32 = alloca i1
  %l35 = alloca i1
  %l36 = alloca ptr
  %l37 = alloca i1
  %l44 = alloca i1
  %l45 = alloca ptr
  %l46 = alloca i1
  %l52 = alloca i1
  %l53 = alloca ptr
  %l54 = alloca i1
  %l60 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l7, !tbaa !29
  store i1 false, ptr %l8, !tbaa !21
  %t2 = load ptr, ptr %l7, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l7, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l8, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l8, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb9
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l11, !tbaa !29
  store i1 false, ptr %l12, !tbaa !21
  %t11 = load ptr, ptr %l11, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb5, label %bb6
bb5:
  %t14 = load ptr, ptr %l11, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 8}
  %t17 = icmp eq i64 %t15, 1
  store i1 %t17, ptr %l12, !tbaa !21
  br label %bb6
bb6:
  %t18 = load i1, ptr %l12, !tbaa !21
  br i1 %t18, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb54
bb10:
  %t19 = load ptr, ptr %l0, !tbaa !29
  store ptr %t19, ptr %l15, !tbaa !29
  store i1 false, ptr %l16, !tbaa !21
  %t20 = load ptr, ptr %l15, !tbaa !29
  %t21 = icmp ne ptr %t20, null
  br i1 %t21, label %bb11, label %bb12
bb11:
  %t23 = load ptr, ptr %l15, !tbaa !29
  %t24 = load i64, ptr %t23, !range !{i64 0, i64 8}
  %t26 = icmp eq i64 %t24, 3
  store i1 %t26, ptr %l16, !tbaa !21
  br label %bb12
bb12:
  %t27 = load i1, ptr %l16, !tbaa !21
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
  %t36 = call i1 @compiler_2ftyped_2ePurePlace(ptr %v0, ptr %t34)
  store i1 %t36, ptr %l22
  br label %bb16
bb16:
  %t37 = load i1, ptr %l22, !tbaa !21
  store i1 %t37, ptr %l6, !tbaa !21
  br label %bb54
bb17:
  %t38 = load ptr, ptr %l0, !tbaa !29
  store ptr %t38, ptr %l23, !tbaa !29
  store i1 false, ptr %l24, !tbaa !21
  %t39 = load ptr, ptr %l23, !tbaa !29
  %t40 = icmp ne ptr %t39, null
  br i1 %t40, label %bb18, label %bb19
bb18:
  %t42 = load ptr, ptr %l23, !tbaa !29
  %t43 = load i64, ptr %t42, !range !{i64 0, i64 8}
  %t45 = icmp eq i64 %t43, 4
  store i1 %t45, ptr %l24, !tbaa !21
  br label %bb19
bb19:
  %t46 = load i1, ptr %l24, !tbaa !21
  br i1 %t46, label %bb20, label %bb21
bb20:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr { i64, [4 x i64] }, ptr %t47, i32 0, i32 1
  %t50 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t49, i32 0, i32 2
  %t51 = load ptr, ptr %t50
  store ptr %t51, ptr %l2, !tbaa !29
  br label %bb22
bb21:
  br label %bb28
bb22:
  %t53 = load ptr, ptr %l2, !tbaa !29
  %t55 = getelementptr %"compiler/typed:Elem", ptr %t53, i32 0, i32 0
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t58 = call i1 @compiler_2ftyped_2ePurePlace(ptr %v0, ptr %t56)
  store i1 %t58, ptr %l31
  br label %bb23
bb23:
  %t59 = load i1, ptr %l31, !tbaa !21
  br i1 %t59, label %bb24, label %bb25
bb24:
  %t60 = load ptr, ptr %l2, !tbaa !29
  %t62 = getelementptr %"compiler/typed:Elem", ptr %t60, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !29
  %t65 = call i1 @compiler_2ftyped_2ePure(ptr %v0, ptr %t63)
  store i1 %t65, ptr %l35
  br label %bb26
bb25:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb27
bb26:
  %t66 = load i1, ptr %l35, !tbaa !21
  store i1 %t66, ptr %l32, !tbaa !21
  br label %bb27
bb27:
  %t67 = load i1, ptr %l32, !tbaa !21
  store i1 %t67, ptr %l6, !tbaa !21
  br label %bb54
bb28:
  %t68 = load ptr, ptr %l0, !tbaa !29
  store ptr %t68, ptr %l36, !tbaa !29
  store i1 false, ptr %l37, !tbaa !21
  %t69 = load ptr, ptr %l36, !tbaa !29
  %t70 = icmp ne ptr %t69, null
  br i1 %t70, label %bb29, label %bb30
bb29:
  %t72 = load ptr, ptr %l36, !tbaa !29
  %t73 = load i64, ptr %t72, !range !{i64 0, i64 8}
  %t75 = icmp eq i64 %t73, 5
  store i1 %t75, ptr %l37, !tbaa !21
  br label %bb30
bb30:
  %t76 = load i1, ptr %l37, !tbaa !21
  br i1 %t76, label %bb31, label %bb32
bb31:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr { i64, [4 x i64] }, ptr %t77, i32 0, i32 1
  %t80 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t79, i32 0, i32 2
  %t81 = load ptr, ptr %t80
  store ptr %t81, ptr %l3, !tbaa !29
  br label %bb33
bb32:
  br label %bb35
bb33:
  %t83 = load ptr, ptr %l3, !tbaa !29
  %t85 = getelementptr %"compiler/typed:Payload", ptr %t83, i32 0, i32 0
  %t86 = load ptr, ptr %t85, !tbaa !29
  %t88 = call i1 @compiler_2ftyped_2ePurePlace(ptr %v0, ptr %t86)
  store i1 %t88, ptr %l44
  br label %bb34
bb34:
  %t89 = load i1, ptr %l44, !tbaa !21
  store i1 %t89, ptr %l6, !tbaa !21
  br label %bb54
bb35:
  %t90 = load ptr, ptr %l0, !tbaa !29
  store ptr %t90, ptr %l45, !tbaa !29
  store i1 false, ptr %l46, !tbaa !21
  %t91 = load ptr, ptr %l45, !tbaa !29
  %t92 = icmp ne ptr %t91, null
  br i1 %t92, label %bb36, label %bb37
bb36:
  %t94 = load ptr, ptr %l45, !tbaa !29
  %t95 = load i64, ptr %t94, !range !{i64 0, i64 8}
  %t97 = icmp eq i64 %t95, 2
  store i1 %t97, ptr %l46, !tbaa !21
  br label %bb37
bb37:
  %t98 = load i1, ptr %l46, !tbaa !21
  br i1 %t98, label %bb38, label %bb39
bb38:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr { i64, [4 x i64] }, ptr %t99, i32 0, i32 1
  %t102 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t101, i32 0, i32 2
  %t103 = load ptr, ptr %t102
  store ptr %t103, ptr %l4, !tbaa !29
  br label %bb40
bb39:
  br label %bb42
bb40:
  %t105 = load ptr, ptr %l4, !tbaa !29
  %t107 = call i1 @compiler_2ftyped_2ePure(ptr %v0, ptr %t105)
  store i1 %t107, ptr %l52
  br label %bb41
bb41:
  %t108 = load i1, ptr %l52, !tbaa !21
  store i1 %t108, ptr %l6, !tbaa !21
  br label %bb54
bb42:
  %t109 = load ptr, ptr %l0, !tbaa !29
  store ptr %t109, ptr %l53, !tbaa !29
  store i1 false, ptr %l54, !tbaa !21
  %t110 = load ptr, ptr %l53, !tbaa !29
  %t111 = icmp ne ptr %t110, null
  br i1 %t111, label %bb43, label %bb44
bb43:
  %t113 = load ptr, ptr %l53, !tbaa !29
  %t114 = load i64, ptr %t113, !range !{i64 0, i64 8}
  %t116 = icmp eq i64 %t114, 6
  store i1 %t116, ptr %l54, !tbaa !21
  br label %bb44
bb44:
  %t117 = load i1, ptr %l54, !tbaa !21
  br i1 %t117, label %bb45, label %bb46
bb45:
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = getelementptr { i64, [4 x i64] }, ptr %t118, i32 0, i32 1
  %t121 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t120, i32 0, i32 2
  %t122 = load ptr, ptr %t121
  store ptr %t122, ptr %l5, !tbaa !29
  br label %bb47
bb46:
  br label %bb49
bb47:
  %t124 = load ptr, ptr %l5, !tbaa !29
  %t126 = call i1 @compiler_2ftyped_2ePure(ptr %v0, ptr %t124)
  store i1 %t126, ptr %l60
  br label %bb48
bb48:
  %t127 = load i1, ptr %l60, !tbaa !21
  store i1 %t127, ptr %l6, !tbaa !21
  br label %bb54
bb49:
  br i1 true, label %bb50, label %bb51
bb50:
  br label %bb52
bb51:
  br label %bb53
bb52:
  store i1 false, ptr %l6, !tbaa !21
  br label %bb54
bb53:
  call void @__olang_check_failed(ptr @olang_loc_b89edc07d86ca7e2_8a4bea4bc2b7688e)
  unreachable
bb54:
  %t128 = load i1, ptr %l6, !tbaa !21
  store i1 %t128, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2ftyped_2eVersions_2eNew(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca i32
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l25 = alloca %"compiler/typed:Versions"
  %l32 = alloca i64
  %l35 = alloca i64
  %l54 = alloca { i64, ptr }
  %l56 = alloca { i64, ptr }
  %l63 = alloca i64
  %l65 = alloca i64
  %l70 = alloca i32
  %l71 = alloca { i64, ptr }
  %l75 = alloca ptr
  %l76 = alloca %"compiler/source:Span"
  %l81 = alloca ptr
  %l89 = alloca i1
  %l95 = alloca i64
  %l100 = alloca i64
  %l103 = alloca i64
  %l122 = alloca ptr
  %l126 = alloca %"compiler/source:Span"
  %l129 = alloca i64
  %l134 = alloca ptr
  %s7 = alloca %olang.scope
  %rv = alloca ptr
  %t11 = alloca %"compiler/typed:Versions", align 8
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Body", ptr %t1, i32 0, i32 11
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  br i1 %t6, label %bb1, label %bb2
bb1:
  store ptr null, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load { i64, ptr }, ptr %l1, !tbaa !27
  call void @compiler_2ftyped_3aVersions_2ector(ptr %t11, ptr %v0, ptr %v1, ptr %v2, ptr %t9, { i64, ptr } %t10)
  call void @llvm.memmove.p0.p0.i64(ptr %l25, ptr %t11, i64 688, i1 false)
  br label %bb4
bb4:
  %t14 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 688, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t14, ptr %l25, i64 688, i1 false)
  store ptr %t14, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  %t16 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t16, 0
  store i64 %t18, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t20 = load i64, ptr %l4, !tbaa !24
  %t21 = load i64, ptr %l3, !tbaa !24
  %t24 = icmp sgt i64 %t20, %t21
  br i1 %t24, label %bb5, label %bb6
bb5:
  %t26 = load i64, ptr %l5, !tbaa !24
  %t28 = icmp sgt i64 %t26, 0
  br i1 %t28, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l32, !tbaa !24
  br label %bb10
bb7:
  %t30 = load i64, ptr %l4, !tbaa !24
  %t31 = load i64, ptr %l3, !tbaa !24
  %t34 = sub i64 %t30, %t31
  %t35 = load i64, ptr %l5, !tbaa !24
  %t38 = add i64 %t34, %t35
  %t40 = sub i64 %t38, 1
  %t41 = load i64, ptr %l5, !tbaa !24
  %t44 = sdiv i64 %t40, %t41
  store i64 %t44, ptr %l35, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l35, !tbaa !24
  br label %bb9
bb9:
  %t46 = load i64, ptr %l35, !tbaa !24
  store i64 %t46, ptr %l32, !tbaa !24
  br label %bb10
bb10:
  %t47 = load i64, ptr %l32, !tbaa !24
  store i64 %t47, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb11
bb11:
  %t48 = load i64, ptr %l7, !tbaa !24
  %t49 = load i64, ptr %l6, !tbaa !24
  %t52 = icmp slt i64 %t48, %t49
  %t54 = xor i1 %t52, true
  br i1 %t54, label %bb12, label %bb13
bb12:
  br label %bb16
bb13:
  br label %bb14
bb14:
  %t56 = load i64, ptr %l3, !tbaa !24
  %t57 = load i64, ptr %l7, !tbaa !24
  %t58 = load i64, ptr %l5, !tbaa !24
  %t61 = mul i64 %t57, %t58
  %t64 = add i64 %t56, %t61
  store i64 %t64, ptr %l8, !tbaa !24
  %t66 = load ptr, ptr %l2, !tbaa !29
  %t68 = getelementptr %"compiler/typed:Versions", ptr %t66, i32 0, i32 2
  %t69 = load { i64, ptr }, ptr %t68, !tbaa !27
  store { i64, ptr } %t69, ptr %l54, !tbaa !27
  %t70 = load i64, ptr %l8, !tbaa !24
  %t71 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t71, ptr %l56, !tbaa !27
  %t72 = load i64, ptr %l8, !tbaa !24
  %t74 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !27
  %t76 = getelementptr i1, ptr %t75, i64 %t72
  %t77 = load i1, ptr %t76, !tbaa !31
  %t80 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !27
  %t82 = getelementptr i1, ptr %t81, i64 %t70
  store i1 %t77, ptr %t82, !tbaa !31
  br label %bb15
bb15:
  %t83 = load i64, ptr %l7, !tbaa !24
  %t85 = add i64 %t83, 1
  store i64 %t85, ptr %l7, !tbaa !24
  br label %bb11
bb16:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/typed:Body", ptr %t87, i32 0, i32 5
  store ptr %t89, ptr %l9, !tbaa !29
  store i64 0, ptr %l10, !tbaa !24
  br label %bb17
bb17:
  %t91 = load i64, ptr %l10, !tbaa !24
  store i64 %t91, ptr %l63, !tbaa !24
  %t92 = load ptr, ptr %l9, !tbaa !29
  %t94 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t92)
  store i64 %t94, ptr %l65
  br label %bb18
bb18:
  %t95 = load i64, ptr %l63, !tbaa !24
  %t96 = load i64, ptr %l65, !tbaa !24
  %t97 = icmp slt i64 %t95, %t96
  %t99 = xor i1 %t97, true
  br i1 %t99, label %bb19, label %bb20
bb19:
  br label %bb29
bb20:
  br label %bb21
bb21:
  %t101 = load ptr, ptr %l9, !tbaa !29
  %t102 = load i64, ptr %l10, !tbaa !24
  %t105 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t101, i64 %t102)
  store i32 %t105, ptr %l70
  br label %bb22
bb22:
  %t106 = load i32, ptr %l70, !tbaa !23
  store i32 %t106, ptr %l11, !tbaa !23
  %t107 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t107, ptr %l71, !tbaa !27
  %t108 = load i32, ptr %l11, !tbaa !23
  %t110 = sext i32 %t108 to i64
  %t112 = getelementptr { i64, ptr }, ptr %l71, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !27
  %t114 = getelementptr i1, ptr %t113, i64 %t110
  %t115 = load i1, ptr %t114, !tbaa !31
  br i1 %t115, label %bb23, label %bb24
bb23:
  store %olang.scope zeroinitializer, ptr %s7
  %t117 = load ptr, ptr %l2, !tbaa !29
  store ptr %t117, ptr %l75, !tbaa !29
  %t118 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s7, i32 -1, i32 -1)
  store %"compiler/source:Span" %t118, ptr %l76
  br label %bb25
bb24:
  br label %bb27
bb25:
  %t119 = load i32, ptr %l11, !tbaa !23
  %t121 = sext i32 %t119 to i64
  %t122 = load ptr, ptr %l75, !tbaa !29
  %t123 = load %"compiler/source:Span", ptr %l76
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eaddDef(ptr %v2, ptr %v2, ptr %t122, %"compiler/source:Span" %t123, i64 %t121, i32 0, ptr null, i1 true)
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s7)
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t125 = load i64, ptr %l10, !tbaa !24
  %t127 = add i64 %t125, 1
  store i64 %t127, ptr %l10, !tbaa !24
  br label %bb17
bb29:
  %t129 = load ptr, ptr %l2, !tbaa !29
  store ptr %t129, ptr %l81, !tbaa !29
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t132 = getelementptr %"compiler/typed:Body", ptr %t130, i32 0, i32 11
  %t133 = load ptr, ptr %t132, !tbaa !29
  %t135 = icmp eq ptr %t133, null
  br i1 %t135, label %bb30, label %bb31
bb30:
  call void @__olang_check_failed(ptr @olang_loc_7ca7870c6356ec2b_86a13556bf598997)
  unreachable
bb31:
  br label %bb32
bb32:
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t139 = getelementptr %"compiler/typed:Body", ptr %t137, i32 0, i32 11
  %t140 = load ptr, ptr %t139, !tbaa !29
  %t142 = load ptr, ptr %l81, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eblock(ptr %v2, ptr %v0, ptr %t142, ptr %t140)
  br label %bb33
bb33:
  %t144 = load ptr, ptr %l2, !tbaa !29
  %t146 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2esettle(ptr %v2, ptr %t144)
  store i1 %t146, ptr %l89
  br label %bb34
bb34:
  %t147 = load i1, ptr %l89, !tbaa !21
  %t148 = xor i1 %t147, true
  br i1 %t148, label %bb35, label %bb36
bb35:
  store ptr null, ptr %rv
  br label %ret
bb36:
  br label %bb37
bb37:
  %t151 = load ptr, ptr %l2, !tbaa !29
  %t153 = getelementptr %"compiler/typed:Versions", ptr %t151, i32 0, i32 20
  store i1 false, ptr %t153, !tbaa !21
  %t154 = load ptr, ptr %l2, !tbaa !29
  %t156 = getelementptr %"compiler/typed:Versions", ptr %t154, i32 0, i32 3
  %t158 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v2, ptr %t156)
  store i64 %t158, ptr %l95
  br label %bb38
bb38:
  %t159 = load i64, ptr %l95, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  store i64 %t159, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t162 = load i64, ptr %l14, !tbaa !24
  %t163 = load i64, ptr %l13, !tbaa !24
  %t166 = icmp sgt i64 %t162, %t163
  br i1 %t166, label %bb39, label %bb40
bb39:
  %t168 = load i64, ptr %l15, !tbaa !24
  %t170 = icmp sgt i64 %t168, 0
  br i1 %t170, label %bb41, label %bb42
bb40:
  store i64 0, ptr %l100, !tbaa !24
  br label %bb44
bb41:
  %t172 = load i64, ptr %l14, !tbaa !24
  %t173 = load i64, ptr %l13, !tbaa !24
  %t176 = sub i64 %t172, %t173
  %t177 = load i64, ptr %l15, !tbaa !24
  %t180 = add i64 %t176, %t177
  %t182 = sub i64 %t180, 1
  %t183 = load i64, ptr %l15, !tbaa !24
  %t186 = sdiv i64 %t182, %t183
  store i64 %t186, ptr %l103, !tbaa !24
  br label %bb43
bb42:
  store i64 0, ptr %l103, !tbaa !24
  br label %bb43
bb43:
  %t188 = load i64, ptr %l103, !tbaa !24
  store i64 %t188, ptr %l100, !tbaa !24
  br label %bb44
bb44:
  %t189 = load i64, ptr %l100, !tbaa !24
  store i64 %t189, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb45
bb45:
  %t190 = load i64, ptr %l17, !tbaa !24
  %t191 = load i64, ptr %l16, !tbaa !24
  %t194 = icmp slt i64 %t190, %t191
  %t196 = xor i1 %t194, true
  br i1 %t196, label %bb46, label %bb47
bb46:
  br label %bb55
bb47:
  br label %bb48
bb48:
  %t198 = load i64, ptr %l13, !tbaa !24
  %t199 = load i64, ptr %l17, !tbaa !24
  %t200 = load i64, ptr %l15, !tbaa !24
  %t203 = mul i64 %t199, %t200
  %t206 = add i64 %t198, %t203
  %t208 = load ptr, ptr %l2, !tbaa !29
  %t210 = getelementptr %"compiler/typed:Versions", ptr %t208, i32 0, i32 14
  store ptr %t210, ptr %l122, !tbaa !29
  %t211 = load ptr, ptr %l2, !tbaa !29
  %t213 = getelementptr %"compiler/typed:Versions", ptr %t211, i32 0, i32 4
  %t217 = call %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v2, ptr %t213, i64 %t206)
  store %"compiler/source:Span" %t217, ptr %l126
  br label %bb49
bb49:
  %t218 = getelementptr %"compiler/source:Span", ptr %l126, i32 0, i32 0
  %t219 = load i32, ptr %t218, !tbaa !23
  %t221 = icmp slt i32 %t219, 0
  br i1 %t221, label %bb50, label %bb51
bb50:
  store i64 -1, ptr %l129, !tbaa !24
  br label %bb52
bb51:
  store i64 -2, ptr %l129, !tbaa !24
  br label %bb52
bb52:
  %t223 = load ptr, ptr %l122, !tbaa !29
  %t224 = load i64, ptr %l129, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v2, ptr %t223, i64 %t224)
  br label %bb53
bb53:
  br label %bb54
bb54:
  %t225 = load i64, ptr %l17, !tbaa !24
  %t227 = add i64 %t225, 1
  store i64 %t227, ptr %l17, !tbaa !24
  br label %bb45
bb55:
  %t229 = load ptr, ptr %l2, !tbaa !29
  %t231 = getelementptr %"compiler/typed:Versions", ptr %t229, i32 0, i32 14
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v2, ptr %t231, i64 0)
  br label %bb56
bb56:
  %t233 = load ptr, ptr %l2, !tbaa !29
  store ptr %t233, ptr %l134, !tbaa !29
  %t234 = load ptr, ptr %l0, !tbaa !29
  %t236 = getelementptr %"compiler/typed:Body", ptr %t234, i32 0, i32 11
  %t237 = load ptr, ptr %t236, !tbaa !29
  %t239 = icmp eq ptr %t237, null
  br i1 %t239, label %bb57, label %bb58
bb57:
  call void @__olang_check_failed(ptr @olang_loc_a54feafd423d00bc_bd4a8b793949bd78)
  unreachable
bb58:
  br label %bb59
bb59:
  %t241 = load ptr, ptr %l0, !tbaa !29
  %t243 = getelementptr %"compiler/typed:Body", ptr %t241, i32 0, i32 11
  %t244 = load ptr, ptr %t243, !tbaa !29
  %t246 = load ptr, ptr %l134, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eblock(ptr %v2, ptr %v0, ptr %t246, ptr %t244)
  br label %bb60
bb60:
  %t248 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eclassify(ptr %v2, ptr %t248)
  br label %bb61
bb61:
  %t250 = load ptr, ptr %l2, !tbaa !29
  store ptr %t250, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eEncloses(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l3 = alloca i32
  %l16 = alloca %"compiler/typed:BlockInfo"
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store i32 %a2, ptr %l3, !tbaa !23
  br label %bb1
bb1:
  %t3 = load i32, ptr %l3, !tbaa !23
  %t5 = icmp sge i32 %t3, 0
  %t7 = xor i1 %t5, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  br label %bb10
bb3:
  br label %bb4
bb4:
  %t9 = load i32, ptr %l3, !tbaa !23
  %t13 = icmp eq i32 %t9, %a1
  br i1 %t13, label %bb5, label %bb6
bb5:
  store i1 true, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t18 = getelementptr %"compiler/typed:Body", ptr %a0, i32 0, i32 8
  %t19 = load i32, ptr %l3, !tbaa !23
  %t21 = sext i32 %t19 to i64
  %t24 = call %"compiler/typed:BlockInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2eAt_3ccompiler_2ftyped_3aBlockInfo_3e(ptr %v0, ptr %t18, i64 %t21)
  store %"compiler/typed:BlockInfo" %t24, ptr %l16
  br label %bb8
bb8:
  %t25 = getelementptr %"compiler/typed:BlockInfo", ptr %l16, i32 0, i32 0
  %t26 = load i32, ptr %t25, !tbaa !23
  store i32 %t26, ptr %l3, !tbaa !23
  br label %bb9
bb9:
  br label %bb1
bb10:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eBody(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l17 = alloca i64
  %l20 = alloca i64
  %l41 = alloca { i64, ptr }
  %l44 = alloca i1
  %l46 = alloca i1
  %l49 = alloca i1
  %l52 = alloca { i64, ptr }
  %l55 = alloca { i64, ptr }
  %l56 = alloca i64
  %l57 = alloca i64
  %l61 = alloca { i64, ptr }
  %l64 = alloca i64
  %l65 = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eblock(ptr %v0, ptr %v1, ptr %t1, ptr %a1)
  br label %bb1
bb1:
  store i64 0, ptr %l2, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/typed:Landings", ptr %t6, i32 0, i32 0
  %t9 = load { i64, ptr }, ptr %t8, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 0
  store i64 %t11, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t13 = load i64, ptr %l3, !tbaa !24
  %t14 = load i64, ptr %l2, !tbaa !24
  %t17 = icmp sgt i64 %t13, %t14
  br i1 %t17, label %bb2, label %bb3
bb2:
  %t19 = load i64, ptr %l4, !tbaa !24
  %t21 = icmp sgt i64 %t19, 0
  br i1 %t21, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb7
bb4:
  %t23 = load i64, ptr %l3, !tbaa !24
  %t24 = load i64, ptr %l2, !tbaa !24
  %t27 = sub i64 %t23, %t24
  %t28 = load i64, ptr %l4, !tbaa !24
  %t31 = add i64 %t27, %t28
  %t33 = sub i64 %t31, 1
  %t34 = load i64, ptr %l4, !tbaa !24
  %t37 = sdiv i64 %t33, %t34
  store i64 %t37, ptr %l20, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb6
bb6:
  %t39 = load i64, ptr %l20, !tbaa !24
  store i64 %t39, ptr %l17, !tbaa !24
  br label %bb7
bb7:
  %t40 = load i64, ptr %l17, !tbaa !24
  store i64 %t40, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb8
bb8:
  %t41 = load i64, ptr %l6, !tbaa !24
  %t42 = load i64, ptr %l5, !tbaa !24
  %t45 = icmp slt i64 %t41, %t42
  %t47 = xor i1 %t45, true
  br i1 %t47, label %bb9, label %bb10
bb9:
  br label %bb25
bb10:
  br label %bb11
bb11:
  %t49 = load i64, ptr %l2, !tbaa !24
  %t50 = load i64, ptr %l6, !tbaa !24
  %t51 = load i64, ptr %l4, !tbaa !24
  %t54 = mul i64 %t50, %t51
  %t57 = add i64 %t49, %t54
  store i64 %t57, ptr %l7, !tbaa !24
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/typed:Landings", ptr %t59, i32 0, i32 11
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/typed:Landings", ptr %t62, i32 0, i32 0
  %t65 = load { i64, ptr }, ptr %t64, !tbaa !27
  store { i64, ptr } %t65, ptr %l41, !tbaa !27
  %t66 = load i64, ptr %l7, !tbaa !24
  %t68 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !27
  %t70 = getelementptr i64, ptr %t69, i64 %t66
  %t71 = load i64, ptr %t70, !tbaa !34
  %t74 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t61, i64 %t71)
  store i1 %t74, ptr %l44
  br label %bb12
bb12:
  %t75 = load i1, ptr %l44, !tbaa !21
  %t76 = xor i1 %t75, true
  br i1 %t76, label %bb13, label %bb14
bb13:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t79 = load i64, ptr %l7, !tbaa !24
  %t82 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2elastAfter(ptr %v0, ptr %t78, i64 %t79)
  store i1 %t82, ptr %l49
  br label %bb15
bb14:
  store i1 false, ptr %l46, !tbaa !21
  br label %bb16
bb15:
  %t83 = load i1, ptr %l49, !tbaa !21
  %t84 = xor i1 %t83, true
  store i1 %t84, ptr %l46, !tbaa !21
  br label %bb16
bb16:
  %t86 = load i1, ptr %l46, !tbaa !21
  br i1 %t86, label %bb17, label %bb18
bb17:
  br label %bb24
bb18:
  br label %bb19
bb19:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/typed:Landings", ptr %t87, i32 0, i32 3
  %t90 = load { i64, ptr }, ptr %t89, !tbaa !27
  store { i64, ptr } %t90, ptr %l52, !tbaa !27
  %t91 = load i64, ptr %l7, !tbaa !24
  %t93 = getelementptr { i64, ptr }, ptr %l52, i32 0, i32 1
  %t94 = load ptr, ptr %t93, !tbaa !27
  %t95 = getelementptr i1, ptr %t94, i64 %t91
  store i1 true, ptr %t95, !tbaa !31
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/typed:Landings", ptr %t96, i32 0, i32 4
  %t99 = load { i64, ptr }, ptr %t98, !tbaa !27
  store { i64, ptr } %t99, ptr %l55, !tbaa !27
  %t100 = load i64, ptr %l7, !tbaa !24
  store i64 %t100, ptr %l56, !tbaa !24
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = getelementptr %"compiler/typed:Landings", ptr %t101, i32 0, i32 12
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/typed:Landings", ptr %t104, i32 0, i32 0
  %t107 = load { i64, ptr }, ptr %t106, !tbaa !27
  store { i64, ptr } %t107, ptr %l61, !tbaa !27
  %t108 = load i64, ptr %l7, !tbaa !24
  %t110 = getelementptr { i64, ptr }, ptr %l61, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr i64, ptr %t111, i64 %t108
  %t113 = load i64, ptr %t112, !tbaa !34
  %t116 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t103, i64 %t113)
  %t117 = extractvalue { i32, i64 } %t116, 1
  %t118 = extractvalue { i32, i64 } %t116, 0
  store i32 %t118, ptr %l65
  %t119 = icmp ne i32 %t118, 0
  br i1 %t119, label %bb21, label %ok.120, !prof !99
ok.120:
  store i64 %t117, ptr %l64
  br label %bb20
bb20:
  %t121 = load i64, ptr %l64, !tbaa !24
  store i64 %t121, ptr %l57, !tbaa !24
  br label %bb23
bb21:
  br label %bb22
bb22:
  store i64 -1, ptr %l57, !tbaa !24
  br label %bb23
bb23:
  %t122 = load i64, ptr %l57, !tbaa !24
  %t123 = load i64, ptr %l56, !tbaa !24
  %t124 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t125 = load ptr, ptr %t124, !tbaa !27
  %t126 = getelementptr i64, ptr %t125, i64 %t123
  store i64 %t122, ptr %t126, !tbaa !34
  br label %bb24
bb24:
  %t127 = load i64, ptr %l6, !tbaa !24
  %t129 = add i64 %t127, 1
  store i64 %t129, ptr %l6, !tbaa !24
  br label %bb8
bb25:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eapart(ptr %v0, ptr %a0, i64 %a1) #0 {
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
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l20 = alloca i64
  %l23 = alloca i64
  %l42 = alloca { i64, ptr }
  %l48 = alloca i1
  %l53 = alloca i64
  %l57 = alloca i64
  %l60 = alloca i64
  %l81 = alloca i64
  %l83 = alloca { i64, ptr }
  %l87 = alloca i1
  %l91 = alloca i1
  %l93 = alloca i1
  %l97 = alloca i1
  %l98 = alloca i1
  %l102 = alloca i64
  %l104 = alloca { i64, ptr }
  %l109 = alloca { i64, ptr }
  %l112 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Landings", ptr %t1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  store i64 %t6, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t8 = load i64, ptr %l3, !tbaa !24
  %t9 = load i64, ptr %l2, !tbaa !24
  %t12 = icmp sgt i64 %t8, %t9
  br i1 %t12, label %bb1, label %bb2
bb1:
  %t14 = load i64, ptr %l4, !tbaa !24
  %t16 = icmp sgt i64 %t14, 0
  br i1 %t16, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb6
bb3:
  %t18 = load i64, ptr %l3, !tbaa !24
  %t19 = load i64, ptr %l2, !tbaa !24
  %t22 = sub i64 %t18, %t19
  %t23 = load i64, ptr %l4, !tbaa !24
  %t26 = add i64 %t22, %t23
  %t28 = sub i64 %t26, 1
  %t29 = load i64, ptr %l4, !tbaa !24
  %t32 = sdiv i64 %t28, %t29
  store i64 %t32, ptr %l23, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb5
bb5:
  %t34 = load i64, ptr %l23, !tbaa !24
  store i64 %t34, ptr %l20, !tbaa !24
  br label %bb6
bb6:
  %t35 = load i64, ptr %l20, !tbaa !24
  store i64 %t35, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb7
bb7:
  %t36 = load i64, ptr %l6, !tbaa !24
  %t37 = load i64, ptr %l5, !tbaa !24
  %t40 = icmp slt i64 %t36, %t37
  %t42 = xor i1 %t40, true
  br i1 %t42, label %bb8, label %bb9
bb8:
  br label %bb48
bb9:
  br label %bb10
bb10:
  %t44 = load i64, ptr %l2, !tbaa !24
  %t45 = load i64, ptr %l6, !tbaa !24
  %t46 = load i64, ptr %l4, !tbaa !24
  %t49 = mul i64 %t45, %t46
  %t52 = add i64 %t44, %t49
  store i64 %t52, ptr %l7, !tbaa !24
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/typed:Landings", ptr %t54, i32 0, i32 3
  %t57 = load { i64, ptr }, ptr %t56, !tbaa !27
  store { i64, ptr } %t57, ptr %l42, !tbaa !27
  %t58 = load i64, ptr %l7, !tbaa !24
  %t60 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !27
  %t62 = getelementptr i1, ptr %t61, i64 %t58
  %t63 = load i1, ptr %t62, !tbaa !31
  br i1 %t63, label %bb11, label %bb12
bb11:
  br label %bb47
bb12:
  br label %bb13
bb13:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load i64, ptr %l7, !tbaa !24
  %t67 = load i64, ptr %l1, !tbaa !24
  %t71 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2ereadIn(ptr %v0, ptr %t65, i64 %t66, i64 %t67)
  store i1 %t71, ptr %l48
  br label %bb14
bb14:
  %t72 = load i1, ptr %l48, !tbaa !21
  %t73 = xor i1 %t72, true
  br i1 %t73, label %bb15, label %bb16
bb15:
  br label %bb47
bb16:
  br label %bb17
bb17:
  %t75 = load i64, ptr %l1, !tbaa !24
  store i64 %t75, ptr %l8, !tbaa !24
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/typed:Landings", ptr %t77, i32 0, i32 15
  %t81 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t79)
  store i64 %t81, ptr %l53
  br label %bb18
bb18:
  %t82 = load i64, ptr %l53, !tbaa !24
  store i64 %t82, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t83 = load i64, ptr %l9, !tbaa !24
  %t84 = load i64, ptr %l8, !tbaa !24
  %t87 = icmp sgt i64 %t83, %t84
  br i1 %t87, label %bb19, label %bb20
bb19:
  %t89 = load i64, ptr %l10, !tbaa !24
  %t91 = icmp sgt i64 %t89, 0
  br i1 %t91, label %bb21, label %bb22
bb20:
  store i64 0, ptr %l57, !tbaa !24
  br label %bb24
bb21:
  %t93 = load i64, ptr %l9, !tbaa !24
  %t94 = load i64, ptr %l8, !tbaa !24
  %t97 = sub i64 %t93, %t94
  %t98 = load i64, ptr %l10, !tbaa !24
  %t101 = add i64 %t97, %t98
  %t103 = sub i64 %t101, 1
  %t104 = load i64, ptr %l10, !tbaa !24
  %t107 = sdiv i64 %t103, %t104
  store i64 %t107, ptr %l60, !tbaa !24
  br label %bb23
bb22:
  store i64 0, ptr %l60, !tbaa !24
  br label %bb23
bb23:
  %t109 = load i64, ptr %l60, !tbaa !24
  store i64 %t109, ptr %l57, !tbaa !24
  br label %bb24
bb24:
  %t110 = load i64, ptr %l57, !tbaa !24
  store i64 %t110, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb25
bb25:
  %t111 = load i64, ptr %l12, !tbaa !24
  %t112 = load i64, ptr %l11, !tbaa !24
  %t115 = icmp slt i64 %t111, %t112
  %t117 = xor i1 %t115, true
  br i1 %t117, label %bb26, label %bb27
bb26:
  br label %bb46
bb27:
  br label %bb28
bb28:
  %t119 = load i64, ptr %l8, !tbaa !24
  %t120 = load i64, ptr %l12, !tbaa !24
  %t121 = load i64, ptr %l10, !tbaa !24
  %t124 = mul i64 %t120, %t121
  %t127 = add i64 %t119, %t124
  store i64 %t127, ptr %l13, !tbaa !24
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t131 = getelementptr %"compiler/typed:Landings", ptr %t129, i32 0, i32 15
  %t132 = load i64, ptr %l13, !tbaa !24
  %t135 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t131, i64 %t132)
  store i64 %t135, ptr %l81
  br label %bb29
bb29:
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t138 = getelementptr %"compiler/typed:Landings", ptr %t136, i32 0, i32 0
  %t139 = load { i64, ptr }, ptr %t138, !tbaa !27
  store { i64, ptr } %t139, ptr %l83, !tbaa !27
  %t140 = load i64, ptr %l7, !tbaa !24
  %t142 = getelementptr { i64, ptr }, ptr %l83, i32 0, i32 1
  %t143 = load ptr, ptr %t142, !tbaa !27
  %t144 = getelementptr i64, ptr %t143, i64 %t140
  %t145 = load i64, ptr %t144, !tbaa !34
  %t146 = load i64, ptr %l81, !tbaa !24
  %t148 = icmp ne i64 %t146, %t145
  br i1 %t148, label %bb30, label %bb31
bb30:
  store i1 true, ptr %l87, !tbaa !21
  br label %bb33
bb31:
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t152 = getelementptr %"compiler/typed:Landings", ptr %t150, i32 0, i32 18
  %t153 = load i64, ptr %l13, !tbaa !24
  %t156 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t152, i64 %t153)
  store i1 %t156, ptr %l91
  br label %bb32
bb32:
  %t157 = load i1, ptr %l91, !tbaa !21
  %t158 = xor i1 %t157, true
  store i1 %t158, ptr %l87, !tbaa !21
  br label %bb33
bb33:
  %t160 = load i1, ptr %l87, !tbaa !21
  br i1 %t160, label %bb34, label %bb35
bb34:
  store i1 true, ptr %l93, !tbaa !21
  br label %bb41
bb35:
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t163 = getelementptr %"compiler/typed:Landings", ptr %t161, i32 0, i32 17
  %t164 = load i64, ptr %l13, !tbaa !24
  %t167 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t163, i64 %t164)
  store i1 %t167, ptr %l97
  br label %bb36
bb36:
  %t168 = load i1, ptr %l97, !tbaa !21
  br i1 %t168, label %bb37, label %bb38
bb37:
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t171 = getelementptr %"compiler/typed:Landings", ptr %t169, i32 0, i32 16
  %t172 = load i64, ptr %l13, !tbaa !24
  %t175 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t171, i64 %t172)
  store i64 %t175, ptr %l102
  br label %bb39
bb38:
  store i1 false, ptr %l98, !tbaa !21
  br label %bb40
bb39:
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t178 = getelementptr %"compiler/typed:Landings", ptr %t176, i32 0, i32 1
  %t179 = load { i64, ptr }, ptr %t178, !tbaa !27
  store { i64, ptr } %t179, ptr %l104, !tbaa !27
  %t180 = load i64, ptr %l7, !tbaa !24
  %t182 = getelementptr { i64, ptr }, ptr %l104, i32 0, i32 1
  %t183 = load ptr, ptr %t182, !tbaa !27
  %t184 = getelementptr i64, ptr %t183, i64 %t180
  %t185 = load i64, ptr %t184, !tbaa !34
  %t186 = load i64, ptr %l102, !tbaa !24
  %t188 = icmp eq i64 %t186, %t185
  store i1 %t188, ptr %l98, !tbaa !21
  br label %bb40
bb40:
  %t190 = load i1, ptr %l98, !tbaa !21
  store i1 %t190, ptr %l93, !tbaa !21
  br label %bb41
bb41:
  %t191 = load i1, ptr %l93, !tbaa !21
  br i1 %t191, label %bb42, label %bb43
bb42:
  br label %bb45
bb43:
  br label %bb44
bb44:
  %t192 = load ptr, ptr %l0, !tbaa !29
  %t194 = getelementptr %"compiler/typed:Landings", ptr %t192, i32 0, i32 3
  %t195 = load { i64, ptr }, ptr %t194, !tbaa !27
  store { i64, ptr } %t195, ptr %l109, !tbaa !27
  %t196 = load i64, ptr %l7, !tbaa !24
  %t198 = getelementptr { i64, ptr }, ptr %l109, i32 0, i32 1
  %t199 = load ptr, ptr %t198, !tbaa !27
  %t200 = getelementptr i1, ptr %t199, i64 %t196
  store i1 true, ptr %t200, !tbaa !31
  %t201 = load ptr, ptr %l0, !tbaa !29
  %t203 = getelementptr %"compiler/typed:Landings", ptr %t201, i32 0, i32 5
  %t204 = load { i64, ptr }, ptr %t203, !tbaa !27
  store { i64, ptr } %t204, ptr %l112, !tbaa !27
  %t205 = load i64, ptr %l7, !tbaa !24
  %t207 = getelementptr { i64, ptr }, ptr %l112, i32 0, i32 1
  %t208 = load ptr, ptr %t207, !tbaa !27
  %t209 = getelementptr i1, ptr %t208, i64 %t205
  store i1 true, ptr %t209, !tbaa !31
  br label %bb45
bb45:
  %t210 = load i64, ptr %l12, !tbaa !24
  %t212 = add i64 %t210, 1
  store i64 %t212, ptr %l12, !tbaa !24
  br label %bb25
bb46:
  br label %bb47
bb47:
  %t214 = load i64, ptr %l6, !tbaa !24
  %t216 = add i64 %t214, 1
  store i64 %t216, ptr %l6, !tbaa !24
  br label %bb7
bb48:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2elastAfter(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l10 = alloca i64
  %l14 = alloca i64
  %l17 = alloca i64
  %l38 = alloca i64
  %l40 = alloca { i64, ptr }
  %l44 = alloca i1
  %l48 = alloca i64
  %l50 = alloca { i64, ptr }
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Landings", ptr %t1, i32 0, i32 13
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t3)
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
  br label %bb21
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
  %t55 = getelementptr %"compiler/typed:Landings", ptr %t53, i32 0, i32 13
  %t56 = load i64, ptr %l7, !tbaa !24
  %t59 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t55, i64 %t56)
  store i64 %t59, ptr %l38
  br label %bb12
bb12:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/typed:Landings", ptr %t60, i32 0, i32 0
  %t63 = load { i64, ptr }, ptr %t62, !tbaa !27
  store { i64, ptr } %t63, ptr %l40, !tbaa !27
  %t64 = load i64, ptr %l1, !tbaa !24
  %t66 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !27
  %t68 = getelementptr i64, ptr %t67, i64 %t64
  %t69 = load i64, ptr %t68, !tbaa !34
  %t70 = load i64, ptr %l38, !tbaa !24
  %t72 = icmp eq i64 %t70, %t69
  br i1 %t72, label %bb13, label %bb14
bb13:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/typed:Landings", ptr %t74, i32 0, i32 14
  %t77 = load i64, ptr %l7, !tbaa !24
  %t80 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t76, i64 %t77)
  store i64 %t80, ptr %l48
  br label %bb15
bb14:
  store i1 false, ptr %l44, !tbaa !21
  br label %bb16
bb15:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/typed:Landings", ptr %t81, i32 0, i32 1
  %t84 = load { i64, ptr }, ptr %t83, !tbaa !27
  store { i64, ptr } %t84, ptr %l50, !tbaa !27
  %t85 = load i64, ptr %l1, !tbaa !24
  %t87 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !27
  %t89 = getelementptr i64, ptr %t88, i64 %t85
  %t90 = load i64, ptr %t89, !tbaa !34
  %t91 = load i64, ptr %l48, !tbaa !24
  %t93 = icmp ne i64 %t91, %t90
  store i1 %t93, ptr %l44, !tbaa !21
  br label %bb16
bb16:
  %t95 = load i1, ptr %l44, !tbaa !21
  br i1 %t95, label %bb17, label %bb18
bb17:
  store i1 true, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t97 = load i64, ptr %l6, !tbaa !24
  %t99 = add i64 %t97, 1
  store i64 %t99, ptr %l6, !tbaa !24
  br label %bb8
bb21:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eplace(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca i1
  %l31 = alloca ptr
  %l32 = alloca i1
  %l39 = alloca ptr
  %l40 = alloca i1
  %l57 = alloca ptr
  %l58 = alloca i1
  %l66 = alloca ptr
  %l67 = alloca i1
  %l75 = alloca ptr
  %l76 = alloca i1
  %l79 = alloca ptr
  %l80 = alloca i1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l11, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l11, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l2
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t18, i32 0, i32 2
  %t20 = load i32, ptr %t19
  store i32 %t20, ptr %l3, !tbaa !23
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load i32, ptr %l3, !tbaa !23
  %t24 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t25 = load i32, ptr %t24, !tbaa !23
  %t27 = sext i32 %t25 to i64
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2emention(ptr %v0, ptr %t22, i32 %t23, i64 %t27, i1 false)
  br label %bb6
bb6:
  br label %bb54
bb7:
  %t31 = load ptr, ptr %l1, !tbaa !29
  store ptr %t31, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t32 = load ptr, ptr %l22, !tbaa !29
  %t33 = icmp ne ptr %t32, null
  br i1 %t33, label %bb8, label %bb9
bb8:
  %t35 = load ptr, ptr %l22, !tbaa !29
  %t36 = load i64, ptr %t35, !range !{i64 0, i64 8}
  %t38 = icmp eq i64 %t36, 2
  store i1 %t38, ptr %l23, !tbaa !21
  br label %bb9
bb9:
  %t39 = load i1, ptr %l23, !tbaa !21
  br i1 %t39, label %bb10, label %bb11
bb10:
  %t40 = load ptr, ptr %l1, !tbaa !29
  %t42 = getelementptr { i64, [4 x i64] }, ptr %t40, i32 0, i32 1
  %t43 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t42, i32 0, i32 2
  %t44 = load ptr, ptr %t43
  store ptr %t44, ptr %l4, !tbaa !29
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eexpr(ptr %v0, ptr %v1, ptr %t46, ptr %t47)
  br label %bb13
bb13:
  br label %bb54
bb14:
  %t51 = load ptr, ptr %l1, !tbaa !29
  store ptr %t51, ptr %l31, !tbaa !29
  store i1 false, ptr %l32, !tbaa !21
  %t52 = load ptr, ptr %l31, !tbaa !29
  %t53 = icmp ne ptr %t52, null
  br i1 %t53, label %bb15, label %bb16
bb15:
  %t55 = load ptr, ptr %l31, !tbaa !29
  %t56 = load i64, ptr %t55, !range !{i64 0, i64 8}
  %t58 = icmp eq i64 %t56, 3
  store i1 %t58, ptr %l32, !tbaa !21
  br label %bb16
bb16:
  %t59 = load i1, ptr %l32, !tbaa !21
  br i1 %t59, label %bb17, label %bb18
bb17:
  %t60 = load ptr, ptr %l1, !tbaa !29
  %t62 = getelementptr { i64, [4 x i64] }, ptr %t60, i32 0, i32 1
  %t63 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t62, i32 0, i32 2
  %t64 = load ptr, ptr %t63
  store ptr %t64, ptr %l5, !tbaa !29
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load ptr, ptr %l5, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eplace(ptr %v0, ptr %v1, ptr %t66, ptr %t67)
  br label %bb20
bb20:
  br label %bb54
bb21:
  %t70 = load ptr, ptr %l1, !tbaa !29
  store ptr %t70, ptr %l39, !tbaa !29
  store i1 false, ptr %l40, !tbaa !21
  %t71 = load ptr, ptr %l39, !tbaa !29
  %t72 = icmp ne ptr %t71, null
  br i1 %t72, label %bb22, label %bb23
bb22:
  %t74 = load ptr, ptr %l39, !tbaa !29
  %t75 = load i64, ptr %t74, !range !{i64 0, i64 8}
  %t77 = icmp eq i64 %t75, 4
  store i1 %t77, ptr %l40, !tbaa !21
  br label %bb23
bb23:
  %t78 = load i1, ptr %l40, !tbaa !21
  br i1 %t78, label %bb24, label %bb25
bb24:
  %t79 = load ptr, ptr %l1, !tbaa !29
  %t81 = getelementptr { i64, [4 x i64] }, ptr %t79, i32 0, i32 1
  %t82 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t81, i32 0, i32 2
  %t83 = load ptr, ptr %t82
  store ptr %t83, ptr %l6, !tbaa !29
  br label %bb26
bb25:
  br label %bb29
bb26:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load ptr, ptr %l6, !tbaa !29
  %t88 = getelementptr %"compiler/typed:Elem", ptr %t86, i32 0, i32 0
  %t89 = load ptr, ptr %t88, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eplace(ptr %v0, ptr %v1, ptr %t85, ptr %t89)
  br label %bb27
bb27:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/typed:Landings", ptr %t92, i32 0, i32 20
  %t95 = load i64, ptr %t94, !tbaa !24
  store i64 %t95, ptr %l7, !tbaa !24
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/typed:Landings", ptr %t97, i32 0, i32 20
  store i64 0, ptr %t99, !tbaa !24
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t101 = load ptr, ptr %l6, !tbaa !29
  %t103 = getelementptr %"compiler/typed:Elem", ptr %t101, i32 0, i32 1
  %t104 = load ptr, ptr %t103, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eexpr(ptr %v0, ptr %v1, ptr %t100, ptr %t104)
  br label %bb28
bb28:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t109 = load i64, ptr %l7, !tbaa !24
  %t112 = getelementptr %"compiler/typed:Landings", ptr %t108, i32 0, i32 20
  store i64 %t109, ptr %t112, !tbaa !24
  br label %bb54
bb29:
  %t113 = load ptr, ptr %l1, !tbaa !29
  store ptr %t113, ptr %l57, !tbaa !29
  store i1 false, ptr %l58, !tbaa !21
  %t114 = load ptr, ptr %l57, !tbaa !29
  %t115 = icmp ne ptr %t114, null
  br i1 %t115, label %bb30, label %bb31
bb30:
  %t117 = load ptr, ptr %l57, !tbaa !29
  %t118 = load i64, ptr %t117, !range !{i64 0, i64 8}
  %t120 = icmp eq i64 %t118, 5
  store i1 %t120, ptr %l58, !tbaa !21
  br label %bb31
bb31:
  %t121 = load i1, ptr %l58, !tbaa !21
  br i1 %t121, label %bb32, label %bb33
bb32:
  %t122 = load ptr, ptr %l1, !tbaa !29
  %t124 = getelementptr { i64, [4 x i64] }, ptr %t122, i32 0, i32 1
  %t125 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t124, i32 0, i32 2
  %t126 = load ptr, ptr %t125
  store ptr %t126, ptr %l8, !tbaa !29
  br label %bb34
bb33:
  br label %bb36
bb34:
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t129 = load ptr, ptr %l8, !tbaa !29
  %t131 = getelementptr %"compiler/typed:Payload", ptr %t129, i32 0, i32 0
  %t132 = load ptr, ptr %t131, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eplace(ptr %v0, ptr %v1, ptr %t128, ptr %t132)
  br label %bb35
bb35:
  br label %bb54
bb36:
  %t135 = load ptr, ptr %l1, !tbaa !29
  store ptr %t135, ptr %l66, !tbaa !29
  store i1 false, ptr %l67, !tbaa !21
  %t136 = load ptr, ptr %l66, !tbaa !29
  %t137 = icmp ne ptr %t136, null
  br i1 %t137, label %bb37, label %bb38
bb37:
  %t139 = load ptr, ptr %l66, !tbaa !29
  %t140 = load i64, ptr %t139, !range !{i64 0, i64 8}
  %t142 = icmp eq i64 %t140, 6
  store i1 %t142, ptr %l67, !tbaa !21
  br label %bb38
bb38:
  %t143 = load i1, ptr %l67, !tbaa !21
  br i1 %t143, label %bb39, label %bb40
bb39:
  %t144 = load ptr, ptr %l1, !tbaa !29
  %t146 = getelementptr { i64, [4 x i64] }, ptr %t144, i32 0, i32 1
  %t147 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t146, i32 0, i32 2
  %t148 = load ptr, ptr %t147
  store ptr %t148, ptr %l9, !tbaa !29
  br label %bb41
bb40:
  br label %bb43
bb41:
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t151 = load ptr, ptr %l9, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eexpr(ptr %v0, ptr %v1, ptr %t150, ptr %t151)
  br label %bb42
bb42:
  br label %bb54
bb43:
  %t155 = load ptr, ptr %l1, !tbaa !29
  store ptr %t155, ptr %l75, !tbaa !29
  store i1 false, ptr %l76, !tbaa !21
  %t156 = load ptr, ptr %l75, !tbaa !29
  %t157 = icmp ne ptr %t156, null
  br i1 %t157, label %bb44, label %bb45
bb44:
  %t159 = load ptr, ptr %l75, !tbaa !29
  %t160 = load i64, ptr %t159, !range !{i64 0, i64 8}
  %t162 = icmp eq i64 %t160, 1
  store i1 %t162, ptr %l76, !tbaa !21
  br label %bb45
bb45:
  %t163 = load i1, ptr %l76, !tbaa !21
  br i1 %t163, label %bb46, label %bb47
bb46:
  br label %bb52
bb47:
  %t164 = load ptr, ptr %l1, !tbaa !29
  store ptr %t164, ptr %l79, !tbaa !29
  store i1 false, ptr %l80, !tbaa !21
  %t165 = load ptr, ptr %l79, !tbaa !29
  %t166 = icmp ne ptr %t165, null
  br i1 %t166, label %bb48, label %bb49
bb48:
  %t168 = load ptr, ptr %l79, !tbaa !29
  %t169 = load i64, ptr %t168, !range !{i64 0, i64 8}
  %t171 = icmp eq i64 %t169, 7
  store i1 %t171, ptr %l80, !tbaa !21
  br label %bb49
bb49:
  %t172 = load i1, ptr %l80, !tbaa !21
  br i1 %t172, label %bb50, label %bb51
bb50:
  br label %bb52
bb51:
  br label %bb53
bb52:
  br label %bb54
bb53:
  call void @__olang_check_failed(ptr @olang_loc_af04a8710b199599_1473152472f015d)
  unreachable
bb54:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2erenewed(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l10 = alloca i1
  %l20 = alloca i64
  %l23 = alloca i64
  %l42 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Landings", ptr %t1, i32 0, i32 7
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb3
bb2:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/typed:Landings", ptr %t6, i32 0, i32 9
  %t9 = load i64, ptr %t8, !tbaa !24
  %t11 = icmp sgt i64 %t9, 0
  store i1 %t11, ptr %l10, !tbaa !21
  br label %bb3
bb3:
  %t13 = load i1, ptr %l10, !tbaa !21
  br i1 %t13, label %bb4, label %bb5
bb4:
  br label %ret
bb5:
  br label %bb6
bb6:
  store i64 0, ptr %l2, !tbaa !24
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/typed:Landings", ptr %t14, i32 0, i32 0
  %t17 = load { i64, ptr }, ptr %t16, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t17, 0
  store i64 %t19, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t21 = load i64, ptr %l3, !tbaa !24
  %t22 = load i64, ptr %l2, !tbaa !24
  %t25 = icmp sgt i64 %t21, %t22
  br i1 %t25, label %bb7, label %bb8
bb7:
  %t27 = load i64, ptr %l4, !tbaa !24
  %t29 = icmp sgt i64 %t27, 0
  br i1 %t29, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb12
bb9:
  %t31 = load i64, ptr %l3, !tbaa !24
  %t32 = load i64, ptr %l2, !tbaa !24
  %t35 = sub i64 %t31, %t32
  %t36 = load i64, ptr %l4, !tbaa !24
  %t39 = add i64 %t35, %t36
  %t41 = sub i64 %t39, 1
  %t42 = load i64, ptr %l4, !tbaa !24
  %t45 = sdiv i64 %t41, %t42
  store i64 %t45, ptr %l23, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb11
bb11:
  %t47 = load i64, ptr %l23, !tbaa !24
  store i64 %t47, ptr %l20, !tbaa !24
  br label %bb12
bb12:
  %t48 = load i64, ptr %l20, !tbaa !24
  store i64 %t48, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb13
bb13:
  %t49 = load i64, ptr %l6, !tbaa !24
  %t50 = load i64, ptr %l5, !tbaa !24
  %t53 = icmp slt i64 %t49, %t50
  %t55 = xor i1 %t53, true
  br i1 %t55, label %bb14, label %bb15
bb14:
  br label %bb21
bb15:
  br label %bb16
bb16:
  %t57 = load i64, ptr %l2, !tbaa !24
  %t58 = load i64, ptr %l6, !tbaa !24
  %t59 = load i64, ptr %l4, !tbaa !24
  %t62 = mul i64 %t58, %t59
  %t65 = add i64 %t57, %t62
  store i64 %t65, ptr %l7, !tbaa !24
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/typed:Landings", ptr %t67, i32 0, i32 0
  %t70 = load { i64, ptr }, ptr %t69, !tbaa !27
  store { i64, ptr } %t70, ptr %l42, !tbaa !27
  %t71 = load i64, ptr %l7, !tbaa !24
  %t73 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !27
  %t75 = getelementptr i64, ptr %t74, i64 %t71
  %t76 = load i64, ptr %t75, !tbaa !34
  %t80 = icmp eq i64 %t76, %a1
  br i1 %t80, label %bb17, label %bb18
bb17:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/typed:Landings", ptr %t82, i32 0, i32 6
  %t85 = load { i64, ptr }, ptr %t84, !tbaa !27
  store { i64, ptr } %t85, ptr %l48, !tbaa !27
  %t86 = load i64, ptr %l7, !tbaa !24
  %t88 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !27
  %t90 = getelementptr i1, ptr %t89, i64 %t86
  store i1 false, ptr %t90, !tbaa !31
  br label %bb19
bb18:
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t91 = load i64, ptr %l6, !tbaa !24
  %t93 = add i64 %t91, 1
  store i64 %t93, ptr %l6, !tbaa !24
  br label %bb13
bb21:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eapart(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
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
  %l15 = alloca i64
  %l19 = alloca i64
  %l23 = alloca i64
  %l26 = alloca i64
  %l47 = alloca i64
  %l58 = alloca i64
  %l61 = alloca i64
  %l82 = alloca i1
  %l87 = alloca i64
  %l91 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 %a2, ptr %l3, !tbaa !24
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/typed:LastUses", ptr %t3, i32 0, i32 6
  %t7 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t5)
  store i64 %t7, ptr %l19
  br label %bb1
bb1:
  %t8 = load i64, ptr %l19, !tbaa !24
  store i64 %t8, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t9 = load i64, ptr %l4, !tbaa !24
  %t10 = load i64, ptr %l3, !tbaa !24
  %t13 = icmp sgt i64 %t9, %t10
  br i1 %t13, label %bb2, label %bb3
bb2:
  %t15 = load i64, ptr %l5, !tbaa !24
  %t17 = icmp sgt i64 %t15, 0
  br i1 %t17, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb7
bb4:
  %t19 = load i64, ptr %l4, !tbaa !24
  %t20 = load i64, ptr %l3, !tbaa !24
  %t23 = sub i64 %t19, %t20
  %t24 = load i64, ptr %l5, !tbaa !24
  %t27 = add i64 %t23, %t24
  %t29 = sub i64 %t27, 1
  %t30 = load i64, ptr %l5, !tbaa !24
  %t33 = sdiv i64 %t29, %t30
  store i64 %t33, ptr %l26, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb6
bb6:
  %t35 = load i64, ptr %l26, !tbaa !24
  store i64 %t35, ptr %l23, !tbaa !24
  br label %bb7
bb7:
  %t36 = load i64, ptr %l23, !tbaa !24
  store i64 %t36, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb8
bb8:
  %t37 = load i64, ptr %l7, !tbaa !24
  %t38 = load i64, ptr %l6, !tbaa !24
  %t41 = icmp slt i64 %t37, %t38
  %t43 = xor i1 %t41, true
  br i1 %t43, label %bb9, label %bb10
bb9:
  br label %bb38
bb10:
  br label %bb11
bb11:
  %t45 = load i64, ptr %l3, !tbaa !24
  %t46 = load i64, ptr %l7, !tbaa !24
  %t47 = load i64, ptr %l5, !tbaa !24
  %t50 = mul i64 %t46, %t47
  %t53 = add i64 %t45, %t50
  store i64 %t53, ptr %l8, !tbaa !24
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/typed:LastUses", ptr %t55, i32 0, i32 8
  %t58 = load i64, ptr %l8, !tbaa !24
  %t61 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t57, i64 %t58)
  store i64 %t61, ptr %l47
  br label %bb12
bb12:
  %t62 = load i64, ptr %l47, !tbaa !24
  store i64 %t62, ptr %l9, !tbaa !24
  %t63 = load i64, ptr %l9, !tbaa !24
  %t65 = icmp slt i64 %t63, 0
  br i1 %t65, label %bb13, label %bb14
bb13:
  br label %bb37
bb14:
  br label %bb15
bb15:
  %t69 = add i64 %a1, 1
  store i64 %t69, ptr %l10, !tbaa !24
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/typed:LastUses", ptr %t71, i32 0, i32 3
  %t74 = load i64, ptr %t73, !tbaa !24
  %t76 = add i64 %t74, 1
  store i64 %t76, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t78 = load i64, ptr %l11, !tbaa !24
  %t79 = load i64, ptr %l10, !tbaa !24
  %t82 = icmp sgt i64 %t78, %t79
  br i1 %t82, label %bb16, label %bb17
bb16:
  %t84 = load i64, ptr %l12, !tbaa !24
  %t86 = icmp sgt i64 %t84, 0
  br i1 %t86, label %bb18, label %bb19
bb17:
  store i64 0, ptr %l58, !tbaa !24
  br label %bb21
bb18:
  %t88 = load i64, ptr %l11, !tbaa !24
  %t89 = load i64, ptr %l10, !tbaa !24
  %t92 = sub i64 %t88, %t89
  %t93 = load i64, ptr %l12, !tbaa !24
  %t96 = add i64 %t92, %t93
  %t98 = sub i64 %t96, 1
  %t99 = load i64, ptr %l12, !tbaa !24
  %t102 = sdiv i64 %t98, %t99
  store i64 %t102, ptr %l61, !tbaa !24
  br label %bb20
bb19:
  store i64 0, ptr %l61, !tbaa !24
  br label %bb20
bb20:
  %t104 = load i64, ptr %l61, !tbaa !24
  store i64 %t104, ptr %l58, !tbaa !24
  br label %bb21
bb21:
  %t105 = load i64, ptr %l58, !tbaa !24
  store i64 %t105, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb22
bb22:
  %t106 = load i64, ptr %l14, !tbaa !24
  %t107 = load i64, ptr %l13, !tbaa !24
  %t110 = icmp slt i64 %t106, %t107
  %t112 = xor i1 %t110, true
  br i1 %t112, label %bb23, label %bb24
bb23:
  br label %bb36
bb24:
  br label %bb25
bb25:
  %t114 = load i64, ptr %l10, !tbaa !24
  %t115 = load i64, ptr %l14, !tbaa !24
  %t116 = load i64, ptr %l12, !tbaa !24
  %t119 = mul i64 %t115, %t116
  %t122 = add i64 %t114, %t119
  store i64 %t122, ptr %l15, !tbaa !24
  %t124 = load i64, ptr %l15, !tbaa !24
  %t125 = load i64, ptr %l9, !tbaa !24
  %t128 = icmp ne i64 %t124, %t125
  br i1 %t128, label %bb26, label %bb27
bb26:
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t132 = getelementptr %"compiler/typed:LastUses", ptr %t130, i32 0, i32 9
  %t133 = load i64, ptr %l15, !tbaa !24
  %t135 = sub i64 %t133, 1
  %t138 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t132, i64 %t135)
  store i64 %t138, ptr %l87
  br label %bb28
bb27:
  store i1 false, ptr %l82, !tbaa !21
  br label %bb30
bb28:
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t141 = getelementptr %"compiler/typed:LastUses", ptr %t139, i32 0, i32 7
  %t142 = load i64, ptr %l8, !tbaa !24
  %t145 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t141, i64 %t142)
  store i64 %t145, ptr %l91
  br label %bb29
bb29:
  %t146 = load i64, ptr %l87, !tbaa !24
  %t147 = load i64, ptr %l91, !tbaa !24
  %t148 = icmp eq i64 %t146, %t147
  store i1 %t148, ptr %l82, !tbaa !21
  br label %bb30
bb30:
  %t150 = load i1, ptr %l82, !tbaa !21
  br i1 %t150, label %bb31, label %bb32
bb31:
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t153 = getelementptr %"compiler/typed:LastUses", ptr %t151, i32 0, i32 8
  %t154 = load i64, ptr %l8, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t153, i64 %t154, i64 -1)
  br label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb34
bb34:
  br label %bb35
bb35:
  %t157 = load i64, ptr %l14, !tbaa !24
  %t159 = add i64 %t157, 1
  store i64 %t159, ptr %l14, !tbaa !24
  br label %bb22
bb36:
  br label %bb37
bb37:
  %t161 = load i64, ptr %l7, !tbaa !24
  %t163 = add i64 %t161, 1
  store i64 %t163, ptr %l7, !tbaa !24
  br label %bb8
bb38:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eclauses(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l13 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
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
  br label %bb8
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
  store ptr %t21, ptr %l5, !tbaa !29
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load ptr, ptr %l5, !tbaa !29
  %t26 = getelementptr %"compiler/typed:Clause", ptr %t24, i32 0, i32 3
  %t27 = load ptr, ptr %t26, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eBlock(ptr %v0, ptr %v1, ptr %t23, ptr %t27)
  br label %bb5
bb5:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load ptr, ptr %l5, !tbaa !29
  %t33 = getelementptr %"compiler/typed:Clause", ptr %t31, i32 0, i32 4
  %t34 = load { i64, ptr }, ptr %t33, !tbaa !27
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eexprs(ptr %v0, ptr %v1, ptr %t30, { i64, ptr } %t34)
  br label %bb6
bb6:
  br label %bb7
bb7:
  %t37 = load i64, ptr %l3, !tbaa !24
  %t39 = add i64 %t37, 1
  store i64 %t39, ptr %l3, !tbaa !24
  br label %bb1
bb8:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2earm(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, [1 x i64] } %a2) #0 {
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
  %l10 = alloca ptr
  %l19 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %t32 = alloca { i64, [1 x i64] }, align 8
  %t73 = alloca { i64, [1 x i64] }, align 8
  %t95 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Arm", ptr %t1, i32 0, i32 1
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t6 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t6, 0
  store i64 %t8, ptr %l5, !tbaa !24
  br label %bb1
bb1:
  %t10 = load i64, ptr %l4, !tbaa !24
  %t11 = load i64, ptr %l5, !tbaa !24
  %t14 = icmp slt i64 %t10, %t11
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb2, label %bb3
bb2:
  br label %bb14
bb3:
  br label %bb4
bb4:
  %t18 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t18, ptr %l19, !tbaa !27
  %t19 = load i64, ptr %l4, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr ptr, ptr %t22, i64 %t19
  %t24 = load ptr, ptr %t23, !tbaa !39
  store ptr %t24, ptr %l6, !tbaa !29
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load ptr, ptr %l6, !tbaa !29
  %t29 = getelementptr %"compiler/typed:Alt", ptr %t27, i32 0, i32 0
  %t30 = load ptr, ptr %t29, !tbaa !29
  store { i64, [1 x i64] } zeroinitializer, ptr %t32
  %t33 = getelementptr { i64, [1 x i64] }, ptr %t32, i32 0, i32 0
  store i64 0, ptr %t33
  %t34 = load { i64, [1 x i64] }, ptr %t32
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t26, ptr %t30, { i64, [1 x i64] } %t34)
  br label %bb5
bb5:
  %t38 = load ptr, ptr %l6, !tbaa !29
  %t40 = getelementptr %"compiler/typed:Alt", ptr %t38, i32 0, i32 1
  %t41 = load { i64, ptr }, ptr %t40, !tbaa !27
  store { i64, ptr } %t41, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t43 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t43, 0
  store i64 %t45, ptr %l9, !tbaa !24
  br label %bb6
bb6:
  %t47 = load i64, ptr %l8, !tbaa !24
  %t48 = load i64, ptr %l9, !tbaa !24
  %t51 = icmp slt i64 %t47, %t48
  %t53 = xor i1 %t51, true
  br i1 %t53, label %bb7, label %bb8
bb7:
  br label %bb12
bb8:
  br label %bb9
bb9:
  %t55 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t55, ptr %l35, !tbaa !27
  %t56 = load i64, ptr %l8, !tbaa !24
  %t58 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !27
  %t60 = getelementptr ptr, ptr %t59, i64 %t56
  %t61 = load ptr, ptr %t60, !tbaa !39
  store ptr %t61, ptr %l10, !tbaa !29
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t64 = load ptr, ptr %l10, !tbaa !29
  %t66 = getelementptr %"compiler/typed:Bind", ptr %t64, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t69 = load ptr, ptr %l10, !tbaa !29
  %t71 = getelementptr %"compiler/typed:Bind", ptr %t69, i32 0, i32 0
  %t72 = load i32, ptr %t71, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t73
  %t74 = getelementptr { i64, [1 x i64] }, ptr %t73, i32 0, i32 0
  store i64 4, ptr %t74
  %t76 = insertvalue { i32 } undef, i32 %t72, 0
  %t77 = getelementptr { i64, [1 x i64] }, ptr %t73, i32 0, i32 1
  store { i32 } %t76, ptr %t77
  %t78 = load { i64, [1 x i64] }, ptr %t73
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t63, ptr %t67, { i64, [1 x i64] } %t78)
  br label %bb10
bb10:
  br label %bb11
bb11:
  %t82 = load i64, ptr %l8, !tbaa !24
  %t84 = add i64 %t82, 1
  store i64 %t84, ptr %l8, !tbaa !24
  br label %bb6
bb12:
  br label %bb13
bb13:
  %t86 = load i64, ptr %l4, !tbaa !24
  %t88 = add i64 %t86, 1
  store i64 %t88, ptr %l4, !tbaa !24
  br label %bb1
bb14:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t91 = load ptr, ptr %l1, !tbaa !29
  %t93 = getelementptr %"compiler/typed:Arm", ptr %t91, i32 0, i32 2
  %t94 = load ptr, ptr %t93, !tbaa !29
  store { i64, [1 x i64] } zeroinitializer, ptr %t95
  %t96 = getelementptr { i64, [1 x i64] }, ptr %t95, i32 0, i32 0
  store i64 0, ptr %t96
  %t97 = load { i64, [1 x i64] }, ptr %t95
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t90, ptr %t94, { i64, [1 x i64] } %t97)
  br label %bb15
bb15:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load ptr, ptr %l1, !tbaa !29
  %t104 = getelementptr %"compiler/typed:Arm", ptr %t102, i32 0, i32 3
  %t105 = load ptr, ptr %t104, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eblock(ptr %v0, ptr %v1, ptr %v3, ptr %v2, ptr %t101, ptr %t105)
  br label %bb16
bb16:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t109 = load ptr, ptr %l1, !tbaa !29
  %t111 = getelementptr %"compiler/typed:Arm", ptr %t109, i32 0, i32 4
  %t112 = load ptr, ptr %t111, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t108, ptr %t112, { i64, [1 x i64] } %a2)
  br label %bb17
bb17:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2ecall(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i1
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca i64
  %l15 = alloca ptr
  %l16 = alloca i1
  %l19 = alloca ptr
  %l20 = alloca i1
  %l27 = alloca ptr
  %l28 = alloca i1
  %l37 = alloca ptr
  %l38 = alloca i1
  %l47 = alloca i64
  %l50 = alloca i64
  %l69 = alloca { i64, ptr }
  %l74 = alloca i64
  %l77 = alloca i1
  %l80 = alloca i1
  %l100 = alloca ptr
  %l104 = alloca i1
  %l107 = alloca i1
  %l125 = alloca ptr
  %l127 = alloca i32
  %l129 = alloca i1
  %l130 = alloca i1
  %l134 = alloca i1
  %l137 = alloca i1
  %l141 = alloca i1
  %l146 = alloca i1
  %l147 = alloca ptr
  %l149 = alloca ptr
  %l151 = alloca { i64, [1 x i64] }
  %t43 = alloca { i64, [1 x i64] }, align 8
  %t277 = alloca { i64, [1 x i64] }, align 8
  %t281 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 -1, ptr %l2, !tbaa !24
  store i1 false, ptr %l3, !tbaa !21
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Call", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l4, !tbaa !29
  %t6 = load ptr, ptr %l4, !tbaa !29
  store ptr %t6, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t7 = load ptr, ptr %l19, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l19, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 5}
  %t13 = icmp eq i64 %t11, 0
  store i1 %t13, ptr %l20, !tbaa !21
  br label %bb2
bb2:
  %t14 = load i1, ptr %l20, !tbaa !21
  br i1 %t14, label %bb3, label %bb4
bb3:
  %t15 = load ptr, ptr %l4, !tbaa !29
  %t17 = getelementptr { i64, [3 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { i32 }, ptr %t17, i32 0, i32 0
  %t19 = load i32, ptr %t18
  store i32 %t19, ptr %l5, !tbaa !23
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t21 = load i32, ptr %l5, !tbaa !23
  %t23 = sext i32 %t21 to i64
  store i64 %t23, ptr %l2, !tbaa !24
  br label %bb24
bb6:
  %t25 = load ptr, ptr %l4, !tbaa !29
  store ptr %t25, ptr %l27, !tbaa !29
  store i1 false, ptr %l28, !tbaa !21
  %t26 = load ptr, ptr %l27, !tbaa !29
  %t27 = icmp ne ptr %t26, null
  br i1 %t27, label %bb7, label %bb8
bb7:
  %t29 = load ptr, ptr %l27, !tbaa !29
  %t30 = load i64, ptr %t29, !range !{i64 0, i64 5}
  %t32 = icmp eq i64 %t30, 2
  store i1 %t32, ptr %l28, !tbaa !21
  br label %bb8
bb8:
  %t33 = load i1, ptr %l28, !tbaa !21
  br i1 %t33, label %bb9, label %bb10
bb9:
  %t34 = load ptr, ptr %l4, !tbaa !29
  %t36 = getelementptr { i64, [3 x i64] }, ptr %t34, i32 0, i32 1
  %t37 = getelementptr { ptr }, ptr %t36, i32 0, i32 0
  %t38 = load ptr, ptr %t37
  store ptr %t38, ptr %l6, !tbaa !29
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load ptr, ptr %l6, !tbaa !29
  store { i64, [1 x i64] } zeroinitializer, ptr %t43
  %t44 = getelementptr { i64, [1 x i64] }, ptr %t43, i32 0, i32 0
  store i64 0, ptr %t44
  %t45 = load { i64, [1 x i64] }, ptr %t43
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t40, ptr %t41, { i64, [1 x i64] } %t45)
  br label %bb12
bb12:
  br label %bb24
bb13:
  %t49 = load ptr, ptr %l4, !tbaa !29
  store ptr %t49, ptr %l37, !tbaa !29
  store i1 false, ptr %l38, !tbaa !21
  %t50 = load ptr, ptr %l37, !tbaa !29
  %t51 = icmp ne ptr %t50, null
  br i1 %t51, label %bb14, label %bb15
bb14:
  %t53 = load ptr, ptr %l37, !tbaa !29
  %t54 = load i64, ptr %t53, !range !{i64 0, i64 5}
  %t56 = icmp eq i64 %t54, 4
  store i1 %t56, ptr %l38, !tbaa !21
  br label %bb15
bb15:
  %t57 = load i1, ptr %l38, !tbaa !21
  br i1 %t57, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb19
bb18:
  store i1 true, ptr %l3, !tbaa !21
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
  call void @__olang_check_failed(ptr @olang_loc_6ff368c26ca3ad9b_74caa00555ca222f)
  unreachable
bb24:
  store i64 0, ptr %l7, !tbaa !24
  %t58 = load ptr, ptr %l1, !tbaa !29
  %t60 = getelementptr %"compiler/typed:Call", ptr %t58, i32 0, i32 1
  %t61 = load { i64, ptr }, ptr %t60, !tbaa !27
  %t63 = extractvalue { i64, ptr } %t61, 0
  store i64 %t63, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t65 = load i64, ptr %l8, !tbaa !24
  %t66 = load i64, ptr %l7, !tbaa !24
  %t69 = icmp sgt i64 %t65, %t66
  br i1 %t69, label %bb25, label %bb26
bb25:
  %t71 = load i64, ptr %l9, !tbaa !24
  %t73 = icmp sgt i64 %t71, 0
  br i1 %t73, label %bb27, label %bb28
bb26:
  store i64 0, ptr %l47, !tbaa !24
  br label %bb30
bb27:
  %t75 = load i64, ptr %l8, !tbaa !24
  %t76 = load i64, ptr %l7, !tbaa !24
  %t79 = sub i64 %t75, %t76
  %t80 = load i64, ptr %l9, !tbaa !24
  %t83 = add i64 %t79, %t80
  %t85 = sub i64 %t83, 1
  %t86 = load i64, ptr %l9, !tbaa !24
  %t89 = sdiv i64 %t85, %t86
  store i64 %t89, ptr %l50, !tbaa !24
  br label %bb29
bb28:
  store i64 0, ptr %l50, !tbaa !24
  br label %bb29
bb29:
  %t91 = load i64, ptr %l50, !tbaa !24
  store i64 %t91, ptr %l47, !tbaa !24
  br label %bb30
bb30:
  %t92 = load i64, ptr %l47, !tbaa !24
  store i64 %t92, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb31
bb31:
  %t93 = load i64, ptr %l11, !tbaa !24
  %t94 = load i64, ptr %l10, !tbaa !24
  %t97 = icmp slt i64 %t93, %t94
  %t99 = xor i1 %t97, true
  br i1 %t99, label %bb32, label %bb33
bb32:
  br label %bb89
bb33:
  br label %bb34
bb34:
  %t101 = load i64, ptr %l7, !tbaa !24
  %t102 = load i64, ptr %l11, !tbaa !24
  %t103 = load i64, ptr %l9, !tbaa !24
  %t106 = mul i64 %t102, %t103
  %t109 = add i64 %t101, %t106
  store i64 %t109, ptr %l12, !tbaa !24
  %t111 = load ptr, ptr %l1, !tbaa !29
  %t113 = getelementptr %"compiler/typed:Call", ptr %t111, i32 0, i32 1
  %t114 = load { i64, ptr }, ptr %t113, !tbaa !27
  store { i64, ptr } %t114, ptr %l69, !tbaa !27
  %t115 = load i64, ptr %l12, !tbaa !24
  %t117 = getelementptr { i64, ptr }, ptr %l69, i32 0, i32 1
  %t118 = load ptr, ptr %t117, !tbaa !27
  %t119 = getelementptr ptr, ptr %t118, i64 %t115
  %t120 = load ptr, ptr %t119, !tbaa !39
  store ptr %t120, ptr %l13, !tbaa !29
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t123 = load ptr, ptr %l13, !tbaa !29
  %t126 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2elendOf(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t122, ptr %t123)
  store i64 %t126, ptr %l74
  br label %bb35
bb35:
  %t127 = load i64, ptr %l74, !tbaa !24
  store i64 %t127, ptr %l14, !tbaa !24
  %t128 = load i64, ptr %l14, !tbaa !24
  %t130 = icmp sge i64 %t128, 0
  br i1 %t130, label %bb36, label %bb37
bb36:
  %t132 = load i64, ptr %l2, !tbaa !24
  %t134 = icmp sge i64 %t132, 0
  store i1 %t134, ptr %l77, !tbaa !21
  br label %bb38
bb37:
  store i1 false, ptr %l77, !tbaa !21
  br label %bb38
bb38:
  %t136 = load i1, ptr %l77, !tbaa !21
  br i1 %t136, label %bb39, label %bb40
bb39:
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t139 = getelementptr %"compiler/typed:LocalUses", ptr %t137, i32 0, i32 23
  %t140 = load i64, ptr %t139, !tbaa !24
  %t142 = icmp eq i64 %t140, 0
  store i1 %t142, ptr %l80, !tbaa !21
  br label %bb41
bb40:
  store i1 false, ptr %l80, !tbaa !21
  br label %bb41
bb41:
  %t144 = load i1, ptr %l80, !tbaa !21
  br i1 %t144, label %bb42, label %bb43
bb42:
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t147 = getelementptr %"compiler/typed:LocalUses", ptr %t145, i32 0, i32 12
  %t148 = load i64, ptr %l14, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t147, i64 %t148)
  br label %bb44
bb43:
  br label %bb47
bb44:
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t153 = getelementptr %"compiler/typed:LocalUses", ptr %t151, i32 0, i32 13
  %t154 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t153, i64 %t154)
  br label %bb45
bb45:
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t159 = getelementptr %"compiler/typed:LocalUses", ptr %t157, i32 0, i32 14
  %t160 = load i64, ptr %l12, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t159, i64 %t160)
  br label %bb46
bb46:
  br label %bb88
bb47:
  %t163 = load i64, ptr %l14, !tbaa !24
  %t165 = icmp sge i64 %t163, 0
  br i1 %t165, label %bb48, label %bb49
bb48:
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t169 = getelementptr %"compiler/typed:LocalUses", ptr %t167, i32 0, i32 2
  %t170 = load i64, ptr %l14, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t169, i64 %t170, i1 true)
  br label %bb50
bb49:
  br label %bb51
bb50:
  br label %bb51
bb51:
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t174 = load ptr, ptr %l13, !tbaa !29
  %t177 = call ptr @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2etempLent(ptr %v0, ptr %v1, ptr %v1, ptr %v2, ptr %t173, ptr %t174)
  store ptr %t177, ptr %l100
  br label %bb52
bb52:
  %t178 = load ptr, ptr %l100, !tbaa !29
  store ptr %t178, ptr %l15, !tbaa !29
  %t179 = load ptr, ptr %l15, !tbaa !29
  %t181 = icmp eq ptr %t179, null
  %t183 = xor i1 %t181, true
  br i1 %t183, label %bb53, label %bb54
bb53:
  %t185 = load i64, ptr %l2, !tbaa !24
  %t187 = icmp sge i64 %t185, 0
  store i1 %t187, ptr %l104, !tbaa !21
  br label %bb55
bb54:
  store i1 false, ptr %l104, !tbaa !21
  br label %bb55
bb55:
  %t189 = load i1, ptr %l104, !tbaa !21
  br i1 %t189, label %bb56, label %bb57
bb56:
  %t190 = load ptr, ptr %l0, !tbaa !29
  %t192 = getelementptr %"compiler/typed:LocalUses", ptr %t190, i32 0, i32 23
  %t193 = load i64, ptr %t192, !tbaa !24
  %t195 = icmp eq i64 %t193, 0
  store i1 %t195, ptr %l107, !tbaa !21
  br label %bb58
bb57:
  store i1 false, ptr %l107, !tbaa !21
  br label %bb58
bb58:
  %t197 = load i1, ptr %l107, !tbaa !21
  br i1 %t197, label %bb59, label %bb60
bb59:
  %t198 = load ptr, ptr %l0, !tbaa !29
  %t200 = getelementptr %"compiler/typed:LocalUses", ptr %t198, i32 0, i32 19
  %t201 = load ptr, ptr %l15, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %t200, ptr %t201)
  br label %bb61
bb60:
  br label %bb65
bb61:
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t206 = getelementptr %"compiler/typed:LocalUses", ptr %t204, i32 0, i32 20
  %t207 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t206, i64 %t207)
  br label %bb62
bb62:
  %t210 = load ptr, ptr %l0, !tbaa !29
  %t212 = getelementptr %"compiler/typed:LocalUses", ptr %t210, i32 0, i32 21
  %t213 = load i64, ptr %l12, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t212, i64 %t213)
  br label %bb63
bb63:
  %t216 = load ptr, ptr %l0, !tbaa !29
  %t218 = getelementptr %"compiler/typed:LocalUses", ptr %t216, i32 0, i32 22
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t221 = getelementptr %"compiler/typed:LocalUses", ptr %t219, i32 0, i32 24
  %t222 = load i32, ptr %t221, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ePush_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t218, i32 %t222)
  br label %bb64
bb64:
  br label %bb65
bb65:
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t227 = getelementptr %"compiler/typed:LocalUses", ptr %t225, i32 0, i32 0
  %t228 = load ptr, ptr %t227, !tbaa !29
  store ptr %t228, ptr %l125, !tbaa !29
  %t229 = load ptr, ptr %l13, !tbaa !29
  %t231 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t229)
  store i32 %t231, ptr %l127
  br label %bb66
bb66:
  %t232 = load ptr, ptr %l125, !tbaa !29
  %t233 = call ptr @__olang_scope_or(ptr %v2, ptr %t232)
  %t234 = ptrtoint ptr %t233 to i64
  %t236 = inttoptr i64 %t234 to ptr
  %t237 = load ptr, ptr %l125, !tbaa !29
  %t238 = load i32, ptr %l127, !tbaa !23
  %t239 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %t236, ptr %t237, i32 %t238)
  store i1 %t239, ptr %l129
  br label %bb67
bb67:
  %t240 = load i1, ptr %l129, !tbaa !21
  br i1 %t240, label %bb68, label %bb69
bb68:
  %t241 = load i1, ptr %l3, !tbaa !21
  %t243 = xor i1 %t241, true
  store i1 %t243, ptr %l130, !tbaa !21
  br label %bb70
bb69:
  store i1 false, ptr %l130, !tbaa !21
  br label %bb70
bb70:
  %t245 = load i1, ptr %l130, !tbaa !21
  store i1 %t245, ptr %l16, !tbaa !21
  %t246 = load i1, ptr %l16, !tbaa !21
  br i1 %t246, label %bb71, label %bb72
bb71:
  %t248 = load i64, ptr %l2, !tbaa !24
  %t250 = icmp sge i64 %t248, 0
  store i1 %t250, ptr %l134, !tbaa !21
  br label %bb73
bb72:
  store i1 false, ptr %l134, !tbaa !21
  br label %bb73
bb73:
  %t252 = load i1, ptr %l134, !tbaa !21
  br i1 %t252, label %bb74, label %bb75
bb74:
  %t253 = load ptr, ptr %l0, !tbaa !29
  %t255 = getelementptr %"compiler/typed:LocalUses", ptr %t253, i32 0, i32 23
  %t256 = load i64, ptr %t255, !tbaa !24
  %t258 = icmp eq i64 %t256, 0
  store i1 %t258, ptr %l137, !tbaa !21
  br label %bb76
bb75:
  store i1 false, ptr %l137, !tbaa !21
  br label %bb76
bb76:
  %t260 = load i1, ptr %l137, !tbaa !21
  br i1 %t260, label %bb77, label %bb78
bb77:
  %t261 = load ptr, ptr %l0, !tbaa !29
  %t262 = load ptr, ptr %l13, !tbaa !29
  %t263 = load i64, ptr %l2, !tbaa !24
  %t264 = load i64, ptr %l12, !tbaa !24
  %t269 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2erefArg(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t261, ptr %t262, i64 %t263, i64 %t264)
  store i1 %t269, ptr %l146
  br label %bb79
bb78:
  store i1 false, ptr %l141, !tbaa !21
  br label %bb80
bb79:
  %t270 = load i1, ptr %l146, !tbaa !21
  store i1 %t270, ptr %l141, !tbaa !21
  br label %bb80
bb80:
  %t271 = load i1, ptr %l141, !tbaa !21
  br i1 %t271, label %bb81, label %bb82
bb81:
  br label %bb88
bb82:
  br label %bb83
bb83:
  %t272 = load ptr, ptr %l0, !tbaa !29
  store ptr %t272, ptr %l147, !tbaa !29
  %t273 = load ptr, ptr %l13, !tbaa !29
  store ptr %t273, ptr %l149, !tbaa !29
  %t275 = load i1, ptr %l16, !tbaa !21
  br i1 %t275, label %bb84, label %bb85
bb84:
  store { i64, [1 x i64] } zeroinitializer, ptr %t277
  %t278 = getelementptr { i64, [1 x i64] }, ptr %t277, i32 0, i32 0
  store i64 5, ptr %t278
  %t279 = load { i64, [1 x i64] }, ptr %t277
  store { i64, [1 x i64] } %t279, ptr %l151
  br label %bb86
bb85:
  store { i64, [1 x i64] } zeroinitializer, ptr %t281
  %t282 = getelementptr { i64, [1 x i64] }, ptr %t281, i32 0, i32 0
  store i64 1, ptr %t282
  %t283 = load { i64, [1 x i64] }, ptr %t281
  store { i64, [1 x i64] } %t283, ptr %l151
  br label %bb86
bb86:
  %t285 = load ptr, ptr %l147, !tbaa !29
  %t286 = load ptr, ptr %l149, !tbaa !29
  %t287 = load { i64, [1 x i64] }, ptr %l151
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t285, ptr %t286, { i64, [1 x i64] } %t287)
  br label %bb87
bb87:
  br label %bb88
bb88:
  %t288 = load i64, ptr %l11, !tbaa !24
  %t290 = add i64 %t288, 1
  store i64 %t290, ptr %l11, !tbaa !24
  br label %bb31
bb89:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eescape(ptr %v0, ptr %a0, i64 %a1) #0 {
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
  %t3 = getelementptr %"compiler/typed:LocalUses", ptr %t1, i32 0, i32 5
  %t4 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t3, i64 %t4, i1 true)
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/typed:LocalUses", ptr %t7, i32 0, i32 6
  %t10 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t9, i64 %t10, i1 true)
  br label %bb2
bb2:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, [1 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, [1 x i64] }
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l15 = alloca ptr
  %l16 = alloca i32
  %l17 = alloca { i64, ptr }
  %l18 = alloca ptr
  %l19 = alloca ptr
  %l20 = alloca ptr
  %l21 = alloca ptr
  %l22 = alloca { i64, ptr }
  %l23 = alloca i64
  %l24 = alloca i64
  %l26 = alloca ptr
  %l27 = alloca ptr
  %l28 = alloca ptr
  %l29 = alloca ptr
  %l32 = alloca ptr
  %l33 = alloca i1
  %l36 = alloca ptr
  %l37 = alloca i1
  %l40 = alloca ptr
  %l41 = alloca i1
  %l49 = alloca ptr
  %l52 = alloca i1
  %l54 = alloca ptr
  %l55 = alloca ptr
  %l56 = alloca { i64, [1 x i64] }
  %l58 = alloca ptr
  %l61 = alloca i1
  %l62 = alloca ptr
  %l63 = alloca i1
  %l74 = alloca ptr
  %l75 = alloca i1
  %l82 = alloca ptr
  %l83 = alloca i1
  %l93 = alloca ptr
  %l94 = alloca i1
  %l101 = alloca ptr
  %l102 = alloca i1
  %l115 = alloca { i64, ptr }
  %l118 = alloca ptr
  %l120 = alloca ptr
  %l124 = alloca { i64, [1 x i64] }
  %l133 = alloca ptr
  %l134 = alloca i1
  %l147 = alloca ptr
  %l148 = alloca i1
  %l159 = alloca ptr
  %l160 = alloca i1
  %l179 = alloca ptr
  %l180 = alloca i1
  %l199 = alloca ptr
  %l200 = alloca i1
  %l212 = alloca ptr
  %l213 = alloca i1
  %l229 = alloca { i64, ptr }
  %l241 = alloca ptr
  %l248 = alloca ptr
  %l249 = alloca i1
  %l262 = alloca ptr
  %l263 = alloca i1
  %l270 = alloca ptr
  %l271 = alloca i1
  %l279 = alloca ptr
  %l280 = alloca i1
  %t225 = alloca { i64, [1 x i64] }, align 8
  %t241 = alloca { i64, [1 x i64] }, align 8
  %t267 = alloca { i64, [1 x i64] }, align 8
  %t340 = alloca { i64, [1 x i64] }, align 8
  %t352 = alloca { i64, [1 x i64] }, align 8
  %t379 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, [1 x i64] } %a2, ptr %l2
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
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 18}
  %t12 = icmp eq i64 %t10, 0
  store i1 %t12, ptr %l33, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l33, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  br label %bb12
bb7:
  %t14 = load ptr, ptr %l1, !tbaa !29
  store ptr %t14, ptr %l36, !tbaa !29
  store i1 false, ptr %l37, !tbaa !21
  %t15 = load ptr, ptr %l36, !tbaa !29
  %t16 = icmp ne ptr %t15, null
  br i1 %t16, label %bb8, label %bb9
bb8:
  %t18 = load ptr, ptr %l36, !tbaa !29
  %t19 = load i64, ptr %t18, !range !{i64 0, i64 18}
  %t21 = icmp eq i64 %t19, 1
  store i1 %t21, ptr %l37, !tbaa !21
  br label %bb9
bb9:
  %t22 = load i1, ptr %l37, !tbaa !21
  br i1 %t22, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb162
bb13:
  %t23 = load ptr, ptr %l1, !tbaa !29
  store ptr %t23, ptr %l40, !tbaa !29
  store i1 false, ptr %l41, !tbaa !21
  %t24 = load ptr, ptr %l40, !tbaa !29
  %t25 = icmp ne ptr %t24, null
  br i1 %t25, label %bb14, label %bb15
bb14:
  %t27 = load ptr, ptr %l40, !tbaa !29
  %t28 = load i64, ptr %t27, !range !{i64 0, i64 18}
  %t30 = icmp eq i64 %t28, 2
  store i1 %t30, ptr %l41, !tbaa !21
  br label %bb15
bb15:
  %t31 = load i1, ptr %l41, !tbaa !21
  br i1 %t31, label %bb16, label %bb17
bb16:
  %t32 = load ptr, ptr %l1, !tbaa !29
  %t34 = getelementptr { i64, [5 x i64] }, ptr %t32, i32 0, i32 1
  %t35 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t34, i32 0, i32 1
  %t36 = load i32, ptr %t35
  store i32 %t36, ptr %l3, !tbaa !23
  %t38 = load ptr, ptr %l1, !tbaa !29
  %t40 = getelementptr { i64, [5 x i64] }, ptr %t38, i32 0, i32 1
  %t41 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t40, i32 0, i32 2
  %t42 = load ptr, ptr %t41
  store ptr %t42, ptr %l4, !tbaa !29
  br label %bb18
bb17:
  br label %bb25
bb18:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/typed:LocalUses", ptr %t44, i32 0, i32 0
  %t47 = load ptr, ptr %t46, !tbaa !29
  store ptr %t47, ptr %l49, !tbaa !29
  %t48 = load i32, ptr %l3, !tbaa !23
  %t49 = load ptr, ptr %l49, !tbaa !29
  %t50 = call ptr @__olang_scope_or(ptr %v2, ptr %t49)
  %t51 = ptrtoint ptr %t50 to i64
  %t53 = inttoptr i64 %t51 to ptr
  %t54 = load ptr, ptr %l49, !tbaa !29
  %t56 = call i1 @compiler_2ftyped_2escalarType(ptr %t53, ptr %t54, i32 %t48)
  store i1 %t56, ptr %l52
  br label %bb19
bb19:
  %t57 = load i1, ptr %l52, !tbaa !21
  %t58 = xor i1 %t57, true
  br i1 %t58, label %bb20, label %bb21
bb20:
  %t60 = load ptr, ptr %l0, !tbaa !29
  store ptr %t60, ptr %l54, !tbaa !29
  %t61 = load ptr, ptr %l4, !tbaa !29
  store ptr %t61, ptr %l55, !tbaa !29
  %t62 = load { i64, [1 x i64] }, ptr %l2
  store { i64, [1 x i64] } %t62, ptr %l56
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/typed:LocalUses", ptr %t63, i32 0, i32 0
  %t66 = load ptr, ptr %t65, !tbaa !29
  store ptr %t66, ptr %l58, !tbaa !29
  %t67 = load i32, ptr %l3, !tbaa !23
  %t68 = load ptr, ptr %l58, !tbaa !29
  %t69 = call ptr @__olang_scope_or(ptr %v2, ptr %t68)
  %t70 = ptrtoint ptr %t69 to i64
  %t72 = inttoptr i64 %t70 to ptr
  %t73 = load ptr, ptr %l58, !tbaa !29
  %t75 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %t72, ptr %t73, i32 %t67)
  store i1 %t75, ptr %l61
  br label %bb22
bb21:
  br label %bb24
bb22:
  %t76 = load ptr, ptr %l54, !tbaa !29
  %t77 = load ptr, ptr %l55, !tbaa !29
  %t78 = load { i64, [1 x i64] }, ptr %l56
  %t79 = load i1, ptr %l61, !tbaa !21
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2euse(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t76, ptr %t77, { i64, [1 x i64] } %t78, i1 %t79)
  br label %bb23
bb23:
  br label %bb24
bb24:
  br label %bb162
bb25:
  %t80 = load ptr, ptr %l1, !tbaa !29
  store ptr %t80, ptr %l62, !tbaa !29
  store i1 false, ptr %l63, !tbaa !21
  %t81 = load ptr, ptr %l62, !tbaa !29
  %t82 = icmp ne ptr %t81, null
  br i1 %t82, label %bb26, label %bb27
bb26:
  %t84 = load ptr, ptr %l62, !tbaa !29
  %t85 = load i64, ptr %t84, !range !{i64 0, i64 18}
  %t87 = icmp eq i64 %t85, 3
  store i1 %t87, ptr %l63, !tbaa !21
  br label %bb27
bb27:
  %t88 = load i1, ptr %l63, !tbaa !21
  br i1 %t88, label %bb28, label %bb29
bb28:
  %t89 = load ptr, ptr %l1, !tbaa !29
  %t91 = getelementptr { i64, [5 x i64] }, ptr %t89, i32 0, i32 1
  %t92 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t91, i32 0, i32 1
  %t93 = load i32, ptr %t92
  store i32 %t93, ptr %l5, !tbaa !23
  %t95 = load ptr, ptr %l1, !tbaa !29
  %t97 = getelementptr { i64, [5 x i64] }, ptr %t95, i32 0, i32 1
  %t98 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t97, i32 0, i32 2
  %t99 = load ptr, ptr %t98
  store ptr %t99, ptr %l6, !tbaa !29
  br label %bb30
bb29:
  br label %bb32
bb30:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load ptr, ptr %l6, !tbaa !29
  %t103 = load i32, ptr %l5, !tbaa !23
  %t104 = load { i64, [1 x i64] }, ptr %l2
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eborrow(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t101, ptr %t102, i32 %t103, { i64, [1 x i64] } %t104)
  br label %bb31
bb31:
  br label %bb162
bb32:
  %t109 = load ptr, ptr %l1, !tbaa !29
  store ptr %t109, ptr %l74, !tbaa !29
  store i1 false, ptr %l75, !tbaa !21
  %t110 = load ptr, ptr %l74, !tbaa !29
  %t111 = icmp ne ptr %t110, null
  br i1 %t111, label %bb33, label %bb34
bb33:
  %t113 = load ptr, ptr %l74, !tbaa !29
  %t114 = load i64, ptr %t113, !range !{i64 0, i64 18}
  %t116 = icmp eq i64 %t114, 4
  store i1 %t116, ptr %l75, !tbaa !21
  br label %bb34
bb34:
  %t117 = load i1, ptr %l75, !tbaa !21
  br i1 %t117, label %bb35, label %bb36
bb35:
  %t118 = load ptr, ptr %l1, !tbaa !29
  %t120 = getelementptr { i64, [5 x i64] }, ptr %t118, i32 0, i32 1
  %t121 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t120, i32 0, i32 2
  %t122 = load ptr, ptr %t121
  store ptr %t122, ptr %l7, !tbaa !29
  br label %bb37
bb36:
  br label %bb39
bb37:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t125 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2ewrite(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t124, ptr %t125, i1 false)
  br label %bb38
bb38:
  br label %bb162
bb39:
  %t128 = load ptr, ptr %l1, !tbaa !29
  store ptr %t128, ptr %l82, !tbaa !29
  store i1 false, ptr %l83, !tbaa !21
  %t129 = load ptr, ptr %l82, !tbaa !29
  %t130 = icmp ne ptr %t129, null
  br i1 %t130, label %bb40, label %bb41
bb40:
  %t132 = load ptr, ptr %l82, !tbaa !29
  %t133 = load i64, ptr %t132, !range !{i64 0, i64 18}
  %t135 = icmp eq i64 %t133, 5
  store i1 %t135, ptr %l83, !tbaa !21
  br label %bb41
bb41:
  %t136 = load i1, ptr %l83, !tbaa !21
  br i1 %t136, label %bb42, label %bb43
bb42:
  %t137 = load ptr, ptr %l1, !tbaa !29
  %t139 = getelementptr { i64, [5 x i64] }, ptr %t137, i32 0, i32 1
  %t140 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t139, i32 0, i32 2
  %t141 = load ptr, ptr %t140
  store ptr %t141, ptr %l8, !tbaa !29
  br label %bb44
bb43:
  br label %bb46
bb44:
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t144 = load ptr, ptr %l8, !tbaa !29
  %t146 = getelementptr %"compiler/typed:Promote", ptr %t144, i32 0, i32 0
  %t147 = load ptr, ptr %t146, !tbaa !29
  %t149 = load { i64, [1 x i64] }, ptr %l2
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t143, ptr %t147, { i64, [1 x i64] } %t149)
  br label %bb45
bb45:
  br label %bb162
bb46:
  %t153 = load ptr, ptr %l1, !tbaa !29
  store ptr %t153, ptr %l93, !tbaa !29
  store i1 false, ptr %l94, !tbaa !21
  %t154 = load ptr, ptr %l93, !tbaa !29
  %t155 = icmp ne ptr %t154, null
  br i1 %t155, label %bb47, label %bb48
bb47:
  %t157 = load ptr, ptr %l93, !tbaa !29
  %t158 = load i64, ptr %t157, !range !{i64 0, i64 18}
  %t160 = icmp eq i64 %t158, 6
  store i1 %t160, ptr %l94, !tbaa !21
  br label %bb48
bb48:
  %t161 = load i1, ptr %l94, !tbaa !21
  br i1 %t161, label %bb49, label %bb50
bb49:
  %t162 = load ptr, ptr %l1, !tbaa !29
  %t164 = getelementptr { i64, [5 x i64] }, ptr %t162, i32 0, i32 1
  %t165 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t164, i32 0, i32 2
  %t166 = load ptr, ptr %t165
  store ptr %t166, ptr %l9, !tbaa !29
  br label %bb51
bb50:
  br label %bb53
bb51:
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t169 = load ptr, ptr %l9, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2ecall(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t168, ptr %t169)
  br label %bb52
bb52:
  br label %bb162
bb53:
  %t172 = load ptr, ptr %l1, !tbaa !29
  store ptr %t172, ptr %l101, !tbaa !29
  store i1 false, ptr %l102, !tbaa !21
  %t173 = load ptr, ptr %l101, !tbaa !29
  %t174 = icmp ne ptr %t173, null
  br i1 %t174, label %bb54, label %bb55
bb54:
  %t176 = load ptr, ptr %l101, !tbaa !29
  %t177 = load i64, ptr %t176, !range !{i64 0, i64 18}
  %t179 = icmp eq i64 %t177, 7
  store i1 %t179, ptr %l102, !tbaa !21
  br label %bb55
bb55:
  %t180 = load i1, ptr %l102, !tbaa !21
  br i1 %t180, label %bb56, label %bb57
bb56:
  %t181 = load ptr, ptr %l1, !tbaa !29
  %t183 = getelementptr { i64, [5 x i64] }, ptr %t181, i32 0, i32 1
  %t184 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t183, i32 0, i32 2
  %t185 = load ptr, ptr %t184
  store ptr %t185, ptr %l10, !tbaa !29
  br label %bb58
bb57:
  br label %bb70
bb58:
  %t187 = load ptr, ptr %l10, !tbaa !29
  %t189 = getelementptr %"compiler/typed:Make", ptr %t187, i32 0, i32 2
  %t190 = load { i64, ptr }, ptr %t189, !tbaa !27
  store { i64, ptr } %t190, ptr %l11, !tbaa !27
  store i64 0, ptr %l12, !tbaa !24
  %t192 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t194 = extractvalue { i64, ptr } %t192, 0
  store i64 %t194, ptr %l13, !tbaa !24
  br label %bb59
bb59:
  %t196 = load i64, ptr %l12, !tbaa !24
  %t197 = load i64, ptr %l13, !tbaa !24
  %t200 = icmp slt i64 %t196, %t197
  %t202 = xor i1 %t200, true
  br i1 %t202, label %bb60, label %bb61
bb60:
  br label %bb68
bb61:
  br label %bb62
bb62:
  %t204 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t204, ptr %l115, !tbaa !27
  %t205 = load i64, ptr %l12, !tbaa !24
  %t207 = getelementptr { i64, ptr }, ptr %l115, i32 0, i32 1
  %t208 = load ptr, ptr %t207, !tbaa !27
  %t209 = getelementptr ptr, ptr %t208, i64 %t205
  %t210 = load ptr, ptr %t209, !tbaa !39
  %t212 = load ptr, ptr %l0, !tbaa !29
  store ptr %t212, ptr %l118, !tbaa !29
  store ptr %t210, ptr %l120, !tbaa !29
  %t215 = load ptr, ptr %l10, !tbaa !29
  %t217 = getelementptr %"compiler/typed:Make", ptr %t215, i32 0, i32 0
  %t218 = load i32, ptr %t217, !range !{i32 0, i32 5}
  %t220 = trunc i64 0 to i32
  %t221 = icmp eq i32 %t218, %t220
  br i1 %t221, label %bb63, label %bb64
bb63:
  %t223 = load { i64, [1 x i64] }, ptr %l2
  store { i64, [1 x i64] } %t223, ptr %l124
  br label %bb65
bb64:
  store { i64, [1 x i64] } zeroinitializer, ptr %t225
  %t226 = getelementptr { i64, [1 x i64] }, ptr %t225, i32 0, i32 0
  store i64 2, ptr %t226
  %t227 = load { i64, [1 x i64] }, ptr %t225
  store { i64, [1 x i64] } %t227, ptr %l124
  br label %bb65
bb65:
  %t229 = load ptr, ptr %l118, !tbaa !29
  %t230 = load ptr, ptr %l120, !tbaa !29
  %t231 = load { i64, [1 x i64] }, ptr %l124
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t229, ptr %t230, { i64, [1 x i64] } %t231)
  br label %bb66
bb66:
  br label %bb67
bb67:
  %t232 = load i64, ptr %l12, !tbaa !24
  %t234 = add i64 %t232, 1
  store i64 %t234, ptr %l12, !tbaa !24
  br label %bb59
bb68:
  %t236 = load ptr, ptr %l0, !tbaa !29
  %t237 = load ptr, ptr %l10, !tbaa !29
  %t239 = getelementptr %"compiler/typed:Make", ptr %t237, i32 0, i32 3
  %t240 = load ptr, ptr %t239, !tbaa !29
  store { i64, [1 x i64] } zeroinitializer, ptr %t241
  %t242 = getelementptr { i64, [1 x i64] }, ptr %t241, i32 0, i32 0
  store i64 0, ptr %t242
  %t243 = load { i64, [1 x i64] }, ptr %t241
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t236, ptr %t240, { i64, [1 x i64] } %t243)
  br label %bb69
bb69:
  br label %bb162
bb70:
  %t247 = load ptr, ptr %l1, !tbaa !29
  store ptr %t247, ptr %l133, !tbaa !29
  store i1 false, ptr %l134, !tbaa !21
  %t248 = load ptr, ptr %l133, !tbaa !29
  %t249 = icmp ne ptr %t248, null
  br i1 %t249, label %bb71, label %bb72
bb71:
  %t251 = load ptr, ptr %l133, !tbaa !29
  %t252 = load i64, ptr %t251, !range !{i64 0, i64 18}
  %t254 = icmp eq i64 %t252, 8
  store i1 %t254, ptr %l134, !tbaa !21
  br label %bb72
bb72:
  %t255 = load i1, ptr %l134, !tbaa !21
  br i1 %t255, label %bb73, label %bb74
bb73:
  %t256 = load ptr, ptr %l1, !tbaa !29
  %t258 = getelementptr { i64, [5 x i64] }, ptr %t256, i32 0, i32 1
  %t259 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t258, i32 0, i32 2
  %t260 = load ptr, ptr %t259
  store ptr %t260, ptr %l15, !tbaa !29
  br label %bb75
bb74:
  br label %bb78
bb75:
  %t262 = load ptr, ptr %l0, !tbaa !29
  %t263 = load ptr, ptr %l15, !tbaa !29
  %t265 = getelementptr %"compiler/typed:Collect", ptr %t263, i32 0, i32 0
  %t266 = load ptr, ptr %t265, !tbaa !29
  store { i64, [1 x i64] } zeroinitializer, ptr %t267
  %t268 = getelementptr { i64, [1 x i64] }, ptr %t267, i32 0, i32 0
  store i64 0, ptr %t268
  %t269 = load { i64, [1 x i64] }, ptr %t267
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t262, ptr %t266, { i64, [1 x i64] } %t269)
  br label %bb76
bb76:
  %t273 = load ptr, ptr %l0, !tbaa !29
  %t274 = load ptr, ptr %l15, !tbaa !29
  %t276 = getelementptr %"compiler/typed:Collect", ptr %t274, i32 0, i32 1
  %t277 = load ptr, ptr %t276, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eblock(ptr %v0, ptr %v1, ptr %v3, ptr %v2, ptr %t273, ptr %t277)
  br label %bb77
bb77:
  br label %bb162
bb78:
  %t281 = load ptr, ptr %l1, !tbaa !29
  store ptr %t281, ptr %l147, !tbaa !29
  store i1 false, ptr %l148, !tbaa !21
  %t282 = load ptr, ptr %l147, !tbaa !29
  %t283 = icmp ne ptr %t282, null
  br i1 %t283, label %bb79, label %bb80
bb79:
  %t285 = load ptr, ptr %l147, !tbaa !29
  %t286 = load i64, ptr %t285, !range !{i64 0, i64 18}
  %t288 = icmp eq i64 %t286, 9
  store i1 %t288, ptr %l148, !tbaa !21
  br label %bb80
bb80:
  %t289 = load i1, ptr %l148, !tbaa !21
  br i1 %t289, label %bb81, label %bb82
bb81:
  %t290 = load ptr, ptr %l1, !tbaa !29
  %t292 = getelementptr { i64, [5 x i64] }, ptr %t290, i32 0, i32 1
  %t293 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t292, i32 0, i32 2
  %t294 = load i32, ptr %t293, !range !{i32 0, i32 52}
  store i32 %t294, ptr %l16
  %t296 = load ptr, ptr %l1, !tbaa !29
  %t298 = getelementptr { i64, [5 x i64] }, ptr %t296, i32 0, i32 1
  %t299 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t298, i32 0, i32 4
  %t300 = load { i64, ptr }, ptr %t299
  store { i64, ptr } %t300, ptr %l17, !tbaa !27
  br label %bb83
bb82:
  br label %bb85
bb83:
  %t302 = load ptr, ptr %l0, !tbaa !29
  %t303 = load i32, ptr %l16, !range !{i32 0, i32 52}
  %t304 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t305 = load { i64, [1 x i64] }, ptr %l2
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eprim(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t302, i32 %t303, { i64, ptr } %t304, { i64, [1 x i64] } %t305)
  br label %bb84
bb84:
  br label %bb162
bb85:
  %t310 = load ptr, ptr %l1, !tbaa !29
  store ptr %t310, ptr %l159, !tbaa !29
  store i1 false, ptr %l160, !tbaa !21
  %t311 = load ptr, ptr %l159, !tbaa !29
  %t312 = icmp ne ptr %t311, null
  br i1 %t312, label %bb86, label %bb87
bb86:
  %t314 = load ptr, ptr %l159, !tbaa !29
  %t315 = load i64, ptr %t314, !range !{i64 0, i64 18}
  %t317 = icmp eq i64 %t315, 10
  store i1 %t317, ptr %l160, !tbaa !21
  br label %bb87
bb87:
  %t318 = load i1, ptr %l160, !tbaa !21
  br i1 %t318, label %bb88, label %bb89
bb88:
  %t319 = load ptr, ptr %l1, !tbaa !29
  %t321 = getelementptr { i64, [5 x i64] }, ptr %t319, i32 0, i32 1
  %t322 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t321, i32 0, i32 2
  %t323 = load ptr, ptr %t322
  store ptr %t323, ptr %l18, !tbaa !29
  br label %bb90
bb89:
  br label %bb94
bb90:
  %t325 = load ptr, ptr %l0, !tbaa !29
  %t326 = load ptr, ptr %l18, !tbaa !29
  %t328 = getelementptr %"compiler/typed:Slice", ptr %t326, i32 0, i32 0
  %t329 = load ptr, ptr %t328, !tbaa !29
  %t330 = load { i64, [1 x i64] }, ptr %l2
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2euse(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t325, ptr %t329, { i64, [1 x i64] } %t330, i1 false)
  br label %bb91
bb91:
  %t334 = load ptr, ptr %l0, !tbaa !29
  %t335 = load ptr, ptr %l18, !tbaa !29
  %t337 = getelementptr %"compiler/typed:Slice", ptr %t335, i32 0, i32 1
  %t338 = load ptr, ptr %t337, !tbaa !29
  store { i64, [1 x i64] } zeroinitializer, ptr %t340
  %t341 = getelementptr { i64, [1 x i64] }, ptr %t340, i32 0, i32 0
  store i64 0, ptr %t341
  %t342 = load { i64, [1 x i64] }, ptr %t340
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t334, ptr %t338, { i64, [1 x i64] } %t342)
  br label %bb92
bb92:
  %t346 = load ptr, ptr %l0, !tbaa !29
  %t347 = load ptr, ptr %l18, !tbaa !29
  %t349 = getelementptr %"compiler/typed:Slice", ptr %t347, i32 0, i32 2
  %t350 = load ptr, ptr %t349, !tbaa !29
  store { i64, [1 x i64] } zeroinitializer, ptr %t352
  %t353 = getelementptr { i64, [1 x i64] }, ptr %t352, i32 0, i32 0
  store i64 0, ptr %t353
  %t354 = load { i64, [1 x i64] }, ptr %t352
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t346, ptr %t350, { i64, [1 x i64] } %t354)
  br label %bb93
bb93:
  br label %bb162
bb94:
  %t358 = load ptr, ptr %l1, !tbaa !29
  store ptr %t358, ptr %l179, !tbaa !29
  store i1 false, ptr %l180, !tbaa !21
  %t359 = load ptr, ptr %l179, !tbaa !29
  %t360 = icmp ne ptr %t359, null
  br i1 %t360, label %bb95, label %bb96
bb95:
  %t362 = load ptr, ptr %l179, !tbaa !29
  %t363 = load i64, ptr %t362, !range !{i64 0, i64 18}
  %t365 = icmp eq i64 %t363, 11
  store i1 %t365, ptr %l180, !tbaa !21
  br label %bb96
bb96:
  %t366 = load i1, ptr %l180, !tbaa !21
  br i1 %t366, label %bb97, label %bb98
bb97:
  %t367 = load ptr, ptr %l1, !tbaa !29
  %t369 = getelementptr { i64, [5 x i64] }, ptr %t367, i32 0, i32 1
  %t370 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t369, i32 0, i32 2
  %t371 = load ptr, ptr %t370
  store ptr %t371, ptr %l19, !tbaa !29
  br label %bb99
bb98:
  br label %bb103
bb99:
  %t373 = load ptr, ptr %l0, !tbaa !29
  %t374 = load ptr, ptr %l19, !tbaa !29
  %t376 = getelementptr %"compiler/typed:Cond", ptr %t374, i32 0, i32 0
  %t377 = load ptr, ptr %t376, !tbaa !29
  store { i64, [1 x i64] } zeroinitializer, ptr %t379
  %t380 = getelementptr { i64, [1 x i64] }, ptr %t379, i32 0, i32 0
  store i64 0, ptr %t380
  %t381 = load { i64, [1 x i64] }, ptr %t379
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t373, ptr %t377, { i64, [1 x i64] } %t381)
  br label %bb100
bb100:
  %t385 = load ptr, ptr %l0, !tbaa !29
  %t386 = load ptr, ptr %l19, !tbaa !29
  %t388 = getelementptr %"compiler/typed:Cond", ptr %t386, i32 0, i32 1
  %t389 = load ptr, ptr %t388, !tbaa !29
  %t390 = load { i64, [1 x i64] }, ptr %l2
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t385, ptr %t389, { i64, [1 x i64] } %t390)
  br label %bb101
bb101:
  %t394 = load ptr, ptr %l0, !tbaa !29
  %t395 = load ptr, ptr %l19, !tbaa !29
  %t397 = getelementptr %"compiler/typed:Cond", ptr %t395, i32 0, i32 2
  %t398 = load ptr, ptr %t397, !tbaa !29
  %t400 = load { i64, [1 x i64] }, ptr %l2
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t394, ptr %t398, { i64, [1 x i64] } %t400)
  br label %bb102
bb102:
  br label %bb162
bb103:
  %t404 = load ptr, ptr %l1, !tbaa !29
  store ptr %t404, ptr %l199, !tbaa !29
  store i1 false, ptr %l200, !tbaa !21
  %t405 = load ptr, ptr %l199, !tbaa !29
  %t406 = icmp ne ptr %t405, null
  br i1 %t406, label %bb104, label %bb105
bb104:
  %t408 = load ptr, ptr %l199, !tbaa !29
  %t409 = load i64, ptr %t408, !range !{i64 0, i64 18}
  %t411 = icmp eq i64 %t409, 12
  store i1 %t411, ptr %l200, !tbaa !21
  br label %bb105
bb105:
  %t412 = load i1, ptr %l200, !tbaa !21
  br i1 %t412, label %bb106, label %bb107
bb106:
  %t413 = load ptr, ptr %l1, !tbaa !29
  %t415 = getelementptr { i64, [5 x i64] }, ptr %t413, i32 0, i32 1
  %t416 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t415, i32 0, i32 2
  %t417 = load ptr, ptr %t416
  store ptr %t417, ptr %l20, !tbaa !29
  br label %bb108
bb107:
  br label %bb111
bb108:
  %t419 = load ptr, ptr %l0, !tbaa !29
  %t420 = load ptr, ptr %l20, !tbaa !29
  %t422 = getelementptr %"compiler/typed:Seq", ptr %t420, i32 0, i32 0
  %t423 = load { i64, ptr }, ptr %t422, !tbaa !27
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2estmts(ptr %v0, ptr %v1, ptr %v3, ptr %v2, ptr %t419, { i64, ptr } %t423)
  br label %bb109
bb109:
  %t426 = load ptr, ptr %l0, !tbaa !29
  %t427 = load ptr, ptr %l20, !tbaa !29
  %t429 = getelementptr %"compiler/typed:Seq", ptr %t427, i32 0, i32 1
  %t430 = load ptr, ptr %t429, !tbaa !29
  %t431 = load { i64, [1 x i64] }, ptr %l2
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t426, ptr %t430, { i64, [1 x i64] } %t431)
  br label %bb110
bb110:
  br label %bb162
bb111:
  %t435 = load ptr, ptr %l1, !tbaa !29
  store ptr %t435, ptr %l212, !tbaa !29
  store i1 false, ptr %l213, !tbaa !21
  %t436 = load ptr, ptr %l212, !tbaa !29
  %t437 = icmp ne ptr %t436, null
  br i1 %t437, label %bb112, label %bb113
bb112:
  %t439 = load ptr, ptr %l212, !tbaa !29
  %t440 = load i64, ptr %t439, !range !{i64 0, i64 18}
  %t442 = icmp eq i64 %t440, 13
  store i1 %t442, ptr %l213, !tbaa !21
  br label %bb113
bb113:
  %t443 = load i1, ptr %l213, !tbaa !21
  br i1 %t443, label %bb114, label %bb115
bb114:
  %t444 = load ptr, ptr %l1, !tbaa !29
  %t446 = getelementptr { i64, [5 x i64] }, ptr %t444, i32 0, i32 1
  %t447 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t446, i32 0, i32 2
  %t448 = load ptr, ptr %t447
  store ptr %t448, ptr %l21, !tbaa !29
  br label %bb116
bb115:
  br label %bb132
bb116:
  %t450 = load ptr, ptr %l0, !tbaa !29
  %t451 = load ptr, ptr %l21, !tbaa !29
  %t453 = getelementptr %"compiler/typed:Match", ptr %t451, i32 0, i32 0
  %t454 = load { i64, ptr }, ptr %t453, !tbaa !27
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2estmts(ptr %v0, ptr %v1, ptr %v3, ptr %v2, ptr %t450, { i64, ptr } %t454)
  br label %bb117
bb117:
  %t457 = load ptr, ptr %l21, !tbaa !29
  %t459 = getelementptr %"compiler/typed:Match", ptr %t457, i32 0, i32 1
  %t460 = load { i64, ptr }, ptr %t459, !tbaa !27
  store { i64, ptr } %t460, ptr %l22, !tbaa !27
  store i64 0, ptr %l23, !tbaa !24
  %t462 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t464 = extractvalue { i64, ptr } %t462, 0
  store i64 %t464, ptr %l24, !tbaa !24
  br label %bb118
bb118:
  %t466 = load i64, ptr %l23, !tbaa !24
  %t467 = load i64, ptr %l24, !tbaa !24
  %t470 = icmp slt i64 %t466, %t467
  %t472 = xor i1 %t470, true
  br i1 %t472, label %bb119, label %bb120
bb119:
  br label %bb124
bb120:
  br label %bb121
bb121:
  %t474 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t474, ptr %l229, !tbaa !27
  %t475 = load i64, ptr %l23, !tbaa !24
  %t477 = getelementptr { i64, ptr }, ptr %l229, i32 0, i32 1
  %t478 = load ptr, ptr %t477, !tbaa !27
  %t479 = getelementptr ptr, ptr %t478, i64 %t475
  %t480 = load ptr, ptr %t479, !tbaa !39
  %t482 = load ptr, ptr %l0, !tbaa !29
  %t484 = load { i64, [1 x i64] }, ptr %l2
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2earm(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t482, ptr %t480, { i64, [1 x i64] } %t484)
  br label %bb122
bb122:
  br label %bb123
bb123:
  %t488 = load i64, ptr %l23, !tbaa !24
  %t490 = add i64 %t488, 1
  store i64 %t490, ptr %l23, !tbaa !24
  br label %bb118
bb124:
  %t492 = load ptr, ptr %l21, !tbaa !29
  %t494 = getelementptr %"compiler/typed:Match", ptr %t492, i32 0, i32 2
  %t495 = load ptr, ptr %t494, !tbaa !29
  %t497 = icmp eq ptr %t495, null
  %t499 = xor i1 %t497, true
  br i1 %t499, label %bb125, label %bb126
bb125:
  %t501 = load ptr, ptr %l0, !tbaa !29
  store ptr %t501, ptr %l241, !tbaa !29
  %t502 = load ptr, ptr %l21, !tbaa !29
  %t504 = getelementptr %"compiler/typed:Match", ptr %t502, i32 0, i32 2
  %t505 = load ptr, ptr %t504, !tbaa !29
  %t507 = icmp eq ptr %t505, null
  br i1 %t507, label %bb127, label %bb128
bb126:
  br label %bb131
bb127:
  call void @__olang_check_failed(ptr @olang_loc_378ad1b24c170823_353e69e2764e6faf)
  unreachable
bb128:
  br label %bb129
bb129:
  %t509 = load ptr, ptr %l21, !tbaa !29
  %t511 = getelementptr %"compiler/typed:Match", ptr %t509, i32 0, i32 2
  %t512 = load ptr, ptr %t511, !tbaa !29
  %t513 = load { i64, [1 x i64] }, ptr %l2
  %t514 = load ptr, ptr %l241, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2earm(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t514, ptr %t512, { i64, [1 x i64] } %t513)
  br label %bb130
bb130:
  br label %bb131
bb131:
  br label %bb162
bb132:
  %t517 = load ptr, ptr %l1, !tbaa !29
  store ptr %t517, ptr %l248, !tbaa !29
  store i1 false, ptr %l249, !tbaa !21
  %t518 = load ptr, ptr %l248, !tbaa !29
  %t519 = icmp ne ptr %t518, null
  br i1 %t519, label %bb133, label %bb134
bb133:
  %t521 = load ptr, ptr %l248, !tbaa !29
  %t522 = load i64, ptr %t521, !range !{i64 0, i64 18}
  %t524 = icmp eq i64 %t522, 14
  store i1 %t524, ptr %l249, !tbaa !21
  br label %bb134
bb134:
  %t525 = load i1, ptr %l249, !tbaa !21
  br i1 %t525, label %bb135, label %bb136
bb135:
  %t526 = load ptr, ptr %l1, !tbaa !29
  %t528 = getelementptr { i64, [5 x i64] }, ptr %t526, i32 0, i32 1
  %t529 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t528, i32 0, i32 2
  %t530 = load ptr, ptr %t529
  store ptr %t530, ptr %l26, !tbaa !29
  br label %bb137
bb136:
  br label %bb140
bb137:
  %t532 = load ptr, ptr %l0, !tbaa !29
  %t533 = load ptr, ptr %l26, !tbaa !29
  %t535 = getelementptr %"compiler/typed:Try", ptr %t533, i32 0, i32 0
  %t536 = load ptr, ptr %t535, !tbaa !29
  %t537 = load { i64, [1 x i64] }, ptr %l2
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t532, ptr %t536, { i64, [1 x i64] } %t537)
  br label %bb138
bb138:
  %t541 = load ptr, ptr %l0, !tbaa !29
  %t542 = load ptr, ptr %l26, !tbaa !29
  %t544 = getelementptr %"compiler/typed:Try", ptr %t542, i32 0, i32 1
  %t545 = load { i64, ptr }, ptr %t544, !tbaa !27
  %t546 = load { i64, [1 x i64] }, ptr %l2
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eclauses(ptr %v0, ptr %v1, ptr %v3, ptr %v2, ptr %t541, { i64, ptr } %t545, { i64, [1 x i64] } %t546)
  br label %bb139
bb139:
  br label %bb162
bb140:
  %t550 = load ptr, ptr %l1, !tbaa !29
  store ptr %t550, ptr %l262, !tbaa !29
  store i1 false, ptr %l263, !tbaa !21
  %t551 = load ptr, ptr %l262, !tbaa !29
  %t552 = icmp ne ptr %t551, null
  br i1 %t552, label %bb141, label %bb142
bb141:
  %t554 = load ptr, ptr %l262, !tbaa !29
  %t555 = load i64, ptr %t554, !range !{i64 0, i64 18}
  %t557 = icmp eq i64 %t555, 15
  store i1 %t557, ptr %l263, !tbaa !21
  br label %bb142
bb142:
  %t558 = load i1, ptr %l263, !tbaa !21
  br i1 %t558, label %bb143, label %bb144
bb143:
  %t559 = load ptr, ptr %l1, !tbaa !29
  %t561 = getelementptr { i64, [5 x i64] }, ptr %t559, i32 0, i32 1
  %t562 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t561, i32 0, i32 2
  %t563 = load ptr, ptr %t562
  store ptr %t563, ptr %l27, !tbaa !29
  br label %bb145
bb144:
  br label %bb147
bb145:
  %t565 = load ptr, ptr %l0, !tbaa !29
  %t566 = load ptr, ptr %l27, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2efnVal(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t565, ptr %t566)
  br label %bb146
bb146:
  br label %bb162
bb147:
  %t569 = load ptr, ptr %l1, !tbaa !29
  store ptr %t569, ptr %l270, !tbaa !29
  store i1 false, ptr %l271, !tbaa !21
  %t570 = load ptr, ptr %l270, !tbaa !29
  %t571 = icmp ne ptr %t570, null
  br i1 %t571, label %bb148, label %bb149
bb148:
  %t573 = load ptr, ptr %l270, !tbaa !29
  %t574 = load i64, ptr %t573, !range !{i64 0, i64 18}
  %t576 = icmp eq i64 %t574, 16
  store i1 %t576, ptr %l271, !tbaa !21
  br label %bb149
bb149:
  %t577 = load i1, ptr %l271, !tbaa !21
  br i1 %t577, label %bb150, label %bb151
bb150:
  %t578 = load ptr, ptr %l1, !tbaa !29
  %t580 = getelementptr { i64, [5 x i64] }, ptr %t578, i32 0, i32 1
  %t581 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t580, i32 0, i32 2
  %t582 = load ptr, ptr %t581
  store ptr %t582, ptr %l28, !tbaa !29
  br label %bb152
bb151:
  br label %bb154
bb152:
  %t584 = load ptr, ptr %l0, !tbaa !29
  %t585 = load ptr, ptr %l28, !tbaa !29
  %t587 = getelementptr %"compiler/typed:Text", ptr %t585, i32 0, i32 0
  %t588 = load { i64, ptr }, ptr %t587, !tbaa !27
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2epieces(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t584, { i64, ptr } %t588)
  br label %bb153
bb153:
  br label %bb162
bb154:
  %t591 = load ptr, ptr %l1, !tbaa !29
  store ptr %t591, ptr %l279, !tbaa !29
  store i1 false, ptr %l280, !tbaa !21
  %t592 = load ptr, ptr %l279, !tbaa !29
  %t593 = icmp ne ptr %t592, null
  br i1 %t593, label %bb155, label %bb156
bb155:
  %t595 = load ptr, ptr %l279, !tbaa !29
  %t596 = load i64, ptr %t595, !range !{i64 0, i64 18}
  %t598 = icmp eq i64 %t596, 17
  store i1 %t598, ptr %l280, !tbaa !21
  br label %bb156
bb156:
  %t599 = load i1, ptr %l280, !tbaa !21
  br i1 %t599, label %bb157, label %bb158
bb157:
  %t600 = load ptr, ptr %l1, !tbaa !29
  %t602 = getelementptr { i64, [5 x i64] }, ptr %t600, i32 0, i32 1
  %t603 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t602, i32 0, i32 2
  %t604 = load ptr, ptr %t603
  store ptr %t604, ptr %l29, !tbaa !29
  br label %bb159
bb158:
  br label %bb161
bb159:
  %t606 = load ptr, ptr %l0, !tbaa !29
  %t607 = load ptr, ptr %l29, !tbaa !29
  %t609 = load { i64, [1 x i64] }, ptr %l2
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t606, ptr %t607, { i64, [1 x i64] } %t609)
  br label %bb160
bb160:
  br label %bb162
bb161:
  call void @__olang_check_failed(ptr @olang_loc_ff24328511a0943b_1b00d38544175a97)
  unreachable
bb162:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2efnVal(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i1
  %l21 = alloca { i64, ptr }
  %l31 = alloca ptr
  %l32 = alloca i1
  %l41 = alloca ptr
  %l42 = alloca i1
  %t44 = alloca { i64, [1 x i64] }, align 8
  %t72 = alloca { i64, [1 x i64] }, align 8
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 3}
  %t8 = icmp eq i64 %t6, 1
  store i1 %t8, ptr %l9, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l9, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t12, i32 0, i32 1
  %t14 = load { i64, ptr }, ptr %t13
  store { i64, ptr } %t14, ptr %l2, !tbaa !27
  br label %bb5
bb4:
  br label %bb13
bb5:
  %t16 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t16, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t18 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t20 = extractvalue { i64, ptr } %t18, 0
  store i64 %t20, ptr %l5, !tbaa !24
  br label %bb6
bb6:
  %t22 = load i64, ptr %l4, !tbaa !24
  %t23 = load i64, ptr %l5, !tbaa !24
  %t26 = icmp slt i64 %t22, %t23
  %t28 = xor i1 %t26, true
  br i1 %t28, label %bb7, label %bb8
bb7:
  br label %bb12
bb8:
  br label %bb9
bb9:
  %t30 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t30, ptr %l21, !tbaa !27
  %t31 = load i64, ptr %l4, !tbaa !24
  %t33 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !27
  %t35 = getelementptr ptr, ptr %t34, i64 %t31
  %t36 = load ptr, ptr %t35, !tbaa !39
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/typed:Capture", ptr %t36, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !29
  store { i64, [1 x i64] } zeroinitializer, ptr %t44
  %t45 = getelementptr { i64, [1 x i64] }, ptr %t44, i32 0, i32 0
  store i64 5, ptr %t45
  %t46 = load { i64, [1 x i64] }, ptr %t44
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t38, ptr %t42, { i64, [1 x i64] } %t46)
  br label %bb10
bb10:
  br label %bb11
bb11:
  %t50 = load i64, ptr %l4, !tbaa !24
  %t52 = add i64 %t50, 1
  store i64 %t52, ptr %l4, !tbaa !24
  br label %bb6
bb12:
  br label %bb27
bb13:
  %t54 = load ptr, ptr %l1, !tbaa !29
  store ptr %t54, ptr %l31, !tbaa !29
  store i1 false, ptr %l32, !tbaa !21
  %t55 = load ptr, ptr %l31, !tbaa !29
  %t56 = icmp ne ptr %t55, null
  br i1 %t56, label %bb14, label %bb15
bb14:
  %t58 = load ptr, ptr %l31, !tbaa !29
  %t59 = load i64, ptr %t58, !range !{i64 0, i64 3}
  %t61 = icmp eq i64 %t59, 2
  store i1 %t61, ptr %l32, !tbaa !21
  br label %bb15
bb15:
  %t62 = load i1, ptr %l32, !tbaa !21
  br i1 %t62, label %bb16, label %bb17
bb16:
  %t63 = load ptr, ptr %l1, !tbaa !29
  %t65 = getelementptr { i64, [4 x i64] }, ptr %t63, i32 0, i32 1
  %t66 = getelementptr { i32, ptr, i32 }, ptr %t65, i32 0, i32 1
  %t67 = load ptr, ptr %t66
  store ptr %t67, ptr %l7, !tbaa !29
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load ptr, ptr %l7, !tbaa !29
  store { i64, [1 x i64] } zeroinitializer, ptr %t72
  %t73 = getelementptr { i64, [1 x i64] }, ptr %t72, i32 0, i32 0
  store i64 5, ptr %t73
  %t74 = load { i64, [1 x i64] }, ptr %t72
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t69, ptr %t70, { i64, [1 x i64] } %t74)
  br label %bb19
bb19:
  br label %bb27
bb20:
  %t78 = load ptr, ptr %l1, !tbaa !29
  store ptr %t78, ptr %l41, !tbaa !29
  store i1 false, ptr %l42, !tbaa !21
  %t79 = load ptr, ptr %l41, !tbaa !29
  %t80 = icmp ne ptr %t79, null
  br i1 %t80, label %bb21, label %bb22
bb21:
  %t82 = load ptr, ptr %l41, !tbaa !29
  %t83 = load i64, ptr %t82, !range !{i64 0, i64 3}
  %t85 = icmp eq i64 %t83, 0
  store i1 %t85, ptr %l42, !tbaa !21
  br label %bb22
bb22:
  %t86 = load i1, ptr %l42, !tbaa !21
  br i1 %t86, label %bb23, label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb27
bb26:
  call void @__olang_check_failed(ptr @olang_loc_c889b00966965144_dcfe1455a200f620)
  unreachable
bb27:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2epieces(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l14 = alloca { i64, ptr }
  %l17 = alloca ptr
  %l18 = alloca i1
  %t41 = alloca { i64, [1 x i64] }, align 8
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
  br label %bb18
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t15, ptr %l14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr ptr, ptr %t19, i64 %t16
  %t21 = load ptr, ptr %t20, !tbaa !39
  store ptr %t21, ptr %l5, !tbaa !29
  %t23 = load ptr, ptr %l5, !tbaa !29
  store ptr %t23, ptr %l17, !tbaa !29
  store i1 false, ptr %l18, !tbaa !21
  %t24 = load ptr, ptr %l17, !tbaa !29
  %t25 = icmp ne ptr %t24, null
  br i1 %t25, label %bb5, label %bb6
bb5:
  %t27 = load ptr, ptr %l17, !tbaa !29
  %t28 = load i64, ptr %t27, !range !{i64 0, i64 2}
  %t30 = icmp eq i64 %t28, 1
  store i1 %t30, ptr %l18, !tbaa !21
  br label %bb6
bb6:
  %t31 = load i1, ptr %l18, !tbaa !21
  br i1 %t31, label %bb7, label %bb8
bb7:
  %t32 = load ptr, ptr %l5, !tbaa !29
  %t34 = getelementptr { i64, [2 x i64] }, ptr %t32, i32 0, i32 1
  %t35 = getelementptr { ptr }, ptr %t34, i32 0, i32 0
  %t36 = load ptr, ptr %t35
  store ptr %t36, ptr %l6, !tbaa !29
  br label %bb9
bb8:
  br label %bb11
bb9:
  %t39 = load ptr, ptr %l6, !tbaa !29
  store { i64, [1 x i64] } zeroinitializer, ptr %t41
  %t42 = getelementptr { i64, [1 x i64] }, ptr %t41, i32 0, i32 0
  store i64 0, ptr %t42
  %t43 = load { i64, [1 x i64] }, ptr %t41
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %t39, { i64, [1 x i64] } %t43)
  br label %bb10
bb10:
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
  call void @__olang_check_failed(ptr @olang_loc_f1d97b93b21930ce_df2dd3f10bda1132)
  unreachable
bb16:
  br label %bb17
bb17:
  %t47 = load i64, ptr %l3, !tbaa !24
  %t49 = add i64 %t47, 1
  store i64 %t49, ptr %l3, !tbaa !24
  br label %bb1
bb18:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2escalarField(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l4 = alloca ptr
  %l6 = alloca i32
  %l8 = alloca i1
  %l11 = alloca i1
  %l12 = alloca ptr
  %l13 = alloca i1
  %l20 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:LocalUses", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l4, !tbaa !29
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t7 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t5)
  store i32 %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l4, !tbaa !29
  %t9 = call ptr @__olang_scope_or(ptr %v2, ptr %t8)
  %t10 = ptrtoint ptr %t9 to i64
  %t12 = inttoptr i64 %t10 to ptr
  %t13 = load ptr, ptr %l4, !tbaa !29
  %t14 = load i32, ptr %l6, !tbaa !23
  %t15 = call i1 @compiler_2ftyped_2escalarType(ptr %t12, ptr %t13, i32 %t14)
  store i1 %t15, ptr %l8
  br label %bb2
bb2:
  %t16 = load i1, ptr %l8, !tbaa !21
  %t17 = xor i1 %t16, true
  br i1 %t17, label %bb3, label %bb4
bb3:
  store i1 false, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t20 = load ptr, ptr %l1, !tbaa !29
  store ptr %t20, ptr %l12, !tbaa !29
  store i1 false, ptr %l13, !tbaa !21
  %t21 = load ptr, ptr %l12, !tbaa !29
  %t22 = icmp ne ptr %t21, null
  br i1 %t22, label %bb6, label %bb7
bb6:
  %t24 = load ptr, ptr %l12, !tbaa !29
  %t25 = load i64, ptr %t24, !range !{i64 0, i64 8}
  %t27 = icmp eq i64 %t25, 3
  store i1 %t27, ptr %l13, !tbaa !21
  br label %bb7
bb7:
  %t28 = load i1, ptr %l13, !tbaa !21
  br i1 %t28, label %bb8, label %bb9
bb8:
  %t29 = load ptr, ptr %l1, !tbaa !29
  %t31 = getelementptr { i64, [4 x i64] }, ptr %t29, i32 0, i32 1
  %t32 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t31, i32 0, i32 2
  %t33 = load ptr, ptr %t32
  store ptr %t33, ptr %l2, !tbaa !29
  br label %bb10
bb9:
  br label %bb12
bb10:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load ptr, ptr %l2, !tbaa !29
  %t39 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2efieldsOnly(ptr %v0, ptr %v1, ptr %t35, ptr %t36)
  store i1 %t39, ptr %l20
  br label %bb11
bb11:
  %t40 = load i1, ptr %l20, !tbaa !21
  store i1 %t40, ptr %l11, !tbaa !21
  br label %bb17
bb12:
  br i1 true, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_c33a5c6933895_a18ea8bdcccb3229)
  unreachable
bb17:
  %t41 = load i1, ptr %l11, !tbaa !21
  store i1 %t41, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2etargets(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l13 = alloca { i64, ptr }
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
  store ptr %t21, ptr %l5, !tbaa !29
  %t23 = load ptr, ptr %l5, !tbaa !29
  %t25 = icmp eq ptr %t23, null
  %t27 = xor i1 %t25, true
  br i1 %t27, label %bb5, label %bb6
bb5:
  %t30 = load ptr, ptr %l5, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2ewrite(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %t30, i1 false)
  br label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t33 = load i64, ptr %l3, !tbaa !24
  %t35 = add i64 %t33, 1
  store i64 %t35, ptr %l3, !tbaa !24
  br label %bb1
bb10:
  br label %ret
ret:
  ret void
}

define dso_local { i64, [2 x i64] } @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2eDerivedArgAt(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca %"compiler/typed:DerivedArg"
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca i32
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca i64
  %l21 = alloca i64
  %l26 = alloca %"compiler/typed:DerivedArg"
  %l30 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca { i64, [2 x i64] }
  %t16 = alloca { i64, [2 x i64] }, align 8
  %t61 = alloca { i64, [2 x i64] }, align 8
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"compiler/typed:Plan", ptr %a0, i32 0, i32 17
  %t6 = sext i32 %a1 to i64
  %t9 = call { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H05bdc185ea10b7cb65a89c49d4b056c8(ptr %v0, ptr %v0, ptr %t3, i64 %t6)
  %t10 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t9, 1
  %t11 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t9, 0
  store i32 %t11, ptr %l14
  %t12 = icmp ne i32 %t11, 0
  br i1 %t12, label %bb2, label %ok.13, !prof !99
ok.13:
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %l13
  br label %bb1
bb1:
  %t15 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e(ptr %s0, ptr %l13)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %l16
  br label %bb4
bb2:
  br label %bb3
bb3:
  store { i64, [2 x i64] } zeroinitializer, ptr %t16
  %t17 = getelementptr { i64, [2 x i64] }, ptr %t16, i32 0, i32 0
  store i64 0, ptr %t17
  %t18 = load { i64, [2 x i64] }, ptr %t16
  call void @__olang_scope_close(ptr %s0)
  store { i64, [2 x i64] } %t18, ptr %rv
  br label %ret
bb4:
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %l8
  br label %bb5
bb5:
  %t21 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t21, ptr %l4
  store ptr %l4, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb6
bb6:
  %t23 = load i64, ptr %l6, !tbaa !24
  store i64 %t23, ptr %l19, !tbaa !24
  %t24 = load ptr, ptr %l5, !tbaa !29
  %t26 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_2eLen_H205a9438cb31641857cd9c1e93810664(ptr %s0, ptr %t24)
  store i64 %t26, ptr %l21
  br label %bb7
bb7:
  %t27 = load i64, ptr %l19, !tbaa !24
  %t28 = load i64, ptr %l21, !tbaa !24
  %t29 = icmp slt i64 %t27, %t28
  %t31 = xor i1 %t29, true
  br i1 %t31, label %bb8, label %bb9
bb8:
  br label %bb19
bb9:
  br label %bb10
bb10:
  %t33 = load ptr, ptr %l5, !tbaa !29
  %t34 = load i64, ptr %l6, !tbaa !24
  %t37 = call %"compiler/typed:DerivedArg" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_2eAt__H3d322c834b4b1582ab12028f5b0f20b9(ptr %s0, ptr %t33, i64 %t34)
  store %"compiler/typed:DerivedArg" %t37, ptr %l26
  br label %bb11
bb11:
  %t38 = load %"compiler/typed:DerivedArg", ptr %l26
  store %"compiler/typed:DerivedArg" %t38, ptr %l7
  %t39 = getelementptr %"compiler/typed:DerivedArg", ptr %l7, i32 0, i32 0
  %t40 = load i64, ptr %t39, !tbaa !24
  %t44 = icmp eq i64 %t40, %a2
  br i1 %t44, label %bb12, label %bb13
bb12:
  %t46 = getelementptr %"compiler/typed:DerivedArg", ptr %l7, i32 0, i32 1
  %t47 = load i64, ptr %t46, !tbaa !24
  %t51 = icmp eq i64 %t47, %a3
  store i1 %t51, ptr %l30, !tbaa !21
  br label %bb14
bb13:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb14
bb14:
  %t53 = load i1, ptr %l30, !tbaa !21
  br i1 %t53, label %bb15, label %bb16
bb15:
  %t54 = getelementptr %"compiler/typed:DerivedArg", ptr %l7, i32 0, i32 2
  %t55 = load { i64, [2 x i64] }, ptr %t54
  call void @__olang_scope_close(ptr %s0)
  store { i64, [2 x i64] } %t55, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  br label %bb18
bb18:
  %t57 = load i64, ptr %l6, !tbaa !24
  %t59 = add i64 %t57, 1
  store i64 %t59, ptr %l6, !tbaa !24
  br label %bb6
bb19:
  store { i64, [2 x i64] } zeroinitializer, ptr %t61
  %t62 = getelementptr { i64, [2 x i64] }, ptr %t61, i32 0, i32 0
  store i64 0, ptr %t62
  %t63 = load { i64, [2 x i64] }, ptr %t61
  call void @__olang_scope_close(ptr %s0)
  store { i64, [2 x i64] } %t63, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2eSetTwin(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l4 = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/typed:Plan", ptr %a0, i32 0, i32 11
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l4, !tbaa !27
  %t7 = sext i32 %a1 to i64
  %t11 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !27
  %t13 = getelementptr i64, ptr %t12, i64 %t7
  store i64 %a2, ptr %t13, !tbaa !34
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eReachRow(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca i64
  %l12 = alloca i1
  %l16 = alloca i64
  %l17 = alloca ptr
  %l21 = alloca ptr
  %l22 = alloca i32
  %l24 = alloca i64
  %l26 = alloca i64
  %l31 = alloca i64
  %l34 = alloca i1
  %l42 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l3, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v1, ptr %t1)
  br label %bb1
bb1:
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/typed:Versions", ptr %t3, i32 0, i32 9
  %t6 = load i64, ptr %l2, !tbaa !24
  %t9 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI_Hbd09c84b003bb96b764c8a61b7f32193(ptr %v0, ptr %t5, i64 %t6)
  store i1 %t9, ptr %l12
  br label %bb2
bb2:
  %t10 = load i1, ptr %l12, !tbaa !21
  %t11 = xor i1 %t10, true
  br i1 %t11, label %bb3, label %bb4
bb3:
  br label %ret
bb4:
  br label %bb5
bb5:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/typed:Versions", ptr %t13, i32 0, i32 3
  %t17 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t15)
  store i64 %t17, ptr %l16
  br label %bb6
bb6:
  %t18 = load i64, ptr %l16, !tbaa !24
  store i64 %t18, ptr %l4, !tbaa !24
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/typed:Versions", ptr %t19, i32 0, i32 9
  %t22 = load i64, ptr %l2, !tbaa !24
  %t25 = call { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI_He64c344d05691a582e6fe54d21a34702(ptr %v0, ptr %v0, ptr %t21, i64 %t22)
  %t26 = extractvalue { i32, ptr } %t25, 1
  %t27 = extractvalue { i32, ptr } %t25, 0
  store i32 %t27, ptr %l22
  %t28 = icmp ne i32 %t27, 0
  br i1 %t28, label %bb8, label %ok.29, !prof !99
ok.29:
  store ptr %t26, ptr %l21
  br label %bb7
bb7:
  %t30 = load ptr, ptr %l21, !tbaa !29
  store ptr %t30, ptr %l17, !tbaa !29
  br label %bb11
bb8:
  %t31 = load i32, ptr %l22, !tbaa !23
  %t32 = icmp eq i32 %t31, 65536
  br i1 %t32, label %bb9, label %bb10
bb9:
  call void @__olang_bang_failed_plain(ptr @olang_loc_7e4ec1e19232cd88_f10154fa6134f764)
  unreachable
bb10:
  call void @__olang_bang_failed_plain(ptr @olang_loc_a0166decbffe4964_9ac2fce80458edf8)
  unreachable
bb11:
  %t34 = load ptr, ptr %l17, !tbaa !29
  store ptr %t34, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb12
bb12:
  %t35 = load i64, ptr %l6, !tbaa !24
  store i64 %t35, ptr %l24, !tbaa !24
  %t36 = load ptr, ptr %l5, !tbaa !29
  %t38 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t36)
  store i64 %t38, ptr %l26
  br label %bb13
bb13:
  %t39 = load i64, ptr %l24, !tbaa !24
  %t40 = load i64, ptr %l26, !tbaa !24
  %t41 = icmp slt i64 %t39, %t40
  %t43 = xor i1 %t41, true
  br i1 %t43, label %bb14, label %bb15
bb14:
  br label %bb27
bb15:
  br label %bb16
bb16:
  %t45 = load ptr, ptr %l5, !tbaa !29
  %t46 = load i64, ptr %l6, !tbaa !24
  %t49 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t45, i64 %t46)
  store i64 %t49, ptr %l31
  br label %bb17
bb17:
  %t50 = load i64, ptr %l31, !tbaa !24
  store i64 %t50, ptr %l7, !tbaa !24
  %t51 = load i64, ptr %l1, !tbaa !24
  %t53 = icmp slt i64 %t51, 0
  br i1 %t53, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l34, !tbaa !21
  br label %bb21
bb19:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/typed:Versions", ptr %t55, i32 0, i32 11
  %t58 = load i64, ptr %l1, !tbaa !24
  %t59 = load i64, ptr %l4, !tbaa !24
  %t62 = mul i64 %t58, %t59
  %t63 = load i64, ptr %l7, !tbaa !24
  %t66 = add i64 %t62, %t63
  %t69 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t57, i64 %t66)
  store i64 %t69, ptr %l42
  br label %bb20
bb20:
  %t70 = load i64, ptr %l42, !tbaa !24
  %t71 = icmp sgt i64 %t70, -2
  store i1 %t71, ptr %l34, !tbaa !21
  br label %bb21
bb21:
  %t73 = load i1, ptr %l34, !tbaa !21
  br i1 %t73, label %bb22, label %bb23
bb22:
  %t74 = load ptr, ptr %l3, !tbaa !29
  %t75 = load i64, ptr %l7, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t74, i64 %t75)
  br label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb25
bb25:
  br label %bb26
bb26:
  %t78 = load i64, ptr %l6, !tbaa !24
  %t80 = add i64 %t78, 1
  store i64 %t80, ptr %l6, !tbaa !24
  br label %bb12
bb27:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2ejump(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l14 = alloca i1
  %l16 = alloca i1
  %l20 = alloca i64
  %l23 = alloca i64
  %l31 = alloca i32
  %l42 = alloca i64
  %l45 = alloca i64
  %l66 = alloca ptr
  %l69 = alloca i64
  %l70 = alloca ptr
  %l76 = alloca i64
  %l80 = alloca i64
  %l81 = alloca i64
  %l83 = alloca ptr
  %l86 = alloca i64
  %l87 = alloca ptr
  %l93 = alloca i64
  %l97 = alloca i64
  %l98 = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Versions", ptr %t1, i32 0, i32 20
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l14, !tbaa !21
  br label %bb4
bb2:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2edead(ptr %v0, ptr %t6)
  store i1 %t8, ptr %l16
  br label %bb3
bb3:
  %t9 = load i1, ptr %l16, !tbaa !21
  store i1 %t9, ptr %l14, !tbaa !21
  br label %bb4
bb4:
  %t10 = load i1, ptr %l14, !tbaa !21
  br i1 %t10, label %bb5, label %bb6
bb5:
  %t11 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eend(ptr %v0, ptr %t11)
  br label %bb7
bb6:
  br label %bb8
bb7:
  br label %ret
bb8:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/typed:Versions", ptr %t13, i32 0, i32 3
  %t17 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t15)
  store i64 %t17, ptr %l20
  br label %bb9
bb9:
  %t18 = load i64, ptr %l20, !tbaa !24
  store i64 %t18, ptr %l3, !tbaa !24
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/typed:Versions", ptr %t19, i32 0, i32 17
  %t23 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eLen_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t21)
  store i64 %t23, ptr %l23
  br label %bb10
bb10:
  %t24 = load i64, ptr %l23, !tbaa !24
  %t25 = sub i64 %t24, 1
  store i64 %t25, ptr %l4, !tbaa !24
  br label %bb11
bb11:
  %t27 = load i64, ptr %l4, !tbaa !24
  %t29 = icmp sge i64 %t27, 0
  %t31 = xor i1 %t29, true
  br i1 %t31, label %bb12, label %bb13
bb12:
  br label %bb48
bb13:
  br label %bb14
bb14:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/typed:Versions", ptr %t33, i32 0, i32 17
  %t36 = load i64, ptr %l4, !tbaa !24
  %t39 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eAt_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t35, i64 %t36)
  store i32 %t39, ptr %l31
  br label %bb15
bb15:
  %t41 = load i32, ptr %l31, !tbaa !23
  %t43 = icmp ne i32 %t41, %a2
  br i1 %t43, label %bb16, label %bb17
bb16:
  br label %bb47
bb17:
  br label %bb18
bb18:
  %t45 = load i64, ptr %l4, !tbaa !24
  %t46 = load i64, ptr %l3, !tbaa !24
  %t48 = add i64 %t46, 1
  %t51 = mul i64 %t45, %t48
  store i64 %t51, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  %t53 = load i64, ptr %l3, !tbaa !24
  store i64 %t53, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t55 = load i64, ptr %l7, !tbaa !24
  %t56 = load i64, ptr %l6, !tbaa !24
  %t59 = icmp sgt i64 %t55, %t56
  br i1 %t59, label %bb19, label %bb20
bb19:
  %t61 = load i64, ptr %l8, !tbaa !24
  %t63 = icmp sgt i64 %t61, 0
  br i1 %t63, label %bb21, label %bb22
bb20:
  store i64 0, ptr %l42, !tbaa !24
  br label %bb24
bb21:
  %t65 = load i64, ptr %l7, !tbaa !24
  %t66 = load i64, ptr %l6, !tbaa !24
  %t69 = sub i64 %t65, %t66
  %t70 = load i64, ptr %l8, !tbaa !24
  %t73 = add i64 %t69, %t70
  %t75 = sub i64 %t73, 1
  %t76 = load i64, ptr %l8, !tbaa !24
  %t79 = sdiv i64 %t75, %t76
  store i64 %t79, ptr %l45, !tbaa !24
  br label %bb23
bb22:
  store i64 0, ptr %l45, !tbaa !24
  br label %bb23
bb23:
  %t81 = load i64, ptr %l45, !tbaa !24
  store i64 %t81, ptr %l42, !tbaa !24
  br label %bb24
bb24:
  %t82 = load i64, ptr %l42, !tbaa !24
  store i64 %t82, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb25
bb25:
  %t83 = load i64, ptr %l10, !tbaa !24
  %t84 = load i64, ptr %l9, !tbaa !24
  %t87 = icmp slt i64 %t83, %t84
  %t89 = xor i1 %t87, true
  br i1 %t89, label %bb26, label %bb27
bb26:
  br label %bb41
bb27:
  br label %bb28
bb28:
  %t91 = load i64, ptr %l6, !tbaa !24
  %t92 = load i64, ptr %l10, !tbaa !24
  %t93 = load i64, ptr %l8, !tbaa !24
  %t96 = mul i64 %t92, %t93
  %t99 = add i64 %t91, %t96
  store i64 %t99, ptr %l11, !tbaa !24
  %t101 = load i32, ptr %l1, !range !{i32 0, i32 2}
  %t103 = trunc i64 0 to i32
  %t104 = icmp eq i32 %t101, %t103
  br i1 %t104, label %bb29, label %bb30
bb29:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"compiler/typed:Versions", ptr %t106, i32 0, i32 18
  store ptr %t108, ptr %l66, !tbaa !29
  %t109 = load i64, ptr %l5, !tbaa !24
  %t110 = load i64, ptr %l11, !tbaa !24
  %t113 = add i64 %t109, %t110
  store i64 %t113, ptr %l69, !tbaa !24
  %t114 = load ptr, ptr %l0, !tbaa !29
  store ptr %t114, ptr %l70, !tbaa !29
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t117 = getelementptr %"compiler/typed:Versions", ptr %t115, i32 0, i32 18
  %t118 = load i64, ptr %l5, !tbaa !24
  %t119 = load i64, ptr %l11, !tbaa !24
  %t122 = add i64 %t118, %t119
  %t125 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t117, i64 %t122)
  store i64 %t125, ptr %l76
  br label %bb31
bb30:
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t128 = getelementptr %"compiler/typed:Versions", ptr %t126, i32 0, i32 19
  store ptr %t128, ptr %l83, !tbaa !29
  %t129 = load i64, ptr %l5, !tbaa !24
  %t130 = load i64, ptr %l11, !tbaa !24
  %t133 = add i64 %t129, %t130
  store i64 %t133, ptr %l86, !tbaa !24
  %t134 = load ptr, ptr %l0, !tbaa !29
  store ptr %t134, ptr %l87, !tbaa !29
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t137 = getelementptr %"compiler/typed:Versions", ptr %t135, i32 0, i32 19
  %t138 = load i64, ptr %l5, !tbaa !24
  %t139 = load i64, ptr %l11, !tbaa !24
  %t142 = add i64 %t138, %t139
  %t145 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t137, i64 %t142)
  store i64 %t145, ptr %l93
  br label %bb35
bb31:
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t148 = getelementptr %"compiler/typed:Versions", ptr %t146, i32 0, i32 14
  %t149 = load i64, ptr %l11, !tbaa !24
  %t152 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t148, i64 %t149)
  store i64 %t152, ptr %l80
  br label %bb32
bb32:
  %t153 = load ptr, ptr %l70, !tbaa !29
  %t154 = load i64, ptr %l76, !tbaa !24
  %t155 = load i64, ptr %l80, !tbaa !24
  %t156 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eouter(ptr %v0, ptr %t153, i64 %t154, i64 %t155)
  store i64 %t156, ptr %l81
  br label %bb33
bb33:
  %t157 = load ptr, ptr %l66, !tbaa !29
  %t158 = load i64, ptr %l69, !tbaa !24
  %t159 = load i64, ptr %l81, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t157, i64 %t158, i64 %t159)
  br label %bb34
bb34:
  br label %bb39
bb35:
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t162 = getelementptr %"compiler/typed:Versions", ptr %t160, i32 0, i32 14
  %t163 = load i64, ptr %l11, !tbaa !24
  %t166 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t162, i64 %t163)
  store i64 %t166, ptr %l97
  br label %bb36
bb36:
  %t167 = load ptr, ptr %l87, !tbaa !29
  %t168 = load i64, ptr %l93, !tbaa !24
  %t169 = load i64, ptr %l97, !tbaa !24
  %t170 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eouter(ptr %v0, ptr %t167, i64 %t168, i64 %t169)
  store i64 %t170, ptr %l98
  br label %bb37
bb37:
  %t171 = load ptr, ptr %l83, !tbaa !29
  %t172 = load i64, ptr %l86, !tbaa !24
  %t173 = load i64, ptr %l98, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t171, i64 %t172, i64 %t173)
  br label %bb38
bb38:
  br label %bb39
bb39:
  br label %bb40
bb40:
  %t174 = load i64, ptr %l10, !tbaa !24
  %t176 = add i64 %t174, 1
  store i64 %t176, ptr %l10, !tbaa !24
  br label %bb25
bb41:
  %t178 = load i32, ptr %l1, !range !{i32 0, i32 2}
  %t180 = trunc i64 0 to i32
  %t181 = icmp eq i32 %t178, %t180
  br i1 %t181, label %bb42, label %bb43
bb42:
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t185 = getelementptr %"compiler/typed:Versions", ptr %t183, i32 0, i32 18
  %t186 = load i64, ptr %l5, !tbaa !24
  %t187 = load i64, ptr %l3, !tbaa !24
  %t190 = add i64 %t186, %t187
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t185, i64 %t190, i64 0)
  br label %bb44
bb43:
  %t193 = load ptr, ptr %l0, !tbaa !29
  %t195 = getelementptr %"compiler/typed:Versions", ptr %t193, i32 0, i32 19
  %t196 = load i64, ptr %l5, !tbaa !24
  %t197 = load i64, ptr %l3, !tbaa !24
  %t200 = add i64 %t196, %t197
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t195, i64 %t200, i64 0)
  br label %bb45
bb44:
  br label %bb46
bb45:
  br label %bb46
bb46:
  br label %bb48
bb47:
  %t203 = load i64, ptr %l4, !tbaa !24
  %t205 = sub i64 %t203, 1
  store i64 %t205, ptr %l4, !tbaa !24
  br label %bb11
bb48:
  %t207 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eend(ptr %v0, ptr %t207)
  br label %bb49
bb49:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2elater(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2esave(ptr %v0, ptr %s0, ptr %t1)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %l4
  br label %bb1
bb1:
  %t4 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l2
  %t5 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eall(ptr %v0, ptr %t5)
  br label %bb2
bb2:
  %t7 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eblock(ptr %v0, ptr %v1, ptr %t7, ptr %a1)
  br label %bb3
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2erestore(ptr %v0, ptr %s0, ptr %t11, ptr %l2)
  br label %bb4
bb4:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2ematch(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca ptr
  %l20 = alloca { i64, ptr }
  %l28 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l29 = alloca i64
  %l32 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l37 = alloca ptr
  %l39 = alloca i64
  %l49 = alloca { i64, ptr }
  %l58 = alloca i64
  %l61 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l63 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l73 = alloca ptr
  %l81 = alloca i64
  %l84 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l86 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Match", ptr %t1, i32 0, i32 0
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
  br label %bb7
bb3:
  br label %bb4
bb4:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %l20, !tbaa !27
  %t19 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr ptr, ptr %t22, i64 %t19
  %t24 = load ptr, ptr %t23, !tbaa !39
  %t26 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2estmt(ptr %v0, ptr %v1, ptr %t26, ptr %t24)
  br label %bb5
bb5:
  br label %bb6
bb6:
  %t30 = load i64, ptr %l3, !tbaa !24
  %t32 = add i64 %t30, 1
  store i64 %t32, ptr %l3, !tbaa !24
  br label %bb1
bb7:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2esave(ptr %v0, ptr %s0, ptr %t34)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t36, ptr %l28
  br label %bb8
bb8:
  %t37 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l28
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t37, ptr %l6
  %t38 = ptrtoint ptr %s0 to i64
  store i64 %t38, ptr %l29, !tbaa !24
  %t39 = load i1, ptr @olang_2esole_2ecompiler__2ftyped__2ecompiler__2ftyped__3aVersions__2ematch_2elocal_2e7
  br i1 %t39, label %bb9, label %bb10
bb9:
  %t41 = call ptr @__olang_region_make(ptr %s0)
  %t42 = ptrtoint ptr %t41 to i64
  store i64 %t42, ptr %l29, !tbaa !24
  br label %bb10
bb10:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = load i64, ptr %l29
  %t45 = inttoptr i64 %t44 to ptr
  %t47 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2esave(ptr %v0, ptr %t45, ptr %t43)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t47, ptr %l32
  br label %bb11
bb11:
  %t48 = load i1, ptr @olang_2esole_2ecompiler__2ftyped__2ecompiler__2ftyped__3aVersions__2ematch_2elocal_2e7
  br i1 %t48, label %bb12, label %bb13
bb12:
  %t50 = load i64, ptr %l29
  %t51 = inttoptr i64 %t50 to ptr
  %t52 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l32, i32 0, i32 0
  %t53 = load { i64, ptr }, ptr %t52
  %t54 = extractvalue { i64, ptr } %t53, 1
  %t55 = call ptr @__olang_region_or(ptr %t54, ptr null)
  %t56 = icmp ne ptr %t55, null
  %t57 = select i1 %t56, ptr %t55, ptr null
  %t58 = icmp eq ptr %t57, %t51
  call void @__olang_region_settle(ptr %t51, i1 %t58)
  br label %bb13
bb13:
  %t59 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l32
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t59, ptr %l7
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/typed:Versions", ptr %t60, i32 0, i32 20
  %t63 = load i1, ptr %t62, !tbaa !21
  %t65 = xor i1 %t63, true
  br i1 %t65, label %bb14, label %bb15
bb14:
  store ptr %l7, ptr %l37, !tbaa !29
  %t68 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l7)
  store i64 %t68, ptr %l39
  br label %bb16
bb15:
  br label %bb18
bb16:
  %t69 = load i64, ptr %l39, !tbaa !24
  %t70 = sub i64 %t69, 1
  %t71 = load ptr, ptr %l37, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %s0, ptr %t71, i64 %t70, i64 1)
  br label %bb17
bb17:
  br label %bb18
bb18:
  %t73 = load ptr, ptr %l1, !tbaa !29
  %t75 = getelementptr %"compiler/typed:Match", ptr %t73, i32 0, i32 1
  %t76 = load { i64, ptr }, ptr %t75, !tbaa !27
  store { i64, ptr } %t76, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t78 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t80 = extractvalue { i64, ptr } %t78, 0
  store i64 %t80, ptr %l10, !tbaa !24
  br label %bb19
bb19:
  %t82 = load i64, ptr %l9, !tbaa !24
  %t83 = load i64, ptr %l10, !tbaa !24
  %t86 = icmp slt i64 %t82, %t83
  %t88 = xor i1 %t86, true
  br i1 %t88, label %bb20, label %bb21
bb20:
  br label %bb34
bb21:
  br label %bb22
bb22:
  %t90 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t90, ptr %l49, !tbaa !27
  %t91 = load i64, ptr %l9, !tbaa !24
  %t93 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t94 = load ptr, ptr %t93, !tbaa !27
  %t95 = getelementptr ptr, ptr %t94, i64 %t91
  %t96 = load ptr, ptr %t95, !tbaa !39
  store ptr %t96, ptr %l11, !tbaa !29
  %t98 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2erestore(ptr %v0, ptr %s0, ptr %t98, ptr %l6)
  br label %bb23
bb23:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load ptr, ptr %l11, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2earm(ptr %v0, ptr %v1, ptr %t101, ptr %t102)
  br label %bb24
bb24:
  %t105 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2emeet(ptr %v0, ptr %s0, ptr %t105, ptr %l7)
  br label %bb25
bb25:
  %t108 = ptrtoint ptr %s0 to i64
  store i64 %t108, ptr %l58, !tbaa !24
  %t109 = load i1, ptr @olang_2esole_2ecompiler__2ftyped__2ecompiler__2ftyped__3aVersions__2ematch_2elocal_2e7
  br i1 %t109, label %bb26, label %bb27
bb26:
  %t111 = call ptr @__olang_region_make(ptr %s0)
  %t112 = ptrtoint ptr %t111 to i64
  store i64 %t112, ptr %l58, !tbaa !24
  br label %bb27
bb27:
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t114 = load i64, ptr %l58
  %t115 = inttoptr i64 %t114 to ptr
  %t117 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2esave(ptr %v0, ptr %t115, ptr %t113)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t117, ptr %l61
  br label %bb28
bb28:
  %t118 = load i1, ptr @olang_2esole_2ecompiler__2ftyped__2ecompiler__2ftyped__3aVersions__2ematch_2elocal_2e7
  br i1 %t118, label %bb29, label %bb30
bb29:
  %t120 = load i64, ptr %l58
  %t121 = inttoptr i64 %t120 to ptr
  %t122 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l61, i32 0, i32 0
  %t123 = load { i64, ptr }, ptr %t122
  %t124 = extractvalue { i64, ptr } %t123, 1
  %t125 = call ptr @__olang_region_or(ptr %t124, ptr null)
  %t126 = icmp ne ptr %t125, null
  %t127 = select i1 %t126, ptr %t125, ptr null
  %t128 = icmp eq ptr %t127, %t121
  call void @__olang_region_settle(ptr %t121, i1 %t128)
  br label %bb30
bb30:
  %t129 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t129, ptr %l63
  %t130 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l61
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t130, ptr %l7
  %t131 = load i1, ptr @olang_2esole_2ecompiler__2ftyped__2ecompiler__2ftyped__3aVersions__2ematch_2elocal_2e7
  br i1 %t131, label %bb31, label %bb32
bb31:
  %t133 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l63, i32 0, i32 0
  %t134 = load { i64, ptr }, ptr %t133
  %t135 = extractvalue { i64, ptr } %t134, 1
  %t136 = call ptr @__olang_region_or(ptr %t135, ptr null)
  %t137 = icmp ne ptr %t136, null
  %t138 = select i1 %t137, ptr %t136, ptr null
  call void @__olang_region_drop(ptr %t138)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l63
  br label %bb32
bb32:
  br label %bb33
bb33:
  %t139 = load i64, ptr %l9, !tbaa !24
  %t141 = add i64 %t139, 1
  store i64 %t141, ptr %l9, !tbaa !24
  br label %bb19
bb34:
  %t143 = load ptr, ptr %l1, !tbaa !29
  %t145 = getelementptr %"compiler/typed:Match", ptr %t143, i32 0, i32 2
  %t146 = load ptr, ptr %t145, !tbaa !29
  %t148 = icmp eq ptr %t146, null
  %t150 = xor i1 %t148, true
  br i1 %t150, label %bb35, label %bb36
bb35:
  %t152 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2erestore(ptr %v0, ptr %s0, ptr %t152, ptr %l6)
  br label %bb37
bb36:
  br label %bb50
bb37:
  %t155 = load ptr, ptr %l0, !tbaa !29
  store ptr %t155, ptr %l73, !tbaa !29
  %t156 = load ptr, ptr %l1, !tbaa !29
  %t158 = getelementptr %"compiler/typed:Match", ptr %t156, i32 0, i32 2
  %t159 = load ptr, ptr %t158, !tbaa !29
  %t161 = icmp eq ptr %t159, null
  br i1 %t161, label %bb38, label %bb39
bb38:
  call void @__olang_check_failed(ptr @olang_loc_456f0c0b74db68d5_29242d1724c8a7c1)
  unreachable
bb39:
  br label %bb40
bb40:
  %t163 = load ptr, ptr %l1, !tbaa !29
  %t165 = getelementptr %"compiler/typed:Match", ptr %t163, i32 0, i32 2
  %t166 = load ptr, ptr %t165, !tbaa !29
  %t167 = load ptr, ptr %l73, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2earm(ptr %v0, ptr %v1, ptr %t167, ptr %t166)
  br label %bb41
bb41:
  %t169 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2emeet(ptr %v0, ptr %s0, ptr %t169, ptr %l7)
  br label %bb42
bb42:
  %t172 = ptrtoint ptr %s0 to i64
  store i64 %t172, ptr %l81, !tbaa !24
  %t173 = load i1, ptr @olang_2esole_2ecompiler__2ftyped__2ecompiler__2ftyped__3aVersions__2ematch_2elocal_2e7
  br i1 %t173, label %bb43, label %bb44
bb43:
  %t175 = call ptr @__olang_region_make(ptr %s0)
  %t176 = ptrtoint ptr %t175 to i64
  store i64 %t176, ptr %l81, !tbaa !24
  br label %bb44
bb44:
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t178 = load i64, ptr %l81
  %t179 = inttoptr i64 %t178 to ptr
  %t181 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2esave(ptr %v0, ptr %t179, ptr %t177)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t181, ptr %l84
  br label %bb45
bb45:
  %t182 = load i1, ptr @olang_2esole_2ecompiler__2ftyped__2ecompiler__2ftyped__3aVersions__2ematch_2elocal_2e7
  br i1 %t182, label %bb46, label %bb47
bb46:
  %t184 = load i64, ptr %l81
  %t185 = inttoptr i64 %t184 to ptr
  %t186 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l84, i32 0, i32 0
  %t187 = load { i64, ptr }, ptr %t186
  %t188 = extractvalue { i64, ptr } %t187, 1
  %t189 = call ptr @__olang_region_or(ptr %t188, ptr null)
  %t190 = icmp ne ptr %t189, null
  %t191 = select i1 %t190, ptr %t189, ptr null
  %t192 = icmp eq ptr %t191, %t185
  call void @__olang_region_settle(ptr %t185, i1 %t192)
  br label %bb47
bb47:
  %t193 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t193, ptr %l86
  %t194 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l84
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t194, ptr %l7
  %t195 = load i1, ptr @olang_2esole_2ecompiler__2ftyped__2ecompiler__2ftyped__3aVersions__2ematch_2elocal_2e7
  br i1 %t195, label %bb48, label %bb49
bb48:
  %t197 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l86, i32 0, i32 0
  %t198 = load { i64, ptr }, ptr %t197
  %t199 = extractvalue { i64, ptr } %t198, 1
  %t200 = call ptr @__olang_region_or(ptr %t199, ptr null)
  %t201 = icmp ne ptr %t200, null
  %t202 = select i1 %t201, ptr %t200, ptr null
  call void @__olang_region_drop(ptr %t202)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l86
  br label %bb49
bb49:
  br label %bb50
bb50:
  %t203 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2erestore(ptr %v0, ptr %s0, ptr %t203, ptr %l7)
  br label %bb51
bb51:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eouter(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l1 = alloca i64
  %l2 = alloca i64
  %l23 = alloca i1
  %l24 = alloca i64
  %rv = alloca i64
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp eq i64 %t1, -2
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i64, ptr %l2, !tbaa !24
  store i64 %t5, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load i64, ptr %l2, !tbaa !24
  %t9 = icmp eq i64 %t7, -2
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t11 = load i64, ptr %l1, !tbaa !24
  store i64 %t11, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t13 = load i64, ptr %l1, !tbaa !24
  %t15 = icmp eq i64 %t13, -1
  br i1 %t15, label %bb7, label %bb8
bb7:
  %t17 = load i64, ptr %l2, !tbaa !24
  store i64 %t17, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t19 = load i64, ptr %l2, !tbaa !24
  %t21 = icmp eq i64 %t19, -1
  br i1 %t21, label %bb10, label %bb11
bb10:
  %t23 = load i64, ptr %l1, !tbaa !24
  store i64 %t23, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t27 = getelementptr %"compiler/typed:Versions", ptr %a0, i32 0, i32 0
  %t28 = load ptr, ptr %t27, !tbaa !29
  %t29 = load i64, ptr %l1, !tbaa !24
  %t31 = trunc i64 %t29 to i32
  %t33 = load i64, ptr %l2, !tbaa !24
  %t35 = trunc i64 %t33 to i32
  %t40 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eEncloses(ptr %v0, ptr %t28, i32 %t31, i32 %t35)
  store i1 %t40, ptr %l23
  br label %bb13
bb13:
  %t41 = load i1, ptr %l23, !tbaa !21
  br i1 %t41, label %bb14, label %bb15
bb14:
  %t42 = load i64, ptr %l1, !tbaa !24
  store i64 %t42, ptr %l24, !tbaa !24
  br label %bb16
bb15:
  %t44 = load i64, ptr %l2, !tbaa !24
  store i64 %t44, ptr %l24, !tbaa !24
  br label %bb16
bb16:
  %t46 = load i64, ptr %l24, !tbaa !24
  store i64 %t46, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eplace(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
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
  %l55 = alloca ptr
  %l56 = alloca i1
  %l59 = alloca ptr
  %l60 = alloca i1
  %l63 = alloca ptr
  %l64 = alloca i1
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
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eexpr(ptr %v0, ptr %v1, ptr %t16, ptr %t17)
  br label %bb6
bb6:
  br label %bb51
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
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eplace(ptr %v0, ptr %v1, ptr %t36, ptr %t37)
  br label %bb13
bb13:
  br label %bb51
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
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eplace(ptr %v0, ptr %v1, ptr %t55, ptr %t59)
  br label %bb20
bb20:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load ptr, ptr %l4, !tbaa !29
  %t65 = getelementptr %"compiler/typed:Elem", ptr %t63, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eexpr(ptr %v0, ptr %v1, ptr %t62, ptr %t66)
  br label %bb21
bb21:
  br label %bb51
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
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eplace(ptr %v0, ptr %v1, ptr %t85, ptr %t89)
  br label %bb28
bb28:
  br label %bb51
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
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eexpr(ptr %v0, ptr %v1, ptr %t107, ptr %t108)
  br label %bb35
bb35:
  br label %bb51
bb36:
  %t112 = load ptr, ptr %l1, !tbaa !29
  store ptr %t112, ptr %l55, !tbaa !29
  store i1 false, ptr %l56, !tbaa !21
  %t113 = load ptr, ptr %l55, !tbaa !29
  %t114 = icmp ne ptr %t113, null
  br i1 %t114, label %bb37, label %bb38
bb37:
  %t116 = load ptr, ptr %l55, !tbaa !29
  %t117 = load i64, ptr %t116, !range !{i64 0, i64 8}
  %t119 = icmp eq i64 %t117, 0
  store i1 %t119, ptr %l56, !tbaa !21
  br label %bb38
bb38:
  %t120 = load i1, ptr %l56, !tbaa !21
  br i1 %t120, label %bb39, label %bb40
bb39:
  br label %bb49
bb40:
  %t121 = load ptr, ptr %l1, !tbaa !29
  store ptr %t121, ptr %l59, !tbaa !29
  store i1 false, ptr %l60, !tbaa !21
  %t122 = load ptr, ptr %l59, !tbaa !29
  %t123 = icmp ne ptr %t122, null
  br i1 %t123, label %bb41, label %bb42
bb41:
  %t125 = load ptr, ptr %l59, !tbaa !29
  %t126 = load i64, ptr %t125, !range !{i64 0, i64 8}
  %t128 = icmp eq i64 %t126, 1
  store i1 %t128, ptr %l60, !tbaa !21
  br label %bb42
bb42:
  %t129 = load i1, ptr %l60, !tbaa !21
  br i1 %t129, label %bb43, label %bb44
bb43:
  br label %bb49
bb44:
  %t130 = load ptr, ptr %l1, !tbaa !29
  store ptr %t130, ptr %l63, !tbaa !29
  store i1 false, ptr %l64, !tbaa !21
  %t131 = load ptr, ptr %l63, !tbaa !29
  %t132 = icmp ne ptr %t131, null
  br i1 %t132, label %bb45, label %bb46
bb45:
  %t134 = load ptr, ptr %l63, !tbaa !29
  %t135 = load i64, ptr %t134, !range !{i64 0, i64 8}
  %t137 = icmp eq i64 %t135, 7
  store i1 %t137, ptr %l64, !tbaa !21
  br label %bb46
bb46:
  %t138 = load i1, ptr %l64, !tbaa !21
  br i1 %t138, label %bb47, label %bb48
bb47:
  br label %bb49
bb48:
  br label %bb50
bb49:
  br label %bb51
bb50:
  call void @__olang_check_failed(ptr @olang_loc_caf565cee8ed21ae_63e8bc61e905ea5a)
  unreachable
bb51:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2erecord(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
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
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i32
  %l37 = alloca i64
  %l48 = alloca i64
  %l51 = alloca i64
  %l77 = alloca i64
  %l80 = alloca i64
  %l99 = alloca ptr
  %l104 = alloca i64
  %l105 = alloca ptr
  %l113 = alloca i64
  %l116 = alloca i64
  %l117 = alloca i64
  %l123 = alloca i64
  %l127 = alloca i64
  %l130 = alloca i64
  %l149 = alloca ptr
  %l152 = alloca i64
  %l156 = alloca i64
  %l157 = alloca i64
  %l158 = alloca ptr
  %l160 = alloca ptr
  %l163 = alloca i64
  %l167 = alloca i64
  %l169 = alloca i64
  %l170 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Versions", ptr %t1, i32 0, i32 3
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l26
  br label %bb1
bb1:
  %t6 = load i64, ptr %l26, !tbaa !24
  store i64 %t6, ptr %l4, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/typed:Versions", ptr %t7, i32 0, i32 10
  %t10 = load i64, ptr %l1, !tbaa !24
  %t13 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t9, i64 %t10)
  %t14 = extractvalue { i32, i64 } %t13, 1
  %t15 = extractvalue { i32, i64 } %t13, 0
  store i32 %t15, ptr %l32
  %t16 = icmp ne i32 %t15, 0
  br i1 %t16, label %bb3, label %ok.17, !prof !99
ok.17:
  store i64 %t14, ptr %l31
  br label %bb2
bb2:
  %t18 = load i64, ptr %l31, !tbaa !24
  store i64 %t18, ptr %l27, !tbaa !24
  br label %bb5
bb3:
  br label %bb4
bb4:
  store i64 -1, ptr %l27, !tbaa !24
  br label %bb5
bb5:
  %t19 = load i64, ptr %l27, !tbaa !24
  store i64 %t19, ptr %l5, !tbaa !24
  %t20 = load i64, ptr %l5, !tbaa !24
  %t22 = icmp slt i64 %t20, 0
  br i1 %t22, label %bb6, label %bb7
bb6:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/typed:Versions", ptr %t24, i32 0, i32 11
  %t28 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t26)
  store i64 %t28, ptr %l37
  br label %bb8
bb7:
  br label %bb23
bb8:
  %t29 = load i64, ptr %l4, !tbaa !24
  %t30 = load i64, ptr %l37, !tbaa !24
  %t32 = sdiv i64 %t30, %t29
  store i64 %t32, ptr %l5, !tbaa !24
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/typed:Versions", ptr %t34, i32 0, i32 10
  %t37 = load i64, ptr %l1, !tbaa !24
  %t38 = load i64, ptr %l5, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t36, i64 %t37, i64 %t38)
  br label %bb9
bb9:
  store i64 0, ptr %l6, !tbaa !24
  %t42 = load i64, ptr %l4, !tbaa !24
  store i64 %t42, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t44 = load i64, ptr %l7, !tbaa !24
  %t45 = load i64, ptr %l6, !tbaa !24
  %t48 = icmp sgt i64 %t44, %t45
  br i1 %t48, label %bb10, label %bb11
bb10:
  %t50 = load i64, ptr %l8, !tbaa !24
  %t52 = icmp sgt i64 %t50, 0
  br i1 %t52, label %bb12, label %bb13
bb11:
  store i64 0, ptr %l48, !tbaa !24
  br label %bb15
bb12:
  %t54 = load i64, ptr %l7, !tbaa !24
  %t55 = load i64, ptr %l6, !tbaa !24
  %t58 = sub i64 %t54, %t55
  %t59 = load i64, ptr %l8, !tbaa !24
  %t62 = add i64 %t58, %t59
  %t64 = sub i64 %t62, 1
  %t65 = load i64, ptr %l8, !tbaa !24
  %t68 = sdiv i64 %t64, %t65
  store i64 %t68, ptr %l51, !tbaa !24
  br label %bb14
bb13:
  store i64 0, ptr %l51, !tbaa !24
  br label %bb14
bb14:
  %t70 = load i64, ptr %l51, !tbaa !24
  store i64 %t70, ptr %l48, !tbaa !24
  br label %bb15
bb15:
  %t71 = load i64, ptr %l48, !tbaa !24
  store i64 %t71, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb16
bb16:
  %t72 = load i64, ptr %l10, !tbaa !24
  %t73 = load i64, ptr %l9, !tbaa !24
  %t76 = icmp slt i64 %t72, %t73
  %t78 = xor i1 %t76, true
  br i1 %t78, label %bb17, label %bb18
bb17:
  br label %bb22
bb18:
  br label %bb19
bb19:
  %t80 = load i64, ptr %l6, !tbaa !24
  %t81 = load i64, ptr %l10, !tbaa !24
  %t82 = load i64, ptr %l8, !tbaa !24
  %t85 = mul i64 %t81, %t82
  %t88 = add i64 %t80, %t85
  store i64 %t88, ptr %l11, !tbaa !24
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/typed:Versions", ptr %t90, i32 0, i32 11
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t92, i64 -2)
  br label %bb20
bb20:
  br label %bb21
bb21:
  %t94 = load i64, ptr %l10, !tbaa !24
  %t96 = add i64 %t94, 1
  store i64 %t96, ptr %l10, !tbaa !24
  br label %bb16
bb22:
  br label %bb23
bb23:
  store i64 0, ptr %l12, !tbaa !24
  %t98 = load i64, ptr %l4, !tbaa !24
  store i64 %t98, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t100 = load i64, ptr %l13, !tbaa !24
  %t101 = load i64, ptr %l12, !tbaa !24
  %t104 = icmp sgt i64 %t100, %t101
  br i1 %t104, label %bb24, label %bb25
bb24:
  %t106 = load i64, ptr %l14, !tbaa !24
  %t108 = icmp sgt i64 %t106, 0
  br i1 %t108, label %bb26, label %bb27
bb25:
  store i64 0, ptr %l77, !tbaa !24
  br label %bb29
bb26:
  %t110 = load i64, ptr %l13, !tbaa !24
  %t111 = load i64, ptr %l12, !tbaa !24
  %t114 = sub i64 %t110, %t111
  %t115 = load i64, ptr %l14, !tbaa !24
  %t118 = add i64 %t114, %t115
  %t120 = sub i64 %t118, 1
  %t121 = load i64, ptr %l14, !tbaa !24
  %t124 = sdiv i64 %t120, %t121
  store i64 %t124, ptr %l80, !tbaa !24
  br label %bb28
bb27:
  store i64 0, ptr %l80, !tbaa !24
  br label %bb28
bb28:
  %t126 = load i64, ptr %l80, !tbaa !24
  store i64 %t126, ptr %l77, !tbaa !24
  br label %bb29
bb29:
  %t127 = load i64, ptr %l77, !tbaa !24
  store i64 %t127, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb30
bb30:
  %t128 = load i64, ptr %l16, !tbaa !24
  %t129 = load i64, ptr %l15, !tbaa !24
  %t132 = icmp slt i64 %t128, %t129
  %t134 = xor i1 %t132, true
  br i1 %t134, label %bb31, label %bb32
bb31:
  br label %bb39
bb32:
  br label %bb33
bb33:
  %t136 = load i64, ptr %l12, !tbaa !24
  %t137 = load i64, ptr %l16, !tbaa !24
  %t138 = load i64, ptr %l14, !tbaa !24
  %t141 = mul i64 %t137, %t138
  %t144 = add i64 %t136, %t141
  store i64 %t144, ptr %l17, !tbaa !24
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t148 = getelementptr %"compiler/typed:Versions", ptr %t146, i32 0, i32 11
  store ptr %t148, ptr %l99, !tbaa !29
  %t149 = load i64, ptr %l5, !tbaa !24
  %t150 = load i64, ptr %l4, !tbaa !24
  %t153 = mul i64 %t149, %t150
  %t154 = load i64, ptr %l17, !tbaa !24
  %t157 = add i64 %t153, %t154
  store i64 %t157, ptr %l104, !tbaa !24
  %t158 = load ptr, ptr %l0, !tbaa !29
  store ptr %t158, ptr %l105, !tbaa !29
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t161 = getelementptr %"compiler/typed:Versions", ptr %t159, i32 0, i32 11
  %t162 = load i64, ptr %l5, !tbaa !24
  %t163 = load i64, ptr %l4, !tbaa !24
  %t166 = mul i64 %t162, %t163
  %t167 = load i64, ptr %l17, !tbaa !24
  %t170 = add i64 %t166, %t167
  %t173 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t161, i64 %t170)
  store i64 %t173, ptr %l113
  br label %bb34
bb34:
  %t175 = load i64, ptr %l17, !tbaa !24
  %t178 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %a2, i64 %t175)
  store i64 %t178, ptr %l116
  br label %bb35
bb35:
  %t179 = load ptr, ptr %l105, !tbaa !29
  %t180 = load i64, ptr %l113, !tbaa !24
  %t181 = load i64, ptr %l116, !tbaa !24
  %t182 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eouter(ptr %v0, ptr %t179, i64 %t180, i64 %t181)
  store i64 %t182, ptr %l117
  br label %bb36
bb36:
  %t183 = load ptr, ptr %l99, !tbaa !29
  %t184 = load i64, ptr %l104, !tbaa !24
  %t185 = load i64, ptr %l117, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t183, i64 %t184, i64 %t185)
  br label %bb37
bb37:
  br label %bb38
bb38:
  %t186 = load i64, ptr %l16, !tbaa !24
  %t188 = add i64 %t186, 1
  store i64 %t188, ptr %l16, !tbaa !24
  br label %bb30
bb39:
  store i64 %a3, ptr %l18, !tbaa !24
  %t192 = load ptr, ptr %l0, !tbaa !29
  %t194 = getelementptr %"compiler/typed:Versions", ptr %t192, i32 0, i32 15
  %t196 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t194)
  store i64 %t196, ptr %l123
  br label %bb40
bb40:
  %t197 = load i64, ptr %l123, !tbaa !24
  store i64 %t197, ptr %l19, !tbaa !24
  store i64 1, ptr %l20, !tbaa !24
  %t198 = load i64, ptr %l19, !tbaa !24
  %t199 = load i64, ptr %l18, !tbaa !24
  %t202 = icmp sgt i64 %t198, %t199
  br i1 %t202, label %bb41, label %bb42
bb41:
  %t204 = load i64, ptr %l20, !tbaa !24
  %t206 = icmp sgt i64 %t204, 0
  br i1 %t206, label %bb43, label %bb44
bb42:
  store i64 0, ptr %l127, !tbaa !24
  br label %bb46
bb43:
  %t208 = load i64, ptr %l19, !tbaa !24
  %t209 = load i64, ptr %l18, !tbaa !24
  %t212 = sub i64 %t208, %t209
  %t213 = load i64, ptr %l20, !tbaa !24
  %t216 = add i64 %t212, %t213
  %t218 = sub i64 %t216, 1
  %t219 = load i64, ptr %l20, !tbaa !24
  %t222 = sdiv i64 %t218, %t219
  store i64 %t222, ptr %l130, !tbaa !24
  br label %bb45
bb44:
  store i64 0, ptr %l130, !tbaa !24
  br label %bb45
bb45:
  %t224 = load i64, ptr %l130, !tbaa !24
  store i64 %t224, ptr %l127, !tbaa !24
  br label %bb46
bb46:
  %t225 = load i64, ptr %l127, !tbaa !24
  store i64 %t225, ptr %l21, !tbaa !24
  store i64 0, ptr %l22, !tbaa !24
  br label %bb47
bb47:
  %t226 = load i64, ptr %l22, !tbaa !24
  %t227 = load i64, ptr %l21, !tbaa !24
  %t230 = icmp slt i64 %t226, %t227
  %t232 = xor i1 %t230, true
  br i1 %t232, label %bb48, label %bb49
bb48:
  br label %bb57
bb49:
  br label %bb50
bb50:
  %t234 = load i64, ptr %l18, !tbaa !24
  %t235 = load i64, ptr %l22, !tbaa !24
  %t236 = load i64, ptr %l20, !tbaa !24
  %t239 = mul i64 %t235, %t236
  %t242 = add i64 %t234, %t239
  store i64 %t242, ptr %l23, !tbaa !24
  %t244 = load ptr, ptr %l0, !tbaa !29
  %t246 = getelementptr %"compiler/typed:Versions", ptr %t244, i32 0, i32 11
  store ptr %t246, ptr %l149, !tbaa !29
  %t247 = load i64, ptr %l5, !tbaa !24
  %t248 = load i64, ptr %l4, !tbaa !24
  %t251 = mul i64 %t247, %t248
  store i64 %t251, ptr %l152, !tbaa !24
  %t252 = load ptr, ptr %l0, !tbaa !29
  %t254 = getelementptr %"compiler/typed:Versions", ptr %t252, i32 0, i32 15
  %t255 = load i64, ptr %l23, !tbaa !24
  %t258 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t254, i64 %t255)
  store i64 %t258, ptr %l156
  br label %bb51
bb51:
  %t259 = load i64, ptr %l152, !tbaa !24
  %t260 = load i64, ptr %l156, !tbaa !24
  %t261 = add i64 %t259, %t260
  store i64 %t261, ptr %l157, !tbaa !24
  %t262 = load ptr, ptr %l0, !tbaa !29
  store ptr %t262, ptr %l158, !tbaa !29
  %t263 = load ptr, ptr %l0, !tbaa !29
  %t265 = getelementptr %"compiler/typed:Versions", ptr %t263, i32 0, i32 11
  store ptr %t265, ptr %l160, !tbaa !29
  %t266 = load i64, ptr %l5, !tbaa !24
  %t267 = load i64, ptr %l4, !tbaa !24
  %t270 = mul i64 %t266, %t267
  store i64 %t270, ptr %l163, !tbaa !24
  %t271 = load ptr, ptr %l0, !tbaa !29
  %t273 = getelementptr %"compiler/typed:Versions", ptr %t271, i32 0, i32 15
  %t274 = load i64, ptr %l23, !tbaa !24
  %t277 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t273, i64 %t274)
  store i64 %t277, ptr %l167
  br label %bb52
bb52:
  %t278 = load i64, ptr %l163, !tbaa !24
  %t279 = load i64, ptr %l167, !tbaa !24
  %t280 = add i64 %t278, %t279
  %t281 = load ptr, ptr %l160, !tbaa !29
  %t283 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t281, i64 %t280)
  store i64 %t283, ptr %l169
  br label %bb53
bb53:
  %t284 = load ptr, ptr %l158, !tbaa !29
  %t285 = load i64, ptr %l169, !tbaa !24
  %t286 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eouter(ptr %v0, ptr %t284, i64 %t285, i64 -1)
  store i64 %t286, ptr %l170
  br label %bb54
bb54:
  %t287 = load ptr, ptr %l149, !tbaa !29
  %t288 = load i64, ptr %l157, !tbaa !24
  %t289 = load i64, ptr %l170, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t287, i64 %t288, i64 %t289)
  br label %bb55
bb55:
  br label %bb56
bb56:
  %t290 = load i64, ptr %l22, !tbaa !24
  %t292 = add i64 %t290, 1
  store i64 %t292, ptr %l22, !tbaa !24
  br label %bb47
bb57:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2erestore(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l12 = alloca i64
  %l16 = alloca i64
  %l19 = alloca i64
  %l38 = alloca ptr
  %l39 = alloca i64
  %l42 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Versions", ptr %t1, i32 0, i32 20
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  store i64 0, ptr %l2, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/typed:Versions", ptr %t6, i32 0, i32 14
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l12
  br label %bb4
bb4:
  %t11 = load i64, ptr %l12, !tbaa !24
  store i64 %t11, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t12 = load i64, ptr %l3, !tbaa !24
  %t13 = load i64, ptr %l2, !tbaa !24
  %t16 = icmp sgt i64 %t12, %t13
  br i1 %t16, label %bb5, label %bb6
bb5:
  %t18 = load i64, ptr %l4, !tbaa !24
  %t20 = icmp sgt i64 %t18, 0
  br i1 %t20, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l16, !tbaa !24
  br label %bb10
bb7:
  %t22 = load i64, ptr %l3, !tbaa !24
  %t23 = load i64, ptr %l2, !tbaa !24
  %t26 = sub i64 %t22, %t23
  %t27 = load i64, ptr %l4, !tbaa !24
  %t30 = add i64 %t26, %t27
  %t32 = sub i64 %t30, 1
  %t33 = load i64, ptr %l4, !tbaa !24
  %t36 = sdiv i64 %t32, %t33
  store i64 %t36, ptr %l19, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb9
bb9:
  %t38 = load i64, ptr %l19, !tbaa !24
  store i64 %t38, ptr %l16, !tbaa !24
  br label %bb10
bb10:
  %t39 = load i64, ptr %l16, !tbaa !24
  store i64 %t39, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb11
bb11:
  %t40 = load i64, ptr %l6, !tbaa !24
  %t41 = load i64, ptr %l5, !tbaa !24
  %t44 = icmp slt i64 %t40, %t41
  %t46 = xor i1 %t44, true
  br i1 %t46, label %bb12, label %bb13
bb12:
  br label %bb18
bb13:
  br label %bb14
bb14:
  %t48 = load i64, ptr %l2, !tbaa !24
  %t49 = load i64, ptr %l6, !tbaa !24
  %t50 = load i64, ptr %l4, !tbaa !24
  %t53 = mul i64 %t49, %t50
  %t56 = add i64 %t48, %t53
  store i64 %t56, ptr %l7, !tbaa !24
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/typed:Versions", ptr %t58, i32 0, i32 14
  store ptr %t60, ptr %l38, !tbaa !29
  %t61 = load i64, ptr %l7, !tbaa !24
  store i64 %t61, ptr %l39, !tbaa !24
  %t63 = load i64, ptr %l7, !tbaa !24
  %t66 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %a1, i64 %t63)
  store i64 %t66, ptr %l42
  br label %bb15
bb15:
  %t67 = load ptr, ptr %l38, !tbaa !29
  %t68 = load i64, ptr %l39, !tbaa !24
  %t69 = load i64, ptr %l42, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t67, i64 %t68, i64 %t69)
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t70 = load i64, ptr %l6, !tbaa !24
  %t72 = add i64 %t70, 1
  store i64 %t72, ptr %l6, !tbaa !24
  br label %bb11
bb18:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2ewiden(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l13 = alloca i1
  %l17 = alloca i64
  %l20 = alloca i64
  %l22 = alloca i64
  %l29 = alloca i64
  %l32 = alloca i64
  %l53 = alloca i64
  %l55 = alloca ptr
  %l58 = alloca i64
  %l59 = alloca ptr
  %l63 = alloca i64
  %l66 = alloca i64
  %l67 = alloca i64
  %l68 = alloca i64
  %l71 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2edead(ptr %v0, ptr %t1)
  store i1 %t3, ptr %l13
  br label %bb1
bb1:
  %t4 = load i1, ptr %l13, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  store i64 0, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/typed:Versions", ptr %t6, i32 0, i32 3
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l17
  br label %bb5
bb5:
  %t11 = load i64, ptr %l17, !tbaa !24
  store i64 %t11, ptr %l3, !tbaa !24
  %t12 = load ptr, ptr %l1, !tbaa !29
  %t13 = load i64, ptr %l3, !tbaa !24
  %t16 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t12, i64 %t13)
  store i64 %t16, ptr %l20
  br label %bb6
bb6:
  %t17 = load i64, ptr %l20, !tbaa !24
  %t18 = icmp ne i64 %t17, 0
  br i1 %t18, label %bb7, label %bb8
bb7:
  store i64 1, ptr %l22, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb9
bb9:
  %t20 = load i64, ptr %l22, !tbaa !24
  store i64 %t20, ptr %l4, !tbaa !24
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t22 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v1, ptr %t21, i64 %t22, i64 0)
  br label %bb10
bb10:
  store i64 0, ptr %l5, !tbaa !24
  %t25 = load i64, ptr %l3, !tbaa !24
  store i64 %t25, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t27 = load i64, ptr %l6, !tbaa !24
  %t28 = load i64, ptr %l5, !tbaa !24
  %t31 = icmp sgt i64 %t27, %t28
  br i1 %t31, label %bb11, label %bb12
bb11:
  %t33 = load i64, ptr %l7, !tbaa !24
  %t35 = icmp sgt i64 %t33, 0
  br i1 %t35, label %bb13, label %bb14
bb12:
  store i64 0, ptr %l29, !tbaa !24
  br label %bb16
bb13:
  %t37 = load i64, ptr %l6, !tbaa !24
  %t38 = load i64, ptr %l5, !tbaa !24
  %t41 = sub i64 %t37, %t38
  %t42 = load i64, ptr %l7, !tbaa !24
  %t45 = add i64 %t41, %t42
  %t47 = sub i64 %t45, 1
  %t48 = load i64, ptr %l7, !tbaa !24
  %t51 = sdiv i64 %t47, %t48
  store i64 %t51, ptr %l32, !tbaa !24
  br label %bb15
bb14:
  store i64 0, ptr %l32, !tbaa !24
  br label %bb15
bb15:
  %t53 = load i64, ptr %l32, !tbaa !24
  store i64 %t53, ptr %l29, !tbaa !24
  br label %bb16
bb16:
  %t54 = load i64, ptr %l29, !tbaa !24
  store i64 %t54, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb17
bb17:
  %t55 = load i64, ptr %l9, !tbaa !24
  %t56 = load i64, ptr %l8, !tbaa !24
  %t59 = icmp slt i64 %t55, %t56
  %t61 = xor i1 %t59, true
  br i1 %t61, label %bb18, label %bb19
bb18:
  br label %bb35
bb19:
  br label %bb20
bb20:
  %t63 = load i64, ptr %l5, !tbaa !24
  %t64 = load i64, ptr %l9, !tbaa !24
  %t65 = load i64, ptr %l7, !tbaa !24
  %t68 = mul i64 %t64, %t65
  %t71 = add i64 %t63, %t68
  store i64 %t71, ptr %l10, !tbaa !24
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/typed:Versions", ptr %t73, i32 0, i32 14
  %t76 = load i64, ptr %l10, !tbaa !24
  %t79 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t75, i64 %t76)
  store i64 %t79, ptr %l53
  br label %bb21
bb21:
  %t80 = load i64, ptr %l53, !tbaa !24
  %t81 = icmp eq i64 %t80, -2
  br i1 %t81, label %bb22, label %bb23
bb22:
  br label %bb34
bb23:
  br label %bb24
bb24:
  %t83 = load ptr, ptr %l0, !tbaa !29
  store ptr %t83, ptr %l55, !tbaa !29
  %t84 = load ptr, ptr %l1, !tbaa !29
  %t85 = load i64, ptr %l10, !tbaa !24
  %t88 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t84, i64 %t85)
  store i64 %t88, ptr %l58
  br label %bb25
bb25:
  %t89 = load ptr, ptr %l0, !tbaa !29
  store ptr %t89, ptr %l59, !tbaa !29
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/typed:Versions", ptr %t90, i32 0, i32 14
  %t93 = load i64, ptr %l10, !tbaa !24
  %t96 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t92, i64 %t93)
  store i64 %t96, ptr %l63
  br label %bb26
bb26:
  %t99 = sext i32 %a2 to i64
  %t100 = load ptr, ptr %l59, !tbaa !29
  %t101 = load i64, ptr %l63, !tbaa !24
  %t103 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eouter(ptr %v0, ptr %t100, i64 %t101, i64 %t99)
  store i64 %t103, ptr %l66
  br label %bb27
bb27:
  %t104 = load ptr, ptr %l55, !tbaa !29
  %t105 = load i64, ptr %l58, !tbaa !24
  %t106 = load i64, ptr %l66, !tbaa !24
  %t107 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eouter(ptr %v0, ptr %t104, i64 %t105, i64 %t106)
  store i64 %t107, ptr %l67
  br label %bb28
bb28:
  %t108 = load i64, ptr %l67, !tbaa !24
  store i64 %t108, ptr %l11, !tbaa !24
  %t109 = load i64, ptr %l11, !tbaa !24
  store i64 %t109, ptr %l68, !tbaa !24
  %t110 = load ptr, ptr %l1, !tbaa !29
  %t111 = load i64, ptr %l10, !tbaa !24
  %t114 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t110, i64 %t111)
  store i64 %t114, ptr %l71
  br label %bb29
bb29:
  %t115 = load i64, ptr %l68, !tbaa !24
  %t116 = load i64, ptr %l71, !tbaa !24
  %t117 = icmp ne i64 %t115, %t116
  br i1 %t117, label %bb30, label %bb31
bb30:
  %t119 = load i64, ptr %l4, !tbaa !24
  %t121 = add i64 %t119, 1
  store i64 %t121, ptr %l4, !tbaa !24
  br label %bb32
bb31:
  br label %bb32
bb32:
  %t123 = load ptr, ptr %l1, !tbaa !29
  %t124 = load i64, ptr %l10, !tbaa !24
  %t125 = load i64, ptr %l11, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v1, ptr %t123, i64 %t124, i64 %t125)
  br label %bb33
bb33:
  br label %bb34
bb34:
  %t129 = load i64, ptr %l9, !tbaa !24
  %t131 = add i64 %t129, 1
  store i64 %t131, ptr %l9, !tbaa !24
  br label %bb17
bb35:
  %t133 = load i64, ptr %l4, !tbaa !24
  store i64 %t133, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eCallRoots(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l13 = alloca i64
  %l16 = alloca i1
  %l26 = alloca i64
  %l30 = alloca i64
  %l33 = alloca i64
  %l52 = alloca i64
  %l58 = alloca { i64, ptr }
  %l61 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t5 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eCallViews(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  store i64 %t5, ptr %l13
  br label %bb1
bb1:
  %t6 = load i64, ptr %l13, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  %t7 = load i64, ptr %l2, !tbaa !24
  %t9 = icmp sle i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb4
bb3:
  %t11 = load i64, ptr %l2, !tbaa !24
  %t12 = load i64, ptr @G_2ecompiler_2ftyped_2eViewOther, !tbaa !24
  %t15 = and i64 %t11, %t12
  %t17 = icmp ne i64 %t15, 0
  store i1 %t17, ptr %l16, !tbaa !21
  br label %bb4
bb4:
  %t19 = load i1, ptr %l16, !tbaa !21
  br i1 %t19, label %bb5, label %bb6
bb5:
  store i64 0, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  store i64 0, ptr %l3, !tbaa !24
  store i64 0, ptr %l4, !tbaa !24
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t23 = getelementptr %"compiler/typed:Call", ptr %t21, i32 0, i32 1
  %t24 = load { i64, ptr }, ptr %t23, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t24, 0
  %t27 = load i64, ptr @G_2ecompiler_2ftyped_2eViewBits, !tbaa !24
  %t30 = call i64 @std_2fprelude_2fnumber_2eI64_2eMin_3cI64_3e(i64 %t26, i64 %t27)
  store i64 %t30, ptr %l26
  br label %bb8
bb8:
  %t31 = load i64, ptr %l26, !tbaa !24
  store i64 %t31, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t32 = load i64, ptr %l5, !tbaa !24
  %t33 = load i64, ptr %l4, !tbaa !24
  %t36 = icmp sgt i64 %t32, %t33
  br i1 %t36, label %bb9, label %bb10
bb9:
  %t38 = load i64, ptr %l6, !tbaa !24
  %t40 = icmp sgt i64 %t38, 0
  br i1 %t40, label %bb11, label %bb12
bb10:
  store i64 0, ptr %l30, !tbaa !24
  br label %bb14
bb11:
  %t42 = load i64, ptr %l5, !tbaa !24
  %t43 = load i64, ptr %l4, !tbaa !24
  %t46 = sub i64 %t42, %t43
  %t47 = load i64, ptr %l6, !tbaa !24
  %t50 = add i64 %t46, %t47
  %t52 = sub i64 %t50, 1
  %t53 = load i64, ptr %l6, !tbaa !24
  %t56 = sdiv i64 %t52, %t53
  store i64 %t56, ptr %l33, !tbaa !24
  br label %bb13
bb12:
  store i64 0, ptr %l33, !tbaa !24
  br label %bb13
bb13:
  %t58 = load i64, ptr %l33, !tbaa !24
  store i64 %t58, ptr %l30, !tbaa !24
  br label %bb14
bb14:
  %t59 = load i64, ptr %l30, !tbaa !24
  store i64 %t59, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb15
bb15:
  %t60 = load i64, ptr %l8, !tbaa !24
  %t61 = load i64, ptr %l7, !tbaa !24
  %t64 = icmp slt i64 %t60, %t61
  %t66 = xor i1 %t64, true
  br i1 %t66, label %bb16, label %bb17
bb16:
  br label %bb27
bb17:
  br label %bb18
bb18:
  %t68 = load i64, ptr %l4, !tbaa !24
  %t69 = load i64, ptr %l8, !tbaa !24
  %t70 = load i64, ptr %l6, !tbaa !24
  %t73 = mul i64 %t69, %t70
  %t76 = add i64 %t68, %t73
  store i64 %t76, ptr %l9, !tbaa !24
  %t78 = load i64, ptr %l2, !tbaa !24
  %t79 = load i64, ptr %l9, !tbaa !24
  store i64 %t79, ptr %l52, !tbaa !24
  %t80 = load i64, ptr %l52, !tbaa !24
  %t81 = load i64, ptr %l52, !tbaa !24
  %t82 = shl i64 1, %t81
  %t85 = and i64 %t78, %t82
  %t87 = icmp eq i64 %t85, 0
  br i1 %t87, label %bb19, label %bb20
bb19:
  br label %bb26
bb20:
  br label %bb21
bb21:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = load ptr, ptr %l1, !tbaa !29
  %t92 = getelementptr %"compiler/typed:Call", ptr %t90, i32 0, i32 1
  %t93 = load { i64, ptr }, ptr %t92, !tbaa !27
  store { i64, ptr } %t93, ptr %l58, !tbaa !27
  %t94 = load i64, ptr %l9, !tbaa !24
  %t96 = getelementptr { i64, ptr }, ptr %l58, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !27
  %t98 = getelementptr ptr, ptr %t97, i64 %t94
  %t99 = load ptr, ptr %t98, !tbaa !39
  %t102 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2erefRoots(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t89, ptr %t99)
  store i64 %t102, ptr %l61
  br label %bb22
bb22:
  %t103 = load i64, ptr %l61, !tbaa !24
  store i64 %t103, ptr %l10, !tbaa !24
  %t104 = load i64, ptr %l10, !tbaa !24
  %t106 = icmp sle i64 %t104, 0
  br i1 %t106, label %bb23, label %bb24
bb23:
  store i64 0, ptr %rv
  br label %ret
bb24:
  br label %bb25
bb25:
  %t109 = load i64, ptr %l3, !tbaa !24
  %t110 = load i64, ptr %l10, !tbaa !24
  %t113 = or i64 %t109, %t110
  store i64 %t113, ptr %l3, !tbaa !24
  br label %bb26
bb26:
  %t115 = load i64, ptr %l8, !tbaa !24
  %t117 = add i64 %t115, 1
  store i64 %t117, ptr %l8, !tbaa !24
  br label %bb15
bb27:
  %t119 = load i64, ptr %l3, !tbaa !24
  store i64 %t119, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eparamBit(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l10 = alloca ptr
  %l12 = alloca i64
  %l14 = alloca i64
  %l18 = alloca i64
  %l21 = alloca i64
  %l41 = alloca ptr
  %l44 = alloca i32
  %l49 = alloca i64
  %l53 = alloca i64
  %l54 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:ViewWalk", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/typed:Body", ptr %t4, i32 0, i32 5
  store ptr %t6, ptr %l10, !tbaa !29
  %t7 = load ptr, ptr %l10, !tbaa !29
  %t8 = call ptr @__olang_scope_or(ptr %v1, ptr %t7)
  %t9 = ptrtoint ptr %t8 to i64
  %t11 = inttoptr i64 %t9 to ptr
  %t12 = load ptr, ptr %l10, !tbaa !29
  %t13 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %t11, ptr %t12)
  store i64 %t13, ptr %l12
  br label %bb1
bb1:
  %t14 = load i64, ptr @G_2ecompiler_2ftyped_2eViewBits, !tbaa !24
  %t15 = load i64, ptr %l12, !tbaa !24
  %t17 = call i64 @std_2fprelude_2fnumber_2eI64_2eMin_3cI64_3e(i64 %t15, i64 %t14)
  store i64 %t17, ptr %l14
  br label %bb2
bb2:
  %t18 = load i64, ptr %l14, !tbaa !24
  store i64 %t18, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t19 = load i64, ptr %l3, !tbaa !24
  %t20 = load i64, ptr %l2, !tbaa !24
  %t23 = icmp sgt i64 %t19, %t20
  br i1 %t23, label %bb3, label %bb4
bb3:
  %t25 = load i64, ptr %l4, !tbaa !24
  %t27 = icmp sgt i64 %t25, 0
  br i1 %t27, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb8
bb5:
  %t29 = load i64, ptr %l3, !tbaa !24
  %t30 = load i64, ptr %l2, !tbaa !24
  %t33 = sub i64 %t29, %t30
  %t34 = load i64, ptr %l4, !tbaa !24
  %t37 = add i64 %t33, %t34
  %t39 = sub i64 %t37, 1
  %t40 = load i64, ptr %l4, !tbaa !24
  %t43 = sdiv i64 %t39, %t40
  store i64 %t43, ptr %l21, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb7
bb7:
  %t45 = load i64, ptr %l21, !tbaa !24
  store i64 %t45, ptr %l18, !tbaa !24
  br label %bb8
bb8:
  %t46 = load i64, ptr %l18, !tbaa !24
  store i64 %t46, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb9
bb9:
  %t47 = load i64, ptr %l6, !tbaa !24
  %t48 = load i64, ptr %l5, !tbaa !24
  %t51 = icmp slt i64 %t47, %t48
  %t53 = xor i1 %t51, true
  br i1 %t53, label %bb10, label %bb11
bb10:
  br label %bb21
bb11:
  br label %bb12
bb12:
  %t55 = load i64, ptr %l2, !tbaa !24
  %t56 = load i64, ptr %l6, !tbaa !24
  %t57 = load i64, ptr %l4, !tbaa !24
  %t60 = mul i64 %t56, %t57
  %t63 = add i64 %t55, %t60
  store i64 %t63, ptr %l7, !tbaa !24
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/typed:ViewWalk", ptr %t65, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !29
  %t70 = getelementptr %"compiler/typed:Body", ptr %t68, i32 0, i32 5
  store ptr %t70, ptr %l41, !tbaa !29
  %t71 = load i64, ptr %l7, !tbaa !24
  %t72 = load ptr, ptr %l41, !tbaa !29
  %t73 = call ptr @__olang_scope_or(ptr %v1, ptr %t72)
  %t74 = ptrtoint ptr %t73 to i64
  %t76 = inttoptr i64 %t74 to ptr
  %t77 = load ptr, ptr %l41, !tbaa !29
  %t79 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %t76, ptr %t77, i64 %t71)
  store i32 %t79, ptr %l44
  br label %bb13
bb13:
  %t81 = load i32, ptr %l44, !tbaa !23
  %t83 = icmp eq i32 %t81, %a1
  br i1 %t83, label %bb14, label %bb15
bb14:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/typed:ViewWalk", ptr %t85, i32 0, i32 2
  %t88 = load i64, ptr %t87, !tbaa !24
  %t89 = load i64, ptr %l7, !tbaa !24
  store i64 %t89, ptr %l49, !tbaa !24
  %t90 = load i64, ptr %l49, !tbaa !24
  %t91 = load i64, ptr %l49, !tbaa !24
  %t92 = shl i64 1, %t91
  %t95 = and i64 %t88, %t92
  %t97 = icmp ne i64 %t95, 0
  br i1 %t97, label %bb16, label %bb17
bb15:
  br label %bb19
bb16:
  %t99 = load i64, ptr %l7, !tbaa !24
  store i64 %t99, ptr %l54, !tbaa !24
  %t100 = load i64, ptr %l54, !tbaa !24
  %t101 = load i64, ptr %l54, !tbaa !24
  %t102 = shl i64 1, %t101
  store i64 %t102, ptr %l53, !tbaa !24
  br label %bb18
bb17:
  store i64 -1, ptr %l53, !tbaa !24
  br label %bb18
bb18:
  %t104 = load i64, ptr %l53, !tbaa !24
  store i64 %t104, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  %t105 = load i64, ptr %l6, !tbaa !24
  %t107 = add i64 %t105, 1
  store i64 %t107, ptr %l6, !tbaa !24
  br label %bb9
bb21:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eexpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca ptr
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca i64
  %l17 = alloca ptr
  %l18 = alloca ptr
  %l19 = alloca ptr
  %l20 = alloca { i64, ptr }
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca ptr
  %l25 = alloca ptr
  %l26 = alloca ptr
  %l27 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l29 = alloca i64
  %l30 = alloca i64
  %l32 = alloca ptr
  %l35 = alloca i1
  %l38 = alloca ptr
  %l39 = alloca i1
  %l42 = alloca ptr
  %l43 = alloca i1
  %l46 = alloca ptr
  %l47 = alloca i1
  %l52 = alloca ptr
  %l53 = alloca i1
  %l58 = alloca ptr
  %l59 = alloca i1
  %l67 = alloca ptr
  %l68 = alloca i1
  %l77 = alloca ptr
  %l78 = alloca i1
  %l85 = alloca ptr
  %l86 = alloca i1
  %l97 = alloca ptr
  %l98 = alloca i1
  %l109 = alloca ptr
  %l110 = alloca i1
  %l118 = alloca ptr
  %l119 = alloca i1
  %l136 = alloca ptr
  %l137 = alloca i1
  %l147 = alloca { i64, ptr }
  %l148 = alloca i64
  %l149 = alloca { i64, ptr }
  %l154 = alloca { i64, ptr }
  %l155 = alloca i64
  %l156 = alloca { i64, ptr }
  %l165 = alloca ptr
  %l166 = alloca i1
  %l179 = alloca { i64, ptr }
  %l189 = alloca ptr
  %l190 = alloca i1
  %l197 = alloca ptr
  %l198 = alloca i1
  %l205 = alloca ptr
  %l206 = alloca i1
  %l219 = alloca { i64, ptr }
  %l222 = alloca ptr
  %l223 = alloca i1
  %l233 = alloca ptr
  %l234 = alloca i1
  %l242 = alloca ptr
  %l243 = alloca i1
  %l248 = alloca ptr
  %l249 = alloca i1
  %l261 = alloca { i64, ptr }
  %l270 = alloca ptr
  %l271 = alloca i1
  %l279 = alloca ptr
  %l280 = alloca i1
  %s7 = alloca %olang.scope
  %s10 = alloca %olang.scope
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
  store i1 true, ptr %l35, !tbaa !21
  br label %bb3
bb2:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/typed:dropWalk", ptr %t5, i32 0, i32 3
  %t8 = load i1, ptr %t7, !tbaa !21
  store i1 %t8, ptr %l35, !tbaa !21
  br label %bb3
bb3:
  %t10 = load i1, ptr %l35, !tbaa !21
  br i1 %t10, label %bb4, label %bb5
bb4:
  br label %ret
bb5:
  br label %bb6
bb6:
  %t11 = load ptr, ptr %l1, !tbaa !29
  store ptr %t11, ptr %l38, !tbaa !29
  store i1 false, ptr %l39, !tbaa !21
  %t12 = load ptr, ptr %l38, !tbaa !29
  %t13 = icmp ne ptr %t12, null
  br i1 %t13, label %bb7, label %bb8
bb7:
  %t15 = load ptr, ptr %l38, !tbaa !29
  %t16 = load i64, ptr %t15, !range !{i64 0, i64 18}
  %t18 = icmp eq i64 %t16, 0
  store i1 %t18, ptr %l39, !tbaa !21
  br label %bb8
bb8:
  %t19 = load i1, ptr %l39, !tbaa !21
  br i1 %t19, label %bb9, label %bb10
bb9:
  br label %bb15
bb10:
  %t20 = load ptr, ptr %l1, !tbaa !29
  store ptr %t20, ptr %l42, !tbaa !29
  store i1 false, ptr %l43, !tbaa !21
  %t21 = load ptr, ptr %l42, !tbaa !29
  %t22 = icmp ne ptr %t21, null
  br i1 %t22, label %bb11, label %bb12
bb11:
  %t24 = load ptr, ptr %l42, !tbaa !29
  %t25 = load i64, ptr %t24, !range !{i64 0, i64 18}
  %t27 = icmp eq i64 %t25, 1
  store i1 %t27, ptr %l43, !tbaa !21
  br label %bb12
bb12:
  %t28 = load i1, ptr %l43, !tbaa !21
  br i1 %t28, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb178
bb16:
  %t29 = load ptr, ptr %l1, !tbaa !29
  store ptr %t29, ptr %l46, !tbaa !29
  store i1 false, ptr %l47, !tbaa !21
  %t30 = load ptr, ptr %l46, !tbaa !29
  %t31 = icmp ne ptr %t30, null
  br i1 %t31, label %bb17, label %bb18
bb17:
  %t33 = load ptr, ptr %l46, !tbaa !29
  %t34 = load i64, ptr %t33, !range !{i64 0, i64 18}
  %t36 = icmp eq i64 %t34, 2
  store i1 %t36, ptr %l47, !tbaa !21
  br label %bb18
bb18:
  %t37 = load i1, ptr %l47, !tbaa !21
  br i1 %t37, label %bb19, label %bb20
bb19:
  %t38 = load ptr, ptr %l1, !tbaa !29
  %t40 = getelementptr { i64, [5 x i64] }, ptr %t38, i32 0, i32 1
  %t41 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t40, i32 0, i32 2
  %t42 = load ptr, ptr %t41
  store ptr %t42, ptr %l2, !tbaa !29
  br label %bb29
bb20:
  %t44 = load ptr, ptr %l1, !tbaa !29
  store ptr %t44, ptr %l52, !tbaa !29
  store i1 false, ptr %l53, !tbaa !21
  %t45 = load ptr, ptr %l52, !tbaa !29
  %t46 = icmp ne ptr %t45, null
  br i1 %t46, label %bb21, label %bb22
bb21:
  %t48 = load ptr, ptr %l52, !tbaa !29
  %t49 = load i64, ptr %t48, !range !{i64 0, i64 18}
  %t51 = icmp eq i64 %t49, 3
  store i1 %t51, ptr %l53, !tbaa !21
  br label %bb22
bb22:
  %t52 = load i1, ptr %l53, !tbaa !21
  br i1 %t52, label %bb23, label %bb24
bb23:
  %t53 = load ptr, ptr %l1, !tbaa !29
  %t55 = getelementptr { i64, [5 x i64] }, ptr %t53, i32 0, i32 1
  %t56 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t55, i32 0, i32 2
  %t57 = load ptr, ptr %t56
  store ptr %t57, ptr %l2, !tbaa !29
  br label %bb29
bb24:
  %t59 = load ptr, ptr %l1, !tbaa !29
  store ptr %t59, ptr %l58, !tbaa !29
  store i1 false, ptr %l59, !tbaa !21
  %t60 = load ptr, ptr %l58, !tbaa !29
  %t61 = icmp ne ptr %t60, null
  br i1 %t61, label %bb25, label %bb26
bb25:
  %t63 = load ptr, ptr %l58, !tbaa !29
  %t64 = load i64, ptr %t63, !range !{i64 0, i64 18}
  %t66 = icmp eq i64 %t64, 4
  store i1 %t66, ptr %l59, !tbaa !21
  br label %bb26
bb26:
  %t67 = load i1, ptr %l59, !tbaa !21
  br i1 %t67, label %bb27, label %bb28
bb27:
  %t68 = load ptr, ptr %l1, !tbaa !29
  %t70 = getelementptr { i64, [5 x i64] }, ptr %t68, i32 0, i32 1
  %t71 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t70, i32 0, i32 2
  %t72 = load ptr, ptr %t71
  store ptr %t72, ptr %l2, !tbaa !29
  br label %bb29
bb28:
  br label %bb31
bb29:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eplace(ptr %v0, ptr %v1, ptr %t74, ptr %t75)
  br label %bb30
bb30:
  br label %bb178
bb31:
  %t79 = load ptr, ptr %l1, !tbaa !29
  store ptr %t79, ptr %l67, !tbaa !29
  store i1 false, ptr %l68, !tbaa !21
  %t80 = load ptr, ptr %l67, !tbaa !29
  %t81 = icmp ne ptr %t80, null
  br i1 %t81, label %bb32, label %bb33
bb32:
  %t83 = load ptr, ptr %l67, !tbaa !29
  %t84 = load i64, ptr %t83, !range !{i64 0, i64 18}
  %t86 = icmp eq i64 %t84, 5
  store i1 %t86, ptr %l68, !tbaa !21
  br label %bb33
bb33:
  %t87 = load i1, ptr %l68, !tbaa !21
  br i1 %t87, label %bb34, label %bb35
bb34:
  %t88 = load ptr, ptr %l1, !tbaa !29
  %t90 = getelementptr { i64, [5 x i64] }, ptr %t88, i32 0, i32 1
  %t91 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t90, i32 0, i32 2
  %t92 = load ptr, ptr %t91
  store ptr %t92, ptr %l3, !tbaa !29
  br label %bb36
bb35:
  br label %bb38
bb36:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t95 = load ptr, ptr %l3, !tbaa !29
  %t97 = getelementptr %"compiler/typed:Promote", ptr %t95, i32 0, i32 0
  %t98 = load ptr, ptr %t97, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eexpr(ptr %v0, ptr %v1, ptr %t94, ptr %t98)
  br label %bb37
bb37:
  br label %bb178
bb38:
  %t102 = load ptr, ptr %l1, !tbaa !29
  store ptr %t102, ptr %l77, !tbaa !29
  store i1 false, ptr %l78, !tbaa !21
  %t103 = load ptr, ptr %l77, !tbaa !29
  %t104 = icmp ne ptr %t103, null
  br i1 %t104, label %bb39, label %bb40
bb39:
  %t106 = load ptr, ptr %l77, !tbaa !29
  %t107 = load i64, ptr %t106, !range !{i64 0, i64 18}
  %t109 = icmp eq i64 %t107, 6
  store i1 %t109, ptr %l78, !tbaa !21
  br label %bb40
bb40:
  %t110 = load i1, ptr %l78, !tbaa !21
  br i1 %t110, label %bb41, label %bb42
bb41:
  %t111 = load ptr, ptr %l1, !tbaa !29
  %t113 = getelementptr { i64, [5 x i64] }, ptr %t111, i32 0, i32 1
  %t114 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t113, i32 0, i32 2
  %t115 = load ptr, ptr %t114
  store ptr %t115, ptr %l4, !tbaa !29
  br label %bb43
bb42:
  br label %bb45
bb43:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t118 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2ecall(ptr %v0, ptr %v1, ptr %t117, ptr %t118)
  br label %bb44
bb44:
  br label %bb178
bb45:
  %t121 = load ptr, ptr %l1, !tbaa !29
  store ptr %t121, ptr %l85, !tbaa !29
  store i1 false, ptr %l86, !tbaa !21
  %t122 = load ptr, ptr %l85, !tbaa !29
  %t123 = icmp ne ptr %t122, null
  br i1 %t123, label %bb46, label %bb47
bb46:
  %t125 = load ptr, ptr %l85, !tbaa !29
  %t126 = load i64, ptr %t125, !range !{i64 0, i64 18}
  %t128 = icmp eq i64 %t126, 7
  store i1 %t128, ptr %l86, !tbaa !21
  br label %bb47
bb47:
  %t129 = load i1, ptr %l86, !tbaa !21
  br i1 %t129, label %bb48, label %bb49
bb48:
  %t130 = load ptr, ptr %l1, !tbaa !29
  %t132 = getelementptr { i64, [5 x i64] }, ptr %t130, i32 0, i32 1
  %t133 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t132, i32 0, i32 2
  %t134 = load ptr, ptr %t133
  store ptr %t134, ptr %l5, !tbaa !29
  br label %bb50
bb49:
  br label %bb53
bb50:
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t137 = load ptr, ptr %l5, !tbaa !29
  %t139 = getelementptr %"compiler/typed:Make", ptr %t137, i32 0, i32 2
  %t140 = load { i64, ptr }, ptr %t139, !tbaa !27
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eexprs(ptr %v0, ptr %v1, ptr %t136, { i64, ptr } %t140)
  br label %bb51
bb51:
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t144 = load ptr, ptr %l5, !tbaa !29
  %t146 = getelementptr %"compiler/typed:Make", ptr %t144, i32 0, i32 3
  %t147 = load ptr, ptr %t146, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eexpr(ptr %v0, ptr %v1, ptr %t143, ptr %t147)
  br label %bb52
bb52:
  br label %bb178
bb53:
  %t150 = load ptr, ptr %l1, !tbaa !29
  store ptr %t150, ptr %l97, !tbaa !29
  store i1 false, ptr %l98, !tbaa !21
  %t151 = load ptr, ptr %l97, !tbaa !29
  %t152 = icmp ne ptr %t151, null
  br i1 %t152, label %bb54, label %bb55
bb54:
  %t154 = load ptr, ptr %l97, !tbaa !29
  %t155 = load i64, ptr %t154, !range !{i64 0, i64 18}
  %t157 = icmp eq i64 %t155, 8
  store i1 %t157, ptr %l98, !tbaa !21
  br label %bb55
bb55:
  %t158 = load i1, ptr %l98, !tbaa !21
  br i1 %t158, label %bb56, label %bb57
bb56:
  %t159 = load ptr, ptr %l1, !tbaa !29
  %t161 = getelementptr { i64, [5 x i64] }, ptr %t159, i32 0, i32 1
  %t162 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t161, i32 0, i32 2
  %t163 = load ptr, ptr %t162
  store ptr %t163, ptr %l6, !tbaa !29
  br label %bb58
bb57:
  br label %bb61
bb58:
  store %olang.scope zeroinitializer, ptr %s7
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t166 = load ptr, ptr %l6, !tbaa !29
  %t168 = getelementptr %"compiler/typed:Collect", ptr %t166, i32 0, i32 0
  %t169 = load ptr, ptr %t168, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eexpr(ptr %v0, ptr %v1, ptr %t165, ptr %t169)
  br label %bb59
bb59:
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t173 = load ptr, ptr %l6, !tbaa !29
  %t175 = getelementptr %"compiler/typed:Collect", ptr %t173, i32 0, i32 1
  %t176 = load ptr, ptr %t175, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eloop(ptr %v0, ptr %v1, ptr %s7, ptr %t172, ptr %t176, ptr null)
  br label %bb60
bb60:
  call void @__olang_scope_close(ptr %s7)
  br label %bb178
bb61:
  %t179 = load ptr, ptr %l1, !tbaa !29
  store ptr %t179, ptr %l109, !tbaa !29
  store i1 false, ptr %l110, !tbaa !21
  %t180 = load ptr, ptr %l109, !tbaa !29
  %t181 = icmp ne ptr %t180, null
  br i1 %t181, label %bb62, label %bb63
bb62:
  %t183 = load ptr, ptr %l109, !tbaa !29
  %t184 = load i64, ptr %t183, !range !{i64 0, i64 18}
  %t186 = icmp eq i64 %t184, 9
  store i1 %t186, ptr %l110, !tbaa !21
  br label %bb63
bb63:
  %t187 = load i1, ptr %l110, !tbaa !21
  br i1 %t187, label %bb64, label %bb65
bb64:
  %t188 = load ptr, ptr %l1, !tbaa !29
  %t190 = getelementptr { i64, [5 x i64] }, ptr %t188, i32 0, i32 1
  %t191 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t190, i32 0, i32 4
  %t192 = load { i64, ptr }, ptr %t191
  store { i64, ptr } %t192, ptr %l7, !tbaa !27
  br label %bb66
bb65:
  br label %bb69
bb66:
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t195 = load { i64, ptr }, ptr %l7, !tbaa !27
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eexprs(ptr %v0, ptr %v1, ptr %t194, { i64, ptr } %t195)
  br label %bb67
bb67:
  %t198 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2efailHere(ptr %v0, ptr %t198, i1 false)
  br label %bb68
bb68:
  br label %bb178
bb69:
  %t200 = load ptr, ptr %l1, !tbaa !29
  store ptr %t200, ptr %l118, !tbaa !29
  store i1 false, ptr %l119, !tbaa !21
  %t201 = load ptr, ptr %l118, !tbaa !29
  %t202 = icmp ne ptr %t201, null
  br i1 %t202, label %bb70, label %bb71
bb70:
  %t204 = load ptr, ptr %l118, !tbaa !29
  %t205 = load i64, ptr %t204, !range !{i64 0, i64 18}
  %t207 = icmp eq i64 %t205, 10
  store i1 %t207, ptr %l119, !tbaa !21
  br label %bb71
bb71:
  %t208 = load i1, ptr %l119, !tbaa !21
  br i1 %t208, label %bb72, label %bb73
bb72:
  %t209 = load ptr, ptr %l1, !tbaa !29
  %t211 = getelementptr { i64, [5 x i64] }, ptr %t209, i32 0, i32 1
  %t212 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t211, i32 0, i32 2
  %t213 = load ptr, ptr %t212
  store ptr %t213, ptr %l8, !tbaa !29
  br label %bb74
bb73:
  br label %bb78
bb74:
  %t215 = load ptr, ptr %l0, !tbaa !29
  %t216 = load ptr, ptr %l8, !tbaa !29
  %t218 = getelementptr %"compiler/typed:Slice", ptr %t216, i32 0, i32 0
  %t219 = load ptr, ptr %t218, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eplace(ptr %v0, ptr %v1, ptr %t215, ptr %t219)
  br label %bb75
bb75:
  %t223 = load ptr, ptr %l0, !tbaa !29
  %t224 = load ptr, ptr %l8, !tbaa !29
  %t226 = getelementptr %"compiler/typed:Slice", ptr %t224, i32 0, i32 1
  %t227 = load ptr, ptr %t226, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eexpr(ptr %v0, ptr %v1, ptr %t223, ptr %t227)
  br label %bb76
bb76:
  %t231 = load ptr, ptr %l0, !tbaa !29
  %t232 = load ptr, ptr %l8, !tbaa !29
  %t234 = getelementptr %"compiler/typed:Slice", ptr %t232, i32 0, i32 2
  %t235 = load ptr, ptr %t234, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eexpr(ptr %v0, ptr %v1, ptr %t231, ptr %t235)
  br label %bb77
bb77:
  br label %bb178
bb78:
  %t239 = load ptr, ptr %l1, !tbaa !29
  store ptr %t239, ptr %l136, !tbaa !29
  store i1 false, ptr %l137, !tbaa !21
  %t240 = load ptr, ptr %l136, !tbaa !29
  %t241 = icmp ne ptr %t240, null
  br i1 %t241, label %bb79, label %bb80
bb79:
  %t243 = load ptr, ptr %l136, !tbaa !29
  %t244 = load i64, ptr %t243, !range !{i64 0, i64 18}
  %t246 = icmp eq i64 %t244, 11
  store i1 %t246, ptr %l137, !tbaa !21
  br label %bb80
bb80:
  %t247 = load i1, ptr %l137, !tbaa !21
  br i1 %t247, label %bb81, label %bb82
bb81:
  %t248 = load ptr, ptr %l1, !tbaa !29
  %t250 = getelementptr { i64, [5 x i64] }, ptr %t248, i32 0, i32 1
  %t251 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t250, i32 0, i32 2
  %t252 = load ptr, ptr %t251
  store ptr %t252, ptr %l9, !tbaa !29
  br label %bb83
bb82:
  br label %bb91
bb83:
  store %olang.scope zeroinitializer, ptr %s10
  %t254 = load ptr, ptr %l0, !tbaa !29
  %t255 = load ptr, ptr %l9, !tbaa !29
  %t257 = getelementptr %"compiler/typed:Cond", ptr %t255, i32 0, i32 0
  %t258 = load ptr, ptr %t257, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eexpr(ptr %v0, ptr %v1, ptr %t254, ptr %t258)
  br label %bb84
bb84:
  %t262 = load ptr, ptr %l0, !tbaa !29
  %t264 = call { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2esave(ptr %v0, ptr %s10, ptr %t262)
  store { i64, ptr } %t264, ptr %l147
  br label %bb85
bb85:
  %t265 = load { i64, ptr }, ptr %l147, !tbaa !27
  %t266 = extractvalue { i64, ptr } %t265, 0
  store i64 %t266, ptr %l148, !tbaa !24
  %t267 = load i64, ptr %l148, !tbaa !24
  %t268 = mul i64 %t267, 1
  %t269 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t268)
  %t270 = insertvalue { i64, ptr } undef, i64 %t267, 0
  %t271 = insertvalue { i64, ptr } %t270, ptr %t269, 1
  store { i64, ptr } %t271, ptr %l149, !tbaa !27
  %t272 = getelementptr { i64, ptr }, ptr %l149, i32 0, i32 1
  %t273 = load ptr, ptr %t272, !tbaa !27
  %t274 = getelementptr { i64, ptr }, ptr %l147, i32 0, i32 1
  %t275 = load ptr, ptr %t274, !tbaa !27
  %t276 = load i64, ptr %l148, !tbaa !24
  %t277 = mul i64 %t276, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t273, ptr %t275, i64 %t277, i1 false)
  %t278 = load { i64, ptr }, ptr %l149, !tbaa !27
  store { i64, ptr } %t278, ptr %l10, !tbaa !27
  %t279 = load ptr, ptr %l0, !tbaa !29
  %t280 = load ptr, ptr %l9, !tbaa !29
  %t282 = getelementptr %"compiler/typed:Cond", ptr %t280, i32 0, i32 1
  %t283 = load ptr, ptr %t282, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eexpr(ptr %v0, ptr %v1, ptr %t279, ptr %t283)
  br label %bb86
bb86:
  %t286 = load ptr, ptr %l0, !tbaa !29
  %t288 = call { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2esave(ptr %v0, ptr %s10, ptr %t286)
  store { i64, ptr } %t288, ptr %l154
  br label %bb87
bb87:
  %t289 = load { i64, ptr }, ptr %l154, !tbaa !27
  %t290 = extractvalue { i64, ptr } %t289, 0
  store i64 %t290, ptr %l155, !tbaa !24
  %t291 = load i64, ptr %l155, !tbaa !24
  %t292 = mul i64 %t291, 1
  %t293 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t292)
  %t294 = insertvalue { i64, ptr } undef, i64 %t291, 0
  %t295 = insertvalue { i64, ptr } %t294, ptr %t293, 1
  store { i64, ptr } %t295, ptr %l156, !tbaa !27
  %t296 = getelementptr { i64, ptr }, ptr %l156, i32 0, i32 1
  %t297 = load ptr, ptr %t296, !tbaa !27
  %t298 = getelementptr { i64, ptr }, ptr %l154, i32 0, i32 1
  %t299 = load ptr, ptr %t298, !tbaa !27
  %t300 = load i64, ptr %l155, !tbaa !24
  %t301 = mul i64 %t300, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t297, ptr %t299, i64 %t301, i1 false)
  %t302 = load { i64, ptr }, ptr %l156, !tbaa !27
  store { i64, ptr } %t302, ptr %l11, !tbaa !27
  %t303 = load ptr, ptr %l0, !tbaa !29
  %t304 = load { i64, ptr }, ptr %l10, !tbaa !27
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2erestore(ptr %v0, ptr %s10, ptr %t303, { i64, ptr } %t304)
  br label %bb88
bb88:
  %t307 = load ptr, ptr %l0, !tbaa !29
  %t308 = load ptr, ptr %l9, !tbaa !29
  %t310 = getelementptr %"compiler/typed:Cond", ptr %t308, i32 0, i32 2
  %t311 = load ptr, ptr %t310, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eexpr(ptr %v0, ptr %v1, ptr %t307, ptr %t311)
  br label %bb89
bb89:
  %t315 = load ptr, ptr %l0, !tbaa !29
  %t316 = load { i64, ptr }, ptr %l11, !tbaa !27
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2ejoin(ptr %v0, ptr %s10, ptr %t315, { i64, ptr } %t316)
  br label %bb90
bb90:
  call void @__olang_scope_close(ptr %s10)
  br label %bb178
bb91:
  %t319 = load ptr, ptr %l1, !tbaa !29
  store ptr %t319, ptr %l165, !tbaa !29
  store i1 false, ptr %l166, !tbaa !21
  %t320 = load ptr, ptr %l165, !tbaa !29
  %t321 = icmp ne ptr %t320, null
  br i1 %t321, label %bb92, label %bb93
bb92:
  %t323 = load ptr, ptr %l165, !tbaa !29
  %t324 = load i64, ptr %t323, !range !{i64 0, i64 18}
  %t326 = icmp eq i64 %t324, 12
  store i1 %t326, ptr %l166, !tbaa !21
  br label %bb93
bb93:
  %t327 = load i1, ptr %l166, !tbaa !21
  br i1 %t327, label %bb94, label %bb95
bb94:
  %t328 = load ptr, ptr %l1, !tbaa !29
  %t330 = getelementptr { i64, [5 x i64] }, ptr %t328, i32 0, i32 1
  %t331 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t330, i32 0, i32 2
  %t332 = load ptr, ptr %t331
  store ptr %t332, ptr %l12, !tbaa !29
  br label %bb96
bb95:
  br label %bb105
bb96:
  %t334 = load ptr, ptr %l12, !tbaa !29
  %t336 = getelementptr %"compiler/typed:Seq", ptr %t334, i32 0, i32 0
  %t337 = load { i64, ptr }, ptr %t336, !tbaa !27
  store { i64, ptr } %t337, ptr %l13, !tbaa !27
  store i64 0, ptr %l14, !tbaa !24
  %t339 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t341 = extractvalue { i64, ptr } %t339, 0
  store i64 %t341, ptr %l15, !tbaa !24
  br label %bb97
bb97:
  %t343 = load i64, ptr %l14, !tbaa !24
  %t344 = load i64, ptr %l15, !tbaa !24
  %t347 = icmp slt i64 %t343, %t344
  %t349 = xor i1 %t347, true
  br i1 %t349, label %bb98, label %bb99
bb98:
  br label %bb103
bb99:
  br label %bb100
bb100:
  %t351 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t351, ptr %l179, !tbaa !27
  %t352 = load i64, ptr %l14, !tbaa !24
  %t354 = getelementptr { i64, ptr }, ptr %l179, i32 0, i32 1
  %t355 = load ptr, ptr %t354, !tbaa !27
  %t356 = getelementptr ptr, ptr %t355, i64 %t352
  %t357 = load ptr, ptr %t356, !tbaa !39
  %t359 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2estmt(ptr %v0, ptr %v1, ptr %t359, ptr %t357)
  br label %bb101
bb101:
  br label %bb102
bb102:
  %t363 = load i64, ptr %l14, !tbaa !24
  %t365 = add i64 %t363, 1
  store i64 %t365, ptr %l14, !tbaa !24
  br label %bb97
bb103:
  %t367 = load ptr, ptr %l0, !tbaa !29
  %t368 = load ptr, ptr %l12, !tbaa !29
  %t370 = getelementptr %"compiler/typed:Seq", ptr %t368, i32 0, i32 1
  %t371 = load ptr, ptr %t370, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eexpr(ptr %v0, ptr %v1, ptr %t367, ptr %t371)
  br label %bb104
bb104:
  br label %bb178
bb105:
  %t374 = load ptr, ptr %l1, !tbaa !29
  store ptr %t374, ptr %l189, !tbaa !29
  store i1 false, ptr %l190, !tbaa !21
  %t375 = load ptr, ptr %l189, !tbaa !29
  %t376 = icmp ne ptr %t375, null
  br i1 %t376, label %bb106, label %bb107
bb106:
  %t378 = load ptr, ptr %l189, !tbaa !29
  %t379 = load i64, ptr %t378, !range !{i64 0, i64 18}
  %t381 = icmp eq i64 %t379, 13
  store i1 %t381, ptr %l190, !tbaa !21
  br label %bb107
bb107:
  %t382 = load i1, ptr %l190, !tbaa !21
  br i1 %t382, label %bb108, label %bb109
bb108:
  %t383 = load ptr, ptr %l1, !tbaa !29
  %t385 = getelementptr { i64, [5 x i64] }, ptr %t383, i32 0, i32 1
  %t386 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t385, i32 0, i32 2
  %t387 = load ptr, ptr %t386
  store ptr %t387, ptr %l17, !tbaa !29
  br label %bb110
bb109:
  br label %bb112
bb110:
  %t389 = load ptr, ptr %l0, !tbaa !29
  %t390 = load ptr, ptr %l17, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2ematch(ptr %v0, ptr %v1, ptr %t389, ptr %t390)
  br label %bb111
bb111:
  br label %bb178
bb112:
  %t393 = load ptr, ptr %l1, !tbaa !29
  store ptr %t393, ptr %l197, !tbaa !29
  store i1 false, ptr %l198, !tbaa !21
  %t394 = load ptr, ptr %l197, !tbaa !29
  %t395 = icmp ne ptr %t394, null
  br i1 %t395, label %bb113, label %bb114
bb113:
  %t397 = load ptr, ptr %l197, !tbaa !29
  %t398 = load i64, ptr %t397, !range !{i64 0, i64 18}
  %t400 = icmp eq i64 %t398, 14
  store i1 %t400, ptr %l198, !tbaa !21
  br label %bb114
bb114:
  %t401 = load i1, ptr %l198, !tbaa !21
  br i1 %t401, label %bb115, label %bb116
bb115:
  %t402 = load ptr, ptr %l1, !tbaa !29
  %t404 = getelementptr { i64, [5 x i64] }, ptr %t402, i32 0, i32 1
  %t405 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t404, i32 0, i32 2
  %t406 = load ptr, ptr %t405
  store ptr %t406, ptr %l18, !tbaa !29
  br label %bb117
bb116:
  br label %bb119
bb117:
  %t408 = load ptr, ptr %l0, !tbaa !29
  %t409 = load ptr, ptr %l18, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2etry(ptr %v0, ptr %v1, ptr %t408, ptr %t409)
  br label %bb118
bb118:
  br label %bb178
bb119:
  %t412 = load ptr, ptr %l1, !tbaa !29
  store ptr %t412, ptr %l205, !tbaa !29
  store i1 false, ptr %l206, !tbaa !21
  %t413 = load ptr, ptr %l205, !tbaa !29
  %t414 = icmp ne ptr %t413, null
  br i1 %t414, label %bb120, label %bb121
bb120:
  %t416 = load ptr, ptr %l205, !tbaa !29
  %t417 = load i64, ptr %t416, !range !{i64 0, i64 18}
  %t419 = icmp eq i64 %t417, 16
  store i1 %t419, ptr %l206, !tbaa !21
  br label %bb121
bb121:
  %t420 = load i1, ptr %l206, !tbaa !21
  br i1 %t420, label %bb122, label %bb123
bb122:
  %t421 = load ptr, ptr %l1, !tbaa !29
  %t423 = getelementptr { i64, [5 x i64] }, ptr %t421, i32 0, i32 1
  %t424 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t423, i32 0, i32 2
  %t425 = load ptr, ptr %t424
  store ptr %t425, ptr %l19, !tbaa !29
  br label %bb124
bb123:
  br label %bb137
bb124:
  %t427 = load ptr, ptr %l19, !tbaa !29
  %t429 = getelementptr %"compiler/typed:Text", ptr %t427, i32 0, i32 0
  %t430 = load { i64, ptr }, ptr %t429, !tbaa !27
  store { i64, ptr } %t430, ptr %l20, !tbaa !27
  store i64 0, ptr %l21, !tbaa !24
  %t432 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t434 = extractvalue { i64, ptr } %t432, 0
  store i64 %t434, ptr %l22, !tbaa !24
  br label %bb125
bb125:
  %t436 = load i64, ptr %l21, !tbaa !24
  %t437 = load i64, ptr %l22, !tbaa !24
  %t440 = icmp slt i64 %t436, %t437
  %t442 = xor i1 %t440, true
  br i1 %t442, label %bb126, label %bb127
bb126:
  br label %bb136
bb127:
  br label %bb128
bb128:
  %t444 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t444, ptr %l219, !tbaa !27
  %t445 = load i64, ptr %l21, !tbaa !24
  %t447 = getelementptr { i64, ptr }, ptr %l219, i32 0, i32 1
  %t448 = load ptr, ptr %t447, !tbaa !27
  %t449 = getelementptr ptr, ptr %t448, i64 %t445
  %t450 = load ptr, ptr %t449, !tbaa !39
  store ptr %t450, ptr %l23, !tbaa !29
  %t452 = load ptr, ptr %l23, !tbaa !29
  store ptr %t452, ptr %l222, !tbaa !29
  store i1 false, ptr %l223, !tbaa !21
  %t453 = load ptr, ptr %l222, !tbaa !29
  %t454 = icmp ne ptr %t453, null
  br i1 %t454, label %bb129, label %bb130
bb129:
  %t456 = load ptr, ptr %l222, !tbaa !29
  %t457 = load i64, ptr %t456, !range !{i64 0, i64 2}
  %t459 = icmp eq i64 %t457, 1
  store i1 %t459, ptr %l223, !tbaa !21
  br label %bb130
bb130:
  %t460 = load i1, ptr %l223, !tbaa !21
  br i1 %t460, label %bb131, label %bb132
bb131:
  %t461 = load ptr, ptr %l23, !tbaa !29
  %t463 = getelementptr { i64, [2 x i64] }, ptr %t461, i32 0, i32 1
  %t464 = getelementptr { ptr }, ptr %t463, i32 0, i32 0
  %t465 = load ptr, ptr %t464
  %t467 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eexpr(ptr %v0, ptr %v1, ptr %t467, ptr %t465)
  br label %bb133
bb132:
  br label %bb134
bb133:
  br label %bb134
bb134:
  br label %bb135
bb135:
  %t472 = load i64, ptr %l21, !tbaa !24
  %t474 = add i64 %t472, 1
  store i64 %t474, ptr %l21, !tbaa !24
  br label %bb125
bb136:
  br label %bb178
bb137:
  %t476 = load ptr, ptr %l1, !tbaa !29
  store ptr %t476, ptr %l233, !tbaa !29
  store i1 false, ptr %l234, !tbaa !21
  %t477 = load ptr, ptr %l233, !tbaa !29
  %t478 = icmp ne ptr %t477, null
  br i1 %t478, label %bb138, label %bb139
bb138:
  %t480 = load ptr, ptr %l233, !tbaa !29
  %t481 = load i64, ptr %t480, !range !{i64 0, i64 18}
  %t483 = icmp eq i64 %t481, 17
  store i1 %t483, ptr %l234, !tbaa !21
  br label %bb139
bb139:
  %t484 = load i1, ptr %l234, !tbaa !21
  br i1 %t484, label %bb140, label %bb141
bb140:
  %t485 = load ptr, ptr %l1, !tbaa !29
  %t487 = getelementptr { i64, [5 x i64] }, ptr %t485, i32 0, i32 1
  %t488 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t487, i32 0, i32 2
  %t489 = load ptr, ptr %t488
  store ptr %t489, ptr %l25, !tbaa !29
  br label %bb142
bb141:
  br label %bb144
bb142:
  %t491 = load ptr, ptr %l0, !tbaa !29
  %t492 = load ptr, ptr %l25, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eexpr(ptr %v0, ptr %v1, ptr %t491, ptr %t492)
  br label %bb143
bb143:
  br label %bb178
bb144:
  %t496 = load ptr, ptr %l1, !tbaa !29
  store ptr %t496, ptr %l242, !tbaa !29
  store i1 false, ptr %l243, !tbaa !21
  %t497 = load ptr, ptr %l242, !tbaa !29
  %t498 = icmp ne ptr %t497, null
  br i1 %t498, label %bb145, label %bb146
bb145:
  %t500 = load ptr, ptr %l242, !tbaa !29
  %t501 = load i64, ptr %t500, !range !{i64 0, i64 18}
  %t503 = icmp eq i64 %t501, 15
  store i1 %t503, ptr %l243, !tbaa !21
  br label %bb146
bb146:
  %t504 = load i1, ptr %l243, !tbaa !21
  br i1 %t504, label %bb147, label %bb148
bb147:
  %t505 = load ptr, ptr %l1, !tbaa !29
  %t507 = getelementptr { i64, [5 x i64] }, ptr %t505, i32 0, i32 1
  %t508 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t507, i32 0, i32 2
  %t509 = load ptr, ptr %t508
  store ptr %t509, ptr %l26, !tbaa !29
  br label %bb149
bb148:
  br label %bb177
bb149:
  %t511 = load ptr, ptr %l26, !tbaa !29
  store ptr %t511, ptr %l248, !tbaa !29
  store i1 false, ptr %l249, !tbaa !21
  %t512 = load ptr, ptr %l248, !tbaa !29
  %t513 = icmp ne ptr %t512, null
  br i1 %t513, label %bb150, label %bb151
bb150:
  %t515 = load ptr, ptr %l248, !tbaa !29
  %t516 = load i64, ptr %t515, !range !{i64 0, i64 3}
  %t518 = icmp eq i64 %t516, 1
  store i1 %t518, ptr %l249, !tbaa !21
  br label %bb151
bb151:
  %t519 = load i1, ptr %l249, !tbaa !21
  br i1 %t519, label %bb152, label %bb153
bb152:
  %t520 = load ptr, ptr %l26, !tbaa !29
  %t522 = getelementptr { i64, [4 x i64] }, ptr %t520, i32 0, i32 1
  %t523 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t522, i32 0, i32 1
  %t524 = load { i64, ptr }, ptr %t523
  store { i64, ptr } %t524, ptr %l27, !tbaa !27
  br label %bb154
bb153:
  br label %bb162
bb154:
  %t526 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t526, ptr %l28, !tbaa !27
  store i64 0, ptr %l29, !tbaa !24
  %t528 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t530 = extractvalue { i64, ptr } %t528, 0
  store i64 %t530, ptr %l30, !tbaa !24
  br label %bb155
bb155:
  %t532 = load i64, ptr %l29, !tbaa !24
  %t533 = load i64, ptr %l30, !tbaa !24
  %t536 = icmp slt i64 %t532, %t533
  %t538 = xor i1 %t536, true
  br i1 %t538, label %bb156, label %bb157
bb156:
  br label %bb161
bb157:
  br label %bb158
bb158:
  %t540 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t540, ptr %l261, !tbaa !27
  %t541 = load i64, ptr %l29, !tbaa !24
  %t543 = getelementptr { i64, ptr }, ptr %l261, i32 0, i32 1
  %t544 = load ptr, ptr %t543, !tbaa !27
  %t545 = getelementptr ptr, ptr %t544, i64 %t541
  %t546 = load ptr, ptr %t545, !tbaa !39
  %t548 = load ptr, ptr %l0, !tbaa !29
  %t551 = getelementptr %"compiler/typed:Capture", ptr %t546, i32 0, i32 1
  %t552 = load ptr, ptr %t551, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eexpr(ptr %v0, ptr %v1, ptr %t548, ptr %t552)
  br label %bb159
bb159:
  br label %bb160
bb160:
  %t556 = load i64, ptr %l29, !tbaa !24
  %t558 = add i64 %t556, 1
  store i64 %t558, ptr %l29, !tbaa !24
  br label %bb155
bb161:
  br label %bb176
bb162:
  %t560 = load ptr, ptr %l26, !tbaa !29
  store ptr %t560, ptr %l270, !tbaa !29
  store i1 false, ptr %l271, !tbaa !21
  %t561 = load ptr, ptr %l270, !tbaa !29
  %t562 = icmp ne ptr %t561, null
  br i1 %t562, label %bb163, label %bb164
bb163:
  %t564 = load ptr, ptr %l270, !tbaa !29
  %t565 = load i64, ptr %t564, !range !{i64 0, i64 3}
  %t567 = icmp eq i64 %t565, 2
  store i1 %t567, ptr %l271, !tbaa !21
  br label %bb164
bb164:
  %t568 = load i1, ptr %l271, !tbaa !21
  br i1 %t568, label %bb165, label %bb166
bb165:
  %t569 = load ptr, ptr %l26, !tbaa !29
  %t571 = getelementptr { i64, [4 x i64] }, ptr %t569, i32 0, i32 1
  %t572 = getelementptr { i32, ptr, i32 }, ptr %t571, i32 0, i32 1
  %t573 = load ptr, ptr %t572
  store ptr %t573, ptr %l32, !tbaa !29
  br label %bb167
bb166:
  br label %bb169
bb167:
  %t575 = load ptr, ptr %l0, !tbaa !29
  %t576 = load ptr, ptr %l32, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eexpr(ptr %v0, ptr %v1, ptr %t575, ptr %t576)
  br label %bb168
bb168:
  br label %bb176
bb169:
  %t580 = load ptr, ptr %l26, !tbaa !29
  store ptr %t580, ptr %l279, !tbaa !29
  store i1 false, ptr %l280, !tbaa !21
  %t581 = load ptr, ptr %l279, !tbaa !29
  %t582 = icmp ne ptr %t581, null
  br i1 %t582, label %bb170, label %bb171
bb170:
  %t584 = load ptr, ptr %l279, !tbaa !29
  %t585 = load i64, ptr %t584, !range !{i64 0, i64 3}
  %t587 = icmp eq i64 %t585, 0
  store i1 %t587, ptr %l280, !tbaa !21
  br label %bb171
bb171:
  %t588 = load i1, ptr %l280, !tbaa !21
  br i1 %t588, label %bb172, label %bb173
bb172:
  br label %bb174
bb173:
  br label %bb175
bb174:
  br label %bb176
bb175:
  call void @__olang_check_failed(ptr @olang_loc_e0d071190e38de5d_291e4ea72946f179)
  unreachable
bb176:
  br label %bb178
bb177:
  call void @__olang_check_failed(ptr @olang_loc_d40841e1665d5bac_305352f22a4532a8)
  unreachable
bb178:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2ejoin(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %l11 = alloca i64
  %l19 = alloca i64
  %l23 = alloca i64
  %l26 = alloca i64
  %l45 = alloca ptr
  %l46 = alloca i64
  %l50 = alloca i1
  %l51 = alloca i1
  %l52 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t1, ptr %l8, !tbaa !27
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"compiler/typed:dropWalk", ptr %t2, i32 0, i32 2
  %t6 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t4)
  store i64 %t6, ptr %l11
  br label %bb1
bb1:
  %t7 = load i64, ptr %l11, !tbaa !24
  %t8 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !27
  %t10 = getelementptr i1, ptr %t9, i64 %t7
  %t11 = load i1, ptr %t10, !tbaa !31
  br i1 %t11, label %bb2, label %bb3
bb2:
  br label %ret
bb3:
  br label %bb4
bb4:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/typed:dropWalk", ptr %t13, i32 0, i32 3
  %t16 = load i1, ptr %t15, !tbaa !21
  br i1 %t16, label %bb5, label %bb6
bb5:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load { i64, ptr }, ptr %l1, !tbaa !27
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2erestore(ptr %v0, ptr %v1, ptr %t18, { i64, ptr } %t19)
  br label %bb7
bb6:
  br label %bb8
bb7:
  br label %ret
bb8:
  store i64 0, ptr %l2, !tbaa !24
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/typed:dropWalk", ptr %t22, i32 0, i32 2
  %t26 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t24)
  store i64 %t26, ptr %l19
  br label %bb9
bb9:
  %t27 = load i64, ptr %l19, !tbaa !24
  store i64 %t27, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t28 = load i64, ptr %l3, !tbaa !24
  %t29 = load i64, ptr %l2, !tbaa !24
  %t32 = icmp sgt i64 %t28, %t29
  br i1 %t32, label %bb10, label %bb11
bb10:
  %t34 = load i64, ptr %l4, !tbaa !24
  %t36 = icmp sgt i64 %t34, 0
  br i1 %t36, label %bb12, label %bb13
bb11:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb15
bb12:
  %t38 = load i64, ptr %l3, !tbaa !24
  %t39 = load i64, ptr %l2, !tbaa !24
  %t42 = sub i64 %t38, %t39
  %t43 = load i64, ptr %l4, !tbaa !24
  %t46 = add i64 %t42, %t43
  %t48 = sub i64 %t46, 1
  %t49 = load i64, ptr %l4, !tbaa !24
  %t52 = sdiv i64 %t48, %t49
  store i64 %t52, ptr %l26, !tbaa !24
  br label %bb14
bb13:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb14
bb14:
  %t54 = load i64, ptr %l26, !tbaa !24
  store i64 %t54, ptr %l23, !tbaa !24
  br label %bb15
bb15:
  %t55 = load i64, ptr %l23, !tbaa !24
  store i64 %t55, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb16
bb16:
  %t56 = load i64, ptr %l6, !tbaa !24
  %t57 = load i64, ptr %l5, !tbaa !24
  %t60 = icmp slt i64 %t56, %t57
  %t62 = xor i1 %t60, true
  br i1 %t62, label %bb17, label %bb18
bb17:
  br label %bb26
bb18:
  br label %bb19
bb19:
  %t64 = load i64, ptr %l2, !tbaa !24
  %t65 = load i64, ptr %l6, !tbaa !24
  %t66 = load i64, ptr %l4, !tbaa !24
  %t69 = mul i64 %t65, %t66
  %t72 = add i64 %t64, %t69
  store i64 %t72, ptr %l7, !tbaa !24
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/typed:dropWalk", ptr %t74, i32 0, i32 2
  store ptr %t76, ptr %l45, !tbaa !29
  %t77 = load i64, ptr %l7, !tbaa !24
  store i64 %t77, ptr %l46, !tbaa !24
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/typed:dropWalk", ptr %t78, i32 0, i32 2
  %t81 = load i64, ptr %l7, !tbaa !24
  %t84 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t80, i64 %t81)
  store i1 %t84, ptr %l50
  br label %bb20
bb20:
  %t85 = load i1, ptr %l50, !tbaa !21
  br i1 %t85, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l51, !tbaa !21
  br label %bb23
bb22:
  %t86 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t86, ptr %l52, !tbaa !27
  %t87 = load i64, ptr %l7, !tbaa !24
  %t89 = getelementptr { i64, ptr }, ptr %l52, i32 0, i32 1
  %t90 = load ptr, ptr %t89, !tbaa !27
  %t91 = getelementptr i1, ptr %t90, i64 %t87
  %t92 = load i1, ptr %t91, !tbaa !31
  store i1 %t92, ptr %l51, !tbaa !21
  br label %bb23
bb23:
  %t94 = load ptr, ptr %l45, !tbaa !29
  %t95 = load i64, ptr %l46, !tbaa !24
  %t96 = load i1, ptr %l51, !tbaa !21
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t94, i64 %t95, i1 %t96)
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t97 = load i64, ptr %l6, !tbaa !24
  %t99 = add i64 %t97, 1
  store i64 %t99, ptr %l6, !tbaa !24
  br label %bb16
bb26:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2ejump(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l6 = alloca i64
  %l14 = alloca i32
  %l17 = alloca ptr
  %l21 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:dropWalk", ptr %t1, i32 0, i32 7
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eLen_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load i64, ptr %l6, !tbaa !24
  %t7 = sub i64 %t6, 1
  store i64 %t7, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t9 = load i64, ptr %l3, !tbaa !24
  %t11 = icmp sge i64 %t9, 0
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  br label %bb14
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/typed:dropWalk", ptr %t15, i32 0, i32 7
  %t18 = load i64, ptr %l3, !tbaa !24
  %t21 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eAt_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t17, i64 %t18)
  store i32 %t21, ptr %l14
  br label %bb6
bb6:
  %t23 = load i32, ptr %l14, !tbaa !23
  %t25 = icmp ne i32 %t23, %a2
  br i1 %t25, label %bb7, label %bb8
bb7:
  br label %bb13
bb8:
  br label %bb9
bb9:
  %t27 = load ptr, ptr %l0, !tbaa !29
  store ptr %t27, ptr %l17, !tbaa !29
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/typed:dropWalk", ptr %t28, i32 0, i32 8
  %t31 = load i64, ptr %l3, !tbaa !24
  %t34 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t30, i64 %t31)
  store i64 %t34, ptr %l21
  br label %bb10
bb10:
  %t35 = load ptr, ptr %l17, !tbaa !29
  %t36 = load i64, ptr %l21, !tbaa !24
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eleave(ptr %v0, ptr %t35, i64 %t36)
  br label %bb11
bb11:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t40 = trunc i64 0 to i32
  %t41 = icmp eq i32 %a1, %t40
  %t42 = load i64, ptr %l3, !tbaa !24
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2ekeepFor(ptr %v0, ptr %t37, i1 %t41, i64 %t42)
  br label %bb12
bb12:
  br label %bb14
bb13:
  %t46 = load i64, ptr %l3, !tbaa !24
  %t48 = sub i64 %t46, 1
  store i64 %t48, ptr %l3, !tbaa !24
  br label %bb2
bb14:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/typed:dropWalk", ptr %t50, i32 0, i32 3
  store i1 true, ptr %t52, !tbaa !21
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2ematch(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca i64
  %l15 = alloca ptr
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca ptr
  %l20 = alloca { i64, ptr }
  %l21 = alloca i64
  %l22 = alloca i64
  %l24 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  %l42 = alloca i64
  %l43 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l46 = alloca i64
  %l47 = alloca { i64, ptr }
  %l50 = alloca i64
  %l51 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l60 = alloca { i64, ptr }
  %l71 = alloca ptr
  %l78 = alloca i64
  %l80 = alloca i64
  %l85 = alloca ptr
  %l96 = alloca { i64, ptr }
  %l111 = alloca { i64, ptr }
  %l132 = alloca { i64, ptr }
  %l133 = alloca i64
  %l134 = alloca { i64, ptr }
  %l140 = alloca { i64, ptr }
  %l141 = alloca i64
  %l142 = alloca { i64, ptr }
  %l144 = alloca i64
  %s0 = alloca %olang.scope
  %s9 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Match", ptr %t1, i32 0, i32 0
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
  br label %bb7
bb3:
  br label %bb4
bb4:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %l33, !tbaa !27
  %t19 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr ptr, ptr %t22, i64 %t19
  %t24 = load ptr, ptr %t23, !tbaa !39
  %t26 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2estmt(ptr %v0, ptr %v1, ptr %t26, ptr %t24)
  br label %bb5
bb5:
  br label %bb6
bb6:
  %t30 = load i64, ptr %l3, !tbaa !24
  %t32 = add i64 %t30, 1
  store i64 %t32, ptr %l3, !tbaa !24
  br label %bb1
bb7:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = call { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2esave(ptr %v0, ptr %s0, ptr %t34)
  store { i64, ptr } %t36, ptr %l41
  br label %bb8
bb8:
  %t37 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t38 = extractvalue { i64, ptr } %t37, 0
  store i64 %t38, ptr %l42, !tbaa !24
  %t39 = load i64, ptr %l42, !tbaa !24
  %t40 = mul i64 %t39, 1
  %t41 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t40)
  %t42 = insertvalue { i64, ptr } undef, i64 %t39, 0
  %t43 = insertvalue { i64, ptr } %t42, ptr %t41, 1
  store { i64, ptr } %t43, ptr %l43, !tbaa !27
  %t44 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !27
  %t46 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = load i64, ptr %l42, !tbaa !24
  %t49 = mul i64 %t48, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t45, ptr %t47, i64 %t49, i1 false)
  %t50 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t50, ptr %l6, !tbaa !27
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = call { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2esave(ptr %v0, ptr %s0, ptr %t51)
  store { i64, ptr } %t53, ptr %l45
  br label %bb9
bb9:
  %t54 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t55 = extractvalue { i64, ptr } %t54, 0
  store i64 %t55, ptr %l46, !tbaa !24
  %t56 = load i64, ptr %l46, !tbaa !24
  %t57 = mul i64 %t56, 1
  %t58 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t57)
  %t59 = insertvalue { i64, ptr } undef, i64 %t56, 0
  %t60 = insertvalue { i64, ptr } %t59, ptr %t58, 1
  store { i64, ptr } %t60, ptr %l47, !tbaa !27
  %t61 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !27
  %t63 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !27
  %t65 = load i64, ptr %l46, !tbaa !24
  %t66 = mul i64 %t65, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t62, ptr %t64, i64 %t66, i1 false)
  %t67 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t67, ptr %l7, !tbaa !27
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/typed:dropWalk", ptr %t68, i32 0, i32 2
  %t72 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t70)
  store i64 %t72, ptr %l50
  br label %bb10
bb10:
  %t73 = load i64, ptr %l50, !tbaa !24
  %t74 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !27
  %t76 = getelementptr i1, ptr %t75, i64 %t73
  store i1 true, ptr %t76, !tbaa !31
  %t77 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aArm_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t77, ptr %l51
  br label %bb11
bb11:
  %t78 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l51
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t78, ptr %l8
  %t79 = load ptr, ptr %l1, !tbaa !29
  %t81 = getelementptr %"compiler/typed:Match", ptr %t79, i32 0, i32 1
  %t82 = load { i64, ptr }, ptr %t81, !tbaa !27
  store { i64, ptr } %t82, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t84 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t86 = extractvalue { i64, ptr } %t84, 0
  store i64 %t86, ptr %l11, !tbaa !24
  br label %bb12
bb12:
  %t88 = load i64, ptr %l10, !tbaa !24
  %t89 = load i64, ptr %l11, !tbaa !24
  %t92 = icmp slt i64 %t88, %t89
  %t94 = xor i1 %t92, true
  br i1 %t94, label %bb13, label %bb14
bb13:
  br label %bb18
bb14:
  br label %bb15
bb15:
  %t96 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t96, ptr %l60, !tbaa !27
  %t97 = load i64, ptr %l10, !tbaa !24
  %t99 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !27
  %t101 = getelementptr ptr, ptr %t100, i64 %t97
  %t102 = load ptr, ptr %t101, !tbaa !39
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aArm_26_3e_2ePush_3ccompiler_2ftyped_3aArm_26_3e(ptr %s0, ptr %v1, ptr %l8, ptr %t102)
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t107 = load i64, ptr %l10, !tbaa !24
  %t109 = add i64 %t107, 1
  store i64 %t109, ptr %l10, !tbaa !24
  br label %bb12
bb18:
  %t111 = load ptr, ptr %l1, !tbaa !29
  %t113 = getelementptr %"compiler/typed:Match", ptr %t111, i32 0, i32 2
  %t114 = load ptr, ptr %t113, !tbaa !29
  %t116 = icmp eq ptr %t114, null
  %t118 = xor i1 %t116, true
  br i1 %t118, label %bb19, label %bb20
bb19:
  store ptr %l8, ptr %l71, !tbaa !29
  %t120 = load ptr, ptr %l1, !tbaa !29
  %t122 = getelementptr %"compiler/typed:Match", ptr %t120, i32 0, i32 2
  %t123 = load ptr, ptr %t122, !tbaa !29
  %t125 = icmp eq ptr %t123, null
  br i1 %t125, label %bb21, label %bb22
bb20:
  br label %bb25
bb21:
  call void @__olang_check_failed(ptr @olang_loc_f5a8870640a369c_e3a704984aad8c8)
  unreachable
bb22:
  br label %bb23
bb23:
  %t127 = load ptr, ptr %l1, !tbaa !29
  %t129 = getelementptr %"compiler/typed:Match", ptr %t127, i32 0, i32 2
  %t130 = load ptr, ptr %t129, !tbaa !29
  %t131 = load ptr, ptr %l71, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aArm_26_3e_2ePush_3ccompiler_2ftyped_3aArm_26_3e(ptr %s0, ptr %v1, ptr %t131, ptr %t130)
  br label %bb24
bb24:
  br label %bb25
bb25:
  store ptr %l8, ptr %l13, !tbaa !29
  store i64 0, ptr %l14, !tbaa !24
  br label %bb26
bb26:
  store %olang.scope zeroinitializer, ptr %s9
  %t134 = load i64, ptr %l14, !tbaa !24
  store i64 %t134, ptr %l78, !tbaa !24
  %t135 = load ptr, ptr %l13, !tbaa !29
  %t137 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aArm_26_3e_2eLen_3ccompiler_2ftyped_3aArm_26_3e(ptr %s0, ptr %t135)
  store i64 %t137, ptr %l80
  br label %bb27
bb27:
  %t138 = load i64, ptr %l78, !tbaa !24
  %t139 = load i64, ptr %l80, !tbaa !24
  %t140 = icmp slt i64 %t138, %t139
  %t142 = xor i1 %t140, true
  br i1 %t142, label %bb28, label %bb29
bb28:
  call void @__olang_scope_close(ptr %s9)
  br label %bb58
bb29:
  br label %bb30
bb30:
  %t144 = load ptr, ptr %l13, !tbaa !29
  %t145 = load i64, ptr %l14, !tbaa !24
  %t148 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aArm_26_3e_2eAt_3ccompiler_2ftyped_3aArm_26_3e(ptr %s0, ptr %s0, ptr %t144, i64 %t145)
  store ptr %t148, ptr %l85
  br label %bb31
bb31:
  %t149 = load ptr, ptr %l85, !tbaa !29
  store ptr %t149, ptr %l15, !tbaa !29
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t151 = load { i64, ptr }, ptr %l6, !tbaa !27
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2erestore(ptr %v0, ptr %s0, ptr %t150, { i64, ptr } %t151)
  br label %bb32
bb32:
  %t154 = load ptr, ptr %l15, !tbaa !29
  %t156 = getelementptr %"compiler/typed:Arm", ptr %t154, i32 0, i32 1
  %t157 = load { i64, ptr }, ptr %t156, !tbaa !27
  store { i64, ptr } %t157, ptr %l16, !tbaa !27
  store i64 0, ptr %l17, !tbaa !24
  %t159 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t161 = extractvalue { i64, ptr } %t159, 0
  store i64 %t161, ptr %l18, !tbaa !24
  br label %bb33
bb33:
  %t163 = load i64, ptr %l17, !tbaa !24
  %t164 = load i64, ptr %l18, !tbaa !24
  %t167 = icmp slt i64 %t163, %t164
  %t169 = xor i1 %t167, true
  br i1 %t169, label %bb34, label %bb35
bb34:
  br label %bb46
bb35:
  br label %bb36
bb36:
  %t171 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t171, ptr %l96, !tbaa !27
  %t172 = load i64, ptr %l17, !tbaa !24
  %t174 = getelementptr { i64, ptr }, ptr %l96, i32 0, i32 1
  %t175 = load ptr, ptr %t174, !tbaa !27
  %t176 = getelementptr ptr, ptr %t175, i64 %t172
  %t177 = load ptr, ptr %t176, !tbaa !39
  store ptr %t177, ptr %l19, !tbaa !29
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t180 = load ptr, ptr %l19, !tbaa !29
  %t182 = getelementptr %"compiler/typed:Alt", ptr %t180, i32 0, i32 0
  %t183 = load ptr, ptr %t182, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eexpr(ptr %v0, ptr %s0, ptr %t179, ptr %t183)
  br label %bb37
bb37:
  %t187 = load ptr, ptr %l19, !tbaa !29
  %t189 = getelementptr %"compiler/typed:Alt", ptr %t187, i32 0, i32 1
  %t190 = load { i64, ptr }, ptr %t189, !tbaa !27
  store { i64, ptr } %t190, ptr %l20, !tbaa !27
  store i64 0, ptr %l21, !tbaa !24
  %t192 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t194 = extractvalue { i64, ptr } %t192, 0
  store i64 %t194, ptr %l22, !tbaa !24
  br label %bb38
bb38:
  %t196 = load i64, ptr %l21, !tbaa !24
  %t197 = load i64, ptr %l22, !tbaa !24
  %t200 = icmp slt i64 %t196, %t197
  %t202 = xor i1 %t200, true
  br i1 %t202, label %bb39, label %bb40
bb39:
  br label %bb44
bb40:
  br label %bb41
bb41:
  %t204 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t204, ptr %l111, !tbaa !27
  %t205 = load i64, ptr %l21, !tbaa !24
  %t207 = getelementptr { i64, ptr }, ptr %l111, i32 0, i32 1
  %t208 = load ptr, ptr %t207, !tbaa !27
  %t209 = getelementptr ptr, ptr %t208, i64 %t205
  %t210 = load ptr, ptr %t209, !tbaa !39
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t215 = getelementptr %"compiler/typed:Bind", ptr %t210, i32 0, i32 1
  %t216 = load ptr, ptr %t215, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eexpr(ptr %v0, ptr %s0, ptr %t212, ptr %t216)
  br label %bb42
bb42:
  br label %bb43
bb43:
  %t220 = load i64, ptr %l21, !tbaa !24
  %t222 = add i64 %t220, 1
  store i64 %t222, ptr %l21, !tbaa !24
  br label %bb38
bb44:
  br label %bb45
bb45:
  %t224 = load i64, ptr %l17, !tbaa !24
  %t226 = add i64 %t224, 1
  store i64 %t226, ptr %l17, !tbaa !24
  br label %bb33
bb46:
  %t228 = load ptr, ptr %l0, !tbaa !29
  %t229 = load ptr, ptr %l15, !tbaa !29
  %t231 = getelementptr %"compiler/typed:Arm", ptr %t229, i32 0, i32 2
  %t232 = load ptr, ptr %t231, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eexpr(ptr %v0, ptr %s0, ptr %t228, ptr %t232)
  br label %bb47
bb47:
  %t235 = load ptr, ptr %l0, !tbaa !29
  %t236 = load ptr, ptr %l15, !tbaa !29
  %t238 = getelementptr %"compiler/typed:Arm", ptr %t236, i32 0, i32 3
  %t239 = load ptr, ptr %t238, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eblock(ptr %v0, ptr %s0, ptr %t235, ptr %t239)
  br label %bb48
bb48:
  %t242 = load ptr, ptr %l0, !tbaa !29
  %t243 = load ptr, ptr %l15, !tbaa !29
  %t245 = getelementptr %"compiler/typed:Arm", ptr %t243, i32 0, i32 4
  %t246 = load ptr, ptr %t245, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eexpr(ptr %v0, ptr %s0, ptr %t242, ptr %t246)
  br label %bb49
bb49:
  %t249 = load ptr, ptr %l0, !tbaa !29
  %t251 = call { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2esave(ptr %v0, ptr %s9, ptr %t249)
  store { i64, ptr } %t251, ptr %l132
  br label %bb50
bb50:
  %t252 = load { i64, ptr }, ptr %l132, !tbaa !27
  %t253 = extractvalue { i64, ptr } %t252, 0
  store i64 %t253, ptr %l133, !tbaa !24
  %t254 = load i64, ptr %l133, !tbaa !24
  %t255 = mul i64 %t254, 1
  %t256 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t255)
  %t257 = insertvalue { i64, ptr } undef, i64 %t254, 0
  %t258 = insertvalue { i64, ptr } %t257, ptr %t256, 1
  store { i64, ptr } %t258, ptr %l134, !tbaa !27
  %t259 = getelementptr { i64, ptr }, ptr %l134, i32 0, i32 1
  %t260 = load ptr, ptr %t259, !tbaa !27
  %t261 = getelementptr { i64, ptr }, ptr %l132, i32 0, i32 1
  %t262 = load ptr, ptr %t261, !tbaa !27
  %t263 = load i64, ptr %l133, !tbaa !24
  %t264 = mul i64 %t263, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t260, ptr %t262, i64 %t264, i1 false)
  %t265 = load { i64, ptr }, ptr %l134, !tbaa !27
  store { i64, ptr } %t265, ptr %l24, !tbaa !27
  %t266 = load ptr, ptr %l0, !tbaa !29
  %t267 = load { i64, ptr }, ptr %l7, !tbaa !27
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2erestore(ptr %v0, ptr %s0, ptr %t266, { i64, ptr } %t267)
  br label %bb51
bb51:
  %t270 = load ptr, ptr %l0, !tbaa !29
  %t271 = load { i64, ptr }, ptr %l24, !tbaa !27
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2ejoin(ptr %v0, ptr %s9, ptr %t270, { i64, ptr } %t271)
  br label %bb52
bb52:
  %t274 = load ptr, ptr %l0, !tbaa !29
  %t276 = call { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2esave(ptr %v0, ptr %s0, ptr %t274)
  store { i64, ptr } %t276, ptr %l140
  br label %bb53
bb53:
  %t277 = load { i64, ptr }, ptr %l140, !tbaa !27
  %t278 = extractvalue { i64, ptr } %t277, 0
  store i64 %t278, ptr %l141, !tbaa !24
  %t279 = load i64, ptr %l141, !tbaa !24
  %t280 = mul i64 %t279, 1
  %t281 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t280)
  %t282 = insertvalue { i64, ptr } undef, i64 %t279, 0
  %t283 = insertvalue { i64, ptr } %t282, ptr %t281, 1
  store { i64, ptr } %t283, ptr %l142, !tbaa !27
  %t284 = getelementptr { i64, ptr }, ptr %l142, i32 0, i32 1
  %t285 = load ptr, ptr %t284, !tbaa !27
  %t286 = getelementptr { i64, ptr }, ptr %l140, i32 0, i32 1
  %t287 = load ptr, ptr %t286, !tbaa !27
  %t288 = load i64, ptr %l141, !tbaa !24
  %t289 = mul i64 %t288, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t285, ptr %t287, i64 %t289, i1 false)
  %t290 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t291 = extractvalue { i64, ptr } %t290, 0
  %t292 = load { i64, ptr }, ptr %l142, !tbaa !27
  %t293 = extractvalue { i64, ptr } %t292, 0
  store i64 %t293, ptr %l144, !tbaa !24
  %t295 = load i64, ptr %l144, !tbaa !24
  %t296 = icmp eq i64 %t291, %t295
  br i1 %t296, label %bb54, label %bb55
bb54:
  %t298 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t299 = load ptr, ptr %t298, !tbaa !27
  %t300 = getelementptr { i64, ptr }, ptr %l142, i32 0, i32 1
  %t301 = load ptr, ptr %t300, !tbaa !27
  %t302 = load i64, ptr %l144, !tbaa !24
  %t303 = mul i64 %t302, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t299, ptr %t301, i64 %t303, i1 false)
  br label %bb56
bb55:
  %t304 = load { i64, ptr }, ptr %l142, !tbaa !27
  store { i64, ptr } %t304, ptr %l7, !tbaa !27
  br label %bb56
bb56:
  call void @__olang_scope_close(ptr %s9)
  br label %bb57
bb57:
  %t305 = load i64, ptr %l14, !tbaa !24
  %t307 = add i64 %t305, 1
  store i64 %t307, ptr %l14, !tbaa !24
  br label %bb26
bb58:
  %t309 = load ptr, ptr %l0, !tbaa !29
  %t310 = load { i64, ptr }, ptr %l7, !tbaa !27
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2erestore(ptr %v0, ptr %s0, ptr %t309, { i64, ptr } %t310)
  br label %bb59
bb59:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eplace(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
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
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eexpr(ptr %v0, ptr %v1, ptr %t20, ptr %t21)
  br label %bb9
bb9:
  br label %bb44
bb10:
  %t25 = load ptr, ptr %l1, !tbaa !29
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
  %t34 = load ptr, ptr %l1, !tbaa !29
  %t36 = getelementptr { i64, [4 x i64] }, ptr %t34, i32 0, i32 1
  %t37 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t36, i32 0, i32 2
  %t38 = load ptr, ptr %t37
  store ptr %t38, ptr %l3, !tbaa !29
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eplace(ptr %v0, ptr %v1, ptr %t40, ptr %t41)
  br label %bb16
bb16:
  br label %bb44
bb17:
  %t45 = load ptr, ptr %l1, !tbaa !29
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
  %t54 = load ptr, ptr %l1, !tbaa !29
  %t56 = getelementptr { i64, [4 x i64] }, ptr %t54, i32 0, i32 1
  %t57 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t56, i32 0, i32 2
  %t58 = load ptr, ptr %t57
  store ptr %t58, ptr %l4, !tbaa !29
  br label %bb22
bb21:
  br label %bb25
bb22:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load ptr, ptr %l4, !tbaa !29
  %t63 = getelementptr %"compiler/typed:Elem", ptr %t61, i32 0, i32 0
  %t64 = load ptr, ptr %t63, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eplace(ptr %v0, ptr %v1, ptr %t60, ptr %t64)
  br label %bb23
bb23:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load ptr, ptr %l4, !tbaa !29
  %t71 = getelementptr %"compiler/typed:Elem", ptr %t69, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eexpr(ptr %v0, ptr %v1, ptr %t68, ptr %t72)
  br label %bb24
bb24:
  br label %bb44
bb25:
  %t76 = load ptr, ptr %l1, !tbaa !29
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
  %t85 = load ptr, ptr %l1, !tbaa !29
  %t87 = getelementptr { i64, [4 x i64] }, ptr %t85, i32 0, i32 1
  %t88 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t87, i32 0, i32 2
  %t89 = load ptr, ptr %t88
  store ptr %t89, ptr %l5, !tbaa !29
  br label %bb30
bb29:
  br label %bb32
bb30:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load ptr, ptr %l5, !tbaa !29
  %t94 = getelementptr %"compiler/typed:Payload", ptr %t92, i32 0, i32 0
  %t95 = load ptr, ptr %t94, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eplace(ptr %v0, ptr %v1, ptr %t91, ptr %t95)
  br label %bb31
bb31:
  br label %bb44
bb32:
  %t99 = load ptr, ptr %l1, !tbaa !29
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
  %t108 = load ptr, ptr %l1, !tbaa !29
  %t110 = getelementptr { i64, [4 x i64] }, ptr %t108, i32 0, i32 1
  %t111 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t110, i32 0, i32 2
  %t112 = load ptr, ptr %t111
  store ptr %t112, ptr %l6, !tbaa !29
  br label %bb37
bb36:
  br label %bb39
bb37:
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t115 = load ptr, ptr %l6, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eexpr(ptr %v0, ptr %v1, ptr %t114, ptr %t115)
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
  call void @__olang_check_failed(ptr @olang_loc_c533040496e87321_52fb908a3762307d)
  unreachable
bb44:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2erestore(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l10 = alloca i64
  %l14 = alloca i64
  %l17 = alloca i64
  %l38 = alloca { i64, ptr }
  %l43 = alloca ptr
  %l44 = alloca { i64, ptr }
  %l47 = alloca i64
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:dropWalk", ptr %t1, i32 0, i32 2
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t3)
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
  br label %bb14
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
  %t55 = getelementptr %"compiler/typed:dropWalk", ptr %t53, i32 0, i32 2
  %t56 = load i64, ptr %l7, !tbaa !24
  %t57 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t57, ptr %l38, !tbaa !27
  %t58 = load i64, ptr %l7, !tbaa !24
  %t60 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !27
  %t62 = getelementptr i1, ptr %t61, i64 %t58
  %t63 = load i1, ptr %t62, !tbaa !31
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t55, i64 %t56, i1 %t63)
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t67 = load i64, ptr %l6, !tbaa !24
  %t69 = add i64 %t67, 1
  store i64 %t69, ptr %l6, !tbaa !24
  br label %bb8
bb14:
  %t71 = load ptr, ptr %l0, !tbaa !29
  store ptr %t71, ptr %l43, !tbaa !29
  %t72 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t72, ptr %l44, !tbaa !27
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/typed:dropWalk", ptr %t73, i32 0, i32 2
  %t77 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t75)
  store i64 %t77, ptr %l47
  br label %bb15
bb15:
  %t78 = load i64, ptr %l47, !tbaa !24
  %t79 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !27
  %t81 = getelementptr i1, ptr %t80, i64 %t78
  %t82 = load i1, ptr %t81, !tbaa !31
  %t84 = load ptr, ptr %l43, !tbaa !29
  %t85 = getelementptr %"compiler/typed:dropWalk", ptr %t84, i32 0, i32 3
  store i1 %t82, ptr %t85, !tbaa !21
  br label %ret
ret:
  ret void
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2earm(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1) #0 {
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
  %l25 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l34 = alloca { i64, ptr }
  %l37 = alloca ptr
  %l41 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l42 = alloca ptr
  %l47 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l56 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l63 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
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
  store %olang.scope zeroinitializer, ptr %s2
  %t10 = load i64, ptr %l3, !tbaa !24
  %t11 = load i64, ptr %l4, !tbaa !24
  %t14 = icmp slt i64 %t10, %t11
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s2)
  br label %bb16
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
  %t34 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2erefs(ptr %v0, ptr %v1, ptr %s2, ptr %v3, ptr %v4, ptr %t26, ptr %t30)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t34, ptr %l25
  br label %bb5
bb5:
  %t35 = load ptr, ptr %l5, !tbaa !29
  %t37 = getelementptr %"compiler/typed:Alt", ptr %t35, i32 0, i32 1
  %t38 = load { i64, ptr }, ptr %t37, !tbaa !27
  store { i64, ptr } %t38, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t40 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t42 = extractvalue { i64, ptr } %t40, 0
  store i64 %t42, ptr %l8, !tbaa !24
  br label %bb6
bb6:
  store %olang.scope zeroinitializer, ptr %s4
  %t44 = load i64, ptr %l7, !tbaa !24
  %t45 = load i64, ptr %l8, !tbaa !24
  %t48 = icmp slt i64 %t44, %t45
  %t50 = xor i1 %t48, true
  br i1 %t50, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s4)
  br label %bb14
bb8:
  br label %bb9
bb9:
  %t52 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t52, ptr %l34, !tbaa !27
  %t53 = load i64, ptr %l7, !tbaa !24
  %t55 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !27
  %t57 = getelementptr ptr, ptr %t56, i64 %t53
  %t58 = load ptr, ptr %t57, !tbaa !39
  store ptr %t58, ptr %l9, !tbaa !29
  %t60 = load ptr, ptr %l0, !tbaa !29
  store ptr %t60, ptr %l37, !tbaa !29
  %t61 = load ptr, ptr %l9, !tbaa !29
  %t63 = getelementptr %"compiler/typed:Bind", ptr %t61, i32 0, i32 0
  %t64 = load i32, ptr %t63, !tbaa !23
  %t66 = sext i32 %t64 to i64
  %t68 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2eone(ptr %s4, i64 %t66)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t68, ptr %l41
  br label %bb10
bb10:
  %t69 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l41
  %t70 = call ptr @__olang_scope_alloc_a(ptr %s4, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t69, ptr %t70
  store ptr %t70, ptr %l42, !tbaa !29
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = load ptr, ptr %l9, !tbaa !29
  %t74 = getelementptr %"compiler/typed:Bind", ptr %t72, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !29
  %t79 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2etyped(ptr %v0, ptr %v1, ptr %s4, ptr %v3, ptr %v4, ptr %t71, ptr %t75)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t79, ptr %l47
  br label %bb11
bb11:
  %t80 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l47
  %t81 = call ptr @__olang_scope_alloc_a(ptr %s4, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t80, ptr %t81
  %t82 = load ptr, ptr %l37, !tbaa !29
  %t83 = load ptr, ptr %l42, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2estore(ptr %v0, ptr %s4, ptr %s4, ptr %v4, ptr %v3, ptr %t82, ptr %t83, ptr %t81)
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s4)
  br label %bb13
bb13:
  %t85 = load i64, ptr %l7, !tbaa !24
  %t87 = add i64 %t85, 1
  store i64 %t87, ptr %l7, !tbaa !24
  br label %bb6
bb14:
  call void @__olang_scope_close(ptr %s2)
  br label %bb15
bb15:
  %t89 = load i64, ptr %l3, !tbaa !24
  %t91 = add i64 %t89, 1
  store i64 %t91, ptr %l3, !tbaa !24
  br label %bb1
bb16:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t94 = load ptr, ptr %l1, !tbaa !29
  %t96 = getelementptr %"compiler/typed:Arm", ptr %t94, i32 0, i32 2
  %t97 = load ptr, ptr %t96, !tbaa !29
  %t100 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2erefs(ptr %v0, ptr %v1, ptr %s0, ptr %v3, ptr %v4, ptr %t93, ptr %t97)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t100, ptr %l56
  br label %bb17
bb17:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load ptr, ptr %l1, !tbaa !29
  %t104 = getelementptr %"compiler/typed:Arm", ptr %t102, i32 0, i32 3
  %t105 = load ptr, ptr %t104, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eblock(ptr %v0, ptr %v1, ptr %v3, ptr %v4, ptr %t101, ptr %t105)
  br label %bb18
bb18:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t109 = load ptr, ptr %l1, !tbaa !29
  %t111 = getelementptr %"compiler/typed:Arm", ptr %t109, i32 0, i32 4
  %t112 = load ptr, ptr %t111, !tbaa !29
  %t115 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2erefs(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %t108, ptr %t112)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t115, ptr %l63
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s0)
  %t116 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l63
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t116, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local i1 @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eencloses(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l13 = alloca ptr
  %l15 = alloca i64
  %l20 = alloca i64
  %l23 = alloca i64
  %l50 = alloca ptr
  %l54 = alloca %"compiler/typed:BlockInfo"
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i32 %a2, ptr %l3, !tbaa !23
  store i64 0, ptr %l4, !tbaa !24
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/typed:holdWalk", ptr %t3, i32 0, i32 1
  %t6 = load ptr, ptr %t5, !tbaa !29
  %t8 = getelementptr %"compiler/typed:Body", ptr %t6, i32 0, i32 8
  store ptr %t8, ptr %l13, !tbaa !29
  %t9 = load ptr, ptr %l13, !tbaa !29
  %t10 = call ptr @__olang_scope_or(ptr %v1, ptr %t9)
  %t11 = ptrtoint ptr %t10 to i64
  %t13 = inttoptr i64 %t11 to ptr
  %t14 = load ptr, ptr %l13, !tbaa !29
  %t15 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2eLen__Hdc799a0fe091f8e84d50200d058b631d(ptr %t13, ptr %t14)
  store i64 %t15, ptr %l15
  br label %bb1
bb1:
  %t16 = load i64, ptr %l15, !tbaa !24
  %t17 = add i64 %t16, 1
  store i64 %t17, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t19 = load i64, ptr %l5, !tbaa !24
  %t20 = load i64, ptr %l4, !tbaa !24
  %t23 = icmp sgt i64 %t19, %t20
  br i1 %t23, label %bb2, label %bb3
bb2:
  %t25 = load i64, ptr %l6, !tbaa !24
  %t27 = icmp sgt i64 %t25, 0
  br i1 %t27, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb7
bb4:
  %t29 = load i64, ptr %l5, !tbaa !24
  %t30 = load i64, ptr %l4, !tbaa !24
  %t33 = sub i64 %t29, %t30
  %t34 = load i64, ptr %l6, !tbaa !24
  %t37 = add i64 %t33, %t34
  %t39 = sub i64 %t37, 1
  %t40 = load i64, ptr %l6, !tbaa !24
  %t43 = sdiv i64 %t39, %t40
  store i64 %t43, ptr %l23, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb6
bb6:
  %t45 = load i64, ptr %l23, !tbaa !24
  store i64 %t45, ptr %l20, !tbaa !24
  br label %bb7
bb7:
  %t46 = load i64, ptr %l20, !tbaa !24
  store i64 %t46, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb8
bb8:
  %t47 = load i64, ptr %l8, !tbaa !24
  %t48 = load i64, ptr %l7, !tbaa !24
  %t51 = icmp slt i64 %t47, %t48
  %t53 = xor i1 %t51, true
  br i1 %t53, label %bb9, label %bb10
bb9:
  br label %bb20
bb10:
  br label %bb11
bb11:
  %t55 = load i64, ptr %l4, !tbaa !24
  %t56 = load i64, ptr %l8, !tbaa !24
  %t57 = load i64, ptr %l6, !tbaa !24
  %t60 = mul i64 %t56, %t57
  %t63 = add i64 %t55, %t60
  store i64 %t63, ptr %l9, !tbaa !24
  %t65 = load i32, ptr %l3, !tbaa !23
  %t69 = icmp eq i32 %t65, %a1
  br i1 %t69, label %bb12, label %bb13
bb12:
  store i1 true, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t72 = load i32, ptr %l3, !tbaa !23
  %t74 = icmp slt i32 %t72, 0
  br i1 %t74, label %bb15, label %bb16
bb15:
  store i1 false, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/typed:holdWalk", ptr %t77, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !29
  %t82 = getelementptr %"compiler/typed:Body", ptr %t80, i32 0, i32 8
  store ptr %t82, ptr %l50, !tbaa !29
  %t83 = load i32, ptr %l3, !tbaa !23
  %t85 = sext i32 %t83 to i64
  %t86 = load ptr, ptr %l50, !tbaa !29
  %t87 = call ptr @__olang_scope_or(ptr %v1, ptr %t86)
  %t88 = ptrtoint ptr %t87 to i64
  %t90 = inttoptr i64 %t88 to ptr
  %t91 = load ptr, ptr %l50, !tbaa !29
  %t93 = call %"compiler/typed:BlockInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2eAt_3ccompiler_2ftyped_3aBlockInfo_3e(ptr %t90, ptr %t91, i64 %t85)
  store %"compiler/typed:BlockInfo" %t93, ptr %l54
  br label %bb18
bb18:
  %t94 = getelementptr %"compiler/typed:BlockInfo", ptr %l54, i32 0, i32 0
  %t95 = load i32, ptr %t94, !tbaa !23
  store i32 %t95, ptr %l3, !tbaa !23
  br label %bb19
bb19:
  %t97 = load i64, ptr %l8, !tbaa !24
  %t99 = add i64 %t97, 1
  store i64 %t99, ptr %l8, !tbaa !24
  br label %bb8
bb20:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eheld(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca i32
  %lp6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca i1
  %l24 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l25 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l28 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l30 = alloca i64
  %l32 = alloca i64
  %l37 = alloca i64
  %l38 = alloca ptr
  %l42 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l44 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 6
  store i1 %t8, ptr %l11, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l11, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l2
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t18, i32 0, i32 1
  %t20 = load i32, ptr %t19
  store i32 %t20, ptr %l3, !tbaa !23
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = getelementptr { i64, [4 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t24, i32 0, i32 2
  %t26 = load ptr, ptr %t25
  store ptr %t26, ptr %l4, !tbaa !29
  %t28 = load ptr, ptr %l1, !tbaa !29
  %t30 = getelementptr { i64, [4 x i64] }, ptr %t28, i32 0, i32 1
  %t31 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t30, i32 0, i32 3
  %t32 = load i32, ptr %t31
  store i32 %t32, ptr %l5, !tbaa !23
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load ptr, ptr %l1, !tbaa !29
  %t38 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2estorage(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %t34, ptr %t35)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t38, ptr %l24
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t39 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l24
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t39, ptr %rv
  br label %ret
bb6:
  %t40 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t40, ptr %l25
  br label %bb7
bb7:
  %t41 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t41, ptr %lp6
  %t42 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l25
  %t43 = load ptr, ptr %lp6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t42, ptr %t43
  store %olang.scope zeroinitializer, ptr %s2
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t45 = load ptr, ptr %l1, !tbaa !29
  %t48 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2estorage(ptr %v0, ptr %v1, ptr %s2, ptr %v3, ptr %v4, ptr %t44, ptr %t45)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t48, ptr %l28
  br label %bb8
bb8:
  %t49 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l28
  %t50 = call ptr @__olang_scope_alloc_a(ptr %s2, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t49, ptr %t50
  store ptr %t50, ptr %l7, !tbaa !29
  store i64 0, ptr %l8, !tbaa !24
  br label %bb9
bb9:
  store %olang.scope zeroinitializer, ptr %s3
  %t52 = load i64, ptr %l8, !tbaa !24
  store i64 %t52, ptr %l30, !tbaa !24
  %t53 = load ptr, ptr %l7, !tbaa !29
  %t55 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s2, ptr %t53)
  store i64 %t55, ptr %l32
  br label %bb10
bb10:
  %t56 = load i64, ptr %l30, !tbaa !24
  %t57 = load i64, ptr %l32, !tbaa !24
  %t58 = icmp slt i64 %t56, %t57
  %t60 = xor i1 %t58, true
  br i1 %t60, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s3)
  br label %bb19
bb12:
  br label %bb13
bb13:
  %t62 = load ptr, ptr %l7, !tbaa !29
  %t63 = load i64, ptr %l8, !tbaa !24
  %t66 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s2, ptr %t62, i64 %t63)
  store i64 %t66, ptr %l37
  br label %bb14
bb14:
  %t67 = load i64, ptr %l37, !tbaa !24
  %t68 = load ptr, ptr %lp6
  store ptr %t68, ptr %l38, !tbaa !29
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/typed:holdWalk", ptr %t69, i32 0, i32 2
  %t75 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H7b6d4eff6fc9c3821aae8b284e12e095(ptr %v0, ptr %v0, ptr %t71, i64 %t67)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t75, ptr %l42
  br label %bb15
bb15:
  %t77 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %l42)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t77, ptr %l44
  br label %bb16
bb16:
  %t78 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l44
  %t79 = call ptr @__olang_scope_alloc_a(ptr %s3, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t78, ptr %t79
  %t80 = load ptr, ptr %l38, !tbaa !29
  call void @compiler_2ftyped_2eunion(ptr %v2, ptr %v0, ptr %t80, ptr %t79)
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s3)
  br label %bb18
bb18:
  %t82 = load i64, ptr %l8, !tbaa !24
  %t84 = add i64 %t82, 1
  store i64 %t84, ptr %l8, !tbaa !24
  br label %bb9
bb19:
  call void @__olang_scope_close(ptr %s2)
  %t86 = load ptr, ptr %lp6
  %t87 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t86
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t87, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2etempGiven(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca i64
  %l16 = alloca ptr
  %l17 = alloca i32
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca i64
  %l24 = alloca i64
  %l27 = alloca i64
  %l48 = alloca ptr
  %l49 = alloca ptr
  %l52 = alloca ptr
  %l54 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l56 = alloca { i64, ptr }
  %l57 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l59 = alloca i64
  %l61 = alloca i64
  %l66 = alloca i64
  %l70 = alloca i1
  %l71 = alloca i1
  %l73 = alloca ptr
  %l74 = alloca i32
  %l77 = alloca i32
  %l79 = alloca i1
  %l80 = alloca i1
  %l83 = alloca i1
  %l92 = alloca i64
  %l95 = alloca ptr
  %l98 = alloca ptr
  %l99 = alloca %"compiler/source:Span"
  %l104 = alloca ptr
  %l106 = alloca i32
  %l108 = alloca ptr
  %l110 = alloca ptr
  %l113 = alloca i32
  %l116 = alloca i32
  %l118 = alloca ptr
  %l121 = alloca i32
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v1, ptr %v1, ptr %t1, i64 %t2)
  store ptr %t5, ptr %l16
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l16, !tbaa !29
  %t7 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t6)
  store i32 %t7, ptr %l17
  br label %bb2
bb2:
  %t8 = load i32, ptr %l17, !tbaa !23
  store i32 %t8, ptr %l3, !tbaa !23
  %t9 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %l18
  br label %bb3
bb3:
  %t10 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %l4
  store i64 0, ptr %l5, !tbaa !24
  %t11 = load ptr, ptr %l2, !tbaa !29
  %t13 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v1, ptr %t11)
  store i64 %t13, ptr %l20
  br label %bb4
bb4:
  %t14 = load i64, ptr %l20, !tbaa !24
  store i64 %t14, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t15 = load i64, ptr %l6, !tbaa !24
  %t16 = load i64, ptr %l5, !tbaa !24
  %t19 = icmp sgt i64 %t15, %t16
  br i1 %t19, label %bb5, label %bb6
bb5:
  %t21 = load i64, ptr %l7, !tbaa !24
  %t23 = icmp sgt i64 %t21, 0
  br i1 %t23, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb10
bb7:
  %t25 = load i64, ptr %l6, !tbaa !24
  %t26 = load i64, ptr %l5, !tbaa !24
  %t29 = sub i64 %t25, %t26
  %t30 = load i64, ptr %l7, !tbaa !24
  %t33 = add i64 %t29, %t30
  %t35 = sub i64 %t33, 1
  %t36 = load i64, ptr %l7, !tbaa !24
  %t39 = sdiv i64 %t35, %t36
  store i64 %t39, ptr %l27, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l27, !tbaa !24
  br label %bb9
bb9:
  %t41 = load i64, ptr %l27, !tbaa !24
  store i64 %t41, ptr %l24, !tbaa !24
  br label %bb10
bb10:
  %t42 = load i64, ptr %l24, !tbaa !24
  store i64 %t42, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb11
bb11:
  %t43 = load i64, ptr %l9, !tbaa !24
  %t44 = load i64, ptr %l8, !tbaa !24
  %t47 = icmp slt i64 %t43, %t44
  %t49 = xor i1 %t47, true
  br i1 %t49, label %bb12, label %bb13
bb12:
  br label %bb45
bb13:
  br label %bb14
bb14:
  %t51 = load i64, ptr %l5, !tbaa !24
  %t52 = load i64, ptr %l9, !tbaa !24
  %t53 = load i64, ptr %l7, !tbaa !24
  %t56 = mul i64 %t52, %t53
  %t59 = add i64 %t51, %t56
  store i64 %t59, ptr %l10, !tbaa !24
  %t61 = load i64, ptr %l10, !tbaa !24
  %t62 = load i64, ptr %l1, !tbaa !24
  %t65 = icmp eq i64 %t61, %t62
  br i1 %t65, label %bb15, label %bb16
bb15:
  br label %bb44
bb16:
  br label %bb17
bb17:
  store %olang.scope zeroinitializer, ptr %s4
  %t67 = load ptr, ptr %l0, !tbaa !29
  store ptr %t67, ptr %l48, !tbaa !29
  %t68 = load ptr, ptr %l0, !tbaa !29
  store ptr %t68, ptr %l49, !tbaa !29
  %t69 = load ptr, ptr %l2, !tbaa !29
  %t70 = load i64, ptr %l10, !tbaa !24
  %t73 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v1, ptr %s4, ptr %t69, i64 %t70)
  store ptr %t73, ptr %l52
  br label %bb18
bb18:
  %t74 = load ptr, ptr %l52, !tbaa !29
  %t75 = load ptr, ptr %l49, !tbaa !29
  %t77 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2etyped(ptr %v0, ptr %s4, ptr %s4, ptr %v2, ptr %v3, ptr %t75, ptr %t74)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t77, ptr %l54
  br label %bb19
bb19:
  %t78 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l54
  %t79 = call ptr @__olang_scope_alloc_a(ptr %s4, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t78, ptr %t79
  %t81 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %s4, ptr %s4, ptr %t79)
  store { i64, ptr } %t81, ptr %l56
  br label %bb20
bb20:
  %t82 = load ptr, ptr %l48, !tbaa !29
  %t83 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t84 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eclosure(ptr %v0, ptr %s4, ptr %s4, ptr %t82, { i64, ptr } %t83)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t84, ptr %l57
  br label %bb21
bb21:
  %t85 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l57
  %t86 = call ptr @__olang_scope_alloc_a(ptr %s4, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t85, ptr %t86
  store ptr %t86, ptr %l11, !tbaa !29
  store i64 0, ptr %l12, !tbaa !24
  br label %bb22
bb22:
  %t88 = load i64, ptr %l12, !tbaa !24
  store i64 %t88, ptr %l59, !tbaa !24
  %t89 = load ptr, ptr %l11, !tbaa !29
  %t91 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s4, ptr %t89)
  store i64 %t91, ptr %l61
  br label %bb23
bb23:
  %t92 = load i64, ptr %l59, !tbaa !24
  %t93 = load i64, ptr %l61, !tbaa !24
  %t94 = icmp slt i64 %t92, %t93
  %t96 = xor i1 %t94, true
  br i1 %t96, label %bb24, label %bb25
bb24:
  br label %bb43
bb25:
  br label %bb26
bb26:
  %t98 = load ptr, ptr %l11, !tbaa !29
  %t99 = load i64, ptr %l12, !tbaa !24
  %t102 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s4, ptr %t98, i64 %t99)
  store i64 %t102, ptr %l66
  br label %bb27
bb27:
  %t103 = load i64, ptr %l66, !tbaa !24
  store i64 %t103, ptr %l13, !tbaa !24
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/typed:holdWalk", ptr %t104, i32 0, i32 6
  %t107 = load i64, ptr %l13, !tbaa !24
  %t110 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %t106, i64 %t107)
  store i1 %t110, ptr %l70
  br label %bb28
bb28:
  %t111 = load i1, ptr %l70, !tbaa !21
  br i1 %t111, label %bb29, label %bb30
bb29:
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"compiler/typed:holdWalk", ptr %t112, i32 0, i32 0
  %t115 = load ptr, ptr %t114, !tbaa !29
  store ptr %t115, ptr %l73, !tbaa !29
  %t116 = load i32, ptr %l3, !tbaa !23
  store i32 %t116, ptr %l74, !tbaa !23
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t118 = load i64, ptr %l13, !tbaa !24
  %t121 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2estTy(ptr %v0, ptr %v3, ptr %v2, ptr %t117, i64 %t118)
  store i32 %t121, ptr %l77
  br label %bb31
bb30:
  store i1 false, ptr %l71, !tbaa !21
  br label %bb33
bb31:
  %t122 = load ptr, ptr %l73, !tbaa !29
  %t123 = call ptr @__olang_scope_or(ptr %v2, ptr %t122)
  %t124 = ptrtoint ptr %t123 to i64
  %t126 = inttoptr i64 %t124 to ptr
  %t127 = load ptr, ptr %l73, !tbaa !29
  %t128 = load i32, ptr %l74, !tbaa !23
  %t129 = load i32, ptr %l77, !tbaa !23
  %t130 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRefInto(ptr %t126, ptr %t127, i32 %t128, i32 %t129)
  store i1 %t130, ptr %l79
  br label %bb32
bb32:
  %t131 = load i1, ptr %l79, !tbaa !21
  store i1 %t131, ptr %l71, !tbaa !21
  br label %bb33
bb33:
  %t132 = load i1, ptr %l71, !tbaa !21
  br i1 %t132, label %bb34, label %bb35
bb34:
  %t133 = load i64, ptr %l13, !tbaa !24
  %t136 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %s0, ptr %l4, i64 %t133)
  store i1 %t136, ptr %l83
  br label %bb36
bb35:
  store i1 false, ptr %l80, !tbaa !21
  br label %bb37
bb36:
  %t137 = load i1, ptr %l83, !tbaa !21
  %t138 = xor i1 %t137, true
  store i1 %t138, ptr %l80, !tbaa !21
  br label %bb37
bb37:
  %t140 = load i1, ptr %l80, !tbaa !21
  br i1 %t140, label %bb38, label %bb39
bb38:
  %t141 = load i64, ptr %l13, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l4, i64 %t141)
  br label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb41
bb41:
  br label %bb42
bb42:
  %t144 = load i64, ptr %l12, !tbaa !24
  %t146 = add i64 %t144, 1
  store i64 %t146, ptr %l12, !tbaa !24
  br label %bb22
bb43:
  call void @__olang_scope_close(ptr %s4)
  br label %bb44
bb44:
  %t148 = load i64, ptr %l9, !tbaa !24
  %t150 = add i64 %t148, 1
  store i64 %t150, ptr %l9, !tbaa !24
  br label %bb11
bb45:
  %t153 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l4)
  store i64 %t153, ptr %l92
  br label %bb46
bb46:
  %t154 = load i64, ptr %l92, !tbaa !24
  %t155 = icmp eq i64 %t154, 0
  br i1 %t155, label %bb47, label %bb48
bb47:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb48:
  br label %bb49
bb49:
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t159 = getelementptr %"compiler/typed:holdWalk", ptr %t157, i32 0, i32 13
  store ptr %t159, ptr %l95, !tbaa !29
  %t160 = load ptr, ptr %l2, !tbaa !29
  %t161 = load i64, ptr %l1, !tbaa !24
  %t164 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v1, ptr %v1, ptr %t160, i64 %t161)
  store ptr %t164, ptr %l98
  br label %bb50
bb50:
  %t165 = load ptr, ptr %l98, !tbaa !29
  %t166 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t165)
  store %"compiler/source:Span" %t166, ptr %l99
  br label %bb51
bb51:
  %t167 = load ptr, ptr %l95, !tbaa !29
  %t168 = load %"compiler/source:Span", ptr %l99
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ePush_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t167, %"compiler/source:Span" %t168)
  br label %bb52
bb52:
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t171 = getelementptr %"compiler/typed:holdWalk", ptr %t169, i32 0, i32 14
  %t172 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l4
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H5a6912247a81ac1f46c16a43fcc4c44a(ptr %v0, ptr %s0, ptr %t171, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t172)
  br label %bb53
bb53:
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t177 = getelementptr %"compiler/typed:holdWalk", ptr %t175, i32 0, i32 15
  store ptr %t177, ptr %l104, !tbaa !29
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t180 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2einBlock(ptr %v0, ptr %t178)
  store i32 %t180, ptr %l106
  br label %bb54
bb54:
  %t181 = load ptr, ptr %l104, !tbaa !29
  %t182 = load i32, ptr %l106, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ePush_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t181, i32 %t182)
  br label %bb55
bb55:
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t185 = getelementptr %"compiler/typed:holdWalk", ptr %t183, i32 0, i32 16
  store ptr %t185, ptr %l108, !tbaa !29
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t188 = getelementptr %"compiler/typed:holdWalk", ptr %t186, i32 0, i32 0
  %t189 = load ptr, ptr %t188, !tbaa !29
  store ptr %t189, ptr %l110, !tbaa !29
  %t190 = load i32, ptr %l3, !tbaa !23
  %t191 = load ptr, ptr %l110, !tbaa !29
  %t192 = call ptr @__olang_scope_or(ptr %v2, ptr %t191)
  %t193 = ptrtoint ptr %t192 to i64
  %t195 = inttoptr i64 %t193 to ptr
  %t196 = load ptr, ptr %l110, !tbaa !29
  %t198 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %t195, ptr %t196, i32 %t190)
  store i32 %t198, ptr %l113
  br label %bb56
bb56:
  %t199 = load i32, ptr %l113, !range !{i32 0, i32 33}
  %t201 = trunc i64 20 to i32
  %t202 = icmp eq i32 %t199, %t201
  br i1 %t202, label %bb57, label %bb58
bb57:
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t206 = getelementptr %"compiler/typed:holdWalk", ptr %t204, i32 0, i32 0
  %t207 = load ptr, ptr %t206, !tbaa !29
  store ptr %t207, ptr %l118, !tbaa !29
  %t208 = load i32, ptr %l3, !tbaa !23
  %t209 = load ptr, ptr %l118, !tbaa !29
  %t210 = call ptr @__olang_scope_or(ptr %v2, ptr %t209)
  %t211 = ptrtoint ptr %t210 to i64
  %t213 = inttoptr i64 %t211 to ptr
  %t214 = load ptr, ptr %l118, !tbaa !29
  %t216 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %t213, ptr %t214, i32 %t208)
  store i32 %t216, ptr %l121
  br label %bb59
bb58:
  %t217 = load i32, ptr %l3, !tbaa !23
  store i32 %t217, ptr %l116, !tbaa !23
  br label %bb60
bb59:
  %t219 = load i32, ptr %l121, !tbaa !23
  store i32 %t219, ptr %l116, !tbaa !23
  br label %bb60
bb60:
  %t220 = load ptr, ptr %l108, !tbaa !29
  %t221 = load i32, ptr %l116, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t220, i32 %t221)
  br label %bb61
bb61:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2etyped(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %lp2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca i32
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l18 = alloca i64
  %l20 = alloca i64
  %l25 = alloca i64
  %l27 = alloca ptr
  %l28 = alloca i32
  %l31 = alloca i32
  %l33 = alloca i1
  %s2 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l7
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t2, ptr %lp2
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  %t4 = load ptr, ptr %lp2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t7 = icmp eq ptr %t5, null
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load ptr, ptr %lp2
  %t10 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t9
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t12 = load ptr, ptr %l1, !tbaa !29
  %t14 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t12)
  store i32 %t14, ptr %l12
  br label %bb5
bb5:
  %t15 = load i32, ptr %l12, !tbaa !23
  store i32 %t15, ptr %l3, !tbaa !23
  store %olang.scope zeroinitializer, ptr %s2
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load ptr, ptr %l1, !tbaa !29
  %t21 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2erefs(ptr %v0, ptr %v1, ptr %s2, ptr %v3, ptr %v4, ptr %t16, ptr %t17)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t21, ptr %l16
  br label %bb6
bb6:
  %t22 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16
  %t23 = call ptr @__olang_scope_alloc_a(ptr %s2, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t22, ptr %t23
  store ptr %t23, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb7
bb7:
  %t25 = load i64, ptr %l5, !tbaa !24
  store i64 %t25, ptr %l18, !tbaa !24
  %t26 = load ptr, ptr %l4, !tbaa !29
  %t28 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s2, ptr %t26)
  store i64 %t28, ptr %l20
  br label %bb8
bb8:
  %t29 = load i64, ptr %l18, !tbaa !24
  %t30 = load i64, ptr %l20, !tbaa !24
  %t31 = icmp slt i64 %t29, %t30
  %t33 = xor i1 %t31, true
  br i1 %t33, label %bb9, label %bb10
bb9:
  br label %bb20
bb10:
  br label %bb11
bb11:
  %t35 = load ptr, ptr %l4, !tbaa !29
  %t36 = load i64, ptr %l5, !tbaa !24
  %t39 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s2, ptr %t35, i64 %t36)
  store i64 %t39, ptr %l25
  br label %bb12
bb12:
  %t40 = load i64, ptr %l25, !tbaa !24
  store i64 %t40, ptr %l6, !tbaa !24
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/typed:holdWalk", ptr %t41, i32 0, i32 0
  %t44 = load ptr, ptr %t43, !tbaa !29
  store ptr %t44, ptr %l27, !tbaa !29
  %t45 = load i32, ptr %l3, !tbaa !23
  store i32 %t45, ptr %l28, !tbaa !23
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load i64, ptr %l6, !tbaa !24
  %t50 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2estTy(ptr %v0, ptr %v4, ptr %v3, ptr %t46, i64 %t47)
  store i32 %t50, ptr %l31
  br label %bb13
bb13:
  %t51 = load ptr, ptr %l27, !tbaa !29
  %t52 = call ptr @__olang_scope_or(ptr %v3, ptr %t51)
  %t53 = ptrtoint ptr %t52 to i64
  %t55 = inttoptr i64 %t53 to ptr
  %t56 = load ptr, ptr %l27, !tbaa !29
  %t57 = load i32, ptr %l28, !tbaa !23
  %t58 = load i32, ptr %l31, !tbaa !23
  %t59 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRefInto(ptr %t55, ptr %t56, i32 %t57, i32 %t58)
  store i1 %t59, ptr %l33
  br label %bb14
bb14:
  %t60 = load i1, ptr %l33, !tbaa !21
  br i1 %t60, label %bb15, label %bb16
bb15:
  %t61 = load ptr, ptr %lp2
  %t62 = load i64, ptr %l6, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v2, ptr %t61, i64 %t62)
  br label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t65 = load i64, ptr %l5, !tbaa !24
  %t67 = add i64 %t65, 1
  store i64 %t67, ptr %l5, !tbaa !24
  br label %bb7
bb20:
  call void @__olang_scope_close(ptr %s2)
  %t69 = load ptr, ptr %lp2
  %t70 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t69
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t70, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2estmtLeaves(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca i1
  %l14 = alloca ptr
  %l15 = alloca i1
  %l18 = alloca ptr
  %l19 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca i1
  %l26 = alloca ptr
  %l27 = alloca i1
  %l30 = alloca ptr
  %l31 = alloca i1
  %l39 = alloca i1
  %l41 = alloca ptr
  %l42 = alloca i1
  %l47 = alloca ptr
  %l48 = alloca i1
  %l53 = alloca ptr
  %l54 = alloca i1
  %l62 = alloca i1
  %l63 = alloca ptr
  %l64 = alloca i1
  %l73 = alloca i1
  %l74 = alloca i1
  %l78 = alloca i1
  %l79 = alloca ptr
  %l80 = alloca i1
  %l89 = alloca i1
  %l90 = alloca i1
  %l95 = alloca i1
  %l96 = alloca i1
  %l100 = alloca i1
  %l101 = alloca ptr
  %l102 = alloca i1
  %l112 = alloca i1
  %l113 = alloca ptr
  %l114 = alloca i1
  %l117 = alloca ptr
  %l118 = alloca i1
  %l121 = alloca ptr
  %l122 = alloca i1
  %l130 = alloca i1
  %l131 = alloca ptr
  %l132 = alloca i1
  %l140 = alloca i1
  %l141 = alloca ptr
  %l142 = alloca i1
  %l149 = alloca i1
  %l152 = alloca i1
  %l154 = alloca i1
  %l159 = alloca i1
  %l160 = alloca i1
  %l164 = alloca i1
  %l165 = alloca ptr
  %l166 = alloca i1
  %l175 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 17}
  %t8 = icmp eq i64 %t6, 6
  store i1 %t8, ptr %l15, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l15, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb17
bb4:
  %t10 = load ptr, ptr %l1, !tbaa !29
  store ptr %t10, ptr %l18, !tbaa !29
  store i1 false, ptr %l19, !tbaa !21
  %t11 = load ptr, ptr %l18, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb5, label %bb6
bb5:
  %t14 = load ptr, ptr %l18, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 17}
  %t17 = icmp eq i64 %t15, 7
  store i1 %t17, ptr %l19, !tbaa !21
  br label %bb6
bb6:
  %t18 = load i1, ptr %l19, !tbaa !21
  br i1 %t18, label %bb7, label %bb8
bb7:
  br label %bb17
bb8:
  %t19 = load ptr, ptr %l1, !tbaa !29
  store ptr %t19, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t20 = load ptr, ptr %l22, !tbaa !29
  %t21 = icmp ne ptr %t20, null
  br i1 %t21, label %bb9, label %bb10
bb9:
  %t23 = load ptr, ptr %l22, !tbaa !29
  %t24 = load i64, ptr %t23, !range !{i64 0, i64 17}
  %t26 = icmp eq i64 %t24, 8
  store i1 %t26, ptr %l23, !tbaa !21
  br label %bb10
bb10:
  %t27 = load i1, ptr %l23, !tbaa !21
  br i1 %t27, label %bb11, label %bb12
bb11:
  br label %bb17
bb12:
  %t28 = load ptr, ptr %l1, !tbaa !29
  store ptr %t28, ptr %l26, !tbaa !29
  store i1 false, ptr %l27, !tbaa !21
  %t29 = load ptr, ptr %l26, !tbaa !29
  %t30 = icmp ne ptr %t29, null
  br i1 %t30, label %bb13, label %bb14
bb13:
  %t32 = load ptr, ptr %l26, !tbaa !29
  %t33 = load i64, ptr %t32, !range !{i64 0, i64 17}
  %t35 = icmp eq i64 %t33, 16
  store i1 %t35, ptr %l27, !tbaa !21
  br label %bb14
bb14:
  %t36 = load i1, ptr %l27, !tbaa !21
  br i1 %t36, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb18
bb17:
  store i1 true, ptr %l13, !tbaa !21
  br label %bb123
bb18:
  %t37 = load ptr, ptr %l1, !tbaa !29
  store ptr %t37, ptr %l30, !tbaa !29
  store i1 false, ptr %l31, !tbaa !21
  %t38 = load ptr, ptr %l30, !tbaa !29
  %t39 = icmp ne ptr %t38, null
  br i1 %t39, label %bb19, label %bb20
bb19:
  %t41 = load ptr, ptr %l30, !tbaa !29
  %t42 = load i64, ptr %t41, !range !{i64 0, i64 17}
  %t44 = icmp eq i64 %t42, 5
  store i1 %t44, ptr %l31, !tbaa !21
  br label %bb20
bb20:
  %t45 = load i1, ptr %l31, !tbaa !21
  br i1 %t45, label %bb21, label %bb22
bb21:
  %t46 = load ptr, ptr %l1, !tbaa !29
  %t48 = getelementptr { i64, [3 x i64] }, ptr %t46, i32 0, i32 1
  %t49 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t48, i32 0, i32 2
  %t50 = load i32, ptr %t49
  store i32 %t50, ptr %l2, !tbaa !23
  br label %bb23
bb22:
  br label %bb25
bb23:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/typed:leaveWalk", ptr %t52, i32 0, i32 0
  %t55 = load i32, ptr %l2, !tbaa !23
  %t58 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eHas_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t54, i32 %t55)
  store i1 %t58, ptr %l39
  br label %bb24
bb24:
  %t59 = load i1, ptr %l39, !tbaa !21
  %t60 = xor i1 %t59, true
  store i1 %t60, ptr %l13, !tbaa !21
  br label %bb123
bb25:
  %t62 = load ptr, ptr %l1, !tbaa !29
  store ptr %t62, ptr %l41, !tbaa !29
  store i1 false, ptr %l42, !tbaa !21
  %t63 = load ptr, ptr %l41, !tbaa !29
  %t64 = icmp ne ptr %t63, null
  br i1 %t64, label %bb26, label %bb27
bb26:
  %t66 = load ptr, ptr %l41, !tbaa !29
  %t67 = load i64, ptr %t66, !range !{i64 0, i64 17}
  %t69 = icmp eq i64 %t67, 0
  store i1 %t69, ptr %l42, !tbaa !21
  br label %bb27
bb27:
  %t70 = load i1, ptr %l42, !tbaa !21
  br i1 %t70, label %bb28, label %bb29
bb28:
  %t71 = load ptr, ptr %l1, !tbaa !29
  %t73 = getelementptr { i64, [3 x i64] }, ptr %t71, i32 0, i32 1
  %t74 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t73, i32 0, i32 2
  %t75 = load ptr, ptr %t74
  store ptr %t75, ptr %l3, !tbaa !29
  br label %bb38
bb29:
  %t77 = load ptr, ptr %l1, !tbaa !29
  store ptr %t77, ptr %l47, !tbaa !29
  store i1 false, ptr %l48, !tbaa !21
  %t78 = load ptr, ptr %l47, !tbaa !29
  %t79 = icmp ne ptr %t78, null
  br i1 %t79, label %bb30, label %bb31
bb30:
  %t81 = load ptr, ptr %l47, !tbaa !29
  %t82 = load i64, ptr %t81, !range !{i64 0, i64 17}
  %t84 = icmp eq i64 %t82, 2
  store i1 %t84, ptr %l48, !tbaa !21
  br label %bb31
bb31:
  %t85 = load i1, ptr %l48, !tbaa !21
  br i1 %t85, label %bb32, label %bb33
bb32:
  %t86 = load ptr, ptr %l1, !tbaa !29
  %t88 = getelementptr { i64, [3 x i64] }, ptr %t86, i32 0, i32 1
  %t89 = getelementptr { %"compiler/source:Span", ptr }, ptr %t88, i32 0, i32 1
  %t90 = load ptr, ptr %t89
  store ptr %t90, ptr %l3, !tbaa !29
  br label %bb38
bb33:
  %t92 = load ptr, ptr %l1, !tbaa !29
  store ptr %t92, ptr %l53, !tbaa !29
  store i1 false, ptr %l54, !tbaa !21
  %t93 = load ptr, ptr %l53, !tbaa !29
  %t94 = icmp ne ptr %t93, null
  br i1 %t94, label %bb34, label %bb35
bb34:
  %t96 = load ptr, ptr %l53, !tbaa !29
  %t97 = load i64, ptr %t96, !range !{i64 0, i64 17}
  %t99 = icmp eq i64 %t97, 15
  store i1 %t99, ptr %l54, !tbaa !21
  br label %bb35
bb35:
  %t100 = load i1, ptr %l54, !tbaa !21
  br i1 %t100, label %bb36, label %bb37
bb36:
  %t101 = load ptr, ptr %l1, !tbaa !29
  %t103 = getelementptr { i64, [3 x i64] }, ptr %t101, i32 0, i32 1
  %t104 = getelementptr { %"compiler/source:Span", ptr }, ptr %t103, i32 0, i32 1
  %t105 = load ptr, ptr %t104
  store ptr %t105, ptr %l3, !tbaa !29
  br label %bb38
bb37:
  br label %bb40
bb38:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load ptr, ptr %l3, !tbaa !29
  %t112 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eexprLeaves(ptr %v0, ptr %v1, ptr %t107, ptr %t108)
  store i1 %t112, ptr %l62
  br label %bb39
bb39:
  %t113 = load i1, ptr %l62, !tbaa !21
  store i1 %t113, ptr %l13, !tbaa !21
  br label %bb123
bb40:
  %t114 = load ptr, ptr %l1, !tbaa !29
  store ptr %t114, ptr %l63, !tbaa !29
  store i1 false, ptr %l64, !tbaa !21
  %t115 = load ptr, ptr %l63, !tbaa !29
  %t116 = icmp ne ptr %t115, null
  br i1 %t116, label %bb41, label %bb42
bb41:
  %t118 = load ptr, ptr %l63, !tbaa !29
  %t119 = load i64, ptr %t118, !range !{i64 0, i64 17}
  %t121 = icmp eq i64 %t119, 1
  store i1 %t121, ptr %l64, !tbaa !21
  br label %bb42
bb42:
  %t122 = load i1, ptr %l64, !tbaa !21
  br i1 %t122, label %bb43, label %bb44
bb43:
  %t123 = load ptr, ptr %l1, !tbaa !29
  %t125 = getelementptr { i64, [3 x i64] }, ptr %t123, i32 0, i32 1
  %t126 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t125, i32 0, i32 1
  %t127 = load ptr, ptr %t126
  store ptr %t127, ptr %l4, !tbaa !29
  %t129 = load ptr, ptr %l1, !tbaa !29
  %t131 = getelementptr { i64, [3 x i64] }, ptr %t129, i32 0, i32 1
  %t132 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t131, i32 0, i32 2
  %t133 = load ptr, ptr %t132
  store ptr %t133, ptr %l5, !tbaa !29
  br label %bb45
bb44:
  br label %bb51
bb45:
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t136 = load ptr, ptr %l4, !tbaa !29
  %t139 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eplaceLeaves(ptr %v0, ptr %v1, ptr %t135, ptr %t136)
  store i1 %t139, ptr %l73
  br label %bb46
bb46:
  %t140 = load i1, ptr %l73, !tbaa !21
  br i1 %t140, label %bb47, label %bb48
bb47:
  store i1 true, ptr %l74, !tbaa !21
  br label %bb50
bb48:
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t142 = load ptr, ptr %l5, !tbaa !29
  %t146 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eexprLeaves(ptr %v0, ptr %v1, ptr %t141, ptr %t142)
  store i1 %t146, ptr %l78
  br label %bb49
bb49:
  %t147 = load i1, ptr %l78, !tbaa !21
  store i1 %t147, ptr %l74, !tbaa !21
  br label %bb50
bb50:
  %t148 = load i1, ptr %l74, !tbaa !21
  store i1 %t148, ptr %l13, !tbaa !21
  br label %bb123
bb51:
  %t149 = load ptr, ptr %l1, !tbaa !29
  store ptr %t149, ptr %l79, !tbaa !29
  store i1 false, ptr %l80, !tbaa !21
  %t150 = load ptr, ptr %l79, !tbaa !29
  %t151 = icmp ne ptr %t150, null
  br i1 %t151, label %bb52, label %bb53
bb52:
  %t153 = load ptr, ptr %l79, !tbaa !29
  %t154 = load i64, ptr %t153, !range !{i64 0, i64 17}
  %t156 = icmp eq i64 %t154, 3
  store i1 %t156, ptr %l80, !tbaa !21
  br label %bb53
bb53:
  %t157 = load i1, ptr %l80, !tbaa !21
  br i1 %t157, label %bb54, label %bb55
bb54:
  %t158 = load ptr, ptr %l1, !tbaa !29
  %t160 = getelementptr { i64, [3 x i64] }, ptr %t158, i32 0, i32 1
  %t161 = getelementptr { %"compiler/source:Span", ptr }, ptr %t160, i32 0, i32 1
  %t162 = load ptr, ptr %t161
  store ptr %t162, ptr %l6, !tbaa !29
  br label %bb56
bb55:
  br label %bb66
bb56:
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t165 = load ptr, ptr %l6, !tbaa !29
  %t167 = getelementptr %"compiler/typed:If", ptr %t165, i32 0, i32 0
  %t168 = load ptr, ptr %t167, !tbaa !29
  %t172 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eexprLeaves(ptr %v0, ptr %v1, ptr %t164, ptr %t168)
  store i1 %t172, ptr %l89
  br label %bb57
bb57:
  %t173 = load i1, ptr %l89, !tbaa !21
  br i1 %t173, label %bb58, label %bb59
bb58:
  store i1 true, ptr %l90, !tbaa !21
  br label %bb61
bb59:
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t175 = load ptr, ptr %l6, !tbaa !29
  %t177 = getelementptr %"compiler/typed:If", ptr %t175, i32 0, i32 1
  %t178 = load ptr, ptr %t177, !tbaa !29
  %t182 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eblockLeaves(ptr %v0, ptr %v1, ptr %t174, ptr %t178)
  store i1 %t182, ptr %l95
  br label %bb60
bb60:
  %t183 = load i1, ptr %l95, !tbaa !21
  store i1 %t183, ptr %l90, !tbaa !21
  br label %bb61
bb61:
  %t184 = load i1, ptr %l90, !tbaa !21
  br i1 %t184, label %bb62, label %bb63
bb62:
  store i1 true, ptr %l96, !tbaa !21
  br label %bb65
bb63:
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t186 = load ptr, ptr %l6, !tbaa !29
  %t188 = getelementptr %"compiler/typed:If", ptr %t186, i32 0, i32 2
  %t189 = load ptr, ptr %t188, !tbaa !29
  %t192 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eblockLeaves(ptr %v0, ptr %v1, ptr %t185, ptr %t189)
  store i1 %t192, ptr %l100
  br label %bb64
bb64:
  %t193 = load i1, ptr %l100, !tbaa !21
  store i1 %t193, ptr %l96, !tbaa !21
  br label %bb65
bb65:
  %t194 = load i1, ptr %l96, !tbaa !21
  store i1 %t194, ptr %l13, !tbaa !21
  br label %bb123
bb66:
  %t195 = load ptr, ptr %l1, !tbaa !29
  store ptr %t195, ptr %l101, !tbaa !29
  store i1 false, ptr %l102, !tbaa !21
  %t196 = load ptr, ptr %l101, !tbaa !29
  %t197 = icmp ne ptr %t196, null
  br i1 %t197, label %bb67, label %bb68
bb67:
  %t199 = load ptr, ptr %l101, !tbaa !29
  %t200 = load i64, ptr %t199, !range !{i64 0, i64 17}
  %t202 = icmp eq i64 %t200, 4
  store i1 %t202, ptr %l102, !tbaa !21
  br label %bb68
bb68:
  %t203 = load i1, ptr %l102, !tbaa !21
  br i1 %t203, label %bb69, label %bb70
bb69:
  %t204 = load ptr, ptr %l1, !tbaa !29
  %t206 = getelementptr { i64, [3 x i64] }, ptr %t204, i32 0, i32 1
  %t207 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t206, i32 0, i32 1
  %t208 = load ptr, ptr %t207
  store ptr %t208, ptr %l7, !tbaa !29
  %t210 = load ptr, ptr %l1, !tbaa !29
  %t212 = getelementptr { i64, [3 x i64] }, ptr %t210, i32 0, i32 1
  %t213 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t212, i32 0, i32 2
  %t214 = load ptr, ptr %t213
  store ptr %t214, ptr %l8, !tbaa !29
  br label %bb71
bb70:
  br label %bb73
bb71:
  %t216 = load ptr, ptr %l0, !tbaa !29
  %t217 = load ptr, ptr %l7, !tbaa !29
  %t218 = load ptr, ptr %l8, !tbaa !29
  %t222 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eloopLeaves(ptr %v0, ptr %v1, ptr %v1, ptr %t216, ptr %t217, ptr %t218)
  store i1 %t222, ptr %l112
  br label %bb72
bb72:
  %t223 = load i1, ptr %l112, !tbaa !21
  store i1 %t223, ptr %l13, !tbaa !21
  br label %bb123
bb73:
  %t224 = load ptr, ptr %l1, !tbaa !29
  store ptr %t224, ptr %l113, !tbaa !29
  store i1 false, ptr %l114, !tbaa !21
  %t225 = load ptr, ptr %l113, !tbaa !29
  %t226 = icmp ne ptr %t225, null
  br i1 %t226, label %bb74, label %bb75
bb74:
  %t228 = load ptr, ptr %l113, !tbaa !29
  %t229 = load i64, ptr %t228, !range !{i64 0, i64 17}
  %t231 = icmp eq i64 %t229, 9
  store i1 %t231, ptr %l114, !tbaa !21
  br label %bb75
bb75:
  %t232 = load i1, ptr %l114, !tbaa !21
  br i1 %t232, label %bb76, label %bb77
bb76:
  br label %bb82
bb77:
  %t233 = load ptr, ptr %l1, !tbaa !29
  store ptr %t233, ptr %l117, !tbaa !29
  store i1 false, ptr %l118, !tbaa !21
  %t234 = load ptr, ptr %l117, !tbaa !29
  %t235 = icmp ne ptr %t234, null
  br i1 %t235, label %bb78, label %bb79
bb78:
  %t237 = load ptr, ptr %l117, !tbaa !29
  %t238 = load i64, ptr %t237, !range !{i64 0, i64 17}
  %t240 = icmp eq i64 %t238, 10
  store i1 %t240, ptr %l118, !tbaa !21
  br label %bb79
bb79:
  %t241 = load i1, ptr %l118, !tbaa !21
  br i1 %t241, label %bb80, label %bb81
bb80:
  br label %bb82
bb81:
  br label %bb83
bb82:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb123
bb83:
  %t242 = load ptr, ptr %l1, !tbaa !29
  store ptr %t242, ptr %l121, !tbaa !29
  store i1 false, ptr %l122, !tbaa !21
  %t243 = load ptr, ptr %l121, !tbaa !29
  %t244 = icmp ne ptr %t243, null
  br i1 %t244, label %bb84, label %bb85
bb84:
  %t246 = load ptr, ptr %l121, !tbaa !29
  %t247 = load i64, ptr %t246, !range !{i64 0, i64 17}
  %t249 = icmp eq i64 %t247, 11
  store i1 %t249, ptr %l122, !tbaa !21
  br label %bb85
bb85:
  %t250 = load i1, ptr %l122, !tbaa !21
  br i1 %t250, label %bb86, label %bb87
bb86:
  %t251 = load ptr, ptr %l1, !tbaa !29
  %t253 = getelementptr { i64, [3 x i64] }, ptr %t251, i32 0, i32 1
  %t254 = getelementptr { %"compiler/source:Span", ptr }, ptr %t253, i32 0, i32 1
  %t255 = load ptr, ptr %t254
  store ptr %t255, ptr %l9, !tbaa !29
  br label %bb88
bb87:
  br label %bb90
bb88:
  %t257 = load ptr, ptr %l0, !tbaa !29
  %t258 = load ptr, ptr %l9, !tbaa !29
  %t262 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eopenLeaves(ptr %v0, ptr %v1, ptr %t257, ptr %t258)
  store i1 %t262, ptr %l130
  br label %bb89
bb89:
  %t263 = load i1, ptr %l130, !tbaa !21
  store i1 %t263, ptr %l13, !tbaa !21
  br label %bb123
bb90:
  %t264 = load ptr, ptr %l1, !tbaa !29
  store ptr %t264, ptr %l131, !tbaa !29
  store i1 false, ptr %l132, !tbaa !21
  %t265 = load ptr, ptr %l131, !tbaa !29
  %t266 = icmp ne ptr %t265, null
  br i1 %t266, label %bb91, label %bb92
bb91:
  %t268 = load ptr, ptr %l131, !tbaa !29
  %t269 = load i64, ptr %t268, !range !{i64 0, i64 17}
  %t271 = icmp eq i64 %t269, 12
  store i1 %t271, ptr %l132, !tbaa !21
  br label %bb92
bb92:
  %t272 = load i1, ptr %l132, !tbaa !21
  br i1 %t272, label %bb93, label %bb94
bb93:
  %t273 = load ptr, ptr %l1, !tbaa !29
  %t275 = getelementptr { i64, [3 x i64] }, ptr %t273, i32 0, i32 1
  %t276 = getelementptr { %"compiler/source:Span", ptr }, ptr %t275, i32 0, i32 1
  %t277 = load ptr, ptr %t276
  store ptr %t277, ptr %l10, !tbaa !29
  br label %bb95
bb94:
  br label %bb97
bb95:
  %t279 = load ptr, ptr %l0, !tbaa !29
  %t280 = load ptr, ptr %l10, !tbaa !29
  %t284 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eblockLeaves(ptr %v0, ptr %v1, ptr %t279, ptr %t280)
  store i1 %t284, ptr %l140
  br label %bb96
bb96:
  %t285 = load i1, ptr %l140, !tbaa !21
  store i1 %t285, ptr %l13, !tbaa !21
  br label %bb123
bb97:
  %t286 = load ptr, ptr %l1, !tbaa !29
  store ptr %t286, ptr %l141, !tbaa !29
  store i1 false, ptr %l142, !tbaa !21
  %t287 = load ptr, ptr %l141, !tbaa !29
  %t288 = icmp ne ptr %t287, null
  br i1 %t288, label %bb98, label %bb99
bb98:
  %t290 = load ptr, ptr %l141, !tbaa !29
  %t291 = load i64, ptr %t290, !range !{i64 0, i64 17}
  %t293 = icmp eq i64 %t291, 13
  store i1 %t293, ptr %l142, !tbaa !21
  br label %bb99
bb99:
  %t294 = load i1, ptr %l142, !tbaa !21
  br i1 %t294, label %bb100, label %bb101
bb100:
  %t295 = load ptr, ptr %l1, !tbaa !29
  %t297 = getelementptr { i64, [3 x i64] }, ptr %t295, i32 0, i32 1
  %t298 = getelementptr { %"compiler/source:Span", ptr }, ptr %t297, i32 0, i32 1
  %t299 = load ptr, ptr %t298
  store ptr %t299, ptr %l11, !tbaa !29
  br label %bb102
bb101:
  br label %bb115
bb102:
  %t301 = load ptr, ptr %l11, !tbaa !29
  %t303 = getelementptr %"compiler/typed:Join", ptr %t301, i32 0, i32 1
  %t304 = load i1, ptr %t303, !tbaa !21
  br i1 %t304, label %bb103, label %bb104
bb103:
  %t306 = load ptr, ptr %l11, !tbaa !29
  %t308 = getelementptr %"compiler/typed:Join", ptr %t306, i32 0, i32 2
  %t309 = load { i64, ptr }, ptr %t308, !tbaa !27
  %t311 = call i1 @compiler_2ftyped_2eclausesTakeAll(ptr %v1, { i64, ptr } %t309)
  store i1 %t311, ptr %l152
  br label %bb105
bb104:
  store i1 false, ptr %l149, !tbaa !21
  br label %bb106
bb105:
  %t312 = load i1, ptr %l152, !tbaa !21
  %t313 = xor i1 %t312, true
  store i1 %t313, ptr %l149, !tbaa !21
  br label %bb106
bb106:
  %t315 = load i1, ptr %l149, !tbaa !21
  br i1 %t315, label %bb107, label %bb108
bb107:
  store i1 true, ptr %l154, !tbaa !21
  br label %bb110
bb108:
  %t316 = load ptr, ptr %l0, !tbaa !29
  %t317 = load ptr, ptr %l11, !tbaa !29
  %t319 = getelementptr %"compiler/typed:Join", ptr %t317, i32 0, i32 0
  %t320 = load ptr, ptr %t319, !tbaa !29
  %t324 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eblockLeaves(ptr %v0, ptr %v1, ptr %t316, ptr %t320)
  store i1 %t324, ptr %l159
  br label %bb109
bb109:
  %t325 = load i1, ptr %l159, !tbaa !21
  store i1 %t325, ptr %l154, !tbaa !21
  br label %bb110
bb110:
  %t326 = load i1, ptr %l154, !tbaa !21
  br i1 %t326, label %bb111, label %bb112
bb111:
  store i1 true, ptr %l160, !tbaa !21
  br label %bb114
bb112:
  %t327 = load ptr, ptr %l0, !tbaa !29
  %t328 = load ptr, ptr %l11, !tbaa !29
  %t330 = getelementptr %"compiler/typed:Join", ptr %t328, i32 0, i32 2
  %t331 = load { i64, ptr }, ptr %t330, !tbaa !27
  %t334 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eclausesLeave(ptr %v0, ptr %v1, ptr %t327, { i64, ptr } %t331)
  store i1 %t334, ptr %l164
  br label %bb113
bb113:
  %t335 = load i1, ptr %l164, !tbaa !21
  store i1 %t335, ptr %l160, !tbaa !21
  br label %bb114
bb114:
  %t336 = load i1, ptr %l160, !tbaa !21
  store i1 %t336, ptr %l13, !tbaa !21
  br label %bb123
bb115:
  %t337 = load ptr, ptr %l1, !tbaa !29
  store ptr %t337, ptr %l165, !tbaa !29
  store i1 false, ptr %l166, !tbaa !21
  %t338 = load ptr, ptr %l165, !tbaa !29
  %t339 = icmp ne ptr %t338, null
  br i1 %t339, label %bb116, label %bb117
bb116:
  %t341 = load ptr, ptr %l165, !tbaa !29
  %t342 = load i64, ptr %t341, !range !{i64 0, i64 17}
  %t344 = icmp eq i64 %t342, 14
  store i1 %t344, ptr %l166, !tbaa !21
  br label %bb117
bb117:
  %t345 = load i1, ptr %l166, !tbaa !21
  br i1 %t345, label %bb118, label %bb119
bb118:
  %t346 = load ptr, ptr %l1, !tbaa !29
  %t348 = getelementptr { i64, [3 x i64] }, ptr %t346, i32 0, i32 1
  %t349 = getelementptr { %"compiler/source:Span", ptr }, ptr %t348, i32 0, i32 1
  %t350 = load ptr, ptr %t349
  store ptr %t350, ptr %l12, !tbaa !29
  br label %bb120
bb119:
  br label %bb122
bb120:
  %t352 = load ptr, ptr %l0, !tbaa !29
  %t353 = load ptr, ptr %l12, !tbaa !29
  %t355 = getelementptr %"compiler/typed:Spawn", ptr %t353, i32 0, i32 1
  %t356 = load ptr, ptr %t355, !tbaa !29
  %t360 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eexprLeaves(ptr %v0, ptr %v1, ptr %t352, ptr %t356)
  store i1 %t360, ptr %l175
  br label %bb121
bb121:
  %t361 = load i1, ptr %l175, !tbaa !21
  store i1 %t361, ptr %l13, !tbaa !21
  br label %bb123
bb122:
  call void @__olang_check_failed(ptr @olang_loc_d15cb06393d6b10c_f6dc2a2381fafcf0)
  unreachable
bb123:
  %t362 = load i1, ptr %l13, !tbaa !21
  store i1 %t362, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eplace(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca i32
  %l12 = alloca { i64, ptr }
  %l13 = alloca ptr
  %l14 = alloca i1
  %l21 = alloca ptr
  %l22 = alloca i1
  %l32 = alloca ptr
  %l33 = alloca i1
  %l41 = alloca { i64, ptr }
  %l43 = alloca ptr
  %l44 = alloca i1
  %l53 = alloca { i64, ptr }
  %l56 = alloca ptr
  %l57 = alloca i1
  %l65 = alloca { i64, ptr }
  %l70 = alloca { i64, ptr }
  %l72 = alloca ptr
  %l73 = alloca i1
  %l81 = alloca { i64, ptr }
  %l85 = alloca ptr
  %l86 = alloca i1
  %l96 = alloca { i64, ptr }
  %l99 = alloca ptr
  %l100 = alloca i1
  %l103 = alloca { i64, ptr }
  %l105 = alloca i64
  %l106 = alloca { i64, ptr }
  %s5 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t2 = load ptr, ptr %l13, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l13, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l14, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l14, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t16 = load i32, ptr %l2, !tbaa !23
  %t17 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) }, 1
  %t18 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  %t20 = sext i32 %t16 to i64
  %t21 = call i64 @__olang_fmt_i64(ptr null, i64 %t20)
  %t22 = add i64 %t18, %t21
  %t23 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t22)
  call void @olang_textcopy(ptr %t23, ptr %t17, i64 %t18)
  %t24 = getelementptr i8, ptr %t23, i64 %t18
  %t25 = call i64 @__olang_fmt_i64(ptr %t24, i64 %t20)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t23, 1
  store { i64, ptr } %t27, ptr %l12, !tbaa !27
  br label %bb55
bb6:
  %t29 = load ptr, ptr %l1, !tbaa !29
  store ptr %t29, ptr %l21, !tbaa !29
  store i1 false, ptr %l22, !tbaa !21
  %t30 = load ptr, ptr %l21, !tbaa !29
  %t31 = icmp ne ptr %t30, null
  br i1 %t31, label %bb7, label %bb8
bb7:
  %t33 = load ptr, ptr %l21, !tbaa !29
  %t34 = load i64, ptr %t33, !range !{i64 0, i64 8}
  %t36 = icmp eq i64 %t34, 1
  store i1 %t36, ptr %l22, !tbaa !21
  br label %bb8
bb8:
  %t37 = load i1, ptr %l22, !tbaa !21
  br i1 %t37, label %bb9, label %bb10
bb9:
  %t38 = load ptr, ptr %l1, !tbaa !29
  %t40 = getelementptr { i64, [4 x i64] }, ptr %t38, i32 0, i32 1
  %t41 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t40, i32 0, i32 2
  %t42 = load i64, ptr %t41
  store i64 %t42, ptr %l3, !tbaa !24
  %t44 = load ptr, ptr %l1, !tbaa !29
  %t46 = getelementptr { i64, [4 x i64] }, ptr %t44, i32 0, i32 1
  %t47 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t46, i32 0, i32 3
  %t48 = load i32, ptr %t47
  store i32 %t48, ptr %l4, !tbaa !23
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t50 = load i64, ptr %l3, !tbaa !24
  %t51 = load i32, ptr %l4, !tbaa !23
  %t52 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t53 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  %t55 = call i64 @__olang_fmt_i64(ptr null, i64 %t50)
  %t56 = add i64 %t53, %t55
  %t57 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t58 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  %t59 = add i64 %t56, %t58
  %t61 = sext i32 %t51 to i64
  %t62 = call i64 @__olang_fmt_i64(ptr null, i64 %t61)
  %t63 = add i64 %t59, %t62
  %t64 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t63)
  call void @olang_textcopy(ptr %t64, ptr %t52, i64 %t53)
  %t65 = getelementptr i8, ptr %t64, i64 %t53
  %t66 = call i64 @__olang_fmt_i64(ptr %t65, i64 %t50)
  %t67 = getelementptr i8, ptr %t65, i64 %t55
  call void @olang_textcopy(ptr %t67, ptr %t57, i64 %t58)
  %t68 = getelementptr i8, ptr %t67, i64 %t58
  %t69 = call i64 @__olang_fmt_i64(ptr %t68, i64 %t61)
  %t70 = insertvalue { i64, ptr } undef, i64 %t63, 0
  %t71 = insertvalue { i64, ptr } %t70, ptr %t64, 1
  store { i64, ptr } %t71, ptr %l12, !tbaa !27
  br label %bb55
bb12:
  %t73 = load ptr, ptr %l1, !tbaa !29
  store ptr %t73, ptr %l32, !tbaa !29
  store i1 false, ptr %l33, !tbaa !21
  %t74 = load ptr, ptr %l32, !tbaa !29
  %t75 = icmp ne ptr %t74, null
  br i1 %t75, label %bb13, label %bb14
bb13:
  %t77 = load ptr, ptr %l32, !tbaa !29
  %t78 = load i64, ptr %t77, !range !{i64 0, i64 8}
  %t80 = icmp eq i64 %t78, 2
  store i1 %t80, ptr %l33, !tbaa !21
  br label %bb14
bb14:
  %t81 = load i1, ptr %l33, !tbaa !21
  br i1 %t81, label %bb15, label %bb16
bb15:
  %t82 = load ptr, ptr %l1, !tbaa !29
  %t84 = getelementptr { i64, [4 x i64] }, ptr %t82, i32 0, i32 1
  %t85 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t84, i32 0, i32 2
  %t86 = load ptr, ptr %t85
  store ptr %t86, ptr %l5, !tbaa !29
  br label %bb17
bb16:
  br label %bb19
bb17:
  store %olang.scope zeroinitializer, ptr %s5
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t89 = load ptr, ptr %l5, !tbaa !29
  %t93 = call { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eexpr(ptr %v0, ptr %v1, ptr %s5, ptr %v3, ptr %t88, ptr %t89)
  store { i64, ptr } %t93, ptr %l41
  br label %bb18
bb18:
  %t94 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t95 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  %t96 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t97 = extractvalue { i64, ptr } %t96, 1
  %t98 = extractvalue { i64, ptr } %t96, 0
  %t99 = add i64 %t95, %t98
  %t100 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t99)
  call void @olang_textcopy(ptr %t100, ptr %t94, i64 %t95)
  %t101 = getelementptr i8, ptr %t100, i64 %t95
  call void @olang_textcopy(ptr %t101, ptr %t97, i64 %t98)
  %t102 = insertvalue { i64, ptr } undef, i64 %t99, 0
  %t103 = insertvalue { i64, ptr } %t102, ptr %t100, 1
  store { i64, ptr } %t103, ptr %l12, !tbaa !27
  call void @__olang_scope_close(ptr %s5)
  br label %bb55
bb19:
  %t105 = load ptr, ptr %l1, !tbaa !29
  store ptr %t105, ptr %l43, !tbaa !29
  store i1 false, ptr %l44, !tbaa !21
  %t106 = load ptr, ptr %l43, !tbaa !29
  %t107 = icmp ne ptr %t106, null
  br i1 %t107, label %bb20, label %bb21
bb20:
  %t109 = load ptr, ptr %l43, !tbaa !29
  %t110 = load i64, ptr %t109, !range !{i64 0, i64 8}
  %t112 = icmp eq i64 %t110, 3
  store i1 %t112, ptr %l44, !tbaa !21
  br label %bb21
bb21:
  %t113 = load i1, ptr %l44, !tbaa !21
  br i1 %t113, label %bb22, label %bb23
bb22:
  %t114 = load ptr, ptr %l1, !tbaa !29
  %t116 = getelementptr { i64, [4 x i64] }, ptr %t114, i32 0, i32 1
  %t117 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t116, i32 0, i32 2
  %t118 = load ptr, ptr %t117
  store ptr %t118, ptr %l6, !tbaa !29
  %t120 = load ptr, ptr %l1, !tbaa !29
  %t122 = getelementptr { i64, [4 x i64] }, ptr %t120, i32 0, i32 1
  %t123 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t122, i32 0, i32 3
  %t124 = load i64, ptr %t123
  store i64 %t124, ptr %l7, !tbaa !24
  br label %bb24
bb23:
  br label %bb26
bb24:
  store %olang.scope zeroinitializer, ptr %s7
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t127 = load ptr, ptr %l6, !tbaa !29
  %t130 = call { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eplace(ptr %v0, ptr %v1, ptr %s7, ptr %v3, ptr %t126, ptr %t127)
  store { i64, ptr } %t130, ptr %l53
  br label %bb25
bb25:
  %t131 = load i64, ptr %l7, !tbaa !24
  %t132 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t133 = extractvalue { i64, ptr } %t132, 1
  %t134 = extractvalue { i64, ptr } %t132, 0
  %t135 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t136 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t137 = add i64 %t134, %t136
  %t139 = call i64 @__olang_fmt_i64(ptr null, i64 %t131)
  %t140 = add i64 %t137, %t139
  %t141 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t140)
  call void @olang_textcopy(ptr %t141, ptr %t133, i64 %t134)
  %t142 = getelementptr i8, ptr %t141, i64 %t134
  call void @olang_textcopy(ptr %t142, ptr %t135, i64 %t136)
  %t143 = getelementptr i8, ptr %t142, i64 %t136
  %t144 = call i64 @__olang_fmt_i64(ptr %t143, i64 %t131)
  %t145 = insertvalue { i64, ptr } undef, i64 %t140, 0
  %t146 = insertvalue { i64, ptr } %t145, ptr %t141, 1
  store { i64, ptr } %t146, ptr %l12, !tbaa !27
  call void @__olang_scope_close(ptr %s7)
  br label %bb55
bb26:
  %t148 = load ptr, ptr %l1, !tbaa !29
  store ptr %t148, ptr %l56, !tbaa !29
  store i1 false, ptr %l57, !tbaa !21
  %t149 = load ptr, ptr %l56, !tbaa !29
  %t150 = icmp ne ptr %t149, null
  br i1 %t150, label %bb27, label %bb28
bb27:
  %t152 = load ptr, ptr %l56, !tbaa !29
  %t153 = load i64, ptr %t152, !range !{i64 0, i64 8}
  %t155 = icmp eq i64 %t153, 4
  store i1 %t155, ptr %l57, !tbaa !21
  br label %bb28
bb28:
  %t156 = load i1, ptr %l57, !tbaa !21
  br i1 %t156, label %bb29, label %bb30
bb29:
  %t157 = load ptr, ptr %l1, !tbaa !29
  %t159 = getelementptr { i64, [4 x i64] }, ptr %t157, i32 0, i32 1
  %t160 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t159, i32 0, i32 2
  %t161 = load ptr, ptr %t160
  store ptr %t161, ptr %l8, !tbaa !29
  br label %bb31
bb30:
  br label %bb34
bb31:
  store %olang.scope zeroinitializer, ptr %s9
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t164 = load ptr, ptr %l8, !tbaa !29
  %t166 = getelementptr %"compiler/typed:Elem", ptr %t164, i32 0, i32 0
  %t167 = load ptr, ptr %t166, !tbaa !29
  %t170 = call { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eplace(ptr %v0, ptr %v1, ptr %s9, ptr %v3, ptr %t163, ptr %t167)
  store { i64, ptr } %t170, ptr %l65
  br label %bb32
bb32:
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t172 = load ptr, ptr %l8, !tbaa !29
  %t174 = getelementptr %"compiler/typed:Elem", ptr %t172, i32 0, i32 1
  %t175 = load ptr, ptr %t174, !tbaa !29
  %t179 = call { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eexpr(ptr %v0, ptr %v1, ptr %s9, ptr %v3, ptr %t171, ptr %t175)
  store { i64, ptr } %t179, ptr %l70
  br label %bb33
bb33:
  %t180 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t181 = extractvalue { i64, ptr } %t180, 1
  %t182 = extractvalue { i64, ptr } %t180, 0
  %t183 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t184 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t185 = add i64 %t182, %t184
  %t186 = load { i64, ptr }, ptr %l70, !tbaa !27
  %t187 = extractvalue { i64, ptr } %t186, 1
  %t188 = extractvalue { i64, ptr } %t186, 0
  %t189 = add i64 %t185, %t188
  %t190 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t191 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  %t192 = add i64 %t189, %t191
  %t193 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t192)
  call void @olang_textcopy(ptr %t193, ptr %t181, i64 %t182)
  %t194 = getelementptr i8, ptr %t193, i64 %t182
  call void @olang_textcopy(ptr %t194, ptr %t183, i64 %t184)
  %t195 = getelementptr i8, ptr %t194, i64 %t184
  call void @olang_textcopy(ptr %t195, ptr %t187, i64 %t188)
  %t196 = getelementptr i8, ptr %t195, i64 %t188
  call void @olang_textcopy(ptr %t196, ptr %t190, i64 %t191)
  %t197 = insertvalue { i64, ptr } undef, i64 %t192, 0
  %t198 = insertvalue { i64, ptr } %t197, ptr %t193, 1
  store { i64, ptr } %t198, ptr %l12, !tbaa !27
  call void @__olang_scope_close(ptr %s9)
  br label %bb55
bb34:
  %t200 = load ptr, ptr %l1, !tbaa !29
  store ptr %t200, ptr %l72, !tbaa !29
  store i1 false, ptr %l73, !tbaa !21
  %t201 = load ptr, ptr %l72, !tbaa !29
  %t202 = icmp ne ptr %t201, null
  br i1 %t202, label %bb35, label %bb36
bb35:
  %t204 = load ptr, ptr %l72, !tbaa !29
  %t205 = load i64, ptr %t204, !range !{i64 0, i64 8}
  %t207 = icmp eq i64 %t205, 5
  store i1 %t207, ptr %l73, !tbaa !21
  br label %bb36
bb36:
  %t208 = load i1, ptr %l73, !tbaa !21
  br i1 %t208, label %bb37, label %bb38
bb37:
  %t209 = load ptr, ptr %l1, !tbaa !29
  %t211 = getelementptr { i64, [4 x i64] }, ptr %t209, i32 0, i32 1
  %t212 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t211, i32 0, i32 2
  %t213 = load ptr, ptr %t212
  store ptr %t213, ptr %l9, !tbaa !29
  br label %bb39
bb38:
  br label %bb41
bb39:
  store %olang.scope zeroinitializer, ptr %s11
  %t215 = load ptr, ptr %l0, !tbaa !29
  %t216 = load ptr, ptr %l9, !tbaa !29
  %t218 = getelementptr %"compiler/typed:Payload", ptr %t216, i32 0, i32 0
  %t219 = load ptr, ptr %t218, !tbaa !29
  %t222 = call { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eplace(ptr %v0, ptr %v1, ptr %s11, ptr %v3, ptr %t215, ptr %t219)
  store { i64, ptr } %t222, ptr %l81
  br label %bb40
bb40:
  %t223 = load ptr, ptr %l9, !tbaa !29
  %t225 = getelementptr %"compiler/typed:Payload", ptr %t223, i32 0, i32 1
  %t226 = load i64, ptr %t225, !tbaa !24
  %t227 = load { i64, ptr }, ptr %l81, !tbaa !27
  %t228 = extractvalue { i64, ptr } %t227, 1
  %t229 = extractvalue { i64, ptr } %t227, 0
  %t230 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t231 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  %t232 = add i64 %t229, %t231
  %t234 = call i64 @__olang_fmt_i64(ptr null, i64 %t226)
  %t235 = add i64 %t232, %t234
  %t236 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t235)
  call void @olang_textcopy(ptr %t236, ptr %t228, i64 %t229)
  %t237 = getelementptr i8, ptr %t236, i64 %t229
  call void @olang_textcopy(ptr %t237, ptr %t230, i64 %t231)
  %t238 = getelementptr i8, ptr %t237, i64 %t231
  %t239 = call i64 @__olang_fmt_i64(ptr %t238, i64 %t226)
  %t240 = insertvalue { i64, ptr } undef, i64 %t235, 0
  %t241 = insertvalue { i64, ptr } %t240, ptr %t236, 1
  store { i64, ptr } %t241, ptr %l12, !tbaa !27
  call void @__olang_scope_close(ptr %s11)
  br label %bb55
bb41:
  %t243 = load ptr, ptr %l1, !tbaa !29
  store ptr %t243, ptr %l85, !tbaa !29
  store i1 false, ptr %l86, !tbaa !21
  %t244 = load ptr, ptr %l85, !tbaa !29
  %t245 = icmp ne ptr %t244, null
  br i1 %t245, label %bb42, label %bb43
bb42:
  %t247 = load ptr, ptr %l85, !tbaa !29
  %t248 = load i64, ptr %t247, !range !{i64 0, i64 8}
  %t250 = icmp eq i64 %t248, 6
  store i1 %t250, ptr %l86, !tbaa !21
  br label %bb43
bb43:
  %t251 = load i1, ptr %l86, !tbaa !21
  br i1 %t251, label %bb44, label %bb45
bb44:
  %t252 = load ptr, ptr %l1, !tbaa !29
  %t254 = getelementptr { i64, [4 x i64] }, ptr %t252, i32 0, i32 1
  %t255 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t254, i32 0, i32 2
  %t256 = load ptr, ptr %t255
  store ptr %t256, ptr %l10, !tbaa !29
  %t258 = load ptr, ptr %l1, !tbaa !29
  %t260 = getelementptr { i64, [4 x i64] }, ptr %t258, i32 0, i32 1
  %t261 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t260, i32 0, i32 3
  %t262 = load i32, ptr %t261
  store i32 %t262, ptr %l11, !tbaa !23
  br label %bb46
bb45:
  br label %bb48
bb46:
  store %olang.scope zeroinitializer, ptr %s13
  %t264 = load ptr, ptr %l0, !tbaa !29
  %t265 = load ptr, ptr %l10, !tbaa !29
  %t269 = call { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eexpr(ptr %v0, ptr %v1, ptr %s13, ptr %v3, ptr %t264, ptr %t265)
  store { i64, ptr } %t269, ptr %l96
  br label %bb47
bb47:
  %t270 = load i32, ptr %l11, !tbaa !23
  %t271 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t272 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  %t273 = load { i64, ptr }, ptr %l96, !tbaa !27
  %t274 = extractvalue { i64, ptr } %t273, 1
  %t275 = extractvalue { i64, ptr } %t273, 0
  %t276 = add i64 %t272, %t275
  %t277 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t278 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  %t279 = add i64 %t276, %t278
  %t281 = sext i32 %t270 to i64
  %t282 = call i64 @__olang_fmt_i64(ptr null, i64 %t281)
  %t283 = add i64 %t279, %t282
  %t284 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t283)
  call void @olang_textcopy(ptr %t284, ptr %t271, i64 %t272)
  %t285 = getelementptr i8, ptr %t284, i64 %t272
  call void @olang_textcopy(ptr %t285, ptr %t274, i64 %t275)
  %t286 = getelementptr i8, ptr %t285, i64 %t275
  call void @olang_textcopy(ptr %t286, ptr %t277, i64 %t278)
  %t287 = getelementptr i8, ptr %t286, i64 %t278
  %t288 = call i64 @__olang_fmt_i64(ptr %t287, i64 %t281)
  %t289 = insertvalue { i64, ptr } undef, i64 %t283, 0
  %t290 = insertvalue { i64, ptr } %t289, ptr %t284, 1
  store { i64, ptr } %t290, ptr %l12, !tbaa !27
  call void @__olang_scope_close(ptr %s13)
  br label %bb55
bb48:
  %t292 = load ptr, ptr %l1, !tbaa !29
  store ptr %t292, ptr %l99, !tbaa !29
  store i1 false, ptr %l100, !tbaa !21
  %t293 = load ptr, ptr %l99, !tbaa !29
  %t294 = icmp ne ptr %t293, null
  br i1 %t294, label %bb49, label %bb50
bb49:
  %t296 = load ptr, ptr %l99, !tbaa !29
  %t297 = load i64, ptr %t296, !range !{i64 0, i64 8}
  %t299 = icmp eq i64 %t297, 7
  store i1 %t299, ptr %l100, !tbaa !21
  br label %bb50
bb50:
  %t300 = load i1, ptr %l100, !tbaa !21
  br i1 %t300, label %bb51, label %bb52
bb51:
  br label %bb53
bb52:
  br label %bb54
bb53:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d11, i32 0, i32 1) }, ptr %l103, !tbaa !27
  %t301 = load { i64, ptr }, ptr %l103, !tbaa !27
  store { i64, ptr } %t301, ptr %l12, !tbaa !27
  br label %bb55
bb54:
  call void @__olang_check_failed(ptr @olang_loc_16612f18a9afa54d_299c1e15a68a5059)
  unreachable
bb55:
  %t303 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t304 = extractvalue { i64, ptr } %t303, 0
  store i64 %t304, ptr %l105, !tbaa !24
  %t305 = load i64, ptr %l105, !tbaa !24
  %t306 = mul i64 %t305, 1
  %t307 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t306)
  %t308 = insertvalue { i64, ptr } undef, i64 %t305, 0
  %t309 = insertvalue { i64, ptr } %t308, ptr %t307, 1
  store { i64, ptr } %t309, ptr %l106, !tbaa !27
  %t310 = getelementptr { i64, ptr }, ptr %l106, i32 0, i32 1
  %t311 = load ptr, ptr %t310, !tbaa !27
  %t312 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t313 = load ptr, ptr %t312, !tbaa !27
  %t314 = load i64, ptr %l105, !tbaa !24
  %t315 = mul i64 %t314, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t311, ptr %t313, i64 %t315, i1 false)
  %t316 = load { i64, ptr }, ptr %l106, !tbaa !27
  store { i64, ptr } %t316, ptr %l12, !tbaa !27
  %t317 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t317, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2ftyped_2econstText(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l6 = alloca i1
  %l13 = alloca ptr
  %l14 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca i1
  %l29 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 3}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [2 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { i64 }, ptr %t12, i32 0, i32 0
  %t14 = load i64, ptr %t13
  store i64 %t14, ptr %l1, !tbaa !24
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t16 = load i64, ptr %l1, !tbaa !24
  %t18 = call i64 @__olang_fmt_i64(ptr null, i64 %t16)
  %t19 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t18)
  %t20 = call i64 @__olang_fmt_i64(ptr %t19, i64 %t16)
  %t21 = insertvalue { i64, ptr } undef, i64 %t18, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t19, 1
  store { i64, ptr } %t22, ptr %l4, !tbaa !27
  br label %bb20
bb6:
  %t24 = load ptr, ptr %l0, !tbaa !29
  store ptr %t24, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t25 = load ptr, ptr %l13, !tbaa !29
  %t26 = icmp ne ptr %t25, null
  br i1 %t26, label %bb7, label %bb8
bb7:
  %t28 = load ptr, ptr %l13, !tbaa !29
  %t29 = load i64, ptr %t28, !range !{i64 0, i64 3}
  %t31 = icmp eq i64 %t29, 1
  store i1 %t31, ptr %l14, !tbaa !21
  br label %bb8
bb8:
  %t32 = load i1, ptr %l14, !tbaa !21
  br i1 %t32, label %bb9, label %bb10
bb9:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr { i64, [2 x i64] }, ptr %t33, i32 0, i32 1
  %t36 = getelementptr { { i64, ptr } }, ptr %t35, i32 0, i32 0
  %t37 = load { i64, ptr }, ptr %t36
  store { i64, ptr } %t37, ptr %l2, !tbaa !27
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t39 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t39, 0
  %t42 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t43 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  %t45 = call i64 @__olang_fmt_i64(ptr null, i64 %t41)
  %t46 = add i64 %t43, %t45
  %t47 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t46)
  call void @olang_textcopy(ptr %t47, ptr %t42, i64 %t43)
  %t48 = getelementptr i8, ptr %t47, i64 %t43
  %t49 = call i64 @__olang_fmt_i64(ptr %t48, i64 %t41)
  %t50 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr %t47, 1
  store { i64, ptr } %t51, ptr %l4, !tbaa !27
  br label %bb20
bb12:
  %t53 = load ptr, ptr %l0, !tbaa !29
  store ptr %t53, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t54 = load ptr, ptr %l22, !tbaa !29
  %t55 = icmp ne ptr %t54, null
  br i1 %t55, label %bb13, label %bb14
bb13:
  %t57 = load ptr, ptr %l22, !tbaa !29
  %t58 = load i64, ptr %t57, !range !{i64 0, i64 3}
  %t60 = icmp eq i64 %t58, 2
  store i1 %t60, ptr %l23, !tbaa !21
  br label %bb14
bb14:
  %t61 = load i1, ptr %l23, !tbaa !21
  br i1 %t61, label %bb15, label %bb16
bb15:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr { i64, [2 x i64] }, ptr %t62, i32 0, i32 1
  %t65 = getelementptr { { i64, ptr } }, ptr %t64, i32 0, i32 0
  %t66 = load { i64, ptr }, ptr %t65
  store { i64, ptr } %t66, ptr %l3, !tbaa !27
  br label %bb17
bb16:
  br label %bb19
bb17:
  %t68 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t70 = call { i64, ptr } @compiler_2ftyped_2econstItems(ptr %v0, ptr %v1, { i64, ptr } %t68)
  store { i64, ptr } %t70, ptr %l29
  br label %bb18
bb18:
  %t71 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t71, ptr %l4, !tbaa !27
  br label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_411550143d3b0e9d_42067e02948bd729)
  unreachable
bb20:
  %t72 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t72, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2ftyped_2eexprsBreak(ptr %v0, { i64, ptr } %a0, i32 %a1) #0 {
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
  %t35 = call i1 @compiler_2ftyped_2eexprBreaks(ptr %v0, ptr %t28, i32 %a1)
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

define dso_local i64 @compiler_2ftyped_2emeetRoots(i64 %a0, i64 %a1) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca i64
  %l4 = alloca i1
  %l7 = alloca i64
  %rv = alloca i64
  store i64 %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l0, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l4, !tbaa !21
  br label %bb3
bb2:
  %t5 = load i64, ptr %l1, !tbaa !24
  %t7 = icmp slt i64 %t5, 0
  store i1 %t7, ptr %l4, !tbaa !21
  br label %bb3
bb3:
  %t9 = load i1, ptr %l4, !tbaa !21
  br i1 %t9, label %bb4, label %bb5
bb4:
  store i64 -1, ptr %l7, !tbaa !24
  br label %bb6
bb5:
  %t10 = load i64, ptr %l0, !tbaa !24
  %t11 = load i64, ptr %l1, !tbaa !24
  %t14 = or i64 %t10, %t11
  store i64 %t14, ptr %l7, !tbaa !24
  br label %bb6
bb6:
  %t16 = load i64, ptr %l7, !tbaa !24
  store i64 %t16, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2ftyped_2eshort(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i32
  %l7 = alloca { i64, ptr }
  %l9 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d13, i32 0, i32 1) })
  %t4 = extractvalue { i32, i64 } %t3, 1
  %t5 = extractvalue { i32, i64 } %t3, 0
  store i32 %t5, ptr %l5
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store i64 %t4, ptr %l4
  br label %bb1
bb1:
  %t8 = load i64, ptr %l4, !tbaa !24
  store i64 %t8, ptr %l2, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  %t9 = load { i64, ptr }, ptr %l0, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t9, ptr %rv
  br label %ret
bb4:
  %t11 = load i64, ptr %l2, !tbaa !24
  %t12 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t12, ptr %l7, !tbaa !27
  %t15 = add i64 %t11, 1
  store i64 %t15, ptr %l9, !tbaa !24
  %t16 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t16, 0
  store i64 %t19, ptr %l12, !tbaa !24
  %t20 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t20, 0
  store i64 %t21, ptr %l13, !tbaa !24
  %t22 = load i64, ptr %l9, !tbaa !24
  %t23 = icmp sge i64 %t22, 0
  br i1 %t23, label %bb5, label %bb6
bb5:
  %t25 = load i64, ptr %l9, !tbaa !24
  %t26 = load i64, ptr %l12, !tbaa !24
  %t27 = icmp sle i64 %t25, %t26
  br i1 %t27, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_942c69358f77327c_b8abecb88c811c88)
  unreachable
bb7:
  %t29 = load i64, ptr %l12, !tbaa !24
  %t30 = load i64, ptr %l13, !tbaa !24
  %t31 = icmp sle i64 %t29, %t30
  br i1 %t31, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_942c69358f77327c_b8abecb88c811c88)
  unreachable
bb9:
  %t33 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !27
  %t35 = load i64, ptr %l9, !tbaa !24
  %t36 = load i64, ptr %l12, !tbaa !24
  %t37 = getelementptr i8, ptr %t34, i64 %t35
  %t38 = sub i64 %t36, %t35
  %t39 = insertvalue { i64, ptr } undef, i64 %t38, 0
  %t40 = insertvalue { i64, ptr } %t39, ptr %t37, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t40, ptr %rv
  br label %ret
bb10:
  call void @__olang_check_failed(ptr @olang_loc_942c69358f77327c_b8abecb88c811c88)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2ftyped_2eunion(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l6 = alloca i64
  %l8 = alloca i64
  %l13 = alloca i64
  %l16 = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a1, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t3 = load i64, ptr %l3, !tbaa !24
  store i64 %t3, ptr %l6, !tbaa !24
  %t4 = load ptr, ptr %l2, !tbaa !29
  %t6 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t4)
  store i64 %t6, ptr %l8
  br label %bb2
bb2:
  %t7 = load i64, ptr %l6, !tbaa !24
  %t8 = load i64, ptr %l8, !tbaa !24
  %t9 = icmp slt i64 %t7, %t8
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb3, label %bb4
bb3:
  br label %bb13
bb4:
  br label %bb5
bb5:
  %t13 = load ptr, ptr %l2, !tbaa !29
  %t14 = load i64, ptr %l3, !tbaa !24
  %t17 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t13, i64 %t14)
  store i64 %t17, ptr %l13
  br label %bb6
bb6:
  %t18 = load i64, ptr %l13, !tbaa !24
  store i64 %t18, ptr %l4, !tbaa !24
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = load i64, ptr %l4, !tbaa !24
  %t23 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %t19, i64 %t20)
  store i1 %t23, ptr %l16
  br label %bb7
bb7:
  %t24 = load i1, ptr %l16, !tbaa !21
  %t25 = xor i1 %t24, true
  br i1 %t25, label %bb8, label %bb9
bb8:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t27, i64 %t28)
  br label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t31 = load i64, ptr %l3, !tbaa !24
  %t33 = add i64 %t31, 1
  store i64 %t33, ptr %l3, !tbaa !24
  br label %bb1
bb13:
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/typed:BlockInfo" @compiler_2ftyped_3aBlockInfo_2ector(ptr %v0, i32 %a0, i32 %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %rv = alloca %"compiler/typed:BlockInfo"
  br label %start
start:
  br label %bb0
bb0:
  %t8 = insertvalue %"compiler/typed:BlockInfo" undef, i32 %a0, 0
  %t10 = insertvalue %"compiler/typed:BlockInfo" %t8, i32 %a1, 1
  %t12 = insertvalue %"compiler/typed:BlockInfo" %t10, %"compiler/source:Span" %a2, 2
  store %"compiler/typed:BlockInfo" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/typed:BlockInfo", ptr %rv
  ret %"compiler/typed:BlockInfo" %rr
}

define dso_local %"compiler/typed:Call" @compiler_2ftyped_3aCall_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2, i1 %a3, i1 %a4) #0 {
entry:
  %rv = alloca %"compiler/typed:Call"
  br label %start
start:
  br label %bb0
bb0:
  %t12 = insertvalue %"compiler/typed:Call" undef, ptr %a0, 0
  %t14 = insertvalue %"compiler/typed:Call" %t12, { i64, ptr } %a1, 1
  %t16 = insertvalue %"compiler/typed:Call" %t14, i32 %a2, 2
  %t18 = insertvalue %"compiler/typed:Call" %t16, i1 %a3, 3
  %t20 = insertvalue %"compiler/typed:Call" %t18, i1 %a4, 4
  store %"compiler/typed:Call" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/typed:Call", ptr %rv
  ret %"compiler/typed:Call" %rr
}

define dso_local %"compiler/typed:DerivedArg" @compiler_2ftyped_3aDerivedArg_2ector(ptr %v0, i64 %a0, i64 %a1, { i64, [2 x i64] } %a2) #0 {
entry:
  %rv = alloca %"compiler/typed:DerivedArg"
  br label %start
start:
  br label %bb0
bb0:
  %t8 = insertvalue %"compiler/typed:DerivedArg" undef, i64 %a0, 0
  %t10 = insertvalue %"compiler/typed:DerivedArg" %t8, i64 %a1, 1
  %t12 = insertvalue %"compiler/typed:DerivedArg" %t10, { i64, [2 x i64] } %a2, 2
  store %"compiler/typed:DerivedArg" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/typed:DerivedArg", ptr %rv
  ret %"compiler/typed:DerivedArg" %rr
}

define dso_local void @compiler_2ftyped_3aDropHolding_2ector(ptr %out, ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca i64
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca i64
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca i64
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca i64
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l23 = alloca i64
  %l25 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l27 = alloca i64
  %l29 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l31 = alloca i64
  %l33 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l35 = alloca %"compiler/typed:DropHolding"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = ptrtoint ptr %v0 to i64
  store i64 %t1, ptr %l7, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aDropHolding_2e0
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v0)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l7, !tbaa !24
  br label %bb2
bb2:
  %t6 = load i64, ptr %l7
  %t7 = inttoptr i64 %t6 to ptr
  %t8 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t7, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %l9
  br label %bb3
bb3:
  %t9 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aDropHolding_2e0
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t11 = load i64, ptr %l7
  %t12 = inttoptr i64 %t11 to ptr
  %t13 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9, i32 0, i32 0
  %t14 = load { i64, ptr }, ptr %t13
  %t15 = extractvalue { i64, ptr } %t14, 1
  %t16 = call ptr @__olang_region_or(ptr %t15, ptr null)
  %t17 = icmp ne ptr %t16, null
  %t18 = select i1 %t17, ptr %t16, ptr null
  %t19 = icmp eq ptr %t18, %t12
  call void @__olang_region_settle(ptr %t12, i1 %t19)
  br label %bb5
bb5:
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %l0
  %t21 = ptrtoint ptr %v0 to i64
  store i64 %t21, ptr %l11, !tbaa !24
  %t22 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aDropHolding_2e1
  br i1 %t22, label %bb6, label %bb7
bb6:
  %t24 = call ptr @__olang_region_make(ptr %v0)
  %t25 = ptrtoint ptr %t24 to i64
  store i64 %t25, ptr %l11, !tbaa !24
  br label %bb7
bb7:
  %t26 = load i64, ptr %l11
  %t27 = inttoptr i64 %t26 to ptr
  %t28 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ector(ptr %t27, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t28, ptr %l13
  br label %bb8
bb8:
  %t29 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aDropHolding_2e1
  br i1 %t29, label %bb9, label %bb10
bb9:
  %t31 = load i64, ptr %l11
  %t32 = inttoptr i64 %t31 to ptr
  %t33 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13, i32 0, i32 0
  %t34 = load { i64, ptr }, ptr %t33
  %t35 = extractvalue { i64, ptr } %t34, 1
  %t36 = call ptr @__olang_region_or(ptr %t35, ptr null)
  %t37 = icmp ne ptr %t36, null
  %t38 = select i1 %t37, ptr %t36, ptr null
  %t39 = icmp eq ptr %t38, %t32
  call void @__olang_region_settle(ptr %t32, i1 %t39)
  br label %bb10
bb10:
  %t40 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t40, ptr %l1
  %t41 = ptrtoint ptr %v0 to i64
  store i64 %t41, ptr %l15, !tbaa !24
  %t42 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aDropHolding_2e2
  br i1 %t42, label %bb11, label %bb12
bb11:
  %t44 = call ptr @__olang_region_make(ptr %v0)
  %t45 = ptrtoint ptr %t44 to i64
  store i64 %t45, ptr %l15, !tbaa !24
  br label %bb12
bb12:
  %t46 = load i64, ptr %l15
  %t47 = inttoptr i64 %t46 to ptr
  %t48 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e_2ector(ptr %t47, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t48, ptr %l17
  br label %bb13
bb13:
  %t49 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aDropHolding_2e2
  br i1 %t49, label %bb14, label %bb15
bb14:
  %t51 = load i64, ptr %l15
  %t52 = inttoptr i64 %t51 to ptr
  %t53 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17, i32 0, i32 0
  %t54 = load { i64, ptr }, ptr %t53
  %t55 = extractvalue { i64, ptr } %t54, 1
  %t56 = call ptr @__olang_region_or(ptr %t55, ptr null)
  %t57 = icmp ne ptr %t56, null
  %t58 = select i1 %t57, ptr %t56, ptr null
  %t59 = icmp eq ptr %t58, %t52
  call void @__olang_region_settle(ptr %t52, i1 %t59)
  br label %bb15
bb15:
  %t60 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t60, ptr %l2
  %t61 = ptrtoint ptr %v0 to i64
  store i64 %t61, ptr %l19, !tbaa !24
  %t62 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aDropHolding_2e3
  br i1 %t62, label %bb16, label %bb17
bb16:
  %t64 = call ptr @__olang_region_make(ptr %v0)
  %t65 = ptrtoint ptr %t64 to i64
  store i64 %t65, ptr %l19, !tbaa !24
  br label %bb17
bb17:
  %t66 = load i64, ptr %l19
  %t67 = inttoptr i64 %t66 to ptr
  %t68 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t67, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t68, ptr %l21
  br label %bb18
bb18:
  %t69 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aDropHolding_2e3
  br i1 %t69, label %bb19, label %bb20
bb19:
  %t71 = load i64, ptr %l19
  %t72 = inttoptr i64 %t71 to ptr
  %t73 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21, i32 0, i32 0
  %t74 = load { i64, ptr }, ptr %t73
  %t75 = extractvalue { i64, ptr } %t74, 1
  %t76 = call ptr @__olang_region_or(ptr %t75, ptr null)
  %t77 = icmp ne ptr %t76, null
  %t78 = select i1 %t77, ptr %t76, ptr null
  %t79 = icmp eq ptr %t78, %t72
  call void @__olang_region_settle(ptr %t72, i1 %t79)
  br label %bb20
bb20:
  %t80 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t80, ptr %l3
  %t81 = ptrtoint ptr %v0 to i64
  store i64 %t81, ptr %l23, !tbaa !24
  %t82 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aDropHolding_2e4
  br i1 %t82, label %bb21, label %bb22
bb21:
  %t84 = call ptr @__olang_region_make(ptr %v0)
  %t85 = ptrtoint ptr %t84 to i64
  store i64 %t85, ptr %l23, !tbaa !24
  br label %bb22
bb22:
  %t86 = load i64, ptr %l23
  %t87 = inttoptr i64 %t86 to ptr
  %t88 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ector(ptr %t87, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t88, ptr %l25
  br label %bb23
bb23:
  %t89 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aDropHolding_2e4
  br i1 %t89, label %bb24, label %bb25
bb24:
  %t91 = load i64, ptr %l23
  %t92 = inttoptr i64 %t91 to ptr
  %t93 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l25, i32 0, i32 0
  %t94 = load { i64, ptr }, ptr %t93
  %t95 = extractvalue { i64, ptr } %t94, 1
  %t96 = call ptr @__olang_region_or(ptr %t95, ptr null)
  %t97 = icmp ne ptr %t96, null
  %t98 = select i1 %t97, ptr %t96, ptr null
  %t99 = icmp eq ptr %t98, %t92
  call void @__olang_region_settle(ptr %t92, i1 %t99)
  br label %bb25
bb25:
  %t100 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l25
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t100, ptr %l4
  %t101 = ptrtoint ptr %v0 to i64
  store i64 %t101, ptr %l27, !tbaa !24
  %t102 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aDropHolding_2e5
  br i1 %t102, label %bb26, label %bb27
bb26:
  %t104 = call ptr @__olang_region_make(ptr %v0)
  %t105 = ptrtoint ptr %t104 to i64
  store i64 %t105, ptr %l27, !tbaa !24
  br label %bb27
bb27:
  %t106 = load i64, ptr %l27
  %t107 = inttoptr i64 %t106 to ptr
  %t108 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t107, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t108, ptr %l29
  br label %bb28
bb28:
  %t109 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aDropHolding_2e5
  br i1 %t109, label %bb29, label %bb30
bb29:
  %t111 = load i64, ptr %l27
  %t112 = inttoptr i64 %t111 to ptr
  %t113 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l29, i32 0, i32 0
  %t114 = load { i64, ptr }, ptr %t113
  %t115 = extractvalue { i64, ptr } %t114, 1
  %t116 = call ptr @__olang_region_or(ptr %t115, ptr null)
  %t117 = icmp ne ptr %t116, null
  %t118 = select i1 %t117, ptr %t116, ptr null
  %t119 = icmp eq ptr %t118, %t112
  call void @__olang_region_settle(ptr %t112, i1 %t119)
  br label %bb30
bb30:
  %t120 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l29
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t120, ptr %l5
  %t121 = ptrtoint ptr %v0 to i64
  store i64 %t121, ptr %l31, !tbaa !24
  %t122 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aDropHolding_2e6
  br i1 %t122, label %bb31, label %bb32
bb31:
  %t124 = call ptr @__olang_region_make(ptr %v0)
  %t125 = ptrtoint ptr %t124 to i64
  store i64 %t125, ptr %l31, !tbaa !24
  br label %bb32
bb32:
  %t126 = load i64, ptr %l31
  %t127 = inttoptr i64 %t126 to ptr
  %t128 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %t127, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t128, ptr %l33
  br label %bb33
bb33:
  %t129 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aDropHolding_2e6
  br i1 %t129, label %bb34, label %bb35
bb34:
  %t131 = load i64, ptr %l31
  %t132 = inttoptr i64 %t131 to ptr
  %t133 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l33, i32 0, i32 0
  %t134 = load { i64, ptr }, ptr %t133
  %t135 = extractvalue { i64, ptr } %t134, 1
  %t136 = call ptr @__olang_region_or(ptr %t135, ptr null)
  %t137 = icmp ne ptr %t136, null
  %t138 = select i1 %t137, ptr %t136, ptr null
  %t139 = icmp eq ptr %t138, %t132
  call void @__olang_region_settle(ptr %t132, i1 %t139)
  br label %bb35
bb35:
  %t140 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l33
  %t141 = getelementptr %"compiler/typed:DropHolding", ptr %l35, i32 0, i32 0
  %t142 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t142, ptr %t141
  %t143 = getelementptr %"compiler/typed:DropHolding", ptr %l35, i32 0, i32 1
  %t144 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t144, ptr %t143
  %t145 = getelementptr %"compiler/typed:DropHolding", ptr %l35, i32 0, i32 2
  %t146 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t146, ptr %t145
  %t147 = getelementptr %"compiler/typed:DropHolding", ptr %l35, i32 0, i32 3
  %t148 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t148, ptr %t147
  %t149 = getelementptr %"compiler/typed:DropHolding", ptr %l35, i32 0, i32 4
  %t150 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t150, ptr %t149
  %t151 = getelementptr %"compiler/typed:DropHolding", ptr %l35, i32 0, i32 5
  %t152 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t152, ptr %t151
  %t153 = getelementptr %"compiler/typed:DropHolding", ptr %l35, i32 0, i32 6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t140, ptr %t153
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l35, i64 224, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/typed:Payload" @compiler_2ftyped_3aPayload_2ector(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %rv = alloca %"compiler/typed:Payload"
  br label %start
start:
  br label %bb0
bb0:
  %t8 = insertvalue %"compiler/typed:Payload" undef, ptr %a0, 0
  %t10 = insertvalue %"compiler/typed:Payload" %t8, i64 %a1, 1
  %t12 = insertvalue %"compiler/typed:Payload" %t10, i32 %a2, 2
  store %"compiler/typed:Payload" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/typed:Payload", ptr %rv
  ret %"compiler/typed:Payload" %rr
}

define dso_local void @compiler_2ftyped_3aPlan_2ector(ptr %out, ptr %v0, i64 %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l22 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l23 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l25 = alloca i64
  %l29 = alloca i64
  %l30 = alloca { i64, [2 x i64] }
  %l34 = alloca i64
  %l36 = alloca i64
  %l39 = alloca i64
  %l41 = alloca i64
  %l44 = alloca i64
  %l46 = alloca i64
  %l49 = alloca i64
  %l51 = alloca i64
  %l55 = alloca i64
  %l59 = alloca i64
  %l63 = alloca i64
  %l65 = alloca i64
  %l69 = alloca i64
  %l71 = alloca i64
  %l75 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l76 = alloca i64
  %l78 = alloca i64
  %l82 = alloca i64
  %l84 = alloca i64
  %l88 = alloca i64
  %l90 = alloca i64
  %l94 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l95 = alloca i64
  %l97 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l99 = alloca i64
  %l101 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l103 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l104 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l105 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l106 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l107 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l108 = alloca %"compiler/typed:Plan"
  %t15 = alloca { i64, [2 x i64] }, align 8
  %t28 = alloca i64
  %t153 = alloca i64
  %t181 = alloca i64
  %t211 = alloca i64
  store i64 %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l0, !tbaa !24
  store i64 %t1, ptr %l25, !tbaa !24
  %t2 = load i64, ptr %l25, !tbaa !24
  %t3 = icmp sge i64 %t2, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i64, ptr %l25, !tbaa !24
  %t6 = icmp sle i64 %t5, 384307168202282325
  br i1 %t6, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_480f1658b5360f56_487a5534952ab742)
  unreachable
bb3:
  %t8 = load i64, ptr %l25, !tbaa !24
  %t9 = mul i64 %t8, 24
  %t10 = call ptr @__olang_scope_alloc_zeroed(ptr %v0, i64 %t9)
  %t11 = insertvalue { i64, ptr } undef, i64 %t8, 0
  %t12 = insertvalue { i64, ptr } %t11, ptr %t10, 1
  store { i64, ptr } %t12, ptr %l3, !tbaa !27
  %t14 = load i64, ptr %l1, !tbaa !24
  store i64 %t14, ptr %l29, !tbaa !24
  store { i64, [2 x i64] } zeroinitializer, ptr %t15
  %t16 = getelementptr { i64, [2 x i64] }, ptr %t15, i32 0, i32 0
  store i64 5, ptr %t16
  %t17 = load { i64, [2 x i64] }, ptr %t15
  store { i64, [2 x i64] } %t17, ptr %l30
  %t18 = load i64, ptr %l29, !tbaa !24
  %t19 = icmp sge i64 %t18, 0
  br i1 %t19, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_480f1658b5360f56_487a5534952ab742)
  unreachable
bb5:
  %t21 = load i64, ptr %l29, !tbaa !24
  %t22 = icmp sle i64 %t21, 384307168202282325
  br i1 %t22, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_8f643c1a2619646b_285ffd8328f7aef7)
  unreachable
bb7:
  %t24 = load i64, ptr %l29, !tbaa !24
  %t25 = mul i64 %t24, 24
  %t26 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t25)
  %t27 = load { i64, [2 x i64] }, ptr %l30
  store i64 0, ptr %t28
  br label %fill.29
fill.29:
  %t32 = load i64, ptr %t28
  %t33 = icmp slt i64 %t32, %t24
  br i1 %t33, label %fillb.30, label %filld.31
fillb.30:
  %t34 = getelementptr { i64, [2 x i64] }, ptr %t26, i64 %t32
  store { i64, [2 x i64] } %t27, ptr %t34
  %t35 = add i64 %t32, 1
  store i64 %t35, ptr %t28
  br label %fill.29
filld.31:
  %t36 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t26, 1
  store { i64, ptr } %t37, ptr %l4, !tbaa !27
  %t39 = ptrtoint ptr %v0 to i64
  store i64 %t39, ptr %l34, !tbaa !24
  %t40 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aPlan_2e2
  br i1 %t40, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_8f643c1a2619646b_285ffd8328f7aef7)
  unreachable
bb9:
  %t42 = call ptr @__olang_region_make(ptr %v0)
  %t43 = ptrtoint ptr %t42 to i64
  store i64 %t43, ptr %l34, !tbaa !24
  br label %bb10
bb10:
  store i64 %a2, ptr %l36, !tbaa !24
  %t45 = load i64, ptr %l36, !tbaa !24
  %t46 = icmp sge i64 %t45, 0
  br i1 %t46, label %bb11, label %bb12
bb11:
  %t48 = load i64, ptr %l36, !tbaa !24
  %t49 = mul i64 %t48, 1
  %t50 = load i64, ptr %l34
  %t51 = inttoptr i64 %t50 to ptr
  %t52 = call ptr @__olang_scope_alloc_zeroed(ptr %t51, i64 %t49)
  %t53 = insertvalue { i64, ptr } undef, i64 %t48, 0
  %t54 = insertvalue { i64, ptr } %t53, ptr %t52, 1
  store { i64, ptr } %t54, ptr %l5, !tbaa !27
  %t56 = ptrtoint ptr %v0 to i64
  store i64 %t56, ptr %l39, !tbaa !24
  %t57 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aPlan_2e3
  br i1 %t57, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_879aacf2d1a22b08_c7cef0899cf1454)
  unreachable
bb13:
  %t59 = call ptr @__olang_region_make(ptr %v0)
  %t60 = ptrtoint ptr %t59 to i64
  store i64 %t60, ptr %l39, !tbaa !24
  br label %bb14
bb14:
  %t61 = load i64, ptr %l1, !tbaa !24
  store i64 %t61, ptr %l41, !tbaa !24
  %t62 = load i64, ptr %l41, !tbaa !24
  %t63 = icmp sge i64 %t62, 0
  br i1 %t63, label %bb15, label %bb16
bb15:
  %t65 = load i64, ptr %l41, !tbaa !24
  %t66 = mul i64 %t65, 1
  %t67 = load i64, ptr %l39
  %t68 = inttoptr i64 %t67 to ptr
  %t69 = call ptr @__olang_scope_alloc_zeroed(ptr %t68, i64 %t66)
  %t70 = insertvalue { i64, ptr } undef, i64 %t65, 0
  %t71 = insertvalue { i64, ptr } %t70, ptr %t69, 1
  store { i64, ptr } %t71, ptr %l6, !tbaa !27
  %t73 = ptrtoint ptr %v0 to i64
  store i64 %t73, ptr %l44, !tbaa !24
  %t74 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aPlan_2e4
  br i1 %t74, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_642fe669e8876d75_a0626c7162644c61)
  unreachable
bb17:
  %t76 = call ptr @__olang_region_make(ptr %v0)
  %t77 = ptrtoint ptr %t76 to i64
  store i64 %t77, ptr %l44, !tbaa !24
  br label %bb18
bb18:
  %t78 = load i64, ptr %l0, !tbaa !24
  store i64 %t78, ptr %l46, !tbaa !24
  %t79 = load i64, ptr %l46, !tbaa !24
  %t80 = icmp sge i64 %t79, 0
  br i1 %t80, label %bb19, label %bb20
bb19:
  %t82 = load i64, ptr %l46, !tbaa !24
  %t83 = mul i64 %t82, 1
  %t84 = load i64, ptr %l44
  %t85 = inttoptr i64 %t84 to ptr
  %t86 = call ptr @__olang_scope_alloc_zeroed(ptr %t85, i64 %t83)
  %t87 = insertvalue { i64, ptr } undef, i64 %t82, 0
  %t88 = insertvalue { i64, ptr } %t87, ptr %t86, 1
  store { i64, ptr } %t88, ptr %l7, !tbaa !27
  %t90 = ptrtoint ptr %v0 to i64
  store i64 %t90, ptr %l49, !tbaa !24
  %t91 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aPlan_2e5
  br i1 %t91, label %bb21, label %bb22
bb20:
  call void @__olang_check_failed(ptr @olang_loc_d6ddef0f5c032242_b9ab7c7dee5da456)
  unreachable
bb21:
  %t93 = call ptr @__olang_region_make(ptr %v0)
  %t94 = ptrtoint ptr %t93 to i64
  store i64 %t94, ptr %l49, !tbaa !24
  br label %bb22
bb22:
  %t95 = load i64, ptr %l0, !tbaa !24
  store i64 %t95, ptr %l51, !tbaa !24
  %t96 = load i64, ptr %l51, !tbaa !24
  %t97 = icmp sge i64 %t96, 0
  br i1 %t97, label %bb23, label %bb24
bb23:
  %t99 = load i64, ptr %l51, !tbaa !24
  %t100 = icmp sle i64 %t99, 1152921504606846975
  br i1 %t100, label %bb25, label %bb26
bb24:
  call void @__olang_check_failed(ptr @olang_loc_b6c3975defd019f7_100a23f5f40f96b)
  unreachable
bb25:
  %t102 = load i64, ptr %l51, !tbaa !24
  %t103 = mul i64 %t102, 8
  %t104 = load i64, ptr %l49
  %t105 = inttoptr i64 %t104 to ptr
  %t106 = call ptr @__olang_scope_alloc_zeroed(ptr %t105, i64 %t103)
  %t107 = insertvalue { i64, ptr } undef, i64 %t102, 0
  %t108 = insertvalue { i64, ptr } %t107, ptr %t106, 1
  store { i64, ptr } %t108, ptr %l8, !tbaa !27
  %t110 = load i64, ptr %l0, !tbaa !24
  store i64 %t110, ptr %l55, !tbaa !24
  %t111 = load i64, ptr %l55, !tbaa !24
  %t112 = icmp sge i64 %t111, 0
  br i1 %t112, label %bb27, label %bb28
bb26:
  call void @__olang_check_failed(ptr @olang_loc_b6c3975defd019f7_100a23f5f40f96b)
  unreachable
bb27:
  %t114 = load i64, ptr %l55, !tbaa !24
  %t115 = icmp sle i64 %t114, 384307168202282325
  br i1 %t115, label %bb29, label %bb30
bb28:
  call void @__olang_check_failed(ptr @olang_loc_9ae088e360a77f54_f93713180ac9c008)
  unreachable
bb29:
  %t117 = load i64, ptr %l55, !tbaa !24
  %t118 = mul i64 %t117, 24
  %t119 = call ptr @__olang_scope_alloc_zeroed(ptr %v0, i64 %t118)
  %t120 = insertvalue { i64, ptr } undef, i64 %t117, 0
  %t121 = insertvalue { i64, ptr } %t120, ptr %t119, 1
  store { i64, ptr } %t121, ptr %l9, !tbaa !27
  %t123 = load i64, ptr %l0, !tbaa !24
  store i64 %t123, ptr %l59, !tbaa !24
  %t124 = load i64, ptr %l59, !tbaa !24
  %t125 = icmp sge i64 %t124, 0
  br i1 %t125, label %bb31, label %bb32
bb30:
  call void @__olang_check_failed(ptr @olang_loc_9ae088e360a77f54_f93713180ac9c008)
  unreachable
bb31:
  %t127 = load i64, ptr %l59, !tbaa !24
  %t128 = icmp sle i64 %t127, 1152921504606846975
  br i1 %t128, label %bb33, label %bb34
bb32:
  call void @__olang_check_failed(ptr @olang_loc_2ec6064c293cb761_d5cc4c8f21af0275)
  unreachable
bb33:
  %t130 = load i64, ptr %l59, !tbaa !24
  %t131 = mul i64 %t130, 8
  %t132 = call ptr @__olang_scope_alloc_zeroed(ptr %v0, i64 %t131)
  %t133 = insertvalue { i64, ptr } undef, i64 %t130, 0
  %t134 = insertvalue { i64, ptr } %t133, ptr %t132, 1
  store { i64, ptr } %t134, ptr %l10, !tbaa !27
  %t136 = ptrtoint ptr %v0 to i64
  store i64 %t136, ptr %l63, !tbaa !24
  %t137 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aPlan_2e8
  br i1 %t137, label %bb35, label %bb36
bb34:
  call void @__olang_check_failed(ptr @olang_loc_2ec6064c293cb761_d5cc4c8f21af0275)
  unreachable
bb35:
  %t139 = call ptr @__olang_region_make(ptr %v0)
  %t140 = ptrtoint ptr %t139 to i64
  store i64 %t140, ptr %l63, !tbaa !24
  br label %bb36
bb36:
  %t141 = load i64, ptr %l0, !tbaa !24
  store i64 %t141, ptr %l65, !tbaa !24
  %t142 = load i64, ptr %l65, !tbaa !24
  %t143 = icmp sge i64 %t142, 0
  br i1 %t143, label %bb37, label %bb38
bb37:
  %t145 = load i64, ptr %l65, !tbaa !24
  %t146 = icmp sle i64 %t145, 1152921504606846975
  br i1 %t146, label %bb39, label %bb40
bb38:
  call void @__olang_check_failed(ptr @olang_loc_c8e1f518d05ff72e_7dbe2fc13ad1d5a)
  unreachable
bb39:
  %t148 = load i64, ptr %l65, !tbaa !24
  %t149 = mul i64 %t148, 8
  %t150 = load i64, ptr %l63
  %t151 = inttoptr i64 %t150 to ptr
  %t152 = call ptr @__olang_scope_alloc(ptr %t151, i64 %t149)
  store i64 0, ptr %t153
  br label %fill.154
fill.154:
  %t157 = load i64, ptr %t153
  %t158 = icmp slt i64 %t157, %t148
  br i1 %t158, label %fillb.155, label %filld.156
fillb.155:
  %t159 = getelementptr i64, ptr %t152, i64 %t157
  store i64 -1, ptr %t159
  %t160 = add i64 %t157, 1
  store i64 %t160, ptr %t153
  br label %fill.154
filld.156:
  %t161 = insertvalue { i64, ptr } undef, i64 %t148, 0
  %t162 = insertvalue { i64, ptr } %t161, ptr %t152, 1
  store { i64, ptr } %t162, ptr %l11, !tbaa !27
  %t164 = ptrtoint ptr %v0 to i64
  store i64 %t164, ptr %l69, !tbaa !24
  %t165 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aPlan_2e9
  br i1 %t165, label %bb41, label %bb42
bb40:
  call void @__olang_check_failed(ptr @olang_loc_c8e1f518d05ff72e_7dbe2fc13ad1d5a)
  unreachable
bb41:
  %t167 = call ptr @__olang_region_make(ptr %v0)
  %t168 = ptrtoint ptr %t167 to i64
  store i64 %t168, ptr %l69, !tbaa !24
  br label %bb42
bb42:
  %t169 = load i64, ptr %l0, !tbaa !24
  store i64 %t169, ptr %l71, !tbaa !24
  %t170 = load i64, ptr %l71, !tbaa !24
  %t171 = icmp sge i64 %t170, 0
  br i1 %t171, label %bb43, label %bb44
bb43:
  %t173 = load i64, ptr %l71, !tbaa !24
  %t174 = icmp sle i64 %t173, 1152921504606846975
  br i1 %t174, label %bb45, label %bb46
bb44:
  call void @__olang_check_failed(ptr @olang_loc_74963255e70253a3_2345454c3593352f)
  unreachable
bb45:
  %t176 = load i64, ptr %l71, !tbaa !24
  %t177 = mul i64 %t176, 8
  %t178 = load i64, ptr %l69
  %t179 = inttoptr i64 %t178 to ptr
  %t180 = call ptr @__olang_scope_alloc(ptr %t179, i64 %t177)
  store i64 0, ptr %t181
  br label %fill.182
fill.182:
  %t185 = load i64, ptr %t181
  %t186 = icmp slt i64 %t185, %t176
  br i1 %t186, label %fillb.183, label %filld.184
fillb.183:
  %t187 = getelementptr i64, ptr %t180, i64 %t185
  store i64 -1, ptr %t187
  %t188 = add i64 %t185, 1
  store i64 %t188, ptr %t181
  br label %fill.182
filld.184:
  %t189 = insertvalue { i64, ptr } undef, i64 %t176, 0
  %t190 = insertvalue { i64, ptr } %t189, ptr %t180, 1
  store { i64, ptr } %t190, ptr %l12, !tbaa !27
  %t192 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t192, ptr %l75
  br label %bb47
bb46:
  call void @__olang_check_failed(ptr @olang_loc_74963255e70253a3_2345454c3593352f)
  unreachable
bb47:
  %t193 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l75
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t193, ptr %l13
  %t194 = ptrtoint ptr %v0 to i64
  store i64 %t194, ptr %l76, !tbaa !24
  %t195 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aPlan_2e11
  br i1 %t195, label %bb48, label %bb49
bb48:
  %t197 = call ptr @__olang_region_make(ptr %v0)
  %t198 = ptrtoint ptr %t197 to i64
  store i64 %t198, ptr %l76, !tbaa !24
  br label %bb49
bb49:
  %t199 = load i64, ptr %l0, !tbaa !24
  store i64 %t199, ptr %l78, !tbaa !24
  %t200 = load i64, ptr %l78, !tbaa !24
  %t201 = icmp sge i64 %t200, 0
  br i1 %t201, label %bb50, label %bb51
bb50:
  %t203 = load i64, ptr %l78, !tbaa !24
  %t204 = icmp sle i64 %t203, 1152921504606846975
  br i1 %t204, label %bb52, label %bb53
bb51:
  call void @__olang_check_failed(ptr @olang_loc_246582a5b3ca2693_193f7b7ac5c42ad7)
  unreachable
bb52:
  %t206 = load i64, ptr %l78, !tbaa !24
  %t207 = mul i64 %t206, 8
  %t208 = load i64, ptr %l76
  %t209 = inttoptr i64 %t208 to ptr
  %t210 = call ptr @__olang_scope_alloc(ptr %t209, i64 %t207)
  store i64 0, ptr %t211
  br label %fill.212
fill.212:
  %t215 = load i64, ptr %t211
  %t216 = icmp slt i64 %t215, %t206
  br i1 %t216, label %fillb.213, label %filld.214
fillb.213:
  %t217 = getelementptr i64, ptr %t210, i64 %t215
  store i64 -1, ptr %t217
  %t218 = add i64 %t215, 1
  store i64 %t218, ptr %t211
  br label %fill.212
filld.214:
  %t219 = insertvalue { i64, ptr } undef, i64 %t206, 0
  %t220 = insertvalue { i64, ptr } %t219, ptr %t210, 1
  store { i64, ptr } %t220, ptr %l14, !tbaa !27
  %t222 = ptrtoint ptr %v0 to i64
  store i64 %t222, ptr %l82, !tbaa !24
  %t223 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aPlan_2e12
  br i1 %t223, label %bb54, label %bb55
bb53:
  call void @__olang_check_failed(ptr @olang_loc_246582a5b3ca2693_193f7b7ac5c42ad7)
  unreachable
bb54:
  %t225 = call ptr @__olang_region_make(ptr %v0)
  %t226 = ptrtoint ptr %t225 to i64
  store i64 %t226, ptr %l82, !tbaa !24
  br label %bb55
bb55:
  %t227 = load i64, ptr %l0, !tbaa !24
  store i64 %t227, ptr %l84, !tbaa !24
  %t228 = load i64, ptr %l84, !tbaa !24
  %t229 = icmp sge i64 %t228, 0
  br i1 %t229, label %bb56, label %bb57
bb56:
  %t231 = load i64, ptr %l84, !tbaa !24
  %t232 = icmp sle i64 %t231, 1152921504606846975
  br i1 %t232, label %bb58, label %bb59
bb57:
  call void @__olang_check_failed(ptr @olang_loc_9dd38347e47b515e_f9e635a831e39e22)
  unreachable
bb58:
  %t234 = load i64, ptr %l84, !tbaa !24
  %t235 = mul i64 %t234, 8
  %t236 = load i64, ptr %l82
  %t237 = inttoptr i64 %t236 to ptr
  %t238 = call ptr @__olang_scope_alloc_zeroed(ptr %t237, i64 %t235)
  %t239 = insertvalue { i64, ptr } undef, i64 %t234, 0
  %t240 = insertvalue { i64, ptr } %t239, ptr %t238, 1
  store { i64, ptr } %t240, ptr %l15, !tbaa !27
  %t242 = ptrtoint ptr %v0 to i64
  store i64 %t242, ptr %l88, !tbaa !24
  %t243 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aPlan_2e13
  br i1 %t243, label %bb60, label %bb61
bb59:
  call void @__olang_check_failed(ptr @olang_loc_9dd38347e47b515e_f9e635a831e39e22)
  unreachable
bb60:
  %t245 = call ptr @__olang_region_make(ptr %v0)
  %t246 = ptrtoint ptr %t245 to i64
  store i64 %t246, ptr %l88, !tbaa !24
  br label %bb61
bb61:
  %t247 = load i64, ptr %l0, !tbaa !24
  store i64 %t247, ptr %l90, !tbaa !24
  %t248 = load i64, ptr %l90, !tbaa !24
  %t249 = icmp sge i64 %t248, 0
  br i1 %t249, label %bb62, label %bb63
bb62:
  %t251 = load i64, ptr %l90, !tbaa !24
  %t252 = icmp sle i64 %t251, 1152921504606846975
  br i1 %t252, label %bb64, label %bb65
bb63:
  call void @__olang_check_failed(ptr @olang_loc_34c0f2b90676669d_3857a098f6688741)
  unreachable
bb64:
  %t254 = load i64, ptr %l90, !tbaa !24
  %t255 = mul i64 %t254, 8
  %t256 = load i64, ptr %l88
  %t257 = inttoptr i64 %t256 to ptr
  %t258 = call ptr @__olang_scope_alloc_zeroed(ptr %t257, i64 %t255)
  %t259 = insertvalue { i64, ptr } undef, i64 %t254, 0
  %t260 = insertvalue { i64, ptr } %t259, ptr %t258, 1
  store { i64, ptr } %t260, ptr %l16, !tbaa !27
  %t262 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScope_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t262, ptr %l94
  br label %bb66
bb65:
  call void @__olang_check_failed(ptr @olang_loc_34c0f2b90676669d_3857a098f6688741)
  unreachable
bb66:
  %t263 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l94
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t263, ptr %l17
  %t264 = ptrtoint ptr %v0 to i64
  store i64 %t264, ptr %l95, !tbaa !24
  %t265 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aPlan_2e15
  br i1 %t265, label %bb67, label %bb68
bb67:
  %t267 = call ptr @__olang_region_make(ptr %v0)
  %t268 = ptrtoint ptr %t267 to i64
  store i64 %t268, ptr %l95, !tbaa !24
  br label %bb68
bb68:
  %t269 = load i64, ptr %l95
  %t270 = inttoptr i64 %t269 to ptr
  %t271 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t270, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t271, ptr %l97
  br label %bb69
bb69:
  %t272 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aPlan_2e15
  br i1 %t272, label %bb70, label %bb71
bb70:
  %t274 = load i64, ptr %l95
  %t275 = inttoptr i64 %t274 to ptr
  %t276 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l97, i32 0, i32 0
  %t277 = load { i64, ptr }, ptr %t276
  %t278 = extractvalue { i64, ptr } %t277, 1
  %t279 = call ptr @__olang_region_or(ptr %t278, ptr null)
  %t280 = icmp ne ptr %t279, null
  %t281 = select i1 %t280, ptr %t279, ptr null
  %t282 = icmp eq ptr %t281, %t275
  call void @__olang_region_settle(ptr %t275, i1 %t282)
  br label %bb71
bb71:
  %t283 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l97
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t283, ptr %l18
  %t284 = ptrtoint ptr %v0 to i64
  store i64 %t284, ptr %l99, !tbaa !24
  %t285 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aPlan_2e16
  br i1 %t285, label %bb72, label %bb73
bb72:
  %t287 = call ptr @__olang_region_make(ptr %v0)
  %t288 = ptrtoint ptr %t287 to i64
  store i64 %t288, ptr %l99, !tbaa !24
  br label %bb73
bb73:
  %t289 = load i64, ptr %l99
  %t290 = inttoptr i64 %t289 to ptr
  %t291 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t290, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t291, ptr %l101
  br label %bb74
bb74:
  %t292 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aPlan_2e16
  br i1 %t292, label %bb75, label %bb76
bb75:
  %t294 = load i64, ptr %l99
  %t295 = inttoptr i64 %t294 to ptr
  %t296 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l101, i32 0, i32 0
  %t297 = load { i64, ptr }, ptr %t296
  %t298 = extractvalue { i64, ptr } %t297, 1
  %t299 = call ptr @__olang_region_or(ptr %t298, ptr null)
  %t300 = icmp ne ptr %t299, null
  %t301 = select i1 %t300, ptr %t299, ptr null
  %t302 = icmp eq ptr %t301, %t295
  call void @__olang_region_settle(ptr %t295, i1 %t302)
  br label %bb76
bb76:
  %t303 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l101
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t303, ptr %l19
  %t304 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fv_H1ef0ed4704dec6d220ade362c849361f(ptr %v0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t304, ptr %l103
  br label %bb77
bb77:
  %t305 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l103
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t305, ptr %l20
  %t306 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t306, ptr %l104
  br label %bb78
bb78:
  %t307 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l104
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t307, ptr %l21
  %t308 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t308, ptr %l105
  br label %bb79
bb79:
  %t309 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l105
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t309, ptr %l22
  %t310 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t310, ptr %l106
  br label %bb80
bb80:
  %t311 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l106
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t311, ptr %l23
  %t312 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScope_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t312, ptr %l107
  br label %bb81
bb81:
  %t313 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l107
  %t314 = getelementptr %"compiler/typed:Plan", ptr %l108, i32 0, i32 0
  %t315 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t315, ptr %t314, !tbaa !27
  %t316 = getelementptr %"compiler/typed:Plan", ptr %l108, i32 0, i32 1
  %t317 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t317, ptr %t316, !tbaa !27
  %t318 = getelementptr %"compiler/typed:Plan", ptr %l108, i32 0, i32 2
  %t319 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t319, ptr %t318, !tbaa !27
  %t320 = getelementptr %"compiler/typed:Plan", ptr %l108, i32 0, i32 3
  %t321 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t321, ptr %t320, !tbaa !27
  %t322 = getelementptr %"compiler/typed:Plan", ptr %l108, i32 0, i32 4
  %t323 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t323, ptr %t322, !tbaa !27
  %t324 = getelementptr %"compiler/typed:Plan", ptr %l108, i32 0, i32 5
  %t325 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t325, ptr %t324, !tbaa !27
  %t326 = getelementptr %"compiler/typed:Plan", ptr %l108, i32 0, i32 6
  %t327 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t327, ptr %t326, !tbaa !27
  %t328 = getelementptr %"compiler/typed:Plan", ptr %l108, i32 0, i32 7
  %t329 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t329, ptr %t328, !tbaa !27
  %t330 = getelementptr %"compiler/typed:Plan", ptr %l108, i32 0, i32 8
  %t331 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t331, ptr %t330, !tbaa !27
  %t332 = getelementptr %"compiler/typed:Plan", ptr %l108, i32 0, i32 9
  %t333 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t333, ptr %t332, !tbaa !27
  %t334 = getelementptr %"compiler/typed:Plan", ptr %l108, i32 0, i32 10
  %t335 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t335, ptr %t334
  %t336 = getelementptr %"compiler/typed:Plan", ptr %l108, i32 0, i32 11
  %t337 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t337, ptr %t336, !tbaa !27
  %t338 = getelementptr %"compiler/typed:Plan", ptr %l108, i32 0, i32 12
  %t339 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t339, ptr %t338, !tbaa !27
  %t340 = getelementptr %"compiler/typed:Plan", ptr %l108, i32 0, i32 13
  %t341 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t341, ptr %t340, !tbaa !27
  %t342 = getelementptr %"compiler/typed:Plan", ptr %l108, i32 0, i32 14
  %t343 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t343, ptr %t342
  %t344 = getelementptr %"compiler/typed:Plan", ptr %l108, i32 0, i32 15
  %t345 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t345, ptr %t344
  %t346 = getelementptr %"compiler/typed:Plan", ptr %l108, i32 0, i32 16
  %t347 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t347, ptr %t346
  %t348 = getelementptr %"compiler/typed:Plan", ptr %l108, i32 0, i32 17
  %t349 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l20
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t349, ptr %t348
  %t350 = getelementptr %"compiler/typed:Plan", ptr %l108, i32 0, i32 18
  %t351 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t351, ptr %t350
  %t352 = getelementptr %"compiler/typed:Plan", ptr %l108, i32 0, i32 19
  %t353 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l22
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t353, ptr %t352
  %t354 = getelementptr %"compiler/typed:Plan", ptr %l108, i32 0, i32 20
  %t355 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l23
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t355, ptr %t354
  %t356 = getelementptr %"compiler/typed:Plan", ptr %l108, i32 0, i32 21
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t313, ptr %t356
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l108, i64 536, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/typed:Promote" @compiler_2ftyped_3aPromote_2ector(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %rv = alloca %"compiler/typed:Promote"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"compiler/typed:Promote" undef, ptr %a0, 0
  %t8 = insertvalue %"compiler/typed:Promote" %t6, i32 %a1, 1
  store %"compiler/typed:Promote" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/typed:Promote", ptr %rv
  ret %"compiler/typed:Promote" %rr
}

define dso_local %"compiler/typed:Seq" @compiler_2ftyped_3aSeq_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, ptr %a1, i1 %a2) #0 {
entry:
  %rv = alloca %"compiler/typed:Seq"
  br label %start
start:
  br label %bb0
bb0:
  %t8 = insertvalue %"compiler/typed:Seq" undef, { i64, ptr } %a0, 0
  %t10 = insertvalue %"compiler/typed:Seq" %t8, ptr %a1, 1
  %t12 = insertvalue %"compiler/typed:Seq" %t10, i1 %a2, 2
  store %"compiler/typed:Seq" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/typed:Seq", ptr %rv
  ret %"compiler/typed:Seq" %rr
}

define dso_local %"compiler/typed:Slice" @compiler_2ftyped_3aSlice_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, i32 %a3) #0 {
entry:
  %rv = alloca %"compiler/typed:Slice"
  br label %start
start:
  br label %bb0
bb0:
  %t10 = insertvalue %"compiler/typed:Slice" undef, ptr %a0, 0
  %t12 = insertvalue %"compiler/typed:Slice" %t10, ptr %a1, 1
  %t14 = insertvalue %"compiler/typed:Slice" %t12, ptr %a2, 2
  %t16 = insertvalue %"compiler/typed:Slice" %t14, i32 %a3, 3
  store %"compiler/typed:Slice" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/typed:Slice", ptr %rv
  ret %"compiler/typed:Slice" %rr
}

define dso_local %"compiler/typed:ViewWalk" @compiler_2ftyped_3aViewWalk_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, i64 %a2, ptr %a3c, ptr %a3e, ptr %a4c, ptr %a4e) #0 {
entry:
  %rv = alloca %"compiler/typed:ViewWalk"
  %pf3 = insertvalue { ptr, ptr } undef, ptr %a3c, 0
  %pg3 = insertvalue { ptr, ptr } %pf3, ptr %a3e, 1
  %pf4 = insertvalue { ptr, ptr } undef, ptr %a4c, 0
  %pg4 = insertvalue { ptr, ptr } %pf4, ptr %a4e, 1
  br label %start
start:
  br label %bb0
bb0:
  %t12 = insertvalue %"compiler/typed:ViewWalk" undef, ptr %a0, 0
  %t14 = insertvalue %"compiler/typed:ViewWalk" %t12, ptr %a1, 1
  %t16 = insertvalue %"compiler/typed:ViewWalk" %t14, i64 %a2, 2
  %t18 = insertvalue %"compiler/typed:ViewWalk" %t16, { ptr, ptr } %pg3, 3
  %t20 = insertvalue %"compiler/typed:ViewWalk" %t18, { ptr, ptr } %pg4, 4
  store %"compiler/typed:ViewWalk" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/typed:ViewWalk", ptr %rv
  ret %"compiler/typed:ViewWalk" %rr
}

define dso_local %"compiler/typed:landLoop" @compiler_2ftyped_3alandLoop_2ector(ptr %v0, i32 %a0, i64 %a1) #0 {
entry:
  %l1 = alloca i64
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l10 = alloca i64
  %l12 = alloca i64
  %l15 = alloca i64
  %l17 = alloca i64
  %rv = alloca %"compiler/typed:landLoop"
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i32 %a0, ptr %l2, !tbaa !23
  %t3 = load i64, ptr %l1, !tbaa !24
  store i64 %t3, ptr %l3, !tbaa !24
  %t5 = ptrtoint ptr %v0 to i64
  store i64 %t5, ptr %l10, !tbaa !24
  %t6 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3alandLoop_2e2
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = call ptr @__olang_region_make(ptr %v0)
  %t9 = ptrtoint ptr %t8 to i64
  store i64 %t9, ptr %l10, !tbaa !24
  br label %bb2
bb2:
  %t10 = load i64, ptr %l1, !tbaa !24
  store i64 %t10, ptr %l12, !tbaa !24
  %t11 = load i64, ptr %l12, !tbaa !24
  %t12 = icmp sge i64 %t11, 0
  br i1 %t12, label %bb3, label %bb4
bb3:
  %t14 = load i64, ptr %l12, !tbaa !24
  %t15 = mul i64 %t14, 1
  %t16 = load i64, ptr %l10
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc_zeroed(ptr %t17, i64 %t15)
  %t19 = insertvalue { i64, ptr } undef, i64 %t14, 0
  %t20 = insertvalue { i64, ptr } %t19, ptr %t18, 1
  store { i64, ptr } %t20, ptr %l4, !tbaa !27
  %t22 = ptrtoint ptr %v0 to i64
  store i64 %t22, ptr %l15, !tbaa !24
  %t23 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3alandLoop_2e3
  br i1 %t23, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_652e3003820639e_452d7c4eea959e6a)
  unreachable
bb5:
  %t25 = call ptr @__olang_region_make(ptr %v0)
  %t26 = ptrtoint ptr %t25 to i64
  store i64 %t26, ptr %l15, !tbaa !24
  br label %bb6
bb6:
  %t27 = load i64, ptr %l1, !tbaa !24
  store i64 %t27, ptr %l17, !tbaa !24
  %t28 = load i64, ptr %l17, !tbaa !24
  %t29 = icmp sge i64 %t28, 0
  br i1 %t29, label %bb7, label %bb8
bb7:
  %t31 = load i64, ptr %l17, !tbaa !24
  %t32 = mul i64 %t31, 1
  %t33 = load i64, ptr %l15
  %t34 = inttoptr i64 %t33 to ptr
  %t35 = call ptr @__olang_scope_alloc_zeroed(ptr %t34, i64 %t32)
  %t36 = insertvalue { i64, ptr } undef, i64 %t31, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t35, 1
  %t39 = load i32, ptr %l2, !tbaa !23
  %t40 = insertvalue %"compiler/typed:landLoop" undef, i32 %t39, 0
  %t41 = load i64, ptr %l3, !tbaa !24
  %t42 = insertvalue %"compiler/typed:landLoop" %t40, i64 %t41, 1
  %t43 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t44 = insertvalue %"compiler/typed:landLoop" %t42, { i64, ptr } %t43, 2
  %t46 = insertvalue %"compiler/typed:landLoop" %t44, { i64, ptr } %t37, 3
  %t48 = insertvalue %"compiler/typed:landLoop" %t46, i1 false, 4
  %t50 = insertvalue %"compiler/typed:landLoop" %t48, i1 false, 5
  store %"compiler/typed:landLoop" %t50, ptr %rv
  br label %ret
bb8:
  call void @__olang_check_failed(ptr @olang_loc_6ab171d7108733d3_fb4921eacef8293f)
  unreachable
ret:
  %rr = load %"compiler/typed:landLoop", ptr %rv
  ret %"compiler/typed:landLoop" %rr
}

define internal i1 @olang_lambda_0(ptr %env, ptr %v0, ptr %a0) #0 {
entry:
  %l2 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call i1 @compiler_2ftyped_2ePure(ptr %v0, ptr %a0)
  store i1 %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load i1, ptr %l2, !tbaa !21
  store i1 %t4, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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
declare void @__olang_check_failed(ptr) cold noreturn
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
declare ptr @__olang_scope_or(ptr, ptr)
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

declare void @__olang_bang_failed_plain(ptr) cold noreturn
@olang_2esole_2ecompiler__2ftyped__2ecompiler__2ftyped__3aVersions__2ematch_2elocal_2e7 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
declare void @__olang_region_drop(ptr) noinline
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

@.d1 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"L" }>, align 8
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
@.d2 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"G" }>, align 8
@.d3 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d4 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"*" }>, align 8
@.d5 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d6 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"[" }>, align 8
@.d7 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"]" }>, align 8
@.d8 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" as " }>, align 8
@.d9 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"tmp " }>, align 8
@.d10 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" site " }>, align 8
@.d11 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"target" }>, align 8
@.d12 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"text " }>, align 8
@.d13 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@olang_2esole_2ecompiler_2ftyped_3aDropHolding_2e0 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aDropHolding_2e1 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aDropHolding_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aDropHolding_2e3 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aDropHolding_2e4 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aDropHolding_2e5 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aDropHolding_2e6 = weak hidden constant i1 false
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@olang_2esole_2ecompiler_2ftyped_3aPlan_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aPlan_2e3 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aPlan_2e4 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aPlan_2e5 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aPlan_2e8 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aPlan_2e9 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aPlan_2e11 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aPlan_2e12 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aPlan_2e13 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aPlan_2e15 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aPlan_2e16 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fv_H1ef0ed4704dec6d220ade362c849361f(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2ftyped_3alandLoop_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3alandLoop_2e3 = weak hidden constant i1 false
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
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
declare ptr @compiler_2ftyped_2ecopied(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i1 @std_2fprelude_2farray_2eArray_3ccompiler_2ftyped_3aExpr_26_3e_2eEvery_3ccompiler_2ftyped_3aExpr_26_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1c, ptr %a1e)
@olang_loc_d912efc235b928ee_346c19f829a98a12 = external constant [0 x i8]
@olang_loc_65920c013e21fbcc_fef959193df4a870 = external constant [0 x i8]
@olang_loc_b89edc07d86ca7e2_8a4bea4bc2b7688e = external constant [0 x i8]
declare void @compiler_2ftyped_3aVersions_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eaddDef(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, i32 %a3, ptr %a4, i1 %a5)
@olang_loc_7ca7870c6356ec2b_86a13556bf598997 = external constant [0 x i8]
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eblock(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2esettle(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_a54feafd423d00bc_bd4a8b793949bd78 = external constant [0 x i8]
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eclassify(ptr %v0, ptr %a0)
declare %"compiler/typed:BlockInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2eAt_3ccompiler_2ftyped_3aBlockInfo_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eblock(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2ereadIn(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2emention(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i1 %a3)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eexpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_af04a8710b199599_1473152472f015d = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eBlock(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eexprs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eblock(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1)
@olang_loc_6ff368c26ca3ad9b_74caa00555ca222f = external constant [0 x i8]
declare i64 @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2elendOf(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare ptr @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2etempLent(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ePush_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v0, ptr %a0)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2erefArg(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i64 %a2, i64 %a3)
declare i1 @compiler_2ftyped_2escalarType(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2euse(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, [1 x i64] } %a2, i1 %a3)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eborrow(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i32 %a2, { i64, [1 x i64] } %a3)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2ewrite(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i1 %a2)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eprim(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i32 %a1, { i64, ptr } %a2, { i64, [1 x i64] } %a3)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2estmts(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1)
@olang_loc_378ad1b24c170823_353e69e2764e6faf = external constant [0 x i8]
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eclauses(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, [1 x i64] } %a2)
@olang_loc_ff24328511a0943b_1b00d38544175a97 = external constant [0 x i8]
@olang_loc_c889b00966965144_dcfe1455a200f620 = external constant [0 x i8]
@olang_loc_f1d97b93b21930ce_df2dd3f10bda1132 = external constant [0 x i8]
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
declare i1 @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2efieldsOnly(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_c33a5c6933895_a18ea8bdcccb3229 = external constant [0 x i8]
declare { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H05bdc185ea10b7cb65a89c49d4b056c8(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_2eLen_H205a9438cb31641857cd9c1e93810664(ptr %v0, ptr %a0)
declare %"compiler/typed:DerivedArg" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_2eAt__H3d322c834b4b1582ab12028f5b0f20b9(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI_Hbd09c84b003bb96b764c8a61b7f32193(ptr %v0, ptr %a0, i64 %a1)
declare { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI_He64c344d05691a582e6fe54d21a34702(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_7e4ec1e19232cd88_f10154fa6134f764 = external constant [0 x i8]
@olang_loc_a0166decbffe4964_9ac2fce80458edf8 = external constant [0 x i8]
declare i1 @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2edead(ptr %v0, ptr %a0)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eend(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eLen_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eAt_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2esave(ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eall(ptr %v0, ptr %a0)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2earm(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2emeet(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_456f0c0b74db68d5_29242d1724c8a7c1 = external constant [0 x i8]
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eexpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_caf565cee8ed21ae_63e8bc61e905ea5a = external constant [0 x i8]
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eCallViews(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fnumber_2eI64_2eMin_3cI64_3e(i64 %a0, i64 %a1)
declare i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2erefRoots(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2ecall(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eexprs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eloop(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2efailHere(ptr %v0, ptr %a0, i1 %a1)
declare { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2esave(ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2etry(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_e0d071190e38de5d_291e4ea72946f179 = external constant [0 x i8]
@olang_loc_d40841e1665d5bac_305352f22a4532a8 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %a0)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eleave(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2ekeepFor(ptr %v0, ptr %a0, i1 %a1, i64 %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aArm_26_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aArm_26_3e_2ePush_3ccompiler_2ftyped_3aArm_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_f5a8870640a369c_e3a704984aad8c8 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aArm_26_3e_2eLen_3ccompiler_2ftyped_3aArm_26_3e(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aArm_26_3e_2eAt_3ccompiler_2ftyped_3aArm_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eblock(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_c533040496e87321_52fb908a3762307d = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2erefs(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2eone(ptr %v0, i64 %a0)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2estore(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eblock(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2eLen__Hdc799a0fe091f8e84d50200d058b631d(ptr %v0, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2estorage(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H7b6d4eff6fc9c3821aae8b284e12e095(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %v0, ptr %v1, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eclosure(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2estTy(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRefInto(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ePush_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H5a6912247a81ac1f46c16a43fcc4c44a(ptr %v0, ptr %v1, ptr %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2einBlock(ptr %v0, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eHas_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eexprLeaves(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eplaceLeaves(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eblockLeaves(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eloopLeaves(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eopenLeaves(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2ftyped_2eclausesTakeAll(ptr %v0, { i64, ptr } %a0)
declare i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eclausesLeave(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_d15cb06393d6b10c_f6dc2a2381fafcf0 = external constant [0 x i8]
declare { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1)
@olang_loc_16612f18a9afa54d_299c1e15a68a5059 = external constant [0 x i8]
declare { i64, ptr } @compiler_2ftyped_2econstItems(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_411550143d3b0e9d_42067e02948bd729 = external constant [0 x i8]
declare i1 @compiler_2ftyped_2eexprBreaks(ptr %v0, ptr %a0, i32 %a1)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_942c69358f77327c_b8abecb88c811c88 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %v0, i64 %a0)
@olang_loc_480f1658b5360f56_487a5534952ab742 = external constant [0 x i8]
@olang_loc_8f643c1a2619646b_285ffd8328f7aef7 = external constant [0 x i8]
@olang_loc_879aacf2d1a22b08_c7cef0899cf1454 = external constant [0 x i8]
@olang_loc_642fe669e8876d75_a0626c7162644c61 = external constant [0 x i8]
@olang_loc_d6ddef0f5c032242_b9ab7c7dee5da456 = external constant [0 x i8]
@olang_loc_b6c3975defd019f7_100a23f5f40f96b = external constant [0 x i8]
@olang_loc_9ae088e360a77f54_f93713180ac9c008 = external constant [0 x i8]
@olang_loc_2ec6064c293cb761_d5cc4c8f21af0275 = external constant [0 x i8]
@olang_loc_c8e1f518d05ff72e_7dbe2fc13ad1d5a = external constant [0 x i8]
@olang_loc_74963255e70253a3_2345454c3593352f = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ector(ptr %v0, i64 %a0)
@olang_loc_246582a5b3ca2693_193f7b7ac5c42ad7 = external constant [0 x i8]
@olang_loc_9dd38347e47b515e_f9e635a831e39e22 = external constant [0 x i8]
@olang_loc_34c0f2b90676669d_3857a098f6688741 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScope_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_3e_2ector(ptr %v0, i64 %a0)
@olang_loc_652e3003820639e_452d7c4eea959e6a = external constant [0 x i8]
@olang_loc_6ab171d7108733d3_fb4921eacef8293f = external constant [0 x i8]
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_3e_2ector(ptr %v0)

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
