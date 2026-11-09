source_filename = "compiler_types.quick.ll"
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
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/types:data" = type { i32, i64, i64, i64, i64, i64, i64, i64 }
%"compiler/types:DtorWalk" = type { ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:decl" = type { i64, i32, i32, i32 }
%"compiler/types:body" = type { i32, i32, i32, i1, i1 }
%"compiler/types:codeWalk" = type { ptr, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/types:refWalk" = type { ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
@G_2ecompiler_2ftypes_2eAnySlotBase = constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eBigAggregate = constant <{ [8 x i8] }> <{ [8 x i8] c"\80\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eBoolT = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eClosingVar = constant <{ [8 x i8] }> <{ [8 x i8] c"\FE\FF\FF\FF\FF\FF\FF\FF" }>, align 8
@G_2ecompiler_2ftypes_2eDefaultErrT = constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eFromTypeVar = constant <{ [8 x i8] }> <{ [8 x i8] c"\FE\FF\FF\FF\FF\FF\FF\FF" }>, align 8
@G_2ecompiler_2ftypes_2eKeepsHome = constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
@G_2ecompiler_2ftypes_2eLaidOut = constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eLayingOut = constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eNoLayout = constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eNoreturnT = constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eNotLaidOut = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eNullT = constant <{ [4 x i8] }> <{ [4 x i8] c"\0F\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eNullable = constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eOwnScope = constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
@G_2ecompiler_2ftypes_2ePromBorrows = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\01\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2ePromNoalloc = constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2ePromNoblock = constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2ePromNoborrow = constant <{ [8 x i8] }> <{ [8 x i8] c"\80\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2ePromNoextern = constant <{ [8 x i8] }> <{ [8 x i8] c"\20\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2ePromNorecurse = constant <{ [8 x i8] }> <{ [8 x i8] c"\10\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2ePromNospawn = constant <{ [8 x i8] }> <{ [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2ePromPure = constant <{ [8 x i8] }> <{ [8 x i8] c"\40\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2ePromReturns = constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2ePromiseNames = constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftypes_2ePromiseNames.k1, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftypes_2ePromiseNames.k2, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftypes_2ePromiseNames.k3, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftypes_2ePromiseNames.k4, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftypes_2ePromiseNames.k5, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftypes_2ePromiseNames.k6, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftypes_2ePromiseNames.k7, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftypes_2ePromiseNames.k8 }>, align 64
@G_2ecompiler_2ftypes_2ePromiseNames.k1 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\72\65\74\75\72\6E\73" }>, align 8
@G_2ecompiler_2ftypes_2ePromiseNames.k2 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\6E\6F\61\6C\6C\6F\63" }>, align 8
@G_2ecompiler_2ftypes_2ePromiseNames.k3 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\6E\6F\62\6C\6F\63\6B" }>, align 8
@G_2ecompiler_2ftypes_2ePromiseNames.k4 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\6E\6F\73\70\61\77\6E" }>, align 8
@G_2ecompiler_2ftypes_2ePromiseNames.k5 = internal constant <{ [9 x i8] }> <{ [9 x i8] c"\6E\6F\72\65\63\75\72\73\65" }>, align 8
@G_2ecompiler_2ftypes_2ePromiseNames.k6 = internal constant <{ [8 x i8] }> <{ [8 x i8] c"\6E\6F\65\78\74\65\72\6E" }>, align 8
@G_2ecompiler_2ftypes_2ePromiseNames.k7 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\70\75\72\65" }>, align 8
@G_2ecompiler_2ftypes_2ePromiseNames.k8 = internal constant <{ [8 x i8] }> <{ [8 x i8] c"\6E\6F\62\6F\72\72\6F\77" }>, align 8
@G_2ecompiler_2ftypes_2eReadOnly = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eResultVar = constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
@G_2ecompiler_2ftypes_2eRoleCtor = constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eRoleDtor = constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eRoleFn = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eRoleTail = constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eSpread = constant <{ [8 x i8] }> <{ [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eUnknownT = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eVoidT = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eWritable = constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eprimBits = constant <{ [120 x i8] }> <{ [120 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\20\00\00\00\00\00\00\00\40\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\20\00\00\00\00\00\00\00\40\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\20\00\00\00\00\00\00\00\40\00\00\00\00\00\00\00" }>, align 64
@G_2ecompiler_2ftypes_2eprimLlvm = constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftypes_2eprimLlvm.k1, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftypes_2eprimLlvm.k2, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftypes_2eprimLlvm.k3, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftypes_2eprimLlvm.k4, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftypes_2eprimLlvm.k5, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftypes_2eprimLlvm.k6, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftypes_2eprimLlvm.k7, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftypes_2eprimLlvm.k8, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftypes_2eprimLlvm.k9, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftypes_2eprimLlvm.k10, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftypes_2eprimLlvm.k11, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftypes_2eprimLlvm.k12, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftypes_2eprimLlvm.k13, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftypes_2eprimLlvm.k14, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftypes_2eprimLlvm.k15 }>, align 64
@G_2ecompiler_2ftypes_2eprimLlvm.k1 = internal constant <{  }> <{  }>, align 8
@G_2ecompiler_2ftypes_2eprimLlvm.k2 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\76\6F\69\64" }>, align 8
@G_2ecompiler_2ftypes_2eprimLlvm.k3 = internal constant <{ [2 x i8] }> <{ [2 x i8] c"\69\31" }>, align 8
@G_2ecompiler_2ftypes_2eprimLlvm.k4 = internal constant <{ [2 x i8] }> <{ [2 x i8] c"\69\38" }>, align 8
@G_2ecompiler_2ftypes_2eprimLlvm.k5 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\69\31\36" }>, align 8
@G_2ecompiler_2ftypes_2eprimLlvm.k6 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\69\33\32" }>, align 8
@G_2ecompiler_2ftypes_2eprimLlvm.k7 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\69\36\34" }>, align 8
@G_2ecompiler_2ftypes_2eprimLlvm.k8 = internal constant <{ [2 x i8] }> <{ [2 x i8] c"\69\38" }>, align 8
@G_2ecompiler_2ftypes_2eprimLlvm.k9 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\69\31\36" }>, align 8
@G_2ecompiler_2ftypes_2eprimLlvm.k10 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\69\33\32" }>, align 8
@G_2ecompiler_2ftypes_2eprimLlvm.k11 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\69\36\34" }>, align 8
@G_2ecompiler_2ftypes_2eprimLlvm.k12 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\68\61\6C\66" }>, align 8
@G_2ecompiler_2ftypes_2eprimLlvm.k13 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\62\66\6C\6F\61\74" }>, align 8
@G_2ecompiler_2ftypes_2eprimLlvm.k14 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\66\6C\6F\61\74" }>, align 8
@G_2ecompiler_2ftypes_2eprimLlvm.k15 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\64\6F\75\62\6C\65" }>, align 8
@G_2ecompiler_2ftypes_2eprimNames = constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftypes_2eprimNames.k1, [8 x i8] c"\00\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftypes_2eprimNames.k2, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftypes_2eprimNames.k3, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftypes_2eprimNames.k4, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftypes_2eprimNames.k5, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftypes_2eprimNames.k6, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftypes_2eprimNames.k7, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftypes_2eprimNames.k8, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftypes_2eprimNames.k9, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftypes_2eprimNames.k10, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftypes_2eprimNames.k11, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftypes_2eprimNames.k12, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftypes_2eprimNames.k13, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftypes_2eprimNames.k14, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftypes_2eprimNames.k15 }>, align 64
@G_2ecompiler_2ftypes_2eprimNames.k1 = internal constant <{  }> <{  }>, align 8
@G_2ecompiler_2ftypes_2eprimNames.k2 = internal constant <{  }> <{  }>, align 8
@G_2ecompiler_2ftypes_2eprimNames.k3 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\42\6F\6F\6C" }>, align 8
@G_2ecompiler_2ftypes_2eprimNames.k4 = internal constant <{ [2 x i8] }> <{ [2 x i8] c"\49\38" }>, align 8
@G_2ecompiler_2ftypes_2eprimNames.k5 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\49\31\36" }>, align 8
@G_2ecompiler_2ftypes_2eprimNames.k6 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\49\33\32" }>, align 8
@G_2ecompiler_2ftypes_2eprimNames.k7 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\49\36\34" }>, align 8
@G_2ecompiler_2ftypes_2eprimNames.k8 = internal constant <{ [2 x i8] }> <{ [2 x i8] c"\55\38" }>, align 8
@G_2ecompiler_2ftypes_2eprimNames.k9 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\55\31\36" }>, align 8
@G_2ecompiler_2ftypes_2eprimNames.k10 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\55\33\32" }>, align 8
@G_2ecompiler_2ftypes_2eprimNames.k11 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\55\36\34" }>, align 8
@G_2ecompiler_2ftypes_2eprimNames.k12 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\46\31\36" }>, align 8
@G_2ecompiler_2ftypes_2eprimNames.k13 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\42\46\31\36" }>, align 8
@G_2ecompiler_2ftypes_2eprimNames.k14 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\46\33\32" }>, align 8
@G_2ecompiler_2ftypes_2eprimNames.k15 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\46\36\34" }>, align 8
define dso_local i64 @compiler_2ftypes_2eCaseBits(i64 %a0) #0 {
entry:
  %l1 = alloca i64
  %l2 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  store i64 1, ptr %l1, !tbaa !24
  br label %bb1
bb1:
  %t1 = load i64, ptr %l1, !tbaa !24
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i64, ptr %l2, !tbaa !24
  %t3 = load i64, ptr %l2, !tbaa !24
  %t4 = shl i64 1, %t3
  %t8 = icmp slt i64 %t4, %a0
  %t10 = xor i1 %t8, true
  br i1 %t10, label %bb2, label %bb3
bb2:
  br label %bb6
bb3:
  br label %bb4
bb4:
  %t12 = load i64, ptr %l1, !tbaa !24
  %t14 = add i64 %t12, 1
  store i64 %t14, ptr %l1, !tbaa !24
  br label %bb5
bb5:
  br label %bb1
bb6:
  %t16 = load i64, ptr %l1, !tbaa !24
  store i64 %t16, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2ftypes_2eIntBytes(i64 %a0) #0 {
entry:
  %l0 = alloca i64
  %l3 = alloca i64
  %l6 = alloca i64
  %l9 = alloca i64
  %l12 = alloca i64
  %rv = alloca i64
  store i64 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l0, !tbaa !24
  %t3 = icmp sle i64 %t1, 8
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i64 1, ptr %l3, !tbaa !24
  br label %bb12
bb2:
  %t5 = load i64, ptr %l0, !tbaa !24
  %t7 = icmp sle i64 %t5, 16
  br i1 %t7, label %bb3, label %bb4
bb3:
  store i64 2, ptr %l6, !tbaa !24
  br label %bb11
bb4:
  %t9 = load i64, ptr %l0, !tbaa !24
  %t11 = icmp sle i64 %t9, 32
  br i1 %t11, label %bb5, label %bb6
bb5:
  store i64 4, ptr %l9, !tbaa !24
  br label %bb10
bb6:
  %t13 = load i64, ptr %l0, !tbaa !24
  %t15 = icmp sle i64 %t13, 64
  br i1 %t15, label %bb7, label %bb8
bb7:
  store i64 8, ptr %l12, !tbaa !24
  br label %bb9
bb8:
  store i64 16, ptr %l12, !tbaa !24
  br label %bb9
bb9:
  %t17 = load i64, ptr %l12, !tbaa !24
  store i64 %t17, ptr %l9, !tbaa !24
  br label %bb10
bb10:
  %t18 = load i64, ptr %l9, !tbaa !24
  store i64 %t18, ptr %l6, !tbaa !24
  br label %bb11
bb11:
  %t19 = load i64, ptr %l6, !tbaa !24
  store i64 %t19, ptr %l3, !tbaa !24
  br label %bb12
bb12:
  %t20 = load i64, ptr %l3, !tbaa !24
  store i64 %t20, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2ftypes_2eIsIntName(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l2 = alloca i64
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call i64 @compiler_2ftypes_2eIntWidth(ptr %v0, { i64, ptr } %a0)
  store i64 %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load i64, ptr %l2, !tbaa !24
  %t5 = icmp sgt i64 %t4, 0
  store i1 %t5, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2ftypes_2eSymbol(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca %"std/prelude/text:StringBuilder"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i8
  %lp7 = alloca ptr
  %l8 = alloca { i64, i64 }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca %"std/prelude/text:StringBuilder"
  %l20 = alloca { i64, ptr }
  %l24 = alloca i1
  %l25 = alloca i1
  %l27 = alloca i1
  %l28 = alloca i1
  %l37 = alloca ptr
  %l40 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l51 = alloca { i64, i64 }
  %l54 = alloca i64
  %l58 = alloca { i64, ptr }
  %l60 = alloca { i64, ptr }
  %l62 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l11
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l11
  store %"std/prelude/text:StringBuilder" %t2, ptr %l1
  %t3 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t3, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t5 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  store i64 %t7, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t9 = load i64, ptr %l3, !tbaa !24
  %t10 = load i64, ptr %l4, !tbaa !24
  %t13 = icmp slt i64 %t9, %t10
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb3, label %bb4
bb3:
  br label %bb26
bb4:
  br label %bb5
bb5:
  %t17 = load i64, ptr %l3, !tbaa !24
  store i64 %t17, ptr %l5, !tbaa !24
  %t19 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t19, ptr %l20, !tbaa !27
  %t20 = load i64, ptr %l3, !tbaa !24
  %t22 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = getelementptr i8, ptr %t23, i64 %t20
  %t25 = load i8, ptr %t24, !tbaa !32
  store i8 %t25, ptr %l6, !tbaa !22
  %t27 = load i8, ptr %l6, !tbaa !22
  %t29 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t27)
  store i1 %t29, ptr %l24
  br label %bb6
bb6:
  %t30 = load i1, ptr %l24, !tbaa !21
  br i1 %t30, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l25, !tbaa !21
  br label %bb13
bb8:
  %t31 = load i8, ptr %l6, !tbaa !22
  %t33 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t31)
  store i1 %t33, ptr %l27
  br label %bb9
bb9:
  %t34 = load i1, ptr %l27, !tbaa !21
  br i1 %t34, label %bb10, label %bb11
bb10:
  %t35 = load i64, ptr %l5, !tbaa !24
  %t37 = icmp sgt i64 %t35, 0
  store i1 %t37, ptr %l28, !tbaa !21
  br label %bb12
bb11:
  store i1 false, ptr %l28, !tbaa !21
  br label %bb12
bb12:
  %t39 = load i1, ptr %l28, !tbaa !21
  store i1 %t39, ptr %l25, !tbaa !21
  br label %bb13
bb13:
  %t40 = load i1, ptr %l25, !tbaa !21
  br i1 %t40, label %bb14, label %bb15
bb14:
  %t41 = load i8, ptr %l6, !tbaa !22
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 %t41)
  br label %bb16
bb15:
  %t44 = load i8, ptr %l6, !tbaa !22
  %t46 = icmp eq i8 %t44, 95
  br i1 %t46, label %bb17, label %bb18
bb16:
  br label %bb24
bb17:
  store %olang.scope zeroinitializer, ptr %s5
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s5, ptr %l1, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d0, i32 0, i32 1) })
  br label %bb19
bb18:
  store %olang.scope zeroinitializer, ptr %s6
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 95)
  br label %bb20
bb19:
  call void @__olang_scope_close(ptr %s5)
  br label %bb23
bb20:
  store ptr %l1, ptr %l37, !tbaa !29
  %t50 = load i8, ptr %l6, !tbaa !22
  %t53 = call { i64, ptr } @compiler_2ftypes_2ehex2(ptr %s6, i8 %t50)
  store { i64, ptr } %t53, ptr %l40
  br label %bb21
bb21:
  %t54 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t55 = extractvalue { i64, ptr } %t54, 0
  %t56 = extractvalue { i64, ptr } %t54, 1
  %t57 = mul i64 %t55, 1
  %t58 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t57)
  call void @llvm.memcpy.p0.p0.i64(ptr %t58, ptr %t56, i64 %t57, i1 false)
  %t59 = insertvalue { i64, ptr } undef, i64 %t55, 0
  %t60 = insertvalue { i64, ptr } %t59, ptr %t58, 1
  %t61 = load ptr, ptr %l37, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s6, ptr %t61, { i64, ptr } %t60)
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s6)
  br label %bb23
bb23:
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t63 = load i64, ptr %l3, !tbaa !24
  %t65 = add i64 %t63, 1
  store i64 %t65, ptr %l3, !tbaa !24
  br label %bb2
bb26:
  %t68 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l1)
  store { i64, ptr } %t68, ptr %l45
  br label %bb27
bb27:
  %t69 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t69, ptr %lp7
  %t70 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t71 = load ptr, ptr %lp7
  store { i64, ptr } %t70, ptr %t71, !tbaa !27
  %t72 = load ptr, ptr %lp7
  %t73 = load { i64, ptr }, ptr %t72, !tbaa !27
  %t75 = extractvalue { i64, ptr } %t73, 0
  %t77 = icmp sle i64 %t75, 120
  br i1 %t77, label %bb28, label %bb29
bb28:
  %t79 = load ptr, ptr %lp7
  %t80 = load { i64, ptr }, ptr %t79, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t80, ptr %rv
  br label %ret
bb29:
  br label %bb30
bb30:
  %t82 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t84 = call { i64, i64 } @compiler_2ftypes_2ehash128(ptr %v0, { i64, ptr } %t82)
  store { i64, i64 } %t84, ptr %l51
  br label %bb31
bb31:
  %t85 = load { i64, i64 }, ptr %l51
  store { i64, i64 } %t85, ptr %l8
  %t86 = getelementptr { i64, i64 }, ptr %l8, i32 0, i32 0
  %t87 = load i64, ptr %t86, !tbaa !65
  store i64 %t87, ptr %l9, !tbaa !65
  %t89 = getelementptr { i64, i64 }, ptr %l8, i32 0, i32 1
  %t90 = load i64, ptr %t89, !tbaa !65
  store i64 %t90, ptr %l10, !tbaa !65
  %t92 = load ptr, ptr %lp7
  %t93 = load { i64, ptr }, ptr %t92, !tbaa !27
  %t94 = extractvalue { i64, ptr } %t93, 0
  store i64 %t94, ptr %l54, !tbaa !24
  %t95 = icmp sge i64 0, 0
  br i1 %t95, label %bb32, label %bb33
bb32:
  %t97 = icmp sle i64 0, 88
  br i1 %t97, label %bb34, label %bb35
bb33:
  call void @__olang_check_failed(ptr @olang_loc_a031dfbe8d9d2eb5_ead73bcf09c7e3f9)
  unreachable
bb34:
  %t99 = load i64, ptr %l54, !tbaa !24
  %t100 = icmp sle i64 88, %t99
  br i1 %t100, label %bb36, label %bb37
bb35:
  call void @__olang_check_failed(ptr @olang_loc_a031dfbe8d9d2eb5_ead73bcf09c7e3f9)
  unreachable
bb36:
  %t102 = load ptr, ptr %lp7
  %t103 = getelementptr { i64, ptr }, ptr %t102, i32 0, i32 1
  %t104 = load ptr, ptr %t103, !tbaa !27
  %t105 = getelementptr i8, ptr %t104, i64 0
  %t106 = sub i64 88, 0
  %t107 = insertvalue { i64, ptr } undef, i64 %t106, 0
  %t108 = insertvalue { i64, ptr } %t107, ptr %t105, 1
  store { i64, ptr } %t108, ptr %l58, !tbaa !27
  %t109 = load i64, ptr %l9, !tbaa !65
  %t111 = call { i64, ptr } @compiler_2ftypes_2ehex16(ptr %s0, i64 %t109)
  store { i64, ptr } %t111, ptr %l60
  br label %bb38
bb37:
  call void @__olang_check_failed(ptr @olang_loc_a031dfbe8d9d2eb5_ead73bcf09c7e3f9)
  unreachable
bb38:
  %t112 = load i64, ptr %l10, !tbaa !65
  %t114 = call { i64, ptr } @compiler_2ftypes_2ehex16(ptr %s0, i64 %t112)
  store { i64, ptr } %t114, ptr %l62
  br label %bb39
bb39:
  %t115 = load { i64, ptr }, ptr %l58, !tbaa !27
  %t116 = extractvalue { i64, ptr } %t115, 1
  %t117 = extractvalue { i64, ptr } %t115, 0
  %t118 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d1, i32 0, i32 1) }, 1
  %t119 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  %t120 = add i64 %t117, %t119
  %t121 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t122 = extractvalue { i64, ptr } %t121, 1
  %t123 = extractvalue { i64, ptr } %t121, 0
  %t124 = add i64 %t120, %t123
  %t125 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t126 = extractvalue { i64, ptr } %t125, 1
  %t127 = extractvalue { i64, ptr } %t125, 0
  %t128 = add i64 %t124, %t127
  %t129 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t128)
  call void @olang_textcopy(ptr %t129, ptr %t116, i64 %t117)
  %t130 = getelementptr i8, ptr %t129, i64 %t117
  call void @olang_textcopy(ptr %t130, ptr %t118, i64 %t119)
  %t131 = getelementptr i8, ptr %t130, i64 %t119
  call void @olang_textcopy(ptr %t131, ptr %t122, i64 %t123)
  %t132 = getelementptr i8, ptr %t131, i64 %t123
  call void @olang_textcopy(ptr %t132, ptr %t126, i64 %t127)
  %t133 = insertvalue { i64, ptr } undef, i64 %t128, 0
  %t134 = insertvalue { i64, ptr } %t133, ptr %t129, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t134, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2ftypes_2eTable_2eNew(ptr %out, ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %lp1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
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
  %l18 = alloca i32
  %l20 = alloca %"compiler/types:Table"
  %l21 = alloca ptr
  %l22 = alloca i64
  %l27 = alloca ptr
  %l28 = alloca i64
  %l33 = alloca ptr
  %l34 = alloca i64
  %l58 = alloca [18 x i32]
  %l69 = alloca ptr
  %l71 = alloca %"compiler/types:data"
  %l72 = alloca i32
  %l80 = alloca i64
  %l83 = alloca i64
  %l104 = alloca i64
  %l107 = alloca i64
  %l128 = alloca i64
  %l131 = alloca ptr
  %l135 = alloca i32
  %l137 = alloca ptr
  %l142 = alloca %"compiler/types:data"
  %l143 = alloca i32
  %l148 = alloca %"compiler/types:Table"
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %t2 = alloca %"compiler/types:Table", align 8
  br label %start
start:
  br label %bb0
bb0:
  call void @compiler_2ftypes_3aTable_2ector(ptr %t2, ptr %v0, ptr %v1, ptr %a0)
  call void @llvm.memmove.p0.p0.i64(ptr %l20, ptr %t2, i64 2096, i1 false)
  br label %bb1
bb1:
  %t4 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 2096, i64 8)
  store ptr %t4, ptr %lp1
  %t5 = load ptr, ptr %lp1
  call void @llvm.memmove.p0.p0.i64(ptr %t5, ptr %l20, i64 2096, i1 false)
  %t6 = load ptr, ptr %lp1
  %t7 = getelementptr %"compiler/types:Table", ptr %t6, i32 0, i32 5
  store ptr %t7, ptr %l21, !tbaa !29
  %t8 = ptrtoint ptr %v1 to i64
  store i64 %t8, ptr %l22, !tbaa !24
  %t9 = load i1, ptr @olang_2esole_2eArray_3cArray_3ccompiler_2ftypes_3aTypeId_3e_26_3e_2e_2d1
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = call ptr @__olang_region_make(ptr %v1)
  %t12 = ptrtoint ptr %t11 to i64
  store i64 %t12, ptr %l22, !tbaa !24
  br label %bb3
bb3:
  %t13 = icmp sge i64 0, 0
  br i1 %t13, label %bb4, label %bb5
bb4:
  %t15 = icmp sle i64 0, 2305843009213693951
  br i1 %t15, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_bd6aedfbb004cefb_a7e94c49277e6337)
  unreachable
bb6:
  %t17 = mul i64 0, 4
  %t18 = load i64, ptr %l22
  %t19 = inttoptr i64 %t18 to ptr
  %t20 = insertvalue { i64, ptr } undef, i64 0, 0
  %t21 = insertvalue { i64, ptr } %t20, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t22 = load ptr, ptr %l21, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2ftypes_3aTypeId_3e_2_H5d6217f1de626e258ec0008385e9bf9b(ptr %v1, ptr %v1, ptr %t22, { i64, ptr } %t21)
  br label %bb8
bb7:
  call void @__olang_check_failed(ptr @olang_loc_bd6aedfbb004cefb_a7e94c49277e6337)
  unreachable
bb8:
  %t24 = load ptr, ptr %lp1
  %t25 = getelementptr %"compiler/types:Table", ptr %t24, i32 0, i32 28
  store ptr %t25, ptr %l27, !tbaa !29
  %t26 = ptrtoint ptr %v1 to i64
  store i64 %t26, ptr %l28, !tbaa !24
  %t27 = load i1, ptr @olang_2esole_2eArray_3cArray_3cI64_3e_26_3e_2e_2d1
  br i1 %t27, label %bb9, label %bb10
bb9:
  %t29 = call ptr @__olang_region_make(ptr %v1)
  %t30 = ptrtoint ptr %t29 to i64
  store i64 %t30, ptr %l28, !tbaa !24
  br label %bb10
bb10:
  %t31 = icmp sge i64 0, 0
  br i1 %t31, label %bb11, label %bb12
bb11:
  %t33 = icmp sle i64 0, 1152921504606846975
  br i1 %t33, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_f54586e6a50c1e66_9f53f9bdb86e8e82)
  unreachable
bb13:
  %t35 = mul i64 0, 8
  %t36 = load i64, ptr %l28
  %t37 = inttoptr i64 %t36 to ptr
  %t38 = insertvalue { i64, ptr } undef, i64 0, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t40 = load ptr, ptr %l27, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e_2ePush_3cArray_3cI64_3e_26_3e(ptr %v1, ptr %v1, ptr %t40, { i64, ptr } %t39)
  br label %bb15
bb14:
  call void @__olang_check_failed(ptr @olang_loc_f54586e6a50c1e66_9f53f9bdb86e8e82)
  unreachable
bb15:
  %t42 = load ptr, ptr %lp1
  %t43 = getelementptr %"compiler/types:Table", ptr %t42, i32 0, i32 30
  store ptr %t43, ptr %l33, !tbaa !29
  %t44 = ptrtoint ptr %v1 to i64
  store i64 %t44, ptr %l34, !tbaa !24
  %t45 = load i1, ptr @olang_2esole_2eArray_3cArray_3cI64_3e_26_3e_2e_2d1
  br i1 %t45, label %bb16, label %bb17
bb16:
  %t47 = call ptr @__olang_region_make(ptr %v1)
  %t48 = ptrtoint ptr %t47 to i64
  store i64 %t48, ptr %l34, !tbaa !24
  br label %bb17
bb17:
  %t49 = icmp sge i64 0, 0
  br i1 %t49, label %bb18, label %bb19
bb18:
  %t51 = icmp sle i64 0, 1152921504606846975
  br i1 %t51, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_ede49b2874c89d85_5f433bfacafc8ba1)
  unreachable
bb20:
  %t53 = mul i64 0, 8
  %t54 = load i64, ptr %l34
  %t55 = inttoptr i64 %t54 to ptr
  %t56 = insertvalue { i64, ptr } undef, i64 0, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t58 = load ptr, ptr %l33, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e_2ePush_3cArray_3cI64_3e_26_3e(ptr %v1, ptr %v1, ptr %t58, { i64, ptr } %t57)
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_ede49b2874c89d85_5f433bfacafc8ba1)
  unreachable
bb22:
  %t60 = load ptr, ptr %lp1
  %t61 = getelementptr %"compiler/types:Table", ptr %t60, i32 0, i32 32
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e_2ePush_3cArray_3cI64_3e_26_3e(ptr %v1, ptr %v1, ptr %t61, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i64] }>, ptr @.d2, i32 0, i32 1) })
  br label %bb23
bb23:
  store %olang.scope zeroinitializer, ptr %s1
  %t81 = getelementptr [18 x i32], ptr %l58, i64 0, i64 0
  store i32 0, ptr %t81
  %t82 = getelementptr [18 x i32], ptr %l58, i64 0, i64 1
  store i32 1, ptr %t82
  %t83 = getelementptr [18 x i32], ptr %l58, i64 0, i64 2
  store i32 2, ptr %t83
  %t84 = getelementptr [18 x i32], ptr %l58, i64 0, i64 3
  store i32 3, ptr %t84
  %t85 = getelementptr [18 x i32], ptr %l58, i64 0, i64 4
  store i32 4, ptr %t85
  %t86 = getelementptr [18 x i32], ptr %l58, i64 0, i64 5
  store i32 5, ptr %t86
  %t87 = getelementptr [18 x i32], ptr %l58, i64 0, i64 6
  store i32 6, ptr %t87
  %t88 = getelementptr [18 x i32], ptr %l58, i64 0, i64 7
  store i32 7, ptr %t88
  %t89 = getelementptr [18 x i32], ptr %l58, i64 0, i64 8
  store i32 8, ptr %t89
  %t90 = getelementptr [18 x i32], ptr %l58, i64 0, i64 9
  store i32 9, ptr %t90
  %t91 = getelementptr [18 x i32], ptr %l58, i64 0, i64 10
  store i32 10, ptr %t91
  %t92 = getelementptr [18 x i32], ptr %l58, i64 0, i64 11
  store i32 11, ptr %t92
  %t93 = getelementptr [18 x i32], ptr %l58, i64 0, i64 12
  store i32 12, ptr %t93
  %t94 = getelementptr [18 x i32], ptr %l58, i64 0, i64 13
  store i32 13, ptr %t94
  %t95 = getelementptr [18 x i32], ptr %l58, i64 0, i64 14
  store i32 14, ptr %t95
  %t96 = getelementptr [18 x i32], ptr %l58, i64 0, i64 15
  store i32 15, ptr %t96
  %t97 = getelementptr [18 x i32], ptr %l58, i64 0, i64 16
  store i32 16, ptr %t97
  %t98 = getelementptr [18 x i32], ptr %l58, i64 0, i64 17
  store i32 17, ptr %t98
  %t99 = load [18 x i32], ptr %l58
  %t100 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 72, i64 8)
  store [18 x i32] %t99, ptr %t100
  store ptr %t100, ptr %l2
  store i64 0, ptr %l3, !tbaa !24
  %t102 = load ptr, ptr %l2
  store i64 18, ptr %l4, !tbaa !24
  br label %bb24
bb24:
  store %olang.scope zeroinitializer, ptr %s2
  %t105 = load i64, ptr %l3, !tbaa !24
  %t106 = load i64, ptr %l4, !tbaa !24
  %t109 = icmp slt i64 %t105, %t106
  %t111 = xor i1 %t109, true
  br i1 %t111, label %bb25, label %bb26
bb25:
  call void @__olang_scope_close(ptr %s2)
  br label %bb31
bb26:
  br label %bb27
bb27:
  %t113 = load ptr, ptr %l2
  %t114 = load i64, ptr %l3, !tbaa !24
  %t117 = getelementptr [18 x i32], ptr %t113, i64 0, i64 %t114
  %t118 = load i32, ptr %t117, !range !{i32 0, i32 33}
  %t120 = load ptr, ptr %lp1
  store ptr %t120, ptr %l69, !tbaa !29
  %t123 = call %"compiler/types:data" @compiler_2ftypes_3adata_2ector(ptr %s2, i32 %t118, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0)
  store %"compiler/types:data" %t123, ptr %l71
  br label %bb28
bb28:
  %t124 = load ptr, ptr %l69, !tbaa !29
  %t125 = load %"compiler/types:data", ptr %l71
  %t126 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eintern(ptr %v1, ptr %t124, %"compiler/types:data" %t125, i32 1)
  store i32 %t126, ptr %l72
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s2)
  br label %bb30
bb30:
  %t127 = load i64, ptr %l3, !tbaa !24
  %t129 = add i64 %t127, 1
  store i64 %t129, ptr %l3, !tbaa !24
  br label %bb24
bb31:
  call void @__olang_scope_close(ptr %s1)
  %t131 = load ptr, ptr %lp1
  %t132 = getelementptr %"compiler/types:Table", ptr %t131, i32 0, i32 36
  %t133 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t132, i32 %t133)
  br label %bb32
bb32:
  store i64 0, ptr %l6, !tbaa !24
  store i64 2, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t136 = load i64, ptr %l7, !tbaa !24
  %t137 = load i64, ptr %l6, !tbaa !24
  %t140 = icmp sgt i64 %t136, %t137
  br i1 %t140, label %bb33, label %bb34
bb33:
  %t142 = load i64, ptr %l8, !tbaa !24
  %t144 = icmp sgt i64 %t142, 0
  br i1 %t144, label %bb35, label %bb36
bb34:
  store i64 0, ptr %l80, !tbaa !24
  br label %bb38
bb35:
  %t146 = load i64, ptr %l7, !tbaa !24
  %t147 = load i64, ptr %l6, !tbaa !24
  %t150 = sub i64 %t146, %t147
  %t151 = load i64, ptr %l8, !tbaa !24
  %t154 = add i64 %t150, %t151
  %t156 = sub i64 %t154, 1
  %t157 = load i64, ptr %l8, !tbaa !24
  %t160 = sdiv i64 %t156, %t157
  store i64 %t160, ptr %l83, !tbaa !24
  br label %bb37
bb36:
  store i64 0, ptr %l83, !tbaa !24
  br label %bb37
bb37:
  %t162 = load i64, ptr %l83, !tbaa !24
  store i64 %t162, ptr %l80, !tbaa !24
  br label %bb38
bb38:
  %t163 = load i64, ptr %l80, !tbaa !24
  store i64 %t163, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb39
bb39:
  %t164 = load i64, ptr %l10, !tbaa !24
  %t165 = load i64, ptr %l9, !tbaa !24
  %t168 = icmp slt i64 %t164, %t165
  %t170 = xor i1 %t168, true
  br i1 %t170, label %bb40, label %bb41
bb40:
  br label %bb63
bb41:
  br label %bb42
bb42:
  %t172 = load i64, ptr %l6, !tbaa !24
  %t173 = load i64, ptr %l10, !tbaa !24
  %t174 = load i64, ptr %l8, !tbaa !24
  %t177 = mul i64 %t173, %t174
  %t180 = add i64 %t172, %t177
  store i64 %t180, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  store i64 129, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t182 = load i64, ptr %l13, !tbaa !24
  %t183 = load i64, ptr %l12, !tbaa !24
  %t186 = icmp sgt i64 %t182, %t183
  br i1 %t186, label %bb43, label %bb44
bb43:
  %t188 = load i64, ptr %l14, !tbaa !24
  %t190 = icmp sgt i64 %t188, 0
  br i1 %t190, label %bb45, label %bb46
bb44:
  store i64 0, ptr %l104, !tbaa !24
  br label %bb48
bb45:
  %t192 = load i64, ptr %l13, !tbaa !24
  %t193 = load i64, ptr %l12, !tbaa !24
  %t196 = sub i64 %t192, %t193
  %t197 = load i64, ptr %l14, !tbaa !24
  %t200 = add i64 %t196, %t197
  %t202 = sub i64 %t200, 1
  %t203 = load i64, ptr %l14, !tbaa !24
  %t206 = sdiv i64 %t202, %t203
  store i64 %t206, ptr %l107, !tbaa !24
  br label %bb47
bb46:
  store i64 0, ptr %l107, !tbaa !24
  br label %bb47
bb47:
  %t208 = load i64, ptr %l107, !tbaa !24
  store i64 %t208, ptr %l104, !tbaa !24
  br label %bb48
bb48:
  %t209 = load i64, ptr %l104, !tbaa !24
  store i64 %t209, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb49
bb49:
  store %olang.scope zeroinitializer, ptr %s7
  %t210 = load i64, ptr %l16, !tbaa !24
  %t211 = load i64, ptr %l15, !tbaa !24
  %t214 = icmp slt i64 %t210, %t211
  %t216 = xor i1 %t214, true
  br i1 %t216, label %bb50, label %bb51
bb50:
  call void @__olang_scope_close(ptr %s7)
  br label %bb61
bb51:
  br label %bb52
bb52:
  %t218 = load i64, ptr %l12, !tbaa !24
  %t219 = load i64, ptr %l16, !tbaa !24
  %t220 = load i64, ptr %l14, !tbaa !24
  %t223 = mul i64 %t219, %t220
  %t226 = add i64 %t218, %t223
  store i64 %t226, ptr %l17, !tbaa !24
  %t228 = load i64, ptr %l17, !tbaa !24
  %t229 = load i64, ptr %l11, !tbaa !24
  %t231 = icmp eq i64 %t229, 1
  %t234 = call i64 @compiler_2ftypes_2eprimIndex(i64 %t228, i1 %t231)
  store i64 %t234, ptr %l128
  br label %bb53
bb53:
  %t235 = load i64, ptr %l128, !tbaa !24
  %t236 = trunc i64 %t235 to i32
  store i32 %t236, ptr %l18, !tbaa !23
  %t239 = load ptr, ptr %lp1
  %t240 = getelementptr %"compiler/types:Table", ptr %t239, i32 0, i32 36
  store ptr %t240, ptr %l131, !tbaa !29
  %t241 = load i32, ptr %l18, !tbaa !23
  %t242 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t245 = icmp ne i32 %t241, %t242
  br i1 %t245, label %bb54, label %bb55
bb54:
  %t247 = load i32, ptr %l18, !tbaa !23
  store i32 %t247, ptr %l135, !tbaa !23
  br label %bb58
bb55:
  %t249 = load ptr, ptr %lp1
  store ptr %t249, ptr %l137, !tbaa !29
  %t250 = load i64, ptr %l17, !tbaa !24
  %t251 = load i64, ptr %l11, !tbaa !24
  %t253 = sub i64 1, %t251
  %t257 = call %"compiler/types:data" @compiler_2ftypes_3adata_2ector(ptr %s7, i32 31, i64 %t250, i64 %t253, i64 0, i64 0, i64 0, i64 0, i64 0)
  store %"compiler/types:data" %t257, ptr %l142
  br label %bb56
bb56:
  %t258 = load ptr, ptr %l137, !tbaa !29
  %t259 = load %"compiler/types:data", ptr %l142
  %t260 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eintern(ptr %v1, ptr %t258, %"compiler/types:data" %t259, i32 1)
  store i32 %t260, ptr %l143
  br label %bb57
bb57:
  %t261 = load i32, ptr %l143, !tbaa !23
  store i32 %t261, ptr %l135, !tbaa !23
  br label %bb58
bb58:
  %t262 = load ptr, ptr %l131, !tbaa !29
  %t263 = load i32, ptr %l135, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t262, i32 %t263)
  br label %bb59
bb59:
  call void @__olang_scope_close(ptr %s7)
  br label %bb60
bb60:
  %t264 = load i64, ptr %l16, !tbaa !24
  %t266 = add i64 %t264, 1
  store i64 %t266, ptr %l16, !tbaa !24
  br label %bb49
bb61:
  br label %bb62
bb62:
  %t268 = load i64, ptr %l10, !tbaa !24
  %t270 = add i64 %t268, 1
  store i64 %t270, ptr %l10, !tbaa !24
  br label %bb39
bb63:
  %t272 = load ptr, ptr %lp1
  call void @llvm.memmove.p0.p0.i64(ptr %l148, ptr %t272, i64 2096, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l148, i64 2096, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2ftypes_2eUnsignedText(ptr %v0, i64 %a0) #0 {
entry:
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store i64 %a0, ptr %l2, !tbaa !65
  %t3 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s0, i64 10)
  %t4 = extractvalue { i32, i64 } %t3, 1
  %t5 = extractvalue { i32, i64 } %t3, 0
  store i32 %t5, ptr %l4
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store i64 %t4, ptr %l3
  br label %bb1
bb1:
  %t8 = load i64, ptr %l2, !tbaa !65
  %t9 = load i64, ptr %l3, !tbaa !24
  %t10 = call { i64, ptr } @std_2fprelude_2ftext_2eU64_2eFormat(ptr %v0, i64 %t8, i64 %t9)
  store { i64, ptr } %t10, ptr %l5
  br label %bb3
bb2:
  call void @__olang_check_failed(ptr @olang_loc_30e02956f84eec46_91b8152c5eb3aca)
  unreachable
bb3:
  call void @__olang_scope_close(ptr %s0)
  %t11 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t11, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aDtorWalk_2eHolds(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i1
  %l8 = alloca ptr
  %l11 = alloca i32
  %l15 = alloca i1
  %l16 = alloca i1
  %l20 = alloca i1
  %l21 = alloca i32
  %l25 = alloca ptr
  %l28 = alloca i32
  %l29 = alloca i1
  %l32 = alloca ptr
  %l33 = alloca ptr
  %l36 = alloca i32
  %l37 = alloca i1
  %l44 = alloca ptr
  %l45 = alloca ptr
  %l48 = alloca i32
  %l49 = alloca i1
  %l54 = alloca ptr
  %l55 = alloca ptr
  %l56 = alloca ptr
  %l59 = alloca i32
  %l61 = alloca { i64, ptr }
  %l62 = alloca i1
  %l65 = alloca ptr
  %l68 = alloca i1
  %l70 = alloca i1
  %l71 = alloca ptr
  %l74 = alloca i1
  %l75 = alloca i1
  %l76 = alloca ptr
  %l77 = alloca ptr
  %l78 = alloca ptr
  %l81 = alloca i32
  %l83 = alloca { i64, ptr }
  %l84 = alloca i1
  %l85 = alloca i1
  %l86 = alloca ptr
  %l87 = alloca ptr
  %l88 = alloca ptr
  %l91 = alloca i32
  %l93 = alloca { i64, ptr }
  %l94 = alloca i1
  %s5 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/types:DtorWalk", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  store ptr %t6, ptr %l8, !tbaa !29
  %t8 = load ptr, ptr %l8, !tbaa !29
  %t9 = call ptr @__olang_scope_or(ptr %v1, ptr %t8)
  %t10 = ptrtoint ptr %t9 to i64
  %t12 = inttoptr i64 %t10 to ptr
  %t13 = load ptr, ptr %l8, !tbaa !29
  %t15 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t12, ptr %t13, i32 %a1)
  store i32 %t15, ptr %l11
  br label %bb1
bb1:
  %t16 = load i32, ptr %l11, !tbaa !23
  store i32 %t16, ptr %l3, !tbaa !23
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/types:DtorWalk", ptr %t17, i32 0, i32 1
  %t20 = load i32, ptr %l3, !tbaa !23
  %t23 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_Hb3133f486435530b533aaf49461c92b5(ptr %v0, ptr %t19, i32 %t20)
  store i1 %t23, ptr %l15
  br label %bb2
bb2:
  %t24 = load i1, ptr %l15, !tbaa !21
  br i1 %t24, label %bb3, label %bb4
bb3:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/types:DtorWalk", ptr %t25, i32 0, i32 1
  %t28 = load i32, ptr %l3, !tbaa !23
  %t31 = call { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_H257d83b06934604763b32ef91c51c1d2(ptr %v0, ptr %t27, i32 %t28)
  %t32 = extractvalue { i32, i1 } %t31, 1
  %t33 = extractvalue { i32, i1 } %t31, 0
  store i32 %t33, ptr %l21
  %t34 = icmp ne i32 %t33, 0
  br i1 %t34, label %bb6, label %ok.35, !prof !99
ok.35:
  store i1 %t32, ptr %l20
  br label %bb5
bb4:
  br label %bb9
bb5:
  %t36 = load i1, ptr %l20, !tbaa !21
  store i1 %t36, ptr %l16, !tbaa !21
  br label %bb8
bb6:
  br label %bb7
bb7:
  store i1 false, ptr %l16, !tbaa !21
  br label %bb8
bb8:
  %t37 = load i1, ptr %l16, !tbaa !21
  store i1 %t37, ptr %rv
  br label %ret
bb9:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/types:DtorWalk", ptr %t38, i32 0, i32 1
  %t41 = load i32, ptr %l3, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_H64d9be73b6c9bed004c541bdf7f0ca0a(ptr %v0, ptr %t40, i32 %t41, i1 false)
  br label %bb10
bb10:
  %t44 = load ptr, ptr %l2, !tbaa !29
  store ptr %t44, ptr %l25, !tbaa !29
  %t45 = load i32, ptr %l3, !tbaa !23
  %t46 = load ptr, ptr %l25, !tbaa !29
  %t47 = call ptr @__olang_scope_or(ptr %v1, ptr %t46)
  %t48 = ptrtoint ptr %t47 to i64
  %t50 = inttoptr i64 %t48 to ptr
  %t51 = load ptr, ptr %l25, !tbaa !29
  %t53 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %t50, ptr %t51, i32 %t45)
  store i32 %t53, ptr %l28
  br label %bb11
bb11:
  %t54 = load i32, ptr %l28, !range !{i32 0, i32 33}
  store i32 %t54, ptr %l4
  %t55 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t57 = trunc i64 20 to i32
  %t58 = icmp eq i32 %t55, %t57
  br i1 %t58, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb17
bb14:
  %t60 = load ptr, ptr %l0, !tbaa !29
  store ptr %t60, ptr %l32, !tbaa !29
  %t61 = load ptr, ptr %l2, !tbaa !29
  store ptr %t61, ptr %l33, !tbaa !29
  %t62 = load i32, ptr %l3, !tbaa !23
  %t63 = load ptr, ptr %l33, !tbaa !29
  %t64 = call ptr @__olang_scope_or(ptr %v1, ptr %t63)
  %t65 = ptrtoint ptr %t64 to i64
  %t67 = inttoptr i64 %t65 to ptr
  %t68 = load ptr, ptr %l33, !tbaa !29
  %t70 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %t67, ptr %t68, i32 %t62)
  store i32 %t70, ptr %l36
  br label %bb15
bb15:
  %t71 = load ptr, ptr %l32, !tbaa !29
  %t72 = load i32, ptr %l36, !tbaa !23
  %t73 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aDtorWalk_2eHolds(ptr %v0, ptr %v1, ptr %t71, i32 %t72)
  store i1 %t73, ptr %l37
  br label %bb16
bb16:
  %t74 = load i1, ptr %l37, !tbaa !21
  store i1 %t74, ptr %l29, !tbaa !21
  br label %bb64
bb17:
  %t75 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t77 = trunc i64 29 to i32
  %t78 = icmp eq i32 %t75, %t77
  br i1 %t78, label %bb18, label %bb19
bb18:
  br label %bb22
bb19:
  %t80 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t82 = trunc i64 25 to i32
  %t83 = icmp eq i32 %t80, %t82
  br i1 %t83, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb23
bb22:
  store i1 true, ptr %l29, !tbaa !21
  br label %bb64
bb23:
  %t85 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t87 = trunc i64 19 to i32
  %t88 = icmp eq i32 %t85, %t87
  br i1 %t88, label %bb24, label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb29
bb26:
  %t90 = load ptr, ptr %l0, !tbaa !29
  store ptr %t90, ptr %l44, !tbaa !29
  %t91 = load ptr, ptr %l2, !tbaa !29
  store ptr %t91, ptr %l45, !tbaa !29
  %t92 = load i32, ptr %l3, !tbaa !23
  %t93 = load ptr, ptr %l45, !tbaa !29
  %t94 = call ptr @__olang_scope_or(ptr %v1, ptr %t93)
  %t95 = ptrtoint ptr %t94 to i64
  %t97 = inttoptr i64 %t95 to ptr
  %t98 = load ptr, ptr %l45, !tbaa !29
  %t100 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %t97, ptr %t98, i32 %t92)
  store i32 %t100, ptr %l48
  br label %bb27
bb27:
  %t101 = load ptr, ptr %l44, !tbaa !29
  %t102 = load i32, ptr %l48, !tbaa !23
  %t103 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aDtorWalk_2eHolds(ptr %v0, ptr %v1, ptr %t101, i32 %t102)
  store i1 %t103, ptr %l49
  br label %bb28
bb28:
  %t104 = load i1, ptr %l49, !tbaa !21
  store i1 %t104, ptr %l29, !tbaa !21
  br label %bb64
bb29:
  %t105 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t107 = trunc i64 22 to i32
  %t108 = icmp eq i32 %t105, %t107
  br i1 %t108, label %bb30, label %bb31
bb30:
  br label %bb34
bb31:
  %t110 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t112 = trunc i64 23 to i32
  %t113 = icmp eq i32 %t110, %t112
  br i1 %t113, label %bb32, label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb38
bb34:
  store %olang.scope zeroinitializer, ptr %s5
  %t115 = load ptr, ptr %l0, !tbaa !29
  store ptr %t115, ptr %l54, !tbaa !29
  %t116 = load ptr, ptr %l2, !tbaa !29
  store ptr %t116, ptr %l55, !tbaa !29
  %t117 = load ptr, ptr %l2, !tbaa !29
  store ptr %t117, ptr %l56, !tbaa !29
  %t118 = load i32, ptr %l3, !tbaa !23
  %t119 = load ptr, ptr %l56, !tbaa !29
  %t120 = call ptr @__olang_scope_or(ptr %v1, ptr %t119)
  %t121 = ptrtoint ptr %t120 to i64
  %t123 = inttoptr i64 %t121 to ptr
  %t124 = load ptr, ptr %l56, !tbaa !29
  %t126 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %t123, ptr %t124, i32 %t118)
  store i32 %t126, ptr %l59
  br label %bb35
bb35:
  %t127 = load ptr, ptr %l55, !tbaa !29
  %t128 = call ptr @__olang_scope_or(ptr %v1, ptr %t127)
  %t129 = ptrtoint ptr %t128 to i64
  %t131 = inttoptr i64 %t129 to ptr
  %t132 = load ptr, ptr %l55, !tbaa !29
  %t133 = load i32, ptr %l59, !tbaa !23
  %t134 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %t131, ptr %s5, ptr %t132, i32 %t133)
  store { i64, ptr } %t134, ptr %l61
  br label %bb36
bb36:
  %t135 = load ptr, ptr %l54, !tbaa !29
  %t136 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t137 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aDtorWalk_2esome(ptr %v0, ptr %s5, ptr %v1, ptr %t135, { i64, ptr } %t136)
  store i1 %t137, ptr %l62
  br label %bb37
bb37:
  %t138 = load i1, ptr %l62, !tbaa !21
  store i1 %t138, ptr %l29, !tbaa !21
  call void @__olang_scope_close(ptr %s5)
  br label %bb64
bb38:
  %t139 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t141 = trunc i64 18 to i32
  %t142 = icmp eq i32 %t139, %t141
  br i1 %t142, label %bb39, label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb59
bb41:
  store %olang.scope zeroinitializer, ptr %s6
  %t144 = load ptr, ptr %l2, !tbaa !29
  store ptr %t144, ptr %l65, !tbaa !29
  %t145 = load i32, ptr %l3, !tbaa !23
  %t146 = load ptr, ptr %l65, !tbaa !29
  %t147 = call ptr @__olang_scope_or(ptr %v1, ptr %t146)
  %t148 = ptrtoint ptr %t147 to i64
  %t150 = inttoptr i64 %t148 to ptr
  %t151 = load ptr, ptr %l65, !tbaa !29
  %t153 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %t150, ptr %t151, i32 %t145)
  store i1 %t153, ptr %l68
  br label %bb42
bb42:
  %t154 = load i1, ptr %l68, !tbaa !21
  %t155 = xor i1 %t154, true
  br i1 %t155, label %bb43, label %bb44
bb43:
  store i1 true, ptr %l70, !tbaa !21
  br label %bb46
bb44:
  %t157 = load ptr, ptr %l2, !tbaa !29
  store ptr %t157, ptr %l71, !tbaa !29
  %t158 = load i32, ptr %l3, !tbaa !23
  %t159 = load ptr, ptr %l71, !tbaa !29
  %t160 = call ptr @__olang_scope_or(ptr %v1, ptr %t159)
  %t161 = ptrtoint ptr %t160 to i64
  %t163 = inttoptr i64 %t161 to ptr
  %t164 = load ptr, ptr %l71, !tbaa !29
  %t166 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDestructs(ptr %t163, ptr %t164, i32 %t158)
  store i1 %t166, ptr %l74
  br label %bb45
bb45:
  %t167 = load i1, ptr %l74, !tbaa !21
  store i1 %t167, ptr %l70, !tbaa !21
  br label %bb46
bb46:
  %t168 = load i1, ptr %l70, !tbaa !21
  br i1 %t168, label %bb47, label %bb48
bb47:
  store i1 true, ptr %l75, !tbaa !21
  br label %bb52
bb48:
  %t169 = load ptr, ptr %l0, !tbaa !29
  store ptr %t169, ptr %l76, !tbaa !29
  %t170 = load ptr, ptr %l2, !tbaa !29
  store ptr %t170, ptr %l77, !tbaa !29
  %t171 = load ptr, ptr %l2, !tbaa !29
  store ptr %t171, ptr %l78, !tbaa !29
  %t172 = load i32, ptr %l3, !tbaa !23
  %t173 = load ptr, ptr %l78, !tbaa !29
  %t174 = call ptr @__olang_scope_or(ptr %v1, ptr %t173)
  %t175 = ptrtoint ptr %t174 to i64
  %t177 = inttoptr i64 %t175 to ptr
  %t178 = load ptr, ptr %l78, !tbaa !29
  %t180 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %t177, ptr %t178, i32 %t172)
  store i32 %t180, ptr %l81
  br label %bb49
bb49:
  %t181 = load ptr, ptr %l77, !tbaa !29
  %t182 = call ptr @__olang_scope_or(ptr %v1, ptr %t181)
  %t183 = ptrtoint ptr %t182 to i64
  %t185 = inttoptr i64 %t183 to ptr
  %t186 = load ptr, ptr %l77, !tbaa !29
  %t187 = load i32, ptr %l81, !tbaa !23
  %t188 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %t185, ptr %s6, ptr %t186, i32 %t187)
  store { i64, ptr } %t188, ptr %l83
  br label %bb50
bb50:
  %t189 = load ptr, ptr %l76, !tbaa !29
  %t190 = load { i64, ptr }, ptr %l83, !tbaa !27
  %t191 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aDtorWalk_2esome(ptr %v0, ptr %s6, ptr %v1, ptr %t189, { i64, ptr } %t190)
  store i1 %t191, ptr %l84
  br label %bb51
bb51:
  %t192 = load i1, ptr %l84, !tbaa !21
  store i1 %t192, ptr %l75, !tbaa !21
  br label %bb52
bb52:
  %t193 = load i1, ptr %l75, !tbaa !21
  br i1 %t193, label %bb53, label %bb54
bb53:
  store i1 true, ptr %l85, !tbaa !21
  br label %bb58
bb54:
  %t194 = load ptr, ptr %l0, !tbaa !29
  store ptr %t194, ptr %l86, !tbaa !29
  %t195 = load ptr, ptr %l2, !tbaa !29
  store ptr %t195, ptr %l87, !tbaa !29
  %t196 = load ptr, ptr %l2, !tbaa !29
  store ptr %t196, ptr %l88, !tbaa !29
  %t197 = load i32, ptr %l3, !tbaa !23
  %t198 = load ptr, ptr %l88, !tbaa !29
  %t199 = call ptr @__olang_scope_or(ptr %v1, ptr %t198)
  %t200 = ptrtoint ptr %t199 to i64
  %t202 = inttoptr i64 %t200 to ptr
  %t203 = load ptr, ptr %l88, !tbaa !29
  %t205 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %t202, ptr %t203, i32 %t197)
  store i32 %t205, ptr %l91
  br label %bb55
bb55:
  %t206 = load ptr, ptr %l87, !tbaa !29
  %t207 = call ptr @__olang_scope_or(ptr %v1, ptr %t206)
  %t208 = ptrtoint ptr %t207 to i64
  %t210 = inttoptr i64 %t208 to ptr
  %t211 = load ptr, ptr %l87, !tbaa !29
  %t212 = load i32, ptr %l91, !tbaa !23
  %t213 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %t210, ptr %s6, ptr %t211, i32 %t212)
  store { i64, ptr } %t213, ptr %l93
  br label %bb56
bb56:
  %t214 = load ptr, ptr %l86, !tbaa !29
  %t215 = load { i64, ptr }, ptr %l93, !tbaa !27
  %t216 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aDtorWalk_2esome(ptr %v0, ptr %s6, ptr %v1, ptr %t214, { i64, ptr } %t215)
  store i1 %t216, ptr %l94
  br label %bb57
bb57:
  %t217 = load i1, ptr %l94, !tbaa !21
  store i1 %t217, ptr %l85, !tbaa !21
  br label %bb58
bb58:
  %t218 = load i1, ptr %l85, !tbaa !21
  store i1 %t218, ptr %l29, !tbaa !21
  call void @__olang_scope_close(ptr %s6)
  br label %bb64
bb59:
  br i1 true, label %bb60, label %bb61
bb60:
  br label %bb62
bb61:
  br label %bb63
bb62:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb64
bb63:
  call void @__olang_check_failed(ptr @olang_loc_5cbd31595b499a54_61b0a2a5664e21e0)
  unreachable
bb64:
  %t219 = load i1, ptr %l29, !tbaa !21
  store i1 %t219, ptr %l5, !tbaa !21
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t222 = getelementptr %"compiler/types:DtorWalk", ptr %t220, i32 0, i32 1
  %t223 = load i32, ptr %l3, !tbaa !23
  %t224 = load i1, ptr %l5, !tbaa !21
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_H64d9be73b6c9bed004c541bdf7f0ca0a(ptr %v0, ptr %t222, i32 %t223, i1 %t224)
  br label %bb65
bb65:
  %t228 = load i1, ptr %l5, !tbaa !21
  store i1 %t228, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aDtorWalk_2esome(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i32
  %l13 = alloca { i64, ptr }
  %l18 = alloca i1
  %l21 = alloca i1
  %rv = alloca i1
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
  br label %bb13
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t15, ptr %l13, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr i32, ptr %t19, i64 %t16
  %t21 = load i32, ptr %t20, !tbaa !33
  store i32 %t21, ptr %l5, !tbaa !23
  %t23 = load i32, ptr %l5, !tbaa !23
  %t25 = icmp ne i32 %t23, 0
  br i1 %t25, label %bb5, label %bb6
bb5:
  %t28 = load i32, ptr %l5, !tbaa !23
  %t31 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aDtorWalk_2eHolds(ptr %v0, ptr %v2, ptr %a0, i32 %t28)
  store i1 %t31, ptr %l21
  br label %bb7
bb6:
  store i1 false, ptr %l18, !tbaa !21
  br label %bb8
bb7:
  %t32 = load i1, ptr %l21, !tbaa !21
  store i1 %t32, ptr %l18, !tbaa !21
  br label %bb8
bb8:
  %t33 = load i1, ptr %l18, !tbaa !21
  br i1 %t33, label %bb9, label %bb10
bb9:
  store i1 true, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t35 = load i64, ptr %l3, !tbaa !24
  %t37 = add i64 %t35, 1
  store i64 %t37, ptr %l3, !tbaa !24
  br label %bb1
bb13:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnchors(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %lp2 = alloca ptr
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca ptr
  %l5 = alloca i32
  %l10 = alloca i32
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca i64
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %s0 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l3
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t2, ptr %lp2
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t4 = load ptr, ptr %lp2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  store ptr %a0, ptr %l4, !tbaa !29
  store i32 %a1, ptr %l5, !tbaa !23
  %t7 = icmp sge i64 0, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = icmp sle i64 0, 1152921504606846975
  br i1 %t9, label %bb4, label %bb5
bb3:
  call void @__olang_check_failed(ptr @olang_loc_4cf414dd239e444f_4f727e94fd163263)
  unreachable
bb4:
  %t11 = mul i64 0, 8
  %t12 = insertvalue { i64, ptr } undef, i64 0, 0
  %t13 = insertvalue { i64, ptr } %t12, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t14 = load ptr, ptr %lp2
  %t15 = load ptr, ptr %l4, !tbaa !29
  %t16 = load i32, ptr %l5, !tbaa !23
  %t19 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eanchorsInto(ptr %v0, ptr %s0, ptr %v1, ptr %t15, i32 %t16, { i64, ptr } %t13, ptr %t14, i64 0)
  store i32 %t19, ptr %l10
  %t20 = icmp ne i32 %t19, 0
  br i1 %t20, label %bb7, label %ok.21, !prof !99
ok.21:
  br label %bb6
bb5:
  call void @__olang_check_failed(ptr @olang_loc_4cf414dd239e444f_4f727e94fd163263)
  unreachable
bb6:
  br label %bb10
bb7:
  br label %bb8
bb8:
  %t22 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t22, ptr %l11
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s0)
  %t23 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t23, ptr %rv
  br label %ret
bb10:
  %t24 = load ptr, ptr %lp2
  %t26 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_3e_2eLen_3cArray_3cI64_3e_3e(ptr %v1, ptr %t24)
  store i64 %t26, ptr %l13
  br label %bb11
bb11:
  %t27 = load i64, ptr %l13, !tbaa !24
  %t28 = icmp eq i64 %t27, 0
  br i1 %t28, label %bb12, label %bb13
bb12:
  %t30 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t30, ptr %l15
  br label %bb14
bb13:
  br label %bb15
bb14:
  call void @__olang_scope_close(ptr %s0)
  %t31 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t31, ptr %rv
  br label %ret
bb15:
  %t32 = load ptr, ptr %lp2
  %t33 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t32
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t33, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAny(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l6 = alloca %"compiler/types:data"
  %l9 = alloca i32
  %l11 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l2, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t4 = sext i32 %t2 to i64
  %t7 = call %"compiler/types:data" @compiler_2ftypes_3adata_2ector(ptr %s0, i32 29, i64 %t4, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0)
  store %"compiler/types:data" %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t9 = load i32, ptr %l1, !tbaa !23
  %t12 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2edepthOf(ptr %v0, ptr %t8, i32 %t9)
  store i32 %t12, ptr %l9
  br label %bb2
bb2:
  %t13 = load i32, ptr %l9, !tbaa !23
  %t14 = add i32 %t13, 1
  %t15 = load ptr, ptr %l2, !tbaa !29
  %t16 = load %"compiler/types:data", ptr %l6
  %t18 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eintern(ptr %v0, ptr %t15, %"compiler/types:data" %t16, i32 %t14)
  store i32 %t18, ptr %l11
  br label %bb3
bb3:
  call void @__olang_scope_close(ptr %s0)
  %t19 = load i32, ptr %l11, !tbaa !23
  store i32 %t19, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnyTrait(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l5 = alloca i32
  %l8 = alloca i32
  %l11 = alloca i32
  %l15 = alloca i32
  %l18 = alloca i32
  %l21 = alloca i64
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t1, i32 %t2)
  store i32 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t8 = trunc i64 20 to i32
  %t9 = icmp eq i32 %t6, %t8
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i32, ptr %l1, !tbaa !23
  %t15 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t11, i32 %t12)
  store i32 %t15, ptr %l11
  br label %bb4
bb3:
  %t16 = load i32, ptr %l1, !tbaa !23
  store i32 %t16, ptr %l8, !tbaa !23
  br label %bb5
bb4:
  %t18 = load i32, ptr %l11, !tbaa !23
  store i32 %t18, ptr %l8, !tbaa !23
  br label %bb5
bb5:
  %t19 = load i32, ptr %l8, !tbaa !23
  store i32 %t19, ptr %l2, !tbaa !23
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load i32, ptr %l2, !tbaa !23
  %t24 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t20, i32 %t21)
  store i32 %t24, ptr %l15
  br label %bb6
bb6:
  %t25 = load i32, ptr %l15, !range !{i32 0, i32 33}
  %t27 = trunc i64 29 to i32
  %t28 = icmp eq i32 %t25, %t27
  br i1 %t28, label %bb7, label %bb8
bb7:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load i32, ptr %l2, !tbaa !23
  %t34 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %t30, i32 %t31)
  store i64 %t34, ptr %l21
  br label %bb9
bb8:
  %t35 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t35, ptr %l18, !tbaa !23
  br label %bb10
bb9:
  %t37 = load i64, ptr %l21, !tbaa !24
  %t38 = trunc i64 %t37 to i32
  store i32 %t38, ptr %l18, !tbaa !23
  br label %bb10
bb10:
  %t41 = load i32, ptr %l18, !tbaa !23
  store i32 %t41, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArrayRef(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i32
  %l7 = alloca i1
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l12 = alloca i32
  %l13 = alloca i32
  %l14 = alloca i32
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t1, i32 %t2)
  store i32 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t8 = trunc i64 20 to i32
  %t9 = icmp eq i32 %t6, %t8
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  store ptr %t11, ptr %l8, !tbaa !29
  %t12 = load ptr, ptr %l0, !tbaa !29
  store ptr %t12, ptr %l9, !tbaa !29
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load i32, ptr %l1, !tbaa !23
  %t17 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t13, i32 %t14)
  store i32 %t17, ptr %l12
  br label %bb4
bb3:
  store i1 false, ptr %l7, !tbaa !21
  br label %bb7
bb4:
  %t18 = load ptr, ptr %l9, !tbaa !29
  %t19 = load i32, ptr %l12, !tbaa !23
  %t20 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t18, i32 %t19)
  store i32 %t20, ptr %l13
  br label %bb5
bb5:
  %t21 = load ptr, ptr %l8, !tbaa !29
  %t22 = load i32, ptr %l13, !tbaa !23
  %t23 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t21, i32 %t22)
  store i32 %t23, ptr %l14
  br label %bb6
bb6:
  %t24 = load i32, ptr %l14, !range !{i32 0, i32 33}
  %t26 = trunc i64 19 to i32
  %t27 = icmp eq i32 %t24, %t26
  store i1 %t27, ptr %l7, !tbaa !21
  br label %bb7
bb7:
  %t29 = load i1, ptr %l7, !tbaa !21
  store i1 %t29, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eB(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l4 = alloca %"compiler/types:data"
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call %"compiler/types:data" @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eat(ptr %v0, ptr %a0, i32 %a1)
  store %"compiler/types:data" %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = getelementptr %"compiler/types:data", ptr %l4, i32 0, i32 2
  %t7 = load i64, ptr %t6, !tbaa !24
  store i64 %t7, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l9 = alloca i32
  %l12 = alloca i64
  %l15 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l1, !tbaa !23
  %t3 = icmp sle i32 %t1, 14
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i32, ptr %l1, !tbaa !23
  %t7 = sext i32 %t5 to i64
  %t9 = getelementptr [15 x i64], ptr @G_2ecompiler_2ftypes_2eprimBits, i64 0, i64 %t7
  %t10 = load i64, ptr %t9, !tbaa !34
  store i64 %t10, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load i32, ptr %l1, !tbaa !23
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t16, ptr %l9
  br label %bb4
bb4:
  %t17 = load i32, ptr %l9, !range !{i32 0, i32 33}
  %t19 = trunc i64 31 to i32
  %t20 = icmp eq i32 %t17, %t19
  br i1 %t20, label %bb5, label %bb6
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load i32, ptr %l1, !tbaa !23
  %t26 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %t22, i32 %t23)
  store i64 %t26, ptr %l15
  br label %bb7
bb6:
  store i64 0, ptr %l12, !tbaa !24
  br label %bb8
bb7:
  %t27 = load i64, ptr %l15, !tbaa !24
  store i64 %t27, ptr %l12, !tbaa !24
  br label %bb8
bb8:
  %t28 = load i64, ptr %l12, !tbaa !24
  store i64 %t28, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanonNamed(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %lp2 = alloca ptr
  %l6 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/types:Table", ptr %t1, i32 0, i32 3
  store i1 true, ptr %t3, !tbaa !21
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t8 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %v1, ptr %v2, ptr %t4, i32 %a1)
  store { i64, ptr } %t8, ptr %l6
  br label %bb1
bb1:
  %t9 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t9, ptr %lp2
  %t10 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t11 = load ptr, ptr %lp2
  store { i64, ptr } %t10, ptr %t11, !tbaa !27
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/types:Table", ptr %t12, i32 0, i32 3
  store i1 false, ptr %t14, !tbaa !21
  %t15 = load ptr, ptr %lp2
  %t16 = load { i64, ptr }, ptr %t15, !tbaa !27
  store { i64, ptr } %t16, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCaseNames(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca i32
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/types:Table", ptr %a0, i32 0, i32 17
  %t7 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Array_3_H6b4c62a37e5c57cb2d11c50f44a997f9(ptr %v0, ptr %v1, ptr %t3, i32 %a1)
  %t8 = extractvalue { i32, { i64, ptr } } %t7, 1
  %t9 = extractvalue { i32, { i64, ptr } } %t7, 0
  store i32 %t9, ptr %l7
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store { i64, ptr } %t8, ptr %l6
  br label %bb1
bb1:
  %t12 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t12, ptr %l2, !tbaa !27
  br label %bb8
bb2:
  br label %bb3
bb3:
  %t13 = icmp sge i64 0, 0
  br i1 %t13, label %bb4, label %bb5
bb4:
  %t15 = icmp sle i64 0, 2305843009213693951
  br i1 %t15, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_b3c0df13ff143a95_992c52f0f53f0c49)
  unreachable
bb6:
  %t17 = mul i64 0, 4
  %t18 = insertvalue { i64, ptr } undef, i64 0, 0
  %t19 = insertvalue { i64, ptr } %t18, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t19, ptr %l2, !tbaa !27
  br label %bb8
bb7:
  call void @__olang_check_failed(ptr @olang_loc_b3c0df13ff143a95_992c52f0f53f0c49)
  unreachable
bb8:
  %t21 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t21, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca %"compiler/types:data"
  %l3 = alloca i32
  %l6 = alloca %"compiler/types:data"
  %l8 = alloca i1
  %l23 = alloca ptr
  %l26 = alloca i64
  %l31 = alloca i1
  %l34 = alloca ptr
  %l37 = alloca i32
  %l38 = alloca i1
  %l39 = alloca i1
  %l42 = alloca i32
  %l44 = alloca i1
  %l45 = alloca ptr
  %l48 = alloca i32
  %l49 = alloca i1
  %l52 = alloca ptr
  %l55 = alloca i32
  %l56 = alloca i1
  %l59 = alloca ptr
  %l62 = alloca i32
  %l63 = alloca i1
  %l64 = alloca i1
  %l65 = alloca ptr
  %l68 = alloca i32
  %l69 = alloca i1
  %l70 = alloca i1
  %l71 = alloca ptr
  %l74 = alloca i32
  %l75 = alloca i1
  %l78 = alloca ptr
  %l81 = alloca i32
  %l82 = alloca i1
  %l85 = alloca ptr
  %l88 = alloca i32
  %l89 = alloca i1
  %l92 = alloca ptr
  %l95 = alloca i32
  %l96 = alloca i1
  %l99 = alloca ptr
  %l102 = alloca i32
  %l103 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call %"compiler/types:data" @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eat(ptr %v0, ptr %t1, i32 %t2)
  store %"compiler/types:data" %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load %"compiler/types:data", ptr %l6
  store %"compiler/types:data" %t6, ptr %l2
  %t7 = getelementptr %"compiler/types:data", ptr %l2, i32 0, i32 0
  %t8 = load i32, ptr %t7, !range !{i32 0, i32 33}
  store i32 %t8, ptr %l3
  %t10 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t12 = trunc i64 0 to i32
  %t13 = icmp eq i32 %t10, %t12
  br i1 %t13, label %bb2, label %bb3
bb2:
  br label %bb10
bb3:
  %t15 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t17 = trunc i64 25 to i32
  %t18 = icmp eq i32 %t15, %t17
  br i1 %t18, label %bb4, label %bb5
bb4:
  br label %bb10
bb5:
  %t20 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t22 = trunc i64 27 to i32
  %t23 = icmp eq i32 %t20, %t22
  br i1 %t23, label %bb6, label %bb7
bb6:
  br label %bb10
bb7:
  %t25 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t27 = trunc i64 15 to i32
  %t28 = icmp eq i32 %t25, %t27
  br i1 %t28, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb89
bb11:
  %t30 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t32 = trunc i64 18 to i32
  %t33 = icmp eq i32 %t30, %t32
  br i1 %t33, label %bb12, label %bb13
bb12:
  br label %bb18
bb13:
  %t35 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t37 = trunc i64 22 to i32
  %t38 = icmp eq i32 %t35, %t37
  br i1 %t38, label %bb14, label %bb15
bb14:
  br label %bb18
bb15:
  %t40 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t42 = trunc i64 23 to i32
  %t43 = icmp eq i32 %t40, %t42
  br i1 %t43, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb23
bb18:
  %t45 = load ptr, ptr %l0, !tbaa !29
  store ptr %t45, ptr %l23, !tbaa !29
  %t46 = getelementptr %"compiler/types:data", ptr %l2, i32 0, i32 0
  %t47 = load i32, ptr %t46, !range !{i32 0, i32 33}
  %t49 = trunc i64 18 to i32
  %t50 = icmp eq i32 %t47, %t49
  br i1 %t50, label %bb19, label %bb20
bb19:
  %t52 = getelementptr %"compiler/types:data", ptr %l2, i32 0, i32 2
  %t53 = load i64, ptr %t52, !tbaa !24
  store i64 %t53, ptr %l26, !tbaa !24
  br label %bb21
bb20:
  %t55 = getelementptr %"compiler/types:data", ptr %l2, i32 0, i32 1
  %t56 = load i64, ptr %t55, !tbaa !24
  store i64 %t56, ptr %l26, !tbaa !24
  br label %bb21
bb21:
  %t58 = load i64, ptr %l26, !tbaa !24
  %t59 = trunc i64 %t58 to i32
  %t61 = load ptr, ptr %l23, !tbaa !29
  %t63 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eclosedList(ptr %v0, ptr %t61, i32 %t59)
  store i1 %t63, ptr %l31
  br label %bb22
bb22:
  %t64 = load i1, ptr %l31, !tbaa !21
  store i1 %t64, ptr %l8, !tbaa !21
  br label %bb89
bb23:
  %t65 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t67 = trunc i64 19 to i32
  %t68 = icmp eq i32 %t65, %t67
  br i1 %t68, label %bb24, label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb38
bb26:
  %t70 = load ptr, ptr %l0, !tbaa !29
  store ptr %t70, ptr %l34, !tbaa !29
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = load i32, ptr %l1, !tbaa !23
  %t75 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t71, i32 %t72)
  store i32 %t75, ptr %l37
  br label %bb27
bb27:
  %t76 = load ptr, ptr %l34, !tbaa !29
  %t77 = load i32, ptr %l37, !tbaa !23
  %t78 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %t76, i32 %t77)
  store i1 %t78, ptr %l38
  br label %bb28
bb28:
  %t79 = load i1, ptr %l38, !tbaa !21
  br i1 %t79, label %bb29, label %bb30
bb29:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load i32, ptr %l1, !tbaa !23
  %t84 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t80, i32 %t81)
  store i32 %t84, ptr %l42
  br label %bb31
bb30:
  store i1 false, ptr %l39, !tbaa !21
  br label %bb37
bb31:
  %t85 = load i32, ptr %l42, !tbaa !23
  %t86 = icmp eq i32 %t85, 0
  br i1 %t86, label %bb32, label %bb33
bb32:
  store i1 true, ptr %l44, !tbaa !21
  br label %bb36
bb33:
  %t88 = load ptr, ptr %l0, !tbaa !29
  store ptr %t88, ptr %l45, !tbaa !29
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = load i32, ptr %l1, !tbaa !23
  %t93 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t89, i32 %t90)
  store i32 %t93, ptr %l48
  br label %bb34
bb34:
  %t94 = load ptr, ptr %l45, !tbaa !29
  %t95 = load i32, ptr %l48, !tbaa !23
  %t96 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %t94, i32 %t95)
  store i1 %t96, ptr %l49
  br label %bb35
bb35:
  %t97 = load i1, ptr %l49, !tbaa !21
  store i1 %t97, ptr %l44, !tbaa !21
  br label %bb36
bb36:
  %t98 = load i1, ptr %l44, !tbaa !21
  store i1 %t98, ptr %l39, !tbaa !21
  br label %bb37
bb37:
  %t99 = load i1, ptr %l39, !tbaa !21
  store i1 %t99, ptr %l8, !tbaa !21
  br label %bb89
bb38:
  %t100 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t102 = trunc i64 20 to i32
  %t103 = icmp eq i32 %t100, %t102
  br i1 %t103, label %bb39, label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb44
bb41:
  %t105 = load ptr, ptr %l0, !tbaa !29
  store ptr %t105, ptr %l52, !tbaa !29
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t107 = load i32, ptr %l1, !tbaa !23
  %t110 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t106, i32 %t107)
  store i32 %t110, ptr %l55
  br label %bb42
bb42:
  %t111 = load ptr, ptr %l52, !tbaa !29
  %t112 = load i32, ptr %l55, !tbaa !23
  %t113 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %t111, i32 %t112)
  store i1 %t113, ptr %l56
  br label %bb43
bb43:
  %t114 = load i1, ptr %l56, !tbaa !21
  store i1 %t114, ptr %l8, !tbaa !21
  br label %bb89
bb44:
  %t115 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t117 = trunc i64 21 to i32
  %t118 = icmp eq i32 %t115, %t117
  br i1 %t118, label %bb45, label %bb46
bb45:
  br label %bb47
bb46:
  br label %bb60
bb47:
  %t120 = load ptr, ptr %l0, !tbaa !29
  store ptr %t120, ptr %l59, !tbaa !29
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t122 = load i32, ptr %l1, !tbaa !23
  %t125 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t121, i32 %t122)
  store i32 %t125, ptr %l62
  br label %bb48
bb48:
  %t126 = load ptr, ptr %l59, !tbaa !29
  %t127 = load i32, ptr %l62, !tbaa !23
  %t128 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eclosedList(ptr %v0, ptr %t126, i32 %t127)
  store i1 %t128, ptr %l63
  br label %bb49
bb49:
  %t129 = load i1, ptr %l63, !tbaa !21
  br i1 %t129, label %bb50, label %bb51
bb50:
  %t130 = load ptr, ptr %l0, !tbaa !29
  store ptr %t130, ptr %l65, !tbaa !29
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t132 = load i32, ptr %l1, !tbaa !23
  %t135 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t131, i32 %t132)
  store i32 %t135, ptr %l68
  br label %bb52
bb51:
  store i1 false, ptr %l64, !tbaa !21
  br label %bb54
bb52:
  %t136 = load ptr, ptr %l65, !tbaa !29
  %t137 = load i32, ptr %l68, !tbaa !23
  %t138 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %t136, i32 %t137)
  store i1 %t138, ptr %l69
  br label %bb53
bb53:
  %t139 = load i1, ptr %l69, !tbaa !21
  store i1 %t139, ptr %l64, !tbaa !21
  br label %bb54
bb54:
  %t140 = load i1, ptr %l64, !tbaa !21
  br i1 %t140, label %bb55, label %bb56
bb55:
  %t141 = load ptr, ptr %l0, !tbaa !29
  store ptr %t141, ptr %l71, !tbaa !29
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t143 = load i32, ptr %l1, !tbaa !23
  %t146 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t142, i32 %t143)
  store i32 %t146, ptr %l74
  br label %bb57
bb56:
  store i1 false, ptr %l70, !tbaa !21
  br label %bb59
bb57:
  %t147 = load ptr, ptr %l71, !tbaa !29
  %t148 = load i32, ptr %l74, !tbaa !23
  %t149 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eclosedList(ptr %v0, ptr %t147, i32 %t148)
  store i1 %t149, ptr %l75
  br label %bb58
bb58:
  %t150 = load i1, ptr %l75, !tbaa !21
  store i1 %t150, ptr %l70, !tbaa !21
  br label %bb59
bb59:
  %t151 = load i1, ptr %l70, !tbaa !21
  store i1 %t151, ptr %l8, !tbaa !21
  br label %bb89
bb60:
  %t152 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t154 = trunc i64 24 to i32
  %t155 = icmp eq i32 %t152, %t154
  br i1 %t155, label %bb61, label %bb62
bb61:
  br label %bb63
bb62:
  br label %bb66
bb63:
  %t157 = load ptr, ptr %l0, !tbaa !29
  store ptr %t157, ptr %l78, !tbaa !29
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t159 = load i32, ptr %l1, !tbaa !23
  %t162 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %v0, ptr %t158, i32 %t159)
  store i32 %t162, ptr %l81
  br label %bb64
bb64:
  %t163 = load ptr, ptr %l78, !tbaa !29
  %t164 = load i32, ptr %l81, !tbaa !23
  %t165 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eclosedList(ptr %v0, ptr %t163, i32 %t164)
  store i1 %t165, ptr %l82
  br label %bb65
bb65:
  %t166 = load i1, ptr %l82, !tbaa !21
  store i1 %t166, ptr %l8, !tbaa !21
  br label %bb89
bb66:
  %t167 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t169 = trunc i64 26 to i32
  %t170 = icmp eq i32 %t167, %t169
  br i1 %t170, label %bb67, label %bb68
bb67:
  br label %bb69
bb68:
  br label %bb72
bb69:
  %t172 = load ptr, ptr %l0, !tbaa !29
  store ptr %t172, ptr %l85, !tbaa !29
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t174 = load i32, ptr %l1, !tbaa !23
  %t177 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstType(ptr %v0, ptr %t173, i32 %t174)
  store i32 %t177, ptr %l88
  br label %bb70
bb70:
  %t178 = load ptr, ptr %l85, !tbaa !29
  %t179 = load i32, ptr %l88, !tbaa !23
  %t180 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %t178, i32 %t179)
  store i1 %t180, ptr %l89
  br label %bb71
bb71:
  %t181 = load i1, ptr %l89, !tbaa !21
  store i1 %t181, ptr %l8, !tbaa !21
  br label %bb89
bb72:
  %t182 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t184 = trunc i64 29 to i32
  %t185 = icmp eq i32 %t182, %t184
  br i1 %t185, label %bb73, label %bb74
bb73:
  br label %bb75
bb74:
  br label %bb78
bb75:
  %t187 = load ptr, ptr %l0, !tbaa !29
  store ptr %t187, ptr %l92, !tbaa !29
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t189 = load i32, ptr %l1, !tbaa !23
  %t192 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnyTrait(ptr %v0, ptr %t188, i32 %t189)
  store i32 %t192, ptr %l95
  br label %bb76
bb76:
  %t193 = load ptr, ptr %l92, !tbaa !29
  %t194 = load i32, ptr %l95, !tbaa !23
  %t195 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %t193, i32 %t194)
  store i1 %t195, ptr %l96
  br label %bb77
bb77:
  %t196 = load i1, ptr %l96, !tbaa !21
  store i1 %t196, ptr %l8, !tbaa !21
  br label %bb89
bb78:
  %t197 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t199 = trunc i64 30 to i32
  %t200 = icmp eq i32 %t197, %t199
  br i1 %t200, label %bb79, label %bb80
bb79:
  br label %bb81
bb80:
  br label %bb84
bb81:
  %t202 = load ptr, ptr %l0, !tbaa !29
  store ptr %t202, ptr %l99, !tbaa !29
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t204 = load i32, ptr %l1, !tbaa !23
  %t207 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrSetItems(ptr %v0, ptr %t203, i32 %t204)
  store i32 %t207, ptr %l102
  br label %bb82
bb82:
  %t208 = load ptr, ptr %l99, !tbaa !29
  %t209 = load i32, ptr %l102, !tbaa !23
  %t210 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eclosedList(ptr %v0, ptr %t208, i32 %t209)
  store i1 %t210, ptr %l103
  br label %bb83
bb83:
  %t211 = load i1, ptr %l103, !tbaa !21
  store i1 %t211, ptr %l8, !tbaa !21
  br label %bb89
bb84:
  br i1 true, label %bb85, label %bb86
bb85:
  br label %bb87
bb86:
  br label %bb88
bb87:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb89
bb88:
  call void @__olang_check_failed(ptr @olang_loc_3a86b0904acb017a_fb1793104580b26e)
  unreachable
bb89:
  %t212 = load i1, ptr %l8, !tbaa !21
  store i1 %t212, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstExpr(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i32
  %l13 = alloca i64
  %l15 = alloca ptr
  %l16 = alloca i64
  %l22 = alloca ptr
  %l26 = alloca { i64, ptr }
  %l28 = alloca ptr
  %l31 = alloca %"compiler/types:data"
  %l32 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/types:Table", ptr %t1, i32 0, i32 12
  %t4 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t7 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9162e3b7f03fcbf954b681204d5f6cca(ptr %v0, ptr %v1, ptr %t3, { i64, ptr } %t4)
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
  %t20 = getelementptr %"compiler/types:Table", ptr %t18, i32 0, i32 11
  %t22 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t20)
  store i64 %t22, ptr %l13
  br label %bb7
bb6:
  br label %bb13
bb7:
  %t23 = load i64, ptr %l13, !tbaa !24
  store i64 %t23, ptr %l2, !tbaa !24
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/types:Table", ptr %t24, i32 0, i32 11
  store ptr %t26, ptr %l15, !tbaa !29
  %t27 = ptrtoint ptr %v0 to i64
  store i64 %t27, ptr %l16, !tbaa !24
  %t28 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t28, label %bb8, label %bb9
bb8:
  %t30 = call ptr @__olang_region_make(ptr %v0)
  %t31 = ptrtoint ptr %t30 to i64
  store i64 %t31, ptr %l16, !tbaa !24
  br label %bb9
bb9:
  %t32 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t32, 1
  %t35 = extractvalue { i64, ptr } %t32, 0
  %t36 = load i64, ptr %l16
  %t37 = inttoptr i64 %t36 to ptr
  %t38 = call ptr @__olang_scope_alloc(ptr %t37, i64 %t35)
  call void @olang_textcopy(ptr %t38, ptr %t34, i64 %t35)
  %t39 = insertvalue { i64, ptr } undef, i64 %t35, 0
  %t40 = insertvalue { i64, ptr } %t39, ptr %t38, 1
  %t42 = load i64, ptr %l16
  %t43 = inttoptr i64 %t42 to ptr
  %t44 = extractvalue { i64, ptr } %t40, 0
  %t45 = extractvalue { i64, ptr } %t40, 1
  %t46 = mul i64 %t44, 1
  %t47 = call ptr @__olang_scope_alloc(ptr %t43, i64 %t46)
  call void @llvm.memcpy.p0.p0.i64(ptr %t47, ptr %t45, i64 %t46, i1 false)
  %t48 = insertvalue { i64, ptr } undef, i64 %t44, 0
  %t49 = insertvalue { i64, ptr } %t48, ptr %t47, 1
  %t50 = load ptr, ptr %l15, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t50, { i64, ptr } %t49)
  br label %bb10
bb10:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/types:Table", ptr %t52, i32 0, i32 12
  store ptr %t54, ptr %l22, !tbaa !29
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/types:Table", ptr %t55, i32 0, i32 11
  %t58 = load i64, ptr %l2, !tbaa !24
  %t61 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t57, i64 %t58)
  store { i64, ptr } %t61, ptr %l26
  br label %bb11
bb11:
  %t62 = load i64, ptr %l2, !tbaa !24
  %t63 = load ptr, ptr %l22, !tbaa !29
  %t64 = load { i64, ptr }, ptr %l26, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v0, ptr %v0, ptr %t63, { i64, ptr } %t64, i64 %t62)
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t66 = load ptr, ptr %l0, !tbaa !29
  store ptr %t66, ptr %l28, !tbaa !29
  %t67 = load i64, ptr %l2, !tbaa !24
  %t70 = call %"compiler/types:data" @compiler_2ftypes_3adata_2ector(ptr %s0, i32 27, i64 %t67, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0)
  store %"compiler/types:data" %t70, ptr %l31
  br label %bb14
bb14:
  %t71 = load ptr, ptr %l28, !tbaa !29
  %t72 = load %"compiler/types:data", ptr %l31
  %t73 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eintern(ptr %v0, ptr %t71, %"compiler/types:data" %t72, i32 1)
  store i32 %t73, ptr %l32
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s0)
  %t74 = load i32, ptr %l32, !tbaa !23
  store i32 %t74, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l4 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eB(ptr %v0, ptr %a0, i32 %a1)
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

define dso_local i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l6 = alloca %"compiler/types:decl"
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/types:Table", ptr %a0, i32 0, i32 13
  %t6 = sext i32 %a1 to i64
  %t9 = call %"compiler/types:decl" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3adecl_3e_2eAt_3ccompiler_2ftypes_3adecl_3e(ptr %v0, ptr %t3, i64 %t6)
  store %"compiler/types:decl" %t9, ptr %l6
  br label %bb1
bb1:
  %t10 = getelementptr %"compiler/types:decl", ptr %l6, i32 0, i32 0
  %t11 = load i64, ptr %t10, !tbaa !24
  store i64 %t11, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclParams(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l6 = alloca %"compiler/types:decl"
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/types:Table", ptr %a0, i32 0, i32 13
  %t6 = sext i32 %a1 to i64
  %t9 = call %"compiler/types:decl" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3adecl_3e_2eAt_3ccompiler_2ftypes_3adecl_3e(ptr %v0, ptr %t3, i64 %t6)
  store %"compiler/types:decl" %t9, ptr %l6
  br label %bb1
bb1:
  %t10 = getelementptr %"compiler/types:decl", ptr %l6, i32 0, i32 3
  %t11 = load i32, ptr %t10, !tbaa !23
  %t13 = sext i32 %t11 to i64
  store i64 %t13, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclaresCopy(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i32
  %l7 = alloca i1
  %l9 = alloca ptr
  %l12 = alloca i32
  %l14 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t1, i32 %t2)
  store i32 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t8 = trunc i64 18 to i32
  %t9 = icmp eq i32 %t6, %t8
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/types:Table", ptr %t11, i32 0, i32 37
  store ptr %t13, ptr %l9, !tbaa !29
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load i32, ptr %l1, !tbaa !23
  %t18 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t14, i32 %t15)
  store i32 %t18, ptr %l12
  br label %bb4
bb3:
  store i1 false, ptr %l7, !tbaa !21
  br label %bb6
bb4:
  %t19 = load i32, ptr %l12, !tbaa !23
  %t20 = sext i32 %t19 to i64
  %t21 = load ptr, ptr %l9, !tbaa !29
  %t23 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t21, i64 %t20)
  store i1 %t23, ptr %l14
  br label %bb5
bb5:
  %t24 = load i1, ptr %l14, !tbaa !21
  store i1 %t24, ptr %l7, !tbaa !21
  br label %bb6
bb6:
  %t25 = load i1, ptr %l7, !tbaa !21
  store i1 %t25, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDtorWritten(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l4 = alloca %"compiler/types:body"
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call %"compiler/types:body" @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ebodyOf(ptr %v0, ptr %a0, i32 %a1)
  store %"compiler/types:body" %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = getelementptr %"compiler/types:body", ptr %l4, i32 0, i32 3
  %t7 = load i1, ptr %t6, !tbaa !21
  store i1 %t7, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eEmbedded(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca i32
  %l19 = alloca ptr
  %l22 = alloca i32
  %l23 = alloca i32
  %l26 = alloca ptr
  %l29 = alloca i32
  %l30 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
  %l46 = alloca ptr
  %l49 = alloca i32
  %l50 = alloca { i64, ptr }
  %l54 = alloca ptr
  %l57 = alloca i32
  %l62 = alloca i32
  %l64 = alloca ptr
  %l67 = alloca i32
  %l72 = alloca ptr
  %l75 = alloca i32
  %l76 = alloca { i64, ptr }
  %l83 = alloca { i64, ptr }
  %l92 = alloca ptr
  %l95 = alloca i32
  %l96 = alloca { i64, ptr }
  %l102 = alloca i32
  %l104 = alloca ptr
  %l107 = alloca i32
  %l109 = alloca { i64, ptr }
  %l110 = alloca { i64, ptr }
  %l111 = alloca i64
  %l112 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l13
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l2
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t4 = load i32, ptr %l1, !tbaa !23
  %t7 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t3, i32 %t4)
  store i32 %t7, ptr %l16
  br label %bb2
bb2:
  %t8 = load i32, ptr %l16, !range !{i32 0, i32 33}
  store i32 %t8, ptr %l3
  %t9 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t11 = trunc i64 18 to i32
  %t12 = icmp eq i32 %t9, %t11
  br i1 %t12, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb39
bb5:
  %t14 = load ptr, ptr %l0, !tbaa !29
  store ptr %t14, ptr %l19, !tbaa !29
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load i32, ptr %l1, !tbaa !23
  %t19 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t15, i32 %t16)
  store i32 %t19, ptr %l22
  br label %bb6
bb6:
  %t20 = load ptr, ptr %l19, !tbaa !29
  %t21 = load i32, ptr %l22, !tbaa !23
  %t22 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t20, i32 %t21)
  store i32 %t22, ptr %l23
  br label %bb7
bb7:
  %t23 = load i32, ptr %l23, !range !{i32 0, i32 6}
  store i32 %t23, ptr %l4
  %t24 = load i32, ptr %l4, !range !{i32 0, i32 6}
  %t26 = trunc i64 0 to i32
  %t27 = icmp eq i32 %t24, %t26
  br i1 %t27, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb20
bb10:
  %t29 = load ptr, ptr %l0, !tbaa !29
  store ptr %t29, ptr %l26, !tbaa !29
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load i32, ptr %l1, !tbaa !23
  %t34 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t30, i32 %t31)
  store i32 %t34, ptr %l29
  br label %bb11
bb11:
  %t35 = load ptr, ptr %l26, !tbaa !29
  %t36 = load i32, ptr %l29, !tbaa !23
  %t37 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t35, i32 %t36)
  store { i64, ptr } %t37, ptr %l30
  br label %bb12
bb12:
  %t38 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t38, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t39 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t39, 0
  store i64 %t41, ptr %l7, !tbaa !24
  br label %bb13
bb13:
  %t43 = load i64, ptr %l6, !tbaa !24
  %t44 = load i64, ptr %l7, !tbaa !24
  %t47 = icmp slt i64 %t43, %t44
  %t49 = xor i1 %t47, true
  br i1 %t49, label %bb14, label %bb15
bb14:
  br label %bb19
bb15:
  br label %bb16
bb16:
  %t51 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t51, ptr %l37, !tbaa !27
  %t52 = load i64, ptr %l6, !tbaa !24
  %t54 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr i32, ptr %t55, i64 %t52
  %t57 = load i32, ptr %t56, !tbaa !33
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l2, i32 %t57)
  br label %bb17
bb17:
  br label %bb18
bb18:
  %t62 = load i64, ptr %l6, !tbaa !24
  %t64 = add i64 %t62, 1
  store i64 %t64, ptr %l6, !tbaa !24
  br label %bb13
bb19:
  br label %bb38
bb20:
  %t66 = load i32, ptr %l4, !range !{i32 0, i32 6}
  %t68 = trunc i64 1 to i32
  %t69 = icmp eq i32 %t66, %t68
  br i1 %t69, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb27
bb23:
  %t71 = load ptr, ptr %l0, !tbaa !29
  store ptr %t71, ptr %l46, !tbaa !29
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t73 = load i32, ptr %l1, !tbaa !23
  %t76 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t72, i32 %t73)
  store i32 %t76, ptr %l49
  br label %bb24
bb24:
  %t77 = load ptr, ptr %l46, !tbaa !29
  %t78 = load i32, ptr %l49, !tbaa !23
  %t79 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t77, i32 %t78)
  store { i64, ptr } %t79, ptr %l50
  br label %bb25
bb25:
  %t80 = load { i64, ptr }, ptr %l50, !tbaa !27
  call void @compiler_2ftypes_2epushPayloads(ptr %v0, ptr %s0, { i64, ptr } %t80, ptr %l2)
  br label %bb26
bb26:
  br label %bb38
bb27:
  %t82 = load i32, ptr %l4, !range !{i32 0, i32 6}
  %t84 = trunc i64 4 to i32
  %t85 = icmp eq i32 %t82, %t84
  br i1 %t85, label %bb28, label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb33
bb30:
  store ptr %l2, ptr %l54, !tbaa !29
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t88 = load i32, ptr %l1, !tbaa !23
  %t91 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t87, i32 %t88)
  store i32 %t91, ptr %l57
  br label %bb31
bb31:
  %t92 = load ptr, ptr %l54, !tbaa !29
  %t93 = load i32, ptr %l57, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %t92, i32 %t93)
  br label %bb32
bb32:
  br label %bb38
bb33:
  br i1 true, label %bb34, label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb37
bb36:
  br label %bb38
bb37:
  call void @__olang_check_failed(ptr @olang_loc_cb508a25d2891980_42113325dd63632c)
  unreachable
bb38:
  br label %bb86
bb39:
  %t94 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t96 = trunc i64 19 to i32
  %t97 = icmp eq i32 %t94, %t96
  br i1 %t97, label %bb40, label %bb41
bb40:
  br label %bb42
bb41:
  br label %bb49
bb42:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t100 = load i32, ptr %l1, !tbaa !23
  %t103 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t99, i32 %t100)
  store i32 %t103, ptr %l62
  br label %bb43
bb43:
  %t104 = load i32, ptr %l62, !tbaa !23
  %t105 = icmp ne i32 %t104, 0
  br i1 %t105, label %bb44, label %bb45
bb44:
  store ptr %l2, ptr %l64, !tbaa !29
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load i32, ptr %l1, !tbaa !23
  %t111 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t107, i32 %t108)
  store i32 %t111, ptr %l67
  br label %bb46
bb45:
  br label %bb48
bb46:
  %t112 = load ptr, ptr %l64, !tbaa !29
  %t113 = load i32, ptr %l67, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %t112, i32 %t113)
  br label %bb47
bb47:
  br label %bb48
bb48:
  br label %bb86
bb49:
  %t114 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t116 = trunc i64 22 to i32
  %t117 = icmp eq i32 %t114, %t116
  br i1 %t117, label %bb50, label %bb51
bb50:
  br label %bb54
bb51:
  %t119 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t121 = trunc i64 23 to i32
  %t122 = icmp eq i32 %t119, %t121
  br i1 %t122, label %bb52, label %bb53
bb52:
  br label %bb54
bb53:
  br label %bb64
bb54:
  %t124 = load ptr, ptr %l0, !tbaa !29
  store ptr %t124, ptr %l72, !tbaa !29
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t126 = load i32, ptr %l1, !tbaa !23
  %t129 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t125, i32 %t126)
  store i32 %t129, ptr %l75
  br label %bb55
bb55:
  %t130 = load ptr, ptr %l72, !tbaa !29
  %t131 = load i32, ptr %l75, !tbaa !23
  %t132 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t130, i32 %t131)
  store { i64, ptr } %t132, ptr %l76
  br label %bb56
bb56:
  %t133 = load { i64, ptr }, ptr %l76, !tbaa !27
  store { i64, ptr } %t133, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t134 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t136 = extractvalue { i64, ptr } %t134, 0
  store i64 %t136, ptr %l11, !tbaa !24
  br label %bb57
bb57:
  %t138 = load i64, ptr %l10, !tbaa !24
  %t139 = load i64, ptr %l11, !tbaa !24
  %t142 = icmp slt i64 %t138, %t139
  %t144 = xor i1 %t142, true
  br i1 %t144, label %bb58, label %bb59
bb58:
  br label %bb63
bb59:
  br label %bb60
bb60:
  %t146 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t146, ptr %l83, !tbaa !27
  %t147 = load i64, ptr %l10, !tbaa !24
  %t149 = getelementptr { i64, ptr }, ptr %l83, i32 0, i32 1
  %t150 = load ptr, ptr %t149, !tbaa !27
  %t151 = getelementptr i32, ptr %t150, i64 %t147
  %t152 = load i32, ptr %t151, !tbaa !33
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l2, i32 %t152)
  br label %bb61
bb61:
  br label %bb62
bb62:
  %t157 = load i64, ptr %l10, !tbaa !24
  %t159 = add i64 %t157, 1
  store i64 %t159, ptr %l10, !tbaa !24
  br label %bb57
bb63:
  br label %bb86
bb64:
  %t161 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t163 = trunc i64 24 to i32
  %t164 = icmp eq i32 %t161, %t163
  br i1 %t164, label %bb65, label %bb66
bb65:
  br label %bb67
bb66:
  br label %bb71
bb67:
  %t166 = load ptr, ptr %l0, !tbaa !29
  store ptr %t166, ptr %l92, !tbaa !29
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t168 = load i32, ptr %l1, !tbaa !23
  %t171 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %v0, ptr %t167, i32 %t168)
  store i32 %t171, ptr %l95
  br label %bb68
bb68:
  %t172 = load ptr, ptr %l92, !tbaa !29
  %t173 = load i32, ptr %l95, !tbaa !23
  %t174 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t172, i32 %t173)
  store { i64, ptr } %t174, ptr %l96
  br label %bb69
bb69:
  %t175 = load { i64, ptr }, ptr %l96, !tbaa !27
  call void @compiler_2ftypes_2epushPayloads(ptr %v0, ptr %s0, { i64, ptr } %t175, ptr %l2)
  br label %bb70
bb70:
  br label %bb86
bb71:
  %t177 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t179 = trunc i64 32 to i32
  %t180 = icmp eq i32 %t177, %t179
  br i1 %t180, label %bb72, label %bb73
bb72:
  br label %bb74
bb73:
  br label %bb81
bb74:
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t183 = load i32, ptr %l1, !tbaa !23
  %t186 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t182, i32 %t183)
  store i32 %t186, ptr %l102
  br label %bb75
bb75:
  %t187 = load i32, ptr %l102, !tbaa !23
  %t188 = icmp ne i32 %t187, 5
  br i1 %t188, label %bb76, label %bb77
bb76:
  store ptr %l2, ptr %l104, !tbaa !29
  %t190 = load ptr, ptr %l0, !tbaa !29
  %t191 = load i32, ptr %l1, !tbaa !23
  %t194 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t190, i32 %t191)
  store i32 %t194, ptr %l107
  br label %bb78
bb77:
  br label %bb80
bb78:
  %t195 = load ptr, ptr %l104, !tbaa !29
  %t196 = load i32, ptr %l107, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %t195, i32 %t196)
  br label %bb79
bb79:
  br label %bb80
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
  call void @__olang_check_failed(ptr @olang_loc_4d47e5476b23fa11_4ed9625d853ee5dd)
  unreachable
bb86:
  %t198 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eToArray_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %s0, ptr %l2)
  store { i64, ptr } %t198, ptr %l109
  br label %bb87
bb87:
  %t199 = load { i64, ptr }, ptr %l109, !tbaa !27
  store { i64, ptr } %t199, ptr %l110, !tbaa !27
  %t200 = load { i64, ptr }, ptr %l110, !tbaa !27
  %t201 = extractvalue { i64, ptr } %t200, 0
  store i64 %t201, ptr %l111, !tbaa !24
  %t202 = load i64, ptr %l111, !tbaa !24
  %t203 = mul i64 %t202, 4
  %t204 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t203)
  %t205 = insertvalue { i64, ptr } undef, i64 %t202, 0
  %t206 = insertvalue { i64, ptr } %t205, ptr %t204, 1
  store { i64, ptr } %t206, ptr %l112, !tbaa !27
  %t207 = getelementptr { i64, ptr }, ptr %l112, i32 0, i32 1
  %t208 = load ptr, ptr %t207, !tbaa !27
  %t209 = getelementptr { i64, ptr }, ptr %l110, i32 0, i32 1
  %t210 = load ptr, ptr %t209, !tbaa !27
  %t211 = load i64, ptr %l111, !tbaa !24
  %t212 = mul i64 %t211, 4
  call void @llvm.memmove.p0.p0.i64(ptr %t208, ptr %t210, i64 %t212, i1 false)
  %t213 = load { i64, ptr }, ptr %l112, !tbaa !27
  store { i64, ptr } %t213, ptr %l110, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t214 = load { i64, ptr }, ptr %l110, !tbaa !27
  store { i64, ptr } %t214, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eEnds(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i32
  %l7 = alloca i1
  %l9 = alloca ptr
  %l12 = alloca i32
  %l14 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t1, i32 %t2)
  store i32 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t8 = trunc i64 18 to i32
  %t9 = icmp eq i32 %t6, %t8
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/types:Table", ptr %t11, i32 0, i32 42
  store ptr %t13, ptr %l9, !tbaa !29
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load i32, ptr %l1, !tbaa !23
  %t18 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t14, i32 %t15)
  store i32 %t18, ptr %l12
  br label %bb4
bb3:
  store i1 false, ptr %l7, !tbaa !21
  br label %bb6
bb4:
  %t19 = load i32, ptr %l12, !tbaa !23
  %t20 = sext i32 %t19 to i64
  %t21 = load ptr, ptr %l9, !tbaa !29
  %t23 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t21, i64 %t20)
  store i1 %t23, ptr %l14
  br label %bb5
bb5:
  %t24 = load i1, ptr %l14, !tbaa !21
  store i1 %t24, ptr %l7, !tbaa !21
  br label %bb6
bb6:
  %t25 = load i1, ptr %l7, !tbaa !21
  store i1 %t25, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrCarries(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i32
  %l7 = alloca i1
  %l11 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t1, i32 %t2)
  store i32 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t8 = trunc i64 32 to i32
  %t9 = icmp eq i32 %t6, %t8
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/types:Table", ptr %t11, i32 0, i32 19
  %t14 = load i32, ptr %l1, !tbaa !23
  %t17 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20compile_H5a37a20f375ed653adc00b592f5745cf(ptr %v0, ptr %t13, i32 %t14)
  store i1 %t17, ptr %l11
  br label %bb4
bb3:
  store i1 false, ptr %l7, !tbaa !21
  br label %bb5
bb4:
  %t18 = load i1, ptr %l11, !tbaa !21
  store i1 %t18, ptr %l7, !tbaa !21
  br label %bb5
bb5:
  %t19 = load i1, ptr %l7, !tbaa !21
  store i1 %t19, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i32
  %l7 = alloca i32
  %l10 = alloca i64
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t1, i32 %t2)
  store i32 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t8 = trunc i64 28 to i32
  %t9 = icmp eq i32 %t6, %t8
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i32, ptr %l1, !tbaa !23
  %t15 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %t11, i32 %t12)
  store i64 %t15, ptr %l10
  br label %bb4
bb3:
  %t16 = load i32, ptr %l1, !tbaa !23
  store i32 %t16, ptr %l7, !tbaa !23
  br label %bb5
bb4:
  %t18 = load i64, ptr %l10, !tbaa !24
  %t19 = trunc i64 %t18 to i32
  store i32 %t19, ptr %l7, !tbaa !23
  br label %bb5
bb5:
  %t22 = load i32, ptr %l7, !tbaa !23
  store i32 %t22, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrRepr(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i32
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/types:Table", ptr %a0, i32 0, i32 19
  %t7 = call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20compile_H08d487c91a3409a786f6b7c534acefc5(ptr %v0, ptr %t3, i32 %a1)
  %t8 = extractvalue { i32, i32 } %t7, 1
  %t9 = extractvalue { i32, i32 } %t7, 0
  store i32 %t9, ptr %l7
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store i32 %t8, ptr %l6
  br label %bb1
bb1:
  %t12 = load i32, ptr %l6, !tbaa !23
  store i32 %t12, ptr %l2, !tbaa !23
  br label %bb4
bb2:
  br label %bb3
bb3:
  %t13 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t13, ptr %l2, !tbaa !23
  br label %bb4
bb4:
  %t15 = load i32, ptr %l2, !tbaa !23
  store i32 %t15, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrVal(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l6 = alloca %"compiler/types:data"
  %l7 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store ptr %a0, ptr %l2, !tbaa !29
  %t4 = sext i32 %a1 to i64
  %t7 = call %"compiler/types:data" @compiler_2ftypes_3adata_2ector(ptr %s0, i32 32, i64 %t4, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0)
  store %"compiler/types:data" %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l2, !tbaa !29
  %t9 = load %"compiler/types:data", ptr %l6
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eintern(ptr %v0, ptr %t8, %"compiler/types:data" %t9, i32 1)
  store i32 %t10, ptr %l7
  br label %bb2
bb2:
  call void @__olang_scope_close(ptr %s0)
  %t11 = load i32, ptr %l7, !tbaa !23
  store i32 %t11, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i32
  %l7 = alloca i32
  %l10 = alloca i64
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t1, i32 %t2)
  store i32 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t8 = trunc i64 32 to i32
  %t9 = icmp eq i32 %t6, %t8
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i32, ptr %l1, !tbaa !23
  %t15 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %t11, i32 %t12)
  store i64 %t15, ptr %l10
  br label %bb4
bb3:
  store i32 0, ptr %l7, !tbaa !23
  br label %bb5
bb4:
  %t16 = load i64, ptr %l10, !tbaa !24
  %t17 = trunc i64 %t16 to i32
  store i32 %t17, ptr %l7, !tbaa !23
  br label %bb5
bb5:
  %t20 = load i32, ptr %l7, !tbaa !23
  store i32 %t20, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrWords(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l3 = alloca ptr
  %l9 = alloca %"compiler/types:data"
  %l10 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store ptr %a0, ptr %l3, !tbaa !29
  %t4 = sext i32 %a1 to i64
  %t10 = call %"compiler/types:data" @compiler_2ftypes_3adata_2ector(ptr %s0, i32 28, i64 %t4, i64 %a2, i64 0, i64 0, i64 0, i64 0, i64 0)
  store %"compiler/types:data" %t10, ptr %l9
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l3, !tbaa !29
  %t12 = load %"compiler/types:data", ptr %l9
  %t13 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eintern(ptr %v0, ptr %t11, %"compiler/types:data" %t12, i32 1)
  store i32 %t13, ptr %l10
  br label %bb2
bb2:
  call void @__olang_scope_close(ptr %s0)
  %t14 = load i32, ptr %l10, !tbaa !23
  store i32 %t14, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFieldHolds(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l6 = alloca i1
  %l7 = alloca i1
  %l10 = alloca i1
  %l15 = alloca i32
  %l18 = alloca i32
  %l21 = alloca i1
  %l24 = alloca i32
  %l26 = alloca i1
  %l27 = alloca ptr
  %l30 = alloca i32
  %l31 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l2, !tbaa !23
  %t5 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load i1, ptr %l6, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb5
bb3:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i32, ptr %l2, !tbaa !23
  %t11 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %t7, i32 %t8)
  store i1 %t11, ptr %l10
  br label %bb4
bb4:
  %t12 = load i1, ptr %l10, !tbaa !21
  %t13 = xor i1 %t12, true
  store i1 %t13, ptr %l7, !tbaa !21
  br label %bb5
bb5:
  %t15 = load i1, ptr %l7, !tbaa !21
  br i1 %t15, label %bb6, label %bb7
bb6:
  store i1 false, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load i32, ptr %l2, !tbaa !23
  %t21 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t17, i32 %t18)
  store i32 %t21, ptr %l15
  br label %bb9
bb9:
  %t22 = load i32, ptr %l15, !tbaa !23
  store i32 %t22, ptr %l3, !tbaa !23
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load i32, ptr %l3, !tbaa !23
  %t27 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t23, i32 %t24)
  store i32 %t27, ptr %l18
  br label %bb10
bb10:
  %t28 = load i32, ptr %l18, !range !{i32 0, i32 33}
  %t30 = trunc i64 19 to i32
  %t31 = icmp eq i32 %t28, %t30
  br i1 %t31, label %bb11, label %bb12
bb11:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t34 = load i32, ptr %l3, !tbaa !23
  %t37 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t33, i32 %t34)
  store i32 %t37, ptr %l24
  br label %bb13
bb12:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb14
bb13:
  %t38 = load i32, ptr %l24, !tbaa !23
  %t39 = icmp eq i32 %t38, 0
  store i1 %t39, ptr %l21, !tbaa !21
  br label %bb14
bb14:
  %t41 = load i1, ptr %l21, !tbaa !21
  br i1 %t41, label %bb15, label %bb16
bb15:
  %t42 = load ptr, ptr %l0, !tbaa !29
  store ptr %t42, ptr %l27, !tbaa !29
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t47 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t43, i32 %a1)
  store i32 %t47, ptr %l30
  br label %bb17
bb16:
  store i1 false, ptr %l26, !tbaa !21
  br label %bb19
bb17:
  %t48 = load ptr, ptr %l27, !tbaa !29
  %t49 = load i32, ptr %l30, !tbaa !23
  %t50 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eEnds(ptr %v0, ptr %t48, i32 %t49)
  store i1 %t50, ptr %l31
  br label %bb18
bb18:
  %t51 = load i1, ptr %l31, !tbaa !21
  store i1 %t51, ptr %l26, !tbaa !21
  br label %bb19
bb19:
  %t52 = load i1, ptr %l26, !tbaa !21
  %t53 = xor i1 %t52, true
  store i1 %t53, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i64 %a5, i1 %a6, i32 %a7, i64 %a8) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i64
  %l6 = alloca i1
  %l7 = alloca i32
  %l8 = alloca i64
  %l9 = alloca i32
  %l11 = alloca i32
  %l12 = alloca i32
  %l13 = alloca i32
  %l16 = alloca i32
  %l19 = alloca i32
  %l24 = alloca i32
  %l26 = alloca i64
  %l32 = alloca ptr
  %l45 = alloca %"compiler/types:data"
  %l48 = alloca i32
  %l51 = alloca i32
  %l54 = alloca i32
  %l57 = alloca i1
  %l60 = alloca i1
  %l64 = alloca i1
  %l69 = alloca ptr
  %l71 = alloca i64
  %l79 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  store i32 %a3, ptr %l3
  store i32 %a4, ptr %l4
  store i64 %a5, ptr %l5
  store i1 %a6, ptr %l6
  store i32 %a7, ptr %l7
  store i64 %a8, ptr %l8
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2edeepest(ptr %v0, ptr %t1, i32 %t2)
  store i32 %t5, ptr %l16
  br label %bb1
bb1:
  %t6 = load i32, ptr %l16, !tbaa !23
  store i32 %t6, ptr %l9, !tbaa !23
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i32, ptr %l2, !tbaa !23
  %t11 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2edepthOf(ptr %v0, ptr %t7, i32 %t8)
  store i32 %t11, ptr %l19
  br label %bb2
bb2:
  %t12 = load i32, ptr %l9, !tbaa !23
  %t13 = load i32, ptr %l19, !tbaa !23
  %t15 = icmp sgt i32 %t13, %t12
  br i1 %t15, label %bb3, label %bb4
bb3:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load i32, ptr %l2, !tbaa !23
  %t21 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2edepthOf(ptr %v0, ptr %t17, i32 %t18)
  store i32 %t21, ptr %l24
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t22 = load i32, ptr %l24, !tbaa !23
  store i32 %t22, ptr %l9, !tbaa !23
  br label %bb6
bb6:
  %t23 = load i1, ptr %l6, !tbaa !21
  br i1 %t23, label %bb7, label %bb8
bb7:
  %t25 = load i64, ptr @G_2ecompiler_2ftypes_2eNullable, !tbaa !24
  store i64 %t25, ptr %l26, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb9
bb9:
  %t27 = load i32, ptr %l7, !tbaa !23
  %t29 = sext i32 %t27 to i64
  %t31 = shl i64 %t29, 8
  %t32 = load i64, ptr %l26, !tbaa !24
  %t34 = or i64 %t32, %t31
  %t36 = load ptr, ptr %l0, !tbaa !29
  store ptr %t36, ptr %l32, !tbaa !29
  %t37 = load i32, ptr %l1, !tbaa !23
  %t39 = sext i32 %t37 to i64
  %t40 = load i32, ptr %l2, !tbaa !23
  %t42 = sext i32 %t40 to i64
  %t43 = load i32, ptr %l3, !tbaa !23
  %t45 = sext i32 %t43 to i64
  %t46 = load i32, ptr %l4, !tbaa !23
  %t48 = sext i32 %t46 to i64
  %t49 = load i64, ptr %l5, !tbaa !24
  %t51 = load i64, ptr %l8, !tbaa !24
  %t60 = call %"compiler/types:data" @compiler_2ftypes_3adata_2ector(ptr %s0, i32 21, i64 %t39, i64 %t42, i64 %t45, i64 %t48, i64 %t49, i64 %t34, i64 %t51)
  store %"compiler/types:data" %t60, ptr %l45
  br label %bb10
bb10:
  %t61 = load i32, ptr %l9, !tbaa !23
  %t63 = add i32 %t61, 1
  %t64 = load ptr, ptr %l32, !tbaa !29
  %t65 = load %"compiler/types:data", ptr %l45
  %t67 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eintern(ptr %v0, ptr %t64, %"compiler/types:data" %t65, i32 %t63)
  store i32 %t67, ptr %l48
  br label %bb11
bb11:
  %t68 = load i32, ptr %l48, !tbaa !23
  store i32 %t68, ptr %l11, !tbaa !23
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load i32, ptr %l1, !tbaa !23
  %t73 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlainList(ptr %v0, ptr %t69, i32 %t70)
  store i32 %t73, ptr %l51
  br label %bb12
bb12:
  %t74 = load i32, ptr %l51, !tbaa !23
  store i32 %t74, ptr %l12, !tbaa !23
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load i32, ptr %l2, !tbaa !23
  %t79 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t75, i32 %t76)
  store i32 %t79, ptr %l54
  br label %bb13
bb13:
  %t80 = load i32, ptr %l54, !tbaa !23
  store i32 %t80, ptr %l13, !tbaa !23
  %t81 = load i32, ptr %l4, !tbaa !23
  %t83 = icmp ne i32 %t81, 0
  br i1 %t83, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l57, !tbaa !21
  br label %bb16
bb15:
  %t85 = load i64, ptr %l5, !tbaa !24
  %t87 = icmp ne i64 %t85, 0
  store i1 %t87, ptr %l57, !tbaa !21
  br label %bb16
bb16:
  %t89 = load i1, ptr %l57, !tbaa !21
  br i1 %t89, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l60, !tbaa !21
  br label %bb19
bb18:
  %t90 = load i32, ptr %l12, !tbaa !23
  %t91 = load i32, ptr %l1, !tbaa !23
  %t94 = icmp ne i32 %t90, %t91
  store i1 %t94, ptr %l60, !tbaa !21
  br label %bb19
bb19:
  %t96 = load i1, ptr %l60, !tbaa !21
  br i1 %t96, label %bb20, label %bb21
bb20:
  store i1 true, ptr %l64, !tbaa !21
  br label %bb22
bb21:
  %t97 = load i32, ptr %l13, !tbaa !23
  %t98 = load i32, ptr %l2, !tbaa !23
  %t101 = icmp ne i32 %t97, %t98
  store i1 %t101, ptr %l64, !tbaa !21
  br label %bb22
bb22:
  %t103 = load i1, ptr %l64, !tbaa !21
  br i1 %t103, label %bb23, label %bb24
bb23:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/types:Table", ptr %t104, i32 0, i32 27
  store ptr %t106, ptr %l69, !tbaa !29
  %t107 = load i32, ptr %l11, !tbaa !23
  %t109 = sext i32 %t107 to i64
  store i64 %t109, ptr %l71, !tbaa !24
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t111 = load i32, ptr %l12, !tbaa !23
  %t112 = load i32, ptr %l13, !tbaa !23
  %t113 = load i32, ptr %l3, !tbaa !23
  %t114 = load i1, ptr %l6, !tbaa !21
  %t115 = load i32, ptr %l7, !tbaa !23
  %t116 = load i64, ptr %l8, !tbaa !24
  %t124 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t110, i32 %t111, i32 %t112, i32 %t113, i32 0, i64 0, i1 %t114, i32 %t115, i64 %t116)
  store i32 %t124, ptr %l79
  br label %bb25
bb24:
  br label %bb27
bb25:
  %t125 = load ptr, ptr %l69, !tbaa !29
  %t126 = load i64, ptr %l71, !tbaa !24
  %t127 = load i32, ptr %l79, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eSetAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t125, i64 %t126, i32 %t127)
  br label %bb26
bb26:
  br label %bb27
bb27:
  %t128 = load i32, ptr %l11, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t128, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncTag(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i32
  %l7 = alloca i32
  %l10 = alloca %"compiler/types:data"
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t1, i32 %t2)
  store i32 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t8 = trunc i64 21 to i32
  %t9 = icmp eq i32 %t6, %t8
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i32, ptr %l1, !tbaa !23
  %t15 = call %"compiler/types:data" @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eat(ptr %v0, ptr %t11, i32 %t12)
  store %"compiler/types:data" %t15, ptr %l10
  br label %bb4
bb3:
  %t16 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t16, ptr %l7, !tbaa !23
  br label %bb5
bb4:
  %t18 = getelementptr %"compiler/types:data", ptr %l10, i32 0, i32 6
  %t19 = load i64, ptr %t18, !tbaa !24
  %t21 = ashr i64 %t19, 8
  %t23 = trunc i64 %t21 to i32
  store i32 %t23, ptr %l7, !tbaa !23
  br label %bb5
bb5:
  %t26 = load i32, ptr %l7, !tbaa !23
  store i32 %t26, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l4 = alloca %"compiler/types:body"
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call %"compiler/types:body" @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ebodyOf(ptr %v0, ptr %a0, i32 %a1)
  store %"compiler/types:body" %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = getelementptr %"compiler/types:body", ptr %l4, i32 0, i32 4
  %t7 = load i1, ptr %t6, !tbaa !21
  store i1 %t7, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasPayload(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l8 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %a0, i32 %a1)
  store { i64, ptr } %t5, ptr %l8
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t6, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t7 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  store i64 %t9, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t11 = load i64, ptr %l3, !tbaa !24
  %t12 = load i64, ptr %l4, !tbaa !24
  %t15 = icmp slt i64 %t11, %t12
  %t17 = xor i1 %t15, true
  br i1 %t17, label %bb3, label %bb4
bb3:
  br label %bb10
bb4:
  br label %bb5
bb5:
  %t19 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t19, ptr %l15, !tbaa !27
  %t20 = load i64, ptr %l3, !tbaa !24
  %t22 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = getelementptr i32, ptr %t23, i64 %t20
  %t25 = load i32, ptr %t24, !tbaa !33
  %t29 = icmp ne i32 %t25, 0
  br i1 %t29, label %bb6, label %bb7
bb6:
  store i1 true, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t32 = load i64, ptr %l3, !tbaa !24
  %t34 = add i64 %t32, 1
  store i64 %t34, ptr %l3, !tbaa !24
  br label %bb2
bb10:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca i8
  %l4 = alloca i1
  %l5 = alloca i1
  %l6 = alloca i32
  %l9 = alloca i32
  %l15 = alloca i1
  %l16 = alloca i1
  %l17 = alloca ptr
  %l20 = alloca i32
  %l21 = alloca i1
  %l24 = alloca i1
  %l28 = alloca i1
  %l31 = alloca i1
  %l34 = alloca i1
  %l41 = alloca i1
  %l45 = alloca i1
  %l49 = alloca i1
  %l53 = alloca i1
  %l60 = alloca i1
  %l63 = alloca i1
  %l68 = alloca i8
  %l80 = alloca ptr
  %l83 = alloca i32
  %l84 = alloca i32
  %l87 = alloca ptr
  %l90 = alloca i32
  %l91 = alloca i1
  %l94 = alloca ptr
  %l97 = alloca i32
  %l98 = alloca i1
  %l101 = alloca ptr
  %l104 = alloca i32
  %l105 = alloca i1
  %l108 = alloca ptr
  %l111 = alloca i32
  %l112 = alloca i1
  %l113 = alloca i1
  %l114 = alloca ptr
  %l117 = alloca i32
  %l118 = alloca i1
  %l121 = alloca ptr
  %l124 = alloca i32
  %l125 = alloca i1
  %l128 = alloca ptr
  %l131 = alloca i32
  %l132 = alloca i1
  %l135 = alloca ptr
  %l138 = alloca i32
  %l139 = alloca i1
  %l140 = alloca ptr
  %l141 = alloca i32
  %l144 = alloca i8
  %l146 = alloca i8
  %l147 = alloca ptr
  %l150 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t1, i32 %t2)
  store i32 %t5, ptr %l9
  br label %bb1
bb1:
  %t6 = load i32, ptr %l9, !range !{i32 0, i32 33}
  store i32 %t6, ptr %l2
  %t7 = load i32, ptr %l2, !range !{i32 0, i32 33}
  %t9 = trunc i64 32 to i32
  %t10 = icmp eq i32 %t7, %t9
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/types:Table", ptr %t12, i32 0, i32 19
  %t15 = load i32, ptr %l1, !tbaa !23
  %t18 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20compile_H5a37a20f375ed653adc00b592f5745cf(ptr %v0, ptr %t14, i32 %t15)
  store i1 %t18, ptr %l15
  br label %bb4
bb3:
  br label %bb10
bb4:
  %t19 = load i1, ptr %l15, !tbaa !21
  br i1 %t19, label %bb5, label %bb6
bb5:
  %t20 = load ptr, ptr %l0, !tbaa !29
  store ptr %t20, ptr %l17, !tbaa !29
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load i32, ptr %l1, !tbaa !23
  %t25 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t21, i32 %t22)
  store i32 %t25, ptr %l20
  br label %bb7
bb6:
  store i1 false, ptr %l16, !tbaa !21
  br label %bb9
bb7:
  %t26 = load ptr, ptr %l17, !tbaa !29
  %t27 = load i32, ptr %l20, !tbaa !23
  %t28 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %t26, i32 %t27)
  store i1 %t28, ptr %l21
  br label %bb8
bb8:
  %t29 = load i1, ptr %l21, !tbaa !21
  store i1 %t29, ptr %l16, !tbaa !21
  br label %bb9
bb9:
  %t30 = load i1, ptr %l16, !tbaa !21
  store i1 %t30, ptr %rv
  br label %ret
bb10:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load i32, ptr %l1, !tbaa !23
  %t35 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eForeignRef(ptr %v0, ptr %t31, i32 %t32)
  store i1 %t35, ptr %l24
  br label %bb11
bb11:
  %t36 = load i1, ptr %l24, !tbaa !21
  br i1 %t36, label %bb12, label %bb13
bb12:
  store i1 false, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t38 = load i32, ptr %l2, !range !{i32 0, i32 33}
  %t40 = trunc i64 20 to i32
  %t41 = icmp eq i32 %t38, %t40
  br i1 %t41, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l28, !tbaa !21
  br label %bb17
bb16:
  %t43 = load i32, ptr %l2, !range !{i32 0, i32 33}
  %t45 = trunc i64 21 to i32
  %t46 = icmp eq i32 %t43, %t45
  store i1 %t46, ptr %l28, !tbaa !21
  br label %bb17
bb17:
  %t48 = load i1, ptr %l28, !tbaa !21
  br i1 %t48, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l31, !tbaa !21
  br label %bb20
bb19:
  %t49 = load i32, ptr %l2, !range !{i32 0, i32 33}
  %t51 = trunc i64 25 to i32
  %t52 = icmp eq i32 %t49, %t51
  store i1 %t52, ptr %l31, !tbaa !21
  br label %bb20
bb20:
  %t54 = load i1, ptr %l31, !tbaa !21
  br i1 %t54, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l34, !tbaa !21
  br label %bb23
bb22:
  %t55 = load i32, ptr %l2, !range !{i32 0, i32 33}
  %t57 = trunc i64 29 to i32
  %t58 = icmp eq i32 %t55, %t57
  store i1 %t58, ptr %l34, !tbaa !21
  br label %bb23
bb23:
  %t60 = load i1, ptr %l34, !tbaa !21
  br i1 %t60, label %bb24, label %bb25
bb24:
  store i1 true, ptr %rv
  br label %ret
bb25:
  br label %bb26
bb26:
  %t62 = load i32, ptr %l2, !range !{i32 0, i32 33}
  %t64 = trunc i64 18 to i32
  %t65 = icmp eq i32 %t62, %t64
  %t67 = xor i1 %t65, true
  br i1 %t67, label %bb27, label %bb28
bb27:
  %t69 = load i32, ptr %l2, !range !{i32 0, i32 33}
  %t71 = trunc i64 19 to i32
  %t72 = icmp eq i32 %t69, %t71
  %t74 = xor i1 %t72, true
  store i1 %t74, ptr %l41, !tbaa !21
  br label %bb29
bb28:
  store i1 false, ptr %l41, !tbaa !21
  br label %bb29
bb29:
  %t76 = load i1, ptr %l41, !tbaa !21
  br i1 %t76, label %bb30, label %bb31
bb30:
  %t77 = load i32, ptr %l2, !range !{i32 0, i32 33}
  %t79 = trunc i64 22 to i32
  %t80 = icmp eq i32 %t77, %t79
  %t82 = xor i1 %t80, true
  store i1 %t82, ptr %l45, !tbaa !21
  br label %bb32
bb31:
  store i1 false, ptr %l45, !tbaa !21
  br label %bb32
bb32:
  %t84 = load i1, ptr %l45, !tbaa !21
  br i1 %t84, label %bb33, label %bb34
bb33:
  %t85 = load i32, ptr %l2, !range !{i32 0, i32 33}
  %t87 = trunc i64 23 to i32
  %t88 = icmp eq i32 %t85, %t87
  %t90 = xor i1 %t88, true
  store i1 %t90, ptr %l49, !tbaa !21
  br label %bb35
bb34:
  store i1 false, ptr %l49, !tbaa !21
  br label %bb35
bb35:
  %t92 = load i1, ptr %l49, !tbaa !21
  br i1 %t92, label %bb36, label %bb37
bb36:
  %t93 = load i32, ptr %l2, !range !{i32 0, i32 33}
  %t95 = trunc i64 24 to i32
  %t96 = icmp eq i32 %t93, %t95
  %t98 = xor i1 %t96, true
  store i1 %t98, ptr %l53, !tbaa !21
  br label %bb38
bb37:
  store i1 false, ptr %l53, !tbaa !21
  br label %bb38
bb38:
  %t100 = load i1, ptr %l53, !tbaa !21
  br i1 %t100, label %bb39, label %bb40
bb39:
  store i1 false, ptr %rv
  br label %ret
bb40:
  br label %bb41
bb41:
  %t102 = load i32, ptr %l2, !range !{i32 0, i32 33}
  %t104 = trunc i64 18 to i32
  %t105 = icmp eq i32 %t102, %t104
  br i1 %t105, label %bb42, label %bb43
bb42:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load i32, ptr %l1, !tbaa !23
  %t111 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %t107, i32 %t108)
  store i1 %t111, ptr %l63
  br label %bb44
bb43:
  store i1 false, ptr %l60, !tbaa !21
  br label %bb45
bb44:
  %t112 = load i1, ptr %l63, !tbaa !21
  %t113 = xor i1 %t112, true
  store i1 %t113, ptr %l60, !tbaa !21
  br label %bb45
bb45:
  %t115 = load i1, ptr %l60, !tbaa !21
  br i1 %t115, label %bb46, label %bb47
bb46:
  store i1 true, ptr %rv
  br label %ret
bb47:
  br label %bb48
bb48:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t118 = load i32, ptr %l1, !tbaa !23
  %t121 = call i8 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eholdsState(ptr %v0, ptr %t117, i32 %t118)
  store i8 %t121, ptr %l68
  br label %bb49
bb49:
  %t122 = load i8, ptr %l68, !tbaa !22
  store i8 %t122, ptr %l3, !tbaa !22
  %t123 = load i8, ptr %l3, !tbaa !22
  %t125 = icmp ne i8 %t123, 0
  br i1 %t125, label %bb50, label %bb51
bb50:
  %t127 = load i8, ptr %l3, !tbaa !22
  %t129 = icmp eq i8 %t127, 3
  store i1 %t129, ptr %rv
  br label %ret
bb51:
  br label %bb52
bb52:
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t132 = load i32, ptr %l1, !tbaa !23
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2esetHolds(ptr %v0, ptr %t131, i32 %t132, i8 1)
  br label %bb53
bb53:
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t137 = getelementptr %"compiler/types:Table", ptr %t135, i32 0, i32 35
  %t138 = load i1, ptr %t137, !tbaa !21
  store i1 %t138, ptr %l4, !tbaa !21
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t142 = getelementptr %"compiler/types:Table", ptr %t140, i32 0, i32 35
  store i1 false, ptr %t142, !tbaa !21
  store i1 false, ptr %l5, !tbaa !21
  %t143 = load i32, ptr %l2, !range !{i32 0, i32 33}
  %t145 = trunc i64 18 to i32
  %t146 = icmp eq i32 %t143, %t145
  br i1 %t146, label %bb54, label %bb55
bb54:
  br label %bb56
bb55:
  br label %bb82
bb56:
  %t148 = load ptr, ptr %l0, !tbaa !29
  store ptr %t148, ptr %l80, !tbaa !29
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t150 = load i32, ptr %l1, !tbaa !23
  %t153 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t149, i32 %t150)
  store i32 %t153, ptr %l83
  br label %bb57
bb57:
  %t154 = load ptr, ptr %l80, !tbaa !29
  %t155 = load i32, ptr %l83, !tbaa !23
  %t156 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t154, i32 %t155)
  store i32 %t156, ptr %l84
  br label %bb58
bb58:
  %t157 = load i32, ptr %l84, !range !{i32 0, i32 6}
  store i32 %t157, ptr %l6
  %t158 = load i32, ptr %l6, !range !{i32 0, i32 6}
  %t160 = trunc i64 0 to i32
  %t161 = icmp eq i32 %t158, %t160
  br i1 %t161, label %bb59, label %bb60
bb59:
  br label %bb61
bb60:
  br label %bb64
bb61:
  %t163 = load ptr, ptr %l0, !tbaa !29
  store ptr %t163, ptr %l87, !tbaa !29
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t165 = load i32, ptr %l1, !tbaa !23
  %t168 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t164, i32 %t165)
  store i32 %t168, ptr %l90
  br label %bb62
bb62:
  %t169 = load ptr, ptr %l87, !tbaa !29
  %t170 = load i32, ptr %l90, !tbaa !23
  %t171 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2elistHolds(ptr %v0, ptr %t169, i32 %t170, i1 false, i1 true)
  store i1 %t171, ptr %l91
  br label %bb63
bb63:
  %t172 = load i1, ptr %l91, !tbaa !21
  store i1 %t172, ptr %l5, !tbaa !21
  br label %bb81
bb64:
  %t173 = load i32, ptr %l6, !range !{i32 0, i32 6}
  %t175 = trunc i64 1 to i32
  %t176 = icmp eq i32 %t173, %t175
  br i1 %t176, label %bb65, label %bb66
bb65:
  br label %bb67
bb66:
  br label %bb70
bb67:
  %t178 = load ptr, ptr %l0, !tbaa !29
  store ptr %t178, ptr %l94, !tbaa !29
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t180 = load i32, ptr %l1, !tbaa !23
  %t183 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t179, i32 %t180)
  store i32 %t183, ptr %l97
  br label %bb68
bb68:
  %t184 = load ptr, ptr %l94, !tbaa !29
  %t185 = load i32, ptr %l97, !tbaa !23
  %t186 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2elistHolds(ptr %v0, ptr %t184, i32 %t185, i1 true, i1 true)
  store i1 %t186, ptr %l98
  br label %bb69
bb69:
  %t187 = load i1, ptr %l98, !tbaa !21
  store i1 %t187, ptr %l5, !tbaa !21
  br label %bb81
bb70:
  %t188 = load i32, ptr %l6, !range !{i32 0, i32 6}
  %t190 = trunc i64 4 to i32
  %t191 = icmp eq i32 %t188, %t190
  br i1 %t191, label %bb71, label %bb72
bb71:
  br label %bb73
bb72:
  br label %bb76
bb73:
  %t193 = load ptr, ptr %l0, !tbaa !29
  store ptr %t193, ptr %l101, !tbaa !29
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t195 = load i32, ptr %l1, !tbaa !23
  %t198 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t194, i32 %t195)
  store i32 %t198, ptr %l104
  br label %bb74
bb74:
  %t199 = load ptr, ptr %l101, !tbaa !29
  %t200 = load i32, ptr %l104, !tbaa !23
  %t201 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %t199, i32 %t200)
  store i1 %t201, ptr %l105
  br label %bb75
bb75:
  %t202 = load i1, ptr %l105, !tbaa !21
  store i1 %t202, ptr %l5, !tbaa !21
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
  call void @__olang_check_failed(ptr @olang_loc_d3e704bcd06f7d56_ed5a4209a5557c8a)
  unreachable
bb81:
  br label %bb116
bb82:
  %t203 = load i32, ptr %l2, !range !{i32 0, i32 33}
  %t205 = trunc i64 19 to i32
  %t206 = icmp eq i32 %t203, %t205
  br i1 %t206, label %bb83, label %bb84
bb83:
  br label %bb85
bb84:
  br label %bb93
bb85:
  %t208 = load ptr, ptr %l0, !tbaa !29
  store ptr %t208, ptr %l108, !tbaa !29
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t210 = load i32, ptr %l1, !tbaa !23
  %t213 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t209, i32 %t210)
  store i32 %t213, ptr %l111
  br label %bb86
bb86:
  %t214 = load ptr, ptr %l108, !tbaa !29
  %t215 = load i32, ptr %l111, !tbaa !23
  %t216 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %t214, i32 %t215)
  store i1 %t216, ptr %l112
  br label %bb87
bb87:
  %t217 = load i1, ptr %l112, !tbaa !21
  br i1 %t217, label %bb88, label %bb89
bb88:
  store i1 true, ptr %l113, !tbaa !21
  br label %bb92
bb89:
  %t218 = load ptr, ptr %l0, !tbaa !29
  store ptr %t218, ptr %l114, !tbaa !29
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t220 = load i32, ptr %l1, !tbaa !23
  %t223 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t219, i32 %t220)
  store i32 %t223, ptr %l117
  br label %bb90
bb90:
  %t224 = load ptr, ptr %l114, !tbaa !29
  %t225 = load i32, ptr %l117, !tbaa !23
  %t226 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnedPart(ptr %v0, ptr %t224, i32 %t225)
  store i1 %t226, ptr %l118
  br label %bb91
bb91:
  %t227 = load i1, ptr %l118, !tbaa !21
  store i1 %t227, ptr %l113, !tbaa !21
  br label %bb92
bb92:
  %t228 = load i1, ptr %l113, !tbaa !21
  store i1 %t228, ptr %l5, !tbaa !21
  br label %bb116
bb93:
  %t229 = load i32, ptr %l2, !range !{i32 0, i32 33}
  %t231 = trunc i64 22 to i32
  %t232 = icmp eq i32 %t229, %t231
  br i1 %t232, label %bb94, label %bb95
bb94:
  br label %bb96
bb95:
  br label %bb99
bb96:
  %t234 = load ptr, ptr %l0, !tbaa !29
  store ptr %t234, ptr %l121, !tbaa !29
  %t235 = load ptr, ptr %l0, !tbaa !29
  %t236 = load i32, ptr %l1, !tbaa !23
  %t239 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t235, i32 %t236)
  store i32 %t239, ptr %l124
  br label %bb97
bb97:
  %t240 = load ptr, ptr %l121, !tbaa !29
  %t241 = load i32, ptr %l124, !tbaa !23
  %t242 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2elistHolds(ptr %v0, ptr %t240, i32 %t241, i1 false, i1 false)
  store i1 %t242, ptr %l125
  br label %bb98
bb98:
  %t243 = load i1, ptr %l125, !tbaa !21
  store i1 %t243, ptr %l5, !tbaa !21
  br label %bb116
bb99:
  %t244 = load i32, ptr %l2, !range !{i32 0, i32 33}
  %t246 = trunc i64 23 to i32
  %t247 = icmp eq i32 %t244, %t246
  br i1 %t247, label %bb100, label %bb101
bb100:
  br label %bb102
bb101:
  br label %bb105
bb102:
  %t249 = load ptr, ptr %l0, !tbaa !29
  store ptr %t249, ptr %l128, !tbaa !29
  %t250 = load ptr, ptr %l0, !tbaa !29
  %t251 = load i32, ptr %l1, !tbaa !23
  %t254 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t250, i32 %t251)
  store i32 %t254, ptr %l131
  br label %bb103
bb103:
  %t255 = load ptr, ptr %l128, !tbaa !29
  %t256 = load i32, ptr %l131, !tbaa !23
  %t257 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2elistHolds(ptr %v0, ptr %t255, i32 %t256, i1 false, i1 true)
  store i1 %t257, ptr %l132
  br label %bb104
bb104:
  %t258 = load i1, ptr %l132, !tbaa !21
  store i1 %t258, ptr %l5, !tbaa !21
  br label %bb116
bb105:
  %t259 = load i32, ptr %l2, !range !{i32 0, i32 33}
  %t261 = trunc i64 24 to i32
  %t262 = icmp eq i32 %t259, %t261
  br i1 %t262, label %bb106, label %bb107
bb106:
  br label %bb108
bb107:
  br label %bb111
bb108:
  %t264 = load ptr, ptr %l0, !tbaa !29
  store ptr %t264, ptr %l135, !tbaa !29
  %t265 = load ptr, ptr %l0, !tbaa !29
  %t266 = load i32, ptr %l1, !tbaa !23
  %t269 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %v0, ptr %t265, i32 %t266)
  store i32 %t269, ptr %l138
  br label %bb109
bb109:
  %t270 = load ptr, ptr %l135, !tbaa !29
  %t271 = load i32, ptr %l138, !tbaa !23
  %t272 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2elistHolds(ptr %v0, ptr %t270, i32 %t271, i1 true, i1 true)
  store i1 %t272, ptr %l139
  br label %bb110
bb110:
  %t273 = load i1, ptr %l139, !tbaa !21
  store i1 %t273, ptr %l5, !tbaa !21
  br label %bb116
bb111:
  br i1 true, label %bb112, label %bb113
bb112:
  br label %bb114
bb113:
  br label %bb115
bb114:
  br label %bb116
bb115:
  call void @__olang_check_failed(ptr @olang_loc_b4be3b7b6cfde177_2b1bada5393bc0cb)
  unreachable
bb116:
  %t274 = load ptr, ptr %l0, !tbaa !29
  store ptr %t274, ptr %l140, !tbaa !29
  %t275 = load i32, ptr %l1, !tbaa !23
  store i32 %t275, ptr %l141, !tbaa !23
  %t276 = load ptr, ptr %l0, !tbaa !29
  %t278 = getelementptr %"compiler/types:Table", ptr %t276, i32 0, i32 35
  %t279 = load i1, ptr %t278, !tbaa !21
  br i1 %t279, label %bb117, label %bb118
bb117:
  store i8 0, ptr %l144, !tbaa !22
  br label %bb122
bb118:
  %t281 = load i1, ptr %l5, !tbaa !21
  br i1 %t281, label %bb119, label %bb120
bb119:
  store i8 3, ptr %l146, !tbaa !22
  br label %bb121
bb120:
  store i8 2, ptr %l146, !tbaa !22
  br label %bb121
bb121:
  %t283 = load i8, ptr %l146, !tbaa !22
  store i8 %t283, ptr %l144, !tbaa !22
  br label %bb122
bb122:
  %t284 = load ptr, ptr %l140, !tbaa !29
  %t285 = load i32, ptr %l141, !tbaa !23
  %t286 = load i8, ptr %l144, !tbaa !22
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2esetHolds(ptr %v0, ptr %t284, i32 %t285, i8 %t286)
  br label %bb123
bb123:
  %t287 = load ptr, ptr %l0, !tbaa !29
  store ptr %t287, ptr %l147, !tbaa !29
  %t288 = load ptr, ptr %l0, !tbaa !29
  %t290 = getelementptr %"compiler/types:Table", ptr %t288, i32 0, i32 35
  %t291 = load i1, ptr %t290, !tbaa !21
  br i1 %t291, label %bb124, label %bb125
bb124:
  store i1 true, ptr %l150, !tbaa !21
  br label %bb126
bb125:
  %t293 = load i1, ptr %l4, !tbaa !21
  store i1 %t293, ptr %l150, !tbaa !21
  br label %bb126
bb126:
  %t295 = load i1, ptr %l150, !tbaa !21
  %t296 = load ptr, ptr %l147, !tbaa !29
  %t297 = getelementptr %"compiler/types:Table", ptr %t296, i32 0, i32 35
  store i1 %t295, ptr %t297, !tbaa !21
  %t298 = load i1, ptr %l5, !tbaa !21
  store i1 %t298, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsAny(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i32
  %l7 = alloca i1
  %l8 = alloca ptr
  %l11 = alloca i32
  %l12 = alloca i32
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t1, i32 %t2)
  store i32 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t8 = trunc i64 20 to i32
  %t9 = icmp eq i32 %t6, %t8
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  store ptr %t11, ptr %l8, !tbaa !29
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load i32, ptr %l1, !tbaa !23
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t16, ptr %l11
  br label %bb4
bb3:
  store i1 false, ptr %l7, !tbaa !21
  br label %bb6
bb4:
  %t17 = load ptr, ptr %l8, !tbaa !29
  %t18 = load i32, ptr %l11, !tbaa !23
  %t19 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t17, i32 %t18)
  store i32 %t19, ptr %l12
  br label %bb5
bb5:
  %t20 = load i32, ptr %l12, !range !{i32 0, i32 33}
  %t22 = trunc i64 29 to i32
  %t23 = icmp eq i32 %t20, %t22
  store i1 %t23, ptr %l7, !tbaa !21
  br label %bb6
bb6:
  %t25 = load i1, ptr %l7, !tbaa !21
  store i1 %t25, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsErrVal(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l4 = alloca i32
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
  store i32 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t8 = trunc i64 32 to i32
  %t9 = icmp eq i32 %t6, %t8
  store i1 %t9, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l1, !tbaa !23
  %t3 = icmp sge i32 %t1, 11
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i32, ptr %l1, !tbaa !23
  %t7 = icmp sle i32 %t5, 14
  store i1 %t7, ptr %l4, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb3
bb3:
  %t9 = load i1, ptr %l4, !tbaa !21
  store i1 %t9, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l6 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/types:Table", ptr %a0, i32 0, i32 5
  %t6 = sext i32 %a1 to i64
  %t9 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2ftypes_3aTypeId_3e_2_H61b120fbdcc010be1bedf2507e848f7c(ptr %v0, ptr %v1, ptr %t3, i64 %t6)
  store { i64, ptr } %t9, ptr %l6
  br label %bb1
bb1:
  %t10 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t10, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l4 = alloca i64
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eB(ptr %v0, ptr %a0, i32 %a1)
  store i64 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i64, ptr %l4, !tbaa !24
  %t7 = trunc i64 %t6 to i32
  store i32 %t7, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l14 = alloca i32
  %l18 = alloca i32
  %l19 = alloca i32
  %l24 = alloca i64
  %l33 = alloca i64
  %l36 = alloca i64
  %l54 = alloca { i64, ptr }
  %l56 = alloca { i64, ptr }
  %l63 = alloca i64
  %rv = alloca i32
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
  store i32 0, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/types:Table", ptr %t8, i32 0, i32 6
  %t11 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t14 = call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cArray_3ccompiler_2ftypes_3aTypeId_3e_2_H0a665c2b4d7e237317fbcb46f7b513e7(ptr %v0, ptr %v1, ptr %t10, { i64, ptr } %t11)
  %t15 = extractvalue { i32, i32 } %t14, 1
  %t16 = extractvalue { i32, i32 } %t14, 0
  store i32 %t16, ptr %l19
  %t17 = icmp ne i32 %t16, 0
  br i1 %t17, label %bb5, label %ok.18, !prof !99
ok.18:
  store i32 %t15, ptr %l18
  br label %bb4
bb4:
  %t19 = load i32, ptr %l18, !tbaa !23
  store i32 %t19, ptr %l14, !tbaa !23
  br label %bb7
bb5:
  br label %bb6
bb6:
  store i32 -1, ptr %l14, !tbaa !23
  br label %bb7
bb7:
  %t20 = load i32, ptr %l14, !tbaa !23
  store i32 %t20, ptr %l2, !tbaa !23
  %t21 = load i32, ptr %l2, !tbaa !23
  %t23 = icmp sge i32 %t21, 0
  br i1 %t23, label %bb8, label %bb9
bb8:
  %t25 = load i32, ptr %l2, !tbaa !23
  store i32 %t25, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t27 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t27, 0
  store i64 %t29, ptr %l24, !tbaa !24
  %t30 = load i64, ptr %l24, !tbaa !24
  %t31 = icmp sge i64 %t30, 0
  br i1 %t31, label %bb11, label %bb12
bb11:
  %t33 = load i64, ptr %l24, !tbaa !24
  %t34 = icmp sle i64 %t33, 2305843009213693951
  br i1 %t34, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_aca21d9f8d110f21_d35bd7e73631d7ed)
  unreachable
bb13:
  %t36 = load i64, ptr %l24, !tbaa !24
  %t37 = mul i64 %t36, 4
  %t38 = call ptr @__olang_scope_alloc_zeroed(ptr %v0, i64 %t37)
  %t39 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t40 = insertvalue { i64, ptr } %t39, ptr %t38, 1
  store { i64, ptr } %t40, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t42 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t44 = extractvalue { i64, ptr } %t42, 0
  store i64 %t44, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t46 = load i64, ptr %l5, !tbaa !24
  %t47 = load i64, ptr %l4, !tbaa !24
  %t50 = icmp sgt i64 %t46, %t47
  br i1 %t50, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_aca21d9f8d110f21_d35bd7e73631d7ed)
  unreachable
bb15:
  %t52 = load i64, ptr %l6, !tbaa !24
  %t54 = icmp sgt i64 %t52, 0
  br i1 %t54, label %bb17, label %bb18
bb16:
  store i64 0, ptr %l33, !tbaa !24
  br label %bb20
bb17:
  %t56 = load i64, ptr %l5, !tbaa !24
  %t57 = load i64, ptr %l4, !tbaa !24
  %t60 = sub i64 %t56, %t57
  %t61 = load i64, ptr %l6, !tbaa !24
  %t64 = add i64 %t60, %t61
  %t66 = sub i64 %t64, 1
  %t67 = load i64, ptr %l6, !tbaa !24
  %t70 = sdiv i64 %t66, %t67
  store i64 %t70, ptr %l36, !tbaa !24
  br label %bb19
bb18:
  store i64 0, ptr %l36, !tbaa !24
  br label %bb19
bb19:
  %t72 = load i64, ptr %l36, !tbaa !24
  store i64 %t72, ptr %l33, !tbaa !24
  br label %bb20
bb20:
  %t73 = load i64, ptr %l33, !tbaa !24
  store i64 %t73, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb21
bb21:
  %t74 = load i64, ptr %l8, !tbaa !24
  %t75 = load i64, ptr %l7, !tbaa !24
  %t78 = icmp slt i64 %t74, %t75
  %t80 = xor i1 %t78, true
  br i1 %t80, label %bb22, label %bb23
bb22:
  br label %bb26
bb23:
  br label %bb24
bb24:
  %t82 = load i64, ptr %l4, !tbaa !24
  %t83 = load i64, ptr %l8, !tbaa !24
  %t84 = load i64, ptr %l6, !tbaa !24
  %t87 = mul i64 %t83, %t84
  %t90 = add i64 %t82, %t87
  store i64 %t90, ptr %l9, !tbaa !24
  %t92 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t92, ptr %l54, !tbaa !27
  %t93 = load i64, ptr %l9, !tbaa !24
  %t94 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t94, ptr %l56, !tbaa !27
  %t95 = load i64, ptr %l9, !tbaa !24
  %t97 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !27
  %t99 = getelementptr i32, ptr %t98, i64 %t95
  %t100 = load i32, ptr %t99, !tbaa !33
  %t103 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t104 = load ptr, ptr %t103, !tbaa !27
  %t105 = getelementptr i32, ptr %t104, i64 %t93
  store i32 %t100, ptr %t105, !tbaa !33
  br label %bb25
bb25:
  %t106 = load i64, ptr %l8, !tbaa !24
  %t108 = add i64 %t106, 1
  store i64 %t108, ptr %l8, !tbaa !24
  br label %bb21
bb26:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/types:Table", ptr %t110, i32 0, i32 5
  %t114 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2ftypes_3aTypeId_3e_2_H2b3955a94f91e668ac3bcd9fa517bb83(ptr %v0, ptr %t112)
  store i64 %t114, ptr %l63
  br label %bb27
bb27:
  %t115 = load i64, ptr %l63, !tbaa !24
  %t116 = trunc i64 %t115 to i32
  store i32 %t116, ptr %l2, !tbaa !23
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr %"compiler/types:Table", ptr %t119, i32 0, i32 5
  %t122 = load { i64, ptr }, ptr %l3, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2ftypes_3aTypeId_3e_2_H5d6217f1de626e258ec0008385e9bf9b(ptr %v0, ptr %v0, ptr %t121, { i64, ptr } %t122)
  br label %bb28
bb28:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = getelementptr %"compiler/types:Table", ptr %t125, i32 0, i32 6
  %t128 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t129 = load i32, ptr %l2, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cArray_3ccompiler_2ftypes_3aTypeId_3e_2_He4e7022cb78ea4ca3380b08f831d7938(ptr %v0, ptr %v0, ptr %t127, { i64, ptr } %t128, i32 %t129)
  br label %bb29
bb29:
  %t133 = load i32, ptr %l2, !tbaa !23
  store i32 %t133, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eMarkCopy(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/types:Table", ptr %a0, i32 0, i32 37
  %t6 = sext i32 %a1 to i64
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t3, i64 %t6, i1 true)
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eMarkUnique(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/types:Table", ptr %a0, i32 0, i32 38
  %t6 = sext i32 %a1 to i64
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t3, i64 %t6, i1 true)
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eMayBorrow(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l10 = alloca i64
  %l23 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %s3 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePromiseWords(ptr %v0, ptr %t1, i32 %t2)
  store i64 %t5, ptr %l10
  br label %bb1
bb1:
  %t6 = load i64, ptr %l10, !tbaa !24
  store i64 %t6, ptr %l3, !tbaa !24
  %t7 = load i64, ptr %l3, !tbaa !24
  %t8 = load i64, ptr @G_2ecompiler_2ftypes_2ePromNoborrow, !tbaa !24
  %t11 = and i64 %t7, %t8
  %t13 = icmp ne i64 %t11, 0
  br i1 %t13, label %bb2, label %bb3
bb2:
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = load i64, ptr @G_2ecompiler_2ftypes_2ePromBorrows, !tbaa !24
  %t20 = and i64 %t16, %t17
  %t22 = icmp eq i64 %t20, 0
  br i1 %t22, label %bb5, label %bb6
bb5:
  store i1 true, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  store %olang.scope zeroinitializer, ptr %s3
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load i32, ptr %l1, !tbaa !23
  %t29 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBorrowsOf(ptr %v0, ptr %s3, ptr %t25, i32 %t26)
  store { i64, ptr } %t29, ptr %l23
  br label %bb8
bb8:
  %t30 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t30, 0
  %t32 = extractvalue { i64, ptr } %t30, 1
  %t33 = mul i64 %t31, 8
  %t34 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t33)
  call void @llvm.memcpy.p0.p0.i64(ptr %t34, ptr %t32, i64 %t33, i1 false)
  %t35 = insertvalue { i64, ptr } undef, i64 %t31, 0
  %t36 = insertvalue { i64, ptr } %t35, ptr %t34, 1
  store { i64, ptr } %t36, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t38 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t38, 0
  store i64 %t40, ptr %l6, !tbaa !24
  br label %bb9
bb9:
  %t42 = load i64, ptr %l5, !tbaa !24
  %t43 = load i64, ptr %l6, !tbaa !24
  %t46 = icmp slt i64 %t42, %t43
  %t48 = xor i1 %t46, true
  br i1 %t48, label %bb10, label %bb11
bb10:
  br label %bb17
bb11:
  br label %bb12
bb12:
  %t50 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t50, ptr %l31, !tbaa !27
  %t51 = load i64, ptr %l5, !tbaa !24
  %t53 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !27
  %t55 = getelementptr i64, ptr %t54, i64 %t51
  %t56 = load i64, ptr %t55, !tbaa !34
  %t62 = icmp eq i64 %t56, %a2
  br i1 %t62, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s3)
  store i1 true, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t65 = load i64, ptr %l5, !tbaa !24
  %t67 = add i64 %t65, 1
  store i64 %t67, ptr %l5, !tbaa !24
  br label %bb9
bb17:
  call void @__olang_scope_close(ptr %s3)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamesIdOf(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i32
  %l7 = alloca i64
  %l10 = alloca %"compiler/types:data"
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t1, i32 %t2)
  store i32 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t8 = trunc i64 21 to i32
  %t9 = icmp eq i32 %t6, %t8
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i32, ptr %l1, !tbaa !23
  %t15 = call %"compiler/types:data" @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eat(ptr %v0, ptr %t11, i32 %t12)
  store %"compiler/types:data" %t15, ptr %l10
  br label %bb4
bb3:
  store i64 0, ptr %l7, !tbaa !24
  br label %bb5
bb4:
  %t16 = getelementptr %"compiler/types:data", ptr %l10, i32 0, i32 5
  %t17 = load i64, ptr %t16, !tbaa !24
  store i64 %t17, ptr %l7, !tbaa !24
  br label %bb5
bb5:
  %t19 = load i64, ptr %l7, !tbaa !24
  store i64 %t19, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l4 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eneedsDrop(ptr %v0, ptr %a0, i32 %a1, i64 0)
  store i1 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i1, ptr %l4, !tbaa !21
  store i1 %t6, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNonNull(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i1
  %l9 = alloca i32
  %l12 = alloca ptr
  %l15 = alloca i32
  %l18 = alloca i32
  %l21 = alloca i32
  %l24 = alloca i32
  %l27 = alloca i64
  %l30 = alloca i32
  %l33 = alloca i64
  %l34 = alloca i32
  %l35 = alloca ptr
  %l38 = alloca i32
  %l41 = alloca i64
  %l45 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i1, ptr %l4, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load i32, ptr %l1, !tbaa !23
  store i32 %t9, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i32, ptr %l1, !tbaa !23
  %t15 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t11, i32 %t12)
  store i32 %t15, ptr %l9
  br label %bb5
bb5:
  %t16 = load i32, ptr %l9, !range !{i32 0, i32 33}
  %t18 = trunc i64 21 to i32
  %t19 = icmp eq i32 %t16, %t18
  br i1 %t19, label %bb6, label %bb7
bb6:
  %t21 = load ptr, ptr %l0, !tbaa !29
  store ptr %t21, ptr %l12, !tbaa !29
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load i32, ptr %l1, !tbaa !23
  %t26 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t22, i32 %t23)
  store i32 %t26, ptr %l15
  br label %bb8
bb7:
  br label %bb16
bb8:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load i32, ptr %l1, !tbaa !23
  %t31 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t27, i32 %t28)
  store i32 %t31, ptr %l18
  br label %bb9
bb9:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load i32, ptr %l1, !tbaa !23
  %t36 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t32, i32 %t33)
  store i32 %t36, ptr %l21
  br label %bb10
bb10:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load i32, ptr %l1, !tbaa !23
  %t41 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesOf(ptr %v0, ptr %t37, i32 %t38)
  store i32 %t41, ptr %l24
  br label %bb11
bb11:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load i32, ptr %l1, !tbaa !23
  %t46 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamesIdOf(ptr %v0, ptr %t42, i32 %t43)
  store i64 %t46, ptr %l27
  br label %bb12
bb12:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load i32, ptr %l1, !tbaa !23
  %t51 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncTag(ptr %v0, ptr %t47, i32 %t48)
  store i32 %t51, ptr %l30
  br label %bb13
bb13:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load i32, ptr %l1, !tbaa !23
  %t56 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePromisesOf(ptr %v0, ptr %t52, i32 %t53)
  store i64 %t56, ptr %l33
  br label %bb14
bb14:
  %t57 = load ptr, ptr %l12, !tbaa !29
  %t58 = load i32, ptr %l15, !tbaa !23
  %t59 = load i32, ptr %l18, !tbaa !23
  %t60 = load i32, ptr %l21, !tbaa !23
  %t61 = load i32, ptr %l24, !tbaa !23
  %t62 = load i64, ptr %l27, !tbaa !24
  %t63 = load i32, ptr %l30, !tbaa !23
  %t64 = load i64, ptr %l33, !tbaa !24
  %t65 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t57, i32 %t58, i32 %t59, i32 %t60, i32 %t61, i64 %t62, i1 false, i32 %t63, i64 %t64)
  store i32 %t65, ptr %l34
  br label %bb15
bb15:
  %t66 = load i32, ptr %l34, !tbaa !23
  store i32 %t66, ptr %rv
  br label %ret
bb16:
  %t67 = load ptr, ptr %l0, !tbaa !29
  store ptr %t67, ptr %l35, !tbaa !29
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load i32, ptr %l1, !tbaa !23
  %t72 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t68, i32 %t69)
  store i32 %t72, ptr %l38
  br label %bb17
bb17:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load i32, ptr %l1, !tbaa !23
  %t77 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t73, i32 %t74)
  store i64 %t77, ptr %l41
  br label %bb18
bb18:
  %t78 = load i64, ptr @G_2ecompiler_2ftypes_2eNullable, !tbaa !24
  %t80 = xor i64 %t78, -1
  %t81 = load i64, ptr %l41, !tbaa !24
  %t83 = and i64 %t81, %t80
  %t84 = load ptr, ptr %l35, !tbaa !29
  %t85 = load i32, ptr %l38, !tbaa !23
  %t87 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t84, i32 %t85, i64 %t83)
  store i32 %t87, ptr %l45
  br label %bb19
bb19:
  %t88 = load i32, ptr %l45, !tbaa !23
  store i32 %t88, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOffsets(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %lp3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l13 = alloca i32
  %l16 = alloca i1
  %l20 = alloca i1
  %l21 = alloca ptr
  %l24 = alloca i32
  %l25 = alloca { i64, ptr }
  %l26 = alloca ptr
  %l29 = alloca i32
  %l30 = alloca { i64, ptr }
  %l32 = alloca i64
  %l40 = alloca i64
  %l48 = alloca i64
  %l51 = alloca i64
  %l69 = alloca i64
  %l75 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t1, i32 %t2)
  store i32 %t5, ptr %l13
  br label %bb1
bb1:
  %t6 = load i32, ptr %l13, !range !{i32 0, i32 33}
  %t8 = trunc i64 32 to i32
  %t9 = icmp eq i32 %t6, %t8
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/types:Table", ptr %t11, i32 0, i32 19
  %t14 = load i32, ptr %l1, !tbaa !23
  %t17 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20compile_H5a37a20f375ed653adc00b592f5745cf(ptr %v0, ptr %t13, i32 %t14)
  store i1 %t17, ptr %l20
  br label %bb4
bb3:
  store i1 false, ptr %l16, !tbaa !21
  br label %bb5
bb4:
  %t18 = load i1, ptr %l20, !tbaa !21
  store i1 %t18, ptr %l16, !tbaa !21
  br label %bb5
bb5:
  %t19 = load i1, ptr %l16, !tbaa !21
  br i1 %t19, label %bb6, label %bb7
bb6:
  %t20 = load ptr, ptr %l0, !tbaa !29
  store ptr %t20, ptr %l21, !tbaa !29
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load i32, ptr %l1, !tbaa !23
  %t25 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t21, i32 %t22)
  store i32 %t25, ptr %l24
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t26 = load ptr, ptr %l21, !tbaa !29
  %t27 = load i32, ptr %l24, !tbaa !23
  %t28 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOffsets(ptr %v0, ptr %v1, ptr %t26, i32 %t27)
  store { i64, ptr } %t28, ptr %l25
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s0)
  %t29 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t29, ptr %rv
  br label %ret
bb10:
  %t30 = load ptr, ptr %l0, !tbaa !29
  store ptr %t30, ptr %l26, !tbaa !29
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load i32, ptr %l1, !tbaa !23
  %t35 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2efieldList(ptr %v0, ptr %t31, i32 %t32)
  store i32 %t35, ptr %l29
  br label %bb11
bb11:
  %t36 = load ptr, ptr %l26, !tbaa !29
  %t37 = load i32, ptr %l29, !tbaa !23
  %t38 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t36, i32 %t37)
  store { i64, ptr } %t38, ptr %l30
  br label %bb12
bb12:
  %t39 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t39, 0
  store i64 %t40, ptr %l2, !tbaa !24
  %t42 = load i64, ptr %l2, !tbaa !24
  store i64 %t42, ptr %l32, !tbaa !24
  %t43 = load i64, ptr %l32, !tbaa !24
  %t44 = icmp sge i64 %t43, 0
  br i1 %t44, label %bb13, label %bb14
bb13:
  %t46 = load i64, ptr %l32, !tbaa !24
  %t47 = icmp sle i64 %t46, 1152921504606846975
  br i1 %t47, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_ecef2c1188620c25_f6c5d2506e285511)
  unreachable
bb15:
  %t49 = load i64, ptr %l32, !tbaa !24
  %t50 = mul i64 %t49, 8
  %t51 = call ptr @__olang_scope_alloc_zeroed(ptr %v1, i64 %t50)
  %t52 = insertvalue { i64, ptr } undef, i64 %t49, 0
  %t53 = insertvalue { i64, ptr } %t52, ptr %t51, 1
  %t54 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t54, ptr %lp3
  %t56 = load ptr, ptr %lp3
  store { i64, ptr } %t53, ptr %t56, !tbaa !27
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/types:Table", ptr %t57, i32 0, i32 23
  %t60 = load i32, ptr %l1, !tbaa !23
  %t62 = sext i32 %t60 to i64
  %t65 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t59, i64 %t62)
  store i64 %t65, ptr %l40
  br label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_ecef2c1188620c25_f6c5d2506e285511)
  unreachable
bb17:
  %t66 = load i64, ptr %l40, !tbaa !24
  store i64 %t66, ptr %l4, !tbaa !24
  %t67 = load i64, ptr %l4, !tbaa !24
  %t69 = icmp slt i64 %t67, 0
  br i1 %t69, label %bb18, label %bb19
bb18:
  %t71 = load ptr, ptr %lp3
  %t72 = load { i64, ptr }, ptr %t71, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t72, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  store i64 0, ptr %l5, !tbaa !24
  %t74 = load i64, ptr %l2, !tbaa !24
  store i64 %t74, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t76 = load i64, ptr %l6, !tbaa !24
  %t77 = load i64, ptr %l5, !tbaa !24
  %t80 = icmp sgt i64 %t76, %t77
  br i1 %t80, label %bb21, label %bb22
bb21:
  %t82 = load i64, ptr %l7, !tbaa !24
  %t84 = icmp sgt i64 %t82, 0
  br i1 %t84, label %bb23, label %bb24
bb22:
  store i64 0, ptr %l48, !tbaa !24
  br label %bb26
bb23:
  %t86 = load i64, ptr %l6, !tbaa !24
  %t87 = load i64, ptr %l5, !tbaa !24
  %t90 = sub i64 %t86, %t87
  %t91 = load i64, ptr %l7, !tbaa !24
  %t94 = add i64 %t90, %t91
  %t96 = sub i64 %t94, 1
  %t97 = load i64, ptr %l7, !tbaa !24
  %t100 = sdiv i64 %t96, %t97
  store i64 %t100, ptr %l51, !tbaa !24
  br label %bb25
bb24:
  store i64 0, ptr %l51, !tbaa !24
  br label %bb25
bb25:
  %t102 = load i64, ptr %l51, !tbaa !24
  store i64 %t102, ptr %l48, !tbaa !24
  br label %bb26
bb26:
  %t103 = load i64, ptr %l48, !tbaa !24
  store i64 %t103, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb27
bb27:
  %t104 = load i64, ptr %l9, !tbaa !24
  %t105 = load i64, ptr %l8, !tbaa !24
  %t108 = icmp slt i64 %t104, %t105
  %t110 = xor i1 %t108, true
  br i1 %t110, label %bb28, label %bb29
bb28:
  br label %bb33
bb29:
  br label %bb30
bb30:
  %t112 = load i64, ptr %l5, !tbaa !24
  %t113 = load i64, ptr %l9, !tbaa !24
  %t114 = load i64, ptr %l7, !tbaa !24
  %t117 = mul i64 %t113, %t114
  %t120 = add i64 %t112, %t117
  store i64 %t120, ptr %l10, !tbaa !24
  %t122 = load i64, ptr %l10, !tbaa !24
  store i64 %t122, ptr %l69, !tbaa !24
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = getelementptr %"compiler/types:Table", ptr %t123, i32 0, i32 24
  %t126 = load i64, ptr %l4, !tbaa !24
  %t127 = load i64, ptr %l10, !tbaa !24
  %t130 = add i64 %t126, %t127
  %t133 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t125, i64 %t130)
  store i64 %t133, ptr %l75
  br label %bb31
bb31:
  %t134 = load i64, ptr %l75, !tbaa !24
  %t135 = load ptr, ptr %lp3
  %t136 = load i64, ptr %l69, !tbaa !24
  %t137 = getelementptr { i64, ptr }, ptr %t135, i32 0, i32 1
  %t138 = load ptr, ptr %t137, !tbaa !27
  %t139 = getelementptr i64, ptr %t138, i64 %t136
  store i64 %t134, ptr %t139, !tbaa !34
  br label %bb32
bb32:
  %t140 = load i64, ptr %l9, !tbaa !24
  %t142 = add i64 %t140, 1
  store i64 %t142, ptr %l9, !tbaa !24
  br label %bb27
bb33:
  %t144 = load ptr, ptr %lp3
  %t145 = load { i64, ptr }, ptr %t144, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t145, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOrNull(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i1
  %l8 = alloca i32
  %l11 = alloca ptr
  %l14 = alloca i32
  %l17 = alloca i32
  %l20 = alloca i32
  %l23 = alloca i32
  %l26 = alloca i64
  %l29 = alloca i32
  %l32 = alloca i64
  %l33 = alloca i32
  %l36 = alloca i32
  %l41 = alloca ptr
  %l44 = alloca i32
  %l47 = alloca i64
  %l50 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i1, ptr %l4, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  %t7 = load i32, ptr %l1, !tbaa !23
  store i32 %t7, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load i32, ptr %l1, !tbaa !23
  %t13 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t9, i32 %t10)
  store i32 %t13, ptr %l8
  br label %bb5
bb5:
  %t14 = load i32, ptr %l8, !range !{i32 0, i32 33}
  %t16 = trunc i64 21 to i32
  %t17 = icmp eq i32 %t14, %t16
  br i1 %t17, label %bb6, label %bb7
bb6:
  %t19 = load ptr, ptr %l0, !tbaa !29
  store ptr %t19, ptr %l11, !tbaa !29
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load i32, ptr %l1, !tbaa !23
  %t24 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t20, i32 %t21)
  store i32 %t24, ptr %l14
  br label %bb8
bb7:
  br label %bb16
bb8:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load i32, ptr %l1, !tbaa !23
  %t29 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t25, i32 %t26)
  store i32 %t29, ptr %l17
  br label %bb9
bb9:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load i32, ptr %l1, !tbaa !23
  %t34 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t30, i32 %t31)
  store i32 %t34, ptr %l20
  br label %bb10
bb10:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load i32, ptr %l1, !tbaa !23
  %t39 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesOf(ptr %v0, ptr %t35, i32 %t36)
  store i32 %t39, ptr %l23
  br label %bb11
bb11:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load i32, ptr %l1, !tbaa !23
  %t44 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamesIdOf(ptr %v0, ptr %t40, i32 %t41)
  store i64 %t44, ptr %l26
  br label %bb12
bb12:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load i32, ptr %l1, !tbaa !23
  %t49 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncTag(ptr %v0, ptr %t45, i32 %t46)
  store i32 %t49, ptr %l29
  br label %bb13
bb13:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t51 = load i32, ptr %l1, !tbaa !23
  %t54 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePromisesOf(ptr %v0, ptr %t50, i32 %t51)
  store i64 %t54, ptr %l32
  br label %bb14
bb14:
  %t55 = load ptr, ptr %l11, !tbaa !29
  %t56 = load i32, ptr %l14, !tbaa !23
  %t57 = load i32, ptr %l17, !tbaa !23
  %t58 = load i32, ptr %l20, !tbaa !23
  %t59 = load i32, ptr %l23, !tbaa !23
  %t60 = load i64, ptr %l26, !tbaa !24
  %t61 = load i32, ptr %l29, !tbaa !23
  %t62 = load i64, ptr %l32, !tbaa !24
  %t63 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t55, i32 %t56, i32 %t57, i32 %t58, i32 %t59, i64 %t60, i1 true, i32 %t61, i64 %t62)
  store i32 %t63, ptr %l33
  br label %bb15
bb15:
  %t64 = load i32, ptr %l33, !tbaa !23
  store i32 %t64, ptr %rv
  br label %ret
bb16:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load i32, ptr %l1, !tbaa !23
  %t69 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t65, i32 %t66)
  store i32 %t69, ptr %l36
  br label %bb17
bb17:
  %t70 = load i32, ptr %l36, !range !{i32 0, i32 33}
  %t72 = trunc i64 20 to i32
  %t73 = icmp eq i32 %t70, %t72
  %t75 = xor i1 %t73, true
  br i1 %t75, label %bb18, label %bb19
bb18:
  %t77 = load i32, ptr %l1, !tbaa !23
  store i32 %t77, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  %t79 = load ptr, ptr %l0, !tbaa !29
  store ptr %t79, ptr %l41, !tbaa !29
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load i32, ptr %l1, !tbaa !23
  %t84 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t80, i32 %t81)
  store i32 %t84, ptr %l44
  br label %bb21
bb21:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load i32, ptr %l1, !tbaa !23
  %t89 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t85, i32 %t86)
  store i64 %t89, ptr %l47
  br label %bb22
bb22:
  %t90 = load i64, ptr @G_2ecompiler_2ftypes_2eNullable, !tbaa !24
  %t91 = load i64, ptr %l47, !tbaa !24
  %t93 = or i64 %t91, %t90
  %t94 = load ptr, ptr %l41, !tbaa !29
  %t95 = load i32, ptr %l44, !tbaa !23
  %t97 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t94, i32 %t95, i64 %t93)
  store i32 %t97, ptr %l50
  br label %bb23
bb23:
  %t98 = load i32, ptr %l50, !tbaa !23
  store i32 %t98, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnedPart(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l5 = alloca i32
  %l8 = alloca i32
  %l11 = alloca i1
  %l14 = alloca i32
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t1, i32 %a1)
  store i32 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i32, ptr %l5, !tbaa !23
  store i32 %t6, ptr %l2, !tbaa !23
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i32, ptr %l2, !tbaa !23
  %t11 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t7, i32 %t8)
  store i32 %t11, ptr %l8
  br label %bb2
bb2:
  %t12 = load i32, ptr %l8, !range !{i32 0, i32 33}
  %t14 = trunc i64 19 to i32
  %t15 = icmp eq i32 %t12, %t14
  br i1 %t15, label %bb3, label %bb4
bb3:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load i32, ptr %l2, !tbaa !23
  %t21 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t17, i32 %t18)
  store i32 %t21, ptr %l14
  br label %bb5
bb4:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb6
bb5:
  %t22 = load i32, ptr %l14, !tbaa !23
  %t23 = icmp eq i32 %t22, 0
  store i1 %t23, ptr %l11, !tbaa !21
  br label %bb6
bb6:
  %t25 = load i1, ptr %l11, !tbaa !21
  store i1 %t25, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePacked(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i32
  %l7 = alloca i1
  %l9 = alloca ptr
  %l12 = alloca i32
  %l14 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t1, i32 %t2)
  store i32 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t8 = trunc i64 18 to i32
  %t9 = icmp eq i32 %t6, %t8
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/types:Table", ptr %t11, i32 0, i32 39
  store ptr %t13, ptr %l9, !tbaa !29
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load i32, ptr %l1, !tbaa !23
  %t18 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t14, i32 %t15)
  store i32 %t18, ptr %l12
  br label %bb4
bb3:
  store i1 false, ptr %l7, !tbaa !21
  br label %bb6
bb4:
  %t19 = load i32, ptr %l12, !tbaa !23
  %t20 = sext i32 %t19 to i64
  %t21 = load ptr, ptr %l9, !tbaa !29
  %t23 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t21, i64 %t20)
  store i1 %t23, ptr %l14
  br label %bb5
bb5:
  %t24 = load i1, ptr %l14, !tbaa !21
  store i1 %t24, ptr %l7, !tbaa !21
  br label %bb6
bb6:
  %t25 = load i1, ptr %l7, !tbaa !21
  store i1 %t25, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePackedBits(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca i64
  %l7 = alloca i32
  %l14 = alloca i1
  %l17 = alloca i64
  %l20 = alloca i32
  %l25 = alloca i32
  %l27 = alloca i1
  %l28 = alloca ptr
  %l31 = alloca i32
  %l32 = alloca i32
  %l37 = alloca ptr
  %l40 = alloca i32
  %l41 = alloca i64
  %l44 = alloca i64
  %l45 = alloca i64
  %l46 = alloca ptr
  %l49 = alloca i32
  %l50 = alloca i64
  %l56 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t1, i32 %a1)
  store i32 %t5, ptr %l7
  br label %bb1
bb1:
  %t6 = load i32, ptr %l7, !tbaa !23
  store i32 %t6, ptr %l2, !tbaa !23
  %t7 = load i32, ptr %l2, !tbaa !23
  %t8 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t11 = icmp eq i32 %t7, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  store i64 1, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load i32, ptr %l2, !tbaa !23
  %t18 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNumber(ptr %v0, ptr %t14, i32 %t15)
  store i1 %t18, ptr %l14
  br label %bb5
bb5:
  %t19 = load i1, ptr %l14, !tbaa !21
  br i1 %t19, label %bb6, label %bb7
bb6:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load i32, ptr %l2, !tbaa !23
  %t24 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t20, i32 %t21)
  store i64 %t24, ptr %l17
  br label %bb8
bb7:
  br label %bb9
bb8:
  %t25 = load i64, ptr %l17, !tbaa !24
  store i64 %t25, ptr %rv
  br label %ret
bb9:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load i32, ptr %l2, !tbaa !23
  %t30 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t26, i32 %t27)
  store i32 %t30, ptr %l20
  br label %bb10
bb10:
  %t31 = load i32, ptr %l20, !range !{i32 0, i32 33}
  store i32 %t31, ptr %l3
  %t32 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t34 = trunc i64 19 to i32
  %t35 = icmp eq i32 %t32, %t34
  br i1 %t35, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb30
bb13:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load i32, ptr %l2, !tbaa !23
  %t41 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t37, i32 %t38)
  store i32 %t41, ptr %l25
  br label %bb14
bb14:
  %t42 = load i32, ptr %l25, !tbaa !23
  %t43 = icmp eq i32 %t42, 0
  br i1 %t43, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb19
bb16:
  %t45 = load ptr, ptr %l0, !tbaa !29
  store ptr %t45, ptr %l28, !tbaa !29
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load i32, ptr %l2, !tbaa !23
  %t50 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t46, i32 %t47)
  store i32 %t50, ptr %l31
  br label %bb17
bb17:
  %t51 = load ptr, ptr %l28, !tbaa !29
  %t52 = load i32, ptr %l31, !tbaa !23
  %t53 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t51, i32 %t52)
  store i32 %t53, ptr %l32
  br label %bb18
bb18:
  %t54 = load i32, ptr %l32, !range !{i32 0, i32 33}
  %t56 = trunc i64 26 to i32
  %t57 = icmp eq i32 %t54, %t56
  %t59 = xor i1 %t57, true
  store i1 %t59, ptr %l27, !tbaa !21
  br label %bb19
bb19:
  %t61 = load i1, ptr %l27, !tbaa !21
  br i1 %t61, label %bb20, label %bb21
bb20:
  store i64 -1, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  %t63 = load ptr, ptr %l0, !tbaa !29
  store ptr %t63, ptr %l37, !tbaa !29
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load i32, ptr %l2, !tbaa !23
  %t68 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t64, i32 %t65)
  store i32 %t68, ptr %l40
  br label %bb23
bb23:
  %t69 = load ptr, ptr %l37, !tbaa !29
  %t70 = load i32, ptr %l40, !tbaa !23
  %t71 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePackedBits(ptr %v0, ptr %t69, i32 %t70)
  store i64 %t71, ptr %l41
  br label %bb24
bb24:
  %t72 = load i64, ptr %l41, !tbaa !24
  store i64 %t72, ptr %l4, !tbaa !24
  %t73 = load i64, ptr %l4, !tbaa !24
  %t75 = icmp slt i64 %t73, 0
  br i1 %t75, label %bb25, label %bb26
bb25:
  store i64 -1, ptr %l44, !tbaa !24
  br label %bb29
bb26:
  %t77 = load i64, ptr %l4, !tbaa !24
  store i64 %t77, ptr %l45, !tbaa !24
  %t78 = load ptr, ptr %l0, !tbaa !29
  store ptr %t78, ptr %l46, !tbaa !29
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load i32, ptr %l2, !tbaa !23
  %t83 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t79, i32 %t80)
  store i32 %t83, ptr %l49
  br label %bb27
bb27:
  %t84 = load ptr, ptr %l46, !tbaa !29
  %t85 = load i32, ptr %l49, !tbaa !23
  %t86 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %t84, i32 %t85)
  store i64 %t86, ptr %l50
  br label %bb28
bb28:
  %t87 = load i64, ptr %l45, !tbaa !24
  %t88 = load i64, ptr %l50, !tbaa !24
  %t89 = mul i64 %t87, %t88
  store i64 %t89, ptr %l44, !tbaa !24
  br label %bb29
bb29:
  %t91 = load i64, ptr %l44, !tbaa !24
  store i64 %t91, ptr %rv
  br label %ret
bb30:
  %t92 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t94 = trunc i64 18 to i32
  %t95 = icmp eq i32 %t92, %t94
  br i1 %t95, label %bb31, label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb35
bb33:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t98 = load i32, ptr %l2, !tbaa !23
  %t101 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2enamedPackedBits(ptr %v0, ptr %t97, i32 %t98)
  store i64 %t101, ptr %l56
  br label %bb34
bb34:
  %t102 = load i64, ptr %l56, !tbaa !24
  store i64 %t102, ptr %rv
  br label %ret
bb35:
  br i1 true, label %bb36, label %bb37
bb36:
  br label %bb38
bb37:
  br label %bb39
bb38:
  store i64 -1, ptr %rv
  br label %ret
bb39:
  call void @__olang_check_failed(ptr @olang_loc_7865e8d09eed184e_823ac7408aefc9da)
  unreachable
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParamName(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l12 = alloca ptr
  %l13 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l21 = alloca i64
  %l22 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamesOf(ptr %v0, ptr %v0, ptr %t1, i32 %a1)
  store { i64, ptr } %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t6, ptr %l3, !tbaa !27
  %t7 = load i64, ptr %l2, !tbaa !24
  %t8 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  %t13 = icmp slt i64 %t7, %t10
  br i1 %t13, label %bb2, label %bb3
bb2:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/types:Table", ptr %t15, i32 0, i32 0
  %t18 = load ptr, ptr %t17, !tbaa !29
  store ptr %t18, ptr %l12, !tbaa !29
  %t19 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t19, ptr %l13, !tbaa !27
  %t20 = load i64, ptr %l2, !tbaa !24
  %t22 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = getelementptr i64, ptr %t23, i64 %t20
  %t25 = load i64, ptr %t24, !tbaa !34
  %t27 = trunc i64 %t25 to i32
  %t29 = load ptr, ptr %l12, !tbaa !29
  %t30 = call ptr @__olang_scope_or(ptr %v2, ptr %t29)
  %t31 = ptrtoint ptr %t30 to i64
  %t33 = inttoptr i64 %t31 to ptr
  %t34 = load ptr, ptr %l12, !tbaa !29
  %t36 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %t33, ptr %v1, ptr %t34, i32 %t27)
  store { i64, ptr } %t36, ptr %l19
  br label %bb4
bb3:
  br label %bb5
bb4:
  %t37 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t37, ptr %l20, !tbaa !27
  %t38 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t38, 0
  store i64 %t39, ptr %l21, !tbaa !24
  %t40 = load i64, ptr %l21, !tbaa !24
  %t41 = mul i64 %t40, 1
  %t42 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t41)
  %t43 = insertvalue { i64, ptr } undef, i64 %t40, 0
  %t44 = insertvalue { i64, ptr } %t43, ptr %t42, 1
  store { i64, ptr } %t44, ptr %l22, !tbaa !27
  %t45 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !27
  %t47 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !27
  %t49 = load i64, ptr %l21, !tbaa !24
  %t50 = mul i64 %t49, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t46, ptr %t48, i64 %t50, i1 false)
  %t51 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t51, ptr %l20, !tbaa !27
  %t52 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t52, ptr %rv
  br label %ret
bb5:
  %t53 = load i64, ptr %l2, !tbaa !24
  %t55 = add i64 %t53, 1
  %t56 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t57 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  %t59 = call i64 @__olang_fmt_i64(ptr null, i64 %t55)
  %t60 = add i64 %t57, %t59
  %t61 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t60)
  call void @olang_textcopy(ptr %t61, ptr %t56, i64 %t57)
  %t62 = getelementptr i8, ptr %t61, i64 %t57
  %t63 = call i64 @__olang_fmt_i64(ptr %t62, i64 %t55)
  %t64 = insertvalue { i64, ptr } undef, i64 %t60, 0
  %t65 = insertvalue { i64, ptr } %t64, ptr %t61, 1
  store { i64, ptr } %t65, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l4 = alloca i64
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %a0, i32 %a1)
  store i64 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i64, ptr %l4, !tbaa !24
  %t7 = trunc i64 %t6 to i32
  store i32 %t7, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l4 = alloca i64
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %a0, i32 %a1)
  store i64 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i64, ptr %l4, !tbaa !24
  %t7 = trunc i64 %t6 to i32
  store i32 %t7, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePattern(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/types:Table", ptr %t1, i32 0, i32 11
  store ptr %t3, ptr %l3, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t8 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %t4, i32 %a1)
  store i64 %t8, ptr %l6
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l3, !tbaa !29
  %t10 = load i64, ptr %l6, !tbaa !24
  %t11 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %t9, i64 %t10)
  store { i64, ptr } %t11, ptr %l7
  br label %bb2
bb2:
  %t12 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t12, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l6 = alloca i32
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/types:Table", ptr %a0, i32 0, i32 27
  %t6 = sext i32 %a1 to i64
  %t9 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t3, i64 %t6)
  store i32 %t9, ptr %l6
  br label %bb1
bb1:
  %t10 = load i32, ptr %l6, !tbaa !23
  store i32 %t10, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlainList(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l3 = alloca i1
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i32
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l17 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l29 = alloca i1
  %l32 = alloca i32
  %l40 = alloca i64
  %l49 = alloca i64
  %l52 = alloca i64
  %l70 = alloca i64
  %l72 = alloca { i64, ptr }
  %l75 = alloca i32
  %l80 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t1, i32 %t2)
  store { i64, ptr } %t5, ptr %l17
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t6, ptr %l2, !tbaa !27
  store i1 true, ptr %l3, !tbaa !21
  %t7 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t7, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t9 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 0
  store i64 %t11, ptr %l6, !tbaa !24
  br label %bb2
bb2:
  %t13 = load i64, ptr %l5, !tbaa !24
  %t14 = load i64, ptr %l6, !tbaa !24
  %t17 = icmp slt i64 %t13, %t14
  %t19 = xor i1 %t17, true
  br i1 %t19, label %bb3, label %bb4
bb3:
  br label %bb11
bb4:
  br label %bb5
bb5:
  %t21 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t21, ptr %l25, !tbaa !27
  %t22 = load i64, ptr %l5, !tbaa !24
  %t24 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr i32, ptr %t25, i64 %t22
  %t27 = load i32, ptr %t26, !tbaa !33
  store i32 %t27, ptr %l7, !tbaa !23
  %t29 = load i1, ptr %l3, !tbaa !21
  br i1 %t29, label %bb6, label %bb7
bb6:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load i32, ptr %l7, !tbaa !23
  %t35 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t31, i32 %t32)
  store i32 %t35, ptr %l32
  br label %bb8
bb7:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb9
bb8:
  %t36 = load i32, ptr %l7, !tbaa !23
  %t37 = load i32, ptr %l32, !tbaa !23
  %t39 = icmp eq i32 %t37, %t36
  store i1 %t39, ptr %l29, !tbaa !21
  br label %bb9
bb9:
  %t41 = load i1, ptr %l29, !tbaa !21
  store i1 %t41, ptr %l3, !tbaa !21
  br label %bb10
bb10:
  %t42 = load i64, ptr %l5, !tbaa !24
  %t44 = add i64 %t42, 1
  store i64 %t44, ptr %l5, !tbaa !24
  br label %bb2
bb11:
  %t46 = load i1, ptr %l3, !tbaa !21
  br i1 %t46, label %bb12, label %bb13
bb12:
  %t48 = load i32, ptr %l1, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t48, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t50 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t52 = extractvalue { i64, ptr } %t50, 0
  store i64 %t52, ptr %l40, !tbaa !24
  %t53 = load i64, ptr %l40, !tbaa !24
  %t54 = icmp sge i64 %t53, 0
  br i1 %t54, label %bb15, label %bb16
bb15:
  %t56 = load i64, ptr %l40, !tbaa !24
  %t57 = icmp sle i64 %t56, 2305843009213693951
  br i1 %t57, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_f884bd4f1b6015d_20014de591249a11)
  unreachable
bb17:
  %t59 = load i64, ptr %l40, !tbaa !24
  %t60 = mul i64 %t59, 4
  %t61 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t60)
  %t62 = insertvalue { i64, ptr } undef, i64 %t59, 0
  %t63 = insertvalue { i64, ptr } %t62, ptr %t61, 1
  store { i64, ptr } %t63, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t65 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t67 = extractvalue { i64, ptr } %t65, 0
  store i64 %t67, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t69 = load i64, ptr %l10, !tbaa !24
  %t70 = load i64, ptr %l9, !tbaa !24
  %t73 = icmp sgt i64 %t69, %t70
  br i1 %t73, label %bb19, label %bb20
bb18:
  call void @__olang_check_failed(ptr @olang_loc_f884bd4f1b6015d_20014de591249a11)
  unreachable
bb19:
  %t75 = load i64, ptr %l11, !tbaa !24
  %t77 = icmp sgt i64 %t75, 0
  br i1 %t77, label %bb21, label %bb22
bb20:
  store i64 0, ptr %l49, !tbaa !24
  br label %bb24
bb21:
  %t79 = load i64, ptr %l10, !tbaa !24
  %t80 = load i64, ptr %l9, !tbaa !24
  %t83 = sub i64 %t79, %t80
  %t84 = load i64, ptr %l11, !tbaa !24
  %t87 = add i64 %t83, %t84
  %t89 = sub i64 %t87, 1
  %t90 = load i64, ptr %l11, !tbaa !24
  %t93 = sdiv i64 %t89, %t90
  store i64 %t93, ptr %l52, !tbaa !24
  br label %bb23
bb22:
  store i64 0, ptr %l52, !tbaa !24
  br label %bb23
bb23:
  %t95 = load i64, ptr %l52, !tbaa !24
  store i64 %t95, ptr %l49, !tbaa !24
  br label %bb24
bb24:
  %t96 = load i64, ptr %l49, !tbaa !24
  store i64 %t96, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb25
bb25:
  %t97 = load i64, ptr %l13, !tbaa !24
  %t98 = load i64, ptr %l12, !tbaa !24
  %t101 = icmp slt i64 %t97, %t98
  %t103 = xor i1 %t101, true
  br i1 %t103, label %bb26, label %bb27
bb26:
  br label %bb31
bb27:
  br label %bb28
bb28:
  %t105 = load i64, ptr %l9, !tbaa !24
  %t106 = load i64, ptr %l13, !tbaa !24
  %t107 = load i64, ptr %l11, !tbaa !24
  %t110 = mul i64 %t106, %t107
  %t113 = add i64 %t105, %t110
  store i64 %t113, ptr %l14, !tbaa !24
  %t115 = load i64, ptr %l14, !tbaa !24
  store i64 %t115, ptr %l70, !tbaa !24
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t117 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t117, ptr %l72, !tbaa !27
  %t118 = load i64, ptr %l14, !tbaa !24
  %t120 = getelementptr { i64, ptr }, ptr %l72, i32 0, i32 1
  %t121 = load ptr, ptr %t120, !tbaa !27
  %t122 = getelementptr i32, ptr %t121, i64 %t118
  %t123 = load i32, ptr %t122, !tbaa !33
  %t126 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t116, i32 %t123)
  store i32 %t126, ptr %l75
  br label %bb29
bb29:
  %t127 = load i32, ptr %l75, !tbaa !23
  %t128 = load i64, ptr %l70, !tbaa !24
  %t129 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t130 = load ptr, ptr %t129, !tbaa !27
  %t131 = getelementptr i32, ptr %t130, i64 %t128
  store i32 %t127, ptr %t131, !tbaa !33
  br label %bb30
bb30:
  %t132 = load i64, ptr %l13, !tbaa !24
  %t134 = add i64 %t132, 1
  store i64 %t134, ptr %l13, !tbaa !24
  br label %bb25
bb31:
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t137 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t140 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t136, { i64, ptr } %t137)
  store i32 %t140, ptr %l80
  br label %bb32
bb32:
  call void @__olang_scope_close(ptr %s0)
  %t141 = load i32, ptr %l80, !tbaa !23
  store i32 %t141, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l12 = alloca i64
  %l15 = alloca i64
  %l36 = alloca i1
  %l43 = alloca i64
  %l48 = alloca { i64, ptr }
  %l51 = alloca i32
  %rv = alloca i32
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 1, ptr %l2, !tbaa !24
  store i64 15, ptr %l3, !tbaa !24
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
  store i64 0, ptr %l12, !tbaa !24
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
  store i64 %t25, ptr %l15, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l15, !tbaa !24
  br label %bb5
bb5:
  %t27 = load i64, ptr %l15, !tbaa !24
  store i64 %t27, ptr %l12, !tbaa !24
  br label %bb6
bb6:
  %t28 = load i64, ptr %l12, !tbaa !24
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
  br label %bb16
bb9:
  br label %bb10
bb10:
  %t37 = load i64, ptr %l2, !tbaa !24
  %t38 = load i64, ptr %l6, !tbaa !24
  %t39 = load i64, ptr %l4, !tbaa !24
  %t42 = mul i64 %t38, %t39
  %t45 = add i64 %t37, %t42
  store i64 %t45, ptr %l7, !tbaa !24
  %t47 = load i64, ptr %l7, !tbaa !24
  %t49 = getelementptr [15 x { i64, ptr }], ptr @G_2ecompiler_2ftypes_2eprimNames, i64 0, i64 %t47
  %t50 = load { i64, ptr }, ptr %t49, !tbaa !37
  %t51 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t52 = load ptr, ptr @__olang_prog_scope
  %t55 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %t52, ptr %v1, { i64, ptr } %t50, { i64, ptr } %t51)
  store i1 %t55, ptr %l36
  br label %bb11
bb11:
  %t56 = load i1, ptr %l36, !tbaa !21
  br i1 %t56, label %bb12, label %bb13
bb12:
  %t57 = load i64, ptr %l7, !tbaa !24
  %t59 = trunc i64 %t57 to i32
  store i32 %t59, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t62 = load i64, ptr %l6, !tbaa !24
  %t64 = add i64 %t62, 1
  store i64 %t64, ptr %l6, !tbaa !24
  br label %bb7
bb16:
  %t66 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t68 = call i64 @compiler_2ftypes_2eIntWidth(ptr %v1, { i64, ptr } %t66)
  store i64 %t68, ptr %l43
  br label %bb17
bb17:
  %t69 = load i64, ptr %l43, !tbaa !24
  store i64 %t69, ptr %l8, !tbaa !24
  %t70 = load i64, ptr %l8, !tbaa !24
  %t72 = icmp sgt i64 %t70, 0
  br i1 %t72, label %bb18, label %bb19
bb18:
  %t75 = load i64, ptr %l8, !tbaa !24
  %t76 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t76, ptr %l48, !tbaa !27
  %t77 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !27
  %t79 = getelementptr i8, ptr %t78, i64 0
  %t80 = load i8, ptr %t79, !tbaa !32
  %t82 = icmp eq i8 %t80, 85
  %t86 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIntType(ptr %v0, ptr %a0, i64 %t75, i1 %t82)
  store i32 %t86, ptr %l51
  br label %bb20
bb19:
  br label %bb21
bb20:
  %t87 = load i32, ptr %l51, !tbaa !23
  store i32 %t87, ptr %rv
  br label %ret
bb21:
  %t88 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t88, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePromiseText(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l23 = alloca i64
  %l25 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l27 = alloca i64
  %l28 = alloca { i64, ptr }
  %l29 = alloca %"std/prelude/text:StringBuilder"
  %l32 = alloca i64
  %l38 = alloca i64
  %l41 = alloca i64
  %l60 = alloca i64
  %l73 = alloca { i64, ptr }
  %l81 = alloca { i64, ptr }
  %l84 = alloca ptr
  %l88 = alloca { i64, ptr }
  %l95 = alloca { i64, ptr }
  %l102 = alloca i64
  %l105 = alloca i64
  %l123 = alloca ptr
  %l137 = alloca { i64, ptr }
  %l143 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePromisesOf(ptr %v0, ptr %t1, i32 %t2)
  store i64 %t5, ptr %l23
  br label %bb1
bb1:
  %t6 = load i64, ptr %l23, !tbaa !24
  %t7 = icmp eq i64 %t6, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d4, i32 0, i32 1) }, ptr %l25, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t9, ptr %l26, !tbaa !27
  %t10 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t10, 0
  store i64 %t11, ptr %l27, !tbaa !24
  %t12 = load i64, ptr %l27, !tbaa !24
  %t13 = mul i64 %t12, 1
  %t14 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t13)
  %t15 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t16 = insertvalue { i64, ptr } %t15, ptr %t14, 1
  store { i64, ptr } %t16, ptr %l28, !tbaa !27
  %t17 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !27
  %t19 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !27
  %t21 = load i64, ptr %l27, !tbaa !24
  %t22 = mul i64 %t21, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t18, ptr %t20, i64 %t22, i1 false)
  %t23 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t23, ptr %l26, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t24 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t24, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t25 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t25, ptr %l29
  br label %bb5
bb5:
  %t26 = load %"std/prelude/text:StringBuilder", ptr %l29
  store %"std/prelude/text:StringBuilder" %t26, ptr %l2
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load i32, ptr %l1, !tbaa !23
  %t31 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePromiseWords(ptr %v0, ptr %t27, i32 %t28)
  store i64 %t31, ptr %l32
  br label %bb6
bb6:
  %t32 = load i64, ptr %l32, !tbaa !24
  store i64 %t32, ptr %l3, !tbaa !24
  store i64 0, ptr %l4, !tbaa !24
  %t33 = load [8 x { i64, ptr }], ptr @G_2ecompiler_2ftypes_2ePromiseNames
  store i64 8, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t36 = load i64, ptr %l5, !tbaa !24
  %t37 = load i64, ptr %l4, !tbaa !24
  %t40 = icmp sgt i64 %t36, %t37
  br i1 %t40, label %bb7, label %bb8
bb7:
  %t42 = load i64, ptr %l6, !tbaa !24
  %t44 = icmp sgt i64 %t42, 0
  br i1 %t44, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l38, !tbaa !24
  br label %bb12
bb9:
  %t46 = load i64, ptr %l5, !tbaa !24
  %t47 = load i64, ptr %l4, !tbaa !24
  %t50 = sub i64 %t46, %t47
  %t51 = load i64, ptr %l6, !tbaa !24
  %t54 = add i64 %t50, %t51
  %t56 = sub i64 %t54, 1
  %t57 = load i64, ptr %l6, !tbaa !24
  %t60 = sdiv i64 %t56, %t57
  store i64 %t60, ptr %l41, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l41, !tbaa !24
  br label %bb11
bb11:
  %t62 = load i64, ptr %l41, !tbaa !24
  store i64 %t62, ptr %l38, !tbaa !24
  br label %bb12
bb12:
  %t63 = load i64, ptr %l38, !tbaa !24
  store i64 %t63, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb13
bb13:
  %t64 = load i64, ptr %l8, !tbaa !24
  %t65 = load i64, ptr %l7, !tbaa !24
  %t68 = icmp slt i64 %t64, %t65
  %t70 = xor i1 %t68, true
  br i1 %t70, label %bb14, label %bb15
bb14:
  br label %bb22
bb15:
  br label %bb16
bb16:
  %t72 = load i64, ptr %l4, !tbaa !24
  %t73 = load i64, ptr %l8, !tbaa !24
  %t74 = load i64, ptr %l6, !tbaa !24
  %t77 = mul i64 %t73, %t74
  %t80 = add i64 %t72, %t77
  store i64 %t80, ptr %l9, !tbaa !24
  %t82 = load i64, ptr %l3, !tbaa !24
  %t83 = load i64, ptr %l9, !tbaa !24
  store i64 %t83, ptr %l60, !tbaa !24
  %t84 = load i64, ptr %l60, !tbaa !24
  %t85 = load i64, ptr %l60, !tbaa !24
  %t86 = shl i64 1, %t85
  %t89 = and i64 %t82, %t86
  %t91 = icmp ne i64 %t89, 0
  br i1 %t91, label %bb17, label %bb18
bb17:
  store %olang.scope zeroinitializer, ptr %s4
  %t93 = load i64, ptr %l9, !tbaa !24
  %t95 = getelementptr [8 x { i64, ptr }], ptr @G_2ecompiler_2ftypes_2ePromiseNames, i64 0, i64 %t93
  %t96 = load { i64, ptr }, ptr %t95, !tbaa !37
  %t97 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t98 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t100 = extractvalue { i64, ptr } %t96, 1
  %t101 = extractvalue { i64, ptr } %t96, 0
  %t102 = add i64 %t98, %t101
  %t103 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t102)
  call void @olang_textcopy(ptr %t103, ptr %t97, i64 %t98)
  %t104 = getelementptr i8, ptr %t103, i64 %t98
  call void @olang_textcopy(ptr %t104, ptr %t100, i64 %t101)
  %t105 = insertvalue { i64, ptr } undef, i64 %t102, 0
  %t106 = insertvalue { i64, ptr } %t105, ptr %t103, 1
  %t108 = extractvalue { i64, ptr } %t106, 0
  %t109 = extractvalue { i64, ptr } %t106, 1
  %t110 = mul i64 %t108, 1
  %t111 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t110)
  call void @llvm.memcpy.p0.p0.i64(ptr %t111, ptr %t109, i64 %t110, i1 false)
  %t112 = insertvalue { i64, ptr } undef, i64 %t108, 0
  %t113 = insertvalue { i64, ptr } %t112, ptr %t111, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s4, ptr %l2, { i64, ptr } %t113)
  br label %bb19
bb18:
  br label %bb20
bb19:
  call void @__olang_scope_close(ptr %s4)
  br label %bb20
bb20:
  br label %bb21
bb21:
  %t116 = load i64, ptr %l8, !tbaa !24
  %t118 = add i64 %t116, 1
  store i64 %t118, ptr %l8, !tbaa !24
  br label %bb13
bb22:
  store %olang.scope zeroinitializer, ptr %s7
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t121 = load i32, ptr %l1, !tbaa !23
  %t124 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBorrowsOf(ptr %v0, ptr %s7, ptr %t120, i32 %t121)
  store { i64, ptr } %t124, ptr %l73
  br label %bb23
bb23:
  %t125 = load { i64, ptr }, ptr %l73, !tbaa !27
  %t126 = extractvalue { i64, ptr } %t125, 0
  %t127 = extractvalue { i64, ptr } %t125, 1
  %t128 = mul i64 %t126, 8
  %t129 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t128)
  call void @llvm.memcpy.p0.p0.i64(ptr %t129, ptr %t127, i64 %t128, i1 false)
  %t130 = insertvalue { i64, ptr } undef, i64 %t126, 0
  %t131 = insertvalue { i64, ptr } %t130, ptr %t129, 1
  store { i64, ptr } %t131, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t133 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t135 = extractvalue { i64, ptr } %t133, 0
  store i64 %t135, ptr %l12, !tbaa !24
  br label %bb24
bb24:
  store %olang.scope zeroinitializer, ptr %s8
  %t137 = load i64, ptr %l11, !tbaa !24
  %t138 = load i64, ptr %l12, !tbaa !24
  %t141 = icmp slt i64 %t137, %t138
  %t143 = xor i1 %t141, true
  br i1 %t143, label %bb25, label %bb26
bb25:
  call void @__olang_scope_close(ptr %s8)
  br label %bb31
bb26:
  br label %bb27
bb27:
  %t145 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t145, ptr %l81, !tbaa !27
  %t146 = load i64, ptr %l11, !tbaa !24
  %t148 = getelementptr { i64, ptr }, ptr %l81, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !27
  %t150 = getelementptr i64, ptr %t149, i64 %t146
  %t151 = load i64, ptr %t150, !tbaa !34
  store ptr %l2, ptr %l84, !tbaa !29
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t154 = load i32, ptr %l1, !tbaa !23
  %t159 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParamName(ptr %v0, ptr %s8, ptr %v2, ptr %t153, i32 %t154, i64 %t151)
  store { i64, ptr } %t159, ptr %l88
  br label %bb28
bb28:
  %t160 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t161 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t162 = load { i64, ptr }, ptr %l88, !tbaa !27
  %t163 = extractvalue { i64, ptr } %t162, 1
  %t164 = extractvalue { i64, ptr } %t162, 0
  %t165 = add i64 %t161, %t164
  %t166 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t165)
  call void @olang_textcopy(ptr %t166, ptr %t160, i64 %t161)
  %t167 = getelementptr i8, ptr %t166, i64 %t161
  call void @olang_textcopy(ptr %t167, ptr %t163, i64 %t164)
  %t168 = insertvalue { i64, ptr } undef, i64 %t165, 0
  %t169 = insertvalue { i64, ptr } %t168, ptr %t166, 1
  %t171 = extractvalue { i64, ptr } %t169, 0
  %t172 = extractvalue { i64, ptr } %t169, 1
  %t173 = mul i64 %t171, 1
  %t174 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t173)
  call void @llvm.memcpy.p0.p0.i64(ptr %t174, ptr %t172, i64 %t173, i1 false)
  %t175 = insertvalue { i64, ptr } undef, i64 %t171, 0
  %t176 = insertvalue { i64, ptr } %t175, ptr %t174, 1
  %t177 = load ptr, ptr %l84, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s8, ptr %t177, { i64, ptr } %t176)
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s8)
  br label %bb30
bb30:
  %t179 = load i64, ptr %l11, !tbaa !24
  %t181 = add i64 %t179, 1
  store i64 %t181, ptr %l11, !tbaa !24
  br label %bb24
bb31:
  call void @__olang_scope_close(ptr %s7)
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t184 = load i32, ptr %l1, !tbaa !23
  %t187 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKeepsOf(ptr %v0, ptr %s0, ptr %t183, i32 %t184)
  store { i64, ptr } %t187, ptr %l95
  br label %bb32
bb32:
  %t188 = load { i64, ptr }, ptr %l95, !tbaa !27
  store { i64, ptr } %t188, ptr %l14, !tbaa !27
  store i64 0, ptr %l15, !tbaa !24
  %t189 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t191 = extractvalue { i64, ptr } %t189, 0
  %t193 = sdiv i64 %t191, 3
  store i64 %t193, ptr %l16, !tbaa !24
  store i64 1, ptr %l17, !tbaa !24
  %t195 = load i64, ptr %l16, !tbaa !24
  %t196 = load i64, ptr %l15, !tbaa !24
  %t199 = icmp sgt i64 %t195, %t196
  br i1 %t199, label %bb33, label %bb34
bb33:
  %t201 = load i64, ptr %l17, !tbaa !24
  %t203 = icmp sgt i64 %t201, 0
  br i1 %t203, label %bb35, label %bb36
bb34:
  store i64 0, ptr %l102, !tbaa !24
  br label %bb38
bb35:
  %t205 = load i64, ptr %l16, !tbaa !24
  %t206 = load i64, ptr %l15, !tbaa !24
  %t209 = sub i64 %t205, %t206
  %t210 = load i64, ptr %l17, !tbaa !24
  %t213 = add i64 %t209, %t210
  %t215 = sub i64 %t213, 1
  %t216 = load i64, ptr %l17, !tbaa !24
  %t219 = sdiv i64 %t215, %t216
  store i64 %t219, ptr %l105, !tbaa !24
  br label %bb37
bb36:
  store i64 0, ptr %l105, !tbaa !24
  br label %bb37
bb37:
  %t221 = load i64, ptr %l105, !tbaa !24
  store i64 %t221, ptr %l102, !tbaa !24
  br label %bb38
bb38:
  %t222 = load i64, ptr %l102, !tbaa !24
  store i64 %t222, ptr %l18, !tbaa !24
  store i64 0, ptr %l19, !tbaa !24
  br label %bb39
bb39:
  store %olang.scope zeroinitializer, ptr %s12
  %t223 = load i64, ptr %l19, !tbaa !24
  %t224 = load i64, ptr %l18, !tbaa !24
  %t227 = icmp slt i64 %t223, %t224
  %t229 = xor i1 %t227, true
  br i1 %t229, label %bb40, label %bb41
bb40:
  call void @__olang_scope_close(ptr %s12)
  br label %bb46
bb41:
  br label %bb42
bb42:
  %t231 = load i64, ptr %l15, !tbaa !24
  %t232 = load i64, ptr %l19, !tbaa !24
  %t233 = load i64, ptr %l17, !tbaa !24
  %t236 = mul i64 %t232, %t233
  %t239 = add i64 %t231, %t236
  store i64 %t239, ptr %l20, !tbaa !24
  store ptr %l2, ptr %l123, !tbaa !29
  %t241 = load ptr, ptr %l0, !tbaa !29
  %t242 = load i32, ptr %l1, !tbaa !23
  %t243 = load i64, ptr %l20, !tbaa !24
  %t245 = mul i64 3, %t243
  %t247 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t248 = load ptr, ptr %t247, !tbaa !27
  %t249 = getelementptr i64, ptr %t248, i64 %t245
  %t250 = load i64, ptr %t249, !tbaa !34
  %t251 = load i64, ptr %l20, !tbaa !24
  %t253 = mul i64 3, %t251
  %t255 = add i64 %t253, 1
  %t257 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t258 = load ptr, ptr %t257, !tbaa !27
  %t259 = getelementptr i64, ptr %t258, i64 %t255
  %t260 = load i64, ptr %t259, !tbaa !34
  %t261 = load i64, ptr %l20, !tbaa !24
  %t263 = mul i64 3, %t261
  %t265 = add i64 %t263, 2
  %t267 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t268 = load ptr, ptr %t267, !tbaa !27
  %t269 = getelementptr i64, ptr %t268, i64 %t265
  %t270 = load i64, ptr %t269, !tbaa !34
  %t276 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKeepsText(ptr %v0, ptr %s12, ptr %v2, ptr %t241, i32 %t242, i64 %t250, i64 %t260, i64 %t270)
  store { i64, ptr } %t276, ptr %l137
  br label %bb43
bb43:
  %t277 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t278 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  %t279 = load { i64, ptr }, ptr %l137, !tbaa !27
  %t280 = extractvalue { i64, ptr } %t279, 1
  %t281 = extractvalue { i64, ptr } %t279, 0
  %t282 = add i64 %t278, %t281
  %t283 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t282)
  call void @olang_textcopy(ptr %t283, ptr %t277, i64 %t278)
  %t284 = getelementptr i8, ptr %t283, i64 %t278
  call void @olang_textcopy(ptr %t284, ptr %t280, i64 %t281)
  %t285 = insertvalue { i64, ptr } undef, i64 %t282, 0
  %t286 = insertvalue { i64, ptr } %t285, ptr %t283, 1
  %t288 = extractvalue { i64, ptr } %t286, 0
  %t289 = extractvalue { i64, ptr } %t286, 1
  %t290 = mul i64 %t288, 1
  %t291 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t290)
  call void @llvm.memcpy.p0.p0.i64(ptr %t291, ptr %t289, i64 %t290, i1 false)
  %t292 = insertvalue { i64, ptr } undef, i64 %t288, 0
  %t293 = insertvalue { i64, ptr } %t292, ptr %t291, 1
  %t294 = load ptr, ptr %l123, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s12, ptr %t294, { i64, ptr } %t293)
  br label %bb44
bb44:
  call void @__olang_scope_close(ptr %s12)
  br label %bb45
bb45:
  %t296 = load i64, ptr %l19, !tbaa !24
  %t298 = add i64 %t296, 1
  store i64 %t298, ptr %l19, !tbaa !24
  br label %bb39
bb46:
  %t301 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l2)
  store { i64, ptr } %t301, ptr %l143
  br label %bb47
bb47:
  call void @__olang_scope_close(ptr %s0)
  %t302 = load { i64, ptr }, ptr %l143, !tbaa !27
  store { i64, ptr } %t302, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePromiseWords(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/types:Table", ptr %t1, i32 0, i32 32
  store ptr %t3, ptr %l3, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t8 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePromisesOf(ptr %v0, ptr %t4, i32 %a1)
  store i64 %t8, ptr %l6
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l3, !tbaa !29
  %t10 = load i64, ptr %l6, !tbaa !24
  %t11 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e_2eAt_3cArray_3cI64_3e_26_3e(ptr %v0, ptr %s0, ptr %t9, i64 %t10)
  store { i64, ptr } %t11, ptr %l7
  br label %bb2
bb2:
  %t12 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t12, ptr %l8, !tbaa !27
  %t13 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !27
  %t15 = getelementptr i64, ptr %t14, i64 0
  %t16 = load i64, ptr %t15, !tbaa !34
  call void @__olang_scope_close(ptr %s0)
  store i64 %t16, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePromises(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %lp4 = alloca ptr
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
  %l21 = alloca i1
  %l25 = alloca i1
  %l35 = alloca i64
  %l39 = alloca i64
  %l43 = alloca i64
  %l53 = alloca i64
  %l56 = alloca i64
  %l76 = alloca { i64, ptr }
  %l89 = alloca i64
  %l92 = alloca i64
  %l113 = alloca { i64, ptr }
  %l126 = alloca i64
  %l130 = alloca i64
  %l131 = alloca i32
  %l137 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp eq i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  %t9 = icmp eq i64 %t7, 0
  store i1 %t9, ptr %l21, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l21, !tbaa !21
  br i1 %t11, label %bb4, label %bb5
bb4:
  %t12 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t12, 0
  %t16 = icmp eq i64 %t14, 0
  store i1 %t16, ptr %l25, !tbaa !21
  br label %bb6
bb5:
  store i1 false, ptr %l25, !tbaa !21
  br label %bb6
bb6:
  %t18 = load i1, ptr %l25, !tbaa !21
  br i1 %t18, label %bb7, label %bb8
bb7:
  store i64 0, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t20 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t22 = extractvalue { i64, ptr } %t20, 0
  %t24 = add i64 2, %t22
  %t25 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t27 = extractvalue { i64, ptr } %t25, 0
  %t30 = add i64 %t24, %t27
  store i64 %t30, ptr %l35, !tbaa !24
  %t31 = load i64, ptr %l35, !tbaa !24
  %t32 = icmp sge i64 %t31, 0
  br i1 %t32, label %bb10, label %bb11
bb10:
  %t34 = load i64, ptr %l35, !tbaa !24
  %t35 = icmp sle i64 %t34, 1152921504606846975
  br i1 %t35, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_8822c3adad84af9f_bf049295f8c08d23)
  unreachable
bb12:
  %t37 = load i64, ptr %l35, !tbaa !24
  %t38 = mul i64 %t37, 8
  %t39 = call ptr @__olang_scope_alloc_zeroed(ptr %v0, i64 %t38)
  %t40 = insertvalue { i64, ptr } undef, i64 %t37, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t39, 1
  %t42 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 16, i64 8)
  store ptr %t42, ptr %lp4
  %t44 = load ptr, ptr %lp4
  store { i64, ptr } %t41, ptr %t44, !tbaa !27
  %t45 = load i64, ptr %l1, !tbaa !24
  store i64 %t45, ptr %l39, !tbaa !24
  %t46 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t48 = extractvalue { i64, ptr } %t46, 0
  %t50 = icmp sgt i64 %t48, 0
  br i1 %t50, label %bb14, label %bb15
bb13:
  call void @__olang_check_failed(ptr @olang_loc_8822c3adad84af9f_bf049295f8c08d23)
  unreachable
bb14:
  %t52 = load i64, ptr @G_2ecompiler_2ftypes_2ePromBorrows, !tbaa !24
  store i64 %t52, ptr %l43, !tbaa !24
  br label %bb16
bb15:
  store i64 0, ptr %l43, !tbaa !24
  br label %bb16
bb16:
  %t54 = load i64, ptr %l39, !tbaa !24
  %t55 = load i64, ptr %l43, !tbaa !24
  %t56 = or i64 %t54, %t55
  %t58 = load ptr, ptr %lp4
  %t59 = getelementptr { i64, ptr }, ptr %t58, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !27
  %t61 = getelementptr i64, ptr %t60, i64 0
  store i64 %t56, ptr %t61, !tbaa !34
  %t62 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t64 = extractvalue { i64, ptr } %t62, 0
  %t66 = load ptr, ptr %lp4
  %t67 = getelementptr { i64, ptr }, ptr %t66, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !27
  %t69 = getelementptr i64, ptr %t68, i64 1
  store i64 %t64, ptr %t69, !tbaa !34
  store i64 0, ptr %l5, !tbaa !24
  %t70 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t72 = extractvalue { i64, ptr } %t70, 0
  store i64 %t72, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t74 = load i64, ptr %l6, !tbaa !24
  %t75 = load i64, ptr %l5, !tbaa !24
  %t78 = icmp sgt i64 %t74, %t75
  br i1 %t78, label %bb17, label %bb18
bb17:
  %t80 = load i64, ptr %l7, !tbaa !24
  %t82 = icmp sgt i64 %t80, 0
  br i1 %t82, label %bb19, label %bb20
bb18:
  store i64 0, ptr %l53, !tbaa !24
  br label %bb22
bb19:
  %t84 = load i64, ptr %l6, !tbaa !24
  %t85 = load i64, ptr %l5, !tbaa !24
  %t88 = sub i64 %t84, %t85
  %t89 = load i64, ptr %l7, !tbaa !24
  %t92 = add i64 %t88, %t89
  %t94 = sub i64 %t92, 1
  %t95 = load i64, ptr %l7, !tbaa !24
  %t98 = sdiv i64 %t94, %t95
  store i64 %t98, ptr %l56, !tbaa !24
  br label %bb21
bb20:
  store i64 0, ptr %l56, !tbaa !24
  br label %bb21
bb21:
  %t100 = load i64, ptr %l56, !tbaa !24
  store i64 %t100, ptr %l53, !tbaa !24
  br label %bb22
bb22:
  %t101 = load i64, ptr %l53, !tbaa !24
  store i64 %t101, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb23
bb23:
  %t102 = load i64, ptr %l9, !tbaa !24
  %t103 = load i64, ptr %l8, !tbaa !24
  %t106 = icmp slt i64 %t102, %t103
  %t108 = xor i1 %t106, true
  br i1 %t108, label %bb24, label %bb25
bb24:
  br label %bb28
bb25:
  br label %bb26
bb26:
  %t110 = load i64, ptr %l5, !tbaa !24
  %t111 = load i64, ptr %l9, !tbaa !24
  %t112 = load i64, ptr %l7, !tbaa !24
  %t115 = mul i64 %t111, %t112
  %t118 = add i64 %t110, %t115
  store i64 %t118, ptr %l10, !tbaa !24
  %t120 = load i64, ptr %l10, !tbaa !24
  %t122 = add i64 2, %t120
  %t123 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t123, ptr %l76, !tbaa !27
  %t124 = load i64, ptr %l10, !tbaa !24
  %t126 = getelementptr { i64, ptr }, ptr %l76, i32 0, i32 1
  %t127 = load ptr, ptr %t126, !tbaa !27
  %t128 = getelementptr i64, ptr %t127, i64 %t124
  %t129 = load i64, ptr %t128, !tbaa !34
  %t131 = load ptr, ptr %lp4
  %t133 = getelementptr { i64, ptr }, ptr %t131, i32 0, i32 1
  %t134 = load ptr, ptr %t133, !tbaa !27
  %t135 = getelementptr i64, ptr %t134, i64 %t122
  store i64 %t129, ptr %t135, !tbaa !34
  br label %bb27
bb27:
  %t136 = load i64, ptr %l9, !tbaa !24
  %t138 = add i64 %t136, 1
  store i64 %t138, ptr %l9, !tbaa !24
  br label %bb23
bb28:
  %t140 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t142 = extractvalue { i64, ptr } %t140, 0
  %t144 = add i64 2, %t142
  store i64 %t144, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  %t146 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t148 = extractvalue { i64, ptr } %t146, 0
  store i64 %t148, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t150 = load i64, ptr %l13, !tbaa !24
  %t151 = load i64, ptr %l12, !tbaa !24
  %t154 = icmp sgt i64 %t150, %t151
  br i1 %t154, label %bb29, label %bb30
bb29:
  %t156 = load i64, ptr %l14, !tbaa !24
  %t158 = icmp sgt i64 %t156, 0
  br i1 %t158, label %bb31, label %bb32
bb30:
  store i64 0, ptr %l89, !tbaa !24
  br label %bb34
bb31:
  %t160 = load i64, ptr %l13, !tbaa !24
  %t161 = load i64, ptr %l12, !tbaa !24
  %t164 = sub i64 %t160, %t161
  %t165 = load i64, ptr %l14, !tbaa !24
  %t168 = add i64 %t164, %t165
  %t170 = sub i64 %t168, 1
  %t171 = load i64, ptr %l14, !tbaa !24
  %t174 = sdiv i64 %t170, %t171
  store i64 %t174, ptr %l92, !tbaa !24
  br label %bb33
bb32:
  store i64 0, ptr %l92, !tbaa !24
  br label %bb33
bb33:
  %t176 = load i64, ptr %l92, !tbaa !24
  store i64 %t176, ptr %l89, !tbaa !24
  br label %bb34
bb34:
  %t177 = load i64, ptr %l89, !tbaa !24
  store i64 %t177, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb35
bb35:
  %t178 = load i64, ptr %l16, !tbaa !24
  %t179 = load i64, ptr %l15, !tbaa !24
  %t182 = icmp slt i64 %t178, %t179
  %t184 = xor i1 %t182, true
  br i1 %t184, label %bb36, label %bb37
bb36:
  br label %bb40
bb37:
  br label %bb38
bb38:
  %t186 = load i64, ptr %l12, !tbaa !24
  %t187 = load i64, ptr %l16, !tbaa !24
  %t188 = load i64, ptr %l14, !tbaa !24
  %t191 = mul i64 %t187, %t188
  %t194 = add i64 %t186, %t191
  store i64 %t194, ptr %l17, !tbaa !24
  %t196 = load i64, ptr %l11, !tbaa !24
  %t197 = load i64, ptr %l17, !tbaa !24
  %t200 = add i64 %t196, %t197
  %t201 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t201, ptr %l113, !tbaa !27
  %t202 = load i64, ptr %l17, !tbaa !24
  %t204 = getelementptr { i64, ptr }, ptr %l113, i32 0, i32 1
  %t205 = load ptr, ptr %t204, !tbaa !27
  %t206 = getelementptr i64, ptr %t205, i64 %t202
  %t207 = load i64, ptr %t206, !tbaa !34
  %t209 = load ptr, ptr %lp4
  %t211 = getelementptr { i64, ptr }, ptr %t209, i32 0, i32 1
  %t212 = load ptr, ptr %t211, !tbaa !27
  %t213 = getelementptr i64, ptr %t212, i64 %t200
  store i64 %t207, ptr %t213, !tbaa !34
  br label %bb39
bb39:
  %t214 = load i64, ptr %l16, !tbaa !24
  %t216 = add i64 %t214, 1
  store i64 %t216, ptr %l16, !tbaa !24
  br label %bb35
bb40:
  %t218 = load ptr, ptr %lp4
  %t219 = load { i64, ptr }, ptr %t218, !tbaa !27
  %t220 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t222 = extractvalue { i64, ptr } %t220, 0
  call void @compiler_2ftypes_2esortRuns(ptr %v0, { i64, ptr } %t219, i64 2, i64 %t222, i64 1)
  br label %bb41
bb41:
  %t225 = load ptr, ptr %lp4
  %t226 = load { i64, ptr }, ptr %t225, !tbaa !27
  %t227 = load i64, ptr %l11, !tbaa !24
  %t228 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t230 = extractvalue { i64, ptr } %t228, 0
  %t232 = sdiv i64 %t230, 3
  call void @compiler_2ftypes_2esortRuns(ptr %v0, { i64, ptr } %t226, i64 %t227, i64 %t232, i64 3)
  br label %bb42
bb42:
  %t236 = load ptr, ptr %l0, !tbaa !29
  %t238 = getelementptr %"compiler/types:Table", ptr %t236, i32 0, i32 33
  %t239 = load ptr, ptr %lp4
  %t240 = load { i64, ptr }, ptr %t239, !tbaa !27
  %t243 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cArray_3cI64_3e_26_2c_20I64_3e_2eGet_3cArray_3cI64_3e_26_2c_20I64_3e(ptr %v0, ptr %v0, ptr %t238, { i64, ptr } %t240)
  %t244 = extractvalue { i32, i64 } %t243, 1
  %t245 = extractvalue { i32, i64 } %t243, 0
  store i32 %t245, ptr %l131
  %t246 = icmp ne i32 %t245, 0
  br i1 %t246, label %bb44, label %ok.247, !prof !99
ok.247:
  store i64 %t244, ptr %l130
  br label %bb43
bb43:
  %t248 = load i64, ptr %l130, !tbaa !24
  store i64 %t248, ptr %l126, !tbaa !24
  br label %bb46
bb44:
  br label %bb45
bb45:
  store i64 -1, ptr %l126, !tbaa !24
  br label %bb46
bb46:
  %t249 = load i64, ptr %l126, !tbaa !24
  store i64 %t249, ptr %l18, !tbaa !24
  %t250 = load i64, ptr %l18, !tbaa !24
  %t252 = icmp sge i64 %t250, 0
  br i1 %t252, label %bb47, label %bb48
bb47:
  %t254 = load i64, ptr %l18, !tbaa !24
  store i64 %t254, ptr %rv
  br label %ret
bb48:
  br label %bb49
bb49:
  %t256 = load ptr, ptr %l0, !tbaa !29
  %t258 = getelementptr %"compiler/types:Table", ptr %t256, i32 0, i32 32
  %t260 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e_2eLen_3cArray_3cI64_3e_26_3e(ptr %v0, ptr %t258)
  store i64 %t260, ptr %l137
  br label %bb50
bb50:
  %t261 = load i64, ptr %l137, !tbaa !24
  store i64 %t261, ptr %l18, !tbaa !24
  %t262 = load ptr, ptr %l0, !tbaa !29
  %t264 = getelementptr %"compiler/types:Table", ptr %t262, i32 0, i32 32
  %t265 = load ptr, ptr %lp4
  %t266 = load { i64, ptr }, ptr %t265, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e_2ePush_3cArray_3cI64_3e_26_3e(ptr %v0, ptr %v0, ptr %t264, { i64, ptr } %t266)
  br label %bb51
bb51:
  %t269 = load ptr, ptr %l0, !tbaa !29
  %t271 = getelementptr %"compiler/types:Table", ptr %t269, i32 0, i32 33
  %t272 = load ptr, ptr %lp4
  %t273 = load { i64, ptr }, ptr %t272, !tbaa !27
  %t274 = load i64, ptr %l18, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cArray_3cI64_3e_26_2c_20I64_3e_2ePut_3cArray_3cI64_3e_26_2c_20I64_3e(ptr %v0, ptr %v0, ptr %t271, { i64, ptr } %t273, i64 %t274)
  br label %bb52
bb52:
  %t278 = load i64, ptr %l18, !tbaa !24
  store i64 %t278, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRawBits(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l4 = alloca ptr
  %l7 = alloca i32
  %l9 = alloca { i64, ptr }
  %l10 = alloca i32
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/types:Table", ptr %t1, i32 0, i32 41
  store ptr %t3, ptr %l4, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t8 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t4, i32 %a1)
  store i32 %t8, ptr %l7
  br label %bb1
bb1:
  %t9 = load i32, ptr %l7, !tbaa !23
  %t10 = sext i32 %t9 to i64
  %t11 = load ptr, ptr %l4, !tbaa !29
  %t13 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3cI64_3e_26_3e_2eGet_3cI64_2c_20Array_3cI64_3e_26_3e(ptr %v0, ptr %v1, ptr %t11, i64 %t10)
  %t14 = extractvalue { i32, { i64, ptr } } %t13, 1
  %t15 = extractvalue { i32, { i64, ptr } } %t13, 0
  store i32 %t15, ptr %l10
  %t16 = icmp ne i32 %t15, 0
  br i1 %t16, label %bb3, label %ok.17, !prof !99
ok.17:
  store { i64, ptr } %t14, ptr %l9
  br label %bb2
bb2:
  %t18 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t18, ptr %l2, !tbaa !27
  br label %bb9
bb3:
  br label %bb4
bb4:
  %t19 = icmp sge i64 0, 0
  br i1 %t19, label %bb5, label %bb6
bb5:
  %t21 = icmp sle i64 0, 1152921504606846975
  br i1 %t21, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_188270a4fe73104b_f2e7e7a6752e702f)
  unreachable
bb7:
  %t23 = mul i64 0, 8
  %t24 = insertvalue { i64, ptr } undef, i64 0, 0
  %t25 = insertvalue { i64, ptr } %t24, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t25, ptr %l2, !tbaa !27
  br label %bb9
bb8:
  call void @__olang_check_failed(ptr @olang_loc_188270a4fe73104b_f2e7e7a6752e702f)
  unreachable
bb9:
  %t27 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t27, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRawType(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i32
  %l9 = alloca i32
  %l11 = alloca ptr
  %l14 = alloca i32
  %l16 = alloca i32
  %l17 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t1, i32 %t2)
  store i32 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t8 = trunc i64 18 to i32
  %t9 = icmp eq i32 %t6, %t8
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t13, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/types:Table", ptr %t15, i32 0, i32 40
  store ptr %t17, ptr %l11, !tbaa !29
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load i32, ptr %l1, !tbaa !23
  %t22 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t18, i32 %t19)
  store i32 %t22, ptr %l14
  br label %bb5
bb5:
  %t23 = load i32, ptr %l14, !tbaa !23
  %t24 = sext i32 %t23 to i64
  %t25 = load ptr, ptr %l11, !tbaa !29
  %t27 = call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aTypeId_3e__H9861f6f09602cf23d49075e82ac9429b(ptr %v0, ptr %t25, i64 %t24)
  %t28 = extractvalue { i32, i32 } %t27, 1
  %t29 = extractvalue { i32, i32 } %t27, 0
  store i32 %t29, ptr %l17
  %t30 = icmp ne i32 %t29, 0
  br i1 %t30, label %bb7, label %ok.31, !prof !99
ok.31:
  store i32 %t28, ptr %l16
  br label %bb6
bb6:
  %t32 = load i32, ptr %l16, !tbaa !23
  store i32 %t32, ptr %l9, !tbaa !23
  br label %bb9
bb7:
  br label %bb8
bb8:
  %t33 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t33, ptr %l9, !tbaa !23
  br label %bb9
bb9:
  %t35 = load i32, ptr %l9, !tbaa !23
  store i32 %t35, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReachesCode(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca %"compiler/types:codeWalk"
  %l4 = alloca %"compiler/types:codeWalk"
  %l7 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call %"compiler/types:codeWalk" @compiler_2ftypes_3acodeWalk_2ector(ptr %v0, ptr %s0, ptr %a0, i1 false)
  store %"compiler/types:codeWalk" %t3, ptr %l4
  br label %bb1
bb1:
  %t4 = load %"compiler/types:codeWalk", ptr %l4
  store %"compiler/types:codeWalk" %t4, ptr %l2
  %t8 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3acodeWalk_2ereaches(ptr %s0, ptr %v0, ptr %l2, i32 %a1)
  store i1 %t8, ptr %l7
  br label %bb2
bb2:
  call void @__olang_scope_close(ptr %s0)
  %t9 = load i1, ptr %l7, !tbaa !21
  store i1 %t9, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReachesWrite(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca %"compiler/types:codeWalk"
  %l4 = alloca %"compiler/types:codeWalk"
  %l7 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call %"compiler/types:codeWalk" @compiler_2ftypes_3acodeWalk_2ector(ptr %v0, ptr %s0, ptr %a0, i1 true)
  store %"compiler/types:codeWalk" %t3, ptr %l4
  br label %bb1
bb1:
  %t4 = load %"compiler/types:codeWalk", ptr %l4
  store %"compiler/types:codeWalk" %t4, ptr %l2
  %t8 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3acodeWalk_2ereaches(ptr %s0, ptr %v0, ptr %l2, i32 %a1)
  store i1 %t8, ptr %l7
  br label %bb2
bb2:
  call void @__olang_scope_close(ptr %s0)
  %t9 = load i1, ptr %l7, !tbaa !21
  store i1 %t9, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResults(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %lp4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l13 = alloca i32
  %l22 = alloca i32
  %l25 = alloca ptr
  %l28 = alloca i32
  %l29 = alloca { i64, ptr }
  %l31 = alloca i64
  %l40 = alloca i64
  %l43 = alloca i64
  %l62 = alloca { i64, ptr }
  %l69 = alloca [1 x i32]
  %l70 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t1, i32 %a1)
  store i32 %t5, ptr %l13
  br label %bb1
bb1:
  %t6 = load i32, ptr %l13, !tbaa !23
  store i32 %t6, ptr %l2, !tbaa !23
  %t7 = load i32, ptr %l2, !tbaa !23
  %t8 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t11 = icmp eq i32 %t7, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = icmp sge i64 0, 0
  br i1 %t13, label %bb4, label %bb5
bb3:
  br label %bb8
bb4:
  %t15 = icmp sle i64 0, 2305843009213693951
  br i1 %t15, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_f7b42ec29d1607_26e89eedc9b3128b)
  unreachable
bb6:
  %t17 = mul i64 0, 4
  %t18 = insertvalue { i64, ptr } undef, i64 0, 0
  %t19 = insertvalue { i64, ptr } %t18, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t19, ptr %rv
  br label %ret
bb7:
  call void @__olang_check_failed(ptr @olang_loc_f7b42ec29d1607_26e89eedc9b3128b)
  unreachable
bb8:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load i32, ptr %l2, !tbaa !23
  %t25 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t21, i32 %t22)
  store i32 %t25, ptr %l22
  br label %bb9
bb9:
  %t26 = load i32, ptr %l22, !range !{i32 0, i32 33}
  %t28 = trunc i64 22 to i32
  %t29 = icmp eq i32 %t26, %t28
  br i1 %t29, label %bb10, label %bb11
bb10:
  %t31 = load ptr, ptr %l0, !tbaa !29
  store ptr %t31, ptr %l25, !tbaa !29
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load i32, ptr %l2, !tbaa !23
  %t36 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t32, i32 %t33)
  store i32 %t36, ptr %l28
  br label %bb12
bb11:
  br label %bb30
bb12:
  %t37 = load ptr, ptr %l25, !tbaa !29
  %t38 = load i32, ptr %l28, !tbaa !23
  %t39 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t37, i32 %t38)
  store { i64, ptr } %t39, ptr %l29
  br label %bb13
bb13:
  %t40 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t40, ptr %l3, !tbaa !27
  %t41 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t41, 0
  store i64 %t43, ptr %l31, !tbaa !24
  %t44 = load i64, ptr %l31, !tbaa !24
  %t45 = icmp sge i64 %t44, 0
  br i1 %t45, label %bb14, label %bb15
bb14:
  %t47 = load i64, ptr %l31, !tbaa !24
  %t48 = icmp sle i64 %t47, 2305843009213693951
  br i1 %t48, label %bb16, label %bb17
bb15:
  call void @__olang_check_failed(ptr @olang_loc_2df495a001b30f12_f15d21f3e8677f6)
  unreachable
bb16:
  %t50 = load i64, ptr %l31, !tbaa !24
  %t51 = mul i64 %t50, 4
  %t52 = call ptr @__olang_scope_alloc_zeroed(ptr %v1, i64 %t51)
  %t53 = insertvalue { i64, ptr } undef, i64 %t50, 0
  %t54 = insertvalue { i64, ptr } %t53, ptr %t52, 1
  %t55 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t55, ptr %lp4
  %t57 = load ptr, ptr %lp4
  store { i64, ptr } %t54, ptr %t57, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t58 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t60 = extractvalue { i64, ptr } %t58, 0
  store i64 %t60, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t62 = load i64, ptr %l6, !tbaa !24
  %t63 = load i64, ptr %l5, !tbaa !24
  %t66 = icmp sgt i64 %t62, %t63
  br i1 %t66, label %bb18, label %bb19
bb17:
  call void @__olang_check_failed(ptr @olang_loc_2df495a001b30f12_f15d21f3e8677f6)
  unreachable
bb18:
  %t68 = load i64, ptr %l7, !tbaa !24
  %t70 = icmp sgt i64 %t68, 0
  br i1 %t70, label %bb20, label %bb21
bb19:
  store i64 0, ptr %l40, !tbaa !24
  br label %bb23
bb20:
  %t72 = load i64, ptr %l6, !tbaa !24
  %t73 = load i64, ptr %l5, !tbaa !24
  %t76 = sub i64 %t72, %t73
  %t77 = load i64, ptr %l7, !tbaa !24
  %t80 = add i64 %t76, %t77
  %t82 = sub i64 %t80, 1
  %t83 = load i64, ptr %l7, !tbaa !24
  %t86 = sdiv i64 %t82, %t83
  store i64 %t86, ptr %l43, !tbaa !24
  br label %bb22
bb21:
  store i64 0, ptr %l43, !tbaa !24
  br label %bb22
bb22:
  %t88 = load i64, ptr %l43, !tbaa !24
  store i64 %t88, ptr %l40, !tbaa !24
  br label %bb23
bb23:
  %t89 = load i64, ptr %l40, !tbaa !24
  store i64 %t89, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb24
bb24:
  %t90 = load i64, ptr %l9, !tbaa !24
  %t91 = load i64, ptr %l8, !tbaa !24
  %t94 = icmp slt i64 %t90, %t91
  %t96 = xor i1 %t94, true
  br i1 %t96, label %bb25, label %bb26
bb25:
  br label %bb29
bb26:
  br label %bb27
bb27:
  %t98 = load i64, ptr %l5, !tbaa !24
  %t99 = load i64, ptr %l9, !tbaa !24
  %t100 = load i64, ptr %l7, !tbaa !24
  %t103 = mul i64 %t99, %t100
  %t106 = add i64 %t98, %t103
  store i64 %t106, ptr %l10, !tbaa !24
  %t108 = load i64, ptr %l10, !tbaa !24
  %t109 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t109, ptr %l62, !tbaa !27
  %t110 = load i64, ptr %l10, !tbaa !24
  %t112 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !27
  %t114 = getelementptr i32, ptr %t113, i64 %t110
  %t115 = load i32, ptr %t114, !tbaa !33
  %t117 = load ptr, ptr %lp4
  %t119 = getelementptr { i64, ptr }, ptr %t117, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !27
  %t121 = getelementptr i32, ptr %t120, i64 %t108
  store i32 %t115, ptr %t121, !tbaa !33
  br label %bb28
bb28:
  %t122 = load i64, ptr %l9, !tbaa !24
  %t124 = add i64 %t122, 1
  store i64 %t124, ptr %l9, !tbaa !24
  br label %bb24
bb29:
  %t126 = load ptr, ptr %lp4
  %t127 = load { i64, ptr }, ptr %t126, !tbaa !27
  store { i64, ptr } %t127, ptr %rv
  br label %ret
bb30:
  %t129 = load i32, ptr %l2, !tbaa !23
  %t131 = insertvalue [1 x i32] undef, i32 %t129, 0
  store [1 x i32] %t131, ptr %l69
  %t132 = mul i64 1, 4
  %t133 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t132)
  %t134 = insertvalue { i64, ptr } undef, i64 1, 0
  %t135 = insertvalue { i64, ptr } %t134, ptr %t133, 1
  store { i64, ptr } %t135, ptr %l70, !tbaa !27
  %t136 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !27
  %t138 = mul i64 1, 4
  call void @llvm.memmove.p0.p0.i64(ptr %t137, ptr %l69, i64 %t138, i1 false)
  %t139 = load { i64, ptr }, ptr %l70, !tbaa !27
  store { i64, ptr } %t139, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRetLlvm(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca i1
  %l6 = alloca i32
  %l7 = alloca ptr
  %l10 = alloca i32
  %l11 = alloca { i64, ptr }
  %l17 = alloca i1
  %l20 = alloca i1
  %l22 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l27 = alloca i64
  %l28 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l39 = alloca { i64, ptr }
  %l40 = alloca i64
  %l41 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t1, i32 %t2)
  store i32 %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load i32, ptr %l6, !tbaa !23
  store i32 %t6, ptr %l2, !tbaa !23
  %t7 = load ptr, ptr %l0, !tbaa !29
  store ptr %t7, ptr %l7, !tbaa !29
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t9 = load i32, ptr %l1, !tbaa !23
  %t12 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t8, i32 %t9)
  store i32 %t12, ptr %l10
  br label %bb2
bb2:
  %t13 = load ptr, ptr %l7, !tbaa !29
  %t14 = load i32, ptr %l10, !tbaa !23
  %t15 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t13, i32 %t14)
  store { i64, ptr } %t15, ptr %l11
  br label %bb3
bb3:
  %t16 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t16, 0
  %t19 = icmp sgt i64 %t17, 0
  store i1 %t19, ptr %l3, !tbaa !21
  %t21 = load i32, ptr %l2, !tbaa !23
  %t22 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t25 = icmp ne i32 %t21, %t22
  br i1 %t25, label %bb4, label %bb5
bb4:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load i32, ptr %l2, !tbaa !23
  %t31 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eViaMemory(ptr %v0, ptr %t27, i32 %t28)
  store i1 %t31, ptr %l20
  br label %bb6
bb5:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb7
bb6:
  %t32 = load i1, ptr %l20, !tbaa !21
  store i1 %t32, ptr %l17, !tbaa !21
  br label %bb7
bb7:
  %t33 = load i1, ptr %l17, !tbaa !21
  br i1 %t33, label %bb8, label %bb9
bb8:
  %t34 = load i1, ptr %l3, !tbaa !21
  br i1 %t34, label %bb10, label %bb11
bb9:
  br label %bb13
bb10:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d8, i32 0, i32 1) }, ptr %l23, !tbaa !27
  %t36 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t36, ptr %l22, !tbaa !27
  br label %bb12
bb11:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d9, i32 0, i32 1) }, ptr %l25, !tbaa !27
  %t38 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t38, ptr %l22, !tbaa !27
  br label %bb12
bb12:
  %t40 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t40, 0
  store i64 %t41, ptr %l27, !tbaa !24
  %t42 = load i64, ptr %l27, !tbaa !24
  %t43 = mul i64 %t42, 1
  %t44 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t43)
  %t45 = insertvalue { i64, ptr } undef, i64 %t42, 0
  %t46 = insertvalue { i64, ptr } %t45, ptr %t44, 1
  store { i64, ptr } %t46, ptr %l28, !tbaa !27
  %t47 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !27
  %t49 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !27
  %t51 = load i64, ptr %l27, !tbaa !24
  %t52 = mul i64 %t51, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t48, ptr %t50, i64 %t52, i1 false)
  %t53 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t53, ptr %l22, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t54 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t54, ptr %rv
  br label %ret
bb13:
  %t55 = load i1, ptr %l3, !tbaa !21
  %t57 = xor i1 %t55, true
  br i1 %t57, label %bb14, label %bb15
bb14:
  store %olang.scope zeroinitializer, ptr %s2
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t60 = load i32, ptr %l2, !tbaa !23
  %t63 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLlvm(ptr %v0, ptr %s2, ptr %v2, ptr %t59, i32 %t60)
  store { i64, ptr } %t63, ptr %l33
  br label %bb16
bb15:
  br label %bb17
bb16:
  %t64 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t65 = extractvalue { i64, ptr } %t64, 1
  %t66 = extractvalue { i64, ptr } %t64, 0
  %t67 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t66)
  call void @olang_textcopy(ptr %t67, ptr %t65, i64 %t66)
  %t68 = insertvalue { i64, ptr } undef, i64 %t66, 0
  %t69 = insertvalue { i64, ptr } %t68, ptr %t67, 1
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t69, ptr %rv
  br label %ret
bb17:
  %t71 = load i32, ptr %l2, !tbaa !23
  %t72 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t75 = icmp eq i32 %t71, %t72
  br i1 %t75, label %bb18, label %bb19
bb18:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d10, i32 0, i32 1) }, ptr %l38, !tbaa !27
  %t77 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t77, ptr %l39, !tbaa !27
  %t78 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t79 = extractvalue { i64, ptr } %t78, 0
  store i64 %t79, ptr %l40, !tbaa !24
  %t80 = load i64, ptr %l40, !tbaa !24
  %t81 = mul i64 %t80, 1
  %t82 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t81)
  %t83 = insertvalue { i64, ptr } undef, i64 %t80, 0
  %t84 = insertvalue { i64, ptr } %t83, ptr %t82, 1
  store { i64, ptr } %t84, ptr %l41, !tbaa !27
  %t85 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !27
  %t87 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !27
  %t89 = load i64, ptr %l40, !tbaa !24
  %t90 = mul i64 %t89, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t86, ptr %t88, i64 %t90, i1 false)
  %t91 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t91, ptr %l39, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t92 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t92, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t94 = load i32, ptr %l2, !tbaa !23
  %t97 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLlvm(ptr %v0, ptr %s0, ptr %v2, ptr %t93, i32 %t94)
  store { i64, ptr } %t97, ptr %l44
  br label %bb21
bb21:
  %t98 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t99 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  %t100 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t101 = extractvalue { i64, ptr } %t100, 1
  %t102 = extractvalue { i64, ptr } %t100, 0
  %t103 = add i64 %t99, %t102
  %t104 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t105 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  %t106 = add i64 %t103, %t105
  %t107 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t106)
  call void @olang_textcopy(ptr %t107, ptr %t98, i64 %t99)
  %t108 = getelementptr i8, ptr %t107, i64 %t99
  call void @olang_textcopy(ptr %t108, ptr %t101, i64 %t102)
  %t109 = getelementptr i8, ptr %t108, i64 %t102
  call void @olang_textcopy(ptr %t109, ptr %t104, i64 %t105)
  %t110 = insertvalue { i64, ptr } undef, i64 %t106, 0
  %t111 = insertvalue { i64, ptr } %t110, ptr %t107, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t111, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRole(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l4 = alloca ptr
  %l7 = alloca i32
  %l9 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca { i64, ptr }
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/types:Table", ptr %t1, i32 0, i32 28
  store ptr %t3, ptr %l4, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t8 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesOf(ptr %v0, ptr %t4, i32 %a1)
  store i32 %t8, ptr %l7
  br label %bb1
bb1:
  %t9 = load i32, ptr %l7, !tbaa !23
  %t10 = sext i32 %t9 to i64
  %t11 = load ptr, ptr %l4, !tbaa !29
  %t13 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e_2eAt_3cArray_3cI64_3e_26_3e(ptr %v0, ptr %v0, ptr %t11, i64 %t10)
  store { i64, ptr } %t13, ptr %l9
  br label %bb2
bb2:
  %t14 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t14, ptr %l2, !tbaa !27
  %t15 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t15, 0
  %t19 = icmp sgt i64 %t17, 0
  br i1 %t19, label %bb3, label %bb4
bb3:
  %t21 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t21, ptr %l14, !tbaa !27
  %t22 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = getelementptr i64, ptr %t23, i64 0
  %t25 = load i64, ptr %t24, !tbaa !34
  store i64 %t25, ptr %l13, !tbaa !24
  br label %bb5
bb4:
  %t27 = load i64, ptr @G_2ecompiler_2ftypes_2eRoleFn, !tbaa !24
  store i64 %t27, ptr %l13, !tbaa !24
  br label %bb5
bb5:
  %t29 = load i64, ptr %l13, !tbaa !24
  store i64 %t29, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l5 = alloca i32
  %l8 = alloca i32
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t1, i32 %a1)
  store i32 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t6, i32 %a2)
  store i32 %t10, ptr %l8
  br label %bb2
bb2:
  %t11 = load i32, ptr %l5, !tbaa !23
  %t12 = load i32, ptr %l8, !tbaa !23
  %t13 = icmp eq i32 %t11, %t12
  store i1 %t13, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesFit(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l33 = alloca i1
  %l36 = alloca i32
  %l37 = alloca ptr
  %l40 = alloca i32
  %l42 = alloca i1
  %l47 = alloca i32
  %l52 = alloca i64
  %l55 = alloca i64
  %l58 = alloca ptr
  %l61 = alloca i32
  %l62 = alloca { i64, ptr }
  %l63 = alloca ptr
  %l66 = alloca i32
  %l67 = alloca { i64, ptr }
  %l79 = alloca i64
  %l82 = alloca i64
  %l103 = alloca i64
  %l107 = alloca i64
  %l109 = alloca i1
  %l111 = alloca { i64, ptr }
  %l114 = alloca { i64, ptr }
  %l117 = alloca i1
  %l124 = alloca { i64, ptr }
  %l127 = alloca { i64, ptr }
  %l133 = alloca i64
  %l136 = alloca i64
  %l161 = alloca i64
  %l165 = alloca i64
  %l169 = alloca i1
  %l173 = alloca i1
  %l177 = alloca i1
  %l181 = alloca i1
  %l192 = alloca i1
  %l200 = alloca ptr
  %l203 = alloca i32
  %l206 = alloca i32
  %l207 = alloca i1
  %l210 = alloca ptr
  %l213 = alloca i32
  %l216 = alloca i32
  %l217 = alloca i1
  %l220 = alloca ptr
  %l223 = alloca i32
  %l224 = alloca { i64, ptr }
  %l225 = alloca ptr
  %l228 = alloca i32
  %l229 = alloca { i64, ptr }
  %l235 = alloca i64
  %l238 = alloca i64
  %l260 = alloca i1
  %l262 = alloca { i64, ptr }
  %l265 = alloca { i64, ptr }
  %l268 = alloca i1
  %s2 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l1, !tbaa !23
  %t2 = load i32, ptr %l2, !tbaa !23
  %t5 = icmp eq i32 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l33, !tbaa !21
  br label %bb6
bb2:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i32, ptr %l1, !tbaa !23
  %t11 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t7, i32 %t8)
  store i32 %t11, ptr %l36
  br label %bb3
bb3:
  store ptr %l36, ptr %l37, !tbaa !29
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load i32, ptr %l2, !tbaa !23
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t16, ptr %l40
  br label %bb4
bb4:
  %t17 = load ptr, ptr %l37, !tbaa !29
  %t19 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2ftypes_3aKind(ptr %t17, ptr %l40)
  store i1 %t19, ptr %l42
  br label %bb5
bb5:
  %t20 = load i1, ptr %l42, !tbaa !21
  %t21 = xor i1 %t20, true
  store i1 %t21, ptr %l33, !tbaa !21
  br label %bb6
bb6:
  %t23 = load i1, ptr %l33, !tbaa !21
  br i1 %t23, label %bb7, label %bb8
bb7:
  store i1 true, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load i32, ptr %l1, !tbaa !23
  %t29 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t25, i32 %t26)
  store i32 %t29, ptr %l47
  br label %bb10
bb10:
  %t30 = load i32, ptr %l47, !range !{i32 0, i32 33}
  store i32 %t30, ptr %l3
  %t31 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t33 = trunc i64 21 to i32
  %t34 = icmp eq i32 %t31, %t33
  br i1 %t34, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb85
bb13:
  store %olang.scope zeroinitializer, ptr %s2
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load i32, ptr %l1, !tbaa !23
  %t40 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRole(ptr %v0, ptr %t36, i32 %t37)
  store i64 %t40, ptr %l52
  br label %bb14
bb14:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load i32, ptr %l2, !tbaa !23
  %t45 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRole(ptr %v0, ptr %t41, i32 %t42)
  store i64 %t45, ptr %l55
  br label %bb15
bb15:
  %t46 = load i64, ptr %l52, !tbaa !24
  %t47 = load i64, ptr %l55, !tbaa !24
  %t48 = icmp ne i64 %t46, %t47
  br i1 %t48, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s2)
  store i1 false, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t51 = load ptr, ptr %l0, !tbaa !29
  store ptr %t51, ptr %l58, !tbaa !29
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load i32, ptr %l1, !tbaa !23
  %t56 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t52, i32 %t53)
  store i32 %t56, ptr %l61
  br label %bb19
bb19:
  %t57 = load ptr, ptr %l58, !tbaa !29
  %t58 = load i32, ptr %l61, !tbaa !23
  %t59 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t57, i32 %t58)
  store { i64, ptr } %t59, ptr %l62
  br label %bb20
bb20:
  %t60 = load { i64, ptr }, ptr %l62, !tbaa !27
  store { i64, ptr } %t60, ptr %l4, !tbaa !27
  %t61 = load ptr, ptr %l0, !tbaa !29
  store ptr %t61, ptr %l63, !tbaa !29
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load i32, ptr %l2, !tbaa !23
  %t66 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t62, i32 %t63)
  store i32 %t66, ptr %l66
  br label %bb21
bb21:
  %t67 = load ptr, ptr %l63, !tbaa !29
  %t68 = load i32, ptr %l66, !tbaa !23
  %t69 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t67, i32 %t68)
  store { i64, ptr } %t69, ptr %l67
  br label %bb22
bb22:
  %t70 = load { i64, ptr }, ptr %l67, !tbaa !27
  store { i64, ptr } %t70, ptr %l5, !tbaa !27
  %t71 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t73 = extractvalue { i64, ptr } %t71, 0
  %t74 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t76 = extractvalue { i64, ptr } %t74, 0
  %t79 = icmp ne i64 %t73, %t76
  br i1 %t79, label %bb23, label %bb24
bb23:
  call void @__olang_scope_close(ptr %s2)
  store i1 true, ptr %rv
  br label %ret
bb24:
  br label %bb25
bb25:
  store i64 0, ptr %l6, !tbaa !24
  %t82 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t84 = extractvalue { i64, ptr } %t82, 0
  store i64 %t84, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t86 = load i64, ptr %l7, !tbaa !24
  %t87 = load i64, ptr %l6, !tbaa !24
  %t90 = icmp sgt i64 %t86, %t87
  br i1 %t90, label %bb26, label %bb27
bb26:
  %t92 = load i64, ptr %l8, !tbaa !24
  %t94 = icmp sgt i64 %t92, 0
  br i1 %t94, label %bb28, label %bb29
bb27:
  store i64 0, ptr %l79, !tbaa !24
  br label %bb31
bb28:
  %t96 = load i64, ptr %l7, !tbaa !24
  %t97 = load i64, ptr %l6, !tbaa !24
  %t100 = sub i64 %t96, %t97
  %t101 = load i64, ptr %l8, !tbaa !24
  %t104 = add i64 %t100, %t101
  %t106 = sub i64 %t104, 1
  %t107 = load i64, ptr %l8, !tbaa !24
  %t110 = sdiv i64 %t106, %t107
  store i64 %t110, ptr %l82, !tbaa !24
  br label %bb30
bb29:
  store i64 0, ptr %l82, !tbaa !24
  br label %bb30
bb30:
  %t112 = load i64, ptr %l82, !tbaa !24
  store i64 %t112, ptr %l79, !tbaa !24
  br label %bb31
bb31:
  %t113 = load i64, ptr %l79, !tbaa !24
  store i64 %t113, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb32
bb32:
  %t114 = load i64, ptr %l10, !tbaa !24
  %t115 = load i64, ptr %l9, !tbaa !24
  %t118 = icmp slt i64 %t114, %t115
  %t120 = xor i1 %t118, true
  br i1 %t120, label %bb33, label %bb34
bb33:
  br label %bb46
bb34:
  br label %bb35
bb35:
  %t122 = load i64, ptr %l6, !tbaa !24
  %t123 = load i64, ptr %l10, !tbaa !24
  %t124 = load i64, ptr %l8, !tbaa !24
  %t127 = mul i64 %t123, %t124
  %t130 = add i64 %t122, %t127
  store i64 %t130, ptr %l11, !tbaa !24
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t133 = load i32, ptr %l1, !tbaa !23
  %t134 = load i64, ptr %l11, !tbaa !24
  %t138 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShareOf(ptr %v0, ptr %t132, i32 %t133, i64 %t134)
  store i64 %t138, ptr %l103
  br label %bb36
bb36:
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t140 = load i32, ptr %l2, !tbaa !23
  %t141 = load i64, ptr %l11, !tbaa !24
  %t145 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShareOf(ptr %v0, ptr %t139, i32 %t140, i64 %t141)
  store i64 %t145, ptr %l107
  br label %bb37
bb37:
  %t146 = load i64, ptr %l103, !tbaa !24
  %t147 = load i64, ptr %l107, !tbaa !24
  %t148 = icmp ne i64 %t146, %t147
  br i1 %t148, label %bb38, label %bb39
bb38:
  store i1 true, ptr %l109, !tbaa !21
  br label %bb41
bb39:
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t151 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t151, ptr %l111, !tbaa !27
  %t152 = load i64, ptr %l11, !tbaa !24
  %t154 = getelementptr { i64, ptr }, ptr %l111, i32 0, i32 1
  %t155 = load ptr, ptr %t154, !tbaa !27
  %t156 = getelementptr i32, ptr %t155, i64 %t152
  %t157 = load i32, ptr %t156, !tbaa !33
  %t158 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t158, ptr %l114, !tbaa !27
  %t159 = load i64, ptr %l11, !tbaa !24
  %t161 = getelementptr { i64, ptr }, ptr %l114, i32 0, i32 1
  %t162 = load ptr, ptr %t161, !tbaa !27
  %t163 = getelementptr i32, ptr %t162, i64 %t159
  %t164 = load i32, ptr %t163, !tbaa !33
  %t168 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesFit(ptr %v0, ptr %t150, i32 %t157, i32 %t164)
  store i1 %t168, ptr %l117
  br label %bb40
bb40:
  %t169 = load i1, ptr %l117, !tbaa !21
  %t170 = xor i1 %t169, true
  store i1 %t170, ptr %l109, !tbaa !21
  br label %bb41
bb41:
  %t172 = load i1, ptr %l109, !tbaa !21
  br i1 %t172, label %bb42, label %bb43
bb42:
  call void @__olang_scope_close(ptr %s2)
  store i1 false, ptr %rv
  br label %ret
bb43:
  br label %bb44
bb44:
  br label %bb45
bb45:
  %t174 = load i64, ptr %l10, !tbaa !24
  %t176 = add i64 %t174, 1
  store i64 %t176, ptr %l10, !tbaa !24
  br label %bb32
bb46:
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t179 = load i32, ptr %l1, !tbaa !23
  %t182 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResults(ptr %v0, ptr %s2, ptr %t178, i32 %t179)
  store { i64, ptr } %t182, ptr %l124
  br label %bb47
bb47:
  %t183 = load { i64, ptr }, ptr %l124, !tbaa !27
  store { i64, ptr } %t183, ptr %l12, !tbaa !27
  %t184 = load ptr, ptr %l0, !tbaa !29
  %t185 = load i32, ptr %l2, !tbaa !23
  %t188 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResults(ptr %v0, ptr %s2, ptr %t184, i32 %t185)
  store { i64, ptr } %t188, ptr %l127
  br label %bb48
bb48:
  %t189 = load { i64, ptr }, ptr %l127, !tbaa !27
  store { i64, ptr } %t189, ptr %l13, !tbaa !27
  store i64 0, ptr %l14, !tbaa !24
  %t190 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t192 = extractvalue { i64, ptr } %t190, 0
  store i64 %t192, ptr %l15, !tbaa !24
  store i64 1, ptr %l16, !tbaa !24
  %t194 = load i64, ptr %l15, !tbaa !24
  %t195 = load i64, ptr %l14, !tbaa !24
  %t198 = icmp sgt i64 %t194, %t195
  br i1 %t198, label %bb49, label %bb50
bb49:
  %t200 = load i64, ptr %l16, !tbaa !24
  %t202 = icmp sgt i64 %t200, 0
  br i1 %t202, label %bb51, label %bb52
bb50:
  store i64 0, ptr %l133, !tbaa !24
  br label %bb54
bb51:
  %t204 = load i64, ptr %l15, !tbaa !24
  %t205 = load i64, ptr %l14, !tbaa !24
  %t208 = sub i64 %t204, %t205
  %t209 = load i64, ptr %l16, !tbaa !24
  %t212 = add i64 %t208, %t209
  %t214 = sub i64 %t212, 1
  %t215 = load i64, ptr %l16, !tbaa !24
  %t218 = sdiv i64 %t214, %t215
  store i64 %t218, ptr %l136, !tbaa !24
  br label %bb53
bb52:
  store i64 0, ptr %l136, !tbaa !24
  br label %bb53
bb53:
  %t220 = load i64, ptr %l136, !tbaa !24
  store i64 %t220, ptr %l133, !tbaa !24
  br label %bb54
bb54:
  %t221 = load i64, ptr %l133, !tbaa !24
  store i64 %t221, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  br label %bb55
bb55:
  %t222 = load i64, ptr %l18, !tbaa !24
  %t223 = load i64, ptr %l17, !tbaa !24
  %t226 = icmp slt i64 %t222, %t223
  %t228 = xor i1 %t226, true
  br i1 %t228, label %bb56, label %bb57
bb56:
  br label %bb84
bb57:
  br label %bb58
bb58:
  %t230 = load i64, ptr %l14, !tbaa !24
  %t231 = load i64, ptr %l18, !tbaa !24
  %t232 = load i64, ptr %l16, !tbaa !24
  %t235 = mul i64 %t231, %t232
  %t238 = add i64 %t230, %t235
  store i64 %t238, ptr %l19, !tbaa !24
  %t240 = load i64, ptr %l19, !tbaa !24
  %t241 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t243 = extractvalue { i64, ptr } %t241, 0
  %t246 = icmp sge i64 %t240, %t243
  br i1 %t246, label %bb59, label %bb60
bb59:
  br label %bb84
bb60:
  br label %bb61
bb61:
  %t248 = load ptr, ptr %l0, !tbaa !29
  %t249 = load i32, ptr %l1, !tbaa !23
  %t250 = load i64, ptr %l19, !tbaa !24
  %t254 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResultFrom(ptr %v0, ptr %t248, i32 %t249, i64 %t250)
  store i64 %t254, ptr %l161
  br label %bb62
bb62:
  %t255 = load i64, ptr %l161, !tbaa !24
  store i64 %t255, ptr %l20, !tbaa !24
  %t256 = load ptr, ptr %l0, !tbaa !29
  %t257 = load i32, ptr %l2, !tbaa !23
  %t258 = load i64, ptr %l19, !tbaa !24
  %t262 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResultFrom(ptr %v0, ptr %t256, i32 %t257, i64 %t258)
  store i64 %t262, ptr %l165
  br label %bb63
bb63:
  %t263 = load i64, ptr %l165, !tbaa !24
  store i64 %t263, ptr %l21, !tbaa !24
  %t264 = load i64, ptr %l20, !tbaa !24
  %t265 = load i64, ptr %l21, !tbaa !24
  %t268 = icmp ne i64 %t264, %t265
  br i1 %t268, label %bb64, label %bb65
bb64:
  %t270 = load i64, ptr %l20, !tbaa !24
  %t271 = load i64, ptr @G_2ecompiler_2ftypes_2eOwnScope, !tbaa !24
  %t274 = icmp eq i64 %t270, %t271
  br i1 %t274, label %bb66, label %bb67
bb65:
  store i1 false, ptr %l169, !tbaa !21
  br label %bb75
bb66:
  store i1 true, ptr %l173, !tbaa !21
  br label %bb68
bb67:
  %t276 = load i64, ptr %l20, !tbaa !24
  %t277 = load i64, ptr @G_2ecompiler_2ftypes_2eFromTypeVar, !tbaa !24
  %t280 = icmp eq i64 %t276, %t277
  store i1 %t280, ptr %l173, !tbaa !21
  br label %bb68
bb68:
  %t282 = load i1, ptr %l173, !tbaa !21
  br i1 %t282, label %bb69, label %bb70
bb69:
  %t283 = load i64, ptr %l21, !tbaa !24
  %t284 = load i64, ptr @G_2ecompiler_2ftypes_2eOwnScope, !tbaa !24
  %t287 = icmp eq i64 %t283, %t284
  br i1 %t287, label %bb71, label %bb72
bb70:
  store i1 false, ptr %l177, !tbaa !21
  br label %bb74
bb71:
  store i1 true, ptr %l181, !tbaa !21
  br label %bb73
bb72:
  %t289 = load i64, ptr %l21, !tbaa !24
  %t290 = load i64, ptr @G_2ecompiler_2ftypes_2eFromTypeVar, !tbaa !24
  %t293 = icmp eq i64 %t289, %t290
  store i1 %t293, ptr %l181, !tbaa !21
  br label %bb73
bb73:
  %t295 = load i1, ptr %l181, !tbaa !21
  store i1 %t295, ptr %l177, !tbaa !21
  br label %bb74
bb74:
  %t296 = load i1, ptr %l177, !tbaa !21
  %t297 = xor i1 %t296, true
  store i1 %t297, ptr %l169, !tbaa !21
  br label %bb75
bb75:
  %t299 = load i1, ptr %l169, !tbaa !21
  br i1 %t299, label %bb76, label %bb77
bb76:
  call void @__olang_scope_close(ptr %s2)
  store i1 false, ptr %rv
  br label %ret
bb77:
  br label %bb78
bb78:
  %t301 = load ptr, ptr %l0, !tbaa !29
  %t302 = load i64, ptr %l19, !tbaa !24
  %t304 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t305 = load ptr, ptr %t304, !tbaa !27
  %t306 = getelementptr i32, ptr %t305, i64 %t302
  %t307 = load i32, ptr %t306, !tbaa !33
  %t308 = load i64, ptr %l19, !tbaa !24
  %t310 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t311 = load ptr, ptr %t310, !tbaa !27
  %t312 = getelementptr i32, ptr %t311, i64 %t308
  %t313 = load i32, ptr %t312, !tbaa !33
  %t317 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesFit(ptr %v0, ptr %t301, i32 %t307, i32 %t313)
  store i1 %t317, ptr %l192
  br label %bb79
bb79:
  %t318 = load i1, ptr %l192, !tbaa !21
  %t319 = xor i1 %t318, true
  br i1 %t319, label %bb80, label %bb81
bb80:
  call void @__olang_scope_close(ptr %s2)
  store i1 false, ptr %rv
  br label %ret
bb81:
  br label %bb82
bb82:
  br label %bb83
bb83:
  %t322 = load i64, ptr %l18, !tbaa !24
  %t324 = add i64 %t322, 1
  store i64 %t324, ptr %l18, !tbaa !24
  br label %bb55
bb84:
  call void @__olang_scope_close(ptr %s2)
  store i1 true, ptr %rv
  br label %ret
bb85:
  %t327 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t329 = trunc i64 19 to i32
  %t330 = icmp eq i32 %t327, %t329
  br i1 %t330, label %bb86, label %bb87
bb86:
  br label %bb88
bb87:
  br label %bb92
bb88:
  %t332 = load ptr, ptr %l0, !tbaa !29
  store ptr %t332, ptr %l200, !tbaa !29
  %t333 = load ptr, ptr %l0, !tbaa !29
  %t334 = load i32, ptr %l1, !tbaa !23
  %t337 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t333, i32 %t334)
  store i32 %t337, ptr %l203
  br label %bb89
bb89:
  %t338 = load ptr, ptr %l0, !tbaa !29
  %t339 = load i32, ptr %l2, !tbaa !23
  %t342 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t338, i32 %t339)
  store i32 %t342, ptr %l206
  br label %bb90
bb90:
  %t343 = load ptr, ptr %l200, !tbaa !29
  %t344 = load i32, ptr %l203, !tbaa !23
  %t345 = load i32, ptr %l206, !tbaa !23
  %t346 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesFit(ptr %v0, ptr %t343, i32 %t344, i32 %t345)
  store i1 %t346, ptr %l207
  br label %bb91
bb91:
  %t347 = load i1, ptr %l207, !tbaa !21
  store i1 %t347, ptr %rv
  br label %ret
bb92:
  %t348 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t350 = trunc i64 20 to i32
  %t351 = icmp eq i32 %t348, %t350
  br i1 %t351, label %bb93, label %bb94
bb93:
  br label %bb95
bb94:
  br label %bb99
bb95:
  %t353 = load ptr, ptr %l0, !tbaa !29
  store ptr %t353, ptr %l210, !tbaa !29
  %t354 = load ptr, ptr %l0, !tbaa !29
  %t355 = load i32, ptr %l1, !tbaa !23
  %t358 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t354, i32 %t355)
  store i32 %t358, ptr %l213
  br label %bb96
bb96:
  %t359 = load ptr, ptr %l0, !tbaa !29
  %t360 = load i32, ptr %l2, !tbaa !23
  %t363 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t359, i32 %t360)
  store i32 %t363, ptr %l216
  br label %bb97
bb97:
  %t364 = load ptr, ptr %l210, !tbaa !29
  %t365 = load i32, ptr %l213, !tbaa !23
  %t366 = load i32, ptr %l216, !tbaa !23
  %t367 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesFit(ptr %v0, ptr %t364, i32 %t365, i32 %t366)
  store i1 %t367, ptr %l217
  br label %bb98
bb98:
  %t368 = load i1, ptr %l217, !tbaa !21
  store i1 %t368, ptr %rv
  br label %ret
bb99:
  %t369 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t371 = trunc i64 22 to i32
  %t372 = icmp eq i32 %t369, %t371
  br i1 %t372, label %bb100, label %bb101
bb100:
  br label %bb102
bb101:
  br label %bb126
bb102:
  %t374 = load ptr, ptr %l0, !tbaa !29
  store ptr %t374, ptr %l220, !tbaa !29
  %t375 = load ptr, ptr %l0, !tbaa !29
  %t376 = load i32, ptr %l1, !tbaa !23
  %t379 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t375, i32 %t376)
  store i32 %t379, ptr %l223
  br label %bb103
bb103:
  %t380 = load ptr, ptr %l220, !tbaa !29
  %t381 = load i32, ptr %l223, !tbaa !23
  %t382 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t380, i32 %t381)
  store { i64, ptr } %t382, ptr %l224
  br label %bb104
bb104:
  %t383 = load { i64, ptr }, ptr %l224, !tbaa !27
  store { i64, ptr } %t383, ptr %l22, !tbaa !27
  %t384 = load ptr, ptr %l0, !tbaa !29
  store ptr %t384, ptr %l225, !tbaa !29
  %t385 = load ptr, ptr %l0, !tbaa !29
  %t386 = load i32, ptr %l2, !tbaa !23
  %t389 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t385, i32 %t386)
  store i32 %t389, ptr %l228
  br label %bb105
bb105:
  %t390 = load ptr, ptr %l225, !tbaa !29
  %t391 = load i32, ptr %l228, !tbaa !23
  %t392 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t390, i32 %t391)
  store { i64, ptr } %t392, ptr %l229
  br label %bb106
bb106:
  %t393 = load { i64, ptr }, ptr %l229, !tbaa !27
  store { i64, ptr } %t393, ptr %l23, !tbaa !27
  store i64 0, ptr %l24, !tbaa !24
  %t394 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t396 = extractvalue { i64, ptr } %t394, 0
  store i64 %t396, ptr %l25, !tbaa !24
  store i64 1, ptr %l26, !tbaa !24
  %t398 = load i64, ptr %l25, !tbaa !24
  %t399 = load i64, ptr %l24, !tbaa !24
  %t402 = icmp sgt i64 %t398, %t399
  br i1 %t402, label %bb107, label %bb108
bb107:
  %t404 = load i64, ptr %l26, !tbaa !24
  %t406 = icmp sgt i64 %t404, 0
  br i1 %t406, label %bb109, label %bb110
bb108:
  store i64 0, ptr %l235, !tbaa !24
  br label %bb112
bb109:
  %t408 = load i64, ptr %l25, !tbaa !24
  %t409 = load i64, ptr %l24, !tbaa !24
  %t412 = sub i64 %t408, %t409
  %t413 = load i64, ptr %l26, !tbaa !24
  %t416 = add i64 %t412, %t413
  %t418 = sub i64 %t416, 1
  %t419 = load i64, ptr %l26, !tbaa !24
  %t422 = sdiv i64 %t418, %t419
  store i64 %t422, ptr %l238, !tbaa !24
  br label %bb111
bb110:
  store i64 0, ptr %l238, !tbaa !24
  br label %bb111
bb111:
  %t424 = load i64, ptr %l238, !tbaa !24
  store i64 %t424, ptr %l235, !tbaa !24
  br label %bb112
bb112:
  %t425 = load i64, ptr %l235, !tbaa !24
  store i64 %t425, ptr %l27, !tbaa !24
  store i64 0, ptr %l28, !tbaa !24
  br label %bb113
bb113:
  %t426 = load i64, ptr %l28, !tbaa !24
  %t427 = load i64, ptr %l27, !tbaa !24
  %t430 = icmp slt i64 %t426, %t427
  %t432 = xor i1 %t430, true
  br i1 %t432, label %bb114, label %bb115
bb114:
  br label %bb125
bb115:
  br label %bb116
bb116:
  %t434 = load i64, ptr %l24, !tbaa !24
  %t435 = load i64, ptr %l28, !tbaa !24
  %t436 = load i64, ptr %l26, !tbaa !24
  %t439 = mul i64 %t435, %t436
  %t442 = add i64 %t434, %t439
  store i64 %t442, ptr %l29, !tbaa !24
  %t444 = load i64, ptr %l29, !tbaa !24
  %t445 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t447 = extractvalue { i64, ptr } %t445, 0
  %t450 = icmp slt i64 %t444, %t447
  br i1 %t450, label %bb117, label %bb118
bb117:
  %t452 = load ptr, ptr %l0, !tbaa !29
  %t453 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t453, ptr %l262, !tbaa !27
  %t454 = load i64, ptr %l29, !tbaa !24
  %t456 = getelementptr { i64, ptr }, ptr %l262, i32 0, i32 1
  %t457 = load ptr, ptr %t456, !tbaa !27
  %t458 = getelementptr i32, ptr %t457, i64 %t454
  %t459 = load i32, ptr %t458, !tbaa !33
  %t460 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t460, ptr %l265, !tbaa !27
  %t461 = load i64, ptr %l29, !tbaa !24
  %t463 = getelementptr { i64, ptr }, ptr %l265, i32 0, i32 1
  %t464 = load ptr, ptr %t463, !tbaa !27
  %t465 = getelementptr i32, ptr %t464, i64 %t461
  %t466 = load i32, ptr %t465, !tbaa !33
  %t470 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesFit(ptr %v0, ptr %t452, i32 %t459, i32 %t466)
  store i1 %t470, ptr %l268
  br label %bb119
bb118:
  store i1 false, ptr %l260, !tbaa !21
  br label %bb120
bb119:
  %t471 = load i1, ptr %l268, !tbaa !21
  %t472 = xor i1 %t471, true
  store i1 %t472, ptr %l260, !tbaa !21
  br label %bb120
bb120:
  %t474 = load i1, ptr %l260, !tbaa !21
  br i1 %t474, label %bb121, label %bb122
bb121:
  store i1 false, ptr %rv
  br label %ret
bb122:
  br label %bb123
bb123:
  br label %bb124
bb124:
  %t476 = load i64, ptr %l28, !tbaa !24
  %t478 = add i64 %t476, 1
  store i64 %t478, ptr %l28, !tbaa !24
  br label %bb113
bb125:
  store i1 true, ptr %rv
  br label %ret
bb126:
  br i1 true, label %bb127, label %bb128
bb127:
  br label %bb129
bb128:
  br label %bb130
bb129:
  store i1 true, ptr %rv
  br label %ret
bb130:
  call void @__olang_check_failed(ptr @olang_loc_888c44700641ffaa_fbe810d9adf00e56)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesOf(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l4 = alloca %"compiler/types:data"
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call %"compiler/types:data" @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eat(ptr %v0, ptr %a0, i32 %a1)
  store %"compiler/types:data" %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = getelementptr %"compiler/types:data", ptr %l4, i32 0, i32 4
  %t7 = load i64, ptr %t6, !tbaa !24
  %t9 = trunc i64 %t7 to i32
  store i32 %t9, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSetErrRepr(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/types:Table", ptr %a0, i32 0, i32 19
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20compile_Ha1b8741c5221fa161d1744b12cf57007(ptr %v0, ptr %t3, i32 %a1, i32 %a2)
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSetOverBody(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l4 = alloca ptr
  %l5 = alloca i32
  %l7 = alloca %"compiler/types:body"
  %s0 = alloca %olang.scope
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"compiler/types:Table", ptr %a0, i32 0, i32 16
  store ptr %t3, ptr %l4, !tbaa !29
  store i32 %a1, ptr %l5, !tbaa !23
  %t7 = call %"compiler/types:body" @compiler_2ftypes_3abody_2ector(ptr %s0, i32 0, i32 0, i32 %a2, i1 false, i1 true)
  store %"compiler/types:body" %t7, ptr %l7
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l4, !tbaa !29
  %t9 = load i32, ptr %l5, !tbaa !23
  %t10 = load %"compiler/types:body", ptr %l7
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20compile_H00ad3ea0211b1c1ed775c1e06d3ea587(ptr %v0, ptr %t8, i32 %t9, %"compiler/types:body" %t10)
  br label %bb2
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSetRawBits(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2) #0 {
entry:
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/types:Table", ptr %a0, i32 0, i32 41
  %t6 = sext i32 %a1 to i64
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3cI64_3e_26_3e_2ePut_3cI64_2c_20Array_3cI64_3e_26_3e(ptr %v0, ptr %v1, ptr %t3, i64 %t6, { i64, ptr } %a2)
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSetRawType(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/types:Table", ptr %a0, i32 0, i32 40
  %t6 = sext i32 %a1 to i64
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aTypeId_3e__Hbdd7c5068e376aa260a62181a9f99429(ptr %v0, ptr %t3, i64 %t6, i32 %a2)
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/types:Table", ptr %t1, i32 0, i32 8
  store ptr %t3, ptr %l3, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t8 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %t4, i32 %a1)
  store i64 %t8, ptr %l6
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l3, !tbaa !29
  %t10 = load i64, ptr %l6, !tbaa !24
  %t11 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aListId_3e_2eAt_3ccompiler_2ftypes_3aListId_3e(ptr %v0, ptr %t9, i64 %t10)
  store i32 %t11, ptr %l7
  br label %bb2
bb2:
  %t12 = load i32, ptr %l7, !tbaa !23
  store i32 %t12, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeFields(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/types:Table", ptr %t1, i32 0, i32 9
  store ptr %t3, ptr %l3, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t8 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %t4, i32 %a1)
  store i64 %t8, ptr %l6
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l3, !tbaa !29
  %t10 = load i64, ptr %l6, !tbaa !24
  %t11 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fsource_3aNameId_3e__H37377f924b66ff741793959f79fef546(ptr %v0, ptr %v1, ptr %t9, i64 %t10)
  store { i64, ptr } %t11, ptr %l7
  br label %bb2
bb2:
  %t12 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t12, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShareOf(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l8 = alloca i32
  %l10 = alloca { i64, ptr }
  %l14 = alloca i1
  %l17 = alloca i1
  %l23 = alloca i64
  %l24 = alloca { i64, ptr }
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/types:Table", ptr %t1, i32 0, i32 28
  store ptr %t3, ptr %l5, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t8 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesOf(ptr %v0, ptr %t4, i32 %a1)
  store i32 %t8, ptr %l8
  br label %bb1
bb1:
  %t9 = load i32, ptr %l8, !tbaa !23
  %t10 = sext i32 %t9 to i64
  %t11 = load ptr, ptr %l5, !tbaa !29
  %t13 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e_2eAt_3cArray_3cI64_3e_26_3e(ptr %v0, ptr %v0, ptr %t11, i64 %t10)
  store { i64, ptr } %t13, ptr %l10
  br label %bb2
bb2:
  %t14 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t14, ptr %l3, !tbaa !27
  %t15 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t15, 0
  %t19 = icmp sgt i64 %t17, 0
  br i1 %t19, label %bb3, label %bb4
bb3:
  %t21 = load i64, ptr %l2, !tbaa !24
  %t23 = icmp sge i64 %t21, 0
  store i1 %t23, ptr %l14, !tbaa !21
  br label %bb5
bb4:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb5
bb5:
  %t25 = load i1, ptr %l14, !tbaa !21
  br i1 %t25, label %bb6, label %bb7
bb6:
  %t26 = load i64, ptr %l2, !tbaa !24
  %t28 = add i64 2, %t26
  %t29 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t29, 0
  %t34 = icmp slt i64 %t28, %t31
  store i1 %t34, ptr %l17, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb8
bb8:
  %t36 = load i1, ptr %l17, !tbaa !21
  br i1 %t36, label %bb9, label %bb10
bb9:
  %t37 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t37, ptr %l24, !tbaa !27
  %t38 = load i64, ptr %l2, !tbaa !24
  %t40 = add i64 2, %t38
  %t42 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !27
  %t44 = getelementptr i64, ptr %t43, i64 %t40
  %t45 = load i64, ptr %t44, !tbaa !34
  store i64 %t45, ptr %l23, !tbaa !24
  br label %bb11
bb10:
  %t47 = load i64, ptr @G_2ecompiler_2ftypes_2eOwnScope, !tbaa !24
  store i64 %t47, ptr %l23, !tbaa !24
  br label %bb11
bb11:
  %t49 = load i64, ptr %l23, !tbaa !24
  store i64 %t49, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSharesRefs(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l4 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2esharesRefs(ptr %v0, ptr %a0, i32 %a1, i64 0)
  store i1 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i1, ptr %l4, !tbaa !21
  store i1 %t6, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSpreadAt(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l11 = alloca i32
  %l16 = alloca ptr
  %l19 = alloca i32
  %l20 = alloca { i64, ptr }
  %l26 = alloca i64
  %l29 = alloca i64
  %l48 = alloca { i64, ptr }
  %l51 = alloca i1
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t1, i32 %t2)
  store i32 %t5, ptr %l11
  br label %bb1
bb1:
  %t6 = load i32, ptr %l11, !range !{i32 0, i32 33}
  %t8 = trunc i64 21 to i32
  %t9 = icmp eq i32 %t6, %t8
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb2, label %bb3
bb2:
  store i64 -1, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t14 = load ptr, ptr %l0, !tbaa !29
  store ptr %t14, ptr %l16, !tbaa !29
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load i32, ptr %l1, !tbaa !23
  %t19 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t15, i32 %t16)
  store i32 %t19, ptr %l19
  br label %bb5
bb5:
  %t20 = load ptr, ptr %l16, !tbaa !29
  %t21 = load i32, ptr %l19, !tbaa !23
  %t22 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t20, i32 %t21)
  store { i64, ptr } %t22, ptr %l20
  br label %bb6
bb6:
  %t23 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t23, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t24 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t24, 0
  store i64 %t26, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t28 = load i64, ptr %l4, !tbaa !24
  %t29 = load i64, ptr %l3, !tbaa !24
  %t32 = icmp sgt i64 %t28, %t29
  br i1 %t32, label %bb7, label %bb8
bb7:
  %t34 = load i64, ptr %l5, !tbaa !24
  %t36 = icmp sgt i64 %t34, 0
  br i1 %t36, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb12
bb9:
  %t38 = load i64, ptr %l4, !tbaa !24
  %t39 = load i64, ptr %l3, !tbaa !24
  %t42 = sub i64 %t38, %t39
  %t43 = load i64, ptr %l5, !tbaa !24
  %t46 = add i64 %t42, %t43
  %t48 = sub i64 %t46, 1
  %t49 = load i64, ptr %l5, !tbaa !24
  %t52 = sdiv i64 %t48, %t49
  store i64 %t52, ptr %l29, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l29, !tbaa !24
  br label %bb11
bb11:
  %t54 = load i64, ptr %l29, !tbaa !24
  store i64 %t54, ptr %l26, !tbaa !24
  br label %bb12
bb12:
  %t55 = load i64, ptr %l26, !tbaa !24
  store i64 %t55, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb13
bb13:
  %t56 = load i64, ptr %l7, !tbaa !24
  %t57 = load i64, ptr %l6, !tbaa !24
  %t60 = icmp slt i64 %t56, %t57
  %t62 = xor i1 %t60, true
  br i1 %t62, label %bb14, label %bb15
bb14:
  br label %bb22
bb15:
  br label %bb16
bb16:
  %t64 = load i64, ptr %l3, !tbaa !24
  %t65 = load i64, ptr %l7, !tbaa !24
  %t66 = load i64, ptr %l5, !tbaa !24
  %t69 = mul i64 %t65, %t66
  %t72 = add i64 %t64, %t69
  store i64 %t72, ptr %l8, !tbaa !24
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t75, ptr %l48, !tbaa !27
  %t76 = load i64, ptr %l8, !tbaa !24
  %t78 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !27
  %t80 = getelementptr i32, ptr %t79, i64 %t76
  %t81 = load i32, ptr %t80, !tbaa !33
  %t84 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsSpread(ptr %v0, ptr %t74, i32 %t81)
  store i1 %t84, ptr %l51
  br label %bb17
bb17:
  %t85 = load i1, ptr %l51, !tbaa !21
  br i1 %t85, label %bb18, label %bb19
bb18:
  %t86 = load i64, ptr %l8, !tbaa !24
  store i64 %t86, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  br label %bb21
bb21:
  %t88 = load i64, ptr %l7, !tbaa !24
  %t90 = add i64 %t88, 1
  store i64 %t90, ptr %l7, !tbaa !24
  br label %bb13
bb22:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eTuple(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca ptr
  %l8 = alloca %"compiler/types:data"
  %l11 = alloca i32
  %l13 = alloca i32
  %l16 = alloca i32
  %l21 = alloca ptr
  %l23 = alloca i64
  %l26 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l4, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t4 = sext i32 %t2 to i64
  %t7 = call %"compiler/types:data" @compiler_2ftypes_3adata_2ector(ptr %s0, i32 22, i64 %t4, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0)
  store %"compiler/types:data" %t7, ptr %l8
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t9 = load i32, ptr %l1, !tbaa !23
  %t12 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2edeepest(ptr %v0, ptr %t8, i32 %t9)
  store i32 %t12, ptr %l11
  br label %bb2
bb2:
  %t13 = load i32, ptr %l11, !tbaa !23
  %t14 = add i32 %t13, 1
  %t15 = load ptr, ptr %l4, !tbaa !29
  %t16 = load %"compiler/types:data", ptr %l8
  %t18 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eintern(ptr %v0, ptr %t15, %"compiler/types:data" %t16, i32 %t14)
  store i32 %t18, ptr %l13
  br label %bb3
bb3:
  %t19 = load i32, ptr %l13, !tbaa !23
  store i32 %t19, ptr %l2, !tbaa !23
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load i32, ptr %l1, !tbaa !23
  %t24 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlainList(ptr %v0, ptr %t20, i32 %t21)
  store i32 %t24, ptr %l16
  br label %bb4
bb4:
  %t25 = load i32, ptr %l16, !tbaa !23
  store i32 %t25, ptr %l3, !tbaa !23
  %t26 = load i32, ptr %l3, !tbaa !23
  %t27 = load i32, ptr %l1, !tbaa !23
  %t30 = icmp ne i32 %t26, %t27
  br i1 %t30, label %bb5, label %bb6
bb5:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/types:Table", ptr %t32, i32 0, i32 27
  store ptr %t34, ptr %l21, !tbaa !29
  %t35 = load i32, ptr %l2, !tbaa !23
  %t37 = sext i32 %t35 to i64
  store i64 %t37, ptr %l23, !tbaa !24
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t39 = load i32, ptr %l3, !tbaa !23
  %t42 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eTuple(ptr %v0, ptr %t38, i32 %t39)
  store i32 %t42, ptr %l26
  br label %bb7
bb6:
  br label %bb9
bb7:
  %t43 = load ptr, ptr %l21, !tbaa !29
  %t44 = load i64, ptr %l23, !tbaa !24
  %t45 = load i32, ptr %l26, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eSetAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t43, i64 %t44, i32 %t45)
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t46 = load i32, ptr %l2, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t46, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eUniqueSettled(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l6 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/types:Table", ptr %a0, i32 0, i32 43
  %t6 = sext i32 %a1 to i64
  %t9 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t3, i64 %t6)
  store i1 %t9, ptr %l6
  br label %bb1
bb1:
  %t10 = load i1, ptr %l6, !tbaa !21
  store i1 %t10, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eUnnamed(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l5 = alloca i32
  %l8 = alloca ptr
  %l9 = alloca i32
  %l10 = alloca ptr
  %l13 = alloca i32
  %l14 = alloca i32
  %l15 = alloca ptr
  %l18 = alloca i32
  %l19 = alloca i32
  %l22 = alloca i32
  %l25 = alloca i32
  %l26 = alloca i32
  %l29 = alloca ptr
  %l30 = alloca ptr
  %l33 = alloca i32
  %l34 = alloca i32
  %l37 = alloca i64
  %l38 = alloca i32
  %l41 = alloca ptr
  %l42 = alloca ptr
  %l45 = alloca i32
  %l46 = alloca i32
  %l49 = alloca i32
  %l50 = alloca i32
  %l53 = alloca ptr
  %l54 = alloca ptr
  %l57 = alloca i32
  %l58 = alloca i32
  %l59 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t1, i32 %t2)
  store i32 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i32, ptr %l5, !range !{i32 0, i32 33}
  store i32 %t6, ptr %l2
  %t7 = load i32, ptr %l2, !range !{i32 0, i32 33}
  %t9 = trunc i64 21 to i32
  %t10 = icmp eq i32 %t7, %t9
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = load ptr, ptr %l0, !tbaa !29
  store ptr %t12, ptr %l8, !tbaa !29
  %t13 = load i32, ptr %l1, !tbaa !23
  store i32 %t13, ptr %l9, !tbaa !23
  %t14 = load ptr, ptr %l0, !tbaa !29
  store ptr %t14, ptr %l10, !tbaa !29
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load i32, ptr %l1, !tbaa !23
  %t19 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t15, i32 %t16)
  store i32 %t19, ptr %l13
  br label %bb4
bb3:
  br label %bb11
bb4:
  %t20 = load ptr, ptr %l10, !tbaa !29
  %t21 = load i32, ptr %l13, !tbaa !23
  %t22 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eunnamedList(ptr %v0, ptr %t20, i32 %t21)
  store i32 %t22, ptr %l14
  br label %bb5
bb5:
  %t23 = load ptr, ptr %l0, !tbaa !29
  store ptr %t23, ptr %l15, !tbaa !29
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load i32, ptr %l1, !tbaa !23
  %t28 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t24, i32 %t25)
  store i32 %t28, ptr %l18
  br label %bb6
bb6:
  %t29 = load ptr, ptr %l15, !tbaa !29
  %t30 = load i32, ptr %l18, !tbaa !23
  %t31 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eUnnamed(ptr %v0, ptr %t29, i32 %t30)
  store i32 %t31, ptr %l19
  br label %bb7
bb7:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load i32, ptr %l1, !tbaa !23
  %t36 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t32, i32 %t33)
  store i32 %t36, ptr %l22
  br label %bb8
bb8:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load i32, ptr %l1, !tbaa !23
  %t41 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesOf(ptr %v0, ptr %t37, i32 %t38)
  store i32 %t41, ptr %l25
  br label %bb9
bb9:
  %t42 = load ptr, ptr %l8, !tbaa !29
  %t43 = load i32, ptr %l9, !tbaa !23
  %t44 = load i32, ptr %l14, !tbaa !23
  %t45 = load i32, ptr %l19, !tbaa !23
  %t46 = load i32, ptr %l22, !tbaa !23
  %t47 = load i32, ptr %l25, !tbaa !23
  %t48 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRefunc(ptr %v0, ptr %t42, i32 %t43, i32 %t44, i32 %t45, i32 %t46, i32 %t47, i64 0)
  store i32 %t48, ptr %l26
  br label %bb10
bb10:
  %t49 = load i32, ptr %l26, !tbaa !23
  store i32 %t49, ptr %rv
  br label %ret
bb11:
  %t50 = load i32, ptr %l2, !range !{i32 0, i32 33}
  %t52 = trunc i64 20 to i32
  %t53 = icmp eq i32 %t50, %t52
  br i1 %t53, label %bb12, label %bb13
bb12:
  %t55 = load ptr, ptr %l0, !tbaa !29
  store ptr %t55, ptr %l29, !tbaa !29
  %t56 = load ptr, ptr %l0, !tbaa !29
  store ptr %t56, ptr %l30, !tbaa !29
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load i32, ptr %l1, !tbaa !23
  %t61 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t57, i32 %t58)
  store i32 %t61, ptr %l33
  br label %bb14
bb13:
  br label %bb18
bb14:
  %t62 = load ptr, ptr %l30, !tbaa !29
  %t63 = load i32, ptr %l33, !tbaa !23
  %t64 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eUnnamed(ptr %v0, ptr %t62, i32 %t63)
  store i32 %t64, ptr %l34
  br label %bb15
bb15:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load i32, ptr %l1, !tbaa !23
  %t69 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t65, i32 %t66)
  store i64 %t69, ptr %l37
  br label %bb16
bb16:
  %t70 = load ptr, ptr %l29, !tbaa !29
  %t71 = load i32, ptr %l34, !tbaa !23
  %t72 = load i64, ptr %l37, !tbaa !24
  %t73 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t70, i32 %t71, i64 %t72)
  store i32 %t73, ptr %l38
  br label %bb17
bb17:
  %t74 = load i32, ptr %l38, !tbaa !23
  store i32 %t74, ptr %rv
  br label %ret
bb18:
  %t75 = load i32, ptr %l2, !range !{i32 0, i32 33}
  %t77 = trunc i64 19 to i32
  %t78 = icmp eq i32 %t75, %t77
  br i1 %t78, label %bb19, label %bb20
bb19:
  %t80 = load ptr, ptr %l0, !tbaa !29
  store ptr %t80, ptr %l41, !tbaa !29
  %t81 = load ptr, ptr %l0, !tbaa !29
  store ptr %t81, ptr %l42, !tbaa !29
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t83 = load i32, ptr %l1, !tbaa !23
  %t86 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t82, i32 %t83)
  store i32 %t86, ptr %l45
  br label %bb21
bb20:
  br label %bb25
bb21:
  %t87 = load ptr, ptr %l42, !tbaa !29
  %t88 = load i32, ptr %l45, !tbaa !23
  %t89 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eUnnamed(ptr %v0, ptr %t87, i32 %t88)
  store i32 %t89, ptr %l46
  br label %bb22
bb22:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t91 = load i32, ptr %l1, !tbaa !23
  %t94 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t90, i32 %t91)
  store i32 %t94, ptr %l49
  br label %bb23
bb23:
  %t95 = load ptr, ptr %l41, !tbaa !29
  %t96 = load i32, ptr %l46, !tbaa !23
  %t97 = load i32, ptr %l49, !tbaa !23
  %t98 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %t95, i32 %t96, i32 %t97)
  store i32 %t98, ptr %l50
  br label %bb24
bb24:
  %t99 = load i32, ptr %l50, !tbaa !23
  store i32 %t99, ptr %rv
  br label %ret
bb25:
  %t100 = load i32, ptr %l2, !range !{i32 0, i32 33}
  %t102 = trunc i64 22 to i32
  %t103 = icmp eq i32 %t100, %t102
  br i1 %t103, label %bb26, label %bb27
bb26:
  %t105 = load ptr, ptr %l0, !tbaa !29
  store ptr %t105, ptr %l53, !tbaa !29
  %t106 = load ptr, ptr %l0, !tbaa !29
  store ptr %t106, ptr %l54, !tbaa !29
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load i32, ptr %l1, !tbaa !23
  %t111 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t107, i32 %t108)
  store i32 %t111, ptr %l57
  br label %bb28
bb27:
  br label %bb31
bb28:
  %t112 = load ptr, ptr %l54, !tbaa !29
  %t113 = load i32, ptr %l57, !tbaa !23
  %t114 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eunnamedList(ptr %v0, ptr %t112, i32 %t113)
  store i32 %t114, ptr %l58
  br label %bb29
bb29:
  %t115 = load ptr, ptr %l53, !tbaa !29
  %t116 = load i32, ptr %l58, !tbaa !23
  %t117 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eTuple(ptr %v0, ptr %t115, i32 %t116)
  store i32 %t117, ptr %l59
  br label %bb30
bb30:
  %t118 = load i32, ptr %l59, !tbaa !23
  store i32 %t118, ptr %rv
  br label %ret
bb31:
  %t119 = load i32, ptr %l1, !tbaa !23
  store i32 %t119, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eUnspread(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i1
  %l7 = alloca ptr
  %l10 = alloca i32
  %l13 = alloca i64
  %l17 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsSpread(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i1, ptr %l4, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load i32, ptr %l1, !tbaa !23
  store i32 %t9, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t11 = load ptr, ptr %l0, !tbaa !29
  store ptr %t11, ptr %l7, !tbaa !29
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load i32, ptr %l1, !tbaa !23
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t16, ptr %l10
  br label %bb5
bb5:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load i32, ptr %l1, !tbaa !23
  %t21 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t17, i32 %t18)
  store i64 %t21, ptr %l13
  br label %bb6
bb6:
  %t22 = load i64, ptr @G_2ecompiler_2ftypes_2eSpread, !tbaa !24
  %t24 = xor i64 %t22, -1
  %t25 = load i64, ptr %l13, !tbaa !24
  %t27 = and i64 %t25, %t24
  %t28 = load ptr, ptr %l7, !tbaa !29
  %t29 = load i32, ptr %l10, !tbaa !23
  %t31 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t28, i32 %t29, i64 %t27)
  store i32 %t31, ptr %l17
  br label %bb7
bb7:
  %t32 = load i32, ptr %l17, !tbaa !23
  store i32 %t32, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eWithNames(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l5 = alloca i32
  %l10 = alloca ptr
  %l11 = alloca i32
  %l14 = alloca i32
  %l17 = alloca i32
  %l20 = alloca i32
  %l23 = alloca i32
  %l25 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t1, i32 %t2)
  store i32 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t8 = trunc i64 21 to i32
  %t9 = icmp eq i32 %t6, %t8
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load i32, ptr %l1, !tbaa !23
  store i32 %t13, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t15 = load ptr, ptr %l0, !tbaa !29
  store ptr %t15, ptr %l10, !tbaa !29
  %t16 = load i32, ptr %l1, !tbaa !23
  store i32 %t16, ptr %l11, !tbaa !23
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load i32, ptr %l1, !tbaa !23
  %t21 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t17, i32 %t18)
  store i32 %t21, ptr %l14
  br label %bb5
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load i32, ptr %l1, !tbaa !23
  %t26 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t22, i32 %t23)
  store i32 %t26, ptr %l17
  br label %bb6
bb6:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load i32, ptr %l1, !tbaa !23
  %t31 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t27, i32 %t28)
  store i32 %t31, ptr %l20
  br label %bb7
bb7:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load i32, ptr %l1, !tbaa !23
  %t36 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesOf(ptr %v0, ptr %t32, i32 %t33)
  store i32 %t36, ptr %l23
  br label %bb8
bb8:
  %t38 = load ptr, ptr %l10, !tbaa !29
  %t39 = load i32, ptr %l11, !tbaa !23
  %t40 = load i32, ptr %l14, !tbaa !23
  %t41 = load i32, ptr %l17, !tbaa !23
  %t42 = load i32, ptr %l20, !tbaa !23
  %t43 = load i32, ptr %l23, !tbaa !23
  %t45 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRefunc(ptr %v0, ptr %t38, i32 %t39, i32 %t40, i32 %t41, i32 %t42, i32 %t43, i64 %a2)
  store i32 %t45, ptr %l25
  br label %bb9
bb9:
  %t46 = load i32, ptr %l25, !tbaa !23
  store i32 %t46, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eWithPromises(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l5 = alloca i32
  %l10 = alloca ptr
  %l13 = alloca i32
  %l16 = alloca i32
  %l19 = alloca i32
  %l22 = alloca i32
  %l25 = alloca i64
  %l28 = alloca i1
  %l31 = alloca i32
  %l33 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t1, i32 %t2)
  store i32 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t8 = trunc i64 21 to i32
  %t9 = icmp eq i32 %t6, %t8
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load i32, ptr %l1, !tbaa !23
  store i32 %t13, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t15 = load ptr, ptr %l0, !tbaa !29
  store ptr %t15, ptr %l10, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load i32, ptr %l1, !tbaa !23
  %t20 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t16, i32 %t17)
  store i32 %t20, ptr %l13
  br label %bb5
bb5:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load i32, ptr %l1, !tbaa !23
  %t25 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t21, i32 %t22)
  store i32 %t25, ptr %l16
  br label %bb6
bb6:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load i32, ptr %l1, !tbaa !23
  %t30 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t26, i32 %t27)
  store i32 %t30, ptr %l19
  br label %bb7
bb7:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load i32, ptr %l1, !tbaa !23
  %t35 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesOf(ptr %v0, ptr %t31, i32 %t32)
  store i32 %t35, ptr %l22
  br label %bb8
bb8:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load i32, ptr %l1, !tbaa !23
  %t40 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamesIdOf(ptr %v0, ptr %t36, i32 %t37)
  store i64 %t40, ptr %l25
  br label %bb9
bb9:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load i32, ptr %l1, !tbaa !23
  %t45 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncNullable(ptr %v0, ptr %t41, i32 %t42)
  store i1 %t45, ptr %l28
  br label %bb10
bb10:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load i32, ptr %l1, !tbaa !23
  %t50 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncTag(ptr %v0, ptr %t46, i32 %t47)
  store i32 %t50, ptr %l31
  br label %bb11
bb11:
  %t52 = load ptr, ptr %l10, !tbaa !29
  %t53 = load i32, ptr %l13, !tbaa !23
  %t54 = load i32, ptr %l16, !tbaa !23
  %t55 = load i32, ptr %l19, !tbaa !23
  %t56 = load i32, ptr %l22, !tbaa !23
  %t57 = load i64, ptr %l25, !tbaa !24
  %t58 = load i1, ptr %l28, !tbaa !21
  %t59 = load i32, ptr %l31, !tbaa !23
  %t61 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t52, i32 %t53, i32 %t54, i32 %t55, i32 %t56, i64 %t57, i1 %t58, i32 %t59, i64 %a2)
  store i32 %t61, ptr %l33
  br label %bb12
bb12:
  %t62 = load i32, ptr %l33, !tbaa !23
  store i32 %t62, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eWithRole(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
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
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca ptr
  %l22 = alloca i32
  %l23 = alloca { i64, ptr }
  %l25 = alloca i64
  %l34 = alloca i64
  %l37 = alloca i64
  %l55 = alloca i64
  %l59 = alloca i64
  %l64 = alloca { i64, ptr }
  %l66 = alloca i64
  %l75 = alloca i64
  %l78 = alloca i64
  %l96 = alloca i64
  %l100 = alloca i64
  %l103 = alloca ptr
  %l104 = alloca i32
  %l107 = alloca i32
  %l110 = alloca i32
  %l113 = alloca i32
  %l118 = alloca i32
  %l121 = alloca %"compiler/types:data"
  %l123 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l19, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t3 = load i32, ptr %l1, !tbaa !23
  %t6 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t2, i32 %t3)
  store i32 %t6, ptr %l22
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l19, !tbaa !29
  %t8 = load i32, ptr %l22, !tbaa !23
  %t9 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t7, i32 %t8)
  store { i64, ptr } %t9, ptr %l23
  br label %bb2
bb2:
  %t10 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t10, ptr %l3, !tbaa !27
  %t11 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t11, 0
  store i64 %t13, ptr %l25, !tbaa !24
  %t14 = load i64, ptr %l25, !tbaa !24
  %t15 = icmp sge i64 %t14, 0
  br i1 %t15, label %bb3, label %bb4
bb3:
  %t17 = load i64, ptr %l25, !tbaa !24
  %t18 = icmp sle i64 %t17, 1152921504606846975
  br i1 %t18, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_bf031f4f448c1291_890a9ad18176d2c5)
  unreachable
bb5:
  %t20 = load i64, ptr %l25, !tbaa !24
  %t21 = mul i64 %t20, 8
  %t22 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t21)
  %t23 = insertvalue { i64, ptr } undef, i64 %t20, 0
  %t24 = insertvalue { i64, ptr } %t23, ptr %t22, 1
  store { i64, ptr } %t24, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t26 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t28 = extractvalue { i64, ptr } %t26, 0
  store i64 %t28, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t30 = load i64, ptr %l6, !tbaa !24
  %t31 = load i64, ptr %l5, !tbaa !24
  %t34 = icmp sgt i64 %t30, %t31
  br i1 %t34, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_bf031f4f448c1291_890a9ad18176d2c5)
  unreachable
bb7:
  %t36 = load i64, ptr %l7, !tbaa !24
  %t38 = icmp sgt i64 %t36, 0
  br i1 %t38, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l34, !tbaa !24
  br label %bb12
bb9:
  %t40 = load i64, ptr %l6, !tbaa !24
  %t41 = load i64, ptr %l5, !tbaa !24
  %t44 = sub i64 %t40, %t41
  %t45 = load i64, ptr %l7, !tbaa !24
  %t48 = add i64 %t44, %t45
  %t50 = sub i64 %t48, 1
  %t51 = load i64, ptr %l7, !tbaa !24
  %t54 = sdiv i64 %t50, %t51
  store i64 %t54, ptr %l37, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l37, !tbaa !24
  br label %bb11
bb11:
  %t56 = load i64, ptr %l37, !tbaa !24
  store i64 %t56, ptr %l34, !tbaa !24
  br label %bb12
bb12:
  %t57 = load i64, ptr %l34, !tbaa !24
  store i64 %t57, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb13
bb13:
  %t58 = load i64, ptr %l9, !tbaa !24
  %t59 = load i64, ptr %l8, !tbaa !24
  %t62 = icmp slt i64 %t58, %t59
  %t64 = xor i1 %t62, true
  br i1 %t64, label %bb14, label %bb15
bb14:
  br label %bb19
bb15:
  br label %bb16
bb16:
  %t66 = load i64, ptr %l5, !tbaa !24
  %t67 = load i64, ptr %l9, !tbaa !24
  %t68 = load i64, ptr %l7, !tbaa !24
  %t71 = mul i64 %t67, %t68
  %t74 = add i64 %t66, %t71
  store i64 %t74, ptr %l10, !tbaa !24
  %t76 = load i64, ptr %l10, !tbaa !24
  store i64 %t76, ptr %l55, !tbaa !24
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t78 = load i32, ptr %l1, !tbaa !23
  %t79 = load i64, ptr %l10, !tbaa !24
  %t83 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShareOf(ptr %v0, ptr %t77, i32 %t78, i64 %t79)
  store i64 %t83, ptr %l59
  br label %bb17
bb17:
  %t84 = load i64, ptr %l59, !tbaa !24
  %t85 = load i64, ptr %l55, !tbaa !24
  %t86 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t87 = load ptr, ptr %t86, !tbaa !27
  %t88 = getelementptr i64, ptr %t87, i64 %t85
  store i64 %t84, ptr %t88, !tbaa !34
  br label %bb18
bb18:
  %t89 = load i64, ptr %l9, !tbaa !24
  %t91 = add i64 %t89, 1
  store i64 %t91, ptr %l9, !tbaa !24
  br label %bb13
bb19:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t94 = load i32, ptr %l1, !tbaa !23
  %t97 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResults(ptr %v0, ptr %s0, ptr %t93, i32 %t94)
  store { i64, ptr } %t97, ptr %l64
  br label %bb20
bb20:
  %t98 = load { i64, ptr }, ptr %l64, !tbaa !27
  store { i64, ptr } %t98, ptr %l11, !tbaa !27
  %t99 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t101 = extractvalue { i64, ptr } %t99, 0
  store i64 %t101, ptr %l66, !tbaa !24
  %t102 = load i64, ptr %l66, !tbaa !24
  %t103 = icmp sge i64 %t102, 0
  br i1 %t103, label %bb21, label %bb22
bb21:
  %t105 = load i64, ptr %l66, !tbaa !24
  %t106 = icmp sle i64 %t105, 1152921504606846975
  br i1 %t106, label %bb23, label %bb24
bb22:
  call void @__olang_check_failed(ptr @olang_loc_ac68e58e8d4c9184_1653a4c5d9050158)
  unreachable
bb23:
  %t108 = load i64, ptr %l66, !tbaa !24
  %t109 = mul i64 %t108, 8
  %t110 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t109)
  %t111 = insertvalue { i64, ptr } undef, i64 %t108, 0
  %t112 = insertvalue { i64, ptr } %t111, ptr %t110, 1
  store { i64, ptr } %t112, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t114 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t116 = extractvalue { i64, ptr } %t114, 0
  store i64 %t116, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t118 = load i64, ptr %l14, !tbaa !24
  %t119 = load i64, ptr %l13, !tbaa !24
  %t122 = icmp sgt i64 %t118, %t119
  br i1 %t122, label %bb25, label %bb26
bb24:
  call void @__olang_check_failed(ptr @olang_loc_ac68e58e8d4c9184_1653a4c5d9050158)
  unreachable
bb25:
  %t124 = load i64, ptr %l15, !tbaa !24
  %t126 = icmp sgt i64 %t124, 0
  br i1 %t126, label %bb27, label %bb28
bb26:
  store i64 0, ptr %l75, !tbaa !24
  br label %bb30
bb27:
  %t128 = load i64, ptr %l14, !tbaa !24
  %t129 = load i64, ptr %l13, !tbaa !24
  %t132 = sub i64 %t128, %t129
  %t133 = load i64, ptr %l15, !tbaa !24
  %t136 = add i64 %t132, %t133
  %t138 = sub i64 %t136, 1
  %t139 = load i64, ptr %l15, !tbaa !24
  %t142 = sdiv i64 %t138, %t139
  store i64 %t142, ptr %l78, !tbaa !24
  br label %bb29
bb28:
  store i64 0, ptr %l78, !tbaa !24
  br label %bb29
bb29:
  %t144 = load i64, ptr %l78, !tbaa !24
  store i64 %t144, ptr %l75, !tbaa !24
  br label %bb30
bb30:
  %t145 = load i64, ptr %l75, !tbaa !24
  store i64 %t145, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb31
bb31:
  %t146 = load i64, ptr %l17, !tbaa !24
  %t147 = load i64, ptr %l16, !tbaa !24
  %t150 = icmp slt i64 %t146, %t147
  %t152 = xor i1 %t150, true
  br i1 %t152, label %bb32, label %bb33
bb32:
  br label %bb37
bb33:
  br label %bb34
bb34:
  %t154 = load i64, ptr %l13, !tbaa !24
  %t155 = load i64, ptr %l17, !tbaa !24
  %t156 = load i64, ptr %l15, !tbaa !24
  %t159 = mul i64 %t155, %t156
  %t162 = add i64 %t154, %t159
  store i64 %t162, ptr %l18, !tbaa !24
  %t164 = load i64, ptr %l18, !tbaa !24
  store i64 %t164, ptr %l96, !tbaa !24
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t166 = load i32, ptr %l1, !tbaa !23
  %t167 = load i64, ptr %l18, !tbaa !24
  %t171 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResultFrom(ptr %v0, ptr %t165, i32 %t166, i64 %t167)
  store i64 %t171, ptr %l100
  br label %bb35
bb35:
  %t172 = load i64, ptr %l100, !tbaa !24
  %t173 = load i64, ptr %l96, !tbaa !24
  %t174 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t175 = load ptr, ptr %t174, !tbaa !27
  %t176 = getelementptr i64, ptr %t175, i64 %t173
  store i64 %t172, ptr %t176, !tbaa !34
  br label %bb36
bb36:
  %t177 = load i64, ptr %l17, !tbaa !24
  %t179 = add i64 %t177, 1
  store i64 %t179, ptr %l17, !tbaa !24
  br label %bb31
bb37:
  %t181 = load ptr, ptr %l0, !tbaa !29
  store ptr %t181, ptr %l103, !tbaa !29
  %t182 = load i32, ptr %l1, !tbaa !23
  store i32 %t182, ptr %l104, !tbaa !23
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t184 = load i32, ptr %l1, !tbaa !23
  %t187 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t183, i32 %t184)
  store i32 %t187, ptr %l107
  br label %bb38
bb38:
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t189 = load i32, ptr %l1, !tbaa !23
  %t192 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t188, i32 %t189)
  store i32 %t192, ptr %l110
  br label %bb39
bb39:
  %t193 = load ptr, ptr %l0, !tbaa !29
  %t194 = load i32, ptr %l1, !tbaa !23
  %t197 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t193, i32 %t194)
  store i32 %t197, ptr %l113
  br label %bb40
bb40:
  %t198 = load ptr, ptr %l0, !tbaa !29
  %t200 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t201 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t206 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopes(ptr %v0, ptr %s0, ptr %s0, ptr %t198, i64 %a2, { i64, ptr } %t200, { i64, ptr } %t201)
  store i32 %t206, ptr %l118
  br label %bb41
bb41:
  %t207 = load ptr, ptr %l0, !tbaa !29
  %t208 = load i32, ptr %l1, !tbaa !23
  %t211 = call %"compiler/types:data" @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eat(ptr %v0, ptr %t207, i32 %t208)
  store %"compiler/types:data" %t211, ptr %l121
  br label %bb42
bb42:
  %t212 = getelementptr %"compiler/types:data", ptr %l121, i32 0, i32 5
  %t213 = load i64, ptr %t212, !tbaa !24
  %t214 = load ptr, ptr %l103, !tbaa !29
  %t215 = load i32, ptr %l104, !tbaa !23
  %t216 = load i32, ptr %l107, !tbaa !23
  %t217 = load i32, ptr %l110, !tbaa !23
  %t218 = load i32, ptr %l113, !tbaa !23
  %t219 = load i32, ptr %l118, !tbaa !23
  %t221 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRefunc(ptr %v0, ptr %t214, i32 %t215, i32 %t216, i32 %t217, i32 %t218, i32 %t219, i64 %t213)
  store i32 %t221, ptr %l123
  br label %bb43
bb43:
  call void @__olang_scope_close(ptr %s0)
  %t222 = load i32, ptr %l123, !tbaa !23
  store i32 %t222, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eanchorsInto(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, { i64, ptr } %a2, ptr %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l22 = alloca i32
  %l25 = alloca i1
  %l28 = alloca i32
  %l32 = alloca i1
  %l35 = alloca i1
  %l37 = alloca i1
  %l38 = alloca ptr
  %l41 = alloca i32
  %l42 = alloca i32
  %l49 = alloca i1
  %l51 = alloca ptr
  %l54 = alloca i32
  %l55 = alloca { i64, ptr }
  %l61 = alloca i64
  %l64 = alloca i64
  %l84 = alloca i64
  %l93 = alloca i64
  %l96 = alloca i64
  %l115 = alloca { i64, ptr }
  %l124 = alloca { i64, ptr }
  %l127 = alloca i1
  %l131 = alloca { i64, ptr }
  %l134 = alloca i1
  %l136 = alloca i1
  %l138 = alloca { i64, ptr }
  %l141 = alloca i1
  %l144 = alloca { i64, ptr }
  %l151 = alloca i32
  %s4 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store { i64, ptr } %a2, ptr %l2
  store ptr %a3, ptr %l3
  store i64 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t1, i32 %a1)
  store i32 %t5, ptr %l22
  br label %bb1
bb1:
  %t6 = load i32, ptr %l22, !tbaa !23
  store i32 %t6, ptr %l5, !tbaa !23
  %t7 = load i64, ptr %l4, !tbaa !24
  %t9 = icmp sgt i64 %t7, 8
  br i1 %t9, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l25, !tbaa !21
  br label %bb5
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i32, ptr %l5, !tbaa !23
  %t15 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t11, i32 %t12)
  store i32 %t15, ptr %l28
  br label %bb4
bb4:
  %t16 = load i32, ptr %l28, !range !{i32 0, i32 33}
  %t18 = trunc i64 18 to i32
  %t19 = icmp eq i32 %t16, %t18
  %t21 = xor i1 %t19, true
  store i1 %t21, ptr %l25, !tbaa !21
  br label %bb5
bb5:
  %t23 = load i1, ptr %l25, !tbaa !21
  br i1 %t23, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l32, !tbaa !21
  br label %bb9
bb7:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load i32, ptr %l5, !tbaa !23
  %t28 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %t24, i32 %t25)
  store i1 %t28, ptr %l35
  br label %bb8
bb8:
  %t29 = load i1, ptr %l35, !tbaa !21
  %t30 = xor i1 %t29, true
  store i1 %t30, ptr %l32, !tbaa !21
  br label %bb9
bb9:
  %t32 = load i1, ptr %l32, !tbaa !21
  br i1 %t32, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l37, !tbaa !21
  br label %bb14
bb11:
  %t33 = load ptr, ptr %l0, !tbaa !29
  store ptr %t33, ptr %l38, !tbaa !29
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load i32, ptr %l5, !tbaa !23
  %t38 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t34, i32 %t35)
  store i32 %t38, ptr %l41
  br label %bb12
bb12:
  %t39 = load ptr, ptr %l38, !tbaa !29
  %t40 = load i32, ptr %l41, !tbaa !23
  %t41 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t39, i32 %t40)
  store i32 %t41, ptr %l42
  br label %bb13
bb13:
  %t42 = load i32, ptr %l42, !range !{i32 0, i32 6}
  %t44 = trunc i64 0 to i32
  %t45 = icmp eq i32 %t42, %t44
  %t47 = xor i1 %t45, true
  store i1 %t47, ptr %l37, !tbaa !21
  br label %bb14
bb14:
  %t49 = load i1, ptr %l37, !tbaa !21
  br i1 %t49, label %bb15, label %bb16
bb15:
  store i32 65536, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = load i32, ptr %l5, !tbaa !23
  %t55 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDestructs(ptr %v0, ptr %t51, i32 %t52)
  store i1 %t55, ptr %l49
  br label %bb18
bb18:
  %t56 = load i1, ptr %l49, !tbaa !21
  br i1 %t56, label %bb19, label %bb20
bb19:
  store i32 65536, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t58 = load ptr, ptr %l0, !tbaa !29
  store ptr %t58, ptr %l51, !tbaa !29
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t60 = load i32, ptr %l5, !tbaa !23
  %t63 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t59, i32 %t60)
  store i32 %t63, ptr %l54
  br label %bb22
bb22:
  %t64 = load ptr, ptr %l51, !tbaa !29
  %t65 = load i32, ptr %l54, !tbaa !23
  %t66 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t64, i32 %t65)
  store { i64, ptr } %t66, ptr %l55
  br label %bb23
bb23:
  %t67 = load { i64, ptr }, ptr %l55, !tbaa !27
  store { i64, ptr } %t67, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t68 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t70 = extractvalue { i64, ptr } %t68, 0
  store i64 %t70, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t72 = load i64, ptr %l8, !tbaa !24
  %t73 = load i64, ptr %l7, !tbaa !24
  %t76 = icmp sgt i64 %t72, %t73
  br i1 %t76, label %bb24, label %bb25
bb24:
  %t78 = load i64, ptr %l9, !tbaa !24
  %t80 = icmp sgt i64 %t78, 0
  br i1 %t80, label %bb26, label %bb27
bb25:
  store i64 0, ptr %l61, !tbaa !24
  br label %bb29
bb26:
  %t82 = load i64, ptr %l8, !tbaa !24
  %t83 = load i64, ptr %l7, !tbaa !24
  %t86 = sub i64 %t82, %t83
  %t87 = load i64, ptr %l9, !tbaa !24
  %t90 = add i64 %t86, %t87
  %t92 = sub i64 %t90, 1
  %t93 = load i64, ptr %l9, !tbaa !24
  %t96 = sdiv i64 %t92, %t93
  store i64 %t96, ptr %l64, !tbaa !24
  br label %bb28
bb27:
  store i64 0, ptr %l64, !tbaa !24
  br label %bb28
bb28:
  %t98 = load i64, ptr %l64, !tbaa !24
  store i64 %t98, ptr %l61, !tbaa !24
  br label %bb29
bb29:
  %t99 = load i64, ptr %l61, !tbaa !24
  store i64 %t99, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb30
bb30:
  store %olang.scope zeroinitializer, ptr %s4
  %t100 = load i64, ptr %l11, !tbaa !24
  %t101 = load i64, ptr %l10, !tbaa !24
  %t104 = icmp slt i64 %t100, %t101
  %t106 = xor i1 %t104, true
  br i1 %t106, label %bb31, label %bb32
bb31:
  call void @__olang_scope_close(ptr %s4)
  br label %bb67
bb32:
  br label %bb33
bb33:
  %t108 = load i64, ptr %l7, !tbaa !24
  %t109 = load i64, ptr %l11, !tbaa !24
  %t110 = load i64, ptr %l9, !tbaa !24
  %t113 = mul i64 %t109, %t110
  %t116 = add i64 %t108, %t113
  store i64 %t116, ptr %l12, !tbaa !24
  %t118 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t120 = extractvalue { i64, ptr } %t118, 0
  %t122 = add i64 %t120, 1
  store i64 %t122, ptr %l84, !tbaa !24
  %t123 = load i64, ptr %l84, !tbaa !24
  %t124 = icmp sge i64 %t123, 0
  br i1 %t124, label %bb34, label %bb35
bb34:
  %t126 = load i64, ptr %l84, !tbaa !24
  %t127 = icmp sle i64 %t126, 1152921504606846975
  br i1 %t127, label %bb36, label %bb37
bb35:
  call void @__olang_check_failed(ptr @olang_loc_ab5d312677a1c76d_705ca0c9b87dcf79)
  unreachable
bb36:
  %t129 = load i64, ptr %l84, !tbaa !24
  %t130 = mul i64 %t129, 8
  %t131 = call ptr @__olang_scope_alloc_zeroed(ptr %s4, i64 %t130)
  %t132 = insertvalue { i64, ptr } undef, i64 %t129, 0
  %t133 = insertvalue { i64, ptr } %t132, ptr %t131, 1
  store { i64, ptr } %t133, ptr %l13, !tbaa !27
  store i64 0, ptr %l14, !tbaa !24
  %t135 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t137 = extractvalue { i64, ptr } %t135, 0
  store i64 %t137, ptr %l15, !tbaa !24
  store i64 1, ptr %l16, !tbaa !24
  %t139 = load i64, ptr %l15, !tbaa !24
  %t140 = load i64, ptr %l14, !tbaa !24
  %t143 = icmp sgt i64 %t139, %t140
  br i1 %t143, label %bb38, label %bb39
bb37:
  call void @__olang_check_failed(ptr @olang_loc_ab5d312677a1c76d_705ca0c9b87dcf79)
  unreachable
bb38:
  %t145 = load i64, ptr %l16, !tbaa !24
  %t147 = icmp sgt i64 %t145, 0
  br i1 %t147, label %bb40, label %bb41
bb39:
  store i64 0, ptr %l93, !tbaa !24
  br label %bb43
bb40:
  %t149 = load i64, ptr %l15, !tbaa !24
  %t150 = load i64, ptr %l14, !tbaa !24
  %t153 = sub i64 %t149, %t150
  %t154 = load i64, ptr %l16, !tbaa !24
  %t157 = add i64 %t153, %t154
  %t159 = sub i64 %t157, 1
  %t160 = load i64, ptr %l16, !tbaa !24
  %t163 = sdiv i64 %t159, %t160
  store i64 %t163, ptr %l96, !tbaa !24
  br label %bb42
bb41:
  store i64 0, ptr %l96, !tbaa !24
  br label %bb42
bb42:
  %t165 = load i64, ptr %l96, !tbaa !24
  store i64 %t165, ptr %l93, !tbaa !24
  br label %bb43
bb43:
  %t166 = load i64, ptr %l93, !tbaa !24
  store i64 %t166, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  br label %bb44
bb44:
  %t167 = load i64, ptr %l18, !tbaa !24
  %t168 = load i64, ptr %l17, !tbaa !24
  %t171 = icmp slt i64 %t167, %t168
  %t173 = xor i1 %t171, true
  br i1 %t173, label %bb45, label %bb46
bb45:
  br label %bb49
bb46:
  br label %bb47
bb47:
  %t175 = load i64, ptr %l14, !tbaa !24
  %t176 = load i64, ptr %l18, !tbaa !24
  %t177 = load i64, ptr %l16, !tbaa !24
  %t180 = mul i64 %t176, %t177
  %t183 = add i64 %t175, %t180
  store i64 %t183, ptr %l19, !tbaa !24
  %t185 = load i64, ptr %l19, !tbaa !24
  %t186 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t186, ptr %l115, !tbaa !27
  %t187 = load i64, ptr %l19, !tbaa !24
  %t189 = getelementptr { i64, ptr }, ptr %l115, i32 0, i32 1
  %t190 = load ptr, ptr %t189, !tbaa !27
  %t191 = getelementptr i64, ptr %t190, i64 %t187
  %t192 = load i64, ptr %t191, !tbaa !34
  %t195 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t196 = load ptr, ptr %t195, !tbaa !27
  %t197 = getelementptr i64, ptr %t196, i64 %t185
  store i64 %t192, ptr %t197, !tbaa !34
  br label %bb48
bb48:
  %t198 = load i64, ptr %l18, !tbaa !24
  %t200 = add i64 %t198, 1
  store i64 %t200, ptr %l18, !tbaa !24
  br label %bb44
bb49:
  %t202 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t204 = extractvalue { i64, ptr } %t202, 0
  %t205 = load i64, ptr %l12, !tbaa !24
  %t208 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t209 = load ptr, ptr %t208, !tbaa !27
  %t210 = getelementptr i64, ptr %t209, i64 %t204
  store i64 %t205, ptr %t210, !tbaa !34
  %t211 = load ptr, ptr %l0, !tbaa !29
  %t212 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t212, ptr %l124, !tbaa !27
  %t213 = load i64, ptr %l12, !tbaa !24
  %t215 = getelementptr { i64, ptr }, ptr %l124, i32 0, i32 1
  %t216 = load ptr, ptr %t215, !tbaa !27
  %t217 = getelementptr i32, ptr %t216, i64 %t213
  %t218 = load i32, ptr %t217, !tbaa !33
  %t221 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnedPart(ptr %v0, ptr %t211, i32 %t218)
  store i1 %t221, ptr %l127
  br label %bb50
bb50:
  %t222 = load i1, ptr %l127, !tbaa !21
  br i1 %t222, label %bb51, label %bb52
bb51:
  %t223 = load ptr, ptr %l3, !tbaa !29
  %t224 = load { i64, ptr }, ptr %l13, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_3e_2ePush_3cArray_3cI64_3e_3e(ptr %v2, ptr %t223, { i64, ptr } %t224)
  br label %bb53
bb52:
  br label %bb54
bb53:
  call void @__olang_scope_close(ptr %s4)
  br label %bb66
bb54:
  %t227 = load ptr, ptr %l0, !tbaa !29
  %t228 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t228, ptr %l131, !tbaa !27
  %t229 = load i64, ptr %l12, !tbaa !24
  %t231 = getelementptr { i64, ptr }, ptr %l131, i32 0, i32 1
  %t232 = load ptr, ptr %t231, !tbaa !27
  %t233 = getelementptr i32, ptr %t232, i64 %t229
  %t234 = load i32, ptr %t233, !tbaa !33
  %t237 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %t227, i32 %t234)
  store i1 %t237, ptr %l134
  br label %bb55
bb55:
  %t238 = load i1, ptr %l134, !tbaa !21
  %t239 = xor i1 %t238, true
  br i1 %t239, label %bb56, label %bb57
bb56:
  %t241 = load ptr, ptr %l0, !tbaa !29
  %t242 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t242, ptr %l138, !tbaa !27
  %t243 = load i64, ptr %l12, !tbaa !24
  %t245 = getelementptr { i64, ptr }, ptr %l138, i32 0, i32 1
  %t246 = load ptr, ptr %t245, !tbaa !27
  %t247 = getelementptr i32, ptr %t246, i64 %t243
  %t248 = load i32, ptr %t247, !tbaa !33
  %t251 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnsParts(ptr %v0, ptr %t241, i32 %t248)
  store i1 %t251, ptr %l141
  br label %bb58
bb57:
  store i1 false, ptr %l136, !tbaa !21
  br label %bb59
bb58:
  %t252 = load i1, ptr %l141, !tbaa !21
  %t253 = xor i1 %t252, true
  store i1 %t253, ptr %l136, !tbaa !21
  br label %bb59
bb59:
  %t255 = load i1, ptr %l136, !tbaa !21
  br i1 %t255, label %bb60, label %bb61
bb60:
  call void @__olang_scope_close(ptr %s4)
  br label %bb66
bb61:
  br label %bb62
bb62:
  %t256 = load ptr, ptr %l0, !tbaa !29
  %t257 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t257, ptr %l144, !tbaa !27
  %t258 = load i64, ptr %l12, !tbaa !24
  %t260 = getelementptr { i64, ptr }, ptr %l144, i32 0, i32 1
  %t261 = load ptr, ptr %t260, !tbaa !27
  %t262 = getelementptr i32, ptr %t261, i64 %t258
  %t263 = load i32, ptr %t262, !tbaa !33
  %t264 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t265 = load ptr, ptr %l3, !tbaa !29
  %t266 = load i64, ptr %l4, !tbaa !24
  %t268 = add i64 %t266, 1
  %t274 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eanchorsInto(ptr %v0, ptr %s4, ptr %v2, ptr %t256, i32 %t263, { i64, ptr } %t264, ptr %t265, i64 %t268)
  store i32 %t274, ptr %l151
  %t275 = icmp ne i32 %t274, 0
  br i1 %t275, label %bb64, label %ok.276, !prof !99
ok.276:
  br label %bb63
bb63:
  br label %bb65
bb64:
  %t277 = load i32, ptr %l151, !tbaa !23
  %t278 = lshr i32 %t277, 16
  %t279 = and i32 %t277, 65535
  %t280 = icmp eq i32 %t278, 1
  %t281 = select i1 %t280, i32 1, i32 0
  %t282 = icmp eq i32 %t277, 0
  %t283 = shl i32 %t281, 16
  %t284 = or i32 %t283, %t279
  %t285 = select i1 %t282, i32 0, i32 %t284
  call void @__olang_scope_close(ptr %s4)
  store i32 %t285, ptr %rv
  br label %ret
bb65:
  call void @__olang_scope_close(ptr %s4)
  br label %bb66
bb66:
  %t287 = load i64, ptr %l11, !tbaa !24
  %t289 = add i64 %t287, 1
  store i64 %t289, ptr %l11, !tbaa !24
  br label %bb30
bb67:
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2earrayLlvm(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i32
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca ptr
  %l13 = alloca i32
  %l14 = alloca i64
  %l15 = alloca ptr
  %l18 = alloca i32
  %l19 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t1, i32 %t2)
  store i32 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i32, ptr %l4, !tbaa !23
  %t7 = icmp eq i32 %t6, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  store { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d13, i32 0, i32 1) }, ptr %l6, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t9, ptr %l7, !tbaa !27
  %t10 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t10, 0
  store i64 %t11, ptr %l8, !tbaa !24
  %t12 = load i64, ptr %l8, !tbaa !24
  %t13 = mul i64 %t12, 1
  %t14 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t13)
  %t15 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t16 = insertvalue { i64, ptr } %t15, ptr %t14, 1
  store { i64, ptr } %t16, ptr %l9, !tbaa !27
  %t17 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !27
  %t19 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !27
  %t21 = load i64, ptr %l8, !tbaa !24
  %t22 = mul i64 %t21, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t18, ptr %t20, i64 %t22, i1 false)
  %t23 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t23, ptr %l7, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t24 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t24, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t25 = load ptr, ptr %l0, !tbaa !29
  store ptr %t25, ptr %l10, !tbaa !29
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load i32, ptr %l1, !tbaa !23
  %t30 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t26, i32 %t27)
  store i32 %t30, ptr %l13
  br label %bb5
bb5:
  %t31 = load ptr, ptr %l10, !tbaa !29
  %t32 = load i32, ptr %l13, !tbaa !23
  %t33 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %t31, i32 %t32)
  store i64 %t33, ptr %l14
  br label %bb6
bb6:
  %t34 = load ptr, ptr %l0, !tbaa !29
  store ptr %t34, ptr %l15, !tbaa !29
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load i32, ptr %l1, !tbaa !23
  %t39 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t35, i32 %t36)
  store i32 %t39, ptr %l18
  br label %bb7
bb7:
  %t40 = load ptr, ptr %l15, !tbaa !29
  %t41 = load i32, ptr %l18, !tbaa !23
  %t42 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLlvm(ptr %v0, ptr %s0, ptr %v2, ptr %t40, i32 %t41)
  store { i64, ptr } %t42, ptr %l19
  br label %bb8
bb8:
  %t43 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t44 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  %t45 = load i64, ptr %l14, !tbaa !24
  %t46 = call i64 @__olang_fmt_i64(ptr null, i64 %t45)
  %t47 = add i64 %t44, %t46
  %t48 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t49 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t50 = add i64 %t47, %t49
  %t51 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t52 = extractvalue { i64, ptr } %t51, 1
  %t53 = extractvalue { i64, ptr } %t51, 0
  %t54 = add i64 %t50, %t53
  %t55 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t56 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  %t57 = add i64 %t54, %t56
  %t58 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t57)
  call void @olang_textcopy(ptr %t58, ptr %t43, i64 %t44)
  %t59 = getelementptr i8, ptr %t58, i64 %t44
  %t60 = call i64 @__olang_fmt_i64(ptr %t59, i64 %t45)
  %t61 = getelementptr i8, ptr %t59, i64 %t46
  call void @olang_textcopy(ptr %t61, ptr %t48, i64 %t49)
  %t62 = getelementptr i8, ptr %t61, i64 %t49
  call void @olang_textcopy(ptr %t62, ptr %t52, i64 %t53)
  %t63 = getelementptr i8, ptr %t62, i64 %t53
  call void @olang_textcopy(ptr %t63, ptr %t55, i64 %t56)
  %t64 = insertvalue { i64, ptr } undef, i64 %t57, 0
  %t65 = insertvalue { i64, ptr } %t64, ptr %t58, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t65, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eclosedList(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i32
  %l8 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l20 = alloca i1
  %l23 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t1, i32 %a1)
  store { i64, ptr } %t5, ptr %l8
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t6, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t7 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  store i64 %t9, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t11 = load i64, ptr %l3, !tbaa !24
  %t12 = load i64, ptr %l4, !tbaa !24
  %t15 = icmp slt i64 %t11, %t12
  %t17 = xor i1 %t15, true
  br i1 %t17, label %bb3, label %bb4
bb3:
  br label %bb14
bb4:
  br label %bb5
bb5:
  %t19 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t19, ptr %l15, !tbaa !27
  %t20 = load i64, ptr %l3, !tbaa !24
  %t22 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = getelementptr i32, ptr %t23, i64 %t20
  %t25 = load i32, ptr %t24, !tbaa !33
  store i32 %t25, ptr %l5, !tbaa !23
  %t27 = load i32, ptr %l5, !tbaa !23
  %t29 = icmp ne i32 %t27, 0
  br i1 %t29, label %bb6, label %bb7
bb6:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load i32, ptr %l5, !tbaa !23
  %t35 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %t31, i32 %t32)
  store i1 %t35, ptr %l23
  br label %bb8
bb7:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb9
bb8:
  %t36 = load i1, ptr %l23, !tbaa !21
  %t37 = xor i1 %t36, true
  store i1 %t37, ptr %l20, !tbaa !21
  br label %bb9
bb9:
  %t39 = load i1, ptr %l20, !tbaa !21
  br i1 %t39, label %bb10, label %bb11
bb10:
  store i1 false, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t41 = load i64, ptr %l3, !tbaa !24
  %t43 = add i64 %t41, 1
  store i64 %t43, ptr %l3, !tbaa !24
  br label %bb2
bb14:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2edeepest(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i32
  %l11 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l23 = alloca i32
  %l28 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i32 0, ptr %l2, !tbaa !23
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/types:Table", ptr %t1, i32 0, i32 5
  %t6 = sext i32 %a1 to i64
  %t9 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2ftypes_3aTypeId_3e_2_H61b120fbdcc010be1bedf2507e848f7c(ptr %v0, ptr %v0, ptr %t3, i64 %t6)
  store { i64, ptr } %t9, ptr %l11
  br label %bb1
bb1:
  %t10 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t10, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t11 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t11, 0
  store i64 %t13, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  %t15 = load i64, ptr %l4, !tbaa !24
  %t16 = load i64, ptr %l5, !tbaa !24
  %t19 = icmp slt i64 %t15, %t16
  %t21 = xor i1 %t19, true
  br i1 %t21, label %bb3, label %bb4
bb3:
  br label %bb12
bb4:
  br label %bb5
bb5:
  %t23 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t23, ptr %l18, !tbaa !27
  %t24 = load i64, ptr %l4, !tbaa !24
  %t26 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = getelementptr i32, ptr %t27, i64 %t24
  %t29 = load i32, ptr %t28, !tbaa !33
  store i32 %t29, ptr %l6, !tbaa !23
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load i32, ptr %l6, !tbaa !23
  %t35 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2edepthOf(ptr %v0, ptr %t31, i32 %t32)
  store i32 %t35, ptr %l23
  br label %bb6
bb6:
  %t36 = load i32, ptr %l2, !tbaa !23
  %t37 = load i32, ptr %l23, !tbaa !23
  %t39 = icmp sgt i32 %t37, %t36
  br i1 %t39, label %bb7, label %bb8
bb7:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load i32, ptr %l6, !tbaa !23
  %t45 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2edepthOf(ptr %v0, ptr %t41, i32 %t42)
  store i32 %t45, ptr %l28
  br label %bb9
bb8:
  br label %bb10
bb9:
  %t46 = load i32, ptr %l28, !tbaa !23
  store i32 %t46, ptr %l2, !tbaa !23
  br label %bb10
bb10:
  br label %bb11
bb11:
  %t47 = load i64, ptr %l4, !tbaa !24
  %t49 = add i64 %t47, 1
  store i64 %t49, ptr %l4, !tbaa !24
  br label %bb2
bb12:
  %t51 = load i32, ptr %l2, !tbaa !23
  store i32 %t51, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2edepthOf(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l6 = alloca i32
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/types:Table", ptr %a0, i32 0, i32 4
  %t6 = sext i32 %a1 to i64
  %t9 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2eAt_3cI32_3e(ptr %v0, ptr %t3, i64 %t6)
  store i32 %t9, ptr %l6
  br label %bb1
bb1:
  %t10 = load i32, ptr %l6, !tbaa !23
  store i32 %t10, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eenumLlvm(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l12 = alloca i64
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePayloadSize(ptr %v0, ptr %t1, i32 %t2)
  store i64 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i64, ptr %l4, !tbaa !24
  %t7 = icmp slt i64 %t6, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d17, i32 0, i32 1) }, ptr %l6, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t9, ptr %l7, !tbaa !27
  %t10 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t10, 0
  store i64 %t11, ptr %l8, !tbaa !24
  %t12 = load i64, ptr %l8, !tbaa !24
  %t13 = mul i64 %t12, 1
  %t14 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t13)
  %t15 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t16 = insertvalue { i64, ptr } %t15, ptr %t14, 1
  store { i64, ptr } %t16, ptr %l9, !tbaa !27
  %t17 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !27
  %t19 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !27
  %t21 = load i64, ptr %l8, !tbaa !24
  %t22 = mul i64 %t21, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t18, ptr %t20, i64 %t22, i1 false)
  %t23 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t23, ptr %l7, !tbaa !27
  %t24 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t24, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load i32, ptr %l1, !tbaa !23
  %t29 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePayloadSize(ptr %v0, ptr %t25, i32 %t26)
  store i64 %t29, ptr %l12
  br label %bb5
bb5:
  %t30 = load i64, ptr %l12, !tbaa !24
  %t31 = sdiv i64 %t30, 8
  %t32 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t33 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t35 = call i64 @__olang_fmt_i64(ptr null, i64 %t31)
  %t36 = add i64 %t33, %t35
  %t37 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t38 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  %t39 = add i64 %t36, %t38
  %t40 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t39)
  call void @olang_textcopy(ptr %t40, ptr %t32, i64 %t33)
  %t41 = getelementptr i8, ptr %t40, i64 %t33
  %t42 = call i64 @__olang_fmt_i64(ptr %t41, i64 %t31)
  %t43 = getelementptr i8, ptr %t41, i64 %t35
  call void @olang_textcopy(ptr %t43, ptr %t37, i64 %t38)
  %t44 = insertvalue { i64, ptr } undef, i64 %t39, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t40, 1
  store { i64, ptr } %t45, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2efieldBits(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l5 = alloca i64
  %l8 = alloca i64
  %l12 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePackedBits(ptr %v0, ptr %t1, i32 %t2)
  store i64 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i64, ptr %l5, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  %t7 = load i64, ptr %l2, !tbaa !24
  %t9 = icmp sge i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load i64, ptr %l2, !tbaa !24
  store i64 %t11, ptr %l8, !tbaa !24
  br label %bb5
bb3:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load i32, ptr %l1, !tbaa !23
  %t17 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSize(ptr %v0, ptr %t13, i32 %t14)
  store i64 %t17, ptr %l12
  br label %bb4
bb4:
  %t18 = load i64, ptr %l12, !tbaa !24
  %t19 = mul i64 8, %t18
  store i64 %t19, ptr %l8, !tbaa !24
  br label %bb5
bb5:
  %t21 = load i64, ptr %l8, !tbaa !24
  store i64 %t21, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2efieldList(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i32
  %l11 = alloca i32
  %l18 = alloca i32
  %l24 = alloca i1
  %l25 = alloca i32
  %l26 = alloca ptr
  %l29 = alloca i32
  %l30 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t1, i32 %t2)
  store i32 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i32, ptr %l5, !range !{i32 0, i32 33}
  store i32 %t6, ptr %l2
  %t7 = load i32, ptr %l2, !range !{i32 0, i32 33}
  %t9 = trunc i64 18 to i32
  %t10 = icmp eq i32 %t7, %t9
  br i1 %t10, label %bb2, label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb6
bb4:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load i32, ptr %l1, !tbaa !23
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t16, ptr %l11
  br label %bb5
bb5:
  %t17 = load i32, ptr %l11, !tbaa !23
  store i32 %t17, ptr %l6, !tbaa !23
  br label %bb28
bb6:
  %t18 = load i32, ptr %l2, !range !{i32 0, i32 33}
  %t20 = trunc i64 22 to i32
  %t21 = icmp eq i32 %t18, %t20
  br i1 %t21, label %bb7, label %bb8
bb7:
  br label %bb11
bb8:
  %t23 = load i32, ptr %l2, !range !{i32 0, i32 33}
  %t25 = trunc i64 23 to i32
  %t26 = icmp eq i32 %t23, %t25
  br i1 %t26, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load i32, ptr %l1, !tbaa !23
  %t32 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t28, i32 %t29)
  store i32 %t32, ptr %l18
  br label %bb12
bb12:
  %t33 = load i32, ptr %l18, !tbaa !23
  store i32 %t33, ptr %l6, !tbaa !23
  br label %bb28
bb13:
  %t34 = load i32, ptr %l2, !range !{i32 0, i32 33}
  %t36 = trunc i64 32 to i32
  %t37 = icmp eq i32 %t34, %t36
  br i1 %t37, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb23
bb16:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/types:Table", ptr %t39, i32 0, i32 19
  %t42 = load i32, ptr %l1, !tbaa !23
  %t45 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20compile_H5a37a20f375ed653adc00b592f5745cf(ptr %v0, ptr %t41, i32 %t42)
  store i1 %t45, ptr %l24
  br label %bb17
bb17:
  %t46 = load i1, ptr %l24, !tbaa !21
  br i1 %t46, label %bb18, label %bb19
bb18:
  %t47 = load ptr, ptr %l0, !tbaa !29
  store ptr %t47, ptr %l26, !tbaa !29
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load i32, ptr %l1, !tbaa !23
  %t52 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t48, i32 %t49)
  store i32 %t52, ptr %l29
  br label %bb20
bb19:
  store i32 0, ptr %l25, !tbaa !23
  br label %bb22
bb20:
  %t53 = load ptr, ptr %l26, !tbaa !29
  %t54 = load i32, ptr %l29, !tbaa !23
  %t55 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t53, i32 %t54)
  store i32 %t55, ptr %l30
  br label %bb21
bb21:
  %t56 = load i32, ptr %l30, !tbaa !23
  store i32 %t56, ptr %l25, !tbaa !23
  br label %bb22
bb22:
  %t57 = load i32, ptr %l25, !tbaa !23
  store i32 %t57, ptr %l6, !tbaa !23
  br label %bb28
bb23:
  br i1 true, label %bb24, label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb27
bb26:
  store i32 0, ptr %l6, !tbaa !23
  br label %bb28
bb27:
  call void @__olang_check_failed(ptr @olang_loc_94d95030786c6de_dc670b9e390cf1a)
  unreachable
bb28:
  %t58 = load i32, ptr %l6, !tbaa !23
  store i32 %t58, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eintern(ptr %v0, ptr %a0, %"compiler/types:data" %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/types:data"
  %l3 = alloca i32
  %l4 = alloca i32
  %l8 = alloca i32
  %l9 = alloca i32
  %l15 = alloca i64
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store %"compiler/types:data" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/types:Table", ptr %t1, i32 0, i32 2
  %t4 = load %"compiler/types:data", ptr %l1
  %t7 = call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3adata_2c_20compiler__Hde6d536d7268ca732b315d911361d6aa(ptr %v0, ptr %t3, %"compiler/types:data" %t4)
  %t8 = extractvalue { i32, i32 } %t7, 1
  %t9 = extractvalue { i32, i32 } %t7, 0
  store i32 %t9, ptr %l9
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store i32 %t8, ptr %l8
  br label %bb1
bb1:
  %t12 = load i32, ptr %l8, !tbaa !23
  store i32 %t12, ptr %l4, !tbaa !23
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i32 -1, ptr %l4, !tbaa !23
  br label %bb4
bb4:
  %t13 = load i32, ptr %l4, !tbaa !23
  store i32 %t13, ptr %l3, !tbaa !23
  %t14 = load i32, ptr %l3, !tbaa !23
  %t16 = icmp sge i32 %t14, 0
  br i1 %t16, label %bb5, label %bb6
bb5:
  %t18 = load i32, ptr %l3, !tbaa !23
  store i32 %t18, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/types:Table", ptr %t20, i32 0, i32 1
  %t24 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3adata_3e_2eLen_3ccompiler_2ftypes_3adata_3e(ptr %v0, ptr %t22)
  store i64 %t24, ptr %l15
  br label %bb8
bb8:
  %t25 = load i64, ptr %l15, !tbaa !24
  %t26 = trunc i64 %t25 to i32
  store i32 %t26, ptr %l3, !tbaa !23
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/types:Table", ptr %t29, i32 0, i32 1
  %t32 = load %"compiler/types:data", ptr %l1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3adata_3e_2ePush_3ccompiler_2ftypes_3adata_3e(ptr %v0, ptr %t31, %"compiler/types:data" %t32)
  br label %bb9
bb9:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/types:Table", ptr %t35, i32 0, i32 2
  %t38 = load %"compiler/types:data", ptr %l1
  %t39 = load i32, ptr %l3, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3adata_2c_20compiler__Hffc99e12659a835aff737c3e51f11f7b(ptr %v0, ptr %t37, %"compiler/types:data" %t38, i32 %t39)
  br label %bb10
bb10:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/types:Table", ptr %t43, i32 0, i32 4
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2ePush_3cI32_3e(ptr %v0, ptr %t45, i32 %a2)
  br label %bb11
bb11:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/types:Table", ptr %t49, i32 0, i32 20
  %t52 = load i64, ptr @G_2ecompiler_2ftypes_2eNotLaidOut, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t51, i64 %t52)
  br label %bb12
bb12:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/types:Table", ptr %t55, i32 0, i32 21
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t57, i64 0)
  br label %bb13
bb13:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/types:Table", ptr %t59, i32 0, i32 22
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t61, i64 1)
  br label %bb14
bb14:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/types:Table", ptr %t63, i32 0, i32 23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t65, i64 -1)
  br label %bb15
bb15:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/types:Table", ptr %t67, i32 0, i32 25
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t69, i64 -1)
  br label %bb16
bb16:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/types:Table", ptr %t71, i32 0, i32 26
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t73, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d20, i32 0, i32 1) })
  br label %bb17
bb17:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/types:Table", ptr %t75, i32 0, i32 27
  %t78 = load i32, ptr %l3, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t77, i32 %t78)
  br label %bb18
bb18:
  %t81 = load i32, ptr %l3, !tbaa !23
  store i32 %t81, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, i64 } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2elayPacked(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i32
  %l8 = alloca ptr
  %l10 = alloca i64
  %l13 = alloca i64
  %l14 = alloca ptr
  %l17 = alloca i32
  %l18 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l32 = alloca i64
  %l35 = alloca i64
  %rv = alloca { i64, i64 }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/types:Table", ptr %t1, i32 0, i32 23
  store ptr %t3, ptr %l8, !tbaa !29
  %t4 = load i32, ptr %l1, !tbaa !23
  %t6 = sext i32 %t4 to i64
  store i64 %t6, ptr %l10, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/types:Table", ptr %t7, i32 0, i32 24
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t9)
  store i64 %t11, ptr %l13
  br label %bb1
bb1:
  %t12 = load ptr, ptr %l8, !tbaa !29
  %t13 = load i64, ptr %l10, !tbaa !24
  %t14 = load i64, ptr %l13, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t12, i64 %t13, i64 %t14)
  br label %bb2
bb2:
  %t15 = load ptr, ptr %l0, !tbaa !29
  store ptr %t15, ptr %l14, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load i32, ptr %l1, !tbaa !23
  %t20 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t16, i32 %t17)
  store i32 %t20, ptr %l17
  br label %bb3
bb3:
  %t21 = load ptr, ptr %l14, !tbaa !29
  %t22 = load i32, ptr %l17, !tbaa !23
  %t23 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t21, i32 %t22)
  store { i64, ptr } %t23, ptr %l18
  br label %bb4
bb4:
  %t24 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t24, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t25 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t27 = extractvalue { i64, ptr } %t25, 0
  store i64 %t27, ptr %l5, !tbaa !24
  br label %bb5
bb5:
  %t29 = load i64, ptr %l4, !tbaa !24
  %t30 = load i64, ptr %l5, !tbaa !24
  %t33 = icmp slt i64 %t29, %t30
  %t35 = xor i1 %t33, true
  br i1 %t35, label %bb6, label %bb7
bb6:
  br label %bb12
bb7:
  br label %bb8
bb8:
  %t37 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t37, ptr %l25, !tbaa !27
  %t38 = load i64, ptr %l4, !tbaa !24
  %t40 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !27
  %t42 = getelementptr i32, ptr %t41, i64 %t38
  %t43 = load i32, ptr %t42, !tbaa !33
  store i32 %t43, ptr %l6, !tbaa !23
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/types:Table", ptr %t45, i32 0, i32 24
  %t48 = load i64, ptr %l2, !tbaa !24
  %t50 = sdiv i64 %t48, 8
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t47, i64 %t50)
  br label %bb9
bb9:
  %t53 = load i64, ptr %l2, !tbaa !24
  store i64 %t53, ptr %l32, !tbaa !24
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load i32, ptr %l6, !tbaa !23
  %t58 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2efieldBits(ptr %v0, ptr %t54, i32 %t55)
  store i64 %t58, ptr %l35
  br label %bb10
bb10:
  %t59 = load i64, ptr %l32, !tbaa !24
  %t60 = load i64, ptr %l35, !tbaa !24
  %t61 = add i64 %t59, %t60
  store i64 %t61, ptr %l2, !tbaa !24
  br label %bb11
bb11:
  %t63 = load i64, ptr %l4, !tbaa !24
  %t65 = add i64 %t63, 1
  store i64 %t65, ptr %l4, !tbaa !24
  br label %bb5
bb12:
  %t67 = load i64, ptr %l2, !tbaa !24
  %t69 = add i64 %t67, 7
  %t71 = sdiv i64 %t69, 8
  %t73 = insertvalue { i64, i64 } undef, i64 %t71, 0
  %t74 = insertvalue { i64, i64 } %t73, i64 1, 1
  store { i64, i64 } %t74, ptr %rv
  br label %ret
ret:
  %rr = load { i64, i64 }, ptr %rv
  ret { i64, i64 } %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2elistHolds(ptr %v0, ptr %a0, i32 %a1, i1 %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i32
  %l10 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l27 = alloca i1
  %l28 = alloca i1
  %l30 = alloca i1
  %l33 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t1, i32 %a1)
  store { i64, ptr } %t5, ptr %l10
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t6, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t7 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  store i64 %t9, ptr %l6, !tbaa !24
  br label %bb2
bb2:
  %t11 = load i64, ptr %l5, !tbaa !24
  %t12 = load i64, ptr %l6, !tbaa !24
  %t15 = icmp slt i64 %t11, %t12
  %t17 = xor i1 %t15, true
  br i1 %t17, label %bb3, label %bb4
bb3:
  br label %bb24
bb4:
  br label %bb5
bb5:
  %t19 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t19, ptr %l17, !tbaa !27
  %t20 = load i64, ptr %l5, !tbaa !24
  %t22 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = getelementptr i32, ptr %t23, i64 %t20
  %t25 = load i32, ptr %t24, !tbaa !33
  store i32 %t25, ptr %l7, !tbaa !23
  %t27 = load i32, ptr %l7, !tbaa !23
  %t29 = icmp eq i32 %t27, 0
  br i1 %t29, label %bb6, label %bb7
bb6:
  %t33 = xor i1 %a2, true
  br i1 %t33, label %bb8, label %bb9
bb7:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load i32, ptr %l7, !tbaa !23
  %t39 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %t35, i32 %t36)
  store i1 %t39, ptr %l27
  br label %bb11
bb8:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/types:Table", ptr %t40, i32 0, i32 35
  store i1 true, ptr %t42, !tbaa !21
  br label %bb10
bb9:
  br label %bb10
bb10:
  br label %bb22
bb11:
  %t43 = load i1, ptr %l27, !tbaa !21
  br i1 %t43, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l28, !tbaa !21
  br label %bb18
bb13:
  br i1 %a3, label %bb14, label %bb15
bb14:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load i32, ptr %l7, !tbaa !23
  %t50 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnedPart(ptr %v0, ptr %t46, i32 %t47)
  store i1 %t50, ptr %l33
  br label %bb16
bb15:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb17
bb16:
  %t51 = load i1, ptr %l33, !tbaa !21
  store i1 %t51, ptr %l30, !tbaa !21
  br label %bb17
bb17:
  %t52 = load i1, ptr %l30, !tbaa !21
  store i1 %t52, ptr %l28, !tbaa !21
  br label %bb18
bb18:
  %t53 = load i1, ptr %l28, !tbaa !21
  br i1 %t53, label %bb19, label %bb20
bb19:
  store i1 true, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t55 = load i64, ptr %l5, !tbaa !24
  %t57 = add i64 %t55, 1
  store i64 %t57, ptr %l5, !tbaa !24
  br label %bb2
bb24:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2elistShares(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i32
  %l10 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l29 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t1, i32 %a1)
  store { i64, ptr } %t5, ptr %l10
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t6, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t7 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  store i64 %t9, ptr %l6, !tbaa !24
  br label %bb2
bb2:
  %t11 = load i64, ptr %l5, !tbaa !24
  %t12 = load i64, ptr %l6, !tbaa !24
  %t15 = icmp slt i64 %t11, %t12
  %t17 = xor i1 %t15, true
  br i1 %t17, label %bb3, label %bb4
bb3:
  br label %bb17
bb4:
  br label %bb5
bb5:
  %t19 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t19, ptr %l17, !tbaa !27
  %t20 = load i64, ptr %l5, !tbaa !24
  %t22 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = getelementptr i32, ptr %t23, i64 %t20
  %t25 = load i32, ptr %t24, !tbaa !33
  store i32 %t25, ptr %l7, !tbaa !23
  %t27 = load i32, ptr %l7, !tbaa !23
  %t29 = icmp eq i32 %t27, 0
  br i1 %t29, label %bb6, label %bb7
bb6:
  %t33 = xor i1 %a3, true
  br i1 %t33, label %bb8, label %bb9
bb7:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load i32, ptr %l7, !tbaa !23
  %t39 = add i64 %a2, 1
  %t43 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2esharesRefs(ptr %v0, ptr %t35, i32 %t36, i64 %t39)
  store i1 %t43, ptr %l29
  br label %bb11
bb8:
  store i1 true, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  br label %bb15
bb11:
  %t45 = load i1, ptr %l29, !tbaa !21
  br i1 %t45, label %bb12, label %bb13
bb12:
  store i1 true, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t47 = load i64, ptr %l5, !tbaa !24
  %t49 = add i64 %t47, 1
  store i64 %t49, ptr %l5, !tbaa !24
  br label %bb2
bb17:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2enamedLlvm(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca { i64, ptr }
  %l13 = alloca i1
  %l14 = alloca { i64, ptr }
  %l17 = alloca i64
  %l21 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %l33 = alloca ptr
  %l36 = alloca i32
  %l37 = alloca { i64, ptr }
  %l39 = alloca { i64, ptr }
  %l41 = alloca i64
  %l42 = alloca { i64, ptr }
  %s5 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l3, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t3 = load i32, ptr %l1, !tbaa !23
  %t6 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t2, i32 %t3)
  store i32 %t6, ptr %l6
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l3, !tbaa !29
  %t8 = load i32, ptr %l6, !tbaa !23
  %t9 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t7, i32 %t8)
  store i32 %t9, ptr %l7
  br label %bb2
bb2:
  %t10 = load i32, ptr %l7, !range !{i32 0, i32 6}
  store i32 %t10, ptr %l2
  %t11 = load i32, ptr %l2, !range !{i32 0, i32 6}
  %t13 = trunc i64 0 to i32
  %t14 = icmp eq i32 %t11, %t13
  br i1 %t14, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb12
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load i32, ptr %l1, !tbaa !23
  %t20 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePacked(ptr %v0, ptr %t16, i32 %t17)
  store i1 %t20, ptr %l13
  br label %bb6
bb6:
  %t21 = load i1, ptr %l13, !tbaa !21
  br i1 %t21, label %bb7, label %bb8
bb7:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load i32, ptr %l1, !tbaa !23
  %t26 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSize(ptr %v0, ptr %t22, i32 %t23)
  store i64 %t26, ptr %l17
  br label %bb9
bb8:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load i32, ptr %l1, !tbaa !23
  %t31 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2estructName(ptr %v0, ptr %v1, ptr %v2, ptr %t27, i32 %t28)
  store { i64, ptr } %t31, ptr %l21
  br label %bb10
bb9:
  %t32 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t33 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  %t34 = load i64, ptr %l17, !tbaa !24
  %t35 = call i64 @__olang_fmt_i64(ptr null, i64 %t34)
  %t36 = add i64 %t33, %t35
  %t37 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t38 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  %t39 = add i64 %t36, %t38
  %t40 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t39)
  call void @olang_textcopy(ptr %t40, ptr %t32, i64 %t33)
  %t41 = getelementptr i8, ptr %t40, i64 %t33
  %t42 = call i64 @__olang_fmt_i64(ptr %t41, i64 %t34)
  %t43 = getelementptr i8, ptr %t41, i64 %t35
  call void @olang_textcopy(ptr %t43, ptr %t37, i64 %t38)
  %t44 = insertvalue { i64, ptr } undef, i64 %t39, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t40, 1
  store { i64, ptr } %t45, ptr %l14, !tbaa !27
  br label %bb11
bb10:
  %t47 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t47, ptr %l14, !tbaa !27
  br label %bb11
bb11:
  %t48 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t48, ptr %l8, !tbaa !27
  br label %bb32
bb12:
  %t49 = load i32, ptr %l2, !range !{i32 0, i32 6}
  %t51 = trunc i64 1 to i32
  %t52 = icmp eq i32 %t49, %t51
  br i1 %t52, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load i32, ptr %l1, !tbaa !23
  %t58 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eenumLlvm(ptr %v0, ptr %v1, ptr %t54, i32 %t55)
  store { i64, ptr } %t58, ptr %l26
  br label %bb16
bb16:
  %t59 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t59, ptr %l8, !tbaa !27
  br label %bb32
bb17:
  %t60 = load i32, ptr %l2, !range !{i32 0, i32 6}
  %t62 = trunc i64 2 to i32
  %t63 = icmp eq i32 %t60, %t62
  br i1 %t63, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb21
bb20:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d23, i32 0, i32 1) }, ptr %l29, !tbaa !27
  %t65 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t65, ptr %l8, !tbaa !27
  br label %bb32
bb21:
  %t67 = load i32, ptr %l2, !range !{i32 0, i32 6}
  %t69 = trunc i64 4 to i32
  %t70 = icmp eq i32 %t67, %t69
  br i1 %t70, label %bb22, label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb27
bb24:
  store %olang.scope zeroinitializer, ptr %s5
  %t72 = load ptr, ptr %l0, !tbaa !29
  store ptr %t72, ptr %l33, !tbaa !29
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load i32, ptr %l1, !tbaa !23
  %t77 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t73, i32 %t74)
  store i32 %t77, ptr %l36
  br label %bb25
bb25:
  %t78 = load ptr, ptr %l33, !tbaa !29
  %t79 = load i32, ptr %l36, !tbaa !23
  %t80 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLlvm(ptr %v0, ptr %s5, ptr %v2, ptr %t78, i32 %t79)
  store { i64, ptr } %t80, ptr %l37
  br label %bb26
bb26:
  %t81 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t82 = extractvalue { i64, ptr } %t81, 1
  %t83 = extractvalue { i64, ptr } %t81, 0
  %t84 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t83)
  call void @olang_textcopy(ptr %t84, ptr %t82, i64 %t83)
  %t85 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t86 = insertvalue { i64, ptr } %t85, ptr %t84, 1
  store { i64, ptr } %t86, ptr %l8, !tbaa !27
  call void @__olang_scope_close(ptr %s5)
  br label %bb32
bb27:
  br i1 true, label %bb28, label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb31
bb30:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d24, i32 0, i32 1) }, ptr %l39, !tbaa !27
  %t88 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t88, ptr %l8, !tbaa !27
  br label %bb32
bb31:
  call void @__olang_check_failed(ptr @olang_loc_b0143a025c7cdb06_8f46c74feff323b2)
  unreachable
bb32:
  %t90 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t91 = extractvalue { i64, ptr } %t90, 0
  store i64 %t91, ptr %l41, !tbaa !24
  %t92 = load i64, ptr %l41, !tbaa !24
  %t93 = mul i64 %t92, 1
  %t94 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t93)
  %t95 = insertvalue { i64, ptr } undef, i64 %t92, 0
  %t96 = insertvalue { i64, ptr } %t95, ptr %t94, 1
  store { i64, ptr } %t96, ptr %l42, !tbaa !27
  %t97 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !27
  %t99 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !27
  %t101 = load i64, ptr %l41, !tbaa !24
  %t102 = mul i64 %t101, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t98, ptr %t100, i64 %t102, i1 false)
  %t103 = load { i64, ptr }, ptr %l42, !tbaa !27
  store { i64, ptr } %t103, ptr %l8, !tbaa !27
  %t104 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t104, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eneedsDrop(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %l11 = alloca i32
  %l14 = alloca i32
  %l19 = alloca i1
  %l22 = alloca ptr
  %l25 = alloca i32
  %l26 = alloca i32
  %l27 = alloca i1
  %l33 = alloca i1
  %l34 = alloca i1
  %l35 = alloca ptr
  %l38 = alloca i32
  %l40 = alloca i1
  %l43 = alloca ptr
  %l46 = alloca i32
  %l48 = alloca i1
  %l51 = alloca ptr
  %l54 = alloca i32
  %l57 = alloca i1
  %l62 = alloca ptr
  %l65 = alloca i32
  %l67 = alloca i1
  %l70 = alloca ptr
  %l73 = alloca i32
  %l75 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = icmp sgt i64 %t1, 16
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t6, i32 %a1)
  store i32 %t10, ptr %l11
  br label %bb4
bb4:
  %t11 = load i32, ptr %l11, !tbaa !23
  store i32 %t11, ptr %l3, !tbaa !23
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load i32, ptr %l3, !tbaa !23
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t16, ptr %l14
  br label %bb5
bb5:
  %t17 = load i32, ptr %l14, !range !{i32 0, i32 33}
  store i32 %t17, ptr %l4
  %t18 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t20 = trunc i64 18 to i32
  %t21 = icmp eq i32 %t18, %t20
  br i1 %t21, label %bb6, label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb36
bb8:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load i32, ptr %l3, !tbaa !23
  %t27 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %t23, i32 %t24)
  store i1 %t27, ptr %l19
  br label %bb9
bb9:
  %t28 = load i1, ptr %l19, !tbaa !21
  %t29 = xor i1 %t28, true
  br i1 %t29, label %bb10, label %bb11
bb10:
  store i1 false, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t32 = load ptr, ptr %l0, !tbaa !29
  store ptr %t32, ptr %l22, !tbaa !29
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t34 = load i32, ptr %l3, !tbaa !23
  %t37 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t33, i32 %t34)
  store i32 %t37, ptr %l25
  br label %bb13
bb13:
  %t38 = load ptr, ptr %l22, !tbaa !29
  %t39 = load i32, ptr %l25, !tbaa !23
  %t40 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t38, i32 %t39)
  store i32 %t40, ptr %l26
  br label %bb14
bb14:
  %t41 = load i32, ptr %l26, !range !{i32 0, i32 6}
  store i32 %t41, ptr %l5
  %t42 = load i32, ptr %l5, !range !{i32 0, i32 6}
  %t44 = trunc i64 0 to i32
  %t45 = icmp eq i32 %t42, %t44
  br i1 %t45, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb24
bb17:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load i32, ptr %l3, !tbaa !23
  %t49 = load i64, ptr %l2, !tbaa !24
  %t53 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2edestructs(ptr %v0, ptr %t47, i32 %t48, i64 %t49)
  store i1 %t53, ptr %l33
  br label %bb18
bb18:
  %t54 = load i1, ptr %l33, !tbaa !21
  br i1 %t54, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l34, !tbaa !21
  br label %bb23
bb20:
  %t55 = load ptr, ptr %l0, !tbaa !29
  store ptr %t55, ptr %l35, !tbaa !29
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = load i32, ptr %l3, !tbaa !23
  %t60 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t56, i32 %t57)
  store i32 %t60, ptr %l38
  br label %bb21
bb21:
  %t61 = load i64, ptr %l2, !tbaa !24
  %t62 = load ptr, ptr %l35, !tbaa !29
  %t63 = load i32, ptr %l38, !tbaa !23
  %t65 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2epartsDrop(ptr %v0, ptr %t62, i32 %t63, i64 %t61)
  store i1 %t65, ptr %l40
  br label %bb22
bb22:
  %t66 = load i1, ptr %l40, !tbaa !21
  store i1 %t66, ptr %l34, !tbaa !21
  br label %bb23
bb23:
  %t67 = load i1, ptr %l34, !tbaa !21
  store i1 %t67, ptr %l27, !tbaa !21
  br label %bb35
bb24:
  %t68 = load i32, ptr %l5, !range !{i32 0, i32 6}
  %t70 = trunc i64 1 to i32
  %t71 = icmp eq i32 %t68, %t70
  br i1 %t71, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb30
bb27:
  %t73 = load ptr, ptr %l0, !tbaa !29
  store ptr %t73, ptr %l43, !tbaa !29
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load i32, ptr %l3, !tbaa !23
  %t78 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t74, i32 %t75)
  store i32 %t78, ptr %l46
  br label %bb28
bb28:
  %t79 = load i64, ptr %l2, !tbaa !24
  %t80 = load ptr, ptr %l43, !tbaa !29
  %t81 = load i32, ptr %l46, !tbaa !23
  %t83 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2epartsDrop(ptr %v0, ptr %t80, i32 %t81, i64 %t79)
  store i1 %t83, ptr %l48
  br label %bb29
bb29:
  %t84 = load i1, ptr %l48, !tbaa !21
  store i1 %t84, ptr %l27, !tbaa !21
  br label %bb35
bb30:
  br i1 true, label %bb31, label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb34
bb33:
  store i1 false, ptr %l27, !tbaa !21
  br label %bb35
bb34:
  call void @__olang_check_failed(ptr @olang_loc_2cd53dd7f17e3306_fa38995b8825f762)
  unreachable
bb35:
  %t85 = load i1, ptr %l27, !tbaa !21
  store i1 %t85, ptr %rv
  br label %ret
bb36:
  %t86 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t88 = trunc i64 19 to i32
  %t89 = icmp eq i32 %t86, %t88
  br i1 %t89, label %bb37, label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb42
bb39:
  %t91 = load ptr, ptr %l0, !tbaa !29
  store ptr %t91, ptr %l51, !tbaa !29
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load i32, ptr %l3, !tbaa !23
  %t96 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t92, i32 %t93)
  store i32 %t96, ptr %l54
  br label %bb40
bb40:
  %t97 = load i64, ptr %l2, !tbaa !24
  %t99 = add i64 %t97, 1
  %t100 = load ptr, ptr %l51, !tbaa !29
  %t101 = load i32, ptr %l54, !tbaa !23
  %t103 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eneedsDrop(ptr %v0, ptr %t100, i32 %t101, i64 %t99)
  store i1 %t103, ptr %l57
  br label %bb41
bb41:
  %t104 = load i1, ptr %l57, !tbaa !21
  store i1 %t104, ptr %rv
  br label %ret
bb42:
  %t105 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t107 = trunc i64 23 to i32
  %t108 = icmp eq i32 %t105, %t107
  br i1 %t108, label %bb43, label %bb44
bb43:
  br label %bb47
bb44:
  %t110 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t112 = trunc i64 22 to i32
  %t113 = icmp eq i32 %t110, %t112
  br i1 %t113, label %bb45, label %bb46
bb45:
  br label %bb47
bb46:
  br label %bb50
bb47:
  %t115 = load ptr, ptr %l0, !tbaa !29
  store ptr %t115, ptr %l62, !tbaa !29
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t117 = load i32, ptr %l3, !tbaa !23
  %t120 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t116, i32 %t117)
  store i32 %t120, ptr %l65
  br label %bb48
bb48:
  %t121 = load i64, ptr %l2, !tbaa !24
  %t122 = load ptr, ptr %l62, !tbaa !29
  %t123 = load i32, ptr %l65, !tbaa !23
  %t125 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2epartsDrop(ptr %v0, ptr %t122, i32 %t123, i64 %t121)
  store i1 %t125, ptr %l67
  br label %bb49
bb49:
  %t126 = load i1, ptr %l67, !tbaa !21
  store i1 %t126, ptr %rv
  br label %ret
bb50:
  %t127 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t129 = trunc i64 24 to i32
  %t130 = icmp eq i32 %t127, %t129
  br i1 %t130, label %bb51, label %bb52
bb51:
  br label %bb53
bb52:
  br label %bb56
bb53:
  %t132 = load ptr, ptr %l0, !tbaa !29
  store ptr %t132, ptr %l70, !tbaa !29
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t134 = load i32, ptr %l3, !tbaa !23
  %t137 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %v0, ptr %t133, i32 %t134)
  store i32 %t137, ptr %l73
  br label %bb54
bb54:
  %t138 = load i64, ptr %l2, !tbaa !24
  %t139 = load ptr, ptr %l70, !tbaa !29
  %t140 = load i32, ptr %l73, !tbaa !23
  %t142 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2epartsDrop(ptr %v0, ptr %t139, i32 %t140, i64 %t138)
  store i1 %t142, ptr %l75
  br label %bb55
bb55:
  %t143 = load i1, ptr %l75, !tbaa !21
  store i1 %t143, ptr %rv
  br label %ret
bb56:
  br i1 true, label %bb57, label %bb58
bb57:
  br label %bb59
bb58:
  br label %bb60
bb59:
  store i1 false, ptr %rv
  br label %ret
bb60:
  call void @__olang_check_failed(ptr @olang_loc_e12a8b7b5dbe3de7_965cbd36c1b6d563)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2epartsOwn(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i32
  %l9 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l21 = alloca i1
  %l24 = alloca i1
  %l25 = alloca i1
  %l30 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t1, i32 %a1)
  store { i64, ptr } %t5, ptr %l9
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t6, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t7 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  store i64 %t9, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  %t11 = load i64, ptr %l4, !tbaa !24
  %t12 = load i64, ptr %l5, !tbaa !24
  %t15 = icmp slt i64 %t11, %t12
  %t17 = xor i1 %t15, true
  br i1 %t17, label %bb3, label %bb4
bb3:
  br label %bb18
bb4:
  br label %bb5
bb5:
  %t19 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t19, ptr %l16, !tbaa !27
  %t20 = load i64, ptr %l4, !tbaa !24
  %t22 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = getelementptr i32, ptr %t23, i64 %t20
  %t25 = load i32, ptr %t24, !tbaa !33
  store i32 %t25, ptr %l6, !tbaa !23
  %t27 = load i32, ptr %l6, !tbaa !23
  %t29 = icmp ne i32 %t27, 0
  br i1 %t29, label %bb6, label %bb7
bb6:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load i32, ptr %l6, !tbaa !23
  %t35 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnedPart(ptr %v0, ptr %t31, i32 %t32)
  store i1 %t35, ptr %l24
  br label %bb8
bb7:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb13
bb8:
  %t36 = load i1, ptr %l24, !tbaa !21
  br i1 %t36, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l25, !tbaa !21
  br label %bb12
bb10:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load i32, ptr %l6, !tbaa !23
  %t41 = add i64 %a2, 1
  %t45 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eownsParts(ptr %v0, ptr %t37, i32 %t38, i64 %t41)
  store i1 %t45, ptr %l30
  br label %bb11
bb11:
  %t46 = load i1, ptr %l30, !tbaa !21
  store i1 %t46, ptr %l25, !tbaa !21
  br label %bb12
bb12:
  %t47 = load i1, ptr %l25, !tbaa !21
  store i1 %t47, ptr %l21, !tbaa !21
  br label %bb13
bb13:
  %t48 = load i1, ptr %l21, !tbaa !21
  br i1 %t48, label %bb14, label %bb15
bb14:
  store i1 true, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t50 = load i64, ptr %l4, !tbaa !24
  %t52 = add i64 %t50, 1
  store i64 %t52, ptr %l4, !tbaa !24
  br label %bb2
bb18:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2epartsRunCopy(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i32
  %l9 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l21 = alloca i1
  %l24 = alloca i1
  %l26 = alloca i1
  %l31 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t1, i32 %a1)
  store { i64, ptr } %t5, ptr %l9
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t6, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t7 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  store i64 %t9, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  %t11 = load i64, ptr %l4, !tbaa !24
  %t12 = load i64, ptr %l5, !tbaa !24
  %t15 = icmp slt i64 %t11, %t12
  %t17 = xor i1 %t15, true
  br i1 %t17, label %bb3, label %bb4
bb3:
  br label %bb18
bb4:
  br label %bb5
bb5:
  %t19 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t19, ptr %l16, !tbaa !27
  %t20 = load i64, ptr %l4, !tbaa !24
  %t22 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = getelementptr i32, ptr %t23, i64 %t20
  %t25 = load i32, ptr %t24, !tbaa !33
  store i32 %t25, ptr %l6, !tbaa !23
  %t27 = load i32, ptr %l6, !tbaa !23
  %t29 = icmp ne i32 %t27, 0
  br i1 %t29, label %bb6, label %bb7
bb6:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load i32, ptr %l6, !tbaa !23
  %t35 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t31, i32 %t32)
  store i1 %t35, ptr %l24
  br label %bb8
bb7:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb9
bb8:
  %t36 = load i1, ptr %l24, !tbaa !21
  %t37 = xor i1 %t36, true
  store i1 %t37, ptr %l21, !tbaa !21
  br label %bb9
bb9:
  %t39 = load i1, ptr %l21, !tbaa !21
  br i1 %t39, label %bb10, label %bb11
bb10:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load i32, ptr %l6, !tbaa !23
  %t44 = add i64 %a2, 1
  %t48 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2erunsCopy(ptr %v0, ptr %t40, i32 %t41, i64 %t44)
  store i1 %t48, ptr %l31
  br label %bb12
bb11:
  store i1 false, ptr %l26, !tbaa !21
  br label %bb13
bb12:
  %t49 = load i1, ptr %l31, !tbaa !21
  store i1 %t49, ptr %l26, !tbaa !21
  br label %bb13
bb13:
  %t50 = load i1, ptr %l26, !tbaa !21
  br i1 %t50, label %bb14, label %bb15
bb14:
  store i1 true, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t52 = load i64, ptr %l4, !tbaa !24
  %t54 = add i64 %t52, 1
  store i64 %t54, ptr %l4, !tbaa !24
  br label %bb2
bb18:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2esetHolds(ptr %v0, ptr %a0, i32 %a1, i8 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l8 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t3 = sext i32 %a1 to i64
  store i64 %t3, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/types:Table", ptr %t5, i32 0, i32 34
  %t9 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eLen_3cU8_3e(ptr %v0, ptr %t7)
  store i64 %t9, ptr %l8
  br label %bb2
bb2:
  %t10 = load i64, ptr %l3, !tbaa !24
  %t11 = load i64, ptr %l8, !tbaa !24
  %t13 = icmp sle i64 %t11, %t10
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb3, label %bb4
bb3:
  br label %bb8
bb4:
  br label %bb5
bb5:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/types:Table", ptr %t17, i32 0, i32 34
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2ePush_3cU8_3e(ptr %v0, ptr %t19, i8 0)
  br label %bb6
bb6:
  br label %bb7
bb7:
  br label %bb1
bb8:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/types:Table", ptr %t21, i32 0, i32 34
  %t24 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eSetAt_3cU8_3e(ptr %v0, ptr %t23, i64 %t24, i8 %a2)
  br label %bb9
bb9:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2esharesRefs(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca i32
  %l10 = alloca i1
  %l14 = alloca i32
  %l17 = alloca i1
  %l20 = alloca i1
  %l23 = alloca i1
  %l31 = alloca i1
  %l34 = alloca ptr
  %l37 = alloca i32
  %l38 = alloca i32
  %l39 = alloca i1
  %l42 = alloca ptr
  %l45 = alloca i32
  %l47 = alloca i1
  %l50 = alloca ptr
  %l53 = alloca i32
  %l55 = alloca i1
  %l58 = alloca ptr
  %l61 = alloca i32
  %l64 = alloca i1
  %l67 = alloca ptr
  %l70 = alloca i32
  %l73 = alloca i1
  %l78 = alloca ptr
  %l81 = alloca i32
  %l83 = alloca i1
  %l86 = alloca ptr
  %l89 = alloca i32
  %l91 = alloca i1
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
  store i1 true, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load i32, ptr %l1, !tbaa !23
  %t10 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eForeignRef(ptr %v0, ptr %t6, i32 %t7)
  store i1 %t10, ptr %l10
  br label %bb4
bb4:
  %t11 = load i1, ptr %l10, !tbaa !21
  br i1 %t11, label %bb5, label %bb6
bb5:
  store i1 false, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load i32, ptr %l1, !tbaa !23
  %t17 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t13, i32 %t14)
  store i32 %t17, ptr %l14
  br label %bb8
bb8:
  %t18 = load i32, ptr %l14, !range !{i32 0, i32 33}
  store i32 %t18, ptr %l3
  %t19 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t21 = trunc i64 20 to i32
  %t22 = icmp eq i32 %t19, %t21
  br i1 %t22, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l17, !tbaa !21
  br label %bb11
bb10:
  %t24 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t26 = trunc i64 21 to i32
  %t27 = icmp eq i32 %t24, %t26
  store i1 %t27, ptr %l17, !tbaa !21
  br label %bb11
bb11:
  %t29 = load i1, ptr %l17, !tbaa !21
  br i1 %t29, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb14
bb13:
  %t30 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t32 = trunc i64 25 to i32
  %t33 = icmp eq i32 %t30, %t32
  store i1 %t33, ptr %l20, !tbaa !21
  br label %bb14
bb14:
  %t35 = load i1, ptr %l20, !tbaa !21
  br i1 %t35, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l23, !tbaa !21
  br label %bb17
bb16:
  %t36 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t38 = trunc i64 29 to i32
  %t39 = icmp eq i32 %t36, %t38
  store i1 %t39, ptr %l23, !tbaa !21
  br label %bb17
bb17:
  %t41 = load i1, ptr %l23, !tbaa !21
  br i1 %t41, label %bb18, label %bb19
bb18:
  store i1 true, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  %t43 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t45 = trunc i64 18 to i32
  %t46 = icmp eq i32 %t43, %t45
  br i1 %t46, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb53
bb23:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load i32, ptr %l1, !tbaa !23
  %t52 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %t48, i32 %t49)
  store i1 %t52, ptr %l31
  br label %bb24
bb24:
  %t53 = load i1, ptr %l31, !tbaa !21
  %t54 = xor i1 %t53, true
  br i1 %t54, label %bb25, label %bb26
bb25:
  store i1 true, ptr %rv
  br label %ret
bb26:
  br label %bb27
bb27:
  %t57 = load ptr, ptr %l0, !tbaa !29
  store ptr %t57, ptr %l34, !tbaa !29
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t59 = load i32, ptr %l1, !tbaa !23
  %t62 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t58, i32 %t59)
  store i32 %t62, ptr %l37
  br label %bb28
bb28:
  %t63 = load ptr, ptr %l34, !tbaa !29
  %t64 = load i32, ptr %l37, !tbaa !23
  %t65 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t63, i32 %t64)
  store i32 %t65, ptr %l38
  br label %bb29
bb29:
  %t66 = load i32, ptr %l38, !range !{i32 0, i32 6}
  store i32 %t66, ptr %l4
  %t67 = load i32, ptr %l4, !range !{i32 0, i32 6}
  %t69 = trunc i64 0 to i32
  %t70 = icmp eq i32 %t67, %t69
  br i1 %t70, label %bb30, label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb35
bb32:
  %t72 = load ptr, ptr %l0, !tbaa !29
  store ptr %t72, ptr %l42, !tbaa !29
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load i32, ptr %l1, !tbaa !23
  %t77 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t73, i32 %t74)
  store i32 %t77, ptr %l45
  br label %bb33
bb33:
  %t78 = load i64, ptr %l2, !tbaa !24
  %t79 = load ptr, ptr %l42, !tbaa !29
  %t80 = load i32, ptr %l45, !tbaa !23
  %t82 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2elistShares(ptr %v0, ptr %t79, i32 %t80, i64 %t78, i1 false)
  store i1 %t82, ptr %l47
  br label %bb34
bb34:
  %t83 = load i1, ptr %l47, !tbaa !21
  store i1 %t83, ptr %l39, !tbaa !21
  br label %bb52
bb35:
  %t84 = load i32, ptr %l4, !range !{i32 0, i32 6}
  %t86 = trunc i64 1 to i32
  %t87 = icmp eq i32 %t84, %t86
  br i1 %t87, label %bb36, label %bb37
bb36:
  br label %bb38
bb37:
  br label %bb41
bb38:
  %t89 = load ptr, ptr %l0, !tbaa !29
  store ptr %t89, ptr %l50, !tbaa !29
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t91 = load i32, ptr %l1, !tbaa !23
  %t94 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t90, i32 %t91)
  store i32 %t94, ptr %l53
  br label %bb39
bb39:
  %t95 = load i64, ptr %l2, !tbaa !24
  %t96 = load ptr, ptr %l50, !tbaa !29
  %t97 = load i32, ptr %l53, !tbaa !23
  %t99 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2elistShares(ptr %v0, ptr %t96, i32 %t97, i64 %t95, i1 true)
  store i1 %t99, ptr %l55
  br label %bb40
bb40:
  %t100 = load i1, ptr %l55, !tbaa !21
  store i1 %t100, ptr %l39, !tbaa !21
  br label %bb52
bb41:
  %t101 = load i32, ptr %l4, !range !{i32 0, i32 6}
  %t103 = trunc i64 4 to i32
  %t104 = icmp eq i32 %t101, %t103
  br i1 %t104, label %bb42, label %bb43
bb42:
  br label %bb44
bb43:
  br label %bb47
bb44:
  %t106 = load ptr, ptr %l0, !tbaa !29
  store ptr %t106, ptr %l58, !tbaa !29
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load i32, ptr %l1, !tbaa !23
  %t111 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t107, i32 %t108)
  store i32 %t111, ptr %l61
  br label %bb45
bb45:
  %t112 = load i64, ptr %l2, !tbaa !24
  %t114 = add i64 %t112, 1
  %t115 = load ptr, ptr %l58, !tbaa !29
  %t116 = load i32, ptr %l61, !tbaa !23
  %t118 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2esharesRefs(ptr %v0, ptr %t115, i32 %t116, i64 %t114)
  store i1 %t118, ptr %l64
  br label %bb46
bb46:
  %t119 = load i1, ptr %l64, !tbaa !21
  store i1 %t119, ptr %l39, !tbaa !21
  br label %bb52
bb47:
  br i1 true, label %bb48, label %bb49
bb48:
  br label %bb50
bb49:
  br label %bb51
bb50:
  store i1 false, ptr %l39, !tbaa !21
  br label %bb52
bb51:
  call void @__olang_check_failed(ptr @olang_loc_e8197a4e96a8cf74_6f7a0b4ee9272b70)
  unreachable
bb52:
  %t120 = load i1, ptr %l39, !tbaa !21
  store i1 %t120, ptr %rv
  br label %ret
bb53:
  %t121 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t123 = trunc i64 19 to i32
  %t124 = icmp eq i32 %t121, %t123
  br i1 %t124, label %bb54, label %bb55
bb54:
  br label %bb56
bb55:
  br label %bb59
bb56:
  %t126 = load ptr, ptr %l0, !tbaa !29
  store ptr %t126, ptr %l67, !tbaa !29
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t128 = load i32, ptr %l1, !tbaa !23
  %t131 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t127, i32 %t128)
  store i32 %t131, ptr %l70
  br label %bb57
bb57:
  %t132 = load i64, ptr %l2, !tbaa !24
  %t134 = add i64 %t132, 1
  %t135 = load ptr, ptr %l67, !tbaa !29
  %t136 = load i32, ptr %l70, !tbaa !23
  %t138 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2esharesRefs(ptr %v0, ptr %t135, i32 %t136, i64 %t134)
  store i1 %t138, ptr %l73
  br label %bb58
bb58:
  %t139 = load i1, ptr %l73, !tbaa !21
  store i1 %t139, ptr %rv
  br label %ret
bb59:
  %t140 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t142 = trunc i64 22 to i32
  %t143 = icmp eq i32 %t140, %t142
  br i1 %t143, label %bb60, label %bb61
bb60:
  br label %bb64
bb61:
  %t145 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t147 = trunc i64 23 to i32
  %t148 = icmp eq i32 %t145, %t147
  br i1 %t148, label %bb62, label %bb63
bb62:
  br label %bb64
bb63:
  br label %bb67
bb64:
  %t150 = load ptr, ptr %l0, !tbaa !29
  store ptr %t150, ptr %l78, !tbaa !29
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t152 = load i32, ptr %l1, !tbaa !23
  %t155 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t151, i32 %t152)
  store i32 %t155, ptr %l81
  br label %bb65
bb65:
  %t156 = load i64, ptr %l2, !tbaa !24
  %t157 = load ptr, ptr %l78, !tbaa !29
  %t158 = load i32, ptr %l81, !tbaa !23
  %t160 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2elistShares(ptr %v0, ptr %t157, i32 %t158, i64 %t156, i1 false)
  store i1 %t160, ptr %l83
  br label %bb66
bb66:
  %t161 = load i1, ptr %l83, !tbaa !21
  store i1 %t161, ptr %rv
  br label %ret
bb67:
  %t162 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t164 = trunc i64 24 to i32
  %t165 = icmp eq i32 %t162, %t164
  br i1 %t165, label %bb68, label %bb69
bb68:
  br label %bb70
bb69:
  br label %bb73
bb70:
  %t167 = load ptr, ptr %l0, !tbaa !29
  store ptr %t167, ptr %l86, !tbaa !29
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t169 = load i32, ptr %l1, !tbaa !23
  %t172 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %v0, ptr %t168, i32 %t169)
  store i32 %t172, ptr %l89
  br label %bb71
bb71:
  %t173 = load i64, ptr %l2, !tbaa !24
  %t174 = load ptr, ptr %l86, !tbaa !29
  %t175 = load i32, ptr %l89, !tbaa !23
  %t177 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2elistShares(ptr %v0, ptr %t174, i32 %t175, i64 %t173, i1 true)
  store i1 %t177, ptr %l91
  br label %bb72
bb72:
  %t178 = load i1, ptr %l91, !tbaa !21
  store i1 %t178, ptr %rv
  br label %ret
bb73:
  br i1 true, label %bb74, label %bb75
bb74:
  br label %bb76
bb75:
  br label %bb77
bb76:
  store i1 false, ptr %rv
  br label %ret
bb77:
  call void @__olang_check_failed(ptr @olang_loc_e0765d015d87e9a5_6d8cc8ea93d2cf01)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2estructName(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, i64 }
  %l5 = alloca i64
  %l6 = alloca i64
  %l9 = alloca { i64, ptr }
  %l12 = alloca i32
  %l16 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i32
  %l24 = alloca { i64, ptr }
  %l26 = alloca { i64, i64 }
  %l29 = alloca i64
  %l30 = alloca i64
  %l34 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %s0, ptr %v2, ptr %t1, i32 %t2)
  store { i64, ptr } %t5, ptr %l9
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t6, ptr %l2, !tbaa !27
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i32, ptr %l1, !tbaa !23
  %t11 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t7, i32 %t8)
  store i32 %t11, ptr %l12
  br label %bb2
bb2:
  %t12 = load i32, ptr %l12, !tbaa !23
  %t13 = icmp eq i32 %t12, 0
  br i1 %t13, label %bb3, label %bb4
bb3:
  %t15 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t16 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t17 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d25, i32 0, i32 1) }, 0
  %t19 = extractvalue { i64, ptr } %t15, 1
  %t20 = extractvalue { i64, ptr } %t15, 0
  %t21 = add i64 %t17, %t20
  %t22 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  %t24 = add i64 %t21, %t23
  %t25 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t24)
  call void @olang_textcopy(ptr %t25, ptr %t16, i64 %t17)
  %t26 = getelementptr i8, ptr %t25, i64 %t17
  call void @olang_textcopy(ptr %t26, ptr %t19, i64 %t20)
  %t27 = getelementptr i8, ptr %t26, i64 %t20
  call void @olang_textcopy(ptr %t27, ptr %t22, i64 %t23)
  %t28 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t29 = insertvalue { i64, ptr } %t28, ptr %t25, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t29, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t31 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t33 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %s0, ptr %s0, { i64, ptr } %t31, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) })
  %t34 = extractvalue { i32, i64 } %t33, 1
  %t35 = extractvalue { i32, i64 } %t33, 0
  store i32 %t35, ptr %l19
  %t36 = icmp ne i32 %t35, 0
  br i1 %t36, label %bb7, label %ok.37, !prof !99
ok.37:
  store i64 %t34, ptr %l18
  br label %bb6
bb6:
  %t38 = load i64, ptr %l18, !tbaa !24
  store i64 %t38, ptr %l16, !tbaa !24
  br label %bb9
bb7:
  br label %bb8
bb8:
  %t39 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t39, 0
  store i64 %t41, ptr %l16, !tbaa !24
  br label %bb9
bb9:
  %t43 = load i64, ptr %l16, !tbaa !24
  store i64 %t43, ptr %l3, !tbaa !24
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t45 = load i32, ptr %l1, !tbaa !23
  %t48 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eStructBody(ptr %v0, ptr %s0, ptr %v2, ptr %t44, i32 %t45)
  store { i64, ptr } %t48, ptr %l24
  br label %bb10
bb10:
  %t49 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t50 = extractvalue { i64, ptr } %t49, 0
  %t51 = extractvalue { i64, ptr } %t49, 1
  %t52 = mul i64 %t50, 1
  %t53 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t52)
  call void @llvm.memcpy.p0.p0.i64(ptr %t53, ptr %t51, i64 %t52, i1 false)
  %t54 = insertvalue { i64, ptr } undef, i64 %t50, 0
  %t55 = insertvalue { i64, ptr } %t54, ptr %t53, 1
  %t57 = call { i64, i64 } @compiler_2ftypes_2ehash128(ptr %s0, { i64, ptr } %t55)
  store { i64, i64 } %t57, ptr %l26
  br label %bb11
bb11:
  %t58 = load { i64, i64 }, ptr %l26
  store { i64, i64 } %t58, ptr %l4
  %t59 = getelementptr { i64, i64 }, ptr %l4, i32 0, i32 0
  %t60 = load i64, ptr %t59, !tbaa !65
  store i64 %t60, ptr %l5, !tbaa !65
  %t62 = getelementptr { i64, i64 }, ptr %l4, i32 0, i32 1
  %t63 = load i64, ptr %t62, !tbaa !65
  store i64 %t63, ptr %l6, !tbaa !65
  %t65 = load i64, ptr %l3, !tbaa !24
  store i64 %t65, ptr %l29, !tbaa !24
  %t66 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t67 = extractvalue { i64, ptr } %t66, 0
  store i64 %t67, ptr %l30, !tbaa !24
  %t68 = icmp sge i64 0, 0
  br i1 %t68, label %bb12, label %bb13
bb12:
  %t70 = load i64, ptr %l29, !tbaa !24
  %t71 = icmp sle i64 0, %t70
  br i1 %t71, label %bb14, label %bb15
bb13:
  call void @__olang_check_failed(ptr @olang_loc_ddaa3828305a2e93_9dde6ac7f2fcd077)
  unreachable
bb14:
  %t73 = load i64, ptr %l29, !tbaa !24
  %t74 = load i64, ptr %l30, !tbaa !24
  %t75 = icmp sle i64 %t73, %t74
  br i1 %t75, label %bb16, label %bb17
bb15:
  call void @__olang_check_failed(ptr @olang_loc_ddaa3828305a2e93_9dde6ac7f2fcd077)
  unreachable
bb16:
  %t77 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !27
  %t79 = load i64, ptr %l29, !tbaa !24
  %t80 = getelementptr i8, ptr %t78, i64 0
  %t81 = sub i64 %t79, 0
  %t82 = insertvalue { i64, ptr } undef, i64 %t81, 0
  %t83 = insertvalue { i64, ptr } %t82, ptr %t80, 1
  store { i64, ptr } %t83, ptr %l34, !tbaa !27
  %t84 = load i64, ptr %l5, !tbaa !65
  %t86 = call { i64, ptr } @compiler_2ftypes_2ehex16(ptr %s0, i64 %t84)
  store { i64, ptr } %t86, ptr %l36
  br label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_ddaa3828305a2e93_9dde6ac7f2fcd077)
  unreachable
bb18:
  %t87 = load i64, ptr %l6, !tbaa !65
  %t89 = call { i64, ptr } @compiler_2ftypes_2ehex16(ptr %s0, i64 %t87)
  store { i64, ptr } %t89, ptr %l38
  br label %bb19
bb19:
  %t90 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t91 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  %t92 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t93 = extractvalue { i64, ptr } %t92, 1
  %t94 = extractvalue { i64, ptr } %t92, 0
  %t95 = add i64 %t91, %t94
  %t96 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d29, i32 0, i32 1) }, 1
  %t97 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d29, i32 0, i32 1) }, 0
  %t98 = add i64 %t95, %t97
  %t99 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t100 = extractvalue { i64, ptr } %t99, 1
  %t101 = extractvalue { i64, ptr } %t99, 0
  %t102 = add i64 %t98, %t101
  %t103 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t104 = extractvalue { i64, ptr } %t103, 1
  %t105 = extractvalue { i64, ptr } %t103, 0
  %t106 = add i64 %t102, %t105
  %t107 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 1
  %t108 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 0
  %t109 = add i64 %t106, %t108
  %t110 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t109)
  call void @olang_textcopy(ptr %t110, ptr %t90, i64 %t91)
  %t111 = getelementptr i8, ptr %t110, i64 %t91
  call void @olang_textcopy(ptr %t111, ptr %t93, i64 %t94)
  %t112 = getelementptr i8, ptr %t111, i64 %t94
  call void @olang_textcopy(ptr %t112, ptr %t96, i64 %t97)
  %t113 = getelementptr i8, ptr %t112, i64 %t97
  call void @olang_textcopy(ptr %t113, ptr %t100, i64 %t101)
  %t114 = getelementptr i8, ptr %t113, i64 %t101
  call void @olang_textcopy(ptr %t114, ptr %t104, i64 %t105)
  %t115 = getelementptr i8, ptr %t114, i64 %t105
  call void @olang_textcopy(ptr %t115, ptr %t107, i64 %t108)
  %t116 = insertvalue { i64, ptr } undef, i64 %t109, 0
  %t117 = insertvalue { i64, ptr } %t116, ptr %t110, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t117, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eunnamedList(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i1
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l13 = alloca { i64, ptr }
  %l15 = alloca i64
  %l24 = alloca i64
  %l27 = alloca i64
  %l45 = alloca i64
  %l47 = alloca { i64, ptr }
  %l50 = alloca i32
  %l52 = alloca i1
  %l55 = alloca { i64, ptr }
  %l62 = alloca i32
  %l66 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t1, i32 %t2)
  store { i64, ptr } %t5, ptr %l13
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t6, ptr %l2, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  store i64 %t9, ptr %l15, !tbaa !24
  %t10 = load i64, ptr %l15, !tbaa !24
  %t11 = icmp sge i64 %t10, 0
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load i64, ptr %l15, !tbaa !24
  %t14 = icmp sle i64 %t13, 2305843009213693951
  br i1 %t14, label %bb4, label %bb5
bb3:
  call void @__olang_check_failed(ptr @olang_loc_ebf284414dbafd61_1a8e1f26a2703ea5)
  unreachable
bb4:
  %t16 = load i64, ptr %l15, !tbaa !24
  %t17 = mul i64 %t16, 4
  %t18 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t17)
  %t19 = insertvalue { i64, ptr } undef, i64 %t16, 0
  %t20 = insertvalue { i64, ptr } %t19, ptr %t18, 1
  store { i64, ptr } %t20, ptr %l3, !tbaa !27
  store i1 true, ptr %l4, !tbaa !21
  store i64 0, ptr %l5, !tbaa !24
  %t22 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t24 = extractvalue { i64, ptr } %t22, 0
  store i64 %t24, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t26 = load i64, ptr %l6, !tbaa !24
  %t27 = load i64, ptr %l5, !tbaa !24
  %t30 = icmp sgt i64 %t26, %t27
  br i1 %t30, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_ebf284414dbafd61_1a8e1f26a2703ea5)
  unreachable
bb6:
  %t32 = load i64, ptr %l7, !tbaa !24
  %t34 = icmp sgt i64 %t32, 0
  br i1 %t34, label %bb8, label %bb9
bb7:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb11
bb8:
  %t36 = load i64, ptr %l6, !tbaa !24
  %t37 = load i64, ptr %l5, !tbaa !24
  %t40 = sub i64 %t36, %t37
  %t41 = load i64, ptr %l7, !tbaa !24
  %t44 = add i64 %t40, %t41
  %t46 = sub i64 %t44, 1
  %t47 = load i64, ptr %l7, !tbaa !24
  %t50 = sdiv i64 %t46, %t47
  store i64 %t50, ptr %l27, !tbaa !24
  br label %bb10
bb9:
  store i64 0, ptr %l27, !tbaa !24
  br label %bb10
bb10:
  %t52 = load i64, ptr %l27, !tbaa !24
  store i64 %t52, ptr %l24, !tbaa !24
  br label %bb11
bb11:
  %t53 = load i64, ptr %l24, !tbaa !24
  store i64 %t53, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb12
bb12:
  %t54 = load i64, ptr %l9, !tbaa !24
  %t55 = load i64, ptr %l8, !tbaa !24
  %t58 = icmp slt i64 %t54, %t55
  %t60 = xor i1 %t58, true
  br i1 %t60, label %bb13, label %bb14
bb13:
  br label %bb21
bb14:
  br label %bb15
bb15:
  %t62 = load i64, ptr %l5, !tbaa !24
  %t63 = load i64, ptr %l9, !tbaa !24
  %t64 = load i64, ptr %l7, !tbaa !24
  %t67 = mul i64 %t63, %t64
  %t70 = add i64 %t62, %t67
  store i64 %t70, ptr %l10, !tbaa !24
  %t72 = load i64, ptr %l10, !tbaa !24
  store i64 %t72, ptr %l45, !tbaa !24
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t74, ptr %l47, !tbaa !27
  %t75 = load i64, ptr %l10, !tbaa !24
  %t77 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !27
  %t79 = getelementptr i32, ptr %t78, i64 %t75
  %t80 = load i32, ptr %t79, !tbaa !33
  %t83 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eUnnamed(ptr %v0, ptr %t73, i32 %t80)
  store i32 %t83, ptr %l50
  br label %bb16
bb16:
  %t84 = load i32, ptr %l50, !tbaa !23
  %t85 = load i64, ptr %l45, !tbaa !24
  %t86 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t87 = load ptr, ptr %t86, !tbaa !27
  %t88 = getelementptr i32, ptr %t87, i64 %t85
  store i32 %t84, ptr %t88, !tbaa !33
  %t89 = load i1, ptr %l4, !tbaa !21
  br i1 %t89, label %bb17, label %bb18
bb17:
  %t91 = load i64, ptr %l10, !tbaa !24
  %t93 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t94 = load ptr, ptr %t93, !tbaa !27
  %t95 = getelementptr i32, ptr %t94, i64 %t91
  %t96 = load i32, ptr %t95, !tbaa !33
  %t97 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t97, ptr %l55, !tbaa !27
  %t98 = load i64, ptr %l10, !tbaa !24
  %t100 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t101 = load ptr, ptr %t100, !tbaa !27
  %t102 = getelementptr i32, ptr %t101, i64 %t98
  %t103 = load i32, ptr %t102, !tbaa !33
  %t106 = icmp eq i32 %t96, %t103
  store i1 %t106, ptr %l52, !tbaa !21
  br label %bb19
bb18:
  store i1 false, ptr %l52, !tbaa !21
  br label %bb19
bb19:
  %t108 = load i1, ptr %l52, !tbaa !21
  store i1 %t108, ptr %l4, !tbaa !21
  br label %bb20
bb20:
  %t109 = load i64, ptr %l9, !tbaa !24
  %t111 = add i64 %t109, 1
  store i64 %t111, ptr %l9, !tbaa !24
  br label %bb12
bb21:
  %t113 = load i1, ptr %l4, !tbaa !21
  br i1 %t113, label %bb22, label %bb23
bb22:
  %t115 = load i32, ptr %l1, !tbaa !23
  store i32 %t115, ptr %l62, !tbaa !23
  br label %bb25
bb23:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t118 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t121 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t117, { i64, ptr } %t118)
  store i32 %t121, ptr %l66
  br label %bb24
bb24:
  %t122 = load i32, ptr %l66, !tbaa !23
  store i32 %t122, ptr %l62, !tbaa !23
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s0)
  %t123 = load i32, ptr %l62, !tbaa !23
  store i32 %t123, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2evaluePartsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i32
  %l9 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t1, i32 %a1)
  store { i64, ptr } %t5, ptr %l9
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t6, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t7 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  store i64 %t9, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  %t11 = load i64, ptr %l4, !tbaa !24
  %t12 = load i64, ptr %l5, !tbaa !24
  %t15 = icmp slt i64 %t11, %t12
  %t17 = xor i1 %t15, true
  br i1 %t17, label %bb3, label %bb4
bb3:
  br label %bb11
bb4:
  br label %bb5
bb5:
  %t19 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t19, ptr %l16, !tbaa !27
  %t20 = load i64, ptr %l4, !tbaa !24
  %t22 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = getelementptr i32, ptr %t23, i64 %t20
  %t25 = load i32, ptr %t24, !tbaa !33
  store i32 %t25, ptr %l6, !tbaa !23
  %t27 = load i32, ptr %l6, !tbaa !23
  %t29 = icmp ne i32 %t27, 0
  br i1 %t29, label %bb6, label %bb7
bb6:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load i32, ptr %l6, !tbaa !23
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2evalueParts(ptr %v0, ptr %v1, ptr %t31, i32 %t32, ptr %a2)
  br label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t37 = load i64, ptr %l4, !tbaa !24
  %t39 = add i64 %t37, 1
  store i64 %t39, ptr %l4, !tbaa !24
  br label %bb2
bb11:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3acodeWalk_2esome(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i32
  %l7 = alloca ptr
  %l10 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l22 = alloca i1
  %l25 = alloca i1
  %s1 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s1
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/types:codeWalk", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l7, !tbaa !29
  %t6 = load ptr, ptr %l7, !tbaa !29
  %t7 = call ptr @__olang_scope_or(ptr %v1, ptr %t6)
  %t8 = ptrtoint ptr %t7 to i64
  %t10 = inttoptr i64 %t8 to ptr
  %t11 = load ptr, ptr %l7, !tbaa !29
  %t13 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %t10, ptr %s1, ptr %t11, i32 %a1)
  store { i64, ptr } %t13, ptr %l10
  br label %bb1
bb1:
  %t14 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t14, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t15 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t15, 0
  store i64 %t17, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t19 = load i64, ptr %l3, !tbaa !24
  %t20 = load i64, ptr %l4, !tbaa !24
  %t23 = icmp slt i64 %t19, %t20
  %t25 = xor i1 %t23, true
  br i1 %t25, label %bb3, label %bb4
bb3:
  br label %bb14
bb4:
  br label %bb5
bb5:
  %t27 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t27, ptr %l17, !tbaa !27
  %t28 = load i64, ptr %l3, !tbaa !24
  %t30 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !27
  %t32 = getelementptr i32, ptr %t31, i64 %t28
  %t33 = load i32, ptr %t32, !tbaa !33
  store i32 %t33, ptr %l5, !tbaa !23
  %t35 = load i32, ptr %l5, !tbaa !23
  %t37 = icmp ne i32 %t35, 0
  br i1 %t37, label %bb6, label %bb7
bb6:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load i32, ptr %l5, !tbaa !23
  %t43 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3acodeWalk_2ereaches(ptr %v0, ptr %v1, ptr %t39, i32 %t40)
  store i1 %t43, ptr %l25
  br label %bb8
bb7:
  store i1 false, ptr %l22, !tbaa !21
  br label %bb9
bb8:
  %t44 = load i1, ptr %l25, !tbaa !21
  store i1 %t44, ptr %l22, !tbaa !21
  br label %bb9
bb9:
  %t45 = load i1, ptr %l22, !tbaa !21
  br i1 %t45, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s1)
  store i1 true, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t47 = load i64, ptr %l3, !tbaa !24
  %t49 = add i64 %t47, 1
  store i64 %t49, ptr %l3, !tbaa !24
  br label %bb2
bb14:
  call void @__olang_scope_close(ptr %s1)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3arefWalk_2elands(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca i32
  %l10 = alloca ptr
  %l13 = alloca i32
  %l15 = alloca ptr
  %l18 = alloca i1
  %l20 = alloca ptr
  %l23 = alloca i32
  %l28 = alloca ptr
  %l29 = alloca ptr
  %l32 = alloca i32
  %l34 = alloca i32
  %l37 = alloca i64
  %l38 = alloca ptr
  %l40 = alloca i64
  %l43 = alloca ptr
  %l46 = alloca i32
  %l47 = alloca ptr
  %l50 = alloca i32
  %l53 = alloca i1
  %l54 = alloca ptr
  %l55 = alloca ptr
  %l58 = alloca i32
  %l60 = alloca i32
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/types:refWalk", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  store ptr %t6, ptr %l10, !tbaa !29
  %t8 = load ptr, ptr %l10, !tbaa !29
  %t9 = call ptr @__olang_scope_or(ptr %v1, ptr %t8)
  %t10 = ptrtoint ptr %t9 to i64
  %t12 = inttoptr i64 %t10 to ptr
  %t13 = load ptr, ptr %l10, !tbaa !29
  %t15 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t12, ptr %t13, i32 %a1)
  store i32 %t15, ptr %l13
  br label %bb1
bb1:
  %t16 = load i32, ptr %l13, !tbaa !23
  store i32 %t16, ptr %l3, !tbaa !23
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/types:refWalk", ptr %t17, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !29
  store ptr %t20, ptr %l15, !tbaa !29
  %t21 = load i32, ptr %l3, !tbaa !23
  %t22 = load ptr, ptr %l15, !tbaa !29
  %t23 = call ptr @__olang_scope_or(ptr %v2, ptr %t22)
  %t24 = ptrtoint ptr %t23 to i64
  %t26 = inttoptr i64 %t24 to ptr
  %t27 = load ptr, ptr %l15, !tbaa !29
  %t29 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eHas_3ccompiler_2ftypes_3aTypeId_3e(ptr %t26, ptr %t27, i32 %t21)
  store i1 %t29, ptr %l18
  br label %bb2
bb2:
  %t30 = load i1, ptr %l18, !tbaa !21
  br i1 %t30, label %bb3, label %bb4
bb3:
  store i1 true, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t32 = load ptr, ptr %l2, !tbaa !29
  store ptr %t32, ptr %l20, !tbaa !29
  %t33 = load i32, ptr %l3, !tbaa !23
  %t34 = load ptr, ptr %l20, !tbaa !29
  %t35 = call ptr @__olang_scope_or(ptr %v1, ptr %t34)
  %t36 = ptrtoint ptr %t35 to i64
  %t38 = inttoptr i64 %t36 to ptr
  %t39 = load ptr, ptr %l20, !tbaa !29
  %t41 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %t38, ptr %t39, i32 %t33)
  store i32 %t41, ptr %l23
  br label %bb6
bb6:
  %t42 = load i32, ptr %l23, !range !{i32 0, i32 33}
  %t44 = trunc i64 19 to i32
  %t45 = icmp eq i32 %t42, %t44
  %t47 = xor i1 %t45, true
  br i1 %t47, label %bb7, label %bb8
bb7:
  store i1 false, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t50 = load ptr, ptr %l2, !tbaa !29
  store ptr %t50, ptr %l28, !tbaa !29
  %t51 = load ptr, ptr %l2, !tbaa !29
  store ptr %t51, ptr %l29, !tbaa !29
  %t52 = load i32, ptr %l3, !tbaa !23
  %t53 = load ptr, ptr %l29, !tbaa !29
  %t54 = call ptr @__olang_scope_or(ptr %v1, ptr %t53)
  %t55 = ptrtoint ptr %t54 to i64
  %t57 = inttoptr i64 %t55 to ptr
  %t58 = load ptr, ptr %l29, !tbaa !29
  %t60 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %t57, ptr %t58, i32 %t52)
  store i32 %t60, ptr %l32
  br label %bb10
bb10:
  %t61 = load ptr, ptr %l28, !tbaa !29
  %t62 = call ptr @__olang_scope_or(ptr %v1, ptr %t61)
  %t63 = ptrtoint ptr %t62 to i64
  %t65 = inttoptr i64 %t63 to ptr
  %t66 = load ptr, ptr %l28, !tbaa !29
  %t67 = load i32, ptr %l32, !tbaa !23
  %t68 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t65, ptr %t66, i32 %t67)
  store i32 %t68, ptr %l34
  br label %bb11
bb11:
  %t69 = load i32, ptr %l34, !tbaa !23
  store i32 %t69, ptr %l4, !tbaa !23
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/types:refWalk", ptr %t70, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !29
  store ptr %t73, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb12
bb12:
  %t75 = load i64, ptr %l6, !tbaa !24
  store i64 %t75, ptr %l37, !tbaa !24
  %t76 = load ptr, ptr %l5, !tbaa !29
  store ptr %t76, ptr %l38, !tbaa !29
  %t77 = load ptr, ptr %l38, !tbaa !29
  %t78 = call ptr @__olang_scope_or(ptr %v2, ptr %t77)
  %t79 = ptrtoint ptr %t78 to i64
  %t81 = inttoptr i64 %t79 to ptr
  %t82 = load ptr, ptr %l38, !tbaa !29
  %t83 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %t81, ptr %t82)
  store i64 %t83, ptr %l40
  br label %bb13
bb13:
  %t84 = load i64, ptr %l37, !tbaa !24
  %t85 = load i64, ptr %l40, !tbaa !24
  %t86 = icmp slt i64 %t84, %t85
  %t88 = xor i1 %t86, true
  br i1 %t88, label %bb14, label %bb15
bb14:
  br label %bb28
bb15:
  br label %bb16
bb16:
  %t90 = load ptr, ptr %l5, !tbaa !29
  store ptr %t90, ptr %l43, !tbaa !29
  %t91 = load i64, ptr %l6, !tbaa !24
  %t92 = load ptr, ptr %l43, !tbaa !29
  %t93 = call ptr @__olang_scope_or(ptr %v2, ptr %t92)
  %t94 = ptrtoint ptr %t93 to i64
  %t96 = inttoptr i64 %t94 to ptr
  %t97 = load ptr, ptr %l43, !tbaa !29
  %t99 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %t96, ptr %t97, i64 %t91)
  store i32 %t99, ptr %l46
  br label %bb17
bb17:
  %t100 = load i32, ptr %l46, !tbaa !23
  store i32 %t100, ptr %l7, !tbaa !23
  %t101 = load ptr, ptr %l2, !tbaa !29
  store ptr %t101, ptr %l47, !tbaa !29
  %t102 = load i32, ptr %l7, !tbaa !23
  %t103 = load ptr, ptr %l47, !tbaa !29
  %t104 = call ptr @__olang_scope_or(ptr %v1, ptr %t103)
  %t105 = ptrtoint ptr %t104 to i64
  %t107 = inttoptr i64 %t105 to ptr
  %t108 = load ptr, ptr %l47, !tbaa !29
  %t110 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %t107, ptr %t108, i32 %t102)
  store i32 %t110, ptr %l50
  br label %bb18
bb18:
  %t111 = load i32, ptr %l50, !range !{i32 0, i32 33}
  %t113 = trunc i64 19 to i32
  %t114 = icmp eq i32 %t111, %t113
  br i1 %t114, label %bb19, label %bb20
bb19:
  %t116 = load ptr, ptr %l2, !tbaa !29
  store ptr %t116, ptr %l54, !tbaa !29
  %t117 = load ptr, ptr %l2, !tbaa !29
  store ptr %t117, ptr %l55, !tbaa !29
  %t118 = load i32, ptr %l7, !tbaa !23
  %t119 = load ptr, ptr %l55, !tbaa !29
  %t120 = call ptr @__olang_scope_or(ptr %v1, ptr %t119)
  %t121 = ptrtoint ptr %t120 to i64
  %t123 = inttoptr i64 %t121 to ptr
  %t124 = load ptr, ptr %l55, !tbaa !29
  %t126 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %t123, ptr %t124, i32 %t118)
  store i32 %t126, ptr %l58
  br label %bb21
bb20:
  store i1 false, ptr %l53, !tbaa !21
  br label %bb23
bb21:
  %t127 = load ptr, ptr %l54, !tbaa !29
  %t128 = call ptr @__olang_scope_or(ptr %v1, ptr %t127)
  %t129 = ptrtoint ptr %t128 to i64
  %t131 = inttoptr i64 %t129 to ptr
  %t132 = load ptr, ptr %l54, !tbaa !29
  %t133 = load i32, ptr %l58, !tbaa !23
  %t134 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t131, ptr %t132, i32 %t133)
  store i32 %t134, ptr %l60
  br label %bb22
bb22:
  %t135 = load i32, ptr %l4, !tbaa !23
  %t136 = load i32, ptr %l60, !tbaa !23
  %t138 = icmp eq i32 %t136, %t135
  store i1 %t138, ptr %l53, !tbaa !21
  br label %bb23
bb23:
  %t140 = load i1, ptr %l53, !tbaa !21
  br i1 %t140, label %bb24, label %bb25
bb24:
  store i1 true, ptr %rv
  br label %ret
bb25:
  br label %bb26
bb26:
  br label %bb27
bb27:
  %t142 = load i64, ptr %l6, !tbaa !24
  %t144 = add i64 %t142, 1
  store i64 %t144, ptr %l6, !tbaa !24
  br label %bb12
bb28:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftypes_2ecompiler_2ftypes_3arefWalk_2esome(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i32
  %l7 = alloca ptr
  %l10 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l22 = alloca i1
  %l25 = alloca i1
  %s1 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s1
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/types:refWalk", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l7, !tbaa !29
  %t6 = load ptr, ptr %l7, !tbaa !29
  %t7 = call ptr @__olang_scope_or(ptr %v1, ptr %t6)
  %t8 = ptrtoint ptr %t7 to i64
  %t10 = inttoptr i64 %t8 to ptr
  %t11 = load ptr, ptr %l7, !tbaa !29
  %t13 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %t10, ptr %s1, ptr %t11, i32 %a1)
  store { i64, ptr } %t13, ptr %l10
  br label %bb1
bb1:
  %t14 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t14, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t15 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t15, 0
  store i64 %t17, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t19 = load i64, ptr %l3, !tbaa !24
  %t20 = load i64, ptr %l4, !tbaa !24
  %t23 = icmp slt i64 %t19, %t20
  %t25 = xor i1 %t23, true
  br i1 %t25, label %bb3, label %bb4
bb3:
  br label %bb14
bb4:
  br label %bb5
bb5:
  %t27 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t27, ptr %l17, !tbaa !27
  %t28 = load i64, ptr %l3, !tbaa !24
  %t30 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !27
  %t32 = getelementptr i32, ptr %t31, i64 %t28
  %t33 = load i32, ptr %t32, !tbaa !33
  store i32 %t33, ptr %l5, !tbaa !23
  %t35 = load i32, ptr %l5, !tbaa !23
  %t37 = icmp ne i32 %t35, 0
  br i1 %t37, label %bb6, label %bb7
bb6:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load i32, ptr %l5, !tbaa !23
  %t43 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3arefWalk_2ereaches(ptr %v0, ptr %v1, ptr %v2, ptr %t39, i32 %t40)
  store i1 %t43, ptr %l25
  br label %bb8
bb7:
  store i1 false, ptr %l22, !tbaa !21
  br label %bb9
bb8:
  %t44 = load i1, ptr %l25, !tbaa !21
  store i1 %t44, ptr %l22, !tbaa !21
  br label %bb9
bb9:
  %t45 = load i1, ptr %l22, !tbaa !21
  br i1 %t45, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s1)
  store i1 true, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t47 = load i64, ptr %l3, !tbaa !24
  %t49 = add i64 %t47, 1
  store i64 %t49, ptr %l3, !tbaa !24
  br label %bb2
bb14:
  call void @__olang_scope_close(ptr %s1)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2ftypes_2ehex16(ptr %v0, i64 %a0) #0 {
entry:
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store i64 %a0, ptr %l1, !tbaa !65
  %t2 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s0, i64 16)
  %t3 = extractvalue { i32, i64 } %t2, 1
  %t4 = extractvalue { i32, i64 } %t2, 0
  store i32 %t4, ptr %l3
  %t5 = icmp ne i32 %t4, 0
  br i1 %t5, label %bb2, label %ok.6, !prof !99
ok.6:
  store i64 %t3, ptr %l2
  br label %bb1
bb1:
  %t7 = load i64, ptr %l1, !tbaa !65
  %t8 = load i64, ptr %l2, !tbaa !24
  %t9 = call { i64, ptr } @std_2fprelude_2ftext_2eU64_2eFormat(ptr %v0, i64 %t7, i64 %t8)
  store { i64, ptr } %t9, ptr %l4
  br label %bb3
bb2:
  call void @__olang_check_failed(ptr @olang_loc_9d78c5c339795d98_5bda6918f751e21c)
  unreachable
bb3:
  %t10 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t10, 0
  %t12 = extractvalue { i64, ptr } %t10, 1
  %t13 = mul i64 %t11, 1
  %t14 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t13)
  call void @llvm.memcpy.p0.p0.i64(ptr %t14, ptr %t12, i64 %t13, i1 false)
  %t15 = insertvalue { i64, ptr } undef, i64 %t11, 0
  %t16 = insertvalue { i64, ptr } %t15, ptr %t14, 1
  %t18 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2ePadStart(ptr %v0, ptr %v0, { i64, ptr } %t16, i64 16, i8 48)
  store { i64, ptr } %t18, ptr %l6
  br label %bb4
bb4:
  %t19 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t20 = extractvalue { i64, ptr } %t19, 0
  store i64 %t20, ptr %l7, !tbaa !24
  %t21 = load i64, ptr %l7, !tbaa !24
  %t22 = mul i64 %t21, 1
  %t23 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t22)
  %t24 = insertvalue { i64, ptr } undef, i64 %t21, 0
  %t25 = insertvalue { i64, ptr } %t24, ptr %t23, 1
  store { i64, ptr } %t25, ptr %l8, !tbaa !27
  %t26 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !27
  %t30 = load i64, ptr %l7, !tbaa !24
  %t31 = mul i64 %t30, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t27, ptr %t29, i64 %t31, i1 false)
  call void @__olang_scope_close(ptr %s0)
  %t32 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t32, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2ftypes_2eprimIndex(i64 %a0, i1 %a1) #0 {
entry:
  %l0 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l16 = alloca i64
  %l18 = alloca i64
  %rv = alloca i64
  store i64 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l0, !tbaa !24
  %t3 = icmp eq i64 %t1, 8
  br i1 %t3, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  store i64 0, ptr %l3, !tbaa !24
  br label %bb21
bb4:
  %t5 = load i64, ptr %l0, !tbaa !24
  %t7 = icmp eq i64 %t5, 16
  br i1 %t7, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  store i64 1, ptr %l3, !tbaa !24
  br label %bb21
bb8:
  %t9 = load i64, ptr %l0, !tbaa !24
  %t11 = icmp eq i64 %t9, 32
  br i1 %t11, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  store i64 2, ptr %l3, !tbaa !24
  br label %bb21
bb12:
  %t13 = load i64, ptr %l0, !tbaa !24
  %t15 = icmp eq i64 %t13, 64
  br i1 %t15, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store i64 3, ptr %l3, !tbaa !24
  br label %bb21
bb16:
  br i1 true, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store i64 -1, ptr %l3, !tbaa !24
  br label %bb21
bb20:
  call void @__olang_check_failed(ptr @olang_loc_99e2f46192b0b63e_14d40f533c20e2f2)
  unreachable
bb21:
  %t17 = load i64, ptr %l3, !tbaa !24
  store i64 %t17, ptr %l2, !tbaa !24
  %t18 = load i64, ptr %l2, !tbaa !24
  %t20 = icmp slt i64 %t18, 0
  br i1 %t20, label %bb22, label %bb23
bb22:
  store i64 0, ptr %rv
  br label %ret
bb23:
  br label %bb24
bb24:
  %t23 = load i64, ptr %l2, !tbaa !24
  %t25 = add i64 3, %t23
  store i64 %t25, ptr %l16, !tbaa !24
  br i1 %a1, label %bb25, label %bb26
bb25:
  store i64 4, ptr %l18, !tbaa !24
  br label %bb27
bb26:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb27
bb27:
  %t28 = load i64, ptr %l16, !tbaa !24
  %t29 = load i64, ptr %l18, !tbaa !24
  %t30 = add i64 %t28, %t29
  store i64 %t30, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2ftypes_2erunLess(ptr %v0, { i64, ptr } %a0, i64 %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l14 = alloca i64
  %l17 = alloca i64
  %l35 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l46 = alloca { i64, ptr }
  %l51 = alloca { i64, ptr }
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l4, !tbaa !24
  store i64 %a3, ptr %l5, !tbaa !24
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
  store i64 0, ptr %l14, !tbaa !24
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
  store i64 %t27, ptr %l17, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb5
bb5:
  %t29 = load i64, ptr %l17, !tbaa !24
  store i64 %t29, ptr %l14, !tbaa !24
  br label %bb6
bb6:
  %t30 = load i64, ptr %l14, !tbaa !24
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
  br label %bb15
bb9:
  br label %bb10
bb10:
  %t39 = load i64, ptr %l4, !tbaa !24
  %t40 = load i64, ptr %l8, !tbaa !24
  %t41 = load i64, ptr %l6, !tbaa !24
  %t44 = mul i64 %t40, %t41
  %t47 = add i64 %t39, %t44
  store i64 %t47, ptr %l9, !tbaa !24
  %t49 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t49, ptr %l35, !tbaa !27
  %t50 = load i64, ptr %l1, !tbaa !24
  %t51 = load i64, ptr %l9, !tbaa !24
  %t54 = add i64 %t50, %t51
  %t56 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !27
  %t58 = getelementptr i64, ptr %t57, i64 %t54
  %t59 = load i64, ptr %t58, !tbaa !34
  %t60 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t60, ptr %l40, !tbaa !27
  %t61 = load i64, ptr %l2, !tbaa !24
  %t62 = load i64, ptr %l9, !tbaa !24
  %t65 = add i64 %t61, %t62
  %t67 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !27
  %t69 = getelementptr i64, ptr %t68, i64 %t65
  %t70 = load i64, ptr %t69, !tbaa !34
  %t73 = icmp ne i64 %t59, %t70
  br i1 %t73, label %bb11, label %bb12
bb11:
  %t75 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t75, ptr %l46, !tbaa !27
  %t76 = load i64, ptr %l1, !tbaa !24
  %t77 = load i64, ptr %l9, !tbaa !24
  %t80 = add i64 %t76, %t77
  %t82 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !27
  %t84 = getelementptr i64, ptr %t83, i64 %t80
  %t85 = load i64, ptr %t84, !tbaa !34
  %t86 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t86, ptr %l51, !tbaa !27
  %t87 = load i64, ptr %l2, !tbaa !24
  %t88 = load i64, ptr %l9, !tbaa !24
  %t91 = add i64 %t87, %t88
  %t93 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t94 = load ptr, ptr %t93, !tbaa !27
  %t95 = getelementptr i64, ptr %t94, i64 %t91
  %t96 = load i64, ptr %t95, !tbaa !34
  %t99 = icmp slt i64 %t85, %t96
  store i1 %t99, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t101 = load i64, ptr %l8, !tbaa !24
  %t103 = add i64 %t101, 1
  store i64 %t103, ptr %l8, !tbaa !24
  br label %bb7
bb15:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2ftypes_2esortRuns(ptr %v0, { i64, ptr } %a0, i64 %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l23 = alloca i64
  %l26 = alloca i64
  %l47 = alloca i1
  %l61 = alloca i1
  %l67 = alloca i64
  %l70 = alloca i64
  %l88 = alloca { i64, ptr }
  %l98 = alloca { i64, ptr }
  %l107 = alloca { i64, ptr }
  %l116 = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store i64 1, ptr %l4, !tbaa !24
  store i64 %a2, ptr %l5, !tbaa !24
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
  store i64 0, ptr %l23, !tbaa !24
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
  store i64 %t27, ptr %l26, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb5
bb5:
  %t29 = load i64, ptr %l26, !tbaa !24
  store i64 %t29, ptr %l23, !tbaa !24
  br label %bb6
bb6:
  %t30 = load i64, ptr %l23, !tbaa !24
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
  br label %bb34
bb9:
  br label %bb10
bb10:
  %t39 = load i64, ptr %l4, !tbaa !24
  %t40 = load i64, ptr %l8, !tbaa !24
  %t41 = load i64, ptr %l6, !tbaa !24
  %t44 = mul i64 %t40, %t41
  %t47 = add i64 %t39, %t44
  store i64 %t47, ptr %l10, !tbaa !24
  br label %bb11
bb11:
  %t51 = load i64, ptr %l10, !tbaa !24
  %t53 = icmp sgt i64 %t51, 0
  br i1 %t53, label %bb12, label %bb13
bb12:
  %t55 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t56 = load i64, ptr %l1, !tbaa !24
  %t57 = load i64, ptr %l10, !tbaa !24
  %t58 = load i64, ptr %l3, !tbaa !24
  %t61 = mul i64 %t57, %t58
  %t64 = add i64 %t56, %t61
  %t65 = load i64, ptr %l1, !tbaa !24
  %t66 = load i64, ptr %l10, !tbaa !24
  %t68 = sub i64 %t66, 1
  %t69 = load i64, ptr %l3, !tbaa !24
  %t72 = mul i64 %t68, %t69
  %t75 = add i64 %t65, %t72
  %t76 = load i64, ptr %l3, !tbaa !24
  %t81 = call i1 @compiler_2ftypes_2erunLess(ptr %v0, { i64, ptr } %t55, i64 %t64, i64 %t75, i64 %t76)
  store i1 %t81, ptr %l61
  br label %bb14
bb13:
  store i1 false, ptr %l47, !tbaa !21
  br label %bb15
bb14:
  %t82 = load i1, ptr %l61, !tbaa !21
  store i1 %t82, ptr %l47, !tbaa !21
  br label %bb15
bb15:
  %t83 = load i1, ptr %l47, !tbaa !21
  %t84 = xor i1 %t83, true
  br i1 %t84, label %bb16, label %bb17
bb16:
  br label %bb32
bb17:
  br label %bb18
bb18:
  store i64 0, ptr %l11, !tbaa !24
  %t86 = load i64, ptr %l3, !tbaa !24
  store i64 %t86, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t88 = load i64, ptr %l12, !tbaa !24
  %t89 = load i64, ptr %l11, !tbaa !24
  %t92 = icmp sgt i64 %t88, %t89
  br i1 %t92, label %bb19, label %bb20
bb19:
  %t94 = load i64, ptr %l13, !tbaa !24
  %t96 = icmp sgt i64 %t94, 0
  br i1 %t96, label %bb21, label %bb22
bb20:
  store i64 0, ptr %l67, !tbaa !24
  br label %bb24
bb21:
  %t98 = load i64, ptr %l12, !tbaa !24
  %t99 = load i64, ptr %l11, !tbaa !24
  %t102 = sub i64 %t98, %t99
  %t103 = load i64, ptr %l13, !tbaa !24
  %t106 = add i64 %t102, %t103
  %t108 = sub i64 %t106, 1
  %t109 = load i64, ptr %l13, !tbaa !24
  %t112 = sdiv i64 %t108, %t109
  store i64 %t112, ptr %l70, !tbaa !24
  br label %bb23
bb22:
  store i64 0, ptr %l70, !tbaa !24
  br label %bb23
bb23:
  %t114 = load i64, ptr %l70, !tbaa !24
  store i64 %t114, ptr %l67, !tbaa !24
  br label %bb24
bb24:
  %t115 = load i64, ptr %l67, !tbaa !24
  store i64 %t115, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb25
bb25:
  %t116 = load i64, ptr %l15, !tbaa !24
  %t117 = load i64, ptr %l14, !tbaa !24
  %t120 = icmp slt i64 %t116, %t117
  %t122 = xor i1 %t120, true
  br i1 %t122, label %bb26, label %bb27
bb26:
  br label %bb30
bb27:
  br label %bb28
bb28:
  %t124 = load i64, ptr %l11, !tbaa !24
  %t125 = load i64, ptr %l15, !tbaa !24
  %t126 = load i64, ptr %l13, !tbaa !24
  %t129 = mul i64 %t125, %t126
  %t132 = add i64 %t124, %t129
  store i64 %t132, ptr %l16, !tbaa !24
  %t134 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t134, ptr %l88, !tbaa !27
  %t135 = load i64, ptr %l1, !tbaa !24
  %t136 = load i64, ptr %l10, !tbaa !24
  %t138 = sub i64 %t136, 1
  %t139 = load i64, ptr %l3, !tbaa !24
  %t142 = mul i64 %t138, %t139
  %t145 = add i64 %t135, %t142
  %t146 = load i64, ptr %l16, !tbaa !24
  %t149 = add i64 %t145, %t146
  %t151 = getelementptr { i64, ptr }, ptr %l88, i32 0, i32 1
  %t152 = load ptr, ptr %t151, !tbaa !27
  %t153 = getelementptr i64, ptr %t152, i64 %t149
  %t154 = load i64, ptr %t153, !tbaa !34
  %t156 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t156, ptr %l98, !tbaa !27
  %t157 = load i64, ptr %l1, !tbaa !24
  %t158 = load i64, ptr %l10, !tbaa !24
  %t159 = load i64, ptr %l3, !tbaa !24
  %t162 = mul i64 %t158, %t159
  %t165 = add i64 %t157, %t162
  %t166 = load i64, ptr %l16, !tbaa !24
  %t169 = add i64 %t165, %t166
  %t171 = getelementptr { i64, ptr }, ptr %l98, i32 0, i32 1
  %t172 = load ptr, ptr %t171, !tbaa !27
  %t173 = getelementptr i64, ptr %t172, i64 %t169
  %t174 = load i64, ptr %t173, !tbaa !34
  %t176 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t176, ptr %l107, !tbaa !27
  %t177 = load i64, ptr %l1, !tbaa !24
  %t178 = load i64, ptr %l10, !tbaa !24
  %t179 = load i64, ptr %l3, !tbaa !24
  %t182 = mul i64 %t178, %t179
  %t185 = add i64 %t177, %t182
  %t186 = load i64, ptr %l16, !tbaa !24
  %t189 = add i64 %t185, %t186
  %t193 = getelementptr { i64, ptr }, ptr %l107, i32 0, i32 1
  %t194 = load ptr, ptr %t193, !tbaa !27
  %t195 = getelementptr i64, ptr %t194, i64 %t189
  store i64 %t154, ptr %t195, !tbaa !34
  %t196 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t196, ptr %l116, !tbaa !27
  %t197 = load i64, ptr %l1, !tbaa !24
  %t198 = load i64, ptr %l10, !tbaa !24
  %t200 = sub i64 %t198, 1
  %t201 = load i64, ptr %l3, !tbaa !24
  %t204 = mul i64 %t200, %t201
  %t207 = add i64 %t197, %t204
  %t208 = load i64, ptr %l16, !tbaa !24
  %t211 = add i64 %t207, %t208
  %t215 = getelementptr { i64, ptr }, ptr %l116, i32 0, i32 1
  %t216 = load ptr, ptr %t215, !tbaa !27
  %t217 = getelementptr i64, ptr %t216, i64 %t211
  store i64 %t174, ptr %t217, !tbaa !34
  br label %bb29
bb29:
  %t218 = load i64, ptr %l15, !tbaa !24
  %t220 = add i64 %t218, 1
  store i64 %t220, ptr %l15, !tbaa !24
  br label %bb25
bb30:
  %t222 = load i64, ptr %l10, !tbaa !24
  %t224 = sub i64 %t222, 1
  store i64 %t224, ptr %l10, !tbaa !24
  br label %bb31
bb31:
  br label %bb11
bb32:
  br label %bb33
bb33:
  %t226 = load i64, ptr %l8, !tbaa !24
  %t228 = add i64 %t226, 1
  store i64 %t228, ptr %l8, !tbaa !24
  br label %bb7
bb34:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2ftypes_2esymbolHexDigit(i8 %a0) #0 {
entry:
  %l0 = alloca i8
  %l3 = alloca i1
  %l6 = alloca i1
  %l9 = alloca i1
  %rv = alloca i1
  store i8 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i8, ptr %l0, !tbaa !22
  %t3 = icmp uge i8 %t1, 48
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i8, ptr %l0, !tbaa !22
  %t7 = icmp ule i8 %t5, 57
  store i1 %t7, ptr %l3, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l3, !tbaa !21
  br label %bb3
bb3:
  %t9 = load i1, ptr %l3, !tbaa !21
  br i1 %t9, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb9
bb5:
  %t10 = load i8, ptr %l0, !tbaa !22
  %t12 = icmp uge i8 %t10, 97
  br i1 %t12, label %bb6, label %bb7
bb6:
  %t14 = load i8, ptr %l0, !tbaa !22
  %t16 = icmp ule i8 %t14, 102
  store i1 %t16, ptr %l9, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb8
bb8:
  %t18 = load i1, ptr %l9, !tbaa !21
  store i1 %t18, ptr %l6, !tbaa !21
  br label %bb9
bb9:
  %t19 = load i1, ptr %l6, !tbaa !21
  store i1 %t19, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2ftypes_2esymbolHexValue(i8 %a0) #0 {
entry:
  %l0 = alloca i8
  %l3 = alloca i64
  %rv = alloca i64
  store i8 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i8, ptr %l0, !tbaa !22
  %t3 = icmp ule i8 %t1, 57
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i8, ptr %l0, !tbaa !22
  %t7 = sub i8 %t5, 48
  %t9 = zext i8 %t7 to i64
  store i64 %t9, ptr %l3, !tbaa !24
  br label %bb3
bb2:
  %t11 = load i8, ptr %l0, !tbaa !22
  %t13 = sub i8 %t11, 97
  %t15 = zext i8 %t13 to i64
  %t17 = add i64 %t15, 10
  store i64 %t17, ptr %l3, !tbaa !24
  br label %bb3
bb3:
  %t19 = load i64, ptr %l3, !tbaa !24
  store i64 %t19, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

@.d0 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"__" }>, align 8
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
@.d1 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"_H" }>, align 8
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
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@olang_2esole_2eArray_3cArray_3ccompiler_2ftypes_3aTypeId_3e_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@__olang_empty_array = external constant [16 x i64]
@olang_2esole_2eArray_3cArray_3cI64_3e_26_3e_2e_2d1 = weak hidden constant i1 false
@.d2 = private constant <{ i64, [2 x i64] }> <{ i64 0, [2 x i64] [i64 0, i64 0] }>, align 8
declare ptr @__olang_scope_or(ptr, ptr)
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@.d3 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"#" }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@__olang_prog_scope = external thread_local(initialexec) global ptr
@.d4 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d5 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d6 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" borrows " }>, align 8
@.d7 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d8 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"i32" }>, align 8
@.d9 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"void" }>, align 8
@.d10 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"i32" }>, align 8
@.d11 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"{ i32, " }>, align 8
@.d12 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" }" }>, align 8
define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2ftypes_3aKind(ptr %a0, ptr %a1) #0 {
entry:
  %l2 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store i1 true, ptr %l2, !tbaa !21
  %t2 = load i32, ptr %a0, !range !{i32 0, i32 33}
  %t3 = sext i32 %t2 to i64
  %t5 = load i32, ptr %a1, !range !{i32 0, i32 33}
  %t6 = sext i32 %t5 to i64
  %t9 = icmp eq i64 %t3, %t6
  br i1 %t9, label %bb2, label %bb1
bb1:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb3
bb2:
  br label %bb3
bb3:
  %t11 = load i1, ptr %l2, !tbaa !21
  store i1 %t11, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@.d13 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"{ i64, ptr }" }>, align 8
@.d14 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"[" }>, align 8
@.d15 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" x " }>, align 8
@.d16 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"]" }>, align 8
@.d17 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"i32" }>, align 8
@.d18 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"{ i64, [" }>, align 8
@.d19 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" x i64] }" }>, align 8
@.d20 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d21 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"[" }>, align 8
@.d22 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" x i8]" }>, align 8
@.d23 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"i32" }>, align 8
@.d24 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"?" }>, align 8
@.d25 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"%\22" }>, align 8
@.d26 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\22" }>, align 8
@.d27 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"<" }>, align 8
@.d28 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"%\22" }>, align 8
@.d29 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d30 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\22" }>, align 8
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
declare i64 @compiler_2ftypes_2eIntWidth(ptr %v0, { i64, ptr } %a0)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2ftypes_2ehex2(ptr %v0, i8 %a0)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare { i64, i64 } @compiler_2ftypes_2ehash128(ptr %v0, { i64, ptr } %a0)
@olang_loc_a031dfbe8d9d2eb5_ead73bcf09c7e3f9 = external constant [0 x i8]
declare void @compiler_2ftypes_3aTable_2ector(ptr %out, ptr %v0, ptr %v1, ptr %a0)
@olang_loc_bd6aedfbb004cefb_a7e94c49277e6337 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2ftypes_3aTypeId_3e_2_H5d6217f1de626e258ec0008385e9bf9b(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_f54586e6a50c1e66_9f53f9bdb86e8e82 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e_2ePush_3cArray_3cI64_3e_26_3e(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_ede49b2874c89d85_5f433bfacafc8ba1 = external constant [0 x i8]
declare %"compiler/types:data" @compiler_2ftypes_3adata_2ector(ptr %v0, i32 %a0, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6, i64 %a7)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i32 %a1)
declare { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %v0, i64 %a0)
declare { i64, ptr } @std_2fprelude_2ftext_2eU64_2eFormat(ptr %v0, i64 %a0, i64 %a1)
@olang_loc_30e02956f84eec46_91b8152c5eb3aca = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_Hb3133f486435530b533aaf49461c92b5(ptr %v0, ptr %a0, i32 %a1)
declare { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_H257d83b06934604763b32ef91c51c1d2(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_H64d9be73b6c9bed004c541bdf7f0ca0a(ptr %v0, ptr %a0, i32 %a1, i1 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDestructs(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_5cbd31595b499a54_61b0a2a5664e21e0 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_3e_2ector(ptr %v0, i64 %a0)
@olang_loc_4cf414dd239e444f_4f727e94fd163263 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_3e_2eLen_3cArray_3cI64_3e_3e(ptr %v0, ptr %a0)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/types:data" @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eat(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Array_3_H6b4c62a37e5c57cb2d11c50f44a997f9(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_b3c0df13ff143a95_992c52f0f53f0c49 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstType(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrSetItems(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_3a86b0904acb017a_fb1793104580b26e = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9162e3b7f03fcbf954b681204d5f6cca(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2)
declare %"compiler/types:decl" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3adecl_3e_2eAt_3ccompiler_2ftypes_3adecl_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/types:body" @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ebodyOf(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %v0, i64 %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2ftypes_2epushPayloads(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_cb508a25d2891980_42113325dd63632c = external constant [0 x i8]
@olang_loc_4d47e5476b23fa11_4ed9625d853ee5dd = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eToArray_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %v1, ptr %a0)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20compile_H5a37a20f375ed653adc00b592f5745cf(ptr %v0, ptr %a0, i32 %a1)
declare { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20compile_H08d487c91a3409a786f6b7c534acefc5(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eSetAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eForeignRef(ptr %v0, ptr %a0, i32 %a1)
declare i8 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eholdsState(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_d3e704bcd06f7d56_ed5a4209a5557c8a = external constant [0 x i8]
@olang_loc_b4be3b7b6cfde177_2b1bada5393bc0cb = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2ftypes_3aTypeId_3e_2_H61b120fbdcc010be1bedf2507e848f7c(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cArray_3ccompiler_2ftypes_3aTypeId_3e_2_H0a665c2b4d7e237317fbcb46f7b513e7(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_aca21d9f8d110f21_d35bd7e73631d7ed = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2ftypes_3aTypeId_3e_2_H2b3955a94f91e668ac3bcd9fa517bb83(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cArray_3ccompiler_2ftypes_3aTypeId_3e_2_He4e7022cb78ea4ca3380b08f831d7938(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i32 %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBorrowsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePromisesOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@olang_loc_ecef2c1188620c25_f6c5d2506e285511 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNumber(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2enamedPackedBits(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_7865e8d09eed184e_823ac7408aefc9da = external constant [0 x i8]
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamesOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_f884bd4f1b6015d_20014de591249a11 = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIntType(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKeepsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKeepsText(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, i64 %a2, i64 %a3, i64 %a4)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e_2eAt_3cArray_3cI64_3e_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_8822c3adad84af9f_bf049295f8c08d23 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cArray_3cI64_3e_26_2c_20I64_3e_2eGet_3cArray_3cI64_3e_26_2c_20I64_3e(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e_2eLen_3cArray_3cI64_3e_26_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cArray_3cI64_3e_26_2c_20I64_3e_2ePut_3cArray_3cI64_3e_26_2c_20I64_3e(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2)
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3cI64_3e_26_3e_2eGet_3cI64_2c_20Array_3cI64_3e_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_188270a4fe73104b_f2e7e7a6752e702f = external constant [0 x i8]
declare { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aTypeId_3e__H9861f6f09602cf23d49075e82ac9429b(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/types:codeWalk" @compiler_2ftypes_3acodeWalk_2ector(ptr %v0, ptr %v1, ptr %a0, i1 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3acodeWalk_2ereaches(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_f7b42ec29d1607_26e89eedc9b3128b = external constant [0 x i8]
@olang_loc_2df495a001b30f12_f15d21f3e8677f6 = external constant [0 x i8]
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eViaMemory(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLlvm(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResultFrom(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@olang_loc_888c44700641ffaa_fbe810d9adf00e56 = external constant [0 x i8]
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20compile_Ha1b8741c5221fa161d1744b12cf57007(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare %"compiler/types:body" @compiler_2ftypes_3abody_2ector(ptr %v0, i32 %a0, i32 %a1, i32 %a2, i1 %a3, i1 %a4)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20compile_H00ad3ea0211b1c1ed775c1e06d3ea587(ptr %v0, ptr %a0, i32 %a1, %"compiler/types:body" %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3cI64_3e_26_3e_2ePut_3cI64_2c_20Array_3cI64_3e_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aTypeId_3e__Hbdd7c5068e376aa260a62181a9f99429(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aListId_3e_2eAt_3ccompiler_2ftypes_3aListId_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fsource_3aNameId_3e__H37377f924b66ff741793959f79fef546(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsSpread(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRefunc(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i32 %a5, i64 %a6)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncNullable(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_bf031f4f448c1291_890a9ad18176d2c5 = external constant [0 x i8]
@olang_loc_ac68e58e8d4c9184_1653a4c5d9050158 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopes(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2, { i64, ptr } %a3)
@olang_loc_ab5d312677a1c76d_705ca0c9b87dcf79 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_3e_2ePush_3cArray_3cI64_3e_3e(ptr %v0, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnsParts(ptr %v0, ptr %a0, i32 %a1)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2eAt_3cI32_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePayloadSize(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSize(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_94d95030786c6de_dc670b9e390cf1a = external constant [0 x i8]
declare { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3adata_2c_20compiler__Hde6d536d7268ca732b315d911361d6aa(ptr %v0, ptr %a0, %"compiler/types:data" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3adata_3e_2eLen_3ccompiler_2ftypes_3adata_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3adata_3e_2ePush_3ccompiler_2ftypes_3adata_3e(ptr %v0, ptr %a0, %"compiler/types:data" %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3adata_2c_20compiler__Hffc99e12659a835aff737c3e51f11f7b(ptr %v0, ptr %a0, %"compiler/types:data" %a1, i32 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2ePush_3cI32_3e(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@olang_loc_b0143a025c7cdb06_8f46c74feff323b2 = external constant [0 x i8]
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2edestructs(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2epartsDrop(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@olang_loc_2cd53dd7f17e3306_fa38995b8825f762 = external constant [0 x i8]
@olang_loc_e12a8b7b5dbe3de7_965cbd36c1b6d563 = external constant [0 x i8]
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eownsParts(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2erunsCopy(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eLen_3cU8_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2ePush_3cU8_3e(ptr %v0, ptr %a0, i8 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eSetAt_3cU8_3e(ptr %v0, ptr %a0, i64 %a1, i8 %a2)
@olang_loc_e8197a4e96a8cf74_6f7a0b4ee9272b70 = external constant [0 x i8]
@olang_loc_e0765d015d87e9a5_6d8cc8ea93d2cf01 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %a0, i32 %a1)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eStructBody(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
@olang_loc_ddaa3828305a2e93_9dde6ac7f2fcd077 = external constant [0 x i8]
@olang_loc_ebf284414dbafd61_1a8e1f26a2703ea5 = external constant [0 x i8]
declare void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2evalueParts(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eHas_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3arefWalk_2ereaches(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
@olang_loc_9d78c5c339795d98_5bda6918f751e21c = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2ePadStart(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i8 %a2)
@olang_loc_99e2f46192b0b63e_14d40f533c20e2f2 = external constant [0 x i8]

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
