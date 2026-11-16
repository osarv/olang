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
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/lsp:Server" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"compiler/lsp:Worker", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i1 }
%"compiler/lsp:Worker" = type { i32, i32, ptr, i64 }
%"compiler/session:Reader" = type { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"std/os:Output" = type { i32, { i64, ptr }, { i64, ptr } }
%"std/prelude/text:LineIter" = type { { i64, ptr }, i64 }
%"compiler/lsp:Doc" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/text:StringBuilder", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/lsp:worker" = type { ptr, ptr, i32, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/session:Positions" = type { { i64, ptr }, i1, { i64, ptr } }
%"compiler/session:Found" = type { { i64, ptr }, { i64, ptr }, i64 }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/diag:Diagnostics" = type { i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, [3 x i64] }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/session:Analysis" = type { ptr, { i64, ptr }, ptr, ptr, ptr }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/session:Items" = type { %"std/prelude/text:StringBuilder", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" = type { ptr, i64 }
%"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15" = type { { i64, ptr }, { i64, ptr } }
%"compiler/session:Use" = type { i64, i64, { i64, ptr } }
%"compiler/diag:Item" = type { i1, { i64, ptr }, i64, i64, i64, i64, { i64, ptr }, i1 }
@G_2ecompiler_2flsp_2eDeprecatedSrc = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\7F\00\00\00\00\00\00\00", ptr @G_2ecompiler_2flsp_2eDeprecatedSrc.k1 }>, align 8
@G_2ecompiler_2flsp_2eDeprecatedSrc.k1 = internal constant <{ [127 x i8] }> <{ [127 x i8] c"\23\20\44\65\70\72\65\63\61\74\65\64\3A\20\75\73\65\20\4E\65\77\0A\66\6E\20\4F\6C\64\28\29\20\49\36\34\20\7B\20\72\65\74\75\72\6E\20\31\20\7D\0A\66\6E\20\4E\65\77\28\29\20\49\36\34\20\7B\20\72\65\74\75\72\6E\20\32\20\7D\0A\66\6E\20\6D\61\69\6E\28\29\20\7B\0A\20\20\20\20\78\20\3A\3D\20\4F\6C\64\28\29\20\2B\20\4E\65\77\28\29\0A\20\20\20\20\61\73\73\65\72\74\20\78\20\3E\20\30\0A\7D" }>, align 64
@G_2ecompiler_2flsp_2eExamplesSrc = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\A9\00\00\00\00\00\00\00", ptr @G_2ecompiler_2flsp_2eExamplesSrc.k1 }>, align 8
@G_2ecompiler_2flsp_2eExamplesSrc.k1 = internal constant <{ [169 x i8] }> <{ [169 x i8] c"\66\6E\20\54\77\69\63\65\28\6E\20\49\36\34\29\20\49\36\34\20\7B\20\72\65\74\75\72\6E\20\6E\20\2A\20\32\20\7D\0A\74\65\73\74\20\54\77\69\63\65\20\22\64\6F\75\62\6C\65\73\22\20\7B\20\61\73\73\65\72\74\20\54\77\69\63\65\28\32\29\20\3D\3D\20\34\20\7D\0A\74\65\73\74\20\54\77\69\63\65\20\22\64\6F\75\62\6C\65\73\20\61\20\6E\65\67\61\74\69\76\65\22\20\7B\20\61\73\73\65\72\74\20\54\77\69\63\65\28\2D\33\29\20\3D\3D\20\2D\36\20\7D\0A\66\6E\20\6D\61\69\6E\28\29\20\7B\20\78\20\3A\3D\20\54\77\69\63\65\28\31\29\20\7D" }>, align 64
@G_2ecompiler_2flsp_2eFitsSrc = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\82\00\00\00\00\00\00\00", ptr @G_2ecompiler_2flsp_2eFitsSrc.k1 }>, align 8
@G_2ecompiler_2flsp_2eFitsSrc.k1 = internal constant <{ [130 x i8] }> <{ [130 x i8] c"\74\79\70\65\20\4E\20\73\74\72\75\63\74\28\76\20\49\36\34\29\20\7B\20\76\20\7D\0A\66\6E\20\6C\69\6E\6B\28\61\20\6D\75\74\20\4E\26\2C\20\62\20\4E\26\29\20\7B\20\61\2E\76\20\3D\20\62\2E\76\20\7D\0A\66\6E\20\6D\61\69\6E\28\29\20\7B\0A\20\20\20\20\6E\20\3A\3D\20\4E\28\31\29\0A\20\20\20\20\6C\69\6E\6B\28\6E\2C\20\4E\28\32\29\29\0A\20\20\20\20\61\73\73\65\72\74\20\6E\2E\76\20\3D\3D\20\32\0A\7D" }>, align 64
@G_2ecompiler_2flsp_2eRequests = constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\12\00\00\00\00\00\00\00", ptr @G_2ecompiler_2flsp_2eRequests.k1, [8 x i8] c"\17\00\00\00\00\00\00\00", ptr @G_2ecompiler_2flsp_2eRequests.k2, [8 x i8] c"\1B\00\00\00\00\00\00\00", ptr @G_2ecompiler_2flsp_2eRequests.k3, [8 x i8] c"\17\00\00\00\00\00\00\00", ptr @G_2ecompiler_2flsp_2eRequests.k4, [8 x i8] c"\17\00\00\00\00\00\00\00", ptr @G_2ecompiler_2flsp_2eRequests.k5 }>, align 64
@G_2ecompiler_2flsp_2eRequests.k1 = internal constant <{ [18 x i8] }> <{ [18 x i8] c"\74\65\78\74\44\6F\63\75\6D\65\6E\74\2F\68\6F\76\65\72" }>, align 8
@G_2ecompiler_2flsp_2eRequests.k2 = internal constant <{ [23 x i8] }> <{ [23 x i8] c"\74\65\78\74\44\6F\63\75\6D\65\6E\74\2F\64\65\66\69\6E\69\74\69\6F\6E" }>, align 8
@G_2ecompiler_2flsp_2eRequests.k3 = internal constant <{ [27 x i8] }> <{ [27 x i8] c"\74\65\78\74\44\6F\63\75\6D\65\6E\74\2F\64\6F\63\75\6D\65\6E\74\53\79\6D\62\6F\6C" }>, align 8
@G_2ecompiler_2flsp_2eRequests.k4 = internal constant <{ [23 x i8] }> <{ [23 x i8] c"\74\65\78\74\44\6F\63\75\6D\65\6E\74\2F\63\6F\6D\70\6C\65\74\69\6F\6E" }>, align 8
@G_2ecompiler_2flsp_2eRequests.k5 = internal constant <{ [23 x i8] }> <{ [23 x i8] c"\74\65\78\74\44\6F\63\75\6D\65\6E\74\2F\66\6F\72\6D\61\74\74\69\6E\67" }>, align 8
@G_2ecompiler_2flsp_2eSessionSrc = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\F4\00\00\00\00\00\00\00", ptr @G_2ecompiler_2flsp_2eSessionSrc.k1 }>, align 8
@G_2ecompiler_2flsp_2eSessionSrc.k1 = internal constant <{ [244 x i8] }> <{ [244 x i8] c"\69\6D\70\6F\72\74\20\22\73\74\64\2F\69\6F\22\0A\0A\23\20\61\20\70\6F\69\6E\74\20\6F\6E\20\61\20\70\6C\61\6E\65\0A\74\79\70\65\20\50\6F\69\6E\74\20\73\74\72\75\63\74\28\58\20\49\36\34\2C\20\59\20\49\36\34\29\20\7B\0A\20\20\20\20\58\0A\20\20\20\20\59\0A\7D\0A\0A\23\20\74\68\65\20\73\75\6D\20\6F\66\20\61\20\70\6F\69\6E\74\27\73\20\63\6F\6F\72\64\69\6E\61\74\65\73\0A\66\6E\20\73\75\6D\28\70\20\50\6F\69\6E\74\29\20\49\36\34\20\7B\0A\20\20\20\20\72\65\74\75\72\6E\20\70\2E\58\2B\70\2E\59\0A\7D\0A\0A\66\6E\20\6D\61\69\6E\28\29\20\7B\0A\20\20\20\20\71\20\3A\3D\20\50\6F\69\6E\74\28\31\2C\20\32\29\0A\20\20\20\20\69\6F\2E\50\75\74\4C\69\6E\65\28\24\73\75\6D\28\71\29\29\21\0A\20\20\20\20\62\61\64\20\49\33\32\20\3D\20\22\78\22\0A\7D\0A" }>, align 64
@G_2ecompiler_2flsp_2eSettleNs = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\5A\62\02\00\00\00\00" }>, align 8
@G_2ecompiler_2flsp_2eStepLibs = constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\D7\00\00\00\00\00\00\00", ptr @G_2ecompiler_2flsp_2eStepLibs.k1, [8 x i8] c"\F6\00\00\00\00\00\00\00", ptr @G_2ecompiler_2flsp_2eStepLibs.k2, [8 x i8] c"\D7\00\00\00\00\00\00\00", ptr @G_2ecompiler_2flsp_2eStepLibs.k3, [8 x i8] c"\8F\00\00\00\00\00\00\00", ptr @G_2ecompiler_2flsp_2eStepLibs.k4, [8 x i8] c"\E9\00\00\00\00\00\00\00", ptr @G_2ecompiler_2flsp_2eStepLibs.k5, [8 x i8] c"\D7\00\00\00\00\00\00\00", ptr @G_2ecompiler_2flsp_2eStepLibs.k6 }>, align 64
@G_2ecompiler_2flsp_2eStepLibs.k1 = internal constant <{ [215 x i8] }> <{ [215 x i8] c"\69\6D\70\6F\72\74\20\22\73\74\64\2F\6C\69\73\74\22\0A\0A\66\6E\20\4B\65\65\70\28\61\20\6D\75\74\20\56\65\63\3C\53\74\72\69\6E\67\26\3E\26\2C\20\73\20\53\74\72\69\6E\67\26\29\20\7B\20\61\2E\50\75\73\68\28\73\29\20\7D\0A\0A\66\6E\20\43\6F\75\6E\74\28\61\20\56\65\63\3C\53\74\72\69\6E\67\26\3E\26\29\20\49\36\34\20\7B\20\72\65\74\75\72\6E\20\61\2E\4C\65\6E\28\29\20\7D\0A\0A\66\6E\20\66\28\6F\6B\20\6C\69\73\74\2E\4C\69\73\74\3C\49\36\34\3E\26\29\20\49\36\34\20\7B\0A\20\20\20\20\61\20\3A\3D\20\6C\69\73\74\2E\4C\69\73\74\2E\46\72\6F\6D\49\74\65\72\28\6F\6B\2E\49\74\65\72\28\29\29\0A\20\20\20\20\72\65\74\75\72\6E\20\61\2E\4C\65\6E\28\29\0A\7D\0A" }>, align 64
@G_2ecompiler_2flsp_2eStepLibs.k2 = internal constant <{ [246 x i8] }> <{ [246 x i8] c"\69\6D\70\6F\72\74\20\22\73\74\64\2F\6C\69\73\74\22\0A\0A\66\6E\20\4B\65\65\70\28\61\20\6D\75\74\20\56\65\63\3C\53\74\72\69\6E\67\26\3E\26\2C\20\73\20\53\74\72\69\6E\67\26\29\20\7B\20\61\2E\50\75\73\68\28\73\29\20\7D\0A\0A\66\6E\20\43\6F\75\6E\74\28\61\20\56\65\63\3C\53\74\72\69\6E\67\26\3E\26\29\20\49\36\34\20\7B\20\72\65\74\75\72\6E\20\61\2E\4C\65\6E\28\29\20\7D\0A\0A\66\6E\20\66\28\72\6F\20\6C\69\73\74\2E\4C\69\73\74\3C\6C\69\73\74\2E\4C\69\73\74\3C\49\36\34\3E\3E\26\2C\20\6F\6B\20\6C\69\73\74\2E\4C\69\73\74\3C\49\36\34\3E\26\29\20\49\36\34\20\7B\0A\20\20\20\20\63\20\3A\3D\20\6C\69\73\74\2E\4C\69\73\74\2E\46\72\6F\6D\49\74\65\72\28\72\6F\2E\49\74\65\72\28\29\29\0A\20\20\20\20\72\65\74\75\72\6E\20\63\2E\4C\65\6E\28\29\0A\7D\0A" }>, align 64
@G_2ecompiler_2flsp_2eStepLibs.k3 = internal constant <{ [215 x i8] }> <{ [215 x i8] c"\69\6D\70\6F\72\74\20\22\73\74\64\2F\6C\69\73\74\22\0A\0A\66\6E\20\4B\65\65\70\28\61\20\6D\75\74\20\56\65\63\3C\53\74\72\69\6E\67\26\3E\26\2C\20\73\20\53\74\72\69\6E\67\26\29\20\7B\20\61\2E\50\75\73\68\28\73\29\20\7D\0A\0A\66\6E\20\43\6F\75\6E\74\28\61\20\56\65\63\3C\53\74\72\69\6E\67\26\3E\26\29\20\49\36\34\20\7B\20\72\65\74\75\72\6E\20\61\2E\4C\65\6E\28\29\20\7D\0A\0A\66\6E\20\66\28\6F\6B\20\6C\69\73\74\2E\4C\69\73\74\3C\49\36\34\3E\26\29\20\49\36\34\20\7B\0A\20\20\20\20\61\20\3A\3D\20\6C\69\73\74\2E\4C\69\73\74\2E\46\72\6F\6D\49\74\65\72\28\6F\6B\2E\49\74\65\72\28\29\29\0A\20\20\20\20\72\65\74\75\72\6E\20\61\2E\4C\65\6E\28\29\0A\7D\0A" }>, align 64
@G_2ecompiler_2flsp_2eStepLibs.k4 = internal constant <{ [143 x i8] }> <{ [143 x i8] c"\69\6D\70\6F\72\74\20\22\73\74\64\2F\6C\69\73\74\22\0A\0A\66\6E\20\4B\65\65\70\28\61\20\6D\75\74\20\56\65\63\3C\53\74\72\69\6E\67\26\3E\26\2C\20\73\20\53\74\72\69\6E\67\26\29\20\7B\20\61\2E\50\75\73\68\28\73\29\20\7D\0A\0A\66\6E\20\43\6F\75\6E\74\28\61\20\56\65\63\3C\53\74\72\69\6E\67\26\3E\26\29\20\49\36\34\20\7B\0A\20\20\20\20\78\20\49\33\32\20\3D\20\22\73\22\0A\20\20\20\20\72\65\74\75\72\6E\20\61\2E\4C\65\6E\28\29\0A\7D\0A" }>, align 64
@G_2ecompiler_2flsp_2eStepLibs.k5 = internal constant <{ [233 x i8] }> <{ [233 x i8] c"\69\6D\70\6F\72\74\20\22\73\74\64\2F\6C\69\73\74\22\0A\0A\66\6E\20\4B\65\65\70\28\61\20\6D\75\74\20\56\65\63\3C\53\74\72\69\6E\67\26\3E\26\2C\20\73\20\53\74\72\69\6E\67\26\29\20\7B\0A\20\20\20\20\61\2E\50\75\73\68\28\73\29\0A\20\20\20\20\61\2E\50\75\73\68\28\73\29\0A\7D\0A\0A\66\6E\20\43\6F\75\6E\74\28\61\20\56\65\63\3C\53\74\72\69\6E\67\26\3E\26\29\20\49\36\34\20\7B\20\72\65\74\75\72\6E\20\61\2E\4C\65\6E\28\29\20\7D\0A\0A\66\6E\20\66\28\6F\6B\20\6C\69\73\74\2E\4C\69\73\74\3C\49\36\34\3E\26\29\20\49\36\34\20\7B\0A\20\20\20\20\61\20\3A\3D\20\6C\69\73\74\2E\4C\69\73\74\2E\46\72\6F\6D\49\74\65\72\28\6F\6B\2E\49\74\65\72\28\29\29\0A\20\20\20\20\72\65\74\75\72\6E\20\61\2E\4C\65\6E\28\29\0A\7D\0A" }>, align 64
@G_2ecompiler_2flsp_2eStepLibs.k6 = internal constant <{ [215 x i8] }> <{ [215 x i8] c"\69\6D\70\6F\72\74\20\22\73\74\64\2F\6C\69\73\74\22\0A\0A\66\6E\20\4B\65\65\70\28\61\20\6D\75\74\20\56\65\63\3C\53\74\72\69\6E\67\26\3E\26\2C\20\73\20\53\74\72\69\6E\67\26\29\20\7B\20\61\2E\50\75\73\68\28\73\29\20\7D\0A\0A\66\6E\20\43\6F\75\6E\74\28\61\20\56\65\63\3C\53\74\72\69\6E\67\26\3E\26\29\20\49\36\34\20\7B\20\72\65\74\75\72\6E\20\61\2E\4C\65\6E\28\29\20\7D\0A\0A\66\6E\20\66\28\6F\6B\20\6C\69\73\74\2E\4C\69\73\74\3C\49\36\34\3E\26\29\20\49\36\34\20\7B\0A\20\20\20\20\61\20\3A\3D\20\6C\69\73\74\2E\4C\69\73\74\2E\46\72\6F\6D\49\74\65\72\28\6F\6B\2E\49\74\65\72\28\29\29\0A\20\20\20\20\72\65\74\75\72\6E\20\61\2E\4C\65\6E\28\29\0A\7D\0A" }>, align 64
@G_2ecompiler_2flsp_2eStepMain = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\60\00\00\00\00\00\00\00", ptr @G_2ecompiler_2flsp_2eStepMain.k1 }>, align 8
@G_2ecompiler_2flsp_2eStepMain.k1 = internal constant <{ [96 x i8] }> <{ [96 x i8] c"\69\6D\70\6F\72\74\20\22\6C\69\62\22\0A\0A\66\6E\20\6D\61\69\6E\28\29\20\7B\0A\20\20\20\20\61\20\56\65\63\3C\53\74\72\69\6E\67\26\3E\0A\20\20\20\20\6C\69\62\2E\4B\65\65\70\28\61\2C\20\22\6B\22\29\0A\20\20\20\20\61\73\73\65\72\74\20\6C\69\62\2E\43\6F\75\6E\74\28\61\29\20\3E\20\30\0A\7D\0A" }>, align 64
@G_2ecompiler_2flsp_2eStuckNs = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\58\47\F8\0D\00\00\00" }>, align 8
define dso_local { i64, ptr } @compiler_2flsp_2ePathOf(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca i64
  %l4 = alloca i64
  %l6 = alloca i1
  %l10 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l19 = alloca %"std/prelude/text:StringBuilder"
  %l25 = alloca { i64, ptr }
  %l29 = alloca i1
  %l35 = alloca i64
  %l36 = alloca { i64, ptr }
  %l38 = alloca i64
  %l40 = alloca i64
  %l41 = alloca i64
  %l45 = alloca { i64, ptr }
  %l46 = alloca i64
  %l47 = alloca i32
  %l48 = alloca i64
  %l49 = alloca i32
  %l58 = alloca { i64, ptr }
  %l64 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d0, i32 0, i32 1) })
  store i1 %t3, ptr %l6
  br label %bb1
bb1:
  %t4 = load i1, ptr %l6, !tbaa !21
  %t5 = xor i1 %t4, true
  br i1 %t5, label %bb2, label %bb3
bb2:
  %t7 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 1
  %t10 = extractvalue { i64, ptr } %t7, 0
  %t11 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t10)
  call void @olang_textcopy(ptr %t11, ptr %t9, i64 %t10)
  %t12 = insertvalue { i64, ptr } undef, i64 %t10, 0
  %t13 = insertvalue { i64, ptr } %t12, ptr %t11, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t13, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t15, ptr %l10, !tbaa !27
  %t16 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t16, 0
  store i64 %t19, ptr %l13, !tbaa !24
  %t20 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t20, 0
  store i64 %t21, ptr %l14, !tbaa !24
  %t22 = icmp sge i64 7, 0
  br i1 %t22, label %bb5, label %bb6
bb5:
  %t24 = load i64, ptr %l13, !tbaa !24
  %t25 = icmp sle i64 7, %t24
  br i1 %t25, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_6756d46c47226ab9_ec8477bb3ab165)
  unreachable
bb7:
  %t27 = load i64, ptr %l13, !tbaa !24
  %t28 = load i64, ptr %l14, !tbaa !24
  %t29 = icmp sle i64 %t27, %t28
  br i1 %t29, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_6756d46c47226ab9_ec8477bb3ab165)
  unreachable
bb9:
  %t31 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = load i64, ptr %l13, !tbaa !24
  %t34 = getelementptr i8, ptr %t32, i64 7
  %t35 = sub i64 %t33, 7
  %t36 = insertvalue { i64, ptr } undef, i64 %t35, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t34, 1
  store { i64, ptr } %t37, ptr %l1, !tbaa !27
  %t39 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t39, ptr %l19
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_6756d46c47226ab9_ec8477bb3ab165)
  unreachable
bb11:
  %t40 = load %"std/prelude/text:StringBuilder", ptr %l19
  store %"std/prelude/text:StringBuilder" %t40, ptr %l2
  store i64 0, ptr %l3, !tbaa !24
  br label %bb12
bb12:
  %t41 = load i64, ptr %l3, !tbaa !24
  %t42 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t44 = extractvalue { i64, ptr } %t42, 0
  %t47 = icmp slt i64 %t41, %t44
  %t49 = xor i1 %t47, true
  br i1 %t49, label %bb13, label %bb14
bb13:
  br label %bb40
bb14:
  br label %bb15
bb15:
  %t51 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t51, ptr %l25, !tbaa !27
  %t52 = load i64, ptr %l3, !tbaa !24
  %t54 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr i8, ptr %t55, i64 %t52
  %t57 = load i8, ptr %t56, !tbaa !32
  %t59 = icmp eq i8 %t57, 37
  br i1 %t59, label %bb16, label %bb17
bb16:
  %t61 = load i64, ptr %l3, !tbaa !24
  %t63 = add i64 %t61, 2
  %t64 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t66 = extractvalue { i64, ptr } %t64, 0
  %t69 = icmp slt i64 %t63, %t66
  store i1 %t69, ptr %l29, !tbaa !21
  br label %bb18
bb17:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb18
bb18:
  %t71 = load i1, ptr %l29, !tbaa !21
  br i1 %t71, label %bb19, label %bb20
bb19:
  store %olang.scope zeroinitializer, ptr %s4
  %t72 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t72, ptr %l36, !tbaa !27
  %t73 = load i64, ptr %l3, !tbaa !24
  %t75 = add i64 %t73, 1
  store i64 %t75, ptr %l38, !tbaa !24
  %t76 = load i64, ptr %l3, !tbaa !24
  %t78 = add i64 %t76, 3
  store i64 %t78, ptr %l40, !tbaa !24
  %t79 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t80 = extractvalue { i64, ptr } %t79, 0
  store i64 %t80, ptr %l41, !tbaa !24
  %t81 = load i64, ptr %l38, !tbaa !24
  %t82 = icmp sge i64 %t81, 0
  br i1 %t82, label %bb21, label %bb22
bb20:
  br label %bb37
bb21:
  %t84 = load i64, ptr %l38, !tbaa !24
  %t85 = load i64, ptr %l40, !tbaa !24
  %t86 = icmp sle i64 %t84, %t85
  br i1 %t86, label %bb23, label %bb24
bb22:
  call void @__olang_check_failed(ptr @olang_loc_78ef8a2f2ef3c68c_b23277b974982b08)
  unreachable
bb23:
  %t88 = load i64, ptr %l40, !tbaa !24
  %t89 = load i64, ptr %l41, !tbaa !24
  %t90 = icmp sle i64 %t88, %t89
  br i1 %t90, label %bb25, label %bb26
bb24:
  call void @__olang_check_failed(ptr @olang_loc_78ef8a2f2ef3c68c_b23277b974982b08)
  unreachable
bb25:
  %t92 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t93 = load ptr, ptr %t92, !tbaa !27
  %t94 = load i64, ptr %l38, !tbaa !24
  %t95 = load i64, ptr %l40, !tbaa !24
  %t96 = getelementptr i8, ptr %t93, i64 %t94
  %t97 = sub i64 %t95, %t94
  %t98 = insertvalue { i64, ptr } undef, i64 %t97, 0
  %t99 = insertvalue { i64, ptr } %t98, ptr %t96, 1
  store { i64, ptr } %t99, ptr %l45, !tbaa !27
  %t100 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s4, i64 16)
  %t101 = extractvalue { i32, i64 } %t100, 1
  %t102 = extractvalue { i32, i64 } %t100, 0
  store i32 %t102, ptr %l47
  %t103 = icmp ne i32 %t102, 0
  br i1 %t103, label %bb28, label %ok.104, !prof !99
ok.104:
  store i64 %t101, ptr %l46
  br label %bb27
bb26:
  call void @__olang_check_failed(ptr @olang_loc_78ef8a2f2ef3c68c_b23277b974982b08)
  unreachable
bb27:
  %t105 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t106 = load i64, ptr %l46, !tbaa !24
  %t107 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v0, { i64, ptr } %t105, i64 %t106)
  %t108 = extractvalue { i32, i64 } %t107, 1
  %t109 = extractvalue { i32, i64 } %t107, 0
  store i32 %t109, ptr %l49
  %t110 = icmp ne i32 %t109, 0
  br i1 %t110, label %bb31, label %ok.111, !prof !99
ok.111:
  store i64 %t108, ptr %l48
  br label %bb30
bb28:
  br label %bb29
bb29:
  store i64 -1, ptr %l35, !tbaa !24
  br label %bb32
bb30:
  %t112 = load i64, ptr %l48, !tbaa !24
  store i64 %t112, ptr %l35, !tbaa !24
  br label %bb32
bb31:
  br label %bb29
bb32:
  %t113 = load i64, ptr %l35, !tbaa !24
  store i64 %t113, ptr %l4, !tbaa !24
  %t114 = load i64, ptr %l4, !tbaa !24
  %t116 = icmp sge i64 %t114, 0
  br i1 %t116, label %bb33, label %bb34
bb33:
  %t118 = load i64, ptr %l4, !tbaa !24
  %t120 = trunc i64 %t118 to i8
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l2, i8 %t120)
  br label %bb35
bb34:
  br label %bb36
bb35:
  %t123 = load i64, ptr %l3, !tbaa !24
  %t125 = add i64 %t123, 3
  store i64 %t125, ptr %l3, !tbaa !24
  call void @__olang_scope_close(ptr %s4)
  br label %bb39
bb36:
  call void @__olang_scope_close(ptr %s4)
  br label %bb37
bb37:
  %t127 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t127, ptr %l58, !tbaa !27
  %t128 = load i64, ptr %l3, !tbaa !24
  %t130 = getelementptr { i64, ptr }, ptr %l58, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !27
  %t132 = getelementptr i8, ptr %t131, i64 %t128
  %t133 = load i8, ptr %t132, !tbaa !32
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l2, i8 %t133)
  br label %bb38
bb38:
  %t136 = load i64, ptr %l3, !tbaa !24
  %t138 = add i64 %t136, 1
  store i64 %t138, ptr %l3, !tbaa !24
  br label %bb39
bb39:
  br label %bb12
bb40:
  %t141 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l2)
  store { i64, ptr } %t141, ptr %l64
  br label %bb41
bb41:
  call void @__olang_scope_close(ptr %s0)
  %t142 = load { i64, ptr }, ptr %l64, !tbaa !27
  store { i64, ptr } %t142, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2flsp_2eServe(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca [2 x i32]
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %lp8 = alloca ptr
  %l10 = alloca %"compiler/lsp:Server"
  %l12 = alloca %"compiler/session:Reader"
  %l29 = alloca i64
  %l38 = alloca i64
  %l44 = alloca i1
  %l47 = alloca i64
  %l49 = alloca i1
  %l52 = alloca i64
  %l54 = alloca i1
  %l57 = alloca i64
  %l58 = alloca i64
  %l64 = alloca { i64, ptr }
  %l67 = alloca i1
  %l72 = alloca i1
  %l77 = alloca i32
  %l82 = alloca { i64, ptr }
  %l84 = alloca { i64, ptr }
  %l85 = alloca i32
  %l87 = alloca i1
  %l93 = alloca i1
  %l94 = alloca i64
  %l102 = alloca i1
  %l106 = alloca i1
  %l107 = alloca i64
  %l113 = alloca i1
  %l116 = alloca i64
  %l118 = alloca i1
  %l121 = alloca i64
  %l127 = alloca i32
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %rv = alloca i32
  %t2 = alloca %"compiler/lsp:Server", align 8
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  call void @compiler_2fsession_2eIgnoreBrokenPipes()
  br label %bb1
bb1:
  call void @compiler_2flsp_3aServer_2ector(ptr %t2, ptr %v0, ptr %v0, ptr %a0)
  call void @llvm.memmove.p0.p0.i64(ptr %l10, ptr %t2, i64 152, i1 false)
  br label %bb2
bb2:
  %t4 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 152, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t4, ptr %l10, i64 152, i1 false)
  store ptr %t4, ptr %l1, !tbaa !29
  %t6 = call %"compiler/session:Reader" @compiler_2fsession_3aReader_2ector(ptr %s0, i32 0)
  store %"compiler/session:Reader" %t6, ptr %l12
  br label %bb3
bb3:
  %t7 = load %"compiler/session:Reader", ptr %l12
  %t8 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 48, i64 8)
  store %"compiler/session:Reader" %t7, ptr %t8
  store ptr %t8, ptr %l2, !tbaa !29
  br label %bb4
bb4:
  store %olang.scope zeroinitializer, ptr %s1
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr %"compiler/lsp:Server", ptr %t10, i32 0, i32 8
  %t13 = load i1, ptr %t12, !tbaa !21
  %t15 = xor i1 %t13, true
  %t17 = xor i1 %t15, true
  br i1 %t17, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s1)
  br label %bb97
bb6:
  br label %bb7
bb7:
  %t19 = insertvalue [2 x i32] undef, i32 -1, 0
  %t20 = insertvalue [2 x i32] %t19, i32 -1, 1
  store [2 x i32] %t20, ptr %l3
  %t22 = getelementptr [2 x i32], ptr %l3, i64 0, i64 0
  store i32 0, ptr %t22, !tbaa !33
  store i64 1, ptr %l4, !tbaa !24
  %t23 = load ptr, ptr %l1, !tbaa !29
  %t25 = getelementptr %"compiler/lsp:Server", ptr %t23, i32 0, i32 3
  %t26 = getelementptr %"compiler/lsp:Worker", ptr %t25, i32 0, i32 0
  %t27 = load i32, ptr %t26, !tbaa !23
  %t29 = icmp sgt i32 %t27, 0
  br i1 %t29, label %bb8, label %bb9
bb8:
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t33 = getelementptr %"compiler/lsp:Server", ptr %t31, i32 0, i32 3
  %t34 = getelementptr %"compiler/lsp:Worker", ptr %t33, i32 0, i32 2
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t37 = icmp eq ptr %t35, null
  br i1 %t37, label %bb10, label %bb11
bb9:
  br label %bb13
bb10:
  call void @__olang_check_failed(ptr @olang_loc_28490b3d64df97fe_1fa673a94cf24522)
  unreachable
bb11:
  br label %bb12
bb12:
  %t39 = load ptr, ptr %l1, !tbaa !29
  %t41 = getelementptr %"compiler/lsp:Server", ptr %t39, i32 0, i32 3
  %t42 = getelementptr %"compiler/lsp:Worker", ptr %t41, i32 0, i32 2
  %t43 = load ptr, ptr %t42, !tbaa !29
  %t46 = getelementptr %"compiler/session:Reader", ptr %t43, i32 0, i32 0
  %t47 = load i32, ptr %t46, !tbaa !23
  %t49 = getelementptr [2 x i32], ptr %l3, i64 0, i64 1
  store i32 %t47, ptr %t49, !tbaa !33
  store i64 2, ptr %l4, !tbaa !24
  br label %bb13
bb13:
  store i32 -1, ptr %l5, !tbaa !23
  %t50 = call i64 @std_2ftime_2eNow()
  store i64 %t50, ptr %l29
  br label %bb14
bb14:
  %t51 = load i64, ptr %l29, !tbaa !24
  store i64 %t51, ptr %l6, !tbaa !24
  %t52 = load ptr, ptr %l1, !tbaa !29
  %t54 = getelementptr %"compiler/lsp:Server", ptr %t52, i32 0, i32 6
  %t55 = load i64, ptr %t54, !tbaa !24
  %t57 = icmp sgt i64 %t55, 0
  br i1 %t57, label %bb15, label %bb16
bb15:
  %t59 = load ptr, ptr %l1, !tbaa !29
  %t61 = getelementptr %"compiler/lsp:Server", ptr %t59, i32 0, i32 6
  %t62 = load i64, ptr %t61, !tbaa !24
  %t63 = load i64, ptr %l6, !tbaa !24
  %t66 = sub i64 %t62, %t63
  %t68 = sdiv i64 %t66, 1000000
  %t70 = call i64 @std_2fprelude_2fnumber_2eI64_2eMax_3cI64_3e(i64 0, i64 %t68)
  store i64 %t70, ptr %l38
  br label %bb17
bb16:
  br label %bb18
bb17:
  %t71 = load i64, ptr %l38, !tbaa !24
  %t72 = add i64 %t71, 1
  %t74 = trunc i64 %t72 to i32
  store i32 %t74, ptr %l5, !tbaa !23
  br label %bb18
bb18:
  %t76 = load ptr, ptr %l1, !tbaa !29
  %t78 = getelementptr %"compiler/lsp:Server", ptr %t76, i32 0, i32 3
  %t79 = getelementptr %"compiler/lsp:Worker", ptr %t78, i32 0, i32 0
  %t80 = load i32, ptr %t79, !tbaa !23
  %t82 = icmp sgt i32 %t80, 0
  br i1 %t82, label %bb19, label %bb20
bb19:
  %t84 = load ptr, ptr %l1, !tbaa !29
  %t86 = getelementptr %"compiler/lsp:Server", ptr %t84, i32 0, i32 5
  %t88 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t86)
  store i64 %t88, ptr %l47
  br label %bb21
bb20:
  store i1 false, ptr %l44, !tbaa !21
  br label %bb26
bb21:
  %t89 = load i64, ptr %l47, !tbaa !24
  %t90 = icmp sgt i64 %t89, 0
  br i1 %t90, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l49, !tbaa !21
  br label %bb25
bb23:
  %t92 = load ptr, ptr %l1, !tbaa !29
  %t94 = getelementptr %"compiler/lsp:Server", ptr %t92, i32 0, i32 4
  %t96 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t94)
  store i64 %t96, ptr %l52
  br label %bb24
bb24:
  %t97 = load i64, ptr %l52, !tbaa !24
  %t98 = icmp sgt i64 %t97, 0
  store i1 %t98, ptr %l49, !tbaa !21
  br label %bb25
bb25:
  %t100 = load i1, ptr %l49, !tbaa !21
  store i1 %t100, ptr %l44, !tbaa !21
  br label %bb26
bb26:
  %t101 = load i1, ptr %l44, !tbaa !21
  br i1 %t101, label %bb27, label %bb28
bb27:
  %t102 = load i32, ptr %l5, !tbaa !23
  %t104 = icmp slt i32 %t102, 0
  store i1 %t104, ptr %l54, !tbaa !21
  br label %bb29
bb28:
  store i1 false, ptr %l54, !tbaa !21
  br label %bb29
bb29:
  %t106 = load i1, ptr %l54, !tbaa !21
  br i1 %t106, label %bb30, label %bb31
bb30:
  store i32 1000, ptr %l5, !tbaa !23
  br label %bb32
bb31:
  br label %bb32
bb32:
  %t107 = load i64, ptr %l4, !tbaa !24
  store i64 %t107, ptr %l57, !tbaa !24
  %t108 = load [2 x i32], ptr %l3
  store i64 2, ptr %l58, !tbaa !24
  %t109 = icmp sge i64 0, 0
  br i1 %t109, label %bb33, label %bb34
bb33:
  %t111 = load i64, ptr %l57, !tbaa !24
  %t112 = icmp sle i64 0, %t111
  br i1 %t112, label %bb35, label %bb36
bb34:
  call void @__olang_check_failed(ptr @olang_loc_d1a2ced90ae1fed3_af42112fabe41f37)
  unreachable
bb35:
  %t114 = load i64, ptr %l57, !tbaa !24
  %t115 = load i64, ptr %l58, !tbaa !24
  %t116 = icmp sle i64 %t114, %t115
  br i1 %t116, label %bb37, label %bb38
bb36:
  call void @__olang_check_failed(ptr @olang_loc_d1a2ced90ae1fed3_af42112fabe41f37)
  unreachable
bb37:
  %t118 = load i64, ptr %l57, !tbaa !24
  %t119 = getelementptr i32, ptr %l3, i64 0
  %t120 = sub i64 %t118, 0
  %t121 = insertvalue { i64, ptr } undef, i64 %t120, 0
  %t122 = insertvalue { i64, ptr } %t121, ptr %t119, 1
  %t123 = load i32, ptr %l5, !tbaa !23
  %t126 = call { i64, ptr } @compiler_2fsession_2eReadable(ptr %s1, ptr %s1, { i64, ptr } %t122, i32 %t123)
  store { i64, ptr } %t126, ptr %l64
  br label %bb39
bb38:
  call void @__olang_check_failed(ptr @olang_loc_d1a2ced90ae1fed3_af42112fabe41f37)
  unreachable
bb39:
  %t127 = load { i64, ptr }, ptr %l64, !tbaa !27
  store { i64, ptr } %t127, ptr %l7, !tbaa !27
  %t128 = load i64, ptr %l4, !tbaa !24
  %t130 = icmp eq i64 %t128, 2
  br i1 %t130, label %bb40, label %bb41
bb40:
  %t132 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t133 = load ptr, ptr %t132, !tbaa !27
  %t134 = getelementptr i1, ptr %t133, i64 1
  %t135 = load i1, ptr %t134, !tbaa !31
  store i1 %t135, ptr %l67, !tbaa !21
  br label %bb42
bb41:
  store i1 false, ptr %l67, !tbaa !21
  br label %bb42
bb42:
  %t137 = load i1, ptr %l67, !tbaa !21
  br i1 %t137, label %bb43, label %bb44
bb43:
  %t138 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2efromWorker(ptr %v0, ptr %t138)
  br label %bb45
bb44:
  br label %bb46
bb45:
  br label %bb46
bb46:
  %t140 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t141 = load ptr, ptr %t140, !tbaa !27
  %t142 = getelementptr i1, ptr %t141, i64 0
  %t143 = load i1, ptr %t142, !tbaa !31
  br i1 %t143, label %bb47, label %bb48
bb47:
  %t145 = load ptr, ptr %l2, !tbaa !29
  %t147 = call i1 @compiler_2fsession_2ecompiler_2fsession_3aReader_2eFill(ptr %s0, ptr %t145)
  store i1 %t147, ptr %l72
  br label %bb49
bb48:
  br label %bb68
bb49:
  %t148 = load i1, ptr %l72, !tbaa !21
  %t149 = xor i1 %t148, true
  br i1 %t149, label %bb50, label %bb51
bb50:
  %t151 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2edrain(ptr %v0, ptr %v0, ptr %t151)
  br label %bb52
bb51:
  br label %bb56
bb52:
  %t153 = load ptr, ptr %l1, !tbaa !29
  %t155 = getelementptr %"compiler/lsp:Server", ptr %t153, i32 0, i32 7
  %t156 = load i1, ptr %t155, !tbaa !21
  br i1 %t156, label %bb53, label %bb54
bb53:
  store i32 0, ptr %l77, !tbaa !23
  br label %bb55
bb54:
  store i32 1, ptr %l77, !tbaa !23
  br label %bb55
bb55:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t158 = load i32, ptr %l77, !tbaa !23
  store i32 %t158, ptr %rv
  br label %ret
bb56:
  br label %bb57
bb57:
  %t159 = load ptr, ptr %l1, !tbaa !29
  %t161 = getelementptr %"compiler/lsp:Server", ptr %t159, i32 0, i32 8
  %t162 = load i1, ptr %t161, !tbaa !21
  %t164 = xor i1 %t162, true
  %t166 = xor i1 %t164, true
  br i1 %t166, label %bb58, label %bb59
bb58:
  br label %bb67
bb59:
  br label %bb60
bb60:
  %t168 = load ptr, ptr %l2, !tbaa !29
  %t170 = call { i32, { i64, ptr } } @compiler_2fsession_2ecompiler_2fsession_3aReader_2eNext(ptr %s0, ptr %v0, ptr %t168)
  %t171 = extractvalue { i32, { i64, ptr } } %t170, 1
  %t172 = extractvalue { i32, { i64, ptr } } %t170, 0
  store i32 %t172, ptr %l85
  %t173 = icmp ne i32 %t172, 0
  br i1 %t173, label %bb62, label %ok.174, !prof !99
ok.174:
  store { i64, ptr } %t171, ptr %l84
  br label %bb61
bb61:
  %t175 = load { i64, ptr }, ptr %l84, !tbaa !27
  store { i64, ptr } %t175, ptr %l82, !tbaa !27
  br label %bb64
bb62:
  %t176 = load i32, ptr %l85, !tbaa !23
  %t177 = ashr i32 %t176, 16
  %t179 = icmp eq i32 %t177, 1
  store i1 %t179, ptr %l87, !tbaa !21
  br label %bb63
bb63:
  br label %bb67
bb64:
  %t180 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 16, i64 8)
  store ptr %t180, ptr %lp8
  %t181 = load { i64, ptr }, ptr %l82, !tbaa !27
  %t182 = load ptr, ptr %lp8
  store { i64, ptr } %t181, ptr %t182, !tbaa !27
  %t183 = load ptr, ptr %l1, !tbaa !29
  %t184 = load ptr, ptr %lp8
  %t185 = load { i64, ptr }, ptr %t184, !tbaa !27
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2ehandle(ptr %v0, ptr %v0, ptr %v0, ptr %t183, { i64, ptr } %t185)
  br label %bb65
bb65:
  br label %bb66
bb66:
  br label %bb57
bb67:
  br label %bb68
bb68:
  %t188 = load ptr, ptr %l1, !tbaa !29
  %t190 = getelementptr %"compiler/lsp:Server", ptr %t188, i32 0, i32 6
  %t191 = load i64, ptr %t190, !tbaa !24
  %t193 = icmp sgt i64 %t191, 0
  br i1 %t193, label %bb69, label %bb70
bb69:
  %t195 = call i64 @std_2ftime_2eNow()
  store i64 %t195, ptr %l94
  br label %bb71
bb70:
  store i1 false, ptr %l93, !tbaa !21
  br label %bb72
bb71:
  %t196 = load ptr, ptr %l1, !tbaa !29
  %t198 = getelementptr %"compiler/lsp:Server", ptr %t196, i32 0, i32 6
  %t199 = load i64, ptr %t198, !tbaa !24
  %t200 = load i64, ptr %l94, !tbaa !24
  %t202 = icmp sge i64 %t200, %t199
  store i1 %t202, ptr %l93, !tbaa !21
  br label %bb72
bb72:
  %t204 = load i1, ptr %l93, !tbaa !21
  br i1 %t204, label %bb73, label %bb74
bb73:
  %t205 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2estartWorker(ptr %v0, ptr %v0, ptr %t205)
  br label %bb75
bb74:
  br label %bb76
bb75:
  br label %bb76
bb76:
  %t207 = load ptr, ptr %l1, !tbaa !29
  %t209 = getelementptr %"compiler/lsp:Server", ptr %t207, i32 0, i32 3
  %t210 = getelementptr %"compiler/lsp:Worker", ptr %t209, i32 0, i32 0
  %t211 = load i32, ptr %t210, !tbaa !23
  %t213 = icmp sgt i32 %t211, 0
  br i1 %t213, label %bb77, label %bb78
bb77:
  %t215 = load ptr, ptr %l1, !tbaa !29
  %t217 = getelementptr %"compiler/lsp:Server", ptr %t215, i32 0, i32 3
  %t218 = getelementptr %"compiler/lsp:Worker", ptr %t217, i32 0, i32 3
  %t219 = load i64, ptr %t218, !tbaa !24
  %t221 = icmp sgt i64 %t219, 0
  store i1 %t221, ptr %l102, !tbaa !21
  br label %bb79
bb78:
  store i1 false, ptr %l102, !tbaa !21
  br label %bb79
bb79:
  %t223 = load i1, ptr %l102, !tbaa !21
  br i1 %t223, label %bb80, label %bb81
bb80:
  %t224 = call i64 @std_2ftime_2eNow()
  store i64 %t224, ptr %l107
  br label %bb82
bb81:
  store i1 false, ptr %l106, !tbaa !21
  br label %bb83
bb82:
  %t225 = load ptr, ptr %l1, !tbaa !29
  %t227 = getelementptr %"compiler/lsp:Server", ptr %t225, i32 0, i32 3
  %t228 = getelementptr %"compiler/lsp:Worker", ptr %t227, i32 0, i32 3
  %t229 = load i64, ptr %t228, !tbaa !24
  %t230 = load i64, ptr %l107, !tbaa !24
  %t232 = sub i64 %t230, %t229
  %t233 = load i64, ptr @G_2ecompiler_2flsp_2eStuckNs, !tbaa !24
  %t236 = icmp sgt i64 %t232, %t233
  store i1 %t236, ptr %l106, !tbaa !21
  br label %bb83
bb83:
  %t238 = load i1, ptr %l106, !tbaa !21
  br i1 %t238, label %bb84, label %bb85
bb84:
  %t239 = load ptr, ptr %l1, !tbaa !29
  %t241 = getelementptr %"compiler/lsp:Server", ptr %t239, i32 0, i32 5
  %t243 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t241)
  store i64 %t243, ptr %l116
  br label %bb86
bb85:
  store i1 false, ptr %l113, !tbaa !21
  br label %bb91
bb86:
  %t244 = load i64, ptr %l116, !tbaa !24
  %t245 = icmp sgt i64 %t244, 0
  br i1 %t245, label %bb87, label %bb88
bb87:
  store i1 true, ptr %l118, !tbaa !21
  br label %bb90
bb88:
  %t247 = load ptr, ptr %l1, !tbaa !29
  %t249 = getelementptr %"compiler/lsp:Server", ptr %t247, i32 0, i32 4
  %t251 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t249)
  store i64 %t251, ptr %l121
  br label %bb89
bb89:
  %t252 = load i64, ptr %l121, !tbaa !24
  %t253 = icmp sgt i64 %t252, 0
  store i1 %t253, ptr %l118, !tbaa !21
  br label %bb90
bb90:
  %t255 = load i1, ptr %l118, !tbaa !21
  store i1 %t255, ptr %l113, !tbaa !21
  br label %bb91
bb91:
  %t256 = load i1, ptr %l113, !tbaa !21
  br i1 %t256, label %bb92, label %bb93
bb92:
  store %olang.scope zeroinitializer, ptr %s11
  %t257 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2eworkerLost(ptr %v0, ptr %s11, ptr %t257, { i64, ptr } { i64 49, ptr getelementptr inbounds (<{ i64, [49 x i8] }>, ptr @.d1, i32 0, i32 1) })
  br label %bb94
bb93:
  br label %bb95
bb94:
  call void @__olang_scope_close(ptr %s11)
  br label %bb95
bb95:
  call void @__olang_scope_close(ptr %s1)
  br label %bb96
bb96:
  br label %bb4
bb97:
  %t259 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2estopWorker(ptr %v0, ptr %t259)
  br label %bb98
bb98:
  %t261 = load ptr, ptr %l1, !tbaa !29
  %t263 = getelementptr %"compiler/lsp:Server", ptr %t261, i32 0, i32 7
  %t264 = load i1, ptr %t263, !tbaa !21
  br i1 %t264, label %bb99, label %bb100
bb99:
  store i32 0, ptr %l127, !tbaa !23
  br label %bb101
bb100:
  store i32 1, ptr %l127, !tbaa !23
  br label %bb101
bb101:
  call void @__olang_scope_close(ptr %s0)
  %t266 = load i32, ptr %l127, !tbaa !23
  store i32 %t266, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2flsp_2eUriOf(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/text:StringBuilder"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i8
  %l6 = alloca %"std/prelude/text:StringBuilder"
  %l15 = alloca { i64, ptr }
  %l19 = alloca i1
  %l20 = alloca i1
  %l22 = alloca i1
  %l23 = alloca i1
  %l26 = alloca i1
  %l29 = alloca i1
  %l32 = alloca i1
  %l35 = alloca i1
  %l40 = alloca ptr
  %l42 = alloca i8
  %l43 = alloca i64
  %l44 = alloca i32
  %l45 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l49 = alloca { i64, ptr }
  %l55 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l6
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l6
  store %"std/prelude/text:StringBuilder" %t2, ptr %l1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l1, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d2, i32 0, i32 1) })
  br label %bb2
bb2:
  store { i64, ptr } %a0, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t6 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t6, 0
  store i64 %t8, ptr %l4, !tbaa !24
  br label %bb3
bb3:
  %t10 = load i64, ptr %l3, !tbaa !24
  %t11 = load i64, ptr %l4, !tbaa !24
  %t14 = icmp slt i64 %t10, %t11
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb4, label %bb5
bb4:
  br label %bb38
bb5:
  br label %bb6
bb6:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %l15, !tbaa !27
  %t19 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr i8, ptr %t22, i64 %t19
  %t24 = load i8, ptr %t23, !tbaa !32
  store i8 %t24, ptr %l5, !tbaa !22
  %t26 = load i8, ptr %l5, !tbaa !22
  %t28 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t26)
  store i1 %t28, ptr %l19
  br label %bb7
bb7:
  %t29 = load i1, ptr %l19, !tbaa !21
  br i1 %t29, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb11
bb9:
  %t30 = load i8, ptr %l5, !tbaa !22
  %t32 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t30)
  store i1 %t32, ptr %l22
  br label %bb10
bb10:
  %t33 = load i1, ptr %l22, !tbaa !21
  store i1 %t33, ptr %l20, !tbaa !21
  br label %bb11
bb11:
  %t34 = load i1, ptr %l20, !tbaa !21
  br i1 %t34, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l23, !tbaa !21
  br label %bb14
bb13:
  %t35 = load i8, ptr %l5, !tbaa !22
  %t37 = icmp eq i8 %t35, 47
  store i1 %t37, ptr %l23, !tbaa !21
  br label %bb14
bb14:
  %t39 = load i1, ptr %l23, !tbaa !21
  br i1 %t39, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb17
bb16:
  %t40 = load i8, ptr %l5, !tbaa !22
  %t42 = icmp eq i8 %t40, 45
  store i1 %t42, ptr %l26, !tbaa !21
  br label %bb17
bb17:
  %t44 = load i1, ptr %l26, !tbaa !21
  br i1 %t44, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l29, !tbaa !21
  br label %bb20
bb19:
  %t45 = load i8, ptr %l5, !tbaa !22
  %t47 = icmp eq i8 %t45, 46
  store i1 %t47, ptr %l29, !tbaa !21
  br label %bb20
bb20:
  %t49 = load i1, ptr %l29, !tbaa !21
  br i1 %t49, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l32, !tbaa !21
  br label %bb23
bb22:
  %t50 = load i8, ptr %l5, !tbaa !22
  %t52 = icmp eq i8 %t50, 95
  store i1 %t52, ptr %l32, !tbaa !21
  br label %bb23
bb23:
  %t54 = load i1, ptr %l32, !tbaa !21
  br i1 %t54, label %bb24, label %bb25
bb24:
  store i1 true, ptr %l35, !tbaa !21
  br label %bb26
bb25:
  %t55 = load i8, ptr %l5, !tbaa !22
  %t57 = icmp eq i8 %t55, 126
  store i1 %t57, ptr %l35, !tbaa !21
  br label %bb26
bb26:
  %t59 = load i1, ptr %l35, !tbaa !21
  br i1 %t59, label %bb27, label %bb28
bb27:
  %t60 = load i8, ptr %l5, !tbaa !22
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 %t60)
  br label %bb29
bb28:
  store %olang.scope zeroinitializer, ptr %s4
  store ptr %l1, ptr %l40, !tbaa !29
  %t63 = load i8, ptr %l5, !tbaa !22
  store i8 %t63, ptr %l42, !tbaa !22
  %t65 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s4, i64 16)
  %t66 = extractvalue { i32, i64 } %t65, 1
  %t67 = extractvalue { i32, i64 } %t65, 0
  store i32 %t67, ptr %l44
  %t68 = icmp ne i32 %t67, 0
  br i1 %t68, label %bb31, label %ok.69, !prof !99
ok.69:
  store i64 %t66, ptr %l43
  br label %bb30
bb29:
  br label %bb36
bb30:
  %t70 = load i8, ptr %l42, !tbaa !22
  %t71 = load i64, ptr %l43, !tbaa !24
  %t72 = call { i64, ptr } @std_2fprelude_2ftext_2eU8_2eFormat(ptr %s4, i8 %t70, i64 %t71)
  store { i64, ptr } %t72, ptr %l45
  br label %bb32
bb31:
  call void @__olang_check_failed(ptr @olang_loc_b56467a85251252d_5a05a1cd484a3361)
  unreachable
bb32:
  %t73 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t74 = extractvalue { i64, ptr } %t73, 0
  %t75 = extractvalue { i64, ptr } %t73, 1
  %t76 = mul i64 %t74, 1
  %t77 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t76)
  call void @llvm.memcpy.p0.p0.i64(ptr %t77, ptr %t75, i64 %t76, i1 false)
  %t78 = insertvalue { i64, ptr } undef, i64 %t74, 0
  %t79 = insertvalue { i64, ptr } %t78, ptr %t77, 1
  %t81 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eToUpper(ptr %s4, ptr %s4, { i64, ptr } %t79)
  store { i64, ptr } %t81, ptr %l47
  br label %bb33
bb33:
  %t82 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t83 = extractvalue { i64, ptr } %t82, 0
  %t84 = extractvalue { i64, ptr } %t82, 1
  %t85 = mul i64 %t83, 1
  %t86 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t85)
  call void @llvm.memcpy.p0.p0.i64(ptr %t86, ptr %t84, i64 %t85, i1 false)
  %t87 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t88 = insertvalue { i64, ptr } %t87, ptr %t86, 1
  %t90 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2ePadStart(ptr %s4, ptr %s4, { i64, ptr } %t88, i64 2, i8 48)
  store { i64, ptr } %t90, ptr %l49
  br label %bb34
bb34:
  %t91 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t92 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  %t93 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t94 = extractvalue { i64, ptr } %t93, 1
  %t95 = extractvalue { i64, ptr } %t93, 0
  %t96 = add i64 %t92, %t95
  %t97 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t96)
  call void @olang_textcopy(ptr %t97, ptr %t91, i64 %t92)
  %t98 = getelementptr i8, ptr %t97, i64 %t92
  call void @olang_textcopy(ptr %t98, ptr %t94, i64 %t95)
  %t99 = insertvalue { i64, ptr } undef, i64 %t96, 0
  %t100 = insertvalue { i64, ptr } %t99, ptr %t97, 1
  %t102 = extractvalue { i64, ptr } %t100, 0
  %t103 = extractvalue { i64, ptr } %t100, 1
  %t104 = mul i64 %t102, 1
  %t105 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t104)
  call void @llvm.memcpy.p0.p0.i64(ptr %t105, ptr %t103, i64 %t104, i1 false)
  %t106 = insertvalue { i64, ptr } undef, i64 %t102, 0
  %t107 = insertvalue { i64, ptr } %t106, ptr %t105, 1
  %t108 = load ptr, ptr %l40, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s4, ptr %t108, { i64, ptr } %t107)
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s4)
  br label %bb36
bb36:
  br label %bb37
bb37:
  %t110 = load i64, ptr %l3, !tbaa !24
  %t112 = add i64 %t110, 1
  store i64 %t112, ptr %l3, !tbaa !24
  br label %bb3
bb38:
  %t115 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l1)
  store { i64, ptr } %t115, ptr %l55
  br label %bb39
bb39:
  call void @__olang_scope_close(ptr %s0)
  %t116 = load { i64, ptr }, ptr %l55, !tbaa !27
  store { i64, ptr } %t116, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2flsp_2ebaseName(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l6 = alloca i1
  %l7 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l1, !tbaa !24
  br label %bb1
bb1:
  %t5 = load i64, ptr %l1, !tbaa !24
  %t7 = icmp sgt i64 %t5, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t9, ptr %l7, !tbaa !27
  %t10 = load i64, ptr %l1, !tbaa !24
  %t12 = sub i64 %t10, 1
  %t14 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr i8, ptr %t15, i64 %t12
  %t17 = load i8, ptr %t16, !tbaa !32
  %t19 = icmp ne i8 %t17, 47
  store i1 %t19, ptr %l6, !tbaa !21
  br label %bb4
bb3:
  store i1 false, ptr %l6, !tbaa !21
  br label %bb4
bb4:
  %t21 = load i1, ptr %l6, !tbaa !21
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
  store i64 %t29, ptr %l16, !tbaa !24
  %t30 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t33 = extractvalue { i64, ptr } %t30, 0
  store i64 %t33, ptr %l19, !tbaa !24
  %t34 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t34, 0
  store i64 %t35, ptr %l20, !tbaa !24
  %t36 = load i64, ptr %l16, !tbaa !24
  %t37 = icmp sge i64 %t36, 0
  br i1 %t37, label %bb10, label %bb11
bb10:
  %t39 = load i64, ptr %l16, !tbaa !24
  %t40 = load i64, ptr %l19, !tbaa !24
  %t41 = icmp sle i64 %t39, %t40
  br i1 %t41, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_9a89dd98321aa7ad_4da0335a3873de71)
  unreachable
bb12:
  %t43 = load i64, ptr %l19, !tbaa !24
  %t44 = load i64, ptr %l20, !tbaa !24
  %t45 = icmp sle i64 %t43, %t44
  br i1 %t45, label %bb14, label %bb15
bb13:
  call void @__olang_check_failed(ptr @olang_loc_9a89dd98321aa7ad_4da0335a3873de71)
  unreachable
bb14:
  %t47 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !27
  %t49 = load i64, ptr %l16, !tbaa !24
  %t50 = load i64, ptr %l19, !tbaa !24
  %t51 = getelementptr i8, ptr %t48, i64 %t49
  %t52 = sub i64 %t50, %t49
  %t53 = insertvalue { i64, ptr } undef, i64 %t52, 0
  %t54 = insertvalue { i64, ptr } %t53, ptr %t51, 1
  %t56 = extractvalue { i64, ptr } %t54, 1
  %t57 = extractvalue { i64, ptr } %t54, 0
  %t58 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t57)
  call void @olang_textcopy(ptr %t58, ptr %t56, i64 %t57)
  %t59 = insertvalue { i64, ptr } undef, i64 %t57, 0
  %t60 = insertvalue { i64, ptr } %t59, ptr %t58, 1
  store { i64, ptr } %t60, ptr %rv
  br label %ret
bb15:
  call void @__olang_check_failed(ptr @olang_loc_9a89dd98321aa7ad_4da0335a3873de71)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2flsp_2ebuildSaid(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l2 = alloca [3 x { i64, ptr }]
  %l3 = alloca %"std/os:Output"
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/text:LineIter"
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l17 = alloca %"std/os:Output"
  %l22 = alloca { i64, ptr }
  %l23 = alloca %"std/os:Output"
  %l24 = alloca i32
  %l26 = alloca i1
  %l29 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l31 = alloca %"std/prelude/text:LineIter"
  %l32 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l35 = alloca i32
  %l37 = alloca i1
  %l38 = alloca i64
  %l40 = alloca i64
  %l41 = alloca i32
  %l42 = alloca { i64, ptr }
  %l43 = alloca i64
  %l44 = alloca i64
  %l49 = alloca { i64, ptr }
  %l50 = alloca ptr
  %l52 = alloca i64
  %l55 = alloca { i64, ptr }
  %l56 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l59 = alloca i64
  %l62 = alloca i64
  %l63 = alloca i64
  %l68 = alloca { i64, ptr }
  %l69 = alloca i64
  %l71 = alloca i64
  %l72 = alloca i32
  %l75 = alloca i64
  %l80 = alloca ptr
  %l81 = alloca i64
  %l83 = alloca { i64, ptr }
  %l85 = alloca { i64, ptr }
  %l92 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call { i64, ptr } @std_2fos_2eQuote(ptr %v0, ptr %s0, { i64, ptr } %a0)
  store { i64, ptr } %t3, ptr %l12
  br label %bb1
bb1:
  %t4 = call { i64, ptr } @compiler_2flsp_2ecompilerUnderTest(ptr %s0)
  store { i64, ptr } %t4, ptr %l13
  br label %bb2
bb2:
  %t5 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t5, 0
  %t7 = extractvalue { i64, ptr } %t5, 1
  %t8 = mul i64 %t6, 1
  %t9 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t8)
  call void @llvm.memcpy.p0.p0.i64(ptr %t9, ptr %t7, i64 %t8, i1 false)
  %t10 = insertvalue { i64, ptr } undef, i64 %t6, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  %t13 = call { i64, ptr } @std_2fos_2eQuote(ptr %s0, ptr %s0, { i64, ptr } %t11)
  store { i64, ptr } %t13, ptr %l15
  br label %bb3
bb3:
  %t14 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  %t16 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t16, 1
  %t18 = extractvalue { i64, ptr } %t16, 0
  %t19 = add i64 %t15, %t18
  %t20 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t21 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t22 = add i64 %t19, %t21
  %t23 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t24 = extractvalue { i64, ptr } %t23, 1
  %t25 = extractvalue { i64, ptr } %t23, 0
  %t26 = add i64 %t22, %t25
  %t27 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t28 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t29 = add i64 %t26, %t28
  %t30 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t29)
  call void @olang_textcopy(ptr %t30, ptr %t14, i64 %t15)
  %t31 = getelementptr i8, ptr %t30, i64 %t15
  call void @olang_textcopy(ptr %t31, ptr %t17, i64 %t18)
  %t32 = getelementptr i8, ptr %t31, i64 %t18
  call void @olang_textcopy(ptr %t32, ptr %t20, i64 %t21)
  %t33 = getelementptr i8, ptr %t32, i64 %t21
  call void @olang_textcopy(ptr %t33, ptr %t24, i64 %t25)
  %t34 = getelementptr i8, ptr %t33, i64 %t25
  call void @olang_textcopy(ptr %t34, ptr %t27, i64 %t28)
  %t35 = insertvalue { i64, ptr } undef, i64 %t29, 0
  %t36 = insertvalue { i64, ptr } %t35, ptr %t30, 1
  %t39 = insertvalue [3 x { i64, ptr }] undef, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  %t40 = insertvalue [3 x { i64, ptr }] %t39, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t42 = insertvalue [3 x { i64, ptr }] %t40, { i64, ptr } %t36, 2
  store [3 x { i64, ptr }] %t42, ptr %l2
  %t45 = insertvalue { i64, ptr } undef, i64 3, 0
  %t46 = insertvalue { i64, ptr } %t45, ptr %l2, 1
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d9, i32 0, i32 1) }, ptr %l22, !tbaa !27
  %t48 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t49 = call { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %s0, ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t46, { i64, ptr } %t48, i1 true, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d10, i32 0, i32 1) })
  %t50 = extractvalue { i32, %"std/os:Output" } %t49, 1
  %t51 = extractvalue { i32, %"std/os:Output" } %t49, 0
  store i32 %t51, ptr %l24
  %t52 = icmp ne i32 %t51, 0
  br i1 %t52, label %bb5, label %ok.53, !prof !99
ok.53:
  store %"std/os:Output" %t50, ptr %l23
  br label %bb4
bb4:
  %t54 = load %"std/os:Output", ptr %l23
  store %"std/os:Output" %t54, ptr %l17
  br label %bb9
bb5:
  %t55 = load i32, ptr %l24, !tbaa !23
  %t56 = ashr i32 %t55, 16
  %t58 = icmp eq i32 %t56, 1
  store i1 %t58, ptr %l26, !tbaa !21
  %t59 = load i32, ptr %l24, !tbaa !23
  %t60 = ashr i32 %t59, 16
  %t62 = icmp eq i32 %t60, 1
  br i1 %t62, label %bb6, label %bb7
bb6:
  call void @__olang_errpay_pop()
  br label %bb7
bb7:
  br label %bb8
bb8:
  %t64 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t65 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  %t66 = insertvalue { i64, ptr } undef, i64 %t65, 0
  %t67 = insertvalue { i64, ptr } %t66, ptr %t64, 1
  call void @__olang_check_failed_text(ptr @olang_loc_15a00d37002b4239_21fefac552c9525d, { i64, ptr } %t67)
  unreachable
bb9:
  %t68 = load %"std/os:Output", ptr %l17
  store %"std/os:Output" %t68, ptr %l3
  %t69 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t69, ptr %l29
  br label %bb10
bb10:
  %t70 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l29
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t70, ptr %l4
  %t71 = getelementptr %"std/os:Output", ptr %l3, i32 0, i32 1
  %t72 = load { i64, ptr }, ptr %t71, !tbaa !27
  %t74 = call %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %s0, ptr %s0, { i64, ptr } %t72)
  store %"std/prelude/text:LineIter" %t74, ptr %l31
  br label %bb11
bb11:
  %t75 = load %"std/prelude/text:LineIter", ptr %l31
  store %"std/prelude/text:LineIter" %t75, ptr %l5
  br label %bb12
bb12:
  store %olang.scope zeroinitializer, ptr %s4
  %t77 = call { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %s0, ptr %s0, ptr %l5)
  %t78 = extractvalue { i32, { i64, ptr } } %t77, 1
  %t79 = extractvalue { i32, { i64, ptr } } %t77, 0
  store i32 %t79, ptr %l35
  %t80 = icmp ne i32 %t79, 0
  br i1 %t80, label %bb14, label %ok.81, !prof !99
ok.81:
  store { i64, ptr } %t78, ptr %l34
  br label %bb13
bb13:
  %t82 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t82, ptr %l32, !tbaa !27
  br label %bb16
bb14:
  %t83 = load i32, ptr %l35, !tbaa !23
  %t84 = ashr i32 %t83, 16
  %t86 = icmp eq i32 %t84, 1
  store i1 %t86, ptr %l37, !tbaa !21
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s4)
  br label %bb56
bb16:
  %t87 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t87, ptr %l6, !tbaa !27
  %t88 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t90 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %s0, ptr %s4, { i64, ptr } %t88, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d12, i32 0, i32 1) })
  %t91 = extractvalue { i32, i64 } %t90, 1
  %t92 = extractvalue { i32, i64 } %t90, 0
  store i32 %t92, ptr %l41
  %t93 = icmp ne i32 %t92, 0
  br i1 %t93, label %bb18, label %ok.94, !prof !99
ok.94:
  store i64 %t91, ptr %l40
  br label %bb17
bb17:
  %t95 = load i64, ptr %l40, !tbaa !24
  store i64 %t95, ptr %l38, !tbaa !24
  br label %bb20
bb18:
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s4)
  br label %bb55
bb20:
  %t96 = load i64, ptr %l38, !tbaa !24
  store i64 %t96, ptr %l7, !tbaa !24
  %t97 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t97, ptr %l42, !tbaa !27
  %t98 = load i64, ptr %l7, !tbaa !24
  store i64 %t98, ptr %l43, !tbaa !24
  %t99 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t100 = extractvalue { i64, ptr } %t99, 0
  store i64 %t100, ptr %l44, !tbaa !24
  %t101 = icmp sge i64 0, 0
  br i1 %t101, label %bb21, label %bb22
bb21:
  %t103 = load i64, ptr %l43, !tbaa !24
  %t104 = icmp sle i64 0, %t103
  br i1 %t104, label %bb23, label %bb24
bb22:
  call void @__olang_check_failed(ptr @olang_loc_df0aeb6250e7481_26f5ec38bd691c8d)
  unreachable
bb23:
  %t106 = load i64, ptr %l43, !tbaa !24
  %t107 = load i64, ptr %l44, !tbaa !24
  %t108 = icmp sle i64 %t106, %t107
  br i1 %t108, label %bb25, label %bb26
bb24:
  call void @__olang_check_failed(ptr @olang_loc_df0aeb6250e7481_26f5ec38bd691c8d)
  unreachable
bb25:
  %t110 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = load i64, ptr %l43, !tbaa !24
  %t113 = getelementptr i8, ptr %t111, i64 0
  %t114 = sub i64 %t112, 0
  %t115 = insertvalue { i64, ptr } undef, i64 %t114, 0
  %t116 = insertvalue { i64, ptr } %t115, ptr %t113, 1
  %t118 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %s0, ptr %s4, ptr %s4, { i64, ptr } %t116, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d13, i32 0, i32 1) })
  store { i64, ptr } %t118, ptr %l49
  br label %bb27
bb26:
  call void @__olang_check_failed(ptr @olang_loc_df0aeb6250e7481_26f5ec38bd691c8d)
  unreachable
bb27:
  %t119 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t120 = call ptr @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eToVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %s4, ptr %s4, { i64, ptr } %t119)
  store ptr %t120, ptr %l50
  br label %bb28
bb28:
  %t121 = load ptr, ptr %l50, !tbaa !29
  store ptr %t121, ptr %l8, !tbaa !29
  %t122 = load ptr, ptr %l8, !tbaa !29
  %t124 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s4, ptr %t122)
  store i64 %t124, ptr %l52
  br label %bb29
bb29:
  %t125 = load i64, ptr %l52, !tbaa !24
  %t126 = icmp slt i64 %t125, 3
  br i1 %t126, label %bb30, label %bb31
bb30:
  call void @__olang_scope_close(ptr %s4)
  br label %bb55
bb31:
  br label %bb32
bb32:
  %t128 = load ptr, ptr %l8, !tbaa !29
  %t130 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s4, ptr %s4, ptr %t128, i64 0)
  store { i64, ptr } %t130, ptr %l55
  br label %bb33
bb33:
  %t131 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t132 = call { i64, ptr } @compiler_2flsp_2ebaseName(ptr %s4, ptr %s4, { i64, ptr } %t131)
  store { i64, ptr } %t132, ptr %l56
  br label %bb34
bb34:
  %t133 = load { i64, ptr }, ptr %l56, !tbaa !27
  store { i64, ptr } %t133, ptr %l9, !tbaa !27
  %t134 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t134, ptr %l57, !tbaa !27
  %t135 = load i64, ptr %l7, !tbaa !24
  %t137 = add i64 %t135, 8
  store i64 %t137, ptr %l59, !tbaa !24
  %t138 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t141 = extractvalue { i64, ptr } %t138, 0
  store i64 %t141, ptr %l62, !tbaa !24
  %t142 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t143 = extractvalue { i64, ptr } %t142, 0
  store i64 %t143, ptr %l63, !tbaa !24
  %t144 = load i64, ptr %l59, !tbaa !24
  %t145 = icmp sge i64 %t144, 0
  br i1 %t145, label %bb35, label %bb36
bb35:
  %t147 = load i64, ptr %l59, !tbaa !24
  %t148 = load i64, ptr %l62, !tbaa !24
  %t149 = icmp sle i64 %t147, %t148
  br i1 %t149, label %bb37, label %bb38
bb36:
  call void @__olang_check_failed(ptr @olang_loc_5f1d4675af139e82_e6710b64a8f7682e)
  unreachable
bb37:
  %t151 = load i64, ptr %l62, !tbaa !24
  %t152 = load i64, ptr %l63, !tbaa !24
  %t153 = icmp sle i64 %t151, %t152
  br i1 %t153, label %bb39, label %bb40
bb38:
  call void @__olang_check_failed(ptr @olang_loc_5f1d4675af139e82_e6710b64a8f7682e)
  unreachable
bb39:
  %t155 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t156 = load ptr, ptr %t155, !tbaa !27
  %t157 = load i64, ptr %l59, !tbaa !24
  %t158 = load i64, ptr %l62, !tbaa !24
  %t159 = getelementptr i8, ptr %t156, i64 %t157
  %t160 = sub i64 %t158, %t157
  %t161 = insertvalue { i64, ptr } undef, i64 %t160, 0
  %t162 = insertvalue { i64, ptr } %t161, ptr %t159, 1
  store { i64, ptr } %t162, ptr %l10, !tbaa !27
  %t164 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t164, ptr %l68, !tbaa !27
  %t165 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t167 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %s0, ptr %s4, { i64, ptr } %t165, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) })
  %t168 = extractvalue { i32, i64 } %t167, 1
  %t169 = extractvalue { i32, i64 } %t167, 0
  store i32 %t169, ptr %l72
  %t170 = icmp ne i32 %t169, 0
  br i1 %t170, label %bb42, label %ok.171, !prof !99
ok.171:
  store i64 %t168, ptr %l71
  br label %bb41
bb40:
  call void @__olang_check_failed(ptr @olang_loc_5f1d4675af139e82_e6710b64a8f7682e)
  unreachable
bb41:
  %t172 = load i64, ptr %l71, !tbaa !24
  store i64 %t172, ptr %l69, !tbaa !24
  br label %bb44
bb42:
  br label %bb43
bb43:
  %t173 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t175 = extractvalue { i64, ptr } %t173, 0
  store i64 %t175, ptr %l69, !tbaa !24
  br label %bb44
bb44:
  %t177 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t178 = extractvalue { i64, ptr } %t177, 0
  store i64 %t178, ptr %l75, !tbaa !24
  %t179 = icmp sge i64 0, 0
  br i1 %t179, label %bb45, label %bb46
bb45:
  %t181 = load i64, ptr %l69, !tbaa !24
  %t182 = icmp sle i64 0, %t181
  br i1 %t182, label %bb47, label %bb48
bb46:
  call void @__olang_check_failed(ptr @olang_loc_ab8c4ea36668ab7f_3bb630bf34512b)
  unreachable
bb47:
  %t184 = load i64, ptr %l69, !tbaa !24
  %t185 = load i64, ptr %l75, !tbaa !24
  %t186 = icmp sle i64 %t184, %t185
  br i1 %t186, label %bb49, label %bb50
bb48:
  call void @__olang_check_failed(ptr @olang_loc_ab8c4ea36668ab7f_3bb630bf34512b)
  unreachable
bb49:
  %t188 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t189 = load ptr, ptr %t188, !tbaa !27
  %t190 = load i64, ptr %l69, !tbaa !24
  %t191 = getelementptr i8, ptr %t189, i64 0
  %t192 = sub i64 %t190, 0
  %t193 = insertvalue { i64, ptr } undef, i64 %t192, 0
  %t194 = insertvalue { i64, ptr } %t193, ptr %t191, 1
  store { i64, ptr } %t194, ptr %l10, !tbaa !27
  store ptr %l4, ptr %l80, !tbaa !29
  %t196 = ptrtoint ptr %s0 to i64
  store i64 %t196, ptr %l81, !tbaa !24
  %t197 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t197, label %bb51, label %bb52
bb50:
  call void @__olang_check_failed(ptr @olang_loc_ab8c4ea36668ab7f_3bb630bf34512b)
  unreachable
bb51:
  %t199 = call ptr @__olang_region_make(ptr %s0)
  %t200 = ptrtoint ptr %t199 to i64
  store i64 %t200, ptr %l81, !tbaa !24
  br label %bb52
bb52:
  %t201 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t201, ptr %l83, !tbaa !27
  %t202 = load ptr, ptr %l8, !tbaa !29
  %t204 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s4, ptr %s4, ptr %t202, i64 1)
  store { i64, ptr } %t204, ptr %l85
  br label %bb53
bb53:
  %t205 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t206 = load { i64, ptr }, ptr %l83, !tbaa !27
  %t207 = extractvalue { i64, ptr } %t206, 1
  %t208 = extractvalue { i64, ptr } %t206, 0
  %t209 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t210 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t211 = add i64 %t208, %t210
  %t212 = load { i64, ptr }, ptr %l85, !tbaa !27
  %t213 = extractvalue { i64, ptr } %t212, 1
  %t214 = extractvalue { i64, ptr } %t212, 0
  %t215 = add i64 %t211, %t214
  %t216 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t217 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t218 = add i64 %t215, %t217
  %t220 = extractvalue { i64, ptr } %t205, 1
  %t221 = extractvalue { i64, ptr } %t205, 0
  %t222 = add i64 %t218, %t221
  %t223 = load i64, ptr %l81
  %t224 = inttoptr i64 %t223 to ptr
  %t225 = call ptr @__olang_scope_alloc(ptr %t224, i64 %t222)
  call void @olang_textcopy(ptr %t225, ptr %t207, i64 %t208)
  %t226 = getelementptr i8, ptr %t225, i64 %t208
  call void @olang_textcopy(ptr %t226, ptr %t209, i64 %t210)
  %t227 = getelementptr i8, ptr %t226, i64 %t210
  call void @olang_textcopy(ptr %t227, ptr %t213, i64 %t214)
  %t228 = getelementptr i8, ptr %t227, i64 %t214
  call void @olang_textcopy(ptr %t228, ptr %t216, i64 %t217)
  %t229 = getelementptr i8, ptr %t228, i64 %t217
  call void @olang_textcopy(ptr %t229, ptr %t220, i64 %t221)
  %t230 = insertvalue { i64, ptr } undef, i64 %t222, 0
  %t231 = insertvalue { i64, ptr } %t230, ptr %t225, 1
  %t233 = load i64, ptr %l81
  %t234 = inttoptr i64 %t233 to ptr
  %t235 = extractvalue { i64, ptr } %t231, 0
  %t236 = extractvalue { i64, ptr } %t231, 1
  %t237 = mul i64 %t235, 1
  %t238 = call ptr @__olang_scope_alloc(ptr %t234, i64 %t237)
  call void @llvm.memcpy.p0.p0.i64(ptr %t238, ptr %t236, i64 %t237, i1 false)
  %t239 = insertvalue { i64, ptr } undef, i64 %t235, 0
  %t240 = insertvalue { i64, ptr } %t239, ptr %t238, 1
  %t241 = load ptr, ptr %l80, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t241, { i64, ptr } %t240)
  br label %bb54
bb54:
  call void @__olang_scope_close(ptr %s4)
  br label %bb55
bb55:
  br label %bb12
bb56:
  %t243 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_16, 0
  %t244 = insertvalue { ptr, ptr } %t243, ptr null, 1
  %t247 = extractvalue { ptr, ptr } %t244, 0
  %t248 = extractvalue { ptr, ptr } %t244, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H1642129570dad448bb7dcc47c334de83(ptr %s0, ptr %s0, ptr %l4, ptr %t247, ptr %t248)
  br label %bb57
bb57:
  %t250 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %s0, ptr %s0, ptr %v1, ptr %l4, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) })
  store { i64, ptr } %t250, ptr %l92
  br label %bb58
bb58:
  call void @__olang_scope_close(ptr %s0)
  %t251 = load { i64, ptr }, ptr %l92, !tbaa !27
  store { i64, ptr } %t251, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2flsp_2ecompilerUnderTest(ptr %v0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i32
  %l7 = alloca i1
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l15 = alloca i32
  %l17 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %s0, ptr %s0, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d18, i32 0, i32 1) })
  %t2 = extractvalue { i32, { i64, ptr } } %t1, 1
  %t3 = extractvalue { i32, { i64, ptr } } %t1, 0
  store i32 %t3, ptr %l3
  %t4 = icmp ne i32 %t3, 0
  br i1 %t4, label %bb2, label %ok.5, !prof !99
ok.5:
  store { i64, ptr } %t2, ptr %l2
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t6, ptr %l1, !tbaa !27
  br label %bb6
bb2:
  %t7 = load i32, ptr %l3, !tbaa !23
  %t8 = ashr i32 %t7, 16
  %t10 = icmp eq i32 %t8, 1
  br i1 %t10, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d19, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb6
bb6:
  %t12 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t12, ptr %l0, !tbaa !27
  %t13 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t15 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t13, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d20, i32 0, i32 1) })
  store i1 %t15, ptr %l7
  br label %bb7
bb7:
  %t16 = load i1, ptr %l7, !tbaa !21
  %t17 = xor i1 %t16, true
  br i1 %t17, label %bb8, label %bb9
bb8:
  %t19 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t19, ptr %l10, !tbaa !27
  %t21 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t22 = extractvalue { i64, ptr } %t21, 0
  store i64 %t22, ptr %l11, !tbaa !24
  %t23 = load i64, ptr %l11, !tbaa !24
  %t24 = mul i64 %t23, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t24)
  %t26 = insertvalue { i64, ptr } undef, i64 %t23, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  store { i64, ptr } %t27, ptr %l12, !tbaa !27
  %t28 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !27
  %t30 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !27
  %t32 = load i64, ptr %l11, !tbaa !24
  %t33 = mul i64 %t32, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t29, ptr %t31, i64 %t33, i1 false)
  %t34 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t34, ptr %l10, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t35 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t35, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t36 = call { i32, { i64, ptr } } @std_2fos_2eCwd(ptr %s0)
  %t37 = extractvalue { i32, { i64, ptr } } %t36, 1
  %t38 = extractvalue { i32, { i64, ptr } } %t36, 0
  store i32 %t38, ptr %l15
  %t39 = icmp ne i32 %t38, 0
  br i1 %t39, label %bb12, label %ok.40, !prof !99
ok.40:
  store { i64, ptr } %t37, ptr %l14
  br label %bb11
bb11:
  %t41 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t41, ptr %l13, !tbaa !27
  br label %bb16
bb12:
  %t42 = load i32, ptr %l15, !tbaa !23
  %t43 = ashr i32 %t42, 16
  %t45 = icmp eq i32 %t43, 1
  store i1 %t45, ptr %l17, !tbaa !21
  %t46 = load i32, ptr %l15, !tbaa !23
  %t47 = ashr i32 %t46, 16
  %t49 = icmp eq i32 %t47, 1
  br i1 %t49, label %bb13, label %bb14
bb13:
  call void @__olang_errpay_pop()
  br label %bb14
bb14:
  br label %bb15
bb15:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) }, ptr %l13, !tbaa !27
  br label %bb16
bb16:
  %t51 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t52 = extractvalue { i64, ptr } %t51, 1
  %t53 = extractvalue { i64, ptr } %t51, 0
  %t54 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t55 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  %t56 = add i64 %t53, %t55
  %t57 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t56)
  call void @olang_textcopy(ptr %t57, ptr %t52, i64 %t53)
  %t58 = getelementptr i8, ptr %t57, i64 %t53
  call void @olang_textcopy(ptr %t58, ptr %t54, i64 %t55)
  %t59 = insertvalue { i64, ptr } undef, i64 %t56, 0
  %t60 = insertvalue { i64, ptr } %t59, ptr %t57, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t60, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2flsp_2ecompiler_2flsp_3aServer_2eaddPending(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l5 = alloca i1
  %l9 = alloca i32
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lsp:Server", ptr %t1, i32 0, i32 4
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eRemove_3cI64_3e(ptr %v0, ptr %t3, i64 %t4)
  store i1 %t7, ptr %l5
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/lsp:Server", ptr %t8, i32 0, i32 4
  %t11 = load i64, ptr %l1, !tbaa !24
  %t14 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eInsert_3cI64_3e(ptr %v0, ptr %t10, i64 0, i64 %t11)
  store i32 %t14, ptr %l9
  %t15 = icmp ne i32 %t14, 0
  br i1 %t15, label %bb3, label %ok.16, !prof !99
ok.16:
  br label %bb2
bb2:
  br label %bb6
bb3:
  br label %bb4
bb4:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/lsp:Server", ptr %t17, i32 0, i32 4
  %t20 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t19, i64 %t20)
  br label %bb5
bb5:
  br label %bb6
bb6:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flsp_2ecompiler_2flsp_3aServer_2eask(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l10 = alloca ptr
  %l12 = alloca { i64, ptr }
  %l15 = alloca ptr
  %l16 = alloca i64
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca i32
  %l20 = alloca i64
  %l21 = alloca i32
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lsp:Server", ptr %t1, i32 0, i32 3
  %t4 = getelementptr %"compiler/lsp:Worker", ptr %t3, i32 0, i32 0
  %t5 = load i32, ptr %t4, !tbaa !23
  %t7 = icmp sle i32 %t5, 0
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2estartWorker(ptr %v0, ptr %v3, ptr %t9)
  br label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb4
bb4:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/lsp:Server", ptr %t11, i32 0, i32 3
  %t14 = getelementptr %"compiler/lsp:Worker", ptr %t13, i32 0, i32 0
  %t15 = load i32, ptr %t14, !tbaa !23
  %t17 = icmp sle i32 %t15, 0
  br i1 %t17, label %bb5, label %bb6
bb5:
  store %olang.scope zeroinitializer, ptr %s2
  %t19 = load ptr, ptr %l0, !tbaa !29
  store ptr %t19, ptr %l10, !tbaa !29
  %t20 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t22 = call { i64, ptr } @compiler_2flsp_2ereply(ptr %v2, ptr %s2, ptr %s2, { i64, ptr } %t20, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d23, i32 0, i32 1) })
  store { i64, ptr } %t22, ptr %l12
  br label %bb7
bb6:
  br label %bb9
bb7:
  %t23 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t24 = extractvalue { i64, ptr } %t23, 0
  %t25 = extractvalue { i64, ptr } %t23, 1
  %t26 = mul i64 %t24, 1
  %t27 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t26)
  call void @llvm.memcpy.p0.p0.i64(ptr %t27, ptr %t25, i64 %t26, i1 false)
  %t28 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t29 = insertvalue { i64, ptr } %t28, ptr %t27, 1
  %t30 = load ptr, ptr %l10, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2esend(ptr %v0, ptr %s2, ptr %t30, { i64, ptr } %t29)
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb9:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/lsp:Server", ptr %t32, i32 0, i32 5
  store ptr %t34, ptr %l15, !tbaa !29
  %t35 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t35, ptr %l17, !tbaa !27
  %t36 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s0, i64 10)
  %t37 = extractvalue { i32, i64 } %t36, 1
  %t38 = extractvalue { i32, i64 } %t36, 0
  store i32 %t38, ptr %l19
  %t39 = icmp ne i32 %t38, 0
  br i1 %t39, label %bb11, label %ok.40, !prof !99
ok.40:
  store i64 %t37, ptr %l18
  br label %bb10
bb10:
  %t41 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t42 = load i64, ptr %l18, !tbaa !24
  %t43 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v2, { i64, ptr } %t41, i64 %t42)
  %t44 = extractvalue { i32, i64 } %t43, 1
  %t45 = extractvalue { i32, i64 } %t43, 0
  store i32 %t45, ptr %l21
  %t46 = icmp ne i32 %t45, 0
  br i1 %t46, label %bb14, label %ok.47, !prof !99
ok.47:
  store i64 %t44, ptr %l20
  br label %bb13
bb11:
  br label %bb12
bb12:
  store i64 -1, ptr %l16, !tbaa !24
  br label %bb15
bb13:
  %t48 = load i64, ptr %l20, !tbaa !24
  store i64 %t48, ptr %l16, !tbaa !24
  br label %bb15
bb14:
  br label %bb12
bb15:
  %t49 = load ptr, ptr %l15, !tbaa !29
  %t50 = load i64, ptr %l16, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t49, i64 %t50)
  br label %bb16
bb16:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/lsp:Server", ptr %t51, i32 0, i32 3
  %t54 = getelementptr %"compiler/lsp:Worker", ptr %t53, i32 0, i32 1
  %t55 = load i32, ptr %t54, !tbaa !23
  call void @compiler_2fsession_2eWriteFramed(ptr %v1, i32 %t55, { i64, ptr } %a1)
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flsp_2ecompiler_2flsp_3aServer_2echanged(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca i64
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t5 = call i64 @compiler_2flsp_2ecompiler_2flsp_3aServer_2eslotOf(ptr %v0, ptr %v1, ptr %t1, { i64, ptr } %t2)
  store i64 %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load i64, ptr %l6, !tbaa !24
  store i64 %t6, ptr %l3, !tbaa !24
  %t7 = load i64, ptr %l3, !tbaa !24
  %t9 = icmp slt i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t13 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2eopened(ptr %v0, ptr %v1, ptr %v2, ptr %t11, { i64, ptr } %t12, { i64, ptr } %t13)
  br label %bb4
bb3:
  br label %bb5
bb4:
  br label %ret
bb5:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load i64, ptr %l3, !tbaa !24
  %t19 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2esetText(ptr %v0, ptr %v2, ptr %t17, i64 %t18, { i64, ptr } %t19)
  br label %bb6
bb6:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flsp_2ecompiler_2flsp_3aServer_2ecloseWorker(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lsp:Server", ptr %t1, i32 0, i32 3
  %t4 = getelementptr %"compiler/lsp:Worker", ptr %t3, i32 0, i32 1
  %t5 = load i32, ptr %t4, !tbaa !23
  call void @compiler_2fsession_2eCloseFd(i32 %t5)
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/lsp:Server", ptr %t7, i32 0, i32 3
  %t10 = getelementptr %"compiler/lsp:Worker", ptr %t9, i32 0, i32 2
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t13 = icmp eq ptr %t11, null
  br i1 %t13, label %bb2, label %bb3
bb2:
  call void @__olang_check_failed(ptr @olang_loc_a8eebe32341e04e6_239ed324021d536a)
  unreachable
bb3:
  br label %bb4
bb4:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/lsp:Server", ptr %t15, i32 0, i32 3
  %t18 = getelementptr %"compiler/lsp:Worker", ptr %t17, i32 0, i32 2
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t22 = getelementptr %"compiler/session:Reader", ptr %t19, i32 0, i32 0
  %t23 = load i32, ptr %t22, !tbaa !23
  call void @compiler_2fsession_2eCloseFd(i32 %t23)
  br label %bb5
bb5:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/lsp:Server", ptr %t25, i32 0, i32 3
  %t28 = getelementptr %"compiler/lsp:Worker", ptr %t27, i32 0, i32 0
  store i32 -1, ptr %t28, !tbaa !23
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/lsp:Server", ptr %t29, i32 0, i32 3
  %t32 = getelementptr %"compiler/lsp:Worker", ptr %t31, i32 0, i32 1
  store i32 -1, ptr %t32, !tbaa !23
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flsp_2ecompiler_2flsp_3aServer_2eclosed(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l9 = alloca i64
  %l15 = alloca ptr
  %l17 = alloca ptr
  %l18 = alloca i64
  %l22 = alloca ptr
  %l25 = alloca { i64, ptr }
  %l29 = alloca i64
  %l31 = alloca i64
  %l36 = alloca { i64, ptr }
  %l37 = alloca ptr
  %l39 = alloca { i64, ptr }
  %l47 = alloca i1
  %l48 = alloca ptr
  %l51 = alloca i64
  %l53 = alloca i64
  %l54 = alloca i64
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i64 @compiler_2flsp_2ecompiler_2flsp_3aServer_2eslotOf(ptr %v0, ptr %v1, ptr %t1, { i64, ptr } %a1)
  store i64 %t5, ptr %l9
  br label %bb1
bb1:
  %t6 = load i64, ptr %l9, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  %t7 = load i64, ptr %l2, !tbaa !24
  %t9 = icmp slt i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb3:
  br label %bb4
bb4:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/lsp:Server", ptr %t11, i32 0, i32 1
  %t14 = load i64, ptr %l2, !tbaa !24
  %t17 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eAt__Ha6317692879988aa8c889b506af3dc4d(ptr %v0, ptr %v0, ptr %t13, i64 %t14)
  store ptr %t17, ptr %l15
  br label %bb5
bb5:
  %t18 = load ptr, ptr %l15, !tbaa !29
  store ptr %t18, ptr %l3, !tbaa !29
  %t19 = load ptr, ptr %l3, !tbaa !29
  %t21 = getelementptr %"compiler/lsp:Doc", ptr %t19, i32 0, i32 4
  store i1 false, ptr %t21, !tbaa !21
  %t22 = load ptr, ptr %l3, !tbaa !29
  store ptr %t22, ptr %l17, !tbaa !29
  %t23 = ptrtoint ptr %v0 to i64
  store i64 %t23, ptr %l18, !tbaa !24
  %t24 = load i1, ptr @olang_2esole_2eArray_3cmut_20compiler_2flsp_3aDoc_26_3e_2e_2d1
  br i1 %t24, label %bb6, label %bb7
bb6:
  %t26 = load ptr, ptr %l17, !tbaa !29
  %t27 = call ptr @__olang_region_or(ptr %t26, ptr %v0)
  %t28 = ptrtoint ptr %t27 to i64
  store i64 %t28, ptr %l18, !tbaa !24
  br label %bb7
bb7:
  %t29 = load ptr, ptr %l3, !tbaa !29
  %t31 = getelementptr %"compiler/lsp:Doc", ptr %t29, i32 0, i32 3
  %t32 = load i64, ptr %l18
  %t33 = inttoptr i64 %t32 to ptr
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eClear(ptr %t33, ptr %t31)
  br label %bb8
bb8:
  %t35 = load ptr, ptr %l0, !tbaa !29
  store ptr %t35, ptr %l22, !tbaa !29
  %t36 = load ptr, ptr %l3, !tbaa !29
  %t38 = getelementptr %"compiler/lsp:Doc", ptr %t36, i32 0, i32 0
  %t39 = load { i64, ptr }, ptr %t38, !tbaa !27
  %t41 = call { i64, ptr } @compiler_2flsp_2epublish(ptr %v0, ptr %s0, ptr %s0, { i64, ptr } %t39, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d24, i32 0, i32 1) })
  store { i64, ptr } %t41, ptr %l25
  br label %bb9
bb9:
  %t42 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t42, 0
  %t44 = extractvalue { i64, ptr } %t42, 1
  %t45 = mul i64 %t43, 1
  %t46 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t45)
  call void @llvm.memcpy.p0.p0.i64(ptr %t46, ptr %t44, i64 %t45, i1 false)
  %t47 = insertvalue { i64, ptr } undef, i64 %t43, 0
  %t48 = insertvalue { i64, ptr } %t47, ptr %t46, 1
  %t49 = load ptr, ptr %l22, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2esend(ptr %v0, ptr %s0, ptr %t49, { i64, ptr } %t48)
  br label %bb10
bb10:
  %t51 = load ptr, ptr %l3, !tbaa !29
  %t53 = getelementptr %"compiler/lsp:Doc", ptr %t51, i32 0, i32 6
  store ptr %t53, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb11
bb11:
  store %olang.scope zeroinitializer, ptr %s3
  %t55 = load i64, ptr %l5, !tbaa !24
  store i64 %t55, ptr %l29, !tbaa !24
  %t56 = load ptr, ptr %l4, !tbaa !29
  %t58 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t56)
  store i64 %t58, ptr %l31
  br label %bb12
bb12:
  %t59 = load i64, ptr %l29, !tbaa !24
  %t60 = load i64, ptr %l31, !tbaa !24
  %t61 = icmp slt i64 %t59, %t60
  %t63 = xor i1 %t61, true
  br i1 %t63, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s3)
  br label %bb20
bb14:
  br label %bb15
bb15:
  %t65 = load ptr, ptr %l4, !tbaa !29
  %t66 = load i64, ptr %l5, !tbaa !24
  %t69 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t65, i64 %t66)
  store { i64, ptr } %t69, ptr %l36
  br label %bb16
bb16:
  %t70 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t71 = load ptr, ptr %l0, !tbaa !29
  store ptr %t71, ptr %l37, !tbaa !29
  %t74 = call { i64, ptr } @compiler_2flsp_2epublish(ptr %v0, ptr %s3, ptr %s3, { i64, ptr } %t70, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d25, i32 0, i32 1) })
  store { i64, ptr } %t74, ptr %l39
  br label %bb17
bb17:
  %t75 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t76 = extractvalue { i64, ptr } %t75, 0
  %t77 = extractvalue { i64, ptr } %t75, 1
  %t78 = mul i64 %t76, 1
  %t79 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t78)
  call void @llvm.memcpy.p0.p0.i64(ptr %t79, ptr %t77, i64 %t78, i1 false)
  %t80 = insertvalue { i64, ptr } undef, i64 %t76, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t79, 1
  %t82 = load ptr, ptr %l37, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2esend(ptr %v0, ptr %s3, ptr %t82, { i64, ptr } %t81)
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s3)
  br label %bb19
bb19:
  %t84 = load i64, ptr %l5, !tbaa !24
  %t86 = add i64 %t84, 1
  store i64 %t86, ptr %l5, !tbaa !24
  br label %bb11
bb20:
  %t88 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2estopWorker(ptr %v0, ptr %t88)
  br label %bb21
bb21:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/lsp:Server", ptr %t90, i32 0, i32 4
  %t93 = load i64, ptr %l2, !tbaa !24
  %t96 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eRemove_3cI64_3e(ptr %v0, ptr %t92, i64 %t93)
  store i1 %t96, ptr %l47
  br label %bb22
bb22:
  %t97 = load ptr, ptr %l0, !tbaa !29
  store ptr %t97, ptr %l48, !tbaa !29
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/lsp:Server", ptr %t98, i32 0, i32 4
  %t102 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t100)
  store i64 %t102, ptr %l51
  br label %bb23
bb23:
  %t103 = load i64, ptr %l51, !tbaa !24
  %t104 = icmp sgt i64 %t103, 0
  br i1 %t104, label %bb24, label %bb25
bb24:
  %t106 = call i64 @std_2ftime_2eNow()
  store i64 %t106, ptr %l54
  br label %bb26
bb25:
  store i64 0, ptr %l53, !tbaa !24
  br label %bb27
bb26:
  %t107 = load i64, ptr @G_2ecompiler_2flsp_2eSettleNs, !tbaa !24
  %t108 = load i64, ptr %l54, !tbaa !24
  %t110 = add i64 %t108, %t107
  store i64 %t110, ptr %l53, !tbaa !24
  br label %bb27
bb27:
  %t112 = load i64, ptr %l53, !tbaa !24
  %t113 = load ptr, ptr %l48, !tbaa !29
  %t114 = getelementptr %"compiler/lsp:Server", ptr %t113, i32 0, i32 6
  store i64 %t112, ptr %t114, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flsp_2ecompiler_2flsp_3aServer_2edrain(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca [1 x i32]
  %l3 = alloca { i64, ptr }
  %l6 = alloca i64
  %l8 = alloca i1
  %l13 = alloca i64
  %l17 = alloca i1
  %l20 = alloca i64
  %l22 = alloca i1
  %l25 = alloca i64
  %l28 = alloca i64
  %l44 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lsp:Server", ptr %t1, i32 0, i32 4
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load i64, ptr %l6, !tbaa !24
  %t7 = icmp sgt i64 %t6, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/lsp:Server", ptr %t9, i32 0, i32 3
  %t12 = getelementptr %"compiler/lsp:Worker", ptr %t11, i32 0, i32 0
  %t13 = load i32, ptr %t12, !tbaa !23
  %t15 = icmp sle i32 %t13, 0
  store i1 %t15, ptr %l8, !tbaa !21
  br label %bb4
bb3:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb4
bb4:
  %t17 = load i1, ptr %l8, !tbaa !21
  br i1 %t17, label %bb5, label %bb6
bb5:
  %t18 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2estartWorker(ptr %v0, ptr %v1, ptr %t18)
  br label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb8
bb8:
  %t20 = call i64 @std_2ftime_2eNow()
  store i64 %t20, ptr %l13
  br label %bb9
bb9:
  %t21 = load i64, ptr %l13, !tbaa !24
  store i64 %t21, ptr %l1, !tbaa !24
  br label %bb10
bb10:
  store %olang.scope zeroinitializer, ptr %s2
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/lsp:Server", ptr %t22, i32 0, i32 3
  %t25 = getelementptr %"compiler/lsp:Worker", ptr %t24, i32 0, i32 0
  %t26 = load i32, ptr %t25, !tbaa !23
  %t28 = icmp sgt i32 %t26, 0
  br i1 %t28, label %bb11, label %bb12
bb11:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/lsp:Server", ptr %t30, i32 0, i32 4
  %t34 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t32)
  store i64 %t34, ptr %l20
  br label %bb13
bb12:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb18
bb13:
  %t35 = load i64, ptr %l20, !tbaa !24
  %t36 = icmp sgt i64 %t35, 0
  br i1 %t36, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb17
bb15:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/lsp:Server", ptr %t38, i32 0, i32 5
  %t42 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t40)
  store i64 %t42, ptr %l25
  br label %bb16
bb16:
  %t43 = load i64, ptr %l25, !tbaa !24
  %t44 = icmp sgt i64 %t43, 0
  store i1 %t44, ptr %l22, !tbaa !21
  br label %bb17
bb17:
  %t46 = load i1, ptr %l22, !tbaa !21
  store i1 %t46, ptr %l17, !tbaa !21
  br label %bb18
bb18:
  %t47 = load i1, ptr %l17, !tbaa !21
  %t48 = xor i1 %t47, true
  br i1 %t48, label %bb19, label %bb20
bb19:
  call void @__olang_scope_close(ptr %s2)
  br label %bb36
bb20:
  br label %bb21
bb21:
  %t50 = call i64 @std_2ftime_2eNow()
  store i64 %t50, ptr %l28
  br label %bb22
bb22:
  %t51 = load i64, ptr %l1, !tbaa !24
  %t52 = load i64, ptr %l28, !tbaa !24
  %t54 = sub i64 %t52, %t51
  %t55 = load i64, ptr @G_2ecompiler_2flsp_2eStuckNs, !tbaa !24
  %t58 = icmp sgt i64 %t54, %t55
  br i1 %t58, label %bb23, label %bb24
bb23:
  store %olang.scope zeroinitializer, ptr %s3
  %t60 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2eworkerLost(ptr %v0, ptr %s3, ptr %t60, { i64, ptr } { i64 49, ptr getelementptr inbounds (<{ i64, [49 x i8] }>, ptr @.d26, i32 0, i32 1) })
  br label %bb25
bb24:
  br label %bb26
bb25:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s2)
  br label %ret
bb26:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/lsp:Server", ptr %t62, i32 0, i32 3
  %t65 = getelementptr %"compiler/lsp:Worker", ptr %t64, i32 0, i32 2
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t68 = icmp eq ptr %t66, null
  br i1 %t68, label %bb27, label %bb28
bb27:
  call void @__olang_check_failed(ptr @olang_loc_43d07951ce1dba96_20fc5bf2a8432eaa)
  unreachable
bb28:
  br label %bb29
bb29:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/lsp:Server", ptr %t70, i32 0, i32 3
  %t73 = getelementptr %"compiler/lsp:Worker", ptr %t72, i32 0, i32 2
  %t74 = load ptr, ptr %t73, !tbaa !29
  %t77 = getelementptr %"compiler/session:Reader", ptr %t74, i32 0, i32 0
  %t78 = load i32, ptr %t77, !tbaa !23
  %t80 = insertvalue [1 x i32] undef, i32 %t78, 0
  store [1 x i32] %t80, ptr %l2
  %t83 = insertvalue { i64, ptr } undef, i64 1, 0
  %t84 = insertvalue { i64, ptr } %t83, ptr %l2, 1
  %t86 = call { i64, ptr } @compiler_2fsession_2eReadable(ptr %s2, ptr %s2, { i64, ptr } %t84, i32 1000)
  store { i64, ptr } %t86, ptr %l44
  br label %bb30
bb30:
  %t87 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t87, ptr %l3, !tbaa !27
  %t88 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !27
  %t90 = getelementptr i1, ptr %t89, i64 0
  %t91 = load i1, ptr %t90, !tbaa !31
  br i1 %t91, label %bb31, label %bb32
bb31:
  %t93 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2efromWorker(ptr %v0, ptr %t93)
  br label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s2)
  br label %bb35
bb35:
  br label %bb10
bb36:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flsp_2ecompiler_2flsp_3aServer_2edue(ptr %v0, ptr %a0, i64 %a1) #0 {
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
  %l14 = alloca i64
  %l18 = alloca i64
  %l21 = alloca i64
  %l42 = alloca i1
  %l46 = alloca ptr
  %l49 = alloca i1
  %l54 = alloca ptr
  %l58 = alloca i1
  %l63 = alloca ptr
  %l64 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2estopWorker(ptr %v0, ptr %t1)
  br label %bb1
bb1:
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t4 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2eaddPending(ptr %v0, ptr %t3, i64 %t4)
  br label %bb2
bb2:
  store i64 0, ptr %l2, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/lsp:Server", ptr %t7, i32 0, i32 1
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eLen_Ha7d56d00f5631ac8d39ace71211767ab(ptr %v0, ptr %t9)
  store i64 %t11, ptr %l14
  br label %bb3
bb3:
  %t12 = load i64, ptr %l14, !tbaa !24
  store i64 %t12, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t13 = load i64, ptr %l3, !tbaa !24
  %t14 = load i64, ptr %l2, !tbaa !24
  %t17 = icmp sgt i64 %t13, %t14
  br i1 %t17, label %bb4, label %bb5
bb4:
  %t19 = load i64, ptr %l4, !tbaa !24
  %t21 = icmp sgt i64 %t19, 0
  br i1 %t21, label %bb6, label %bb7
bb5:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb9
bb6:
  %t23 = load i64, ptr %l3, !tbaa !24
  %t24 = load i64, ptr %l2, !tbaa !24
  %t27 = sub i64 %t23, %t24
  %t28 = load i64, ptr %l4, !tbaa !24
  %t31 = add i64 %t27, %t28
  %t33 = sub i64 %t31, 1
  %t34 = load i64, ptr %l4, !tbaa !24
  %t37 = sdiv i64 %t33, %t34
  store i64 %t37, ptr %l21, !tbaa !24
  br label %bb8
bb7:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb8
bb8:
  %t39 = load i64, ptr %l21, !tbaa !24
  store i64 %t39, ptr %l18, !tbaa !24
  br label %bb9
bb9:
  %t40 = load i64, ptr %l18, !tbaa !24
  store i64 %t40, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb10
bb10:
  %t41 = load i64, ptr %l6, !tbaa !24
  %t42 = load i64, ptr %l5, !tbaa !24
  %t45 = icmp slt i64 %t41, %t42
  %t47 = xor i1 %t45, true
  br i1 %t47, label %bb11, label %bb12
bb11:
  br label %bb28
bb12:
  br label %bb13
bb13:
  %t49 = load i64, ptr %l2, !tbaa !24
  %t50 = load i64, ptr %l6, !tbaa !24
  %t51 = load i64, ptr %l4, !tbaa !24
  %t54 = mul i64 %t50, %t51
  %t57 = add i64 %t49, %t54
  store i64 %t57, ptr %l7, !tbaa !24
  %t59 = load i64, ptr %l7, !tbaa !24
  %t60 = load i64, ptr %l1, !tbaa !24
  %t63 = icmp ne i64 %t59, %t60
  br i1 %t63, label %bb14, label %bb15
bb14:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/lsp:Server", ptr %t65, i32 0, i32 1
  %t68 = load i64, ptr %l7, !tbaa !24
  %t71 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eAt__Ha6317692879988aa8c889b506af3dc4d(ptr %v0, ptr %v0, ptr %t67, i64 %t68)
  store ptr %t71, ptr %l46
  br label %bb16
bb15:
  store i1 false, ptr %l42, !tbaa !21
  br label %bb17
bb16:
  %t72 = load ptr, ptr %l46, !tbaa !29
  %t74 = getelementptr %"compiler/lsp:Doc", ptr %t72, i32 0, i32 4
  %t75 = load i1, ptr %t74, !tbaa !21
  store i1 %t75, ptr %l42, !tbaa !21
  br label %bb17
bb17:
  %t77 = load i1, ptr %l42, !tbaa !21
  br i1 %t77, label %bb18, label %bb19
bb18:
  %t78 = load i64, ptr %l1, !tbaa !24
  store i64 %t78, ptr %l8, !tbaa !24
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/lsp:Server", ptr %t80, i32 0, i32 1
  %t83 = load i64, ptr %l7, !tbaa !24
  %t86 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eAt__Ha6317692879988aa8c889b506af3dc4d(ptr %v0, ptr %v0, ptr %t82, i64 %t83)
  store ptr %t86, ptr %l54
  br label %bb20
bb19:
  store i1 false, ptr %l49, !tbaa !21
  br label %bb22
bb20:
  %t87 = load ptr, ptr %l54, !tbaa !29
  %t89 = getelementptr %"compiler/lsp:Doc", ptr %t87, i32 0, i32 5
  %t90 = load i64, ptr %l8, !tbaa !24
  %t93 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %t89, i64 %t90)
  store i1 %t93, ptr %l58
  br label %bb21
bb21:
  %t94 = load i1, ptr %l58, !tbaa !21
  store i1 %t94, ptr %l49, !tbaa !21
  br label %bb22
bb22:
  %t95 = load i1, ptr %l49, !tbaa !21
  br i1 %t95, label %bb23, label %bb24
bb23:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = load i64, ptr %l7, !tbaa !24
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2eaddPending(ptr %v0, ptr %t96, i64 %t97)
  br label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb26
bb26:
  br label %bb27
bb27:
  %t100 = load i64, ptr %l6, !tbaa !24
  %t102 = add i64 %t100, 1
  store i64 %t102, ptr %l6, !tbaa !24
  br label %bb10
bb28:
  %t104 = load ptr, ptr %l0, !tbaa !29
  store ptr %t104, ptr %l63, !tbaa !29
  %t105 = call i64 @std_2ftime_2eNow()
  store i64 %t105, ptr %l64
  br label %bb29
bb29:
  %t106 = load i64, ptr @G_2ecompiler_2flsp_2eSettleNs, !tbaa !24
  %t107 = load i64, ptr %l64, !tbaa !24
  %t109 = add i64 %t107, %t106
  %t111 = load ptr, ptr %l63, !tbaa !29
  %t112 = getelementptr %"compiler/lsp:Server", ptr %t111, i32 0, i32 6
  store i64 %t109, ptr %t112, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flsp_2ecompiler_2flsp_3aServer_2efromWorker(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l11 = alloca i1
  %l15 = alloca i32
  %l19 = alloca i64
  %l21 = alloca i1
  %l24 = alloca i64
  %l27 = alloca { i64, ptr }
  %l31 = alloca i64
  %l35 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l42 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l49 = alloca i32
  %l51 = alloca i1
  %l53 = alloca i1
  %l57 = alloca i1
  %l58 = alloca ptr
  %l60 = alloca ptr
  %l61 = alloca i32
  %l63 = alloca i1
  %l66 = alloca i64
  %l68 = alloca { i64, ptr }
  %l69 = alloca { i64, ptr }
  %l70 = alloca i64
  %l71 = alloca i32
  %l72 = alloca i64
  %l73 = alloca i32
  %l77 = alloca i1
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s8 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lsp:Server", ptr %t1, i32 0, i32 3
  %t4 = getelementptr %"compiler/lsp:Worker", ptr %t3, i32 0, i32 2
  %t5 = load ptr, ptr %t4, !tbaa !29
  %t7 = icmp eq ptr %t5, null
  br i1 %t7, label %bb1, label %bb2
bb1:
  call void @__olang_check_failed(ptr @olang_loc_824396f7e8872934_1f4412bc0bc5f5e0)
  unreachable
bb2:
  br label %bb3
bb3:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/lsp:Server", ptr %t9, i32 0, i32 3
  %t12 = getelementptr %"compiler/lsp:Worker", ptr %t11, i32 0, i32 2
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = call i1 @compiler_2fsession_2ecompiler_2fsession_3aReader_2eFill(ptr %v0, ptr %t13)
  store i1 %t15, ptr %l11
  br label %bb4
bb4:
  %t16 = load i1, ptr %l11, !tbaa !21
  %t17 = xor i1 %t16, true
  br i1 %t17, label %bb5, label %bb6
bb5:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/lsp:Server", ptr %t19, i32 0, i32 3
  %t22 = getelementptr %"compiler/lsp:Worker", ptr %t21, i32 0, i32 0
  %t23 = load i32, ptr %t22, !tbaa !23
  %t25 = call i32 @compiler_2fsession_2eReap(i32 %t23)
  store i32 %t25, ptr %l15
  br label %bb7
bb6:
  br label %bb28
bb7:
  %t26 = load i32, ptr %l15, !tbaa !23
  store i32 %t26, ptr %l1, !tbaa !23
  %t27 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2ecloseWorker(ptr %v0, ptr %t27)
  br label %bb8
bb8:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/lsp:Server", ptr %t29, i32 0, i32 4
  %t33 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t31)
  store i64 %t33, ptr %l19
  br label %bb9
bb9:
  %t34 = load i64, ptr %l19, !tbaa !24
  %t35 = icmp sgt i64 %t34, 0
  br i1 %t35, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb13
bb11:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/lsp:Server", ptr %t37, i32 0, i32 5
  %t41 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t39)
  store i64 %t41, ptr %l24
  br label %bb12
bb12:
  %t42 = load i64, ptr %l24, !tbaa !24
  %t43 = icmp sgt i64 %t42, 0
  store i1 %t43, ptr %l21, !tbaa !21
  br label %bb13
bb13:
  %t45 = load i1, ptr %l21, !tbaa !21
  br i1 %t45, label %bb14, label %bb15
bb14:
  store %olang.scope zeroinitializer, ptr %s2
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/lsp:Server", ptr %t46, i32 0, i32 3
  %t49 = getelementptr %"compiler/lsp:Worker", ptr %t48, i32 0, i32 0
  store i32 -1, ptr %t49, !tbaa !23
  store { i64, ptr } { i64 43, ptr getelementptr inbounds (<{ i64, [43 x i8] }>, ptr @.d27, i32 0, i32 1) }, ptr %l27, !tbaa !27
  %t50 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t50, ptr %l2, !tbaa !27
  %t52 = load i32, ptr %l1, !tbaa !23
  %t54 = icmp sgt i32 %t52, 128
  br i1 %t54, label %bb16, label %bb17
bb15:
  br label %bb27
bb16:
  store %olang.scope zeroinitializer, ptr %s3
  %t56 = ptrtoint ptr %s2 to i64
  store i64 %t56, ptr %l31, !tbaa !24
  %t57 = load i1, ptr @olang_2esole_2ecompiler__2flsp__2ecompiler__2flsp__3aServer__2efromWorker_2elocal_2e2
  br i1 %t57, label %bb18, label %bb19
bb17:
  br label %bb25
bb18:
  %t59 = call ptr @__olang_region_make(ptr %s2)
  %t60 = ptrtoint ptr %t59 to i64
  store i64 %t60, ptr %l31, !tbaa !24
  br label %bb19
bb19:
  %t61 = load i32, ptr %l1, !tbaa !23
  %t63 = sub i32 %t61, 128
  %t65 = call { i64, ptr } @compiler_2fbuild_2eSignalName(ptr %s3, i32 %t63)
  store { i64, ptr } %t65, ptr %l35
  br label %bb20
bb20:
  %t66 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t67 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  %t68 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t69 = extractvalue { i64, ptr } %t68, 1
  %t70 = extractvalue { i64, ptr } %t68, 0
  %t71 = add i64 %t67, %t70
  %t72 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d29, i32 0, i32 1) }, 1
  %t73 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d29, i32 0, i32 1) }, 0
  %t74 = add i64 %t71, %t73
  %t75 = load i64, ptr %l31
  %t76 = inttoptr i64 %t75 to ptr
  %t77 = call ptr @__olang_scope_alloc(ptr %t76, i64 %t74)
  call void @olang_textcopy(ptr %t77, ptr %t66, i64 %t67)
  %t78 = getelementptr i8, ptr %t77, i64 %t67
  call void @olang_textcopy(ptr %t78, ptr %t69, i64 %t70)
  %t79 = getelementptr i8, ptr %t78, i64 %t70
  call void @olang_textcopy(ptr %t79, ptr %t72, i64 %t73)
  %t80 = insertvalue { i64, ptr } undef, i64 %t74, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t77, 1
  store { i64, ptr } %t81, ptr %l36, !tbaa !27
  %t82 = load i1, ptr @olang_2esole_2ecompiler__2flsp__2ecompiler__2flsp__3aServer__2efromWorker_2elocal_2e2
  br i1 %t82, label %bb21, label %bb22
bb21:
  %t84 = load i64, ptr %l31
  %t85 = inttoptr i64 %t84 to ptr
  %t86 = load { i64, ptr }, ptr %l36
  %t87 = extractvalue { i64, ptr } %t86, 1
  %t88 = call ptr @__olang_region_or(ptr %t87, ptr null)
  %t89 = icmp ne ptr %t88, null
  %t90 = select i1 %t89, ptr %t88, ptr null
  %t91 = icmp eq ptr %t90, %t85
  call void @__olang_region_settle(ptr %t85, i1 %t91)
  br label %bb22
bb22:
  %t92 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t92, ptr %l38, !tbaa !27
  %t93 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t93, ptr %l2, !tbaa !27
  %t94 = load i1, ptr @olang_2esole_2ecompiler__2flsp__2ecompiler__2flsp__3aServer__2efromWorker_2elocal_2e2
  br i1 %t94, label %bb23, label %bb24
bb23:
  %t96 = load { i64, ptr }, ptr %l38
  %t97 = extractvalue { i64, ptr } %t96, 1
  call void @__olang_region_release(ptr %t97)
  store { i64, ptr } zeroinitializer, ptr %l38
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s3)
  br label %bb25
bb25:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t99 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2eworkerLost(ptr %v0, ptr %s2, ptr %t98, { i64, ptr } %t99)
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s2)
  br label %bb27
bb27:
  br label %ret
bb28:
  br label %bb29
bb29:
  store %olang.scope zeroinitializer, ptr %s5
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/lsp:Server", ptr %t102, i32 0, i32 3
  %t105 = getelementptr %"compiler/lsp:Worker", ptr %t104, i32 0, i32 2
  %t106 = load ptr, ptr %t105, !tbaa !29
  %t108 = icmp eq ptr %t106, null
  br i1 %t108, label %bb30, label %bb31
bb30:
  call void @__olang_check_failed(ptr @olang_loc_b5606d6e3fe22ec3_be86f13ccb1ff2ff)
  unreachable
bb31:
  br label %bb32
bb32:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/lsp:Server", ptr %t110, i32 0, i32 3
  %t113 = getelementptr %"compiler/lsp:Worker", ptr %t112, i32 0, i32 2
  %t114 = load ptr, ptr %t113, !tbaa !29
  %t116 = call { i32, { i64, ptr } } @compiler_2fsession_2ecompiler_2fsession_3aReader_2eNext(ptr %v0, ptr %s5, ptr %t114)
  %t117 = extractvalue { i32, { i64, ptr } } %t116, 1
  %t118 = extractvalue { i32, { i64, ptr } } %t116, 0
  store i32 %t118, ptr %l49
  %t119 = icmp ne i32 %t118, 0
  br i1 %t119, label %bb34, label %ok.120, !prof !99
ok.120:
  store { i64, ptr } %t117, ptr %l48
  br label %bb33
bb33:
  %t121 = load { i64, ptr }, ptr %l48, !tbaa !27
  store { i64, ptr } %t121, ptr %l42, !tbaa !27
  br label %bb36
bb34:
  %t122 = load i32, ptr %l49, !tbaa !23
  %t123 = ashr i32 %t122, 16
  %t125 = icmp eq i32 %t123, 1
  store i1 %t125, ptr %l51, !tbaa !21
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s5)
  br label %bb62
bb36:
  %t126 = load { i64, ptr }, ptr %l42, !tbaa !27
  store { i64, ptr } %t126, ptr %l3, !tbaa !27
  %t127 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t129 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s5, ptr %s5, { i64, ptr } %t127, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d30, i32 0, i32 1) })
  store i1 %t129, ptr %l53
  br label %bb37
bb37:
  %t130 = load i1, ptr %l53, !tbaa !21
  br i1 %t130, label %bb38, label %bb39
bb38:
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t132 = load { i64, ptr }, ptr %l3, !tbaa !27
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2enote(ptr %v0, ptr %s5, ptr %t131, { i64, ptr } %t132)
  br label %bb40
bb39:
  br label %bb41
bb40:
  call void @__olang_scope_close(ptr %s5)
  br label %bb61
bb41:
  %t135 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t137 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s5, ptr %s5, { i64, ptr } %t135, { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d31, i32 0, i32 1) })
  store i1 %t137, ptr %l57
  br label %bb42
bb42:
  %t138 = load i1, ptr %l57, !tbaa !21
  br i1 %t138, label %bb43, label %bb44
bb43:
  store %olang.scope zeroinitializer, ptr %s8
  %t139 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t141 = call { i32, ptr } @std_2fjson_2eJson_2eParse(ptr %s5, ptr %s8, { i64, ptr } %t139)
  %t142 = extractvalue { i32, ptr } %t141, 1
  %t143 = extractvalue { i32, ptr } %t141, 0
  store i32 %t143, ptr %l61
  %t144 = icmp ne i32 %t143, 0
  br i1 %t144, label %bb46, label %ok.145, !prof !99
ok.145:
  store ptr %t142, ptr %l60
  br label %bb45
bb44:
  br label %bb59
bb45:
  %t146 = load ptr, ptr %l60, !tbaa !29
  store ptr %t146, ptr %l58, !tbaa !29
  br label %bb50
bb46:
  %t147 = load i32, ptr %l61, !tbaa !23
  %t148 = ashr i32 %t147, 16
  %t150 = icmp eq i32 %t148, 1
  store i1 %t150, ptr %l63, !tbaa !21
  %t151 = load i32, ptr %l61, !tbaa !23
  %t152 = ashr i32 %t151, 16
  %t154 = icmp eq i32 %t152, 1
  br i1 %t154, label %bb47, label %bb48
bb47:
  call void @__olang_errpay_pop()
  br label %bb48
bb48:
  br label %bb49
bb49:
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s5)
  br label %bb61
bb50:
  %t156 = load ptr, ptr %l58, !tbaa !29
  %t159 = call { i64, ptr } @compiler_2flsp_2eidOf(ptr %s8, ptr %s8, ptr %t156)
  store { i64, ptr } %t159, ptr %l68
  br label %bb51
bb51:
  %t160 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t161 = extractvalue { i64, ptr } %t160, 0
  %t162 = extractvalue { i64, ptr } %t160, 1
  %t163 = mul i64 %t161, 1
  %t164 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t163)
  call void @llvm.memcpy.p0.p0.i64(ptr %t164, ptr %t162, i64 %t163, i1 false)
  %t165 = insertvalue { i64, ptr } undef, i64 %t161, 0
  %t166 = insertvalue { i64, ptr } %t165, ptr %t164, 1
  store { i64, ptr } %t166, ptr %l69, !tbaa !27
  %t167 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s8, i64 10)
  %t168 = extractvalue { i32, i64 } %t167, 1
  %t169 = extractvalue { i32, i64 } %t167, 0
  store i32 %t169, ptr %l71
  %t170 = icmp ne i32 %t169, 0
  br i1 %t170, label %bb53, label %ok.171, !prof !99
ok.171:
  store i64 %t168, ptr %l70
  br label %bb52
bb52:
  %t172 = load { i64, ptr }, ptr %l69, !tbaa !27
  %t173 = load i64, ptr %l70, !tbaa !24
  %t174 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %s8, { i64, ptr } %t172, i64 %t173)
  %t175 = extractvalue { i32, i64 } %t174, 1
  %t176 = extractvalue { i32, i64 } %t174, 0
  store i32 %t176, ptr %l73
  %t177 = icmp ne i32 %t176, 0
  br i1 %t177, label %bb56, label %ok.178, !prof !99
ok.178:
  store i64 %t175, ptr %l72
  br label %bb55
bb53:
  br label %bb54
bb54:
  store i64 -1, ptr %l66, !tbaa !24
  br label %bb57
bb55:
  %t179 = load i64, ptr %l72, !tbaa !24
  store i64 %t179, ptr %l66, !tbaa !24
  br label %bb57
bb56:
  br label %bb54
bb57:
  %t180 = load i64, ptr %l66, !tbaa !24
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t183 = getelementptr %"compiler/lsp:Server", ptr %t181, i32 0, i32 5
  %t187 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eRemove_3cI64_3e(ptr %v0, ptr %t183, i64 %t180)
  store i1 %t187, ptr %l77
  br label %bb58
bb58:
  call void @__olang_scope_close(ptr %s8)
  br label %bb59
bb59:
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t189 = load { i64, ptr }, ptr %l3, !tbaa !27
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2esend(ptr %v0, ptr %s5, ptr %t188, { i64, ptr } %t189)
  br label %bb60
bb60:
  call void @__olang_scope_close(ptr %s5)
  br label %bb61
bb61:
  br label %bb29
bb62:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flsp_2ecompiler_2flsp_3aServer_2ehandle(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l11 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca i32
  %l16 = alloca i1
  %l19 = alloca ptr
  %l20 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l27 = alloca i1
  %l32 = alloca i1
  %l33 = alloca i1
  %l35 = alloca i1
  %l36 = alloca i1
  %l38 = alloca i1
  %l39 = alloca i1
  %l41 = alloca i1
  %l43 = alloca i1
  %l46 = alloca ptr
  %l48 = alloca { i64, ptr }
  %l51 = alloca i1
  %l54 = alloca i1
  %l55 = alloca ptr
  %l58 = alloca { i64, ptr }
  %l60 = alloca ptr
  %l61 = alloca i32
  %l63 = alloca i1
  %l67 = alloca { i64, ptr }
  %l69 = alloca ptr
  %l70 = alloca i32
  %l72 = alloca i1
  %l75 = alloca ptr
  %l77 = alloca { i64, ptr }
  %l79 = alloca { i64, ptr }
  %l81 = alloca i1
  %l82 = alloca ptr
  %l84 = alloca { i64, ptr }
  %l86 = alloca ptr
  %l87 = alloca i32
  %l89 = alloca i1
  %l92 = alloca ptr
  %l94 = alloca { i64, ptr }
  %l96 = alloca ptr
  %l97 = alloca i32
  %l99 = alloca i1
  %l102 = alloca { i64, ptr }
  %l103 = alloca { i64, ptr }
  %l105 = alloca { i64, ptr }
  %l107 = alloca ptr
  %l108 = alloca i32
  %l110 = alloca i1
  %l113 = alloca { i64, ptr }
  %l114 = alloca i32
  %l116 = alloca i1
  %l122 = alloca ptr
  %l123 = alloca { i64, ptr }
  %l124 = alloca { i64, ptr }
  %l129 = alloca { i64, ptr }
  %l131 = alloca i1
  %l132 = alloca ptr
  %l135 = alloca { i64, ptr }
  %l137 = alloca ptr
  %l138 = alloca i32
  %l140 = alloca i1
  %l144 = alloca { i64, ptr }
  %l146 = alloca ptr
  %l147 = alloca i32
  %l149 = alloca i1
  %l152 = alloca ptr
  %l154 = alloca { i64, ptr }
  %l156 = alloca i1
  %l161 = alloca i1
  %l165 = alloca ptr
  %l170 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s13 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = call { i32, ptr } @std_2fjson_2eJson_2eParse(ptr %v1, ptr %v1, { i64, ptr } %t1)
  %t4 = extractvalue { i32, ptr } %t3, 1
  %t5 = extractvalue { i32, ptr } %t3, 0
  store i32 %t5, ptr %l14
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store ptr %t4, ptr %l13
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l13, !tbaa !29
  store ptr %t8, ptr %l11, !tbaa !29
  br label %bb8
bb2:
  %t9 = load i32, ptr %l14, !tbaa !23
  %t10 = ashr i32 %t9, 16
  %t12 = icmp eq i32 %t10, 1
  store i1 %t12, ptr %l16, !tbaa !21
  %t13 = load i32, ptr %l14, !tbaa !23
  %t14 = ashr i32 %t13, 16
  %t16 = icmp eq i32 %t14, 1
  br i1 %t16, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t18 = load ptr, ptr %l0, !tbaa !29
  store ptr %t18, ptr %l19, !tbaa !29
  %t19 = call { i64, ptr } @compiler_2flsp_2eerrorReply(ptr %s1, ptr %s1, ptr %s1, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d32, i32 0, i32 1) }, i64 -32700, { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d33, i32 0, i32 1) })
  store { i64, ptr } %t19, ptr %l20
  br label %bb6
bb6:
  %t20 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t20, 0
  %t22 = extractvalue { i64, ptr } %t20, 1
  %t23 = mul i64 %t21, 1
  %t24 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t23)
  call void @llvm.memcpy.p0.p0.i64(ptr %t24, ptr %t22, i64 %t23, i1 false)
  %t25 = insertvalue { i64, ptr } undef, i64 %t21, 0
  %t26 = insertvalue { i64, ptr } %t25, ptr %t24, 1
  %t27 = load ptr, ptr %l19, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2esend(ptr %v0, ptr %s1, ptr %t27, { i64, ptr } %t26)
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb8:
  %t29 = load ptr, ptr %l11, !tbaa !29
  store ptr %t29, ptr %l2, !tbaa !29
  %t30 = load ptr, ptr %l2, !tbaa !29
  %t32 = call { i64, ptr } @compiler_2flsp_2estr(ptr %v1, ptr %s0, ptr %v1, ptr %t30, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d34, i32 0, i32 1) })
  store { i64, ptr } %t32, ptr %l23
  br label %bb9
bb9:
  %t33 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t33, ptr %l3, !tbaa !27
  %t34 = load ptr, ptr %l2, !tbaa !29
  %t36 = call { i64, ptr } @compiler_2flsp_2eidOf(ptr %v1, ptr %s0, ptr %t34)
  store { i64, ptr } %t36, ptr %l25
  br label %bb10
bb10:
  %t37 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t37, ptr %l4, !tbaa !27
  %t38 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t40 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t38, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d35, i32 0, i32 1) })
  store i1 %t40, ptr %l27
  br label %bb11
bb11:
  %t41 = load i1, ptr %l27, !tbaa !21
  br i1 %t41, label %bb12, label %bb13
bb12:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load ptr, ptr %l2, !tbaa !29
  %t44 = load { i64, ptr }, ptr %l4, !tbaa !27
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2einitialize(ptr %v0, ptr %v1, ptr %s0, ptr %t42, ptr %t43, { i64, ptr } %t44)
  br label %bb14
bb13:
  br label %bb15
bb14:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb15:
  %t48 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t50 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t48, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d36, i32 0, i32 1) })
  store i1 %t50, ptr %l32
  br label %bb16
bb16:
  %t51 = load i1, ptr %l32, !tbaa !21
  br i1 %t51, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l33, !tbaa !21
  br label %bb20
bb18:
  %t52 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t54 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t52, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d37, i32 0, i32 1) })
  store i1 %t54, ptr %l35
  br label %bb19
bb19:
  %t55 = load i1, ptr %l35, !tbaa !21
  store i1 %t55, ptr %l33, !tbaa !21
  br label %bb20
bb20:
  %t56 = load i1, ptr %l33, !tbaa !21
  br i1 %t56, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l36, !tbaa !21
  br label %bb24
bb22:
  %t57 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t59 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t57, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d38, i32 0, i32 1) })
  store i1 %t59, ptr %l38
  br label %bb23
bb23:
  %t60 = load i1, ptr %l38, !tbaa !21
  store i1 %t60, ptr %l36, !tbaa !21
  br label %bb24
bb24:
  %t61 = load i1, ptr %l36, !tbaa !21
  br i1 %t61, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l39, !tbaa !21
  br label %bb28
bb26:
  %t62 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t64 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t62, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d39, i32 0, i32 1) })
  store i1 %t64, ptr %l41
  br label %bb27
bb27:
  %t65 = load i1, ptr %l41, !tbaa !21
  store i1 %t65, ptr %l39, !tbaa !21
  br label %bb28
bb28:
  %t66 = load i1, ptr %l39, !tbaa !21
  br i1 %t66, label %bb29, label %bb30
bb29:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb30:
  br label %bb31
bb31:
  %t67 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t69 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t67, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d40, i32 0, i32 1) })
  store i1 %t69, ptr %l43
  br label %bb32
bb32:
  %t70 = load i1, ptr %l43, !tbaa !21
  br i1 %t70, label %bb33, label %bb34
bb33:
  store %olang.scope zeroinitializer, ptr %s4
  %t71 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2edrain(ptr %v0, ptr %v2, ptr %t71)
  br label %bb35
bb34:
  br label %bb38
bb35:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/lsp:Server", ptr %t73, i32 0, i32 7
  store i1 true, ptr %t75, !tbaa !21
  %t76 = load ptr, ptr %l0, !tbaa !29
  store ptr %t76, ptr %l46, !tbaa !29
  %t77 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t79 = call { i64, ptr } @compiler_2flsp_2ereply(ptr %s0, ptr %s4, ptr %s4, { i64, ptr } %t77, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d41, i32 0, i32 1) })
  store { i64, ptr } %t79, ptr %l48
  br label %bb36
bb36:
  %t80 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t81 = extractvalue { i64, ptr } %t80, 0
  %t82 = extractvalue { i64, ptr } %t80, 1
  %t83 = mul i64 %t81, 1
  %t84 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t83)
  call void @llvm.memcpy.p0.p0.i64(ptr %t84, ptr %t82, i64 %t83, i1 false)
  %t85 = insertvalue { i64, ptr } undef, i64 %t81, 0
  %t86 = insertvalue { i64, ptr } %t85, ptr %t84, 1
  %t87 = load ptr, ptr %l46, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2esend(ptr %v0, ptr %s4, ptr %t87, { i64, ptr } %t86)
  br label %bb37
bb37:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb38:
  %t89 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t91 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t89, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d42, i32 0, i32 1) })
  store i1 %t91, ptr %l51
  br label %bb39
bb39:
  %t92 = load i1, ptr %l51, !tbaa !21
  br i1 %t92, label %bb40, label %bb41
bb40:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/lsp:Server", ptr %t93, i32 0, i32 8
  store i1 true, ptr %t95, !tbaa !21
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb41:
  br label %bb42
bb42:
  %t96 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t98 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t96, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d43, i32 0, i32 1) })
  store i1 %t98, ptr %l54
  br label %bb43
bb43:
  %t99 = load i1, ptr %l54, !tbaa !21
  br i1 %t99, label %bb44, label %bb45
bb44:
  store %olang.scope zeroinitializer, ptr %s6
  %t100 = load ptr, ptr %l2, !tbaa !29
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d44, i32 0, i32 1) }, ptr %l58, !tbaa !27
  %t102 = load { i64, ptr }, ptr %l58, !tbaa !27
  %t105 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %v1, ptr %v1, ptr %t100, { i64, ptr } %t102)
  %t106 = extractvalue { i32, ptr } %t105, 1
  %t107 = extractvalue { i32, ptr } %t105, 0
  store i32 %t107, ptr %l61
  %t108 = icmp ne i32 %t107, 0
  br i1 %t108, label %bb47, label %ok.109, !prof !99
ok.109:
  store ptr %t106, ptr %l60
  br label %bb46
bb45:
  br label %bb59
bb46:
  %t110 = load ptr, ptr %l60, !tbaa !29
  store { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d45, i32 0, i32 1) }, ptr %l67, !tbaa !27
  %t111 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t114 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %v1, ptr %v1, ptr %t110, { i64, ptr } %t111)
  %t115 = extractvalue { i32, ptr } %t114, 1
  %t116 = extractvalue { i32, ptr } %t114, 0
  store i32 %t116, ptr %l70
  %t117 = icmp ne i32 %t116, 0
  br i1 %t117, label %bb52, label %ok.118, !prof !99
ok.118:
  store ptr %t115, ptr %l69
  br label %bb51
bb47:
  %t119 = load i32, ptr %l61, !tbaa !23
  %t120 = ashr i32 %t119, 16
  %t122 = icmp eq i32 %t120, 1
  store i1 %t122, ptr %l63, !tbaa !21
  %t123 = load i32, ptr %l61, !tbaa !23
  %t124 = ashr i32 %t123, 16
  %t126 = icmp eq i32 %t124, 1
  br i1 %t126, label %bb48, label %bb49
bb48:
  call void @__olang_errpay_pop()
  br label %bb49
bb49:
  br label %bb50
bb50:
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb51:
  %t128 = load ptr, ptr %l69, !tbaa !29
  store ptr %t128, ptr %l55, !tbaa !29
  br label %bb55
bb52:
  %t129 = load i32, ptr %l70, !tbaa !23
  %t130 = ashr i32 %t129, 16
  %t132 = icmp eq i32 %t130, 1
  store i1 %t132, ptr %l72, !tbaa !21
  %t133 = load i32, ptr %l70, !tbaa !23
  %t134 = ashr i32 %t133, 16
  %t136 = icmp eq i32 %t134, 1
  br i1 %t136, label %bb53, label %bb54
bb53:
  call void @__olang_errpay_pop()
  br label %bb54
bb54:
  br label %bb50
bb55:
  %t138 = load ptr, ptr %l55, !tbaa !29
  store ptr %t138, ptr %l5, !tbaa !29
  %t139 = load ptr, ptr %l0, !tbaa !29
  store ptr %t139, ptr %l75, !tbaa !29
  %t140 = load ptr, ptr %l5, !tbaa !29
  %t142 = call { i64, ptr } @compiler_2flsp_2estr(ptr %v1, ptr %s6, ptr %v1, ptr %t140, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d46, i32 0, i32 1) })
  store { i64, ptr } %t142, ptr %l77
  br label %bb56
bb56:
  %t143 = load ptr, ptr %l5, !tbaa !29
  %t145 = call { i64, ptr } @compiler_2flsp_2estr(ptr %v1, ptr %s6, ptr %v1, ptr %t143, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d47, i32 0, i32 1) })
  store { i64, ptr } %t145, ptr %l79
  br label %bb57
bb57:
  %t146 = load ptr, ptr %l75, !tbaa !29
  %t147 = load { i64, ptr }, ptr %l77, !tbaa !27
  %t148 = load { i64, ptr }, ptr %l79, !tbaa !27
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2eopened(ptr %v0, ptr %v1, ptr %v1, ptr %t146, { i64, ptr } %t147, { i64, ptr } %t148)
  br label %bb58
bb58:
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb59:
  %t149 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t151 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t149, { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d48, i32 0, i32 1) })
  store i1 %t151, ptr %l81
  br label %bb60
bb60:
  %t152 = load i1, ptr %l81, !tbaa !21
  br i1 %t152, label %bb61, label %bb62
bb61:
  store %olang.scope zeroinitializer, ptr %s8
  %t153 = load ptr, ptr %l2, !tbaa !29
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d49, i32 0, i32 1) }, ptr %l84, !tbaa !27
  %t154 = load { i64, ptr }, ptr %l84, !tbaa !27
  %t157 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %v1, ptr %v1, ptr %t153, { i64, ptr } %t154)
  %t158 = extractvalue { i32, ptr } %t157, 1
  %t159 = extractvalue { i32, ptr } %t157, 0
  store i32 %t159, ptr %l87
  %t160 = icmp ne i32 %t159, 0
  br i1 %t160, label %bb64, label %ok.161, !prof !99
ok.161:
  store ptr %t158, ptr %l86
  br label %bb63
bb62:
  br label %bb91
bb63:
  %t162 = load ptr, ptr %l86, !tbaa !29
  store ptr %t162, ptr %l82, !tbaa !29
  br label %bb68
bb64:
  %t163 = load i32, ptr %l87, !tbaa !23
  %t164 = ashr i32 %t163, 16
  %t166 = icmp eq i32 %t164, 1
  store i1 %t166, ptr %l89, !tbaa !21
  %t167 = load i32, ptr %l87, !tbaa !23
  %t168 = ashr i32 %t167, 16
  %t170 = icmp eq i32 %t168, 1
  br i1 %t170, label %bb65, label %bb66
bb65:
  call void @__olang_errpay_pop()
  br label %bb66
bb66:
  br label %bb67
bb67:
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb68:
  %t172 = load ptr, ptr %l82, !tbaa !29
  store ptr %t172, ptr %l6, !tbaa !29
  %t173 = load ptr, ptr %l6, !tbaa !29
  store { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d50, i32 0, i32 1) }, ptr %l94, !tbaa !27
  %t174 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t177 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %v1, ptr %v1, ptr %t173, { i64, ptr } %t174)
  %t178 = extractvalue { i32, ptr } %t177, 1
  %t179 = extractvalue { i32, ptr } %t177, 0
  store i32 %t179, ptr %l97
  %t180 = icmp ne i32 %t179, 0
  br i1 %t180, label %bb70, label %ok.181, !prof !99
ok.181:
  store ptr %t178, ptr %l96
  br label %bb69
bb69:
  %t182 = load ptr, ptr %l96, !tbaa !29
  store ptr %t182, ptr %l92, !tbaa !29
  br label %bb74
bb70:
  %t183 = load i32, ptr %l97, !tbaa !23
  %t184 = ashr i32 %t183, 16
  %t186 = icmp eq i32 %t184, 1
  store i1 %t186, ptr %l99, !tbaa !21
  %t187 = load i32, ptr %l97, !tbaa !23
  %t188 = ashr i32 %t187, 16
  %t190 = icmp eq i32 %t188, 1
  br i1 %t190, label %bb71, label %bb72
bb71:
  call void @__olang_errpay_pop()
  br label %bb72
bb72:
  br label %bb73
bb73:
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb74:
  %t192 = load ptr, ptr %l92, !tbaa !29
  %t193 = call { i64, ptr } @compiler_2flsp_2estr(ptr %v1, ptr %s8, ptr %v1, ptr %t192, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d51, i32 0, i32 1) })
  store { i64, ptr } %t193, ptr %l102
  br label %bb75
bb75:
  %t194 = load { i64, ptr }, ptr %l102, !tbaa !27
  store { i64, ptr } %t194, ptr %l7, !tbaa !27
  %t195 = load ptr, ptr %l6, !tbaa !29
  store { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d52, i32 0, i32 1) }, ptr %l105, !tbaa !27
  %t196 = load { i64, ptr }, ptr %l105, !tbaa !27
  %t199 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %v1, ptr %v1, ptr %t195, { i64, ptr } %t196)
  %t200 = extractvalue { i32, ptr } %t199, 1
  %t201 = extractvalue { i32, ptr } %t199, 0
  store i32 %t201, ptr %l108
  %t202 = icmp ne i32 %t201, 0
  br i1 %t202, label %bb77, label %ok.203, !prof !99
ok.203:
  store ptr %t200, ptr %l107
  br label %bb76
bb76:
  %t204 = load ptr, ptr %l107, !tbaa !29
  %t205 = call { i32, { i64, ptr } } @std_2fjson_2estd_2fjson_3aJson_2eAsArr(ptr %v1, ptr %v1, ptr %t204)
  %t206 = extractvalue { i32, { i64, ptr } } %t205, 1
  %t207 = extractvalue { i32, { i64, ptr } } %t205, 0
  store i32 %t207, ptr %l114
  %t208 = icmp ne i32 %t207, 0
  br i1 %t208, label %bb82, label %ok.209, !prof !99
ok.209:
  store { i64, ptr } %t206, ptr %l113
  br label %bb81
bb77:
  %t210 = load i32, ptr %l108, !tbaa !23
  %t211 = ashr i32 %t210, 16
  %t213 = icmp eq i32 %t211, 1
  store i1 %t213, ptr %l110, !tbaa !21
  %t214 = load i32, ptr %l108, !tbaa !23
  %t215 = ashr i32 %t214, 16
  %t217 = icmp eq i32 %t215, 1
  br i1 %t217, label %bb78, label %bb79
bb78:
  call void @__olang_errpay_pop()
  br label %bb79
bb79:
  br label %bb80
bb80:
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb81:
  %t219 = load { i64, ptr }, ptr %l113, !tbaa !27
  store { i64, ptr } %t219, ptr %l103, !tbaa !27
  br label %bb85
bb82:
  %t220 = load i32, ptr %l114, !tbaa !23
  %t221 = ashr i32 %t220, 16
  %t223 = icmp eq i32 %t221, 1
  store i1 %t223, ptr %l116, !tbaa !21
  %t224 = load i32, ptr %l114, !tbaa !23
  %t225 = ashr i32 %t224, 16
  %t227 = icmp eq i32 %t225, 1
  br i1 %t227, label %bb83, label %bb84
bb83:
  call void @__olang_errpay_pop()
  br label %bb84
bb84:
  br label %bb80
bb85:
  %t229 = load { i64, ptr }, ptr %l103, !tbaa !27
  store { i64, ptr } %t229, ptr %l8, !tbaa !27
  %t230 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t232 = extractvalue { i64, ptr } %t230, 0
  %t234 = icmp eq i64 %t232, 0
  br i1 %t234, label %bb86, label %bb87
bb86:
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb87:
  br label %bb88
bb88:
  %t236 = load ptr, ptr %l0, !tbaa !29
  store ptr %t236, ptr %l122, !tbaa !29
  %t237 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t237, ptr %l123, !tbaa !27
  %t238 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t238, ptr %l124, !tbaa !27
  %t239 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t241 = extractvalue { i64, ptr } %t239, 0
  %t243 = sub i64 %t241, 1
  %t245 = getelementptr { i64, ptr }, ptr %l124, i32 0, i32 1
  %t246 = load ptr, ptr %t245, !tbaa !27
  %t247 = getelementptr ptr, ptr %t246, i64 %t243
  %t248 = load ptr, ptr %t247, !tbaa !39
  %t250 = call { i64, ptr } @compiler_2flsp_2estr(ptr %v1, ptr %s8, ptr %v1, ptr %t248, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d53, i32 0, i32 1) })
  store { i64, ptr } %t250, ptr %l129
  br label %bb89
bb89:
  %t251 = load ptr, ptr %l122, !tbaa !29
  %t252 = load { i64, ptr }, ptr %l123, !tbaa !27
  %t253 = load { i64, ptr }, ptr %l129, !tbaa !27
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2echanged(ptr %v0, ptr %v1, ptr %v1, ptr %t251, { i64, ptr } %t252, { i64, ptr } %t253)
  br label %bb90
bb90:
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb91:
  %t254 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t256 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t254, { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d54, i32 0, i32 1) })
  store i1 %t256, ptr %l131
  br label %bb92
bb92:
  %t257 = load i1, ptr %l131, !tbaa !21
  br i1 %t257, label %bb93, label %bb94
bb93:
  store %olang.scope zeroinitializer, ptr %s13
  %t258 = load ptr, ptr %l2, !tbaa !29
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d55, i32 0, i32 1) }, ptr %l135, !tbaa !27
  %t260 = load { i64, ptr }, ptr %l135, !tbaa !27
  %t263 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %v1, ptr %v1, ptr %t258, { i64, ptr } %t260)
  %t264 = extractvalue { i32, ptr } %t263, 1
  %t265 = extractvalue { i32, ptr } %t263, 0
  store i32 %t265, ptr %l138
  %t266 = icmp ne i32 %t265, 0
  br i1 %t266, label %bb96, label %ok.267, !prof !99
ok.267:
  store ptr %t264, ptr %l137
  br label %bb95
bb94:
  br label %bb107
bb95:
  %t268 = load ptr, ptr %l137, !tbaa !29
  store { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d56, i32 0, i32 1) }, ptr %l144, !tbaa !27
  %t269 = load { i64, ptr }, ptr %l144, !tbaa !27
  %t272 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %v1, ptr %v1, ptr %t268, { i64, ptr } %t269)
  %t273 = extractvalue { i32, ptr } %t272, 1
  %t274 = extractvalue { i32, ptr } %t272, 0
  store i32 %t274, ptr %l147
  %t275 = icmp ne i32 %t274, 0
  br i1 %t275, label %bb101, label %ok.276, !prof !99
ok.276:
  store ptr %t273, ptr %l146
  br label %bb100
bb96:
  %t277 = load i32, ptr %l138, !tbaa !23
  %t278 = ashr i32 %t277, 16
  %t280 = icmp eq i32 %t278, 1
  store i1 %t280, ptr %l140, !tbaa !21
  %t281 = load i32, ptr %l138, !tbaa !23
  %t282 = ashr i32 %t281, 16
  %t284 = icmp eq i32 %t282, 1
  br i1 %t284, label %bb97, label %bb98
bb97:
  call void @__olang_errpay_pop()
  br label %bb98
bb98:
  br label %bb99
bb99:
  call void @__olang_scope_close(ptr %s13)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb100:
  %t286 = load ptr, ptr %l146, !tbaa !29
  store ptr %t286, ptr %l132, !tbaa !29
  br label %bb104
bb101:
  %t287 = load i32, ptr %l147, !tbaa !23
  %t288 = ashr i32 %t287, 16
  %t290 = icmp eq i32 %t288, 1
  store i1 %t290, ptr %l149, !tbaa !21
  %t291 = load i32, ptr %l147, !tbaa !23
  %t292 = ashr i32 %t291, 16
  %t294 = icmp eq i32 %t292, 1
  br i1 %t294, label %bb102, label %bb103
bb102:
  call void @__olang_errpay_pop()
  br label %bb103
bb103:
  br label %bb99
bb104:
  %t296 = load ptr, ptr %l132, !tbaa !29
  %t297 = load ptr, ptr %l0, !tbaa !29
  store ptr %t297, ptr %l152, !tbaa !29
  %t300 = call { i64, ptr } @compiler_2flsp_2estr(ptr %v1, ptr %s13, ptr %v1, ptr %t296, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d57, i32 0, i32 1) })
  store { i64, ptr } %t300, ptr %l154
  br label %bb105
bb105:
  %t301 = load ptr, ptr %l152, !tbaa !29
  %t302 = load { i64, ptr }, ptr %l154, !tbaa !27
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2eclosed(ptr %v0, ptr %v1, ptr %t301, { i64, ptr } %t302)
  br label %bb106
bb106:
  call void @__olang_scope_close(ptr %s13)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb107:
  %t303 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t305 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t303, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d58, i32 0, i32 1) })
  store i1 %t305, ptr %l156
  br label %bb108
bb108:
  %t306 = load i1, ptr %l156, !tbaa !21
  br i1 %t306, label %bb109, label %bb110
bb109:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb110:
  br label %bb111
bb111:
  %t307 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t310 = insertvalue { i64, ptr } undef, i64 5, 0
  %t311 = insertvalue { i64, ptr } %t310, ptr @G_2ecompiler_2flsp_2eRequests, 1
  %t313 = load ptr, ptr @__olang_prog_scope
  %t316 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eHas_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %t313, ptr %v1, { i64, ptr } %t311, { i64, ptr } %t307)
  store i1 %t316, ptr %l161
  br label %bb112
bb112:
  %t317 = load i1, ptr %l161, !tbaa !21
  br i1 %t317, label %bb113, label %bb114
bb113:
  %t318 = load ptr, ptr %l0, !tbaa !29
  %t319 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t320 = load { i64, ptr }, ptr %l4, !tbaa !27
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2eask(ptr %v0, ptr %v1, ptr %s0, ptr %v2, ptr %t318, { i64, ptr } %t319, { i64, ptr } %t320)
  br label %bb115
bb114:
  br label %bb116
bb115:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb116:
  %t324 = load ptr, ptr %l0, !tbaa !29
  store ptr %t324, ptr %l165, !tbaa !29
  %t325 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t326 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t327 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d59, i32 0, i32 1) }, 1
  %t328 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d59, i32 0, i32 1) }, 0
  %t330 = extractvalue { i64, ptr } %t326, 1
  %t331 = extractvalue { i64, ptr } %t326, 0
  %t332 = add i64 %t328, %t331
  %t333 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t332)
  call void @olang_textcopy(ptr %t333, ptr %t327, i64 %t328)
  %t334 = getelementptr i8, ptr %t333, i64 %t328
  call void @olang_textcopy(ptr %t334, ptr %t330, i64 %t331)
  %t335 = insertvalue { i64, ptr } undef, i64 %t332, 0
  %t336 = insertvalue { i64, ptr } %t335, ptr %t333, 1
  %t338 = extractvalue { i64, ptr } %t336, 0
  %t339 = extractvalue { i64, ptr } %t336, 1
  %t340 = mul i64 %t338, 1
  %t341 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t340)
  call void @llvm.memcpy.p0.p0.i64(ptr %t341, ptr %t339, i64 %t340, i1 false)
  %t342 = insertvalue { i64, ptr } undef, i64 %t338, 0
  %t343 = insertvalue { i64, ptr } %t342, ptr %t341, 1
  %t346 = call { i64, ptr } @compiler_2flsp_2eerrorReply(ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t325, i64 -32601, { i64, ptr } %t343)
  store { i64, ptr } %t346, ptr %l170
  br label %bb117
bb117:
  %t347 = load { i64, ptr }, ptr %l170, !tbaa !27
  %t348 = extractvalue { i64, ptr } %t347, 0
  %t349 = extractvalue { i64, ptr } %t347, 1
  %t350 = mul i64 %t348, 1
  %t351 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t350)
  call void @llvm.memcpy.p0.p0.i64(ptr %t351, ptr %t349, i64 %t350, i1 false)
  %t352 = insertvalue { i64, ptr } undef, i64 %t348, 0
  %t353 = insertvalue { i64, ptr } %t352, ptr %t351, 1
  %t354 = load ptr, ptr %l165, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2esend(ptr %v0, ptr %s0, ptr %t354, { i64, ptr } %t353)
  br label %bb118
bb118:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flsp_2ecompiler_2flsp_3aServer_2einitialize(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l9 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l14 = alloca ptr
  %l15 = alloca i32
  %l17 = alloca i1
  %l22 = alloca { i64, ptr }
  %l24 = alloca ptr
  %l25 = alloca i32
  %l27 = alloca i1
  %l32 = alloca { i64, ptr }
  %l34 = alloca ptr
  %l35 = alloca i32
  %l37 = alloca i1
  %l41 = alloca { i64, ptr }
  %l43 = alloca ptr
  %l44 = alloca i32
  %l46 = alloca i1
  %l49 = alloca { i64, ptr }
  %l50 = alloca i32
  %l52 = alloca i1
  %l68 = alloca { i64, ptr }
  %l71 = alloca { i64, ptr }
  %l73 = alloca { i64, ptr }
  %l74 = alloca i32
  %l76 = alloca i1
  %l79 = alloca i1
  %l85 = alloca { i64, ptr }
  %l87 = alloca ptr
  %l92 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d60, i32 0, i32 1) }, ptr %l12, !tbaa !27
  %t3 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t6 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %v1, ptr %v1, ptr %a1, { i64, ptr } %t3)
  %t7 = extractvalue { i32, ptr } %t6, 1
  %t8 = extractvalue { i32, ptr } %t6, 0
  store i32 %t8, ptr %l15
  %t9 = icmp ne i32 %t8, 0
  br i1 %t9, label %bb2, label %ok.10, !prof !99
ok.10:
  store ptr %t7, ptr %l14
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l14, !tbaa !29
  store { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d61, i32 0, i32 1) }, ptr %l22, !tbaa !27
  %t13 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t16 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %v1, ptr %v1, ptr %t11, { i64, ptr } %t13)
  %t17 = extractvalue { i32, ptr } %t16, 1
  %t18 = extractvalue { i32, ptr } %t16, 0
  store i32 %t18, ptr %l25
  %t19 = icmp ne i32 %t18, 0
  br i1 %t19, label %bb7, label %ok.20, !prof !99
ok.20:
  store ptr %t17, ptr %l24
  br label %bb6
bb2:
  %t21 = load i32, ptr %l15, !tbaa !23
  %t22 = ashr i32 %t21, 16
  %t24 = icmp eq i32 %t22, 1
  store i1 %t24, ptr %l17, !tbaa !21
  %t25 = load i32, ptr %l15, !tbaa !23
  %t26 = ashr i32 %t25, 16
  %t28 = icmp eq i32 %t26, 1
  br i1 %t28, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  %t30 = icmp sge i64 0, 0
  br i1 %t30, label %bb22, label %bb23
bb6:
  %t32 = load ptr, ptr %l24, !tbaa !29
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d62, i32 0, i32 1) }, ptr %l32, !tbaa !27
  %t34 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t37 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %v1, ptr %v1, ptr %t32, { i64, ptr } %t34)
  %t38 = extractvalue { i32, ptr } %t37, 1
  %t39 = extractvalue { i32, ptr } %t37, 0
  store i32 %t39, ptr %l35
  %t40 = icmp ne i32 %t39, 0
  br i1 %t40, label %bb11, label %ok.41, !prof !99
ok.41:
  store ptr %t38, ptr %l34
  br label %bb10
bb7:
  %t42 = load i32, ptr %l25, !tbaa !23
  %t43 = ashr i32 %t42, 16
  %t45 = icmp eq i32 %t43, 1
  store i1 %t45, ptr %l27, !tbaa !21
  %t46 = load i32, ptr %l25, !tbaa !23
  %t47 = ashr i32 %t46, 16
  %t49 = icmp eq i32 %t47, 1
  br i1 %t49, label %bb8, label %bb9
bb8:
  call void @__olang_errpay_pop()
  br label %bb9
bb9:
  br label %bb5
bb10:
  %t51 = load ptr, ptr %l34, !tbaa !29
  store { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d63, i32 0, i32 1) }, ptr %l41, !tbaa !27
  %t52 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t55 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %v1, ptr %s0, ptr %t51, { i64, ptr } %t52)
  %t56 = extractvalue { i32, ptr } %t55, 1
  %t57 = extractvalue { i32, ptr } %t55, 0
  store i32 %t57, ptr %l44
  %t58 = icmp ne i32 %t57, 0
  br i1 %t58, label %bb15, label %ok.59, !prof !99
ok.59:
  store ptr %t56, ptr %l43
  br label %bb14
bb11:
  %t60 = load i32, ptr %l35, !tbaa !23
  %t61 = ashr i32 %t60, 16
  %t63 = icmp eq i32 %t61, 1
  store i1 %t63, ptr %l37, !tbaa !21
  %t64 = load i32, ptr %l35, !tbaa !23
  %t65 = ashr i32 %t64, 16
  %t67 = icmp eq i32 %t65, 1
  br i1 %t67, label %bb12, label %bb13
bb12:
  call void @__olang_errpay_pop()
  br label %bb13
bb13:
  br label %bb5
bb14:
  %t69 = load ptr, ptr %l43, !tbaa !29
  %t70 = call { i32, { i64, ptr } } @std_2fjson_2estd_2fjson_3aJson_2eAsArr(ptr %s0, ptr %s0, ptr %t69)
  %t71 = extractvalue { i32, { i64, ptr } } %t70, 1
  %t72 = extractvalue { i32, { i64, ptr } } %t70, 0
  store i32 %t72, ptr %l50
  %t73 = icmp ne i32 %t72, 0
  br i1 %t73, label %bb19, label %ok.74, !prof !99
ok.74:
  store { i64, ptr } %t71, ptr %l49
  br label %bb18
bb15:
  %t75 = load i32, ptr %l44, !tbaa !23
  %t76 = ashr i32 %t75, 16
  %t78 = icmp eq i32 %t76, 1
  store i1 %t78, ptr %l46, !tbaa !21
  %t79 = load i32, ptr %l44, !tbaa !23
  %t80 = ashr i32 %t79, 16
  %t82 = icmp eq i32 %t80, 1
  br i1 %t82, label %bb16, label %bb17
bb16:
  call void @__olang_errpay_pop()
  br label %bb17
bb17:
  br label %bb5
bb18:
  %t84 = load { i64, ptr }, ptr %l49, !tbaa !27
  store { i64, ptr } %t84, ptr %l9, !tbaa !27
  br label %bb26
bb19:
  %t85 = load i32, ptr %l50, !tbaa !23
  %t86 = ashr i32 %t85, 16
  %t88 = icmp eq i32 %t86, 1
  store i1 %t88, ptr %l52, !tbaa !21
  %t89 = load i32, ptr %l50, !tbaa !23
  %t90 = ashr i32 %t89, 16
  %t92 = icmp eq i32 %t90, 1
  br i1 %t92, label %bb20, label %bb21
bb20:
  call void @__olang_errpay_pop()
  br label %bb21
bb21:
  br label %bb5
bb22:
  %t94 = icmp sle i64 0, 1152921504606846975
  br i1 %t94, label %bb24, label %bb25
bb23:
  call void @__olang_check_failed(ptr @olang_loc_9565c00a3cf79970_b45483162fef2b54)
  unreachable
bb24:
  %t96 = mul i64 0, 8
  %t97 = insertvalue { i64, ptr } undef, i64 0, 0
  %t98 = insertvalue { i64, ptr } %t97, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t98, ptr %l9, !tbaa !27
  br label %bb26
bb25:
  call void @__olang_check_failed(ptr @olang_loc_9565c00a3cf79970_b45483162fef2b54)
  unreachable
bb26:
  %t100 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t100, ptr %l3, !tbaa !27
  %t101 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t103 = extractvalue { i64, ptr } %t101, 0
  %t105 = icmp sgt i64 %t103, 0
  br i1 %t105, label %bb27, label %bb28
bb27:
  %t107 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t107, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t109 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t111 = extractvalue { i64, ptr } %t109, 0
  store i64 %t111, ptr %l6, !tbaa !24
  br label %bb29
bb28:
  br label %bb45
bb29:
  store %olang.scope zeroinitializer, ptr %s3
  %t113 = load i64, ptr %l5, !tbaa !24
  %t114 = load i64, ptr %l6, !tbaa !24
  %t117 = icmp slt i64 %t113, %t114
  %t119 = xor i1 %t117, true
  br i1 %t119, label %bb30, label %bb31
bb30:
  call void @__olang_scope_close(ptr %s3)
  br label %bb44
bb31:
  br label %bb32
bb32:
  %t121 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t121, ptr %l68, !tbaa !27
  %t122 = load i64, ptr %l5, !tbaa !24
  %t124 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t125 = load ptr, ptr %t124, !tbaa !27
  %t126 = getelementptr ptr, ptr %t125, i64 %t122
  %t127 = load ptr, ptr %t126, !tbaa !39
  %t131 = call { i32, { i64, ptr } } @std_2fjson_2estd_2fjson_3aJson_2eAsStr(ptr %s0, ptr %s0, ptr %t127)
  %t132 = extractvalue { i32, { i64, ptr } } %t131, 1
  %t133 = extractvalue { i32, { i64, ptr } } %t131, 0
  store i32 %t133, ptr %l74
  %t134 = icmp ne i32 %t133, 0
  br i1 %t134, label %bb34, label %ok.135, !prof !99
ok.135:
  store { i64, ptr } %t132, ptr %l73
  br label %bb33
bb33:
  %t136 = load { i64, ptr }, ptr %l73, !tbaa !27
  store { i64, ptr } %t136, ptr %l71, !tbaa !27
  br label %bb38
bb34:
  %t137 = load i32, ptr %l74, !tbaa !23
  %t138 = ashr i32 %t137, 16
  %t140 = icmp eq i32 %t138, 1
  store i1 %t140, ptr %l76, !tbaa !21
  %t141 = load i32, ptr %l74, !tbaa !23
  %t142 = ashr i32 %t141, 16
  %t144 = icmp eq i32 %t142, 1
  br i1 %t144, label %bb35, label %bb36
bb35:
  call void @__olang_errpay_pop()
  br label %bb36
bb36:
  br label %bb37
bb37:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d64, i32 0, i32 1) }, ptr %l71, !tbaa !27
  br label %bb38
bb38:
  %t146 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t147 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s3, { i64, ptr } %t146, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d65, i32 0, i32 1) })
  store i1 %t147, ptr %l79
  br label %bb39
bb39:
  %t148 = load i1, ptr %l79, !tbaa !21
  br i1 %t148, label %bb40, label %bb41
bb40:
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t151 = getelementptr %"compiler/lsp:Server", ptr %t149, i32 0, i32 2
  store i1 true, ptr %t151, !tbaa !21
  br label %bb42
bb41:
  br label %bb42
bb42:
  call void @__olang_scope_close(ptr %s3)
  br label %bb43
bb43:
  %t152 = load i64, ptr %l5, !tbaa !24
  %t154 = add i64 %t152, 1
  store i64 %t154, ptr %l5, !tbaa !24
  br label %bb29
bb44:
  br label %bb45
bb45:
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t158 = getelementptr %"compiler/lsp:Server", ptr %t156, i32 0, i32 2
  %t159 = load i1, ptr %t158, !tbaa !21
  br i1 %t159, label %bb46, label %bb47
bb46:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d66, i32 0, i32 1) }, ptr %l85, !tbaa !27
  br label %bb48
bb47:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d67, i32 0, i32 1) }, ptr %l85, !tbaa !27
  br label %bb48
bb48:
  %t161 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d68, i32 0, i32 1) }, 1
  %t162 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d68, i32 0, i32 1) }, 0
  %t163 = load { i64, ptr }, ptr %l85, !tbaa !27
  %t164 = extractvalue { i64, ptr } %t163, 1
  %t165 = extractvalue { i64, ptr } %t163, 0
  %t166 = add i64 %t162, %t165
  %t167 = extractvalue { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d69, i32 0, i32 1) }, 1
  %t168 = extractvalue { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d69, i32 0, i32 1) }, 0
  %t169 = add i64 %t166, %t168
  %t170 = extractvalue { i64, ptr } { i64 89, ptr getelementptr inbounds (<{ i64, [89 x i8] }>, ptr @.d70, i32 0, i32 1) }, 1
  %t171 = extractvalue { i64, ptr } { i64 89, ptr getelementptr inbounds (<{ i64, [89 x i8] }>, ptr @.d70, i32 0, i32 1) }, 0
  %t172 = add i64 %t169, %t171
  %t173 = extractvalue { i64, ptr } { i64 83, ptr getelementptr inbounds (<{ i64, [83 x i8] }>, ptr @.d71, i32 0, i32 1) }, 1
  %t174 = extractvalue { i64, ptr } { i64 83, ptr getelementptr inbounds (<{ i64, [83 x i8] }>, ptr @.d71, i32 0, i32 1) }, 0
  %t175 = add i64 %t172, %t174
  %t176 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t175)
  call void @olang_textcopy(ptr %t176, ptr %t161, i64 %t162)
  %t177 = getelementptr i8, ptr %t176, i64 %t162
  call void @olang_textcopy(ptr %t177, ptr %t164, i64 %t165)
  %t178 = getelementptr i8, ptr %t177, i64 %t165
  call void @olang_textcopy(ptr %t178, ptr %t167, i64 %t168)
  %t179 = getelementptr i8, ptr %t178, i64 %t168
  call void @olang_textcopy(ptr %t179, ptr %t170, i64 %t171)
  %t180 = getelementptr i8, ptr %t179, i64 %t171
  call void @olang_textcopy(ptr %t180, ptr %t173, i64 %t174)
  %t181 = insertvalue { i64, ptr } undef, i64 %t175, 0
  %t182 = insertvalue { i64, ptr } %t181, ptr %t176, 1
  %t184 = load ptr, ptr %l0, !tbaa !29
  store ptr %t184, ptr %l87, !tbaa !29
  %t187 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d72, i32 0, i32 1) }, 1
  %t188 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d72, i32 0, i32 1) }, 0
  %t190 = extractvalue { i64, ptr } %t182, 1
  %t191 = extractvalue { i64, ptr } %t182, 0
  %t192 = add i64 %t188, %t191
  %t193 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d73, i32 0, i32 1) }, 1
  %t194 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d73, i32 0, i32 1) }, 0
  %t195 = add i64 %t192, %t194
  %t196 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t195)
  call void @olang_textcopy(ptr %t196, ptr %t187, i64 %t188)
  %t197 = getelementptr i8, ptr %t196, i64 %t188
  call void @olang_textcopy(ptr %t197, ptr %t190, i64 %t191)
  %t198 = getelementptr i8, ptr %t197, i64 %t191
  call void @olang_textcopy(ptr %t198, ptr %t193, i64 %t194)
  %t199 = insertvalue { i64, ptr } undef, i64 %t195, 0
  %t200 = insertvalue { i64, ptr } %t199, ptr %t196, 1
  %t202 = extractvalue { i64, ptr } %t200, 0
  %t203 = extractvalue { i64, ptr } %t200, 1
  %t204 = mul i64 %t202, 1
  %t205 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t204)
  call void @llvm.memcpy.p0.p0.i64(ptr %t205, ptr %t203, i64 %t204, i1 false)
  %t206 = insertvalue { i64, ptr } undef, i64 %t202, 0
  %t207 = insertvalue { i64, ptr } %t206, ptr %t205, 1
  %t210 = call { i64, ptr } @compiler_2flsp_2ereply(ptr %v2, ptr %s0, ptr %s0, { i64, ptr } %a2, { i64, ptr } %t207)
  store { i64, ptr } %t210, ptr %l92
  br label %bb49
bb49:
  %t211 = load { i64, ptr }, ptr %l92, !tbaa !27
  %t212 = extractvalue { i64, ptr } %t211, 0
  %t213 = extractvalue { i64, ptr } %t211, 1
  %t214 = mul i64 %t212, 1
  %t215 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t214)
  call void @llvm.memcpy.p0.p0.i64(ptr %t215, ptr %t213, i64 %t214, i1 false)
  %t216 = insertvalue { i64, ptr } undef, i64 %t212, 0
  %t217 = insertvalue { i64, ptr } %t216, ptr %t215, 1
  %t218 = load ptr, ptr %l87, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2esend(ptr %v0, ptr %s0, ptr %t218, { i64, ptr } %t217)
  br label %bb50
bb50:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flsp_2ecompiler_2flsp_3aServer_2enote(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca ptr
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l17 = alloca ptr
  %l18 = alloca i32
  %l20 = alloca i1
  %l23 = alloca i64
  %l25 = alloca { i64, ptr }
  %l27 = alloca ptr
  %l28 = alloca i32
  %l30 = alloca i1
  %l33 = alloca i64
  %l34 = alloca i32
  %l36 = alloca i1
  %l41 = alloca i1
  %l42 = alloca i64
  %l45 = alloca i64
  %l50 = alloca i1
  %l54 = alloca ptr
  %l55 = alloca ptr
  %l56 = alloca i64
  %l60 = alloca { i64, ptr }
  %l62 = alloca { i64, ptr }
  %l64 = alloca ptr
  %l65 = alloca i32
  %l67 = alloca i1
  %l70 = alloca { i64, ptr }
  %l71 = alloca i32
  %l73 = alloca i1
  %l83 = alloca { i64, ptr }
  %l86 = alloca ptr
  %l87 = alloca i64
  %l90 = alloca ptr
  %l91 = alloca i64
  %l93 = alloca i64
  %l94 = alloca i32
  %l96 = alloca i1
  %l101 = alloca ptr
  %l102 = alloca i64
  %l106 = alloca { i64, ptr }
  %l108 = alloca { i64, ptr }
  %l110 = alloca ptr
  %l111 = alloca i32
  %l113 = alloca i1
  %l116 = alloca { i64, ptr }
  %l117 = alloca i32
  %l119 = alloca i1
  %l129 = alloca { i64, ptr }
  %l132 = alloca ptr
  %l133 = alloca i64
  %l136 = alloca ptr
  %l137 = alloca i64
  %l139 = alloca { i64, ptr }
  %l141 = alloca { i64, ptr }
  %l142 = alloca i32
  %l144 = alloca i1
  %s0 = alloca %olang.scope
  %s9 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call { i32, ptr } @std_2fjson_2eJson_2eParse(ptr %v1, ptr %s0, { i64, ptr } %a1)
  %t4 = extractvalue { i32, ptr } %t3, 1
  %t5 = extractvalue { i32, ptr } %t3, 0
  store i32 %t5, ptr %l18
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store ptr %t4, ptr %l17
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l17, !tbaa !29
  store ptr %t8, ptr %l15, !tbaa !29
  br label %bb6
bb2:
  %t9 = load i32, ptr %l18, !tbaa !23
  %t10 = ashr i32 %t9, 16
  %t12 = icmp eq i32 %t10, 1
  store i1 %t12, ptr %l20, !tbaa !21
  %t13 = load i32, ptr %l18, !tbaa !23
  %t14 = ashr i32 %t13, 16
  %t16 = icmp eq i32 %t14, 1
  br i1 %t16, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb6:
  %t18 = load ptr, ptr %l15, !tbaa !29
  store ptr %t18, ptr %l2, !tbaa !29
  %t19 = load ptr, ptr %l2, !tbaa !29
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d74, i32 0, i32 1) }, ptr %l25, !tbaa !27
  %t20 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t23 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %s0, ptr %s0, ptr %t19, { i64, ptr } %t20)
  %t24 = extractvalue { i32, ptr } %t23, 1
  %t25 = extractvalue { i32, ptr } %t23, 0
  store i32 %t25, ptr %l28
  %t26 = icmp ne i32 %t25, 0
  br i1 %t26, label %bb8, label %ok.27, !prof !99
ok.27:
  store ptr %t24, ptr %l27
  br label %bb7
bb7:
  %t28 = load ptr, ptr %l27, !tbaa !29
  %t29 = call { i32, i64 } @std_2fjson_2estd_2fjson_3aJson_2eAsInt(ptr %s0, ptr %t28)
  %t30 = extractvalue { i32, i64 } %t29, 1
  %t31 = extractvalue { i32, i64 } %t29, 0
  store i32 %t31, ptr %l34
  %t32 = icmp ne i32 %t31, 0
  br i1 %t32, label %bb13, label %ok.33, !prof !99
ok.33:
  store i64 %t30, ptr %l33
  br label %bb12
bb8:
  %t34 = load i32, ptr %l28, !tbaa !23
  %t35 = ashr i32 %t34, 16
  %t37 = icmp eq i32 %t35, 1
  store i1 %t37, ptr %l30, !tbaa !21
  %t38 = load i32, ptr %l28, !tbaa !23
  %t39 = ashr i32 %t38, 16
  %t41 = icmp eq i32 %t39, 1
  br i1 %t41, label %bb9, label %bb10
bb9:
  call void @__olang_errpay_pop()
  br label %bb10
bb10:
  br label %bb11
bb11:
  store i64 -1, ptr %l23, !tbaa !24
  br label %bb16
bb12:
  %t43 = load i64, ptr %l33, !tbaa !24
  store i64 %t43, ptr %l23, !tbaa !24
  br label %bb16
bb13:
  %t44 = load i32, ptr %l34, !tbaa !23
  %t45 = ashr i32 %t44, 16
  %t47 = icmp eq i32 %t45, 1
  store i1 %t47, ptr %l36, !tbaa !21
  %t48 = load i32, ptr %l34, !tbaa !23
  %t49 = ashr i32 %t48, 16
  %t51 = icmp eq i32 %t49, 1
  br i1 %t51, label %bb14, label %bb15
bb14:
  call void @__olang_errpay_pop()
  br label %bb15
bb15:
  br label %bb11
bb16:
  %t53 = load i64, ptr %l23, !tbaa !24
  store i64 %t53, ptr %l3, !tbaa !24
  %t54 = load i64, ptr %l3, !tbaa !24
  %t56 = icmp slt i64 %t54, 0
  br i1 %t56, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l41, !tbaa !21
  br label %bb20
bb18:
  %t58 = load i64, ptr %l3, !tbaa !24
  store i64 %t58, ptr %l42, !tbaa !24
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/lsp:Server", ptr %t59, i32 0, i32 1
  %t63 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eLen_Ha7d56d00f5631ac8d39ace71211767ab(ptr %v0, ptr %t61)
  store i64 %t63, ptr %l45
  br label %bb19
bb19:
  %t64 = load i64, ptr %l42, !tbaa !24
  %t65 = load i64, ptr %l45, !tbaa !24
  %t66 = icmp sge i64 %t64, %t65
  store i1 %t66, ptr %l41, !tbaa !21
  br label %bb20
bb20:
  %t68 = load i1, ptr %l41, !tbaa !21
  br i1 %t68, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb22:
  br label %bb23
bb23:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/lsp:Server", ptr %t69, i32 0, i32 4
  %t72 = load i64, ptr %l3, !tbaa !24
  %t75 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eRemove_3cI64_3e(ptr %v0, ptr %t71, i64 %t72)
  store i1 %t75, ptr %l50
  br label %bb24
bb24:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/lsp:Server", ptr %t76, i32 0, i32 1
  %t79 = load i64, ptr %l3, !tbaa !24
  %t82 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eAt__Ha6317692879988aa8c889b506af3dc4d(ptr %v0, ptr %v0, ptr %t78, i64 %t79)
  store ptr %t82, ptr %l54
  br label %bb25
bb25:
  %t83 = load ptr, ptr %l54, !tbaa !29
  store ptr %t83, ptr %l4, !tbaa !29
  %t84 = load ptr, ptr %l4, !tbaa !29
  store ptr %t84, ptr %l55, !tbaa !29
  %t85 = ptrtoint ptr %v0 to i64
  store i64 %t85, ptr %l56, !tbaa !24
  %t86 = load i1, ptr @olang_2esole_2eArray_3cmut_20compiler_2flsp_3aDoc_26_3e_2e_2d1
  br i1 %t86, label %bb26, label %bb27
bb26:
  %t88 = load ptr, ptr %l55, !tbaa !29
  %t89 = call ptr @__olang_region_or(ptr %t88, ptr %v0)
  %t90 = ptrtoint ptr %t89 to i64
  store i64 %t90, ptr %l56, !tbaa !24
  br label %bb27
bb27:
  %t91 = load ptr, ptr %l4, !tbaa !29
  %t93 = getelementptr %"compiler/lsp:Doc", ptr %t91, i32 0, i32 5
  %t94 = load i64, ptr %l56
  %t95 = inttoptr i64 %t94 to ptr
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %t95, ptr %t93)
  br label %bb28
bb28:
  %t97 = load ptr, ptr %l2, !tbaa !29
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d75, i32 0, i32 1) }, ptr %l62, !tbaa !27
  %t98 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t101 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %s0, ptr %s0, ptr %t97, { i64, ptr } %t98)
  %t102 = extractvalue { i32, ptr } %t101, 1
  %t103 = extractvalue { i32, ptr } %t101, 0
  store i32 %t103, ptr %l65
  %t104 = icmp ne i32 %t103, 0
  br i1 %t104, label %bb30, label %ok.105, !prof !99
ok.105:
  store ptr %t102, ptr %l64
  br label %bb29
bb29:
  %t106 = load ptr, ptr %l64, !tbaa !29
  %t107 = call { i32, { i64, ptr } } @std_2fjson_2estd_2fjson_3aJson_2eAsArr(ptr %s0, ptr %s0, ptr %t106)
  %t108 = extractvalue { i32, { i64, ptr } } %t107, 1
  %t109 = extractvalue { i32, { i64, ptr } } %t107, 0
  store i32 %t109, ptr %l71
  %t110 = icmp ne i32 %t109, 0
  br i1 %t110, label %bb35, label %ok.111, !prof !99
ok.111:
  store { i64, ptr } %t108, ptr %l70
  br label %bb34
bb30:
  %t112 = load i32, ptr %l65, !tbaa !23
  %t113 = ashr i32 %t112, 16
  %t115 = icmp eq i32 %t113, 1
  store i1 %t115, ptr %l67, !tbaa !21
  %t116 = load i32, ptr %l65, !tbaa !23
  %t117 = ashr i32 %t116, 16
  %t119 = icmp eq i32 %t117, 1
  br i1 %t119, label %bb31, label %bb32
bb31:
  call void @__olang_errpay_pop()
  br label %bb32
bb32:
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb34:
  %t121 = load { i64, ptr }, ptr %l70, !tbaa !27
  store { i64, ptr } %t121, ptr %l60, !tbaa !27
  br label %bb38
bb35:
  %t122 = load i32, ptr %l71, !tbaa !23
  %t123 = ashr i32 %t122, 16
  %t125 = icmp eq i32 %t123, 1
  store i1 %t125, ptr %l73, !tbaa !21
  %t126 = load i32, ptr %l71, !tbaa !23
  %t127 = ashr i32 %t126, 16
  %t129 = icmp eq i32 %t127, 1
  br i1 %t129, label %bb36, label %bb37
bb36:
  call void @__olang_errpay_pop()
  br label %bb37
bb37:
  br label %bb33
bb38:
  %t131 = load { i64, ptr }, ptr %l60, !tbaa !27
  store { i64, ptr } %t131, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t134 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t136 = extractvalue { i64, ptr } %t134, 0
  store i64 %t136, ptr %l8, !tbaa !24
  br label %bb39
bb39:
  %t138 = load i64, ptr %l7, !tbaa !24
  %t139 = load i64, ptr %l8, !tbaa !24
  %t142 = icmp slt i64 %t138, %t139
  %t144 = xor i1 %t142, true
  br i1 %t144, label %bb40, label %bb41
bb40:
  br label %bb53
bb41:
  br label %bb42
bb42:
  %t146 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t146, ptr %l83, !tbaa !27
  %t147 = load i64, ptr %l7, !tbaa !24
  %t149 = getelementptr { i64, ptr }, ptr %l83, i32 0, i32 1
  %t150 = load ptr, ptr %t149, !tbaa !27
  %t151 = getelementptr ptr, ptr %t150, i64 %t147
  %t152 = load ptr, ptr %t151, !tbaa !39
  store ptr %t152, ptr %l9, !tbaa !29
  %t154 = load ptr, ptr %l4, !tbaa !29
  store ptr %t154, ptr %l86, !tbaa !29
  %t155 = ptrtoint ptr %v0 to i64
  store i64 %t155, ptr %l87, !tbaa !24
  %t156 = load i1, ptr @olang_2esole_2eArray_3cmut_20compiler_2flsp_3aDoc_26_3e_2e_2d1
  br i1 %t156, label %bb43, label %bb44
bb43:
  %t158 = load ptr, ptr %l86, !tbaa !29
  %t159 = call ptr @__olang_region_or(ptr %t158, ptr %v0)
  %t160 = ptrtoint ptr %t159 to i64
  store i64 %t160, ptr %l87, !tbaa !24
  br label %bb44
bb44:
  %t161 = load ptr, ptr %l4, !tbaa !29
  %t163 = getelementptr %"compiler/lsp:Doc", ptr %t161, i32 0, i32 5
  store ptr %t163, ptr %l90, !tbaa !29
  %t164 = load ptr, ptr %l9, !tbaa !29
  %t166 = call { i32, i64 } @std_2fjson_2estd_2fjson_3aJson_2eAsInt(ptr %s0, ptr %t164)
  %t167 = extractvalue { i32, i64 } %t166, 1
  %t168 = extractvalue { i32, i64 } %t166, 0
  store i32 %t168, ptr %l94
  %t169 = icmp ne i32 %t168, 0
  br i1 %t169, label %bb46, label %ok.170, !prof !99
ok.170:
  store i64 %t167, ptr %l93
  br label %bb45
bb45:
  %t171 = load i64, ptr %l93, !tbaa !24
  store i64 %t171, ptr %l91, !tbaa !24
  br label %bb50
bb46:
  %t172 = load i32, ptr %l94, !tbaa !23
  %t173 = ashr i32 %t172, 16
  %t175 = icmp eq i32 %t173, 1
  store i1 %t175, ptr %l96, !tbaa !21
  %t176 = load i32, ptr %l94, !tbaa !23
  %t177 = ashr i32 %t176, 16
  %t179 = icmp eq i32 %t177, 1
  br i1 %t179, label %bb47, label %bb48
bb47:
  call void @__olang_errpay_pop()
  br label %bb48
bb48:
  br label %bb49
bb49:
  store i64 -1, ptr %l91, !tbaa !24
  br label %bb50
bb50:
  %t181 = load i64, ptr %l87
  %t182 = inttoptr i64 %t181 to ptr
  %t183 = load ptr, ptr %l90, !tbaa !29
  %t184 = load i64, ptr %l91, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %t182, ptr %t183, i64 %t184)
  br label %bb51
bb51:
  br label %bb52
bb52:
  %t185 = load i64, ptr %l7, !tbaa !24
  %t187 = add i64 %t185, 1
  store i64 %t187, ptr %l7, !tbaa !24
  br label %bb39
bb53:
  %t189 = load ptr, ptr %l4, !tbaa !29
  store ptr %t189, ptr %l101, !tbaa !29
  %t190 = ptrtoint ptr %v0 to i64
  store i64 %t190, ptr %l102, !tbaa !24
  %t191 = load i1, ptr @olang_2esole_2eArray_3cmut_20compiler_2flsp_3aDoc_26_3e_2e_2d1
  br i1 %t191, label %bb54, label %bb55
bb54:
  %t193 = load ptr, ptr %l101, !tbaa !29
  %t194 = call ptr @__olang_region_or(ptr %t193, ptr %v0)
  %t195 = ptrtoint ptr %t194 to i64
  store i64 %t195, ptr %l102, !tbaa !24
  br label %bb55
bb55:
  %t196 = load ptr, ptr %l4, !tbaa !29
  %t198 = getelementptr %"compiler/lsp:Doc", ptr %t196, i32 0, i32 6
  %t199 = load i64, ptr %l102
  %t200 = inttoptr i64 %t199 to ptr
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H075fcab2d197e70ad987ab163aa86164(ptr %t200, ptr %t198)
  br label %bb56
bb56:
  %t202 = load ptr, ptr %l2, !tbaa !29
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d76, i32 0, i32 1) }, ptr %l108, !tbaa !27
  %t203 = load { i64, ptr }, ptr %l108, !tbaa !27
  %t206 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %s0, ptr %s0, ptr %t202, { i64, ptr } %t203)
  %t207 = extractvalue { i32, ptr } %t206, 1
  %t208 = extractvalue { i32, ptr } %t206, 0
  store i32 %t208, ptr %l111
  %t209 = icmp ne i32 %t208, 0
  br i1 %t209, label %bb58, label %ok.210, !prof !99
ok.210:
  store ptr %t207, ptr %l110
  br label %bb57
bb57:
  %t211 = load ptr, ptr %l110, !tbaa !29
  %t212 = call { i32, { i64, ptr } } @std_2fjson_2estd_2fjson_3aJson_2eAsArr(ptr %s0, ptr %s0, ptr %t211)
  %t213 = extractvalue { i32, { i64, ptr } } %t212, 1
  %t214 = extractvalue { i32, { i64, ptr } } %t212, 0
  store i32 %t214, ptr %l117
  %t215 = icmp ne i32 %t214, 0
  br i1 %t215, label %bb63, label %ok.216, !prof !99
ok.216:
  store { i64, ptr } %t213, ptr %l116
  br label %bb62
bb58:
  %t217 = load i32, ptr %l111, !tbaa !23
  %t218 = ashr i32 %t217, 16
  %t220 = icmp eq i32 %t218, 1
  store i1 %t220, ptr %l113, !tbaa !21
  %t221 = load i32, ptr %l111, !tbaa !23
  %t222 = ashr i32 %t221, 16
  %t224 = icmp eq i32 %t222, 1
  br i1 %t224, label %bb59, label %bb60
bb59:
  call void @__olang_errpay_pop()
  br label %bb60
bb60:
  br label %bb61
bb61:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb62:
  %t226 = load { i64, ptr }, ptr %l116, !tbaa !27
  store { i64, ptr } %t226, ptr %l106, !tbaa !27
  br label %bb66
bb63:
  %t227 = load i32, ptr %l117, !tbaa !23
  %t228 = ashr i32 %t227, 16
  %t230 = icmp eq i32 %t228, 1
  store i1 %t230, ptr %l119, !tbaa !21
  %t231 = load i32, ptr %l117, !tbaa !23
  %t232 = ashr i32 %t231, 16
  %t234 = icmp eq i32 %t232, 1
  br i1 %t234, label %bb64, label %bb65
bb64:
  call void @__olang_errpay_pop()
  br label %bb65
bb65:
  br label %bb61
bb66:
  %t236 = load { i64, ptr }, ptr %l106, !tbaa !27
  store { i64, ptr } %t236, ptr %l11, !tbaa !27
  store i64 0, ptr %l12, !tbaa !24
  %t239 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t241 = extractvalue { i64, ptr } %t239, 0
  store i64 %t241, ptr %l13, !tbaa !24
  br label %bb67
bb67:
  store %olang.scope zeroinitializer, ptr %s9
  %t243 = load i64, ptr %l12, !tbaa !24
  %t244 = load i64, ptr %l13, !tbaa !24
  %t247 = icmp slt i64 %t243, %t244
  %t249 = xor i1 %t247, true
  br i1 %t249, label %bb68, label %bb69
bb68:
  call void @__olang_scope_close(ptr %s9)
  br label %bb83
bb69:
  br label %bb70
bb70:
  %t251 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t251, ptr %l129, !tbaa !27
  %t252 = load i64, ptr %l12, !tbaa !24
  %t254 = getelementptr { i64, ptr }, ptr %l129, i32 0, i32 1
  %t255 = load ptr, ptr %t254, !tbaa !27
  %t256 = getelementptr ptr, ptr %t255, i64 %t252
  %t257 = load ptr, ptr %t256, !tbaa !39
  store ptr %t257, ptr %l14, !tbaa !29
  %t259 = load ptr, ptr %l4, !tbaa !29
  store ptr %t259, ptr %l132, !tbaa !29
  %t260 = ptrtoint ptr %v0 to i64
  store i64 %t260, ptr %l133, !tbaa !24
  %t261 = load i1, ptr @olang_2esole_2eArray_3cmut_20compiler_2flsp_3aDoc_26_3e_2e_2d1
  br i1 %t261, label %bb71, label %bb72
bb71:
  %t263 = load ptr, ptr %l132, !tbaa !29
  %t264 = call ptr @__olang_region_or(ptr %t263, ptr %v0)
  %t265 = ptrtoint ptr %t264 to i64
  store i64 %t265, ptr %l133, !tbaa !24
  br label %bb72
bb72:
  %t266 = load ptr, ptr %l4, !tbaa !29
  %t268 = getelementptr %"compiler/lsp:Doc", ptr %t266, i32 0, i32 6
  store ptr %t268, ptr %l136, !tbaa !29
  %t269 = load i64, ptr %l133
  %t270 = inttoptr i64 %t269 to ptr
  %t271 = ptrtoint ptr %t270 to i64
  store i64 %t271, ptr %l137, !tbaa !24
  %t272 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t272, label %bb73, label %bb74
bb73:
  %t274 = load i64, ptr %l133
  %t275 = inttoptr i64 %t274 to ptr
  %t276 = call ptr @__olang_region_make(ptr %t275)
  %t277 = ptrtoint ptr %t276 to i64
  store i64 %t277, ptr %l137, !tbaa !24
  br label %bb74
bb74:
  %t278 = load ptr, ptr %l14, !tbaa !29
  %t280 = call { i32, { i64, ptr } } @std_2fjson_2estd_2fjson_3aJson_2eAsStr(ptr %s0, ptr %s9, ptr %t278)
  %t281 = extractvalue { i32, { i64, ptr } } %t280, 1
  %t282 = extractvalue { i32, { i64, ptr } } %t280, 0
  store i32 %t282, ptr %l142
  %t283 = icmp ne i32 %t282, 0
  br i1 %t283, label %bb76, label %ok.284, !prof !99
ok.284:
  store { i64, ptr } %t281, ptr %l141
  br label %bb75
bb75:
  %t285 = load { i64, ptr }, ptr %l141, !tbaa !27
  store { i64, ptr } %t285, ptr %l139, !tbaa !27
  br label %bb80
bb76:
  %t286 = load i32, ptr %l142, !tbaa !23
  %t287 = ashr i32 %t286, 16
  %t289 = icmp eq i32 %t287, 1
  store i1 %t289, ptr %l144, !tbaa !21
  %t290 = load i32, ptr %l142, !tbaa !23
  %t291 = ashr i32 %t290, 16
  %t293 = icmp eq i32 %t291, 1
  br i1 %t293, label %bb77, label %bb78
bb77:
  call void @__olang_errpay_pop()
  br label %bb78
bb78:
  br label %bb79
bb79:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d77, i32 0, i32 1) }, ptr %l139, !tbaa !27
  br label %bb80
bb80:
  %t295 = load { i64, ptr }, ptr %l139, !tbaa !27
  %t296 = extractvalue { i64, ptr } %t295, 1
  %t297 = extractvalue { i64, ptr } %t295, 0
  %t298 = load i64, ptr %l137
  %t299 = inttoptr i64 %t298 to ptr
  %t300 = call ptr @__olang_scope_alloc(ptr %t299, i64 %t297)
  call void @olang_textcopy(ptr %t300, ptr %t296, i64 %t297)
  %t301 = insertvalue { i64, ptr } undef, i64 %t297, 0
  %t302 = insertvalue { i64, ptr } %t301, ptr %t300, 1
  %t304 = load i64, ptr %l137
  %t305 = inttoptr i64 %t304 to ptr
  %t306 = extractvalue { i64, ptr } %t302, 0
  %t307 = extractvalue { i64, ptr } %t302, 1
  %t308 = mul i64 %t306, 1
  %t309 = call ptr @__olang_scope_alloc(ptr %t305, i64 %t308)
  call void @llvm.memcpy.p0.p0.i64(ptr %t309, ptr %t307, i64 %t308, i1 false)
  %t310 = insertvalue { i64, ptr } undef, i64 %t306, 0
  %t311 = insertvalue { i64, ptr } %t310, ptr %t309, 1
  %t312 = load i64, ptr %l133
  %t313 = inttoptr i64 %t312 to ptr
  %t314 = load i64, ptr %l133
  %t315 = inttoptr i64 %t314 to ptr
  %t316 = load ptr, ptr %l136, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %t313, ptr %t315, ptr %t316, { i64, ptr } %t311)
  br label %bb81
bb81:
  call void @__olang_scope_close(ptr %s9)
  br label %bb82
bb82:
  %t318 = load i64, ptr %l12, !tbaa !24
  %t320 = add i64 %t318, 1
  store i64 %t320, ptr %l12, !tbaa !24
  br label %bb67
bb83:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flsp_2ecompiler_2flsp_3aServer_2eopened(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l3 = alloca i64
  %lp4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l12 = alloca ptr
  %l15 = alloca i64
  %l19 = alloca { i64, ptr }
  %l22 = alloca i64
  %l26 = alloca i64
  %l29 = alloca i64
  %l50 = alloca ptr
  %l59 = alloca { i64, ptr }
  %l60 = alloca { i64, ptr }
  %l61 = alloca i64
  %l64 = alloca { i64, ptr }
  %l66 = alloca %"compiler/lsp:Doc"
  %l73 = alloca i64
  %l78 = alloca ptr
  %l79 = alloca ptr
  %l81 = alloca { i64, ptr }
  %l83 = alloca ptr
  %l85 = alloca { i64, ptr }
  %l87 = alloca ptr
  %l88 = alloca ptr
  %l89 = alloca i64
  %l91 = alloca i64
  %l94 = alloca { i64, ptr }
  %l96 = alloca { i64, ptr }
  %l99 = alloca ptr
  %l100 = alloca i64
  %l104 = alloca ptr
  %l105 = alloca i64
  %t123 = alloca %"compiler/lsp:Doc", align 8
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t5 = call i64 @compiler_2flsp_2ecompiler_2flsp_3aServer_2eslotOf(ptr %v0, ptr %v1, ptr %t1, { i64, ptr } %t2)
  store i64 %t5, ptr %l15
  br label %bb1
bb1:
  %t6 = load i64, ptr %l15, !tbaa !24
  store i64 %t6, ptr %l3, !tbaa !24
  %t7 = load i64, ptr %l3, !tbaa !24
  %t9 = icmp slt i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t13 = call { i64, ptr } @compiler_2flsp_2ePathOf(ptr %v1, ptr %v0, { i64, ptr } %t11)
  store { i64, ptr } %t13, ptr %l19
  br label %bb4
bb3:
  br label %bb49
bb4:
  %t14 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 16, i64 8)
  store ptr %t14, ptr %lp4
  %t15 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t16 = load ptr, ptr %lp4
  store { i64, ptr } %t15, ptr %t16, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/lsp:Server", ptr %t17, i32 0, i32 1
  %t21 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eLen_Ha7d56d00f5631ac8d39ace71211767ab(ptr %v0, ptr %t19)
  store i64 %t21, ptr %l22
  br label %bb5
bb5:
  %t22 = load i64, ptr %l22, !tbaa !24
  store i64 %t22, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t23 = load i64, ptr %l6, !tbaa !24
  %t24 = load i64, ptr %l5, !tbaa !24
  %t27 = icmp sgt i64 %t23, %t24
  br i1 %t27, label %bb6, label %bb7
bb6:
  %t29 = load i64, ptr %l7, !tbaa !24
  %t31 = icmp sgt i64 %t29, 0
  br i1 %t31, label %bb8, label %bb9
bb7:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb11
bb8:
  %t33 = load i64, ptr %l6, !tbaa !24
  %t34 = load i64, ptr %l5, !tbaa !24
  %t37 = sub i64 %t33, %t34
  %t38 = load i64, ptr %l7, !tbaa !24
  %t41 = add i64 %t37, %t38
  %t43 = sub i64 %t41, 1
  %t44 = load i64, ptr %l7, !tbaa !24
  %t47 = sdiv i64 %t43, %t44
  store i64 %t47, ptr %l29, !tbaa !24
  br label %bb10
bb9:
  store i64 0, ptr %l29, !tbaa !24
  br label %bb10
bb10:
  %t49 = load i64, ptr %l29, !tbaa !24
  store i64 %t49, ptr %l26, !tbaa !24
  br label %bb11
bb11:
  %t50 = load i64, ptr %l26, !tbaa !24
  store i64 %t50, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb12
bb12:
  %t51 = load i64, ptr %l9, !tbaa !24
  %t52 = load i64, ptr %l8, !tbaa !24
  %t55 = icmp slt i64 %t51, %t52
  %t57 = xor i1 %t55, true
  br i1 %t57, label %bb13, label %bb14
bb13:
  br label %bb21
bb14:
  br label %bb15
bb15:
  %t59 = load i64, ptr %l5, !tbaa !24
  %t60 = load i64, ptr %l9, !tbaa !24
  %t61 = load i64, ptr %l7, !tbaa !24
  %t64 = mul i64 %t60, %t61
  %t67 = add i64 %t59, %t64
  store i64 %t67, ptr %l10, !tbaa !24
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/lsp:Server", ptr %t69, i32 0, i32 1
  %t72 = load i64, ptr %l10, !tbaa !24
  %t75 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eAt__Ha6317692879988aa8c889b506af3dc4d(ptr %v0, ptr %v0, ptr %t71, i64 %t72)
  store ptr %t75, ptr %l50
  br label %bb16
bb16:
  %t76 = load ptr, ptr %l50, !tbaa !29
  %t78 = getelementptr %"compiler/lsp:Doc", ptr %t76, i32 0, i32 4
  %t79 = load i1, ptr %t78, !tbaa !21
  %t81 = xor i1 %t79, true
  br i1 %t81, label %bb17, label %bb18
bb17:
  %t83 = load i64, ptr %l10, !tbaa !24
  store i64 %t83, ptr %l3, !tbaa !24
  br label %bb21
bb18:
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t85 = load i64, ptr %l9, !tbaa !24
  %t87 = add i64 %t85, 1
  store i64 %t87, ptr %l9, !tbaa !24
  br label %bb12
bb21:
  %t89 = load i64, ptr %l3, !tbaa !24
  %t91 = icmp slt i64 %t89, 0
  br i1 %t91, label %bb22, label %bb23
bb22:
  %t93 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t93, ptr %l59, !tbaa !27
  %t94 = load ptr, ptr %lp4
  %t95 = load { i64, ptr }, ptr %t94, !tbaa !27
  store { i64, ptr } %t95, ptr %l60, !tbaa !27
  %t96 = ptrtoint ptr %v0 to i64
  store i64 %t96, ptr %l61, !tbaa !24
  %t97 = load i1, ptr @olang_2esole_2ecompiler_2flsp_3aDoc_2e2
  br i1 %t97, label %bb24, label %bb25
bb23:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/lsp:Server", ptr %t99, i32 0, i32 1
  %t102 = load i64, ptr %l3, !tbaa !24
  %t105 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eAt__Ha6317692879988aa8c889b506af3dc4d(ptr %v0, ptr %v0, ptr %t101, i64 %t102)
  store ptr %t105, ptr %l78
  br label %bb30
bb24:
  %t106 = call ptr @__olang_region_make(ptr %v0)
  %t107 = ptrtoint ptr %t106 to i64
  store i64 %t107, ptr %l61, !tbaa !24
  br label %bb25
bb25:
  %t108 = load ptr, ptr %lp4
  %t109 = load { i64, ptr }, ptr %t108, !tbaa !27
  %t110 = load i64, ptr %l61
  %t111 = inttoptr i64 %t110 to ptr
  %t113 = call { i64, ptr } @compiler_2fsession_2eRealOf(ptr %v0, ptr %t111, { i64, ptr } %t109)
  store { i64, ptr } %t113, ptr %l64
  br label %bb26
bb26:
  %t114 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t115 = load i64, ptr %l61
  %t116 = inttoptr i64 %t115 to ptr
  %t117 = extractvalue { i64, ptr } %t114, 0
  %t118 = extractvalue { i64, ptr } %t114, 1
  %t119 = mul i64 %t117, 1
  %t120 = call ptr @__olang_scope_alloc(ptr %t116, i64 %t119)
  call void @llvm.memcpy.p0.p0.i64(ptr %t120, ptr %t118, i64 %t119, i1 false)
  %t121 = insertvalue { i64, ptr } undef, i64 %t117, 0
  %t122 = insertvalue { i64, ptr } %t121, ptr %t120, 1
  %t124 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t125 = load { i64, ptr }, ptr %l60, !tbaa !27
  call void @compiler_2flsp_3aDoc_2ector(ptr %t123, ptr %v1, ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t124, { i64, ptr } %t125, { i64, ptr } %t122)
  call void @llvm.memmove.p0.p0.i64(ptr %l66, ptr %t123, i64 152, i1 false)
  br label %bb27
bb27:
  %t127 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 152, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t127, ptr %l66, i64 152, i1 false)
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t131 = getelementptr %"compiler/lsp:Server", ptr %t129, i32 0, i32 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2ePus_H951db0fb6558bf39f52145a6692a11d3(ptr %v0, ptr %v0, ptr %t131, ptr %t127)
  br label %bb28
bb28:
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t137 = getelementptr %"compiler/lsp:Server", ptr %t135, i32 0, i32 1
  %t139 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eLen_Ha7d56d00f5631ac8d39ace71211767ab(ptr %v0, ptr %t137)
  store i64 %t139, ptr %l73
  br label %bb29
bb29:
  %t140 = load i64, ptr %l73, !tbaa !24
  %t141 = sub i64 %t140, 1
  store i64 %t141, ptr %l3, !tbaa !24
  br label %bb48
bb30:
  %t143 = load ptr, ptr %l78, !tbaa !29
  store ptr %t143, ptr %l12, !tbaa !29
  %t144 = load ptr, ptr %l12, !tbaa !29
  store ptr %t144, ptr %l79, !tbaa !29
  %t145 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t146 = load ptr, ptr %l79, !tbaa !29
  %t147 = getelementptr %"compiler/lsp:Doc", ptr %t146, i32 0, i32 0
  %t148 = load { i64, ptr }, ptr %t147, !tbaa !27
  store { i64, ptr } %t148, ptr %l81, !tbaa !27
  %t150 = load ptr, ptr %l79, !tbaa !29
  %t151 = getelementptr %"compiler/lsp:Doc", ptr %t150, i32 0, i32 0
  store { i64, ptr } %t145, ptr %t151, !tbaa !27
  %t152 = load i1, ptr @olang_2esole_2ecompiler_2flsp_3aDoc_2e0
  br i1 %t152, label %bb31, label %bb32
bb31:
  %t154 = load { i64, ptr }, ptr %l81
  %t155 = extractvalue { i64, ptr } %t154, 1
  call void @__olang_region_release(ptr %t155)
  store { i64, ptr } zeroinitializer, ptr %l81
  br label %bb32
bb32:
  %t156 = load ptr, ptr %l12, !tbaa !29
  store ptr %t156, ptr %l83, !tbaa !29
  %t157 = load ptr, ptr %lp4
  %t158 = load { i64, ptr }, ptr %t157, !tbaa !27
  %t159 = load ptr, ptr %l83, !tbaa !29
  %t160 = getelementptr %"compiler/lsp:Doc", ptr %t159, i32 0, i32 1
  %t161 = load { i64, ptr }, ptr %t160, !tbaa !27
  store { i64, ptr } %t161, ptr %l85, !tbaa !27
  %t163 = load ptr, ptr %l83, !tbaa !29
  %t164 = getelementptr %"compiler/lsp:Doc", ptr %t163, i32 0, i32 1
  store { i64, ptr } %t158, ptr %t164, !tbaa !27
  %t165 = load i1, ptr @olang_2esole_2ecompiler_2flsp_3aDoc_2e1
  br i1 %t165, label %bb33, label %bb34
bb33:
  %t167 = load { i64, ptr }, ptr %l85
  %t168 = extractvalue { i64, ptr } %t167, 1
  call void @__olang_region_release(ptr %t168)
  store { i64, ptr } zeroinitializer, ptr %l85
  br label %bb34
bb34:
  %t169 = load ptr, ptr %l12, !tbaa !29
  store ptr %t169, ptr %l87, !tbaa !29
  %t170 = load ptr, ptr %l12, !tbaa !29
  store ptr %t170, ptr %l88, !tbaa !29
  %t171 = ptrtoint ptr %v0 to i64
  store i64 %t171, ptr %l89, !tbaa !24
  %t172 = load i1, ptr @olang_2esole_2eArray_3cmut_20compiler_2flsp_3aDoc_26_3e_2e_2d1
  br i1 %t172, label %bb35, label %bb36
bb35:
  %t174 = load ptr, ptr %l88, !tbaa !29
  %t175 = call ptr @__olang_region_or(ptr %t174, ptr %v0)
  %t176 = ptrtoint ptr %t175 to i64
  store i64 %t176, ptr %l89, !tbaa !24
  br label %bb36
bb36:
  %t177 = load i64, ptr %l89
  %t178 = inttoptr i64 %t177 to ptr
  %t179 = ptrtoint ptr %t178 to i64
  store i64 %t179, ptr %l91, !tbaa !24
  %t180 = load i1, ptr @olang_2esole_2ecompiler_2flsp_3aDoc_2e2
  br i1 %t180, label %bb37, label %bb38
bb37:
  %t182 = load i64, ptr %l89
  %t183 = inttoptr i64 %t182 to ptr
  %t184 = call ptr @__olang_region_make(ptr %t183)
  %t185 = ptrtoint ptr %t184 to i64
  store i64 %t185, ptr %l91, !tbaa !24
  br label %bb38
bb38:
  %t186 = load ptr, ptr %lp4
  %t187 = load { i64, ptr }, ptr %t186, !tbaa !27
  %t188 = load i64, ptr %l91
  %t189 = inttoptr i64 %t188 to ptr
  %t191 = call { i64, ptr } @compiler_2fsession_2eRealOf(ptr %v0, ptr %t189, { i64, ptr } %t187)
  store { i64, ptr } %t191, ptr %l94
  br label %bb39
bb39:
  %t192 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t193 = load i64, ptr %l91
  %t194 = inttoptr i64 %t193 to ptr
  %t195 = extractvalue { i64, ptr } %t192, 0
  %t196 = extractvalue { i64, ptr } %t192, 1
  %t197 = mul i64 %t195, 1
  %t198 = call ptr @__olang_scope_alloc(ptr %t194, i64 %t197)
  call void @llvm.memcpy.p0.p0.i64(ptr %t198, ptr %t196, i64 %t197, i1 false)
  %t199 = insertvalue { i64, ptr } undef, i64 %t195, 0
  %t200 = insertvalue { i64, ptr } %t199, ptr %t198, 1
  %t201 = load ptr, ptr %l87, !tbaa !29
  %t202 = getelementptr %"compiler/lsp:Doc", ptr %t201, i32 0, i32 2
  %t203 = load { i64, ptr }, ptr %t202, !tbaa !27
  store { i64, ptr } %t203, ptr %l96, !tbaa !27
  %t205 = load ptr, ptr %l87, !tbaa !29
  %t206 = getelementptr %"compiler/lsp:Doc", ptr %t205, i32 0, i32 2
  store { i64, ptr } %t200, ptr %t206, !tbaa !27
  %t207 = load i1, ptr @olang_2esole_2ecompiler_2flsp_3aDoc_2e2
  br i1 %t207, label %bb40, label %bb41
bb40:
  %t209 = load { i64, ptr }, ptr %l96
  %t210 = extractvalue { i64, ptr } %t209, 1
  call void @__olang_region_release(ptr %t210)
  store { i64, ptr } zeroinitializer, ptr %l96
  br label %bb41
bb41:
  %t211 = load ptr, ptr %l12, !tbaa !29
  %t213 = getelementptr %"compiler/lsp:Doc", ptr %t211, i32 0, i32 4
  store i1 true, ptr %t213, !tbaa !21
  %t214 = load ptr, ptr %l12, !tbaa !29
  store ptr %t214, ptr %l99, !tbaa !29
  %t215 = ptrtoint ptr %v0 to i64
  store i64 %t215, ptr %l100, !tbaa !24
  %t216 = load i1, ptr @olang_2esole_2eArray_3cmut_20compiler_2flsp_3aDoc_26_3e_2e_2d1
  br i1 %t216, label %bb42, label %bb43
bb42:
  %t218 = load ptr, ptr %l99, !tbaa !29
  %t219 = call ptr @__olang_region_or(ptr %t218, ptr %v0)
  %t220 = ptrtoint ptr %t219 to i64
  store i64 %t220, ptr %l100, !tbaa !24
  br label %bb43
bb43:
  %t221 = load ptr, ptr %l12, !tbaa !29
  %t223 = getelementptr %"compiler/lsp:Doc", ptr %t221, i32 0, i32 5
  %t224 = load i64, ptr %l100
  %t225 = inttoptr i64 %t224 to ptr
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %t225, ptr %t223)
  br label %bb44
bb44:
  %t227 = load ptr, ptr %l12, !tbaa !29
  store ptr %t227, ptr %l104, !tbaa !29
  %t228 = ptrtoint ptr %v0 to i64
  store i64 %t228, ptr %l105, !tbaa !24
  %t229 = load i1, ptr @olang_2esole_2eArray_3cmut_20compiler_2flsp_3aDoc_26_3e_2e_2d1
  br i1 %t229, label %bb45, label %bb46
bb45:
  %t231 = load ptr, ptr %l104, !tbaa !29
  %t232 = call ptr @__olang_region_or(ptr %t231, ptr %v0)
  %t233 = ptrtoint ptr %t232 to i64
  store i64 %t233, ptr %l105, !tbaa !24
  br label %bb46
bb46:
  %t234 = load ptr, ptr %l12, !tbaa !29
  %t236 = getelementptr %"compiler/lsp:Doc", ptr %t234, i32 0, i32 6
  %t237 = load i64, ptr %l105
  %t238 = inttoptr i64 %t237 to ptr
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H075fcab2d197e70ad987ab163aa86164(ptr %t238, ptr %t236)
  br label %bb47
bb47:
  br label %bb48
bb48:
  br label %bb49
bb49:
  %t240 = load ptr, ptr %l0, !tbaa !29
  %t241 = load i64, ptr %l3, !tbaa !24
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2esetText(ptr %v0, ptr %v2, ptr %t240, i64 %t241, { i64, ptr } %a2)
  br label %bb50
bb50:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flsp_2ecompiler_2flsp_3aServer_2esend(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  call void @compiler_2fsession_2eWriteFramed(ptr %v1, i32 1, { i64, ptr } %a1)
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flsp_2ecompiler_2flsp_3aServer_2esetText(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lsp:Server", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eAt__Ha6317692879988aa8c889b506af3dc4d(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  store ptr %t7, ptr %l7
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l7, !tbaa !29
  store ptr %t8, ptr %l3, !tbaa !29
  %t9 = load ptr, ptr %l3, !tbaa !29
  store ptr %t9, ptr %l8, !tbaa !29
  %t10 = ptrtoint ptr %v0 to i64
  store i64 %t10, ptr %l9, !tbaa !24
  %t11 = load i1, ptr @olang_2esole_2eArray_3cmut_20compiler_2flsp_3aDoc_26_3e_2e_2d1
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load ptr, ptr %l8, !tbaa !29
  %t14 = call ptr @__olang_region_or(ptr %t13, ptr %v0)
  %t15 = ptrtoint ptr %t14 to i64
  store i64 %t15, ptr %l9, !tbaa !24
  br label %bb3
bb3:
  %t16 = load ptr, ptr %l3, !tbaa !29
  %t18 = getelementptr %"compiler/lsp:Doc", ptr %t16, i32 0, i32 3
  %t19 = load i64, ptr %l9
  %t20 = inttoptr i64 %t19 to ptr
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eClear(ptr %t20, ptr %t18)
  br label %bb4
bb4:
  %t22 = load ptr, ptr %l3, !tbaa !29
  store ptr %t22, ptr %l13, !tbaa !29
  %t23 = ptrtoint ptr %v0 to i64
  store i64 %t23, ptr %l14, !tbaa !24
  %t24 = load i1, ptr @olang_2esole_2eArray_3cmut_20compiler_2flsp_3aDoc_26_3e_2e_2d1
  br i1 %t24, label %bb5, label %bb6
bb5:
  %t26 = load ptr, ptr %l13, !tbaa !29
  %t27 = call ptr @__olang_region_or(ptr %t26, ptr %v0)
  %t28 = ptrtoint ptr %t27 to i64
  store i64 %t28, ptr %l14, !tbaa !24
  br label %bb6
bb6:
  %t29 = load ptr, ptr %l3, !tbaa !29
  %t31 = getelementptr %"compiler/lsp:Doc", ptr %t29, i32 0, i32 3
  %t33 = load i64, ptr %l14
  %t34 = inttoptr i64 %t33 to ptr
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %t34, ptr %v1, ptr %t31, { i64, ptr } %a2)
  br label %bb7
bb7:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2edue(ptr %v0, ptr %t37, i64 %t38)
  br label %bb8
bb8:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2flsp_2ecompiler_2flsp_3aServer_2eslotOf(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
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
  %l38 = alloca ptr
  %l41 = alloca i1
  %l45 = alloca ptr
  %l49 = alloca i1
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lsp:Server", ptr %t1, i32 0, i32 1
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eLen_Ha7d56d00f5631ac8d39ace71211767ab(ptr %v0, ptr %t3)
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
  br label %bb22
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
  %t55 = getelementptr %"compiler/lsp:Server", ptr %t53, i32 0, i32 1
  %t56 = load i64, ptr %l7, !tbaa !24
  %t59 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eAt__Ha6317692879988aa8c889b506af3dc4d(ptr %v0, ptr %v0, ptr %t55, i64 %t56)
  store ptr %t59, ptr %l38
  br label %bb12
bb12:
  %t60 = load ptr, ptr %l38, !tbaa !29
  %t62 = getelementptr %"compiler/lsp:Doc", ptr %t60, i32 0, i32 4
  %t63 = load i1, ptr %t62, !tbaa !21
  br i1 %t63, label %bb13, label %bb14
bb13:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/lsp:Server", ptr %t65, i32 0, i32 1
  %t68 = load i64, ptr %l7, !tbaa !24
  %t71 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eAt__Ha6317692879988aa8c889b506af3dc4d(ptr %v0, ptr %v0, ptr %t67, i64 %t68)
  store ptr %t71, ptr %l45
  br label %bb15
bb14:
  store i1 false, ptr %l41, !tbaa !21
  br label %bb17
bb15:
  %t72 = load ptr, ptr %l45, !tbaa !29
  %t74 = getelementptr %"compiler/lsp:Doc", ptr %t72, i32 0, i32 0
  %t75 = load { i64, ptr }, ptr %t74, !tbaa !27
  %t79 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %t75, { i64, ptr } %a1)
  store i1 %t79, ptr %l49
  br label %bb16
bb16:
  %t80 = load i1, ptr %l49, !tbaa !21
  store i1 %t80, ptr %l41, !tbaa !21
  br label %bb17
bb17:
  %t81 = load i1, ptr %l41, !tbaa !21
  br i1 %t81, label %bb18, label %bb19
bb18:
  %t82 = load i64, ptr %l7, !tbaa !24
  store i64 %t82, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  br label %bb21
bb21:
  %t84 = load i64, ptr %l6, !tbaa !24
  %t86 = add i64 %t84, 1
  store i64 %t86, ptr %l6, !tbaa !24
  br label %bb8
bb22:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2flsp_2ecompiler_2flsp_3aServer_2estartWorker(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i32, i32 }
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca { i32, i32 }
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i32
  %l13 = alloca { i32, i32 }
  %l16 = alloca { i32, i32 }
  %l21 = alloca i1
  %l28 = alloca i32
  %l37 = alloca ptr
  %l41 = alloca %"compiler/lsp:worker"
  %l50 = alloca ptr
  %l51 = alloca i64
  %l54 = alloca %"compiler/session:Reader"
  %l56 = alloca ptr
  %l58 = alloca ptr
  %l59 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lsp:Server", ptr %t1, i32 0, i32 6
  store i64 0, ptr %t3, !tbaa !24
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/lsp:Server", ptr %t4, i32 0, i32 3
  %t7 = getelementptr %"compiler/lsp:Worker", ptr %t6, i32 0, i32 0
  %t8 = load i32, ptr %t7, !tbaa !23
  %t10 = icmp sgt i32 %t8, 0
  br i1 %t10, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t12 = call { i32, i32 } @compiler_2fsession_2ePipe()
  store { i32, i32 } %t12, ptr %l13
  br label %bb4
bb4:
  %t13 = load { i32, i32 }, ptr %l13
  store { i32, i32 } %t13, ptr %l1
  %t14 = getelementptr { i32, i32 }, ptr %l1, i32 0, i32 0
  %t15 = load i32, ptr %t14, !tbaa !23
  store i32 %t15, ptr %l2, !tbaa !23
  %t17 = getelementptr { i32, i32 }, ptr %l1, i32 0, i32 1
  %t18 = load i32, ptr %t17, !tbaa !23
  store i32 %t18, ptr %l3, !tbaa !23
  %t20 = call { i32, i32 } @compiler_2fsession_2ePipe()
  store { i32, i32 } %t20, ptr %l16
  br label %bb5
bb5:
  %t21 = load { i32, i32 }, ptr %l16
  store { i32, i32 } %t21, ptr %l4
  %t22 = getelementptr { i32, i32 }, ptr %l4, i32 0, i32 0
  %t23 = load i32, ptr %t22, !tbaa !23
  store i32 %t23, ptr %l5, !tbaa !23
  %t25 = getelementptr { i32, i32 }, ptr %l4, i32 0, i32 1
  %t26 = load i32, ptr %t25, !tbaa !23
  store i32 %t26, ptr %l6, !tbaa !23
  %t28 = load i32, ptr %l2, !tbaa !23
  %t30 = icmp slt i32 %t28, 0
  br i1 %t30, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb8
bb7:
  %t32 = load i32, ptr %l5, !tbaa !23
  %t34 = icmp slt i32 %t32, 0
  store i1 %t34, ptr %l21, !tbaa !21
  br label %bb8
bb8:
  %t36 = load i1, ptr %l21, !tbaa !21
  br i1 %t36, label %bb9, label %bb10
bb9:
  %t37 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2fsession_2eCloseFd(i32 %t37)
  br label %bb11
bb10:
  br label %bb15
bb11:
  %t39 = load i32, ptr %l3, !tbaa !23
  call void @compiler_2fsession_2eCloseFd(i32 %t39)
  br label %bb12
bb12:
  %t41 = load i32, ptr %l5, !tbaa !23
  call void @compiler_2fsession_2eCloseFd(i32 %t41)
  br label %bb13
bb13:
  %t43 = load i32, ptr %l6, !tbaa !23
  call void @compiler_2fsession_2eCloseFd(i32 %t43)
  br label %bb14
bb14:
  br label %ret
bb15:
  %t45 = call i32 @compiler_2fsession_2eFork()
  store i32 %t45, ptr %l28
  br label %bb16
bb16:
  %t46 = load i32, ptr %l28, !tbaa !23
  store i32 %t46, ptr %l7, !tbaa !23
  %t47 = load i32, ptr %l7, !tbaa !23
  %t49 = icmp slt i32 %t47, 0
  br i1 %t49, label %bb17, label %bb18
bb17:
  br label %ret
bb18:
  br label %bb19
bb19:
  %t51 = load i32, ptr %l7, !tbaa !23
  %t53 = icmp eq i32 %t51, 0
  br i1 %t53, label %bb20, label %bb21
bb20:
  %t55 = load i32, ptr %l3, !tbaa !23
  call void @compiler_2fsession_2eCloseFd(i32 %t55)
  br label %bb22
bb21:
  br label %bb28
bb22:
  %t57 = load i32, ptr %l5, !tbaa !23
  call void @compiler_2fsession_2eCloseFd(i32 %t57)
  br label %bb23
bb23:
  call void @compiler_2fsession_2eDup2(i32 2, i32 1)
  br label %bb24
bb24:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/lsp:Server", ptr %t60, i32 0, i32 0
  %t63 = load ptr, ptr %t62, !tbaa !29
  store ptr %t63, ptr %l37, !tbaa !29
  %t64 = load i32, ptr %l2, !tbaa !23
  %t65 = load i32, ptr %l6, !tbaa !23
  %t66 = load ptr, ptr %l37, !tbaa !29
  %t67 = call ptr @__olang_scope_or(ptr %v1, ptr %t66)
  %t68 = ptrtoint ptr %t67 to i64
  %t70 = inttoptr i64 %t68 to ptr
  %t72 = load ptr, ptr %l37, !tbaa !29
  %t75 = call %"compiler/lsp:worker" @compiler_2flsp_3aworker_2ector(ptr %v0, ptr %t70, ptr %v0, ptr %t59, ptr %t72, i32 %t64, i32 %t65)
  store %"compiler/lsp:worker" %t75, ptr %l41
  br label %bb25
bb25:
  %t76 = load %"compiler/lsp:worker", ptr %l41
  %t77 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 112, i64 8)
  store %"compiler/lsp:worker" %t76, ptr %t77
  call void @compiler_2flsp_2ecompiler_2flsp_3aworker_2eRun(ptr %v0, ptr %t77)
  br label %bb26
bb26:
  call void @compiler_2fsession_2eExit(i32 0)
  unreachable
bb27:
  call void @__olang_check_failed(ptr @olang_loc_1521364e571a2f2d_bf1cb7a51b345899)
  unreachable
bb28:
  %t81 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2fsession_2eCloseFd(i32 %t81)
  br label %bb29
bb29:
  %t83 = load i32, ptr %l6, !tbaa !23
  call void @compiler_2fsession_2eCloseFd(i32 %t83)
  br label %bb30
bb30:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load i32, ptr %l7, !tbaa !23
  %t89 = getelementptr %"compiler/lsp:Server", ptr %t85, i32 0, i32 3
  %t90 = getelementptr %"compiler/lsp:Worker", ptr %t89, i32 0, i32 0
  store i32 %t86, ptr %t90, !tbaa !23
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load i32, ptr %l3, !tbaa !23
  %t95 = getelementptr %"compiler/lsp:Server", ptr %t91, i32 0, i32 3
  %t96 = getelementptr %"compiler/lsp:Worker", ptr %t95, i32 0, i32 1
  store i32 %t92, ptr %t96, !tbaa !23
  %t97 = load ptr, ptr %l0, !tbaa !29
  store ptr %t97, ptr %l50, !tbaa !29
  %t98 = ptrtoint ptr %v0 to i64
  store i64 %t98, ptr %l51, !tbaa !24
  %t99 = load i1, ptr @olang_2esole_2ecompiler_2flsp_3aWorker_2e2
  br i1 %t99, label %bb31, label %bb32
bb31:
  %t101 = call ptr @__olang_region_make(ptr %v0)
  %t102 = ptrtoint ptr %t101 to i64
  store i64 %t102, ptr %l51, !tbaa !24
  br label %bb32
bb32:
  %t103 = load i32, ptr %l5, !tbaa !23
  %t104 = load i64, ptr %l51
  %t105 = inttoptr i64 %t104 to ptr
  %t107 = call %"compiler/session:Reader" @compiler_2fsession_3aReader_2ector(ptr %t105, i32 %t103)
  store %"compiler/session:Reader" %t107, ptr %l54
  br label %bb33
bb33:
  %t108 = load %"compiler/session:Reader", ptr %l54
  %t109 = load i64, ptr %l51
  %t110 = inttoptr i64 %t109 to ptr
  %t111 = call ptr @__olang_scope_alloc_a(ptr %t110, i64 48, i64 8)
  store %"compiler/session:Reader" %t108, ptr %t111
  %t112 = load ptr, ptr %l50, !tbaa !29
  %t113 = getelementptr %"compiler/lsp:Server", ptr %t112, i32 0, i32 3
  %t114 = getelementptr %"compiler/lsp:Worker", ptr %t113, i32 0, i32 2
  %t115 = load ptr, ptr %t114, !tbaa !29
  store ptr %t115, ptr %l56, !tbaa !29
  %t117 = load ptr, ptr %l50, !tbaa !29
  %t118 = getelementptr %"compiler/lsp:Server", ptr %t117, i32 0, i32 3
  %t119 = getelementptr %"compiler/lsp:Worker", ptr %t118, i32 0, i32 2
  store ptr %t111, ptr %t119, !tbaa !29
  %t120 = load i1, ptr @olang_2esole_2ecompiler_2flsp_3aWorker_2e2
  br i1 %t120, label %bb34, label %bb35
bb34:
  %t122 = load ptr, ptr %l56
  call void @__olang_region_release(ptr %t122)
  store ptr null, ptr %l56
  br label %bb35
bb35:
  %t123 = load ptr, ptr %l0, !tbaa !29
  store ptr %t123, ptr %l58, !tbaa !29
  %t124 = call i64 @std_2ftime_2eNow()
  store i64 %t124, ptr %l59
  br label %bb36
bb36:
  %t125 = load i64, ptr %l59, !tbaa !24
  %t126 = load ptr, ptr %l58, !tbaa !29
  %t127 = getelementptr %"compiler/lsp:Server", ptr %t126, i32 0, i32 3
  %t128 = getelementptr %"compiler/lsp:Worker", ptr %t127, i32 0, i32 3
  store i64 %t125, ptr %t128, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flsp_2ecompiler_2flsp_3aServer_2estopWorker(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l12 = alloca i64
  %l14 = alloca i64
  %l19 = alloca i64
  %l20 = alloca ptr
  %l24 = alloca { i64, ptr }
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lsp:Server", ptr %t1, i32 0, i32 3
  %t4 = getelementptr %"compiler/lsp:Worker", ptr %t3, i32 0, i32 0
  %t5 = load i32, ptr %t4, !tbaa !23
  %t7 = icmp sle i32 %t5, 0
  br i1 %t7, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/lsp:Server", ptr %t9, i32 0, i32 3
  %t12 = getelementptr %"compiler/lsp:Worker", ptr %t11, i32 0, i32 0
  %t13 = load i32, ptr %t12, !tbaa !23
  call void @compiler_2fsession_2eKillAndReap(i32 %t13)
  br label %bb4
bb4:
  %t15 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2ecloseWorker(ptr %v0, ptr %t15)
  br label %bb5
bb5:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/lsp:Server", ptr %t17, i32 0, i32 5
  store ptr %t19, ptr %l1, !tbaa !29
  store i64 0, ptr %l2, !tbaa !24
  br label %bb6
bb6:
  store %olang.scope zeroinitializer, ptr %s3
  %t21 = load i64, ptr %l2, !tbaa !24
  store i64 %t21, ptr %l12, !tbaa !24
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t22)
  store i64 %t24, ptr %l14
  br label %bb7
bb7:
  %t25 = load i64, ptr %l12, !tbaa !24
  %t26 = load i64, ptr %l14, !tbaa !24
  %t27 = icmp slt i64 %t25, %t26
  %t29 = xor i1 %t27, true
  br i1 %t29, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s3)
  br label %bb15
bb9:
  br label %bb10
bb10:
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t32 = load i64, ptr %l2, !tbaa !24
  %t35 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t31, i64 %t32)
  store i64 %t35, ptr %l19
  br label %bb11
bb11:
  %t36 = load i64, ptr %l19, !tbaa !24
  %t37 = load ptr, ptr %l0, !tbaa !29
  store ptr %t37, ptr %l20, !tbaa !29
  %t40 = call i64 @__olang_fmt_i64(ptr null, i64 %t36)
  %t41 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t40)
  %t42 = call i64 @__olang_fmt_i64(ptr %t41, i64 %t36)
  %t43 = insertvalue { i64, ptr } undef, i64 %t40, 0
  %t44 = insertvalue { i64, ptr } %t43, ptr %t41, 1
  %t46 = extractvalue { i64, ptr } %t44, 0
  %t47 = extractvalue { i64, ptr } %t44, 1
  %t48 = mul i64 %t46, 1
  %t49 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t48)
  call void @llvm.memcpy.p0.p0.i64(ptr %t49, ptr %t47, i64 %t48, i1 false)
  %t50 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr %t49, 1
  %t53 = call { i64, ptr } @compiler_2flsp_2eerrorReply(ptr %s3, ptr %s3, ptr %s3, { i64, ptr } %t51, i64 -32801, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d78, i32 0, i32 1) })
  store { i64, ptr } %t53, ptr %l24
  br label %bb12
bb12:
  %t54 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t55 = extractvalue { i64, ptr } %t54, 0
  %t56 = extractvalue { i64, ptr } %t54, 1
  %t57 = mul i64 %t55, 1
  %t58 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t57)
  call void @llvm.memcpy.p0.p0.i64(ptr %t58, ptr %t56, i64 %t57, i1 false)
  %t59 = insertvalue { i64, ptr } undef, i64 %t55, 0
  %t60 = insertvalue { i64, ptr } %t59, ptr %t58, 1
  %t61 = load ptr, ptr %l20, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2esend(ptr %v0, ptr %s3, ptr %t61, { i64, ptr } %t60)
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s3)
  br label %bb14
bb14:
  %t63 = load i64, ptr %l2, !tbaa !24
  %t65 = add i64 %t63, 1
  store i64 %t65, ptr %l2, !tbaa !24
  br label %bb6
bb15:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/lsp:Server", ptr %t67, i32 0, i32 5
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t69)
  br label %bb16
bb16:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flsp_2ecompiler_2flsp_3aServer_2eworkerLost(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca i64
  %l16 = alloca i64
  %l18 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l27 = alloca i64
  %l29 = alloca i1
  %l33 = alloca ptr
  %l36 = alloca ptr
  %l40 = alloca ptr
  %l42 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l46 = alloca { i64, ptr }
  %l54 = alloca i64
  %l56 = alloca i64
  %l61 = alloca i64
  %l62 = alloca ptr
  %l66 = alloca { i64, ptr }
  %s4 = alloca %olang.scope
  %s7 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lsp:Server", ptr %t1, i32 0, i32 3
  %t4 = getelementptr %"compiler/lsp:Worker", ptr %t3, i32 0, i32 0
  %t5 = load i32, ptr %t4, !tbaa !23
  %t7 = icmp sgt i32 %t5, 0
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/lsp:Server", ptr %t9, i32 0, i32 3
  %t12 = getelementptr %"compiler/lsp:Worker", ptr %t11, i32 0, i32 0
  %t13 = load i32, ptr %t12, !tbaa !23
  call void @compiler_2fsession_2eKillAndReap(i32 %t13)
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t15 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2ecloseWorker(ptr %v0, ptr %t15)
  br label %bb4
bb4:
  br label %bb5
bb5:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/lsp:Server", ptr %t17, i32 0, i32 4
  store ptr %t19, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb6
bb6:
  %t21 = load i64, ptr %l3, !tbaa !24
  store i64 %t21, ptr %l16, !tbaa !24
  %t22 = load ptr, ptr %l2, !tbaa !29
  %t24 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t22)
  store i64 %t24, ptr %l18
  br label %bb7
bb7:
  %t25 = load i64, ptr %l16, !tbaa !24
  %t26 = load i64, ptr %l18, !tbaa !24
  %t27 = icmp slt i64 %t25, %t26
  %t29 = xor i1 %t27, true
  br i1 %t29, label %bb8, label %bb9
bb8:
  br label %bb25
bb9:
  br label %bb10
bb10:
  %t31 = load ptr, ptr %l2, !tbaa !29
  %t32 = load i64, ptr %l3, !tbaa !24
  %t35 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t31, i64 %t32)
  store i64 %t35, ptr %l23
  br label %bb11
bb11:
  %t36 = load i64, ptr %l23, !tbaa !24
  store i64 %t36, ptr %l4, !tbaa !24
  %t37 = load i64, ptr %l4, !tbaa !24
  store i64 %t37, ptr %l24, !tbaa !24
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/lsp:Server", ptr %t38, i32 0, i32 1
  %t42 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eLen_Ha7d56d00f5631ac8d39ace71211767ab(ptr %v0, ptr %t40)
  store i64 %t42, ptr %l27
  br label %bb12
bb12:
  %t43 = load i64, ptr %l24, !tbaa !24
  %t44 = load i64, ptr %l27, !tbaa !24
  %t45 = icmp slt i64 %t43, %t44
  br i1 %t45, label %bb13, label %bb14
bb13:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/lsp:Server", ptr %t47, i32 0, i32 1
  %t50 = load i64, ptr %l4, !tbaa !24
  %t53 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eAt__Ha6317692879988aa8c889b506af3dc4d(ptr %v0, ptr %v0, ptr %t49, i64 %t50)
  store ptr %t53, ptr %l33
  br label %bb15
bb14:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb16
bb15:
  %t54 = load ptr, ptr %l33, !tbaa !29
  %t56 = getelementptr %"compiler/lsp:Doc", ptr %t54, i32 0, i32 4
  %t57 = load i1, ptr %t56, !tbaa !21
  store i1 %t57, ptr %l29, !tbaa !21
  br label %bb16
bb16:
  %t59 = load i1, ptr %l29, !tbaa !21
  br i1 %t59, label %bb17, label %bb18
bb17:
  store %olang.scope zeroinitializer, ptr %s4
  %t60 = load ptr, ptr %l0, !tbaa !29
  store ptr %t60, ptr %l36, !tbaa !29
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/lsp:Server", ptr %t61, i32 0, i32 1
  %t64 = load i64, ptr %l4, !tbaa !24
  %t67 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eAt__Ha6317692879988aa8c889b506af3dc4d(ptr %v0, ptr %v0, ptr %t63, i64 %t64)
  store ptr %t67, ptr %l40
  br label %bb19
bb18:
  br label %bb23
bb19:
  %t68 = load ptr, ptr %l40, !tbaa !29
  %t70 = getelementptr %"compiler/lsp:Doc", ptr %t68, i32 0, i32 0
  %t71 = load { i64, ptr }, ptr %t70, !tbaa !27
  store { i64, ptr } %t71, ptr %l42, !tbaa !27
  %t74 = call { i64, ptr } @compiler_2flsp_2elostDiagnostic(ptr %v1, ptr %s4, { i64, ptr } %a1)
  store { i64, ptr } %t74, ptr %l44
  br label %bb20
bb20:
  %t75 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t76 = extractvalue { i64, ptr } %t75, 0
  %t77 = extractvalue { i64, ptr } %t75, 1
  %t78 = mul i64 %t76, 1
  %t79 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t78)
  call void @llvm.memcpy.p0.p0.i64(ptr %t79, ptr %t77, i64 %t78, i1 false)
  %t80 = insertvalue { i64, ptr } undef, i64 %t76, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t79, 1
  %t82 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t84 = call { i64, ptr } @compiler_2flsp_2epublish(ptr %v0, ptr %s4, ptr %s4, { i64, ptr } %t82, { i64, ptr } %t81)
  store { i64, ptr } %t84, ptr %l46
  br label %bb21
bb21:
  %t85 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t86 = extractvalue { i64, ptr } %t85, 0
  %t87 = extractvalue { i64, ptr } %t85, 1
  %t88 = mul i64 %t86, 1
  %t89 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t88)
  call void @llvm.memcpy.p0.p0.i64(ptr %t89, ptr %t87, i64 %t88, i1 false)
  %t90 = insertvalue { i64, ptr } undef, i64 %t86, 0
  %t91 = insertvalue { i64, ptr } %t90, ptr %t89, 1
  %t92 = load ptr, ptr %l36, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2esend(ptr %v0, ptr %s4, ptr %t92, { i64, ptr } %t91)
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s4)
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t94 = load i64, ptr %l3, !tbaa !24
  %t96 = add i64 %t94, 1
  store i64 %t96, ptr %l3, !tbaa !24
  br label %bb6
bb25:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/lsp:Server", ptr %t98, i32 0, i32 4
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t100)
  br label %bb26
bb26:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/lsp:Server", ptr %t102, i32 0, i32 5
  store ptr %t104, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb27
bb27:
  store %olang.scope zeroinitializer, ptr %s7
  %t106 = load i64, ptr %l6, !tbaa !24
  store i64 %t106, ptr %l54, !tbaa !24
  %t107 = load ptr, ptr %l5, !tbaa !29
  %t109 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t107)
  store i64 %t109, ptr %l56
  br label %bb28
bb28:
  %t110 = load i64, ptr %l54, !tbaa !24
  %t111 = load i64, ptr %l56, !tbaa !24
  %t112 = icmp slt i64 %t110, %t111
  %t114 = xor i1 %t112, true
  br i1 %t114, label %bb29, label %bb30
bb29:
  call void @__olang_scope_close(ptr %s7)
  br label %bb36
bb30:
  br label %bb31
bb31:
  %t116 = load ptr, ptr %l5, !tbaa !29
  %t117 = load i64, ptr %l6, !tbaa !24
  %t120 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t116, i64 %t117)
  store i64 %t120, ptr %l61
  br label %bb32
bb32:
  %t121 = load i64, ptr %l61, !tbaa !24
  %t122 = load ptr, ptr %l0, !tbaa !29
  store ptr %t122, ptr %l62, !tbaa !29
  %t125 = call i64 @__olang_fmt_i64(ptr null, i64 %t121)
  %t126 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t125)
  %t127 = call i64 @__olang_fmt_i64(ptr %t126, i64 %t121)
  %t128 = insertvalue { i64, ptr } undef, i64 %t125, 0
  %t129 = insertvalue { i64, ptr } %t128, ptr %t126, 1
  %t131 = extractvalue { i64, ptr } %t129, 0
  %t132 = extractvalue { i64, ptr } %t129, 1
  %t133 = mul i64 %t131, 1
  %t134 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t133)
  call void @llvm.memcpy.p0.p0.i64(ptr %t134, ptr %t132, i64 %t133, i1 false)
  %t135 = insertvalue { i64, ptr } undef, i64 %t131, 0
  %t136 = insertvalue { i64, ptr } %t135, ptr %t134, 1
  %t138 = call { i64, ptr } @compiler_2flsp_2ereply(ptr %s7, ptr %s7, ptr %s7, { i64, ptr } %t136, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d79, i32 0, i32 1) })
  store { i64, ptr } %t138, ptr %l66
  br label %bb33
bb33:
  %t139 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t140 = extractvalue { i64, ptr } %t139, 0
  %t141 = extractvalue { i64, ptr } %t139, 1
  %t142 = mul i64 %t140, 1
  %t143 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t142)
  call void @llvm.memcpy.p0.p0.i64(ptr %t143, ptr %t141, i64 %t142, i1 false)
  %t144 = insertvalue { i64, ptr } undef, i64 %t140, 0
  %t145 = insertvalue { i64, ptr } %t144, ptr %t143, 1
  %t146 = load ptr, ptr %l62, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2esend(ptr %v0, ptr %s7, ptr %t146, { i64, ptr } %t145)
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s7)
  br label %bb35
bb35:
  %t148 = load i64, ptr %l6, !tbaa !24
  %t150 = add i64 %t148, 1
  store i64 %t150, ptr %l6, !tbaa !24
  br label %bb27
bb36:
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t154 = getelementptr %"compiler/lsp:Server", ptr %t152, i32 0, i32 5
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t154)
  br label %bb37
bb37:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flsp_2ecompiler_2flsp_3aworker_2eRun(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l7 = alloca %"compiler/session:Reader"
  %l12 = alloca i64
  %l14 = alloca i64
  %l19 = alloca ptr
  %l23 = alloca ptr
  %l25 = alloca { i64, ptr }
  %l26 = alloca i64
  %l28 = alloca ptr
  %l29 = alloca i64
  %l33 = alloca { i64, ptr }
  %l40 = alloca i64
  %l42 = alloca i64
  %l47 = alloca i64
  %l54 = alloca %"compiler/session:Reader"
  %l56 = alloca i1
  %l58 = alloca { i64, ptr }
  %l60 = alloca { i64, ptr }
  %l61 = alloca i32
  %l63 = alloca i1
  %s0 = alloca %olang.scope
  %s9 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lsp:worker", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/lsp:Server", ptr %t4, i32 0, i32 1
  store ptr %t6, ptr %l1, !tbaa !29
  store i64 0, ptr %l2, !tbaa !24
  br label %bb1
bb1:
  %t8 = load i64, ptr %l2, !tbaa !24
  store i64 %t8, ptr %l12, !tbaa !24
  %t9 = load ptr, ptr %l1, !tbaa !29
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eLen_Ha7d56d00f5631ac8d39ace71211767ab(ptr %v0, ptr %t9)
  store i64 %t11, ptr %l14
  br label %bb2
bb2:
  %t12 = load i64, ptr %l12, !tbaa !24
  %t13 = load i64, ptr %l14, !tbaa !24
  %t14 = icmp slt i64 %t12, %t13
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb3, label %bb4
bb3:
  br label %bb17
bb4:
  br label %bb5
bb5:
  %t18 = load ptr, ptr %l1, !tbaa !29
  %t19 = load i64, ptr %l2, !tbaa !24
  %t22 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eAt__Ha6317692879988aa8c889b506af3dc4d(ptr %v0, ptr %v0, ptr %t18, i64 %t19)
  store ptr %t22, ptr %l19
  br label %bb6
bb6:
  %t23 = load ptr, ptr %l19, !tbaa !29
  store ptr %t23, ptr %l3, !tbaa !29
  %t24 = load ptr, ptr %l3, !tbaa !29
  %t26 = getelementptr %"compiler/lsp:Doc", ptr %t24, i32 0, i32 4
  %t27 = load i1, ptr %t26, !tbaa !21
  br i1 %t27, label %bb7, label %bb8
bb7:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/lsp:worker", ptr %t29, i32 0, i32 4
  store ptr %t31, ptr %l23, !tbaa !29
  %t32 = load ptr, ptr %l3, !tbaa !29
  %t34 = getelementptr %"compiler/lsp:Doc", ptr %t32, i32 0, i32 2
  %t35 = load { i64, ptr }, ptr %t34, !tbaa !27
  store { i64, ptr } %t35, ptr %l25, !tbaa !27
  %t36 = ptrtoint ptr %v0 to i64
  store i64 %t36, ptr %l26, !tbaa !24
  %t37 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20st_Ha3f33285783aff10f13cf80b683d8c03
  br i1 %t37, label %bb9, label %bb10
bb8:
  br label %bb15
bb9:
  %t39 = call ptr @__olang_region_make(ptr %v0)
  %t40 = ptrtoint ptr %t39 to i64
  store i64 %t40, ptr %l26, !tbaa !24
  br label %bb10
bb10:
  %t41 = load ptr, ptr %l3, !tbaa !29
  store ptr %t41, ptr %l28, !tbaa !29
  %t42 = ptrtoint ptr %v0 to i64
  store i64 %t42, ptr %l29, !tbaa !24
  %t43 = load i1, ptr @olang_2esole_2eArray_3cmut_20compiler_2flsp_3aDoc_26_3e_2e_2d1
  br i1 %t43, label %bb11, label %bb12
bb11:
  %t45 = load ptr, ptr %l28, !tbaa !29
  %t46 = call ptr @__olang_region_or(ptr %t45, ptr %v0)
  %t47 = ptrtoint ptr %t46 to i64
  store i64 %t47, ptr %l29, !tbaa !24
  br label %bb12
bb12:
  %t48 = load ptr, ptr %l3, !tbaa !29
  %t50 = getelementptr %"compiler/lsp:Doc", ptr %t48, i32 0, i32 3
  %t51 = load i64, ptr %l29
  %t52 = inttoptr i64 %t51 to ptr
  %t53 = load i64, ptr %l26
  %t54 = inttoptr i64 %t53 to ptr
  %t56 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %t52, ptr %t54, ptr %t50)
  store { i64, ptr } %t56, ptr %l33
  br label %bb13
bb13:
  %t57 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t58 = load i64, ptr %l26
  %t59 = inttoptr i64 %t58 to ptr
  %t60 = extractvalue { i64, ptr } %t57, 0
  %t61 = extractvalue { i64, ptr } %t57, 1
  %t62 = mul i64 %t60, 1
  %t63 = call ptr @__olang_scope_alloc(ptr %t59, i64 %t62)
  call void @llvm.memcpy.p0.p0.i64(ptr %t63, ptr %t61, i64 %t62, i1 false)
  %t64 = insertvalue { i64, ptr } undef, i64 %t60, 0
  %t65 = insertvalue { i64, ptr } %t64, ptr %t63, 1
  %t66 = load ptr, ptr %l23, !tbaa !29
  %t67 = load { i64, ptr }, ptr %l25, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6f7a2f8d839c49b6e7a19c287d4b190c(ptr %v0, ptr %v0, ptr %v0, ptr %t66, { i64, ptr } %t67, { i64, ptr } %t65)
  br label %bb14
bb14:
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t69 = load i64, ptr %l2, !tbaa !24
  %t71 = add i64 %t69, 1
  store i64 %t71, ptr %l2, !tbaa !24
  br label %bb1
bb17:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/lsp:worker", ptr %t73, i32 0, i32 0
  %t76 = load ptr, ptr %t75, !tbaa !29
  %t78 = getelementptr %"compiler/lsp:Server", ptr %t76, i32 0, i32 4
  store ptr %t78, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb18
bb18:
  %t80 = load i64, ptr %l5, !tbaa !24
  store i64 %t80, ptr %l40, !tbaa !24
  %t81 = load ptr, ptr %l4, !tbaa !29
  %t83 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t81)
  store i64 %t83, ptr %l42
  br label %bb19
bb19:
  %t84 = load i64, ptr %l40, !tbaa !24
  %t85 = load i64, ptr %l42, !tbaa !24
  %t86 = icmp slt i64 %t84, %t85
  %t88 = xor i1 %t86, true
  br i1 %t88, label %bb20, label %bb21
bb20:
  br label %bb26
bb21:
  br label %bb22
bb22:
  %t90 = load ptr, ptr %l4, !tbaa !29
  %t91 = load i64, ptr %l5, !tbaa !24
  %t94 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t90, i64 %t91)
  store i64 %t94, ptr %l47
  br label %bb23
bb23:
  %t95 = load i64, ptr %l47, !tbaa !24
  %t96 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aworker_2echeck(ptr %v0, ptr %t96, i64 %t95)
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t100 = load i64, ptr %l5, !tbaa !24
  %t102 = add i64 %t100, 1
  store i64 %t102, ptr %l5, !tbaa !24
  br label %bb18
bb26:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/lsp:worker", ptr %t104, i32 0, i32 2
  %t107 = load i32, ptr %t106, !tbaa !23
  %t109 = call %"compiler/session:Reader" @compiler_2fsession_3aReader_2ector(ptr %s0, i32 %t107)
  store %"compiler/session:Reader" %t109, ptr %l54
  br label %bb27
bb27:
  %t110 = load %"compiler/session:Reader", ptr %l54
  store %"compiler/session:Reader" %t110, ptr %l7
  br label %bb28
bb28:
  %t112 = call i1 @compiler_2fsession_2ecompiler_2fsession_3aReader_2eFill(ptr %s0, ptr %l7)
  store i1 %t112, ptr %l56
  br label %bb29
bb29:
  %t113 = load i1, ptr %l56, !tbaa !21
  %t114 = xor i1 %t113, true
  br i1 %t114, label %bb30, label %bb31
bb30:
  br label %bb42
bb31:
  br label %bb32
bb32:
  br label %bb33
bb33:
  store %olang.scope zeroinitializer, ptr %s9
  %t117 = call { i32, { i64, ptr } } @compiler_2fsession_2ecompiler_2fsession_3aReader_2eNext(ptr %s0, ptr %s9, ptr %l7)
  %t118 = extractvalue { i32, { i64, ptr } } %t117, 1
  %t119 = extractvalue { i32, { i64, ptr } } %t117, 0
  store i32 %t119, ptr %l61
  %t120 = icmp ne i32 %t119, 0
  br i1 %t120, label %bb35, label %ok.121, !prof !99
ok.121:
  store { i64, ptr } %t118, ptr %l60
  br label %bb34
bb34:
  %t122 = load { i64, ptr }, ptr %l60, !tbaa !27
  store { i64, ptr } %t122, ptr %l58, !tbaa !27
  br label %bb37
bb35:
  %t123 = load i32, ptr %l61, !tbaa !23
  %t124 = ashr i32 %t123, 16
  %t126 = icmp eq i32 %t124, 1
  store i1 %t126, ptr %l63, !tbaa !21
  br label %bb36
bb36:
  call void @__olang_scope_close(ptr %s9)
  br label %bb40
bb37:
  %t127 = load { i64, ptr }, ptr %l58, !tbaa !27
  %t128 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aworker_2eanswer(ptr %v0, ptr %s9, ptr %t128, { i64, ptr } %t127)
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s9)
  br label %bb39
bb39:
  br label %bb33
bb40:
  br label %bb41
bb41:
  br label %bb28
bb42:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2flsp_2ecompiler_2flsp_3aworker_2eanalysis(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca ptr
  %l8 = alloca i1
  %l22 = alloca ptr
  %l30 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"compiler/lsp:worker", ptr %t2, i32 0, i32 6
  %t5 = load i64, ptr %t4, !tbaa !24
  %t8 = icmp eq i64 %t1, %t5
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/lsp:worker", ptr %t10, i32 0, i32 5
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = icmp eq ptr %t13, null
  %t17 = xor i1 %t15, true
  store i1 %t17, ptr %l8, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb3
bb3:
  %t19 = load i1, ptr %l8, !tbaa !21
  br i1 %t19, label %bb4, label %bb5
bb4:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/lsp:worker", ptr %t20, i32 0, i32 5
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t25 = icmp eq ptr %t23, null
  br i1 %t25, label %bb6, label %bb7
bb5:
  br label %bb9
bb6:
  call void @__olang_check_failed(ptr @olang_loc_cb6dbf061e2dce2f_dc463ae13d2c2fbb)
  unreachable
bb7:
  br label %bb8
bb8:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/lsp:worker", ptr %t27, i32 0, i32 5
  %t30 = load ptr, ptr %t29, !tbaa !29
  store ptr %t30, ptr %rv
  br label %ret
bb9:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/lsp:worker", ptr %t32, i32 0, i32 0
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t37 = getelementptr %"compiler/lsp:Server", ptr %t35, i32 0, i32 1
  %t38 = load i64, ptr %l1, !tbaa !24
  %t41 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eAt__Ha6317692879988aa8c889b506af3dc4d(ptr %v0, ptr %v0, ptr %t37, i64 %t38)
  store ptr %t41, ptr %l22
  br label %bb10
bb10:
  %t42 = load ptr, ptr %l22, !tbaa !29
  %t44 = getelementptr %"compiler/lsp:Doc", ptr %t42, i32 0, i32 1
  %t45 = load { i64, ptr }, ptr %t44, !tbaa !27
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/lsp:worker", ptr %t46, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !29
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/lsp:worker", ptr %t51, i32 0, i32 4
  %t58 = call ptr @compiler_2fsession_2eAnalysis_2eAnalyze(ptr %v0, ptr %v0, ptr %v1, ptr %v0, ptr %v2, { i64, ptr } %t45, ptr %t49, ptr %a2, ptr %t53, i1 true, i1 true)
  store ptr %t58, ptr %l30
  br label %bb11
bb11:
  %t59 = load ptr, ptr %l30, !tbaa !29
  store ptr %t59, ptr %l3, !tbaa !29
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load ptr, ptr %l3, !tbaa !29
  %t65 = getelementptr %"compiler/lsp:worker", ptr %t60, i32 0, i32 5
  store ptr %t61, ptr %t65, !tbaa !29
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load i64, ptr %l1, !tbaa !24
  %t70 = getelementptr %"compiler/lsp:worker", ptr %t66, i32 0, i32 6
  store i64 %t67, ptr %t70, !tbaa !24
  %t71 = load ptr, ptr %l3, !tbaa !29
  store ptr %t71, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2flsp_2ecompiler_2flsp_3aworker_2eanswer(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca { i64, ptr }
  %l10 = alloca %"compiler/session:Positions"
  %l11 = alloca i64
  %l13 = alloca i64
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca { i64, ptr }
  %l17 = alloca %"std/prelude/text:StringBuilder"
  %l18 = alloca ptr
  %l19 = alloca i64
  %l20 = alloca %"std/prelude/text:StringBuilder"
  %l21 = alloca %"compiler/session:Found"
  %l22 = alloca %"std/prelude/text:StringBuilder"
  %l23 = alloca { i64, ptr }
  %l24 = alloca %"compiler/session:Positions"
  %l25 = alloca %"compiler/source:Span"
  %l26 = alloca %"std/prelude/text:StringBuilder"
  %l27 = alloca ptr
  %l29 = alloca ptr
  %l30 = alloca i32
  %l32 = alloca i1
  %l36 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l39 = alloca ptr
  %l41 = alloca { i64, ptr }
  %l43 = alloca ptr
  %l44 = alloca i32
  %l46 = alloca i1
  %l49 = alloca ptr
  %l51 = alloca { i64, ptr }
  %l53 = alloca ptr
  %l55 = alloca { i64, ptr }
  %l57 = alloca ptr
  %l58 = alloca i32
  %l60 = alloca i1
  %l63 = alloca { i64, ptr }
  %l67 = alloca i64
  %l70 = alloca ptr
  %l72 = alloca { i64, ptr }
  %l78 = alloca ptr
  %l79 = alloca { i64, ptr }
  %l84 = alloca { i64, ptr }
  %l85 = alloca i32
  %l90 = alloca %"compiler/session:Positions"
  %l91 = alloca i64
  %l94 = alloca { i64, ptr }
  %l96 = alloca ptr
  %l97 = alloca i32
  %l99 = alloca i1
  %l103 = alloca { i64, ptr }
  %l105 = alloca ptr
  %l106 = alloca i32
  %l108 = alloca i1
  %l111 = alloca i64
  %l112 = alloca i32
  %l114 = alloca i1
  %l117 = alloca i64
  %l120 = alloca { i64, ptr }
  %l122 = alloca ptr
  %l123 = alloca i32
  %l125 = alloca i1
  %l129 = alloca { i64, ptr }
  %l131 = alloca ptr
  %l132 = alloca i32
  %l134 = alloca i1
  %l137 = alloca i64
  %l138 = alloca i32
  %l140 = alloca i1
  %l146 = alloca i64
  %l149 = alloca %"compiler/diag:Diagnostics"
  %l152 = alloca i1
  %l153 = alloca { i64, ptr }
  %l157 = alloca { i64, ptr }
  %l158 = alloca i32
  %l159 = alloca ptr
  %l161 = alloca { i64, ptr }
  %l165 = alloca i1
  %l166 = alloca ptr
  %l168 = alloca { i64, ptr }
  %l170 = alloca %"std/prelude/text:StringBuilder"
  %l180 = alloca ptr
  %l181 = alloca { i64, ptr }
  %l183 = alloca { i64, ptr }
  %l185 = alloca { i64, ptr }
  %l188 = alloca i1
  %l199 = alloca ptr
  %l201 = alloca i1
  %l205 = alloca i64
  %l208 = alloca i1
  %l213 = alloca ptr
  %l218 = alloca ptr
  %l220 = alloca { i64, ptr }
  %l222 = alloca %"std/prelude/text:StringBuilder"
  %l223 = alloca ptr
  %l224 = alloca ptr
  %l229 = alloca ptr
  %l235 = alloca ptr
  %l236 = alloca { i64, ptr }
  %l238 = alloca { i64, ptr }
  %l240 = alloca { i64, ptr }
  %l242 = alloca %"compiler/session:Found"
  %l247 = alloca %"compiler/session:Found"
  %l248 = alloca i32
  %l250 = alloca i1
  %l251 = alloca ptr
  %l253 = alloca { i64, ptr }
  %l256 = alloca i1
  %l257 = alloca %"std/prelude/text:StringBuilder"
  %l262 = alloca ptr
  %l263 = alloca { i64, ptr }
  %l265 = alloca { i64, ptr }
  %l267 = alloca { i64, ptr }
  %l270 = alloca i1
  %l271 = alloca i1
  %l274 = alloca ptr
  %l276 = alloca { i64, ptr }
  %l281 = alloca { i64, ptr }
  %l286 = alloca %"compiler/session:Positions"
  %l289 = alloca %"compiler/source:Span"
  %l290 = alloca %"std/prelude/text:StringBuilder"
  %l292 = alloca ptr
  %l295 = alloca { i64, ptr }
  %l305 = alloca ptr
  %l306 = alloca { i64, ptr }
  %l308 = alloca { i64, ptr }
  %l310 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %t267 = alloca %"compiler/diag:Diagnostics", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call { i32, ptr } @std_2fjson_2eJson_2eParse(ptr %v1, ptr %s0, { i64, ptr } %a1)
  %t4 = extractvalue { i32, ptr } %t3, 1
  %t5 = extractvalue { i32, ptr } %t3, 0
  store i32 %t5, ptr %l30
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store ptr %t4, ptr %l29
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l29, !tbaa !29
  store ptr %t8, ptr %l27, !tbaa !29
  br label %bb6
bb2:
  %t9 = load i32, ptr %l30, !tbaa !23
  %t10 = ashr i32 %t9, 16
  %t12 = icmp eq i32 %t10, 1
  store i1 %t12, ptr %l32, !tbaa !21
  %t13 = load i32, ptr %l30, !tbaa !23
  %t14 = ashr i32 %t13, 16
  %t16 = icmp eq i32 %t14, 1
  br i1 %t16, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb6:
  %t18 = load ptr, ptr %l27, !tbaa !29
  store ptr %t18, ptr %l2, !tbaa !29
  %t19 = load ptr, ptr %l2, !tbaa !29
  %t21 = call { i64, ptr } @compiler_2flsp_2eidOf(ptr %s0, ptr %s0, ptr %t19)
  store { i64, ptr } %t21, ptr %l36
  br label %bb7
bb7:
  %t22 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t22, ptr %l3, !tbaa !27
  %t23 = load ptr, ptr %l2, !tbaa !29
  %t25 = call { i64, ptr } @compiler_2flsp_2estr(ptr %s0, ptr %s0, ptr %s0, ptr %t23, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d80, i32 0, i32 1) })
  store { i64, ptr } %t25, ptr %l38
  br label %bb8
bb8:
  %t26 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t26, ptr %l4, !tbaa !27
  %t27 = load ptr, ptr %l2, !tbaa !29
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d81, i32 0, i32 1) }, ptr %l41, !tbaa !27
  %t28 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t31 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %s0, ptr %s0, ptr %t27, { i64, ptr } %t28)
  %t32 = extractvalue { i32, ptr } %t31, 1
  %t33 = extractvalue { i32, ptr } %t31, 0
  store i32 %t33, ptr %l44
  %t34 = icmp ne i32 %t33, 0
  br i1 %t34, label %bb10, label %ok.35, !prof !99
ok.35:
  store ptr %t32, ptr %l43
  br label %bb9
bb9:
  %t36 = load ptr, ptr %l43, !tbaa !29
  store ptr %t36, ptr %l39, !tbaa !29
  br label %bb16
bb10:
  %t37 = load i32, ptr %l44, !tbaa !23
  %t38 = ashr i32 %t37, 16
  %t40 = icmp eq i32 %t38, 1
  store i1 %t40, ptr %l46, !tbaa !21
  %t41 = load i32, ptr %l44, !tbaa !23
  %t42 = ashr i32 %t41, 16
  %t44 = icmp eq i32 %t42, 1
  br i1 %t44, label %bb11, label %bb12
bb11:
  call void @__olang_errpay_pop()
  br label %bb12
bb12:
  br label %bb13
bb13:
  store %olang.scope zeroinitializer, ptr %s2
  %t46 = load ptr, ptr %l0, !tbaa !29
  store ptr %t46, ptr %l49, !tbaa !29
  %t47 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t49 = call { i64, ptr } @compiler_2flsp_2ereply(ptr %s0, ptr %s2, ptr %s2, { i64, ptr } %t47, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d82, i32 0, i32 1) })
  store { i64, ptr } %t49, ptr %l51
  br label %bb14
bb14:
  %t50 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t51 = extractvalue { i64, ptr } %t50, 0
  %t52 = extractvalue { i64, ptr } %t50, 1
  %t53 = mul i64 %t51, 1
  %t54 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t53)
  call void @llvm.memcpy.p0.p0.i64(ptr %t54, ptr %t52, i64 %t53, i1 false)
  %t55 = insertvalue { i64, ptr } undef, i64 %t51, 0
  %t56 = insertvalue { i64, ptr } %t55, ptr %t54, 1
  %t57 = load ptr, ptr %l49, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aworker_2esend(ptr %v0, ptr %s2, ptr %t57, { i64, ptr } %t56)
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb16:
  %t59 = load ptr, ptr %l39, !tbaa !29
  store ptr %t59, ptr %l5, !tbaa !29
  %t60 = load ptr, ptr %l5, !tbaa !29
  store { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d83, i32 0, i32 1) }, ptr %l55, !tbaa !27
  %t61 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t64 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %s0, ptr %s0, ptr %t60, { i64, ptr } %t61)
  %t65 = extractvalue { i32, ptr } %t64, 1
  %t66 = extractvalue { i32, ptr } %t64, 0
  store i32 %t66, ptr %l58
  %t67 = icmp ne i32 %t66, 0
  br i1 %t67, label %bb18, label %ok.68, !prof !99
ok.68:
  store ptr %t65, ptr %l57
  br label %bb17
bb17:
  %t69 = load ptr, ptr %l57, !tbaa !29
  store ptr %t69, ptr %l53, !tbaa !29
  br label %bb22
bb18:
  %t70 = load i32, ptr %l58, !tbaa !23
  %t71 = ashr i32 %t70, 16
  %t73 = icmp eq i32 %t71, 1
  store i1 %t73, ptr %l60, !tbaa !21
  %t74 = load i32, ptr %l58, !tbaa !23
  %t75 = ashr i32 %t74, 16
  %t77 = icmp eq i32 %t75, 1
  br i1 %t77, label %bb19, label %bb20
bb19:
  call void @__olang_errpay_pop()
  br label %bb20
bb20:
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb22:
  %t79 = load ptr, ptr %l53, !tbaa !29
  %t80 = call { i64, ptr } @compiler_2flsp_2estr(ptr %s0, ptr %s0, ptr %s0, ptr %t79, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d84, i32 0, i32 1) })
  store { i64, ptr } %t80, ptr %l63
  br label %bb23
bb23:
  %t81 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/lsp:worker", ptr %t82, i32 0, i32 0
  %t85 = load ptr, ptr %t84, !tbaa !29
  %t89 = call i64 @compiler_2flsp_2ecompiler_2flsp_3aServer_2eslotOf(ptr %v0, ptr %s0, ptr %t85, { i64, ptr } %t81)
  store i64 %t89, ptr %l67
  br label %bb24
bb24:
  %t90 = load i64, ptr %l67, !tbaa !24
  store i64 %t90, ptr %l7, !tbaa !24
  %t91 = load i64, ptr %l7, !tbaa !24
  %t93 = icmp slt i64 %t91, 0
  br i1 %t93, label %bb25, label %bb26
bb25:
  store %olang.scope zeroinitializer, ptr %s4
  %t95 = load ptr, ptr %l0, !tbaa !29
  store ptr %t95, ptr %l70, !tbaa !29
  %t96 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t98 = call { i64, ptr } @compiler_2flsp_2ereply(ptr %s0, ptr %s4, ptr %s4, { i64, ptr } %t96, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d85, i32 0, i32 1) })
  store { i64, ptr } %t98, ptr %l72
  br label %bb27
bb26:
  br label %bb29
bb27:
  %t99 = load { i64, ptr }, ptr %l72, !tbaa !27
  %t100 = extractvalue { i64, ptr } %t99, 0
  %t101 = extractvalue { i64, ptr } %t99, 1
  %t102 = mul i64 %t100, 1
  %t103 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t102)
  call void @llvm.memcpy.p0.p0.i64(ptr %t103, ptr %t101, i64 %t102, i1 false)
  %t104 = insertvalue { i64, ptr } undef, i64 %t100, 0
  %t105 = insertvalue { i64, ptr } %t104, ptr %t103, 1
  %t106 = load ptr, ptr %l70, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aworker_2esend(ptr %v0, ptr %s4, ptr %t106, { i64, ptr } %t105)
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb29:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/lsp:worker", ptr %t108, i32 0, i32 0
  %t111 = load ptr, ptr %t110, !tbaa !29
  %t113 = getelementptr %"compiler/lsp:Server", ptr %t111, i32 0, i32 1
  %t114 = load i64, ptr %l7, !tbaa !24
  %t117 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eAt__Ha6317692879988aa8c889b506af3dc4d(ptr %v0, ptr %v0, ptr %t113, i64 %t114)
  store ptr %t117, ptr %l78
  br label %bb30
bb30:
  %t118 = load ptr, ptr %l78, !tbaa !29
  store ptr %t118, ptr %l8, !tbaa !29
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr %"compiler/lsp:worker", ptr %t119, i32 0, i32 4
  %t122 = load ptr, ptr %l8, !tbaa !29
  %t124 = getelementptr %"compiler/lsp:Doc", ptr %t122, i32 0, i32 2
  %t125 = load { i64, ptr }, ptr %t124, !tbaa !27
  %t128 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha4444909f5ef14f7626d25b8f59e6ba2(ptr %v0, ptr %v0, ptr %v0, ptr %t121, { i64, ptr } %t125)
  %t129 = extractvalue { i32, { i64, ptr } } %t128, 1
  %t130 = extractvalue { i32, { i64, ptr } } %t128, 0
  store i32 %t130, ptr %l85
  %t131 = icmp ne i32 %t130, 0
  br i1 %t131, label %bb32, label %ok.132, !prof !99
ok.132:
  store { i64, ptr } %t129, ptr %l84
  br label %bb31
bb31:
  %t133 = load { i64, ptr }, ptr %l84, !tbaa !27
  store { i64, ptr } %t133, ptr %l79, !tbaa !27
  br label %bb34
bb32:
  br label %bb33
bb33:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d86, i32 0, i32 1) }, ptr %l79, !tbaa !27
  br label %bb34
bb34:
  %t134 = load { i64, ptr }, ptr %l79, !tbaa !27
  store { i64, ptr } %t134, ptr %l9, !tbaa !27
  %t135 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t138 = getelementptr %"compiler/lsp:worker", ptr %t136, i32 0, i32 0
  %t139 = load ptr, ptr %t138, !tbaa !29
  %t141 = getelementptr %"compiler/lsp:Server", ptr %t139, i32 0, i32 2
  %t142 = load i1, ptr %t141, !tbaa !21
  %t145 = call %"compiler/session:Positions" @compiler_2fsession_3aPositions_2ector(ptr %v0, ptr %s0, { i64, ptr } %t135, i1 %t142)
  store %"compiler/session:Positions" %t145, ptr %l90
  br label %bb35
bb35:
  %t146 = load %"compiler/session:Positions", ptr %l90
  store %"compiler/session:Positions" %t146, ptr %l10
  %t147 = load ptr, ptr %l5, !tbaa !29
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d87, i32 0, i32 1) }, ptr %l94, !tbaa !27
  %t149 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t152 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %s0, ptr %s0, ptr %t147, { i64, ptr } %t149)
  %t153 = extractvalue { i32, ptr } %t152, 1
  %t154 = extractvalue { i32, ptr } %t152, 0
  store i32 %t154, ptr %l97
  %t155 = icmp ne i32 %t154, 0
  br i1 %t155, label %bb37, label %ok.156, !prof !99
ok.156:
  store ptr %t153, ptr %l96
  br label %bb36
bb36:
  %t157 = load ptr, ptr %l96, !tbaa !29
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d88, i32 0, i32 1) }, ptr %l103, !tbaa !27
  %t158 = load { i64, ptr }, ptr %l103, !tbaa !27
  %t161 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %s0, ptr %s0, ptr %t157, { i64, ptr } %t158)
  %t162 = extractvalue { i32, ptr } %t161, 1
  %t163 = extractvalue { i32, ptr } %t161, 0
  store i32 %t163, ptr %l106
  %t164 = icmp ne i32 %t163, 0
  br i1 %t164, label %bb42, label %ok.165, !prof !99
ok.165:
  store ptr %t162, ptr %l105
  br label %bb41
bb37:
  %t166 = load i32, ptr %l97, !tbaa !23
  %t167 = ashr i32 %t166, 16
  %t169 = icmp eq i32 %t167, 1
  store i1 %t169, ptr %l99, !tbaa !21
  %t170 = load i32, ptr %l97, !tbaa !23
  %t171 = ashr i32 %t170, 16
  %t173 = icmp eq i32 %t171, 1
  br i1 %t173, label %bb38, label %bb39
bb38:
  call void @__olang_errpay_pop()
  br label %bb39
bb39:
  br label %bb40
bb40:
  store i64 0, ptr %l91, !tbaa !24
  br label %bb49
bb41:
  %t175 = load ptr, ptr %l105, !tbaa !29
  %t176 = call { i32, i64 } @std_2fjson_2estd_2fjson_3aJson_2eAsInt(ptr %s0, ptr %t175)
  %t177 = extractvalue { i32, i64 } %t176, 1
  %t178 = extractvalue { i32, i64 } %t176, 0
  store i32 %t178, ptr %l112
  %t179 = icmp ne i32 %t178, 0
  br i1 %t179, label %bb46, label %ok.180, !prof !99
ok.180:
  store i64 %t177, ptr %l111
  br label %bb45
bb42:
  %t181 = load i32, ptr %l106, !tbaa !23
  %t182 = ashr i32 %t181, 16
  %t184 = icmp eq i32 %t182, 1
  store i1 %t184, ptr %l108, !tbaa !21
  %t185 = load i32, ptr %l106, !tbaa !23
  %t186 = ashr i32 %t185, 16
  %t188 = icmp eq i32 %t186, 1
  br i1 %t188, label %bb43, label %bb44
bb43:
  call void @__olang_errpay_pop()
  br label %bb44
bb44:
  br label %bb40
bb45:
  %t190 = load i64, ptr %l111, !tbaa !24
  store i64 %t190, ptr %l91, !tbaa !24
  br label %bb49
bb46:
  %t191 = load i32, ptr %l112, !tbaa !23
  %t192 = ashr i32 %t191, 16
  %t194 = icmp eq i32 %t192, 1
  store i1 %t194, ptr %l114, !tbaa !21
  %t195 = load i32, ptr %l112, !tbaa !23
  %t196 = ashr i32 %t195, 16
  %t198 = icmp eq i32 %t196, 1
  br i1 %t198, label %bb47, label %bb48
bb47:
  call void @__olang_errpay_pop()
  br label %bb48
bb48:
  br label %bb40
bb49:
  %t200 = load i64, ptr %l91, !tbaa !24
  store i64 %t200, ptr %l11, !tbaa !24
  %t201 = load ptr, ptr %l5, !tbaa !29
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d89, i32 0, i32 1) }, ptr %l120, !tbaa !27
  %t203 = load { i64, ptr }, ptr %l120, !tbaa !27
  %t206 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %s0, ptr %s0, ptr %t201, { i64, ptr } %t203)
  %t207 = extractvalue { i32, ptr } %t206, 1
  %t208 = extractvalue { i32, ptr } %t206, 0
  store i32 %t208, ptr %l123
  %t209 = icmp ne i32 %t208, 0
  br i1 %t209, label %bb51, label %ok.210, !prof !99
ok.210:
  store ptr %t207, ptr %l122
  br label %bb50
bb50:
  %t211 = load ptr, ptr %l122, !tbaa !29
  store { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d90, i32 0, i32 1) }, ptr %l129, !tbaa !27
  %t212 = load { i64, ptr }, ptr %l129, !tbaa !27
  %t215 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %s0, ptr %s0, ptr %t211, { i64, ptr } %t212)
  %t216 = extractvalue { i32, ptr } %t215, 1
  %t217 = extractvalue { i32, ptr } %t215, 0
  store i32 %t217, ptr %l132
  %t218 = icmp ne i32 %t217, 0
  br i1 %t218, label %bb56, label %ok.219, !prof !99
ok.219:
  store ptr %t216, ptr %l131
  br label %bb55
bb51:
  %t220 = load i32, ptr %l123, !tbaa !23
  %t221 = ashr i32 %t220, 16
  %t223 = icmp eq i32 %t221, 1
  store i1 %t223, ptr %l125, !tbaa !21
  %t224 = load i32, ptr %l123, !tbaa !23
  %t225 = ashr i32 %t224, 16
  %t227 = icmp eq i32 %t225, 1
  br i1 %t227, label %bb52, label %bb53
bb52:
  call void @__olang_errpay_pop()
  br label %bb53
bb53:
  br label %bb54
bb54:
  store i64 0, ptr %l117, !tbaa !24
  br label %bb63
bb55:
  %t229 = load ptr, ptr %l131, !tbaa !29
  %t230 = call { i32, i64 } @std_2fjson_2estd_2fjson_3aJson_2eAsInt(ptr %s0, ptr %t229)
  %t231 = extractvalue { i32, i64 } %t230, 1
  %t232 = extractvalue { i32, i64 } %t230, 0
  store i32 %t232, ptr %l138
  %t233 = icmp ne i32 %t232, 0
  br i1 %t233, label %bb60, label %ok.234, !prof !99
ok.234:
  store i64 %t231, ptr %l137
  br label %bb59
bb56:
  %t235 = load i32, ptr %l132, !tbaa !23
  %t236 = ashr i32 %t235, 16
  %t238 = icmp eq i32 %t236, 1
  store i1 %t238, ptr %l134, !tbaa !21
  %t239 = load i32, ptr %l132, !tbaa !23
  %t240 = ashr i32 %t239, 16
  %t242 = icmp eq i32 %t240, 1
  br i1 %t242, label %bb57, label %bb58
bb57:
  call void @__olang_errpay_pop()
  br label %bb58
bb58:
  br label %bb54
bb59:
  %t244 = load i64, ptr %l137, !tbaa !24
  store i64 %t244, ptr %l117, !tbaa !24
  br label %bb63
bb60:
  %t245 = load i32, ptr %l138, !tbaa !23
  %t246 = ashr i32 %t245, 16
  %t248 = icmp eq i32 %t246, 1
  store i1 %t248, ptr %l140, !tbaa !21
  %t249 = load i32, ptr %l138, !tbaa !23
  %t250 = ashr i32 %t249, 16
  %t252 = icmp eq i32 %t250, 1
  br i1 %t252, label %bb61, label %bb62
bb61:
  call void @__olang_errpay_pop()
  br label %bb62
bb62:
  br label %bb54
bb63:
  %t254 = load i64, ptr %l117, !tbaa !24
  %t255 = load i64, ptr %l11, !tbaa !24
  %t260 = call i64 @compiler_2fsession_2ecompiler_2fsession_3aPositions_2eOffset(ptr %s0, ptr %l10, i64 %t255, i64 %t254)
  store i64 %t260, ptr %l146
  br label %bb64
bb64:
  %t261 = load i64, ptr %l146, !tbaa !24
  store i64 %t261, ptr %l13, !tbaa !24
  %t262 = load ptr, ptr %l0, !tbaa !29
  %t264 = getelementptr %"compiler/lsp:worker", ptr %t262, i32 0, i32 1
  %t265 = load ptr, ptr %t264, !tbaa !29
  store ptr %t265, ptr %l14, !tbaa !29
  call void @compiler_2fdiag_3aDiagnostics_2ector(ptr %t267, ptr %v0, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l149, ptr %t267, i64 704, i1 false)
  br label %bb65
bb65:
  %t268 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 704, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t268, ptr %l149, i64 704, i1 false)
  store ptr %t268, ptr %l15, !tbaa !29
  %t270 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t272 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t270, { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d91, i32 0, i32 1) })
  store i1 %t272, ptr %l152
  br label %bb66
bb66:
  %t273 = load i1, ptr %l152, !tbaa !21
  br i1 %t273, label %bb67, label %bb68
bb67:
  store %olang.scope zeroinitializer, ptr %s5
  %t274 = load ptr, ptr %l8, !tbaa !29
  %t276 = getelementptr %"compiler/lsp:Doc", ptr %t274, i32 0, i32 1
  %t277 = load { i64, ptr }, ptr %t276, !tbaa !27
  %t278 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t281 = call { i32, { i64, ptr } } @compiler_2fsession_2eFormat(ptr %v0, ptr %v0, ptr %s5, { i64, ptr } %t277, { i64, ptr } %t278)
  %t282 = extractvalue { i32, { i64, ptr } } %t281, 1
  %t283 = extractvalue { i32, { i64, ptr } } %t281, 0
  store i32 %t283, ptr %l158
  %t284 = icmp ne i32 %t283, 0
  br i1 %t284, label %bb70, label %ok.285, !prof !99
ok.285:
  store { i64, ptr } %t282, ptr %l157
  br label %bb69
bb68:
  br label %bb90
bb69:
  %t286 = load { i64, ptr }, ptr %l157, !tbaa !27
  store { i64, ptr } %t286, ptr %l153, !tbaa !27
  br label %bb74
bb70:
  br label %bb71
bb71:
  store %olang.scope zeroinitializer, ptr %s6
  %t287 = load ptr, ptr %l0, !tbaa !29
  store ptr %t287, ptr %l159, !tbaa !29
  %t288 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t290 = call { i64, ptr } @compiler_2flsp_2ereply(ptr %s0, ptr %s6, ptr %s6, { i64, ptr } %t288, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d92, i32 0, i32 1) })
  store { i64, ptr } %t290, ptr %l161
  br label %bb72
bb72:
  %t291 = load { i64, ptr }, ptr %l161, !tbaa !27
  %t292 = extractvalue { i64, ptr } %t291, 0
  %t293 = extractvalue { i64, ptr } %t291, 1
  %t294 = mul i64 %t292, 1
  %t295 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t294)
  call void @llvm.memcpy.p0.p0.i64(ptr %t295, ptr %t293, i64 %t294, i1 false)
  %t296 = insertvalue { i64, ptr } undef, i64 %t292, 0
  %t297 = insertvalue { i64, ptr } %t296, ptr %t295, 1
  %t298 = load ptr, ptr %l159, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aworker_2esend(ptr %v0, ptr %s6, ptr %t298, { i64, ptr } %t297)
  br label %bb73
bb73:
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb74:
  %t300 = load { i64, ptr }, ptr %l153, !tbaa !27
  store { i64, ptr } %t300, ptr %l16, !tbaa !27
  %t301 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t302 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t305 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s5, ptr %v0, { i64, ptr } %t301, { i64, ptr } %t302)
  store i1 %t305, ptr %l165
  br label %bb75
bb75:
  %t306 = load i1, ptr %l165, !tbaa !21
  br i1 %t306, label %bb76, label %bb77
bb76:
  store %olang.scope zeroinitializer, ptr %s7
  %t307 = load ptr, ptr %l0, !tbaa !29
  store ptr %t307, ptr %l166, !tbaa !29
  %t308 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t310 = call { i64, ptr } @compiler_2flsp_2ereply(ptr %s0, ptr %s7, ptr %s7, { i64, ptr } %t308, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d93, i32 0, i32 1) })
  store { i64, ptr } %t310, ptr %l168
  br label %bb78
bb77:
  br label %bb80
bb78:
  %t311 = load { i64, ptr }, ptr %l168, !tbaa !27
  %t312 = extractvalue { i64, ptr } %t311, 0
  %t313 = extractvalue { i64, ptr } %t311, 1
  %t314 = mul i64 %t312, 1
  %t315 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t314)
  call void @llvm.memcpy.p0.p0.i64(ptr %t315, ptr %t313, i64 %t314, i1 false)
  %t316 = insertvalue { i64, ptr } undef, i64 %t312, 0
  %t317 = insertvalue { i64, ptr } %t316, ptr %t315, 1
  %t318 = load ptr, ptr %l166, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aworker_2esend(ptr %v0, ptr %s7, ptr %t318, { i64, ptr } %t317)
  br label %bb79
bb79:
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb80:
  %t320 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s5)
  store %"std/prelude/text:StringBuilder" %t320, ptr %l170
  br label %bb81
bb81:
  %t321 = load %"std/prelude/text:StringBuilder", ptr %l170
  store %"std/prelude/text:StringBuilder" %t321, ptr %l17
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s5, ptr %s5, ptr %l17, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d94, i32 0, i32 1) })
  br label %bb82
bb82:
  %t323 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t325 = extractvalue { i64, ptr } %t323, 0
  call void @compiler_2fsession_2ecompiler_2fsession_3aPositions_2eRange(ptr %s0, ptr %s5, ptr %l10, ptr %l17, i64 0, i64 %t325)
  br label %bb83
bb83:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s5, ptr %s5, ptr %l17, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d95, i32 0, i32 1) })
  br label %bb84
bb84:
  %t330 = load { i64, ptr }, ptr %l16, !tbaa !27
  call void @compiler_2fsession_2eJsonStr(ptr %s5, ptr %s5, ptr %l17, { i64, ptr } %t330)
  br label %bb85
bb85:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s5, ptr %s5, ptr %l17, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d96, i32 0, i32 1) })
  br label %bb86
bb86:
  %t334 = load ptr, ptr %l0, !tbaa !29
  store ptr %t334, ptr %l180, !tbaa !29
  %t335 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t335, ptr %l181, !tbaa !27
  %t337 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s5, ptr %s5, ptr %l17)
  store { i64, ptr } %t337, ptr %l183
  br label %bb87
bb87:
  %t338 = load { i64, ptr }, ptr %l183, !tbaa !27
  %t339 = extractvalue { i64, ptr } %t338, 0
  %t340 = extractvalue { i64, ptr } %t338, 1
  %t341 = mul i64 %t339, 1
  %t342 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t341)
  call void @llvm.memcpy.p0.p0.i64(ptr %t342, ptr %t340, i64 %t341, i1 false)
  %t343 = insertvalue { i64, ptr } undef, i64 %t339, 0
  %t344 = insertvalue { i64, ptr } %t343, ptr %t342, 1
  %t345 = load { i64, ptr }, ptr %l181, !tbaa !27
  %t347 = call { i64, ptr } @compiler_2flsp_2ereply(ptr %s0, ptr %s5, ptr %s5, { i64, ptr } %t345, { i64, ptr } %t344)
  store { i64, ptr } %t347, ptr %l185
  br label %bb88
bb88:
  %t348 = load { i64, ptr }, ptr %l185, !tbaa !27
  %t349 = extractvalue { i64, ptr } %t348, 0
  %t350 = extractvalue { i64, ptr } %t348, 1
  %t351 = mul i64 %t349, 1
  %t352 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t351)
  call void @llvm.memcpy.p0.p0.i64(ptr %t352, ptr %t350, i64 %t351, i1 false)
  %t353 = insertvalue { i64, ptr } undef, i64 %t349, 0
  %t354 = insertvalue { i64, ptr } %t353, ptr %t352, 1
  %t355 = load ptr, ptr %l180, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aworker_2esend(ptr %v0, ptr %s5, ptr %t355, { i64, ptr } %t354)
  br label %bb89
bb89:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb90:
  %t357 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t359 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t357, { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d97, i32 0, i32 1) })
  store i1 %t359, ptr %l188
  br label %bb91
bb91:
  %t360 = load i1, ptr %l188, !tbaa !21
  br i1 %t360, label %bb92, label %bb93
bb92:
  %t361 = load ptr, ptr %l0, !tbaa !29
  %t362 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t363 = load ptr, ptr %l8, !tbaa !29
  %t364 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t365 = load i64, ptr %l13, !tbaa !24
  %t366 = load ptr, ptr %l14, !tbaa !29
  %t367 = load ptr, ptr %l15, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aworker_2ecomplete(ptr %v0, ptr %s0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t361, { i64, ptr } %t362, ptr %t363, { i64, ptr } %t364, i64 %t365, ptr %t366, ptr %t367)
  br label %bb94
bb93:
  br label %bb95
bb94:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb95:
  %t375 = load ptr, ptr %l0, !tbaa !29
  %t376 = load i64, ptr %l7, !tbaa !24
  %t377 = load ptr, ptr %l15, !tbaa !29
  %t381 = call ptr @compiler_2flsp_2ecompiler_2flsp_3aworker_2eanalysis(ptr %v0, ptr %v0, ptr %v0, ptr %t375, i64 %t376, ptr %t377)
  store ptr %t381, ptr %l199
  br label %bb96
bb96:
  %t382 = load ptr, ptr %l199, !tbaa !29
  store ptr %t382, ptr %l18, !tbaa !29
  %t383 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t385 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t383, { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d98, i32 0, i32 1) })
  store i1 %t385, ptr %l201
  br label %bb97
bb97:
  %t386 = load i1, ptr %l201, !tbaa !21
  br i1 %t386, label %bb98, label %bb99
bb98:
  store %olang.scope zeroinitializer, ptr %s9
  %t387 = load ptr, ptr %l18, !tbaa !29
  %t388 = load ptr, ptr %l8, !tbaa !29
  %t390 = getelementptr %"compiler/lsp:Doc", ptr %t388, i32 0, i32 2
  %t391 = load { i64, ptr }, ptr %t390, !tbaa !27
  %t394 = call i64 @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eModuleOf(ptr %v0, ptr %v0, ptr %t387, { i64, ptr } %t391)
  store i64 %t394, ptr %l205
  br label %bb100
bb99:
  br label %bb116
bb100:
  %t395 = load i64, ptr %l205, !tbaa !24
  store i64 %t395, ptr %l19, !tbaa !24
  %t396 = load i64, ptr %l19, !tbaa !24
  %t398 = icmp slt i64 %t396, 0
  br i1 %t398, label %bb101, label %bb102
bb101:
  store i1 true, ptr %l208, !tbaa !21
  br label %bb104
bb102:
  %t400 = load ptr, ptr %l18, !tbaa !29
  %t402 = getelementptr %"compiler/session:Analysis", ptr %t400, i32 0, i32 0
  %t403 = load ptr, ptr %t402, !tbaa !29
  %t405 = getelementptr %"compiler/load:Loader", ptr %t403, i32 0, i32 10
  %t406 = load i64, ptr %l19, !tbaa !24
  %t409 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t405, i64 %t406)
  store ptr %t409, ptr %l213
  br label %bb103
bb103:
  %t410 = load ptr, ptr %l213, !tbaa !29
  %t412 = getelementptr %"compiler/load:Module", ptr %t410, i32 0, i32 8
  %t413 = load { i64, ptr }, ptr %t412, !tbaa !27
  %t415 = extractvalue { i64, ptr } %t413, 0
  %t417 = icmp eq i64 %t415, 0
  store i1 %t417, ptr %l208, !tbaa !21
  br label %bb104
bb104:
  %t419 = load i1, ptr %l208, !tbaa !21
  br i1 %t419, label %bb105, label %bb106
bb105:
  store %olang.scope zeroinitializer, ptr %s10
  %t420 = load ptr, ptr %l0, !tbaa !29
  store ptr %t420, ptr %l218, !tbaa !29
  %t421 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t423 = call { i64, ptr } @compiler_2flsp_2ereply(ptr %s0, ptr %s10, ptr %s10, { i64, ptr } %t421, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d99, i32 0, i32 1) })
  store { i64, ptr } %t423, ptr %l220
  br label %bb107
bb106:
  br label %bb109
bb107:
  %t424 = load { i64, ptr }, ptr %l220, !tbaa !27
  %t425 = extractvalue { i64, ptr } %t424, 0
  %t426 = extractvalue { i64, ptr } %t424, 1
  %t427 = mul i64 %t425, 1
  %t428 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t427)
  call void @llvm.memcpy.p0.p0.i64(ptr %t428, ptr %t426, i64 %t427, i1 false)
  %t429 = insertvalue { i64, ptr } undef, i64 %t425, 0
  %t430 = insertvalue { i64, ptr } %t429, ptr %t428, 1
  %t431 = load ptr, ptr %l218, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aworker_2esend(ptr %v0, ptr %s10, ptr %t431, { i64, ptr } %t430)
  br label %bb108
bb108:
  call void @__olang_scope_close(ptr %s10)
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb109:
  %t433 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s9)
  store %"std/prelude/text:StringBuilder" %t433, ptr %l222
  br label %bb110
bb110:
  %t434 = load %"std/prelude/text:StringBuilder", ptr %l222
  store %"std/prelude/text:StringBuilder" %t434, ptr %l20
  store ptr %l20, ptr %l223, !tbaa !29
  store ptr %l10, ptr %l224, !tbaa !29
  %t435 = load ptr, ptr %l18, !tbaa !29
  %t437 = getelementptr %"compiler/session:Analysis", ptr %t435, i32 0, i32 0
  %t438 = load ptr, ptr %t437, !tbaa !29
  %t440 = getelementptr %"compiler/load:Loader", ptr %t438, i32 0, i32 10
  %t441 = load i64, ptr %l19, !tbaa !24
  %t444 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t440, i64 %t441)
  store ptr %t444, ptr %l229
  br label %bb111
bb111:
  %t445 = load ptr, ptr %l229, !tbaa !29
  %t447 = getelementptr %"compiler/load:Module", ptr %t445, i32 0, i32 8
  %t448 = load { i64, ptr }, ptr %t447, !tbaa !27
  %t449 = load ptr, ptr %l18, !tbaa !29
  %t451 = getelementptr %"compiler/session:Analysis", ptr %t449, i32 0, i32 0
  %t452 = load ptr, ptr %t451, !tbaa !29
  %t454 = getelementptr %"compiler/load:Loader", ptr %t452, i32 0, i32 3
  %t455 = load ptr, ptr %t454, !tbaa !29
  %t456 = load ptr, ptr %l223, !tbaa !29
  %t457 = load ptr, ptr %l224, !tbaa !29
  call void @compiler_2fsession_2eSymbols(ptr %s9, ptr %s0, ptr %v0, ptr %v0, ptr %t456, ptr %t457, { i64, ptr } %t448, ptr %t455)
  br label %bb112
bb112:
  %t460 = load ptr, ptr %l0, !tbaa !29
  store ptr %t460, ptr %l235, !tbaa !29
  %t461 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t461, ptr %l236, !tbaa !27
  %t463 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s9, ptr %s9, ptr %l20)
  store { i64, ptr } %t463, ptr %l238
  br label %bb113
bb113:
  %t464 = load { i64, ptr }, ptr %l238, !tbaa !27
  %t465 = extractvalue { i64, ptr } %t464, 0
  %t466 = extractvalue { i64, ptr } %t464, 1
  %t467 = mul i64 %t465, 1
  %t468 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t467)
  call void @llvm.memcpy.p0.p0.i64(ptr %t468, ptr %t466, i64 %t467, i1 false)
  %t469 = insertvalue { i64, ptr } undef, i64 %t465, 0
  %t470 = insertvalue { i64, ptr } %t469, ptr %t468, 1
  %t471 = load { i64, ptr }, ptr %l236, !tbaa !27
  %t473 = call { i64, ptr } @compiler_2flsp_2ereply(ptr %s0, ptr %s9, ptr %s9, { i64, ptr } %t471, { i64, ptr } %t470)
  store { i64, ptr } %t473, ptr %l240
  br label %bb114
bb114:
  %t474 = load { i64, ptr }, ptr %l240, !tbaa !27
  %t475 = extractvalue { i64, ptr } %t474, 0
  %t476 = extractvalue { i64, ptr } %t474, 1
  %t477 = mul i64 %t475, 1
  %t478 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t477)
  call void @llvm.memcpy.p0.p0.i64(ptr %t478, ptr %t476, i64 %t477, i1 false)
  %t479 = insertvalue { i64, ptr } undef, i64 %t475, 0
  %t480 = insertvalue { i64, ptr } %t479, ptr %t478, 1
  %t481 = load ptr, ptr %l235, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aworker_2esend(ptr %v0, ptr %s9, ptr %t481, { i64, ptr } %t480)
  br label %bb115
bb115:
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb116:
  %t483 = load ptr, ptr %l18, !tbaa !29
  %t484 = load ptr, ptr %l8, !tbaa !29
  %t486 = getelementptr %"compiler/lsp:Doc", ptr %t484, i32 0, i32 2
  %t487 = load { i64, ptr }, ptr %t486, !tbaa !27
  %t488 = load i64, ptr %l13, !tbaa !24
  %t492 = call { i32, %"compiler/session:Found" } @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eLookup(ptr %v0, ptr %v0, ptr %v0, ptr %t483, { i64, ptr } %t487, i64 %t488)
  %t493 = extractvalue { i32, %"compiler/session:Found" } %t492, 1
  %t494 = extractvalue { i32, %"compiler/session:Found" } %t492, 0
  store i32 %t494, ptr %l248
  %t495 = icmp ne i32 %t494, 0
  br i1 %t495, label %bb118, label %ok.496, !prof !99
ok.496:
  store %"compiler/session:Found" %t493, ptr %l247
  br label %bb117
bb117:
  %t497 = load %"compiler/session:Found", ptr %l247
  store %"compiler/session:Found" %t497, ptr %l242
  br label %bb122
bb118:
  %t498 = load i32, ptr %l248, !tbaa !23
  %t499 = ashr i32 %t498, 16
  %t501 = icmp eq i32 %t499, 1
  store i1 %t501, ptr %l250, !tbaa !21
  br label %bb119
bb119:
  store %olang.scope zeroinitializer, ptr %s11
  %t502 = load ptr, ptr %l0, !tbaa !29
  store ptr %t502, ptr %l251, !tbaa !29
  %t503 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t505 = call { i64, ptr } @compiler_2flsp_2ereply(ptr %s0, ptr %s11, ptr %s11, { i64, ptr } %t503, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d100, i32 0, i32 1) })
  store { i64, ptr } %t505, ptr %l253
  br label %bb120
bb120:
  %t506 = load { i64, ptr }, ptr %l253, !tbaa !27
  %t507 = extractvalue { i64, ptr } %t506, 0
  %t508 = extractvalue { i64, ptr } %t506, 1
  %t509 = mul i64 %t507, 1
  %t510 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t509)
  call void @llvm.memcpy.p0.p0.i64(ptr %t510, ptr %t508, i64 %t509, i1 false)
  %t511 = insertvalue { i64, ptr } undef, i64 %t507, 0
  %t512 = insertvalue { i64, ptr } %t511, ptr %t510, 1
  %t513 = load ptr, ptr %l251, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aworker_2esend(ptr %v0, ptr %s11, ptr %t513, { i64, ptr } %t512)
  br label %bb121
bb121:
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb122:
  %t515 = load %"compiler/session:Found", ptr %l242
  store %"compiler/session:Found" %t515, ptr %l21
  %t516 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t518 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t516, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d101, i32 0, i32 1) })
  store i1 %t518, ptr %l256
  br label %bb123
bb123:
  %t519 = load i1, ptr %l256, !tbaa !21
  br i1 %t519, label %bb124, label %bb125
bb124:
  store %olang.scope zeroinitializer, ptr %s12
  %t520 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s12)
  store %"std/prelude/text:StringBuilder" %t520, ptr %l257
  br label %bb126
bb125:
  br label %bb133
bb126:
  %t521 = load %"std/prelude/text:StringBuilder", ptr %l257
  store %"std/prelude/text:StringBuilder" %t521, ptr %l22
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s12, ptr %s12, ptr %l22, { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d102, i32 0, i32 1) })
  br label %bb127
bb127:
  %t523 = getelementptr %"compiler/session:Found", ptr %l21, i32 0, i32 0
  %t524 = load { i64, ptr }, ptr %t523, !tbaa !27
  call void @compiler_2fsession_2eJsonStr(ptr %s12, ptr %v0, ptr %l22, { i64, ptr } %t524)
  br label %bb128
bb128:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s12, ptr %s12, ptr %l22, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d103, i32 0, i32 1) })
  br label %bb129
bb129:
  %t528 = load ptr, ptr %l0, !tbaa !29
  store ptr %t528, ptr %l262, !tbaa !29
  %t529 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t529, ptr %l263, !tbaa !27
  %t531 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s12, ptr %s12, ptr %l22)
  store { i64, ptr } %t531, ptr %l265
  br label %bb130
bb130:
  %t532 = load { i64, ptr }, ptr %l265, !tbaa !27
  %t533 = extractvalue { i64, ptr } %t532, 0
  %t534 = extractvalue { i64, ptr } %t532, 1
  %t535 = mul i64 %t533, 1
  %t536 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t535)
  call void @llvm.memcpy.p0.p0.i64(ptr %t536, ptr %t534, i64 %t535, i1 false)
  %t537 = insertvalue { i64, ptr } undef, i64 %t533, 0
  %t538 = insertvalue { i64, ptr } %t537, ptr %t536, 1
  %t539 = load { i64, ptr }, ptr %l263, !tbaa !27
  %t541 = call { i64, ptr } @compiler_2flsp_2ereply(ptr %s0, ptr %s12, ptr %s12, { i64, ptr } %t539, { i64, ptr } %t538)
  store { i64, ptr } %t541, ptr %l267
  br label %bb131
bb131:
  %t542 = load { i64, ptr }, ptr %l267, !tbaa !27
  %t543 = extractvalue { i64, ptr } %t542, 0
  %t544 = extractvalue { i64, ptr } %t542, 1
  %t545 = mul i64 %t543, 1
  %t546 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t545)
  call void @llvm.memcpy.p0.p0.i64(ptr %t546, ptr %t544, i64 %t545, i1 false)
  %t547 = insertvalue { i64, ptr } undef, i64 %t543, 0
  %t548 = insertvalue { i64, ptr } %t547, ptr %t546, 1
  %t549 = load ptr, ptr %l262, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aworker_2esend(ptr %v0, ptr %s12, ptr %t549, { i64, ptr } %t548)
  br label %bb132
bb132:
  call void @__olang_scope_close(ptr %s12)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb133:
  %t551 = getelementptr %"compiler/session:Found", ptr %l21, i32 0, i32 1
  %t552 = load { i64, ptr }, ptr %t551, !tbaa !27
  %t554 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t552, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d104, i32 0, i32 1) })
  store i1 %t554, ptr %l270
  br label %bb134
bb134:
  %t555 = load i1, ptr %l270, !tbaa !21
  br i1 %t555, label %bb135, label %bb136
bb135:
  store i1 true, ptr %l271, !tbaa !21
  br label %bb137
bb136:
  %t556 = getelementptr %"compiler/session:Found", ptr %l21, i32 0, i32 2
  %t557 = load i64, ptr %t556, !tbaa !24
  %t559 = icmp slt i64 %t557, 0
  store i1 %t559, ptr %l271, !tbaa !21
  br label %bb137
bb137:
  %t561 = load i1, ptr %l271, !tbaa !21
  br i1 %t561, label %bb138, label %bb139
bb138:
  store %olang.scope zeroinitializer, ptr %s13
  %t562 = load ptr, ptr %l0, !tbaa !29
  store ptr %t562, ptr %l274, !tbaa !29
  %t563 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t565 = call { i64, ptr } @compiler_2flsp_2ereply(ptr %s0, ptr %s13, ptr %s13, { i64, ptr } %t563, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d105, i32 0, i32 1) })
  store { i64, ptr } %t565, ptr %l276
  br label %bb140
bb139:
  br label %bb142
bb140:
  %t566 = load { i64, ptr }, ptr %l276, !tbaa !27
  %t567 = extractvalue { i64, ptr } %t566, 0
  %t568 = extractvalue { i64, ptr } %t566, 1
  %t569 = mul i64 %t567, 1
  %t570 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t569)
  call void @llvm.memcpy.p0.p0.i64(ptr %t570, ptr %t568, i64 %t569, i1 false)
  %t571 = insertvalue { i64, ptr } undef, i64 %t567, 0
  %t572 = insertvalue { i64, ptr } %t571, ptr %t570, 1
  %t573 = load ptr, ptr %l274, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aworker_2esend(ptr %v0, ptr %s13, ptr %t573, { i64, ptr } %t572)
  br label %bb141
bb141:
  call void @__olang_scope_close(ptr %s13)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb142:
  %t575 = load ptr, ptr %l0, !tbaa !29
  %t576 = load ptr, ptr %l18, !tbaa !29
  %t577 = getelementptr %"compiler/session:Found", ptr %l21, i32 0, i32 1
  %t578 = load { i64, ptr }, ptr %t577, !tbaa !27
  %t582 = call { i64, ptr } @compiler_2flsp_2ecompiler_2flsp_3aworker_2etextOf(ptr %v0, ptr %v0, ptr %v0, ptr %s0, ptr %t575, ptr %t576, { i64, ptr } %t578)
  store { i64, ptr } %t582, ptr %l281
  br label %bb143
bb143:
  %t583 = load { i64, ptr }, ptr %l281, !tbaa !27
  store { i64, ptr } %t583, ptr %l23, !tbaa !27
  %t584 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t585 = load ptr, ptr %l0, !tbaa !29
  %t587 = getelementptr %"compiler/lsp:worker", ptr %t585, i32 0, i32 0
  %t588 = load ptr, ptr %t587, !tbaa !29
  %t590 = getelementptr %"compiler/lsp:Server", ptr %t588, i32 0, i32 2
  %t591 = load i1, ptr %t590, !tbaa !21
  %t594 = call %"compiler/session:Positions" @compiler_2fsession_3aPositions_2ector(ptr %s0, ptr %s0, { i64, ptr } %t584, i1 %t591)
  store %"compiler/session:Positions" %t594, ptr %l286
  br label %bb144
bb144:
  %t595 = load %"compiler/session:Positions", ptr %l286
  store %"compiler/session:Positions" %t595, ptr %l24
  %t596 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t597 = getelementptr %"compiler/session:Found", ptr %l21, i32 0, i32 2
  %t598 = load i64, ptr %t597, !tbaa !24
  %t601 = call %"compiler/source:Span" @compiler_2fsession_2eWordAt(ptr %s0, { i64, ptr } %t596, i64 %t598)
  store %"compiler/source:Span" %t601, ptr %l289
  br label %bb145
bb145:
  %t602 = load %"compiler/source:Span", ptr %l289
  store %"compiler/source:Span" %t602, ptr %l25
  %t603 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t603, ptr %l290
  br label %bb146
bb146:
  %t604 = load %"std/prelude/text:StringBuilder", ptr %l290
  store %"std/prelude/text:StringBuilder" %t604, ptr %l26
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l26, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d106, i32 0, i32 1) })
  br label %bb147
bb147:
  store ptr %l26, ptr %l292, !tbaa !29
  %t606 = load ptr, ptr %l0, !tbaa !29
  %t607 = getelementptr %"compiler/session:Found", ptr %l21, i32 0, i32 1
  %t608 = load { i64, ptr }, ptr %t607, !tbaa !27
  %t611 = call { i64, ptr } @compiler_2flsp_2ecompiler_2flsp_3aworker_2euriOf(ptr %v0, ptr %v0, ptr %s0, ptr %t606, { i64, ptr } %t608)
  store { i64, ptr } %t611, ptr %l295
  br label %bb148
bb148:
  %t612 = load { i64, ptr }, ptr %l295, !tbaa !27
  %t613 = extractvalue { i64, ptr } %t612, 0
  %t614 = extractvalue { i64, ptr } %t612, 1
  %t615 = mul i64 %t613, 1
  %t616 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t615)
  call void @llvm.memcpy.p0.p0.i64(ptr %t616, ptr %t614, i64 %t615, i1 false)
  %t617 = insertvalue { i64, ptr } undef, i64 %t613, 0
  %t618 = insertvalue { i64, ptr } %t617, ptr %t616, 1
  %t619 = load ptr, ptr %l292, !tbaa !29
  call void @compiler_2fsession_2eJsonStr(ptr %s0, ptr %s0, ptr %t619, { i64, ptr } %t618)
  br label %bb149
bb149:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l26, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d107, i32 0, i32 1) })
  br label %bb150
bb150:
  %t622 = getelementptr %"compiler/source:Span", ptr %l25, i32 0, i32 0
  %t623 = load i32, ptr %t622, !tbaa !23
  %t625 = sext i32 %t623 to i64
  %t626 = getelementptr %"compiler/source:Span", ptr %l25, i32 0, i32 1
  %t627 = load i32, ptr %t626, !tbaa !23
  %t629 = sext i32 %t627 to i64
  call void @compiler_2fsession_2ecompiler_2fsession_3aPositions_2eRange(ptr %s0, ptr %s0, ptr %l24, ptr %l26, i64 %t625, i64 %t629)
  br label %bb151
bb151:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l26, i8 125)
  br label %bb152
bb152:
  %t635 = load ptr, ptr %l0, !tbaa !29
  store ptr %t635, ptr %l305, !tbaa !29
  %t636 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t636, ptr %l306, !tbaa !27
  %t638 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %l26)
  store { i64, ptr } %t638, ptr %l308
  br label %bb153
bb153:
  %t639 = load { i64, ptr }, ptr %l308, !tbaa !27
  %t640 = extractvalue { i64, ptr } %t639, 0
  %t641 = extractvalue { i64, ptr } %t639, 1
  %t642 = mul i64 %t640, 1
  %t643 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t642)
  call void @llvm.memcpy.p0.p0.i64(ptr %t643, ptr %t641, i64 %t642, i1 false)
  %t644 = insertvalue { i64, ptr } undef, i64 %t640, 0
  %t645 = insertvalue { i64, ptr } %t644, ptr %t643, 1
  %t646 = load { i64, ptr }, ptr %l306, !tbaa !27
  %t648 = call { i64, ptr } @compiler_2flsp_2ereply(ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t646, { i64, ptr } %t645)
  store { i64, ptr } %t648, ptr %l310
  br label %bb154
bb154:
  %t649 = load { i64, ptr }, ptr %l310, !tbaa !27
  %t650 = extractvalue { i64, ptr } %t649, 0
  %t651 = extractvalue { i64, ptr } %t649, 1
  %t652 = mul i64 %t650, 1
  %t653 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t652)
  call void @llvm.memcpy.p0.p0.i64(ptr %t653, ptr %t651, i64 %t652, i1 false)
  %t654 = insertvalue { i64, ptr } undef, i64 %t650, 0
  %t655 = insertvalue { i64, ptr } %t654, ptr %t653, 1
  %t656 = load ptr, ptr %l305, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aworker_2esend(ptr %v0, ptr %s0, ptr %t656, { i64, ptr } %t655)
  br label %bb155
bb155:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flsp_2ecompiler_2flsp_3aworker_2echeck(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca %"std/prelude/text:StringBuilder"
  %l9 = alloca i1
  %l10 = alloca ptr
  %l11 = alloca i64
  %l12 = alloca ptr
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
  %l24 = alloca i64
  %l29 = alloca ptr
  %l32 = alloca %"compiler/diag:Diagnostics"
  %l40 = alloca ptr
  %l42 = alloca i64
  %l43 = alloca i64
  %l51 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l56 = alloca i64
  %l59 = alloca i64
  %l67 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l69 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l76 = alloca %"std/prelude/text:StringBuilder"
  %l84 = alloca i64
  %l86 = alloca i64
  %l91 = alloca ptr
  %l95 = alloca i64
  %l99 = alloca i64
  %l102 = alloca i64
  %l123 = alloca i1
  %l128 = alloca ptr
  %l131 = alloca i1
  %l136 = alloca ptr
  %l141 = alloca i1
  %l155 = alloca i64
  %l159 = alloca i64
  %l162 = alloca i64
  %l183 = alloca ptr
  %l186 = alloca { i64, ptr }
  %l190 = alloca ptr
  %l192 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %t17 = alloca %"compiler/diag:Diagnostics", align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lsp:worker", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/lsp:Server", ptr %t4, i32 0, i32 1
  %t7 = load i64, ptr %l1, !tbaa !24
  %t10 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eAt__Ha6317692879988aa8c889b506af3dc4d(ptr %v0, ptr %v0, ptr %t6, i64 %t7)
  store ptr %t10, ptr %l29
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l29, !tbaa !29
  store ptr %t11, ptr %l2, !tbaa !29
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/lsp:worker", ptr %t12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !29
  store ptr %t15, ptr %l3, !tbaa !29
  call void @compiler_2fdiag_3aDiagnostics_2ector(ptr %t17, ptr %v0, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l32, ptr %t17, i64 704, i1 false)
  br label %bb2
bb2:
  %t18 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 704, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t18, ptr %l32, i64 704, i1 false)
  store ptr %t18, ptr %l4, !tbaa !29
  %t20 = load ptr, ptr %l2, !tbaa !29
  %t22 = getelementptr %"compiler/lsp:Doc", ptr %t20, i32 0, i32 1
  %t23 = load { i64, ptr }, ptr %t22, !tbaa !27
  %t24 = load ptr, ptr %l3, !tbaa !29
  %t25 = load ptr, ptr %l4, !tbaa !29
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/lsp:worker", ptr %t26, i32 0, i32 4
  %t33 = call ptr @compiler_2fsession_2eAnalysis_2eAnalyze(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t23, ptr %t24, ptr %t25, ptr %t28, i1 false, i1 true)
  store ptr %t33, ptr %l40
  br label %bb3
bb3:
  %t34 = load ptr, ptr %l40, !tbaa !29
  store ptr %t34, ptr %l5, !tbaa !29
  %t35 = load ptr, ptr %l4, !tbaa !29
  %t37 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrors(ptr %v0, ptr %t35)
  store i64 %t37, ptr %l42
  br label %bb4
bb4:
  %t38 = load i64, ptr %l42, !tbaa !24
  store i64 %t38, ptr %l6, !tbaa !24
  %t39 = ptrtoint ptr %s0 to i64
  store i64 %t39, ptr %l43, !tbaa !24
  %t40 = load i1, ptr @olang_2esole_2ecompiler__2flsp__2ecompiler__2flsp__3aworker__2echeck_2elocal_2e7
  br i1 %t40, label %bb5, label %bb6
bb5:
  %t42 = call ptr @__olang_region_make(ptr %s0)
  %t43 = ptrtoint ptr %t42 to i64
  store i64 %t43, ptr %l43, !tbaa !24
  br label %bb6
bb6:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t45 = load i64, ptr %l1, !tbaa !24
  %t46 = load ptr, ptr %l5, !tbaa !29
  %t47 = load ptr, ptr %l4, !tbaa !29
  %t48 = load ptr, ptr %l2, !tbaa !29
  %t50 = getelementptr %"compiler/lsp:Doc", ptr %t48, i32 0, i32 6
  %t51 = load i64, ptr %l43
  %t52 = inttoptr i64 %t51 to ptr
  %t58 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2flsp_2ecompiler_2flsp_3aworker_2epublishAll(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t52, ptr %t44, i64 %t45, ptr %t46, ptr %t47, ptr %t50)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t58, ptr %l51
  br label %bb7
bb7:
  %t59 = load i1, ptr @olang_2esole_2ecompiler__2flsp__2ecompiler__2flsp__3aworker__2echeck_2elocal_2e7
  br i1 %t59, label %bb8, label %bb9
bb8:
  %t61 = load i64, ptr %l43
  %t62 = inttoptr i64 %t61 to ptr
  %t63 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l51, i32 0, i32 0
  %t64 = load { i64, ptr }, ptr %t63
  %t65 = extractvalue { i64, ptr } %t64, 1
  %t66 = call ptr @__olang_region_or(ptr %t65, ptr null)
  %t67 = call ptr @__olang_region_home(ptr %t66)
  %t68 = icmp ne ptr %t67, null
  %t69 = select i1 %t68, ptr %t67, ptr null
  %t70 = icmp eq ptr %t69, %t62
  call void @__olang_region_settle(ptr %t62, i1 %t70)
  br label %bb9
bb9:
  %t71 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l51
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t71, ptr %l7
  %t72 = load ptr, ptr %l5, !tbaa !29
  %t73 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fsession_2eHold(ptr %v0, ptr %v0, ptr %t72, ptr %t73)
  br label %bb10
bb10:
  %t76 = load ptr, ptr %l4, !tbaa !29
  %t78 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrors(ptr %v0, ptr %t76)
  store i64 %t78, ptr %l56
  br label %bb11
bb11:
  %t79 = load i64, ptr %l6, !tbaa !24
  %t80 = load i64, ptr %l56, !tbaa !24
  %t82 = icmp ne i64 %t80, %t79
  br i1 %t82, label %bb12, label %bb13
bb12:
  %t84 = ptrtoint ptr %s0 to i64
  store i64 %t84, ptr %l59, !tbaa !24
  %t85 = load i1, ptr @olang_2esole_2ecompiler__2flsp__2ecompiler__2flsp__3aworker__2echeck_2elocal_2e7
  br i1 %t85, label %bb14, label %bb15
bb13:
  br label %bb21
bb14:
  %t87 = call ptr @__olang_region_make(ptr %s0)
  %t88 = ptrtoint ptr %t87 to i64
  store i64 %t88, ptr %l59, !tbaa !24
  br label %bb15
bb15:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = load i64, ptr %l1, !tbaa !24
  %t91 = load ptr, ptr %l5, !tbaa !29
  %t92 = load ptr, ptr %l4, !tbaa !29
  %t93 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  %t95 = load i64, ptr %l59
  %t96 = inttoptr i64 %t95 to ptr
  %t97 = call ptr @__olang_scope_alloc_a(ptr %t96, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t93, ptr %t97
  %t98 = load i64, ptr %l59
  %t99 = inttoptr i64 %t98 to ptr
  %t100 = load i64, ptr %l59
  %t101 = inttoptr i64 %t100 to ptr
  %t107 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2flsp_2ecompiler_2flsp_3aworker_2epublishAll(ptr %v0, ptr %v0, ptr %v0, ptr %t99, ptr %t101, ptr %t89, i64 %t90, ptr %t91, ptr %t92, ptr %t97)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t107, ptr %l67
  br label %bb16
bb16:
  %t108 = load i1, ptr @olang_2esole_2ecompiler__2flsp__2ecompiler__2flsp__3aworker__2echeck_2elocal_2e7
  br i1 %t108, label %bb17, label %bb18
bb17:
  %t110 = load i64, ptr %l59
  %t111 = inttoptr i64 %t110 to ptr
  %t112 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l67, i32 0, i32 0
  %t113 = load { i64, ptr }, ptr %t112
  %t114 = extractvalue { i64, ptr } %t113, 1
  %t115 = call ptr @__olang_region_or(ptr %t114, ptr null)
  %t116 = call ptr @__olang_region_home(ptr %t115)
  %t117 = icmp ne ptr %t116, null
  %t118 = select i1 %t117, ptr %t116, ptr null
  %t119 = icmp eq ptr %t118, %t111
  call void @__olang_region_settle(ptr %t111, i1 %t119)
  br label %bb18
bb18:
  %t120 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t120, ptr %l69
  %t121 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l67
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t121, ptr %l7
  %t122 = load i1, ptr @olang_2esole_2ecompiler__2flsp__2ecompiler__2flsp__3aworker__2echeck_2elocal_2e7
  br i1 %t122, label %bb19, label %bb20
bb19:
  %t124 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l69, i32 0, i32 0
  %t125 = load { i64, ptr }, ptr %t124
  %t126 = extractvalue { i64, ptr } %t125, 1
  %t127 = call ptr @__olang_region_or(ptr %t126, ptr null)
  %t128 = call ptr @__olang_region_home(ptr %t127)
  %t129 = icmp ne ptr %t128, null
  %t130 = select i1 %t129, ptr %t128, ptr null
  call void @__olang_region_drop(ptr %t130)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l69
  br label %bb20
bb20:
  br label %bb21
bb21:
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t132 = load ptr, ptr %l5, !tbaa !29
  %t136 = getelementptr %"compiler/lsp:worker", ptr %t131, i32 0, i32 5
  store ptr %t132, ptr %t136, !tbaa !29
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t138 = load i64, ptr %l1, !tbaa !24
  %t141 = getelementptr %"compiler/lsp:worker", ptr %t137, i32 0, i32 6
  store i64 %t138, ptr %t141, !tbaa !24
  %t142 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t142, ptr %l76
  br label %bb22
bb22:
  %t143 = load %"std/prelude/text:StringBuilder", ptr %l76
  store %"std/prelude/text:StringBuilder" %t143, ptr %l8
  %t144 = load i64, ptr %l1, !tbaa !24
  %t145 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d108, i32 0, i32 1) }, 1
  %t146 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d108, i32 0, i32 1) }, 0
  %t148 = call i64 @__olang_fmt_i64(ptr null, i64 %t144)
  %t149 = add i64 %t146, %t148
  %t150 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d109, i32 0, i32 1) }, 1
  %t151 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d109, i32 0, i32 1) }, 0
  %t152 = add i64 %t149, %t151
  %t153 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t152)
  call void @olang_textcopy(ptr %t153, ptr %t145, i64 %t146)
  %t154 = getelementptr i8, ptr %t153, i64 %t146
  %t155 = call i64 @__olang_fmt_i64(ptr %t154, i64 %t144)
  %t156 = getelementptr i8, ptr %t154, i64 %t148
  call void @olang_textcopy(ptr %t156, ptr %t150, i64 %t151)
  %t157 = insertvalue { i64, ptr } undef, i64 %t152, 0
  %t158 = insertvalue { i64, ptr } %t157, ptr %t153, 1
  %t160 = extractvalue { i64, ptr } %t158, 0
  %t161 = extractvalue { i64, ptr } %t158, 1
  %t162 = mul i64 %t160, 1
  %t163 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t162)
  call void @llvm.memcpy.p0.p0.i64(ptr %t163, ptr %t161, i64 %t162, i1 false)
  %t164 = insertvalue { i64, ptr } undef, i64 %t160, 0
  %t165 = insertvalue { i64, ptr } %t164, ptr %t163, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l8, { i64, ptr } %t165)
  br label %bb23
bb23:
  store i1 true, ptr %l9, !tbaa !21
  %t168 = load ptr, ptr %l5, !tbaa !29
  %t170 = getelementptr %"compiler/session:Analysis", ptr %t168, i32 0, i32 0
  %t171 = load ptr, ptr %t170, !tbaa !29
  %t173 = getelementptr %"compiler/load:Loader", ptr %t171, i32 0, i32 10
  store ptr %t173, ptr %l10, !tbaa !29
  store i64 0, ptr %l11, !tbaa !24
  br label %bb24
bb24:
  %t175 = load i64, ptr %l11, !tbaa !24
  store i64 %t175, ptr %l84, !tbaa !24
  %t176 = load ptr, ptr %l10, !tbaa !29
  %t178 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t176)
  store i64 %t178, ptr %l86
  br label %bb25
bb25:
  %t179 = load i64, ptr %l84, !tbaa !24
  %t180 = load i64, ptr %l86, !tbaa !24
  %t181 = icmp slt i64 %t179, %t180
  %t183 = xor i1 %t181, true
  br i1 %t183, label %bb26, label %bb27
bb26:
  br label %bb61
bb27:
  br label %bb28
bb28:
  %t185 = load ptr, ptr %l10, !tbaa !29
  %t186 = load i64, ptr %l11, !tbaa !24
  %t189 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t185, i64 %t186)
  store ptr %t189, ptr %l91
  br label %bb29
bb29:
  %t190 = load ptr, ptr %l91, !tbaa !29
  store ptr %t190, ptr %l12, !tbaa !29
  store i64 0, ptr %l13, !tbaa !24
  %t191 = load ptr, ptr %l0, !tbaa !29
  %t193 = getelementptr %"compiler/lsp:worker", ptr %t191, i32 0, i32 0
  %t194 = load ptr, ptr %t193, !tbaa !29
  %t196 = getelementptr %"compiler/lsp:Server", ptr %t194, i32 0, i32 1
  %t198 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eLen_Ha7d56d00f5631ac8d39ace71211767ab(ptr %v0, ptr %t196)
  store i64 %t198, ptr %l95
  br label %bb30
bb30:
  %t199 = load i64, ptr %l95, !tbaa !24
  store i64 %t199, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t200 = load i64, ptr %l14, !tbaa !24
  %t201 = load i64, ptr %l13, !tbaa !24
  %t204 = icmp sgt i64 %t200, %t201
  br i1 %t204, label %bb31, label %bb32
bb31:
  %t206 = load i64, ptr %l15, !tbaa !24
  %t208 = icmp sgt i64 %t206, 0
  br i1 %t208, label %bb33, label %bb34
bb32:
  store i64 0, ptr %l99, !tbaa !24
  br label %bb36
bb33:
  %t210 = load i64, ptr %l14, !tbaa !24
  %t211 = load i64, ptr %l13, !tbaa !24
  %t214 = sub i64 %t210, %t211
  %t215 = load i64, ptr %l15, !tbaa !24
  %t218 = add i64 %t214, %t215
  %t220 = sub i64 %t218, 1
  %t221 = load i64, ptr %l15, !tbaa !24
  %t224 = sdiv i64 %t220, %t221
  store i64 %t224, ptr %l102, !tbaa !24
  br label %bb35
bb34:
  store i64 0, ptr %l102, !tbaa !24
  br label %bb35
bb35:
  %t226 = load i64, ptr %l102, !tbaa !24
  store i64 %t226, ptr %l99, !tbaa !24
  br label %bb36
bb36:
  %t227 = load i64, ptr %l99, !tbaa !24
  store i64 %t227, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb37
bb37:
  %t228 = load i64, ptr %l17, !tbaa !24
  %t229 = load i64, ptr %l16, !tbaa !24
  %t232 = icmp slt i64 %t228, %t229
  %t234 = xor i1 %t232, true
  br i1 %t234, label %bb38, label %bb39
bb38:
  br label %bb59
bb39:
  br label %bb40
bb40:
  %t236 = load i64, ptr %l13, !tbaa !24
  %t237 = load i64, ptr %l17, !tbaa !24
  %t238 = load i64, ptr %l15, !tbaa !24
  %t241 = mul i64 %t237, %t238
  %t244 = add i64 %t236, %t241
  store i64 %t244, ptr %l18, !tbaa !24
  %t246 = load i64, ptr %l18, !tbaa !24
  %t247 = load i64, ptr %l1, !tbaa !24
  %t250 = icmp ne i64 %t246, %t247
  br i1 %t250, label %bb41, label %bb42
bb41:
  %t252 = load ptr, ptr %l0, !tbaa !29
  %t254 = getelementptr %"compiler/lsp:worker", ptr %t252, i32 0, i32 0
  %t255 = load ptr, ptr %t254, !tbaa !29
  %t257 = getelementptr %"compiler/lsp:Server", ptr %t255, i32 0, i32 1
  %t258 = load i64, ptr %l18, !tbaa !24
  %t261 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eAt__Ha6317692879988aa8c889b506af3dc4d(ptr %v0, ptr %v0, ptr %t257, i64 %t258)
  store ptr %t261, ptr %l128
  br label %bb43
bb42:
  store i1 false, ptr %l123, !tbaa !21
  br label %bb44
bb43:
  %t262 = load ptr, ptr %l128, !tbaa !29
  %t264 = getelementptr %"compiler/lsp:Doc", ptr %t262, i32 0, i32 4
  %t265 = load i1, ptr %t264, !tbaa !21
  store i1 %t265, ptr %l123, !tbaa !21
  br label %bb44
bb44:
  %t267 = load i1, ptr %l123, !tbaa !21
  br i1 %t267, label %bb45, label %bb46
bb45:
  %t268 = load ptr, ptr %l0, !tbaa !29
  %t270 = getelementptr %"compiler/lsp:worker", ptr %t268, i32 0, i32 0
  %t271 = load ptr, ptr %t270, !tbaa !29
  %t273 = getelementptr %"compiler/lsp:Server", ptr %t271, i32 0, i32 1
  %t274 = load i64, ptr %l18, !tbaa !24
  %t277 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eAt__Ha6317692879988aa8c889b506af3dc4d(ptr %v0, ptr %v0, ptr %t273, i64 %t274)
  store ptr %t277, ptr %l136
  br label %bb47
bb46:
  store i1 false, ptr %l131, !tbaa !21
  br label %bb49
bb47:
  %t278 = load ptr, ptr %l136, !tbaa !29
  %t280 = getelementptr %"compiler/lsp:Doc", ptr %t278, i32 0, i32 2
  %t281 = load { i64, ptr }, ptr %t280, !tbaa !27
  %t282 = load ptr, ptr %l12, !tbaa !29
  %t284 = getelementptr %"compiler/load:Module", ptr %t282, i32 0, i32 1
  %t285 = load { i64, ptr }, ptr %t284, !tbaa !27
  %t288 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v0, { i64, ptr } %t281, { i64, ptr } %t285)
  store i1 %t288, ptr %l141
  br label %bb48
bb48:
  %t289 = load i1, ptr %l141, !tbaa !21
  store i1 %t289, ptr %l131, !tbaa !21
  br label %bb49
bb49:
  %t290 = load i1, ptr %l131, !tbaa !21
  br i1 %t290, label %bb50, label %bb51
bb50:
  store %olang.scope zeroinitializer, ptr %s7
  %t291 = load i1, ptr %l9, !tbaa !21
  %t293 = xor i1 %t291, true
  br i1 %t293, label %bb52, label %bb53
bb51:
  br label %bb57
bb52:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l8, i8 44)
  br label %bb54
bb53:
  br label %bb55
bb54:
  br label %bb55
bb55:
  store i1 false, ptr %l9, !tbaa !21
  %t296 = load i64, ptr %l18, !tbaa !24
  %t298 = call i64 @__olang_fmt_i64(ptr null, i64 %t296)
  %t299 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t298)
  %t300 = call i64 @__olang_fmt_i64(ptr %t299, i64 %t296)
  %t301 = insertvalue { i64, ptr } undef, i64 %t298, 0
  %t302 = insertvalue { i64, ptr } %t301, ptr %t299, 1
  %t304 = extractvalue { i64, ptr } %t302, 0
  %t305 = extractvalue { i64, ptr } %t302, 1
  %t306 = mul i64 %t304, 1
  %t307 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t306)
  call void @llvm.memcpy.p0.p0.i64(ptr %t307, ptr %t305, i64 %t306, i1 false)
  %t308 = insertvalue { i64, ptr } undef, i64 %t304, 0
  %t309 = insertvalue { i64, ptr } %t308, ptr %t307, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s7, ptr %l8, { i64, ptr } %t309)
  br label %bb56
bb56:
  call void @__olang_scope_close(ptr %s7)
  br label %bb57
bb57:
  br label %bb58
bb58:
  %t312 = load i64, ptr %l17, !tbaa !24
  %t314 = add i64 %t312, 1
  store i64 %t314, ptr %l17, !tbaa !24
  br label %bb37
bb59:
  br label %bb60
bb60:
  %t316 = load i64, ptr %l11, !tbaa !24
  %t318 = add i64 %t316, 1
  store i64 %t318, ptr %l11, !tbaa !24
  br label %bb24
bb61:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l8, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d110, i32 0, i32 1) })
  br label %bb62
bb62:
  store i64 0, ptr %l19, !tbaa !24
  %t322 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l7)
  store i64 %t322, ptr %l155
  br label %bb63
bb63:
  %t323 = load i64, ptr %l155, !tbaa !24
  store i64 %t323, ptr %l20, !tbaa !24
  store i64 1, ptr %l21, !tbaa !24
  %t324 = load i64, ptr %l20, !tbaa !24
  %t325 = load i64, ptr %l19, !tbaa !24
  %t328 = icmp sgt i64 %t324, %t325
  br i1 %t328, label %bb64, label %bb65
bb64:
  %t330 = load i64, ptr %l21, !tbaa !24
  %t332 = icmp sgt i64 %t330, 0
  br i1 %t332, label %bb66, label %bb67
bb65:
  store i64 0, ptr %l159, !tbaa !24
  br label %bb69
bb66:
  %t334 = load i64, ptr %l20, !tbaa !24
  %t335 = load i64, ptr %l19, !tbaa !24
  %t338 = sub i64 %t334, %t335
  %t339 = load i64, ptr %l21, !tbaa !24
  %t342 = add i64 %t338, %t339
  %t344 = sub i64 %t342, 1
  %t345 = load i64, ptr %l21, !tbaa !24
  %t348 = sdiv i64 %t344, %t345
  store i64 %t348, ptr %l162, !tbaa !24
  br label %bb68
bb67:
  store i64 0, ptr %l162, !tbaa !24
  br label %bb68
bb68:
  %t350 = load i64, ptr %l162, !tbaa !24
  store i64 %t350, ptr %l159, !tbaa !24
  br label %bb69
bb69:
  %t351 = load i64, ptr %l159, !tbaa !24
  store i64 %t351, ptr %l22, !tbaa !24
  store i64 0, ptr %l23, !tbaa !24
  br label %bb70
bb70:
  %t352 = load i64, ptr %l23, !tbaa !24
  %t353 = load i64, ptr %l22, !tbaa !24
  %t356 = icmp slt i64 %t352, %t353
  %t358 = xor i1 %t356, true
  br i1 %t358, label %bb71, label %bb72
bb71:
  br label %bb81
bb72:
  br label %bb73
bb73:
  %t360 = load i64, ptr %l19, !tbaa !24
  %t361 = load i64, ptr %l23, !tbaa !24
  %t362 = load i64, ptr %l21, !tbaa !24
  %t365 = mul i64 %t361, %t362
  %t368 = add i64 %t360, %t365
  store i64 %t368, ptr %l24, !tbaa !24
  %t370 = load i64, ptr %l24, !tbaa !24
  %t372 = icmp sgt i64 %t370, 0
  br i1 %t372, label %bb74, label %bb75
bb74:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l8, i8 44)
  br label %bb76
bb75:
  br label %bb77
bb76:
  br label %bb77
bb77:
  store ptr %l8, ptr %l183, !tbaa !29
  %t375 = load i64, ptr %l24, !tbaa !24
  %t378 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %l7, i64 %t375)
  store { i64, ptr } %t378, ptr %l186
  br label %bb78
bb78:
  %t379 = load ptr, ptr %l183, !tbaa !29
  %t380 = load { i64, ptr }, ptr %l186, !tbaa !27
  call void @compiler_2fsession_2eJsonStr(ptr %s0, ptr %s0, ptr %t379, { i64, ptr } %t380)
  br label %bb79
bb79:
  br label %bb80
bb80:
  %t381 = load i64, ptr %l23, !tbaa !24
  %t383 = add i64 %t381, 1
  store i64 %t383, ptr %l23, !tbaa !24
  br label %bb70
bb81:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l8, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d111, i32 0, i32 1) })
  br label %bb82
bb82:
  %t386 = load ptr, ptr %l0, !tbaa !29
  store ptr %t386, ptr %l190, !tbaa !29
  %t388 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %l8)
  store { i64, ptr } %t388, ptr %l192
  br label %bb83
bb83:
  %t389 = load { i64, ptr }, ptr %l192, !tbaa !27
  %t390 = extractvalue { i64, ptr } %t389, 0
  %t391 = extractvalue { i64, ptr } %t389, 1
  %t392 = mul i64 %t390, 1
  %t393 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t392)
  call void @llvm.memcpy.p0.p0.i64(ptr %t393, ptr %t391, i64 %t392, i1 false)
  %t394 = insertvalue { i64, ptr } undef, i64 %t390, 0
  %t395 = insertvalue { i64, ptr } %t394, ptr %t393, 1
  %t396 = load ptr, ptr %l190, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aworker_2esend(ptr %v0, ptr %s0, ptr %t396, { i64, ptr } %t395)
  br label %bb84
bb84:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flsp_2ecompiler_2flsp_3aworker_2ecomplete(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, { i64, ptr } %a1, ptr %a2, { i64, ptr } %a3, i64 %a4, ptr %a5, ptr %a6) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca %"compiler/session:Items"
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %lp15 = alloca ptr
  %lp16 = alloca ptr
  %l17 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l18 = alloca %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15"
  %l24 = alloca i1
  %l25 = alloca { i64, ptr }
  %l29 = alloca i1
  %l33 = alloca %"compiler/session:Items"
  %l36 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l54 = alloca i1
  %l55 = alloca { i64, ptr }
  %l67 = alloca i1
  %l68 = alloca { i64, ptr }
  %l71 = alloca i1
  %l75 = alloca { i64, ptr }
  %l76 = alloca i64
  %l77 = alloca i64
  %l81 = alloca { i64, ptr }
  %l82 = alloca { i64, ptr }
  %l83 = alloca i64
  %l86 = alloca i64
  %l87 = alloca i64
  %l93 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l96 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l97 = alloca %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15"
  %l99 = alloca %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15"
  %l100 = alloca i32
  %l102 = alloca i1
  %l115 = alloca ptr
  %l127 = alloca ptr
  %l133 = alloca ptr
  %l134 = alloca { i64, ptr }
  %l136 = alloca { i64, ptr }
  %l139 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  store i64 %a4, ptr %l4
  store ptr %a5, ptr %l5
  store ptr %a6, ptr %l6
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l4, !tbaa !24
  store i64 %t1, ptr %l7, !tbaa !24
  br label %bb1
bb1:
  %t3 = load i64, ptr %l7, !tbaa !24
  %t5 = icmp sgt i64 %t3, 0
  br i1 %t5, label %bb2, label %bb3
bb2:
  %t7 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t7, ptr %l25, !tbaa !27
  %t8 = load i64, ptr %l7, !tbaa !24
  %t10 = sub i64 %t8, 1
  %t12 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr i8, ptr %t13, i64 %t10
  %t15 = load i8, ptr %t14, !tbaa !32
  %t17 = call i1 @compiler_2fsession_2eWordChar(i8 %t15)
  store i1 %t17, ptr %l29
  br label %bb4
bb3:
  store i1 false, ptr %l24, !tbaa !21
  br label %bb5
bb4:
  %t18 = load i1, ptr %l29, !tbaa !21
  store i1 %t18, ptr %l24, !tbaa !21
  br label %bb5
bb5:
  %t19 = load i1, ptr %l24, !tbaa !21
  %t20 = xor i1 %t19, true
  br i1 %t20, label %bb6, label %bb7
bb6:
  br label %bb10
bb7:
  br label %bb8
bb8:
  %t22 = load i64, ptr %l7, !tbaa !24
  %t24 = sub i64 %t22, 1
  store i64 %t24, ptr %l7, !tbaa !24
  br label %bb9
bb9:
  br label %bb1
bb10:
  %t26 = call %"compiler/session:Items" @compiler_2fsession_3aItems_2ector(ptr %s0)
  store %"compiler/session:Items" %t26, ptr %l33
  br label %bb11
bb11:
  %t27 = load %"compiler/session:Items", ptr %l33
  store %"compiler/session:Items" %t27, ptr %l8
  %t28 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t29 = load i64, ptr %l7, !tbaa !24
  %t32 = call { i64, ptr } @compiler_2fsession_2ePromiseTargets(ptr %v3, ptr %s0, { i64, ptr } %t28, i64 %t29)
  store { i64, ptr } %t32, ptr %l36
  br label %bb12
bb12:
  %t33 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t33, 0
  %t35 = extractvalue { i64, ptr } %t33, 1
  %t36 = mul i64 %t34, 16
  %t37 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t36)
  call void @llvm.memcpy.p0.p0.i64(ptr %t37, ptr %t35, i64 %t36, i1 false)
  %t38 = insertvalue { i64, ptr } undef, i64 %t34, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr %t37, 1
  store { i64, ptr } %t39, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t41 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t41, 0
  store i64 %t43, ptr %l11, !tbaa !24
  br label %bb13
bb13:
  store %olang.scope zeroinitializer, ptr %s3
  %t45 = load i64, ptr %l10, !tbaa !24
  %t46 = load i64, ptr %l11, !tbaa !24
  %t49 = icmp slt i64 %t45, %t46
  %t51 = xor i1 %t49, true
  br i1 %t51, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s3)
  br label %bb19
bb15:
  br label %bb16
bb16:
  %t53 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t53, ptr %l44, !tbaa !27
  %t54 = load i64, ptr %l10, !tbaa !24
  %t56 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !27
  %t58 = getelementptr { i64, ptr }, ptr %t57, i64 %t54
  %t59 = load { i64, ptr }, ptr %t58, !tbaa !37
  %t62 = load i64, ptr @G_2ecompiler_2fsession_2eCompVariable, !tbaa !24
  call void @compiler_2fsession_2ecompiler_2fsession_3aItems_2eAdd(ptr %s0, ptr %s0, ptr %s3, ptr %l8, { i64, ptr } %t59, i64 %t62, { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d112, i32 0, i32 1) })
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s3)
  br label %bb18
bb18:
  %t66 = load i64, ptr %l10, !tbaa !24
  %t68 = add i64 %t66, 1
  store i64 %t68, ptr %l10, !tbaa !24
  br label %bb13
bb19:
  %t70 = load i64, ptr %l7, !tbaa !24
  %t72 = icmp sgt i64 %t70, 0
  br i1 %t72, label %bb20, label %bb21
bb20:
  %t74 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t74, ptr %l55, !tbaa !27
  %t75 = load i64, ptr %l7, !tbaa !24
  %t77 = sub i64 %t75, 1
  %t79 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !27
  %t81 = getelementptr i8, ptr %t80, i64 %t77
  %t82 = load i8, ptr %t81, !tbaa !32
  %t84 = icmp eq i8 %t82, 46
  store i1 %t84, ptr %l54, !tbaa !21
  br label %bb22
bb21:
  store i1 false, ptr %l54, !tbaa !21
  br label %bb22
bb22:
  %t86 = load i1, ptr %l54, !tbaa !21
  br i1 %t86, label %bb23, label %bb24
bb23:
  %t87 = load i64, ptr %l7, !tbaa !24
  %t89 = sub i64 %t87, 1
  store i64 %t89, ptr %l13, !tbaa !24
  %t91 = load i64, ptr %l4, !tbaa !24
  store i64 %t91, ptr %l14, !tbaa !24
  br label %bb25
bb24:
  %t93 = load ptr, ptr %l2, !tbaa !29
  %t95 = getelementptr %"compiler/lsp:Doc", ptr %t93, i32 0, i32 1
  %t96 = load { i64, ptr }, ptr %t95, !tbaa !27
  %t97 = load ptr, ptr %l5, !tbaa !29
  %t98 = load ptr, ptr %l6, !tbaa !29
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/lsp:worker", ptr %t99, i32 0, i32 4
  %t106 = call ptr @compiler_2fsession_2eAnalysis_2eAnalyze(ptr %v2, ptr %v4, ptr %v5, ptr %v0, ptr %v4, { i64, ptr } %t96, ptr %t97, ptr %t98, ptr %t101, i1 true, i1 true)
  store ptr %t106, ptr %l127
  br label %bb60
bb25:
  %t107 = load i64, ptr %l14, !tbaa !24
  %t108 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t110 = extractvalue { i64, ptr } %t108, 0
  %t113 = icmp slt i64 %t107, %t110
  br i1 %t113, label %bb26, label %bb27
bb26:
  %t115 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t115, ptr %l68, !tbaa !27
  %t116 = load i64, ptr %l14, !tbaa !24
  %t118 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t119 = load ptr, ptr %t118, !tbaa !27
  %t120 = getelementptr i8, ptr %t119, i64 %t116
  %t121 = load i8, ptr %t120, !tbaa !32
  %t123 = call i1 @compiler_2fsession_2eWordChar(i8 %t121)
  store i1 %t123, ptr %l71
  br label %bb28
bb27:
  store i1 false, ptr %l67, !tbaa !21
  br label %bb29
bb28:
  %t124 = load i1, ptr %l71, !tbaa !21
  store i1 %t124, ptr %l67, !tbaa !21
  br label %bb29
bb29:
  %t125 = load i1, ptr %l67, !tbaa !21
  %t126 = xor i1 %t125, true
  br i1 %t126, label %bb30, label %bb31
bb30:
  br label %bb34
bb31:
  br label %bb32
bb32:
  %t128 = load i64, ptr %l14, !tbaa !24
  %t130 = add i64 %t128, 1
  store i64 %t130, ptr %l14, !tbaa !24
  br label %bb33
bb33:
  br label %bb25
bb34:
  %t132 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t132, ptr %l75, !tbaa !27
  %t133 = load i64, ptr %l13, !tbaa !24
  store i64 %t133, ptr %l76, !tbaa !24
  %t134 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t135 = extractvalue { i64, ptr } %t134, 0
  store i64 %t135, ptr %l77, !tbaa !24
  %t136 = icmp sge i64 0, 0
  br i1 %t136, label %bb35, label %bb36
bb35:
  %t138 = load i64, ptr %l76, !tbaa !24
  %t139 = icmp sle i64 0, %t138
  br i1 %t139, label %bb37, label %bb38
bb36:
  call void @__olang_check_failed(ptr @olang_loc_af7c431932a7c0fe_be95e1b6bda5ce6a)
  unreachable
bb37:
  %t141 = load i64, ptr %l76, !tbaa !24
  %t142 = load i64, ptr %l77, !tbaa !24
  %t143 = icmp sle i64 %t141, %t142
  br i1 %t143, label %bb39, label %bb40
bb38:
  call void @__olang_check_failed(ptr @olang_loc_af7c431932a7c0fe_be95e1b6bda5ce6a)
  unreachable
bb39:
  %t145 = getelementptr { i64, ptr }, ptr %l75, i32 0, i32 1
  %t146 = load ptr, ptr %t145, !tbaa !27
  %t147 = load i64, ptr %l76, !tbaa !24
  %t148 = getelementptr i8, ptr %t146, i64 0
  %t149 = sub i64 %t147, 0
  %t150 = insertvalue { i64, ptr } undef, i64 %t149, 0
  %t151 = insertvalue { i64, ptr } %t150, ptr %t148, 1
  store { i64, ptr } %t151, ptr %l81, !tbaa !27
  %t152 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t152, ptr %l82, !tbaa !27
  %t153 = load i64, ptr %l14, !tbaa !24
  store i64 %t153, ptr %l83, !tbaa !24
  %t154 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t157 = extractvalue { i64, ptr } %t154, 0
  store i64 %t157, ptr %l86, !tbaa !24
  %t158 = load { i64, ptr }, ptr %l82, !tbaa !27
  %t159 = extractvalue { i64, ptr } %t158, 0
  store i64 %t159, ptr %l87, !tbaa !24
  %t160 = load i64, ptr %l83, !tbaa !24
  %t161 = icmp sge i64 %t160, 0
  br i1 %t161, label %bb41, label %bb42
bb40:
  call void @__olang_check_failed(ptr @olang_loc_af7c431932a7c0fe_be95e1b6bda5ce6a)
  unreachable
bb41:
  %t163 = load i64, ptr %l83, !tbaa !24
  %t164 = load i64, ptr %l86, !tbaa !24
  %t165 = icmp sle i64 %t163, %t164
  br i1 %t165, label %bb43, label %bb44
bb42:
  call void @__olang_check_failed(ptr @olang_loc_af7c431932a7c0fe_be95e1b6bda5ce6a)
  unreachable
bb43:
  %t167 = load i64, ptr %l86, !tbaa !24
  %t168 = load i64, ptr %l87, !tbaa !24
  %t169 = icmp sle i64 %t167, %t168
  br i1 %t169, label %bb45, label %bb46
bb44:
  call void @__olang_check_failed(ptr @olang_loc_af7c431932a7c0fe_be95e1b6bda5ce6a)
  unreachable
bb45:
  %t171 = getelementptr { i64, ptr }, ptr %l82, i32 0, i32 1
  %t172 = load ptr, ptr %t171, !tbaa !27
  %t173 = load i64, ptr %l83, !tbaa !24
  %t174 = load i64, ptr %l86, !tbaa !24
  %t175 = getelementptr i8, ptr %t172, i64 %t173
  %t176 = sub i64 %t174, %t173
  %t177 = insertvalue { i64, ptr } undef, i64 %t176, 0
  %t178 = insertvalue { i64, ptr } %t177, ptr %t175, 1
  %t179 = load { i64, ptr }, ptr %l81, !tbaa !27
  %t180 = extractvalue { i64, ptr } %t179, 1
  %t181 = extractvalue { i64, ptr } %t179, 0
  %t183 = extractvalue { i64, ptr } %t178, 1
  %t184 = extractvalue { i64, ptr } %t178, 0
  %t185 = add i64 %t181, %t184
  %t186 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t185)
  call void @olang_textcopy(ptr %t186, ptr %t180, i64 %t181)
  %t187 = getelementptr i8, ptr %t186, i64 %t181
  call void @olang_textcopy(ptr %t187, ptr %t183, i64 %t184)
  %t188 = insertvalue { i64, ptr } undef, i64 %t185, 0
  %t189 = insertvalue { i64, ptr } %t188, ptr %t186, 1
  %t190 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 16, i64 8)
  store ptr %t190, ptr %lp15
  %t192 = load ptr, ptr %lp15
  store { i64, ptr } %t189, ptr %t192, !tbaa !27
  %t193 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v4)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t193, ptr %l93
  br label %bb47
bb46:
  call void @__olang_check_failed(ptr @olang_loc_af7c431932a7c0fe_be95e1b6bda5ce6a)
  unreachable
bb47:
  %t194 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 72, i64 8)
  store ptr %t194, ptr %lp16
  %t195 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l93
  %t196 = load ptr, ptr %lp16
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t195, ptr %t196
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t199 = getelementptr %"compiler/lsp:worker", ptr %t197, i32 0, i32 4
  %t201 = call %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H233962476a3191cb30d917b30cae0288(ptr %v0, ptr %v0, ptr %t199)
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t201, ptr %l96
  br label %bb48
bb48:
  %t202 = load %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l96
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t202, ptr %l17
  br label %bb49
bb49:
  %t204 = call { i32, %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3cstd_2fprelude_2ftext_3aString_26_2_H2ebf6f1d68886862a568a520c713bfce(ptr %v0, ptr %v0, ptr %l17)
  %t205 = extractvalue { i32, %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15" } %t204, 1
  %t206 = extractvalue { i32, %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15" } %t204, 0
  store i32 %t206, ptr %l100
  %t207 = icmp ne i32 %t206, 0
  br i1 %t207, label %bb51, label %ok.208, !prof !99
ok.208:
  store %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15" %t205, ptr %l99
  br label %bb50
bb50:
  %t209 = load %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15", ptr %l99
  store %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15" %t209, ptr %l97
  br label %bb53
bb51:
  %t210 = load i32, ptr %l100, !tbaa !23
  %t211 = ashr i32 %t210, 16
  %t213 = icmp eq i32 %t211, 1
  store i1 %t213, ptr %l102, !tbaa !21
  br label %bb52
bb52:
  br label %bb56
bb53:
  %t214 = load %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15", ptr %l97
  store %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15" %t214, ptr %l18
  %t215 = load ptr, ptr %lp16
  %t216 = getelementptr %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15", ptr %l18, i32 0, i32 0
  %t217 = load { i64, ptr }, ptr %t216, !tbaa !27
  %t218 = getelementptr %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15", ptr %l18, i32 0, i32 1
  %t219 = load { i64, ptr }, ptr %t218, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6f7a2f8d839c49b6e7a19c287d4b190c(ptr %v4, ptr %v0, ptr %v0, ptr %t215, { i64, ptr } %t217, { i64, ptr } %t219)
  br label %bb54
bb54:
  br label %bb55
bb55:
  br label %bb49
bb56:
  %t223 = load ptr, ptr %lp16
  %t224 = load ptr, ptr %l2, !tbaa !29
  %t226 = getelementptr %"compiler/lsp:Doc", ptr %t224, i32 0, i32 2
  %t227 = load { i64, ptr }, ptr %t226, !tbaa !27
  %t228 = load ptr, ptr %lp15
  %t229 = load { i64, ptr }, ptr %t228, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6f7a2f8d839c49b6e7a19c287d4b190c(ptr %v4, ptr %v2, ptr %v4, ptr %t223, { i64, ptr } %t227, { i64, ptr } %t229)
  br label %bb57
bb57:
  %t233 = load ptr, ptr %l2, !tbaa !29
  %t235 = getelementptr %"compiler/lsp:Doc", ptr %t233, i32 0, i32 1
  %t236 = load { i64, ptr }, ptr %t235, !tbaa !27
  %t237 = load ptr, ptr %l5, !tbaa !29
  %t238 = load ptr, ptr %l6, !tbaa !29
  %t239 = load ptr, ptr %lp16
  %t244 = call ptr @compiler_2fsession_2eAnalysis_2eAnalyze(ptr %v2, ptr %v4, ptr %v5, ptr %v4, ptr %v4, { i64, ptr } %t236, ptr %t237, ptr %t238, ptr %t239, i1 true, i1 false)
  store ptr %t244, ptr %l115
  br label %bb58
bb58:
  %t245 = load ptr, ptr %l115, !tbaa !29
  %t247 = load ptr, ptr %l2, !tbaa !29
  %t249 = getelementptr %"compiler/lsp:Doc", ptr %t247, i32 0, i32 2
  %t250 = load { i64, ptr }, ptr %t249, !tbaa !27
  %t251 = load i64, ptr %l13, !tbaa !24
  call void @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eMembers(ptr %v4, ptr %s0, ptr %v2, ptr %t245, ptr %l8, { i64, ptr } %t250, i64 %t251)
  br label %bb59
bb59:
  br label %bb62
bb60:
  %t256 = load ptr, ptr %l127, !tbaa !29
  %t258 = load ptr, ptr %l2, !tbaa !29
  %t260 = getelementptr %"compiler/lsp:Doc", ptr %t258, i32 0, i32 2
  %t261 = load { i64, ptr }, ptr %t260, !tbaa !27
  %t262 = load i64, ptr %l4, !tbaa !24
  call void @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eNames(ptr %v4, ptr %s0, ptr %v2, ptr %t256, ptr %l8, { i64, ptr } %t261, i64 %t262)
  br label %bb61
bb61:
  br label %bb62
bb62:
  %t267 = load ptr, ptr %l0, !tbaa !29
  store ptr %t267, ptr %l133, !tbaa !29
  store { i64, ptr } %a1, ptr %l134, !tbaa !27
  %t269 = getelementptr %"compiler/session:Items", ptr %l8, i32 0, i32 0
  %t271 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %t269)
  store { i64, ptr } %t271, ptr %l136
  br label %bb63
bb63:
  %t272 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d113, i32 0, i32 1) }, 1
  %t273 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d113, i32 0, i32 1) }, 0
  %t274 = load { i64, ptr }, ptr %l136, !tbaa !27
  %t275 = extractvalue { i64, ptr } %t274, 1
  %t276 = extractvalue { i64, ptr } %t274, 0
  %t277 = add i64 %t273, %t276
  %t278 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d114, i32 0, i32 1) }, 1
  %t279 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d114, i32 0, i32 1) }, 0
  %t280 = add i64 %t277, %t279
  %t281 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t280)
  call void @olang_textcopy(ptr %t281, ptr %t272, i64 %t273)
  %t282 = getelementptr i8, ptr %t281, i64 %t273
  call void @olang_textcopy(ptr %t282, ptr %t275, i64 %t276)
  %t283 = getelementptr i8, ptr %t282, i64 %t276
  call void @olang_textcopy(ptr %t283, ptr %t278, i64 %t279)
  %t284 = insertvalue { i64, ptr } undef, i64 %t280, 0
  %t285 = insertvalue { i64, ptr } %t284, ptr %t281, 1
  %t287 = extractvalue { i64, ptr } %t285, 0
  %t288 = extractvalue { i64, ptr } %t285, 1
  %t289 = mul i64 %t287, 1
  %t290 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t289)
  call void @llvm.memcpy.p0.p0.i64(ptr %t290, ptr %t288, i64 %t289, i1 false)
  %t291 = insertvalue { i64, ptr } undef, i64 %t287, 0
  %t292 = insertvalue { i64, ptr } %t291, ptr %t290, 1
  %t293 = load { i64, ptr }, ptr %l134, !tbaa !27
  %t295 = call { i64, ptr } @compiler_2flsp_2ereply(ptr %v1, ptr %s0, ptr %s0, { i64, ptr } %t293, { i64, ptr } %t292)
  store { i64, ptr } %t295, ptr %l139
  br label %bb64
bb64:
  %t296 = load { i64, ptr }, ptr %l139, !tbaa !27
  %t297 = extractvalue { i64, ptr } %t296, 0
  %t298 = extractvalue { i64, ptr } %t296, 1
  %t299 = mul i64 %t297, 1
  %t300 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t299)
  call void @llvm.memcpy.p0.p0.i64(ptr %t300, ptr %t298, i64 %t299, i1 false)
  %t301 = insertvalue { i64, ptr } undef, i64 %t297, 0
  %t302 = insertvalue { i64, ptr } %t301, ptr %t300, 1
  %t303 = load ptr, ptr %l133, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aworker_2esend(ptr %v0, ptr %s0, ptr %t303, { i64, ptr } %t302)
  br label %bb65
bb65:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flsp_2ecompiler_2flsp_3aworker_2edeprecations(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca %"compiler/session:Positions"
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca %"compiler/session:Use"
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca %"compiler/session:Use"
  %l11 = alloca i64
  %l16 = alloca { i64, ptr }
  %l21 = alloca %"compiler/session:Positions"
  %l24 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l26 = alloca i64
  %l28 = alloca i64
  %l33 = alloca %"compiler/session:Use"
  %l35 = alloca i64
  %l51 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l53 = alloca i64
  %l55 = alloca i64
  %l60 = alloca %"compiler/session:Use"
  %l62 = alloca i64
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s6 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = ptrtoint ptr %s0 to i64
  store i64 %t1, ptr %l11, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fsession_3aPositions_2e0
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %s0)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l11, !tbaa !24
  br label %bb2
bb2:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load ptr, ptr %l2, !tbaa !29
  %t8 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t9 = load i64, ptr %l11
  %t10 = inttoptr i64 %t9 to ptr
  %t14 = call { i64, ptr } @compiler_2flsp_2ecompiler_2flsp_3aworker_2etextOf(ptr %v0, ptr %v2, ptr %v3, ptr %t10, ptr %t6, ptr %t7, { i64, ptr } %t8)
  store { i64, ptr } %t14, ptr %l16
  br label %bb3
bb3:
  %t15 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t16 = load i64, ptr %l11
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = extractvalue { i64, ptr } %t15, 0
  %t19 = extractvalue { i64, ptr } %t15, 1
  %t20 = mul i64 %t18, 1
  %t21 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t20)
  call void @llvm.memcpy.p0.p0.i64(ptr %t21, ptr %t19, i64 %t20, i1 false)
  %t22 = insertvalue { i64, ptr } undef, i64 %t18, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t21, 1
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/lsp:worker", ptr %t24, i32 0, i32 0
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t29 = getelementptr %"compiler/lsp:Server", ptr %t27, i32 0, i32 2
  %t30 = load i1, ptr %t29, !tbaa !21
  %t33 = call %"compiler/session:Positions" @compiler_2fsession_3aPositions_2ector(ptr %s0, ptr %s0, { i64, ptr } %t23, i1 %t30)
  store %"compiler/session:Positions" %t33, ptr %l21
  br label %bb4
bb4:
  %t34 = load %"compiler/session:Positions", ptr %l21
  store %"compiler/session:Positions" %t34, ptr %l4
  store %olang.scope zeroinitializer, ptr %s1
  %t35 = load ptr, ptr %l2, !tbaa !29
  %t36 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t39 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eDeprecatedUses(ptr %v2, ptr %v3, ptr %s1, ptr %t35, { i64, ptr } %t36)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t39, ptr %l24
  br label %bb5
bb5:
  %t40 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l24
  %t41 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t40, ptr %t41
  store ptr %t41, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb6
bb6:
  store %olang.scope zeroinitializer, ptr %s2
  %t43 = load i64, ptr %l6, !tbaa !24
  store i64 %t43, ptr %l26, !tbaa !24
  %t44 = load ptr, ptr %l5, !tbaa !29
  %t46 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsession_3aUse_3e_2eLen_3ccompiler_2fsession_3aUse_3e(ptr %s1, ptr %t44)
  store i64 %t46, ptr %l28
  br label %bb7
bb7:
  %t47 = load i64, ptr %l26, !tbaa !24
  %t48 = load i64, ptr %l28, !tbaa !24
  %t49 = icmp slt i64 %t47, %t48
  %t51 = xor i1 %t49, true
  br i1 %t51, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s2)
  br label %bb23
bb9:
  br label %bb10
bb10:
  %t53 = load ptr, ptr %l5, !tbaa !29
  %t54 = load i64, ptr %l6, !tbaa !24
  %t57 = call %"compiler/session:Use" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsession_3aUse_3e_2eAt_3ccompiler_2fsession_3aUse_3e(ptr %s1, ptr %s1, ptr %t53, i64 %t54)
  store %"compiler/session:Use" %t57, ptr %l33
  br label %bb11
bb11:
  %t58 = load %"compiler/session:Use", ptr %l33
  store %"compiler/session:Use" %t58, ptr %l7
  %t59 = load ptr, ptr %l1, !tbaa !29
  %t61 = call i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %v1, ptr %t59)
  store i64 %t61, ptr %l35
  br label %bb12
bb12:
  %t62 = load i64, ptr %l35, !tbaa !24
  %t63 = icmp sgt i64 %t62, 0
  br i1 %t63, label %bb13, label %bb14
bb13:
  %t65 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t65, i8 44)
  br label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb16
bb16:
  %t67 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s2, ptr %t67, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d115, i32 0, i32 1) })
  br label %bb17
bb17:
  %t69 = load ptr, ptr %l1, !tbaa !29
  %t70 = getelementptr %"compiler/session:Use", ptr %l7, i32 0, i32 0
  %t71 = load i64, ptr %t70, !tbaa !24
  %t72 = getelementptr %"compiler/session:Use", ptr %l7, i32 0, i32 1
  %t73 = load i64, ptr %t72, !tbaa !24
  call void @compiler_2fsession_2ecompiler_2fsession_3aPositions_2eRange(ptr %s0, ptr %v1, ptr %l4, ptr %t69, i64 %t71, i64 %t73)
  br label %bb18
bb18:
  %t78 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s2, ptr %t78, { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d116, i32 0, i32 1) })
  br label %bb19
bb19:
  %t80 = load ptr, ptr %l1, !tbaa !29
  %t81 = getelementptr %"compiler/session:Use", ptr %l7, i32 0, i32 2
  %t82 = load { i64, ptr }, ptr %t81, !tbaa !27
  call void @compiler_2fsession_2eJsonStr(ptr %v1, ptr %s1, ptr %t80, { i64, ptr } %t82)
  br label %bb20
bb20:
  %t85 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t85, i8 125)
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s2)
  br label %bb22
bb22:
  %t87 = load i64, ptr %l6, !tbaa !24
  %t89 = add i64 %t87, 1
  store i64 %t89, ptr %l6, !tbaa !24
  br label %bb6
bb23:
  call void @__olang_scope_close(ptr %s1)
  store %olang.scope zeroinitializer, ptr %s5
  %t91 = load ptr, ptr %l2, !tbaa !29
  %t92 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t95 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2ePlaced(ptr %v2, ptr %v3, ptr %s5, ptr %t91, { i64, ptr } %t92)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t95, ptr %l51
  br label %bb24
bb24:
  %t96 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l51
  %t97 = call ptr @__olang_scope_alloc_a(ptr %s5, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t96, ptr %t97
  store ptr %t97, ptr %l8, !tbaa !29
  store i64 0, ptr %l9, !tbaa !24
  br label %bb25
bb25:
  store %olang.scope zeroinitializer, ptr %s6
  %t99 = load i64, ptr %l9, !tbaa !24
  store i64 %t99, ptr %l53, !tbaa !24
  %t100 = load ptr, ptr %l8, !tbaa !29
  %t102 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsession_3aUse_3e_2eLen_3ccompiler_2fsession_3aUse_3e(ptr %s5, ptr %t100)
  store i64 %t102, ptr %l55
  br label %bb26
bb26:
  %t103 = load i64, ptr %l53, !tbaa !24
  %t104 = load i64, ptr %l55, !tbaa !24
  %t105 = icmp slt i64 %t103, %t104
  %t107 = xor i1 %t105, true
  br i1 %t107, label %bb27, label %bb28
bb27:
  call void @__olang_scope_close(ptr %s6)
  br label %bb42
bb28:
  br label %bb29
bb29:
  %t109 = load ptr, ptr %l8, !tbaa !29
  %t110 = load i64, ptr %l9, !tbaa !24
  %t113 = call %"compiler/session:Use" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsession_3aUse_3e_2eAt_3ccompiler_2fsession_3aUse_3e(ptr %s5, ptr %s5, ptr %t109, i64 %t110)
  store %"compiler/session:Use" %t113, ptr %l60
  br label %bb30
bb30:
  %t114 = load %"compiler/session:Use", ptr %l60
  store %"compiler/session:Use" %t114, ptr %l10
  %t115 = load ptr, ptr %l1, !tbaa !29
  %t117 = call i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %v1, ptr %t115)
  store i64 %t117, ptr %l62
  br label %bb31
bb31:
  %t118 = load i64, ptr %l62, !tbaa !24
  %t119 = icmp sgt i64 %t118, 0
  br i1 %t119, label %bb32, label %bb33
bb32:
  %t121 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t121, i8 44)
  br label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb35
bb35:
  %t123 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s6, ptr %t123, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d117, i32 0, i32 1) })
  br label %bb36
bb36:
  %t125 = load ptr, ptr %l1, !tbaa !29
  %t126 = getelementptr %"compiler/session:Use", ptr %l10, i32 0, i32 0
  %t127 = load i64, ptr %t126, !tbaa !24
  %t128 = getelementptr %"compiler/session:Use", ptr %l10, i32 0, i32 1
  %t129 = load i64, ptr %t128, !tbaa !24
  call void @compiler_2fsession_2ecompiler_2fsession_3aPositions_2eRange(ptr %s0, ptr %v1, ptr %l4, ptr %t125, i64 %t127, i64 %t129)
  br label %bb37
bb37:
  %t134 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s6, ptr %t134, { i64, ptr } { i64 54, ptr getelementptr inbounds (<{ i64, [54 x i8] }>, ptr @.d118, i32 0, i32 1) })
  br label %bb38
bb38:
  %t136 = load ptr, ptr %l1, !tbaa !29
  %t137 = getelementptr %"compiler/session:Use", ptr %l10, i32 0, i32 2
  %t138 = load { i64, ptr }, ptr %t137, !tbaa !27
  call void @compiler_2fsession_2eJsonStr(ptr %v1, ptr %s5, ptr %t136, { i64, ptr } %t138)
  br label %bb39
bb39:
  %t141 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t141, i8 125)
  br label %bb40
bb40:
  call void @__olang_scope_close(ptr %s6)
  br label %bb41
bb41:
  %t143 = load i64, ptr %l9, !tbaa !24
  %t145 = add i64 %t143, 1
  store i64 %t145, ptr %l9, !tbaa !24
  br label %bb25
bb42:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flsp_2ecompiler_2flsp_3aworker_2ediagnostic(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, ptr %a1, ptr %a2, ptr %a3, ptr %a4, i64 %a5, { i64, ptr } %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca %"compiler/diag:Item"
  %l8 = alloca %"compiler/session:Positions"
  %l9 = alloca %"std/prelude/text:StringBuilder"
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l16 = alloca %"compiler/diag:Item"
  %l17 = alloca { i64, ptr }
  %l18 = alloca %"compiler/session:Positions"
  %l21 = alloca %"compiler/diag:Item"
  %l22 = alloca i64
  %l27 = alloca { i64, ptr }
  %l32 = alloca %"compiler/session:Positions"
  %l38 = alloca ptr
  %l40 = alloca i64
  %l44 = alloca i1
  %l52 = alloca %"std/prelude/text:StringBuilder"
  %l56 = alloca i64
  %l60 = alloca i64
  %l63 = alloca i64
  %l83 = alloca %"compiler/diag:Item"
  %l86 = alloca i64
  %l91 = alloca { i64, ptr }
  %l94 = alloca { i64, ptr }
  %l97 = alloca i64
  %l102 = alloca { i64, ptr }
  %l107 = alloca %"compiler/session:Positions"
  %l109 = alloca ptr
  %l112 = alloca { i64, ptr }
  %l120 = alloca ptr
  %l122 = alloca { i64, ptr }
  %l131 = alloca i64
  %l133 = alloca ptr
  %l135 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s10 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  store ptr %a4, ptr %l4
  store i64 %a5, ptr %l5
  store { i64, ptr } %a6, ptr %l6
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l4, !tbaa !29
  %t2 = load i64, ptr %l5, !tbaa !24
  %t5 = call %"compiler/diag:Item" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aItem_3e_2eAt_3ccompiler_2fdiag_3aItem_3e(ptr %v4, ptr %v4, ptr %t1, i64 %t2)
  store %"compiler/diag:Item" %t5, ptr %l21
  br label %bb1
bb1:
  %t6 = load %"compiler/diag:Item", ptr %l21
  store %"compiler/diag:Item" %t6, ptr %l7
  %t7 = ptrtoint ptr %s0 to i64
  store i64 %t7, ptr %l22, !tbaa !24
  %t8 = load i1, ptr @olang_2esole_2ecompiler_2fsession_3aPositions_2e0
  br i1 %t8, label %bb2, label %bb3
bb2:
  %t10 = call ptr @__olang_region_make(ptr %s0)
  %t11 = ptrtoint ptr %t10 to i64
  store i64 %t11, ptr %l22, !tbaa !24
  br label %bb3
bb3:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load ptr, ptr %l2, !tbaa !29
  %t14 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t15 = load i64, ptr %l22
  %t16 = inttoptr i64 %t15 to ptr
  %t20 = call { i64, ptr } @compiler_2flsp_2ecompiler_2flsp_3aworker_2etextOf(ptr %v0, ptr %v2, ptr %v5, ptr %t16, ptr %t12, ptr %t13, { i64, ptr } %t14)
  store { i64, ptr } %t20, ptr %l27
  br label %bb4
bb4:
  %t21 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t22 = load i64, ptr %l22
  %t23 = inttoptr i64 %t22 to ptr
  %t24 = extractvalue { i64, ptr } %t21, 0
  %t25 = extractvalue { i64, ptr } %t21, 1
  %t26 = mul i64 %t24, 1
  %t27 = call ptr @__olang_scope_alloc(ptr %t23, i64 %t26)
  call void @llvm.memcpy.p0.p0.i64(ptr %t27, ptr %t25, i64 %t26, i1 false)
  %t28 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t29 = insertvalue { i64, ptr } %t28, ptr %t27, 1
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/lsp:worker", ptr %t30, i32 0, i32 0
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t35 = getelementptr %"compiler/lsp:Server", ptr %t33, i32 0, i32 2
  %t36 = load i1, ptr %t35, !tbaa !21
  %t39 = call %"compiler/session:Positions" @compiler_2fsession_3aPositions_2ector(ptr %s0, ptr %s0, { i64, ptr } %t29, i1 %t36)
  store %"compiler/session:Positions" %t39, ptr %l32
  br label %bb5
bb5:
  %t40 = load %"compiler/session:Positions", ptr %l32
  store %"compiler/session:Positions" %t40, ptr %l8
  %t41 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s0, ptr %t41, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d119, i32 0, i32 1) })
  br label %bb6
bb6:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aworker_2erangeOf(ptr %v0, ptr %v1, ptr %s0, ptr %v4, ptr %t43, ptr %t44, ptr %l8, ptr %l7)
  br label %bb7
bb7:
  %t49 = load ptr, ptr %l1, !tbaa !29
  store ptr %t49, ptr %l38, !tbaa !29
  %t50 = getelementptr %"compiler/diag:Item", ptr %l7, i32 0, i32 1
  %t51 = load { i64, ptr }, ptr %t50, !tbaa !27
  %t53 = call i64 @compiler_2flsp_2eseverityOf(ptr %v4, { i64, ptr } %t51)
  store i64 %t53, ptr %l40
  br label %bb8
bb8:
  %t54 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d120, i32 0, i32 1) }, 1
  %t55 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d120, i32 0, i32 1) }, 0
  %t56 = load i64, ptr %l40, !tbaa !24
  %t57 = call i64 @__olang_fmt_i64(ptr null, i64 %t56)
  %t58 = add i64 %t55, %t57
  %t59 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d121, i32 0, i32 1) }, 1
  %t60 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d121, i32 0, i32 1) }, 0
  %t61 = add i64 %t58, %t60
  %t62 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t61)
  call void @olang_textcopy(ptr %t62, ptr %t54, i64 %t55)
  %t63 = getelementptr i8, ptr %t62, i64 %t55
  %t64 = call i64 @__olang_fmt_i64(ptr %t63, i64 %t56)
  %t65 = getelementptr i8, ptr %t63, i64 %t57
  call void @olang_textcopy(ptr %t65, ptr %t59, i64 %t60)
  %t66 = insertvalue { i64, ptr } undef, i64 %t61, 0
  %t67 = insertvalue { i64, ptr } %t66, ptr %t62, 1
  %t69 = extractvalue { i64, ptr } %t67, 0
  %t70 = extractvalue { i64, ptr } %t67, 1
  %t71 = mul i64 %t69, 1
  %t72 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t71)
  call void @llvm.memcpy.p0.p0.i64(ptr %t72, ptr %t70, i64 %t71, i1 false)
  %t73 = insertvalue { i64, ptr } undef, i64 %t69, 0
  %t74 = insertvalue { i64, ptr } %t73, ptr %t72, 1
  %t75 = load ptr, ptr %l38, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s0, ptr %t75, { i64, ptr } %t74)
  br label %bb9
bb9:
  %t77 = getelementptr %"compiler/diag:Item", ptr %l7, i32 0, i32 1
  %t78 = load { i64, ptr }, ptr %t77, !tbaa !27
  %t80 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v4, ptr %s0, { i64, ptr } %t78, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d122, i32 0, i32 1) })
  store i1 %t80, ptr %l44
  br label %bb10
bb10:
  %t81 = load i1, ptr %l44, !tbaa !21
  %t82 = xor i1 %t81, true
  br i1 %t82, label %bb11, label %bb12
bb11:
  store %olang.scope zeroinitializer, ptr %s2
  %t84 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s2, ptr %t84, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d123, i32 0, i32 1) })
  br label %bb13
bb12:
  br label %bb15
bb13:
  %t86 = load ptr, ptr %l1, !tbaa !29
  %t87 = getelementptr %"compiler/diag:Item", ptr %l7, i32 0, i32 1
  %t88 = load { i64, ptr }, ptr %t87, !tbaa !27
  call void @compiler_2fsession_2eJsonStr(ptr %v1, ptr %v4, ptr %t86, { i64, ptr } %t88)
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s2)
  br label %bb15
bb15:
  %t91 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s0, ptr %t91, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d124, i32 0, i32 1) })
  br label %bb16
bb16:
  %t93 = load ptr, ptr %l1, !tbaa !29
  %t94 = getelementptr %"compiler/diag:Item", ptr %l7, i32 0, i32 6
  %t95 = load { i64, ptr }, ptr %t94, !tbaa !27
  call void @compiler_2fsession_2eJsonStr(ptr %v1, ptr %v4, ptr %t93, { i64, ptr } %t95)
  br label %bb17
bb17:
  %t98 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t98, ptr %l52
  br label %bb18
bb18:
  %t99 = load %"std/prelude/text:StringBuilder", ptr %l52
  store %"std/prelude/text:StringBuilder" %t99, ptr %l9
  %t100 = load i64, ptr %l5, !tbaa !24
  %t102 = add i64 %t100, 1
  store i64 %t102, ptr %l10, !tbaa !24
  %t104 = load ptr, ptr %l4, !tbaa !29
  %t106 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aItem_3e_2eLen_3ccompiler_2fdiag_3aItem_3e(ptr %v4, ptr %t104)
  store i64 %t106, ptr %l56
  br label %bb19
bb19:
  %t107 = load i64, ptr %l56, !tbaa !24
  store i64 %t107, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t108 = load i64, ptr %l11, !tbaa !24
  %t109 = load i64, ptr %l10, !tbaa !24
  %t112 = icmp sgt i64 %t108, %t109
  br i1 %t112, label %bb20, label %bb21
bb20:
  %t114 = load i64, ptr %l12, !tbaa !24
  %t116 = icmp sgt i64 %t114, 0
  br i1 %t116, label %bb22, label %bb23
bb21:
  store i64 0, ptr %l60, !tbaa !24
  br label %bb25
bb22:
  %t118 = load i64, ptr %l11, !tbaa !24
  %t119 = load i64, ptr %l10, !tbaa !24
  %t122 = sub i64 %t118, %t119
  %t123 = load i64, ptr %l12, !tbaa !24
  %t126 = add i64 %t122, %t123
  %t128 = sub i64 %t126, 1
  %t129 = load i64, ptr %l12, !tbaa !24
  %t132 = sdiv i64 %t128, %t129
  store i64 %t132, ptr %l63, !tbaa !24
  br label %bb24
bb23:
  store i64 0, ptr %l63, !tbaa !24
  br label %bb24
bb24:
  %t134 = load i64, ptr %l63, !tbaa !24
  store i64 %t134, ptr %l60, !tbaa !24
  br label %bb25
bb25:
  %t135 = load i64, ptr %l60, !tbaa !24
  store i64 %t135, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb26
bb26:
  store %olang.scope zeroinitializer, ptr %s4
  %t136 = load i64, ptr %l14, !tbaa !24
  %t137 = load i64, ptr %l13, !tbaa !24
  %t140 = icmp slt i64 %t136, %t137
  %t142 = xor i1 %t140, true
  br i1 %t142, label %bb27, label %bb28
bb27:
  call void @__olang_scope_close(ptr %s4)
  br label %bb59
bb28:
  br label %bb29
bb29:
  %t144 = load i64, ptr %l10, !tbaa !24
  %t145 = load i64, ptr %l14, !tbaa !24
  %t146 = load i64, ptr %l12, !tbaa !24
  %t149 = mul i64 %t145, %t146
  %t152 = add i64 %t144, %t149
  %t154 = load ptr, ptr %l4, !tbaa !29
  %t158 = call %"compiler/diag:Item" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aItem_3e_2eAt_3ccompiler_2fdiag_3aItem_3e(ptr %v4, ptr %v4, ptr %t154, i64 %t152)
  store %"compiler/diag:Item" %t158, ptr %l83
  br label %bb30
bb30:
  %t159 = load %"compiler/diag:Item", ptr %l83
  store %"compiler/diag:Item" %t159, ptr %l16
  %t160 = getelementptr %"compiler/diag:Item", ptr %l16, i32 0, i32 0
  %t161 = load i1, ptr %t160, !tbaa !21
  br i1 %t161, label %bb31, label %bb32
bb31:
  call void @__olang_scope_close(ptr %s4)
  br label %bb59
bb32:
  br label %bb33
bb33:
  %t164 = call i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %s0, ptr %l9)
  store i64 %t164, ptr %l86
  br label %bb34
bb34:
  %t165 = load i64, ptr %l86, !tbaa !24
  %t166 = icmp sgt i64 %t165, 0
  br i1 %t166, label %bb35, label %bb36
bb35:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l9, i8 44)
  br label %bb37
bb36:
  br label %bb38
bb37:
  br label %bb38
bb38:
  %t169 = getelementptr %"compiler/diag:Item", ptr %l16, i32 0, i32 2
  %t170 = load i64, ptr %t169, !tbaa !24
  %t172 = icmp sge i64 %t170, 0
  br i1 %t172, label %bb39, label %bb40
bb39:
  %t174 = load ptr, ptr %l2, !tbaa !29
  %t175 = getelementptr %"compiler/diag:Item", ptr %l16, i32 0, i32 2
  %t176 = load i64, ptr %t175, !tbaa !24
  %t179 = call { i64, ptr } @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eRealOfFile(ptr %v2, ptr %s4, ptr %t174, i64 %t176)
  store { i64, ptr } %t179, ptr %l94
  br label %bb41
bb40:
  %t180 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t182 = extractvalue { i64, ptr } %t180, 1
  %t183 = extractvalue { i64, ptr } %t180, 0
  %t184 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t183)
  call void @olang_textcopy(ptr %t184, ptr %t182, i64 %t183)
  %t185 = insertvalue { i64, ptr } undef, i64 %t183, 0
  %t186 = insertvalue { i64, ptr } %t185, ptr %t184, 1
  store { i64, ptr } %t186, ptr %l91, !tbaa !27
  br label %bb42
bb41:
  %t188 = load { i64, ptr }, ptr %l94, !tbaa !27
  store { i64, ptr } %t188, ptr %l91, !tbaa !27
  br label %bb42
bb42:
  %t189 = load { i64, ptr }, ptr %l91, !tbaa !27
  store { i64, ptr } %t189, ptr %l17, !tbaa !27
  %t190 = ptrtoint ptr %s4 to i64
  store i64 %t190, ptr %l97, !tbaa !24
  %t191 = load i1, ptr @olang_2esole_2ecompiler_2fsession_3aPositions_2e0
  br i1 %t191, label %bb43, label %bb44
bb43:
  %t193 = call ptr @__olang_region_make(ptr %s4)
  %t194 = ptrtoint ptr %t193 to i64
  store i64 %t194, ptr %l97, !tbaa !24
  br label %bb44
bb44:
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t196 = load ptr, ptr %l2, !tbaa !29
  %t197 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t198 = load i64, ptr %l97
  %t199 = inttoptr i64 %t198 to ptr
  %t203 = call { i64, ptr } @compiler_2flsp_2ecompiler_2flsp_3aworker_2etextOf(ptr %v0, ptr %v2, ptr %s4, ptr %t199, ptr %t195, ptr %t196, { i64, ptr } %t197)
  store { i64, ptr } %t203, ptr %l102
  br label %bb45
bb45:
  %t204 = load { i64, ptr }, ptr %l102, !tbaa !27
  %t205 = load i64, ptr %l97
  %t206 = inttoptr i64 %t205 to ptr
  %t207 = extractvalue { i64, ptr } %t204, 0
  %t208 = extractvalue { i64, ptr } %t204, 1
  %t209 = mul i64 %t207, 1
  %t210 = call ptr @__olang_scope_alloc(ptr %t206, i64 %t209)
  call void @llvm.memcpy.p0.p0.i64(ptr %t210, ptr %t208, i64 %t209, i1 false)
  %t211 = insertvalue { i64, ptr } undef, i64 %t207, 0
  %t212 = insertvalue { i64, ptr } %t211, ptr %t210, 1
  %t213 = load ptr, ptr %l0, !tbaa !29
  %t215 = getelementptr %"compiler/lsp:worker", ptr %t213, i32 0, i32 0
  %t216 = load ptr, ptr %t215, !tbaa !29
  %t218 = getelementptr %"compiler/lsp:Server", ptr %t216, i32 0, i32 2
  %t219 = load i1, ptr %t218, !tbaa !21
  %t222 = call %"compiler/session:Positions" @compiler_2fsession_3aPositions_2ector(ptr %s4, ptr %s4, { i64, ptr } %t212, i1 %t219)
  store %"compiler/session:Positions" %t222, ptr %l107
  br label %bb46
bb46:
  %t223 = load %"compiler/session:Positions", ptr %l107
  store %"compiler/session:Positions" %t223, ptr %l18
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s4, ptr %l9, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d125, i32 0, i32 1) })
  br label %bb47
bb47:
  store ptr %l9, ptr %l109, !tbaa !29
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t226 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t229 = call { i64, ptr } @compiler_2flsp_2ecompiler_2flsp_3aworker_2euriOf(ptr %v0, ptr %s4, ptr %s4, ptr %t225, { i64, ptr } %t226)
  store { i64, ptr } %t229, ptr %l112
  br label %bb48
bb48:
  %t230 = load { i64, ptr }, ptr %l112, !tbaa !27
  %t231 = extractvalue { i64, ptr } %t230, 0
  %t232 = extractvalue { i64, ptr } %t230, 1
  %t233 = mul i64 %t231, 1
  %t234 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t233)
  call void @llvm.memcpy.p0.p0.i64(ptr %t234, ptr %t232, i64 %t233, i1 false)
  %t235 = insertvalue { i64, ptr } undef, i64 %t231, 0
  %t236 = insertvalue { i64, ptr } %t235, ptr %t234, 1
  %t237 = load ptr, ptr %l109, !tbaa !29
  call void @compiler_2fsession_2eJsonStr(ptr %s0, ptr %s4, ptr %t237, { i64, ptr } %t236)
  br label %bb49
bb49:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s4, ptr %l9, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d126, i32 0, i32 1) })
  br label %bb50
bb50:
  %t240 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aworker_2erangeOf(ptr %v0, ptr %s0, ptr %s4, ptr %v4, ptr %t240, ptr %l9, ptr %l18, ptr %l16)
  br label %bb51
bb51:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s4, ptr %l9, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d127, i32 0, i32 1) })
  br label %bb52
bb52:
  store ptr %l9, ptr %l120, !tbaa !29
  %t246 = getelementptr %"compiler/diag:Item", ptr %l16, i32 0, i32 7
  %t247 = load i1, ptr %t246, !tbaa !21
  br i1 %t247, label %bb53, label %bb54
bb53:
  %t249 = getelementptr %"compiler/diag:Item", ptr %l16, i32 0, i32 6
  %t250 = load { i64, ptr }, ptr %t249, !tbaa !27
  %t251 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d128, i32 0, i32 1) }, 1
  %t252 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d128, i32 0, i32 1) }, 0
  %t254 = extractvalue { i64, ptr } %t250, 1
  %t255 = extractvalue { i64, ptr } %t250, 0
  %t256 = add i64 %t252, %t255
  %t257 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t256)
  call void @olang_textcopy(ptr %t257, ptr %t251, i64 %t252)
  %t258 = getelementptr i8, ptr %t257, i64 %t252
  call void @olang_textcopy(ptr %t258, ptr %t254, i64 %t255)
  %t259 = insertvalue { i64, ptr } undef, i64 %t256, 0
  %t260 = insertvalue { i64, ptr } %t259, ptr %t257, 1
  %t262 = extractvalue { i64, ptr } %t260, 0
  %t263 = extractvalue { i64, ptr } %t260, 1
  %t264 = mul i64 %t262, 1
  %t265 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t264)
  call void @llvm.memcpy.p0.p0.i64(ptr %t265, ptr %t263, i64 %t264, i1 false)
  %t266 = insertvalue { i64, ptr } undef, i64 %t262, 0
  %t267 = insertvalue { i64, ptr } %t266, ptr %t265, 1
  store { i64, ptr } %t267, ptr %l122, !tbaa !27
  br label %bb55
bb54:
  %t269 = getelementptr %"compiler/diag:Item", ptr %l16, i32 0, i32 6
  %t270 = load { i64, ptr }, ptr %t269, !tbaa !27
  store { i64, ptr } %t270, ptr %l122, !tbaa !27
  br label %bb55
bb55:
  %t272 = load ptr, ptr %l120, !tbaa !29
  %t273 = load { i64, ptr }, ptr %l122, !tbaa !27
  call void @compiler_2fsession_2eJsonStr(ptr %s0, ptr %v4, ptr %t272, { i64, ptr } %t273)
  br label %bb56
bb56:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l9, i8 125)
  br label %bb57
bb57:
  call void @__olang_scope_close(ptr %s4)
  br label %bb58
bb58:
  %t275 = load i64, ptr %l14, !tbaa !24
  %t277 = add i64 %t275, 1
  store i64 %t277, ptr %l14, !tbaa !24
  br label %bb26
bb59:
  %t280 = call i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %s0, ptr %l9)
  store i64 %t280, ptr %l131
  br label %bb60
bb60:
  %t281 = load i64, ptr %l131, !tbaa !24
  %t282 = icmp sgt i64 %t281, 0
  br i1 %t282, label %bb61, label %bb62
bb61:
  store %olang.scope zeroinitializer, ptr %s10
  %t284 = load ptr, ptr %l1, !tbaa !29
  store ptr %t284, ptr %l133, !tbaa !29
  %t286 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s10, ptr %l9)
  store { i64, ptr } %t286, ptr %l135
  br label %bb63
bb62:
  br label %bb65
bb63:
  %t287 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d129, i32 0, i32 1) }, 1
  %t288 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d129, i32 0, i32 1) }, 0
  %t289 = load { i64, ptr }, ptr %l135, !tbaa !27
  %t290 = extractvalue { i64, ptr } %t289, 1
  %t291 = extractvalue { i64, ptr } %t289, 0
  %t292 = add i64 %t288, %t291
  %t293 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d130, i32 0, i32 1) }, 1
  %t294 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d130, i32 0, i32 1) }, 0
  %t295 = add i64 %t292, %t294
  %t296 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t295)
  call void @olang_textcopy(ptr %t296, ptr %t287, i64 %t288)
  %t297 = getelementptr i8, ptr %t296, i64 %t288
  call void @olang_textcopy(ptr %t297, ptr %t290, i64 %t291)
  %t298 = getelementptr i8, ptr %t297, i64 %t291
  call void @olang_textcopy(ptr %t298, ptr %t293, i64 %t294)
  %t299 = insertvalue { i64, ptr } undef, i64 %t295, 0
  %t300 = insertvalue { i64, ptr } %t299, ptr %t296, 1
  %t302 = extractvalue { i64, ptr } %t300, 0
  %t303 = extractvalue { i64, ptr } %t300, 1
  %t304 = mul i64 %t302, 1
  %t305 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t304)
  call void @llvm.memcpy.p0.p0.i64(ptr %t305, ptr %t303, i64 %t304, i1 false)
  %t306 = insertvalue { i64, ptr } undef, i64 %t302, 0
  %t307 = insertvalue { i64, ptr } %t306, ptr %t305, 1
  %t308 = load ptr, ptr %l133, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s10, ptr %t308, { i64, ptr } %t307)
  br label %bb64
bb64:
  call void @__olang_scope_close(ptr %s10)
  br label %bb65
bb65:
  %t310 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t310, i8 125)
  br label %bb66
bb66:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2flsp_2ecompiler_2flsp_3aworker_2epublishAll(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, i64 %a1, ptr %a2, ptr %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca %"compiler/diag:Item"
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca ptr
  %l25 = alloca %"std/prelude/text:StringBuilder"
  %l26 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i64
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca i64
  %lp39 = alloca ptr
  %l40 = alloca ptr
  %l41 = alloca i64
  %l42 = alloca { i64, ptr }
  %l48 = alloca ptr
  %l49 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l50 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l52 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l54 = alloca i64
  %l58 = alloca i64
  %l61 = alloca i64
  %l81 = alloca %"compiler/diag:Item"
  %l86 = alloca { i64, ptr }
  %l89 = alloca { i64, ptr }
  %l94 = alloca i1
  %l95 = alloca i64
  %l99 = alloca { i64, ptr }
  %l101 = alloca { i64, ptr }
  %l104 = alloca i64
  %l108 = alloca i64
  %l111 = alloca i64
  %l131 = alloca { i64, ptr }
  %l133 = alloca i1
  %l141 = alloca ptr
  %l142 = alloca %"std/prelude/text:StringBuilder"
  %l144 = alloca i64
  %l148 = alloca ptr
  %l150 = alloca i64
  %l162 = alloca i64
  %l164 = alloca %"std/prelude/text:StringBuilder"
  %l166 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l168 = alloca i64
  %l172 = alloca i64
  %l175 = alloca i64
  %l195 = alloca { i64, ptr }
  %l198 = alloca i1
  %l201 = alloca %"std/prelude/text:StringBuilder"
  %l203 = alloca %"std/prelude/text:StringBuilder"
  %l204 = alloca %"std/prelude/text:StringBuilder"
  %l213 = alloca ptr
  %l215 = alloca { i64, ptr }
  %l217 = alloca { i64, ptr }
  %l220 = alloca { i64, ptr }
  %l223 = alloca i64
  %l227 = alloca i64
  %l230 = alloca i64
  %l250 = alloca { i64, ptr }
  %l253 = alloca i1
  %l254 = alloca i1
  %l255 = alloca ptr
  %l258 = alloca { i64, ptr }
  %l259 = alloca i1
  %l260 = alloca ptr
  %l263 = alloca { i64, ptr }
  %l264 = alloca { i64, ptr }
  %l265 = alloca ptr
  %l266 = alloca { i64, ptr }
  %l269 = alloca %"std/prelude/text:StringBuilder"
  %l271 = alloca %"std/prelude/text:StringBuilder"
  %l273 = alloca { i64, ptr }
  %l276 = alloca { i64, ptr }
  %l283 = alloca i64
  %l285 = alloca i64
  %l290 = alloca { i64, ptr }
  %l294 = alloca i1
  %l296 = alloca ptr
  %l298 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %s26 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lsp:worker", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/lsp:Server", ptr %t4, i32 0, i32 1
  %t10 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eAt__Ha6317692879988aa8c889b506af3dc4d(ptr %v0, ptr %v0, ptr %t6, i64 %a1)
  store ptr %t10, ptr %l48
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l48, !tbaa !29
  store ptr %t11, ptr %l5, !tbaa !29
  %t12 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t12, ptr %l49
  br label %bb2
bb2:
  %t13 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l49
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t13, ptr %l6
  %t14 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aStringBuilder_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l50
  br label %bb3
bb3:
  %t15 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l50
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %l7
  %t16 = load ptr, ptr %l3, !tbaa !29
  %t18 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eItems(ptr %v2, ptr %s0, ptr %t16)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t18, ptr %l52
  br label %bb4
bb4:
  %t19 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l52
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t19, ptr %l8
  store i64 0, ptr %l9, !tbaa !24
  %t21 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aItem_3e_2eLen_3ccompiler_2fdiag_3aItem_3e(ptr %s0, ptr %l8)
  store i64 %t21, ptr %l54
  br label %bb5
bb5:
  %t22 = load i64, ptr %l54, !tbaa !24
  store i64 %t22, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t23 = load i64, ptr %l10, !tbaa !24
  %t24 = load i64, ptr %l9, !tbaa !24
  %t27 = icmp sgt i64 %t23, %t24
  br i1 %t27, label %bb6, label %bb7
bb6:
  %t29 = load i64, ptr %l11, !tbaa !24
  %t31 = icmp sgt i64 %t29, 0
  br i1 %t31, label %bb8, label %bb9
bb7:
  store i64 0, ptr %l58, !tbaa !24
  br label %bb11
bb8:
  %t33 = load i64, ptr %l10, !tbaa !24
  %t34 = load i64, ptr %l9, !tbaa !24
  %t37 = sub i64 %t33, %t34
  %t38 = load i64, ptr %l11, !tbaa !24
  %t41 = add i64 %t37, %t38
  %t43 = sub i64 %t41, 1
  %t44 = load i64, ptr %l11, !tbaa !24
  %t47 = sdiv i64 %t43, %t44
  store i64 %t47, ptr %l61, !tbaa !24
  br label %bb10
bb9:
  store i64 0, ptr %l61, !tbaa !24
  br label %bb10
bb10:
  %t49 = load i64, ptr %l61, !tbaa !24
  store i64 %t49, ptr %l58, !tbaa !24
  br label %bb11
bb11:
  %t50 = load i64, ptr %l58, !tbaa !24
  store i64 %t50, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb12
bb12:
  store %olang.scope zeroinitializer, ptr %s2
  %t51 = load i64, ptr %l13, !tbaa !24
  %t52 = load i64, ptr %l12, !tbaa !24
  %t55 = icmp slt i64 %t51, %t52
  %t57 = xor i1 %t55, true
  br i1 %t57, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s2)
  br label %bb67
bb14:
  br label %bb15
bb15:
  %t59 = load i64, ptr %l9, !tbaa !24
  %t60 = load i64, ptr %l13, !tbaa !24
  %t61 = load i64, ptr %l11, !tbaa !24
  %t64 = mul i64 %t60, %t61
  %t67 = add i64 %t59, %t64
  store i64 %t67, ptr %l14, !tbaa !24
  %t69 = load i64, ptr %l14, !tbaa !24
  %t72 = call %"compiler/diag:Item" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aItem_3e_2eAt_3ccompiler_2fdiag_3aItem_3e(ptr %s0, ptr %s0, ptr %l8, i64 %t69)
  store %"compiler/diag:Item" %t72, ptr %l81
  br label %bb16
bb16:
  %t73 = load %"compiler/diag:Item", ptr %l81
  store %"compiler/diag:Item" %t73, ptr %l15
  %t74 = getelementptr %"compiler/diag:Item", ptr %l15, i32 0, i32 0
  %t75 = load i1, ptr %t74, !tbaa !21
  %t77 = xor i1 %t75, true
  br i1 %t77, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s2)
  br label %bb66
bb18:
  br label %bb19
bb19:
  %t79 = getelementptr %"compiler/diag:Item", ptr %l15, i32 0, i32 2
  %t80 = load i64, ptr %t79, !tbaa !24
  %t82 = icmp sge i64 %t80, 0
  br i1 %t82, label %bb20, label %bb21
bb20:
  %t84 = load ptr, ptr %l2, !tbaa !29
  %t85 = getelementptr %"compiler/diag:Item", ptr %l15, i32 0, i32 2
  %t86 = load i64, ptr %t85, !tbaa !24
  %t89 = call { i64, ptr } @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eRealOfFile(ptr %v1, ptr %s0, ptr %t84, i64 %t86)
  store { i64, ptr } %t89, ptr %l89
  br label %bb22
bb21:
  %t90 = load ptr, ptr %l5, !tbaa !29
  %t92 = getelementptr %"compiler/lsp:Doc", ptr %t90, i32 0, i32 2
  %t93 = load { i64, ptr }, ptr %t92, !tbaa !27
  %t95 = extractvalue { i64, ptr } %t93, 1
  %t96 = extractvalue { i64, ptr } %t93, 0
  %t97 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t96)
  call void @olang_textcopy(ptr %t97, ptr %t95, i64 %t96)
  %t98 = insertvalue { i64, ptr } undef, i64 %t96, 0
  %t99 = insertvalue { i64, ptr } %t98, ptr %t97, 1
  store { i64, ptr } %t99, ptr %l86, !tbaa !27
  br label %bb23
bb22:
  %t101 = load { i64, ptr }, ptr %l89, !tbaa !27
  store { i64, ptr } %t101, ptr %l86, !tbaa !27
  br label %bb23
bb23:
  %t102 = load { i64, ptr }, ptr %l86, !tbaa !27
  store { i64, ptr } %t102, ptr %l16, !tbaa !27
  %t103 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t105 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s2, { i64, ptr } %t103, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d131, i32 0, i32 1) })
  store i1 %t105, ptr %l94
  br label %bb24
bb24:
  %t106 = load i1, ptr %l94, !tbaa !21
  br i1 %t106, label %bb25, label %bb26
bb25:
  %t107 = ptrtoint ptr %s0 to i64
  store i64 %t107, ptr %l95, !tbaa !24
  %t108 = load i1, ptr @olang_2esole_2ecompiler__2flsp__2ecompiler__2flsp__3aworker__2epublishAll_2elocal_2e16
  br i1 %t108, label %bb27, label %bb28
bb26:
  br label %bb33
bb27:
  %t110 = call ptr @__olang_region_make(ptr %s0)
  %t111 = ptrtoint ptr %t110 to i64
  store i64 %t111, ptr %l95, !tbaa !24
  br label %bb28
bb28:
  %t112 = load ptr, ptr %l5, !tbaa !29
  %t114 = getelementptr %"compiler/lsp:Doc", ptr %t112, i32 0, i32 2
  %t115 = load { i64, ptr }, ptr %t114, !tbaa !27
  %t117 = extractvalue { i64, ptr } %t115, 1
  %t118 = extractvalue { i64, ptr } %t115, 0
  %t119 = load i64, ptr %l95
  %t120 = inttoptr i64 %t119 to ptr
  %t121 = call ptr @__olang_scope_alloc(ptr %t120, i64 %t118)
  call void @olang_textcopy(ptr %t121, ptr %t117, i64 %t118)
  %t122 = insertvalue { i64, ptr } undef, i64 %t118, 0
  %t123 = insertvalue { i64, ptr } %t122, ptr %t121, 1
  store { i64, ptr } %t123, ptr %l99, !tbaa !27
  %t124 = load i1, ptr @olang_2esole_2ecompiler__2flsp__2ecompiler__2flsp__3aworker__2epublishAll_2elocal_2e16
  br i1 %t124, label %bb29, label %bb30
bb29:
  %t126 = load i64, ptr %l95
  %t127 = inttoptr i64 %t126 to ptr
  %t128 = load { i64, ptr }, ptr %l99
  %t129 = extractvalue { i64, ptr } %t128, 1
  %t130 = call ptr @__olang_region_or(ptr %t129, ptr null)
  %t131 = icmp ne ptr %t130, null
  %t132 = select i1 %t131, ptr %t130, ptr null
  %t133 = icmp eq ptr %t132, %t127
  call void @__olang_region_settle(ptr %t127, i1 %t133)
  br label %bb30
bb30:
  %t134 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t134, ptr %l101, !tbaa !27
  %t135 = load { i64, ptr }, ptr %l99, !tbaa !27
  store { i64, ptr } %t135, ptr %l16, !tbaa !27
  %t136 = load i1, ptr @olang_2esole_2ecompiler__2flsp__2ecompiler__2flsp__3aworker__2epublishAll_2elocal_2e16
  br i1 %t136, label %bb31, label %bb32
bb31:
  %t138 = load { i64, ptr }, ptr %l101
  %t139 = extractvalue { i64, ptr } %t138, 1
  call void @__olang_region_release(ptr %t139)
  store { i64, ptr } zeroinitializer, ptr %l101
  br label %bb32
bb32:
  br label %bb33
bb33:
  store i64 -1, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  %t141 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l6)
  store i64 %t141, ptr %l104
  br label %bb34
bb34:
  %t142 = load i64, ptr %l104, !tbaa !24
  store i64 %t142, ptr %l19, !tbaa !24
  store i64 1, ptr %l20, !tbaa !24
  %t143 = load i64, ptr %l19, !tbaa !24
  %t144 = load i64, ptr %l18, !tbaa !24
  %t147 = icmp sgt i64 %t143, %t144
  br i1 %t147, label %bb35, label %bb36
bb35:
  %t149 = load i64, ptr %l20, !tbaa !24
  %t151 = icmp sgt i64 %t149, 0
  br i1 %t151, label %bb37, label %bb38
bb36:
  store i64 0, ptr %l108, !tbaa !24
  br label %bb40
bb37:
  %t153 = load i64, ptr %l19, !tbaa !24
  %t154 = load i64, ptr %l18, !tbaa !24
  %t157 = sub i64 %t153, %t154
  %t158 = load i64, ptr %l20, !tbaa !24
  %t161 = add i64 %t157, %t158
  %t163 = sub i64 %t161, 1
  %t164 = load i64, ptr %l20, !tbaa !24
  %t167 = sdiv i64 %t163, %t164
  store i64 %t167, ptr %l111, !tbaa !24
  br label %bb39
bb38:
  store i64 0, ptr %l111, !tbaa !24
  br label %bb39
bb39:
  %t169 = load i64, ptr %l111, !tbaa !24
  store i64 %t169, ptr %l108, !tbaa !24
  br label %bb40
bb40:
  %t170 = load i64, ptr %l108, !tbaa !24
  store i64 %t170, ptr %l21, !tbaa !24
  store i64 0, ptr %l22, !tbaa !24
  br label %bb41
bb41:
  %t171 = load i64, ptr %l22, !tbaa !24
  %t172 = load i64, ptr %l21, !tbaa !24
  %t175 = icmp slt i64 %t171, %t172
  %t177 = xor i1 %t175, true
  br i1 %t177, label %bb42, label %bb43
bb42:
  br label %bb51
bb43:
  br label %bb44
bb44:
  %t179 = load i64, ptr %l18, !tbaa !24
  %t180 = load i64, ptr %l22, !tbaa !24
  %t181 = load i64, ptr %l20, !tbaa !24
  %t184 = mul i64 %t180, %t181
  %t187 = add i64 %t179, %t184
  store i64 %t187, ptr %l23, !tbaa !24
  %t189 = load i64, ptr %l23, !tbaa !24
  %t192 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %l6, i64 %t189)
  store { i64, ptr } %t192, ptr %l131
  br label %bb45
bb45:
  %t193 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t194 = load { i64, ptr }, ptr %l131, !tbaa !27
  %t196 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t194, { i64, ptr } %t193)
  store i1 %t196, ptr %l133
  br label %bb46
bb46:
  %t197 = load i1, ptr %l133, !tbaa !21
  br i1 %t197, label %bb47, label %bb48
bb47:
  %t198 = load i64, ptr %l23, !tbaa !24
  store i64 %t198, ptr %l17, !tbaa !24
  br label %bb49
bb48:
  br label %bb49
bb49:
  br label %bb50
bb50:
  %t200 = load i64, ptr %l22, !tbaa !24
  %t202 = add i64 %t200, 1
  store i64 %t202, ptr %l22, !tbaa !24
  br label %bb41
bb51:
  %t204 = load i64, ptr %l17, !tbaa !24
  %t206 = icmp slt i64 %t204, 0
  br i1 %t206, label %bb52, label %bb53
bb52:
  store %olang.scope zeroinitializer, ptr %s11
  %t208 = load { i64, ptr }, ptr %l16, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l6, { i64, ptr } %t208)
  br label %bb54
bb53:
  br label %bb58
bb54:
  store ptr %l7, ptr %l141, !tbaa !29
  %t211 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s11)
  store %"std/prelude/text:StringBuilder" %t211, ptr %l142
  br label %bb55
bb55:
  %t212 = load ptr, ptr %l141, !tbaa !29
  %t213 = load %"std/prelude/text:StringBuilder", ptr %l142
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aStringBuilder_3_H619e677aa004466b5bd5bdbfda9f24c5(ptr %s0, ptr %s11, ptr %t212, %"std/prelude/text:StringBuilder" %t213)
  br label %bb56
bb56:
  %t215 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l6)
  store i64 %t215, ptr %l144
  br label %bb57
bb57:
  %t216 = load i64, ptr %l144, !tbaa !24
  %t217 = sub i64 %t216, 1
  store i64 %t217, ptr %l17, !tbaa !24
  call void @__olang_scope_close(ptr %s11)
  br label %bb58
bb58:
  %t219 = load i64, ptr %l17, !tbaa !24
  %t222 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aStringBuilder_3_Hf1ae1a5ebbb395c2e928aa8f7e1c7e01(ptr %s0, ptr %s0, ptr %l7, i64 %t219)
  store ptr %t222, ptr %l148
  br label %bb59
bb59:
  %t223 = load ptr, ptr %l148, !tbaa !29
  store ptr %t223, ptr %l24, !tbaa !29
  %t224 = load ptr, ptr %l24, !tbaa !29
  %t226 = call i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %s0, ptr %t224)
  store i64 %t226, ptr %l150
  br label %bb60
bb60:
  %t227 = load i64, ptr %l150, !tbaa !24
  %t228 = icmp sgt i64 %t227, 0
  br i1 %t228, label %bb61, label %bb62
bb61:
  %t230 = load ptr, ptr %l24, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %t230, i8 44)
  br label %bb63
bb62:
  br label %bb64
bb63:
  br label %bb64
bb64:
  %t232 = load ptr, ptr %l0, !tbaa !29
  %t233 = load ptr, ptr %l24, !tbaa !29
  %t234 = load ptr, ptr %l2, !tbaa !29
  %t235 = load ptr, ptr %l3, !tbaa !29
  %t236 = load i64, ptr %l14, !tbaa !24
  %t237 = load { i64, ptr }, ptr %l16, !tbaa !27
  call void @compiler_2flsp_2ecompiler_2flsp_3aworker_2ediagnostic(ptr %v0, ptr %s0, ptr %v1, ptr %v2, ptr %s0, ptr %s0, ptr %t232, ptr %t233, ptr %t234, ptr %t235, ptr %l8, i64 %t236, { i64, ptr } %t237)
  br label %bb65
bb65:
  call void @__olang_scope_close(ptr %s2)
  br label %bb66
bb66:
  %t245 = load i64, ptr %l13, !tbaa !24
  %t247 = add i64 %t245, 1
  store i64 %t247, ptr %l13, !tbaa !24
  br label %bb12
bb67:
  %t249 = ptrtoint ptr %s0 to i64
  store i64 %t249, ptr %l162, !tbaa !24
  %t250 = load i1, ptr @olang_2esole_2ecompiler__2flsp__2ecompiler__2flsp__3aworker__2epublishAll_2elocal_2e25
  br i1 %t250, label %bb68, label %bb69
bb68:
  %t252 = call ptr @__olang_region_make(ptr %s0)
  %t253 = ptrtoint ptr %t252 to i64
  store i64 %t253, ptr %l162, !tbaa !24
  br label %bb69
bb69:
  %t254 = load i64, ptr %l162
  %t255 = inttoptr i64 %t254 to ptr
  %t256 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %t255)
  store %"std/prelude/text:StringBuilder" %t256, ptr %l164
  br label %bb70
bb70:
  %t257 = load i1, ptr @olang_2esole_2ecompiler__2flsp__2ecompiler__2flsp__3aworker__2epublishAll_2elocal_2e25
  br i1 %t257, label %bb71, label %bb72
bb71:
  %t259 = load i64, ptr %l162
  %t260 = inttoptr i64 %t259 to ptr
  %t261 = getelementptr %"std/prelude/text:StringBuilder", ptr %l164, i32 0, i32 0
  %t262 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t261, i32 0, i32 0
  %t263 = load { i64, ptr }, ptr %t262
  %t264 = extractvalue { i64, ptr } %t263, 1
  %t265 = call ptr @__olang_region_or(ptr %t264, ptr null)
  %t266 = call ptr @__olang_region_home(ptr %t265)
  %t267 = icmp ne ptr %t266, null
  %t268 = select i1 %t267, ptr %t266, ptr null
  %t269 = icmp eq ptr %t268, %t260
  call void @__olang_region_settle(ptr %t260, i1 %t269)
  br label %bb72
bb72:
  %t270 = load %"std/prelude/text:StringBuilder", ptr %l164
  store %"std/prelude/text:StringBuilder" %t270, ptr %l25
  %t271 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v4, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t271, ptr %l166
  br label %bb73
bb73:
  %t272 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l166
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t272, ptr %l26
  store i64 0, ptr %l27, !tbaa !24
  %t274 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l6)
  store i64 %t274, ptr %l168
  br label %bb74
bb74:
  %t275 = load i64, ptr %l168, !tbaa !24
  store i64 %t275, ptr %l28, !tbaa !24
  store i64 1, ptr %l29, !tbaa !24
  %t276 = load i64, ptr %l28, !tbaa !24
  %t277 = load i64, ptr %l27, !tbaa !24
  %t280 = icmp sgt i64 %t276, %t277
  br i1 %t280, label %bb75, label %bb76
bb75:
  %t282 = load i64, ptr %l29, !tbaa !24
  %t284 = icmp sgt i64 %t282, 0
  br i1 %t284, label %bb77, label %bb78
bb76:
  store i64 0, ptr %l172, !tbaa !24
  br label %bb80
bb77:
  %t286 = load i64, ptr %l28, !tbaa !24
  %t287 = load i64, ptr %l27, !tbaa !24
  %t290 = sub i64 %t286, %t287
  %t291 = load i64, ptr %l29, !tbaa !24
  %t294 = add i64 %t290, %t291
  %t296 = sub i64 %t294, 1
  %t297 = load i64, ptr %l29, !tbaa !24
  %t300 = sdiv i64 %t296, %t297
  store i64 %t300, ptr %l175, !tbaa !24
  br label %bb79
bb78:
  store i64 0, ptr %l175, !tbaa !24
  br label %bb79
bb79:
  %t302 = load i64, ptr %l175, !tbaa !24
  store i64 %t302, ptr %l172, !tbaa !24
  br label %bb80
bb80:
  %t303 = load i64, ptr %l172, !tbaa !24
  store i64 %t303, ptr %l30, !tbaa !24
  store i64 0, ptr %l31, !tbaa !24
  br label %bb81
bb81:
  %t304 = load i64, ptr %l31, !tbaa !24
  %t305 = load i64, ptr %l30, !tbaa !24
  %t308 = icmp slt i64 %t304, %t305
  %t310 = xor i1 %t308, true
  br i1 %t310, label %bb82, label %bb83
bb82:
  br label %bb95
bb83:
  br label %bb84
bb84:
  %t312 = load i64, ptr %l27, !tbaa !24
  %t313 = load i64, ptr %l31, !tbaa !24
  %t314 = load i64, ptr %l29, !tbaa !24
  %t317 = mul i64 %t313, %t314
  %t320 = add i64 %t312, %t317
  store i64 %t320, ptr %l32, !tbaa !24
  %t322 = load i64, ptr %l32, !tbaa !24
  %t325 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %l6, i64 %t322)
  store { i64, ptr } %t325, ptr %l195
  br label %bb85
bb85:
  %t326 = load ptr, ptr %l5, !tbaa !29
  %t328 = getelementptr %"compiler/lsp:Doc", ptr %t326, i32 0, i32 2
  %t329 = load { i64, ptr }, ptr %t328, !tbaa !27
  %t330 = load { i64, ptr }, ptr %l195, !tbaa !27
  %t332 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %v0, { i64, ptr } %t330, { i64, ptr } %t329)
  store i1 %t332, ptr %l198
  br label %bb86
bb86:
  %t333 = load i1, ptr %l198, !tbaa !21
  br i1 %t333, label %bb87, label %bb88
bb87:
  %t334 = load i64, ptr %l32, !tbaa !24
  %t337 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aStringBuilder_3_H3391400cd512141e3398528b8c477a4f(ptr %s0, ptr %s0, ptr %l7, i64 %t334)
  store %"std/prelude/text:StringBuilder" %t337, ptr %l201
  br label %bb89
bb88:
  br label %bb93
bb89:
  %t339 = call %"std/prelude/text:StringBuilder" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2ftext_3aStringBuilder(ptr %s0, ptr %l201)
  store %"std/prelude/text:StringBuilder" %t339, ptr %l203
  br label %bb90
bb90:
  %t340 = load %"std/prelude/text:StringBuilder", ptr %l25
  store %"std/prelude/text:StringBuilder" %t340, ptr %l204
  %t341 = load %"std/prelude/text:StringBuilder", ptr %l203
  store %"std/prelude/text:StringBuilder" %t341, ptr %l25
  %t342 = load i1, ptr @olang_2esole_2ecompiler__2flsp__2ecompiler__2flsp__3aworker__2epublishAll_2elocal_2e25
  br i1 %t342, label %bb91, label %bb92
bb91:
  %t344 = getelementptr %"std/prelude/text:StringBuilder", ptr %l204, i32 0, i32 0
  %t345 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t344, i32 0, i32 0
  %t346 = load { i64, ptr }, ptr %t345
  %t347 = extractvalue { i64, ptr } %t346, 1
  %t348 = call ptr @__olang_region_or(ptr %t347, ptr null)
  %t349 = call ptr @__olang_region_home(ptr %t348)
  %t350 = icmp ne ptr %t349, null
  %t351 = select i1 %t350, ptr %t349, ptr null
  call void @__olang_region_drop(ptr %t351)
  store %"std/prelude/text:StringBuilder" zeroinitializer, ptr %l204
  br label %bb92
bb92:
  br label %bb93
bb93:
  br label %bb94
bb94:
  %t352 = load i64, ptr %l31, !tbaa !24
  %t354 = add i64 %t352, 1
  store i64 %t354, ptr %l31, !tbaa !24
  br label %bb81
bb95:
  %t356 = load ptr, ptr %l0, !tbaa !29
  %t357 = load ptr, ptr %l2, !tbaa !29
  %t358 = load ptr, ptr %l5, !tbaa !29
  %t360 = getelementptr %"compiler/lsp:Doc", ptr %t358, i32 0, i32 2
  %t361 = load { i64, ptr }, ptr %t360, !tbaa !27
  call void @compiler_2flsp_2ecompiler_2flsp_3aworker_2edeprecations(ptr %v0, ptr %s0, ptr %v1, ptr %v0, ptr %t356, ptr %l25, ptr %t357, { i64, ptr } %t361)
  br label %bb96
bb96:
  %t366 = load ptr, ptr %l0, !tbaa !29
  store ptr %t366, ptr %l213, !tbaa !29
  %t367 = load ptr, ptr %l5, !tbaa !29
  %t369 = getelementptr %"compiler/lsp:Doc", ptr %t367, i32 0, i32 0
  %t370 = load { i64, ptr }, ptr %t369, !tbaa !27
  store { i64, ptr } %t370, ptr %l215, !tbaa !27
  %t372 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %l25)
  store { i64, ptr } %t372, ptr %l217
  br label %bb97
bb97:
  %t373 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d132, i32 0, i32 1) }, 1
  %t374 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d132, i32 0, i32 1) }, 0
  %t375 = load { i64, ptr }, ptr %l217, !tbaa !27
  %t376 = extractvalue { i64, ptr } %t375, 1
  %t377 = extractvalue { i64, ptr } %t375, 0
  %t378 = add i64 %t374, %t377
  %t379 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d133, i32 0, i32 1) }, 1
  %t380 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d133, i32 0, i32 1) }, 0
  %t381 = add i64 %t378, %t380
  %t382 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t381)
  call void @olang_textcopy(ptr %t382, ptr %t373, i64 %t374)
  %t383 = getelementptr i8, ptr %t382, i64 %t374
  call void @olang_textcopy(ptr %t383, ptr %t376, i64 %t377)
  %t384 = getelementptr i8, ptr %t383, i64 %t377
  call void @olang_textcopy(ptr %t384, ptr %t379, i64 %t380)
  %t385 = insertvalue { i64, ptr } undef, i64 %t381, 0
  %t386 = insertvalue { i64, ptr } %t385, ptr %t382, 1
  %t388 = extractvalue { i64, ptr } %t386, 0
  %t389 = extractvalue { i64, ptr } %t386, 1
  %t390 = mul i64 %t388, 1
  %t391 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t390)
  call void @llvm.memcpy.p0.p0.i64(ptr %t391, ptr %t389, i64 %t390, i1 false)
  %t392 = insertvalue { i64, ptr } undef, i64 %t388, 0
  %t393 = insertvalue { i64, ptr } %t392, ptr %t391, 1
  %t394 = load { i64, ptr }, ptr %l215, !tbaa !27
  %t396 = call { i64, ptr } @compiler_2flsp_2epublish(ptr %v0, ptr %s0, ptr %s0, { i64, ptr } %t394, { i64, ptr } %t393)
  store { i64, ptr } %t396, ptr %l220
  br label %bb98
bb98:
  %t397 = load { i64, ptr }, ptr %l220, !tbaa !27
  %t398 = extractvalue { i64, ptr } %t397, 0
  %t399 = extractvalue { i64, ptr } %t397, 1
  %t400 = mul i64 %t398, 1
  %t401 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t400)
  call void @llvm.memcpy.p0.p0.i64(ptr %t401, ptr %t399, i64 %t400, i1 false)
  %t402 = insertvalue { i64, ptr } undef, i64 %t398, 0
  %t403 = insertvalue { i64, ptr } %t402, ptr %t401, 1
  %t404 = load ptr, ptr %l213, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aworker_2esend(ptr %v0, ptr %s0, ptr %t404, { i64, ptr } %t403)
  br label %bb99
bb99:
  store i64 0, ptr %l33, !tbaa !24
  %t407 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l6)
  store i64 %t407, ptr %l223
  br label %bb100
bb100:
  %t408 = load i64, ptr %l223, !tbaa !24
  store i64 %t408, ptr %l34, !tbaa !24
  store i64 1, ptr %l35, !tbaa !24
  %t409 = load i64, ptr %l34, !tbaa !24
  %t410 = load i64, ptr %l33, !tbaa !24
  %t413 = icmp sgt i64 %t409, %t410
  br i1 %t413, label %bb101, label %bb102
bb101:
  %t415 = load i64, ptr %l35, !tbaa !24
  %t417 = icmp sgt i64 %t415, 0
  br i1 %t417, label %bb103, label %bb104
bb102:
  store i64 0, ptr %l227, !tbaa !24
  br label %bb106
bb103:
  %t419 = load i64, ptr %l34, !tbaa !24
  %t420 = load i64, ptr %l33, !tbaa !24
  %t423 = sub i64 %t419, %t420
  %t424 = load i64, ptr %l35, !tbaa !24
  %t427 = add i64 %t423, %t424
  %t429 = sub i64 %t427, 1
  %t430 = load i64, ptr %l35, !tbaa !24
  %t433 = sdiv i64 %t429, %t430
  store i64 %t433, ptr %l230, !tbaa !24
  br label %bb105
bb104:
  store i64 0, ptr %l230, !tbaa !24
  br label %bb105
bb105:
  %t435 = load i64, ptr %l230, !tbaa !24
  store i64 %t435, ptr %l227, !tbaa !24
  br label %bb106
bb106:
  %t436 = load i64, ptr %l227, !tbaa !24
  store i64 %t436, ptr %l36, !tbaa !24
  store i64 0, ptr %l37, !tbaa !24
  br label %bb107
bb107:
  store %olang.scope zeroinitializer, ptr %s20
  %t437 = load i64, ptr %l37, !tbaa !24
  %t438 = load i64, ptr %l36, !tbaa !24
  %t441 = icmp slt i64 %t437, %t438
  %t443 = xor i1 %t441, true
  br i1 %t443, label %bb108, label %bb109
bb108:
  call void @__olang_scope_close(ptr %s20)
  br label %bb130
bb109:
  br label %bb110
bb110:
  %t445 = load i64, ptr %l33, !tbaa !24
  %t446 = load i64, ptr %l37, !tbaa !24
  %t447 = load i64, ptr %l35, !tbaa !24
  %t450 = mul i64 %t446, %t447
  %t453 = add i64 %t445, %t450
  store i64 %t453, ptr %l38, !tbaa !24
  %t455 = load i64, ptr %l38, !tbaa !24
  %t458 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %l6, i64 %t455)
  store { i64, ptr } %t458, ptr %l250
  br label %bb111
bb111:
  %t459 = load ptr, ptr %l5, !tbaa !29
  %t461 = getelementptr %"compiler/lsp:Doc", ptr %t459, i32 0, i32 2
  %t462 = load { i64, ptr }, ptr %t461, !tbaa !27
  %t463 = load { i64, ptr }, ptr %l250, !tbaa !27
  %t465 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %v0, { i64, ptr } %t463, { i64, ptr } %t462)
  store i1 %t465, ptr %l253
  br label %bb112
bb112:
  %t466 = load i1, ptr %l253, !tbaa !21
  br i1 %t466, label %bb113, label %bb114
bb113:
  store i1 true, ptr %l254, !tbaa !21
  br label %bb117
bb114:
  %t467 = load ptr, ptr %l0, !tbaa !29
  store ptr %t467, ptr %l255, !tbaa !29
  %t468 = load i64, ptr %l38, !tbaa !24
  %t471 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %l6, i64 %t468)
  store { i64, ptr } %t471, ptr %l258
  br label %bb115
bb115:
  %t472 = load ptr, ptr %l255, !tbaa !29
  %t473 = load { i64, ptr }, ptr %l258, !tbaa !27
  %t474 = call i1 @compiler_2flsp_2ecompiler_2flsp_3aworker_2eslotPending(ptr %v0, ptr %s0, ptr %t472, { i64, ptr } %t473)
  store i1 %t474, ptr %l259
  br label %bb116
bb116:
  %t475 = load i1, ptr %l259, !tbaa !21
  store i1 %t475, ptr %l254, !tbaa !21
  br label %bb117
bb117:
  %t476 = load i1, ptr %l254, !tbaa !21
  br i1 %t476, label %bb118, label %bb119
bb118:
  call void @__olang_scope_close(ptr %s20)
  br label %bb129
bb119:
  br label %bb120
bb120:
  %t477 = load ptr, ptr %l0, !tbaa !29
  store ptr %t477, ptr %l260, !tbaa !29
  %t478 = load i64, ptr %l38, !tbaa !24
  %t481 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %l6, i64 %t478)
  store { i64, ptr } %t481, ptr %l263
  br label %bb121
bb121:
  %t482 = load ptr, ptr %l260, !tbaa !29
  %t483 = load { i64, ptr }, ptr %l263, !tbaa !27
  %t484 = call { i64, ptr } @compiler_2flsp_2ecompiler_2flsp_3aworker_2euriOf(ptr %v0, ptr %s0, ptr %v4, ptr %t482, { i64, ptr } %t483)
  store { i64, ptr } %t484, ptr %l264
  br label %bb122
bb122:
  %t485 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 16, i64 8)
  store ptr %t485, ptr %lp39
  %t486 = load { i64, ptr }, ptr %l264, !tbaa !27
  %t487 = load ptr, ptr %lp39
  store { i64, ptr } %t486, ptr %t487, !tbaa !27
  %t488 = load ptr, ptr %l0, !tbaa !29
  store ptr %t488, ptr %l265, !tbaa !29
  %t489 = load ptr, ptr %lp39
  %t490 = load { i64, ptr }, ptr %t489, !tbaa !27
  store { i64, ptr } %t490, ptr %l266, !tbaa !27
  %t491 = load i64, ptr %l38, !tbaa !24
  %t494 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aStringBuilder_3_H3391400cd512141e3398528b8c477a4f(ptr %s0, ptr %s0, ptr %l7, i64 %t491)
  store %"std/prelude/text:StringBuilder" %t494, ptr %l269
  br label %bb123
bb123:
  %t496 = call %"std/prelude/text:StringBuilder" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2ftext_3aStringBuilder(ptr %s20, ptr %l269)
  store %"std/prelude/text:StringBuilder" %t496, ptr %l271
  br label %bb124
bb124:
  %t498 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s20, ptr %l271)
  store { i64, ptr } %t498, ptr %l273
  br label %bb125
bb125:
  %t499 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d134, i32 0, i32 1) }, 1
  %t500 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d134, i32 0, i32 1) }, 0
  %t501 = load { i64, ptr }, ptr %l273, !tbaa !27
  %t502 = extractvalue { i64, ptr } %t501, 1
  %t503 = extractvalue { i64, ptr } %t501, 0
  %t504 = add i64 %t500, %t503
  %t505 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d135, i32 0, i32 1) }, 1
  %t506 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d135, i32 0, i32 1) }, 0
  %t507 = add i64 %t504, %t506
  %t508 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t507)
  call void @olang_textcopy(ptr %t508, ptr %t499, i64 %t500)
  %t509 = getelementptr i8, ptr %t508, i64 %t500
  call void @olang_textcopy(ptr %t509, ptr %t502, i64 %t503)
  %t510 = getelementptr i8, ptr %t509, i64 %t503
  call void @olang_textcopy(ptr %t510, ptr %t505, i64 %t506)
  %t511 = insertvalue { i64, ptr } undef, i64 %t507, 0
  %t512 = insertvalue { i64, ptr } %t511, ptr %t508, 1
  %t514 = extractvalue { i64, ptr } %t512, 0
  %t515 = extractvalue { i64, ptr } %t512, 1
  %t516 = mul i64 %t514, 1
  %t517 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t516)
  call void @llvm.memcpy.p0.p0.i64(ptr %t517, ptr %t515, i64 %t516, i1 false)
  %t518 = insertvalue { i64, ptr } undef, i64 %t514, 0
  %t519 = insertvalue { i64, ptr } %t518, ptr %t517, 1
  %t520 = load { i64, ptr }, ptr %l266, !tbaa !27
  %t522 = call { i64, ptr } @compiler_2flsp_2epublish(ptr %v4, ptr %s20, ptr %s20, { i64, ptr } %t520, { i64, ptr } %t519)
  store { i64, ptr } %t522, ptr %l276
  br label %bb126
bb126:
  %t523 = load { i64, ptr }, ptr %l276, !tbaa !27
  %t524 = extractvalue { i64, ptr } %t523, 0
  %t525 = extractvalue { i64, ptr } %t523, 1
  %t526 = mul i64 %t524, 1
  %t527 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t526)
  call void @llvm.memcpy.p0.p0.i64(ptr %t527, ptr %t525, i64 %t526, i1 false)
  %t528 = insertvalue { i64, ptr } undef, i64 %t524, 0
  %t529 = insertvalue { i64, ptr } %t528, ptr %t527, 1
  %t530 = load ptr, ptr %l265, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aworker_2esend(ptr %v0, ptr %s20, ptr %t530, { i64, ptr } %t529)
  br label %bb127
bb127:
  %t532 = load ptr, ptr %lp39
  %t533 = load { i64, ptr }, ptr %t532, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v4, ptr %v4, ptr %l26, { i64, ptr } %t533)
  br label %bb128
bb128:
  call void @__olang_scope_close(ptr %s20)
  br label %bb129
bb129:
  %t536 = load i64, ptr %l37, !tbaa !24
  %t538 = add i64 %t536, 1
  store i64 %t538, ptr %l37, !tbaa !24
  br label %bb107
bb130:
  store ptr %a4, ptr %l40, !tbaa !29
  store i64 0, ptr %l41, !tbaa !24
  br label %bb131
bb131:
  %t542 = load i64, ptr %l41, !tbaa !24
  store i64 %t542, ptr %l283, !tbaa !24
  %t543 = load ptr, ptr %l40, !tbaa !29
  %t545 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v3, ptr %t543)
  store i64 %t545, ptr %l285
  br label %bb132
bb132:
  %t546 = load i64, ptr %l283, !tbaa !24
  %t547 = load i64, ptr %l285, !tbaa !24
  %t548 = icmp slt i64 %t546, %t547
  %t550 = xor i1 %t548, true
  br i1 %t550, label %bb133, label %bb134
bb133:
  br label %bb144
bb134:
  br label %bb135
bb135:
  %t552 = load ptr, ptr %l40, !tbaa !29
  %t553 = load i64, ptr %l41, !tbaa !24
  %t556 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v3, ptr %v3, ptr %t552, i64 %t553)
  store { i64, ptr } %t556, ptr %l290
  br label %bb136
bb136:
  %t557 = load { i64, ptr }, ptr %l290, !tbaa !27
  store { i64, ptr } %t557, ptr %l42, !tbaa !27
  %t558 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t563 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H0127831368543eff3b7740d7d3240080(ptr %v4, ptr %v3, ptr %l26, { i64, ptr } %t558)
  store i1 %t563, ptr %l294
  br label %bb137
bb137:
  %t564 = load i1, ptr %l294, !tbaa !21
  %t565 = xor i1 %t564, true
  br i1 %t565, label %bb138, label %bb139
bb138:
  store %olang.scope zeroinitializer, ptr %s26
  %t567 = load ptr, ptr %l0, !tbaa !29
  store ptr %t567, ptr %l296, !tbaa !29
  %t568 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t570 = call { i64, ptr } @compiler_2flsp_2epublish(ptr %v3, ptr %s26, ptr %s26, { i64, ptr } %t568, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d136, i32 0, i32 1) })
  store { i64, ptr } %t570, ptr %l298
  br label %bb140
bb139:
  br label %bb142
bb140:
  %t571 = load { i64, ptr }, ptr %l298, !tbaa !27
  %t572 = extractvalue { i64, ptr } %t571, 0
  %t573 = extractvalue { i64, ptr } %t571, 1
  %t574 = mul i64 %t572, 1
  %t575 = call ptr @__olang_scope_alloc(ptr %s26, i64 %t574)
  call void @llvm.memcpy.p0.p0.i64(ptr %t575, ptr %t573, i64 %t574, i1 false)
  %t576 = insertvalue { i64, ptr } undef, i64 %t572, 0
  %t577 = insertvalue { i64, ptr } %t576, ptr %t575, 1
  %t578 = load ptr, ptr %l296, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aworker_2esend(ptr %v0, ptr %s26, ptr %t578, { i64, ptr } %t577)
  br label %bb141
bb141:
  call void @__olang_scope_close(ptr %s26)
  br label %bb142
bb142:
  br label %bb143
bb143:
  %t580 = load i64, ptr %l41, !tbaa !24
  %t582 = add i64 %t580, 1
  store i64 %t582, ptr %l41, !tbaa !24
  br label %bb131
bb144:
  %t584 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l26
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t584, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local void @compiler_2flsp_2ecompiler_2flsp_3aworker_2erangeOf(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l11 = alloca i64
  %l17 = alloca i64
  %l25 = alloca i64
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l3, !tbaa !29
  %t3 = getelementptr %"compiler/diag:Item", ptr %t1, i32 0, i32 3
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp sge i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  store ptr %a2, ptr %l8, !tbaa !29
  %t9 = load ptr, ptr %l1, !tbaa !29
  store ptr %t9, ptr %l9, !tbaa !29
  %t10 = load ptr, ptr %l3, !tbaa !29
  %t12 = getelementptr %"compiler/diag:Item", ptr %t10, i32 0, i32 3
  %t13 = load i64, ptr %t12, !tbaa !24
  store i64 %t13, ptr %l11, !tbaa !24
  %t14 = load ptr, ptr %l3, !tbaa !29
  %t16 = getelementptr %"compiler/diag:Item", ptr %t14, i32 0, i32 4
  %t17 = load i64, ptr %t16, !tbaa !24
  %t18 = load ptr, ptr %l3, !tbaa !29
  %t20 = getelementptr %"compiler/diag:Item", ptr %t18, i32 0, i32 3
  %t21 = load i64, ptr %t20, !tbaa !24
  %t24 = icmp sgt i64 %t17, %t21
  br i1 %t24, label %bb3, label %bb4
bb2:
  br label %bb7
bb3:
  %t26 = load ptr, ptr %l3, !tbaa !29
  %t28 = getelementptr %"compiler/diag:Item", ptr %t26, i32 0, i32 4
  %t29 = load i64, ptr %t28, !tbaa !24
  store i64 %t29, ptr %l17, !tbaa !24
  br label %bb5
bb4:
  %t31 = load ptr, ptr %l3, !tbaa !29
  %t33 = getelementptr %"compiler/diag:Item", ptr %t31, i32 0, i32 3
  %t34 = load i64, ptr %t33, !tbaa !24
  store i64 %t34, ptr %l17, !tbaa !24
  br label %bb5
bb5:
  %t36 = load ptr, ptr %l8, !tbaa !29
  %t37 = load ptr, ptr %l9, !tbaa !29
  %t38 = load i64, ptr %l11, !tbaa !24
  %t39 = load i64, ptr %l17, !tbaa !24
  call void @compiler_2fsession_2ecompiler_2fsession_3aPositions_2eRange(ptr %v2, ptr %v1, ptr %t36, ptr %t37, i64 %t38, i64 %t39)
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb7:
  %t40 = load ptr, ptr %l3, !tbaa !29
  %t42 = getelementptr %"compiler/diag:Item", ptr %t40, i32 0, i32 5
  %t43 = load i64, ptr %t42, !tbaa !24
  %t45 = icmp sgt i64 %t43, 0
  br i1 %t45, label %bb8, label %bb9
bb8:
  %t47 = load ptr, ptr %l3, !tbaa !29
  %t49 = getelementptr %"compiler/diag:Item", ptr %t47, i32 0, i32 5
  %t50 = load i64, ptr %t49, !tbaa !24
  %t52 = sub i64 %t50, 1
  store i64 %t52, ptr %l25, !tbaa !24
  br label %bb10
bb9:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb10
bb10:
  %t54 = load i64, ptr %l25, !tbaa !24
  store i64 %t54, ptr %l4, !tbaa !24
  %t55 = load ptr, ptr %l1, !tbaa !29
  %t56 = load i64, ptr %l4, !tbaa !24
  %t57 = load i64, ptr %l4, !tbaa !24
  %t58 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d137, i32 0, i32 1) }, 1
  %t59 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d137, i32 0, i32 1) }, 0
  %t61 = call i64 @__olang_fmt_i64(ptr null, i64 %t56)
  %t62 = add i64 %t59, %t61
  %t63 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d138, i32 0, i32 1) }, 1
  %t64 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d138, i32 0, i32 1) }, 0
  %t65 = add i64 %t62, %t64
  %t67 = call i64 @__olang_fmt_i64(ptr null, i64 %t57)
  %t68 = add i64 %t65, %t67
  %t69 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d139, i32 0, i32 1) }, 1
  %t70 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d139, i32 0, i32 1) }, 0
  %t71 = add i64 %t68, %t70
  %t72 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t71)
  call void @olang_textcopy(ptr %t72, ptr %t58, i64 %t59)
  %t73 = getelementptr i8, ptr %t72, i64 %t59
  %t74 = call i64 @__olang_fmt_i64(ptr %t73, i64 %t56)
  %t75 = getelementptr i8, ptr %t73, i64 %t61
  call void @olang_textcopy(ptr %t75, ptr %t63, i64 %t64)
  %t76 = getelementptr i8, ptr %t75, i64 %t64
  %t77 = call i64 @__olang_fmt_i64(ptr %t76, i64 %t57)
  %t78 = getelementptr i8, ptr %t76, i64 %t67
  call void @olang_textcopy(ptr %t78, ptr %t69, i64 %t70)
  %t79 = insertvalue { i64, ptr } undef, i64 %t71, 0
  %t80 = insertvalue { i64, ptr } %t79, ptr %t72, 1
  %t82 = extractvalue { i64, ptr } %t80, 0
  %t83 = extractvalue { i64, ptr } %t80, 1
  %t84 = mul i64 %t82, 1
  %t85 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t84)
  call void @llvm.memcpy.p0.p0.i64(ptr %t85, ptr %t83, i64 %t84, i1 false)
  %t86 = insertvalue { i64, ptr } undef, i64 %t82, 0
  %t87 = insertvalue { i64, ptr } %t86, ptr %t85, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s0, ptr %t55, { i64, ptr } %t87)
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flsp_2ecompiler_2flsp_3aworker_2esend(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/lsp:worker", ptr %a0, i32 0, i32 3
  %t4 = load i32, ptr %t3, !tbaa !23
  call void @compiler_2fsession_2eWriteFramed(ptr %v1, i32 %t4, { i64, ptr } %a1)
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2flsp_2ecompiler_2flsp_3aworker_2eslotPending(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l8 = alloca i64
  %l10 = alloca i64
  %l15 = alloca i64
  %l20 = alloca ptr
  %l24 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lsp:worker", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/lsp:Server", ptr %t4, i32 0, i32 4
  store ptr %t6, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t8 = load i64, ptr %l3, !tbaa !24
  store i64 %t8, ptr %l8, !tbaa !24
  %t9 = load ptr, ptr %l2, !tbaa !29
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t9)
  store i64 %t11, ptr %l10
  br label %bb2
bb2:
  %t12 = load i64, ptr %l8, !tbaa !24
  %t13 = load i64, ptr %l10, !tbaa !24
  %t14 = icmp slt i64 %t12, %t13
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb3, label %bb4
bb3:
  br label %bb13
bb4:
  br label %bb5
bb5:
  %t18 = load ptr, ptr %l2, !tbaa !29
  %t19 = load i64, ptr %l3, !tbaa !24
  %t22 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t18, i64 %t19)
  store i64 %t22, ptr %l15
  br label %bb6
bb6:
  %t23 = load i64, ptr %l15, !tbaa !24
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/lsp:worker", ptr %t24, i32 0, i32 0
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t29 = getelementptr %"compiler/lsp:Server", ptr %t27, i32 0, i32 1
  %t33 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eAt__Ha6317692879988aa8c889b506af3dc4d(ptr %v0, ptr %v0, ptr %t29, i64 %t23)
  store ptr %t33, ptr %l20
  br label %bb7
bb7:
  %t34 = load ptr, ptr %l20, !tbaa !29
  %t36 = getelementptr %"compiler/lsp:Doc", ptr %t34, i32 0, i32 2
  %t37 = load { i64, ptr }, ptr %t36, !tbaa !27
  %t41 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %t37, { i64, ptr } %a1)
  store i1 %t41, ptr %l24
  br label %bb8
bb8:
  %t42 = load i1, ptr %l24, !tbaa !21
  br i1 %t42, label %bb9, label %bb10
bb9:
  store i1 true, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t44 = load i64, ptr %l3, !tbaa !24
  %t46 = add i64 %t44, 1
  store i64 %t46, ptr %l3, !tbaa !24
  br label %bb1
bb13:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2flsp_2ecompiler_2flsp_3aworker_2etextOf(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, ptr } %a2) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca i32
  %l12 = alloca i1
  %l18 = alloca i64
  %l21 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l28 = alloca i64
  %l29 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"compiler/lsp:worker", ptr %a0, i32 0, i32 4
  %t4 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t7 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha4444909f5ef14f7626d25b8f59e6ba2(ptr %v0, ptr %v2, ptr %v0, ptr %t3, { i64, ptr } %t4)
  %t8 = extractvalue { i32, { i64, ptr } } %t7, 1
  %t9 = extractvalue { i32, { i64, ptr } } %t7, 0
  store i32 %t9, ptr %l10
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store { i64, ptr } %t8, ptr %l9
  br label %bb1
bb1:
  %t12 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t12, ptr %l5, !tbaa !27
  br label %bb4
bb2:
  br label %bb3
bb3:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d140, i32 0, i32 1) }, ptr %l5, !tbaa !27
  br label %bb4
bb4:
  %t13 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t13, ptr %l3, !tbaa !27
  %t14 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t16 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t14, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d141, i32 0, i32 1) })
  store i1 %t16, ptr %l12
  br label %bb5
bb5:
  %t17 = load i1, ptr %l12, !tbaa !21
  %t18 = xor i1 %t17, true
  br i1 %t18, label %bb6, label %bb7
bb6:
  %t20 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t22 = extractvalue { i64, ptr } %t20, 1
  %t23 = extractvalue { i64, ptr } %t20, 0
  %t24 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t23)
  call void @olang_textcopy(ptr %t24, ptr %t22, i64 %t23)
  %t25 = insertvalue { i64, ptr } undef, i64 %t23, 0
  %t26 = insertvalue { i64, ptr } %t25, ptr %t24, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t26, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t28 = load ptr, ptr %l1, !tbaa !29
  %t29 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t32 = call i64 @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eModuleOf(ptr %v1, ptr %v2, ptr %t28, { i64, ptr } %t29)
  store i64 %t32, ptr %l18
  br label %bb9
bb9:
  %t33 = load i64, ptr %l18, !tbaa !24
  store i64 %t33, ptr %l4, !tbaa !24
  %t34 = load i64, ptr %l4, !tbaa !24
  %t36 = icmp sge i64 %t34, 0
  br i1 %t36, label %bb10, label %bb11
bb10:
  %t38 = load ptr, ptr %l1, !tbaa !29
  %t39 = load i64, ptr %l4, !tbaa !24
  %t42 = call { i64, ptr } @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eTextOf(ptr %v1, ptr %s0, ptr %t38, i64 %t39)
  store { i64, ptr } %t42, ptr %l24
  br label %bb12
bb11:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d142, i32 0, i32 1) }, ptr %l26, !tbaa !27
  %t43 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t43, ptr %l21, !tbaa !27
  br label %bb13
bb12:
  %t45 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t46 = extractvalue { i64, ptr } %t45, 1
  %t47 = extractvalue { i64, ptr } %t45, 0
  %t48 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t47)
  call void @olang_textcopy(ptr %t48, ptr %t46, i64 %t47)
  %t49 = insertvalue { i64, ptr } undef, i64 %t47, 0
  %t50 = insertvalue { i64, ptr } %t49, ptr %t48, 1
  store { i64, ptr } %t50, ptr %l21, !tbaa !27
  br label %bb13
bb13:
  %t52 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t53 = extractvalue { i64, ptr } %t52, 0
  store i64 %t53, ptr %l28, !tbaa !24
  %t54 = load i64, ptr %l28, !tbaa !24
  %t55 = mul i64 %t54, 1
  %t56 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t55)
  %t57 = insertvalue { i64, ptr } undef, i64 %t54, 0
  %t58 = insertvalue { i64, ptr } %t57, ptr %t56, 1
  store { i64, ptr } %t58, ptr %l29, !tbaa !27
  %t59 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !27
  %t61 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !27
  %t63 = load i64, ptr %l28, !tbaa !24
  %t64 = mul i64 %t63, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t60, ptr %t62, i64 %t64, i1 false)
  %t65 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t65, ptr %l21, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t66 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t66, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2flsp_2ecompiler_2flsp_3aworker_2euriOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca ptr
  %l8 = alloca i64
  %l10 = alloca i64
  %l15 = alloca ptr
  %l18 = alloca i1
  %l22 = alloca i1
  %l29 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/lsp:worker", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/lsp:Server", ptr %t4, i32 0, i32 1
  store ptr %t6, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t8 = load i64, ptr %l3, !tbaa !24
  store i64 %t8, ptr %l8, !tbaa !24
  %t9 = load ptr, ptr %l2, !tbaa !29
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eLen_Ha7d56d00f5631ac8d39ace71211767ab(ptr %v0, ptr %t9)
  store i64 %t11, ptr %l10
  br label %bb2
bb2:
  %t12 = load i64, ptr %l8, !tbaa !24
  %t13 = load i64, ptr %l10, !tbaa !24
  %t14 = icmp slt i64 %t12, %t13
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb3, label %bb4
bb3:
  br label %bb15
bb4:
  br label %bb5
bb5:
  %t18 = load ptr, ptr %l2, !tbaa !29
  %t19 = load i64, ptr %l3, !tbaa !24
  %t22 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eAt__Ha6317692879988aa8c889b506af3dc4d(ptr %v0, ptr %v0, ptr %t18, i64 %t19)
  store ptr %t22, ptr %l15
  br label %bb6
bb6:
  %t23 = load ptr, ptr %l15, !tbaa !29
  store ptr %t23, ptr %l4, !tbaa !29
  %t24 = load ptr, ptr %l4, !tbaa !29
  %t26 = getelementptr %"compiler/lsp:Doc", ptr %t24, i32 0, i32 4
  %t27 = load i1, ptr %t26, !tbaa !21
  br i1 %t27, label %bb7, label %bb8
bb7:
  %t29 = load ptr, ptr %l4, !tbaa !29
  %t31 = getelementptr %"compiler/lsp:Doc", ptr %t29, i32 0, i32 2
  %t32 = load { i64, ptr }, ptr %t31, !tbaa !27
  %t33 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t36 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %t32, { i64, ptr } %t33)
  store i1 %t36, ptr %l22
  br label %bb9
bb8:
  store i1 false, ptr %l18, !tbaa !21
  br label %bb10
bb9:
  %t37 = load i1, ptr %l22, !tbaa !21
  store i1 %t37, ptr %l18, !tbaa !21
  br label %bb10
bb10:
  %t38 = load i1, ptr %l18, !tbaa !21
  br i1 %t38, label %bb11, label %bb12
bb11:
  %t39 = load ptr, ptr %l4, !tbaa !29
  %t41 = getelementptr %"compiler/lsp:Doc", ptr %t39, i32 0, i32 0
  %t42 = load { i64, ptr }, ptr %t41, !tbaa !27
  %t44 = extractvalue { i64, ptr } %t42, 1
  %t45 = extractvalue { i64, ptr } %t42, 0
  %t46 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t45)
  call void @olang_textcopy(ptr %t46, ptr %t44, i64 %t45)
  %t47 = insertvalue { i64, ptr } undef, i64 %t45, 0
  %t48 = insertvalue { i64, ptr } %t47, ptr %t46, 1
  store { i64, ptr } %t48, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t50 = load i64, ptr %l3, !tbaa !24
  %t52 = add i64 %t50, 1
  store i64 %t52, ptr %l3, !tbaa !24
  br label %bb1
bb15:
  %t54 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t56 = call { i64, ptr } @compiler_2flsp_2eUriOf(ptr %v1, ptr %v2, { i64, ptr } %t54)
  store { i64, ptr } %t56, ptr %l29
  br label %bb16
bb16:
  %t57 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t57, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2flsp_2eerrorReply(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca %"std/prelude/text:StringBuilder"
  %l4 = alloca %"std/prelude/text:StringBuilder"
  %l14 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l4
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l4
  store %"std/prelude/text:StringBuilder" %t2, ptr %l3
  %t5 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d143, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d143, i32 0, i32 1) }, 0
  %t8 = extractvalue { i64, ptr } %a0, 1
  %t9 = extractvalue { i64, ptr } %a0, 0
  %t10 = add i64 %t6, %t9
  %t11 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d144, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d144, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t15 = call i64 @__olang_fmt_i64(ptr null, i64 %a1)
  %t16 = add i64 %t13, %t15
  %t17 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d145, i32 0, i32 1) }, 1
  %t18 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d145, i32 0, i32 1) }, 0
  %t19 = add i64 %t16, %t18
  %t20 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t19)
  call void @olang_textcopy(ptr %t20, ptr %t5, i64 %t6)
  %t21 = getelementptr i8, ptr %t20, i64 %t6
  call void @olang_textcopy(ptr %t21, ptr %t8, i64 %t9)
  %t22 = getelementptr i8, ptr %t21, i64 %t9
  call void @olang_textcopy(ptr %t22, ptr %t11, i64 %t12)
  %t23 = getelementptr i8, ptr %t22, i64 %t12
  %t24 = call i64 @__olang_fmt_i64(ptr %t23, i64 %a1)
  %t25 = getelementptr i8, ptr %t23, i64 %t15
  call void @olang_textcopy(ptr %t25, ptr %t17, i64 %t18)
  %t26 = insertvalue { i64, ptr } undef, i64 %t19, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t20, 1
  %t29 = extractvalue { i64, ptr } %t27, 0
  %t30 = extractvalue { i64, ptr } %t27, 1
  %t31 = mul i64 %t29, 1
  %t32 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t31)
  call void @llvm.memcpy.p0.p0.i64(ptr %t32, ptr %t30, i64 %t31, i1 false)
  %t33 = insertvalue { i64, ptr } undef, i64 %t29, 0
  %t34 = insertvalue { i64, ptr } %t33, ptr %t32, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l3, { i64, ptr } %t34)
  br label %bb2
bb2:
  call void @compiler_2fsession_2eJsonStr(ptr %s0, ptr %v1, ptr %l3, { i64, ptr } %a2)
  br label %bb3
bb3:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l3, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d146, i32 0, i32 1) })
  br label %bb4
bb4:
  %t42 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v2, ptr %l3)
  store { i64, ptr } %t42, ptr %l14
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  %t43 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t43, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2flsp_2eframed(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t4 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t5 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d147, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d147, i32 0, i32 1) }, 0
  %t8 = call i64 @__olang_fmt_i64(ptr null, i64 %t3)
  %t9 = add i64 %t6, %t8
  %t10 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d148, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d148, i32 0, i32 1) }, 0
  %t12 = add i64 %t9, %t11
  %t14 = extractvalue { i64, ptr } %t4, 1
  %t15 = extractvalue { i64, ptr } %t4, 0
  %t16 = add i64 %t12, %t15
  %t17 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t16)
  call void @olang_textcopy(ptr %t17, ptr %t5, i64 %t6)
  %t18 = getelementptr i8, ptr %t17, i64 %t6
  %t19 = call i64 @__olang_fmt_i64(ptr %t18, i64 %t3)
  %t20 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t20, ptr %t10, i64 %t11)
  %t21 = getelementptr i8, ptr %t20, i64 %t11
  call void @olang_textcopy(ptr %t21, ptr %t14, i64 %t15)
  %t22 = insertvalue { i64, ptr } undef, i64 %t16, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t17, 1
  store { i64, ptr } %t23, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local ptr @compiler_2flsp_2eframes(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l18 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i32
  %l22 = alloca { i64, ptr }
  %l24 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l33 = alloca i64
  %l35 = alloca i64
  %l36 = alloca i32
  %l37 = alloca i64
  %l38 = alloca { i64, ptr }
  %l39 = alloca i64
  %l40 = alloca i64
  %l45 = alloca { i64, ptr }
  %l46 = alloca i64
  %l47 = alloca i32
  %l48 = alloca i64
  %l49 = alloca i32
  %l57 = alloca ptr
  %l58 = alloca { i64, ptr }
  %l60 = alloca i64
  %l64 = alloca i64
  %l65 = alloca i64
  %l70 = alloca { i64, ptr }
  %l74 = alloca i64
  %l77 = alloca i64
  %l78 = alloca i64
  %s1 = alloca %olang.scope
  %rv = alloca ptr
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l7
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  %t3 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %t3
  store ptr %t3, ptr %l1, !tbaa !29
  %t5 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t5, ptr %l9, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t6, 0
  store i64 %t9, ptr %l12, !tbaa !24
  %t10 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t10, 0
  store i64 %t11, ptr %l13, !tbaa !24
  %t12 = icmp sge i64 0, 0
  br i1 %t12, label %bb2, label %bb3
bb2:
  %t14 = load i64, ptr %l12, !tbaa !24
  %t15 = icmp sle i64 0, %t14
  br i1 %t15, label %bb4, label %bb5
bb3:
  call void @__olang_check_failed(ptr @olang_loc_f3afb7cdea72bea9_2e903794abb886a5)
  unreachable
bb4:
  %t17 = load i64, ptr %l12, !tbaa !24
  %t18 = load i64, ptr %l13, !tbaa !24
  %t19 = icmp sle i64 %t17, %t18
  br i1 %t19, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_f3afb7cdea72bea9_2e903794abb886a5)
  unreachable
bb6:
  %t21 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = load i64, ptr %l12, !tbaa !24
  %t24 = getelementptr i8, ptr %t22, i64 0
  %t25 = sub i64 %t23, 0
  %t26 = insertvalue { i64, ptr } undef, i64 %t25, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t24, 1
  store { i64, ptr } %t27, ptr %l2, !tbaa !27
  br label %bb8
bb7:
  call void @__olang_check_failed(ptr @olang_loc_f3afb7cdea72bea9_2e903794abb886a5)
  unreachable
bb8:
  store %olang.scope zeroinitializer, ptr %s1
  %t29 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t31 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %s1, { i64, ptr } %t29, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d149, i32 0, i32 1) })
  %t32 = extractvalue { i32, i64 } %t31, 1
  %t33 = extractvalue { i32, i64 } %t31, 0
  store i32 %t33, ptr %l21
  %t34 = icmp ne i32 %t33, 0
  br i1 %t34, label %bb10, label %ok.35, !prof !99
ok.35:
  store i64 %t32, ptr %l20
  br label %bb9
bb9:
  %t36 = load i64, ptr %l20, !tbaa !24
  store i64 %t36, ptr %l18, !tbaa !24
  br label %bb12
bb10:
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s1)
  br label %bb53
bb12:
  %t37 = load i64, ptr %l18, !tbaa !24
  %t38 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t38, ptr %l22, !tbaa !27
  %t41 = add i64 %t37, 16
  store i64 %t41, ptr %l24, !tbaa !24
  %t42 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t42, 0
  store i64 %t45, ptr %l27, !tbaa !24
  %t46 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t47 = extractvalue { i64, ptr } %t46, 0
  store i64 %t47, ptr %l28, !tbaa !24
  %t48 = load i64, ptr %l24, !tbaa !24
  %t49 = icmp sge i64 %t48, 0
  br i1 %t49, label %bb13, label %bb14
bb13:
  %t51 = load i64, ptr %l24, !tbaa !24
  %t52 = load i64, ptr %l27, !tbaa !24
  %t53 = icmp sle i64 %t51, %t52
  br i1 %t53, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_8c5172bb8ea5e6bc_75de6e53c7815648)
  unreachable
bb15:
  %t55 = load i64, ptr %l27, !tbaa !24
  %t56 = load i64, ptr %l28, !tbaa !24
  %t57 = icmp sle i64 %t55, %t56
  br i1 %t57, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_8c5172bb8ea5e6bc_75de6e53c7815648)
  unreachable
bb17:
  %t59 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !27
  %t61 = load i64, ptr %l24, !tbaa !24
  %t62 = load i64, ptr %l27, !tbaa !24
  %t63 = getelementptr i8, ptr %t60, i64 %t61
  %t64 = sub i64 %t62, %t61
  %t65 = insertvalue { i64, ptr } undef, i64 %t64, 0
  %t66 = insertvalue { i64, ptr } %t65, ptr %t63, 1
  store { i64, ptr } %t66, ptr %l4, !tbaa !27
  %t68 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t70 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %s1, { i64, ptr } %t68, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d150, i32 0, i32 1) })
  %t71 = extractvalue { i32, i64 } %t70, 1
  %t72 = extractvalue { i32, i64 } %t70, 0
  store i32 %t72, ptr %l36
  %t73 = icmp ne i32 %t72, 0
  br i1 %t73, label %bb20, label %ok.74, !prof !99
ok.74:
  store i64 %t71, ptr %l35
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_8c5172bb8ea5e6bc_75de6e53c7815648)
  unreachable
bb19:
  %t75 = load i64, ptr %l35, !tbaa !24
  store i64 %t75, ptr %l33, !tbaa !24
  br label %bb22
bb20:
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s1)
  br label %bb53
bb22:
  %t76 = load i64, ptr %l33, !tbaa !24
  store i64 %t76, ptr %l5, !tbaa !24
  %t77 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t77, ptr %l38, !tbaa !27
  %t78 = load i64, ptr %l5, !tbaa !24
  store i64 %t78, ptr %l39, !tbaa !24
  %t79 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t80 = extractvalue { i64, ptr } %t79, 0
  store i64 %t80, ptr %l40, !tbaa !24
  %t81 = icmp sge i64 0, 0
  br i1 %t81, label %bb23, label %bb24
bb23:
  %t83 = load i64, ptr %l39, !tbaa !24
  %t84 = icmp sle i64 0, %t83
  br i1 %t84, label %bb25, label %bb26
bb24:
  call void @__olang_check_failed(ptr @olang_loc_6f843a9f898efe67_8723688731f48c63)
  unreachable
bb25:
  %t86 = load i64, ptr %l39, !tbaa !24
  %t87 = load i64, ptr %l40, !tbaa !24
  %t88 = icmp sle i64 %t86, %t87
  br i1 %t88, label %bb27, label %bb28
bb26:
  call void @__olang_check_failed(ptr @olang_loc_6f843a9f898efe67_8723688731f48c63)
  unreachable
bb27:
  %t90 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !27
  %t92 = load i64, ptr %l39, !tbaa !24
  %t93 = getelementptr i8, ptr %t91, i64 0
  %t94 = sub i64 %t92, 0
  %t95 = insertvalue { i64, ptr } undef, i64 %t94, 0
  %t96 = insertvalue { i64, ptr } %t95, ptr %t93, 1
  %t98 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v0, ptr %s1, { i64, ptr } %t96)
  store { i64, ptr } %t98, ptr %l45
  br label %bb29
bb28:
  call void @__olang_check_failed(ptr @olang_loc_6f843a9f898efe67_8723688731f48c63)
  unreachable
bb29:
  %t99 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s1, i64 10)
  %t100 = extractvalue { i32, i64 } %t99, 1
  %t101 = extractvalue { i32, i64 } %t99, 0
  store i32 %t101, ptr %l47
  %t102 = icmp ne i32 %t101, 0
  br i1 %t102, label %bb31, label %ok.103, !prof !99
ok.103:
  store i64 %t100, ptr %l46
  br label %bb30
bb30:
  %t104 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t105 = load i64, ptr %l46, !tbaa !24
  %t106 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %s1, { i64, ptr } %t104, i64 %t105)
  %t107 = extractvalue { i32, i64 } %t106, 1
  %t108 = extractvalue { i32, i64 } %t106, 0
  store i32 %t108, ptr %l49
  %t109 = icmp ne i32 %t108, 0
  br i1 %t109, label %bb34, label %ok.110, !prof !99
ok.110:
  store i64 %t107, ptr %l48
  br label %bb33
bb31:
  br label %bb32
bb32:
  call void @__olang_scope_close(ptr %s1)
  br label %bb53
bb33:
  %t111 = load i64, ptr %l48, !tbaa !24
  store i64 %t111, ptr %l37, !tbaa !24
  br label %bb35
bb34:
  br label %bb32
bb35:
  %t112 = load i64, ptr %l37, !tbaa !24
  store i64 %t112, ptr %l6, !tbaa !24
  %t113 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t115 = extractvalue { i64, ptr } %t113, 0
  %t116 = load i64, ptr %l5, !tbaa !24
  %t118 = add i64 %t116, 4
  %t119 = load i64, ptr %l6, !tbaa !24
  %t122 = add i64 %t118, %t119
  %t125 = icmp slt i64 %t115, %t122
  br i1 %t125, label %bb36, label %bb37
bb36:
  call void @__olang_scope_close(ptr %s1)
  br label %bb53
bb37:
  br label %bb38
bb38:
  %t127 = load ptr, ptr %l1, !tbaa !29
  store ptr %t127, ptr %l57, !tbaa !29
  %t128 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t128, ptr %l58, !tbaa !27
  %t129 = load i64, ptr %l5, !tbaa !24
  %t131 = add i64 %t129, 4
  store i64 %t131, ptr %l60, !tbaa !24
  %t132 = load i64, ptr %l5, !tbaa !24
  %t134 = add i64 %t132, 4
  %t135 = load i64, ptr %l6, !tbaa !24
  %t138 = add i64 %t134, %t135
  store i64 %t138, ptr %l64, !tbaa !24
  %t139 = load { i64, ptr }, ptr %l58, !tbaa !27
  %t140 = extractvalue { i64, ptr } %t139, 0
  store i64 %t140, ptr %l65, !tbaa !24
  %t141 = load i64, ptr %l60, !tbaa !24
  %t142 = icmp sge i64 %t141, 0
  br i1 %t142, label %bb39, label %bb40
bb39:
  %t144 = load i64, ptr %l60, !tbaa !24
  %t145 = load i64, ptr %l64, !tbaa !24
  %t146 = icmp sle i64 %t144, %t145
  br i1 %t146, label %bb41, label %bb42
bb40:
  call void @__olang_check_failed(ptr @olang_loc_8f54b2067e6b6b8a_86cbf1b666cce186)
  unreachable
bb41:
  %t148 = load i64, ptr %l64, !tbaa !24
  %t149 = load i64, ptr %l65, !tbaa !24
  %t150 = icmp sle i64 %t148, %t149
  br i1 %t150, label %bb43, label %bb44
bb42:
  call void @__olang_check_failed(ptr @olang_loc_8f54b2067e6b6b8a_86cbf1b666cce186)
  unreachable
bb43:
  %t152 = getelementptr { i64, ptr }, ptr %l58, i32 0, i32 1
  %t153 = load ptr, ptr %t152, !tbaa !27
  %t154 = load i64, ptr %l60, !tbaa !24
  %t155 = load i64, ptr %l64, !tbaa !24
  %t156 = getelementptr i8, ptr %t153, i64 %t154
  %t157 = sub i64 %t155, %t154
  %t158 = insertvalue { i64, ptr } undef, i64 %t157, 0
  %t159 = insertvalue { i64, ptr } %t158, ptr %t156, 1
  %t160 = load ptr, ptr %l57, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v0, ptr %t160, { i64, ptr } %t159)
  br label %bb45
bb44:
  call void @__olang_check_failed(ptr @olang_loc_8f54b2067e6b6b8a_86cbf1b666cce186)
  unreachable
bb45:
  %t162 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t162, ptr %l70, !tbaa !27
  %t163 = load i64, ptr %l5, !tbaa !24
  %t165 = add i64 %t163, 4
  %t166 = load i64, ptr %l6, !tbaa !24
  %t169 = add i64 %t165, %t166
  store i64 %t169, ptr %l74, !tbaa !24
  %t170 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t173 = extractvalue { i64, ptr } %t170, 0
  store i64 %t173, ptr %l77, !tbaa !24
  %t174 = load { i64, ptr }, ptr %l70, !tbaa !27
  %t175 = extractvalue { i64, ptr } %t174, 0
  store i64 %t175, ptr %l78, !tbaa !24
  %t176 = load i64, ptr %l74, !tbaa !24
  %t177 = icmp sge i64 %t176, 0
  br i1 %t177, label %bb46, label %bb47
bb46:
  %t179 = load i64, ptr %l74, !tbaa !24
  %t180 = load i64, ptr %l77, !tbaa !24
  %t181 = icmp sle i64 %t179, %t180
  br i1 %t181, label %bb48, label %bb49
bb47:
  call void @__olang_check_failed(ptr @olang_loc_c8d49224b0a3e505_8d1f0d35a00e1b49)
  unreachable
bb48:
  %t183 = load i64, ptr %l77, !tbaa !24
  %t184 = load i64, ptr %l78, !tbaa !24
  %t185 = icmp sle i64 %t183, %t184
  br i1 %t185, label %bb50, label %bb51
bb49:
  call void @__olang_check_failed(ptr @olang_loc_c8d49224b0a3e505_8d1f0d35a00e1b49)
  unreachable
bb50:
  %t187 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t188 = load ptr, ptr %t187, !tbaa !27
  %t189 = load i64, ptr %l74, !tbaa !24
  %t190 = load i64, ptr %l77, !tbaa !24
  %t191 = getelementptr i8, ptr %t188, i64 %t189
  %t192 = sub i64 %t190, %t189
  %t193 = insertvalue { i64, ptr } undef, i64 %t192, 0
  %t194 = insertvalue { i64, ptr } %t193, ptr %t191, 1
  store { i64, ptr } %t194, ptr %l2, !tbaa !27
  call void @__olang_scope_close(ptr %s1)
  br label %bb52
bb51:
  call void @__olang_check_failed(ptr @olang_loc_c8d49224b0a3e505_8d1f0d35a00e1b49)
  unreachable
bb52:
  br label %bb8
bb53:
  %t196 = load ptr, ptr %l1, !tbaa !29
  store ptr %t196, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { i64, ptr } @compiler_2flsp_2eidOf(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l2 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l6 = alloca ptr
  %l7 = alloca i32
  %l9 = alloca i1
  %l12 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d151, i32 0, i32 1) }, ptr %l4, !tbaa !27
  %t2 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t5 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %v0, ptr %v0, ptr %a0, { i64, ptr } %t2)
  %t6 = extractvalue { i32, ptr } %t5, 1
  %t7 = extractvalue { i32, ptr } %t5, 0
  store i32 %t7, ptr %l7
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb2, label %ok.9, !prof !99
ok.9:
  store ptr %t6, ptr %l6
  br label %bb1
bb1:
  %t10 = load ptr, ptr %l6, !tbaa !29
  store ptr %t10, ptr %l2, !tbaa !29
  br label %bb6
bb2:
  %t11 = load i32, ptr %l7, !tbaa !23
  %t12 = ashr i32 %t11, 16
  %t14 = icmp eq i32 %t12, 1
  store i1 %t14, ptr %l9, !tbaa !21
  %t15 = load i32, ptr %l7, !tbaa !23
  %t16 = ashr i32 %t15, 16
  %t18 = icmp eq i32 %t16, 1
  br i1 %t18, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d152, i32 0, i32 1) }, ptr %l12, !tbaa !27
  %t20 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t20, ptr %l13, !tbaa !27
  %t21 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t22 = extractvalue { i64, ptr } %t21, 0
  store i64 %t22, ptr %l14, !tbaa !24
  %t23 = load i64, ptr %l14, !tbaa !24
  %t24 = mul i64 %t23, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t24)
  %t26 = insertvalue { i64, ptr } undef, i64 %t23, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  store { i64, ptr } %t27, ptr %l15, !tbaa !27
  %t28 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !27
  %t30 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !27
  %t32 = load i64, ptr %l14, !tbaa !24
  %t33 = mul i64 %t32, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t29, ptr %t31, i64 %t33, i1 false)
  %t34 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t34, ptr %l13, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t35 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t35, ptr %rv
  br label %ret
bb6:
  %t36 = load ptr, ptr %l2, !tbaa !29
  %t40 = call { i64, ptr } @std_2fjson_2eEncode_3cstd_2fjson_3aJson_26_3e(ptr %v0, ptr %s0, ptr %v1, ptr %t36, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d153, i32 0, i32 1) }, i32 0)
  store { i64, ptr } %t40, ptr %l18
  br label %bb7
bb7:
  %t41 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t41, ptr %l19, !tbaa !27
  %t42 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t42, 0
  store i64 %t43, ptr %l20, !tbaa !24
  %t44 = load i64, ptr %l20, !tbaa !24
  %t45 = mul i64 %t44, 1
  %t46 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t45)
  %t47 = insertvalue { i64, ptr } undef, i64 %t44, 0
  %t48 = insertvalue { i64, ptr } %t47, ptr %t46, 1
  store { i64, ptr } %t48, ptr %l21, !tbaa !27
  %t49 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !27
  %t51 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !27
  %t53 = load i64, ptr %l20, !tbaa !24
  %t54 = mul i64 %t53, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t50, ptr %t52, i64 %t54, i1 false)
  %t55 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t55, ptr %l19, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t56 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t56, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2flsp_2elostDiagnostic(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/text:StringBuilder"
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l12 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l2
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l2
  store %"std/prelude/text:StringBuilder" %t2, ptr %l1
  %t3 = extractvalue { i64, ptr } { i64 89, ptr getelementptr inbounds (<{ i64, [89 x i8] }>, ptr @.d154, i32 0, i32 1) }, 1
  %t4 = extractvalue { i64, ptr } { i64 89, ptr getelementptr inbounds (<{ i64, [89 x i8] }>, ptr @.d154, i32 0, i32 1) }, 0
  %t5 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d155, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d155, i32 0, i32 1) }, 0
  %t7 = add i64 %t4, %t6
  %t8 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t7)
  call void @olang_textcopy(ptr %t8, ptr %t3, i64 %t4)
  %t9 = getelementptr i8, ptr %t8, i64 %t4
  call void @olang_textcopy(ptr %t9, ptr %t5, i64 %t6)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t8, 1
  %t13 = extractvalue { i64, ptr } %t11, 0
  %t14 = extractvalue { i64, ptr } %t11, 1
  %t15 = mul i64 %t13, 1
  %t16 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t15)
  call void @llvm.memcpy.p0.p0.i64(ptr %t16, ptr %t14, i64 %t15, i1 false)
  %t17 = insertvalue { i64, ptr } undef, i64 %t13, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t16, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l1, { i64, ptr } %t18)
  br label %bb2
bb2:
  %t22 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d156, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d156, i32 0, i32 1) }, 0
  %t25 = extractvalue { i64, ptr } %a0, 1
  %t26 = extractvalue { i64, ptr } %a0, 0
  %t27 = add i64 %t23, %t26
  %t28 = extractvalue { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d157, i32 0, i32 1) }, 1
  %t29 = extractvalue { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d157, i32 0, i32 1) }, 0
  %t30 = add i64 %t27, %t29
  %t31 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t30)
  call void @olang_textcopy(ptr %t31, ptr %t22, i64 %t23)
  %t32 = getelementptr i8, ptr %t31, i64 %t23
  call void @olang_textcopy(ptr %t32, ptr %t25, i64 %t26)
  %t33 = getelementptr i8, ptr %t32, i64 %t26
  call void @olang_textcopy(ptr %t33, ptr %t28, i64 %t29)
  %t34 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t35 = insertvalue { i64, ptr } %t34, ptr %t31, 1
  %t37 = extractvalue { i64, ptr } %t35, 0
  %t38 = extractvalue { i64, ptr } %t35, 1
  %t39 = mul i64 %t37, 1
  %t40 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t39)
  call void @llvm.memcpy.p0.p0.i64(ptr %t40, ptr %t38, i64 %t39, i1 false)
  %t41 = insertvalue { i64, ptr } undef, i64 %t37, 0
  %t42 = insertvalue { i64, ptr } %t41, ptr %t40, 1
  call void @compiler_2fsession_2eJsonStr(ptr %s0, ptr %s0, ptr %l1, { i64, ptr } %t42)
  br label %bb3
bb3:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l1, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d158, i32 0, i32 1) })
  br label %bb4
bb4:
  %t47 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l1)
  store { i64, ptr } %t47, ptr %l12
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  %t48 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t48, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { { i64, ptr }, { i64, ptr } } @compiler_2flsp_2elspSaid(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca %"std/prelude/text:StringBuilder"
  %l4 = alloca %"std/prelude/text:StringBuilder"
  %l6 = alloca [3 x { i64, ptr }]
  %l7 = alloca %"std/os:Output"
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca { i64, ptr }
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca ptr
  %l20 = alloca i64
  %l22 = alloca { i64, ptr }
  %l23 = alloca %"std/prelude/text:StringBuilder"
  %l26 = alloca %"std/prelude/text:StringBuilder"
  %l27 = alloca ptr
  %l28 = alloca { i64, ptr }
  %l30 = alloca ptr
  %l31 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %l38 = alloca ptr
  %l39 = alloca { i64, ptr }
  %l41 = alloca ptr
  %l42 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l46 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l50 = alloca %"std/os:Output"
  %l54 = alloca { i64, ptr }
  %l56 = alloca { i64, ptr }
  %l59 = alloca %"std/os:Output"
  %l60 = alloca i32
  %l62 = alloca i1
  %l68 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l70 = alloca ptr
  %l71 = alloca i64
  %l73 = alloca i64
  %l78 = alloca { i64, ptr }
  %l79 = alloca ptr
  %l81 = alloca ptr
  %l82 = alloca i32
  %l84 = alloca i1
  %l91 = alloca { i64, ptr }
  %l92 = alloca i1
  %l94 = alloca ptr
  %l96 = alloca { i64, ptr }
  %l98 = alloca ptr
  %l99 = alloca i32
  %l101 = alloca i1
  %l105 = alloca { i64, ptr }
  %l106 = alloca { i64, ptr }
  %l108 = alloca { i64, ptr }
  %l109 = alloca { i64, ptr }
  %l111 = alloca { i64, ptr }
  %l113 = alloca ptr
  %l114 = alloca i32
  %l116 = alloca i1
  %l119 = alloca { i64, ptr }
  %l120 = alloca i32
  %l122 = alloca i1
  %l132 = alloca { i64, ptr }
  %l135 = alloca i64
  %l138 = alloca { i64, ptr }
  %l140 = alloca ptr
  %l141 = alloca i32
  %l143 = alloca i1
  %l148 = alloca { i64, ptr }
  %l150 = alloca ptr
  %l151 = alloca i32
  %l153 = alloca i1
  %l157 = alloca { i64, ptr }
  %l159 = alloca ptr
  %l160 = alloca i32
  %l162 = alloca i1
  %l165 = alloca i64
  %l166 = alloca i32
  %l168 = alloca i1
  %l171 = alloca i64
  %l173 = alloca { i64, ptr }
  %l175 = alloca ptr
  %l176 = alloca i32
  %l178 = alloca i1
  %l181 = alloca i64
  %l182 = alloca i32
  %l184 = alloca i1
  %l188 = alloca ptr
  %l189 = alloca i64
  %l191 = alloca { i64, ptr }
  %l193 = alloca i64
  %l195 = alloca { i64, ptr }
  %l205 = alloca { i64, ptr }
  %l208 = alloca { { i64, ptr }, { i64, ptr } }
  %l209 = alloca { i64, ptr }
  %l210 = alloca i64
  %l211 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %rv = alloca { { i64, ptr }, { i64, ptr } }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call { i64, ptr } @compiler_2flsp_2eUriOf(ptr %v1, ptr %s0, { i64, ptr } %a1)
  store { i64, ptr } %t3, ptr %l22
  br label %bb1
bb1:
  %t4 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t4, ptr %l2, !tbaa !27
  %t5 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t5, ptr %l23
  br label %bb2
bb2:
  %t6 = load %"std/prelude/text:StringBuilder", ptr %l23
  store %"std/prelude/text:StringBuilder" %t6, ptr %l3
  %t7 = load { i64, ptr }, ptr @G_2ecompiler_2flsp_2eStepMain, !tbaa !27
  %t8 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2fsession_2eJsonStr(ptr %s0, ptr %t8, ptr %l3, { i64, ptr } %t7)
  br label %bb3
bb3:
  %t11 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t11, ptr %l26
  br label %bb4
bb4:
  %t12 = load %"std/prelude/text:StringBuilder", ptr %l26
  store %"std/prelude/text:StringBuilder" %t12, ptr %l4
  store ptr %l4, ptr %l27, !tbaa !29
  %t13 = call { i64, ptr } @compiler_2flsp_2eframed(ptr %s0, ptr %s0, { i64, ptr } { i64 75, ptr getelementptr inbounds (<{ i64, [75 x i8] }>, ptr @.d159, i32 0, i32 1) })
  store { i64, ptr } %t13, ptr %l28
  br label %bb5
bb5:
  %t14 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t15 = extractvalue { i64, ptr } %t14, 0
  %t16 = extractvalue { i64, ptr } %t14, 1
  %t17 = mul i64 %t15, 1
  %t18 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t17)
  call void @llvm.memcpy.p0.p0.i64(ptr %t18, ptr %t16, i64 %t17, i1 false)
  %t19 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t20 = insertvalue { i64, ptr } %t19, ptr %t18, 1
  %t21 = load ptr, ptr %l27, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t21, { i64, ptr } %t20)
  br label %bb6
bb6:
  store ptr %l4, ptr %l30, !tbaa !29
  %t23 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t23, ptr %l31, !tbaa !27
  %t25 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %l3)
  store { i64, ptr } %t25, ptr %l33
  br label %bb7
bb7:
  %t26 = extractvalue { i64, ptr } { i64 82, ptr getelementptr inbounds (<{ i64, [82 x i8] }>, ptr @.d160, i32 0, i32 1) }, 1
  %t27 = extractvalue { i64, ptr } { i64 82, ptr getelementptr inbounds (<{ i64, [82 x i8] }>, ptr @.d160, i32 0, i32 1) }, 0
  %t28 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t28, 1
  %t30 = extractvalue { i64, ptr } %t28, 0
  %t31 = add i64 %t27, %t30
  %t32 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d161, i32 0, i32 1) }, 1
  %t33 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d161, i32 0, i32 1) }, 0
  %t34 = add i64 %t31, %t33
  %t35 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t36 = extractvalue { i64, ptr } %t35, 1
  %t37 = extractvalue { i64, ptr } %t35, 0
  %t38 = add i64 %t34, %t37
  %t39 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d162, i32 0, i32 1) }, 1
  %t40 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d162, i32 0, i32 1) }, 0
  %t41 = add i64 %t38, %t40
  %t42 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t41)
  call void @olang_textcopy(ptr %t42, ptr %t26, i64 %t27)
  %t43 = getelementptr i8, ptr %t42, i64 %t27
  call void @olang_textcopy(ptr %t43, ptr %t29, i64 %t30)
  %t44 = getelementptr i8, ptr %t43, i64 %t30
  call void @olang_textcopy(ptr %t44, ptr %t32, i64 %t33)
  %t45 = getelementptr i8, ptr %t44, i64 %t33
  call void @olang_textcopy(ptr %t45, ptr %t36, i64 %t37)
  %t46 = getelementptr i8, ptr %t45, i64 %t37
  call void @olang_textcopy(ptr %t46, ptr %t39, i64 %t40)
  %t47 = insertvalue { i64, ptr } undef, i64 %t41, 0
  %t48 = insertvalue { i64, ptr } %t47, ptr %t42, 1
  %t50 = extractvalue { i64, ptr } %t48, 0
  %t51 = extractvalue { i64, ptr } %t48, 1
  %t52 = mul i64 %t50, 1
  %t53 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t52)
  call void @llvm.memcpy.p0.p0.i64(ptr %t53, ptr %t51, i64 %t52, i1 false)
  %t54 = insertvalue { i64, ptr } undef, i64 %t50, 0
  %t55 = insertvalue { i64, ptr } %t54, ptr %t53, 1
  %t57 = call { i64, ptr } @compiler_2flsp_2eframed(ptr %s0, ptr %s0, { i64, ptr } %t55)
  store { i64, ptr } %t57, ptr %l36
  br label %bb8
bb8:
  %t58 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t59 = extractvalue { i64, ptr } %t58, 0
  %t60 = extractvalue { i64, ptr } %t58, 1
  %t61 = mul i64 %t59, 1
  %t62 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t61)
  call void @llvm.memcpy.p0.p0.i64(ptr %t62, ptr %t60, i64 %t61, i1 false)
  %t63 = insertvalue { i64, ptr } undef, i64 %t59, 0
  %t64 = insertvalue { i64, ptr } %t63, ptr %t62, 1
  %t65 = load ptr, ptr %l30, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t65, { i64, ptr } %t64)
  br label %bb9
bb9:
  store ptr %l4, ptr %l38, !tbaa !29
  %t67 = call { i64, ptr } @compiler_2flsp_2eframed(ptr %s0, ptr %s0, { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d163, i32 0, i32 1) })
  store { i64, ptr } %t67, ptr %l39
  br label %bb10
bb10:
  %t68 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t69 = extractvalue { i64, ptr } %t68, 0
  %t70 = extractvalue { i64, ptr } %t68, 1
  %t71 = mul i64 %t69, 1
  %t72 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t71)
  call void @llvm.memcpy.p0.p0.i64(ptr %t72, ptr %t70, i64 %t71, i1 false)
  %t73 = insertvalue { i64, ptr } undef, i64 %t69, 0
  %t74 = insertvalue { i64, ptr } %t73, ptr %t72, 1
  %t75 = load ptr, ptr %l38, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t75, { i64, ptr } %t74)
  br label %bb11
bb11:
  store ptr %l4, ptr %l41, !tbaa !29
  %t77 = call { i64, ptr } @compiler_2flsp_2eframed(ptr %s0, ptr %s0, { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d164, i32 0, i32 1) })
  store { i64, ptr } %t77, ptr %l42
  br label %bb12
bb12:
  %t78 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t79 = extractvalue { i64, ptr } %t78, 0
  %t80 = extractvalue { i64, ptr } %t78, 1
  %t81 = mul i64 %t79, 1
  %t82 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t81)
  call void @llvm.memcpy.p0.p0.i64(ptr %t82, ptr %t80, i64 %t81, i1 false)
  %t83 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t84 = insertvalue { i64, ptr } %t83, ptr %t82, 1
  %t85 = load ptr, ptr %l41, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t85, { i64, ptr } %t84)
  br label %bb13
bb13:
  %t89 = call { i64, ptr } @std_2fos_2eQuote(ptr %v0, ptr %s0, { i64, ptr } %a0)
  store { i64, ptr } %t89, ptr %l45
  br label %bb14
bb14:
  %t90 = call { i64, ptr } @compiler_2flsp_2ecompilerUnderTest(ptr %s0)
  store { i64, ptr } %t90, ptr %l46
  br label %bb15
bb15:
  %t91 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t92 = extractvalue { i64, ptr } %t91, 0
  %t93 = extractvalue { i64, ptr } %t91, 1
  %t94 = mul i64 %t92, 1
  %t95 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t94)
  call void @llvm.memcpy.p0.p0.i64(ptr %t95, ptr %t93, i64 %t94, i1 false)
  %t96 = insertvalue { i64, ptr } undef, i64 %t92, 0
  %t97 = insertvalue { i64, ptr } %t96, ptr %t95, 1
  %t99 = call { i64, ptr } @std_2fos_2eQuote(ptr %s0, ptr %s0, { i64, ptr } %t97)
  store { i64, ptr } %t99, ptr %l48
  br label %bb16
bb16:
  %t100 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d165, i32 0, i32 1) }, 1
  %t101 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d165, i32 0, i32 1) }, 0
  %t102 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t103 = extractvalue { i64, ptr } %t102, 1
  %t104 = extractvalue { i64, ptr } %t102, 0
  %t105 = add i64 %t101, %t104
  %t106 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d166, i32 0, i32 1) }, 1
  %t107 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d166, i32 0, i32 1) }, 0
  %t108 = add i64 %t105, %t107
  %t109 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t110 = extractvalue { i64, ptr } %t109, 1
  %t111 = extractvalue { i64, ptr } %t109, 0
  %t112 = add i64 %t108, %t111
  %t113 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d167, i32 0, i32 1) }, 1
  %t114 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d167, i32 0, i32 1) }, 0
  %t115 = add i64 %t112, %t114
  %t116 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t115)
  call void @olang_textcopy(ptr %t116, ptr %t100, i64 %t101)
  %t117 = getelementptr i8, ptr %t116, i64 %t101
  call void @olang_textcopy(ptr %t117, ptr %t103, i64 %t104)
  %t118 = getelementptr i8, ptr %t117, i64 %t104
  call void @olang_textcopy(ptr %t118, ptr %t106, i64 %t107)
  %t119 = getelementptr i8, ptr %t118, i64 %t107
  call void @olang_textcopy(ptr %t119, ptr %t110, i64 %t111)
  %t120 = getelementptr i8, ptr %t119, i64 %t111
  call void @olang_textcopy(ptr %t120, ptr %t113, i64 %t114)
  %t121 = insertvalue { i64, ptr } undef, i64 %t115, 0
  %t122 = insertvalue { i64, ptr } %t121, ptr %t116, 1
  %t125 = insertvalue [3 x { i64, ptr }] undef, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d168, i32 0, i32 1) }, 0
  %t126 = insertvalue [3 x { i64, ptr }] %t125, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d169, i32 0, i32 1) }, 1
  %t128 = insertvalue [3 x { i64, ptr }] %t126, { i64, ptr } %t122, 2
  store [3 x { i64, ptr }] %t128, ptr %l6
  %t131 = insertvalue { i64, ptr } undef, i64 3, 0
  %t132 = insertvalue { i64, ptr } %t131, ptr %l6, 1
  store { i64, ptr } %t132, ptr %l54, !tbaa !27
  %t134 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %l4)
  store { i64, ptr } %t134, ptr %l56
  br label %bb17
bb17:
  %t135 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t137 = extractvalue { i64, ptr } %t135, 0
  %t138 = extractvalue { i64, ptr } %t135, 1
  %t139 = mul i64 %t137, 1
  %t140 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t139)
  call void @llvm.memcpy.p0.p0.i64(ptr %t140, ptr %t138, i64 %t139, i1 false)
  %t141 = insertvalue { i64, ptr } undef, i64 %t137, 0
  %t142 = insertvalue { i64, ptr } %t141, ptr %t140, 1
  %t143 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t145 = call { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %s0, ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t143, { i64, ptr } %t142, i1 true, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d10, i32 0, i32 1) })
  %t146 = extractvalue { i32, %"std/os:Output" } %t145, 1
  %t147 = extractvalue { i32, %"std/os:Output" } %t145, 0
  store i32 %t147, ptr %l60
  %t148 = icmp ne i32 %t147, 0
  br i1 %t148, label %bb19, label %ok.149, !prof !99
ok.149:
  store %"std/os:Output" %t146, ptr %l59
  br label %bb18
bb18:
  %t150 = load %"std/os:Output", ptr %l59
  store %"std/os:Output" %t150, ptr %l50
  br label %bb23
bb19:
  %t151 = load i32, ptr %l60, !tbaa !23
  %t152 = ashr i32 %t151, 16
  %t154 = icmp eq i32 %t152, 1
  store i1 %t154, ptr %l62, !tbaa !21
  %t155 = load i32, ptr %l60, !tbaa !23
  %t156 = ashr i32 %t155, 16
  %t158 = icmp eq i32 %t156, 1
  br i1 %t158, label %bb20, label %bb21
bb20:
  call void @__olang_errpay_pop()
  br label %bb21
bb21:
  br label %bb22
bb22:
  %t160 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d170, i32 0, i32 1) }, 1
  %t161 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d170, i32 0, i32 1) }, 0
  %t162 = insertvalue { i64, ptr } undef, i64 %t161, 0
  %t163 = insertvalue { i64, ptr } %t162, ptr %t160, 1
  call void @__olang_check_failed_text(ptr @olang_loc_e95ee7c974268826_dbe3ca405aac726a, { i64, ptr } %t163)
  unreachable
bb23:
  %t164 = load %"std/os:Output", ptr %l50
  store %"std/os:Output" %t164, ptr %l7
  %t165 = getelementptr %"std/os:Output", ptr %l7, i32 0, i32 0
  %t166 = load i32, ptr %t165, !tbaa !23
  %t168 = icmp eq i32 %t166, 0
  br i1 %t168, label %bb24, label %bb25
bb24:
  %t170 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t170, ptr %l68
  br label %bb26
bb25:
  %t171 = getelementptr %"std/os:Output", ptr %l7, i32 0, i32 2
  %t172 = load { i64, ptr }, ptr %t171, !tbaa !27
  %t174 = extractvalue { i64, ptr } %t172, 1
  %t175 = extractvalue { i64, ptr } %t172, 0
  %t176 = insertvalue { i64, ptr } undef, i64 %t175, 0
  %t177 = insertvalue { i64, ptr } %t176, ptr %t174, 1
  call void @__olang_check_failed_text(ptr @olang_loc_e0c8a6c727c459ae_6ecdb6d914c5403a, { i64, ptr } %t177)
  unreachable
bb26:
  %t178 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l68
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t178, ptr %l8
  store %olang.scope zeroinitializer, ptr %s4
  %t179 = getelementptr %"std/os:Output", ptr %l7, i32 0, i32 1
  %t180 = load { i64, ptr }, ptr %t179, !tbaa !27
  %t182 = call ptr @compiler_2flsp_2eframes(ptr %s0, ptr %s4, { i64, ptr } %t180)
  store ptr %t182, ptr %l70
  br label %bb27
bb27:
  %t183 = load ptr, ptr %l70, !tbaa !29
  store ptr %t183, ptr %l9, !tbaa !29
  store i64 0, ptr %l10, !tbaa !24
  br label %bb28
bb28:
  store %olang.scope zeroinitializer, ptr %s5
  %t184 = load i64, ptr %l10, !tbaa !24
  store i64 %t184, ptr %l71, !tbaa !24
  %t185 = load ptr, ptr %l9, !tbaa !29
  %t187 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s4, ptr %t185)
  store i64 %t187, ptr %l73
  br label %bb29
bb29:
  %t188 = load i64, ptr %l71, !tbaa !24
  %t189 = load i64, ptr %l73, !tbaa !24
  %t190 = icmp slt i64 %t188, %t189
  %t192 = xor i1 %t190, true
  br i1 %t192, label %bb30, label %bb31
bb30:
  call void @__olang_scope_close(ptr %s5)
  br label %bb106
bb31:
  br label %bb32
bb32:
  %t194 = load ptr, ptr %l9, !tbaa !29
  %t195 = load i64, ptr %l10, !tbaa !24
  %t198 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s4, ptr %s4, ptr %t194, i64 %t195)
  store { i64, ptr } %t198, ptr %l78
  br label %bb33
bb33:
  %t199 = load { i64, ptr }, ptr %l78, !tbaa !27
  store { i64, ptr } %t199, ptr %l11, !tbaa !27
  %t200 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t202 = call { i32, ptr } @std_2fjson_2eJson_2eParse(ptr %s4, ptr %s5, { i64, ptr } %t200)
  %t203 = extractvalue { i32, ptr } %t202, 1
  %t204 = extractvalue { i32, ptr } %t202, 0
  store i32 %t204, ptr %l82
  %t205 = icmp ne i32 %t204, 0
  br i1 %t205, label %bb35, label %ok.206, !prof !99
ok.206:
  store ptr %t203, ptr %l81
  br label %bb34
bb34:
  %t207 = load ptr, ptr %l81, !tbaa !29
  store ptr %t207, ptr %l79, !tbaa !29
  br label %bb39
bb35:
  %t208 = load i32, ptr %l82, !tbaa !23
  %t209 = ashr i32 %t208, 16
  %t211 = icmp eq i32 %t209, 1
  store i1 %t211, ptr %l84, !tbaa !21
  %t212 = load i32, ptr %l82, !tbaa !23
  %t213 = ashr i32 %t212, 16
  %t215 = icmp eq i32 %t213, 1
  br i1 %t215, label %bb36, label %bb37
bb36:
  call void @__olang_errpay_pop()
  br label %bb37
bb37:
  br label %bb38
bb38:
  store %olang.scope zeroinitializer, ptr %s6
  %t217 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t218 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d171, i32 0, i32 1) }, 1
  %t219 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d171, i32 0, i32 1) }, 0
  %t221 = extractvalue { i64, ptr } %t217, 1
  %t222 = extractvalue { i64, ptr } %t217, 0
  %t223 = add i64 %t219, %t222
  %t224 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t223)
  call void @olang_textcopy(ptr %t224, ptr %t218, i64 %t219)
  %t225 = getelementptr i8, ptr %t224, i64 %t219
  call void @olang_textcopy(ptr %t225, ptr %t221, i64 %t222)
  %t226 = insertvalue { i64, ptr } undef, i64 %t223, 0
  %t227 = insertvalue { i64, ptr } %t226, ptr %t224, 1
  %t229 = extractvalue { i64, ptr } %t227, 0
  %t230 = extractvalue { i64, ptr } %t227, 1
  %t231 = mul i64 %t229, 1
  %t232 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t231)
  call void @llvm.memcpy.p0.p0.i64(ptr %t232, ptr %t230, i64 %t231, i1 false)
  %t233 = insertvalue { i64, ptr } undef, i64 %t229, 0
  %t234 = insertvalue { i64, ptr } %t233, ptr %t232, 1
  %t236 = extractvalue { i64, ptr } %t234, 1
  %t237 = extractvalue { i64, ptr } %t234, 0
  %t238 = insertvalue { i64, ptr } undef, i64 %t237, 0
  %t239 = insertvalue { i64, ptr } %t238, ptr %t236, 1
  call void @__olang_check_failed_text(ptr @olang_loc_6196fce1a841dab8_1c2f84dff31e5f9c, { i64, ptr } %t239)
  unreachable
bb39:
  %t240 = load ptr, ptr %l79, !tbaa !29
  store ptr %t240, ptr %l12, !tbaa !29
  %t241 = load ptr, ptr %l12, !tbaa !29
  %t243 = call { i64, ptr } @compiler_2flsp_2estr(ptr %s5, ptr %s5, ptr %s5, ptr %t241, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d172, i32 0, i32 1) })
  store { i64, ptr } %t243, ptr %l91
  br label %bb40
bb40:
  %t244 = load { i64, ptr }, ptr %l91, !tbaa !27
  %t245 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s5, ptr %s5, { i64, ptr } %t244, { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d173, i32 0, i32 1) })
  store i1 %t245, ptr %l92
  br label %bb41
bb41:
  %t246 = load i1, ptr %l92, !tbaa !21
  %t247 = xor i1 %t246, true
  br i1 %t247, label %bb42, label %bb43
bb42:
  call void @__olang_scope_close(ptr %s5)
  br label %bb105
bb43:
  br label %bb44
bb44:
  %t249 = load ptr, ptr %l12, !tbaa !29
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d174, i32 0, i32 1) }, ptr %l96, !tbaa !27
  %t250 = load { i64, ptr }, ptr %l96, !tbaa !27
  %t253 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %s5, ptr %s5, ptr %t249, { i64, ptr } %t250)
  %t254 = extractvalue { i32, ptr } %t253, 1
  %t255 = extractvalue { i32, ptr } %t253, 0
  store i32 %t255, ptr %l99
  %t256 = icmp ne i32 %t255, 0
  br i1 %t256, label %bb46, label %ok.257, !prof !99
ok.257:
  store ptr %t254, ptr %l98
  br label %bb45
bb45:
  %t258 = load ptr, ptr %l98, !tbaa !29
  store ptr %t258, ptr %l94, !tbaa !29
  br label %bb50
bb46:
  %t259 = load i32, ptr %l99, !tbaa !23
  %t260 = ashr i32 %t259, 16
  %t262 = icmp eq i32 %t260, 1
  store i1 %t262, ptr %l101, !tbaa !21
  %t263 = load i32, ptr %l99, !tbaa !23
  %t264 = ashr i32 %t263, 16
  %t266 = icmp eq i32 %t264, 1
  br i1 %t266, label %bb47, label %bb48
bb47:
  call void @__olang_errpay_pop()
  br label %bb48
bb48:
  br label %bb49
bb49:
  call void @__olang_scope_close(ptr %s5)
  br label %bb105
bb50:
  %t268 = load ptr, ptr %l94, !tbaa !29
  store ptr %t268, ptr %l13, !tbaa !29
  %t269 = load ptr, ptr %l13, !tbaa !29
  %t271 = call { i64, ptr } @compiler_2flsp_2estr(ptr %s5, ptr %s5, ptr %s5, ptr %t269, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d175, i32 0, i32 1) })
  store { i64, ptr } %t271, ptr %l105
  br label %bb51
bb51:
  %t272 = load { i64, ptr }, ptr %l105, !tbaa !27
  %t273 = call { i64, ptr } @compiler_2flsp_2ePathOf(ptr %s5, ptr %s5, { i64, ptr } %t272)
  store { i64, ptr } %t273, ptr %l106
  br label %bb52
bb52:
  %t274 = load { i64, ptr }, ptr %l106, !tbaa !27
  %t275 = extractvalue { i64, ptr } %t274, 0
  %t276 = extractvalue { i64, ptr } %t274, 1
  %t277 = mul i64 %t275, 1
  %t278 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t277)
  call void @llvm.memcpy.p0.p0.i64(ptr %t278, ptr %t276, i64 %t277, i1 false)
  %t279 = insertvalue { i64, ptr } undef, i64 %t275, 0
  %t280 = insertvalue { i64, ptr } %t279, ptr %t278, 1
  %t282 = call { i64, ptr } @compiler_2flsp_2ebaseName(ptr %s5, ptr %s5, { i64, ptr } %t280)
  store { i64, ptr } %t282, ptr %l108
  br label %bb53
bb53:
  %t283 = load { i64, ptr }, ptr %l108, !tbaa !27
  store { i64, ptr } %t283, ptr %l14, !tbaa !27
  %t284 = load ptr, ptr %l13, !tbaa !29
  store { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d176, i32 0, i32 1) }, ptr %l111, !tbaa !27
  %t285 = load { i64, ptr }, ptr %l111, !tbaa !27
  %t288 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %s5, ptr %s5, ptr %t284, { i64, ptr } %t285)
  %t289 = extractvalue { i32, ptr } %t288, 1
  %t290 = extractvalue { i32, ptr } %t288, 0
  store i32 %t290, ptr %l114
  %t291 = icmp ne i32 %t290, 0
  br i1 %t291, label %bb55, label %ok.292, !prof !99
ok.292:
  store ptr %t289, ptr %l113
  br label %bb54
bb54:
  %t293 = load ptr, ptr %l113, !tbaa !29
  %t294 = call { i32, { i64, ptr } } @std_2fjson_2estd_2fjson_3aJson_2eAsArr(ptr %s5, ptr %s5, ptr %t293)
  %t295 = extractvalue { i32, { i64, ptr } } %t294, 1
  %t296 = extractvalue { i32, { i64, ptr } } %t294, 0
  store i32 %t296, ptr %l120
  %t297 = icmp ne i32 %t296, 0
  br i1 %t297, label %bb60, label %ok.298, !prof !99
ok.298:
  store { i64, ptr } %t295, ptr %l119
  br label %bb59
bb55:
  %t299 = load i32, ptr %l114, !tbaa !23
  %t300 = ashr i32 %t299, 16
  %t302 = icmp eq i32 %t300, 1
  store i1 %t302, ptr %l116, !tbaa !21
  %t303 = load i32, ptr %l114, !tbaa !23
  %t304 = ashr i32 %t303, 16
  %t306 = icmp eq i32 %t304, 1
  br i1 %t306, label %bb56, label %bb57
bb56:
  call void @__olang_errpay_pop()
  br label %bb57
bb57:
  br label %bb58
bb58:
  call void @__olang_scope_close(ptr %s5)
  br label %bb105
bb59:
  %t308 = load { i64, ptr }, ptr %l119, !tbaa !27
  store { i64, ptr } %t308, ptr %l109, !tbaa !27
  br label %bb63
bb60:
  %t309 = load i32, ptr %l120, !tbaa !23
  %t310 = ashr i32 %t309, 16
  %t312 = icmp eq i32 %t310, 1
  store i1 %t312, ptr %l122, !tbaa !21
  %t313 = load i32, ptr %l120, !tbaa !23
  %t314 = ashr i32 %t313, 16
  %t316 = icmp eq i32 %t314, 1
  br i1 %t316, label %bb61, label %bb62
bb61:
  call void @__olang_errpay_pop()
  br label %bb62
bb62:
  br label %bb58
bb63:
  %t318 = load { i64, ptr }, ptr %l109, !tbaa !27
  store { i64, ptr } %t318, ptr %l16, !tbaa !27
  store i64 0, ptr %l17, !tbaa !24
  %t321 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t323 = extractvalue { i64, ptr } %t321, 0
  store i64 %t323, ptr %l18, !tbaa !24
  br label %bb64
bb64:
  store %olang.scope zeroinitializer, ptr %s12
  %t325 = load i64, ptr %l17, !tbaa !24
  %t326 = load i64, ptr %l18, !tbaa !24
  %t329 = icmp slt i64 %t325, %t326
  %t331 = xor i1 %t329, true
  br i1 %t331, label %bb65, label %bb66
bb65:
  call void @__olang_scope_close(ptr %s12)
  br label %bb104
bb66:
  br label %bb67
bb67:
  %t333 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t333, ptr %l132, !tbaa !27
  %t334 = load i64, ptr %l17, !tbaa !24
  %t336 = getelementptr { i64, ptr }, ptr %l132, i32 0, i32 1
  %t337 = load ptr, ptr %t336, !tbaa !27
  %t338 = getelementptr ptr, ptr %t337, i64 %t334
  %t339 = load ptr, ptr %t338, !tbaa !39
  store ptr %t339, ptr %l19, !tbaa !29
  %t341 = load ptr, ptr %l19, !tbaa !29
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d177, i32 0, i32 1) }, ptr %l138, !tbaa !27
  %t343 = load { i64, ptr }, ptr %l138, !tbaa !27
  %t346 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %s5, ptr %s5, ptr %t341, { i64, ptr } %t343)
  %t347 = extractvalue { i32, ptr } %t346, 1
  %t348 = extractvalue { i32, ptr } %t346, 0
  store i32 %t348, ptr %l141
  %t349 = icmp ne i32 %t348, 0
  br i1 %t349, label %bb69, label %ok.350, !prof !99
ok.350:
  store ptr %t347, ptr %l140
  br label %bb68
bb68:
  %t351 = load ptr, ptr %l140, !tbaa !29
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d178, i32 0, i32 1) }, ptr %l148, !tbaa !27
  %t353 = load { i64, ptr }, ptr %l148, !tbaa !27
  %t356 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %s5, ptr %s5, ptr %t351, { i64, ptr } %t353)
  %t357 = extractvalue { i32, ptr } %t356, 1
  %t358 = extractvalue { i32, ptr } %t356, 0
  store i32 %t358, ptr %l151
  %t359 = icmp ne i32 %t358, 0
  br i1 %t359, label %bb74, label %ok.360, !prof !99
ok.360:
  store ptr %t357, ptr %l150
  br label %bb73
bb69:
  %t361 = load i32, ptr %l141, !tbaa !23
  %t362 = ashr i32 %t361, 16
  %t364 = icmp eq i32 %t362, 1
  store i1 %t364, ptr %l143, !tbaa !21
  %t365 = load i32, ptr %l141, !tbaa !23
  %t366 = ashr i32 %t365, 16
  %t368 = icmp eq i32 %t366, 1
  br i1 %t368, label %bb70, label %bb71
bb70:
  call void @__olang_errpay_pop()
  br label %bb71
bb71:
  br label %bb72
bb72:
  store i64 -1, ptr %l135, !tbaa !24
  br label %bb85
bb73:
  %t370 = load ptr, ptr %l150, !tbaa !29
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d179, i32 0, i32 1) }, ptr %l157, !tbaa !27
  %t371 = load { i64, ptr }, ptr %l157, !tbaa !27
  %t374 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %s5, ptr %s12, ptr %t370, { i64, ptr } %t371)
  %t375 = extractvalue { i32, ptr } %t374, 1
  %t376 = extractvalue { i32, ptr } %t374, 0
  store i32 %t376, ptr %l160
  %t377 = icmp ne i32 %t376, 0
  br i1 %t377, label %bb78, label %ok.378, !prof !99
ok.378:
  store ptr %t375, ptr %l159
  br label %bb77
bb74:
  %t379 = load i32, ptr %l151, !tbaa !23
  %t380 = ashr i32 %t379, 16
  %t382 = icmp eq i32 %t380, 1
  store i1 %t382, ptr %l153, !tbaa !21
  %t383 = load i32, ptr %l151, !tbaa !23
  %t384 = ashr i32 %t383, 16
  %t386 = icmp eq i32 %t384, 1
  br i1 %t386, label %bb75, label %bb76
bb75:
  call void @__olang_errpay_pop()
  br label %bb76
bb76:
  br label %bb72
bb77:
  %t388 = load ptr, ptr %l159, !tbaa !29
  %t389 = call { i32, i64 } @std_2fjson_2estd_2fjson_3aJson_2eAsInt(ptr %s12, ptr %t388)
  %t390 = extractvalue { i32, i64 } %t389, 1
  %t391 = extractvalue { i32, i64 } %t389, 0
  store i32 %t391, ptr %l166
  %t392 = icmp ne i32 %t391, 0
  br i1 %t392, label %bb82, label %ok.393, !prof !99
ok.393:
  store i64 %t390, ptr %l165
  br label %bb81
bb78:
  %t394 = load i32, ptr %l160, !tbaa !23
  %t395 = ashr i32 %t394, 16
  %t397 = icmp eq i32 %t395, 1
  store i1 %t397, ptr %l162, !tbaa !21
  %t398 = load i32, ptr %l160, !tbaa !23
  %t399 = ashr i32 %t398, 16
  %t401 = icmp eq i32 %t399, 1
  br i1 %t401, label %bb79, label %bb80
bb79:
  call void @__olang_errpay_pop()
  br label %bb80
bb80:
  br label %bb72
bb81:
  %t403 = load i64, ptr %l165, !tbaa !24
  store i64 %t403, ptr %l135, !tbaa !24
  br label %bb85
bb82:
  %t404 = load i32, ptr %l166, !tbaa !23
  %t405 = ashr i32 %t404, 16
  %t407 = icmp eq i32 %t405, 1
  store i1 %t407, ptr %l168, !tbaa !21
  %t408 = load i32, ptr %l166, !tbaa !23
  %t409 = ashr i32 %t408, 16
  %t411 = icmp eq i32 %t409, 1
  br i1 %t411, label %bb83, label %bb84
bb83:
  call void @__olang_errpay_pop()
  br label %bb84
bb84:
  br label %bb72
bb85:
  %t413 = load i64, ptr %l135, !tbaa !24
  store i64 %t413, ptr %l20, !tbaa !24
  %t414 = load ptr, ptr %l19, !tbaa !29
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d180, i32 0, i32 1) }, ptr %l173, !tbaa !27
  %t415 = load { i64, ptr }, ptr %l173, !tbaa !27
  %t418 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %s5, ptr %s5, ptr %t414, { i64, ptr } %t415)
  %t419 = extractvalue { i32, ptr } %t418, 1
  %t420 = extractvalue { i32, ptr } %t418, 0
  store i32 %t420, ptr %l176
  %t421 = icmp ne i32 %t420, 0
  br i1 %t421, label %bb87, label %ok.422, !prof !99
ok.422:
  store ptr %t419, ptr %l175
  br label %bb86
bb86:
  %t423 = load ptr, ptr %l175, !tbaa !29
  %t424 = call { i32, i64 } @std_2fjson_2estd_2fjson_3aJson_2eAsInt(ptr %s5, ptr %t423)
  %t425 = extractvalue { i32, i64 } %t424, 1
  %t426 = extractvalue { i32, i64 } %t424, 0
  store i32 %t426, ptr %l182
  %t427 = icmp ne i32 %t426, 0
  br i1 %t427, label %bb92, label %ok.428, !prof !99
ok.428:
  store i64 %t425, ptr %l181
  br label %bb91
bb87:
  %t429 = load i32, ptr %l176, !tbaa !23
  %t430 = ashr i32 %t429, 16
  %t432 = icmp eq i32 %t430, 1
  store i1 %t432, ptr %l178, !tbaa !21
  %t433 = load i32, ptr %l176, !tbaa !23
  %t434 = ashr i32 %t433, 16
  %t436 = icmp eq i32 %t434, 1
  br i1 %t436, label %bb88, label %bb89
bb88:
  call void @__olang_errpay_pop()
  br label %bb89
bb89:
  br label %bb90
bb90:
  store i64 1, ptr %l171, !tbaa !24
  br label %bb95
bb91:
  %t438 = load i64, ptr %l181, !tbaa !24
  store i64 %t438, ptr %l171, !tbaa !24
  br label %bb95
bb92:
  %t439 = load i32, ptr %l182, !tbaa !23
  %t440 = ashr i32 %t439, 16
  %t442 = icmp eq i32 %t440, 1
  store i1 %t442, ptr %l184, !tbaa !21
  %t443 = load i32, ptr %l182, !tbaa !23
  %t444 = ashr i32 %t443, 16
  %t446 = icmp eq i32 %t444, 1
  br i1 %t446, label %bb93, label %bb94
bb93:
  call void @__olang_errpay_pop()
  br label %bb94
bb94:
  br label %bb90
bb95:
  %t448 = load i64, ptr %l171, !tbaa !24
  %t449 = icmp sle i64 %t448, 2
  br i1 %t449, label %bb96, label %bb97
bb96:
  store %olang.scope zeroinitializer, ptr %s13
  store ptr %l8, ptr %l188, !tbaa !29
  %t451 = ptrtoint ptr %s0 to i64
  store i64 %t451, ptr %l189, !tbaa !24
  %t452 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t452, label %bb98, label %bb99
bb97:
  br label %bb102
bb98:
  %t454 = call ptr @__olang_region_make(ptr %s0)
  %t455 = ptrtoint ptr %t454 to i64
  store i64 %t455, ptr %l189, !tbaa !24
  br label %bb99
bb99:
  %t456 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t456, ptr %l191, !tbaa !27
  %t457 = load i64, ptr %l20, !tbaa !24
  %t459 = add i64 %t457, 1
  store i64 %t459, ptr %l193, !tbaa !24
  %t460 = load ptr, ptr %l19, !tbaa !29
  %t462 = call { i64, ptr } @compiler_2flsp_2estr(ptr %s5, ptr %s13, ptr %s13, ptr %t460, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d181, i32 0, i32 1) })
  store { i64, ptr } %t462, ptr %l195
  br label %bb100
bb100:
  %t463 = load { i64, ptr }, ptr %l191, !tbaa !27
  %t464 = extractvalue { i64, ptr } %t463, 1
  %t465 = extractvalue { i64, ptr } %t463, 0
  %t466 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d182, i32 0, i32 1) }, 1
  %t467 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d182, i32 0, i32 1) }, 0
  %t468 = add i64 %t465, %t467
  %t469 = load i64, ptr %l193, !tbaa !24
  %t470 = call i64 @__olang_fmt_i64(ptr null, i64 %t469)
  %t471 = add i64 %t468, %t470
  %t472 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d182, i32 0, i32 1) }, 1
  %t473 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d182, i32 0, i32 1) }, 0
  %t474 = add i64 %t471, %t473
  %t475 = load { i64, ptr }, ptr %l195, !tbaa !27
  %t476 = extractvalue { i64, ptr } %t475, 1
  %t477 = extractvalue { i64, ptr } %t475, 0
  %t478 = add i64 %t474, %t477
  %t479 = load i64, ptr %l189
  %t480 = inttoptr i64 %t479 to ptr
  %t481 = call ptr @__olang_scope_alloc(ptr %t480, i64 %t478)
  call void @olang_textcopy(ptr %t481, ptr %t464, i64 %t465)
  %t482 = getelementptr i8, ptr %t481, i64 %t465
  call void @olang_textcopy(ptr %t482, ptr %t466, i64 %t467)
  %t483 = getelementptr i8, ptr %t482, i64 %t467
  %t484 = call i64 @__olang_fmt_i64(ptr %t483, i64 %t469)
  %t485 = getelementptr i8, ptr %t483, i64 %t470
  call void @olang_textcopy(ptr %t485, ptr %t472, i64 %t473)
  %t486 = getelementptr i8, ptr %t485, i64 %t473
  call void @olang_textcopy(ptr %t486, ptr %t476, i64 %t477)
  %t487 = insertvalue { i64, ptr } undef, i64 %t478, 0
  %t488 = insertvalue { i64, ptr } %t487, ptr %t481, 1
  %t490 = load i64, ptr %l189
  %t491 = inttoptr i64 %t490 to ptr
  %t492 = extractvalue { i64, ptr } %t488, 0
  %t493 = extractvalue { i64, ptr } %t488, 1
  %t494 = mul i64 %t492, 1
  %t495 = call ptr @__olang_scope_alloc(ptr %t491, i64 %t494)
  call void @llvm.memcpy.p0.p0.i64(ptr %t495, ptr %t493, i64 %t494, i1 false)
  %t496 = insertvalue { i64, ptr } undef, i64 %t492, 0
  %t497 = insertvalue { i64, ptr } %t496, ptr %t495, 1
  %t498 = load ptr, ptr %l188, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t498, { i64, ptr } %t497)
  br label %bb101
bb101:
  call void @__olang_scope_close(ptr %s13)
  br label %bb102
bb102:
  call void @__olang_scope_close(ptr %s12)
  br label %bb103
bb103:
  %t500 = load i64, ptr %l17, !tbaa !24
  %t502 = add i64 %t500, 1
  store i64 %t502, ptr %l17, !tbaa !24
  br label %bb64
bb104:
  call void @__olang_scope_close(ptr %s5)
  br label %bb105
bb105:
  %t504 = load i64, ptr %l10, !tbaa !24
  %t506 = add i64 %t504, 1
  store i64 %t506, ptr %l10, !tbaa !24
  br label %bb28
bb106:
  call void @__olang_scope_close(ptr %s4)
  %t508 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_183, 0
  %t509 = insertvalue { ptr, ptr } %t508, ptr null, 1
  %t512 = extractvalue { ptr, ptr } %t509, 0
  %t513 = extractvalue { ptr, ptr } %t509, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H1642129570dad448bb7dcc47c334de83(ptr %s0, ptr %s0, ptr %l8, ptr %t512, ptr %t513)
  br label %bb107
bb107:
  %t515 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %s0, ptr %s0, ptr %v2, ptr %l8, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d184, i32 0, i32 1) })
  store { i64, ptr } %t515, ptr %l205
  br label %bb108
bb108:
  %t516 = getelementptr %"std/os:Output", ptr %l7, i32 0, i32 2
  %t517 = load { i64, ptr }, ptr %t516, !tbaa !27
  %t519 = load { i64, ptr }, ptr %l205, !tbaa !27
  %t520 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t519, 0
  %t522 = insertvalue { { i64, ptr }, { i64, ptr } } %t520, { i64, ptr } %t517, 1
  store { { i64, ptr }, { i64, ptr } } %t522, ptr %l208
  %t523 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l208, i32 0, i32 1
  %t524 = load { i64, ptr }, ptr %t523, !tbaa !27
  store { i64, ptr } %t524, ptr %l209, !tbaa !27
  %t525 = load { i64, ptr }, ptr %l209, !tbaa !27
  %t526 = extractvalue { i64, ptr } %t525, 0
  store i64 %t526, ptr %l210, !tbaa !24
  %t527 = load i64, ptr %l210, !tbaa !24
  %t528 = mul i64 %t527, 1
  %t529 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t528)
  %t530 = insertvalue { i64, ptr } undef, i64 %t527, 0
  %t531 = insertvalue { i64, ptr } %t530, ptr %t529, 1
  store { i64, ptr } %t531, ptr %l211, !tbaa !27
  %t532 = getelementptr { i64, ptr }, ptr %l211, i32 0, i32 1
  %t533 = load ptr, ptr %t532, !tbaa !27
  %t534 = getelementptr { i64, ptr }, ptr %l209, i32 0, i32 1
  %t535 = load ptr, ptr %t534, !tbaa !27
  %t536 = load i64, ptr %l210, !tbaa !24
  %t537 = mul i64 %t536, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t533, ptr %t535, i64 %t537, i1 false)
  %t538 = load { i64, ptr }, ptr %l211, !tbaa !27
  %t539 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l208, i32 0, i32 1
  store { i64, ptr } %t538, ptr %t539, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t540 = load { { i64, ptr }, { i64, ptr } }, ptr %l208
  store { { i64, ptr }, { i64, ptr } } %t540, ptr %rv
  br label %ret
ret:
  %rr = load { { i64, ptr }, { i64, ptr } }, ptr %rv
  ret { { i64, ptr }, { i64, ptr } } %rr
}

define dso_local { i64, ptr } @compiler_2flsp_2epublish(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca %"std/prelude/text:StringBuilder"
  %l12 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l3
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l3
  store %"std/prelude/text:StringBuilder" %t2, ptr %l2
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l2, { i64, ptr } { i64 76, ptr getelementptr inbounds (<{ i64, [76 x i8] }>, ptr @.d185, i32 0, i32 1) })
  br label %bb2
bb2:
  call void @compiler_2fsession_2eJsonStr(ptr %s0, ptr %v0, ptr %l2, { i64, ptr } %a0)
  br label %bb3
bb3:
  %t8 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d186, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d186, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a1, 1
  %t12 = extractvalue { i64, ptr } %a1, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d187, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d187, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t17 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t16)
  call void @olang_textcopy(ptr %t17, ptr %t8, i64 %t9)
  %t18 = getelementptr i8, ptr %t17, i64 %t9
  call void @olang_textcopy(ptr %t18, ptr %t11, i64 %t12)
  %t19 = getelementptr i8, ptr %t18, i64 %t12
  call void @olang_textcopy(ptr %t19, ptr %t14, i64 %t15)
  %t20 = insertvalue { i64, ptr } undef, i64 %t16, 0
  %t21 = insertvalue { i64, ptr } %t20, ptr %t17, 1
  %t23 = extractvalue { i64, ptr } %t21, 0
  %t24 = extractvalue { i64, ptr } %t21, 1
  %t25 = mul i64 %t23, 1
  %t26 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t25)
  call void @llvm.memcpy.p0.p0.i64(ptr %t26, ptr %t24, i64 %t25, i1 false)
  %t27 = insertvalue { i64, ptr } undef, i64 %t23, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t26, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l2, { i64, ptr } %t28)
  br label %bb4
bb4:
  %t32 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v2, ptr %l2)
  store { i64, ptr } %t32, ptr %l12
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  %t33 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t33, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2flsp_2ereply(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d188, i32 0, i32 1) }, 1
  %t4 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d188, i32 0, i32 1) }, 0
  %t6 = extractvalue { i64, ptr } %a0, 1
  %t7 = extractvalue { i64, ptr } %a0, 0
  %t8 = add i64 %t4, %t7
  %t9 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d189, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d189, i32 0, i32 1) }, 0
  %t11 = add i64 %t8, %t10
  %t13 = extractvalue { i64, ptr } %a1, 1
  %t14 = extractvalue { i64, ptr } %a1, 0
  %t15 = add i64 %t11, %t14
  %t16 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d190, i32 0, i32 1) }, 1
  %t17 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d190, i32 0, i32 1) }, 0
  %t18 = add i64 %t15, %t17
  %t19 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t18)
  call void @olang_textcopy(ptr %t19, ptr %t3, i64 %t4)
  %t20 = getelementptr i8, ptr %t19, i64 %t4
  call void @olang_textcopy(ptr %t20, ptr %t6, i64 %t7)
  %t21 = getelementptr i8, ptr %t20, i64 %t7
  call void @olang_textcopy(ptr %t21, ptr %t9, i64 %t10)
  %t22 = getelementptr i8, ptr %t21, i64 %t10
  call void @olang_textcopy(ptr %t22, ptr %t13, i64 %t14)
  %t23 = getelementptr i8, ptr %t22, i64 %t14
  call void @olang_textcopy(ptr %t23, ptr %t16, i64 %t17)
  %t24 = insertvalue { i64, ptr } undef, i64 %t18, 0
  %t25 = insertvalue { i64, ptr } %t24, ptr %t19, 1
  store { i64, ptr } %t25, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2flsp_2eseverityOf(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l2 = alloca i1
  %l3 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call i1 @compiler_2fdiag_2eUntidy(ptr %v0, { i64, ptr } %a0)
  store i1 %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load i1, ptr %l2, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  store i64 2, ptr %l3, !tbaa !24
  br label %bb4
bb3:
  store i64 1, ptr %l3, !tbaa !24
  br label %bb4
bb4:
  %t5 = load i64, ptr %l3, !tbaa !24
  store i64 %t5, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2flsp_2estr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l6 = alloca i32
  %l8 = alloca i1
  %l11 = alloca { i64, ptr }
  %l12 = alloca i32
  %l14 = alloca i1
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %v1, ptr %v0, ptr %a0, { i64, ptr } %a1)
  %t6 = extractvalue { i32, ptr } %t5, 1
  %t7 = extractvalue { i32, ptr } %t5, 0
  store i32 %t7, ptr %l6
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb2, label %ok.9, !prof !99
ok.9:
  store ptr %t6, ptr %l5
  br label %bb1
bb1:
  %t10 = load ptr, ptr %l5, !tbaa !29
  %t11 = call { i32, { i64, ptr } } @std_2fjson_2estd_2fjson_3aJson_2eAsStr(ptr %v0, ptr %v2, ptr %t10)
  %t12 = extractvalue { i32, { i64, ptr } } %t11, 1
  %t13 = extractvalue { i32, { i64, ptr } } %t11, 0
  store i32 %t13, ptr %l12
  %t14 = icmp ne i32 %t13, 0
  br i1 %t14, label %bb7, label %ok.15, !prof !99
ok.15:
  store { i64, ptr } %t12, ptr %l11
  br label %bb6
bb2:
  %t16 = load i32, ptr %l6, !tbaa !23
  %t17 = ashr i32 %t16, 16
  %t19 = icmp eq i32 %t17, 1
  store i1 %t19, ptr %l8, !tbaa !21
  %t20 = load i32, ptr %l6, !tbaa !23
  %t21 = ashr i32 %t20, 16
  %t23 = icmp eq i32 %t21, 1
  br i1 %t23, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d191, i32 0, i32 1) }, ptr %l2, !tbaa !27
  br label %bb10
bb6:
  %t25 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t25, ptr %l2, !tbaa !27
  br label %bb10
bb7:
  %t26 = load i32, ptr %l12, !tbaa !23
  %t27 = ashr i32 %t26, 16
  %t29 = icmp eq i32 %t27, 1
  store i1 %t29, ptr %l14, !tbaa !21
  %t30 = load i32, ptr %l12, !tbaa !23
  %t31 = ashr i32 %t30, 16
  %t33 = icmp eq i32 %t31, 1
  br i1 %t33, label %bb8, label %bb9
bb8:
  call void @__olang_errpay_pop()
  br label %bb9
bb9:
  br label %bb5
bb10:
  %t35 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t35, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2flsp_3aDoc_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca %"std/prelude/text:StringBuilder"
  %l7 = alloca i1
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca i64
  %l15 = alloca %"std/prelude/text:StringBuilder"
  %l17 = alloca i64
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l21 = alloca i64
  %l23 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l25 = alloca %"compiler/lsp:Doc"
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a0, ptr %l3, !tbaa !27
  store { i64, ptr } %a1, ptr %l4, !tbaa !27
  store { i64, ptr } %a2, ptr %l5, !tbaa !27
  %t7 = ptrtoint ptr %v3 to i64
  store i64 %t7, ptr %l13, !tbaa !24
  %t8 = load i1, ptr @olang_2esole_2ecompiler_2flsp_3aDoc_2e3
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = call ptr @__olang_region_make(ptr %v3)
  %t11 = ptrtoint ptr %t10 to i64
  store i64 %t11, ptr %l13, !tbaa !24
  br label %bb2
bb2:
  %t12 = load i64, ptr %l13
  %t13 = inttoptr i64 %t12 to ptr
  %t14 = call %"std/prelude/text:StringBuilder" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2ftext_3aStringBuilder(ptr %t13)
  store %"std/prelude/text:StringBuilder" %t14, ptr %l15
  br label %bb3
bb3:
  %t15 = load i1, ptr @olang_2esole_2ecompiler_2flsp_3aDoc_2e3
  br i1 %t15, label %bb4, label %bb5
bb4:
  %t17 = load i64, ptr %l13
  %t18 = inttoptr i64 %t17 to ptr
  %t19 = getelementptr %"std/prelude/text:StringBuilder", ptr %l15, i32 0, i32 0
  %t20 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t19, i32 0, i32 0
  %t21 = load { i64, ptr }, ptr %t20
  %t22 = extractvalue { i64, ptr } %t21, 1
  %t23 = call ptr @__olang_region_or(ptr %t22, ptr null)
  %t24 = call ptr @__olang_region_home(ptr %t23)
  %t25 = icmp ne ptr %t24, null
  %t26 = select i1 %t25, ptr %t24, ptr null
  %t27 = icmp eq ptr %t26, %t18
  call void @__olang_region_settle(ptr %t18, i1 %t27)
  br label %bb5
bb5:
  %t28 = load %"std/prelude/text:StringBuilder", ptr %l15
  store %"std/prelude/text:StringBuilder" %t28, ptr %l6
  store i1 true, ptr %l7, !tbaa !21
  %t29 = ptrtoint ptr %v3 to i64
  store i64 %t29, ptr %l17, !tbaa !24
  %t30 = load i1, ptr @olang_2esole_2ecompiler_2flsp_3aDoc_2e5
  br i1 %t30, label %bb6, label %bb7
bb6:
  %t32 = call ptr @__olang_region_make(ptr %v3)
  %t33 = ptrtoint ptr %t32 to i64
  store i64 %t33, ptr %l17, !tbaa !24
  br label %bb7
bb7:
  %t34 = load i64, ptr %l17
  %t35 = inttoptr i64 %t34 to ptr
  %t36 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t35, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t36, ptr %l19
  br label %bb8
bb8:
  %t37 = load i1, ptr @olang_2esole_2ecompiler_2flsp_3aDoc_2e5
  br i1 %t37, label %bb9, label %bb10
bb9:
  %t39 = load i64, ptr %l17
  %t40 = inttoptr i64 %t39 to ptr
  %t41 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19, i32 0, i32 0
  %t42 = load { i64, ptr }, ptr %t41
  %t43 = extractvalue { i64, ptr } %t42, 1
  %t44 = call ptr @__olang_region_or(ptr %t43, ptr null)
  %t45 = call ptr @__olang_region_home(ptr %t44)
  %t46 = icmp ne ptr %t45, null
  %t47 = select i1 %t46, ptr %t45, ptr null
  %t48 = icmp eq ptr %t47, %t40
  call void @__olang_region_settle(ptr %t40, i1 %t48)
  br label %bb10
bb10:
  %t49 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t49, ptr %l8
  %t50 = ptrtoint ptr %v3 to i64
  store i64 %t50, ptr %l21, !tbaa !24
  %t51 = load i1, ptr @olang_2esole_2ecompiler_2flsp_3aDoc_2e6
  br i1 %t51, label %bb11, label %bb12
bb11:
  %t53 = call ptr @__olang_region_make(ptr %v3)
  %t54 = ptrtoint ptr %t53 to i64
  store i64 %t54, ptr %l21, !tbaa !24
  br label %bb12
bb12:
  %t55 = load i64, ptr %l21
  %t56 = inttoptr i64 %t55 to ptr
  %t57 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t56, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t57, ptr %l23
  br label %bb13
bb13:
  %t58 = load i1, ptr @olang_2esole_2ecompiler_2flsp_3aDoc_2e6
  br i1 %t58, label %bb14, label %bb15
bb14:
  %t60 = load i64, ptr %l21
  %t61 = inttoptr i64 %t60 to ptr
  %t62 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l23, i32 0, i32 0
  %t63 = load { i64, ptr }, ptr %t62
  %t64 = extractvalue { i64, ptr } %t63, 1
  %t65 = call ptr @__olang_region_or(ptr %t64, ptr null)
  %t66 = call ptr @__olang_region_home(ptr %t65)
  %t67 = icmp ne ptr %t66, null
  %t68 = select i1 %t67, ptr %t66, ptr null
  %t69 = icmp eq ptr %t68, %t61
  call void @__olang_region_settle(ptr %t61, i1 %t69)
  br label %bb15
bb15:
  %t70 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l23
  %t71 = getelementptr %"compiler/lsp:Doc", ptr %l25, i32 0, i32 0
  %t72 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t72, ptr %t71, !tbaa !27
  %t73 = getelementptr %"compiler/lsp:Doc", ptr %l25, i32 0, i32 1
  %t74 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t74, ptr %t73, !tbaa !27
  %t75 = getelementptr %"compiler/lsp:Doc", ptr %l25, i32 0, i32 2
  %t76 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t76, ptr %t75, !tbaa !27
  %t77 = getelementptr %"compiler/lsp:Doc", ptr %l25, i32 0, i32 3
  %t78 = load %"std/prelude/text:StringBuilder", ptr %l6
  store %"std/prelude/text:StringBuilder" %t78, ptr %t77
  %t79 = getelementptr %"compiler/lsp:Doc", ptr %l25, i32 0, i32 4
  %t80 = load i1, ptr %l7, !tbaa !21
  store i1 %t80, ptr %t79, !tbaa !21
  %t81 = getelementptr %"compiler/lsp:Doc", ptr %l25, i32 0, i32 5
  %t82 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t82, ptr %t81
  %t83 = getelementptr %"compiler/lsp:Doc", ptr %l25, i32 0, i32 6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t70, ptr %t83
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l25, i64 152, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flsp_3aServer_2ector(ptr %out, ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca i1
  %l4 = alloca %"compiler/lsp:Worker"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca i64
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca %"compiler/lsp:Worker"
  %l16 = alloca i64
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca i64
  %l22 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l24 = alloca %"compiler/lsp:Server"
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l1, !tbaa !29
  %t3 = ptrtoint ptr %v1 to i64
  store i64 %t3, ptr %l11, !tbaa !24
  %t4 = load i1, ptr @olang_2esole_2ecompiler_2flsp_3aServer_2e1
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = call ptr @__olang_region_make(ptr %v1)
  %t7 = ptrtoint ptr %t6 to i64
  store i64 %t7, ptr %l11, !tbaa !24
  br label %bb2
bb2:
  %t8 = load i64, ptr %l11
  %t9 = inttoptr i64 %t8 to ptr
  %t10 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2ector(ptr %t9, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %l13
  br label %bb3
bb3:
  %t11 = load i1, ptr @olang_2esole_2ecompiler_2flsp_3aServer_2e1
  br i1 %t11, label %bb4, label %bb5
bb4:
  %t13 = load i64, ptr %l11
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13, i32 0, i32 0
  %t16 = load { i64, ptr }, ptr %t15
  %t17 = extractvalue { i64, ptr } %t16, 1
  %t18 = call ptr @__olang_region_or(ptr %t17, ptr null)
  %t19 = call ptr @__olang_region_home(ptr %t18)
  %t20 = icmp ne ptr %t19, null
  %t21 = select i1 %t20, ptr %t19, ptr null
  %t22 = icmp eq ptr %t21, %t14
  call void @__olang_region_settle(ptr %t14, i1 %t22)
  br label %bb5
bb5:
  %t23 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t23, ptr %l2
  store i1 false, ptr %l3, !tbaa !21
  %t24 = call %"compiler/lsp:Worker" @compiler_2flsp_3aWorker_2ector(ptr %v1)
  store %"compiler/lsp:Worker" %t24, ptr %l15
  br label %bb6
bb6:
  %t25 = load %"compiler/lsp:Worker", ptr %l15
  store %"compiler/lsp:Worker" %t25, ptr %l4
  %t26 = ptrtoint ptr %v1 to i64
  store i64 %t26, ptr %l16, !tbaa !24
  %t27 = load i1, ptr @olang_2esole_2ecompiler_2flsp_3aServer_2e4
  br i1 %t27, label %bb7, label %bb8
bb7:
  %t29 = call ptr @__olang_region_make(ptr %v1)
  %t30 = ptrtoint ptr %t29 to i64
  store i64 %t30, ptr %l16, !tbaa !24
  br label %bb8
bb8:
  %t31 = load i64, ptr %l16
  %t32 = inttoptr i64 %t31 to ptr
  %t33 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t32, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t33, ptr %l18
  br label %bb9
bb9:
  %t34 = load i1, ptr @olang_2esole_2ecompiler_2flsp_3aServer_2e4
  br i1 %t34, label %bb10, label %bb11
bb10:
  %t36 = load i64, ptr %l16
  %t37 = inttoptr i64 %t36 to ptr
  %t38 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18, i32 0, i32 0
  %t39 = load { i64, ptr }, ptr %t38
  %t40 = extractvalue { i64, ptr } %t39, 1
  %t41 = call ptr @__olang_region_or(ptr %t40, ptr null)
  %t42 = call ptr @__olang_region_home(ptr %t41)
  %t43 = icmp ne ptr %t42, null
  %t44 = select i1 %t43, ptr %t42, ptr null
  %t45 = icmp eq ptr %t44, %t37
  call void @__olang_region_settle(ptr %t37, i1 %t45)
  br label %bb11
bb11:
  %t46 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t46, ptr %l5
  %t47 = ptrtoint ptr %v1 to i64
  store i64 %t47, ptr %l20, !tbaa !24
  %t48 = load i1, ptr @olang_2esole_2ecompiler_2flsp_3aServer_2e5
  br i1 %t48, label %bb12, label %bb13
bb12:
  %t50 = call ptr @__olang_region_make(ptr %v1)
  %t51 = ptrtoint ptr %t50 to i64
  store i64 %t51, ptr %l20, !tbaa !24
  br label %bb13
bb13:
  %t52 = load i64, ptr %l20
  %t53 = inttoptr i64 %t52 to ptr
  %t54 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t53, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t54, ptr %l22
  br label %bb14
bb14:
  %t55 = load i1, ptr @olang_2esole_2ecompiler_2flsp_3aServer_2e5
  br i1 %t55, label %bb15, label %bb16
bb15:
  %t57 = load i64, ptr %l20
  %t58 = inttoptr i64 %t57 to ptr
  %t59 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l22, i32 0, i32 0
  %t60 = load { i64, ptr }, ptr %t59
  %t61 = extractvalue { i64, ptr } %t60, 1
  %t62 = call ptr @__olang_region_or(ptr %t61, ptr null)
  %t63 = call ptr @__olang_region_home(ptr %t62)
  %t64 = icmp ne ptr %t63, null
  %t65 = select i1 %t64, ptr %t63, ptr null
  %t66 = icmp eq ptr %t65, %t58
  call void @__olang_region_settle(ptr %t58, i1 %t66)
  br label %bb16
bb16:
  %t67 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l22
  %t68 = getelementptr %"compiler/lsp:Server", ptr %l24, i32 0, i32 0
  %t69 = load ptr, ptr %l1, !tbaa !29
  store ptr %t69, ptr %t68, !tbaa !29
  %t70 = getelementptr %"compiler/lsp:Server", ptr %l24, i32 0, i32 1
  %t71 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t71, ptr %t70
  %t72 = getelementptr %"compiler/lsp:Server", ptr %l24, i32 0, i32 2
  %t73 = load i1, ptr %l3, !tbaa !21
  store i1 %t73, ptr %t72, !tbaa !21
  %t74 = getelementptr %"compiler/lsp:Server", ptr %l24, i32 0, i32 3
  %t75 = load %"compiler/lsp:Worker", ptr %l4
  store %"compiler/lsp:Worker" %t75, ptr %t74
  %t76 = getelementptr %"compiler/lsp:Server", ptr %l24, i32 0, i32 4
  %t77 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t77, ptr %t76
  %t78 = getelementptr %"compiler/lsp:Server", ptr %l24, i32 0, i32 5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t67, ptr %t78
  %t80 = getelementptr %"compiler/lsp:Server", ptr %l24, i32 0, i32 6
  store i64 0, ptr %t80, !tbaa !24
  %t82 = getelementptr %"compiler/lsp:Server", ptr %l24, i32 0, i32 7
  store i1 false, ptr %t82, !tbaa !21
  %t84 = getelementptr %"compiler/lsp:Server", ptr %l24, i32 0, i32 8
  store i1 false, ptr %t84, !tbaa !21
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l24, i64 152, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/lsp:Worker" @compiler_2flsp_3aWorker_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"compiler/lsp:Worker"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"compiler/lsp:Worker" undef, i32 -1, 0
  %t4 = insertvalue %"compiler/lsp:Worker" %t2, i32 -1, 1
  %t6 = insertvalue %"compiler/lsp:Worker" %t4, ptr null, 2
  %t8 = insertvalue %"compiler/lsp:Worker" %t6, i64 0, 3
  store %"compiler/lsp:Worker" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/lsp:Worker", ptr %rv
  ret %"compiler/lsp:Worker" %rr
}

define dso_local %"compiler/lsp:worker" @compiler_2flsp_3aworker_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, i32 %a3) #0 {
entry:
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca i32
  %l15 = alloca i64
  %l17 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"compiler/lsp:worker"
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l4, !tbaa !29
  store ptr %a1, ptr %l5, !tbaa !29
  store i32 %a2, ptr %l6, !tbaa !23
  store i32 %a3, ptr %l7, !tbaa !23
  %t9 = ptrtoint ptr %v2 to i64
  store i64 %t9, ptr %l15, !tbaa !24
  %t10 = load i1, ptr @olang_2esole_2ecompiler_2flsp_3aworker_2e4
  br i1 %t10, label %bb1, label %bb2
bb1:
  %t12 = call ptr @__olang_region_make(ptr %v2)
  %t13 = ptrtoint ptr %t12 to i64
  store i64 %t13, ptr %l15, !tbaa !24
  br label %bb2
bb2:
  %t14 = load i64, ptr %l15
  %t15 = inttoptr i64 %t14 to ptr
  %t16 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aStr_H4eff2894ad89de6e140d6d54faebb689(ptr %t15)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t16, ptr %l17
  br label %bb3
bb3:
  %t17 = load i1, ptr @olang_2esole_2ecompiler_2flsp_3aworker_2e4
  br i1 %t17, label %bb4, label %bb5
bb4:
  %t19 = load i64, ptr %l15
  %t20 = inttoptr i64 %t19 to ptr
  %t21 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l17, i32 0, i32 2
  %t22 = load { i64, ptr }, ptr %t21
  %t23 = extractvalue { i64, ptr } %t22, 1
  %t24 = call ptr @__olang_region_or(ptr %t23, ptr null)
  %t25 = call ptr @__olang_region_home(ptr %t24)
  %t26 = icmp ne ptr %t25, null
  %t27 = select i1 %t26, ptr %t25, ptr null
  %t28 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l17, i32 0, i32 1
  %t29 = load { i64, ptr }, ptr %t28
  %t30 = extractvalue { i64, ptr } %t29, 1
  %t31 = call ptr @__olang_region_or(ptr %t30, ptr null)
  %t32 = call ptr @__olang_region_home(ptr %t31)
  %t33 = icmp ne ptr %t32, null
  %t34 = select i1 %t33, ptr %t32, ptr %t27
  %t35 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l17, i32 0, i32 0
  %t36 = load { i64, ptr }, ptr %t35
  %t37 = extractvalue { i64, ptr } %t36, 1
  %t38 = call ptr @__olang_region_or(ptr %t37, ptr null)
  %t39 = call ptr @__olang_region_home(ptr %t38)
  %t40 = icmp ne ptr %t39, null
  %t41 = select i1 %t40, ptr %t39, ptr %t34
  %t42 = icmp eq ptr %t41, %t20
  call void @__olang_region_settle(ptr %t20, i1 %t42)
  br label %bb5
bb5:
  %t43 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l17
  %t44 = load ptr, ptr %l4, !tbaa !29
  %t45 = insertvalue %"compiler/lsp:worker" undef, ptr %t44, 0
  %t46 = load ptr, ptr %l5, !tbaa !29
  %t47 = insertvalue %"compiler/lsp:worker" %t45, ptr %t46, 1
  %t48 = load i32, ptr %l6, !tbaa !23
  %t49 = insertvalue %"compiler/lsp:worker" %t47, i32 %t48, 2
  %t50 = load i32, ptr %l7, !tbaa !23
  %t51 = insertvalue %"compiler/lsp:worker" %t49, i32 %t50, 3
  %t53 = insertvalue %"compiler/lsp:worker" %t51, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t43, 4
  %t55 = insertvalue %"compiler/lsp:worker" %t53, ptr null, 5
  %t57 = insertvalue %"compiler/lsp:worker" %t55, i64 -1, 6
  store %"compiler/lsp:worker" %t57, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/lsp:worker", ptr %rv
  ret %"compiler/lsp:worker" %rr
}

@.d0 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"file://" }>, align 8
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
@.d1 = private constant <{ i64, [49 x i8] }> <{ i64 0, [49 x i8] c"checking took more than a minute - it was stopped" }>, align 8
@.d2 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"file://" }>, align 8
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@.d3 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"%" }>, align 8
@.d4 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"cd " }>, align 8
@.d5 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" && " }>, align 8
@.d6 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c" build main.olang 2>&1" }>, align 8
@.d7 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"sh" }>, align 8
@.d8 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-c" }>, align 8
@.d9 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d10 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare void @__olang_errpay_pop()
@.d11 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"olang build did not run" }>, align 8
declare void @__olang_check_failed_text(ptr, { i64, ptr }) cold noreturn
@.d12 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c": error[" }>, align 8
@.d13 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d14 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"]" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d15 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
define internal i1 @olang_lambda_16(ptr %env, ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l4 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLess(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
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

@.d17 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d18 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"OLANG" }>, align 8
@.d19 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d20 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d21 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d22 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"/build/olang" }>, align 8
@.d23 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@olang_2esole_2eArray_3cmut_20compiler_2flsp_3aDoc_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
@.d24 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"[]" }>, align 8
@.d25 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"[]" }>, align 8
@.d26 = private constant <{ i64, [49 x i8] }> <{ i64 0, [49 x i8] c"checking took more than a minute - it was stopped" }>, align 8
@.d27 = private constant <{ i64, [43 x i8] }> <{ i64 0, [43 x i8] c"the compiler ended while checking this file" }>, align 8
@olang_2esole_2ecompiler__2flsp__2ecompiler__2flsp__3aServer__2efromWorker_2elocal_2e2 = weak hidden constant i1 false
@.d28 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"the compiler ended (" }>, align 8
@.d29 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c") while checking this file" }>, align 8
declare void @__olang_region_settle(ptr, i1)
declare void @__olang_region_release(ptr) noinline
@.d30 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"{\22olang\22:" }>, align 8
@.d31 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"{\22jsonrpc\22:\222.0\22,\22id\22:" }>, align 8
@.d32 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d33 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"the message is not JSON" }>, align 8
@.d34 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"method" }>, align 8
@.d35 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"initialize" }>, align 8
@.d36 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"initialized" }>, align 8
@.d37 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"$/cancelRequest" }>, align 8
@.d38 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"$/setTrace" }>, align 8
@.d39 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"textDocument/didSave" }>, align 8
@.d40 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"shutdown" }>, align 8
@.d41 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d42 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"exit" }>, align 8
@.d43 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"textDocument/didOpen" }>, align 8
@.d44 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"params" }>, align 8
@.d45 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"textDocument" }>, align 8
@.d46 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"uri" }>, align 8
@.d47 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"text" }>, align 8
@.d48 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"textDocument/didChange" }>, align 8
@.d49 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"params" }>, align 8
@.d50 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"textDocument" }>, align 8
@.d51 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"uri" }>, align 8
@.d52 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"contentChanges" }>, align 8
@.d53 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"text" }>, align 8
@.d54 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"textDocument/didClose" }>, align 8
@.d55 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"params" }>, align 8
@.d56 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"textDocument" }>, align 8
@.d57 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"uri" }>, align 8
@.d58 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@__olang_prog_scope = external thread_local(initialexec) global ptr
@.d59 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"olang lsp has no " }>, align 8
@.d60 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"params" }>, align 8
@.d61 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"capabilities" }>, align 8
@.d62 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"general" }>, align 8
@.d63 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"positionEncodings" }>, align 8
@__olang_empty_array = external constant [16 x i64]
@.d64 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d65 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"utf-8" }>, align 8
@.d66 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"utf-8" }>, align 8
@.d67 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"utf-16" }>, align 8
@.d68 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"{\22positionEncoding\22:\22" }>, align 8
@.d69 = private constant <{ i64, [39 x i8] }> <{ i64 0, [39 x i8] c"\22,\22textDocumentSync\22:{\22openClose\22:true," }>, align 8
@.d70 = private constant <{ i64, [89 x i8] }> <{ i64 0, [89 x i8] c"\22change\22:1},\22hoverProvider\22:true,\22definitionProvider\22:true,\22documentSymbolProvider\22:true," }>, align 8
@.d71 = private constant <{ i64, [83 x i8] }> <{ i64 0, [83 x i8] c"\22completionProvider\22:{\22triggerCharacters\22:[\22.\22]},\22documentFormattingProvider\22:true}" }>, align 8
@.d72 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"{\22capabilities\22:" }>, align 8
@.d73 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c",\22serverInfo\22:{\22name\22:\22olang\22}}" }>, align 8
@.d74 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"slot" }>, align 8
@.d75 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"deps" }>, align 8
@.d76 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"foreign" }>, align 8
@.d77 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2flsp_3aDoc_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2flsp_3aDoc_2e0 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2flsp_3aDoc_2e1 = weak hidden constant i1 false
declare ptr @__olang_scope_or(ptr, ptr)
@olang_2esole_2ecompiler_2flsp_3aWorker_2e2 = weak hidden constant i1 false
declare i64 @__olang_fmt_i64(ptr, i64)
@.d78 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"the files changed" }>, align 8
@.d79 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20st_Ha3f33285783aff10f13cf80b683d8c03 = weak hidden constant i1 false
@.d80 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"method" }>, align 8
@.d81 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"params" }>, align 8
@.d82 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d83 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"textDocument" }>, align 8
@.d84 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"uri" }>, align 8
@.d85 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d86 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d87 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"position" }>, align 8
@.d88 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"line" }>, align 8
@.d89 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"position" }>, align 8
@.d90 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"character" }>, align 8
@.d91 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"textDocument/formatting" }>, align 8
@.d92 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d93 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"[]" }>, align 8
@.d94 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"[{\22range\22:" }>, align 8
@.d95 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c",\22newText\22:" }>, align 8
@.d96 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"}]" }>, align 8
@.d97 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"textDocument/completion" }>, align 8
@.d98 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"textDocument/documentSymbol" }>, align 8
@.d99 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"[]" }>, align 8
@.d100 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d101 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"textDocument/hover" }>, align 8
@.d102 = private constant <{ i64, [39 x i8] }> <{ i64 0, [39 x i8] c"{\22contents\22:{\22kind\22:\22markdown\22,\22value\22:" }>, align 8
@.d103 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"}}" }>, align 8
@.d104 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d105 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d106 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"{\22uri\22:" }>, align 8
@.d107 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c",\22range\22:" }>, align 8
@olang_2esole_2ecompiler__2flsp__2ecompiler__2flsp__3aworker__2echeck_2elocal_2e7 = weak hidden constant i1 false
declare ptr @__olang_region_home(ptr)
declare void @__olang_region_drop(ptr) noinline
@.d108 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"{\22olang\22:\22checked\22,\22slot\22:" }>, align 8
@.d109 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c",\22deps\22:[" }>, align 8
@.d110 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"],\22foreign\22:[" }>, align 8
@.d111 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"]}" }>, align 8
@.d112 = private constant <{ i64, [39 x i8] }> <{ i64 0, [39 x i8] c"a parameter a promise word names (T21c)" }>, align 8
@.d113 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"{\22isIncomplete\22:false,\22items\22:[" }>, align 8
@.d114 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"]}" }>, align 8
@olang_2esole_2ecompiler_2fsession_3aPositions_2e0 = weak hidden constant i1 false
@.d115 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"{\22range\22:" }>, align 8
@.d116 = private constant <{ i64, [52 x i8] }> <{ i64 0, [52 x i8] c",\22severity\22:4,\22source\22:\22olang\22,\22tags\22:[2],\22message\22:" }>, align 8
@.d117 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"{\22range\22:" }>, align 8
@.d118 = private constant <{ i64, [54 x i8] }> <{ i64 0, [54 x i8] c",\22severity\22:4,\22source\22:\22olang\22,\22code\22:\22O27\22,\22message\22:" }>, align 8
@.d119 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"{\22range\22:" }>, align 8
@.d120 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c",\22severity\22:" }>, align 8
@.d121 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c",\22source\22:\22olang\22" }>, align 8
@.d122 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d123 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c",\22code\22:" }>, align 8
@.d124 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c",\22message\22:" }>, align 8
@.d125 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"{\22location\22:{\22uri\22:" }>, align 8
@.d126 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c",\22range\22:" }>, align 8
@.d127 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"},\22message\22:" }>, align 8
@.d128 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"help: " }>, align 8
@.d129 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c",\22relatedInformation\22:[" }>, align 8
@.d130 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"]" }>, align 8
@.d131 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler__2flsp__2ecompiler__2flsp__3aworker__2epublishAll_2elocal_2e16 = weak hidden constant i1 false
@olang_2esole_2ecompiler__2flsp__2ecompiler__2flsp__3aworker__2epublishAll_2elocal_2e25 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/text:StringBuilder" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2ftext_3aStringBuilder(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"std/prelude/text:StringBuilder"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %a0
  store %"std/prelude/text:StringBuilder" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/text:StringBuilder", ptr %l1, i32 0, i32 0
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"std/prelude/text:StringBuilder", ptr %l1, i32 0, i32 0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = load %"std/prelude/text:StringBuilder", ptr %l1
  store %"std/prelude/text:StringBuilder" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/text:StringBuilder", ptr %rv
  ret %"std/prelude/text:StringBuilder" %rr
}

@.d132 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"[" }>, align 8
@.d133 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"]" }>, align 8
@.d134 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"[" }>, align 8
@.d135 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"]" }>, align 8
@.d136 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"[]" }>, align 8
@.d137 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"{\22start\22:{\22line\22:" }>, align 8
@.d138 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c",\22character\22:0},\22end\22:{\22line\22:" }>, align 8
@.d139 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c",\22character\22:0}}" }>, align 8
@.d140 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d141 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d142 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d143 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"{\22jsonrpc\22:\222.0\22,\22id\22:" }>, align 8
@.d144 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c",\22error\22:{\22code\22:" }>, align 8
@.d145 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c",\22message\22:" }>, align 8
@.d146 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"}}" }>, align 8
@.d147 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"Content-Length: " }>, align 8
@.d148 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"\0D\0A\0D\0A" }>, align 8
@.d149 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"Content-Length: " }>, align 8
@.d150 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"\0D\0A\0D\0A" }>, align 8
@.d151 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"id" }>, align 8
@.d152 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d153 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d154 = private constant <{ i64, [89 x i8] }> <{ i64 0, [89 x i8] c"[{\22range\22:{\22start\22:{\22line\22:0,\22character\22:0},\22end\22:{\22line\22:0,\22character\22:0}},\22severity\22:1," }>, align 8
@.d155 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"\22source\22:\22olang\22,\22message\22:" }>, align 8
@.d156 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"olang: " }>, align 8
@.d157 = private constant <{ i64, [44 x i8] }> <{ i64 0, [44 x i8] c" - a bug in the compiler, not in the program" }>, align 8
@.d158 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"}]" }>, align 8
@.d159 = private constant <{ i64, [75 x i8] }> <{ i64 0, [75 x i8] c"{\22jsonrpc\22:\222.0\22,\22id\22:1,\22method\22:\22initialize\22,\22params\22:{\22capabilities\22:{}}}" }>, align 8
@.d160 = private constant <{ i64, [82 x i8] }> <{ i64 0, [82 x i8] c"{\22jsonrpc\22:\222.0\22,\22method\22:\22textDocument/didOpen\22,\22params\22:{\22textDocument\22:{\22uri\22:\22" }>, align 8
@.d161 = private constant <{ i64, [42 x i8] }> <{ i64 0, [42 x i8] c"\22,\22languageId\22:\22olang\22,\22version\22:1,\22text\22:" }>, align 8
@.d162 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"}}}" }>, align 8
@.d163 = private constant <{ i64, [44 x i8] }> <{ i64 0, [44 x i8] c"{\22jsonrpc\22:\222.0\22,\22id\22:2,\22method\22:\22shutdown\22}" }>, align 8
@.d164 = private constant <{ i64, [33 x i8] }> <{ i64 0, [33 x i8] c"{\22jsonrpc\22:\222.0\22,\22method\22:\22exit\22}" }>, align 8
@.d165 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"cd " }>, align 8
@.d166 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c" && OLANG_TOOL_LOG=1 " }>, align 8
@.d167 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" lsp" }>, align 8
@.d168 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"sh" }>, align 8
@.d169 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-c" }>, align 8
@.d170 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"olang lsp did not run" }>, align 8
@.d171 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"a message that is no JSON: " }>, align 8
@.d172 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"method" }>, align 8
@.d173 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"textDocument/publishDiagnostics" }>, align 8
@.d174 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"params" }>, align 8
@.d175 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"uri" }>, align 8
@.d176 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"diagnostics" }>, align 8
@.d177 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"range" }>, align 8
@.d178 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"start" }>, align 8
@.d179 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"line" }>, align 8
@.d180 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"severity" }>, align 8
@.d181 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"code" }>, align 8
@.d182 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
define internal i1 @olang_lambda_183(ptr %env, ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l4 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLess(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
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

@.d184 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d185 = private constant <{ i64, [76 x i8] }> <{ i64 0, [76 x i8] c"{\22jsonrpc\22:\222.0\22,\22method\22:\22textDocument/publishDiagnostics\22,\22params\22:{\22uri\22:" }>, align 8
@.d186 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c",\22diagnostics\22:" }>, align 8
@.d187 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"}}" }>, align 8
@.d188 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"{\22jsonrpc\22:\222.0\22,\22id\22:" }>, align 8
@.d189 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c",\22result\22:" }>, align 8
@.d190 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"}" }>, align 8
@.d191 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2flsp_3aDoc_2e3 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/text:StringBuilder" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2ftext_3aStringBuilder(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/text:StringBuilder"
  %rv = alloca %"std/prelude/text:StringBuilder"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l0
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l0
  store %"std/prelude/text:StringBuilder" %t2, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/text:StringBuilder", ptr %rv
  ret %"std/prelude/text:StringBuilder" %rr
}

@olang_2esole_2ecompiler_2flsp_3aDoc_2e5 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2flsp_3aDoc_2e6 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2flsp_3aServer_2e1 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2flsp_3aServer_2e4 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2flsp_3aServer_2e5 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2flsp_3aworker_2e4 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aStr_H4eff2894ad89de6e140d6d54faebb689(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0)
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
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %a0) #0 {
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

declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_6756d46c47226ab9_ec8477bb3ab165 = external constant [0 x i8]
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
@olang_loc_78ef8a2f2ef3c68c_b23277b974982b08 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %v0, i64 %a0)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v0, { i64, ptr } %a0, i64 %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2fsession_2eIgnoreBrokenPipes()
declare %"compiler/session:Reader" @compiler_2fsession_3aReader_2ector(ptr %v0, i32 %a0)
@olang_loc_28490b3d64df97fe_1fa673a94cf24522 = external constant [0 x i8]
declare i64 @std_2ftime_2eNow()
declare i64 @std_2fprelude_2fnumber_2eI64_2eMax_3cI64_3e(i64 %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
@olang_loc_d1a2ced90ae1fed3_af42112fabe41f37 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fsession_2eReadable(ptr %v0, ptr %v1, { i64, ptr } %a0, i32 %a1)
declare i1 @compiler_2fsession_2ecompiler_2fsession_3aReader_2eFill(ptr %v0, ptr %a0)
declare { i32, { i64, ptr } } @compiler_2fsession_2ecompiler_2fsession_3aReader_2eNext(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
declare { i64, ptr } @std_2fprelude_2ftext_2eU8_2eFormat(ptr %v0, i8 %a0, i64 %a1)
@olang_loc_b56467a85251252d_5a05a1cd484a3361 = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eToUpper(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2ePadStart(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i8 %a2)
@olang_loc_9a89dd98321aa7ad_4da0335a3873de71 = external constant [0 x i8]
declare { i64, ptr } @std_2fos_2eQuote(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, i1 %a2, { i64, ptr } %a3)
@olang_loc_15a00d37002b4239_21fefac552c9525d = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %v0, ptr %v1, ptr %a0)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_df0aeb6250e7481_26f5ec38bd691c8d = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare ptr @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eToVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_5f1d4675af139e82_e6710b64a8f7682e = external constant [0 x i8]
@olang_loc_ab8c4ea36668ab7f_3bb630bf34512b = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H1642129570dad448bb7dcc47c334de83(ptr %v0, ptr %v1, ptr %a0, ptr %a1c, ptr %a1e)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i32, { i64, ptr } } @std_2fos_2eCwd(ptr %v0)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eRemove_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eInsert_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fsession_2eWriteFramed(ptr %v0, i32 %a0, { i64, ptr } %a1)
declare void @compiler_2fsession_2eCloseFd(i32 %a0)
@olang_loc_a8eebe32341e04e6_239ed324021d536a = external constant [0 x i8]
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eAt__Ha6317692879988aa8c889b506af3dc4d(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eClear(ptr %v0, ptr %a0)
@olang_loc_43d07951ce1dba96_20fc5bf2a8432eaa = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eLen_Ha7d56d00f5631ac8d39ace71211767ab(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_824396f7e8872934_1f4412bc0bc5f5e0 = external constant [0 x i8]
declare i32 @compiler_2fsession_2eReap(i32 %a0)
declare { i64, ptr } @compiler_2fbuild_2eSignalName(ptr %v0, i32 %a0)
@olang_loc_b5606d6e3fe22ec3_be86f13ccb1ff2ff = external constant [0 x i8]
declare { i32, ptr } @std_2fjson_2eJson_2eParse(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i32, { i64, ptr } } @std_2fjson_2estd_2fjson_3aJson_2eAsArr(ptr %v0, ptr %v1, ptr %a0)
declare i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eHas_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_9565c00a3cf79970_b45483162fef2b54 = external constant [0 x i8]
declare { i32, { i64, ptr } } @std_2fjson_2estd_2fjson_3aJson_2eAsStr(ptr %v0, ptr %v1, ptr %a0)
declare { i32, i64 } @std_2fjson_2estd_2fjson_3aJson_2eAsInt(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H075fcab2d197e70ad987ab163aa86164(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2fsession_2eRealOf(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2ePus_H951db0fb6558bf39f52145a6692a11d3(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i32, i32 } @compiler_2fsession_2ePipe()
declare i32 @compiler_2fsession_2eFork()
declare void @compiler_2fsession_2eDup2(i32 %a0, i32 %a1)
declare void @compiler_2fsession_2eExit(i32 %a0)
@olang_loc_1521364e571a2f2d_bf1cb7a51b345899 = external constant [0 x i8]
declare void @compiler_2fsession_2eKillAndReap(i32 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6f7a2f8d839c49b6e7a19c287d4b190c(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
@olang_loc_cb6dbf061e2dce2f_dc463ae13d2c2fbb = external constant [0 x i8]
declare ptr @compiler_2fsession_2eAnalysis_2eAnalyze(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, ptr %a1, ptr %a2, ptr %a3, i1 %a4, i1 %a5)
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha4444909f5ef14f7626d25b8f59e6ba2(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare %"compiler/session:Positions" @compiler_2fsession_3aPositions_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0, i1 %a1)
declare i64 @compiler_2fsession_2ecompiler_2fsession_3aPositions_2eOffset(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @compiler_2fdiag_3aDiagnostics_2ector(ptr %out, ptr %v0, i1 %a0)
declare { i32, { i64, ptr } } @compiler_2fsession_2eFormat(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @compiler_2fsession_2ecompiler_2fsession_3aPositions_2eRange(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i64 %a3)
declare void @compiler_2fsession_2eJsonStr(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eModuleOf(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2fsession_2eSymbols(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, ptr } %a2, ptr %a3)
declare { i32, %"compiler/session:Found" } @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eLookup(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i64 %a2)
declare %"compiler/source:Span" @compiler_2fsession_2eWordAt(ptr %v0, { i64, ptr } %a0, i64 %a1)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrors(ptr %v0, ptr %a0)
declare void @compiler_2fsession_2eHold(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %a0)
declare i1 @compiler_2fsession_2eWordChar(i8 %a0)
declare %"compiler/session:Items" @compiler_2fsession_3aItems_2ector(ptr %v0)
declare { i64, ptr } @compiler_2fsession_2ePromiseTargets(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1)
@G_2ecompiler_2fsession_2eCompVariable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2fsession_2ecompiler_2fsession_3aItems_2eAdd(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i64 %a2, { i64, ptr } %a3)
@olang_loc_af7c431932a7c0fe_be95e1b6bda5ce6a = external constant [0 x i8]
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0)
declare %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H233962476a3191cb30d917b30cae0288(ptr %v0, ptr %v1, ptr %a0)
declare { i32, %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3cstd_2fprelude_2ftext_3aString_26_2_H2ebf6f1d68886862a568a520c713bfce(ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eMembers(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2, i64 %a3)
declare void @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eNames(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2, i64 %a3)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eDeprecatedUses(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsession_3aUse_3e_2eLen_3ccompiler_2fsession_3aUse_3e(ptr %v0, ptr %a0)
declare %"compiler/session:Use" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsession_3aUse_3e_2eAt_3ccompiler_2fsession_3aUse_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %v0, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2ePlaced(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare %"compiler/diag:Item" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aItem_3e_2eAt_3ccompiler_2fdiag_3aItem_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aItem_3e_2eLen_3ccompiler_2fdiag_3aItem_3e(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eRealOfFile(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aStringBuilder_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eItems(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aStringBuilder_3_H619e677aa004466b5bd5bdbfda9f24c5(ptr %v0, ptr %v1, ptr %a0, %"std/prelude/text:StringBuilder" %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aStringBuilder_3_Hf1ae1a5ebbb395c2e928aa8f7e1c7e01(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aStringBuilder_3_H3391400cd512141e3398528b8c477a4f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H0127831368543eff3b7740d7d3240080(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eTextOf(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_f3afb7cdea72bea9_2e903794abb886a5 = external constant [0 x i8]
@olang_loc_8c5172bb8ea5e6bc_75de6e53c7815648 = external constant [0 x i8]
@olang_loc_6f843a9f898efe67_8723688731f48c63 = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_8f54b2067e6b6b8a_86cbf1b666cce186 = external constant [0 x i8]
@olang_loc_c8d49224b0a3e505_8d1f0d35a00e1b49 = external constant [0 x i8]
declare { i64, ptr } @std_2fjson_2eEncode_3cstd_2fjson_3aJson_26_3e(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2)
@olang_loc_e95ee7c974268826_dbe3ca405aac726a = external constant [0 x i8]
@olang_loc_e0c8a6c727c459ae_6ecdb6d914c5403a = external constant [0 x i8]
@olang_loc_6196fce1a841dab8_1c2f84dff31e5f9c = external constant [0 x i8]
declare i1 @compiler_2fdiag_2eUntidy(ptr %v0, { i64, ptr } %a0)
declare { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2ector(ptr %v0, i64 %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLess(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)

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
