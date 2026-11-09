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
%"std/io:Writer" = type { i32, { i64, ptr }, i64, { i32, { i64, [1 x i64] } } }
%"std/os:Output" = type { i32, { i64, ptr }, { i64, ptr } }
%"std/os:FileInfo" = type { i32, i64, i64 }
%"std/prelude/text:LineIter" = type { { i64, ptr }, i64 }
@G_2ecompiler_2ffix_2eBatch = constant <{ [8 x i8] }> <{ [8 x i8] c"\C8\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ffix_2eDrivenArg = constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ffix_2eDrivenOpt = constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ffix_2eStdTool = constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ffix_2eTextTool = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ffix_2eToolKinds = constant <{ [288 x i8] }> <{ [288 x i8] c"\01\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>, align 64
@G_2ecompiler_2ffix_2eToolNames = constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ffix_2eToolNames.k1, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ffix_2eToolNames.k2, [8 x i8] c"\0F\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ffix_2eToolNames.k3, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ffix_2eToolNames.k4, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ffix_2eToolNames.k5, [8 x i8] c"\10\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ffix_2eToolNames.k6, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ffix_2eToolNames.k7, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ffix_2eToolNames.k8, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ffix_2eToolNames.k9, [8 x i8] c"\0F\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ffix_2eToolNames.k10, [8 x i8] c"\10\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ffix_2eToolNames.k11, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ffix_2eToolNames.k12, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ffix_2eToolNames.k13, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ffix_2eToolNames.k14, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ffix_2eToolNames.k15, [8 x i8] c"\0F\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ffix_2eToolNames.k16, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ffix_2eToolNames.k17, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ffix_2eToolNames.k18, [8 x i8] c"\0A\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ffix_2eToolNames.k19, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ffix_2eToolNames.k20, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ffix_2eToolNames.k21, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ffix_2eToolNames.k22, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ffix_2eToolNames.k23, [8 x i8] c"\10\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ffix_2eToolNames.k24, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ffix_2eToolNames.k25, [8 x i8] c"\10\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ffix_2eToolNames.k26, [8 x i8] c"\10\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ffix_2eToolNames.k27, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ffix_2eToolNames.k28, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ffix_2eToolNames.k29, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ffix_2eToolNames.k30, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ffix_2eToolNames.k31, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ffix_2eToolNames.k32, [8 x i8] c"\0F\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ffix_2eToolNames.k33, [8 x i8] c"\0F\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ffix_2eToolNames.k34, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ffix_2eToolNames.k35, [8 x i8] c"\0F\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ffix_2eToolNames.k36 }>, align 64
@G_2ecompiler_2ffix_2eToolNames.k1 = internal constant <{ [13 x i8] }> <{ [13 x i8] c"\62\61\72\65\5F\74\79\70\65\76\61\72\73" }>, align 8
@G_2ecompiler_2ffix_2eToolNames.k2 = internal constant <{ [8 x i8] }> <{ [8 x i8] c"\70\65\72\6D\5F\6D\75\74" }>, align 8
@G_2ecompiler_2ffix_2eToolNames.k3 = internal constant <{ [15 x i8] }> <{ [15 x i8] c"\69\6E\74\5F\6C\69\74\65\72\61\6C\5F\69\36\34" }>, align 8
@G_2ecompiler_2ffix_2eToolNames.k4 = internal constant <{ [14 x i8] }> <{ [14 x i8] c"\65\72\72\6F\72\73\5F\6D\69\67\72\61\74\65" }>, align 8
@G_2ecompiler_2ffix_2eToolNames.k5 = internal constant <{ [9 x i8] }> <{ [9 x i8] c"\63\6C\69\5F\77\6F\72\64\73" }>, align 8
@G_2ecompiler_2ffix_2eToolNames.k6 = internal constant <{ [16 x i8] }> <{ [16 x i8] c"\64\6F\6E\65\66\61\69\6C\5F\6D\69\67\72\61\74\65" }>, align 8
@G_2ecompiler_2ffix_2eToolNames.k7 = internal constant <{ [14 x i8] }> <{ [14 x i8] c"\73\79\6E\74\61\78\5F\6D\69\67\72\61\74\65" }>, align 8
@G_2ecompiler_2ffix_2eToolNames.k8 = internal constant <{ [12 x i8] }> <{ [12 x i8] c"\6D\61\74\68\5F\6D\65\74\68\6F\64\73" }>, align 8
@G_2ecompiler_2ffix_2eToolNames.k9 = internal constant <{ [14 x i8] }> <{ [14 x i8] c"\61\72\72\61\79\73\5F\6D\69\67\72\61\74\65" }>, align 8
@G_2ecompiler_2ffix_2eToolNames.k10 = internal constant <{ [15 x i8] }> <{ [15 x i8] c"\72\65\73\75\6C\74\73\5F\6D\69\67\72\61\74\65" }>, align 8
@G_2ecompiler_2ffix_2eToolNames.k11 = internal constant <{ [16 x i8] }> <{ [16 x i8] c"\65\71\75\61\6C\69\74\79\5F\6D\69\67\72\61\74\65" }>, align 8
@G_2ecompiler_2ffix_2eToolNames.k12 = internal constant <{ [13 x i8] }> <{ [13 x i8] c"\68\65\6C\70\65\72\5F\72\65\6E\61\6D\65" }>, align 8
@G_2ecompiler_2ffix_2eToolNames.k13 = internal constant <{ [12 x i8] }> <{ [12 x i8] c"\6E\75\6C\6C\5F\6D\69\67\72\61\74\65" }>, align 8
@G_2ecompiler_2ffix_2eToolNames.k14 = internal constant <{ [17 x i8] }> <{ [17 x i8] c"\63\68\65\63\6B\65\72\72\6F\72\5F\72\65\6E\61\6D\65" }>, align 8
@G_2ecompiler_2ffix_2eToolNames.k15 = internal constant <{ [14 x i8] }> <{ [14 x i8] c"\73\74\75\74\74\65\72\5F\72\65\6E\61\6D\65" }>, align 8
@G_2ecompiler_2ffix_2eToolNames.k16 = internal constant <{ [15 x i8] }> <{ [15 x i8] c"\63\68\65\63\6B\65\64\5F\6D\69\67\72\61\74\65" }>, align 8
@G_2ecompiler_2ffix_2eToolNames.k17 = internal constant <{ [17 x i8] }> <{ [17 x i8] c"\63\6F\6E\74\72\61\63\74\73\5F\6D\69\67\72\61\74\65" }>, align 8
@G_2ecompiler_2ffix_2eToolNames.k18 = internal constant <{ [11 x i8] }> <{ [11 x i8] c"\74\72\79\5F\6D\69\67\72\61\74\65" }>, align 8
@G_2ecompiler_2ffix_2eToolNames.k19 = internal constant <{ [10 x i8] }> <{ [10 x i8] c"\61\73\5F\6D\69\67\72\61\74\65" }>, align 8
@G_2ecompiler_2ffix_2eToolNames.k20 = internal constant <{ [17 x i8] }> <{ [17 x i8] c"\65\72\72\6F\72\74\79\70\65\5F\6D\69\67\72\61\74\65" }>, align 8
@G_2ecompiler_2ffix_2eToolNames.k21 = internal constant <{ [8 x i8] }> <{ [8 x i8] c"\6C\69\73\74\5F\76\65\63" }>, align 8
@G_2ecompiler_2ffix_2eToolNames.k22 = internal constant <{ [12 x i8] }> <{ [12 x i8] c"\6C\69\6E\6B\5F\6D\69\67\72\61\74\65" }>, align 8
@G_2ecompiler_2ffix_2eToolNames.k23 = internal constant <{ [13 x i8] }> <{ [13 x i8] c"\6D\61\74\63\68\5F\6D\69\67\72\61\74\65" }>, align 8
@G_2ecompiler_2ffix_2eToolNames.k24 = internal constant <{ [16 x i8] }> <{ [16 x i8] c"\71\75\65\73\74\69\6F\6E\5F\6D\69\67\72\61\74\65" }>, align 8
@G_2ecompiler_2ffix_2eToolNames.k25 = internal constant <{ [14 x i8] }> <{ [14 x i8] c"\75\6E\75\73\65\64\5F\6D\69\67\72\61\74\65" }>, align 8
@G_2ecompiler_2ffix_2eToolNames.k26 = internal constant <{ [16 x i8] }> <{ [16 x i8] c"\65\72\72\6F\72\63\61\73\65\5F\72\65\6E\61\6D\65" }>, align 8
@G_2ecompiler_2ffix_2eToolNames.k27 = internal constant <{ [16 x i8] }> <{ [16 x i8] c"\76\61\72\69\61\64\69\63\5F\6D\69\67\72\61\74\65" }>, align 8
@G_2ecompiler_2ffix_2eToolNames.k28 = internal constant <{ [14 x i8] }> <{ [14 x i8] c"\73\63\6F\70\65\73\5F\6D\69\67\72\61\74\65" }>, align 8
@G_2ecompiler_2ffix_2eToolNames.k29 = internal constant <{ [13 x i8] }> <{ [13 x i8] c"\66\6E\72\65\66\5F\6D\69\67\72\61\74\65" }>, align 8
@G_2ecompiler_2ffix_2eToolNames.k30 = internal constant <{ [13 x i8] }> <{ [13 x i8] c"\63\6C\6F\6E\65\5F\6D\69\67\72\61\74\65" }>, align 8
@G_2ecompiler_2ffix_2eToolNames.k31 = internal constant <{ [17 x i8] }> <{ [17 x i8] c"\74\65\78\74\62\75\69\6C\64\5F\6D\69\67\72\61\74\65" }>, align 8
@G_2ecompiler_2ffix_2eToolNames.k32 = internal constant <{ [14 x i8] }> <{ [14 x i8] c"\75\6E\69\71\75\65\5F\6D\69\67\72\61\74\65" }>, align 8
@G_2ecompiler_2ffix_2eToolNames.k33 = internal constant <{ [15 x i8] }> <{ [15 x i8] c"\62\75\69\6C\64\65\72\5F\6D\69\67\72\61\74\65" }>, align 8
@G_2ecompiler_2ffix_2eToolNames.k34 = internal constant <{ [15 x i8] }> <{ [15 x i8] c"\6C\69\74\65\72\61\6C\5F\6D\69\67\72\61\74\65" }>, align 8
@G_2ecompiler_2ffix_2eToolNames.k35 = internal constant <{ [14 x i8] }> <{ [14 x i8] c"\6B\65\79\77\6F\72\64\5F\72\65\6E\61\6D\65" }>, align 8
@G_2ecompiler_2ffix_2eToolNames.k36 = internal constant <{ [15 x i8] }> <{ [15 x i8] c"\64\65\73\74\72\6F\79\5F\6D\69\67\72\61\74\65" }>, align 8
define dso_local { i64, ptr } @compiler_2ffix_2eBinDir(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca [2 x { i64, ptr }]
  %l6 = alloca [2 x { i64, ptr }]
  %l7 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca i32
  %l16 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l19 = alloca i32
  %l25 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l26 = alloca ptr
  %l27 = alloca i64
  %l32 = alloca ptr
  %l33 = alloca i64
  %l38 = alloca i64
  %l40 = alloca i64
  %l42 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l50 = alloca { i64, ptr }
  %l51 = alloca i64
  %l59 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call { i32, { i64, ptr } } @std_2fos_2eRealPath(ptr %v0, ptr %s0, { i64, ptr } %t1)
  %t4 = extractvalue { i32, { i64, ptr } } %t3, 1
  %t5 = extractvalue { i32, { i64, ptr } } %t3, 0
  store i32 %t5, ptr %l10
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store { i64, ptr } %t4, ptr %l9
  br label %bb1
bb1:
  %t8 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t8, ptr %l7, !tbaa !27
  br label %bb6
bb2:
  %t9 = load i32, ptr %l10, !tbaa !23
  %t10 = ashr i32 %t9, 16
  %t12 = icmp eq i32 %t10, 1
  br i1 %t12, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  %t14 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t14, 1
  %t17 = extractvalue { i64, ptr } %t14, 0
  %t18 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t17)
  call void @olang_textcopy(ptr %t18, ptr %t16, i64 %t17)
  %t19 = insertvalue { i64, ptr } undef, i64 %t17, 0
  %t20 = insertvalue { i64, ptr } %t19, ptr %t18, 1
  %t22 = extractvalue { i64, ptr } %t20, 0
  %t23 = extractvalue { i64, ptr } %t20, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  store { i64, ptr } %t27, ptr %l7, !tbaa !27
  br label %bb6
bb6:
  %t29 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t29, ptr %l2, !tbaa !27
  %t30 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t32 = call { i32, { i64, ptr } } @std_2fos_2eRealPath(ptr %v1, ptr %s0, { i64, ptr } %t30)
  %t33 = extractvalue { i32, { i64, ptr } } %t32, 1
  %t34 = extractvalue { i32, { i64, ptr } } %t32, 0
  store i32 %t34, ptr %l19
  %t35 = icmp ne i32 %t34, 0
  br i1 %t35, label %bb8, label %ok.36, !prof !99
ok.36:
  store { i64, ptr } %t33, ptr %l18
  br label %bb7
bb7:
  %t37 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t37, ptr %l16, !tbaa !27
  br label %bb12
bb8:
  %t38 = load i32, ptr %l19, !tbaa !23
  %t39 = ashr i32 %t38, 16
  %t41 = icmp eq i32 %t39, 1
  br i1 %t41, label %bb9, label %bb10
bb9:
  call void @__olang_errpay_pop()
  br label %bb10
bb10:
  br label %bb11
bb11:
  %t43 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t43, 1
  %t46 = extractvalue { i64, ptr } %t43, 0
  %t47 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t46)
  call void @olang_textcopy(ptr %t47, ptr %t45, i64 %t46)
  %t48 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t49 = insertvalue { i64, ptr } %t48, ptr %t47, 1
  %t51 = extractvalue { i64, ptr } %t49, 0
  %t52 = extractvalue { i64, ptr } %t49, 1
  %t53 = mul i64 %t51, 1
  %t54 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t53)
  call void @llvm.memcpy.p0.p0.i64(ptr %t54, ptr %t52, i64 %t53, i1 false)
  %t55 = insertvalue { i64, ptr } undef, i64 %t51, 0
  %t56 = insertvalue { i64, ptr } %t55, ptr %t54, 1
  store { i64, ptr } %t56, ptr %l16, !tbaa !27
  br label %bb12
bb12:
  %t58 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t58, ptr %l3, !tbaa !27
  %t59 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t59, ptr %l25
  br label %bb13
bb13:
  %t60 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l25
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t60, ptr %l4
  store ptr %l4, ptr %l26, !tbaa !29
  %t61 = ptrtoint ptr %s0 to i64
  store i64 %t61, ptr %l27, !tbaa !24
  %t62 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t62, label %bb14, label %bb15
bb14:
  %t64 = call ptr @__olang_region_make(ptr %s0)
  %t65 = ptrtoint ptr %t64 to i64
  store i64 %t65, ptr %l27, !tbaa !24
  br label %bb15
bb15:
  %t66 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t68 = extractvalue { i64, ptr } %t66, 1
  %t69 = extractvalue { i64, ptr } %t66, 0
  %t70 = load i64, ptr %l27
  %t71 = inttoptr i64 %t70 to ptr
  %t72 = call ptr @__olang_scope_alloc(ptr %t71, i64 %t69)
  call void @olang_textcopy(ptr %t72, ptr %t68, i64 %t69)
  %t73 = insertvalue { i64, ptr } undef, i64 %t69, 0
  %t74 = insertvalue { i64, ptr } %t73, ptr %t72, 1
  %t76 = load i64, ptr %l27
  %t77 = inttoptr i64 %t76 to ptr
  %t78 = extractvalue { i64, ptr } %t74, 0
  %t79 = extractvalue { i64, ptr } %t74, 1
  %t80 = mul i64 %t78, 1
  %t81 = call ptr @__olang_scope_alloc(ptr %t77, i64 %t80)
  call void @llvm.memcpy.p0.p0.i64(ptr %t81, ptr %t79, i64 %t80, i1 false)
  %t82 = insertvalue { i64, ptr } undef, i64 %t78, 0
  %t83 = insertvalue { i64, ptr } %t82, ptr %t81, 1
  %t84 = load ptr, ptr %l26, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t84, { i64, ptr } %t83)
  br label %bb16
bb16:
  store ptr %l4, ptr %l32, !tbaa !29
  %t86 = ptrtoint ptr %s0 to i64
  store i64 %t86, ptr %l33, !tbaa !24
  %t87 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t87, label %bb17, label %bb18
bb17:
  %t89 = call ptr @__olang_region_make(ptr %s0)
  %t90 = ptrtoint ptr %t89 to i64
  store i64 %t90, ptr %l33, !tbaa !24
  br label %bb18
bb18:
  %t91 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t93 = extractvalue { i64, ptr } %t91, 1
  %t94 = extractvalue { i64, ptr } %t91, 0
  %t95 = load i64, ptr %l33
  %t96 = inttoptr i64 %t95 to ptr
  %t97 = call ptr @__olang_scope_alloc(ptr %t96, i64 %t94)
  call void @olang_textcopy(ptr %t97, ptr %t93, i64 %t94)
  %t98 = insertvalue { i64, ptr } undef, i64 %t94, 0
  %t99 = insertvalue { i64, ptr } %t98, ptr %t97, 1
  %t101 = load i64, ptr %l33
  %t102 = inttoptr i64 %t101 to ptr
  %t103 = extractvalue { i64, ptr } %t99, 0
  %t104 = extractvalue { i64, ptr } %t99, 1
  %t105 = mul i64 %t103, 1
  %t106 = call ptr @__olang_scope_alloc(ptr %t102, i64 %t105)
  call void @llvm.memcpy.p0.p0.i64(ptr %t106, ptr %t104, i64 %t105, i1 false)
  %t107 = insertvalue { i64, ptr } undef, i64 %t103, 0
  %t108 = insertvalue { i64, ptr } %t107, ptr %t106, 1
  %t109 = load ptr, ptr %l32, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t109, { i64, ptr } %t108)
  br label %bb19
bb19:
  %t111 = ptrtoint ptr %s0 to i64
  store i64 %t111, ptr %l38, !tbaa !24
  %t112 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_202_3e_2e_2d1
  br i1 %t112, label %bb20, label %bb21
bb20:
  %t114 = call ptr @__olang_region_make(ptr %s0)
  %t115 = ptrtoint ptr %t114 to i64
  store i64 %t115, ptr %l38, !tbaa !24
  br label %bb21
bb21:
  %t116 = ptrtoint ptr %s0 to i64
  store i64 %t116, ptr %l40, !tbaa !24
  %t117 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_202_3e_2e_2d1
  br i1 %t117, label %bb22, label %bb23
bb22:
  %t119 = call ptr @__olang_region_make(ptr %s0)
  %t120 = ptrtoint ptr %t119 to i64
  store i64 %t120, ptr %l40, !tbaa !24
  br label %bb23
bb23:
  %t121 = load i64, ptr %l40
  %t122 = inttoptr i64 %t121 to ptr
  %t123 = call { i64, ptr } @compiler_2ffetch_2eCacheDir(ptr %t122)
  store { i64, ptr } %t123, ptr %l42
  br label %bb24
bb24:
  %t124 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t125 = load i64, ptr %l40
  %t126 = inttoptr i64 %t125 to ptr
  %t127 = extractvalue { i64, ptr } %t124, 0
  %t128 = extractvalue { i64, ptr } %t124, 1
  %t129 = mul i64 %t127, 1
  %t130 = call ptr @__olang_scope_alloc(ptr %t126, i64 %t129)
  call void @llvm.memcpy.p0.p0.i64(ptr %t130, ptr %t128, i64 %t129, i1 false)
  %t131 = insertvalue { i64, ptr } undef, i64 %t127, 0
  %t132 = insertvalue { i64, ptr } %t131, ptr %t130, 1
  %t134 = insertvalue [2 x { i64, ptr }] undef, { i64, ptr } %t132, 0
  %t135 = insertvalue [2 x { i64, ptr }] %t134, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d0, i32 0, i32 1) }, 1
  store [2 x { i64, ptr }] %t135, ptr %l5
  %t138 = insertvalue { i64, ptr } undef, i64 2, 0
  %t139 = insertvalue { i64, ptr } %t138, ptr %l5, 1
  %t140 = load i64, ptr %l38
  %t141 = inttoptr i64 %t140 to ptr
  %t143 = call { i64, ptr } @std_2ffilepath_2eJoin(ptr %s0, ptr %t141, { i64, ptr } %t139)
  store { i64, ptr } %t143, ptr %l47
  br label %bb25
bb25:
  %t144 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t145 = load i64, ptr %l38
  %t146 = inttoptr i64 %t145 to ptr
  %t147 = extractvalue { i64, ptr } %t144, 0
  %t148 = extractvalue { i64, ptr } %t144, 1
  %t149 = mul i64 %t147, 1
  %t150 = call ptr @__olang_scope_alloc(ptr %t146, i64 %t149)
  call void @llvm.memcpy.p0.p0.i64(ptr %t150, ptr %t148, i64 %t149, i1 false)
  %t151 = insertvalue { i64, ptr } undef, i64 %t147, 0
  %t152 = insertvalue { i64, ptr } %t151, ptr %t150, 1
  store { i64, ptr } %t152, ptr %l48, !tbaa !27
  %t154 = call { i64, ptr } @compiler_2fbuild_2eHashOf(ptr %s0, ptr %s0, ptr %l4)
  store { i64, ptr } %t154, ptr %l50
  br label %bb26
bb26:
  %t155 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t156 = extractvalue { i64, ptr } %t155, 0
  store i64 %t156, ptr %l51, !tbaa !24
  %t157 = icmp sge i64 0, 0
  br i1 %t157, label %bb27, label %bb28
bb27:
  %t159 = icmp sle i64 0, 16
  br i1 %t159, label %bb29, label %bb30
bb28:
  call void @__olang_check_failed(ptr @olang_loc_74a546a3dd225c9b_f3beb7f3829b0fbf)
  unreachable
bb29:
  %t161 = load i64, ptr %l51, !tbaa !24
  %t162 = icmp sle i64 16, %t161
  br i1 %t162, label %bb31, label %bb32
bb30:
  call void @__olang_check_failed(ptr @olang_loc_74a546a3dd225c9b_f3beb7f3829b0fbf)
  unreachable
bb31:
  %t164 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t165 = load ptr, ptr %t164, !tbaa !27
  %t166 = getelementptr i8, ptr %t165, i64 0
  %t167 = sub i64 16, 0
  %t168 = insertvalue { i64, ptr } undef, i64 %t167, 0
  %t169 = insertvalue { i64, ptr } %t168, ptr %t166, 1
  %t170 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t171 = insertvalue [2 x { i64, ptr }] undef, { i64, ptr } %t170, 0
  %t173 = insertvalue [2 x { i64, ptr }] %t171, { i64, ptr } %t169, 1
  store [2 x { i64, ptr }] %t173, ptr %l6
  %t176 = insertvalue { i64, ptr } undef, i64 2, 0
  %t177 = insertvalue { i64, ptr } %t176, ptr %l6, 1
  %t179 = call { i64, ptr } @std_2ffilepath_2eJoin(ptr %s0, ptr %v2, { i64, ptr } %t177)
  store { i64, ptr } %t179, ptr %l59
  br label %bb33
bb32:
  call void @__olang_check_failed(ptr @olang_loc_74a546a3dd225c9b_f3beb7f3829b0fbf)
  unreachable
bb33:
  call void @__olang_scope_close(ptr %s0)
  %t180 = load { i64, ptr }, ptr %l59, !tbaa !27
  store { i64, ptr } %t180, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2ffix_2eFiles(ptr %v0, ptr %v1, ptr %v2, i1 %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca i1
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca %"std/io:Writer"
  %l5 = alloca %"std/io:Writer"
  %l6 = alloca { i64, ptr }
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l15 = alloca i32
  %l16 = alloca i64
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca { i64, ptr }
  %l22 = alloca [2 x { i64, ptr }]
  %l23 = alloca { i64, ptr }
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l31 = alloca { i32, { i64, [2 x i64] } }
  %l32 = alloca %"std/os:Output"
  %l33 = alloca { i64, ptr }
  %l34 = alloca i64
  %l35 = alloca i64
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca i64
  %l39 = alloca i64
  %l40 = alloca i64
  %l41 = alloca i64
  %l44 = alloca %"std/io:Writer"
  %l45 = alloca %"std/io:Writer"
  %l47 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l49 = alloca { i64, ptr }
  %l50 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l58 = alloca { i64, ptr }
  %l61 = alloca { i64, ptr }
  %l63 = alloca { i64, ptr }
  %l64 = alloca i32
  %l66 = alloca i1
  %l75 = alloca i32
  %l77 = alloca i1
  %l81 = alloca ptr
  %l82 = alloca i64
  %l90 = alloca { i64, ptr }
  %l92 = alloca i1
  %l100 = alloca i32
  %l102 = alloca i1
  %l108 = alloca { i64, ptr }
  %l110 = alloca i32
  %l112 = alloca i1
  %l121 = alloca i32
  %l123 = alloca i1
  %l127 = alloca { i64, ptr }
  %l135 = alloca { i64, ptr }
  %l146 = alloca i32
  %l148 = alloca i1
  %l149 = alloca { i64, ptr }
  %l150 = alloca i64
  %l158 = alloca { i64, ptr }
  %l165 = alloca i64
  %l168 = alloca i64
  %l186 = alloca { i64, ptr }
  %l187 = alloca i64
  %l193 = alloca i64
  %l194 = alloca i64
  %l199 = alloca %"std/os:Output"
  %l206 = alloca { i64, ptr }
  %l208 = alloca { i64, ptr }
  %l209 = alloca %"std/os:Output"
  %l210 = alloca i32
  %l212 = alloca i1
  %l213 = alloca { i32, { i64, [2 x i64] } }
  %l214 = alloca { i32, { i64, [2 x i64] } }
  %l215 = alloca i32
  %l220 = alloca { i32, { i64, [2 x i64] } }
  %l221 = alloca { i32, { i64, [2 x i64] } }
  %l224 = alloca ptr
  %l225 = alloca { i64, ptr }
  %l226 = alloca { i32, { i64, [2 x i64] } }
  %l228 = alloca { i32, { i64, [2 x i64] } }
  %l229 = alloca i32
  %l244 = alloca { i64, ptr }
  %l251 = alloca i64
  %l254 = alloca i1
  %l264 = alloca i1
  %l267 = alloca { i64, ptr }
  %l284 = alloca i64
  %l287 = alloca i64
  %l305 = alloca { i64, ptr }
  %l306 = alloca { i64, ptr }
  %l309 = alloca { i64, ptr }
  %l310 = alloca i32
  %l312 = alloca i1
  %l315 = alloca { i64, ptr }
  %l318 = alloca { i64, ptr }
  %l319 = alloca i1
  %l323 = alloca { i64, ptr }
  %l330 = alloca { i64, ptr }
  %l332 = alloca { i64, ptr }
  %l335 = alloca { i64, ptr }
  %l337 = alloca i32
  %l339 = alloca i1
  %l343 = alloca { i64, ptr }
  %l353 = alloca i1
  %l358 = alloca { i64, ptr }
  %l366 = alloca i32
  %l368 = alloca i1
  %l373 = alloca i32
  %l375 = alloca i1
  %l383 = alloca i1
  %l386 = alloca i1
  %l389 = alloca i32
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %s21 = alloca %olang.builder
  %s21room = alloca [64 x i8], align 8
  %s23 = alloca %olang.scope
  %s25 = alloca %olang.scope
  %s31 = alloca %olang.scope
  %s35 = alloca %olang.scope
  %s36 = alloca %olang.scope
  %s39 = alloca %olang.scope
  %rv = alloca i32
  store i1 %a0, ptr %l0
  store { i64, ptr } %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/io:Writer" @std_2fio_3aWriter_2ector(ptr %s0, i32 2, i64 65536)
  store %"std/io:Writer" %t1, ptr %l44
  br label %bb1
bb1:
  %t2 = load %"std/io:Writer", ptr %l44
  store %"std/io:Writer" %t2, ptr %l4
  %t3 = call %"std/io:Writer" @std_2fio_3aWriter_2ector(ptr %s0, i32 1, i64 65536)
  store %"std/io:Writer" %t3, ptr %l45
  br label %bb2
bb2:
  %t4 = load %"std/io:Writer", ptr %l45
  store %"std/io:Writer" %t4, ptr %l5
  %t7 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffix_2eexpand(ptr %v0, ptr %s0, { i64, ptr } %a1)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t7, ptr %l47
  br label %bb3
bb3:
  %t8 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l47
  %t9 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %t9
  %t11 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %s0, ptr %s0, ptr %t9)
  store { i64, ptr } %t11, ptr %l49
  br label %bb4
bb4:
  %t12 = load { i64, ptr }, ptr %l49, !tbaa !27
  store { i64, ptr } %t12, ptr %l6, !tbaa !27
  %t13 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t13, ptr %l50
  br label %bb5
bb5:
  %t14 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l50
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l7
  %t15 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t15, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t17 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t17, 0
  store i64 %t19, ptr %l10, !tbaa !24
  br label %bb6
bb6:
  store %olang.scope zeroinitializer, ptr %s2
  %t21 = load i64, ptr %l9, !tbaa !24
  %t22 = load i64, ptr %l10, !tbaa !24
  %t25 = icmp slt i64 %t21, %t22
  %t27 = xor i1 %t25, true
  br i1 %t27, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s2)
  br label %bb27
bb8:
  br label %bb9
bb9:
  %t29 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t29, ptr %l58, !tbaa !27
  %t30 = load i64, ptr %l9, !tbaa !24
  %t32 = getelementptr { i64, ptr }, ptr %l58, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !27
  %t34 = getelementptr { i64, ptr }, ptr %t33, i64 %t30
  %t35 = load { i64, ptr }, ptr %t34, !tbaa !37
  store { i64, ptr } %t35, ptr %l11, !tbaa !27
  %t37 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t39 = call { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %s0, ptr %s2, { i64, ptr } %t37)
  %t40 = extractvalue { i32, { i64, ptr } } %t39, 1
  %t41 = extractvalue { i32, { i64, ptr } } %t39, 0
  store i32 %t41, ptr %l64
  %t42 = icmp ne i32 %t41, 0
  br i1 %t42, label %bb11, label %ok.43, !prof !99
ok.43:
  store { i64, ptr } %t40, ptr %l63
  br label %bb10
bb10:
  %t44 = load { i64, ptr }, ptr %l63, !tbaa !27
  store { i64, ptr } %t44, ptr %l61, !tbaa !27
  br label %bb22
bb11:
  %t45 = load i32, ptr %l64, !tbaa !23
  %t46 = ashr i32 %t45, 16
  %t48 = icmp eq i32 %t46, 1
  store i1 %t48, ptr %l66, !tbaa !21
  %t49 = load i32, ptr %l64, !tbaa !23
  %t50 = ashr i32 %t49, 16
  %t52 = icmp eq i32 %t50, 1
  br i1 %t52, label %bb12, label %bb13
bb12:
  call void @__olang_errpay_pop()
  br label %bb13
bb13:
  br label %bb14
bb14:
  store %olang.scope zeroinitializer, ptr %s3
  %t54 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t55 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d1, i32 0, i32 1) }, 1
  %t56 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  %t58 = extractvalue { i64, ptr } %t54, 1
  %t59 = extractvalue { i64, ptr } %t54, 0
  %t60 = add i64 %t56, %t59
  %t61 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t62 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  %t63 = add i64 %t60, %t62
  %t64 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t63)
  call void @olang_textcopy(ptr %t64, ptr %t55, i64 %t56)
  %t65 = getelementptr i8, ptr %t64, i64 %t56
  call void @olang_textcopy(ptr %t65, ptr %t58, i64 %t59)
  %t66 = getelementptr i8, ptr %t65, i64 %t59
  call void @olang_textcopy(ptr %t66, ptr %t61, i64 %t62)
  %t67 = insertvalue { i64, ptr } undef, i64 %t63, 0
  %t68 = insertvalue { i64, ptr } %t67, ptr %t64, 1
  %t71 = extractvalue { i64, ptr } %t68, 0
  %t72 = extractvalue { i64, ptr } %t68, 1
  %t73 = mul i64 %t71, 1
  %t74 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t73)
  call void @llvm.memcpy.p0.p0.i64(ptr %t74, ptr %t72, i64 %t73, i1 false)
  %t75 = insertvalue { i64, ptr } undef, i64 %t71, 0
  %t76 = insertvalue { i64, ptr } %t75, ptr %t74, 1
  call void @std_2fio_2estd_2fio_3aWriter_2eWrite(ptr %s0, ptr %s3, ptr %l4, { i64, ptr } %t76)
  br label %bb15
bb15:
  %t80 = call i32 @std_2fio_2estd_2fio_3aWriter_2eFlush(ptr %s0, ptr %l4)
  store i32 %t80, ptr %l75
  %t81 = icmp ne i32 %t80, 0
  br i1 %t81, label %bb17, label %ok.82, !prof !99
ok.82:
  br label %bb16
bb16:
  br label %bb21
bb17:
  %t83 = load i32, ptr %l75, !tbaa !23
  %t84 = ashr i32 %t83, 16
  %t86 = icmp eq i32 %t84, 1
  store i1 %t86, ptr %l77, !tbaa !21
  %t87 = load i32, ptr %l75, !tbaa !23
  %t88 = ashr i32 %t87, 16
  %t90 = icmp eq i32 %t88, 1
  br i1 %t90, label %bb18, label %bb19
bb18:
  call void @__olang_errpay_pop()
  br label %bb19
bb19:
  br label %bb20
bb20:
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  store i32 2, ptr %rv
  br label %ret
bb22:
  %t93 = load { i64, ptr }, ptr %l61, !tbaa !27
  store { i64, ptr } %t93, ptr %l12, !tbaa !27
  store ptr %l7, ptr %l81, !tbaa !29
  %t94 = ptrtoint ptr %s0 to i64
  store i64 %t94, ptr %l82, !tbaa !24
  %t95 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t95, label %bb23, label %bb24
bb23:
  %t97 = call ptr @__olang_region_make(ptr %s0)
  %t98 = ptrtoint ptr %t97 to i64
  store i64 %t98, ptr %l82, !tbaa !24
  br label %bb24
bb24:
  %t99 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t101 = extractvalue { i64, ptr } %t99, 1
  %t102 = extractvalue { i64, ptr } %t99, 0
  %t103 = load i64, ptr %l82
  %t104 = inttoptr i64 %t103 to ptr
  %t105 = call ptr @__olang_scope_alloc(ptr %t104, i64 %t102)
  call void @olang_textcopy(ptr %t105, ptr %t101, i64 %t102)
  %t106 = insertvalue { i64, ptr } undef, i64 %t102, 0
  %t107 = insertvalue { i64, ptr } %t106, ptr %t105, 1
  %t109 = load i64, ptr %l82
  %t110 = inttoptr i64 %t109 to ptr
  %t111 = extractvalue { i64, ptr } %t107, 0
  %t112 = extractvalue { i64, ptr } %t107, 1
  %t113 = mul i64 %t111, 1
  %t114 = call ptr @__olang_scope_alloc(ptr %t110, i64 %t113)
  call void @llvm.memcpy.p0.p0.i64(ptr %t114, ptr %t112, i64 %t113, i1 false)
  %t115 = insertvalue { i64, ptr } undef, i64 %t111, 0
  %t116 = insertvalue { i64, ptr } %t115, ptr %t114, 1
  %t117 = load ptr, ptr %l81, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t117, { i64, ptr } %t116)
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s2)
  br label %bb26
bb26:
  %t119 = load i64, ptr %l9, !tbaa !24
  %t121 = add i64 %t119, 1
  store i64 %t121, ptr %l9, !tbaa !24
  br label %bb6
bb27:
  %t123 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t125 = call { i64, ptr } @compiler_2ffix_2eToolsDir(ptr %v1, ptr %s0, { i64, ptr } %t123)
  store { i64, ptr } %t125, ptr %l90
  br label %bb28
bb28:
  %t126 = load { i64, ptr }, ptr %l90, !tbaa !27
  store { i64, ptr } %t126, ptr %l13, !tbaa !27
  %t127 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t129 = call i1 @std_2fos_2eIsDir(ptr %s0, { i64, ptr } %t127)
  store i1 %t129, ptr %l92
  br label %bb29
bb29:
  %t130 = load i1, ptr %l92, !tbaa !21
  %t131 = xor i1 %t130, true
  br i1 %t131, label %bb30, label %bb31
bb30:
  store %olang.scope zeroinitializer, ptr %s8
  %t133 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t134 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t135 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  %t137 = extractvalue { i64, ptr } %t133, 1
  %t138 = extractvalue { i64, ptr } %t133, 0
  %t139 = add i64 %t135, %t138
  %t140 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t141 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  %t142 = add i64 %t139, %t141
  %t143 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t142)
  call void @olang_textcopy(ptr %t143, ptr %t134, i64 %t135)
  %t144 = getelementptr i8, ptr %t143, i64 %t135
  call void @olang_textcopy(ptr %t144, ptr %t137, i64 %t138)
  %t145 = getelementptr i8, ptr %t144, i64 %t138
  call void @olang_textcopy(ptr %t145, ptr %t140, i64 %t141)
  %t146 = insertvalue { i64, ptr } undef, i64 %t142, 0
  %t147 = insertvalue { i64, ptr } %t146, ptr %t143, 1
  %t150 = extractvalue { i64, ptr } %t147, 0
  %t151 = extractvalue { i64, ptr } %t147, 1
  %t152 = mul i64 %t150, 1
  %t153 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t152)
  call void @llvm.memcpy.p0.p0.i64(ptr %t153, ptr %t151, i64 %t152, i1 false)
  %t154 = insertvalue { i64, ptr } undef, i64 %t150, 0
  %t155 = insertvalue { i64, ptr } %t154, ptr %t153, 1
  call void @std_2fio_2estd_2fio_3aWriter_2eWrite(ptr %s0, ptr %s8, ptr %l4, { i64, ptr } %t155)
  br label %bb32
bb31:
  br label %bb39
bb32:
  %t159 = call i32 @std_2fio_2estd_2fio_3aWriter_2eFlush(ptr %s0, ptr %l4)
  store i32 %t159, ptr %l100
  %t160 = icmp ne i32 %t159, 0
  br i1 %t160, label %bb34, label %ok.161, !prof !99
ok.161:
  br label %bb33
bb33:
  br label %bb38
bb34:
  %t162 = load i32, ptr %l100, !tbaa !23
  %t163 = ashr i32 %t162, 16
  %t165 = icmp eq i32 %t163, 1
  store i1 %t165, ptr %l102, !tbaa !21
  %t166 = load i32, ptr %l100, !tbaa !23
  %t167 = ashr i32 %t166, 16
  %t169 = icmp eq i32 %t167, 1
  br i1 %t169, label %bb35, label %bb36
bb35:
  call void @__olang_errpay_pop()
  br label %bb36
bb36:
  br label %bb37
bb37:
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s0)
  store i32 2, ptr %rv
  br label %ret
bb39:
  %t172 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t173 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t176 = call { i64, ptr } @compiler_2ffix_2eBinDir(ptr %v1, ptr %s0, ptr %s0, { i64, ptr } %t172, { i64, ptr } %t173)
  store { i64, ptr } %t176, ptr %l108
  br label %bb40
bb40:
  %t177 = load { i64, ptr }, ptr %l108, !tbaa !27
  store { i64, ptr } %t177, ptr %l14, !tbaa !27
  %t178 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t180 = call i32 @std_2fos_2eMkDirAll(ptr %s0, { i64, ptr } %t178)
  store i32 %t180, ptr %l110
  %t181 = icmp ne i32 %t180, 0
  br i1 %t181, label %bb42, label %ok.182, !prof !99
ok.182:
  br label %bb41
bb41:
  br label %bb53
bb42:
  %t183 = load i32, ptr %l110, !tbaa !23
  %t184 = ashr i32 %t183, 16
  %t186 = icmp eq i32 %t184, 1
  store i1 %t186, ptr %l112, !tbaa !21
  %t187 = load i32, ptr %l110, !tbaa !23
  %t188 = ashr i32 %t187, 16
  %t190 = icmp eq i32 %t188, 1
  br i1 %t190, label %bb43, label %bb44
bb43:
  call void @__olang_errpay_pop()
  br label %bb44
bb44:
  br label %bb45
bb45:
  store %olang.scope zeroinitializer, ptr %s11
  %t192 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t193 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t194 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t196 = extractvalue { i64, ptr } %t192, 1
  %t197 = extractvalue { i64, ptr } %t192, 0
  %t198 = add i64 %t194, %t197
  %t199 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t200 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t201 = add i64 %t198, %t200
  %t202 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t201)
  call void @olang_textcopy(ptr %t202, ptr %t193, i64 %t194)
  %t203 = getelementptr i8, ptr %t202, i64 %t194
  call void @olang_textcopy(ptr %t203, ptr %t196, i64 %t197)
  %t204 = getelementptr i8, ptr %t203, i64 %t197
  call void @olang_textcopy(ptr %t204, ptr %t199, i64 %t200)
  %t205 = insertvalue { i64, ptr } undef, i64 %t201, 0
  %t206 = insertvalue { i64, ptr } %t205, ptr %t202, 1
  %t209 = extractvalue { i64, ptr } %t206, 0
  %t210 = extractvalue { i64, ptr } %t206, 1
  %t211 = mul i64 %t209, 1
  %t212 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t211)
  call void @llvm.memcpy.p0.p0.i64(ptr %t212, ptr %t210, i64 %t211, i1 false)
  %t213 = insertvalue { i64, ptr } undef, i64 %t209, 0
  %t214 = insertvalue { i64, ptr } %t213, ptr %t212, 1
  call void @std_2fio_2estd_2fio_3aWriter_2eWrite(ptr %s0, ptr %s11, ptr %l4, { i64, ptr } %t214)
  br label %bb46
bb46:
  %t218 = call i32 @std_2fio_2estd_2fio_3aWriter_2eFlush(ptr %s0, ptr %l4)
  store i32 %t218, ptr %l121
  %t219 = icmp ne i32 %t218, 0
  br i1 %t219, label %bb48, label %ok.220, !prof !99
ok.220:
  br label %bb47
bb47:
  br label %bb52
bb48:
  %t221 = load i32, ptr %l121, !tbaa !23
  %t222 = ashr i32 %t221, 16
  %t224 = icmp eq i32 %t222, 1
  store i1 %t224, ptr %l123, !tbaa !21
  %t225 = load i32, ptr %l121, !tbaa !23
  %t226 = ashr i32 %t225, 16
  %t228 = icmp eq i32 %t226, 1
  br i1 %t228, label %bb49, label %bb50
bb49:
  call void @__olang_errpay_pop()
  br label %bb50
bb50:
  br label %bb51
bb51:
  br label %bb52
bb52:
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s0)
  store i32 2, ptr %rv
  br label %ret
bb53:
  store i32 0, ptr %l15, !tbaa !23
  store i64 0, ptr %l16, !tbaa !24
  store %olang.scope zeroinitializer, ptr %s14
  %t231 = call { i64, ptr } @compiler_2ffix_2eOrder(ptr %s14)
  store { i64, ptr } %t231, ptr %l127
  br label %bb54
bb54:
  %t232 = load { i64, ptr }, ptr %l127, !tbaa !27
  %t233 = extractvalue { i64, ptr } %t232, 0
  %t234 = extractvalue { i64, ptr } %t232, 1
  %t235 = mul i64 %t233, 8
  %t236 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t235)
  call void @llvm.memcpy.p0.p0.i64(ptr %t236, ptr %t234, i64 %t235, i1 false)
  %t237 = insertvalue { i64, ptr } undef, i64 %t233, 0
  %t238 = insertvalue { i64, ptr } %t237, ptr %t236, 1
  store { i64, ptr } %t238, ptr %l17, !tbaa !27
  store i64 0, ptr %l18, !tbaa !24
  %t240 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t242 = extractvalue { i64, ptr } %t240, 0
  store i64 %t242, ptr %l19, !tbaa !24
  br label %bb55
bb55:
  store %olang.scope zeroinitializer, ptr %s15
  %t244 = load i64, ptr %l18, !tbaa !24
  %t245 = load i64, ptr %l19, !tbaa !24
  %t248 = icmp slt i64 %t244, %t245
  %t250 = xor i1 %t248, true
  br i1 %t250, label %bb56, label %bb57
bb56:
  call void @__olang_scope_close(ptr %s15)
  br label %bb132
bb57:
  br label %bb58
bb58:
  %t252 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t252, ptr %l135, !tbaa !27
  %t253 = load i64, ptr %l18, !tbaa !24
  %t255 = getelementptr { i64, ptr }, ptr %l135, i32 0, i32 1
  %t256 = load ptr, ptr %t255, !tbaa !27
  %t257 = getelementptr i64, ptr %t256, i64 %t253
  %t258 = load i64, ptr %t257, !tbaa !34
  store i64 %t258, ptr %l20, !tbaa !24
  %t260 = load i64, ptr %l20, !tbaa !24
  %t262 = getelementptr [36 x { i64, ptr }], ptr @G_2ecompiler_2ffix_2eToolNames, i64 0, i64 %t260
  %t263 = load { i64, ptr }, ptr %t262, !tbaa !37
  store { i64, ptr } %t263, ptr %l21, !tbaa !27
  %t265 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t266 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t267 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t268 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t269 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t270 = load ptr, ptr @__olang_prog_scope
  %t277 = call i32 @compiler_2ffix_2eensureBuilt(ptr %v1, ptr %s0, ptr %s0, ptr %t270, ptr %v2, ptr %s0, { i64, ptr } %t265, { i64, ptr } %t266, { i64, ptr } %t267, { i64, ptr } %t268, { i64, ptr } %t269, ptr %l4)
  store i32 %t277, ptr %l146
  %t278 = icmp ne i32 %t277, 0
  br i1 %t278, label %bb60, label %ok.279, !prof !99
ok.279:
  br label %bb59
bb59:
  br label %bb62
bb60:
  %t280 = load i32, ptr %l146, !tbaa !23
  %t281 = ashr i32 %t280, 16
  %t283 = icmp eq i32 %t281, 1
  store i1 %t283, ptr %l148, !tbaa !21
  br label %bb61
bb61:
  store i32 2, ptr %l15, !tbaa !23
  call void @__olang_scope_close(ptr %s15)
  br label %bb132
bb62:
  %t284 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t284, ptr %l149, !tbaa !27
  %t285 = ptrtoint ptr %s15 to i64
  store i64 %t285, ptr %l150, !tbaa !24
  %t286 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_202_3e_2e_2d1
  br i1 %t286, label %bb63, label %bb64
bb63:
  %t288 = call ptr @__olang_region_make(ptr %s15)
  %t289 = ptrtoint ptr %t288 to i64
  store i64 %t289, ptr %l150, !tbaa !24
  br label %bb64
bb64:
  %t290 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t291 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t292 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  %t294 = extractvalue { i64, ptr } %t290, 1
  %t295 = extractvalue { i64, ptr } %t290, 0
  %t296 = add i64 %t292, %t295
  %t297 = load i64, ptr %l150
  %t298 = inttoptr i64 %t297 to ptr
  %t299 = call ptr @__olang_scope_alloc(ptr %t298, i64 %t296)
  call void @olang_textcopy(ptr %t299, ptr %t291, i64 %t292)
  %t300 = getelementptr i8, ptr %t299, i64 %t292
  call void @olang_textcopy(ptr %t300, ptr %t294, i64 %t295)
  %t301 = insertvalue { i64, ptr } undef, i64 %t296, 0
  %t302 = insertvalue { i64, ptr } %t301, ptr %t299, 1
  %t304 = load i64, ptr %l150
  %t305 = inttoptr i64 %t304 to ptr
  %t306 = extractvalue { i64, ptr } %t302, 0
  %t307 = extractvalue { i64, ptr } %t302, 1
  %t308 = mul i64 %t306, 1
  %t309 = call ptr @__olang_scope_alloc(ptr %t305, i64 %t308)
  call void @llvm.memcpy.p0.p0.i64(ptr %t309, ptr %t307, i64 %t308, i1 false)
  %t310 = insertvalue { i64, ptr } undef, i64 %t306, 0
  %t311 = insertvalue { i64, ptr } %t310, ptr %t309, 1
  %t312 = load { i64, ptr }, ptr %l149, !tbaa !27
  %t313 = insertvalue [2 x { i64, ptr }] undef, { i64, ptr } %t312, 0
  %t315 = insertvalue [2 x { i64, ptr }] %t313, { i64, ptr } %t311, 1
  store [2 x { i64, ptr }] %t315, ptr %l22
  %t318 = insertvalue { i64, ptr } undef, i64 2, 0
  %t319 = insertvalue { i64, ptr } %t318, ptr %l22, 1
  %t321 = call { i64, ptr } @std_2ffilepath_2eJoin(ptr %s15, ptr %s15, { i64, ptr } %t319)
  store { i64, ptr } %t321, ptr %l158
  br label %bb65
bb65:
  %t322 = load { i64, ptr }, ptr %l158, !tbaa !27
  store { i64, ptr } %t322, ptr %l23, !tbaa !27
  store i64 0, ptr %l24, !tbaa !24
  %t323 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t325 = extractvalue { i64, ptr } %t323, 0
  store i64 %t325, ptr %l25, !tbaa !24
  %t327 = load i64, ptr @G_2ecompiler_2ffix_2eBatch, !tbaa !24
  store i64 %t327, ptr %l26, !tbaa !24
  %t329 = load i64, ptr %l25, !tbaa !24
  %t330 = load i64, ptr %l24, !tbaa !24
  %t333 = icmp sgt i64 %t329, %t330
  br i1 %t333, label %bb66, label %bb67
bb66:
  %t335 = load i64, ptr %l26, !tbaa !24
  %t337 = icmp sgt i64 %t335, 0
  br i1 %t337, label %bb68, label %bb69
bb67:
  store i64 0, ptr %l165, !tbaa !24
  br label %bb71
bb68:
  %t339 = load i64, ptr %l25, !tbaa !24
  %t340 = load i64, ptr %l24, !tbaa !24
  %t343 = sub i64 %t339, %t340
  %t344 = load i64, ptr %l26, !tbaa !24
  %t347 = add i64 %t343, %t344
  %t349 = sub i64 %t347, 1
  %t350 = load i64, ptr %l26, !tbaa !24
  %t353 = sdiv i64 %t349, %t350
  store i64 %t353, ptr %l168, !tbaa !24
  br label %bb70
bb69:
  store i64 0, ptr %l168, !tbaa !24
  br label %bb70
bb70:
  %t355 = load i64, ptr %l168, !tbaa !24
  store i64 %t355, ptr %l165, !tbaa !24
  br label %bb71
bb71:
  %t356 = load i64, ptr %l165, !tbaa !24
  store i64 %t356, ptr %l27, !tbaa !24
  store i64 0, ptr %l28, !tbaa !24
  br label %bb72
bb72:
  store %olang.scope zeroinitializer, ptr %s19
  %t357 = load i64, ptr %l28, !tbaa !24
  %t358 = load i64, ptr %l27, !tbaa !24
  %t361 = icmp slt i64 %t357, %t358
  %t363 = xor i1 %t361, true
  br i1 %t363, label %bb73, label %bb74
bb73:
  call void @__olang_scope_close(ptr %s19)
  br label %bb127
bb74:
  br label %bb75
bb75:
  %t365 = load i64, ptr %l24, !tbaa !24
  %t366 = load i64, ptr %l28, !tbaa !24
  %t367 = load i64, ptr %l26, !tbaa !24
  %t370 = mul i64 %t366, %t367
  %t373 = add i64 %t365, %t370
  store i64 %t373, ptr %l29, !tbaa !24
  %t375 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t375, ptr %l186, !tbaa !27
  %t376 = load i64, ptr %l29, !tbaa !24
  store i64 %t376, ptr %l187, !tbaa !24
  %t377 = load i64, ptr %l29, !tbaa !24
  %t378 = load i64, ptr @G_2ecompiler_2ffix_2eBatch, !tbaa !24
  %t381 = add i64 %t377, %t378
  %t382 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t384 = extractvalue { i64, ptr } %t382, 0
  %t387 = call i64 @std_2fprelude_2fnumber_2eI64_2eMin_3cI64_3e(i64 %t381, i64 %t384)
  store i64 %t387, ptr %l193
  br label %bb76
bb76:
  %t388 = load { i64, ptr }, ptr %l186, !tbaa !27
  %t389 = extractvalue { i64, ptr } %t388, 0
  store i64 %t389, ptr %l194, !tbaa !24
  %t390 = load i64, ptr %l187, !tbaa !24
  %t391 = icmp sge i64 %t390, 0
  br i1 %t391, label %bb77, label %bb78
bb77:
  %t393 = load i64, ptr %l187, !tbaa !24
  %t394 = load i64, ptr %l193, !tbaa !24
  %t395 = icmp sle i64 %t393, %t394
  br i1 %t395, label %bb79, label %bb80
bb78:
  call void @__olang_check_failed(ptr @olang_loc_299e69389bcee8f2_b185402659ea7d46)
  unreachable
bb79:
  %t397 = load i64, ptr %l193, !tbaa !24
  %t398 = load i64, ptr %l194, !tbaa !24
  %t399 = icmp sle i64 %t397, %t398
  br i1 %t399, label %bb81, label %bb82
bb80:
  call void @__olang_check_failed(ptr @olang_loc_299e69389bcee8f2_b185402659ea7d46)
  unreachable
bb81:
  %t401 = getelementptr { i64, ptr }, ptr %l186, i32 0, i32 1
  %t402 = load ptr, ptr %t401, !tbaa !27
  %t403 = load i64, ptr %l187, !tbaa !24
  %t404 = load i64, ptr %l193, !tbaa !24
  %t405 = getelementptr { i64, ptr }, ptr %t402, i64 %t403
  %t406 = sub i64 %t404, %t403
  %t407 = insertvalue { i64, ptr } undef, i64 %t406, 0
  %t408 = insertvalue { i64, ptr } %t407, ptr %t405, 1
  %t410 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t411 = load i64, ptr %l20, !tbaa !24
  %t413 = getelementptr [36 x i64], ptr @G_2ecompiler_2ffix_2eToolKinds, i64 0, i64 %t411
  %t414 = load i64, ptr %t413, !tbaa !34
  %t415 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t416 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t423 = call { i64, ptr } @compiler_2ffix_2earguments(ptr %s15, ptr %v1, ptr %v2, ptr %s0, ptr %s19, { i64, ptr } %t410, i64 %t414, { i64, ptr } %t415, { i64, ptr } %t416, { i64, ptr } %t408)
  store { i64, ptr } %t423, ptr %l206
  br label %bb83
bb82:
  call void @__olang_check_failed(ptr @olang_loc_299e69389bcee8f2_b185402659ea7d46)
  unreachable
bb83:
  %t424 = load { i64, ptr }, ptr %l206, !tbaa !27
  %t425 = extractvalue { i64, ptr } %t424, 0
  %t426 = extractvalue { i64, ptr } %t424, 1
  %t427 = mul i64 %t425, 16
  %t428 = call ptr @__olang_scope_alloc(ptr %s19, i64 %t427)
  call void @llvm.memcpy.p0.p0.i64(ptr %t428, ptr %t426, i64 %t427, i1 false)
  %t429 = insertvalue { i64, ptr } undef, i64 %t425, 0
  %t430 = insertvalue { i64, ptr } %t429, ptr %t428, 1
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d8, i32 0, i32 1) }, ptr %l208, !tbaa !27
  %t432 = load { i64, ptr }, ptr %l208, !tbaa !27
  %t433 = call { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %s19, ptr %s19, ptr %s19, ptr %s19, { i64, ptr } %t430, { i64, ptr } %t432, i1 true, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d9, i32 0, i32 1) })
  %t434 = extractvalue { i32, %"std/os:Output" } %t433, 1
  %t435 = extractvalue { i32, %"std/os:Output" } %t433, 0
  store i32 %t435, ptr %l210
  %t436 = icmp ne i32 %t435, 0
  br i1 %t436, label %bb85, label %ok.437, !prof !99
ok.437:
  store %"std/os:Output" %t434, ptr %l209
  br label %bb84
bb84:
  %t438 = load %"std/os:Output", ptr %l209
  store %"std/os:Output" %t438, ptr %l199
  br label %bb109
bb85:
  %t439 = load i32, ptr %l210, !tbaa !23
  %t440 = ashr i32 %t439, 16
  %t442 = icmp eq i32 %t440, 1
  store i1 %t442, ptr %l212, !tbaa !21
  store { i32, { i64, [2 x i64] } } zeroinitializer, ptr %l31
  %t443 = load i32, ptr %l210, !tbaa !23
  %t444 = lshr i32 %t443, 16
  %t445 = and i32 %t443, 65535
  %t446 = icmp eq i32 %t444, 1
  %t447 = select i1 %t446, i32 1, i32 0
  %t448 = icmp eq i32 %t443, 0
  %t449 = shl i32 %t447, 16
  %t450 = or i32 %t449, %t445
  %t451 = select i1 %t448, i32 0, i32 %t450
  %t452 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l31, i32 0, i32 0
  store i32 %t451, ptr %t452, !tbaa !23
  br label %bb86
bb86:
  store %olang.scope zeroinitializer, ptr %s20
  %t453 = load { i32, { i64, [2 x i64] } }, ptr %l31
  store { i32, { i64, [2 x i64] } } %t453, ptr %l213
  store { i32, { i64, [2 x i64] } } zeroinitializer, ptr %l214
  %t454 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l213, i32 0, i32 0
  %t455 = load i32, ptr %t454, !tbaa !23
  store i32 %t455, ptr %l215, !tbaa !23
  %t456 = load i32, ptr %l215, !tbaa !23
  %t457 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l214, i32 0, i32 0
  store i32 %t456, ptr %t457, !tbaa !23
  %t458 = load i32, ptr %l215, !tbaa !23
  %t459 = ashr i32 %t458, 16
  %t461 = icmp eq i32 %t459, 1
  br i1 %t461, label %bb87, label %bb88
bb87:
  %t463 = call ptr @__olang_errpay_top_get()
  %t465 = load { i64, [2 x i64] }, ptr %t463
  %t466 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l214, i32 0, i32 1
  store { i64, [2 x i64] } %t465, ptr %t466
  br label %bb88
bb88:
  %t468 = call { i32, { i64, [2 x i64] } } @olang_2emir_2eHelperKind_2eCopy_2eerror_7bstd_2fos_3aError_7d(ptr %s19, ptr %l214)
  store { i32, { i64, [2 x i64] } } %t468, ptr %l220
  br label %bb89
bb89:
  %t469 = load { i32, { i64, [2 x i64] } }, ptr %l220
  store { i32, { i64, [2 x i64] } } %t469, ptr %l31
  %t470 = load { i32, { i64, [2 x i64] } }, ptr %l31
  store { i32, { i64, [2 x i64] } } %t470, ptr %l221
  %t471 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l221, i32 0, i32 0
  %t472 = load i32, ptr %t471, !tbaa !23
  %t473 = ashr i32 %t472, 16
  %t475 = icmp eq i32 %t473, 1
  br i1 %t475, label %bb90, label %bb91
bb90:
  call void @__olang_errpay_pop()
  br label %bb91
bb91:
  store ptr %l4, ptr %l224, !tbaa !29
  %t477 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t477, ptr %l225, !tbaa !27
  %t478 = load { i32, { i64, [2 x i64] } }, ptr %l31
  store { i32, { i64, [2 x i64] } } %t478, ptr %l226
  %t480 = call { i32, { i64, [2 x i64] } } @olang_2emir_2eHelperKind_2eCopy_2eerror_7bstd_2fos_3aError_7d(ptr %s20, ptr %l226)
  store { i32, { i64, [2 x i64] } } %t480, ptr %l228
  br label %bb92
bb92:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s21
  store ptr %s21room, ptr %s21
  %t481 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t482 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s21, ptr %t481, i64 %t482)
  %t483 = load { i64, ptr }, ptr %l225, !tbaa !27
  %t484 = extractvalue { i64, ptr } %t483, 1
  %t485 = extractvalue { i64, ptr } %t483, 0
  call void @__olang_sb_put(ptr %s21, ptr %t484, i64 %t485)
  %t486 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t487 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s21, ptr %t486, i64 %t487)
  %t488 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l228, i32 0, i32 0
  %t489 = load i32, ptr %t488, !tbaa !23
  store i32 %t489, ptr %l229, !tbaa !23
  %t490 = load i32, ptr %l229, !tbaa !23
  %t491 = icmp eq i32 %t490, 0
  br i1 %t491, label %bb94, label %bb95
bb93:
  %t493 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t494 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s21, ptr %t493, i64 %t494)
  %t495 = load ptr, ptr %s21
  %t496 = getelementptr %olang.builder, ptr %s21, i32 0, i32 1
  %t497 = load i64, ptr %t496
  %t498 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t497)
  call void @olang_textcopy(ptr %t498, ptr %t495, i64 %t497)
  %t499 = insertvalue { i64, ptr } undef, i64 %t497, 0
  %t500 = insertvalue { i64, ptr } %t499, ptr %t498, 1
  store { i64, ptr } %t500, ptr %l244, !tbaa !27
  %t501 = getelementptr %olang.builder, ptr %s21, i32 0, i32 3
  %t502 = load ptr, ptr %t501
  %t503 = icmp ne ptr %t502, null
  br i1 %t503, label %sbgrew.504, label %sbdone.505
sbgrew.504:
  call void @__olang_sb_done(ptr %s21)
  br label %sbdone.505
sbdone.505:
  %t506 = load { i64, ptr }, ptr %l244, !tbaa !27
  %t508 = extractvalue { i64, ptr } %t506, 0
  %t509 = extractvalue { i64, ptr } %t506, 1
  %t510 = mul i64 %t508, 1
  %t511 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t510)
  call void @llvm.memcpy.p0.p0.i64(ptr %t511, ptr %t509, i64 %t510, i1 false)
  %t512 = insertvalue { i64, ptr } undef, i64 %t508, 0
  %t513 = insertvalue { i64, ptr } %t512, ptr %t511, 1
  %t514 = load ptr, ptr %l224, !tbaa !29
  call void @std_2fio_2estd_2fio_3aWriter_2eWrite(ptr %s0, ptr %s20, ptr %t514, { i64, ptr } %t513)
  br label %bb108
bb94:
  %t516 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t517 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s21, ptr %t516, i64 %t517)
  br label %bb93
bb95:
  %t518 = load i32, ptr %l229, !tbaa !23
  %t519 = icmp eq i32 %t518, 65536
  br i1 %t519, label %bb96, label %bb97
bb96:
  %t521 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t522 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s21, ptr %t521, i64 %t522)
  %t523 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t524 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s21, ptr %t523, i64 %t524)
  %t525 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l228, i32 0, i32 1
  %t526 = getelementptr { i64, [2 x i64] }, ptr %t525, i32 0, i32 1
  %t527 = getelementptr { { i64, ptr } }, ptr %t526, i32 0, i32 0
  %t528 = load { i64, ptr }, ptr %t527
  %t530 = extractvalue { i64, ptr } %t528, 1
  %t531 = extractvalue { i64, ptr } %t528, 0
  %t532 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t530, i64 %t531, i8 34)
  %t533 = call ptr @__olang_sb_room(ptr %s21, i64 %t532)
  %t534 = call i64 @__olang_rd_quote(ptr %t533, i64 0, ptr %t530, i64 %t531, i8 34)
  call void @__olang_sb_add(ptr %s21, i64 %t532)
  %t535 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t536 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s21, ptr %t535, i64 %t536)
  br label %bb93
bb97:
  %t537 = load i32, ptr %l229, !tbaa !23
  %t538 = icmp eq i32 %t537, 65537
  br i1 %t538, label %bb98, label %bb99
bb98:
  %t540 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t541 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s21, ptr %t540, i64 %t541)
  %t542 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t543 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s21, ptr %t542, i64 %t543)
  %t544 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l228, i32 0, i32 1
  %t545 = getelementptr { i64, [2 x i64] }, ptr %t544, i32 0, i32 1
  %t546 = getelementptr { { i64, ptr } }, ptr %t545, i32 0, i32 0
  %t547 = load { i64, ptr }, ptr %t546
  %t549 = extractvalue { i64, ptr } %t547, 1
  %t550 = extractvalue { i64, ptr } %t547, 0
  %t551 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t549, i64 %t550, i8 34)
  %t552 = call ptr @__olang_sb_room(ptr %s21, i64 %t551)
  %t553 = call i64 @__olang_rd_quote(ptr %t552, i64 0, ptr %t549, i64 %t550, i8 34)
  call void @__olang_sb_add(ptr %s21, i64 %t551)
  %t554 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t555 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s21, ptr %t554, i64 %t555)
  br label %bb93
bb99:
  %t556 = load i32, ptr %l229, !tbaa !23
  %t557 = icmp eq i32 %t556, 65538
  br i1 %t557, label %bb100, label %bb101
bb100:
  %t559 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t560 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s21, ptr %t559, i64 %t560)
  %t561 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t562 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s21, ptr %t561, i64 %t562)
  %t563 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l228, i32 0, i32 1
  %t564 = getelementptr { i64, [2 x i64] }, ptr %t563, i32 0, i32 1
  %t565 = getelementptr { { i64, ptr } }, ptr %t564, i32 0, i32 0
  %t566 = load { i64, ptr }, ptr %t565
  %t568 = extractvalue { i64, ptr } %t566, 1
  %t569 = extractvalue { i64, ptr } %t566, 0
  %t570 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t568, i64 %t569, i8 34)
  %t571 = call ptr @__olang_sb_room(ptr %s21, i64 %t570)
  %t572 = call i64 @__olang_rd_quote(ptr %t571, i64 0, ptr %t568, i64 %t569, i8 34)
  call void @__olang_sb_add(ptr %s21, i64 %t570)
  %t573 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t574 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s21, ptr %t573, i64 %t574)
  br label %bb93
bb101:
  %t575 = load i32, ptr %l229, !tbaa !23
  %t576 = icmp eq i32 %t575, 65539
  br i1 %t576, label %bb102, label %bb103
bb102:
  %t578 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t579 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s21, ptr %t578, i64 %t579)
  %t580 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t581 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s21, ptr %t580, i64 %t581)
  %t582 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l228, i32 0, i32 1
  %t583 = getelementptr { i64, [2 x i64] }, ptr %t582, i32 0, i32 1
  %t584 = getelementptr { { i64, ptr } }, ptr %t583, i32 0, i32 0
  %t585 = load { i64, ptr }, ptr %t584
  %t587 = extractvalue { i64, ptr } %t585, 1
  %t588 = extractvalue { i64, ptr } %t585, 0
  %t589 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t587, i64 %t588, i8 34)
  %t590 = call ptr @__olang_sb_room(ptr %s21, i64 %t589)
  %t591 = call i64 @__olang_rd_quote(ptr %t590, i64 0, ptr %t587, i64 %t588, i8 34)
  call void @__olang_sb_add(ptr %s21, i64 %t589)
  %t592 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t593 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s21, ptr %t592, i64 %t593)
  br label %bb93
bb103:
  %t594 = load i32, ptr %l229, !tbaa !23
  %t595 = icmp eq i32 %t594, 65540
  br i1 %t595, label %bb104, label %bb105
bb104:
  %t597 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t598 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s21, ptr %t597, i64 %t598)
  %t599 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t600 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s21, ptr %t599, i64 %t600)
  %t601 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l228, i32 0, i32 1
  %t602 = getelementptr { i64, [2 x i64] }, ptr %t601, i32 0, i32 1
  %t603 = getelementptr { { i64, ptr } }, ptr %t602, i32 0, i32 0
  %t604 = load { i64, ptr }, ptr %t603
  %t606 = extractvalue { i64, ptr } %t604, 1
  %t607 = extractvalue { i64, ptr } %t604, 0
  %t608 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t606, i64 %t607, i8 34)
  %t609 = call ptr @__olang_sb_room(ptr %s21, i64 %t608)
  %t610 = call i64 @__olang_rd_quote(ptr %t609, i64 0, ptr %t606, i64 %t607, i8 34)
  call void @__olang_sb_add(ptr %s21, i64 %t608)
  %t611 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t612 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s21, ptr %t611, i64 %t612)
  br label %bb93
bb105:
  %t613 = load i32, ptr %l229, !tbaa !23
  %t614 = icmp eq i32 %t613, 65541
  br i1 %t614, label %bb106, label %bb107
bb106:
  %t616 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t617 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s21, ptr %t616, i64 %t617)
  %t618 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t619 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s21, ptr %t618, i64 %t619)
  %t620 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l228, i32 0, i32 1
  %t621 = getelementptr { i64, [2 x i64] }, ptr %t620, i32 0, i32 1
  %t622 = getelementptr { { i64, ptr } }, ptr %t621, i32 0, i32 0
  %t623 = load { i64, ptr }, ptr %t622
  %t625 = extractvalue { i64, ptr } %t623, 1
  %t626 = extractvalue { i64, ptr } %t623, 0
  %t627 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t625, i64 %t626, i8 34)
  %t628 = call ptr @__olang_sb_room(ptr %s21, i64 %t627)
  %t629 = call i64 @__olang_rd_quote(ptr %t628, i64 0, ptr %t625, i64 %t626, i8 34)
  call void @__olang_sb_add(ptr %s21, i64 %t627)
  %t630 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t631 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s21, ptr %t630, i64 %t631)
  br label %bb93
bb107:
  %t632 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t633 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s21, ptr %t632, i64 %t633)
  %t634 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t635 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s21, ptr %t634, i64 %t635)
  %t636 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l228, i32 0, i32 1
  %t637 = getelementptr { i64, [2 x i64] }, ptr %t636, i32 0, i32 1
  %t638 = getelementptr { { i64, ptr } }, ptr %t637, i32 0, i32 0
  %t639 = load { i64, ptr }, ptr %t638
  %t641 = extractvalue { i64, ptr } %t639, 1
  %t642 = extractvalue { i64, ptr } %t639, 0
  %t643 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t641, i64 %t642, i8 34)
  %t644 = call ptr @__olang_sb_room(ptr %s21, i64 %t643)
  %t645 = call i64 @__olang_rd_quote(ptr %t644, i64 0, ptr %t641, i64 %t642, i8 34)
  call void @__olang_sb_add(ptr %s21, i64 %t643)
  %t646 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t647 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s21, ptr %t646, i64 %t647)
  br label %bb93
bb108:
  store i32 2, ptr %l15, !tbaa !23
  call void @__olang_scope_close(ptr %s20)
  call void @__olang_scope_close(ptr %s19)
  br label %bb127
bb109:
  %t648 = load %"std/os:Output", ptr %l199
  store %"std/os:Output" %t648, ptr %l32
  %t649 = getelementptr %"std/os:Output", ptr %l32, i32 0, i32 1
  %t650 = load { i64, ptr }, ptr %t649, !tbaa !27
  %t651 = getelementptr %"std/os:Output", ptr %l32, i32 0, i32 2
  %t652 = load { i64, ptr }, ptr %t651, !tbaa !27
  %t654 = extractvalue { i64, ptr } %t650, 1
  %t655 = extractvalue { i64, ptr } %t650, 0
  %t657 = extractvalue { i64, ptr } %t652, 1
  %t658 = extractvalue { i64, ptr } %t652, 0
  %t659 = add i64 %t655, %t658
  %t660 = call ptr @__olang_scope_alloc(ptr %s19, i64 %t659)
  call void @olang_textcopy(ptr %t660, ptr %t654, i64 %t655)
  %t661 = getelementptr i8, ptr %t660, i64 %t655
  call void @olang_textcopy(ptr %t661, ptr %t657, i64 %t658)
  %t662 = insertvalue { i64, ptr } undef, i64 %t659, 0
  %t663 = insertvalue { i64, ptr } %t662, ptr %t660, 1
  store { i64, ptr } %t663, ptr %l33, !tbaa !27
  %t665 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t667 = call i64 @compiler_2ffix_2ebyHand(ptr %s19, { i64, ptr } %t665)
  store i64 %t667, ptr %l251
  br label %bb110
bb110:
  %t668 = load i64, ptr %l251, !tbaa !24
  store i64 %t668, ptr %l34, !tbaa !24
  %t669 = getelementptr %"std/os:Output", ptr %l32, i32 0, i32 0
  %t670 = load i32, ptr %t669, !tbaa !23
  %t672 = icmp sgt i32 %t670, 1
  br i1 %t672, label %bb111, label %bb112
bb111:
  store i1 true, ptr %l254, !tbaa !21
  br label %bb113
bb112:
  %t674 = load i64, ptr %l34, !tbaa !24
  %t676 = icmp sgt i64 %t674, 0
  store i1 %t676, ptr %l254, !tbaa !21
  br label %bb113
bb113:
  %t678 = load i1, ptr %l254, !tbaa !21
  br i1 %t678, label %bb114, label %bb115
bb114:
  store %olang.scope zeroinitializer, ptr %s23
  %t679 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t680 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t682 = extractvalue { i64, ptr } %t679, 1
  %t683 = extractvalue { i64, ptr } %t679, 0
  %t684 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d23, i32 0, i32 1) }, 1
  %t685 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d23, i32 0, i32 1) }, 0
  %t686 = add i64 %t683, %t685
  %t688 = extractvalue { i64, ptr } %t680, 1
  %t689 = extractvalue { i64, ptr } %t680, 0
  %t690 = add i64 %t686, %t689
  %t691 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t690)
  call void @olang_textcopy(ptr %t691, ptr %t682, i64 %t683)
  %t692 = getelementptr i8, ptr %t691, i64 %t683
  call void @olang_textcopy(ptr %t692, ptr %t684, i64 %t685)
  %t693 = getelementptr i8, ptr %t692, i64 %t685
  call void @olang_textcopy(ptr %t693, ptr %t688, i64 %t689)
  %t694 = insertvalue { i64, ptr } undef, i64 %t690, 0
  %t695 = insertvalue { i64, ptr } %t694, ptr %t691, 1
  %t698 = extractvalue { i64, ptr } %t695, 0
  %t699 = extractvalue { i64, ptr } %t695, 1
  %t700 = mul i64 %t698, 1
  %t701 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t700)
  call void @llvm.memcpy.p0.p0.i64(ptr %t701, ptr %t699, i64 %t700, i1 false)
  %t702 = insertvalue { i64, ptr } undef, i64 %t698, 0
  %t703 = insertvalue { i64, ptr } %t702, ptr %t701, 1
  call void @std_2fio_2estd_2fio_3aWriter_2eWrite(ptr %s0, ptr %s23, ptr %l4, { i64, ptr } %t703)
  br label %bb116
bb115:
  br label %bb122
bb116:
  %t706 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t708 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %s19, ptr %s23, { i64, ptr } %t706, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d24, i32 0, i32 1) })
  store i1 %t708, ptr %l264
  br label %bb117
bb117:
  %t709 = load i1, ptr %l264, !tbaa !21
  %t710 = xor i1 %t709, true
  br i1 %t710, label %bb118, label %bb119
bb118:
  store %olang.scope zeroinitializer, ptr %s25
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d25, i32 0, i32 1) }, ptr %l267, !tbaa !27
  %t713 = load { i64, ptr }, ptr %l267, !tbaa !27
  call void @std_2fio_2estd_2fio_3aWriter_2eWrite(ptr %s0, ptr %s25, ptr %l4, { i64, ptr } %t713)
  br label %bb120
bb119:
  br label %bb121
bb120:
  call void @__olang_scope_close(ptr %s25)
  br label %bb121
bb121:
  call void @__olang_scope_close(ptr %s23)
  br label %bb122
bb122:
  %t714 = load i64, ptr %l16, !tbaa !24
  %t715 = load i64, ptr %l34, !tbaa !24
  %t718 = add i64 %t714, %t715
  store i64 %t718, ptr %l16, !tbaa !24
  %t720 = getelementptr %"std/os:Output", ptr %l32, i32 0, i32 0
  %t721 = load i32, ptr %t720, !tbaa !23
  %t723 = icmp sgt i32 %t721, 1
  br i1 %t723, label %bb123, label %bb124
bb123:
  store i32 2, ptr %l15, !tbaa !23
  br label %bb125
bb124:
  br label %bb125
bb125:
  call void @__olang_scope_close(ptr %s19)
  br label %bb126
bb126:
  %t725 = load i64, ptr %l28, !tbaa !24
  %t727 = add i64 %t725, 1
  store i64 %t727, ptr %l28, !tbaa !24
  br label %bb72
bb127:
  %t729 = load i32, ptr %l15, !tbaa !23
  %t731 = icmp ne i32 %t729, 0
  br i1 %t731, label %bb128, label %bb129
bb128:
  call void @__olang_scope_close(ptr %s15)
  br label %bb132
bb129:
  br label %bb130
bb130:
  call void @__olang_scope_close(ptr %s15)
  br label %bb131
bb131:
  %t733 = load i64, ptr %l18, !tbaa !24
  %t735 = add i64 %t733, 1
  store i64 %t735, ptr %l18, !tbaa !24
  br label %bb55
bb132:
  call void @__olang_scope_close(ptr %s14)
  store i64 0, ptr %l35, !tbaa !24
  store i64 0, ptr %l36, !tbaa !24
  %t737 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t739 = extractvalue { i64, ptr } %t737, 0
  store i64 %t739, ptr %l37, !tbaa !24
  store i64 1, ptr %l38, !tbaa !24
  %t741 = load i64, ptr %l37, !tbaa !24
  %t742 = load i64, ptr %l36, !tbaa !24
  %t745 = icmp sgt i64 %t741, %t742
  br i1 %t745, label %bb133, label %bb134
bb133:
  %t747 = load i64, ptr %l38, !tbaa !24
  %t749 = icmp sgt i64 %t747, 0
  br i1 %t749, label %bb135, label %bb136
bb134:
  store i64 0, ptr %l284, !tbaa !24
  br label %bb138
bb135:
  %t751 = load i64, ptr %l37, !tbaa !24
  %t752 = load i64, ptr %l36, !tbaa !24
  %t755 = sub i64 %t751, %t752
  %t756 = load i64, ptr %l38, !tbaa !24
  %t759 = add i64 %t755, %t756
  %t761 = sub i64 %t759, 1
  %t762 = load i64, ptr %l38, !tbaa !24
  %t765 = sdiv i64 %t761, %t762
  store i64 %t765, ptr %l287, !tbaa !24
  br label %bb137
bb136:
  store i64 0, ptr %l287, !tbaa !24
  br label %bb137
bb137:
  %t767 = load i64, ptr %l287, !tbaa !24
  store i64 %t767, ptr %l284, !tbaa !24
  br label %bb138
bb138:
  %t768 = load i64, ptr %l284, !tbaa !24
  store i64 %t768, ptr %l39, !tbaa !24
  store i64 0, ptr %l40, !tbaa !24
  br label %bb139
bb139:
  store %olang.scope zeroinitializer, ptr %s31
  %t769 = load i64, ptr %l40, !tbaa !24
  %t770 = load i64, ptr %l39, !tbaa !24
  %t773 = icmp slt i64 %t769, %t770
  %t775 = xor i1 %t773, true
  br i1 %t775, label %bb140, label %bb141
bb140:
  call void @__olang_scope_close(ptr %s31)
  br label %bb167
bb141:
  br label %bb142
bb142:
  %t777 = load i64, ptr %l36, !tbaa !24
  %t778 = load i64, ptr %l40, !tbaa !24
  %t779 = load i64, ptr %l38, !tbaa !24
  %t782 = mul i64 %t778, %t779
  %t785 = add i64 %t777, %t782
  store i64 %t785, ptr %l41, !tbaa !24
  %t787 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t787, ptr %l306, !tbaa !27
  %t788 = load i64, ptr %l41, !tbaa !24
  %t790 = getelementptr { i64, ptr }, ptr %l306, i32 0, i32 1
  %t791 = load ptr, ptr %t790, !tbaa !27
  %t792 = getelementptr { i64, ptr }, ptr %t791, i64 %t788
  %t793 = load { i64, ptr }, ptr %t792, !tbaa !37
  %t795 = call { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %s0, ptr %s31, { i64, ptr } %t793)
  %t796 = extractvalue { i32, { i64, ptr } } %t795, 1
  %t797 = extractvalue { i32, { i64, ptr } } %t795, 0
  store i32 %t797, ptr %l310
  %t798 = icmp ne i32 %t797, 0
  br i1 %t798, label %bb144, label %ok.799, !prof !99
ok.799:
  store { i64, ptr } %t796, ptr %l309
  br label %bb143
bb143:
  %t800 = load { i64, ptr }, ptr %l309, !tbaa !27
  store { i64, ptr } %t800, ptr %l305, !tbaa !27
  br label %bb148
bb144:
  %t801 = load i32, ptr %l310, !tbaa !23
  %t802 = ashr i32 %t801, 16
  %t804 = icmp eq i32 %t802, 1
  store i1 %t804, ptr %l312, !tbaa !21
  %t805 = load i32, ptr %l310, !tbaa !23
  %t806 = ashr i32 %t805, 16
  %t808 = icmp eq i32 %t806, 1
  br i1 %t808, label %bb145, label %bb146
bb145:
  call void @__olang_errpay_pop()
  br label %bb146
bb146:
  br label %bb147
bb147:
  call void @__olang_scope_close(ptr %s31)
  br label %bb166
bb148:
  %t810 = load { i64, ptr }, ptr %l305, !tbaa !27
  store { i64, ptr } %t810, ptr %l315, !tbaa !27
  %t812 = load i64, ptr %l41, !tbaa !24
  %t815 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %l7, i64 %t812)
  store { i64, ptr } %t815, ptr %l318
  br label %bb149
bb149:
  %t816 = load { i64, ptr }, ptr %l315, !tbaa !27
  %t817 = load { i64, ptr }, ptr %l318, !tbaa !27
  %t818 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s31, ptr %s0, { i64, ptr } %t816, { i64, ptr } %t817)
  store i1 %t818, ptr %l319
  br label %bb150
bb150:
  %t819 = load i1, ptr %l319, !tbaa !21
  br i1 %t819, label %bb151, label %bb152
bb151:
  call void @__olang_scope_close(ptr %s31)
  br label %bb166
bb152:
  br label %bb153
bb153:
  %t820 = load i64, ptr %l35, !tbaa !24
  %t822 = add i64 %t820, 1
  store i64 %t822, ptr %l35, !tbaa !24
  %t824 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t824, ptr %l323, !tbaa !27
  %t825 = load i64, ptr %l41, !tbaa !24
  %t827 = getelementptr { i64, ptr }, ptr %l323, i32 0, i32 1
  %t828 = load ptr, ptr %t827, !tbaa !27
  %t829 = getelementptr { i64, ptr }, ptr %t828, i64 %t825
  %t830 = load { i64, ptr }, ptr %t829, !tbaa !37
  %t832 = extractvalue { i64, ptr } %t830, 1
  %t833 = extractvalue { i64, ptr } %t830, 0
  %t834 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t835 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  %t836 = add i64 %t833, %t835
  %t837 = call ptr @__olang_scope_alloc(ptr %s31, i64 %t836)
  call void @olang_textcopy(ptr %t837, ptr %t832, i64 %t833)
  %t838 = getelementptr i8, ptr %t837, i64 %t833
  call void @olang_textcopy(ptr %t838, ptr %t834, i64 %t835)
  %t839 = insertvalue { i64, ptr } undef, i64 %t836, 0
  %t840 = insertvalue { i64, ptr } %t839, ptr %t837, 1
  %t843 = extractvalue { i64, ptr } %t840, 0
  %t844 = extractvalue { i64, ptr } %t840, 1
  %t845 = mul i64 %t843, 1
  %t846 = call ptr @__olang_scope_alloc(ptr %s31, i64 %t845)
  call void @llvm.memcpy.p0.p0.i64(ptr %t846, ptr %t844, i64 %t845, i1 false)
  %t847 = insertvalue { i64, ptr } undef, i64 %t843, 0
  %t848 = insertvalue { i64, ptr } %t847, ptr %t846, 1
  call void @std_2fio_2estd_2fio_3aWriter_2eWrite(ptr %s0, ptr %s31, ptr %l5, { i64, ptr } %t848)
  br label %bb154
bb154:
  %t851 = load i1, ptr %l0, !tbaa !21
  br i1 %t851, label %bb155, label %bb156
bb155:
  store %olang.scope zeroinitializer, ptr %s35
  %t853 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t853, ptr %l330, !tbaa !27
  %t854 = load i64, ptr %l41, !tbaa !24
  %t856 = getelementptr { i64, ptr }, ptr %l330, i32 0, i32 1
  %t857 = load ptr, ptr %t856, !tbaa !27
  %t858 = getelementptr { i64, ptr }, ptr %t857, i64 %t854
  %t859 = load { i64, ptr }, ptr %t858, !tbaa !37
  store { i64, ptr } %t859, ptr %l332, !tbaa !27
  %t860 = load i64, ptr %l41, !tbaa !24
  %t863 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s35, ptr %l7, i64 %t860)
  store { i64, ptr } %t863, ptr %l335
  br label %bb157
bb156:
  br label %bb165
bb157:
  %t864 = load { i64, ptr }, ptr %l335, !tbaa !27
  %t865 = load { i64, ptr }, ptr %l332, !tbaa !27
  %t867 = call i32 @std_2fos_2eWriteFile(ptr %s0, ptr %s35, { i64, ptr } %t865, { i64, ptr } %t864)
  store i32 %t867, ptr %l337
  %t868 = icmp ne i32 %t867, 0
  br i1 %t868, label %bb159, label %ok.869, !prof !99
ok.869:
  br label %bb158
bb158:
  br label %bb164
bb159:
  %t870 = load i32, ptr %l337, !tbaa !23
  %t871 = ashr i32 %t870, 16
  %t873 = icmp eq i32 %t871, 1
  store i1 %t873, ptr %l339, !tbaa !21
  %t874 = load i32, ptr %l337, !tbaa !23
  %t875 = ashr i32 %t874, 16
  %t877 = icmp eq i32 %t875, 1
  br i1 %t877, label %bb160, label %bb161
bb160:
  call void @__olang_errpay_pop()
  br label %bb161
bb161:
  br label %bb162
bb162:
  store %olang.scope zeroinitializer, ptr %s36
  %t879 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t879, ptr %l343, !tbaa !27
  %t880 = load i64, ptr %l41, !tbaa !24
  %t882 = getelementptr { i64, ptr }, ptr %l343, i32 0, i32 1
  %t883 = load ptr, ptr %t882, !tbaa !27
  %t884 = getelementptr { i64, ptr }, ptr %t883, i64 %t880
  %t885 = load { i64, ptr }, ptr %t884, !tbaa !37
  %t886 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t887 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  %t889 = extractvalue { i64, ptr } %t885, 1
  %t890 = extractvalue { i64, ptr } %t885, 0
  %t891 = add i64 %t887, %t890
  %t892 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t893 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  %t894 = add i64 %t891, %t893
  %t895 = call ptr @__olang_scope_alloc(ptr %s36, i64 %t894)
  call void @olang_textcopy(ptr %t895, ptr %t886, i64 %t887)
  %t896 = getelementptr i8, ptr %t895, i64 %t887
  call void @olang_textcopy(ptr %t896, ptr %t889, i64 %t890)
  %t897 = getelementptr i8, ptr %t896, i64 %t890
  call void @olang_textcopy(ptr %t897, ptr %t892, i64 %t893)
  %t898 = insertvalue { i64, ptr } undef, i64 %t894, 0
  %t899 = insertvalue { i64, ptr } %t898, ptr %t895, 1
  %t902 = extractvalue { i64, ptr } %t899, 0
  %t903 = extractvalue { i64, ptr } %t899, 1
  %t904 = mul i64 %t902, 1
  %t905 = call ptr @__olang_scope_alloc(ptr %s36, i64 %t904)
  call void @llvm.memcpy.p0.p0.i64(ptr %t905, ptr %t903, i64 %t904, i1 false)
  %t906 = insertvalue { i64, ptr } undef, i64 %t902, 0
  %t907 = insertvalue { i64, ptr } %t906, ptr %t905, 1
  call void @std_2fio_2estd_2fio_3aWriter_2eWrite(ptr %s0, ptr %s36, ptr %l4, { i64, ptr } %t907)
  br label %bb163
bb163:
  call void @__olang_scope_close(ptr %s36)
  br label %bb164
bb164:
  call void @__olang_scope_close(ptr %s35)
  br label %bb165
bb165:
  call void @__olang_scope_close(ptr %s31)
  br label %bb166
bb166:
  %t910 = load i64, ptr %l40, !tbaa !24
  %t912 = add i64 %t910, 1
  store i64 %t912, ptr %l40, !tbaa !24
  br label %bb139
bb167:
  %t914 = load i64, ptr %l16, !tbaa !24
  %t916 = icmp sgt i64 %t914, 0
  br i1 %t916, label %bb168, label %bb169
bb168:
  %t918 = load i32, ptr %l15, !tbaa !23
  %t920 = icmp eq i32 %t918, 0
  store i1 %t920, ptr %l353, !tbaa !21
  br label %bb170
bb169:
  store i1 false, ptr %l353, !tbaa !21
  br label %bb170
bb170:
  %t922 = load i1, ptr %l353, !tbaa !21
  br i1 %t922, label %bb171, label %bb172
bb171:
  store %olang.scope zeroinitializer, ptr %s39
  %t923 = load i64, ptr %l16, !tbaa !24
  %t925 = icmp eq i64 %t923, 1
  br i1 %t925, label %bb173, label %bb174
bb172:
  br label %bb177
bb173:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d29, i32 0, i32 1) }, ptr %l358, !tbaa !27
  br label %bb175
bb174:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, ptr %l358, !tbaa !27
  br label %bb175
bb175:
  %t927 = load { i64, ptr }, ptr %l358, !tbaa !27
  %t928 = load i64, ptr %l16, !tbaa !24
  %t930 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d31, i32 0, i32 1) }, 1
  %t931 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d31, i32 0, i32 1) }, 0
  %t933 = call i64 @__olang_fmt_i64(ptr null, i64 %t928)
  %t934 = add i64 %t931, %t933
  %t935 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d32, i32 0, i32 1) }, 1
  %t936 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d32, i32 0, i32 1) }, 0
  %t937 = add i64 %t934, %t936
  %t939 = extractvalue { i64, ptr } %t927, 1
  %t940 = extractvalue { i64, ptr } %t927, 0
  %t941 = add i64 %t937, %t940
  %t942 = extractvalue { i64, ptr } { i64 89, ptr getelementptr inbounds (<{ i64, [89 x i8] }>, ptr @.d33, i32 0, i32 1) }, 1
  %t943 = extractvalue { i64, ptr } { i64 89, ptr getelementptr inbounds (<{ i64, [89 x i8] }>, ptr @.d33, i32 0, i32 1) }, 0
  %t944 = add i64 %t941, %t943
  %t945 = call ptr @__olang_scope_alloc(ptr %s39, i64 %t944)
  call void @olang_textcopy(ptr %t945, ptr %t930, i64 %t931)
  %t946 = getelementptr i8, ptr %t945, i64 %t931
  %t947 = call i64 @__olang_fmt_i64(ptr %t946, i64 %t928)
  %t948 = getelementptr i8, ptr %t946, i64 %t933
  call void @olang_textcopy(ptr %t948, ptr %t935, i64 %t936)
  %t949 = getelementptr i8, ptr %t948, i64 %t936
  call void @olang_textcopy(ptr %t949, ptr %t939, i64 %t940)
  %t950 = getelementptr i8, ptr %t949, i64 %t940
  call void @olang_textcopy(ptr %t950, ptr %t942, i64 %t943)
  %t951 = insertvalue { i64, ptr } undef, i64 %t944, 0
  %t952 = insertvalue { i64, ptr } %t951, ptr %t945, 1
  %t955 = extractvalue { i64, ptr } %t952, 0
  %t956 = extractvalue { i64, ptr } %t952, 1
  %t957 = mul i64 %t955, 1
  %t958 = call ptr @__olang_scope_alloc(ptr %s39, i64 %t957)
  call void @llvm.memcpy.p0.p0.i64(ptr %t958, ptr %t956, i64 %t957, i1 false)
  %t959 = insertvalue { i64, ptr } undef, i64 %t955, 0
  %t960 = insertvalue { i64, ptr } %t959, ptr %t958, 1
  call void @std_2fio_2estd_2fio_3aWriter_2eWrite(ptr %s0, ptr %s39, ptr %l4, { i64, ptr } %t960)
  br label %bb176
bb176:
  call void @__olang_scope_close(ptr %s39)
  br label %bb177
bb177:
  %t964 = call i32 @std_2fio_2estd_2fio_3aWriter_2eFlush(ptr %s0, ptr %l5)
  store i32 %t964, ptr %l366
  %t965 = icmp ne i32 %t964, 0
  br i1 %t965, label %bb179, label %ok.966, !prof !99
ok.966:
  br label %bb178
bb178:
  br label %bb183
bb179:
  %t967 = load i32, ptr %l366, !tbaa !23
  %t968 = ashr i32 %t967, 16
  %t970 = icmp eq i32 %t968, 1
  store i1 %t970, ptr %l368, !tbaa !21
  %t971 = load i32, ptr %l366, !tbaa !23
  %t972 = ashr i32 %t971, 16
  %t974 = icmp eq i32 %t972, 1
  br i1 %t974, label %bb180, label %bb181
bb180:
  call void @__olang_errpay_pop()
  br label %bb181
bb181:
  br label %bb182
bb182:
  call void @__olang_scope_close(ptr %s0)
  store i32 2, ptr %rv
  br label %ret
bb183:
  %t978 = call i32 @std_2fio_2estd_2fio_3aWriter_2eFlush(ptr %s0, ptr %l4)
  store i32 %t978, ptr %l373
  %t979 = icmp ne i32 %t978, 0
  br i1 %t979, label %bb185, label %ok.980, !prof !99
ok.980:
  br label %bb184
bb184:
  br label %bb189
bb185:
  %t981 = load i32, ptr %l373, !tbaa !23
  %t982 = ashr i32 %t981, 16
  %t984 = icmp eq i32 %t982, 1
  store i1 %t984, ptr %l375, !tbaa !21
  %t985 = load i32, ptr %l373, !tbaa !23
  %t986 = ashr i32 %t985, 16
  %t988 = icmp eq i32 %t986, 1
  br i1 %t988, label %bb186, label %bb187
bb186:
  call void @__olang_errpay_pop()
  br label %bb187
bb187:
  br label %bb188
bb188:
  call void @__olang_scope_close(ptr %s0)
  store i32 2, ptr %rv
  br label %ret
bb189:
  %t991 = load i32, ptr %l15, !tbaa !23
  %t993 = icmp ne i32 %t991, 0
  br i1 %t993, label %bb190, label %bb191
bb190:
  %t995 = load i32, ptr %l15, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t995, ptr %rv
  br label %ret
bb191:
  br label %bb192
bb192:
  %t997 = load i1, ptr %l0, !tbaa !21
  br i1 %t997, label %bb193, label %bb194
bb193:
  %t999 = load i64, ptr %l35, !tbaa !24
  %t1001 = icmp sgt i64 %t999, 0
  store i1 %t1001, ptr %l383, !tbaa !21
  br label %bb195
bb194:
  store i1 false, ptr %l383, !tbaa !21
  br label %bb195
bb195:
  %t1003 = load i1, ptr %l383, !tbaa !21
  br i1 %t1003, label %bb196, label %bb197
bb196:
  store i1 true, ptr %l386, !tbaa !21
  br label %bb198
bb197:
  %t1004 = load i64, ptr %l16, !tbaa !24
  %t1006 = icmp sgt i64 %t1004, 0
  store i1 %t1006, ptr %l386, !tbaa !21
  br label %bb198
bb198:
  %t1008 = load i1, ptr %l386, !tbaa !21
  br i1 %t1008, label %bb199, label %bb200
bb199:
  store i32 1, ptr %l389, !tbaa !23
  br label %bb201
bb200:
  store i32 0, ptr %l389, !tbaa !23
  br label %bb201
bb201:
  call void @__olang_scope_close(ptr %s0)
  %t1009 = load i32, ptr %l389, !tbaa !23
  store i32 %t1009, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2ffix_2eOrder(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l23 = alloca [36 x { i64, ptr }]
  %l28 = alloca i64
  %l31 = alloca i64
  %l51 = alloca i1
  %l53 = alloca i1
  %l62 = alloca { i64, ptr }
  %l63 = alloca { i64, ptr }
  %l64 = alloca i64
  %l65 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l11
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l0
  store %olang.scope zeroinitializer, ptr %s1
  %t3 = insertvalue [2 x { i64, ptr }] undef, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  %t4 = insertvalue [2 x { i64, ptr }] %t3, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t6 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 32, i64 8)
  store [2 x { i64, ptr }] %t4, ptr %t6
  store ptr %t6, ptr %l1
  store i64 0, ptr %l2, !tbaa !24
  %t8 = load ptr, ptr %l1
  store i64 2, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t11 = load i64, ptr %l2, !tbaa !24
  %t12 = load i64, ptr %l3, !tbaa !24
  %t15 = icmp slt i64 %t11, %t12
  %t17 = xor i1 %t15, true
  br i1 %t17, label %bb3, label %bb4
bb3:
  br label %bb25
bb4:
  br label %bb5
bb5:
  %t19 = load ptr, ptr %l1
  %t20 = load i64, ptr %l2, !tbaa !24
  %t23 = getelementptr [2 x { i64, ptr }], ptr %t19, i64 0, i64 %t20
  %t24 = load { i64, ptr }, ptr %t23, !tbaa !37
  store { i64, ptr } %t24, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  call void @llvm.memmove.p0.p0.i64(ptr %l23, ptr @G_2ecompiler_2ffix_2eToolNames, i64 576, i1 false)
  %t26 = load [36 x { i64, ptr }], ptr %l23
  store i64 36, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t28 = load i64, ptr %l6, !tbaa !24
  %t29 = load i64, ptr %l5, !tbaa !24
  %t32 = icmp sgt i64 %t28, %t29
  br i1 %t32, label %bb6, label %bb7
bb6:
  %t34 = load i64, ptr %l7, !tbaa !24
  %t36 = icmp sgt i64 %t34, 0
  br i1 %t36, label %bb8, label %bb9
bb7:
  store i64 0, ptr %l28, !tbaa !24
  br label %bb11
bb8:
  %t38 = load i64, ptr %l6, !tbaa !24
  %t39 = load i64, ptr %l5, !tbaa !24
  %t42 = sub i64 %t38, %t39
  %t43 = load i64, ptr %l7, !tbaa !24
  %t46 = add i64 %t42, %t43
  %t48 = sub i64 %t46, 1
  %t49 = load i64, ptr %l7, !tbaa !24
  %t52 = sdiv i64 %t48, %t49
  store i64 %t52, ptr %l31, !tbaa !24
  br label %bb10
bb9:
  store i64 0, ptr %l31, !tbaa !24
  br label %bb10
bb10:
  %t54 = load i64, ptr %l31, !tbaa !24
  store i64 %t54, ptr %l28, !tbaa !24
  br label %bb11
bb11:
  %t55 = load i64, ptr %l28, !tbaa !24
  store i64 %t55, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb12
bb12:
  store %olang.scope zeroinitializer, ptr %s4
  %t56 = load i64, ptr %l9, !tbaa !24
  %t57 = load i64, ptr %l8, !tbaa !24
  %t60 = icmp slt i64 %t56, %t57
  %t62 = xor i1 %t60, true
  br i1 %t62, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s4)
  br label %bb23
bb14:
  br label %bb15
bb15:
  %t64 = load i64, ptr %l5, !tbaa !24
  %t65 = load i64, ptr %l9, !tbaa !24
  %t66 = load i64, ptr %l7, !tbaa !24
  %t69 = mul i64 %t65, %t66
  %t72 = add i64 %t64, %t69
  store i64 %t72, ptr %l10, !tbaa !24
  %t74 = load i64, ptr %l10, !tbaa !24
  %t76 = getelementptr [36 x i64], ptr @G_2ecompiler_2ffix_2eToolKinds, i64 0, i64 %t74
  %t77 = load i64, ptr %t76, !tbaa !34
  %t79 = call i1 @compiler_2ffix_2edriven(i64 %t77)
  store i1 %t79, ptr %l51
  br label %bb16
bb16:
  %t80 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t81 = load ptr, ptr @__olang_prog_scope
  %t83 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %t81, ptr %s4, { i64, ptr } %t80, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d36, i32 0, i32 1) })
  store i1 %t83, ptr %l53
  br label %bb17
bb17:
  %t84 = load i1, ptr %l51, !tbaa !21
  %t85 = load i1, ptr %l53, !tbaa !21
  %t86 = icmp eq i1 %t84, %t85
  br i1 %t86, label %bb18, label %bb19
bb18:
  %t88 = load i64, ptr %l10, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l0, i64 %t88)
  br label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s4)
  br label %bb22
bb22:
  %t91 = load i64, ptr %l9, !tbaa !24
  %t93 = add i64 %t91, 1
  store i64 %t93, ptr %l9, !tbaa !24
  br label %bb12
bb23:
  br label %bb24
bb24:
  %t95 = load i64, ptr %l2, !tbaa !24
  %t97 = add i64 %t95, 1
  store i64 %t97, ptr %l2, !tbaa !24
  br label %bb2
bb25:
  call void @__olang_scope_close(ptr %s1)
  %t100 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %s0, ptr %s0, ptr %l0)
  store { i64, ptr } %t100, ptr %l62
  br label %bb26
bb26:
  %t101 = load { i64, ptr }, ptr %l62, !tbaa !27
  store { i64, ptr } %t101, ptr %l63, !tbaa !27
  %t102 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t103 = extractvalue { i64, ptr } %t102, 0
  store i64 %t103, ptr %l64, !tbaa !24
  %t104 = load i64, ptr %l64, !tbaa !24
  %t105 = mul i64 %t104, 8
  %t106 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t105)
  %t107 = insertvalue { i64, ptr } undef, i64 %t104, 0
  %t108 = insertvalue { i64, ptr } %t107, ptr %t106, 1
  store { i64, ptr } %t108, ptr %l65, !tbaa !27
  %t109 = getelementptr { i64, ptr }, ptr %l65, i32 0, i32 1
  %t110 = load ptr, ptr %t109, !tbaa !27
  %t111 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t112 = load ptr, ptr %t111, !tbaa !27
  %t113 = load i64, ptr %l64, !tbaa !24
  %t114 = mul i64 %t113, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t110, ptr %t112, i64 %t114, i1 false)
  %t115 = load { i64, ptr }, ptr %l65, !tbaa !27
  store { i64, ptr } %t115, ptr %l63, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t116 = load { i64, ptr }, ptr %l63, !tbaa !27
  store { i64, ptr } %t116, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2ffix_2eToolsDir(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i32
  %l8 = alloca i1
  %l13 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %s0, ptr %s0, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d37, i32 0, i32 1) })
  %t2 = extractvalue { i32, { i64, ptr } } %t1, 1
  %t3 = extractvalue { i32, { i64, ptr } } %t1, 0
  store i32 %t3, ptr %l4
  %t4 = icmp ne i32 %t3, 0
  br i1 %t4, label %bb2, label %ok.5, !prof !99
ok.5:
  store { i64, ptr } %t2, ptr %l3
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t6, ptr %l2, !tbaa !27
  br label %bb6
bb2:
  %t7 = load i32, ptr %l4, !tbaa !23
  %t8 = ashr i32 %t7, 16
  %t10 = icmp eq i32 %t8, 1
  br i1 %t10, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d38, i32 0, i32 1) }, ptr %l2, !tbaa !27
  br label %bb6
bb6:
  %t12 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t12, ptr %l1, !tbaa !27
  %t13 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t15 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t13, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d39, i32 0, i32 1) })
  store i1 %t15, ptr %l8
  br label %bb7
bb7:
  %t16 = load i1, ptr %l8, !tbaa !21
  %t17 = xor i1 %t16, true
  br i1 %t17, label %bb8, label %bb9
bb8:
  %t19 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t19, 1
  %t22 = extractvalue { i64, ptr } %t19, 0
  %t23 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t22)
  call void @olang_textcopy(ptr %t23, ptr %t21, i64 %t22)
  %t24 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t25 = insertvalue { i64, ptr } %t24, ptr %t23, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t25, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t29 = call { i64, ptr } @std_2ffilepath_2eDir(ptr %v0, ptr %s0, { i64, ptr } %a0)
  store { i64, ptr } %t29, ptr %l13
  br label %bb11
bb11:
  %t30 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t30, 1
  %t32 = extractvalue { i64, ptr } %t30, 0
  %t33 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d40, i32 0, i32 1) }, 1
  %t34 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d40, i32 0, i32 1) }, 0
  %t35 = add i64 %t32, %t34
  %t36 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t35)
  call void @olang_textcopy(ptr %t36, ptr %t31, i64 %t32)
  %t37 = getelementptr i8, ptr %t36, i64 %t32
  call void @olang_textcopy(ptr %t37, ptr %t33, i64 %t34)
  %t38 = insertvalue { i64, ptr } undef, i64 %t35, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr %t36, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t39, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2ffix_2earguments(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, i64 %a1, { i64, ptr } %a2, { i64, ptr } %a3, { i64, ptr } %a4) #0 {
entry:
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %lp5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca ptr
  %l12 = alloca i64
  %l21 = alloca ptr
  %l22 = alloca i64
  %l31 = alloca ptr
  %l32 = alloca i64
  %l40 = alloca ptr
  %l41 = alloca i64
  %l53 = alloca { i64, ptr }
  %l56 = alloca ptr
  %l57 = alloca i64
  %l65 = alloca { i64, ptr }
  %l66 = alloca { i64, ptr }
  %l67 = alloca i64
  %l68 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store i64 %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v4, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l10
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 32, i64 8)
  store ptr %t2, ptr %lp5
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10
  %t4 = load ptr, ptr %lp5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  %t5 = load ptr, ptr %lp5
  store ptr %t5, ptr %l11, !tbaa !29
  %t6 = ptrtoint ptr %v4 to i64
  store i64 %t6, ptr %l12, !tbaa !24
  %t7 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = call ptr @__olang_region_make(ptr %v4)
  %t10 = ptrtoint ptr %t9 to i64
  store i64 %t10, ptr %l12, !tbaa !24
  br label %bb3
bb3:
  %t13 = extractvalue { i64, ptr } %a0, 1
  %t14 = extractvalue { i64, ptr } %a0, 0
  %t15 = load i64, ptr %l12
  %t16 = inttoptr i64 %t15 to ptr
  %t17 = call ptr @__olang_scope_alloc(ptr %t16, i64 %t14)
  call void @olang_textcopy(ptr %t17, ptr %t13, i64 %t14)
  %t18 = insertvalue { i64, ptr } undef, i64 %t14, 0
  %t19 = insertvalue { i64, ptr } %t18, ptr %t17, 1
  %t21 = load i64, ptr %l12
  %t22 = inttoptr i64 %t21 to ptr
  %t23 = extractvalue { i64, ptr } %t19, 0
  %t24 = extractvalue { i64, ptr } %t19, 1
  %t25 = mul i64 %t23, 1
  %t26 = call ptr @__olang_scope_alloc(ptr %t22, i64 %t25)
  call void @llvm.memcpy.p0.p0.i64(ptr %t26, ptr %t24, i64 %t25, i1 false)
  %t27 = insertvalue { i64, ptr } undef, i64 %t23, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t26, 1
  %t29 = load ptr, ptr %l11, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v4, ptr %v4, ptr %t29, { i64, ptr } %t28)
  br label %bb4
bb4:
  %t31 = load i64, ptr %l1, !tbaa !24
  %t32 = load i64, ptr @G_2ecompiler_2ffix_2eStdTool, !tbaa !24
  %t35 = icmp eq i64 %t31, %t32
  br i1 %t35, label %bb5, label %bb6
bb5:
  %t37 = load ptr, ptr %lp5
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v4, ptr %v4, ptr %t37, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d41, i32 0, i32 1) })
  br label %bb7
bb6:
  %t39 = load i64, ptr %l1, !tbaa !24
  %t40 = load i64, ptr @G_2ecompiler_2ffix_2eDrivenOpt, !tbaa !24
  %t43 = icmp eq i64 %t39, %t40
  br i1 %t43, label %bb11, label %bb12
bb7:
  %t45 = load ptr, ptr %lp5
  store ptr %t45, ptr %l21, !tbaa !29
  %t46 = ptrtoint ptr %v4 to i64
  store i64 %t46, ptr %l22, !tbaa !24
  %t47 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t47, label %bb8, label %bb9
bb8:
  %t49 = call ptr @__olang_region_make(ptr %v4)
  %t50 = ptrtoint ptr %t49 to i64
  store i64 %t50, ptr %l22, !tbaa !24
  br label %bb9
bb9:
  %t53 = extractvalue { i64, ptr } %a3, 1
  %t54 = extractvalue { i64, ptr } %a3, 0
  %t55 = load i64, ptr %l22
  %t56 = inttoptr i64 %t55 to ptr
  %t57 = call ptr @__olang_scope_alloc(ptr %t56, i64 %t54)
  call void @olang_textcopy(ptr %t57, ptr %t53, i64 %t54)
  %t58 = insertvalue { i64, ptr } undef, i64 %t54, 0
  %t59 = insertvalue { i64, ptr } %t58, ptr %t57, 1
  %t61 = load i64, ptr %l22
  %t62 = inttoptr i64 %t61 to ptr
  %t63 = extractvalue { i64, ptr } %t59, 0
  %t64 = extractvalue { i64, ptr } %t59, 1
  %t65 = mul i64 %t63, 1
  %t66 = call ptr @__olang_scope_alloc(ptr %t62, i64 %t65)
  call void @llvm.memcpy.p0.p0.i64(ptr %t66, ptr %t64, i64 %t65, i1 false)
  %t67 = insertvalue { i64, ptr } undef, i64 %t63, 0
  %t68 = insertvalue { i64, ptr } %t67, ptr %t66, 1
  %t69 = load ptr, ptr %l21, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v4, ptr %v4, ptr %t69, { i64, ptr } %t68)
  br label %bb10
bb10:
  br label %bb24
bb11:
  %t71 = load ptr, ptr %lp5
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v4, ptr %v4, ptr %t71, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d42, i32 0, i32 1) })
  br label %bb13
bb12:
  %t73 = load i64, ptr %l1, !tbaa !24
  %t74 = load i64, ptr @G_2ecompiler_2ffix_2eDrivenArg, !tbaa !24
  %t77 = icmp eq i64 %t73, %t74
  br i1 %t77, label %bb17, label %bb18
bb13:
  %t79 = load ptr, ptr %lp5
  store ptr %t79, ptr %l31, !tbaa !29
  %t80 = ptrtoint ptr %v4 to i64
  store i64 %t80, ptr %l32, !tbaa !24
  %t81 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t81, label %bb14, label %bb15
bb14:
  %t83 = call ptr @__olang_region_make(ptr %v4)
  %t84 = ptrtoint ptr %t83 to i64
  store i64 %t84, ptr %l32, !tbaa !24
  br label %bb15
bb15:
  %t85 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t87 = extractvalue { i64, ptr } %t85, 1
  %t88 = extractvalue { i64, ptr } %t85, 0
  %t89 = load i64, ptr %l32
  %t90 = inttoptr i64 %t89 to ptr
  %t91 = call ptr @__olang_scope_alloc(ptr %t90, i64 %t88)
  call void @olang_textcopy(ptr %t91, ptr %t87, i64 %t88)
  %t92 = insertvalue { i64, ptr } undef, i64 %t88, 0
  %t93 = insertvalue { i64, ptr } %t92, ptr %t91, 1
  %t95 = load i64, ptr %l32
  %t96 = inttoptr i64 %t95 to ptr
  %t97 = extractvalue { i64, ptr } %t93, 0
  %t98 = extractvalue { i64, ptr } %t93, 1
  %t99 = mul i64 %t97, 1
  %t100 = call ptr @__olang_scope_alloc(ptr %t96, i64 %t99)
  call void @llvm.memcpy.p0.p0.i64(ptr %t100, ptr %t98, i64 %t99, i1 false)
  %t101 = insertvalue { i64, ptr } undef, i64 %t97, 0
  %t102 = insertvalue { i64, ptr } %t101, ptr %t100, 1
  %t103 = load ptr, ptr %l31, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v4, ptr %v4, ptr %t103, { i64, ptr } %t102)
  br label %bb16
bb16:
  br label %bb23
bb17:
  %t105 = load ptr, ptr %lp5
  store ptr %t105, ptr %l40, !tbaa !29
  %t106 = ptrtoint ptr %v4 to i64
  store i64 %t106, ptr %l41, !tbaa !24
  %t107 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t107, label %bb19, label %bb20
bb18:
  br label %bb22
bb19:
  %t109 = call ptr @__olang_region_make(ptr %v4)
  %t110 = ptrtoint ptr %t109 to i64
  store i64 %t110, ptr %l41, !tbaa !24
  br label %bb20
bb20:
  %t111 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t113 = extractvalue { i64, ptr } %t111, 1
  %t114 = extractvalue { i64, ptr } %t111, 0
  %t115 = load i64, ptr %l41
  %t116 = inttoptr i64 %t115 to ptr
  %t117 = call ptr @__olang_scope_alloc(ptr %t116, i64 %t114)
  call void @olang_textcopy(ptr %t117, ptr %t113, i64 %t114)
  %t118 = insertvalue { i64, ptr } undef, i64 %t114, 0
  %t119 = insertvalue { i64, ptr } %t118, ptr %t117, 1
  %t121 = load i64, ptr %l41
  %t122 = inttoptr i64 %t121 to ptr
  %t123 = extractvalue { i64, ptr } %t119, 0
  %t124 = extractvalue { i64, ptr } %t119, 1
  %t125 = mul i64 %t123, 1
  %t126 = call ptr @__olang_scope_alloc(ptr %t122, i64 %t125)
  call void @llvm.memcpy.p0.p0.i64(ptr %t126, ptr %t124, i64 %t125, i1 false)
  %t127 = insertvalue { i64, ptr } undef, i64 %t123, 0
  %t128 = insertvalue { i64, ptr } %t127, ptr %t126, 1
  %t129 = load ptr, ptr %l40, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v4, ptr %v4, ptr %t129, { i64, ptr } %t128)
  br label %bb21
bb21:
  br label %bb22
bb22:
  br label %bb23
bb23:
  br label %bb24
bb24:
  store { i64, ptr } %a4, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t133 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t135 = extractvalue { i64, ptr } %t133, 0
  store i64 %t135, ptr %l8, !tbaa !24
  br label %bb25
bb25:
  %t137 = load i64, ptr %l7, !tbaa !24
  %t138 = load i64, ptr %l8, !tbaa !24
  %t141 = icmp slt i64 %t137, %t138
  %t143 = xor i1 %t141, true
  br i1 %t143, label %bb26, label %bb27
bb26:
  br label %bb33
bb27:
  br label %bb28
bb28:
  %t145 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t145, ptr %l53, !tbaa !27
  %t146 = load i64, ptr %l7, !tbaa !24
  %t148 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !27
  %t150 = getelementptr { i64, ptr }, ptr %t149, i64 %t146
  %t151 = load { i64, ptr }, ptr %t150, !tbaa !37
  store { i64, ptr } %t151, ptr %l9, !tbaa !27
  %t153 = load ptr, ptr %lp5
  store ptr %t153, ptr %l56, !tbaa !29
  %t154 = ptrtoint ptr %v4 to i64
  store i64 %t154, ptr %l57, !tbaa !24
  %t155 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t155, label %bb29, label %bb30
bb29:
  %t157 = call ptr @__olang_region_make(ptr %v4)
  %t158 = ptrtoint ptr %t157 to i64
  store i64 %t158, ptr %l57, !tbaa !24
  br label %bb30
bb30:
  %t159 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t161 = extractvalue { i64, ptr } %t159, 1
  %t162 = extractvalue { i64, ptr } %t159, 0
  %t163 = load i64, ptr %l57
  %t164 = inttoptr i64 %t163 to ptr
  %t165 = call ptr @__olang_scope_alloc(ptr %t164, i64 %t162)
  call void @olang_textcopy(ptr %t165, ptr %t161, i64 %t162)
  %t166 = insertvalue { i64, ptr } undef, i64 %t162, 0
  %t167 = insertvalue { i64, ptr } %t166, ptr %t165, 1
  %t169 = load i64, ptr %l57
  %t170 = inttoptr i64 %t169 to ptr
  %t171 = extractvalue { i64, ptr } %t167, 0
  %t172 = extractvalue { i64, ptr } %t167, 1
  %t173 = mul i64 %t171, 1
  %t174 = call ptr @__olang_scope_alloc(ptr %t170, i64 %t173)
  call void @llvm.memcpy.p0.p0.i64(ptr %t174, ptr %t172, i64 %t173, i1 false)
  %t175 = insertvalue { i64, ptr } undef, i64 %t171, 0
  %t176 = insertvalue { i64, ptr } %t175, ptr %t174, 1
  %t177 = load ptr, ptr %l56, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v4, ptr %v4, ptr %t177, { i64, ptr } %t176)
  br label %bb31
bb31:
  br label %bb32
bb32:
  %t179 = load i64, ptr %l7, !tbaa !24
  %t181 = add i64 %t179, 1
  store i64 %t181, ptr %l7, !tbaa !24
  br label %bb25
bb33:
  %t183 = load ptr, ptr %lp5
  %t185 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v4, ptr %v4, ptr %t183)
  store { i64, ptr } %t185, ptr %l65
  br label %bb34
bb34:
  %t186 = load { i64, ptr }, ptr %l65, !tbaa !27
  store { i64, ptr } %t186, ptr %l66, !tbaa !27
  %t187 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t188 = extractvalue { i64, ptr } %t187, 0
  store i64 %t188, ptr %l67, !tbaa !24
  %t189 = load i64, ptr %l67, !tbaa !24
  %t190 = mul i64 %t189, 16
  %t191 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t190)
  %t192 = insertvalue { i64, ptr } undef, i64 %t189, 0
  %t193 = insertvalue { i64, ptr } %t192, ptr %t191, 1
  store { i64, ptr } %t193, ptr %l68, !tbaa !27
  %t194 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t195 = load ptr, ptr %t194, !tbaa !27
  %t196 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t197 = load ptr, ptr %t196, !tbaa !27
  %t198 = load i64, ptr %l67, !tbaa !24
  %t199 = mul i64 %t198, 16
  call void @llvm.memmove.p0.p0.i64(ptr %t195, ptr %t197, i64 %t199, i1 false)
  %t200 = load { i64, ptr }, ptr %l68, !tbaa !27
  store { i64, ptr } %t200, ptr %l66, !tbaa !27
  %t201 = load { i64, ptr }, ptr %l66, !tbaa !27
  store { i64, ptr } %t201, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2ffix_2ebuiltBy(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca %"std/os:FileInfo"
  %l2 = alloca %"std/os:FileInfo"
  %l4 = alloca %"std/os:FileInfo"
  %l5 = alloca i32
  %l7 = alloca i1
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call { i32, %"std/os:FileInfo" } @std_2fos_2eFileInfo_2eStat(ptr %v0, { i64, ptr } %t1)
  %t4 = extractvalue { i32, %"std/os:FileInfo" } %t3, 1
  %t5 = extractvalue { i32, %"std/os:FileInfo" } %t3, 0
  store i32 %t5, ptr %l5
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store %"std/os:FileInfo" %t4, ptr %l4
  br label %bb1
bb1:
  %t8 = load %"std/os:FileInfo", ptr %l4
  store %"std/os:FileInfo" %t8, ptr %l2
  br label %bb6
bb2:
  %t9 = load i32, ptr %l5, !tbaa !23
  %t10 = ashr i32 %t9, 16
  %t12 = icmp eq i32 %t10, 1
  store i1 %t12, ptr %l7, !tbaa !21
  %t13 = load i32, ptr %l5, !tbaa !23
  %t14 = ashr i32 %t13, 16
  %t16 = icmp eq i32 %t14, 1
  br i1 %t16, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  %t18 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t20 = extractvalue { i64, ptr } %t18, 1
  %t21 = extractvalue { i64, ptr } %t18, 0
  %t22 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t21)
  call void @olang_textcopy(ptr %t22, ptr %t20, i64 %t21)
  %t23 = insertvalue { i64, ptr } undef, i64 %t21, 0
  %t24 = insertvalue { i64, ptr } %t23, ptr %t22, 1
  store { i64, ptr } %t24, ptr %rv
  br label %ret
bb6:
  %t26 = load %"std/os:FileInfo", ptr %l2
  store %"std/os:FileInfo" %t26, ptr %l1
  %t27 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t28 = getelementptr %"std/os:FileInfo", ptr %l1, i32 0, i32 1
  %t29 = load i64, ptr %t28, !tbaa !24
  %t30 = getelementptr %"std/os:FileInfo", ptr %l1, i32 0, i32 2
  %t31 = load i64, ptr %t30, !tbaa !24
  %t33 = extractvalue { i64, ptr } %t27, 1
  %t34 = extractvalue { i64, ptr } %t27, 0
  %t35 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d43, i32 0, i32 1) }, 1
  %t36 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d43, i32 0, i32 1) }, 0
  %t37 = add i64 %t34, %t36
  %t39 = call i64 @__olang_fmt_i64(ptr null, i64 %t29)
  %t40 = add i64 %t37, %t39
  %t41 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d43, i32 0, i32 1) }, 1
  %t42 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d43, i32 0, i32 1) }, 0
  %t43 = add i64 %t40, %t42
  %t45 = call i64 @__olang_fmt_i64(ptr null, i64 %t31)
  %t46 = add i64 %t43, %t45
  %t47 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d44, i32 0, i32 1) }, 1
  %t48 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d44, i32 0, i32 1) }, 0
  %t49 = add i64 %t46, %t48
  %t50 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t49)
  call void @olang_textcopy(ptr %t50, ptr %t33, i64 %t34)
  %t51 = getelementptr i8, ptr %t50, i64 %t34
  call void @olang_textcopy(ptr %t51, ptr %t35, i64 %t36)
  %t52 = getelementptr i8, ptr %t51, i64 %t36
  %t53 = call i64 @__olang_fmt_i64(ptr %t52, i64 %t29)
  %t54 = getelementptr i8, ptr %t52, i64 %t39
  call void @olang_textcopy(ptr %t54, ptr %t41, i64 %t42)
  %t55 = getelementptr i8, ptr %t54, i64 %t42
  %t56 = call i64 @__olang_fmt_i64(ptr %t55, i64 %t31)
  %t57 = getelementptr i8, ptr %t55, i64 %t45
  call void @olang_textcopy(ptr %t57, ptr %t47, i64 %t48)
  %t58 = insertvalue { i64, ptr } undef, i64 %t49, 0
  %t59 = insertvalue { i64, ptr } %t58, ptr %t50, 1
  store { i64, ptr } %t59, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2ffix_2ebyHand(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i64
  %l2 = alloca i1
  %l3 = alloca %"std/prelude/text:LineIter"
  %l4 = alloca { i64, ptr }
  %l6 = alloca %"std/prelude/text:LineIter"
  %l7 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca i32
  %l12 = alloca i1
  %l14 = alloca i1
  %l18 = alloca i1
  %l20 = alloca i1
  %l22 = alloca i1
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l1, !tbaa !24
  store i1 false, ptr %l2, !tbaa !21
  %t3 = call %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %v0, ptr %v0, { i64, ptr } %a0)
  store %"std/prelude/text:LineIter" %t3, ptr %l6
  br label %bb1
bb1:
  %t4 = load %"std/prelude/text:LineIter", ptr %l6
  store %"std/prelude/text:LineIter" %t4, ptr %l3
  br label %bb2
bb2:
  store %olang.scope zeroinitializer, ptr %s2
  %t6 = call { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %v0, ptr %v0, ptr %l3)
  %t7 = extractvalue { i32, { i64, ptr } } %t6, 1
  %t8 = extractvalue { i32, { i64, ptr } } %t6, 0
  store i32 %t8, ptr %l10
  %t9 = icmp ne i32 %t8, 0
  br i1 %t9, label %bb4, label %ok.10, !prof !99
ok.10:
  store { i64, ptr } %t7, ptr %l9
  br label %bb3
bb3:
  %t11 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t11, ptr %l7, !tbaa !27
  br label %bb6
bb4:
  %t12 = load i32, ptr %l10, !tbaa !23
  %t13 = ashr i32 %t12, 16
  %t15 = icmp eq i32 %t13, 1
  store i1 %t15, ptr %l12, !tbaa !21
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s2)
  br label %bb23
bb6:
  %t16 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t16, ptr %l4, !tbaa !27
  %t17 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t19 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s2, { i64, ptr } %t17, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d45, i32 0, i32 1) })
  store i1 %t19, ptr %l14
  br label %bb7
bb7:
  %t20 = load i1, ptr %l14, !tbaa !21
  br i1 %t20, label %bb8, label %bb9
bb8:
  %t21 = load i64, ptr %l1, !tbaa !24
  %t23 = add i64 %t21, 1
  store i64 %t23, ptr %l1, !tbaa !24
  br label %bb21
bb9:
  store %olang.scope zeroinitializer, ptr %s4
  %t25 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t27 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s4, { i64, ptr } %t25, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d46, i32 0, i32 1) })
  store i1 %t27, ptr %l18
  br label %bb10
bb10:
  %t28 = load i1, ptr %l18, !tbaa !21
  br i1 %t28, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l2, !tbaa !21
  br label %bb20
bb12:
  store %olang.scope zeroinitializer, ptr %s6
  %t29 = load i1, ptr %l2, !tbaa !21
  br i1 %t29, label %bb13, label %bb14
bb13:
  %t31 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t33 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s6, { i64, ptr } %t31, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d47, i32 0, i32 1) })
  store i1 %t33, ptr %l22
  br label %bb15
bb14:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb16
bb15:
  %t34 = load i1, ptr %l22, !tbaa !21
  store i1 %t34, ptr %l20, !tbaa !21
  br label %bb16
bb16:
  %t35 = load i1, ptr %l20, !tbaa !21
  br i1 %t35, label %bb17, label %bb18
bb17:
  %t36 = load i64, ptr %l1, !tbaa !24
  %t38 = add i64 %t36, 1
  store i64 %t38, ptr %l1, !tbaa !24
  br label %bb19
bb18:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s6)
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s4)
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s2)
  br label %bb22
bb22:
  br label %bb2
bb23:
  %t40 = load i64, ptr %l1, !tbaa !24
  store i64 %t40, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2ffix_2edriven(i64 %a0) #0 {
entry:
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load i64, ptr @G_2ecompiler_2ffix_2eDrivenOpt, !tbaa !24
  %t5 = icmp sge i64 %a0, %t2
  store i1 %t5, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2ffix_2eensureBuilt(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, { i64, ptr } %a4, ptr %a5) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l6 = alloca [2 x { i64, ptr }]
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca [2 x { i64, ptr }]
  %l11 = alloca i64
  %l12 = alloca [2 x { i64, ptr }]
  %l13 = alloca i64
  %l14 = alloca { i32, { i64, [2 x i64] } }
  %l15 = alloca { i64, ptr }
  %l16 = alloca [2 x { i64, ptr }]
  %l17 = alloca { i64, ptr }
  %l18 = alloca [2 x { i64, ptr }]
  %l19 = alloca [5 x { i64, ptr }]
  %l20 = alloca { i32, { i64, [2 x i64] } }
  %l21 = alloca %"std/os:Output"
  %l22 = alloca { i32, { i64, [2 x i64] } }
  %l23 = alloca { i64, ptr }
  %l24 = alloca i64
  %l32 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
  %l38 = alloca i32
  %l42 = alloca i64
  %l47 = alloca { i64, ptr }
  %l49 = alloca i64
  %l50 = alloca i64
  %l52 = alloca i64
  %l57 = alloca { i64, ptr }
  %l59 = alloca i64
  %l60 = alloca i64
  %l62 = alloca i64
  %l63 = alloca { i64, ptr }
  %l65 = alloca { i64, ptr }
  %l67 = alloca i1
  %l68 = alloca i1
  %l70 = alloca i64
  %l73 = alloca { i64, ptr }
  %l78 = alloca { i64, ptr }
  %l79 = alloca i32
  %l81 = alloca i1
  %l82 = alloca { i32, { i64, [2 x i64] } }
  %l83 = alloca { i32, { i64, [2 x i64] } }
  %l84 = alloca i32
  %l89 = alloca { i32, { i64, [2 x i64] } }
  %l90 = alloca { i32, { i64, [2 x i64] } }
  %l93 = alloca ptr
  %l94 = alloca { i64, ptr }
  %l95 = alloca { i32, { i64, [2 x i64] } }
  %l97 = alloca { i32, { i64, [2 x i64] } }
  %l98 = alloca i32
  %l113 = alloca { i64, ptr }
  %l117 = alloca { i64, ptr }
  %l118 = alloca i64
  %l126 = alloca { i64, ptr }
  %l127 = alloca %"std/os:Output"
  %l128 = alloca { i64, ptr }
  %l129 = alloca { i64, ptr }
  %l130 = alloca i64
  %l132 = alloca { i64, ptr }
  %l133 = alloca i64
  %l141 = alloca { i64, ptr }
  %l146 = alloca { i64, ptr }
  %l148 = alloca %"std/os:Output"
  %l149 = alloca i32
  %l151 = alloca i1
  %l152 = alloca { i32, { i64, [2 x i64] } }
  %l153 = alloca { i32, { i64, [2 x i64] } }
  %l154 = alloca i32
  %l159 = alloca { i32, { i64, [2 x i64] } }
  %l160 = alloca { i32, { i64, [2 x i64] } }
  %l163 = alloca ptr
  %l164 = alloca { i64, ptr }
  %l165 = alloca { i32, { i64, [2 x i64] } }
  %l167 = alloca { i32, { i64, [2 x i64] } }
  %l168 = alloca i32
  %l183 = alloca { i64, ptr }
  %l186 = alloca i32
  %l188 = alloca i32
  %l190 = alloca i1
  %l202 = alloca i32
  %l204 = alloca i32
  %l206 = alloca i1
  %l211 = alloca i32
  %l213 = alloca i1
  %l214 = alloca { i32, { i64, [2 x i64] } }
  %l215 = alloca { i32, { i64, [2 x i64] } }
  %l216 = alloca i32
  %l221 = alloca { i32, { i64, [2 x i64] } }
  %l222 = alloca { i32, { i64, [2 x i64] } }
  %l225 = alloca ptr
  %l226 = alloca { i64, ptr }
  %l227 = alloca { i32, { i64, [2 x i64] } }
  %l229 = alloca { i32, { i64, [2 x i64] } }
  %l230 = alloca i32
  %l245 = alloca { i64, ptr }
  %l248 = alloca i32
  %l250 = alloca i32
  %l252 = alloca i1
  %l255 = alloca { i64, ptr }
  %l257 = alloca { i64, ptr }
  %l260 = alloca i32
  %l262 = alloca i1
  %l266 = alloca i32
  %l268 = alloca i1
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s6 = alloca %olang.builder
  %s6room = alloca [64 x i8], align 8
  %s9 = alloca %olang.scope
  %s10 = alloca %olang.builder
  %s10room = alloca [64 x i8], align 8
  %s13 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s18 = alloca %olang.builder
  %s18room = alloca [64 x i8], align 8
  %rv = alloca i32
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  store { i64, ptr } %a4, ptr %l4
  store ptr %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t1, ptr %l23, !tbaa !27
  %t2 = ptrtoint ptr %s0 to i64
  store i64 %t2, ptr %l24, !tbaa !24
  %t3 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_202_3e_2e_2d1
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = call ptr @__olang_region_make(ptr %s0)
  %t6 = ptrtoint ptr %t5 to i64
  store i64 %t6, ptr %l24, !tbaa !24
  br label %bb2
bb2:
  %t7 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t8 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d48, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d48, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %t7, 1
  %t12 = extractvalue { i64, ptr } %t7, 0
  %t13 = add i64 %t9, %t12
  %t14 = load i64, ptr %l24
  %t15 = inttoptr i64 %t14 to ptr
  %t16 = call ptr @__olang_scope_alloc(ptr %t15, i64 %t13)
  call void @olang_textcopy(ptr %t16, ptr %t8, i64 %t9)
  %t17 = getelementptr i8, ptr %t16, i64 %t9
  call void @olang_textcopy(ptr %t17, ptr %t11, i64 %t12)
  %t18 = insertvalue { i64, ptr } undef, i64 %t13, 0
  %t19 = insertvalue { i64, ptr } %t18, ptr %t16, 1
  %t21 = load i64, ptr %l24
  %t22 = inttoptr i64 %t21 to ptr
  %t23 = extractvalue { i64, ptr } %t19, 0
  %t24 = extractvalue { i64, ptr } %t19, 1
  %t25 = mul i64 %t23, 1
  %t26 = call ptr @__olang_scope_alloc(ptr %t22, i64 %t25)
  call void @llvm.memcpy.p0.p0.i64(ptr %t26, ptr %t24, i64 %t25, i1 false)
  %t27 = insertvalue { i64, ptr } undef, i64 %t23, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t26, 1
  %t29 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t30 = insertvalue [2 x { i64, ptr }] undef, { i64, ptr } %t29, 0
  %t32 = insertvalue [2 x { i64, ptr }] %t30, { i64, ptr } %t28, 1
  store [2 x { i64, ptr }] %t32, ptr %l6
  %t35 = insertvalue { i64, ptr } undef, i64 2, 0
  %t36 = insertvalue { i64, ptr } %t35, ptr %l6, 1
  %t38 = call { i64, ptr } @std_2ffilepath_2eJoin(ptr %s0, ptr %s0, { i64, ptr } %t36)
  store { i64, ptr } %t38, ptr %l32
  br label %bb3
bb3:
  %t39 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t39, ptr %l7, !tbaa !27
  %t40 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t42 = extractvalue { i64, ptr } %t40, 1
  %t43 = extractvalue { i64, ptr } %t40, 0
  %t44 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d49, i32 0, i32 1) }, 1
  %t45 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d49, i32 0, i32 1) }, 0
  %t46 = add i64 %t43, %t45
  %t47 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t46)
  call void @olang_textcopy(ptr %t47, ptr %t42, i64 %t43)
  %t48 = getelementptr i8, ptr %t47, i64 %t43
  call void @olang_textcopy(ptr %t48, ptr %t44, i64 %t45)
  %t49 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t50 = insertvalue { i64, ptr } %t49, ptr %t47, 1
  store { i64, ptr } %t50, ptr %l8, !tbaa !27
  %t52 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t54 = call { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %s0, ptr %s0, { i64, ptr } %t52)
  %t55 = extractvalue { i32, { i64, ptr } } %t54, 1
  %t56 = extractvalue { i32, { i64, ptr } } %t54, 0
  store i32 %t56, ptr %l38
  %t57 = icmp ne i32 %t56, 0
  br i1 %t57, label %bb5, label %ok.58, !prof !99
ok.58:
  store { i64, ptr } %t55, ptr %l37
  br label %bb4
bb4:
  %t59 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t59, ptr %l35, !tbaa !27
  br label %bb9
bb5:
  %t60 = load i32, ptr %l38, !tbaa !23
  %t61 = ashr i32 %t60, 16
  %t63 = icmp eq i32 %t61, 1
  br i1 %t63, label %bb6, label %bb7
bb6:
  call void @__olang_errpay_pop()
  br label %bb7
bb7:
  br label %bb8
bb8:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d50, i32 0, i32 1) }, ptr %l35, !tbaa !27
  br label %bb9
bb9:
  %t65 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t65, ptr %l9, !tbaa !27
  %t66 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t68 = call i64 @compiler_2ffix_2enewest(ptr %v4, { i64, ptr } %t66)
  store i64 %t68, ptr %l42
  br label %bb10
bb10:
  %t69 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t71 = insertvalue [2 x { i64, ptr }] undef, { i64, ptr } %t69, 0
  %t72 = insertvalue [2 x { i64, ptr }] %t71, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d51, i32 0, i32 1) }, 1
  store [2 x { i64, ptr }] %t72, ptr %l10
  %t75 = insertvalue { i64, ptr } undef, i64 2, 0
  %t76 = insertvalue { i64, ptr } %t75, ptr %l10, 1
  %t78 = call { i64, ptr } @std_2ffilepath_2eJoin(ptr %s0, ptr %s0, { i64, ptr } %t76)
  store { i64, ptr } %t78, ptr %l47
  br label %bb11
bb11:
  %t79 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t80 = extractvalue { i64, ptr } %t79, 0
  %t81 = extractvalue { i64, ptr } %t79, 1
  %t82 = mul i64 %t80, 1
  %t83 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t82)
  call void @llvm.memcpy.p0.p0.i64(ptr %t83, ptr %t81, i64 %t82, i1 false)
  %t84 = insertvalue { i64, ptr } undef, i64 %t80, 0
  %t85 = insertvalue { i64, ptr } %t84, ptr %t83, 1
  %t87 = call i64 @compiler_2ffix_2enewest(ptr %s0, { i64, ptr } %t85)
  store i64 %t87, ptr %l49
  br label %bb12
bb12:
  %t88 = load i64, ptr %l42, !tbaa !24
  %t89 = load i64, ptr %l49, !tbaa !24
  %t90 = call i64 @std_2fprelude_2fnumber_2eI64_2eMax_3cI64_3e(i64 %t88, i64 %t89)
  store i64 %t90, ptr %l50
  br label %bb13
bb13:
  %t91 = load i64, ptr %l50, !tbaa !24
  store i64 %t91, ptr %l11, !tbaa !24
  %t92 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t94 = call i64 @compiler_2ffix_2enewest(ptr %v1, { i64, ptr } %t92)
  store i64 %t94, ptr %l52
  br label %bb14
bb14:
  %t95 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t97 = insertvalue [2 x { i64, ptr }] undef, { i64, ptr } %t95, 0
  %t98 = insertvalue [2 x { i64, ptr }] %t97, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d52, i32 0, i32 1) }, 1
  store [2 x { i64, ptr }] %t98, ptr %l12
  %t101 = insertvalue { i64, ptr } undef, i64 2, 0
  %t102 = insertvalue { i64, ptr } %t101, ptr %l12, 1
  %t104 = call { i64, ptr } @std_2ffilepath_2eJoin(ptr %s0, ptr %s0, { i64, ptr } %t102)
  store { i64, ptr } %t104, ptr %l57
  br label %bb15
bb15:
  %t105 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t106 = extractvalue { i64, ptr } %t105, 0
  %t107 = extractvalue { i64, ptr } %t105, 1
  %t108 = mul i64 %t106, 1
  %t109 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t108)
  call void @llvm.memcpy.p0.p0.i64(ptr %t109, ptr %t107, i64 %t108, i1 false)
  %t110 = insertvalue { i64, ptr } undef, i64 %t106, 0
  %t111 = insertvalue { i64, ptr } %t110, ptr %t109, 1
  %t113 = call i64 @compiler_2ffix_2enewest(ptr %s0, { i64, ptr } %t111)
  store i64 %t113, ptr %l59
  br label %bb16
bb16:
  %t114 = load i64, ptr %l52, !tbaa !24
  %t115 = load i64, ptr %l59, !tbaa !24
  %t116 = call i64 @std_2fprelude_2fnumber_2eI64_2eMax_3cI64_3e(i64 %t114, i64 %t115)
  store i64 %t116, ptr %l60
  br label %bb17
bb17:
  %t117 = load i64, ptr %l11, !tbaa !24
  %t118 = load i64, ptr %l60, !tbaa !24
  %t120 = call i64 @std_2fprelude_2fnumber_2eI64_2eMax_3cI64_3e(i64 %t118, i64 %t117)
  store i64 %t120, ptr %l62
  br label %bb18
bb18:
  %t121 = load i64, ptr %l62, !tbaa !24
  store i64 %t121, ptr %l13, !tbaa !24
  %t122 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t122, ptr %l63, !tbaa !27
  %t123 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t125 = call { i64, ptr } @compiler_2ffix_2ebuiltBy(ptr %v0, ptr %s0, { i64, ptr } %t123)
  store { i64, ptr } %t125, ptr %l65
  br label %bb19
bb19:
  %t126 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t127 = extractvalue { i64, ptr } %t126, 0
  %t128 = extractvalue { i64, ptr } %t126, 1
  %t129 = mul i64 %t127, 1
  %t130 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t129)
  call void @llvm.memcpy.p0.p0.i64(ptr %t130, ptr %t128, i64 %t129, i1 false)
  %t131 = insertvalue { i64, ptr } undef, i64 %t127, 0
  %t132 = insertvalue { i64, ptr } %t131, ptr %t130, 1
  %t133 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t135 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t133, { i64, ptr } %t132)
  store i1 %t135, ptr %l67
  br label %bb20
bb20:
  %t136 = load i1, ptr %l67, !tbaa !21
  br i1 %t136, label %bb21, label %bb22
bb21:
  %t137 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t139 = call i64 @compiler_2ffix_2emtime(ptr %s0, { i64, ptr } %t137)
  store i64 %t139, ptr %l70
  br label %bb23
bb22:
  store i1 false, ptr %l68, !tbaa !21
  br label %bb24
bb23:
  %t140 = load i64, ptr %l13, !tbaa !24
  %t141 = load i64, ptr %l70, !tbaa !24
  %t143 = icmp sgt i64 %t141, %t140
  store i1 %t143, ptr %l68, !tbaa !21
  br label %bb24
bb24:
  %t145 = load i1, ptr %l68, !tbaa !21
  br i1 %t145, label %bb25, label %bb26
bb25:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
bb26:
  br label %bb27
bb27:
  %t146 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t147 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t148 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d53, i32 0, i32 1) }, 1
  %t149 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d53, i32 0, i32 1) }, 0
  %t151 = extractvalue { i64, ptr } %t147, 1
  %t152 = extractvalue { i64, ptr } %t147, 0
  %t153 = add i64 %t149, %t152
  %t154 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d54, i32 0, i32 1) }, 1
  %t155 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d54, i32 0, i32 1) }, 0
  %t156 = add i64 %t153, %t155
  %t157 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t156)
  call void @olang_textcopy(ptr %t157, ptr %t148, i64 %t149)
  %t158 = getelementptr i8, ptr %t157, i64 %t149
  call void @olang_textcopy(ptr %t158, ptr %t151, i64 %t152)
  %t159 = getelementptr i8, ptr %t158, i64 %t152
  call void @olang_textcopy(ptr %t159, ptr %t154, i64 %t155)
  %t160 = insertvalue { i64, ptr } undef, i64 %t156, 0
  %t161 = insertvalue { i64, ptr } %t160, ptr %t157, 1
  %t163 = extractvalue { i64, ptr } %t161, 0
  %t164 = extractvalue { i64, ptr } %t161, 1
  %t165 = mul i64 %t163, 1
  %t166 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t165)
  call void @llvm.memcpy.p0.p0.i64(ptr %t166, ptr %t164, i64 %t165, i1 false)
  %t167 = insertvalue { i64, ptr } undef, i64 %t163, 0
  %t168 = insertvalue { i64, ptr } %t167, ptr %t166, 1
  %t171 = call { i32, { i64, ptr } } @std_2fos_2eMkTemp(ptr %v2, ptr %s0, ptr %s0, { i64, ptr } %t146, { i64, ptr } %t168)
  %t172 = extractvalue { i32, { i64, ptr } } %t171, 1
  %t173 = extractvalue { i32, { i64, ptr } } %t171, 0
  store i32 %t173, ptr %l79
  %t174 = icmp ne i32 %t173, 0
  br i1 %t174, label %bb29, label %ok.175, !prof !99
ok.175:
  store { i64, ptr } %t172, ptr %l78
  br label %bb28
bb28:
  %t176 = load { i64, ptr }, ptr %l78, !tbaa !27
  store { i64, ptr } %t176, ptr %l73, !tbaa !27
  br label %bb53
bb29:
  %t177 = load i32, ptr %l79, !tbaa !23
  %t178 = ashr i32 %t177, 16
  %t180 = icmp eq i32 %t178, 1
  store i1 %t180, ptr %l81, !tbaa !21
  store { i32, { i64, [2 x i64] } } zeroinitializer, ptr %l14
  %t181 = load i32, ptr %l79, !tbaa !23
  %t182 = lshr i32 %t181, 16
  %t183 = and i32 %t181, 65535
  %t184 = icmp eq i32 %t182, 1
  %t185 = select i1 %t184, i32 1, i32 0
  %t186 = icmp eq i32 %t181, 0
  %t187 = shl i32 %t185, 16
  %t188 = or i32 %t187, %t183
  %t189 = select i1 %t186, i32 0, i32 %t188
  %t190 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l14, i32 0, i32 0
  store i32 %t189, ptr %t190, !tbaa !23
  br label %bb30
bb30:
  store %olang.scope zeroinitializer, ptr %s5
  %t191 = load { i32, { i64, [2 x i64] } }, ptr %l14
  store { i32, { i64, [2 x i64] } } %t191, ptr %l82
  store { i32, { i64, [2 x i64] } } zeroinitializer, ptr %l83
  %t192 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l82, i32 0, i32 0
  %t193 = load i32, ptr %t192, !tbaa !23
  store i32 %t193, ptr %l84, !tbaa !23
  %t194 = load i32, ptr %l84, !tbaa !23
  %t195 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l83, i32 0, i32 0
  store i32 %t194, ptr %t195, !tbaa !23
  %t196 = load i32, ptr %l84, !tbaa !23
  %t197 = ashr i32 %t196, 16
  %t199 = icmp eq i32 %t197, 1
  br i1 %t199, label %bb31, label %bb32
bb31:
  %t201 = call ptr @__olang_errpay_top_get()
  %t203 = load { i64, [2 x i64] }, ptr %t201
  %t204 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l83, i32 0, i32 1
  store { i64, [2 x i64] } %t203, ptr %t204
  br label %bb32
bb32:
  %t206 = call { i32, { i64, [2 x i64] } } @olang_2emir_2eHelperKind_2eCopy_2eerror_7bstd_2fos_3aError_7d(ptr %s0, ptr %l83)
  store { i32, { i64, [2 x i64] } } %t206, ptr %l89
  br label %bb33
bb33:
  %t207 = load { i32, { i64, [2 x i64] } }, ptr %l89
  store { i32, { i64, [2 x i64] } } %t207, ptr %l14
  %t208 = load { i32, { i64, [2 x i64] } }, ptr %l14
  store { i32, { i64, [2 x i64] } } %t208, ptr %l90
  %t209 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l90, i32 0, i32 0
  %t210 = load i32, ptr %t209, !tbaa !23
  %t211 = ashr i32 %t210, 16
  %t213 = icmp eq i32 %t211, 1
  br i1 %t213, label %bb34, label %bb35
bb34:
  call void @__olang_errpay_pop()
  br label %bb35
bb35:
  %t215 = load ptr, ptr %l5, !tbaa !29
  store ptr %t215, ptr %l93, !tbaa !29
  %t216 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t216, ptr %l94, !tbaa !27
  %t217 = load { i32, { i64, [2 x i64] } }, ptr %l14
  store { i32, { i64, [2 x i64] } } %t217, ptr %l95
  %t219 = call { i32, { i64, [2 x i64] } } @olang_2emir_2eHelperKind_2eCopy_2eerror_7bstd_2fos_3aError_7d(ptr %s5, ptr %l95)
  store { i32, { i64, [2 x i64] } } %t219, ptr %l97
  br label %bb36
bb36:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s6
  store ptr %s6room, ptr %s6
  %t220 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d55, i32 0, i32 1) }, 1
  %t221 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d55, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s6, ptr %t220, i64 %t221)
  %t222 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t223 = extractvalue { i64, ptr } %t222, 1
  %t224 = extractvalue { i64, ptr } %t222, 0
  call void @__olang_sb_put(ptr %s6, ptr %t223, i64 %t224)
  %t225 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d56, i32 0, i32 1) }, 1
  %t226 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d56, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s6, ptr %t225, i64 %t226)
  %t227 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l97, i32 0, i32 0
  %t228 = load i32, ptr %t227, !tbaa !23
  store i32 %t228, ptr %l98, !tbaa !23
  %t229 = load i32, ptr %l98, !tbaa !23
  %t230 = icmp eq i32 %t229, 0
  br i1 %t230, label %bb38, label %bb39
bb37:
  %t232 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d57, i32 0, i32 1) }, 1
  %t233 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d57, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s6, ptr %t232, i64 %t233)
  %t234 = load ptr, ptr %s6
  %t235 = getelementptr %olang.builder, ptr %s6, i32 0, i32 1
  %t236 = load i64, ptr %t235
  %t237 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t236)
  call void @olang_textcopy(ptr %t237, ptr %t234, i64 %t236)
  %t238 = insertvalue { i64, ptr } undef, i64 %t236, 0
  %t239 = insertvalue { i64, ptr } %t238, ptr %t237, 1
  store { i64, ptr } %t239, ptr %l113, !tbaa !27
  %t240 = getelementptr %olang.builder, ptr %s6, i32 0, i32 3
  %t241 = load ptr, ptr %t240
  %t242 = icmp ne ptr %t241, null
  br i1 %t242, label %sbgrew.243, label %sbdone.244
sbgrew.243:
  call void @__olang_sb_done(ptr %s6)
  br label %sbdone.244
sbdone.244:
  %t245 = load { i64, ptr }, ptr %l113, !tbaa !27
  %t247 = extractvalue { i64, ptr } %t245, 0
  %t248 = extractvalue { i64, ptr } %t245, 1
  %t249 = mul i64 %t247, 1
  %t250 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t249)
  call void @llvm.memcpy.p0.p0.i64(ptr %t250, ptr %t248, i64 %t249, i1 false)
  %t251 = insertvalue { i64, ptr } undef, i64 %t247, 0
  %t252 = insertvalue { i64, ptr } %t251, ptr %t250, 1
  %t253 = load ptr, ptr %l93, !tbaa !29
  call void @std_2fio_2estd_2fio_3aWriter_2eWrite(ptr %v5, ptr %s5, ptr %t253, { i64, ptr } %t252)
  br label %bb52
bb38:
  %t255 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d58, i32 0, i32 1) }, 1
  %t256 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d58, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s6, ptr %t255, i64 %t256)
  br label %bb37
bb39:
  %t257 = load i32, ptr %l98, !tbaa !23
  %t258 = icmp eq i32 %t257, 65536
  br i1 %t258, label %bb40, label %bb41
bb40:
  %t260 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d59, i32 0, i32 1) }, 1
  %t261 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d59, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s6, ptr %t260, i64 %t261)
  %t262 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d60, i32 0, i32 1) }, 1
  %t263 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d60, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s6, ptr %t262, i64 %t263)
  %t264 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l97, i32 0, i32 1
  %t265 = getelementptr { i64, [2 x i64] }, ptr %t264, i32 0, i32 1
  %t266 = getelementptr { { i64, ptr } }, ptr %t265, i32 0, i32 0
  %t267 = load { i64, ptr }, ptr %t266
  %t269 = extractvalue { i64, ptr } %t267, 1
  %t270 = extractvalue { i64, ptr } %t267, 0
  %t271 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t269, i64 %t270, i8 34)
  %t272 = call ptr @__olang_sb_room(ptr %s6, i64 %t271)
  %t273 = call i64 @__olang_rd_quote(ptr %t272, i64 0, ptr %t269, i64 %t270, i8 34)
  call void @__olang_sb_add(ptr %s6, i64 %t271)
  %t274 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d61, i32 0, i32 1) }, 1
  %t275 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d61, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s6, ptr %t274, i64 %t275)
  br label %bb37
bb41:
  %t276 = load i32, ptr %l98, !tbaa !23
  %t277 = icmp eq i32 %t276, 65537
  br i1 %t277, label %bb42, label %bb43
bb42:
  %t279 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d62, i32 0, i32 1) }, 1
  %t280 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d62, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s6, ptr %t279, i64 %t280)
  %t281 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d60, i32 0, i32 1) }, 1
  %t282 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d60, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s6, ptr %t281, i64 %t282)
  %t283 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l97, i32 0, i32 1
  %t284 = getelementptr { i64, [2 x i64] }, ptr %t283, i32 0, i32 1
  %t285 = getelementptr { { i64, ptr } }, ptr %t284, i32 0, i32 0
  %t286 = load { i64, ptr }, ptr %t285
  %t288 = extractvalue { i64, ptr } %t286, 1
  %t289 = extractvalue { i64, ptr } %t286, 0
  %t290 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t288, i64 %t289, i8 34)
  %t291 = call ptr @__olang_sb_room(ptr %s6, i64 %t290)
  %t292 = call i64 @__olang_rd_quote(ptr %t291, i64 0, ptr %t288, i64 %t289, i8 34)
  call void @__olang_sb_add(ptr %s6, i64 %t290)
  %t293 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d61, i32 0, i32 1) }, 1
  %t294 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d61, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s6, ptr %t293, i64 %t294)
  br label %bb37
bb43:
  %t295 = load i32, ptr %l98, !tbaa !23
  %t296 = icmp eq i32 %t295, 65538
  br i1 %t296, label %bb44, label %bb45
bb44:
  %t298 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d63, i32 0, i32 1) }, 1
  %t299 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d63, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s6, ptr %t298, i64 %t299)
  %t300 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d60, i32 0, i32 1) }, 1
  %t301 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d60, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s6, ptr %t300, i64 %t301)
  %t302 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l97, i32 0, i32 1
  %t303 = getelementptr { i64, [2 x i64] }, ptr %t302, i32 0, i32 1
  %t304 = getelementptr { { i64, ptr } }, ptr %t303, i32 0, i32 0
  %t305 = load { i64, ptr }, ptr %t304
  %t307 = extractvalue { i64, ptr } %t305, 1
  %t308 = extractvalue { i64, ptr } %t305, 0
  %t309 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t307, i64 %t308, i8 34)
  %t310 = call ptr @__olang_sb_room(ptr %s6, i64 %t309)
  %t311 = call i64 @__olang_rd_quote(ptr %t310, i64 0, ptr %t307, i64 %t308, i8 34)
  call void @__olang_sb_add(ptr %s6, i64 %t309)
  %t312 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d61, i32 0, i32 1) }, 1
  %t313 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d61, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s6, ptr %t312, i64 %t313)
  br label %bb37
bb45:
  %t314 = load i32, ptr %l98, !tbaa !23
  %t315 = icmp eq i32 %t314, 65539
  br i1 %t315, label %bb46, label %bb47
bb46:
  %t317 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d64, i32 0, i32 1) }, 1
  %t318 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d64, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s6, ptr %t317, i64 %t318)
  %t319 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d60, i32 0, i32 1) }, 1
  %t320 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d60, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s6, ptr %t319, i64 %t320)
  %t321 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l97, i32 0, i32 1
  %t322 = getelementptr { i64, [2 x i64] }, ptr %t321, i32 0, i32 1
  %t323 = getelementptr { { i64, ptr } }, ptr %t322, i32 0, i32 0
  %t324 = load { i64, ptr }, ptr %t323
  %t326 = extractvalue { i64, ptr } %t324, 1
  %t327 = extractvalue { i64, ptr } %t324, 0
  %t328 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t326, i64 %t327, i8 34)
  %t329 = call ptr @__olang_sb_room(ptr %s6, i64 %t328)
  %t330 = call i64 @__olang_rd_quote(ptr %t329, i64 0, ptr %t326, i64 %t327, i8 34)
  call void @__olang_sb_add(ptr %s6, i64 %t328)
  %t331 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d61, i32 0, i32 1) }, 1
  %t332 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d61, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s6, ptr %t331, i64 %t332)
  br label %bb37
bb47:
  %t333 = load i32, ptr %l98, !tbaa !23
  %t334 = icmp eq i32 %t333, 65540
  br i1 %t334, label %bb48, label %bb49
bb48:
  %t336 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d65, i32 0, i32 1) }, 1
  %t337 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d65, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s6, ptr %t336, i64 %t337)
  %t338 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d60, i32 0, i32 1) }, 1
  %t339 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d60, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s6, ptr %t338, i64 %t339)
  %t340 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l97, i32 0, i32 1
  %t341 = getelementptr { i64, [2 x i64] }, ptr %t340, i32 0, i32 1
  %t342 = getelementptr { { i64, ptr } }, ptr %t341, i32 0, i32 0
  %t343 = load { i64, ptr }, ptr %t342
  %t345 = extractvalue { i64, ptr } %t343, 1
  %t346 = extractvalue { i64, ptr } %t343, 0
  %t347 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t345, i64 %t346, i8 34)
  %t348 = call ptr @__olang_sb_room(ptr %s6, i64 %t347)
  %t349 = call i64 @__olang_rd_quote(ptr %t348, i64 0, ptr %t345, i64 %t346, i8 34)
  call void @__olang_sb_add(ptr %s6, i64 %t347)
  %t350 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d61, i32 0, i32 1) }, 1
  %t351 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d61, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s6, ptr %t350, i64 %t351)
  br label %bb37
bb49:
  %t352 = load i32, ptr %l98, !tbaa !23
  %t353 = icmp eq i32 %t352, 65541
  br i1 %t353, label %bb50, label %bb51
bb50:
  %t355 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d66, i32 0, i32 1) }, 1
  %t356 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d66, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s6, ptr %t355, i64 %t356)
  %t357 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d60, i32 0, i32 1) }, 1
  %t358 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d60, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s6, ptr %t357, i64 %t358)
  %t359 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l97, i32 0, i32 1
  %t360 = getelementptr { i64, [2 x i64] }, ptr %t359, i32 0, i32 1
  %t361 = getelementptr { { i64, ptr } }, ptr %t360, i32 0, i32 0
  %t362 = load { i64, ptr }, ptr %t361
  %t364 = extractvalue { i64, ptr } %t362, 1
  %t365 = extractvalue { i64, ptr } %t362, 0
  %t366 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t364, i64 %t365, i8 34)
  %t367 = call ptr @__olang_sb_room(ptr %s6, i64 %t366)
  %t368 = call i64 @__olang_rd_quote(ptr %t367, i64 0, ptr %t364, i64 %t365, i8 34)
  call void @__olang_sb_add(ptr %s6, i64 %t366)
  %t369 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d61, i32 0, i32 1) }, 1
  %t370 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d61, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s6, ptr %t369, i64 %t370)
  br label %bb37
bb51:
  %t371 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d67, i32 0, i32 1) }, 1
  %t372 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d67, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s6, ptr %t371, i64 %t372)
  %t373 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d60, i32 0, i32 1) }, 1
  %t374 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d60, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s6, ptr %t373, i64 %t374)
  %t375 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l97, i32 0, i32 1
  %t376 = getelementptr { i64, [2 x i64] }, ptr %t375, i32 0, i32 1
  %t377 = getelementptr { { i64, ptr } }, ptr %t376, i32 0, i32 0
  %t378 = load { i64, ptr }, ptr %t377
  %t380 = extractvalue { i64, ptr } %t378, 1
  %t381 = extractvalue { i64, ptr } %t378, 0
  %t382 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t380, i64 %t381, i8 34)
  %t383 = call ptr @__olang_sb_room(ptr %s6, i64 %t382)
  %t384 = call i64 @__olang_rd_quote(ptr %t383, i64 0, ptr %t380, i64 %t381, i8 34)
  call void @__olang_sb_add(ptr %s6, i64 %t382)
  %t385 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d61, i32 0, i32 1) }, 1
  %t386 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d61, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s6, ptr %t385, i64 %t386)
  br label %bb37
bb52:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  store i32 65536, ptr %rv
  br label %ret
bb53:
  %t388 = load { i64, ptr }, ptr %l73, !tbaa !27
  store { i64, ptr } %t388, ptr %l15, !tbaa !27
  %t389 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t389, ptr %l117, !tbaa !27
  %t390 = ptrtoint ptr %s0 to i64
  store i64 %t390, ptr %l118, !tbaa !24
  %t391 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_202_3e_2e_2d1
  br i1 %t391, label %bb54, label %bb55
bb54:
  %t393 = call ptr @__olang_region_make(ptr %s0)
  %t394 = ptrtoint ptr %t393 to i64
  store i64 %t394, ptr %l118, !tbaa !24
  br label %bb55
bb55:
  %t395 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t396 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d68, i32 0, i32 1) }, 1
  %t397 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d68, i32 0, i32 1) }, 0
  %t399 = extractvalue { i64, ptr } %t395, 1
  %t400 = extractvalue { i64, ptr } %t395, 0
  %t401 = add i64 %t397, %t400
  %t402 = load i64, ptr %l118
  %t403 = inttoptr i64 %t402 to ptr
  %t404 = call ptr @__olang_scope_alloc(ptr %t403, i64 %t401)
  call void @olang_textcopy(ptr %t404, ptr %t396, i64 %t397)
  %t405 = getelementptr i8, ptr %t404, i64 %t397
  call void @olang_textcopy(ptr %t405, ptr %t399, i64 %t400)
  %t406 = insertvalue { i64, ptr } undef, i64 %t401, 0
  %t407 = insertvalue { i64, ptr } %t406, ptr %t404, 1
  %t409 = load i64, ptr %l118
  %t410 = inttoptr i64 %t409 to ptr
  %t411 = extractvalue { i64, ptr } %t407, 0
  %t412 = extractvalue { i64, ptr } %t407, 1
  %t413 = mul i64 %t411, 1
  %t414 = call ptr @__olang_scope_alloc(ptr %t410, i64 %t413)
  call void @llvm.memcpy.p0.p0.i64(ptr %t414, ptr %t412, i64 %t413, i1 false)
  %t415 = insertvalue { i64, ptr } undef, i64 %t411, 0
  %t416 = insertvalue { i64, ptr } %t415, ptr %t414, 1
  %t417 = load { i64, ptr }, ptr %l117, !tbaa !27
  %t418 = insertvalue [2 x { i64, ptr }] undef, { i64, ptr } %t417, 0
  %t420 = insertvalue [2 x { i64, ptr }] %t418, { i64, ptr } %t416, 1
  store [2 x { i64, ptr }] %t420, ptr %l16
  %t423 = insertvalue { i64, ptr } undef, i64 2, 0
  %t424 = insertvalue { i64, ptr } %t423, ptr %l16, 1
  %t426 = call { i64, ptr } @std_2ffilepath_2eJoin(ptr %s0, ptr %s0, { i64, ptr } %t424)
  store { i64, ptr } %t426, ptr %l126
  br label %bb56
bb56:
  %t427 = load { i64, ptr }, ptr %l126, !tbaa !27
  store { i64, ptr } %t427, ptr %l17, !tbaa !27
  %t428 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t428, ptr %l128, !tbaa !27
  %t429 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t429, ptr %l129, !tbaa !27
  %t430 = ptrtoint ptr %s0 to i64
  store i64 %t430, ptr %l130, !tbaa !24
  %t431 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_205_3e_2e_2d1
  br i1 %t431, label %bb57, label %bb58
bb57:
  %t433 = call ptr @__olang_region_make(ptr %s0)
  %t434 = ptrtoint ptr %t433 to i64
  store i64 %t434, ptr %l130, !tbaa !24
  br label %bb58
bb58:
  %t435 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t435, ptr %l132, !tbaa !27
  %t436 = ptrtoint ptr %s0 to i64
  store i64 %t436, ptr %l133, !tbaa !24
  %t437 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_202_3e_2e_2d1
  br i1 %t437, label %bb59, label %bb60
bb59:
  %t439 = call ptr @__olang_region_make(ptr %s0)
  %t440 = ptrtoint ptr %t439 to i64
  store i64 %t440, ptr %l133, !tbaa !24
  br label %bb60
bb60:
  %t441 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t443 = extractvalue { i64, ptr } %t441, 1
  %t444 = extractvalue { i64, ptr } %t441, 0
  %t445 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d69, i32 0, i32 1) }, 1
  %t446 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d69, i32 0, i32 1) }, 0
  %t447 = add i64 %t444, %t446
  %t448 = load i64, ptr %l133
  %t449 = inttoptr i64 %t448 to ptr
  %t450 = call ptr @__olang_scope_alloc(ptr %t449, i64 %t447)
  call void @olang_textcopy(ptr %t450, ptr %t443, i64 %t444)
  %t451 = getelementptr i8, ptr %t450, i64 %t444
  call void @olang_textcopy(ptr %t451, ptr %t445, i64 %t446)
  %t452 = insertvalue { i64, ptr } undef, i64 %t447, 0
  %t453 = insertvalue { i64, ptr } %t452, ptr %t450, 1
  %t455 = load i64, ptr %l133
  %t456 = inttoptr i64 %t455 to ptr
  %t457 = extractvalue { i64, ptr } %t453, 0
  %t458 = extractvalue { i64, ptr } %t453, 1
  %t459 = mul i64 %t457, 1
  %t460 = call ptr @__olang_scope_alloc(ptr %t456, i64 %t459)
  call void @llvm.memcpy.p0.p0.i64(ptr %t460, ptr %t458, i64 %t459, i1 false)
  %t461 = insertvalue { i64, ptr } undef, i64 %t457, 0
  %t462 = insertvalue { i64, ptr } %t461, ptr %t460, 1
  %t463 = load { i64, ptr }, ptr %l132, !tbaa !27
  %t464 = insertvalue [2 x { i64, ptr }] undef, { i64, ptr } %t463, 0
  %t466 = insertvalue [2 x { i64, ptr }] %t464, { i64, ptr } %t462, 1
  store [2 x { i64, ptr }] %t466, ptr %l18
  %t469 = insertvalue { i64, ptr } undef, i64 2, 0
  %t470 = insertvalue { i64, ptr } %t469, ptr %l18, 1
  %t471 = load i64, ptr %l130
  %t472 = inttoptr i64 %t471 to ptr
  %t474 = call { i64, ptr } @std_2ffilepath_2eJoin(ptr %s0, ptr %t472, { i64, ptr } %t470)
  store { i64, ptr } %t474, ptr %l141
  br label %bb61
bb61:
  %t475 = load { i64, ptr }, ptr %l141, !tbaa !27
  %t476 = load i64, ptr %l130
  %t477 = inttoptr i64 %t476 to ptr
  %t478 = extractvalue { i64, ptr } %t475, 0
  %t479 = extractvalue { i64, ptr } %t475, 1
  %t480 = mul i64 %t478, 1
  %t481 = call ptr @__olang_scope_alloc(ptr %t477, i64 %t480)
  call void @llvm.memcpy.p0.p0.i64(ptr %t481, ptr %t479, i64 %t480, i1 false)
  %t482 = insertvalue { i64, ptr } undef, i64 %t478, 0
  %t483 = insertvalue { i64, ptr } %t482, ptr %t481, 1
  %t484 = load { i64, ptr }, ptr %l128, !tbaa !27
  %t485 = insertvalue [5 x { i64, ptr }] undef, { i64, ptr } %t484, 0
  %t486 = insertvalue [5 x { i64, ptr }] %t485, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d70, i32 0, i32 1) }, 1
  %t487 = insertvalue [5 x { i64, ptr }] %t486, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d71, i32 0, i32 1) }, 2
  %t488 = load { i64, ptr }, ptr %l129, !tbaa !27
  %t489 = insertvalue [5 x { i64, ptr }] %t487, { i64, ptr } %t488, 3
  %t491 = insertvalue [5 x { i64, ptr }] %t489, { i64, ptr } %t483, 4
  store [5 x { i64, ptr }] %t491, ptr %l19
  %t494 = insertvalue { i64, ptr } undef, i64 5, 0
  %t495 = insertvalue { i64, ptr } %t494, ptr %l19, 1
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d8, i32 0, i32 1) }, ptr %l146, !tbaa !27
  %t496 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t498 = load { i64, ptr }, ptr %l146, !tbaa !27
  %t500 = call { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %s0, ptr %s0, ptr %v2, ptr %s0, { i64, ptr } %t495, { i64, ptr } %t498, i1 true, { i64, ptr } %t496)
  %t501 = extractvalue { i32, %"std/os:Output" } %t500, 1
  %t502 = extractvalue { i32, %"std/os:Output" } %t500, 0
  store i32 %t502, ptr %l149
  %t503 = icmp ne i32 %t502, 0
  br i1 %t503, label %bb63, label %ok.504, !prof !99
ok.504:
  store %"std/os:Output" %t501, ptr %l148
  br label %bb62
bb62:
  %t505 = load %"std/os:Output", ptr %l148
  store %"std/os:Output" %t505, ptr %l127
  br label %bb93
bb63:
  %t506 = load i32, ptr %l149, !tbaa !23
  %t507 = ashr i32 %t506, 16
  %t509 = icmp eq i32 %t507, 1
  store i1 %t509, ptr %l151, !tbaa !21
  store { i32, { i64, [2 x i64] } } zeroinitializer, ptr %l20
  %t510 = load i32, ptr %l149, !tbaa !23
  %t511 = lshr i32 %t510, 16
  %t512 = and i32 %t510, 65535
  %t513 = icmp eq i32 %t511, 1
  %t514 = select i1 %t513, i32 1, i32 0
  %t515 = icmp eq i32 %t510, 0
  %t516 = shl i32 %t514, 16
  %t517 = or i32 %t516, %t512
  %t518 = select i1 %t515, i32 0, i32 %t517
  %t519 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l20, i32 0, i32 0
  store i32 %t518, ptr %t519, !tbaa !23
  br label %bb64
bb64:
  store %olang.scope zeroinitializer, ptr %s9
  %t520 = load { i32, { i64, [2 x i64] } }, ptr %l20
  store { i32, { i64, [2 x i64] } } %t520, ptr %l152
  store { i32, { i64, [2 x i64] } } zeroinitializer, ptr %l153
  %t521 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l152, i32 0, i32 0
  %t522 = load i32, ptr %t521, !tbaa !23
  store i32 %t522, ptr %l154, !tbaa !23
  %t523 = load i32, ptr %l154, !tbaa !23
  %t524 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l153, i32 0, i32 0
  store i32 %t523, ptr %t524, !tbaa !23
  %t525 = load i32, ptr %l154, !tbaa !23
  %t526 = ashr i32 %t525, 16
  %t528 = icmp eq i32 %t526, 1
  br i1 %t528, label %bb65, label %bb66
bb65:
  %t530 = call ptr @__olang_errpay_top_get()
  %t532 = load { i64, [2 x i64] }, ptr %t530
  %t533 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l153, i32 0, i32 1
  store { i64, [2 x i64] } %t532, ptr %t533
  br label %bb66
bb66:
  %t535 = call { i32, { i64, [2 x i64] } } @olang_2emir_2eHelperKind_2eCopy_2eerror_7bstd_2fos_3aError_7d(ptr %s0, ptr %l153)
  store { i32, { i64, [2 x i64] } } %t535, ptr %l159
  br label %bb67
bb67:
  %t536 = load { i32, { i64, [2 x i64] } }, ptr %l159
  store { i32, { i64, [2 x i64] } } %t536, ptr %l20
  %t537 = load { i32, { i64, [2 x i64] } }, ptr %l20
  store { i32, { i64, [2 x i64] } } %t537, ptr %l160
  %t538 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l160, i32 0, i32 0
  %t539 = load i32, ptr %t538, !tbaa !23
  %t540 = ashr i32 %t539, 16
  %t542 = icmp eq i32 %t540, 1
  br i1 %t542, label %bb68, label %bb69
bb68:
  call void @__olang_errpay_pop()
  br label %bb69
bb69:
  %t544 = load ptr, ptr %l5, !tbaa !29
  store ptr %t544, ptr %l163, !tbaa !29
  %t545 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t545, ptr %l164, !tbaa !27
  %t546 = load { i32, { i64, [2 x i64] } }, ptr %l20
  store { i32, { i64, [2 x i64] } } %t546, ptr %l165
  %t548 = call { i32, { i64, [2 x i64] } } @olang_2emir_2eHelperKind_2eCopy_2eerror_7bstd_2fos_3aError_7d(ptr %s9, ptr %l165)
  store { i32, { i64, [2 x i64] } } %t548, ptr %l167
  br label %bb70
bb70:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s10
  store ptr %s10room, ptr %s10
  %t549 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d72, i32 0, i32 1) }, 1
  %t550 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d72, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t549, i64 %t550)
  %t551 = load { i64, ptr }, ptr %l164, !tbaa !27
  %t552 = extractvalue { i64, ptr } %t551, 1
  %t553 = extractvalue { i64, ptr } %t551, 0
  call void @__olang_sb_put(ptr %s10, ptr %t552, i64 %t553)
  %t554 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d73, i32 0, i32 1) }, 1
  %t555 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d73, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t554, i64 %t555)
  %t556 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l167, i32 0, i32 0
  %t557 = load i32, ptr %t556, !tbaa !23
  store i32 %t557, ptr %l168, !tbaa !23
  %t558 = load i32, ptr %l168, !tbaa !23
  %t559 = icmp eq i32 %t558, 0
  br i1 %t559, label %bb72, label %bb73
bb71:
  %t561 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d74, i32 0, i32 1) }, 1
  %t562 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d74, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t561, i64 %t562)
  %t563 = load ptr, ptr %s10
  %t564 = getelementptr %olang.builder, ptr %s10, i32 0, i32 1
  %t565 = load i64, ptr %t564
  %t566 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t565)
  call void @olang_textcopy(ptr %t566, ptr %t563, i64 %t565)
  %t567 = insertvalue { i64, ptr } undef, i64 %t565, 0
  %t568 = insertvalue { i64, ptr } %t567, ptr %t566, 1
  store { i64, ptr } %t568, ptr %l183, !tbaa !27
  %t569 = getelementptr %olang.builder, ptr %s10, i32 0, i32 3
  %t570 = load ptr, ptr %t569
  %t571 = icmp ne ptr %t570, null
  br i1 %t571, label %sbgrew.572, label %sbdone.573
sbgrew.572:
  call void @__olang_sb_done(ptr %s10)
  br label %sbdone.573
sbdone.573:
  %t574 = load { i64, ptr }, ptr %l183, !tbaa !27
  %t576 = extractvalue { i64, ptr } %t574, 0
  %t577 = extractvalue { i64, ptr } %t574, 1
  %t578 = mul i64 %t576, 1
  %t579 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t578)
  call void @llvm.memcpy.p0.p0.i64(ptr %t579, ptr %t577, i64 %t578, i1 false)
  %t580 = insertvalue { i64, ptr } undef, i64 %t576, 0
  %t581 = insertvalue { i64, ptr } %t580, ptr %t579, 1
  %t582 = load ptr, ptr %l163, !tbaa !29
  call void @std_2fio_2estd_2fio_3aWriter_2eWrite(ptr %v5, ptr %s9, ptr %t582, { i64, ptr } %t581)
  br label %bb86
bb72:
  %t584 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d75, i32 0, i32 1) }, 1
  %t585 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d75, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t584, i64 %t585)
  br label %bb71
bb73:
  %t586 = load i32, ptr %l168, !tbaa !23
  %t587 = icmp eq i32 %t586, 65536
  br i1 %t587, label %bb74, label %bb75
bb74:
  %t589 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d76, i32 0, i32 1) }, 1
  %t590 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d76, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t589, i64 %t590)
  %t591 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 1
  %t592 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t591, i64 %t592)
  %t593 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l167, i32 0, i32 1
  %t594 = getelementptr { i64, [2 x i64] }, ptr %t593, i32 0, i32 1
  %t595 = getelementptr { { i64, ptr } }, ptr %t594, i32 0, i32 0
  %t596 = load { i64, ptr }, ptr %t595
  %t598 = extractvalue { i64, ptr } %t596, 1
  %t599 = extractvalue { i64, ptr } %t596, 0
  %t600 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t598, i64 %t599, i8 34)
  %t601 = call ptr @__olang_sb_room(ptr %s10, i64 %t600)
  %t602 = call i64 @__olang_rd_quote(ptr %t601, i64 0, ptr %t598, i64 %t599, i8 34)
  call void @__olang_sb_add(ptr %s10, i64 %t600)
  %t603 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 1
  %t604 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t603, i64 %t604)
  br label %bb71
bb75:
  %t605 = load i32, ptr %l168, !tbaa !23
  %t606 = icmp eq i32 %t605, 65537
  br i1 %t606, label %bb76, label %bb77
bb76:
  %t608 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d79, i32 0, i32 1) }, 1
  %t609 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d79, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t608, i64 %t609)
  %t610 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 1
  %t611 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t610, i64 %t611)
  %t612 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l167, i32 0, i32 1
  %t613 = getelementptr { i64, [2 x i64] }, ptr %t612, i32 0, i32 1
  %t614 = getelementptr { { i64, ptr } }, ptr %t613, i32 0, i32 0
  %t615 = load { i64, ptr }, ptr %t614
  %t617 = extractvalue { i64, ptr } %t615, 1
  %t618 = extractvalue { i64, ptr } %t615, 0
  %t619 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t617, i64 %t618, i8 34)
  %t620 = call ptr @__olang_sb_room(ptr %s10, i64 %t619)
  %t621 = call i64 @__olang_rd_quote(ptr %t620, i64 0, ptr %t617, i64 %t618, i8 34)
  call void @__olang_sb_add(ptr %s10, i64 %t619)
  %t622 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 1
  %t623 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t622, i64 %t623)
  br label %bb71
bb77:
  %t624 = load i32, ptr %l168, !tbaa !23
  %t625 = icmp eq i32 %t624, 65538
  br i1 %t625, label %bb78, label %bb79
bb78:
  %t627 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d80, i32 0, i32 1) }, 1
  %t628 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d80, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t627, i64 %t628)
  %t629 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 1
  %t630 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t629, i64 %t630)
  %t631 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l167, i32 0, i32 1
  %t632 = getelementptr { i64, [2 x i64] }, ptr %t631, i32 0, i32 1
  %t633 = getelementptr { { i64, ptr } }, ptr %t632, i32 0, i32 0
  %t634 = load { i64, ptr }, ptr %t633
  %t636 = extractvalue { i64, ptr } %t634, 1
  %t637 = extractvalue { i64, ptr } %t634, 0
  %t638 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t636, i64 %t637, i8 34)
  %t639 = call ptr @__olang_sb_room(ptr %s10, i64 %t638)
  %t640 = call i64 @__olang_rd_quote(ptr %t639, i64 0, ptr %t636, i64 %t637, i8 34)
  call void @__olang_sb_add(ptr %s10, i64 %t638)
  %t641 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 1
  %t642 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t641, i64 %t642)
  br label %bb71
bb79:
  %t643 = load i32, ptr %l168, !tbaa !23
  %t644 = icmp eq i32 %t643, 65539
  br i1 %t644, label %bb80, label %bb81
bb80:
  %t646 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d81, i32 0, i32 1) }, 1
  %t647 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d81, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t646, i64 %t647)
  %t648 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 1
  %t649 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t648, i64 %t649)
  %t650 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l167, i32 0, i32 1
  %t651 = getelementptr { i64, [2 x i64] }, ptr %t650, i32 0, i32 1
  %t652 = getelementptr { { i64, ptr } }, ptr %t651, i32 0, i32 0
  %t653 = load { i64, ptr }, ptr %t652
  %t655 = extractvalue { i64, ptr } %t653, 1
  %t656 = extractvalue { i64, ptr } %t653, 0
  %t657 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t655, i64 %t656, i8 34)
  %t658 = call ptr @__olang_sb_room(ptr %s10, i64 %t657)
  %t659 = call i64 @__olang_rd_quote(ptr %t658, i64 0, ptr %t655, i64 %t656, i8 34)
  call void @__olang_sb_add(ptr %s10, i64 %t657)
  %t660 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 1
  %t661 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t660, i64 %t661)
  br label %bb71
bb81:
  %t662 = load i32, ptr %l168, !tbaa !23
  %t663 = icmp eq i32 %t662, 65540
  br i1 %t663, label %bb82, label %bb83
bb82:
  %t665 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d82, i32 0, i32 1) }, 1
  %t666 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d82, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t665, i64 %t666)
  %t667 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 1
  %t668 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t667, i64 %t668)
  %t669 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l167, i32 0, i32 1
  %t670 = getelementptr { i64, [2 x i64] }, ptr %t669, i32 0, i32 1
  %t671 = getelementptr { { i64, ptr } }, ptr %t670, i32 0, i32 0
  %t672 = load { i64, ptr }, ptr %t671
  %t674 = extractvalue { i64, ptr } %t672, 1
  %t675 = extractvalue { i64, ptr } %t672, 0
  %t676 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t674, i64 %t675, i8 34)
  %t677 = call ptr @__olang_sb_room(ptr %s10, i64 %t676)
  %t678 = call i64 @__olang_rd_quote(ptr %t677, i64 0, ptr %t674, i64 %t675, i8 34)
  call void @__olang_sb_add(ptr %s10, i64 %t676)
  %t679 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 1
  %t680 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t679, i64 %t680)
  br label %bb71
bb83:
  %t681 = load i32, ptr %l168, !tbaa !23
  %t682 = icmp eq i32 %t681, 65541
  br i1 %t682, label %bb84, label %bb85
bb84:
  %t684 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d83, i32 0, i32 1) }, 1
  %t685 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d83, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t684, i64 %t685)
  %t686 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 1
  %t687 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t686, i64 %t687)
  %t688 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l167, i32 0, i32 1
  %t689 = getelementptr { i64, [2 x i64] }, ptr %t688, i32 0, i32 1
  %t690 = getelementptr { { i64, ptr } }, ptr %t689, i32 0, i32 0
  %t691 = load { i64, ptr }, ptr %t690
  %t693 = extractvalue { i64, ptr } %t691, 1
  %t694 = extractvalue { i64, ptr } %t691, 0
  %t695 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t693, i64 %t694, i8 34)
  %t696 = call ptr @__olang_sb_room(ptr %s10, i64 %t695)
  %t697 = call i64 @__olang_rd_quote(ptr %t696, i64 0, ptr %t693, i64 %t694, i8 34)
  call void @__olang_sb_add(ptr %s10, i64 %t695)
  %t698 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 1
  %t699 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t698, i64 %t699)
  br label %bb71
bb85:
  %t700 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d84, i32 0, i32 1) }, 1
  %t701 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d84, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t700, i64 %t701)
  %t702 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 1
  %t703 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t702, i64 %t703)
  %t704 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l167, i32 0, i32 1
  %t705 = getelementptr { i64, [2 x i64] }, ptr %t704, i32 0, i32 1
  %t706 = getelementptr { { i64, ptr } }, ptr %t705, i32 0, i32 0
  %t707 = load { i64, ptr }, ptr %t706
  %t709 = extractvalue { i64, ptr } %t707, 1
  %t710 = extractvalue { i64, ptr } %t707, 0
  %t711 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t709, i64 %t710, i8 34)
  %t712 = call ptr @__olang_sb_room(ptr %s10, i64 %t711)
  %t713 = call i64 @__olang_rd_quote(ptr %t712, i64 0, ptr %t709, i64 %t710, i8 34)
  call void @__olang_sb_add(ptr %s10, i64 %t711)
  %t714 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 1
  %t715 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t714, i64 %t715)
  br label %bb71
bb86:
  store i32 65536, ptr %l186, !tbaa !23
  call void @__olang_scope_close(ptr %s9)
  %t716 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t718 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t716)
  store i32 %t718, ptr %l188
  %t719 = icmp ne i32 %t718, 0
  br i1 %t719, label %bb88, label %ok.720, !prof !99
ok.720:
  br label %bb87
bb87:
  br label %bb92
bb88:
  %t721 = load i32, ptr %l188, !tbaa !23
  %t722 = ashr i32 %t721, 16
  %t724 = icmp eq i32 %t722, 1
  store i1 %t724, ptr %l190, !tbaa !21
  %t725 = load i32, ptr %l188, !tbaa !23
  %t726 = ashr i32 %t725, 16
  %t728 = icmp eq i32 %t726, 1
  br i1 %t728, label %bb89, label %bb90
bb89:
  call void @__olang_errpay_pop()
  br label %bb90
bb90:
  br label %bb91
bb91:
  br label %bb92
bb92:
  call void @__olang_scope_close(ptr %s0)
  %t730 = load i32, ptr %l186, !tbaa !23
  store i32 %t730, ptr %rv
  br label %ret
bb93:
  %t731 = load %"std/os:Output", ptr %l127
  store %"std/os:Output" %t731, ptr %l21
  %t732 = getelementptr %"std/os:Output", ptr %l21, i32 0, i32 0
  %t733 = load i32, ptr %t732, !tbaa !23
  %t735 = icmp ne i32 %t733, 0
  br i1 %t735, label %bb94, label %bb95
bb94:
  store %olang.scope zeroinitializer, ptr %s13
  %t737 = load ptr, ptr %l5, !tbaa !29
  %t738 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t739 = getelementptr %"std/os:Output", ptr %l21, i32 0, i32 1
  %t740 = load { i64, ptr }, ptr %t739, !tbaa !27
  %t741 = getelementptr %"std/os:Output", ptr %l21, i32 0, i32 2
  %t742 = load { i64, ptr }, ptr %t741, !tbaa !27
  %t743 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d85, i32 0, i32 1) }, 1
  %t744 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d85, i32 0, i32 1) }, 0
  %t746 = extractvalue { i64, ptr } %t738, 1
  %t747 = extractvalue { i64, ptr } %t738, 0
  %t748 = add i64 %t744, %t747
  %t749 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d86, i32 0, i32 1) }, 1
  %t750 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d86, i32 0, i32 1) }, 0
  %t751 = add i64 %t748, %t750
  %t753 = extractvalue { i64, ptr } %t740, 1
  %t754 = extractvalue { i64, ptr } %t740, 0
  %t755 = add i64 %t751, %t754
  %t757 = extractvalue { i64, ptr } %t742, 1
  %t758 = extractvalue { i64, ptr } %t742, 0
  %t759 = add i64 %t755, %t758
  %t760 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t759)
  call void @olang_textcopy(ptr %t760, ptr %t743, i64 %t744)
  %t761 = getelementptr i8, ptr %t760, i64 %t744
  call void @olang_textcopy(ptr %t761, ptr %t746, i64 %t747)
  %t762 = getelementptr i8, ptr %t761, i64 %t747
  call void @olang_textcopy(ptr %t762, ptr %t749, i64 %t750)
  %t763 = getelementptr i8, ptr %t762, i64 %t750
  call void @olang_textcopy(ptr %t763, ptr %t753, i64 %t754)
  %t764 = getelementptr i8, ptr %t763, i64 %t754
  call void @olang_textcopy(ptr %t764, ptr %t757, i64 %t758)
  %t765 = insertvalue { i64, ptr } undef, i64 %t759, 0
  %t766 = insertvalue { i64, ptr } %t765, ptr %t760, 1
  %t769 = extractvalue { i64, ptr } %t766, 0
  %t770 = extractvalue { i64, ptr } %t766, 1
  %t771 = mul i64 %t769, 1
  %t772 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t771)
  call void @llvm.memcpy.p0.p0.i64(ptr %t772, ptr %t770, i64 %t771, i1 false)
  %t773 = insertvalue { i64, ptr } undef, i64 %t769, 0
  %t774 = insertvalue { i64, ptr } %t773, ptr %t772, 1
  call void @std_2fio_2estd_2fio_3aWriter_2eWrite(ptr %v5, ptr %s13, ptr %t737, { i64, ptr } %t774)
  br label %bb96
bb95:
  br label %bb103
bb96:
  store i32 65536, ptr %l202, !tbaa !23
  call void @__olang_scope_close(ptr %s13)
  %t777 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t779 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t777)
  store i32 %t779, ptr %l204
  %t780 = icmp ne i32 %t779, 0
  br i1 %t780, label %bb98, label %ok.781, !prof !99
ok.781:
  br label %bb97
bb97:
  br label %bb102
bb98:
  %t782 = load i32, ptr %l204, !tbaa !23
  %t783 = ashr i32 %t782, 16
  %t785 = icmp eq i32 %t783, 1
  store i1 %t785, ptr %l206, !tbaa !21
  %t786 = load i32, ptr %l204, !tbaa !23
  %t787 = ashr i32 %t786, 16
  %t789 = icmp eq i32 %t787, 1
  br i1 %t789, label %bb99, label %bb100
bb99:
  call void @__olang_errpay_pop()
  br label %bb100
bb100:
  br label %bb101
bb101:
  br label %bb102
bb102:
  call void @__olang_scope_close(ptr %s0)
  %t791 = load i32, ptr %l202, !tbaa !23
  store i32 %t791, ptr %rv
  br label %ret
bb103:
  %t792 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t793 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t796 = call i32 @std_2fos_2eRename(ptr %s0, ptr %s0, { i64, ptr } %t792, { i64, ptr } %t793)
  store i32 %t796, ptr %l211
  %t797 = icmp ne i32 %t796, 0
  br i1 %t797, label %bb105, label %ok.798, !prof !99
ok.798:
  br label %bb104
bb104:
  br label %bb135
bb105:
  %t799 = load i32, ptr %l211, !tbaa !23
  %t800 = ashr i32 %t799, 16
  %t802 = icmp eq i32 %t800, 1
  store i1 %t802, ptr %l213, !tbaa !21
  store { i32, { i64, [2 x i64] } } zeroinitializer, ptr %l22
  %t803 = load i32, ptr %l211, !tbaa !23
  %t804 = lshr i32 %t803, 16
  %t805 = and i32 %t803, 65535
  %t806 = icmp eq i32 %t804, 1
  %t807 = select i1 %t806, i32 1, i32 0
  %t808 = icmp eq i32 %t803, 0
  %t809 = shl i32 %t807, 16
  %t810 = or i32 %t809, %t805
  %t811 = select i1 %t808, i32 0, i32 %t810
  %t812 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l22, i32 0, i32 0
  store i32 %t811, ptr %t812, !tbaa !23
  br label %bb106
bb106:
  store %olang.scope zeroinitializer, ptr %s17
  %t813 = load { i32, { i64, [2 x i64] } }, ptr %l22
  store { i32, { i64, [2 x i64] } } %t813, ptr %l214
  store { i32, { i64, [2 x i64] } } zeroinitializer, ptr %l215
  %t814 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l214, i32 0, i32 0
  %t815 = load i32, ptr %t814, !tbaa !23
  store i32 %t815, ptr %l216, !tbaa !23
  %t816 = load i32, ptr %l216, !tbaa !23
  %t817 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l215, i32 0, i32 0
  store i32 %t816, ptr %t817, !tbaa !23
  %t818 = load i32, ptr %l216, !tbaa !23
  %t819 = ashr i32 %t818, 16
  %t821 = icmp eq i32 %t819, 1
  br i1 %t821, label %bb107, label %bb108
bb107:
  %t823 = call ptr @__olang_errpay_top_get()
  %t825 = load { i64, [2 x i64] }, ptr %t823
  %t826 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l215, i32 0, i32 1
  store { i64, [2 x i64] } %t825, ptr %t826
  br label %bb108
bb108:
  %t828 = call { i32, { i64, [2 x i64] } } @olang_2emir_2eHelperKind_2eCopy_2eerror_7bstd_2fos_3aError_7d(ptr %s0, ptr %l215)
  store { i32, { i64, [2 x i64] } } %t828, ptr %l221
  br label %bb109
bb109:
  %t829 = load { i32, { i64, [2 x i64] } }, ptr %l221
  store { i32, { i64, [2 x i64] } } %t829, ptr %l22
  %t830 = load { i32, { i64, [2 x i64] } }, ptr %l22
  store { i32, { i64, [2 x i64] } } %t830, ptr %l222
  %t831 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l222, i32 0, i32 0
  %t832 = load i32, ptr %t831, !tbaa !23
  %t833 = ashr i32 %t832, 16
  %t835 = icmp eq i32 %t833, 1
  br i1 %t835, label %bb110, label %bb111
bb110:
  call void @__olang_errpay_pop()
  br label %bb111
bb111:
  %t837 = load ptr, ptr %l5, !tbaa !29
  store ptr %t837, ptr %l225, !tbaa !29
  %t838 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t838, ptr %l226, !tbaa !27
  %t839 = load { i32, { i64, [2 x i64] } }, ptr %l22
  store { i32, { i64, [2 x i64] } } %t839, ptr %l227
  %t841 = call { i32, { i64, [2 x i64] } } @olang_2emir_2eHelperKind_2eCopy_2eerror_7bstd_2fos_3aError_7d(ptr %s17, ptr %l227)
  store { i32, { i64, [2 x i64] } } %t841, ptr %l229
  br label %bb112
bb112:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s18
  store ptr %s18room, ptr %s18
  %t842 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d87, i32 0, i32 1) }, 1
  %t843 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d87, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s18, ptr %t842, i64 %t843)
  %t844 = load { i64, ptr }, ptr %l226, !tbaa !27
  %t845 = extractvalue { i64, ptr } %t844, 1
  %t846 = extractvalue { i64, ptr } %t844, 0
  call void @__olang_sb_put(ptr %s18, ptr %t845, i64 %t846)
  %t847 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d88, i32 0, i32 1) }, 1
  %t848 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d88, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s18, ptr %t847, i64 %t848)
  %t849 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l229, i32 0, i32 0
  %t850 = load i32, ptr %t849, !tbaa !23
  store i32 %t850, ptr %l230, !tbaa !23
  %t851 = load i32, ptr %l230, !tbaa !23
  %t852 = icmp eq i32 %t851, 0
  br i1 %t852, label %bb114, label %bb115
bb113:
  %t854 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d89, i32 0, i32 1) }, 1
  %t855 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d89, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s18, ptr %t854, i64 %t855)
  %t856 = load ptr, ptr %s18
  %t857 = getelementptr %olang.builder, ptr %s18, i32 0, i32 1
  %t858 = load i64, ptr %t857
  %t859 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t858)
  call void @olang_textcopy(ptr %t859, ptr %t856, i64 %t858)
  %t860 = insertvalue { i64, ptr } undef, i64 %t858, 0
  %t861 = insertvalue { i64, ptr } %t860, ptr %t859, 1
  store { i64, ptr } %t861, ptr %l245, !tbaa !27
  %t862 = getelementptr %olang.builder, ptr %s18, i32 0, i32 3
  %t863 = load ptr, ptr %t862
  %t864 = icmp ne ptr %t863, null
  br i1 %t864, label %sbgrew.865, label %sbdone.866
sbgrew.865:
  call void @__olang_sb_done(ptr %s18)
  br label %sbdone.866
sbdone.866:
  %t867 = load { i64, ptr }, ptr %l245, !tbaa !27
  %t869 = extractvalue { i64, ptr } %t867, 0
  %t870 = extractvalue { i64, ptr } %t867, 1
  %t871 = mul i64 %t869, 1
  %t872 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t871)
  call void @llvm.memcpy.p0.p0.i64(ptr %t872, ptr %t870, i64 %t871, i1 false)
  %t873 = insertvalue { i64, ptr } undef, i64 %t869, 0
  %t874 = insertvalue { i64, ptr } %t873, ptr %t872, 1
  %t875 = load ptr, ptr %l225, !tbaa !29
  call void @std_2fio_2estd_2fio_3aWriter_2eWrite(ptr %v5, ptr %s17, ptr %t875, { i64, ptr } %t874)
  br label %bb128
bb114:
  %t877 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d90, i32 0, i32 1) }, 1
  %t878 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d90, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s18, ptr %t877, i64 %t878)
  br label %bb113
bb115:
  %t879 = load i32, ptr %l230, !tbaa !23
  %t880 = icmp eq i32 %t879, 65536
  br i1 %t880, label %bb116, label %bb117
bb116:
  %t882 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d91, i32 0, i32 1) }, 1
  %t883 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d91, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s18, ptr %t882, i64 %t883)
  %t884 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d92, i32 0, i32 1) }, 1
  %t885 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d92, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s18, ptr %t884, i64 %t885)
  %t886 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l229, i32 0, i32 1
  %t887 = getelementptr { i64, [2 x i64] }, ptr %t886, i32 0, i32 1
  %t888 = getelementptr { { i64, ptr } }, ptr %t887, i32 0, i32 0
  %t889 = load { i64, ptr }, ptr %t888
  %t891 = extractvalue { i64, ptr } %t889, 1
  %t892 = extractvalue { i64, ptr } %t889, 0
  %t893 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t891, i64 %t892, i8 34)
  %t894 = call ptr @__olang_sb_room(ptr %s18, i64 %t893)
  %t895 = call i64 @__olang_rd_quote(ptr %t894, i64 0, ptr %t891, i64 %t892, i8 34)
  call void @__olang_sb_add(ptr %s18, i64 %t893)
  %t896 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d93, i32 0, i32 1) }, 1
  %t897 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d93, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s18, ptr %t896, i64 %t897)
  br label %bb113
bb117:
  %t898 = load i32, ptr %l230, !tbaa !23
  %t899 = icmp eq i32 %t898, 65537
  br i1 %t899, label %bb118, label %bb119
bb118:
  %t901 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d94, i32 0, i32 1) }, 1
  %t902 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d94, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s18, ptr %t901, i64 %t902)
  %t903 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d92, i32 0, i32 1) }, 1
  %t904 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d92, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s18, ptr %t903, i64 %t904)
  %t905 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l229, i32 0, i32 1
  %t906 = getelementptr { i64, [2 x i64] }, ptr %t905, i32 0, i32 1
  %t907 = getelementptr { { i64, ptr } }, ptr %t906, i32 0, i32 0
  %t908 = load { i64, ptr }, ptr %t907
  %t910 = extractvalue { i64, ptr } %t908, 1
  %t911 = extractvalue { i64, ptr } %t908, 0
  %t912 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t910, i64 %t911, i8 34)
  %t913 = call ptr @__olang_sb_room(ptr %s18, i64 %t912)
  %t914 = call i64 @__olang_rd_quote(ptr %t913, i64 0, ptr %t910, i64 %t911, i8 34)
  call void @__olang_sb_add(ptr %s18, i64 %t912)
  %t915 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d93, i32 0, i32 1) }, 1
  %t916 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d93, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s18, ptr %t915, i64 %t916)
  br label %bb113
bb119:
  %t917 = load i32, ptr %l230, !tbaa !23
  %t918 = icmp eq i32 %t917, 65538
  br i1 %t918, label %bb120, label %bb121
bb120:
  %t920 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d95, i32 0, i32 1) }, 1
  %t921 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d95, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s18, ptr %t920, i64 %t921)
  %t922 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d92, i32 0, i32 1) }, 1
  %t923 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d92, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s18, ptr %t922, i64 %t923)
  %t924 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l229, i32 0, i32 1
  %t925 = getelementptr { i64, [2 x i64] }, ptr %t924, i32 0, i32 1
  %t926 = getelementptr { { i64, ptr } }, ptr %t925, i32 0, i32 0
  %t927 = load { i64, ptr }, ptr %t926
  %t929 = extractvalue { i64, ptr } %t927, 1
  %t930 = extractvalue { i64, ptr } %t927, 0
  %t931 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t929, i64 %t930, i8 34)
  %t932 = call ptr @__olang_sb_room(ptr %s18, i64 %t931)
  %t933 = call i64 @__olang_rd_quote(ptr %t932, i64 0, ptr %t929, i64 %t930, i8 34)
  call void @__olang_sb_add(ptr %s18, i64 %t931)
  %t934 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d93, i32 0, i32 1) }, 1
  %t935 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d93, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s18, ptr %t934, i64 %t935)
  br label %bb113
bb121:
  %t936 = load i32, ptr %l230, !tbaa !23
  %t937 = icmp eq i32 %t936, 65539
  br i1 %t937, label %bb122, label %bb123
bb122:
  %t939 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d96, i32 0, i32 1) }, 1
  %t940 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d96, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s18, ptr %t939, i64 %t940)
  %t941 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d92, i32 0, i32 1) }, 1
  %t942 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d92, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s18, ptr %t941, i64 %t942)
  %t943 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l229, i32 0, i32 1
  %t944 = getelementptr { i64, [2 x i64] }, ptr %t943, i32 0, i32 1
  %t945 = getelementptr { { i64, ptr } }, ptr %t944, i32 0, i32 0
  %t946 = load { i64, ptr }, ptr %t945
  %t948 = extractvalue { i64, ptr } %t946, 1
  %t949 = extractvalue { i64, ptr } %t946, 0
  %t950 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t948, i64 %t949, i8 34)
  %t951 = call ptr @__olang_sb_room(ptr %s18, i64 %t950)
  %t952 = call i64 @__olang_rd_quote(ptr %t951, i64 0, ptr %t948, i64 %t949, i8 34)
  call void @__olang_sb_add(ptr %s18, i64 %t950)
  %t953 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d93, i32 0, i32 1) }, 1
  %t954 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d93, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s18, ptr %t953, i64 %t954)
  br label %bb113
bb123:
  %t955 = load i32, ptr %l230, !tbaa !23
  %t956 = icmp eq i32 %t955, 65540
  br i1 %t956, label %bb124, label %bb125
bb124:
  %t958 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d97, i32 0, i32 1) }, 1
  %t959 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d97, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s18, ptr %t958, i64 %t959)
  %t960 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d92, i32 0, i32 1) }, 1
  %t961 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d92, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s18, ptr %t960, i64 %t961)
  %t962 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l229, i32 0, i32 1
  %t963 = getelementptr { i64, [2 x i64] }, ptr %t962, i32 0, i32 1
  %t964 = getelementptr { { i64, ptr } }, ptr %t963, i32 0, i32 0
  %t965 = load { i64, ptr }, ptr %t964
  %t967 = extractvalue { i64, ptr } %t965, 1
  %t968 = extractvalue { i64, ptr } %t965, 0
  %t969 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t967, i64 %t968, i8 34)
  %t970 = call ptr @__olang_sb_room(ptr %s18, i64 %t969)
  %t971 = call i64 @__olang_rd_quote(ptr %t970, i64 0, ptr %t967, i64 %t968, i8 34)
  call void @__olang_sb_add(ptr %s18, i64 %t969)
  %t972 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d93, i32 0, i32 1) }, 1
  %t973 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d93, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s18, ptr %t972, i64 %t973)
  br label %bb113
bb125:
  %t974 = load i32, ptr %l230, !tbaa !23
  %t975 = icmp eq i32 %t974, 65541
  br i1 %t975, label %bb126, label %bb127
bb126:
  %t977 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d98, i32 0, i32 1) }, 1
  %t978 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d98, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s18, ptr %t977, i64 %t978)
  %t979 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d92, i32 0, i32 1) }, 1
  %t980 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d92, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s18, ptr %t979, i64 %t980)
  %t981 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l229, i32 0, i32 1
  %t982 = getelementptr { i64, [2 x i64] }, ptr %t981, i32 0, i32 1
  %t983 = getelementptr { { i64, ptr } }, ptr %t982, i32 0, i32 0
  %t984 = load { i64, ptr }, ptr %t983
  %t986 = extractvalue { i64, ptr } %t984, 1
  %t987 = extractvalue { i64, ptr } %t984, 0
  %t988 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t986, i64 %t987, i8 34)
  %t989 = call ptr @__olang_sb_room(ptr %s18, i64 %t988)
  %t990 = call i64 @__olang_rd_quote(ptr %t989, i64 0, ptr %t986, i64 %t987, i8 34)
  call void @__olang_sb_add(ptr %s18, i64 %t988)
  %t991 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d93, i32 0, i32 1) }, 1
  %t992 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d93, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s18, ptr %t991, i64 %t992)
  br label %bb113
bb127:
  %t993 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d99, i32 0, i32 1) }, 1
  %t994 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d99, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s18, ptr %t993, i64 %t994)
  %t995 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d92, i32 0, i32 1) }, 1
  %t996 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d92, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s18, ptr %t995, i64 %t996)
  %t997 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l229, i32 0, i32 1
  %t998 = getelementptr { i64, [2 x i64] }, ptr %t997, i32 0, i32 1
  %t999 = getelementptr { { i64, ptr } }, ptr %t998, i32 0, i32 0
  %t1000 = load { i64, ptr }, ptr %t999
  %t1002 = extractvalue { i64, ptr } %t1000, 1
  %t1003 = extractvalue { i64, ptr } %t1000, 0
  %t1004 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t1002, i64 %t1003, i8 34)
  %t1005 = call ptr @__olang_sb_room(ptr %s18, i64 %t1004)
  %t1006 = call i64 @__olang_rd_quote(ptr %t1005, i64 0, ptr %t1002, i64 %t1003, i8 34)
  call void @__olang_sb_add(ptr %s18, i64 %t1004)
  %t1007 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d93, i32 0, i32 1) }, 1
  %t1008 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d93, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s18, ptr %t1007, i64 %t1008)
  br label %bb113
bb128:
  store i32 65536, ptr %l248, !tbaa !23
  call void @__olang_scope_close(ptr %s17)
  %t1009 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t1011 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t1009)
  store i32 %t1011, ptr %l250
  %t1012 = icmp ne i32 %t1011, 0
  br i1 %t1012, label %bb130, label %ok.1013, !prof !99
ok.1013:
  br label %bb129
bb129:
  br label %bb134
bb130:
  %t1014 = load i32, ptr %l250, !tbaa !23
  %t1015 = ashr i32 %t1014, 16
  %t1017 = icmp eq i32 %t1015, 1
  store i1 %t1017, ptr %l252, !tbaa !21
  %t1018 = load i32, ptr %l250, !tbaa !23
  %t1019 = ashr i32 %t1018, 16
  %t1021 = icmp eq i32 %t1019, 1
  br i1 %t1021, label %bb131, label %bb132
bb131:
  call void @__olang_errpay_pop()
  br label %bb132
bb132:
  br label %bb133
bb133:
  br label %bb134
bb134:
  call void @__olang_scope_close(ptr %s0)
  %t1023 = load i32, ptr %l248, !tbaa !23
  store i32 %t1023, ptr %rv
  br label %ret
bb135:
  %t1024 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t1024, ptr %l255, !tbaa !27
  %t1025 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t1027 = call { i64, ptr } @compiler_2ffix_2ebuiltBy(ptr %v0, ptr %s0, { i64, ptr } %t1025)
  store { i64, ptr } %t1027, ptr %l257
  br label %bb136
bb136:
  %t1028 = load { i64, ptr }, ptr %l257, !tbaa !27
  %t1030 = extractvalue { i64, ptr } %t1028, 0
  %t1031 = extractvalue { i64, ptr } %t1028, 1
  %t1032 = mul i64 %t1030, 1
  %t1033 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1032)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1033, ptr %t1031, i64 %t1032, i1 false)
  %t1034 = insertvalue { i64, ptr } undef, i64 %t1030, 0
  %t1035 = insertvalue { i64, ptr } %t1034, ptr %t1033, 1
  %t1036 = load { i64, ptr }, ptr %l255, !tbaa !27
  %t1038 = call i32 @std_2fos_2eWriteFile(ptr %s0, ptr %s0, { i64, ptr } %t1036, { i64, ptr } %t1035)
  store i32 %t1038, ptr %l260
  %t1039 = icmp ne i32 %t1038, 0
  br i1 %t1039, label %bb138, label %ok.1040, !prof !99
ok.1040:
  br label %bb137
bb137:
  br label %bb142
bb138:
  %t1041 = load i32, ptr %l260, !tbaa !23
  %t1042 = ashr i32 %t1041, 16
  %t1044 = icmp eq i32 %t1042, 1
  store i1 %t1044, ptr %l262, !tbaa !21
  %t1045 = load i32, ptr %l260, !tbaa !23
  %t1046 = ashr i32 %t1045, 16
  %t1048 = icmp eq i32 %t1046, 1
  br i1 %t1048, label %bb139, label %bb140
bb139:
  call void @__olang_errpay_pop()
  br label %bb140
bb140:
  br label %bb141
bb141:
  br label %bb142
bb142:
  %t1050 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t1052 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t1050)
  store i32 %t1052, ptr %l266
  %t1053 = icmp ne i32 %t1052, 0
  br i1 %t1053, label %bb144, label %ok.1054, !prof !99
ok.1054:
  br label %bb143
bb143:
  br label %bb148
bb144:
  %t1055 = load i32, ptr %l266, !tbaa !23
  %t1056 = ashr i32 %t1055, 16
  %t1058 = icmp eq i32 %t1056, 1
  store i1 %t1058, ptr %l268, !tbaa !21
  %t1059 = load i32, ptr %l266, !tbaa !23
  %t1060 = ashr i32 %t1059, 16
  %t1062 = icmp eq i32 %t1060, 1
  br i1 %t1062, label %bb145, label %bb146
bb145:
  call void @__olang_errpay_pop()
  br label %bb146
bb146:
  br label %bb147
bb147:
  br label %bb148
bb148:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffix_2eexpand(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %lp1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca { i64, ptr }
  %l18 = alloca i1
  %l21 = alloca ptr
  %l22 = alloca i64
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l6
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t2, ptr %lp1
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  %t4 = load ptr, ptr %lp1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  store { i64, ptr } %a0, ptr %l2, !tbaa !27
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
  br label %bb15
bb4:
  br label %bb5
bb5:
  %t19 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t19, ptr %l14, !tbaa !27
  %t20 = load i64, ptr %l3, !tbaa !24
  %t22 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = getelementptr { i64, ptr }, ptr %t23, i64 %t20
  %t25 = load { i64, ptr }, ptr %t24, !tbaa !37
  store { i64, ptr } %t25, ptr %l5, !tbaa !27
  %t27 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t29 = call i1 @std_2fos_2eIsDir(ptr %v0, { i64, ptr } %t27)
  store i1 %t29, ptr %l18
  br label %bb6
bb6:
  %t30 = load i1, ptr %l18, !tbaa !21
  br i1 %t30, label %bb7, label %bb8
bb7:
  %t31 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t32 = load ptr, ptr %lp1
  call void @compiler_2ffix_2ewalk(ptr %v0, ptr %v1, { i64, ptr } %t31, ptr %t32)
  br label %bb9
bb8:
  %t35 = load ptr, ptr %lp1
  store ptr %t35, ptr %l21, !tbaa !29
  %t36 = ptrtoint ptr %v1 to i64
  store i64 %t36, ptr %l22, !tbaa !24
  %t37 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t37, label %bb10, label %bb11
bb9:
  br label %bb13
bb10:
  %t39 = call ptr @__olang_region_make(ptr %v1)
  %t40 = ptrtoint ptr %t39 to i64
  store i64 %t40, ptr %l22, !tbaa !24
  br label %bb11
bb11:
  %t41 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t41, 1
  %t44 = extractvalue { i64, ptr } %t41, 0
  %t45 = load i64, ptr %l22
  %t46 = inttoptr i64 %t45 to ptr
  %t47 = call ptr @__olang_scope_alloc(ptr %t46, i64 %t44)
  call void @olang_textcopy(ptr %t47, ptr %t43, i64 %t44)
  %t48 = insertvalue { i64, ptr } undef, i64 %t44, 0
  %t49 = insertvalue { i64, ptr } %t48, ptr %t47, 1
  %t51 = load i64, ptr %l22
  %t52 = inttoptr i64 %t51 to ptr
  %t53 = extractvalue { i64, ptr } %t49, 0
  %t54 = extractvalue { i64, ptr } %t49, 1
  %t55 = mul i64 %t53, 1
  %t56 = call ptr @__olang_scope_alloc(ptr %t52, i64 %t55)
  call void @llvm.memcpy.p0.p0.i64(ptr %t56, ptr %t54, i64 %t55, i1 false)
  %t57 = insertvalue { i64, ptr } undef, i64 %t53, 0
  %t58 = insertvalue { i64, ptr } %t57, ptr %t56, 1
  %t59 = load ptr, ptr %l21, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t59, { i64, ptr } %t58)
  br label %bb12
bb12:
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t61 = load i64, ptr %l3, !tbaa !24
  %t63 = add i64 %t61, 1
  store i64 %t63, ptr %l3, !tbaa !24
  br label %bb2
bb15:
  %t65 = load ptr, ptr %lp1
  %t66 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t65
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t66, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local i64 @compiler_2ffix_2emtime(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca %"std/os:FileInfo"
  %l2 = alloca %"std/os:FileInfo"
  %l4 = alloca %"std/os:FileInfo"
  %l5 = alloca i32
  %l7 = alloca i1
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call { i32, %"std/os:FileInfo" } @std_2fos_2eFileInfo_2eStat(ptr %v0, { i64, ptr } %a0)
  %t4 = extractvalue { i32, %"std/os:FileInfo" } %t3, 1
  %t5 = extractvalue { i32, %"std/os:FileInfo" } %t3, 0
  store i32 %t5, ptr %l5
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store %"std/os:FileInfo" %t4, ptr %l4
  br label %bb1
bb1:
  %t8 = load %"std/os:FileInfo", ptr %l4
  store %"std/os:FileInfo" %t8, ptr %l2
  br label %bb6
bb2:
  %t9 = load i32, ptr %l5, !tbaa !23
  %t10 = ashr i32 %t9, 16
  %t12 = icmp eq i32 %t10, 1
  store i1 %t12, ptr %l7, !tbaa !21
  %t13 = load i32, ptr %l5, !tbaa !23
  %t14 = ashr i32 %t13, 16
  %t16 = icmp eq i32 %t14, 1
  br i1 %t16, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  store i64 0, ptr %rv
  br label %ret
bb6:
  %t19 = load %"std/os:FileInfo", ptr %l2
  store %"std/os:FileInfo" %t19, ptr %l1
  %t20 = getelementptr %"std/os:FileInfo", ptr %l1, i32 0, i32 2
  %t21 = load i64, ptr %t20, !tbaa !24
  store i64 %t21, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2ffix_2enewest(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca [2 x { i64, ptr }]
  %l8 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca i32
  %l24 = alloca { i64, ptr }
  %l28 = alloca i1
  %l29 = alloca i64
  %l35 = alloca { i64, ptr }
  %l37 = alloca i64
  %l38 = alloca i64
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca i64
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store i64 0, ptr %l1, !tbaa !24
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call { i32, { i64, ptr } } @std_2fos_2eReadDir(ptr %v0, ptr %s0, { i64, ptr } %t1)
  %t4 = extractvalue { i32, { i64, ptr } } %t3, 1
  %t5 = extractvalue { i32, { i64, ptr } } %t3, 0
  store i32 %t5, ptr %l11
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store { i64, ptr } %t4, ptr %l10
  br label %bb1
bb1:
  %t8 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t8, ptr %l8, !tbaa !27
  br label %bb10
bb2:
  %t9 = load i32, ptr %l11, !tbaa !23
  %t10 = ashr i32 %t9, 16
  %t12 = icmp eq i32 %t10, 1
  br i1 %t12, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  %t14 = icmp sge i64 0, 0
  br i1 %t14, label %bb6, label %bb7
bb6:
  %t16 = icmp sle i64 0, 576460752303423487
  br i1 %t16, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_8fcf87cfa7be21dd_bbd76dac3520f231)
  unreachable
bb8:
  %t18 = mul i64 0, 16
  %t19 = insertvalue { i64, ptr } undef, i64 0, 0
  %t20 = insertvalue { i64, ptr } %t19, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t20, ptr %l8, !tbaa !27
  br label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_8fcf87cfa7be21dd_bbd76dac3520f231)
  unreachable
bb10:
  %t22 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t22, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t25 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t27 = extractvalue { i64, ptr } %t25, 0
  store i64 %t27, ptr %l5, !tbaa !24
  br label %bb11
bb11:
  store %olang.scope zeroinitializer, ptr %s2
  %t29 = load i64, ptr %l4, !tbaa !24
  %t30 = load i64, ptr %l5, !tbaa !24
  %t33 = icmp slt i64 %t29, %t30
  %t35 = xor i1 %t33, true
  br i1 %t35, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s2)
  br label %bb23
bb13:
  br label %bb14
bb14:
  %t37 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t37, ptr %l24, !tbaa !27
  %t38 = load i64, ptr %l4, !tbaa !24
  %t40 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !27
  %t42 = getelementptr { i64, ptr }, ptr %t41, i64 %t38
  %t43 = load { i64, ptr }, ptr %t42, !tbaa !37
  store { i64, ptr } %t43, ptr %l6, !tbaa !27
  %t45 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t47 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %s0, ptr %s2, { i64, ptr } %t45, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d100, i32 0, i32 1) })
  store i1 %t47, ptr %l28
  br label %bb15
bb15:
  %t48 = load i1, ptr %l28, !tbaa !21
  br i1 %t48, label %bb16, label %bb17
bb16:
  store %olang.scope zeroinitializer, ptr %s3
  %t49 = load i64, ptr %l1, !tbaa !24
  store i64 %t49, ptr %l29, !tbaa !24
  %t50 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t51 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t53 = insertvalue [2 x { i64, ptr }] undef, { i64, ptr } %t50, 0
  %t55 = insertvalue [2 x { i64, ptr }] %t53, { i64, ptr } %t51, 1
  store [2 x { i64, ptr }] %t55, ptr %l7
  %t58 = insertvalue { i64, ptr } undef, i64 2, 0
  %t59 = insertvalue { i64, ptr } %t58, ptr %l7, 1
  %t61 = call { i64, ptr } @std_2ffilepath_2eJoin(ptr %s3, ptr %s3, { i64, ptr } %t59)
  store { i64, ptr } %t61, ptr %l35
  br label %bb18
bb17:
  br label %bb21
bb18:
  %t62 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t63 = extractvalue { i64, ptr } %t62, 0
  %t64 = extractvalue { i64, ptr } %t62, 1
  %t65 = mul i64 %t63, 1
  %t66 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t65)
  call void @llvm.memcpy.p0.p0.i64(ptr %t66, ptr %t64, i64 %t65, i1 false)
  %t67 = insertvalue { i64, ptr } undef, i64 %t63, 0
  %t68 = insertvalue { i64, ptr } %t67, ptr %t66, 1
  %t70 = call i64 @compiler_2ffix_2emtime(ptr %s3, { i64, ptr } %t68)
  store i64 %t70, ptr %l37
  br label %bb19
bb19:
  %t71 = load i64, ptr %l29, !tbaa !24
  %t72 = load i64, ptr %l37, !tbaa !24
  %t73 = call i64 @std_2fprelude_2fnumber_2eI64_2eMax_3cI64_3e(i64 %t71, i64 %t72)
  store i64 %t73, ptr %l38
  br label %bb20
bb20:
  %t74 = load i64, ptr %l38, !tbaa !24
  store i64 %t74, ptr %l1, !tbaa !24
  call void @__olang_scope_close(ptr %s3)
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s2)
  br label %bb22
bb22:
  %t75 = load i64, ptr %l4, !tbaa !24
  %t77 = add i64 %t75, 1
  store i64 %t77, ptr %l4, !tbaa !24
  br label %bb11
bb23:
  %t79 = load i64, ptr %l1, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t79, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2ffix_2ewalk(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca [2 x { i64, ptr }]
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca i32
  %l25 = alloca { i64, ptr }
  %l29 = alloca i1
  %l30 = alloca i1
  %l32 = alloca i1
  %l38 = alloca { i64, ptr }
  %l40 = alloca i1
  %l44 = alloca i1
  %l45 = alloca ptr
  %l46 = alloca i64
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  store { i64, ptr } %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call { i32, { i64, ptr } } @std_2fos_2eReadDir(ptr %v0, ptr %s0, { i64, ptr } %t1)
  %t4 = extractvalue { i32, { i64, ptr } } %t3, 1
  %t5 = extractvalue { i32, { i64, ptr } } %t3, 0
  store i32 %t5, ptr %l12
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store { i64, ptr } %t4, ptr %l11
  br label %bb1
bb1:
  %t8 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t8, ptr %l9, !tbaa !27
  br label %bb10
bb2:
  %t9 = load i32, ptr %l12, !tbaa !23
  %t10 = ashr i32 %t9, 16
  %t12 = icmp eq i32 %t10, 1
  br i1 %t12, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  %t14 = icmp sge i64 0, 0
  br i1 %t14, label %bb6, label %bb7
bb6:
  %t16 = icmp sle i64 0, 576460752303423487
  br i1 %t16, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_9433da86f750b978_3ff5b65d50af9d4)
  unreachable
bb8:
  %t18 = mul i64 0, 16
  %t19 = insertvalue { i64, ptr } undef, i64 0, 0
  %t20 = insertvalue { i64, ptr } %t19, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t20, ptr %l9, !tbaa !27
  br label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_9433da86f750b978_3ff5b65d50af9d4)
  unreachable
bb10:
  %t22 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t22, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t25 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t27 = extractvalue { i64, ptr } %t25, 0
  store i64 %t27, ptr %l5, !tbaa !24
  br label %bb11
bb11:
  store %olang.scope zeroinitializer, ptr %s2
  %t29 = load i64, ptr %l4, !tbaa !24
  %t30 = load i64, ptr %l5, !tbaa !24
  %t33 = icmp slt i64 %t29, %t30
  %t35 = xor i1 %t33, true
  br i1 %t35, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s2)
  br label %bb37
bb13:
  br label %bb14
bb14:
  %t37 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t37, ptr %l25, !tbaa !27
  %t38 = load i64, ptr %l4, !tbaa !24
  %t40 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !27
  %t42 = getelementptr { i64, ptr }, ptr %t41, i64 %t38
  %t43 = load { i64, ptr }, ptr %t42, !tbaa !37
  store { i64, ptr } %t43, ptr %l6, !tbaa !27
  %t45 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t47 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s2, { i64, ptr } %t45, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d101, i32 0, i32 1) })
  store i1 %t47, ptr %l29
  br label %bb15
bb15:
  %t48 = load i1, ptr %l29, !tbaa !21
  br i1 %t48, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb19
bb17:
  %t49 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t51 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s2, { i64, ptr } %t49, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d102, i32 0, i32 1) })
  store i1 %t51, ptr %l32
  br label %bb18
bb18:
  %t52 = load i1, ptr %l32, !tbaa !21
  store i1 %t52, ptr %l30, !tbaa !21
  br label %bb19
bb19:
  %t53 = load i1, ptr %l30, !tbaa !21
  br i1 %t53, label %bb20, label %bb21
bb20:
  call void @__olang_scope_close(ptr %s2)
  br label %bb36
bb21:
  br label %bb22
bb22:
  %t54 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t55 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t57 = insertvalue [2 x { i64, ptr }] undef, { i64, ptr } %t54, 0
  %t59 = insertvalue [2 x { i64, ptr }] %t57, { i64, ptr } %t55, 1
  store [2 x { i64, ptr }] %t59, ptr %l7
  %t62 = insertvalue { i64, ptr } undef, i64 2, 0
  %t63 = insertvalue { i64, ptr } %t62, ptr %l7, 1
  %t65 = call { i64, ptr } @std_2ffilepath_2eJoin(ptr %s2, ptr %s2, { i64, ptr } %t63)
  store { i64, ptr } %t65, ptr %l38
  br label %bb23
bb23:
  %t66 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t66, ptr %l8, !tbaa !27
  %t67 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t69 = call i1 @std_2fos_2eIsDir(ptr %s2, { i64, ptr } %t67)
  store i1 %t69, ptr %l40
  br label %bb24
bb24:
  %t70 = load i1, ptr %l40, !tbaa !21
  br i1 %t70, label %bb25, label %bb26
bb25:
  %t71 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t72 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2ffix_2ewalk(ptr %s2, ptr %v1, { i64, ptr } %t71, ptr %t72)
  br label %bb27
bb26:
  store %olang.scope zeroinitializer, ptr %s5
  %t75 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t77 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %s0, ptr %s5, { i64, ptr } %t75, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d103, i32 0, i32 1) })
  store i1 %t77, ptr %l44
  br label %bb28
bb27:
  br label %bb35
bb28:
  %t78 = load i1, ptr %l44, !tbaa !21
  br i1 %t78, label %bb29, label %bb30
bb29:
  %t79 = load ptr, ptr %l1, !tbaa !29
  store ptr %t79, ptr %l45, !tbaa !29
  %t80 = ptrtoint ptr %v1 to i64
  store i64 %t80, ptr %l46, !tbaa !24
  %t81 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t81, label %bb31, label %bb32
bb30:
  br label %bb34
bb31:
  %t83 = call ptr @__olang_region_make(ptr %v1)
  %t84 = ptrtoint ptr %t83 to i64
  store i64 %t84, ptr %l46, !tbaa !24
  br label %bb32
bb32:
  %t85 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t87 = extractvalue { i64, ptr } %t85, 1
  %t88 = extractvalue { i64, ptr } %t85, 0
  %t89 = load i64, ptr %l46
  %t90 = inttoptr i64 %t89 to ptr
  %t91 = call ptr @__olang_scope_alloc(ptr %t90, i64 %t88)
  call void @olang_textcopy(ptr %t91, ptr %t87, i64 %t88)
  %t92 = insertvalue { i64, ptr } undef, i64 %t88, 0
  %t93 = insertvalue { i64, ptr } %t92, ptr %t91, 1
  %t95 = load i64, ptr %l46
  %t96 = inttoptr i64 %t95 to ptr
  %t97 = extractvalue { i64, ptr } %t93, 0
  %t98 = extractvalue { i64, ptr } %t93, 1
  %t99 = mul i64 %t97, 1
  %t100 = call ptr @__olang_scope_alloc(ptr %t96, i64 %t99)
  call void @llvm.memcpy.p0.p0.i64(ptr %t100, ptr %t98, i64 %t99, i1 false)
  %t101 = insertvalue { i64, ptr } undef, i64 %t97, 0
  %t102 = insertvalue { i64, ptr } %t101, ptr %t100, 1
  %t103 = load ptr, ptr %l45, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t103, { i64, ptr } %t102)
  br label %bb33
bb33:
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s5)
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s2)
  br label %bb36
bb36:
  %t105 = load i64, ptr %l4, !tbaa !24
  %t107 = add i64 %t105, 1
  store i64 %t107, ptr %l4, !tbaa !24
  br label %bb11
bb37:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

declare void @__olang_errpay_pop()
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
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_202_3e_2e_2d1 = weak hidden constant i1 false
@.d0 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"fix" }>, align 8
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
@.d1 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"olang: " }>, align 8
@.d2 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c": cannot be read\0A" }>, align 8
@.d3 = private constant <{ i64, [34 x i8] }> <{ i64 0, [34 x i8] c"olang: fix: no tools directory at " }>, align 8
@.d4 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c" (OLANG_TOOLS names another)\0A" }>, align 8
@.d5 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"olang: fix: cannot make " }>, align 8
@.d6 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@__olang_prog_scope = external thread_local(initialexec) global ptr
@.d7 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"tools_" }>, align 8
@.d8 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d9 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare ptr @__olang_errpay_top_get()
define linkonce_odr { i32, { i64, [2 x i64] } } @olang_2emir_2eHelperKind_2eCopy_2eerror_7bstd_2fos_3aError_7d(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca { i32, { i64, [2 x i64] } }
  %l3 = alloca { i64, [2 x i64] }
  %rv = alloca { i32, { i64, [2 x i64] } }
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load { i32, { i64, [2 x i64] } }, ptr %a0
  store { i32, { i64, [2 x i64] } } %t2, ptr %l1
  %t3 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l1, i32 0, i32 1
  %t5 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fos_3aError_24payload(ptr %v0, ptr %t3)
  store { i64, [2 x i64] } %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load { i64, [2 x i64] }, ptr %l3
  %t7 = getelementptr { i32, { i64, [2 x i64] } }, ptr %l1, i32 0, i32 1
  store { i64, [2 x i64] } %t6, ptr %t7
  %t8 = load { i32, { i64, [2 x i64] } }, ptr %l1
  store { i32, { i64, [2 x i64] } } %t8, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, [2 x i64] } }, ptr %rv
  ret { i32, { i64, [2 x i64] } } %rr
}

@.d10 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"olang: fix: cannot run " }>, align 8
declare void @__olang_sb_put(ptr, ptr, i64)
@.d11 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d12 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
declare void @__olang_sb_done(ptr)
@.d13 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d14 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"os.Error.NotFound" }>, align 8
@.d15 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
declare i64 @__olang_rd_quote(ptr, i64, ptr, i64, i8)
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
declare void @__olang_sb_add(ptr, i64)
@.d16 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d17 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"os.Error.Exists" }>, align 8
@.d18 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"os.Error.Denied" }>, align 8
@.d19 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"os.Error.NotDir" }>, align 8
@.d20 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"os.Error.IsDir" }>, align 8
@.d21 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"os.Error.NotEmpty" }>, align 8
@.d22 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"os.Error.Failed" }>, align 8
@.d23 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c":\0A" }>, align 8
@.d24 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d25 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d26 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d27 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"olang: " }>, align 8
@.d28 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c": cannot be written\0A" }>, align 8
@.d29 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d30 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"s" }>, align 8
@.d31 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"olang fix: " }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d32 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" place" }>, align 8
@.d33 = private constant <{ i64, [89 x i8] }> <{ i64 0, [89 x i8] c" above may mean something else in the language of today than when written - look at each\0A" }>, align 8
@.d34 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"text" }>, align 8
@.d35 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"driven" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d36 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"driven" }>, align 8
@.d37 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"OLANG_TOOLS" }>, align 8
@.d38 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d39 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d40 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"/../tools" }>, align 8
@.d41 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"--std" }>, align 8
@.d42 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"--olang" }>, align 8
@.d43 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d44 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d45 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"by hand:" }>, align 8
@.d46 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"for a person:" }>, align 8
@.d47 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"  " }>, align 8
@.d48 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"tools_" }>, align 8
@.d49 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".from" }>, align 8
@.d50 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d51 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"prelude" }>, align 8
@.d52 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"../compiler" }>, align 8
@.d53 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"tools_" }>, align 8
@.d54 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d55 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"olang: fix: cannot build tools/" }>, align 8
@.d56 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c".olang: " }>, align 8
@.d57 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d58 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d59 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"os.Error.NotFound" }>, align 8
@.d60 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d61 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d62 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"os.Error.Exists" }>, align 8
@.d63 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"os.Error.Denied" }>, align 8
@.d64 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"os.Error.NotDir" }>, align 8
@.d65 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"os.Error.IsDir" }>, align 8
@.d66 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"os.Error.NotEmpty" }>, align 8
@.d67 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"os.Error.Failed" }>, align 8
@.d68 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"tools_" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_205_3e_2e_2d1 = weak hidden constant i1 false
@.d69 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".olang" }>, align 8
@.d70 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"build" }>, align 8
@.d71 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"-output" }>, align 8
@.d72 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"olang: fix: cannot run " }>, align 8
@.d73 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d74 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d75 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d76 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"os.Error.NotFound" }>, align 8
@.d77 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d78 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d79 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"os.Error.Exists" }>, align 8
@.d80 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"os.Error.Denied" }>, align 8
@.d81 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"os.Error.NotDir" }>, align 8
@.d82 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"os.Error.IsDir" }>, align 8
@.d83 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"os.Error.NotEmpty" }>, align 8
@.d84 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"os.Error.Failed" }>, align 8
@.d85 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"olang: fix: tools/" }>, align 8
@.d86 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c".olang does not build:\0A" }>, align 8
@.d87 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c"olang: fix: cannot put tools_" }>, align 8
@.d88 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c" in place: " }>, align 8
@.d89 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d90 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d91 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"os.Error.NotFound" }>, align 8
@.d92 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d93 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d94 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"os.Error.Exists" }>, align 8
@.d95 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"os.Error.Denied" }>, align 8
@.d96 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"os.Error.NotDir" }>, align 8
@.d97 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"os.Error.IsDir" }>, align 8
@.d98 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"os.Error.NotEmpty" }>, align 8
@.d99 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"os.Error.Failed" }>, align 8
@__olang_empty_array = external constant [16 x i64]
@.d100 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".olang" }>, align 8
@.d101 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d102 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"build" }>, align 8
@.d103 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".olang" }>, align 8
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
define linkonce_odr { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fos_3aError_24payload(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca { i64, [2 x i64] }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l22 = alloca i64
  %l23 = alloca { i64, ptr }
  %rv = alloca { i64, [2 x i64] }
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load { i64, [2 x i64] }, ptr %a0
  store { i64, [2 x i64] } %t2, ptr %l1
  %t3 = load i64, ptr %l1, !range !{i64 0, i64 7}
  switch i64 %t3, label %bb1 [ i64 0, label %bb2 i64 1, label %bb3 i64 2, label %bb4 i64 3, label %bb5 i64 4, label %bb6 i64 5, label %bb7 i64 6, label %bb8 ]
bb1:
  %t5 = load { i64, [2 x i64] }, ptr %l1
  store { i64, [2 x i64] } %t5, ptr %rv
  br label %ret
bb2:
  %t6 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t7 = getelementptr { { i64, ptr } }, ptr %t6, i32 0, i32 0
  %t8 = load { i64, ptr }, ptr %t7
  store { i64, ptr } %t8, ptr %l3, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t9, 0
  store i64 %t10, ptr %l4, !tbaa !24
  %t11 = load i64, ptr %l4, !tbaa !24
  %t12 = mul i64 %t11, 1
  %t13 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t12)
  %t14 = insertvalue { i64, ptr } undef, i64 %t11, 0
  %t15 = insertvalue { i64, ptr } %t14, ptr %t13, 1
  store { i64, ptr } %t15, ptr %l5, !tbaa !27
  %t16 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = load i64, ptr %l4, !tbaa !24
  %t21 = mul i64 %t20, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t17, ptr %t19, i64 %t21, i1 false)
  %t22 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t23 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t24 = getelementptr { { i64, ptr } }, ptr %t23, i32 0, i32 0
  store { i64, ptr } %t22, ptr %t24
  br label %bb1
bb3:
  %t25 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t26 = getelementptr { { i64, ptr } }, ptr %t25, i32 0, i32 0
  %t27 = load { i64, ptr }, ptr %t26
  store { i64, ptr } %t27, ptr %l6, !tbaa !27
  %t28 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t28, 0
  store i64 %t29, ptr %l7, !tbaa !24
  %t30 = load i64, ptr %l7, !tbaa !24
  %t31 = mul i64 %t30, 1
  %t32 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t31)
  %t33 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t34 = insertvalue { i64, ptr } %t33, ptr %t32, 1
  store { i64, ptr } %t34, ptr %l8, !tbaa !27
  %t35 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !27
  %t37 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = load i64, ptr %l7, !tbaa !24
  %t40 = mul i64 %t39, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t36, ptr %t38, i64 %t40, i1 false)
  %t41 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t42 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t43 = getelementptr { { i64, ptr } }, ptr %t42, i32 0, i32 0
  store { i64, ptr } %t41, ptr %t43
  br label %bb1
bb4:
  %t44 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t45 = getelementptr { { i64, ptr } }, ptr %t44, i32 0, i32 0
  %t46 = load { i64, ptr }, ptr %t45
  store { i64, ptr } %t46, ptr %l9, !tbaa !27
  %t47 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t48 = extractvalue { i64, ptr } %t47, 0
  store i64 %t48, ptr %l10, !tbaa !24
  %t49 = load i64, ptr %l10, !tbaa !24
  %t50 = mul i64 %t49, 1
  %t51 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t50)
  %t52 = insertvalue { i64, ptr } undef, i64 %t49, 0
  %t53 = insertvalue { i64, ptr } %t52, ptr %t51, 1
  store { i64, ptr } %t53, ptr %l11, !tbaa !27
  %t54 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !27
  %t58 = load i64, ptr %l10, !tbaa !24
  %t59 = mul i64 %t58, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t55, ptr %t57, i64 %t59, i1 false)
  %t60 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t61 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t62 = getelementptr { { i64, ptr } }, ptr %t61, i32 0, i32 0
  store { i64, ptr } %t60, ptr %t62
  br label %bb1
bb5:
  %t63 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t64 = getelementptr { { i64, ptr } }, ptr %t63, i32 0, i32 0
  %t65 = load { i64, ptr }, ptr %t64
  store { i64, ptr } %t65, ptr %l12, !tbaa !27
  %t66 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t67 = extractvalue { i64, ptr } %t66, 0
  store i64 %t67, ptr %l13, !tbaa !24
  %t68 = load i64, ptr %l13, !tbaa !24
  %t69 = mul i64 %t68, 1
  %t70 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t69)
  %t71 = insertvalue { i64, ptr } undef, i64 %t68, 0
  %t72 = insertvalue { i64, ptr } %t71, ptr %t70, 1
  store { i64, ptr } %t72, ptr %l14, !tbaa !27
  %t73 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !27
  %t75 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = load i64, ptr %l13, !tbaa !24
  %t78 = mul i64 %t77, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t74, ptr %t76, i64 %t78, i1 false)
  %t79 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t80 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t81 = getelementptr { { i64, ptr } }, ptr %t80, i32 0, i32 0
  store { i64, ptr } %t79, ptr %t81
  br label %bb1
bb6:
  %t82 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t83 = getelementptr { { i64, ptr } }, ptr %t82, i32 0, i32 0
  %t84 = load { i64, ptr }, ptr %t83
  store { i64, ptr } %t84, ptr %l15, !tbaa !27
  %t85 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t86 = extractvalue { i64, ptr } %t85, 0
  store i64 %t86, ptr %l16, !tbaa !24
  %t87 = load i64, ptr %l16, !tbaa !24
  %t88 = mul i64 %t87, 1
  %t89 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t88)
  %t90 = insertvalue { i64, ptr } undef, i64 %t87, 0
  %t91 = insertvalue { i64, ptr } %t90, ptr %t89, 1
  store { i64, ptr } %t91, ptr %l17, !tbaa !27
  %t92 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t93 = load ptr, ptr %t92, !tbaa !27
  %t94 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !27
  %t96 = load i64, ptr %l16, !tbaa !24
  %t97 = mul i64 %t96, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t93, ptr %t95, i64 %t97, i1 false)
  %t98 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t99 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t100 = getelementptr { { i64, ptr } }, ptr %t99, i32 0, i32 0
  store { i64, ptr } %t98, ptr %t100
  br label %bb1
bb7:
  %t101 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t102 = getelementptr { { i64, ptr } }, ptr %t101, i32 0, i32 0
  %t103 = load { i64, ptr }, ptr %t102
  store { i64, ptr } %t103, ptr %l18, !tbaa !27
  %t104 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t105 = extractvalue { i64, ptr } %t104, 0
  store i64 %t105, ptr %l19, !tbaa !24
  %t106 = load i64, ptr %l19, !tbaa !24
  %t107 = mul i64 %t106, 1
  %t108 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t107)
  %t109 = insertvalue { i64, ptr } undef, i64 %t106, 0
  %t110 = insertvalue { i64, ptr } %t109, ptr %t108, 1
  store { i64, ptr } %t110, ptr %l20, !tbaa !27
  %t111 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t112 = load ptr, ptr %t111, !tbaa !27
  %t113 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !27
  %t115 = load i64, ptr %l19, !tbaa !24
  %t116 = mul i64 %t115, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t112, ptr %t114, i64 %t116, i1 false)
  %t117 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t118 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t119 = getelementptr { { i64, ptr } }, ptr %t118, i32 0, i32 0
  store { i64, ptr } %t117, ptr %t119
  br label %bb1
bb8:
  %t120 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t121 = getelementptr { { i64, ptr } }, ptr %t120, i32 0, i32 0
  %t122 = load { i64, ptr }, ptr %t121
  store { i64, ptr } %t122, ptr %l21, !tbaa !27
  %t123 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t124 = extractvalue { i64, ptr } %t123, 0
  store i64 %t124, ptr %l22, !tbaa !24
  %t125 = load i64, ptr %l22, !tbaa !24
  %t126 = mul i64 %t125, 1
  %t127 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t126)
  %t128 = insertvalue { i64, ptr } undef, i64 %t125, 0
  %t129 = insertvalue { i64, ptr } %t128, ptr %t127, 1
  store { i64, ptr } %t129, ptr %l23, !tbaa !27
  %t130 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !27
  %t132 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t133 = load ptr, ptr %t132, !tbaa !27
  %t134 = load i64, ptr %l22, !tbaa !24
  %t135 = mul i64 %t134, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t131, ptr %t133, i64 %t135, i1 false)
  %t136 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t137 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t138 = getelementptr { { i64, ptr } }, ptr %t137, i32 0, i32 0
  store { i64, ptr } %t136, ptr %t138
  br label %bb1
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

declare ptr @__olang_sb_grow(ptr, i64) noinline
declare { i32, { i64, ptr } } @std_2fos_2eRealPath(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2ffetch_2eCacheDir(ptr %v0)
declare { i64, ptr } @std_2ffilepath_2eJoin(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @compiler_2fbuild_2eHashOf(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_74a546a3dd225c9b_f3beb7f3829b0fbf = external constant [0 x i8]
declare %"std/io:Writer" @std_2fio_3aWriter_2ector(ptr %v0, i32 %a0, i64 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v0, ptr %v1, ptr %a0)
declare { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @std_2fio_2estd_2fio_3aWriter_2eWrite(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @std_2fio_2estd_2fio_3aWriter_2eFlush(ptr %v0, ptr %a0)
declare i1 @std_2fos_2eIsDir(ptr %v0, { i64, ptr } %a0)
declare i32 @std_2fos_2eMkDirAll(ptr %v0, { i64, ptr } %a0)
declare i64 @std_2fprelude_2fnumber_2eI64_2eMin_3cI64_3e(i64 %a0, i64 %a1)
@olang_loc_299e69389bcee8f2_b185402659ea7d46 = external constant [0 x i8]
declare { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, i1 %a2, { i64, ptr } %a3)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @std_2fos_2eWriteFile(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %v0, ptr %v1, ptr %a0)
declare { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @std_2ffilepath_2eDir(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, %"std/os:FileInfo" } @std_2fos_2eFileInfo_2eStat(ptr %v0, { i64, ptr } %a0)
declare %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %v0, ptr %v1, ptr %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fnumber_2eI64_2eMax_3cI64_3e(i64 %a0, i64 %a1)
declare { i32, { i64, ptr } } @std_2fos_2eMkTemp(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @std_2fos_2eRemoveAll(ptr %v0, { i64, ptr } %a0)
declare i32 @std_2fos_2eRename(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i32, { i64, ptr } } @std_2fos_2eReadDir(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_8fcf87cfa7be21dd_bbd76dac3520f231 = external constant [0 x i8]
@olang_loc_9433da86f750b978_3ff5b65d50af9d4 = external constant [0 x i8]

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
