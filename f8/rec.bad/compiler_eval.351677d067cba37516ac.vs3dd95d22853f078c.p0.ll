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
%olang.region = type { %olang.scope, %olang.scope, ptr, ptr, ptr, ptr, ptr, i64 }
%olang.slotscope = type { %olang.scope, i64, [8 x ptr] }
%olang.stackrun = type { ptr, ptr, i32, i32, ptr, ptr }
%olang.builder = type { ptr, i64, i64, ptr, ptr }
%"compiler/eval:Machine" = type { ptr, i32, i64, { ptr, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/mir:GenInfo", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/eval:Ptr", i32, { i64, [5 x i64] }, i64, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, i64, { i64, ptr }, { i64, ptr }, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, { i64, ptr }, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i64, { i64, ptr }, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"compiler/source:Span", i32 }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/mir:GenInfo" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/eval:Ptr" = type { i64, i64 }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/eval:scope" = type { i64, i1, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i64, i64, i1, i1 }
%"compiler/mir:Fn" = type { { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/mir:Range" = type { i32, i32 }
%"compiler/mir:Lvalue" = type { { i64, [2 x i64] }, %"compiler/mir:Range" }
%"compiler/mir:Call" = type { { i64, [7 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Lvalue", i1, i32, i32, i32 }
%"compiler/mir:Case" = type { i64, i32 }
%"compiler/eval:cfn" = type { i64, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i1, i1, { i64, ptr } }
%"compiler/eval:gkey" = type { i64, i32 }
%"compiler/eval:global" = type { i64, i1, i64, i64, i64, i1, i1, i1 }
%"compiler/eval:alloc" = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i1, i64, i1 }
%"compiler/eval:Image" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"compiler/eval:Blob" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/pair:Pair.9f40551e0d6019a8e678d8f53048b6ba" = type { i64, %"compiler/source:Span" }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/eval:reg" = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%"compiler/eval:frame" = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i64, i64, i1, i64, i32, i32, i64 }
%"compiler/eval:genRec" = type { i64, i64, %"compiler/eval:frame", i64, %"compiler/eval:Ptr", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i64, i64 }
%"compiler/mir:Local" = type { i32, %"compiler/source:Span", i32, i32, { i64, [1 x i64] } }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/mir:BasicBlock" = type { %"compiler/mir:StmtList", { i64, [8 x i64] } }
%"compiler/mir:StmtList" = type { { i64, ptr }, i64 }
%"compiler/eval:task" = type { i64, i64, i64, i64, i64 }
%"compiler/mir:Task" = type { { i64, [7 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/source:Span", %"compiler/mir:Range" }
%"compiler/mir:ScopeInfo" = type { i32, i32, i32, %"compiler/source:Span", i32 }
@G_2ecompiler_2feval_2eB0 = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2eCmpOps = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eCmpOps.k1 }>, align 8
@G_2ecompiler_2feval_2eCmpOps.k1 = internal constant <{ [24 x i8] }> <{ [24 x i8] c"\0D\00\00\00\0E\00\00\00\0F\00\00\00\10\00\00\00\11\00\00\00\12\00\00\00" }>, align 8
@G_2ecompiler_2feval_2eFloatOps = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eFloatOps.k1 }>, align 8
@G_2ecompiler_2feval_2eFloatOps.k1 = internal constant <{ [16 x i8] }> <{ [16 x i8] c"\03\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00" }>, align 8
@G_2ecompiler_2feval_2eForeignId = constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2eIntOps = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eIntOps.k1 }>, align 8
@G_2ecompiler_2feval_2eIntOps.k1 = internal constant <{ [32 x i8] }> <{ [32 x i8] c"\03\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00\0A\00\00\00\0B\00\00\00\0C\00\00\00" }>, align 32
@G_2ecompiler_2feval_2eInterpCrash = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\BB\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eInterpCrash.k1 }>, align 8
@G_2ecompiler_2feval_2eInterpCrash.k1 = internal constant <{ [187 x i8] }> <{ [187 x i8] c"\6F\6C\61\6E\67\3A\20\69\6E\74\65\72\6E\61\6C\20\63\6F\6D\70\69\6C\65\72\20\65\72\72\6F\72\3A\20\74\68\65\20\63\6F\6D\70\69\6C\65\72\20\63\72\61\73\68\65\64\20\77\68\69\6C\65\20\69\6E\74\65\72\70\72\65\74\69\6E\67\20\2D\20\69\6E\20\61\20\66\6F\72\65\69\67\6E\20\66\75\6E\63\74\69\6F\6E\20\74\68\65\20\70\72\6F\67\72\61\6D\20\63\61\6C\6C\73\2C\20\69\66\20\69\74\73\20\65\78\74\65\72\6E\20\64\65\63\6C\61\72\61\74\69\6F\6E\20\69\73\20\77\72\6F\6E\67\20\28\58\31\61\29\2C\20\6F\72\20\65\6C\73\65\20\61\20\62\75\67\20\69\6E\20\74\68\65\20\63\6F\6D\70\69\6C\65\72\0A" }>, align 64
@G_2ecompiler_2feval_2eNullPtr = constant <{ [16 x i8] }> <{ [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2eNumNames = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eNumNames.k1 }>, align 8
@G_2ecompiler_2feval_2eNumNames.k1 = internal constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eNumNames.k2, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eNumNames.k3, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eNumNames.k4, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eNumNames.k5, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eNumNames.k6, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eNumNames.k7, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eNumNames.k8, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eNumNames.k9, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eNumNames.k10, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eNumNames.k11, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eNumNames.k12, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eNumNames.k13 }>, align 64
@G_2ecompiler_2feval_2eNumNames.k2 = internal constant <{ [2 x i8] }> <{ [2 x i8] c"\49\38" }>, align 8
@G_2ecompiler_2feval_2eNumNames.k3 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\49\31\36" }>, align 8
@G_2ecompiler_2feval_2eNumNames.k4 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\49\33\32" }>, align 8
@G_2ecompiler_2feval_2eNumNames.k5 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\49\36\34" }>, align 8
@G_2ecompiler_2feval_2eNumNames.k6 = internal constant <{ [2 x i8] }> <{ [2 x i8] c"\55\38" }>, align 8
@G_2ecompiler_2feval_2eNumNames.k7 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\55\31\36" }>, align 8
@G_2ecompiler_2feval_2eNumNames.k8 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\55\33\32" }>, align 8
@G_2ecompiler_2feval_2eNumNames.k9 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\55\36\34" }>, align 8
@G_2ecompiler_2feval_2eNumNames.k10 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\46\31\36" }>, align 8
@G_2ecompiler_2feval_2eNumNames.k11 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\42\46\31\36" }>, align 8
@G_2ecompiler_2feval_2eNumNames.k12 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\46\33\32" }>, align 8
@G_2ecompiler_2feval_2eNumNames.k13 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\46\36\34" }>, align 8
@G_2ecompiler_2feval_2eS0 = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2eSp0 = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2eWatchSteps = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\01\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2eWhyBeyond = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\2B\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eWhyBeyond.k1 }>, align 8
@G_2ecompiler_2feval_2eWhyBeyond.k1 = internal constant <{ [43 x i8] }> <{ [43 x i8] c"\69\74\20\72\65\61\63\68\65\73\20\6F\75\74\73\69\64\65\20\74\68\65\20\73\74\6F\72\61\67\65\20\69\74\20\72\65\66\65\72\73\20\74\6F" }>, align 32
@G_2ecompiler_2feval_2eWhyChangeable = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\64\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eWhyChangeable.k1 }>, align 8
@G_2ecompiler_2feval_2eWhyChangeable.k1 = internal constant <{ [100 x i8] }> <{ [100 x i8] c"\69\74\20\72\65\61\64\73\20\61\20\67\6C\6F\62\61\6C\20\68\6F\6C\64\69\6E\67\20\73\74\6F\72\61\67\65\20\61\20\77\72\69\74\61\62\6C\65\20\72\65\66\65\72\65\6E\63\65\20\72\65\61\63\68\65\73\2C\20\77\68\69\63\68\20\74\68\65\20\72\75\6E\6E\69\6E\67\20\70\72\6F\67\72\61\6D\20\63\61\6E\20\63\68\61\6E\67\65" }>, align 64
@G_2ecompiler_2feval_2eWhyClosed = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\35\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eWhyClosed.k1 }>, align 8
@G_2ecompiler_2feval_2eWhyClosed.k1 = internal constant <{ [53 x i8] }> <{ [53 x i8] c"\69\74\20\75\73\65\73\20\73\74\6F\72\61\67\65\20\61\66\74\65\72\20\74\68\65\20\73\63\6F\70\65\20\69\74\20\77\61\73\20\6D\61\64\65\20\69\6E\20\63\6C\6F\73\65\64" }>, align 32
@G_2ecompiler_2feval_2eWhyConvert = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\34\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eWhyConvert.k1 }>, align 8
@G_2ecompiler_2feval_2eWhyConvert.k1 = internal constant <{ [52 x i8] }> <{ [52 x i8] c"\69\74\20\63\6F\6E\76\65\72\74\73\20\61\20\66\6C\6F\61\74\20\74\68\65\20\74\61\72\67\65\74\20\74\79\70\65\20\63\61\6E\6E\6F\74\20\72\65\70\72\65\73\65\6E\74" }>, align 32
@G_2ecompiler_2feval_2eWhyCycle = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\30\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eWhyCycle.k1 }>, align 8
@G_2ecompiler_2feval_2eWhyCycle.k1 = internal constant <{ [48 x i8] }> <{ [48 x i8] c"\74\68\65\73\65\20\67\6C\6F\62\61\6C\73\20\61\72\65\20\64\65\66\69\6E\65\64\20\69\6E\20\74\65\72\6D\73\20\6F\66\20\65\61\63\68\20\6F\74\68\65\72" }>, align 32
@G_2ecompiler_2feval_2eWhyDepth = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\43\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eWhyDepth.k1 }>, align 8
@G_2ecompiler_2feval_2eWhyDepth.k1 = internal constant <{ [67 x i8] }> <{ [67 x i8] c"\74\68\65\20\63\6F\6D\70\75\74\61\74\69\6F\6E\20\72\65\63\75\72\73\65\73\20\64\65\65\70\65\72\20\74\68\61\6E\20\63\6F\6D\70\69\6C\65\2D\74\69\6D\65\20\65\76\61\6C\75\61\74\69\6F\6E\20\61\6C\6C\6F\77\73" }>, align 64
@G_2ecompiler_2feval_2eWhyDestructor = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\3D\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eWhyDestructor.k1 }>, align 8
@G_2ecompiler_2feval_2eWhyDestructor.k1 = internal constant <{ [61 x i8] }> <{ [61 x i8] c"\69\74\20\62\75\69\6C\64\73\20\61\20\76\61\6C\75\65\20\77\68\6F\73\65\20\64\65\73\74\72\75\63\74\6F\72\20\72\75\6E\73\20\77\68\65\6E\20\69\74\73\20\73\63\6F\70\65\20\63\6C\6F\73\65\73" }>, align 32
@G_2ecompiler_2feval_2eWhyDivMin = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\39\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eWhyDivMin.k1 }>, align 8
@G_2ecompiler_2feval_2eWhyDivMin.k1 = internal constant <{ [57 x i8] }> <{ [57 x i8] c"\69\74\20\64\69\76\69\64\65\73\20\74\68\65\20\6D\6F\73\74\20\6E\65\67\61\74\69\76\65\20\76\61\6C\75\65\20\62\79\20\2D\31\2C\20\77\68\69\63\68\20\6F\76\65\72\66\6C\6F\77\73" }>, align 32
@G_2ecompiler_2feval_2eWhyDivZero = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\12\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eWhyDivZero.k1 }>, align 8
@G_2ecompiler_2feval_2eWhyDivZero.k1 = internal constant <{ [18 x i8] }> <{ [18 x i8] c"\69\74\20\64\69\76\69\64\65\73\20\62\79\20\7A\65\72\6F" }>, align 8
@G_2ecompiler_2feval_2eWhyEnds = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\1F\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eWhyEnds.k1 }>, align 8
@G_2ecompiler_2feval_2eWhyEnds.k1 = internal constant <{ [31 x i8] }> <{ [31 x i8] c"\69\74\20\65\6E\64\73\20\74\68\65\20\74\65\73\74\20\6F\72\20\74\68\65\20\70\72\6F\63\65\73\73" }>, align 8
@G_2ecompiler_2feval_2eWhyEqDepth = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\42\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eWhyEqDepth.k1 }>, align 8
@G_2ecompiler_2feval_2eWhyEqDepth.k1 = internal constant <{ [66 x i8] }> <{ [66 x i8] c"\74\68\65\20\63\6F\6D\70\61\72\69\73\6F\6E\20\72\65\63\75\72\73\65\73\20\64\65\65\70\65\72\20\74\68\61\6E\20\63\6F\6D\70\69\6C\65\2D\74\69\6D\65\20\65\76\61\6C\75\61\74\69\6F\6E\20\61\6C\6C\6F\77\73" }>, align 64
@G_2ecompiler_2feval_2eWhyExtern = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\1D\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eWhyExtern.k1 }>, align 8
@G_2ecompiler_2feval_2eWhyExtern.k1 = internal constant <{ [29 x i8] }> <{ [29 x i8] c"\69\74\20\63\61\6C\6C\73\20\61\6E\20\65\78\74\65\72\6E\61\6C\20\66\75\6E\63\74\69\6F\6E" }>, align 8
@G_2ecompiler_2feval_2eWhyFfiFind = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\43\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eWhyFfiFind.k1 }>, align 8
@G_2ecompiler_2feval_2eWhyFfiFind.k1 = internal constant <{ [67 x i8] }> <{ [67 x i8] c"\69\74\20\63\61\6C\6C\73\20\61\6E\20\65\78\74\65\72\6E\61\6C\20\66\75\6E\63\74\69\6F\6E\20\69\6E\74\65\72\70\72\65\74\20\63\61\6E\6E\6F\74\20\66\69\6E\64\20\69\6E\20\74\68\69\73\20\70\72\6F\63\65\73\73" }>, align 64
@G_2ecompiler_2feval_2eWhyFfiPass = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\98\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eWhyFfiPass.k1 }>, align 8
@G_2ecompiler_2feval_2eWhyFfiPass.k1 = internal constant <{ [152 x i8] }> <{ [152 x i8] c"\69\74\20\63\61\6C\6C\73\20\61\6E\20\65\78\74\65\72\6E\61\6C\20\66\75\6E\63\74\69\6F\6E\20\77\69\74\68\20\61\20\70\61\72\61\6D\65\74\65\72\20\6F\72\20\72\65\73\75\6C\74\20\69\6E\74\65\72\70\72\65\74\20\63\61\6E\6E\6F\74\20\70\61\73\73\20\2D\20\6F\6E\6C\79\20\6E\75\6D\62\65\72\73\2C\20\42\6F\6F\6C\73\2C\20\61\72\72\61\79\73\20\61\6E\64\20\73\74\72\75\63\74\73\20\6F\66\20\6E\75\6D\62\65\72\73\2C\20\61\6E\64\20\70\6F\69\6E\74\65\72\73\20\43\20\67\61\76\65" }>, align 64
@G_2ecompiler_2feval_2eWhyForeign = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\38\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eWhyForeign.k1 }>, align 8
@G_2ecompiler_2feval_2eWhyForeign.k1 = internal constant <{ [56 x i8] }> <{ [56 x i8] c"\69\74\20\72\65\61\64\73\20\74\68\72\6F\75\67\68\20\61\20\70\6F\69\6E\74\65\72\20\43\20\67\61\76\65\2C\20\77\68\69\63\68\20\6F\6E\6C\79\20\43\20\6D\61\79\20\72\65\61\64" }>, align 32
@G_2ecompiler_2feval_2eWhyFreedEarly = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\5C\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eWhyFreedEarly.k1 }>, align 8
@G_2ecompiler_2feval_2eWhyFreedEarly.k1 = internal constant <{ [92 x i8] }> <{ [92 x i8] c"\69\74\20\75\73\65\73\20\73\74\6F\72\61\67\65\20\65\61\72\6C\79\20\66\72\65\65\69\6E\67\20\72\65\63\6C\61\69\6D\65\64\20\28\4F\38\64\29\20\2D\20\61\20\70\6C\61\63\65\20\64\65\63\69\64\65\64\20\73\6F\6C\65\20\77\61\73\20\6E\6F\74\3A\20\61\20\63\6F\6D\70\69\6C\65\72\20\62\75\67" }>, align 64
@G_2ecompiler_2feval_2eWhyHolderMissed = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\86\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eWhyHolderMissed.k1 }>, align 8
@G_2ecompiler_2feval_2eWhyHolderMissed.k1 = internal constant <{ [134 x i8] }> <{ [134 x i8] c"\61\6E\20\6F\77\6E\69\6E\67\20\70\6C\61\63\65\20\68\6F\6C\64\73\20\61\6E\20\69\6E\73\74\61\6E\63\65\20\69\74\73\20\63\6F\75\6E\74\20\6F\66\20\68\6F\6C\64\65\72\73\20\73\61\79\73\20\6E\6F\6E\65\20\68\6F\6C\64\73\20\28\67\65\6E\72\65\66\73\20\32\2E\34\29\20\2D\20\61\20\73\74\6F\72\65\20\74\68\61\74\20\72\65\63\6F\72\64\65\64\20\6E\6F\20\68\6F\6C\64\65\72\3A\20\61\20\63\6F\6D\70\69\6C\65\72\20\62\75\67" }>, align 64
@G_2ecompiler_2feval_2eWhyInterrupted = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eWhyInterrupted.k1 }>, align 8
@G_2ecompiler_2feval_2eWhyInterrupted.k1 = internal constant <{ [11 x i8] }> <{ [11 x i8] c"\69\6E\74\65\72\72\75\70\74\65\64" }>, align 8
@G_2ecompiler_2feval_2eWhyLong = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\31\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eWhyLong.k1 }>, align 8
@G_2ecompiler_2feval_2eWhyLong.k1 = internal constant <{ [49 x i8] }> <{ [49 x i8] c"\69\74\20\6D\61\6B\65\73\20\61\6E\20\61\72\72\61\79\20\6C\6F\6E\67\65\72\20\74\68\61\6E\20\74\68\65\20\65\76\61\6C\75\61\74\6F\72\20\68\6F\6C\64\73" }>, align 32
@G_2ecompiler_2feval_2eWhyMemory = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\45\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eWhyMemory.k1 }>, align 8
@G_2ecompiler_2feval_2eWhyMemory.k1 = internal constant <{ [69 x i8] }> <{ [69 x i8] c"\74\68\65\20\63\6F\6D\70\75\74\61\74\69\6F\6E\20\74\61\6B\65\73\20\6D\6F\72\65\20\6D\65\6D\6F\72\79\20\74\68\61\6E\20\63\6F\6D\70\69\6C\65\2D\74\69\6D\65\20\65\76\61\6C\75\61\74\69\6F\6E\20\61\6C\6C\6F\77\73" }>, align 64
@G_2ecompiler_2feval_2eWhyMutableGlobal = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\3F\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eWhyMutableGlobal.k1 }>, align 8
@G_2ecompiler_2feval_2eWhyMutableGlobal.k1 = internal constant <{ [63 x i8] }> <{ [63 x i8] c"\69\74\20\72\65\61\64\73\20\61\20\6D\75\74\61\62\6C\65\20\67\6C\6F\62\61\6C\2C\20\77\68\6F\73\65\20\76\61\6C\75\65\20\69\73\20\74\68\65\20\72\75\6E\6E\69\6E\67\20\70\72\6F\67\72\61\6D\27\73" }>, align 32
@G_2ecompiler_2feval_2eWhyNaNOp = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\54\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eWhyNaNOp.k1 }>, align 8
@G_2ecompiler_2feval_2eWhyNaNOp.k1 = internal constant <{ [84 x i8] }> <{ [84 x i8] c"\69\74\20\72\65\61\64\73\20\74\68\65\20\62\69\74\73\20\6F\66\20\61\20\4E\61\4E\20\61\6E\20\6F\70\65\72\61\74\69\6F\6E\20\6D\61\64\65\2C\20\77\68\6F\73\65\20\73\69\67\6E\20\61\6E\64\20\70\61\79\6C\6F\61\64\20\61\72\65\20\75\6E\73\70\65\63\69\66\69\65\64" }>, align 64
@G_2ecompiler_2feval_2eWhyNaNSignal = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\47\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eWhyNaNSignal.k1 }>, align 8
@G_2ecompiler_2feval_2eWhyNaNSignal.k1 = internal constant <{ [71 x i8] }> <{ [71 x i8] c"\69\74\20\72\65\61\64\73\20\74\68\65\20\62\69\74\73\20\6F\66\20\61\20\73\69\67\6E\61\6C\6C\69\6E\67\20\4E\61\4E\2C\20\77\68\69\63\68\20\6D\6F\76\69\6E\67\20\69\74\20\6D\61\79\20\68\61\76\65\20\71\75\69\65\74\65\64" }>, align 64
@G_2ecompiler_2feval_2eWhyNoBody = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\2F\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eWhyNoBody.k1 }>, align 8
@G_2ecompiler_2feval_2eWhyNoBody.k1 = internal constant <{ [47 x i8] }> <{ [47 x i8] c"\69\74\20\63\61\6C\6C\73\20\61\20\66\75\6E\63\74\69\6F\6E\20\77\68\6F\73\65\20\62\6F\64\79\20\69\73\20\6E\6F\74\20\61\76\61\69\6C\61\62\6C\65" }>, align 32
@G_2ecompiler_2feval_2eWhyNoClause = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\27\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eWhyNoClause.k1 }>, align 8
@G_2ecompiler_2feval_2eWhyNoClause.k1 = internal constant <{ [39 x i8] }> <{ [39 x i8] c"\61\20\74\61\73\6B\27\73\20\65\72\72\6F\72\20\68\61\73\20\6E\6F\20\63\6C\61\75\73\65\20\74\6F\20\74\61\6B\65\20\69\74" }>, align 32
@G_2ecompiler_2feval_2eWhyNoGlobal = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\4E\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eWhyNoGlobal.k1 }>, align 8
@G_2ecompiler_2feval_2eWhyNoGlobal.k1 = internal constant <{ [78 x i8] }> <{ [78 x i8] c"\69\74\20\72\65\61\64\73\20\61\20\67\6C\6F\62\61\6C\20\77\68\6F\73\65\20\69\6E\69\74\69\61\6C\69\7A\65\72\20\68\61\73\20\6E\6F\74\20\72\75\6E\20\2D\20\6F\6E\65\20\77\69\74\68\20\61\6E\20\65\72\72\6F\72\20\6E\65\76\65\72\20\64\6F\65\73" }>, align 64
@G_2ecompiler_2feval_2eWhyNoValue = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\28\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eWhyNoValue.k1 }>, align 8
@G_2ecompiler_2feval_2eWhyNoValue.k1 = internal constant <{ [40 x i8] }> <{ [40 x i8] c"\69\74\73\20\69\6E\69\74\69\61\6C\69\7A\65\72\20\64\6F\65\73\20\6E\6F\74\20\70\72\6F\64\75\63\65\20\61\20\76\61\6C\75\65" }>, align 32
@G_2ecompiler_2feval_2eWhyNotModelled = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\36\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eWhyNotModelled.k1 }>, align 8
@G_2ecompiler_2feval_2eWhyNotModelled.k1 = internal constant <{ [54 x i8] }> <{ [54 x i8] c"\69\74\20\75\73\65\73\20\61\20\76\61\6C\75\65\20\63\6F\6D\70\69\6C\65\2D\74\69\6D\65\20\65\76\61\6C\75\61\74\69\6F\6E\20\64\6F\65\73\20\6E\6F\74\20\6D\6F\64\65\6C" }>, align 32
@G_2ecompiler_2feval_2eWhyNull = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\21\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eWhyNull.k1 }>, align 8
@G_2ecompiler_2feval_2eWhyNull.k1 = internal constant <{ [33 x i8] }> <{ [33 x i8] c"\69\74\20\72\65\61\64\73\20\74\68\72\6F\75\67\68\20\61\20\6E\75\6C\6C\20\72\65\66\65\72\65\6E\63\65" }>, align 32
@G_2ecompiler_2feval_2eWhyNullCall = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\26\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eWhyNullCall.k1 }>, align 8
@G_2ecompiler_2feval_2eWhyNullCall.k1 = internal constant <{ [38 x i8] }> <{ [38 x i8] c"\69\74\20\63\61\6C\6C\73\20\74\68\72\6F\75\67\68\20\61\20\6E\75\6C\6C\20\66\75\6E\63\74\69\6F\6E\20\76\61\6C\75\65" }>, align 32
@G_2ecompiler_2feval_2eWhyOutside = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\3C\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eWhyOutside.k1 }>, align 8
@G_2ecompiler_2feval_2eWhyOutside.k1 = internal constant <{ [60 x i8] }> <{ [60 x i8] c"\69\74\20\69\6E\64\65\78\65\73\20\6F\75\74\73\69\64\65\20\74\68\65\20\61\72\72\61\79\2C\20\77\68\69\63\68\20\69\73\20\75\6E\64\65\66\69\6E\65\64\20\61\74\20\72\75\6E\20\74\69\6D\65" }>, align 32
@G_2ecompiler_2feval_2eWhyPayload = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\36\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eWhyPayload.k1 }>, align 8
@G_2ecompiler_2feval_2eWhyPayload.k1 = internal constant <{ [54 x i8] }> <{ [54 x i8] c"\69\74\20\72\65\61\64\73\20\74\68\65\20\70\61\79\6C\6F\61\64\20\6F\66\20\61\20\63\61\73\65\20\74\68\65\20\76\61\6C\75\65\20\64\6F\65\73\20\6E\6F\74\20\68\6F\6C\64" }>, align 32
@G_2ecompiler_2feval_2eWhyReadOnly = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\17\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eWhyReadOnly.k1 }>, align 8
@G_2ecompiler_2feval_2eWhyReadOnly.k1 = internal constant <{ [23 x i8] }> <{ [23 x i8] c"\69\74\20\77\72\69\74\65\73\20\63\6F\6E\73\74\61\6E\74\20\64\61\74\61" }>, align 8
@G_2ecompiler_2feval_2eWhyRunDepth = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\28\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eWhyRunDepth.k1 }>, align 8
@G_2ecompiler_2feval_2eWhyRunDepth.k1 = internal constant <{ [40 x i8] }> <{ [40 x i8] c"\69\74\20\72\65\63\75\72\73\65\73\20\64\65\65\70\65\72\20\74\68\61\6E\20\69\6E\74\65\72\70\72\65\74\20\61\6C\6C\6F\77\73" }>, align 32
@G_2ecompiler_2feval_2eWhyRunEqDepth = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\34\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eWhyRunEqDepth.k1 }>, align 8
@G_2ecompiler_2feval_2eWhyRunEqDepth.k1 = internal constant <{ [52 x i8] }> <{ [52 x i8] c"\74\68\65\20\63\6F\6D\70\61\72\69\73\6F\6E\20\72\65\63\75\72\73\65\73\20\64\65\65\70\65\72\20\74\68\61\6E\20\69\6E\74\65\72\70\72\65\74\20\61\6C\6C\6F\77\73" }>, align 32
@G_2ecompiler_2feval_2eWhyShift = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\2D\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eWhyShift.k1 }>, align 8
@G_2ecompiler_2feval_2eWhyShift.k1 = internal constant <{ [45 x i8] }> <{ [45 x i8] c"\69\74\20\73\68\69\66\74\73\20\62\79\20\61\20\63\6F\75\6E\74\20\6F\75\74\73\69\64\65\20\74\68\65\20\74\79\70\65\27\73\20\77\69\64\74\68" }>, align 32
@G_2ecompiler_2feval_2eWhyStale = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\90\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eWhyStale.k1 }>, align 8
@G_2ecompiler_2feval_2eWhyStale.k1 = internal constant <{ [144 x i8] }> <{ [144 x i8] c"\69\74\20\75\73\65\73\20\61\20\76\69\65\77\20\6F\66\20\61\20\63\6F\6C\6C\65\63\74\69\6F\6E\27\73\20\65\6C\65\6D\65\6E\74\73\20\74\61\6B\65\6E\20\62\65\66\6F\72\65\20\74\68\65\20\63\6F\6C\6C\65\63\74\69\6F\6E\20\67\72\65\77\2C\20\77\68\69\63\68\20\73\68\6F\77\73\20\74\68\65\20\72\65\74\69\72\65\64\20\62\75\66\66\65\72\20\2D\20\69\74\73\20\65\6C\65\6D\65\6E\74\73\20\6F\77\6E\69\6E\67\20\73\74\6F\72\61\67\65\20\65\6D\70\74\69\65\64" }>, align 64
@G_2ecompiler_2feval_2eWhySteps = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\3F\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eWhySteps.k1 }>, align 8
@G_2ecompiler_2feval_2eWhySteps.k1 = internal constant <{ [63 x i8] }> <{ [63 x i8] c"\74\68\65\20\63\6F\6D\70\75\74\61\74\69\6F\6E\20\72\75\6E\73\20\6C\6F\6E\67\65\72\20\74\68\61\6E\20\63\6F\6D\70\69\6C\65\2D\74\69\6D\65\20\65\76\61\6C\75\61\74\69\6F\6E\20\61\6C\6C\6F\77\73" }>, align 32
@G_2ecompiler_2feval_2eWhyWaits = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\67\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eWhyWaits.k1 }>, align 8
@G_2ecompiler_2feval_2eWhyWaits.k1 = internal constant <{ [103 x i8] }> <{ [103 x i8] c"\69\74\20\77\61\69\74\73\20\66\6F\72\20\61\6E\6F\74\68\65\72\20\74\61\73\6B\2C\20\61\6E\64\20\69\6E\74\65\72\70\72\65\74\20\72\75\6E\73\20\61\20\6A\6F\69\6E\27\73\20\74\61\73\6B\73\20\6F\6E\65\20\61\66\74\65\72\20\61\6E\6F\74\68\65\72\2C\20\6E\65\76\65\72\20\62\65\73\69\64\65\20\65\61\63\68\20\6F\74\68\65\72" }>, align 64
@G_2ecompiler_2feval_2eWhyWalkLetGo = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\51\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eWhyWalkLetGo.k1 }>, align 8
@G_2ecompiler_2feval_2eWhyWalkLetGo.k1 = internal constant <{ [81 x i8] }> <{ [81 x i8] c"\69\74\20\6C\65\74\73\20\67\6F\20\6F\66\20\61\20\67\65\6E\65\72\61\74\6F\72\20\70\61\72\74\20\77\61\79\2C\20\77\68\6F\73\65\20\77\61\6C\6B\20\74\68\65\6E\20\72\75\6E\73\20\63\6F\64\65\20\61\73\20\69\74\73\20\73\63\6F\70\65\20\63\6C\6F\73\65\73" }>, align 64
@G_2ecompiler_2feval_2eWhyWeakUnheld = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\66\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eWhyWeakUnheld.k1 }>, align 8
@G_2ecompiler_2feval_2eWhyWeakUnheld.k1 = internal constant <{ [102 x i8] }> <{ [102 x i8] c"\69\74\20\72\65\61\64\73\20\61\20\77\65\61\6B\20\70\6C\61\63\65\20\77\68\6F\73\65\20\72\65\66\65\72\65\6E\74\20\6E\6F\20\6F\77\6E\69\6E\67\20\70\6C\61\63\65\20\68\6F\6C\64\73\2C\20\77\68\69\63\68\20\74\68\65\20\72\75\6E\6E\69\6E\67\20\70\72\6F\67\72\61\6D\20\6D\61\79\20\72\65\61\64\20\61\73\20\6E\75\6C\6C" }>, align 64
@G_2ecompiler_2feval_2eWhyWritesGlobal = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\5A\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eWhyWritesGlobal.k1 }>, align 8
@G_2ecompiler_2feval_2eWhyWritesGlobal.k1 = internal constant <{ [90 x i8] }> <{ [90 x i8] c"\69\74\20\77\72\69\74\65\73\20\61\20\67\6C\6F\62\61\6C\20\6F\72\20\77\68\61\74\20\6F\6E\65\20\68\6F\6C\64\73\2C\20\77\68\69\63\68\20\74\68\65\20\72\75\6E\6E\69\6E\67\20\70\72\6F\67\72\61\6D\20\77\6F\75\6C\64\20\74\68\65\6E\20\6E\6F\74\20\73\65\65\20\77\72\69\74\74\65\6E" }>, align 64
@G_2ecompiler_2feval_2eWhyWritesGlobalVar = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\48\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feval_2eWhyWritesGlobalVar.k1 }>, align 8
@G_2ecompiler_2feval_2eWhyWritesGlobalVar.k1 = internal constant <{ [72 x i8] }> <{ [72 x i8] c"\69\74\20\77\72\69\74\65\73\20\61\20\67\6C\6F\62\61\6C\2C\20\77\68\69\63\68\20\74\68\65\20\72\75\6E\6E\69\6E\67\20\70\72\6F\67\72\61\6D\20\77\6F\75\6C\64\20\74\68\65\6E\20\6E\6F\74\20\73\65\65\20\77\72\69\74\74\65\6E" }>, align 64
@G_2ecompiler_2feval_2eaCode = constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2eaData = constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2eaFree = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2eaGlobal = constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2eaValue = constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2efBin = constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2efConst = constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2efCopy = constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2efLoad = constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2efStore = constant <{ [8 x i8] }> <{ [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2efUn = constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2efastStride = constant <{ [8 x i8] }> <{ [8 x i8] c"\0B\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2egDtor = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2egGen = constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2erCall = constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2erClause = constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2erDtor = constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2erGlobal = constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2erRequest = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2erTask = constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2esBlock = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2esBuilder = constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2esInert = constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2esJoin = constant <{ [8 x i8] }> <{ [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2esProgram = constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2esRegion = constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2esStore = constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2eslotBits = constant <{ [8 x i8] }> <{ [8 x i8] c"\18\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2eslotMask = constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2etCall = constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2etJoin = constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2etRaised = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2etraceKept = constant <{ [8 x i8] }> <{ [8 x i8] c"\20\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2evAgg = constant <{ [8 x i8] }> <{ [8 x i8] c"\0A\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2evBool = constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2evEnum = constant <{ [8 x i8] }> <{ [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2evFixed = constant <{ [8 x i8] }> <{ [8 x i8] c"\0B\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2evFloat = constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2evFunc = constant <{ [8 x i8] }> <{ [8 x i8] c"\07\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2evInt = constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2evNone = constant <{ [8 x i8] }> <{ [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2evOrd = constant <{ [8 x i8] }> <{ [8 x i8] c"\09\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2evPair = constant <{ [8 x i8] }> <{ [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2evPtr = constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2evUint = constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2evVoid = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2evWide = constant <{ [8 x i8] }> <{ [8 x i8] c"\0D\00\00\00\00\00\00\00" }>, align 8
define dso_local void @compiler_2feval_2eMachine_2eNew(ptr %out, ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l1 = alloca i32
  %lp2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l11 = alloca %"compiler/eval:Machine"
  %l12 = alloca ptr
  %l13 = alloca %"compiler/eval:scope"
  %l16 = alloca i64
  %l22 = alloca %"compiler/eval:Ptr"
  %l27 = alloca i64
  %l30 = alloca i64
  %l48 = alloca { i64, ptr }
  %l49 = alloca i64
  %l53 = alloca %"compiler/eval:Ptr"
  %l57 = alloca { i64, ptr }
  %l58 = alloca { i64, ptr }
  %l59 = alloca i32
  %l62 = alloca i1
  %l64 = alloca %"compiler/eval:Machine"
  %s0 = alloca %olang.scope
  %t3 = alloca %"compiler/eval:Machine", align 8
  %t10 = alloca %"compiler/eval:scope", align 8
  %t12 = alloca %"compiler/eval:scope", align 8
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t2 = load i32, ptr %l1, !range !{i32 0, i32 2}
  call void @compiler_2feval_3aMachine_2ector(ptr %t3, ptr %v0, ptr %v1, ptr %a0, i32 %t2)
  call void @llvm.memmove.p0.p0.i64(ptr %l11, ptr %t3, i64 3384, i1 false)
  br label %bb1
bb1:
  %t6 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 3384, i64 8)
  store ptr %t6, ptr %lp2
  %t7 = load ptr, ptr %lp2
  call void @llvm.memmove.p0.p0.i64(ptr %t7, ptr %l11, i64 3384, i1 false)
  %t8 = load ptr, ptr %lp2
  %t9 = getelementptr %"compiler/eval:Machine", ptr %t8, i32 0, i32 52
  store ptr %t9, ptr %l12, !tbaa !29
  call void @compiler_2feval_3ascope_2ector(ptr %t10, ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %l13, ptr %t10, i64 152, i1 false)
  br label %bb2
bb2:
  %t11 = load ptr, ptr %l12, !tbaa !29
  call void @llvm.memmove.p0.p0.i64(ptr %t12, ptr %l13, i64 152, i1 false)
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2ePush_3ccompiler_2feval_3ascope_3e(ptr %v1, ptr %t11, ptr %t12)
  br label %bb3
bb3:
  %t13 = load ptr, ptr %lp2
  %t14 = load i64, ptr @G_2ecompiler_2feval_2esProgram, !tbaa !24
  %t17 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enewScope(ptr %v1, ptr %t13, i64 %t14)
  store i64 %t17, ptr %l16
  br label %bb4
bb4:
  %t18 = load i64, ptr %l16, !tbaa !24
  %t19 = load ptr, ptr %lp2
  %t20 = getelementptr %"compiler/eval:Machine", ptr %t19, i32 0, i32 70
  store i64 %t18, ptr %t20, !tbaa !24
  %t21 = load i32, ptr %l1, !range !{i32 0, i32 2}
  %t23 = trunc i64 1 to i32
  %t24 = icmp eq i32 %t21, %t23
  br i1 %t24, label %bb5, label %bb6
bb5:
  %t26 = load ptr, ptr %lp2
  %t27 = getelementptr %"compiler/eval:Machine", ptr %t26, i32 0, i32 2
  store i64 -1, ptr %t27, !tbaa !24
  %t28 = load ptr, ptr %lp2
  %t29 = getelementptr %"compiler/eval:Machine", ptr %t28, i32 0, i32 9
  store i64 -1, ptr %t29, !tbaa !24
  %t30 = load ptr, ptr %lp2
  %t31 = getelementptr %"compiler/eval:Machine", ptr %t30, i32 0, i32 10
  store i64 10000000, ptr %t31, !tbaa !24
  br label %bb7
bb6:
  br label %bb7
bb7:
  %t32 = load ptr, ptr %lp2
  %t33 = load i64, ptr @G_2ecompiler_2feval_2eaValue, !tbaa !24
  %t34 = load ptr, ptr %lp2
  %t35 = getelementptr %"compiler/eval:Machine", ptr %t34, i32 0, i32 70
  %t36 = load i64, ptr %t35, !tbaa !24
  %t40 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocate(ptr %v1, ptr %t32, i64 64, i64 %t33, i64 %t36)
  store %"compiler/eval:Ptr" %t40, ptr %l22
  br label %bb8
bb8:
  %t41 = getelementptr %"compiler/eval:Ptr", ptr %l22, i32 0, i32 0
  %t42 = load i64, ptr %t41, !tbaa !24
  %t44 = load ptr, ptr %lp2
  %t45 = getelementptr %"compiler/eval:Machine", ptr %t44, i32 0, i32 71
  store i64 %t42, ptr %t45, !tbaa !24
  store i64 0, ptr %l3, !tbaa !24
  store i64 3, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t46 = load i64, ptr %l4, !tbaa !24
  %t47 = load i64, ptr %l3, !tbaa !24
  %t50 = icmp sgt i64 %t46, %t47
  br i1 %t50, label %bb9, label %bb10
bb9:
  %t52 = load i64, ptr %l5, !tbaa !24
  %t54 = icmp sgt i64 %t52, 0
  br i1 %t54, label %bb11, label %bb12
bb10:
  store i64 0, ptr %l27, !tbaa !24
  br label %bb14
bb11:
  %t56 = load i64, ptr %l4, !tbaa !24
  %t57 = load i64, ptr %l3, !tbaa !24
  %t60 = sub i64 %t56, %t57
  %t61 = load i64, ptr %l5, !tbaa !24
  %t64 = add i64 %t60, %t61
  %t66 = sub i64 %t64, 1
  %t67 = load i64, ptr %l5, !tbaa !24
  %t70 = sdiv i64 %t66, %t67
  store i64 %t70, ptr %l30, !tbaa !24
  br label %bb13
bb12:
  store i64 0, ptr %l30, !tbaa !24
  br label %bb13
bb13:
  %t72 = load i64, ptr %l30, !tbaa !24
  store i64 %t72, ptr %l27, !tbaa !24
  br label %bb14
bb14:
  %t73 = load i64, ptr %l27, !tbaa !24
  store i64 %t73, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb15
bb15:
  %t74 = load i64, ptr %l7, !tbaa !24
  %t75 = load i64, ptr %l6, !tbaa !24
  %t78 = icmp slt i64 %t74, %t75
  %t80 = xor i1 %t78, true
  br i1 %t80, label %bb16, label %bb17
bb16:
  br label %bb21
bb17:
  br label %bb18
bb18:
  %t82 = load i64, ptr %l3, !tbaa !24
  %t83 = load i64, ptr %l7, !tbaa !24
  %t84 = load i64, ptr %l5, !tbaa !24
  %t87 = mul i64 %t83, %t84
  %t90 = add i64 %t82, %t87
  %t92 = load ptr, ptr %lp2
  %t93 = getelementptr %"compiler/eval:Machine", ptr %t92, i32 0, i32 72
  %t94 = load { i64, ptr }, ptr %t93, !tbaa !27
  store { i64, ptr } %t94, ptr %l48, !tbaa !27
  store i64 %t90, ptr %l49, !tbaa !24
  %t96 = load ptr, ptr %lp2
  %t97 = load i64, ptr @G_2ecompiler_2feval_2eaValue, !tbaa !24
  %t98 = load ptr, ptr %lp2
  %t99 = getelementptr %"compiler/eval:Machine", ptr %t98, i32 0, i32 70
  %t100 = load i64, ptr %t99, !tbaa !24
  %t104 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocate(ptr %v1, ptr %t96, i64 64, i64 %t97, i64 %t100)
  store %"compiler/eval:Ptr" %t104, ptr %l53
  br label %bb19
bb19:
  %t105 = getelementptr %"compiler/eval:Ptr", ptr %l53, i32 0, i32 0
  %t106 = load i64, ptr %t105, !tbaa !24
  %t108 = load i64, ptr %l49, !tbaa !24
  %t109 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t110 = load ptr, ptr %t109, !tbaa !27
  %t111 = getelementptr i64, ptr %t110, i64 %t108
  store i64 %t106, ptr %t111, !tbaa !34
  br label %bb20
bb20:
  %t112 = load i64, ptr %l7, !tbaa !24
  %t114 = add i64 %t112, 1
  store i64 %t114, ptr %l7, !tbaa !24
  br label %bb15
bb21:
  %t116 = call { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %s0, ptr %s0, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d0, i32 0, i32 1) })
  %t117 = extractvalue { i32, { i64, ptr } } %t116, 1
  %t118 = extractvalue { i32, { i64, ptr } } %t116, 0
  store i32 %t118, ptr %l59
  %t119 = icmp ne i32 %t118, 0
  br i1 %t119, label %bb23, label %ok.120, !prof !99
ok.120:
  store { i64, ptr } %t117, ptr %l58
  br label %bb22
bb22:
  %t121 = load { i64, ptr }, ptr %l58, !tbaa !27
  store { i64, ptr } %t121, ptr %l57, !tbaa !27
  br label %bb27
bb23:
  %t122 = load i32, ptr %l59, !tbaa !23
  %t123 = ashr i32 %t122, 16
  %t125 = icmp eq i32 %t123, 1
  br i1 %t125, label %bb24, label %bb25
bb24:
  call void @__olang_errpay_pop()
  br label %bb25
bb25:
  br label %bb26
bb26:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d1, i32 0, i32 1) }, ptr %l57, !tbaa !27
  br label %bb27
bb27:
  %t127 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t128 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t127, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) })
  store i1 %t128, ptr %l62
  br label %bb28
bb28:
  %t129 = load i1, ptr %l62, !tbaa !21
  %t130 = xor i1 %t129, true
  %t132 = load ptr, ptr %lp2
  %t133 = getelementptr %"compiler/eval:Machine", ptr %t132, i32 0, i32 16
  store i1 %t130, ptr %t133, !tbaa !21
  %t134 = load ptr, ptr %lp2
  call void @llvm.memmove.p0.p0.i64(ptr %l64, ptr %t134, i64 3384, i1 false)
  call void @__olang_scope_close(ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l64, i64 3384, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecatchFn(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i32 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l5 = alloca i32
  %lp6 = alloca ptr
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca i32
  %l15 = alloca i32
  %l16 = alloca ptr
  %l17 = alloca i64
  %l18 = alloca ptr
  %l21 = alloca i32
  %l23 = alloca i32
  %l24 = alloca %"compiler/mir:Fn"
  %l28 = alloca i32
  %l32 = alloca i32
  %l34 = alloca i32
  %l36 = alloca i32
  %l38 = alloca i32
  %l40 = alloca i32
  %l41 = alloca ptr
  %l43 = alloca { i64, [2 x i64] }
  %l45 = alloca { i64, [7 x i64] }
  %l46 = alloca ptr
  %l47 = alloca { i64, [4 x i64] }
  %l48 = alloca { i64, ptr }
  %l49 = alloca %"compiler/mir:Range"
  %l50 = alloca %"compiler/mir:Range"
  %l52 = alloca %"compiler/mir:Lvalue"
  %l56 = alloca %"compiler/mir:Call"
  %l57 = alloca i32
  %l67 = alloca { i64, [21 x i64] }
  %l69 = alloca ptr
  %l70 = alloca i32
  %l71 = alloca %"compiler/source:Span"
  %l73 = alloca %"compiler/mir:Lvalue"
  %l76 = alloca ptr
  %l77 = alloca i32
  %l79 = alloca %"compiler/mir:Lvalue"
  %l80 = alloca { i64, [4 x i64] }
  %l81 = alloca ptr
  %l84 = alloca %"compiler/mir:Case"
  %l85 = alloca { i64, ptr }
  %l86 = alloca %"compiler/mir:Range"
  %l93 = alloca { i64, [21 x i64] }
  %l105 = alloca { i64, [21 x i64] }
  %l113 = alloca %"compiler/mir:Fn"
  %s0 = alloca %olang.scope
  %t18 = alloca %"compiler/mir:Fn", align 8
  %t61 = alloca { i64, [7 x i64] }, align 8
  %t105 = alloca { i64, [8 x i64] }, align 8
  %t120 = alloca { i64, [21 x i64] }, align 8
  %t137 = alloca { i64, [4 x i64] }, align 8
  %t143 = alloca { i64, [8 x i64] }, align 8
  %t159 = alloca { i64, [4 x i64] }, align 8
  %t183 = alloca { i64, [8 x i64] }, align 8
  %t200 = alloca { i64, [21 x i64] }, align 8
  %t215 = alloca { i64, [4 x i64] }, align 8
  %t222 = alloca { i64, [8 x i64] }, align 8
  %t237 = alloca { i64, [21 x i64] }, align 8
  %t252 = alloca { i64, [4 x i64] }, align 8
  %t259 = alloca { i64, [8 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s0, ptr %t1, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store i32 %t3, ptr %l15
  br label %bb1
bb1:
  %t4 = load i32, ptr %l15, !tbaa !23
  store i32 %t4, ptr %l5, !tbaa !23
  %t5 = load ptr, ptr %l0, !tbaa !29
  store ptr %t5, ptr %l16, !tbaa !29
  store i64 %a1, ptr %l17, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  store ptr %t7, ptr %l18, !tbaa !29
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t9 = load i32, ptr %l5, !tbaa !23
  %t12 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList1(ptr %v0, ptr %t8, i32 %t9)
  store i32 %t12, ptr %l21
  br label %bb2
bb2:
  %t13 = load i32, ptr %l5, !tbaa !23
  %t14 = load ptr, ptr %l18, !tbaa !29
  %t15 = load i32, ptr %l21, !tbaa !23
  %t17 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t14, i32 %t15, i32 %t13, i32 0, i32 0, i64 0, i1 false, i32 0, i64 0)
  store i32 %t17, ptr %l23
  br label %bb3
bb3:
  %t19 = load ptr, ptr %l16, !tbaa !29
  %t20 = load i64, ptr %l17, !tbaa !24
  %t21 = load i32, ptr %l23, !tbaa !23
  call void @compiler_2feval_2etfn(ptr %t18, ptr %v0, ptr %v1, ptr %t19, i64 %t20, i32 %t21)
  call void @llvm.memmove.p0.p0.i64(ptr %l24, ptr %t18, i64 800, i1 false)
  br label %bb4
bb4:
  %t22 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 800, i64 8)
  store ptr %t22, ptr %lp6
  %t23 = load ptr, ptr %lp6
  call void @llvm.memmove.p0.p0.i64(ptr %t23, ptr %l24, i64 800, i1 false)
  %t24 = load ptr, ptr %lp6
  %t25 = load i32, ptr %l5, !tbaa !23
  %t26 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t30 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddTemp(ptr %v1, ptr %t24, i32 %t25, %"compiler/source:Span" %t26)
  store i32 %t30, ptr %l28
  br label %bb5
bb5:
  %t31 = load i32, ptr %l28, !tbaa !23
  store i32 %t31, ptr %l7, !tbaa !23
  %t32 = load ptr, ptr %lp6
  %t33 = load i32, ptr @G_2ecompiler_2fmir_2eI32T, !tbaa !23
  %t34 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t38 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddTemp(ptr %v1, ptr %t32, i32 %t33, %"compiler/source:Span" %t34)
  store i32 %t38, ptr %l32
  br label %bb6
bb6:
  %t39 = load i32, ptr %l32, !tbaa !23
  store i32 %t39, ptr %l8, !tbaa !23
  %t40 = load ptr, ptr %lp6
  %t42 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v1, ptr %t40)
  store i32 %t42, ptr %l34
  br label %bb7
bb7:
  %t43 = load i32, ptr %l34, !tbaa !23
  store i32 %t43, ptr %l9, !tbaa !23
  %t44 = load ptr, ptr %lp6
  %t46 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v1, ptr %t44)
  store i32 %t46, ptr %l36
  br label %bb8
bb8:
  %t47 = load i32, ptr %l36, !tbaa !23
  store i32 %t47, ptr %l10, !tbaa !23
  %t48 = load ptr, ptr %lp6
  %t50 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v1, ptr %t48)
  store i32 %t50, ptr %l38
  br label %bb9
bb9:
  %t51 = load i32, ptr %l38, !tbaa !23
  store i32 %t51, ptr %l11, !tbaa !23
  %t52 = load ptr, ptr %lp6
  %t54 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v1, ptr %t52)
  store i32 %t54, ptr %l40
  br label %bb10
bb10:
  %t55 = load i32, ptr %l40, !tbaa !23
  store i32 %t55, ptr %l12, !tbaa !23
  %t56 = load ptr, ptr %lp6
  store ptr %t56, ptr %l41, !tbaa !29
  %t59 = call { i64, [2 x i64] } @compiler_2feval_2etkey(i64 %a2)
  store { i64, [2 x i64] } %t59, ptr %l43
  br label %bb11
bb11:
  store { i64, [7 x i64] } zeroinitializer, ptr %t61
  %t62 = getelementptr { i64, [7 x i64] }, ptr %t61, i32 0, i32 0
  store i64 0, ptr %t62
  %t63 = load { i64, [2 x i64] }, ptr %l43
  %t64 = insertvalue { { i64, [2 x i64] }, i32 } undef, { i64, [2 x i64] } %t63, 0
  %t66 = insertvalue { { i64, [2 x i64] }, i32 } %t64, i32 %a3, 1
  %t67 = getelementptr { i64, [7 x i64] }, ptr %t61, i32 0, i32 1
  store { { i64, [2 x i64] }, i32 } %t66, ptr %t67
  %t68 = load { i64, [7 x i64] }, ptr %t61
  store { i64, [7 x i64] } %t68, ptr %l45
  %t69 = load ptr, ptr %lp6
  store ptr %t69, ptr %l46, !tbaa !29
  %t70 = call { i64, [4 x i64] } @compiler_2feval_2etcopy(i64 0)
  store { i64, [4 x i64] } %t70, ptr %l47
  br label %bb12
bb12:
  %t71 = mul i64 1, 40
  %t72 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t71)
  %t73 = insertvalue { i64, ptr } undef, i64 1, 0
  %t74 = insertvalue { i64, ptr } %t73, ptr %t72, 1
  store { i64, ptr } %t74, ptr %l48, !tbaa !27
  %t75 = load { i64, [4 x i64] }, ptr %l47
  %t76 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !27
  %t78 = getelementptr { i64, [4 x i64] }, ptr %t77, i64 0
  store { i64, [4 x i64] } %t75, ptr %t78
  %t79 = load ptr, ptr %l46, !tbaa !29
  %t80 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t81 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v1, ptr %s0, ptr %t79, { i64, ptr } %t80)
  store %"compiler/mir:Range" %t81, ptr %l49
  br label %bb13
bb13:
  %t82 = load %"compiler/mir:Range", ptr @G_2ecompiler_2fmir_2eEmpty
  store %"compiler/mir:Range" %t82, ptr %l50
  %t83 = load i32, ptr %l7, !tbaa !23
  %t85 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t83)
  store %"compiler/mir:Lvalue" %t85, ptr %l52
  br label %bb14
bb14:
  %t86 = load i32, ptr %l9, !tbaa !23
  %t87 = load i32, ptr %l8, !tbaa !23
  %t88 = load i32, ptr %l10, !tbaa !23
  %t89 = load { i64, [7 x i64] }, ptr %l45
  %t90 = load %"compiler/mir:Range", ptr %l49
  %t91 = load %"compiler/mir:Range", ptr %l50
  %t92 = load %"compiler/mir:Lvalue", ptr %l52
  %t96 = call %"compiler/mir:Call" @compiler_2fmir_3aCall_2ector(ptr %s0, { i64, [7 x i64] } %t89, %"compiler/mir:Range" %t90, %"compiler/mir:Range" %t91, %"compiler/mir:Lvalue" %t92, i1 true, i32 %t86, i32 %t87, i32 %t88)
  store %"compiler/mir:Call" %t96, ptr %l56
  br label %bb15
bb15:
  %t97 = load ptr, ptr %l41, !tbaa !29
  %t98 = load %"compiler/mir:Call", ptr %l56
  %t99 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddCall(ptr %v1, ptr %t97, %"compiler/mir:Call" %t98)
  store i32 %t99, ptr %l57
  br label %bb16
bb16:
  %t100 = load i32, ptr %l57, !tbaa !23
  %t101 = load ptr, ptr %lp6
  %t102 = load i32, ptr @G_2ecompiler_2feval_2eB0, !tbaa !23
  %t103 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  store { i64, [8 x i64] } zeroinitializer, ptr %t105
  %t106 = getelementptr { i64, [8 x i64] }, ptr %t105, i32 0, i32 0
  store i64 4, ptr %t106
  %t108 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t103, 0
  %t110 = insertvalue { %"compiler/source:Span", i32 } %t108, i32 %t100, 1
  %t111 = getelementptr { i64, [8 x i64] }, ptr %t105, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t110, ptr %t111
  %t112 = load { i64, [8 x i64] }, ptr %t105
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v1, ptr %t101, i32 %t102, { i64, [8 x i64] } %t112)
  br label %bb17
bb17:
  %t116 = load ptr, ptr %lp6
  %t117 = load i32, ptr %l9, !tbaa !23
  %t118 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t119 = load i32, ptr @G_2ecompiler_2feval_2eS0, !tbaa !23
  store { i64, [21 x i64] } zeroinitializer, ptr %t120
  %t121 = getelementptr { i64, [21 x i64] }, ptr %t120, i32 0, i32 0
  store i64 4, ptr %t121
  %t123 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t118, 0
  %t125 = insertvalue { %"compiler/source:Span", i32 } %t123, i32 %t119, 1
  %t126 = getelementptr { i64, [21 x i64] }, ptr %t120, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t125, ptr %t126
  %t127 = load { i64, [21 x i64] }, ptr %t120
  store { i64, [21 x i64] } %t127, ptr %l67
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t116, i32 %t117, ptr %l67)
  br label %bb18
bb18:
  %t131 = load ptr, ptr %lp6
  store ptr %t131, ptr %l69, !tbaa !29
  %t132 = load i32, ptr %l9, !tbaa !23
  store i32 %t132, ptr %l70, !tbaa !23
  %t133 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  store %"compiler/source:Span" %t133, ptr %l71
  %t134 = load i32, ptr %l7, !tbaa !23
  %t136 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t134)
  store %"compiler/mir:Lvalue" %t136, ptr %l73
  br label %bb19
bb19:
  store { i64, [4 x i64] } zeroinitializer, ptr %t137
  %t138 = getelementptr { i64, [4 x i64] }, ptr %t137, i32 0, i32 0
  store i64 1, ptr %t138
  %t139 = load %"compiler/mir:Lvalue", ptr %l73
  %t140 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t139, 0
  %t141 = getelementptr { i64, [4 x i64] }, ptr %t137, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t140, ptr %t141
  %t142 = load { i64, [4 x i64] }, ptr %t137
  store { i64, [8 x i64] } zeroinitializer, ptr %t143
  %t144 = getelementptr { i64, [8 x i64] }, ptr %t143, i32 0, i32 0
  store i64 5, ptr %t144
  %t145 = load %"compiler/source:Span", ptr %l71
  %t146 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } undef, %"compiler/source:Span" %t145, 0
  %t148 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } %t146, { i64, [4 x i64] } %t142, 1
  %t149 = getelementptr { i64, [8 x i64] }, ptr %t143, i32 0, i32 1
  store { %"compiler/source:Span", { i64, [4 x i64] } } %t148, ptr %t149
  %t150 = load { i64, [8 x i64] }, ptr %t143
  %t151 = load ptr, ptr %l69, !tbaa !29
  %t152 = load i32, ptr %l70, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v1, ptr %t151, i32 %t152, { i64, [8 x i64] } %t150)
  br label %bb20
bb20:
  %t154 = load ptr, ptr %lp6
  store ptr %t154, ptr %l76, !tbaa !29
  %t155 = load i32, ptr %l10, !tbaa !23
  store i32 %t155, ptr %l77, !tbaa !23
  %t156 = load i32, ptr %l8, !tbaa !23
  %t158 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t156)
  store %"compiler/mir:Lvalue" %t158, ptr %l79
  br label %bb21
bb21:
  store { i64, [4 x i64] } zeroinitializer, ptr %t159
  %t160 = getelementptr { i64, [4 x i64] }, ptr %t159, i32 0, i32 0
  store i64 1, ptr %t160
  %t161 = load %"compiler/mir:Lvalue", ptr %l79
  %t162 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t161, 0
  %t163 = getelementptr { i64, [4 x i64] }, ptr %t159, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t162, ptr %t163
  %t164 = load { i64, [4 x i64] }, ptr %t159
  store { i64, [4 x i64] } %t164, ptr %l80
  %t165 = load ptr, ptr %lp6
  store ptr %t165, ptr %l81, !tbaa !29
  %t167 = load i32, ptr %l11, !tbaa !23
  %t170 = call %"compiler/mir:Case" @compiler_2fmir_3aCase_2ector(ptr %s0, i64 %a4, i32 %t167)
  store %"compiler/mir:Case" %t170, ptr %l84
  br label %bb22
bb22:
  %t171 = mul i64 1, 16
  %t172 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t171)
  %t173 = insertvalue { i64, ptr } undef, i64 1, 0
  %t174 = insertvalue { i64, ptr } %t173, ptr %t172, 1
  store { i64, ptr } %t174, ptr %l85, !tbaa !27
  %t175 = load %"compiler/mir:Case", ptr %l84
  %t176 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t177 = load ptr, ptr %t176, !tbaa !27
  %t178 = getelementptr %"compiler/mir:Case", ptr %t177, i64 0
  store %"compiler/mir:Case" %t175, ptr %t178
  %t179 = load ptr, ptr %l81, !tbaa !29
  %t180 = load { i64, ptr }, ptr %l85, !tbaa !27
  %t181 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddCases(ptr %v1, ptr %s0, ptr %t179, { i64, ptr } %t180)
  store %"compiler/mir:Range" %t181, ptr %l86
  br label %bb23
bb23:
  %t182 = load i32, ptr %l12, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t183
  %t184 = getelementptr { i64, [8 x i64] }, ptr %t183, i32 0, i32 0
  store i64 3, ptr %t184
  %t185 = load { i64, [4 x i64] }, ptr %l80
  %t186 = insertvalue { { i64, [4 x i64] }, %"compiler/mir:Range", i32 } undef, { i64, [4 x i64] } %t185, 0
  %t187 = load %"compiler/mir:Range", ptr %l86
  %t188 = insertvalue { { i64, [4 x i64] }, %"compiler/mir:Range", i32 } %t186, %"compiler/mir:Range" %t187, 1
  %t190 = insertvalue { { i64, [4 x i64] }, %"compiler/mir:Range", i32 } %t188, i32 %t182, 2
  %t191 = getelementptr { i64, [8 x i64] }, ptr %t183, i32 0, i32 1
  store { { i64, [4 x i64] }, %"compiler/mir:Range", i32 } %t190, ptr %t191
  %t192 = load { i64, [8 x i64] }, ptr %t183
  %t193 = load ptr, ptr %l76, !tbaa !29
  %t194 = load i32, ptr %l77, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v1, ptr %t193, i32 %t194, { i64, [8 x i64] } %t192)
  br label %bb24
bb24:
  %t196 = load ptr, ptr %lp6
  %t197 = load i32, ptr %l11, !tbaa !23
  %t198 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t199 = load i32, ptr @G_2ecompiler_2feval_2eS0, !tbaa !23
  store { i64, [21 x i64] } zeroinitializer, ptr %t200
  %t201 = getelementptr { i64, [21 x i64] }, ptr %t200, i32 0, i32 0
  store i64 4, ptr %t201
  %t203 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t198, 0
  %t205 = insertvalue { %"compiler/source:Span", i32 } %t203, i32 %t199, 1
  %t206 = getelementptr { i64, [21 x i64] }, ptr %t200, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t205, ptr %t206
  %t207 = load { i64, [21 x i64] }, ptr %t200
  store { i64, [21 x i64] } %t207, ptr %l93
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t196, i32 %t197, ptr %l93)
  br label %bb25
bb25:
  %t211 = load ptr, ptr %lp6
  %t212 = load i32, ptr %l11, !tbaa !23
  %t213 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t214 = load i32, ptr %l5, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t215
  %t216 = getelementptr { i64, [4 x i64] }, ptr %t215, i32 0, i32 0
  store i64 2, ptr %t216
  %t218 = insertvalue { i32, i64 } undef, i32 %t214, 0
  %t219 = insertvalue { i32, i64 } %t218, i64 -1, 1
  %t220 = getelementptr { i64, [4 x i64] }, ptr %t215, i32 0, i32 1
  store { i32, i64 } %t219, ptr %t220
  %t221 = load { i64, [4 x i64] }, ptr %t215
  store { i64, [8 x i64] } zeroinitializer, ptr %t222
  %t223 = getelementptr { i64, [8 x i64] }, ptr %t222, i32 0, i32 0
  store i64 5, ptr %t223
  %t225 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } undef, %"compiler/source:Span" %t213, 0
  %t227 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } %t225, { i64, [4 x i64] } %t221, 1
  %t228 = getelementptr { i64, [8 x i64] }, ptr %t222, i32 0, i32 1
  store { %"compiler/source:Span", { i64, [4 x i64] } } %t227, ptr %t228
  %t229 = load { i64, [8 x i64] }, ptr %t222
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v1, ptr %t211, i32 %t212, { i64, [8 x i64] } %t229)
  br label %bb26
bb26:
  %t233 = load ptr, ptr %lp6
  %t234 = load i32, ptr %l12, !tbaa !23
  %t235 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t236 = load i32, ptr @G_2ecompiler_2feval_2eS0, !tbaa !23
  store { i64, [21 x i64] } zeroinitializer, ptr %t237
  %t238 = getelementptr { i64, [21 x i64] }, ptr %t237, i32 0, i32 0
  store i64 4, ptr %t238
  %t240 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t235, 0
  %t242 = insertvalue { %"compiler/source:Span", i32 } %t240, i32 %t236, 1
  %t243 = getelementptr { i64, [21 x i64] }, ptr %t237, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t242, ptr %t243
  %t244 = load { i64, [21 x i64] }, ptr %t237
  store { i64, [21 x i64] } %t244, ptr %l105
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t233, i32 %t234, ptr %l105)
  br label %bb27
bb27:
  %t248 = load ptr, ptr %lp6
  %t249 = load i32, ptr %l12, !tbaa !23
  %t250 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t251 = load i32, ptr %l5, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t252
  %t253 = getelementptr { i64, [4 x i64] }, ptr %t252, i32 0, i32 0
  store i64 2, ptr %t253
  %t255 = insertvalue { i32, i64 } undef, i32 %t251, 0
  %t256 = insertvalue { i32, i64 } %t255, i64 -2, 1
  %t257 = getelementptr { i64, [4 x i64] }, ptr %t252, i32 0, i32 1
  store { i32, i64 } %t256, ptr %t257
  %t258 = load { i64, [4 x i64] }, ptr %t252
  store { i64, [8 x i64] } zeroinitializer, ptr %t259
  %t260 = getelementptr { i64, [8 x i64] }, ptr %t259, i32 0, i32 0
  store i64 5, ptr %t260
  %t262 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } undef, %"compiler/source:Span" %t250, 0
  %t264 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } %t262, { i64, [4 x i64] } %t258, 1
  %t265 = getelementptr { i64, [8 x i64] }, ptr %t259, i32 0, i32 1
  store { %"compiler/source:Span", { i64, [4 x i64] } } %t264, ptr %t265
  %t266 = load { i64, [8 x i64] }, ptr %t259
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v1, ptr %t248, i32 %t249, { i64, [8 x i64] } %t266)
  br label %bb28
bb28:
  %t270 = load ptr, ptr %lp6
  call void @llvm.memmove.p0.p0.i64(ptr %l113, ptr %t270, i64 800, i1 false)
  call void @__olang_scope_close(ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l113, i64 800, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2feval_2ecmp128(i64 %a0, i64 %a1, i64 %a2, i64 %a3, i1 %a4) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l12 = alloca i64
  %l15 = alloca i1
  %l16 = alloca i64
  %l23 = alloca i1
  %l24 = alloca i64
  %rv = alloca i64
  store i64 %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t2 = load i64, ptr %l3, !tbaa !24
  %t5 = icmp ne i64 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  br i1 %a4, label %bb3, label %bb4
bb2:
  br label %bb13
bb3:
  %t9 = load i64, ptr %l1, !tbaa !24
  %t10 = load i64, ptr %l3, !tbaa !24
  %t13 = icmp slt i64 %t9, %t10
  br i1 %t13, label %bb5, label %bb6
bb4:
  br label %bb8
bb5:
  store i64 -1, ptr %l12, !tbaa !24
  br label %bb7
bb6:
  store i64 1, ptr %l12, !tbaa !24
  br label %bb7
bb7:
  %t15 = load i64, ptr %l12, !tbaa !24
  store i64 %t15, ptr %rv
  br label %ret
bb8:
  %t16 = load i64, ptr %l1, !tbaa !24
  %t17 = load i64, ptr %l3, !tbaa !24
  %t20 = call i1 @compiler_2feval_2eult64(i64 %t16, i64 %t17)
  store i1 %t20, ptr %l15
  br label %bb9
bb9:
  %t21 = load i1, ptr %l15, !tbaa !21
  br i1 %t21, label %bb10, label %bb11
bb10:
  store i64 -1, ptr %l16, !tbaa !24
  br label %bb12
bb11:
  store i64 1, ptr %l16, !tbaa !24
  br label %bb12
bb12:
  %t22 = load i64, ptr %l16, !tbaa !24
  store i64 %t22, ptr %rv
  br label %ret
bb13:
  %t23 = load i64, ptr %l0, !tbaa !24
  %t24 = load i64, ptr %l2, !tbaa !24
  %t27 = icmp eq i64 %t23, %t24
  br i1 %t27, label %bb14, label %bb15
bb14:
  store i64 0, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t30 = load i64, ptr %l0, !tbaa !24
  %t31 = load i64, ptr %l2, !tbaa !24
  %t34 = call i1 @compiler_2feval_2eult64(i64 %t30, i64 %t31)
  store i1 %t34, ptr %l23
  br label %bb17
bb17:
  %t35 = load i1, ptr %l23, !tbaa !21
  br i1 %t35, label %bb18, label %bb19
bb18:
  store i64 -1, ptr %l24, !tbaa !24
  br label %bb20
bb19:
  store i64 1, ptr %l24, !tbaa !24
  br label %bb20
bb20:
  %t36 = load i64, ptr %l24, !tbaa !24
  store i64 %t36, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eDefine(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca { i64, [2 x i64] }
  %l11 = alloca i32
  %l14 = alloca i64
  %l30 = alloca ptr
  %l33 = alloca i64
  %l34 = alloca %"compiler/eval:cfn"
  %l36 = alloca %"compiler/eval:cfn"
  %l45 = alloca i64
  %l48 = alloca i64
  %l67 = alloca { i64, ptr }
  %l69 = alloca { i64, ptr }
  %l71 = alloca %"compiler/eval:cfn"
  %l75 = alloca { i64, ptr }
  %l76 = alloca i64
  %l79 = alloca %"compiler/eval:cfn"
  %l81 = alloca { i64, ptr }
  %l82 = alloca i64
  %l87 = alloca i1
  %l94 = alloca { i64, ptr }
  %t49 = alloca %"compiler/eval:cfn", align 8
  %t59 = alloca i64
  %t148 = alloca %"compiler/eval:cfn", align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 25
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eLen_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l14
  br label %bb1
bb1:
  %t6 = load i64, ptr %l14, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/eval:Machine", ptr %t7, i32 0, i32 30
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr %"compiler/mir:Fn", ptr %t10, i32 0, i32 0
  %t13 = load { i64, [2 x i64] }, ptr %t12
  %t14 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20I64_3e_2eP_H79a97b7337c7adf08bdd37311af7e171(ptr %v0, ptr %t9, { i64, [2 x i64] } %t13, i64 %t14)
  br label %bb2
bb2:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/eval:Machine", ptr %t18, i32 0, i32 25
  %t21 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2ePush_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %v1, ptr %t20, ptr %t21)
  br label %bb3
bb3:
  %t24 = load i64, ptr %l2, !tbaa !24
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/eval:Machine", ptr %t25, i32 0, i32 26
  %t28 = load { i64, ptr }, ptr %t27, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t28, 0
  %t33 = icmp sge i64 %t24, %t30
  br i1 %t33, label %bb4, label %bb5
bb4:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/eval:Machine", ptr %t35, i32 0, i32 26
  %t38 = load { i64, ptr }, ptr %t37, !tbaa !27
  store { i64, ptr } %t38, ptr %l3, !tbaa !27
  %t40 = load ptr, ptr %l0, !tbaa !29
  store ptr %t40, ptr %l30, !tbaa !29
  %t41 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t41, 0
  %t45 = mul i64 2, %t43
  store i64 %t45, ptr %l33, !tbaa !24
  call void @llvm.memset.p0.i64(ptr %l34, i8 0, i64 264, i1 false)
  %t46 = load i64, ptr %l33, !tbaa !24
  %t47 = icmp sgt i64 %t46, 0
  br i1 %t47, label %bb6, label %bb7
bb5:
  br label %bb25
bb6:
  call void @olang_2emir_2eHelperKind_2eZero_2ecompiler_2feval_3acfn(ptr %t49, ptr %v0)
  call void @llvm.memmove.p0.p0.i64(ptr %l36, ptr %t49, i64 264, i1 false)
  br label %bb8
bb7:
  %t50 = load i64, ptr %l33, !tbaa !24
  %t51 = icmp sge i64 %t50, 0
  br i1 %t51, label %bb9, label %bb10
bb8:
  call void @llvm.memmove.p0.p0.i64(ptr %l34, ptr %l36, i64 264, i1 false)
  br label %bb7
bb9:
  %t53 = load i64, ptr %l33, !tbaa !24
  %t54 = icmp sle i64 %t53, 34937015291116575
  br i1 %t54, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_8e30d4bcef98d937_821e6ec72834ca4b)
  unreachable
bb11:
  %t56 = load i64, ptr %l33, !tbaa !24
  %t57 = mul i64 %t56, 264
  %t58 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t57)
  store i64 0, ptr %t59
  br label %fill.60
fill.60:
  %t63 = load i64, ptr %t59
  %t64 = icmp slt i64 %t63, %t56
  br i1 %t64, label %fillb.61, label %filld.62
fillb.61:
  %t65 = getelementptr %"compiler/eval:cfn", ptr %t58, i64 %t63
  call void @llvm.memmove.p0.p0.i64(ptr %t65, ptr %l34, i64 264, i1 false)
  %t66 = add i64 %t63, 1
  store i64 %t66, ptr %t59
  br label %fill.60
filld.62:
  %t67 = insertvalue { i64, ptr } undef, i64 %t56, 0
  %t68 = insertvalue { i64, ptr } %t67, ptr %t58, 1
  %t70 = load ptr, ptr %l30, !tbaa !29
  %t71 = getelementptr %"compiler/eval:Machine", ptr %t70, i32 0, i32 26
  store { i64, ptr } %t68, ptr %t71, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t72 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t74 = extractvalue { i64, ptr } %t72, 0
  store i64 %t74, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t76 = load i64, ptr %l5, !tbaa !24
  %t77 = load i64, ptr %l4, !tbaa !24
  %t80 = icmp sgt i64 %t76, %t77
  br i1 %t80, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_8e30d4bcef98d937_821e6ec72834ca4b)
  unreachable
bb13:
  %t82 = load i64, ptr %l6, !tbaa !24
  %t84 = icmp sgt i64 %t82, 0
  br i1 %t84, label %bb15, label %bb16
bb14:
  store i64 0, ptr %l45, !tbaa !24
  br label %bb18
bb15:
  %t86 = load i64, ptr %l5, !tbaa !24
  %t87 = load i64, ptr %l4, !tbaa !24
  %t90 = sub i64 %t86, %t87
  %t91 = load i64, ptr %l6, !tbaa !24
  %t94 = add i64 %t90, %t91
  %t96 = sub i64 %t94, 1
  %t97 = load i64, ptr %l6, !tbaa !24
  %t100 = sdiv i64 %t96, %t97
  store i64 %t100, ptr %l48, !tbaa !24
  br label %bb17
bb16:
  store i64 0, ptr %l48, !tbaa !24
  br label %bb17
bb17:
  %t102 = load i64, ptr %l48, !tbaa !24
  store i64 %t102, ptr %l45, !tbaa !24
  br label %bb18
bb18:
  %t103 = load i64, ptr %l45, !tbaa !24
  store i64 %t103, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb19
bb19:
  %t104 = load i64, ptr %l8, !tbaa !24
  %t105 = load i64, ptr %l7, !tbaa !24
  %t108 = icmp slt i64 %t104, %t105
  %t110 = xor i1 %t108, true
  br i1 %t110, label %bb20, label %bb21
bb20:
  br label %bb24
bb21:
  br label %bb22
bb22:
  %t112 = load i64, ptr %l4, !tbaa !24
  %t113 = load i64, ptr %l8, !tbaa !24
  %t114 = load i64, ptr %l6, !tbaa !24
  %t117 = mul i64 %t113, %t114
  %t120 = add i64 %t112, %t117
  store i64 %t120, ptr %l9, !tbaa !24
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t124 = getelementptr %"compiler/eval:Machine", ptr %t122, i32 0, i32 26
  %t125 = load { i64, ptr }, ptr %t124, !tbaa !27
  store { i64, ptr } %t125, ptr %l67, !tbaa !27
  %t126 = load i64, ptr %l9, !tbaa !24
  %t127 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t127, ptr %l69, !tbaa !27
  %t128 = load i64, ptr %l9, !tbaa !24
  %t130 = getelementptr { i64, ptr }, ptr %l69, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !27
  %t132 = getelementptr %"compiler/eval:cfn", ptr %t131, i64 %t128
  call void @llvm.memmove.p0.p0.i64(ptr %l71, ptr %t132, i64 264, i1 false)
  %t134 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t135 = load ptr, ptr %t134, !tbaa !27
  %t136 = getelementptr %"compiler/eval:cfn", ptr %t135, i64 %t126
  call void @llvm.memmove.p0.p0.i64(ptr %t136, ptr %l71, i64 264, i1 false)
  br label %bb23
bb23:
  %t137 = load i64, ptr %l8, !tbaa !24
  %t139 = add i64 %t137, 1
  store i64 %t139, ptr %l8, !tbaa !24
  br label %bb19
bb24:
  br label %bb25
bb25:
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t143 = getelementptr %"compiler/eval:Machine", ptr %t141, i32 0, i32 26
  %t144 = load { i64, ptr }, ptr %t143, !tbaa !27
  store { i64, ptr } %t144, ptr %l75, !tbaa !27
  %t145 = load i64, ptr %l2, !tbaa !24
  store i64 %t145, ptr %l76, !tbaa !24
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t147 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2edecode(ptr %t148, ptr %v0, ptr %v1, ptr %v0, ptr %t146, ptr %t147)
  call void @llvm.memmove.p0.p0.i64(ptr %l79, ptr %t148, i64 264, i1 false)
  br label %bb26
bb26:
  %t151 = load i64, ptr %l76, !tbaa !24
  %t152 = getelementptr { i64, ptr }, ptr %l75, i32 0, i32 1
  %t153 = load ptr, ptr %t152, !tbaa !27
  %t154 = getelementptr %"compiler/eval:cfn", ptr %t153, i64 %t151
  call void @llvm.memmove.p0.p0.i64(ptr %t154, ptr %l79, i64 264, i1 false)
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t157 = getelementptr %"compiler/eval:Machine", ptr %t155, i32 0, i32 26
  %t158 = load { i64, ptr }, ptr %t157, !tbaa !27
  store { i64, ptr } %t158, ptr %l81, !tbaa !27
  %t159 = load i64, ptr %l2, !tbaa !24
  store i64 %t159, ptr %l82, !tbaa !24
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t162 = getelementptr %"compiler/eval:Machine", ptr %t160, i32 0, i32 24
  %t163 = load ptr, ptr %l1, !tbaa !29
  %t165 = getelementptr %"compiler/mir:Fn", ptr %t163, i32 0, i32 0
  %t166 = load { i64, [2 x i64] }, ptr %t165
  %t169 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e_2e_Hf0a5beca6f8aee4731a76bd327ae0a99(ptr %v0, ptr %t162, { i64, [2 x i64] } %t166)
  store i1 %t169, ptr %l87
  br label %bb27
bb27:
  %t170 = load i1, ptr %l87, !tbaa !21
  %t171 = load i64, ptr %l82, !tbaa !24
  %t172 = getelementptr { i64, ptr }, ptr %l81, i32 0, i32 1
  %t173 = load ptr, ptr %t172, !tbaa !27
  %t174 = getelementptr %"compiler/eval:cfn", ptr %t173, i64 %t171
  %t175 = getelementptr %"compiler/eval:cfn", ptr %t174, i32 0, i32 16
  store i1 %t170, ptr %t175, !tbaa !21
  %t176 = load ptr, ptr %l1, !tbaa !29
  %t178 = getelementptr %"compiler/mir:Fn", ptr %t176, i32 0, i32 0
  %t179 = load { i64, [2 x i64] }, ptr %t178
  store { i64, [2 x i64] } %t179, ptr %l10
  %t181 = load { i64, [2 x i64] }, ptr %l10
  %t183 = extractvalue { i64, [2 x i64] } %t181, 0
  %t184 = icmp eq i64 %t183, 3
  br i1 %t184, label %bb28, label %bb29
bb28:
  %t186 = getelementptr { i64, [2 x i64] }, ptr %l10, i32 0, i32 1
  %t187 = getelementptr { i32, i32 }, ptr %t186, i32 0, i32 0
  %t188 = load i32, ptr %t187, !range !{i32 0, i32 8}
  store i32 %t188, ptr %l11
  br label %bb30
bb29:
  br label %bb31
bb30:
  %t190 = load ptr, ptr %l0, !tbaa !29
  %t192 = getelementptr %"compiler/eval:Machine", ptr %t190, i32 0, i32 26
  %t193 = load { i64, ptr }, ptr %t192, !tbaa !27
  store { i64, ptr } %t193, ptr %l94, !tbaa !27
  %t194 = load i64, ptr %l2, !tbaa !24
  %t195 = load i32, ptr %l11, !range !{i32 0, i32 8}
  %t197 = trunc i64 1 to i32
  %t198 = icmp eq i32 %t195, %t197
  %t201 = getelementptr { i64, ptr }, ptr %l94, i32 0, i32 1
  %t202 = load ptr, ptr %t201, !tbaa !27
  %t203 = getelementptr %"compiler/eval:cfn", ptr %t202, i64 %t194
  %t204 = getelementptr %"compiler/eval:cfn", ptr %t203, i32 0, i32 17
  store i1 %t198, ptr %t204, !tbaa !21
  br label %bb36
bb31:
  br i1 true, label %bb32, label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb36
bb35:
  call void @__olang_check_failed(ptr @olang_loc_8d25544d0bd70291_3d464b777e1774ad)
  unreachable
bb36:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eDefineTable(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l7 = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 39
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3ccompiler_2fmir_3aFnKe_H6f34e373626f6b99bb5e62c0fd8bd7a4(ptr %v0, ptr %t3, i64 %t4)
  store i1 %t7, ptr %l7
  br label %bb1
bb1:
  %t8 = load i1, ptr %l7, !tbaa !21
  br i1 %t8, label %bb2, label %bb3
bb2:
  br label %ret
bb3:
  br label %bb4
bb4:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/eval:Machine", ptr %t9, i32 0, i32 38
  %t12 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aTypeId_3e__Hbdd7c5068e376aa260a62181a9f99429(ptr %v0, ptr %t11, i64 %t12, i32 %a2)
  br label %bb5
bb5:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/eval:Machine", ptr %t17, i32 0, i32 39
  %t20 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3ccompiler_2fmir_3aFnKe_Hd8d89e440939766a34c786789c5d3b97(ptr %v0, ptr %v1, ptr %t19, i64 %t20, { i64, ptr } %a3)
  br label %bb6
bb6:
  br label %ret
ret:
  ret void
}

define dso_local { i64, [5 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2eEndProgram(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l9 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i32
  %l21 = alloca i64
  %l28 = alloca i64
  %l35 = alloca i64
  %l38 = alloca i1
  %rv = alloca { i64, [5 x i64] }
  %t5 = alloca { i64, [5 x i64] }, align 8
  %t23 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 22
  store i1 false, ptr %t3, !tbaa !21
  %t4 = load ptr, ptr %l0, !tbaa !29
  store { i64, [5 x i64] } zeroinitializer, ptr %t5
  %t6 = getelementptr { i64, [5 x i64] }, ptr %t5, i32 0, i32 0
  store i64 0, ptr %t6
  %t7 = load { i64, [5 x i64] }, ptr %t5
  %t10 = getelementptr %"compiler/eval:Machine", ptr %t4, i32 0, i32 20
  store { i64, [5 x i64] } %t7, ptr %t10
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/eval:Machine", ptr %t11, i32 0, i32 30
  %t17 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20I64_3e_2eG_H6ffe2eb17daa971b2c9d564ad72358b1(ptr %v0, ptr %t13, { i64, [2 x i64] } %a1)
  %t18 = extractvalue { i32, i64 } %t17, 1
  %t19 = extractvalue { i32, i64 } %t17, 0
  store i32 %t19, ptr %l14
  %t20 = icmp ne i32 %t19, 0
  br i1 %t20, label %bb2, label %ok.21, !prof !99
ok.21:
  store i64 %t18, ptr %l13
  br label %bb1
bb1:
  %t22 = load i64, ptr %l13, !tbaa !24
  store i64 %t22, ptr %l9, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store { i64, [5 x i64] } zeroinitializer, ptr %t23
  %t24 = getelementptr { i64, [5 x i64] }, ptr %t23, i32 0, i32 0
  store i64 0, ptr %t24
  %t25 = load { i64, [5 x i64] }, ptr %t23
  store { i64, [5 x i64] } %t25, ptr %rv
  br label %ret
bb4:
  %t27 = load i64, ptr %l9, !tbaa !24
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/eval:Machine", ptr %t28, i32 0, i32 59
  %t31 = load i64, ptr %t30, !tbaa !24
  store i64 %t31, ptr %l3, !tbaa !24
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = load i64, ptr @G_2ecompiler_2feval_2erRequest, !tbaa !24
  %t39 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2epushFrame(ptr %v0, ptr %t33, i64 %t27, i64 %t35, i64 0)
  store i64 %t39, ptr %l21
  br label %bb5
bb5:
  %t40 = load i64, ptr %l21, !tbaa !24
  store i64 %t40, ptr %l4, !tbaa !24
  %t41 = load i64, ptr %l4, !tbaa !24
  %t43 = icmp slt i64 %t41, 0
  br i1 %t43, label %bb6, label %bb7
bb6:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/eval:Machine", ptr %t45, i32 0, i32 20
  %t48 = load { i64, [5 x i64] }, ptr %t47
  store { i64, [5 x i64] } %t48, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/eval:Machine", ptr %t50, i32 0, i32 62
  %t54 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t52)
  store i64 %t54, ptr %l28
  br label %bb9
bb9:
  %t55 = load i64, ptr %l28, !tbaa !24
  store i64 %t55, ptr %l5, !tbaa !24
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/eval:Machine", ptr %t56, i32 0, i32 62
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/eval:Machine", ptr %t59, i32 0, i32 70
  %t62 = load i64, ptr %t61, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t58, i64 %t62)
  br label %bb10
bb10:
  br label %bb11
bb11:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/eval:Machine", ptr %t65, i32 0, i32 62
  %t69 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t67)
  store i64 %t69, ptr %l35
  br label %bb12
bb12:
  %t70 = load i64, ptr %l5, !tbaa !24
  %t71 = load i64, ptr %l35, !tbaa !24
  %t73 = icmp sgt i64 %t71, %t70
  br i1 %t73, label %bb13, label %bb14
bb13:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/eval:Machine", ptr %t75, i32 0, i32 22
  %t78 = load i1, ptr %t77, !tbaa !21
  %t80 = xor i1 %t78, true
  store i1 %t80, ptr %l38, !tbaa !21
  br label %bb15
bb14:
  store i1 false, ptr %l38, !tbaa !21
  br label %bb15
bb15:
  %t82 = load i1, ptr %l38, !tbaa !21
  %t83 = xor i1 %t82, true
  br i1 %t83, label %bb16, label %bb17
bb16:
  br label %bb22
bb17:
  br label %bb18
bb18:
  %t85 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2estepClose(ptr %v0, ptr %t85)
  br label %bb19
bb19:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t88 = load i64, ptr %l4, !tbaa !24
  %t90 = add i64 %t88, 1
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eloop(ptr %v0, ptr %t87, i64 %t90)
  br label %bb20
bb20:
  br label %bb21
bb21:
  br label %bb11
bb22:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t94 = load i64, ptr %l3, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eunwind(ptr %v0, ptr %t93, i64 %t94)
  br label %bb23
bb23:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/eval:Machine", ptr %t97, i32 0, i32 20
  %t100 = load { i64, [5 x i64] }, ptr %t99
  store { i64, [5 x i64] } %t100, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [5 x i64] }, ptr %rv
  ret { i64, [5 x i64] } %rr
}

define dso_local { i64, [5 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2eGlobal(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2, i1 %a3, i1 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i1
  %l7 = alloca i64
  %l8 = alloca i32
  %l9 = alloca i64
  %l10 = alloca %"compiler/eval:Ptr"
  %l20 = alloca i1
  %l22 = alloca { i64, ptr }
  %l41 = alloca i64
  %l43 = alloca ptr
  %l46 = alloca %"compiler/eval:gkey"
  %l47 = alloca i64
  %l48 = alloca i32
  %l56 = alloca %"compiler/eval:global"
  %l66 = alloca %"compiler/eval:global"
  %l68 = alloca i1
  %l70 = alloca i1
  %l79 = alloca i1
  %l82 = alloca i1
  %l90 = alloca %"compiler/eval:global"
  %l106 = alloca i1
  %l110 = alloca %"compiler/eval:global"
  %l116 = alloca ptr
  %l119 = alloca i64
  %l123 = alloca %"compiler/eval:Ptr"
  %l124 = alloca ptr
  %l125 = alloca %"compiler/eval:Ptr"
  %l129 = alloca %"compiler/eval:global"
  %l131 = alloca %"compiler/eval:Ptr"
  %l134 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca { i64, [5 x i64] }
  %t5 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i1 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 22
  store i1 false, ptr %t3, !tbaa !21
  %t4 = load ptr, ptr %l0, !tbaa !29
  store { i64, [5 x i64] } zeroinitializer, ptr %t5
  %t6 = getelementptr { i64, [5 x i64] }, ptr %t5, i32 0, i32 0
  store i64 0, ptr %t6
  %t7 = load { i64, [5 x i64] }, ptr %t5
  %t10 = getelementptr %"compiler/eval:Machine", ptr %t4, i32 0, i32 20
  store { i64, [5 x i64] } %t7, ptr %t10
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/eval:Machine", ptr %t11, i32 0, i32 14
  store i64 0, ptr %t13, !tbaa !24
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/eval:Machine", ptr %t14, i32 0, i32 18
  %t17 = getelementptr %"compiler/eval:Ptr", ptr %t16, i32 0, i32 0
  %t18 = load i64, ptr %t17, !tbaa !24
  %t20 = icmp ne i64 %t18, 0
  br i1 %t20, label %bb1, label %bb2
bb1:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/eval:Machine", ptr %t22, i32 0, i32 49
  %t25 = load { i64, ptr }, ptr %t24, !tbaa !27
  store { i64, ptr } %t25, ptr %l22, !tbaa !27
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/eval:Machine", ptr %t26, i32 0, i32 18
  %t29 = getelementptr %"compiler/eval:Ptr", ptr %t28, i32 0, i32 0
  %t30 = load i64, ptr %t29, !tbaa !24
  %t31 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t34 = and i64 %t30, %t31
  %t36 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !27
  %t38 = getelementptr %"compiler/eval:alloc", ptr %t37, i64 %t34
  %t39 = getelementptr %"compiler/eval:alloc", ptr %t38, i32 0, i32 4
  %t40 = load i64, ptr %t39, !tbaa !24
  %t41 = load i64, ptr @G_2ecompiler_2feval_2eaFree, !tbaa !24
  %t44 = icmp ne i64 %t40, %t41
  store i1 %t44, ptr %l20, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb3
bb3:
  %t46 = load i1, ptr %l20, !tbaa !21
  br i1 %t46, label %bb4, label %bb5
bb4:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/eval:Machine", ptr %t48, i32 0, i32 18
  %t51 = getelementptr %"compiler/eval:Ptr", ptr %t50, i32 0, i32 0
  %t52 = load i64, ptr %t51, !tbaa !24
  %t53 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t56 = and i64 %t52, %t53
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erelease(ptr %v0, ptr %t47, i64 %t56)
  br label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb7
bb7:
  %t59 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  %t61 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/eval:Machine", ptr %t63, i32 0, i32 18
  store %"compiler/eval:Ptr" %t59, ptr %t67
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/eval:Machine", ptr %t68, i32 0, i32 19
  store i32 %t61, ptr %t72, !tbaa !23
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/eval:Machine", ptr %t73, i32 0, i32 43
  store ptr %t75, ptr %l43, !tbaa !29
  %t80 = call %"compiler/eval:gkey" @compiler_2feval_3agkey_2ector(ptr %s0, i64 %a1, i32 %a2)
  store %"compiler/eval:gkey" %t80, ptr %l46
  br label %bb8
bb8:
  %t81 = load ptr, ptr %l43, !tbaa !29
  %t82 = load %"compiler/eval:gkey", ptr %l46
  %t83 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2feval_3agkey_2c_20I64_3e_2eG_H841bd46d30f67641fdfac3080f15aea1(ptr %v0, ptr %t81, %"compiler/eval:gkey" %t82)
  %t84 = extractvalue { i32, i64 } %t83, 1
  %t85 = extractvalue { i32, i64 } %t83, 0
  store i32 %t85, ptr %l48
  %t86 = icmp ne i32 %t85, 0
  br i1 %t86, label %bb10, label %ok.87, !prof !99
ok.87:
  store i64 %t84, ptr %l47
  br label %bb9
bb9:
  %t88 = load i64, ptr %l47, !tbaa !24
  store i64 %t88, ptr %l41, !tbaa !24
  br label %bb13
bb10:
  br label %bb11
bb11:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNoBody, !tbaa !27
  %t91 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t91, ptr %t89, { i64, ptr } %t90)
  br label %bb12
bb12:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/eval:Machine", ptr %t94, i32 0, i32 20
  %t97 = load { i64, [5 x i64] }, ptr %t96
  call void @__olang_scope_close(ptr %s0)
  store { i64, [5 x i64] } %t97, ptr %rv
  br label %ret
bb13:
  %t99 = load i64, ptr %l41, !tbaa !24
  store i64 %t99, ptr %l7, !tbaa !24
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/eval:Machine", ptr %t100, i32 0, i32 42
  %t103 = load i64, ptr %l7, !tbaa !24
  %t106 = call %"compiler/eval:global" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eAt_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %t102, i64 %t103)
  store %"compiler/eval:global" %t106, ptr %l56
  br label %bb14
bb14:
  %t107 = getelementptr %"compiler/eval:global", ptr %l56, i32 0, i32 0
  %t108 = load i64, ptr %t107, !tbaa !24
  %t110 = trunc i64 %t108 to i32
  store i32 %t110, ptr %l8, !tbaa !23
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t115 = getelementptr %"compiler/eval:Machine", ptr %t113, i32 0, i32 1
  %t116 = load i32, ptr %t115, !range !{i32 0, i32 2}
  %t118 = trunc i64 0 to i32
  %t119 = icmp eq i32 %t116, %t118
  br i1 %t119, label %bb15, label %bb16
bb15:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t123 = getelementptr %"compiler/eval:Machine", ptr %t121, i32 0, i32 42
  %t124 = load i64, ptr %l7, !tbaa !24
  %t127 = call %"compiler/eval:global" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eAt_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %t123, i64 %t124)
  store %"compiler/eval:global" %t127, ptr %l66
  br label %bb17
bb16:
  br label %bb36
bb17:
  %t128 = getelementptr %"compiler/eval:global", ptr %l66, i32 0, i32 1
  %t129 = load i1, ptr %t128, !tbaa !21
  br i1 %t129, label %bb18, label %bb19
bb18:
  %t131 = load i1, ptr %l3, !tbaa !21
  br i1 %t131, label %bb20, label %bb21
bb19:
  store i1 false, ptr %l68, !tbaa !21
  br label %bb23
bb20:
  store i1 %a4, ptr %l70, !tbaa !21
  br label %bb22
bb21:
  store i1 false, ptr %l70, !tbaa !21
  br label %bb22
bb22:
  %t135 = load i1, ptr %l70, !tbaa !21
  %t136 = xor i1 %t135, true
  store i1 %t136, ptr %l68, !tbaa !21
  br label %bb23
bb23:
  %t138 = load i1, ptr %l68, !tbaa !21
  br i1 %t138, label %bb24, label %bb25
bb24:
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t140 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyMutableGlobal, !tbaa !27
  %t141 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t141, ptr %t139, { i64, ptr } %t140)
  br label %bb26
bb25:
  br label %bb27
bb26:
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t146 = getelementptr %"compiler/eval:Machine", ptr %t144, i32 0, i32 20
  %t147 = load { i64, [5 x i64] }, ptr %t146
  call void @__olang_scope_close(ptr %s0)
  store { i64, [5 x i64] } %t147, ptr %rv
  br label %ret
bb27:
  %t149 = load i1, ptr %l3, !tbaa !21
  %t151 = xor i1 %t149, true
  br i1 %t151, label %bb28, label %bb29
bb28:
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t154 = load i32, ptr %l8, !tbaa !23
  %t157 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ereachesWritable(ptr %v0, ptr %t153, i32 %t154)
  store i1 %t157, ptr %l82
  br label %bb30
bb29:
  store i1 false, ptr %l79, !tbaa !21
  br label %bb31
bb30:
  %t158 = load i1, ptr %l82, !tbaa !21
  store i1 %t158, ptr %l79, !tbaa !21
  br label %bb31
bb31:
  %t159 = load i1, ptr %l79, !tbaa !21
  br i1 %t159, label %bb32, label %bb33
bb32:
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t161 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyChangeable, !tbaa !27
  %t162 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t162, ptr %t160, { i64, ptr } %t161)
  br label %bb34
bb33:
  br label %bb35
bb34:
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t167 = getelementptr %"compiler/eval:Machine", ptr %t165, i32 0, i32 20
  %t168 = load { i64, [5 x i64] }, ptr %t167
  call void @__olang_scope_close(ptr %s0)
  store { i64, [5 x i64] } %t168, ptr %rv
  br label %ret
bb35:
  br label %bb36
bb36:
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t172 = getelementptr %"compiler/eval:Machine", ptr %t170, i32 0, i32 42
  %t173 = load i64, ptr %l7, !tbaa !24
  %t176 = call %"compiler/eval:global" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eAt_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %t172, i64 %t173)
  store %"compiler/eval:global" %t176, ptr %l90
  br label %bb37
bb37:
  %t177 = getelementptr %"compiler/eval:global", ptr %l90, i32 0, i32 4
  %t178 = load i64, ptr %t177, !tbaa !24
  %t180 = icmp ne i64 %t178, 2
  br i1 %t180, label %bb38, label %bb39
bb38:
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t184 = getelementptr %"compiler/eval:Machine", ptr %t182, i32 0, i32 59
  %t185 = load i64, ptr %t184, !tbaa !24
  store i64 %t185, ptr %l9, !tbaa !24
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t188 = load i64, ptr %l7, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2estartGlobal(ptr %v0, ptr %t187, i64 %t188)
  br label %bb40
bb39:
  br label %bb46
bb40:
  %t191 = load ptr, ptr %l0, !tbaa !29
  %t192 = load i64, ptr %l9, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eloop(ptr %v0, ptr %t191, i64 %t192)
  br label %bb41
bb41:
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t196 = load i64, ptr %l9, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eunwind(ptr %v0, ptr %t195, i64 %t196)
  br label %bb42
bb42:
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t201 = getelementptr %"compiler/eval:Machine", ptr %t199, i32 0, i32 22
  %t202 = load i1, ptr %t201, !tbaa !21
  br i1 %t202, label %bb43, label %bb44
bb43:
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t206 = getelementptr %"compiler/eval:Machine", ptr %t204, i32 0, i32 20
  %t207 = load { i64, [5 x i64] }, ptr %t206
  call void @__olang_scope_close(ptr %s0)
  store { i64, [5 x i64] } %t207, ptr %rv
  br label %ret
bb44:
  br label %bb45
bb45:
  br label %bb46
bb46:
  %t209 = load i1, ptr %l3, !tbaa !21
  br i1 %t209, label %bb47, label %bb48
bb47:
  %t211 = load ptr, ptr %l0, !tbaa !29
  %t213 = getelementptr %"compiler/eval:Machine", ptr %t211, i32 0, i32 42
  %t214 = load i64, ptr %l7, !tbaa !24
  %t217 = call %"compiler/eval:global" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eAt_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %t213, i64 %t214)
  store %"compiler/eval:global" %t217, ptr %l110
  br label %bb49
bb48:
  store i1 false, ptr %l106, !tbaa !21
  br label %bb50
bb49:
  %t218 = getelementptr %"compiler/eval:global", ptr %l110, i32 0, i32 7
  %t219 = load i1, ptr %t218, !tbaa !21
  store i1 %t219, ptr %l106, !tbaa !21
  br label %bb50
bb50:
  %t221 = load i1, ptr %l106, !tbaa !21
  br i1 %t221, label %bb51, label %bb52
bb51:
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t223 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyDestructor, !tbaa !27
  %t224 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t224, ptr %t222, { i64, ptr } %t223)
  br label %bb53
bb52:
  br label %bb54
bb53:
  %t227 = load ptr, ptr %l0, !tbaa !29
  %t229 = getelementptr %"compiler/eval:Machine", ptr %t227, i32 0, i32 20
  %t230 = load { i64, [5 x i64] }, ptr %t229
  call void @__olang_scope_close(ptr %s0)
  store { i64, [5 x i64] } %t230, ptr %rv
  br label %ret
bb54:
  %t232 = load ptr, ptr %l0, !tbaa !29
  store ptr %t232, ptr %l116, !tbaa !29
  %t233 = load ptr, ptr %l0, !tbaa !29
  %t234 = load i32, ptr %l8, !tbaa !23
  %t237 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t233, i32 %t234)
  store i64 %t237, ptr %l119
  br label %bb55
bb55:
  %t238 = load i64, ptr @G_2ecompiler_2feval_2eaValue, !tbaa !24
  %t239 = load ptr, ptr %l0, !tbaa !29
  %t241 = getelementptr %"compiler/eval:Machine", ptr %t239, i32 0, i32 70
  %t242 = load i64, ptr %t241, !tbaa !24
  %t243 = load ptr, ptr %l116, !tbaa !29
  %t244 = load i64, ptr %l119, !tbaa !24
  %t247 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocate(ptr %v0, ptr %t243, i64 %t244, i64 %t238, i64 %t242)
  store %"compiler/eval:Ptr" %t247, ptr %l123
  br label %bb56
bb56:
  %t248 = load %"compiler/eval:Ptr", ptr %l123
  store %"compiler/eval:Ptr" %t248, ptr %l10
  %t249 = load ptr, ptr %l0, !tbaa !29
  store ptr %t249, ptr %l124, !tbaa !29
  %t250 = load %"compiler/eval:Ptr", ptr %l10
  store %"compiler/eval:Ptr" %t250, ptr %l125
  %t251 = load ptr, ptr %l0, !tbaa !29
  %t253 = getelementptr %"compiler/eval:Machine", ptr %t251, i32 0, i32 42
  %t254 = load i64, ptr %l7, !tbaa !24
  %t257 = call %"compiler/eval:global" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eAt_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %t253, i64 %t254)
  store %"compiler/eval:global" %t257, ptr %l129
  br label %bb57
bb57:
  %t258 = getelementptr %"compiler/eval:global", ptr %l129, i32 0, i32 3
  %t259 = load i64, ptr %t258, !tbaa !24
  %t261 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s0, i64 %t259, i64 0)
  store %"compiler/eval:Ptr" %t261, ptr %l131
  br label %bb58
bb58:
  %t262 = load ptr, ptr %l0, !tbaa !29
  %t263 = load i32, ptr %l8, !tbaa !23
  %t266 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t262, i32 %t263)
  store i64 %t266, ptr %l134
  br label %bb59
bb59:
  %t267 = load ptr, ptr %l124, !tbaa !29
  %t268 = load %"compiler/eval:Ptr", ptr %l125
  %t269 = load %"compiler/eval:Ptr", ptr %l131
  %t270 = load i64, ptr %l134, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopy(ptr %v0, ptr %t267, %"compiler/eval:Ptr" %t268, %"compiler/eval:Ptr" %t269, i64 %t270)
  br label %bb60
bb60:
  %t271 = load %"compiler/eval:Ptr", ptr %l10
  %t273 = load i32, ptr %l8, !tbaa !23
  %t275 = load ptr, ptr %l0, !tbaa !29
  %t279 = getelementptr %"compiler/eval:Machine", ptr %t275, i32 0, i32 18
  store %"compiler/eval:Ptr" %t271, ptr %t279
  %t280 = load ptr, ptr %l0, !tbaa !29
  %t284 = getelementptr %"compiler/eval:Machine", ptr %t280, i32 0, i32 19
  store i32 %t273, ptr %t284, !tbaa !23
  %t285 = load ptr, ptr %l0, !tbaa !29
  %t287 = getelementptr %"compiler/eval:Machine", ptr %t285, i32 0, i32 20
  %t288 = load { i64, [5 x i64] }, ptr %t287
  call void @__olang_scope_close(ptr %s0)
  store { i64, [5 x i64] } %t288, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [5 x i64] }, ptr %rv
  ret { i64, [5 x i64] } %rr
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eHeapBytes(ptr %v0, ptr %a0) #0 {
entry:
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/eval:Machine", ptr %a0, i32 0, i32 47
  %t4 = load i64, ptr %t3, !tbaa !24
  store i64 %t4, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i32, %"compiler/eval:Image" } @compiler_2feval_2ecompiler_2feval_3aMachine_2eImage(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l4 = alloca i64
  %lp5 = alloca ptr
  %l6 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca %"compiler/eval:alloc"
  %l12 = alloca %"compiler/eval:Blob"
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i32
  %l36 = alloca ptr
  %l37 = alloca i64
  %l38 = alloca i64
  %l40 = alloca i1
  %l46 = alloca { i64, [5 x i64] }
  %l51 = alloca i64
  %l53 = alloca ptr
  %l56 = alloca %"compiler/eval:gkey"
  %l57 = alloca i64
  %l58 = alloca i32
  %l60 = alloca %"compiler/eval:Image"
  %l61 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l62 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l66 = alloca %"compiler/eval:global"
  %l71 = alloca { i64, ptr }
  %l80 = alloca i64
  %l82 = alloca i64
  %l87 = alloca i64
  %l89 = alloca { i64, ptr }
  %l92 = alloca %"compiler/eval:Blob"
  %l94 = alloca i1
  %l100 = alloca i64
  %l103 = alloca i64
  %l107 = alloca ptr
  %l111 = alloca %"compiler/eval:global"
  %l115 = alloca i64
  %l124 = alloca i64
  %l127 = alloca i64
  %l145 = alloca ptr
  %l150 = alloca i64
  %l162 = alloca i64
  %l165 = alloca i64
  %l199 = alloca i64
  %l202 = alloca i64
  %l221 = alloca { i64, ptr }
  %l236 = alloca i1
  %l238 = alloca { i64, ptr }
  %l243 = alloca i1
  %l245 = alloca { i64, ptr }
  %l249 = alloca i64
  %l256 = alloca i1
  %l258 = alloca { i64, ptr }
  %l263 = alloca i1
  %l265 = alloca { i64, ptr }
  %l272 = alloca { i64, ptr }
  %l277 = alloca i1
  %l279 = alloca { i64, ptr }
  %l289 = alloca i1
  %l291 = alloca { i64, ptr }
  %l295 = alloca i1
  %l297 = alloca { i64, ptr }
  %l308 = alloca ptr
  %l314 = alloca i64
  %l315 = alloca i64
  %l318 = alloca i64
  %l319 = alloca i32
  %l323 = alloca i64
  %l335 = alloca ptr
  %l341 = alloca i64
  %l344 = alloca ptr
  %l345 = alloca %"compiler/eval:Blob"
  %l347 = alloca %"compiler/eval:Blob"
  %l355 = alloca %"compiler/eval:global"
  %l362 = alloca i1
  %l363 = alloca i1
  %l367 = alloca i64
  %l372 = alloca %"compiler/eval:Blob"
  %l374 = alloca %"compiler/eval:Blob"
  %l376 = alloca i64
  %l378 = alloca i64
  %l383 = alloca i64
  %l386 = alloca i1
  %l389 = alloca %"compiler/eval:Blob"
  %l391 = alloca %"compiler/eval:Blob"
  %l393 = alloca i64
  %l398 = alloca ptr
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s25 = alloca %olang.scope
  %s26 = alloca %olang.scope
  %rv = alloca { i32, %"compiler/eval:Image" }
  %t107 = alloca %"compiler/eval:Blob", align 8
  %t653 = alloca %"compiler/eval:Blob", align 8
  %t656 = alloca %"compiler/eval:Blob", align 8
  %t706 = alloca %"compiler/eval:Blob", align 8
  %t708 = alloca %"compiler/eval:Blob", align 8
  %t735 = alloca %"compiler/eval:Blob", align 8
  %t738 = alloca %"compiler/eval:Blob", align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t3 = load i32, ptr %l2, !tbaa !23
  %t9 = call { i64, [5 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2eGlobal(ptr %v0, ptr %v0, ptr %t1, i64 %t2, i32 %t3, i1 true, i1 %a3)
  store { i64, [5 x i64] } %t9, ptr %l46
  br label %bb1
bb1:
  %t10 = load { i64, [5 x i64] }, ptr %l46
  %t12 = extractvalue { i64, [5 x i64] } %t10, 0
  %t13 = icmp eq i64 %t12, 0
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  %t18 = insertvalue { i32, %"compiler/eval:Image" } zeroinitializer, i32 65536, 0
  store { i32, %"compiler/eval:Image" } %t18, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/eval:Machine", ptr %t19, i32 0, i32 43
  store ptr %t21, ptr %l53, !tbaa !29
  %t22 = load i64, ptr %l1, !tbaa !24
  %t23 = load i32, ptr %l2, !tbaa !23
  %t26 = call %"compiler/eval:gkey" @compiler_2feval_3agkey_2ector(ptr %s0, i64 %t22, i32 %t23)
  store %"compiler/eval:gkey" %t26, ptr %l56
  br label %bb5
bb5:
  %t27 = load ptr, ptr %l53, !tbaa !29
  %t28 = load %"compiler/eval:gkey", ptr %l56
  %t29 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2feval_3agkey_2c_20I64_3e_2eG_H841bd46d30f67641fdfac3080f15aea1(ptr %v0, ptr %t27, %"compiler/eval:gkey" %t28)
  %t30 = extractvalue { i32, i64 } %t29, 1
  %t31 = extractvalue { i32, i64 } %t29, 0
  store i32 %t31, ptr %l58
  %t32 = icmp ne i32 %t31, 0
  br i1 %t32, label %bb7, label %ok.33, !prof !99
ok.33:
  store i64 %t30, ptr %l57
  br label %bb6
bb6:
  %t34 = load i64, ptr %l57, !tbaa !24
  store i64 %t34, ptr %l51, !tbaa !24
  br label %bb9
bb7:
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s0)
  %t36 = insertvalue { i32, %"compiler/eval:Image" } zeroinitializer, i32 65536, 0
  store { i32, %"compiler/eval:Image" } %t36, ptr %rv
  br label %ret
bb9:
  %t37 = load i64, ptr %l51, !tbaa !24
  store i64 %t37, ptr %l4, !tbaa !24
  %t38 = call %"compiler/eval:Image" @compiler_2feval_3aImage_2ector(ptr %v1)
  store %"compiler/eval:Image" %t38, ptr %l60
  br label %bb10
bb10:
  %t39 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 72, i64 8)
  store ptr %t39, ptr %lp5
  %t40 = load %"compiler/eval:Image", ptr %l60
  %t41 = load ptr, ptr %lp5
  store %"compiler/eval:Image" %t40, ptr %t41
  %t42 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t42, ptr %l61
  br label %bb11
bb11:
  %t43 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l61
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t43, ptr %l6
  %t44 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t44, ptr %l62
  br label %bb12
bb12:
  %t45 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l62
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t45, ptr %l7
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/eval:Machine", ptr %t46, i32 0, i32 42
  %t49 = load i64, ptr %l4, !tbaa !24
  %t52 = call %"compiler/eval:global" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eAt_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %t48, i64 %t49)
  store %"compiler/eval:global" %t52, ptr %l66
  br label %bb13
bb13:
  %t53 = getelementptr %"compiler/eval:global", ptr %l66, i32 0, i32 3
  %t54 = load i64, ptr %t53, !tbaa !24
  %t55 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t58 = and i64 %t54, %t55
  store i64 %t58, ptr %l8, !tbaa !24
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/eval:Machine", ptr %t60, i32 0, i32 49
  %t63 = load { i64, ptr }, ptr %t62, !tbaa !27
  store { i64, ptr } %t63, ptr %l71, !tbaa !27
  %t64 = load i64, ptr %l8, !tbaa !24
  %t66 = getelementptr { i64, ptr }, ptr %l71, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !27
  %t68 = getelementptr %"compiler/eval:alloc", ptr %t67, i64 %t64
  %t69 = getelementptr %"compiler/eval:alloc", ptr %t68, i32 0, i32 1
  %t70 = load i64, ptr %t69, !tbaa !24
  %t72 = icmp eq i64 %t70, 0
  br i1 %t72, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s0)
  %t75 = insertvalue { i32, %"compiler/eval:Image" } zeroinitializer, i32 65536, 0
  store { i32, %"compiler/eval:Image" } %t75, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t76 = load i64, ptr %l8, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %s0, ptr %l6, i64 %t76, i64 0)
  br label %bb17
bb17:
  %t79 = load i64, ptr %l8, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l7, i64 %t79)
  br label %bb18
bb18:
  store i64 0, ptr %l9, !tbaa !24
  br label %bb19
bb19:
  store %olang.scope zeroinitializer, ptr %s4
  %t82 = load i64, ptr %l9, !tbaa !24
  store i64 %t82, ptr %l80, !tbaa !24
  %t84 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l7)
  store i64 %t84, ptr %l82
  br label %bb20
bb20:
  %t85 = load i64, ptr %l80, !tbaa !24
  %t86 = load i64, ptr %l82, !tbaa !24
  %t87 = icmp slt i64 %t85, %t86
  %t89 = xor i1 %t87, true
  br i1 %t89, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s4)
  br label %bb149
bb22:
  br label %bb23
bb23:
  %t91 = load i64, ptr %l9, !tbaa !24
  %t94 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l7, i64 %t91)
  store i64 %t94, ptr %l87
  br label %bb24
bb24:
  %t95 = load i64, ptr %l87, !tbaa !24
  store i64 %t95, ptr %l10, !tbaa !24
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/eval:Machine", ptr %t96, i32 0, i32 49
  %t99 = load { i64, ptr }, ptr %t98, !tbaa !27
  store { i64, ptr } %t99, ptr %l89, !tbaa !27
  %t100 = load i64, ptr %l10, !tbaa !24
  %t102 = getelementptr { i64, ptr }, ptr %l89, i32 0, i32 1
  %t103 = load ptr, ptr %t102, !tbaa !27
  %t104 = getelementptr %"compiler/eval:alloc", ptr %t103, i64 %t100
  %t105 = load %"compiler/eval:alloc", ptr %t104
  store %"compiler/eval:alloc" %t105, ptr %l11
  call void @compiler_2feval_3aBlob_2ector(ptr %t107, ptr %s4)
  call void @llvm.memmove.p0.p0.i64(ptr %l92, ptr %t107, i64 272, i1 false)
  br label %bb25
bb25:
  call void @llvm.memmove.p0.p0.i64(ptr %l12, ptr %l92, i64 272, i1 false)
  %t108 = getelementptr %"compiler/eval:alloc", ptr %l11, i32 0, i32 13
  %t109 = load i1, ptr %t108, !tbaa !21
  br i1 %t109, label %bb26, label %bb27
bb26:
  store i1 true, ptr %l94, !tbaa !21
  br label %bb28
bb27:
  %t111 = getelementptr %"compiler/eval:alloc", ptr %l11, i32 0, i32 4
  %t112 = load i64, ptr %t111, !tbaa !24
  %t113 = load i64, ptr @G_2ecompiler_2feval_2eaData, !tbaa !24
  %t116 = icmp eq i64 %t112, %t113
  store i1 %t116, ptr %l94, !tbaa !21
  br label %bb28
bb28:
  %t118 = load i1, ptr %l94, !tbaa !21
  %t119 = getelementptr %"compiler/eval:Blob", ptr %l12, i32 0, i32 2
  store i1 %t118, ptr %t119, !tbaa !21
  %t120 = getelementptr %"compiler/eval:alloc", ptr %l11, i32 0, i32 1
  %t121 = load i64, ptr %t120, !tbaa !24
  %t123 = icmp sge i64 %t121, 64
  br i1 %t123, label %bb29, label %bb30
bb29:
  store i64 64, ptr %l100, !tbaa !24
  br label %bb34
bb30:
  %t125 = getelementptr %"compiler/eval:alloc", ptr %l11, i32 0, i32 1
  %t126 = load i64, ptr %t125, !tbaa !24
  %t128 = icmp sge i64 %t126, 32
  br i1 %t128, label %bb31, label %bb32
bb31:
  store i64 32, ptr %l103, !tbaa !24
  br label %bb33
bb32:
  store i64 8, ptr %l103, !tbaa !24
  br label %bb33
bb33:
  %t130 = load i64, ptr %l103, !tbaa !24
  store i64 %t130, ptr %l100, !tbaa !24
  br label %bb34
bb34:
  %t131 = load i64, ptr %l100, !tbaa !24
  %t132 = getelementptr %"compiler/eval:Blob", ptr %l12, i32 0, i32 1
  store i64 %t131, ptr %t132, !tbaa !24
  %t133 = load i64, ptr %l9, !tbaa !24
  %t135 = icmp eq i64 %t133, 0
  br i1 %t135, label %bb35, label %bb36
bb35:
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t139 = getelementptr %"compiler/eval:Machine", ptr %t137, i32 0, i32 0
  %t140 = load ptr, ptr %t139, !tbaa !29
  store ptr %t140, ptr %l107, !tbaa !29
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t143 = getelementptr %"compiler/eval:Machine", ptr %t141, i32 0, i32 42
  %t144 = load i64, ptr %l4, !tbaa !24
  %t147 = call %"compiler/eval:global" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eAt_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %t143, i64 %t144)
  store %"compiler/eval:global" %t147, ptr %l111
  br label %bb37
bb36:
  br label %bb42
bb37:
  %t148 = getelementptr %"compiler/eval:global", ptr %l111, i32 0, i32 0
  %t149 = load i64, ptr %t148, !tbaa !24
  %t151 = trunc i64 %t149 to i32
  %t153 = load ptr, ptr %l107, !tbaa !29
  %t155 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAlign(ptr %v0, ptr %t153, i32 %t151)
  store i64 %t155, ptr %l115
  br label %bb38
bb38:
  %t156 = load i64, ptr %l115, !tbaa !24
  store i64 %t156, ptr %l13, !tbaa !24
  %t157 = load i64, ptr %l13, !tbaa !24
  %t158 = getelementptr %"compiler/eval:Blob", ptr %l12, i32 0, i32 1
  %t159 = load i64, ptr %t158, !tbaa !24
  %t162 = icmp sgt i64 %t157, %t159
  br i1 %t162, label %bb39, label %bb40
bb39:
  %t164 = load i64, ptr %l13, !tbaa !24
  %t166 = getelementptr %"compiler/eval:Blob", ptr %l12, i32 0, i32 1
  store i64 %t164, ptr %t166, !tbaa !24
  br label %bb41
bb40:
  br label %bb41
bb41:
  br label %bb42
bb42:
  store i64 0, ptr %l14, !tbaa !24
  %t167 = getelementptr %"compiler/eval:alloc", ptr %l11, i32 0, i32 1
  %t168 = load i64, ptr %t167, !tbaa !24
  store i64 %t168, ptr %l15, !tbaa !24
  store i64 1, ptr %l16, !tbaa !24
  %t170 = load i64, ptr %l15, !tbaa !24
  %t171 = load i64, ptr %l14, !tbaa !24
  %t174 = icmp sgt i64 %t170, %t171
  br i1 %t174, label %bb43, label %bb44
bb43:
  %t176 = load i64, ptr %l16, !tbaa !24
  %t178 = icmp sgt i64 %t176, 0
  br i1 %t178, label %bb45, label %bb46
bb44:
  store i64 0, ptr %l124, !tbaa !24
  br label %bb48
bb45:
  %t180 = load i64, ptr %l15, !tbaa !24
  %t181 = load i64, ptr %l14, !tbaa !24
  %t184 = sub i64 %t180, %t181
  %t185 = load i64, ptr %l16, !tbaa !24
  %t188 = add i64 %t184, %t185
  %t190 = sub i64 %t188, 1
  %t191 = load i64, ptr %l16, !tbaa !24
  %t194 = sdiv i64 %t190, %t191
  store i64 %t194, ptr %l127, !tbaa !24
  br label %bb47
bb46:
  store i64 0, ptr %l127, !tbaa !24
  br label %bb47
bb47:
  %t196 = load i64, ptr %l127, !tbaa !24
  store i64 %t196, ptr %l124, !tbaa !24
  br label %bb48
bb48:
  %t197 = load i64, ptr %l124, !tbaa !24
  store i64 %t197, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  br label %bb49
bb49:
  %t198 = load i64, ptr %l18, !tbaa !24
  %t199 = load i64, ptr %l17, !tbaa !24
  %t202 = icmp slt i64 %t198, %t199
  %t204 = xor i1 %t202, true
  br i1 %t204, label %bb50, label %bb51
bb50:
  br label %bb56
bb51:
  br label %bb52
bb52:
  %t206 = load i64, ptr %l14, !tbaa !24
  %t207 = load i64, ptr %l18, !tbaa !24
  %t208 = load i64, ptr %l16, !tbaa !24
  %t211 = mul i64 %t207, %t208
  %t214 = add i64 %t206, %t211
  %t216 = getelementptr %"compiler/eval:Blob", ptr %l12, i32 0, i32 0
  store ptr %t216, ptr %l145, !tbaa !29
  %t217 = load ptr, ptr %l0, !tbaa !29
  %t218 = getelementptr %"compiler/eval:alloc", ptr %l11, i32 0, i32 0
  %t219 = load i64, ptr %t218, !tbaa !24
  %t223 = add i64 %t219, %t214
  %t226 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erdRaw(ptr %v0, ptr %t217, i64 %t223, i64 1)
  store i64 %t226, ptr %l150
  br label %bb53
bb53:
  %t227 = load i64, ptr %l150, !tbaa !24
  %t228 = trunc i64 %t227 to i8
  %t229 = load ptr, ptr %l145, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2ePush_3cU8_3e(ptr %s4, ptr %t229, i8 %t228)
  br label %bb54
bb54:
  br label %bb55
bb55:
  %t231 = load i64, ptr %l18, !tbaa !24
  %t233 = add i64 %t231, 1
  store i64 %t233, ptr %l18, !tbaa !24
  br label %bb49
bb56:
  %t235 = getelementptr %"compiler/eval:alloc", ptr %l11, i32 0, i32 10
  %t236 = load i64, ptr %t235, !tbaa !24
  %t238 = icmp sgt i64 %t236, 0
  br i1 %t238, label %bb57, label %bb58
bb57:
  %t240 = getelementptr %"compiler/eval:alloc", ptr %l11, i32 0, i32 10
  %t241 = load i64, ptr %t240, !tbaa !24
  %t243 = sub i64 %t241, 8
  store i64 %t243, ptr %l20, !tbaa !24
  %t245 = getelementptr %"compiler/eval:alloc", ptr %l11, i32 0, i32 10
  %t246 = load i64, ptr %t245, !tbaa !24
  store i64 %t246, ptr %l21, !tbaa !24
  store i64 1, ptr %l22, !tbaa !24
  %t248 = load i64, ptr %l21, !tbaa !24
  %t249 = load i64, ptr %l20, !tbaa !24
  %t252 = icmp sgt i64 %t248, %t249
  br i1 %t252, label %bb59, label %bb60
bb58:
  br label %bb76
bb59:
  %t254 = load i64, ptr %l22, !tbaa !24
  %t256 = icmp sgt i64 %t254, 0
  br i1 %t256, label %bb61, label %bb62
bb60:
  store i64 0, ptr %l162, !tbaa !24
  br label %bb64
bb61:
  %t258 = load i64, ptr %l21, !tbaa !24
  %t259 = load i64, ptr %l20, !tbaa !24
  %t262 = sub i64 %t258, %t259
  %t263 = load i64, ptr %l22, !tbaa !24
  %t266 = add i64 %t262, %t263
  %t268 = sub i64 %t266, 1
  %t269 = load i64, ptr %l22, !tbaa !24
  %t272 = sdiv i64 %t268, %t269
  store i64 %t272, ptr %l165, !tbaa !24
  br label %bb63
bb62:
  store i64 0, ptr %l165, !tbaa !24
  br label %bb63
bb63:
  %t274 = load i64, ptr %l165, !tbaa !24
  store i64 %t274, ptr %l162, !tbaa !24
  br label %bb64
bb64:
  %t275 = load i64, ptr %l162, !tbaa !24
  store i64 %t275, ptr %l23, !tbaa !24
  store i64 0, ptr %l24, !tbaa !24
  br label %bb65
bb65:
  %t276 = load i64, ptr %l24, !tbaa !24
  %t277 = load i64, ptr %l23, !tbaa !24
  %t280 = icmp slt i64 %t276, %t277
  %t282 = xor i1 %t280, true
  br i1 %t282, label %bb66, label %bb67
bb66:
  br label %bb71
bb67:
  br label %bb68
bb68:
  %t284 = load i64, ptr %l20, !tbaa !24
  %t285 = load i64, ptr %l24, !tbaa !24
  %t286 = load i64, ptr %l22, !tbaa !24
  %t289 = mul i64 %t285, %t286
  %t292 = add i64 %t284, %t289
  %t294 = getelementptr %"compiler/eval:Blob", ptr %l12, i32 0, i32 0
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eSetAt_3cU8_3e(ptr %s4, ptr %t294, i64 %t292, i8 0)
  br label %bb69
bb69:
  br label %bb70
bb70:
  %t298 = load i64, ptr %l24, !tbaa !24
  %t300 = add i64 %t298, 1
  store i64 %t300, ptr %l24, !tbaa !24
  br label %bb65
bb71:
  %t302 = getelementptr %"compiler/eval:Blob", ptr %l12, i32 0, i32 0
  %t303 = getelementptr %"compiler/eval:alloc", ptr %l11, i32 0, i32 10
  %t304 = load i64, ptr %t303, !tbaa !24
  %t306 = sub i64 %t304, 6
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eSetAt_3cU8_3e(ptr %s4, ptr %t302, i64 %t306, i8 3)
  br label %bb72
bb72:
  %t309 = getelementptr %"compiler/eval:alloc", ptr %l11, i32 0, i32 10
  %t310 = load i64, ptr %t309, !tbaa !24
  %t311 = getelementptr %"compiler/eval:Blob", ptr %l12, i32 0, i32 1
  %t312 = load i64, ptr %t311, !tbaa !24
  %t315 = icmp sgt i64 %t310, %t312
  br i1 %t315, label %bb73, label %bb74
bb73:
  %t317 = getelementptr %"compiler/eval:alloc", ptr %l11, i32 0, i32 10
  %t318 = load i64, ptr %t317, !tbaa !24
  %t320 = getelementptr %"compiler/eval:Blob", ptr %l12, i32 0, i32 1
  store i64 %t318, ptr %t320, !tbaa !24
  br label %bb75
bb74:
  br label %bb75
bb75:
  br label %bb76
bb76:
  store i64 0, ptr %l26, !tbaa !24
  %t321 = getelementptr %"compiler/eval:alloc", ptr %l11, i32 0, i32 1
  %t322 = load i64, ptr %t321, !tbaa !24
  %t324 = sdiv i64 %t322, 8
  store i64 %t324, ptr %l27, !tbaa !24
  store i64 1, ptr %l28, !tbaa !24
  %t326 = load i64, ptr %l27, !tbaa !24
  %t327 = load i64, ptr %l26, !tbaa !24
  %t330 = icmp sgt i64 %t326, %t327
  br i1 %t330, label %bb77, label %bb78
bb77:
  %t332 = load i64, ptr %l28, !tbaa !24
  %t334 = icmp sgt i64 %t332, 0
  br i1 %t334, label %bb79, label %bb80
bb78:
  store i64 0, ptr %l199, !tbaa !24
  br label %bb82
bb79:
  %t336 = load i64, ptr %l27, !tbaa !24
  %t337 = load i64, ptr %l26, !tbaa !24
  %t340 = sub i64 %t336, %t337
  %t341 = load i64, ptr %l28, !tbaa !24
  %t344 = add i64 %t340, %t341
  %t346 = sub i64 %t344, 1
  %t347 = load i64, ptr %l28, !tbaa !24
  %t350 = sdiv i64 %t346, %t347
  store i64 %t350, ptr %l202, !tbaa !24
  br label %bb81
bb80:
  store i64 0, ptr %l202, !tbaa !24
  br label %bb81
bb81:
  %t352 = load i64, ptr %l202, !tbaa !24
  store i64 %t352, ptr %l199, !tbaa !24
  br label %bb82
bb82:
  %t353 = load i64, ptr %l199, !tbaa !24
  store i64 %t353, ptr %l29, !tbaa !24
  store i64 0, ptr %l30, !tbaa !24
  br label %bb83
bb83:
  %t354 = load i64, ptr %l30, !tbaa !24
  %t355 = load i64, ptr %l29, !tbaa !24
  %t358 = icmp slt i64 %t354, %t355
  %t360 = xor i1 %t358, true
  br i1 %t360, label %bb84, label %bb85
bb84:
  br label %bb144
bb85:
  br label %bb86
bb86:
  %t362 = load i64, ptr %l26, !tbaa !24
  %t363 = load i64, ptr %l30, !tbaa !24
  %t364 = load i64, ptr %l28, !tbaa !24
  %t367 = mul i64 %t363, %t364
  %t370 = add i64 %t362, %t367
  store i64 %t370, ptr %l31, !tbaa !24
  %t372 = load ptr, ptr %l0, !tbaa !29
  %t374 = getelementptr %"compiler/eval:Machine", ptr %t372, i32 0, i32 46
  %t375 = load { i64, ptr }, ptr %t374, !tbaa !27
  store { i64, ptr } %t375, ptr %l221, !tbaa !27
  %t376 = getelementptr %"compiler/eval:alloc", ptr %l11, i32 0, i32 0
  %t377 = load i64, ptr %t376, !tbaa !24
  %t379 = sdiv i64 %t377, 8
  %t380 = load i64, ptr %l31, !tbaa !24
  %t383 = add i64 %t379, %t380
  %t385 = getelementptr { i64, ptr }, ptr %l221, i32 0, i32 1
  %t386 = load ptr, ptr %t385, !tbaa !27
  %t387 = getelementptr i64, ptr %t386, i64 %t383
  %t388 = load i64, ptr %t387, !tbaa !34
  store i64 %t388, ptr %l32, !tbaa !24
  %t390 = load i64, ptr %l32, !tbaa !24
  %t392 = icmp eq i64 %t390, 0
  br i1 %t392, label %bb87, label %bb88
bb87:
  br label %bb143
bb88:
  br label %bb89
bb89:
  %t394 = load i64, ptr %l32, !tbaa !24
  %t395 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t398 = and i64 %t394, %t395
  store i64 %t398, ptr %l33, !tbaa !24
  %t400 = load i64, ptr %l33, !tbaa !24
  %t401 = load ptr, ptr %l0, !tbaa !29
  %t403 = getelementptr %"compiler/eval:Machine", ptr %t401, i32 0, i32 50
  %t404 = load i64, ptr %t403, !tbaa !24
  %t407 = icmp sge i64 %t400, %t404
  br i1 %t407, label %bb90, label %bb91
bb90:
  store i1 true, ptr %l236, !tbaa !21
  br label %bb92
bb91:
  %t409 = load ptr, ptr %l0, !tbaa !29
  %t411 = getelementptr %"compiler/eval:Machine", ptr %t409, i32 0, i32 49
  %t412 = load { i64, ptr }, ptr %t411, !tbaa !27
  store { i64, ptr } %t412, ptr %l238, !tbaa !27
  %t413 = load i64, ptr %l33, !tbaa !24
  %t415 = getelementptr { i64, ptr }, ptr %l238, i32 0, i32 1
  %t416 = load ptr, ptr %t415, !tbaa !27
  %t417 = getelementptr %"compiler/eval:alloc", ptr %t416, i64 %t413
  %t418 = getelementptr %"compiler/eval:alloc", ptr %t417, i32 0, i32 4
  %t419 = load i64, ptr %t418, !tbaa !24
  %t420 = load i64, ptr @G_2ecompiler_2feval_2eaFree, !tbaa !24
  %t423 = icmp eq i64 %t419, %t420
  store i1 %t423, ptr %l236, !tbaa !21
  br label %bb92
bb92:
  %t425 = load i1, ptr %l236, !tbaa !21
  br i1 %t425, label %bb93, label %bb94
bb93:
  store i1 true, ptr %l243, !tbaa !21
  br label %bb95
bb94:
  %t426 = load ptr, ptr %l0, !tbaa !29
  %t428 = getelementptr %"compiler/eval:Machine", ptr %t426, i32 0, i32 49
  %t429 = load { i64, ptr }, ptr %t428, !tbaa !27
  store { i64, ptr } %t429, ptr %l245, !tbaa !27
  %t430 = load i64, ptr %l33, !tbaa !24
  %t432 = getelementptr { i64, ptr }, ptr %l245, i32 0, i32 1
  %t433 = load ptr, ptr %t432, !tbaa !27
  %t434 = getelementptr %"compiler/eval:alloc", ptr %t433, i64 %t430
  %t435 = getelementptr %"compiler/eval:alloc", ptr %t434, i32 0, i32 3
  %t436 = load i64, ptr %t435, !tbaa !24
  %t437 = load i64, ptr %l32, !tbaa !24
  %t438 = load i64, ptr @G_2ecompiler_2feval_2eslotBits, !tbaa !24
  store i64 %t438, ptr %l249, !tbaa !24
  %t440 = load i64, ptr %l249, !tbaa !24
  %t441 = load i64, ptr %l249, !tbaa !24
  %t442 = ashr i64 %t437, %t441
  %t445 = icmp ne i64 %t436, %t442
  store i1 %t445, ptr %l243, !tbaa !21
  br label %bb95
bb95:
  %t447 = load i1, ptr %l243, !tbaa !21
  br i1 %t447, label %bb96, label %bb97
bb96:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  %t449 = insertvalue { i32, %"compiler/eval:Image" } zeroinitializer, i32 65536, 0
  store { i32, %"compiler/eval:Image" } %t449, ptr %rv
  br label %ret
bb97:
  br label %bb98
bb98:
  %t450 = load i64, ptr %l33, !tbaa !24
  %t451 = load i64, ptr %l8, !tbaa !24
  %t454 = icmp ne i64 %t450, %t451
  br i1 %t454, label %bb99, label %bb100
bb99:
  %t456 = load ptr, ptr %l0, !tbaa !29
  %t458 = getelementptr %"compiler/eval:Machine", ptr %t456, i32 0, i32 49
  %t459 = load { i64, ptr }, ptr %t458, !tbaa !27
  store { i64, ptr } %t459, ptr %l258, !tbaa !27
  %t460 = load i64, ptr %l33, !tbaa !24
  %t462 = getelementptr { i64, ptr }, ptr %l258, i32 0, i32 1
  %t463 = load ptr, ptr %t462, !tbaa !27
  %t464 = getelementptr %"compiler/eval:alloc", ptr %t463, i64 %t460
  %t465 = getelementptr %"compiler/eval:alloc", ptr %t464, i32 0, i32 4
  %t466 = load i64, ptr %t465, !tbaa !24
  %t467 = load i64, ptr @G_2ecompiler_2feval_2eaValue, !tbaa !24
  %t470 = icmp ne i64 %t466, %t467
  store i1 %t470, ptr %l256, !tbaa !21
  br label %bb101
bb100:
  store i1 false, ptr %l256, !tbaa !21
  br label %bb101
bb101:
  %t472 = load i1, ptr %l256, !tbaa !21
  br i1 %t472, label %bb102, label %bb103
bb102:
  %t473 = load ptr, ptr %l0, !tbaa !29
  %t475 = getelementptr %"compiler/eval:Machine", ptr %t473, i32 0, i32 49
  %t476 = load { i64, ptr }, ptr %t475, !tbaa !27
  store { i64, ptr } %t476, ptr %l265, !tbaa !27
  %t477 = load i64, ptr %l33, !tbaa !24
  %t479 = getelementptr { i64, ptr }, ptr %l265, i32 0, i32 1
  %t480 = load ptr, ptr %t479, !tbaa !27
  %t481 = getelementptr %"compiler/eval:alloc", ptr %t480, i64 %t477
  %t482 = getelementptr %"compiler/eval:alloc", ptr %t481, i32 0, i32 4
  %t483 = load i64, ptr %t482, !tbaa !24
  %t484 = load i64, ptr @G_2ecompiler_2feval_2eaData, !tbaa !24
  %t487 = icmp ne i64 %t483, %t484
  store i1 %t487, ptr %l263, !tbaa !21
  br label %bb104
bb103:
  store i1 false, ptr %l263, !tbaa !21
  br label %bb104
bb104:
  %t489 = load i1, ptr %l263, !tbaa !21
  br i1 %t489, label %bb105, label %bb106
bb105:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  %t491 = insertvalue { i32, %"compiler/eval:Image" } zeroinitializer, i32 65536, 0
  store { i32, %"compiler/eval:Image" } %t491, ptr %rv
  br label %ret
bb106:
  br label %bb107
bb107:
  %t492 = load ptr, ptr %l0, !tbaa !29
  %t494 = getelementptr %"compiler/eval:Machine", ptr %t492, i32 0, i32 49
  %t495 = load { i64, ptr }, ptr %t494, !tbaa !27
  store { i64, ptr } %t495, ptr %l272, !tbaa !27
  %t496 = load i64, ptr %l33, !tbaa !24
  %t498 = getelementptr { i64, ptr }, ptr %l272, i32 0, i32 1
  %t499 = load ptr, ptr %t498, !tbaa !27
  %t500 = getelementptr %"compiler/eval:alloc", ptr %t499, i64 %t496
  %t501 = getelementptr %"compiler/eval:alloc", ptr %t500, i32 0, i32 4
  %t502 = load i64, ptr %t501, !tbaa !24
  %t503 = load i64, ptr @G_2ecompiler_2feval_2eaValue, !tbaa !24
  %t506 = icmp eq i64 %t502, %t503
  br i1 %t506, label %bb108, label %bb109
bb108:
  %t508 = load ptr, ptr %l0, !tbaa !29
  %t510 = getelementptr %"compiler/eval:Machine", ptr %t508, i32 0, i32 49
  %t511 = load { i64, ptr }, ptr %t510, !tbaa !27
  store { i64, ptr } %t511, ptr %l279, !tbaa !27
  %t512 = load i64, ptr %l33, !tbaa !24
  %t514 = getelementptr { i64, ptr }, ptr %l279, i32 0, i32 1
  %t515 = load ptr, ptr %t514, !tbaa !27
  %t516 = getelementptr %"compiler/eval:alloc", ptr %t515, i64 %t512
  %t517 = getelementptr %"compiler/eval:alloc", ptr %t516, i32 0, i32 5
  %t518 = load i64, ptr %t517, !tbaa !24
  %t519 = load ptr, ptr %l0, !tbaa !29
  %t521 = getelementptr %"compiler/eval:Machine", ptr %t519, i32 0, i32 70
  %t522 = load i64, ptr %t521, !tbaa !24
  %t525 = icmp ne i64 %t518, %t522
  store i1 %t525, ptr %l277, !tbaa !21
  br label %bb110
bb109:
  store i1 false, ptr %l277, !tbaa !21
  br label %bb110
bb110:
  %t527 = load i1, ptr %l277, !tbaa !21
  br i1 %t527, label %bb111, label %bb112
bb111:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  %t529 = insertvalue { i32, %"compiler/eval:Image" } zeroinitializer, i32 65536, 0
  store { i32, %"compiler/eval:Image" } %t529, ptr %rv
  br label %ret
bb112:
  br label %bb113
bb113:
  %t530 = load i64, ptr %l33, !tbaa !24
  %t531 = load i64, ptr %l8, !tbaa !24
  %t534 = icmp ne i64 %t530, %t531
  br i1 %t534, label %bb114, label %bb115
bb114:
  %t536 = load ptr, ptr %l0, !tbaa !29
  %t538 = getelementptr %"compiler/eval:Machine", ptr %t536, i32 0, i32 49
  %t539 = load { i64, ptr }, ptr %t538, !tbaa !27
  store { i64, ptr } %t539, ptr %l291, !tbaa !27
  %t540 = load i64, ptr %l33, !tbaa !24
  %t542 = getelementptr { i64, ptr }, ptr %l291, i32 0, i32 1
  %t543 = load ptr, ptr %t542, !tbaa !27
  %t544 = getelementptr %"compiler/eval:alloc", ptr %t543, i64 %t540
  %t545 = getelementptr %"compiler/eval:alloc", ptr %t544, i32 0, i32 8
  %t546 = load i64, ptr %t545, !tbaa !24
  %t548 = icmp sge i64 %t546, 0
  store i1 %t548, ptr %l289, !tbaa !21
  br label %bb116
bb115:
  store i1 false, ptr %l289, !tbaa !21
  br label %bb116
bb116:
  %t550 = load i1, ptr %l289, !tbaa !21
  br i1 %t550, label %bb117, label %bb118
bb117:
  %t551 = load ptr, ptr %l0, !tbaa !29
  %t553 = getelementptr %"compiler/eval:Machine", ptr %t551, i32 0, i32 49
  %t554 = load { i64, ptr }, ptr %t553, !tbaa !27
  store { i64, ptr } %t554, ptr %l297, !tbaa !27
  %t555 = load i64, ptr %l33, !tbaa !24
  %t557 = getelementptr { i64, ptr }, ptr %l297, i32 0, i32 1
  %t558 = load ptr, ptr %t557, !tbaa !27
  %t559 = getelementptr %"compiler/eval:alloc", ptr %t558, i64 %t555
  %t560 = getelementptr %"compiler/eval:alloc", ptr %t559, i32 0, i32 8
  %t561 = load i64, ptr %t560, !tbaa !24
  %t562 = load i64, ptr %l4, !tbaa !24
  %t565 = icmp ne i64 %t561, %t562
  store i1 %t565, ptr %l295, !tbaa !21
  br label %bb119
bb118:
  store i1 false, ptr %l295, !tbaa !21
  br label %bb119
bb119:
  %t567 = load i1, ptr %l295, !tbaa !21
  br i1 %t567, label %bb120, label %bb121
bb120:
  %t568 = getelementptr %"compiler/eval:Blob", ptr %l12, i32 0, i32 3
  %t569 = load i64, ptr %l31, !tbaa !24
  %t571 = mul i64 8, %t569
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s4, ptr %t568, i64 %t571)
  br label %bb122
bb121:
  br label %bb127
bb122:
  %t574 = getelementptr %"compiler/eval:Blob", ptr %l12, i32 0, i32 4
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s4, ptr %t574, i64 -1)
  br label %bb123
bb123:
  %t576 = getelementptr %"compiler/eval:Blob", ptr %l12, i32 0, i32 6
  %t577 = load i64, ptr %l33, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s4, ptr %t576, i64 %t577)
  br label %bb124
bb124:
  %t580 = getelementptr %"compiler/eval:Blob", ptr %l12, i32 0, i32 5
  store ptr %t580, ptr %l308, !tbaa !29
  %t581 = load ptr, ptr %l0, !tbaa !29
  %t582 = getelementptr %"compiler/eval:alloc", ptr %l11, i32 0, i32 0
  %t583 = load i64, ptr %t582, !tbaa !24
  %t584 = load i64, ptr %l31, !tbaa !24
  %t586 = mul i64 8, %t584
  %t589 = add i64 %t583, %t586
  %t592 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erdRaw(ptr %v0, ptr %t581, i64 %t589, i64 8)
  store i64 %t592, ptr %l314
  br label %bb125
bb125:
  %t593 = load ptr, ptr %l308, !tbaa !29
  %t594 = load i64, ptr %l314, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s4, ptr %t593, i64 %t594)
  br label %bb126
bb126:
  br label %bb143
bb127:
  %t595 = load i64, ptr %l33, !tbaa !24
  %t598 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %s0, ptr %l6, i64 %t595)
  %t599 = extractvalue { i32, i64 } %t598, 1
  %t600 = extractvalue { i32, i64 } %t598, 0
  store i32 %t600, ptr %l319
  %t601 = icmp ne i32 %t600, 0
  br i1 %t601, label %bb129, label %ok.602, !prof !99
ok.602:
  store i64 %t599, ptr %l318
  br label %bb128
bb128:
  %t603 = load i64, ptr %l318, !tbaa !24
  store i64 %t603, ptr %l315, !tbaa !24
  br label %bb131
bb129:
  br label %bb130
bb130:
  store i64 -1, ptr %l315, !tbaa !24
  br label %bb131
bb131:
  %t604 = load i64, ptr %l315, !tbaa !24
  store i64 %t604, ptr %l34, !tbaa !24
  %t605 = load i64, ptr %l34, !tbaa !24
  %t607 = icmp slt i64 %t605, 0
  br i1 %t607, label %bb132, label %bb133
bb132:
  %t610 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l7)
  store i64 %t610, ptr %l323
  br label %bb134
bb133:
  br label %bb137
bb134:
  %t611 = load i64, ptr %l323, !tbaa !24
  store i64 %t611, ptr %l34, !tbaa !24
  %t612 = load i64, ptr %l33, !tbaa !24
  %t613 = load i64, ptr %l34, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %s0, ptr %l6, i64 %t612, i64 %t613)
  br label %bb135
bb135:
  %t617 = load i64, ptr %l33, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l7, i64 %t617)
  br label %bb136
bb136:
  br label %bb137
bb137:
  %t620 = getelementptr %"compiler/eval:Blob", ptr %l12, i32 0, i32 3
  %t621 = load i64, ptr %l31, !tbaa !24
  %t623 = mul i64 8, %t621
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s4, ptr %t620, i64 %t623)
  br label %bb138
bb138:
  %t626 = getelementptr %"compiler/eval:Blob", ptr %l12, i32 0, i32 4
  %t627 = load i64, ptr %l34, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s4, ptr %t626, i64 %t627)
  br label %bb139
bb139:
  %t630 = getelementptr %"compiler/eval:Blob", ptr %l12, i32 0, i32 6
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s4, ptr %t630, i64 -1)
  br label %bb140
bb140:
  %t632 = getelementptr %"compiler/eval:Blob", ptr %l12, i32 0, i32 5
  store ptr %t632, ptr %l335, !tbaa !29
  %t633 = load ptr, ptr %l0, !tbaa !29
  %t634 = getelementptr %"compiler/eval:alloc", ptr %l11, i32 0, i32 0
  %t635 = load i64, ptr %t634, !tbaa !24
  %t636 = load i64, ptr %l31, !tbaa !24
  %t638 = mul i64 8, %t636
  %t641 = add i64 %t635, %t638
  %t644 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erdRaw(ptr %v0, ptr %t633, i64 %t641, i64 8)
  store i64 %t644, ptr %l341
  br label %bb141
bb141:
  %t645 = load ptr, ptr %l335, !tbaa !29
  %t646 = load i64, ptr %l341, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s4, ptr %t645, i64 %t646)
  br label %bb142
bb142:
  br label %bb143
bb143:
  %t647 = load i64, ptr %l30, !tbaa !24
  %t649 = add i64 %t647, 1
  store i64 %t649, ptr %l30, !tbaa !24
  br label %bb83
bb144:
  %t651 = load ptr, ptr %lp5
  %t652 = getelementptr %"compiler/eval:Image", ptr %t651, i32 0, i32 0
  store ptr %t652, ptr %l344, !tbaa !29
  call void @llvm.memmove.p0.p0.i64(ptr %l345, ptr %l12, i64 272, i1 false)
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feval_3aBlob(ptr %t653, ptr %s4, ptr %l345)
  call void @llvm.memmove.p0.p0.i64(ptr %l347, ptr %t653, i64 272, i1 false)
  br label %bb145
bb145:
  %t655 = load ptr, ptr %l344, !tbaa !29
  call void @llvm.memmove.p0.p0.i64(ptr %t656, ptr %l347, i64 272, i1 false)
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aBlob_3e_2ePush_3ccompiler_2feval_3aBlob_3e(ptr %v1, ptr %s4, ptr %t655, ptr %t656)
  br label %bb146
bb146:
  %t657 = load ptr, ptr %lp5
  %t658 = getelementptr %"compiler/eval:Image", ptr %t657, i32 0, i32 1
  %t659 = load i64, ptr %l10, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t658, i64 %t659)
  br label %bb147
bb147:
  %t662 = load i64, ptr %l9, !tbaa !24
  %t664 = add i64 %t662, 1
  store i64 %t664, ptr %l9, !tbaa !24
  call void @__olang_scope_close(ptr %s4)
  br label %bb148
bb148:
  br label %bb19
bb149:
  %t666 = load ptr, ptr %l0, !tbaa !29
  %t668 = getelementptr %"compiler/eval:Machine", ptr %t666, i32 0, i32 42
  %t669 = load i64, ptr %l4, !tbaa !24
  %t672 = call %"compiler/eval:global" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eAt_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %t668, i64 %t669)
  store %"compiler/eval:global" %t672, ptr %l355
  br label %bb150
bb150:
  %t673 = getelementptr %"compiler/eval:global", ptr %l355, i32 0, i32 0
  %t674 = load i64, ptr %t673, !tbaa !24
  %t676 = trunc i64 %t674 to i32
  store i32 %t676, ptr %l35, !tbaa !23
  %t679 = load ptr, ptr %l0, !tbaa !29
  %t681 = getelementptr %"compiler/eval:Machine", ptr %t679, i32 0, i32 0
  %t682 = load ptr, ptr %t681, !tbaa !29
  %t683 = load i32, ptr %l35, !tbaa !23
  %t686 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t682, i32 %t683)
  store i1 %t686, ptr %l362
  br label %bb151
bb151:
  %t687 = load i1, ptr %l362, !tbaa !21
  br i1 %t687, label %bb152, label %bb153
bb152:
  %t688 = load ptr, ptr %l0, !tbaa !29
  %t690 = getelementptr %"compiler/eval:Machine", ptr %t688, i32 0, i32 0
  %t691 = load ptr, ptr %t690, !tbaa !29
  %t692 = load i32, ptr %l35, !tbaa !23
  %t695 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t691, i32 %t692)
  store i64 %t695, ptr %l367
  br label %bb154
bb153:
  store i1 false, ptr %l363, !tbaa !21
  br label %bb155
bb154:
  %t696 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t697 = load i64, ptr %l367, !tbaa !24
  %t699 = and i64 %t697, %t696
  %t701 = icmp eq i64 %t699, 0
  store i1 %t701, ptr %l363, !tbaa !21
  br label %bb155
bb155:
  %t703 = load i1, ptr %l363, !tbaa !21
  br i1 %t703, label %bb156, label %bb157
bb156:
  store %olang.scope zeroinitializer, ptr %s25
  %t704 = load ptr, ptr %lp5
  %t705 = getelementptr %"compiler/eval:Image", ptr %t704, i32 0, i32 0
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aBlob_3e_2eAt_3ccompiler_2feval_3aBlob_3e(ptr %t706, ptr %v1, ptr %v1, ptr %t705, i64 0)
  call void @llvm.memmove.p0.p0.i64(ptr %l372, ptr %t706, i64 272, i1 false)
  br label %bb158
bb157:
  br label %bb178
bb158:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feval_3aBlob(ptr %t708, ptr %v1, ptr %l372)
  call void @llvm.memmove.p0.p0.i64(ptr %l374, ptr %t708, i64 272, i1 false)
  br label %bb159
bb159:
  %t710 = getelementptr %"compiler/eval:Blob", ptr %l374, i32 0, i32 4
  store ptr %t710, ptr %l36, !tbaa !29
  store i64 0, ptr %l37, !tbaa !24
  br label %bb160
bb160:
  store %olang.scope zeroinitializer, ptr %s26
  %t712 = load i64, ptr %l37, !tbaa !24
  store i64 %t712, ptr %l376, !tbaa !24
  %t713 = load ptr, ptr %l36, !tbaa !29
  %t715 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s25, ptr %t713)
  store i64 %t715, ptr %l378
  br label %bb161
bb161:
  %t716 = load i64, ptr %l376, !tbaa !24
  %t717 = load i64, ptr %l378, !tbaa !24
  %t718 = icmp slt i64 %t716, %t717
  %t720 = xor i1 %t718, true
  br i1 %t720, label %bb162, label %bb163
bb162:
  call void @__olang_scope_close(ptr %s26)
  br label %bb177
bb163:
  br label %bb164
bb164:
  %t722 = load ptr, ptr %l36, !tbaa !29
  %t723 = load i64, ptr %l37, !tbaa !24
  %t726 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s25, ptr %t722, i64 %t723)
  store i64 %t726, ptr %l383
  br label %bb165
bb165:
  %t727 = load i64, ptr %l383, !tbaa !24
  store i64 %t727, ptr %l38, !tbaa !24
  %t728 = load i64, ptr %l38, !tbaa !24
  %t730 = icmp sgt i64 %t728, 0
  br i1 %t730, label %bb166, label %bb167
bb166:
  %t732 = load ptr, ptr %lp5
  %t733 = getelementptr %"compiler/eval:Image", ptr %t732, i32 0, i32 0
  %t734 = load i64, ptr %l38, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aBlob_3e_2eAt_3ccompiler_2feval_3aBlob_3e(ptr %t735, ptr %v1, ptr %v1, ptr %t733, i64 %t734)
  call void @llvm.memmove.p0.p0.i64(ptr %l389, ptr %t735, i64 272, i1 false)
  br label %bb168
bb167:
  store i1 false, ptr %l386, !tbaa !21
  br label %bb171
bb168:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feval_3aBlob(ptr %t738, ptr %s26, ptr %l389)
  call void @llvm.memmove.p0.p0.i64(ptr %l391, ptr %t738, i64 272, i1 false)
  br label %bb169
bb169:
  %t740 = getelementptr %"compiler/eval:Blob", ptr %l391, i32 0, i32 3
  %t742 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t740)
  store i64 %t742, ptr %l393
  br label %bb170
bb170:
  %t743 = load i64, ptr %l393, !tbaa !24
  %t744 = icmp eq i64 %t743, 0
  store i1 %t744, ptr %l386, !tbaa !21
  br label %bb171
bb171:
  %t746 = load i1, ptr %l386, !tbaa !21
  br i1 %t746, label %bb172, label %bb173
bb172:
  %t747 = load i64, ptr %l38, !tbaa !24
  store i1 true, ptr %l40, !tbaa !21
  %t749 = load ptr, ptr %lp5
  %t750 = getelementptr %"compiler/eval:Image", ptr %t749, i32 0, i32 0
  %t754 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aBlob_3e_2eRefMut_3ccompiler_2feval_3aBlob_3e(ptr %v1, ptr %v1, ptr %t750, i64 %t747)
  store ptr %t754, ptr %l398
  br label %bb174
bb173:
  br label %bb175
bb174:
  %t755 = load ptr, ptr %l398, !tbaa !29
  %t757 = load i1, ptr %l40, !tbaa !21
  %t760 = getelementptr %"compiler/eval:Blob", ptr %t755, i32 0, i32 2
  store i1 %t757, ptr %t760, !tbaa !21
  br label %bb175
bb175:
  call void @__olang_scope_close(ptr %s26)
  br label %bb176
bb176:
  %t761 = load i64, ptr %l37, !tbaa !24
  %t763 = add i64 %t761, 1
  store i64 %t763, ptr %l37, !tbaa !24
  br label %bb160
bb177:
  call void @__olang_scope_close(ptr %s25)
  br label %bb178
bb178:
  %t765 = load ptr, ptr %lp5
  %t766 = load %"compiler/eval:Image", ptr %t765
  call void @__olang_scope_close(ptr %s0)
  %t768 = insertvalue { i32, %"compiler/eval:Image" } zeroinitializer, %"compiler/eval:Image" %t766, 1
  store { i32, %"compiler/eval:Image" } %t768, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"compiler/eval:Image" }, ptr %rv
  ret { i32, %"compiler/eval:Image" } %rr
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eInt(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca %"compiler/eval:Ptr"
  %l8 = alloca i64
  %l9 = alloca i64
  %l11 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l3, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2, ptr %l4, !tbaa !29
  store %"compiler/eval:Ptr" %a1, ptr %l5
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t5 = load i32, ptr %l2, !tbaa !23
  %t8 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidth(ptr %v0, ptr %t4, i32 %t5)
  store i64 %t8, ptr %l8
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l4, !tbaa !29
  %t10 = load %"compiler/eval:Ptr", ptr %l5
  %t11 = load i64, ptr %l8, !tbaa !24
  %t12 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t9, %"compiler/eval:Ptr" %t10, i64 %t11)
  store i64 %t12, ptr %l9
  br label %bb2
bb2:
  %t13 = load i32, ptr %l2, !tbaa !23
  %t14 = load ptr, ptr %l3, !tbaa !29
  %t15 = load i64, ptr %l9, !tbaa !24
  %t17 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintValue(ptr %v0, ptr %t14, i64 %t15, i32 %t13)
  store i64 %t17, ptr %l11
  br label %bb3
bb3:
  %t18 = load i64, ptr %l11, !tbaa !24
  store i64 %t18, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eResultHoldsAddress(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/eval:alloc"
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l10 = alloca { i64, ptr }
  %l20 = alloca i64
  %l24 = alloca i64
  %l38 = alloca i1
  %l40 = alloca { i64, ptr }
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 18
  %t4 = getelementptr %"compiler/eval:Ptr", ptr %t3, i32 0, i32 0
  %t5 = load i64, ptr %t4, !tbaa !24
  %t7 = icmp eq i64 %t5, 0
  br i1 %t7, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/eval:Machine", ptr %t10, i32 0, i32 49
  %t13 = load { i64, ptr }, ptr %t12, !tbaa !27
  store { i64, ptr } %t13, ptr %l10, !tbaa !27
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/eval:Machine", ptr %t14, i32 0, i32 18
  %t17 = getelementptr %"compiler/eval:Ptr", ptr %t16, i32 0, i32 0
  %t18 = load i64, ptr %t17, !tbaa !24
  %t19 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t22 = and i64 %t18, %t19
  %t24 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr %"compiler/eval:alloc", ptr %t25, i64 %t22
  %t27 = load %"compiler/eval:alloc", ptr %t26
  store %"compiler/eval:alloc" %t27, ptr %l1
  %t29 = getelementptr %"compiler/eval:alloc", ptr %l1, i32 0, i32 0
  %t30 = load i64, ptr %t29, !tbaa !24
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/eval:Machine", ptr %t31, i32 0, i32 18
  %t34 = getelementptr %"compiler/eval:Ptr", ptr %t33, i32 0, i32 1
  %t35 = load i64, ptr %t34, !tbaa !24
  %t38 = add i64 %t30, %t35
  store i64 %t38, ptr %l2, !tbaa !24
  %t40 = load i64, ptr %l2, !tbaa !24
  store i64 %t40, ptr %l20, !tbaa !24
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/eval:Machine", ptr %t42, i32 0, i32 19
  %t45 = load i32, ptr %t44, !tbaa !23
  %t48 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t41, i32 %t45)
  store i64 %t48, ptr %l24
  br label %bb4
bb4:
  %t49 = load i64, ptr %l20, !tbaa !24
  %t50 = load i64, ptr %l24, !tbaa !24
  %t51 = add i64 %t49, %t50
  store i64 %t51, ptr %l3, !tbaa !24
  %t53 = load i64, ptr %l2, !tbaa !24
  %t55 = sdiv i64 %t53, 8
  store i64 %t55, ptr %l4, !tbaa !24
  br label %bb5
bb5:
  %t57 = load i64, ptr %l4, !tbaa !24
  %t59 = mul i64 %t57, 8
  %t60 = load i64, ptr %l3, !tbaa !24
  %t63 = icmp slt i64 %t59, %t60
  %t65 = xor i1 %t63, true
  br i1 %t65, label %bb6, label %bb7
bb6:
  br label %bb16
bb7:
  br label %bb8
bb8:
  %t67 = load i64, ptr %l4, !tbaa !24
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/eval:Machine", ptr %t68, i32 0, i32 46
  %t71 = load { i64, ptr }, ptr %t70, !tbaa !27
  %t73 = extractvalue { i64, ptr } %t71, 0
  %t76 = icmp slt i64 %t67, %t73
  br i1 %t76, label %bb9, label %bb10
bb9:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/eval:Machine", ptr %t78, i32 0, i32 46
  %t81 = load { i64, ptr }, ptr %t80, !tbaa !27
  store { i64, ptr } %t81, ptr %l40, !tbaa !27
  %t82 = load i64, ptr %l4, !tbaa !24
  %t84 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !27
  %t86 = getelementptr i64, ptr %t85, i64 %t82
  %t87 = load i64, ptr %t86, !tbaa !34
  %t89 = icmp ne i64 %t87, 0
  store i1 %t89, ptr %l38, !tbaa !21
  br label %bb11
bb10:
  store i1 false, ptr %l38, !tbaa !21
  br label %bb11
bb11:
  %t91 = load i1, ptr %l38, !tbaa !21
  br i1 %t91, label %bb12, label %bb13
bb12:
  store i1 true, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t93 = load i64, ptr %l4, !tbaa !24
  %t95 = add i64 %t93, 1
  store i64 %t95, ptr %l4, !tbaa !24
  br label %bb15
bb15:
  br label %bb5
bb16:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, %"compiler/source:Span" } @compiler_2feval_2ecompiler_2feval_3aMachine_2eStaleGrewAt(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/pair:Pair.9f40551e0d6019a8e678d8f53048b6ba"
  %l5 = alloca i1
  %l7 = alloca i64
  %l10 = alloca i64
  %l12 = alloca %"compiler/source:Span"
  %l18 = alloca %"std/pair:Pair.9f40551e0d6019a8e678d8f53048b6ba"
  %s1 = alloca %olang.scope
  %rv = alloca { i64, %"compiler/source:Span" }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 80
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp slt i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb4
bb2:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/eval:Machine", ptr %t8, i32 0, i32 80
  %t11 = load i64, ptr %t10, !tbaa !24
  store i64 %t11, ptr %l7, !tbaa !24
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/eval:Machine", ptr %t12, i32 0, i32 79
  %t16 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20compiler__H5ec116bb82f5a234bb19cb32db1efc81(ptr %v0, ptr %t14)
  store i64 %t16, ptr %l10
  br label %bb3
bb3:
  %t17 = load i64, ptr %l7, !tbaa !24
  %t18 = load i64, ptr %l10, !tbaa !24
  %t19 = icmp sge i64 %t17, %t18
  store i1 %t19, ptr %l5, !tbaa !21
  br label %bb4
bb4:
  %t21 = load i1, ptr %l5, !tbaa !21
  br i1 %t21, label %bb5, label %bb6
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t22 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s1, i32 0, i32 0)
  store %"compiler/source:Span" %t22, ptr %l12
  br label %bb7
bb6:
  br label %bb8
bb7:
  %t23 = insertvalue { i64, %"compiler/source:Span" } undef, i64 -1, 0
  %t24 = load %"compiler/source:Span", ptr %l12
  %t25 = insertvalue { i64, %"compiler/source:Span" } %t23, %"compiler/source:Span" %t24, 1
  call void @__olang_scope_close(ptr %s1)
  store { i64, %"compiler/source:Span" } %t25, ptr %rv
  br label %ret
bb8:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/eval:Machine", ptr %t27, i32 0, i32 79
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/eval:Machine", ptr %t30, i32 0, i32 80
  %t33 = load i64, ptr %t32, !tbaa !24
  %t36 = call %"std/pair:Pair.9f40551e0d6019a8e678d8f53048b6ba" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20compiler__H1a77801a5ab3ea58cbf0ff15b43ff2de(ptr %v0, ptr %t29, i64 %t33)
  store %"std/pair:Pair.9f40551e0d6019a8e678d8f53048b6ba" %t36, ptr %l18
  br label %bb9
bb9:
  %t37 = load %"std/pair:Pair.9f40551e0d6019a8e678d8f53048b6ba", ptr %l18
  store %"std/pair:Pair.9f40551e0d6019a8e678d8f53048b6ba" %t37, ptr %l1
  %t38 = getelementptr %"std/pair:Pair.9f40551e0d6019a8e678d8f53048b6ba", ptr %l1, i32 0, i32 0
  %t39 = load i64, ptr %t38, !tbaa !24
  %t40 = getelementptr %"std/pair:Pair.9f40551e0d6019a8e678d8f53048b6ba", ptr %l1, i32 0, i32 1
  %t41 = load %"compiler/source:Span", ptr %t40
  %t43 = insertvalue { i64, %"compiler/source:Span" } undef, i64 %t39, 0
  %t45 = insertvalue { i64, %"compiler/source:Span" } %t43, %"compiler/source:Span" %t41, 1
  store { i64, %"compiler/source:Span" } %t45, ptr %rv
  br label %ret
ret:
  %rr = load { i64, %"compiler/source:Span" }, ptr %rv
  ret { i64, %"compiler/source:Span" } %rr
}

define dso_local { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2eText(ptr %v0, ptr %v1, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca { %"compiler/eval:Ptr", i64 }
  %l4 = alloca %"compiler/eval:Ptr"
  %l5 = alloca i64
  %l6 = alloca %"std/prelude/text:StringBuilder"
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l16 = alloca { %"compiler/eval:Ptr", i64 }
  %l19 = alloca %"std/prelude/text:StringBuilder"
  %l24 = alloca i64
  %l27 = alloca i64
  %l45 = alloca ptr
  %l46 = alloca ptr
  %l51 = alloca %"compiler/eval:Ptr"
  %l52 = alloca i64
  %l58 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t7 = call { %"compiler/eval:Ptr", i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayView(ptr %v0, ptr %t1, %"compiler/eval:Ptr" %a1, i32 %a2)
  store { %"compiler/eval:Ptr", i64 } %t7, ptr %l16
  br label %bb1
bb1:
  %t8 = load { %"compiler/eval:Ptr", i64 }, ptr %l16
  store { %"compiler/eval:Ptr", i64 } %t8, ptr %l3
  %t9 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l3, i32 0, i32 0
  %t10 = load %"compiler/eval:Ptr", ptr %t9
  store %"compiler/eval:Ptr" %t10, ptr %l4
  %t12 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l3, i32 0, i32 1
  %t13 = load i64, ptr %t12, !tbaa !24
  store i64 %t13, ptr %l5, !tbaa !24
  %t15 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t15, ptr %l19
  br label %bb2
bb2:
  %t16 = load %"std/prelude/text:StringBuilder", ptr %l19
  store %"std/prelude/text:StringBuilder" %t16, ptr %l6
  store i64 0, ptr %l7, !tbaa !24
  %t17 = load i64, ptr %l5, !tbaa !24
  store i64 %t17, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t19 = load i64, ptr %l8, !tbaa !24
  %t20 = load i64, ptr %l7, !tbaa !24
  %t23 = icmp sgt i64 %t19, %t20
  br i1 %t23, label %bb3, label %bb4
bb3:
  %t25 = load i64, ptr %l9, !tbaa !24
  %t27 = icmp sgt i64 %t25, 0
  br i1 %t27, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb8
bb5:
  %t29 = load i64, ptr %l8, !tbaa !24
  %t30 = load i64, ptr %l7, !tbaa !24
  %t33 = sub i64 %t29, %t30
  %t34 = load i64, ptr %l9, !tbaa !24
  %t37 = add i64 %t33, %t34
  %t39 = sub i64 %t37, 1
  %t40 = load i64, ptr %l9, !tbaa !24
  %t43 = sdiv i64 %t39, %t40
  store i64 %t43, ptr %l27, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l27, !tbaa !24
  br label %bb7
bb7:
  %t45 = load i64, ptr %l27, !tbaa !24
  store i64 %t45, ptr %l24, !tbaa !24
  br label %bb8
bb8:
  %t46 = load i64, ptr %l24, !tbaa !24
  store i64 %t46, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb9
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t47 = load i64, ptr %l11, !tbaa !24
  %t48 = load i64, ptr %l10, !tbaa !24
  %t51 = icmp slt i64 %t47, %t48
  %t53 = xor i1 %t51, true
  br i1 %t53, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb17
bb11:
  br label %bb12
bb12:
  %t55 = load i64, ptr %l7, !tbaa !24
  %t56 = load i64, ptr %l11, !tbaa !24
  %t57 = load i64, ptr %l9, !tbaa !24
  %t60 = mul i64 %t56, %t57
  %t63 = add i64 %t55, %t60
  store ptr %l6, ptr %l45, !tbaa !29
  %t65 = load ptr, ptr %l0, !tbaa !29
  store ptr %t65, ptr %l46, !tbaa !29
  %t66 = getelementptr %"compiler/eval:Ptr", ptr %l4, i32 0, i32 0
  %t67 = load i64, ptr %t66, !tbaa !24
  %t68 = getelementptr %"compiler/eval:Ptr", ptr %l4, i32 0, i32 1
  %t69 = load i64, ptr %t68, !tbaa !24
  %t73 = add i64 %t69, %t63
  %t76 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s2, i64 %t67, i64 %t73)
  store %"compiler/eval:Ptr" %t76, ptr %l51
  br label %bb13
bb13:
  %t77 = load ptr, ptr %l46, !tbaa !29
  %t78 = load %"compiler/eval:Ptr", ptr %l51
  %t79 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t77, %"compiler/eval:Ptr" %t78, i64 1)
  store i64 %t79, ptr %l52
  br label %bb14
bb14:
  %t80 = load i64, ptr %l52, !tbaa !24
  %t81 = trunc i64 %t80 to i8
  %t83 = load ptr, ptr %l45, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %t83, i8 %t81)
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s2)
  br label %bb16
bb16:
  %t85 = load i64, ptr %l11, !tbaa !24
  %t87 = add i64 %t85, 1
  store i64 %t87, ptr %l11, !tbaa !24
  br label %bb9
bb17:
  %t90 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l6)
  store { i64, ptr } %t90, ptr %l58
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s0)
  %t91 = load { i64, ptr }, ptr %l58, !tbaa !27
  store { i64, ptr } %t91, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddReg(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3, %"compiler/eval:Ptr" %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca %"compiler/eval:Ptr"
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca %"compiler/eval:reg"
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l25 = alloca i1
  %l29 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i32
  %l35 = alloca i64
  %l43 = alloca %"compiler/eval:scope"
  %l47 = alloca i1
  %l48 = alloca ptr
  %l52 = alloca %"compiler/eval:scope"
  %l54 = alloca i1
  %l58 = alloca %"compiler/eval:scope"
  %l63 = alloca %"compiler/eval:reg"
  %l71 = alloca %"compiler/eval:scope"
  %l87 = alloca %"compiler/eval:scope"
  %l93 = alloca ptr
  %l99 = alloca %"compiler/eval:scope"
  %l105 = alloca %"compiler/eval:scope"
  %l110 = alloca ptr
  %l121 = alloca ptr
  %s0 = alloca %olang.scope
  %t41 = alloca %"compiler/eval:scope", align 8
  %t56 = alloca %"compiler/eval:scope", align 8
  %t70 = alloca %"compiler/eval:scope", align 8
  %t98 = alloca %"compiler/eval:scope", align 8
  %t137 = alloca %"compiler/eval:scope", align 8
  %t163 = alloca %"compiler/eval:scope", align 8
  %t175 = alloca %"compiler/eval:scope", align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store %"compiler/eval:Ptr" %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elive(ptr %v0, ptr %t1, i64 %t2)
  store i1 %t5, ptr %l25
  br label %bb1
bb1:
  %t6 = load i1, ptr %l25, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyClosed, !tbaa !27
  %t11 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t11, ptr %t9, { i64, ptr } %t10)
  br label %bb4
bb3:
  br label %bb5
bb4:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb5:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/eval:Machine", ptr %t14, i32 0, i32 55
  %t18 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %t16)
  %t19 = extractvalue { i32, i64 } %t18, 1
  %t20 = extractvalue { i32, i64 } %t18, 0
  store i32 %t20, ptr %l33
  %t21 = icmp ne i32 %t20, 0
  br i1 %t21, label %bb7, label %ok.22, !prof !99
ok.22:
  store i64 %t19, ptr %l32
  br label %bb6
bb6:
  %t23 = load i64, ptr %l32, !tbaa !24
  store i64 %t23, ptr %l29, !tbaa !24
  br label %bb10
bb7:
  br label %bb8
bb8:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enewRegSlot(ptr %v0, ptr %t24)
  store i64 %t26, ptr %l35
  br label %bb9
bb9:
  %t27 = load i64, ptr %l35, !tbaa !24
  store i64 %t27, ptr %l29, !tbaa !24
  br label %bb10
bb10:
  %t28 = load i64, ptr %l29, !tbaa !24
  store i64 %t28, ptr %l5, !tbaa !24
  %t29 = load i64, ptr %l1, !tbaa !24
  %t30 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t33 = and i64 %t29, %t30
  store i64 %t33, ptr %l6, !tbaa !24
  %t35 = load i64, ptr %l1, !tbaa !24
  store i64 %t35, ptr %l7, !tbaa !24
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/eval:Machine", ptr %t37, i32 0, i32 52
  %t40 = load i64, ptr %l6, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t41, ptr %v0, ptr %t39, i64 %t40)
  call void @llvm.memmove.p0.p0.i64(ptr %l43, ptr %t41, i64 152, i1 false)
  br label %bb11
bb11:
  %t44 = getelementptr %"compiler/eval:scope", ptr %l43, i32 0, i32 2
  %t45 = load i64, ptr %t44, !tbaa !24
  %t46 = load i64, ptr @G_2ecompiler_2feval_2esRegion, !tbaa !24
  %t49 = icmp eq i64 %t45, %t46
  br i1 %t49, label %bb12, label %bb13
bb12:
  %t51 = load ptr, ptr %l0, !tbaa !29
  store ptr %t51, ptr %l48, !tbaa !29
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/eval:Machine", ptr %t52, i32 0, i32 52
  %t55 = load i64, ptr %l6, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t56, ptr %v0, ptr %t54, i64 %t55)
  call void @llvm.memmove.p0.p0.i64(ptr %l52, ptr %t56, i64 152, i1 false)
  br label %bb14
bb13:
  store i1 false, ptr %l47, !tbaa !21
  br label %bb16
bb14:
  %t59 = getelementptr %"compiler/eval:scope", ptr %l52, i32 0, i32 16
  %t60 = load i64, ptr %t59, !tbaa !24
  %t61 = load ptr, ptr %l48, !tbaa !29
  %t63 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elive(ptr %v0, ptr %t61, i64 %t60)
  store i1 %t63, ptr %l54
  br label %bb15
bb15:
  %t64 = load i1, ptr %l54, !tbaa !21
  store i1 %t64, ptr %l47, !tbaa !21
  br label %bb16
bb16:
  %t65 = load i1, ptr %l47, !tbaa !21
  br i1 %t65, label %bb17, label %bb18
bb17:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/eval:Machine", ptr %t66, i32 0, i32 52
  %t69 = load i64, ptr %l6, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t70, ptr %v0, ptr %t68, i64 %t69)
  call void @llvm.memmove.p0.p0.i64(ptr %l58, ptr %t70, i64 152, i1 false)
  br label %bb19
bb18:
  br label %bb20
bb19:
  %t73 = getelementptr %"compiler/eval:scope", ptr %l58, i32 0, i32 16
  %t74 = load i64, ptr %t73, !tbaa !24
  store i64 %t74, ptr %l7, !tbaa !24
  br label %bb20
bb20:
  %t76 = load i64, ptr %l7, !tbaa !24
  %t77 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t80 = and i64 %t76, %t77
  store i64 %t80, ptr %l8, !tbaa !24
  %t82 = call %"compiler/eval:reg" @compiler_2feval_3areg_2ector(ptr %s0)
  store %"compiler/eval:reg" %t82, ptr %l63
  br label %bb21
bb21:
  %t83 = load %"compiler/eval:reg", ptr %l63
  store %"compiler/eval:reg" %t83, ptr %l9
  store i64 %a2, ptr %l10, !tbaa !24
  store i64 %a3, ptr %l11, !tbaa !24
  %t88 = getelementptr %"compiler/eval:Ptr", ptr %l4, i32 0, i32 0
  %t89 = load i64, ptr %t88, !tbaa !24
  store i64 %t89, ptr %l12, !tbaa !24
  %t91 = getelementptr %"compiler/eval:Ptr", ptr %l4, i32 0, i32 1
  %t92 = load i64, ptr %t91, !tbaa !24
  store i64 %t92, ptr %l13, !tbaa !24
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/eval:Machine", ptr %t94, i32 0, i32 52
  %t97 = load i64, ptr %l8, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t98, ptr %v0, ptr %t96, i64 %t97)
  call void @llvm.memmove.p0.p0.i64(ptr %l71, ptr %t98, i64 152, i1 false)
  br label %bb22
bb22:
  %t101 = getelementptr %"compiler/eval:scope", ptr %l71, i32 0, i32 4
  %t102 = load i64, ptr %t101, !tbaa !24
  %t104 = load i64, ptr %l7, !tbaa !24
  %t106 = load i64, ptr %l10, !tbaa !24
  %t108 = getelementptr %"compiler/eval:reg", ptr %l9, i32 0, i32 0
  store i64 %t106, ptr %t108, !tbaa !24
  %t109 = load i64, ptr %l11, !tbaa !24
  %t111 = getelementptr %"compiler/eval:reg", ptr %l9, i32 0, i32 1
  store i64 %t109, ptr %t111, !tbaa !24
  %t112 = load i64, ptr %l12, !tbaa !24
  %t114 = getelementptr %"compiler/eval:reg", ptr %l9, i32 0, i32 2
  store i64 %t112, ptr %t114, !tbaa !24
  %t115 = load i64, ptr %l13, !tbaa !24
  %t117 = getelementptr %"compiler/eval:reg", ptr %l9, i32 0, i32 3
  store i64 %t115, ptr %t117, !tbaa !24
  %t120 = getelementptr %"compiler/eval:reg", ptr %l9, i32 0, i32 4
  store i64 %t102, ptr %t120, !tbaa !24
  %t123 = getelementptr %"compiler/eval:reg", ptr %l9, i32 0, i32 5
  store i64 -1, ptr %t123, !tbaa !24
  %t126 = getelementptr %"compiler/eval:reg", ptr %l9, i32 0, i32 6
  store i64 %t104, ptr %t126, !tbaa !24
  %t127 = load i64, ptr %l7, !tbaa !24
  %t128 = load i64, ptr %l1, !tbaa !24
  %t131 = icmp ne i64 %t127, %t128
  br i1 %t131, label %bb23, label %bb24
bb23:
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t135 = getelementptr %"compiler/eval:Machine", ptr %t133, i32 0, i32 52
  %t136 = load i64, ptr %l6, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t137, ptr %v0, ptr %t135, i64 %t136)
  call void @llvm.memmove.p0.p0.i64(ptr %l87, ptr %t137, i64 152, i1 false)
  br label %bb25
bb24:
  br label %bb27
bb25:
  %t140 = getelementptr %"compiler/eval:scope", ptr %l87, i32 0, i32 17
  %t141 = load i64, ptr %t140, !tbaa !24
  %t143 = getelementptr %"compiler/eval:reg", ptr %l9, i32 0, i32 7
  store i64 %t141, ptr %t143, !tbaa !24
  %t144 = load i64, ptr %l6, !tbaa !24
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t148 = getelementptr %"compiler/eval:Machine", ptr %t146, i32 0, i32 52
  %t152 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v0, ptr %t148, i64 %t144)
  store ptr %t152, ptr %l93
  br label %bb26
bb26:
  %t153 = load ptr, ptr %l93, !tbaa !29
  %t155 = load i64, ptr %l5, !tbaa !24
  %t158 = getelementptr %"compiler/eval:scope", ptr %t153, i32 0, i32 17
  store i64 %t155, ptr %t158, !tbaa !24
  br label %bb27
bb27:
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t161 = getelementptr %"compiler/eval:Machine", ptr %t159, i32 0, i32 52
  %t162 = load i64, ptr %l8, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t163, ptr %v0, ptr %t161, i64 %t162)
  call void @llvm.memmove.p0.p0.i64(ptr %l99, ptr %t163, i64 152, i1 false)
  br label %bb28
bb28:
  %t166 = getelementptr %"compiler/eval:scope", ptr %l99, i32 0, i32 4
  %t167 = load i64, ptr %t166, !tbaa !24
  %t169 = icmp sge i64 %t167, 0
  br i1 %t169, label %bb29, label %bb30
bb29:
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t173 = getelementptr %"compiler/eval:Machine", ptr %t171, i32 0, i32 52
  %t174 = load i64, ptr %l8, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t175, ptr %v0, ptr %t173, i64 %t174)
  call void @llvm.memmove.p0.p0.i64(ptr %l105, ptr %t175, i64 152, i1 false)
  br label %bb31
bb30:
  br label %bb33
bb31:
  %t178 = getelementptr %"compiler/eval:scope", ptr %l105, i32 0, i32 4
  %t179 = load i64, ptr %t178, !tbaa !24
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t183 = getelementptr %"compiler/eval:Machine", ptr %t181, i32 0, i32 54
  %t187 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3areg_3e_2eRefMut_3ccompiler_2feval_3areg_3e(ptr %v0, ptr %v0, ptr %t183, i64 %t179)
  store ptr %t187, ptr %l110
  br label %bb32
bb32:
  %t188 = load ptr, ptr %l110, !tbaa !29
  %t190 = load i64, ptr %l5, !tbaa !24
  %t193 = getelementptr %"compiler/eval:reg", ptr %t188, i32 0, i32 5
  store i64 %t190, ptr %t193, !tbaa !24
  br label %bb33
bb33:
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t196 = getelementptr %"compiler/eval:Machine", ptr %t194, i32 0, i32 54
  %t197 = load i64, ptr %l5, !tbaa !24
  %t198 = load %"compiler/eval:reg", ptr %l9
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3areg_3e_2eSetAt_3ccompiler_2feval_3areg_3e(ptr %v0, ptr %t196, i64 %t197, %"compiler/eval:reg" %t198)
  br label %bb34
bb34:
  %t202 = load i64, ptr %l8, !tbaa !24
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t206 = getelementptr %"compiler/eval:Machine", ptr %t204, i32 0, i32 52
  %t210 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v0, ptr %t206, i64 %t202)
  store ptr %t210, ptr %l121
  br label %bb35
bb35:
  %t211 = load ptr, ptr %l121, !tbaa !29
  %t213 = load i64, ptr %l5, !tbaa !24
  %t216 = getelementptr %"compiler/eval:scope", ptr %t211, i32 0, i32 4
  store i64 %t213, ptr %t216, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, [4 x i64] }
  %l4 = alloca %"compiler/mir:Lvalue"
  %l5 = alloca { %"compiler/eval:Ptr", i32 }
  %l7 = alloca i32
  %l8 = alloca %"compiler/eval:Ptr"
  %l15 = alloca { %"compiler/eval:Ptr", i32 }
  %l21 = alloca i32
  %l22 = alloca ptr
  %l23 = alloca i64
  %l26 = alloca i64
  %l28 = alloca %"compiler/eval:Ptr"
  %rv = alloca %"compiler/eval:Ptr"
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, [4 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [4 x i64] }, ptr %l2
  %t3 = extractvalue { i64, [4 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 1
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [4 x i64] }, ptr %l2, i32 0, i32 1
  %t7 = getelementptr { %"compiler/mir:Lvalue" }, ptr %t6, i32 0, i32 0
  %t8 = load %"compiler/mir:Lvalue", ptr %t7
  store %"compiler/mir:Lvalue" %t8, ptr %l4
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load i64, ptr %l1, !tbaa !24
  %t12 = load %"compiler/mir:Lvalue", ptr %l4
  %t16 = call { %"compiler/eval:Ptr", i32 } @compiler_2feval_2ecompiler_2feval_3aMachine_2eplace(ptr %v0, ptr %t10, i64 %t11, %"compiler/mir:Lvalue" %t12)
  store { %"compiler/eval:Ptr", i32 } %t16, ptr %l15
  br label %bb4
bb4:
  %t17 = load { %"compiler/eval:Ptr", i32 }, ptr %l15
  store { %"compiler/eval:Ptr", i32 } %t17, ptr %l5
  %t18 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l5, i32 0, i32 0
  %t19 = load %"compiler/eval:Ptr", ptr %t18
  store %"compiler/eval:Ptr" %t19, ptr %rv
  br label %ret
bb5:
  br i1 true, label %bb6, label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_6f754b89a33b6044_bbcfb7dbcaa58778)
  unreachable
bb10:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load i64, ptr %l1, !tbaa !24
  %t25 = load { i64, [4 x i64] }, ptr %l2
  %t29 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t23, i64 %t24, { i64, [4 x i64] } %t25)
  store i32 %t29, ptr %l21
  br label %bb11
bb11:
  %t30 = load i32, ptr %l21, !tbaa !23
  store i32 %t30, ptr %l7, !tbaa !23
  %t31 = load ptr, ptr %l0, !tbaa !29
  store ptr %t31, ptr %l22, !tbaa !29
  store i64 %a3, ptr %l23, !tbaa !24
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t34 = load i32, ptr %l7, !tbaa !23
  %t37 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t33, i32 %t34)
  store i64 %t37, ptr %l26
  br label %bb12
bb12:
  %t38 = load i64, ptr %l26, !tbaa !24
  %t39 = add i64 %t38, 16
  %t40 = load ptr, ptr %l22, !tbaa !29
  %t41 = load i64, ptr %l23, !tbaa !24
  %t43 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2escratchFor(ptr %v0, ptr %t40, i64 %t41, i64 %t39)
  store %"compiler/eval:Ptr" %t43, ptr %l28
  br label %bb13
bb13:
  %t44 = load %"compiler/eval:Ptr", ptr %l28
  store %"compiler/eval:Ptr" %t44, ptr %l8
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load i64, ptr %l1, !tbaa !24
  %t47 = load %"compiler/eval:Ptr", ptr %l8
  %t48 = load i32, ptr %l7, !tbaa !23
  %t49 = load { i64, [4 x i64] }, ptr %l2
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eput(ptr %v0, ptr %t45, i64 %t46, %"compiler/eval:Ptr" %t47, i32 %t48, { i64, [4 x i64] } %t49)
  br label %bb14
bb14:
  %t55 = load %"compiler/eval:Ptr", ptr %l8
  store %"compiler/eval:Ptr" %t55, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/eval:Ptr", ptr %rv
  ret %"compiler/eval:Ptr" %rr
}

define dso_local %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocate(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
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
  %l14 = alloca %"compiler/eval:alloc"
  %l29 = alloca i64
  %l30 = alloca i64
  %l38 = alloca i1
  %l41 = alloca i1
  %l42 = alloca i1
  %l48 = alloca %"compiler/eval:scope"
  %l50 = alloca i64
  %l53 = alloca i64
  %l57 = alloca i1
  %l66 = alloca i1
  %l78 = alloca i64
  %l80 = alloca { i64, ptr }
  %l86 = alloca { i64, ptr }
  %l87 = alloca i64
  %l90 = alloca i64
  %l97 = alloca i64
  %l100 = alloca i64
  %l119 = alloca { i64, ptr }
  %l125 = alloca { i64, ptr }
  %l137 = alloca i64
  %l140 = alloca ptr
  %l142 = alloca i64
  %l145 = alloca i64
  %l148 = alloca i64
  %l149 = alloca i32
  %l151 = alloca i64
  %l153 = alloca { i64, ptr }
  %l183 = alloca %"compiler/eval:scope"
  %l189 = alloca { i64, ptr }
  %l196 = alloca ptr
  %l202 = alloca i1
  %l207 = alloca i1
  %l214 = alloca { i64, ptr }
  %l217 = alloca ptr
  %l222 = alloca i64
  %l226 = alloca %"compiler/eval:Ptr"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/eval:Ptr"
  %t27 = alloca %"compiler/eval:scope", align 8
  %t336 = alloca %"compiler/eval:scope", align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 22
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/eval:Ptr" %t6, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = load i64, ptr %l3, !tbaa !24
  %t10 = icmp ne i64 %t8, 0
  br i1 %t10, label %bb4, label %bb5
bb4:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load i64, ptr %l3, !tbaa !24
  %t16 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elive(ptr %v0, ptr %t12, i64 %t13)
  store i1 %t16, ptr %l41
  br label %bb6
bb5:
  store i1 false, ptr %l38, !tbaa !21
  br label %bb7
bb6:
  %t17 = load i1, ptr %l41, !tbaa !21
  store i1 %t17, ptr %l38, !tbaa !21
  br label %bb7
bb7:
  %t18 = load i1, ptr %l38, !tbaa !21
  br i1 %t18, label %bb8, label %bb9
bb8:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/eval:Machine", ptr %t19, i32 0, i32 52
  %t22 = load i64, ptr %l3, !tbaa !24
  %t23 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t26 = and i64 %t22, %t23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t27, ptr %v0, ptr %t21, i64 %t26)
  call void @llvm.memmove.p0.p0.i64(ptr %l48, ptr %t27, i64 152, i1 false)
  br label %bb10
bb9:
  store i1 false, ptr %l42, !tbaa !21
  br label %bb11
bb10:
  %t30 = getelementptr %"compiler/eval:scope", ptr %l48, i32 0, i32 18
  %t31 = load i1, ptr %t30, !tbaa !21
  store i1 %t31, ptr %l42, !tbaa !21
  br label %bb11
bb11:
  %t33 = load i1, ptr %l42, !tbaa !21
  br i1 %t33, label %bb12, label %bb13
bb12:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load i64, ptr %l3, !tbaa !24
  %t38 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eregion(ptr %v0, ptr %t34, i64 %t35)
  store i64 %t38, ptr %l53
  br label %bb14
bb13:
  %t39 = load i64, ptr %l3, !tbaa !24
  store i64 %t39, ptr %l50, !tbaa !24
  br label %bb15
bb14:
  %t41 = load i64, ptr %l53, !tbaa !24
  store i64 %t41, ptr %l50, !tbaa !24
  br label %bb15
bb15:
  %t42 = load i64, ptr %l50, !tbaa !24
  store i64 %t42, ptr %l4, !tbaa !24
  %t43 = load i64, ptr %l1, !tbaa !24
  %t45 = icmp slt i64 %t43, 0
  br i1 %t45, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l57, !tbaa !21
  br label %bb18
bb17:
  %t47 = load i64, ptr %l1, !tbaa !24
  %t49 = icmp sgt i64 %t47, 1099511627776
  store i1 %t49, ptr %l57, !tbaa !21
  br label %bb18
bb18:
  %t51 = load i1, ptr %l57, !tbaa !21
  br i1 %t51, label %bb19, label %bb20
bb19:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyLong, !tbaa !27
  %t54 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t54, ptr %t52, { i64, ptr } %t53)
  br label %bb21
bb20:
  br label %bb22
bb21:
  %t57 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/eval:Ptr" %t57, ptr %rv
  br label %ret
bb22:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/eval:Machine", ptr %t59, i32 0, i32 9
  %t62 = load i64, ptr %t61, !tbaa !24
  %t64 = icmp sge i64 %t62, 0
  br i1 %t64, label %bb23, label %bb24
bb23:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/eval:Machine", ptr %t66, i32 0, i32 15
  %t69 = load i64, ptr %t68, !tbaa !24
  %t70 = load i64, ptr %l1, !tbaa !24
  %t73 = add i64 %t69, %t70
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/eval:Machine", ptr %t74, i32 0, i32 9
  %t77 = load i64, ptr %t76, !tbaa !24
  %t80 = icmp sgt i64 %t73, %t77
  store i1 %t80, ptr %l66, !tbaa !21
  br label %bb25
bb24:
  store i1 false, ptr %l66, !tbaa !21
  br label %bb25
bb25:
  %t82 = load i1, ptr %l66, !tbaa !21
  br i1 %t82, label %bb26, label %bb27
bb26:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t84 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyMemory, !tbaa !27
  %t85 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t85, ptr %t83, { i64, ptr } %t84)
  br label %bb28
bb27:
  br label %bb29
bb28:
  %t88 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/eval:Ptr" %t88, ptr %rv
  br label %ret
bb29:
  %t90 = load i64, ptr %l1, !tbaa !24
  %t92 = call i64 @compiler_2feval_2eclassOf(i64 %t90)
  store i64 %t92, ptr %l78
  br label %bb30
bb30:
  %t93 = load i64, ptr %l78, !tbaa !24
  store i64 %t93, ptr %l5, !tbaa !24
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/eval:Machine", ptr %t94, i32 0, i32 48
  %t97 = load { i64, ptr }, ptr %t96, !tbaa !27
  store { i64, ptr } %t97, ptr %l80, !tbaa !27
  %t98 = load i64, ptr %l5, !tbaa !24
  %t100 = getelementptr { i64, ptr }, ptr %l80, i32 0, i32 1
  %t101 = load ptr, ptr %t100, !tbaa !27
  %t102 = getelementptr i64, ptr %t101, i64 %t98
  %t103 = load i64, ptr %t102, !tbaa !34
  store i64 %t103, ptr %l6, !tbaa !24
  %t105 = load i64, ptr %l6, !tbaa !24
  %t107 = icmp ne i64 %t105, 0
  br i1 %t107, label %bb31, label %bb32
bb31:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = getelementptr %"compiler/eval:Machine", ptr %t109, i32 0, i32 48
  %t112 = load { i64, ptr }, ptr %t111, !tbaa !27
  store { i64, ptr } %t112, ptr %l86, !tbaa !27
  %t113 = load i64, ptr %l5, !tbaa !24
  store i64 %t113, ptr %l87, !tbaa !24
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t115 = load i64, ptr %l6, !tbaa !24
  %t118 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erdRaw(ptr %v0, ptr %t114, i64 %t115, i64 8)
  store i64 %t118, ptr %l90
  br label %bb33
bb32:
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr %"compiler/eval:Machine", ptr %t119, i32 0, i32 47
  %t122 = load i64, ptr %t121, !tbaa !24
  store i64 %t122, ptr %l6, !tbaa !24
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = getelementptr %"compiler/eval:Machine", ptr %t125, i32 0, i32 47
  %t128 = load i64, ptr %t127, !tbaa !24
  %t129 = load i64, ptr %l5, !tbaa !24
  store i64 %t129, ptr %l137, !tbaa !24
  %t130 = load i64, ptr %l137, !tbaa !24
  %t131 = load i64, ptr %l137, !tbaa !24
  %t132 = shl i64 1, %t131
  %t135 = add i64 %t128, %t132
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2egrow(ptr %v0, ptr %t124, i64 %t135)
  br label %bb46
bb33:
  %t138 = load i64, ptr %l90, !tbaa !24
  %t139 = load i64, ptr %l87, !tbaa !24
  %t140 = getelementptr { i64, ptr }, ptr %l86, i32 0, i32 1
  %t141 = load ptr, ptr %t140, !tbaa !27
  %t142 = getelementptr i64, ptr %t141, i64 %t139
  store i64 %t138, ptr %t142, !tbaa !34
  store i64 0, ptr %l7, !tbaa !24
  %t143 = load i64, ptr %l1, !tbaa !24
  %t145 = add i64 %t143, 7
  %t147 = sdiv i64 %t145, 8
  store i64 %t147, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t149 = load i64, ptr %l8, !tbaa !24
  %t150 = load i64, ptr %l7, !tbaa !24
  %t153 = icmp sgt i64 %t149, %t150
  br i1 %t153, label %bb34, label %bb35
bb34:
  %t155 = load i64, ptr %l9, !tbaa !24
  %t157 = icmp sgt i64 %t155, 0
  br i1 %t157, label %bb36, label %bb37
bb35:
  store i64 0, ptr %l97, !tbaa !24
  br label %bb39
bb36:
  %t159 = load i64, ptr %l8, !tbaa !24
  %t160 = load i64, ptr %l7, !tbaa !24
  %t163 = sub i64 %t159, %t160
  %t164 = load i64, ptr %l9, !tbaa !24
  %t167 = add i64 %t163, %t164
  %t169 = sub i64 %t167, 1
  %t170 = load i64, ptr %l9, !tbaa !24
  %t173 = sdiv i64 %t169, %t170
  store i64 %t173, ptr %l100, !tbaa !24
  br label %bb38
bb37:
  store i64 0, ptr %l100, !tbaa !24
  br label %bb38
bb38:
  %t175 = load i64, ptr %l100, !tbaa !24
  store i64 %t175, ptr %l97, !tbaa !24
  br label %bb39
bb39:
  %t176 = load i64, ptr %l97, !tbaa !24
  store i64 %t176, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb40
bb40:
  %t177 = load i64, ptr %l11, !tbaa !24
  %t178 = load i64, ptr %l10, !tbaa !24
  %t181 = icmp slt i64 %t177, %t178
  %t183 = xor i1 %t181, true
  br i1 %t183, label %bb41, label %bb42
bb41:
  br label %bb45
bb42:
  br label %bb43
bb43:
  %t185 = load i64, ptr %l7, !tbaa !24
  %t186 = load i64, ptr %l11, !tbaa !24
  %t187 = load i64, ptr %l9, !tbaa !24
  %t190 = mul i64 %t186, %t187
  %t193 = add i64 %t185, %t190
  store i64 %t193, ptr %l12, !tbaa !24
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t197 = getelementptr %"compiler/eval:Machine", ptr %t195, i32 0, i32 45
  %t198 = load { i64, ptr }, ptr %t197, !tbaa !27
  store { i64, ptr } %t198, ptr %l119, !tbaa !27
  %t199 = load i64, ptr %l6, !tbaa !24
  %t201 = sdiv i64 %t199, 8
  %t202 = load i64, ptr %l12, !tbaa !24
  %t205 = add i64 %t201, %t202
  %t207 = getelementptr { i64, ptr }, ptr %l119, i32 0, i32 1
  %t208 = load ptr, ptr %t207, !tbaa !27
  %t209 = getelementptr i64, ptr %t208, i64 %t205
  store i64 0, ptr %t209, !tbaa !34
  %t210 = load ptr, ptr %l0, !tbaa !29
  %t212 = getelementptr %"compiler/eval:Machine", ptr %t210, i32 0, i32 46
  %t213 = load { i64, ptr }, ptr %t212, !tbaa !27
  store { i64, ptr } %t213, ptr %l125, !tbaa !27
  %t214 = load i64, ptr %l6, !tbaa !24
  %t216 = sdiv i64 %t214, 8
  %t217 = load i64, ptr %l12, !tbaa !24
  %t220 = add i64 %t216, %t217
  %t222 = getelementptr { i64, ptr }, ptr %l125, i32 0, i32 1
  %t223 = load ptr, ptr %t222, !tbaa !27
  %t224 = getelementptr i64, ptr %t223, i64 %t220
  store i64 0, ptr %t224, !tbaa !34
  br label %bb44
bb44:
  %t225 = load i64, ptr %l11, !tbaa !24
  %t227 = add i64 %t225, 1
  store i64 %t227, ptr %l11, !tbaa !24
  br label %bb40
bb45:
  br label %bb47
bb46:
  %t229 = load ptr, ptr %l0, !tbaa !29
  store ptr %t229, ptr %l140, !tbaa !29
  %t230 = load ptr, ptr %l140, !tbaa !29
  %t231 = getelementptr %"compiler/eval:Machine", ptr %t230, i32 0, i32 47
  %t232 = load i64, ptr %t231, !tbaa !24
  %t233 = load i64, ptr %l5, !tbaa !24
  store i64 %t233, ptr %l142, !tbaa !24
  %t234 = load i64, ptr %l142, !tbaa !24
  %t235 = load i64, ptr %l142, !tbaa !24
  %t236 = shl i64 1, %t235
  %t239 = add i64 %t232, %t236
  %t241 = load ptr, ptr %l140, !tbaa !29
  %t242 = getelementptr %"compiler/eval:Machine", ptr %t241, i32 0, i32 47
  store i64 %t239, ptr %t242, !tbaa !24
  br label %bb47
bb47:
  %t243 = load ptr, ptr %l0, !tbaa !29
  %t245 = getelementptr %"compiler/eval:Machine", ptr %t243, i32 0, i32 51
  %t247 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %t245)
  %t248 = extractvalue { i32, i64 } %t247, 1
  %t249 = extractvalue { i32, i64 } %t247, 0
  store i32 %t249, ptr %l149
  %t250 = icmp ne i32 %t249, 0
  br i1 %t250, label %bb49, label %ok.251, !prof !99
ok.251:
  store i64 %t248, ptr %l148
  br label %bb48
bb48:
  %t252 = load i64, ptr %l148, !tbaa !24
  store i64 %t252, ptr %l145, !tbaa !24
  br label %bb52
bb49:
  br label %bb50
bb50:
  %t253 = load ptr, ptr %l0, !tbaa !29
  %t255 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enewSlot(ptr %v0, ptr %t253)
  store i64 %t255, ptr %l151
  br label %bb51
bb51:
  %t256 = load i64, ptr %l151, !tbaa !24
  store i64 %t256, ptr %l145, !tbaa !24
  br label %bb52
bb52:
  %t257 = load i64, ptr %l145, !tbaa !24
  store i64 %t257, ptr %l13, !tbaa !24
  %t258 = load ptr, ptr %l0, !tbaa !29
  %t260 = getelementptr %"compiler/eval:Machine", ptr %t258, i32 0, i32 49
  %t261 = load { i64, ptr }, ptr %t260, !tbaa !27
  store { i64, ptr } %t261, ptr %l153, !tbaa !27
  %t262 = load i64, ptr %l13, !tbaa !24
  %t264 = getelementptr { i64, ptr }, ptr %l153, i32 0, i32 1
  %t265 = load ptr, ptr %t264, !tbaa !27
  %t266 = getelementptr %"compiler/eval:alloc", ptr %t265, i64 %t262
  %t267 = load %"compiler/eval:alloc", ptr %t266
  store %"compiler/eval:alloc" %t267, ptr %l14
  %t269 = load i64, ptr %l6, !tbaa !24
  %t271 = load i64, ptr %l1, !tbaa !24
  %t273 = load i64, ptr %l5, !tbaa !24
  %t277 = load i64, ptr %l4, !tbaa !24
  %t281 = getelementptr %"compiler/eval:alloc", ptr %l14, i32 0, i32 0
  store i64 %t269, ptr %t281, !tbaa !24
  %t284 = getelementptr %"compiler/eval:alloc", ptr %l14, i32 0, i32 1
  store i64 %t271, ptr %t284, !tbaa !24
  %t287 = getelementptr %"compiler/eval:alloc", ptr %l14, i32 0, i32 2
  store i64 %t273, ptr %t287, !tbaa !24
  %t290 = getelementptr %"compiler/eval:alloc", ptr %l14, i32 0, i32 4
  store i64 %a2, ptr %t290, !tbaa !24
  %t293 = getelementptr %"compiler/eval:alloc", ptr %l14, i32 0, i32 5
  store i64 %t277, ptr %t293, !tbaa !24
  %t296 = getelementptr %"compiler/eval:alloc", ptr %l14, i32 0, i32 8
  store i64 -1, ptr %t296, !tbaa !24
  %t299 = getelementptr %"compiler/eval:alloc", ptr %l14, i32 0, i32 13
  store i1 false, ptr %t299, !tbaa !21
  %t302 = getelementptr %"compiler/eval:alloc", ptr %l14, i32 0, i32 14
  store i64 -1, ptr %t302, !tbaa !24
  %t305 = getelementptr %"compiler/eval:alloc", ptr %l14, i32 0, i32 15
  store i1 false, ptr %t305, !tbaa !21
  %t306 = getelementptr %"compiler/eval:alloc", ptr %l14, i32 0, i32 9
  store i64 -1, ptr %t306, !tbaa !24
  %t309 = getelementptr %"compiler/eval:alloc", ptr %l14, i32 0, i32 10
  store i64 0, ptr %t309, !tbaa !24
  %t312 = getelementptr %"compiler/eval:alloc", ptr %l14, i32 0, i32 11
  store i32 0, ptr %t312, !tbaa !23
  %t315 = getelementptr %"compiler/eval:alloc", ptr %l14, i32 0, i32 12
  store i64 -1, ptr %t315, !tbaa !24
  %t318 = getelementptr %"compiler/eval:alloc", ptr %l14, i32 0, i32 6
  store i64 0, ptr %t318, !tbaa !24
  %t321 = getelementptr %"compiler/eval:alloc", ptr %l14, i32 0, i32 7
  store i64 0, ptr %t321, !tbaa !24
  %t322 = load i64, ptr %l4, !tbaa !24
  %t324 = icmp ne i64 %t322, 0
  br i1 %t324, label %bb53, label %bb54
bb53:
  %t326 = load i64, ptr %l4, !tbaa !24
  %t327 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t330 = and i64 %t326, %t327
  store i64 %t330, ptr %l29, !tbaa !24
  %t332 = load ptr, ptr %l0, !tbaa !29
  %t334 = getelementptr %"compiler/eval:Machine", ptr %t332, i32 0, i32 52
  %t335 = load i64, ptr %l29, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t336, ptr %v0, ptr %t334, i64 %t335)
  call void @llvm.memmove.p0.p0.i64(ptr %l183, ptr %t336, i64 152, i1 false)
  br label %bb55
bb54:
  br label %bb69
bb55:
  %t339 = getelementptr %"compiler/eval:scope", ptr %l183, i32 0, i32 3
  %t340 = load i64, ptr %t339, !tbaa !24
  store i64 %t340, ptr %l30, !tbaa !24
  %t342 = load i64, ptr %l30, !tbaa !24
  %t344 = getelementptr %"compiler/eval:alloc", ptr %l14, i32 0, i32 7
  store i64 %t342, ptr %t344, !tbaa !24
  %t345 = load i64, ptr %l30, !tbaa !24
  %t347 = icmp ne i64 %t345, 0
  br i1 %t347, label %bb56, label %bb57
bb56:
  %t349 = load ptr, ptr %l0, !tbaa !29
  %t351 = getelementptr %"compiler/eval:Machine", ptr %t349, i32 0, i32 49
  %t352 = load { i64, ptr }, ptr %t351, !tbaa !27
  store { i64, ptr } %t352, ptr %l189, !tbaa !27
  %t353 = load i64, ptr %l30, !tbaa !24
  %t354 = load i64, ptr %l13, !tbaa !24
  %t357 = getelementptr { i64, ptr }, ptr %l189, i32 0, i32 1
  %t358 = load ptr, ptr %t357, !tbaa !27
  %t359 = getelementptr %"compiler/eval:alloc", ptr %t358, i64 %t353
  %t360 = getelementptr %"compiler/eval:alloc", ptr %t359, i32 0, i32 6
  store i64 %t354, ptr %t360, !tbaa !24
  br label %bb58
bb57:
  br label %bb58
bb58:
  %t361 = load i64, ptr %l29, !tbaa !24
  %t363 = load ptr, ptr %l0, !tbaa !29
  %t365 = getelementptr %"compiler/eval:Machine", ptr %t363, i32 0, i32 52
  %t369 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v0, ptr %t365, i64 %t361)
  store ptr %t369, ptr %l196
  br label %bb59
bb59:
  %t370 = load ptr, ptr %l196, !tbaa !29
  %t372 = load i64, ptr %l13, !tbaa !24
  %t375 = getelementptr %"compiler/eval:scope", ptr %t370, i32 0, i32 3
  store i64 %t372, ptr %t375, !tbaa !24
  %t376 = load ptr, ptr %l0, !tbaa !29
  %t378 = getelementptr %"compiler/eval:Machine", ptr %t376, i32 0, i32 1
  %t379 = load i32, ptr %t378, !range !{i32 0, i32 2}
  %t381 = trunc i64 0 to i32
  %t382 = icmp eq i32 %t379, %t381
  br i1 %t382, label %bb60, label %bb61
bb60:
  %t384 = load i64, ptr %l4, !tbaa !24
  %t385 = load ptr, ptr %l0, !tbaa !29
  %t387 = getelementptr %"compiler/eval:Machine", ptr %t385, i32 0, i32 70
  %t388 = load i64, ptr %t387, !tbaa !24
  %t391 = icmp eq i64 %t384, %t388
  store i1 %t391, ptr %l202, !tbaa !21
  br label %bb62
bb61:
  store i1 false, ptr %l202, !tbaa !21
  br label %bb62
bb62:
  %t393 = load i1, ptr %l202, !tbaa !21
  br i1 %t393, label %bb63, label %bb64
bb63:
  %t394 = load ptr, ptr %l0, !tbaa !29
  %t396 = getelementptr %"compiler/eval:Machine", ptr %t394, i32 0, i32 73
  %t397 = load i64, ptr %t396, !tbaa !24
  %t399 = icmp sge i64 %t397, 0
  store i1 %t399, ptr %l207, !tbaa !21
  br label %bb65
bb64:
  store i1 false, ptr %l207, !tbaa !21
  br label %bb65
bb65:
  %t401 = load i1, ptr %l207, !tbaa !21
  br i1 %t401, label %bb66, label %bb67
bb66:
  %t402 = load ptr, ptr %l0, !tbaa !29
  %t404 = getelementptr %"compiler/eval:Machine", ptr %t402, i32 0, i32 73
  %t405 = load i64, ptr %t404, !tbaa !24
  %t407 = getelementptr %"compiler/eval:alloc", ptr %l14, i32 0, i32 8
  store i64 %t405, ptr %t407, !tbaa !24
  br label %bb68
bb67:
  br label %bb68
bb68:
  br label %bb69
bb69:
  %t408 = load ptr, ptr %l0, !tbaa !29
  %t410 = getelementptr %"compiler/eval:Machine", ptr %t408, i32 0, i32 49
  %t411 = load { i64, ptr }, ptr %t410, !tbaa !27
  store { i64, ptr } %t411, ptr %l214, !tbaa !27
  %t412 = load i64, ptr %l13, !tbaa !24
  %t413 = load %"compiler/eval:alloc", ptr %l14
  %t416 = getelementptr { i64, ptr }, ptr %l214, i32 0, i32 1
  %t417 = load ptr, ptr %t416, !tbaa !27
  %t418 = getelementptr %"compiler/eval:alloc", ptr %t417, i64 %t412
  store %"compiler/eval:alloc" %t413, ptr %t418
  %t419 = load ptr, ptr %l0, !tbaa !29
  store ptr %t419, ptr %l217, !tbaa !29
  %t420 = load ptr, ptr %l217, !tbaa !29
  %t421 = getelementptr %"compiler/eval:Machine", ptr %t420, i32 0, i32 15
  %t422 = load i64, ptr %t421, !tbaa !24
  %t423 = load i64, ptr %l1, !tbaa !24
  %t426 = add i64 %t422, %t423
  %t428 = load ptr, ptr %l217, !tbaa !29
  %t429 = getelementptr %"compiler/eval:Machine", ptr %t428, i32 0, i32 15
  store i64 %t426, ptr %t429, !tbaa !24
  %t430 = getelementptr %"compiler/eval:alloc", ptr %l14, i32 0, i32 3
  %t431 = load i64, ptr %t430, !tbaa !24
  %t432 = load i64, ptr @G_2ecompiler_2feval_2eslotBits, !tbaa !24
  store i64 %t432, ptr %l222, !tbaa !24
  %t434 = load i64, ptr %l222, !tbaa !24
  %t435 = load i64, ptr %l222, !tbaa !24
  %t436 = shl i64 %t431, %t435
  %t437 = load i64, ptr %l13, !tbaa !24
  %t440 = or i64 %t436, %t437
  %t442 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s0, i64 %t440, i64 0)
  store %"compiler/eval:Ptr" %t442, ptr %l226
  br label %bb70
bb70:
  call void @__olang_scope_close(ptr %s0)
  %t443 = load %"compiler/eval:Ptr", ptr %l226
  store %"compiler/eval:Ptr" %t443, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/eval:Ptr", ptr %rv
  ret %"compiler/eval:Ptr" %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eappendEscaped(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = icmp eq i64 %t1, 10
  br i1 %t3, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  store i64 110, ptr %l5, !tbaa !24
  br label %bb31
bb4:
  %t5 = load i64, ptr %l2, !tbaa !24
  %t7 = icmp eq i64 %t5, 9
  br i1 %t7, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  store i64 116, ptr %l5, !tbaa !24
  br label %bb31
bb8:
  %t9 = load i64, ptr %l2, !tbaa !24
  %t11 = icmp eq i64 %t9, 13
  br i1 %t11, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  store i64 114, ptr %l5, !tbaa !24
  br label %bb31
bb12:
  %t13 = load i64, ptr %l2, !tbaa !24
  %t15 = icmp eq i64 %t13, 0
  br i1 %t15, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store i64 48, ptr %l5, !tbaa !24
  br label %bb31
bb16:
  %t17 = load i64, ptr %l2, !tbaa !24
  %t19 = icmp eq i64 %t17, 92
  br i1 %t19, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store i64 92, ptr %l5, !tbaa !24
  br label %bb31
bb20:
  br i1 true, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb26
bb23:
  %t21 = load i64, ptr %l2, !tbaa !24
  %t25 = icmp eq i64 %t21, %a3
  br i1 %t25, label %bb24, label %bb25
bb24:
  %t27 = load i64, ptr %l2, !tbaa !24
  store i64 %t27, ptr %l5, !tbaa !24
  br label %bb31
bb25:
  br label %bb26
bb26:
  br i1 true, label %bb27, label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb30
bb29:
  store i64 -1, ptr %l5, !tbaa !24
  br label %bb31
bb30:
  call void @__olang_check_failed(ptr @olang_loc_317a6a00a16cca58_813a0e779d592254)
  unreachable
bb31:
  %t29 = load i64, ptr %l5, !tbaa !24
  store i64 %t29, ptr %l4, !tbaa !24
  %t30 = load i64, ptr %l4, !tbaa !24
  %t32 = icmp slt i64 %t30, 0
  br i1 %t32, label %bb32, label %bb33
bb32:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load i64, ptr %l1, !tbaa !24
  %t36 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eappendByte(ptr %v0, ptr %t34, i64 %t35, i64 %t36)
  br label %bb34
bb33:
  br label %bb35
bb34:
  br label %ret
bb35:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eappendByte(ptr %v0, ptr %t40, i64 %t41, i64 92)
  br label %bb36
bb36:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t45 = load i64, ptr %l1, !tbaa !24
  %t46 = load i64, ptr %l4, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eappendByte(ptr %v0, ptr %t44, i64 %t45, i64 %t46)
  br label %bb37
bb37:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eappendText(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l14 = alloca { i64, ptr }
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
  %t7 = load i64, ptr %l4, !tbaa !24
  %t8 = load i64, ptr %l5, !tbaa !24
  %t11 = icmp slt i64 %t7, %t8
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  br label %bb7
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t15, ptr %l14, !tbaa !27
  %t16 = load i64, ptr %l4, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr i8, ptr %t19, i64 %t16
  %t21 = load i8, ptr %t20, !tbaa !32
  %t27 = zext i8 %t21 to i64
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eappendByte(ptr %v0, ptr %a0, i64 %a1, i64 %t27)
  br label %bb5
bb5:
  br label %bb6
bb6:
  %t31 = load i64, ptr %l4, !tbaa !24
  %t33 = add i64 %t31, 1
  store i64 %t33, ptr %l4, !tbaa !24
  br label %bb1
bb7:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecallReturned(ptr %v0, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/eval:frame"
  %l2 = alloca i64
  %l3 = alloca %"compiler/mir:Call"
  %l4 = alloca i64
  %l5 = alloca { i64, [4 x i64] }
  %l6 = alloca i32
  %l7 = alloca i32
  %l13 = alloca ptr
  %l17 = alloca %"compiler/mir:Call"
  %l33 = alloca ptr
  %l37 = alloca ptr
  %l40 = alloca i32
  %l42 = alloca ptr
  %l46 = alloca i32
  %l47 = alloca i32
  %l55 = alloca i64
  %l56 = alloca ptr
  %l60 = alloca %"compiler/eval:Ptr"
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  call void @llvm.memmove.p0.p0.i64(ptr %l1, ptr %a1, i64 136, i1 false)
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 59
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = sub i64 %t4, 1
  store i64 %t6, ptr %l2, !tbaa !24
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t9 = load i64, ptr %l2, !tbaa !24
  %t12 = call ptr @compiler_2feval_2ecompiler_2feval_3aMachine_2efnOfFrame(ptr %v0, ptr %v0, ptr %t8, i64 %t9)
  store ptr %t12, ptr %l13
  br label %bb1
bb1:
  %t13 = load ptr, ptr %l13, !tbaa !29
  %t15 = getelementptr %"compiler/mir:Fn", ptr %t13, i32 0, i32 14
  %t16 = getelementptr %"compiler/eval:frame", ptr %l1, i32 0, i32 8
  %t17 = load i64, ptr %t16, !tbaa !24
  %t20 = call %"compiler/mir:Call" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eAt_3ccompiler_2fmir_3aCall_3e(ptr %v0, ptr %t15, i64 %t17)
  store %"compiler/mir:Call" %t20, ptr %l17
  br label %bb2
bb2:
  %t21 = load %"compiler/mir:Call", ptr %l17
  store %"compiler/mir:Call" %t21, ptr %l3
  %t22 = getelementptr %"compiler/eval:frame", ptr %l1, i32 0, i32 12
  %t23 = load i1, ptr %t22, !tbaa !21
  %t25 = xor i1 %t23, true
  br i1 %t25, label %bb3, label %bb4
bb3:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load i64, ptr %l2, !tbaa !24
  %t29 = getelementptr %"compiler/mir:Call", ptr %l3, i32 0, i32 5
  %t30 = load i32, ptr %t29, !tbaa !23
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ejump(ptr %v0, ptr %t27, i64 %t28, i32 %t30)
  br label %bb5
bb4:
  br label %bb6
bb5:
  br label %ret
bb6:
  %t34 = getelementptr %"compiler/mir:Call", ptr %l3, i32 0, i32 7
  %t35 = load i32, ptr %t34, !tbaa !23
  %t36 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t39 = icmp eq i32 %t35, %t36
  br i1 %t39, label %bb7, label %bb8
bb7:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNotModelled, !tbaa !27
  %t43 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t43, ptr %t41, { i64, ptr } %t42)
  br label %bb9
bb8:
  br label %bb10
bb9:
  br label %ret
bb10:
  %t46 = getelementptr %"compiler/eval:frame", ptr %l1, i32 0, i32 13
  %t47 = load i64, ptr %t46, !tbaa !24
  store i64 %t47, ptr %l4, !tbaa !24
  %t49 = getelementptr %"compiler/mir:Call", ptr %l3, i32 0, i32 0
  %t50 = load { i64, [7 x i64] }, ptr %t49
  %t52 = extractvalue { i64, [7 x i64] } %t50, 0
  %t53 = icmp eq i64 %t52, 2
  br i1 %t53, label %bb11, label %bb12
bb11:
  store %olang.scope zeroinitializer, ptr %s3
  %t55 = getelementptr %"compiler/mir:Call", ptr %l3, i32 0, i32 0
  %t56 = getelementptr { i64, [7 x i64] }, ptr %t55, i32 0, i32 1
  %t57 = getelementptr { { i64, [4 x i64] } }, ptr %t56, i32 0, i32 0
  %t58 = load { i64, [4 x i64] }, ptr %t57
  store { i64, [4 x i64] } %t58, ptr %l5
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/eval:Machine", ptr %t60, i32 0, i32 0
  %t63 = load ptr, ptr %t62, !tbaa !29
  store ptr %t63, ptr %l33, !tbaa !29
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/eval:Machine", ptr %t64, i32 0, i32 25
  %t67 = getelementptr %"compiler/eval:frame", ptr %l1, i32 0, i32 0
  %t68 = load i64, ptr %t67, !tbaa !24
  %t71 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %s3, ptr %t66, i64 %t68)
  store ptr %t71, ptr %l37
  br label %bb13
bb12:
  br label %bb21
bb13:
  %t72 = load ptr, ptr %l37, !tbaa !29
  %t74 = getelementptr %"compiler/mir:Fn", ptr %t72, i32 0, i32 1
  %t75 = load i32, ptr %t74, !tbaa !23
  %t76 = load ptr, ptr %l33, !tbaa !29
  %t78 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t76, i32 %t75)
  store i32 %t78, ptr %l40
  br label %bb14
bb14:
  %t79 = load i32, ptr %l40, !tbaa !23
  store i32 %t79, ptr %l6, !tbaa !23
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/eval:Machine", ptr %t80, i32 0, i32 0
  %t83 = load ptr, ptr %t82, !tbaa !29
  store ptr %t83, ptr %l42, !tbaa !29
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t85 = load i64, ptr %l2, !tbaa !24
  %t86 = getelementptr %"compiler/mir:Call", ptr %l3, i32 0, i32 0
  %t87 = load { i64, [7 x i64] }, ptr %t86
  %t91 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2ecalleeType(ptr %v0, ptr %t84, i64 %t85, { i64, [7 x i64] } %t87)
  store i32 %t91, ptr %l46
  br label %bb15
bb15:
  %t92 = load ptr, ptr %l42, !tbaa !29
  %t93 = load i32, ptr %l46, !tbaa !23
  %t94 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t92, i32 %t93)
  store i32 %t94, ptr %l47
  br label %bb16
bb16:
  %t95 = load i32, ptr %l47, !tbaa !23
  store i32 %t95, ptr %l7, !tbaa !23
  %t96 = load i32, ptr %l6, !tbaa !23
  %t97 = load i32, ptr %l7, !tbaa !23
  %t100 = icmp ne i32 %t96, %t97
  br i1 %t100, label %bb17, label %bb18
bb17:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t103 = load i64, ptr %l4, !tbaa !24
  %t104 = load i32, ptr %l6, !tbaa !23
  %t105 = load i32, ptr %l7, !tbaa !23
  %t110 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erecode(ptr %v0, ptr %t102, i64 %t103, i32 %t104, i32 %t105)
  store i64 %t110, ptr %l55
  br label %bb19
bb18:
  br label %bb20
bb19:
  %t111 = load i64, ptr %l55, !tbaa !24
  store i64 %t111, ptr %l4, !tbaa !24
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s3)
  br label %bb21
bb21:
  %t112 = load ptr, ptr %l0, !tbaa !29
  store ptr %t112, ptr %l56, !tbaa !29
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t114 = load i64, ptr %l2, !tbaa !24
  %t115 = getelementptr %"compiler/mir:Call", ptr %l3, i32 0, i32 6
  %t116 = load i32, ptr %t115, !tbaa !23
  %t120 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2elocalPtr(ptr %v0, ptr %t113, i64 %t114, i32 %t116)
  store %"compiler/eval:Ptr" %t120, ptr %l60
  br label %bb22
bb22:
  %t121 = load i64, ptr %l4, !tbaa !24
  %t122 = load ptr, ptr %l56, !tbaa !29
  %t123 = load %"compiler/eval:Ptr", ptr %l60
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t122, %"compiler/eval:Ptr" %t123, i64 4, i64 %t121)
  br label %bb23
bb23:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t126 = load i64, ptr %l2, !tbaa !24
  %t127 = load i64, ptr @G_2ecompiler_2feval_2etCall, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2efailedHere(ptr %v0, ptr %t125, i64 %t126, i64 %t127)
  br label %bb24
bb24:
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t132 = load i64, ptr %l2, !tbaa !24
  %t133 = getelementptr %"compiler/mir:Call", ptr %l3, i32 0, i32 7
  %t134 = load i32, ptr %t133, !tbaa !23
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ejump(ptr %v0, ptr %t131, i64 %t132, i32 %t134)
  br label %bb25
bb25:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eclosure(ptr %v0, ptr %a0, i64 %a1, %"compiler/eval:Ptr" %a2, { i64, [2 x i64] } %a3, { i64, [1 x i64] } %a4, %"compiler/mir:Range" %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"compiler/eval:Ptr"
  %l3 = alloca { i64, [2 x i64] }
  %l4 = alloca { i64, [1 x i64] }
  %l5 = alloca %"compiler/mir:Range"
  %l6 = alloca %"compiler/eval:Ptr"
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca { i64, ptr }
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca i32
  %l13 = alloca i32
  %l14 = alloca i32
  %l15 = alloca i32
  %l16 = alloca { { i64, ptr }, i64 }
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca %"compiler/eval:Ptr"
  %l21 = alloca i32
  %l22 = alloca i32
  %l23 = alloca i32
  %l24 = alloca i32
  %l25 = alloca i32
  %l26 = alloca i32
  %l27 = alloca { i64, [4 x i64] }
  %l28 = alloca i64
  %l29 = alloca %"compiler/eval:Ptr"
  %l32 = alloca %"compiler/eval:Ptr"
  %l33 = alloca i64
  %l37 = alloca i64
  %l38 = alloca i32
  %l41 = alloca i1
  %l45 = alloca ptr
  %l60 = alloca ptr
  %l64 = alloca %"compiler/eval:Ptr"
  %l68 = alloca ptr
  %l70 = alloca i64
  %l78 = alloca i32
  %l81 = alloca i32
  %l99 = alloca i32
  %l100 = alloca ptr
  %l101 = alloca i64
  %l109 = alloca { i64, [4 x i64] }
  %l110 = alloca i32
  %l115 = alloca { { i64, ptr }, i64 }
  %l121 = alloca i64
  %l132 = alloca %"compiler/eval:Ptr"
  %l137 = alloca i32
  %l140 = alloca i32
  %l165 = alloca { i64, [4 x i64] }
  %l166 = alloca ptr
  %l167 = alloca i64
  %l171 = alloca %"compiler/eval:Ptr"
  %l179 = alloca i64
  %l182 = alloca i1
  %l186 = alloca i64
  %l189 = alloca ptr
  %l190 = alloca i64
  %l192 = alloca i64
  %l196 = alloca i64
  %l199 = alloca i64
  %l201 = alloca %"compiler/eval:Ptr"
  %l202 = alloca %"compiler/eval:Ptr"
  %l206 = alloca { i64, ptr }
  %l211 = alloca ptr
  %l218 = alloca %"compiler/eval:Ptr"
  %l225 = alloca ptr
  %l229 = alloca %"compiler/eval:Ptr"
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s9 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store %"compiler/eval:Ptr" %a2, ptr %l2
  store { i64, [2 x i64] } %a3, ptr %l3
  store { i64, [1 x i64] } %a4, ptr %l4
  store %"compiler/mir:Range" %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load { i64, [2 x i64] }, ptr %l3
  %t5 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2ecodePtr(ptr %v0, ptr %t1, { i64, [2 x i64] } %t2)
  store %"compiler/eval:Ptr" %t5, ptr %l32
  br label %bb1
bb1:
  %t6 = load %"compiler/eval:Ptr", ptr %l32
  store %"compiler/eval:Ptr" %t6, ptr %l6
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/eval:Machine", ptr %t7, i32 0, i32 30
  %t10 = load { i64, [2 x i64] }, ptr %l3
  %t13 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20I64_3e_2eG_H6ffe2eb17daa971b2c9d564ad72358b1(ptr %v0, ptr %t9, { i64, [2 x i64] } %t10)
  %t14 = extractvalue { i32, i64 } %t13, 1
  %t15 = extractvalue { i32, i64 } %t13, 0
  store i32 %t15, ptr %l38
  %t16 = icmp ne i32 %t15, 0
  br i1 %t16, label %bb3, label %ok.17, !prof !99
ok.17:
  store i64 %t14, ptr %l37
  br label %bb2
bb2:
  %t18 = load i64, ptr %l37, !tbaa !24
  store i64 %t18, ptr %l33, !tbaa !24
  br label %bb5
bb3:
  br label %bb4
bb4:
  store i64 -1, ptr %l33, !tbaa !24
  br label %bb5
bb5:
  %t19 = load i64, ptr %l33, !tbaa !24
  store i64 %t19, ptr %l7, !tbaa !24
  %t20 = load i64, ptr %l7, !tbaa !24
  %t22 = icmp sge i64 %t20, 0
  br i1 %t22, label %bb6, label %bb7
bb6:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/eval:Machine", ptr %t24, i32 0, i32 25
  %t27 = load i64, ptr %l7, !tbaa !24
  %t30 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %s0, ptr %t26, i64 %t27)
  store ptr %t30, ptr %l45
  br label %bb8
bb7:
  store i1 false, ptr %l41, !tbaa !21
  br label %bb9
bb8:
  %t31 = load ptr, ptr %l45, !tbaa !29
  %t33 = getelementptr %"compiler/mir:Fn", ptr %t31, i32 0, i32 25
  %t34 = load i1, ptr %t33, !tbaa !21
  store i1 %t34, ptr %l41, !tbaa !21
  br label %bb9
bb9:
  %t36 = load i1, ptr %l41, !tbaa !21
  br i1 %t36, label %bb10, label %bb11
bb10:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load i64, ptr %l1, !tbaa !24
  %t39 = load %"compiler/eval:Ptr", ptr %l2
  %t40 = load %"compiler/eval:Ptr", ptr %l6
  %t41 = load i64, ptr %l7, !tbaa !24
  %t42 = load { i64, [1 x i64] }, ptr %l4
  %t43 = load %"compiler/mir:Range", ptr %l5
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2egenClosure(ptr %v0, ptr %t37, i64 %t38, %"compiler/eval:Ptr" %t39, %"compiler/eval:Ptr" %t40, i64 %t41, { i64, [1 x i64] } %t42, %"compiler/mir:Range" %t43)
  br label %bb12
bb11:
  br label %bb13
bb12:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb13:
  %t51 = getelementptr %"compiler/mir:Range", ptr %l5, i32 0, i32 1
  %t52 = load i32, ptr %t51, !tbaa !23
  %t54 = icmp eq i32 %t52, 0
  br i1 %t54, label %bb14, label %bb15
bb14:
  store %olang.scope zeroinitializer, ptr %s2
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = load %"compiler/eval:Ptr", ptr %l2
  %t58 = load %"compiler/eval:Ptr", ptr %l6
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t56, %"compiler/eval:Ptr" %t57, %"compiler/eval:Ptr" %t58)
  br label %bb16
bb15:
  br label %bb19
bb16:
  %t62 = load ptr, ptr %l0, !tbaa !29
  store ptr %t62, ptr %l60, !tbaa !29
  %t63 = getelementptr %"compiler/eval:Ptr", ptr %l2, i32 0, i32 0
  %t64 = load i64, ptr %t63, !tbaa !24
  %t65 = getelementptr %"compiler/eval:Ptr", ptr %l2, i32 0, i32 1
  %t66 = load i64, ptr %t65, !tbaa !24
  %t68 = add i64 %t66, 8
  %t71 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s2, i64 %t64, i64 %t68)
  store %"compiler/eval:Ptr" %t71, ptr %l64
  br label %bb17
bb17:
  %t72 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  %t73 = load ptr, ptr %l60, !tbaa !29
  %t74 = load %"compiler/eval:Ptr", ptr %l64
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t73, %"compiler/eval:Ptr" %t74, %"compiler/eval:Ptr" %t72)
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb19:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t77 = load i64, ptr %l1, !tbaa !24
  %t80 = call ptr @compiler_2feval_2ecompiler_2feval_3aMachine_2efnOfFrame(ptr %v0, ptr %v0, ptr %t76, i64 %t77)
  store ptr %t80, ptr %l68
  br label %bb20
bb20:
  %t81 = load ptr, ptr %l68, !tbaa !29
  store ptr %t81, ptr %l8, !tbaa !29
  %t82 = getelementptr %"compiler/mir:Range", ptr %l5, i32 0, i32 1
  %t83 = load i32, ptr %t82, !tbaa !23
  %t85 = sext i32 %t83 to i64
  store i64 %t85, ptr %l70, !tbaa !24
  %t86 = load i64, ptr %l70, !tbaa !24
  %t87 = icmp sge i64 %t86, 0
  br i1 %t87, label %bb21, label %bb22
bb21:
  %t89 = load i64, ptr %l70, !tbaa !24
  %t90 = icmp sle i64 %t89, 2305843009213693951
  br i1 %t90, label %bb23, label %bb24
bb22:
  call void @__olang_check_failed(ptr @olang_loc_858a31b75d933e1b_7873e096df41decf)
  unreachable
bb23:
  %t92 = load i64, ptr %l70, !tbaa !24
  %t93 = mul i64 %t92, 4
  %t94 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t93)
  %t95 = insertvalue { i64, ptr } undef, i64 %t92, 0
  %t96 = insertvalue { i64, ptr } %t95, ptr %t94, 1
  store { i64, ptr } %t96, ptr %l9, !tbaa !27
  store i32 0, ptr %l10, !tbaa !23
  %t98 = getelementptr %"compiler/mir:Range", ptr %l5, i32 0, i32 1
  %t99 = load i32, ptr %t98, !tbaa !23
  store i32 %t99, ptr %l11, !tbaa !23
  store i32 1, ptr %l12, !tbaa !23
  %t101 = load i32, ptr %l11, !tbaa !23
  %t102 = load i32, ptr %l10, !tbaa !23
  %t105 = icmp sgt i32 %t101, %t102
  br i1 %t105, label %bb25, label %bb26
bb24:
  call void @__olang_check_failed(ptr @olang_loc_858a31b75d933e1b_7873e096df41decf)
  unreachable
bb25:
  %t107 = load i32, ptr %l12, !tbaa !23
  %t109 = icmp sgt i32 %t107, 0
  br i1 %t109, label %bb27, label %bb28
bb26:
  store i32 0, ptr %l78, !tbaa !23
  br label %bb30
bb27:
  %t111 = load i32, ptr %l11, !tbaa !23
  %t112 = load i32, ptr %l10, !tbaa !23
  %t115 = sub i32 %t111, %t112
  %t116 = load i32, ptr %l12, !tbaa !23
  %t119 = add i32 %t115, %t116
  %t121 = sub i32 %t119, 1
  %t122 = load i32, ptr %l12, !tbaa !23
  %t125 = sdiv i32 %t121, %t122
  store i32 %t125, ptr %l81, !tbaa !23
  br label %bb29
bb28:
  store i32 0, ptr %l81, !tbaa !23
  br label %bb29
bb29:
  %t127 = load i32, ptr %l81, !tbaa !23
  store i32 %t127, ptr %l78, !tbaa !23
  br label %bb30
bb30:
  %t128 = load i32, ptr %l78, !tbaa !23
  store i32 %t128, ptr %l13, !tbaa !23
  store i32 0, ptr %l14, !tbaa !23
  br label %bb31
bb31:
  %t129 = load i32, ptr %l14, !tbaa !23
  %t130 = load i32, ptr %l13, !tbaa !23
  %t133 = icmp slt i32 %t129, %t130
  %t135 = xor i1 %t133, true
  br i1 %t135, label %bb32, label %bb33
bb32:
  br label %bb38
bb33:
  br label %bb34
bb34:
  %t137 = load i32, ptr %l10, !tbaa !23
  %t138 = load i32, ptr %l14, !tbaa !23
  %t139 = load i32, ptr %l12, !tbaa !23
  %t142 = mul i32 %t138, %t139
  %t145 = add i32 %t137, %t142
  store i32 %t145, ptr %l15, !tbaa !23
  %t147 = load i32, ptr %l15, !tbaa !23
  store i32 %t147, ptr %l99, !tbaa !23
  %t148 = load ptr, ptr %l0, !tbaa !29
  store ptr %t148, ptr %l100, !tbaa !29
  %t149 = load i64, ptr %l1, !tbaa !24
  store i64 %t149, ptr %l101, !tbaa !24
  %t150 = load ptr, ptr %l8, !tbaa !29
  %t152 = getelementptr %"compiler/mir:Fn", ptr %t150, i32 0, i32 11
  %t153 = getelementptr %"compiler/mir:Range", ptr %l5, i32 0, i32 0
  %t154 = load i32, ptr %t153, !tbaa !23
  %t156 = sext i32 %t154 to i64
  %t157 = load i32, ptr %l15, !tbaa !23
  %t159 = sext i32 %t157 to i64
  %t162 = add i64 %t156, %t159
  %t165 = call { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %t152, i64 %t162)
  store { i64, [4 x i64] } %t165, ptr %l109
  br label %bb35
bb35:
  %t166 = load ptr, ptr %l100, !tbaa !29
  %t167 = load i64, ptr %l101, !tbaa !24
  %t168 = load { i64, [4 x i64] }, ptr %l109
  %t169 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t166, i64 %t167, { i64, [4 x i64] } %t168)
  store i32 %t169, ptr %l110
  br label %bb36
bb36:
  %t170 = load i32, ptr %l110, !tbaa !23
  %t171 = load i32, ptr %l99, !tbaa !23
  %t172 = sext i32 %t171 to i64
  %t173 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t174 = load ptr, ptr %t173, !tbaa !27
  %t175 = getelementptr i32, ptr %t174, i64 %t172
  store i32 %t170, ptr %t175, !tbaa !33
  br label %bb37
bb37:
  %t176 = load i32, ptr %l14, !tbaa !23
  %t178 = add i32 %t176, 1
  store i32 %t178, ptr %l14, !tbaa !23
  br label %bb31
bb38:
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t181 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t184 = call { { i64, ptr }, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2epack(ptr %v0, ptr %s0, ptr %s0, ptr %t180, { i64, ptr } %t181)
  store { { i64, ptr }, i64 } %t184, ptr %l115
  br label %bb39
bb39:
  %t185 = load { { i64, ptr }, i64 }, ptr %l115
  store { { i64, ptr }, i64 } %t185, ptr %l16
  %t186 = getelementptr { { i64, ptr }, i64 }, ptr %l16, i32 0, i32 0
  %t187 = load { i64, ptr }, ptr %t186, !tbaa !27
  store { i64, ptr } %t187, ptr %l17, !tbaa !27
  %t189 = getelementptr { { i64, ptr }, i64 }, ptr %l16, i32 0, i32 1
  %t190 = load i64, ptr %t189, !tbaa !24
  store i64 %t190, ptr %l18, !tbaa !24
  %t192 = load ptr, ptr %l0, !tbaa !29
  %t193 = load i64, ptr %l1, !tbaa !24
  %t194 = load { i64, [1 x i64] }, ptr %l4
  %t198 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ebuildScope(ptr %v0, ptr %t192, i64 %t193, { i64, [1 x i64] } %t194)
  store i64 %t198, ptr %l121
  br label %bb40
bb40:
  %t199 = load i64, ptr %l121, !tbaa !24
  store i64 %t199, ptr %l19, !tbaa !24
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t202 = getelementptr %"compiler/eval:Machine", ptr %t200, i32 0, i32 22
  %t203 = load i1, ptr %t202, !tbaa !21
  br i1 %t203, label %bb41, label %bb42
bb41:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb42:
  br label %bb43
bb43:
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t206 = load i64, ptr %l18, !tbaa !24
  %t207 = getelementptr %"compiler/mir:Range", ptr %l5, i32 0, i32 1
  %t208 = load i32, ptr %t207, !tbaa !23
  %t210 = sext i32 %t208 to i64
  %t212 = mul i64 8, %t210
  %t215 = add i64 %t206, %t212
  %t216 = load i64, ptr @G_2ecompiler_2feval_2eaValue, !tbaa !24
  %t217 = load i64, ptr %l19, !tbaa !24
  %t222 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocate(ptr %v0, ptr %t205, i64 %t215, i64 %t216, i64 %t217)
  store %"compiler/eval:Ptr" %t222, ptr %l132
  br label %bb44
bb44:
  %t223 = load %"compiler/eval:Ptr", ptr %l132
  store %"compiler/eval:Ptr" %t223, ptr %l20
  store i32 0, ptr %l21, !tbaa !23
  %t224 = getelementptr %"compiler/mir:Range", ptr %l5, i32 0, i32 1
  %t225 = load i32, ptr %t224, !tbaa !23
  store i32 %t225, ptr %l22, !tbaa !23
  store i32 1, ptr %l23, !tbaa !23
  %t227 = load i32, ptr %l22, !tbaa !23
  %t228 = load i32, ptr %l21, !tbaa !23
  %t231 = icmp sgt i32 %t227, %t228
  br i1 %t231, label %bb45, label %bb46
bb45:
  %t233 = load i32, ptr %l23, !tbaa !23
  %t235 = icmp sgt i32 %t233, 0
  br i1 %t235, label %bb47, label %bb48
bb46:
  store i32 0, ptr %l137, !tbaa !23
  br label %bb50
bb47:
  %t237 = load i32, ptr %l22, !tbaa !23
  %t238 = load i32, ptr %l21, !tbaa !23
  %t241 = sub i32 %t237, %t238
  %t242 = load i32, ptr %l23, !tbaa !23
  %t245 = add i32 %t241, %t242
  %t247 = sub i32 %t245, 1
  %t248 = load i32, ptr %l23, !tbaa !23
  %t251 = sdiv i32 %t247, %t248
  store i32 %t251, ptr %l140, !tbaa !23
  br label %bb49
bb48:
  store i32 0, ptr %l140, !tbaa !23
  br label %bb49
bb49:
  %t253 = load i32, ptr %l140, !tbaa !23
  store i32 %t253, ptr %l137, !tbaa !23
  br label %bb50
bb50:
  %t254 = load i32, ptr %l137, !tbaa !23
  store i32 %t254, ptr %l24, !tbaa !23
  store i32 0, ptr %l25, !tbaa !23
  br label %bb51
bb51:
  store %olang.scope zeroinitializer, ptr %s8
  %t255 = load i32, ptr %l25, !tbaa !23
  %t256 = load i32, ptr %l24, !tbaa !23
  %t259 = icmp slt i32 %t255, %t256
  %t261 = xor i1 %t259, true
  br i1 %t261, label %bb52, label %bb53
bb52:
  call void @__olang_scope_close(ptr %s8)
  br label %bb78
bb53:
  br label %bb54
bb54:
  %t263 = load i32, ptr %l21, !tbaa !23
  %t264 = load i32, ptr %l25, !tbaa !23
  %t265 = load i32, ptr %l23, !tbaa !23
  %t268 = mul i32 %t264, %t265
  %t271 = add i32 %t263, %t268
  store i32 %t271, ptr %l26, !tbaa !23
  %t273 = load ptr, ptr %l8, !tbaa !29
  %t275 = getelementptr %"compiler/mir:Fn", ptr %t273, i32 0, i32 11
  %t276 = getelementptr %"compiler/mir:Range", ptr %l5, i32 0, i32 0
  %t277 = load i32, ptr %t276, !tbaa !23
  %t279 = sext i32 %t277 to i64
  %t280 = load i32, ptr %l26, !tbaa !23
  %t282 = sext i32 %t280 to i64
  %t285 = add i64 %t279, %t282
  %t288 = call { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %t275, i64 %t285)
  store { i64, [4 x i64] } %t288, ptr %l165
  br label %bb55
bb55:
  %t289 = load { i64, [4 x i64] }, ptr %l165
  store { i64, [4 x i64] } %t289, ptr %l27
  %t290 = load ptr, ptr %l0, !tbaa !29
  store ptr %t290, ptr %l166, !tbaa !29
  %t291 = load i64, ptr %l1, !tbaa !24
  store i64 %t291, ptr %l167, !tbaa !24
  %t292 = getelementptr %"compiler/eval:Ptr", ptr %l20, i32 0, i32 0
  %t293 = load i64, ptr %t292, !tbaa !24
  %t294 = load i32, ptr %l26, !tbaa !23
  %t296 = sext i32 %t294 to i64
  %t297 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t298 = load ptr, ptr %t297, !tbaa !27
  %t299 = getelementptr i64, ptr %t298, i64 %t296
  %t300 = load i64, ptr %t299, !tbaa !34
  %t303 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s8, i64 %t293, i64 %t300)
  store %"compiler/eval:Ptr" %t303, ptr %l171
  br label %bb56
bb56:
  %t304 = load i32, ptr %l26, !tbaa !23
  %t306 = sext i32 %t304 to i64
  %t307 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t308 = load ptr, ptr %t307, !tbaa !27
  %t309 = getelementptr i32, ptr %t308, i64 %t306
  %t310 = load i32, ptr %t309, !tbaa !33
  %t311 = load { i64, [4 x i64] }, ptr %l27
  %t312 = load ptr, ptr %l166, !tbaa !29
  %t313 = load i64, ptr %l167, !tbaa !24
  %t314 = load %"compiler/eval:Ptr", ptr %l171
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eput(ptr %v0, ptr %t312, i64 %t313, %"compiler/eval:Ptr" %t314, i32 %t310, { i64, [4 x i64] } %t311)
  br label %bb57
bb57:
  %t317 = load i64, ptr %l19, !tbaa !24
  store i64 %t317, ptr %l28, !tbaa !24
  %t319 = load ptr, ptr %l0, !tbaa !29
  %t320 = load i32, ptr %l26, !tbaa !23
  %t322 = sext i32 %t320 to i64
  %t323 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t324 = load ptr, ptr %t323, !tbaa !27
  %t325 = getelementptr i32, ptr %t324, i64 %t322
  %t326 = load i32, ptr %t325, !tbaa !33
  %t329 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t319, i32 %t326)
  store i64 %t329, ptr %l179
  br label %bb58
bb58:
  %t330 = load i64, ptr @G_2ecompiler_2feval_2evPtr, !tbaa !24
  %t331 = load i64, ptr %l179, !tbaa !24
  %t333 = icmp eq i64 %t331, %t330
  br i1 %t333, label %bb59, label %bb60
bb59:
  store i1 true, ptr %l182, !tbaa !21
  br label %bb62
bb60:
  %t335 = load ptr, ptr %l0, !tbaa !29
  %t336 = load i32, ptr %l26, !tbaa !23
  %t338 = sext i32 %t336 to i64
  %t339 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t340 = load ptr, ptr %t339, !tbaa !27
  %t341 = getelementptr i32, ptr %t340, i64 %t338
  %t342 = load i32, ptr %t341, !tbaa !33
  %t345 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t335, i32 %t342)
  store i64 %t345, ptr %l186
  br label %bb61
bb61:
  %t346 = load i64, ptr @G_2ecompiler_2feval_2evPair, !tbaa !24
  %t347 = load i64, ptr %l186, !tbaa !24
  %t349 = icmp eq i64 %t347, %t346
  store i1 %t349, ptr %l182, !tbaa !21
  br label %bb62
bb62:
  %t351 = load i1, ptr %l182, !tbaa !21
  br i1 %t351, label %bb63, label %bb64
bb63:
  store %olang.scope zeroinitializer, ptr %s9
  %t352 = load ptr, ptr %l0, !tbaa !29
  store ptr %t352, ptr %l189, !tbaa !29
  %t353 = getelementptr %"compiler/eval:Ptr", ptr %l20, i32 0, i32 0
  %t354 = load i64, ptr %t353, !tbaa !24
  store i64 %t354, ptr %l190, !tbaa !24
  %t355 = load i32, ptr %l26, !tbaa !23
  %t357 = sext i32 %t355 to i64
  %t358 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t359 = load ptr, ptr %t358, !tbaa !27
  %t360 = getelementptr i64, ptr %t359, i64 %t357
  %t361 = load i64, ptr %t360, !tbaa !34
  store i64 %t361, ptr %l192, !tbaa !24
  %t362 = load ptr, ptr %l0, !tbaa !29
  %t363 = load i32, ptr %l26, !tbaa !23
  %t365 = sext i32 %t363 to i64
  %t366 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t367 = load ptr, ptr %t366, !tbaa !27
  %t368 = getelementptr i32, ptr %t367, i64 %t365
  %t369 = load i32, ptr %t368, !tbaa !33
  %t372 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t362, i32 %t369)
  store i64 %t372, ptr %l196
  br label %bb65
bb64:
  br label %bb74
bb65:
  %t373 = load i64, ptr @G_2ecompiler_2feval_2evPair, !tbaa !24
  %t374 = load i64, ptr %l196, !tbaa !24
  %t376 = icmp eq i64 %t374, %t373
  br i1 %t376, label %bb66, label %bb67
bb66:
  store i64 8, ptr %l199, !tbaa !24
  br label %bb68
bb67:
  store i64 0, ptr %l199, !tbaa !24
  br label %bb68
bb68:
  %t378 = load i64, ptr %l192, !tbaa !24
  %t379 = load i64, ptr %l199, !tbaa !24
  %t380 = add i64 %t378, %t379
  %t381 = load i64, ptr %l190, !tbaa !24
  %t383 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s9, i64 %t381, i64 %t380)
  store %"compiler/eval:Ptr" %t383, ptr %l201
  br label %bb69
bb69:
  %t384 = load ptr, ptr %l189, !tbaa !29
  %t385 = load %"compiler/eval:Ptr", ptr %l201
  %t386 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtr(ptr %v0, ptr %t384, %"compiler/eval:Ptr" %t385)
  store %"compiler/eval:Ptr" %t386, ptr %l202
  br label %bb70
bb70:
  %t387 = load %"compiler/eval:Ptr", ptr %l202
  store %"compiler/eval:Ptr" %t387, ptr %l29
  %t388 = getelementptr %"compiler/eval:Ptr", ptr %l29, i32 0, i32 0
  %t389 = load i64, ptr %t388, !tbaa !24
  %t391 = icmp ne i64 %t389, 0
  br i1 %t391, label %bb71, label %bb72
bb71:
  %t393 = load ptr, ptr %l0, !tbaa !29
  %t395 = getelementptr %"compiler/eval:Machine", ptr %t393, i32 0, i32 49
  %t396 = load { i64, ptr }, ptr %t395, !tbaa !27
  store { i64, ptr } %t396, ptr %l206, !tbaa !27
  %t397 = getelementptr %"compiler/eval:Ptr", ptr %l29, i32 0, i32 0
  %t398 = load i64, ptr %t397, !tbaa !24
  %t399 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t402 = and i64 %t398, %t399
  %t404 = getelementptr { i64, ptr }, ptr %l206, i32 0, i32 1
  %t405 = load ptr, ptr %t404, !tbaa !27
  %t406 = getelementptr %"compiler/eval:alloc", ptr %t405, i64 %t402
  %t407 = getelementptr %"compiler/eval:alloc", ptr %t406, i32 0, i32 5
  %t408 = load i64, ptr %t407, !tbaa !24
  store i64 %t408, ptr %l28, !tbaa !24
  br label %bb73
bb72:
  br label %bb73
bb73:
  call void @__olang_scope_close(ptr %s9)
  br label %bb74
bb74:
  %t410 = load ptr, ptr %l0, !tbaa !29
  store ptr %t410, ptr %l211, !tbaa !29
  %t411 = getelementptr %"compiler/eval:Ptr", ptr %l20, i32 0, i32 0
  %t412 = load i64, ptr %t411, !tbaa !24
  %t413 = load i64, ptr %l18, !tbaa !24
  %t414 = load i32, ptr %l26, !tbaa !23
  %t416 = mul i32 8, %t414
  %t418 = sext i32 %t416 to i64
  %t421 = add i64 %t413, %t418
  %t424 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s8, i64 %t412, i64 %t421)
  store %"compiler/eval:Ptr" %t424, ptr %l218
  br label %bb75
bb75:
  %t425 = load i64, ptr %l28, !tbaa !24
  %t426 = load ptr, ptr %l211, !tbaa !29
  %t427 = load %"compiler/eval:Ptr", ptr %l218
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t426, %"compiler/eval:Ptr" %t427, i64 8, i64 %t425)
  br label %bb76
bb76:
  call void @__olang_scope_close(ptr %s8)
  br label %bb77
bb77:
  %t429 = load i32, ptr %l25, !tbaa !23
  %t431 = add i32 %t429, 1
  store i32 %t431, ptr %l25, !tbaa !23
  br label %bb51
bb78:
  %t433 = load ptr, ptr %l0, !tbaa !29
  %t434 = load %"compiler/eval:Ptr", ptr %l2
  %t435 = load %"compiler/eval:Ptr", ptr %l6
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t433, %"compiler/eval:Ptr" %t434, %"compiler/eval:Ptr" %t435)
  br label %bb79
bb79:
  %t439 = load ptr, ptr %l0, !tbaa !29
  store ptr %t439, ptr %l225, !tbaa !29
  %t440 = getelementptr %"compiler/eval:Ptr", ptr %l2, i32 0, i32 0
  %t441 = load i64, ptr %t440, !tbaa !24
  %t442 = getelementptr %"compiler/eval:Ptr", ptr %l2, i32 0, i32 1
  %t443 = load i64, ptr %t442, !tbaa !24
  %t445 = add i64 %t443, 8
  %t448 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s0, i64 %t441, i64 %t445)
  store %"compiler/eval:Ptr" %t448, ptr %l229
  br label %bb80
bb80:
  %t449 = load %"compiler/eval:Ptr", ptr %l20
  %t450 = load ptr, ptr %l225, !tbaa !29
  %t451 = load %"compiler/eval:Ptr", ptr %l229
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t450, %"compiler/eval:Ptr" %t451, %"compiler/eval:Ptr" %t449)
  br label %bb81
bb81:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2ecodePtr(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca %"compiler/eval:Ptr"
  %l6 = alloca i64
  %l10 = alloca i64
  %l16 = alloca %"compiler/eval:Ptr"
  %l18 = alloca { i64, ptr }
  %l30 = alloca i64
  %l31 = alloca %"compiler/eval:Ptr"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/eval:Ptr"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ecodeIndex(ptr %v0, ptr %t1, { i64, [2 x i64] } %a1)
  store i64 %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load i64, ptr %l6, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/eval:Machine", ptr %t7, i32 0, i32 33
  %t10 = load i64, ptr %l2, !tbaa !24
  %t13 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t9, i64 %t10)
  store i64 %t13, ptr %l10
  br label %bb2
bb2:
  %t14 = load i64, ptr %l10, !tbaa !24
  %t15 = icmp eq i64 %t14, 0
  br i1 %t15, label %bb3, label %bb4
bb3:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load i64, ptr @G_2ecompiler_2feval_2eaCode, !tbaa !24
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/eval:Machine", ptr %t19, i32 0, i32 70
  %t22 = load i64, ptr %t21, !tbaa !24
  %t26 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocate(ptr %v0, ptr %t17, i64 0, i64 %t18, i64 %t22)
  store %"compiler/eval:Ptr" %t26, ptr %l16
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t27 = load %"compiler/eval:Ptr", ptr %l16
  store %"compiler/eval:Ptr" %t27, ptr %l3
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/eval:Machine", ptr %t28, i32 0, i32 49
  %t31 = load { i64, ptr }, ptr %t30, !tbaa !27
  store { i64, ptr } %t31, ptr %l18, !tbaa !27
  %t32 = getelementptr %"compiler/eval:Ptr", ptr %l3, i32 0, i32 0
  %t33 = load i64, ptr %t32, !tbaa !24
  %t34 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t37 = and i64 %t33, %t34
  %t38 = load i64, ptr %l2, !tbaa !24
  %t41 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !27
  %t43 = getelementptr %"compiler/eval:alloc", ptr %t42, i64 %t37
  %t44 = getelementptr %"compiler/eval:alloc", ptr %t43, i32 0, i32 14
  store i64 %t38, ptr %t44, !tbaa !24
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/eval:Machine", ptr %t45, i32 0, i32 33
  %t48 = load i64, ptr %l2, !tbaa !24
  %t49 = getelementptr %"compiler/eval:Ptr", ptr %l3, i32 0, i32 0
  %t50 = load i64, ptr %t49, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t47, i64 %t48, i64 %t50)
  br label %bb6
bb6:
  br label %bb7
bb7:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/eval:Machine", ptr %t54, i32 0, i32 33
  %t57 = load i64, ptr %l2, !tbaa !24
  %t60 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t56, i64 %t57)
  store i64 %t60, ptr %l30
  br label %bb8
bb8:
  %t61 = load i64, ptr %l30, !tbaa !24
  %t62 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s0, i64 %t61, i64 0)
  store %"compiler/eval:Ptr" %t62, ptr %l31
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s0)
  %t63 = load %"compiler/eval:Ptr", ptr %l31
  store %"compiler/eval:Ptr" %t63, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/eval:Ptr", ptr %rv
  ret %"compiler/eval:Ptr" %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2edeliver(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, [4 x i64] }
  %l3 = alloca %"compiler/eval:frame"
  %l4 = alloca i32
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca %"compiler/mir:Call"
  %l8 = alloca { %"compiler/eval:Ptr", i32 }
  %l12 = alloca %"compiler/eval:Ptr"
  %l15 = alloca %"compiler/eval:global"
  %l17 = alloca { i64, ptr }
  %l19 = alloca %"compiler/eval:frame"
  %l25 = alloca i32
  %l34 = alloca ptr
  %l38 = alloca %"compiler/mir:Call"
  %l43 = alloca { %"compiler/eval:Ptr", i32 }
  %l56 = alloca i64
  %l62 = alloca %"compiler/eval:Ptr"
  %l80 = alloca %"compiler/eval:global"
  %l81 = alloca ptr
  %l82 = alloca i64
  %l84 = alloca %"compiler/eval:Ptr"
  %s5 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, [4 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 58
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l17, !tbaa !27
  %t5 = load i64, ptr %l1, !tbaa !24
  %t7 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !27
  %t9 = getelementptr %"compiler/eval:frame", ptr %t8, i64 %t5
  call void @llvm.memmove.p0.p0.i64(ptr %l19, ptr %t9, i64 136, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l3, ptr %l19, i64 136, i1 false)
  %t10 = load { i64, [4 x i64] }, ptr %l2
  %t12 = extractvalue { i64, [4 x i64] } %t10, 0
  %t13 = icmp eq i64 %t12, 0
  br i1 %t13, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load i64, ptr %l1, !tbaa !24
  %t17 = load { i64, [4 x i64] }, ptr %l2
  %t21 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t15, i64 %t16, { i64, [4 x i64] } %t17)
  store i32 %t21, ptr %l25
  br label %bb4
bb4:
  %t22 = load i32, ptr %l25, !tbaa !23
  store i32 %t22, ptr %l4, !tbaa !23
  %t23 = getelementptr %"compiler/eval:frame", ptr %l3, i32 0, i32 7
  %t24 = load i64, ptr %t23, !tbaa !24
  store i64 %t24, ptr %l5, !tbaa !24
  %t26 = load i64, ptr %l5, !tbaa !24
  %t27 = load i64, ptr @G_2ecompiler_2feval_2erCall, !tbaa !24
  %t30 = icmp eq i64 %t26, %t27
  br i1 %t30, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb15
bb7:
  %t32 = load i64, ptr %l1, !tbaa !24
  %t34 = sub i64 %t32, 1
  store i64 %t34, ptr %l6, !tbaa !24
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load i64, ptr %l6, !tbaa !24
  %t40 = call ptr @compiler_2feval_2ecompiler_2feval_3aMachine_2efnOfFrame(ptr %v0, ptr %v0, ptr %t36, i64 %t37)
  store ptr %t40, ptr %l34
  br label %bb8
bb8:
  %t41 = load ptr, ptr %l34, !tbaa !29
  %t43 = getelementptr %"compiler/mir:Fn", ptr %t41, i32 0, i32 14
  %t44 = getelementptr %"compiler/eval:frame", ptr %l3, i32 0, i32 8
  %t45 = load i64, ptr %t44, !tbaa !24
  %t48 = call %"compiler/mir:Call" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eAt_3ccompiler_2fmir_3aCall_3e(ptr %v0, ptr %t43, i64 %t45)
  store %"compiler/mir:Call" %t48, ptr %l38
  br label %bb9
bb9:
  %t49 = load %"compiler/mir:Call", ptr %l38
  store %"compiler/mir:Call" %t49, ptr %l7
  %t50 = getelementptr %"compiler/mir:Call", ptr %l7, i32 0, i32 4
  %t51 = load i1, ptr %t50, !tbaa !21
  br i1 %t51, label %bb10, label %bb11
bb10:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load i64, ptr %l6, !tbaa !24
  %t55 = getelementptr %"compiler/mir:Call", ptr %l7, i32 0, i32 3
  %t56 = load %"compiler/mir:Lvalue", ptr %t55
  %t60 = call { %"compiler/eval:Ptr", i32 } @compiler_2feval_2ecompiler_2feval_3aMachine_2eplace(ptr %v0, ptr %t53, i64 %t54, %"compiler/mir:Lvalue" %t56)
  store { %"compiler/eval:Ptr", i32 } %t60, ptr %l43
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t61 = load { %"compiler/eval:Ptr", i32 }, ptr %l43
  store { %"compiler/eval:Ptr", i32 } %t61, ptr %l8
  %t62 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l8, i32 0, i32 0
  %t63 = load %"compiler/eval:Ptr", ptr %t62
  %t65 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l8, i32 0, i32 1
  %t66 = load i32, ptr %t65, !tbaa !23
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load i64, ptr %l1, !tbaa !24
  %t72 = load { i64, [4 x i64] }, ptr %l2
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eput(ptr %v0, ptr %t68, i64 %t69, %"compiler/eval:Ptr" %t63, i32 %t66, { i64, [4 x i64] } %t72)
  br label %bb13
bb13:
  br label %bb14
bb14:
  br label %bb41
bb15:
  %t78 = load i64, ptr %l5, !tbaa !24
  %t79 = load i64, ptr @G_2ecompiler_2feval_2erRequest, !tbaa !24
  %t82 = icmp eq i64 %t78, %t79
  br i1 %t82, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb22
bb18:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t85 = load i32, ptr %l4, !tbaa !23
  %t88 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t84, i32 %t85)
  store i64 %t88, ptr %l56
  br label %bb19
bb19:
  %t89 = load i64, ptr %l56, !tbaa !24
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = load i64, ptr @G_2ecompiler_2feval_2eaValue, !tbaa !24
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/eval:Machine", ptr %t93, i32 0, i32 70
  %t96 = load i64, ptr %t95, !tbaa !24
  %t101 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocate(ptr %v0, ptr %t90, i64 %t89, i64 %t92, i64 %t96)
  store %"compiler/eval:Ptr" %t101, ptr %l62
  br label %bb20
bb20:
  %t102 = load %"compiler/eval:Ptr", ptr %l62
  store %"compiler/eval:Ptr" %t102, ptr %l12
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t104 = load i64, ptr %l1, !tbaa !24
  %t105 = load %"compiler/eval:Ptr", ptr %l12
  %t106 = load i32, ptr %l4, !tbaa !23
  %t107 = load { i64, [4 x i64] }, ptr %l2
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eput(ptr %v0, ptr %t103, i64 %t104, %"compiler/eval:Ptr" %t105, i32 %t106, { i64, [4 x i64] } %t107)
  br label %bb21
bb21:
  %t113 = load %"compiler/eval:Ptr", ptr %l12
  %t115 = load i32, ptr %l4, !tbaa !23
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr %"compiler/eval:Machine", ptr %t117, i32 0, i32 18
  store %"compiler/eval:Ptr" %t113, ptr %t121
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t126 = getelementptr %"compiler/eval:Machine", ptr %t122, i32 0, i32 19
  store i32 %t115, ptr %t126, !tbaa !23
  br label %bb41
bb22:
  %t127 = load i64, ptr %l5, !tbaa !24
  %t128 = load i64, ptr @G_2ecompiler_2feval_2erGlobal, !tbaa !24
  %t131 = icmp eq i64 %t127, %t128
  br i1 %t131, label %bb23, label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb29
bb25:
  store %olang.scope zeroinitializer, ptr %s5
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t135 = getelementptr %"compiler/eval:Machine", ptr %t133, i32 0, i32 42
  %t136 = getelementptr %"compiler/eval:frame", ptr %l3, i32 0, i32 8
  %t137 = load i64, ptr %t136, !tbaa !24
  %t140 = call %"compiler/eval:global" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eAt_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %t135, i64 %t137)
  store %"compiler/eval:global" %t140, ptr %l80
  br label %bb26
bb26:
  %t141 = load %"compiler/eval:global", ptr %l80
  store %"compiler/eval:global" %t141, ptr %l15
  %t142 = load ptr, ptr %l0, !tbaa !29
  store ptr %t142, ptr %l81, !tbaa !29
  %t143 = load i64, ptr %l1, !tbaa !24
  store i64 %t143, ptr %l82, !tbaa !24
  %t144 = getelementptr %"compiler/eval:global", ptr %l15, i32 0, i32 3
  %t145 = load i64, ptr %t144, !tbaa !24
  %t147 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s5, i64 %t145, i64 0)
  store %"compiler/eval:Ptr" %t147, ptr %l84
  br label %bb27
bb27:
  %t148 = getelementptr %"compiler/eval:global", ptr %l15, i32 0, i32 0
  %t149 = load i64, ptr %t148, !tbaa !24
  %t151 = trunc i64 %t149 to i32
  %t153 = load { i64, [4 x i64] }, ptr %l2
  %t154 = load ptr, ptr %l81, !tbaa !29
  %t155 = load i64, ptr %l82, !tbaa !24
  %t156 = load %"compiler/eval:Ptr", ptr %l84
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eput(ptr %v0, ptr %t154, i64 %t155, %"compiler/eval:Ptr" %t156, i32 %t151, { i64, [4 x i64] } %t153)
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s5)
  br label %bb41
bb29:
  %t159 = load i64, ptr %l5, !tbaa !24
  %t160 = load i64, ptr @G_2ecompiler_2feval_2erTask, !tbaa !24
  %t163 = icmp eq i64 %t159, %t160
  br i1 %t163, label %bb30, label %bb31
bb30:
  br label %bb34
bb31:
  %t165 = load i64, ptr %l5, !tbaa !24
  %t166 = load i64, ptr @G_2ecompiler_2feval_2erClause, !tbaa !24
  %t169 = icmp eq i64 %t165, %t166
  br i1 %t169, label %bb32, label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb36
bb34:
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t172 = load i64, ptr %l1, !tbaa !24
  %t173 = getelementptr %"compiler/eval:frame", ptr %l3, i32 0, i32 8
  %t174 = load i64, ptr %t173, !tbaa !24
  %t175 = load { i64, [4 x i64] }, ptr %l2
  %t176 = load i32, ptr %l4, !tbaa !23
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2etoTargets(ptr %v0, ptr %t171, i64 %t172, i64 %t174, { i64, [4 x i64] } %t175, i32 %t176)
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
  call void @__olang_check_failed(ptr @olang_loc_17d12c125f58d820_35ade4b878109a14)
  unreachable
bb41:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2efailedHere(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca { i64, [8 x i64] }
  %l4 = alloca %"compiler/source:Span"
  %l9 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l20 = alloca i32
  %l31 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 26
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l9, !tbaa !27
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/eval:Machine", ptr %t5, i32 0, i32 58
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  store { i64, ptr } %t8, ptr %l11, !tbaa !27
  %t9 = load i64, ptr %l1, !tbaa !24
  %t11 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !27
  %t13 = getelementptr %"compiler/eval:frame", ptr %t12, i64 %t9
  %t14 = getelementptr %"compiler/eval:frame", ptr %t13, i32 0, i32 0
  %t15 = load i64, ptr %t14, !tbaa !24
  %t17 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !27
  %t19 = getelementptr %"compiler/eval:cfn", ptr %t18, i64 %t15
  %t20 = getelementptr %"compiler/eval:cfn", ptr %t19, i32 0, i32 9
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !27
  store { i64, ptr } %t21, ptr %l14, !tbaa !27
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/eval:Machine", ptr %t22, i32 0, i32 58
  %t25 = load { i64, ptr }, ptr %t24, !tbaa !27
  store { i64, ptr } %t25, ptr %l16, !tbaa !27
  %t26 = load i64, ptr %l1, !tbaa !24
  %t28 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !27
  %t30 = getelementptr %"compiler/eval:frame", ptr %t29, i64 %t26
  %t31 = getelementptr %"compiler/eval:frame", ptr %t30, i32 0, i32 1
  %t32 = load i64, ptr %t31, !tbaa !24
  %t34 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !27
  %t36 = getelementptr { i64, [8 x i64] }, ptr %t35, i64 %t32
  %t37 = load { i64, [8 x i64] }, ptr %t36
  store { i64, [8 x i64] } %t37, ptr %l3
  %t39 = load { i64, [8 x i64] }, ptr %l3
  %t41 = extractvalue { i64, [8 x i64] } %t39, 0
  %t42 = icmp eq i64 %t41, 4
  br i1 %t42, label %bb1, label %bb2
bb1:
  %t44 = getelementptr { i64, [8 x i64] }, ptr %l3, i32 0, i32 1
  %t45 = getelementptr { %"compiler/source:Span", i32 }, ptr %t44, i32 0, i32 0
  %t46 = load %"compiler/source:Span", ptr %t45
  store %"compiler/source:Span" %t46, ptr %l4
  br label %bb5
bb2:
  %t48 = load { i64, [8 x i64] }, ptr %l3
  %t50 = extractvalue { i64, [8 x i64] } %t48, 0
  %t51 = icmp eq i64 %t50, 8
  br i1 %t51, label %bb3, label %bb4
bb3:
  %t53 = getelementptr { i64, [8 x i64] }, ptr %l3, i32 0, i32 1
  %t54 = getelementptr { %"compiler/source:Span", i32, i32, i32, i32 }, ptr %t53, i32 0, i32 0
  %t55 = load %"compiler/source:Span", ptr %t54
  store %"compiler/source:Span" %t55, ptr %l4
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t57 = getelementptr %"compiler/source:Span", ptr %l4, i32 0, i32 0
  %t58 = load i32, ptr %t57, !tbaa !23
  store i32 %t58, ptr %l20, !tbaa !23
  br label %bb11
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i32 -1, ptr %l20, !tbaa !23
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_ae4c96370005e5a0_f3d2360ec3e473b4)
  unreachable
bb11:
  %t60 = load i32, ptr %l20, !tbaa !23
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/eval:Machine", ptr %t65, i32 0, i32 58
  %t68 = load { i64, ptr }, ptr %t67, !tbaa !27
  store { i64, ptr } %t68, ptr %l31, !tbaa !27
  %t69 = load i64, ptr %l1, !tbaa !24
  %t73 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !27
  %t75 = getelementptr %"compiler/eval:frame", ptr %t74, i64 %t69
  %t76 = getelementptr %"compiler/eval:frame", ptr %t75, i32 0, i32 16
  store i64 %a2, ptr %t76, !tbaa !24
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/eval:Machine", ptr %t77, i32 0, i32 58
  %t80 = load { i64, ptr }, ptr %t79, !tbaa !27
  store { i64, ptr } %t80, ptr %l35, !tbaa !27
  %t81 = load i64, ptr %l1, !tbaa !24
  %t85 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !27
  %t87 = getelementptr %"compiler/eval:frame", ptr %t86, i64 %t81
  %t88 = getelementptr %"compiler/eval:frame", ptr %t87, i32 0, i32 17
  store i32 %t60, ptr %t88, !tbaa !23
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2effiKind(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i32
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/eval:Machine", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t8 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t4, i32 %a1)
  store i32 %t8, ptr %l6
  br label %bb1
bb1:
  %t9 = load i32, ptr %l6, !tbaa !23
  store i32 %t9, ptr %l2, !tbaa !23
  %t10 = load i32, ptr %l2, !tbaa !23
  %t12 = icmp eq i32 %t10, 3
  br i1 %t12, label %bb2, label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb5
bb4:
  store i32 0, ptr %l7
  br label %bb54
bb5:
  %t15 = load i32, ptr %l2, !tbaa !23
  %t17 = icmp eq i32 %t15, 4
  br i1 %t17, label %bb6, label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb9
bb8:
  store i32 1, ptr %l7
  br label %bb54
bb9:
  %t20 = load i32, ptr %l2, !tbaa !23
  %t22 = icmp eq i32 %t20, 5
  br i1 %t22, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  store i32 2, ptr %l7
  br label %bb54
bb13:
  %t25 = load i32, ptr %l2, !tbaa !23
  %t27 = icmp eq i32 %t25, 7
  br i1 %t27, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  store i32 4, ptr %l7
  br label %bb54
bb17:
  %t30 = load i32, ptr %l2, !tbaa !23
  %t32 = icmp eq i32 %t30, 8
  br i1 %t32, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb21
bb20:
  store i32 5, ptr %l7
  br label %bb54
bb21:
  %t35 = load i32, ptr %l2, !tbaa !23
  %t37 = icmp eq i32 %t35, 9
  br i1 %t37, label %bb22, label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb25
bb24:
  store i32 6, ptr %l7
  br label %bb54
bb25:
  %t40 = load i32, ptr %l2, !tbaa !23
  %t42 = icmp eq i32 %t40, 10
  br i1 %t42, label %bb26, label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb29
bb28:
  store i32 7, ptr %l7
  br label %bb54
bb29:
  %t45 = load i32, ptr %l2, !tbaa !23
  %t47 = icmp eq i32 %t45, 11
  br i1 %t47, label %bb30, label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb33
bb32:
  store i32 8, ptr %l7
  br label %bb54
bb33:
  %t50 = load i32, ptr %l2, !tbaa !23
  %t52 = icmp eq i32 %t50, 12
  br i1 %t52, label %bb34, label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb37
bb36:
  store i32 9, ptr %l7
  br label %bb54
bb37:
  %t55 = load i32, ptr %l2, !tbaa !23
  %t57 = icmp eq i32 %t55, 13
  br i1 %t57, label %bb38, label %bb39
bb38:
  br label %bb40
bb39:
  br label %bb41
bb40:
  store i32 10, ptr %l7
  br label %bb54
bb41:
  %t60 = load i32, ptr %l2, !tbaa !23
  %t62 = icmp eq i32 %t60, 14
  br i1 %t62, label %bb42, label %bb43
bb42:
  br label %bb44
bb43:
  br label %bb45
bb44:
  store i32 11, ptr %l7
  br label %bb54
bb45:
  %t65 = load i32, ptr %l2, !tbaa !23
  %t66 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t69 = icmp eq i32 %t65, %t66
  br i1 %t69, label %bb46, label %bb47
bb46:
  br label %bb48
bb47:
  br label %bb49
bb48:
  store i32 4, ptr %l7
  br label %bb54
bb49:
  br i1 true, label %bb50, label %bb51
bb50:
  br label %bb52
bb51:
  br label %bb53
bb52:
  store i32 3, ptr %l7
  br label %bb54
bb53:
  call void @__olang_check_failed(ptr @olang_loc_b477747d616f01f0_6d4a3c12dca1cf4c)
  unreachable
bb54:
  %t73 = load i32, ptr %l7, !range !{i32 0, i32 12}
  store i32 %t73, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eflat(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca { %"compiler/eval:Ptr", i32 }
  %l9 = alloca %"compiler/eval:Ptr"
  %l10 = alloca i64
  %l11 = alloca { %"compiler/eval:Ptr", i32 }
  %l12 = alloca %"compiler/eval:Ptr"
  %l13 = alloca i32
  %l14 = alloca i32
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l19 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l32 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
  %l44 = alloca ptr
  %l47 = alloca { i64, ptr }
  %l53 = alloca %"compiler/eval:Ptr"
  %l54 = alloca { i64, ptr }
  %l59 = alloca i32
  %l64 = alloca i64
  %l65 = alloca { %"compiler/eval:Ptr", i32 }
  %l69 = alloca ptr
  %l70 = alloca %"compiler/eval:Ptr"
  %l71 = alloca i64
  %l77 = alloca i64
  %l81 = alloca i1
  %l90 = alloca i64
  %l94 = alloca ptr
  %l97 = alloca { i64, ptr }
  %l103 = alloca %"compiler/eval:Ptr"
  %l104 = alloca { i64, ptr }
  %l109 = alloca i32
  %l114 = alloca i64
  %l115 = alloca { %"compiler/eval:Ptr", i32 }
  %l122 = alloca i64
  %l124 = alloca { i64, ptr }
  %l126 = alloca { i64, ptr }
  %l129 = alloca { i64, ptr }
  %l140 = alloca i64
  %l144 = alloca ptr
  %l145 = alloca i32
  %l146 = alloca i64
  %l147 = alloca i32
  %l150 = alloca i64
  %l151 = alloca i64
  %l157 = alloca i64
  %l160 = alloca { i64, ptr }
  %l165 = alloca i64
  %l169 = alloca i64
  %l170 = alloca ptr
  %l171 = alloca i32
  %l172 = alloca i64
  %l173 = alloca i64
  %l174 = alloca i32
  %l175 = alloca { i64, ptr }
  %l180 = alloca i32
  %l183 = alloca i64
  %l184 = alloca i64
  %l189 = alloca { i64, ptr }
  %l194 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
  store i64 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 26
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l19, !tbaa !27
  %t5 = load i64, ptr %l2, !tbaa !24
  %t7 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !27
  %t9 = getelementptr %"compiler/eval:cfn", ptr %t8, i64 %t5
  %t10 = getelementptr %"compiler/eval:cfn", ptr %t9, i32 0, i32 13
  %t11 = load { i64, ptr }, ptr %t10, !tbaa !27
  store { i64, ptr } %t11, ptr %l5, !tbaa !27
  %t13 = load i64, ptr %l3, !tbaa !24
  %t14 = load i64, ptr @G_2ecompiler_2feval_2efastStride, !tbaa !24
  %t17 = mul i64 %t13, %t14
  store i64 %t17, ptr %l6, !tbaa !24
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/eval:Machine", ptr %t20, i32 0, i32 26
  %t23 = load { i64, ptr }, ptr %t22, !tbaa !27
  store { i64, ptr } %t23, ptr %l27, !tbaa !27
  %t24 = load i64, ptr %l2, !tbaa !24
  %t26 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = getelementptr %"compiler/eval:cfn", ptr %t27, i64 %t24
  %t29 = getelementptr %"compiler/eval:cfn", ptr %t28, i32 0, i32 0
  %t30 = load i64, ptr %t29, !tbaa !24
  %t33 = getelementptr %"compiler/eval:Machine", ptr %t19, i32 0, i32 77
  store i64 %t30, ptr %t33, !tbaa !24
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/eval:Machine", ptr %t35, i32 0, i32 26
  %t38 = load { i64, ptr }, ptr %t37, !tbaa !27
  store { i64, ptr } %t38, ptr %l32, !tbaa !27
  %t39 = load i64, ptr %l2, !tbaa !24
  %t41 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !27
  %t43 = getelementptr %"compiler/eval:cfn", ptr %t42, i64 %t39
  %t44 = getelementptr %"compiler/eval:cfn", ptr %t43, i32 0, i32 18
  %t45 = load { i64, ptr }, ptr %t44, !tbaa !27
  store { i64, ptr } %t45, ptr %l34, !tbaa !27
  %t46 = load i64, ptr %l3, !tbaa !24
  %t48 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !27
  %t50 = getelementptr %"compiler/source:Span", ptr %t49, i64 %t46
  %t51 = load %"compiler/source:Span", ptr %t50
  %t54 = getelementptr %"compiler/eval:Machine", ptr %t34, i32 0, i32 78
  store %"compiler/source:Span" %t51, ptr %t54
  %t55 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t55, ptr %l37, !tbaa !27
  %t56 = load i64, ptr %l6, !tbaa !24
  %t58 = add i64 %t56, 2
  %t60 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !27
  %t62 = getelementptr i64, ptr %t61, i64 %t58
  %t63 = load i64, ptr %t62, !tbaa !34
  store i64 %t63, ptr %l7, !tbaa !24
  %t65 = load i64, ptr %l4, !tbaa !24
  %t66 = load i64, ptr @G_2ecompiler_2feval_2efStore, !tbaa !24
  %t69 = icmp eq i64 %t65, %t66
  br i1 %t69, label %bb1, label %bb2
bb1:
  %t71 = load ptr, ptr %l0, !tbaa !29
  store ptr %t71, ptr %l44, !tbaa !29
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t73 = load i64, ptr %l1, !tbaa !24
  %t74 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t74, ptr %l47, !tbaa !27
  %t75 = load i64, ptr %l6, !tbaa !24
  %t77 = add i64 %t75, 1
  %t79 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !27
  %t81 = getelementptr i64, ptr %t80, i64 %t77
  %t82 = load i64, ptr %t81, !tbaa !34
  %t84 = trunc i64 %t82 to i32
  %t89 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2elocalPtr(ptr %v0, ptr %t72, i64 %t73, i32 %t84)
  store %"compiler/eval:Ptr" %t89, ptr %l53
  br label %bb3
bb2:
  br label %bb11
bb3:
  %t90 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t90, ptr %l54, !tbaa !27
  %t91 = load i64, ptr %l6, !tbaa !24
  %t93 = add i64 %t91, 7
  %t95 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !27
  %t97 = getelementptr i64, ptr %t96, i64 %t93
  %t98 = load i64, ptr %t97, !tbaa !34
  %t100 = trunc i64 %t98 to i32
  store i32 %t100, ptr %l59, !tbaa !23
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t103 = load i64, ptr %l1, !tbaa !24
  %t104 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t105 = load i64, ptr %l6, !tbaa !24
  %t110 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eflatIndex(ptr %v0, ptr %v0, ptr %t102, i64 %t103, { i64, ptr } %t104, i64 %t105)
  store i64 %t110, ptr %l64
  br label %bb4
bb4:
  %t111 = load ptr, ptr %l44, !tbaa !29
  %t112 = load %"compiler/eval:Ptr", ptr %l53
  %t113 = load i32, ptr %l59, !tbaa !23
  %t114 = load i64, ptr %l64, !tbaa !24
  %t115 = call { %"compiler/eval:Ptr", i32 } @compiler_2feval_2ecompiler_2feval_3aMachine_2eelement(ptr %v0, ptr %t111, %"compiler/eval:Ptr" %t112, i32 %t113, i64 %t114)
  store { %"compiler/eval:Ptr", i32 } %t115, ptr %l65
  br label %bb5
bb5:
  %t116 = load { %"compiler/eval:Ptr", i32 }, ptr %l65
  store { %"compiler/eval:Ptr", i32 } %t116, ptr %l8
  %t117 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l8, i32 0, i32 0
  %t118 = load %"compiler/eval:Ptr", ptr %t117
  store %"compiler/eval:Ptr" %t118, ptr %l9
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = getelementptr %"compiler/eval:Machine", ptr %t120, i32 0, i32 22
  %t123 = load i1, ptr %t122, !tbaa !21
  br i1 %t123, label %bb6, label %bb7
bb6:
  br label %ret
bb7:
  br label %bb8
bb8:
  %t125 = load ptr, ptr %l0, !tbaa !29
  store ptr %t125, ptr %l69, !tbaa !29
  %t126 = load %"compiler/eval:Ptr", ptr %l9
  store %"compiler/eval:Ptr" %t126, ptr %l70
  %t127 = load i64, ptr %l7, !tbaa !24
  store i64 %t127, ptr %l71, !tbaa !24
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t129 = load i64, ptr %l1, !tbaa !24
  %t130 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t131 = load i64, ptr %l6, !tbaa !24
  %t133 = add i64 %t131, 3
  %t138 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eflatValue(ptr %v0, ptr %v0, ptr %t128, i64 %t129, { i64, ptr } %t130, i64 %t133)
  store i64 %t138, ptr %l77
  br label %bb9
bb9:
  %t139 = load ptr, ptr %l69, !tbaa !29
  %t140 = load %"compiler/eval:Ptr", ptr %l70
  %t141 = load i64, ptr %l71, !tbaa !24
  %t142 = load i64, ptr %l77, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t139, %"compiler/eval:Ptr" %t140, i64 %t141, i64 %t142)
  br label %bb10
bb10:
  br label %ret
bb11:
  store i64 0, ptr %l10, !tbaa !24
  %t143 = load i64, ptr %l4, !tbaa !24
  %t144 = load i64, ptr @G_2ecompiler_2feval_2efCopy, !tbaa !24
  %t147 = icmp eq i64 %t143, %t144
  br i1 %t147, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l81, !tbaa !21
  br label %bb14
bb13:
  %t149 = load i64, ptr %l4, !tbaa !24
  %t150 = load i64, ptr @G_2ecompiler_2feval_2efConst, !tbaa !24
  %t153 = icmp eq i64 %t149, %t150
  store i1 %t153, ptr %l81, !tbaa !21
  br label %bb14
bb14:
  %t155 = load i1, ptr %l81, !tbaa !21
  br i1 %t155, label %bb15, label %bb16
bb15:
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t157 = load i64, ptr %l1, !tbaa !24
  %t158 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t159 = load i64, ptr %l6, !tbaa !24
  %t161 = add i64 %t159, 3
  %t166 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eflatValue(ptr %v0, ptr %v0, ptr %t156, i64 %t157, { i64, ptr } %t158, i64 %t161)
  store i64 %t166, ptr %l90
  br label %bb17
bb16:
  %t167 = load i64, ptr %l4, !tbaa !24
  %t168 = load i64, ptr @G_2ecompiler_2feval_2efLoad, !tbaa !24
  %t171 = icmp eq i64 %t167, %t168
  br i1 %t171, label %bb18, label %bb19
bb17:
  %t173 = load i64, ptr %l90, !tbaa !24
  store i64 %t173, ptr %l10, !tbaa !24
  br label %bb44
bb18:
  %t174 = load ptr, ptr %l0, !tbaa !29
  store ptr %t174, ptr %l94, !tbaa !29
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t176 = load i64, ptr %l1, !tbaa !24
  %t177 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t177, ptr %l97, !tbaa !27
  %t178 = load i64, ptr %l6, !tbaa !24
  %t180 = add i64 %t178, 3
  %t182 = getelementptr { i64, ptr }, ptr %l97, i32 0, i32 1
  %t183 = load ptr, ptr %t182, !tbaa !27
  %t184 = getelementptr i64, ptr %t183, i64 %t180
  %t185 = load i64, ptr %t184, !tbaa !34
  %t187 = trunc i64 %t185 to i32
  %t192 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2elocalPtr(ptr %v0, ptr %t175, i64 %t176, i32 %t187)
  store %"compiler/eval:Ptr" %t192, ptr %l103
  br label %bb20
bb19:
  %t193 = load ptr, ptr %l0, !tbaa !29
  %t195 = getelementptr %"compiler/eval:Machine", ptr %t193, i32 0, i32 26
  %t196 = load { i64, ptr }, ptr %t195, !tbaa !27
  store { i64, ptr } %t196, ptr %l124, !tbaa !27
  %t197 = load i64, ptr %l2, !tbaa !24
  %t199 = getelementptr { i64, ptr }, ptr %l124, i32 0, i32 1
  %t200 = load ptr, ptr %t199, !tbaa !27
  %t201 = getelementptr %"compiler/eval:cfn", ptr %t200, i64 %t197
  %t202 = getelementptr %"compiler/eval:cfn", ptr %t201, i32 0, i32 14
  %t203 = load { i64, ptr }, ptr %t202, !tbaa !27
  store { i64, ptr } %t203, ptr %l126, !tbaa !27
  %t204 = load i64, ptr %l3, !tbaa !24
  %t206 = getelementptr { i64, ptr }, ptr %l126, i32 0, i32 1
  %t207 = load ptr, ptr %t206, !tbaa !27
  %t208 = getelementptr i32, ptr %t207, i64 %t204
  %t209 = load i32, ptr %t208, !range !{i32 0, i32 51}
  store i32 %t209, ptr %l13
  %t211 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t211, ptr %l129, !tbaa !27
  %t212 = load i64, ptr %l6, !tbaa !24
  %t214 = add i64 %t212, 7
  %t216 = getelementptr { i64, ptr }, ptr %l129, i32 0, i32 1
  %t217 = load ptr, ptr %t216, !tbaa !27
  %t218 = getelementptr i64, ptr %t217, i64 %t214
  %t219 = load i64, ptr %t218, !tbaa !34
  %t221 = trunc i64 %t219 to i32
  store i32 %t221, ptr %l14, !tbaa !23
  %t224 = load ptr, ptr %l0, !tbaa !29
  %t225 = load i64, ptr %l1, !tbaa !24
  %t226 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t227 = load i64, ptr %l6, !tbaa !24
  %t229 = add i64 %t227, 3
  %t234 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eflatValue(ptr %v0, ptr %v0, ptr %t224, i64 %t225, { i64, ptr } %t226, i64 %t229)
  store i64 %t234, ptr %l140
  br label %bb27
bb20:
  %t235 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t235, ptr %l104, !tbaa !27
  %t236 = load i64, ptr %l6, !tbaa !24
  %t238 = add i64 %t236, 7
  %t240 = getelementptr { i64, ptr }, ptr %l104, i32 0, i32 1
  %t241 = load ptr, ptr %t240, !tbaa !27
  %t242 = getelementptr i64, ptr %t241, i64 %t238
  %t243 = load i64, ptr %t242, !tbaa !34
  %t245 = trunc i64 %t243 to i32
  store i32 %t245, ptr %l109, !tbaa !23
  %t247 = load ptr, ptr %l0, !tbaa !29
  %t248 = load i64, ptr %l1, !tbaa !24
  %t249 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t250 = load i64, ptr %l6, !tbaa !24
  %t255 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eflatIndex(ptr %v0, ptr %v0, ptr %t247, i64 %t248, { i64, ptr } %t249, i64 %t250)
  store i64 %t255, ptr %l114
  br label %bb21
bb21:
  %t256 = load ptr, ptr %l94, !tbaa !29
  %t257 = load %"compiler/eval:Ptr", ptr %l103
  %t258 = load i32, ptr %l109, !tbaa !23
  %t259 = load i64, ptr %l114, !tbaa !24
  %t260 = call { %"compiler/eval:Ptr", i32 } @compiler_2feval_2ecompiler_2feval_3aMachine_2eelement(ptr %v0, ptr %t256, %"compiler/eval:Ptr" %t257, i32 %t258, i64 %t259)
  store { %"compiler/eval:Ptr", i32 } %t260, ptr %l115
  br label %bb22
bb22:
  %t261 = load { %"compiler/eval:Ptr", i32 }, ptr %l115
  store { %"compiler/eval:Ptr", i32 } %t261, ptr %l11
  %t262 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l11, i32 0, i32 0
  %t263 = load %"compiler/eval:Ptr", ptr %t262
  store %"compiler/eval:Ptr" %t263, ptr %l12
  %t265 = load ptr, ptr %l0, !tbaa !29
  %t267 = getelementptr %"compiler/eval:Machine", ptr %t265, i32 0, i32 22
  %t268 = load i1, ptr %t267, !tbaa !21
  br i1 %t268, label %bb23, label %bb24
bb23:
  br label %ret
bb24:
  br label %bb25
bb25:
  %t270 = load ptr, ptr %l0, !tbaa !29
  %t271 = load %"compiler/eval:Ptr", ptr %l12
  %t272 = load i64, ptr %l7, !tbaa !24
  %t276 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t270, %"compiler/eval:Ptr" %t271, i64 %t272)
  store i64 %t276, ptr %l122
  br label %bb26
bb26:
  %t277 = load i64, ptr %l122, !tbaa !24
  store i64 %t277, ptr %l10, !tbaa !24
  br label %bb43
bb27:
  %t278 = load i64, ptr %l140, !tbaa !24
  store i64 %t278, ptr %l15, !tbaa !24
  %t279 = load i64, ptr %l4, !tbaa !24
  %t280 = load i64, ptr @G_2ecompiler_2feval_2efUn, !tbaa !24
  %t283 = icmp eq i64 %t279, %t280
  br i1 %t283, label %bb28, label %bb29
bb28:
  %t285 = load ptr, ptr %l0, !tbaa !29
  store ptr %t285, ptr %l144, !tbaa !29
  %t286 = load i32, ptr %l13, !range !{i32 0, i32 51}
  store i32 %t286, ptr %l145
  %t287 = load i64, ptr %l15, !tbaa !24
  store i64 %t287, ptr %l146, !tbaa !24
  %t288 = load i32, ptr %l14, !tbaa !23
  store i32 %t288, ptr %l147, !tbaa !23
  %t289 = load ptr, ptr %l0, !tbaa !29
  %t290 = load i32, ptr %l14, !tbaa !23
  %t293 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t289, i32 %t290)
  store i64 %t293, ptr %l150
  br label %bb30
bb29:
  %t294 = load ptr, ptr %l0, !tbaa !29
  %t295 = load i64, ptr %l1, !tbaa !24
  %t296 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t297 = load i64, ptr %l6, !tbaa !24
  %t299 = add i64 %t297, 5
  %t304 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eflatValue(ptr %v0, ptr %v0, ptr %t294, i64 %t295, { i64, ptr } %t296, i64 %t299)
  store i64 %t304, ptr %l157
  br label %bb32
bb30:
  %t305 = load ptr, ptr %l144, !tbaa !29
  %t306 = load i32, ptr %l145, !range !{i32 0, i32 51}
  %t307 = load i64, ptr %l146, !tbaa !24
  %t308 = load i32, ptr %l147, !tbaa !23
  %t309 = load i64, ptr %l150, !tbaa !24
  %t310 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eunary(ptr %v0, ptr %t305, i32 %t306, i64 %t307, i32 %t308, i64 %t309)
  store i64 %t310, ptr %l151
  br label %bb31
bb31:
  %t311 = load i64, ptr %l151, !tbaa !24
  store i64 %t311, ptr %l10, !tbaa !24
  br label %bb42
bb32:
  %t312 = load i64, ptr %l157, !tbaa !24
  store i64 %t312, ptr %l16, !tbaa !24
  %t313 = load ptr, ptr %l0, !tbaa !29
  %t315 = getelementptr %"compiler/eval:Machine", ptr %t313, i32 0, i32 22
  %t316 = load i1, ptr %t315, !tbaa !21
  br i1 %t316, label %bb33, label %bb34
bb33:
  br label %ret
bb34:
  br label %bb35
bb35:
  %t318 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t318, ptr %l160, !tbaa !27
  %t319 = load i64, ptr %l6, !tbaa !24
  %t321 = add i64 %t319, 10
  %t323 = getelementptr { i64, ptr }, ptr %l160, i32 0, i32 1
  %t324 = load ptr, ptr %t323, !tbaa !27
  %t325 = getelementptr i64, ptr %t324, i64 %t321
  %t326 = load i64, ptr %t325, !tbaa !34
  %t328 = icmp eq i64 %t326, 1
  br i1 %t328, label %bb36, label %bb37
bb36:
  %t330 = load i32, ptr %l13, !range !{i32 0, i32 51}
  %t331 = load i64, ptr %l15, !tbaa !24
  %t332 = load i64, ptr %l16, !tbaa !24
  %t336 = call i64 @compiler_2feval_2ewordValue(i32 %t330, i64 %t331, i64 %t332)
  store i64 %t336, ptr %l169
  br label %bb38
bb37:
  %t337 = load ptr, ptr %l0, !tbaa !29
  store ptr %t337, ptr %l170, !tbaa !29
  %t338 = load i32, ptr %l13, !range !{i32 0, i32 51}
  store i32 %t338, ptr %l171
  %t339 = load i64, ptr %l15, !tbaa !24
  store i64 %t339, ptr %l172, !tbaa !24
  %t340 = load i64, ptr %l16, !tbaa !24
  store i64 %t340, ptr %l173, !tbaa !24
  %t341 = load i32, ptr %l14, !tbaa !23
  store i32 %t341, ptr %l174, !tbaa !23
  %t342 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t342, ptr %l175, !tbaa !27
  %t343 = load i64, ptr %l6, !tbaa !24
  %t345 = add i64 %t343, 8
  %t347 = getelementptr { i64, ptr }, ptr %l175, i32 0, i32 1
  %t348 = load ptr, ptr %t347, !tbaa !27
  %t349 = getelementptr i64, ptr %t348, i64 %t345
  %t350 = load i64, ptr %t349, !tbaa !34
  %t352 = trunc i64 %t350 to i32
  store i32 %t352, ptr %l180, !tbaa !23
  %t354 = load ptr, ptr %l0, !tbaa !29
  %t355 = load i32, ptr %l14, !tbaa !23
  %t358 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t354, i32 %t355)
  store i64 %t358, ptr %l183
  br label %bb39
bb38:
  %t359 = load i64, ptr %l169, !tbaa !24
  store i64 %t359, ptr %l165, !tbaa !24
  br label %bb41
bb39:
  %t360 = load ptr, ptr %l170, !tbaa !29
  %t361 = load i32, ptr %l171, !range !{i32 0, i32 51}
  %t362 = load i64, ptr %l172, !tbaa !24
  %t363 = load i64, ptr %l173, !tbaa !24
  %t364 = load i32, ptr %l174, !tbaa !23
  %t365 = load i32, ptr %l180, !tbaa !23
  %t366 = load i64, ptr %l183, !tbaa !24
  %t367 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enumOp(ptr %v0, ptr %t360, i32 %t361, i64 %t362, i64 %t363, i32 %t364, i32 %t365, i64 %t366)
  store i64 %t367, ptr %l184
  br label %bb40
bb40:
  %t368 = load i64, ptr %l184, !tbaa !24
  store i64 %t368, ptr %l165, !tbaa !24
  br label %bb41
bb41:
  %t369 = load i64, ptr %l165, !tbaa !24
  store i64 %t369, ptr %l10, !tbaa !24
  br label %bb42
bb42:
  br label %bb43
bb43:
  br label %bb44
bb44:
  %t370 = load ptr, ptr %l0, !tbaa !29
  %t372 = getelementptr %"compiler/eval:Machine", ptr %t370, i32 0, i32 22
  %t373 = load i1, ptr %t372, !tbaa !21
  br i1 %t373, label %bb45, label %bb46
bb45:
  br label %ret
bb46:
  br label %bb47
bb47:
  %t375 = load ptr, ptr %l0, !tbaa !29
  %t376 = load i64, ptr %l1, !tbaa !24
  %t377 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t377, ptr %l189, !tbaa !27
  %t378 = load i64, ptr %l6, !tbaa !24
  %t380 = add i64 %t378, 1
  %t382 = getelementptr { i64, ptr }, ptr %l189, i32 0, i32 1
  %t383 = load ptr, ptr %t382, !tbaa !27
  %t384 = getelementptr i64, ptr %t383, i64 %t380
  %t385 = load i64, ptr %t384, !tbaa !34
  %t386 = load i64, ptr %l7, !tbaa !24
  %t391 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2elocalAt(ptr %v0, ptr %t375, i64 %t376, i64 %t385, i64 %t386, i1 true)
  store i64 %t391, ptr %l194
  br label %bb48
bb48:
  %t392 = load i64, ptr %l194, !tbaa !24
  store i64 %t392, ptr %l17, !tbaa !24
  %t393 = load i64, ptr %l17, !tbaa !24
  %t395 = icmp slt i64 %t393, 0
  br i1 %t395, label %bb49, label %bb50
bb49:
  br label %ret
bb50:
  br label %bb51
bb51:
  %t397 = load ptr, ptr %l0, !tbaa !29
  %t398 = load i64, ptr %l17, !tbaa !24
  %t399 = load i64, ptr %l7, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eunmark(ptr %v0, ptr %t397, i64 %t398, i64 %t399)
  br label %bb52
bb52:
  %t403 = load ptr, ptr %l0, !tbaa !29
  %t404 = load i64, ptr %l17, !tbaa !24
  %t405 = load i64, ptr %l7, !tbaa !24
  %t406 = load i64, ptr %l10, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrRaw(ptr %v0, ptr %t403, i64 %t404, i64 %t405, i64 %t406)
  br label %bb53
bb53:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eflatIndex(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l15 = alloca { i64, ptr }
  %l21 = alloca %"compiler/eval:Ptr"
  %l24 = alloca i64
  %l25 = alloca i64
  %l27 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store { i64, ptr } %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t1, ptr %l5, !tbaa !27
  %t2 = load i64, ptr %l3, !tbaa !24
  %t4 = add i64 %t2, 8
  %t6 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !27
  %t8 = getelementptr i64, ptr %t7, i64 %t4
  %t9 = load i64, ptr %t8, !tbaa !34
  %t11 = trunc i64 %t9 to i32
  store i32 %t11, ptr %l4, !tbaa !23
  %t14 = load ptr, ptr %l0, !tbaa !29
  store ptr %t14, ptr %l11, !tbaa !29
  %t15 = load ptr, ptr %l0, !tbaa !29
  store ptr %t15, ptr %l12, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %l15, !tbaa !27
  %t19 = load i64, ptr %l3, !tbaa !24
  %t21 = add i64 %t19, 5
  %t23 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !27
  %t25 = getelementptr i64, ptr %t24, i64 %t21
  %t26 = load i64, ptr %t25, !tbaa !34
  %t28 = trunc i64 %t26 to i32
  %t33 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2elocalPtr(ptr %v0, ptr %t16, i64 %a1, i32 %t28)
  store %"compiler/eval:Ptr" %t33, ptr %l21
  br label %bb1
bb1:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load i32, ptr %l4, !tbaa !23
  %t38 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidth(ptr %v0, ptr %t34, i32 %t35)
  store i64 %t38, ptr %l24
  br label %bb2
bb2:
  %t39 = load ptr, ptr %l12, !tbaa !29
  %t40 = load %"compiler/eval:Ptr", ptr %l21
  %t41 = load i64, ptr %l24, !tbaa !24
  %t42 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t39, %"compiler/eval:Ptr" %t40, i64 %t41)
  store i64 %t42, ptr %l25
  br label %bb3
bb3:
  %t43 = load i32, ptr %l4, !tbaa !23
  %t44 = load ptr, ptr %l11, !tbaa !29
  %t45 = load i64, ptr %l25, !tbaa !24
  %t47 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintValue(ptr %v0, ptr %t44, i64 %t45, i32 %t43)
  store i64 %t47, ptr %l27
  br label %bb4
bb4:
  %t48 = load i64, ptr %l27, !tbaa !24
  store i64 %t48, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2efloatOp(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i64 %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca double
  %l7 = alloca double
  %l8 = alloca float
  %l9 = alloca float
  %l10 = alloca float
  %l14 = alloca i32
  %l23 = alloca i64
  %l56 = alloca i64
  %l60 = alloca double
  %l65 = alloca double
  %l67 = alloca float
  %l102 = alloca i64
  %l112 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
  store i32 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i32, ptr %l4, !tbaa !23
  %t8 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t4, i32 %t5)
  store i32 %t8, ptr %l14
  br label %bb1
bb1:
  %t9 = load i32, ptr %l14, !tbaa !23
  store i32 %t9, ptr %l5, !tbaa !23
  %t10 = load i32, ptr %l5, !tbaa !23
  %t12 = icmp eq i32 %t10, 14
  br i1 %t12, label %bb2, label %bb3
bb2:
  %t14 = load i64, ptr %l2, !tbaa !24
  %t17 = bitcast i64 %t14 to double
  store double %t17, ptr %l6, !tbaa !26
  %t19 = load i64, ptr %l3, !tbaa !24
  %t22 = bitcast i64 %t19 to double
  store double %t22, ptr %l7, !tbaa !26
  %t24 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t26 = trunc i64 3 to i32
  %t27 = icmp eq i32 %t24, %t26
  br i1 %t27, label %bb4, label %bb5
bb3:
  br label %bb26
bb4:
  br label %bb6
bb5:
  br label %bb7
bb6:
  %t29 = load double, ptr %l6, !tbaa !26
  %t30 = load double, ptr %l7, !tbaa !26
  %t33 = fadd double %t29, %t30
  %t35 = bitcast double %t33 to i64
  store i64 %t35, ptr %l23, !tbaa !24
  br label %bb25
bb7:
  %t38 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t40 = trunc i64 4 to i32
  %t41 = icmp eq i32 %t38, %t40
  br i1 %t41, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  %t43 = load double, ptr %l6, !tbaa !26
  %t44 = load double, ptr %l7, !tbaa !26
  %t47 = fsub double %t43, %t44
  %t49 = bitcast double %t47 to i64
  store i64 %t49, ptr %l23, !tbaa !24
  br label %bb25
bb11:
  %t52 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t54 = trunc i64 5 to i32
  %t55 = icmp eq i32 %t52, %t54
  br i1 %t55, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb15
bb14:
  %t57 = load double, ptr %l6, !tbaa !26
  %t58 = load double, ptr %l7, !tbaa !26
  %t61 = fmul double %t57, %t58
  %t63 = bitcast double %t61 to i64
  store i64 %t63, ptr %l23, !tbaa !24
  br label %bb25
bb15:
  %t66 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t68 = trunc i64 6 to i32
  %t69 = icmp eq i32 %t66, %t68
  br i1 %t69, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb19
bb18:
  %t71 = load double, ptr %l6, !tbaa !26
  %t72 = load double, ptr %l7, !tbaa !26
  %t75 = fdiv double %t71, %t72
  %t77 = bitcast double %t75 to i64
  store i64 %t77, ptr %l23, !tbaa !24
  br label %bb25
bb19:
  br i1 true, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb24
bb22:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t82 = load double, ptr %l6, !tbaa !26
  %t83 = load double, ptr %l7, !tbaa !26
  %t88 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2efloatCompare(ptr %v0, ptr %t80, i32 %t81, double %t82, double %t83)
  store i64 %t88, ptr %l56
  br label %bb23
bb23:
  %t89 = load i64, ptr %l56, !tbaa !24
  store i64 %t89, ptr %l23, !tbaa !24
  br label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_d784dcd9713515f8_b9d041eddaa630c)
  unreachable
bb25:
  %t90 = load i64, ptr %l23, !tbaa !24
  store i64 %t90, ptr %rv
  br label %ret
bb26:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load i64, ptr %l2, !tbaa !24
  %t93 = load i32, ptr %l4, !tbaa !23
  %t97 = call double @compiler_2feval_2ecompiler_2feval_3aMachine_2etoF64(ptr %v0, ptr %t91, i64 %t92, i32 %t93)
  store double %t97, ptr %l60
  br label %bb27
bb27:
  %t98 = load double, ptr %l60, !tbaa !26
  %t99 = fptrunc double %t98 to float
  store float %t99, ptr %l8, !tbaa !25
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load i64, ptr %l3, !tbaa !24
  %t103 = load i32, ptr %l4, !tbaa !23
  %t107 = call double @compiler_2feval_2ecompiler_2feval_3aMachine_2etoF64(ptr %v0, ptr %t101, i64 %t102, i32 %t103)
  store double %t107, ptr %l65
  br label %bb28
bb28:
  %t108 = load double, ptr %l65, !tbaa !26
  %t109 = fptrunc double %t108 to float
  store float %t109, ptr %l9, !tbaa !25
  %t111 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t113 = trunc i64 3 to i32
  %t114 = icmp eq i32 %t111, %t113
  br i1 %t114, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  %t116 = load float, ptr %l8, !tbaa !25
  %t117 = load float, ptr %l9, !tbaa !25
  %t120 = fadd float %t116, %t117
  store float %t120, ptr %l67, !tbaa !25
  br label %bb49
bb32:
  %t122 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t124 = trunc i64 4 to i32
  %t125 = icmp eq i32 %t122, %t124
  br i1 %t125, label %bb33, label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb36
bb35:
  %t127 = load float, ptr %l8, !tbaa !25
  %t128 = load float, ptr %l9, !tbaa !25
  %t131 = fsub float %t127, %t128
  store float %t131, ptr %l67, !tbaa !25
  br label %bb49
bb36:
  %t133 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t135 = trunc i64 5 to i32
  %t136 = icmp eq i32 %t133, %t135
  br i1 %t136, label %bb37, label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb40
bb39:
  %t138 = load float, ptr %l8, !tbaa !25
  %t139 = load float, ptr %l9, !tbaa !25
  %t142 = fmul float %t138, %t139
  store float %t142, ptr %l67, !tbaa !25
  br label %bb49
bb40:
  %t144 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t146 = trunc i64 6 to i32
  %t147 = icmp eq i32 %t144, %t146
  br i1 %t147, label %bb41, label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb44
bb43:
  %t149 = load float, ptr %l8, !tbaa !25
  %t150 = load float, ptr %l9, !tbaa !25
  %t153 = fdiv float %t149, %t150
  store float %t153, ptr %l67, !tbaa !25
  br label %bb49
bb44:
  br i1 true, label %bb45, label %bb46
bb45:
  br label %bb47
bb46:
  br label %bb48
bb47:
  store float 0x0000000000000000, ptr %l67, !tbaa !25
  br label %bb49
bb48:
  call void @__olang_check_failed(ptr @olang_loc_d2031ca5bdc3c0c9_c1504039d0cd1a3d)
  unreachable
bb49:
  %t155 = load float, ptr %l67, !tbaa !25
  store float %t155, ptr %l10, !tbaa !25
  %t156 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t158 = trunc i64 3 to i32
  %t159 = icmp eq i32 %t156, %t158
  br i1 %t159, label %bb50, label %bb51
bb50:
  br label %bb58
bb51:
  %t161 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t163 = trunc i64 4 to i32
  %t164 = icmp eq i32 %t161, %t163
  br i1 %t164, label %bb52, label %bb53
bb52:
  br label %bb58
bb53:
  %t166 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t168 = trunc i64 5 to i32
  %t169 = icmp eq i32 %t166, %t168
  br i1 %t169, label %bb54, label %bb55
bb54:
  br label %bb58
bb55:
  %t171 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t173 = trunc i64 6 to i32
  %t174 = icmp eq i32 %t171, %t173
  br i1 %t174, label %bb56, label %bb57
bb56:
  br label %bb58
bb57:
  br label %bb59
bb58:
  br label %bb65
bb59:
  br i1 true, label %bb60, label %bb61
bb60:
  br label %bb62
bb61:
  br label %bb64
bb62:
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t177 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t178 = load float, ptr %l8, !tbaa !25
  %t180 = fpext float %t178 to double
  %t181 = load float, ptr %l9, !tbaa !25
  %t183 = fpext float %t181 to double
  %t188 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2efloatCompare(ptr %v0, ptr %t176, i32 %t177, double %t180, double %t183)
  store i64 %t188, ptr %l102
  br label %bb63
bb63:
  %t189 = load i64, ptr %l102, !tbaa !24
  store i64 %t189, ptr %rv
  br label %ret
bb64:
  call void @__olang_check_failed(ptr @olang_loc_82c834935ab97012_8fe8672257be0a6)
  unreachable
bb65:
  %t190 = load i32, ptr %l5, !tbaa !23
  %t192 = icmp eq i32 %t190, 13
  br i1 %t192, label %bb66, label %bb67
bb66:
  %t194 = load float, ptr %l10, !tbaa !25
  %t196 = bitcast float %t194 to i32
  %t198 = zext i32 %t196 to i64
  store i64 %t198, ptr %rv
  br label %ret
bb67:
  br label %bb68
bb68:
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t201 = load float, ptr %l10, !tbaa !25
  %t203 = fpext float %t201 to double
  %t204 = load i32, ptr %l4, !tbaa !23
  %t208 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2efromF64(ptr %v0, ptr %t200, double %t203, i32 %t204)
  store i64 %t208, ptr %l112
  br label %bb69
bb69:
  %t209 = load i64, ptr %l112, !tbaa !24
  store i64 %t209, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2efloatText(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l1 = alloca i64
  %l3 = alloca i32
  %l7 = alloca i32
  %l8 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  %s2 = alloca %olang.builder
  %s2room = alloca [64 x i8], align 8
  %s4 = alloca %olang.builder
  %s4room = alloca [64 x i8], align 8
  %s6 = alloca %olang.builder
  %s6room = alloca [64 x i8], align 8
  %s8 = alloca %olang.builder
  %s8room = alloca [64 x i8], align 8
  %rv = alloca { i64, ptr }
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/eval:Machine", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t8 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t4, i32 %a2)
  store i32 %t8, ptr %l7
  br label %bb1
bb1:
  %t9 = load i32, ptr %l7, !tbaa !23
  store i32 %t9, ptr %l3, !tbaa !23
  %t10 = load i32, ptr %l3, !tbaa !23
  %t12 = icmp eq i32 %t10, 11
  br i1 %t12, label %bb2, label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb5
bb4:
  %t14 = load i64, ptr %l1, !tbaa !24
  %t16 = and i64 %t14, 65535
  %t18 = trunc i64 %t16 to i16
  %t20 = call i16 asm "", "=r,0"(i16 %t18)
  %t21 = bitcast i16 %t20 to half
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s2
  store ptr %s2room, ptr %s2
  %t23 = fpext half %t21 to double
  %t24 = call ptr @__olang_sb_room(ptr %s2, i64 48)
  %t25 = call i64 @__olang_fmt_float(ptr %t24, i64 48, double %t23, i32 2)
  call void @__olang_sb_add(ptr %s2, i64 %t25)
  %t26 = load ptr, ptr %s2
  %t27 = getelementptr %olang.builder, ptr %s2, i32 0, i32 1
  %t28 = load i64, ptr %t27
  %t29 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t28)
  call void @olang_textcopy(ptr %t29, ptr %t26, i64 %t28)
  %t30 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  store { i64, ptr } %t31, ptr %l15, !tbaa !27
  %t32 = getelementptr %olang.builder, ptr %s2, i32 0, i32 3
  %t33 = load ptr, ptr %t32
  %t34 = icmp ne ptr %t33, null
  br i1 %t34, label %sbgrew.35, label %sbdone.36
sbgrew.35:
  call void @__olang_sb_done(ptr %s2)
  br label %sbdone.36
sbdone.36:
  %t37 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t37, ptr %l8, !tbaa !27
  br label %bb18
bb5:
  %t38 = load i32, ptr %l3, !tbaa !23
  %t40 = icmp eq i32 %t38, 12
  br i1 %t40, label %bb6, label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb9
bb8:
  %t42 = load i64, ptr %l1, !tbaa !24
  %t44 = and i64 %t42, 65535
  %t46 = trunc i64 %t44 to i16
  %t48 = bitcast i16 %t46 to bfloat
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s4
  store ptr %s4room, ptr %s4
  %t50 = fpext bfloat %t48 to double
  %t51 = call ptr @__olang_sb_room(ptr %s4, i64 48)
  %t52 = call i64 @__olang_fmt_float(ptr %t51, i64 48, double %t50, i32 3)
  call void @__olang_sb_add(ptr %s4, i64 %t52)
  %t53 = load ptr, ptr %s4
  %t54 = getelementptr %olang.builder, ptr %s4, i32 0, i32 1
  %t55 = load i64, ptr %t54
  %t56 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t55)
  call void @olang_textcopy(ptr %t56, ptr %t53, i64 %t55)
  %t57 = insertvalue { i64, ptr } undef, i64 %t55, 0
  %t58 = insertvalue { i64, ptr } %t57, ptr %t56, 1
  store { i64, ptr } %t58, ptr %l22, !tbaa !27
  %t59 = getelementptr %olang.builder, ptr %s4, i32 0, i32 3
  %t60 = load ptr, ptr %t59
  %t61 = icmp ne ptr %t60, null
  br i1 %t61, label %sbgrew.62, label %sbdone.63
sbgrew.62:
  call void @__olang_sb_done(ptr %s4)
  br label %sbdone.63
sbdone.63:
  %t64 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t64, ptr %l8, !tbaa !27
  br label %bb18
bb9:
  %t65 = load i32, ptr %l3, !tbaa !23
  %t67 = icmp eq i32 %t65, 13
  br i1 %t67, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  %t69 = load i64, ptr %l1, !tbaa !24
  %t71 = and i64 %t69, 4294967295
  %t73 = trunc i64 %t71 to i32
  %t75 = bitcast i32 %t73 to float
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s6
  store ptr %s6room, ptr %s6
  %t77 = fpext float %t75 to double
  %t78 = call ptr @__olang_sb_room(ptr %s6, i64 48)
  %t79 = call i64 @__olang_fmt_float(ptr %t78, i64 48, double %t77, i32 1)
  call void @__olang_sb_add(ptr %s6, i64 %t79)
  %t80 = load ptr, ptr %s6
  %t81 = getelementptr %olang.builder, ptr %s6, i32 0, i32 1
  %t82 = load i64, ptr %t81
  %t83 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t82)
  call void @olang_textcopy(ptr %t83, ptr %t80, i64 %t82)
  %t84 = insertvalue { i64, ptr } undef, i64 %t82, 0
  %t85 = insertvalue { i64, ptr } %t84, ptr %t83, 1
  store { i64, ptr } %t85, ptr %l29, !tbaa !27
  %t86 = getelementptr %olang.builder, ptr %s6, i32 0, i32 3
  %t87 = load ptr, ptr %t86
  %t88 = icmp ne ptr %t87, null
  br i1 %t88, label %sbgrew.89, label %sbdone.90
sbgrew.89:
  call void @__olang_sb_done(ptr %s6)
  br label %sbdone.90
sbdone.90:
  %t91 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t91, ptr %l8, !tbaa !27
  br label %bb18
bb13:
  br i1 true, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  %t92 = load i64, ptr %l1, !tbaa !24
  %t95 = bitcast i64 %t92 to double
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s8
  store ptr %s8room, ptr %s8
  %t97 = call ptr @__olang_sb_room(ptr %s8, i64 48)
  %t98 = call i64 @__olang_fmt_float(ptr %t97, i64 48, double %t95, i32 0)
  call void @__olang_sb_add(ptr %s8, i64 %t98)
  %t99 = load ptr, ptr %s8
  %t100 = getelementptr %olang.builder, ptr %s8, i32 0, i32 1
  %t101 = load i64, ptr %t100
  %t102 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t101)
  call void @olang_textcopy(ptr %t102, ptr %t99, i64 %t101)
  %t103 = insertvalue { i64, ptr } undef, i64 %t101, 0
  %t104 = insertvalue { i64, ptr } %t103, ptr %t102, 1
  store { i64, ptr } %t104, ptr %l33, !tbaa !27
  %t105 = getelementptr %olang.builder, ptr %s8, i32 0, i32 3
  %t106 = load ptr, ptr %t105
  %t107 = icmp ne ptr %t106, null
  br i1 %t107, label %sbgrew.108, label %sbdone.109
sbgrew.108:
  call void @__olang_sb_done(ptr %s8)
  br label %sbdone.109
sbdone.109:
  %t110 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t110, ptr %l8, !tbaa !27
  br label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_1a5820d8caa3da70_8ddb412d29c69c24)
  unreachable
bb18:
  %t111 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t111, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2efreeTask(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/eval:Machine", ptr %a0, i32 0, i32 57
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t3, i64 %a1)
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2efreshWork(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/eval:genRec"
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l6 = alloca i32
  %l10 = alloca ptr
  %l13 = alloca i64
  %l15 = alloca i64
  %l20 = alloca i32
  %l25 = alloca %"compiler/mir:Local"
  %l30 = alloca i1
  %l32 = alloca i1
  %l36 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  call void @llvm.memmove.p0.p0.i64(ptr %l1, ptr %a1, i64 280, i1 false)
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 25
  %t4 = getelementptr %"compiler/eval:genRec", ptr %l1, i32 0, i32 1
  %t5 = load i64, ptr %t4, !tbaa !24
  %t8 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %v0, ptr %t3, i64 %t5)
  store ptr %t8, ptr %l10
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l10, !tbaa !29
  store ptr %t9, ptr %l2, !tbaa !29
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = getelementptr %"compiler/mir:Fn", ptr %t10, i32 0, i32 5
  store ptr %t12, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t14 = load i64, ptr %l4, !tbaa !24
  store i64 %t14, ptr %l13, !tbaa !24
  %t15 = load ptr, ptr %l3, !tbaa !29
  %t17 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %t15)
  store i64 %t17, ptr %l15
  br label %bb3
bb3:
  %t18 = load i64, ptr %l13, !tbaa !24
  %t19 = load i64, ptr %l15, !tbaa !24
  %t20 = icmp slt i64 %t18, %t19
  %t22 = xor i1 %t20, true
  br i1 %t22, label %bb4, label %bb5
bb4:
  br label %bb18
bb5:
  br label %bb6
bb6:
  %t24 = load ptr, ptr %l3, !tbaa !29
  %t25 = load i64, ptr %l4, !tbaa !24
  %t28 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eAt_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %t24, i64 %t25)
  store i32 %t28, ptr %l20
  br label %bb7
bb7:
  %t29 = load i32, ptr %l20, !tbaa !23
  %t30 = load ptr, ptr %l2, !tbaa !29
  %t32 = getelementptr %"compiler/mir:Fn", ptr %t30, i32 0, i32 7
  %t35 = sext i32 %t29 to i64
  %t38 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %t32, i64 %t35)
  store %"compiler/mir:Local" %t38, ptr %l25
  br label %bb8
bb8:
  %t39 = getelementptr %"compiler/mir:Local", ptr %l25, i32 0, i32 2
  %t40 = load i32, ptr %t39, !tbaa !23
  store i32 %t40, ptr %l6, !tbaa !23
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/eval:Machine", ptr %t42, i32 0, i32 0
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t46 = load i32, ptr %l6, !tbaa !23
  %t49 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t45, i32 %t46)
  store i1 %t49, ptr %l30
  br label %bb9
bb9:
  %t50 = load i1, ptr %l30, !tbaa !21
  %t51 = xor i1 %t50, true
  br i1 %t51, label %bb10, label %bb11
bb10:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/eval:Machine", ptr %t53, i32 0, i32 0
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t57 = load i32, ptr %l6, !tbaa !23
  %t60 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %t56, i32 %t57)
  store i1 %t60, ptr %l36
  br label %bb12
bb11:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb13
bb12:
  %t61 = load i1, ptr %l36, !tbaa !21
  store i1 %t61, ptr %l32, !tbaa !21
  br label %bb13
bb13:
  %t62 = load i1, ptr %l32, !tbaa !21
  br i1 %t62, label %bb14, label %bb15
bb14:
  store i1 true, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t64 = load i64, ptr %l4, !tbaa !24
  %t66 = add i64 %t64, 1
  store i64 %t66, ptr %l4, !tbaa !24
  br label %bb2
bb18:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2egenClosure(ptr %v0, ptr %a0, i64 %a1, %"compiler/eval:Ptr" %a2, %"compiler/eval:Ptr" %a3, i64 %a4, { i64, [1 x i64] } %a5, %"compiler/mir:Range" %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"compiler/eval:Ptr"
  %l4 = alloca i64
  %l6 = alloca %"compiler/mir:Range"
  %l7 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca i32
  %l13 = alloca i32
  %l14 = alloca i32
  %l15 = alloca { { i64, ptr }, i64 }
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca %"compiler/eval:Ptr"
  %l20 = alloca i32
  %l21 = alloca i32
  %l22 = alloca i32
  %l23 = alloca i32
  %l24 = alloca i32
  %l25 = alloca i32
  %l26 = alloca { i64, [4 x i64] }
  %l27 = alloca i64
  %l28 = alloca %"compiler/eval:Ptr"
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l40 = alloca ptr
  %l42 = alloca i64
  %l50 = alloca i32
  %l53 = alloca i32
  %l71 = alloca i32
  %l72 = alloca ptr
  %l73 = alloca i64
  %l81 = alloca { i64, [4 x i64] }
  %l82 = alloca i32
  %l87 = alloca { { i64, ptr }, i64 }
  %l93 = alloca i64
  %l105 = alloca %"compiler/eval:Ptr"
  %l110 = alloca i32
  %l113 = alloca i32
  %l138 = alloca { i64, [4 x i64] }
  %l139 = alloca ptr
  %l140 = alloca i64
  %l144 = alloca %"compiler/eval:Ptr"
  %l152 = alloca i64
  %l155 = alloca i1
  %l159 = alloca i64
  %l162 = alloca ptr
  %l163 = alloca i64
  %l165 = alloca i64
  %l169 = alloca i64
  %l172 = alloca i64
  %l174 = alloca %"compiler/eval:Ptr"
  %l175 = alloca %"compiler/eval:Ptr"
  %l179 = alloca { i64, ptr }
  %l184 = alloca ptr
  %l191 = alloca %"compiler/eval:Ptr"
  %l195 = alloca i64
  %l199 = alloca i64
  %l200 = alloca i32
  %l206 = alloca %"compiler/eval:genRec"
  %l208 = alloca %"compiler/eval:genRec"
  %l219 = alloca i1
  %l223 = alloca %"compiler/eval:genRec"
  %l225 = alloca %"compiler/eval:genRec"
  %l228 = alloca ptr
  %l229 = alloca i64
  %l230 = alloca %"compiler/eval:genRec"
  %l235 = alloca ptr
  %l239 = alloca ptr
  %l240 = alloca %"compiler/eval:genRec"
  %l243 = alloca i64
  %l249 = alloca ptr
  %l256 = alloca ptr
  %l259 = alloca ptr
  %l266 = alloca %"compiler/eval:Ptr"
  %l276 = alloca ptr
  %l280 = alloca %"compiler/eval:Ptr"
  %s0 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %t381 = alloca %"compiler/eval:genRec", align 8
  %t387 = alloca %"compiler/eval:genRec", align 8
  %t388 = alloca %"compiler/eval:genRec", align 8
  %t416 = alloca %"compiler/eval:genRec", align 8
  %t419 = alloca %"compiler/eval:genRec", align 8
  %t428 = alloca %"compiler/eval:genRec", align 8
  %t431 = alloca %"compiler/eval:genRec", align 8
  %t448 = alloca %"compiler/eval:genRec", align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store %"compiler/eval:Ptr" %a2, ptr %l2
  store i64 %a4, ptr %l4
  store %"compiler/mir:Range" %a6, ptr %l6
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call ptr @compiler_2feval_2ecompiler_2feval_3aMachine_2efnOfFrame(ptr %v0, ptr %v0, ptr %t1, i64 %t2)
  store ptr %t5, ptr %l40
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l40, !tbaa !29
  store ptr %t6, ptr %l7, !tbaa !29
  %t7 = getelementptr %"compiler/mir:Range", ptr %l6, i32 0, i32 1
  %t8 = load i32, ptr %t7, !tbaa !23
  %t10 = sext i32 %t8 to i64
  store i64 %t10, ptr %l42, !tbaa !24
  %t11 = load i64, ptr %l42, !tbaa !24
  %t12 = icmp sge i64 %t11, 0
  br i1 %t12, label %bb2, label %bb3
bb2:
  %t14 = load i64, ptr %l42, !tbaa !24
  %t15 = icmp sle i64 %t14, 2305843009213693951
  br i1 %t15, label %bb4, label %bb5
bb3:
  call void @__olang_check_failed(ptr @olang_loc_b3c5db2f6a543f4f_ebedfa57413dac3)
  unreachable
bb4:
  %t17 = load i64, ptr %l42, !tbaa !24
  %t18 = mul i64 %t17, 4
  %t19 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t18)
  %t20 = insertvalue { i64, ptr } undef, i64 %t17, 0
  %t21 = insertvalue { i64, ptr } %t20, ptr %t19, 1
  store { i64, ptr } %t21, ptr %l8, !tbaa !27
  store i32 0, ptr %l9, !tbaa !23
  %t23 = getelementptr %"compiler/mir:Range", ptr %l6, i32 0, i32 1
  %t24 = load i32, ptr %t23, !tbaa !23
  store i32 %t24, ptr %l10, !tbaa !23
  store i32 1, ptr %l11, !tbaa !23
  %t26 = load i32, ptr %l10, !tbaa !23
  %t27 = load i32, ptr %l9, !tbaa !23
  %t30 = icmp sgt i32 %t26, %t27
  br i1 %t30, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_b3c5db2f6a543f4f_ebedfa57413dac3)
  unreachable
bb6:
  %t32 = load i32, ptr %l11, !tbaa !23
  %t34 = icmp sgt i32 %t32, 0
  br i1 %t34, label %bb8, label %bb9
bb7:
  store i32 0, ptr %l50, !tbaa !23
  br label %bb11
bb8:
  %t36 = load i32, ptr %l10, !tbaa !23
  %t37 = load i32, ptr %l9, !tbaa !23
  %t40 = sub i32 %t36, %t37
  %t41 = load i32, ptr %l11, !tbaa !23
  %t44 = add i32 %t40, %t41
  %t46 = sub i32 %t44, 1
  %t47 = load i32, ptr %l11, !tbaa !23
  %t50 = sdiv i32 %t46, %t47
  store i32 %t50, ptr %l53, !tbaa !23
  br label %bb10
bb9:
  store i32 0, ptr %l53, !tbaa !23
  br label %bb10
bb10:
  %t52 = load i32, ptr %l53, !tbaa !23
  store i32 %t52, ptr %l50, !tbaa !23
  br label %bb11
bb11:
  %t53 = load i32, ptr %l50, !tbaa !23
  store i32 %t53, ptr %l12, !tbaa !23
  store i32 0, ptr %l13, !tbaa !23
  br label %bb12
bb12:
  %t54 = load i32, ptr %l13, !tbaa !23
  %t55 = load i32, ptr %l12, !tbaa !23
  %t58 = icmp slt i32 %t54, %t55
  %t60 = xor i1 %t58, true
  br i1 %t60, label %bb13, label %bb14
bb13:
  br label %bb19
bb14:
  br label %bb15
bb15:
  %t62 = load i32, ptr %l9, !tbaa !23
  %t63 = load i32, ptr %l13, !tbaa !23
  %t64 = load i32, ptr %l11, !tbaa !23
  %t67 = mul i32 %t63, %t64
  %t70 = add i32 %t62, %t67
  store i32 %t70, ptr %l14, !tbaa !23
  %t72 = load i32, ptr %l14, !tbaa !23
  store i32 %t72, ptr %l71, !tbaa !23
  %t73 = load ptr, ptr %l0, !tbaa !29
  store ptr %t73, ptr %l72, !tbaa !29
  %t74 = load i64, ptr %l1, !tbaa !24
  store i64 %t74, ptr %l73, !tbaa !24
  %t75 = load ptr, ptr %l7, !tbaa !29
  %t77 = getelementptr %"compiler/mir:Fn", ptr %t75, i32 0, i32 11
  %t78 = getelementptr %"compiler/mir:Range", ptr %l6, i32 0, i32 0
  %t79 = load i32, ptr %t78, !tbaa !23
  %t81 = sext i32 %t79 to i64
  %t82 = load i32, ptr %l14, !tbaa !23
  %t84 = sext i32 %t82 to i64
  %t87 = add i64 %t81, %t84
  %t90 = call { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %t77, i64 %t87)
  store { i64, [4 x i64] } %t90, ptr %l81
  br label %bb16
bb16:
  %t91 = load ptr, ptr %l72, !tbaa !29
  %t92 = load i64, ptr %l73, !tbaa !24
  %t93 = load { i64, [4 x i64] }, ptr %l81
  %t94 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t91, i64 %t92, { i64, [4 x i64] } %t93)
  store i32 %t94, ptr %l82
  br label %bb17
bb17:
  %t95 = load i32, ptr %l82, !tbaa !23
  %t96 = load i32, ptr %l71, !tbaa !23
  %t97 = sext i32 %t96 to i64
  %t98 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !27
  %t100 = getelementptr i32, ptr %t99, i64 %t97
  store i32 %t95, ptr %t100, !tbaa !33
  br label %bb18
bb18:
  %t101 = load i32, ptr %l13, !tbaa !23
  %t103 = add i32 %t101, 1
  store i32 %t103, ptr %l13, !tbaa !23
  br label %bb12
bb19:
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t106 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t109 = call { { i64, ptr }, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2epack(ptr %v0, ptr %s0, ptr %s0, ptr %t105, { i64, ptr } %t106)
  store { { i64, ptr }, i64 } %t109, ptr %l87
  br label %bb20
bb20:
  %t110 = load { { i64, ptr }, i64 }, ptr %l87
  store { { i64, ptr }, i64 } %t110, ptr %l15
  %t111 = getelementptr { { i64, ptr }, i64 }, ptr %l15, i32 0, i32 0
  %t112 = load { i64, ptr }, ptr %t111, !tbaa !27
  store { i64, ptr } %t112, ptr %l16, !tbaa !27
  %t114 = getelementptr { { i64, ptr }, i64 }, ptr %l15, i32 0, i32 1
  %t115 = load i64, ptr %t114, !tbaa !24
  store i64 %t115, ptr %l17, !tbaa !24
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t118 = load i64, ptr %l1, !tbaa !24
  %t123 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ebuildScope(ptr %v0, ptr %t117, i64 %t118, { i64, [1 x i64] } %a5)
  store i64 %t123, ptr %l93
  br label %bb21
bb21:
  %t124 = load i64, ptr %l93, !tbaa !24
  store i64 %t124, ptr %l18, !tbaa !24
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = getelementptr %"compiler/eval:Machine", ptr %t125, i32 0, i32 22
  %t128 = load i1, ptr %t127, !tbaa !21
  br i1 %t128, label %bb22, label %bb23
bb22:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb23:
  br label %bb24
bb24:
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t131 = load i64, ptr %l17, !tbaa !24
  %t132 = getelementptr %"compiler/mir:Range", ptr %l6, i32 0, i32 1
  %t133 = load i32, ptr %t132, !tbaa !23
  %t135 = sext i32 %t133 to i64
  %t137 = mul i64 8, %t135
  %t140 = add i64 %t131, %t137
  %t142 = add i64 %t140, 8
  %t143 = load i64, ptr @G_2ecompiler_2feval_2eaValue, !tbaa !24
  %t144 = load i64, ptr %l18, !tbaa !24
  %t149 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocate(ptr %v0, ptr %t130, i64 %t142, i64 %t143, i64 %t144)
  store %"compiler/eval:Ptr" %t149, ptr %l105
  br label %bb25
bb25:
  %t150 = load %"compiler/eval:Ptr", ptr %l105
  store %"compiler/eval:Ptr" %t150, ptr %l19
  store i32 0, ptr %l20, !tbaa !23
  %t151 = getelementptr %"compiler/mir:Range", ptr %l6, i32 0, i32 1
  %t152 = load i32, ptr %t151, !tbaa !23
  store i32 %t152, ptr %l21, !tbaa !23
  store i32 1, ptr %l22, !tbaa !23
  %t154 = load i32, ptr %l21, !tbaa !23
  %t155 = load i32, ptr %l20, !tbaa !23
  %t158 = icmp sgt i32 %t154, %t155
  br i1 %t158, label %bb26, label %bb27
bb26:
  %t160 = load i32, ptr %l22, !tbaa !23
  %t162 = icmp sgt i32 %t160, 0
  br i1 %t162, label %bb28, label %bb29
bb27:
  store i32 0, ptr %l110, !tbaa !23
  br label %bb31
bb28:
  %t164 = load i32, ptr %l21, !tbaa !23
  %t165 = load i32, ptr %l20, !tbaa !23
  %t168 = sub i32 %t164, %t165
  %t169 = load i32, ptr %l22, !tbaa !23
  %t172 = add i32 %t168, %t169
  %t174 = sub i32 %t172, 1
  %t175 = load i32, ptr %l22, !tbaa !23
  %t178 = sdiv i32 %t174, %t175
  store i32 %t178, ptr %l113, !tbaa !23
  br label %bb30
bb29:
  store i32 0, ptr %l113, !tbaa !23
  br label %bb30
bb30:
  %t180 = load i32, ptr %l113, !tbaa !23
  store i32 %t180, ptr %l110, !tbaa !23
  br label %bb31
bb31:
  %t181 = load i32, ptr %l110, !tbaa !23
  store i32 %t181, ptr %l23, !tbaa !23
  store i32 0, ptr %l24, !tbaa !23
  br label %bb32
bb32:
  store %olang.scope zeroinitializer, ptr %s6
  %t182 = load i32, ptr %l24, !tbaa !23
  %t183 = load i32, ptr %l23, !tbaa !23
  %t186 = icmp slt i32 %t182, %t183
  %t188 = xor i1 %t186, true
  br i1 %t188, label %bb33, label %bb34
bb33:
  call void @__olang_scope_close(ptr %s6)
  br label %bb59
bb34:
  br label %bb35
bb35:
  %t190 = load i32, ptr %l20, !tbaa !23
  %t191 = load i32, ptr %l24, !tbaa !23
  %t192 = load i32, ptr %l22, !tbaa !23
  %t195 = mul i32 %t191, %t192
  %t198 = add i32 %t190, %t195
  store i32 %t198, ptr %l25, !tbaa !23
  %t200 = load ptr, ptr %l7, !tbaa !29
  %t202 = getelementptr %"compiler/mir:Fn", ptr %t200, i32 0, i32 11
  %t203 = getelementptr %"compiler/mir:Range", ptr %l6, i32 0, i32 0
  %t204 = load i32, ptr %t203, !tbaa !23
  %t206 = sext i32 %t204 to i64
  %t207 = load i32, ptr %l25, !tbaa !23
  %t209 = sext i32 %t207 to i64
  %t212 = add i64 %t206, %t209
  %t215 = call { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %t202, i64 %t212)
  store { i64, [4 x i64] } %t215, ptr %l138
  br label %bb36
bb36:
  %t216 = load { i64, [4 x i64] }, ptr %l138
  store { i64, [4 x i64] } %t216, ptr %l26
  %t217 = load ptr, ptr %l0, !tbaa !29
  store ptr %t217, ptr %l139, !tbaa !29
  %t218 = load i64, ptr %l1, !tbaa !24
  store i64 %t218, ptr %l140, !tbaa !24
  %t219 = getelementptr %"compiler/eval:Ptr", ptr %l19, i32 0, i32 0
  %t220 = load i64, ptr %t219, !tbaa !24
  %t221 = load i32, ptr %l25, !tbaa !23
  %t223 = sext i32 %t221 to i64
  %t224 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t225 = load ptr, ptr %t224, !tbaa !27
  %t226 = getelementptr i64, ptr %t225, i64 %t223
  %t227 = load i64, ptr %t226, !tbaa !34
  %t230 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s6, i64 %t220, i64 %t227)
  store %"compiler/eval:Ptr" %t230, ptr %l144
  br label %bb37
bb37:
  %t231 = load i32, ptr %l25, !tbaa !23
  %t233 = sext i32 %t231 to i64
  %t234 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t235 = load ptr, ptr %t234, !tbaa !27
  %t236 = getelementptr i32, ptr %t235, i64 %t233
  %t237 = load i32, ptr %t236, !tbaa !33
  %t238 = load { i64, [4 x i64] }, ptr %l26
  %t239 = load ptr, ptr %l139, !tbaa !29
  %t240 = load i64, ptr %l140, !tbaa !24
  %t241 = load %"compiler/eval:Ptr", ptr %l144
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eput(ptr %v0, ptr %t239, i64 %t240, %"compiler/eval:Ptr" %t241, i32 %t237, { i64, [4 x i64] } %t238)
  br label %bb38
bb38:
  %t244 = load i64, ptr %l18, !tbaa !24
  store i64 %t244, ptr %l27, !tbaa !24
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t247 = load i32, ptr %l25, !tbaa !23
  %t249 = sext i32 %t247 to i64
  %t250 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t251 = load ptr, ptr %t250, !tbaa !27
  %t252 = getelementptr i32, ptr %t251, i64 %t249
  %t253 = load i32, ptr %t252, !tbaa !33
  %t256 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t246, i32 %t253)
  store i64 %t256, ptr %l152
  br label %bb39
bb39:
  %t257 = load i64, ptr @G_2ecompiler_2feval_2evPtr, !tbaa !24
  %t258 = load i64, ptr %l152, !tbaa !24
  %t260 = icmp eq i64 %t258, %t257
  br i1 %t260, label %bb40, label %bb41
bb40:
  store i1 true, ptr %l155, !tbaa !21
  br label %bb43
bb41:
  %t262 = load ptr, ptr %l0, !tbaa !29
  %t263 = load i32, ptr %l25, !tbaa !23
  %t265 = sext i32 %t263 to i64
  %t266 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t267 = load ptr, ptr %t266, !tbaa !27
  %t268 = getelementptr i32, ptr %t267, i64 %t265
  %t269 = load i32, ptr %t268, !tbaa !33
  %t272 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t262, i32 %t269)
  store i64 %t272, ptr %l159
  br label %bb42
bb42:
  %t273 = load i64, ptr @G_2ecompiler_2feval_2evPair, !tbaa !24
  %t274 = load i64, ptr %l159, !tbaa !24
  %t276 = icmp eq i64 %t274, %t273
  store i1 %t276, ptr %l155, !tbaa !21
  br label %bb43
bb43:
  %t278 = load i1, ptr %l155, !tbaa !21
  br i1 %t278, label %bb44, label %bb45
bb44:
  store %olang.scope zeroinitializer, ptr %s7
  %t279 = load ptr, ptr %l0, !tbaa !29
  store ptr %t279, ptr %l162, !tbaa !29
  %t280 = getelementptr %"compiler/eval:Ptr", ptr %l19, i32 0, i32 0
  %t281 = load i64, ptr %t280, !tbaa !24
  store i64 %t281, ptr %l163, !tbaa !24
  %t282 = load i32, ptr %l25, !tbaa !23
  %t284 = sext i32 %t282 to i64
  %t285 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t286 = load ptr, ptr %t285, !tbaa !27
  %t287 = getelementptr i64, ptr %t286, i64 %t284
  %t288 = load i64, ptr %t287, !tbaa !34
  store i64 %t288, ptr %l165, !tbaa !24
  %t289 = load ptr, ptr %l0, !tbaa !29
  %t290 = load i32, ptr %l25, !tbaa !23
  %t292 = sext i32 %t290 to i64
  %t293 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t294 = load ptr, ptr %t293, !tbaa !27
  %t295 = getelementptr i32, ptr %t294, i64 %t292
  %t296 = load i32, ptr %t295, !tbaa !33
  %t299 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t289, i32 %t296)
  store i64 %t299, ptr %l169
  br label %bb46
bb45:
  br label %bb55
bb46:
  %t300 = load i64, ptr @G_2ecompiler_2feval_2evPair, !tbaa !24
  %t301 = load i64, ptr %l169, !tbaa !24
  %t303 = icmp eq i64 %t301, %t300
  br i1 %t303, label %bb47, label %bb48
bb47:
  store i64 8, ptr %l172, !tbaa !24
  br label %bb49
bb48:
  store i64 0, ptr %l172, !tbaa !24
  br label %bb49
bb49:
  %t305 = load i64, ptr %l165, !tbaa !24
  %t306 = load i64, ptr %l172, !tbaa !24
  %t307 = add i64 %t305, %t306
  %t308 = load i64, ptr %l163, !tbaa !24
  %t310 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s7, i64 %t308, i64 %t307)
  store %"compiler/eval:Ptr" %t310, ptr %l174
  br label %bb50
bb50:
  %t311 = load ptr, ptr %l162, !tbaa !29
  %t312 = load %"compiler/eval:Ptr", ptr %l174
  %t313 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtr(ptr %v0, ptr %t311, %"compiler/eval:Ptr" %t312)
  store %"compiler/eval:Ptr" %t313, ptr %l175
  br label %bb51
bb51:
  %t314 = load %"compiler/eval:Ptr", ptr %l175
  store %"compiler/eval:Ptr" %t314, ptr %l28
  %t315 = getelementptr %"compiler/eval:Ptr", ptr %l28, i32 0, i32 0
  %t316 = load i64, ptr %t315, !tbaa !24
  %t318 = icmp ne i64 %t316, 0
  br i1 %t318, label %bb52, label %bb53
bb52:
  %t320 = load ptr, ptr %l0, !tbaa !29
  %t322 = getelementptr %"compiler/eval:Machine", ptr %t320, i32 0, i32 49
  %t323 = load { i64, ptr }, ptr %t322, !tbaa !27
  store { i64, ptr } %t323, ptr %l179, !tbaa !27
  %t324 = getelementptr %"compiler/eval:Ptr", ptr %l28, i32 0, i32 0
  %t325 = load i64, ptr %t324, !tbaa !24
  %t326 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t329 = and i64 %t325, %t326
  %t331 = getelementptr { i64, ptr }, ptr %l179, i32 0, i32 1
  %t332 = load ptr, ptr %t331, !tbaa !27
  %t333 = getelementptr %"compiler/eval:alloc", ptr %t332, i64 %t329
  %t334 = getelementptr %"compiler/eval:alloc", ptr %t333, i32 0, i32 5
  %t335 = load i64, ptr %t334, !tbaa !24
  store i64 %t335, ptr %l27, !tbaa !24
  br label %bb54
bb53:
  br label %bb54
bb54:
  call void @__olang_scope_close(ptr %s7)
  br label %bb55
bb55:
  %t337 = load ptr, ptr %l0, !tbaa !29
  store ptr %t337, ptr %l184, !tbaa !29
  %t338 = getelementptr %"compiler/eval:Ptr", ptr %l19, i32 0, i32 0
  %t339 = load i64, ptr %t338, !tbaa !24
  %t340 = load i64, ptr %l17, !tbaa !24
  %t341 = load i32, ptr %l25, !tbaa !23
  %t343 = mul i32 8, %t341
  %t345 = sext i32 %t343 to i64
  %t348 = add i64 %t340, %t345
  %t351 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s6, i64 %t339, i64 %t348)
  store %"compiler/eval:Ptr" %t351, ptr %l191
  br label %bb56
bb56:
  %t352 = load i64, ptr %l27, !tbaa !24
  %t353 = load ptr, ptr %l184, !tbaa !29
  %t354 = load %"compiler/eval:Ptr", ptr %l191
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t353, %"compiler/eval:Ptr" %t354, i64 8, i64 %t352)
  br label %bb57
bb57:
  call void @__olang_scope_close(ptr %s6)
  br label %bb58
bb58:
  %t356 = load i32, ptr %l24, !tbaa !23
  %t358 = add i32 %t356, 1
  store i32 %t358, ptr %l24, !tbaa !23
  br label %bb32
bb59:
  store i64 -1, ptr %l29, !tbaa !24
  %t360 = load ptr, ptr %l0, !tbaa !29
  %t362 = getelementptr %"compiler/eval:Machine", ptr %t360, i32 0, i32 64
  %t363 = load i64, ptr %l4, !tbaa !24
  %t366 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t362, i64 %t363)
  %t367 = extractvalue { i32, i64 } %t366, 1
  %t368 = extractvalue { i32, i64 } %t366, 0
  store i32 %t368, ptr %l200
  %t369 = icmp ne i32 %t368, 0
  br i1 %t369, label %bb61, label %ok.370, !prof !99
ok.370:
  store i64 %t367, ptr %l199
  br label %bb60
bb60:
  %t371 = load i64, ptr %l199, !tbaa !24
  store i64 %t371, ptr %l195, !tbaa !24
  br label %bb63
bb61:
  br label %bb62
bb62:
  store i64 -1, ptr %l195, !tbaa !24
  br label %bb63
bb63:
  %t372 = load i64, ptr %l195, !tbaa !24
  store i64 %t372, ptr %l29, !tbaa !24
  %t373 = load i64, ptr %l29, !tbaa !24
  %t375 = icmp sge i64 %t373, 0
  br i1 %t375, label %bb64, label %bb65
bb64:
  store %olang.scope zeroinitializer, ptr %s10
  %t377 = load ptr, ptr %l0, !tbaa !29
  %t379 = getelementptr %"compiler/eval:Machine", ptr %t377, i32 0, i32 63
  %t380 = load i64, ptr %l29, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3agenRec_3e_2eAt_3ccompiler_2feval_3agenRec_3e(ptr %t381, ptr %v0, ptr %s10, ptr %t379, i64 %t380)
  call void @llvm.memmove.p0.p0.i64(ptr %l206, ptr %t381, i64 280, i1 false)
  br label %bb66
bb65:
  store %olang.scope zeroinitializer, ptr %s13
  %t384 = load ptr, ptr %l0, !tbaa !29
  %t386 = getelementptr %"compiler/eval:Machine", ptr %t384, i32 0, i32 63
  store ptr %t386, ptr %l239, !tbaa !29
  call void @compiler_2feval_3agenRec_2ector(ptr %t387, ptr %s13)
  call void @llvm.memmove.p0.p0.i64(ptr %l240, ptr %t387, i64 280, i1 false)
  br label %bb78
bb66:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feval_3agenRec(ptr %t388, ptr %s10, ptr %l206)
  call void @llvm.memmove.p0.p0.i64(ptr %l208, ptr %t388, i64 280, i1 false)
  br label %bb67
bb67:
  %t390 = getelementptr %"compiler/eval:genRec", ptr %l208, i32 0, i32 11
  %t391 = load i64, ptr %t390, !tbaa !24
  store i64 %t391, ptr %l30, !tbaa !24
  %t393 = load i64, ptr %l30, !tbaa !24
  %t395 = icmp sge i64 %t393, 0
  br i1 %t395, label %bb68, label %bb69
bb68:
  %t397 = load ptr, ptr %l0, !tbaa !29
  %t399 = getelementptr %"compiler/eval:Machine", ptr %t397, i32 0, i32 64
  %t400 = load i64, ptr %l4, !tbaa !24
  %t401 = load i64, ptr %l30, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t399, i64 %t400, i64 %t401)
  br label %bb70
bb69:
  %t405 = load ptr, ptr %l0, !tbaa !29
  %t407 = getelementptr %"compiler/eval:Machine", ptr %t405, i32 0, i32 64
  %t408 = load i64, ptr %l4, !tbaa !24
  %t411 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eRemove_3cI64_2c_20I64_3e(ptr %v0, ptr %t407, i64 %t408)
  store i1 %t411, ptr %l219
  br label %bb71
bb70:
  br label %bb72
bb71:
  br label %bb72
bb72:
  %t412 = load ptr, ptr %l0, !tbaa !29
  %t414 = getelementptr %"compiler/eval:Machine", ptr %t412, i32 0, i32 63
  %t415 = load i64, ptr %l29, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3agenRec_3e_2eAt_3ccompiler_2feval_3agenRec_3e(ptr %t416, ptr %v0, ptr %s10, ptr %t414, i64 %t415)
  call void @llvm.memmove.p0.p0.i64(ptr %l223, ptr %t416, i64 280, i1 false)
  br label %bb73
bb73:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feval_3agenRec(ptr %t419, ptr %s10, ptr %l223)
  call void @llvm.memmove.p0.p0.i64(ptr %l225, ptr %t419, i64 280, i1 false)
  br label %bb74
bb74:
  %t421 = getelementptr %"compiler/eval:genRec", ptr %l225, i32 0, i32 8
  %t422 = load i64, ptr %t421, !tbaa !24
  store i64 %t422, ptr %l31, !tbaa !24
  %t424 = load ptr, ptr %l0, !tbaa !29
  %t426 = getelementptr %"compiler/eval:Machine", ptr %t424, i32 0, i32 63
  store ptr %t426, ptr %l228, !tbaa !29
  %t427 = load i64, ptr %l29, !tbaa !24
  store i64 %t427, ptr %l229, !tbaa !24
  call void @compiler_2feval_3agenRec_2ector(ptr %t428, ptr %s10)
  call void @llvm.memmove.p0.p0.i64(ptr %l230, ptr %t428, i64 280, i1 false)
  br label %bb75
bb75:
  %t429 = load ptr, ptr %l228, !tbaa !29
  %t430 = load i64, ptr %l229, !tbaa !24
  call void @llvm.memmove.p0.p0.i64(ptr %t431, ptr %l230, i64 280, i1 false)
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3agenRec_3e_2eSetAt_3ccompiler_2feval_3agenRec_3e(ptr %v0, ptr %s10, ptr %t429, i64 %t430, ptr %t431)
  br label %bb76
bb76:
  %t432 = load i64, ptr %l29, !tbaa !24
  %t434 = load ptr, ptr %l0, !tbaa !29
  %t436 = getelementptr %"compiler/eval:Machine", ptr %t434, i32 0, i32 63
  %t440 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3agenRec_3e_2eRefMut_3ccompiler_2feval_3agenRec_3e(ptr %v0, ptr %v0, ptr %t436, i64 %t432)
  store ptr %t440, ptr %l235
  br label %bb77
bb77:
  %t441 = load ptr, ptr %l235, !tbaa !29
  %t443 = load i64, ptr %l31, !tbaa !24
  %t446 = getelementptr %"compiler/eval:genRec", ptr %t441, i32 0, i32 8
  store i64 %t443, ptr %t446, !tbaa !24
  call void @__olang_scope_close(ptr %s10)
  br label %bb81
bb78:
  %t447 = load ptr, ptr %l239, !tbaa !29
  call void @llvm.memmove.p0.p0.i64(ptr %t448, ptr %l240, i64 280, i1 false)
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3agenRec_3e_2ePush_3ccompiler_2feval_3agenRec_3e(ptr %v0, ptr %s13, ptr %t447, ptr %t448)
  br label %bb79
bb79:
  %t449 = load ptr, ptr %l0, !tbaa !29
  %t451 = getelementptr %"compiler/eval:Machine", ptr %t449, i32 0, i32 63
  %t453 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3agenRec_3e_2eLen_3ccompiler_2feval_3agenRec_3e(ptr %v0, ptr %t451)
  store i64 %t453, ptr %l243
  br label %bb80
bb80:
  %t454 = load i64, ptr %l243, !tbaa !24
  %t455 = sub i64 %t454, 1
  store i64 %t455, ptr %l29, !tbaa !24
  call void @__olang_scope_close(ptr %s13)
  br label %bb81
bb81:
  %t457 = load i64, ptr %l29, !tbaa !24
  %t459 = load ptr, ptr %l0, !tbaa !29
  %t461 = getelementptr %"compiler/eval:Machine", ptr %t459, i32 0, i32 63
  %t465 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3agenRec_3e_2eRefMut_3ccompiler_2feval_3agenRec_3e(ptr %v0, ptr %v0, ptr %t461, i64 %t457)
  store ptr %t465, ptr %l249
  br label %bb82
bb82:
  %t466 = load ptr, ptr %l249, !tbaa !29
  %t468 = load i64, ptr %l4, !tbaa !24
  %t471 = getelementptr %"compiler/eval:genRec", ptr %t466, i32 0, i32 1
  store i64 %t468, ptr %t471, !tbaa !24
  %t472 = load i64, ptr %l29, !tbaa !24
  %t474 = load ptr, ptr %l0, !tbaa !29
  %t476 = getelementptr %"compiler/eval:Machine", ptr %t474, i32 0, i32 63
  %t480 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3agenRec_3e_2eRefMut_3ccompiler_2feval_3agenRec_3e(ptr %v0, ptr %v0, ptr %t476, i64 %t472)
  store ptr %t480, ptr %l256
  br label %bb83
bb83:
  %t481 = load ptr, ptr %l256, !tbaa !29
  %t483 = load %"compiler/eval:Ptr", ptr %l19
  %t486 = getelementptr %"compiler/eval:genRec", ptr %t481, i32 0, i32 4
  store %"compiler/eval:Ptr" %t483, ptr %t486
  %t487 = load ptr, ptr %l0, !tbaa !29
  store ptr %t487, ptr %l259, !tbaa !29
  %t488 = getelementptr %"compiler/eval:Ptr", ptr %l19, i32 0, i32 0
  %t489 = load i64, ptr %t488, !tbaa !24
  %t490 = load i64, ptr %l17, !tbaa !24
  %t491 = getelementptr %"compiler/mir:Range", ptr %l6, i32 0, i32 1
  %t492 = load i32, ptr %t491, !tbaa !23
  %t494 = sext i32 %t492 to i64
  %t496 = mul i64 8, %t494
  %t499 = add i64 %t490, %t496
  %t502 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s0, i64 %t489, i64 %t499)
  store %"compiler/eval:Ptr" %t502, ptr %l266
  br label %bb84
bb84:
  %t503 = load i64, ptr %l29, !tbaa !24
  %t504 = load ptr, ptr %l259, !tbaa !29
  %t505 = load %"compiler/eval:Ptr", ptr %l266
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t504, %"compiler/eval:Ptr" %t505, i64 8, i64 %t503)
  br label %bb85
bb85:
  %t507 = load ptr, ptr %l0, !tbaa !29
  %t508 = load i64, ptr %l18, !tbaa !24
  %t509 = load i64, ptr @G_2ecompiler_2feval_2egGen, !tbaa !24
  %t510 = load i64, ptr %l29, !tbaa !24
  %t511 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddReg(ptr %v0, ptr %t507, i64 %t508, i64 %t509, i64 %t510, %"compiler/eval:Ptr" %t511)
  br label %bb86
bb86:
  %t517 = load ptr, ptr %l0, !tbaa !29
  %t518 = load %"compiler/eval:Ptr", ptr %l2
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t517, %"compiler/eval:Ptr" %t518, %"compiler/eval:Ptr" %a3)
  br label %bb87
bb87:
  %t523 = load ptr, ptr %l0, !tbaa !29
  store ptr %t523, ptr %l276, !tbaa !29
  %t524 = getelementptr %"compiler/eval:Ptr", ptr %l2, i32 0, i32 0
  %t525 = load i64, ptr %t524, !tbaa !24
  %t526 = getelementptr %"compiler/eval:Ptr", ptr %l2, i32 0, i32 1
  %t527 = load i64, ptr %t526, !tbaa !24
  %t529 = add i64 %t527, 8
  %t532 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s0, i64 %t525, i64 %t529)
  store %"compiler/eval:Ptr" %t532, ptr %l280
  br label %bb88
bb88:
  %t533 = load %"compiler/eval:Ptr", ptr %l19
  %t534 = load ptr, ptr %l276, !tbaa !29
  %t535 = load %"compiler/eval:Ptr", ptr %l280
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t534, %"compiler/eval:Ptr" %t535, %"compiler/eval:Ptr" %t533)
  br label %bb89
bb89:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2egenHeld(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1) #0 {
entry:
  %l1 = alloca %"compiler/eval:Ptr"
  %l2 = alloca ptr
  %l6 = alloca %"compiler/eval:Ptr"
  %l7 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store %"compiler/eval:Ptr" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store ptr %a0, ptr %l2, !tbaa !29
  %t2 = getelementptr %"compiler/eval:Ptr", ptr %l1, i32 0, i32 0
  %t3 = load i64, ptr %t2, !tbaa !24
  %t4 = getelementptr %"compiler/eval:Ptr", ptr %l1, i32 0, i32 1
  %t5 = load i64, ptr %t4, !tbaa !24
  %t7 = sub i64 %t5, 8
  %t10 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s0, i64 %t3, i64 %t7)
  store %"compiler/eval:Ptr" %t10, ptr %l6
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l2, !tbaa !29
  %t12 = load %"compiler/eval:Ptr", ptr %l6
  %t13 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t11, %"compiler/eval:Ptr" %t12, i64 8)
  store i64 %t13, ptr %l7
  br label %bb2
bb2:
  %t14 = load i64, ptr %l7, !tbaa !24
  %t15 = ashr i64 %t14, 16
  %t17 = and i64 %t15, 3
  call void @__olang_scope_close(ptr %s0)
  store i64 %t17, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eglobalsReady(ptr %v0, ptr %a0, i64 %a1, %"compiler/mir:Lvalue" %a2, { i64, [15 x i64] } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca { i64, [15 x i64] }
  %l4 = alloca ptr
  %l5 = alloca { i64, [4 x i64] }
  %l6 = alloca %"compiler/mir:Lvalue"
  %l7 = alloca %"compiler/mir:Lvalue"
  %l8 = alloca { i64, [4 x i64] }
  %l9 = alloca { i64, [4 x i64] }
  %l10 = alloca %"compiler/mir:Range"
  %l11 = alloca { i64, [4 x i64] }
  %l12 = alloca { i64, [4 x i64] }
  %l16 = alloca { i64, ptr }
  %l19 = alloca ptr
  %l23 = alloca i1
  %l26 = alloca i1
  %l29 = alloca i1
  %l42 = alloca i1
  %l55 = alloca i1
  %l64 = alloca i1
  %l65 = alloca i1
  %l69 = alloca i1
  %l70 = alloca i1
  %l74 = alloca i1
  %l91 = alloca i1
  %l99 = alloca i1
  %l100 = alloca i1
  %l104 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, [15 x i64] } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 25
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/eval:Machine", ptr %t4, i32 0, i32 58
  %t7 = load { i64, ptr }, ptr %t6, !tbaa !27
  store { i64, ptr } %t7, ptr %l16, !tbaa !27
  %t8 = load i64, ptr %l1, !tbaa !24
  %t10 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t11 = load ptr, ptr %t10, !tbaa !27
  %t12 = getelementptr %"compiler/eval:frame", ptr %t11, i64 %t8
  %t13 = getelementptr %"compiler/eval:frame", ptr %t12, i32 0, i32 0
  %t14 = load i64, ptr %t13, !tbaa !24
  %t17 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %v0, ptr %t3, i64 %t14)
  store ptr %t17, ptr %l19
  br label %bb1
bb1:
  %t18 = load ptr, ptr %l19, !tbaa !29
  store ptr %t18, ptr %l4, !tbaa !29
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/eval:Machine", ptr %t19, i32 0, i32 1
  %t22 = load i32, ptr %t21, !range !{i32 0, i32 2}
  %t24 = trunc i64 0 to i32
  %t25 = icmp eq i32 %t22, %t24
  br i1 %t25, label %bb2, label %bb3
bb2:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t31 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eglobalWritten(ptr %v0, ptr %t27, %"compiler/mir:Lvalue" %a2)
  store i1 %t31, ptr %l26
  br label %bb4
bb3:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb5
bb4:
  %t32 = load i1, ptr %l26, !tbaa !21
  %t33 = xor i1 %t32, true
  store i1 %t33, ptr %l23, !tbaa !21
  br label %bb5
bb5:
  %t35 = load i1, ptr %l23, !tbaa !21
  br i1 %t35, label %bb6, label %bb7
bb6:
  store i1 false, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t37 = load { i64, [15 x i64] }, ptr %l3
  %t39 = extractvalue { i64, [15 x i64] } %t37, 0
  %t40 = icmp eq i64 %t39, 0
  br i1 %t40, label %bb9, label %bb10
bb9:
  %t42 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t43 = getelementptr { { i64, [4 x i64] } }, ptr %t42, i32 0, i32 0
  %t44 = load { i64, [4 x i64] }, ptr %t43
  store { i64, [4 x i64] } %t44, ptr %l5
  br label %bb15
bb10:
  %t46 = load { i64, [15 x i64] }, ptr %l3
  %t48 = extractvalue { i64, [15 x i64] } %t46, 0
  %t49 = icmp eq i64 %t48, 7
  br i1 %t49, label %bb11, label %bb12
bb11:
  %t51 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t52 = getelementptr { { i64, [1 x i64] }, { i64, [4 x i64] }, i32 }, ptr %t51, i32 0, i32 1
  %t53 = load { i64, [4 x i64] }, ptr %t52
  store { i64, [4 x i64] } %t53, ptr %l5
  br label %bb15
bb12:
  %t55 = load { i64, [15 x i64] }, ptr %l3
  %t57 = extractvalue { i64, [15 x i64] } %t55, 0
  %t58 = icmp eq i64 %t57, 11
  br i1 %t58, label %bb13, label %bb14
bb13:
  %t60 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t61 = getelementptr { { i64, [4 x i64] }, i32, i32 }, ptr %t60, i32 0, i32 0
  %t62 = load { i64, [4 x i64] }, ptr %t61
  store { i64, [4 x i64] } %t62, ptr %l5
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load i64, ptr %l1, !tbaa !24
  %t66 = load { i64, [4 x i64] }, ptr %l5
  %t70 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eoperandReady(ptr %v0, ptr %t64, i64 %t65, { i64, [4 x i64] } %t66)
  store i1 %t70, ptr %l42
  br label %bb16
bb16:
  %t71 = load i1, ptr %l42, !tbaa !21
  store i1 %t71, ptr %l29, !tbaa !21
  br label %bb64
bb17:
  %t72 = load { i64, [15 x i64] }, ptr %l3
  %t74 = extractvalue { i64, [15 x i64] } %t72, 0
  %t75 = icmp eq i64 %t74, 1
  br i1 %t75, label %bb18, label %bb19
bb18:
  %t77 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t78 = getelementptr { %"compiler/mir:Lvalue", i32 }, ptr %t77, i32 0, i32 0
  %t79 = load %"compiler/mir:Lvalue", ptr %t78
  store %"compiler/mir:Lvalue" %t79, ptr %l6
  br label %bb24
bb19:
  %t81 = load { i64, [15 x i64] }, ptr %l3
  %t83 = extractvalue { i64, [15 x i64] } %t81, 0
  %t84 = icmp eq i64 %t83, 2
  br i1 %t84, label %bb20, label %bb21
bb20:
  %t86 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t87 = getelementptr { %"compiler/mir:Lvalue" }, ptr %t86, i32 0, i32 0
  %t88 = load %"compiler/mir:Lvalue", ptr %t87
  store %"compiler/mir:Lvalue" %t88, ptr %l6
  br label %bb24
bb21:
  %t90 = load { i64, [15 x i64] }, ptr %l3
  %t92 = extractvalue { i64, [15 x i64] } %t90, 0
  %t93 = icmp eq i64 %t92, 5
  br i1 %t93, label %bb22, label %bb23
bb22:
  %t95 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t96 = getelementptr { %"compiler/mir:Lvalue" }, ptr %t95, i32 0, i32 0
  %t97 = load %"compiler/mir:Lvalue", ptr %t96
  store %"compiler/mir:Lvalue" %t97, ptr %l6
  br label %bb24
bb23:
  br label %bb26
bb24:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t100 = load i64, ptr %l1, !tbaa !24
  %t101 = load %"compiler/mir:Lvalue", ptr %l6
  %t105 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eplaceReady(ptr %v0, ptr %t99, i64 %t100, %"compiler/mir:Lvalue" %t101)
  store i1 %t105, ptr %l55
  br label %bb25
bb25:
  %t106 = load i1, ptr %l55, !tbaa !21
  store i1 %t106, ptr %l29, !tbaa !21
  br label %bb64
bb26:
  %t107 = load { i64, [15 x i64] }, ptr %l3
  %t109 = extractvalue { i64, [15 x i64] } %t107, 0
  %t110 = icmp eq i64 %t109, 9
  br i1 %t110, label %bb27, label %bb28
bb27:
  %t112 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t113 = getelementptr { %"compiler/mir:Lvalue", { i64, [4 x i64] }, { i64, [4 x i64] }, i32 }, ptr %t112, i32 0, i32 0
  %t114 = load %"compiler/mir:Lvalue", ptr %t113
  store %"compiler/mir:Lvalue" %t114, ptr %l7
  %t116 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t117 = getelementptr { %"compiler/mir:Lvalue", { i64, [4 x i64] }, { i64, [4 x i64] }, i32 }, ptr %t116, i32 0, i32 1
  %t118 = load { i64, [4 x i64] }, ptr %t117
  store { i64, [4 x i64] } %t118, ptr %l8
  %t120 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t121 = getelementptr { %"compiler/mir:Lvalue", { i64, [4 x i64] }, { i64, [4 x i64] }, i32 }, ptr %t120, i32 0, i32 2
  %t122 = load { i64, [4 x i64] }, ptr %t121
  store { i64, [4 x i64] } %t122, ptr %l9
  br label %bb29
bb28:
  br label %bb39
bb29:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t125 = load i64, ptr %l1, !tbaa !24
  %t126 = load %"compiler/mir:Lvalue", ptr %l7
  %t130 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eplaceReady(ptr %v0, ptr %t124, i64 %t125, %"compiler/mir:Lvalue" %t126)
  store i1 %t130, ptr %l64
  br label %bb30
bb30:
  %t131 = load i1, ptr %l64, !tbaa !21
  br i1 %t131, label %bb31, label %bb32
bb31:
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t133 = load i64, ptr %l1, !tbaa !24
  %t134 = load { i64, [4 x i64] }, ptr %l8
  %t138 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eoperandReady(ptr %v0, ptr %t132, i64 %t133, { i64, [4 x i64] } %t134)
  store i1 %t138, ptr %l69
  br label %bb33
bb32:
  store i1 false, ptr %l65, !tbaa !21
  br label %bb34
bb33:
  %t139 = load i1, ptr %l69, !tbaa !21
  store i1 %t139, ptr %l65, !tbaa !21
  br label %bb34
bb34:
  %t140 = load i1, ptr %l65, !tbaa !21
  br i1 %t140, label %bb35, label %bb36
bb35:
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t142 = load i64, ptr %l1, !tbaa !24
  %t143 = load { i64, [4 x i64] }, ptr %l9
  %t147 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eoperandReady(ptr %v0, ptr %t141, i64 %t142, { i64, [4 x i64] } %t143)
  store i1 %t147, ptr %l74
  br label %bb37
bb36:
  store i1 false, ptr %l70, !tbaa !21
  br label %bb38
bb37:
  %t148 = load i1, ptr %l74, !tbaa !21
  store i1 %t148, ptr %l70, !tbaa !21
  br label %bb38
bb38:
  %t149 = load i1, ptr %l70, !tbaa !21
  store i1 %t149, ptr %l29, !tbaa !21
  br label %bb64
bb39:
  %t150 = load { i64, [15 x i64] }, ptr %l3
  %t152 = extractvalue { i64, [15 x i64] } %t150, 0
  %t153 = icmp eq i64 %t152, 3
  br i1 %t153, label %bb40, label %bb41
bb40:
  %t155 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t156 = getelementptr { i32, i32, %"compiler/mir:Range" }, ptr %t155, i32 0, i32 2
  %t157 = load %"compiler/mir:Range", ptr %t156
  store %"compiler/mir:Range" %t157, ptr %l10
  br label %bb48
bb41:
  %t159 = load { i64, [15 x i64] }, ptr %l3
  %t161 = extractvalue { i64, [15 x i64] } %t159, 0
  %t162 = icmp eq i64 %t161, 4
  br i1 %t162, label %bb42, label %bb43
bb42:
  %t164 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t165 = getelementptr { i32, i32, %"compiler/mir:Range" }, ptr %t164, i32 0, i32 2
  %t166 = load %"compiler/mir:Range", ptr %t165
  store %"compiler/mir:Range" %t166, ptr %l10
  br label %bb48
bb43:
  %t168 = load { i64, [15 x i64] }, ptr %l3
  %t170 = extractvalue { i64, [15 x i64] } %t168, 0
  %t171 = icmp eq i64 %t170, 6
  br i1 %t171, label %bb44, label %bb45
bb44:
  %t173 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t174 = getelementptr { i32, i64, %"compiler/mir:Range" }, ptr %t173, i32 0, i32 2
  %t175 = load %"compiler/mir:Range", ptr %t174
  store %"compiler/mir:Range" %t175, ptr %l10
  br label %bb48
bb45:
  %t177 = load { i64, [15 x i64] }, ptr %l3
  %t179 = extractvalue { i64, [15 x i64] } %t177, 0
  %t180 = icmp eq i64 %t179, 10
  br i1 %t180, label %bb46, label %bb47
bb46:
  %t182 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t183 = getelementptr { { i64, [2 x i64] }, i32, { i64, [1 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range" }, ptr %t182, i32 0, i32 3
  %t184 = load %"compiler/mir:Range", ptr %t183
  store %"compiler/mir:Range" %t184, ptr %l10
  br label %bb48
bb47:
  br label %bb50
bb48:
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t187 = load i64, ptr %l1, !tbaa !24
  %t188 = load ptr, ptr %l4, !tbaa !29
  %t189 = load %"compiler/mir:Range", ptr %l10
  %t194 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2erangeReady(ptr %v0, ptr %v0, ptr %t186, i64 %t187, ptr %t188, %"compiler/mir:Range" %t189)
  store i1 %t194, ptr %l91
  br label %bb49
bb49:
  %t195 = load i1, ptr %l91, !tbaa !21
  store i1 %t195, ptr %l29, !tbaa !21
  br label %bb64
bb50:
  %t196 = load { i64, [15 x i64] }, ptr %l3
  %t198 = extractvalue { i64, [15 x i64] } %t196, 0
  %t199 = icmp eq i64 %t198, 8
  br i1 %t199, label %bb51, label %bb52
bb51:
  %t201 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t202 = getelementptr { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } }, ptr %t201, i32 0, i32 2
  %t203 = load { i64, [4 x i64] }, ptr %t202
  store { i64, [4 x i64] } %t203, ptr %l11
  %t205 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t206 = getelementptr { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } }, ptr %t205, i32 0, i32 3
  %t207 = load { i64, [4 x i64] }, ptr %t206
  store { i64, [4 x i64] } %t207, ptr %l12
  br label %bb53
bb52:
  br label %bb59
bb53:
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t210 = load i64, ptr %l1, !tbaa !24
  %t211 = load { i64, [4 x i64] }, ptr %l11
  %t215 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eoperandReady(ptr %v0, ptr %t209, i64 %t210, { i64, [4 x i64] } %t211)
  store i1 %t215, ptr %l99
  br label %bb54
bb54:
  %t216 = load i1, ptr %l99, !tbaa !21
  br i1 %t216, label %bb55, label %bb56
bb55:
  %t217 = load ptr, ptr %l0, !tbaa !29
  %t218 = load i64, ptr %l1, !tbaa !24
  %t219 = load { i64, [4 x i64] }, ptr %l12
  %t223 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eoperandReady(ptr %v0, ptr %t217, i64 %t218, { i64, [4 x i64] } %t219)
  store i1 %t223, ptr %l104
  br label %bb57
bb56:
  store i1 false, ptr %l100, !tbaa !21
  br label %bb58
bb57:
  %t224 = load i1, ptr %l104, !tbaa !21
  store i1 %t224, ptr %l100, !tbaa !21
  br label %bb58
bb58:
  %t225 = load i1, ptr %l100, !tbaa !21
  store i1 %t225, ptr %l29, !tbaa !21
  br label %bb64
bb59:
  br i1 true, label %bb60, label %bb61
bb60:
  br label %bb62
bb61:
  br label %bb63
bb62:
  store i1 true, ptr %l29, !tbaa !21
  br label %bb64
bb63:
  call void @__olang_check_failed(ptr @olang_loc_d7d71e32b1402da8_19cce939fe39e26c)
  unreachable
bb64:
  %t226 = load i1, ptr %l29, !tbaa !21
  store i1 %t226, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2egrow(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l35 = alloca ptr
  %l36 = alloca i64
  %l39 = alloca i64
  %l43 = alloca { i64, ptr }
  %l52 = alloca i64
  %l55 = alloca i64
  %l74 = alloca { i64, ptr }
  %l76 = alloca { i64, ptr }
  %l83 = alloca ptr
  %l84 = alloca i64
  %l87 = alloca i64
  %l91 = alloca { i64, ptr }
  %l100 = alloca i64
  %l103 = alloca i64
  %l122 = alloca { i64, ptr }
  %l124 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"compiler/eval:Machine", ptr %t2, i32 0, i32 45
  %t5 = load { i64, ptr }, ptr %t4, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  %t9 = mul i64 8, %t7
  %t12 = icmp sle i64 %t1, %t9
  br i1 %t12, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/eval:Machine", ptr %t14, i32 0, i32 45
  %t17 = load { i64, ptr }, ptr %t16, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t17, 0
  %t21 = mul i64 8, %t19
  store i64 %t21, ptr %l2, !tbaa !24
  br label %bb4
bb4:
  %t23 = load i64, ptr %l2, !tbaa !24
  %t24 = load i64, ptr %l1, !tbaa !24
  %t27 = icmp slt i64 %t23, %t24
  %t29 = xor i1 %t27, true
  br i1 %t29, label %bb5, label %bb6
bb5:
  br label %bb9
bb6:
  br label %bb7
bb7:
  %t31 = load i64, ptr %l2, !tbaa !24
  %t33 = mul i64 %t31, 2
  store i64 %t33, ptr %l2, !tbaa !24
  br label %bb8
bb8:
  br label %bb4
bb9:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/eval:Machine", ptr %t35, i32 0, i32 45
  %t38 = load { i64, ptr }, ptr %t37, !tbaa !27
  store { i64, ptr } %t38, ptr %l3, !tbaa !27
  %t40 = load ptr, ptr %l0, !tbaa !29
  store ptr %t40, ptr %l35, !tbaa !29
  %t41 = ptrtoint ptr %v0 to i64
  store i64 %t41, ptr %l36, !tbaa !24
  %t42 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e45
  br i1 %t42, label %bb10, label %bb11
bb10:
  %t44 = call ptr @__olang_region_make(ptr %v0)
  %t45 = ptrtoint ptr %t44 to i64
  store i64 %t45, ptr %l36, !tbaa !24
  br label %bb11
bb11:
  %t46 = load i64, ptr %l2, !tbaa !24
  %t48 = sdiv i64 %t46, 8
  store i64 %t48, ptr %l39, !tbaa !24
  %t49 = load i64, ptr %l39, !tbaa !24
  %t50 = icmp sge i64 %t49, 0
  br i1 %t50, label %bb12, label %bb13
bb12:
  %t52 = load i64, ptr %l39, !tbaa !24
  %t53 = icmp sle i64 %t52, 1152921504606846975
  br i1 %t53, label %bb14, label %bb15
bb13:
  call void @__olang_check_failed(ptr @olang_loc_8ee299e344af3927_1a30263e89afea2b)
  unreachable
bb14:
  %t55 = load i64, ptr %l39, !tbaa !24
  %t56 = mul i64 %t55, 8
  %t57 = load i64, ptr %l36
  %t58 = inttoptr i64 %t57 to ptr
  %t59 = call ptr @__olang_scope_alloc_zeroed(ptr %t58, i64 %t56)
  %t60 = insertvalue { i64, ptr } undef, i64 %t55, 0
  %t61 = insertvalue { i64, ptr } %t60, ptr %t59, 1
  %t62 = load ptr, ptr %l35, !tbaa !29
  %t63 = getelementptr %"compiler/eval:Machine", ptr %t62, i32 0, i32 45
  %t64 = load { i64, ptr }, ptr %t63, !tbaa !27
  store { i64, ptr } %t64, ptr %l43, !tbaa !27
  %t66 = load ptr, ptr %l35, !tbaa !29
  %t67 = getelementptr %"compiler/eval:Machine", ptr %t66, i32 0, i32 45
  store { i64, ptr } %t61, ptr %t67, !tbaa !27
  %t68 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e45
  br i1 %t68, label %bb16, label %bb17
bb15:
  call void @__olang_check_failed(ptr @olang_loc_8ee299e344af3927_1a30263e89afea2b)
  unreachable
bb16:
  %t70 = load { i64, ptr }, ptr %l43
  %t71 = extractvalue { i64, ptr } %t70, 1
  call void @__olang_region_release(ptr %t71)
  store { i64, ptr } zeroinitializer, ptr %l43
  br label %bb17
bb17:
  store i64 0, ptr %l4, !tbaa !24
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"compiler/eval:Machine", ptr %t72, i32 0, i32 47
  %t75 = load i64, ptr %t74, !tbaa !24
  %t77 = add i64 %t75, 7
  %t79 = sdiv i64 %t77, 8
  store i64 %t79, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t81 = load i64, ptr %l5, !tbaa !24
  %t82 = load i64, ptr %l4, !tbaa !24
  %t85 = icmp sgt i64 %t81, %t82
  br i1 %t85, label %bb18, label %bb19
bb18:
  %t87 = load i64, ptr %l6, !tbaa !24
  %t89 = icmp sgt i64 %t87, 0
  br i1 %t89, label %bb20, label %bb21
bb19:
  store i64 0, ptr %l52, !tbaa !24
  br label %bb23
bb20:
  %t91 = load i64, ptr %l5, !tbaa !24
  %t92 = load i64, ptr %l4, !tbaa !24
  %t95 = sub i64 %t91, %t92
  %t96 = load i64, ptr %l6, !tbaa !24
  %t99 = add i64 %t95, %t96
  %t101 = sub i64 %t99, 1
  %t102 = load i64, ptr %l6, !tbaa !24
  %t105 = sdiv i64 %t101, %t102
  store i64 %t105, ptr %l55, !tbaa !24
  br label %bb22
bb21:
  store i64 0, ptr %l55, !tbaa !24
  br label %bb22
bb22:
  %t107 = load i64, ptr %l55, !tbaa !24
  store i64 %t107, ptr %l52, !tbaa !24
  br label %bb23
bb23:
  %t108 = load i64, ptr %l52, !tbaa !24
  store i64 %t108, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb24
bb24:
  %t109 = load i64, ptr %l8, !tbaa !24
  %t110 = load i64, ptr %l7, !tbaa !24
  %t113 = icmp slt i64 %t109, %t110
  %t115 = xor i1 %t113, true
  br i1 %t115, label %bb25, label %bb26
bb25:
  br label %bb29
bb26:
  br label %bb27
bb27:
  %t117 = load i64, ptr %l4, !tbaa !24
  %t118 = load i64, ptr %l8, !tbaa !24
  %t119 = load i64, ptr %l6, !tbaa !24
  %t122 = mul i64 %t118, %t119
  %t125 = add i64 %t117, %t122
  store i64 %t125, ptr %l9, !tbaa !24
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/eval:Machine", ptr %t127, i32 0, i32 45
  %t130 = load { i64, ptr }, ptr %t129, !tbaa !27
  store { i64, ptr } %t130, ptr %l74, !tbaa !27
  %t131 = load i64, ptr %l9, !tbaa !24
  %t132 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t132, ptr %l76, !tbaa !27
  %t133 = load i64, ptr %l9, !tbaa !24
  %t135 = getelementptr { i64, ptr }, ptr %l76, i32 0, i32 1
  %t136 = load ptr, ptr %t135, !tbaa !27
  %t137 = getelementptr i64, ptr %t136, i64 %t133
  %t138 = load i64, ptr %t137, !tbaa !34
  %t141 = getelementptr { i64, ptr }, ptr %l74, i32 0, i32 1
  %t142 = load ptr, ptr %t141, !tbaa !27
  %t143 = getelementptr i64, ptr %t142, i64 %t131
  store i64 %t138, ptr %t143, !tbaa !34
  br label %bb28
bb28:
  %t144 = load i64, ptr %l8, !tbaa !24
  %t146 = add i64 %t144, 1
  store i64 %t146, ptr %l8, !tbaa !24
  br label %bb24
bb29:
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t150 = getelementptr %"compiler/eval:Machine", ptr %t148, i32 0, i32 46
  %t151 = load { i64, ptr }, ptr %t150, !tbaa !27
  store { i64, ptr } %t151, ptr %l10, !tbaa !27
  %t153 = load ptr, ptr %l0, !tbaa !29
  store ptr %t153, ptr %l83, !tbaa !29
  %t154 = ptrtoint ptr %v0 to i64
  store i64 %t154, ptr %l84, !tbaa !24
  %t155 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e46
  br i1 %t155, label %bb30, label %bb31
bb30:
  %t157 = call ptr @__olang_region_make(ptr %v0)
  %t158 = ptrtoint ptr %t157 to i64
  store i64 %t158, ptr %l84, !tbaa !24
  br label %bb31
bb31:
  %t159 = load i64, ptr %l2, !tbaa !24
  %t161 = sdiv i64 %t159, 8
  store i64 %t161, ptr %l87, !tbaa !24
  %t162 = load i64, ptr %l87, !tbaa !24
  %t163 = icmp sge i64 %t162, 0
  br i1 %t163, label %bb32, label %bb33
bb32:
  %t165 = load i64, ptr %l87, !tbaa !24
  %t166 = icmp sle i64 %t165, 1152921504606846975
  br i1 %t166, label %bb34, label %bb35
bb33:
  call void @__olang_check_failed(ptr @olang_loc_9d9a614f49301d32_780986365d0a3a16)
  unreachable
bb34:
  %t168 = load i64, ptr %l87, !tbaa !24
  %t169 = mul i64 %t168, 8
  %t170 = load i64, ptr %l84
  %t171 = inttoptr i64 %t170 to ptr
  %t172 = call ptr @__olang_scope_alloc_zeroed(ptr %t171, i64 %t169)
  %t173 = insertvalue { i64, ptr } undef, i64 %t168, 0
  %t174 = insertvalue { i64, ptr } %t173, ptr %t172, 1
  %t175 = load ptr, ptr %l83, !tbaa !29
  %t176 = getelementptr %"compiler/eval:Machine", ptr %t175, i32 0, i32 46
  %t177 = load { i64, ptr }, ptr %t176, !tbaa !27
  store { i64, ptr } %t177, ptr %l91, !tbaa !27
  %t179 = load ptr, ptr %l83, !tbaa !29
  %t180 = getelementptr %"compiler/eval:Machine", ptr %t179, i32 0, i32 46
  store { i64, ptr } %t174, ptr %t180, !tbaa !27
  %t181 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e46
  br i1 %t181, label %bb36, label %bb37
bb35:
  call void @__olang_check_failed(ptr @olang_loc_9d9a614f49301d32_780986365d0a3a16)
  unreachable
bb36:
  %t183 = load { i64, ptr }, ptr %l91
  %t184 = extractvalue { i64, ptr } %t183, 1
  call void @__olang_region_release(ptr %t184)
  store { i64, ptr } zeroinitializer, ptr %l91
  br label %bb37
bb37:
  store i64 0, ptr %l11, !tbaa !24
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t187 = getelementptr %"compiler/eval:Machine", ptr %t185, i32 0, i32 47
  %t188 = load i64, ptr %t187, !tbaa !24
  %t190 = add i64 %t188, 7
  %t192 = sdiv i64 %t190, 8
  store i64 %t192, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t194 = load i64, ptr %l12, !tbaa !24
  %t195 = load i64, ptr %l11, !tbaa !24
  %t198 = icmp sgt i64 %t194, %t195
  br i1 %t198, label %bb38, label %bb39
bb38:
  %t200 = load i64, ptr %l13, !tbaa !24
  %t202 = icmp sgt i64 %t200, 0
  br i1 %t202, label %bb40, label %bb41
bb39:
  store i64 0, ptr %l100, !tbaa !24
  br label %bb43
bb40:
  %t204 = load i64, ptr %l12, !tbaa !24
  %t205 = load i64, ptr %l11, !tbaa !24
  %t208 = sub i64 %t204, %t205
  %t209 = load i64, ptr %l13, !tbaa !24
  %t212 = add i64 %t208, %t209
  %t214 = sub i64 %t212, 1
  %t215 = load i64, ptr %l13, !tbaa !24
  %t218 = sdiv i64 %t214, %t215
  store i64 %t218, ptr %l103, !tbaa !24
  br label %bb42
bb41:
  store i64 0, ptr %l103, !tbaa !24
  br label %bb42
bb42:
  %t220 = load i64, ptr %l103, !tbaa !24
  store i64 %t220, ptr %l100, !tbaa !24
  br label %bb43
bb43:
  %t221 = load i64, ptr %l100, !tbaa !24
  store i64 %t221, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb44
bb44:
  %t222 = load i64, ptr %l15, !tbaa !24
  %t223 = load i64, ptr %l14, !tbaa !24
  %t226 = icmp slt i64 %t222, %t223
  %t228 = xor i1 %t226, true
  br i1 %t228, label %bb45, label %bb46
bb45:
  br label %bb49
bb46:
  br label %bb47
bb47:
  %t230 = load i64, ptr %l11, !tbaa !24
  %t231 = load i64, ptr %l15, !tbaa !24
  %t232 = load i64, ptr %l13, !tbaa !24
  %t235 = mul i64 %t231, %t232
  %t238 = add i64 %t230, %t235
  store i64 %t238, ptr %l16, !tbaa !24
  %t240 = load ptr, ptr %l0, !tbaa !29
  %t242 = getelementptr %"compiler/eval:Machine", ptr %t240, i32 0, i32 46
  %t243 = load { i64, ptr }, ptr %t242, !tbaa !27
  store { i64, ptr } %t243, ptr %l122, !tbaa !27
  %t244 = load i64, ptr %l16, !tbaa !24
  %t245 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t245, ptr %l124, !tbaa !27
  %t246 = load i64, ptr %l16, !tbaa !24
  %t248 = getelementptr { i64, ptr }, ptr %l124, i32 0, i32 1
  %t249 = load ptr, ptr %t248, !tbaa !27
  %t250 = getelementptr i64, ptr %t249, i64 %t246
  %t251 = load i64, ptr %t250, !tbaa !34
  %t254 = getelementptr { i64, ptr }, ptr %l122, i32 0, i32 1
  %t255 = load ptr, ptr %t254, !tbaa !27
  %t256 = getelementptr i64, ptr %t255, i64 %t244
  store i64 %t251, ptr %t256, !tbaa !34
  br label %bb48
bb48:
  %t257 = load i64, ptr %l15, !tbaa !24
  %t259 = add i64 %t257, 1
  store i64 %t259, ptr %l15, !tbaa !24
  br label %bb44
bb49:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eheldScope(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l8 = alloca %"compiler/eval:Ptr"
  %l9 = alloca i64
  %l11 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l3, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2, ptr %l4, !tbaa !29
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t9 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2elocalPtr(ptr %v0, ptr %t3, i64 %a1, i32 %a2)
  store %"compiler/eval:Ptr" %t9, ptr %l8
  br label %bb1
bb1:
  %t10 = load ptr, ptr %l4, !tbaa !29
  %t11 = load %"compiler/eval:Ptr", ptr %l8
  %t12 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t10, %"compiler/eval:Ptr" %t11, i64 8)
  store i64 %t12, ptr %l9
  br label %bb2
bb2:
  %t13 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  %t14 = load ptr, ptr %l3, !tbaa !29
  %t15 = load i64, ptr %l9, !tbaa !24
  %t17 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintValue(ptr %v0, ptr %t14, i64 %t15, i32 %t13)
  store i64 %t17, ptr %l11
  br label %bb3
bb3:
  %t18 = load i64, ptr %l11, !tbaa !24
  store i64 %t18, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ei64(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i64
  %l7 = alloca i1
  %l10 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t1, i32 %t2)
  store i64 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i64, ptr @G_2ecompiler_2feval_2evInt, !tbaa !24
  %t7 = load i64, ptr %l4, !tbaa !24
  %t9 = icmp eq i64 %t7, %t6
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i32, ptr %l1, !tbaa !23
  %t15 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eibits(ptr %v0, ptr %t11, i32 %t12)
  store i64 %t15, ptr %l10
  br label %bb4
bb3:
  store i1 false, ptr %l7, !tbaa !21
  br label %bb5
bb4:
  %t16 = load i64, ptr %l10, !tbaa !24
  %t17 = icmp eq i64 %t16, 64
  store i1 %t17, ptr %l7, !tbaa !21
  br label %bb5
bb5:
  %t19 = load i1, ptr %l7, !tbaa !21
  store i1 %t19, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintArg(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, [4 x i64] }
  %l3 = alloca ptr
  %l7 = alloca i64
  %l11 = alloca i32
  %l12 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, [4 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l3, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t3 = load i64, ptr %l1, !tbaa !24
  %t4 = load { i64, [4 x i64] }, ptr %l2
  %t8 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %t2, i64 %t3, { i64, [4 x i64] } %t4)
  store i64 %t8, ptr %l7
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load i64, ptr %l1, !tbaa !24
  %t11 = load { i64, [4 x i64] }, ptr %l2
  %t15 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t9, i64 %t10, { i64, [4 x i64] } %t11)
  store i32 %t15, ptr %l11
  br label %bb2
bb2:
  %t16 = load ptr, ptr %l3, !tbaa !29
  %t17 = load i64, ptr %l7, !tbaa !24
  %t18 = load i32, ptr %l11, !tbaa !23
  %t19 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintValue(ptr %v0, ptr %t16, i64 %t17, i32 %t18)
  store i64 %t19, ptr %l12
  br label %bb3
bb3:
  %t20 = load i64, ptr %l12, !tbaa !24
  store i64 %t20, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2elayRepr(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l8 = alloca i32
  %l11 = alloca i1
  %l12 = alloca ptr
  %l15 = alloca i32
  %l16 = alloca i32
  %l19 = alloca i1
  %l22 = alloca i1
  %l25 = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  %t7 = load i32, ptr %l1, !tbaa !23
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t6, i32 %t7)
  store i32 %t10, ptr %l8
  br label %bb1
bb1:
  %t11 = load i32, ptr %l8, !range !{i32 0, i32 33}
  %t14 = trunc i64 18 to i32
  %t15 = icmp eq i32 %t11, %t14
  br i1 %t15, label %bb2, label %bb3
bb2:
  %t17 = load ptr, ptr %l2, !tbaa !29
  store ptr %t17, ptr %l12, !tbaa !29
  %t18 = load ptr, ptr %l2, !tbaa !29
  %t19 = load i32, ptr %l1, !tbaa !23
  %t22 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t18, i32 %t19)
  store i32 %t22, ptr %l15
  br label %bb4
bb3:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb6
bb4:
  %t23 = load ptr, ptr %l12, !tbaa !29
  %t24 = load i32, ptr %l15, !tbaa !23
  %t25 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t23, i32 %t24)
  store i32 %t25, ptr %l16
  br label %bb5
bb5:
  %t26 = load i32, ptr %l16, !range !{i32 0, i32 6}
  %t28 = trunc i64 4 to i32
  %t29 = icmp eq i32 %t26, %t28
  store i1 %t29, ptr %l11, !tbaa !21
  br label %bb6
bb6:
  %t31 = load i1, ptr %l11, !tbaa !21
  br i1 %t31, label %bb7, label %bb8
bb7:
  %t32 = load ptr, ptr %l2, !tbaa !29
  %t33 = load i32, ptr %l1, !tbaa !23
  %t36 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %t32, i32 %t33)
  store i1 %t36, ptr %l22
  br label %bb9
bb8:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb10
bb9:
  %t37 = load i1, ptr %l22, !tbaa !21
  store i1 %t37, ptr %l19, !tbaa !21
  br label %bb10
bb10:
  %t38 = load i1, ptr %l19, !tbaa !21
  br i1 %t38, label %bb11, label %bb12
bb11:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load i32, ptr %l1, !tbaa !23
  %t43 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elay(ptr %v0, ptr %t39, i32 %t40)
  store i1 %t43, ptr %l25
  br label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb14
bb14:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2elayoutOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %lp5 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca i32
  %l9 = alloca i1
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l26 = alloca i32
  %l32 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l36 = alloca i64
  %l37 = alloca { i64, ptr }
  %l40 = alloca i1
  %l46 = alloca i64
  %l47 = alloca ptr
  %l48 = alloca i64
  %l51 = alloca i64
  %l56 = alloca i32
  %l59 = alloca i32
  %l65 = alloca ptr
  %l68 = alloca i32
  %l69 = alloca { i64, ptr }
  %l74 = alloca i64
  %l77 = alloca i64
  %l95 = alloca ptr
  %l99 = alloca i64
  %l102 = alloca ptr
  %l106 = alloca i32
  %l114 = alloca i1
  %l118 = alloca i1
  %l122 = alloca { i64, ptr }
  %l129 = alloca { i64, ptr }
  %l132 = alloca ptr
  %l134 = alloca ptr
  %l137 = alloca { i64, ptr }
  %l145 = alloca ptr
  %l147 = alloca i32
  %l150 = alloca i32
  %l153 = alloca i32
  %l154 = alloca { i64, ptr }
  %l159 = alloca i64
  %l162 = alloca i64
  %l183 = alloca i32
  %l195 = alloca i1
  %l198 = alloca i32
  %l201 = alloca ptr
  %l204 = alloca i32
  %l210 = alloca i1
  %l214 = alloca ptr
  %l217 = alloca i32
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s14 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l4, !tbaa !29
  %t6 = load ptr, ptr %l4, !tbaa !29
  %t7 = load i32, ptr %l1, !tbaa !23
  %t9 = inttoptr i64 0 to ptr
  %t12 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %v2, ptr %t9, ptr %t6, i32 %t7)
  store { i64, ptr } %t12, ptr %l32
  br label %bb1
bb1:
  %t13 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t13, ptr %lp5
  %t14 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t15 = load ptr, ptr %lp5
  store { i64, ptr } %t14, ptr %t15, !tbaa !27
  %t16 = load ptr, ptr %l2, !tbaa !29
  %t17 = load ptr, ptr %lp5
  %t18 = load { i64, ptr }, ptr %t17, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %v2, ptr %t16, { i64, ptr } %t18)
  br label %bb2
bb2:
  %t21 = load ptr, ptr %lp5
  %t22 = load { i64, ptr }, ptr %t21, !tbaa !27
  store { i64, ptr } %t22, ptr %l35, !tbaa !27
  %t23 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t24 = extractvalue { i64, ptr } %t23, 0
  store i64 %t24, ptr %l36, !tbaa !24
  %t25 = load i64, ptr %l36, !tbaa !24
  %t26 = mul i64 %t25, 1
  %t27 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t26)
  %t28 = insertvalue { i64, ptr } undef, i64 %t25, 0
  %t29 = insertvalue { i64, ptr } %t28, ptr %t27, 1
  store { i64, ptr } %t29, ptr %l37, !tbaa !27
  %t30 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !27
  %t32 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !27
  %t34 = load i64, ptr %l36, !tbaa !24
  %t35 = mul i64 %t34, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t31, ptr %t33, i64 %t35, i1 false)
  %t36 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t37 = load ptr, ptr %l3, !tbaa !29
  %t41 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6b5ccacad8db807339a3579aa8c82ff8(ptr %v2, ptr %s0, ptr %t37, { i64, ptr } %t36)
  store i1 %t41, ptr %l40
  br label %bb3
bb3:
  %t42 = load i1, ptr %l40, !tbaa !21
  br i1 %t42, label %bb4, label %bb5
bb4:
  store %olang.scope zeroinitializer, ptr %s1
  %t43 = load ptr, ptr %l2, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s1, ptr %t43, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) })
  br label %bb6
bb5:
  br label %bb7
bb6:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb7:
  %t45 = load ptr, ptr %l3, !tbaa !29
  %t46 = load ptr, ptr %lp5
  %t47 = load { i64, ptr }, ptr %t46, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H2b85ceff512af6e6ca26c554a1c16247(ptr %v2, ptr %v2, ptr %t45, { i64, ptr } %t47, i1 true)
  br label %bb8
bb8:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t51 = load i32, ptr %l1, !tbaa !23
  %t54 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t50, i32 %t51)
  store i64 %t54, ptr %l46
  br label %bb9
bb9:
  %t55 = load i64, ptr %l46, !tbaa !24
  store i64 %t55, ptr %l7, !tbaa !24
  %t56 = load ptr, ptr %l2, !tbaa !29
  store ptr %t56, ptr %l47, !tbaa !29
  %t57 = load i64, ptr %l7, !tbaa !24
  store i64 %t57, ptr %l48, !tbaa !24
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t59 = load i32, ptr %l1, !tbaa !23
  %t62 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t58, i32 %t59)
  store i64 %t62, ptr %l51
  br label %bb10
bb10:
  %t63 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t64 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t65 = load i64, ptr %l48, !tbaa !24
  %t66 = call i64 @__olang_fmt_i64(ptr null, i64 %t65)
  %t67 = add i64 %t64, %t66
  %t68 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t69 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t70 = add i64 %t67, %t69
  %t71 = load i64, ptr %l51, !tbaa !24
  %t72 = call i64 @__olang_fmt_i64(ptr null, i64 %t71)
  %t73 = add i64 %t70, %t72
  %t74 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t73)
  call void @olang_textcopy(ptr %t74, ptr %t63, i64 %t64)
  %t75 = getelementptr i8, ptr %t74, i64 %t64
  %t76 = call i64 @__olang_fmt_i64(ptr %t75, i64 %t65)
  %t77 = getelementptr i8, ptr %t75, i64 %t66
  call void @olang_textcopy(ptr %t77, ptr %t68, i64 %t69)
  %t78 = getelementptr i8, ptr %t77, i64 %t69
  %t79 = call i64 @__olang_fmt_i64(ptr %t78, i64 %t71)
  %t80 = insertvalue { i64, ptr } undef, i64 %t73, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t74, 1
  %t83 = extractvalue { i64, ptr } %t81, 0
  %t84 = extractvalue { i64, ptr } %t81, 1
  %t85 = mul i64 %t83, 1
  %t86 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t85)
  call void @llvm.memcpy.p0.p0.i64(ptr %t86, ptr %t84, i64 %t85, i1 false)
  %t87 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t88 = insertvalue { i64, ptr } %t87, ptr %t86, 1
  %t89 = load ptr, ptr %l47, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s0, ptr %t89, { i64, ptr } %t88)
  br label %bb11
bb11:
  %t91 = load ptr, ptr %l4, !tbaa !29
  %t92 = load i32, ptr %l1, !tbaa !23
  %t95 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t91, i32 %t92)
  store i32 %t95, ptr %l56
  br label %bb12
bb12:
  %t96 = load i32, ptr %l56, !tbaa !23
  store i32 %t96, ptr %l8, !tbaa !23
  %t97 = load ptr, ptr %l4, !tbaa !29
  %t98 = load i32, ptr %l8, !tbaa !23
  %t101 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t97, i32 %t98)
  store i32 %t101, ptr %l59
  br label %bb13
bb13:
  %t102 = load i32, ptr %l59, !range !{i32 0, i32 33}
  %t104 = trunc i64 18 to i32
  %t105 = icmp eq i32 %t102, %t104
  store i1 %t105, ptr %l9, !tbaa !21
  %t107 = load i64, ptr %l7, !tbaa !24
  %t108 = load i64, ptr @G_2ecompiler_2feval_2evAgg, !tbaa !24
  %t111 = icmp eq i64 %t107, %t108
  br i1 %t111, label %bb14, label %bb15
bb14:
  store %olang.scope zeroinitializer, ptr %s4
  store i64 0, ptr %l10, !tbaa !24
  %t113 = load ptr, ptr %l4, !tbaa !29
  store ptr %t113, ptr %l65, !tbaa !29
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t115 = load i32, ptr %l1, !tbaa !23
  %t118 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2epartList(ptr %v0, ptr %t114, i32 %t115)
  store i32 %t118, ptr %l68
  br label %bb16
bb15:
  br label %bb34
bb16:
  %t119 = load ptr, ptr %l65, !tbaa !29
  %t120 = load i32, ptr %l68, !tbaa !23
  %t121 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s4, ptr %t119, i32 %t120)
  store { i64, ptr } %t121, ptr %l69
  br label %bb17
bb17:
  %t122 = load { i64, ptr }, ptr %l69, !tbaa !27
  %t123 = extractvalue { i64, ptr } %t122, 0
  store i64 %t123, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t125 = load i64, ptr %l11, !tbaa !24
  %t126 = load i64, ptr %l10, !tbaa !24
  %t129 = icmp sgt i64 %t125, %t126
  br i1 %t129, label %bb18, label %bb19
bb18:
  %t131 = load i64, ptr %l12, !tbaa !24
  %t133 = icmp sgt i64 %t131, 0
  br i1 %t133, label %bb20, label %bb21
bb19:
  store i64 0, ptr %l74, !tbaa !24
  br label %bb23
bb20:
  %t135 = load i64, ptr %l11, !tbaa !24
  %t136 = load i64, ptr %l10, !tbaa !24
  %t139 = sub i64 %t135, %t136
  %t140 = load i64, ptr %l12, !tbaa !24
  %t143 = add i64 %t139, %t140
  %t145 = sub i64 %t143, 1
  %t146 = load i64, ptr %l12, !tbaa !24
  %t149 = sdiv i64 %t145, %t146
  store i64 %t149, ptr %l77, !tbaa !24
  br label %bb22
bb21:
  store i64 0, ptr %l77, !tbaa !24
  br label %bb22
bb22:
  %t151 = load i64, ptr %l77, !tbaa !24
  store i64 %t151, ptr %l74, !tbaa !24
  br label %bb23
bb23:
  %t152 = load i64, ptr %l74, !tbaa !24
  store i64 %t152, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb24
bb24:
  store %olang.scope zeroinitializer, ptr %s5
  %t153 = load i64, ptr %l14, !tbaa !24
  %t154 = load i64, ptr %l13, !tbaa !24
  %t157 = icmp slt i64 %t153, %t154
  %t159 = xor i1 %t157, true
  br i1 %t159, label %bb25, label %bb26
bb25:
  call void @__olang_scope_close(ptr %s5)
  br label %bb33
bb26:
  br label %bb27
bb27:
  %t161 = load i64, ptr %l10, !tbaa !24
  %t162 = load i64, ptr %l14, !tbaa !24
  %t163 = load i64, ptr %l12, !tbaa !24
  %t166 = mul i64 %t162, %t163
  %t169 = add i64 %t161, %t166
  store i64 %t169, ptr %l15, !tbaa !24
  %t171 = load ptr, ptr %l2, !tbaa !29
  store ptr %t171, ptr %l95, !tbaa !29
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t173 = load i32, ptr %l1, !tbaa !23
  %t174 = load i64, ptr %l15, !tbaa !24
  %t178 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2epartOffset(ptr %v0, ptr %t172, i32 %t173, i64 %t174)
  store i64 %t178, ptr %l99
  br label %bb28
bb28:
  %t179 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t180 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  %t181 = load i64, ptr %l99, !tbaa !24
  %t182 = call i64 @__olang_fmt_i64(ptr null, i64 %t181)
  %t183 = add i64 %t180, %t182
  %t184 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t185 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  %t186 = add i64 %t183, %t185
  %t187 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t186)
  call void @olang_textcopy(ptr %t187, ptr %t179, i64 %t180)
  %t188 = getelementptr i8, ptr %t187, i64 %t180
  %t189 = call i64 @__olang_fmt_i64(ptr %t188, i64 %t181)
  %t190 = getelementptr i8, ptr %t188, i64 %t182
  call void @olang_textcopy(ptr %t190, ptr %t184, i64 %t185)
  %t191 = insertvalue { i64, ptr } undef, i64 %t186, 0
  %t192 = insertvalue { i64, ptr } %t191, ptr %t187, 1
  %t194 = extractvalue { i64, ptr } %t192, 0
  %t195 = extractvalue { i64, ptr } %t192, 1
  %t196 = mul i64 %t194, 1
  %t197 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t196)
  call void @llvm.memcpy.p0.p0.i64(ptr %t197, ptr %t195, i64 %t196, i1 false)
  %t198 = insertvalue { i64, ptr } undef, i64 %t194, 0
  %t199 = insertvalue { i64, ptr } %t198, ptr %t197, 1
  %t200 = load ptr, ptr %l95, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s5, ptr %t200, { i64, ptr } %t199)
  br label %bb29
bb29:
  %t202 = load ptr, ptr %l0, !tbaa !29
  store ptr %t202, ptr %l102, !tbaa !29
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t204 = load i32, ptr %l1, !tbaa !23
  %t205 = load i64, ptr %l15, !tbaa !24
  %t209 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2epartType(ptr %v0, ptr %t203, i32 %t204, i64 %t205)
  store i32 %t209, ptr %l106
  br label %bb30
bb30:
  %t210 = load ptr, ptr %l2, !tbaa !29
  %t211 = load ptr, ptr %l3, !tbaa !29
  %t212 = load ptr, ptr %l102, !tbaa !29
  %t213 = load i32, ptr %l106, !tbaa !23
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2elayoutOf(ptr %v0, ptr %v1, ptr %v2, ptr %t212, i32 %t213, ptr %t210, ptr %t211)
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s5)
  br label %bb32
bb32:
  %t216 = load i64, ptr %l14, !tbaa !24
  %t218 = add i64 %t216, 1
  store i64 %t218, ptr %l14, !tbaa !24
  br label %bb24
bb33:
  call void @__olang_scope_close(ptr %s4)
  br label %bb34
bb34:
  %t220 = load i64, ptr %l7, !tbaa !24
  %t221 = load i64, ptr @G_2ecompiler_2feval_2evEnum, !tbaa !24
  %t224 = icmp eq i64 %t220, %t221
  br i1 %t224, label %bb35, label %bb36
bb35:
  store i1 true, ptr %l114, !tbaa !21
  br label %bb37
bb36:
  %t226 = load i64, ptr %l7, !tbaa !24
  %t227 = load i64, ptr @G_2ecompiler_2feval_2evOrd, !tbaa !24
  %t230 = icmp eq i64 %t226, %t227
  store i1 %t230, ptr %l114, !tbaa !21
  br label %bb37
bb37:
  %t232 = load i1, ptr %l114, !tbaa !21
  br i1 %t232, label %bb38, label %bb39
bb38:
  %t233 = load i1, ptr %l9, !tbaa !21
  store i1 %t233, ptr %l118, !tbaa !21
  br label %bb40
bb39:
  store i1 false, ptr %l118, !tbaa !21
  br label %bb40
bb40:
  %t235 = load i1, ptr %l118, !tbaa !21
  br i1 %t235, label %bb41, label %bb42
bb41:
  store %olang.scope zeroinitializer, ptr %s9
  %t236 = load ptr, ptr %l4, !tbaa !29
  %t237 = load i32, ptr %l8, !tbaa !23
  %t240 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCaseNames(ptr %v0, ptr %s9, ptr %t236, i32 %t237)
  store { i64, ptr } %t240, ptr %l122
  br label %bb43
bb42:
  br label %bb52
bb43:
  %t241 = load { i64, ptr }, ptr %l122, !tbaa !27
  store { i64, ptr } %t241, ptr %l16, !tbaa !27
  store i64 0, ptr %l17, !tbaa !24
  %t242 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t244 = extractvalue { i64, ptr } %t242, 0
  store i64 %t244, ptr %l18, !tbaa !24
  br label %bb44
bb44:
  store %olang.scope zeroinitializer, ptr %s10
  %t246 = load i64, ptr %l17, !tbaa !24
  %t247 = load i64, ptr %l18, !tbaa !24
  %t250 = icmp slt i64 %t246, %t247
  %t252 = xor i1 %t250, true
  br i1 %t252, label %bb45, label %bb46
bb45:
  call void @__olang_scope_close(ptr %s10)
  br label %bb51
bb46:
  br label %bb47
bb47:
  %t254 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t254, ptr %l129, !tbaa !27
  %t255 = load i64, ptr %l17, !tbaa !24
  %t257 = getelementptr { i64, ptr }, ptr %l129, i32 0, i32 1
  %t258 = load ptr, ptr %t257, !tbaa !27
  %t259 = getelementptr i32, ptr %t258, i64 %t255
  %t260 = load i32, ptr %t259, !tbaa !33
  %t262 = load ptr, ptr %l2, !tbaa !29
  store ptr %t262, ptr %l132, !tbaa !29
  %t263 = load ptr, ptr %l4, !tbaa !29
  %t265 = getelementptr %"compiler/types:Table", ptr %t263, i32 0, i32 0
  %t266 = load ptr, ptr %t265, !tbaa !29
  store ptr %t266, ptr %l134, !tbaa !29
  %t268 = load ptr, ptr %l134, !tbaa !29
  %t269 = call ptr @__olang_scope_of(ptr %t268, ptr null)
  %t270 = ptrtoint ptr %t269 to i64
  %t272 = inttoptr i64 %t270 to ptr
  %t273 = load ptr, ptr %l134, !tbaa !29
  %t275 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %t272, ptr %s10, ptr %t273, i32 %t260)
  store { i64, ptr } %t275, ptr %l137
  br label %bb48
bb48:
  %t276 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t277 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  %t278 = load { i64, ptr }, ptr %l137, !tbaa !27
  %t279 = extractvalue { i64, ptr } %t278, 1
  %t280 = extractvalue { i64, ptr } %t278, 0
  %t281 = add i64 %t277, %t280
  %t282 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t281)
  call void @olang_textcopy(ptr %t282, ptr %t276, i64 %t277)
  %t283 = getelementptr i8, ptr %t282, i64 %t277
  call void @olang_textcopy(ptr %t283, ptr %t279, i64 %t280)
  %t284 = insertvalue { i64, ptr } undef, i64 %t281, 0
  %t285 = insertvalue { i64, ptr } %t284, ptr %t282, 1
  %t287 = extractvalue { i64, ptr } %t285, 0
  %t288 = extractvalue { i64, ptr } %t285, 1
  %t289 = mul i64 %t287, 1
  %t290 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t289)
  call void @llvm.memcpy.p0.p0.i64(ptr %t290, ptr %t288, i64 %t289, i1 false)
  %t291 = insertvalue { i64, ptr } undef, i64 %t287, 0
  %t292 = insertvalue { i64, ptr } %t291, ptr %t290, 1
  %t293 = load ptr, ptr %l132, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s10, ptr %t293, { i64, ptr } %t292)
  br label %bb49
bb49:
  call void @__olang_scope_close(ptr %s10)
  br label %bb50
bb50:
  %t295 = load i64, ptr %l17, !tbaa !24
  %t297 = add i64 %t295, 1
  store i64 %t297, ptr %l17, !tbaa !24
  br label %bb44
bb51:
  call void @__olang_scope_close(ptr %s9)
  br label %bb52
bb52:
  %t299 = load i64, ptr %l7, !tbaa !24
  %t300 = load i64, ptr @G_2ecompiler_2feval_2evEnum, !tbaa !24
  %t303 = icmp eq i64 %t299, %t300
  br i1 %t303, label %bb53, label %bb54
bb53:
  store %olang.scope zeroinitializer, ptr %s14
  store i64 0, ptr %l20, !tbaa !24
  %t305 = load ptr, ptr %l4, !tbaa !29
  store ptr %t305, ptr %l145, !tbaa !29
  %t306 = load i1, ptr %l9, !tbaa !21
  br i1 %t306, label %bb55, label %bb56
bb54:
  br label %bb78
bb55:
  %t308 = load ptr, ptr %l4, !tbaa !29
  %t309 = load i32, ptr %l8, !tbaa !23
  %t312 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t308, i32 %t309)
  store i32 %t312, ptr %l150
  br label %bb57
bb56:
  %t313 = load ptr, ptr %l4, !tbaa !29
  %t314 = load i32, ptr %l8, !tbaa !23
  %t317 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %v0, ptr %t313, i32 %t314)
  store i32 %t317, ptr %l153
  br label %bb58
bb57:
  %t318 = load i32, ptr %l150, !tbaa !23
  store i32 %t318, ptr %l147, !tbaa !23
  br label %bb59
bb58:
  %t319 = load i32, ptr %l153, !tbaa !23
  store i32 %t319, ptr %l147, !tbaa !23
  br label %bb59
bb59:
  %t320 = load ptr, ptr %l145, !tbaa !29
  %t321 = load i32, ptr %l147, !tbaa !23
  %t322 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s14, ptr %t320, i32 %t321)
  store { i64, ptr } %t322, ptr %l154
  br label %bb60
bb60:
  %t323 = load { i64, ptr }, ptr %l154, !tbaa !27
  %t324 = extractvalue { i64, ptr } %t323, 0
  store i64 %t324, ptr %l21, !tbaa !24
  store i64 1, ptr %l22, !tbaa !24
  %t326 = load i64, ptr %l21, !tbaa !24
  %t327 = load i64, ptr %l20, !tbaa !24
  %t330 = icmp sgt i64 %t326, %t327
  br i1 %t330, label %bb61, label %bb62
bb61:
  %t332 = load i64, ptr %l22, !tbaa !24
  %t334 = icmp sgt i64 %t332, 0
  br i1 %t334, label %bb63, label %bb64
bb62:
  store i64 0, ptr %l159, !tbaa !24
  br label %bb66
bb63:
  %t336 = load i64, ptr %l21, !tbaa !24
  %t337 = load i64, ptr %l20, !tbaa !24
  %t340 = sub i64 %t336, %t337
  %t341 = load i64, ptr %l22, !tbaa !24
  %t344 = add i64 %t340, %t341
  %t346 = sub i64 %t344, 1
  %t347 = load i64, ptr %l22, !tbaa !24
  %t350 = sdiv i64 %t346, %t347
  store i64 %t350, ptr %l162, !tbaa !24
  br label %bb65
bb64:
  store i64 0, ptr %l162, !tbaa !24
  br label %bb65
bb65:
  %t352 = load i64, ptr %l162, !tbaa !24
  store i64 %t352, ptr %l159, !tbaa !24
  br label %bb66
bb66:
  %t353 = load i64, ptr %l159, !tbaa !24
  store i64 %t353, ptr %l23, !tbaa !24
  store i64 0, ptr %l24, !tbaa !24
  br label %bb67
bb67:
  %t354 = load i64, ptr %l24, !tbaa !24
  %t355 = load i64, ptr %l23, !tbaa !24
  %t358 = icmp slt i64 %t354, %t355
  %t360 = xor i1 %t358, true
  br i1 %t360, label %bb68, label %bb69
bb68:
  br label %bb77
bb69:
  br label %bb70
bb70:
  %t362 = load i64, ptr %l20, !tbaa !24
  %t363 = load i64, ptr %l24, !tbaa !24
  %t364 = load i64, ptr %l22, !tbaa !24
  %t367 = mul i64 %t363, %t364
  %t370 = add i64 %t362, %t367
  %t372 = load ptr, ptr %l0, !tbaa !29
  %t373 = load i32, ptr %l1, !tbaa !23
  %t378 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2epayloadType(ptr %v0, ptr %t372, i32 %t373, i64 %t370)
  store i32 %t378, ptr %l183
  br label %bb71
bb71:
  %t379 = load i32, ptr %l183, !tbaa !23
  store i32 %t379, ptr %l26, !tbaa !23
  %t380 = load i32, ptr %l26, !tbaa !23
  %t382 = icmp ne i32 %t380, 0
  br i1 %t382, label %bb72, label %bb73
bb72:
  %t384 = load ptr, ptr %l0, !tbaa !29
  %t385 = load i32, ptr %l26, !tbaa !23
  %t386 = load ptr, ptr %l2, !tbaa !29
  %t387 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2elayoutOf(ptr %v0, ptr %v1, ptr %v2, ptr %t384, i32 %t385, ptr %t386, ptr %t387)
  br label %bb74
bb73:
  br label %bb75
bb74:
  br label %bb75
bb75:
  br label %bb76
bb76:
  %t392 = load i64, ptr %l24, !tbaa !24
  %t394 = add i64 %t392, 1
  store i64 %t394, ptr %l24, !tbaa !24
  br label %bb67
bb77:
  call void @__olang_scope_close(ptr %s14)
  br label %bb78
bb78:
  %t396 = load i64, ptr %l7, !tbaa !24
  %t397 = load i64, ptr @G_2ecompiler_2feval_2evPtr, !tbaa !24
  %t400 = icmp eq i64 %t396, %t397
  br i1 %t400, label %bb79, label %bb80
bb79:
  %t402 = load ptr, ptr %l4, !tbaa !29
  %t403 = load i32, ptr %l8, !tbaa !23
  %t406 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t402, i32 %t403)
  store i32 %t406, ptr %l198
  br label %bb81
bb80:
  store i1 false, ptr %l195, !tbaa !21
  br label %bb82
bb81:
  %t407 = load i32, ptr %l198, !range !{i32 0, i32 33}
  %t409 = trunc i64 20 to i32
  %t410 = icmp eq i32 %t407, %t409
  store i1 %t410, ptr %l195, !tbaa !21
  br label %bb82
bb82:
  %t412 = load i1, ptr %l195, !tbaa !21
  br i1 %t412, label %bb83, label %bb84
bb83:
  %t413 = load ptr, ptr %l0, !tbaa !29
  store ptr %t413, ptr %l201, !tbaa !29
  %t414 = load ptr, ptr %l4, !tbaa !29
  %t415 = load i32, ptr %l8, !tbaa !23
  %t418 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t414, i32 %t415)
  store i32 %t418, ptr %l204
  br label %bb85
bb84:
  br label %bb87
bb85:
  %t419 = load ptr, ptr %l2, !tbaa !29
  %t420 = load ptr, ptr %l3, !tbaa !29
  %t421 = load ptr, ptr %l201, !tbaa !29
  %t422 = load i32, ptr %l204, !tbaa !23
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2elayoutOf(ptr %v0, ptr %v1, ptr %v2, ptr %t421, i32 %t422, ptr %t419, ptr %t420)
  br label %bb86
bb86:
  br label %bb87
bb87:
  %t425 = load i64, ptr %l7, !tbaa !24
  %t426 = load i64, ptr @G_2ecompiler_2feval_2evPair, !tbaa !24
  %t429 = icmp eq i64 %t425, %t426
  br i1 %t429, label %bb88, label %bb89
bb88:
  store i1 true, ptr %l210, !tbaa !21
  br label %bb90
bb89:
  %t431 = load i64, ptr %l7, !tbaa !24
  %t432 = load i64, ptr @G_2ecompiler_2feval_2evFixed, !tbaa !24
  %t435 = icmp eq i64 %t431, %t432
  store i1 %t435, ptr %l210, !tbaa !21
  br label %bb90
bb90:
  %t437 = load i1, ptr %l210, !tbaa !21
  br i1 %t437, label %bb91, label %bb92
bb91:
  %t438 = load ptr, ptr %l0, !tbaa !29
  store ptr %t438, ptr %l214, !tbaa !29
  %t439 = load ptr, ptr %l0, !tbaa !29
  %t440 = load i32, ptr %l1, !tbaa !23
  %t443 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eelemOf(ptr %v0, ptr %t439, i32 %t440)
  store i32 %t443, ptr %l217
  br label %bb93
bb92:
  br label %bb95
bb93:
  %t444 = load ptr, ptr %l2, !tbaa !29
  %t445 = load ptr, ptr %l3, !tbaa !29
  %t446 = load ptr, ptr %l214, !tbaa !29
  %t447 = load i32, ptr %l217, !tbaa !23
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2elayoutOf(ptr %v0, ptr %v1, ptr %v2, ptr %t446, i32 %t447, ptr %t444, ptr %t445)
  br label %bb94
bb94:
  br label %bb95
bb95:
  %t450 = load ptr, ptr %l2, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s0, ptr %t450, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d10, i32 0, i32 1) })
  br label %bb96
bb96:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eloadCaptures(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, %"compiler/eval:Ptr" %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca %"compiler/eval:Ptr"
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca { { i64, ptr }, i64 }
  %l13 = alloca { i64, ptr }
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
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca { i64, [1 x i64] }
  %l28 = alloca i64
  %l29 = alloca i64
  %l32 = alloca i64
  %l40 = alloca i64
  %l46 = alloca i64
  %l50 = alloca i64
  %l53 = alloca i64
  %l71 = alloca i64
  %l73 = alloca ptr
  %l77 = alloca i32
  %l79 = alloca %"compiler/mir:Local"
  %l85 = alloca { { i64, ptr }, i64 }
  %l90 = alloca i64
  %l94 = alloca i64
  %l97 = alloca i64
  %l115 = alloca ptr
  %l116 = alloca ptr
  %l117 = alloca i64
  %l121 = alloca i32
  %l122 = alloca %"compiler/eval:Ptr"
  %l128 = alloca %"compiler/eval:Ptr"
  %l132 = alloca i64
  %l138 = alloca i64
  %l142 = alloca i64
  %l145 = alloca i64
  %l166 = alloca { i64, [1 x i64] }
  %l167 = alloca i64
  %l174 = alloca i1
  %l175 = alloca i64
  %l178 = alloca i64
  %l181 = alloca { i64, ptr }
  %l183 = alloca { i64, ptr }
  %l187 = alloca i64
  %l188 = alloca ptr
  %l196 = alloca %"compiler/eval:Ptr"
  %l197 = alloca i64
  %s0 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s13 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  store %"compiler/eval:Ptr" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = getelementptr %"compiler/mir:Fn", ptr %t1, i32 0, i32 5
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v1, ptr %t3)
  store i64 %t5, ptr %l32
  br label %bb1
bb1:
  %t6 = load i64, ptr %l32, !tbaa !24
  %t7 = icmp eq i64 %t6, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb3:
  br label %bb4
bb4:
  %t9 = getelementptr %"compiler/eval:Ptr", ptr %l3, i32 0, i32 0
  %t10 = load i64, ptr %t9, !tbaa !24
  %t12 = icmp eq i64 %t10, 0
  br i1 %t12, label %bb5, label %bb6
bb5:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNullCall, !tbaa !27
  %t16 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t16, ptr %t14, { i64, ptr } %t15)
  br label %bb7
bb6:
  br label %bb8
bb7:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb8:
  %t19 = load ptr, ptr %l2, !tbaa !29
  %t21 = getelementptr %"compiler/mir:Fn", ptr %t19, i32 0, i32 5
  %t23 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v1, ptr %t21)
  store i64 %t23, ptr %l40
  br label %bb9
bb9:
  %t24 = load i64, ptr %l40, !tbaa !24
  %t25 = icmp sge i64 %t24, 0
  br i1 %t25, label %bb10, label %bb11
bb10:
  %t27 = load i64, ptr %l40, !tbaa !24
  %t28 = icmp sle i64 %t27, 2305843009213693951
  br i1 %t28, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_d3df02eef027536f_dc15be465081b3fb)
  unreachable
bb12:
  %t30 = load i64, ptr %l40, !tbaa !24
  %t31 = mul i64 %t30, 4
  %t32 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t31)
  %t33 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t34 = insertvalue { i64, ptr } %t33, ptr %t32, 1
  store { i64, ptr } %t34, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t36 = load ptr, ptr %l2, !tbaa !29
  %t38 = getelementptr %"compiler/mir:Fn", ptr %t36, i32 0, i32 5
  %t40 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v1, ptr %t38)
  store i64 %t40, ptr %l46
  br label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_d3df02eef027536f_dc15be465081b3fb)
  unreachable
bb14:
  %t41 = load i64, ptr %l46, !tbaa !24
  store i64 %t41, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t42 = load i64, ptr %l7, !tbaa !24
  %t43 = load i64, ptr %l6, !tbaa !24
  %t46 = icmp sgt i64 %t42, %t43
  br i1 %t46, label %bb15, label %bb16
bb15:
  %t48 = load i64, ptr %l8, !tbaa !24
  %t50 = icmp sgt i64 %t48, 0
  br i1 %t50, label %bb17, label %bb18
bb16:
  store i64 0, ptr %l50, !tbaa !24
  br label %bb20
bb17:
  %t52 = load i64, ptr %l7, !tbaa !24
  %t53 = load i64, ptr %l6, !tbaa !24
  %t56 = sub i64 %t52, %t53
  %t57 = load i64, ptr %l8, !tbaa !24
  %t60 = add i64 %t56, %t57
  %t62 = sub i64 %t60, 1
  %t63 = load i64, ptr %l8, !tbaa !24
  %t66 = sdiv i64 %t62, %t63
  store i64 %t66, ptr %l53, !tbaa !24
  br label %bb19
bb18:
  store i64 0, ptr %l53, !tbaa !24
  br label %bb19
bb19:
  %t68 = load i64, ptr %l53, !tbaa !24
  store i64 %t68, ptr %l50, !tbaa !24
  br label %bb20
bb20:
  %t69 = load i64, ptr %l50, !tbaa !24
  store i64 %t69, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb21
bb21:
  %t70 = load i64, ptr %l10, !tbaa !24
  %t71 = load i64, ptr %l9, !tbaa !24
  %t74 = icmp slt i64 %t70, %t71
  %t76 = xor i1 %t74, true
  br i1 %t76, label %bb22, label %bb23
bb22:
  br label %bb28
bb23:
  br label %bb24
bb24:
  %t78 = load i64, ptr %l6, !tbaa !24
  %t79 = load i64, ptr %l10, !tbaa !24
  %t80 = load i64, ptr %l8, !tbaa !24
  %t83 = mul i64 %t79, %t80
  %t86 = add i64 %t78, %t83
  store i64 %t86, ptr %l11, !tbaa !24
  %t88 = load i64, ptr %l11, !tbaa !24
  store i64 %t88, ptr %l71, !tbaa !24
  %t89 = load ptr, ptr %l2, !tbaa !29
  %t91 = getelementptr %"compiler/mir:Fn", ptr %t89, i32 0, i32 7
  store ptr %t91, ptr %l73, !tbaa !29
  %t92 = load ptr, ptr %l2, !tbaa !29
  %t94 = getelementptr %"compiler/mir:Fn", ptr %t92, i32 0, i32 5
  %t95 = load i64, ptr %l11, !tbaa !24
  %t98 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eAt_3ccompiler_2fmir_3aLocalId_3e(ptr %v1, ptr %t94, i64 %t95)
  store i32 %t98, ptr %l77
  br label %bb25
bb25:
  %t99 = load i32, ptr %l77, !tbaa !23
  %t100 = sext i32 %t99 to i64
  %t101 = load ptr, ptr %l73, !tbaa !29
  %t103 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v1, ptr %t101, i64 %t100)
  store %"compiler/mir:Local" %t103, ptr %l79
  br label %bb26
bb26:
  %t104 = getelementptr %"compiler/mir:Local", ptr %l79, i32 0, i32 2
  %t105 = load i32, ptr %t104, !tbaa !23
  %t107 = load i64, ptr %l71, !tbaa !24
  %t108 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !27
  %t110 = getelementptr i32, ptr %t109, i64 %t107
  store i32 %t105, ptr %t110, !tbaa !33
  br label %bb27
bb27:
  %t111 = load i64, ptr %l10, !tbaa !24
  %t113 = add i64 %t111, 1
  store i64 %t113, ptr %l10, !tbaa !24
  br label %bb21
bb28:
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t116 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t119 = call { { i64, ptr }, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2epack(ptr %v0, ptr %s0, ptr %s0, ptr %t115, { i64, ptr } %t116)
  store { { i64, ptr }, i64 } %t119, ptr %l85
  br label %bb29
bb29:
  %t120 = load { { i64, ptr }, i64 }, ptr %l85
  store { { i64, ptr }, i64 } %t120, ptr %l12
  %t121 = getelementptr { { i64, ptr }, i64 }, ptr %l12, i32 0, i32 0
  %t122 = load { i64, ptr }, ptr %t121, !tbaa !27
  store { i64, ptr } %t122, ptr %l13, !tbaa !27
  %t124 = getelementptr { { i64, ptr }, i64 }, ptr %l12, i32 0, i32 1
  %t125 = load i64, ptr %t124, !tbaa !24
  store i64 %t125, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  %t127 = load ptr, ptr %l2, !tbaa !29
  %t129 = getelementptr %"compiler/mir:Fn", ptr %t127, i32 0, i32 5
  %t131 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v1, ptr %t129)
  store i64 %t131, ptr %l90
  br label %bb30
bb30:
  %t132 = load i64, ptr %l90, !tbaa !24
  store i64 %t132, ptr %l16, !tbaa !24
  store i64 1, ptr %l17, !tbaa !24
  %t133 = load i64, ptr %l16, !tbaa !24
  %t134 = load i64, ptr %l15, !tbaa !24
  %t137 = icmp sgt i64 %t133, %t134
  br i1 %t137, label %bb31, label %bb32
bb31:
  %t139 = load i64, ptr %l17, !tbaa !24
  %t141 = icmp sgt i64 %t139, 0
  br i1 %t141, label %bb33, label %bb34
bb32:
  store i64 0, ptr %l94, !tbaa !24
  br label %bb36
bb33:
  %t143 = load i64, ptr %l16, !tbaa !24
  %t144 = load i64, ptr %l15, !tbaa !24
  %t147 = sub i64 %t143, %t144
  %t148 = load i64, ptr %l17, !tbaa !24
  %t151 = add i64 %t147, %t148
  %t153 = sub i64 %t151, 1
  %t154 = load i64, ptr %l17, !tbaa !24
  %t157 = sdiv i64 %t153, %t154
  store i64 %t157, ptr %l97, !tbaa !24
  br label %bb35
bb34:
  store i64 0, ptr %l97, !tbaa !24
  br label %bb35
bb35:
  %t159 = load i64, ptr %l97, !tbaa !24
  store i64 %t159, ptr %l94, !tbaa !24
  br label %bb36
bb36:
  %t160 = load i64, ptr %l94, !tbaa !24
  store i64 %t160, ptr %l18, !tbaa !24
  store i64 0, ptr %l19, !tbaa !24
  br label %bb37
bb37:
  store %olang.scope zeroinitializer, ptr %s7
  %t161 = load i64, ptr %l19, !tbaa !24
  %t162 = load i64, ptr %l18, !tbaa !24
  %t165 = icmp slt i64 %t161, %t162
  %t167 = xor i1 %t165, true
  br i1 %t167, label %bb38, label %bb39
bb38:
  call void @__olang_scope_close(ptr %s7)
  br label %bb47
bb39:
  br label %bb40
bb40:
  %t169 = load i64, ptr %l15, !tbaa !24
  %t170 = load i64, ptr %l19, !tbaa !24
  %t171 = load i64, ptr %l17, !tbaa !24
  %t174 = mul i64 %t170, %t171
  %t177 = add i64 %t169, %t174
  store i64 %t177, ptr %l20, !tbaa !24
  %t179 = load ptr, ptr %l0, !tbaa !29
  store ptr %t179, ptr %l115, !tbaa !29
  %t180 = load ptr, ptr %l0, !tbaa !29
  store ptr %t180, ptr %l116, !tbaa !29
  %t181 = load i64, ptr %l1, !tbaa !24
  store i64 %t181, ptr %l117, !tbaa !24
  %t182 = load ptr, ptr %l2, !tbaa !29
  %t184 = getelementptr %"compiler/mir:Fn", ptr %t182, i32 0, i32 5
  %t185 = load i64, ptr %l20, !tbaa !24
  %t188 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eAt_3ccompiler_2fmir_3aLocalId_3e(ptr %v1, ptr %t184, i64 %t185)
  store i32 %t188, ptr %l121
  br label %bb41
bb41:
  %t189 = load ptr, ptr %l116, !tbaa !29
  %t190 = load i64, ptr %l117, !tbaa !24
  %t191 = load i32, ptr %l121, !tbaa !23
  %t192 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2elocalPtr(ptr %v0, ptr %t189, i64 %t190, i32 %t191)
  store %"compiler/eval:Ptr" %t192, ptr %l122
  br label %bb42
bb42:
  %t193 = getelementptr %"compiler/eval:Ptr", ptr %l3, i32 0, i32 0
  %t194 = load i64, ptr %t193, !tbaa !24
  %t195 = getelementptr %"compiler/eval:Ptr", ptr %l3, i32 0, i32 1
  %t196 = load i64, ptr %t195, !tbaa !24
  %t197 = load i64, ptr %l20, !tbaa !24
  %t199 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t200 = load ptr, ptr %t199, !tbaa !27
  %t201 = getelementptr i64, ptr %t200, i64 %t197
  %t202 = load i64, ptr %t201, !tbaa !34
  %t205 = add i64 %t196, %t202
  %t208 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s7, i64 %t194, i64 %t205)
  store %"compiler/eval:Ptr" %t208, ptr %l128
  br label %bb43
bb43:
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t210 = load i64, ptr %l20, !tbaa !24
  %t212 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t213 = load ptr, ptr %t212, !tbaa !27
  %t214 = getelementptr i32, ptr %t213, i64 %t210
  %t215 = load i32, ptr %t214, !tbaa !33
  %t218 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t209, i32 %t215)
  store i64 %t218, ptr %l132
  br label %bb44
bb44:
  %t219 = load ptr, ptr %l115, !tbaa !29
  %t220 = load %"compiler/eval:Ptr", ptr %l122
  %t221 = load %"compiler/eval:Ptr", ptr %l128
  %t222 = load i64, ptr %l132, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopy(ptr %v0, ptr %t219, %"compiler/eval:Ptr" %t220, %"compiler/eval:Ptr" %t221, i64 %t222)
  br label %bb45
bb45:
  call void @__olang_scope_close(ptr %s7)
  br label %bb46
bb46:
  %t223 = load i64, ptr %l19, !tbaa !24
  %t225 = add i64 %t223, 1
  store i64 %t225, ptr %l19, !tbaa !24
  br label %bb37
bb47:
  store i64 %a4, ptr %l21, !tbaa !24
  %t229 = load ptr, ptr %l2, !tbaa !29
  %t231 = getelementptr %"compiler/mir:Fn", ptr %t229, i32 0, i32 6
  %t233 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eLen_3ccompiler_2fmir_3aVarKind_3e(ptr %v1, ptr %t231)
  store i64 %t233, ptr %l138
  br label %bb48
bb48:
  %t234 = load i64, ptr %l138, !tbaa !24
  store i64 %t234, ptr %l22, !tbaa !24
  store i64 1, ptr %l23, !tbaa !24
  %t235 = load i64, ptr %l22, !tbaa !24
  %t236 = load i64, ptr %l21, !tbaa !24
  %t239 = icmp sgt i64 %t235, %t236
  br i1 %t239, label %bb49, label %bb50
bb49:
  %t241 = load i64, ptr %l23, !tbaa !24
  %t243 = icmp sgt i64 %t241, 0
  br i1 %t243, label %bb51, label %bb52
bb50:
  store i64 0, ptr %l142, !tbaa !24
  br label %bb54
bb51:
  %t245 = load i64, ptr %l22, !tbaa !24
  %t246 = load i64, ptr %l21, !tbaa !24
  %t249 = sub i64 %t245, %t246
  %t250 = load i64, ptr %l23, !tbaa !24
  %t253 = add i64 %t249, %t250
  %t255 = sub i64 %t253, 1
  %t256 = load i64, ptr %l23, !tbaa !24
  %t259 = sdiv i64 %t255, %t256
  store i64 %t259, ptr %l145, !tbaa !24
  br label %bb53
bb52:
  store i64 0, ptr %l145, !tbaa !24
  br label %bb53
bb53:
  %t261 = load i64, ptr %l145, !tbaa !24
  store i64 %t261, ptr %l142, !tbaa !24
  br label %bb54
bb54:
  %t262 = load i64, ptr %l142, !tbaa !24
  store i64 %t262, ptr %l24, !tbaa !24
  store i64 0, ptr %l25, !tbaa !24
  br label %bb55
bb55:
  %t263 = load i64, ptr %l25, !tbaa !24
  %t264 = load i64, ptr %l24, !tbaa !24
  %t267 = icmp slt i64 %t263, %t264
  %t269 = xor i1 %t267, true
  br i1 %t269, label %bb56, label %bb57
bb56:
  br label %bb79
bb57:
  br label %bb58
bb58:
  %t271 = load i64, ptr %l21, !tbaa !24
  %t272 = load i64, ptr %l25, !tbaa !24
  %t273 = load i64, ptr %l23, !tbaa !24
  %t276 = mul i64 %t272, %t273
  %t279 = add i64 %t271, %t276
  store i64 %t279, ptr %l26, !tbaa !24
  %t281 = load ptr, ptr %l2, !tbaa !29
  %t283 = getelementptr %"compiler/mir:Fn", ptr %t281, i32 0, i32 6
  %t284 = load i64, ptr %l26, !tbaa !24
  %t287 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eAt_3ccompiler_2fmir_3aVarKind_3e(ptr %v1, ptr %t283, i64 %t284)
  store { i64, [1 x i64] } %t287, ptr %l166
  br label %bb59
bb59:
  %t288 = load { i64, [1 x i64] }, ptr %l166
  store { i64, [1 x i64] } %t288, ptr %l27
  %t289 = load { i64, [1 x i64] }, ptr %l27
  %t291 = extractvalue { i64, [1 x i64] } %t289, 0
  %t292 = icmp eq i64 %t291, 4
  br i1 %t292, label %bb60, label %bb61
bb60:
  %t294 = getelementptr { i64, [1 x i64] }, ptr %l27, i32 0, i32 1
  %t295 = getelementptr { i64 }, ptr %t294, i32 0, i32 0
  %t296 = load i64, ptr %t295
  store i64 %t296, ptr %l28, !tbaa !24
  br label %bb62
bb61:
  br label %bb63
bb62:
  %t298 = load i64, ptr %l28, !tbaa !24
  store i64 %t298, ptr %l167, !tbaa !24
  br label %bb68
bb63:
  br i1 true, label %bb64, label %bb65
bb64:
  br label %bb66
bb65:
  br label %bb67
bb66:
  store i64 -1, ptr %l167, !tbaa !24
  br label %bb68
bb67:
  call void @__olang_check_failed(ptr @olang_loc_7e96cd508c5b7919_900f150eebe6671d)
  unreachable
bb68:
  %t300 = load i64, ptr %l167, !tbaa !24
  store i64 %t300, ptr %l29, !tbaa !24
  %t301 = load i64, ptr %l29, !tbaa !24
  %t303 = icmp sge i64 %t301, 0
  br i1 %t303, label %bb69, label %bb70
bb69:
  %t305 = load i64, ptr %l29, !tbaa !24
  store i64 %t305, ptr %l175, !tbaa !24
  %t306 = load ptr, ptr %l2, !tbaa !29
  %t308 = getelementptr %"compiler/mir:Fn", ptr %t306, i32 0, i32 5
  %t310 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v1, ptr %t308)
  store i64 %t310, ptr %l178
  br label %bb71
bb70:
  store i1 false, ptr %l174, !tbaa !21
  br label %bb72
bb71:
  %t311 = load i64, ptr %l175, !tbaa !24
  %t312 = load i64, ptr %l178, !tbaa !24
  %t313 = icmp slt i64 %t311, %t312
  store i1 %t313, ptr %l174, !tbaa !21
  br label %bb72
bb72:
  %t315 = load i1, ptr %l174, !tbaa !21
  br i1 %t315, label %bb73, label %bb74
bb73:
  store %olang.scope zeroinitializer, ptr %s13
  %t316 = load ptr, ptr %l0, !tbaa !29
  %t318 = getelementptr %"compiler/eval:Machine", ptr %t316, i32 0, i32 60
  %t319 = load { i64, ptr }, ptr %t318, !tbaa !27
  store { i64, ptr } %t319, ptr %l181, !tbaa !27
  %t320 = load ptr, ptr %l0, !tbaa !29
  %t322 = getelementptr %"compiler/eval:Machine", ptr %t320, i32 0, i32 58
  %t323 = load { i64, ptr }, ptr %t322, !tbaa !27
  store { i64, ptr } %t323, ptr %l183, !tbaa !27
  %t324 = load i64, ptr %l1, !tbaa !24
  %t326 = getelementptr { i64, ptr }, ptr %l183, i32 0, i32 1
  %t327 = load ptr, ptr %t326, !tbaa !27
  %t328 = getelementptr %"compiler/eval:frame", ptr %t327, i64 %t324
  %t329 = getelementptr %"compiler/eval:frame", ptr %t328, i32 0, i32 5
  %t330 = load i64, ptr %t329, !tbaa !24
  %t331 = load i64, ptr %l26, !tbaa !24
  %t334 = add i64 %t330, %t331
  store i64 %t334, ptr %l187, !tbaa !24
  %t335 = load ptr, ptr %l0, !tbaa !29
  store ptr %t335, ptr %l188, !tbaa !29
  %t336 = getelementptr %"compiler/eval:Ptr", ptr %l3, i32 0, i32 0
  %t337 = load i64, ptr %t336, !tbaa !24
  %t338 = getelementptr %"compiler/eval:Ptr", ptr %l3, i32 0, i32 1
  %t339 = load i64, ptr %t338, !tbaa !24
  %t340 = load i64, ptr %l14, !tbaa !24
  %t343 = add i64 %t339, %t340
  %t344 = load i64, ptr %l29, !tbaa !24
  %t346 = mul i64 8, %t344
  %t349 = add i64 %t343, %t346
  %t352 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s13, i64 %t337, i64 %t349)
  store %"compiler/eval:Ptr" %t352, ptr %l196
  br label %bb75
bb74:
  br label %bb77
bb75:
  %t353 = load ptr, ptr %l188, !tbaa !29
  %t354 = load %"compiler/eval:Ptr", ptr %l196
  %t355 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t353, %"compiler/eval:Ptr" %t354, i64 8)
  store i64 %t355, ptr %l197
  br label %bb76
bb76:
  %t356 = load i64, ptr %l197, !tbaa !24
  %t357 = load i64, ptr %l187, !tbaa !24
  %t358 = getelementptr { i64, ptr }, ptr %l181, i32 0, i32 1
  %t359 = load ptr, ptr %t358, !tbaa !27
  %t360 = getelementptr i64, ptr %t359, i64 %t357
  store i64 %t356, ptr %t360, !tbaa !34
  call void @__olang_scope_close(ptr %s13)
  br label %bb77
bb77:
  br label %bb78
bb78:
  %t361 = load i64, ptr %l25, !tbaa !24
  %t363 = add i64 %t361, 1
  store i64 %t363, ptr %l25, !tbaa !24
  br label %bb55
bb79:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2elocalPtr(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l5 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l20 = alloca %"compiler/eval:Ptr"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/eval:Ptr"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 60
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l5, !tbaa !27
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/eval:Machine", ptr %t5, i32 0, i32 58
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  store { i64, ptr } %t8, ptr %l7, !tbaa !27
  %t11 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !27
  %t13 = getelementptr %"compiler/eval:frame", ptr %t12, i64 %a1
  %t14 = getelementptr %"compiler/eval:frame", ptr %t13, i32 0, i32 3
  %t15 = load i64, ptr %t14, !tbaa !24
  %t18 = sext i32 %a2 to i64
  %t21 = add i64 %t15, %t18
  %t23 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !27
  %t25 = getelementptr i64, ptr %t24, i64 %t21
  %t26 = load i64, ptr %t25, !tbaa !34
  store i64 %t26, ptr %l3, !tbaa !24
  %t28 = load i64, ptr %l3, !tbaa !24
  %t30 = icmp eq i64 %t28, 0
  br i1 %t30, label %bb1, label %bb2
bb1:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyClosed, !tbaa !27
  %t34 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t34, ptr %t32, { i64, ptr } %t33)
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t37 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/eval:Ptr" %t37, ptr %rv
  br label %ret
bb4:
  %t39 = load i64, ptr %l3, !tbaa !24
  %t41 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s0, i64 %t39, i64 0)
  store %"compiler/eval:Ptr" %t41, ptr %l20
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  %t42 = load %"compiler/eval:Ptr", ptr %l20
  store %"compiler/eval:Ptr" %t42, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/eval:Ptr", ptr %rv
  ret %"compiler/eval:Ptr" %rr
}

define dso_local i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2emutableGlobal(ptr %v0, ptr %a0, %"compiler/mir:Lvalue" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/mir:Lvalue"
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca i64
  %l11 = alloca i64
  %l13 = alloca ptr
  %l16 = alloca %"compiler/eval:gkey"
  %l17 = alloca i64
  %l18 = alloca i32
  %l21 = alloca i1
  %l25 = alloca %"compiler/eval:global"
  %s1 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store %"compiler/mir:Lvalue" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/mir:Lvalue", ptr %l1, i32 0, i32 0
  %t2 = load { i64, [2 x i64] }, ptr %t1
  store { i64, [2 x i64] } %t2, ptr %l2
  %t4 = load { i64, [2 x i64] }, ptr %l2
  %t6 = extractvalue { i64, [2 x i64] } %t4, 0
  %t7 = icmp eq i64 %t6, 2
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t10 = getelementptr { i64, i32, i32 }, ptr %t9, i32 0, i32 0
  %t11 = load i64, ptr %t10
  store i64 %t11, ptr %l3, !tbaa !24
  %t13 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t14 = getelementptr { i64, i32, i32 }, ptr %t13, i32 0, i32 1
  %t15 = load i32, ptr %t14
  store i32 %t15, ptr %l4, !tbaa !23
  br label %bb3
bb2:
  br label %bb13
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/eval:Machine", ptr %t17, i32 0, i32 43
  store ptr %t19, ptr %l13, !tbaa !29
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = load i32, ptr %l4, !tbaa !23
  %t24 = call %"compiler/eval:gkey" @compiler_2feval_3agkey_2ector(ptr %s1, i64 %t20, i32 %t21)
  store %"compiler/eval:gkey" %t24, ptr %l16
  br label %bb4
bb4:
  %t25 = load ptr, ptr %l13, !tbaa !29
  %t26 = load %"compiler/eval:gkey", ptr %l16
  %t27 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2feval_3agkey_2c_20I64_3e_2eG_H841bd46d30f67641fdfac3080f15aea1(ptr %v0, ptr %t25, %"compiler/eval:gkey" %t26)
  %t28 = extractvalue { i32, i64 } %t27, 1
  %t29 = extractvalue { i32, i64 } %t27, 0
  store i32 %t29, ptr %l18
  %t30 = icmp ne i32 %t29, 0
  br i1 %t30, label %bb6, label %ok.31, !prof !99
ok.31:
  store i64 %t28, ptr %l17
  br label %bb5
bb5:
  %t32 = load i64, ptr %l17, !tbaa !24
  store i64 %t32, ptr %l11, !tbaa !24
  br label %bb8
bb6:
  br label %bb7
bb7:
  store i64 -1, ptr %l11, !tbaa !24
  br label %bb8
bb8:
  %t33 = load i64, ptr %l11, !tbaa !24
  store i64 %t33, ptr %l5, !tbaa !24
  %t34 = load i64, ptr %l5, !tbaa !24
  %t36 = icmp sge i64 %t34, 0
  br i1 %t36, label %bb9, label %bb10
bb9:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/eval:Machine", ptr %t38, i32 0, i32 42
  %t41 = load i64, ptr %l5, !tbaa !24
  %t44 = call %"compiler/eval:global" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eAt_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %t40, i64 %t41)
  store %"compiler/eval:global" %t44, ptr %l25
  br label %bb11
bb10:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb12
bb11:
  %t45 = getelementptr %"compiler/eval:global", ptr %l25, i32 0, i32 1
  %t46 = load i1, ptr %t45, !tbaa !21
  store i1 %t46, ptr %l21, !tbaa !21
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s1)
  %t48 = load i1, ptr %l21, !tbaa !21
  store i1 %t48, ptr %rv
  br label %ret
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
  call void @__olang_check_failed(ptr @olang_loc_b24244fd0a11c914_466201095dcd7a18)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2enewArray(ptr %v0, ptr %a0, i64 %a1, %"compiler/eval:Ptr" %a2, { i64, [1 x i64] } %a3, i32 %a4, { i64, [4 x i64] } %a5, { i64, [4 x i64] } %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"compiler/eval:Ptr"
  %l5 = alloca { i64, [4 x i64] }
  %l6 = alloca { i64, [4 x i64] }
  %l7 = alloca i32
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca %"compiler/eval:Ptr"
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l22 = alloca i32
  %l23 = alloca ptr
  %l27 = alloca i64
  %l31 = alloca i32
  %l32 = alloca i64
  %l35 = alloca i64
  %l38 = alloca i1
  %l41 = alloca i1
  %l51 = alloca i64
  %l60 = alloca %"compiler/eval:Ptr"
  %l65 = alloca i64
  %l70 = alloca { i64, ptr }
  %l76 = alloca { i64, ptr }
  %l84 = alloca i1
  %l96 = alloca i64
  %l99 = alloca i64
  %l117 = alloca ptr
  %l122 = alloca %"compiler/eval:Ptr"
  %l130 = alloca ptr
  %l134 = alloca %"compiler/eval:Ptr"
  %s0 = alloca %olang.scope
  %s7 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store %"compiler/eval:Ptr" %a2, ptr %l2
  store { i64, [4 x i64] } %a5, ptr %l5
  store { i64, [4 x i64] } %a6, ptr %l6
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eelemOf(ptr %v0, ptr %t1, i32 %a4)
  store i32 %t5, ptr %l22
  br label %bb1
bb1:
  %t6 = load i32, ptr %l22, !tbaa !23
  store i32 %t6, ptr %l7, !tbaa !23
  %t7 = load ptr, ptr %l0, !tbaa !29
  store ptr %t7, ptr %l23, !tbaa !29
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t9 = load i64, ptr %l1, !tbaa !24
  %t10 = load { i64, [4 x i64] }, ptr %l5
  %t14 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %t8, i64 %t9, { i64, [4 x i64] } %t10)
  store i64 %t14, ptr %l27
  br label %bb2
bb2:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load i64, ptr %l1, !tbaa !24
  %t17 = load { i64, [4 x i64] }, ptr %l5
  %t21 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t15, i64 %t16, { i64, [4 x i64] } %t17)
  store i32 %t21, ptr %l31
  br label %bb3
bb3:
  %t22 = load ptr, ptr %l23, !tbaa !29
  %t23 = load i64, ptr %l27, !tbaa !24
  %t24 = load i32, ptr %l31, !tbaa !23
  %t25 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintValue(ptr %v0, ptr %t22, i64 %t23, i32 %t24)
  store i64 %t25, ptr %l32
  br label %bb4
bb4:
  %t26 = load i64, ptr %l32, !tbaa !24
  store i64 %t26, ptr %l8, !tbaa !24
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load i32, ptr %l7, !tbaa !23
  %t31 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t27, i32 %t28)
  store i64 %t31, ptr %l35
  br label %bb5
bb5:
  %t32 = load i64, ptr %l35, !tbaa !24
  store i64 %t32, ptr %l9, !tbaa !24
  %t33 = load i64, ptr %l8, !tbaa !24
  %t35 = icmp slt i64 %t33, 0
  br i1 %t35, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l38, !tbaa !21
  br label %bb11
bb7:
  %t37 = load i64, ptr %l9, !tbaa !24
  %t39 = icmp sgt i64 %t37, 0
  br i1 %t39, label %bb8, label %bb9
bb8:
  %t41 = load i64, ptr %l8, !tbaa !24
  %t42 = load i64, ptr %l9, !tbaa !24
  %t44 = sdiv i64 1099511627776, %t42
  %t47 = icmp sgt i64 %t41, %t44
  store i1 %t47, ptr %l41, !tbaa !21
  br label %bb10
bb9:
  store i1 false, ptr %l41, !tbaa !21
  br label %bb10
bb10:
  %t49 = load i1, ptr %l41, !tbaa !21
  store i1 %t49, ptr %l38, !tbaa !21
  br label %bb11
bb11:
  %t50 = load i1, ptr %l38, !tbaa !21
  br i1 %t50, label %bb12, label %bb13
bb12:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyLong, !tbaa !27
  %t53 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t53, ptr %t51, { i64, ptr } %t52)
  br label %bb14
bb13:
  br label %bb15
bb14:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb15:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = load i64, ptr %l1, !tbaa !24
  %t62 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ebuildScope(ptr %v0, ptr %t56, i64 %t57, { i64, [1 x i64] } %a3)
  store i64 %t62, ptr %l51
  br label %bb16
bb16:
  %t63 = load i64, ptr %l51, !tbaa !24
  store i64 %t63, ptr %l10, !tbaa !24
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/eval:Machine", ptr %t64, i32 0, i32 22
  %t67 = load i1, ptr %t66, !tbaa !21
  br i1 %t67, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb18:
  br label %bb19
bb19:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load i64, ptr %l8, !tbaa !24
  %t71 = load i64, ptr %l9, !tbaa !24
  %t74 = mul i64 %t70, %t71
  %t75 = load i64, ptr @G_2ecompiler_2feval_2eaValue, !tbaa !24
  %t76 = load i64, ptr %l10, !tbaa !24
  %t81 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocate(ptr %v0, ptr %t69, i64 %t74, i64 %t75, i64 %t76)
  store %"compiler/eval:Ptr" %t81, ptr %l60
  br label %bb20
bb20:
  %t82 = load %"compiler/eval:Ptr", ptr %l60
  store %"compiler/eval:Ptr" %t82, ptr %l11
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/eval:Machine", ptr %t83, i32 0, i32 22
  %t86 = load i1, ptr %t85, !tbaa !21
  br i1 %t86, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb22:
  br label %bb23
bb23:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/eval:Machine", ptr %t88, i32 0, i32 5
  %t91 = getelementptr %"compiler/mir:GenInfo", ptr %t90, i32 0, i32 0
  %t93 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eLen_3cI64_2c_20Bool_3e(ptr %v0, ptr %t91)
  store i64 %t93, ptr %l65
  br label %bb24
bb24:
  %t94 = load i64, ptr %l65, !tbaa !24
  %t95 = icmp sgt i64 %t94, 0
  br i1 %t95, label %bb25, label %bb26
bb25:
  %t97 = load i32, ptr %l7, !tbaa !23
  %t99 = load i64, ptr %l8, !tbaa !24
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = getelementptr %"compiler/eval:Machine", ptr %t101, i32 0, i32 49
  %t104 = load { i64, ptr }, ptr %t103, !tbaa !27
  store { i64, ptr } %t104, ptr %l70, !tbaa !27
  %t105 = getelementptr %"compiler/eval:Ptr", ptr %l11, i32 0, i32 0
  %t106 = load i64, ptr %t105, !tbaa !24
  %t107 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t110 = and i64 %t106, %t107
  %t114 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t115 = load ptr, ptr %t114, !tbaa !27
  %t116 = getelementptr %"compiler/eval:alloc", ptr %t115, i64 %t110
  %t117 = getelementptr %"compiler/eval:alloc", ptr %t116, i32 0, i32 11
  store i32 %t97, ptr %t117, !tbaa !23
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = getelementptr %"compiler/eval:Machine", ptr %t118, i32 0, i32 49
  %t121 = load { i64, ptr }, ptr %t120, !tbaa !27
  store { i64, ptr } %t121, ptr %l76, !tbaa !27
  %t122 = getelementptr %"compiler/eval:Ptr", ptr %l11, i32 0, i32 0
  %t123 = load i64, ptr %t122, !tbaa !24
  %t124 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t127 = and i64 %t123, %t124
  %t131 = getelementptr { i64, ptr }, ptr %l76, i32 0, i32 1
  %t132 = load ptr, ptr %t131, !tbaa !27
  %t133 = getelementptr %"compiler/eval:alloc", ptr %t132, i64 %t127
  %t134 = getelementptr %"compiler/eval:alloc", ptr %t133, i32 0, i32 12
  store i64 %t99, ptr %t134, !tbaa !24
  br label %bb27
bb26:
  br label %bb27
bb27:
  %t135 = load { i64, [4 x i64] }, ptr %l6
  %t137 = extractvalue { i64, [4 x i64] } %t135, 0
  %t138 = icmp eq i64 %t137, 0
  %t140 = xor i1 %t138, true
  br i1 %t140, label %bb28, label %bb29
bb28:
  %t142 = load i64, ptr %l8, !tbaa !24
  %t144 = icmp sgt i64 %t142, 0
  store i1 %t144, ptr %l84, !tbaa !21
  br label %bb30
bb29:
  store i1 false, ptr %l84, !tbaa !21
  br label %bb30
bb30:
  %t146 = load i1, ptr %l84, !tbaa !21
  br i1 %t146, label %bb31, label %bb32
bb31:
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t148 = load i64, ptr %l1, !tbaa !24
  %t149 = load %"compiler/eval:Ptr", ptr %l11
  %t150 = load i32, ptr %l7, !tbaa !23
  %t151 = load { i64, [4 x i64] }, ptr %l6
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eput(ptr %v0, ptr %t147, i64 %t148, %"compiler/eval:Ptr" %t149, i32 %t150, { i64, [4 x i64] } %t151)
  br label %bb33
bb32:
  br label %bb48
bb33:
  store i64 1, ptr %l14, !tbaa !24
  %t157 = load i64, ptr %l8, !tbaa !24
  store i64 %t157, ptr %l15, !tbaa !24
  store i64 1, ptr %l16, !tbaa !24
  %t159 = load i64, ptr %l15, !tbaa !24
  %t160 = load i64, ptr %l14, !tbaa !24
  %t163 = icmp sgt i64 %t159, %t160
  br i1 %t163, label %bb34, label %bb35
bb34:
  %t165 = load i64, ptr %l16, !tbaa !24
  %t167 = icmp sgt i64 %t165, 0
  br i1 %t167, label %bb36, label %bb37
bb35:
  store i64 0, ptr %l96, !tbaa !24
  br label %bb39
bb36:
  %t169 = load i64, ptr %l15, !tbaa !24
  %t170 = load i64, ptr %l14, !tbaa !24
  %t173 = sub i64 %t169, %t170
  %t174 = load i64, ptr %l16, !tbaa !24
  %t177 = add i64 %t173, %t174
  %t179 = sub i64 %t177, 1
  %t180 = load i64, ptr %l16, !tbaa !24
  %t183 = sdiv i64 %t179, %t180
  store i64 %t183, ptr %l99, !tbaa !24
  br label %bb38
bb37:
  store i64 0, ptr %l99, !tbaa !24
  br label %bb38
bb38:
  %t185 = load i64, ptr %l99, !tbaa !24
  store i64 %t185, ptr %l96, !tbaa !24
  br label %bb39
bb39:
  %t186 = load i64, ptr %l96, !tbaa !24
  store i64 %t186, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  br label %bb40
bb40:
  store %olang.scope zeroinitializer, ptr %s7
  %t187 = load i64, ptr %l18, !tbaa !24
  %t188 = load i64, ptr %l17, !tbaa !24
  %t191 = icmp slt i64 %t187, %t188
  %t193 = xor i1 %t191, true
  br i1 %t193, label %bb41, label %bb42
bb41:
  call void @__olang_scope_close(ptr %s7)
  br label %bb47
bb42:
  br label %bb43
bb43:
  %t195 = load i64, ptr %l14, !tbaa !24
  %t196 = load i64, ptr %l18, !tbaa !24
  %t197 = load i64, ptr %l16, !tbaa !24
  %t200 = mul i64 %t196, %t197
  %t203 = add i64 %t195, %t200
  %t205 = load ptr, ptr %l0, !tbaa !29
  store ptr %t205, ptr %l117, !tbaa !29
  %t206 = getelementptr %"compiler/eval:Ptr", ptr %l11, i32 0, i32 0
  %t207 = load i64, ptr %t206, !tbaa !24
  %t209 = load i64, ptr %l9, !tbaa !24
  %t212 = mul i64 %t203, %t209
  %t215 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s7, i64 %t207, i64 %t212)
  store %"compiler/eval:Ptr" %t215, ptr %l122
  br label %bb44
bb44:
  %t216 = load %"compiler/eval:Ptr", ptr %l11
  %t217 = load i64, ptr %l9, !tbaa !24
  %t218 = load ptr, ptr %l117, !tbaa !29
  %t219 = load %"compiler/eval:Ptr", ptr %l122
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopy(ptr %v0, ptr %t218, %"compiler/eval:Ptr" %t219, %"compiler/eval:Ptr" %t216, i64 %t217)
  br label %bb45
bb45:
  call void @__olang_scope_close(ptr %s7)
  br label %bb46
bb46:
  %t222 = load i64, ptr %l18, !tbaa !24
  %t224 = add i64 %t222, 1
  store i64 %t224, ptr %l18, !tbaa !24
  br label %bb40
bb47:
  br label %bb48
bb48:
  %t226 = load ptr, ptr %l0, !tbaa !29
  %t227 = load %"compiler/eval:Ptr", ptr %l2
  %t228 = load i64, ptr %l8, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t226, %"compiler/eval:Ptr" %t227, i64 8, i64 %t228)
  br label %bb49
bb49:
  %t232 = load ptr, ptr %l0, !tbaa !29
  store ptr %t232, ptr %l130, !tbaa !29
  %t233 = getelementptr %"compiler/eval:Ptr", ptr %l2, i32 0, i32 0
  %t234 = load i64, ptr %t233, !tbaa !24
  %t235 = getelementptr %"compiler/eval:Ptr", ptr %l2, i32 0, i32 1
  %t236 = load i64, ptr %t235, !tbaa !24
  %t238 = add i64 %t236, 8
  %t241 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s0, i64 %t234, i64 %t238)
  store %"compiler/eval:Ptr" %t241, ptr %l134
  br label %bb50
bb50:
  %t242 = load %"compiler/eval:Ptr", ptr %l11
  %t243 = load ptr, ptr %l130, !tbaa !29
  %t244 = load %"compiler/eval:Ptr", ptr %l134
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t243, %"compiler/eval:Ptr" %t244, %"compiler/eval:Ptr" %t242)
  br label %bb51
bb51:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2enewRef(ptr %v0, ptr %a0, i64 %a1, %"compiler/eval:Ptr" %a2, { i64, [1 x i64] } %a3, { i64, [4 x i64] } %a4, i32 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"compiler/eval:Ptr"
  %l3 = alloca { i64, [1 x i64] }
  %l4 = alloca { i64, [4 x i64] }
  %l6 = alloca i32
  %l7 = alloca %"compiler/eval:Ptr"
  %l8 = alloca { %"compiler/eval:Ptr", i64 }
  %l9 = alloca %"compiler/eval:Ptr"
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca %"compiler/eval:Ptr"
  %l14 = alloca i64
  %l15 = alloca %"compiler/eval:Ptr"
  %l17 = alloca ptr
  %l21 = alloca i32
  %l22 = alloca i32
  %l25 = alloca i1
  %l29 = alloca %"compiler/eval:Ptr"
  %l35 = alloca { %"compiler/eval:Ptr", i64 }
  %l43 = alloca i64
  %l46 = alloca i64
  %l47 = alloca ptr
  %l50 = alloca i32
  %l51 = alloca i64
  %l57 = alloca %"compiler/eval:Ptr"
  %l67 = alloca ptr
  %l71 = alloca %"compiler/eval:Ptr"
  %l76 = alloca i64
  %l84 = alloca i1
  %l85 = alloca ptr
  %l86 = alloca %"compiler/eval:Ptr"
  %l92 = alloca %"compiler/eval:Ptr"
  %l93 = alloca ptr
  %l96 = alloca i64
  %l99 = alloca %"compiler/eval:Ptr"
  %l102 = alloca i64
  %l105 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store %"compiler/eval:Ptr" %a2, ptr %l2
  store { i64, [1 x i64] } %a3, ptr %l3
  store { i64, [4 x i64] } %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l17, !tbaa !29
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/eval:Machine", ptr %t5, i32 0, i32 0
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t12 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t8, i32 %a5)
  store i32 %t12, ptr %l21
  br label %bb1
bb1:
  %t13 = load ptr, ptr %l17, !tbaa !29
  %t14 = load i32, ptr %l21, !tbaa !23
  %t15 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t13, i32 %t14)
  store i32 %t15, ptr %l22
  br label %bb2
bb2:
  %t16 = load i32, ptr %l22, !tbaa !23
  store i32 %t16, ptr %l6, !tbaa !23
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load i32, ptr %l6, !tbaa !23
  %t21 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ertArray(ptr %v0, ptr %t17, i32 %t18)
  store i1 %t21, ptr %l25
  br label %bb3
bb3:
  %t22 = load i1, ptr %l25, !tbaa !21
  br i1 %t22, label %bb4, label %bb5
bb4:
  store %olang.scope zeroinitializer, ptr %s1
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load i64, ptr %l1, !tbaa !24
  %t25 = load { i64, [4 x i64] }, ptr %l4
  %t29 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t23, i64 %t24, { i64, [4 x i64] } %t25, i64 1)
  store %"compiler/eval:Ptr" %t29, ptr %l29
  br label %bb6
bb5:
  br label %bb28
bb6:
  %t30 = load %"compiler/eval:Ptr", ptr %l29
  store %"compiler/eval:Ptr" %t30, ptr %l7
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/eval:Machine", ptr %t31, i32 0, i32 22
  %t34 = load i1, ptr %t33, !tbaa !21
  br i1 %t34, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s1)
  br label %ret
bb8:
  br label %bb9
bb9:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load %"compiler/eval:Ptr", ptr %l7
  %t38 = load i32, ptr %l6, !tbaa !23
  %t42 = call { %"compiler/eval:Ptr", i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayView(ptr %v0, ptr %t36, %"compiler/eval:Ptr" %t37, i32 %t38)
  store { %"compiler/eval:Ptr", i64 } %t42, ptr %l35
  br label %bb10
bb10:
  %t43 = load { %"compiler/eval:Ptr", i64 }, ptr %l35
  store { %"compiler/eval:Ptr", i64 } %t43, ptr %l8
  %t44 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l8, i32 0, i32 0
  %t45 = load %"compiler/eval:Ptr", ptr %t44
  store %"compiler/eval:Ptr" %t45, ptr %l9
  %t47 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l8, i32 0, i32 1
  %t48 = load i64, ptr %t47, !tbaa !24
  store i64 %t48, ptr %l10, !tbaa !24
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/eval:Machine", ptr %t50, i32 0, i32 22
  %t53 = load i1, ptr %t52, !tbaa !21
  br i1 %t53, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s1)
  br label %ret
bb12:
  br label %bb13
bb13:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = load i64, ptr %l1, !tbaa !24
  %t57 = load { i64, [1 x i64] }, ptr %l3
  %t61 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ebuildScope(ptr %v0, ptr %t55, i64 %t56, { i64, [1 x i64] } %t57)
  store i64 %t61, ptr %l43
  br label %bb14
bb14:
  %t62 = load i64, ptr %l43, !tbaa !24
  store i64 %t62, ptr %l11, !tbaa !24
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/eval:Machine", ptr %t63, i32 0, i32 22
  %t66 = load i1, ptr %t65, !tbaa !21
  br i1 %t66, label %bb15, label %bb16
bb15:
  call void @__olang_scope_close(ptr %s1)
  br label %ret
bb16:
  br label %bb17
bb17:
  %t68 = load i64, ptr %l10, !tbaa !24
  store i64 %t68, ptr %l46, !tbaa !24
  %t69 = load ptr, ptr %l0, !tbaa !29
  store ptr %t69, ptr %l47, !tbaa !29
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load i32, ptr %l6, !tbaa !23
  %t74 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eelemOf(ptr %v0, ptr %t70, i32 %t71)
  store i32 %t74, ptr %l50
  br label %bb18
bb18:
  %t75 = load ptr, ptr %l47, !tbaa !29
  %t76 = load i32, ptr %l50, !tbaa !23
  %t77 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t75, i32 %t76)
  store i64 %t77, ptr %l51
  br label %bb19
bb19:
  %t78 = load i64, ptr %l46, !tbaa !24
  %t79 = load i64, ptr %l51, !tbaa !24
  %t80 = mul i64 %t78, %t79
  store i64 %t80, ptr %l12, !tbaa !24
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t83 = load i64, ptr %l12, !tbaa !24
  %t84 = load i64, ptr @G_2ecompiler_2feval_2eaValue, !tbaa !24
  %t85 = load i64, ptr %l11, !tbaa !24
  %t90 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocate(ptr %v0, ptr %t82, i64 %t83, i64 %t84, i64 %t85)
  store %"compiler/eval:Ptr" %t90, ptr %l57
  br label %bb20
bb20:
  %t91 = load %"compiler/eval:Ptr", ptr %l57
  store %"compiler/eval:Ptr" %t91, ptr %l13
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/eval:Machine", ptr %t92, i32 0, i32 22
  %t95 = load i1, ptr %t94, !tbaa !21
  br i1 %t95, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s1)
  br label %ret
bb22:
  br label %bb23
bb23:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t98 = load %"compiler/eval:Ptr", ptr %l13
  %t99 = load %"compiler/eval:Ptr", ptr %l9
  %t100 = load i64, ptr %l12, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopy(ptr %v0, ptr %t97, %"compiler/eval:Ptr" %t98, %"compiler/eval:Ptr" %t99, i64 %t100)
  br label %bb24
bb24:
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t106 = load %"compiler/eval:Ptr", ptr %l2
  %t107 = load i64, ptr %l10, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t105, %"compiler/eval:Ptr" %t106, i64 8, i64 %t107)
  br label %bb25
bb25:
  %t111 = load ptr, ptr %l0, !tbaa !29
  store ptr %t111, ptr %l67, !tbaa !29
  %t112 = getelementptr %"compiler/eval:Ptr", ptr %l2, i32 0, i32 0
  %t113 = load i64, ptr %t112, !tbaa !24
  %t114 = getelementptr %"compiler/eval:Ptr", ptr %l2, i32 0, i32 1
  %t115 = load i64, ptr %t114, !tbaa !24
  %t117 = add i64 %t115, 8
  %t120 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s1, i64 %t113, i64 %t117)
  store %"compiler/eval:Ptr" %t120, ptr %l71
  br label %bb26
bb26:
  %t121 = load %"compiler/eval:Ptr", ptr %l13
  %t122 = load ptr, ptr %l67, !tbaa !29
  %t123 = load %"compiler/eval:Ptr", ptr %l71
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t122, %"compiler/eval:Ptr" %t123, %"compiler/eval:Ptr" %t121)
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s1)
  br label %ret
bb28:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t126 = load i64, ptr %l1, !tbaa !24
  %t127 = load { i64, [1 x i64] }, ptr %l3
  %t131 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ebuildScope(ptr %v0, ptr %t125, i64 %t126, { i64, [1 x i64] } %t127)
  store i64 %t131, ptr %l76
  br label %bb29
bb29:
  %t132 = load i64, ptr %l76, !tbaa !24
  store i64 %t132, ptr %l14, !tbaa !24
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t135 = getelementptr %"compiler/eval:Machine", ptr %t133, i32 0, i32 22
  %t136 = load i1, ptr %t135, !tbaa !21
  br i1 %t136, label %bb30, label %bb31
bb30:
  br label %ret
bb31:
  br label %bb32
bb32:
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t140 = getelementptr %"compiler/eval:Machine", ptr %t138, i32 0, i32 5
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t143 = getelementptr %"compiler/eval:Machine", ptr %t141, i32 0, i32 0
  %t144 = load ptr, ptr %t143, !tbaa !29
  %t145 = load i32, ptr %l6, !tbaa !23
  %t149 = call i1 @compiler_2fmir_2ecompiler_2fmir_3aGenInfo_2eIsGen(ptr %v0, ptr %v0, ptr %t140, ptr %t144, i32 %t145)
  store i1 %t149, ptr %l84
  br label %bb33
bb33:
  %t150 = load i1, ptr %l84, !tbaa !21
  br i1 %t150, label %bb34, label %bb35
bb34:
  %t151 = load ptr, ptr %l0, !tbaa !29
  store ptr %t151, ptr %l85, !tbaa !29
  %t152 = load %"compiler/eval:Ptr", ptr %l2
  store %"compiler/eval:Ptr" %t152, ptr %l86
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t154 = load i64, ptr %l1, !tbaa !24
  %t155 = load i64, ptr %l14, !tbaa !24
  %t156 = load i32, ptr %l6, !tbaa !23
  %t157 = load { i64, [4 x i64] }, ptr %l4
  %t163 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2egenNew(ptr %v0, ptr %t153, i64 %t154, i64 %t155, i32 %t156, { i64, [4 x i64] } %t157)
  store %"compiler/eval:Ptr" %t163, ptr %l92
  br label %bb36
bb35:
  br label %bb38
bb36:
  %t164 = load ptr, ptr %l85, !tbaa !29
  %t165 = load %"compiler/eval:Ptr", ptr %l86
  %t166 = load %"compiler/eval:Ptr", ptr %l92
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t164, %"compiler/eval:Ptr" %t165, %"compiler/eval:Ptr" %t166)
  br label %bb37
bb37:
  br label %ret
bb38:
  %t167 = load ptr, ptr %l0, !tbaa !29
  store ptr %t167, ptr %l93, !tbaa !29
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t169 = load i32, ptr %l6, !tbaa !23
  %t172 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t168, i32 %t169)
  store i64 %t172, ptr %l96
  br label %bb39
bb39:
  %t173 = load i64, ptr @G_2ecompiler_2feval_2eaValue, !tbaa !24
  %t174 = load i64, ptr %l14, !tbaa !24
  %t175 = load ptr, ptr %l93, !tbaa !29
  %t176 = load i64, ptr %l96, !tbaa !24
  %t179 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocate(ptr %v0, ptr %t175, i64 %t176, i64 %t173, i64 %t174)
  store %"compiler/eval:Ptr" %t179, ptr %l99
  br label %bb40
bb40:
  %t180 = load %"compiler/eval:Ptr", ptr %l99
  store %"compiler/eval:Ptr" %t180, ptr %l15
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t183 = getelementptr %"compiler/eval:Machine", ptr %t181, i32 0, i32 5
  %t184 = getelementptr %"compiler/mir:GenInfo", ptr %t183, i32 0, i32 0
  %t186 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eLen_3cI64_2c_20Bool_3e(ptr %v0, ptr %t184)
  store i64 %t186, ptr %l102
  br label %bb41
bb41:
  %t187 = load i64, ptr %l102, !tbaa !24
  %t188 = icmp sgt i64 %t187, 0
  br i1 %t188, label %bb42, label %bb43
bb42:
  %t190 = load ptr, ptr %l0, !tbaa !29
  %t192 = getelementptr %"compiler/eval:Machine", ptr %t190, i32 0, i32 49
  %t193 = load { i64, ptr }, ptr %t192, !tbaa !27
  store { i64, ptr } %t193, ptr %l105, !tbaa !27
  %t194 = getelementptr %"compiler/eval:Ptr", ptr %l15, i32 0, i32 0
  %t195 = load i64, ptr %t194, !tbaa !24
  %t196 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t199 = and i64 %t195, %t196
  %t200 = load i32, ptr %l6, !tbaa !23
  %t203 = getelementptr { i64, ptr }, ptr %l105, i32 0, i32 1
  %t204 = load ptr, ptr %t203, !tbaa !27
  %t205 = getelementptr %"compiler/eval:alloc", ptr %t204, i64 %t199
  %t206 = getelementptr %"compiler/eval:alloc", ptr %t205, i32 0, i32 11
  store i32 %t200, ptr %t206, !tbaa !23
  br label %bb44
bb43:
  br label %bb44
bb44:
  %t207 = load ptr, ptr %l0, !tbaa !29
  %t208 = load i64, ptr %l1, !tbaa !24
  %t209 = load %"compiler/eval:Ptr", ptr %l15
  %t210 = load i32, ptr %l6, !tbaa !23
  %t211 = load { i64, [4 x i64] }, ptr %l4
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eput(ptr %v0, ptr %t207, i64 %t208, %"compiler/eval:Ptr" %t209, i32 %t210, { i64, [4 x i64] } %t211)
  br label %bb45
bb45:
  %t217 = load ptr, ptr %l0, !tbaa !29
  %t218 = load %"compiler/eval:Ptr", ptr %l2
  %t219 = load %"compiler/eval:Ptr", ptr %l15
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t217, %"compiler/eval:Ptr" %t218, %"compiler/eval:Ptr" %t219)
  br label %bb46
bb46:
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2) #0 {
entry:
  %l2 = alloca { i64, [4 x i64] }
  %l3 = alloca %"compiler/mir:Lvalue"
  %l4 = alloca i32
  %l5 = alloca i32
  %l15 = alloca i32
  %rv = alloca i32
  store { i64, [4 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [4 x i64] }, ptr %l2
  %t3 = extractvalue { i64, [4 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t6 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  store i32 %t6, ptr %l5, !tbaa !23
  br label %bb16
bb4:
  %t8 = load { i64, [4 x i64] }, ptr %l2
  %t10 = extractvalue { i64, [4 x i64] } %t8, 0
  %t11 = icmp eq i64 %t10, 1
  br i1 %t11, label %bb5, label %bb6
bb5:
  %t13 = getelementptr { i64, [4 x i64] }, ptr %l2, i32 0, i32 1
  %t14 = getelementptr { %"compiler/mir:Lvalue" }, ptr %t13, i32 0, i32 0
  %t15 = load %"compiler/mir:Lvalue", ptr %t14
  store %"compiler/mir:Lvalue" %t15, ptr %l3
  br label %bb7
bb6:
  br label %bb9
bb7:
  %t19 = load %"compiler/mir:Lvalue", ptr %l3
  %t23 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eplaceType(ptr %v0, ptr %a0, i64 %a1, %"compiler/mir:Lvalue" %t19)
  store i32 %t23, ptr %l15
  br label %bb8
bb8:
  %t24 = load i32, ptr %l15, !tbaa !23
  store i32 %t24, ptr %l5, !tbaa !23
  br label %bb16
bb9:
  %t25 = load { i64, [4 x i64] }, ptr %l2
  %t27 = extractvalue { i64, [4 x i64] } %t25, 0
  %t28 = icmp eq i64 %t27, 2
  br i1 %t28, label %bb10, label %bb11
bb10:
  %t30 = getelementptr { i64, [4 x i64] }, ptr %l2, i32 0, i32 1
  %t31 = getelementptr { i32, i64 }, ptr %t30, i32 0, i32 0
  %t32 = load i32, ptr %t31
  store i32 %t32, ptr %l4, !tbaa !23
  br label %bb14
bb11:
  %t34 = load { i64, [4 x i64] }, ptr %l2
  %t36 = extractvalue { i64, [4 x i64] } %t34, 0
  %t37 = icmp eq i64 %t36, 3
  br i1 %t37, label %bb12, label %bb13
bb12:
  %t39 = getelementptr { i64, [4 x i64] }, ptr %l2, i32 0, i32 1
  %t40 = getelementptr { i32, i32, i64, %"compiler/source:Span" }, ptr %t39, i32 0, i32 0
  %t41 = load i32, ptr %t40
  store i32 %t41, ptr %l4, !tbaa !23
  br label %bb14
bb13:
  br label %bb15
bb14:
  %t43 = load i32, ptr %l4, !tbaa !23
  store i32 %t43, ptr %l5, !tbaa !23
  br label %bb16
bb15:
  call void @__olang_check_failed(ptr @olang_loc_75dcc6d397d821f4_f630b477c159fde0)
  unreachable
bb16:
  %t45 = load i32, ptr %l5, !tbaa !23
  store i32 %t45, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eoverBudget(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { ptr, ptr }
  %l8 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 3
  %t4 = load { ptr, ptr }, ptr %t3
  store { ptr, ptr } %t4, ptr %l1
  %t6 = load { ptr, ptr }, ptr %l1
  %t8 = extractvalue { ptr, ptr } %t6, 0
  %t9 = extractvalue { ptr, ptr } zeroinitializer, 0
  %t10 = icmp eq ptr %t8, %t9
  %t11 = extractvalue { ptr, ptr } %t6, 1
  %t12 = extractvalue { ptr, ptr } zeroinitializer, 1
  %t13 = icmp eq ptr %t11, %t12
  %t14 = and i1 %t10, %t13
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb1, label %bb2
bb1:
  %t18 = load { ptr, ptr }, ptr %l1
  %t20 = extractvalue { ptr, ptr } %t18, 0
  %t21 = extractvalue { ptr, ptr } %t18, 1
  %t22 = call i1 %t20(ptr %t21)
  store i1 %t22, ptr %l8
  br label %bb3
bb2:
  br label %bb8
bb3:
  %t23 = load i1, ptr %l8, !tbaa !21
  %t24 = xor i1 %t23, true
  br i1 %t24, label %bb4, label %bb5
bb4:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/eval:Machine", ptr %t27, i32 0, i32 14
  %t30 = load i64, ptr %t29, !tbaa !24
  %t31 = load i64, ptr @G_2ecompiler_2feval_2eWatchSteps, !tbaa !24
  %t34 = add i64 %t30, %t31
  %t37 = getelementptr %"compiler/eval:Machine", ptr %t26, i32 0, i32 2
  store i64 %t34, ptr %t37, !tbaa !24
  store i1 false, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyInterrupted, !tbaa !27
  %t41 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t41, ptr %t39, { i64, ptr } %t40)
  br label %bb7
bb7:
  store i1 true, ptr %rv
  br label %ret
bb8:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhySteps, !tbaa !27
  %t47 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t47, ptr %t45, { i64, ptr } %t46)
  br label %bb9
bb9:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2epackInto(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i64 %a2, i32 %a3, %"compiler/eval:Ptr" %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/eval:Ptr"
  %l2 = alloca i64
  %l4 = alloca %"compiler/eval:Ptr"
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca { i64, ptr }
  %l16 = alloca %"compiler/eval:Ptr"
  %l20 = alloca i32
  %l24 = alloca i32
  %l30 = alloca i32
  %l34 = alloca i64
  %l36 = alloca ptr
  %l40 = alloca i32
  %l41 = alloca i64
  %l45 = alloca i64
  %l48 = alloca i64
  %l66 = alloca ptr
  %l67 = alloca %"compiler/eval:Ptr"
  %l72 = alloca i64
  %l73 = alloca i32
  %l74 = alloca i64
  %l75 = alloca i64
  %l76 = alloca i64
  %l79 = alloca i64
  %l82 = alloca %"compiler/eval:Ptr"
  %l88 = alloca i64
  %l92 = alloca { i64, ptr }
  %l96 = alloca i32
  %l99 = alloca i1
  %l109 = alloca %"compiler/eval:Ptr"
  %l110 = alloca ptr
  %l111 = alloca %"compiler/eval:Ptr"
  %l112 = alloca { i64, ptr }
  %l115 = alloca i64
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store %"compiler/eval:Ptr" %a1, ptr %l1
  store i64 %a2, ptr %l2
  store %"compiler/eval:Ptr" %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t8 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t4, i32 %a3)
  store i32 %t8, ptr %l20
  br label %bb1
bb1:
  %t9 = load i32, ptr %l20, !tbaa !23
  store i32 %t9, ptr %l5, !tbaa !23
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/eval:Machine", ptr %t10, i32 0, i32 0
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t14 = load i32, ptr %l5, !tbaa !23
  %t17 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t13, i32 %t14)
  store i32 %t17, ptr %l24
  br label %bb2
bb2:
  %t18 = load i32, ptr %l24, !range !{i32 0, i32 33}
  %t20 = trunc i64 19 to i32
  %t21 = icmp eq i32 %t18, %t20
  br i1 %t21, label %bb3, label %bb4
bb3:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/eval:Machine", ptr %t23, i32 0, i32 0
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t27 = load i32, ptr %l5, !tbaa !23
  %t30 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t26, i32 %t27)
  store i32 %t30, ptr %l30
  br label %bb5
bb4:
  br label %bb24
bb5:
  %t31 = load i32, ptr %l30, !tbaa !23
  store i32 %t31, ptr %l6, !tbaa !23
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/eval:Machine", ptr %t32, i32 0, i32 0
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t36 = load i32, ptr %l6, !tbaa !23
  %t39 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePackedBits(ptr %v0, ptr %t35, i32 %t36)
  store i64 %t39, ptr %l34
  br label %bb6
bb6:
  %t40 = load i64, ptr %l34, !tbaa !24
  store i64 %t40, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/eval:Machine", ptr %t41, i32 0, i32 0
  %t44 = load ptr, ptr %t43, !tbaa !29
  store ptr %t44, ptr %l36, !tbaa !29
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/eval:Machine", ptr %t45, i32 0, i32 0
  %t48 = load ptr, ptr %t47, !tbaa !29
  %t49 = load i32, ptr %l5, !tbaa !23
  %t52 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t48, i32 %t49)
  store i32 %t52, ptr %l40
  br label %bb7
bb7:
  %t53 = load ptr, ptr %l36, !tbaa !29
  %t54 = load i32, ptr %l40, !tbaa !23
  %t55 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %t53, i32 %t54)
  store i64 %t55, ptr %l41
  br label %bb8
bb8:
  %t56 = load i64, ptr %l41, !tbaa !24
  store i64 %t56, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t57 = load i64, ptr %l9, !tbaa !24
  %t58 = load i64, ptr %l8, !tbaa !24
  %t61 = icmp sgt i64 %t57, %t58
  br i1 %t61, label %bb9, label %bb10
bb9:
  %t63 = load i64, ptr %l10, !tbaa !24
  %t65 = icmp sgt i64 %t63, 0
  br i1 %t65, label %bb11, label %bb12
bb10:
  store i64 0, ptr %l45, !tbaa !24
  br label %bb14
bb11:
  %t67 = load i64, ptr %l9, !tbaa !24
  %t68 = load i64, ptr %l8, !tbaa !24
  %t71 = sub i64 %t67, %t68
  %t72 = load i64, ptr %l10, !tbaa !24
  %t75 = add i64 %t71, %t72
  %t77 = sub i64 %t75, 1
  %t78 = load i64, ptr %l10, !tbaa !24
  %t81 = sdiv i64 %t77, %t78
  store i64 %t81, ptr %l48, !tbaa !24
  br label %bb13
bb12:
  store i64 0, ptr %l48, !tbaa !24
  br label %bb13
bb13:
  %t83 = load i64, ptr %l48, !tbaa !24
  store i64 %t83, ptr %l45, !tbaa !24
  br label %bb14
bb14:
  %t84 = load i64, ptr %l45, !tbaa !24
  store i64 %t84, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb15
bb15:
  store %olang.scope zeroinitializer, ptr %s3
  %t85 = load i64, ptr %l12, !tbaa !24
  %t86 = load i64, ptr %l11, !tbaa !24
  %t89 = icmp slt i64 %t85, %t86
  %t91 = xor i1 %t89, true
  br i1 %t91, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s3)
  br label %bb23
bb17:
  br label %bb18
bb18:
  %t93 = load i64, ptr %l8, !tbaa !24
  %t94 = load i64, ptr %l12, !tbaa !24
  %t95 = load i64, ptr %l10, !tbaa !24
  %t98 = mul i64 %t94, %t95
  %t101 = add i64 %t93, %t98
  store i64 %t101, ptr %l13, !tbaa !24
  %t103 = load ptr, ptr %l0, !tbaa !29
  store ptr %t103, ptr %l66, !tbaa !29
  %t104 = load %"compiler/eval:Ptr", ptr %l1
  store %"compiler/eval:Ptr" %t104, ptr %l67
  %t105 = load i64, ptr %l2, !tbaa !24
  %t106 = load i64, ptr %l13, !tbaa !24
  %t107 = load i64, ptr %l7, !tbaa !24
  %t110 = mul i64 %t106, %t107
  %t113 = add i64 %t105, %t110
  store i64 %t113, ptr %l72, !tbaa !24
  %t114 = load i32, ptr %l6, !tbaa !23
  store i32 %t114, ptr %l73, !tbaa !23
  %t115 = getelementptr %"compiler/eval:Ptr", ptr %l4, i32 0, i32 0
  %t116 = load i64, ptr %t115, !tbaa !24
  store i64 %t116, ptr %l74, !tbaa !24
  %t117 = getelementptr %"compiler/eval:Ptr", ptr %l4, i32 0, i32 1
  %t118 = load i64, ptr %t117, !tbaa !24
  store i64 %t118, ptr %l75, !tbaa !24
  %t119 = load i64, ptr %l13, !tbaa !24
  store i64 %t119, ptr %l76, !tbaa !24
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t121 = load i32, ptr %l6, !tbaa !23
  %t124 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t120, i32 %t121)
  store i64 %t124, ptr %l79
  br label %bb19
bb19:
  %t125 = load i64, ptr %l76, !tbaa !24
  %t126 = load i64, ptr %l79, !tbaa !24
  %t127 = mul i64 %t125, %t126
  %t128 = load i64, ptr %l75, !tbaa !24
  %t130 = add i64 %t128, %t127
  %t131 = load i64, ptr %l74, !tbaa !24
  %t133 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s3, i64 %t131, i64 %t130)
  store %"compiler/eval:Ptr" %t133, ptr %l82
  br label %bb20
bb20:
  %t134 = load ptr, ptr %l66, !tbaa !29
  %t135 = load %"compiler/eval:Ptr", ptr %l67
  %t136 = load i64, ptr %l72, !tbaa !24
  %t137 = load i32, ptr %l73, !tbaa !23
  %t138 = load %"compiler/eval:Ptr", ptr %l82
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2epackInto(ptr %v0, ptr %t134, %"compiler/eval:Ptr" %t135, i64 %t136, i32 %t137, %"compiler/eval:Ptr" %t138)
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s3)
  br label %bb22
bb22:
  %t139 = load i64, ptr %l12, !tbaa !24
  %t141 = add i64 %t139, 1
  store i64 %t141, ptr %l12, !tbaa !24
  br label %bb15
bb23:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb24:
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t145 = getelementptr %"compiler/eval:Machine", ptr %t143, i32 0, i32 0
  %t146 = load ptr, ptr %t145, !tbaa !29
  %t147 = load i32, ptr %l5, !tbaa !23
  %t150 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePackedBits(ptr %v0, ptr %t146, i32 %t147)
  store i64 %t150, ptr %l88
  br label %bb25
bb25:
  %t151 = load i64, ptr %l88, !tbaa !24
  store i64 %t151, ptr %l14, !tbaa !24
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t154 = getelementptr %"compiler/eval:Machine", ptr %t152, i32 0, i32 0
  %t155 = load ptr, ptr %t154, !tbaa !29
  %t156 = load i32, ptr %l5, !tbaa !23
  %t159 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRawBits(ptr %v0, ptr %s0, ptr %t155, i32 %t156)
  store { i64, ptr } %t159, ptr %l92
  br label %bb26
bb26:
  %t160 = load { i64, ptr }, ptr %l92, !tbaa !27
  store { i64, ptr } %t160, ptr %l15, !tbaa !27
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t163 = getelementptr %"compiler/eval:Machine", ptr %t161, i32 0, i32 0
  %t164 = load ptr, ptr %t163, !tbaa !29
  %t165 = load i32, ptr %l5, !tbaa !23
  %t168 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRawType(ptr %v0, ptr %t164, i32 %t165)
  store i32 %t168, ptr %l96
  br label %bb27
bb27:
  %t169 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t170 = load i32, ptr %l96, !tbaa !23
  %t172 = icmp eq i32 %t170, %t169
  br i1 %t172, label %bb28, label %bb29
bb28:
  store i1 true, ptr %l99, !tbaa !21
  br label %bb30
bb29:
  %t174 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t176 = extractvalue { i64, ptr } %t174, 0
  %t178 = icmp eq i64 %t176, 0
  store i1 %t178, ptr %l99, !tbaa !21
  br label %bb30
bb30:
  %t180 = load i1, ptr %l99, !tbaa !21
  br i1 %t180, label %bb31, label %bb32
bb31:
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t182 = load %"compiler/eval:Ptr", ptr %l1
  %t183 = load i64, ptr %l2, !tbaa !24
  %t184 = load %"compiler/eval:Ptr", ptr %l4
  %t185 = load i64, ptr %l14, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopyBits(ptr %v0, ptr %t181, %"compiler/eval:Ptr" %t182, i64 %t183, %"compiler/eval:Ptr" %t184, i64 0, i64 %t185)
  br label %bb33
bb32:
  br label %bb34
bb33:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb34:
  %t191 = load ptr, ptr %l0, !tbaa !29
  %t193 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2escratchFor(ptr %v0, ptr %t191, i64 3, i64 8)
  store %"compiler/eval:Ptr" %t193, ptr %l109
  br label %bb35
bb35:
  %t194 = load %"compiler/eval:Ptr", ptr %l109
  store %"compiler/eval:Ptr" %t194, ptr %l16
  %t195 = load ptr, ptr %l0, !tbaa !29
  store ptr %t195, ptr %l110, !tbaa !29
  %t196 = load %"compiler/eval:Ptr", ptr %l16
  store %"compiler/eval:Ptr" %t196, ptr %l111
  %t197 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t197, ptr %l112, !tbaa !27
  %t198 = load ptr, ptr %l0, !tbaa !29
  %t199 = load %"compiler/eval:Ptr", ptr %l4
  %t202 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t198, %"compiler/eval:Ptr" %t199, i64 4)
  store i64 %t202, ptr %l115
  br label %bb36
bb36:
  %t203 = load i64, ptr %l115, !tbaa !24
  %t204 = getelementptr { i64, ptr }, ptr %l112, i32 0, i32 1
  %t205 = load ptr, ptr %t204, !tbaa !27
  %t206 = getelementptr i64, ptr %t205, i64 %t203
  %t207 = load i64, ptr %t206, !tbaa !34
  %t208 = load ptr, ptr %l110, !tbaa !29
  %t209 = load %"compiler/eval:Ptr", ptr %l111
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t208, %"compiler/eval:Ptr" %t209, i64 8, i64 %t207)
  br label %bb37
bb37:
  %t211 = load ptr, ptr %l0, !tbaa !29
  %t212 = load %"compiler/eval:Ptr", ptr %l1
  %t213 = load i64, ptr %l2, !tbaa !24
  %t214 = load %"compiler/eval:Ptr", ptr %l16
  %t215 = load i64, ptr %l14, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopyBits(ptr %v0, ptr %t211, %"compiler/eval:Ptr" %t212, i64 %t213, %"compiler/eval:Ptr" %t214, i64 0, i64 %t215)
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2epackedOp(ptr %v0, ptr %a0, i64 %a1, %"compiler/eval:Ptr" %a2, i32 %a3, %"compiler/mir:Range" %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"compiler/eval:Ptr"
  %l4 = alloca %"compiler/mir:Range"
  %l5 = alloca { i64, [4 x i64] }
  %l6 = alloca i32
  %l7 = alloca i64
  %l8 = alloca i32
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca %"compiler/eval:Ptr"
  %l12 = alloca %"compiler/eval:Ptr"
  %l16 = alloca { i64, [4 x i64] }
  %l18 = alloca ptr
  %l22 = alloca i32
  %l23 = alloca i32
  %l24 = alloca ptr
  %l25 = alloca i64
  %l29 = alloca { i64, [4 x i64] }
  %l30 = alloca i64
  %l32 = alloca ptr
  %l36 = alloca i32
  %l37 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l49 = alloca i64
  %l50 = alloca ptr
  %l51 = alloca i64
  %l54 = alloca i64
  %l56 = alloca %"compiler/eval:Ptr"
  %l57 = alloca ptr
  %l58 = alloca %"compiler/eval:Ptr"
  %l62 = alloca %"compiler/eval:Ptr"
  %l70 = alloca %"compiler/eval:Ptr"
  %l76 = alloca ptr
  %l77 = alloca %"compiler/eval:Ptr"
  %l78 = alloca %"compiler/eval:Ptr"
  %l81 = alloca i64
  %l82 = alloca ptr
  %l83 = alloca %"compiler/eval:Ptr"
  %l84 = alloca i64
  %l85 = alloca i32
  %l86 = alloca ptr
  %l87 = alloca i64
  %l91 = alloca { i64, [4 x i64] }
  %l92 = alloca %"compiler/eval:Ptr"
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store %"compiler/eval:Ptr" %a2, ptr %l2
  store %"compiler/mir:Range" %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t3 = load %"compiler/mir:Range", ptr %l4
  %t7 = call { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %t1, i64 %t2, %"compiler/mir:Range" %t3, i64 0)
  store { i64, [4 x i64] } %t7, ptr %l16
  br label %bb1
bb1:
  %t8 = load { i64, [4 x i64] }, ptr %l16
  store { i64, [4 x i64] } %t8, ptr %l5
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/eval:Machine", ptr %t9, i32 0, i32 0
  %t12 = load ptr, ptr %t11, !tbaa !29
  store ptr %t12, ptr %l18, !tbaa !29
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load i64, ptr %l1, !tbaa !24
  %t15 = load { i64, [4 x i64] }, ptr %l5
  %t19 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t13, i64 %t14, { i64, [4 x i64] } %t15)
  store i32 %t19, ptr %l22
  br label %bb2
bb2:
  %t20 = load ptr, ptr %l18, !tbaa !29
  %t21 = load i32, ptr %l22, !tbaa !23
  %t22 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t20, i32 %t21)
  store i32 %t22, ptr %l23
  br label %bb3
bb3:
  %t23 = load i32, ptr %l23, !tbaa !23
  store i32 %t23, ptr %l6, !tbaa !23
  %t24 = load ptr, ptr %l0, !tbaa !29
  store ptr %t24, ptr %l24, !tbaa !29
  %t25 = load i64, ptr %l1, !tbaa !24
  store i64 %t25, ptr %l25, !tbaa !24
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load i64, ptr %l1, !tbaa !24
  %t28 = load %"compiler/mir:Range", ptr %l4
  %t32 = call { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %t26, i64 %t27, %"compiler/mir:Range" %t28, i64 1)
  store { i64, [4 x i64] } %t32, ptr %l29
  br label %bb4
bb4:
  %t33 = load ptr, ptr %l24, !tbaa !29
  %t34 = load i64, ptr %l25, !tbaa !24
  %t35 = load { i64, [4 x i64] }, ptr %l29
  %t36 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %t33, i64 %t34, { i64, [4 x i64] } %t35)
  store i64 %t36, ptr %l30
  br label %bb5
bb5:
  %t37 = load i64, ptr %l30, !tbaa !24
  store i64 %t37, ptr %l7, !tbaa !24
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/eval:Machine", ptr %t38, i32 0, i32 0
  %t41 = load ptr, ptr %t40, !tbaa !29
  store ptr %t41, ptr %l32, !tbaa !29
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/eval:Machine", ptr %t42, i32 0, i32 0
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t46 = load i32, ptr %l6, !tbaa !23
  %t49 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t45, i32 %t46)
  store i32 %t49, ptr %l36
  br label %bb6
bb6:
  %t50 = load ptr, ptr %l32, !tbaa !29
  %t51 = load i32, ptr %l36, !tbaa !23
  %t52 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t50, i32 %t51)
  store { i64, ptr } %t52, ptr %l37
  br label %bb7
bb7:
  %t53 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t53, ptr %l38, !tbaa !27
  %t54 = load i64, ptr %l7, !tbaa !24
  %t56 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !27
  %t58 = getelementptr i32, ptr %t57, i64 %t54
  %t59 = load i32, ptr %t58, !tbaa !33
  store i32 %t59, ptr %l8, !tbaa !23
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/eval:Machine", ptr %t61, i32 0, i32 0
  %t64 = load ptr, ptr %t63, !tbaa !29
  %t65 = load i32, ptr %l6, !tbaa !23
  %t68 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBitOffsets(ptr %v0, ptr %s0, ptr %t64, i32 %t65)
  store { i64, ptr } %t68, ptr %l44
  br label %bb8
bb8:
  %t69 = load i64, ptr %l7, !tbaa !24
  %t71 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !27
  %t73 = getelementptr i64, ptr %t72, i64 %t69
  %t74 = load i64, ptr %t73, !tbaa !34
  store i64 %t74, ptr %l9, !tbaa !24
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t77 = load i32, ptr %l6, !tbaa !23
  %t80 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t76, i32 %t77)
  store i64 %t80, ptr %l49
  br label %bb9
bb9:
  %t81 = load i64, ptr %l49, !tbaa !24
  store i64 %t81, ptr %l10, !tbaa !24
  %t82 = load ptr, ptr %l0, !tbaa !29
  store ptr %t82, ptr %l50, !tbaa !29
  %t83 = load i64, ptr %l10, !tbaa !24
  store i64 %t83, ptr %l51, !tbaa !24
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t85 = load i32, ptr %l8, !tbaa !23
  %t88 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t84, i32 %t85)
  store i64 %t88, ptr %l54
  br label %bb10
bb10:
  %t89 = load i64, ptr %l51, !tbaa !24
  %t90 = load i64, ptr %l54, !tbaa !24
  %t91 = add i64 %t89, %t90
  %t92 = load ptr, ptr %l50, !tbaa !29
  %t94 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2escratchFor(ptr %v0, ptr %t92, i64 0, i64 %t91)
  store %"compiler/eval:Ptr" %t94, ptr %l56
  br label %bb11
bb11:
  %t95 = load %"compiler/eval:Ptr", ptr %l56
  store %"compiler/eval:Ptr" %t95, ptr %l11
  %t96 = load ptr, ptr %l0, !tbaa !29
  store ptr %t96, ptr %l57, !tbaa !29
  %t97 = load %"compiler/eval:Ptr", ptr %l11
  store %"compiler/eval:Ptr" %t97, ptr %l58
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t99 = load i64, ptr %l1, !tbaa !24
  %t100 = load { i64, [4 x i64] }, ptr %l5
  %t104 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t98, i64 %t99, { i64, [4 x i64] } %t100, i64 1)
  store %"compiler/eval:Ptr" %t104, ptr %l62
  br label %bb12
bb12:
  %t105 = load i64, ptr %l10, !tbaa !24
  %t106 = load ptr, ptr %l57, !tbaa !29
  %t107 = load %"compiler/eval:Ptr", ptr %l58
  %t108 = load %"compiler/eval:Ptr", ptr %l62
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopy(ptr %v0, ptr %t106, %"compiler/eval:Ptr" %t107, %"compiler/eval:Ptr" %t108, i64 %t105)
  br label %bb13
bb13:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/eval:Machine", ptr %t110, i32 0, i32 22
  %t113 = load i1, ptr %t112, !tbaa !21
  br i1 %t113, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb15:
  br label %bb16
bb16:
  %t117 = trunc i64 39 to i32
  %t118 = icmp eq i32 %a3, %t117
  br i1 %t118, label %bb17, label %bb18
bb17:
  store %olang.scope zeroinitializer, ptr %s2
  %t120 = getelementptr %"compiler/eval:Ptr", ptr %l11, i32 0, i32 0
  %t121 = load i64, ptr %t120, !tbaa !24
  %t122 = load i64, ptr %l10, !tbaa !24
  %t125 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s2, i64 %t121, i64 %t122)
  store %"compiler/eval:Ptr" %t125, ptr %l70
  br label %bb19
bb18:
  br label %bb23
bb19:
  %t126 = load %"compiler/eval:Ptr", ptr %l70
  store %"compiler/eval:Ptr" %t126, ptr %l12
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t128 = load %"compiler/eval:Ptr", ptr %l12
  %t129 = load i32, ptr %l8, !tbaa !23
  %t130 = load %"compiler/eval:Ptr", ptr %l11
  %t131 = load i64, ptr %l9, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eunpackInto(ptr %v0, ptr %t127, %"compiler/eval:Ptr" %t128, i32 %t129, %"compiler/eval:Ptr" %t130, i64 %t131)
  br label %bb20
bb20:
  %t137 = load ptr, ptr %l0, !tbaa !29
  store ptr %t137, ptr %l76, !tbaa !29
  %t138 = load %"compiler/eval:Ptr", ptr %l2
  store %"compiler/eval:Ptr" %t138, ptr %l77
  %t139 = load %"compiler/eval:Ptr", ptr %l12
  store %"compiler/eval:Ptr" %t139, ptr %l78
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t141 = load i32, ptr %l8, !tbaa !23
  %t144 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t140, i32 %t141)
  store i64 %t144, ptr %l81
  br label %bb21
bb21:
  %t145 = load ptr, ptr %l76, !tbaa !29
  %t146 = load %"compiler/eval:Ptr", ptr %l77
  %t147 = load %"compiler/eval:Ptr", ptr %l78
  %t148 = load i64, ptr %l81, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopy(ptr %v0, ptr %t145, %"compiler/eval:Ptr" %t146, %"compiler/eval:Ptr" %t147, i64 %t148)
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb23:
  %t149 = load ptr, ptr %l0, !tbaa !29
  store ptr %t149, ptr %l82, !tbaa !29
  %t150 = load %"compiler/eval:Ptr", ptr %l11
  store %"compiler/eval:Ptr" %t150, ptr %l83
  %t151 = load i64, ptr %l9, !tbaa !24
  store i64 %t151, ptr %l84, !tbaa !24
  %t152 = load i32, ptr %l8, !tbaa !23
  store i32 %t152, ptr %l85, !tbaa !23
  %t153 = load ptr, ptr %l0, !tbaa !29
  store ptr %t153, ptr %l86, !tbaa !29
  %t154 = load i64, ptr %l1, !tbaa !24
  store i64 %t154, ptr %l87, !tbaa !24
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t156 = load i64, ptr %l1, !tbaa !24
  %t157 = load %"compiler/mir:Range", ptr %l4
  %t161 = call { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %t155, i64 %t156, %"compiler/mir:Range" %t157, i64 2)
  store { i64, [4 x i64] } %t161, ptr %l91
  br label %bb24
bb24:
  %t162 = load ptr, ptr %l86, !tbaa !29
  %t163 = load i64, ptr %l87, !tbaa !24
  %t164 = load { i64, [4 x i64] }, ptr %l91
  %t165 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t162, i64 %t163, { i64, [4 x i64] } %t164, i64 2)
  store %"compiler/eval:Ptr" %t165, ptr %l92
  br label %bb25
bb25:
  %t166 = load ptr, ptr %l82, !tbaa !29
  %t167 = load %"compiler/eval:Ptr", ptr %l83
  %t168 = load i64, ptr %l84, !tbaa !24
  %t169 = load i32, ptr %l85, !tbaa !23
  %t170 = load %"compiler/eval:Ptr", ptr %l92
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2epackInto(ptr %v0, ptr %t166, %"compiler/eval:Ptr" %t167, i64 %t168, i32 %t169, %"compiler/eval:Ptr" %t170)
  br label %bb26
bb26:
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t172 = load %"compiler/eval:Ptr", ptr %l2
  %t173 = load %"compiler/eval:Ptr", ptr %l11
  %t174 = load i64, ptr %l10, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopy(ptr %v0, ptr %t171, %"compiler/eval:Ptr" %t172, %"compiler/eval:Ptr" %t173, i64 %t174)
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eprimWide(ptr %v0, ptr %a0, i64 %a1, %"compiler/eval:Ptr" %a2, i32 %a3, i32 %a4, %"compiler/mir:Range" %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"compiler/eval:Ptr"
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca %"compiler/mir:Range"
  %l6 = alloca { i64, [4 x i64] }
  %l7 = alloca i32
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i1
  %l11 = alloca { i64, i64 }
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca double
  %l15 = alloca { i64, i64 }
  %l18 = alloca { i64, i64 }
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i1
  %l22 = alloca i64
  %l23 = alloca { i64, i64 }
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca { i64, i64 }
  %l29 = alloca { i64, i64 }
  %l30 = alloca i64
  %l31 = alloca i64
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i64
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca i64
  %l39 = alloca i64
  %l40 = alloca i64
  %l41 = alloca { i64, i64 }
  %l43 = alloca { i64, i64 }
  %l49 = alloca i64
  %l50 = alloca { i64, i64 }
  %l51 = alloca i64
  %l52 = alloca i64
  %l53 = alloca { i64, i64 }
  %l54 = alloca i64
  %l55 = alloca i64
  %l56 = alloca { i64, i64 }
  %l60 = alloca { i64, i64 }
  %l61 = alloca i64
  %l62 = alloca i64
  %l63 = alloca i64
  %l64 = alloca i64
  %l65 = alloca { i64, i64 }
  %l66 = alloca { i64, i64 }
  %l67 = alloca { i64, i64 }
  %l68 = alloca { i64, i64 }
  %l69 = alloca i64
  %l70 = alloca i64
  %l71 = alloca { i64, i64, i64, i64 }
  %l74 = alloca i64
  %l75 = alloca i64
  %l80 = alloca { i64, i64, i64, i64 }
  %l83 = alloca i64
  %l84 = alloca i64
  %l89 = alloca { i64, i64 }
  %l90 = alloca { i64, i64 }
  %l97 = alloca i64
  %l102 = alloca { i64, [4 x i64] }
  %l106 = alloca i32
  %l109 = alloca i64
  %l112 = alloca i64
  %l114 = alloca ptr
  %l118 = alloca i32
  %l119 = alloca i1
  %l125 = alloca i64
  %l131 = alloca { i64, i64 }
  %l136 = alloca ptr
  %l137 = alloca %"compiler/eval:Ptr"
  %l140 = alloca i64
  %l141 = alloca ptr
  %l142 = alloca i64
  %l143 = alloca i64
  %l147 = alloca i1
  %l149 = alloca ptr
  %l153 = alloca i32
  %l154 = alloca i1
  %l157 = alloca i64
  %l161 = alloca ptr
  %l165 = alloca i64
  %l167 = alloca double
  %l171 = alloca i1
  %l176 = alloca { i64, i64 }
  %l187 = alloca { i64, i64 }
  %l200 = alloca i1
  %l202 = alloca ptr
  %l206 = alloca i32
  %l207 = alloca i1
  %l211 = alloca i64
  %l215 = alloca { i64, i64 }
  %l224 = alloca { i64, i64 }
  %l250 = alloca { i64, i64 }
  %l255 = alloca i64
  %l259 = alloca i64
  %l265 = alloca i64
  %l276 = alloca i64
  %l279 = alloca i64
  %l301 = alloca { i64, i64 }
  %l310 = alloca { i64, i64 }
  %l332 = alloca ptr
  %l333 = alloca ptr
  %l334 = alloca i64
  %l338 = alloca { i64, [4 x i64] }
  %l339 = alloca i64
  %l340 = alloca ptr
  %l341 = alloca i64
  %l345 = alloca { i64, [4 x i64] }
  %l346 = alloca i32
  %l347 = alloca i64
  %l365 = alloca { i64, i64 }
  %l378 = alloca { i64, i64 }
  %l386 = alloca { i64, i64 }
  %l401 = alloca { i64, [4 x i64] }
  %l405 = alloca { i64, i64 }
  %l416 = alloca { i64, i64 }
  %l425 = alloca { i64, i64 }
  %l434 = alloca { i64, i64 }
  %l443 = alloca i1
  %l450 = alloca { i64, i64 }
  %l455 = alloca i1
  %l458 = alloca i1
  %l462 = alloca i1
  %l472 = alloca { i64, i64, i64, i64 }
  %l491 = alloca { i64, i64, i64, i64 }
  %l512 = alloca i1
  %l515 = alloca i1
  %l524 = alloca { i64, i64 }
  %l531 = alloca { i64, i64 }
  %l581 = alloca i64
  %l582 = alloca i1
  %l605 = alloca ptr
  %l606 = alloca %"compiler/eval:Ptr"
  %l608 = alloca i64
  %l610 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store %"compiler/eval:Ptr" %a2, ptr %l2
  store i32 %a3, ptr %l3
  store i32 %a4, ptr %l4
  store %"compiler/mir:Range" %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t3 = load %"compiler/mir:Range", ptr %l5
  %t7 = call { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %t1, i64 %t2, %"compiler/mir:Range" %t3, i64 0)
  store { i64, [4 x i64] } %t7, ptr %l102
  br label %bb1
bb1:
  %t8 = load { i64, [4 x i64] }, ptr %l102
  store { i64, [4 x i64] } %t8, ptr %l6
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load i64, ptr %l1, !tbaa !24
  %t11 = load { i64, [4 x i64] }, ptr %l6
  %t15 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t9, i64 %t10, { i64, [4 x i64] } %t11)
  store i32 %t15, ptr %l106
  br label %bb2
bb2:
  %t16 = load i32, ptr %l106, !tbaa !23
  store i32 %t16, ptr %l7, !tbaa !23
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load i32, ptr %l7, !tbaa !23
  %t21 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t17, i32 %t18)
  store i64 %t21, ptr %l109
  br label %bb3
bb3:
  %t22 = load i64, ptr %l109, !tbaa !24
  store i64 %t22, ptr %l8, !tbaa !24
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load i32, ptr %l4, !tbaa !23
  %t27 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eibits(ptr %v0, ptr %t23, i32 %t24)
  store i64 %t27, ptr %l112
  br label %bb4
bb4:
  %t28 = load i64, ptr %l112, !tbaa !24
  store i64 %t28, ptr %l9, !tbaa !24
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/eval:Machine", ptr %t29, i32 0, i32 0
  %t32 = load ptr, ptr %t31, !tbaa !29
  store ptr %t32, ptr %l114, !tbaa !29
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/eval:Machine", ptr %t33, i32 0, i32 0
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t37 = load i32, ptr %l4, !tbaa !23
  %t40 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t36, i32 %t37)
  store i32 %t40, ptr %l118
  br label %bb5
bb5:
  %t41 = load ptr, ptr %l114, !tbaa !29
  %t42 = load i32, ptr %l118, !tbaa !23
  %t43 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %t41, i32 %t42)
  store i1 %t43, ptr %l119
  br label %bb6
bb6:
  %t44 = load i1, ptr %l119, !tbaa !21
  %t45 = xor i1 %t44, true
  store i1 %t45, ptr %l10, !tbaa !21
  %t47 = load i32, ptr %l3, !range !{i32 0, i32 51}
  %t49 = trunc i64 20 to i32
  %t50 = icmp eq i32 %t47, %t49
  br i1 %t50, label %bb7, label %bb8
bb7:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load i32, ptr %l4, !tbaa !23
  %t56 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t52, i32 %t53)
  store i64 %t56, ptr %l125
  br label %bb9
bb8:
  br label %bb42
bb9:
  %t57 = load i64, ptr @G_2ecompiler_2feval_2evFloat, !tbaa !24
  %t58 = load i64, ptr %l125, !tbaa !24
  %t60 = icmp eq i64 %t58, %t57
  br i1 %t60, label %bb10, label %bb11
bb10:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load i64, ptr %l1, !tbaa !24
  %t64 = load { i64, [4 x i64] }, ptr %l6
  %t68 = call { i64, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2ewideOf(ptr %v0, ptr %t62, i64 %t63, { i64, [4 x i64] } %t64)
  store { i64, i64 } %t68, ptr %l131
  br label %bb12
bb11:
  br label %bb24
bb12:
  %t69 = load { i64, i64 }, ptr %l131
  store { i64, i64 } %t69, ptr %l11
  %t70 = getelementptr { i64, i64 }, ptr %l11, i32 0, i32 0
  %t71 = load i64, ptr %t70, !tbaa !24
  store i64 %t71, ptr %l12, !tbaa !24
  %t73 = getelementptr { i64, i64 }, ptr %l11, i32 0, i32 1
  %t74 = load i64, ptr %t73, !tbaa !24
  store i64 %t74, ptr %l13, !tbaa !24
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/eval:Machine", ptr %t76, i32 0, i32 22
  %t79 = load i1, ptr %t78, !tbaa !21
  br i1 %t79, label %bb13, label %bb14
bb13:
  br label %ret
bb14:
  br label %bb15
bb15:
  %t81 = load ptr, ptr %l0, !tbaa !29
  store ptr %t81, ptr %l136, !tbaa !29
  %t82 = load %"compiler/eval:Ptr", ptr %l2
  store %"compiler/eval:Ptr" %t82, ptr %l137
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t84 = load i32, ptr %l4, !tbaa !23
  %t87 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidth(ptr %v0, ptr %t83, i32 %t84)
  store i64 %t87, ptr %l140
  br label %bb16
bb16:
  %t88 = load ptr, ptr %l0, !tbaa !29
  store ptr %t88, ptr %l141, !tbaa !29
  %t89 = load i64, ptr %l12, !tbaa !24
  store i64 %t89, ptr %l142, !tbaa !24
  %t90 = load i64, ptr %l13, !tbaa !24
  store i64 %t90, ptr %l143, !tbaa !24
  %t91 = load i64, ptr %l8, !tbaa !24
  %t92 = load i64, ptr @G_2ecompiler_2feval_2evUint, !tbaa !24
  %t95 = icmp ne i64 %t91, %t92
  br i1 %t95, label %bb17, label %bb18
bb17:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/eval:Machine", ptr %t97, i32 0, i32 0
  %t100 = load ptr, ptr %t99, !tbaa !29
  store ptr %t100, ptr %l149, !tbaa !29
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = getelementptr %"compiler/eval:Machine", ptr %t101, i32 0, i32 0
  %t104 = load ptr, ptr %t103, !tbaa !29
  %t105 = load i32, ptr %l7, !tbaa !23
  %t108 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t104, i32 %t105)
  store i32 %t108, ptr %l153
  br label %bb19
bb18:
  store i1 false, ptr %l147, !tbaa !21
  br label %bb21
bb19:
  %t109 = load ptr, ptr %l149, !tbaa !29
  %t110 = load i32, ptr %l153, !tbaa !23
  %t111 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %t109, i32 %t110)
  store i1 %t111, ptr %l154
  br label %bb20
bb20:
  %t112 = load i1, ptr %l154, !tbaa !21
  %t113 = xor i1 %t112, true
  store i1 %t113, ptr %l147, !tbaa !21
  br label %bb21
bb21:
  %t115 = load i32, ptr %l4, !tbaa !23
  %t116 = load ptr, ptr %l141, !tbaa !29
  %t117 = load i64, ptr %l142, !tbaa !24
  %t118 = load i64, ptr %l143, !tbaa !24
  %t119 = load i1, ptr %l147, !tbaa !21
  %t121 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewideToFloat(ptr %v0, ptr %t116, i64 %t117, i64 %t118, i1 %t119, i32 %t115)
  store i64 %t121, ptr %l157
  br label %bb22
bb22:
  %t122 = load ptr, ptr %l136, !tbaa !29
  %t123 = load %"compiler/eval:Ptr", ptr %l137
  %t124 = load i64, ptr %l140, !tbaa !24
  %t125 = load i64, ptr %l157, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t122, %"compiler/eval:Ptr" %t123, i64 %t124, i64 %t125)
  br label %bb23
bb23:
  br label %ret
bb24:
  %t126 = load i64, ptr %l8, !tbaa !24
  %t127 = load i64, ptr @G_2ecompiler_2feval_2evFloat, !tbaa !24
  %t130 = icmp eq i64 %t126, %t127
  br i1 %t130, label %bb25, label %bb26
bb25:
  %t132 = load ptr, ptr %l0, !tbaa !29
  store ptr %t132, ptr %l161, !tbaa !29
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t134 = load i64, ptr %l1, !tbaa !24
  %t135 = load { i64, [4 x i64] }, ptr %l6
  %t139 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %t133, i64 %t134, { i64, [4 x i64] } %t135)
  store i64 %t139, ptr %l165
  br label %bb27
bb26:
  br label %bb36
bb27:
  %t140 = load i32, ptr %l7, !tbaa !23
  %t141 = load ptr, ptr %l161, !tbaa !29
  %t142 = load i64, ptr %l165, !tbaa !24
  %t144 = call double @compiler_2feval_2ecompiler_2feval_3aMachine_2etoF64(ptr %v0, ptr %t141, i64 %t142, i32 %t140)
  store double %t144, ptr %l167
  br label %bb28
bb28:
  %t145 = load double, ptr %l167, !tbaa !26
  store double %t145, ptr %l14, !tbaa !26
  %t146 = load double, ptr %l14, !tbaa !26
  %t147 = load i64, ptr %l9, !tbaa !24
  %t148 = load i1, ptr %l10, !tbaa !21
  %t152 = call i1 @compiler_2feval_2efloatFits(double %t146, i64 %t147, i1 %t148)
  store i1 %t152, ptr %l171
  br label %bb29
bb29:
  %t153 = load i1, ptr %l171, !tbaa !21
  %t154 = xor i1 %t153, true
  br i1 %t154, label %bb30, label %bb31
bb30:
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t157 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyConvert, !tbaa !27
  %t158 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t158, ptr %t156, { i64, ptr } %t157)
  br label %bb32
bb31:
  br label %bb33
bb32:
  br label %ret
bb33:
  %t161 = load double, ptr %l14, !tbaa !26
  %t163 = call { i64, i64 } @compiler_2feval_2efloatToWide(double %t161)
  store { i64, i64 } %t163, ptr %l176
  br label %bb34
bb34:
  %t164 = load { i64, i64 }, ptr %l176
  store { i64, i64 } %t164, ptr %l15
  %t165 = getelementptr { i64, i64 }, ptr %l15, i32 0, i32 0
  %t166 = load i64, ptr %t165, !tbaa !24
  %t168 = getelementptr { i64, i64 }, ptr %l15, i32 0, i32 1
  %t169 = load i64, ptr %t168, !tbaa !24
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t172 = load %"compiler/eval:Ptr", ptr %l2
  %t173 = load i32, ptr %l4, !tbaa !23
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eputInt(ptr %v0, ptr %t171, %"compiler/eval:Ptr" %t172, i32 %t173, i64 %t166, i64 %t169)
  br label %bb35
bb35:
  br label %ret
bb36:
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t182 = load i64, ptr %l1, !tbaa !24
  %t183 = load { i64, [4 x i64] }, ptr %l6
  %t187 = call { i64, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2ewideOf(ptr %v0, ptr %t181, i64 %t182, { i64, [4 x i64] } %t183)
  store { i64, i64 } %t187, ptr %l187
  br label %bb37
bb37:
  %t188 = load { i64, i64 }, ptr %l187
  store { i64, i64 } %t188, ptr %l18
  %t189 = getelementptr { i64, i64 }, ptr %l18, i32 0, i32 0
  %t190 = load i64, ptr %t189, !tbaa !24
  store i64 %t190, ptr %l19, !tbaa !24
  %t192 = getelementptr { i64, i64 }, ptr %l18, i32 0, i32 1
  %t193 = load i64, ptr %t192, !tbaa !24
  store i64 %t193, ptr %l20, !tbaa !24
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t197 = getelementptr %"compiler/eval:Machine", ptr %t195, i32 0, i32 22
  %t198 = load i1, ptr %t197, !tbaa !21
  br i1 %t198, label %bb38, label %bb39
bb38:
  br label %ret
bb39:
  br label %bb40
bb40:
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t201 = load %"compiler/eval:Ptr", ptr %l2
  %t202 = load i32, ptr %l4, !tbaa !23
  %t203 = load i64, ptr %l19, !tbaa !24
  %t204 = load i64, ptr %l20, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eputInt(ptr %v0, ptr %t200, %"compiler/eval:Ptr" %t201, i32 %t202, i64 %t203, i64 %t204)
  br label %bb41
bb41:
  br label %ret
bb42:
  %t210 = load i64, ptr %l8, !tbaa !24
  %t211 = load i64, ptr @G_2ecompiler_2feval_2evUint, !tbaa !24
  %t214 = icmp ne i64 %t210, %t211
  br i1 %t214, label %bb43, label %bb44
bb43:
  %t216 = load ptr, ptr %l0, !tbaa !29
  %t218 = getelementptr %"compiler/eval:Machine", ptr %t216, i32 0, i32 0
  %t219 = load ptr, ptr %t218, !tbaa !29
  store ptr %t219, ptr %l202, !tbaa !29
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t222 = getelementptr %"compiler/eval:Machine", ptr %t220, i32 0, i32 0
  %t223 = load ptr, ptr %t222, !tbaa !29
  %t224 = load i32, ptr %l7, !tbaa !23
  %t227 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t223, i32 %t224)
  store i32 %t227, ptr %l206
  br label %bb45
bb44:
  store i1 false, ptr %l200, !tbaa !21
  br label %bb47
bb45:
  %t228 = load ptr, ptr %l202, !tbaa !29
  %t229 = load i32, ptr %l206, !tbaa !23
  %t230 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %t228, i32 %t229)
  store i1 %t230, ptr %l207
  br label %bb46
bb46:
  %t231 = load i1, ptr %l207, !tbaa !21
  %t232 = xor i1 %t231, true
  store i1 %t232, ptr %l200, !tbaa !21
  br label %bb47
bb47:
  %t234 = load i1, ptr %l200, !tbaa !21
  store i1 %t234, ptr %l21, !tbaa !21
  %t235 = load ptr, ptr %l0, !tbaa !29
  %t236 = load i32, ptr %l7, !tbaa !23
  %t239 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eibits(ptr %v0, ptr %t235, i32 %t236)
  store i64 %t239, ptr %l211
  br label %bb48
bb48:
  %t240 = load i64, ptr %l211, !tbaa !24
  store i64 %t240, ptr %l22, !tbaa !24
  %t241 = load ptr, ptr %l0, !tbaa !29
  %t242 = load i64, ptr %l1, !tbaa !24
  %t243 = load { i64, [4 x i64] }, ptr %l6
  %t247 = call { i64, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2ewideOf(ptr %v0, ptr %t241, i64 %t242, { i64, [4 x i64] } %t243)
  store { i64, i64 } %t247, ptr %l215
  br label %bb49
bb49:
  %t248 = load { i64, i64 }, ptr %l215
  store { i64, i64 } %t248, ptr %l23
  %t249 = getelementptr { i64, i64 }, ptr %l23, i32 0, i32 0
  %t250 = load i64, ptr %t249, !tbaa !24
  store i64 %t250, ptr %l24, !tbaa !24
  %t252 = getelementptr { i64, i64 }, ptr %l23, i32 0, i32 1
  %t253 = load i64, ptr %t252, !tbaa !24
  store i64 %t253, ptr %l25, !tbaa !24
  %t255 = load ptr, ptr %l0, !tbaa !29
  %t257 = getelementptr %"compiler/eval:Machine", ptr %t255, i32 0, i32 22
  %t258 = load i1, ptr %t257, !tbaa !21
  br i1 %t258, label %bb50, label %bb51
bb50:
  br label %ret
bb51:
  br label %bb52
bb52:
  %t260 = load i32, ptr %l3, !range !{i32 0, i32 51}
  %t262 = trunc i64 0 to i32
  %t263 = icmp eq i32 %t260, %t262
  br i1 %t263, label %bb53, label %bb54
bb53:
  br label %bb55
bb54:
  br label %bb58
bb55:
  %t265 = load i64, ptr %l24, !tbaa !24
  %t266 = load i64, ptr %l25, !tbaa !24
  %t269 = call { i64, i64 } @compiler_2feval_2eneg128(i64 %t265, i64 %t266)
  store { i64, i64 } %t269, ptr %l224
  br label %bb56
bb56:
  %t270 = load { i64, i64 }, ptr %l224
  store { i64, i64 } %t270, ptr %l26
  %t271 = getelementptr { i64, i64 }, ptr %l26, i32 0, i32 0
  %t272 = load i64, ptr %t271, !tbaa !24
  %t274 = getelementptr { i64, i64 }, ptr %l26, i32 0, i32 1
  %t275 = load i64, ptr %t274, !tbaa !24
  %t277 = load ptr, ptr %l0, !tbaa !29
  %t278 = load %"compiler/eval:Ptr", ptr %l2
  %t279 = load i32, ptr %l4, !tbaa !23
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eputInt(ptr %v0, ptr %t277, %"compiler/eval:Ptr" %t278, i32 %t279, i64 %t272, i64 %t275)
  br label %bb57
bb57:
  br label %ret
bb58:
  %t287 = load i32, ptr %l3, !range !{i32 0, i32 51}
  %t289 = trunc i64 1 to i32
  %t290 = icmp eq i32 %t287, %t289
  br i1 %t290, label %bb59, label %bb60
bb59:
  br label %bb61
bb60:
  br label %bb63
bb61:
  %t292 = load ptr, ptr %l0, !tbaa !29
  %t293 = load %"compiler/eval:Ptr", ptr %l2
  %t294 = load i32, ptr %l4, !tbaa !23
  %t295 = load i64, ptr %l24, !tbaa !24
  %t297 = xor i64 %t295, -1
  %t298 = load i64, ptr %l25, !tbaa !24
  %t300 = xor i64 %t298, -1
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eputInt(ptr %v0, ptr %t292, %"compiler/eval:Ptr" %t293, i32 %t294, i64 %t297, i64 %t300)
  br label %bb62
bb62:
  br label %ret
bb63:
  %t306 = load i32, ptr %l3, !range !{i32 0, i32 51}
  %t308 = trunc i64 31 to i32
  %t309 = icmp eq i32 %t306, %t308
  br i1 %t309, label %bb64, label %bb65
bb64:
  br label %bb70
bb65:
  %t311 = load i32, ptr %l3, !range !{i32 0, i32 51}
  %t313 = trunc i64 32 to i32
  %t314 = icmp eq i32 %t311, %t313
  br i1 %t314, label %bb66, label %bb67
bb66:
  br label %bb70
bb67:
  %t316 = load i32, ptr %l3, !range !{i32 0, i32 51}
  %t318 = trunc i64 33 to i32
  %t319 = icmp eq i32 %t316, %t318
  br i1 %t319, label %bb68, label %bb69
bb68:
  br label %bb70
bb69:
  br label %bb78
bb70:
  %t321 = load i64, ptr %l24, !tbaa !24
  %t322 = load i64, ptr %l25, !tbaa !24
  %t323 = load i64, ptr %l22, !tbaa !24
  %t327 = call { i64, i64 } @compiler_2feval_2eextend128(i64 %t321, i64 %t322, i64 %t323, i1 false)
  store { i64, i64 } %t327, ptr %l250
  br label %bb71
bb71:
  %t328 = load { i64, i64 }, ptr %l250
  store { i64, i64 } %t328, ptr %l29
  %t329 = getelementptr { i64, i64 }, ptr %l29, i32 0, i32 0
  %t330 = load i64, ptr %t329, !tbaa !24
  store i64 %t330, ptr %l30, !tbaa !24
  %t332 = getelementptr { i64, i64 }, ptr %l29, i32 0, i32 1
  %t333 = load i64, ptr %t332, !tbaa !24
  store i64 %t333, ptr %l31, !tbaa !24
  %t335 = load i32, ptr %l3, !range !{i32 0, i32 51}
  %t337 = trunc i64 31 to i32
  %t338 = icmp eq i32 %t335, %t337
  br i1 %t338, label %bb72, label %bb73
bb72:
  %t340 = load i64, ptr %l30, !tbaa !24
  %t341 = load i64, ptr %l31, !tbaa !24
  %t342 = load i64, ptr %l22, !tbaa !24
  %t346 = call i64 @compiler_2feval_2elz128(i64 %t340, i64 %t341, i64 %t342)
  store i64 %t346, ptr %l259
  br label %bb74
bb73:
  %t347 = load i32, ptr %l3, !range !{i32 0, i32 51}
  %t349 = trunc i64 33 to i32
  %t350 = icmp eq i32 %t347, %t349
  %t351 = load i64, ptr %l30, !tbaa !24
  %t352 = load i64, ptr %l31, !tbaa !24
  %t353 = load i64, ptr %l22, !tbaa !24
  %t358 = call i64 @compiler_2feval_2ecountBits128(i1 %t350, i64 %t351, i64 %t352, i64 %t353)
  store i64 %t358, ptr %l265
  br label %bb75
bb74:
  %t359 = load i64, ptr %l259, !tbaa !24
  store i64 %t359, ptr %l255, !tbaa !24
  br label %bb76
bb75:
  %t360 = load i64, ptr %l265, !tbaa !24
  store i64 %t360, ptr %l255, !tbaa !24
  br label %bb76
bb76:
  %t361 = load i64, ptr %l255, !tbaa !24
  %t362 = load ptr, ptr %l0, !tbaa !29
  %t363 = load %"compiler/eval:Ptr", ptr %l2
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t362, %"compiler/eval:Ptr" %t363, i64 8, i64 %t361)
  br label %bb77
bb77:
  br label %ret
bb78:
  %t368 = load i32, ptr %l3, !range !{i32 0, i32 51}
  %t370 = trunc i64 36 to i32
  %t371 = icmp eq i32 %t368, %t370
  br i1 %t371, label %bb79, label %bb80
bb79:
  br label %bb81
bb80:
  br label %bb97
bb81:
  store i64 0, ptr %l33, !tbaa !24
  store i64 0, ptr %l34, !tbaa !24
  store i64 0, ptr %l35, !tbaa !24
  %t373 = load i64, ptr %l22, !tbaa !24
  %t375 = sdiv i64 %t373, 8
  store i64 %t375, ptr %l36, !tbaa !24
  store i64 1, ptr %l37, !tbaa !24
  %t377 = load i64, ptr %l36, !tbaa !24
  %t378 = load i64, ptr %l35, !tbaa !24
  %t381 = icmp sgt i64 %t377, %t378
  br i1 %t381, label %bb82, label %bb83
bb82:
  %t383 = load i64, ptr %l37, !tbaa !24
  %t385 = icmp sgt i64 %t383, 0
  br i1 %t385, label %bb84, label %bb85
bb83:
  store i64 0, ptr %l276, !tbaa !24
  br label %bb87
bb84:
  %t387 = load i64, ptr %l36, !tbaa !24
  %t388 = load i64, ptr %l35, !tbaa !24
  %t391 = sub i64 %t387, %t388
  %t392 = load i64, ptr %l37, !tbaa !24
  %t395 = add i64 %t391, %t392
  %t397 = sub i64 %t395, 1
  %t398 = load i64, ptr %l37, !tbaa !24
  %t401 = sdiv i64 %t397, %t398
  store i64 %t401, ptr %l279, !tbaa !24
  br label %bb86
bb85:
  store i64 0, ptr %l279, !tbaa !24
  br label %bb86
bb86:
  %t403 = load i64, ptr %l279, !tbaa !24
  store i64 %t403, ptr %l276, !tbaa !24
  br label %bb87
bb87:
  %t404 = load i64, ptr %l276, !tbaa !24
  store i64 %t404, ptr %l38, !tbaa !24
  store i64 0, ptr %l39, !tbaa !24
  br label %bb88
bb88:
  %t405 = load i64, ptr %l39, !tbaa !24
  %t406 = load i64, ptr %l38, !tbaa !24
  %t409 = icmp slt i64 %t405, %t406
  %t411 = xor i1 %t409, true
  br i1 %t411, label %bb89, label %bb90
bb89:
  br label %bb95
bb90:
  br label %bb91
bb91:
  %t413 = load i64, ptr %l35, !tbaa !24
  %t414 = load i64, ptr %l39, !tbaa !24
  %t415 = load i64, ptr %l37, !tbaa !24
  %t418 = mul i64 %t414, %t415
  %t421 = add i64 %t413, %t418
  store i64 %t421, ptr %l40, !tbaa !24
  %t423 = load i64, ptr %l24, !tbaa !24
  %t424 = load i64, ptr %l25, !tbaa !24
  %t425 = load i64, ptr %l40, !tbaa !24
  %t427 = mul i64 8, %t425
  %t431 = call { i64, i64 } @compiler_2feval_2eshr128(i64 %t423, i64 %t424, i64 %t427, i1 false)
  store { i64, i64 } %t431, ptr %l301
  br label %bb92
bb92:
  %t432 = load { i64, i64 }, ptr %l301
  store { i64, i64 } %t432, ptr %l41
  %t433 = getelementptr { i64, i64 }, ptr %l41, i32 0, i32 0
  %t434 = load i64, ptr %t433, !tbaa !24
  %t438 = and i64 %t434, 255
  %t439 = load i64, ptr %l22, !tbaa !24
  %t441 = sub i64 %t439, 8
  %t442 = load i64, ptr %l40, !tbaa !24
  %t444 = mul i64 8, %t442
  %t447 = sub i64 %t441, %t444
  %t450 = call { i64, i64 } @compiler_2feval_2eshl128(i64 %t438, i64 0, i64 %t447)
  store { i64, i64 } %t450, ptr %l310
  br label %bb93
bb93:
  %t451 = load { i64, i64 }, ptr %l310
  store { i64, i64 } %t451, ptr %l43
  %t452 = getelementptr { i64, i64 }, ptr %l43, i32 0, i32 0
  %t453 = load i64, ptr %t452, !tbaa !24
  %t455 = getelementptr { i64, i64 }, ptr %l43, i32 0, i32 1
  %t456 = load i64, ptr %t455, !tbaa !24
  %t458 = load i64, ptr %l33, !tbaa !24
  %t462 = or i64 %t458, %t453
  %t464 = load i64, ptr %l34, !tbaa !24
  %t468 = or i64 %t464, %t456
  store i64 %t462, ptr %l33, !tbaa !24
  store i64 %t468, ptr %l34, !tbaa !24
  br label %bb94
bb94:
  %t474 = load i64, ptr %l39, !tbaa !24
  %t476 = add i64 %t474, 1
  store i64 %t476, ptr %l39, !tbaa !24
  br label %bb88
bb95:
  %t478 = load ptr, ptr %l0, !tbaa !29
  %t479 = load %"compiler/eval:Ptr", ptr %l2
  %t480 = load i32, ptr %l4, !tbaa !23
  %t481 = load i64, ptr %l33, !tbaa !24
  %t482 = load i64, ptr %l34, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eputInt(ptr %v0, ptr %t478, %"compiler/eval:Ptr" %t479, i32 %t480, i64 %t481, i64 %t482)
  br label %bb96
bb96:
  br label %ret
bb97:
  %t488 = load i32, ptr %l3, !range !{i32 0, i32 51}
  %t490 = trunc i64 34 to i32
  %t491 = icmp eq i32 %t488, %t490
  br i1 %t491, label %bb98, label %bb99
bb98:
  br label %bb102
bb99:
  %t493 = load i32, ptr %l3, !range !{i32 0, i32 51}
  %t495 = trunc i64 35 to i32
  %t496 = icmp eq i32 %t493, %t495
  br i1 %t496, label %bb100, label %bb101
bb100:
  br label %bb102
bb101:
  br label %bb119
bb102:
  %t498 = load ptr, ptr %l0, !tbaa !29
  store ptr %t498, ptr %l332, !tbaa !29
  %t499 = load ptr, ptr %l0, !tbaa !29
  store ptr %t499, ptr %l333, !tbaa !29
  %t500 = load i64, ptr %l1, !tbaa !24
  store i64 %t500, ptr %l334, !tbaa !24
  %t501 = load ptr, ptr %l0, !tbaa !29
  %t502 = load i64, ptr %l1, !tbaa !24
  %t503 = load %"compiler/mir:Range", ptr %l5
  %t507 = call { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %t501, i64 %t502, %"compiler/mir:Range" %t503, i64 1)
  store { i64, [4 x i64] } %t507, ptr %l338
  br label %bb103
bb103:
  %t508 = load ptr, ptr %l333, !tbaa !29
  %t509 = load i64, ptr %l334, !tbaa !24
  %t510 = load { i64, [4 x i64] }, ptr %l338
  %t511 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %t508, i64 %t509, { i64, [4 x i64] } %t510)
  store i64 %t511, ptr %l339
  br label %bb104
bb104:
  %t512 = load ptr, ptr %l0, !tbaa !29
  store ptr %t512, ptr %l340, !tbaa !29
  %t513 = load i64, ptr %l1, !tbaa !24
  store i64 %t513, ptr %l341, !tbaa !24
  %t514 = load ptr, ptr %l0, !tbaa !29
  %t515 = load i64, ptr %l1, !tbaa !24
  %t516 = load %"compiler/mir:Range", ptr %l5
  %t520 = call { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %t514, i64 %t515, %"compiler/mir:Range" %t516, i64 1)
  store { i64, [4 x i64] } %t520, ptr %l345
  br label %bb105
bb105:
  %t521 = load ptr, ptr %l340, !tbaa !29
  %t522 = load i64, ptr %l341, !tbaa !24
  %t523 = load { i64, [4 x i64] }, ptr %l345
  %t524 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t521, i64 %t522, { i64, [4 x i64] } %t523)
  store i32 %t524, ptr %l346
  br label %bb106
bb106:
  %t525 = load ptr, ptr %l332, !tbaa !29
  %t526 = load i64, ptr %l339, !tbaa !24
  %t527 = load i32, ptr %l346, !tbaa !23
  %t528 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintValue(ptr %v0, ptr %t525, i64 %t526, i32 %t527)
  store i64 %t528, ptr %l347
  br label %bb107
bb107:
  %t529 = load i64, ptr %l347, !tbaa !24
  %t531 = load i64, ptr %l22, !tbaa !24
  %t534 = srem i64 %t529, %t531
  %t535 = load i64, ptr %l22, !tbaa !24
  %t538 = add i64 %t534, %t535
  %t539 = load i64, ptr %l22, !tbaa !24
  %t542 = srem i64 %t538, %t539
  store i64 %t542, ptr %l49, !tbaa !24
  %t544 = load i32, ptr %l3, !range !{i32 0, i32 51}
  %t546 = trunc i64 35 to i32
  %t547 = icmp eq i32 %t544, %t546
  br i1 %t547, label %bb108, label %bb109
bb108:
  %t549 = load i64, ptr %l22, !tbaa !24
  %t550 = load i64, ptr %l49, !tbaa !24
  %t553 = sub i64 %t549, %t550
  %t554 = load i64, ptr %l22, !tbaa !24
  %t557 = srem i64 %t553, %t554
  store i64 %t557, ptr %l49, !tbaa !24
  br label %bb110
bb109:
  br label %bb110
bb110:
  %t559 = load i64, ptr %l24, !tbaa !24
  %t560 = load i64, ptr %l25, !tbaa !24
  %t561 = load i64, ptr %l22, !tbaa !24
  %t565 = call { i64, i64 } @compiler_2feval_2eextend128(i64 %t559, i64 %t560, i64 %t561, i1 false)
  store { i64, i64 } %t565, ptr %l365
  br label %bb111
bb111:
  %t566 = load { i64, i64 }, ptr %l365
  store { i64, i64 } %t566, ptr %l50
  %t567 = getelementptr { i64, i64 }, ptr %l50, i32 0, i32 0
  %t568 = load i64, ptr %t567, !tbaa !24
  store i64 %t568, ptr %l51, !tbaa !24
  %t570 = getelementptr { i64, i64 }, ptr %l50, i32 0, i32 1
  %t571 = load i64, ptr %t570, !tbaa !24
  store i64 %t571, ptr %l52, !tbaa !24
  %t573 = load i64, ptr %l49, !tbaa !24
  %t575 = icmp eq i64 %t573, 0
  br i1 %t575, label %bb112, label %bb113
bb112:
  %t577 = load ptr, ptr %l0, !tbaa !29
  %t578 = load %"compiler/eval:Ptr", ptr %l2
  %t579 = load i32, ptr %l4, !tbaa !23
  %t580 = load i64, ptr %l51, !tbaa !24
  %t581 = load i64, ptr %l52, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eputInt(ptr %v0, ptr %t577, %"compiler/eval:Ptr" %t578, i32 %t579, i64 %t580, i64 %t581)
  br label %bb114
bb113:
  br label %bb115
bb114:
  br label %ret
bb115:
  %t587 = load i64, ptr %l51, !tbaa !24
  %t588 = load i64, ptr %l52, !tbaa !24
  %t589 = load i64, ptr %l49, !tbaa !24
  %t593 = call { i64, i64 } @compiler_2feval_2eshl128(i64 %t587, i64 %t588, i64 %t589)
  store { i64, i64 } %t593, ptr %l378
  br label %bb116
bb116:
  %t594 = load { i64, i64 }, ptr %l378
  store { i64, i64 } %t594, ptr %l53
  %t595 = getelementptr { i64, i64 }, ptr %l53, i32 0, i32 0
  %t596 = load i64, ptr %t595, !tbaa !24
  store i64 %t596, ptr %l54, !tbaa !24
  %t598 = getelementptr { i64, i64 }, ptr %l53, i32 0, i32 1
  %t599 = load i64, ptr %t598, !tbaa !24
  store i64 %t599, ptr %l55, !tbaa !24
  %t601 = load i64, ptr %l51, !tbaa !24
  %t602 = load i64, ptr %l52, !tbaa !24
  %t603 = load i64, ptr %l22, !tbaa !24
  %t604 = load i64, ptr %l49, !tbaa !24
  %t607 = sub i64 %t603, %t604
  %t611 = call { i64, i64 } @compiler_2feval_2eshr128(i64 %t601, i64 %t602, i64 %t607, i1 false)
  store { i64, i64 } %t611, ptr %l386
  br label %bb117
bb117:
  %t612 = load { i64, i64 }, ptr %l386
  store { i64, i64 } %t612, ptr %l56
  %t613 = getelementptr { i64, i64 }, ptr %l56, i32 0, i32 0
  %t614 = load i64, ptr %t613, !tbaa !24
  %t616 = getelementptr { i64, i64 }, ptr %l56, i32 0, i32 1
  %t617 = load i64, ptr %t616, !tbaa !24
  %t619 = load ptr, ptr %l0, !tbaa !29
  %t620 = load %"compiler/eval:Ptr", ptr %l2
  %t621 = load i32, ptr %l4, !tbaa !23
  %t622 = load i64, ptr %l54, !tbaa !24
  %t626 = or i64 %t622, %t614
  %t627 = load i64, ptr %l55, !tbaa !24
  %t631 = or i64 %t627, %t617
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eputInt(ptr %v0, ptr %t619, %"compiler/eval:Ptr" %t620, i32 %t621, i64 %t626, i64 %t631)
  br label %bb118
bb118:
  br label %ret
bb119:
  br i1 true, label %bb120, label %bb121
bb120:
  br label %bb122
bb121:
  br label %bb123
bb122:
  br label %bb124
bb123:
  call void @__olang_check_failed(ptr @olang_loc_90562c53bc58bb00_b398839a3bffbdf4)
  unreachable
bb124:
  %t637 = load ptr, ptr %l0, !tbaa !29
  %t638 = load i64, ptr %l1, !tbaa !24
  %t639 = load %"compiler/mir:Range", ptr %l5
  %t643 = call { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %t637, i64 %t638, %"compiler/mir:Range" %t639, i64 1)
  store { i64, [4 x i64] } %t643, ptr %l401
  br label %bb125
bb125:
  %t644 = load { i64, [4 x i64] }, ptr %l401
  %t645 = load ptr, ptr %l0, !tbaa !29
  %t646 = load i64, ptr %l1, !tbaa !24
  %t651 = call { i64, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2ewideOf(ptr %v0, ptr %t645, i64 %t646, { i64, [4 x i64] } %t644)
  store { i64, i64 } %t651, ptr %l405
  br label %bb126
bb126:
  %t652 = load { i64, i64 }, ptr %l405
  store { i64, i64 } %t652, ptr %l60
  %t653 = getelementptr { i64, i64 }, ptr %l60, i32 0, i32 0
  %t654 = load i64, ptr %t653, !tbaa !24
  store i64 %t654, ptr %l61, !tbaa !24
  %t656 = getelementptr { i64, i64 }, ptr %l60, i32 0, i32 1
  %t657 = load i64, ptr %t656, !tbaa !24
  store i64 %t657, ptr %l62, !tbaa !24
  %t659 = load ptr, ptr %l0, !tbaa !29
  %t661 = getelementptr %"compiler/eval:Machine", ptr %t659, i32 0, i32 22
  %t662 = load i1, ptr %t661, !tbaa !21
  br i1 %t662, label %bb127, label %bb128
bb127:
  br label %ret
bb128:
  br label %bb129
bb129:
  store i64 0, ptr %l63, !tbaa !24
  store i64 0, ptr %l64, !tbaa !24
  %t664 = load i32, ptr %l3, !range !{i32 0, i32 51}
  %t666 = trunc i64 3 to i32
  %t667 = icmp eq i32 %t664, %t666
  br i1 %t667, label %bb130, label %bb131
bb130:
  br label %bb132
bb131:
  br label %bb134
bb132:
  %t669 = load i64, ptr %l24, !tbaa !24
  %t670 = load i64, ptr %l25, !tbaa !24
  %t671 = load i64, ptr %l61, !tbaa !24
  %t672 = load i64, ptr %l62, !tbaa !24
  %t677 = call { i64, i64 } @compiler_2feval_2eadd128(i64 %t669, i64 %t670, i64 %t671, i64 %t672)
  store { i64, i64 } %t677, ptr %l416
  br label %bb133
bb133:
  %t678 = load { i64, i64 }, ptr %l416
  store { i64, i64 } %t678, ptr %l65
  %t679 = getelementptr { i64, i64 }, ptr %l65, i32 0, i32 0
  %t680 = load i64, ptr %t679, !tbaa !24
  store i64 %t680, ptr %l63, !tbaa !24
  %t682 = getelementptr { i64, i64 }, ptr %l65, i32 0, i32 1
  %t683 = load i64, ptr %t682, !tbaa !24
  store i64 %t683, ptr %l64, !tbaa !24
  br label %bb263
bb134:
  %t685 = load i32, ptr %l3, !range !{i32 0, i32 51}
  %t687 = trunc i64 4 to i32
  %t688 = icmp eq i32 %t685, %t687
  br i1 %t688, label %bb135, label %bb136
bb135:
  br label %bb137
bb136:
  br label %bb139
bb137:
  %t690 = load i64, ptr %l24, !tbaa !24
  %t691 = load i64, ptr %l25, !tbaa !24
  %t692 = load i64, ptr %l61, !tbaa !24
  %t693 = load i64, ptr %l62, !tbaa !24
  %t698 = call { i64, i64 } @compiler_2feval_2esub128(i64 %t690, i64 %t691, i64 %t692, i64 %t693)
  store { i64, i64 } %t698, ptr %l425
  br label %bb138
bb138:
  %t699 = load { i64, i64 }, ptr %l425
  store { i64, i64 } %t699, ptr %l66
  %t700 = getelementptr { i64, i64 }, ptr %l66, i32 0, i32 0
  %t701 = load i64, ptr %t700, !tbaa !24
  store i64 %t701, ptr %l63, !tbaa !24
  %t703 = getelementptr { i64, i64 }, ptr %l66, i32 0, i32 1
  %t704 = load i64, ptr %t703, !tbaa !24
  store i64 %t704, ptr %l64, !tbaa !24
  br label %bb263
bb139:
  %t706 = load i32, ptr %l3, !range !{i32 0, i32 51}
  %t708 = trunc i64 5 to i32
  %t709 = icmp eq i32 %t706, %t708
  br i1 %t709, label %bb140, label %bb141
bb140:
  br label %bb142
bb141:
  br label %bb144
bb142:
  %t711 = load i64, ptr %l24, !tbaa !24
  %t712 = load i64, ptr %l25, !tbaa !24
  %t713 = load i64, ptr %l61, !tbaa !24
  %t714 = load i64, ptr %l62, !tbaa !24
  %t719 = call { i64, i64 } @compiler_2feval_2emul128(i64 %t711, i64 %t712, i64 %t713, i64 %t714)
  store { i64, i64 } %t719, ptr %l434
  br label %bb143
bb143:
  %t720 = load { i64, i64 }, ptr %l434
  store { i64, i64 } %t720, ptr %l67
  %t721 = getelementptr { i64, i64 }, ptr %l67, i32 0, i32 0
  %t722 = load i64, ptr %t721, !tbaa !24
  store i64 %t722, ptr %l63, !tbaa !24
  %t724 = getelementptr { i64, i64 }, ptr %l67, i32 0, i32 1
  %t725 = load i64, ptr %t724, !tbaa !24
  store i64 %t725, ptr %l64, !tbaa !24
  br label %bb263
bb144:
  %t727 = load i32, ptr %l3, !range !{i32 0, i32 51}
  %t729 = trunc i64 6 to i32
  %t730 = icmp eq i32 %t727, %t729
  br i1 %t730, label %bb145, label %bb146
bb145:
  br label %bb149
bb146:
  %t732 = load i32, ptr %l3, !range !{i32 0, i32 51}
  %t734 = trunc i64 7 to i32
  %t735 = icmp eq i32 %t732, %t734
  br i1 %t735, label %bb147, label %bb148
bb147:
  br label %bb149
bb148:
  br label %bb182
bb149:
  %t737 = load i64, ptr %l61, !tbaa !24
  %t739 = icmp eq i64 %t737, 0
  br i1 %t739, label %bb150, label %bb151
bb150:
  %t741 = load i64, ptr %l62, !tbaa !24
  %t743 = icmp eq i64 %t741, 0
  store i1 %t743, ptr %l443, !tbaa !21
  br label %bb152
bb151:
  store i1 false, ptr %l443, !tbaa !21
  br label %bb152
bb152:
  %t745 = load i1, ptr %l443, !tbaa !21
  br i1 %t745, label %bb153, label %bb154
bb153:
  %t746 = load ptr, ptr %l0, !tbaa !29
  %t747 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyDivZero, !tbaa !27
  %t748 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t748, ptr %t746, { i64, ptr } %t747)
  br label %bb155
bb154:
  br label %bb156
bb155:
  br label %ret
bb156:
  %t751 = load i1, ptr %l21, !tbaa !21
  br i1 %t751, label %bb157, label %bb158
bb157:
  %t753 = load i64, ptr %l22, !tbaa !24
  %t755 = call { i64, i64 } @compiler_2feval_2ewideMin(i64 %t753)
  store { i64, i64 } %t755, ptr %l450
  br label %bb159
bb158:
  %t756 = load i64, ptr %l24, !tbaa !24
  %t757 = load i64, ptr %l25, !tbaa !24
  %t758 = load i64, ptr %l61, !tbaa !24
  %t759 = load i64, ptr %l62, !tbaa !24
  %t764 = call { i64, i64, i64, i64 } @compiler_2feval_2eudivmod128(i64 %t756, i64 %t757, i64 %t758, i64 %t759)
  store { i64, i64, i64, i64 } %t764, ptr %l491
  br label %bb177
bb159:
  %t765 = load { i64, i64 }, ptr %l450
  store { i64, i64 } %t765, ptr %l68
  %t766 = getelementptr { i64, i64 }, ptr %l68, i32 0, i32 0
  %t767 = load i64, ptr %t766, !tbaa !24
  store i64 %t767, ptr %l69, !tbaa !24
  %t769 = getelementptr { i64, i64 }, ptr %l68, i32 0, i32 1
  %t770 = load i64, ptr %t769, !tbaa !24
  store i64 %t770, ptr %l70, !tbaa !24
  %t772 = load i64, ptr %l61, !tbaa !24
  %t774 = icmp eq i64 %t772, -1
  br i1 %t774, label %bb160, label %bb161
bb160:
  %t776 = load i64, ptr %l62, !tbaa !24
  %t778 = icmp eq i64 %t776, -1
  store i1 %t778, ptr %l455, !tbaa !21
  br label %bb162
bb161:
  store i1 false, ptr %l455, !tbaa !21
  br label %bb162
bb162:
  %t780 = load i1, ptr %l455, !tbaa !21
  br i1 %t780, label %bb163, label %bb164
bb163:
  %t781 = load i64, ptr %l24, !tbaa !24
  %t782 = load i64, ptr %l69, !tbaa !24
  %t785 = icmp eq i64 %t781, %t782
  store i1 %t785, ptr %l458, !tbaa !21
  br label %bb165
bb164:
  store i1 false, ptr %l458, !tbaa !21
  br label %bb165
bb165:
  %t787 = load i1, ptr %l458, !tbaa !21
  br i1 %t787, label %bb166, label %bb167
bb166:
  %t788 = load i64, ptr %l25, !tbaa !24
  %t789 = load i64, ptr %l70, !tbaa !24
  %t792 = icmp eq i64 %t788, %t789
  store i1 %t792, ptr %l462, !tbaa !21
  br label %bb168
bb167:
  store i1 false, ptr %l462, !tbaa !21
  br label %bb168
bb168:
  %t794 = load i1, ptr %l462, !tbaa !21
  br i1 %t794, label %bb169, label %bb170
bb169:
  %t795 = load ptr, ptr %l0, !tbaa !29
  %t796 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyDivMin, !tbaa !27
  %t797 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t797, ptr %t795, { i64, ptr } %t796)
  br label %bb171
bb170:
  br label %bb172
bb171:
  br label %ret
bb172:
  %t800 = load i64, ptr %l24, !tbaa !24
  %t801 = load i64, ptr %l25, !tbaa !24
  %t802 = load i64, ptr %l61, !tbaa !24
  %t803 = load i64, ptr %l62, !tbaa !24
  %t808 = call { i64, i64, i64, i64 } @compiler_2feval_2esdivmod128(i64 %t800, i64 %t801, i64 %t802, i64 %t803)
  store { i64, i64, i64, i64 } %t808, ptr %l472
  br label %bb173
bb173:
  %t809 = load { i64, i64, i64, i64 }, ptr %l472
  store { i64, i64, i64, i64 } %t809, ptr %l71
  %t810 = getelementptr { i64, i64, i64, i64 }, ptr %l71, i32 0, i32 0
  %t811 = load i64, ptr %t810, !tbaa !24
  %t813 = getelementptr { i64, i64, i64, i64 }, ptr %l71, i32 0, i32 1
  %t814 = load i64, ptr %t813, !tbaa !24
  %t816 = getelementptr { i64, i64, i64, i64 }, ptr %l71, i32 0, i32 2
  %t817 = load i64, ptr %t816, !tbaa !24
  store i64 %t817, ptr %l74, !tbaa !24
  %t819 = getelementptr { i64, i64, i64, i64 }, ptr %l71, i32 0, i32 3
  %t820 = load i64, ptr %t819, !tbaa !24
  store i64 %t820, ptr %l75, !tbaa !24
  store i64 %t811, ptr %l63, !tbaa !24
  store i64 %t814, ptr %l64, !tbaa !24
  %t830 = load i32, ptr %l3, !range !{i32 0, i32 51}
  %t832 = trunc i64 7 to i32
  %t833 = icmp eq i32 %t830, %t832
  br i1 %t833, label %bb174, label %bb175
bb174:
  %t835 = load i64, ptr %l74, !tbaa !24
  %t837 = load i64, ptr %l75, !tbaa !24
  store i64 %t835, ptr %l63, !tbaa !24
  store i64 %t837, ptr %l64, !tbaa !24
  br label %bb176
bb175:
  br label %bb176
bb176:
  br label %bb181
bb177:
  %t843 = load { i64, i64, i64, i64 }, ptr %l491
  store { i64, i64, i64, i64 } %t843, ptr %l80
  %t844 = getelementptr { i64, i64, i64, i64 }, ptr %l80, i32 0, i32 0
  %t845 = load i64, ptr %t844, !tbaa !24
  %t847 = getelementptr { i64, i64, i64, i64 }, ptr %l80, i32 0, i32 1
  %t848 = load i64, ptr %t847, !tbaa !24
  %t850 = getelementptr { i64, i64, i64, i64 }, ptr %l80, i32 0, i32 2
  %t851 = load i64, ptr %t850, !tbaa !24
  store i64 %t851, ptr %l83, !tbaa !24
  %t853 = getelementptr { i64, i64, i64, i64 }, ptr %l80, i32 0, i32 3
  %t854 = load i64, ptr %t853, !tbaa !24
  store i64 %t854, ptr %l84, !tbaa !24
  store i64 %t845, ptr %l63, !tbaa !24
  store i64 %t848, ptr %l64, !tbaa !24
  %t864 = load i32, ptr %l3, !range !{i32 0, i32 51}
  %t866 = trunc i64 7 to i32
  %t867 = icmp eq i32 %t864, %t866
  br i1 %t867, label %bb178, label %bb179
bb178:
  %t869 = load i64, ptr %l83, !tbaa !24
  %t871 = load i64, ptr %l84, !tbaa !24
  store i64 %t869, ptr %l63, !tbaa !24
  store i64 %t871, ptr %l64, !tbaa !24
  br label %bb180
bb179:
  br label %bb180
bb180:
  br label %bb181
bb181:
  br label %bb263
bb182:
  %t877 = load i32, ptr %l3, !range !{i32 0, i32 51}
  %t879 = trunc i64 8 to i32
  %t880 = icmp eq i32 %t877, %t879
  br i1 %t880, label %bb183, label %bb184
bb183:
  br label %bb187
bb184:
  %t882 = load i32, ptr %l3, !range !{i32 0, i32 51}
  %t884 = trunc i64 9 to i32
  %t885 = icmp eq i32 %t882, %t884
  br i1 %t885, label %bb185, label %bb186
bb185:
  br label %bb187
bb186:
  br label %bb201
bb187:
  %t887 = load i64, ptr %l62, !tbaa !24
  %t889 = icmp ne i64 %t887, 0
  br i1 %t889, label %bb188, label %bb189
bb188:
  store i1 true, ptr %l512, !tbaa !21
  br label %bb191
bb189:
  %t891 = load i64, ptr %l61, !tbaa !24
  %t892 = load i64, ptr %l22, !tbaa !24
  %t895 = call i1 @compiler_2feval_2eult64(i64 %t891, i64 %t892)
  store i1 %t895, ptr %l515
  br label %bb190
bb190:
  %t896 = load i1, ptr %l515, !tbaa !21
  %t897 = xor i1 %t896, true
  store i1 %t897, ptr %l512, !tbaa !21
  br label %bb191
bb191:
  %t899 = load i1, ptr %l512, !tbaa !21
  br i1 %t899, label %bb192, label %bb193
bb192:
  %t900 = load ptr, ptr %l0, !tbaa !29
  %t901 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyShift, !tbaa !27
  %t902 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t902, ptr %t900, { i64, ptr } %t901)
  br label %bb194
bb193:
  br label %bb195
bb194:
  br label %ret
bb195:
  %t905 = load i32, ptr %l3, !range !{i32 0, i32 51}
  %t907 = trunc i64 8 to i32
  %t908 = icmp eq i32 %t905, %t907
  br i1 %t908, label %bb196, label %bb197
bb196:
  %t910 = load i64, ptr %l24, !tbaa !24
  %t911 = load i64, ptr %l25, !tbaa !24
  %t912 = load i64, ptr %l61, !tbaa !24
  %t916 = call { i64, i64 } @compiler_2feval_2eshl128(i64 %t910, i64 %t911, i64 %t912)
  store { i64, i64 } %t916, ptr %l524
  br label %bb198
bb197:
  %t917 = load i64, ptr %l24, !tbaa !24
  %t918 = load i64, ptr %l25, !tbaa !24
  %t919 = load i64, ptr %l61, !tbaa !24
  %t920 = load i1, ptr %l21, !tbaa !21
  %t925 = call { i64, i64 } @compiler_2feval_2eshr128(i64 %t917, i64 %t918, i64 %t919, i1 %t920)
  store { i64, i64 } %t925, ptr %l531
  br label %bb199
bb198:
  %t926 = load { i64, i64 }, ptr %l524
  store { i64, i64 } %t926, ptr %l89
  %t927 = getelementptr { i64, i64 }, ptr %l89, i32 0, i32 0
  %t928 = load i64, ptr %t927, !tbaa !24
  store i64 %t928, ptr %l63, !tbaa !24
  %t930 = getelementptr { i64, i64 }, ptr %l89, i32 0, i32 1
  %t931 = load i64, ptr %t930, !tbaa !24
  store i64 %t931, ptr %l64, !tbaa !24
  br label %bb200
bb199:
  %t933 = load { i64, i64 }, ptr %l531
  store { i64, i64 } %t933, ptr %l90
  %t934 = getelementptr { i64, i64 }, ptr %l90, i32 0, i32 0
  %t935 = load i64, ptr %t934, !tbaa !24
  store i64 %t935, ptr %l63, !tbaa !24
  %t937 = getelementptr { i64, i64 }, ptr %l90, i32 0, i32 1
  %t938 = load i64, ptr %t937, !tbaa !24
  store i64 %t938, ptr %l64, !tbaa !24
  br label %bb200
bb200:
  br label %bb263
bb201:
  %t940 = load i32, ptr %l3, !range !{i32 0, i32 51}
  %t942 = trunc i64 10 to i32
  %t943 = icmp eq i32 %t940, %t942
  br i1 %t943, label %bb202, label %bb203
bb202:
  br label %bb204
bb203:
  br label %bb205
bb204:
  %t945 = load i64, ptr %l24, !tbaa !24
  %t946 = load i64, ptr %l61, !tbaa !24
  %t949 = and i64 %t945, %t946
  %t951 = load i64, ptr %l25, !tbaa !24
  %t952 = load i64, ptr %l62, !tbaa !24
  %t955 = and i64 %t951, %t952
  store i64 %t949, ptr %l63, !tbaa !24
  store i64 %t955, ptr %l64, !tbaa !24
  br label %bb263
bb205:
  %t961 = load i32, ptr %l3, !range !{i32 0, i32 51}
  %t963 = trunc i64 11 to i32
  %t964 = icmp eq i32 %t961, %t963
  br i1 %t964, label %bb206, label %bb207
bb206:
  br label %bb208
bb207:
  br label %bb209
bb208:
  %t966 = load i64, ptr %l24, !tbaa !24
  %t967 = load i64, ptr %l61, !tbaa !24
  %t970 = or i64 %t966, %t967
  %t972 = load i64, ptr %l25, !tbaa !24
  %t973 = load i64, ptr %l62, !tbaa !24
  %t976 = or i64 %t972, %t973
  store i64 %t970, ptr %l63, !tbaa !24
  store i64 %t976, ptr %l64, !tbaa !24
  br label %bb263
bb209:
  %t982 = load i32, ptr %l3, !range !{i32 0, i32 51}
  %t984 = trunc i64 12 to i32
  %t985 = icmp eq i32 %t982, %t984
  br i1 %t985, label %bb210, label %bb211
bb210:
  br label %bb212
bb211:
  br label %bb213
bb212:
  %t987 = load i64, ptr %l24, !tbaa !24
  %t988 = load i64, ptr %l61, !tbaa !24
  %t991 = xor i64 %t987, %t988
  %t993 = load i64, ptr %l25, !tbaa !24
  %t994 = load i64, ptr %l62, !tbaa !24
  %t997 = xor i64 %t993, %t994
  store i64 %t991, ptr %l63, !tbaa !24
  store i64 %t997, ptr %l64, !tbaa !24
  br label %bb263
bb213:
  %t1003 = load i32, ptr %l3, !range !{i32 0, i32 51}
  %t1005 = trunc i64 13 to i32
  %t1006 = icmp eq i32 %t1003, %t1005
  br i1 %t1006, label %bb214, label %bb215
bb214:
  br label %bb226
bb215:
  %t1008 = load i32, ptr %l3, !range !{i32 0, i32 51}
  %t1010 = trunc i64 14 to i32
  %t1011 = icmp eq i32 %t1008, %t1010
  br i1 %t1011, label %bb216, label %bb217
bb216:
  br label %bb226
bb217:
  %t1013 = load i32, ptr %l3, !range !{i32 0, i32 51}
  %t1015 = trunc i64 15 to i32
  %t1016 = icmp eq i32 %t1013, %t1015
  br i1 %t1016, label %bb218, label %bb219
bb218:
  br label %bb226
bb219:
  %t1018 = load i32, ptr %l3, !range !{i32 0, i32 51}
  %t1020 = trunc i64 16 to i32
  %t1021 = icmp eq i32 %t1018, %t1020
  br i1 %t1021, label %bb220, label %bb221
bb220:
  br label %bb226
bb221:
  %t1023 = load i32, ptr %l3, !range !{i32 0, i32 51}
  %t1025 = trunc i64 17 to i32
  %t1026 = icmp eq i32 %t1023, %t1025
  br i1 %t1026, label %bb222, label %bb223
bb222:
  br label %bb226
bb223:
  %t1028 = load i32, ptr %l3, !range !{i32 0, i32 51}
  %t1030 = trunc i64 18 to i32
  %t1031 = icmp eq i32 %t1028, %t1030
  br i1 %t1031, label %bb224, label %bb225
bb224:
  br label %bb226
bb225:
  br label %bb257
bb226:
  %t1033 = load i64, ptr %l24, !tbaa !24
  %t1034 = load i64, ptr %l25, !tbaa !24
  %t1035 = load i64, ptr %l61, !tbaa !24
  %t1036 = load i64, ptr %l62, !tbaa !24
  %t1037 = load i1, ptr %l21, !tbaa !21
  %t1043 = call i64 @compiler_2feval_2ecmp128(i64 %t1033, i64 %t1034, i64 %t1035, i64 %t1036, i1 %t1037)
  store i64 %t1043, ptr %l581
  br label %bb227
bb227:
  %t1044 = load i64, ptr %l581, !tbaa !24
  store i64 %t1044, ptr %l97, !tbaa !24
  %t1045 = load i32, ptr %l3, !range !{i32 0, i32 51}
  %t1047 = trunc i64 13 to i32
  %t1048 = icmp eq i32 %t1045, %t1047
  br i1 %t1048, label %bb228, label %bb229
bb228:
  br label %bb230
bb229:
  br label %bb231
bb230:
  %t1050 = load i64, ptr %l97, !tbaa !24
  %t1052 = icmp eq i64 %t1050, 0
  store i1 %t1052, ptr %l582, !tbaa !21
  br label %bb252
bb231:
  %t1054 = load i32, ptr %l3, !range !{i32 0, i32 51}
  %t1056 = trunc i64 14 to i32
  %t1057 = icmp eq i32 %t1054, %t1056
  br i1 %t1057, label %bb232, label %bb233
bb232:
  br label %bb234
bb233:
  br label %bb235
bb234:
  %t1059 = load i64, ptr %l97, !tbaa !24
  %t1061 = icmp ne i64 %t1059, 0
  store i1 %t1061, ptr %l582, !tbaa !21
  br label %bb252
bb235:
  %t1063 = load i32, ptr %l3, !range !{i32 0, i32 51}
  %t1065 = trunc i64 15 to i32
  %t1066 = icmp eq i32 %t1063, %t1065
  br i1 %t1066, label %bb236, label %bb237
bb236:
  br label %bb238
bb237:
  br label %bb239
bb238:
  %t1068 = load i64, ptr %l97, !tbaa !24
  %t1070 = icmp slt i64 %t1068, 0
  store i1 %t1070, ptr %l582, !tbaa !21
  br label %bb252
bb239:
  %t1072 = load i32, ptr %l3, !range !{i32 0, i32 51}
  %t1074 = trunc i64 16 to i32
  %t1075 = icmp eq i32 %t1072, %t1074
  br i1 %t1075, label %bb240, label %bb241
bb240:
  br label %bb242
bb241:
  br label %bb243
bb242:
  %t1077 = load i64, ptr %l97, !tbaa !24
  %t1079 = icmp sle i64 %t1077, 0
  store i1 %t1079, ptr %l582, !tbaa !21
  br label %bb252
bb243:
  %t1081 = load i32, ptr %l3, !range !{i32 0, i32 51}
  %t1083 = trunc i64 17 to i32
  %t1084 = icmp eq i32 %t1081, %t1083
  br i1 %t1084, label %bb244, label %bb245
bb244:
  br label %bb246
bb245:
  br label %bb247
bb246:
  %t1086 = load i64, ptr %l97, !tbaa !24
  %t1088 = icmp sgt i64 %t1086, 0
  store i1 %t1088, ptr %l582, !tbaa !21
  br label %bb252
bb247:
  br i1 true, label %bb248, label %bb249
bb248:
  br label %bb250
bb249:
  br label %bb251
bb250:
  %t1090 = load i64, ptr %l97, !tbaa !24
  %t1092 = icmp sge i64 %t1090, 0
  store i1 %t1092, ptr %l582, !tbaa !21
  br label %bb252
bb251:
  call void @__olang_check_failed(ptr @olang_loc_124d877554f39b91_abf5664d02ded825)
  unreachable
bb252:
  %t1094 = load i1, ptr %l582, !tbaa !21
  %t1095 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1095, ptr %l605, !tbaa !29
  %t1096 = load %"compiler/eval:Ptr", ptr %l2
  store %"compiler/eval:Ptr" %t1096, ptr %l606
  br i1 %t1094, label %bb253, label %bb254
bb253:
  store i64 1, ptr %l608, !tbaa !24
  br label %bb255
bb254:
  store i64 0, ptr %l608, !tbaa !24
  br label %bb255
bb255:
  %t1099 = load ptr, ptr %l605, !tbaa !29
  %t1100 = load %"compiler/eval:Ptr", ptr %l606
  %t1101 = load i64, ptr %l608, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t1099, %"compiler/eval:Ptr" %t1100, i64 1, i64 %t1101)
  br label %bb256
bb256:
  br label %ret
bb257:
  br i1 true, label %bb258, label %bb259
bb258:
  br label %bb260
bb259:
  br label %bb262
bb260:
  %t1102 = load ptr, ptr %l0, !tbaa !29
  %t1104 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enotModelled(ptr %v0, ptr %t1102)
  store i64 %t1104, ptr %l610
  br label %bb261
bb261:
  br label %ret
bb262:
  call void @__olang_check_failed(ptr @olang_loc_e0c215207c57b9fa_758d150e3c60fc6e)
  unreachable
bb263:
  %t1105 = load ptr, ptr %l0, !tbaa !29
  %t1106 = load %"compiler/eval:Ptr", ptr %l2
  %t1107 = load i32, ptr %l4, !tbaa !23
  %t1108 = load i64, ptr %l63, !tbaa !24
  %t1109 = load i64, ptr %l64, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eputInt(ptr %v0, ptr %t1105, %"compiler/eval:Ptr" %t1106, i32 %t1107, i64 %t1108, i64 %t1109)
  br label %bb264
bb264:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2epushFrame(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca %"compiler/eval:frame"
  %l15 = alloca i64
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i64
  %l37 = alloca { i64, ptr }
  %l38 = alloca i64
  %l39 = alloca i64
  %l40 = alloca i64
  %l41 = alloca i64
  %l42 = alloca i64
  %l43 = alloca i64
  %l49 = alloca ptr
  %l53 = alloca { i64, ptr }
  %l58 = alloca { i64, ptr }
  %l62 = alloca i64
  %l66 = alloca i64
  %l69 = alloca ptr
  %l73 = alloca { i64, ptr }
  %l77 = alloca ptr
  %l81 = alloca { i64, ptr }
  %l86 = alloca { i64, ptr }
  %l92 = alloca { i64, ptr }
  %l97 = alloca { i64, ptr }
  %l100 = alloca %"compiler/eval:frame"
  %l124 = alloca i64
  %l127 = alloca i64
  %l151 = alloca ptr
  %l152 = alloca i64
  %l154 = alloca i64
  %l158 = alloca { i64, ptr }
  %l165 = alloca i64
  %l168 = alloca i64
  %l187 = alloca { i64, ptr }
  %l189 = alloca { i64, ptr }
  %l198 = alloca i64
  %l201 = alloca i64
  %l219 = alloca { i64, ptr }
  %l223 = alloca ptr
  %l225 = alloca { i64, ptr }
  %l228 = alloca i64
  %l231 = alloca %"compiler/eval:Ptr"
  %l234 = alloca { i64, ptr }
  %l250 = alloca i64
  %l253 = alloca i64
  %l272 = alloca { i64, ptr }
  %l289 = alloca ptr
  %l290 = alloca i64
  %l294 = alloca i64
  %l295 = alloca %"compiler/eval:frame"
  %l297 = alloca %"compiler/eval:frame"
  %l301 = alloca { i64, ptr }
  %l308 = alloca i64
  %l311 = alloca i64
  %l330 = alloca { i64, ptr }
  %l332 = alloca { i64, ptr }
  %l334 = alloca %"compiler/eval:frame"
  %l338 = alloca { i64, ptr }
  %l341 = alloca %"compiler/eval:frame"
  %l342 = alloca ptr
  %s0 = alloca %olang.scope
  %rv = alloca i64
  %t143 = alloca %"compiler/eval:frame", align 8
  %t581 = alloca %"compiler/eval:frame", align 8
  %t593 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 59
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/eval:Machine", ptr %t5, i32 0, i32 10
  %t8 = load i64, ptr %t7, !tbaa !24
  %t11 = icmp sge i64 %t4, %t8
  br i1 %t11, label %bb1, label %bb2
bb1:
  %t13 = load ptr, ptr %l0, !tbaa !29
  store ptr %t13, ptr %l49, !tbaa !29
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/eval:Machine", ptr %t14, i32 0, i32 1
  %t17 = load i32, ptr %t16, !range !{i32 0, i32 2}
  %t19 = trunc i64 0 to i32
  %t20 = icmp eq i32 %t17, %t19
  br i1 %t20, label %bb3, label %bb4
bb2:
  br label %bb7
bb3:
  %t22 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyDepth, !tbaa !27
  store { i64, ptr } %t22, ptr %l53, !tbaa !27
  br label %bb5
bb4:
  %t24 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyRunDepth, !tbaa !27
  store { i64, ptr } %t24, ptr %l53, !tbaa !27
  br label %bb5
bb5:
  %t26 = load ptr, ptr @__olang_prog_scope
  %t27 = load ptr, ptr %l49, !tbaa !29
  %t28 = load { i64, ptr }, ptr %l53, !tbaa !27
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t26, ptr %t27, { i64, ptr } %t28)
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb7:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/eval:Machine", ptr %t30, i32 0, i32 26
  %t33 = load { i64, ptr }, ptr %t32, !tbaa !27
  store { i64, ptr } %t33, ptr %l58, !tbaa !27
  %t34 = load i64, ptr %l1, !tbaa !24
  %t36 = getelementptr { i64, ptr }, ptr %l58, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !27
  %t38 = getelementptr %"compiler/eval:cfn", ptr %t37, i64 %t34
  %t39 = getelementptr %"compiler/eval:cfn", ptr %t38, i32 0, i32 17
  %t40 = load i1, ptr %t39, !tbaa !21
  br i1 %t40, label %bb8, label %bb9
bb8:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/eval:Machine", ptr %t42, i32 0, i32 11
  %t45 = load i64, ptr %t44, !tbaa !24
  store i64 %t45, ptr %l62, !tbaa !24
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/eval:Machine", ptr %t46, i32 0, i32 1
  %t49 = load i32, ptr %t48, !range !{i32 0, i32 2}
  %t51 = trunc i64 0 to i32
  %t52 = icmp eq i32 %t49, %t51
  br i1 %t52, label %bb10, label %bb11
bb9:
  br label %bb21
bb10:
  store i64 2000, ptr %l66, !tbaa !24
  br label %bb12
bb11:
  store i64 100000, ptr %l66, !tbaa !24
  br label %bb12
bb12:
  %t54 = load i64, ptr %l62, !tbaa !24
  %t55 = load i64, ptr %l66, !tbaa !24
  %t56 = icmp sge i64 %t54, %t55
  br i1 %t56, label %bb13, label %bb14
bb13:
  %t58 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2estopAtComparison(ptr %v0, ptr %t58)
  br label %bb15
bb14:
  br label %bb20
bb15:
  %t60 = load ptr, ptr %l0, !tbaa !29
  store ptr %t60, ptr %l69, !tbaa !29
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/eval:Machine", ptr %t61, i32 0, i32 1
  %t64 = load i32, ptr %t63, !range !{i32 0, i32 2}
  %t66 = trunc i64 0 to i32
  %t67 = icmp eq i32 %t64, %t66
  br i1 %t67, label %bb16, label %bb17
bb16:
  %t69 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyEqDepth, !tbaa !27
  store { i64, ptr } %t69, ptr %l73, !tbaa !27
  br label %bb18
bb17:
  %t71 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyRunEqDepth, !tbaa !27
  store { i64, ptr } %t71, ptr %l73, !tbaa !27
  br label %bb18
bb18:
  %t73 = load ptr, ptr @__olang_prog_scope
  %t74 = load ptr, ptr %l69, !tbaa !29
  %t75 = load { i64, ptr }, ptr %l73, !tbaa !27
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t73, ptr %t74, { i64, ptr } %t75)
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb20:
  %t77 = load ptr, ptr %l0, !tbaa !29
  store ptr %t77, ptr %l77, !tbaa !29
  %t78 = load ptr, ptr %l77, !tbaa !29
  %t79 = getelementptr %"compiler/eval:Machine", ptr %t78, i32 0, i32 11
  %t80 = load i64, ptr %t79, !tbaa !24
  %t82 = add i64 %t80, 1
  %t84 = load ptr, ptr %l77, !tbaa !29
  %t85 = getelementptr %"compiler/eval:Machine", ptr %t84, i32 0, i32 11
  store i64 %t82, ptr %t85, !tbaa !24
  br label %bb21
bb21:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/eval:Machine", ptr %t86, i32 0, i32 26
  %t89 = load { i64, ptr }, ptr %t88, !tbaa !27
  store { i64, ptr } %t89, ptr %l81, !tbaa !27
  %t90 = load i64, ptr %l1, !tbaa !24
  %t92 = getelementptr { i64, ptr }, ptr %l81, i32 0, i32 1
  %t93 = load ptr, ptr %t92, !tbaa !27
  %t94 = getelementptr %"compiler/eval:cfn", ptr %t93, i64 %t90
  %t95 = getelementptr %"compiler/eval:cfn", ptr %t94, i32 0, i32 16
  %t96 = load i1, ptr %t95, !tbaa !21
  br i1 %t96, label %bb22, label %bb23
bb22:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/eval:Machine", ptr %t98, i32 0, i32 23
  store i1 true, ptr %t100, !tbaa !21
  br label %bb24
bb23:
  br label %bb24
bb24:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = getelementptr %"compiler/eval:Machine", ptr %t101, i32 0, i32 26
  %t104 = load { i64, ptr }, ptr %t103, !tbaa !27
  store { i64, ptr } %t104, ptr %l86, !tbaa !27
  %t105 = load i64, ptr %l1, !tbaa !24
  %t107 = getelementptr { i64, ptr }, ptr %l86, i32 0, i32 1
  %t108 = load ptr, ptr %t107, !tbaa !27
  %t109 = getelementptr %"compiler/eval:cfn", ptr %t108, i64 %t105
  %t110 = getelementptr %"compiler/eval:cfn", ptr %t109, i32 0, i32 1
  %t111 = load { i64, ptr }, ptr %t110, !tbaa !27
  store { i64, ptr } %t111, ptr %l4, !tbaa !27
  %t113 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t115 = extractvalue { i64, ptr } %t113, 0
  store i64 %t115, ptr %l5, !tbaa !24
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/eval:Machine", ptr %t117, i32 0, i32 26
  %t120 = load { i64, ptr }, ptr %t119, !tbaa !27
  store { i64, ptr } %t120, ptr %l92, !tbaa !27
  %t121 = load i64, ptr %l1, !tbaa !24
  %t123 = getelementptr { i64, ptr }, ptr %l92, i32 0, i32 1
  %t124 = load ptr, ptr %t123, !tbaa !27
  %t125 = getelementptr %"compiler/eval:cfn", ptr %t124, i64 %t121
  %t126 = getelementptr %"compiler/eval:cfn", ptr %t125, i32 0, i32 2
  %t127 = load { i64, ptr }, ptr %t126, !tbaa !27
  %t129 = extractvalue { i64, ptr } %t127, 0
  store i64 %t129, ptr %l6, !tbaa !24
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t133 = getelementptr %"compiler/eval:Machine", ptr %t131, i32 0, i32 26
  %t134 = load { i64, ptr }, ptr %t133, !tbaa !27
  store { i64, ptr } %t134, ptr %l97, !tbaa !27
  %t135 = load i64, ptr %l1, !tbaa !24
  %t137 = getelementptr { i64, ptr }, ptr %l97, i32 0, i32 1
  %t138 = load ptr, ptr %t137, !tbaa !27
  %t139 = getelementptr %"compiler/eval:cfn", ptr %t138, i64 %t135
  %t140 = getelementptr %"compiler/eval:cfn", ptr %t139, i32 0, i32 15
  %t141 = load i64, ptr %t140, !tbaa !24
  store i64 %t141, ptr %l7, !tbaa !24
  call void @compiler_2feval_3aframe_2ector(ptr %t143, ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %l100, ptr %t143, i64 136, i1 false)
  br label %bb25
bb25:
  call void @llvm.memmove.p0.p0.i64(ptr %l8, ptr %l100, i64 136, i1 false)
  %t144 = load i64, ptr %l1, !tbaa !24
  %t152 = getelementptr %"compiler/eval:frame", ptr %l8, i32 0, i32 0
  store i64 %t144, ptr %t152, !tbaa !24
  %t155 = getelementptr %"compiler/eval:frame", ptr %l8, i32 0, i32 7
  store i64 %a2, ptr %t155, !tbaa !24
  %t158 = getelementptr %"compiler/eval:frame", ptr %l8, i32 0, i32 8
  store i64 %a3, ptr %t158, !tbaa !24
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t161 = getelementptr %"compiler/eval:Machine", ptr %t159, i32 0, i32 61
  %t162 = load i64, ptr %t161, !tbaa !24
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t166 = getelementptr %"compiler/eval:Machine", ptr %t164, i32 0, i32 61
  %t167 = load i64, ptr %t166, !tbaa !24
  %t168 = load i64, ptr %l5, !tbaa !24
  %t171 = add i64 %t167, %t168
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t175 = getelementptr %"compiler/eval:Machine", ptr %t173, i32 0, i32 61
  %t176 = load i64, ptr %t175, !tbaa !24
  %t177 = load i64, ptr %l5, !tbaa !24
  %t180 = add i64 %t176, %t177
  %t181 = load i64, ptr %l6, !tbaa !24
  %t184 = add i64 %t180, %t181
  %t188 = getelementptr %"compiler/eval:frame", ptr %l8, i32 0, i32 3
  store i64 %t162, ptr %t188, !tbaa !24
  %t191 = getelementptr %"compiler/eval:frame", ptr %l8, i32 0, i32 4
  store i64 %t171, ptr %t191, !tbaa !24
  %t194 = getelementptr %"compiler/eval:frame", ptr %l8, i32 0, i32 5
  store i64 %t184, ptr %t194, !tbaa !24
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t197 = getelementptr %"compiler/eval:Machine", ptr %t195, i32 0, i32 62
  %t199 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t197)
  store i64 %t199, ptr %l124
  br label %bb26
bb26:
  %t200 = load i64, ptr %l124, !tbaa !24
  %t201 = getelementptr %"compiler/eval:frame", ptr %l8, i32 0, i32 9
  store i64 %t200, ptr %t201, !tbaa !24
  %t202 = load ptr, ptr %l0, !tbaa !29
  %t203 = load i64, ptr @G_2ecompiler_2feval_2esStore, !tbaa !24
  %t206 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enewScope(ptr %v0, ptr %t202, i64 %t203)
  store i64 %t206, ptr %l127
  br label %bb27
bb27:
  %t207 = load i64, ptr %l127, !tbaa !24
  %t208 = getelementptr %"compiler/eval:frame", ptr %l8, i32 0, i32 6
  store i64 %t207, ptr %t208, !tbaa !24
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t211 = getelementptr %"compiler/eval:Machine", ptr %t209, i32 0, i32 61
  %t212 = load i64, ptr %t211, !tbaa !24
  %t213 = load i64, ptr %l5, !tbaa !24
  %t216 = add i64 %t212, %t213
  %t217 = load i64, ptr %l6, !tbaa !24
  %t220 = add i64 %t216, %t217
  %t221 = load i64, ptr %l7, !tbaa !24
  %t224 = add i64 %t220, %t221
  store i64 %t224, ptr %l15, !tbaa !24
  %t226 = load i64, ptr %l15, !tbaa !24
  %t227 = load ptr, ptr %l0, !tbaa !29
  %t229 = getelementptr %"compiler/eval:Machine", ptr %t227, i32 0, i32 60
  %t230 = load { i64, ptr }, ptr %t229, !tbaa !27
  %t232 = extractvalue { i64, ptr } %t230, 0
  %t235 = icmp sgt i64 %t226, %t232
  br i1 %t235, label %bb28, label %bb29
bb28:
  %t237 = load ptr, ptr %l0, !tbaa !29
  %t239 = getelementptr %"compiler/eval:Machine", ptr %t237, i32 0, i32 60
  %t240 = load { i64, ptr }, ptr %t239, !tbaa !27
  store { i64, ptr } %t240, ptr %l16, !tbaa !27
  %t242 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t244 = extractvalue { i64, ptr } %t242, 0
  store i64 %t244, ptr %l17, !tbaa !24
  br label %bb30
bb29:
  br label %bb56
bb30:
  %t246 = load i64, ptr %l17, !tbaa !24
  %t247 = load i64, ptr %l15, !tbaa !24
  %t250 = icmp slt i64 %t246, %t247
  %t252 = xor i1 %t250, true
  br i1 %t252, label %bb31, label %bb32
bb31:
  br label %bb35
bb32:
  br label %bb33
bb33:
  %t254 = load i64, ptr %l17, !tbaa !24
  %t256 = mul i64 %t254, 2
  store i64 %t256, ptr %l17, !tbaa !24
  br label %bb34
bb34:
  br label %bb30
bb35:
  %t258 = load ptr, ptr %l0, !tbaa !29
  store ptr %t258, ptr %l151, !tbaa !29
  %t259 = ptrtoint ptr %v0 to i64
  store i64 %t259, ptr %l152, !tbaa !24
  %t260 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e60
  br i1 %t260, label %bb36, label %bb37
bb36:
  %t262 = call ptr @__olang_region_make(ptr %v0)
  %t263 = ptrtoint ptr %t262 to i64
  store i64 %t263, ptr %l152, !tbaa !24
  br label %bb37
bb37:
  %t264 = load i64, ptr %l17, !tbaa !24
  store i64 %t264, ptr %l154, !tbaa !24
  %t265 = load i64, ptr %l154, !tbaa !24
  %t266 = icmp sge i64 %t265, 0
  br i1 %t266, label %bb38, label %bb39
bb38:
  %t268 = load i64, ptr %l154, !tbaa !24
  %t269 = icmp sle i64 %t268, 1152921504606846975
  br i1 %t269, label %bb40, label %bb41
bb39:
  call void @__olang_check_failed(ptr @olang_loc_d3c8ecceb8a6d93b_6543c983ba03c11f)
  unreachable
bb40:
  %t271 = load i64, ptr %l154, !tbaa !24
  %t272 = mul i64 %t271, 8
  %t273 = load i64, ptr %l152
  %t274 = inttoptr i64 %t273 to ptr
  %t275 = call ptr @__olang_scope_alloc_zeroed(ptr %t274, i64 %t272)
  %t276 = insertvalue { i64, ptr } undef, i64 %t271, 0
  %t277 = insertvalue { i64, ptr } %t276, ptr %t275, 1
  %t278 = load ptr, ptr %l151, !tbaa !29
  %t279 = getelementptr %"compiler/eval:Machine", ptr %t278, i32 0, i32 60
  %t280 = load { i64, ptr }, ptr %t279, !tbaa !27
  store { i64, ptr } %t280, ptr %l158, !tbaa !27
  %t282 = load ptr, ptr %l151, !tbaa !29
  %t283 = getelementptr %"compiler/eval:Machine", ptr %t282, i32 0, i32 60
  store { i64, ptr } %t277, ptr %t283, !tbaa !27
  %t284 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e60
  br i1 %t284, label %bb42, label %bb43
bb41:
  call void @__olang_check_failed(ptr @olang_loc_d3c8ecceb8a6d93b_6543c983ba03c11f)
  unreachable
bb42:
  %t286 = load { i64, ptr }, ptr %l158
  %t287 = extractvalue { i64, ptr } %t286, 1
  call void @__olang_region_release(ptr %t287)
  store { i64, ptr } zeroinitializer, ptr %l158
  br label %bb43
bb43:
  store i64 0, ptr %l18, !tbaa !24
  %t288 = load ptr, ptr %l0, !tbaa !29
  %t290 = getelementptr %"compiler/eval:Machine", ptr %t288, i32 0, i32 61
  %t291 = load i64, ptr %t290, !tbaa !24
  store i64 %t291, ptr %l19, !tbaa !24
  store i64 1, ptr %l20, !tbaa !24
  %t293 = load i64, ptr %l19, !tbaa !24
  %t294 = load i64, ptr %l18, !tbaa !24
  %t297 = icmp sgt i64 %t293, %t294
  br i1 %t297, label %bb44, label %bb45
bb44:
  %t299 = load i64, ptr %l20, !tbaa !24
  %t301 = icmp sgt i64 %t299, 0
  br i1 %t301, label %bb46, label %bb47
bb45:
  store i64 0, ptr %l165, !tbaa !24
  br label %bb49
bb46:
  %t303 = load i64, ptr %l19, !tbaa !24
  %t304 = load i64, ptr %l18, !tbaa !24
  %t307 = sub i64 %t303, %t304
  %t308 = load i64, ptr %l20, !tbaa !24
  %t311 = add i64 %t307, %t308
  %t313 = sub i64 %t311, 1
  %t314 = load i64, ptr %l20, !tbaa !24
  %t317 = sdiv i64 %t313, %t314
  store i64 %t317, ptr %l168, !tbaa !24
  br label %bb48
bb47:
  store i64 0, ptr %l168, !tbaa !24
  br label %bb48
bb48:
  %t319 = load i64, ptr %l168, !tbaa !24
  store i64 %t319, ptr %l165, !tbaa !24
  br label %bb49
bb49:
  %t320 = load i64, ptr %l165, !tbaa !24
  store i64 %t320, ptr %l21, !tbaa !24
  store i64 0, ptr %l22, !tbaa !24
  br label %bb50
bb50:
  %t321 = load i64, ptr %l22, !tbaa !24
  %t322 = load i64, ptr %l21, !tbaa !24
  %t325 = icmp slt i64 %t321, %t322
  %t327 = xor i1 %t325, true
  br i1 %t327, label %bb51, label %bb52
bb51:
  br label %bb55
bb52:
  br label %bb53
bb53:
  %t329 = load i64, ptr %l18, !tbaa !24
  %t330 = load i64, ptr %l22, !tbaa !24
  %t331 = load i64, ptr %l20, !tbaa !24
  %t334 = mul i64 %t330, %t331
  %t337 = add i64 %t329, %t334
  store i64 %t337, ptr %l23, !tbaa !24
  %t339 = load ptr, ptr %l0, !tbaa !29
  %t341 = getelementptr %"compiler/eval:Machine", ptr %t339, i32 0, i32 60
  %t342 = load { i64, ptr }, ptr %t341, !tbaa !27
  store { i64, ptr } %t342, ptr %l187, !tbaa !27
  %t343 = load i64, ptr %l23, !tbaa !24
  %t344 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t344, ptr %l189, !tbaa !27
  %t345 = load i64, ptr %l23, !tbaa !24
  %t347 = getelementptr { i64, ptr }, ptr %l189, i32 0, i32 1
  %t348 = load ptr, ptr %t347, !tbaa !27
  %t349 = getelementptr i64, ptr %t348, i64 %t345
  %t350 = load i64, ptr %t349, !tbaa !34
  %t353 = getelementptr { i64, ptr }, ptr %l187, i32 0, i32 1
  %t354 = load ptr, ptr %t353, !tbaa !27
  %t355 = getelementptr i64, ptr %t354, i64 %t343
  store i64 %t350, ptr %t355, !tbaa !34
  br label %bb54
bb54:
  %t356 = load i64, ptr %l22, !tbaa !24
  %t358 = add i64 %t356, 1
  store i64 %t358, ptr %l22, !tbaa !24
  br label %bb50
bb55:
  br label %bb56
bb56:
  store i64 0, ptr %l24, !tbaa !24
  %t360 = load i64, ptr %l5, !tbaa !24
  store i64 %t360, ptr %l25, !tbaa !24
  store i64 1, ptr %l26, !tbaa !24
  %t362 = load i64, ptr %l25, !tbaa !24
  %t363 = load i64, ptr %l24, !tbaa !24
  %t366 = icmp sgt i64 %t362, %t363
  br i1 %t366, label %bb57, label %bb58
bb57:
  %t368 = load i64, ptr %l26, !tbaa !24
  %t370 = icmp sgt i64 %t368, 0
  br i1 %t370, label %bb59, label %bb60
bb58:
  store i64 0, ptr %l198, !tbaa !24
  br label %bb62
bb59:
  %t372 = load i64, ptr %l25, !tbaa !24
  %t373 = load i64, ptr %l24, !tbaa !24
  %t376 = sub i64 %t372, %t373
  %t377 = load i64, ptr %l26, !tbaa !24
  %t380 = add i64 %t376, %t377
  %t382 = sub i64 %t380, 1
  %t383 = load i64, ptr %l26, !tbaa !24
  %t386 = sdiv i64 %t382, %t383
  store i64 %t386, ptr %l201, !tbaa !24
  br label %bb61
bb60:
  store i64 0, ptr %l201, !tbaa !24
  br label %bb61
bb61:
  %t388 = load i64, ptr %l201, !tbaa !24
  store i64 %t388, ptr %l198, !tbaa !24
  br label %bb62
bb62:
  %t389 = load i64, ptr %l198, !tbaa !24
  store i64 %t389, ptr %l27, !tbaa !24
  store i64 0, ptr %l28, !tbaa !24
  br label %bb63
bb63:
  %t390 = load i64, ptr %l28, !tbaa !24
  %t391 = load i64, ptr %l27, !tbaa !24
  %t394 = icmp slt i64 %t390, %t391
  %t396 = xor i1 %t394, true
  br i1 %t396, label %bb64, label %bb65
bb64:
  br label %bb73
bb65:
  br label %bb66
bb66:
  %t398 = load i64, ptr %l24, !tbaa !24
  %t399 = load i64, ptr %l28, !tbaa !24
  %t400 = load i64, ptr %l26, !tbaa !24
  %t403 = mul i64 %t399, %t400
  %t406 = add i64 %t398, %t403
  store i64 %t406, ptr %l29, !tbaa !24
  store i64 0, ptr %l30, !tbaa !24
  %t408 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t408, ptr %l219, !tbaa !27
  %t409 = load i64, ptr %l29, !tbaa !24
  %t411 = getelementptr { i64, ptr }, ptr %l219, i32 0, i32 1
  %t412 = load ptr, ptr %t411, !tbaa !27
  %t413 = getelementptr %"compiler/mir:Local", ptr %t412, i64 %t409
  %t414 = getelementptr %"compiler/mir:Local", ptr %t413, i32 0, i32 4
  %t415 = load { i64, [1 x i64] }, ptr %t414
  %t417 = extractvalue { i64, [1 x i64] } %t415, 0
  %t418 = icmp eq i64 %t417, 3
  br i1 %t418, label %bb67, label %bb68
bb67:
  %t420 = load ptr, ptr %l0, !tbaa !29
  store ptr %t420, ptr %l223, !tbaa !29
  %t421 = load ptr, ptr %l0, !tbaa !29
  %t422 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t422, ptr %l225, !tbaa !27
  %t423 = load i64, ptr %l29, !tbaa !24
  %t425 = getelementptr { i64, ptr }, ptr %l225, i32 0, i32 1
  %t426 = load ptr, ptr %t425, !tbaa !27
  %t427 = getelementptr %"compiler/mir:Local", ptr %t426, i64 %t423
  %t428 = getelementptr %"compiler/mir:Local", ptr %t427, i32 0, i32 2
  %t429 = load i32, ptr %t428, !tbaa !23
  %t432 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t421, i32 %t429)
  store i64 %t432, ptr %l228
  br label %bb69
bb68:
  br label %bb71
bb69:
  %t433 = load i64, ptr @G_2ecompiler_2feval_2eaValue, !tbaa !24
  %t434 = getelementptr %"compiler/eval:frame", ptr %l8, i32 0, i32 6
  %t435 = load i64, ptr %t434, !tbaa !24
  %t436 = load ptr, ptr %l223, !tbaa !29
  %t437 = load i64, ptr %l228, !tbaa !24
  %t440 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocate(ptr %v0, ptr %t436, i64 %t437, i64 %t433, i64 %t435)
  store %"compiler/eval:Ptr" %t440, ptr %l231
  br label %bb70
bb70:
  %t441 = getelementptr %"compiler/eval:Ptr", ptr %l231, i32 0, i32 0
  %t442 = load i64, ptr %t441, !tbaa !24
  store i64 %t442, ptr %l30, !tbaa !24
  br label %bb71
bb71:
  %t444 = load ptr, ptr %l0, !tbaa !29
  %t446 = getelementptr %"compiler/eval:Machine", ptr %t444, i32 0, i32 60
  %t447 = load { i64, ptr }, ptr %t446, !tbaa !27
  store { i64, ptr } %t447, ptr %l234, !tbaa !27
  %t448 = load ptr, ptr %l0, !tbaa !29
  %t450 = getelementptr %"compiler/eval:Machine", ptr %t448, i32 0, i32 61
  %t451 = load i64, ptr %t450, !tbaa !24
  %t452 = load i64, ptr %l29, !tbaa !24
  %t455 = add i64 %t451, %t452
  %t456 = load i64, ptr %l30, !tbaa !24
  %t459 = getelementptr { i64, ptr }, ptr %l234, i32 0, i32 1
  %t460 = load ptr, ptr %t459, !tbaa !27
  %t461 = getelementptr i64, ptr %t460, i64 %t455
  store i64 %t456, ptr %t461, !tbaa !34
  br label %bb72
bb72:
  %t462 = load i64, ptr %l28, !tbaa !24
  %t464 = add i64 %t462, 1
  store i64 %t464, ptr %l28, !tbaa !24
  br label %bb63
bb73:
  %t466 = load i64, ptr %l5, !tbaa !24
  store i64 %t466, ptr %l31, !tbaa !24
  %t468 = load i64, ptr %l15, !tbaa !24
  %t469 = load ptr, ptr %l0, !tbaa !29
  %t471 = getelementptr %"compiler/eval:Machine", ptr %t469, i32 0, i32 61
  %t472 = load i64, ptr %t471, !tbaa !24
  %t475 = sub i64 %t468, %t472
  store i64 %t475, ptr %l32, !tbaa !24
  store i64 1, ptr %l33, !tbaa !24
  %t477 = load i64, ptr %l32, !tbaa !24
  %t478 = load i64, ptr %l31, !tbaa !24
  %t481 = icmp sgt i64 %t477, %t478
  br i1 %t481, label %bb74, label %bb75
bb74:
  %t483 = load i64, ptr %l33, !tbaa !24
  %t485 = icmp sgt i64 %t483, 0
  br i1 %t485, label %bb76, label %bb77
bb75:
  store i64 0, ptr %l250, !tbaa !24
  br label %bb79
bb76:
  %t487 = load i64, ptr %l32, !tbaa !24
  %t488 = load i64, ptr %l31, !tbaa !24
  %t491 = sub i64 %t487, %t488
  %t492 = load i64, ptr %l33, !tbaa !24
  %t495 = add i64 %t491, %t492
  %t497 = sub i64 %t495, 1
  %t498 = load i64, ptr %l33, !tbaa !24
  %t501 = sdiv i64 %t497, %t498
  store i64 %t501, ptr %l253, !tbaa !24
  br label %bb78
bb77:
  store i64 0, ptr %l253, !tbaa !24
  br label %bb78
bb78:
  %t503 = load i64, ptr %l253, !tbaa !24
  store i64 %t503, ptr %l250, !tbaa !24
  br label %bb79
bb79:
  %t504 = load i64, ptr %l250, !tbaa !24
  store i64 %t504, ptr %l34, !tbaa !24
  store i64 0, ptr %l35, !tbaa !24
  br label %bb80
bb80:
  %t505 = load i64, ptr %l35, !tbaa !24
  %t506 = load i64, ptr %l34, !tbaa !24
  %t509 = icmp slt i64 %t505, %t506
  %t511 = xor i1 %t509, true
  br i1 %t511, label %bb81, label %bb82
bb81:
  br label %bb85
bb82:
  br label %bb83
bb83:
  %t513 = load i64, ptr %l31, !tbaa !24
  %t514 = load i64, ptr %l35, !tbaa !24
  %t515 = load i64, ptr %l33, !tbaa !24
  %t518 = mul i64 %t514, %t515
  %t521 = add i64 %t513, %t518
  %t523 = load ptr, ptr %l0, !tbaa !29
  %t525 = getelementptr %"compiler/eval:Machine", ptr %t523, i32 0, i32 60
  %t526 = load { i64, ptr }, ptr %t525, !tbaa !27
  store { i64, ptr } %t526, ptr %l272, !tbaa !27
  %t527 = load ptr, ptr %l0, !tbaa !29
  %t529 = getelementptr %"compiler/eval:Machine", ptr %t527, i32 0, i32 61
  %t530 = load i64, ptr %t529, !tbaa !24
  %t534 = add i64 %t530, %t521
  %t536 = getelementptr { i64, ptr }, ptr %l272, i32 0, i32 1
  %t537 = load ptr, ptr %t536, !tbaa !27
  %t538 = getelementptr i64, ptr %t537, i64 %t534
  store i64 0, ptr %t538, !tbaa !34
  br label %bb84
bb84:
  %t539 = load i64, ptr %l35, !tbaa !24
  %t541 = add i64 %t539, 1
  store i64 %t541, ptr %l35, !tbaa !24
  br label %bb80
bb85:
  %t543 = load ptr, ptr %l0, !tbaa !29
  %t544 = load i64, ptr %l15, !tbaa !24
  %t547 = getelementptr %"compiler/eval:Machine", ptr %t543, i32 0, i32 61
  store i64 %t544, ptr %t547, !tbaa !24
  %t548 = load ptr, ptr %l0, !tbaa !29
  %t550 = getelementptr %"compiler/eval:Machine", ptr %t548, i32 0, i32 59
  %t551 = load i64, ptr %t550, !tbaa !24
  %t552 = load ptr, ptr %l0, !tbaa !29
  %t554 = getelementptr %"compiler/eval:Machine", ptr %t552, i32 0, i32 58
  %t555 = load { i64, ptr }, ptr %t554, !tbaa !27
  %t557 = extractvalue { i64, ptr } %t555, 0
  %t560 = icmp sge i64 %t551, %t557
  br i1 %t560, label %bb86, label %bb87
bb86:
  %t562 = load ptr, ptr %l0, !tbaa !29
  %t564 = getelementptr %"compiler/eval:Machine", ptr %t562, i32 0, i32 58
  %t565 = load { i64, ptr }, ptr %t564, !tbaa !27
  store { i64, ptr } %t565, ptr %l37, !tbaa !27
  %t567 = load ptr, ptr %l0, !tbaa !29
  store ptr %t567, ptr %l289, !tbaa !29
  %t568 = ptrtoint ptr %v0 to i64
  store i64 %t568, ptr %l290, !tbaa !24
  %t569 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e58
  br i1 %t569, label %bb88, label %bb89
bb87:
  br label %bb111
bb88:
  %t571 = call ptr @__olang_region_make(ptr %v0)
  %t572 = ptrtoint ptr %t571 to i64
  store i64 %t572, ptr %l290, !tbaa !24
  br label %bb89
bb89:
  %t573 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t575 = extractvalue { i64, ptr } %t573, 0
  %t577 = mul i64 2, %t575
  store i64 %t577, ptr %l294, !tbaa !24
  call void @llvm.memset.p0.i64(ptr %l295, i8 0, i64 136, i1 false)
  %t578 = load i64, ptr %l294, !tbaa !24
  %t579 = icmp sgt i64 %t578, 0
  br i1 %t579, label %bb90, label %bb91
bb90:
  call void @olang_2emir_2eHelperKind_2eZero_2ecompiler_2feval_3aframe(ptr %t581)
  call void @llvm.memmove.p0.p0.i64(ptr %l297, ptr %t581, i64 136, i1 false)
  br label %bb92
bb91:
  %t582 = load i64, ptr %l294, !tbaa !24
  %t583 = icmp sge i64 %t582, 0
  br i1 %t583, label %bb93, label %bb94
bb92:
  call void @llvm.memmove.p0.p0.i64(ptr %l295, ptr %l297, i64 136, i1 false)
  br label %bb91
bb93:
  %t585 = load i64, ptr %l294, !tbaa !24
  %t586 = icmp sle i64 %t585, 67818912035696880
  br i1 %t586, label %bb95, label %bb96
bb94:
  call void @__olang_check_failed(ptr @olang_loc_d67750d3ea89b5a6_4cf132db9678b04a)
  unreachable
bb95:
  %t588 = load i64, ptr %l294, !tbaa !24
  %t589 = mul i64 %t588, 136
  %t590 = load i64, ptr %l290
  %t591 = inttoptr i64 %t590 to ptr
  %t592 = call ptr @__olang_scope_alloc(ptr %t591, i64 %t589)
  store i64 0, ptr %t593
  br label %fill.594
fill.594:
  %t597 = load i64, ptr %t593
  %t598 = icmp slt i64 %t597, %t588
  br i1 %t598, label %fillb.595, label %filld.596
fillb.595:
  %t599 = getelementptr %"compiler/eval:frame", ptr %t592, i64 %t597
  call void @llvm.memmove.p0.p0.i64(ptr %t599, ptr %l295, i64 136, i1 false)
  %t600 = add i64 %t597, 1
  store i64 %t600, ptr %t593
  br label %fill.594
filld.596:
  %t601 = insertvalue { i64, ptr } undef, i64 %t588, 0
  %t602 = insertvalue { i64, ptr } %t601, ptr %t592, 1
  %t603 = load ptr, ptr %l289, !tbaa !29
  %t604 = getelementptr %"compiler/eval:Machine", ptr %t603, i32 0, i32 58
  %t605 = load { i64, ptr }, ptr %t604, !tbaa !27
  store { i64, ptr } %t605, ptr %l301, !tbaa !27
  %t607 = load ptr, ptr %l289, !tbaa !29
  %t608 = getelementptr %"compiler/eval:Machine", ptr %t607, i32 0, i32 58
  store { i64, ptr } %t602, ptr %t608, !tbaa !27
  %t609 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e58
  br i1 %t609, label %bb97, label %bb98
bb96:
  call void @__olang_check_failed(ptr @olang_loc_d67750d3ea89b5a6_4cf132db9678b04a)
  unreachable
bb97:
  %t611 = load { i64, ptr }, ptr %l301
  %t612 = extractvalue { i64, ptr } %t611, 1
  call void @__olang_region_release(ptr %t612)
  store { i64, ptr } zeroinitializer, ptr %l301
  br label %bb98
bb98:
  store i64 0, ptr %l38, !tbaa !24
  %t613 = load ptr, ptr %l0, !tbaa !29
  %t615 = getelementptr %"compiler/eval:Machine", ptr %t613, i32 0, i32 59
  %t616 = load i64, ptr %t615, !tbaa !24
  store i64 %t616, ptr %l39, !tbaa !24
  store i64 1, ptr %l40, !tbaa !24
  %t618 = load i64, ptr %l39, !tbaa !24
  %t619 = load i64, ptr %l38, !tbaa !24
  %t622 = icmp sgt i64 %t618, %t619
  br i1 %t622, label %bb99, label %bb100
bb99:
  %t624 = load i64, ptr %l40, !tbaa !24
  %t626 = icmp sgt i64 %t624, 0
  br i1 %t626, label %bb101, label %bb102
bb100:
  store i64 0, ptr %l308, !tbaa !24
  br label %bb104
bb101:
  %t628 = load i64, ptr %l39, !tbaa !24
  %t629 = load i64, ptr %l38, !tbaa !24
  %t632 = sub i64 %t628, %t629
  %t633 = load i64, ptr %l40, !tbaa !24
  %t636 = add i64 %t632, %t633
  %t638 = sub i64 %t636, 1
  %t639 = load i64, ptr %l40, !tbaa !24
  %t642 = sdiv i64 %t638, %t639
  store i64 %t642, ptr %l311, !tbaa !24
  br label %bb103
bb102:
  store i64 0, ptr %l311, !tbaa !24
  br label %bb103
bb103:
  %t644 = load i64, ptr %l311, !tbaa !24
  store i64 %t644, ptr %l308, !tbaa !24
  br label %bb104
bb104:
  %t645 = load i64, ptr %l308, !tbaa !24
  store i64 %t645, ptr %l41, !tbaa !24
  store i64 0, ptr %l42, !tbaa !24
  br label %bb105
bb105:
  %t646 = load i64, ptr %l42, !tbaa !24
  %t647 = load i64, ptr %l41, !tbaa !24
  %t650 = icmp slt i64 %t646, %t647
  %t652 = xor i1 %t650, true
  br i1 %t652, label %bb106, label %bb107
bb106:
  br label %bb110
bb107:
  br label %bb108
bb108:
  %t654 = load i64, ptr %l38, !tbaa !24
  %t655 = load i64, ptr %l42, !tbaa !24
  %t656 = load i64, ptr %l40, !tbaa !24
  %t659 = mul i64 %t655, %t656
  %t662 = add i64 %t654, %t659
  store i64 %t662, ptr %l43, !tbaa !24
  %t664 = load ptr, ptr %l0, !tbaa !29
  %t666 = getelementptr %"compiler/eval:Machine", ptr %t664, i32 0, i32 58
  %t667 = load { i64, ptr }, ptr %t666, !tbaa !27
  store { i64, ptr } %t667, ptr %l330, !tbaa !27
  %t668 = load i64, ptr %l43, !tbaa !24
  %t669 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t669, ptr %l332, !tbaa !27
  %t670 = load i64, ptr %l43, !tbaa !24
  %t672 = getelementptr { i64, ptr }, ptr %l332, i32 0, i32 1
  %t673 = load ptr, ptr %t672, !tbaa !27
  %t674 = getelementptr %"compiler/eval:frame", ptr %t673, i64 %t670
  call void @llvm.memmove.p0.p0.i64(ptr %l334, ptr %t674, i64 136, i1 false)
  %t676 = getelementptr { i64, ptr }, ptr %l330, i32 0, i32 1
  %t677 = load ptr, ptr %t676, !tbaa !27
  %t678 = getelementptr %"compiler/eval:frame", ptr %t677, i64 %t668
  call void @llvm.memmove.p0.p0.i64(ptr %t678, ptr %l334, i64 136, i1 false)
  br label %bb109
bb109:
  %t679 = load i64, ptr %l42, !tbaa !24
  %t681 = add i64 %t679, 1
  store i64 %t681, ptr %l42, !tbaa !24
  br label %bb105
bb110:
  br label %bb111
bb111:
  %t683 = load ptr, ptr %l0, !tbaa !29
  %t685 = getelementptr %"compiler/eval:Machine", ptr %t683, i32 0, i32 58
  %t686 = load { i64, ptr }, ptr %t685, !tbaa !27
  store { i64, ptr } %t686, ptr %l338, !tbaa !27
  %t687 = load ptr, ptr %l0, !tbaa !29
  %t689 = getelementptr %"compiler/eval:Machine", ptr %t687, i32 0, i32 59
  %t690 = load i64, ptr %t689, !tbaa !24
  call void @llvm.memmove.p0.p0.i64(ptr %l341, ptr %l8, i64 136, i1 false)
  %t692 = getelementptr { i64, ptr }, ptr %l338, i32 0, i32 1
  %t693 = load ptr, ptr %t692, !tbaa !27
  %t694 = getelementptr %"compiler/eval:frame", ptr %t693, i64 %t690
  call void @llvm.memmove.p0.p0.i64(ptr %t694, ptr %l341, i64 136, i1 false)
  %t695 = load ptr, ptr %l0, !tbaa !29
  store ptr %t695, ptr %l342, !tbaa !29
  %t696 = load ptr, ptr %l342, !tbaa !29
  %t697 = getelementptr %"compiler/eval:Machine", ptr %t696, i32 0, i32 59
  %t698 = load i64, ptr %t697, !tbaa !24
  %t700 = add i64 %t698, 1
  %t702 = load ptr, ptr %l342, !tbaa !29
  %t703 = getelementptr %"compiler/eval:Machine", ptr %t702, i32 0, i32 59
  store i64 %t700, ptr %t703, !tbaa !24
  %t704 = load ptr, ptr %l0, !tbaa !29
  %t706 = getelementptr %"compiler/eval:Machine", ptr %t704, i32 0, i32 59
  %t707 = load i64, ptr %t706, !tbaa !24
  %t709 = sub i64 %t707, 1
  call void @__olang_scope_close(ptr %s0)
  store i64 %t709, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eput(ptr %v0, ptr %a0, i64 %a1, %"compiler/eval:Ptr" %a2, i32 %a3, { i64, [4 x i64] } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"compiler/eval:Ptr"
  %l4 = alloca { i64, [4 x i64] }
  %l5 = alloca %"compiler/mir:Lvalue"
  %l6 = alloca { %"compiler/eval:Ptr", i32 }
  %l9 = alloca i32
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca { i64, i64 }
  %l15 = alloca i32
  %l16 = alloca i32
  %l17 = alloca i64
  %l18 = alloca %"compiler/source:Span"
  %l27 = alloca { %"compiler/eval:Ptr", i32 }
  %l30 = alloca ptr
  %l31 = alloca %"compiler/eval:Ptr"
  %l32 = alloca %"compiler/eval:Ptr"
  %l35 = alloca i64
  %l42 = alloca i64
  %l45 = alloca i1
  %l48 = alloca i64
  %l59 = alloca i1
  %l62 = alloca i64
  %l65 = alloca i1
  %l68 = alloca i64
  %l76 = alloca i64
  %l82 = alloca { i64, i64 }
  %l90 = alloca ptr
  %l91 = alloca %"compiler/eval:Ptr"
  %l94 = alloca i64
  %l98 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store %"compiler/eval:Ptr" %a2, ptr %l2
  store { i64, [4 x i64] } %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [4 x i64] }, ptr %l4
  %t3 = extractvalue { i64, [4 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb52
bb4:
  %t6 = load { i64, [4 x i64] }, ptr %l4
  %t8 = extractvalue { i64, [4 x i64] } %t6, 0
  %t9 = icmp eq i64 %t8, 1
  br i1 %t9, label %bb5, label %bb6
bb5:
  %t11 = getelementptr { i64, [4 x i64] }, ptr %l4, i32 0, i32 1
  %t12 = getelementptr { %"compiler/mir:Lvalue" }, ptr %t11, i32 0, i32 0
  %t13 = load %"compiler/mir:Lvalue", ptr %t12
  store %"compiler/mir:Lvalue" %t13, ptr %l5
  br label %bb7
bb6:
  br label %bb11
bb7:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load i64, ptr %l1, !tbaa !24
  %t17 = load %"compiler/mir:Lvalue", ptr %l5
  %t21 = call { %"compiler/eval:Ptr", i32 } @compiler_2feval_2ecompiler_2feval_3aMachine_2eplace(ptr %v0, ptr %t15, i64 %t16, %"compiler/mir:Lvalue" %t17)
  store { %"compiler/eval:Ptr", i32 } %t21, ptr %l27
  br label %bb8
bb8:
  %t22 = load { %"compiler/eval:Ptr", i32 }, ptr %l27
  store { %"compiler/eval:Ptr", i32 } %t22, ptr %l6
  %t23 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l6, i32 0, i32 0
  %t24 = load %"compiler/eval:Ptr", ptr %t23
  %t26 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l6, i32 0, i32 1
  %t27 = load i32, ptr %t26, !tbaa !23
  %t29 = load ptr, ptr %l0, !tbaa !29
  store ptr %t29, ptr %l30, !tbaa !29
  %t30 = load %"compiler/eval:Ptr", ptr %l2
  store %"compiler/eval:Ptr" %t30, ptr %l31
  store %"compiler/eval:Ptr" %t24, ptr %l32
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t36 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t32, i32 %t27)
  store i64 %t36, ptr %l35
  br label %bb9
bb9:
  %t37 = load ptr, ptr %l30, !tbaa !29
  %t38 = load %"compiler/eval:Ptr", ptr %l31
  %t39 = load %"compiler/eval:Ptr", ptr %l32
  %t40 = load i64, ptr %l35, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopy(ptr %v0, ptr %t37, %"compiler/eval:Ptr" %t38, %"compiler/eval:Ptr" %t39, i64 %t40)
  br label %bb10
bb10:
  br label %bb52
bb11:
  %t41 = load { i64, [4 x i64] }, ptr %l4
  %t43 = extractvalue { i64, [4 x i64] } %t41, 0
  %t44 = icmp eq i64 %t43, 2
  br i1 %t44, label %bb12, label %bb13
bb12:
  %t46 = getelementptr { i64, [4 x i64] }, ptr %l4, i32 0, i32 1
  %t47 = getelementptr { i32, i64 }, ptr %t46, i32 0, i32 0
  %t48 = load i32, ptr %t47
  store i32 %t48, ptr %l9, !tbaa !23
  %t50 = getelementptr { i64, [4 x i64] }, ptr %l4, i32 0, i32 1
  %t51 = getelementptr { i32, i64 }, ptr %t50, i32 0, i32 1
  %t52 = load i64, ptr %t51
  store i64 %t52, ptr %l10, !tbaa !24
  br label %bb14
bb13:
  br label %bb46
bb14:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t58 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t54, i32 %a3)
  store i64 %t58, ptr %l42
  br label %bb15
bb15:
  %t59 = load i64, ptr %l42, !tbaa !24
  store i64 %t59, ptr %l11, !tbaa !24
  %t60 = load i64, ptr %l10, !tbaa !24
  %t62 = icmp ne i64 %t60, 0
  br i1 %t62, label %bb16, label %bb17
bb16:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load i32, ptr %l9, !tbaa !23
  %t68 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t64, i32 %t65)
  store i64 %t68, ptr %l48
  br label %bb18
bb17:
  store i1 false, ptr %l45, !tbaa !21
  br label %bb19
bb18:
  %t69 = load i64, ptr @G_2ecompiler_2feval_2evPair, !tbaa !24
  %t70 = load i64, ptr %l48, !tbaa !24
  %t72 = icmp eq i64 %t70, %t69
  store i1 %t72, ptr %l45, !tbaa !21
  br label %bb19
bb19:
  %t74 = load i1, ptr %l45, !tbaa !21
  br i1 %t74, label %bb20, label %bb21
bb20:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load %"compiler/eval:Ptr", ptr %l2
  %t77 = load i64, ptr %l11, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ezero(ptr %v0, ptr %t75, %"compiler/eval:Ptr" %t76, i64 %t77)
  br label %bb22
bb21:
  %t81 = load i64, ptr %l10, !tbaa !24
  %t83 = icmp eq i64 %t81, 0
  br i1 %t83, label %bb24, label %bb25
bb22:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load %"compiler/eval:Ptr", ptr %l2
  %t87 = load i64, ptr %l10, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t85, %"compiler/eval:Ptr" %t86, i64 8, i64 %t87)
  br label %bb23
bb23:
  br label %bb45
bb24:
  store i1 true, ptr %l59, !tbaa !21
  br label %bb27
bb25:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load i32, ptr %l9, !tbaa !23
  %t95 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t91, i32 %t92)
  store i64 %t95, ptr %l62
  br label %bb26
bb26:
  %t96 = load i64, ptr @G_2ecompiler_2feval_2evAgg, !tbaa !24
  %t97 = load i64, ptr %l62, !tbaa !24
  %t99 = icmp eq i64 %t97, %t96
  store i1 %t99, ptr %l59, !tbaa !21
  br label %bb27
bb27:
  %t101 = load i1, ptr %l59, !tbaa !21
  br i1 %t101, label %bb28, label %bb29
bb28:
  store i1 true, ptr %l65, !tbaa !21
  br label %bb31
bb29:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t103 = load i32, ptr %l9, !tbaa !23
  %t106 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t102, i32 %t103)
  store i64 %t106, ptr %l68
  br label %bb30
bb30:
  %t107 = load i64, ptr @G_2ecompiler_2feval_2evFixed, !tbaa !24
  %t108 = load i64, ptr %l68, !tbaa !24
  %t110 = icmp eq i64 %t108, %t107
  store i1 %t110, ptr %l65, !tbaa !21
  br label %bb31
bb31:
  %t112 = load i1, ptr %l65, !tbaa !21
  br i1 %t112, label %bb32, label %bb33
bb32:
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t114 = load %"compiler/eval:Ptr", ptr %l2
  %t115 = load i64, ptr %l11, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ezero(ptr %v0, ptr %t113, %"compiler/eval:Ptr" %t114, i64 %t115)
  br label %bb34
bb33:
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t120 = load i32, ptr %l9, !tbaa !23
  %t123 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t119, i32 %t120)
  store i64 %t123, ptr %l76
  br label %bb35
bb34:
  br label %bb44
bb35:
  %t124 = load i64, ptr @G_2ecompiler_2feval_2evWide, !tbaa !24
  %t125 = load i64, ptr %l76, !tbaa !24
  %t127 = icmp eq i64 %t125, %t124
  br i1 %t127, label %bb36, label %bb37
bb36:
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t130 = load i32, ptr %l9, !tbaa !23
  %t131 = load i64, ptr %l10, !tbaa !24
  %t135 = call { i64, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2ewideConst(ptr %v0, ptr %t129, i32 %t130, i64 %t131)
  store { i64, i64 } %t135, ptr %l82
  br label %bb38
bb37:
  %t136 = load ptr, ptr %l0, !tbaa !29
  store ptr %t136, ptr %l90, !tbaa !29
  %t137 = load %"compiler/eval:Ptr", ptr %l2
  store %"compiler/eval:Ptr" %t137, ptr %l91
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t139 = load i32, ptr %l9, !tbaa !23
  %t142 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidth(ptr %v0, ptr %t138, i32 %t139)
  store i64 %t142, ptr %l94
  br label %bb40
bb38:
  %t143 = load { i64, i64 }, ptr %l82
  store { i64, i64 } %t143, ptr %l12
  %t144 = getelementptr { i64, i64 }, ptr %l12, i32 0, i32 0
  %t145 = load i64, ptr %t144, !tbaa !24
  %t147 = getelementptr { i64, i64 }, ptr %l12, i32 0, i32 1
  %t148 = load i64, ptr %t147, !tbaa !24
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t151 = load %"compiler/eval:Ptr", ptr %l2
  %t152 = load i32, ptr %l9, !tbaa !23
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrWide(ptr %v0, ptr %t150, %"compiler/eval:Ptr" %t151, i32 %t152, i64 %t145, i64 %t148)
  br label %bb39
bb39:
  br label %bb43
bb40:
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t161 = load i32, ptr %l9, !tbaa !23
  %t162 = load i64, ptr %l10, !tbaa !24
  %t166 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ecanonBits(ptr %v0, ptr %t160, i32 %t161, i64 %t162)
  store i64 %t166, ptr %l98
  br label %bb41
bb41:
  %t167 = load ptr, ptr %l90, !tbaa !29
  %t168 = load %"compiler/eval:Ptr", ptr %l91
  %t169 = load i64, ptr %l94, !tbaa !24
  %t170 = load i64, ptr %l98, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t167, %"compiler/eval:Ptr" %t168, i64 %t169, i64 %t170)
  br label %bb42
bb42:
  br label %bb43
bb43:
  br label %bb44
bb44:
  br label %bb45
bb45:
  br label %bb52
bb46:
  %t171 = load { i64, [4 x i64] }, ptr %l4
  %t173 = extractvalue { i64, [4 x i64] } %t171, 0
  %t174 = icmp eq i64 %t173, 3
  br i1 %t174, label %bb47, label %bb48
bb47:
  %t176 = getelementptr { i64, [4 x i64] }, ptr %l4, i32 0, i32 1
  %t177 = getelementptr { i32, i32, i64, %"compiler/source:Span" }, ptr %t176, i32 0, i32 0
  %t178 = load i32, ptr %t177
  store i32 %t178, ptr %l15, !tbaa !23
  %t180 = getelementptr { i64, [4 x i64] }, ptr %l4, i32 0, i32 1
  %t181 = getelementptr { i32, i32, i64, %"compiler/source:Span" }, ptr %t180, i32 0, i32 1
  %t182 = load i32, ptr %t181
  store i32 %t182, ptr %l16, !tbaa !23
  %t184 = getelementptr { i64, [4 x i64] }, ptr %l4, i32 0, i32 1
  %t185 = getelementptr { i32, i32, i64, %"compiler/source:Span" }, ptr %t184, i32 0, i32 2
  %t186 = load i64, ptr %t185
  store i64 %t186, ptr %l17, !tbaa !24
  %t188 = getelementptr { i64, [4 x i64] }, ptr %l4, i32 0, i32 1
  %t189 = getelementptr { i32, i32, i64, %"compiler/source:Span" }, ptr %t188, i32 0, i32 3
  %t190 = load %"compiler/source:Span", ptr %t189
  store %"compiler/source:Span" %t190, ptr %l18
  br label %bb49
bb48:
  br label %bb51
bb49:
  %t192 = load ptr, ptr %l0, !tbaa !29
  %t193 = load i64, ptr %l1, !tbaa !24
  %t194 = load %"compiler/eval:Ptr", ptr %l2
  %t195 = load i32, ptr %l15, !tbaa !23
  %t196 = load i32, ptr %l16, !tbaa !23
  %t197 = load i64, ptr %l17, !tbaa !24
  %t198 = load %"compiler/source:Span", ptr %l18
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eputData(ptr %v0, ptr %t192, i64 %t193, %"compiler/eval:Ptr" %t194, i32 %t195, i32 %t196, i64 %t197, %"compiler/source:Span" %t198)
  br label %bb50
bb50:
  br label %bb52
bb51:
  call void @__olang_check_failed(ptr @olang_loc_af1f9cfaa1609478_d5c4fc0e8d836404)
  unreachable
bb52:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eputData(ptr %v0, ptr %a0, i64 %a1, %"compiler/eval:Ptr" %a2, i32 %a3, i32 %a4, i64 %a5, %"compiler/source:Span" %a6) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/eval:Ptr"
  %l3 = alloca i32
  %l4 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca { i64, [1 x i64] }
  %l9 = alloca i64
  %l10 = alloca { %"compiler/eval:Ptr", i64 }
  %l11 = alloca %"compiler/eval:Ptr"
  %l12 = alloca i64
  %l13 = alloca i64
  %l16 = alloca ptr
  %l21 = alloca { i64, [1 x i64] }
  %l25 = alloca ptr
  %l26 = alloca %"compiler/eval:Ptr"
  %l29 = alloca i64
  %l37 = alloca { %"compiler/eval:Ptr", i64 }
  %l44 = alloca i64
  %l51 = alloca ptr
  %l55 = alloca %"compiler/eval:Ptr"
  %l66 = alloca ptr
  %l67 = alloca %"compiler/eval:Ptr"
  %l68 = alloca %"compiler/eval:Ptr"
  %l71 = alloca i64
  %s4 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store %"compiler/eval:Ptr" %a2, ptr %l2
  store i32 %a3, ptr %l3
  store i32 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call ptr @compiler_2feval_2ecompiler_2feval_3aMachine_2efnOfFrame(ptr %v0, ptr %v0, ptr %t1, i64 %a1)
  store ptr %t5, ptr %l16
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l16, !tbaa !29
  store ptr %t6, ptr %l7, !tbaa !29
  %t7 = load ptr, ptr %l7, !tbaa !29
  %t9 = getelementptr %"compiler/mir:Fn", ptr %t7, i32 0, i32 19
  %t10 = load i32, ptr %l4, !tbaa !23
  %t12 = sext i32 %t10 to i64
  %t15 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aConstNode_3e_2eAt_3ccompiler_2fmir_3aConstNode_3e(ptr %v0, ptr %t9, i64 %t12)
  store { i64, [1 x i64] } %t15, ptr %l21
  br label %bb2
bb2:
  %t16 = load { i64, [1 x i64] }, ptr %l21
  store { i64, [1 x i64] } %t16, ptr %l8
  %t17 = load { i64, [1 x i64] }, ptr %l8
  %t19 = extractvalue { i64, [1 x i64] } %t17, 0
  %t20 = icmp eq i64 %t19, 0
  br i1 %t20, label %bb3, label %bb4
bb3:
  %t22 = getelementptr { i64, [1 x i64] }, ptr %l8, i32 0, i32 1
  %t23 = getelementptr { i64 }, ptr %t22, i32 0, i32 0
  %t24 = load i64, ptr %t23
  store i64 %t24, ptr %l9, !tbaa !24
  br label %bb5
bb4:
  br label %bb8
bb5:
  %t26 = load ptr, ptr %l0, !tbaa !29
  store ptr %t26, ptr %l25, !tbaa !29
  %t27 = load %"compiler/eval:Ptr", ptr %l2
  store %"compiler/eval:Ptr" %t27, ptr %l26
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load i32, ptr %l3, !tbaa !23
  %t32 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidth(ptr %v0, ptr %t28, i32 %t29)
  store i64 %t32, ptr %l29
  br label %bb6
bb6:
  %t33 = load i64, ptr %l9, !tbaa !24
  %t34 = load ptr, ptr %l25, !tbaa !29
  %t35 = load %"compiler/eval:Ptr", ptr %l26
  %t36 = load i64, ptr %l29, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t34, %"compiler/eval:Ptr" %t35, i64 %t36, i64 %t33)
  br label %bb7
bb7:
  br label %ret
bb8:
  br i1 true, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_12565802a2336670_a75db38aedd0e3fc)
  unreachable
bb13:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t39 = load ptr, ptr %l7, !tbaa !29
  %t40 = load i32, ptr %l3, !tbaa !23
  %t41 = load i32, ptr %l4, !tbaa !23
  %t50 = call { %"compiler/eval:Ptr", i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2edataFor(ptr %v0, ptr %v0, ptr %t38, ptr %t39, i32 %t40, i32 %t41, i64 %a5, %"compiler/source:Span" %a6)
  store { %"compiler/eval:Ptr", i64 } %t50, ptr %l37
  br label %bb14
bb14:
  %t51 = load { %"compiler/eval:Ptr", i64 }, ptr %l37
  store { %"compiler/eval:Ptr", i64 } %t51, ptr %l10
  %t52 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l10, i32 0, i32 0
  %t53 = load %"compiler/eval:Ptr", ptr %t52
  store %"compiler/eval:Ptr" %t53, ptr %l11
  %t55 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l10, i32 0, i32 1
  %t56 = load i64, ptr %t55, !tbaa !24
  store i64 %t56, ptr %l12, !tbaa !24
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/eval:Machine", ptr %t58, i32 0, i32 22
  %t61 = load i1, ptr %t60, !tbaa !21
  br i1 %t61, label %bb15, label %bb16
bb15:
  br label %ret
bb16:
  br label %bb17
bb17:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t64 = load i32, ptr %l3, !tbaa !23
  %t67 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t63, i32 %t64)
  store i64 %t67, ptr %l44
  br label %bb18
bb18:
  %t68 = load i64, ptr %l44, !tbaa !24
  store i64 %t68, ptr %l13, !tbaa !24
  %t69 = load i64, ptr %l13, !tbaa !24
  %t70 = load i64, ptr @G_2ecompiler_2feval_2evPair, !tbaa !24
  %t73 = icmp eq i64 %t69, %t70
  br i1 %t73, label %bb19, label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb25
bb21:
  store %olang.scope zeroinitializer, ptr %s4
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load %"compiler/eval:Ptr", ptr %l2
  %t77 = load i64, ptr %l12, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t75, %"compiler/eval:Ptr" %t76, i64 8, i64 %t77)
  br label %bb22
bb22:
  %t81 = load ptr, ptr %l0, !tbaa !29
  store ptr %t81, ptr %l51, !tbaa !29
  %t82 = getelementptr %"compiler/eval:Ptr", ptr %l2, i32 0, i32 0
  %t83 = load i64, ptr %t82, !tbaa !24
  %t84 = getelementptr %"compiler/eval:Ptr", ptr %l2, i32 0, i32 1
  %t85 = load i64, ptr %t84, !tbaa !24
  %t87 = add i64 %t85, 8
  %t90 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s4, i64 %t83, i64 %t87)
  store %"compiler/eval:Ptr" %t90, ptr %l55
  br label %bb23
bb23:
  %t91 = load %"compiler/eval:Ptr", ptr %l11
  %t92 = load ptr, ptr %l51, !tbaa !29
  %t93 = load %"compiler/eval:Ptr", ptr %l55
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t92, %"compiler/eval:Ptr" %t93, %"compiler/eval:Ptr" %t91)
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s4)
  br label %bb42
bb25:
  %t95 = load i64, ptr %l13, !tbaa !24
  %t96 = load i64, ptr @G_2ecompiler_2feval_2evPtr, !tbaa !24
  %t99 = icmp eq i64 %t95, %t96
  br i1 %t99, label %bb26, label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb30
bb28:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load %"compiler/eval:Ptr", ptr %l2
  %t103 = load %"compiler/eval:Ptr", ptr %l11
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t101, %"compiler/eval:Ptr" %t102, %"compiler/eval:Ptr" %t103)
  br label %bb29
bb29:
  br label %bb42
bb30:
  %t107 = load i64, ptr %l13, !tbaa !24
  %t108 = load i64, ptr @G_2ecompiler_2feval_2evFixed, !tbaa !24
  %t111 = icmp eq i64 %t107, %t108
  br i1 %t111, label %bb31, label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb36
bb33:
  %t113 = load ptr, ptr %l0, !tbaa !29
  store ptr %t113, ptr %l66, !tbaa !29
  %t114 = load %"compiler/eval:Ptr", ptr %l2
  store %"compiler/eval:Ptr" %t114, ptr %l67
  %t115 = load %"compiler/eval:Ptr", ptr %l11
  store %"compiler/eval:Ptr" %t115, ptr %l68
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t117 = load i32, ptr %l3, !tbaa !23
  %t120 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t116, i32 %t117)
  store i64 %t120, ptr %l71
  br label %bb34
bb34:
  %t121 = load ptr, ptr %l66, !tbaa !29
  %t122 = load %"compiler/eval:Ptr", ptr %l67
  %t123 = load %"compiler/eval:Ptr", ptr %l68
  %t124 = load i64, ptr %l71, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopy(ptr %v0, ptr %t121, %"compiler/eval:Ptr" %t122, %"compiler/eval:Ptr" %t123, i64 %t124)
  br label %bb35
bb35:
  br label %bb42
bb36:
  br i1 true, label %bb37, label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb41
bb39:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t126 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNotModelled, !tbaa !27
  %t127 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t127, ptr %t125, { i64, ptr } %t126)
  br label %bb40
bb40:
  br label %bb42
bb41:
  call void @__olang_check_failed(ptr @olang_loc_1069159e4cdf0a01_3c7ea434b50ec3ad)
  unreachable
bb42:
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtrOrBits(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l5 = alloca i64
  %l12 = alloca i64
  %l14 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca %"compiler/eval:Ptr"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/eval:Ptr"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eat(ptr %v0, ptr %t1, %"compiler/eval:Ptr" %a1, i64 8, i1 false)
  store i64 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i64, ptr %l5, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  %t7 = load i64, ptr %l2, !tbaa !24
  %t9 = icmp slt i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/eval:Ptr" %t11, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t13 = load i64, ptr %l2, !tbaa !24
  %t15 = srem i64 %t13, 8
  %t17 = icmp eq i64 %t15, 0
  br i1 %t17, label %bb5, label %bb6
bb5:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/eval:Machine", ptr %t19, i32 0, i32 46
  %t22 = load { i64, ptr }, ptr %t21, !tbaa !27
  store { i64, ptr } %t22, ptr %l14, !tbaa !27
  %t23 = load i64, ptr %l2, !tbaa !24
  %t25 = sdiv i64 %t23, 8
  %t27 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = getelementptr i64, ptr %t28, i64 %t25
  %t30 = load i64, ptr %t29, !tbaa !34
  store i64 %t30, ptr %l12, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l12, !tbaa !24
  br label %bb7
bb7:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load i64, ptr %l2, !tbaa !24
  %t36 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erdRaw(ptr %v0, ptr %t32, i64 %t33, i64 8)
  store i64 %t36, ptr %l20
  br label %bb8
bb8:
  %t37 = load i64, ptr %l12, !tbaa !24
  %t38 = load i64, ptr %l20, !tbaa !24
  %t39 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s0, i64 %t37, i64 %t38)
  store %"compiler/eval:Ptr" %t39, ptr %l21
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s0)
  %t40 = load %"compiler/eval:Ptr", ptr %l21
  store %"compiler/eval:Ptr" %t40, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/eval:Ptr", ptr %rv
  ret %"compiler/eval:Ptr" %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eref(ptr %v0, ptr %a0, i64 %a1, %"compiler/eval:Ptr" %a2, %"compiler/mir:Lvalue" %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/eval:Ptr"
  %l5 = alloca { %"compiler/eval:Ptr", i32 }
  %l6 = alloca %"compiler/eval:Ptr"
  %l7 = alloca i32
  %l11 = alloca { %"compiler/eval:Ptr", i32 }
  %l18 = alloca i64
  %l26 = alloca i64
  %l32 = alloca ptr
  %l33 = alloca %"compiler/eval:Ptr"
  %l36 = alloca i64
  %l37 = alloca ptr
  %l41 = alloca %"compiler/eval:Ptr"
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store %"compiler/eval:Ptr" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t7 = call { %"compiler/eval:Ptr", i32 } @compiler_2feval_2ecompiler_2feval_3aMachine_2eplace(ptr %v0, ptr %t1, i64 %a1, %"compiler/mir:Lvalue" %a3)
  store { %"compiler/eval:Ptr", i32 } %t7, ptr %l11
  br label %bb1
bb1:
  %t8 = load { %"compiler/eval:Ptr", i32 }, ptr %l11
  store { %"compiler/eval:Ptr", i32 } %t8, ptr %l5
  %t9 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l5, i32 0, i32 0
  %t10 = load %"compiler/eval:Ptr", ptr %t9
  store %"compiler/eval:Ptr" %t10, ptr %l6
  %t12 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l5, i32 0, i32 1
  %t13 = load i32, ptr %t12, !tbaa !23
  store i32 %t13, ptr %l7, !tbaa !23
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/eval:Machine", ptr %t15, i32 0, i32 22
  %t18 = load i1, ptr %t17, !tbaa !21
  br i1 %t18, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb3:
  br label %bb4
bb4:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t24 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t20, i32 %a4)
  store i64 %t24, ptr %l18
  br label %bb5
bb5:
  %t25 = load i64, ptr @G_2ecompiler_2feval_2evPair, !tbaa !24
  %t26 = load i64, ptr %l18, !tbaa !24
  %t28 = icmp ne i64 %t26, %t25
  br i1 %t28, label %bb6, label %bb7
bb6:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load %"compiler/eval:Ptr", ptr %l2
  %t32 = load %"compiler/eval:Ptr", ptr %l6
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t30, %"compiler/eval:Ptr" %t31, %"compiler/eval:Ptr" %t32)
  br label %bb8
bb7:
  br label %bb9
bb8:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb9:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load i32, ptr %l7, !tbaa !23
  %t40 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t36, i32 %t37)
  store i64 %t40, ptr %l26
  br label %bb10
bb10:
  %t41 = load i64, ptr @G_2ecompiler_2feval_2evPair, !tbaa !24
  %t42 = load i64, ptr %l26, !tbaa !24
  %t44 = icmp eq i64 %t42, %t41
  br i1 %t44, label %bb11, label %bb12
bb11:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load %"compiler/eval:Ptr", ptr %l2
  %t48 = load %"compiler/eval:Ptr", ptr %l6
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopy(ptr %v0, ptr %t46, %"compiler/eval:Ptr" %t47, %"compiler/eval:Ptr" %t48, i64 16)
  br label %bb13
bb12:
  br label %bb14
bb13:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb14:
  %t52 = load ptr, ptr %l0, !tbaa !29
  store ptr %t52, ptr %l32, !tbaa !29
  %t53 = load %"compiler/eval:Ptr", ptr %l2
  store %"compiler/eval:Ptr" %t53, ptr %l33
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load i32, ptr %l7, !tbaa !23
  %t58 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2efixedLen(ptr %v0, ptr %t54, i32 %t55)
  store i64 %t58, ptr %l36
  br label %bb15
bb15:
  %t59 = load ptr, ptr %l32, !tbaa !29
  %t60 = load %"compiler/eval:Ptr", ptr %l33
  %t61 = load i64, ptr %l36, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t59, %"compiler/eval:Ptr" %t60, i64 8, i64 %t61)
  br label %bb16
bb16:
  %t62 = load ptr, ptr %l0, !tbaa !29
  store ptr %t62, ptr %l37, !tbaa !29
  %t63 = getelementptr %"compiler/eval:Ptr", ptr %l2, i32 0, i32 0
  %t64 = load i64, ptr %t63, !tbaa !24
  %t65 = getelementptr %"compiler/eval:Ptr", ptr %l2, i32 0, i32 1
  %t66 = load i64, ptr %t65, !tbaa !24
  %t68 = add i64 %t66, 8
  %t71 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s0, i64 %t64, i64 %t68)
  store %"compiler/eval:Ptr" %t71, ptr %l41
  br label %bb17
bb17:
  %t72 = load %"compiler/eval:Ptr", ptr %l6
  %t73 = load ptr, ptr %l37, !tbaa !29
  %t74 = load %"compiler/eval:Ptr", ptr %l41
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t73, %"compiler/eval:Ptr" %t74, %"compiler/eval:Ptr" %t72)
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eregionHome(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l2 = alloca %"compiler/eval:scope"
  %l8 = alloca %"compiler/eval:scope"
  %l11 = alloca i64
  %rv = alloca i64
  %t9 = alloca %"compiler/eval:scope", align 8
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/eval:Machine", ptr %a0, i32 0, i32 52
  %t5 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t8 = and i64 %a1, %t5
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t9, ptr %v0, ptr %t3, i64 %t8)
  call void @llvm.memmove.p0.p0.i64(ptr %l8, ptr %t9, i64 152, i1 false)
  br label %bb1
bb1:
  call void @llvm.memmove.p0.p0.i64(ptr %l2, ptr %l8, i64 152, i1 false)
  %t12 = getelementptr %"compiler/eval:scope", ptr %l2, i32 0, i32 16
  %t13 = load i64, ptr %t12, !tbaa !24
  %t15 = icmp ne i64 %t13, 0
  br i1 %t15, label %bb2, label %bb3
bb2:
  %t17 = getelementptr %"compiler/eval:scope", ptr %l2, i32 0, i32 16
  %t18 = load i64, ptr %t17, !tbaa !24
  store i64 %t18, ptr %l11, !tbaa !24
  br label %bb4
bb3:
  %t20 = getelementptr %"compiler/eval:scope", ptr %l2, i32 0, i32 5
  %t21 = load i64, ptr %t20, !tbaa !24
  store i64 %t21, ptr %l11, !tbaa !24
  br label %bb4
bb4:
  %t23 = load i64, ptr %l11, !tbaa !24
  store i64 %t23, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2erelease(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"compiler/eval:alloc"
  %l3 = alloca i64
  %l5 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l17 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l39 = alloca ptr
  %l45 = alloca { i64, ptr }
  %l54 = alloca i64
  %l57 = alloca i64
  %l76 = alloca { i64, ptr }
  %l86 = alloca { i64, ptr }
  %l90 = alloca { i64, ptr }
  %l93 = alloca ptr
  %l105 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 49
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l17, !tbaa !27
  %t5 = load i64, ptr %l1, !tbaa !24
  %t7 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !27
  %t9 = getelementptr %"compiler/eval:alloc", ptr %t8, i64 %t5
  %t10 = load %"compiler/eval:alloc", ptr %t9
  store %"compiler/eval:alloc" %t10, ptr %l2
  %t12 = getelementptr %"compiler/eval:alloc", ptr %l2, i32 0, i32 4
  %t13 = load i64, ptr %t12, !tbaa !24
  %t14 = load i64, ptr @G_2ecompiler_2feval_2eaFree, !tbaa !24
  %t17 = icmp eq i64 %t13, %t14
  br i1 %t17, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t19 = getelementptr %"compiler/eval:alloc", ptr %l2, i32 0, i32 5
  %t20 = load i64, ptr %t19, !tbaa !24
  %t22 = icmp ne i64 %t20, 0
  br i1 %t22, label %bb4, label %bb5
bb4:
  %t24 = getelementptr %"compiler/eval:alloc", ptr %l2, i32 0, i32 5
  %t25 = load i64, ptr %t24, !tbaa !24
  %t26 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t29 = and i64 %t25, %t26
  store i64 %t29, ptr %l3, !tbaa !24
  %t31 = getelementptr %"compiler/eval:alloc", ptr %l2, i32 0, i32 6
  %t32 = load i64, ptr %t31, !tbaa !24
  %t34 = icmp ne i64 %t32, 0
  br i1 %t34, label %bb6, label %bb7
bb5:
  br label %bb13
bb6:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/eval:Machine", ptr %t36, i32 0, i32 49
  %t39 = load { i64, ptr }, ptr %t38, !tbaa !27
  store { i64, ptr } %t39, ptr %l31, !tbaa !27
  %t40 = getelementptr %"compiler/eval:alloc", ptr %l2, i32 0, i32 6
  %t41 = load i64, ptr %t40, !tbaa !24
  %t42 = getelementptr %"compiler/eval:alloc", ptr %l2, i32 0, i32 7
  %t43 = load i64, ptr %t42, !tbaa !24
  %t46 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = getelementptr %"compiler/eval:alloc", ptr %t47, i64 %t41
  %t49 = getelementptr %"compiler/eval:alloc", ptr %t48, i32 0, i32 7
  store i64 %t43, ptr %t49, !tbaa !24
  br label %bb9
bb7:
  %t50 = load i64, ptr %l3, !tbaa !24
  %t52 = getelementptr %"compiler/eval:alloc", ptr %l2, i32 0, i32 7
  %t53 = load i64, ptr %t52, !tbaa !24
  store i64 %t53, ptr %l5, !tbaa !24
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/eval:Machine", ptr %t55, i32 0, i32 52
  %t61 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v0, ptr %t57, i64 %t50)
  store ptr %t61, ptr %l39
  br label %bb8
bb8:
  %t62 = load ptr, ptr %l39, !tbaa !29
  %t64 = load i64, ptr %l5, !tbaa !24
  %t67 = getelementptr %"compiler/eval:scope", ptr %t62, i32 0, i32 3
  store i64 %t64, ptr %t67, !tbaa !24
  br label %bb9
bb9:
  %t68 = getelementptr %"compiler/eval:alloc", ptr %l2, i32 0, i32 7
  %t69 = load i64, ptr %t68, !tbaa !24
  %t71 = icmp ne i64 %t69, 0
  br i1 %t71, label %bb10, label %bb11
bb10:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/eval:Machine", ptr %t73, i32 0, i32 49
  %t76 = load { i64, ptr }, ptr %t75, !tbaa !27
  store { i64, ptr } %t76, ptr %l45, !tbaa !27
  %t77 = getelementptr %"compiler/eval:alloc", ptr %l2, i32 0, i32 7
  %t78 = load i64, ptr %t77, !tbaa !24
  %t79 = getelementptr %"compiler/eval:alloc", ptr %l2, i32 0, i32 6
  %t80 = load i64, ptr %t79, !tbaa !24
  %t83 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t84 = load ptr, ptr %t83, !tbaa !27
  %t85 = getelementptr %"compiler/eval:alloc", ptr %t84, i64 %t78
  %t86 = getelementptr %"compiler/eval:alloc", ptr %t85, i32 0, i32 6
  store i64 %t80, ptr %t86, !tbaa !24
  br label %bb12
bb11:
  br label %bb12
bb12:
  br label %bb13
bb13:
  store i64 0, ptr %l7, !tbaa !24
  %t87 = getelementptr %"compiler/eval:alloc", ptr %l2, i32 0, i32 1
  %t88 = load i64, ptr %t87, !tbaa !24
  %t90 = add i64 %t88, 7
  %t92 = sdiv i64 %t90, 8
  store i64 %t92, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t94 = load i64, ptr %l8, !tbaa !24
  %t95 = load i64, ptr %l7, !tbaa !24
  %t98 = icmp sgt i64 %t94, %t95
  br i1 %t98, label %bb14, label %bb15
bb14:
  %t100 = load i64, ptr %l9, !tbaa !24
  %t102 = icmp sgt i64 %t100, 0
  br i1 %t102, label %bb16, label %bb17
bb15:
  store i64 0, ptr %l54, !tbaa !24
  br label %bb19
bb16:
  %t104 = load i64, ptr %l8, !tbaa !24
  %t105 = load i64, ptr %l7, !tbaa !24
  %t108 = sub i64 %t104, %t105
  %t109 = load i64, ptr %l9, !tbaa !24
  %t112 = add i64 %t108, %t109
  %t114 = sub i64 %t112, 1
  %t115 = load i64, ptr %l9, !tbaa !24
  %t118 = sdiv i64 %t114, %t115
  store i64 %t118, ptr %l57, !tbaa !24
  br label %bb18
bb17:
  store i64 0, ptr %l57, !tbaa !24
  br label %bb18
bb18:
  %t120 = load i64, ptr %l57, !tbaa !24
  store i64 %t120, ptr %l54, !tbaa !24
  br label %bb19
bb19:
  %t121 = load i64, ptr %l54, !tbaa !24
  store i64 %t121, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb20
bb20:
  %t122 = load i64, ptr %l11, !tbaa !24
  %t123 = load i64, ptr %l10, !tbaa !24
  %t126 = icmp slt i64 %t122, %t123
  %t128 = xor i1 %t126, true
  br i1 %t128, label %bb21, label %bb22
bb21:
  br label %bb25
bb22:
  br label %bb23
bb23:
  %t130 = load i64, ptr %l7, !tbaa !24
  %t131 = load i64, ptr %l11, !tbaa !24
  %t132 = load i64, ptr %l9, !tbaa !24
  %t135 = mul i64 %t131, %t132
  %t138 = add i64 %t130, %t135
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t142 = getelementptr %"compiler/eval:Machine", ptr %t140, i32 0, i32 46
  %t143 = load { i64, ptr }, ptr %t142, !tbaa !27
  store { i64, ptr } %t143, ptr %l76, !tbaa !27
  %t144 = getelementptr %"compiler/eval:alloc", ptr %l2, i32 0, i32 0
  %t145 = load i64, ptr %t144, !tbaa !24
  %t147 = sdiv i64 %t145, 8
  %t151 = add i64 %t147, %t138
  %t153 = getelementptr { i64, ptr }, ptr %l76, i32 0, i32 1
  %t154 = load ptr, ptr %t153, !tbaa !27
  %t155 = getelementptr i64, ptr %t154, i64 %t151
  store i64 0, ptr %t155, !tbaa !34
  br label %bb24
bb24:
  %t156 = load i64, ptr %l11, !tbaa !24
  %t158 = add i64 %t156, 1
  store i64 %t158, ptr %l11, !tbaa !24
  br label %bb20
bb25:
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t161 = getelementptr %"compiler/eval:alloc", ptr %l2, i32 0, i32 0
  %t162 = load i64, ptr %t161, !tbaa !24
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t165 = getelementptr %"compiler/eval:Machine", ptr %t163, i32 0, i32 48
  %t166 = load { i64, ptr }, ptr %t165, !tbaa !27
  store { i64, ptr } %t166, ptr %l86, !tbaa !27
  %t167 = getelementptr %"compiler/eval:alloc", ptr %l2, i32 0, i32 2
  %t168 = load i64, ptr %t167, !tbaa !24
  %t170 = getelementptr { i64, ptr }, ptr %l86, i32 0, i32 1
  %t171 = load ptr, ptr %t170, !tbaa !27
  %t172 = getelementptr i64, ptr %t171, i64 %t168
  %t173 = load i64, ptr %t172, !tbaa !34
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrRaw(ptr %v0, ptr %t160, i64 %t162, i64 8, i64 %t173)
  br label %bb26
bb26:
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t179 = getelementptr %"compiler/eval:Machine", ptr %t177, i32 0, i32 48
  %t180 = load { i64, ptr }, ptr %t179, !tbaa !27
  store { i64, ptr } %t180, ptr %l90, !tbaa !27
  %t181 = getelementptr %"compiler/eval:alloc", ptr %l2, i32 0, i32 2
  %t182 = load i64, ptr %t181, !tbaa !24
  %t183 = getelementptr %"compiler/eval:alloc", ptr %l2, i32 0, i32 0
  %t184 = load i64, ptr %t183, !tbaa !24
  %t187 = getelementptr { i64, ptr }, ptr %l90, i32 0, i32 1
  %t188 = load ptr, ptr %t187, !tbaa !27
  %t189 = getelementptr i64, ptr %t188, i64 %t182
  store i64 %t184, ptr %t189, !tbaa !34
  %t190 = load ptr, ptr %l0, !tbaa !29
  store ptr %t190, ptr %l93, !tbaa !29
  %t191 = load ptr, ptr %l93, !tbaa !29
  %t192 = getelementptr %"compiler/eval:Machine", ptr %t191, i32 0, i32 15
  %t193 = load i64, ptr %t192, !tbaa !24
  %t194 = getelementptr %"compiler/eval:alloc", ptr %l2, i32 0, i32 1
  %t195 = load i64, ptr %t194, !tbaa !24
  %t198 = sub i64 %t193, %t195
  %t200 = load ptr, ptr %l93, !tbaa !29
  %t201 = getelementptr %"compiler/eval:Machine", ptr %t200, i32 0, i32 15
  store i64 %t198, ptr %t201, !tbaa !24
  %t202 = load i64, ptr @G_2ecompiler_2feval_2eaFree, !tbaa !24
  %t204 = getelementptr %"compiler/eval:alloc", ptr %l2, i32 0, i32 4
  store i64 %t202, ptr %t204, !tbaa !24
  %t205 = getelementptr %"compiler/eval:alloc", ptr %l2, i32 0, i32 3
  %t206 = load i64, ptr %t205, !tbaa !24
  %t208 = add i64 %t206, 1
  %t210 = and i64 %t208, 274877906943
  %t212 = getelementptr %"compiler/eval:alloc", ptr %l2, i32 0, i32 3
  store i64 %t210, ptr %t212, !tbaa !24
  %t215 = getelementptr %"compiler/eval:alloc", ptr %l2, i32 0, i32 5
  store i64 0, ptr %t215, !tbaa !24
  %t218 = getelementptr %"compiler/eval:alloc", ptr %l2, i32 0, i32 6
  store i64 0, ptr %t218, !tbaa !24
  %t221 = getelementptr %"compiler/eval:alloc", ptr %l2, i32 0, i32 7
  store i64 0, ptr %t221, !tbaa !24
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t224 = getelementptr %"compiler/eval:Machine", ptr %t222, i32 0, i32 49
  %t225 = load { i64, ptr }, ptr %t224, !tbaa !27
  store { i64, ptr } %t225, ptr %l105, !tbaa !27
  %t226 = load i64, ptr %l1, !tbaa !24
  %t227 = load %"compiler/eval:alloc", ptr %l2
  %t230 = getelementptr { i64, ptr }, ptr %l105, i32 0, i32 1
  %t231 = load ptr, ptr %t230, !tbaa !27
  %t232 = getelementptr %"compiler/eval:alloc", ptr %t231, i64 %t226
  store %"compiler/eval:alloc" %t227, ptr %t232
  %t233 = load ptr, ptr %l0, !tbaa !29
  %t235 = getelementptr %"compiler/eval:Machine", ptr %t233, i32 0, i32 51
  %t236 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t235, i64 %t236)
  br label %bb27
bb27:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eretire(ptr %v0, ptr %a0, i64 %a1, %"compiler/eval:Ptr" %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca { %"compiler/eval:Ptr", i64 }
  %l5 = alloca %"compiler/eval:Ptr"
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca %"compiler/source:Span"
  %l9 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca { i64, [8 x i64] }
  %l13 = alloca i32
  %l19 = alloca { %"compiler/eval:Ptr", i64 }
  %l23 = alloca i1
  %l33 = alloca i1
  %l35 = alloca { i64, ptr }
  %l40 = alloca i1
  %l42 = alloca { i64, ptr }
  %l53 = alloca i1
  %l55 = alloca ptr
  %l59 = alloca { i64, ptr }
  %l62 = alloca ptr
  %l65 = alloca i1
  %l71 = alloca i1
  %l78 = alloca { i64, ptr }
  %l81 = alloca ptr
  %l85 = alloca { i64, ptr }
  %l88 = alloca %"compiler/mir:BasicBlock"
  %l90 = alloca %"compiler/mir:BasicBlock"
  %l102 = alloca ptr
  %l105 = alloca %"std/pair:Pair.9f40551e0d6019a8e678d8f53048b6ba"
  %l107 = alloca { i64, ptr }
  %l108 = alloca i64
  %l111 = alloca i64
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t7 = call { %"compiler/eval:Ptr", i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayView(ptr %v0, ptr %t1, %"compiler/eval:Ptr" %a2, i32 %a3)
  store { %"compiler/eval:Ptr", i64 } %t7, ptr %l19
  br label %bb1
bb1:
  %t8 = load { %"compiler/eval:Ptr", i64 }, ptr %l19
  store { %"compiler/eval:Ptr", i64 } %t8, ptr %l4
  %t9 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l4, i32 0, i32 0
  %t10 = load %"compiler/eval:Ptr", ptr %t9
  store %"compiler/eval:Ptr" %t10, ptr %l5
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/eval:Machine", ptr %t12, i32 0, i32 22
  %t15 = load i1, ptr %t14, !tbaa !21
  br i1 %t15, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l23, !tbaa !21
  br label %bb4
bb3:
  %t17 = getelementptr %"compiler/eval:Ptr", ptr %l5, i32 0, i32 0
  %t18 = load i64, ptr %t17, !tbaa !24
  %t20 = icmp eq i64 %t18, 0
  store i1 %t20, ptr %l23, !tbaa !21
  br label %bb4
bb4:
  %t22 = load i1, ptr %l23, !tbaa !21
  br i1 %t22, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb6:
  br label %bb7
bb7:
  %t23 = getelementptr %"compiler/eval:Ptr", ptr %l5, i32 0, i32 0
  %t24 = load i64, ptr %t23, !tbaa !24
  %t25 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t28 = and i64 %t24, %t25
  store i64 %t28, ptr %l6, !tbaa !24
  %t30 = load i64, ptr %l6, !tbaa !24
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/eval:Machine", ptr %t31, i32 0, i32 50
  %t34 = load i64, ptr %t33, !tbaa !24
  %t37 = icmp sge i64 %t30, %t34
  br i1 %t37, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l33, !tbaa !21
  br label %bb10
bb9:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/eval:Machine", ptr %t39, i32 0, i32 49
  %t42 = load { i64, ptr }, ptr %t41, !tbaa !27
  store { i64, ptr } %t42, ptr %l35, !tbaa !27
  %t43 = load i64, ptr %l6, !tbaa !24
  %t45 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !27
  %t47 = getelementptr %"compiler/eval:alloc", ptr %t46, i64 %t43
  %t48 = getelementptr %"compiler/eval:alloc", ptr %t47, i32 0, i32 4
  %t49 = load i64, ptr %t48, !tbaa !24
  %t50 = load i64, ptr @G_2ecompiler_2feval_2eaFree, !tbaa !24
  %t53 = icmp eq i64 %t49, %t50
  store i1 %t53, ptr %l33, !tbaa !21
  br label %bb10
bb10:
  %t55 = load i1, ptr %l33, !tbaa !21
  br i1 %t55, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l40, !tbaa !21
  br label %bb13
bb12:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/eval:Machine", ptr %t56, i32 0, i32 49
  %t59 = load { i64, ptr }, ptr %t58, !tbaa !27
  store { i64, ptr } %t59, ptr %l42, !tbaa !27
  %t60 = load i64, ptr %l6, !tbaa !24
  %t62 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !27
  %t64 = getelementptr %"compiler/eval:alloc", ptr %t63, i64 %t60
  %t65 = getelementptr %"compiler/eval:alloc", ptr %t64, i32 0, i32 9
  %t66 = load i64, ptr %t65, !tbaa !24
  %t68 = icmp sge i64 %t66, 0
  store i1 %t68, ptr %l40, !tbaa !21
  br label %bb13
bb13:
  %t70 = load i1, ptr %l40, !tbaa !21
  br i1 %t70, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb15:
  br label %bb16
bb16:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/eval:Machine", ptr %t71, i32 0, i32 77
  %t74 = load i64, ptr %t73, !tbaa !24
  store i64 %t74, ptr %l7, !tbaa !24
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/eval:Machine", ptr %t76, i32 0, i32 78
  %t79 = load %"compiler/source:Span", ptr %t78
  store %"compiler/source:Span" %t79, ptr %l8
  %t81 = load i64, ptr %l1, !tbaa !24
  store i64 %t81, ptr %l9, !tbaa !24
  br label %bb17
bb17:
  store %olang.scope zeroinitializer, ptr %s3
  %t83 = load i64, ptr %l9, !tbaa !24
  %t85 = icmp sge i64 %t83, 0
  br i1 %t85, label %bb18, label %bb19
bb18:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/eval:Machine", ptr %t87, i32 0, i32 81
  store ptr %t89, ptr %l55, !tbaa !29
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/eval:Machine", ptr %t90, i32 0, i32 25
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/eval:Machine", ptr %t93, i32 0, i32 58
  %t96 = load { i64, ptr }, ptr %t95, !tbaa !27
  store { i64, ptr } %t96, ptr %l59, !tbaa !27
  %t97 = load i64, ptr %l9, !tbaa !24
  %t99 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !27
  %t101 = getelementptr %"compiler/eval:frame", ptr %t100, i64 %t97
  %t102 = getelementptr %"compiler/eval:frame", ptr %t101, i32 0, i32 0
  %t103 = load i64, ptr %t102, !tbaa !24
  %t106 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %s3, ptr %t92, i64 %t103)
  store ptr %t106, ptr %l62
  br label %bb20
bb19:
  store i1 false, ptr %l53, !tbaa !21
  br label %bb22
bb20:
  %t107 = load ptr, ptr %l62, !tbaa !29
  %t109 = getelementptr %"compiler/mir:Fn", ptr %t107, i32 0, i32 2
  %t110 = load i64, ptr %t109, !tbaa !24
  %t111 = load ptr, ptr %l55, !tbaa !29
  %t113 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t111, i64 %t110)
  store i1 %t113, ptr %l65
  br label %bb21
bb21:
  %t114 = load i1, ptr %l65, !tbaa !21
  store i1 %t114, ptr %l53, !tbaa !21
  br label %bb22
bb22:
  %t115 = load i1, ptr %l53, !tbaa !21
  %t116 = xor i1 %t115, true
  br i1 %t116, label %bb23, label %bb24
bb23:
  call void @__olang_scope_close(ptr %s3)
  br label %bb27
bb24:
  br label %bb25
bb25:
  %t118 = load i64, ptr %l9, !tbaa !24
  %t120 = sub i64 %t118, 1
  store i64 %t120, ptr %l9, !tbaa !24
  call void @__olang_scope_close(ptr %s3)
  br label %bb26
bb26:
  br label %bb17
bb27:
  %t122 = load i64, ptr %l9, !tbaa !24
  %t124 = icmp sge i64 %t122, 0
  br i1 %t124, label %bb28, label %bb29
bb28:
  %t126 = load i64, ptr %l9, !tbaa !24
  %t127 = load i64, ptr %l1, !tbaa !24
  %t130 = icmp slt i64 %t126, %t127
  store i1 %t130, ptr %l71, !tbaa !21
  br label %bb30
bb29:
  store i1 false, ptr %l71, !tbaa !21
  br label %bb30
bb30:
  %t132 = load i1, ptr %l71, !tbaa !21
  br i1 %t132, label %bb31, label %bb32
bb31:
  store %olang.scope zeroinitializer, ptr %s4
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t135 = getelementptr %"compiler/eval:Machine", ptr %t133, i32 0, i32 25
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t138 = getelementptr %"compiler/eval:Machine", ptr %t136, i32 0, i32 58
  %t139 = load { i64, ptr }, ptr %t138, !tbaa !27
  store { i64, ptr } %t139, ptr %l78, !tbaa !27
  %t140 = load i64, ptr %l9, !tbaa !24
  %t142 = getelementptr { i64, ptr }, ptr %l78, i32 0, i32 1
  %t143 = load ptr, ptr %t142, !tbaa !27
  %t144 = getelementptr %"compiler/eval:frame", ptr %t143, i64 %t140
  %t145 = getelementptr %"compiler/eval:frame", ptr %t144, i32 0, i32 0
  %t146 = load i64, ptr %t145, !tbaa !24
  %t149 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %v0, ptr %t135, i64 %t146)
  store ptr %t149, ptr %l81
  br label %bb33
bb32:
  br label %bb39
bb33:
  %t150 = load ptr, ptr %l81, !tbaa !29
  store ptr %t150, ptr %l10, !tbaa !29
  %t151 = load ptr, ptr %l10, !tbaa !29
  %t153 = getelementptr %"compiler/mir:Fn", ptr %t151, i32 0, i32 9
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr %"compiler/eval:Machine", ptr %t154, i32 0, i32 58
  %t157 = load { i64, ptr }, ptr %t156, !tbaa !27
  store { i64, ptr } %t157, ptr %l85, !tbaa !27
  %t158 = load i64, ptr %l9, !tbaa !24
  %t160 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t161 = load ptr, ptr %t160, !tbaa !27
  %t162 = getelementptr %"compiler/eval:frame", ptr %t161, i64 %t158
  %t163 = getelementptr %"compiler/eval:frame", ptr %t162, i32 0, i32 1
  %t164 = load i64, ptr %t163, !tbaa !24
  %t167 = call %"compiler/mir:BasicBlock" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eAt_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %s4, ptr %t153, i64 %t164)
  store %"compiler/mir:BasicBlock" %t167, ptr %l88
  br label %bb34
bb34:
  %t169 = call %"compiler/mir:BasicBlock" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fmir_3aBasicBlock(ptr %s4, ptr %l88)
  store %"compiler/mir:BasicBlock" %t169, ptr %l90
  br label %bb35
bb35:
  %t170 = getelementptr %"compiler/mir:BasicBlock", ptr %l90, i32 0, i32 1
  %t171 = load { i64, [8 x i64] }, ptr %t170
  store { i64, [8 x i64] } %t171, ptr %l11
  %t173 = load { i64, [8 x i64] }, ptr %l11
  %t175 = extractvalue { i64, [8 x i64] } %t173, 0
  %t176 = icmp eq i64 %t175, 4
  br i1 %t176, label %bb36, label %bb37
bb36:
  %t178 = getelementptr { i64, [8 x i64] }, ptr %l11, i32 0, i32 1
  %t179 = getelementptr { %"compiler/source:Span", i32 }, ptr %t178, i32 0, i32 0
  %t180 = load %"compiler/source:Span", ptr %t179
  %t182 = getelementptr { i64, [8 x i64] }, ptr %l11, i32 0, i32 1
  %t183 = getelementptr { %"compiler/source:Span", i32 }, ptr %t182, i32 0, i32 1
  %t184 = load i32, ptr %t183
  store i32 %t184, ptr %l13, !tbaa !23
  %t186 = load ptr, ptr %l10, !tbaa !29
  %t188 = getelementptr %"compiler/mir:Fn", ptr %t186, i32 0, i32 2
  %t189 = load i64, ptr %t188, !tbaa !24
  store i64 %t189, ptr %l7, !tbaa !24
  store %"compiler/source:Span" %t180, ptr %l8
  br label %bb38
bb37:
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s4)
  br label %bb39
bb39:
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t199 = getelementptr %"compiler/eval:Machine", ptr %t197, i32 0, i32 79
  store ptr %t199, ptr %l102, !tbaa !29
  %t200 = load i64, ptr %l7, !tbaa !24
  %t201 = load %"compiler/source:Span", ptr %l8
  %t204 = call %"std/pair:Pair.9f40551e0d6019a8e678d8f53048b6ba" @std_2fpair_3aPair_3cI64_2c_20compiler_2fsource_3aSpan_3e_2ector(ptr %s0, i64 %t200, %"compiler/source:Span" %t201)
  store %"std/pair:Pair.9f40551e0d6019a8e678d8f53048b6ba" %t204, ptr %l105
  br label %bb40
bb40:
  %t205 = load ptr, ptr %l102, !tbaa !29
  %t206 = load %"std/pair:Pair.9f40551e0d6019a8e678d8f53048b6ba", ptr %l105
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20compiler__H2dfd829fbe4fa38977b46d00afbe1a06(ptr %v0, ptr %t205, %"std/pair:Pair.9f40551e0d6019a8e678d8f53048b6ba" %t206)
  br label %bb41
bb41:
  %t207 = load ptr, ptr %l0, !tbaa !29
  %t209 = getelementptr %"compiler/eval:Machine", ptr %t207, i32 0, i32 49
  %t210 = load { i64, ptr }, ptr %t209, !tbaa !27
  store { i64, ptr } %t210, ptr %l107, !tbaa !27
  %t211 = load i64, ptr %l6, !tbaa !24
  store i64 %t211, ptr %l108, !tbaa !24
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t214 = getelementptr %"compiler/eval:Machine", ptr %t212, i32 0, i32 79
  %t216 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20compiler__H5ec116bb82f5a234bb19cb32db1efc81(ptr %v0, ptr %t214)
  store i64 %t216, ptr %l111
  br label %bb42
bb42:
  %t217 = load i64, ptr %l111, !tbaa !24
  %t218 = sub i64 %t217, 1
  %t220 = load i64, ptr %l108, !tbaa !24
  %t221 = getelementptr { i64, ptr }, ptr %l107, i32 0, i32 1
  %t222 = load ptr, ptr %t221, !tbaa !27
  %t223 = getelementptr %"compiler/eval:alloc", ptr %t222, i64 %t220
  %t224 = getelementptr %"compiler/eval:alloc", ptr %t223, i32 0, i32 9
  store i64 %t218, ptr %t224, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2ereturned(ptr %v0, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/eval:frame"
  %l2 = alloca i64
  %l4 = alloca i64
  %l7 = alloca i1
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l22 = alloca %"compiler/eval:frame"
  %l33 = alloca i1
  %l35 = alloca i1
  %l47 = alloca i1
  %l49 = alloca i1
  %l56 = alloca ptr
  %l65 = alloca ptr
  %l68 = alloca ptr
  %l70 = alloca i1
  %l79 = alloca i1
  %l82 = alloca i1
  %l84 = alloca %"compiler/eval:frame"
  %l87 = alloca ptr
  %l88 = alloca i64
  %l91 = alloca i64
  %l92 = alloca i32
  %l93 = alloca i64
  %l96 = alloca i64
  %l97 = alloca i32
  %l100 = alloca i64
  %l107 = alloca i64
  %l110 = alloca i64
  %l129 = alloca ptr
  %l135 = alloca i64
  %l142 = alloca %"compiler/eval:frame"
  %t12 = alloca %"compiler/eval:frame", align 8
  %t25 = alloca { i64, [5 x i64] }, align 8
  %t157 = alloca %"compiler/eval:frame", align 8
  %t273 = alloca %"compiler/eval:frame", align 8
  store ptr %a0, ptr %l0
  call void @llvm.memmove.p0.p0.i64(ptr %l1, ptr %a1, i64 136, i1 false)
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/eval:frame", ptr %l1, i32 0, i32 7
  %t2 = load i64, ptr %t1, !tbaa !24
  store i64 %t2, ptr %l2, !tbaa !24
  %t4 = load i64, ptr %l2, !tbaa !24
  %t5 = load i64, ptr @G_2ecompiler_2feval_2erCall, !tbaa !24
  %t8 = icmp eq i64 %t4, %t5
  br i1 %t8, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  call void @llvm.memmove.p0.p0.i64(ptr %l22, ptr %l1, i64 136, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %t12, ptr %l22, i64 136, i1 false)
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecallReturned(ptr %v0, ptr %t10, ptr %t12)
  br label %bb4
bb4:
  br label %bb90
bb5:
  %t13 = load i64, ptr %l2, !tbaa !24
  %t14 = load i64, ptr @G_2ecompiler_2feval_2erRequest, !tbaa !24
  %t17 = icmp eq i64 %t13, %t14
  br i1 %t17, label %bb6, label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb21
bb8:
  %t19 = getelementptr %"compiler/eval:frame", ptr %l1, i32 0, i32 12
  %t20 = load i1, ptr %t19, !tbaa !21
  br i1 %t20, label %bb9, label %bb10
bb9:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/eval:frame", ptr %l1, i32 0, i32 13
  %t24 = load i64, ptr %t23, !tbaa !24
  store { i64, [5 x i64] } zeroinitializer, ptr %t25
  %t26 = getelementptr { i64, [5 x i64] }, ptr %t25, i32 0, i32 0
  store i64 1, ptr %t26
  %t28 = insertvalue { i64 } undef, i64 %t24, 0
  %t29 = getelementptr { i64, [5 x i64] }, ptr %t25, i32 0, i32 1
  store { i64 } %t28, ptr %t29
  %t30 = load { i64, [5 x i64] }, ptr %t25
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2estop(ptr %v0, ptr %v0, ptr %t22, { i64, [5 x i64] } %t30)
  br label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb12
bb12:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/eval:Machine", ptr %t33, i32 0, i32 1
  %t36 = load i32, ptr %t35, !range !{i32 0, i32 2}
  %t38 = trunc i64 0 to i32
  %t39 = icmp eq i32 %t36, %t38
  br i1 %t39, label %bb13, label %bb14
bb13:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewalksLetGo(ptr %v0, ptr %t41)
  store i1 %t43, ptr %l35
  br label %bb15
bb14:
  store i1 false, ptr %l33, !tbaa !21
  br label %bb16
bb15:
  %t44 = load i1, ptr %l35, !tbaa !21
  store i1 %t44, ptr %l33, !tbaa !21
  br label %bb16
bb16:
  %t45 = load i1, ptr %l33, !tbaa !21
  br i1 %t45, label %bb17, label %bb18
bb17:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyWalkLetGo, !tbaa !27
  %t48 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t48, ptr %t46, { i64, ptr } %t47)
  br label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb20
bb20:
  br label %bb90
bb21:
  %t51 = load i64, ptr %l2, !tbaa !24
  %t52 = load i64, ptr @G_2ecompiler_2feval_2erGlobal, !tbaa !24
  %t55 = icmp eq i64 %t51, %t52
  br i1 %t55, label %bb22, label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb42
bb24:
  %t57 = getelementptr %"compiler/eval:frame", ptr %l1, i32 0, i32 12
  %t58 = load i1, ptr %t57, !tbaa !21
  br i1 %t58, label %bb25, label %bb26
bb25:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNoValue, !tbaa !27
  %t62 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t62, ptr %t60, { i64, ptr } %t61)
  br label %bb27
bb26:
  br label %bb28
bb27:
  br label %ret
bb28:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/eval:Machine", ptr %t65, i32 0, i32 1
  %t68 = load i32, ptr %t67, !range !{i32 0, i32 2}
  %t70 = trunc i64 0 to i32
  %t71 = icmp eq i32 %t68, %t70
  br i1 %t71, label %bb29, label %bb30
bb29:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewalksLetGo(ptr %v0, ptr %t73)
  store i1 %t75, ptr %l49
  br label %bb31
bb30:
  store i1 false, ptr %l47, !tbaa !21
  br label %bb32
bb31:
  %t76 = load i1, ptr %l49, !tbaa !21
  store i1 %t76, ptr %l47, !tbaa !21
  br label %bb32
bb32:
  %t77 = load i1, ptr %l47, !tbaa !21
  br i1 %t77, label %bb33, label %bb34
bb33:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t79 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyWalkLetGo, !tbaa !27
  %t80 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t80, ptr %t78, { i64, ptr } %t79)
  br label %bb35
bb34:
  br label %bb36
bb35:
  br label %ret
bb36:
  %t83 = getelementptr %"compiler/eval:frame", ptr %l1, i32 0, i32 8
  %t84 = load i64, ptr %t83, !tbaa !24
  store i64 2, ptr %l4, !tbaa !24
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/eval:Machine", ptr %t86, i32 0, i32 42
  %t92 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eRefMut_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %v0, ptr %t88, i64 %t84)
  store ptr %t92, ptr %l56
  br label %bb37
bb37:
  %t93 = load ptr, ptr %l56, !tbaa !29
  %t95 = load i64, ptr %l4, !tbaa !24
  %t98 = getelementptr %"compiler/eval:global", ptr %t93, i32 0, i32 4
  store i64 %t95, ptr %t98, !tbaa !24
  %t99 = getelementptr %"compiler/eval:frame", ptr %l1, i32 0, i32 8
  %t100 = load i64, ptr %t99, !tbaa !24
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/eval:Machine", ptr %t102, i32 0, i32 23
  %t105 = load i1, ptr %t104, !tbaa !21
  store i1 %t105, ptr %l7, !tbaa !21
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"compiler/eval:Machine", ptr %t107, i32 0, i32 42
  %t113 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eRefMut_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %v0, ptr %t109, i64 %t100)
  store ptr %t113, ptr %l65
  br label %bb38
bb38:
  %t114 = load ptr, ptr %l65, !tbaa !29
  %t116 = load i1, ptr %l7, !tbaa !21
  %t119 = getelementptr %"compiler/eval:global", ptr %t114, i32 0, i32 6
  store i1 %t116, ptr %t119, !tbaa !21
  %t120 = load ptr, ptr %l0, !tbaa !29
  store ptr %t120, ptr %l68, !tbaa !29
  %t121 = getelementptr %"compiler/eval:frame", ptr %l1, i32 0, i32 15
  %t122 = load i1, ptr %t121, !tbaa !21
  br i1 %t122, label %bb39, label %bb40
bb39:
  store i1 true, ptr %l70, !tbaa !21
  br label %bb41
bb40:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t126 = getelementptr %"compiler/eval:Machine", ptr %t124, i32 0, i32 23
  %t127 = load i1, ptr %t126, !tbaa !21
  store i1 %t127, ptr %l70, !tbaa !21
  br label %bb41
bb41:
  %t129 = load i1, ptr %l70, !tbaa !21
  %t130 = load ptr, ptr %l68, !tbaa !29
  %t131 = getelementptr %"compiler/eval:Machine", ptr %t130, i32 0, i32 23
  store i1 %t129, ptr %t131, !tbaa !21
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t133 = getelementptr %"compiler/eval:frame", ptr %l1, i32 0, i32 14
  %t134 = load i64, ptr %t133, !tbaa !24
  %t137 = getelementptr %"compiler/eval:Machine", ptr %t132, i32 0, i32 73
  store i64 %t134, ptr %t137, !tbaa !24
  br label %bb90
bb42:
  %t138 = load i64, ptr %l2, !tbaa !24
  %t139 = load i64, ptr @G_2ecompiler_2feval_2erTask, !tbaa !24
  %t142 = icmp eq i64 %t138, %t139
  br i1 %t142, label %bb43, label %bb44
bb43:
  br label %bb45
bb44:
  br label %bb80
bb45:
  %t144 = getelementptr %"compiler/eval:frame", ptr %l1, i32 0, i32 12
  %t145 = load i1, ptr %t144, !tbaa !21
  br i1 %t145, label %bb46, label %bb47
bb46:
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t148 = getelementptr %"compiler/eval:frame", ptr %l1, i32 0, i32 8
  %t149 = load i64, ptr %t148, !tbaa !24
  %t152 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eendsProgram(ptr %v0, ptr %t147, i64 %t149)
  store i1 %t152, ptr %l82
  br label %bb48
bb47:
  store i1 false, ptr %l79, !tbaa !21
  br label %bb49
bb48:
  %t153 = load i1, ptr %l82, !tbaa !21
  store i1 %t153, ptr %l79, !tbaa !21
  br label %bb49
bb49:
  %t154 = load i1, ptr %l79, !tbaa !21
  br i1 %t154, label %bb50, label %bb51
bb50:
  %t155 = load ptr, ptr %l0, !tbaa !29
  call void @llvm.memmove.p0.p0.i64(ptr %l84, ptr %l1, i64 136, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %t157, ptr %l84, i64 136, i1 false)
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2etaskEnded(ptr %v0, ptr %t155, ptr %t157)
  br label %bb52
bb51:
  br label %bb53
bb52:
  br label %ret
bb53:
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t160 = getelementptr %"compiler/eval:Machine", ptr %t158, i32 0, i32 88
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t160)
  br label %bb54
bb54:
  %t162 = load ptr, ptr %l0, !tbaa !29
  store ptr %t162, ptr %l87, !tbaa !29
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t165 = getelementptr %"compiler/eval:Machine", ptr %t163, i32 0, i32 91
  %t167 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %t165)
  %t168 = extractvalue { i32, i64 } %t167, 1
  %t169 = extractvalue { i32, i64 } %t167, 0
  store i32 %t169, ptr %l92
  %t170 = icmp ne i32 %t169, 0
  br i1 %t170, label %bb56, label %ok.171, !prof !99
ok.171:
  store i64 %t168, ptr %l91
  br label %bb55
bb55:
  %t172 = load i64, ptr %l91, !tbaa !24
  store i64 %t172, ptr %l88, !tbaa !24
  br label %bb58
bb56:
  br label %bb57
bb57:
  store i64 0, ptr %l88, !tbaa !24
  br label %bb58
bb58:
  %t173 = load i64, ptr %l88, !tbaa !24
  %t174 = load ptr, ptr %l87, !tbaa !29
  %t175 = getelementptr %"compiler/eval:Machine", ptr %t174, i32 0, i32 90
  store i64 %t173, ptr %t175, !tbaa !24
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t178 = getelementptr %"compiler/eval:Machine", ptr %t176, i32 0, i32 91
  %t180 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %t178)
  %t181 = extractvalue { i32, i64 } %t180, 1
  %t182 = extractvalue { i32, i64 } %t180, 0
  store i32 %t182, ptr %l97
  %t183 = icmp ne i32 %t182, 0
  br i1 %t183, label %bb60, label %ok.184, !prof !99
ok.184:
  store i64 %t181, ptr %l96
  br label %bb59
bb59:
  %t185 = load i64, ptr %l96, !tbaa !24
  store i64 %t185, ptr %l93, !tbaa !24
  br label %bb62
bb60:
  br label %bb61
bb61:
  store i64 0, ptr %l93, !tbaa !24
  br label %bb62
bb62:
  %t186 = load i64, ptr %l93, !tbaa !24
  store i64 %t186, ptr %l9, !tbaa !24
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t189 = getelementptr %"compiler/eval:Machine", ptr %t187, i32 0, i32 91
  %t191 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t189)
  store i64 %t191, ptr %l100
  br label %bb63
bb63:
  %t192 = load i64, ptr %l9, !tbaa !24
  %t193 = load i64, ptr %l100, !tbaa !24
  %t195 = sub i64 %t193, %t192
  store i64 %t195, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  %t197 = load i64, ptr %l9, !tbaa !24
  store i64 %t197, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t199 = load i64, ptr %l12, !tbaa !24
  %t200 = load i64, ptr %l11, !tbaa !24
  %t203 = icmp sgt i64 %t199, %t200
  br i1 %t203, label %bb64, label %bb65
bb64:
  %t205 = load i64, ptr %l13, !tbaa !24
  %t207 = icmp sgt i64 %t205, 0
  br i1 %t207, label %bb66, label %bb67
bb65:
  store i64 0, ptr %l107, !tbaa !24
  br label %bb69
bb66:
  %t209 = load i64, ptr %l12, !tbaa !24
  %t210 = load i64, ptr %l11, !tbaa !24
  %t213 = sub i64 %t209, %t210
  %t214 = load i64, ptr %l13, !tbaa !24
  %t217 = add i64 %t213, %t214
  %t219 = sub i64 %t217, 1
  %t220 = load i64, ptr %l13, !tbaa !24
  %t223 = sdiv i64 %t219, %t220
  store i64 %t223, ptr %l110, !tbaa !24
  br label %bb68
bb67:
  store i64 0, ptr %l110, !tbaa !24
  br label %bb68
bb68:
  %t225 = load i64, ptr %l110, !tbaa !24
  store i64 %t225, ptr %l107, !tbaa !24
  br label %bb69
bb69:
  %t226 = load i64, ptr %l107, !tbaa !24
  store i64 %t226, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb70
bb70:
  %t227 = load i64, ptr %l15, !tbaa !24
  %t228 = load i64, ptr %l14, !tbaa !24
  %t231 = icmp slt i64 %t227, %t228
  %t233 = xor i1 %t231, true
  br i1 %t233, label %bb71, label %bb72
bb71:
  br label %bb77
bb72:
  br label %bb73
bb73:
  %t235 = load i64, ptr %l11, !tbaa !24
  %t236 = load i64, ptr %l15, !tbaa !24
  %t237 = load i64, ptr %l13, !tbaa !24
  %t240 = mul i64 %t236, %t237
  %t243 = add i64 %t235, %t240
  %t245 = load ptr, ptr %l0, !tbaa !29
  %t247 = getelementptr %"compiler/eval:Machine", ptr %t245, i32 0, i32 88
  store ptr %t247, ptr %l129, !tbaa !29
  %t248 = load ptr, ptr %l0, !tbaa !29
  %t250 = getelementptr %"compiler/eval:Machine", ptr %t248, i32 0, i32 91
  %t251 = load i64, ptr %l10, !tbaa !24
  %t255 = add i64 %t251, %t243
  %t258 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t250, i64 %t255)
  store i64 %t258, ptr %l135
  br label %bb74
bb74:
  %t259 = load ptr, ptr %l129, !tbaa !29
  %t260 = load i64, ptr %l135, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t259, i64 %t260)
  br label %bb75
bb75:
  br label %bb76
bb76:
  %t261 = load i64, ptr %l15, !tbaa !24
  %t263 = add i64 %t261, 1
  store i64 %t263, ptr %l15, !tbaa !24
  br label %bb70
bb77:
  %t265 = load ptr, ptr %l0, !tbaa !29
  %t267 = getelementptr %"compiler/eval:Machine", ptr %t265, i32 0, i32 91
  %t268 = load i64, ptr %l10, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eTruncate_3cI64_3e(ptr %v0, ptr %t267, i64 %t268)
  br label %bb78
bb78:
  %t271 = load ptr, ptr %l0, !tbaa !29
  call void @llvm.memmove.p0.p0.i64(ptr %l142, ptr %l1, i64 136, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %t273, ptr %l142, i64 136, i1 false)
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2etaskEnded(ptr %v0, ptr %t271, ptr %t273)
  br label %bb79
bb79:
  br label %bb90
bb80:
  %t274 = load i64, ptr %l2, !tbaa !24
  %t275 = load i64, ptr @G_2ecompiler_2feval_2erClause, !tbaa !24
  %t278 = icmp eq i64 %t274, %t275
  br i1 %t278, label %bb81, label %bb82
bb81:
  br label %bb83
bb82:
  br label %bb85
bb83:
  %t280 = load ptr, ptr %l0, !tbaa !29
  %t281 = getelementptr %"compiler/eval:frame", ptr %l1, i32 0, i32 8
  %t282 = load i64, ptr %t281, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2efreeTask(ptr %v0, ptr %t280, i64 %t282)
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
  br label %bb90
bb89:
  call void @__olang_check_failed(ptr @olang_loc_cf5f350672f7c138_c751ad896f9a9f0c)
  unreachable
bb90:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escopeOf(ptr %v0, ptr %a0, i64 %a1, { i64, [1 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, [1 x i64] }
  %l3 = alloca %"compiler/eval:frame"
  %l4 = alloca i32
  %l5 = alloca i64
  %l6 = alloca i32
  %l8 = alloca { i64, ptr }
  %l10 = alloca %"compiler/eval:frame"
  %l11 = alloca i64
  %l16 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l44 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, [1 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 58
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l8, !tbaa !27
  %t5 = load i64, ptr %l1, !tbaa !24
  %t7 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !27
  %t9 = getelementptr %"compiler/eval:frame", ptr %t8, i64 %t5
  call void @llvm.memmove.p0.p0.i64(ptr %l10, ptr %t9, i64 136, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l3, ptr %l10, i64 136, i1 false)
  %t10 = load { i64, [1 x i64] }, ptr %l2
  %t12 = extractvalue { i64, [1 x i64] } %t10, 0
  %t13 = icmp eq i64 %t12, 0
  br i1 %t13, label %bb1, label %bb2
bb1:
  %t15 = getelementptr { i64, [1 x i64] }, ptr %l2, i32 0, i32 1
  %t16 = getelementptr { i32 }, ptr %t15, i32 0, i32 0
  %t17 = load i32, ptr %t16
  store i32 %t17, ptr %l4, !tbaa !23
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/eval:Machine", ptr %t19, i32 0, i32 60
  %t22 = load { i64, ptr }, ptr %t21, !tbaa !27
  store { i64, ptr } %t22, ptr %l16, !tbaa !27
  %t23 = getelementptr %"compiler/eval:frame", ptr %l3, i32 0, i32 4
  %t24 = load i64, ptr %t23, !tbaa !24
  %t25 = load i32, ptr %l4, !tbaa !23
  %t27 = sext i32 %t25 to i64
  %t30 = add i64 %t24, %t27
  %t32 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !27
  %t34 = getelementptr i64, ptr %t33, i64 %t30
  %t35 = load i64, ptr %t34, !tbaa !34
  store i64 %t35, ptr %l11, !tbaa !24
  br label %bb22
bb4:
  %t37 = load { i64, [1 x i64] }, ptr %l2
  %t39 = extractvalue { i64, [1 x i64] } %t37, 0
  %t40 = icmp eq i64 %t39, 1
  br i1 %t40, label %bb5, label %bb6
bb5:
  %t42 = getelementptr { i64, [1 x i64] }, ptr %l2, i32 0, i32 1
  %t43 = getelementptr { i64 }, ptr %t42, i32 0, i32 0
  %t44 = load i64, ptr %t43
  store i64 %t44, ptr %l5, !tbaa !24
  br label %bb7
bb6:
  br label %bb8
bb7:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/eval:Machine", ptr %t46, i32 0, i32 60
  %t49 = load { i64, ptr }, ptr %t48, !tbaa !27
  store { i64, ptr } %t49, ptr %l26, !tbaa !27
  %t50 = getelementptr %"compiler/eval:frame", ptr %l3, i32 0, i32 5
  %t51 = load i64, ptr %t50, !tbaa !24
  %t52 = load i64, ptr %l5, !tbaa !24
  %t55 = add i64 %t51, %t52
  %t57 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !27
  %t59 = getelementptr i64, ptr %t58, i64 %t55
  %t60 = load i64, ptr %t59, !tbaa !34
  store i64 %t60, ptr %l11, !tbaa !24
  br label %bb22
bb8:
  %t62 = load { i64, [1 x i64] }, ptr %l2
  %t64 = extractvalue { i64, [1 x i64] } %t62, 0
  %t65 = icmp eq i64 %t64, 2
  br i1 %t65, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/eval:Machine", ptr %t67, i32 0, i32 70
  %t70 = load i64, ptr %t69, !tbaa !24
  store i64 %t70, ptr %l11, !tbaa !24
  br label %bb22
bb12:
  %t72 = load { i64, [1 x i64] }, ptr %l2
  %t74 = extractvalue { i64, [1 x i64] } %t72, 0
  %t75 = icmp eq i64 %t74, 3
  br i1 %t75, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  %t77 = getelementptr %"compiler/eval:frame", ptr %l3, i32 0, i32 6
  %t78 = load i64, ptr %t77, !tbaa !24
  store i64 %t78, ptr %l11, !tbaa !24
  br label %bb22
bb16:
  %t80 = load { i64, [1 x i64] }, ptr %l2
  %t82 = extractvalue { i64, [1 x i64] } %t80, 0
  %t83 = icmp eq i64 %t82, 4
  br i1 %t83, label %bb17, label %bb18
bb17:
  %t85 = getelementptr { i64, [1 x i64] }, ptr %l2, i32 0, i32 1
  %t86 = getelementptr { i32 }, ptr %t85, i32 0, i32 0
  %t87 = load i32, ptr %t86
  store i32 %t87, ptr %l6, !tbaa !23
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = load i64, ptr %l1, !tbaa !24
  %t91 = load i32, ptr %l6, !tbaa !23
  %t95 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eheldScope(ptr %v0, ptr %t89, i64 %t90, i32 %t91)
  store i64 %t95, ptr %l44
  br label %bb20
bb20:
  %t96 = load i64, ptr %l44, !tbaa !24
  store i64 %t96, ptr %l11, !tbaa !24
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_bcf45b1eafea1f9c_8e096368132121a8)
  unreachable
bb22:
  %t97 = load i64, ptr %l11, !tbaa !24
  store i64 %t97, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2esettle(ptr %v0, ptr %a0, i64 %a1, %"compiler/eval:Ptr" %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l6 = alloca i1
  %l9 = alloca i1
  %l11 = alloca i1
  %l17 = alloca %"compiler/eval:scope"
  %l24 = alloca i64
  %l27 = alloca i1
  %t22 = alloca %"compiler/eval:scope", align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp eq i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb4
bb2:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t6 = load i64, ptr %l1, !tbaa !24
  %t9 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elive(ptr %v0, ptr %t5, i64 %t6)
  store i1 %t9, ptr %l9
  br label %bb3
bb3:
  %t10 = load i1, ptr %l9, !tbaa !21
  %t11 = xor i1 %t10, true
  store i1 %t11, ptr %l6, !tbaa !21
  br label %bb4
bb4:
  %t13 = load i1, ptr %l6, !tbaa !21
  br i1 %t13, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb8
bb6:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/eval:Machine", ptr %t14, i32 0, i32 52
  %t17 = load i64, ptr %l1, !tbaa !24
  %t18 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t21 = and i64 %t17, %t18
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t22, ptr %v0, ptr %t16, i64 %t21)
  call void @llvm.memmove.p0.p0.i64(ptr %l17, ptr %t22, i64 152, i1 false)
  br label %bb7
bb7:
  %t25 = getelementptr %"compiler/eval:scope", ptr %l17, i32 0, i32 2
  %t26 = load i64, ptr %t25, !tbaa !24
  %t27 = load i64, ptr @G_2ecompiler_2feval_2esRegion, !tbaa !24
  %t30 = icmp ne i64 %t26, %t27
  store i1 %t30, ptr %l11, !tbaa !21
  br label %bb8
bb8:
  %t32 = load i1, ptr %l11, !tbaa !21
  br i1 %t32, label %bb9, label %bb10
bb9:
  br label %ret
bb10:
  br label %bb11
bb11:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t39 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eanchorRegion(ptr %v0, ptr %t33, %"compiler/eval:Ptr" %a2, i32 %a3)
  store i64 %t39, ptr %l24
  br label %bb12
bb12:
  %t40 = load i64, ptr %l1, !tbaa !24
  %t41 = load i64, ptr %l24, !tbaa !24
  %t43 = icmp eq i64 %t41, %t40
  br i1 %t43, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb15
bb14:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/eval:Machine", ptr %t45, i32 0, i32 22
  %t48 = load i1, ptr %t47, !tbaa !21
  store i1 %t48, ptr %l27, !tbaa !21
  br label %bb15
bb15:
  %t50 = load i1, ptr %l27, !tbaa !21
  br i1 %t50, label %bb16, label %bb17
bb16:
  br label %ret
bb17:
  br label %bb18
bb18:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecloseRegion(ptr %v0, ptr %t51, i64 %t52)
  br label %bb19
bb19:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2esettled(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l17 = alloca i64
  %l21 = alloca i1
  %l49 = alloca ptr
  %l50 = alloca i64
  %l52 = alloca i64
  %l56 = alloca { i64, ptr }
  %l58 = alloca ptr
  %l59 = alloca i64
  %l61 = alloca i64
  %l65 = alloca { i64, ptr }
  %l67 = alloca ptr
  %l68 = alloca i64
  %l70 = alloca i64
  %l74 = alloca { i64, ptr }
  %l81 = alloca i64
  %l84 = alloca i64
  %l103 = alloca { i64, ptr }
  %l105 = alloca { i64, ptr }
  %l109 = alloca { i64, ptr }
  %l111 = alloca { i64, ptr }
  %l115 = alloca { i64, ptr }
  %l117 = alloca { i64, ptr }
  %rv = alloca i1
  %t93 = alloca i64
  %t131 = alloca i64
  %t169 = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i32, ptr %l1, !tbaa !23
  %t8 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLayoutState(ptr %v0, ptr %t4, i32 %t5)
  store i64 %t8, ptr %l17
  br label %bb1
bb1:
  %t9 = load i64, ptr %l17, !tbaa !24
  store i64 %t9, ptr %l2, !tbaa !24
  %t10 = load i64, ptr %l2, !tbaa !24
  %t11 = load i64, ptr @G_2ecompiler_2ftypes_2eLaidOut, !tbaa !24
  %t14 = icmp ne i64 %t10, %t11
  br i1 %t14, label %bb2, label %bb3
bb2:
  %t16 = load i64, ptr %l2, !tbaa !24
  %t17 = load i64, ptr @G_2ecompiler_2ftypes_2eNoLayout, !tbaa !24
  %t20 = icmp ne i64 %t16, %t17
  store i1 %t20, ptr %l21, !tbaa !21
  br label %bb4
bb3:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb4
bb4:
  %t22 = load i1, ptr %l21, !tbaa !21
  br i1 %t22, label %bb5, label %bb6
bb5:
  store i1 false, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t24 = load i32, ptr %l1, !tbaa !23
  %t26 = sext i32 %t24 to i64
  store i64 %t26, ptr %l3, !tbaa !24
  %t28 = load i64, ptr %l3, !tbaa !24
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/eval:Machine", ptr %t29, i32 0, i32 27
  %t32 = load { i64, ptr }, ptr %t31, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t32, 0
  %t37 = icmp sge i64 %t28, %t34
  br i1 %t37, label %bb8, label %bb9
bb8:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/eval:Machine", ptr %t39, i32 0, i32 27
  %t42 = load { i64, ptr }, ptr %t41, !tbaa !27
  %t44 = extractvalue { i64, ptr } %t42, 0
  %t46 = mul i64 2, %t44
  store i64 %t46, ptr %l4, !tbaa !24
  br label %bb10
bb9:
  br label %bb52
bb10:
  %t48 = load i64, ptr %l4, !tbaa !24
  %t49 = load i64, ptr %l3, !tbaa !24
  %t52 = icmp sle i64 %t48, %t49
  %t54 = xor i1 %t52, true
  br i1 %t54, label %bb11, label %bb12
bb11:
  br label %bb15
bb12:
  br label %bb13
bb13:
  %t56 = load i64, ptr %l4, !tbaa !24
  %t58 = mul i64 %t56, 2
  store i64 %t58, ptr %l4, !tbaa !24
  br label %bb14
bb14:
  br label %bb10
bb15:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/eval:Machine", ptr %t60, i32 0, i32 27
  %t63 = load { i64, ptr }, ptr %t62, !tbaa !27
  store { i64, ptr } %t63, ptr %l5, !tbaa !27
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/eval:Machine", ptr %t65, i32 0, i32 28
  %t68 = load { i64, ptr }, ptr %t67, !tbaa !27
  store { i64, ptr } %t68, ptr %l6, !tbaa !27
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/eval:Machine", ptr %t70, i32 0, i32 29
  %t73 = load { i64, ptr }, ptr %t72, !tbaa !27
  store { i64, ptr } %t73, ptr %l7, !tbaa !27
  %t75 = load ptr, ptr %l0, !tbaa !29
  store ptr %t75, ptr %l49, !tbaa !29
  %t76 = ptrtoint ptr %v0 to i64
  store i64 %t76, ptr %l50, !tbaa !24
  %t77 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e27
  br i1 %t77, label %bb16, label %bb17
bb16:
  %t79 = call ptr @__olang_region_make(ptr %v0)
  %t80 = ptrtoint ptr %t79 to i64
  store i64 %t80, ptr %l50, !tbaa !24
  br label %bb17
bb17:
  %t81 = load i64, ptr %l4, !tbaa !24
  store i64 %t81, ptr %l52, !tbaa !24
  %t82 = load i64, ptr %l52, !tbaa !24
  %t83 = icmp sge i64 %t82, 0
  br i1 %t83, label %bb18, label %bb19
bb18:
  %t85 = load i64, ptr %l52, !tbaa !24
  %t86 = icmp sle i64 %t85, 1152921504606846975
  br i1 %t86, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_a19345797ce3092f_df897154cd0b0613)
  unreachable
bb20:
  %t88 = load i64, ptr %l52, !tbaa !24
  %t89 = mul i64 %t88, 8
  %t90 = load i64, ptr %l50
  %t91 = inttoptr i64 %t90 to ptr
  %t92 = call ptr @__olang_scope_alloc(ptr %t91, i64 %t89)
  store i64 0, ptr %t93
  br label %fill.94
fill.94:
  %t97 = load i64, ptr %t93
  %t98 = icmp slt i64 %t97, %t88
  br i1 %t98, label %fillb.95, label %filld.96
fillb.95:
  %t99 = getelementptr i64, ptr %t92, i64 %t97
  store i64 -1, ptr %t99
  %t100 = add i64 %t97, 1
  store i64 %t100, ptr %t93
  br label %fill.94
filld.96:
  %t101 = insertvalue { i64, ptr } undef, i64 %t88, 0
  %t102 = insertvalue { i64, ptr } %t101, ptr %t92, 1
  %t103 = load ptr, ptr %l49, !tbaa !29
  %t104 = getelementptr %"compiler/eval:Machine", ptr %t103, i32 0, i32 27
  %t105 = load { i64, ptr }, ptr %t104, !tbaa !27
  store { i64, ptr } %t105, ptr %l56, !tbaa !27
  %t107 = load ptr, ptr %l49, !tbaa !29
  %t108 = getelementptr %"compiler/eval:Machine", ptr %t107, i32 0, i32 27
  store { i64, ptr } %t102, ptr %t108, !tbaa !27
  %t109 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e27
  br i1 %t109, label %bb22, label %bb23
bb21:
  call void @__olang_check_failed(ptr @olang_loc_a19345797ce3092f_df897154cd0b0613)
  unreachable
bb22:
  %t111 = load { i64, ptr }, ptr %l56
  %t112 = extractvalue { i64, ptr } %t111, 1
  call void @__olang_region_release(ptr %t112)
  store { i64, ptr } zeroinitializer, ptr %l56
  br label %bb23
bb23:
  %t113 = load ptr, ptr %l0, !tbaa !29
  store ptr %t113, ptr %l58, !tbaa !29
  %t114 = ptrtoint ptr %v0 to i64
  store i64 %t114, ptr %l59, !tbaa !24
  %t115 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e28
  br i1 %t115, label %bb24, label %bb25
bb24:
  %t117 = call ptr @__olang_region_make(ptr %v0)
  %t118 = ptrtoint ptr %t117 to i64
  store i64 %t118, ptr %l59, !tbaa !24
  br label %bb25
bb25:
  %t119 = load i64, ptr %l4, !tbaa !24
  store i64 %t119, ptr %l61, !tbaa !24
  %t120 = load i64, ptr %l61, !tbaa !24
  %t121 = icmp sge i64 %t120, 0
  br i1 %t121, label %bb26, label %bb27
bb26:
  %t123 = load i64, ptr %l61, !tbaa !24
  %t124 = icmp sle i64 %t123, 1152921504606846975
  br i1 %t124, label %bb28, label %bb29
bb27:
  call void @__olang_check_failed(ptr @olang_loc_8629e3295afcf15a_58f771f6fdbc30de)
  unreachable
bb28:
  %t126 = load i64, ptr %l61, !tbaa !24
  %t127 = mul i64 %t126, 8
  %t128 = load i64, ptr %l59
  %t129 = inttoptr i64 %t128 to ptr
  %t130 = call ptr @__olang_scope_alloc(ptr %t129, i64 %t127)
  store i64 0, ptr %t131
  br label %fill.132
fill.132:
  %t135 = load i64, ptr %t131
  %t136 = icmp slt i64 %t135, %t126
  br i1 %t136, label %fillb.133, label %filld.134
fillb.133:
  %t137 = getelementptr i64, ptr %t130, i64 %t135
  store i64 -1, ptr %t137
  %t138 = add i64 %t135, 1
  store i64 %t138, ptr %t131
  br label %fill.132
filld.134:
  %t139 = insertvalue { i64, ptr } undef, i64 %t126, 0
  %t140 = insertvalue { i64, ptr } %t139, ptr %t130, 1
  %t141 = load ptr, ptr %l58, !tbaa !29
  %t142 = getelementptr %"compiler/eval:Machine", ptr %t141, i32 0, i32 28
  %t143 = load { i64, ptr }, ptr %t142, !tbaa !27
  store { i64, ptr } %t143, ptr %l65, !tbaa !27
  %t145 = load ptr, ptr %l58, !tbaa !29
  %t146 = getelementptr %"compiler/eval:Machine", ptr %t145, i32 0, i32 28
  store { i64, ptr } %t140, ptr %t146, !tbaa !27
  %t147 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e28
  br i1 %t147, label %bb30, label %bb31
bb29:
  call void @__olang_check_failed(ptr @olang_loc_8629e3295afcf15a_58f771f6fdbc30de)
  unreachable
bb30:
  %t149 = load { i64, ptr }, ptr %l65
  %t150 = extractvalue { i64, ptr } %t149, 1
  call void @__olang_region_release(ptr %t150)
  store { i64, ptr } zeroinitializer, ptr %l65
  br label %bb31
bb31:
  %t151 = load ptr, ptr %l0, !tbaa !29
  store ptr %t151, ptr %l67, !tbaa !29
  %t152 = ptrtoint ptr %v0 to i64
  store i64 %t152, ptr %l68, !tbaa !24
  %t153 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e29
  br i1 %t153, label %bb32, label %bb33
bb32:
  %t155 = call ptr @__olang_region_make(ptr %v0)
  %t156 = ptrtoint ptr %t155 to i64
  store i64 %t156, ptr %l68, !tbaa !24
  br label %bb33
bb33:
  %t157 = load i64, ptr %l4, !tbaa !24
  store i64 %t157, ptr %l70, !tbaa !24
  %t158 = load i64, ptr %l70, !tbaa !24
  %t159 = icmp sge i64 %t158, 0
  br i1 %t159, label %bb34, label %bb35
bb34:
  %t161 = load i64, ptr %l70, !tbaa !24
  %t162 = icmp sle i64 %t161, 1152921504606846975
  br i1 %t162, label %bb36, label %bb37
bb35:
  call void @__olang_check_failed(ptr @olang_loc_985556dab320f6d9_efe4e1681fb7461d)
  unreachable
bb36:
  %t164 = load i64, ptr %l70, !tbaa !24
  %t165 = mul i64 %t164, 8
  %t166 = load i64, ptr %l68
  %t167 = inttoptr i64 %t166 to ptr
  %t168 = call ptr @__olang_scope_alloc(ptr %t167, i64 %t165)
  store i64 0, ptr %t169
  br label %fill.170
fill.170:
  %t173 = load i64, ptr %t169
  %t174 = icmp slt i64 %t173, %t164
  br i1 %t174, label %fillb.171, label %filld.172
fillb.171:
  %t175 = getelementptr i64, ptr %t168, i64 %t173
  store i64 -1, ptr %t175
  %t176 = add i64 %t173, 1
  store i64 %t176, ptr %t169
  br label %fill.170
filld.172:
  %t177 = insertvalue { i64, ptr } undef, i64 %t164, 0
  %t178 = insertvalue { i64, ptr } %t177, ptr %t168, 1
  %t179 = load ptr, ptr %l67, !tbaa !29
  %t180 = getelementptr %"compiler/eval:Machine", ptr %t179, i32 0, i32 29
  %t181 = load { i64, ptr }, ptr %t180, !tbaa !27
  store { i64, ptr } %t181, ptr %l74, !tbaa !27
  %t183 = load ptr, ptr %l67, !tbaa !29
  %t184 = getelementptr %"compiler/eval:Machine", ptr %t183, i32 0, i32 29
  store { i64, ptr } %t178, ptr %t184, !tbaa !27
  %t185 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e29
  br i1 %t185, label %bb38, label %bb39
bb37:
  call void @__olang_check_failed(ptr @olang_loc_985556dab320f6d9_efe4e1681fb7461d)
  unreachable
bb38:
  %t187 = load { i64, ptr }, ptr %l74
  %t188 = extractvalue { i64, ptr } %t187, 1
  call void @__olang_region_release(ptr %t188)
  store { i64, ptr } zeroinitializer, ptr %l74
  br label %bb39
bb39:
  store i64 0, ptr %l8, !tbaa !24
  %t189 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t191 = extractvalue { i64, ptr } %t189, 0
  store i64 %t191, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t193 = load i64, ptr %l9, !tbaa !24
  %t194 = load i64, ptr %l8, !tbaa !24
  %t197 = icmp sgt i64 %t193, %t194
  br i1 %t197, label %bb40, label %bb41
bb40:
  %t199 = load i64, ptr %l10, !tbaa !24
  %t201 = icmp sgt i64 %t199, 0
  br i1 %t201, label %bb42, label %bb43
bb41:
  store i64 0, ptr %l81, !tbaa !24
  br label %bb45
bb42:
  %t203 = load i64, ptr %l9, !tbaa !24
  %t204 = load i64, ptr %l8, !tbaa !24
  %t207 = sub i64 %t203, %t204
  %t208 = load i64, ptr %l10, !tbaa !24
  %t211 = add i64 %t207, %t208
  %t213 = sub i64 %t211, 1
  %t214 = load i64, ptr %l10, !tbaa !24
  %t217 = sdiv i64 %t213, %t214
  store i64 %t217, ptr %l84, !tbaa !24
  br label %bb44
bb43:
  store i64 0, ptr %l84, !tbaa !24
  br label %bb44
bb44:
  %t219 = load i64, ptr %l84, !tbaa !24
  store i64 %t219, ptr %l81, !tbaa !24
  br label %bb45
bb45:
  %t220 = load i64, ptr %l81, !tbaa !24
  store i64 %t220, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb46
bb46:
  %t221 = load i64, ptr %l12, !tbaa !24
  %t222 = load i64, ptr %l11, !tbaa !24
  %t225 = icmp slt i64 %t221, %t222
  %t227 = xor i1 %t225, true
  br i1 %t227, label %bb47, label %bb48
bb47:
  br label %bb51
bb48:
  br label %bb49
bb49:
  %t229 = load i64, ptr %l8, !tbaa !24
  %t230 = load i64, ptr %l12, !tbaa !24
  %t231 = load i64, ptr %l10, !tbaa !24
  %t234 = mul i64 %t230, %t231
  %t237 = add i64 %t229, %t234
  store i64 %t237, ptr %l13, !tbaa !24
  %t239 = load ptr, ptr %l0, !tbaa !29
  %t241 = getelementptr %"compiler/eval:Machine", ptr %t239, i32 0, i32 27
  %t242 = load { i64, ptr }, ptr %t241, !tbaa !27
  store { i64, ptr } %t242, ptr %l103, !tbaa !27
  %t243 = load i64, ptr %l13, !tbaa !24
  %t244 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t244, ptr %l105, !tbaa !27
  %t245 = load i64, ptr %l13, !tbaa !24
  %t247 = getelementptr { i64, ptr }, ptr %l105, i32 0, i32 1
  %t248 = load ptr, ptr %t247, !tbaa !27
  %t249 = getelementptr i64, ptr %t248, i64 %t245
  %t250 = load i64, ptr %t249, !tbaa !34
  %t253 = getelementptr { i64, ptr }, ptr %l103, i32 0, i32 1
  %t254 = load ptr, ptr %t253, !tbaa !27
  %t255 = getelementptr i64, ptr %t254, i64 %t243
  store i64 %t250, ptr %t255, !tbaa !34
  %t256 = load ptr, ptr %l0, !tbaa !29
  %t258 = getelementptr %"compiler/eval:Machine", ptr %t256, i32 0, i32 28
  %t259 = load { i64, ptr }, ptr %t258, !tbaa !27
  store { i64, ptr } %t259, ptr %l109, !tbaa !27
  %t260 = load i64, ptr %l13, !tbaa !24
  %t261 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t261, ptr %l111, !tbaa !27
  %t262 = load i64, ptr %l13, !tbaa !24
  %t264 = getelementptr { i64, ptr }, ptr %l111, i32 0, i32 1
  %t265 = load ptr, ptr %t264, !tbaa !27
  %t266 = getelementptr i64, ptr %t265, i64 %t262
  %t267 = load i64, ptr %t266, !tbaa !34
  %t270 = getelementptr { i64, ptr }, ptr %l109, i32 0, i32 1
  %t271 = load ptr, ptr %t270, !tbaa !27
  %t272 = getelementptr i64, ptr %t271, i64 %t260
  store i64 %t267, ptr %t272, !tbaa !34
  %t273 = load ptr, ptr %l0, !tbaa !29
  %t275 = getelementptr %"compiler/eval:Machine", ptr %t273, i32 0, i32 29
  %t276 = load { i64, ptr }, ptr %t275, !tbaa !27
  store { i64, ptr } %t276, ptr %l115, !tbaa !27
  %t277 = load i64, ptr %l13, !tbaa !24
  %t278 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t278, ptr %l117, !tbaa !27
  %t279 = load i64, ptr %l13, !tbaa !24
  %t281 = getelementptr { i64, ptr }, ptr %l117, i32 0, i32 1
  %t282 = load ptr, ptr %t281, !tbaa !27
  %t283 = getelementptr i64, ptr %t282, i64 %t279
  %t284 = load i64, ptr %t283, !tbaa !34
  %t287 = getelementptr { i64, ptr }, ptr %l115, i32 0, i32 1
  %t288 = load ptr, ptr %t287, !tbaa !27
  %t289 = getelementptr i64, ptr %t288, i64 %t277
  store i64 %t284, ptr %t289, !tbaa !34
  br label %bb50
bb50:
  %t290 = load i64, ptr %l12, !tbaa !24
  %t292 = add i64 %t290, 1
  store i64 %t292, ptr %l12, !tbaa !24
  br label %bb46
bb51:
  br label %bb52
bb52:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i64
  %l11 = alloca i1
  %l13 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l23 = alloca i64
  %l26 = alloca i1
  %l28 = alloca { i64, ptr }
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l1, !tbaa !23
  %t3 = sext i32 %t1 to i64
  store i64 %t3, ptr %l2, !tbaa !24
  %t5 = load i64, ptr %l2, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/eval:Machine", ptr %t6, i32 0, i32 28
  %t9 = load { i64, ptr }, ptr %t8, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 0
  %t14 = icmp slt i64 %t5, %t11
  br i1 %t14, label %bb1, label %bb2
bb1:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/eval:Machine", ptr %t16, i32 0, i32 28
  %t19 = load { i64, ptr }, ptr %t18, !tbaa !27
  store { i64, ptr } %t19, ptr %l13, !tbaa !27
  %t20 = load i64, ptr %l2, !tbaa !24
  %t22 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = getelementptr i64, ptr %t23, i64 %t20
  %t25 = load i64, ptr %t24, !tbaa !34
  %t27 = icmp sge i64 %t25, 0
  store i1 %t27, ptr %l11, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb3
bb3:
  %t29 = load i1, ptr %l11, !tbaa !21
  br i1 %t29, label %bb4, label %bb5
bb4:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/eval:Machine", ptr %t30, i32 0, i32 28
  %t33 = load { i64, ptr }, ptr %t32, !tbaa !27
  store { i64, ptr } %t33, ptr %l18, !tbaa !27
  %t34 = load i64, ptr %l2, !tbaa !24
  %t36 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !27
  %t38 = getelementptr i64, ptr %t37, i64 %t34
  %t39 = load i64, ptr %t38, !tbaa !34
  store i64 %t39, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load i32, ptr %l1, !tbaa !23
  %t45 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshapeOf(ptr %v0, ptr %t41, i32 %t42)
  store i64 %t45, ptr %l23
  br label %bb7
bb7:
  %t46 = load i64, ptr %l23, !tbaa !24
  store i64 %t46, ptr %l3, !tbaa !24
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load i32, ptr %l1, !tbaa !23
  %t51 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2esettled(ptr %v0, ptr %t47, i32 %t48)
  store i1 %t51, ptr %l26
  br label %bb8
bb8:
  %t52 = load i1, ptr %l26, !tbaa !21
  br i1 %t52, label %bb9, label %bb10
bb9:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/eval:Machine", ptr %t53, i32 0, i32 28
  %t56 = load { i64, ptr }, ptr %t55, !tbaa !27
  store { i64, ptr } %t56, ptr %l28, !tbaa !27
  %t57 = load i64, ptr %l2, !tbaa !24
  %t58 = load i64, ptr %l3, !tbaa !24
  %t61 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !27
  %t63 = getelementptr i64, ptr %t62, i64 %t57
  store i64 %t58, ptr %t63, !tbaa !34
  br label %bb11
bb10:
  br label %bb11
bb11:
  %t64 = load i64, ptr %l3, !tbaa !24
  store i64 %t64, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2estartTask(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l6 = alloca %"compiler/eval:task"
  %l7 = alloca ptr
  %l8 = alloca %"compiler/mir:Task"
  %l9 = alloca { { i64, ptr }, i64 }
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca %"compiler/eval:Ptr"
  %l17 = alloca { i64, [7 x i64] }
  %l18 = alloca { i64, [2 x i64] }
  %l19 = alloca %"compiler/eval:Ptr"
  %l20 = alloca %"compiler/eval:Ptr"
  %l21 = alloca i64
  %l22 = alloca ptr
  %l23 = alloca i64
  %l25 = alloca ptr
  %l26 = alloca i32
  %l27 = alloca i32
  %l28 = alloca i32
  %l29 = alloca i32
  %l30 = alloca i32
  %l31 = alloca i32
  %l32 = alloca i32
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca ptr
  %l36 = alloca i64
  %l38 = alloca i64
  %l39 = alloca i64
  %l40 = alloca i64
  %l41 = alloca i64
  %l42 = alloca i64
  %l43 = alloca i64
  %l47 = alloca i64
  %l51 = alloca ptr
  %l57 = alloca %"compiler/eval:task"
  %l61 = alloca ptr
  %l65 = alloca %"compiler/mir:Task"
  %l70 = alloca { { i64, ptr }, i64 }
  %l84 = alloca i64
  %l88 = alloca i64
  %l89 = alloca i32
  %l103 = alloca %"compiler/eval:Ptr"
  %l106 = alloca %"compiler/eval:Ptr"
  %l107 = alloca ptr
  %l111 = alloca %"compiler/eval:Ptr"
  %l112 = alloca %"compiler/eval:Ptr"
  %l115 = alloca i1
  %l117 = alloca { i64, ptr }
  %l124 = alloca i1
  %l126 = alloca { i64, ptr }
  %l132 = alloca i64
  %l134 = alloca ptr
  %l138 = alloca { i64, ptr }
  %l143 = alloca { i64, [2 x i64] }
  %l144 = alloca i64
  %l145 = alloca i32
  %l154 = alloca i64
  %l159 = alloca i64
  %l161 = alloca i64
  %l166 = alloca i64
  %l173 = alloca ptr
  %l176 = alloca i64
  %l187 = alloca ptr
  %l192 = alloca i32
  %l195 = alloca i32
  %l214 = alloca i64
  %l217 = alloca i64
  %l223 = alloca i32
  %l224 = alloca ptr
  %l228 = alloca %"compiler/eval:Ptr"
  %l232 = alloca %"compiler/eval:Ptr"
  %l233 = alloca ptr
  %l238 = alloca %"compiler/mir:Local"
  %l240 = alloca i64
  %l255 = alloca i64
  %l257 = alloca i64
  %l262 = alloca { i64, [1 x i64] }
  %l273 = alloca i64
  %l276 = alloca i64
  %l295 = alloca { i64, ptr }
  %l297 = alloca { i64, ptr }
  %l301 = alloca i64
  %l305 = alloca i64
  %l306 = alloca ptr
  %l312 = alloca %"compiler/eval:Ptr"
  %l313 = alloca i64
  %l317 = alloca { i64, [1 x i64] }
  %l320 = alloca i64
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s20 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l2, !tbaa !24
  store i64 %t1, ptr %l3, !tbaa !24
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/eval:Machine", ptr %t3, i32 0, i32 12
  %t7 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t5)
  store i64 %t7, ptr %l47
  br label %bb1
bb1:
  %t8 = load i64, ptr %l47, !tbaa !24
  store i64 %t8, ptr %l4, !tbaa !24
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/eval:Machine", ptr %t9, i32 0, i32 56
  %t12 = load i64, ptr %l3, !tbaa !24
  %t15 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3atask_3e_2eRefMut_3ccompiler_2feval_3atask_3e(ptr %v0, ptr %v0, ptr %t11, i64 %t12)
  store ptr %t15, ptr %l51
  br label %bb2
bb2:
  %t16 = load ptr, ptr %l51, !tbaa !29
  %t18 = load i64, ptr %l4, !tbaa !24
  %t21 = getelementptr %"compiler/eval:task", ptr %t16, i32 0, i32 4
  store i64 %t18, ptr %t21, !tbaa !24
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/eval:Machine", ptr %t22, i32 0, i32 56
  %t25 = load i64, ptr %l2, !tbaa !24
  %t28 = call %"compiler/eval:task" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3atask_3e_2eAt_3ccompiler_2feval_3atask_3e(ptr %v0, ptr %t24, i64 %t25)
  store %"compiler/eval:task" %t28, ptr %l57
  br label %bb3
bb3:
  %t29 = load %"compiler/eval:task", ptr %l57
  store %"compiler/eval:task" %t29, ptr %l6
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/eval:Machine", ptr %t30, i32 0, i32 25
  %t33 = getelementptr %"compiler/eval:task", ptr %l6, i32 0, i32 0
  %t34 = load i64, ptr %t33, !tbaa !24
  %t37 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %v0, ptr %t32, i64 %t34)
  store ptr %t37, ptr %l61
  br label %bb4
bb4:
  %t38 = load ptr, ptr %l61, !tbaa !29
  store ptr %t38, ptr %l7, !tbaa !29
  %t39 = load ptr, ptr %l7, !tbaa !29
  %t41 = getelementptr %"compiler/mir:Fn", ptr %t39, i32 0, i32 16
  %t42 = getelementptr %"compiler/eval:task", ptr %l6, i32 0, i32 1
  %t43 = load i64, ptr %t42, !tbaa !24
  %t46 = call %"compiler/mir:Task" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTask_3e_2eAt_3ccompiler_2fmir_3aTask_3e(ptr %v0, ptr %t41, i64 %t43)
  store %"compiler/mir:Task" %t46, ptr %l65
  br label %bb5
bb5:
  %t47 = load %"compiler/mir:Task", ptr %l65
  store %"compiler/mir:Task" %t47, ptr %l8
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load ptr, ptr %l7, !tbaa !29
  %t50 = load %"compiler/mir:Task", ptr %l8
  %t56 = call { { i64, ptr }, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2etaskLayout(ptr %v0, ptr %v0, ptr %s0, ptr %t48, ptr %t49, %"compiler/mir:Task" %t50, i64 %a1)
  store { { i64, ptr }, i64 } %t56, ptr %l70
  br label %bb6
bb6:
  %t57 = load { { i64, ptr }, i64 }, ptr %l70
  store { { i64, ptr }, i64 } %t57, ptr %l9
  %t58 = getelementptr { { i64, ptr }, i64 }, ptr %l9, i32 0, i32 0
  %t59 = load { i64, ptr }, ptr %t58, !tbaa !27
  store { i64, ptr } %t59, ptr %l10, !tbaa !27
  %t61 = getelementptr { { i64, ptr }, i64 }, ptr %l9, i32 0, i32 1
  %t62 = load i64, ptr %t61, !tbaa !24
  store i64 %t62, ptr %l11, !tbaa !24
  %t64 = getelementptr %"compiler/mir:Task", ptr %l8, i32 0, i32 3
  %t65 = getelementptr %"compiler/mir:Range", ptr %t64, i32 0, i32 1
  %t66 = load i32, ptr %t65, !tbaa !23
  %t68 = sext i32 %t66 to i64
  store i64 %t68, ptr %l12, !tbaa !24
  %t70 = getelementptr %"compiler/mir:Task", ptr %l8, i32 0, i32 4
  %t71 = getelementptr %"compiler/mir:Range", ptr %t70, i32 0, i32 1
  %t72 = load i32, ptr %t71, !tbaa !23
  %t74 = sext i32 %t72 to i64
  store i64 %t74, ptr %l13, !tbaa !24
  %t76 = getelementptr %"compiler/mir:Task", ptr %l8, i32 0, i32 2
  %t77 = getelementptr %"compiler/mir:Range", ptr %t76, i32 0, i32 1
  %t78 = load i32, ptr %t77, !tbaa !23
  %t80 = sext i32 %t78 to i64
  store i64 %t80, ptr %l14, !tbaa !24
  store i64 -1, ptr %l15, !tbaa !24
  %t82 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  store %"compiler/eval:Ptr" %t82, ptr %l16
  %t84 = getelementptr %"compiler/mir:Task", ptr %l8, i32 0, i32 0
  %t85 = load { i64, [7 x i64] }, ptr %t84
  store { i64, [7 x i64] } %t85, ptr %l17
  %t87 = load { i64, [7 x i64] }, ptr %l17
  %t89 = extractvalue { i64, [7 x i64] } %t87, 0
  %t90 = icmp eq i64 %t89, 0
  br i1 %t90, label %bb7, label %bb8
bb7:
  %t92 = getelementptr { i64, [7 x i64] }, ptr %l17, i32 0, i32 1
  %t93 = getelementptr { { i64, [2 x i64] }, i32 }, ptr %t92, i32 0, i32 0
  %t94 = load { i64, [2 x i64] }, ptr %t93
  store { i64, [2 x i64] } %t94, ptr %l18
  br label %bb9
bb8:
  br label %bb14
bb9:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/eval:Machine", ptr %t96, i32 0, i32 30
  %t99 = load { i64, [2 x i64] }, ptr %l18
  %t102 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20I64_3e_2eG_H6ffe2eb17daa971b2c9d564ad72358b1(ptr %v0, ptr %t98, { i64, [2 x i64] } %t99)
  %t103 = extractvalue { i32, i64 } %t102, 1
  %t104 = extractvalue { i32, i64 } %t102, 0
  store i32 %t104, ptr %l89
  %t105 = icmp ne i32 %t104, 0
  br i1 %t105, label %bb11, label %ok.106, !prof !99
ok.106:
  store i64 %t103, ptr %l88
  br label %bb10
bb10:
  %t107 = load i64, ptr %l88, !tbaa !24
  store i64 %t107, ptr %l84, !tbaa !24
  br label %bb13
bb11:
  br label %bb12
bb12:
  store i64 -1, ptr %l84, !tbaa !24
  br label %bb13
bb13:
  %t108 = load i64, ptr %l84, !tbaa !24
  store i64 %t108, ptr %l15, !tbaa !24
  br label %bb41
bb14:
  %t109 = load { i64, [7 x i64] }, ptr %l17
  %t111 = extractvalue { i64, [7 x i64] } %t109, 0
  %t112 = icmp eq i64 %t111, 2
  br i1 %t112, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb36
bb17:
  store %olang.scope zeroinitializer, ptr %s2
  %t114 = getelementptr %"compiler/eval:task", ptr %l6, i32 0, i32 2
  %t115 = load i64, ptr %t114, !tbaa !24
  %t116 = load i64, ptr %l11, !tbaa !24
  %t117 = load i64, ptr %l12, !tbaa !24
  %t119 = mul i64 8, %t117
  %t122 = add i64 %t116, %t119
  %t123 = load i64, ptr %l13, !tbaa !24
  %t125 = mul i64 16, %t123
  %t128 = add i64 %t122, %t125
  %t129 = load i64, ptr %l14, !tbaa !24
  %t131 = mul i64 8, %t129
  %t134 = add i64 %t128, %t131
  %t137 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s2, i64 %t115, i64 %t134)
  store %"compiler/eval:Ptr" %t137, ptr %l103
  br label %bb18
bb18:
  %t138 = load %"compiler/eval:Ptr", ptr %l103
  store %"compiler/eval:Ptr" %t138, ptr %l19
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t140 = load %"compiler/eval:Ptr", ptr %l19
  %t143 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtr(ptr %v0, ptr %t139, %"compiler/eval:Ptr" %t140)
  store %"compiler/eval:Ptr" %t143, ptr %l106
  br label %bb19
bb19:
  %t144 = load %"compiler/eval:Ptr", ptr %l106
  store %"compiler/eval:Ptr" %t144, ptr %l20
  %t145 = load ptr, ptr %l0, !tbaa !29
  store ptr %t145, ptr %l107, !tbaa !29
  %t146 = getelementptr %"compiler/eval:Ptr", ptr %l19, i32 0, i32 0
  %t147 = load i64, ptr %t146, !tbaa !24
  %t148 = getelementptr %"compiler/eval:Ptr", ptr %l19, i32 0, i32 1
  %t149 = load i64, ptr %t148, !tbaa !24
  %t151 = add i64 %t149, 8
  %t154 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s2, i64 %t147, i64 %t151)
  store %"compiler/eval:Ptr" %t154, ptr %l111
  br label %bb20
bb20:
  %t155 = load ptr, ptr %l107, !tbaa !29
  %t156 = load %"compiler/eval:Ptr", ptr %l111
  %t157 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtr(ptr %v0, ptr %t155, %"compiler/eval:Ptr" %t156)
  store %"compiler/eval:Ptr" %t157, ptr %l112
  br label %bb21
bb21:
  %t158 = load %"compiler/eval:Ptr", ptr %l112
  store %"compiler/eval:Ptr" %t158, ptr %l16
  %t159 = getelementptr %"compiler/eval:Ptr", ptr %l20, i32 0, i32 0
  %t160 = load i64, ptr %t159, !tbaa !24
  %t162 = icmp ne i64 %t160, 0
  br i1 %t162, label %bb22, label %bb23
bb22:
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t166 = getelementptr %"compiler/eval:Machine", ptr %t164, i32 0, i32 49
  %t167 = load { i64, ptr }, ptr %t166, !tbaa !27
  store { i64, ptr } %t167, ptr %l117, !tbaa !27
  %t168 = getelementptr %"compiler/eval:Ptr", ptr %l20, i32 0, i32 0
  %t169 = load i64, ptr %t168, !tbaa !24
  %t170 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t173 = and i64 %t169, %t170
  %t175 = getelementptr { i64, ptr }, ptr %l117, i32 0, i32 1
  %t176 = load ptr, ptr %t175, !tbaa !27
  %t177 = getelementptr %"compiler/eval:alloc", ptr %t176, i64 %t173
  %t178 = getelementptr %"compiler/eval:alloc", ptr %t177, i32 0, i32 4
  %t179 = load i64, ptr %t178, !tbaa !24
  %t180 = load i64, ptr @G_2ecompiler_2feval_2eaCode, !tbaa !24
  %t183 = icmp eq i64 %t179, %t180
  store i1 %t183, ptr %l115, !tbaa !21
  br label %bb24
bb23:
  store i1 false, ptr %l115, !tbaa !21
  br label %bb24
bb24:
  %t185 = load i1, ptr %l115, !tbaa !21
  br i1 %t185, label %bb25, label %bb26
bb25:
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t188 = getelementptr %"compiler/eval:Machine", ptr %t186, i32 0, i32 49
  %t189 = load { i64, ptr }, ptr %t188, !tbaa !27
  store { i64, ptr } %t189, ptr %l126, !tbaa !27
  %t190 = getelementptr %"compiler/eval:Ptr", ptr %l20, i32 0, i32 0
  %t191 = load i64, ptr %t190, !tbaa !24
  %t192 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t195 = and i64 %t191, %t192
  %t197 = getelementptr { i64, ptr }, ptr %l126, i32 0, i32 1
  %t198 = load ptr, ptr %t197, !tbaa !27
  %t199 = getelementptr %"compiler/eval:alloc", ptr %t198, i64 %t195
  %t200 = getelementptr %"compiler/eval:alloc", ptr %t199, i32 0, i32 15
  %t201 = load i1, ptr %t200, !tbaa !21
  %t203 = xor i1 %t201, true
  store i1 %t203, ptr %l124, !tbaa !21
  br label %bb27
bb26:
  store i1 false, ptr %l124, !tbaa !21
  br label %bb27
bb27:
  %t205 = load i1, ptr %l124, !tbaa !21
  br i1 %t205, label %bb28, label %bb29
bb28:
  %t206 = load ptr, ptr %l0, !tbaa !29
  %t208 = getelementptr %"compiler/eval:Machine", ptr %t206, i32 0, i32 30
  store ptr %t208, ptr %l134, !tbaa !29
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t211 = getelementptr %"compiler/eval:Machine", ptr %t209, i32 0, i32 31
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t214 = getelementptr %"compiler/eval:Machine", ptr %t212, i32 0, i32 49
  %t215 = load { i64, ptr }, ptr %t214, !tbaa !27
  store { i64, ptr } %t215, ptr %l138, !tbaa !27
  %t216 = getelementptr %"compiler/eval:Ptr", ptr %l20, i32 0, i32 0
  %t217 = load i64, ptr %t216, !tbaa !24
  %t218 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t221 = and i64 %t217, %t218
  %t223 = getelementptr { i64, ptr }, ptr %l138, i32 0, i32 1
  %t224 = load ptr, ptr %t223, !tbaa !27
  %t225 = getelementptr %"compiler/eval:alloc", ptr %t224, i64 %t221
  %t226 = getelementptr %"compiler/eval:alloc", ptr %t225, i32 0, i32 14
  %t227 = load i64, ptr %t226, !tbaa !24
  %t230 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2eAt_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %t211, i64 %t227)
  store { i64, [2 x i64] } %t230, ptr %l143
  br label %bb30
bb29:
  br label %bb35
bb30:
  %t231 = load ptr, ptr %l134, !tbaa !29
  %t232 = load { i64, [2 x i64] }, ptr %l143
  %t233 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20I64_3e_2eG_H6ffe2eb17daa971b2c9d564ad72358b1(ptr %v0, ptr %t231, { i64, [2 x i64] } %t232)
  %t234 = extractvalue { i32, i64 } %t233, 1
  %t235 = extractvalue { i32, i64 } %t233, 0
  store i32 %t235, ptr %l145
  %t236 = icmp ne i32 %t235, 0
  br i1 %t236, label %bb32, label %ok.237, !prof !99
ok.237:
  store i64 %t234, ptr %l144
  br label %bb31
bb31:
  %t238 = load i64, ptr %l144, !tbaa !24
  store i64 %t238, ptr %l132, !tbaa !24
  br label %bb34
bb32:
  br label %bb33
bb33:
  store i64 -1, ptr %l132, !tbaa !24
  br label %bb34
bb34:
  %t239 = load i64, ptr %l132, !tbaa !24
  store i64 %t239, ptr %l15, !tbaa !24
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s2)
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
  call void @__olang_check_failed(ptr @olang_loc_ab5609012e755c90_cedd2fbfe92d4e64)
  unreachable
bb41:
  %t240 = load i64, ptr %l15, !tbaa !24
  %t242 = icmp slt i64 %t240, 0
  br i1 %t242, label %bb42, label %bb43
bb42:
  %t244 = load ptr, ptr %l0, !tbaa !29
  %t245 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNoBody, !tbaa !27
  %t246 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t246, ptr %t244, { i64, ptr } %t245)
  br label %bb44
bb43:
  br label %bb45
bb44:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb45:
  %t249 = load ptr, ptr %l0, !tbaa !29
  %t250 = load i64, ptr %l15, !tbaa !24
  %t251 = load i64, ptr @G_2ecompiler_2feval_2erTask, !tbaa !24
  %t252 = load i64, ptr %l2, !tbaa !24
  %t257 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2epushFrame(ptr %v0, ptr %t249, i64 %t250, i64 %t251, i64 %t252)
  store i64 %t257, ptr %l154
  br label %bb46
bb46:
  %t258 = load i64, ptr %l154, !tbaa !24
  store i64 %t258, ptr %l21, !tbaa !24
  %t259 = load i64, ptr %l21, !tbaa !24
  %t261 = icmp slt i64 %t259, 0
  br i1 %t261, label %bb47, label %bb48
bb47:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb48:
  br label %bb49
bb49:
  %t263 = load ptr, ptr %l0, !tbaa !29
  %t265 = getelementptr %"compiler/eval:Machine", ptr %t263, i32 0, i32 88
  store ptr %t265, ptr %l22, !tbaa !29
  store i64 0, ptr %l23, !tbaa !24
  br label %bb50
bb50:
  %t267 = load i64, ptr %l23, !tbaa !24
  store i64 %t267, ptr %l159, !tbaa !24
  %t268 = load ptr, ptr %l22, !tbaa !29
  %t270 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t268)
  store i64 %t270, ptr %l161
  br label %bb51
bb51:
  %t271 = load i64, ptr %l159, !tbaa !24
  %t272 = load i64, ptr %l161, !tbaa !24
  %t273 = icmp slt i64 %t271, %t272
  %t275 = xor i1 %t273, true
  br i1 %t275, label %bb52, label %bb53
bb52:
  br label %bb58
bb53:
  br label %bb54
bb54:
  %t277 = load ptr, ptr %l22, !tbaa !29
  %t278 = load i64, ptr %l23, !tbaa !24
  %t281 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t277, i64 %t278)
  store i64 %t281, ptr %l166
  br label %bb55
bb55:
  %t282 = load i64, ptr %l166, !tbaa !24
  %t283 = load ptr, ptr %l0, !tbaa !29
  %t285 = getelementptr %"compiler/eval:Machine", ptr %t283, i32 0, i32 91
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t285, i64 %t282)
  br label %bb56
bb56:
  br label %bb57
bb57:
  %t289 = load i64, ptr %l23, !tbaa !24
  %t291 = add i64 %t289, 1
  store i64 %t291, ptr %l23, !tbaa !24
  br label %bb50
bb58:
  %t293 = load ptr, ptr %l0, !tbaa !29
  %t295 = getelementptr %"compiler/eval:Machine", ptr %t293, i32 0, i32 91
  store ptr %t295, ptr %l173, !tbaa !29
  %t296 = load ptr, ptr %l0, !tbaa !29
  %t298 = getelementptr %"compiler/eval:Machine", ptr %t296, i32 0, i32 88
  %t300 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t298)
  store i64 %t300, ptr %l176
  br label %bb59
bb59:
  %t301 = load ptr, ptr %l173, !tbaa !29
  %t302 = load i64, ptr %l176, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t301, i64 %t302)
  br label %bb60
bb60:
  %t303 = load ptr, ptr %l0, !tbaa !29
  %t305 = getelementptr %"compiler/eval:Machine", ptr %t303, i32 0, i32 91
  %t306 = load ptr, ptr %l0, !tbaa !29
  %t308 = getelementptr %"compiler/eval:Machine", ptr %t306, i32 0, i32 90
  %t309 = load i64, ptr %t308, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t305, i64 %t309)
  br label %bb61
bb61:
  %t312 = load ptr, ptr %l0, !tbaa !29
  %t314 = getelementptr %"compiler/eval:Machine", ptr %t312, i32 0, i32 88
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t314)
  br label %bb62
bb62:
  %t316 = load ptr, ptr %l0, !tbaa !29
  %t318 = getelementptr %"compiler/eval:Machine", ptr %t316, i32 0, i32 90
  store i64 0, ptr %t318, !tbaa !24
  %t319 = load ptr, ptr %l0, !tbaa !29
  %t321 = getelementptr %"compiler/eval:Machine", ptr %t319, i32 0, i32 25
  %t322 = load i64, ptr %l15, !tbaa !24
  %t325 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %v0, ptr %t321, i64 %t322)
  store ptr %t325, ptr %l187
  br label %bb63
bb63:
  %t326 = load ptr, ptr %l187, !tbaa !29
  store ptr %t326, ptr %l25, !tbaa !29
  store i32 0, ptr %l26, !tbaa !23
  %t327 = getelementptr %"compiler/mir:Task", ptr %l8, i32 0, i32 1
  %t328 = getelementptr %"compiler/mir:Range", ptr %t327, i32 0, i32 1
  %t329 = load i32, ptr %t328, !tbaa !23
  store i32 %t329, ptr %l27, !tbaa !23
  store i32 1, ptr %l28, !tbaa !23
  %t331 = load i32, ptr %l27, !tbaa !23
  %t332 = load i32, ptr %l26, !tbaa !23
  %t335 = icmp sgt i32 %t331, %t332
  br i1 %t335, label %bb64, label %bb65
bb64:
  %t337 = load i32, ptr %l28, !tbaa !23
  %t339 = icmp sgt i32 %t337, 0
  br i1 %t339, label %bb66, label %bb67
bb65:
  store i32 0, ptr %l192, !tbaa !23
  br label %bb69
bb66:
  %t341 = load i32, ptr %l27, !tbaa !23
  %t342 = load i32, ptr %l26, !tbaa !23
  %t345 = sub i32 %t341, %t342
  %t346 = load i32, ptr %l28, !tbaa !23
  %t349 = add i32 %t345, %t346
  %t351 = sub i32 %t349, 1
  %t352 = load i32, ptr %l28, !tbaa !23
  %t355 = sdiv i32 %t351, %t352
  store i32 %t355, ptr %l195, !tbaa !23
  br label %bb68
bb67:
  store i32 0, ptr %l195, !tbaa !23
  br label %bb68
bb68:
  %t357 = load i32, ptr %l195, !tbaa !23
  store i32 %t357, ptr %l192, !tbaa !23
  br label %bb69
bb69:
  %t358 = load i32, ptr %l192, !tbaa !23
  store i32 %t358, ptr %l29, !tbaa !23
  store i32 0, ptr %l30, !tbaa !23
  br label %bb70
bb70:
  %t359 = load i32, ptr %l30, !tbaa !23
  %t360 = load i32, ptr %l29, !tbaa !23
  %t363 = icmp slt i32 %t359, %t360
  %t365 = xor i1 %t363, true
  br i1 %t365, label %bb71, label %bb72
bb71:
  br label %bb85
bb72:
  br label %bb73
bb73:
  %t367 = load i32, ptr %l26, !tbaa !23
  %t368 = load i32, ptr %l30, !tbaa !23
  %t369 = load i32, ptr %l28, !tbaa !23
  %t372 = mul i32 %t368, %t369
  %t375 = add i32 %t367, %t372
  store i32 %t375, ptr %l31, !tbaa !23
  %t377 = load i32, ptr %l31, !tbaa !23
  %t379 = sext i32 %t377 to i64
  store i64 %t379, ptr %l214, !tbaa !24
  %t380 = load ptr, ptr %l25, !tbaa !29
  %t382 = getelementptr %"compiler/mir:Fn", ptr %t380, i32 0, i32 4
  %t384 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %t382)
  store i64 %t384, ptr %l217
  br label %bb74
bb74:
  %t385 = load i64, ptr %l214, !tbaa !24
  %t386 = load i64, ptr %l217, !tbaa !24
  %t387 = icmp slt i64 %t385, %t386
  br i1 %t387, label %bb75, label %bb76
bb75:
  store %olang.scope zeroinitializer, ptr %s12
  %t389 = load ptr, ptr %l25, !tbaa !29
  %t391 = getelementptr %"compiler/mir:Fn", ptr %t389, i32 0, i32 4
  %t392 = load i32, ptr %l31, !tbaa !23
  %t394 = sext i32 %t392 to i64
  %t397 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eAt_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %t391, i64 %t394)
  store i32 %t397, ptr %l223
  br label %bb77
bb76:
  br label %bb83
bb77:
  %t398 = load i32, ptr %l223, !tbaa !23
  store i32 %t398, ptr %l32, !tbaa !23
  %t399 = load ptr, ptr %l0, !tbaa !29
  store ptr %t399, ptr %l224, !tbaa !29
  %t400 = load ptr, ptr %l0, !tbaa !29
  %t401 = load i64, ptr %l21, !tbaa !24
  %t402 = load i32, ptr %l32, !tbaa !23
  %t406 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2elocalPtr(ptr %v0, ptr %t400, i64 %t401, i32 %t402)
  store %"compiler/eval:Ptr" %t406, ptr %l228
  br label %bb78
bb78:
  %t407 = getelementptr %"compiler/eval:task", ptr %l6, i32 0, i32 2
  %t408 = load i64, ptr %t407, !tbaa !24
  %t409 = load i32, ptr %l31, !tbaa !23
  %t411 = sext i32 %t409 to i64
  %t412 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t413 = load ptr, ptr %t412, !tbaa !27
  %t414 = getelementptr i64, ptr %t413, i64 %t411
  %t415 = load i64, ptr %t414, !tbaa !34
  %t418 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s12, i64 %t408, i64 %t415)
  store %"compiler/eval:Ptr" %t418, ptr %l232
  br label %bb79
bb79:
  %t419 = load ptr, ptr %l0, !tbaa !29
  store ptr %t419, ptr %l233, !tbaa !29
  %t420 = load ptr, ptr %l25, !tbaa !29
  %t422 = getelementptr %"compiler/mir:Fn", ptr %t420, i32 0, i32 7
  %t423 = load i32, ptr %l32, !tbaa !23
  %t425 = sext i32 %t423 to i64
  %t428 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %t422, i64 %t425)
  store %"compiler/mir:Local" %t428, ptr %l238
  br label %bb80
bb80:
  %t429 = getelementptr %"compiler/mir:Local", ptr %l238, i32 0, i32 2
  %t430 = load i32, ptr %t429, !tbaa !23
  %t431 = load ptr, ptr %l233, !tbaa !29
  %t433 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t431, i32 %t430)
  store i64 %t433, ptr %l240
  br label %bb81
bb81:
  %t434 = load ptr, ptr %l224, !tbaa !29
  %t435 = load %"compiler/eval:Ptr", ptr %l228
  %t436 = load %"compiler/eval:Ptr", ptr %l232
  %t437 = load i64, ptr %l240, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopy(ptr %v0, ptr %t434, %"compiler/eval:Ptr" %t435, %"compiler/eval:Ptr" %t436, i64 %t437)
  br label %bb82
bb82:
  call void @__olang_scope_close(ptr %s12)
  br label %bb83
bb83:
  br label %bb84
bb84:
  %t438 = load i32, ptr %l30, !tbaa !23
  %t440 = add i32 %t438, 1
  store i32 %t440, ptr %l30, !tbaa !23
  br label %bb70
bb85:
  %t442 = load ptr, ptr %l0, !tbaa !29
  %t443 = load i64, ptr %l21, !tbaa !24
  %t444 = load i64, ptr %l15, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eownParams(ptr %v0, ptr %t442, i64 %t443, i64 %t444)
  br label %bb86
bb86:
  %t448 = load i64, ptr %l11, !tbaa !24
  %t449 = load i64, ptr %l12, !tbaa !24
  %t451 = mul i64 8, %t449
  %t454 = add i64 %t448, %t451
  %t455 = load i64, ptr %l13, !tbaa !24
  %t457 = mul i64 16, %t455
  %t460 = add i64 %t454, %t457
  store i64 %t460, ptr %l33, !tbaa !24
  store i64 0, ptr %l34, !tbaa !24
  %t462 = load ptr, ptr %l25, !tbaa !29
  %t464 = getelementptr %"compiler/mir:Fn", ptr %t462, i32 0, i32 6
  store ptr %t464, ptr %l35, !tbaa !29
  store i64 0, ptr %l36, !tbaa !24
  br label %bb87
bb87:
  %t466 = load i64, ptr %l36, !tbaa !24
  store i64 %t466, ptr %l255, !tbaa !24
  %t467 = load ptr, ptr %l35, !tbaa !29
  %t469 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eLen_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %t467)
  store i64 %t469, ptr %l257
  br label %bb88
bb88:
  %t470 = load i64, ptr %l255, !tbaa !24
  %t471 = load i64, ptr %l257, !tbaa !24
  %t472 = icmp slt i64 %t470, %t471
  %t474 = xor i1 %t472, true
  br i1 %t474, label %bb89, label %bb90
bb89:
  br label %bb103
bb90:
  br label %bb91
bb91:
  %t476 = load ptr, ptr %l35, !tbaa !29
  %t477 = load i64, ptr %l36, !tbaa !24
  %t480 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eAt_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %t476, i64 %t477)
  store { i64, [1 x i64] } %t480, ptr %l262
  br label %bb92
bb92:
  %t481 = load { i64, [1 x i64] }, ptr %l262
  %t484 = extractvalue { i64, [1 x i64] } %t481, 0
  %t485 = icmp eq i64 %t484, 4
  br i1 %t485, label %bb93, label %bb94
bb93:
  br label %bb95
bb94:
  br label %bb96
bb95:
  br label %bb101
bb96:
  br i1 true, label %bb97, label %bb98
bb97:
  br label %bb99
bb98:
  br label %bb100
bb99:
  %t487 = load i64, ptr %l34, !tbaa !24
  %t489 = add i64 %t487, 1
  store i64 %t489, ptr %l34, !tbaa !24
  br label %bb101
bb100:
  call void @__olang_check_failed(ptr @olang_loc_f6d4fb7f4fd95721_139ddd7815176855)
  unreachable
bb101:
  br label %bb102
bb102:
  %t491 = load i64, ptr %l36, !tbaa !24
  %t493 = add i64 %t491, 1
  store i64 %t493, ptr %l36, !tbaa !24
  br label %bb87
bb103:
  store i64 0, ptr %l38, !tbaa !24
  %t495 = load i64, ptr %l34, !tbaa !24
  store i64 %t495, ptr %l39, !tbaa !24
  store i64 1, ptr %l40, !tbaa !24
  %t497 = load i64, ptr %l39, !tbaa !24
  %t498 = load i64, ptr %l38, !tbaa !24
  %t501 = icmp sgt i64 %t497, %t498
  br i1 %t501, label %bb104, label %bb105
bb104:
  %t503 = load i64, ptr %l40, !tbaa !24
  %t505 = icmp sgt i64 %t503, 0
  br i1 %t505, label %bb106, label %bb107
bb105:
  store i64 0, ptr %l273, !tbaa !24
  br label %bb109
bb106:
  %t507 = load i64, ptr %l39, !tbaa !24
  %t508 = load i64, ptr %l38, !tbaa !24
  %t511 = sub i64 %t507, %t508
  %t512 = load i64, ptr %l40, !tbaa !24
  %t515 = add i64 %t511, %t512
  %t517 = sub i64 %t515, 1
  %t518 = load i64, ptr %l40, !tbaa !24
  %t521 = sdiv i64 %t517, %t518
  store i64 %t521, ptr %l276, !tbaa !24
  br label %bb108
bb107:
  store i64 0, ptr %l276, !tbaa !24
  br label %bb108
bb108:
  %t523 = load i64, ptr %l276, !tbaa !24
  store i64 %t523, ptr %l273, !tbaa !24
  br label %bb109
bb109:
  %t524 = load i64, ptr %l273, !tbaa !24
  store i64 %t524, ptr %l41, !tbaa !24
  store i64 0, ptr %l42, !tbaa !24
  br label %bb110
bb110:
  store %olang.scope zeroinitializer, ptr %s20
  %t525 = load i64, ptr %l42, !tbaa !24
  %t526 = load i64, ptr %l41, !tbaa !24
  %t529 = icmp slt i64 %t525, %t526
  %t531 = xor i1 %t529, true
  br i1 %t531, label %bb111, label %bb112
bb111:
  call void @__olang_scope_close(ptr %s20)
  br label %bb124
bb112:
  br label %bb113
bb113:
  %t533 = load i64, ptr %l38, !tbaa !24
  %t534 = load i64, ptr %l42, !tbaa !24
  %t535 = load i64, ptr %l40, !tbaa !24
  %t538 = mul i64 %t534, %t535
  %t541 = add i64 %t533, %t538
  store i64 %t541, ptr %l43, !tbaa !24
  %t543 = load ptr, ptr %l0, !tbaa !29
  %t545 = getelementptr %"compiler/eval:Machine", ptr %t543, i32 0, i32 60
  %t546 = load { i64, ptr }, ptr %t545, !tbaa !27
  store { i64, ptr } %t546, ptr %l295, !tbaa !27
  %t547 = load ptr, ptr %l0, !tbaa !29
  %t549 = getelementptr %"compiler/eval:Machine", ptr %t547, i32 0, i32 58
  %t550 = load { i64, ptr }, ptr %t549, !tbaa !27
  store { i64, ptr } %t550, ptr %l297, !tbaa !27
  %t551 = load i64, ptr %l21, !tbaa !24
  %t553 = getelementptr { i64, ptr }, ptr %l297, i32 0, i32 1
  %t554 = load ptr, ptr %t553, !tbaa !27
  %t555 = getelementptr %"compiler/eval:frame", ptr %t554, i64 %t551
  %t556 = getelementptr %"compiler/eval:frame", ptr %t555, i32 0, i32 5
  %t557 = load i64, ptr %t556, !tbaa !24
  %t558 = load i64, ptr %l43, !tbaa !24
  %t561 = add i64 %t557, %t558
  store i64 %t561, ptr %l301, !tbaa !24
  %t562 = load i64, ptr %l43, !tbaa !24
  %t563 = load i64, ptr %l14, !tbaa !24
  %t566 = icmp slt i64 %t562, %t563
  br i1 %t566, label %bb114, label %bb115
bb114:
  %t568 = load ptr, ptr %l0, !tbaa !29
  store ptr %t568, ptr %l306, !tbaa !29
  %t569 = getelementptr %"compiler/eval:task", ptr %l6, i32 0, i32 2
  %t570 = load i64, ptr %t569, !tbaa !24
  %t571 = load i64, ptr %l33, !tbaa !24
  %t572 = load i64, ptr %l43, !tbaa !24
  %t574 = mul i64 8, %t572
  %t577 = add i64 %t571, %t574
  %t580 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s20, i64 %t570, i64 %t577)
  store %"compiler/eval:Ptr" %t580, ptr %l312
  br label %bb116
bb115:
  %t581 = load ptr, ptr %l25, !tbaa !29
  %t583 = getelementptr %"compiler/mir:Fn", ptr %t581, i32 0, i32 6
  %t584 = load i64, ptr %l43, !tbaa !24
  %t587 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eAt_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %t583, i64 %t584)
  store { i64, [1 x i64] } %t587, ptr %l317
  br label %bb118
bb116:
  %t588 = load ptr, ptr %l306, !tbaa !29
  %t589 = load %"compiler/eval:Ptr", ptr %l312
  %t590 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t588, %"compiler/eval:Ptr" %t589, i64 8)
  store i64 %t590, ptr %l313
  br label %bb117
bb117:
  %t591 = load i64, ptr %l313, !tbaa !24
  store i64 %t591, ptr %l305, !tbaa !24
  br label %bb122
bb118:
  %t592 = load { i64, [1 x i64] }, ptr %l317
  %t594 = extractvalue { i64, [1 x i64] } %t592, 0
  %t595 = icmp eq i64 %t594, 5
  br i1 %t595, label %bb119, label %bb120
bb119:
  store i64 0, ptr %l320, !tbaa !24
  br label %bb121
bb120:
  %t597 = load ptr, ptr %l0, !tbaa !29
  %t599 = getelementptr %"compiler/eval:Machine", ptr %t597, i32 0, i32 70
  %t600 = load i64, ptr %t599, !tbaa !24
  store i64 %t600, ptr %l320, !tbaa !24
  br label %bb121
bb121:
  %t602 = load i64, ptr %l320, !tbaa !24
  store i64 %t602, ptr %l305, !tbaa !24
  br label %bb122
bb122:
  %t603 = load i64, ptr %l305, !tbaa !24
  %t604 = load i64, ptr %l301, !tbaa !24
  %t605 = getelementptr { i64, ptr }, ptr %l295, i32 0, i32 1
  %t606 = load ptr, ptr %t605, !tbaa !27
  %t607 = getelementptr i64, ptr %t606, i64 %t604
  store i64 %t603, ptr %t607, !tbaa !34
  call void @__olang_scope_close(ptr %s20)
  br label %bb123
bb123:
  %t608 = load i64, ptr %l42, !tbaa !24
  %t610 = add i64 %t608, 1
  store i64 %t610, ptr %l42, !tbaa !24
  br label %bb110
bb124:
  %t612 = load ptr, ptr %l0, !tbaa !29
  %t613 = load i64, ptr %l21, !tbaa !24
  %t614 = load ptr, ptr %l25, !tbaa !29
  %t615 = load %"compiler/eval:Ptr", ptr %l16
  %t616 = load i64, ptr %l34, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eloadCaptures(ptr %v0, ptr %v0, ptr %t612, i64 %t613, ptr %t614, %"compiler/eval:Ptr" %t615, i64 %t616)
  br label %bb125
bb125:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2estmtAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i1
  %l6 = alloca { i64, [21 x i64] }
  %l7 = alloca %"compiler/source:Span"
  %l8 = alloca %"compiler/mir:Lvalue"
  %l9 = alloca { i64, [15 x i64] }
  %l10 = alloca %"compiler/source:Span"
  %l11 = alloca i32
  %l12 = alloca %"compiler/mir:Local"
  %l13 = alloca i64
  %l14 = alloca i32
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i32
  %l18 = alloca %"compiler/mir:ScopeInfo"
  %l19 = alloca i32
  %l20 = alloca i64
  %l21 = alloca i64
  %l23 = alloca i64
  %l25 = alloca %"compiler/eval:Ptr"
  %l27 = alloca i64
  %l29 = alloca i32
  %l30 = alloca i64
  %l31 = alloca %"compiler/source:Span"
  %l32 = alloca i32
  %l33 = alloca i32
  %l34 = alloca %"compiler/source:Span"
  %l35 = alloca { i64, [1 x i64] }
  %l36 = alloca i32
  %l37 = alloca { i64, [4 x i64] }
  %l38 = alloca i64
  %l41 = alloca i1
  %l43 = alloca %"compiler/source:Span"
  %l44 = alloca %"compiler/mir:Lvalue"
  %l45 = alloca { %"compiler/eval:Ptr", i32 }
  %l46 = alloca %"compiler/eval:Ptr"
  %l47 = alloca i32
  %l48 = alloca i64
  %l49 = alloca { i64, [21 x i64] }
  %l50 = alloca %"compiler/source:Span"
  %l51 = alloca i32
  %l52 = alloca %"compiler/mir:Lvalue"
  %l53 = alloca { %"compiler/eval:Ptr", i32 }
  %l54 = alloca %"compiler/eval:Ptr"
  %l55 = alloca i32
  %l56 = alloca i64
  %l57 = alloca %"compiler/source:Span"
  %l58 = alloca { i64, [1 x i64] }
  %l59 = alloca i32
  %l60 = alloca { i64, [4 x i64] }
  %l61 = alloca %"compiler/source:Span"
  %l62 = alloca { i64, [4 x i64] }
  %l63 = alloca %"compiler/source:Span"
  %l64 = alloca { i64, [4 x i64] }
  %l65 = alloca { i64, [4 x i64] }
  %l66 = alloca i64
  %l67 = alloca %"compiler/eval:Ptr"
  %l68 = alloca %"compiler/source:Span"
  %l69 = alloca { i64, [4 x i64] }
  %l70 = alloca i32
  %l71 = alloca %"compiler/mir:Range"
  %l72 = alloca %"compiler/source:Span"
  %l73 = alloca i64
  %l74 = alloca i64
  %l75 = alloca %"compiler/source:Span"
  %l76 = alloca %"compiler/mir:Lvalue"
  %l77 = alloca %"compiler/mir:Lvalue"
  %l78 = alloca { i64, [4 x i64] }
  %l79 = alloca { %"compiler/eval:Ptr", i32 }
  %l80 = alloca %"compiler/eval:Ptr"
  %l81 = alloca i32
  %l82 = alloca { %"compiler/eval:Ptr", i32 }
  %l83 = alloca %"compiler/eval:Ptr"
  %l84 = alloca i32
  %l85 = alloca { %"compiler/eval:Ptr", i64 }
  %l86 = alloca %"compiler/eval:Ptr"
  %l87 = alloca i64
  %l88 = alloca { %"compiler/eval:Ptr", i64 }
  %l89 = alloca %"compiler/eval:Ptr"
  %l90 = alloca i64
  %l91 = alloca i64
  %l92 = alloca %"compiler/source:Span"
  %l93 = alloca i32
  %l94 = alloca i32
  %l96 = alloca { i64, ptr }
  %l98 = alloca { i64, ptr }
  %l114 = alloca { i64, ptr }
  %l115 = alloca i64
  %l119 = alloca { i64, ptr }
  %l121 = alloca { i64, ptr }
  %l125 = alloca { i64, ptr }
  %l127 = alloca { i64, ptr }
  %l129 = alloca { i64, [21 x i64] }
  %l130 = alloca { i64, [21 x i64] }
  %l139 = alloca i1
  %l144 = alloca i1
  %l150 = alloca { i64, [21 x i64] }
  %l158 = alloca { i64, ptr }
  %l160 = alloca { i64, ptr }
  %l167 = alloca i64
  %l171 = alloca { i64, ptr }
  %l173 = alloca { i64, ptr }
  %l178 = alloca i64
  %l179 = alloca ptr
  %l182 = alloca i64
  %l185 = alloca %"compiler/eval:Ptr"
  %l187 = alloca { i64, [21 x i64] }
  %l191 = alloca { i64, ptr }
  %l198 = alloca { i64, ptr }
  %l203 = alloca i1
  %l205 = alloca { i64, ptr }
  %l211 = alloca i64
  %l219 = alloca { i64, ptr }
  %l221 = alloca { i64, [21 x i64] }
  %l225 = alloca { i64, ptr }
  %l227 = alloca { i64, ptr }
  %l232 = alloca i64
  %l248 = alloca i64
  %l250 = alloca { i64, ptr }
  %l252 = alloca { i64, ptr }
  %l270 = alloca ptr
  %l279 = alloca %"compiler/eval:Ptr"
  %l287 = alloca ptr
  %l290 = alloca { i64, [21 x i64] }
  %l298 = alloca { i64, ptr }
  %l300 = alloca { i64, ptr }
  %l308 = alloca { i64, ptr }
  %l310 = alloca { i64, ptr }
  %l318 = alloca i1
  %l323 = alloca { i64, ptr }
  %l325 = alloca { i64, [21 x i64] }
  %l332 = alloca { i64, [21 x i64] }
  %l357 = alloca { i64, [21 x i64] }
  %l369 = alloca i64
  %l373 = alloca i1
  %l378 = alloca i1
  %l382 = alloca i1
  %l385 = alloca i1
  %l389 = alloca ptr
  %l393 = alloca %"compiler/eval:Ptr"
  %l394 = alloca %"compiler/eval:Ptr"
  %l405 = alloca i1
  %l414 = alloca ptr
  %l417 = alloca { i64, [21 x i64] }
  %l421 = alloca { i64, [21 x i64] }
  %l425 = alloca { i64, [21 x i64] }
  %l435 = alloca { %"compiler/eval:Ptr", i32 }
  %l440 = alloca i64
  %l442 = alloca { i64, ptr }
  %l444 = alloca { i64, ptr }
  %l446 = alloca { i64, [21 x i64] }
  %l450 = alloca { i64, [21 x i64] }
  %l452 = alloca { i64, [21 x i64] }
  %l456 = alloca i64
  %l460 = alloca { i64, ptr }
  %l462 = alloca { i64, [21 x i64] }
  %l473 = alloca { %"compiler/eval:Ptr", i32 }
  %l478 = alloca i64
  %l479 = alloca ptr
  %l483 = alloca i64
  %l488 = alloca i64
  %l492 = alloca { i64, ptr }
  %l494 = alloca { i64, [21 x i64] }
  %l508 = alloca { i64, [21 x i64] }
  %l517 = alloca i64
  %l522 = alloca ptr
  %l525 = alloca i64
  %l526 = alloca i64
  %l527 = alloca ptr
  %l531 = alloca %"compiler/eval:Ptr"
  %l532 = alloca %"compiler/eval:Ptr"
  %l533 = alloca { i64, [21 x i64] }
  %l541 = alloca ptr
  %l545 = alloca i64
  %l547 = alloca i64
  %l551 = alloca %"compiler/eval:Ptr"
  %l555 = alloca ptr
  %l556 = alloca %"compiler/eval:Ptr"
  %l560 = alloca i32
  %l562 = alloca { i64, [21 x i64] }
  %l580 = alloca { i64, [21 x i64] }
  %l586 = alloca i64
  %l589 = alloca i64
  %l590 = alloca i32
  %l594 = alloca ptr
  %l597 = alloca i64
  %l601 = alloca i64
  %l606 = alloca i64
  %l610 = alloca { i64, ptr }
  %l612 = alloca { i64, [21 x i64] }
  %l624 = alloca { %"compiler/eval:Ptr", i32 }
  %l630 = alloca { %"compiler/eval:Ptr", i32 }
  %l636 = alloca { %"compiler/eval:Ptr", i64 }
  %l642 = alloca { %"compiler/eval:Ptr", i64 }
  %l645 = alloca ptr
  %l649 = alloca i64
  %l653 = alloca i32
  %l654 = alloca i64
  %l659 = alloca i1
  %l663 = alloca i1
  %l669 = alloca ptr
  %l670 = alloca %"compiler/eval:Ptr"
  %l671 = alloca %"compiler/eval:Ptr"
  %l672 = alloca i64
  %l673 = alloca ptr
  %l676 = alloca i32
  %l677 = alloca i64
  %l679 = alloca { i64, [21 x i64] }
  %l695 = alloca { i64, ptr }
  %l696 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 26
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l96, !tbaa !27
  %t5 = load i64, ptr %l2, !tbaa !24
  %t7 = getelementptr { i64, ptr }, ptr %l96, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !27
  %t9 = getelementptr %"compiler/eval:cfn", ptr %t8, i64 %t5
  %t10 = getelementptr %"compiler/eval:cfn", ptr %t9, i32 0, i32 13
  %t11 = load { i64, ptr }, ptr %t10, !tbaa !27
  store { i64, ptr } %t11, ptr %l98, !tbaa !27
  %t12 = load i64, ptr %l3, !tbaa !24
  %t13 = load i64, ptr @G_2ecompiler_2feval_2efastStride, !tbaa !24
  %t16 = mul i64 %t12, %t13
  %t18 = getelementptr { i64, ptr }, ptr %l98, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr i64, ptr %t19, i64 %t16
  %t21 = load i64, ptr %t20, !tbaa !34
  store i64 %t21, ptr %l4, !tbaa !24
  %t23 = load i64, ptr %l4, !tbaa !24
  %t25 = icmp ne i64 %t23, 0
  br i1 %t25, label %bb1, label %bb2
bb1:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load i64, ptr %l1, !tbaa !24
  %t29 = load i64, ptr %l2, !tbaa !24
  %t30 = load i64, ptr %l3, !tbaa !24
  %t31 = load i64, ptr %l4, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eflat(ptr %v0, ptr %t27, i64 %t28, i64 %t29, i64 %t30, i64 %t31)
  br label %bb3
bb2:
  br label %bb7
bb3:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/eval:Machine", ptr %t37, i32 0, i32 22
  %t40 = load i1, ptr %t39, !tbaa !21
  %t42 = xor i1 %t40, true
  br i1 %t42, label %bb4, label %bb5
bb4:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/eval:Machine", ptr %t44, i32 0, i32 58
  %t47 = load { i64, ptr }, ptr %t46, !tbaa !27
  store { i64, ptr } %t47, ptr %l114, !tbaa !27
  %t48 = load i64, ptr %l1, !tbaa !24
  store i64 %t48, ptr %l115, !tbaa !24
  %t49 = load i64, ptr %l115, !tbaa !24
  %t50 = getelementptr { i64, ptr }, ptr %l114, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !27
  %t52 = getelementptr %"compiler/eval:frame", ptr %t51, i64 %t49
  %t53 = getelementptr %"compiler/eval:frame", ptr %t52, i32 0, i32 2
  %t54 = load i64, ptr %t53, !tbaa !24
  %t56 = add i64 %t54, 1
  %t58 = load i64, ptr %l115, !tbaa !24
  %t59 = getelementptr { i64, ptr }, ptr %l114, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !27
  %t61 = getelementptr %"compiler/eval:frame", ptr %t60, i64 %t58
  %t62 = getelementptr %"compiler/eval:frame", ptr %t61, i32 0, i32 2
  store i64 %t56, ptr %t62, !tbaa !24
  br label %bb6
bb5:
  br label %bb6
bb6:
  br label %ret
bb7:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/eval:Machine", ptr %t63, i32 0, i32 26
  %t66 = load { i64, ptr }, ptr %t65, !tbaa !27
  store { i64, ptr } %t66, ptr %l119, !tbaa !27
  %t67 = load i64, ptr %l2, !tbaa !24
  %t69 = getelementptr { i64, ptr }, ptr %l119, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !27
  %t71 = getelementptr %"compiler/eval:cfn", ptr %t70, i64 %t67
  %t72 = getelementptr %"compiler/eval:cfn", ptr %t71, i32 0, i32 10
  %t73 = load { i64, ptr }, ptr %t72, !tbaa !27
  store { i64, ptr } %t73, ptr %l121, !tbaa !27
  %t74 = load i64, ptr %l3, !tbaa !24
  %t76 = getelementptr { i64, ptr }, ptr %l121, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !27
  %t78 = getelementptr i1, ptr %t77, i64 %t74
  %t79 = load i1, ptr %t78, !tbaa !31
  store i1 %t79, ptr %l5, !tbaa !21
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/eval:Machine", ptr %t81, i32 0, i32 26
  %t84 = load { i64, ptr }, ptr %t83, !tbaa !27
  store { i64, ptr } %t84, ptr %l125, !tbaa !27
  %t85 = load i64, ptr %l2, !tbaa !24
  %t87 = getelementptr { i64, ptr }, ptr %l125, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !27
  %t89 = getelementptr %"compiler/eval:cfn", ptr %t88, i64 %t85
  %t90 = getelementptr %"compiler/eval:cfn", ptr %t89, i32 0, i32 7
  %t91 = load { i64, ptr }, ptr %t90, !tbaa !27
  store { i64, ptr } %t91, ptr %l127, !tbaa !27
  %t92 = load i64, ptr %l3, !tbaa !24
  %t94 = getelementptr { i64, ptr }, ptr %l127, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !27
  %t96 = getelementptr { i64, [21 x i64] }, ptr %t95, i64 %t92
  call void @llvm.memmove.p0.p0.i64(ptr %l129, ptr %t96, i64 176, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l6, ptr %l129, i64 176, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l130, ptr %l6, i64 176, i1 false)
  %t97 = load { i64, [21 x i64] }, ptr %l130
  %t98 = extractvalue { i64, [21 x i64] } %t97, 0
  %t99 = icmp eq i64 %t98, 0
  br i1 %t99, label %bb8, label %bb9
bb8:
  %t101 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t102 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } }, ptr %t101, i32 0, i32 0
  %t103 = load %"compiler/source:Span", ptr %t102
  store %"compiler/source:Span" %t103, ptr %l7
  %t105 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t106 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } }, ptr %t105, i32 0, i32 1
  %t107 = load %"compiler/mir:Lvalue", ptr %t106
  store %"compiler/mir:Lvalue" %t107, ptr %l8
  %t109 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t110 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } }, ptr %t109, i32 0, i32 2
  %t111 = load { i64, [15 x i64] }, ptr %t110
  store { i64, [15 x i64] } %t111, ptr %l9
  br label %bb10
bb9:
  br label %bb20
bb10:
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t114 = load i64, ptr %l2, !tbaa !24
  %t115 = load %"compiler/source:Span", ptr %l7
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eatK(ptr %v0, ptr %t113, i64 %t114, %"compiler/source:Span" %t115)
  br label %bb11
bb11:
  %t119 = load i1, ptr %l5, !tbaa !21
  br i1 %t119, label %bb12, label %bb13
bb12:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t122 = load i64, ptr %l1, !tbaa !24
  %t123 = load %"compiler/mir:Lvalue", ptr %l8
  %t124 = load { i64, [15 x i64] }, ptr %l9
  %t129 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eglobalsReady(ptr %v0, ptr %t121, i64 %t122, %"compiler/mir:Lvalue" %t123, { i64, [15 x i64] } %t124)
  store i1 %t129, ptr %l144
  br label %bb14
bb13:
  store i1 false, ptr %l139, !tbaa !21
  br label %bb15
bb14:
  %t130 = load i1, ptr %l144, !tbaa !21
  %t131 = xor i1 %t130, true
  store i1 %t131, ptr %l139, !tbaa !21
  br label %bb15
bb15:
  %t133 = load i1, ptr %l139, !tbaa !21
  br i1 %t133, label %bb16, label %bb17
bb16:
  br label %ret
bb17:
  br label %bb18
bb18:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t135 = load i64, ptr %l1, !tbaa !24
  %t136 = load %"compiler/mir:Lvalue", ptr %l8
  %t137 = load { i64, [15 x i64] }, ptr %l9
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eassign(ptr %v0, ptr %t134, i64 %t135, %"compiler/mir:Lvalue" %t136, { i64, [15 x i64] } %t137)
  br label %bb19
bb19:
  br label %bb260
bb20:
  call void @llvm.memmove.p0.p0.i64(ptr %l150, ptr %l6, i64 176, i1 false)
  %t142 = load { i64, [21 x i64] }, ptr %l150
  %t143 = extractvalue { i64, [21 x i64] } %t142, 0
  %t144 = icmp eq i64 %t143, 1
  br i1 %t144, label %bb21, label %bb22
bb21:
  %t146 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t147 = getelementptr { %"compiler/source:Span", i32 }, ptr %t146, i32 0, i32 0
  %t148 = load %"compiler/source:Span", ptr %t147
  store %"compiler/source:Span" %t148, ptr %l10
  %t150 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t151 = getelementptr { %"compiler/source:Span", i32 }, ptr %t150, i32 0, i32 1
  %t152 = load i32, ptr %t151
  store i32 %t152, ptr %l11, !tbaa !23
  br label %bb23
bb22:
  br label %bb31
bb23:
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t155 = load i64, ptr %l2, !tbaa !24
  %t156 = load %"compiler/source:Span", ptr %l10
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eatK(ptr %v0, ptr %t154, i64 %t155, %"compiler/source:Span" %t156)
  br label %bb24
bb24:
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t162 = getelementptr %"compiler/eval:Machine", ptr %t160, i32 0, i32 26
  %t163 = load { i64, ptr }, ptr %t162, !tbaa !27
  store { i64, ptr } %t163, ptr %l158, !tbaa !27
  %t164 = load i64, ptr %l2, !tbaa !24
  %t166 = getelementptr { i64, ptr }, ptr %l158, i32 0, i32 1
  %t167 = load ptr, ptr %t166, !tbaa !27
  %t168 = getelementptr %"compiler/eval:cfn", ptr %t167, i64 %t164
  %t169 = getelementptr %"compiler/eval:cfn", ptr %t168, i32 0, i32 1
  %t170 = load { i64, ptr }, ptr %t169, !tbaa !27
  store { i64, ptr } %t170, ptr %l160, !tbaa !27
  %t171 = load i32, ptr %l11, !tbaa !23
  %t173 = sext i32 %t171 to i64
  %t175 = getelementptr { i64, ptr }, ptr %l160, i32 0, i32 1
  %t176 = load ptr, ptr %t175, !tbaa !27
  %t177 = getelementptr %"compiler/mir:Local", ptr %t176, i64 %t173
  %t178 = load %"compiler/mir:Local", ptr %t177
  store %"compiler/mir:Local" %t178, ptr %l12
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t181 = load i64, ptr %l1, !tbaa !24
  %t182 = getelementptr %"compiler/mir:Local", ptr %l12, i32 0, i32 4
  %t183 = load { i64, [1 x i64] }, ptr %t182
  %t187 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ebuildScope(ptr %v0, ptr %t180, i64 %t181, { i64, [1 x i64] } %t183)
  store i64 %t187, ptr %l167
  br label %bb25
bb25:
  %t188 = load i64, ptr %l167, !tbaa !24
  store i64 %t188, ptr %l13, !tbaa !24
  %t189 = load ptr, ptr %l0, !tbaa !29
  %t191 = getelementptr %"compiler/eval:Machine", ptr %t189, i32 0, i32 22
  %t192 = load i1, ptr %t191, !tbaa !21
  br i1 %t192, label %bb26, label %bb27
bb26:
  br label %ret
bb27:
  br label %bb28
bb28:
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t196 = getelementptr %"compiler/eval:Machine", ptr %t194, i32 0, i32 60
  %t197 = load { i64, ptr }, ptr %t196, !tbaa !27
  store { i64, ptr } %t197, ptr %l171, !tbaa !27
  %t198 = load ptr, ptr %l0, !tbaa !29
  %t200 = getelementptr %"compiler/eval:Machine", ptr %t198, i32 0, i32 58
  %t201 = load { i64, ptr }, ptr %t200, !tbaa !27
  store { i64, ptr } %t201, ptr %l173, !tbaa !27
  %t202 = load i64, ptr %l1, !tbaa !24
  %t204 = getelementptr { i64, ptr }, ptr %l173, i32 0, i32 1
  %t205 = load ptr, ptr %t204, !tbaa !27
  %t206 = getelementptr %"compiler/eval:frame", ptr %t205, i64 %t202
  %t207 = getelementptr %"compiler/eval:frame", ptr %t206, i32 0, i32 3
  %t208 = load i64, ptr %t207, !tbaa !24
  %t209 = load i32, ptr %l11, !tbaa !23
  %t211 = sext i32 %t209 to i64
  %t214 = add i64 %t208, %t211
  store i64 %t214, ptr %l178, !tbaa !24
  %t215 = load ptr, ptr %l0, !tbaa !29
  store ptr %t215, ptr %l179, !tbaa !29
  %t216 = load ptr, ptr %l0, !tbaa !29
  %t217 = getelementptr %"compiler/mir:Local", ptr %l12, i32 0, i32 2
  %t218 = load i32, ptr %t217, !tbaa !23
  %t221 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t216, i32 %t218)
  store i64 %t221, ptr %l182
  br label %bb29
bb29:
  %t222 = load i64, ptr @G_2ecompiler_2feval_2eaValue, !tbaa !24
  %t223 = load i64, ptr %l13, !tbaa !24
  %t224 = load ptr, ptr %l179, !tbaa !29
  %t225 = load i64, ptr %l182, !tbaa !24
  %t228 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocate(ptr %v0, ptr %t224, i64 %t225, i64 %t222, i64 %t223)
  store %"compiler/eval:Ptr" %t228, ptr %l185
  br label %bb30
bb30:
  %t229 = getelementptr %"compiler/eval:Ptr", ptr %l185, i32 0, i32 0
  %t230 = load i64, ptr %t229, !tbaa !24
  %t232 = load i64, ptr %l178, !tbaa !24
  %t233 = getelementptr { i64, ptr }, ptr %l171, i32 0, i32 1
  %t234 = load ptr, ptr %t233, !tbaa !27
  %t235 = getelementptr i64, ptr %t234, i64 %t232
  store i64 %t230, ptr %t235, !tbaa !34
  br label %bb260
bb31:
  call void @llvm.memmove.p0.p0.i64(ptr %l187, ptr %l6, i64 176, i1 false)
  %t236 = load { i64, [21 x i64] }, ptr %l187
  %t237 = extractvalue { i64, [21 x i64] } %t236, 0
  %t238 = icmp eq i64 %t237, 2
  br i1 %t238, label %bb32, label %bb33
bb32:
  %t240 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t241 = getelementptr { %"compiler/source:Span", i32 }, ptr %t240, i32 0, i32 1
  %t242 = load i32, ptr %t241
  store i32 %t242, ptr %l14, !tbaa !23
  br label %bb34
bb33:
  br label %bb42
bb34:
  %t244 = load ptr, ptr %l0, !tbaa !29
  %t246 = getelementptr %"compiler/eval:Machine", ptr %t244, i32 0, i32 58
  %t247 = load { i64, ptr }, ptr %t246, !tbaa !27
  store { i64, ptr } %t247, ptr %l191, !tbaa !27
  %t248 = load i64, ptr %l1, !tbaa !24
  %t250 = getelementptr { i64, ptr }, ptr %l191, i32 0, i32 1
  %t251 = load ptr, ptr %t250, !tbaa !27
  %t252 = getelementptr %"compiler/eval:frame", ptr %t251, i64 %t248
  %t253 = getelementptr %"compiler/eval:frame", ptr %t252, i32 0, i32 3
  %t254 = load i64, ptr %t253, !tbaa !24
  %t255 = load i32, ptr %l14, !tbaa !23
  %t257 = sext i32 %t255 to i64
  %t260 = add i64 %t254, %t257
  store i64 %t260, ptr %l15, !tbaa !24
  %t262 = load ptr, ptr %l0, !tbaa !29
  %t264 = getelementptr %"compiler/eval:Machine", ptr %t262, i32 0, i32 60
  %t265 = load { i64, ptr }, ptr %t264, !tbaa !27
  store { i64, ptr } %t265, ptr %l198, !tbaa !27
  %t266 = load i64, ptr %l15, !tbaa !24
  %t268 = getelementptr { i64, ptr }, ptr %l198, i32 0, i32 1
  %t269 = load ptr, ptr %t268, !tbaa !27
  %t270 = getelementptr i64, ptr %t269, i64 %t266
  %t271 = load i64, ptr %t270, !tbaa !34
  store i64 %t271, ptr %l16, !tbaa !24
  %t273 = load i64, ptr %l16, !tbaa !24
  %t275 = icmp ne i64 %t273, 0
  br i1 %t275, label %bb35, label %bb36
bb35:
  %t277 = load ptr, ptr %l0, !tbaa !29
  %t279 = getelementptr %"compiler/eval:Machine", ptr %t277, i32 0, i32 49
  %t280 = load { i64, ptr }, ptr %t279, !tbaa !27
  store { i64, ptr } %t280, ptr %l205, !tbaa !27
  %t281 = load i64, ptr %l16, !tbaa !24
  %t282 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t285 = and i64 %t281, %t282
  %t287 = getelementptr { i64, ptr }, ptr %l205, i32 0, i32 1
  %t288 = load ptr, ptr %t287, !tbaa !27
  %t289 = getelementptr %"compiler/eval:alloc", ptr %t288, i64 %t285
  %t290 = getelementptr %"compiler/eval:alloc", ptr %t289, i32 0, i32 3
  %t291 = load i64, ptr %t290, !tbaa !24
  %t292 = load i64, ptr %l16, !tbaa !24
  %t293 = load i64, ptr @G_2ecompiler_2feval_2eslotBits, !tbaa !24
  store i64 %t293, ptr %l211, !tbaa !24
  %t295 = load i64, ptr %l211, !tbaa !24
  %t296 = load i64, ptr %l211, !tbaa !24
  %t297 = ashr i64 %t292, %t296
  %t300 = icmp eq i64 %t291, %t297
  store i1 %t300, ptr %l203, !tbaa !21
  br label %bb37
bb36:
  store i1 false, ptr %l203, !tbaa !21
  br label %bb37
bb37:
  %t302 = load i1, ptr %l203, !tbaa !21
  br i1 %t302, label %bb38, label %bb39
bb38:
  %t303 = load ptr, ptr %l0, !tbaa !29
  %t304 = load i64, ptr %l16, !tbaa !24
  %t305 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t308 = and i64 %t304, %t305
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erelease(ptr %v0, ptr %t303, i64 %t308)
  br label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb41
bb41:
  %t311 = load ptr, ptr %l0, !tbaa !29
  %t313 = getelementptr %"compiler/eval:Machine", ptr %t311, i32 0, i32 60
  %t314 = load { i64, ptr }, ptr %t313, !tbaa !27
  store { i64, ptr } %t314, ptr %l219, !tbaa !27
  %t315 = load i64, ptr %l15, !tbaa !24
  %t317 = getelementptr { i64, ptr }, ptr %l219, i32 0, i32 1
  %t318 = load ptr, ptr %t317, !tbaa !27
  %t319 = getelementptr i64, ptr %t318, i64 %t315
  store i64 0, ptr %t319, !tbaa !34
  br label %bb260
bb42:
  call void @llvm.memmove.p0.p0.i64(ptr %l221, ptr %l6, i64 176, i1 false)
  %t320 = load { i64, [21 x i64] }, ptr %l221
  %t321 = extractvalue { i64, [21 x i64] } %t320, 0
  %t322 = icmp eq i64 %t321, 3
  br i1 %t322, label %bb43, label %bb44
bb43:
  %t324 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t325 = getelementptr { %"compiler/source:Span", i32 }, ptr %t324, i32 0, i32 1
  %t326 = load i32, ptr %t325
  store i32 %t326, ptr %l17, !tbaa !23
  br label %bb45
bb44:
  br label %bb77
bb45:
  %t328 = load ptr, ptr %l0, !tbaa !29
  %t330 = getelementptr %"compiler/eval:Machine", ptr %t328, i32 0, i32 26
  %t331 = load { i64, ptr }, ptr %t330, !tbaa !27
  store { i64, ptr } %t331, ptr %l225, !tbaa !27
  %t332 = load i64, ptr %l2, !tbaa !24
  %t334 = getelementptr { i64, ptr }, ptr %l225, i32 0, i32 1
  %t335 = load ptr, ptr %t334, !tbaa !27
  %t336 = getelementptr %"compiler/eval:cfn", ptr %t335, i64 %t332
  %t337 = getelementptr %"compiler/eval:cfn", ptr %t336, i32 0, i32 2
  %t338 = load { i64, ptr }, ptr %t337, !tbaa !27
  store { i64, ptr } %t338, ptr %l227, !tbaa !27
  %t339 = load i32, ptr %l17, !tbaa !23
  %t341 = sext i32 %t339 to i64
  %t343 = getelementptr { i64, ptr }, ptr %l227, i32 0, i32 1
  %t344 = load ptr, ptr %t343, !tbaa !27
  %t345 = getelementptr %"compiler/mir:ScopeInfo", ptr %t344, i64 %t341
  %t346 = load %"compiler/mir:ScopeInfo", ptr %t345
  store %"compiler/mir:ScopeInfo" %t346, ptr %l18
  %t348 = getelementptr %"compiler/mir:ScopeInfo", ptr %l18, i32 0, i32 0
  %t349 = load i32, ptr %t348, !range !{i32 0, i32 7}
  store i32 %t349, ptr %l19
  %t351 = load i32, ptr %l19, !range !{i32 0, i32 7}
  %t353 = trunc i64 5 to i32
  %t354 = icmp eq i32 %t351, %t353
  br i1 %t354, label %bb46, label %bb47
bb46:
  br label %bb48
bb47:
  br label %bb49
bb48:
  %t356 = load i64, ptr @G_2ecompiler_2feval_2esInert, !tbaa !24
  store i64 %t356, ptr %l232, !tbaa !24
  br label %bb66
bb49:
  %t358 = load i32, ptr %l19, !range !{i32 0, i32 7}
  %t360 = trunc i64 6 to i32
  %t361 = icmp eq i32 %t358, %t360
  br i1 %t361, label %bb50, label %bb51
bb50:
  br label %bb52
bb51:
  br label %bb53
bb52:
  %t363 = load i64, ptr @G_2ecompiler_2feval_2esBuilder, !tbaa !24
  store i64 %t363, ptr %l232, !tbaa !24
  br label %bb66
bb53:
  %t365 = load i32, ptr %l19, !range !{i32 0, i32 7}
  %t367 = trunc i64 4 to i32
  %t368 = icmp eq i32 %t365, %t367
  br i1 %t368, label %bb54, label %bb55
bb54:
  br label %bb56
bb55:
  br label %bb57
bb56:
  %t370 = load i64, ptr @G_2ecompiler_2feval_2esRegion, !tbaa !24
  store i64 %t370, ptr %l232, !tbaa !24
  br label %bb66
bb57:
  %t372 = load i32, ptr %l19, !range !{i32 0, i32 7}
  %t374 = trunc i64 3 to i32
  %t375 = icmp eq i32 %t372, %t374
  br i1 %t375, label %bb58, label %bb59
bb58:
  br label %bb60
bb59:
  br label %bb61
bb60:
  %t377 = load i64, ptr @G_2ecompiler_2feval_2esJoin, !tbaa !24
  store i64 %t377, ptr %l232, !tbaa !24
  br label %bb66
bb61:
  br i1 true, label %bb62, label %bb63
bb62:
  br label %bb64
bb63:
  br label %bb65
bb64:
  %t379 = load i64, ptr @G_2ecompiler_2feval_2esBlock, !tbaa !24
  store i64 %t379, ptr %l232, !tbaa !24
  br label %bb66
bb65:
  call void @__olang_check_failed(ptr @olang_loc_fe5b662c8cf4b58_7006b7c636f2421c)
  unreachable
bb66:
  %t381 = load i64, ptr %l232, !tbaa !24
  store i64 %t381, ptr %l20, !tbaa !24
  %t382 = load ptr, ptr %l0, !tbaa !29
  %t383 = load i64, ptr %l20, !tbaa !24
  %t386 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enewScope(ptr %v0, ptr %t382, i64 %t383)
  store i64 %t386, ptr %l248
  br label %bb67
bb67:
  %t387 = load i64, ptr %l248, !tbaa !24
  store i64 %t387, ptr %l21, !tbaa !24
  %t388 = load ptr, ptr %l0, !tbaa !29
  %t390 = getelementptr %"compiler/eval:Machine", ptr %t388, i32 0, i32 60
  %t391 = load { i64, ptr }, ptr %t390, !tbaa !27
  store { i64, ptr } %t391, ptr %l250, !tbaa !27
  %t392 = load ptr, ptr %l0, !tbaa !29
  %t394 = getelementptr %"compiler/eval:Machine", ptr %t392, i32 0, i32 58
  %t395 = load { i64, ptr }, ptr %t394, !tbaa !27
  store { i64, ptr } %t395, ptr %l252, !tbaa !27
  %t396 = load i64, ptr %l1, !tbaa !24
  %t398 = getelementptr { i64, ptr }, ptr %l252, i32 0, i32 1
  %t399 = load ptr, ptr %t398, !tbaa !27
  %t400 = getelementptr %"compiler/eval:frame", ptr %t399, i64 %t396
  %t401 = getelementptr %"compiler/eval:frame", ptr %t400, i32 0, i32 4
  %t402 = load i64, ptr %t401, !tbaa !24
  %t403 = load i32, ptr %l17, !tbaa !23
  %t405 = sext i32 %t403 to i64
  %t408 = add i64 %t402, %t405
  %t409 = load i64, ptr %l21, !tbaa !24
  %t412 = getelementptr { i64, ptr }, ptr %l250, i32 0, i32 1
  %t413 = load ptr, ptr %t412, !tbaa !27
  %t414 = getelementptr i64, ptr %t413, i64 %t408
  store i64 %t409, ptr %t414, !tbaa !34
  %t415 = load i64, ptr %l20, !tbaa !24
  %t416 = load i64, ptr @G_2ecompiler_2feval_2esJoin, !tbaa !24
  %t419 = icmp eq i64 %t415, %t416
  br i1 %t419, label %bb68, label %bb69
bb68:
  %t421 = load i64, ptr %l21, !tbaa !24
  %t422 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t425 = and i64 %t421, %t422
  %t427 = getelementptr %"compiler/mir:ScopeInfo", ptr %l18, i32 0, i32 4
  %t428 = load i32, ptr %t427, !tbaa !23
  %t430 = sext i32 %t428 to i64
  store i64 %t430, ptr %l23, !tbaa !24
  %t432 = load ptr, ptr %l0, !tbaa !29
  %t434 = getelementptr %"compiler/eval:Machine", ptr %t432, i32 0, i32 52
  %t438 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v0, ptr %t434, i64 %t425)
  store ptr %t438, ptr %l270
  br label %bb70
bb69:
  br label %bb71
bb70:
  %t439 = load ptr, ptr %l270, !tbaa !29
  %t441 = load i64, ptr %l23, !tbaa !24
  %t444 = getelementptr %"compiler/eval:scope", ptr %t439, i32 0, i32 14
  store i64 %t441, ptr %t444, !tbaa !24
  br label %bb71
bb71:
  %t445 = load i64, ptr %l20, !tbaa !24
  %t446 = load i64, ptr @G_2ecompiler_2feval_2esBuilder, !tbaa !24
  %t449 = icmp eq i64 %t445, %t446
  br i1 %t449, label %bb72, label %bb73
bb72:
  %t451 = load ptr, ptr %l0, !tbaa !29
  %t452 = load i64, ptr @G_2ecompiler_2feval_2eaValue, !tbaa !24
  %t453 = load i64, ptr %l21, !tbaa !24
  %t457 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocate(ptr %v0, ptr %t451, i64 64, i64 %t452, i64 %t453)
  store %"compiler/eval:Ptr" %t457, ptr %l279
  br label %bb74
bb73:
  br label %bb76
bb74:
  %t458 = load %"compiler/eval:Ptr", ptr %l279
  store %"compiler/eval:Ptr" %t458, ptr %l25
  %t459 = load i64, ptr %l21, !tbaa !24
  %t460 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t463 = and i64 %t459, %t460
  %t465 = getelementptr %"compiler/eval:Ptr", ptr %l25, i32 0, i32 0
  %t466 = load i64, ptr %t465, !tbaa !24
  store i64 %t466, ptr %l27, !tbaa !24
  %t468 = load ptr, ptr %l0, !tbaa !29
  %t470 = getelementptr %"compiler/eval:Machine", ptr %t468, i32 0, i32 52
  %t474 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v0, ptr %t470, i64 %t463)
  store ptr %t474, ptr %l287
  br label %bb75
bb75:
  %t475 = load ptr, ptr %l287, !tbaa !29
  %t477 = load i64, ptr %l27, !tbaa !24
  %t480 = getelementptr %"compiler/eval:scope", ptr %t475, i32 0, i32 8
  store i64 %t477, ptr %t480, !tbaa !24
  br label %bb76
bb76:
  br label %bb260
bb77:
  call void @llvm.memmove.p0.p0.i64(ptr %l290, ptr %l6, i64 176, i1 false)
  %t481 = load { i64, [21 x i64] }, ptr %l290
  %t482 = extractvalue { i64, [21 x i64] } %t481, 0
  %t483 = icmp eq i64 %t482, 4
  br i1 %t483, label %bb78, label %bb79
bb78:
  %t485 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t486 = getelementptr { %"compiler/source:Span", i32 }, ptr %t485, i32 0, i32 1
  %t487 = load i32, ptr %t486
  store i32 %t487, ptr %l29, !tbaa !23
  br label %bb80
bb79:
  br label %bb87
bb80:
  %t489 = load ptr, ptr %l0, !tbaa !29
  %t490 = load i64, ptr %l1, !tbaa !24
  %t491 = load i32, ptr %l29, !tbaa !23
  %t493 = sext i32 %t491 to i64
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2edropDefers(ptr %v0, ptr %t489, i64 %t490, i64 %t493, i1 false)
  br label %bb81
bb81:
  %t497 = load ptr, ptr %l0, !tbaa !29
  %t499 = getelementptr %"compiler/eval:Machine", ptr %t497, i32 0, i32 60
  %t500 = load { i64, ptr }, ptr %t499, !tbaa !27
  store { i64, ptr } %t500, ptr %l298, !tbaa !27
  %t501 = load ptr, ptr %l0, !tbaa !29
  %t503 = getelementptr %"compiler/eval:Machine", ptr %t501, i32 0, i32 58
  %t504 = load { i64, ptr }, ptr %t503, !tbaa !27
  store { i64, ptr } %t504, ptr %l300, !tbaa !27
  %t505 = load i64, ptr %l1, !tbaa !24
  %t507 = getelementptr { i64, ptr }, ptr %l300, i32 0, i32 1
  %t508 = load ptr, ptr %t507, !tbaa !27
  %t509 = getelementptr %"compiler/eval:frame", ptr %t508, i64 %t505
  %t510 = getelementptr %"compiler/eval:frame", ptr %t509, i32 0, i32 4
  %t511 = load i64, ptr %t510, !tbaa !24
  %t512 = load i32, ptr %l29, !tbaa !23
  %t514 = sext i32 %t512 to i64
  %t517 = add i64 %t511, %t514
  %t519 = getelementptr { i64, ptr }, ptr %l298, i32 0, i32 1
  %t520 = load ptr, ptr %t519, !tbaa !27
  %t521 = getelementptr i64, ptr %t520, i64 %t517
  %t522 = load i64, ptr %t521, !tbaa !34
  store i64 %t522, ptr %l30, !tbaa !24
  %t524 = load ptr, ptr %l0, !tbaa !29
  %t526 = getelementptr %"compiler/eval:Machine", ptr %t524, i32 0, i32 60
  %t527 = load { i64, ptr }, ptr %t526, !tbaa !27
  store { i64, ptr } %t527, ptr %l308, !tbaa !27
  %t528 = load ptr, ptr %l0, !tbaa !29
  %t530 = getelementptr %"compiler/eval:Machine", ptr %t528, i32 0, i32 58
  %t531 = load { i64, ptr }, ptr %t530, !tbaa !27
  store { i64, ptr } %t531, ptr %l310, !tbaa !27
  %t532 = load i64, ptr %l1, !tbaa !24
  %t534 = getelementptr { i64, ptr }, ptr %l310, i32 0, i32 1
  %t535 = load ptr, ptr %t534, !tbaa !27
  %t536 = getelementptr %"compiler/eval:frame", ptr %t535, i64 %t532
  %t537 = getelementptr %"compiler/eval:frame", ptr %t536, i32 0, i32 4
  %t538 = load i64, ptr %t537, !tbaa !24
  %t539 = load i32, ptr %l29, !tbaa !23
  %t541 = sext i32 %t539 to i64
  %t544 = add i64 %t538, %t541
  %t546 = getelementptr { i64, ptr }, ptr %l308, i32 0, i32 1
  %t547 = load ptr, ptr %t546, !tbaa !27
  %t548 = getelementptr i64, ptr %t547, i64 %t544
  store i64 0, ptr %t548, !tbaa !34
  %t549 = load ptr, ptr %l0, !tbaa !29
  %t550 = load i64, ptr %l30, !tbaa !24
  %t553 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elive(ptr %v0, ptr %t549, i64 %t550)
  store i1 %t553, ptr %l318
  br label %bb82
bb82:
  %t554 = load i1, ptr %l318, !tbaa !21
  br i1 %t554, label %bb83, label %bb84
bb83:
  %t555 = load ptr, ptr %l0, !tbaa !29
  %t557 = getelementptr %"compiler/eval:Machine", ptr %t555, i32 0, i32 62
  %t558 = load i64, ptr %l30, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t557, i64 %t558)
  br label %bb85
bb84:
  br label %bb86
bb85:
  %t561 = load ptr, ptr %l0, !tbaa !29
  %t563 = getelementptr %"compiler/eval:Machine", ptr %t561, i32 0, i32 58
  %t564 = load { i64, ptr }, ptr %t563, !tbaa !27
  store { i64, ptr } %t564, ptr %l323, !tbaa !27
  %t565 = load i64, ptr %l1, !tbaa !24
  %t567 = getelementptr { i64, ptr }, ptr %l323, i32 0, i32 1
  %t568 = load ptr, ptr %t567, !tbaa !27
  %t569 = getelementptr %"compiler/eval:frame", ptr %t568, i64 %t565
  %t570 = getelementptr %"compiler/eval:frame", ptr %t569, i32 0, i32 10
  store i1 true, ptr %t570, !tbaa !21
  br label %ret
bb86:
  br label %bb260
bb87:
  call void @llvm.memmove.p0.p0.i64(ptr %l325, ptr %l6, i64 176, i1 false)
  %t571 = load { i64, [21 x i64] }, ptr %l325
  %t572 = extractvalue { i64, [21 x i64] } %t571, 0
  %t573 = icmp eq i64 %t572, 13
  br i1 %t573, label %bb88, label %bb89
bb88:
  %t575 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t576 = getelementptr { %"compiler/source:Span" }, ptr %t575, i32 0, i32 0
  %t577 = load %"compiler/source:Span", ptr %t576
  store %"compiler/source:Span" %t577, ptr %l31
  br label %bb90
bb89:
  br label %bb92
bb90:
  %t579 = load ptr, ptr %l0, !tbaa !29
  %t580 = load i64, ptr %l1, !tbaa !24
  %t581 = load i64, ptr %l2, !tbaa !24
  %t582 = load %"compiler/source:Span", ptr %l31
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2etraced(ptr %v0, ptr %t579, i64 %t580, i64 %t581, %"compiler/source:Span" %t582)
  br label %bb91
bb91:
  br label %bb260
bb92:
  call void @llvm.memmove.p0.p0.i64(ptr %l332, ptr %l6, i64 176, i1 false)
  %t587 = load { i64, [21 x i64] }, ptr %l332
  %t588 = extractvalue { i64, [21 x i64] } %t587, 0
  %t589 = icmp eq i64 %t588, 18
  br i1 %t589, label %bb93, label %bb94
bb93:
  %t591 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t592 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t591, i32 0, i32 1
  %t593 = load i32, ptr %t592
  store i32 %t593, ptr %l32, !tbaa !23
  %t595 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t596 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t595, i32 0, i32 2
  %t597 = load i32, ptr %t596
  store i32 %t597, ptr %l33, !tbaa !23
  br label %bb95
bb94:
  br label %bb106
bb95:
  %t599 = load i32, ptr %l33, !tbaa !23
  %t600 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t603 = icmp eq i32 %t599, %t600
  br i1 %t603, label %bb96, label %bb97
bb96:
  %t605 = load ptr, ptr %l0, !tbaa !29
  %t606 = load i64, ptr %l1, !tbaa !24
  %t607 = load i32, ptr %l32, !tbaa !23
  %t609 = sext i32 %t607 to i64
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2edropDefers(ptr %v0, ptr %t605, i64 %t606, i64 %t609, i1 true)
  br label %bb98
bb97:
  %t613 = load ptr, ptr %l0, !tbaa !29
  %t615 = getelementptr %"compiler/eval:Machine", ptr %t613, i32 0, i32 1
  %t616 = load i32, ptr %t615, !range !{i32 0, i32 2}
  %t618 = trunc i64 1 to i32
  %t619 = icmp eq i32 %t616, %t618
  br i1 %t619, label %bb99, label %bb100
bb98:
  br label %bb105
bb99:
  %t621 = load ptr, ptr %l0, !tbaa !29
  %t623 = getelementptr %"compiler/eval:Machine", ptr %t621, i32 0, i32 66
  %t624 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t623, i64 %t624)
  br label %bb101
bb100:
  br label %bb104
bb101:
  %t627 = load ptr, ptr %l0, !tbaa !29
  %t629 = getelementptr %"compiler/eval:Machine", ptr %t627, i32 0, i32 67
  %t630 = load i32, ptr %l32, !tbaa !23
  %t632 = sext i32 %t630 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t629, i64 %t632)
  br label %bb102
bb102:
  %t635 = load ptr, ptr %l0, !tbaa !29
  %t637 = getelementptr %"compiler/eval:Machine", ptr %t635, i32 0, i32 68
  %t638 = load i32, ptr %l33, !tbaa !23
  %t640 = sext i32 %t638 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t637, i64 %t640)
  br label %bb103
bb103:
  br label %bb104
bb104:
  br label %bb105
bb105:
  br label %bb260
bb106:
  call void @llvm.memmove.p0.p0.i64(ptr %l357, ptr %l6, i64 176, i1 false)
  %t643 = load { i64, [21 x i64] }, ptr %l357
  %t644 = extractvalue { i64, [21 x i64] } %t643, 0
  %t645 = icmp eq i64 %t644, 5
  br i1 %t645, label %bb107, label %bb108
bb107:
  %t647 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t648 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t647, i32 0, i32 0
  %t649 = load %"compiler/source:Span", ptr %t648
  store %"compiler/source:Span" %t649, ptr %l34
  %t651 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t652 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t651, i32 0, i32 1
  %t653 = load { i64, [1 x i64] }, ptr %t652
  store { i64, [1 x i64] } %t653, ptr %l35
  %t655 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t656 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t655, i32 0, i32 2
  %t657 = load i32, ptr %t656
  store i32 %t657, ptr %l36, !tbaa !23
  %t659 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t660 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t659, i32 0, i32 3
  %t661 = load { i64, [4 x i64] }, ptr %t660
  store { i64, [4 x i64] } %t661, ptr %l37
  br label %bb109
bb108:
  br label %bb136
bb109:
  %t663 = load ptr, ptr %l0, !tbaa !29
  %t664 = load i64, ptr %l2, !tbaa !24
  %t665 = load %"compiler/source:Span", ptr %l34
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eatK(ptr %v0, ptr %t663, i64 %t664, %"compiler/source:Span" %t665)
  br label %bb110
bb110:
  %t669 = load ptr, ptr %l0, !tbaa !29
  %t670 = load i64, ptr %l1, !tbaa !24
  %t671 = load { i64, [1 x i64] }, ptr %l35
  %t675 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escopeOf(ptr %v0, ptr %t669, i64 %t670, { i64, [1 x i64] } %t671)
  store i64 %t675, ptr %l369
  br label %bb111
bb111:
  %t676 = load i64, ptr %l369, !tbaa !24
  store i64 %t676, ptr %l38, !tbaa !24
  %t677 = load ptr, ptr %l0, !tbaa !29
  %t679 = getelementptr %"compiler/eval:Machine", ptr %t677, i32 0, i32 1
  %t680 = load i32, ptr %t679, !range !{i32 0, i32 2}
  %t682 = trunc i64 0 to i32
  %t683 = icmp eq i32 %t680, %t682
  br i1 %t683, label %bb112, label %bb113
bb112:
  %t685 = load i64, ptr %l38, !tbaa !24
  %t686 = load ptr, ptr %l0, !tbaa !29
  %t688 = getelementptr %"compiler/eval:Machine", ptr %t686, i32 0, i32 70
  %t689 = load i64, ptr %t688, !tbaa !24
  %t692 = icmp eq i64 %t685, %t689
  br i1 %t692, label %bb114, label %bb115
bb113:
  store i1 false, ptr %l373, !tbaa !21
  br label %bb121
bb114:
  %t694 = load ptr, ptr %l0, !tbaa !29
  %t696 = getelementptr %"compiler/eval:Machine", ptr %t694, i32 0, i32 73
  %t697 = load i64, ptr %t696, !tbaa !24
  %t699 = icmp sge i64 %t697, 0
  store i1 %t699, ptr %l378, !tbaa !21
  br label %bb116
bb115:
  store i1 false, ptr %l378, !tbaa !21
  br label %bb116
bb116:
  %t701 = load i1, ptr %l378, !tbaa !21
  br i1 %t701, label %bb117, label %bb118
bb117:
  %t702 = load ptr, ptr %l0, !tbaa !29
  %t703 = load i64, ptr %l1, !tbaa !24
  %t706 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2einitFrame(ptr %v0, ptr %t702, i64 %t703)
  store i1 %t706, ptr %l385
  br label %bb119
bb118:
  store i1 false, ptr %l382, !tbaa !21
  br label %bb120
bb119:
  %t707 = load i1, ptr %l385, !tbaa !21
  store i1 %t707, ptr %l382, !tbaa !21
  br label %bb120
bb120:
  %t708 = load i1, ptr %l382, !tbaa !21
  %t709 = xor i1 %t708, true
  store i1 %t709, ptr %l373, !tbaa !21
  br label %bb121
bb121:
  %t711 = load i1, ptr %l373, !tbaa !21
  br i1 %t711, label %bb122, label %bb123
bb122:
  %t712 = load ptr, ptr %l0, !tbaa !29
  %t713 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyDestructor, !tbaa !27
  %t714 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t714, ptr %t712, { i64, ptr } %t713)
  br label %bb124
bb123:
  br label %bb125
bb124:
  br label %ret
bb125:
  %t717 = load ptr, ptr %l0, !tbaa !29
  store ptr %t717, ptr %l389, !tbaa !29
  %t718 = load ptr, ptr %l0, !tbaa !29
  %t719 = load i64, ptr %l1, !tbaa !24
  %t720 = load { i64, [4 x i64] }, ptr %l37
  %t724 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t718, i64 %t719, { i64, [4 x i64] } %t720, i64 1)
  store %"compiler/eval:Ptr" %t724, ptr %l393
  br label %bb126
bb126:
  %t725 = load ptr, ptr %l389, !tbaa !29
  %t726 = load %"compiler/eval:Ptr", ptr %l393
  %t727 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtr(ptr %v0, ptr %t725, %"compiler/eval:Ptr" %t726)
  store %"compiler/eval:Ptr" %t727, ptr %l394
  br label %bb127
bb127:
  %t728 = load %"compiler/eval:Ptr", ptr %l394
  %t729 = load ptr, ptr %l0, !tbaa !29
  %t730 = load i64, ptr %l38, !tbaa !24
  %t731 = load i64, ptr @G_2ecompiler_2feval_2egDtor, !tbaa !24
  %t732 = load i32, ptr %l36, !tbaa !23
  %t734 = sext i32 %t732 to i64
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddReg(ptr %v0, ptr %t729, i64 %t730, i64 %t731, i64 %t734, %"compiler/eval:Ptr" %t728)
  br label %bb128
bb128:
  %t741 = load i64, ptr %l38, !tbaa !24
  %t742 = load ptr, ptr %l0, !tbaa !29
  %t744 = getelementptr %"compiler/eval:Machine", ptr %t742, i32 0, i32 70
  %t745 = load i64, ptr %t744, !tbaa !24
  %t748 = icmp eq i64 %t741, %t745
  br i1 %t748, label %bb129, label %bb130
bb129:
  %t750 = load ptr, ptr %l0, !tbaa !29
  %t752 = getelementptr %"compiler/eval:Machine", ptr %t750, i32 0, i32 73
  %t753 = load i64, ptr %t752, !tbaa !24
  %t755 = icmp sge i64 %t753, 0
  store i1 %t755, ptr %l405, !tbaa !21
  br label %bb131
bb130:
  store i1 false, ptr %l405, !tbaa !21
  br label %bb131
bb131:
  %t757 = load i1, ptr %l405, !tbaa !21
  br i1 %t757, label %bb132, label %bb133
bb132:
  %t758 = load ptr, ptr %l0, !tbaa !29
  %t760 = getelementptr %"compiler/eval:Machine", ptr %t758, i32 0, i32 73
  %t761 = load i64, ptr %t760, !tbaa !24
  store i1 true, ptr %l41, !tbaa !21
  %t763 = load ptr, ptr %l0, !tbaa !29
  %t765 = getelementptr %"compiler/eval:Machine", ptr %t763, i32 0, i32 42
  %t769 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eRefMut_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %v0, ptr %t765, i64 %t761)
  store ptr %t769, ptr %l414
  br label %bb134
bb133:
  br label %bb135
bb134:
  %t770 = load ptr, ptr %l414, !tbaa !29
  %t772 = load i1, ptr %l41, !tbaa !21
  %t775 = getelementptr %"compiler/eval:global", ptr %t770, i32 0, i32 7
  store i1 %t772, ptr %t775, !tbaa !21
  br label %bb135
bb135:
  br label %bb260
bb136:
  call void @llvm.memmove.p0.p0.i64(ptr %l417, ptr %l6, i64 176, i1 false)
  %t776 = load { i64, [21 x i64] }, ptr %l417
  %t777 = extractvalue { i64, [21 x i64] } %t776, 0
  %t778 = icmp eq i64 %t777, 6
  br i1 %t778, label %bb137, label %bb138
bb137:
  %t780 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t781 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue" }, ptr %t780, i32 0, i32 0
  %t782 = load %"compiler/source:Span", ptr %t781
  store %"compiler/source:Span" %t782, ptr %l43
  %t784 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t785 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue" }, ptr %t784, i32 0, i32 1
  %t786 = load %"compiler/mir:Lvalue", ptr %t785
  store %"compiler/mir:Lvalue" %t786, ptr %l44
  br label %bb143
bb138:
  call void @llvm.memmove.p0.p0.i64(ptr %l421, ptr %l6, i64 176, i1 false)
  %t788 = load { i64, [21 x i64] }, ptr %l421
  %t789 = extractvalue { i64, [21 x i64] } %t788, 0
  %t790 = icmp eq i64 %t789, 7
  br i1 %t790, label %bb139, label %bb140
bb139:
  %t792 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t793 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue" }, ptr %t792, i32 0, i32 0
  %t794 = load %"compiler/source:Span", ptr %t793
  store %"compiler/source:Span" %t794, ptr %l43
  %t796 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t797 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue" }, ptr %t796, i32 0, i32 1
  %t798 = load %"compiler/mir:Lvalue", ptr %t797
  store %"compiler/mir:Lvalue" %t798, ptr %l44
  br label %bb143
bb140:
  call void @llvm.memmove.p0.p0.i64(ptr %l425, ptr %l6, i64 176, i1 false)
  %t800 = load { i64, [21 x i64] }, ptr %l425
  %t801 = extractvalue { i64, [21 x i64] } %t800, 0
  %t802 = icmp eq i64 %t801, 8
  br i1 %t802, label %bb141, label %bb142
bb141:
  %t804 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t805 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue" }, ptr %t804, i32 0, i32 0
  %t806 = load %"compiler/source:Span", ptr %t805
  store %"compiler/source:Span" %t806, ptr %l43
  %t808 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t809 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue" }, ptr %t808, i32 0, i32 1
  %t810 = load %"compiler/mir:Lvalue", ptr %t809
  store %"compiler/mir:Lvalue" %t810, ptr %l44
  br label %bb143
bb142:
  br label %bb152
bb143:
  %t812 = load ptr, ptr %l0, !tbaa !29
  %t813 = load i64, ptr %l2, !tbaa !24
  %t814 = load %"compiler/source:Span", ptr %l43
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eatK(ptr %v0, ptr %t812, i64 %t813, %"compiler/source:Span" %t814)
  br label %bb144
bb144:
  %t818 = load ptr, ptr %l0, !tbaa !29
  %t819 = load i64, ptr %l1, !tbaa !24
  %t820 = load %"compiler/mir:Lvalue", ptr %l44
  %t824 = call { %"compiler/eval:Ptr", i32 } @compiler_2feval_2ecompiler_2feval_3aMachine_2eplace(ptr %v0, ptr %t818, i64 %t819, %"compiler/mir:Lvalue" %t820)
  store { %"compiler/eval:Ptr", i32 } %t824, ptr %l435
  br label %bb145
bb145:
  %t825 = load { %"compiler/eval:Ptr", i32 }, ptr %l435
  store { %"compiler/eval:Ptr", i32 } %t825, ptr %l45
  %t826 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l45, i32 0, i32 0
  %t827 = load %"compiler/eval:Ptr", ptr %t826
  store %"compiler/eval:Ptr" %t827, ptr %l46
  %t829 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l45, i32 0, i32 1
  %t830 = load i32, ptr %t829, !tbaa !23
  store i32 %t830, ptr %l47, !tbaa !23
  %t832 = load ptr, ptr %l0, !tbaa !29
  %t834 = getelementptr %"compiler/eval:Machine", ptr %t832, i32 0, i32 62
  %t836 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t834)
  store i64 %t836, ptr %l440
  br label %bb146
bb146:
  %t837 = load i64, ptr %l440, !tbaa !24
  store i64 %t837, ptr %l48, !tbaa !24
  %t838 = load ptr, ptr %l0, !tbaa !29
  %t840 = getelementptr %"compiler/eval:Machine", ptr %t838, i32 0, i32 26
  %t841 = load { i64, ptr }, ptr %t840, !tbaa !27
  store { i64, ptr } %t841, ptr %l442, !tbaa !27
  %t842 = load i64, ptr %l2, !tbaa !24
  %t844 = getelementptr { i64, ptr }, ptr %l442, i32 0, i32 1
  %t845 = load ptr, ptr %t844, !tbaa !27
  %t846 = getelementptr %"compiler/eval:cfn", ptr %t845, i64 %t842
  %t847 = getelementptr %"compiler/eval:cfn", ptr %t846, i32 0, i32 7
  %t848 = load { i64, ptr }, ptr %t847, !tbaa !27
  store { i64, ptr } %t848, ptr %l444, !tbaa !27
  %t849 = load i64, ptr %l3, !tbaa !24
  %t851 = getelementptr { i64, ptr }, ptr %l444, i32 0, i32 1
  %t852 = load ptr, ptr %t851, !tbaa !27
  %t853 = getelementptr { i64, [21 x i64] }, ptr %t852, i64 %t849
  call void @llvm.memmove.p0.p0.i64(ptr %l446, ptr %t853, i64 176, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l49, ptr %l446, i64 176, i1 false)
  %t854 = load ptr, ptr %l0, !tbaa !29
  %t855 = load %"compiler/eval:Ptr", ptr %l46
  %t856 = load i32, ptr %l47, !tbaa !23
  call void @llvm.memmove.p0.p0.i64(ptr %l450, ptr %l49, i64 176, i1 false)
  %t857 = load { i64, [21 x i64] }, ptr %l450
  %t858 = extractvalue { i64, [21 x i64] } %t857, 0
  %t859 = icmp eq i64 %t858, 8
  call void @llvm.memmove.p0.p0.i64(ptr %l452, ptr %l49, i64 176, i1 false)
  %t860 = load { i64, [21 x i64] }, ptr %l452
  %t861 = extractvalue { i64, [21 x i64] } %t860, 0
  %t862 = icmp eq i64 %t861, 7
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ereleaseHeld(ptr %v0, ptr %t854, %"compiler/eval:Ptr" %t855, i32 %t856, i1 %t859, i1 %t862)
  br label %bb147
bb147:
  %t868 = load ptr, ptr %l0, !tbaa !29
  %t870 = getelementptr %"compiler/eval:Machine", ptr %t868, i32 0, i32 62
  %t872 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t870)
  store i64 %t872, ptr %l456
  br label %bb148
bb148:
  %t873 = load i64, ptr %l48, !tbaa !24
  %t874 = load i64, ptr %l456, !tbaa !24
  %t876 = icmp sgt i64 %t874, %t873
  br i1 %t876, label %bb149, label %bb150
bb149:
  %t878 = load ptr, ptr %l0, !tbaa !29
  %t880 = getelementptr %"compiler/eval:Machine", ptr %t878, i32 0, i32 58
  %t881 = load { i64, ptr }, ptr %t880, !tbaa !27
  store { i64, ptr } %t881, ptr %l460, !tbaa !27
  %t882 = load i64, ptr %l1, !tbaa !24
  %t884 = getelementptr { i64, ptr }, ptr %l460, i32 0, i32 1
  %t885 = load ptr, ptr %t884, !tbaa !27
  %t886 = getelementptr %"compiler/eval:frame", ptr %t885, i64 %t882
  %t887 = getelementptr %"compiler/eval:frame", ptr %t886, i32 0, i32 10
  store i1 true, ptr %t887, !tbaa !21
  br label %ret
bb150:
  br label %bb151
bb151:
  br label %bb260
bb152:
  call void @llvm.memmove.p0.p0.i64(ptr %l462, ptr %l6, i64 176, i1 false)
  %t888 = load { i64, [21 x i64] }, ptr %l462
  %t889 = extractvalue { i64, [21 x i64] } %t888, 0
  %t890 = icmp eq i64 %t889, 9
  br i1 %t890, label %bb153, label %bb154
bb153:
  %t892 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t893 = getelementptr { %"compiler/source:Span", i32, %"compiler/mir:Lvalue" }, ptr %t892, i32 0, i32 0
  %t894 = load %"compiler/source:Span", ptr %t893
  store %"compiler/source:Span" %t894, ptr %l50
  %t896 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t897 = getelementptr { %"compiler/source:Span", i32, %"compiler/mir:Lvalue" }, ptr %t896, i32 0, i32 1
  %t898 = load i32, ptr %t897
  store i32 %t898, ptr %l51, !tbaa !23
  %t900 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t901 = getelementptr { %"compiler/source:Span", i32, %"compiler/mir:Lvalue" }, ptr %t900, i32 0, i32 2
  %t902 = load %"compiler/mir:Lvalue", ptr %t901
  store %"compiler/mir:Lvalue" %t902, ptr %l52
  br label %bb155
bb154:
  br label %bb165
bb155:
  %t904 = load ptr, ptr %l0, !tbaa !29
  %t905 = load i64, ptr %l2, !tbaa !24
  %t906 = load %"compiler/source:Span", ptr %l50
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eatK(ptr %v0, ptr %t904, i64 %t905, %"compiler/source:Span" %t906)
  br label %bb156
bb156:
  %t910 = load ptr, ptr %l0, !tbaa !29
  %t911 = load i64, ptr %l1, !tbaa !24
  %t912 = load %"compiler/mir:Lvalue", ptr %l52
  %t916 = call { %"compiler/eval:Ptr", i32 } @compiler_2feval_2ecompiler_2feval_3aMachine_2eplace(ptr %v0, ptr %t910, i64 %t911, %"compiler/mir:Lvalue" %t912)
  store { %"compiler/eval:Ptr", i32 } %t916, ptr %l473
  br label %bb157
bb157:
  %t917 = load { %"compiler/eval:Ptr", i32 }, ptr %l473
  store { %"compiler/eval:Ptr", i32 } %t917, ptr %l53
  %t918 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l53, i32 0, i32 0
  %t919 = load %"compiler/eval:Ptr", ptr %t918
  store %"compiler/eval:Ptr" %t919, ptr %l54
  %t921 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l53, i32 0, i32 1
  %t922 = load i32, ptr %t921, !tbaa !23
  store i32 %t922, ptr %l55, !tbaa !23
  %t924 = load ptr, ptr %l0, !tbaa !29
  %t926 = getelementptr %"compiler/eval:Machine", ptr %t924, i32 0, i32 62
  %t928 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t926)
  store i64 %t928, ptr %l478
  br label %bb158
bb158:
  %t929 = load i64, ptr %l478, !tbaa !24
  store i64 %t929, ptr %l56, !tbaa !24
  %t930 = load ptr, ptr %l0, !tbaa !29
  store ptr %t930, ptr %l479, !tbaa !29
  %t931 = load ptr, ptr %l0, !tbaa !29
  %t932 = load i64, ptr %l1, !tbaa !24
  %t933 = load i32, ptr %l51, !tbaa !23
  %t937 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eheldScope(ptr %v0, ptr %t931, i64 %t932, i32 %t933)
  store i64 %t937, ptr %l483
  br label %bb159
bb159:
  %t938 = load %"compiler/eval:Ptr", ptr %l54
  %t939 = load i32, ptr %l55, !tbaa !23
  %t940 = load ptr, ptr %l479, !tbaa !29
  %t941 = load i64, ptr %l483, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2esettle(ptr %v0, ptr %t940, i64 %t941, %"compiler/eval:Ptr" %t938, i32 %t939)
  br label %bb160
bb160:
  %t944 = load ptr, ptr %l0, !tbaa !29
  %t946 = getelementptr %"compiler/eval:Machine", ptr %t944, i32 0, i32 62
  %t948 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t946)
  store i64 %t948, ptr %l488
  br label %bb161
bb161:
  %t949 = load i64, ptr %l56, !tbaa !24
  %t950 = load i64, ptr %l488, !tbaa !24
  %t952 = icmp sgt i64 %t950, %t949
  br i1 %t952, label %bb162, label %bb163
bb162:
  %t954 = load ptr, ptr %l0, !tbaa !29
  %t956 = getelementptr %"compiler/eval:Machine", ptr %t954, i32 0, i32 58
  %t957 = load { i64, ptr }, ptr %t956, !tbaa !27
  store { i64, ptr } %t957, ptr %l492, !tbaa !27
  %t958 = load i64, ptr %l1, !tbaa !24
  %t960 = getelementptr { i64, ptr }, ptr %l492, i32 0, i32 1
  %t961 = load ptr, ptr %t960, !tbaa !27
  %t962 = getelementptr %"compiler/eval:frame", ptr %t961, i64 %t958
  %t963 = getelementptr %"compiler/eval:frame", ptr %t962, i32 0, i32 10
  store i1 true, ptr %t963, !tbaa !21
  br label %ret
bb163:
  br label %bb164
bb164:
  br label %bb260
bb165:
  call void @llvm.memmove.p0.p0.i64(ptr %l494, ptr %l6, i64 176, i1 false)
  %t964 = load { i64, [21 x i64] }, ptr %l494
  %t965 = extractvalue { i64, [21 x i64] } %t964, 0
  %t966 = icmp eq i64 %t965, 10
  br i1 %t966, label %bb166, label %bb167
bb166:
  %t968 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t969 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t968, i32 0, i32 0
  %t970 = load %"compiler/source:Span", ptr %t969
  store %"compiler/source:Span" %t970, ptr %l57
  %t972 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t973 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t972, i32 0, i32 1
  %t974 = load { i64, [1 x i64] }, ptr %t973
  store { i64, [1 x i64] } %t974, ptr %l58
  %t976 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t977 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t976, i32 0, i32 2
  %t978 = load i32, ptr %t977, !range !{i32 0, i32 8}
  store i32 %t978, ptr %l59
  %t980 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t981 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t980, i32 0, i32 3
  %t982 = load { i64, [4 x i64] }, ptr %t981
  store { i64, [4 x i64] } %t982, ptr %l60
  br label %bb168
bb167:
  br label %bb171
bb168:
  %t984 = load ptr, ptr %l0, !tbaa !29
  %t985 = load i64, ptr %l2, !tbaa !24
  %t986 = load %"compiler/source:Span", ptr %l57
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eatK(ptr %v0, ptr %t984, i64 %t985, %"compiler/source:Span" %t986)
  br label %bb169
bb169:
  %t990 = load ptr, ptr %l0, !tbaa !29
  %t991 = load i64, ptr %l1, !tbaa !24
  %t992 = load { i64, [1 x i64] }, ptr %l58
  %t993 = load i32, ptr %l59, !range !{i32 0, i32 8}
  %t994 = load { i64, [4 x i64] }, ptr %l60
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrite(ptr %v0, ptr %t990, i64 %t991, { i64, [1 x i64] } %t992, i32 %t993, { i64, [4 x i64] } %t994)
  br label %bb170
bb170:
  br label %bb260
bb171:
  call void @llvm.memmove.p0.p0.i64(ptr %l508, ptr %l6, i64 176, i1 false)
  %t1000 = load { i64, [21 x i64] }, ptr %l508
  %t1001 = extractvalue { i64, [21 x i64] } %t1000, 0
  %t1002 = icmp eq i64 %t1001, 14
  br i1 %t1002, label %bb172, label %bb173
bb172:
  %t1004 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t1005 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] } }, ptr %t1004, i32 0, i32 0
  %t1006 = load %"compiler/source:Span", ptr %t1005
  store %"compiler/source:Span" %t1006, ptr %l61
  %t1008 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t1009 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] } }, ptr %t1008, i32 0, i32 1
  %t1010 = load { i64, [4 x i64] }, ptr %t1009
  store { i64, [4 x i64] } %t1010, ptr %l62
  br label %bb174
bb173:
  br label %bb185
bb174:
  %t1012 = load ptr, ptr %l0, !tbaa !29
  %t1013 = load i64, ptr %l2, !tbaa !24
  %t1014 = load %"compiler/source:Span", ptr %l61
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eatK(ptr %v0, ptr %t1012, i64 %t1013, %"compiler/source:Span" %t1014)
  br label %bb175
bb175:
  %t1018 = load ptr, ptr %l0, !tbaa !29
  %t1020 = getelementptr %"compiler/eval:Machine", ptr %t1018, i32 0, i32 13
  %t1022 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aPtr_3e_2eLen_3ccompiler_2feval_3aPtr_3e(ptr %v0, ptr %t1020)
  store i64 %t1022, ptr %l517
  br label %bb176
bb176:
  %t1023 = load i64, ptr %l517, !tbaa !24
  %t1024 = icmp eq i64 %t1023, 0
  br i1 %t1024, label %bb177, label %bb178
bb177:
  %t1026 = load ptr, ptr %l0, !tbaa !29
  %t1027 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNotModelled, !tbaa !27
  %t1028 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t1028, ptr %t1026, { i64, ptr } %t1027)
  br label %bb179
bb178:
  br label %bb180
bb179:
  br label %ret
bb180:
  %t1031 = load ptr, ptr %l0, !tbaa !29
  %t1033 = getelementptr %"compiler/eval:Machine", ptr %t1031, i32 0, i32 13
  store ptr %t1033, ptr %l522, !tbaa !29
  %t1034 = load ptr, ptr %l0, !tbaa !29
  %t1036 = getelementptr %"compiler/eval:Machine", ptr %t1034, i32 0, i32 13
  %t1038 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aPtr_3e_2eLen_3ccompiler_2feval_3aPtr_3e(ptr %v0, ptr %t1036)
  store i64 %t1038, ptr %l525
  br label %bb181
bb181:
  %t1039 = load i64, ptr %l525, !tbaa !24
  %t1040 = sub i64 %t1039, 1
  store i64 %t1040, ptr %l526, !tbaa !24
  %t1041 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1041, ptr %l527, !tbaa !29
  %t1042 = load ptr, ptr %l0, !tbaa !29
  %t1043 = load i64, ptr %l1, !tbaa !24
  %t1044 = load { i64, [4 x i64] }, ptr %l62
  %t1048 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t1042, i64 %t1043, { i64, [4 x i64] } %t1044, i64 1)
  store %"compiler/eval:Ptr" %t1048, ptr %l531
  br label %bb182
bb182:
  %t1049 = load ptr, ptr %l527, !tbaa !29
  %t1050 = load %"compiler/eval:Ptr", ptr %l531
  %t1051 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtr(ptr %v0, ptr %t1049, %"compiler/eval:Ptr" %t1050)
  store %"compiler/eval:Ptr" %t1051, ptr %l532
  br label %bb183
bb183:
  %t1052 = load ptr, ptr %l522, !tbaa !29
  %t1053 = load i64, ptr %l526, !tbaa !24
  %t1054 = load %"compiler/eval:Ptr", ptr %l532
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aPtr_3e_2eSetAt_3ccompiler_2feval_3aPtr_3e(ptr %v0, ptr %t1052, i64 %t1053, %"compiler/eval:Ptr" %t1054)
  br label %bb184
bb184:
  br label %bb260
bb185:
  call void @llvm.memmove.p0.p0.i64(ptr %l533, ptr %l6, i64 176, i1 false)
  %t1055 = load { i64, [21 x i64] }, ptr %l533
  %t1056 = extractvalue { i64, [21 x i64] } %t1055, 0
  %t1057 = icmp eq i64 %t1056, 16
  br i1 %t1057, label %bb186, label %bb187
bb186:
  %t1059 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t1060 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, { i64, [4 x i64] } }, ptr %t1059, i32 0, i32 0
  %t1061 = load %"compiler/source:Span", ptr %t1060
  store %"compiler/source:Span" %t1061, ptr %l63
  %t1063 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t1064 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, { i64, [4 x i64] } }, ptr %t1063, i32 0, i32 1
  %t1065 = load { i64, [4 x i64] }, ptr %t1064
  store { i64, [4 x i64] } %t1065, ptr %l64
  %t1067 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t1068 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, { i64, [4 x i64] } }, ptr %t1067, i32 0, i32 2
  %t1069 = load { i64, [4 x i64] }, ptr %t1068
  store { i64, [4 x i64] } %t1069, ptr %l65
  br label %bb188
bb187:
  br label %bb198
bb188:
  %t1071 = load ptr, ptr %l0, !tbaa !29
  %t1072 = load i64, ptr %l2, !tbaa !24
  %t1073 = load %"compiler/source:Span", ptr %l63
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eatK(ptr %v0, ptr %t1071, i64 %t1072, %"compiler/source:Span" %t1073)
  br label %bb189
bb189:
  %t1077 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1077, ptr %l541, !tbaa !29
  %t1078 = load ptr, ptr %l0, !tbaa !29
  %t1079 = load i64, ptr %l1, !tbaa !24
  %t1080 = load { i64, [4 x i64] }, ptr %l65
  %t1084 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %t1078, i64 %t1079, { i64, [4 x i64] } %t1080)
  store i64 %t1084, ptr %l545
  br label %bb190
bb190:
  %t1085 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  %t1086 = load ptr, ptr %l541, !tbaa !29
  %t1087 = load i64, ptr %l545, !tbaa !24
  %t1089 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintValue(ptr %v0, ptr %t1086, i64 %t1087, i32 %t1085)
  store i64 %t1089, ptr %l547
  br label %bb191
bb191:
  %t1090 = load i64, ptr %l547, !tbaa !24
  store i64 %t1090, ptr %l66, !tbaa !24
  %t1091 = load ptr, ptr %l0, !tbaa !29
  %t1092 = load i64, ptr %l1, !tbaa !24
  %t1093 = load { i64, [4 x i64] }, ptr %l64
  %t1097 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t1091, i64 %t1092, { i64, [4 x i64] } %t1093, i64 1)
  store %"compiler/eval:Ptr" %t1097, ptr %l551
  br label %bb192
bb192:
  %t1098 = load %"compiler/eval:Ptr", ptr %l551
  store %"compiler/eval:Ptr" %t1098, ptr %l67
  %t1099 = load ptr, ptr %l0, !tbaa !29
  %t1101 = getelementptr %"compiler/eval:Machine", ptr %t1099, i32 0, i32 22
  %t1102 = load i1, ptr %t1101, !tbaa !21
  %t1104 = xor i1 %t1102, true
  br i1 %t1104, label %bb193, label %bb194
bb193:
  %t1106 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1106, ptr %l555, !tbaa !29
  %t1107 = load %"compiler/eval:Ptr", ptr %l67
  store %"compiler/eval:Ptr" %t1107, ptr %l556
  %t1108 = load ptr, ptr %l0, !tbaa !29
  %t1109 = load i64, ptr %l1, !tbaa !24
  %t1110 = load { i64, [4 x i64] }, ptr %l64
  %t1114 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t1108, i64 %t1109, { i64, [4 x i64] } %t1110)
  store i32 %t1114, ptr %l560
  br label %bb195
bb194:
  br label %bb197
bb195:
  %t1115 = load i64, ptr %l66, !tbaa !24
  %t1116 = load ptr, ptr %l555, !tbaa !29
  %t1117 = load %"compiler/eval:Ptr", ptr %l556
  %t1118 = load i32, ptr %l560, !tbaa !23
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eholders(ptr %v0, ptr %t1116, %"compiler/eval:Ptr" %t1117, i32 %t1118, i64 %t1115)
  br label %bb196
bb196:
  br label %bb197
bb197:
  br label %bb260
bb198:
  call void @llvm.memmove.p0.p0.i64(ptr %l562, ptr %l6, i64 176, i1 false)
  %t1120 = load { i64, [21 x i64] }, ptr %l562
  %t1121 = extractvalue { i64, [21 x i64] } %t1120, 0
  %t1122 = icmp eq i64 %t1121, 17
  br i1 %t1122, label %bb199, label %bb200
bb199:
  %t1124 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t1125 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, i32, %"compiler/mir:Range" }, ptr %t1124, i32 0, i32 0
  %t1126 = load %"compiler/source:Span", ptr %t1125
  store %"compiler/source:Span" %t1126, ptr %l68
  %t1128 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t1129 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, i32, %"compiler/mir:Range" }, ptr %t1128, i32 0, i32 1
  %t1130 = load { i64, [4 x i64] }, ptr %t1129
  store { i64, [4 x i64] } %t1130, ptr %l69
  %t1132 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t1133 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, i32, %"compiler/mir:Range" }, ptr %t1132, i32 0, i32 2
  %t1134 = load i32, ptr %t1133
  store i32 %t1134, ptr %l70, !tbaa !23
  %t1136 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t1137 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, i32, %"compiler/mir:Range" }, ptr %t1136, i32 0, i32 3
  %t1138 = load %"compiler/mir:Range", ptr %t1137
  store %"compiler/mir:Range" %t1138, ptr %l71
  br label %bb201
bb200:
  br label %bb207
bb201:
  %t1140 = load ptr, ptr %l0, !tbaa !29
  %t1141 = load i64, ptr %l2, !tbaa !24
  %t1142 = load %"compiler/source:Span", ptr %l68
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eatK(ptr %v0, ptr %t1140, i64 %t1141, %"compiler/source:Span" %t1142)
  br label %bb202
bb202:
  %t1146 = load ptr, ptr %l0, !tbaa !29
  %t1148 = getelementptr %"compiler/eval:Machine", ptr %t1146, i32 0, i32 1
  %t1149 = load i32, ptr %t1148, !range !{i32 0, i32 2}
  %t1151 = trunc i64 1 to i32
  %t1152 = icmp eq i32 %t1149, %t1151
  br i1 %t1152, label %bb203, label %bb204
bb203:
  %t1154 = load ptr, ptr %l0, !tbaa !29
  %t1155 = load i64, ptr %l1, !tbaa !24
  %t1156 = load i64, ptr %l2, !tbaa !24
  %t1157 = load { i64, [4 x i64] }, ptr %l69
  %t1158 = load i32, ptr %l70, !tbaa !23
  %t1159 = load %"compiler/mir:Range", ptr %l71
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ereclaim(ptr %v0, ptr %t1154, i64 %t1155, i64 %t1156, { i64, [4 x i64] } %t1157, i32 %t1158, %"compiler/mir:Range" %t1159)
  br label %bb205
bb204:
  br label %bb206
bb205:
  br label %bb206
bb206:
  br label %bb260
bb207:
  call void @llvm.memmove.p0.p0.i64(ptr %l580, ptr %l6, i64 176, i1 false)
  %t1166 = load { i64, [21 x i64] }, ptr %l580
  %t1167 = extractvalue { i64, [21 x i64] } %t1166, 0
  %t1168 = icmp eq i64 %t1167, 15
  br i1 %t1168, label %bb208, label %bb209
bb208:
  %t1170 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t1171 = getelementptr { %"compiler/source:Span" }, ptr %t1170, i32 0, i32 0
  %t1172 = load %"compiler/source:Span", ptr %t1171
  store %"compiler/source:Span" %t1172, ptr %l72
  br label %bb210
bb209:
  br label %bb225
bb210:
  %t1174 = load ptr, ptr %l0, !tbaa !29
  %t1175 = load i64, ptr %l2, !tbaa !24
  %t1176 = load %"compiler/source:Span", ptr %l72
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eatK(ptr %v0, ptr %t1174, i64 %t1175, %"compiler/source:Span" %t1176)
  br label %bb211
bb211:
  %t1180 = load ptr, ptr %l0, !tbaa !29
  %t1182 = getelementptr %"compiler/eval:Machine", ptr %t1180, i32 0, i32 12
  %t1184 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %t1182)
  %t1185 = extractvalue { i32, i64 } %t1184, 1
  %t1186 = extractvalue { i32, i64 } %t1184, 0
  store i32 %t1186, ptr %l590
  %t1187 = icmp ne i32 %t1186, 0
  br i1 %t1187, label %bb213, label %ok.1188, !prof !99
ok.1188:
  store i64 %t1185, ptr %l589
  br label %bb212
bb212:
  %t1189 = load i64, ptr %l589, !tbaa !24
  store i64 %t1189, ptr %l586, !tbaa !24
  br label %bb216
bb213:
  br label %bb214
bb214:
  %t1190 = load ptr, ptr %l0, !tbaa !29
  %t1191 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNotModelled, !tbaa !27
  %t1192 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t1192, ptr %t1190, { i64, ptr } %t1191)
  br label %bb215
bb215:
  br label %ret
bb216:
  %t1195 = load i64, ptr %l586, !tbaa !24
  store i64 %t1195, ptr %l73, !tbaa !24
  %t1196 = load ptr, ptr %l0, !tbaa !29
  %t1198 = getelementptr %"compiler/eval:Machine", ptr %t1196, i32 0, i32 13
  store ptr %t1198, ptr %l594, !tbaa !29
  %t1199 = load ptr, ptr %l0, !tbaa !29
  %t1201 = getelementptr %"compiler/eval:Machine", ptr %t1199, i32 0, i32 13
  %t1203 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aPtr_3e_2eLen_3ccompiler_2feval_3aPtr_3e(ptr %v0, ptr %t1201)
  store i64 %t1203, ptr %l597
  br label %bb217
bb217:
  %t1204 = load i64, ptr %l597, !tbaa !24
  %t1205 = sub i64 %t1204, 1
  %t1206 = load ptr, ptr %l594, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aPtr_3e_2eTruncate_3ccompiler_2feval_3aPtr_3e(ptr %v0, ptr %t1206, i64 %t1205)
  br label %bb218
bb218:
  %t1208 = load ptr, ptr %l0, !tbaa !29
  %t1210 = getelementptr %"compiler/eval:Machine", ptr %t1208, i32 0, i32 62
  %t1212 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t1210)
  store i64 %t1212, ptr %l601
  br label %bb219
bb219:
  %t1213 = load i64, ptr %l601, !tbaa !24
  store i64 %t1213, ptr %l74, !tbaa !24
  %t1214 = load ptr, ptr %l0, !tbaa !29
  %t1215 = load i64, ptr %l73, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecloseRegion(ptr %v0, ptr %t1214, i64 %t1215)
  br label %bb220
bb220:
  %t1218 = load ptr, ptr %l0, !tbaa !29
  %t1220 = getelementptr %"compiler/eval:Machine", ptr %t1218, i32 0, i32 62
  %t1222 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t1220)
  store i64 %t1222, ptr %l606
  br label %bb221
bb221:
  %t1223 = load i64, ptr %l74, !tbaa !24
  %t1224 = load i64, ptr %l606, !tbaa !24
  %t1226 = icmp sgt i64 %t1224, %t1223
  br i1 %t1226, label %bb222, label %bb223
bb222:
  %t1228 = load ptr, ptr %l0, !tbaa !29
  %t1230 = getelementptr %"compiler/eval:Machine", ptr %t1228, i32 0, i32 58
  %t1231 = load { i64, ptr }, ptr %t1230, !tbaa !27
  store { i64, ptr } %t1231, ptr %l610, !tbaa !27
  %t1232 = load i64, ptr %l1, !tbaa !24
  %t1234 = getelementptr { i64, ptr }, ptr %l610, i32 0, i32 1
  %t1235 = load ptr, ptr %t1234, !tbaa !27
  %t1236 = getelementptr %"compiler/eval:frame", ptr %t1235, i64 %t1232
  %t1237 = getelementptr %"compiler/eval:frame", ptr %t1236, i32 0, i32 10
  store i1 true, ptr %t1237, !tbaa !21
  br label %ret
bb223:
  br label %bb224
bb224:
  br label %bb260
bb225:
  call void @llvm.memmove.p0.p0.i64(ptr %l612, ptr %l6, i64 176, i1 false)
  %t1238 = load { i64, [21 x i64] }, ptr %l612
  %t1239 = extractvalue { i64, [21 x i64] } %t1238, 0
  %t1240 = icmp eq i64 %t1239, 11
  br i1 %t1240, label %bb226, label %bb227
bb226:
  %t1242 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t1243 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } }, ptr %t1242, i32 0, i32 0
  %t1244 = load %"compiler/source:Span", ptr %t1243
  store %"compiler/source:Span" %t1244, ptr %l75
  %t1246 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t1247 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } }, ptr %t1246, i32 0, i32 1
  %t1248 = load %"compiler/mir:Lvalue", ptr %t1247
  store %"compiler/mir:Lvalue" %t1248, ptr %l76
  %t1250 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t1251 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } }, ptr %t1250, i32 0, i32 2
  %t1252 = load %"compiler/mir:Lvalue", ptr %t1251
  store %"compiler/mir:Lvalue" %t1252, ptr %l77
  %t1254 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t1255 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } }, ptr %t1254, i32 0, i32 3
  %t1256 = load { i64, [4 x i64] }, ptr %t1255
  store { i64, [4 x i64] } %t1256, ptr %l78
  br label %bb228
bb227:
  br label %bb253
bb228:
  %t1258 = load ptr, ptr %l0, !tbaa !29
  %t1259 = load i64, ptr %l2, !tbaa !24
  %t1260 = load %"compiler/source:Span", ptr %l75
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eatK(ptr %v0, ptr %t1258, i64 %t1259, %"compiler/source:Span" %t1260)
  br label %bb229
bb229:
  %t1264 = load ptr, ptr %l0, !tbaa !29
  %t1265 = load i64, ptr %l1, !tbaa !24
  %t1266 = load %"compiler/mir:Lvalue", ptr %l76
  %t1270 = call { %"compiler/eval:Ptr", i32 } @compiler_2feval_2ecompiler_2feval_3aMachine_2eplace(ptr %v0, ptr %t1264, i64 %t1265, %"compiler/mir:Lvalue" %t1266)
  store { %"compiler/eval:Ptr", i32 } %t1270, ptr %l624
  br label %bb230
bb230:
  %t1271 = load { %"compiler/eval:Ptr", i32 }, ptr %l624
  store { %"compiler/eval:Ptr", i32 } %t1271, ptr %l79
  %t1272 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l79, i32 0, i32 0
  %t1273 = load %"compiler/eval:Ptr", ptr %t1272
  store %"compiler/eval:Ptr" %t1273, ptr %l80
  %t1275 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l79, i32 0, i32 1
  %t1276 = load i32, ptr %t1275, !tbaa !23
  store i32 %t1276, ptr %l81, !tbaa !23
  %t1278 = load ptr, ptr %l0, !tbaa !29
  %t1279 = load i64, ptr %l1, !tbaa !24
  %t1280 = load %"compiler/mir:Lvalue", ptr %l77
  %t1284 = call { %"compiler/eval:Ptr", i32 } @compiler_2feval_2ecompiler_2feval_3aMachine_2eplace(ptr %v0, ptr %t1278, i64 %t1279, %"compiler/mir:Lvalue" %t1280)
  store { %"compiler/eval:Ptr", i32 } %t1284, ptr %l630
  br label %bb231
bb231:
  %t1285 = load { %"compiler/eval:Ptr", i32 }, ptr %l630
  store { %"compiler/eval:Ptr", i32 } %t1285, ptr %l82
  %t1286 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l82, i32 0, i32 0
  %t1287 = load %"compiler/eval:Ptr", ptr %t1286
  store %"compiler/eval:Ptr" %t1287, ptr %l83
  %t1289 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l82, i32 0, i32 1
  %t1290 = load i32, ptr %t1289, !tbaa !23
  store i32 %t1290, ptr %l84, !tbaa !23
  %t1292 = load ptr, ptr %l0, !tbaa !29
  %t1293 = load %"compiler/eval:Ptr", ptr %l80
  %t1294 = load i32, ptr %l81, !tbaa !23
  %t1298 = call { %"compiler/eval:Ptr", i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayView(ptr %v0, ptr %t1292, %"compiler/eval:Ptr" %t1293, i32 %t1294)
  store { %"compiler/eval:Ptr", i64 } %t1298, ptr %l636
  br label %bb232
bb232:
  %t1299 = load { %"compiler/eval:Ptr", i64 }, ptr %l636
  store { %"compiler/eval:Ptr", i64 } %t1299, ptr %l85
  %t1300 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l85, i32 0, i32 0
  %t1301 = load %"compiler/eval:Ptr", ptr %t1300
  store %"compiler/eval:Ptr" %t1301, ptr %l86
  %t1303 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l85, i32 0, i32 1
  %t1304 = load i64, ptr %t1303, !tbaa !24
  store i64 %t1304, ptr %l87, !tbaa !24
  %t1306 = load ptr, ptr %l0, !tbaa !29
  %t1307 = load %"compiler/eval:Ptr", ptr %l83
  %t1308 = load i32, ptr %l84, !tbaa !23
  %t1312 = call { %"compiler/eval:Ptr", i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayView(ptr %v0, ptr %t1306, %"compiler/eval:Ptr" %t1307, i32 %t1308)
  store { %"compiler/eval:Ptr", i64 } %t1312, ptr %l642
  br label %bb233
bb233:
  %t1313 = load { %"compiler/eval:Ptr", i64 }, ptr %l642
  store { %"compiler/eval:Ptr", i64 } %t1313, ptr %l88
  %t1314 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l88, i32 0, i32 0
  %t1315 = load %"compiler/eval:Ptr", ptr %t1314
  store %"compiler/eval:Ptr" %t1315, ptr %l89
  %t1317 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l88, i32 0, i32 1
  %t1318 = load i64, ptr %t1317, !tbaa !24
  store i64 %t1318, ptr %l90, !tbaa !24
  %t1320 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1320, ptr %l645, !tbaa !29
  %t1321 = load ptr, ptr %l0, !tbaa !29
  %t1322 = load i64, ptr %l1, !tbaa !24
  %t1323 = load { i64, [4 x i64] }, ptr %l78
  %t1327 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %t1321, i64 %t1322, { i64, [4 x i64] } %t1323)
  store i64 %t1327, ptr %l649
  br label %bb234
bb234:
  %t1328 = load ptr, ptr %l0, !tbaa !29
  %t1329 = load i64, ptr %l1, !tbaa !24
  %t1330 = load { i64, [4 x i64] }, ptr %l78
  %t1334 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t1328, i64 %t1329, { i64, [4 x i64] } %t1330)
  store i32 %t1334, ptr %l653
  br label %bb235
bb235:
  %t1335 = load ptr, ptr %l645, !tbaa !29
  %t1336 = load i64, ptr %l649, !tbaa !24
  %t1337 = load i32, ptr %l653, !tbaa !23
  %t1338 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintValue(ptr %v0, ptr %t1335, i64 %t1336, i32 %t1337)
  store i64 %t1338, ptr %l654
  br label %bb236
bb236:
  %t1339 = load i64, ptr %l654, !tbaa !24
  store i64 %t1339, ptr %l91, !tbaa !24
  %t1340 = load ptr, ptr %l0, !tbaa !29
  %t1342 = getelementptr %"compiler/eval:Machine", ptr %t1340, i32 0, i32 22
  %t1343 = load i1, ptr %t1342, !tbaa !21
  br i1 %t1343, label %bb237, label %bb238
bb237:
  br label %ret
bb238:
  br label %bb239
bb239:
  %t1345 = load i64, ptr %l91, !tbaa !24
  %t1347 = icmp slt i64 %t1345, 0
  br i1 %t1347, label %bb240, label %bb241
bb240:
  store i1 true, ptr %l659, !tbaa !21
  br label %bb242
bb241:
  %t1349 = load i64, ptr %l91, !tbaa !24
  %t1350 = load i64, ptr %l87, !tbaa !24
  %t1353 = icmp sgt i64 %t1349, %t1350
  store i1 %t1353, ptr %l659, !tbaa !21
  br label %bb242
bb242:
  %t1355 = load i1, ptr %l659, !tbaa !21
  br i1 %t1355, label %bb243, label %bb244
bb243:
  store i1 true, ptr %l663, !tbaa !21
  br label %bb245
bb244:
  %t1356 = load i64, ptr %l91, !tbaa !24
  %t1357 = load i64, ptr %l90, !tbaa !24
  %t1360 = icmp sgt i64 %t1356, %t1357
  store i1 %t1360, ptr %l663, !tbaa !21
  br label %bb245
bb245:
  %t1362 = load i1, ptr %l663, !tbaa !21
  br i1 %t1362, label %bb246, label %bb247
bb246:
  %t1363 = load ptr, ptr %l0, !tbaa !29
  %t1364 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyOutside, !tbaa !27
  %t1365 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t1365, ptr %t1363, { i64, ptr } %t1364)
  br label %bb248
bb247:
  br label %bb249
bb248:
  br label %ret
bb249:
  %t1368 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1368, ptr %l669, !tbaa !29
  %t1369 = load %"compiler/eval:Ptr", ptr %l86
  store %"compiler/eval:Ptr" %t1369, ptr %l670
  %t1370 = load %"compiler/eval:Ptr", ptr %l89
  store %"compiler/eval:Ptr" %t1370, ptr %l671
  %t1371 = load i64, ptr %l91, !tbaa !24
  store i64 %t1371, ptr %l672, !tbaa !24
  %t1372 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1372, ptr %l673, !tbaa !29
  %t1373 = load ptr, ptr %l0, !tbaa !29
  %t1374 = load i32, ptr %l81, !tbaa !23
  %t1377 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eelemOf(ptr %v0, ptr %t1373, i32 %t1374)
  store i32 %t1377, ptr %l676
  br label %bb250
bb250:
  %t1378 = load ptr, ptr %l673, !tbaa !29
  %t1379 = load i32, ptr %l676, !tbaa !23
  %t1380 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t1378, i32 %t1379)
  store i64 %t1380, ptr %l677
  br label %bb251
bb251:
  %t1381 = load i64, ptr %l672, !tbaa !24
  %t1382 = load i64, ptr %l677, !tbaa !24
  %t1383 = mul i64 %t1381, %t1382
  %t1384 = load ptr, ptr %l669, !tbaa !29
  %t1385 = load %"compiler/eval:Ptr", ptr %l670
  %t1386 = load %"compiler/eval:Ptr", ptr %l671
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopy(ptr %v0, ptr %t1384, %"compiler/eval:Ptr" %t1385, %"compiler/eval:Ptr" %t1386, i64 %t1383)
  br label %bb252
bb252:
  br label %bb260
bb253:
  call void @llvm.memmove.p0.p0.i64(ptr %l679, ptr %l6, i64 176, i1 false)
  %t1388 = load { i64, [21 x i64] }, ptr %l679
  %t1389 = extractvalue { i64, [21 x i64] } %t1388, 0
  %t1390 = icmp eq i64 %t1389, 12
  br i1 %t1390, label %bb254, label %bb255
bb254:
  %t1392 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t1393 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t1392, i32 0, i32 0
  %t1394 = load %"compiler/source:Span", ptr %t1393
  store %"compiler/source:Span" %t1394, ptr %l92
  %t1396 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t1397 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t1396, i32 0, i32 1
  %t1398 = load i32, ptr %t1397
  store i32 %t1398, ptr %l93, !tbaa !23
  %t1400 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t1401 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t1400, i32 0, i32 2
  %t1402 = load i32, ptr %t1401
  store i32 %t1402, ptr %l94, !tbaa !23
  br label %bb256
bb255:
  br label %bb259
bb256:
  %t1404 = load ptr, ptr %l0, !tbaa !29
  %t1405 = load i64, ptr %l2, !tbaa !24
  %t1406 = load %"compiler/source:Span", ptr %l92
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eatK(ptr %v0, ptr %t1404, i64 %t1405, %"compiler/source:Span" %t1406)
  br label %bb257
bb257:
  %t1410 = load ptr, ptr %l0, !tbaa !29
  %t1411 = load i64, ptr %l1, !tbaa !24
  %t1412 = load i32, ptr %l93, !tbaa !23
  %t1413 = load i32, ptr %l94, !tbaa !23
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2espawn(ptr %v0, ptr %t1410, i64 %t1411, i32 %t1412, i32 %t1413)
  br label %bb258
bb258:
  br label %bb260
bb259:
  call void @__olang_check_failed(ptr @olang_loc_7f284a3be8281e29_2098fbd9ac092a4d)
  unreachable
bb260:
  %t1418 = load ptr, ptr %l0, !tbaa !29
  %t1420 = getelementptr %"compiler/eval:Machine", ptr %t1418, i32 0, i32 22
  %t1421 = load i1, ptr %t1420, !tbaa !21
  %t1423 = xor i1 %t1421, true
  br i1 %t1423, label %bb261, label %bb262
bb261:
  %t1425 = load ptr, ptr %l0, !tbaa !29
  %t1427 = getelementptr %"compiler/eval:Machine", ptr %t1425, i32 0, i32 58
  %t1428 = load { i64, ptr }, ptr %t1427, !tbaa !27
  store { i64, ptr } %t1428, ptr %l695, !tbaa !27
  %t1429 = load i64, ptr %l1, !tbaa !24
  store i64 %t1429, ptr %l696, !tbaa !24
  %t1430 = load i64, ptr %l696, !tbaa !24
  %t1431 = getelementptr { i64, ptr }, ptr %l695, i32 0, i32 1
  %t1432 = load ptr, ptr %t1431, !tbaa !27
  %t1433 = getelementptr %"compiler/eval:frame", ptr %t1432, i64 %t1430
  %t1434 = getelementptr %"compiler/eval:frame", ptr %t1433, i32 0, i32 2
  %t1435 = load i64, ptr %t1434, !tbaa !24
  %t1437 = add i64 %t1435, 1
  %t1439 = load i64, ptr %l696, !tbaa !24
  %t1440 = getelementptr { i64, ptr }, ptr %l695, i32 0, i32 1
  %t1441 = load ptr, ptr %t1440, !tbaa !27
  %t1442 = getelementptr %"compiler/eval:frame", ptr %t1441, i64 %t1439
  %t1443 = getelementptr %"compiler/eval:frame", ptr %t1442, i32 0, i32 2
  store i64 %t1437, ptr %t1443, !tbaa !24
  br label %bb263
bb262:
  br label %bb263
bb263:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2etagOf(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/eval:Ptr"
  %l5 = alloca i64
  %l8 = alloca ptr
  %l11 = alloca i64
  %l13 = alloca i64
  %l16 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store %"compiler/eval:Ptr" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t1, i32 %a2)
  store i64 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i64, ptr @G_2ecompiler_2feval_2evOrd, !tbaa !24
  %t7 = load i64, ptr %l5, !tbaa !24
  %t9 = icmp eq i64 %t7, %t6
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  store ptr %t11, ptr %l8, !tbaa !29
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load %"compiler/eval:Ptr", ptr %l1
  %t16 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t12, %"compiler/eval:Ptr" %t13, i64 4)
  store i64 %t16, ptr %l11
  br label %bb4
bb3:
  br label %bb6
bb4:
  %t17 = load i32, ptr @G_2ecompiler_2fmir_2eI32T, !tbaa !23
  %t18 = load ptr, ptr %l8, !tbaa !29
  %t19 = load i64, ptr %l11, !tbaa !24
  %t21 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintValue(ptr %v0, ptr %t18, i64 %t19, i32 %t17)
  store i64 %t21, ptr %l13
  br label %bb5
bb5:
  %t22 = load i64, ptr %l13, !tbaa !24
  store i64 %t22, ptr %rv
  br label %ret
bb6:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load %"compiler/eval:Ptr", ptr %l1
  %t27 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t23, %"compiler/eval:Ptr" %t24, i64 8)
  store i64 %t27, ptr %l16
  br label %bb7
bb7:
  %t28 = load i64, ptr %l16, !tbaa !24
  store i64 %t28, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { { i64, ptr }, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2etaskLayout(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/mir:Task" %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/mir:Task"
  %l4 = alloca { i64, ptr }
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca { { i64, ptr }, i64 }
  %lp12 = alloca ptr
  %l15 = alloca i64
  %l23 = alloca i32
  %l26 = alloca i32
  %l44 = alloca i32
  %l45 = alloca ptr
  %l46 = alloca i64
  %l54 = alloca { i64, [4 x i64] }
  %l55 = alloca i32
  %l60 = alloca { { i64, ptr }, i64 }
  %l61 = alloca { i64, ptr }
  %l62 = alloca i64
  %l63 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { { i64, ptr }, i64 }
  store ptr %a0, ptr %l0
  store %"compiler/mir:Task" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = getelementptr %"compiler/mir:Task", ptr %l2, i32 0, i32 1
  %t2 = getelementptr %"compiler/mir:Range", ptr %t1, i32 0, i32 1
  %t3 = load i32, ptr %t2, !tbaa !23
  %t5 = sext i32 %t3 to i64
  store i64 %t5, ptr %l15, !tbaa !24
  %t6 = load i64, ptr %l15, !tbaa !24
  %t7 = icmp sge i64 %t6, 0
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load i64, ptr %l15, !tbaa !24
  %t10 = icmp sle i64 %t9, 2305843009213693951
  br i1 %t10, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_749f682aa65a479b_d1f85e4e9e0056df)
  unreachable
bb3:
  %t12 = load i64, ptr %l15, !tbaa !24
  %t13 = mul i64 %t12, 4
  %t14 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t13)
  %t15 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t16 = insertvalue { i64, ptr } %t15, ptr %t14, 1
  store { i64, ptr } %t16, ptr %l4, !tbaa !27
  store i32 0, ptr %l5, !tbaa !23
  %t18 = getelementptr %"compiler/mir:Task", ptr %l2, i32 0, i32 1
  %t19 = getelementptr %"compiler/mir:Range", ptr %t18, i32 0, i32 1
  %t20 = load i32, ptr %t19, !tbaa !23
  store i32 %t20, ptr %l6, !tbaa !23
  store i32 1, ptr %l7, !tbaa !23
  %t22 = load i32, ptr %l6, !tbaa !23
  %t23 = load i32, ptr %l5, !tbaa !23
  %t26 = icmp sgt i32 %t22, %t23
  br i1 %t26, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_749f682aa65a479b_d1f85e4e9e0056df)
  unreachable
bb5:
  %t28 = load i32, ptr %l7, !tbaa !23
  %t30 = icmp sgt i32 %t28, 0
  br i1 %t30, label %bb7, label %bb8
bb6:
  store i32 0, ptr %l23, !tbaa !23
  br label %bb10
bb7:
  %t32 = load i32, ptr %l6, !tbaa !23
  %t33 = load i32, ptr %l5, !tbaa !23
  %t36 = sub i32 %t32, %t33
  %t37 = load i32, ptr %l7, !tbaa !23
  %t40 = add i32 %t36, %t37
  %t42 = sub i32 %t40, 1
  %t43 = load i32, ptr %l7, !tbaa !23
  %t46 = sdiv i32 %t42, %t43
  store i32 %t46, ptr %l26, !tbaa !23
  br label %bb9
bb8:
  store i32 0, ptr %l26, !tbaa !23
  br label %bb9
bb9:
  %t48 = load i32, ptr %l26, !tbaa !23
  store i32 %t48, ptr %l23, !tbaa !23
  br label %bb10
bb10:
  %t49 = load i32, ptr %l23, !tbaa !23
  store i32 %t49, ptr %l8, !tbaa !23
  store i32 0, ptr %l9, !tbaa !23
  br label %bb11
bb11:
  %t50 = load i32, ptr %l9, !tbaa !23
  %t51 = load i32, ptr %l8, !tbaa !23
  %t54 = icmp slt i32 %t50, %t51
  %t56 = xor i1 %t54, true
  br i1 %t56, label %bb12, label %bb13
bb12:
  br label %bb18
bb13:
  br label %bb14
bb14:
  %t58 = load i32, ptr %l5, !tbaa !23
  %t59 = load i32, ptr %l9, !tbaa !23
  %t60 = load i32, ptr %l7, !tbaa !23
  %t63 = mul i32 %t59, %t60
  %t66 = add i32 %t58, %t63
  store i32 %t66, ptr %l10, !tbaa !23
  %t68 = load i32, ptr %l10, !tbaa !23
  store i32 %t68, ptr %l44, !tbaa !23
  %t69 = load ptr, ptr %l0, !tbaa !29
  store ptr %t69, ptr %l45, !tbaa !29
  store i64 %a3, ptr %l46, !tbaa !24
  %t73 = getelementptr %"compiler/mir:Fn", ptr %a1, i32 0, i32 11
  %t74 = getelementptr %"compiler/mir:Task", ptr %l2, i32 0, i32 1
  %t75 = getelementptr %"compiler/mir:Range", ptr %t74, i32 0, i32 0
  %t76 = load i32, ptr %t75, !tbaa !23
  %t78 = sext i32 %t76 to i64
  %t79 = load i32, ptr %l10, !tbaa !23
  %t81 = sext i32 %t79 to i64
  %t84 = add i64 %t78, %t81
  %t87 = call { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %v1, ptr %t73, i64 %t84)
  store { i64, [4 x i64] } %t87, ptr %l54
  br label %bb15
bb15:
  %t88 = load ptr, ptr %l45, !tbaa !29
  %t89 = load i64, ptr %l46, !tbaa !24
  %t90 = load { i64, [4 x i64] }, ptr %l54
  %t91 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t88, i64 %t89, { i64, [4 x i64] } %t90)
  store i32 %t91, ptr %l55
  br label %bb16
bb16:
  %t92 = load i32, ptr %l55, !tbaa !23
  %t93 = load i32, ptr %l44, !tbaa !23
  %t94 = sext i32 %t93 to i64
  %t95 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !27
  %t97 = getelementptr i32, ptr %t96, i64 %t94
  store i32 %t92, ptr %t97, !tbaa !33
  br label %bb17
bb17:
  %t98 = load i32, ptr %l9, !tbaa !23
  %t100 = add i32 %t98, 1
  store i32 %t100, ptr %l9, !tbaa !23
  br label %bb11
bb18:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t103 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t106 = call { { i64, ptr }, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2epack(ptr %v0, ptr %s0, ptr %s0, ptr %t102, { i64, ptr } %t103)
  store { { i64, ptr }, i64 } %t106, ptr %l60
  br label %bb19
bb19:
  %t107 = load { { i64, ptr }, i64 }, ptr %l60
  store { { i64, ptr }, i64 } %t107, ptr %l11
  %t108 = getelementptr { { i64, ptr }, i64 }, ptr %l11, i32 0, i32 0
  %t109 = load { i64, ptr }, ptr %t108, !tbaa !27
  store { i64, ptr } %t109, ptr %l61, !tbaa !27
  %t110 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t111 = extractvalue { i64, ptr } %t110, 0
  store i64 %t111, ptr %l62, !tbaa !24
  %t112 = load i64, ptr %l62, !tbaa !24
  %t113 = mul i64 %t112, 8
  %t114 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t113)
  %t115 = insertvalue { i64, ptr } undef, i64 %t112, 0
  %t116 = insertvalue { i64, ptr } %t115, ptr %t114, 1
  store { i64, ptr } %t116, ptr %l63, !tbaa !27
  %t117 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t118 = load ptr, ptr %t117, !tbaa !27
  %t119 = getelementptr { i64, ptr }, ptr %l61, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !27
  %t121 = load i64, ptr %l62, !tbaa !24
  %t122 = mul i64 %t121, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t118, ptr %t120, i64 %t122, i1 false)
  %t123 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t123, ptr %lp12
  %t124 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t125 = load ptr, ptr %lp12
  store { i64, ptr } %t124, ptr %t125, !tbaa !27
  %t126 = getelementptr { { i64, ptr }, i64 }, ptr %l11, i32 0, i32 1
  %t127 = load i64, ptr %t126, !tbaa !24
  %t129 = load ptr, ptr %lp12
  %t130 = load { i64, ptr }, ptr %t129, !tbaa !27
  %t133 = insertvalue { { i64, ptr }, i64 } undef, { i64, ptr } %t130, 0
  %t135 = insertvalue { { i64, ptr }, i64 } %t133, i64 %t127, 1
  call void @__olang_scope_close(ptr %s0)
  store { { i64, ptr }, i64 } %t135, ptr %rv
  br label %ret
ret:
  %rr = load { { i64, ptr }, i64 }, ptr %rv
  ret { { i64, ptr }, i64 } %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2etext(ptr %v0, ptr %a0, i64 %a1, %"compiler/eval:Ptr" %a2, { i64, [1 x i64] } %a3, { i64, [1 x i64] } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"compiler/eval:Ptr"
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca %"compiler/eval:Ptr"
  %l12 = alloca i64
  %l16 = alloca i64
  %l19 = alloca i1
  %l22 = alloca i1
  %l29 = alloca %"compiler/eval:scope"
  %l35 = alloca %"compiler/eval:Ptr"
  %l40 = alloca ptr
  %l41 = alloca %"compiler/eval:Ptr"
  %l47 = alloca %"compiler/eval:scope"
  %l49 = alloca %"compiler/eval:Ptr"
  %l54 = alloca ptr
  %l58 = alloca %"compiler/eval:Ptr"
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %t39 = alloca %"compiler/eval:scope", align 8
  %t74 = alloca %"compiler/eval:scope", align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store %"compiler/eval:Ptr" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t7 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escopeOf(ptr %v0, ptr %t1, i64 %t2, { i64, [1 x i64] } %a3)
  store i64 %t7, ptr %l12
  br label %bb1
bb1:
  %t8 = load i64, ptr %l12, !tbaa !24
  store i64 %t8, ptr %l5, !tbaa !24
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load i64, ptr %l1, !tbaa !24
  %t15 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ebuildScope(ptr %v0, ptr %t9, i64 %t10, { i64, [1 x i64] } %a4)
  store i64 %t15, ptr %l16
  br label %bb2
bb2:
  %t16 = load i64, ptr %l16, !tbaa !24
  store i64 %t16, ptr %l6, !tbaa !24
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/eval:Machine", ptr %t17, i32 0, i32 22
  %t20 = load i1, ptr %t19, !tbaa !21
  br i1 %t20, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l19, !tbaa !21
  br label %bb6
bb4:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load i64, ptr %l5, !tbaa !24
  %t26 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elive(ptr %v0, ptr %t22, i64 %t23)
  store i1 %t26, ptr %l22
  br label %bb5
bb5:
  %t27 = load i1, ptr %l22, !tbaa !21
  %t28 = xor i1 %t27, true
  store i1 %t28, ptr %l19, !tbaa !21
  br label %bb6
bb6:
  %t30 = load i1, ptr %l19, !tbaa !21
  br i1 %t30, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb8:
  br label %bb9
bb9:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/eval:Machine", ptr %t31, i32 0, i32 52
  %t34 = load i64, ptr %l5, !tbaa !24
  %t35 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t38 = and i64 %t34, %t35
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t39, ptr %v0, ptr %t33, i64 %t38)
  call void @llvm.memmove.p0.p0.i64(ptr %l29, ptr %t39, i64 152, i1 false)
  br label %bb10
bb10:
  %t42 = getelementptr %"compiler/eval:scope", ptr %l29, i32 0, i32 9
  %t43 = load i64, ptr %t42, !tbaa !24
  store i64 %t43, ptr %l7, !tbaa !24
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load i64, ptr %l7, !tbaa !24
  %t47 = load i64, ptr @G_2ecompiler_2feval_2eaValue, !tbaa !24
  %t48 = load i64, ptr %l6, !tbaa !24
  %t53 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocate(ptr %v0, ptr %t45, i64 %t46, i64 %t47, i64 %t48)
  store %"compiler/eval:Ptr" %t53, ptr %l35
  br label %bb11
bb11:
  %t54 = load %"compiler/eval:Ptr", ptr %l35
  store %"compiler/eval:Ptr" %t54, ptr %l8
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/eval:Machine", ptr %t55, i32 0, i32 22
  %t58 = load i1, ptr %t57, !tbaa !21
  br i1 %t58, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb13:
  br label %bb14
bb14:
  %t60 = load i64, ptr %l7, !tbaa !24
  %t62 = icmp sgt i64 %t60, 0
  br i1 %t62, label %bb15, label %bb16
bb15:
  store %olang.scope zeroinitializer, ptr %s3
  %t64 = load ptr, ptr %l0, !tbaa !29
  store ptr %t64, ptr %l40, !tbaa !29
  %t65 = load %"compiler/eval:Ptr", ptr %l8
  store %"compiler/eval:Ptr" %t65, ptr %l41
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/eval:Machine", ptr %t66, i32 0, i32 52
  %t69 = load i64, ptr %l5, !tbaa !24
  %t70 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t73 = and i64 %t69, %t70
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t74, ptr %v0, ptr %t68, i64 %t73)
  call void @llvm.memmove.p0.p0.i64(ptr %l47, ptr %t74, i64 152, i1 false)
  br label %bb17
bb16:
  br label %bb20
bb17:
  %t77 = getelementptr %"compiler/eval:scope", ptr %l47, i32 0, i32 8
  %t78 = load i64, ptr %t77, !tbaa !24
  %t80 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s3, i64 %t78, i64 0)
  store %"compiler/eval:Ptr" %t80, ptr %l49
  br label %bb18
bb18:
  %t81 = load i64, ptr %l7, !tbaa !24
  %t82 = load ptr, ptr %l40, !tbaa !29
  %t83 = load %"compiler/eval:Ptr", ptr %l41
  %t84 = load %"compiler/eval:Ptr", ptr %l49
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopy(ptr %v0, ptr %t82, %"compiler/eval:Ptr" %t83, %"compiler/eval:Ptr" %t84, i64 %t81)
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s3)
  br label %bb20
bb20:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t87 = load %"compiler/eval:Ptr", ptr %l2
  %t88 = load i64, ptr %l7, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t86, %"compiler/eval:Ptr" %t87, i64 8, i64 %t88)
  br label %bb21
bb21:
  %t92 = load ptr, ptr %l0, !tbaa !29
  store ptr %t92, ptr %l54, !tbaa !29
  %t93 = getelementptr %"compiler/eval:Ptr", ptr %l2, i32 0, i32 0
  %t94 = load i64, ptr %t93, !tbaa !24
  %t95 = getelementptr %"compiler/eval:Ptr", ptr %l2, i32 0, i32 1
  %t96 = load i64, ptr %t95, !tbaa !24
  %t98 = add i64 %t96, 8
  %t101 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s0, i64 %t94, i64 %t98)
  store %"compiler/eval:Ptr" %t101, ptr %l58
  br label %bb22
bb22:
  %t102 = load %"compiler/eval:Ptr", ptr %l8
  %t103 = load ptr, ptr %l54, !tbaa !29
  %t104 = load %"compiler/eval:Ptr", ptr %l58
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t103, %"compiler/eval:Ptr" %t104, %"compiler/eval:Ptr" %t102)
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2etoTargets(ptr %v0, ptr %a0, i64 %a1, i64 %a2, { i64, [4 x i64] } %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i32
  %l5 = alloca %"compiler/eval:task"
  %l6 = alloca ptr
  %l7 = alloca %"compiler/mir:Task"
  %l8 = alloca { { i64, ptr }, i64 }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca %"compiler/eval:Ptr"
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca %"compiler/eval:Ptr"
  %l19 = alloca i32
  %l20 = alloca %"compiler/eval:Ptr"
  %l25 = alloca %"compiler/eval:task"
  %l29 = alloca ptr
  %l33 = alloca %"compiler/mir:Task"
  %l39 = alloca { { i64, ptr }, i64 }
  %l48 = alloca %"compiler/eval:Ptr"
  %l53 = alloca i64
  %l56 = alloca i64
  %l74 = alloca ptr
  %l80 = alloca %"compiler/eval:Ptr"
  %l81 = alloca %"compiler/eval:Ptr"
  %l84 = alloca i32
  %l89 = alloca i32
  %l92 = alloca %"compiler/eval:Ptr"
  %l94 = alloca i64
  %l95 = alloca i64
  %l99 = alloca i64
  %l101 = alloca %"compiler/eval:Ptr"
  %l106 = alloca i1
  %l108 = alloca ptr
  %l112 = alloca i32
  %l113 = alloca i32
  %l116 = alloca i1
  %l118 = alloca ptr
  %l122 = alloca i32
  %l123 = alloca i32
  %l125 = alloca ptr
  %l143 = alloca %"compiler/eval:Ptr"
  %l144 = alloca i64
  %l150 = alloca ptr
  %l151 = alloca %"compiler/eval:Ptr"
  %l152 = alloca %"compiler/eval:Ptr"
  %l155 = alloca i64
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i32 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 56
  %t7 = call %"compiler/eval:task" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3atask_3e_2eAt_3ccompiler_2feval_3atask_3e(ptr %v0, ptr %t3, i64 %a2)
  store %"compiler/eval:task" %t7, ptr %l25
  br label %bb1
bb1:
  %t8 = load %"compiler/eval:task", ptr %l25
  store %"compiler/eval:task" %t8, ptr %l5
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/eval:Machine", ptr %t9, i32 0, i32 25
  %t12 = getelementptr %"compiler/eval:task", ptr %l5, i32 0, i32 0
  %t13 = load i64, ptr %t12, !tbaa !24
  %t16 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %v0, ptr %t11, i64 %t13)
  store ptr %t16, ptr %l29
  br label %bb2
bb2:
  %t17 = load ptr, ptr %l29, !tbaa !29
  store ptr %t17, ptr %l6, !tbaa !29
  %t18 = load ptr, ptr %l6, !tbaa !29
  %t20 = getelementptr %"compiler/mir:Fn", ptr %t18, i32 0, i32 16
  %t21 = getelementptr %"compiler/eval:task", ptr %l5, i32 0, i32 1
  %t22 = load i64, ptr %t21, !tbaa !24
  %t25 = call %"compiler/mir:Task" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTask_3e_2eAt_3ccompiler_2fmir_3aTask_3e(ptr %v0, ptr %t20, i64 %t22)
  store %"compiler/mir:Task" %t25, ptr %l33
  br label %bb3
bb3:
  %t26 = load %"compiler/mir:Task", ptr %l33
  store %"compiler/mir:Task" %t26, ptr %l7
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load ptr, ptr %l6, !tbaa !29
  %t29 = load %"compiler/mir:Task", ptr %l7
  %t30 = load i64, ptr %l1, !tbaa !24
  %t32 = sub i64 %t30, 1
  %t37 = call { { i64, ptr }, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2etaskLayout(ptr %v0, ptr %v0, ptr %s0, ptr %t27, ptr %t28, %"compiler/mir:Task" %t29, i64 %t32)
  store { { i64, ptr }, i64 } %t37, ptr %l39
  br label %bb4
bb4:
  %t38 = load { { i64, ptr }, i64 }, ptr %l39
  store { { i64, ptr }, i64 } %t38, ptr %l8
  %t39 = getelementptr { { i64, ptr }, i64 }, ptr %l8, i32 0, i32 1
  %t40 = load i64, ptr %t39, !tbaa !24
  store i64 %t40, ptr %l9, !tbaa !24
  %t42 = getelementptr %"compiler/mir:Task", ptr %l7, i32 0, i32 3
  %t43 = getelementptr %"compiler/mir:Range", ptr %t42, i32 0, i32 1
  %t44 = load i32, ptr %t43, !tbaa !23
  %t46 = sext i32 %t44 to i64
  store i64 %t46, ptr %l10, !tbaa !24
  %t48 = load i64, ptr %l10, !tbaa !24
  %t50 = icmp eq i64 %t48, 0
  br i1 %t50, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb6:
  br label %bb7
bb7:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load i64, ptr %l1, !tbaa !24
  %t58 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t52, i64 %t53, { i64, [4 x i64] } %a3, i64 1)
  store %"compiler/eval:Ptr" %t58, ptr %l48
  br label %bb8
bb8:
  %t59 = load %"compiler/eval:Ptr", ptr %l48
  store %"compiler/eval:Ptr" %t59, ptr %l11
  store i64 0, ptr %l12, !tbaa !24
  %t60 = load i64, ptr %l10, !tbaa !24
  store i64 %t60, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t62 = load i64, ptr %l13, !tbaa !24
  %t63 = load i64, ptr %l12, !tbaa !24
  %t66 = icmp sgt i64 %t62, %t63
  br i1 %t66, label %bb9, label %bb10
bb9:
  %t68 = load i64, ptr %l14, !tbaa !24
  %t70 = icmp sgt i64 %t68, 0
  br i1 %t70, label %bb11, label %bb12
bb10:
  store i64 0, ptr %l53, !tbaa !24
  br label %bb14
bb11:
  %t72 = load i64, ptr %l13, !tbaa !24
  %t73 = load i64, ptr %l12, !tbaa !24
  %t76 = sub i64 %t72, %t73
  %t77 = load i64, ptr %l14, !tbaa !24
  %t80 = add i64 %t76, %t77
  %t82 = sub i64 %t80, 1
  %t83 = load i64, ptr %l14, !tbaa !24
  %t86 = sdiv i64 %t82, %t83
  store i64 %t86, ptr %l56, !tbaa !24
  br label %bb13
bb12:
  store i64 0, ptr %l56, !tbaa !24
  br label %bb13
bb13:
  %t88 = load i64, ptr %l56, !tbaa !24
  store i64 %t88, ptr %l53, !tbaa !24
  br label %bb14
bb14:
  %t89 = load i64, ptr %l53, !tbaa !24
  store i64 %t89, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb15
bb15:
  store %olang.scope zeroinitializer, ptr %s3
  %t90 = load i64, ptr %l16, !tbaa !24
  %t91 = load i64, ptr %l15, !tbaa !24
  %t94 = icmp slt i64 %t90, %t91
  %t96 = xor i1 %t94, true
  br i1 %t96, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s3)
  br label %bb49
bb17:
  br label %bb18
bb18:
  %t98 = load i64, ptr %l12, !tbaa !24
  %t99 = load i64, ptr %l16, !tbaa !24
  %t100 = load i64, ptr %l14, !tbaa !24
  %t103 = mul i64 %t99, %t100
  %t106 = add i64 %t98, %t103
  store i64 %t106, ptr %l17, !tbaa !24
  %t108 = load ptr, ptr %l0, !tbaa !29
  store ptr %t108, ptr %l74, !tbaa !29
  %t109 = getelementptr %"compiler/eval:task", ptr %l5, i32 0, i32 2
  %t110 = load i64, ptr %t109, !tbaa !24
  %t111 = load i64, ptr %l9, !tbaa !24
  %t112 = load i64, ptr %l17, !tbaa !24
  %t114 = mul i64 8, %t112
  %t117 = add i64 %t111, %t114
  %t120 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s3, i64 %t110, i64 %t117)
  store %"compiler/eval:Ptr" %t120, ptr %l80
  br label %bb19
bb19:
  %t121 = load ptr, ptr %l74, !tbaa !29
  %t122 = load %"compiler/eval:Ptr", ptr %l80
  %t123 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtr(ptr %v0, ptr %t121, %"compiler/eval:Ptr" %t122)
  store %"compiler/eval:Ptr" %t123, ptr %l81
  br label %bb20
bb20:
  %t124 = load %"compiler/eval:Ptr", ptr %l81
  store %"compiler/eval:Ptr" %t124, ptr %l18
  %t125 = load i64, ptr %l10, !tbaa !24
  %t127 = icmp eq i64 %t125, 1
  br i1 %t127, label %bb21, label %bb22
bb21:
  %t129 = load i32, ptr %l4, !tbaa !23
  store i32 %t129, ptr %l84, !tbaa !23
  br label %bb24
bb22:
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t132 = load i32, ptr %l4, !tbaa !23
  %t133 = load i64, ptr %l17, !tbaa !24
  %t137 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2epartType(ptr %v0, ptr %t131, i32 %t132, i64 %t133)
  store i32 %t137, ptr %l89
  br label %bb23
bb23:
  %t138 = load i32, ptr %l89, !tbaa !23
  store i32 %t138, ptr %l84, !tbaa !23
  br label %bb24
bb24:
  %t139 = load i32, ptr %l84, !tbaa !23
  store i32 %t139, ptr %l19, !tbaa !23
  %t140 = load i64, ptr %l10, !tbaa !24
  %t142 = icmp eq i64 %t140, 1
  br i1 %t142, label %bb25, label %bb26
bb25:
  %t144 = load %"compiler/eval:Ptr", ptr %l11
  store %"compiler/eval:Ptr" %t144, ptr %l92
  br label %bb29
bb26:
  %t146 = getelementptr %"compiler/eval:Ptr", ptr %l11, i32 0, i32 0
  %t147 = load i64, ptr %t146, !tbaa !24
  store i64 %t147, ptr %l94, !tbaa !24
  %t148 = getelementptr %"compiler/eval:Ptr", ptr %l11, i32 0, i32 1
  %t149 = load i64, ptr %t148, !tbaa !24
  store i64 %t149, ptr %l95, !tbaa !24
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t151 = load i32, ptr %l4, !tbaa !23
  %t152 = load i64, ptr %l17, !tbaa !24
  %t156 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2epartOffset(ptr %v0, ptr %t150, i32 %t151, i64 %t152)
  store i64 %t156, ptr %l99
  br label %bb27
bb27:
  %t157 = load i64, ptr %l95, !tbaa !24
  %t158 = load i64, ptr %l99, !tbaa !24
  %t159 = add i64 %t157, %t158
  %t160 = load i64, ptr %l94, !tbaa !24
  %t162 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s3, i64 %t160, i64 %t159)
  store %"compiler/eval:Ptr" %t162, ptr %l101
  br label %bb28
bb28:
  %t163 = load %"compiler/eval:Ptr", ptr %l101
  store %"compiler/eval:Ptr" %t163, ptr %l92
  br label %bb29
bb29:
  %t164 = load %"compiler/eval:Ptr", ptr %l92
  store %"compiler/eval:Ptr" %t164, ptr %l20
  %t165 = load i64, ptr %l17, !tbaa !24
  %t166 = getelementptr %"compiler/mir:Task", ptr %l7, i32 0, i32 7
  %t167 = getelementptr %"compiler/mir:Range", ptr %t166, i32 0, i32 1
  %t168 = load i32, ptr %t167, !tbaa !23
  %t170 = sext i32 %t168 to i64
  %t173 = icmp slt i64 %t165, %t170
  br i1 %t173, label %bb30, label %bb31
bb30:
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t177 = getelementptr %"compiler/eval:Machine", ptr %t175, i32 0, i32 0
  %t178 = load ptr, ptr %t177, !tbaa !29
  store ptr %t178, ptr %l108, !tbaa !29
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t181 = getelementptr %"compiler/eval:Machine", ptr %t179, i32 0, i32 0
  %t182 = load ptr, ptr %t181, !tbaa !29
  %t183 = load i32, ptr %l19, !tbaa !23
  %t186 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t182, i32 %t183)
  store i32 %t186, ptr %l112
  br label %bb32
bb31:
  store i1 false, ptr %l106, !tbaa !21
  br label %bb34
bb32:
  %t187 = load ptr, ptr %l108, !tbaa !29
  %t188 = load i32, ptr %l112, !tbaa !23
  %t189 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t187, i32 %t188)
  store i32 %t189, ptr %l113
  br label %bb33
bb33:
  %t190 = load i32, ptr %l113, !range !{i32 0, i32 33}
  %t192 = trunc i64 19 to i32
  %t193 = icmp eq i32 %t190, %t192
  store i1 %t193, ptr %l106, !tbaa !21
  br label %bb34
bb34:
  %t195 = load i1, ptr %l106, !tbaa !21
  br i1 %t195, label %bb35, label %bb36
bb35:
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t198 = getelementptr %"compiler/eval:Machine", ptr %t196, i32 0, i32 0
  %t199 = load ptr, ptr %t198, !tbaa !29
  store ptr %t199, ptr %l118, !tbaa !29
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t202 = getelementptr %"compiler/eval:Machine", ptr %t200, i32 0, i32 0
  %t203 = load ptr, ptr %t202, !tbaa !29
  %t204 = load i32, ptr %l19, !tbaa !23
  %t207 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t203, i32 %t204)
  store i32 %t207, ptr %l122
  br label %bb37
bb36:
  store i1 false, ptr %l116, !tbaa !21
  br label %bb39
bb37:
  %t208 = load ptr, ptr %l118, !tbaa !29
  %t209 = load i32, ptr %l122, !tbaa !23
  %t210 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t208, i32 %t209)
  store i32 %t210, ptr %l123
  br label %bb38
bb38:
  %t211 = load i32, ptr %l123, !tbaa !23
  %t212 = icmp eq i32 %t211, 0
  store i1 %t212, ptr %l116, !tbaa !21
  br label %bb39
bb39:
  %t214 = load i1, ptr %l116, !tbaa !21
  br i1 %t214, label %bb40, label %bb41
bb40:
  store %olang.scope zeroinitializer, ptr %s4
  %t215 = load ptr, ptr %l0, !tbaa !29
  store ptr %t215, ptr %l125, !tbaa !29
  %t216 = getelementptr %"compiler/eval:task", ptr %l5, i32 0, i32 2
  %t217 = load i64, ptr %t216, !tbaa !24
  %t218 = load i64, ptr %l9, !tbaa !24
  %t219 = load i64, ptr %l10, !tbaa !24
  %t221 = mul i64 8, %t219
  %t224 = add i64 %t218, %t221
  %t225 = getelementptr %"compiler/mir:Task", ptr %l7, i32 0, i32 4
  %t226 = getelementptr %"compiler/mir:Range", ptr %t225, i32 0, i32 1
  %t227 = load i32, ptr %t226, !tbaa !23
  %t229 = sext i32 %t227 to i64
  %t231 = mul i64 16, %t229
  %t234 = add i64 %t224, %t231
  %t235 = getelementptr %"compiler/mir:Task", ptr %l7, i32 0, i32 2
  %t236 = getelementptr %"compiler/mir:Range", ptr %t235, i32 0, i32 1
  %t237 = load i32, ptr %t236, !tbaa !23
  %t239 = sext i32 %t237 to i64
  %t241 = mul i64 8, %t239
  %t244 = add i64 %t234, %t241
  %t246 = add i64 %t244, 16
  %t247 = load i64, ptr %l17, !tbaa !24
  %t249 = mul i64 8, %t247
  %t252 = add i64 %t246, %t249
  %t255 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s4, i64 %t217, i64 %t252)
  store %"compiler/eval:Ptr" %t255, ptr %l143
  br label %bb42
bb41:
  br label %bb45
bb42:
  %t256 = load ptr, ptr %l125, !tbaa !29
  %t257 = load %"compiler/eval:Ptr", ptr %l143
  %t258 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t256, %"compiler/eval:Ptr" %t257, i64 8)
  store i64 %t258, ptr %l144
  br label %bb43
bb43:
  %t259 = load i64, ptr %l144, !tbaa !24
  %t260 = load ptr, ptr %l0, !tbaa !29
  %t261 = load %"compiler/eval:Ptr", ptr %l18
  %t262 = load %"compiler/eval:Ptr", ptr %l20
  %t263 = load i32, ptr %l19, !tbaa !23
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayTarget(ptr %v0, ptr %t260, %"compiler/eval:Ptr" %t261, %"compiler/eval:Ptr" %t262, i32 %t263, i64 %t259)
  br label %bb44
bb44:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s3)
  br label %bb48
bb45:
  %t270 = load ptr, ptr %l0, !tbaa !29
  store ptr %t270, ptr %l150, !tbaa !29
  %t271 = load %"compiler/eval:Ptr", ptr %l18
  store %"compiler/eval:Ptr" %t271, ptr %l151
  %t272 = load %"compiler/eval:Ptr", ptr %l20
  store %"compiler/eval:Ptr" %t272, ptr %l152
  %t273 = load ptr, ptr %l0, !tbaa !29
  %t274 = load i32, ptr %l19, !tbaa !23
  %t277 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t273, i32 %t274)
  store i64 %t277, ptr %l155
  br label %bb46
bb46:
  %t278 = load ptr, ptr %l150, !tbaa !29
  %t279 = load %"compiler/eval:Ptr", ptr %l151
  %t280 = load %"compiler/eval:Ptr", ptr %l152
  %t281 = load i64, ptr %l155, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopy(ptr %v0, ptr %t278, %"compiler/eval:Ptr" %t279, %"compiler/eval:Ptr" %t280, i64 %t281)
  br label %bb47
bb47:
  call void @__olang_scope_close(ptr %s3)
  br label %bb48
bb48:
  %t282 = load i64, ptr %l16, !tbaa !24
  %t284 = add i64 %t282, 1
  store i64 %t284, ptr %l16, !tbaa !24
  br label %bb15
bb49:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2etraced(ptr %v0, ptr %a0, i64 %a1, i64 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l18 = alloca i1
  %l20 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  %l37 = alloca i64
  %l44 = alloca i64
  %l47 = alloca i64
  %l67 = alloca i32
  %l70 = alloca ptr
  %l76 = alloca { i64, ptr }
  %l89 = alloca { i64, ptr }
  %l93 = alloca { i64, ptr }
  %l96 = alloca ptr
  %l98 = alloca { i64, ptr }
  %l103 = alloca ptr
  %l106 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store %"compiler/source:Span" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 58
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l13, !tbaa !27
  %t5 = load i64, ptr %l1, !tbaa !24
  %t7 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !27
  %t9 = getelementptr %"compiler/eval:frame", ptr %t8, i64 %t5
  %t10 = getelementptr %"compiler/eval:frame", ptr %t9, i32 0, i32 16
  %t11 = load i64, ptr %t10, !tbaa !24
  store i64 %t11, ptr %l4, !tbaa !24
  %t13 = load i64, ptr %l4, !tbaa !24
  %t15 = icmp slt i64 %t13, 0
  br i1 %t15, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb3
bb2:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/eval:Machine", ptr %t17, i32 0, i32 58
  %t20 = load { i64, ptr }, ptr %t19, !tbaa !27
  store { i64, ptr } %t20, ptr %l20, !tbaa !27
  %t21 = load i64, ptr %l1, !tbaa !24
  %t23 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !27
  %t25 = getelementptr %"compiler/eval:frame", ptr %t24, i64 %t21
  %t26 = getelementptr %"compiler/eval:frame", ptr %t25, i32 0, i32 17
  %t27 = load i32, ptr %t26, !tbaa !23
  %t28 = getelementptr %"compiler/source:Span", ptr %l3, i32 0, i32 0
  %t29 = load i32, ptr %t28, !tbaa !23
  %t32 = icmp ne i32 %t27, %t29
  store i1 %t32, ptr %l18, !tbaa !21
  br label %bb3
bb3:
  %t34 = load i1, ptr %l18, !tbaa !21
  br i1 %t34, label %bb4, label %bb5
bb4:
  %t35 = load i64, ptr @G_2ecompiler_2feval_2etRaised, !tbaa !24
  store i64 %t35, ptr %l4, !tbaa !24
  br label %bb6
bb5:
  br label %bb6
bb6:
  %t37 = load i64, ptr %l4, !tbaa !24
  %t38 = load i64, ptr @G_2ecompiler_2feval_2etCall, !tbaa !24
  %t41 = icmp ne i64 %t37, %t38
  br i1 %t41, label %bb7, label %bb8
bb7:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/eval:Machine", ptr %t43, i32 0, i32 88
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t45)
  br label %bb9
bb8:
  br label %bb10
bb9:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/eval:Machine", ptr %t47, i32 0, i32 90
  store i64 0, ptr %t49, !tbaa !24
  br label %bb10
bb10:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/eval:Machine", ptr %t50, i32 0, i32 58
  %t53 = load { i64, ptr }, ptr %t52, !tbaa !27
  store { i64, ptr } %t53, ptr %l33, !tbaa !27
  %t54 = load i64, ptr %l1, !tbaa !24
  %t56 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !27
  %t58 = getelementptr %"compiler/eval:frame", ptr %t57, i64 %t54
  %t59 = getelementptr %"compiler/eval:frame", ptr %t58, i32 0, i32 16
  store i64 -1, ptr %t59, !tbaa !24
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/eval:Machine", ptr %t60, i32 0, i32 88
  %t64 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t62)
  store i64 %t64, ptr %l37
  br label %bb11
bb11:
  %t65 = load i64, ptr @G_2ecompiler_2feval_2etraceKept, !tbaa !24
  %t67 = mul i64 4, %t65
  %t68 = load i64, ptr %l37, !tbaa !24
  %t70 = icmp sge i64 %t68, %t67
  br i1 %t70, label %bb12, label %bb13
bb12:
  store i64 0, ptr %l5, !tbaa !24
  store i64 4, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t72 = load i64, ptr %l6, !tbaa !24
  %t73 = load i64, ptr %l5, !tbaa !24
  %t76 = icmp sgt i64 %t72, %t73
  br i1 %t76, label %bb14, label %bb15
bb13:
  br label %bb30
bb14:
  %t78 = load i64, ptr %l7, !tbaa !24
  %t80 = icmp sgt i64 %t78, 0
  br i1 %t80, label %bb16, label %bb17
bb15:
  store i64 0, ptr %l44, !tbaa !24
  br label %bb19
bb16:
  %t82 = load i64, ptr %l6, !tbaa !24
  %t83 = load i64, ptr %l5, !tbaa !24
  %t86 = sub i64 %t82, %t83
  %t87 = load i64, ptr %l7, !tbaa !24
  %t90 = add i64 %t86, %t87
  %t92 = sub i64 %t90, 1
  %t93 = load i64, ptr %l7, !tbaa !24
  %t96 = sdiv i64 %t92, %t93
  store i64 %t96, ptr %l47, !tbaa !24
  br label %bb18
bb17:
  store i64 0, ptr %l47, !tbaa !24
  br label %bb18
bb18:
  %t98 = load i64, ptr %l47, !tbaa !24
  store i64 %t98, ptr %l44, !tbaa !24
  br label %bb19
bb19:
  %t99 = load i64, ptr %l44, !tbaa !24
  store i64 %t99, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb20
bb20:
  %t100 = load i64, ptr %l9, !tbaa !24
  %t101 = load i64, ptr %l8, !tbaa !24
  %t104 = icmp slt i64 %t100, %t101
  %t106 = xor i1 %t104, true
  br i1 %t106, label %bb21, label %bb22
bb21:
  br label %bb29
bb22:
  br label %bb23
bb23:
  %t108 = load i64, ptr %l5, !tbaa !24
  %t109 = load i64, ptr %l9, !tbaa !24
  %t110 = load i64, ptr %l7, !tbaa !24
  %t113 = mul i64 %t109, %t110
  %t116 = add i64 %t108, %t113
  store i64 %t116, ptr %l10, !tbaa !24
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = getelementptr %"compiler/eval:Machine", ptr %t118, i32 0, i32 88
  %t122 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eRemoveAt_3cI64_3e(ptr %v0, ptr %t120, i64 0)
  store i32 %t122, ptr %l67
  %t123 = icmp ne i32 %t122, 0
  br i1 %t123, label %bb25, label %ok.124, !prof !99
ok.124:
  br label %bb24
bb24:
  br label %bb27
bb25:
  br label %bb26
bb26:
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t125 = load i64, ptr %l9, !tbaa !24
  %t127 = add i64 %t125, 1
  store i64 %t127, ptr %l9, !tbaa !24
  br label %bb20
bb29:
  %t129 = load ptr, ptr %l0, !tbaa !29
  store ptr %t129, ptr %l70, !tbaa !29
  %t130 = load ptr, ptr %l70, !tbaa !29
  %t131 = getelementptr %"compiler/eval:Machine", ptr %t130, i32 0, i32 90
  %t132 = load i64, ptr %t131, !tbaa !24
  %t134 = add i64 %t132, 1
  %t136 = load ptr, ptr %l70, !tbaa !29
  %t137 = getelementptr %"compiler/eval:Machine", ptr %t136, i32 0, i32 90
  store i64 %t134, ptr %t137, !tbaa !24
  br label %bb30
bb30:
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t140 = getelementptr %"compiler/eval:Machine", ptr %t138, i32 0, i32 88
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t143 = getelementptr %"compiler/eval:Machine", ptr %t141, i32 0, i32 26
  %t144 = load { i64, ptr }, ptr %t143, !tbaa !27
  store { i64, ptr } %t144, ptr %l76, !tbaa !27
  %t147 = getelementptr { i64, ptr }, ptr %l76, i32 0, i32 1
  %t148 = load ptr, ptr %t147, !tbaa !27
  %t149 = getelementptr %"compiler/eval:cfn", ptr %t148, i64 %a2
  %t150 = getelementptr %"compiler/eval:cfn", ptr %t149, i32 0, i32 0
  %t151 = load i64, ptr %t150, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t140, i64 %t151)
  br label %bb31
bb31:
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr %"compiler/eval:Machine", ptr %t154, i32 0, i32 88
  %t157 = getelementptr %"compiler/source:Span", ptr %l3, i32 0, i32 0
  %t158 = load i32, ptr %t157, !tbaa !23
  %t160 = sext i32 %t158 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t156, i64 %t160)
  br label %bb32
bb32:
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t165 = getelementptr %"compiler/eval:Machine", ptr %t163, i32 0, i32 88
  %t166 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t165, i64 %t166)
  br label %bb33
bb33:
  %t169 = load i64, ptr %l4, !tbaa !24
  %t170 = load i64, ptr @G_2ecompiler_2feval_2etRaised, !tbaa !24
  %t173 = icmp eq i64 %t169, %t170
  br i1 %t173, label %bb34, label %bb35
bb34:
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t177 = getelementptr %"compiler/eval:Machine", ptr %t175, i32 0, i32 25
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t180 = getelementptr %"compiler/eval:Machine", ptr %t178, i32 0, i32 58
  %t181 = load { i64, ptr }, ptr %t180, !tbaa !27
  store { i64, ptr } %t181, ptr %l93, !tbaa !27
  %t182 = load i64, ptr %l1, !tbaa !24
  %t184 = getelementptr { i64, ptr }, ptr %l93, i32 0, i32 1
  %t185 = load ptr, ptr %t184, !tbaa !27
  %t186 = getelementptr %"compiler/eval:frame", ptr %t185, i64 %t182
  %t187 = getelementptr %"compiler/eval:frame", ptr %t186, i32 0, i32 0
  %t188 = load i64, ptr %t187, !tbaa !24
  %t191 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %v0, ptr %t177, i64 %t188)
  store ptr %t191, ptr %l96
  br label %bb36
bb35:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d11, i32 0, i32 1) }, ptr %l89, !tbaa !27
  br label %bb38
bb36:
  %t192 = load %"compiler/source:Span", ptr %l3
  %t193 = load ptr, ptr %l96, !tbaa !29
  %t195 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3aFn_2eRaiseText(ptr %v0, ptr %v0, ptr %t193, %"compiler/source:Span" %t192)
  store { i64, ptr } %t195, ptr %l98
  br label %bb37
bb37:
  %t196 = load { i64, ptr }, ptr %l98, !tbaa !27
  store { i64, ptr } %t196, ptr %l89, !tbaa !27
  br label %bb38
bb38:
  %t197 = load { i64, ptr }, ptr %l89, !tbaa !27
  store { i64, ptr } %t197, ptr %l11, !tbaa !27
  %t198 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t200 = extractvalue { i64, ptr } %t198, 0
  %t202 = icmp sgt i64 %t200, 0
  br i1 %t202, label %bb39, label %bb40
bb39:
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t206 = getelementptr %"compiler/eval:Machine", ptr %t204, i32 0, i32 88
  store ptr %t206, ptr %l103, !tbaa !29
  %t207 = load ptr, ptr %l0, !tbaa !29
  %t209 = getelementptr %"compiler/eval:Machine", ptr %t207, i32 0, i32 89
  %t211 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t209)
  store i64 %t211, ptr %l106
  br label %bb41
bb40:
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t214 = getelementptr %"compiler/eval:Machine", ptr %t212, i32 0, i32 88
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t214, i64 -1)
  br label %bb44
bb41:
  %t216 = load ptr, ptr %l103, !tbaa !29
  %t217 = load i64, ptr %l106, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t216, i64 %t217)
  br label %bb42
bb42:
  %t218 = load ptr, ptr %l0, !tbaa !29
  %t220 = getelementptr %"compiler/eval:Machine", ptr %t218, i32 0, i32 89
  %t221 = load { i64, ptr }, ptr %l11, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t220, { i64, ptr } %t221)
  br label %bb43
bb43:
  br label %bb45
bb44:
  br label %bb45
bb45:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidthOf(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l5 = alloca i64
  %l19 = alloca ptr
  %l23 = alloca i32
  %l24 = alloca i1
  %l25 = alloca i64
  %l27 = alloca ptr
  %l31 = alloca i32
  %l32 = alloca i64
  %l33 = alloca i64
  %l35 = alloca ptr
  %l39 = alloca i32
  %l40 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t1, i32 %t2)
  store i64 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i64, ptr %l5, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  %t7 = load i64, ptr %l2, !tbaa !24
  %t8 = load i64, ptr @G_2ecompiler_2feval_2evBool, !tbaa !24
  %t11 = icmp eq i64 %t7, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  store i64 1, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t14 = load i64, ptr %l2, !tbaa !24
  %t15 = load i64, ptr @G_2ecompiler_2feval_2evOrd, !tbaa !24
  %t18 = icmp eq i64 %t14, %t15
  br i1 %t18, label %bb5, label %bb6
bb5:
  store i64 4, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t21 = load i64, ptr %l2, !tbaa !24
  %t22 = load i64, ptr @G_2ecompiler_2feval_2evPtr, !tbaa !24
  %t25 = icmp eq i64 %t21, %t22
  br i1 %t25, label %bb8, label %bb9
bb8:
  store i64 8, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/eval:Machine", ptr %t28, i32 0, i32 0
  %t31 = load ptr, ptr %t30, !tbaa !29
  store ptr %t31, ptr %l19, !tbaa !29
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/eval:Machine", ptr %t32, i32 0, i32 0
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t36 = load i32, ptr %l1, !tbaa !23
  %t39 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t35, i32 %t36)
  store i32 %t39, ptr %l23
  br label %bb11
bb11:
  %t40 = load ptr, ptr %l19, !tbaa !29
  %t41 = load i32, ptr %l23, !tbaa !23
  %t42 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %t40, i32 %t41)
  store i1 %t42, ptr %l24
  br label %bb12
bb12:
  %t43 = load i1, ptr %l24, !tbaa !21
  br i1 %t43, label %bb13, label %bb14
bb13:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/eval:Machine", ptr %t44, i32 0, i32 0
  %t47 = load ptr, ptr %t46, !tbaa !29
  store ptr %t47, ptr %l27, !tbaa !29
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/eval:Machine", ptr %t48, i32 0, i32 0
  %t51 = load ptr, ptr %t50, !tbaa !29
  %t52 = load i32, ptr %l1, !tbaa !23
  %t55 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t51, i32 %t52)
  store i32 %t55, ptr %l31
  br label %bb15
bb14:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/eval:Machine", ptr %t56, i32 0, i32 0
  %t59 = load ptr, ptr %t58, !tbaa !29
  store ptr %t59, ptr %l35, !tbaa !29
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/eval:Machine", ptr %t60, i32 0, i32 0
  %t63 = load ptr, ptr %t62, !tbaa !29
  %t64 = load i32, ptr %l1, !tbaa !23
  %t67 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t63, i32 %t64)
  store i32 %t67, ptr %l39
  br label %bb18
bb15:
  %t68 = load ptr, ptr %l27, !tbaa !29
  %t69 = load i32, ptr %l31, !tbaa !23
  %t70 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t68, i32 %t69)
  store i64 %t70, ptr %l32
  br label %bb16
bb16:
  %t71 = load i64, ptr %l32, !tbaa !24
  %t72 = call i64 @compiler_2ftypes_2eIntBytes(i64 %t71)
  store i64 %t72, ptr %l33
  br label %bb17
bb17:
  %t73 = load i64, ptr %l33, !tbaa !24
  store i64 %t73, ptr %l25, !tbaa !24
  br label %bb20
bb18:
  %t74 = load ptr, ptr %l35, !tbaa !29
  %t75 = load i32, ptr %l39, !tbaa !23
  %t76 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t74, i32 %t75)
  store i64 %t76, ptr %l40
  br label %bb19
bb19:
  %t77 = load i64, ptr %l40, !tbaa !24
  %t78 = sdiv i64 %t77, 8
  store i64 %t78, ptr %l25, !tbaa !24
  br label %bb20
bb20:
  %t80 = load i64, ptr %l25, !tbaa !24
  store i64 %t80, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, %"compiler/eval:Ptr" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/eval:Ptr"
  %l3 = alloca i64
  %l6 = alloca i64
  %l22 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store %"compiler/eval:Ptr" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eat(ptr %v0, ptr %t1, %"compiler/eval:Ptr" %a1, i64 8, i1 true)
  store i64 %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load i64, ptr %l6, !tbaa !24
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
  %t12 = load i64, ptr %l3, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eunmark(ptr %v0, ptr %t11, i64 %t12, i64 8)
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = getelementptr %"compiler/eval:Ptr", ptr %l2, i32 0, i32 1
  %t18 = load i64, ptr %t17, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrRaw(ptr %v0, ptr %t15, i64 %t16, i64 8, i64 %t18)
  br label %bb6
bb6:
  %t22 = getelementptr %"compiler/eval:Ptr", ptr %l2, i32 0, i32 0
  %t23 = load i64, ptr %t22, !tbaa !24
  %t25 = icmp ne i64 %t23, 0
  br i1 %t25, label %bb7, label %bb8
bb7:
  %t27 = load i64, ptr %l3, !tbaa !24
  %t29 = srem i64 %t27, 8
  %t31 = icmp ne i64 %t29, 0
  br i1 %t31, label %bb9, label %bb10
bb8:
  br label %bb13
bb9:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t34 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNotModelled, !tbaa !27
  %t35 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t35, ptr %t33, { i64, ptr } %t34)
  br label %bb11
bb10:
  br label %bb12
bb11:
  br label %ret
bb12:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/eval:Machine", ptr %t38, i32 0, i32 46
  %t41 = load { i64, ptr }, ptr %t40, !tbaa !27
  store { i64, ptr } %t41, ptr %l22, !tbaa !27
  %t42 = load i64, ptr %l3, !tbaa !24
  %t44 = sdiv i64 %t42, 8
  %t45 = getelementptr %"compiler/eval:Ptr", ptr %l2, i32 0, i32 0
  %t46 = load i64, ptr %t45, !tbaa !24
  %t49 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !27
  %t51 = getelementptr i64, ptr %t50, i64 %t44
  store i64 %t46, ptr %t51, !tbaa !34
  br label %bb13
bb13:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrRaw(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3) #0 {
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
  %l16 = alloca i1
  %l20 = alloca { i64, ptr }
  %l29 = alloca i64
  %l31 = alloca i64
  %l34 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
  %l45 = alloca i64
  %l54 = alloca i64
  %l56 = alloca i64
  %l59 = alloca { i64, ptr }
  %l62 = alloca { i64, ptr }
  %l70 = alloca i64
  %l79 = alloca i64
  %l81 = alloca { i64, ptr }
  %l85 = alloca { i64, ptr }
  %l94 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = ashr i64 %t1, 3
  store i64 %t3, ptr %l4, !tbaa !24
  %t5 = load i64, ptr %l1, !tbaa !24
  %t7 = and i64 %t5, 7
  store i64 %t7, ptr %l5, !tbaa !24
  %t9 = load i64, ptr %l5, !tbaa !24
  %t11 = icmp eq i64 %t9, 0
  br i1 %t11, label %bb1, label %bb2
bb1:
  %t13 = load i64, ptr %l2, !tbaa !24
  %t15 = icmp eq i64 %t13, 8
  store i1 %t15, ptr %l16, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l16, !tbaa !21
  br label %bb3
bb3:
  %t17 = load i1, ptr %l16, !tbaa !21
  br i1 %t17, label %bb4, label %bb5
bb4:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/eval:Machine", ptr %t18, i32 0, i32 45
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !27
  store { i64, ptr } %t21, ptr %l20, !tbaa !27
  %t22 = load i64, ptr %l4, !tbaa !24
  %t23 = load i64, ptr %l3, !tbaa !24
  %t26 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = getelementptr i64, ptr %t27, i64 %t22
  store i64 %t23, ptr %t28, !tbaa !34
  br label %ret
bb5:
  br label %bb6
bb6:
  %t29 = load i64, ptr %l5, !tbaa !24
  %t30 = load i64, ptr %l2, !tbaa !24
  %t33 = add i64 %t29, %t30
  %t35 = icmp sle i64 %t33, 8
  br i1 %t35, label %bb7, label %bb8
bb7:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load i64, ptr %l2, !tbaa !24
  %t41 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2emask(ptr %v0, ptr %t37, i64 %t38)
  store i64 %t41, ptr %l29
  br label %bb9
bb8:
  br label %bb10
bb9:
  %t42 = load i64, ptr %l5, !tbaa !24
  %t44 = mul i64 8, %t42
  store i64 %t44, ptr %l31, !tbaa !24
  %t45 = load i64, ptr %l29, !tbaa !24
  %t46 = load i64, ptr %l31, !tbaa !24
  %t47 = load i64, ptr %l31, !tbaa !24
  %t48 = shl i64 %t45, %t47
  store i64 %t48, ptr %l6, !tbaa !24
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/eval:Machine", ptr %t50, i32 0, i32 45
  %t53 = load { i64, ptr }, ptr %t52, !tbaa !27
  store { i64, ptr } %t53, ptr %l34, !tbaa !27
  %t54 = load i64, ptr %l4, !tbaa !24
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/eval:Machine", ptr %t55, i32 0, i32 45
  %t58 = load { i64, ptr }, ptr %t57, !tbaa !27
  store { i64, ptr } %t58, ptr %l37, !tbaa !27
  %t59 = load i64, ptr %l4, !tbaa !24
  %t61 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !27
  %t63 = getelementptr i64, ptr %t62, i64 %t59
  %t64 = load i64, ptr %t63, !tbaa !34
  %t65 = load i64, ptr %l6, !tbaa !24
  %t67 = xor i64 %t65, -1
  %t70 = and i64 %t64, %t67
  %t71 = load i64, ptr %l3, !tbaa !24
  %t72 = load i64, ptr %l5, !tbaa !24
  %t74 = mul i64 8, %t72
  store i64 %t74, ptr %l45, !tbaa !24
  %t76 = load i64, ptr %l45, !tbaa !24
  %t77 = load i64, ptr %l45, !tbaa !24
  %t78 = shl i64 %t71, %t77
  %t79 = load i64, ptr %l6, !tbaa !24
  %t82 = and i64 %t78, %t79
  %t85 = or i64 %t70, %t82
  %t88 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !27
  %t90 = getelementptr i64, ptr %t89, i64 %t54
  store i64 %t85, ptr %t90, !tbaa !34
  br label %ret
bb10:
  %t91 = load i64, ptr %l5, !tbaa !24
  %t93 = sub i64 8, %t91
  store i64 %t93, ptr %l7, !tbaa !24
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t96 = load i64, ptr %l7, !tbaa !24
  %t99 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2emask(ptr %v0, ptr %t95, i64 %t96)
  store i64 %t99, ptr %l54
  br label %bb11
bb11:
  %t100 = load i64, ptr %l5, !tbaa !24
  %t102 = mul i64 8, %t100
  store i64 %t102, ptr %l56, !tbaa !24
  %t103 = load i64, ptr %l54, !tbaa !24
  %t104 = load i64, ptr %l56, !tbaa !24
  %t105 = load i64, ptr %l56, !tbaa !24
  %t106 = shl i64 %t103, %t105
  store i64 %t106, ptr %l8, !tbaa !24
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/eval:Machine", ptr %t108, i32 0, i32 45
  %t111 = load { i64, ptr }, ptr %t110, !tbaa !27
  store { i64, ptr } %t111, ptr %l59, !tbaa !27
  %t112 = load i64, ptr %l4, !tbaa !24
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t115 = getelementptr %"compiler/eval:Machine", ptr %t113, i32 0, i32 45
  %t116 = load { i64, ptr }, ptr %t115, !tbaa !27
  store { i64, ptr } %t116, ptr %l62, !tbaa !27
  %t117 = load i64, ptr %l4, !tbaa !24
  %t119 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !27
  %t121 = getelementptr i64, ptr %t120, i64 %t117
  %t122 = load i64, ptr %t121, !tbaa !34
  %t123 = load i64, ptr %l8, !tbaa !24
  %t125 = xor i64 %t123, -1
  %t128 = and i64 %t122, %t125
  %t129 = load i64, ptr %l3, !tbaa !24
  %t130 = load i64, ptr %l5, !tbaa !24
  %t132 = mul i64 8, %t130
  store i64 %t132, ptr %l70, !tbaa !24
  %t134 = load i64, ptr %l70, !tbaa !24
  %t135 = load i64, ptr %l70, !tbaa !24
  %t136 = shl i64 %t129, %t135
  %t137 = load i64, ptr %l8, !tbaa !24
  %t140 = and i64 %t136, %t137
  %t143 = or i64 %t128, %t140
  %t146 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t147 = load ptr, ptr %t146, !tbaa !27
  %t148 = getelementptr i64, ptr %t147, i64 %t112
  store i64 %t143, ptr %t148, !tbaa !34
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t150 = load i64, ptr %l2, !tbaa !24
  %t151 = load i64, ptr %l7, !tbaa !24
  %t154 = sub i64 %t150, %t151
  %t157 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2emask(ptr %v0, ptr %t149, i64 %t154)
  store i64 %t157, ptr %l79
  br label %bb12
bb12:
  %t158 = load i64, ptr %l79, !tbaa !24
  store i64 %t158, ptr %l9, !tbaa !24
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t161 = getelementptr %"compiler/eval:Machine", ptr %t159, i32 0, i32 45
  %t162 = load { i64, ptr }, ptr %t161, !tbaa !27
  store { i64, ptr } %t162, ptr %l81, !tbaa !27
  %t163 = load i64, ptr %l4, !tbaa !24
  %t165 = add i64 %t163, 1
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t168 = getelementptr %"compiler/eval:Machine", ptr %t166, i32 0, i32 45
  %t169 = load { i64, ptr }, ptr %t168, !tbaa !27
  store { i64, ptr } %t169, ptr %l85, !tbaa !27
  %t170 = load i64, ptr %l4, !tbaa !24
  %t172 = add i64 %t170, 1
  %t174 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t175 = load ptr, ptr %t174, !tbaa !27
  %t176 = getelementptr i64, ptr %t175, i64 %t172
  %t177 = load i64, ptr %t176, !tbaa !34
  %t178 = load i64, ptr %l9, !tbaa !24
  %t180 = xor i64 %t178, -1
  %t183 = and i64 %t177, %t180
  %t184 = load i64, ptr %l3, !tbaa !24
  %t185 = load i64, ptr %l7, !tbaa !24
  %t187 = mul i64 8, %t185
  store i64 %t187, ptr %l94, !tbaa !24
  %t189 = load i64, ptr %l94, !tbaa !24
  %t190 = load i64, ptr %l94, !tbaa !24
  %t191 = ashr i64 %t184, %t190
  %t192 = load i64, ptr %l9, !tbaa !24
  %t195 = and i64 %t191, %t192
  %t198 = or i64 %t183, %t195
  %t201 = getelementptr { i64, ptr }, ptr %l81, i32 0, i32 1
  %t202 = load ptr, ptr %t201, !tbaa !27
  %t203 = getelementptr i64, ptr %t202, i64 %t165
  store i64 %t198, ptr %t203, !tbaa !34
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2feval_2efibHost(i64 %a0) #0 {
entry:
  %l0 = alloca i64
  %l3 = alloca i64
  %l7 = alloca i64
  %l10 = alloca i64
  %rv = alloca i64
  store i64 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l0, !tbaa !24
  %t3 = icmp slt i64 %t1, 2
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i64, ptr %l0, !tbaa !24
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb5
bb2:
  %t7 = load i64, ptr %l0, !tbaa !24
  %t9 = sub i64 %t7, 1
  %t11 = call i64 @compiler_2feval_2efibHost(i64 %t9)
  store i64 %t11, ptr %l7
  br label %bb3
bb3:
  %t12 = load i64, ptr %l0, !tbaa !24
  %t14 = sub i64 %t12, 2
  %t16 = call i64 @compiler_2feval_2efibHost(i64 %t14)
  store i64 %t16, ptr %l10
  br label %bb4
bb4:
  %t17 = load i64, ptr %l7, !tbaa !24
  %t18 = load i64, ptr %l10, !tbaa !24
  %t19 = add i64 %t17, %t18
  store i64 %t19, ptr %l3, !tbaa !24
  br label %bb5
bb5:
  %t21 = load i64, ptr %l3, !tbaa !24
  store i64 %t21, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2feval_2elz128(i64 %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l10 = alloca i64
  %l16 = alloca i64
  %l19 = alloca i64
  %l43 = alloca i64
  %l46 = alloca i64
  %l50 = alloca i64
  %rv = alloca i64
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l3, !tbaa !24
  store i64 0, ptr %l4, !tbaa !24
  %t1 = load i64, ptr %l2, !tbaa !24
  store i64 %t1, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t3 = load i64, ptr %l5, !tbaa !24
  %t4 = load i64, ptr %l4, !tbaa !24
  %t7 = icmp sgt i64 %t3, %t4
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load i64, ptr %l6, !tbaa !24
  %t11 = icmp sgt i64 %t9, 0
  br i1 %t11, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l16, !tbaa !24
  br label %bb6
bb3:
  %t13 = load i64, ptr %l5, !tbaa !24
  %t14 = load i64, ptr %l4, !tbaa !24
  %t17 = sub i64 %t13, %t14
  %t18 = load i64, ptr %l6, !tbaa !24
  %t21 = add i64 %t17, %t18
  %t23 = sub i64 %t21, 1
  %t24 = load i64, ptr %l6, !tbaa !24
  %t27 = sdiv i64 %t23, %t24
  store i64 %t27, ptr %l19, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb5
bb5:
  %t29 = load i64, ptr %l19, !tbaa !24
  store i64 %t29, ptr %l16, !tbaa !24
  br label %bb6
bb6:
  %t30 = load i64, ptr %l16, !tbaa !24
  store i64 %t30, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb7
bb7:
  %t31 = load i64, ptr %l8, !tbaa !24
  %t32 = load i64, ptr %l7, !tbaa !24
  %t35 = icmp slt i64 %t31, %t32
  %t37 = xor i1 %t35, true
  br i1 %t37, label %bb8, label %bb9
bb8:
  br label %bb18
bb9:
  br label %bb10
bb10:
  %t39 = load i64, ptr %l4, !tbaa !24
  %t40 = load i64, ptr %l8, !tbaa !24
  %t41 = load i64, ptr %l6, !tbaa !24
  %t44 = mul i64 %t40, %t41
  %t47 = add i64 %t39, %t44
  %t49 = load i64, ptr %l2, !tbaa !24
  %t51 = sub i64 %t49, 1
  %t55 = sub i64 %t51, %t47
  store i64 %t55, ptr %l10, !tbaa !24
  %t57 = load i64, ptr %l10, !tbaa !24
  %t59 = icmp sge i64 %t57, 64
  br i1 %t59, label %bb11, label %bb12
bb11:
  %t62 = load i64, ptr %l10, !tbaa !24
  %t64 = sub i64 %t62, 64
  store i64 %t64, ptr %l46, !tbaa !24
  %t66 = load i64, ptr %l46, !tbaa !24
  %t67 = load i64, ptr %l46, !tbaa !24
  %t68 = ashr i64 %a1, %t67
  %t70 = and i64 %t68, 1
  store i64 %t70, ptr %l43, !tbaa !24
  br label %bb13
bb12:
  %t73 = load i64, ptr %l10, !tbaa !24
  store i64 %t73, ptr %l50, !tbaa !24
  %t75 = load i64, ptr %l50, !tbaa !24
  %t76 = load i64, ptr %l50, !tbaa !24
  %t77 = ashr i64 %a0, %t76
  %t79 = and i64 %t77, 1
  store i64 %t79, ptr %l43, !tbaa !24
  br label %bb13
bb13:
  %t81 = load i64, ptr %l43, !tbaa !24
  %t84 = icmp eq i64 %t81, 1
  br i1 %t84, label %bb14, label %bb15
bb14:
  %t86 = load i64, ptr %l3, !tbaa !24
  store i64 %t86, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t88 = load i64, ptr %l3, !tbaa !24
  %t90 = add i64 %t88, 1
  store i64 %t90, ptr %l3, !tbaa !24
  br label %bb17
bb17:
  %t92 = load i64, ptr %l8, !tbaa !24
  %t94 = add i64 %t92, 1
  store i64 %t94, ptr %l8, !tbaa !24
  br label %bb7
bb18:
  %t96 = load i64, ptr %l3, !tbaa !24
  store i64 %t96, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2feval_2eovFn(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i32
  %lp4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca ptr
  %l12 = alloca { i64, ptr }
  %l13 = alloca i32
  %l15 = alloca i32
  %l16 = alloca %"compiler/mir:Fn"
  %l20 = alloca i32
  %l21 = alloca ptr
  %l22 = alloca i32
  %l23 = alloca %"compiler/source:Span"
  %l25 = alloca %"compiler/mir:Lvalue"
  %l26 = alloca i32
  %l27 = alloca i32
  %l28 = alloca ptr
  %l29 = alloca { i64, [4 x i64] }
  %l30 = alloca { i64, [4 x i64] }
  %l31 = alloca { i64, ptr }
  %l32 = alloca %"compiler/mir:Range"
  %l34 = alloca { i64, [21 x i64] }
  %l40 = alloca { i64, [21 x i64] }
  %l42 = alloca ptr
  %l43 = alloca i32
  %l44 = alloca %"compiler/source:Span"
  %l46 = alloca %"compiler/mir:Lvalue"
  %l49 = alloca %"compiler/mir:Fn"
  %s0 = alloca %olang.scope
  %t27 = alloca %"compiler/mir:Fn", align 8
  %t67 = alloca { i64, [15 x i64] }, align 8
  %t77 = alloca { i64, [21 x i64] }, align 8
  %t94 = alloca { i64, [21 x i64] }, align 8
  %t111 = alloca { i64, [4 x i64] }, align 8
  %t117 = alloca { i64, [8 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l6, !tbaa !29
  store i64 %a1, ptr %l7, !tbaa !24
  %t3 = load ptr, ptr %l0, !tbaa !29
  store ptr %t3, ptr %l8, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t5 = load i32, ptr %l3, !tbaa !23
  %t6 = load i32, ptr %l3, !tbaa !23
  %t7 = mul i64 2, 4
  %t8 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t7)
  %t9 = insertvalue { i64, ptr } undef, i64 2, 0
  %t10 = insertvalue { i64, ptr } %t9, ptr %t8, 1
  store { i64, ptr } %t10, ptr %l12, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr i32, ptr %t13, i64 0
  store i32 %t5, ptr %t14, !tbaa !33
  %t16 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = getelementptr i32, ptr %t17, i64 1
  store i32 %t6, ptr %t18, !tbaa !33
  %t20 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t21 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t4, { i64, ptr } %t20)
  store i32 %t21, ptr %l13
  br label %bb1
bb1:
  %t22 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t23 = load ptr, ptr %l8, !tbaa !29
  %t24 = load i32, ptr %l13, !tbaa !23
  %t26 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t23, i32 %t24, i32 %t22, i32 0, i32 0, i64 0, i1 false, i32 0, i64 0)
  store i32 %t26, ptr %l15
  br label %bb2
bb2:
  %t28 = load ptr, ptr %l6, !tbaa !29
  %t29 = load i64, ptr %l7, !tbaa !24
  %t30 = load i32, ptr %l15, !tbaa !23
  call void @compiler_2feval_2etfn(ptr %t27, ptr %v0, ptr %v1, ptr %t28, i64 %t29, i32 %t30)
  call void @llvm.memmove.p0.p0.i64(ptr %l16, ptr %t27, i64 800, i1 false)
  br label %bb3
bb3:
  %t31 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 800, i64 8)
  store ptr %t31, ptr %lp4
  %t32 = load ptr, ptr %lp4
  call void @llvm.memmove.p0.p0.i64(ptr %t32, ptr %l16, i64 800, i1 false)
  %t33 = load ptr, ptr %lp4
  %t34 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t35 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t39 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddTemp(ptr %v1, ptr %t33, i32 %t34, %"compiler/source:Span" %t35)
  store i32 %t39, ptr %l20
  br label %bb4
bb4:
  %t40 = load i32, ptr %l20, !tbaa !23
  store i32 %t40, ptr %l5, !tbaa !23
  %t41 = load ptr, ptr %lp4
  store ptr %t41, ptr %l21, !tbaa !29
  %t42 = load i32, ptr @G_2ecompiler_2feval_2eB0, !tbaa !23
  store i32 %t42, ptr %l22, !tbaa !23
  %t43 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  store %"compiler/source:Span" %t43, ptr %l23
  %t44 = load i32, ptr %l5, !tbaa !23
  %t46 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t44)
  store %"compiler/mir:Lvalue" %t46, ptr %l25
  br label %bb5
bb5:
  store i32 %a2, ptr %l26
  %t48 = load i32, ptr %l3, !tbaa !23
  store i32 %t48, ptr %l27, !tbaa !23
  %t49 = load ptr, ptr %lp4
  store ptr %t49, ptr %l28, !tbaa !29
  %t50 = call { i64, [4 x i64] } @compiler_2feval_2etcopy(i64 0)
  store { i64, [4 x i64] } %t50, ptr %l29
  br label %bb6
bb6:
  %t51 = call { i64, [4 x i64] } @compiler_2feval_2etcopy(i64 1)
  store { i64, [4 x i64] } %t51, ptr %l30
  br label %bb7
bb7:
  %t52 = mul i64 2, 40
  %t53 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t52)
  %t54 = insertvalue { i64, ptr } undef, i64 2, 0
  %t55 = insertvalue { i64, ptr } %t54, ptr %t53, 1
  store { i64, ptr } %t55, ptr %l31, !tbaa !27
  %t56 = load { i64, [4 x i64] }, ptr %l29
  %t57 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !27
  %t59 = getelementptr { i64, [4 x i64] }, ptr %t58, i64 0
  store { i64, [4 x i64] } %t56, ptr %t59
  %t60 = load { i64, [4 x i64] }, ptr %l30
  %t61 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !27
  %t63 = getelementptr { i64, [4 x i64] }, ptr %t62, i64 1
  store { i64, [4 x i64] } %t60, ptr %t63
  %t64 = load ptr, ptr %l28, !tbaa !29
  %t65 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t66 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v1, ptr %s0, ptr %t64, { i64, ptr } %t65)
  store %"compiler/mir:Range" %t66, ptr %l32
  br label %bb8
bb8:
  store { i64, [15 x i64] } zeroinitializer, ptr %t67
  %t68 = getelementptr { i64, [15 x i64] }, ptr %t67, i32 0, i32 0
  store i64 4, ptr %t68
  %t69 = load i32, ptr %l26, !range !{i32 0, i32 51}
  %t70 = insertvalue { i32, i32, %"compiler/mir:Range" } undef, i32 %t69, 0
  %t71 = load i32, ptr %l27, !tbaa !23
  %t72 = insertvalue { i32, i32, %"compiler/mir:Range" } %t70, i32 %t71, 1
  %t73 = load %"compiler/mir:Range", ptr %l32
  %t74 = insertvalue { i32, i32, %"compiler/mir:Range" } %t72, %"compiler/mir:Range" %t73, 2
  %t75 = getelementptr { i64, [15 x i64] }, ptr %t67, i32 0, i32 1
  store { i32, i32, %"compiler/mir:Range" } %t74, ptr %t75
  %t76 = load { i64, [15 x i64] }, ptr %t67
  store { i64, [21 x i64] } zeroinitializer, ptr %t77
  %t78 = getelementptr { i64, [21 x i64] }, ptr %t77, i32 0, i32 0
  store i64 0, ptr %t78
  %t79 = load %"compiler/source:Span", ptr %l23
  %t80 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t79, 0
  %t81 = load %"compiler/mir:Lvalue", ptr %l25
  %t82 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t80, %"compiler/mir:Lvalue" %t81, 1
  %t84 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t82, { i64, [15 x i64] } %t76, 2
  %t85 = getelementptr { i64, [21 x i64] }, ptr %t77, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t84, ptr %t85
  %t86 = load { i64, [21 x i64] }, ptr %t77
  store { i64, [21 x i64] } %t86, ptr %l34
  %t87 = load ptr, ptr %l21, !tbaa !29
  %t88 = load i32, ptr %l22, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t87, i32 %t88, ptr %l34)
  br label %bb9
bb9:
  %t90 = load ptr, ptr %lp4
  %t91 = load i32, ptr @G_2ecompiler_2feval_2eB0, !tbaa !23
  %t92 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t93 = load i32, ptr @G_2ecompiler_2feval_2eS0, !tbaa !23
  store { i64, [21 x i64] } zeroinitializer, ptr %t94
  %t95 = getelementptr { i64, [21 x i64] }, ptr %t94, i32 0, i32 0
  store i64 4, ptr %t95
  %t97 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t92, 0
  %t99 = insertvalue { %"compiler/source:Span", i32 } %t97, i32 %t93, 1
  %t100 = getelementptr { i64, [21 x i64] }, ptr %t94, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t99, ptr %t100
  %t101 = load { i64, [21 x i64] }, ptr %t94
  store { i64, [21 x i64] } %t101, ptr %l40
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t90, i32 %t91, ptr %l40)
  br label %bb10
bb10:
  %t105 = load ptr, ptr %lp4
  store ptr %t105, ptr %l42, !tbaa !29
  %t106 = load i32, ptr @G_2ecompiler_2feval_2eB0, !tbaa !23
  store i32 %t106, ptr %l43, !tbaa !23
  %t107 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  store %"compiler/source:Span" %t107, ptr %l44
  %t108 = load i32, ptr %l5, !tbaa !23
  %t110 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t108)
  store %"compiler/mir:Lvalue" %t110, ptr %l46
  br label %bb11
bb11:
  store { i64, [4 x i64] } zeroinitializer, ptr %t111
  %t112 = getelementptr { i64, [4 x i64] }, ptr %t111, i32 0, i32 0
  store i64 1, ptr %t112
  %t113 = load %"compiler/mir:Lvalue", ptr %l46
  %t114 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t113, 0
  %t115 = getelementptr { i64, [4 x i64] }, ptr %t111, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t114, ptr %t115
  %t116 = load { i64, [4 x i64] }, ptr %t111
  store { i64, [8 x i64] } zeroinitializer, ptr %t117
  %t118 = getelementptr { i64, [8 x i64] }, ptr %t117, i32 0, i32 0
  store i64 5, ptr %t118
  %t119 = load %"compiler/source:Span", ptr %l44
  %t120 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } undef, %"compiler/source:Span" %t119, 0
  %t122 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } %t120, { i64, [4 x i64] } %t116, 1
  %t123 = getelementptr { i64, [8 x i64] }, ptr %t117, i32 0, i32 1
  store { %"compiler/source:Span", { i64, [4 x i64] } } %t122, ptr %t123
  %t124 = load { i64, [8 x i64] }, ptr %t117
  %t125 = load ptr, ptr %l42, !tbaa !29
  %t126 = load i32, ptr %l43, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v1, ptr %t125, i32 %t126, { i64, [8 x i64] } %t124)
  br label %bb12
bb12:
  %t128 = load ptr, ptr %lp4
  call void @llvm.memmove.p0.p0.i64(ptr %l49, ptr %t128, i64 800, i1 false)
  call void @__olang_scope_close(ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l49, i64 800, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2epassFn(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i32 %a3, i32 %a4, i32 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca i32
  %lp7 = alloca ptr
  %l8 = alloca i32
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca i32
  %l15 = alloca i32
  %l16 = alloca ptr
  %l17 = alloca i64
  %l18 = alloca ptr
  %l21 = alloca i32
  %l24 = alloca i32
  %l25 = alloca %"compiler/mir:Fn"
  %l29 = alloca i32
  %l33 = alloca i32
  %l37 = alloca i32
  %l39 = alloca i32
  %l41 = alloca i32
  %l42 = alloca ptr
  %l44 = alloca { i64, [2 x i64] }
  %l46 = alloca { i64, [7 x i64] }
  %l47 = alloca ptr
  %l48 = alloca { i64, [4 x i64] }
  %l49 = alloca { i64, ptr }
  %l50 = alloca %"compiler/mir:Range"
  %l51 = alloca %"compiler/mir:Range"
  %l53 = alloca %"compiler/mir:Lvalue"
  %l57 = alloca %"compiler/mir:Call"
  %l58 = alloca i32
  %l68 = alloca { i64, [21 x i64] }
  %l70 = alloca ptr
  %l71 = alloca i32
  %l72 = alloca %"compiler/source:Span"
  %l74 = alloca %"compiler/mir:Lvalue"
  %l77 = alloca ptr
  %l78 = alloca i32
  %l79 = alloca %"compiler/source:Span"
  %l81 = alloca %"compiler/mir:Lvalue"
  %l83 = alloca %"compiler/mir:Lvalue"
  %l88 = alloca { i64, [21 x i64] }
  %l94 = alloca { i64, [21 x i64] }
  %l96 = alloca ptr
  %l97 = alloca i32
  %l98 = alloca %"compiler/source:Span"
  %l100 = alloca %"compiler/mir:Lvalue"
  %l103 = alloca %"compiler/mir:Fn"
  %s0 = alloca %olang.scope
  %t20 = alloca %"compiler/mir:Fn", align 8
  %t63 = alloca { i64, [7 x i64] }, align 8
  %t107 = alloca { i64, [8 x i64] }, align 8
  %t122 = alloca { i64, [21 x i64] }, align 8
  %t139 = alloca { i64, [4 x i64] }, align 8
  %t145 = alloca { i64, [8 x i64] }, align 8
  %t165 = alloca { i64, [4 x i64] }, align 8
  %t173 = alloca { i64, [15 x i64] }, align 8
  %t183 = alloca { i64, [21 x i64] }, align 8
  %t200 = alloca { i64, [21 x i64] }, align 8
  %t217 = alloca { i64, [4 x i64] }, align 8
  %t223 = alloca { i64, [8 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s0, ptr %t1, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d12, i32 0, i32 1) })
  store i32 %t3, ptr %l15
  br label %bb1
bb1:
  %t4 = load i32, ptr %l15, !tbaa !23
  store i32 %t4, ptr %l6, !tbaa !23
  %t5 = load ptr, ptr %l0, !tbaa !29
  store ptr %t5, ptr %l16, !tbaa !29
  store i64 %a1, ptr %l17, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  store ptr %t7, ptr %l18, !tbaa !29
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t9 = load i32, ptr %l6, !tbaa !23
  %t12 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList1(ptr %v0, ptr %t8, i32 %t9)
  store i32 %t12, ptr %l21
  br label %bb2
bb2:
  %t13 = load i32, ptr %l6, !tbaa !23
  %t14 = load i32, ptr %l5, !tbaa !23
  %t15 = load ptr, ptr %l18, !tbaa !29
  %t16 = load i32, ptr %l21, !tbaa !23
  %t19 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t15, i32 %t16, i32 %t13, i32 %t14, i32 0, i64 0, i1 false, i32 0, i64 0)
  store i32 %t19, ptr %l24
  br label %bb3
bb3:
  %t21 = load ptr, ptr %l16, !tbaa !29
  %t22 = load i64, ptr %l17, !tbaa !24
  %t23 = load i32, ptr %l24, !tbaa !23
  call void @compiler_2feval_2etfn(ptr %t20, ptr %v0, ptr %v1, ptr %t21, i64 %t22, i32 %t23)
  call void @llvm.memmove.p0.p0.i64(ptr %l25, ptr %t20, i64 800, i1 false)
  br label %bb4
bb4:
  %t24 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 800, i64 8)
  store ptr %t24, ptr %lp7
  %t25 = load ptr, ptr %lp7
  call void @llvm.memmove.p0.p0.i64(ptr %t25, ptr %l25, i64 800, i1 false)
  %t26 = load ptr, ptr %lp7
  %t27 = load i32, ptr %l6, !tbaa !23
  %t28 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t32 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddTemp(ptr %v1, ptr %t26, i32 %t27, %"compiler/source:Span" %t28)
  store i32 %t32, ptr %l29
  br label %bb5
bb5:
  %t33 = load i32, ptr %l29, !tbaa !23
  store i32 %t33, ptr %l8, !tbaa !23
  %t34 = load ptr, ptr %lp7
  %t35 = load i32, ptr @G_2ecompiler_2fmir_2eI32T, !tbaa !23
  %t36 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t40 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddTemp(ptr %v1, ptr %t34, i32 %t35, %"compiler/source:Span" %t36)
  store i32 %t40, ptr %l33
  br label %bb6
bb6:
  %t41 = load i32, ptr %l33, !tbaa !23
  store i32 %t41, ptr %l9, !tbaa !23
  %t42 = load ptr, ptr %lp7
  %t43 = load i32, ptr @G_2ecompiler_2fmir_2eI32T, !tbaa !23
  %t44 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t48 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddTemp(ptr %v1, ptr %t42, i32 %t43, %"compiler/source:Span" %t44)
  store i32 %t48, ptr %l37
  br label %bb7
bb7:
  %t49 = load i32, ptr %l37, !tbaa !23
  store i32 %t49, ptr %l10, !tbaa !23
  %t50 = load ptr, ptr %lp7
  %t52 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v1, ptr %t50)
  store i32 %t52, ptr %l39
  br label %bb8
bb8:
  %t53 = load i32, ptr %l39, !tbaa !23
  store i32 %t53, ptr %l11, !tbaa !23
  %t54 = load ptr, ptr %lp7
  %t56 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v1, ptr %t54)
  store i32 %t56, ptr %l41
  br label %bb9
bb9:
  %t57 = load i32, ptr %l41, !tbaa !23
  store i32 %t57, ptr %l12, !tbaa !23
  %t58 = load ptr, ptr %lp7
  store ptr %t58, ptr %l42, !tbaa !29
  %t61 = call { i64, [2 x i64] } @compiler_2feval_2etkey(i64 %a2)
  store { i64, [2 x i64] } %t61, ptr %l44
  br label %bb10
bb10:
  store { i64, [7 x i64] } zeroinitializer, ptr %t63
  %t64 = getelementptr { i64, [7 x i64] }, ptr %t63, i32 0, i32 0
  store i64 0, ptr %t64
  %t65 = load { i64, [2 x i64] }, ptr %l44
  %t66 = insertvalue { { i64, [2 x i64] }, i32 } undef, { i64, [2 x i64] } %t65, 0
  %t68 = insertvalue { { i64, [2 x i64] }, i32 } %t66, i32 %a3, 1
  %t69 = getelementptr { i64, [7 x i64] }, ptr %t63, i32 0, i32 1
  store { { i64, [2 x i64] }, i32 } %t68, ptr %t69
  %t70 = load { i64, [7 x i64] }, ptr %t63
  store { i64, [7 x i64] } %t70, ptr %l46
  %t71 = load ptr, ptr %lp7
  store ptr %t71, ptr %l47, !tbaa !29
  %t72 = call { i64, [4 x i64] } @compiler_2feval_2etcopy(i64 0)
  store { i64, [4 x i64] } %t72, ptr %l48
  br label %bb11
bb11:
  %t73 = mul i64 1, 40
  %t74 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t73)
  %t75 = insertvalue { i64, ptr } undef, i64 1, 0
  %t76 = insertvalue { i64, ptr } %t75, ptr %t74, 1
  store { i64, ptr } %t76, ptr %l49, !tbaa !27
  %t77 = load { i64, [4 x i64] }, ptr %l48
  %t78 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !27
  %t80 = getelementptr { i64, [4 x i64] }, ptr %t79, i64 0
  store { i64, [4 x i64] } %t77, ptr %t80
  %t81 = load ptr, ptr %l47, !tbaa !29
  %t82 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t83 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v1, ptr %s0, ptr %t81, { i64, ptr } %t82)
  store %"compiler/mir:Range" %t83, ptr %l50
  br label %bb12
bb12:
  %t84 = load %"compiler/mir:Range", ptr @G_2ecompiler_2fmir_2eEmpty
  store %"compiler/mir:Range" %t84, ptr %l51
  %t85 = load i32, ptr %l8, !tbaa !23
  %t87 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t85)
  store %"compiler/mir:Lvalue" %t87, ptr %l53
  br label %bb13
bb13:
  %t88 = load i32, ptr %l11, !tbaa !23
  %t89 = load i32, ptr %l9, !tbaa !23
  %t90 = load i32, ptr %l12, !tbaa !23
  %t91 = load { i64, [7 x i64] }, ptr %l46
  %t92 = load %"compiler/mir:Range", ptr %l50
  %t93 = load %"compiler/mir:Range", ptr %l51
  %t94 = load %"compiler/mir:Lvalue", ptr %l53
  %t98 = call %"compiler/mir:Call" @compiler_2fmir_3aCall_2ector(ptr %s0, { i64, [7 x i64] } %t91, %"compiler/mir:Range" %t92, %"compiler/mir:Range" %t93, %"compiler/mir:Lvalue" %t94, i1 true, i32 %t88, i32 %t89, i32 %t90)
  store %"compiler/mir:Call" %t98, ptr %l57
  br label %bb14
bb14:
  %t99 = load ptr, ptr %l42, !tbaa !29
  %t100 = load %"compiler/mir:Call", ptr %l57
  %t101 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddCall(ptr %v1, ptr %t99, %"compiler/mir:Call" %t100)
  store i32 %t101, ptr %l58
  br label %bb15
bb15:
  %t102 = load i32, ptr %l58, !tbaa !23
  %t103 = load ptr, ptr %lp7
  %t104 = load i32, ptr @G_2ecompiler_2feval_2eB0, !tbaa !23
  %t105 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  store { i64, [8 x i64] } zeroinitializer, ptr %t107
  %t108 = getelementptr { i64, [8 x i64] }, ptr %t107, i32 0, i32 0
  store i64 4, ptr %t108
  %t110 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t105, 0
  %t112 = insertvalue { %"compiler/source:Span", i32 } %t110, i32 %t102, 1
  %t113 = getelementptr { i64, [8 x i64] }, ptr %t107, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t112, ptr %t113
  %t114 = load { i64, [8 x i64] }, ptr %t107
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v1, ptr %t103, i32 %t104, { i64, [8 x i64] } %t114)
  br label %bb16
bb16:
  %t118 = load ptr, ptr %lp7
  %t119 = load i32, ptr %l11, !tbaa !23
  %t120 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t121 = load i32, ptr @G_2ecompiler_2feval_2eS0, !tbaa !23
  store { i64, [21 x i64] } zeroinitializer, ptr %t122
  %t123 = getelementptr { i64, [21 x i64] }, ptr %t122, i32 0, i32 0
  store i64 4, ptr %t123
  %t125 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t120, 0
  %t127 = insertvalue { %"compiler/source:Span", i32 } %t125, i32 %t121, 1
  %t128 = getelementptr { i64, [21 x i64] }, ptr %t122, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t127, ptr %t128
  %t129 = load { i64, [21 x i64] }, ptr %t122
  store { i64, [21 x i64] } %t129, ptr %l68
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t118, i32 %t119, ptr %l68)
  br label %bb17
bb17:
  %t133 = load ptr, ptr %lp7
  store ptr %t133, ptr %l70, !tbaa !29
  %t134 = load i32, ptr %l11, !tbaa !23
  store i32 %t134, ptr %l71, !tbaa !23
  %t135 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  store %"compiler/source:Span" %t135, ptr %l72
  %t136 = load i32, ptr %l8, !tbaa !23
  %t138 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t136)
  store %"compiler/mir:Lvalue" %t138, ptr %l74
  br label %bb18
bb18:
  store { i64, [4 x i64] } zeroinitializer, ptr %t139
  %t140 = getelementptr { i64, [4 x i64] }, ptr %t139, i32 0, i32 0
  store i64 1, ptr %t140
  %t141 = load %"compiler/mir:Lvalue", ptr %l74
  %t142 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t141, 0
  %t143 = getelementptr { i64, [4 x i64] }, ptr %t139, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t142, ptr %t143
  %t144 = load { i64, [4 x i64] }, ptr %t139
  store { i64, [8 x i64] } zeroinitializer, ptr %t145
  %t146 = getelementptr { i64, [8 x i64] }, ptr %t145, i32 0, i32 0
  store i64 5, ptr %t146
  %t147 = load %"compiler/source:Span", ptr %l72
  %t148 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } undef, %"compiler/source:Span" %t147, 0
  %t150 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } %t148, { i64, [4 x i64] } %t144, 1
  %t151 = getelementptr { i64, [8 x i64] }, ptr %t145, i32 0, i32 1
  store { %"compiler/source:Span", { i64, [4 x i64] } } %t150, ptr %t151
  %t152 = load { i64, [8 x i64] }, ptr %t145
  %t153 = load ptr, ptr %l70, !tbaa !29
  %t154 = load i32, ptr %l71, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v1, ptr %t153, i32 %t154, { i64, [8 x i64] } %t152)
  br label %bb19
bb19:
  %t156 = load ptr, ptr %lp7
  store ptr %t156, ptr %l77, !tbaa !29
  %t157 = load i32, ptr %l12, !tbaa !23
  store i32 %t157, ptr %l78, !tbaa !23
  %t158 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  store %"compiler/source:Span" %t158, ptr %l79
  %t159 = load i32, ptr %l10, !tbaa !23
  %t161 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t159)
  store %"compiler/mir:Lvalue" %t161, ptr %l81
  br label %bb20
bb20:
  %t162 = load i32, ptr %l9, !tbaa !23
  %t164 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t162)
  store %"compiler/mir:Lvalue" %t164, ptr %l83
  br label %bb21
bb21:
  store { i64, [4 x i64] } zeroinitializer, ptr %t165
  %t166 = getelementptr { i64, [4 x i64] }, ptr %t165, i32 0, i32 0
  store i64 1, ptr %t166
  %t167 = load %"compiler/mir:Lvalue", ptr %l83
  %t168 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t167, 0
  %t169 = getelementptr { i64, [4 x i64] }, ptr %t165, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t168, ptr %t169
  %t170 = load { i64, [4 x i64] }, ptr %t165
  %t172 = load i32, ptr %l5, !tbaa !23
  store { i64, [15 x i64] } zeroinitializer, ptr %t173
  %t174 = getelementptr { i64, [15 x i64] }, ptr %t173, i32 0, i32 0
  store i64 11, ptr %t174
  %t176 = insertvalue { { i64, [4 x i64] }, i32, i32 } undef, { i64, [4 x i64] } %t170, 0
  %t178 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t176, i32 %a4, 1
  %t180 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t178, i32 %t172, 2
  %t181 = getelementptr { i64, [15 x i64] }, ptr %t173, i32 0, i32 1
  store { { i64, [4 x i64] }, i32, i32 } %t180, ptr %t181
  %t182 = load { i64, [15 x i64] }, ptr %t173
  store { i64, [21 x i64] } zeroinitializer, ptr %t183
  %t184 = getelementptr { i64, [21 x i64] }, ptr %t183, i32 0, i32 0
  store i64 0, ptr %t184
  %t185 = load %"compiler/source:Span", ptr %l79
  %t186 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t185, 0
  %t187 = load %"compiler/mir:Lvalue", ptr %l81
  %t188 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t186, %"compiler/mir:Lvalue" %t187, 1
  %t190 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t188, { i64, [15 x i64] } %t182, 2
  %t191 = getelementptr { i64, [21 x i64] }, ptr %t183, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t190, ptr %t191
  %t192 = load { i64, [21 x i64] }, ptr %t183
  store { i64, [21 x i64] } %t192, ptr %l88
  %t193 = load ptr, ptr %l77, !tbaa !29
  %t194 = load i32, ptr %l78, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t193, i32 %t194, ptr %l88)
  br label %bb22
bb22:
  %t196 = load ptr, ptr %lp7
  %t197 = load i32, ptr %l12, !tbaa !23
  %t198 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t199 = load i32, ptr @G_2ecompiler_2feval_2eS0, !tbaa !23
  store { i64, [21 x i64] } zeroinitializer, ptr %t200
  %t201 = getelementptr { i64, [21 x i64] }, ptr %t200, i32 0, i32 0
  store i64 4, ptr %t201
  %t203 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t198, 0
  %t205 = insertvalue { %"compiler/source:Span", i32 } %t203, i32 %t199, 1
  %t206 = getelementptr { i64, [21 x i64] }, ptr %t200, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t205, ptr %t206
  %t207 = load { i64, [21 x i64] }, ptr %t200
  store { i64, [21 x i64] } %t207, ptr %l94
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t196, i32 %t197, ptr %l94)
  br label %bb23
bb23:
  %t211 = load ptr, ptr %lp7
  store ptr %t211, ptr %l96, !tbaa !29
  %t212 = load i32, ptr %l12, !tbaa !23
  store i32 %t212, ptr %l97, !tbaa !23
  %t213 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  store %"compiler/source:Span" %t213, ptr %l98
  %t214 = load i32, ptr %l10, !tbaa !23
  %t216 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t214)
  store %"compiler/mir:Lvalue" %t216, ptr %l100
  br label %bb24
bb24:
  store { i64, [4 x i64] } zeroinitializer, ptr %t217
  %t218 = getelementptr { i64, [4 x i64] }, ptr %t217, i32 0, i32 0
  store i64 1, ptr %t218
  %t219 = load %"compiler/mir:Lvalue", ptr %l100
  %t220 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t219, 0
  %t221 = getelementptr { i64, [4 x i64] }, ptr %t217, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t220, ptr %t221
  %t222 = load { i64, [4 x i64] }, ptr %t217
  store { i64, [8 x i64] } zeroinitializer, ptr %t223
  %t224 = getelementptr { i64, [8 x i64] }, ptr %t223, i32 0, i32 0
  store i64 7, ptr %t224
  %t225 = load %"compiler/source:Span", ptr %l98
  %t226 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } undef, %"compiler/source:Span" %t225, 0
  %t228 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } %t226, { i64, [4 x i64] } %t222, 1
  %t229 = getelementptr { i64, [8 x i64] }, ptr %t223, i32 0, i32 1
  store { %"compiler/source:Span", { i64, [4 x i64] } } %t228, ptr %t229
  %t230 = load { i64, [8 x i64] }, ptr %t223
  %t231 = load ptr, ptr %l96, !tbaa !29
  %t232 = load i32, ptr %l97, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v1, ptr %t231, i32 %t232, { i64, [8 x i64] } %t230)
  br label %bb25
bb25:
  %t234 = load ptr, ptr %lp7
  call void @llvm.memmove.p0.p0.i64(ptr %l103, ptr %t234, i64 800, i1 false)
  call void @__olang_scope_close(ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l103, i64 800, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2eretFn(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %lp3 = alloca ptr
  %l4 = alloca i32
  %l7 = alloca %"compiler/mir:Fn"
  %l8 = alloca ptr
  %l10 = alloca i32
  %l12 = alloca i32
  %l13 = alloca ptr
  %l14 = alloca i32
  %l15 = alloca %"compiler/source:Span"
  %l17 = alloca %"compiler/mir:Lvalue"
  %l20 = alloca { i64, [21 x i64] }
  %l26 = alloca { i64, [21 x i64] }
  %l28 = alloca ptr
  %l29 = alloca i32
  %l30 = alloca %"compiler/source:Span"
  %l32 = alloca %"compiler/mir:Lvalue"
  %l35 = alloca %"compiler/mir:Fn"
  %s0 = alloca %olang.scope
  %t3 = alloca %"compiler/mir:Fn", align 8
  %t25 = alloca { i64, [15 x i64] }, align 8
  %t31 = alloca { i64, [21 x i64] }, align 8
  %t48 = alloca { i64, [21 x i64] }, align 8
  %t65 = alloca { i64, [4 x i64] }, align 8
  %t71 = alloca { i64, [8 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2feval_2enfn(ptr %t3, ptr %v0, ptr %v1, ptr %t1, i64 %a1)
  call void @llvm.memmove.p0.p0.i64(ptr %l7, ptr %t3, i64 800, i1 false)
  br label %bb1
bb1:
  %t6 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 800, i64 8)
  store ptr %t6, ptr %lp3
  %t7 = load ptr, ptr %lp3
  call void @llvm.memmove.p0.p0.i64(ptr %t7, ptr %l7, i64 800, i1 false)
  %t8 = load ptr, ptr %lp3
  store ptr %t8, ptr %l8, !tbaa !29
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s0, ptr %t9, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d13, i32 0, i32 1) })
  store i32 %t11, ptr %l10
  br label %bb2
bb2:
  %t12 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t13 = load ptr, ptr %l8, !tbaa !29
  %t14 = load i32, ptr %l10, !tbaa !23
  %t16 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddTemp(ptr %v1, ptr %t13, i32 %t14, %"compiler/source:Span" %t12)
  store i32 %t16, ptr %l12
  br label %bb3
bb3:
  %t17 = load i32, ptr %l12, !tbaa !23
  store i32 %t17, ptr %l4, !tbaa !23
  %t18 = load ptr, ptr %lp3
  store ptr %t18, ptr %l13, !tbaa !29
  %t19 = load i32, ptr @G_2ecompiler_2feval_2eB0, !tbaa !23
  store i32 %t19, ptr %l14, !tbaa !23
  %t20 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  store %"compiler/source:Span" %t20, ptr %l15
  %t21 = load i32, ptr %l4, !tbaa !23
  %t23 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t21)
  store %"compiler/mir:Lvalue" %t23, ptr %l17
  br label %bb4
bb4:
  store { i64, [15 x i64] } zeroinitializer, ptr %t25
  %t26 = getelementptr { i64, [15 x i64] }, ptr %t25, i32 0, i32 0
  store i64 0, ptr %t26
  %t28 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %a2, 0
  %t29 = getelementptr { i64, [15 x i64] }, ptr %t25, i32 0, i32 1
  store { { i64, [4 x i64] } } %t28, ptr %t29
  %t30 = load { i64, [15 x i64] }, ptr %t25
  store { i64, [21 x i64] } zeroinitializer, ptr %t31
  %t32 = getelementptr { i64, [21 x i64] }, ptr %t31, i32 0, i32 0
  store i64 0, ptr %t32
  %t33 = load %"compiler/source:Span", ptr %l15
  %t34 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t33, 0
  %t35 = load %"compiler/mir:Lvalue", ptr %l17
  %t36 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t34, %"compiler/mir:Lvalue" %t35, 1
  %t38 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t36, { i64, [15 x i64] } %t30, 2
  %t39 = getelementptr { i64, [21 x i64] }, ptr %t31, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t38, ptr %t39
  %t40 = load { i64, [21 x i64] }, ptr %t31
  store { i64, [21 x i64] } %t40, ptr %l20
  %t41 = load ptr, ptr %l13, !tbaa !29
  %t42 = load i32, ptr %l14, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t41, i32 %t42, ptr %l20)
  br label %bb5
bb5:
  %t44 = load ptr, ptr %lp3
  %t45 = load i32, ptr @G_2ecompiler_2feval_2eB0, !tbaa !23
  %t46 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t47 = load i32, ptr @G_2ecompiler_2feval_2eS0, !tbaa !23
  store { i64, [21 x i64] } zeroinitializer, ptr %t48
  %t49 = getelementptr { i64, [21 x i64] }, ptr %t48, i32 0, i32 0
  store i64 4, ptr %t49
  %t51 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t46, 0
  %t53 = insertvalue { %"compiler/source:Span", i32 } %t51, i32 %t47, 1
  %t54 = getelementptr { i64, [21 x i64] }, ptr %t48, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t53, ptr %t54
  %t55 = load { i64, [21 x i64] }, ptr %t48
  store { i64, [21 x i64] } %t55, ptr %l26
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t44, i32 %t45, ptr %l26)
  br label %bb6
bb6:
  %t59 = load ptr, ptr %lp3
  store ptr %t59, ptr %l28, !tbaa !29
  %t60 = load i32, ptr @G_2ecompiler_2feval_2eB0, !tbaa !23
  store i32 %t60, ptr %l29, !tbaa !23
  %t61 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  store %"compiler/source:Span" %t61, ptr %l30
  %t62 = load i32, ptr %l4, !tbaa !23
  %t64 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t62)
  store %"compiler/mir:Lvalue" %t64, ptr %l32
  br label %bb7
bb7:
  store { i64, [4 x i64] } zeroinitializer, ptr %t65
  %t66 = getelementptr { i64, [4 x i64] }, ptr %t65, i32 0, i32 0
  store i64 1, ptr %t66
  %t67 = load %"compiler/mir:Lvalue", ptr %l32
  %t68 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t67, 0
  %t69 = getelementptr { i64, [4 x i64] }, ptr %t65, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t68, ptr %t69
  %t70 = load { i64, [4 x i64] }, ptr %t65
  store { i64, [8 x i64] } zeroinitializer, ptr %t71
  %t72 = getelementptr { i64, [8 x i64] }, ptr %t71, i32 0, i32 0
  store i64 5, ptr %t72
  %t73 = load %"compiler/source:Span", ptr %l30
  %t74 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } undef, %"compiler/source:Span" %t73, 0
  %t76 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } %t74, { i64, [4 x i64] } %t70, 1
  %t77 = getelementptr { i64, [8 x i64] }, ptr %t71, i32 0, i32 1
  store { %"compiler/source:Span", { i64, [4 x i64] } } %t76, ptr %t77
  %t78 = load { i64, [8 x i64] }, ptr %t71
  %t79 = load ptr, ptr %l28, !tbaa !29
  %t80 = load i32, ptr %l29, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v1, ptr %t79, i32 %t80, { i64, [8 x i64] } %t78)
  br label %bb8
bb8:
  %t82 = load ptr, ptr %lp3
  call void @llvm.memmove.p0.p0.i64(ptr %l35, ptr %t82, i64 800, i1 false)
  call void @__olang_scope_close(ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l35, i64 800, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2feval_2esatOp(i32 %a0) #0 {
entry:
  %l0 = alloca i32
  %l1 = alloca i1
  %rv = alloca i1
  store i32 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l0, !range !{i32 0, i32 51}
  %t3 = trunc i64 47 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb9
bb2:
  %t6 = load i32, ptr %l0, !range !{i32 0, i32 51}
  %t8 = trunc i64 48 to i32
  %t9 = icmp eq i32 %t6, %t8
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb9
bb4:
  %t11 = load i32, ptr %l0, !range !{i32 0, i32 51}
  %t13 = trunc i64 49 to i32
  %t14 = icmp eq i32 %t11, %t13
  br i1 %t14, label %bb5, label %bb6
bb5:
  br label %bb9
bb6:
  %t16 = load i32, ptr %l0, !range !{i32 0, i32 51}
  %t18 = trunc i64 50 to i32
  %t19 = icmp eq i32 %t16, %t18
  br i1 %t19, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i1 true, ptr %l1, !tbaa !21
  br label %bb15
bb10:
  br i1 true, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb14
bb13:
  store i1 false, ptr %l1, !tbaa !21
  br label %bb15
bb14:
  call void @__olang_check_failed(ptr @olang_loc_b8e29b8ed59f9a38_134c8e80a89a2a2c)
  unreachable
bb15:
  %t21 = load i1, ptr %l1, !tbaa !21
  store i1 %t21, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, i64, i64, i64 } @compiler_2feval_2esdivmod128(i64 %a0, i64 %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i1
  %l5 = alloca i1
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca { i64, i64 }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca { i64, i64 }
  %l12 = alloca { i64, i64, i64, i64 }
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca { i64, i64 }
  %l18 = alloca { i64, i64 }
  %l28 = alloca { i64, i64 }
  %l36 = alloca { i64, i64 }
  %l43 = alloca { i64, i64, i64, i64 }
  %l53 = alloca { i64, i64 }
  %l59 = alloca { i64, i64 }
  %rv = alloca { i64, i64, i64, i64 }
  store i64 %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  store i1 %t3, ptr %l4, !tbaa !21
  %t5 = load i64, ptr %l3, !tbaa !24
  %t7 = icmp slt i64 %t5, 0
  store i1 %t7, ptr %l5, !tbaa !21
  %t9 = load i64, ptr %l0, !tbaa !24
  store i64 %t9, ptr %l6, !tbaa !24
  %t11 = load i64, ptr %l1, !tbaa !24
  store i64 %t11, ptr %l7, !tbaa !24
  %t13 = load i1, ptr %l4, !tbaa !21
  br i1 %t13, label %bb1, label %bb2
bb1:
  %t15 = load i64, ptr %l0, !tbaa !24
  %t16 = load i64, ptr %l1, !tbaa !24
  %t19 = call { i64, i64 } @compiler_2feval_2eneg128(i64 %t15, i64 %t16)
  store { i64, i64 } %t19, ptr %l28
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t20 = load { i64, i64 }, ptr %l28
  store { i64, i64 } %t20, ptr %l8
  %t21 = getelementptr { i64, i64 }, ptr %l8, i32 0, i32 0
  %t22 = load i64, ptr %t21, !tbaa !24
  store i64 %t22, ptr %l6, !tbaa !24
  %t24 = getelementptr { i64, i64 }, ptr %l8, i32 0, i32 1
  %t25 = load i64, ptr %t24, !tbaa !24
  store i64 %t25, ptr %l7, !tbaa !24
  br label %bb4
bb4:
  %t27 = load i64, ptr %l2, !tbaa !24
  store i64 %t27, ptr %l9, !tbaa !24
  %t29 = load i64, ptr %l3, !tbaa !24
  store i64 %t29, ptr %l10, !tbaa !24
  %t31 = load i1, ptr %l5, !tbaa !21
  br i1 %t31, label %bb5, label %bb6
bb5:
  %t33 = load i64, ptr %l2, !tbaa !24
  %t34 = load i64, ptr %l3, !tbaa !24
  %t37 = call { i64, i64 } @compiler_2feval_2eneg128(i64 %t33, i64 %t34)
  store { i64, i64 } %t37, ptr %l36
  br label %bb7
bb6:
  br label %bb8
bb7:
  %t38 = load { i64, i64 }, ptr %l36
  store { i64, i64 } %t38, ptr %l11
  %t39 = getelementptr { i64, i64 }, ptr %l11, i32 0, i32 0
  %t40 = load i64, ptr %t39, !tbaa !24
  store i64 %t40, ptr %l9, !tbaa !24
  %t42 = getelementptr { i64, i64 }, ptr %l11, i32 0, i32 1
  %t43 = load i64, ptr %t42, !tbaa !24
  store i64 %t43, ptr %l10, !tbaa !24
  br label %bb8
bb8:
  %t45 = load i64, ptr %l6, !tbaa !24
  %t46 = load i64, ptr %l7, !tbaa !24
  %t47 = load i64, ptr %l9, !tbaa !24
  %t48 = load i64, ptr %l10, !tbaa !24
  %t53 = call { i64, i64, i64, i64 } @compiler_2feval_2eudivmod128(i64 %t45, i64 %t46, i64 %t47, i64 %t48)
  store { i64, i64, i64, i64 } %t53, ptr %l43
  br label %bb9
bb9:
  %t54 = load { i64, i64, i64, i64 }, ptr %l43
  store { i64, i64, i64, i64 } %t54, ptr %l12
  %t55 = getelementptr { i64, i64, i64, i64 }, ptr %l12, i32 0, i32 0
  %t56 = load i64, ptr %t55, !tbaa !24
  store i64 %t56, ptr %l13, !tbaa !24
  %t58 = getelementptr { i64, i64, i64, i64 }, ptr %l12, i32 0, i32 1
  %t59 = load i64, ptr %t58, !tbaa !24
  store i64 %t59, ptr %l14, !tbaa !24
  %t61 = getelementptr { i64, i64, i64, i64 }, ptr %l12, i32 0, i32 2
  %t62 = load i64, ptr %t61, !tbaa !24
  store i64 %t62, ptr %l15, !tbaa !24
  %t64 = getelementptr { i64, i64, i64, i64 }, ptr %l12, i32 0, i32 3
  %t65 = load i64, ptr %t64, !tbaa !24
  store i64 %t65, ptr %l16, !tbaa !24
  %t67 = load i1, ptr %l4, !tbaa !21
  %t68 = load i1, ptr %l5, !tbaa !21
  %t71 = icmp ne i1 %t67, %t68
  br i1 %t71, label %bb10, label %bb11
bb10:
  %t73 = load i64, ptr %l13, !tbaa !24
  %t74 = load i64, ptr %l14, !tbaa !24
  %t77 = call { i64, i64 } @compiler_2feval_2eneg128(i64 %t73, i64 %t74)
  store { i64, i64 } %t77, ptr %l53
  br label %bb12
bb11:
  br label %bb13
bb12:
  %t78 = load { i64, i64 }, ptr %l53
  store { i64, i64 } %t78, ptr %l17
  %t79 = getelementptr { i64, i64 }, ptr %l17, i32 0, i32 0
  %t80 = load i64, ptr %t79, !tbaa !24
  store i64 %t80, ptr %l13, !tbaa !24
  %t82 = getelementptr { i64, i64 }, ptr %l17, i32 0, i32 1
  %t83 = load i64, ptr %t82, !tbaa !24
  store i64 %t83, ptr %l14, !tbaa !24
  br label %bb13
bb13:
  %t85 = load i1, ptr %l4, !tbaa !21
  br i1 %t85, label %bb14, label %bb15
bb14:
  %t87 = load i64, ptr %l15, !tbaa !24
  %t88 = load i64, ptr %l16, !tbaa !24
  %t91 = call { i64, i64 } @compiler_2feval_2eneg128(i64 %t87, i64 %t88)
  store { i64, i64 } %t91, ptr %l59
  br label %bb16
bb15:
  br label %bb17
bb16:
  %t92 = load { i64, i64 }, ptr %l59
  store { i64, i64 } %t92, ptr %l18
  %t93 = getelementptr { i64, i64 }, ptr %l18, i32 0, i32 0
  %t94 = load i64, ptr %t93, !tbaa !24
  store i64 %t94, ptr %l15, !tbaa !24
  %t96 = getelementptr { i64, i64 }, ptr %l18, i32 0, i32 1
  %t97 = load i64, ptr %t96, !tbaa !24
  store i64 %t97, ptr %l16, !tbaa !24
  br label %bb17
bb17:
  %t99 = load i64, ptr %l13, !tbaa !24
  %t100 = load i64, ptr %l14, !tbaa !24
  %t101 = load i64, ptr %l15, !tbaa !24
  %t102 = load i64, ptr %l16, !tbaa !24
  %t104 = insertvalue { i64, i64, i64, i64 } undef, i64 %t99, 0
  %t106 = insertvalue { i64, i64, i64, i64 } %t104, i64 %t100, 1
  %t108 = insertvalue { i64, i64, i64, i64 } %t106, i64 %t101, 2
  %t110 = insertvalue { i64, i64, i64, i64 } %t108, i64 %t102, 3
  store { i64, i64, i64, i64 } %t110, ptr %rv
  br label %ret
ret:
  %rr = load { i64, i64, i64, i64 }, ptr %rv
  ret { i64, i64, i64, i64 } %rr
}

define dso_local void @compiler_2feval_2esumFn(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %lp5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca i32
  %l13 = alloca i32
  %l15 = alloca i32
  %l18 = alloca i32
  %l19 = alloca ptr
  %l20 = alloca i64
  %l21 = alloca ptr
  %l24 = alloca i32
  %l26 = alloca i32
  %l27 = alloca %"compiler/mir:Fn"
  %l31 = alloca i32
  %l35 = alloca i32
  %l39 = alloca i32
  %l43 = alloca i32
  %l48 = alloca i32
  %l50 = alloca i32
  %l52 = alloca i32
  %l54 = alloca i32
  %l55 = alloca ptr
  %l56 = alloca i32
  %l57 = alloca %"compiler/source:Span"
  %l59 = alloca %"compiler/mir:Lvalue"
  %l63 = alloca { i64, [21 x i64] }
  %l65 = alloca ptr
  %l66 = alloca i32
  %l67 = alloca %"compiler/source:Span"
  %l69 = alloca %"compiler/mir:Lvalue"
  %l73 = alloca { i64, [21 x i64] }
  %l79 = alloca ptr
  %l80 = alloca i32
  %l82 = alloca i64
  %l83 = alloca i32
  %l84 = alloca i32
  %l86 = alloca %"compiler/mir:Lvalue"
  %l87 = alloca { i64, [4 x i64] }
  %l88 = alloca { i64, [4 x i64] }
  %l89 = alloca ptr
  %l90 = alloca i32
  %l92 = alloca %"compiler/mir:Lvalue"
  %l101 = alloca { i64, [21 x i64] }
  %l104 = alloca ptr
  %l105 = alloca i32
  %l106 = alloca %"compiler/source:Span"
  %l108 = alloca %"compiler/mir:Lvalue"
  %l117 = alloca { i64, [21 x i64] }
  %l119 = alloca ptr
  %l120 = alloca i32
  %l122 = alloca i64
  %l123 = alloca i32
  %l124 = alloca i32
  %l126 = alloca %"compiler/mir:Lvalue"
  %l127 = alloca { i64, [4 x i64] }
  %l129 = alloca %"compiler/mir:Lvalue"
  %l131 = alloca ptr
  %l132 = alloca i32
  %l134 = alloca i64
  %l135 = alloca i32
  %l136 = alloca i32
  %l138 = alloca %"compiler/mir:Lvalue"
  %l146 = alloca { i64, [21 x i64] }
  %l156 = alloca { i64, [21 x i64] }
  %l158 = alloca ptr
  %l159 = alloca i32
  %l160 = alloca %"compiler/source:Span"
  %l162 = alloca %"compiler/mir:Lvalue"
  %l165 = alloca %"compiler/mir:Fn"
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %t24 = alloca %"compiler/mir:Fn", align 8
  %t90 = alloca { i64, [4 x i64] }, align 8
  %t97 = alloca { i64, [15 x i64] }, align 8
  %t103 = alloca { i64, [21 x i64] }, align 8
  %t123 = alloca { i64, [4 x i64] }, align 8
  %t130 = alloca { i64, [15 x i64] }, align 8
  %t136 = alloca { i64, [21 x i64] }, align 8
  %t152 = alloca { i64, [8 x i64] }, align 8
  %t170 = alloca { i64, [4 x i64] }, align 8
  %t189 = alloca { i64, [4 x i64] }, align 8
  %t197 = alloca { i64, [8 x i64] }, align 8
  %t214 = alloca { i64, [21 x i64] }, align 8
  %t234 = alloca { i64, [1 x i64] }, align 8
  %t242 = alloca { i64, [4 x i64] }, align 8
  %t250 = alloca { i64, [4 x i64] }, align 8
  %t257 = alloca { i64, [15 x i64] }, align 8
  %t269 = alloca { i64, [21 x i64] }, align 8
  %t291 = alloca { i64, [4 x i64] }, align 8
  %t300 = alloca { i64, [4 x i64] }, align 8
  %t322 = alloca { i64, [4 x i64] }, align 8
  %t329 = alloca { i64, [4 x i64] }, align 8
  %t347 = alloca { i64, [21 x i64] }, align 8
  %t361 = alloca { i64, [8 x i64] }, align 8
  %t374 = alloca { i64, [21 x i64] }, align 8
  %t391 = alloca { i64, [4 x i64] }, align 8
  %t397 = alloca { i64, [8 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s0, ptr %t1, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d14, i32 0, i32 1) })
  store i32 %t3, ptr %l15
  br label %bb1
bb1:
  %t4 = load i32, ptr %l15, !tbaa !23
  store i32 %t4, ptr %l3, !tbaa !23
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t6 = load i32, ptr %l3, !tbaa !23
  %t9 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %t5, i32 %t6, i32 0)
  store i32 %t9, ptr %l18
  br label %bb2
bb2:
  %t10 = load i32, ptr %l18, !tbaa !23
  store i32 %t10, ptr %l4, !tbaa !23
  %t11 = load ptr, ptr %l0, !tbaa !29
  store ptr %t11, ptr %l19, !tbaa !29
  store i64 %a1, ptr %l20, !tbaa !24
  %t13 = load ptr, ptr %l0, !tbaa !29
  store ptr %t13, ptr %l21, !tbaa !29
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load i32, ptr %l3, !tbaa !23
  %t18 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList1(ptr %v0, ptr %t14, i32 %t15)
  store i32 %t18, ptr %l24
  br label %bb3
bb3:
  %t19 = load i32, ptr %l3, !tbaa !23
  %t20 = load ptr, ptr %l21, !tbaa !29
  %t21 = load i32, ptr %l24, !tbaa !23
  %t23 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t20, i32 %t21, i32 %t19, i32 0, i32 0, i64 0, i1 false, i32 0, i64 0)
  store i32 %t23, ptr %l26
  br label %bb4
bb4:
  %t25 = load ptr, ptr %l19, !tbaa !29
  %t26 = load i64, ptr %l20, !tbaa !24
  %t27 = load i32, ptr %l26, !tbaa !23
  call void @compiler_2feval_2etfn(ptr %t24, ptr %v0, ptr %v1, ptr %t25, i64 %t26, i32 %t27)
  call void @llvm.memmove.p0.p0.i64(ptr %l27, ptr %t24, i64 800, i1 false)
  br label %bb5
bb5:
  %t28 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 800, i64 8)
  store ptr %t28, ptr %lp5
  %t29 = load ptr, ptr %lp5
  call void @llvm.memmove.p0.p0.i64(ptr %t29, ptr %l27, i64 800, i1 false)
  %t30 = load ptr, ptr %lp5
  %t31 = load i32, ptr %l3, !tbaa !23
  %t32 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t36 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddTemp(ptr %v1, ptr %t30, i32 %t31, %"compiler/source:Span" %t32)
  store i32 %t36, ptr %l31
  br label %bb6
bb6:
  %t37 = load i32, ptr %l31, !tbaa !23
  store i32 %t37, ptr %l6, !tbaa !23
  %t38 = load ptr, ptr %lp5
  %t39 = load i32, ptr %l3, !tbaa !23
  %t40 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t44 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddTemp(ptr %v1, ptr %t38, i32 %t39, %"compiler/source:Span" %t40)
  store i32 %t44, ptr %l35
  br label %bb7
bb7:
  %t45 = load i32, ptr %l35, !tbaa !23
  store i32 %t45, ptr %l7, !tbaa !23
  %t46 = load ptr, ptr %lp5
  %t47 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t48 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t52 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddTemp(ptr %v1, ptr %t46, i32 %t47, %"compiler/source:Span" %t48)
  store i32 %t52, ptr %l39
  br label %bb8
bb8:
  %t53 = load i32, ptr %l39, !tbaa !23
  store i32 %t53, ptr %l8, !tbaa !23
  %t54 = load ptr, ptr %lp5
  %t55 = load i32, ptr %l4, !tbaa !23
  %t56 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t60 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddTemp(ptr %v1, ptr %t54, i32 %t55, %"compiler/source:Span" %t56)
  store i32 %t60, ptr %l43
  br label %bb9
bb9:
  %t61 = load i32, ptr %l43, !tbaa !23
  store i32 %t61, ptr %l9, !tbaa !23
  %t62 = load ptr, ptr %lp5
  %t63 = load i32, ptr @G_2ecompiler_2feval_2eS0, !tbaa !23
  %t64 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t69 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddScope(ptr %v1, ptr %t62, i32 2, i32 %t63, i32 1, %"compiler/source:Span" %t64, i32 0)
  store i32 %t69, ptr %l48
  br label %bb10
bb10:
  %t70 = load i32, ptr %l48, !tbaa !23
  store i32 %t70, ptr %l10, !tbaa !23
  %t71 = load ptr, ptr %lp5
  %t73 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v1, ptr %t71)
  store i32 %t73, ptr %l50
  br label %bb11
bb11:
  %t74 = load i32, ptr %l50, !tbaa !23
  store i32 %t74, ptr %l11, !tbaa !23
  %t75 = load ptr, ptr %lp5
  %t77 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v1, ptr %t75)
  store i32 %t77, ptr %l52
  br label %bb12
bb12:
  %t78 = load i32, ptr %l52, !tbaa !23
  store i32 %t78, ptr %l12, !tbaa !23
  %t79 = load ptr, ptr %lp5
  %t81 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v1, ptr %t79)
  store i32 %t81, ptr %l54
  br label %bb13
bb13:
  %t82 = load i32, ptr %l54, !tbaa !23
  store i32 %t82, ptr %l13, !tbaa !23
  %t83 = load ptr, ptr %lp5
  store ptr %t83, ptr %l55, !tbaa !29
  %t84 = load i32, ptr @G_2ecompiler_2feval_2eB0, !tbaa !23
  store i32 %t84, ptr %l56, !tbaa !23
  %t85 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  store %"compiler/source:Span" %t85, ptr %l57
  %t86 = load i32, ptr %l6, !tbaa !23
  %t88 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t86)
  store %"compiler/mir:Lvalue" %t88, ptr %l59
  br label %bb14
bb14:
  %t89 = load i32, ptr %l3, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t90
  %t91 = getelementptr { i64, [4 x i64] }, ptr %t90, i32 0, i32 0
  store i64 2, ptr %t91
  %t93 = insertvalue { i32, i64 } undef, i32 %t89, 0
  %t94 = insertvalue { i32, i64 } %t93, i64 0, 1
  %t95 = getelementptr { i64, [4 x i64] }, ptr %t90, i32 0, i32 1
  store { i32, i64 } %t94, ptr %t95
  %t96 = load { i64, [4 x i64] }, ptr %t90
  store { i64, [15 x i64] } zeroinitializer, ptr %t97
  %t98 = getelementptr { i64, [15 x i64] }, ptr %t97, i32 0, i32 0
  store i64 0, ptr %t98
  %t100 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t96, 0
  %t101 = getelementptr { i64, [15 x i64] }, ptr %t97, i32 0, i32 1
  store { { i64, [4 x i64] } } %t100, ptr %t101
  %t102 = load { i64, [15 x i64] }, ptr %t97
  store { i64, [21 x i64] } zeroinitializer, ptr %t103
  %t104 = getelementptr { i64, [21 x i64] }, ptr %t103, i32 0, i32 0
  store i64 0, ptr %t104
  %t105 = load %"compiler/source:Span", ptr %l57
  %t106 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t105, 0
  %t107 = load %"compiler/mir:Lvalue", ptr %l59
  %t108 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t106, %"compiler/mir:Lvalue" %t107, 1
  %t110 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t108, { i64, [15 x i64] } %t102, 2
  %t111 = getelementptr { i64, [21 x i64] }, ptr %t103, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t110, ptr %t111
  %t112 = load { i64, [21 x i64] }, ptr %t103
  store { i64, [21 x i64] } %t112, ptr %l63
  %t113 = load ptr, ptr %l55, !tbaa !29
  %t114 = load i32, ptr %l56, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t113, i32 %t114, ptr %l63)
  br label %bb15
bb15:
  %t116 = load ptr, ptr %lp5
  store ptr %t116, ptr %l65, !tbaa !29
  %t117 = load i32, ptr @G_2ecompiler_2feval_2eB0, !tbaa !23
  store i32 %t117, ptr %l66, !tbaa !23
  %t118 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  store %"compiler/source:Span" %t118, ptr %l67
  %t119 = load i32, ptr %l7, !tbaa !23
  %t121 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t119)
  store %"compiler/mir:Lvalue" %t121, ptr %l69
  br label %bb16
bb16:
  %t122 = load i32, ptr %l3, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t123
  %t124 = getelementptr { i64, [4 x i64] }, ptr %t123, i32 0, i32 0
  store i64 2, ptr %t124
  %t126 = insertvalue { i32, i64 } undef, i32 %t122, 0
  %t127 = insertvalue { i32, i64 } %t126, i64 0, 1
  %t128 = getelementptr { i64, [4 x i64] }, ptr %t123, i32 0, i32 1
  store { i32, i64 } %t127, ptr %t128
  %t129 = load { i64, [4 x i64] }, ptr %t123
  store { i64, [15 x i64] } zeroinitializer, ptr %t130
  %t131 = getelementptr { i64, [15 x i64] }, ptr %t130, i32 0, i32 0
  store i64 0, ptr %t131
  %t133 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t129, 0
  %t134 = getelementptr { i64, [15 x i64] }, ptr %t130, i32 0, i32 1
  store { { i64, [4 x i64] } } %t133, ptr %t134
  %t135 = load { i64, [15 x i64] }, ptr %t130
  store { i64, [21 x i64] } zeroinitializer, ptr %t136
  %t137 = getelementptr { i64, [21 x i64] }, ptr %t136, i32 0, i32 0
  store i64 0, ptr %t137
  %t138 = load %"compiler/source:Span", ptr %l67
  %t139 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t138, 0
  %t140 = load %"compiler/mir:Lvalue", ptr %l69
  %t141 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t139, %"compiler/mir:Lvalue" %t140, 1
  %t143 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t141, { i64, [15 x i64] } %t135, 2
  %t144 = getelementptr { i64, [21 x i64] }, ptr %t136, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t143, ptr %t144
  %t145 = load { i64, [21 x i64] }, ptr %t136
  store { i64, [21 x i64] } %t145, ptr %l73
  %t146 = load ptr, ptr %l65, !tbaa !29
  %t147 = load i32, ptr %l66, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t146, i32 %t147, ptr %l73)
  br label %bb17
bb17:
  %t149 = load ptr, ptr %lp5
  %t150 = load i32, ptr @G_2ecompiler_2feval_2eB0, !tbaa !23
  %t151 = load i32, ptr %l11, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t152
  %t153 = getelementptr { i64, [8 x i64] }, ptr %t152, i32 0, i32 0
  store i64 1, ptr %t153
  %t155 = insertvalue { i32 } undef, i32 %t151, 0
  %t156 = getelementptr { i64, [8 x i64] }, ptr %t152, i32 0, i32 1
  store { i32 } %t155, ptr %t156
  %t157 = load { i64, [8 x i64] }, ptr %t152
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v1, ptr %t149, i32 %t150, { i64, [8 x i64] } %t157)
  br label %bb18
bb18:
  %t161 = load ptr, ptr %lp5
  store ptr %t161, ptr %l79, !tbaa !29
  %t162 = load i32, ptr %l11, !tbaa !23
  store i32 %t162, ptr %l80, !tbaa !23
  %t163 = load i32, ptr %l8, !tbaa !23
  %t165 = sext i32 %t163 to i64
  store i64 %t165, ptr %l82, !tbaa !24
  store i32 15, ptr %l83
  %t166 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t166, ptr %l84, !tbaa !23
  %t167 = load i32, ptr %l6, !tbaa !23
  %t169 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t167)
  store %"compiler/mir:Lvalue" %t169, ptr %l86
  br label %bb19
bb19:
  store { i64, [4 x i64] } zeroinitializer, ptr %t170
  %t171 = getelementptr { i64, [4 x i64] }, ptr %t170, i32 0, i32 0
  store i64 1, ptr %t171
  %t172 = load %"compiler/mir:Lvalue", ptr %l86
  %t173 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t172, 0
  %t174 = getelementptr { i64, [4 x i64] }, ptr %t170, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t173, ptr %t174
  %t175 = load { i64, [4 x i64] }, ptr %t170
  store { i64, [4 x i64] } %t175, ptr %l87
  %t176 = call { i64, [4 x i64] } @compiler_2feval_2etcopy(i64 0)
  store { i64, [4 x i64] } %t176, ptr %l88
  br label %bb20
bb20:
  %t177 = load ptr, ptr %l79, !tbaa !29
  %t178 = load i32, ptr %l80, !tbaa !23
  %t179 = load i64, ptr %l82, !tbaa !24
  %t180 = load i32, ptr %l83, !range !{i32 0, i32 51}
  %t181 = load i32, ptr %l84, !tbaa !23
  %t182 = load { i64, [4 x i64] }, ptr %l87
  %t183 = load { i64, [4 x i64] }, ptr %l88
  call void @compiler_2feval_2etprim(ptr %v1, ptr %t177, i32 %t178, i64 %t179, i32 %t180, i32 %t181, { i64, [4 x i64] } %t182, { i64, [4 x i64] } %t183)
  br label %bb21
bb21:
  %t184 = load ptr, ptr %lp5
  store ptr %t184, ptr %l89, !tbaa !29
  %t185 = load i32, ptr %l11, !tbaa !23
  store i32 %t185, ptr %l90, !tbaa !23
  %t186 = load i32, ptr %l8, !tbaa !23
  %t188 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t186)
  store %"compiler/mir:Lvalue" %t188, ptr %l92
  br label %bb22
bb22:
  store { i64, [4 x i64] } zeroinitializer, ptr %t189
  %t190 = getelementptr { i64, [4 x i64] }, ptr %t189, i32 0, i32 0
  store i64 1, ptr %t190
  %t191 = load %"compiler/mir:Lvalue", ptr %l92
  %t192 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t191, 0
  %t193 = getelementptr { i64, [4 x i64] }, ptr %t189, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t192, ptr %t193
  %t194 = load { i64, [4 x i64] }, ptr %t189
  %t195 = load i32, ptr %l12, !tbaa !23
  %t196 = load i32, ptr %l13, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t197
  %t198 = getelementptr { i64, [8 x i64] }, ptr %t197, i32 0, i32 0
  store i64 2, ptr %t198
  %t200 = insertvalue { { i64, [4 x i64] }, i32, i32 } undef, { i64, [4 x i64] } %t194, 0
  %t202 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t200, i32 %t195, 1
  %t204 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t202, i32 %t196, 2
  %t205 = getelementptr { i64, [8 x i64] }, ptr %t197, i32 0, i32 1
  store { { i64, [4 x i64] }, i32, i32 } %t204, ptr %t205
  %t206 = load { i64, [8 x i64] }, ptr %t197
  %t207 = load ptr, ptr %l89, !tbaa !29
  %t208 = load i32, ptr %l90, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v1, ptr %t207, i32 %t208, { i64, [8 x i64] } %t206)
  br label %bb23
bb23:
  %t210 = load ptr, ptr %lp5
  %t211 = load i32, ptr %l12, !tbaa !23
  %t212 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t213 = load i32, ptr %l10, !tbaa !23
  store { i64, [21 x i64] } zeroinitializer, ptr %t214
  %t215 = getelementptr { i64, [21 x i64] }, ptr %t214, i32 0, i32 0
  store i64 3, ptr %t215
  %t217 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t212, 0
  %t219 = insertvalue { %"compiler/source:Span", i32 } %t217, i32 %t213, 1
  %t220 = getelementptr { i64, [21 x i64] }, ptr %t214, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t219, ptr %t220
  %t221 = load { i64, [21 x i64] }, ptr %t214
  store { i64, [21 x i64] } %t221, ptr %l101
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t210, i32 %t211, ptr %l101)
  br label %bb24
bb24:
  br i1 %a2, label %bb25, label %bb26
bb25:
  store %olang.scope zeroinitializer, ptr %s1
  %t227 = load ptr, ptr %lp5
  store ptr %t227, ptr %l104, !tbaa !29
  %t228 = load i32, ptr %l12, !tbaa !23
  store i32 %t228, ptr %l105, !tbaa !23
  %t229 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  store %"compiler/source:Span" %t229, ptr %l106
  %t230 = load i32, ptr %l9, !tbaa !23
  %t232 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t230)
  store %"compiler/mir:Lvalue" %t232, ptr %l108
  br label %bb27
bb26:
  br label %bb29
bb27:
  %t233 = load i32, ptr %l10, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t234
  %t235 = getelementptr { i64, [1 x i64] }, ptr %t234, i32 0, i32 0
  store i64 0, ptr %t235
  %t237 = insertvalue { i32 } undef, i32 %t233, 0
  %t238 = getelementptr { i64, [1 x i64] }, ptr %t234, i32 0, i32 1
  store { i32 } %t237, ptr %t238
  %t239 = load { i64, [1 x i64] }, ptr %t234
  %t240 = load i32, ptr %l4, !tbaa !23
  %t241 = load i32, ptr %l3, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t242
  %t243 = getelementptr { i64, [4 x i64] }, ptr %t242, i32 0, i32 0
  store i64 2, ptr %t243
  %t245 = insertvalue { i32, i64 } undef, i32 %t241, 0
  %t246 = insertvalue { i32, i64 } %t245, i64 4, 1
  %t247 = getelementptr { i64, [4 x i64] }, ptr %t242, i32 0, i32 1
  store { i32, i64 } %t246, ptr %t247
  %t248 = load { i64, [4 x i64] }, ptr %t242
  %t249 = load i32, ptr %l3, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t250
  %t251 = getelementptr { i64, [4 x i64] }, ptr %t250, i32 0, i32 0
  store i64 2, ptr %t251
  %t253 = insertvalue { i32, i64 } undef, i32 %t249, 0
  %t254 = insertvalue { i32, i64 } %t253, i64 7, 1
  %t255 = getelementptr { i64, [4 x i64] }, ptr %t250, i32 0, i32 1
  store { i32, i64 } %t254, ptr %t255
  %t256 = load { i64, [4 x i64] }, ptr %t250
  store { i64, [15 x i64] } zeroinitializer, ptr %t257
  %t258 = getelementptr { i64, [15 x i64] }, ptr %t257, i32 0, i32 0
  store i64 8, ptr %t258
  %t260 = insertvalue { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } undef, { i64, [1 x i64] } %t239, 0
  %t262 = insertvalue { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } %t260, i32 %t240, 1
  %t264 = insertvalue { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } %t262, { i64, [4 x i64] } %t248, 2
  %t266 = insertvalue { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } %t264, { i64, [4 x i64] } %t256, 3
  %t267 = getelementptr { i64, [15 x i64] }, ptr %t257, i32 0, i32 1
  store { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } %t266, ptr %t267
  %t268 = load { i64, [15 x i64] }, ptr %t257
  store { i64, [21 x i64] } zeroinitializer, ptr %t269
  %t270 = getelementptr { i64, [21 x i64] }, ptr %t269, i32 0, i32 0
  store i64 0, ptr %t270
  %t271 = load %"compiler/source:Span", ptr %l106
  %t272 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t271, 0
  %t273 = load %"compiler/mir:Lvalue", ptr %l108
  %t274 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t272, %"compiler/mir:Lvalue" %t273, 1
  %t276 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t274, { i64, [15 x i64] } %t268, 2
  %t277 = getelementptr { i64, [21 x i64] }, ptr %t269, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t276, ptr %t277
  %t278 = load { i64, [21 x i64] }, ptr %t269
  store { i64, [21 x i64] } %t278, ptr %l117
  %t279 = load ptr, ptr %l104, !tbaa !29
  %t280 = load i32, ptr %l105, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s1, ptr %t279, i32 %t280, ptr %l117)
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s1)
  br label %bb29
bb29:
  %t282 = load ptr, ptr %lp5
  store ptr %t282, ptr %l119, !tbaa !29
  %t283 = load i32, ptr %l12, !tbaa !23
  store i32 %t283, ptr %l120, !tbaa !23
  %t284 = load i32, ptr %l7, !tbaa !23
  %t286 = sext i32 %t284 to i64
  store i64 %t286, ptr %l122, !tbaa !24
  store i32 3, ptr %l123
  %t287 = load i32, ptr %l3, !tbaa !23
  store i32 %t287, ptr %l124, !tbaa !23
  %t288 = load i32, ptr %l7, !tbaa !23
  %t290 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t288)
  store %"compiler/mir:Lvalue" %t290, ptr %l126
  br label %bb30
bb30:
  store { i64, [4 x i64] } zeroinitializer, ptr %t291
  %t292 = getelementptr { i64, [4 x i64] }, ptr %t291, i32 0, i32 0
  store i64 1, ptr %t292
  %t293 = load %"compiler/mir:Lvalue", ptr %l126
  %t294 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t293, 0
  %t295 = getelementptr { i64, [4 x i64] }, ptr %t291, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t294, ptr %t295
  %t296 = load { i64, [4 x i64] }, ptr %t291
  store { i64, [4 x i64] } %t296, ptr %l127
  %t297 = load i32, ptr %l6, !tbaa !23
  %t299 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t297)
  store %"compiler/mir:Lvalue" %t299, ptr %l129
  br label %bb31
bb31:
  store { i64, [4 x i64] } zeroinitializer, ptr %t300
  %t301 = getelementptr { i64, [4 x i64] }, ptr %t300, i32 0, i32 0
  store i64 1, ptr %t301
  %t302 = load %"compiler/mir:Lvalue", ptr %l129
  %t303 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t302, 0
  %t304 = getelementptr { i64, [4 x i64] }, ptr %t300, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t303, ptr %t304
  %t305 = load { i64, [4 x i64] }, ptr %t300
  %t306 = load ptr, ptr %l119, !tbaa !29
  %t307 = load i32, ptr %l120, !tbaa !23
  %t308 = load i64, ptr %l122, !tbaa !24
  %t309 = load i32, ptr %l123, !range !{i32 0, i32 51}
  %t310 = load i32, ptr %l124, !tbaa !23
  %t311 = load { i64, [4 x i64] }, ptr %l127
  call void @compiler_2feval_2etprim(ptr %v1, ptr %t306, i32 %t307, i64 %t308, i32 %t309, i32 %t310, { i64, [4 x i64] } %t311, { i64, [4 x i64] } %t305)
  br label %bb32
bb32:
  %t313 = load ptr, ptr %lp5
  store ptr %t313, ptr %l131, !tbaa !29
  %t314 = load i32, ptr %l12, !tbaa !23
  store i32 %t314, ptr %l132, !tbaa !23
  %t315 = load i32, ptr %l6, !tbaa !23
  %t317 = sext i32 %t315 to i64
  store i64 %t317, ptr %l134, !tbaa !24
  store i32 3, ptr %l135
  %t318 = load i32, ptr %l3, !tbaa !23
  store i32 %t318, ptr %l136, !tbaa !23
  %t319 = load i32, ptr %l6, !tbaa !23
  %t321 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t319)
  store %"compiler/mir:Lvalue" %t321, ptr %l138
  br label %bb33
bb33:
  store { i64, [4 x i64] } zeroinitializer, ptr %t322
  %t323 = getelementptr { i64, [4 x i64] }, ptr %t322, i32 0, i32 0
  store i64 1, ptr %t323
  %t324 = load %"compiler/mir:Lvalue", ptr %l138
  %t325 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t324, 0
  %t326 = getelementptr { i64, [4 x i64] }, ptr %t322, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t325, ptr %t326
  %t327 = load { i64, [4 x i64] }, ptr %t322
  %t328 = load i32, ptr %l3, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t329
  %t330 = getelementptr { i64, [4 x i64] }, ptr %t329, i32 0, i32 0
  store i64 2, ptr %t330
  %t332 = insertvalue { i32, i64 } undef, i32 %t328, 0
  %t333 = insertvalue { i32, i64 } %t332, i64 1, 1
  %t334 = getelementptr { i64, [4 x i64] }, ptr %t329, i32 0, i32 1
  store { i32, i64 } %t333, ptr %t334
  %t335 = load { i64, [4 x i64] }, ptr %t329
  %t336 = load ptr, ptr %l131, !tbaa !29
  %t337 = load i32, ptr %l132, !tbaa !23
  %t338 = load i64, ptr %l134, !tbaa !24
  %t339 = load i32, ptr %l135, !range !{i32 0, i32 51}
  %t340 = load i32, ptr %l136, !tbaa !23
  call void @compiler_2feval_2etprim(ptr %v1, ptr %t336, i32 %t337, i64 %t338, i32 %t339, i32 %t340, { i64, [4 x i64] } %t327, { i64, [4 x i64] } %t335)
  br label %bb34
bb34:
  %t343 = load ptr, ptr %lp5
  %t344 = load i32, ptr %l12, !tbaa !23
  %t345 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t346 = load i32, ptr %l10, !tbaa !23
  store { i64, [21 x i64] } zeroinitializer, ptr %t347
  %t348 = getelementptr { i64, [21 x i64] }, ptr %t347, i32 0, i32 0
  store i64 4, ptr %t348
  %t350 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t345, 0
  %t352 = insertvalue { %"compiler/source:Span", i32 } %t350, i32 %t346, 1
  %t353 = getelementptr { i64, [21 x i64] }, ptr %t347, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t352, ptr %t353
  %t354 = load { i64, [21 x i64] }, ptr %t347
  store { i64, [21 x i64] } %t354, ptr %l146
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t343, i32 %t344, ptr %l146)
  br label %bb35
bb35:
  %t358 = load ptr, ptr %lp5
  %t359 = load i32, ptr %l12, !tbaa !23
  %t360 = load i32, ptr %l11, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t361
  %t362 = getelementptr { i64, [8 x i64] }, ptr %t361, i32 0, i32 0
  store i64 1, ptr %t362
  %t364 = insertvalue { i32 } undef, i32 %t360, 0
  %t365 = getelementptr { i64, [8 x i64] }, ptr %t361, i32 0, i32 1
  store { i32 } %t364, ptr %t365
  %t366 = load { i64, [8 x i64] }, ptr %t361
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v1, ptr %t358, i32 %t359, { i64, [8 x i64] } %t366)
  br label %bb36
bb36:
  %t370 = load ptr, ptr %lp5
  %t371 = load i32, ptr %l13, !tbaa !23
  %t372 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t373 = load i32, ptr @G_2ecompiler_2feval_2eS0, !tbaa !23
  store { i64, [21 x i64] } zeroinitializer, ptr %t374
  %t375 = getelementptr { i64, [21 x i64] }, ptr %t374, i32 0, i32 0
  store i64 4, ptr %t375
  %t377 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t372, 0
  %t379 = insertvalue { %"compiler/source:Span", i32 } %t377, i32 %t373, 1
  %t380 = getelementptr { i64, [21 x i64] }, ptr %t374, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t379, ptr %t380
  %t381 = load { i64, [21 x i64] }, ptr %t374
  store { i64, [21 x i64] } %t381, ptr %l156
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t370, i32 %t371, ptr %l156)
  br label %bb37
bb37:
  %t385 = load ptr, ptr %lp5
  store ptr %t385, ptr %l158, !tbaa !29
  %t386 = load i32, ptr %l13, !tbaa !23
  store i32 %t386, ptr %l159, !tbaa !23
  %t387 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  store %"compiler/source:Span" %t387, ptr %l160
  %t388 = load i32, ptr %l7, !tbaa !23
  %t390 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t388)
  store %"compiler/mir:Lvalue" %t390, ptr %l162
  br label %bb38
bb38:
  store { i64, [4 x i64] } zeroinitializer, ptr %t391
  %t392 = getelementptr { i64, [4 x i64] }, ptr %t391, i32 0, i32 0
  store i64 1, ptr %t392
  %t393 = load %"compiler/mir:Lvalue", ptr %l162
  %t394 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t393, 0
  %t395 = getelementptr { i64, [4 x i64] }, ptr %t391, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t394, ptr %t395
  %t396 = load { i64, [4 x i64] }, ptr %t391
  store { i64, [8 x i64] } zeroinitializer, ptr %t397
  %t398 = getelementptr { i64, [8 x i64] }, ptr %t397, i32 0, i32 0
  store i64 5, ptr %t398
  %t399 = load %"compiler/source:Span", ptr %l160
  %t400 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } undef, %"compiler/source:Span" %t399, 0
  %t402 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } %t400, { i64, [4 x i64] } %t396, 1
  %t403 = getelementptr { i64, [8 x i64] }, ptr %t397, i32 0, i32 1
  store { %"compiler/source:Span", { i64, [4 x i64] } } %t402, ptr %t403
  %t404 = load { i64, [8 x i64] }, ptr %t397
  %t405 = load ptr, ptr %l158, !tbaa !29
  %t406 = load i32, ptr %l159, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v1, ptr %t405, i32 %t406, { i64, [8 x i64] } %t404)
  br label %bb39
bb39:
  %t408 = load ptr, ptr %lp5
  call void @llvm.memmove.p0.p0.i64(ptr %l165, ptr %t408, i64 800, i1 false)
  call void @__olang_scope_close(ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l165, i64 800, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2etdefine(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l8 = alloca i1
  %s0 = alloca %olang.scope
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t5 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3aFn_2eVerify(ptr %v2, ptr %v0, ptr %s0, ptr %t1, ptr %a0)
  store { i64, ptr } %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t6, ptr %l3, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t9 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t7, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d15, i32 0, i32 1) })
  store i1 %t9, ptr %l8
  br label %bb2
bb2:
  %t10 = load i1, ptr %l8, !tbaa !21
  br i1 %t10, label %bb3, label %bb4
bb3:
  %t12 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eDefine(ptr %v1, ptr %v2, ptr %a1, ptr %t12)
  br label %bb5
bb4:
  %t15 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t15, 1
  %t18 = extractvalue { i64, ptr } %t15, 0
  %t19 = insertvalue { i64, ptr } undef, i64 %t18, 0
  %t20 = insertvalue { i64, ptr } %t19, ptr %t17, 1
  call void @__olang_check_failed_text(ptr @olang_loc_48f03219a23009f5_27a95ef9d9612249, { i64, ptr } %t20)
  unreachable
bb5:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2feval_2etrueOverflows(i32 %a0, i64 %a1, i64 %a2, i64 %a3, i1 %a4) #0 {
entry:
  %l0 = alloca i32
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i1
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l12 = alloca i64
  %l18 = alloca i64
  %l26 = alloca i64
  %l29 = alloca i64
  %l33 = alloca i64
  %l36 = alloca i64
  %l40 = alloca i64
  %l46 = alloca i1
  %l54 = alloca i1
  %rv = alloca i1
  store i32 %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
  store i1 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l3, !tbaa !24
  %t3 = icmp slt i64 %t1, 8
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i32, ptr %l0, !range !{i32 0, i32 51}
  %t7 = trunc i64 3 to i32
  %t8 = icmp eq i32 %t5, %t7
  br i1 %t8, label %bb3, label %bb4
bb2:
  br label %bb18
bb3:
  %t10 = load i64, ptr %l1, !tbaa !24
  %t11 = load i64, ptr %l2, !tbaa !24
  %t14 = add i64 %t10, %t11
  store i64 %t14, ptr %l12, !tbaa !24
  br label %bb8
bb4:
  %t16 = load i32, ptr %l0, !range !{i32 0, i32 51}
  %t18 = trunc i64 4 to i32
  %t19 = icmp eq i32 %t16, %t18
  br i1 %t19, label %bb5, label %bb6
bb5:
  %t21 = load i64, ptr %l1, !tbaa !24
  %t22 = load i64, ptr %l2, !tbaa !24
  %t25 = sub i64 %t21, %t22
  store i64 %t25, ptr %l18, !tbaa !24
  br label %bb7
bb6:
  %t27 = load i64, ptr %l1, !tbaa !24
  %t28 = load i64, ptr %l2, !tbaa !24
  %t31 = mul i64 %t27, %t28
  store i64 %t31, ptr %l18, !tbaa !24
  br label %bb7
bb7:
  %t33 = load i64, ptr %l18, !tbaa !24
  store i64 %t33, ptr %l12, !tbaa !24
  br label %bb8
bb8:
  %t34 = load i64, ptr %l12, !tbaa !24
  store i64 %t34, ptr %l5, !tbaa !24
  %t35 = load i1, ptr %l4, !tbaa !21
  br i1 %t35, label %bb9, label %bb10
bb9:
  %t37 = load i64, ptr %l3, !tbaa !24
  %t39 = mul i64 8, %t37
  %t41 = sub i64 %t39, 1
  store i64 %t41, ptr %l29, !tbaa !24
  %t42 = load i64, ptr %l29, !tbaa !24
  %t43 = load i64, ptr %l29, !tbaa !24
  %t44 = shl i64 1, %t43
  %t46 = sub i64 0, %t44
  store i64 %t46, ptr %l26, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb11
bb11:
  %t48 = load i64, ptr %l26, !tbaa !24
  store i64 %t48, ptr %l6, !tbaa !24
  %t49 = load i1, ptr %l4, !tbaa !21
  br i1 %t49, label %bb12, label %bb13
bb12:
  %t51 = load i64, ptr %l3, !tbaa !24
  %t53 = mul i64 8, %t51
  %t55 = sub i64 %t53, 1
  store i64 %t55, ptr %l36, !tbaa !24
  %t56 = load i64, ptr %l36, !tbaa !24
  %t57 = load i64, ptr %l36, !tbaa !24
  %t58 = shl i64 1, %t57
  %t60 = sub i64 %t58, 1
  store i64 %t60, ptr %l33, !tbaa !24
  br label %bb14
bb13:
  %t62 = load i64, ptr %l3, !tbaa !24
  %t64 = mul i64 8, %t62
  store i64 %t64, ptr %l40, !tbaa !24
  %t65 = load i64, ptr %l40, !tbaa !24
  %t66 = load i64, ptr %l40, !tbaa !24
  %t67 = shl i64 1, %t66
  %t69 = sub i64 %t67, 1
  store i64 %t69, ptr %l33, !tbaa !24
  br label %bb14
bb14:
  %t71 = load i64, ptr %l33, !tbaa !24
  store i64 %t71, ptr %l7, !tbaa !24
  %t72 = load i64, ptr %l5, !tbaa !24
  %t73 = load i64, ptr %l6, !tbaa !24
  %t76 = icmp slt i64 %t72, %t73
  br i1 %t76, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l46, !tbaa !21
  br label %bb17
bb16:
  %t78 = load i64, ptr %l5, !tbaa !24
  %t79 = load i64, ptr %l7, !tbaa !24
  %t82 = icmp sgt i64 %t78, %t79
  store i1 %t82, ptr %l46, !tbaa !21
  br label %bb17
bb17:
  %t84 = load i1, ptr %l46, !tbaa !21
  store i1 %t84, ptr %rv
  br label %ret
bb18:
  %t85 = load i32, ptr %l0, !range !{i32 0, i32 51}
  %t86 = load i64, ptr %l1, !tbaa !24
  %t87 = load i64, ptr %l2, !tbaa !24
  %t88 = load i1, ptr %l4, !tbaa !21
  %t93 = call i1 @compiler_2feval_2eoverflows64(i32 %t85, i64 %t86, i64 %t87, i1 %t88)
  store i1 %t93, ptr %l54
  br label %bb19
bb19:
  %t94 = load i1, ptr %l54, !tbaa !21
  store i1 %t94, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, i64 } @compiler_2feval_2ewideMax(i64 %a0, i1 %a1) #0 {
entry:
  %l0 = alloca i64
  %l2 = alloca i64
  %l3 = alloca { i64, i64 }
  %l7 = alloca i64
  %l15 = alloca { i64, i64 }
  %l20 = alloca { i64, i64 }
  %rv = alloca { i64, i64 }
  store i64 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  br i1 %a1, label %bb1, label %bb2
bb1:
  %t3 = load i64, ptr %l0, !tbaa !24
  %t5 = sub i64 %t3, 1
  store i64 %t5, ptr %l7, !tbaa !24
  br label %bb3
bb2:
  %t7 = load i64, ptr %l0, !tbaa !24
  store i64 %t7, ptr %l7, !tbaa !24
  br label %bb3
bb3:
  %t9 = load i64, ptr %l7, !tbaa !24
  store i64 %t9, ptr %l2, !tbaa !24
  %t10 = load i64, ptr %l2, !tbaa !24
  %t12 = icmp sge i64 %t10, 128
  br i1 %t12, label %bb4, label %bb5
bb4:
  %t14 = insertvalue { i64, i64 } undef, i64 -1, 0
  %t15 = insertvalue { i64, i64 } %t14, i64 -1, 1
  store { i64, i64 } %t15, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t17 = load i64, ptr %l2, !tbaa !24
  %t19 = call { i64, i64 } @compiler_2feval_2eshl128(i64 1, i64 0, i64 %t17)
  store { i64, i64 } %t19, ptr %l15
  br label %bb7
bb7:
  %t20 = load { i64, i64 }, ptr %l15
  store { i64, i64 } %t20, ptr %l3
  %t21 = getelementptr { i64, i64 }, ptr %l3, i32 0, i32 0
  %t22 = load i64, ptr %t21, !tbaa !24
  %t24 = getelementptr { i64, i64 }, ptr %l3, i32 0, i32 1
  %t25 = load i64, ptr %t24, !tbaa !24
  %t31 = call { i64, i64 } @compiler_2feval_2esub128(i64 %t22, i64 %t25, i64 1, i64 0)
  store { i64, i64 } %t31, ptr %l20
  br label %bb8
bb8:
  %t32 = load { i64, i64 }, ptr %l20
  store { i64, i64 } %t32, ptr %rv
  br label %ret
ret:
  %rr = load { i64, i64 }, ptr %rv
  ret { i64, i64 } %rr
}

define dso_local %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %v0, i64 %a0, i64 %a1) #0 {
entry:
  %rv = alloca %"compiler/eval:Ptr"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"compiler/eval:Ptr" undef, i64 %a0, 0
  %t8 = insertvalue %"compiler/eval:Ptr" %t6, i64 %a1, 1
  store %"compiler/eval:Ptr" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/eval:Ptr", ptr %rv
  ret %"compiler/eval:Ptr" %rr
}

define dso_local %"compiler/eval:reg" @compiler_2feval_3areg_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"compiler/eval:reg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"compiler/eval:reg" undef, i64 0, 0
  %t4 = insertvalue %"compiler/eval:reg" %t2, i64 0, 1
  %t6 = insertvalue %"compiler/eval:reg" %t4, i64 0, 2
  %t8 = insertvalue %"compiler/eval:reg" %t6, i64 0, 3
  %t10 = insertvalue %"compiler/eval:reg" %t8, i64 -1, 4
  %t12 = insertvalue %"compiler/eval:reg" %t10, i64 -1, 5
  %t14 = insertvalue %"compiler/eval:reg" %t12, i64 0, 6
  %t16 = insertvalue %"compiler/eval:reg" %t14, i64 -1, 7
  store %"compiler/eval:reg" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/eval:reg", ptr %rv
  ret %"compiler/eval:reg" %rr
}

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
@.d0 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"OLANG_DEADREGIONS" }>, align 8
declare void @__olang_errpay_pop()
@.d1 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d2 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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
@.d3 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
declare void @llvm.memset.p0.i64(ptr, i8, i64, i1)
define linkonce_odr void @olang_2emir_2eHelperKind_2eZero_2ecompiler_2feval_3acfn(ptr %out, ptr %v0) #0 {
entry:
  %l0 = alloca %"compiler/eval:cfn"
  %t1 = alloca %"compiler/eval:cfn", align 8
  br label %start
start:
  br label %bb0
bb0:
  call void @compiler_2feval_3acfn_2ector(ptr %t1, ptr %v0)
  call void @llvm.memmove.p0.p0.i64(ptr %l0, ptr %t1, i64 264, i1 false)
  br label %bb1
bb1:
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l0, i64 264, i1 false)
  br label %ret
ret:
  ret void
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
@__olang_prog_scope = external thread_local(initialexec) global ptr
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

define linkonce_odr void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feval_3aBlob(ptr %out, ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/eval:Blob"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  call void @llvm.memmove.p0.p0.i64(ptr %l1, ptr %a0, i64 272, i1 false)
  %t2 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 0
  %t4 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cU8_3e(ptr %v0, ptr %t2)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l3
  br label %bb1
bb1:
  %t5 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t6 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %t6
  %t7 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 3
  %t9 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t7)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %l5
  br label %bb2
bb2:
  %t10 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t11 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %t11
  %t12 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 4
  %t14 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t12)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l7
  br label %bb3
bb3:
  %t15 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  %t16 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %t16
  %t17 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 5
  %t19 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t17)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t19, ptr %l9
  br label %bb4
bb4:
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  %t21 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %t21
  %t22 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 6
  %t24 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t22)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t24, ptr %l11
  br label %bb5
bb5:
  %t25 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  %t26 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t25, ptr %t26
  %t27 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 7
  %t29 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t27)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t29, ptr %l13
  br label %bb6
bb6:
  %t30 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  %t31 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 7
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t30, ptr %t31
  %t32 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 8
  %t34 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t32)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t34, ptr %l15
  br label %bb7
bb7:
  %t35 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  %t36 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t35, ptr %t36
  %t37 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 9
  %t39 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t37)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t39, ptr %l17
  br label %bb8
bb8:
  %t40 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  %t41 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 9
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t40, ptr %t41
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l1, i64 272, i1 false)
  br label %ret
ret:
  ret void
}

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
declare i64 @__olang_fmt_float(ptr, i64, double, i32)
declare void @__olang_sb_add(ptr, i64)
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
declare void @__olang_sb_done(ptr)
define linkonce_odr void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feval_3agenRec(ptr %out, ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/eval:genRec"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  call void @llvm.memmove.p0.p0.i64(ptr %l1, ptr %a0, i64 280, i1 false)
  %t2 = getelementptr %"compiler/eval:genRec", ptr %l1, i32 0, i32 6
  %t4 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t2)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l3
  br label %bb1
bb1:
  %t5 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t6 = getelementptr %"compiler/eval:genRec", ptr %l1, i32 0, i32 6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %t6
  %t7 = getelementptr %"compiler/eval:genRec", ptr %l1, i32 0, i32 7
  %t9 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t7)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %l5
  br label %bb2
bb2:
  %t10 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t11 = getelementptr %"compiler/eval:genRec", ptr %l1, i32 0, i32 7
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %t11
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l1, i64 280, i1 false)
  br label %ret
ret:
  ret void
}

@olang_2esole_2ecompiler_2feval_3aMachine_2e45 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
declare void @__olang_region_release(ptr) noinline
@olang_2esole_2ecompiler_2feval_3aMachine_2e46 = weak hidden constant i1 false
@.d4 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"@" }>, align 8
@.d5 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d6 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@.d7 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d8 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
declare ptr @__olang_scope_of(ptr, ptr) noinline
@.d9 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d10 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@olang_2esole_2ecompiler_2feval_3aMachine_2e60 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e58 = weak hidden constant i1 false
define linkonce_odr void @olang_2emir_2eHelperKind_2eZero_2ecompiler_2feval_3aframe(ptr %out) #0 {
entry:
  %l0 = alloca %"compiler/eval:frame"
  %t1 = alloca %"compiler/eval:frame", align 8
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_3aframe_2ector(ptr %t1, ptr %t2)
  call void @llvm.memmove.p0.p0.i64(ptr %l0, ptr %t1, i64 136, i1 false)
  br label %bb1
bb1:
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l0, i64 136, i1 false)
  br label %ret
ret:
  ret void
}

define linkonce_odr %"compiler/mir:BasicBlock" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fmir_3aBasicBlock(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/mir:BasicBlock"
  %l3 = alloca %"compiler/mir:StmtList"
  %rv = alloca %"compiler/mir:BasicBlock"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/mir:BasicBlock", ptr %a0
  store %"compiler/mir:BasicBlock" %t2, ptr %l1
  %t3 = getelementptr %"compiler/mir:BasicBlock", ptr %l1, i32 0, i32 0
  %t5 = call %"compiler/mir:StmtList" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fmir_3aStmtList(ptr %v0, ptr %t3)
  store %"compiler/mir:StmtList" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"compiler/mir:StmtList", ptr %l3
  %t7 = getelementptr %"compiler/mir:BasicBlock", ptr %l1, i32 0, i32 0
  store %"compiler/mir:StmtList" %t6, ptr %t7
  %t8 = load %"compiler/mir:BasicBlock", ptr %l1
  store %"compiler/mir:BasicBlock" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/mir:BasicBlock", ptr %rv
  ret %"compiler/mir:BasicBlock" %rr
}

@olang_2esole_2ecompiler_2feval_3aMachine_2e27 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e28 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e29 = weak hidden constant i1 false
@.d11 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d12 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
@.d13 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
@.d14 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
@.d15 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare void @__olang_check_failed_text(ptr, { i64, ptr }) cold noreturn
declare noalias ptr @__olang_scope_alloc_slow(ptr, i64, i64) noinline
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
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cU8_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0) #0 {
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

declare ptr @__olang_sb_grow(ptr, i64) noinline
define linkonce_odr %"compiler/mir:StmtList" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fmir_3aStmtList(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/mir:StmtList"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %rv = alloca %"compiler/mir:StmtList"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/mir:StmtList", ptr %a0
  store %"compiler/mir:StmtList" %t2, ptr %l1
  %t3 = getelementptr %"compiler/mir:StmtList", ptr %l1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l2, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t5, 0
  store i64 %t6, ptr %l3, !tbaa !24
  %t7 = load i64, ptr %l3, !tbaa !24
  %t8 = mul i64 %t7, 176
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 176
  call void @llvm.memmove.p0.p0.i64(ptr %t13, ptr %t15, i64 %t17, i1 false)
  %t18 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t19 = getelementptr %"compiler/mir:StmtList", ptr %l1, i32 0, i32 0
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = load %"compiler/mir:StmtList", ptr %l1
  store %"compiler/mir:StmtList" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/mir:StmtList", ptr %rv
  ret %"compiler/mir:StmtList" %rr
}

declare void @compiler_2feval_3aMachine_2ector(ptr %out, ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @compiler_2feval_3ascope_2ector(ptr %out, ptr %v0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2ePush_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %a0, ptr %a1)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enewScope(ptr %v0, ptr %a0, i64 %a1)
declare { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList1(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i64 %a5, i1 %a6, i32 %a7, i64 %a8)
declare void @compiler_2feval_2etfn(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddTemp(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
@G_2ecompiler_2fmir_2eI32T = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\05\00\00\00" }>, align 8
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %a0)
declare { i64, [2 x i64] } @compiler_2feval_2etkey(i64 %a0)
declare { i64, [4 x i64] } @compiler_2feval_2etcopy(i64 %a0)
declare %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@G_2ecompiler_2fmir_2eEmpty = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %a0)
declare %"compiler/mir:Call" @compiler_2fmir_3aCall_2ector(ptr %v0, { i64, [7 x i64] } %a0, %"compiler/mir:Range" %a1, %"compiler/mir:Range" %a2, %"compiler/mir:Lvalue" %a3, i1 %a4, i32 %a5, i32 %a6, i32 %a7)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddCall(ptr %v0, ptr %a0, %"compiler/mir:Call" %a1)
declare void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v0, ptr %a0, i32 %a1, { i64, [8 x i64] } %a2)
declare void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2)
declare %"compiler/mir:Case" @compiler_2fmir_3aCase_2ector(ptr %v0, i64 %a0, i32 %a1)
declare %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddCases(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2feval_2eult64(i64 %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eLen_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20I64_3e_2eP_H79a97b7337c7adf08bdd37311af7e171(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, i64 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2ePush_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_8e30d4bcef98d937_821e6ec72834ca4b = external constant [0 x i8]
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2edecode(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e_2e_Hf0a5beca6f8aee4731a76bd327ae0a99(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
@olang_loc_8d25544d0bd70291_3d464b777e1774ad = external constant [0 x i8]
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3ccompiler_2fmir_3aFnKe_H6f34e373626f6b99bb5e62c0fd8bd7a4(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aTypeId_3e__Hbdd7c5068e376aa260a62181a9f99429(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3ccompiler_2fmir_3aFnKe_Hd8d89e440939766a34c786789c5d3b97(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20I64_3e_2eG_H6ffe2eb17daa971b2c9d564ad72358b1(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2estepClose(ptr %v0, ptr %a0)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eloop(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eunwind(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
declare %"compiler/eval:gkey" @compiler_2feval_3agkey_2ector(ptr %v0, i64 %a0, i32 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2feval_3agkey_2c_20I64_3e_2eG_H841bd46d30f67641fdfac3080f15aea1(ptr %v0, ptr %a0, %"compiler/eval:gkey" %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"compiler/eval:global" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eAt_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ereachesWritable(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2estartGlobal(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopy(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, %"compiler/eval:Ptr" %a2, i64 %a3)
declare %"compiler/eval:Image" @compiler_2feval_3aImage_2ector(ptr %v0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2feval_3aBlob_2ector(ptr %out, ptr %v0)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAlign(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erdRaw(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2ePush_3cU8_3e(ptr %v0, ptr %a0, i8 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eSetAt_3cU8_3e(ptr %v0, ptr %a0, i64 %a1, i8 %a2)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aBlob_3e_2ePush_3ccompiler_2feval_3aBlob_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aBlob_3e_2eAt_3ccompiler_2feval_3aBlob_3e(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aBlob_3e_2eRefMut_3ccompiler_2feval_3aBlob_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidth(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i64 %a2)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintValue(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20compiler__H5ec116bb82f5a234bb19cb32db1efc81(ptr %v0, ptr %a0)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare %"std/pair:Pair.9f40551e0d6019a8e678d8f53048b6ba" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20compiler__H1a77801a5ab3ea58cbf0ff15b43ff2de(ptr %v0, ptr %a0, i64 %a1)
declare { %"compiler/eval:Ptr", i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayView(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elive(ptr %v0, ptr %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enewRegSlot(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %out, ptr %v0, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3areg_3e_2eRefMut_3ccompiler_2feval_3areg_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3areg_3e_2eSetAt_3ccompiler_2feval_3areg_3e(ptr %v0, ptr %a0, i64 %a1, %"compiler/eval:reg" %a2)
declare { %"compiler/eval:Ptr", i32 } @compiler_2feval_2ecompiler_2feval_3aMachine_2eplace(ptr %v0, ptr %a0, i64 %a1, %"compiler/mir:Lvalue" %a2)
@olang_loc_6f754b89a33b6044_bbcfb7dbcaa58778 = external constant [0 x i8]
declare %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2escratchFor(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eregion(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2feval_2eclassOf(i64 %a0)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enewSlot(ptr %v0, ptr %a0)
@olang_loc_317a6a00a16cca58_813a0e779d592254 = external constant [0 x i8]
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eappendByte(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare ptr @compiler_2feval_2ecompiler_2feval_3aMachine_2efnOfFrame(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/mir:Call" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eAt_3ccompiler_2fmir_3aCall_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ejump(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
@G_2ecompiler_2fmir_2eNoBlock = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 8
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2ecalleeType(ptr %v0, ptr %a0, i64 %a1, { i64, [7 x i64] } %a2)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erecode(ptr %v0, ptr %a0, i64 %a1, i32 %a2, i32 %a3)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i64 %a2, i64 %a3)
@olang_loc_858a31b75d933e1b_7873e096df41decf = external constant [0 x i8]
declare { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %a0, i64 %a1)
declare { { i64, ptr }, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2epack(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ebuildScope(ptr %v0, ptr %a0, i64 %a1, { i64, [1 x i64] } %a2)
declare %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtr(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ecodeIndex(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@olang_loc_17d12c125f58d820_35ade4b878109a14 = external constant [0 x i8]
@olang_loc_ae4c96370005e5a0_f3d2360ec3e473b4 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@olang_loc_b477747d616f01f0_6d4a3c12dca1cf4c = external constant [0 x i8]
declare { %"compiler/eval:Ptr", i32 } @compiler_2feval_2ecompiler_2feval_3aMachine_2eelement(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2, i64 %a3)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eflatValue(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2, i64 %a3)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eunary(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i32 %a3, i64 %a4)
declare i64 @compiler_2feval_2ewordValue(i32 %a0, i64 %a1, i64 %a2)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enumOp(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i64 %a3, i32 %a4, i32 %a5, i64 %a6)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2elocalAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3, i1 %a4)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eunmark(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2efloatCompare(ptr %v0, ptr %a0, i32 %a1, double %a2, double %a3)
@olang_loc_d784dcd9713515f8_b9d041eddaa630c = external constant [0 x i8]
declare double @compiler_2feval_2ecompiler_2feval_3aMachine_2etoF64(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
@olang_loc_d2031ca5bdc3c0c9_c1504039d0cd1a3d = external constant [0 x i8]
@olang_loc_82c834935ab97012_8fe8672257be0a6 = external constant [0 x i8]
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2efromF64(ptr %v0, ptr %a0, double %a1, i32 %a2)
@olang_loc_1a5820d8caa3da70_8ddb412d29c69c24 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eAt_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_b3c5db2f6a543f4f_ebedfa57413dac3 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3agenRec_3e_2eAt_3ccompiler_2feval_3agenRec_3e(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2feval_3agenRec_2ector(ptr %out, ptr %v0)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eRemove_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3agenRec_3e_2eSetAt_3ccompiler_2feval_3agenRec_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3agenRec_3e_2eRefMut_3ccompiler_2feval_3agenRec_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3agenRec_3e_2ePush_3ccompiler_2feval_3agenRec_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3agenRec_3e_2eLen_3ccompiler_2feval_3agenRec_3e(ptr %v0, ptr %a0)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eglobalWritten(ptr %v0, ptr %a0, %"compiler/mir:Lvalue" %a1)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eoperandReady(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eplaceReady(ptr %v0, ptr %a0, i64 %a1, %"compiler/mir:Lvalue" %a2)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2erangeReady(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, %"compiler/mir:Range" %a3)
@olang_loc_d7d71e32b1402da8_19cce939fe39e26c = external constant [0 x i8]
@olang_loc_8ee299e344af3927_1a30263e89afea2b = external constant [0 x i8]
@olang_loc_9d9a614f49301d32_780986365d0a3a16 = external constant [0 x i8]
@G_2ecompiler_2fmir_2eI64T = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\06\00\00\00" }>, align 8
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eibits(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elay(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6b5ccacad8db807339a3579aa8c82ff8(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H2b85ceff512af6e6ca26c554a1c16247(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i1 %a2)
declare i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2epartList(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2epartOffset(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2epartType(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCaseNames(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2epayloadType(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eelemOf(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_d3df02eef027536f_dc15be465081b3fb = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eLen_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %a0)
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eAt_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_7e96cd508c5b7919_900f150eebe6671d = external constant [0 x i8]
@olang_loc_b24244fd0a11c914_466201095dcd7a18 = external constant [0 x i8]
declare i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eLen_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ertArray(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fmir_2ecompiler_2fmir_3aGenInfo_2eIsGen(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2egenNew(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i32 %a3, { i64, [4 x i64] } %a4)
declare i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eplaceType(ptr %v0, ptr %a0, i64 %a1, %"compiler/mir:Lvalue" %a2)
@olang_loc_75dcc6d397d821f4_f630b477c159fde0 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePackedBits(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRawBits(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRawType(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopyBits(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i64 %a2, %"compiler/eval:Ptr" %a3, i64 %a4, i64 %a5)
declare { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %a0, i64 %a1, %"compiler/mir:Range" %a2, i64 %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBitOffsets(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eunpackInto(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2, %"compiler/eval:Ptr" %a3, i64 %a4)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %a0, i32 %a1)
declare { i64, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2ewideOf(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewideToFloat(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i1 %a3, i32 %a4)
declare i1 @compiler_2feval_2efloatFits(double %a0, i64 %a1, i1 %a2)
declare { i64, i64 } @compiler_2feval_2efloatToWide(double %a0)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eputInt(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2, i64 %a3, i64 %a4)
declare { i64, i64 } @compiler_2feval_2eneg128(i64 %a0, i64 %a1)
declare { i64, i64 } @compiler_2feval_2eextend128(i64 %a0, i64 %a1, i64 %a2, i1 %a3)
declare i64 @compiler_2feval_2ecountBits128(i1 %a0, i64 %a1, i64 %a2, i64 %a3)
declare { i64, i64 } @compiler_2feval_2eshr128(i64 %a0, i64 %a1, i64 %a2, i1 %a3)
declare { i64, i64 } @compiler_2feval_2eshl128(i64 %a0, i64 %a1, i64 %a2)
@olang_loc_90562c53bc58bb00_b398839a3bffbdf4 = external constant [0 x i8]
declare { i64, i64 } @compiler_2feval_2eadd128(i64 %a0, i64 %a1, i64 %a2, i64 %a3)
declare { i64, i64 } @compiler_2feval_2esub128(i64 %a0, i64 %a1, i64 %a2, i64 %a3)
declare { i64, i64 } @compiler_2feval_2emul128(i64 %a0, i64 %a1, i64 %a2, i64 %a3)
declare { i64, i64 } @compiler_2feval_2ewideMin(i64 %a0)
declare { i64, i64, i64, i64 } @compiler_2feval_2eudivmod128(i64 %a0, i64 %a1, i64 %a2, i64 %a3)
@olang_loc_124d877554f39b91_abf5664d02ded825 = external constant [0 x i8]
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enotModelled(ptr %v0, ptr %a0)
@olang_loc_e0c215207c57b9fa_758d150e3c60fc6e = external constant [0 x i8]
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2estopAtComparison(ptr %v0, ptr %a0)
declare void @compiler_2feval_3aframe_2ector(ptr %out, ptr %v0)
@olang_loc_d3c8ecceb8a6d93b_6543c983ba03c11f = external constant [0 x i8]
@olang_loc_d67750d3ea89b5a6_4cf132db9678b04a = external constant [0 x i8]
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ezero(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i64 %a2)
declare { i64, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2ewideConst(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrWide(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2, i64 %a3, i64 %a4)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ecanonBits(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@olang_loc_af1f9cfaa1609478_d5c4fc0e8d836404 = external constant [0 x i8]
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aConstNode_3e_2eAt_3ccompiler_2fmir_3aConstNode_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_12565802a2336670_a75db38aedd0e3fc = external constant [0 x i8]
declare { %"compiler/eval:Ptr", i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2edataFor(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, i32 %a3, i64 %a4, %"compiler/source:Span" %a5)
@olang_loc_1069159e4cdf0a01_3c7ea434b50ec3ad = external constant [0 x i8]
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eat(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i64 %a2, i1 %a3)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2efixedLen(ptr %v0, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/mir:BasicBlock" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eAt_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/pair:Pair.9f40551e0d6019a8e678d8f53048b6ba" @std_2fpair_3aPair_3cI64_2c_20compiler_2fsource_3aSpan_3e_2ector(ptr %v0, i64 %a0, %"compiler/source:Span" %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20compiler__H2dfd829fbe4fa38977b46d00afbe1a06(ptr %v0, ptr %a0, %"std/pair:Pair.9f40551e0d6019a8e678d8f53048b6ba" %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2estop(ptr %v0, ptr %v1, ptr %a0, { i64, [5 x i64] } %a1)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewalksLetGo(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eRefMut_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eendsProgram(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2etaskEnded(ptr %v0, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eTruncate_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_cf5f350672f7c138_c751ad896f9a9f0c = external constant [0 x i8]
@olang_loc_bcf45b1eafea1f9c_8e096368132121a8 = external constant [0 x i8]
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eanchorRegion(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecloseRegion(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLayoutState(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eLaidOut = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eNoLayout = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@olang_loc_a19345797ce3092f_df897154cd0b0613 = external constant [0 x i8]
@olang_loc_8629e3295afcf15a_58f771f6fdbc30de = external constant [0 x i8]
@olang_loc_985556dab320f6d9_efe4e1681fb7461d = external constant [0 x i8]
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshapeOf(ptr %v0, ptr %a0, i32 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3atask_3e_2eRefMut_3ccompiler_2feval_3atask_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/eval:task" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3atask_3e_2eAt_3ccompiler_2feval_3atask_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/mir:Task" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTask_3e_2eAt_3ccompiler_2fmir_3aTask_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2eAt_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_ab5609012e755c90_cedd2fbfe92d4e64 = external constant [0 x i8]
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eownParams(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@olang_loc_f6d4fb7f4fd95721_139ddd7815176855 = external constant [0 x i8]
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eatK(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eassign(ptr %v0, ptr %a0, i64 %a1, %"compiler/mir:Lvalue" %a2, { i64, [15 x i64] } %a3)
@olang_loc_fe5b662c8cf4b58_7006b7c636f2421c = external constant [0 x i8]
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2edropDefers(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i1 %a3)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2einitFrame(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ereleaseHeld(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2, i1 %a3, i1 %a4)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrite(ptr %v0, ptr %a0, i64 %a1, { i64, [1 x i64] } %a2, i32 %a3, { i64, [4 x i64] } %a4)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aPtr_3e_2eLen_3ccompiler_2feval_3aPtr_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aPtr_3e_2eSetAt_3ccompiler_2feval_3aPtr_3e(ptr %v0, ptr %a0, i64 %a1, %"compiler/eval:Ptr" %a2)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eholders(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2, i64 %a3)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ereclaim(ptr %v0, ptr %a0, i64 %a1, i64 %a2, { i64, [4 x i64] } %a3, i32 %a4, %"compiler/mir:Range" %a5)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aPtr_3e_2eTruncate_3ccompiler_2feval_3aPtr_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2espawn(ptr %v0, ptr %a0, i64 %a1, i32 %a2, i32 %a3)
@olang_loc_7f284a3be8281e29_2098fbd9ac092a4d = external constant [0 x i8]
@olang_loc_749f682aa65a479b_d1f85e4e9e0056df = external constant [0 x i8]
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayTarget(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, %"compiler/eval:Ptr" %a2, i32 %a3, i64 %a4)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eRemoveAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3aFn_2eRaiseText(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2eIntBytes(i64 %a0)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2emask(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2feval_2enfn(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_b8e29b8ed59f9a38_134c8e80a89a2a2c = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddScope(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, %"compiler/source:Span" %a4, i32 %a5)
declare void @compiler_2feval_2etprim(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i32 %a3, i32 %a4, { i64, [4 x i64] } %a5, { i64, [4 x i64] } %a6)
declare { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3aFn_2eVerify(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
@olang_loc_48f03219a23009f5_27a95ef9d9612249 = external constant [0 x i8]
declare i1 @compiler_2feval_2eoverflows64(i32 %a0, i64 %a1, i64 %a2, i1 %a3)
declare void @compiler_2feval_3acfn_2ector(ptr %out, ptr %v0)
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

attributes #0 = { null_pointer_is_valid "target-cpu"="sapphirerapids" "target-features"="+64bit,+adx,+aes,+amx-bf16,+amx-int8,+amx-tile,+avx,+avx2,-avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512fp16,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+cldemote,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+rtm,+sahf,+serialize,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+tsxldtrk,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-complex,-amx-fp16,-avx10.1-256,-avx10.1-512,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-kl,-lwp,-mwaitx,-ndd,-pconfig,-pku,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-uintr,-usermsr,-waitpkg,-widekl,-xop" "prefer-vector-width"="512" nounwind }
