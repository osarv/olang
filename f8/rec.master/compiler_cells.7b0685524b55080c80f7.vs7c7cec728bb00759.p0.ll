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
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/build:Program" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/build:Config" = type { { i64, ptr }, { i64, ptr }, %"compiler/target:Target", %"compiler/cond:Consts", i1, i1, i1, i1, i1, i1, i1, i1, { i64, ptr }, i64, i1, i1, i1, i64, i1, { i64, ptr }, i1, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i1, { i64, ptr }, { i64, ptr }, i64, i64, i1, i1, { i64, ptr }, { i64, ptr } }
%"compiler/target:Target" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i1, i1 }
%"compiler/cond:Consts" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/build:Unit" = type { { i64, ptr }, i32, { i64, ptr }, { i64, ptr } }
%"compiler/cells:Worker" = type { i1, i32, i32, i32, i32, i32, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/cells:Outcome" = type { i1, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i1 }
%"compiler/diag:Diagnostics" = type { i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, [3 x i64] }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/cells:Plan" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"std/os:Output" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/text:LineIter" = type { { i64, ptr }, i64 }
@G_2ecompiler_2fcells_2eBuilder = global <{ [16 x i8] }> <{ [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fcells_2eFrameData = constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fcells_2eFrameDone = constant <{ [8 x i8] }> <{ [8 x i8] c"\0B\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fcells_2eFrameFailure = constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fcells_2eFrameMime = constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fcells_2eFramePid = constant <{ [8 x i8] }> <{ [8 x i8] c"\0A\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fcells_2eFrameShown = constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fcells_2eFrameStopped = constant <{ [8 x i8] }> <{ [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fcells_2eHelperIr = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\CF\08\00\00\00\00\00\00", ptr @G_2ecompiler_2fcells_2eHelperIr.k1 }>, align 8
@G_2ecompiler_2fcells_2eHelperIr.k1 = internal constant <{ [2255 x i8] }> <{ [2255 x i8] c"\40\73\74\64\6F\75\74\20\3D\20\65\78\74\65\72\6E\61\6C\20\67\6C\6F\62\61\6C\20\70\74\72\0A\40\5F\5F\6F\6C\61\6E\67\5F\6A\6D\70\5F\74\61\72\67\65\74\20\3D\20\65\78\74\65\72\6E\61\6C\20\74\68\72\65\61\64\5F\6C\6F\63\61\6C\28\69\6E\69\74\69\61\6C\65\78\65\63\29\20\67\6C\6F\62\61\6C\20\70\74\72\0A\40\5F\5F\6F\6C\61\6E\67\5F\75\6E\77\69\6E\64\5F\74\6F\70\20\3D\20\65\78\74\65\72\6E\61\6C\20\74\68\72\65\61\64\5F\6C\6F\63\61\6C\28\69\6E\69\74\69\61\6C\65\78\65\63\29\20\67\6C\6F\62\61\6C\20\70\74\72\0A\40\5F\5F\6F\6C\61\6E\67\5F\75\6E\77\69\6E\64\5F\6D\61\72\6B\20\3D\20\65\78\74\65\72\6E\61\6C\20\74\68\72\65\61\64\5F\6C\6F\63\61\6C\28\69\6E\69\74\69\61\6C\65\78\65\63\29\20\67\6C\6F\62\61\6C\20\70\74\72\0A\40\5F\5F\6F\6C\61\6E\67\5F\77\6F\72\6B\65\72\5F\66\72\65\65\20\3D\20\65\78\74\65\72\6E\61\6C\20\67\6C\6F\62\61\6C\20\70\74\72\0A\40\5F\5F\6F\6C\61\6E\67\5F\77\6F\72\6B\65\72\5F\69\64\6C\65\20\3D\20\65\78\74\65\72\6E\61\6C\20\67\6C\6F\62\61\6C\20\69\36\34\0A\40\6F\6C\61\6E\67\2E\63\65\6C\6C\2E\77\20\3D\20\70\72\69\76\61\74\65\20\75\6E\6E\61\6D\65\64\5F\61\64\64\72\20\63\6F\6E\73\74\61\6E\74\20\5B\32\20\78\20\69\38\5D\20\63\22\77\5C\30\30\22\0A\64\65\63\6C\61\72\65\20\69\33\32\20\40\73\65\74\6A\6D\70\28\70\74\72\29\20\72\65\74\75\72\6E\73\5F\74\77\69\63\65\0A\64\65\63\6C\61\72\65\20\70\74\72\20\40\66\64\6F\70\65\6E\28\69\33\32\2C\20\70\74\72\29\0A\64\65\63\6C\61\72\65\20\69\33\32\20\40\66\63\6C\6F\73\65\28\70\74\72\29\0A\0A\64\65\66\69\6E\65\20\69\33\32\20\40\6F\6C\61\6E\67\5F\63\65\6C\6C\5F\63\61\6C\6C\28\70\74\72\20\25\73\74\61\72\74\2C\20\70\74\72\20\25\72\75\6E\2C\20\69\33\32\20\25\66\64\29\20\7B\0A\65\6E\74\72\79\3A\0A\20\20\25\6A\62\20\3D\20\61\6C\6C\6F\63\61\20\5B\31\30\32\34\20\78\20\69\38\5D\2C\20\61\6C\69\67\6E\20\31\36\0A\20\20\25\66\20\3D\20\63\61\6C\6C\20\70\74\72\20\40\66\64\6F\70\65\6E\28\69\33\32\20\25\66\64\2C\20\70\74\72\20\40\6F\6C\61\6E\67\2E\63\65\6C\6C\2E\77\29\0A\20\20\25\6F\6C\64\20\3D\20\6C\6F\61\64\20\70\74\72\2C\20\70\74\72\20\40\73\74\64\6F\75\74\0A\20\20\25\73\6F\6D\65\20\3D\20\69\63\6D\70\20\6E\65\20\70\74\72\20\25\66\2C\20\6E\75\6C\6C\0A\20\20\62\72\20\69\31\20\25\73\6F\6D\65\2C\20\6C\61\62\65\6C\20\25\73\77\61\70\2C\20\6C\61\62\65\6C\20\25\67\75\61\72\64\0A\73\77\61\70\3A\0A\20\20\73\74\6F\72\65\20\70\74\72\20\25\66\2C\20\70\74\72\20\40\73\74\64\6F\75\74\0A\20\20\62\72\20\6C\61\62\65\6C\20\25\67\75\61\72\64\0A\67\75\61\72\64\3A\0A\20\20\25\74\6F\70\20\3D\20\6C\6F\61\64\20\70\74\72\2C\20\70\74\72\20\40\5F\5F\6F\6C\61\6E\67\5F\75\6E\77\69\6E\64\5F\74\6F\70\0A\20\20\73\74\6F\72\65\20\70\74\72\20\25\74\6F\70\2C\20\70\74\72\20\40\5F\5F\6F\6C\61\6E\67\5F\75\6E\77\69\6E\64\5F\6D\61\72\6B\0A\20\20\73\74\6F\72\65\20\70\74\72\20\25\6A\62\2C\20\70\74\72\20\40\5F\5F\6F\6C\61\6E\67\5F\6A\6D\70\5F\74\61\72\67\65\74\0A\20\20\25\72\20\3D\20\63\61\6C\6C\20\69\33\32\20\40\73\65\74\6A\6D\70\28\70\74\72\20\25\6A\62\29\0A\20\20\25\66\69\72\73\74\20\3D\20\69\63\6D\70\20\65\71\20\69\33\32\20\25\72\2C\20\30\0A\20\20\62\72\20\69\31\20\25\66\69\72\73\74\2C\20\6C\61\62\65\6C\20\25\67\6F\2C\20\6C\61\62\65\6C\20\25\64\6F\6E\65\0A\67\6F\3A\0A\20\20\63\61\6C\6C\20\76\6F\69\64\20\25\73\74\61\72\74\28\29\0A\20\20\63\61\6C\6C\20\76\6F\69\64\20\25\72\75\6E\28\29\0A\20\20\62\72\20\6C\61\62\65\6C\20\25\64\6F\6E\65\0A\64\6F\6E\65\3A\0A\20\20\25\72\63\20\3D\20\70\68\69\20\69\33\32\20\5B\20\30\2C\20\25\67\6F\20\5D\2C\20\5B\20\25\72\2C\20\25\67\75\61\72\64\20\5D\0A\20\20\73\74\6F\72\65\20\70\74\72\20\6E\75\6C\6C\2C\20\70\74\72\20\40\5F\5F\6F\6C\61\6E\67\5F\6A\6D\70\5F\74\61\72\67\65\74\0A\20\20\73\74\6F\72\65\20\70\74\72\20\25\6F\6C\64\2C\20\70\74\72\20\40\73\74\64\6F\75\74\0A\20\20\62\72\20\69\31\20\25\73\6F\6D\65\2C\20\6C\61\62\65\6C\20\25\63\6C\6F\73\65\2C\20\6C\61\62\65\6C\20\25\6F\75\74\0A\63\6C\6F\73\65\3A\0A\20\20\63\61\6C\6C\20\69\33\32\20\40\66\63\6C\6F\73\65\28\70\74\72\20\25\66\29\0A\20\20\62\72\20\6C\61\62\65\6C\20\25\6F\75\74\0A\6F\75\74\3A\0A\20\20\72\65\74\20\69\33\32\20\25\72\63\0A\7D\0A\0A\64\65\66\69\6E\65\20\76\6F\69\64\20\40\6F\6C\61\6E\67\5F\63\65\6C\6C\5F\61\66\74\65\72\66\6F\72\6B\28\29\20\7B\0A\65\6E\74\72\79\3A\0A\20\20\73\74\6F\72\65\20\70\74\72\20\6E\75\6C\6C\2C\20\70\74\72\20\40\5F\5F\6F\6C\61\6E\67\5F\77\6F\72\6B\65\72\5F\66\72\65\65\0A\20\20\73\74\6F\72\65\20\69\36\34\20\30\2C\20\70\74\72\20\40\5F\5F\6F\6C\61\6E\67\5F\77\6F\72\6B\65\72\5F\69\64\6C\65\0A\20\20\72\65\74\20\76\6F\69\64\0A\7D\0A\0A\64\65\66\69\6E\65\20\76\6F\69\64\20\40\6F\6C\61\6E\67\5F\63\65\6C\6C\5F\73\61\79\28\69\36\34\20\25\6B\69\6E\64\2C\20\70\74\72\20\25\64\61\74\61\2C\20\69\36\34\20\25\6E\29\20\7B\0A\65\6E\74\72\79\3A\0A\20\20\25\68\20\3D\20\61\6C\6C\6F\63\61\20\5B\32\20\78\20\69\36\34\5D\2C\20\61\6C\69\67\6E\20\38\0A\20\20\73\74\6F\72\65\20\69\36\34\20\25\6B\69\6E\64\2C\20\70\74\72\20\25\68\0A\20\20\25\68\6E\20\3D\20\67\65\74\65\6C\65\6D\65\6E\74\70\74\72\20\5B\32\20\78\20\69\36\34\5D\2C\20\70\74\72\20\25\68\2C\20\69\36\34\20\30\2C\20\69\36\34\20\31\0A\20\20\73\74\6F\72\65\20\69\36\34\20\25\6E\2C\20\70\74\72\20\25\68\6E\0A\20\20\63\61\6C\6C\20\76\6F\69\64\20\40\6F\6C\61\6E\67\5F\63\65\6C\6C\5F\61\6C\6C\28\70\74\72\20\25\68\2C\20\69\36\34\20\31\36\29\0A\20\20\63\61\6C\6C\20\76\6F\69\64\20\40\6F\6C\61\6E\67\5F\63\65\6C\6C\5F\61\6C\6C\28\70\74\72\20\25\64\61\74\61\2C\20\69\36\34\20\25\6E\29\0A\20\20\72\65\74\20\76\6F\69\64\0A\7D\0A\0A\64\65\63\6C\61\72\65\20\69\36\34\20\40\77\72\69\74\65\28\69\33\32\2C\20\70\74\72\2C\20\69\36\34\29\0A\0A\64\65\66\69\6E\65\20\76\6F\69\64\20\40\6F\6C\61\6E\67\5F\63\65\6C\6C\5F\61\6C\6C\28\70\74\72\20\25\70\2C\20\69\36\34\20\25\6E\29\20\7B\0A\65\6E\74\72\79\3A\0A\20\20\62\72\20\6C\61\62\65\6C\20\25\6C\6F\6F\70\0A\6C\6F\6F\70\3A\0A\20\20\25\61\74\20\3D\20\70\68\69\20\69\36\34\20\5B\20\30\2C\20\25\65\6E\74\72\79\20\5D\2C\20\5B\20\25\6E\65\78\74\2C\20\25\6D\6F\72\65\20\5D\0A\20\20\25\6C\65\66\74\20\3D\20\73\75\62\20\69\36\34\20\25\6E\2C\20\25\61\74\0A\20\20\25\74\6F\64\6F\20\3D\20\69\63\6D\70\20\73\67\74\20\69\36\34\20\25\6C\65\66\74\2C\20\30\0A\20\20\62\72\20\69\31\20\25\74\6F\64\6F\2C\20\6C\61\62\65\6C\20\25\77\72\69\74\65\2C\20\6C\61\62\65\6C\20\25\6F\75\74\0A\77\72\69\74\65\3A\0A\20\20\25\71\20\3D\20\67\65\74\65\6C\65\6D\65\6E\74\70\74\72\20\69\38\2C\20\70\74\72\20\25\70\2C\20\69\36\34\20\25\61\74\0A\20\20\25\77\20\3D\20\63\61\6C\6C\20\69\36\34\20\40\77\72\69\74\65\28\69\33\32\20\34\2C\20\70\74\72\20\25\71\2C\20\69\36\34\20\25\6C\65\66\74\29\0A\20\20\25\6F\6B\20\3D\20\69\63\6D\70\20\73\67\74\20\69\36\34\20\25\77\2C\20\30\0A\20\20\62\72\20\69\31\20\25\6F\6B\2C\20\6C\61\62\65\6C\20\25\6D\6F\72\65\2C\20\6C\61\62\65\6C\20\25\6F\75\74\0A\6D\6F\72\65\3A\0A\20\20\25\6E\65\78\74\20\3D\20\61\64\64\20\69\36\34\20\25\61\74\2C\20\25\77\0A\20\20\62\72\20\6C\61\62\65\6C\20\25\6C\6F\6F\70\0A\6F\75\74\3A\0A\20\20\72\65\74\20\76\6F\69\64\0A\7D" }>, align 64
@G_2ecompiler_2fcells_2eWorkerSource = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\C3\0A\00\00\00\00\00\00", ptr @G_2ecompiler_2fcells_2eWorkerSource.k1 }>, align 8
@G_2ecompiler_2fcells_2eWorkerSource.k1 = internal constant <{ [2755 x i8] }> <{ [2755 x i8] c"\69\6D\70\6F\72\74\20\22\73\74\64\2F\69\6F\22\0A\69\6D\70\6F\72\74\20\75\6E\69\73\74\64\20\22\75\6E\69\73\74\64\2E\68\22\0A\69\6D\70\6F\72\74\20\73\79\73\77\61\69\74\20\22\73\79\73\2F\77\61\69\74\2E\68\22\0A\69\6D\70\6F\72\74\20\64\6C\66\63\6E\20\22\64\6C\66\63\6E\2E\68\22\0A\69\6D\70\6F\72\74\20\6D\6D\61\6E\20\22\73\79\73\2F\6D\6D\61\6E\2E\68\22\0A\69\6D\70\6F\72\74\20\66\63\6E\74\6C\20\22\66\63\6E\74\6C\2E\68\22\0A\0A\65\78\74\65\72\6E\20\7B\0A\20\20\20\20\66\6E\20\6F\6C\61\6E\67\5F\63\65\6C\6C\5F\63\61\6C\6C\28\73\74\61\72\74\20\43\56\6F\69\64\3F\26\2C\20\65\6E\74\72\79\20\43\56\6F\69\64\3F\26\2C\20\66\64\20\49\33\32\29\20\49\33\32\0A\20\20\20\20\66\6E\20\6F\6C\61\6E\67\5F\63\65\6C\6C\5F\61\66\74\65\72\66\6F\72\6B\28\29\0A\20\20\20\20\66\6E\20\73\69\67\6E\61\6C\28\73\69\67\20\49\33\32\2C\20\68\61\6E\64\6C\65\72\20\49\36\34\29\20\49\36\34\0A\7D\0A\0A\66\6E\20\6D\61\69\6E\28\29\20\7B\0A\20\20\20\20\66\63\6E\74\6C\2E\66\63\6E\74\6C\28\33\2C\20\32\2C\20\31\29\0A\20\20\20\20\66\63\6E\74\6C\2E\66\63\6E\74\6C\28\34\2C\20\32\2C\20\31\29\0A\20\20\20\20\63\6D\64\73\20\3A\3D\20\69\6F\2E\4C\69\6E\65\73\28\33\29\0A\20\20\20\20\66\6F\72\20\7B\0A\20\20\20\20\20\20\20\20\6C\69\6E\65\20\3A\3D\20\74\72\79\20\63\6D\64\73\2E\4E\65\78\74\28\29\20\63\61\74\63\68\20\7B\20\62\72\65\61\6B\20\7D\0A\20\20\20\20\20\20\20\20\69\66\20\6C\69\6E\65\2E\53\74\61\72\74\73\57\69\74\68\28\22\63\65\6C\6C\20\22\29\3A\20\72\75\6E\28\6C\69\6E\65\5B\35\3A\5D\29\0A\20\20\20\20\20\20\20\20\69\66\20\6C\69\6E\65\20\3D\3D\20\22\65\6E\64\22\3A\20\62\72\65\61\6B\0A\20\20\20\20\7D\0A\7D\0A\0A\66\6E\20\73\61\79\28\6B\69\6E\64\20\49\36\34\2C\20\74\65\78\74\20\41\72\72\61\79\3C\55\38\3E\26\29\20\7B\0A\20\20\20\20\68\65\61\64\20\3A\3D\20\41\72\72\61\79\3C\55\38\3E\28\31\36\29\0A\20\20\20\20\66\6F\72\20\69\20\69\6E\20\72\61\6E\67\65\20\38\20\7B\0A\20\20\20\20\20\20\20\20\68\65\61\64\5B\69\5D\20\3D\20\55\38\28\28\6B\69\6E\64\20\3E\3E\20\28\38\20\2A\20\69\29\29\20\26\20\32\35\35\29\0A\20\20\20\20\20\20\20\20\68\65\61\64\5B\38\20\2B\20\69\5D\20\3D\20\55\38\28\28\74\65\78\74\2E\4C\65\6E\28\29\20\3E\3E\20\28\38\20\2A\20\69\29\29\20\26\20\32\35\35\29\0A\20\20\20\20\7D\0A\20\20\20\20\74\72\79\20\69\6F\2E\57\72\69\74\65\28\34\2C\20\68\65\61\64\29\20\63\61\74\63\68\20\69\6F\2E\45\72\72\6F\72\20\7B\20\7D\0A\20\20\20\20\74\72\79\20\69\6F\2E\57\72\69\74\65\28\34\2C\20\74\65\78\74\29\20\63\61\74\63\68\20\69\6F\2E\45\72\72\6F\72\20\7B\20\7D\0A\7D\0A\0A\66\6E\20\72\75\6E\28\70\61\74\68\20\53\74\72\69\6E\67\26\29\20\7B\0A\20\20\20\20\73\69\67\6E\61\6C\28\32\2C\20\31\29\0A\20\20\20\20\73\79\6E\63\20\3A\3D\20\41\72\72\61\79\3C\49\33\32\3E\28\32\29\0A\20\20\20\20\69\66\20\75\6E\69\73\74\64\2E\70\69\70\65\32\28\73\79\6E\63\2C\20\35\32\34\32\38\38\29\20\21\3D\20\30\20\7B\0A\20\20\20\20\20\20\20\20\73\61\79\28\31\32\2C\20\22\74\68\65\20\73\65\73\73\69\6F\6E\20\63\61\6E\6E\6F\74\20\72\75\6E\20\74\68\65\20\63\65\6C\6C\3A\20\6E\6F\20\70\69\70\65\22\29\0A\20\20\20\20\20\20\20\20\72\65\74\75\72\6E\0A\20\20\20\20\7D\0A\20\20\20\20\70\69\64\20\3A\3D\20\75\6E\69\73\74\64\2E\66\6F\72\6B\28\29\0A\20\20\20\20\69\66\20\70\69\64\20\3C\20\30\20\7B\0A\20\20\20\20\20\20\20\20\73\61\79\28\31\32\2C\20\22\74\68\65\20\73\65\73\73\69\6F\6E\20\63\61\6E\6E\6F\74\20\72\75\6E\20\74\68\65\20\63\65\6C\6C\3A\20\6E\6F\20\70\72\6F\63\65\73\73\22\29\0A\20\20\20\20\20\20\20\20\72\65\74\75\72\6E\0A\20\20\20\20\7D\0A\20\20\20\20\69\66\20\70\69\64\20\3D\3D\20\30\20\7B\0A\20\20\20\20\20\20\20\20\75\6E\69\73\74\64\2E\63\6C\6F\73\65\28\73\79\6E\63\5B\30\5D\29\0A\20\20\20\20\20\20\20\20\63\65\6C\6C\28\70\61\74\68\29\0A\20\20\20\20\20\20\20\20\74\72\79\20\69\6F\2E\57\72\69\74\65\28\73\79\6E\63\5B\31\5D\2C\20\22\6B\22\29\20\63\61\74\63\68\20\69\6F\2E\45\72\72\6F\72\20\7B\20\7D\0A\20\20\20\20\20\20\20\20\75\6E\69\73\74\64\2E\63\6C\6F\73\65\28\73\79\6E\63\5B\31\5D\29\0A\20\20\20\20\20\20\20\20\72\65\74\75\72\6E\0A\20\20\20\20\7D\0A\20\20\20\20\75\6E\69\73\74\64\2E\63\6C\6F\73\65\28\73\79\6E\63\5B\31\5D\29\0A\20\20\20\20\62\20\3A\3D\20\41\72\72\61\79\3C\55\38\3E\28\31\29\0A\20\20\20\20\69\66\20\75\6E\69\73\74\64\2E\72\65\61\64\28\73\79\6E\63\5B\30\5D\2C\20\62\2C\20\31\29\20\3D\3D\20\31\3A\20\75\6E\69\73\74\64\2E\5F\65\78\69\74\28\30\29\0A\20\20\20\20\75\6E\69\73\74\64\2E\63\6C\6F\73\65\28\73\79\6E\63\5B\30\5D\29\0A\20\20\20\20\73\74\20\3A\3D\20\41\72\72\61\79\3C\49\33\32\3E\28\31\29\0A\20\20\20\20\73\79\73\77\61\69\74\2E\77\61\69\74\70\69\64\28\70\69\64\2C\20\73\74\2C\20\30\29\0A\20\20\20\20\73\61\79\28\31\32\2C\20\65\6E\64\69\6E\67\28\73\74\5B\30\5D\29\29\0A\7D\0A\0A\66\6E\20\65\6E\64\69\6E\67\28\72\61\77\20\49\33\32\29\20\53\74\72\69\6E\67\20\7B\0A\20\20\20\20\73\69\67\20\3A\3D\20\72\61\77\20\26\20\31\32\37\0A\20\20\20\20\69\66\20\73\69\67\20\3D\3D\20\30\3A\20\72\65\74\75\72\6E\20\24\22\65\78\69\74\65\64\20\22\20\2B\20\24\28\28\72\61\77\20\3E\3E\20\38\29\20\26\20\32\35\35\29\0A\20\20\20\20\69\66\20\73\69\67\20\3D\3D\20\32\20\6F\72\20\73\69\67\20\3D\3D\20\39\3A\20\72\65\74\75\72\6E\20\22\69\6E\74\65\72\72\75\70\74\65\64\22\0A\20\20\20\20\72\65\74\75\72\6E\20\24\22\73\69\67\6E\61\6C\20\22\20\2B\20\24\73\69\67\0A\7D\0A\0A\66\6E\20\63\65\6C\6C\28\70\61\74\68\20\53\74\72\69\6E\67\26\29\20\7B\0A\20\20\20\20\73\69\67\6E\61\6C\28\32\2C\20\30\29\0A\20\20\20\20\6F\6C\61\6E\67\5F\63\65\6C\6C\5F\61\66\74\65\72\66\6F\72\6B\28\29\0A\20\20\20\20\73\61\79\28\31\30\2C\20\24\75\6E\69\73\74\64\2E\67\65\74\70\69\64\28\29\29\0A\20\20\20\20\68\20\3A\3D\20\64\6C\66\63\6E\2E\64\6C\6F\70\65\6E\28\70\61\74\68\2E\54\6F\43\28\29\2C\20\32\35\38\29\0A\20\20\20\20\69\66\20\68\20\3D\3D\20\6E\75\6C\6C\20\7B\0A\20\20\20\20\20\20\20\20\65\20\3A\3D\20\64\6C\66\63\6E\2E\64\6C\65\72\72\6F\72\28\29\0A\20\20\20\20\20\20\20\20\73\61\79\28\32\2C\20\24\22\74\68\65\20\63\65\6C\6C\20\63\61\6E\6E\6F\74\20\62\65\20\6C\6F\61\64\65\64\3A\20\22\20\2B\20\24\28\53\74\72\69\6E\67\2E\46\72\6F\6D\43\28\65\2C\20\34\30\30\29\20\69\66\20\65\20\21\3D\20\6E\75\6C\6C\20\65\6C\73\65\20\70\61\74\68\29\20\2B\20\22\5C\6E\22\29\0A\20\20\20\20\20\20\20\20\73\61\79\28\31\31\2C\20\22\22\29\0A\20\20\20\20\20\20\20\20\72\65\74\75\72\6E\0A\20\20\20\20\7D\0A\20\20\20\20\73\74\61\72\74\20\3A\3D\20\64\6C\66\63\6E\2E\64\6C\73\79\6D\28\68\2C\20\22\6F\6C\61\6E\67\5F\63\65\6C\6C\5F\69\6E\69\74\22\2E\54\6F\43\28\29\29\0A\20\20\20\20\65\6E\74\72\79\20\3A\3D\20\64\6C\66\63\6E\2E\64\6C\73\79\6D\28\68\2C\20\22\6F\6C\61\6E\67\5F\63\65\6C\6C\5F\72\75\6E\22\2E\54\6F\43\28\29\29\0A\20\20\20\20\69\66\20\73\74\61\72\74\20\3D\3D\20\6E\75\6C\6C\20\6F\72\20\65\6E\74\72\79\20\3D\3D\20\6E\75\6C\6C\20\7B\0A\20\20\20\20\20\20\20\20\73\61\79\28\32\2C\20\22\74\68\65\20\63\65\6C\6C\27\73\20\6F\62\6A\65\63\74\20\68\61\73\20\6E\6F\20\65\6E\74\72\79\5C\6E\22\29\0A\20\20\20\20\20\20\20\20\73\61\79\28\31\31\2C\20\22\22\29\0A\20\20\20\20\20\20\20\20\72\65\74\75\72\6E\0A\20\20\20\20\7D\0A\20\20\20\20\66\64\20\3A\3D\20\6D\6D\61\6E\2E\6D\65\6D\66\64\5F\63\72\65\61\74\65\28\22\6F\6C\61\6E\67\2D\63\65\6C\6C\5C\30\22\2C\20\31\29\0A\20\20\20\20\69\66\20\6F\6C\61\6E\67\5F\63\65\6C\6C\5F\63\61\6C\6C\28\73\74\61\72\74\2C\20\65\6E\74\72\79\2C\20\75\6E\69\73\74\64\2E\64\75\70\28\66\64\29\29\20\21\3D\20\30\3A\20\73\61\79\28\32\2C\20\66\61\69\6C\75\72\65\28\66\64\29\29\0A\20\20\20\20\75\6E\69\73\74\64\2E\63\6C\6F\73\65\28\66\64\29\0A\20\20\20\20\73\61\79\28\31\31\2C\20\22\22\29\0A\7D\0A\0A\66\6E\20\66\61\69\6C\75\72\65\28\66\64\20\49\33\32\29\20\53\74\72\69\6E\67\20\7B\0A\20\20\20\20\73\69\7A\65\20\3A\3D\20\75\6E\69\73\74\64\2E\6C\73\65\65\6B\28\66\64\2C\20\30\2C\20\32\29\0A\20\20\20\20\75\6E\69\73\74\64\2E\6C\73\65\65\6B\28\66\64\2C\20\30\2C\20\30\29\0A\20\20\20\20\74\65\78\74\20\3A\3D\20\41\72\72\61\79\3C\55\38\3E\28\73\69\7A\65\20\69\66\20\73\69\7A\65\20\3E\20\30\20\65\6C\73\65\20\30\29\0A\20\20\20\20\67\6F\74\20\49\36\34\20\3D\20\30\0A\20\20\20\20\66\6F\72\20\67\6F\74\20\3C\20\74\65\78\74\2E\4C\65\6E\28\29\20\7B\0A\20\20\20\20\20\20\20\20\6E\20\3A\3D\20\75\6E\69\73\74\64\2E\72\65\61\64\28\66\64\2C\20\74\65\78\74\5B\67\6F\74\3A\5D\2C\20\55\36\34\28\74\65\78\74\2E\4C\65\6E\28\29\20\2D\20\67\6F\74\29\29\0A\20\20\20\20\20\20\20\20\69\66\20\6E\20\3C\3D\20\30\3A\20\62\72\65\61\6B\0A\20\20\20\20\20\20\20\20\67\6F\74\20\2B\3D\20\6E\0A\20\20\20\20\7D\0A\20\20\20\20\72\65\74\75\72\6E\20\53\74\72\69\6E\67\28\74\65\78\74\5B\3A\67\6F\74\5D\29\0A\7D" }>, align 64
define dso_local i32 @compiler_2fcells_2eBuild(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %v6, ptr %v7, ptr %v8, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, { i64, ptr } %a4, { i64, ptr } %a5, ptr %a6, { i64, ptr } %a7, ptr %a8) #0 {
entry:
  %l0 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l8 = alloca ptr
  %lp9 = alloca ptr
  %lp10 = alloca ptr
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l17 = alloca ptr
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca ptr
  %l21 = alloca i64
  %l23 = alloca { i64, ptr }
  %l24 = alloca ptr
  %l25 = alloca i64
  %l26 = alloca i64
  %l28 = alloca ptr
  %l29 = alloca i64
  %l31 = alloca ptr
  %l32 = alloca i64
  %l34 = alloca ptr
  %l35 = alloca i64
  %l36 = alloca i64
  %l38 = alloca %"compiler/build:Program"
  %l40 = alloca %"compiler/build:Config"
  %l42 = alloca %"compiler/build:Config"
  %l54 = alloca i32
  %l57 = alloca i64
  %l61 = alloca i64
  %l65 = alloca i64
  %l68 = alloca i64
  %l88 = alloca ptr
  %l92 = alloca ptr
  %l93 = alloca i64
  %l98 = alloca { i64, ptr }
  %l100 = alloca { i64, ptr }
  %l102 = alloca ptr
  %l103 = alloca { i64, ptr }
  %l107 = alloca { i64, ptr }
  %l111 = alloca i32
  %l113 = alloca i1
  %l117 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l121 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l122 = alloca i32
  %l124 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l129 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l131 = alloca i64
  %l133 = alloca i64
  %l138 = alloca { i64, ptr }
  %l146 = alloca { i64, ptr }
  %l147 = alloca i32
  %l149 = alloca i1
  %l152 = alloca i64
  %l174 = alloca i64
  %l176 = alloca i64
  %l181 = alloca { i64, ptr }
  %l187 = alloca i64
  %l189 = alloca i64
  %l194 = alloca { i64, ptr }
  %l215 = alloca i1
  %l221 = alloca i32
  %s0 = alloca %olang.scope
  %s22 = alloca %olang.scope
  %rv = alloca i32
  %t1 = alloca %"compiler/build:Program", align 8
  %t6 = alloca %"compiler/build:Config", align 8
  store ptr %a0, ptr %l0
  store { i64, ptr } %a7, ptr %l7
  store ptr %a8, ptr %l8
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  call void @compiler_2fbuild_3aProgram_2ector(ptr %t1, ptr %v8)
  call void @llvm.memmove.p0.p0.i64(ptr %l38, ptr %t1, i64 264, i1 false)
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v8, i64 264, i64 8)
  store ptr %t2, ptr %lp9
  %t3 = load ptr, ptr %lp9
  call void @llvm.memmove.p0.p0.i64(ptr %t3, ptr %l38, i64 264, i1 false)
  %t4 = load ptr, ptr %l0, !tbaa !29
  call void @llvm.memmove.p0.p0.i64(ptr %l40, ptr %t4, i64 640, i1 false)
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbuild_3aConfig(ptr %t6, ptr %v8, ptr %l40)
  call void @llvm.memmove.p0.p0.i64(ptr %l42, ptr %t6, i64 640, i1 false)
  br label %bb2
bb2:
  %t8 = call ptr @__olang_scope_alloc_a(ptr %v8, i64 640, i64 8)
  store ptr %t8, ptr %lp10
  %t9 = load ptr, ptr %lp10
  call void @llvm.memmove.p0.p0.i64(ptr %t9, ptr %l42, i64 640, i1 false)
  %t10 = load { ptr, ptr }, ptr @G_2ecompiler_2fcells_2eBuilder
  %t12 = extractvalue { ptr, ptr } %t10, 0
  %t13 = extractvalue { ptr, ptr } zeroinitializer, 0
  %t14 = icmp eq ptr %t12, %t13
  %t15 = extractvalue { ptr, ptr } %t10, 1
  %t16 = extractvalue { ptr, ptr } zeroinitializer, 1
  %t17 = icmp eq ptr %t15, %t16
  %t18 = and i1 %t14, %t17
  br i1 %t18, label %bb3, label %bb4
bb3:
  call void @__olang_check_failed(ptr @olang_loc_982e698976ed59f7_448003811d791d9b)
  unreachable
bb4:
  br label %bb5
bb5:
  %t20 = load { ptr, ptr }, ptr @G_2ecompiler_2fcells_2eBuilder
  %t26 = load ptr, ptr %lp10
  %t27 = load ptr, ptr %lp9
  %t28 = load ptr, ptr %l8, !tbaa !29
  %t30 = extractvalue { ptr, ptr } %t20, 0
  %t31 = extractvalue { ptr, ptr } %t20, 1
  %t40 = call i32 %t30(ptr %t31, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %v8, ptr %v8, ptr %v8, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, { i64, ptr } %a4, { i64, ptr } %a5, ptr %t26, ptr %t27, ptr %t28)
  store i32 %t40, ptr %l54
  %t41 = icmp ne i32 %t40, 0
  br i1 %t41, label %bb7, label %ok.42, !prof !99
ok.42:
  br label %bb6
bb6:
  br label %bb8
bb7:
  %t43 = load i32, ptr %l54, !tbaa !23
  %t44 = lshr i32 %t43, 16
  %t45 = and i32 %t43, 65535
  %t46 = icmp eq i32 %t44, 1
  %t47 = select i1 %t46, i32 1, i32 0
  %t48 = icmp eq i32 %t43, 0
  %t49 = shl i32 %t47, 16
  %t50 = or i32 %t49, %t45
  %t51 = select i1 %t48, i32 0, i32 %t50
  call void @__olang_scope_close(ptr %s0)
  store i32 %t51, ptr %rv
  br label %ret
bb8:
  %t53 = load ptr, ptr %l8, !tbaa !29
  %t55 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrors(ptr %v8, ptr %t53)
  store i64 %t55, ptr %l57
  br label %bb9
bb9:
  %t56 = load i64, ptr %l57, !tbaa !24
  %t57 = icmp sgt i64 %t56, 0
  br i1 %t57, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s0)
  store i32 65536, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  store i64 0, ptr %l11, !tbaa !24
  %t60 = load ptr, ptr %lp9
  %t61 = getelementptr %"compiler/build:Program", ptr %t60, i32 0, i32 0
  %t63 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aUnit_3e_2eLen_3ccompiler_2fbuild_3aUnit_3e(ptr %v8, ptr %t61)
  store i64 %t63, ptr %l61
  br label %bb13
bb13:
  %t64 = load i64, ptr %l61, !tbaa !24
  store i64 %t64, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t65 = load i64, ptr %l12, !tbaa !24
  %t66 = load i64, ptr %l11, !tbaa !24
  %t69 = icmp sgt i64 %t65, %t66
  br i1 %t69, label %bb14, label %bb15
bb14:
  %t71 = load i64, ptr %l13, !tbaa !24
  %t73 = icmp sgt i64 %t71, 0
  br i1 %t73, label %bb16, label %bb17
bb15:
  store i64 0, ptr %l65, !tbaa !24
  br label %bb19
bb16:
  %t75 = load i64, ptr %l12, !tbaa !24
  %t76 = load i64, ptr %l11, !tbaa !24
  %t79 = sub i64 %t75, %t76
  %t80 = load i64, ptr %l13, !tbaa !24
  %t83 = add i64 %t79, %t80
  %t85 = sub i64 %t83, 1
  %t86 = load i64, ptr %l13, !tbaa !24
  %t89 = sdiv i64 %t85, %t86
  store i64 %t89, ptr %l68, !tbaa !24
  br label %bb18
bb17:
  store i64 0, ptr %l68, !tbaa !24
  br label %bb18
bb18:
  %t91 = load i64, ptr %l68, !tbaa !24
  store i64 %t91, ptr %l65, !tbaa !24
  br label %bb19
bb19:
  %t92 = load i64, ptr %l65, !tbaa !24
  store i64 %t92, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb20
bb20:
  %t93 = load i64, ptr %l15, !tbaa !24
  %t94 = load i64, ptr %l14, !tbaa !24
  %t97 = icmp slt i64 %t93, %t94
  %t99 = xor i1 %t97, true
  br i1 %t99, label %bb21, label %bb22
bb21:
  br label %bb36
bb22:
  br label %bb23
bb23:
  %t101 = load i64, ptr %l11, !tbaa !24
  %t102 = load i64, ptr %l15, !tbaa !24
  %t103 = load i64, ptr %l13, !tbaa !24
  %t106 = mul i64 %t102, %t103
  %t109 = add i64 %t101, %t106
  %t111 = load ptr, ptr %lp9
  %t112 = getelementptr %"compiler/build:Program", ptr %t111, i32 0, i32 0
  %t116 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aUnit_3e_2eRefMut_3ccompiler_2fbuild_3aUnit_3e(ptr %v8, ptr %v8, ptr %t112, i64 %t109)
  store ptr %t116, ptr %l88
  br label %bb24
bb24:
  %t117 = load ptr, ptr %l88, !tbaa !29
  store ptr %t117, ptr %l17, !tbaa !29
  %t118 = load ptr, ptr %l17, !tbaa !29
  %t120 = getelementptr %"compiler/build:Unit", ptr %t118, i32 0, i32 1
  %t121 = load i32, ptr %t120, !range !{i32 0, i32 5}
  %t123 = trunc i64 0 to i32
  %t124 = icmp eq i32 %t121, %t123
  br i1 %t124, label %bb25, label %bb26
bb25:
  br label %bb35
bb26:
  br label %bb27
bb27:
  %t126 = load ptr, ptr %l17, !tbaa !29
  store ptr %t126, ptr %l92, !tbaa !29
  %t127 = ptrtoint ptr %v8 to i64
  store i64 %t127, ptr %l93, !tbaa !24
  %t128 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3aUnit_2e2
  br i1 %t128, label %bb28, label %bb29
bb28:
  %t130 = call ptr @__olang_region_make(ptr %v8)
  %t131 = ptrtoint ptr %t130 to i64
  store i64 %t131, ptr %l93, !tbaa !24
  br label %bb29
bb29:
  %t132 = load ptr, ptr %l17, !tbaa !29
  %t134 = getelementptr %"compiler/build:Unit", ptr %t132, i32 0, i32 2
  %t135 = load { i64, ptr }, ptr %t134, !tbaa !27
  %t137 = load i64, ptr %l93
  %t138 = inttoptr i64 %t137 to ptr
  %t141 = call { i64, ptr } @compiler_2fcells_2erewrite(ptr %v8, ptr %v6, ptr %t138, { i64, ptr } %t135, ptr %a6)
  store { i64, ptr } %t141, ptr %l98
  br label %bb30
bb30:
  %t142 = load { i64, ptr }, ptr %l98, !tbaa !27
  %t143 = load i64, ptr %l93
  %t144 = inttoptr i64 %t143 to ptr
  %t145 = extractvalue { i64, ptr } %t142, 0
  %t146 = extractvalue { i64, ptr } %t142, 1
  %t147 = mul i64 %t145, 1
  %t148 = call ptr @__olang_scope_alloc(ptr %t144, i64 %t147)
  call void @llvm.memcpy.p0.p0.i64(ptr %t148, ptr %t146, i64 %t147, i1 false)
  %t149 = insertvalue { i64, ptr } undef, i64 %t145, 0
  %t150 = insertvalue { i64, ptr } %t149, ptr %t148, 1
  %t151 = load ptr, ptr %l92, !tbaa !29
  %t152 = getelementptr %"compiler/build:Unit", ptr %t151, i32 0, i32 2
  %t153 = load { i64, ptr }, ptr %t152, !tbaa !27
  store { i64, ptr } %t153, ptr %l100, !tbaa !27
  %t155 = load ptr, ptr %l92, !tbaa !29
  %t156 = getelementptr %"compiler/build:Unit", ptr %t155, i32 0, i32 2
  store { i64, ptr } %t150, ptr %t156, !tbaa !27
  %t157 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3aUnit_2e2
  br i1 %t157, label %bb31, label %bb32
bb31:
  %t159 = load { i64, ptr }, ptr %l100
  %t160 = extractvalue { i64, ptr } %t159, 1
  call void @__olang_region_release(ptr %t160)
  store { i64, ptr } zeroinitializer, ptr %l100
  br label %bb32
bb32:
  %t161 = load ptr, ptr %l17, !tbaa !29
  store ptr %t161, ptr %l102, !tbaa !29
  %t162 = load ptr, ptr %l102, !tbaa !29
  %t163 = getelementptr %"compiler/build:Unit", ptr %t162, i32 0, i32 3
  %t164 = load { i64, ptr }, ptr %t163, !tbaa !27
  store { i64, ptr } %t164, ptr %l103, !tbaa !27
  %t165 = load ptr, ptr %l102, !tbaa !29
  %t166 = getelementptr %"compiler/build:Unit", ptr %t165, i32 0, i32 3
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d0, i32 0, i32 1) }, ptr %t166, !tbaa !27
  %t167 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3aUnit_2e3
  br i1 %t167, label %bb33, label %bb34
bb33:
  %t169 = load { i64, ptr }, ptr %l103
  %t170 = extractvalue { i64, ptr } %t169, 1
  call void @__olang_region_release(ptr %t170)
  store { i64, ptr } zeroinitializer, ptr %l103
  br label %bb34
bb34:
  br label %bb35
bb35:
  %t171 = load i64, ptr %l15, !tbaa !24
  %t173 = add i64 %t171, 1
  store i64 %t173, ptr %l15, !tbaa !24
  br label %bb20
bb36:
  %t175 = load ptr, ptr %lp9
  %t176 = getelementptr %"compiler/build:Program", ptr %t175, i32 0, i32 1
  %t177 = load { i64, ptr }, ptr %t176, !tbaa !27
  store { i64, ptr } %t177, ptr %l107, !tbaa !27
  %t178 = load ptr, ptr %lp9
  %t179 = getelementptr %"compiler/build:Program", ptr %t178, i32 0, i32 1
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d1, i32 0, i32 1) }, ptr %t179, !tbaa !27
  %t180 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3aProgram_2e1
  br i1 %t180, label %bb37, label %bb38
bb37:
  %t182 = load { i64, ptr }, ptr %l107
  %t183 = extractvalue { i64, ptr } %t182, 1
  call void @__olang_region_release(ptr %t183)
  store { i64, ptr } zeroinitializer, ptr %l107
  br label %bb38
bb38:
  %t184 = load ptr, ptr %l0, !tbaa !29
  %t186 = getelementptr %"compiler/build:Config", ptr %t184, i32 0, i32 0
  %t187 = load { i64, ptr }, ptr %t186, !tbaa !27
  %t189 = call i32 @std_2fos_2eMkDirAll(ptr %v0, { i64, ptr } %t187)
  store i32 %t189, ptr %l111
  %t190 = icmp ne i32 %t189, 0
  br i1 %t190, label %bb40, label %ok.191, !prof !99
ok.191:
  br label %bb39
bb39:
  br label %bb44
bb40:
  %t192 = load i32, ptr %l111, !tbaa !23
  %t193 = ashr i32 %t192, 16
  %t195 = icmp eq i32 %t193, 1
  store i1 %t195, ptr %l113, !tbaa !21
  %t196 = load i32, ptr %l111, !tbaa !23
  %t197 = ashr i32 %t196, 16
  %t199 = icmp eq i32 %t197, 1
  br i1 %t199, label %bb41, label %bb42
bb41:
  call void @__olang_errpay_pop()
  br label %bb42
bb42:
  br label %bb43
bb43:
  call void @__olang_scope_close(ptr %s0)
  store i32 65536, ptr %rv
  br label %ret
bb44:
  %t202 = load ptr, ptr %l0, !tbaa !29
  %t203 = load ptr, ptr %lp9
  %t204 = load ptr, ptr %l8, !tbaa !29
  %t208 = call { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eObjects(ptr %v0, ptr %v8, ptr %v8, ptr %v8, ptr %t202, ptr %t203, ptr %t204)
  %t209 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t208, 1
  %t210 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t208, 0
  store i32 %t210, ptr %l122
  %t211 = icmp ne i32 %t210, 0
  br i1 %t211, label %bb46, label %ok.212, !prof !99
ok.212:
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t209, ptr %l121
  br label %bb45
bb45:
  %t213 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l121
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t213, ptr %l117
  br label %bb47
bb46:
  %t214 = load i32, ptr %l122, !tbaa !23
  %t215 = lshr i32 %t214, 16
  %t216 = and i32 %t214, 65535
  %t217 = icmp eq i32 %t215, 1
  %t218 = select i1 %t217, i32 1, i32 0
  %t219 = icmp eq i32 %t214, 0
  %t220 = shl i32 %t218, 16
  %t221 = or i32 %t220, %t216
  %t222 = select i1 %t219, i32 0, i32 %t221
  call void @__olang_scope_close(ptr %s0)
  store i32 %t222, ptr %rv
  br label %ret
bb47:
  %t224 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l117
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t224, ptr %l18
  call void @compiler_2fbuild_2ePhase(ptr %s0, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d2, i32 0, i32 1) })
  br label %bb48
bb48:
  %t225 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t225, ptr %l124
  br label %bb49
bb49:
  %t226 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l124
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t226, ptr %l19
  %t227 = load ptr, ptr %l0, !tbaa !29
  %t229 = getelementptr %"compiler/build:Config", ptr %t227, i32 0, i32 1
  %t230 = load { i64, ptr }, ptr %t229, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %v0, ptr %l19, { i64, ptr } %t230)
  br label %bb50
bb50:
  %t233 = load ptr, ptr %l0, !tbaa !29
  %t235 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eModeFlags(ptr %v0, ptr %s0, ptr %t233)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t235, ptr %l129
  br label %bb51
bb51:
  %t236 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l129
  %t237 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t236, ptr %t237
  store ptr %t237, ptr %l20, !tbaa !29
  store i64 0, ptr %l21, !tbaa !24
  br label %bb52
bb52:
  %t239 = load i64, ptr %l21, !tbaa !24
  store i64 %t239, ptr %l131, !tbaa !24
  %t240 = load ptr, ptr %l20, !tbaa !29
  %t242 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %t240)
  store i64 %t242, ptr %l133
  br label %bb53
bb53:
  %t243 = load i64, ptr %l131, !tbaa !24
  %t244 = load i64, ptr %l133, !tbaa !24
  %t245 = icmp slt i64 %t243, %t244
  %t247 = xor i1 %t245, true
  br i1 %t247, label %bb54, label %bb55
bb54:
  br label %bb60
bb55:
  br label %bb56
bb56:
  %t249 = load ptr, ptr %l20, !tbaa !29
  %t250 = load i64, ptr %l21, !tbaa !24
  %t253 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %t249, i64 %t250)
  store { i64, ptr } %t253, ptr %l138
  br label %bb57
bb57:
  %t254 = load { i64, ptr }, ptr %l138, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l19, { i64, ptr } %t254)
  br label %bb58
bb58:
  br label %bb59
bb59:
  %t258 = load i64, ptr %l21, !tbaa !24
  %t260 = add i64 %t258, 1
  store i64 %t260, ptr %l21, !tbaa !24
  br label %bb52
bb60:
  %t262 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t264 = extractvalue { i64, ptr } %t262, 1
  %t265 = extractvalue { i64, ptr } %t262, 0
  %t266 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t267 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  %t268 = add i64 %t265, %t267
  %t269 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t268)
  call void @olang_textcopy(ptr %t269, ptr %t264, i64 %t265)
  %t270 = getelementptr i8, ptr %t269, i64 %t265
  call void @olang_textcopy(ptr %t270, ptr %t266, i64 %t267)
  %t271 = insertvalue { i64, ptr } undef, i64 %t268, 0
  %t272 = insertvalue { i64, ptr } %t271, ptr %t269, 1
  store { i64, ptr } %t272, ptr %l23, !tbaa !27
  %t274 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } { i64 74, ptr getelementptr inbounds (<{ i64, [74 x i8] }>, ptr @.d4, i32 0, i32 1) }, ptr %l146, !tbaa !27
  %t276 = load { i64, ptr }, ptr %l146, !tbaa !27
  %t277 = call i32 @std_2fos_2eWriteFile(ptr %s0, ptr %s0, { i64, ptr } %t274, { i64, ptr } %t276)
  store i32 %t277, ptr %l147
  %t278 = icmp ne i32 %t277, 0
  br i1 %t278, label %bb62, label %ok.279, !prof !99
ok.279:
  br label %bb61
bb61:
  br label %bb66
bb62:
  %t280 = load i32, ptr %l147, !tbaa !23
  %t281 = ashr i32 %t280, 16
  %t283 = icmp eq i32 %t281, 1
  store i1 %t283, ptr %l149, !tbaa !21
  %t284 = load i32, ptr %l147, !tbaa !23
  %t285 = ashr i32 %t284, 16
  %t287 = icmp eq i32 %t285, 1
  br i1 %t287, label %bb63, label %bb64
bb63:
  call void @__olang_errpay_pop()
  br label %bb64
bb64:
  br label %bb65
bb65:
  br label %bb66
bb66:
  %t289 = ptrtoint ptr %s0 to i64
  store i64 %t289, ptr %l152, !tbaa !24
  %t290 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_205_3e_2e_2d1
  br i1 %t290, label %bb67, label %bb68
bb67:
  %t292 = call ptr @__olang_region_make(ptr %s0)
  %t293 = ptrtoint ptr %t292 to i64
  store i64 %t293, ptr %l152, !tbaa !24
  br label %bb68
bb68:
  %t294 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t295 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t296 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t298 = extractvalue { i64, ptr } %t294, 1
  %t299 = extractvalue { i64, ptr } %t294, 0
  %t300 = add i64 %t296, %t299
  %t301 = load i64, ptr %l152
  %t302 = inttoptr i64 %t301 to ptr
  %t303 = call ptr @__olang_scope_alloc(ptr %t302, i64 %t300)
  call void @olang_textcopy(ptr %t303, ptr %t295, i64 %t296)
  %t304 = getelementptr i8, ptr %t303, i64 %t296
  call void @olang_textcopy(ptr %t304, ptr %t298, i64 %t299)
  %t305 = insertvalue { i64, ptr } undef, i64 %t300, 0
  %t306 = insertvalue { i64, ptr } %t305, ptr %t303, 1
  %t308 = load i64, ptr %l152
  %t309 = inttoptr i64 %t308 to ptr
  %t310 = extractvalue { i64, ptr } %t306, 0
  %t311 = extractvalue { i64, ptr } %t306, 1
  %t312 = mul i64 %t310, 1
  %t313 = call ptr @__olang_scope_alloc(ptr %t309, i64 %t312)
  call void @llvm.memcpy.p0.p0.i64(ptr %t313, ptr %t311, i64 %t312, i1 false)
  %t314 = insertvalue { i64, ptr } undef, i64 %t310, 0
  %t315 = insertvalue { i64, ptr } %t314, ptr %t313, 1
  %t316 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t317 = insertvalue [5 x { i64, ptr }] undef, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t318 = insertvalue [5 x { i64, ptr }] %t317, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t320 = insertvalue [5 x { i64, ptr }] %t318, { i64, ptr } %t315, 2
  %t321 = insertvalue [5 x { i64, ptr }] %t320, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d8, i32 0, i32 1) }, 3
  %t323 = insertvalue [5 x { i64, ptr }] %t321, { i64, ptr } %t316, 4
  %t325 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 80, i64 8)
  store [5 x { i64, ptr }] %t323, ptr %t325
  store ptr %t325, ptr %l24
  store i64 0, ptr %l25, !tbaa !24
  %t327 = load ptr, ptr %l24
  store i64 5, ptr %l26, !tbaa !24
  br label %bb69
bb69:
  %t330 = load i64, ptr %l25, !tbaa !24
  %t331 = load i64, ptr %l26, !tbaa !24
  %t334 = icmp slt i64 %t330, %t331
  %t336 = xor i1 %t334, true
  br i1 %t336, label %bb70, label %bb71
bb70:
  br label %bb75
bb71:
  br label %bb72
bb72:
  %t338 = load ptr, ptr %l24
  %t339 = load i64, ptr %l25, !tbaa !24
  %t342 = getelementptr [5 x { i64, ptr }], ptr %t338, i64 0, i64 %t339
  %t343 = load { i64, ptr }, ptr %t342, !tbaa !37
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l19, { i64, ptr } %t343)
  br label %bb73
bb73:
  br label %bb74
bb74:
  %t348 = load i64, ptr %l25, !tbaa !24
  %t350 = add i64 %t348, 1
  store i64 %t350, ptr %l25, !tbaa !24
  br label %bb69
bb75:
  store ptr %l18, ptr %l28, !tbaa !29
  store i64 0, ptr %l29, !tbaa !24
  br label %bb76
bb76:
  %t353 = load i64, ptr %l29, !tbaa !24
  store i64 %t353, ptr %l174, !tbaa !24
  %t354 = load ptr, ptr %l28, !tbaa !29
  %t356 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v8, ptr %t354)
  store i64 %t356, ptr %l176
  br label %bb77
bb77:
  %t357 = load i64, ptr %l174, !tbaa !24
  %t358 = load i64, ptr %l176, !tbaa !24
  %t359 = icmp slt i64 %t357, %t358
  %t361 = xor i1 %t359, true
  br i1 %t361, label %bb78, label %bb79
bb78:
  br label %bb84
bb79:
  br label %bb80
bb80:
  %t363 = load ptr, ptr %l28, !tbaa !29
  %t364 = load i64, ptr %l29, !tbaa !24
  %t367 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v8, ptr %v8, ptr %t363, i64 %t364)
  store { i64, ptr } %t367, ptr %l181
  br label %bb81
bb81:
  %t368 = load { i64, ptr }, ptr %l181, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %v8, ptr %l19, { i64, ptr } %t368)
  br label %bb82
bb82:
  br label %bb83
bb83:
  %t372 = load i64, ptr %l29, !tbaa !24
  %t374 = add i64 %t372, 1
  store i64 %t374, ptr %l29, !tbaa !24
  br label %bb76
bb84:
  %t376 = load ptr, ptr %lp9
  %t377 = getelementptr %"compiler/build:Program", ptr %t376, i32 0, i32 3
  store ptr %t377, ptr %l31, !tbaa !29
  store i64 0, ptr %l32, !tbaa !24
  br label %bb85
bb85:
  %t379 = load i64, ptr %l32, !tbaa !24
  store i64 %t379, ptr %l187, !tbaa !24
  %t380 = load ptr, ptr %l31, !tbaa !29
  %t382 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v8, ptr %t380)
  store i64 %t382, ptr %l189
  br label %bb86
bb86:
  %t383 = load i64, ptr %l187, !tbaa !24
  %t384 = load i64, ptr %l189, !tbaa !24
  %t385 = icmp slt i64 %t383, %t384
  %t387 = xor i1 %t385, true
  br i1 %t387, label %bb87, label %bb88
bb87:
  br label %bb93
bb88:
  br label %bb89
bb89:
  %t389 = load ptr, ptr %l31, !tbaa !29
  %t390 = load i64, ptr %l32, !tbaa !24
  %t393 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v8, ptr %v8, ptr %t389, i64 %t390)
  store { i64, ptr } %t393, ptr %l194
  br label %bb90
bb90:
  %t394 = load { i64, ptr }, ptr %l194, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %v8, ptr %l19, { i64, ptr } %t394)
  br label %bb91
bb91:
  br label %bb92
bb92:
  %t398 = load i64, ptr %l32, !tbaa !24
  %t400 = add i64 %t398, 1
  store i64 %t400, ptr %l32, !tbaa !24
  br label %bb85
bb93:
  store %olang.scope zeroinitializer, ptr %s22
  %t402 = insertvalue [3 x { i64, ptr }] undef, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  %t403 = insertvalue [3 x { i64, ptr }] %t402, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t404 = insertvalue [3 x { i64, ptr }] %t403, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d11, i32 0, i32 1) }, 2
  %t406 = call ptr @__olang_scope_alloc_a(ptr %s22, i64 48, i64 8)
  store [3 x { i64, ptr }] %t404, ptr %t406
  store ptr %t406, ptr %l34
  store i64 0, ptr %l35, !tbaa !24
  %t408 = load ptr, ptr %l34
  store i64 3, ptr %l36, !tbaa !24
  br label %bb94
bb94:
  %t411 = load i64, ptr %l35, !tbaa !24
  %t412 = load i64, ptr %l36, !tbaa !24
  %t415 = icmp slt i64 %t411, %t412
  %t417 = xor i1 %t415, true
  br i1 %t417, label %bb95, label %bb96
bb95:
  br label %bb100
bb96:
  br label %bb97
bb97:
  %t419 = load ptr, ptr %l34
  %t420 = load i64, ptr %l35, !tbaa !24
  %t423 = getelementptr [3 x { i64, ptr }], ptr %t419, i64 0, i64 %t420
  %t424 = load { i64, ptr }, ptr %t423, !tbaa !37
  %t427 = load ptr, ptr @__olang_prog_scope
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %t427, ptr %l19, { i64, ptr } %t424)
  br label %bb98
bb98:
  br label %bb99
bb99:
  %t430 = load i64, ptr %l35, !tbaa !24
  %t432 = add i64 %t430, 1
  store i64 %t432, ptr %l35, !tbaa !24
  br label %bb94
bb100:
  call void @__olang_scope_close(ptr %s22)
  %t434 = load ptr, ptr %lp9
  %t435 = getelementptr %"compiler/build:Program", ptr %t434, i32 0, i32 2
  %t436 = load { i64, ptr }, ptr %t435, !tbaa !27
  %t438 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v8, ptr %s0, { i64, ptr } %t436, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d12, i32 0, i32 1) })
  store i1 %t438, ptr %l215
  br label %bb101
bb101:
  %t439 = load i1, ptr %l215, !tbaa !21
  %t440 = xor i1 %t439, true
  br i1 %t440, label %bb102, label %bb103
bb102:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l19, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d13, i32 0, i32 1) })
  br label %bb104
bb103:
  br label %bb105
bb104:
  br label %bb105
bb105:
  %t443 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t444 = load ptr, ptr %l8, !tbaa !29
  %t448 = call i32 @compiler_2fcells_2elink(ptr %s0, ptr %v7, ptr %v8, ptr %l19, { i64, ptr } %t443, ptr %t444)
  store i32 %t448, ptr %l221
  %t449 = icmp ne i32 %t448, 0
  br i1 %t449, label %bb107, label %ok.450, !prof !99
ok.450:
  br label %bb106
bb106:
  br label %bb108
bb107:
  %t451 = load i32, ptr %l221, !tbaa !23
  %t452 = lshr i32 %t451, 16
  %t453 = and i32 %t451, 65535
  %t454 = icmp eq i32 %t452, 1
  %t455 = select i1 %t454, i32 1, i32 0
  %t456 = icmp eq i32 %t451, 0
  %t457 = shl i32 %t455, 16
  %t458 = or i32 %t457, %t453
  %t459 = select i1 %t456, i32 0, i32 %t458
  call void @__olang_scope_close(ptr %s0)
  store i32 %t459, ptr %rv
  br label %ret
bb108:
  call void @compiler_2fbuild_2ePhase(ptr %s0, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d14, i32 0, i32 1) })
  br label %bb109
bb109:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2fcells_2eCacheDir(ptr %v0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call { i64, ptr } @compiler_2fbuild_2eCacheDir(ptr %s0, ptr %v0, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d15, i32 0, i32 1) })
  store { i64, ptr } %t1, ptr %l0
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  %t2 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t2, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fcells_2eConfig(ptr %out, ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/build:Config"
  %l2 = alloca %"compiler/build:Config"
  %l5 = alloca { i64, ptr }
  %l9 = alloca %"compiler/target:Target"
  %l18 = alloca %"compiler/cond:Consts"
  %l20 = alloca %"compiler/cond:Consts"
  %l21 = alloca %"compiler/cond:Consts"
  %l36 = alloca i64
  %l38 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l42 = alloca %"compiler/build:Config"
  %t1 = alloca %"compiler/build:Config", align 8
  %t60 = alloca %"compiler/cond:Consts", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  call void @compiler_2fbuild_3aConfig_2ector(ptr %t1, ptr %v1)
  call void @llvm.memmove.p0.p0.i64(ptr %l2, ptr %t1, i64 640, i1 false)
  br label %bb1
bb1:
  call void @llvm.memmove.p0.p0.i64(ptr %l1, ptr %l2, i64 640, i1 false)
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"compiler/build:Config", ptr %t2, i32 0, i32 1
  %t5 = load { i64, ptr }, ptr %t4, !tbaa !27
  %t6 = getelementptr %"compiler/build:Config", ptr %l1, i32 0, i32 1
  %t7 = load { i64, ptr }, ptr %t6, !tbaa !27
  store { i64, ptr } %t7, ptr %l5, !tbaa !27
  %t9 = getelementptr %"compiler/build:Config", ptr %l1, i32 0, i32 1
  store { i64, ptr } %t5, ptr %t9, !tbaa !27
  %t10 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3aConfig_2e1
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = load { i64, ptr }, ptr %l5
  %t13 = extractvalue { i64, ptr } %t12, 1
  call void @__olang_region_release(ptr %t13)
  store { i64, ptr } zeroinitializer, ptr %l5
  br label %bb3
bb3:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/build:Config", ptr %t14, i32 0, i32 2
  %t17 = load %"compiler/target:Target", ptr %t16
  %t18 = getelementptr %"compiler/build:Config", ptr %l1, i32 0, i32 2
  %t19 = load %"compiler/target:Target", ptr %t18
  store %"compiler/target:Target" %t19, ptr %l9
  %t21 = getelementptr %"compiler/build:Config", ptr %l1, i32 0, i32 2
  store %"compiler/target:Target" %t17, ptr %t21
  %t22 = load i1, ptr @olang_2esole_2ecompiler_2ftarget_3aTarget_2e0
  br i1 %t22, label %bb4, label %bb5
bb4:
  %t24 = getelementptr %"compiler/target:Target", ptr %l9, i32 0, i32 0
  %t25 = load { i64, ptr }, ptr %t24
  %t26 = extractvalue { i64, ptr } %t25, 1
  call void @__olang_region_release(ptr %t26)
  store { i64, ptr } zeroinitializer, ptr %t24
  br label %bb5
bb5:
  %t27 = load i1, ptr @olang_2esole_2ecompiler_2ftarget_3aTarget_2e1
  br i1 %t27, label %bb6, label %bb7
bb6:
  %t29 = getelementptr %"compiler/target:Target", ptr %l9, i32 0, i32 1
  %t30 = load { i64, ptr }, ptr %t29
  %t31 = extractvalue { i64, ptr } %t30, 1
  call void @__olang_region_release(ptr %t31)
  store { i64, ptr } zeroinitializer, ptr %t29
  br label %bb7
bb7:
  %t32 = load i1, ptr @olang_2esole_2ecompiler_2ftarget_3aTarget_2e2
  br i1 %t32, label %bb8, label %bb9
bb8:
  %t34 = getelementptr %"compiler/target:Target", ptr %l9, i32 0, i32 2
  %t35 = load { i64, ptr }, ptr %t34
  %t36 = extractvalue { i64, ptr } %t35, 1
  call void @__olang_region_release(ptr %t36)
  store { i64, ptr } zeroinitializer, ptr %t34
  br label %bb9
bb9:
  %t37 = load i1, ptr @olang_2esole_2ecompiler_2ftarget_3aTarget_2e3
  br i1 %t37, label %bb10, label %bb11
bb10:
  %t39 = getelementptr %"compiler/target:Target", ptr %l9, i32 0, i32 3
  %t40 = load { i64, ptr }, ptr %t39
  %t41 = extractvalue { i64, ptr } %t40, 1
  call void @__olang_region_release(ptr %t41)
  store { i64, ptr } zeroinitializer, ptr %t39
  br label %bb11
bb11:
  %t42 = load i1, ptr @olang_2esole_2ecompiler_2ftarget_3aTarget_2e4
  br i1 %t42, label %bb12, label %bb13
bb12:
  %t44 = getelementptr %"compiler/target:Target", ptr %l9, i32 0, i32 4
  %t45 = load { i64, ptr }, ptr %t44
  %t46 = extractvalue { i64, ptr } %t45, 1
  call void @__olang_region_release(ptr %t46)
  store { i64, ptr } zeroinitializer, ptr %t44
  br label %bb13
bb13:
  %t47 = load i1, ptr @olang_2esole_2ecompiler_2ftarget_3aTarget_2e5
  br i1 %t47, label %bb14, label %bb15
bb14:
  %t49 = getelementptr %"compiler/target:Target", ptr %l9, i32 0, i32 5
  %t50 = load { i64, ptr }, ptr %t49
  %t51 = extractvalue { i64, ptr } %t50, 1
  call void @__olang_region_release(ptr %t51)
  store { i64, ptr } zeroinitializer, ptr %t49
  br label %bb15
bb15:
  %t52 = load i1, ptr @olang_2esole_2ecompiler_2ftarget_3aTarget_2e6
  br i1 %t52, label %bb16, label %bb17
bb16:
  %t54 = getelementptr %"compiler/target:Target", ptr %l9, i32 0, i32 6
  %t55 = load { i64, ptr }, ptr %t54
  %t56 = extractvalue { i64, ptr } %t55, 1
  call void @__olang_region_release(ptr %t56)
  store { i64, ptr } zeroinitializer, ptr %t54
  br label %bb17
bb17:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/build:Config", ptr %t57, i32 0, i32 3
  call void @llvm.memmove.p0.p0.i64(ptr %l18, ptr %t59, i64 224, i1 false)
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fcond_3aConsts(ptr %t60, ptr %v1, ptr %l18)
  call void @llvm.memmove.p0.p0.i64(ptr %l20, ptr %t60, i64 224, i1 false)
  br label %bb18
bb18:
  %t62 = getelementptr %"compiler/build:Config", ptr %l1, i32 0, i32 3
  call void @llvm.memmove.p0.p0.i64(ptr %l21, ptr %t62, i64 224, i1 false)
  %t63 = getelementptr %"compiler/build:Config", ptr %l1, i32 0, i32 3
  call void @llvm.memmove.p0.p0.i64(ptr %t63, ptr %l20, i64 224, i1 false)
  %t64 = load i1, ptr @olang_2esole_2ecompiler_2fcond_3aConsts_2e0
  br i1 %t64, label %bb19, label %bb20
bb19:
  %t66 = getelementptr %"compiler/cond:Consts", ptr %l21, i32 0, i32 0
  %t67 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t66, i32 0, i32 0
  %t68 = load { i64, ptr }, ptr %t67
  %t69 = extractvalue { i64, ptr } %t68, 1
  %t70 = call ptr @__olang_region_or(ptr %t69, ptr null)
  %t71 = call ptr @__olang_region_home(ptr %t70)
  %t72 = icmp ne ptr %t71, null
  %t73 = select i1 %t72, ptr %t71, ptr null
  call void @__olang_region_drop(ptr %t73)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %t66
  br label %bb20
bb20:
  %t74 = load i1, ptr @olang_2esole_2ecompiler_2fcond_3aConsts_2e2
  br i1 %t74, label %bb21, label %bb22
bb21:
  %t76 = getelementptr %"compiler/cond:Consts", ptr %l21, i32 0, i32 2
  %t77 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t76, i32 0, i32 0
  %t78 = load { i64, ptr }, ptr %t77
  %t79 = extractvalue { i64, ptr } %t78, 1
  %t80 = call ptr @__olang_region_or(ptr %t79, ptr null)
  %t81 = call ptr @__olang_region_home(ptr %t80)
  %t82 = icmp ne ptr %t81, null
  %t83 = select i1 %t82, ptr %t81, ptr null
  call void @__olang_region_drop(ptr %t83)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %t76
  br label %bb22
bb22:
  %t84 = load i1, ptr @olang_2esole_2ecompiler_2fcond_3aConsts_2e3
  br i1 %t84, label %bb23, label %bb24
bb23:
  %t86 = getelementptr %"compiler/cond:Consts", ptr %l21, i32 0, i32 3
  %t87 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t86, i32 0, i32 0
  %t88 = load { i64, ptr }, ptr %t87
  %t89 = extractvalue { i64, ptr } %t88, 1
  %t90 = call ptr @__olang_region_or(ptr %t89, ptr null)
  %t91 = call ptr @__olang_region_home(ptr %t90)
  %t92 = icmp ne ptr %t91, null
  %t93 = select i1 %t92, ptr %t91, ptr null
  call void @__olang_region_drop(ptr %t93)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %t86
  br label %bb24
bb24:
  %t94 = load i1, ptr @olang_2esole_2ecompiler_2fcond_3aConsts_2e4
  br i1 %t94, label %bb25, label %bb26
bb25:
  %t96 = getelementptr %"compiler/cond:Consts", ptr %l21, i32 0, i32 4
  %t97 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t96, i32 0, i32 0
  %t98 = load { i64, ptr }, ptr %t97
  %t99 = extractvalue { i64, ptr } %t98, 1
  %t100 = call ptr @__olang_region_or(ptr %t99, ptr null)
  %t101 = call ptr @__olang_region_home(ptr %t100)
  %t102 = icmp ne ptr %t101, null
  %t103 = select i1 %t102, ptr %t101, ptr null
  call void @__olang_region_drop(ptr %t103)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %t96
  br label %bb26
bb26:
  %t104 = load i1, ptr @olang_2esole_2ecompiler_2fcond_3aConsts_2e5
  br i1 %t104, label %bb27, label %bb28
bb27:
  %t106 = getelementptr %"compiler/cond:Consts", ptr %l21, i32 0, i32 5
  %t107 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t106, i32 0, i32 0
  %t108 = load { i64, ptr }, ptr %t107
  %t109 = extractvalue { i64, ptr } %t108, 1
  %t110 = call ptr @__olang_region_or(ptr %t109, ptr null)
  %t111 = call ptr @__olang_region_home(ptr %t110)
  %t112 = icmp ne ptr %t111, null
  %t113 = select i1 %t112, ptr %t111, ptr null
  call void @__olang_region_drop(ptr %t113)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %t106
  br label %bb28
bb28:
  %t114 = load i1, ptr @olang_2esole_2ecompiler_2fcond_3aConsts_2e6
  br i1 %t114, label %bb29, label %bb30
bb29:
  %t116 = getelementptr %"compiler/cond:Consts", ptr %l21, i32 0, i32 6
  %t117 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t116, i32 0, i32 0
  %t118 = load { i64, ptr }, ptr %t117
  %t119 = extractvalue { i64, ptr } %t118, 1
  %t120 = call ptr @__olang_region_or(ptr %t119, ptr null)
  %t121 = call ptr @__olang_region_home(ptr %t120)
  %t122 = icmp ne ptr %t121, null
  %t123 = select i1 %t122, ptr %t121, ptr null
  call void @__olang_region_drop(ptr %t123)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %t116
  br label %bb30
bb30:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t126 = getelementptr %"compiler/build:Config", ptr %t124, i32 0, i32 20
  %t127 = load i1, ptr %t126, !tbaa !21
  %t129 = getelementptr %"compiler/build:Config", ptr %l1, i32 0, i32 20
  store i1 %t127, ptr %t129, !tbaa !21
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t132 = getelementptr %"compiler/build:Config", ptr %t130, i32 0, i32 27
  %t133 = load i64, ptr %t132, !tbaa !24
  %t135 = getelementptr %"compiler/build:Config", ptr %l1, i32 0, i32 27
  store i64 %t133, ptr %t135, !tbaa !24
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t138 = getelementptr %"compiler/build:Config", ptr %t136, i32 0, i32 5
  %t139 = load i1, ptr %t138, !tbaa !21
  %t141 = getelementptr %"compiler/build:Config", ptr %l1, i32 0, i32 5
  store i1 %t139, ptr %t141, !tbaa !21
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t144 = getelementptr %"compiler/build:Config", ptr %t142, i32 0, i32 22
  %t145 = load i1, ptr %t144, !tbaa !21
  %t147 = getelementptr %"compiler/build:Config", ptr %l1, i32 0, i32 22
  store i1 %t145, ptr %t147, !tbaa !21
  %t148 = getelementptr %"compiler/build:Config", ptr %l1, i32 0, i32 11
  store i1 true, ptr %t148, !tbaa !21
  %t149 = getelementptr %"compiler/build:Config", ptr %l1, i32 0, i32 29
  store i1 true, ptr %t149, !tbaa !21
  %t150 = ptrtoint ptr %v1 to i64
  store i64 %t150, ptr %l36, !tbaa !24
  %t151 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3aConfig_2e0
  br i1 %t151, label %bb31, label %bb32
bb31:
  %t153 = call ptr @__olang_region_make(ptr %v1)
  %t154 = ptrtoint ptr %t153 to i64
  store i64 %t154, ptr %l36, !tbaa !24
  br label %bb32
bb32:
  %t155 = load i64, ptr %l36
  %t156 = inttoptr i64 %t155 to ptr
  %t157 = call { i64, ptr } @compiler_2fcells_2eCacheDir(ptr %t156)
  store { i64, ptr } %t157, ptr %l38
  br label %bb33
bb33:
  %t158 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t159 = load i64, ptr %l36
  %t160 = inttoptr i64 %t159 to ptr
  %t161 = extractvalue { i64, ptr } %t158, 0
  %t162 = extractvalue { i64, ptr } %t158, 1
  %t163 = mul i64 %t161, 1
  %t164 = call ptr @__olang_scope_alloc(ptr %t160, i64 %t163)
  call void @llvm.memcpy.p0.p0.i64(ptr %t164, ptr %t162, i64 %t163, i1 false)
  %t165 = insertvalue { i64, ptr } undef, i64 %t161, 0
  %t166 = insertvalue { i64, ptr } %t165, ptr %t164, 1
  %t167 = getelementptr %"compiler/build:Config", ptr %l1, i32 0, i32 0
  %t168 = load { i64, ptr }, ptr %t167, !tbaa !27
  store { i64, ptr } %t168, ptr %l40, !tbaa !27
  %t170 = getelementptr %"compiler/build:Config", ptr %l1, i32 0, i32 0
  store { i64, ptr } %t166, ptr %t170, !tbaa !27
  %t171 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3aConfig_2e0
  br i1 %t171, label %bb34, label %bb35
bb34:
  %t173 = load { i64, ptr }, ptr %l40
  %t174 = extractvalue { i64, ptr } %t173, 1
  call void @__olang_region_release(ptr %t174)
  store { i64, ptr } zeroinitializer, ptr %l40
  br label %bb35
bb35:
  call void @llvm.memmove.p0.p0.i64(ptr %l42, ptr %l1, i64 640, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l42, i64 640, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcells_2ecompiler_2fcells_3aWorker_2eEnd(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca [4096 x i8]
  %l4 = alloca i1
  %l8 = alloca { i64, ptr }
  %l9 = alloca i32
  %l11 = alloca i1
  %l27 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l31 = alloca i1
  %l34 = alloca i1
  %l37 = alloca [4096 x i8]
  %l41 = alloca [4096 x i8]
  %l44 = alloca i64
  %l52 = alloca i1
  %l54 = alloca i1
  %l59 = alloca i1
  %l61 = alloca i1
  %l69 = alloca i32
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i1 @compiler_2fcells_2ecompiler_2fcells_3aWorker_2eRunning(ptr %v0, ptr %t1)
  store i1 %t3, ptr %l4
  br label %bb1
bb1:
  %t4 = load i1, ptr %l4, !tbaa !21
  %t5 = xor i1 %t4, true
  br i1 %t5, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb3:
  br label %bb4
bb4:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/cells:Worker", ptr %t7, i32 0, i32 3
  %t10 = load i32, ptr %t9, !tbaa !23
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d16, i32 0, i32 1) }, ptr %l8, !tbaa !27
  %t12 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t13 = call i32 @std_2fio_2eWrite(ptr %s0, i32 %t10, { i64, ptr } %t12)
  store i32 %t13, ptr %l9
  %t14 = icmp ne i32 %t13, 0
  br i1 %t14, label %bb6, label %ok.15, !prof !99
ok.15:
  br label %bb5
bb5:
  br label %bb10
bb6:
  %t16 = load i32, ptr %l9, !tbaa !23
  %t17 = ashr i32 %t16, 16
  %t19 = icmp eq i32 %t17, 1
  store i1 %t19, ptr %l11, !tbaa !21
  %t20 = load i32, ptr %l9, !tbaa !23
  %t21 = ashr i32 %t20, 16
  %t23 = icmp eq i32 %t21, 1
  br i1 %t23, label %bb7, label %bb8
bb7:
  call void @__olang_errpay_pop()
  br label %bb8
bb8:
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/cells:Worker", ptr %t25, i32 0, i32 3
  %t28 = load i32, ptr %t27, !tbaa !23
  call void @compiler_2fsession_2eCloseFd(i32 %t28)
  br label %bb11
bb11:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/cells:Worker", ptr %t30, i32 0, i32 3
  store i32 -1, ptr %t32, !tbaa !23
  br label %bb12
bb12:
  store %olang.scope zeroinitializer, ptr %s3
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/cells:Worker", ptr %t33, i32 0, i32 4
  %t36 = load i32, ptr %t35, !tbaa !23
  %t38 = icmp sge i32 %t36, 0
  %t40 = xor i1 %t38, true
  br i1 %t40, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s3)
  br label %bb34
bb14:
  br label %bb15
bb15:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/cells:Worker", ptr %t42, i32 0, i32 4
  %t45 = load i32, ptr %t44, !tbaa !23
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/cells:Worker", ptr %t46, i32 0, i32 5
  %t49 = load i32, ptr %t48, !tbaa !23
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/cells:Worker", ptr %t50, i32 0, i32 6
  %t53 = load i32, ptr %t52, !tbaa !23
  %t54 = mul i64 3, 4
  %t55 = call ptr @__olang_scope_alloc_zeroed(ptr %s3, i64 %t54)
  %t56 = insertvalue { i64, ptr } undef, i64 3, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t55, 1
  store { i64, ptr } %t57, ptr %l27, !tbaa !27
  %t59 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !27
  %t61 = getelementptr i32, ptr %t60, i64 0
  store i32 %t45, ptr %t61, !tbaa !33
  %t63 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !27
  %t65 = getelementptr i32, ptr %t64, i64 1
  store i32 %t49, ptr %t65, !tbaa !33
  %t67 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !27
  %t69 = getelementptr i32, ptr %t68, i64 2
  store i32 %t53, ptr %t69, !tbaa !33
  %t70 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t71 = call { i64, ptr } @compiler_2fsession_2eReadable(ptr %s3, ptr %s3, { i64, ptr } %t70, i32 -1)
  store { i64, ptr } %t71, ptr %l28
  br label %bb16
bb16:
  %t72 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t72, ptr %l1, !tbaa !27
  %t73 = getelementptr { i64, ptr }, ptr %l1, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !27
  %t75 = getelementptr i1, ptr %t74, i64 1
  %t76 = load i1, ptr %t75, !tbaa !31
  br i1 %t76, label %bb17, label %bb18
bb17:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = call i1 @compiler_2fcells_2ecompiler_2fcells_3aWorker_2erelay(ptr %v0, ptr %t78, i64 1)
  store i1 %t80, ptr %l31
  br label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb20
bb20:
  %t81 = getelementptr { i64, ptr }, ptr %l1, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !27
  %t83 = getelementptr i1, ptr %t82, i64 2
  %t84 = load i1, ptr %t83, !tbaa !31
  br i1 %t84, label %bb21, label %bb22
bb21:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = call i1 @compiler_2fcells_2ecompiler_2fcells_3aWorker_2erelay(ptr %v0, ptr %t86, i64 2)
  store i1 %t88, ptr %l34
  br label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb24
bb24:
  %t89 = getelementptr { i64, ptr }, ptr %l1, i32 0, i32 1
  %t90 = load ptr, ptr %t89, !tbaa !27
  %t91 = getelementptr i1, ptr %t90, i64 0
  %t92 = load i1, ptr %t91, !tbaa !31
  %t94 = xor i1 %t92, true
  br i1 %t94, label %bb25, label %bb26
bb25:
  call void @__olang_scope_close(ptr %s3)
  br label %bb33
bb26:
  br label %bb27
bb27:
  br label %fill.99
fill.99:
  br label %fill.96
fill.96:
  %t100 = phi i64 [ 0, %fill.99 ], [ %t101, %fill.97 ]
  %t102 = icmp slt i64 %t100, 4096
  br i1 %t102, label %fill.97, label %fill.98
fill.97:
  %t103 = getelementptr [4096 x i8], ptr %l37, i64 0, i64 %t100
  store i8 0, ptr %t103
  %t101 = add i64 %t100, 1
  br label %fill.96
fill.98:
  call void @llvm.memmove.p0.p0.i64(ptr %l2, ptr %l37, i64 4096, i1 false)
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/cells:Worker", ptr %t104, i32 0, i32 4
  %t107 = load i32, ptr %t106, !tbaa !23
  call void @llvm.memmove.p0.p0.i64(ptr %l41, ptr %l2, i64 4096, i1 false)
  %t108 = load [4096 x i8], ptr %l41
  %t113 = call i64 @read(i32 %t107, ptr %l2, i64 4096)
  store i64 %t113, ptr %l44
  br label %bb28
bb28:
  %t114 = load i64, ptr %l44, !tbaa !24
  %t115 = icmp sle i64 %t114, 0
  br i1 %t115, label %bb29, label %bb30
bb29:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/cells:Worker", ptr %t117, i32 0, i32 4
  %t120 = load i32, ptr %t119, !tbaa !23
  call void @compiler_2fsession_2eCloseFd(i32 %t120)
  br label %bb31
bb30:
  br label %bb32
bb31:
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t124 = getelementptr %"compiler/cells:Worker", ptr %t122, i32 0, i32 4
  store i32 -1, ptr %t124, !tbaa !23
  br label %bb32
bb32:
  call void @__olang_scope_close(ptr %s3)
  br label %bb33
bb33:
  br label %bb12
bb34:
  br label %bb35
bb35:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = getelementptr %"compiler/cells:Worker", ptr %t125, i32 0, i32 5
  %t128 = load i32, ptr %t127, !tbaa !23
  %t130 = icmp sge i32 %t128, 0
  br i1 %t130, label %bb36, label %bb37
bb36:
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t134 = call i1 @compiler_2fcells_2ecompiler_2fcells_3aWorker_2erelay(ptr %v0, ptr %t132, i64 1)
  store i1 %t134, ptr %l54
  br label %bb38
bb37:
  store i1 false, ptr %l52, !tbaa !21
  br label %bb39
bb38:
  %t135 = load i1, ptr %l54, !tbaa !21
  store i1 %t135, ptr %l52, !tbaa !21
  br label %bb39
bb39:
  %t136 = load i1, ptr %l52, !tbaa !21
  %t137 = xor i1 %t136, true
  br i1 %t137, label %bb40, label %bb41
bb40:
  br label %bb44
bb41:
  br label %bb42
bb42:
  br label %bb43
bb43:
  br label %bb35
bb44:
  br label %bb45
bb45:
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t141 = getelementptr %"compiler/cells:Worker", ptr %t139, i32 0, i32 6
  %t142 = load i32, ptr %t141, !tbaa !23
  %t144 = icmp sge i32 %t142, 0
  br i1 %t144, label %bb46, label %bb47
bb46:
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t148 = call i1 @compiler_2fcells_2ecompiler_2fcells_3aWorker_2erelay(ptr %v0, ptr %t146, i64 2)
  store i1 %t148, ptr %l61
  br label %bb48
bb47:
  store i1 false, ptr %l59, !tbaa !21
  br label %bb49
bb48:
  %t149 = load i1, ptr %l61, !tbaa !21
  store i1 %t149, ptr %l59, !tbaa !21
  br label %bb49
bb49:
  %t150 = load i1, ptr %l59, !tbaa !21
  %t151 = xor i1 %t150, true
  br i1 %t151, label %bb50, label %bb51
bb50:
  br label %bb54
bb51:
  br label %bb52
bb52:
  br label %bb53
bb53:
  br label %bb45
bb54:
  %t153 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcells_2ecompiler_2fcells_3aWorker_2eclose(ptr %v0, ptr %t153)
  br label %bb55
bb55:
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t157 = getelementptr %"compiler/cells:Worker", ptr %t155, i32 0, i32 1
  %t158 = load i32, ptr %t157, !tbaa !23
  %t160 = icmp sgt i32 %t158, 0
  br i1 %t160, label %bb56, label %bb57
bb56:
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t164 = getelementptr %"compiler/cells:Worker", ptr %t162, i32 0, i32 1
  %t165 = load i32, ptr %t164, !tbaa !23
  %t167 = call i32 @compiler_2fsession_2eReap(i32 %t165)
  store i32 %t167, ptr %l69
  br label %bb58
bb57:
  br label %bb59
bb58:
  br label %bb59
bb59:
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t170 = getelementptr %"compiler/cells:Worker", ptr %t168, i32 0, i32 1
  store i32 -1, ptr %t170, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/cells:Outcome" @compiler_2fcells_2ecompiler_2fcells_3aWorker_2eRun(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, ptr %a2c, ptr %a2e) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { ptr, ptr }
  %l3 = alloca %"compiler/cells:Outcome"
  %l4 = alloca i1
  %l5 = alloca [3 x i32]
  %l6 = alloca { i64, ptr }
  %l7 = alloca %"compiler/cells:Outcome"
  %l14 = alloca i32
  %l16 = alloca i1
  %l22 = alloca i64
  %l32 = alloca { i64, ptr }
  %l36 = alloca i32
  %l37 = alloca { i64, ptr }
  %l40 = alloca i1
  %l43 = alloca i1
  %l50 = alloca i1
  %l52 = alloca i1
  %l57 = alloca i1
  %l60 = alloca i32
  %l65 = alloca i1
  %l68 = alloca { i64, ptr }
  %l69 = alloca { i64, ptr }
  %l71 = alloca i1
  %l73 = alloca i1
  %l78 = alloca i1
  %l81 = alloca { i64, ptr }
  %l82 = alloca { i64, ptr }
  %l84 = alloca i1
  %l86 = alloca i1
  %l91 = alloca i1
  %l93 = alloca i32
  %l97 = alloca i32
  %l102 = alloca %"compiler/cells:Outcome"
  %l103 = alloca i64
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %rv = alloca %"compiler/cells:Outcome"
  store ptr %a0, ptr %l0
  %pf2 = insertvalue { ptr, ptr } undef, ptr %a2c, 0
  %pg2 = insertvalue { ptr, ptr } %pf2, ptr %a2e, 1
  store { ptr, ptr } %pg2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"compiler/cells:Outcome" @compiler_2fcells_3aOutcome_2ector(ptr %v3)
  store %"compiler/cells:Outcome" %t1, ptr %l7
  br label %bb1
bb1:
  %t2 = load %"compiler/cells:Outcome", ptr %l7
  store %"compiler/cells:Outcome" %t2, ptr %l3
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/cells:Worker", ptr %t3, i32 0, i32 3
  %t6 = load i32, ptr %t5, !tbaa !23
  %t8 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a1, 1
  %t12 = extractvalue { i64, ptr } %a1, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t17 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t16)
  call void @olang_textcopy(ptr %t17, ptr %t8, i64 %t9)
  %t18 = getelementptr i8, ptr %t17, i64 %t9
  call void @olang_textcopy(ptr %t18, ptr %t11, i64 %t12)
  %t19 = getelementptr i8, ptr %t18, i64 %t12
  call void @olang_textcopy(ptr %t19, ptr %t14, i64 %t15)
  %t20 = insertvalue { i64, ptr } undef, i64 %t16, 0
  %t21 = insertvalue { i64, ptr } %t20, ptr %t17, 1
  %t24 = extractvalue { i64, ptr } %t21, 0
  %t25 = extractvalue { i64, ptr } %t21, 1
  %t26 = mul i64 %t24, 1
  %t27 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t26)
  call void @llvm.memcpy.p0.p0.i64(ptr %t27, ptr %t25, i64 %t26, i1 false)
  %t28 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t29 = insertvalue { i64, ptr } %t28, ptr %t27, 1
  %t32 = call i32 @std_2fio_2eWrite(ptr %s0, i32 %t6, { i64, ptr } %t29)
  store i32 %t32, ptr %l14
  %t33 = icmp ne i32 %t32, 0
  br i1 %t33, label %bb3, label %ok.34, !prof !99
ok.34:
  br label %bb2
bb2:
  br label %bb8
bb3:
  %t35 = load i32, ptr %l14, !tbaa !23
  %t36 = ashr i32 %t35, 16
  %t38 = icmp eq i32 %t36, 1
  store i1 %t38, ptr %l16, !tbaa !21
  %t39 = load i32, ptr %l14, !tbaa !23
  %t40 = ashr i32 %t39, 16
  %t42 = icmp eq i32 %t40, 1
  br i1 %t42, label %bb4, label %bb5
bb4:
  call void @__olang_errpay_pop()
  br label %bb5
bb5:
  br label %bb6
bb6:
  %t44 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcells_2ecompiler_2fcells_3aWorker_2elost(ptr %v0, ptr %v3, ptr %t44, ptr %l3)
  br label %bb7
bb7:
  %t47 = load %"compiler/cells:Outcome", ptr %l3
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/cells:Outcome" %t47, ptr %rv
  br label %ret
bb8:
  %t49 = call i64 @signal(i32 2, i64 1)
  store i64 %t49, ptr %l22
  br label %bb9
bb9:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/cells:Worker", ptr %t50, i32 0, i32 2
  store i32 -1, ptr %t52, !tbaa !23
  store i1 false, ptr %l4, !tbaa !21
  br label %bb10
bb10:
  store %olang.scope zeroinitializer, ptr %s3
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/cells:Worker", ptr %t53, i32 0, i32 4
  %t56 = load i32, ptr %t55, !tbaa !23
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/cells:Worker", ptr %t57, i32 0, i32 5
  %t60 = load i32, ptr %t59, !tbaa !23
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/cells:Worker", ptr %t61, i32 0, i32 6
  %t64 = load i32, ptr %t63, !tbaa !23
  %t66 = insertvalue [3 x i32] undef, i32 %t56, 0
  %t68 = insertvalue [3 x i32] %t66, i32 %t60, 1
  %t70 = insertvalue [3 x i32] %t68, i32 %t64, 2
  store [3 x i32] %t70, ptr %l5
  %t73 = insertvalue { i64, ptr } undef, i64 3, 0
  %t74 = insertvalue { i64, ptr } %t73, ptr %l5, 1
  store { i64, ptr } %t74, ptr %l32, !tbaa !27
  %t75 = load { ptr, ptr }, ptr %l2
  %t77 = extractvalue { ptr, ptr } %t75, 0
  %t78 = extractvalue { ptr, ptr } zeroinitializer, 0
  %t79 = icmp eq ptr %t77, %t78
  %t80 = extractvalue { ptr, ptr } %t75, 1
  %t81 = extractvalue { ptr, ptr } zeroinitializer, 1
  %t82 = icmp eq ptr %t80, %t81
  %t83 = and i1 %t79, %t82
  %t85 = xor i1 %t83, true
  br i1 %t85, label %bb11, label %bb12
bb11:
  store i32 50, ptr %l36, !tbaa !23
  br label %bb13
bb12:
  store i32 -1, ptr %l36, !tbaa !23
  br label %bb13
bb13:
  %t87 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t88 = load i32, ptr %l36, !tbaa !23
  %t89 = call { i64, ptr } @compiler_2fsession_2eReadable(ptr %s3, ptr %s3, { i64, ptr } %t87, i32 %t88)
  store { i64, ptr } %t89, ptr %l37
  br label %bb14
bb14:
  %t90 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t90, ptr %l6, !tbaa !27
  %t91 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !27
  %t93 = getelementptr i1, ptr %t92, i64 1
  %t94 = load i1, ptr %t93, !tbaa !31
  br i1 %t94, label %bb15, label %bb16
bb15:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = call i1 @compiler_2fcells_2ecompiler_2fcells_3aWorker_2erelay(ptr %v0, ptr %t96, i64 1)
  store i1 %t98, ptr %l40
  br label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb18
bb18:
  %t99 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !27
  %t101 = getelementptr i1, ptr %t100, i64 2
  %t102 = load i1, ptr %t101, !tbaa !31
  br i1 %t102, label %bb19, label %bb20
bb19:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = call i1 @compiler_2fcells_2ecompiler_2fcells_3aWorker_2erelay(ptr %v0, ptr %t104, i64 2)
  store i1 %t106, ptr %l43
  br label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb22
bb22:
  %t107 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t108 = load ptr, ptr %t107, !tbaa !27
  %t109 = getelementptr i1, ptr %t108, i64 0
  %t110 = load i1, ptr %t109, !tbaa !31
  br i1 %t110, label %bb23, label %bb24
bb23:
  %t112 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcells_2ecompiler_2fcells_3aWorker_2etake(ptr %v0, ptr %v3, ptr %t112, ptr %l3)
  br label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb26
bb26:
  %t115 = getelementptr %"compiler/cells:Outcome", ptr %l3, i32 0, i32 7
  %t116 = load i1, ptr %t115, !tbaa !21
  br i1 %t116, label %bb27, label %bb28
bb27:
  call void @__olang_scope_close(ptr %s3)
  br label %bb45
bb28:
  br label %bb29
bb29:
  %t118 = load { ptr, ptr }, ptr %l2
  %t120 = extractvalue { ptr, ptr } %t118, 0
  %t121 = extractvalue { ptr, ptr } zeroinitializer, 0
  %t122 = icmp eq ptr %t120, %t121
  %t123 = extractvalue { ptr, ptr } %t118, 1
  %t124 = extractvalue { ptr, ptr } zeroinitializer, 1
  %t125 = icmp eq ptr %t123, %t124
  %t126 = and i1 %t122, %t125
  br i1 %t126, label %bb30, label %bb31
bb30:
  store i1 true, ptr %l50, !tbaa !21
  br label %bb32
bb31:
  %t128 = load i1, ptr %l4, !tbaa !21
  store i1 %t128, ptr %l50, !tbaa !21
  br label %bb32
bb32:
  %t130 = load i1, ptr %l50, !tbaa !21
  br i1 %t130, label %bb33, label %bb34
bb33:
  store i1 true, ptr %l52, !tbaa !21
  br label %bb35
bb34:
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t133 = getelementptr %"compiler/cells:Worker", ptr %t131, i32 0, i32 2
  %t134 = load i32, ptr %t133, !tbaa !23
  %t136 = icmp sle i32 %t134, 0
  store i1 %t136, ptr %l52, !tbaa !21
  br label %bb35
bb35:
  %t138 = load i1, ptr %l52, !tbaa !21
  br i1 %t138, label %bb36, label %bb37
bb36:
  call void @__olang_scope_close(ptr %s3)
  br label %bb44
bb37:
  br label %bb38
bb38:
  %t139 = load { ptr, ptr }, ptr %l2
  %t141 = extractvalue { ptr, ptr } %t139, 0
  %t142 = extractvalue { ptr, ptr } %t139, 1
  %t143 = call i1 %t141(ptr %t142)
  store i1 %t143, ptr %l57
  br label %bb39
bb39:
  %t144 = load i1, ptr %l57, !tbaa !21
  br i1 %t144, label %bb40, label %bb41
bb40:
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t147 = getelementptr %"compiler/cells:Worker", ptr %t145, i32 0, i32 2
  %t148 = load i32, ptr %t147, !tbaa !23
  %t150 = call i32 @kill(i32 %t148, i32 9)
  store i32 %t150, ptr %l60
  br label %bb42
bb41:
  br label %bb43
bb42:
  store i1 true, ptr %l4, !tbaa !21
  br label %bb43
bb43:
  call void @__olang_scope_close(ptr %s3)
  br label %bb44
bb44:
  br label %bb10
bb45:
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t153 = getelementptr %"compiler/cells:Worker", ptr %t151, i32 0, i32 2
  store i32 -1, ptr %t153, !tbaa !23
  br label %bb46
bb46:
  store %olang.scope zeroinitializer, ptr %s10
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr %"compiler/cells:Worker", ptr %t154, i32 0, i32 5
  %t157 = load i32, ptr %t156, !tbaa !23
  %t159 = icmp sge i32 %t157, 0
  br i1 %t159, label %bb47, label %bb48
bb47:
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t163 = getelementptr %"compiler/cells:Worker", ptr %t161, i32 0, i32 5
  %t164 = load i32, ptr %t163, !tbaa !23
  %t165 = mul i64 1, 4
  %t166 = call ptr @__olang_scope_alloc_zeroed(ptr %s10, i64 %t165)
  %t167 = insertvalue { i64, ptr } undef, i64 1, 0
  %t168 = insertvalue { i64, ptr } %t167, ptr %t166, 1
  store { i64, ptr } %t168, ptr %l68, !tbaa !27
  %t170 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t171 = load ptr, ptr %t170, !tbaa !27
  %t172 = getelementptr i32, ptr %t171, i64 0
  store i32 %t164, ptr %t172, !tbaa !33
  %t173 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t174 = call { i64, ptr } @compiler_2fsession_2eReadable(ptr %s10, ptr %s10, { i64, ptr } %t173, i32 0)
  store { i64, ptr } %t174, ptr %l69
  br label %bb49
bb48:
  store i1 false, ptr %l65, !tbaa !21
  br label %bb50
bb49:
  %t175 = getelementptr { i64, ptr }, ptr %l69, i32 0, i32 1
  %t176 = load ptr, ptr %t175, !tbaa !27
  %t177 = getelementptr i1, ptr %t176, i64 0
  %t178 = load i1, ptr %t177, !tbaa !31
  store i1 %t178, ptr %l65, !tbaa !21
  br label %bb50
bb50:
  %t180 = load i1, ptr %l65, !tbaa !21
  br i1 %t180, label %bb51, label %bb52
bb51:
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t183 = call i1 @compiler_2fcells_2ecompiler_2fcells_3aWorker_2erelay(ptr %v0, ptr %t181, i64 1)
  store i1 %t183, ptr %l73
  br label %bb53
bb52:
  store i1 false, ptr %l71, !tbaa !21
  br label %bb54
bb53:
  %t184 = load i1, ptr %l73, !tbaa !21
  store i1 %t184, ptr %l71, !tbaa !21
  br label %bb54
bb54:
  %t185 = load i1, ptr %l71, !tbaa !21
  %t186 = xor i1 %t185, true
  br i1 %t186, label %bb55, label %bb56
bb55:
  call void @__olang_scope_close(ptr %s10)
  br label %bb59
bb56:
  br label %bb57
bb57:
  call void @__olang_scope_close(ptr %s10)
  br label %bb58
bb58:
  br label %bb46
bb59:
  br label %bb60
bb60:
  store %olang.scope zeroinitializer, ptr %s11
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t190 = getelementptr %"compiler/cells:Worker", ptr %t188, i32 0, i32 6
  %t191 = load i32, ptr %t190, !tbaa !23
  %t193 = icmp sge i32 %t191, 0
  br i1 %t193, label %bb61, label %bb62
bb61:
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t197 = getelementptr %"compiler/cells:Worker", ptr %t195, i32 0, i32 6
  %t198 = load i32, ptr %t197, !tbaa !23
  %t199 = mul i64 1, 4
  %t200 = call ptr @__olang_scope_alloc_zeroed(ptr %s11, i64 %t199)
  %t201 = insertvalue { i64, ptr } undef, i64 1, 0
  %t202 = insertvalue { i64, ptr } %t201, ptr %t200, 1
  store { i64, ptr } %t202, ptr %l81, !tbaa !27
  %t204 = getelementptr { i64, ptr }, ptr %l81, i32 0, i32 1
  %t205 = load ptr, ptr %t204, !tbaa !27
  %t206 = getelementptr i32, ptr %t205, i64 0
  store i32 %t198, ptr %t206, !tbaa !33
  %t207 = load { i64, ptr }, ptr %l81, !tbaa !27
  %t208 = call { i64, ptr } @compiler_2fsession_2eReadable(ptr %s11, ptr %s11, { i64, ptr } %t207, i32 0)
  store { i64, ptr } %t208, ptr %l82
  br label %bb63
bb62:
  store i1 false, ptr %l78, !tbaa !21
  br label %bb64
bb63:
  %t209 = getelementptr { i64, ptr }, ptr %l82, i32 0, i32 1
  %t210 = load ptr, ptr %t209, !tbaa !27
  %t211 = getelementptr i1, ptr %t210, i64 0
  %t212 = load i1, ptr %t211, !tbaa !31
  store i1 %t212, ptr %l78, !tbaa !21
  br label %bb64
bb64:
  %t214 = load i1, ptr %l78, !tbaa !21
  br i1 %t214, label %bb65, label %bb66
bb65:
  %t215 = load ptr, ptr %l0, !tbaa !29
  %t217 = call i1 @compiler_2fcells_2ecompiler_2fcells_3aWorker_2erelay(ptr %v0, ptr %t215, i64 2)
  store i1 %t217, ptr %l86
  br label %bb67
bb66:
  store i1 false, ptr %l84, !tbaa !21
  br label %bb68
bb67:
  %t218 = load i1, ptr %l86, !tbaa !21
  store i1 %t218, ptr %l84, !tbaa !21
  br label %bb68
bb68:
  %t219 = load i1, ptr %l84, !tbaa !21
  %t220 = xor i1 %t219, true
  br i1 %t220, label %bb69, label %bb70
bb69:
  call void @__olang_scope_close(ptr %s11)
  br label %bb73
bb70:
  br label %bb71
bb71:
  call void @__olang_scope_close(ptr %s11)
  br label %bb72
bb72:
  br label %bb60
bb73:
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t224 = getelementptr %"compiler/cells:Worker", ptr %t222, i32 0, i32 1
  %t225 = load i32, ptr %t224, !tbaa !23
  %t227 = icmp sgt i32 %t225, 0
  br i1 %t227, label %bb74, label %bb75
bb74:
  %t229 = load ptr, ptr %l0, !tbaa !29
  %t231 = getelementptr %"compiler/cells:Worker", ptr %t229, i32 0, i32 1
  %t232 = load i32, ptr %t231, !tbaa !23
  store i32 %t232, ptr %l93, !tbaa !23
  %t233 = icmp sge i64 1, 0
  br i1 %t233, label %bb76, label %bb77
bb75:
  store i1 false, ptr %l91, !tbaa !21
  br label %bb81
bb76:
  %t235 = icmp sle i64 1, 2305843009213693951
  br i1 %t235, label %bb78, label %bb79
bb77:
  call void @__olang_check_failed(ptr @olang_loc_bd7f84bf0a6a1790_6aecdefa88c1aedc)
  unreachable
bb78:
  %t237 = mul i64 1, 4
  %t238 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t237)
  %t239 = insertvalue { i64, ptr } undef, i64 1, 0
  %t240 = insertvalue { i64, ptr } %t239, ptr %t238, 1
  %t241 = load i32, ptr %l93, !tbaa !23
  %t243 = extractvalue { i64, ptr } %t240, 1
  %t244 = extractvalue { i64, ptr } %t240, 0
  %t245 = call i32 @waitpid(i32 %t241, ptr %t243, i32 1)
  store i32 %t245, ptr %l97
  br label %bb80
bb79:
  call void @__olang_check_failed(ptr @olang_loc_bd7f84bf0a6a1790_6aecdefa88c1aedc)
  unreachable
bb80:
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t248 = getelementptr %"compiler/cells:Worker", ptr %t246, i32 0, i32 1
  %t249 = load i32, ptr %t248, !tbaa !23
  %t250 = load i32, ptr %l97, !tbaa !23
  %t252 = icmp eq i32 %t250, %t249
  store i1 %t252, ptr %l91, !tbaa !21
  br label %bb81
bb81:
  %t254 = load i1, ptr %l91, !tbaa !21
  br i1 %t254, label %bb82, label %bb83
bb82:
  %t255 = load ptr, ptr %l0, !tbaa !29
  %t257 = getelementptr %"compiler/cells:Worker", ptr %t255, i32 0, i32 1
  store i32 0, ptr %t257, !tbaa !23
  br label %bb84
bb83:
  br label %bb84
bb84:
  %t258 = load %"compiler/cells:Outcome", ptr %l3
  store %"compiler/cells:Outcome" %t258, ptr %l102
  %t259 = call i64 @signal(i32 2, i64 0)
  store i64 %t259, ptr %l103
  br label %bb85
bb85:
  call void @__olang_scope_close(ptr %s0)
  %t260 = load %"compiler/cells:Outcome", ptr %l102
  store %"compiler/cells:Outcome" %t260, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/cells:Outcome", ptr %rv
  ret %"compiler/cells:Outcome" %rr
}

define dso_local i1 @compiler_2fcells_2ecompiler_2fcells_3aWorker_2eRunning(ptr %v0, ptr %a0) #0 {
entry:
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/cells:Worker", ptr %a0, i32 0, i32 3
  %t4 = load i32, ptr %t3, !tbaa !23
  %t6 = icmp sge i32 %t4, 0
  store i1 %t6, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fcells_2ecompiler_2fcells_3aWorker_2eStart(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/diag:Diagnostics"
  %l3 = alloca %"compiler/build:Config"
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i32, i32 }
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca { i32, i32 }
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca i32
  %l13 = alloca i32
  %l14 = alloca i32
  %l15 = alloca { i32, i32 }
  %l16 = alloca { i32, i32 }
  %l17 = alloca i32
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l25 = alloca [1 x { i64, ptr }]
  %l26 = alloca ptr
  %l27 = alloca i64
  %l28 = alloca i64
  %l30 = alloca %"compiler/diag:Diagnostics"
  %l32 = alloca %"compiler/build:Config"
  %l34 = alloca %"compiler/build:Config"
  %l35 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l39 = alloca i32
  %l41 = alloca i1
  %l43 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l47 = alloca { i32, i32 }
  %l50 = alloca { i32, i32 }
  %l55 = alloca { i32, i32 }
  %l58 = alloca { i32, i32 }
  %l61 = alloca i32
  %l64 = alloca { i64, ptr }
  %l65 = alloca { i64, ptr }
  %l66 = alloca i64
  %l67 = alloca { i64, ptr }
  %l79 = alloca i64
  %l82 = alloca i64
  %l102 = alloca i32
  %l110 = alloca i32
  %l112 = alloca i1
  %l143 = alloca { i64, ptr }
  %l144 = alloca { i64, ptr }
  %l145 = alloca i64
  %l146 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t1 = alloca %"compiler/diag:Diagnostics", align 8
  %t4 = alloca %"compiler/build:Config", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  call void @compiler_2fdiag_3aDiagnostics_2ector(ptr %t1, ptr %s0, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l30, ptr %t1, i64 704, i1 false)
  br label %bb1
bb1:
  call void @llvm.memmove.p0.p0.i64(ptr %l2, ptr %l30, i64 704, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l32, ptr %a1, i64 640, i1 false)
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbuild_3aConfig(ptr %t4, ptr %s0, ptr %l32)
  call void @llvm.memmove.p0.p0.i64(ptr %l34, ptr %t4, i64 640, i1 false)
  br label %bb2
bb2:
  call void @llvm.memmove.p0.p0.i64(ptr %l3, ptr %l34, i64 640, i1 false)
  %t6 = getelementptr %"compiler/build:Config", ptr %l3, i32 0, i32 11
  store i1 false, ptr %t6, !tbaa !21
  %t9 = call { i32, { i64, ptr } } @compiler_2fcells_2eworkerExe(ptr %s0, ptr %s0, ptr %s0, ptr %l3, ptr %l2)
  %t10 = extractvalue { i32, { i64, ptr } } %t9, 1
  %t11 = extractvalue { i32, { i64, ptr } } %t9, 0
  store i32 %t11, ptr %l39
  %t12 = icmp ne i32 %t11, 0
  br i1 %t12, label %bb4, label %ok.13, !prof !99
ok.13:
  store { i64, ptr } %t10, ptr %l38
  br label %bb3
bb3:
  %t14 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t14, ptr %l35, !tbaa !27
  br label %bb8
bb4:
  %t15 = load i32, ptr %l39, !tbaa !23
  %t16 = ashr i32 %t15, 16
  %t18 = icmp eq i32 %t16, 1
  store i1 %t18, ptr %l41, !tbaa !21
  br label %bb5
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t20 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eRender(ptr %s0, ptr %s1, ptr %l2)
  store { i64, ptr } %t20, ptr %l43
  br label %bb6
bb6:
  %t21 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t22 = extractvalue { i64, ptr } %t21, 0
  %t23 = extractvalue { i64, ptr } %t21, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t29 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %s1, ptr %s1, { i64, ptr } %t27)
  store { i64, ptr } %t29, ptr %l45
  br label %bb7
bb7:
  %t30 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t31 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  %t32 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t33 = extractvalue { i64, ptr } %t32, 1
  %t34 = extractvalue { i64, ptr } %t32, 0
  %t35 = add i64 %t31, %t34
  %t36 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t35)
  call void @olang_textcopy(ptr %t36, ptr %t30, i64 %t31)
  %t37 = getelementptr i8, ptr %t36, i64 %t31
  call void @olang_textcopy(ptr %t37, ptr %t33, i64 %t34)
  %t38 = insertvalue { i64, ptr } undef, i64 %t35, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr %t36, 1
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t39, ptr %rv
  br label %ret
bb8:
  %t41 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t41, ptr %l4, !tbaa !27
  call void @compiler_2fsession_2eIgnoreBrokenPipes()
  br label %bb9
bb9:
  %t42 = call { i32, i32 } @compiler_2fsession_2ePipe()
  store { i32, i32 } %t42, ptr %l47
  br label %bb10
bb10:
  %t43 = load { i32, i32 }, ptr %l47
  store { i32, i32 } %t43, ptr %l5
  %t44 = getelementptr { i32, i32 }, ptr %l5, i32 0, i32 0
  %t45 = load i32, ptr %t44, !tbaa !23
  store i32 %t45, ptr %l6, !tbaa !23
  %t47 = getelementptr { i32, i32 }, ptr %l5, i32 0, i32 1
  %t48 = load i32, ptr %t47, !tbaa !23
  store i32 %t48, ptr %l7, !tbaa !23
  %t50 = call { i32, i32 } @compiler_2fsession_2ePipe()
  store { i32, i32 } %t50, ptr %l50
  br label %bb11
bb11:
  %t51 = load { i32, i32 }, ptr %l50
  store { i32, i32 } %t51, ptr %l8
  %t52 = getelementptr { i32, i32 }, ptr %l8, i32 0, i32 0
  %t53 = load i32, ptr %t52, !tbaa !23
  store i32 %t53, ptr %l9, !tbaa !23
  %t55 = getelementptr { i32, i32 }, ptr %l8, i32 0, i32 1
  %t56 = load i32, ptr %t55, !tbaa !23
  store i32 %t56, ptr %l10, !tbaa !23
  store i32 -1, ptr %l11, !tbaa !23
  store i32 -1, ptr %l12, !tbaa !23
  store i32 -1, ptr %l13, !tbaa !23
  store i32 -1, ptr %l14, !tbaa !23
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/cells:Worker", ptr %t58, i32 0, i32 0
  %t61 = load i1, ptr %t60, !tbaa !21
  br i1 %t61, label %bb12, label %bb13
bb12:
  %t63 = call { i32, i32 } @compiler_2fsession_2ePipe()
  store { i32, i32 } %t63, ptr %l55
  br label %bb14
bb13:
  br label %bb16
bb14:
  %t64 = load { i32, i32 }, ptr %l55
  store { i32, i32 } %t64, ptr %l15
  %t65 = getelementptr { i32, i32 }, ptr %l15, i32 0, i32 0
  %t66 = load i32, ptr %t65, !tbaa !23
  store i32 %t66, ptr %l11, !tbaa !23
  %t68 = getelementptr { i32, i32 }, ptr %l15, i32 0, i32 1
  %t69 = load i32, ptr %t68, !tbaa !23
  store i32 %t69, ptr %l12, !tbaa !23
  %t71 = call { i32, i32 } @compiler_2fsession_2ePipe()
  store { i32, i32 } %t71, ptr %l58
  br label %bb15
bb15:
  %t72 = load { i32, i32 }, ptr %l58
  store { i32, i32 } %t72, ptr %l16
  %t73 = getelementptr { i32, i32 }, ptr %l16, i32 0, i32 0
  %t74 = load i32, ptr %t73, !tbaa !23
  store i32 %t74, ptr %l13, !tbaa !23
  %t76 = getelementptr { i32, i32 }, ptr %l16, i32 0, i32 1
  %t77 = load i32, ptr %t76, !tbaa !23
  store i32 %t77, ptr %l14, !tbaa !23
  br label %bb16
bb16:
  %t79 = call i32 @compiler_2fsession_2eFork()
  store i32 %t79, ptr %l61
  br label %bb17
bb17:
  %t80 = load i32, ptr %l61, !tbaa !23
  store i32 %t80, ptr %l17, !tbaa !23
  %t81 = load i32, ptr %l17, !tbaa !23
  %t83 = icmp slt i32 %t81, 0
  br i1 %t83, label %bb18, label %bb19
bb18:
  store { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d20, i32 0, i32 1) }, ptr %l64, !tbaa !27
  %t85 = load { i64, ptr }, ptr %l64, !tbaa !27
  store { i64, ptr } %t85, ptr %l65, !tbaa !27
  %t86 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t87 = extractvalue { i64, ptr } %t86, 0
  store i64 %t87, ptr %l66, !tbaa !24
  %t88 = load i64, ptr %l66, !tbaa !24
  %t89 = mul i64 %t88, 1
  %t90 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t89)
  %t91 = insertvalue { i64, ptr } undef, i64 %t88, 0
  %t92 = insertvalue { i64, ptr } %t91, ptr %t90, 1
  store { i64, ptr } %t92, ptr %l67, !tbaa !27
  %t93 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t94 = load ptr, ptr %t93, !tbaa !27
  %t95 = getelementptr { i64, ptr }, ptr %l65, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !27
  %t97 = load i64, ptr %l66, !tbaa !24
  %t98 = mul i64 %t97, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t94, ptr %t96, i64 %t98, i1 false)
  %t99 = load { i64, ptr }, ptr %l67, !tbaa !27
  store { i64, ptr } %t99, ptr %l65, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t100 = load { i64, ptr }, ptr %l65, !tbaa !27
  store { i64, ptr } %t100, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  %t101 = load i32, ptr %l17, !tbaa !23
  %t103 = icmp eq i32 %t101, 0
  br i1 %t103, label %bb21, label %bb22
bb21:
  store %olang.scope zeroinitializer, ptr %s5
  %t105 = load i32, ptr %l6, !tbaa !23
  call void @compiler_2fsession_2eDup2(i32 %t105, i32 100)
  br label %bb23
bb22:
  br label %bb52
bb23:
  %t107 = load i32, ptr %l10, !tbaa !23
  call void @compiler_2fsession_2eDup2(i32 %t107, i32 101)
  br label %bb24
bb24:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = getelementptr %"compiler/cells:Worker", ptr %t109, i32 0, i32 0
  %t112 = load i1, ptr %t111, !tbaa !21
  br i1 %t112, label %bb25, label %bb26
bb25:
  %t114 = load i32, ptr %l12, !tbaa !23
  call void @compiler_2fsession_2eDup2(i32 %t114, i32 1)
  br label %bb27
bb26:
  br label %bb29
bb27:
  %t116 = load i32, ptr %l14, !tbaa !23
  call void @compiler_2fsession_2eDup2(i32 %t116, i32 2)
  br label %bb28
bb28:
  br label %bb29
bb29:
  call void @compiler_2fsession_2eDup2(i32 100, i32 3)
  br label %bb30
bb30:
  call void @compiler_2fsession_2eDup2(i32 101, i32 4)
  br label %bb31
bb31:
  store i64 5, ptr %l18, !tbaa !24
  store i64 1024, ptr %l19, !tbaa !24
  store i64 1, ptr %l20, !tbaa !24
  %t118 = load i64, ptr %l19, !tbaa !24
  %t119 = load i64, ptr %l18, !tbaa !24
  %t122 = icmp sgt i64 %t118, %t119
  br i1 %t122, label %bb32, label %bb33
bb32:
  %t124 = load i64, ptr %l20, !tbaa !24
  %t126 = icmp sgt i64 %t124, 0
  br i1 %t126, label %bb34, label %bb35
bb33:
  store i64 0, ptr %l79, !tbaa !24
  br label %bb37
bb34:
  %t128 = load i64, ptr %l19, !tbaa !24
  %t129 = load i64, ptr %l18, !tbaa !24
  %t132 = sub i64 %t128, %t129
  %t133 = load i64, ptr %l20, !tbaa !24
  %t136 = add i64 %t132, %t133
  %t138 = sub i64 %t136, 1
  %t139 = load i64, ptr %l20, !tbaa !24
  %t142 = sdiv i64 %t138, %t139
  store i64 %t142, ptr %l82, !tbaa !24
  br label %bb36
bb35:
  store i64 0, ptr %l82, !tbaa !24
  br label %bb36
bb36:
  %t144 = load i64, ptr %l82, !tbaa !24
  store i64 %t144, ptr %l79, !tbaa !24
  br label %bb37
bb37:
  %t145 = load i64, ptr %l79, !tbaa !24
  store i64 %t145, ptr %l21, !tbaa !24
  store i64 0, ptr %l22, !tbaa !24
  br label %bb38
bb38:
  %t146 = load i64, ptr %l22, !tbaa !24
  %t147 = load i64, ptr %l21, !tbaa !24
  %t150 = icmp slt i64 %t146, %t147
  %t152 = xor i1 %t150, true
  br i1 %t152, label %bb39, label %bb40
bb39:
  br label %bb44
bb40:
  br label %bb41
bb41:
  %t154 = load i64, ptr %l18, !tbaa !24
  %t155 = load i64, ptr %l22, !tbaa !24
  %t156 = load i64, ptr %l20, !tbaa !24
  %t159 = mul i64 %t155, %t156
  %t162 = add i64 %t154, %t159
  %t166 = trunc i64 %t162 to i32
  %t168 = call i32 @close(i32 %t166)
  store i32 %t168, ptr %l102
  br label %bb42
bb42:
  br label %bb43
bb43:
  %t169 = load i64, ptr %l22, !tbaa !24
  %t171 = add i64 %t169, 1
  store i64 %t171, ptr %l22, !tbaa !24
  br label %bb38
bb44:
  %t173 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t175 = insertvalue [1 x { i64, ptr }] undef, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  store [1 x { i64, ptr }] %t175, ptr %l25
  %t179 = insertvalue { i64, ptr } undef, i64 1, 0
  %t180 = insertvalue { i64, ptr } %t179, ptr %l25, 1
  %t183 = call i32 @std_2fos_2eExecInPlace(ptr %s0, ptr %s5, { i64, ptr } %t173, { i64, ptr } %t180)
  store i32 %t183, ptr %l110
  %t184 = icmp ne i32 %t183, 0
  br i1 %t184, label %bb46, label %ok.185, !prof !99
ok.185:
  br label %bb45
bb45:
  br label %bb50
bb46:
  %t186 = load i32, ptr %l110, !tbaa !23
  %t187 = ashr i32 %t186, 16
  %t189 = icmp eq i32 %t187, 1
  store i1 %t189, ptr %l112, !tbaa !21
  %t190 = load i32, ptr %l110, !tbaa !23
  %t191 = ashr i32 %t190, 16
  %t193 = icmp eq i32 %t191, 1
  br i1 %t193, label %bb47, label %bb48
bb47:
  call void @__olang_errpay_pop()
  br label %bb48
bb48:
  br label %bb49
bb49:
  br label %bb50
bb50:
  call void @compiler_2fsession_2eExit(i32 127)
  unreachable
bb51:
  call void @__olang_check_failed(ptr @olang_loc_9bfba30e0b79067c_c7b40212ef9fcad0)
  unreachable
bb52:
  store %olang.scope zeroinitializer, ptr %s11
  %t195 = load i32, ptr %l6, !tbaa !23
  %t196 = load i32, ptr %l10, !tbaa !23
  %t197 = load i32, ptr %l12, !tbaa !23
  %t198 = load i32, ptr %l14, !tbaa !23
  %t200 = insertvalue [4 x i32] undef, i32 %t195, 0
  %t202 = insertvalue [4 x i32] %t200, i32 %t196, 1
  %t204 = insertvalue [4 x i32] %t202, i32 %t197, 2
  %t206 = insertvalue [4 x i32] %t204, i32 %t198, 3
  %t208 = call ptr @__olang_scope_alloc_a(ptr %s11, i64 16, i64 8)
  store [4 x i32] %t206, ptr %t208
  store ptr %t208, ptr %l26
  store i64 0, ptr %l27, !tbaa !24
  %t210 = load ptr, ptr %l26
  store i64 4, ptr %l28, !tbaa !24
  br label %bb53
bb53:
  %t213 = load i64, ptr %l27, !tbaa !24
  %t214 = load i64, ptr %l28, !tbaa !24
  %t217 = icmp slt i64 %t213, %t214
  %t219 = xor i1 %t217, true
  br i1 %t219, label %bb54, label %bb55
bb54:
  br label %bb59
bb55:
  br label %bb56
bb56:
  %t221 = load ptr, ptr %l26
  %t222 = load i64, ptr %l27, !tbaa !24
  %t225 = getelementptr [4 x i32], ptr %t221, i64 0, i64 %t222
  %t226 = load i32, ptr %t225, !tbaa !33
  call void @compiler_2fsession_2eCloseFd(i32 %t226)
  br label %bb57
bb57:
  br label %bb58
bb58:
  %t230 = load i64, ptr %l27, !tbaa !24
  %t232 = add i64 %t230, 1
  store i64 %t232, ptr %l27, !tbaa !24
  br label %bb53
bb59:
  call void @__olang_scope_close(ptr %s11)
  %t234 = load ptr, ptr %l0, !tbaa !29
  %t235 = load i32, ptr %l17, !tbaa !23
  %t238 = getelementptr %"compiler/cells:Worker", ptr %t234, i32 0, i32 1
  store i32 %t235, ptr %t238, !tbaa !23
  %t239 = load ptr, ptr %l0, !tbaa !29
  %t240 = load i32, ptr %l7, !tbaa !23
  %t243 = getelementptr %"compiler/cells:Worker", ptr %t239, i32 0, i32 3
  store i32 %t240, ptr %t243, !tbaa !23
  %t244 = load ptr, ptr %l0, !tbaa !29
  %t245 = load i32, ptr %l9, !tbaa !23
  %t248 = getelementptr %"compiler/cells:Worker", ptr %t244, i32 0, i32 4
  store i32 %t245, ptr %t248, !tbaa !23
  %t249 = load ptr, ptr %l0, !tbaa !29
  %t250 = load i32, ptr %l11, !tbaa !23
  %t253 = getelementptr %"compiler/cells:Worker", ptr %t249, i32 0, i32 5
  store i32 %t250, ptr %t253, !tbaa !23
  %t254 = load ptr, ptr %l0, !tbaa !29
  %t255 = load i32, ptr %l13, !tbaa !23
  %t258 = getelementptr %"compiler/cells:Worker", ptr %t254, i32 0, i32 6
  store i32 %t255, ptr %t258, !tbaa !23
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d22, i32 0, i32 1) }, ptr %l143, !tbaa !27
  %t259 = load { i64, ptr }, ptr %l143, !tbaa !27
  store { i64, ptr } %t259, ptr %l144, !tbaa !27
  %t260 = load { i64, ptr }, ptr %l144, !tbaa !27
  %t261 = extractvalue { i64, ptr } %t260, 0
  store i64 %t261, ptr %l145, !tbaa !24
  %t262 = load i64, ptr %l145, !tbaa !24
  %t263 = mul i64 %t262, 1
  %t264 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t263)
  %t265 = insertvalue { i64, ptr } undef, i64 %t262, 0
  %t266 = insertvalue { i64, ptr } %t265, ptr %t264, 1
  store { i64, ptr } %t266, ptr %l146, !tbaa !27
  %t267 = getelementptr { i64, ptr }, ptr %l146, i32 0, i32 1
  %t268 = load ptr, ptr %t267, !tbaa !27
  %t269 = getelementptr { i64, ptr }, ptr %l144, i32 0, i32 1
  %t270 = load ptr, ptr %t269, !tbaa !27
  %t271 = load i64, ptr %l145, !tbaa !24
  %t272 = mul i64 %t271, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t268, ptr %t270, i64 %t272, i1 false)
  %t273 = load { i64, ptr }, ptr %l146, !tbaa !27
  store { i64, ptr } %t273, ptr %l144, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t274 = load { i64, ptr }, ptr %l144, !tbaa !27
  store { i64, ptr } %t274, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fcells_2ecompiler_2fcells_3aWorker_2eclose(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %s1 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s1
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/cells:Worker", ptr %t1, i32 0, i32 3
  %t4 = load i32, ptr %t3, !tbaa !23
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/cells:Worker", ptr %t5, i32 0, i32 4
  %t8 = load i32, ptr %t7, !tbaa !23
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/cells:Worker", ptr %t9, i32 0, i32 5
  %t12 = load i32, ptr %t11, !tbaa !23
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/cells:Worker", ptr %t13, i32 0, i32 6
  %t16 = load i32, ptr %t15, !tbaa !23
  %t18 = insertvalue [4 x i32] undef, i32 %t4, 0
  %t20 = insertvalue [4 x i32] %t18, i32 %t8, 1
  %t22 = insertvalue [4 x i32] %t20, i32 %t12, 2
  %t24 = insertvalue [4 x i32] %t22, i32 %t16, 3
  %t26 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 16, i64 8)
  store [4 x i32] %t24, ptr %t26
  store ptr %t26, ptr %l1
  store i64 0, ptr %l2, !tbaa !24
  %t28 = load ptr, ptr %l1
  store i64 4, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t31 = load i64, ptr %l2, !tbaa !24
  %t32 = load i64, ptr %l3, !tbaa !24
  %t35 = icmp slt i64 %t31, %t32
  %t37 = xor i1 %t35, true
  br i1 %t37, label %bb2, label %bb3
bb2:
  br label %bb7
bb3:
  br label %bb4
bb4:
  %t39 = load ptr, ptr %l1
  %t40 = load i64, ptr %l2, !tbaa !24
  %t43 = getelementptr [4 x i32], ptr %t39, i64 0, i64 %t40
  %t44 = load i32, ptr %t43, !tbaa !33
  call void @compiler_2fsession_2eCloseFd(i32 %t44)
  br label %bb5
bb5:
  br label %bb6
bb6:
  %t48 = load i64, ptr %l2, !tbaa !24
  %t50 = add i64 %t48, 1
  store i64 %t50, ptr %l2, !tbaa !24
  br label %bb1
bb7:
  call void @__olang_scope_close(ptr %s1)
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/cells:Worker", ptr %t52, i32 0, i32 3
  store i32 -1, ptr %t56, !tbaa !23
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/cells:Worker", ptr %t57, i32 0, i32 4
  store i32 -1, ptr %t61, !tbaa !23
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/cells:Worker", ptr %t62, i32 0, i32 5
  store i32 -1, ptr %t66, !tbaa !23
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/cells:Worker", ptr %t67, i32 0, i32 6
  store i32 -1, ptr %t71, !tbaa !23
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"compiler/cells:Worker", ptr %t72, i32 0, i32 8
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eClear_3cU8_3e(ptr %v0, ptr %t74)
  br label %bb8
bb8:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcells_2ecompiler_2fcells_3aWorker_2edrop(ptr %v0, ptr %a0, i64 %a1) #0 {
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
  %l11 = alloca i64
  %l17 = alloca i64
  %l20 = alloca i64
  %l39 = alloca ptr
  %l42 = alloca i64
  %l46 = alloca i8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/cells:Worker", ptr %t1, i32 0, i32 8
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eLen_3cU8_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l11
  br label %bb1
bb1:
  %t6 = load i64, ptr %l11, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  %t7 = load i64, ptr %l1, !tbaa !24
  store i64 %t7, ptr %l3, !tbaa !24
  %t9 = load i64, ptr %l2, !tbaa !24
  store i64 %t9, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t11 = load i64, ptr %l4, !tbaa !24
  %t12 = load i64, ptr %l3, !tbaa !24
  %t15 = icmp sgt i64 %t11, %t12
  br i1 %t15, label %bb2, label %bb3
bb2:
  %t17 = load i64, ptr %l5, !tbaa !24
  %t19 = icmp sgt i64 %t17, 0
  br i1 %t19, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb7
bb4:
  %t21 = load i64, ptr %l4, !tbaa !24
  %t22 = load i64, ptr %l3, !tbaa !24
  %t25 = sub i64 %t21, %t22
  %t26 = load i64, ptr %l5, !tbaa !24
  %t29 = add i64 %t25, %t26
  %t31 = sub i64 %t29, 1
  %t32 = load i64, ptr %l5, !tbaa !24
  %t35 = sdiv i64 %t31, %t32
  store i64 %t35, ptr %l20, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb6
bb6:
  %t37 = load i64, ptr %l20, !tbaa !24
  store i64 %t37, ptr %l17, !tbaa !24
  br label %bb7
bb7:
  %t38 = load i64, ptr %l17, !tbaa !24
  store i64 %t38, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb8
bb8:
  %t39 = load i64, ptr %l7, !tbaa !24
  %t40 = load i64, ptr %l6, !tbaa !24
  %t43 = icmp slt i64 %t39, %t40
  %t45 = xor i1 %t43, true
  br i1 %t45, label %bb9, label %bb10
bb9:
  br label %bb15
bb10:
  br label %bb11
bb11:
  %t47 = load i64, ptr %l3, !tbaa !24
  %t48 = load i64, ptr %l7, !tbaa !24
  %t49 = load i64, ptr %l5, !tbaa !24
  %t52 = mul i64 %t48, %t49
  %t55 = add i64 %t47, %t52
  store i64 %t55, ptr %l8, !tbaa !24
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/cells:Worker", ptr %t57, i32 0, i32 8
  store ptr %t59, ptr %l39, !tbaa !29
  %t60 = load i64, ptr %l8, !tbaa !24
  %t61 = load i64, ptr %l1, !tbaa !24
  %t64 = sub i64 %t60, %t61
  store i64 %t64, ptr %l42, !tbaa !24
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/cells:Worker", ptr %t65, i32 0, i32 8
  %t68 = load i64, ptr %l8, !tbaa !24
  %t71 = call i8 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eAt_3cU8_3e(ptr %v0, ptr %t67, i64 %t68)
  store i8 %t71, ptr %l46
  br label %bb12
bb12:
  %t72 = load ptr, ptr %l39, !tbaa !29
  %t73 = load i64, ptr %l42, !tbaa !24
  %t74 = load i8, ptr %l46, !tbaa !22
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eSetAt_3cU8_3e(ptr %v0, ptr %t72, i64 %t73, i8 %t74)
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t75 = load i64, ptr %l7, !tbaa !24
  %t77 = add i64 %t75, 1
  store i64 %t77, ptr %l7, !tbaa !24
  br label %bb8
bb15:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/cells:Worker", ptr %t79, i32 0, i32 8
  %t82 = load i64, ptr %l2, !tbaa !24
  %t83 = load i64, ptr %l1, !tbaa !24
  %t86 = sub i64 %t82, %t83
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eTruncate_3cU8_3e(ptr %v0, ptr %t81, i64 %t86)
  br label %bb16
bb16:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcells_2ecompiler_2fcells_3aWorker_2elost(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l10 = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/cells:Outcome", ptr %t1, i32 0, i32 6
  store i1 true, ptr %t3, !tbaa !21
  %t4 = load ptr, ptr %l1, !tbaa !29
  %t6 = getelementptr %"compiler/cells:Outcome", ptr %t4, i32 0, i32 7
  store i1 true, ptr %t6, !tbaa !21
  %t7 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcells_2ecompiler_2fcells_3aWorker_2eclose(ptr %v0, ptr %t7)
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/cells:Worker", ptr %t9, i32 0, i32 1
  %t12 = load i32, ptr %t11, !tbaa !23
  %t14 = icmp sgt i32 %t12, 0
  br i1 %t14, label %bb2, label %bb3
bb2:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/cells:Worker", ptr %t16, i32 0, i32 1
  %t19 = load i32, ptr %t18, !tbaa !23
  %t21 = call i32 @compiler_2fsession_2eReap(i32 %t19)
  store i32 %t21, ptr %l10
  br label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb5
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/cells:Worker", ptr %t22, i32 0, i32 1
  store i32 -1, ptr %t24, !tbaa !23
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcells_2ecompiler_2fcells_3aWorker_2erelay(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l3 = alloca [65536 x i8]
  %l4 = alloca i64
  %l7 = alloca i32
  %l12 = alloca [65536 x i8]
  %l15 = alloca [65536 x i8]
  %l18 = alloca i64
  %l22 = alloca i32
  %l23 = alloca i64
  %l24 = alloca i64
  %l29 = alloca i32
  %l31 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp eq i64 %t1, 1
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/cells:Worker", ptr %t5, i32 0, i32 5
  %t8 = load i32, ptr %t7, !tbaa !23
  store i32 %t8, ptr %l7, !tbaa !23
  br label %bb3
bb2:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/cells:Worker", ptr %t10, i32 0, i32 6
  %t13 = load i32, ptr %t12, !tbaa !23
  store i32 %t13, ptr %l7, !tbaa !23
  br label %bb3
bb3:
  %t15 = load i32, ptr %l7, !tbaa !23
  store i32 %t15, ptr %l2, !tbaa !23
  br label %fill.19
fill.19:
  br label %fill.16
fill.16:
  %t20 = phi i64 [ 0, %fill.19 ], [ %t21, %fill.17 ]
  %t22 = icmp slt i64 %t20, 65536
  br i1 %t22, label %fill.17, label %fill.18
fill.17:
  %t23 = getelementptr [65536 x i8], ptr %l12, i64 0, i64 %t20
  store i8 0, ptr %t23
  %t21 = add i64 %t20, 1
  br label %fill.16
fill.18:
  call void @llvm.memmove.p0.p0.i64(ptr %l3, ptr %l12, i64 65536, i1 false)
  %t24 = load i32, ptr %l2, !tbaa !23
  call void @llvm.memmove.p0.p0.i64(ptr %l15, ptr %l3, i64 65536, i1 false)
  %t25 = load [65536 x i8], ptr %l15
  %t30 = call i64 @read(i32 %t24, ptr %l3, i64 65536)
  store i64 %t30, ptr %l18
  br label %bb4
bb4:
  %t31 = load i64, ptr %l18, !tbaa !24
  store i64 %t31, ptr %l4, !tbaa !24
  %t32 = load i64, ptr %l4, !tbaa !24
  %t34 = icmp sgt i64 %t32, 0
  br i1 %t34, label %bb5, label %bb6
bb5:
  call void @compiler_2fspin_2eEnd()
  br label %bb7
bb6:
  br label %bb20
bb7:
  %t36 = load i64, ptr %l1, !tbaa !24
  %t38 = trunc i64 %t36 to i32
  store i32 %t38, ptr %l22, !tbaa !23
  %t39 = load i64, ptr %l4, !tbaa !24
  store i64 %t39, ptr %l23, !tbaa !24
  %t40 = load [65536 x i8], ptr %l3
  store i64 65536, ptr %l24, !tbaa !24
  %t41 = icmp sge i64 0, 0
  br i1 %t41, label %bb8, label %bb9
bb8:
  %t43 = load i64, ptr %l23, !tbaa !24
  %t44 = icmp sle i64 0, %t43
  br i1 %t44, label %bb10, label %bb11
bb9:
  call void @__olang_check_failed(ptr @olang_loc_d5164bbf2a35422c_5d9a5374fc012700)
  unreachable
bb10:
  %t46 = load i64, ptr %l23, !tbaa !24
  %t47 = load i64, ptr %l24, !tbaa !24
  %t48 = icmp sle i64 %t46, %t47
  br i1 %t48, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_d5164bbf2a35422c_5d9a5374fc012700)
  unreachable
bb12:
  %t50 = load i64, ptr %l23, !tbaa !24
  %t51 = getelementptr i8, ptr %l3, i64 0
  %t52 = sub i64 %t50, 0
  %t53 = insertvalue { i64, ptr } undef, i64 %t52, 0
  %t54 = insertvalue { i64, ptr } %t53, ptr %t51, 1
  %t55 = load i32, ptr %l22, !tbaa !23
  %t57 = call i32 @std_2fio_2eWrite(ptr %s0, i32 %t55, { i64, ptr } %t54)
  store i32 %t57, ptr %l29
  %t58 = icmp ne i32 %t57, 0
  br i1 %t58, label %bb15, label %ok.59, !prof !99
ok.59:
  br label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_d5164bbf2a35422c_5d9a5374fc012700)
  unreachable
bb14:
  br label %bb19
bb15:
  %t60 = load i32, ptr %l29, !tbaa !23
  %t61 = ashr i32 %t60, 16
  %t63 = icmp eq i32 %t61, 1
  store i1 %t63, ptr %l31, !tbaa !21
  %t64 = load i32, ptr %l29, !tbaa !23
  %t65 = ashr i32 %t64, 16
  %t67 = icmp eq i32 %t65, 1
  br i1 %t67, label %bb16, label %bb17
bb16:
  call void @__olang_errpay_pop()
  br label %bb17
bb17:
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/cells:Worker", ptr %t69, i32 0, i32 7
  store i1 true, ptr %t71, !tbaa !21
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb20:
  %t73 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2fsession_2eCloseFd(i32 %t73)
  br label %bb21
bb21:
  %t75 = load i64, ptr %l1, !tbaa !24
  %t77 = icmp eq i64 %t75, 1
  br i1 %t77, label %bb22, label %bb23
bb22:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/cells:Worker", ptr %t79, i32 0, i32 5
  store i32 -1, ptr %t81, !tbaa !23
  br label %bb24
bb23:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/cells:Worker", ptr %t82, i32 0, i32 6
  store i32 -1, ptr %t84, !tbaa !23
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcells_2ecompiler_2fcells_3aWorker_2etake(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca [65536 x i8]
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %lp7 = alloca ptr
  %l8 = alloca [65536 x i8]
  %l12 = alloca [65536 x i8]
  %l15 = alloca i64
  %l21 = alloca ptr
  %l22 = alloca i64
  %l23 = alloca i64
  %l34 = alloca { i64, ptr }
  %l39 = alloca i64
  %l41 = alloca i64
  %l47 = alloca { i64, ptr }
  %l49 = alloca i64
  %l50 = alloca i64
  %l55 = alloca { i64, ptr }
  %l56 = alloca i64
  %l57 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  br label %fill.4
fill.4:
  br label %fill.1
fill.1:
  %t5 = phi i64 [ 0, %fill.4 ], [ %t6, %fill.2 ]
  %t7 = icmp slt i64 %t5, 65536
  br i1 %t7, label %fill.2, label %fill.3
fill.2:
  %t8 = getelementptr [65536 x i8], ptr %l8, i64 0, i64 %t5
  store i8 0, ptr %t8
  %t6 = add i64 %t5, 1
  br label %fill.1
fill.3:
  call void @llvm.memmove.p0.p0.i64(ptr %l2, ptr %l8, i64 65536, i1 false)
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/cells:Worker", ptr %t9, i32 0, i32 4
  %t12 = load i32, ptr %t11, !tbaa !23
  call void @llvm.memmove.p0.p0.i64(ptr %l12, ptr %l2, i64 65536, i1 false)
  %t13 = load [65536 x i8], ptr %l12
  %t18 = call i64 @read(i32 %t12, ptr %l2, i64 65536)
  store i64 %t18, ptr %l15
  br label %bb1
bb1:
  %t19 = load i64, ptr %l15, !tbaa !24
  store i64 %t19, ptr %l3, !tbaa !24
  %t20 = load i64, ptr %l3, !tbaa !24
  %t22 = icmp sle i64 %t20, 0
  br i1 %t22, label %bb2, label %bb3
bb2:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcells_2ecompiler_2fcells_3aWorker_2elost(ptr %v0, ptr %v1, ptr %t24, ptr %t25)
  br label %bb4
bb3:
  br label %bb5
bb4:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb5:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/cells:Worker", ptr %t28, i32 0, i32 8
  store ptr %t30, ptr %l21, !tbaa !29
  %t31 = load i64, ptr %l3, !tbaa !24
  store i64 %t31, ptr %l22, !tbaa !24
  %t32 = load [65536 x i8], ptr %l2
  store i64 65536, ptr %l23, !tbaa !24
  %t33 = icmp sge i64 0, 0
  br i1 %t33, label %bb6, label %bb7
bb6:
  %t35 = load i64, ptr %l22, !tbaa !24
  %t36 = icmp sle i64 0, %t35
  br i1 %t36, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_c055f97e3313c422_daca2fce6a780a3e)
  unreachable
bb8:
  %t38 = load i64, ptr %l22, !tbaa !24
  %t39 = load i64, ptr %l23, !tbaa !24
  %t40 = icmp sle i64 %t38, %t39
  br i1 %t40, label %bb10, label %bb11
bb9:
  call void @__olang_check_failed(ptr @olang_loc_c055f97e3313c422_daca2fce6a780a3e)
  unreachable
bb10:
  %t42 = load i64, ptr %l22, !tbaa !24
  %t43 = getelementptr i8, ptr %l2, i64 0
  %t44 = sub i64 %t42, 0
  %t45 = insertvalue { i64, ptr } undef, i64 %t44, 0
  %t46 = insertvalue { i64, ptr } %t45, ptr %t43, 1
  %t47 = load ptr, ptr %l21, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2ePushAll_3cU8_3e(ptr %v0, ptr %s0, ptr %t47, { i64, ptr } %t46)
  br label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_c055f97e3313c422_daca2fce6a780a3e)
  unreachable
bb12:
  br label %bb13
bb13:
  store %olang.scope zeroinitializer, ptr %s2
  %t49 = load ptr, ptr %l1, !tbaa !29
  %t51 = getelementptr %"compiler/cells:Outcome", ptr %t49, i32 0, i32 7
  %t52 = load i1, ptr %t51, !tbaa !21
  %t54 = xor i1 %t52, true
  %t56 = xor i1 %t54, true
  br i1 %t56, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s2)
  br label %bb35
bb15:
  br label %bb16
bb16:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/cells:Worker", ptr %t58, i32 0, i32 8
  %t62 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eView_3cU8_3e(ptr %v0, ptr %v0, ptr %t60)
  store { i64, ptr } %t62, ptr %l34
  br label %bb17
bb17:
  %t63 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t63, ptr %l4, !tbaa !27
  %t64 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t66 = extractvalue { i64, ptr } %t64, 0
  %t68 = icmp slt i64 %t66, 16
  br i1 %t68, label %bb18, label %bb19
bb18:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb19:
  br label %bb20
bb20:
  %t70 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t72 = call i64 @compiler_2fcells_2eword(ptr %v0, { i64, ptr } %t70, i64 0)
  store i64 %t72, ptr %l39
  br label %bb21
bb21:
  %t73 = load i64, ptr %l39, !tbaa !24
  store i64 %t73, ptr %l5, !tbaa !24
  %t74 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t76 = call i64 @compiler_2fcells_2eword(ptr %v0, { i64, ptr } %t74, i64 8)
  store i64 %t76, ptr %l41
  br label %bb22
bb22:
  %t77 = load i64, ptr %l41, !tbaa !24
  store i64 %t77, ptr %l6, !tbaa !24
  %t78 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t80 = extractvalue { i64, ptr } %t78, 0
  %t81 = load i64, ptr %l6, !tbaa !24
  %t83 = add i64 16, %t81
  %t86 = icmp slt i64 %t80, %t83
  br i1 %t86, label %bb23, label %bb24
bb23:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb24:
  br label %bb25
bb25:
  %t88 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t88, ptr %l47, !tbaa !27
  %t89 = load i64, ptr %l6, !tbaa !24
  %t91 = add i64 16, %t89
  store i64 %t91, ptr %l49, !tbaa !24
  %t92 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t93 = extractvalue { i64, ptr } %t92, 0
  store i64 %t93, ptr %l50, !tbaa !24
  %t94 = icmp sge i64 16, 0
  br i1 %t94, label %bb26, label %bb27
bb26:
  %t96 = load i64, ptr %l49, !tbaa !24
  %t97 = icmp sle i64 16, %t96
  br i1 %t97, label %bb28, label %bb29
bb27:
  call void @__olang_check_failed(ptr @olang_loc_dcdbbf63e25e519f_c5c2eacce8fd1bbb)
  unreachable
bb28:
  %t99 = load i64, ptr %l49, !tbaa !24
  %t100 = load i64, ptr %l50, !tbaa !24
  %t101 = icmp sle i64 %t99, %t100
  br i1 %t101, label %bb30, label %bb31
bb29:
  call void @__olang_check_failed(ptr @olang_loc_dcdbbf63e25e519f_c5c2eacce8fd1bbb)
  unreachable
bb30:
  %t103 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t104 = load ptr, ptr %t103, !tbaa !27
  %t105 = load i64, ptr %l49, !tbaa !24
  %t106 = getelementptr i8, ptr %t104, i64 16
  %t107 = sub i64 %t105, 16
  %t108 = insertvalue { i64, ptr } undef, i64 %t107, 0
  %t109 = insertvalue { i64, ptr } %t108, ptr %t106, 1
  store { i64, ptr } %t109, ptr %l55, !tbaa !27
  %t111 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t112 = extractvalue { i64, ptr } %t111, 0
  store i64 %t112, ptr %l56, !tbaa !24
  %t113 = load i64, ptr %l56, !tbaa !24
  %t114 = mul i64 %t113, 1
  %t115 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t114)
  %t116 = insertvalue { i64, ptr } undef, i64 %t113, 0
  %t117 = insertvalue { i64, ptr } %t116, ptr %t115, 1
  store { i64, ptr } %t117, ptr %l57, !tbaa !27
  %t118 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t119 = load ptr, ptr %t118, !tbaa !27
  %t120 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t121 = load ptr, ptr %t120, !tbaa !27
  %t122 = load i64, ptr %l56, !tbaa !24
  %t123 = mul i64 %t122, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t119, ptr %t121, i64 %t123, i1 false)
  %t124 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t126 = extractvalue { i64, ptr } %t124, 1
  %t127 = extractvalue { i64, ptr } %t124, 0
  %t128 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t127)
  call void @olang_textcopy(ptr %t128, ptr %t126, i64 %t127)
  %t129 = insertvalue { i64, ptr } undef, i64 %t127, 0
  %t130 = insertvalue { i64, ptr } %t129, ptr %t128, 1
  %t131 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t131, ptr %lp7
  %t133 = load ptr, ptr %lp7
  store { i64, ptr } %t130, ptr %t133, !tbaa !27
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t135 = load i64, ptr %l6, !tbaa !24
  %t137 = add i64 16, %t135
  call void @compiler_2fcells_2ecompiler_2fcells_3aWorker_2edrop(ptr %v0, ptr %t134, i64 %t137)
  br label %bb32
bb31:
  call void @__olang_check_failed(ptr @olang_loc_dcdbbf63e25e519f_c5c2eacce8fd1bbb)
  unreachable
bb32:
  %t140 = load ptr, ptr %l1, !tbaa !29
  %t141 = load i64, ptr %l5, !tbaa !24
  %t142 = load ptr, ptr %lp7
  %t143 = load { i64, ptr }, ptr %t142, !tbaa !27
  %t144 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcells_2eframe(ptr %v1, ptr %v1, ptr %v0, ptr %t140, i64 %t141, { i64, ptr } %t143, ptr %t144)
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s2)
  br label %bb34
bb34:
  br label %bb13
bb35:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcells_2edropped(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l4 = alloca i1
  %l5 = alloca i1
  %l7 = alloca i1
  %l10 = alloca i1
  %l12 = alloca i1
  %l14 = alloca i1
  %l17 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca i64
  %l29 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d23, i32 0, i32 1) })
  store i1 %t3, ptr %l4
  br label %bb1
bb1:
  %t4 = load i1, ptr %l4, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb5
bb3:
  %t5 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t7 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t5, { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d24, i32 0, i32 1) })
  store i1 %t7, ptr %l7
  br label %bb4
bb4:
  %t8 = load i1, ptr %l7, !tbaa !21
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb5
bb5:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t11 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t13 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t11, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d25, i32 0, i32 1) })
  store i1 %t13, ptr %l10
  br label %bb9
bb9:
  %t14 = load i1, ptr %l10, !tbaa !21
  %t15 = xor i1 %t14, true
  br i1 %t15, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb13
bb11:
  %t17 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t19 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %s0, { i64, ptr } %t17, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d26, i32 0, i32 1) })
  store i1 %t19, ptr %l14
  br label %bb12
bb12:
  %t20 = load i1, ptr %l14, !tbaa !21
  %t21 = xor i1 %t20, true
  store i1 %t21, ptr %l12, !tbaa !21
  br label %bb13
bb13:
  %t23 = load i1, ptr %l12, !tbaa !21
  br i1 %t23, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t25 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t25, ptr %l17, !tbaa !27
  %t26 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t28 = extractvalue { i64, ptr } %t26, 0
  %t30 = sub i64 %t28, 2
  store i64 %t30, ptr %l20, !tbaa !24
  %t31 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t31, 0
  store i64 %t32, ptr %l21, !tbaa !24
  %t33 = icmp sge i64 13, 0
  br i1 %t33, label %bb17, label %bb18
bb17:
  %t35 = load i64, ptr %l20, !tbaa !24
  %t36 = icmp sle i64 13, %t35
  br i1 %t36, label %bb19, label %bb20
bb18:
  call void @__olang_check_failed(ptr @olang_loc_616551f0a3546013_1249d7bcaf39212f)
  unreachable
bb19:
  %t38 = load i64, ptr %l20, !tbaa !24
  %t39 = load i64, ptr %l21, !tbaa !24
  %t40 = icmp sle i64 %t38, %t39
  br i1 %t40, label %bb21, label %bb22
bb20:
  call void @__olang_check_failed(ptr @olang_loc_616551f0a3546013_1249d7bcaf39212f)
  unreachable
bb21:
  %t42 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !27
  %t44 = load i64, ptr %l20, !tbaa !24
  %t45 = getelementptr i8, ptr %t43, i64 13
  %t46 = sub i64 %t44, 13
  %t47 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t48 = insertvalue { i64, ptr } %t47, ptr %t45, 1
  %t52 = getelementptr %"compiler/cells:Plan", ptr %a1, i32 0, i32 2
  %t56 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6b5ccacad8db807339a3579aa8c82ff8(ptr %v1, ptr %v0, ptr %t52, { i64, ptr } %t48)
  store i1 %t56, ptr %l29
  br label %bb23
bb22:
  call void @__olang_check_failed(ptr @olang_loc_616551f0a3546013_1249d7bcaf39212f)
  unreachable
bb23:
  call void @__olang_scope_close(ptr %s0)
  %t57 = load i1, ptr %l29, !tbaa !21
  store i1 %t57, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcells_2eframe(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i32
  %l12 = alloca i64
  %l13 = alloca i32
  %l19 = alloca ptr
  %l21 = alloca { i64, ptr }
  %l26 = alloca ptr
  %l28 = alloca { i64, ptr }
  %l33 = alloca ptr
  %l35 = alloca { i64, ptr }
  %l40 = alloca ptr
  %l41 = alloca i64
  %l48 = alloca { i64, ptr }
  %l53 = alloca ptr
  %l55 = alloca { i64, ptr }
  %l57 = alloca ptr
  %l61 = alloca i1
  %s1 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t2 = load i64, ptr @G_2ecompiler_2fcells_2eFramePid, !tbaa !24
  %t5 = icmp eq i64 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  store %olang.scope zeroinitializer, ptr %s1
  store ptr %a3, ptr %l7, !tbaa !29
  %t8 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t8, ptr %l9, !tbaa !27
  %t9 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s1, i64 10)
  %t10 = extractvalue { i32, i64 } %t9, 1
  %t11 = extractvalue { i32, i64 } %t9, 0
  store i32 %t11, ptr %l11
  %t12 = icmp ne i32 %t11, 0
  br i1 %t12, label %bb4, label %ok.13, !prof !99
ok.13:
  store i64 %t10, ptr %l10
  br label %bb3
bb2:
  br label %bb9
bb3:
  %t14 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t15 = load i64, ptr %l10, !tbaa !24
  %t16 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v1, { i64, ptr } %t14, i64 %t15)
  %t17 = extractvalue { i32, i64 } %t16, 1
  %t18 = extractvalue { i32, i64 } %t16, 0
  store i32 %t18, ptr %l13
  %t19 = icmp ne i32 %t18, 0
  br i1 %t19, label %bb7, label %ok.20, !prof !99
ok.20:
  store i64 %t17, ptr %l12
  br label %bb6
bb4:
  br label %bb5
bb5:
  store i64 -1, ptr %l8, !tbaa !24
  br label %bb8
bb6:
  %t21 = load i64, ptr %l12, !tbaa !24
  store i64 %t21, ptr %l8, !tbaa !24
  br label %bb8
bb7:
  br label %bb5
bb8:
  %t22 = load i64, ptr %l8, !tbaa !24
  %t23 = trunc i64 %t22 to i32
  %t25 = load ptr, ptr %l7, !tbaa !29
  %t26 = getelementptr %"compiler/cells:Worker", ptr %t25, i32 0, i32 2
  store i32 %t23, ptr %t26, !tbaa !23
  call void @__olang_scope_close(ptr %s1)
  br label %bb9
bb9:
  %t27 = load i64, ptr %l1, !tbaa !24
  %t28 = load i64, ptr @G_2ecompiler_2fcells_2eFrameShown, !tbaa !24
  %t31 = icmp eq i64 %t27, %t28
  br i1 %t31, label %bb10, label %bb11
bb10:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/cells:Outcome", ptr %t33, i32 0, i32 0
  store i1 true, ptr %t35, !tbaa !21
  %t36 = load ptr, ptr %l0, !tbaa !29
  store ptr %t36, ptr %l19, !tbaa !29
  %t37 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t38 = load ptr, ptr %l19, !tbaa !29
  %t39 = getelementptr %"compiler/cells:Outcome", ptr %t38, i32 0, i32 1
  %t40 = load { i64, ptr }, ptr %t39, !tbaa !27
  store { i64, ptr } %t40, ptr %l21, !tbaa !27
  %t42 = load ptr, ptr %l19, !tbaa !29
  %t43 = getelementptr %"compiler/cells:Outcome", ptr %t42, i32 0, i32 1
  store { i64, ptr } %t37, ptr %t43, !tbaa !27
  %t44 = load i1, ptr @olang_2esole_2ecompiler_2fcells_3aOutcome_2e1
  br i1 %t44, label %bb12, label %bb13
bb11:
  br label %bb14
bb12:
  %t46 = load { i64, ptr }, ptr %l21
  %t47 = extractvalue { i64, ptr } %t46, 1
  call void @__olang_region_release(ptr %t47)
  store { i64, ptr } zeroinitializer, ptr %l21
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t48 = load i64, ptr %l1, !tbaa !24
  %t49 = load i64, ptr @G_2ecompiler_2fcells_2eFrameMime, !tbaa !24
  %t52 = icmp eq i64 %t48, %t49
  br i1 %t52, label %bb15, label %bb16
bb15:
  %t54 = load ptr, ptr %l0, !tbaa !29
  store ptr %t54, ptr %l26, !tbaa !29
  %t55 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t56 = load ptr, ptr %l26, !tbaa !29
  %t57 = getelementptr %"compiler/cells:Outcome", ptr %t56, i32 0, i32 2
  %t58 = load { i64, ptr }, ptr %t57, !tbaa !27
  store { i64, ptr } %t58, ptr %l28, !tbaa !27
  %t60 = load ptr, ptr %l26, !tbaa !29
  %t61 = getelementptr %"compiler/cells:Outcome", ptr %t60, i32 0, i32 2
  store { i64, ptr } %t55, ptr %t61, !tbaa !27
  %t62 = load i1, ptr @olang_2esole_2ecompiler_2fcells_3aOutcome_2e2
  br i1 %t62, label %bb17, label %bb18
bb16:
  br label %bb19
bb17:
  %t64 = load { i64, ptr }, ptr %l28
  %t65 = extractvalue { i64, ptr } %t64, 1
  call void @__olang_region_release(ptr %t65)
  store { i64, ptr } zeroinitializer, ptr %l28
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t66 = load i64, ptr %l1, !tbaa !24
  %t67 = load i64, ptr @G_2ecompiler_2fcells_2eFrameData, !tbaa !24
  %t70 = icmp eq i64 %t66, %t67
  br i1 %t70, label %bb20, label %bb21
bb20:
  %t72 = load ptr, ptr %l0, !tbaa !29
  store ptr %t72, ptr %l33, !tbaa !29
  %t73 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t74 = load ptr, ptr %l33, !tbaa !29
  %t75 = getelementptr %"compiler/cells:Outcome", ptr %t74, i32 0, i32 3
  %t76 = load { i64, ptr }, ptr %t75, !tbaa !27
  store { i64, ptr } %t76, ptr %l35, !tbaa !27
  %t78 = load ptr, ptr %l33, !tbaa !29
  %t79 = getelementptr %"compiler/cells:Outcome", ptr %t78, i32 0, i32 3
  store { i64, ptr } %t73, ptr %t79, !tbaa !27
  %t80 = load i1, ptr @olang_2esole_2ecompiler_2fcells_3aOutcome_2e3
  br i1 %t80, label %bb22, label %bb23
bb21:
  br label %bb24
bb22:
  %t82 = load { i64, ptr }, ptr %l35
  %t83 = extractvalue { i64, ptr } %t82, 1
  call void @__olang_region_release(ptr %t83)
  store { i64, ptr } zeroinitializer, ptr %l35
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t84 = load i64, ptr %l1, !tbaa !24
  %t85 = load i64, ptr @G_2ecompiler_2fcells_2eFrameFailure, !tbaa !24
  %t88 = icmp eq i64 %t84, %t85
  br i1 %t88, label %bb25, label %bb26
bb25:
  %t90 = load ptr, ptr %l0, !tbaa !29
  store ptr %t90, ptr %l40, !tbaa !29
  %t91 = ptrtoint ptr %v0 to i64
  store i64 %t91, ptr %l41, !tbaa !24
  %t92 = load i1, ptr @olang_2esole_2ecompiler_2fcells_3aOutcome_2e4
  br i1 %t92, label %bb27, label %bb28
bb26:
  br label %bb31
bb27:
  %t94 = call ptr @__olang_region_make(ptr %v0)
  %t95 = ptrtoint ptr %t94 to i64
  store i64 %t95, ptr %l41, !tbaa !24
  br label %bb28
bb28:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/cells:Outcome", ptr %t96, i32 0, i32 4
  %t99 = load { i64, ptr }, ptr %t98, !tbaa !27
  %t100 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t102 = extractvalue { i64, ptr } %t99, 1
  %t103 = extractvalue { i64, ptr } %t99, 0
  %t105 = extractvalue { i64, ptr } %t100, 1
  %t106 = extractvalue { i64, ptr } %t100, 0
  %t107 = add i64 %t103, %t106
  %t108 = load i64, ptr %l41
  %t109 = inttoptr i64 %t108 to ptr
  %t110 = call ptr @__olang_scope_alloc(ptr %t109, i64 %t107)
  call void @olang_textcopy(ptr %t110, ptr %t102, i64 %t103)
  %t111 = getelementptr i8, ptr %t110, i64 %t103
  call void @olang_textcopy(ptr %t111, ptr %t105, i64 %t106)
  %t112 = insertvalue { i64, ptr } undef, i64 %t107, 0
  %t113 = insertvalue { i64, ptr } %t112, ptr %t110, 1
  %t115 = load i64, ptr %l41
  %t116 = inttoptr i64 %t115 to ptr
  %t117 = extractvalue { i64, ptr } %t113, 0
  %t118 = extractvalue { i64, ptr } %t113, 1
  %t119 = mul i64 %t117, 1
  %t120 = call ptr @__olang_scope_alloc(ptr %t116, i64 %t119)
  call void @llvm.memcpy.p0.p0.i64(ptr %t120, ptr %t118, i64 %t119, i1 false)
  %t121 = insertvalue { i64, ptr } undef, i64 %t117, 0
  %t122 = insertvalue { i64, ptr } %t121, ptr %t120, 1
  %t123 = load ptr, ptr %l40, !tbaa !29
  %t124 = getelementptr %"compiler/cells:Outcome", ptr %t123, i32 0, i32 4
  %t125 = load { i64, ptr }, ptr %t124, !tbaa !27
  store { i64, ptr } %t125, ptr %l48, !tbaa !27
  %t127 = load ptr, ptr %l40, !tbaa !29
  %t128 = getelementptr %"compiler/cells:Outcome", ptr %t127, i32 0, i32 4
  store { i64, ptr } %t122, ptr %t128, !tbaa !27
  %t129 = load i1, ptr @olang_2esole_2ecompiler_2fcells_3aOutcome_2e4
  br i1 %t129, label %bb29, label %bb30
bb29:
  %t131 = load { i64, ptr }, ptr %l48
  %t132 = extractvalue { i64, ptr } %t131, 1
  call void @__olang_region_release(ptr %t132)
  store { i64, ptr } zeroinitializer, ptr %l48
  br label %bb30
bb30:
  br label %bb31
bb31:
  %t133 = load i64, ptr %l1, !tbaa !24
  %t134 = load i64, ptr @G_2ecompiler_2fcells_2eFrameStopped, !tbaa !24
  %t137 = icmp eq i64 %t133, %t134
  br i1 %t137, label %bb32, label %bb33
bb32:
  %t139 = load ptr, ptr %l0, !tbaa !29
  store ptr %t139, ptr %l53, !tbaa !29
  %t140 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t141 = load ptr, ptr %l53, !tbaa !29
  %t142 = getelementptr %"compiler/cells:Outcome", ptr %t141, i32 0, i32 5
  %t143 = load { i64, ptr }, ptr %t142, !tbaa !27
  store { i64, ptr } %t143, ptr %l55, !tbaa !27
  %t145 = load ptr, ptr %l53, !tbaa !29
  %t146 = getelementptr %"compiler/cells:Outcome", ptr %t145, i32 0, i32 5
  store { i64, ptr } %t140, ptr %t146, !tbaa !27
  %t147 = load i1, ptr @olang_2esole_2ecompiler_2fcells_3aOutcome_2e5
  br i1 %t147, label %bb34, label %bb35
bb33:
  br label %bb36
bb34:
  %t149 = load { i64, ptr }, ptr %l55
  %t150 = extractvalue { i64, ptr } %t149, 1
  call void @__olang_region_release(ptr %t150)
  store { i64, ptr } zeroinitializer, ptr %l55
  br label %bb35
bb35:
  br label %bb36
bb36:
  %t151 = load ptr, ptr %l0, !tbaa !29
  store ptr %t151, ptr %l57, !tbaa !29
  %t152 = load i64, ptr %l1, !tbaa !24
  %t153 = load i64, ptr @G_2ecompiler_2fcells_2eFrameDone, !tbaa !24
  %t156 = icmp eq i64 %t152, %t153
  br i1 %t156, label %bb37, label %bb38
bb37:
  store i1 true, ptr %l61, !tbaa !21
  br label %bb39
bb38:
  %t158 = load i64, ptr %l1, !tbaa !24
  %t159 = load i64, ptr @G_2ecompiler_2fcells_2eFrameStopped, !tbaa !24
  %t162 = icmp eq i64 %t158, %t159
  store i1 %t162, ptr %l61, !tbaa !21
  br label %bb39
bb39:
  %t164 = load i1, ptr %l61, !tbaa !21
  %t165 = load ptr, ptr %l57, !tbaa !29
  %t166 = getelementptr %"compiler/cells:Outcome", ptr %t165, i32 0, i32 7
  store i1 %t164, ptr %t166, !tbaa !21
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fcells_2elink(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, ptr %a2) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca ptr
  %l3 = alloca %"std/os:Output"
  %l4 = alloca %"std/os:Output"
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca %"std/os:Output"
  %l9 = alloca i32
  %l11 = alloca i1
  %l14 = alloca ptr
  %l15 = alloca { i64, [3 x i64] }
  %l17 = alloca %"compiler/diagmsg:Msg"
  %l24 = alloca i32
  %l26 = alloca i1
  %l29 = alloca ptr
  %l30 = alloca { i64, [3 x i64] }
  %l32 = alloca %"compiler/diagmsg:Msg"
  %s0 = alloca %olang.scope
  %rv = alloca i32
  %t22 = alloca { i64, [3 x i64] }, align 8
  %t67 = alloca { i64, [3 x i64] }, align 8
  store { i64, ptr } %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v0, ptr %v0, ptr %a0)
  store { i64, ptr } %t3, ptr %l6
  br label %bb1
bb1:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d27, i32 0, i32 1) }, ptr %l7, !tbaa !27
  %t4 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t6 = call { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %v0, ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t4, { i64, ptr } %t5, i1 true, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d28, i32 0, i32 1) })
  %t7 = extractvalue { i32, %"std/os:Output" } %t6, 1
  %t8 = extractvalue { i32, %"std/os:Output" } %t6, 0
  store i32 %t8, ptr %l9
  %t9 = icmp ne i32 %t8, 0
  br i1 %t9, label %bb3, label %ok.10, !prof !99
ok.10:
  store %"std/os:Output" %t7, ptr %l8
  br label %bb2
bb2:
  %t11 = load %"std/os:Output", ptr %l8
  store %"std/os:Output" %t11, ptr %l4
  br label %bb9
bb3:
  %t12 = load i32, ptr %l9, !tbaa !23
  %t13 = ashr i32 %t12, 16
  %t15 = icmp eq i32 %t13, 1
  store i1 %t15, ptr %l11, !tbaa !21
  %t16 = load i32, ptr %l9, !tbaa !23
  %t17 = ashr i32 %t16, 16
  %t19 = icmp eq i32 %t17, 1
  br i1 %t19, label %bb4, label %bb5
bb4:
  call void @__olang_errpay_pop()
  br label %bb5
bb5:
  br label %bb6
bb6:
  %t21 = load ptr, ptr %l2, !tbaa !29
  store ptr %t21, ptr %l14, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t22
  %t23 = getelementptr { i64, [3 x i64] }, ptr %t22, i32 0, i32 0
  store i64 0, ptr %t23
  %t24 = load { i64, [3 x i64] }, ptr %t22
  store { i64, [3 x i64] } %t24, ptr %l15
  %t25 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t27 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLinkFailed(ptr %v1, ptr %v2, { i64, ptr } %t25)
  store %"compiler/diagmsg:Msg" %t27, ptr %l17
  br label %bb7
bb7:
  %t28 = load ptr, ptr %l14, !tbaa !29
  %t29 = load { i64, [3 x i64] }, ptr %l15
  %t30 = load %"compiler/diagmsg:Msg", ptr %l17
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eFatal(ptr %v2, ptr %v2, ptr %t28, { i64, [3 x i64] } %t29, %"compiler/diagmsg:Msg" %t30)
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s0)
  store i32 65536, ptr %rv
  br label %ret
bb9:
  %t32 = load %"std/os:Output", ptr %l4
  store %"std/os:Output" %t32, ptr %l3
  %t33 = getelementptr %"std/os:Output", ptr %l3, i32 0, i32 0
  %t34 = load i32, ptr %t33, !tbaa !23
  %t36 = icmp eq i32 %t34, 0
  br i1 %t36, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t38 = getelementptr %"std/os:Output", ptr %l3, i32 0, i32 1
  %t39 = load { i64, ptr }, ptr %t38, !tbaa !27
  %t40 = getelementptr %"std/os:Output", ptr %l3, i32 0, i32 2
  %t41 = load { i64, ptr }, ptr %t40, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t39, 1
  %t44 = extractvalue { i64, ptr } %t39, 0
  %t46 = extractvalue { i64, ptr } %t41, 1
  %t47 = extractvalue { i64, ptr } %t41, 0
  %t48 = add i64 %t44, %t47
  %t49 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t48)
  call void @olang_textcopy(ptr %t49, ptr %t43, i64 %t44)
  %t50 = getelementptr i8, ptr %t49, i64 %t44
  call void @olang_textcopy(ptr %t50, ptr %t46, i64 %t47)
  %t51 = insertvalue { i64, ptr } undef, i64 %t48, 0
  %t52 = insertvalue { i64, ptr } %t51, ptr %t49, 1
  %t54 = call i32 @std_2fio_2ePutErr_3cstd_2fprelude_2ftext_3aString_3e({ i64, ptr } %t52)
  store i32 %t54, ptr %l24
  %t55 = icmp ne i32 %t54, 0
  br i1 %t55, label %bb14, label %ok.56, !prof !99
ok.56:
  br label %bb13
bb13:
  br label %bb18
bb14:
  %t57 = load i32, ptr %l24, !tbaa !23
  %t58 = ashr i32 %t57, 16
  %t60 = icmp eq i32 %t58, 1
  store i1 %t60, ptr %l26, !tbaa !21
  %t61 = load i32, ptr %l24, !tbaa !23
  %t62 = ashr i32 %t61, 16
  %t64 = icmp eq i32 %t62, 1
  br i1 %t64, label %bb15, label %bb16
bb15:
  call void @__olang_errpay_pop()
  br label %bb16
bb16:
  br label %bb17
bb17:
  br label %bb18
bb18:
  %t66 = load ptr, ptr %l2, !tbaa !29
  store ptr %t66, ptr %l29, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t67
  %t68 = getelementptr { i64, [3 x i64] }, ptr %t67, i32 0, i32 0
  store i64 0, ptr %t68
  %t69 = load { i64, [3 x i64] }, ptr %t67
  store { i64, [3 x i64] } %t69, ptr %l30
  %t70 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t72 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLinkFailed(ptr %v1, ptr %v2, { i64, ptr } %t70)
  store %"compiler/diagmsg:Msg" %t72, ptr %l32
  br label %bb19
bb19:
  %t73 = load ptr, ptr %l29, !tbaa !29
  %t74 = load { i64, [3 x i64] }, ptr %l30
  %t75 = load %"compiler/diagmsg:Msg", ptr %l32
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eFatal(ptr %v2, ptr %v2, ptr %t73, { i64, [3 x i64] } %t74, %"compiler/diagmsg:Msg" %t75)
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s0)
  store i32 65536, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fcells_2erenamed(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i8
  %l5 = alloca { i64, ptr }
  %l7 = alloca i64
  %l9 = alloca i1
  %l12 = alloca { i64, ptr }
  %l13 = alloca i1
  %l22 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  %l34 = alloca ptr
  %l35 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l39 = alloca i32
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H17e0a6412004f84451bdf7ff6c816e10(ptr %v2, ptr %t1)
  store i64 %t3, ptr %l7
  br label %bb1
bb1:
  %t4 = load i64, ptr %l7, !tbaa !24
  %t5 = icmp eq i64 %t4, 0
  br i1 %t5, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb5
bb3:
  %t7 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d29, i32 0, i32 1) }, ptr %l12, !tbaa !27
  %t10 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t11 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v1, ptr %s0, { i64, ptr } %t7, { i64, ptr } %t10)
  store i1 %t11, ptr %l13
  br label %bb4
bb4:
  %t12 = load i1, ptr %l13, !tbaa !21
  %t13 = xor i1 %t12, true
  store i1 %t13, ptr %l9, !tbaa !21
  br label %bb5
bb5:
  %t15 = load i1, ptr %l9, !tbaa !21
  br i1 %t15, label %bb6, label %bb7
bb6:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load { i64, ptr }, ptr %l1, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %t16, { i64, ptr } %t17)
  br label %bb8
bb7:
  br label %bb9
bb8:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb9:
  store i64 0, ptr %l3, !tbaa !24
  br label %bb10
bb10:
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t21, 0
  %t26 = icmp slt i64 %t20, %t23
  %t28 = xor i1 %t26, true
  br i1 %t28, label %bb11, label %bb12
bb11:
  br label %bb25
bb12:
  br label %bb13
bb13:
  %t30 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t30, ptr %l22, !tbaa !27
  %t31 = load i64, ptr %l3, !tbaa !24
  %t33 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !27
  %t35 = getelementptr i8, ptr %t34, i64 %t31
  %t36 = load i8, ptr %t35, !tbaa !32
  store i8 %t36, ptr %l4, !tbaa !22
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t39 = load i8, ptr %l4, !tbaa !22
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %t38, i8 %t39)
  br label %bb14
bb14:
  %t42 = load i64, ptr %l3, !tbaa !24
  %t44 = add i64 %t42, 1
  store i64 %t44, ptr %l3, !tbaa !24
  %t46 = load i8, ptr %l4, !tbaa !22
  %t48 = icmp ne i8 %t46, 64
  br i1 %t48, label %bb15, label %bb16
bb15:
  br label %bb24
bb16:
  br label %bb17
bb17:
  %t50 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t51 = load i64, ptr %l3, !tbaa !24
  %t54 = call { i64, ptr } @compiler_2fcells_2esymbolAt(ptr %v1, ptr %v1, { i64, ptr } %t50, i64 %t51)
  store { i64, ptr } %t54, ptr %l33
  br label %bb18
bb18:
  %t55 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t55, ptr %l5, !tbaa !27
  %t56 = load ptr, ptr %l0, !tbaa !29
  store ptr %t56, ptr %l34, !tbaa !29
  %t57 = load ptr, ptr %l2, !tbaa !29
  %t58 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t61 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha4444909f5ef14f7626d25b8f59e6ba2(ptr %v2, ptr %v1, ptr %v2, ptr %t57, { i64, ptr } %t58)
  %t62 = extractvalue { i32, { i64, ptr } } %t61, 1
  %t63 = extractvalue { i32, { i64, ptr } } %t61, 0
  store i32 %t63, ptr %l39
  %t64 = icmp ne i32 %t63, 0
  br i1 %t64, label %bb20, label %ok.65, !prof !99
ok.65:
  store { i64, ptr } %t62, ptr %l38
  br label %bb19
bb19:
  %t66 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t66, ptr %l35, !tbaa !27
  br label %bb22
bb20:
  br label %bb21
bb21:
  %t67 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t67, ptr %l35, !tbaa !27
  br label %bb22
bb22:
  %t69 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t70 = extractvalue { i64, ptr } %t69, 1
  %t71 = call ptr @__olang_scope_of(ptr %t70, ptr null)
  %t72 = ptrtoint ptr %t71 to i64
  %t74 = inttoptr i64 %t72 to ptr
  %t75 = load ptr, ptr %l34, !tbaa !29
  %t76 = load { i64, ptr }, ptr %l35, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %t74, ptr %t75, { i64, ptr } %t76)
  br label %bb23
bb23:
  %t77 = load i64, ptr %l3, !tbaa !24
  %t78 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t80 = extractvalue { i64, ptr } %t78, 0
  %t83 = add i64 %t77, %t80
  store i64 %t83, ptr %l3, !tbaa !24
  br label %bb24
bb24:
  br label %bb10
bb25:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fcells_2erewrite(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca i1
  %l4 = alloca %"std/prelude/text:LineIter"
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l8 = alloca %"std/prelude/text:StringBuilder"
  %l10 = alloca %"std/prelude/text:LineIter"
  %l11 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l14 = alloca i32
  %l16 = alloca i1
  %l18 = alloca i1
  %l20 = alloca i1
  %l23 = alloca i1
  %l25 = alloca i1
  %l27 = alloca i1
  %l30 = alloca i1
  %l32 = alloca i1
  %l34 = alloca { i64, ptr }
  %l39 = alloca i1
  %l40 = alloca ptr
  %l41 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l46 = alloca i32
  %l56 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a1, ptr %l1
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
  store %"std/prelude/text:StringBuilder" %t2, ptr %l2
  store i1 false, ptr %l3, !tbaa !21
  %t5 = call %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %v0, ptr %v0, { i64, ptr } %a0)
  store %"std/prelude/text:LineIter" %t5, ptr %l10
  br label %bb2
bb2:
  %t6 = load %"std/prelude/text:LineIter", ptr %l10
  store %"std/prelude/text:LineIter" %t6, ptr %l4
  br label %bb3
bb3:
  store %olang.scope zeroinitializer, ptr %s2
  %t8 = call { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %v0, ptr %v0, ptr %l4)
  %t9 = extractvalue { i32, { i64, ptr } } %t8, 1
  %t10 = extractvalue { i32, { i64, ptr } } %t8, 0
  store i32 %t10, ptr %l14
  %t11 = icmp ne i32 %t10, 0
  br i1 %t11, label %bb5, label %ok.12, !prof !99
ok.12:
  store { i64, ptr } %t9, ptr %l13
  br label %bb4
bb4:
  %t13 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t13, ptr %l11, !tbaa !27
  br label %bb7
bb5:
  %t14 = load i32, ptr %l14, !tbaa !23
  %t15 = ashr i32 %t14, 16
  %t17 = icmp eq i32 %t15, 1
  store i1 %t17, ptr %l16, !tbaa !21
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s2)
  br label %bb49
bb7:
  %t18 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t18, ptr %l5, !tbaa !27
  %t19 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t21 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s2, { i64, ptr } %t19, { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d30, i32 0, i32 1) })
  store i1 %t21, ptr %l18
  br label %bb8
bb8:
  %t22 = load i1, ptr %l18, !tbaa !21
  br i1 %t22, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb48
bb10:
  br label %bb11
bb11:
  %t23 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t25 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s2, { i64, ptr } %t23, { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d31, i32 0, i32 1) })
  store i1 %t25, ptr %l20
  br label %bb12
bb12:
  %t26 = load i1, ptr %l20, !tbaa !21
  br i1 %t26, label %bb13, label %bb14
bb13:
  store %olang.scope zeroinitializer, ptr %s4
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s4, ptr %l2, { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d32, i32 0, i32 1) })
  br label %bb15
bb14:
  br label %bb16
bb15:
  store i1 true, ptr %l3, !tbaa !21
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s2)
  br label %bb48
bb16:
  %t28 = load i1, ptr %l3, !tbaa !21
  br i1 %t28, label %bb17, label %bb18
bb17:
  %t30 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t32 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t30, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d33, i32 0, i32 1) })
  store i1 %t32, ptr %l25
  br label %bb19
bb18:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb20
bb19:
  %t33 = load i1, ptr %l25, !tbaa !21
  store i1 %t33, ptr %l23, !tbaa !21
  br label %bb20
bb20:
  %t34 = load i1, ptr %l23, !tbaa !21
  br i1 %t34, label %bb21, label %bb22
bb21:
  store i1 false, ptr %l3, !tbaa !21
  br label %bb23
bb22:
  br label %bb23
bb23:
  %t35 = load i1, ptr %l3, !tbaa !21
  br i1 %t35, label %bb24, label %bb25
bb24:
  %t37 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t38 = load ptr, ptr %l1, !tbaa !29
  %t41 = call i1 @compiler_2fcells_2edropped(ptr %v0, ptr %v1, { i64, ptr } %t37, ptr %t38)
  store i1 %t41, ptr %l30
  br label %bb26
bb25:
  store i1 false, ptr %l27, !tbaa !21
  br label %bb27
bb26:
  %t42 = load i1, ptr %l30, !tbaa !21
  store i1 %t42, ptr %l27, !tbaa !21
  br label %bb27
bb27:
  %t43 = load i1, ptr %l27, !tbaa !21
  br i1 %t43, label %bb28, label %bb29
bb28:
  call void @__olang_scope_close(ptr %s2)
  br label %bb48
bb29:
  br label %bb30
bb30:
  %t44 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t46 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s2, { i64, ptr } %t44, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) })
  store i1 %t46, ptr %l32
  br label %bb31
bb31:
  %t47 = load i1, ptr %l32, !tbaa !21
  br i1 %t47, label %bb32, label %bb33
bb32:
  %t48 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t50 = call { i64, ptr } @compiler_2fcells_2esymbolAt(ptr %v0, ptr %v0, { i64, ptr } %t48, i64 1)
  store { i64, ptr } %t50, ptr %l34
  br label %bb34
bb33:
  br label %bb45
bb34:
  %t51 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t51, ptr %l6, !tbaa !27
  %t52 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t54 = load ptr, ptr %l1, !tbaa !29
  %t56 = getelementptr %"compiler/cells:Plan", ptr %t54, i32 0, i32 1
  %t60 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6b5ccacad8db807339a3579aa8c82ff8(ptr %v1, ptr %v0, ptr %t56, { i64, ptr } %t52)
  store i1 %t60, ptr %l39
  br label %bb35
bb35:
  %t61 = load i1, ptr %l39, !tbaa !21
  br i1 %t61, label %bb36, label %bb37
bb36:
  store %olang.scope zeroinitializer, ptr %s8
  store ptr %l2, ptr %l40, !tbaa !29
  %t62 = load ptr, ptr %l1, !tbaa !29
  %t64 = getelementptr %"compiler/cells:Plan", ptr %t62, i32 0, i32 0
  %t65 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t68 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha4444909f5ef14f7626d25b8f59e6ba2(ptr %v1, ptr %v0, ptr %s8, ptr %t64, { i64, ptr } %t65)
  %t69 = extractvalue { i32, { i64, ptr } } %t68, 1
  %t70 = extractvalue { i32, { i64, ptr } } %t68, 0
  store i32 %t70, ptr %l46
  %t71 = icmp ne i32 %t70, 0
  br i1 %t71, label %bb39, label %ok.72, !prof !99
ok.72:
  store { i64, ptr } %t69, ptr %l45
  br label %bb38
bb37:
  br label %bb44
bb38:
  %t73 = load { i64, ptr }, ptr %l45, !tbaa !27
  store { i64, ptr } %t73, ptr %l41, !tbaa !27
  br label %bb42
bb39:
  %t74 = load i32, ptr %l46, !tbaa !23
  %t75 = icmp eq i32 %t74, 65536
  br i1 %t75, label %bb40, label %bb41
bb40:
  call void @__olang_bang_failed_plain(ptr @olang_loc_20926c2b81d0e00c_7d8ac19a57247f8)
  unreachable
bb41:
  call void @__olang_bang_failed_plain(ptr @olang_loc_948f6b52a35541f0_f4572f553ac6bc74)
  unreachable
bb42:
  %t77 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t78 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d35, i32 0, i32 1) }, 0
  %t79 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t80 = extractvalue { i64, ptr } %t79, 1
  %t81 = extractvalue { i64, ptr } %t79, 0
  %t82 = add i64 %t78, %t81
  %t83 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d36, i32 0, i32 1) }, 1
  %t84 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d36, i32 0, i32 1) }, 0
  %t85 = add i64 %t82, %t84
  %t86 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t85)
  call void @olang_textcopy(ptr %t86, ptr %t77, i64 %t78)
  %t87 = getelementptr i8, ptr %t86, i64 %t78
  call void @olang_textcopy(ptr %t87, ptr %t80, i64 %t81)
  %t88 = getelementptr i8, ptr %t87, i64 %t81
  call void @olang_textcopy(ptr %t88, ptr %t83, i64 %t84)
  %t89 = insertvalue { i64, ptr } undef, i64 %t85, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t86, 1
  %t92 = extractvalue { i64, ptr } %t90, 0
  %t93 = extractvalue { i64, ptr } %t90, 1
  %t94 = mul i64 %t92, 1
  %t95 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t94)
  call void @llvm.memcpy.p0.p0.i64(ptr %t95, ptr %t93, i64 %t94, i1 false)
  %t96 = insertvalue { i64, ptr } undef, i64 %t92, 0
  %t97 = insertvalue { i64, ptr } %t96, ptr %t95, 1
  %t98 = load ptr, ptr %l40, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s8, ptr %t98, { i64, ptr } %t97)
  br label %bb43
bb43:
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s2)
  br label %bb48
bb44:
  br label %bb45
bb45:
  %t100 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t101 = load ptr, ptr %l1, !tbaa !29
  %t103 = getelementptr %"compiler/cells:Plan", ptr %t101, i32 0, i32 0
  call void @compiler_2fcells_2erenamed(ptr %s0, ptr %v0, ptr %v1, ptr %l2, { i64, ptr } %t100, ptr %t103)
  br label %bb46
bb46:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l2, i8 10)
  br label %bb47
bb47:
  call void @__olang_scope_close(ptr %s2)
  br label %bb48
bb48:
  br label %bb3
bb49:
  %t109 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v2, ptr %l2)
  store { i64, ptr } %t109, ptr %l56
  br label %bb50
bb50:
  call void @__olang_scope_close(ptr %s0)
  %t110 = load { i64, ptr }, ptr %l56, !tbaa !27
  store { i64, ptr } %t110, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fcells_2esymbolAt(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca i64
  %l8 = alloca i1
  %l9 = alloca { i64, ptr }
  %l12 = alloca i1
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  store i64 %t1, ptr %l2, !tbaa !24
  br label %bb1
bb1:
  %t3 = load i64, ptr %l2, !tbaa !24
  %t4 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t9 = icmp slt i64 %t3, %t6
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t11, ptr %l9, !tbaa !27
  %t12 = load i64, ptr %l2, !tbaa !24
  %t14 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr i8, ptr %t15, i64 %t12
  %t17 = load i8, ptr %t16, !tbaa !32
  %t19 = call i1 @compiler_2fcells_2esymbolChar(i8 %t17)
  store i1 %t19, ptr %l12
  br label %bb4
bb3:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb5
bb4:
  %t20 = load i1, ptr %l12, !tbaa !21
  store i1 %t20, ptr %l8, !tbaa !21
  br label %bb5
bb5:
  %t21 = load i1, ptr %l8, !tbaa !21
  %t22 = xor i1 %t21, true
  br i1 %t22, label %bb6, label %bb7
bb6:
  br label %bb10
bb7:
  br label %bb8
bb8:
  %t24 = load i64, ptr %l2, !tbaa !24
  %t26 = add i64 %t24, 1
  store i64 %t26, ptr %l2, !tbaa !24
  br label %bb9
bb9:
  br label %bb1
bb10:
  %t28 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t28, ptr %l16, !tbaa !27
  %t29 = load i64, ptr %l1, !tbaa !24
  store i64 %t29, ptr %l17, !tbaa !24
  %t30 = load i64, ptr %l2, !tbaa !24
  store i64 %t30, ptr %l18, !tbaa !24
  %t31 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t31, 0
  store i64 %t32, ptr %l19, !tbaa !24
  %t33 = load i64, ptr %l17, !tbaa !24
  %t34 = icmp sge i64 %t33, 0
  br i1 %t34, label %bb11, label %bb12
bb11:
  %t36 = load i64, ptr %l17, !tbaa !24
  %t37 = load i64, ptr %l18, !tbaa !24
  %t38 = icmp sle i64 %t36, %t37
  br i1 %t38, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_1fa7a91fdba5f63e_9e2724382c24a02)
  unreachable
bb13:
  %t40 = load i64, ptr %l18, !tbaa !24
  %t41 = load i64, ptr %l19, !tbaa !24
  %t42 = icmp sle i64 %t40, %t41
  br i1 %t42, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_1fa7a91fdba5f63e_9e2724382c24a02)
  unreachable
bb15:
  %t44 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !27
  %t46 = load i64, ptr %l17, !tbaa !24
  %t47 = load i64, ptr %l18, !tbaa !24
  %t48 = getelementptr i8, ptr %t45, i64 %t46
  %t49 = sub i64 %t47, %t46
  %t50 = insertvalue { i64, ptr } undef, i64 %t49, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr %t48, 1
  store { i64, ptr } %t51, ptr %rv
  br label %ret
bb16:
  call void @__olang_check_failed(ptr @olang_loc_1fa7a91fdba5f63e_9e2724382c24a02)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fcells_2esymbolChar(i8 %a0) #0 {
entry:
  %l0 = alloca i8
  %l2 = alloca i1
  %l3 = alloca i1
  %l5 = alloca i1
  %l6 = alloca i1
  %l9 = alloca i1
  %l12 = alloca i1
  %l15 = alloca i1
  %rv = alloca i1
  store i8 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i8, ptr %l0, !tbaa !22
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t1)
  store i1 %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load i1, ptr %l2, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb5
bb3:
  %t5 = load i8, ptr %l0, !tbaa !22
  %t7 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t5)
  store i1 %t7, ptr %l5
  br label %bb4
bb4:
  %t8 = load i1, ptr %l5, !tbaa !21
  store i1 %t8, ptr %l3, !tbaa !21
  br label %bb5
bb5:
  %t9 = load i1, ptr %l3, !tbaa !21
  br i1 %t9, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb8
bb7:
  %t10 = load i8, ptr %l0, !tbaa !22
  %t12 = icmp eq i8 %t10, 95
  store i1 %t12, ptr %l6, !tbaa !21
  br label %bb8
bb8:
  %t14 = load i1, ptr %l6, !tbaa !21
  br i1 %t14, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb11
bb10:
  %t15 = load i8, ptr %l0, !tbaa !22
  %t17 = icmp eq i8 %t15, 46
  store i1 %t17, ptr %l9, !tbaa !21
  br label %bb11
bb11:
  %t19 = load i1, ptr %l9, !tbaa !21
  br i1 %t19, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb14
bb13:
  %t20 = load i8, ptr %l0, !tbaa !22
  %t22 = icmp eq i8 %t20, 36
  store i1 %t22, ptr %l12, !tbaa !21
  br label %bb14
bb14:
  %t24 = load i1, ptr %l12, !tbaa !21
  br i1 %t24, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb17
bb16:
  %t25 = load i8, ptr %l0, !tbaa !22
  %t27 = icmp eq i8 %t25, 45
  store i1 %t27, ptr %l15, !tbaa !21
  br label %bb17
bb17:
  %t29 = load i1, ptr %l15, !tbaa !21
  store i1 %t29, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fcells_2eword(ptr %v0, { i64, ptr } %a0, i64 %a1) #0 {
entry:
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l12 = alloca i64
  %l15 = alloca i64
  %l34 = alloca { i64, ptr }
  %l41 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  store i64 0, ptr %l3, !tbaa !24
  store i64 8, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t1 = load i64, ptr %l4, !tbaa !24
  %t2 = load i64, ptr %l3, !tbaa !24
  %t5 = icmp sgt i64 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load i64, ptr %l5, !tbaa !24
  %t9 = icmp sgt i64 %t7, 0
  br i1 %t9, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l12, !tbaa !24
  br label %bb6
bb3:
  %t11 = load i64, ptr %l4, !tbaa !24
  %t12 = load i64, ptr %l3, !tbaa !24
  %t15 = sub i64 %t11, %t12
  %t16 = load i64, ptr %l5, !tbaa !24
  %t19 = add i64 %t15, %t16
  %t21 = sub i64 %t19, 1
  %t22 = load i64, ptr %l5, !tbaa !24
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
  store i64 %t28, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb7
bb7:
  %t29 = load i64, ptr %l7, !tbaa !24
  %t30 = load i64, ptr %l6, !tbaa !24
  %t33 = icmp slt i64 %t29, %t30
  %t35 = xor i1 %t33, true
  br i1 %t35, label %bb8, label %bb9
bb8:
  br label %bb12
bb9:
  br label %bb10
bb10:
  %t37 = load i64, ptr %l3, !tbaa !24
  %t38 = load i64, ptr %l7, !tbaa !24
  %t39 = load i64, ptr %l5, !tbaa !24
  %t42 = mul i64 %t38, %t39
  %t45 = add i64 %t37, %t42
  store i64 %t45, ptr %l8, !tbaa !24
  %t47 = load i64, ptr %l2, !tbaa !24
  store { i64, ptr } %a0, ptr %l34, !tbaa !27
  %t50 = load i64, ptr %l8, !tbaa !24
  %t53 = add i64 %a1, %t50
  %t55 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !27
  %t57 = getelementptr i8, ptr %t56, i64 %t53
  %t58 = load i8, ptr %t57, !tbaa !32
  %t60 = zext i8 %t58 to i64
  %t61 = load i64, ptr %l8, !tbaa !24
  %t63 = mul i64 8, %t61
  store i64 %t63, ptr %l41, !tbaa !24
  %t65 = load i64, ptr %l41, !tbaa !24
  %t66 = load i64, ptr %l41, !tbaa !24
  %t67 = shl i64 %t60, %t66
  %t70 = or i64 %t47, %t67
  store i64 %t70, ptr %l2, !tbaa !24
  br label %bb11
bb11:
  %t72 = load i64, ptr %l7, !tbaa !24
  %t74 = add i64 %t72, 1
  store i64 %t74, ptr %l7, !tbaa !24
  br label %bb7
bb12:
  %t76 = load i64, ptr %l2, !tbaa !24
  store i64 %t76, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i32, { i64, ptr } } @compiler_2fcells_2eworkerExe(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %lp2 = alloca ptr
  %lp3 = alloca ptr
  %lp4 = alloca ptr
  %lp5 = alloca ptr
  %lp6 = alloca ptr
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca %"std/prelude/text:StringBuilder"
  %l9 = alloca ptr
  %l10 = alloca i64
  %lp12 = alloca ptr
  %l13 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca ptr
  %l17 = alloca i64
  %l19 = alloca ptr
  %l20 = alloca i64
  %l22 = alloca ptr
  %l23 = alloca i64
  %l25 = alloca ptr
  %l26 = alloca i64
  %l27 = alloca i64
  %l31 = alloca i32
  %l33 = alloca i1
  %l37 = alloca %"compiler/build:Program"
  %l44 = alloca %"compiler/build:Config"
  %l46 = alloca %"compiler/build:Config"
  %l61 = alloca i32
  %l64 = alloca i64
  %l67 = alloca ptr
  %l68 = alloca i32
  %l69 = alloca i64
  %l76 = alloca %"compiler/build:Unit"
  %l77 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l81 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l82 = alloca i32
  %l84 = alloca %"std/prelude/text:StringBuilder"
  %l86 = alloca i64
  %l88 = alloca i64
  %l93 = alloca { i64, ptr }
  %l101 = alloca { i64, ptr }
  %l103 = alloca { i64, ptr }
  %l105 = alloca { i64, ptr }
  %l106 = alloca i64
  %l113 = alloca i1
  %l118 = alloca { i64, ptr }
  %l119 = alloca i32
  %l121 = alloca i1
  %l125 = alloca { i64, ptr }
  %l126 = alloca i32
  %l128 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l133 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l135 = alloca i64
  %l137 = alloca i64
  %l142 = alloca { i64, ptr }
  %l151 = alloca i64
  %l153 = alloca i64
  %l158 = alloca { i64, ptr }
  %l164 = alloca i64
  %l166 = alloca i64
  %l171 = alloca { i64, ptr }
  %l176 = alloca i64
  %l197 = alloca i1
  %l203 = alloca i32
  %l207 = alloca i32
  %l209 = alloca i1
  %s0 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  %t20 = alloca %"compiler/build:Program", align 8
  %t48 = alloca %"compiler/build:Config", align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/build:Config", ptr %t1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = call i32 @std_2fos_2eMkDirAll(ptr %v0, { i64, ptr } %t4)
  store i32 %t6, ptr %l31
  %t7 = icmp ne i32 %t6, 0
  br i1 %t7, label %bb2, label %ok.8, !prof !99
ok.8:
  br label %bb1
bb1:
  br label %bb6
bb2:
  %t9 = load i32, ptr %l31, !tbaa !23
  %t10 = ashr i32 %t9, 16
  %t12 = icmp eq i32 %t10, 1
  store i1 %t12, ptr %l33, !tbaa !21
  %t13 = load i32, ptr %l31, !tbaa !23
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
  %t19 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t19, ptr %rv
  br label %ret
bb6:
  call void @compiler_2fbuild_3aProgram_2ector(ptr %t20, ptr %v1)
  call void @llvm.memmove.p0.p0.i64(ptr %l37, ptr %t20, i64 264, i1 false)
  br label %bb7
bb7:
  %t21 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 264, i64 8)
  store ptr %t21, ptr %lp2
  %t22 = load ptr, ptr %lp2
  call void @llvm.memmove.p0.p0.i64(ptr %t22, ptr %l37, i64 264, i1 false)
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/build:Config", ptr %t23, i32 0, i32 0
  %t26 = load { i64, ptr }, ptr %t25, !tbaa !27
  %t28 = extractvalue { i64, ptr } %t26, 1
  %t29 = extractvalue { i64, ptr } %t26, 0
  %t30 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d37, i32 0, i32 1) }, 1
  %t31 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d37, i32 0, i32 1) }, 0
  %t32 = add i64 %t29, %t31
  %t33 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t32)
  call void @olang_textcopy(ptr %t33, ptr %t28, i64 %t29)
  %t34 = getelementptr i8, ptr %t33, i64 %t29
  call void @olang_textcopy(ptr %t34, ptr %t30, i64 %t31)
  %t35 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t36 = insertvalue { i64, ptr } %t35, ptr %t33, 1
  %t37 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t37, ptr %lp3
  %t39 = load ptr, ptr %lp3
  store { i64, ptr } %t36, ptr %t39, !tbaa !27
  %t40 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 0, i64 8)
  store ptr %t40, ptr %lp4
  %t42 = load ptr, ptr %lp4
  store [0 x { i64, ptr }] zeroinitializer, ptr %t42
  %t43 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 0, i64 8)
  store ptr %t43, ptr %lp5
  %t45 = load ptr, ptr %lp5
  store [0 x i64] zeroinitializer, ptr %t45
  %t46 = load ptr, ptr %l0, !tbaa !29
  call void @llvm.memmove.p0.p0.i64(ptr %l44, ptr %t46, i64 640, i1 false)
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbuild_3aConfig(ptr %t48, ptr %v1, ptr %l44)
  call void @llvm.memmove.p0.p0.i64(ptr %l46, ptr %t48, i64 640, i1 false)
  br label %bb8
bb8:
  %t50 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 640, i64 8)
  store ptr %t50, ptr %lp6
  %t51 = load ptr, ptr %lp6
  call void @llvm.memmove.p0.p0.i64(ptr %t51, ptr %l46, i64 640, i1 false)
  %t52 = load { ptr, ptr }, ptr @G_2ecompiler_2fcells_2eBuilder
  %t54 = extractvalue { ptr, ptr } %t52, 0
  %t55 = extractvalue { ptr, ptr } zeroinitializer, 0
  %t56 = icmp eq ptr %t54, %t55
  %t57 = extractvalue { ptr, ptr } %t52, 1
  %t58 = extractvalue { ptr, ptr } zeroinitializer, 1
  %t59 = icmp eq ptr %t57, %t58
  %t60 = and i1 %t56, %t59
  br i1 %t60, label %bb9, label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_f955eaf1a3bf6405_1ec27af45d1f4ca9)
  unreachable
bb10:
  br label %bb11
bb11:
  %t62 = load { ptr, ptr }, ptr @G_2ecompiler_2fcells_2eBuilder
  %t63 = load ptr, ptr %lp3
  %t64 = load { i64, ptr }, ptr %t63, !tbaa !27
  %t65 = load { i64, ptr }, ptr @G_2ecompiler_2fcells_2eWorkerSource, !tbaa !27
  %t66 = load ptr, ptr %lp4
  %t68 = insertvalue { i64, ptr } undef, i64 0, 0
  %t69 = insertvalue { i64, ptr } %t68, ptr %t66, 1
  %t70 = load ptr, ptr %lp4
  %t72 = insertvalue { i64, ptr } undef, i64 0, 0
  %t73 = insertvalue { i64, ptr } %t72, ptr %t70, 1
  %t74 = load ptr, ptr %lp5
  %t76 = insertvalue { i64, ptr } undef, i64 0, 0
  %t77 = insertvalue { i64, ptr } %t76, ptr %t74, 1
  %t78 = load ptr, ptr %lp6
  %t79 = load ptr, ptr %lp2
  %t80 = load ptr, ptr %l1, !tbaa !29
  %t82 = extractvalue { ptr, ptr } %t62, 0
  %t83 = extractvalue { ptr, ptr } %t62, 1
  %t84 = load ptr, ptr @__olang_prog_scope
  %t93 = call i32 %t82(ptr %t83, ptr %v1, ptr %t84, ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, { i64, ptr } %t64, { i64, ptr } %t65, { i64, ptr } %t69, { i64, ptr } %t73, { i64, ptr } %t77, ptr %t78, ptr %t79, ptr %t80)
  store i32 %t93, ptr %l61
  %t94 = icmp ne i32 %t93, 0
  br i1 %t94, label %bb13, label %ok.95, !prof !99
ok.95:
  br label %bb12
bb12:
  br label %bb14
bb13:
  %t96 = load i32, ptr %l61, !tbaa !23
  %t97 = lshr i32 %t96, 16
  %t98 = and i32 %t96, 65535
  %t99 = icmp eq i32 %t97, 1
  %t100 = select i1 %t99, i32 1, i32 0
  %t101 = icmp eq i32 %t96, 0
  %t102 = shl i32 %t100, 16
  %t103 = or i32 %t102, %t98
  %t104 = select i1 %t101, i32 0, i32 %t103
  call void @__olang_scope_close(ptr %s0)
  %t106 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t104, 0
  store { i32, { i64, ptr } } %t106, ptr %rv
  br label %ret
bb14:
  %t107 = load ptr, ptr %l1, !tbaa !29
  %t109 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrors(ptr %v1, ptr %t107)
  store i64 %t109, ptr %l64
  br label %bb15
bb15:
  %t110 = load i64, ptr %l64, !tbaa !24
  %t111 = icmp sgt i64 %t110, 0
  br i1 %t111, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s0)
  %t114 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t114, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t115 = load ptr, ptr %lp2
  %t116 = getelementptr %"compiler/build:Program", ptr %t115, i32 0, i32 0
  store ptr %t116, ptr %l67, !tbaa !29
  store i32 0, ptr %l68
  %t117 = ptrtoint ptr %v1 to i64
  store i64 %t117, ptr %l69, !tbaa !24
  %t118 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3aUnit_2e2
  br i1 %t118, label %bb19, label %bb20
bb19:
  %t120 = call ptr @__olang_region_make(ptr %v1)
  %t121 = ptrtoint ptr %t120 to i64
  store i64 %t121, ptr %l69, !tbaa !24
  br label %bb20
bb20:
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t124 = getelementptr %"compiler/build:Config", ptr %t122, i32 0, i32 2
  %t125 = getelementptr %"compiler/target:Target", ptr %t124, i32 0, i32 1
  %t126 = load { i64, ptr }, ptr %t125, !tbaa !27
  %t127 = load { i64, ptr }, ptr @G_2ecompiler_2fcells_2eHelperIr, !tbaa !27
  %t128 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d38, i32 0, i32 1) }, 1
  %t129 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d38, i32 0, i32 1) }, 0
  %t131 = extractvalue { i64, ptr } %t126, 1
  %t132 = extractvalue { i64, ptr } %t126, 0
  %t133 = add i64 %t129, %t132
  %t134 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d39, i32 0, i32 1) }, 1
  %t135 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d39, i32 0, i32 1) }, 0
  %t136 = add i64 %t133, %t135
  %t138 = extractvalue { i64, ptr } %t127, 1
  %t139 = extractvalue { i64, ptr } %t127, 0
  %t140 = add i64 %t136, %t139
  %t141 = load i64, ptr %l69
  %t142 = inttoptr i64 %t141 to ptr
  %t143 = call ptr @__olang_scope_alloc(ptr %t142, i64 %t140)
  call void @olang_textcopy(ptr %t143, ptr %t128, i64 %t129)
  %t144 = getelementptr i8, ptr %t143, i64 %t129
  call void @olang_textcopy(ptr %t144, ptr %t131, i64 %t132)
  %t145 = getelementptr i8, ptr %t144, i64 %t132
  call void @olang_textcopy(ptr %t145, ptr %t134, i64 %t135)
  %t146 = getelementptr i8, ptr %t145, i64 %t135
  call void @olang_textcopy(ptr %t146, ptr %t138, i64 %t139)
  %t147 = insertvalue { i64, ptr } undef, i64 %t140, 0
  %t148 = insertvalue { i64, ptr } %t147, ptr %t143, 1
  %t150 = load i64, ptr %l69
  %t151 = inttoptr i64 %t150 to ptr
  %t152 = extractvalue { i64, ptr } %t148, 0
  %t153 = extractvalue { i64, ptr } %t148, 1
  %t154 = mul i64 %t152, 1
  %t155 = call ptr @__olang_scope_alloc(ptr %t151, i64 %t154)
  call void @llvm.memcpy.p0.p0.i64(ptr %t155, ptr %t153, i64 %t154, i1 false)
  %t156 = insertvalue { i64, ptr } undef, i64 %t152, 0
  %t157 = insertvalue { i64, ptr } %t156, ptr %t155, 1
  %t158 = load i32, ptr %l68, !range !{i32 0, i32 5}
  %t160 = call %"compiler/build:Unit" @compiler_2fbuild_3aUnit_2ector(ptr %v1, ptr %v1, ptr %v1, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d40, i32 0, i32 1) }, i32 %t158, { i64, ptr } %t157)
  store %"compiler/build:Unit" %t160, ptr %l76
  br label %bb21
bb21:
  %t161 = load ptr, ptr %l67, !tbaa !29
  %t162 = load %"compiler/build:Unit", ptr %l76
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aUnit_3e_2ePush_3ccompiler_2fbuild_3aUnit_3e(ptr %v1, ptr %v1, ptr %t161, %"compiler/build:Unit" %t162)
  br label %bb22
bb22:
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t164 = load ptr, ptr %lp2
  %t165 = load ptr, ptr %l1, !tbaa !29
  %t169 = call { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eObjects(ptr %v0, ptr %v1, ptr %v1, ptr %v1, ptr %t163, ptr %t164, ptr %t165)
  %t170 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t169, 1
  %t171 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t169, 0
  store i32 %t171, ptr %l82
  %t172 = icmp ne i32 %t171, 0
  br i1 %t172, label %bb24, label %ok.173, !prof !99
ok.173:
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t170, ptr %l81
  br label %bb23
bb23:
  %t174 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l81
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t174, ptr %l77
  br label %bb25
bb24:
  %t175 = load i32, ptr %l82, !tbaa !23
  %t176 = lshr i32 %t175, 16
  %t177 = and i32 %t175, 65535
  %t178 = icmp eq i32 %t176, 1
  %t179 = select i1 %t178, i32 1, i32 0
  %t180 = icmp eq i32 %t175, 0
  %t181 = shl i32 %t179, 16
  %t182 = or i32 %t181, %t177
  %t183 = select i1 %t180, i32 0, i32 %t182
  call void @__olang_scope_close(ptr %s0)
  %t185 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t183, 0
  store { i32, { i64, ptr } } %t185, ptr %rv
  br label %ret
bb25:
  %t186 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l77
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t186, ptr %l7
  %t187 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t187, ptr %l84
  br label %bb26
bb26:
  %t188 = load %"std/prelude/text:StringBuilder", ptr %l84
  store %"std/prelude/text:StringBuilder" %t188, ptr %l8
  store ptr %l7, ptr %l9, !tbaa !29
  store i64 0, ptr %l10, !tbaa !24
  br label %bb27
bb27:
  store %olang.scope zeroinitializer, ptr %s6
  %t190 = load i64, ptr %l10, !tbaa !24
  store i64 %t190, ptr %l86, !tbaa !24
  %t191 = load ptr, ptr %l9, !tbaa !29
  %t193 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v1, ptr %t191)
  store i64 %t193, ptr %l88
  br label %bb28
bb28:
  %t194 = load i64, ptr %l86, !tbaa !24
  %t195 = load i64, ptr %l88, !tbaa !24
  %t196 = icmp slt i64 %t194, %t195
  %t198 = xor i1 %t196, true
  br i1 %t198, label %bb29, label %bb30
bb29:
  call void @__olang_scope_close(ptr %s6)
  br label %bb35
bb30:
  br label %bb31
bb31:
  %t200 = load ptr, ptr %l9, !tbaa !29
  %t201 = load i64, ptr %l10, !tbaa !24
  %t204 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t200, i64 %t201)
  store { i64, ptr } %t204, ptr %l93
  br label %bb32
bb32:
  %t205 = load { i64, ptr }, ptr %l93, !tbaa !27
  %t208 = extractvalue { i64, ptr } %t205, 1
  %t209 = extractvalue { i64, ptr } %t205, 0
  %t210 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d41, i32 0, i32 1) }, 1
  %t211 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d41, i32 0, i32 1) }, 0
  %t212 = add i64 %t209, %t211
  %t213 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t212)
  call void @olang_textcopy(ptr %t213, ptr %t208, i64 %t209)
  %t214 = getelementptr i8, ptr %t213, i64 %t209
  call void @olang_textcopy(ptr %t214, ptr %t210, i64 %t211)
  %t215 = insertvalue { i64, ptr } undef, i64 %t212, 0
  %t216 = insertvalue { i64, ptr } %t215, ptr %t213, 1
  %t218 = extractvalue { i64, ptr } %t216, 0
  %t219 = extractvalue { i64, ptr } %t216, 1
  %t220 = mul i64 %t218, 1
  %t221 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t220)
  call void @llvm.memcpy.p0.p0.i64(ptr %t221, ptr %t219, i64 %t220, i1 false)
  %t222 = insertvalue { i64, ptr } undef, i64 %t218, 0
  %t223 = insertvalue { i64, ptr } %t222, ptr %t221, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s6, ptr %l8, { i64, ptr } %t223)
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s6)
  br label %bb34
bb34:
  %t226 = load i64, ptr %l10, !tbaa !24
  %t228 = add i64 %t226, 1
  store i64 %t228, ptr %l10, !tbaa !24
  br label %bb27
bb35:
  %t230 = load ptr, ptr %l0, !tbaa !29
  %t232 = getelementptr %"compiler/build:Config", ptr %t230, i32 0, i32 0
  %t233 = load { i64, ptr }, ptr %t232, !tbaa !27
  store { i64, ptr } %t233, ptr %l101, !tbaa !27
  %t235 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %l8)
  store { i64, ptr } %t235, ptr %l103
  br label %bb36
bb36:
  %t236 = load { i64, ptr }, ptr %l103, !tbaa !27
  %t237 = extractvalue { i64, ptr } %t236, 0
  %t238 = extractvalue { i64, ptr } %t236, 1
  %t239 = mul i64 %t237, 1
  %t240 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t239)
  call void @llvm.memcpy.p0.p0.i64(ptr %t240, ptr %t238, i64 %t239, i1 false)
  %t241 = insertvalue { i64, ptr } undef, i64 %t237, 0
  %t242 = insertvalue { i64, ptr } %t241, ptr %t240, 1
  %t244 = call { i64, ptr } @compiler_2fbuild_2eIrHash(ptr %s0, ptr %s0, { i64, ptr } %t242)
  store { i64, ptr } %t244, ptr %l105
  br label %bb37
bb37:
  %t245 = load { i64, ptr }, ptr %l105, !tbaa !27
  %t246 = extractvalue { i64, ptr } %t245, 0
  store i64 %t246, ptr %l106, !tbaa !24
  %t247 = icmp sge i64 0, 0
  br i1 %t247, label %bb38, label %bb39
bb38:
  %t249 = icmp sle i64 0, 16
  br i1 %t249, label %bb40, label %bb41
bb39:
  call void @__olang_check_failed(ptr @olang_loc_848145de22f96d6_67a3d2054bf098fa)
  unreachable
bb40:
  %t251 = load i64, ptr %l106, !tbaa !24
  %t252 = icmp sle i64 16, %t251
  br i1 %t252, label %bb42, label %bb43
bb41:
  call void @__olang_check_failed(ptr @olang_loc_848145de22f96d6_67a3d2054bf098fa)
  unreachable
bb42:
  %t254 = getelementptr { i64, ptr }, ptr %l105, i32 0, i32 1
  %t255 = load ptr, ptr %t254, !tbaa !27
  %t256 = getelementptr i8, ptr %t255, i64 0
  %t257 = sub i64 16, 0
  %t258 = insertvalue { i64, ptr } undef, i64 %t257, 0
  %t259 = insertvalue { i64, ptr } %t258, ptr %t256, 1
  %t260 = load { i64, ptr }, ptr %l101, !tbaa !27
  %t261 = extractvalue { i64, ptr } %t260, 1
  %t262 = extractvalue { i64, ptr } %t260, 0
  %t263 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d42, i32 0, i32 1) }, 1
  %t264 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d42, i32 0, i32 1) }, 0
  %t265 = add i64 %t262, %t264
  %t267 = extractvalue { i64, ptr } %t259, 1
  %t268 = extractvalue { i64, ptr } %t259, 0
  %t269 = add i64 %t265, %t268
  %t270 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t269)
  call void @olang_textcopy(ptr %t270, ptr %t261, i64 %t262)
  %t271 = getelementptr i8, ptr %t270, i64 %t262
  call void @olang_textcopy(ptr %t271, ptr %t263, i64 %t264)
  %t272 = getelementptr i8, ptr %t271, i64 %t264
  call void @olang_textcopy(ptr %t272, ptr %t267, i64 %t268)
  %t273 = insertvalue { i64, ptr } undef, i64 %t269, 0
  %t274 = insertvalue { i64, ptr } %t273, ptr %t270, 1
  %t275 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t275, ptr %lp12
  %t277 = load ptr, ptr %lp12
  store { i64, ptr } %t274, ptr %t277, !tbaa !27
  %t278 = load ptr, ptr %lp12
  %t279 = load { i64, ptr }, ptr %t278, !tbaa !27
  %t281 = call i1 @std_2fos_2eExists(ptr %v2, { i64, ptr } %t279)
  store i1 %t281, ptr %l113
  br label %bb44
bb43:
  call void @__olang_check_failed(ptr @olang_loc_848145de22f96d6_67a3d2054bf098fa)
  unreachable
bb44:
  %t282 = load i1, ptr %l113, !tbaa !21
  br i1 %t282, label %bb45, label %bb46
bb45:
  %t283 = load ptr, ptr %lp12
  %t284 = load { i64, ptr }, ptr %t283, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t286 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t284, 1
  store { i32, { i64, ptr } } %t286, ptr %rv
  br label %ret
bb46:
  br label %bb47
bb47:
  %t287 = load ptr, ptr %lp12
  %t288 = load { i64, ptr }, ptr %t287, !tbaa !27
  %t290 = extractvalue { i64, ptr } %t288, 1
  %t291 = extractvalue { i64, ptr } %t288, 0
  %t292 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d43, i32 0, i32 1) }, 1
  %t293 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d43, i32 0, i32 1) }, 0
  %t294 = add i64 %t291, %t293
  %t295 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t294)
  call void @olang_textcopy(ptr %t295, ptr %t290, i64 %t291)
  %t296 = getelementptr i8, ptr %t295, i64 %t291
  call void @olang_textcopy(ptr %t296, ptr %t292, i64 %t293)
  %t297 = insertvalue { i64, ptr } undef, i64 %t294, 0
  %t298 = insertvalue { i64, ptr } %t297, ptr %t295, 1
  store { i64, ptr } %t298, ptr %l13, !tbaa !27
  %t300 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d44, i32 0, i32 1) }, ptr %l118, !tbaa !27
  %t302 = load { i64, ptr }, ptr %l118, !tbaa !27
  %t303 = call i32 @std_2fos_2eWriteFile(ptr %s0, ptr %s0, { i64, ptr } %t300, { i64, ptr } %t302)
  store i32 %t303, ptr %l119
  %t304 = icmp ne i32 %t303, 0
  br i1 %t304, label %bb49, label %ok.305, !prof !99
ok.305:
  br label %bb48
bb48:
  br label %bb53
bb49:
  %t306 = load i32, ptr %l119, !tbaa !23
  %t307 = ashr i32 %t306, 16
  %t309 = icmp eq i32 %t307, 1
  store i1 %t309, ptr %l121, !tbaa !21
  %t310 = load i32, ptr %l119, !tbaa !23
  %t311 = ashr i32 %t310, 16
  %t313 = icmp eq i32 %t311, 1
  br i1 %t313, label %bb50, label %bb51
bb50:
  call void @__olang_errpay_pop()
  br label %bb51
bb51:
  br label %bb52
bb52:
  call void @__olang_scope_close(ptr %s0)
  %t316 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t316, ptr %rv
  br label %ret
bb53:
  %t317 = load ptr, ptr %lp12
  %t318 = load { i64, ptr }, ptr %t317, !tbaa !27
  store { i64, ptr } %t318, ptr %l125, !tbaa !27
  %t319 = call i32 @getpid()
  store i32 %t319, ptr %l126
  br label %bb54
bb54:
  %t320 = load { i64, ptr }, ptr %l125, !tbaa !27
  %t321 = extractvalue { i64, ptr } %t320, 1
  %t322 = extractvalue { i64, ptr } %t320, 0
  %t323 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d45, i32 0, i32 1) }, 1
  %t324 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d45, i32 0, i32 1) }, 0
  %t325 = add i64 %t322, %t324
  %t326 = load i32, ptr %l126, !tbaa !23
  %t327 = sext i32 %t326 to i64
  %t328 = call i64 @__olang_fmt_i64(ptr null, i64 %t327)
  %t329 = add i64 %t325, %t328
  %t330 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t329)
  call void @olang_textcopy(ptr %t330, ptr %t321, i64 %t322)
  %t331 = getelementptr i8, ptr %t330, i64 %t322
  call void @olang_textcopy(ptr %t331, ptr %t323, i64 %t324)
  %t332 = getelementptr i8, ptr %t331, i64 %t324
  %t333 = call i64 @__olang_fmt_i64(ptr %t332, i64 %t327)
  %t334 = insertvalue { i64, ptr } undef, i64 %t329, 0
  %t335 = insertvalue { i64, ptr } %t334, ptr %t330, 1
  store { i64, ptr } %t335, ptr %l14, !tbaa !27
  %t337 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t337, ptr %l128
  br label %bb55
bb55:
  %t338 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l128
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t338, ptr %l15
  %t339 = load ptr, ptr %l0, !tbaa !29
  %t341 = getelementptr %"compiler/build:Config", ptr %t339, i32 0, i32 1
  %t342 = load { i64, ptr }, ptr %t341, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %v0, ptr %l15, { i64, ptr } %t342)
  br label %bb56
bb56:
  %t345 = load ptr, ptr %l0, !tbaa !29
  %t347 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eModeFlags(ptr %v0, ptr %s0, ptr %t345)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t347, ptr %l133
  br label %bb57
bb57:
  %t348 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l133
  %t349 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t348, ptr %t349
  store ptr %t349, ptr %l16, !tbaa !29
  store i64 0, ptr %l17, !tbaa !24
  br label %bb58
bb58:
  %t351 = load i64, ptr %l17, !tbaa !24
  store i64 %t351, ptr %l135, !tbaa !24
  %t352 = load ptr, ptr %l16, !tbaa !29
  %t354 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %t352)
  store i64 %t354, ptr %l137
  br label %bb59
bb59:
  %t355 = load i64, ptr %l135, !tbaa !24
  %t356 = load i64, ptr %l137, !tbaa !24
  %t357 = icmp slt i64 %t355, %t356
  %t359 = xor i1 %t357, true
  br i1 %t359, label %bb60, label %bb61
bb60:
  br label %bb66
bb61:
  br label %bb62
bb62:
  %t361 = load ptr, ptr %l16, !tbaa !29
  %t362 = load i64, ptr %l17, !tbaa !24
  %t365 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %t361, i64 %t362)
  store { i64, ptr } %t365, ptr %l142
  br label %bb63
bb63:
  %t366 = load { i64, ptr }, ptr %l142, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l15, { i64, ptr } %t366)
  br label %bb64
bb64:
  br label %bb65
bb65:
  %t370 = load i64, ptr %l17, !tbaa !24
  %t372 = add i64 %t370, 1
  store i64 %t372, ptr %l17, !tbaa !24
  br label %bb58
bb66:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l15, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d46, i32 0, i32 1) })
  br label %bb67
bb67:
  %t375 = load { i64, ptr }, ptr %l14, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l15, { i64, ptr } %t375)
  br label %bb68
bb68:
  store ptr %l7, ptr %l19, !tbaa !29
  store i64 0, ptr %l20, !tbaa !24
  br label %bb69
bb69:
  %t379 = load i64, ptr %l20, !tbaa !24
  store i64 %t379, ptr %l151, !tbaa !24
  %t380 = load ptr, ptr %l19, !tbaa !29
  %t382 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v1, ptr %t380)
  store i64 %t382, ptr %l153
  br label %bb70
bb70:
  %t383 = load i64, ptr %l151, !tbaa !24
  %t384 = load i64, ptr %l153, !tbaa !24
  %t385 = icmp slt i64 %t383, %t384
  %t387 = xor i1 %t385, true
  br i1 %t387, label %bb71, label %bb72
bb71:
  br label %bb77
bb72:
  br label %bb73
bb73:
  %t389 = load ptr, ptr %l19, !tbaa !29
  %t390 = load i64, ptr %l20, !tbaa !24
  %t393 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t389, i64 %t390)
  store { i64, ptr } %t393, ptr %l158
  br label %bb74
bb74:
  %t394 = load { i64, ptr }, ptr %l158, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %v1, ptr %l15, { i64, ptr } %t394)
  br label %bb75
bb75:
  br label %bb76
bb76:
  %t398 = load i64, ptr %l20, !tbaa !24
  %t400 = add i64 %t398, 1
  store i64 %t400, ptr %l20, !tbaa !24
  br label %bb69
bb77:
  %t402 = load ptr, ptr %lp2
  %t403 = getelementptr %"compiler/build:Program", ptr %t402, i32 0, i32 3
  store ptr %t403, ptr %l22, !tbaa !29
  store i64 0, ptr %l23, !tbaa !24
  br label %bb78
bb78:
  %t405 = load i64, ptr %l23, !tbaa !24
  store i64 %t405, ptr %l164, !tbaa !24
  %t406 = load ptr, ptr %l22, !tbaa !29
  %t408 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v1, ptr %t406)
  store i64 %t408, ptr %l166
  br label %bb79
bb79:
  %t409 = load i64, ptr %l164, !tbaa !24
  %t410 = load i64, ptr %l166, !tbaa !24
  %t411 = icmp slt i64 %t409, %t410
  %t413 = xor i1 %t411, true
  br i1 %t413, label %bb80, label %bb81
bb80:
  br label %bb86
bb81:
  br label %bb82
bb82:
  %t415 = load ptr, ptr %l22, !tbaa !29
  %t416 = load i64, ptr %l23, !tbaa !24
  %t419 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t415, i64 %t416)
  store { i64, ptr } %t419, ptr %l171
  br label %bb83
bb83:
  %t420 = load { i64, ptr }, ptr %l171, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %v1, ptr %l15, { i64, ptr } %t420)
  br label %bb84
bb84:
  br label %bb85
bb85:
  %t424 = load i64, ptr %l23, !tbaa !24
  %t426 = add i64 %t424, 1
  store i64 %t426, ptr %l23, !tbaa !24
  br label %bb78
bb86:
  %t428 = ptrtoint ptr %s0 to i64
  store i64 %t428, ptr %l176, !tbaa !24
  %t429 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_204_3e_2e_2d1
  br i1 %t429, label %bb87, label %bb88
bb87:
  %t431 = call ptr @__olang_region_make(ptr %s0)
  %t432 = ptrtoint ptr %t431 to i64
  store i64 %t432, ptr %l176, !tbaa !24
  br label %bb88
bb88:
  %t433 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t434 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d47, i32 0, i32 1) }, 1
  %t435 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d47, i32 0, i32 1) }, 0
  %t437 = extractvalue { i64, ptr } %t433, 1
  %t438 = extractvalue { i64, ptr } %t433, 0
  %t439 = add i64 %t435, %t438
  %t440 = load i64, ptr %l176
  %t441 = inttoptr i64 %t440 to ptr
  %t442 = call ptr @__olang_scope_alloc(ptr %t441, i64 %t439)
  call void @olang_textcopy(ptr %t442, ptr %t434, i64 %t435)
  %t443 = getelementptr i8, ptr %t442, i64 %t435
  call void @olang_textcopy(ptr %t443, ptr %t437, i64 %t438)
  %t444 = insertvalue { i64, ptr } undef, i64 %t439, 0
  %t445 = insertvalue { i64, ptr } %t444, ptr %t442, 1
  %t447 = load i64, ptr %l176
  %t448 = inttoptr i64 %t447 to ptr
  %t449 = extractvalue { i64, ptr } %t445, 0
  %t450 = extractvalue { i64, ptr } %t445, 1
  %t451 = mul i64 %t449, 1
  %t452 = call ptr @__olang_scope_alloc(ptr %t448, i64 %t451)
  call void @llvm.memcpy.p0.p0.i64(ptr %t452, ptr %t450, i64 %t451, i1 false)
  %t453 = insertvalue { i64, ptr } undef, i64 %t449, 0
  %t454 = insertvalue { i64, ptr } %t453, ptr %t452, 1
  %t456 = insertvalue [4 x { i64, ptr }] undef, { i64, ptr } %t454, 0
  %t457 = insertvalue [4 x { i64, ptr }] %t456, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d48, i32 0, i32 1) }, 1
  %t458 = insertvalue [4 x { i64, ptr }] %t457, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d49, i32 0, i32 1) }, 2
  %t459 = insertvalue [4 x { i64, ptr }] %t458, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d50, i32 0, i32 1) }, 3
  %t461 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 64, i64 8)
  store [4 x { i64, ptr }] %t459, ptr %t461
  store ptr %t461, ptr %l25
  store i64 0, ptr %l26, !tbaa !24
  %t463 = load ptr, ptr %l25
  store i64 4, ptr %l27, !tbaa !24
  br label %bb89
bb89:
  %t466 = load i64, ptr %l26, !tbaa !24
  %t467 = load i64, ptr %l27, !tbaa !24
  %t470 = icmp slt i64 %t466, %t467
  %t472 = xor i1 %t470, true
  br i1 %t472, label %bb90, label %bb91
bb90:
  br label %bb95
bb91:
  br label %bb92
bb92:
  %t474 = load ptr, ptr %l25
  %t475 = load i64, ptr %l26, !tbaa !24
  %t478 = getelementptr [4 x { i64, ptr }], ptr %t474, i64 0, i64 %t475
  %t479 = load { i64, ptr }, ptr %t478, !tbaa !37
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l15, { i64, ptr } %t479)
  br label %bb93
bb93:
  br label %bb94
bb94:
  %t484 = load i64, ptr %l26, !tbaa !24
  %t486 = add i64 %t484, 1
  store i64 %t486, ptr %l26, !tbaa !24
  br label %bb89
bb95:
  %t488 = load ptr, ptr %lp2
  %t489 = getelementptr %"compiler/build:Program", ptr %t488, i32 0, i32 2
  %t490 = load { i64, ptr }, ptr %t489, !tbaa !27
  %t492 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t490, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d51, i32 0, i32 1) })
  store i1 %t492, ptr %l197
  br label %bb96
bb96:
  %t493 = load i1, ptr %l197, !tbaa !21
  %t494 = xor i1 %t493, true
  br i1 %t494, label %bb97, label %bb98
bb97:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l15, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d52, i32 0, i32 1) })
  br label %bb99
bb98:
  br label %bb100
bb99:
  br label %bb100
bb100:
  %t497 = load ptr, ptr %lp12
  %t498 = load { i64, ptr }, ptr %t497, !tbaa !27
  %t499 = load ptr, ptr %l1, !tbaa !29
  %t503 = call i32 @compiler_2fcells_2elink(ptr %s0, ptr %v2, ptr %v1, ptr %l15, { i64, ptr } %t498, ptr %t499)
  store i32 %t503, ptr %l203
  %t504 = icmp ne i32 %t503, 0
  br i1 %t504, label %bb102, label %ok.505, !prof !99
ok.505:
  br label %bb101
bb101:
  br label %bb103
bb102:
  %t506 = load i32, ptr %l203, !tbaa !23
  %t507 = lshr i32 %t506, 16
  %t508 = and i32 %t506, 65535
  %t509 = icmp eq i32 %t507, 1
  %t510 = select i1 %t509, i32 1, i32 0
  %t511 = icmp eq i32 %t506, 0
  %t512 = shl i32 %t510, 16
  %t513 = or i32 %t512, %t508
  %t514 = select i1 %t511, i32 0, i32 %t513
  call void @__olang_scope_close(ptr %s0)
  %t516 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t514, 0
  store { i32, { i64, ptr } } %t516, ptr %rv
  br label %ret
bb103:
  %t517 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t518 = load ptr, ptr %lp12
  %t519 = load { i64, ptr }, ptr %t518, !tbaa !27
  %t522 = call i32 @std_2fos_2eRename(ptr %s0, ptr %v2, { i64, ptr } %t517, { i64, ptr } %t519)
  store i32 %t522, ptr %l207
  %t523 = icmp ne i32 %t522, 0
  br i1 %t523, label %bb105, label %ok.524, !prof !99
ok.524:
  br label %bb104
bb104:
  br label %bb109
bb105:
  %t525 = load i32, ptr %l207, !tbaa !23
  %t526 = ashr i32 %t525, 16
  %t528 = icmp eq i32 %t526, 1
  store i1 %t528, ptr %l209, !tbaa !21
  %t529 = load i32, ptr %l207, !tbaa !23
  %t530 = ashr i32 %t529, 16
  %t532 = icmp eq i32 %t530, 1
  br i1 %t532, label %bb106, label %bb107
bb106:
  call void @__olang_errpay_pop()
  br label %bb107
bb107:
  br label %bb108
bb108:
  call void @__olang_scope_close(ptr %s0)
  %t535 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t535, ptr %rv
  br label %ret
bb109:
  %t536 = load ptr, ptr %lp12
  %t537 = load { i64, ptr }, ptr %t536, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t539 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t537, 1
  store { i32, { i64, ptr } } %t539, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local %"compiler/cells:Outcome" @compiler_2fcells_3aOutcome_2ector(ptr %v0) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %rv = alloca %"compiler/cells:Outcome"
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d53, i32 0, i32 1) }, ptr %l1, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d54, i32 0, i32 1) }, ptr %l2, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d55, i32 0, i32 1) }, ptr %l3, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d56, i32 0, i32 1) }, ptr %l4, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d57, i32 0, i32 1) }, ptr %l5, !tbaa !27
  %t2 = insertvalue %"compiler/cells:Outcome" undef, i1 false, 0
  %t3 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t4 = insertvalue %"compiler/cells:Outcome" %t2, { i64, ptr } %t3, 1
  %t5 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t6 = insertvalue %"compiler/cells:Outcome" %t4, { i64, ptr } %t5, 2
  %t7 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t8 = insertvalue %"compiler/cells:Outcome" %t6, { i64, ptr } %t7, 3
  %t9 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t10 = insertvalue %"compiler/cells:Outcome" %t8, { i64, ptr } %t9, 4
  %t11 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t12 = insertvalue %"compiler/cells:Outcome" %t10, { i64, ptr } %t11, 5
  %t14 = insertvalue %"compiler/cells:Outcome" %t12, i1 false, 6
  %t16 = insertvalue %"compiler/cells:Outcome" %t14, i1 false, 7
  store %"compiler/cells:Outcome" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/cells:Outcome", ptr %rv
  ret %"compiler/cells:Outcome" %rr
}

define dso_local void @compiler_2fcells_3aPlan_2ector(ptr %out, ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l1 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l3 = alloca i64
  %l5 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l7 = alloca i64
  %l9 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l11 = alloca i64
  %l13 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l15 = alloca %"compiler/cells:Plan"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = ptrtoint ptr %v0 to i64
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fcells_3aPlan_2e0
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v0)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t6 = load i64, ptr %l3
  %t7 = inttoptr i64 %t6 to ptr
  %t8 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aStr_H4eff2894ad89de6e140d6d54faebb689(ptr %t7)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t8, ptr %l5
  br label %bb3
bb3:
  %t9 = load i1, ptr @olang_2esole_2ecompiler_2fcells_3aPlan_2e0
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t11 = load i64, ptr %l3
  %t12 = inttoptr i64 %t11 to ptr
  %t13 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l5, i32 0, i32 2
  %t14 = load { i64, ptr }, ptr %t13
  %t15 = extractvalue { i64, ptr } %t14, 1
  %t16 = call ptr @__olang_region_or(ptr %t15, ptr null)
  %t17 = call ptr @__olang_region_home(ptr %t16)
  %t18 = icmp ne ptr %t17, null
  %t19 = select i1 %t18, ptr %t17, ptr null
  %t20 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l5, i32 0, i32 1
  %t21 = load { i64, ptr }, ptr %t20
  %t22 = extractvalue { i64, ptr } %t21, 1
  %t23 = call ptr @__olang_region_or(ptr %t22, ptr null)
  %t24 = call ptr @__olang_region_home(ptr %t23)
  %t25 = icmp ne ptr %t24, null
  %t26 = select i1 %t25, ptr %t24, ptr %t19
  %t27 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l5, i32 0, i32 0
  %t28 = load { i64, ptr }, ptr %t27
  %t29 = extractvalue { i64, ptr } %t28, 1
  %t30 = call ptr @__olang_region_or(ptr %t29, ptr null)
  %t31 = call ptr @__olang_region_home(ptr %t30)
  %t32 = icmp ne ptr %t31, null
  %t33 = select i1 %t32, ptr %t31, ptr %t26
  %t34 = icmp eq ptr %t33, %t12
  call void @__olang_region_settle(ptr %t12, i1 %t34)
  br label %bb5
bb5:
  %t35 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l5
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t35, ptr %l0
  %t36 = ptrtoint ptr %v0 to i64
  store i64 %t36, ptr %l7, !tbaa !24
  %t37 = load i1, ptr @olang_2esole_2ecompiler_2fcells_3aPlan_2e1
  br i1 %t37, label %bb6, label %bb7
bb6:
  %t39 = call ptr @__olang_region_make(ptr %v0)
  %t40 = ptrtoint ptr %t39 to i64
  store i64 %t40, ptr %l7, !tbaa !24
  br label %bb7
bb7:
  %t41 = load i64, ptr %l7
  %t42 = inttoptr i64 %t41 to ptr
  %t43 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e(ptr %t42)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t43, ptr %l9
  br label %bb8
bb8:
  %t44 = load i1, ptr @olang_2esole_2ecompiler_2fcells_3aPlan_2e1
  br i1 %t44, label %bb9, label %bb10
bb9:
  %t46 = load i64, ptr %l7
  %t47 = inttoptr i64 %t46 to ptr
  %t48 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l9, i32 0, i32 2
  %t49 = load { i64, ptr }, ptr %t48
  %t50 = extractvalue { i64, ptr } %t49, 1
  %t51 = call ptr @__olang_region_or(ptr %t50, ptr null)
  %t52 = call ptr @__olang_region_home(ptr %t51)
  %t53 = icmp ne ptr %t52, null
  %t54 = select i1 %t53, ptr %t52, ptr null
  %t55 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l9, i32 0, i32 1
  %t56 = load { i64, ptr }, ptr %t55
  %t57 = extractvalue { i64, ptr } %t56, 1
  %t58 = call ptr @__olang_region_or(ptr %t57, ptr null)
  %t59 = call ptr @__olang_region_home(ptr %t58)
  %t60 = icmp ne ptr %t59, null
  %t61 = select i1 %t60, ptr %t59, ptr %t54
  %t62 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l9, i32 0, i32 0
  %t63 = load { i64, ptr }, ptr %t62
  %t64 = extractvalue { i64, ptr } %t63, 1
  %t65 = call ptr @__olang_region_or(ptr %t64, ptr null)
  %t66 = call ptr @__olang_region_home(ptr %t65)
  %t67 = icmp ne ptr %t66, null
  %t68 = select i1 %t67, ptr %t66, ptr %t61
  %t69 = icmp eq ptr %t68, %t47
  call void @__olang_region_settle(ptr %t47, i1 %t69)
  br label %bb10
bb10:
  %t70 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l9
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t70, ptr %l1
  %t71 = ptrtoint ptr %v0 to i64
  store i64 %t71, ptr %l11, !tbaa !24
  %t72 = load i1, ptr @olang_2esole_2ecompiler_2fcells_3aPlan_2e2
  br i1 %t72, label %bb11, label %bb12
bb11:
  %t74 = call ptr @__olang_region_make(ptr %v0)
  %t75 = ptrtoint ptr %t74 to i64
  store i64 %t75, ptr %l11, !tbaa !24
  br label %bb12
bb12:
  %t76 = load i64, ptr %l11
  %t77 = inttoptr i64 %t76 to ptr
  %t78 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e(ptr %t77)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t78, ptr %l13
  br label %bb13
bb13:
  %t79 = load i1, ptr @olang_2esole_2ecompiler_2fcells_3aPlan_2e2
  br i1 %t79, label %bb14, label %bb15
bb14:
  %t81 = load i64, ptr %l11
  %t82 = inttoptr i64 %t81 to ptr
  %t83 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l13, i32 0, i32 2
  %t84 = load { i64, ptr }, ptr %t83
  %t85 = extractvalue { i64, ptr } %t84, 1
  %t86 = call ptr @__olang_region_or(ptr %t85, ptr null)
  %t87 = call ptr @__olang_region_home(ptr %t86)
  %t88 = icmp ne ptr %t87, null
  %t89 = select i1 %t88, ptr %t87, ptr null
  %t90 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l13, i32 0, i32 1
  %t91 = load { i64, ptr }, ptr %t90
  %t92 = extractvalue { i64, ptr } %t91, 1
  %t93 = call ptr @__olang_region_or(ptr %t92, ptr null)
  %t94 = call ptr @__olang_region_home(ptr %t93)
  %t95 = icmp ne ptr %t94, null
  %t96 = select i1 %t95, ptr %t94, ptr %t89
  %t97 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l13, i32 0, i32 0
  %t98 = load { i64, ptr }, ptr %t97
  %t99 = extractvalue { i64, ptr } %t98, 1
  %t100 = call ptr @__olang_region_or(ptr %t99, ptr null)
  %t101 = call ptr @__olang_region_home(ptr %t100)
  %t102 = icmp ne ptr %t101, null
  %t103 = select i1 %t102, ptr %t101, ptr %t96
  %t104 = icmp eq ptr %t103, %t82
  call void @__olang_region_settle(ptr %t82, i1 %t104)
  br label %bb15
bb15:
  %t105 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l13
  %t106 = getelementptr %"compiler/cells:Plan", ptr %l15, i32 0, i32 0
  %t107 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t107, ptr %t106
  %t108 = getelementptr %"compiler/cells:Plan", ptr %l15, i32 0, i32 1
  %t109 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t109, ptr %t108
  %t110 = getelementptr %"compiler/cells:Plan", ptr %l15, i32 0, i32 2
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t105, ptr %t110
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l15, i64 216, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/cells:Worker" @compiler_2fcells_3aWorker_2ector(ptr %v0, i1 %a0) #0 {
entry:
  %l1 = alloca i1
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i1
  %l11 = alloca i64
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/cells:Worker"
  br label %start
start:
  br label %bb0
bb0:
  store i1 %a0, ptr %l1, !tbaa !21
  store i32 -1, ptr %l2, !tbaa !23
  store i32 -1, ptr %l3, !tbaa !23
  store i32 -1, ptr %l4, !tbaa !23
  store i32 -1, ptr %l5, !tbaa !23
  store i32 -1, ptr %l6, !tbaa !23
  store i32 -1, ptr %l7, !tbaa !23
  store i1 false, ptr %l8, !tbaa !21
  %t3 = ptrtoint ptr %v0 to i64
  store i64 %t3, ptr %l11, !tbaa !24
  %t4 = load i1, ptr @olang_2esole_2ecompiler_2fcells_3aWorker_2e8
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = call ptr @__olang_region_make(ptr %v0)
  %t7 = ptrtoint ptr %t6 to i64
  store i64 %t7, ptr %l11, !tbaa !24
  br label %bb2
bb2:
  %t8 = load i64, ptr %l11
  %t9 = inttoptr i64 %t8 to ptr
  %t10 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU8_3e_2ector(ptr %t9, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %l13
  br label %bb3
bb3:
  %t11 = load i1, ptr @olang_2esole_2ecompiler_2fcells_3aWorker_2e8
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
  %t24 = load i1, ptr %l1, !tbaa !21
  %t25 = insertvalue %"compiler/cells:Worker" undef, i1 %t24, 0
  %t26 = load i32, ptr %l2, !tbaa !23
  %t27 = insertvalue %"compiler/cells:Worker" %t25, i32 %t26, 1
  %t28 = load i32, ptr %l3, !tbaa !23
  %t29 = insertvalue %"compiler/cells:Worker" %t27, i32 %t28, 2
  %t30 = load i32, ptr %l4, !tbaa !23
  %t31 = insertvalue %"compiler/cells:Worker" %t29, i32 %t30, 3
  %t32 = load i32, ptr %l5, !tbaa !23
  %t33 = insertvalue %"compiler/cells:Worker" %t31, i32 %t32, 4
  %t34 = load i32, ptr %l6, !tbaa !23
  %t35 = insertvalue %"compiler/cells:Worker" %t33, i32 %t34, 5
  %t36 = load i32, ptr %l7, !tbaa !23
  %t37 = insertvalue %"compiler/cells:Worker" %t35, i32 %t36, 6
  %t38 = load i1, ptr %l8, !tbaa !21
  %t39 = insertvalue %"compiler/cells:Worker" %t37, i1 %t38, 7
  %t41 = insertvalue %"compiler/cells:Worker" %t39, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t23, 8
  store %"compiler/cells:Worker" %t41, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/cells:Worker", ptr %rv
  ret %"compiler/cells:Worker" %rr
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
define linkonce_odr void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbuild_3aConfig(ptr %out, ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/build:Config"
  %l3 = alloca %"compiler/cond:Consts"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %t3 = alloca %"compiler/cond:Consts", align 8
  br label %start
start:
  br label %bb0
bb0:
  call void @llvm.memmove.p0.p0.i64(ptr %l1, ptr %a0, i64 640, i1 false)
  %t2 = getelementptr %"compiler/build:Config", ptr %l1, i32 0, i32 3
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fcond_3aConsts(ptr %t3, ptr %v0, ptr %t2)
  call void @llvm.memmove.p0.p0.i64(ptr %l3, ptr %t3, i64 224, i1 false)
  br label %bb1
bb1:
  %t5 = getelementptr %"compiler/build:Config", ptr %l1, i32 0, i32 3
  call void @llvm.memmove.p0.p0.i64(ptr %t5, ptr %l3, i64 224, i1 false)
  %t6 = getelementptr %"compiler/build:Config", ptr %l1, i32 0, i32 24
  %t8 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %t6)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %l5
  br label %bb2
bb2:
  %t9 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t10 = getelementptr %"compiler/build:Config", ptr %l1, i32 0, i32 24
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %t10
  %t11 = getelementptr %"compiler/build:Config", ptr %l1, i32 0, i32 26
  %t13 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t11)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t13, ptr %l7
  br label %bb3
bb3:
  %t14 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  %t15 = getelementptr %"compiler/build:Config", ptr %l1, i32 0, i32 26
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %t15
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l1, i64 640, i1 false)
  br label %ret
ret:
  ret void
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
@olang_2esole_2ecompiler_2fbuild_3aUnit_2e2 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
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
declare void @__olang_region_release(ptr) noinline
@.d0 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fbuild_3aUnit_2e3 = weak hidden constant i1 false
@.d1 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fbuild_3aProgram_2e1 = weak hidden constant i1 false
declare void @__olang_errpay_pop()
@.d2 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"cell compile" }>, align 8
@.d3 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c".map" }>, align 8
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
@.d4 = private constant <{ i64, [74 x i8] }> <{ i64 0, [74 x i8] c"{\0A  global: olang_cell_init; olang_cell_run; *.cell[0-9]*;\0A  local: *;\0A};\0A" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_205_3e_2e_2d1 = weak hidden constant i1 false
@.d5 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"-Wl,--version-script=" }>, align 8
@.d6 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"-shared" }>, align 8
@.d7 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"-Wl,-Bsymbolic" }>, align 8
@.d8 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-o" }>, align 8
@.d9 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"-lm" }>, align 8
@.d10 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"-lpthread" }>, align 8
@.d11 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"-ldl" }>, align 8
@__olang_prog_scope = external thread_local(initialexec) global ptr
@.d12 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d13 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"-lffi" }>, align 8
@.d14 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"cell link" }>, align 8
@.d15 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"cells" }>, align 8
@olang_2esole_2ecompiler_2fbuild_3aConfig_2e1 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftarget_3aTarget_2e0 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftarget_3aTarget_2e1 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftarget_3aTarget_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftarget_3aTarget_2e3 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftarget_3aTarget_2e4 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftarget_3aTarget_2e5 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftarget_3aTarget_2e6 = weak hidden constant i1 false
define linkonce_odr void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fcond_3aConsts(ptr %out, ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/cond:Consts"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  call void @llvm.memmove.p0.p0.i64(ptr %l1, ptr %a0, i64 224, i1 false)
  %t2 = getelementptr %"compiler/cond:Consts", ptr %l1, i32 0, i32 0
  %t4 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %t2)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l3
  br label %bb1
bb1:
  %t5 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t6 = getelementptr %"compiler/cond:Consts", ptr %l1, i32 0, i32 0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %t6
  %t7 = getelementptr %"compiler/cond:Consts", ptr %l1, i32 0, i32 1
  %t9 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcond_3aValue_3e(ptr %v0, ptr %t7)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %l5
  br label %bb2
bb2:
  %t10 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t11 = getelementptr %"compiler/cond:Consts", ptr %l1, i32 0, i32 1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %t11
  %t12 = getelementptr %"compiler/cond:Consts", ptr %l1, i32 0, i32 2
  %t14 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %v0, ptr %t12)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l7
  br label %bb3
bb3:
  %t15 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  %t16 = getelementptr %"compiler/cond:Consts", ptr %l1, i32 0, i32 2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %t16
  %t17 = getelementptr %"compiler/cond:Consts", ptr %l1, i32 0, i32 3
  %t19 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %v0, ptr %t17)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t19, ptr %l9
  br label %bb4
bb4:
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  %t21 = getelementptr %"compiler/cond:Consts", ptr %l1, i32 0, i32 3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %t21
  %t22 = getelementptr %"compiler/cond:Consts", ptr %l1, i32 0, i32 4
  %t24 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %v0, ptr %t22)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t24, ptr %l11
  br label %bb5
bb5:
  %t25 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  %t26 = getelementptr %"compiler/cond:Consts", ptr %l1, i32 0, i32 4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t25, ptr %t26
  %t27 = getelementptr %"compiler/cond:Consts", ptr %l1, i32 0, i32 5
  %t29 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %t27)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t29, ptr %l13
  br label %bb6
bb6:
  %t30 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  %t31 = getelementptr %"compiler/cond:Consts", ptr %l1, i32 0, i32 5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t30, ptr %t31
  %t32 = getelementptr %"compiler/cond:Consts", ptr %l1, i32 0, i32 6
  %t34 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %t32)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t34, ptr %l15
  br label %bb7
bb7:
  %t35 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  %t36 = getelementptr %"compiler/cond:Consts", ptr %l1, i32 0, i32 6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t35, ptr %t36
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l1, i64 224, i1 false)
  br label %ret
ret:
  ret void
}

@olang_2esole_2ecompiler_2fcond_3aConsts_2e0 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
declare ptr @__olang_region_home(ptr)
declare void @__olang_region_drop(ptr) noinline
@olang_2esole_2ecompiler_2fcond_3aConsts_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcond_3aConsts_2e3 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcond_3aConsts_2e4 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcond_3aConsts_2e5 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcond_3aConsts_2e6 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbuild_3aConfig_2e0 = weak hidden constant i1 false
@.d16 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"end\0A" }>, align 8
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
declare i64 @read(i32, ptr, i64)
@.d17 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"cell " }>, align 8
@.d18 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
declare i64 @signal(i32, i64)
declare i32 @kill(i32, i32)
declare i32 @waitpid(i32, ptr, i32)
@.d19 = private constant <{ i64, [28 x i8] }> <{ i64 0, [28 x i8] c"its worker cannot be built: " }>, align 8
@.d20 = private constant <{ i64, [28 x i8] }> <{ i64 0, [28 x i8] c"its worker cannot be started" }>, align 8
declare i32 @close(i32)
@.d21 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"olang" }>, align 8
@.d22 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d23 = private constant <{ i64, [34 x i8] }> <{ i64 0, [34 x i8] c"  call void @__olang_thread_init()" }>, align 8
@.d24 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"  call void @__olang_san_init()" }>, align 8
@.d25 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"  call void @" }>, align 8
@.d26 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"()" }>, align 8
@olang_2esole_2ecompiler_2fcells_3aOutcome_2e1 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcells_3aOutcome_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcells_3aOutcome_2e3 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcells_3aOutcome_2e4 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcells_3aOutcome_2e5 = weak hidden constant i1 false
@.d27 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d28 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d29 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"@" }>, align 8
declare ptr @__olang_scope_of(ptr, ptr) noinline
@.d30 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"@llvm.global_ctors = " }>, align 8
@.d31 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c"define internal void @__olang_lib_init()" }>, align 8
@.d32 = private constant <{ i64, [36 x i8] }> <{ i64 0, [36 x i8] c"define void @olang_cell_init() #0 {\0A" }>, align 8
@.d33 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"}" }>, align 8
@.d34 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"@" }>, align 8
declare void @__olang_bang_failed_plain(ptr) cold noreturn
@.d35 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"@" }>, align 8
@.d36 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c" = external global i8\0A" }>, align 8
@.d37 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"/olang-cellworker.olang" }>, align 8
@.d38 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"target triple = \22" }>, align 8
@.d39 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"\22\0A" }>, align 8
@.d40 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"olang_cellhelp" }>, align 8
@.d41 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d42 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"/olang-cellworker." }>, align 8
@.d43 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".list" }>, align 8
@.d44 = private constant <{ i64, [41 x i8] }> <{ i64 0, [41 x i8] c"{ __olang_*; __muloti4; olang_cell_*; };\0A" }>, align 8
declare i32 @getpid()
@.d45 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d46 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-o" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_204_3e_2e_2d1 = weak hidden constant i1 false
@.d47 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"-Wl,--dynamic-list=" }>, align 8
@.d48 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"-lm" }>, align 8
@.d49 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"-lpthread" }>, align 8
@.d50 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"-ldl" }>, align 8
@.d51 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d52 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"-lffi" }>, align 8
@.d53 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d54 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d55 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d56 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d57 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fcells_3aPlan_2e0 = weak hidden constant i1 false
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

declare void @__olang_region_settle(ptr, i1)
@olang_2esole_2ecompiler_2fcells_3aPlan_2e1 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2fcells_3aPlan_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcells_3aWorker_2e8 = weak hidden constant i1 false
declare noalias ptr @__olang_scope_alloc_slow(ptr, i64, i64) noinline
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
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcond_3aValue_3e(ptr %v0, ptr %a0) #0 {
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
  %t8 = mul i64 %t7, 48
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 48
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

declare void @compiler_2fbuild_3aProgram_2ector(ptr %out, ptr %v0)
@olang_loc_982e698976ed59f7_448003811d791d9b = external constant [0 x i8]
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrors(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aUnit_3e_2eLen_3ccompiler_2fbuild_3aUnit_3e(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aUnit_3e_2eRefMut_3ccompiler_2fbuild_3aUnit_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @std_2fos_2eMkDirAll(ptr %v0, { i64, ptr } %a0)
declare { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eObjects(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
declare void @compiler_2fbuild_2ePhase(ptr %v0, { i64, ptr } %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eModeFlags(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @std_2fos_2eWriteFile(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fbuild_2eCacheDir(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fbuild_3aConfig_2ector(ptr %out, ptr %v0)
declare i32 @std_2fio_2eWrite(ptr %v0, i32 %a0, { i64, ptr } %a1)
declare void @compiler_2fsession_2eCloseFd(i32 %a0)
declare { i64, ptr } @compiler_2fsession_2eReadable(ptr %v0, ptr %v1, { i64, ptr } %a0, i32 %a1)
declare i32 @compiler_2fsession_2eReap(i32 %a0)
@olang_loc_bd7f84bf0a6a1790_6aecdefa88c1aedc = external constant [0 x i8]
declare void @compiler_2fdiag_3aDiagnostics_2ector(ptr %out, ptr %v0, i1 %a0)
declare { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eRender(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fsession_2eIgnoreBrokenPipes()
declare { i32, i32 } @compiler_2fsession_2ePipe()
declare i32 @compiler_2fsession_2eFork()
declare void @compiler_2fsession_2eDup2(i32 %a0, i32 %a1)
declare i32 @std_2fos_2eExecInPlace(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @compiler_2fsession_2eExit(i32 %a0)
@olang_loc_9bfba30e0b79067c_c7b40212ef9fcad0 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eClear_3cU8_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eLen_3cU8_3e(ptr %v0, ptr %a0)
declare i8 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eAt_3cU8_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eSetAt_3cU8_3e(ptr %v0, ptr %a0, i64 %a1, i8 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eTruncate_3cU8_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fspin_2eEnd()
@olang_loc_d5164bbf2a35422c_5d9a5374fc012700 = external constant [0 x i8]
@olang_loc_c055f97e3313c422_daca2fce6a780a3e = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2ePushAll_3cU8_3e(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eView_3cU8_3e(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_dcdbbf63e25e519f_c5c2eacce8fd1bbb = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_616551f0a3546013_1249d7bcaf39212f = external constant [0 x i8]
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6b5ccacad8db807339a3579aa8c82ff8(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %v0, i64 %a0)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v0, { i64, ptr } %a0, i64 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v0, ptr %v1, ptr %a0)
declare { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, i1 %a2, { i64, ptr } %a3)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLinkFailed(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eFatal(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare i32 @std_2fio_2ePutErr_3cstd_2fprelude_2ftext_3aString_3e({ i64, ptr } %a0)
declare i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H17e0a6412004f84451bdf7ff6c816e10(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha4444909f5ef14f7626d25b8f59e6ba2(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_20926c2b81d0e00c_7d8ac19a57247f8 = external constant [0 x i8]
@olang_loc_948f6b52a35541f0_f4572f553ac6bc74 = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_1fa7a91fdba5f63e_9e2724382c24a02 = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
@olang_loc_f955eaf1a3bf6405_1ec27af45d1f4ca9 = external constant [0 x i8]
declare %"compiler/build:Unit" @compiler_2fbuild_3aUnit_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, i32 %a1, { i64, ptr } %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aUnit_3e_2ePush_3ccompiler_2fbuild_3aUnit_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/build:Unit" %a1)
declare { i64, ptr } @compiler_2fbuild_2eIrHash(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_848145de22f96d6_67a3d2054bf098fa = external constant [0 x i8]
declare i1 @std_2fos_2eExists(ptr %v0, { i64, ptr } %a0)
declare i32 @std_2fos_2eRename(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU8_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e_2ector(ptr %v0)

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
