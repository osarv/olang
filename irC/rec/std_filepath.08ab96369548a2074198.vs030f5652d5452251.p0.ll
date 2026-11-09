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
@G_2estd_2ffilepath_2ecleanCases = constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k1, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k2, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k3, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k4, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k5, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k6, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k7, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k8, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k9, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k10, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k11, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k12, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k13, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k14, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k15, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k16, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k17, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k18, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k19, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k20, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k21, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k22, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k23, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k24, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k25, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k26, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k27, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k28, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k29, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k30, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k31, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k32, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k33, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k34, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k35, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k36, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k37, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k38, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k39, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k40, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k41, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k42, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k43, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k44, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k45, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k46, [8 x i8] c"\0A\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k47, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k48, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k49, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k50, [8 x i8] c"\12\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k51, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k52, [8 x i8] c"\15\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k53, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k54, [8 x i8] c"\0A\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k55, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k56, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k57, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k58, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k59, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k60, [8 x i8] c"\10\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k61, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k62, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k63, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k64, [8 x i8] c"\25\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k65, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k66, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k67, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k68, [8 x i8] c"\0F\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k69, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k70, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k71, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k72, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k73, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k74, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k75, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2ecleanCases.k76 }>, align 64
@G_2estd_2ffilepath_2ecleanCases.k1 = internal constant <{  }> <{  }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k2 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\2E" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k3 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\61\62\63" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k4 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\61\62\63" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k5 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\61\62\63\2F\64\65\66" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k6 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\61\62\63\2F\64\65\66" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k7 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\61\2F\62\2F\63" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k8 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\61\2F\62\2F\63" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k9 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\2E" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k10 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\2E" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k11 = internal constant <{ [2 x i8] }> <{ [2 x i8] c"\2E\2E" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k12 = internal constant <{ [2 x i8] }> <{ [2 x i8] c"\2E\2E" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k13 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\2E\2E\2F\2E\2E" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k14 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\2E\2E\2F\2E\2E" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k15 = internal constant <{ [9 x i8] }> <{ [9 x i8] c"\2E\2E\2F\2E\2E\2F\61\62\63" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k16 = internal constant <{ [9 x i8] }> <{ [9 x i8] c"\2E\2E\2F\2E\2E\2F\61\62\63" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k17 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\2F\61\62\63" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k18 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\2F\61\62\63" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k19 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\2F" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k20 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\2F" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k21 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\61\62\63\2F" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k22 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\61\62\63" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k23 = internal constant <{ [8 x i8] }> <{ [8 x i8] c"\61\62\63\2F\64\65\66\2F" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k24 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\61\62\63\2F\64\65\66" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k25 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\61\2F\62\2F\63\2F" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k26 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\61\2F\62\2F\63" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k27 = internal constant <{ [2 x i8] }> <{ [2 x i8] c"\2E\2F" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k28 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\2E" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k29 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\2E\2E\2F" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k30 = internal constant <{ [2 x i8] }> <{ [2 x i8] c"\2E\2E" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k31 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\2E\2E\2F\2E\2E\2F" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k32 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\2E\2E\2F\2E\2E" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k33 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\2F\61\62\63\2F" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k34 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\2F\61\62\63" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k35 = internal constant <{ [13 x i8] }> <{ [13 x i8] c"\61\62\63\2F\2F\64\65\66\2F\2F\67\68\69" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k36 = internal constant <{ [11 x i8] }> <{ [11 x i8] c"\61\62\63\2F\64\65\66\2F\67\68\69" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k37 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\2F\2F\61\62\63" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k38 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\2F\61\62\63" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k39 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\2F\2F\2F\61\62\63" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k40 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\2F\61\62\63" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k41 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\2F\2F\61\62\63\2F\2F" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k42 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\2F\61\62\63" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k43 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\61\62\63\2F\2F" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k44 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\61\62\63" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k45 = internal constant <{ [9 x i8] }> <{ [9 x i8] c"\61\62\63\2F\2E\2F\64\65\66" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k46 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\61\62\63\2F\64\65\66" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k47 = internal constant <{ [10 x i8] }> <{ [10 x i8] c"\2F\2E\2F\61\62\63\2F\64\65\66" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k48 = internal constant <{ [8 x i8] }> <{ [8 x i8] c"\2F\61\62\63\2F\64\65\66" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k49 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\61\62\63\2F\2E" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k50 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\61\62\63" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k51 = internal constant <{ [18 x i8] }> <{ [18 x i8] c"\61\62\63\2F\64\65\66\2F\67\68\69\2F\2E\2E\2F\6A\6B\6C" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k52 = internal constant <{ [11 x i8] }> <{ [11 x i8] c"\61\62\63\2F\64\65\66\2F\6A\6B\6C" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k53 = internal constant <{ [21 x i8] }> <{ [21 x i8] c"\61\62\63\2F\64\65\66\2F\2E\2E\2F\67\68\69\2F\2E\2E\2F\6A\6B\6C" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k54 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\61\62\63\2F\6A\6B\6C" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k55 = internal constant <{ [10 x i8] }> <{ [10 x i8] c"\61\62\63\2F\64\65\66\2F\2E\2E" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k56 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\61\62\63" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k57 = internal constant <{ [13 x i8] }> <{ [13 x i8] c"\61\62\63\2F\64\65\66\2F\2E\2E\2F\2E\2E" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k58 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\2E" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k59 = internal constant <{ [14 x i8] }> <{ [14 x i8] c"\2F\61\62\63\2F\64\65\66\2F\2E\2E\2F\2E\2E" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k60 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\2F" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k61 = internal constant <{ [16 x i8] }> <{ [16 x i8] c"\61\62\63\2F\64\65\66\2F\2E\2E\2F\2E\2E\2F\2E\2E" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k62 = internal constant <{ [2 x i8] }> <{ [2 x i8] c"\2E\2E" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k63 = internal constant <{ [17 x i8] }> <{ [17 x i8] c"\2F\61\62\63\2F\64\65\66\2F\2E\2E\2F\2E\2E\2F\2E\2E" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k64 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\2F" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k65 = internal constant <{ [37 x i8] }> <{ [37 x i8] c"\61\62\63\2F\64\65\66\2F\2E\2E\2F\2E\2E\2F\2E\2E\2F\67\68\69\2F\6A\6B\6C\2F\2E\2E\2F\2E\2E\2F\2E\2E\2F\6D\6E\6F" }>, align 32
@G_2estd_2ffilepath_2ecleanCases.k66 = internal constant <{ [9 x i8] }> <{ [9 x i8] c"\2E\2E\2F\2E\2E\2F\6D\6E\6F" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k67 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\2F\2E\2E\2F\61\62\63" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k68 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\2F\61\62\63" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k69 = internal constant <{ [15 x i8] }> <{ [15 x i8] c"\61\2F\2E\2E\2F\62\3A\2F\2E\2E\2F\2E\2E\2F\63" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k70 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\2E\2E\2F\63" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k71 = internal constant <{ [12 x i8] }> <{ [12 x i8] c"\61\62\63\2F\2E\2F\2E\2E\2F\64\65\66" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k72 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\64\65\66" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k73 = internal constant <{ [13 x i8] }> <{ [13 x i8] c"\61\62\63\2F\2F\2E\2F\2E\2E\2F\64\65\66" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k74 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\64\65\66" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k75 = internal constant <{ [20 x i8] }> <{ [20 x i8] c"\61\62\63\2F\2E\2E\2F\2E\2E\2F\2E\2F\2E\2F\2E\2E\2F\64\65\66" }>, align 8
@G_2estd_2ffilepath_2ecleanCases.k76 = internal constant <{ [9 x i8] }> <{ [9 x i8] c"\2E\2E\2F\2E\2E\2F\64\65\66" }>, align 8
@G_2estd_2ffilepath_2ecleanMissesBaked = constant <{ [16 x i8] }> <{ [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>, align 8
@G_2estd_2ffilepath_2elivePath = global { i64, ptr } zeroinitializer
@G_2estd_2ffilepath_2epartCases = constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2epartCases.k1, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2epartCases.k2, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2epartCases.k3, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2epartCases.k4, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2epartCases.k5, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2epartCases.k6, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2epartCases.k7, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2epartCases.k8, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2epartCases.k9, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2epartCases.k10, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2epartCases.k11, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2epartCases.k12, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2epartCases.k13, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2epartCases.k14, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2epartCases.k15, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2epartCases.k16, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2epartCases.k17, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2epartCases.k18, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2epartCases.k19, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2epartCases.k20, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2epartCases.k21, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2epartCases.k22, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2epartCases.k23, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2epartCases.k24, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2epartCases.k25, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2epartCases.k26, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2epartCases.k27, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2epartCases.k28, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2epartCases.k29, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2epartCases.k30, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2epartCases.k31, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2epartCases.k32, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2epartCases.k33, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2epartCases.k34, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2epartCases.k35, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2epartCases.k36, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2epartCases.k37, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2epartCases.k38, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2epartCases.k39, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2epartCases.k40, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2epartCases.k41, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2epartCases.k42, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2epartCases.k43, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2epartCases.k44, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2epartCases.k45, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2epartCases.k46, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2epartCases.k47, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2epartCases.k48, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2epartCases.k49, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2epartCases.k50, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2epartCases.k51, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2epartCases.k52, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2epartCases.k53, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2epartCases.k54, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2epartCases.k55, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2epartCases.k56, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2epartCases.k57 }>, align 64
@G_2estd_2ffilepath_2epartCases.k1 = internal constant <{  }> <{  }>, align 8
@G_2estd_2ffilepath_2epartCases.k2 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\2E" }>, align 8
@G_2estd_2ffilepath_2epartCases.k3 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\2E" }>, align 8
@G_2estd_2ffilepath_2epartCases.k4 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\2E" }>, align 8
@G_2estd_2ffilepath_2epartCases.k5 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\2E" }>, align 8
@G_2estd_2ffilepath_2epartCases.k6 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\2E" }>, align 8
@G_2estd_2ffilepath_2epartCases.k7 = internal constant <{ [2 x i8] }> <{ [2 x i8] c"\2F\2E" }>, align 8
@G_2estd_2ffilepath_2epartCases.k8 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\2E" }>, align 8
@G_2estd_2ffilepath_2epartCases.k9 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\2F" }>, align 8
@G_2estd_2ffilepath_2epartCases.k10 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\2F" }>, align 8
@G_2estd_2ffilepath_2epartCases.k11 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\2F" }>, align 8
@G_2estd_2ffilepath_2epartCases.k12 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\2F" }>, align 8
@G_2estd_2ffilepath_2epartCases.k13 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\2F\2F\2F\2F" }>, align 8
@G_2estd_2ffilepath_2epartCases.k14 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\2F" }>, align 8
@G_2estd_2ffilepath_2epartCases.k15 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\2F" }>, align 8
@G_2estd_2ffilepath_2epartCases.k16 = internal constant <{ [2 x i8] }> <{ [2 x i8] c"\78\2F" }>, align 8
@G_2estd_2ffilepath_2epartCases.k17 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\78" }>, align 8
@G_2estd_2ffilepath_2epartCases.k18 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\78" }>, align 8
@G_2estd_2ffilepath_2epartCases.k19 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\61\62\63" }>, align 8
@G_2estd_2ffilepath_2epartCases.k20 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\61\62\63" }>, align 8
@G_2estd_2ffilepath_2epartCases.k21 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\2E" }>, align 8
@G_2estd_2ffilepath_2epartCases.k22 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\61\62\63\2F\64\65\66" }>, align 8
@G_2estd_2ffilepath_2epartCases.k23 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\64\65\66" }>, align 8
@G_2estd_2ffilepath_2epartCases.k24 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\61\62\63" }>, align 8
@G_2estd_2ffilepath_2epartCases.k25 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\61\2F\62\2F\2E\78" }>, align 8
@G_2estd_2ffilepath_2epartCases.k26 = internal constant <{ [2 x i8] }> <{ [2 x i8] c"\2E\78" }>, align 8
@G_2estd_2ffilepath_2epartCases.k27 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\61\2F\62" }>, align 8
@G_2estd_2ffilepath_2epartCases.k28 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\61\2F\62\2F\63\2E" }>, align 8
@G_2estd_2ffilepath_2epartCases.k29 = internal constant <{ [2 x i8] }> <{ [2 x i8] c"\63\2E" }>, align 8
@G_2estd_2ffilepath_2epartCases.k30 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\61\2F\62" }>, align 8
@G_2estd_2ffilepath_2epartCases.k31 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\61\2F\62\2F\63\2E\78" }>, align 8
@G_2estd_2ffilepath_2epartCases.k32 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\63\2E\78" }>, align 8
@G_2estd_2ffilepath_2epartCases.k33 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\61\2F\62" }>, align 8
@G_2estd_2ffilepath_2epartCases.k34 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\2F\61\62\63" }>, align 8
@G_2estd_2ffilepath_2epartCases.k35 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\61\62\63" }>, align 8
@G_2estd_2ffilepath_2epartCases.k36 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\2F" }>, align 8
@G_2estd_2ffilepath_2epartCases.k37 = internal constant <{ [8 x i8] }> <{ [8 x i8] c"\2F\61\62\63\2F\64\65\66" }>, align 8
@G_2estd_2ffilepath_2epartCases.k38 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\64\65\66" }>, align 8
@G_2estd_2ffilepath_2epartCases.k39 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\2F\61\62\63" }>, align 8
@G_2estd_2ffilepath_2epartCases.k40 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\61\2F\2F\62" }>, align 8
@G_2estd_2ffilepath_2epartCases.k41 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\62" }>, align 8
@G_2estd_2ffilepath_2epartCases.k42 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\61" }>, align 8
@G_2estd_2ffilepath_2epartCases.k43 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\61\2F\2E\2F\62" }>, align 8
@G_2estd_2ffilepath_2epartCases.k44 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\62" }>, align 8
@G_2estd_2ffilepath_2epartCases.k45 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\61" }>, align 8
@G_2estd_2ffilepath_2epartCases.k46 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\61\2F\62\2F\63\2F" }>, align 8
@G_2estd_2ffilepath_2epartCases.k47 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\63" }>, align 8
@G_2estd_2ffilepath_2epartCases.k48 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\61\2F\62\2F\63" }>, align 8
@G_2estd_2ffilepath_2epartCases.k49 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\2E\2E\2F\61" }>, align 8
@G_2estd_2ffilepath_2epartCases.k50 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\61" }>, align 8
@G_2estd_2ffilepath_2epartCases.k51 = internal constant <{ [2 x i8] }> <{ [2 x i8] c"\2E\2E" }>, align 8
@G_2estd_2ffilepath_2epartCases.k52 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\61\2F\2E\2E" }>, align 8
@G_2estd_2ffilepath_2epartCases.k53 = internal constant <{ [2 x i8] }> <{ [2 x i8] c"\2E\2E" }>, align 8
@G_2estd_2ffilepath_2epartCases.k54 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\61" }>, align 8
@G_2estd_2ffilepath_2epartCases.k55 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\2F\2E\2E\2F\78" }>, align 8
@G_2estd_2ffilepath_2epartCases.k56 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\78" }>, align 8
@G_2estd_2ffilepath_2epartCases.k57 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\2F" }>, align 8
@G_2estd_2ffilepath_2epartMissesBaked = constant <{ [16 x i8] }> <{ [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>, align 8
@G_2estd_2ffilepath_2erelCases = constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k1, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k2, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k3, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k4, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k5, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k6, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k7, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k8, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k9, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k10, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k11, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k12, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k13, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k14, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k15, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k16, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k17, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k18, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k19, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k20, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k21, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k22, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k23, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k24, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k25, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k26, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k27, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k28, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k29, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k30, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k31, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k32, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k33, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k34, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k35, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k36, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k37, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k38, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k39, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k40, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k41, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k42, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k43, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k44, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k45, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k46, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k47, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k48, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k49, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k50, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k51, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k52, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k53, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k54, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k55, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k56, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k57, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k58, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k59, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k60, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k61, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k62, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k63, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k64, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k65, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k66, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k67, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k68, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k69, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k70, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k71, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k72, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k73, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k74, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k75, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k76, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k77, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k78, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k79, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k80, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k81, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k82, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k83, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k84, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k85, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k86, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k87, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k88, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k89, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k90, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k91, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k92, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k93, [8 x i8] c"\0A\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k94, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k95, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k96, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k97, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k98, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k99, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k100, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k101, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k102, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k103, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k104, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k105, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k106, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k107, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k108, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k109, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k110, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k111, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k112, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k113, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k114, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k115, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k116, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @G_2estd_2ffilepath_2erelCases.k117 }>, align 64
@G_2estd_2ffilepath_2erelCases.k1 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\61\2F\62" }>, align 8
@G_2estd_2ffilepath_2erelCases.k2 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\61\2F\62" }>, align 8
@G_2estd_2ffilepath_2erelCases.k3 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\2E" }>, align 8
@G_2estd_2ffilepath_2erelCases.k4 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\61\2F\62\2F\2E" }>, align 8
@G_2estd_2ffilepath_2erelCases.k5 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\61\2F\62" }>, align 8
@G_2estd_2ffilepath_2erelCases.k6 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\2E" }>, align 8
@G_2estd_2ffilepath_2erelCases.k7 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\61\2F\62" }>, align 8
@G_2estd_2ffilepath_2erelCases.k8 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\61\2F\62\2F\2E" }>, align 8
@G_2estd_2ffilepath_2erelCases.k9 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\2E" }>, align 8
@G_2estd_2ffilepath_2erelCases.k10 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\2E\2F\61\2F\62" }>, align 8
@G_2estd_2ffilepath_2erelCases.k11 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\61\2F\62" }>, align 8
@G_2estd_2ffilepath_2erelCases.k12 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\2E" }>, align 8
@G_2estd_2ffilepath_2erelCases.k13 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\61\2F\62" }>, align 8
@G_2estd_2ffilepath_2erelCases.k14 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\2E\2F\61\2F\62" }>, align 8
@G_2estd_2ffilepath_2erelCases.k15 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\2E" }>, align 8
@G_2estd_2ffilepath_2erelCases.k16 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\61\62\2F\63\64" }>, align 8
@G_2estd_2ffilepath_2erelCases.k17 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\61\62\2F\63\64\65" }>, align 8
@G_2estd_2ffilepath_2erelCases.k18 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\2E\2E\2F\63\64\65" }>, align 8
@G_2estd_2ffilepath_2erelCases.k19 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\61\62\2F\63\64" }>, align 8
@G_2estd_2ffilepath_2erelCases.k20 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\61\62\2F\63" }>, align 8
@G_2estd_2ffilepath_2erelCases.k21 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\2E\2E\2F\63" }>, align 8
@G_2estd_2ffilepath_2erelCases.k22 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\61\2F\62" }>, align 8
@G_2estd_2ffilepath_2erelCases.k23 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\61\2F\62\2F\63\2F\64" }>, align 8
@G_2estd_2ffilepath_2erelCases.k24 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\63\2F\64" }>, align 8
@G_2estd_2ffilepath_2erelCases.k25 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\61\2F\62" }>, align 8
@G_2estd_2ffilepath_2erelCases.k26 = internal constant <{ [8 x i8] }> <{ [8 x i8] c"\61\2F\62\2F\2E\2E\2F\63" }>, align 8
@G_2estd_2ffilepath_2erelCases.k27 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\2E\2E\2F\63" }>, align 8
@G_2estd_2ffilepath_2erelCases.k28 = internal constant <{ [8 x i8] }> <{ [8 x i8] c"\61\2F\62\2F\2E\2E\2F\63" }>, align 8
@G_2estd_2ffilepath_2erelCases.k29 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\61\2F\62" }>, align 8
@G_2estd_2ffilepath_2erelCases.k30 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\2E\2E\2F\62" }>, align 8
@G_2estd_2ffilepath_2erelCases.k31 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\61\2F\62\2F\63" }>, align 8
@G_2estd_2ffilepath_2erelCases.k32 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\61\2F\63\2F\64" }>, align 8
@G_2estd_2ffilepath_2erelCases.k33 = internal constant <{ [9 x i8] }> <{ [9 x i8] c"\2E\2E\2F\2E\2E\2F\63\2F\64" }>, align 8
@G_2estd_2ffilepath_2erelCases.k34 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\61\2F\62" }>, align 8
@G_2estd_2ffilepath_2erelCases.k35 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\63\2F\64" }>, align 8
@G_2estd_2ffilepath_2erelCases.k36 = internal constant <{ [9 x i8] }> <{ [9 x i8] c"\2E\2E\2F\2E\2E\2F\63\2F\64" }>, align 8
@G_2estd_2ffilepath_2erelCases.k37 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\61\2F\62\2F\63\2F\64" }>, align 8
@G_2estd_2ffilepath_2erelCases.k38 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\61\2F\62" }>, align 8
@G_2estd_2ffilepath_2erelCases.k39 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\2E\2E\2F\2E\2E" }>, align 8
@G_2estd_2ffilepath_2erelCases.k40 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\61\2F\62\2F\63\2F\64" }>, align 8
@G_2estd_2ffilepath_2erelCases.k41 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\61\2F\62\2F" }>, align 8
@G_2estd_2ffilepath_2erelCases.k42 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\2E\2E\2F\2E\2E" }>, align 8
@G_2estd_2ffilepath_2erelCases.k43 = internal constant <{ [8 x i8] }> <{ [8 x i8] c"\61\2F\62\2F\63\2F\64\2F" }>, align 8
@G_2estd_2ffilepath_2erelCases.k44 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\61\2F\62" }>, align 8
@G_2estd_2ffilepath_2erelCases.k45 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\2E\2E\2F\2E\2E" }>, align 8
@G_2estd_2ffilepath_2erelCases.k46 = internal constant <{ [8 x i8] }> <{ [8 x i8] c"\61\2F\62\2F\63\2F\64\2F" }>, align 8
@G_2estd_2ffilepath_2erelCases.k47 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\61\2F\62\2F" }>, align 8
@G_2estd_2ffilepath_2erelCases.k48 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\2E\2E\2F\2E\2E" }>, align 8
@G_2estd_2ffilepath_2erelCases.k49 = internal constant <{ [9 x i8] }> <{ [9 x i8] c"\2E\2E\2F\2E\2E\2F\61\2F\62" }>, align 8
@G_2estd_2ffilepath_2erelCases.k50 = internal constant <{ [13 x i8] }> <{ [13 x i8] c"\2E\2E\2F\2E\2E\2F\61\2F\62\2F\63\2F\64" }>, align 8
@G_2estd_2ffilepath_2erelCases.k51 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\63\2F\64" }>, align 8
@G_2estd_2ffilepath_2erelCases.k52 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\2F\61\2F\62" }>, align 8
@G_2estd_2ffilepath_2erelCases.k53 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\2F\61\2F\62" }>, align 8
@G_2estd_2ffilepath_2erelCases.k54 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\2E" }>, align 8
@G_2estd_2ffilepath_2erelCases.k55 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\2F\61\2F\62\2F\2E" }>, align 8
@G_2estd_2ffilepath_2erelCases.k56 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\2F\61\2F\62" }>, align 8
@G_2estd_2ffilepath_2erelCases.k57 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\2E" }>, align 8
@G_2estd_2ffilepath_2erelCases.k58 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\2F\61\2F\62" }>, align 8
@G_2estd_2ffilepath_2erelCases.k59 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\2F\61\2F\62\2F\2E" }>, align 8
@G_2estd_2ffilepath_2erelCases.k60 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\2E" }>, align 8
@G_2estd_2ffilepath_2erelCases.k61 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\2F\61\62\2F\63\64" }>, align 8
@G_2estd_2ffilepath_2erelCases.k62 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\2F\61\62\2F\63\64\65" }>, align 8
@G_2estd_2ffilepath_2erelCases.k63 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\2E\2E\2F\63\64\65" }>, align 8
@G_2estd_2ffilepath_2erelCases.k64 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\2F\61\62\2F\63\64" }>, align 8
@G_2estd_2ffilepath_2erelCases.k65 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\2F\61\62\2F\63" }>, align 8
@G_2estd_2ffilepath_2erelCases.k66 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\2E\2E\2F\63" }>, align 8
@G_2estd_2ffilepath_2erelCases.k67 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\2F\61\2F\62" }>, align 8
@G_2estd_2ffilepath_2erelCases.k68 = internal constant <{ [8 x i8] }> <{ [8 x i8] c"\2F\61\2F\62\2F\63\2F\64" }>, align 8
@G_2estd_2ffilepath_2erelCases.k69 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\63\2F\64" }>, align 8
@G_2estd_2ffilepath_2erelCases.k70 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\2F\61\2F\62" }>, align 8
@G_2estd_2ffilepath_2erelCases.k71 = internal constant <{ [9 x i8] }> <{ [9 x i8] c"\2F\61\2F\62\2F\2E\2E\2F\63" }>, align 8
@G_2estd_2ffilepath_2erelCases.k72 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\2E\2E\2F\63" }>, align 8
@G_2estd_2ffilepath_2erelCases.k73 = internal constant <{ [9 x i8] }> <{ [9 x i8] c"\2F\61\2F\62\2F\2E\2E\2F\63" }>, align 8
@G_2estd_2ffilepath_2erelCases.k74 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\2F\61\2F\62" }>, align 8
@G_2estd_2ffilepath_2erelCases.k75 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\2E\2E\2F\62" }>, align 8
@G_2estd_2ffilepath_2erelCases.k76 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\2F\61\2F\62\2F\63" }>, align 8
@G_2estd_2ffilepath_2erelCases.k77 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\2F\61\2F\63\2F\64" }>, align 8
@G_2estd_2ffilepath_2erelCases.k78 = internal constant <{ [9 x i8] }> <{ [9 x i8] c"\2E\2E\2F\2E\2E\2F\63\2F\64" }>, align 8
@G_2estd_2ffilepath_2erelCases.k79 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\2F\61\2F\62" }>, align 8
@G_2estd_2ffilepath_2erelCases.k80 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\2F\63\2F\64" }>, align 8
@G_2estd_2ffilepath_2erelCases.k81 = internal constant <{ [9 x i8] }> <{ [9 x i8] c"\2E\2E\2F\2E\2E\2F\63\2F\64" }>, align 8
@G_2estd_2ffilepath_2erelCases.k82 = internal constant <{ [8 x i8] }> <{ [8 x i8] c"\2F\61\2F\62\2F\63\2F\64" }>, align 8
@G_2estd_2ffilepath_2erelCases.k83 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\2F\61\2F\62" }>, align 8
@G_2estd_2ffilepath_2erelCases.k84 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\2E\2E\2F\2E\2E" }>, align 8
@G_2estd_2ffilepath_2erelCases.k85 = internal constant <{ [8 x i8] }> <{ [8 x i8] c"\2F\61\2F\62\2F\63\2F\64" }>, align 8
@G_2estd_2ffilepath_2erelCases.k86 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\2F\61\2F\62\2F" }>, align 8
@G_2estd_2ffilepath_2erelCases.k87 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\2E\2E\2F\2E\2E" }>, align 8
@G_2estd_2ffilepath_2erelCases.k88 = internal constant <{ [9 x i8] }> <{ [9 x i8] c"\2F\61\2F\62\2F\63\2F\64\2F" }>, align 8
@G_2estd_2ffilepath_2erelCases.k89 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\2F\61\2F\62" }>, align 8
@G_2estd_2ffilepath_2erelCases.k90 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\2E\2E\2F\2E\2E" }>, align 8
@G_2estd_2ffilepath_2erelCases.k91 = internal constant <{ [9 x i8] }> <{ [9 x i8] c"\2F\61\2F\62\2F\63\2F\64\2F" }>, align 8
@G_2estd_2ffilepath_2erelCases.k92 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\2F\61\2F\62\2F" }>, align 8
@G_2estd_2ffilepath_2erelCases.k93 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\2E\2E\2F\2E\2E" }>, align 8
@G_2estd_2ffilepath_2erelCases.k94 = internal constant <{ [10 x i8] }> <{ [10 x i8] c"\2F\2E\2E\2F\2E\2E\2F\61\2F\62" }>, align 8
@G_2estd_2ffilepath_2erelCases.k95 = internal constant <{ [14 x i8] }> <{ [14 x i8] c"\2F\2E\2E\2F\2E\2E\2F\61\2F\62\2F\63\2F\64" }>, align 8
@G_2estd_2ffilepath_2erelCases.k96 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\63\2F\64" }>, align 8
@G_2estd_2ffilepath_2erelCases.k97 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\2E" }>, align 8
@G_2estd_2ffilepath_2erelCases.k98 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\61\2F\62" }>, align 8
@G_2estd_2ffilepath_2erelCases.k99 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\61\2F\62" }>, align 8
@G_2estd_2ffilepath_2erelCases.k100 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\2E" }>, align 8
@G_2estd_2ffilepath_2erelCases.k101 = internal constant <{ [2 x i8] }> <{ [2 x i8] c"\2E\2E" }>, align 8
@G_2estd_2ffilepath_2erelCases.k102 = internal constant <{ [2 x i8] }> <{ [2 x i8] c"\2E\2E" }>, align 8
@G_2estd_2ffilepath_2erelCases.k103 = internal constant <{ [2 x i8] }> <{ [2 x i8] c"\2E\2E" }>, align 8
@G_2estd_2ffilepath_2erelCases.k104 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\2E" }>, align 8
@G_2estd_2ffilepath_2erelCases.k105 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\21" }>, align 8
@G_2estd_2ffilepath_2erelCases.k106 = internal constant <{ [2 x i8] }> <{ [2 x i8] c"\2E\2E" }>, align 8
@G_2estd_2ffilepath_2erelCases.k107 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\61" }>, align 8
@G_2estd_2ffilepath_2erelCases.k108 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\21" }>, align 8
@G_2estd_2ffilepath_2erelCases.k109 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\2E\2E\2F\2E\2E" }>, align 8
@G_2estd_2ffilepath_2erelCases.k110 = internal constant <{ [2 x i8] }> <{ [2 x i8] c"\2E\2E" }>, align 8
@G_2estd_2ffilepath_2erelCases.k111 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\21" }>, align 8
@G_2estd_2ffilepath_2erelCases.k112 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\61" }>, align 8
@G_2estd_2ffilepath_2erelCases.k113 = internal constant <{ [2 x i8] }> <{ [2 x i8] c"\2F\61" }>, align 8
@G_2estd_2ffilepath_2erelCases.k114 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\21" }>, align 8
@G_2estd_2ffilepath_2erelCases.k115 = internal constant <{ [2 x i8] }> <{ [2 x i8] c"\2F\61" }>, align 8
@G_2estd_2ffilepath_2erelCases.k116 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\61" }>, align 8
@G_2estd_2ffilepath_2erelCases.k117 = internal constant <{ [1 x i8] }> <{ [1 x i8] c"\21" }>, align 8
@G_2estd_2ffilepath_2erelMissesBaked = constant <{ [16 x i8] }> <{ [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>, align 8
define dso_local { i64, ptr } @std_2ffilepath_2eBase(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca i64
  %l6 = alloca { i64, ptr }
  %l11 = alloca i1
  %l12 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l23 = alloca i64
  %l31 = alloca i1
  %l32 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l41 = alloca i64
  %l42 = alloca i64
  %l43 = alloca i64
  %rv = alloca { i64, ptr }
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
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d0, i32 0, i32 1) }, ptr %l6, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t7, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  store i64 %t10, ptr %l1, !tbaa !24
  br label %bb4
bb4:
  %t12 = load i64, ptr %l1, !tbaa !24
  %t14 = icmp sgt i64 %t12, 0
  br i1 %t14, label %bb5, label %bb6
bb5:
  %t16 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t16, ptr %l12, !tbaa !27
  %t17 = load i64, ptr %l1, !tbaa !24
  %t19 = sub i64 %t17, 1
  %t21 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr i8, ptr %t22, i64 %t19
  %t24 = load i8, ptr %t23, !tbaa !32
  %t26 = icmp eq i8 %t24, 47
  store i1 %t26, ptr %l11, !tbaa !21
  br label %bb7
bb6:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb7
bb7:
  %t28 = load i1, ptr %l11, !tbaa !21
  %t29 = xor i1 %t28, true
  br i1 %t29, label %bb8, label %bb9
bb8:
  br label %bb12
bb9:
  br label %bb10
bb10:
  %t31 = load i64, ptr %l1, !tbaa !24
  %t33 = sub i64 %t31, 1
  store i64 %t33, ptr %l1, !tbaa !24
  br label %bb11
bb11:
  br label %bb4
bb12:
  %t35 = load i64, ptr %l1, !tbaa !24
  %t37 = icmp eq i64 %t35, 0
  br i1 %t37, label %bb13, label %bb14
bb13:
  %t39 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t39, ptr %l22, !tbaa !27
  %t40 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t40, 0
  store i64 %t41, ptr %l23, !tbaa !24
  %t42 = icmp sge i64 0, 0
  br i1 %t42, label %bb15, label %bb16
bb14:
  br label %bb21
bb15:
  %t44 = icmp sle i64 0, 1
  br i1 %t44, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_8ad80b95f11637d2_e96efe0cac33c966)
  unreachable
bb17:
  %t46 = load i64, ptr %l23, !tbaa !24
  %t47 = icmp sle i64 1, %t46
  br i1 %t47, label %bb19, label %bb20
bb18:
  call void @__olang_check_failed(ptr @olang_loc_8ad80b95f11637d2_e96efe0cac33c966)
  unreachable
bb19:
  %t49 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !27
  %t51 = getelementptr i8, ptr %t50, i64 0
  %t52 = sub i64 1, 0
  %t53 = insertvalue { i64, ptr } undef, i64 %t52, 0
  %t54 = insertvalue { i64, ptr } %t53, ptr %t51, 1
  store { i64, ptr } %t54, ptr %rv
  br label %ret
bb20:
  call void @__olang_check_failed(ptr @olang_loc_8ad80b95f11637d2_e96efe0cac33c966)
  unreachable
bb21:
  %t56 = load i64, ptr %l1, !tbaa !24
  store i64 %t56, ptr %l2, !tbaa !24
  br label %bb22
bb22:
  %t58 = load i64, ptr %l2, !tbaa !24
  %t60 = icmp sgt i64 %t58, 0
  br i1 %t60, label %bb23, label %bb24
bb23:
  %t62 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t62, ptr %l32, !tbaa !27
  %t63 = load i64, ptr %l2, !tbaa !24
  %t65 = sub i64 %t63, 1
  %t67 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !27
  %t69 = getelementptr i8, ptr %t68, i64 %t65
  %t70 = load i8, ptr %t69, !tbaa !32
  %t72 = icmp ne i8 %t70, 47
  store i1 %t72, ptr %l31, !tbaa !21
  br label %bb25
bb24:
  store i1 false, ptr %l31, !tbaa !21
  br label %bb25
bb25:
  %t74 = load i1, ptr %l31, !tbaa !21
  %t75 = xor i1 %t74, true
  br i1 %t75, label %bb26, label %bb27
bb26:
  br label %bb30
bb27:
  br label %bb28
bb28:
  %t77 = load i64, ptr %l2, !tbaa !24
  %t79 = sub i64 %t77, 1
  store i64 %t79, ptr %l2, !tbaa !24
  br label %bb29
bb29:
  br label %bb22
bb30:
  %t81 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t81, ptr %l40, !tbaa !27
  %t82 = load i64, ptr %l2, !tbaa !24
  store i64 %t82, ptr %l41, !tbaa !24
  %t83 = load i64, ptr %l1, !tbaa !24
  store i64 %t83, ptr %l42, !tbaa !24
  %t84 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t85 = extractvalue { i64, ptr } %t84, 0
  store i64 %t85, ptr %l43, !tbaa !24
  %t86 = load i64, ptr %l41, !tbaa !24
  %t87 = icmp sge i64 %t86, 0
  br i1 %t87, label %bb31, label %bb32
bb31:
  %t89 = load i64, ptr %l41, !tbaa !24
  %t90 = load i64, ptr %l42, !tbaa !24
  %t91 = icmp sle i64 %t89, %t90
  br i1 %t91, label %bb33, label %bb34
bb32:
  call void @__olang_check_failed(ptr @olang_loc_b73a8112ea9a7cf_d6bea0aa8f8736c3)
  unreachable
bb33:
  %t93 = load i64, ptr %l42, !tbaa !24
  %t94 = load i64, ptr %l43, !tbaa !24
  %t95 = icmp sle i64 %t93, %t94
  br i1 %t95, label %bb35, label %bb36
bb34:
  call void @__olang_check_failed(ptr @olang_loc_b73a8112ea9a7cf_d6bea0aa8f8736c3)
  unreachable
bb35:
  %t97 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !27
  %t99 = load i64, ptr %l41, !tbaa !24
  %t100 = load i64, ptr %l42, !tbaa !24
  %t101 = getelementptr i8, ptr %t98, i64 %t99
  %t102 = sub i64 %t100, %t99
  %t103 = insertvalue { i64, ptr } undef, i64 %t102, 0
  %t104 = insertvalue { i64, ptr } %t103, ptr %t101, 1
  store { i64, ptr } %t104, ptr %rv
  br label %ret
bb36:
  call void @__olang_check_failed(ptr @olang_loc_b73a8112ea9a7cf_d6bea0aa8f8736c3)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @std_2ffilepath_2eClean(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i1
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i1
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %lp14 = alloca ptr
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l25 = alloca { i64, ptr }
  %l26 = alloca i64
  %l29 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
  %l43 = alloca { i64, ptr }
  %l47 = alloca i1
  %l52 = alloca i1
  %l53 = alloca { i64, ptr }
  %l60 = alloca { i64, ptr }
  %l64 = alloca i1
  %l65 = alloca { i64, ptr }
  %l70 = alloca i1
  %l75 = alloca i1
  %l76 = alloca { i64, ptr }
  %l91 = alloca i1
  %l112 = alloca i1
  %l115 = alloca i1
  %l118 = alloca i1
  %l127 = alloca i1
  %l128 = alloca { i64, ptr }
  %l134 = alloca { i64, ptr }
  %l143 = alloca { i64, ptr }
  %l148 = alloca i64
  %l151 = alloca i64
  %l171 = alloca { i64, ptr }
  %l178 = alloca { i64, ptr }
  %l179 = alloca i64
  %l180 = alloca i64
  %l185 = alloca i64
  %l192 = alloca i64
  %l195 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l1, !tbaa !24
  %t5 = load i64, ptr %l1, !tbaa !24
  %t7 = icmp eq i64 %t5, 0
  br i1 %t7, label %bb1, label %bb2
bb1:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) }, ptr %l25, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t9 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t9, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t10 = load i64, ptr %l1, !tbaa !24
  store i64 %t10, ptr %l26, !tbaa !24
  %t11 = load i64, ptr %l26, !tbaa !24
  %t12 = icmp sge i64 %t11, 0
  br i1 %t12, label %bb4, label %bb5
bb4:
  %t14 = load i64, ptr %l26, !tbaa !24
  %t15 = mul i64 %t14, 1
  %t16 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t15)
  %t17 = insertvalue { i64, ptr } undef, i64 %t14, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t16, 1
  store { i64, ptr } %t18, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t20 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t20, ptr %l29, !tbaa !27
  %t21 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr i8, ptr %t22, i64 0
  %t24 = load i8, ptr %t23, !tbaa !32
  %t26 = icmp eq i8 %t24, 47
  store i1 %t26, ptr %l4, !tbaa !21
  store i64 0, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  %t28 = load i1, ptr %l4, !tbaa !21
  br i1 %t28, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_71a6929ab52159a_17fdf02a3251bece)
  unreachable
bb6:
  %t30 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !27
  %t32 = getelementptr i8, ptr %t31, i64 0
  store i8 47, ptr %t32, !tbaa !32
  store i64 1, ptr %l3, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  br label %bb8
bb7:
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t33 = load i64, ptr %l5, !tbaa !24
  %t34 = load i64, ptr %l1, !tbaa !24
  %t37 = icmp slt i64 %t33, %t34
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb10, label %bb11
bb10:
  br label %bb77
bb11:
  br label %bb12
bb12:
  %t41 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t41, ptr %l37, !tbaa !27
  %t42 = load i64, ptr %l5, !tbaa !24
  %t44 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !27
  %t46 = getelementptr i8, ptr %t45, i64 %t42
  %t47 = load i8, ptr %t46, !tbaa !32
  %t49 = icmp eq i8 %t47, 47
  br i1 %t49, label %bb13, label %bb14
bb13:
  %t51 = load i64, ptr %l5, !tbaa !24
  %t53 = add i64 %t51, 1
  store i64 %t53, ptr %l5, !tbaa !24
  br label %bb75
bb14:
  %t55 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t55, ptr %l43, !tbaa !27
  %t56 = load i64, ptr %l5, !tbaa !24
  %t58 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !27
  %t60 = getelementptr i8, ptr %t59, i64 %t56
  %t61 = load i8, ptr %t60, !tbaa !32
  %t63 = icmp eq i8 %t61, 46
  br i1 %t63, label %bb15, label %bb16
bb15:
  %t65 = load i64, ptr %l5, !tbaa !24
  %t67 = add i64 %t65, 1
  %t68 = load i64, ptr %l1, !tbaa !24
  %t71 = icmp eq i64 %t67, %t68
  br i1 %t71, label %bb17, label %bb18
bb16:
  store i1 false, ptr %l47, !tbaa !21
  br label %bb20
bb17:
  store i1 true, ptr %l52, !tbaa !21
  br label %bb19
bb18:
  %t73 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t73, ptr %l53, !tbaa !27
  %t74 = load i64, ptr %l5, !tbaa !24
  %t76 = add i64 %t74, 1
  %t78 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !27
  %t80 = getelementptr i8, ptr %t79, i64 %t76
  %t81 = load i8, ptr %t80, !tbaa !32
  %t83 = icmp eq i8 %t81, 47
  store i1 %t83, ptr %l52, !tbaa !21
  br label %bb19
bb19:
  %t85 = load i1, ptr %l52, !tbaa !21
  store i1 %t85, ptr %l47, !tbaa !21
  br label %bb20
bb20:
  %t86 = load i1, ptr %l47, !tbaa !21
  br i1 %t86, label %bb21, label %bb22
bb21:
  %t87 = load i64, ptr %l5, !tbaa !24
  %t89 = add i64 %t87, 1
  store i64 %t89, ptr %l5, !tbaa !24
  br label %bb74
bb22:
  %t91 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t91, ptr %l60, !tbaa !27
  %t92 = load i64, ptr %l5, !tbaa !24
  %t94 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !27
  %t96 = getelementptr i8, ptr %t95, i64 %t92
  %t97 = load i8, ptr %t96, !tbaa !32
  %t99 = icmp eq i8 %t97, 46
  br i1 %t99, label %bb23, label %bb24
bb23:
  %t101 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t101, ptr %l65, !tbaa !27
  %t102 = load i64, ptr %l5, !tbaa !24
  %t104 = add i64 %t102, 1
  %t106 = getelementptr { i64, ptr }, ptr %l65, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !27
  %t108 = getelementptr i8, ptr %t107, i64 %t104
  %t109 = load i8, ptr %t108, !tbaa !32
  %t111 = icmp eq i8 %t109, 46
  store i1 %t111, ptr %l64, !tbaa !21
  br label %bb25
bb24:
  store i1 false, ptr %l64, !tbaa !21
  br label %bb25
bb25:
  %t113 = load i1, ptr %l64, !tbaa !21
  br i1 %t113, label %bb26, label %bb27
bb26:
  %t114 = load i64, ptr %l5, !tbaa !24
  %t116 = add i64 %t114, 2
  %t117 = load i64, ptr %l1, !tbaa !24
  %t120 = icmp eq i64 %t116, %t117
  br i1 %t120, label %bb28, label %bb29
bb27:
  store i1 false, ptr %l70, !tbaa !21
  br label %bb31
bb28:
  store i1 true, ptr %l75, !tbaa !21
  br label %bb30
bb29:
  %t122 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t122, ptr %l76, !tbaa !27
  %t123 = load i64, ptr %l5, !tbaa !24
  %t125 = add i64 %t123, 2
  %t127 = getelementptr { i64, ptr }, ptr %l76, i32 0, i32 1
  %t128 = load ptr, ptr %t127, !tbaa !27
  %t129 = getelementptr i8, ptr %t128, i64 %t125
  %t130 = load i8, ptr %t129, !tbaa !32
  %t132 = icmp eq i8 %t130, 47
  store i1 %t132, ptr %l75, !tbaa !21
  br label %bb30
bb30:
  %t134 = load i1, ptr %l75, !tbaa !21
  store i1 %t134, ptr %l70, !tbaa !21
  br label %bb31
bb31:
  %t135 = load i1, ptr %l70, !tbaa !21
  br i1 %t135, label %bb32, label %bb33
bb32:
  %t136 = load i64, ptr %l5, !tbaa !24
  %t138 = add i64 %t136, 2
  store i64 %t138, ptr %l5, !tbaa !24
  %t140 = load i64, ptr %l3, !tbaa !24
  %t141 = load i64, ptr %l6, !tbaa !24
  %t144 = icmp sgt i64 %t140, %t141
  br i1 %t144, label %bb34, label %bb35
bb33:
  %t146 = load i1, ptr %l4, !tbaa !21
  br i1 %t146, label %bb52, label %bb53
bb34:
  %t148 = load i64, ptr %l3, !tbaa !24
  %t150 = sub i64 %t148, 1
  store i64 %t150, ptr %l3, !tbaa !24
  br label %bb36
bb35:
  %t152 = load i1, ptr %l4, !tbaa !21
  %t154 = xor i1 %t152, true
  br i1 %t154, label %bb45, label %bb46
bb36:
  %t156 = load i64, ptr %l3, !tbaa !24
  %t157 = load i64, ptr %l6, !tbaa !24
  %t160 = icmp sgt i64 %t156, %t157
  br i1 %t160, label %bb37, label %bb38
bb37:
  %t162 = load i64, ptr %l3, !tbaa !24
  %t164 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t165 = load ptr, ptr %t164, !tbaa !27
  %t166 = getelementptr i8, ptr %t165, i64 %t162
  %t167 = load i8, ptr %t166, !tbaa !32
  %t169 = icmp ne i8 %t167, 47
  store i1 %t169, ptr %l91, !tbaa !21
  br label %bb39
bb38:
  store i1 false, ptr %l91, !tbaa !21
  br label %bb39
bb39:
  %t171 = load i1, ptr %l91, !tbaa !21
  %t172 = xor i1 %t171, true
  br i1 %t172, label %bb40, label %bb41
bb40:
  br label %bb44
bb41:
  br label %bb42
bb42:
  %t174 = load i64, ptr %l3, !tbaa !24
  %t176 = sub i64 %t174, 1
  store i64 %t176, ptr %l3, !tbaa !24
  br label %bb43
bb43:
  br label %bb36
bb44:
  br label %bb51
bb45:
  %t178 = load i64, ptr %l3, !tbaa !24
  %t180 = icmp sgt i64 %t178, 0
  br i1 %t180, label %bb47, label %bb48
bb46:
  br label %bb50
bb47:
  %t182 = load i64, ptr %l3, !tbaa !24
  %t184 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t185 = load ptr, ptr %t184, !tbaa !27
  %t186 = getelementptr i8, ptr %t185, i64 %t182
  store i8 47, ptr %t186, !tbaa !32
  %t187 = load i64, ptr %l3, !tbaa !24
  %t189 = add i64 %t187, 1
  store i64 %t189, ptr %l3, !tbaa !24
  br label %bb49
bb48:
  br label %bb49
bb49:
  %t191 = load i64, ptr %l3, !tbaa !24
  %t193 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t194 = load ptr, ptr %t193, !tbaa !27
  %t195 = getelementptr i8, ptr %t194, i64 %t191
  store i8 46, ptr %t195, !tbaa !32
  %t196 = load i64, ptr %l3, !tbaa !24
  %t198 = add i64 %t196, 1
  %t200 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t201 = load ptr, ptr %t200, !tbaa !27
  %t202 = getelementptr i8, ptr %t201, i64 %t198
  store i8 46, ptr %t202, !tbaa !32
  %t203 = load i64, ptr %l3, !tbaa !24
  %t205 = add i64 %t203, 2
  store i64 %t205, ptr %l3, !tbaa !24
  %t207 = load i64, ptr %l3, !tbaa !24
  store i64 %t207, ptr %l6, !tbaa !24
  br label %bb50
bb50:
  br label %bb51
bb51:
  br label %bb73
bb52:
  %t209 = load i64, ptr %l3, !tbaa !24
  %t211 = icmp ne i64 %t209, 1
  store i1 %t211, ptr %l112, !tbaa !21
  br label %bb54
bb53:
  store i1 false, ptr %l112, !tbaa !21
  br label %bb54
bb54:
  %t213 = load i1, ptr %l112, !tbaa !21
  br i1 %t213, label %bb55, label %bb56
bb55:
  store i1 true, ptr %l115, !tbaa !21
  br label %bb60
bb56:
  %t214 = load i1, ptr %l4, !tbaa !21
  %t216 = xor i1 %t214, true
  br i1 %t216, label %bb57, label %bb58
bb57:
  %t218 = load i64, ptr %l3, !tbaa !24
  %t220 = icmp ne i64 %t218, 0
  store i1 %t220, ptr %l118, !tbaa !21
  br label %bb59
bb58:
  store i1 false, ptr %l118, !tbaa !21
  br label %bb59
bb59:
  %t222 = load i1, ptr %l118, !tbaa !21
  store i1 %t222, ptr %l115, !tbaa !21
  br label %bb60
bb60:
  %t223 = load i1, ptr %l115, !tbaa !21
  br i1 %t223, label %bb61, label %bb62
bb61:
  %t224 = load i64, ptr %l3, !tbaa !24
  %t226 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t227 = load ptr, ptr %t226, !tbaa !27
  %t228 = getelementptr i8, ptr %t227, i64 %t224
  store i8 47, ptr %t228, !tbaa !32
  %t229 = load i64, ptr %l3, !tbaa !24
  %t231 = add i64 %t229, 1
  store i64 %t231, ptr %l3, !tbaa !24
  br label %bb63
bb62:
  br label %bb63
bb63:
  br label %bb64
bb64:
  %t233 = load i64, ptr %l5, !tbaa !24
  %t234 = load i64, ptr %l1, !tbaa !24
  %t237 = icmp slt i64 %t233, %t234
  br i1 %t237, label %bb65, label %bb66
bb65:
  %t239 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t239, ptr %l128, !tbaa !27
  %t240 = load i64, ptr %l5, !tbaa !24
  %t242 = getelementptr { i64, ptr }, ptr %l128, i32 0, i32 1
  %t243 = load ptr, ptr %t242, !tbaa !27
  %t244 = getelementptr i8, ptr %t243, i64 %t240
  %t245 = load i8, ptr %t244, !tbaa !32
  %t247 = icmp ne i8 %t245, 47
  store i1 %t247, ptr %l127, !tbaa !21
  br label %bb67
bb66:
  store i1 false, ptr %l127, !tbaa !21
  br label %bb67
bb67:
  %t249 = load i1, ptr %l127, !tbaa !21
  %t250 = xor i1 %t249, true
  br i1 %t250, label %bb68, label %bb69
bb68:
  br label %bb72
bb69:
  br label %bb70
bb70:
  %t252 = load i64, ptr %l3, !tbaa !24
  %t253 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t253, ptr %l134, !tbaa !27
  %t254 = load i64, ptr %l5, !tbaa !24
  %t256 = getelementptr { i64, ptr }, ptr %l134, i32 0, i32 1
  %t257 = load ptr, ptr %t256, !tbaa !27
  %t258 = getelementptr i8, ptr %t257, i64 %t254
  %t259 = load i8, ptr %t258, !tbaa !32
  %t262 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t263 = load ptr, ptr %t262, !tbaa !27
  %t264 = getelementptr i8, ptr %t263, i64 %t252
  store i8 %t259, ptr %t264, !tbaa !32
  %t265 = load i64, ptr %l3, !tbaa !24
  %t267 = add i64 %t265, 1
  store i64 %t267, ptr %l3, !tbaa !24
  %t269 = load i64, ptr %l5, !tbaa !24
  %t271 = add i64 %t269, 1
  store i64 %t271, ptr %l5, !tbaa !24
  br label %bb71
bb71:
  br label %bb64
bb72:
  br label %bb73
bb73:
  br label %bb74
bb74:
  br label %bb75
bb75:
  br label %bb76
bb76:
  br label %bb9
bb77:
  %t273 = load i64, ptr %l3, !tbaa !24
  %t275 = icmp eq i64 %t273, 0
  br i1 %t275, label %bb78, label %bb79
bb78:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) }, ptr %l143, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t277 = load { i64, ptr }, ptr %l143, !tbaa !27
  store { i64, ptr } %t277, ptr %rv
  br label %ret
bb79:
  br label %bb80
bb80:
  store i1 true, ptr %l7, !tbaa !21
  store i64 0, ptr %l8, !tbaa !24
  %t278 = load i64, ptr %l3, !tbaa !24
  store i64 %t278, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t280 = load i64, ptr %l9, !tbaa !24
  %t281 = load i64, ptr %l8, !tbaa !24
  %t284 = icmp sgt i64 %t280, %t281
  br i1 %t284, label %bb81, label %bb82
bb81:
  %t286 = load i64, ptr %l10, !tbaa !24
  %t288 = icmp sgt i64 %t286, 0
  br i1 %t288, label %bb83, label %bb84
bb82:
  store i64 0, ptr %l148, !tbaa !24
  br label %bb86
bb83:
  %t290 = load i64, ptr %l9, !tbaa !24
  %t291 = load i64, ptr %l8, !tbaa !24
  %t294 = sub i64 %t290, %t291
  %t295 = load i64, ptr %l10, !tbaa !24
  %t298 = add i64 %t294, %t295
  %t300 = sub i64 %t298, 1
  %t301 = load i64, ptr %l10, !tbaa !24
  %t304 = sdiv i64 %t300, %t301
  store i64 %t304, ptr %l151, !tbaa !24
  br label %bb85
bb84:
  store i64 0, ptr %l151, !tbaa !24
  br label %bb85
bb85:
  %t306 = load i64, ptr %l151, !tbaa !24
  store i64 %t306, ptr %l148, !tbaa !24
  br label %bb86
bb86:
  %t307 = load i64, ptr %l148, !tbaa !24
  store i64 %t307, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb87
bb87:
  %t308 = load i64, ptr %l12, !tbaa !24
  %t309 = load i64, ptr %l11, !tbaa !24
  %t312 = icmp slt i64 %t308, %t309
  %t314 = xor i1 %t312, true
  br i1 %t314, label %bb88, label %bb89
bb88:
  br label %bb95
bb89:
  br label %bb90
bb90:
  %t316 = load i64, ptr %l8, !tbaa !24
  %t317 = load i64, ptr %l12, !tbaa !24
  %t318 = load i64, ptr %l10, !tbaa !24
  %t321 = mul i64 %t317, %t318
  %t324 = add i64 %t316, %t321
  store i64 %t324, ptr %l13, !tbaa !24
  %t326 = load i64, ptr %l13, !tbaa !24
  %t328 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t329 = load ptr, ptr %t328, !tbaa !27
  %t330 = getelementptr i8, ptr %t329, i64 %t326
  %t331 = load i8, ptr %t330, !tbaa !32
  %t332 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t332, ptr %l171, !tbaa !27
  %t333 = load i64, ptr %l13, !tbaa !24
  %t335 = getelementptr { i64, ptr }, ptr %l171, i32 0, i32 1
  %t336 = load ptr, ptr %t335, !tbaa !27
  %t337 = getelementptr i8, ptr %t336, i64 %t333
  %t338 = load i8, ptr %t337, !tbaa !32
  %t341 = icmp ne i8 %t331, %t338
  br i1 %t341, label %bb91, label %bb92
bb91:
  store i1 false, ptr %l7, !tbaa !21
  br label %bb95
bb92:
  br label %bb93
bb93:
  br label %bb94
bb94:
  %t343 = load i64, ptr %l12, !tbaa !24
  %t345 = add i64 %t343, 1
  store i64 %t345, ptr %l12, !tbaa !24
  br label %bb87
bb95:
  %t347 = load i1, ptr %l7, !tbaa !21
  br i1 %t347, label %bb96, label %bb97
bb96:
  %t349 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t349, ptr %l178, !tbaa !27
  %t350 = load i64, ptr %l3, !tbaa !24
  store i64 %t350, ptr %l179, !tbaa !24
  %t351 = load { i64, ptr }, ptr %l178, !tbaa !27
  %t352 = extractvalue { i64, ptr } %t351, 0
  store i64 %t352, ptr %l180, !tbaa !24
  %t353 = icmp sge i64 0, 0
  br i1 %t353, label %bb98, label %bb99
bb97:
  br label %bb104
bb98:
  %t355 = load i64, ptr %l179, !tbaa !24
  %t356 = icmp sle i64 0, %t355
  br i1 %t356, label %bb100, label %bb101
bb99:
  call void @__olang_check_failed(ptr @olang_loc_a602995b964ddbcf_b078a441454e17cb)
  unreachable
bb100:
  %t358 = load i64, ptr %l179, !tbaa !24
  %t359 = load i64, ptr %l180, !tbaa !24
  %t360 = icmp sle i64 %t358, %t359
  br i1 %t360, label %bb102, label %bb103
bb101:
  call void @__olang_check_failed(ptr @olang_loc_a602995b964ddbcf_b078a441454e17cb)
  unreachable
bb102:
  %t362 = getelementptr { i64, ptr }, ptr %l178, i32 0, i32 1
  %t363 = load ptr, ptr %t362, !tbaa !27
  %t364 = load i64, ptr %l179, !tbaa !24
  %t365 = getelementptr i8, ptr %t363, i64 0
  %t366 = sub i64 %t364, 0
  %t367 = insertvalue { i64, ptr } undef, i64 %t366, 0
  %t368 = insertvalue { i64, ptr } %t367, ptr %t365, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t368, ptr %rv
  br label %ret
bb103:
  call void @__olang_check_failed(ptr @olang_loc_a602995b964ddbcf_b078a441454e17cb)
  unreachable
bb104:
  %t370 = load i64, ptr %l3, !tbaa !24
  store i64 %t370, ptr %l185, !tbaa !24
  %t371 = load i64, ptr %l185, !tbaa !24
  %t372 = icmp sge i64 %t371, 0
  br i1 %t372, label %bb105, label %bb106
bb105:
  %t374 = load i64, ptr %l185, !tbaa !24
  %t375 = mul i64 %t374, 1
  %t376 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t375)
  %t377 = insertvalue { i64, ptr } undef, i64 %t374, 0
  %t378 = insertvalue { i64, ptr } %t377, ptr %t376, 1
  %t379 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t379, ptr %lp14
  %t381 = load ptr, ptr %lp14
  store { i64, ptr } %t378, ptr %t381, !tbaa !27
  store i64 0, ptr %l15, !tbaa !24
  %t382 = load i64, ptr %l3, !tbaa !24
  store i64 %t382, ptr %l16, !tbaa !24
  store i64 1, ptr %l17, !tbaa !24
  %t384 = load i64, ptr %l16, !tbaa !24
  %t385 = load i64, ptr %l15, !tbaa !24
  %t388 = icmp sgt i64 %t384, %t385
  br i1 %t388, label %bb107, label %bb108
bb106:
  call void @__olang_check_failed(ptr @olang_loc_a7ca1e4a4409b00c_ac64874c39ec6a0)
  unreachable
bb107:
  %t390 = load i64, ptr %l17, !tbaa !24
  %t392 = icmp sgt i64 %t390, 0
  br i1 %t392, label %bb109, label %bb110
bb108:
  store i64 0, ptr %l192, !tbaa !24
  br label %bb112
bb109:
  %t394 = load i64, ptr %l16, !tbaa !24
  %t395 = load i64, ptr %l15, !tbaa !24
  %t398 = sub i64 %t394, %t395
  %t399 = load i64, ptr %l17, !tbaa !24
  %t402 = add i64 %t398, %t399
  %t404 = sub i64 %t402, 1
  %t405 = load i64, ptr %l17, !tbaa !24
  %t408 = sdiv i64 %t404, %t405
  store i64 %t408, ptr %l195, !tbaa !24
  br label %bb111
bb110:
  store i64 0, ptr %l195, !tbaa !24
  br label %bb111
bb111:
  %t410 = load i64, ptr %l195, !tbaa !24
  store i64 %t410, ptr %l192, !tbaa !24
  br label %bb112
bb112:
  %t411 = load i64, ptr %l192, !tbaa !24
  store i64 %t411, ptr %l18, !tbaa !24
  store i64 0, ptr %l19, !tbaa !24
  br label %bb113
bb113:
  %t412 = load i64, ptr %l19, !tbaa !24
  %t413 = load i64, ptr %l18, !tbaa !24
  %t416 = icmp slt i64 %t412, %t413
  %t418 = xor i1 %t416, true
  br i1 %t418, label %bb114, label %bb115
bb114:
  br label %bb118
bb115:
  br label %bb116
bb116:
  %t420 = load i64, ptr %l15, !tbaa !24
  %t421 = load i64, ptr %l19, !tbaa !24
  %t422 = load i64, ptr %l17, !tbaa !24
  %t425 = mul i64 %t421, %t422
  %t428 = add i64 %t420, %t425
  store i64 %t428, ptr %l20, !tbaa !24
  %t430 = load i64, ptr %l20, !tbaa !24
  %t431 = load i64, ptr %l20, !tbaa !24
  %t433 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t434 = load ptr, ptr %t433, !tbaa !27
  %t435 = getelementptr i8, ptr %t434, i64 %t431
  %t436 = load i8, ptr %t435, !tbaa !32
  %t438 = load ptr, ptr %lp14
  %t440 = getelementptr { i64, ptr }, ptr %t438, i32 0, i32 1
  %t441 = load ptr, ptr %t440, !tbaa !27
  %t442 = getelementptr i8, ptr %t441, i64 %t430
  store i8 %t436, ptr %t442, !tbaa !32
  br label %bb117
bb117:
  %t443 = load i64, ptr %l19, !tbaa !24
  %t445 = add i64 %t443, 1
  store i64 %t445, ptr %l19, !tbaa !24
  br label %bb113
bb118:
  %t447 = load ptr, ptr %lp14
  %t448 = load { i64, ptr }, ptr %t447, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t448, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @std_2ffilepath_2eDir(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l7 = alloca i1
  %l8 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca i64
  %l23 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = sub i64 %t3, 1
  store i64 %t5, ptr %l1, !tbaa !24
  br label %bb1
bb1:
  %t7 = load i64, ptr %l1, !tbaa !24
  %t9 = icmp sge i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t11, ptr %l8, !tbaa !27
  %t12 = load i64, ptr %l1, !tbaa !24
  %t14 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr i8, ptr %t15, i64 %t12
  %t17 = load i8, ptr %t16, !tbaa !32
  %t19 = icmp ne i8 %t17, 47
  store i1 %t19, ptr %l7, !tbaa !21
  br label %bb4
bb3:
  store i1 false, ptr %l7, !tbaa !21
  br label %bb4
bb4:
  %t21 = load i1, ptr %l7, !tbaa !21
  %t22 = xor i1 %t21, true
  br i1 %t22, label %bb5, label %bb6
bb5:
  br label %bb9
bb6:
  br label %bb7
bb7:
  %t24 = load i64, ptr %l1, !tbaa !24
  %t26 = sub i64 %t24, 1
  store i64 %t26, ptr %l1, !tbaa !24
  br label %bb8
bb8:
  br label %bb1
bb9:
  %t28 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t28, ptr %l15, !tbaa !27
  %t29 = load i64, ptr %l1, !tbaa !24
  %t31 = add i64 %t29, 1
  store i64 %t31, ptr %l17, !tbaa !24
  %t32 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t33 = extractvalue { i64, ptr } %t32, 0
  store i64 %t33, ptr %l18, !tbaa !24
  %t34 = icmp sge i64 0, 0
  br i1 %t34, label %bb10, label %bb11
bb10:
  %t36 = load i64, ptr %l17, !tbaa !24
  %t37 = icmp sle i64 0, %t36
  br i1 %t37, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_5863906a03a0a60_f582400c809d7edc)
  unreachable
bb12:
  %t39 = load i64, ptr %l17, !tbaa !24
  %t40 = load i64, ptr %l18, !tbaa !24
  %t41 = icmp sle i64 %t39, %t40
  br i1 %t41, label %bb14, label %bb15
bb13:
  call void @__olang_check_failed(ptr @olang_loc_5863906a03a0a60_f582400c809d7edc)
  unreachable
bb14:
  %t43 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !27
  %t45 = load i64, ptr %l17, !tbaa !24
  %t46 = getelementptr i8, ptr %t44, i64 0
  %t47 = sub i64 %t45, 0
  %t48 = insertvalue { i64, ptr } undef, i64 %t47, 0
  %t49 = insertvalue { i64, ptr } %t48, ptr %t46, 1
  %t51 = call { i64, ptr } @std_2ffilepath_2eClean(ptr %v0, ptr %v1, { i64, ptr } %t49)
  store { i64, ptr } %t51, ptr %l23
  br label %bb16
bb15:
  call void @__olang_check_failed(ptr @olang_loc_5863906a03a0a60_f582400c809d7edc)
  unreachable
bb16:
  %t52 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t52, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @std_2ffilepath_2eExt(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l7 = alloca i1
  %l8 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l29 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = sub i64 %t3, 1
  store i64 %t5, ptr %l1, !tbaa !24
  br label %bb1
bb1:
  %t7 = load i64, ptr %l1, !tbaa !24
  %t9 = icmp sge i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t11, ptr %l8, !tbaa !27
  %t12 = load i64, ptr %l1, !tbaa !24
  %t14 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr i8, ptr %t15, i64 %t12
  %t17 = load i8, ptr %t16, !tbaa !32
  %t19 = icmp ne i8 %t17, 47
  store i1 %t19, ptr %l7, !tbaa !21
  br label %bb4
bb3:
  store i1 false, ptr %l7, !tbaa !21
  br label %bb4
bb4:
  %t21 = load i1, ptr %l7, !tbaa !21
  %t22 = xor i1 %t21, true
  br i1 %t22, label %bb5, label %bb6
bb5:
  br label %bb18
bb6:
  br label %bb7
bb7:
  %t24 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t24, ptr %l13, !tbaa !27
  %t25 = load i64, ptr %l1, !tbaa !24
  %t27 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = getelementptr i8, ptr %t28, i64 %t25
  %t30 = load i8, ptr %t29, !tbaa !32
  %t32 = icmp eq i8 %t30, 46
  br i1 %t32, label %bb8, label %bb9
bb8:
  %t34 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t34, ptr %l17, !tbaa !27
  %t35 = load i64, ptr %l1, !tbaa !24
  store i64 %t35, ptr %l18, !tbaa !24
  %t36 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t36, 0
  store i64 %t39, ptr %l21, !tbaa !24
  %t40 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t40, 0
  store i64 %t41, ptr %l22, !tbaa !24
  %t42 = load i64, ptr %l18, !tbaa !24
  %t43 = icmp sge i64 %t42, 0
  br i1 %t43, label %bb10, label %bb11
bb9:
  br label %bb16
bb10:
  %t45 = load i64, ptr %l18, !tbaa !24
  %t46 = load i64, ptr %l21, !tbaa !24
  %t47 = icmp sle i64 %t45, %t46
  br i1 %t47, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_e2acb5ec38c923e0_e54a547ca8982b04)
  unreachable
bb12:
  %t49 = load i64, ptr %l21, !tbaa !24
  %t50 = load i64, ptr %l22, !tbaa !24
  %t51 = icmp sle i64 %t49, %t50
  br i1 %t51, label %bb14, label %bb15
bb13:
  call void @__olang_check_failed(ptr @olang_loc_e2acb5ec38c923e0_e54a547ca8982b04)
  unreachable
bb14:
  %t53 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !27
  %t55 = load i64, ptr %l18, !tbaa !24
  %t56 = load i64, ptr %l21, !tbaa !24
  %t57 = getelementptr i8, ptr %t54, i64 %t55
  %t58 = sub i64 %t56, %t55
  %t59 = insertvalue { i64, ptr } undef, i64 %t58, 0
  %t60 = insertvalue { i64, ptr } %t59, ptr %t57, 1
  store { i64, ptr } %t60, ptr %rv
  br label %ret
bb15:
  call void @__olang_check_failed(ptr @olang_loc_e2acb5ec38c923e0_e54a547ca8982b04)
  unreachable
bb16:
  %t62 = load i64, ptr %l1, !tbaa !24
  %t64 = sub i64 %t62, 1
  store i64 %t64, ptr %l1, !tbaa !24
  br label %bb17
bb17:
  br label %bb1
bb18:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) }, ptr %l29, !tbaa !27
  %t66 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t66, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @std_2ffilepath_2eIsAbs(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l4 = alloca i1
  %l5 = alloca { i64, ptr }
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp sgt i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t7, ptr %l5, !tbaa !27
  %t8 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !27
  %t10 = getelementptr i8, ptr %t9, i64 0
  %t11 = load i8, ptr %t10, !tbaa !32
  %t13 = icmp eq i8 %t11, 47
  store i1 %t13, ptr %l4, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb3
bb3:
  %t15 = load i1, ptr %l4, !tbaa !21
  store i1 %t15, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @std_2ffilepath_2eJoin(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l23 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  %l42 = alloca { i64, ptr }
  %l43 = alloca i64
  %l44 = alloca { i64, ptr }
  %l45 = alloca i64
  %l55 = alloca { i64, ptr }
  %l73 = alloca { i64, ptr }
  %l87 = alloca { i64, ptr }
  %l88 = alloca { i64, ptr }
  %l89 = alloca i64
  %l90 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
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
  br label %bb12
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t15, ptr %l23, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr { i64, ptr }, ptr %t19, i64 %t16
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !37
  store { i64, ptr } %t21, ptr %l5, !tbaa !27
  %t23 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t25 = extractvalue { i64, ptr } %t23, 0
  %t27 = icmp sgt i64 %t25, 0
  br i1 %t27, label %bb5, label %bb6
bb5:
  %t29 = load i64, ptr %l1, !tbaa !24
  %t31 = icmp sgt i64 %t29, 0
  br i1 %t31, label %bb7, label %bb8
bb6:
  br label %bb10
bb7:
  %t33 = load i64, ptr %l1, !tbaa !24
  %t35 = add i64 %t33, 1
  store i64 %t35, ptr %l1, !tbaa !24
  br label %bb9
bb8:
  br label %bb9
bb9:
  %t37 = load i64, ptr %l1, !tbaa !24
  %t38 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t38, 0
  %t43 = add i64 %t37, %t40
  store i64 %t43, ptr %l1, !tbaa !24
  br label %bb10
bb10:
  br label %bb11
bb11:
  %t45 = load i64, ptr %l3, !tbaa !24
  %t47 = add i64 %t45, 1
  store i64 %t47, ptr %l3, !tbaa !24
  br label %bb1
bb12:
  %t49 = load i64, ptr %l1, !tbaa !24
  %t51 = icmp eq i64 %t49, 0
  br i1 %t51, label %bb13, label %bb14
bb13:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d4, i32 0, i32 1) }, ptr %l41, !tbaa !27
  %t53 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t53, ptr %l42, !tbaa !27
  %t54 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t55 = extractvalue { i64, ptr } %t54, 0
  store i64 %t55, ptr %l43, !tbaa !24
  %t56 = load i64, ptr %l43, !tbaa !24
  %t57 = mul i64 %t56, 1
  %t58 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t57)
  %t59 = insertvalue { i64, ptr } undef, i64 %t56, 0
  %t60 = insertvalue { i64, ptr } %t59, ptr %t58, 1
  store { i64, ptr } %t60, ptr %l44, !tbaa !27
  %t61 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !27
  %t63 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !27
  %t65 = load i64, ptr %l43, !tbaa !24
  %t66 = mul i64 %t65, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t62, ptr %t64, i64 %t66, i1 false)
  %t67 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t67, ptr %l42, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t68 = load { i64, ptr }, ptr %l42, !tbaa !27
  store { i64, ptr } %t68, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t69 = load i64, ptr %l1, !tbaa !24
  store i64 %t69, ptr %l45, !tbaa !24
  %t70 = load i64, ptr %l45, !tbaa !24
  %t71 = icmp sge i64 %t70, 0
  br i1 %t71, label %bb16, label %bb17
bb16:
  %t73 = load i64, ptr %l45, !tbaa !24
  %t74 = mul i64 %t73, 1
  %t75 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t74)
  %t76 = insertvalue { i64, ptr } undef, i64 %t73, 0
  %t77 = insertvalue { i64, ptr } %t76, ptr %t75, 1
  store { i64, ptr } %t77, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t79 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t79, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t81 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t83 = extractvalue { i64, ptr } %t81, 0
  store i64 %t83, ptr %l10, !tbaa !24
  br label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_88514958f43ac5a5_71c1ca98982dfa9)
  unreachable
bb18:
  %t85 = load i64, ptr %l9, !tbaa !24
  %t86 = load i64, ptr %l10, !tbaa !24
  %t89 = icmp slt i64 %t85, %t86
  %t91 = xor i1 %t89, true
  br i1 %t91, label %bb19, label %bb20
bb19:
  br label %bb35
bb20:
  br label %bb21
bb21:
  %t93 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t93, ptr %l55, !tbaa !27
  %t94 = load i64, ptr %l9, !tbaa !24
  %t96 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !27
  %t98 = getelementptr { i64, ptr }, ptr %t97, i64 %t94
  %t99 = load { i64, ptr }, ptr %t98, !tbaa !37
  store { i64, ptr } %t99, ptr %l11, !tbaa !27
  %t101 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t103 = extractvalue { i64, ptr } %t101, 0
  %t105 = icmp eq i64 %t103, 0
  br i1 %t105, label %bb22, label %bb23
bb22:
  br label %bb34
bb23:
  br label %bb24
bb24:
  %t107 = load i64, ptr %l7, !tbaa !24
  %t109 = icmp sgt i64 %t107, 0
  br i1 %t109, label %bb25, label %bb26
bb25:
  %t111 = load i64, ptr %l7, !tbaa !24
  %t113 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !27
  %t115 = getelementptr i8, ptr %t114, i64 %t111
  store i8 47, ptr %t115, !tbaa !32
  %t116 = load i64, ptr %l7, !tbaa !24
  %t118 = add i64 %t116, 1
  store i64 %t118, ptr %l7, !tbaa !24
  br label %bb27
bb26:
  br label %bb27
bb27:
  %t120 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t120, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t122 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t124 = extractvalue { i64, ptr } %t122, 0
  store i64 %t124, ptr %l14, !tbaa !24
  br label %bb28
bb28:
  %t126 = load i64, ptr %l13, !tbaa !24
  %t127 = load i64, ptr %l14, !tbaa !24
  %t130 = icmp slt i64 %t126, %t127
  %t132 = xor i1 %t130, true
  br i1 %t132, label %bb29, label %bb30
bb29:
  br label %bb33
bb30:
  br label %bb31
bb31:
  %t134 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t134, ptr %l73, !tbaa !27
  %t135 = load i64, ptr %l13, !tbaa !24
  %t137 = getelementptr { i64, ptr }, ptr %l73, i32 0, i32 1
  %t138 = load ptr, ptr %t137, !tbaa !27
  %t139 = getelementptr i8, ptr %t138, i64 %t135
  %t140 = load i8, ptr %t139, !tbaa !32
  %t142 = load i64, ptr %l7, !tbaa !24
  %t146 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t147 = load ptr, ptr %t146, !tbaa !27
  %t148 = getelementptr i8, ptr %t147, i64 %t142
  store i8 %t140, ptr %t148, !tbaa !32
  %t149 = load i64, ptr %l7, !tbaa !24
  %t151 = add i64 %t149, 1
  store i64 %t151, ptr %l7, !tbaa !24
  br label %bb32
bb32:
  %t153 = load i64, ptr %l13, !tbaa !24
  %t155 = add i64 %t153, 1
  store i64 %t155, ptr %l13, !tbaa !24
  br label %bb28
bb33:
  br label %bb34
bb34:
  %t157 = load i64, ptr %l9, !tbaa !24
  %t159 = add i64 %t157, 1
  store i64 %t159, ptr %l9, !tbaa !24
  br label %bb18
bb35:
  %t161 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t165 = call { i64, ptr } @std_2ffilepath_2eClean(ptr %s0, ptr %s0, { i64, ptr } %t161)
  store { i64, ptr } %t165, ptr %l87
  br label %bb36
bb36:
  %t166 = load { i64, ptr }, ptr %l87, !tbaa !27
  store { i64, ptr } %t166, ptr %l88, !tbaa !27
  %t167 = load { i64, ptr }, ptr %l88, !tbaa !27
  %t168 = extractvalue { i64, ptr } %t167, 0
  store i64 %t168, ptr %l89, !tbaa !24
  %t169 = load i64, ptr %l89, !tbaa !24
  %t170 = mul i64 %t169, 1
  %t171 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t170)
  %t172 = insertvalue { i64, ptr } undef, i64 %t169, 0
  %t173 = insertvalue { i64, ptr } %t172, ptr %t171, 1
  store { i64, ptr } %t173, ptr %l90, !tbaa !27
  %t174 = getelementptr { i64, ptr }, ptr %l90, i32 0, i32 1
  %t175 = load ptr, ptr %t174, !tbaa !27
  %t176 = getelementptr { i64, ptr }, ptr %l88, i32 0, i32 1
  %t177 = load ptr, ptr %t176, !tbaa !27
  %t178 = load i64, ptr %l89, !tbaa !24
  %t179 = mul i64 %t178, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t175, ptr %t177, i64 %t179, i1 false)
  %t180 = load { i64, ptr }, ptr %l90, !tbaa !27
  store { i64, ptr } %t180, ptr %l88, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t181 = load { i64, ptr }, ptr %l88, !tbaa !27
  store { i64, ptr } %t181, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i32, { i64, ptr } } @std_2ffilepath_2eRel(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
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
  %l17 = alloca { i64, ptr }
  %lp18 = alloca ptr
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l26 = alloca { i64, ptr }
  %l27 = alloca i64
  %l28 = alloca i64
  %l31 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  %l36 = alloca i1
  %l37 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l39 = alloca i64
  %l40 = alloca { i64, ptr }
  %l42 = alloca i1
  %l43 = alloca { i64, ptr }
  %l44 = alloca i64
  %l50 = alloca i1
  %l52 = alloca i1
  %l62 = alloca i1
  %l63 = alloca { i64, ptr }
  %l73 = alloca i1
  %l74 = alloca { i64, ptr }
  %l81 = alloca { i64, ptr }
  %l82 = alloca i64
  %l83 = alloca i64
  %l84 = alloca i64
  %l88 = alloca { i64, ptr }
  %l89 = alloca { i64, ptr }
  %l90 = alloca i64
  %l91 = alloca i64
  %l92 = alloca i64
  %l97 = alloca i1
  %l111 = alloca { i64, ptr }
  %l112 = alloca i64
  %l113 = alloca i64
  %l114 = alloca i64
  %l119 = alloca i1
  %l124 = alloca { i64, ptr }
  %l125 = alloca i64
  %l128 = alloca i64
  %l129 = alloca i64
  %l134 = alloca { i64, ptr }
  %l135 = alloca i64
  %l136 = alloca { i64, ptr }
  %l142 = alloca i64
  %l145 = alloca i64
  %l163 = alloca { i64, ptr }
  %l171 = alloca { i64, ptr }
  %l172 = alloca i64
  %l175 = alloca i64
  %l176 = alloca i64
  %l183 = alloca i64
  %l187 = alloca i64
  %l191 = alloca i64
  %l198 = alloca i64
  %l201 = alloca i64
  %l244 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call { i64, ptr } @std_2ffilepath_2eClean(ptr %v0, ptr %s0, { i64, ptr } %a0)
  store { i64, ptr } %t3, ptr %l31
  br label %bb1
bb1:
  %t4 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t4, ptr %l2, !tbaa !27
  %t7 = call { i64, ptr } @std_2ffilepath_2eClean(ptr %v1, ptr %s0, { i64, ptr } %a1)
  store { i64, ptr } %t7, ptr %l33
  br label %bb2
bb2:
  %t8 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t8, ptr %l3, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t10 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t13 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t9, { i64, ptr } %t10)
  store i1 %t13, ptr %l36
  br label %bb3
bb3:
  %t14 = load i1, ptr %l36, !tbaa !21
  br i1 %t14, label %bb4, label %bb5
bb4:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, ptr %l37, !tbaa !27
  %t15 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t15, ptr %l38, !tbaa !27
  %t16 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t16, 0
  store i64 %t17, ptr %l39, !tbaa !24
  %t18 = load i64, ptr %l39, !tbaa !24
  %t19 = mul i64 %t18, 1
  %t20 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t19)
  %t21 = insertvalue { i64, ptr } undef, i64 %t18, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t20, 1
  store { i64, ptr } %t22, ptr %l40, !tbaa !27
  %t23 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !27
  %t25 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = load i64, ptr %l39, !tbaa !24
  %t28 = mul i64 %t27, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t24, ptr %t26, i64 %t28, i1 false)
  %t29 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t29, ptr %l38, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t30 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t31 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t30, 1
  store { i32, { i64, ptr } } %t31, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t32 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t34 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t32, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) })
  store i1 %t34, ptr %l42
  br label %bb7
bb7:
  %t35 = load i1, ptr %l42, !tbaa !21
  br i1 %t35, label %bb8, label %bb9
bb8:
  %t36 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t36, ptr %l43, !tbaa !27
  %t37 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t38 = extractvalue { i64, ptr } %t37, 0
  store i64 %t38, ptr %l44, !tbaa !24
  %t39 = icmp sge i64 0, 0
  br i1 %t39, label %bb10, label %bb11
bb9:
  br label %bb16
bb10:
  %t41 = icmp sle i64 0, 0
  br i1 %t41, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_d061c7e25d631130_ed41ebaf937312b4)
  unreachable
bb12:
  %t43 = load i64, ptr %l44, !tbaa !24
  %t44 = icmp sle i64 0, %t43
  br i1 %t44, label %bb14, label %bb15
bb13:
  call void @__olang_check_failed(ptr @olang_loc_d061c7e25d631130_ed41ebaf937312b4)
  unreachable
bb14:
  %t46 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = getelementptr i8, ptr %t47, i64 0
  %t49 = sub i64 0, 0
  %t50 = insertvalue { i64, ptr } undef, i64 %t49, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr %t48, 1
  store { i64, ptr } %t51, ptr %l2, !tbaa !27
  br label %bb16
bb15:
  call void @__olang_check_failed(ptr @olang_loc_d061c7e25d631130_ed41ebaf937312b4)
  unreachable
bb16:
  %t53 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t55 = call i1 @std_2ffilepath_2eIsAbs(ptr %s0, { i64, ptr } %t53)
  store i1 %t55, ptr %l50
  br label %bb17
bb17:
  %t56 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t58 = call i1 @std_2ffilepath_2eIsAbs(ptr %s0, { i64, ptr } %t56)
  store i1 %t58, ptr %l52
  br label %bb18
bb18:
  %t59 = load i1, ptr %l50, !tbaa !21
  %t60 = load i1, ptr %l52, !tbaa !21
  %t61 = icmp ne i1 %t59, %t60
  br i1 %t61, label %bb19, label %bb20
bb19:
  call void @__olang_scope_close(ptr %s0)
  %t64 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t64, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t65 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t67 = extractvalue { i64, ptr } %t65, 0
  store i64 %t67, ptr %l4, !tbaa !24
  %t69 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t71 = extractvalue { i64, ptr } %t69, 0
  store i64 %t71, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t73 = load i64, ptr %l7, !tbaa !24
  %t74 = load i64, ptr %l4, !tbaa !24
  %t77 = icmp slt i64 %t73, %t74
  br i1 %t77, label %bb24, label %bb25
bb24:
  %t79 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t79, ptr %l63, !tbaa !27
  %t80 = load i64, ptr %l7, !tbaa !24
  %t82 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !27
  %t84 = getelementptr i8, ptr %t83, i64 %t80
  %t85 = load i8, ptr %t84, !tbaa !32
  %t87 = icmp ne i8 %t85, 47
  store i1 %t87, ptr %l62, !tbaa !21
  br label %bb26
bb25:
  store i1 false, ptr %l62, !tbaa !21
  br label %bb26
bb26:
  %t89 = load i1, ptr %l62, !tbaa !21
  %t90 = xor i1 %t89, true
  br i1 %t90, label %bb27, label %bb28
bb27:
  br label %bb31
bb28:
  br label %bb29
bb29:
  %t92 = load i64, ptr %l7, !tbaa !24
  %t94 = add i64 %t92, 1
  store i64 %t94, ptr %l7, !tbaa !24
  br label %bb30
bb30:
  br label %bb23
bb31:
  br label %bb32
bb32:
  %t96 = load i64, ptr %l9, !tbaa !24
  %t97 = load i64, ptr %l5, !tbaa !24
  %t100 = icmp slt i64 %t96, %t97
  br i1 %t100, label %bb33, label %bb34
bb33:
  %t102 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t102, ptr %l74, !tbaa !27
  %t103 = load i64, ptr %l9, !tbaa !24
  %t105 = getelementptr { i64, ptr }, ptr %l74, i32 0, i32 1
  %t106 = load ptr, ptr %t105, !tbaa !27
  %t107 = getelementptr i8, ptr %t106, i64 %t103
  %t108 = load i8, ptr %t107, !tbaa !32
  %t110 = icmp ne i8 %t108, 47
  store i1 %t110, ptr %l73, !tbaa !21
  br label %bb35
bb34:
  store i1 false, ptr %l73, !tbaa !21
  br label %bb35
bb35:
  %t112 = load i1, ptr %l73, !tbaa !21
  %t113 = xor i1 %t112, true
  br i1 %t113, label %bb36, label %bb37
bb36:
  br label %bb40
bb37:
  br label %bb38
bb38:
  %t115 = load i64, ptr %l9, !tbaa !24
  %t117 = add i64 %t115, 1
  store i64 %t117, ptr %l9, !tbaa !24
  br label %bb39
bb39:
  br label %bb32
bb40:
  %t119 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t119, ptr %l81, !tbaa !27
  %t120 = load i64, ptr %l8, !tbaa !24
  store i64 %t120, ptr %l82, !tbaa !24
  %t121 = load i64, ptr %l9, !tbaa !24
  store i64 %t121, ptr %l83, !tbaa !24
  %t122 = load { i64, ptr }, ptr %l81, !tbaa !27
  %t123 = extractvalue { i64, ptr } %t122, 0
  store i64 %t123, ptr %l84, !tbaa !24
  %t124 = load i64, ptr %l82, !tbaa !24
  %t125 = icmp sge i64 %t124, 0
  br i1 %t125, label %bb41, label %bb42
bb41:
  %t127 = load i64, ptr %l82, !tbaa !24
  %t128 = load i64, ptr %l83, !tbaa !24
  %t129 = icmp sle i64 %t127, %t128
  br i1 %t129, label %bb43, label %bb44
bb42:
  call void @__olang_check_failed(ptr @olang_loc_668000db62bcfe0d_fbc758d8da0c96a1)
  unreachable
bb43:
  %t131 = load i64, ptr %l83, !tbaa !24
  %t132 = load i64, ptr %l84, !tbaa !24
  %t133 = icmp sle i64 %t131, %t132
  br i1 %t133, label %bb45, label %bb46
bb44:
  call void @__olang_check_failed(ptr @olang_loc_668000db62bcfe0d_fbc758d8da0c96a1)
  unreachable
bb45:
  %t135 = getelementptr { i64, ptr }, ptr %l81, i32 0, i32 1
  %t136 = load ptr, ptr %t135, !tbaa !27
  %t137 = load i64, ptr %l82, !tbaa !24
  %t138 = load i64, ptr %l83, !tbaa !24
  %t139 = getelementptr i8, ptr %t136, i64 %t137
  %t140 = sub i64 %t138, %t137
  %t141 = insertvalue { i64, ptr } undef, i64 %t140, 0
  %t142 = insertvalue { i64, ptr } %t141, ptr %t139, 1
  store { i64, ptr } %t142, ptr %l88, !tbaa !27
  %t143 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t143, ptr %l89, !tbaa !27
  %t144 = load i64, ptr %l6, !tbaa !24
  store i64 %t144, ptr %l90, !tbaa !24
  %t145 = load i64, ptr %l7, !tbaa !24
  store i64 %t145, ptr %l91, !tbaa !24
  %t146 = load { i64, ptr }, ptr %l89, !tbaa !27
  %t147 = extractvalue { i64, ptr } %t146, 0
  store i64 %t147, ptr %l92, !tbaa !24
  %t148 = load i64, ptr %l90, !tbaa !24
  %t149 = icmp sge i64 %t148, 0
  br i1 %t149, label %bb47, label %bb48
bb46:
  call void @__olang_check_failed(ptr @olang_loc_668000db62bcfe0d_fbc758d8da0c96a1)
  unreachable
bb47:
  %t151 = load i64, ptr %l90, !tbaa !24
  %t152 = load i64, ptr %l91, !tbaa !24
  %t153 = icmp sle i64 %t151, %t152
  br i1 %t153, label %bb49, label %bb50
bb48:
  call void @__olang_check_failed(ptr @olang_loc_668000db62bcfe0d_fbc758d8da0c96a1)
  unreachable
bb49:
  %t155 = load i64, ptr %l91, !tbaa !24
  %t156 = load i64, ptr %l92, !tbaa !24
  %t157 = icmp sle i64 %t155, %t156
  br i1 %t157, label %bb51, label %bb52
bb50:
  call void @__olang_check_failed(ptr @olang_loc_668000db62bcfe0d_fbc758d8da0c96a1)
  unreachable
bb51:
  %t159 = getelementptr { i64, ptr }, ptr %l89, i32 0, i32 1
  %t160 = load ptr, ptr %t159, !tbaa !27
  %t161 = load i64, ptr %l90, !tbaa !24
  %t162 = load i64, ptr %l91, !tbaa !24
  %t163 = getelementptr i8, ptr %t160, i64 %t161
  %t164 = sub i64 %t162, %t161
  %t165 = insertvalue { i64, ptr } undef, i64 %t164, 0
  %t166 = insertvalue { i64, ptr } %t165, ptr %t163, 1
  %t167 = load { i64, ptr }, ptr %l88, !tbaa !27
  %t169 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t167, { i64, ptr } %t166)
  store i1 %t169, ptr %l97
  br label %bb53
bb52:
  call void @__olang_check_failed(ptr @olang_loc_668000db62bcfe0d_fbc758d8da0c96a1)
  unreachable
bb53:
  %t170 = load i1, ptr %l97, !tbaa !21
  %t171 = xor i1 %t170, true
  br i1 %t171, label %bb54, label %bb55
bb54:
  br label %bb64
bb55:
  br label %bb56
bb56:
  %t173 = load i64, ptr %l7, !tbaa !24
  %t174 = load i64, ptr %l4, !tbaa !24
  %t177 = icmp slt i64 %t173, %t174
  br i1 %t177, label %bb57, label %bb58
bb57:
  %t179 = load i64, ptr %l7, !tbaa !24
  %t181 = add i64 %t179, 1
  store i64 %t181, ptr %l7, !tbaa !24
  br label %bb59
bb58:
  br label %bb59
bb59:
  %t183 = load i64, ptr %l9, !tbaa !24
  %t184 = load i64, ptr %l5, !tbaa !24
  %t187 = icmp slt i64 %t183, %t184
  br i1 %t187, label %bb60, label %bb61
bb60:
  %t189 = load i64, ptr %l9, !tbaa !24
  %t191 = add i64 %t189, 1
  store i64 %t191, ptr %l9, !tbaa !24
  br label %bb62
bb61:
  br label %bb62
bb62:
  %t193 = load i64, ptr %l7, !tbaa !24
  store i64 %t193, ptr %l6, !tbaa !24
  %t195 = load i64, ptr %l9, !tbaa !24
  store i64 %t195, ptr %l8, !tbaa !24
  br label %bb63
bb63:
  br label %bb22
bb64:
  %t197 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t197, ptr %l111, !tbaa !27
  %t198 = load i64, ptr %l6, !tbaa !24
  store i64 %t198, ptr %l112, !tbaa !24
  %t199 = load i64, ptr %l7, !tbaa !24
  store i64 %t199, ptr %l113, !tbaa !24
  %t200 = load { i64, ptr }, ptr %l111, !tbaa !27
  %t201 = extractvalue { i64, ptr } %t200, 0
  store i64 %t201, ptr %l114, !tbaa !24
  %t202 = load i64, ptr %l112, !tbaa !24
  %t203 = icmp sge i64 %t202, 0
  br i1 %t203, label %bb65, label %bb66
bb65:
  %t205 = load i64, ptr %l112, !tbaa !24
  %t206 = load i64, ptr %l113, !tbaa !24
  %t207 = icmp sle i64 %t205, %t206
  br i1 %t207, label %bb67, label %bb68
bb66:
  call void @__olang_check_failed(ptr @olang_loc_25fb20074e4b49ae_c59224b0534d5022)
  unreachable
bb67:
  %t209 = load i64, ptr %l113, !tbaa !24
  %t210 = load i64, ptr %l114, !tbaa !24
  %t211 = icmp sle i64 %t209, %t210
  br i1 %t211, label %bb69, label %bb70
bb68:
  call void @__olang_check_failed(ptr @olang_loc_25fb20074e4b49ae_c59224b0534d5022)
  unreachable
bb69:
  %t213 = getelementptr { i64, ptr }, ptr %l111, i32 0, i32 1
  %t214 = load ptr, ptr %t213, !tbaa !27
  %t215 = load i64, ptr %l112, !tbaa !24
  %t216 = load i64, ptr %l113, !tbaa !24
  %t217 = getelementptr i8, ptr %t214, i64 %t215
  %t218 = sub i64 %t216, %t215
  %t219 = insertvalue { i64, ptr } undef, i64 %t218, 0
  %t220 = insertvalue { i64, ptr } %t219, ptr %t217, 1
  %t222 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t220, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d7, i32 0, i32 1) })
  store i1 %t222, ptr %l119
  br label %bb71
bb70:
  call void @__olang_check_failed(ptr @olang_loc_25fb20074e4b49ae_c59224b0534d5022)
  unreachable
bb71:
  %t223 = load i1, ptr %l119, !tbaa !21
  br i1 %t223, label %bb72, label %bb73
bb72:
  call void @__olang_scope_close(ptr %s0)
  %t225 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t225, ptr %rv
  br label %ret
bb73:
  br label %bb74
bb74:
  %t226 = load i64, ptr %l6, !tbaa !24
  %t227 = load i64, ptr %l4, !tbaa !24
  %t230 = icmp eq i64 %t226, %t227
  br i1 %t230, label %bb75, label %bb76
bb75:
  %t232 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t232, ptr %l124, !tbaa !27
  %t233 = load i64, ptr %l8, !tbaa !24
  store i64 %t233, ptr %l125, !tbaa !24
  %t234 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t237 = extractvalue { i64, ptr } %t234, 0
  store i64 %t237, ptr %l128, !tbaa !24
  %t238 = load { i64, ptr }, ptr %l124, !tbaa !27
  %t239 = extractvalue { i64, ptr } %t238, 0
  store i64 %t239, ptr %l129, !tbaa !24
  %t240 = load i64, ptr %l125, !tbaa !24
  %t241 = icmp sge i64 %t240, 0
  br i1 %t241, label %bb77, label %bb78
bb76:
  br label %bb83
bb77:
  %t243 = load i64, ptr %l125, !tbaa !24
  %t244 = load i64, ptr %l128, !tbaa !24
  %t245 = icmp sle i64 %t243, %t244
  br i1 %t245, label %bb79, label %bb80
bb78:
  call void @__olang_check_failed(ptr @olang_loc_3fc5cad3648832ab_e217ea960297dd9f)
  unreachable
bb79:
  %t247 = load i64, ptr %l128, !tbaa !24
  %t248 = load i64, ptr %l129, !tbaa !24
  %t249 = icmp sle i64 %t247, %t248
  br i1 %t249, label %bb81, label %bb82
bb80:
  call void @__olang_check_failed(ptr @olang_loc_3fc5cad3648832ab_e217ea960297dd9f)
  unreachable
bb81:
  %t251 = getelementptr { i64, ptr }, ptr %l124, i32 0, i32 1
  %t252 = load ptr, ptr %t251, !tbaa !27
  %t253 = load i64, ptr %l125, !tbaa !24
  %t254 = load i64, ptr %l128, !tbaa !24
  %t255 = getelementptr i8, ptr %t252, i64 %t253
  %t256 = sub i64 %t254, %t253
  %t257 = insertvalue { i64, ptr } undef, i64 %t256, 0
  %t258 = insertvalue { i64, ptr } %t257, ptr %t255, 1
  store { i64, ptr } %t258, ptr %l134, !tbaa !27
  %t260 = load { i64, ptr }, ptr %l134, !tbaa !27
  %t261 = extractvalue { i64, ptr } %t260, 0
  store i64 %t261, ptr %l135, !tbaa !24
  %t262 = load i64, ptr %l135, !tbaa !24
  %t263 = mul i64 %t262, 1
  %t264 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t263)
  %t265 = insertvalue { i64, ptr } undef, i64 %t262, 0
  %t266 = insertvalue { i64, ptr } %t265, ptr %t264, 1
  store { i64, ptr } %t266, ptr %l136, !tbaa !27
  %t267 = getelementptr { i64, ptr }, ptr %l136, i32 0, i32 1
  %t268 = load ptr, ptr %t267, !tbaa !27
  %t269 = getelementptr { i64, ptr }, ptr %l134, i32 0, i32 1
  %t270 = load ptr, ptr %t269, !tbaa !27
  %t271 = load i64, ptr %l135, !tbaa !24
  %t272 = mul i64 %t271, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t268, ptr %t270, i64 %t272, i1 false)
  %t273 = load { i64, ptr }, ptr %l136, !tbaa !27
  store { i64, ptr } %t273, ptr %l134, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t274 = load { i64, ptr }, ptr %l134, !tbaa !27
  %t275 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t274, 1
  store { i32, { i64, ptr } } %t275, ptr %rv
  br label %ret
bb82:
  call void @__olang_check_failed(ptr @olang_loc_3fc5cad3648832ab_e217ea960297dd9f)
  unreachable
bb83:
  store i64 1, ptr %l10, !tbaa !24
  %t276 = load i64, ptr %l6, !tbaa !24
  store i64 %t276, ptr %l11, !tbaa !24
  %t278 = load i64, ptr %l4, !tbaa !24
  store i64 %t278, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t280 = load i64, ptr %l12, !tbaa !24
  %t281 = load i64, ptr %l11, !tbaa !24
  %t284 = icmp sgt i64 %t280, %t281
  br i1 %t284, label %bb84, label %bb85
bb84:
  %t286 = load i64, ptr %l13, !tbaa !24
  %t288 = icmp sgt i64 %t286, 0
  br i1 %t288, label %bb86, label %bb87
bb85:
  store i64 0, ptr %l142, !tbaa !24
  br label %bb89
bb86:
  %t290 = load i64, ptr %l12, !tbaa !24
  %t291 = load i64, ptr %l11, !tbaa !24
  %t294 = sub i64 %t290, %t291
  %t295 = load i64, ptr %l13, !tbaa !24
  %t298 = add i64 %t294, %t295
  %t300 = sub i64 %t298, 1
  %t301 = load i64, ptr %l13, !tbaa !24
  %t304 = sdiv i64 %t300, %t301
  store i64 %t304, ptr %l145, !tbaa !24
  br label %bb88
bb87:
  store i64 0, ptr %l145, !tbaa !24
  br label %bb88
bb88:
  %t306 = load i64, ptr %l145, !tbaa !24
  store i64 %t306, ptr %l142, !tbaa !24
  br label %bb89
bb89:
  %t307 = load i64, ptr %l142, !tbaa !24
  store i64 %t307, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb90
bb90:
  %t308 = load i64, ptr %l15, !tbaa !24
  %t309 = load i64, ptr %l14, !tbaa !24
  %t312 = icmp slt i64 %t308, %t309
  %t314 = xor i1 %t312, true
  br i1 %t314, label %bb91, label %bb92
bb91:
  br label %bb98
bb92:
  br label %bb93
bb93:
  %t316 = load i64, ptr %l11, !tbaa !24
  %t317 = load i64, ptr %l15, !tbaa !24
  %t318 = load i64, ptr %l13, !tbaa !24
  %t321 = mul i64 %t317, %t318
  %t324 = add i64 %t316, %t321
  %t326 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t326, ptr %l163, !tbaa !27
  %t329 = getelementptr { i64, ptr }, ptr %l163, i32 0, i32 1
  %t330 = load ptr, ptr %t329, !tbaa !27
  %t331 = getelementptr i8, ptr %t330, i64 %t324
  %t332 = load i8, ptr %t331, !tbaa !32
  %t334 = icmp eq i8 %t332, 47
  br i1 %t334, label %bb94, label %bb95
bb94:
  %t336 = load i64, ptr %l10, !tbaa !24
  %t338 = add i64 %t336, 1
  store i64 %t338, ptr %l10, !tbaa !24
  br label %bb96
bb95:
  br label %bb96
bb96:
  br label %bb97
bb97:
  %t340 = load i64, ptr %l15, !tbaa !24
  %t342 = add i64 %t340, 1
  store i64 %t342, ptr %l15, !tbaa !24
  br label %bb90
bb98:
  %t344 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t344, ptr %l171, !tbaa !27
  %t345 = load i64, ptr %l8, !tbaa !24
  store i64 %t345, ptr %l172, !tbaa !24
  %t346 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t349 = extractvalue { i64, ptr } %t346, 0
  store i64 %t349, ptr %l175, !tbaa !24
  %t350 = load { i64, ptr }, ptr %l171, !tbaa !27
  %t351 = extractvalue { i64, ptr } %t350, 0
  store i64 %t351, ptr %l176, !tbaa !24
  %t352 = load i64, ptr %l172, !tbaa !24
  %t353 = icmp sge i64 %t352, 0
  br i1 %t353, label %bb99, label %bb100
bb99:
  %t355 = load i64, ptr %l172, !tbaa !24
  %t356 = load i64, ptr %l175, !tbaa !24
  %t357 = icmp sle i64 %t355, %t356
  br i1 %t357, label %bb101, label %bb102
bb100:
  call void @__olang_check_failed(ptr @olang_loc_6975e58e775568a4_668b7bdd2238b9c0)
  unreachable
bb101:
  %t359 = load i64, ptr %l175, !tbaa !24
  %t360 = load i64, ptr %l176, !tbaa !24
  %t361 = icmp sle i64 %t359, %t360
  br i1 %t361, label %bb103, label %bb104
bb102:
  call void @__olang_check_failed(ptr @olang_loc_6975e58e775568a4_668b7bdd2238b9c0)
  unreachable
bb103:
  %t363 = getelementptr { i64, ptr }, ptr %l171, i32 0, i32 1
  %t364 = load ptr, ptr %t363, !tbaa !27
  %t365 = load i64, ptr %l172, !tbaa !24
  %t366 = load i64, ptr %l175, !tbaa !24
  %t367 = getelementptr i8, ptr %t364, i64 %t365
  %t368 = sub i64 %t366, %t365
  %t369 = insertvalue { i64, ptr } undef, i64 %t368, 0
  %t370 = insertvalue { i64, ptr } %t369, ptr %t367, 1
  store { i64, ptr } %t370, ptr %l17, !tbaa !27
  %t372 = load i64, ptr %l10, !tbaa !24
  %t374 = mul i64 %t372, 3
  %t376 = sub i64 %t374, 1
  store i64 %t376, ptr %l183, !tbaa !24
  %t377 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t379 = extractvalue { i64, ptr } %t377, 0
  %t381 = icmp sgt i64 %t379, 0
  br i1 %t381, label %bb105, label %bb106
bb104:
  call void @__olang_check_failed(ptr @olang_loc_6975e58e775568a4_668b7bdd2238b9c0)
  unreachable
bb105:
  %t383 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t385 = extractvalue { i64, ptr } %t383, 0
  %t387 = add i64 %t385, 1
  store i64 %t387, ptr %l187, !tbaa !24
  br label %bb107
bb106:
  store i64 0, ptr %l187, !tbaa !24
  br label %bb107
bb107:
  %t389 = load i64, ptr %l183, !tbaa !24
  %t390 = load i64, ptr %l187, !tbaa !24
  %t391 = add i64 %t389, %t390
  store i64 %t391, ptr %l191, !tbaa !24
  %t392 = load i64, ptr %l191, !tbaa !24
  %t393 = icmp sge i64 %t392, 0
  br i1 %t393, label %bb108, label %bb109
bb108:
  %t395 = load i64, ptr %l191, !tbaa !24
  %t396 = mul i64 %t395, 1
  %t397 = call ptr @__olang_scope_alloc_zeroed(ptr %v2, i64 %t396)
  %t398 = insertvalue { i64, ptr } undef, i64 %t395, 0
  %t399 = insertvalue { i64, ptr } %t398, ptr %t397, 1
  %t400 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t400, ptr %lp18
  %t402 = load ptr, ptr %lp18
  store { i64, ptr } %t399, ptr %t402, !tbaa !27
  store i64 0, ptr %l19, !tbaa !24
  store i64 0, ptr %l20, !tbaa !24
  %t403 = load i64, ptr %l10, !tbaa !24
  store i64 %t403, ptr %l21, !tbaa !24
  store i64 1, ptr %l22, !tbaa !24
  %t405 = load i64, ptr %l21, !tbaa !24
  %t406 = load i64, ptr %l20, !tbaa !24
  %t409 = icmp sgt i64 %t405, %t406
  br i1 %t409, label %bb110, label %bb111
bb109:
  call void @__olang_check_failed(ptr @olang_loc_1fc14433466d7ed9_4c0c0b85aca7f45d)
  unreachable
bb110:
  %t411 = load i64, ptr %l22, !tbaa !24
  %t413 = icmp sgt i64 %t411, 0
  br i1 %t413, label %bb112, label %bb113
bb111:
  store i64 0, ptr %l198, !tbaa !24
  br label %bb115
bb112:
  %t415 = load i64, ptr %l21, !tbaa !24
  %t416 = load i64, ptr %l20, !tbaa !24
  %t419 = sub i64 %t415, %t416
  %t420 = load i64, ptr %l22, !tbaa !24
  %t423 = add i64 %t419, %t420
  %t425 = sub i64 %t423, 1
  %t426 = load i64, ptr %l22, !tbaa !24
  %t429 = sdiv i64 %t425, %t426
  store i64 %t429, ptr %l201, !tbaa !24
  br label %bb114
bb113:
  store i64 0, ptr %l201, !tbaa !24
  br label %bb114
bb114:
  %t431 = load i64, ptr %l201, !tbaa !24
  store i64 %t431, ptr %l198, !tbaa !24
  br label %bb115
bb115:
  %t432 = load i64, ptr %l198, !tbaa !24
  store i64 %t432, ptr %l23, !tbaa !24
  store i64 0, ptr %l24, !tbaa !24
  br label %bb116
bb116:
  %t433 = load i64, ptr %l24, !tbaa !24
  %t434 = load i64, ptr %l23, !tbaa !24
  %t437 = icmp slt i64 %t433, %t434
  %t439 = xor i1 %t437, true
  br i1 %t439, label %bb117, label %bb118
bb117:
  br label %bb124
bb118:
  br label %bb119
bb119:
  %t441 = load i64, ptr %l20, !tbaa !24
  %t442 = load i64, ptr %l24, !tbaa !24
  %t443 = load i64, ptr %l22, !tbaa !24
  %t446 = mul i64 %t442, %t443
  %t449 = add i64 %t441, %t446
  %t453 = icmp sgt i64 %t449, 0
  br i1 %t453, label %bb120, label %bb121
bb120:
  %t455 = load i64, ptr %l19, !tbaa !24
  %t456 = load ptr, ptr %lp18
  %t458 = getelementptr { i64, ptr }, ptr %t456, i32 0, i32 1
  %t459 = load ptr, ptr %t458, !tbaa !27
  %t460 = getelementptr i8, ptr %t459, i64 %t455
  store i8 47, ptr %t460, !tbaa !32
  %t461 = load i64, ptr %l19, !tbaa !24
  %t463 = add i64 %t461, 1
  store i64 %t463, ptr %l19, !tbaa !24
  br label %bb122
bb121:
  br label %bb122
bb122:
  %t465 = load i64, ptr %l19, !tbaa !24
  %t466 = load ptr, ptr %lp18
  %t468 = getelementptr { i64, ptr }, ptr %t466, i32 0, i32 1
  %t469 = load ptr, ptr %t468, !tbaa !27
  %t470 = getelementptr i8, ptr %t469, i64 %t465
  store i8 46, ptr %t470, !tbaa !32
  %t471 = load i64, ptr %l19, !tbaa !24
  %t473 = add i64 %t471, 1
  %t474 = load ptr, ptr %lp18
  %t476 = getelementptr { i64, ptr }, ptr %t474, i32 0, i32 1
  %t477 = load ptr, ptr %t476, !tbaa !27
  %t478 = getelementptr i8, ptr %t477, i64 %t473
  store i8 46, ptr %t478, !tbaa !32
  %t479 = load i64, ptr %l19, !tbaa !24
  %t481 = add i64 %t479, 2
  store i64 %t481, ptr %l19, !tbaa !24
  br label %bb123
bb123:
  %t483 = load i64, ptr %l24, !tbaa !24
  %t485 = add i64 %t483, 1
  store i64 %t485, ptr %l24, !tbaa !24
  br label %bb116
bb124:
  %t487 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t489 = extractvalue { i64, ptr } %t487, 0
  %t491 = icmp sgt i64 %t489, 0
  br i1 %t491, label %bb125, label %bb126
bb125:
  %t493 = load i64, ptr %l19, !tbaa !24
  %t494 = load ptr, ptr %lp18
  %t496 = getelementptr { i64, ptr }, ptr %t494, i32 0, i32 1
  %t497 = load ptr, ptr %t496, !tbaa !27
  %t498 = getelementptr i8, ptr %t497, i64 %t493
  store i8 47, ptr %t498, !tbaa !32
  %t499 = load i64, ptr %l19, !tbaa !24
  %t501 = add i64 %t499, 1
  store i64 %t501, ptr %l19, !tbaa !24
  %t503 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t503, ptr %l26, !tbaa !27
  store i64 0, ptr %l27, !tbaa !24
  %t505 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t507 = extractvalue { i64, ptr } %t505, 0
  store i64 %t507, ptr %l28, !tbaa !24
  br label %bb127
bb126:
  br label %bb133
bb127:
  %t509 = load i64, ptr %l27, !tbaa !24
  %t510 = load i64, ptr %l28, !tbaa !24
  %t513 = icmp slt i64 %t509, %t510
  %t515 = xor i1 %t513, true
  br i1 %t515, label %bb128, label %bb129
bb128:
  br label %bb132
bb129:
  br label %bb130
bb130:
  %t517 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t517, ptr %l244, !tbaa !27
  %t518 = load i64, ptr %l27, !tbaa !24
  %t520 = getelementptr { i64, ptr }, ptr %l244, i32 0, i32 1
  %t521 = load ptr, ptr %t520, !tbaa !27
  %t522 = getelementptr i8, ptr %t521, i64 %t518
  %t523 = load i8, ptr %t522, !tbaa !32
  %t525 = load i64, ptr %l19, !tbaa !24
  %t528 = load ptr, ptr %lp18
  %t530 = getelementptr { i64, ptr }, ptr %t528, i32 0, i32 1
  %t531 = load ptr, ptr %t530, !tbaa !27
  %t532 = getelementptr i8, ptr %t531, i64 %t525
  store i8 %t523, ptr %t532, !tbaa !32
  %t533 = load i64, ptr %l19, !tbaa !24
  %t535 = add i64 %t533, 1
  store i64 %t535, ptr %l19, !tbaa !24
  br label %bb131
bb131:
  %t537 = load i64, ptr %l27, !tbaa !24
  %t539 = add i64 %t537, 1
  store i64 %t539, ptr %l27, !tbaa !24
  br label %bb127
bb132:
  br label %bb133
bb133:
  %t541 = load ptr, ptr %lp18
  %t542 = load { i64, ptr }, ptr %t541, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t545 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t542, 1
  store { i32, { i64, ptr } } %t545, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local i64 @std_2ffilepath_2echurn() #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l11 = alloca i64
  %l14 = alloca i64
  %s2 = alloca %olang.scope
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l0, !tbaa !24
  store i64 0, ptr %l1, !tbaa !24
  store i64 300, ptr %l2, !tbaa !24
  store i64 1, ptr %l3, !tbaa !24
  %t1 = load i64, ptr %l2, !tbaa !24
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = icmp sgt i64 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load i64, ptr %l3, !tbaa !24
  %t9 = icmp sgt i64 %t7, 0
  br i1 %t9, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l11, !tbaa !24
  br label %bb6
bb3:
  %t11 = load i64, ptr %l2, !tbaa !24
  %t12 = load i64, ptr %l1, !tbaa !24
  %t15 = sub i64 %t11, %t12
  %t16 = load i64, ptr %l3, !tbaa !24
  %t19 = add i64 %t15, %t16
  %t21 = sub i64 %t19, 1
  %t22 = load i64, ptr %l3, !tbaa !24
  %t25 = sdiv i64 %t21, %t22
  store i64 %t25, ptr %l14, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l14, !tbaa !24
  br label %bb5
bb5:
  %t27 = load i64, ptr %l14, !tbaa !24
  store i64 %t27, ptr %l11, !tbaa !24
  br label %bb6
bb6:
  %t28 = load i64, ptr %l11, !tbaa !24
  store i64 %t28, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb7
bb7:
  store %olang.scope zeroinitializer, ptr %s2
  %t29 = load i64, ptr %l5, !tbaa !24
  %t30 = load i64, ptr %l4, !tbaa !24
  %t33 = icmp slt i64 %t29, %t30
  %t35 = xor i1 %t33, true
  br i1 %t35, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s2)
  br label %bb12
bb9:
  br label %bb10
bb10:
  %t37 = load i64, ptr %l1, !tbaa !24
  %t38 = load i64, ptr %l5, !tbaa !24
  %t39 = load i64, ptr %l3, !tbaa !24
  %t42 = mul i64 %t38, %t39
  %t45 = add i64 %t37, %t42
  %t49 = call i64 @__olang_fmt_i64(ptr null, i64 %t45)
  %t50 = extractvalue { i64, ptr } { i64 61, ptr getelementptr inbounds (<{ i64, [61 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t51 = extractvalue { i64, ptr } { i64 61, ptr getelementptr inbounds (<{ i64, [61 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  %t52 = add i64 %t49, %t51
  %t53 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t52)
  %t54 = call i64 @__olang_fmt_i64(ptr %t53, i64 %t45)
  %t55 = getelementptr i8, ptr %t53, i64 %t49
  call void @olang_textcopy(ptr %t55, ptr %t50, i64 %t51)
  %t56 = insertvalue { i64, ptr } undef, i64 %t52, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t53, 1
  %t59 = load i64, ptr %l0, !tbaa !24
  %t62 = extractvalue { i64, ptr } %t57, 0
  %t65 = add i64 %t59, %t62
  store i64 %t65, ptr %l0, !tbaa !24
  call void @__olang_scope_close(ptr %s2)
  br label %bb11
bb11:
  %t67 = load i64, ptr %l5, !tbaa !24
  %t69 = add i64 %t67, 1
  store i64 %t69, ptr %l5, !tbaa !24
  br label %bb7
bb12:
  %t71 = load i64, ptr %l0, !tbaa !24
  store i64 %t71, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @std_2ffilepath_2ecleanMisses(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/text:StringBuilder"
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca %"std/prelude/text:StringBuilder"
  %l10 = alloca [76 x { i64, ptr }]
  %l15 = alloca i64
  %l18 = alloca i64
  %l38 = alloca { i64, ptr }
  %l43 = alloca i1
  %l52 = alloca { i64, ptr }
  %l55 = alloca i1
  %l65 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l9
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l9
  store %"std/prelude/text:StringBuilder" %t2, ptr %l0
  store i64 0, ptr %l1, !tbaa !24
  call void @llvm.memmove.p0.p0.i64(ptr %l10, ptr @G_2estd_2ffilepath_2ecleanCases, i64 1216, i1 false)
  %t3 = load [76 x { i64, ptr }], ptr %l10
  store i64 76, ptr %l2, !tbaa !24
  store i64 2, ptr %l3, !tbaa !24
  %t5 = load i64, ptr %l2, !tbaa !24
  %t6 = load i64, ptr %l1, !tbaa !24
  %t9 = icmp sgt i64 %t5, %t6
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load i64, ptr %l3, !tbaa !24
  %t13 = icmp sgt i64 %t11, 0
  br i1 %t13, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l15, !tbaa !24
  br label %bb7
bb4:
  %t15 = load i64, ptr %l2, !tbaa !24
  %t16 = load i64, ptr %l1, !tbaa !24
  %t19 = sub i64 %t15, %t16
  %t20 = load i64, ptr %l3, !tbaa !24
  %t23 = add i64 %t19, %t20
  %t25 = sub i64 %t23, 1
  %t26 = load i64, ptr %l3, !tbaa !24
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
  store i64 %t32, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t33 = load i64, ptr %l5, !tbaa !24
  %t34 = load i64, ptr %l4, !tbaa !24
  %t37 = icmp slt i64 %t33, %t34
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb25
bb10:
  br label %bb11
bb11:
  %t41 = load i64, ptr %l1, !tbaa !24
  %t42 = load i64, ptr %l5, !tbaa !24
  %t43 = load i64, ptr %l3, !tbaa !24
  %t46 = mul i64 %t42, %t43
  %t49 = add i64 %t41, %t46
  store i64 %t49, ptr %l6, !tbaa !24
  %t51 = load i64, ptr %l6, !tbaa !24
  %t53 = getelementptr [76 x { i64, ptr }], ptr @G_2estd_2ffilepath_2ecleanCases, i64 0, i64 %t51
  %t54 = load { i64, ptr }, ptr %t53, !tbaa !37
  %t55 = load ptr, ptr @__olang_prog_scope
  %t57 = call { i64, ptr } @std_2ffilepath_2eClean(ptr %t55, ptr %s2, { i64, ptr } %t54)
  store { i64, ptr } %t57, ptr %l38
  br label %bb12
bb12:
  %t58 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t58, ptr %l7, !tbaa !27
  %t59 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t60 = load i64, ptr %l6, !tbaa !24
  %t62 = add i64 %t60, 1
  %t64 = getelementptr [76 x { i64, ptr }], ptr @G_2estd_2ffilepath_2ecleanCases, i64 0, i64 %t62
  %t65 = load { i64, ptr }, ptr %t64, !tbaa !37
  %t66 = load ptr, ptr @__olang_prog_scope
  %t69 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %t66, { i64, ptr } %t59, { i64, ptr } %t65)
  store i1 %t69, ptr %l43
  br label %bb13
bb13:
  %t70 = load i1, ptr %l43, !tbaa !21
  %t71 = xor i1 %t70, true
  br i1 %t71, label %bb14, label %bb15
bb14:
  store %olang.scope zeroinitializer, ptr %s3
  %t73 = load i64, ptr %l6, !tbaa !24
  %t75 = getelementptr [76 x { i64, ptr }], ptr @G_2estd_2ffilepath_2ecleanCases, i64 0, i64 %t73
  %t76 = load { i64, ptr }, ptr %t75, !tbaa !37
  %t77 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t79 = extractvalue { i64, ptr } %t76, 1
  %t80 = extractvalue { i64, ptr } %t76, 0
  %t81 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t82 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  %t83 = add i64 %t80, %t82
  %t85 = extractvalue { i64, ptr } %t77, 1
  %t86 = extractvalue { i64, ptr } %t77, 0
  %t87 = add i64 %t83, %t86
  %t88 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t89 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  %t90 = add i64 %t87, %t89
  %t91 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t90)
  call void @olang_textcopy(ptr %t91, ptr %t79, i64 %t80)
  %t92 = getelementptr i8, ptr %t91, i64 %t80
  call void @olang_textcopy(ptr %t92, ptr %t81, i64 %t82)
  %t93 = getelementptr i8, ptr %t92, i64 %t82
  call void @olang_textcopy(ptr %t93, ptr %t85, i64 %t86)
  %t94 = getelementptr i8, ptr %t93, i64 %t86
  call void @olang_textcopy(ptr %t94, ptr %t88, i64 %t89)
  %t95 = insertvalue { i64, ptr } undef, i64 %t90, 0
  %t96 = insertvalue { i64, ptr } %t95, ptr %t91, 1
  %t98 = extractvalue { i64, ptr } %t96, 0
  %t99 = extractvalue { i64, ptr } %t96, 1
  %t100 = mul i64 %t98, 1
  %t101 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t100)
  call void @llvm.memcpy.p0.p0.i64(ptr %t101, ptr %t99, i64 %t100, i1 false)
  %t102 = insertvalue { i64, ptr } undef, i64 %t98, 0
  %t103 = insertvalue { i64, ptr } %t102, ptr %t101, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s3, ptr %l0, { i64, ptr } %t103)
  br label %bb16
bb15:
  br label %bb17
bb16:
  call void @__olang_scope_close(ptr %s3)
  br label %bb17
bb17:
  %t106 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t108 = call { i64, ptr } @std_2ffilepath_2eClean(ptr %s2, ptr %s2, { i64, ptr } %t106)
  store { i64, ptr } %t108, ptr %l52
  br label %bb18
bb18:
  %t109 = load { i64, ptr }, ptr %l52, !tbaa !27
  store { i64, ptr } %t109, ptr %l8, !tbaa !27
  %t110 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t111 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t114 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t110, { i64, ptr } %t111)
  store i1 %t114, ptr %l55
  br label %bb19
bb19:
  %t115 = load i1, ptr %l55, !tbaa !21
  %t116 = xor i1 %t115, true
  br i1 %t116, label %bb20, label %bb21
bb20:
  store %olang.scope zeroinitializer, ptr %s5
  %t118 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t119 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t121 = extractvalue { i64, ptr } %t118, 1
  %t122 = extractvalue { i64, ptr } %t118, 0
  %t123 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t124 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  %t125 = add i64 %t122, %t124
  %t127 = extractvalue { i64, ptr } %t119, 1
  %t128 = extractvalue { i64, ptr } %t119, 0
  %t129 = add i64 %t125, %t128
  %t130 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t131 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  %t132 = add i64 %t129, %t131
  %t133 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t132)
  call void @olang_textcopy(ptr %t133, ptr %t121, i64 %t122)
  %t134 = getelementptr i8, ptr %t133, i64 %t122
  call void @olang_textcopy(ptr %t134, ptr %t123, i64 %t124)
  %t135 = getelementptr i8, ptr %t134, i64 %t124
  call void @olang_textcopy(ptr %t135, ptr %t127, i64 %t128)
  %t136 = getelementptr i8, ptr %t135, i64 %t128
  call void @olang_textcopy(ptr %t136, ptr %t130, i64 %t131)
  %t137 = insertvalue { i64, ptr } undef, i64 %t132, 0
  %t138 = insertvalue { i64, ptr } %t137, ptr %t133, 1
  %t140 = extractvalue { i64, ptr } %t138, 0
  %t141 = extractvalue { i64, ptr } %t138, 1
  %t142 = mul i64 %t140, 1
  %t143 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t142)
  call void @llvm.memcpy.p0.p0.i64(ptr %t143, ptr %t141, i64 %t142, i1 false)
  %t144 = insertvalue { i64, ptr } undef, i64 %t140, 0
  %t145 = insertvalue { i64, ptr } %t144, ptr %t143, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s5, ptr %l0, { i64, ptr } %t145)
  br label %bb22
bb21:
  br label %bb23
bb22:
  call void @__olang_scope_close(ptr %s5)
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s2)
  br label %bb24
bb24:
  %t148 = load i64, ptr %l5, !tbaa !24
  %t150 = add i64 %t148, 1
  store i64 %t150, ptr %l5, !tbaa !24
  br label %bb8
bb25:
  %t153 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v0, ptr %l0)
  store { i64, ptr } %t153, ptr %l65
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s0)
  %t154 = load { i64, ptr }, ptr %l65, !tbaa !27
  store { i64, ptr } %t154, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @std_2ffilepath_2elivePath_2einit() #0 {
entry:
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d13, i32 0, i32 1) }, ptr @G_2estd_2ffilepath_2elivePath, !tbaa !27
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @std_2ffilepath_2epartMisses(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/text:StringBuilder"
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca %"std/prelude/text:StringBuilder"
  %l9 = alloca [57 x { i64, ptr }]
  %l14 = alloca i64
  %l17 = alloca i64
  %l38 = alloca { i64, ptr }
  %l42 = alloca i1
  %l44 = alloca ptr
  %l45 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l51 = alloca { i64, ptr }
  %l55 = alloca i1
  %l57 = alloca ptr
  %l58 = alloca { i64, ptr }
  %l60 = alloca { i64, ptr }
  %l66 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca { i64, ptr }
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
  store %"std/prelude/text:StringBuilder" %t2, ptr %l0
  store i64 0, ptr %l1, !tbaa !24
  call void @llvm.memmove.p0.p0.i64(ptr %l9, ptr @G_2estd_2ffilepath_2epartCases, i64 912, i1 false)
  %t3 = load [57 x { i64, ptr }], ptr %l9
  store i64 57, ptr %l2, !tbaa !24
  store i64 3, ptr %l3, !tbaa !24
  %t5 = load i64, ptr %l2, !tbaa !24
  %t6 = load i64, ptr %l1, !tbaa !24
  %t9 = icmp sgt i64 %t5, %t6
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load i64, ptr %l3, !tbaa !24
  %t13 = icmp sgt i64 %t11, 0
  br i1 %t13, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l14, !tbaa !24
  br label %bb7
bb4:
  %t15 = load i64, ptr %l2, !tbaa !24
  %t16 = load i64, ptr %l1, !tbaa !24
  %t19 = sub i64 %t15, %t16
  %t20 = load i64, ptr %l3, !tbaa !24
  %t23 = add i64 %t19, %t20
  %t25 = sub i64 %t23, 1
  %t26 = load i64, ptr %l3, !tbaa !24
  %t29 = sdiv i64 %t25, %t26
  store i64 %t29, ptr %l17, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb6
bb6:
  %t31 = load i64, ptr %l17, !tbaa !24
  store i64 %t31, ptr %l14, !tbaa !24
  br label %bb7
bb7:
  %t32 = load i64, ptr %l14, !tbaa !24
  store i64 %t32, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t33 = load i64, ptr %l5, !tbaa !24
  %t34 = load i64, ptr %l4, !tbaa !24
  %t37 = icmp slt i64 %t33, %t34
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb27
bb10:
  br label %bb11
bb11:
  %t41 = load i64, ptr %l1, !tbaa !24
  %t42 = load i64, ptr %l5, !tbaa !24
  %t43 = load i64, ptr %l3, !tbaa !24
  %t46 = mul i64 %t42, %t43
  %t49 = add i64 %t41, %t46
  store i64 %t49, ptr %l6, !tbaa !24
  %t51 = load i64, ptr %l6, !tbaa !24
  %t53 = getelementptr [57 x { i64, ptr }], ptr @G_2estd_2ffilepath_2epartCases, i64 0, i64 %t51
  %t54 = load { i64, ptr }, ptr %t53, !tbaa !37
  store { i64, ptr } %t54, ptr %l7, !tbaa !27
  %t56 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t57 = load ptr, ptr @__olang_prog_scope
  %t58 = load ptr, ptr @__olang_prog_scope
  %t60 = call { i64, ptr } @std_2ffilepath_2eBase(ptr %t57, ptr %t58, { i64, ptr } %t56)
  store { i64, ptr } %t60, ptr %l38
  br label %bb12
bb12:
  %t61 = load i64, ptr %l6, !tbaa !24
  %t63 = add i64 %t61, 1
  %t65 = getelementptr [57 x { i64, ptr }], ptr @G_2estd_2ffilepath_2epartCases, i64 0, i64 %t63
  %t66 = load { i64, ptr }, ptr %t65, !tbaa !37
  %t67 = load ptr, ptr @__olang_prog_scope
  %t68 = load ptr, ptr @__olang_prog_scope
  %t69 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t71 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %t67, ptr %t68, { i64, ptr } %t69, { i64, ptr } %t66)
  store i1 %t71, ptr %l42
  br label %bb13
bb13:
  %t72 = load i1, ptr %l42, !tbaa !21
  %t73 = xor i1 %t72, true
  br i1 %t73, label %bb14, label %bb15
bb14:
  store %olang.scope zeroinitializer, ptr %s3
  store ptr %l0, ptr %l44, !tbaa !29
  %t75 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t75, ptr %l45, !tbaa !27
  %t76 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t77 = load ptr, ptr @__olang_prog_scope
  %t79 = call { i64, ptr } @std_2ffilepath_2eBase(ptr %t77, ptr %s3, { i64, ptr } %t76)
  store { i64, ptr } %t79, ptr %l47
  br label %bb16
bb15:
  br label %bb18
bb16:
  %t80 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t81 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  %t82 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t83 = extractvalue { i64, ptr } %t82, 1
  %t84 = extractvalue { i64, ptr } %t82, 0
  %t85 = add i64 %t81, %t84
  %t86 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t87 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t88 = add i64 %t85, %t87
  %t89 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t90 = extractvalue { i64, ptr } %t89, 1
  %t91 = extractvalue { i64, ptr } %t89, 0
  %t92 = add i64 %t88, %t91
  %t93 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t94 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  %t95 = add i64 %t92, %t94
  %t96 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t95)
  call void @olang_textcopy(ptr %t96, ptr %t80, i64 %t81)
  %t97 = getelementptr i8, ptr %t96, i64 %t81
  call void @olang_textcopy(ptr %t97, ptr %t83, i64 %t84)
  %t98 = getelementptr i8, ptr %t97, i64 %t84
  call void @olang_textcopy(ptr %t98, ptr %t86, i64 %t87)
  %t99 = getelementptr i8, ptr %t98, i64 %t87
  call void @olang_textcopy(ptr %t99, ptr %t90, i64 %t91)
  %t100 = getelementptr i8, ptr %t99, i64 %t91
  call void @olang_textcopy(ptr %t100, ptr %t93, i64 %t94)
  %t101 = insertvalue { i64, ptr } undef, i64 %t95, 0
  %t102 = insertvalue { i64, ptr } %t101, ptr %t96, 1
  %t104 = extractvalue { i64, ptr } %t102, 0
  %t105 = extractvalue { i64, ptr } %t102, 1
  %t106 = mul i64 %t104, 1
  %t107 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t106)
  call void @llvm.memcpy.p0.p0.i64(ptr %t107, ptr %t105, i64 %t106, i1 false)
  %t108 = insertvalue { i64, ptr } undef, i64 %t104, 0
  %t109 = insertvalue { i64, ptr } %t108, ptr %t107, 1
  %t110 = load ptr, ptr %l44, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s3, ptr %t110, { i64, ptr } %t109)
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s3)
  br label %bb18
bb18:
  %t112 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t113 = load ptr, ptr @__olang_prog_scope
  %t115 = call { i64, ptr } @std_2ffilepath_2eDir(ptr %t113, ptr %s2, { i64, ptr } %t112)
  store { i64, ptr } %t115, ptr %l51
  br label %bb19
bb19:
  %t116 = load i64, ptr %l6, !tbaa !24
  %t118 = add i64 %t116, 2
  %t120 = getelementptr [57 x { i64, ptr }], ptr @G_2estd_2ffilepath_2epartCases, i64 0, i64 %t118
  %t121 = load { i64, ptr }, ptr %t120, !tbaa !37
  %t122 = load ptr, ptr @__olang_prog_scope
  %t123 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t125 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %t122, { i64, ptr } %t123, { i64, ptr } %t121)
  store i1 %t125, ptr %l55
  br label %bb20
bb20:
  %t126 = load i1, ptr %l55, !tbaa !21
  %t127 = xor i1 %t126, true
  br i1 %t127, label %bb21, label %bb22
bb21:
  store %olang.scope zeroinitializer, ptr %s5
  store ptr %l0, ptr %l57, !tbaa !29
  %t129 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t129, ptr %l58, !tbaa !27
  %t130 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t131 = load ptr, ptr @__olang_prog_scope
  %t133 = call { i64, ptr } @std_2ffilepath_2eDir(ptr %t131, ptr %s5, { i64, ptr } %t130)
  store { i64, ptr } %t133, ptr %l60
  br label %bb23
bb22:
  br label %bb25
bb23:
  %t134 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t135 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  %t136 = load { i64, ptr }, ptr %l58, !tbaa !27
  %t137 = extractvalue { i64, ptr } %t136, 1
  %t138 = extractvalue { i64, ptr } %t136, 0
  %t139 = add i64 %t135, %t138
  %t140 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t141 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t142 = add i64 %t139, %t141
  %t143 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t144 = extractvalue { i64, ptr } %t143, 1
  %t145 = extractvalue { i64, ptr } %t143, 0
  %t146 = add i64 %t142, %t145
  %t147 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t148 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  %t149 = add i64 %t146, %t148
  %t150 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t149)
  call void @olang_textcopy(ptr %t150, ptr %t134, i64 %t135)
  %t151 = getelementptr i8, ptr %t150, i64 %t135
  call void @olang_textcopy(ptr %t151, ptr %t137, i64 %t138)
  %t152 = getelementptr i8, ptr %t151, i64 %t138
  call void @olang_textcopy(ptr %t152, ptr %t140, i64 %t141)
  %t153 = getelementptr i8, ptr %t152, i64 %t141
  call void @olang_textcopy(ptr %t153, ptr %t144, i64 %t145)
  %t154 = getelementptr i8, ptr %t153, i64 %t145
  call void @olang_textcopy(ptr %t154, ptr %t147, i64 %t148)
  %t155 = insertvalue { i64, ptr } undef, i64 %t149, 0
  %t156 = insertvalue { i64, ptr } %t155, ptr %t150, 1
  %t158 = extractvalue { i64, ptr } %t156, 0
  %t159 = extractvalue { i64, ptr } %t156, 1
  %t160 = mul i64 %t158, 1
  %t161 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t160)
  call void @llvm.memcpy.p0.p0.i64(ptr %t161, ptr %t159, i64 %t160, i1 false)
  %t162 = insertvalue { i64, ptr } undef, i64 %t158, 0
  %t163 = insertvalue { i64, ptr } %t162, ptr %t161, 1
  %t164 = load ptr, ptr %l57, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s5, ptr %t164, { i64, ptr } %t163)
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s5)
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s2)
  br label %bb26
bb26:
  %t166 = load i64, ptr %l5, !tbaa !24
  %t168 = add i64 %t166, 1
  store i64 %t168, ptr %l5, !tbaa !24
  br label %bb8
bb27:
  %t171 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v0, ptr %l0)
  store { i64, ptr } %t171, ptr %l66
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s0)
  %t172 = load { i64, ptr }, ptr %l66, !tbaa !27
  store { i64, ptr } %t172, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @std_2ffilepath_2erelMisses(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/text:StringBuilder"
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca %"std/prelude/text:StringBuilder"
  %l9 = alloca [117 x { i64, ptr }]
  %l14 = alloca i64
  %l17 = alloca i64
  %l35 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  %l42 = alloca i32
  %l43 = alloca { i64, ptr }
  %l45 = alloca i64
  %l46 = alloca { i64, ptr }
  %l51 = alloca i1
  %l65 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca { i64, ptr }
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
  store %"std/prelude/text:StringBuilder" %t2, ptr %l0
  store i64 0, ptr %l1, !tbaa !24
  call void @llvm.memmove.p0.p0.i64(ptr %l9, ptr @G_2estd_2ffilepath_2erelCases, i64 1872, i1 false)
  %t3 = load [117 x { i64, ptr }], ptr %l9
  store i64 117, ptr %l2, !tbaa !24
  store i64 3, ptr %l3, !tbaa !24
  %t5 = load i64, ptr %l2, !tbaa !24
  %t6 = load i64, ptr %l1, !tbaa !24
  %t9 = icmp sgt i64 %t5, %t6
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load i64, ptr %l3, !tbaa !24
  %t13 = icmp sgt i64 %t11, 0
  br i1 %t13, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l14, !tbaa !24
  br label %bb7
bb4:
  %t15 = load i64, ptr %l2, !tbaa !24
  %t16 = load i64, ptr %l1, !tbaa !24
  %t19 = sub i64 %t15, %t16
  %t20 = load i64, ptr %l3, !tbaa !24
  %t23 = add i64 %t19, %t20
  %t25 = sub i64 %t23, 1
  %t26 = load i64, ptr %l3, !tbaa !24
  %t29 = sdiv i64 %t25, %t26
  store i64 %t29, ptr %l17, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb6
bb6:
  %t31 = load i64, ptr %l17, !tbaa !24
  store i64 %t31, ptr %l14, !tbaa !24
  br label %bb7
bb7:
  %t32 = load i64, ptr %l14, !tbaa !24
  store i64 %t32, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t33 = load i64, ptr %l5, !tbaa !24
  %t34 = load i64, ptr %l4, !tbaa !24
  %t37 = icmp slt i64 %t33, %t34
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb22
bb10:
  br label %bb11
bb11:
  %t41 = load i64, ptr %l1, !tbaa !24
  %t42 = load i64, ptr %l5, !tbaa !24
  %t43 = load i64, ptr %l3, !tbaa !24
  %t46 = mul i64 %t42, %t43
  %t49 = add i64 %t41, %t46
  store i64 %t49, ptr %l6, !tbaa !24
  %t51 = load i64, ptr %l6, !tbaa !24
  %t53 = getelementptr [117 x { i64, ptr }], ptr @G_2estd_2ffilepath_2erelCases, i64 0, i64 %t51
  %t54 = load { i64, ptr }, ptr %t53, !tbaa !37
  %t55 = load i64, ptr %l6, !tbaa !24
  %t57 = add i64 %t55, 1
  %t59 = getelementptr [117 x { i64, ptr }], ptr @G_2estd_2ffilepath_2erelCases, i64 0, i64 %t57
  %t60 = load { i64, ptr }, ptr %t59, !tbaa !37
  %t61 = load ptr, ptr @__olang_prog_scope
  %t62 = load ptr, ptr @__olang_prog_scope
  %t65 = call { i32, { i64, ptr } } @std_2ffilepath_2eRel(ptr %t61, ptr %t62, ptr %s2, { i64, ptr } %t54, { i64, ptr } %t60)
  %t66 = extractvalue { i32, { i64, ptr } } %t65, 1
  %t67 = extractvalue { i32, { i64, ptr } } %t65, 0
  store i32 %t67, ptr %l42
  %t68 = icmp ne i32 %t67, 0
  br i1 %t68, label %bb13, label %ok.69, !prof !99
ok.69:
  store { i64, ptr } %t66, ptr %l41
  br label %bb12
bb12:
  %t70 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t70, ptr %l35, !tbaa !27
  br label %bb15
bb13:
  br label %bb14
bb14:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d20, i32 0, i32 1) }, ptr %l43, !tbaa !27
  %t71 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t71, ptr %l35, !tbaa !27
  br label %bb15
bb15:
  %t73 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t74 = extractvalue { i64, ptr } %t73, 0
  store i64 %t74, ptr %l45, !tbaa !24
  %t75 = load i64, ptr %l45, !tbaa !24
  %t76 = mul i64 %t75, 1
  %t77 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t76)
  %t78 = insertvalue { i64, ptr } undef, i64 %t75, 0
  %t79 = insertvalue { i64, ptr } %t78, ptr %t77, 1
  store { i64, ptr } %t79, ptr %l46, !tbaa !27
  %t80 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !27
  %t82 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !27
  %t84 = load i64, ptr %l45, !tbaa !24
  %t85 = mul i64 %t84, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t81, ptr %t83, i64 %t85, i1 false)
  %t86 = load { i64, ptr }, ptr %l46, !tbaa !27
  store { i64, ptr } %t86, ptr %l7, !tbaa !27
  %t87 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t88 = load i64, ptr %l6, !tbaa !24
  %t90 = add i64 %t88, 2
  %t92 = getelementptr [117 x { i64, ptr }], ptr @G_2estd_2ffilepath_2erelCases, i64 0, i64 %t90
  %t93 = load { i64, ptr }, ptr %t92, !tbaa !37
  %t94 = load ptr, ptr @__olang_prog_scope
  %t97 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %t94, { i64, ptr } %t87, { i64, ptr } %t93)
  store i1 %t97, ptr %l51
  br label %bb16
bb16:
  %t98 = load i1, ptr %l51, !tbaa !21
  %t99 = xor i1 %t98, true
  br i1 %t99, label %bb17, label %bb18
bb17:
  store %olang.scope zeroinitializer, ptr %s3
  %t101 = load i64, ptr %l6, !tbaa !24
  %t103 = getelementptr [117 x { i64, ptr }], ptr @G_2estd_2ffilepath_2erelCases, i64 0, i64 %t101
  %t104 = load { i64, ptr }, ptr %t103, !tbaa !37
  %t105 = load i64, ptr %l6, !tbaa !24
  %t107 = add i64 %t105, 1
  %t109 = getelementptr [117 x { i64, ptr }], ptr @G_2estd_2ffilepath_2erelCases, i64 0, i64 %t107
  %t110 = load { i64, ptr }, ptr %t109, !tbaa !37
  %t111 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t112 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t113 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  %t115 = extractvalue { i64, ptr } %t104, 1
  %t116 = extractvalue { i64, ptr } %t104, 0
  %t117 = add i64 %t113, %t116
  %t118 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t119 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  %t120 = add i64 %t117, %t119
  %t122 = extractvalue { i64, ptr } %t110, 1
  %t123 = extractvalue { i64, ptr } %t110, 0
  %t124 = add i64 %t120, %t123
  %t125 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d23, i32 0, i32 1) }, 1
  %t126 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d23, i32 0, i32 1) }, 0
  %t127 = add i64 %t124, %t126
  %t129 = extractvalue { i64, ptr } %t111, 1
  %t130 = extractvalue { i64, ptr } %t111, 0
  %t131 = add i64 %t127, %t130
  %t132 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d24, i32 0, i32 1) }, 1
  %t133 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d24, i32 0, i32 1) }, 0
  %t134 = add i64 %t131, %t133
  %t135 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t134)
  call void @olang_textcopy(ptr %t135, ptr %t112, i64 %t113)
  %t136 = getelementptr i8, ptr %t135, i64 %t113
  call void @olang_textcopy(ptr %t136, ptr %t115, i64 %t116)
  %t137 = getelementptr i8, ptr %t136, i64 %t116
  call void @olang_textcopy(ptr %t137, ptr %t118, i64 %t119)
  %t138 = getelementptr i8, ptr %t137, i64 %t119
  call void @olang_textcopy(ptr %t138, ptr %t122, i64 %t123)
  %t139 = getelementptr i8, ptr %t138, i64 %t123
  call void @olang_textcopy(ptr %t139, ptr %t125, i64 %t126)
  %t140 = getelementptr i8, ptr %t139, i64 %t126
  call void @olang_textcopy(ptr %t140, ptr %t129, i64 %t130)
  %t141 = getelementptr i8, ptr %t140, i64 %t130
  call void @olang_textcopy(ptr %t141, ptr %t132, i64 %t133)
  %t142 = insertvalue { i64, ptr } undef, i64 %t134, 0
  %t143 = insertvalue { i64, ptr } %t142, ptr %t135, 1
  %t145 = extractvalue { i64, ptr } %t143, 0
  %t146 = extractvalue { i64, ptr } %t143, 1
  %t147 = mul i64 %t145, 1
  %t148 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t147)
  call void @llvm.memcpy.p0.p0.i64(ptr %t148, ptr %t146, i64 %t147, i1 false)
  %t149 = insertvalue { i64, ptr } undef, i64 %t145, 0
  %t150 = insertvalue { i64, ptr } %t149, ptr %t148, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s3, ptr %l0, { i64, ptr } %t150)
  br label %bb19
bb18:
  br label %bb20
bb19:
  call void @__olang_scope_close(ptr %s3)
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s2)
  br label %bb21
bb21:
  %t153 = load i64, ptr %l5, !tbaa !24
  %t155 = add i64 %t153, 1
  store i64 %t155, ptr %l5, !tbaa !24
  br label %bb8
bb22:
  %t158 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v0, ptr %l0)
  store { i64, ptr } %t158, ptr %l65
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s0)
  %t159 = load { i64, ptr }, ptr %l65, !tbaa !27
  store { i64, ptr } %t159, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

@.d0 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
declare void @__olang_check_failed(ptr) cold noreturn
@.d1 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
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
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@.d2 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
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
@.d3 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d4 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d5 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d6 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d7 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".." }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d8 = private constant <{ i64, [61 x i8] }> <{ i64 0, [61 x i8] c"-------------------------------------------------------------" }>, align 8
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
@__olang_prog_scope = external thread_local(initialexec) global ptr
@.d9 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" -> " }>, align 8
@.d10 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"; " }>, align 8
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@.d11 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c" again -> " }>, align 8
@.d12 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"; " }>, align 8
@.d13 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"x//y/./z/../w/" }>, align 8
@.d14 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Base(" }>, align 8
@.d15 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c") = " }>, align 8
@.d16 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"; " }>, align 8
@.d17 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Dir(" }>, align 8
@.d18 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c") = " }>, align 8
@.d19 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"; " }>, align 8
@.d20 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"!" }>, align 8
@.d21 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Rel(" }>, align 8
@.d22 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d23 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c") = " }>, align 8
@.d24 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"; " }>, align 8
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
@olang_loc_8ad80b95f11637d2_e96efe0cac33c966 = external constant [0 x i8]
@olang_loc_b73a8112ea9a7cf_d6bea0aa8f8736c3 = external constant [0 x i8]
@olang_loc_71a6929ab52159a_17fdf02a3251bece = external constant [0 x i8]
@olang_loc_a602995b964ddbcf_b078a441454e17cb = external constant [0 x i8]
@olang_loc_a7ca1e4a4409b00c_ac64874c39ec6a0 = external constant [0 x i8]
@olang_loc_5863906a03a0a60_f582400c809d7edc = external constant [0 x i8]
@olang_loc_e2acb5ec38c923e0_e54a547ca8982b04 = external constant [0 x i8]
@olang_loc_88514958f43ac5a5_71c1ca98982dfa9 = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_d061c7e25d631130_ed41ebaf937312b4 = external constant [0 x i8]
@olang_loc_668000db62bcfe0d_fbc758d8da0c96a1 = external constant [0 x i8]
@olang_loc_25fb20074e4b49ae_c59224b0534d5022 = external constant [0 x i8]
@olang_loc_3fc5cad3648832ab_e217ea960297dd9f = external constant [0 x i8]
@olang_loc_6975e58e775568a4_668b7bdd2238b9c0 = external constant [0 x i8]
@olang_loc_1fc14433466d7ed9_4c0c0b85aca7f45d = external constant [0 x i8]
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)

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
