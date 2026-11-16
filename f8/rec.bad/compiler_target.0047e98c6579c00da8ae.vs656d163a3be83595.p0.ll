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
%"std/os:Output" = type { i32, { i64, ptr }, { i64, ptr } }
%"<sys/utsname.h>:utsname" = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/target:Target" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i1, i1 }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"std/prelude/text:LineIter" = type { { i64, ptr }, i64 }
%"compiler/diag:Diagnostics" = type { i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, [3 x i64] }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/os:FileInfo" = type { i32, i64, i64 }
@G_2ecompiler_2ftarget_2eArchCpuFlags = constant <{ [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftarget_2eArchCpuFlags.k1, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftarget_2eArchCpuFlags.k2 }>, align 32
@G_2ecompiler_2ftarget_2eArchCpuFlags.k1 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\2D\6D\61\72\63\68\3D" }>, align 8
@G_2ecompiler_2ftarget_2eArchCpuFlags.k2 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\2D\6D\63\70\75\3D" }>, align 8
@G_2ecompiler_2ftarget_2eArchDefaultCpus = constant <{ [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftarget_2eArchDefaultCpus.k1, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftarget_2eArchDefaultCpus.k2 }>, align 32
@G_2ecompiler_2ftarget_2eArchDefaultCpus.k1 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\78\38\36\2D\36\34" }>, align 8
@G_2ecompiler_2ftarget_2eArchDefaultCpus.k2 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\67\65\6E\65\72\69\63" }>, align 8
@G_2ecompiler_2ftarget_2eArchs = constant <{ [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftarget_2eArchs.k1, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftarget_2eArchs.k2 }>, align 32
@G_2ecompiler_2ftarget_2eArchs.k1 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\78\38\36\5F\36\34" }>, align 8
@G_2ecompiler_2ftarget_2eArchs.k2 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\61\61\72\63\68\36\34" }>, align 8
@G_2ecompiler_2ftarget_2eClangs = constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftarget_2eClangs.k1, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftarget_2eClangs.k2, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftarget_2eClangs.k3, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftarget_2eClangs.k4 }>, align 64
@G_2ecompiler_2ftarget_2eClangs.k1 = internal constant <{ [8 x i8] }> <{ [8 x i8] c"\63\6C\61\6E\67\2D\32\30" }>, align 8
@G_2ecompiler_2ftarget_2eClangs.k2 = internal constant <{ [8 x i8] }> <{ [8 x i8] c"\63\6C\61\6E\67\2D\31\39" }>, align 8
@G_2ecompiler_2ftarget_2eClangs.k3 = internal constant <{ [8 x i8] }> <{ [8 x i8] c"\63\6C\61\6E\67\2D\31\38" }>, align 8
@G_2ecompiler_2ftarget_2eClangs.k4 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\63\6C\61\6E\67" }>, align 8
@G_2ecompiler_2ftarget_2eIeeeUnsafe = constant <{ [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\0A\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftarget_2eIeeeUnsafe.k1, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftarget_2eIeeeUnsafe.k2 }>, align 32
@G_2ecompiler_2ftarget_2eIeeeUnsafe.k1 = internal constant <{ [10 x i8] }> <{ [10 x i8] c"\61\76\78\35\31\32\62\66\31\36" }>, align 8
@G_2ecompiler_2ftarget_2eIeeeUnsafe.k2 = internal constant <{ [12 x i8] }> <{ [12 x i8] c"\61\76\78\6E\65\63\6F\6E\76\65\72\74" }>, align 8
@G_2ecompiler_2ftarget_2eLevelFlags = constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\27\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftarget_2eLevelFlags.k1, [8 x i8] c"\2B\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftarget_2eLevelFlags.k2, [8 x i8] c"\2B\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ftarget_2eLevelFlags.k3 }>, align 32
@G_2ecompiler_2ftarget_2eLevelFlags.k1 = internal constant <{ [39 x i8] }> <{ [39 x i8] c"\63\78\31\36\20\6C\61\68\66\5F\6C\6D\20\70\6F\70\63\6E\74\20\73\73\65\34\5F\31\20\73\73\65\34\5F\32\20\73\73\73\65\33" }>, align 32
@G_2ecompiler_2ftarget_2eLevelFlags.k2 = internal constant <{ [43 x i8] }> <{ [43 x i8] c"\61\76\78\20\61\76\78\32\20\62\6D\69\31\20\62\6D\69\32\20\66\31\36\63\20\66\6D\61\20\61\62\6D\20\6D\6F\76\62\65\20\78\73\61\76\65" }>, align 32
@G_2ecompiler_2ftarget_2eLevelFlags.k3 = internal constant <{ [43 x i8] }> <{ [43 x i8] c"\61\76\78\35\31\32\66\20\61\76\78\35\31\32\62\77\20\61\76\78\35\31\32\63\64\20\61\76\78\35\31\32\64\71\20\61\76\78\35\31\32\76\6C" }>, align 32
@G_2ecompiler_2ftarget_2eSkylakeProbe = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\2C\01\00\00\00\00\00\00", ptr @G_2ecompiler_2ftarget_2eSkylakeProbe.k1 }>, align 8
@G_2ecompiler_2ftarget_2eSkylakeProbe.k1 = internal global <{ [300 x i8] }> <{ [300 x i8] c"\74\61\72\67\65\74\20\64\61\74\61\6C\61\79\6F\75\74\20\3D\20\22\65\2D\6D\3A\65\2D\70\32\37\30\3A\33\32\3A\33\32\2D\70\32\37\31\3A\33\32\3A\33\32\2D\70\32\37\32\3A\36\34\3A\36\34\2D\69\36\34\3A\36\34\2D\69\31\32\38\3A\31\32\38\2D\66\38\30\3A\31\32\38\2D\6E\38\3A\31\36\3A\33\32\3A\36\34\2D\53\31\32\38\22\0A\74\61\72\67\65\74\20\74\72\69\70\6C\65\20\3D\20\22\78\38\36\5F\36\34\2D\70\63\2D\6C\69\6E\75\78\2D\67\6E\75\22\0A\61\74\74\72\69\62\75\74\65\73\20\23\30\20\3D\20\7B\20\6E\6F\69\6E\6C\69\6E\65\20\6E\6F\75\6E\77\69\6E\64\20\22\74\61\72\67\65\74\2D\63\70\75\22\3D\22\73\6B\79\6C\61\6B\65\2D\61\76\78\35\31\32\22\20\22\74\61\72\67\65\74\2D\66\65\61\74\75\72\65\73\22\3D\22\2B\61\76\78\2C\2B\61\76\78\35\31\32\62\66\31\36\2C\2B\61\76\78\35\31\32\66\2C\2B\66\6D\61\2C\2D\61\76\78\6E\65\63\6F\6E\76\65\72\74\2C\2B\73\73\65\32\22\20\22\74\75\6E\65\2D\63\70\75\22\3D\22\67\65\6E\65\72\69\63\22\20\7D\0A" }>, align 64
define dso_local { i32, %"std/os:Output" } @compiler_2ftarget_2eClangSays(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1, i1 %a2) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca %"std/os:Output"
  %l7 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l12 = alloca i1
  %l14 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i32
  %l21 = alloca { i64, ptr }
  %l25 = alloca i1
  %l27 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %l30 = alloca i32
  %l38 = alloca i1
  %l41 = alloca i1
  %l42 = alloca i64
  %l44 = alloca { i64, ptr }
  %l46 = alloca i64
  %l49 = alloca i64
  %l50 = alloca i64
  %l57 = alloca %"std/os:Output"
  %l58 = alloca %"std/os:Output"
  %l62 = alloca %"std/os:Output"
  %l63 = alloca i32
  %l67 = alloca i1
  %l69 = alloca i1
  %l71 = alloca i1
  %l73 = alloca { i64, ptr }
  %l75 = alloca i32
  %l77 = alloca i1
  %l81 = alloca { i64, ptr }
  %l82 = alloca i32
  %l90 = alloca i32
  %l92 = alloca i1
  %l98 = alloca i32
  %l100 = alloca i1
  %l104 = alloca i32
  %l106 = alloca i1
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca { i32, %"std/os:Output" }
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t2 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t5 = call { i64, ptr } @compiler_2ftarget_2eprobeKey(ptr %v0, ptr %v1, ptr %s0, { i64, ptr } %t1, { i64, ptr } %t2)
  store { i64, ptr } %t5, ptr %l10
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t6, ptr %l3, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t9 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t7, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d0, i32 0, i32 1) })
  store i1 %t9, ptr %l12
  br label %bb2
bb2:
  %t10 = load i1, ptr %l12, !tbaa !21
  %t11 = xor i1 %t10, true
  br i1 %t11, label %bb3, label %bb4
bb3:
  %t13 = call { i64, ptr } @compiler_2ftarget_2eprobeDir(ptr %s0)
  store { i64, ptr } %t13, ptr %l15
  br label %bb5
bb4:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d1, i32 0, i32 1) }, ptr %l14, !tbaa !27
  br label %bb10
bb5:
  %t14 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t16 = call i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eHash(ptr %s0, { i64, ptr } %t14)
  store i64 %t16, ptr %l17
  br label %bb6
bb6:
  %t17 = load i64, ptr %l17, !tbaa !24
  store i64 %t17, ptr %l18, !tbaa !65
  %t18 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s0, i64 16)
  %t19 = extractvalue { i32, i64 } %t18, 1
  %t20 = extractvalue { i32, i64 } %t18, 0
  store i32 %t20, ptr %l20
  %t21 = icmp ne i32 %t20, 0
  br i1 %t21, label %bb8, label %ok.22, !prof !99
ok.22:
  store i64 %t19, ptr %l19
  br label %bb7
bb7:
  %t23 = load i64, ptr %l18, !tbaa !65
  %t24 = load i64, ptr %l19, !tbaa !24
  %t25 = call { i64, ptr } @std_2fprelude_2ftext_2eU64_2eFormat(ptr %s0, i64 %t23, i64 %t24)
  store { i64, ptr } %t25, ptr %l21
  br label %bb9
bb8:
  call void @__olang_check_failed(ptr @olang_loc_def72623566706b3_6d1f4e2e8af6f867)
  unreachable
bb9:
  %t26 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t27 = extractvalue { i64, ptr } %t26, 1
  %t28 = extractvalue { i64, ptr } %t26, 0
  %t29 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t30 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  %t31 = add i64 %t28, %t30
  %t32 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t33 = extractvalue { i64, ptr } %t32, 1
  %t34 = extractvalue { i64, ptr } %t32, 0
  %t35 = add i64 %t31, %t34
  %t36 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t35)
  call void @olang_textcopy(ptr %t36, ptr %t27, i64 %t28)
  %t37 = getelementptr i8, ptr %t36, i64 %t28
  call void @olang_textcopy(ptr %t37, ptr %t29, i64 %t30)
  %t38 = getelementptr i8, ptr %t37, i64 %t30
  call void @olang_textcopy(ptr %t38, ptr %t33, i64 %t34)
  %t39 = insertvalue { i64, ptr } undef, i64 %t35, 0
  %t40 = insertvalue { i64, ptr } %t39, ptr %t36, 1
  %t42 = extractvalue { i64, ptr } %t40, 0
  %t43 = extractvalue { i64, ptr } %t40, 1
  %t44 = mul i64 %t42, 1
  %t45 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t44)
  call void @llvm.memcpy.p0.p0.i64(ptr %t45, ptr %t43, i64 %t44, i1 false)
  %t46 = insertvalue { i64, ptr } undef, i64 %t42, 0
  %t47 = insertvalue { i64, ptr } %t46, ptr %t45, 1
  store { i64, ptr } %t47, ptr %l14, !tbaa !27
  br label %bb10
bb10:
  %t49 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t49, ptr %l4, !tbaa !27
  %t50 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t52 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t50, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store i1 %t52, ptr %l25
  br label %bb11
bb11:
  %t53 = load i1, ptr %l25, !tbaa !21
  %t54 = xor i1 %t53, true
  br i1 %t54, label %bb12, label %bb13
bb12:
  store %olang.scope zeroinitializer, ptr %s2
  %t56 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t58 = call { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %s0, ptr %s2, { i64, ptr } %t56)
  %t59 = extractvalue { i32, { i64, ptr } } %t58, 1
  %t60 = extractvalue { i32, { i64, ptr } } %t58, 0
  store i32 %t60, ptr %l30
  %t61 = icmp ne i32 %t60, 0
  br i1 %t61, label %bb15, label %ok.62, !prof !99
ok.62:
  store { i64, ptr } %t59, ptr %l29
  br label %bb14
bb13:
  br label %bb36
bb14:
  %t63 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t63, ptr %l27, !tbaa !27
  br label %bb19
bb15:
  %t64 = load i32, ptr %l30, !tbaa !23
  %t65 = ashr i32 %t64, 16
  %t67 = icmp eq i32 %t65, 1
  br i1 %t67, label %bb16, label %bb17
bb16:
  call void @__olang_errpay_pop()
  br label %bb17
bb17:
  br label %bb18
bb18:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d4, i32 0, i32 1) }, ptr %l27, !tbaa !27
  br label %bb19
bb19:
  %t69 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t69, ptr %l5, !tbaa !27
  %t70 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t72 = extractvalue { i64, ptr } %t70, 0
  %t73 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t75 = extractvalue { i64, ptr } %t73, 0
  %t78 = icmp sgt i64 %t72, %t75
  br i1 %t78, label %bb20, label %bb21
bb20:
  %t80 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t81 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t84 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s2, ptr %s0, { i64, ptr } %t80, { i64, ptr } %t81)
  store i1 %t84, ptr %l41
  br label %bb22
bb21:
  store i1 false, ptr %l38, !tbaa !21
  br label %bb23
bb22:
  %t85 = load i1, ptr %l41, !tbaa !21
  store i1 %t85, ptr %l38, !tbaa !21
  br label %bb23
bb23:
  %t86 = load i1, ptr %l38, !tbaa !21
  br i1 %t86, label %bb24, label %bb25
bb24:
  %t87 = ptrtoint ptr %v2 to i64
  store i64 %t87, ptr %l42, !tbaa !24
  %t88 = load i1, ptr @olang_2esole_2estd_2fos_3aOutput_2e1
  br i1 %t88, label %bb26, label %bb27
bb25:
  br label %bb35
bb26:
  %t90 = call ptr @__olang_region_make(ptr %v2)
  %t91 = ptrtoint ptr %t90 to i64
  store i64 %t91, ptr %l42, !tbaa !24
  br label %bb27
bb27:
  %t92 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t92, ptr %l44, !tbaa !27
  %t93 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t95 = extractvalue { i64, ptr } %t93, 0
  store i64 %t95, ptr %l46, !tbaa !24
  %t96 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t99 = extractvalue { i64, ptr } %t96, 0
  store i64 %t99, ptr %l49, !tbaa !24
  %t100 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t101 = extractvalue { i64, ptr } %t100, 0
  store i64 %t101, ptr %l50, !tbaa !24
  %t102 = load i64, ptr %l46, !tbaa !24
  %t103 = icmp sge i64 %t102, 0
  br i1 %t103, label %bb28, label %bb29
bb28:
  %t105 = load i64, ptr %l46, !tbaa !24
  %t106 = load i64, ptr %l49, !tbaa !24
  %t107 = icmp sle i64 %t105, %t106
  br i1 %t107, label %bb30, label %bb31
bb29:
  call void @__olang_check_failed(ptr @olang_loc_47a0ad7bede37e81_52b343d343663485)
  unreachable
bb30:
  %t109 = load i64, ptr %l49, !tbaa !24
  %t110 = load i64, ptr %l50, !tbaa !24
  %t111 = icmp sle i64 %t109, %t110
  br i1 %t111, label %bb32, label %bb33
bb31:
  call void @__olang_check_failed(ptr @olang_loc_47a0ad7bede37e81_52b343d343663485)
  unreachable
bb32:
  %t113 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !27
  %t115 = load i64, ptr %l46, !tbaa !24
  %t116 = load i64, ptr %l49, !tbaa !24
  %t117 = getelementptr i8, ptr %t114, i64 %t115
  %t118 = sub i64 %t116, %t115
  %t119 = insertvalue { i64, ptr } undef, i64 %t118, 0
  %t120 = insertvalue { i64, ptr } %t119, ptr %t117, 1
  %t122 = extractvalue { i64, ptr } %t120, 1
  %t123 = extractvalue { i64, ptr } %t120, 0
  %t124 = load i64, ptr %l42
  %t125 = inttoptr i64 %t124 to ptr
  %t126 = call ptr @__olang_scope_alloc(ptr %t125, i64 %t123)
  call void @olang_textcopy(ptr %t126, ptr %t122, i64 %t123)
  %t127 = insertvalue { i64, ptr } undef, i64 %t123, 0
  %t128 = insertvalue { i64, ptr } %t127, ptr %t126, 1
  %t130 = load i64, ptr %l42
  %t131 = inttoptr i64 %t130 to ptr
  %t132 = extractvalue { i64, ptr } %t128, 0
  %t133 = extractvalue { i64, ptr } %t128, 1
  %t134 = mul i64 %t132, 1
  %t135 = call ptr @__olang_scope_alloc(ptr %t131, i64 %t134)
  call void @llvm.memcpy.p0.p0.i64(ptr %t135, ptr %t133, i64 %t134, i1 false)
  %t136 = insertvalue { i64, ptr } undef, i64 %t132, 0
  %t137 = insertvalue { i64, ptr } %t136, ptr %t135, 1
  %t139 = call %"std/os:Output" @std_2fos_3aOutput_2ector(ptr %v2, ptr %v2, ptr %v2, i32 0, { i64, ptr } %t137, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d5, i32 0, i32 1) })
  store %"std/os:Output" %t139, ptr %l57
  br label %bb34
bb33:
  call void @__olang_check_failed(ptr @olang_loc_47a0ad7bede37e81_52b343d343663485)
  unreachable
bb34:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t140 = load %"std/os:Output", ptr %l57
  %t141 = insertvalue { i32, %"std/os:Output" } zeroinitializer, %"std/os:Output" %t140, 1
  store { i32, %"std/os:Output" } %t141, ptr %rv
  br label %ret
bb35:
  call void @__olang_scope_close(ptr %s2)
  br label %bb36
bb36:
  %t142 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t143 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t147 = call { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %v0, ptr %v1, ptr %s0, ptr %v2, { i64, ptr } %t142, { i64, ptr } %t143, i1 true, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d6, i32 0, i32 1) })
  %t148 = extractvalue { i32, %"std/os:Output" } %t147, 1
  %t149 = extractvalue { i32, %"std/os:Output" } %t147, 0
  store i32 %t149, ptr %l63
  %t150 = icmp ne i32 %t149, 0
  br i1 %t150, label %bb38, label %ok.151, !prof !99
ok.151:
  store %"std/os:Output" %t148, ptr %l62
  br label %bb37
bb37:
  %t152 = load %"std/os:Output", ptr %l62
  store %"std/os:Output" %t152, ptr %l58
  br label %bb39
bb38:
  %t153 = load i32, ptr %l63, !tbaa !23
  %t154 = lshr i32 %t153, 16
  %t155 = and i32 %t153, 65535
  %t156 = icmp eq i32 %t154, 1
  %t157 = select i1 %t156, i32 1, i32 0
  %t158 = icmp eq i32 %t153, 0
  %t159 = shl i32 %t157, 16
  %t160 = or i32 %t159, %t155
  %t161 = select i1 %t158, i32 0, i32 %t160
  call void @__olang_scope_close(ptr %s0)
  %t163 = insertvalue { i32, %"std/os:Output" } zeroinitializer, i32 %t161, 0
  store { i32, %"std/os:Output" } %t163, ptr %rv
  br label %ret
bb39:
  %t164 = load %"std/os:Output", ptr %l58
  store %"std/os:Output" %t164, ptr %l6
  %t165 = getelementptr %"std/os:Output", ptr %l6, i32 0, i32 0
  %t166 = load i32, ptr %t165, !tbaa !23
  %t168 = icmp eq i32 %t166, 0
  br i1 %t168, label %bb40, label %bb41
bb40:
  %t170 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t172 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t170, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d7, i32 0, i32 1) })
  store i1 %t172, ptr %l69
  br label %bb42
bb41:
  store i1 false, ptr %l67, !tbaa !21
  br label %bb43
bb42:
  %t173 = load i1, ptr %l69, !tbaa !21
  %t174 = xor i1 %t173, true
  store i1 %t174, ptr %l67, !tbaa !21
  br label %bb43
bb43:
  %t176 = load i1, ptr %l67, !tbaa !21
  br i1 %t176, label %bb44, label %bb45
bb44:
  store i1 %a2, ptr %l71, !tbaa !21
  br label %bb46
bb45:
  store i1 false, ptr %l71, !tbaa !21
  br label %bb46
bb46:
  %t179 = load i1, ptr %l71, !tbaa !21
  br i1 %t179, label %bb47, label %bb48
bb47:
  store %olang.scope zeroinitializer, ptr %s5
  %t180 = call { i64, ptr } @compiler_2ftarget_2eprobeDir(ptr %s5)
  store { i64, ptr } %t180, ptr %l73
  br label %bb49
bb48:
  br label %bb75
bb49:
  %t181 = load { i64, ptr }, ptr %l73, !tbaa !27
  %t182 = extractvalue { i64, ptr } %t181, 0
  %t183 = extractvalue { i64, ptr } %t181, 1
  %t184 = mul i64 %t182, 1
  %t185 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t184)
  call void @llvm.memcpy.p0.p0.i64(ptr %t185, ptr %t183, i64 %t184, i1 false)
  %t186 = insertvalue { i64, ptr } undef, i64 %t182, 0
  %t187 = insertvalue { i64, ptr } %t186, ptr %t185, 1
  %t189 = call i32 @std_2fos_2eMkDirAll(ptr %s5, { i64, ptr } %t187)
  store i32 %t189, ptr %l75
  %t190 = icmp ne i32 %t189, 0
  br i1 %t190, label %bb51, label %ok.191, !prof !99
ok.191:
  br label %bb50
bb50:
  br label %bb55
bb51:
  %t192 = load i32, ptr %l75, !tbaa !23
  %t193 = ashr i32 %t192, 16
  %t195 = icmp eq i32 %t193, 1
  store i1 %t195, ptr %l77, !tbaa !21
  %t196 = load i32, ptr %l75, !tbaa !23
  %t197 = ashr i32 %t196, 16
  %t199 = icmp eq i32 %t197, 1
  br i1 %t199, label %bb52, label %bb53
bb52:
  call void @__olang_errpay_pop()
  br label %bb53
bb53:
  br label %bb54
bb54:
  %t201 = load %"std/os:Output", ptr %l6
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  %t203 = insertvalue { i32, %"std/os:Output" } zeroinitializer, %"std/os:Output" %t201, 1
  store { i32, %"std/os:Output" } %t203, ptr %rv
  br label %ret
bb55:
  %t204 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t204, ptr %l81, !tbaa !27
  %t205 = call i32 @getpid()
  store i32 %t205, ptr %l82
  br label %bb56
bb56:
  %t206 = load { i64, ptr }, ptr %l81, !tbaa !27
  %t207 = extractvalue { i64, ptr } %t206, 1
  %t208 = extractvalue { i64, ptr } %t206, 0
  %t209 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t210 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  %t211 = add i64 %t208, %t210
  %t212 = load i32, ptr %l82, !tbaa !23
  %t213 = sext i32 %t212 to i64
  %t214 = call i64 @__olang_fmt_i64(ptr null, i64 %t213)
  %t215 = add i64 %t211, %t214
  %t216 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t217 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  %t218 = add i64 %t215, %t217
  %t219 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t218)
  call void @olang_textcopy(ptr %t219, ptr %t207, i64 %t208)
  %t220 = getelementptr i8, ptr %t219, i64 %t208
  call void @olang_textcopy(ptr %t220, ptr %t209, i64 %t210)
  %t221 = getelementptr i8, ptr %t220, i64 %t210
  %t222 = call i64 @__olang_fmt_i64(ptr %t221, i64 %t213)
  %t223 = getelementptr i8, ptr %t221, i64 %t214
  call void @olang_textcopy(ptr %t223, ptr %t216, i64 %t217)
  %t224 = insertvalue { i64, ptr } undef, i64 %t218, 0
  %t225 = insertvalue { i64, ptr } %t224, ptr %t219, 1
  store { i64, ptr } %t225, ptr %l7, !tbaa !27
  %t227 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t228 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t229 = getelementptr %"std/os:Output", ptr %l6, i32 0, i32 1
  %t230 = load { i64, ptr }, ptr %t229, !tbaa !27
  %t232 = extractvalue { i64, ptr } %t228, 1
  %t233 = extractvalue { i64, ptr } %t228, 0
  %t235 = extractvalue { i64, ptr } %t230, 1
  %t236 = extractvalue { i64, ptr } %t230, 0
  %t237 = add i64 %t233, %t236
  %t238 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t237)
  call void @olang_textcopy(ptr %t238, ptr %t232, i64 %t233)
  %t239 = getelementptr i8, ptr %t238, i64 %t233
  call void @olang_textcopy(ptr %t239, ptr %t235, i64 %t236)
  %t240 = insertvalue { i64, ptr } undef, i64 %t237, 0
  %t241 = insertvalue { i64, ptr } %t240, ptr %t238, 1
  %t244 = extractvalue { i64, ptr } %t241, 0
  %t245 = extractvalue { i64, ptr } %t241, 1
  %t246 = mul i64 %t244, 1
  %t247 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t246)
  call void @llvm.memcpy.p0.p0.i64(ptr %t247, ptr %t245, i64 %t246, i1 false)
  %t248 = insertvalue { i64, ptr } undef, i64 %t244, 0
  %t249 = insertvalue { i64, ptr } %t248, ptr %t247, 1
  %t252 = call i32 @std_2fos_2eWriteFile(ptr %s5, ptr %s5, { i64, ptr } %t227, { i64, ptr } %t249)
  store i32 %t252, ptr %l90
  %t253 = icmp ne i32 %t252, 0
  br i1 %t253, label %bb58, label %ok.254, !prof !99
ok.254:
  br label %bb57
bb57:
  br label %bb62
bb58:
  %t255 = load i32, ptr %l90, !tbaa !23
  %t256 = ashr i32 %t255, 16
  %t258 = icmp eq i32 %t256, 1
  store i1 %t258, ptr %l92, !tbaa !21
  %t259 = load i32, ptr %l90, !tbaa !23
  %t260 = ashr i32 %t259, 16
  %t262 = icmp eq i32 %t260, 1
  br i1 %t262, label %bb59, label %bb60
bb59:
  call void @__olang_errpay_pop()
  br label %bb60
bb60:
  br label %bb61
bb61:
  %t264 = load %"std/os:Output", ptr %l6
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  %t266 = insertvalue { i32, %"std/os:Output" } zeroinitializer, %"std/os:Output" %t264, 1
  store { i32, %"std/os:Output" } %t266, ptr %rv
  br label %ret
bb62:
  %t267 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t268 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t271 = call i32 @std_2fos_2eRename(ptr %s5, ptr %s0, { i64, ptr } %t267, { i64, ptr } %t268)
  store i32 %t271, ptr %l98
  %t272 = icmp ne i32 %t271, 0
  br i1 %t272, label %bb64, label %ok.273, !prof !99
ok.273:
  br label %bb63
bb63:
  br label %bb74
bb64:
  %t274 = load i32, ptr %l98, !tbaa !23
  %t275 = ashr i32 %t274, 16
  %t277 = icmp eq i32 %t275, 1
  store i1 %t277, ptr %l100, !tbaa !21
  %t278 = load i32, ptr %l98, !tbaa !23
  %t279 = ashr i32 %t278, 16
  %t281 = icmp eq i32 %t279, 1
  br i1 %t281, label %bb65, label %bb66
bb65:
  call void @__olang_errpay_pop()
  br label %bb66
bb66:
  br label %bb67
bb67:
  %t283 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t285 = call i32 @std_2fos_2eRemove(ptr %s5, { i64, ptr } %t283)
  store i32 %t285, ptr %l104
  %t286 = icmp ne i32 %t285, 0
  br i1 %t286, label %bb69, label %ok.287, !prof !99
ok.287:
  br label %bb68
bb68:
  br label %bb73
bb69:
  %t288 = load i32, ptr %l104, !tbaa !23
  %t289 = ashr i32 %t288, 16
  %t291 = icmp eq i32 %t289, 1
  store i1 %t291, ptr %l106, !tbaa !21
  %t292 = load i32, ptr %l104, !tbaa !23
  %t293 = ashr i32 %t292, 16
  %t295 = icmp eq i32 %t293, 1
  br i1 %t295, label %bb70, label %bb71
bb70:
  call void @__olang_errpay_pop()
  br label %bb71
bb71:
  br label %bb72
bb72:
  br label %bb73
bb73:
  br label %bb74
bb74:
  call void @__olang_scope_close(ptr %s5)
  br label %bb75
bb75:
  %t297 = load %"std/os:Output", ptr %l6
  call void @__olang_scope_close(ptr %s0)
  %t299 = insertvalue { i32, %"std/os:Output" } zeroinitializer, %"std/os:Output" %t297, 1
  store { i32, %"std/os:Output" } %t299, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"std/os:Output" }, ptr %rv
  ret { i32, %"std/os:Output" } %rr
}

define dso_local { i64, ptr } @compiler_2ftarget_2eFindClang(ptr %v0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %lp3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca i32
  %l14 = alloca i1
  %l17 = alloca i1
  %l18 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l23 = alloca i64
  %l24 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l27 = alloca i32
  %l30 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i32
  %l36 = alloca { i64, ptr }
  %l37 = alloca i64
  %l38 = alloca i64
  %l48 = alloca i32
  %l62 = alloca i1
  %l67 = alloca { i64, ptr }
  %l68 = alloca { i64, ptr }
  %l69 = alloca i64
  %l70 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %s0, ptr %s0, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d10, i32 0, i32 1) })
  %t2 = extractvalue { i32, { i64, ptr } } %t1, 1
  %t3 = extractvalue { i32, { i64, ptr } } %t1, 0
  store i32 %t3, ptr %l10
  %t4 = icmp ne i32 %t3, 0
  br i1 %t4, label %bb2, label %ok.5, !prof !99
ok.5:
  store { i64, ptr } %t2, ptr %l9
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t6, ptr %l8, !tbaa !27
  br label %bb6
bb2:
  %t7 = load i32, ptr %l10, !tbaa !23
  %t8 = ashr i32 %t7, 16
  %t10 = icmp eq i32 %t8, 1
  br i1 %t10, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d11, i32 0, i32 1) }, ptr %l8, !tbaa !27
  br label %bb6
bb6:
  %t12 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t12, ptr %l0, !tbaa !27
  %t13 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t15 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t13, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d12, i32 0, i32 1) })
  store i1 %t15, ptr %l14
  br label %bb7
bb7:
  %t16 = load i1, ptr %l14, !tbaa !21
  %t17 = xor i1 %t16, true
  br i1 %t17, label %bb8, label %bb9
bb8:
  %t19 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t21 = call i1 @compiler_2ftarget_2eexecutable(ptr %s0, { i64, ptr } %t19)
  store i1 %t21, ptr %l17
  br label %bb10
bb9:
  br label %bb14
bb10:
  %t22 = load i1, ptr %l17, !tbaa !21
  br i1 %t22, label %bb11, label %bb12
bb11:
  %t23 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t25 = extractvalue { i64, ptr } %t23, 1
  %t26 = extractvalue { i64, ptr } %t23, 0
  %t27 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t26)
  call void @olang_textcopy(ptr %t27, ptr %t25, i64 %t26)
  %t28 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t29 = insertvalue { i64, ptr } %t28, ptr %t27, 1
  store { i64, ptr } %t29, ptr %l18, !tbaa !27
  br label %bb13
bb12:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d13, i32 0, i32 1) }, ptr %l21, !tbaa !27
  %t31 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t31, ptr %l18, !tbaa !27
  br label %bb13
bb13:
  %t33 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t33, 0
  store i64 %t34, ptr %l23, !tbaa !24
  %t35 = load i64, ptr %l23, !tbaa !24
  %t36 = mul i64 %t35, 1
  %t37 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t36)
  %t38 = insertvalue { i64, ptr } undef, i64 %t35, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr %t37, 1
  store { i64, ptr } %t39, ptr %l24, !tbaa !27
  %t40 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !27
  %t42 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !27
  %t44 = load i64, ptr %l23, !tbaa !24
  %t45 = mul i64 %t44, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t41, ptr %t43, i64 %t45, i1 false)
  %t46 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t46, ptr %l18, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t47 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t47, ptr %rv
  br label %ret
bb14:
  %t48 = call { i32, { i64, ptr } } @std_2fos_2eReadLink(ptr %s0, ptr %s0, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d14, i32 0, i32 1) })
  %t49 = extractvalue { i32, { i64, ptr } } %t48, 1
  %t50 = extractvalue { i32, { i64, ptr } } %t48, 0
  store i32 %t50, ptr %l27
  %t51 = icmp ne i32 %t50, 0
  br i1 %t51, label %bb16, label %ok.52, !prof !99
ok.52:
  store { i64, ptr } %t49, ptr %l26
  br label %bb15
bb15:
  %t53 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t53, ptr %l25, !tbaa !27
  br label %bb20
bb16:
  %t54 = load i32, ptr %l27, !tbaa !23
  %t55 = ashr i32 %t54, 16
  %t57 = icmp eq i32 %t55, 1
  br i1 %t57, label %bb17, label %bb18
bb17:
  call void @__olang_errpay_pop()
  br label %bb18
bb18:
  br label %bb19
bb19:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d15, i32 0, i32 1) }, ptr %l25, !tbaa !27
  br label %bb20
bb20:
  %t59 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t59, ptr %l1, !tbaa !27
  %t60 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t62 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %s0, ptr %s0, { i64, ptr } %t60, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) })
  %t63 = extractvalue { i32, i64 } %t62, 1
  %t64 = extractvalue { i32, i64 } %t62, 0
  store i32 %t64, ptr %l33
  %t65 = icmp ne i32 %t64, 0
  br i1 %t65, label %bb22, label %ok.66, !prof !99
ok.66:
  store i64 %t63, ptr %l32
  br label %bb21
bb21:
  %t67 = load i64, ptr %l32, !tbaa !24
  store i64 %t67, ptr %l30, !tbaa !24
  br label %bb24
bb22:
  br label %bb23
bb23:
  store i64 -1, ptr %l30, !tbaa !24
  br label %bb24
bb24:
  %t68 = load i64, ptr %l30, !tbaa !24
  store i64 %t68, ptr %l2, !tbaa !24
  %t69 = load i64, ptr %l2, !tbaa !24
  %t71 = icmp sge i64 %t69, 0
  br i1 %t71, label %bb25, label %bb26
bb25:
  store %olang.scope zeroinitializer, ptr %s3
  %t73 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t73, ptr %l36, !tbaa !27
  %t74 = load i64, ptr %l2, !tbaa !24
  store i64 %t74, ptr %l37, !tbaa !24
  %t75 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t76 = extractvalue { i64, ptr } %t75, 0
  store i64 %t76, ptr %l38, !tbaa !24
  %t77 = icmp sge i64 0, 0
  br i1 %t77, label %bb27, label %bb28
bb26:
  br label %bb37
bb27:
  %t79 = load i64, ptr %l37, !tbaa !24
  %t80 = icmp sle i64 0, %t79
  br i1 %t80, label %bb29, label %bb30
bb28:
  call void @__olang_check_failed(ptr @olang_loc_5d60638bbee689af_7a012b3f353868cb)
  unreachable
bb29:
  %t82 = load i64, ptr %l37, !tbaa !24
  %t83 = load i64, ptr %l38, !tbaa !24
  %t84 = icmp sle i64 %t82, %t83
  br i1 %t84, label %bb31, label %bb32
bb30:
  call void @__olang_check_failed(ptr @olang_loc_5d60638bbee689af_7a012b3f353868cb)
  unreachable
bb31:
  %t86 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t87 = load ptr, ptr %t86, !tbaa !27
  %t88 = load i64, ptr %l37, !tbaa !24
  %t89 = getelementptr i8, ptr %t87, i64 0
  %t90 = sub i64 %t88, 0
  %t91 = insertvalue { i64, ptr } undef, i64 %t90, 0
  %t92 = insertvalue { i64, ptr } %t91, ptr %t89, 1
  %t94 = extractvalue { i64, ptr } %t92, 1
  %t95 = extractvalue { i64, ptr } %t92, 0
  %t96 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t97 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  %t98 = add i64 %t95, %t97
  %t99 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t98)
  call void @olang_textcopy(ptr %t99, ptr %t94, i64 %t95)
  %t100 = getelementptr i8, ptr %t99, i64 %t95
  call void @olang_textcopy(ptr %t100, ptr %t96, i64 %t97)
  %t101 = insertvalue { i64, ptr } undef, i64 %t98, 0
  %t102 = insertvalue { i64, ptr } %t101, ptr %t99, 1
  %t103 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 16, i64 8)
  store ptr %t103, ptr %lp3
  %t105 = load ptr, ptr %lp3
  store { i64, ptr } %t102, ptr %t105, !tbaa !27
  %t106 = load ptr, ptr %lp3
  %t107 = load { i64, ptr }, ptr %t106, !tbaa !27
  %t109 = extractvalue { i64, ptr } %t107, 1
  %t110 = extractvalue { i64, ptr } %t107, 0
  %t111 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t112 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t113 = add i64 %t110, %t112
  %t114 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t113)
  call void @olang_textcopy(ptr %t114, ptr %t109, i64 %t110)
  %t115 = getelementptr i8, ptr %t114, i64 %t110
  call void @olang_textcopy(ptr %t115, ptr %t111, i64 %t112)
  %t116 = insertvalue { i64, ptr } undef, i64 %t113, 0
  %t117 = insertvalue { i64, ptr } %t116, ptr %t114, 1
  %t119 = load i32, ptr @G_2e_3cunistd_2eh_3e_2eX__OK, !tbaa !23
  %t121 = extractvalue { i64, ptr } %t117, 1
  %t122 = extractvalue { i64, ptr } %t117, 0
  %t124 = call i32 @access(ptr %t121, i32 %t119)
  store i32 %t124, ptr %l48
  br label %bb33
bb32:
  call void @__olang_check_failed(ptr @olang_loc_5d60638bbee689af_7a012b3f353868cb)
  unreachable
bb33:
  %t125 = load i32, ptr %l48, !tbaa !23
  %t126 = icmp eq i32 %t125, 0
  br i1 %t126, label %bb34, label %bb35
bb34:
  %t128 = load ptr, ptr %lp3
  %t129 = load { i64, ptr }, ptr %t128, !tbaa !27
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t129, ptr %rv
  br label %ret
bb35:
  br label %bb36
bb36:
  call void @__olang_scope_close(ptr %s3)
  br label %bb37
bb37:
  store ptr @G_2ecompiler_2ftarget_2eClangs, ptr %l4
  store i64 0, ptr %l5, !tbaa !24
  %t132 = load ptr, ptr %l4
  store i64 4, ptr %l6, !tbaa !24
  br label %bb38
bb38:
  %t135 = load i64, ptr %l5, !tbaa !24
  %t136 = load i64, ptr %l6, !tbaa !24
  %t139 = icmp slt i64 %t135, %t136
  %t141 = xor i1 %t139, true
  br i1 %t141, label %bb39, label %bb40
bb39:
  br label %bb47
bb40:
  br label %bb41
bb41:
  %t143 = load ptr, ptr %l4
  %t144 = load i64, ptr %l5, !tbaa !24
  %t147 = getelementptr [4 x { i64, ptr }], ptr %t143, i64 0, i64 %t144
  %t148 = load { i64, ptr }, ptr %t147, !tbaa !37
  store { i64, ptr } %t148, ptr %l7, !tbaa !27
  %t150 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t151 = load ptr, ptr @__olang_prog_scope
  %t153 = call i1 @compiler_2ftarget_2eexecutable(ptr %t151, { i64, ptr } %t150)
  store i1 %t153, ptr %l62
  br label %bb42
bb42:
  %t154 = load i1, ptr %l62, !tbaa !21
  br i1 %t154, label %bb43, label %bb44
bb43:
  %t155 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t157 = extractvalue { i64, ptr } %t155, 1
  %t158 = extractvalue { i64, ptr } %t155, 0
  %t159 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t158)
  call void @olang_textcopy(ptr %t159, ptr %t157, i64 %t158)
  %t160 = insertvalue { i64, ptr } undef, i64 %t158, 0
  %t161 = insertvalue { i64, ptr } %t160, ptr %t159, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t161, ptr %rv
  br label %ret
bb44:
  br label %bb45
bb45:
  br label %bb46
bb46:
  %t163 = load i64, ptr %l5, !tbaa !24
  %t165 = add i64 %t163, 1
  store i64 %t165, ptr %l5, !tbaa !24
  br label %bb38
bb47:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d19, i32 0, i32 1) }, ptr %l67, !tbaa !27
  %t167 = load { i64, ptr }, ptr %l67, !tbaa !27
  store { i64, ptr } %t167, ptr %l68, !tbaa !27
  %t168 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t169 = extractvalue { i64, ptr } %t168, 0
  store i64 %t169, ptr %l69, !tbaa !24
  %t170 = load i64, ptr %l69, !tbaa !24
  %t171 = mul i64 %t170, 1
  %t172 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t171)
  %t173 = insertvalue { i64, ptr } undef, i64 %t170, 0
  %t174 = insertvalue { i64, ptr } %t173, ptr %t172, 1
  store { i64, ptr } %t174, ptr %l70, !tbaa !27
  %t175 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t176 = load ptr, ptr %t175, !tbaa !27
  %t177 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t178 = load ptr, ptr %t177, !tbaa !27
  %t179 = load i64, ptr %l69, !tbaa !24
  %t180 = mul i64 %t179, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t176, ptr %t178, i64 %t180, i1 false)
  %t181 = load { i64, ptr }, ptr %l70, !tbaa !27
  store { i64, ptr } %t181, ptr %l68, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t182 = load { i64, ptr }, ptr %l68, !tbaa !27
  store { i64, ptr } %t182, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2ftarget_2eHasFeature(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l23 = alloca i1
  %l24 = alloca { i64, ptr }
  %l27 = alloca i1
  %l28 = alloca { i64, ptr }
  %l31 = alloca i64
  %l32 = alloca i64
  %l38 = alloca i1
  %s1 = alloca %olang.scope
  %rv = alloca i1
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s1
  %t3 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %v0, ptr %s1, ptr %s1, { i64, ptr } %a0, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d20, i32 0, i32 1) })
  store { i64, ptr } %t3, ptr %l7
  br label %bb1
bb1:
  %t4 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t4, ptr %l2, !tbaa !27
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
  br label %bb23
bb4:
  br label %bb5
bb5:
  %t17 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t17, ptr %l14, !tbaa !27
  %t18 = load i64, ptr %l3, !tbaa !24
  %t20 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr { i64, ptr }, ptr %t21, i64 %t18
  %t23 = load { i64, ptr }, ptr %t22, !tbaa !37
  store { i64, ptr } %t23, ptr %l5, !tbaa !27
  %t25 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t27 = extractvalue { i64, ptr } %t25, 0
  %t28 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t28, 0
  %t32 = add i64 %t30, 1
  %t35 = icmp eq i64 %t27, %t32
  br i1 %t35, label %bb6, label %bb7
bb6:
  %t37 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t37, ptr %l24, !tbaa !27
  %t38 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !27
  %t40 = getelementptr i8, ptr %t39, i64 0
  %t41 = load i8, ptr %t40, !tbaa !32
  %t43 = icmp eq i8 %t41, 43
  store i1 %t43, ptr %l23, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb8
bb8:
  %t45 = load i1, ptr %l23, !tbaa !21
  br i1 %t45, label %bb9, label %bb10
bb9:
  %t46 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t46, ptr %l28, !tbaa !27
  %t47 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t50 = extractvalue { i64, ptr } %t47, 0
  store i64 %t50, ptr %l31, !tbaa !24
  %t51 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t52 = extractvalue { i64, ptr } %t51, 0
  store i64 %t52, ptr %l32, !tbaa !24
  %t53 = icmp sge i64 1, 0
  br i1 %t53, label %bb11, label %bb12
bb10:
  store i1 false, ptr %l27, !tbaa !21
  br label %bb18
bb11:
  %t55 = load i64, ptr %l31, !tbaa !24
  %t56 = icmp sle i64 1, %t55
  br i1 %t56, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_7d2dbc1a64f072ad_c547ba7f55386c9)
  unreachable
bb13:
  %t58 = load i64, ptr %l31, !tbaa !24
  %t59 = load i64, ptr %l32, !tbaa !24
  %t60 = icmp sle i64 %t58, %t59
  br i1 %t60, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_7d2dbc1a64f072ad_c547ba7f55386c9)
  unreachable
bb15:
  %t62 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !27
  %t64 = load i64, ptr %l31, !tbaa !24
  %t65 = getelementptr i8, ptr %t63, i64 1
  %t66 = sub i64 %t64, 1
  %t67 = insertvalue { i64, ptr } undef, i64 %t66, 0
  %t68 = insertvalue { i64, ptr } %t67, ptr %t65, 1
  %t69 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t72 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s1, ptr %v1, { i64, ptr } %t68, { i64, ptr } %t69)
  store i1 %t72, ptr %l38
  br label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_7d2dbc1a64f072ad_c547ba7f55386c9)
  unreachable
bb17:
  %t73 = load i1, ptr %l38, !tbaa !21
  store i1 %t73, ptr %l27, !tbaa !21
  br label %bb18
bb18:
  %t74 = load i1, ptr %l27, !tbaa !21
  br i1 %t74, label %bb19, label %bb20
bb19:
  call void @__olang_scope_close(ptr %s1)
  store i1 true, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  br label %bb22
bb22:
  %t76 = load i64, ptr %l3, !tbaa !24
  %t78 = add i64 %t76, 1
  store i64 %t78, ptr %l3, !tbaa !24
  br label %bb2
bb23:
  call void @__olang_scope_close(ptr %s1)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftarget_2eHasRaceRuntime(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca %"std/os:Output"
  %l5 = alloca i1
  %l9 = alloca %"std/os:Output"
  %l10 = alloca i64
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l20 = alloca { i64, ptr }
  %l21 = alloca %"std/os:Output"
  %l22 = alloca i32
  %l24 = alloca i1
  %l30 = alloca i1
  %l33 = alloca { i64, ptr }
  %l34 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d21, i32 0, i32 1) })
  store i1 %t3, ptr %l5
  br label %bb1
bb1:
  %t4 = load i1, ptr %l5, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t7 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  %t10 = extractvalue { i64, ptr } %a1, 1
  %t11 = extractvalue { i64, ptr } %a1, 0
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d23, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d23, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t15)
  call void @olang_textcopy(ptr %t16, ptr %t7, i64 %t8)
  %t17 = getelementptr i8, ptr %t16, i64 %t8
  call void @olang_textcopy(ptr %t17, ptr %t10, i64 %t11)
  %t18 = getelementptr i8, ptr %t17, i64 %t11
  call void @olang_textcopy(ptr %t18, ptr %t13, i64 %t14)
  %t19 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t20 = insertvalue { i64, ptr } %t19, ptr %t16, 1
  store { i64, ptr } %t20, ptr %l2, !tbaa !27
  %t22 = ptrtoint ptr %s0 to i64
  store i64 %t22, ptr %l10, !tbaa !24
  %t23 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_202_3e_2e_2d1
  br i1 %t23, label %bb5, label %bb6
bb5:
  %t25 = call ptr @__olang_region_make(ptr %s0)
  %t26 = ptrtoint ptr %t25 to i64
  store i64 %t26, ptr %l10, !tbaa !24
  br label %bb6
bb6:
  %t27 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t27, 1
  %t30 = extractvalue { i64, ptr } %t27, 0
  %t31 = load i64, ptr %l10
  %t32 = inttoptr i64 %t31 to ptr
  %t33 = call ptr @__olang_scope_alloc(ptr %t32, i64 %t30)
  call void @olang_textcopy(ptr %t33, ptr %t29, i64 %t30)
  %t34 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t35 = insertvalue { i64, ptr } %t34, ptr %t33, 1
  %t37 = load i64, ptr %l10
  %t38 = inttoptr i64 %t37 to ptr
  %t39 = extractvalue { i64, ptr } %t35, 0
  %t40 = extractvalue { i64, ptr } %t35, 1
  %t41 = mul i64 %t39, 1
  %t42 = call ptr @__olang_scope_alloc(ptr %t38, i64 %t41)
  call void @llvm.memcpy.p0.p0.i64(ptr %t42, ptr %t40, i64 %t41, i1 false)
  %t43 = insertvalue { i64, ptr } undef, i64 %t39, 0
  %t44 = insertvalue { i64, ptr } %t43, ptr %t42, 1
  store { i64, ptr } %t44, ptr %l14, !tbaa !27
  %t45 = ptrtoint ptr %s0 to i64
  store i64 %t45, ptr %l15, !tbaa !24
  %t46 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_202_3e_2e_2d1
  br i1 %t46, label %bb7, label %bb8
bb7:
  %t48 = call ptr @__olang_region_make(ptr %s0)
  %t49 = ptrtoint ptr %t48 to i64
  store i64 %t49, ptr %l15, !tbaa !24
  br label %bb8
bb8:
  %t50 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t51 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d24, i32 0, i32 1) }, 1
  %t52 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d24, i32 0, i32 1) }, 0
  %t54 = extractvalue { i64, ptr } %t50, 1
  %t55 = extractvalue { i64, ptr } %t50, 0
  %t56 = add i64 %t52, %t55
  %t57 = load i64, ptr %l15
  %t58 = inttoptr i64 %t57 to ptr
  %t59 = call ptr @__olang_scope_alloc(ptr %t58, i64 %t56)
  call void @olang_textcopy(ptr %t59, ptr %t51, i64 %t52)
  %t60 = getelementptr i8, ptr %t59, i64 %t52
  call void @olang_textcopy(ptr %t60, ptr %t54, i64 %t55)
  %t61 = insertvalue { i64, ptr } undef, i64 %t56, 0
  %t62 = insertvalue { i64, ptr } %t61, ptr %t59, 1
  %t64 = load i64, ptr %l15
  %t65 = inttoptr i64 %t64 to ptr
  %t66 = extractvalue { i64, ptr } %t62, 0
  %t67 = extractvalue { i64, ptr } %t62, 1
  %t68 = mul i64 %t66, 1
  %t69 = call ptr @__olang_scope_alloc(ptr %t65, i64 %t68)
  call void @llvm.memcpy.p0.p0.i64(ptr %t69, ptr %t67, i64 %t68, i1 false)
  %t70 = insertvalue { i64, ptr } undef, i64 %t66, 0
  %t71 = insertvalue { i64, ptr } %t70, ptr %t69, 1
  %t72 = mul i64 2, 16
  %t73 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t72)
  %t74 = insertvalue { i64, ptr } undef, i64 2, 0
  %t75 = insertvalue { i64, ptr } %t74, ptr %t73, 1
  store { i64, ptr } %t75, ptr %l20, !tbaa !27
  %t76 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t77 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !27
  %t79 = getelementptr { i64, ptr }, ptr %t78, i64 0
  store { i64, ptr } %t76, ptr %t79, !tbaa !37
  %t81 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !27
  %t83 = getelementptr { i64, ptr }, ptr %t82, i64 1
  store { i64, ptr } %t71, ptr %t83, !tbaa !37
  %t84 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t85 = call { i32, %"std/os:Output" } @compiler_2ftarget_2eClangSays(ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t84, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d25, i32 0, i32 1) }, i1 false)
  %t86 = extractvalue { i32, %"std/os:Output" } %t85, 1
  %t87 = extractvalue { i32, %"std/os:Output" } %t85, 0
  store i32 %t87, ptr %l22
  %t88 = icmp ne i32 %t87, 0
  br i1 %t88, label %bb10, label %ok.89, !prof !99
ok.89:
  store %"std/os:Output" %t86, ptr %l21
  br label %bb9
bb9:
  %t90 = load %"std/os:Output", ptr %l21
  store %"std/os:Output" %t90, ptr %l9
  br label %bb14
bb10:
  %t91 = load i32, ptr %l22, !tbaa !23
  %t92 = ashr i32 %t91, 16
  %t94 = icmp eq i32 %t92, 1
  store i1 %t94, ptr %l24, !tbaa !21
  %t95 = load i32, ptr %l22, !tbaa !23
  %t96 = ashr i32 %t95, 16
  %t98 = icmp eq i32 %t96, 1
  br i1 %t98, label %bb11, label %bb12
bb11:
  call void @__olang_errpay_pop()
  br label %bb12
bb12:
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb14:
  %t101 = load %"std/os:Output", ptr %l9
  store %"std/os:Output" %t101, ptr %l3
  %t102 = getelementptr %"std/os:Output", ptr %l3, i32 0, i32 0
  %t103 = load i32, ptr %t102, !tbaa !23
  %t105 = icmp eq i32 %t103, 0
  br i1 %t105, label %bb15, label %bb16
bb15:
  %t107 = getelementptr %"std/os:Output", ptr %l3, i32 0, i32 1
  %t108 = load { i64, ptr }, ptr %t107, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, ptr %l33, !tbaa !27
  %t111 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t112 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %s0, ptr %s0, { i64, ptr } %t108, { i64, ptr } %t111)
  store i1 %t112, ptr %l34
  br label %bb17
bb16:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb18
bb17:
  %t113 = load i1, ptr %l34, !tbaa !21
  store i1 %t113, ptr %l30, !tbaa !21
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s0)
  %t114 = load i1, ptr %l30, !tbaa !21
  store i1 %t114, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { { i64, ptr }, { i64, ptr } } @compiler_2ftarget_2eHost(ptr %v0) #0 {
entry:
  %l0 = alloca %"<sys/utsname.h>:utsname"
  %l1 = alloca %"<sys/utsname.h>:utsname"
  %l3 = alloca i32
  %l5 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l9 = alloca { { i64, ptr }, { i64, ptr } }
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { { i64, ptr }, { i64, ptr } }
  %t1 = alloca %"<sys/utsname.h>:utsname", align 1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  call void @olang_2emir_2eHelperKind_2eZero_2e_3csys_2futsname_2eh_3e_3autsname(ptr %t1)
  call void @llvm.memmove.p0.p0.i64(ptr %l1, ptr %t1, i64 390, i1 false)
  br label %bb1
bb1:
  call void @llvm.memmove.p0.p0.i64(ptr %l0, ptr %l1, i64 390, i1 false)
  %t3 = call i32 @uname(ptr %l0)
  store i32 %t3, ptr %l3
  br label %bb2
bb2:
  %t4 = load i32, ptr %l3, !tbaa !23
  %t5 = icmp ne i32 %t4, 0
  br i1 %t5, label %bb3, label %bb4
bb3:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d27, i32 0, i32 1) }, ptr %l5, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d28, i32 0, i32 1) }, ptr %l7, !tbaa !27
  %t8 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t10 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t7, 0
  %t12 = insertvalue { { i64, ptr }, { i64, ptr } } %t10, { i64, ptr } %t8, 1
  store { { i64, ptr }, { i64, ptr } } %t12, ptr %l9
  %t13 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l9, i32 0, i32 0
  %t14 = load { i64, ptr }, ptr %t13, !tbaa !27
  store { i64, ptr } %t14, ptr %l10, !tbaa !27
  %t15 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t15, 0
  store i64 %t16, ptr %l11, !tbaa !24
  %t17 = load i64, ptr %l11, !tbaa !24
  %t18 = mul i64 %t17, 1
  %t19 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t18)
  %t20 = insertvalue { i64, ptr } undef, i64 %t17, 0
  %t21 = insertvalue { i64, ptr } %t20, ptr %t19, 1
  store { i64, ptr } %t21, ptr %l12, !tbaa !27
  %t22 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = load i64, ptr %l11, !tbaa !24
  %t27 = mul i64 %t26, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t23, ptr %t25, i64 %t27, i1 false)
  %t28 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t29 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l9, i32 0, i32 0
  store { i64, ptr } %t28, ptr %t29, !tbaa !27
  %t30 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l9, i32 0, i32 1
  %t31 = load { i64, ptr }, ptr %t30, !tbaa !27
  store { i64, ptr } %t31, ptr %l13, !tbaa !27
  %t32 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t33 = extractvalue { i64, ptr } %t32, 0
  store i64 %t33, ptr %l14, !tbaa !24
  %t34 = load i64, ptr %l14, !tbaa !24
  %t35 = mul i64 %t34, 1
  %t36 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t35)
  %t37 = insertvalue { i64, ptr } undef, i64 %t34, 0
  %t38 = insertvalue { i64, ptr } %t37, ptr %t36, 1
  store { i64, ptr } %t38, ptr %l15, !tbaa !27
  %t39 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !27
  %t41 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !27
  %t43 = load i64, ptr %l14, !tbaa !24
  %t44 = mul i64 %t43, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t40, ptr %t42, i64 %t44, i1 false)
  %t45 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t46 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l9, i32 0, i32 1
  store { i64, ptr } %t45, ptr %t46, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t47 = load { { i64, ptr }, { i64, ptr } }, ptr %l9
  store { { i64, ptr }, { i64, ptr } } %t47, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t48 = getelementptr %"<sys/utsname.h>:utsname", ptr %l0, i32 0, i32 0
  %t50 = insertvalue { i64, ptr } undef, i64 65, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr %t48, 1
  %t53 = call { i64, ptr } @compiler_2ftarget_2ecField(ptr %s0, ptr %s0, { i64, ptr } %t51)
  store { i64, ptr } %t53, ptr %l18
  br label %bb6
bb6:
  %t54 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t55 = extractvalue { i64, ptr } %t54, 0
  %t56 = extractvalue { i64, ptr } %t54, 1
  %t57 = mul i64 %t55, 1
  %t58 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t57)
  call void @llvm.memcpy.p0.p0.i64(ptr %t58, ptr %t56, i64 %t57, i1 false)
  %t59 = insertvalue { i64, ptr } undef, i64 %t55, 0
  %t60 = insertvalue { i64, ptr } %t59, ptr %t58, 1
  %t62 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eToLower(ptr %s0, ptr %v0, { i64, ptr } %t60)
  store { i64, ptr } %t62, ptr %l20
  br label %bb7
bb7:
  %t63 = getelementptr %"<sys/utsname.h>:utsname", ptr %l0, i32 0, i32 4
  %t65 = insertvalue { i64, ptr } undef, i64 65, 0
  %t66 = insertvalue { i64, ptr } %t65, ptr %t63, 1
  %t68 = call { i64, ptr } @compiler_2ftarget_2ecField(ptr %s0, ptr %v0, { i64, ptr } %t66)
  store { i64, ptr } %t68, ptr %l23
  br label %bb8
bb8:
  %t69 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t70 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t69, 0
  %t71 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t72 = insertvalue { { i64, ptr }, { i64, ptr } } %t70, { i64, ptr } %t71, 1
  call void @__olang_scope_close(ptr %s0)
  store { { i64, ptr }, { i64, ptr } } %t72, ptr %rv
  br label %ret
ret:
  %rr = load { { i64, ptr }, { i64, ptr } }, ptr %rv
  ret { { i64, ptr }, { i64, ptr } } %rr
}

define dso_local i32 @compiler_2ftarget_2ePid() #0 {
entry:
  %l0 = alloca i32
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call i32 @getpid()
  store i32 %t1, ptr %l0
  br label %bb1
bb1:
  %t2 = load i32, ptr %l0, !tbaa !23
  store i32 %t2, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2ftarget_2eStripUnsafe(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca %"std/prelude/text:StringBuilder"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l6 = alloca { i64, ptr }
  %l10 = alloca i1
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca { i64, ptr }
  %l15 = alloca %"std/prelude/text:StringBuilder"
  %l17 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l34 = alloca i1
  %l35 = alloca { i64, ptr }
  %l38 = alloca i1
  %l39 = alloca { i64, ptr }
  %l42 = alloca i64
  %l43 = alloca i64
  %l51 = alloca i1
  %l54 = alloca ptr
  %l55 = alloca { i64, ptr }
  %l58 = alloca i64
  %l59 = alloca i64
  %l69 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d29, i32 0, i32 1) })
  store i1 %t3, ptr %l10
  br label %bb1
bb1:
  %t4 = load i1, ptr %l10, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d30, i32 0, i32 1) }, ptr %l11, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t5, ptr %l12, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t6, 0
  store i64 %t7, ptr %l13, !tbaa !24
  %t8 = load i64, ptr %l13, !tbaa !24
  %t9 = mul i64 %t8, 1
  %t10 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t9)
  %t11 = insertvalue { i64, ptr } undef, i64 %t8, 0
  %t12 = insertvalue { i64, ptr } %t11, ptr %t10, 1
  store { i64, ptr } %t12, ptr %l14, !tbaa !27
  %t13 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !27
  %t15 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !27
  %t17 = load i64, ptr %l13, !tbaa !24
  %t18 = mul i64 %t17, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t14, ptr %t16, i64 %t18, i1 false)
  %t19 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t19, ptr %l12, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t20 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t20, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t21 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t21, ptr %l15
  br label %bb5
bb5:
  %t22 = load %"std/prelude/text:StringBuilder", ptr %l15
  store %"std/prelude/text:StringBuilder" %t22, ptr %l1
  store %olang.scope zeroinitializer, ptr %s2
  %t23 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t25 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %v0, ptr %s2, ptr %s2, { i64, ptr } %t23, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d31, i32 0, i32 1) })
  store { i64, ptr } %t25, ptr %l17
  br label %bb6
bb6:
  %t26 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t26, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t27 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t27, 0
  store i64 %t29, ptr %l4, !tbaa !24
  br label %bb7
bb7:
  %t31 = load i64, ptr %l3, !tbaa !24
  %t32 = load i64, ptr %l4, !tbaa !24
  %t35 = icmp slt i64 %t31, %t32
  %t37 = xor i1 %t35, true
  br i1 %t37, label %bb8, label %bb9
bb8:
  br label %bb41
bb9:
  br label %bb10
bb10:
  %t39 = load i64, ptr %l3, !tbaa !24
  %t41 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t41, ptr %l25, !tbaa !27
  %t42 = load i64, ptr %l3, !tbaa !24
  %t44 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !27
  %t46 = getelementptr { i64, ptr }, ptr %t45, i64 %t42
  %t47 = load { i64, ptr }, ptr %t46, !tbaa !37
  store { i64, ptr } %t47, ptr %l6, !tbaa !27
  %t51 = icmp sgt i64 %t39, 0
  br i1 %t51, label %bb11, label %bb12
bb11:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 44)
  br label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb14
bb14:
  %t54 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t56 = extractvalue { i64, ptr } %t54, 0
  %t58 = icmp sgt i64 %t56, 1
  br i1 %t58, label %bb15, label %bb16
bb15:
  %t60 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t60, ptr %l35, !tbaa !27
  %t61 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !27
  %t63 = getelementptr i8, ptr %t62, i64 0
  %t64 = load i8, ptr %t63, !tbaa !32
  %t66 = icmp eq i8 %t64, 43
  store i1 %t66, ptr %l34, !tbaa !21
  br label %bb17
bb16:
  store i1 false, ptr %l34, !tbaa !21
  br label %bb17
bb17:
  %t68 = load i1, ptr %l34, !tbaa !21
  br i1 %t68, label %bb18, label %bb19
bb18:
  %t69 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t69, ptr %l39, !tbaa !27
  %t70 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t73 = extractvalue { i64, ptr } %t70, 0
  store i64 %t73, ptr %l42, !tbaa !24
  %t74 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t75 = extractvalue { i64, ptr } %t74, 0
  store i64 %t75, ptr %l43, !tbaa !24
  %t76 = icmp sge i64 1, 0
  br i1 %t76, label %bb20, label %bb21
bb19:
  store i1 false, ptr %l38, !tbaa !21
  br label %bb27
bb20:
  %t78 = load i64, ptr %l42, !tbaa !24
  %t79 = icmp sle i64 1, %t78
  br i1 %t79, label %bb22, label %bb23
bb21:
  call void @__olang_check_failed(ptr @olang_loc_4b3e93141bb855fb_750a01d3487f499f)
  unreachable
bb22:
  %t81 = load i64, ptr %l42, !tbaa !24
  %t82 = load i64, ptr %l43, !tbaa !24
  %t83 = icmp sle i64 %t81, %t82
  br i1 %t83, label %bb24, label %bb25
bb23:
  call void @__olang_check_failed(ptr @olang_loc_4b3e93141bb855fb_750a01d3487f499f)
  unreachable
bb24:
  %t85 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !27
  %t87 = load i64, ptr %l42, !tbaa !24
  %t88 = getelementptr i8, ptr %t86, i64 1
  %t89 = sub i64 %t87, 1
  %t90 = insertvalue { i64, ptr } undef, i64 %t89, 0
  %t91 = insertvalue { i64, ptr } %t90, ptr %t88, 1
  %t94 = insertvalue { i64, ptr } undef, i64 2, 0
  %t95 = insertvalue { i64, ptr } %t94, ptr @G_2ecompiler_2ftarget_2eIeeeUnsafe, 1
  %t97 = load ptr, ptr @__olang_prog_scope
  %t100 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eHas_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %t97, ptr %s2, { i64, ptr } %t95, { i64, ptr } %t91)
  store i1 %t100, ptr %l51
  br label %bb26
bb25:
  call void @__olang_check_failed(ptr @olang_loc_4b3e93141bb855fb_750a01d3487f499f)
  unreachable
bb26:
  %t101 = load i1, ptr %l51, !tbaa !21
  store i1 %t101, ptr %l38, !tbaa !21
  br label %bb27
bb27:
  %t102 = load i1, ptr %l38, !tbaa !21
  br i1 %t102, label %bb28, label %bb29
bb28:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 45)
  br label %bb30
bb29:
  %t106 = load { i64, ptr }, ptr %l6, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %l1, { i64, ptr } %t106)
  br label %bb38
bb30:
  store ptr %l1, ptr %l54, !tbaa !29
  %t109 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t109, ptr %l55, !tbaa !27
  %t110 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t113 = extractvalue { i64, ptr } %t110, 0
  store i64 %t113, ptr %l58, !tbaa !24
  %t114 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t115 = extractvalue { i64, ptr } %t114, 0
  store i64 %t115, ptr %l59, !tbaa !24
  %t116 = icmp sge i64 1, 0
  br i1 %t116, label %bb31, label %bb32
bb31:
  %t118 = load i64, ptr %l58, !tbaa !24
  %t119 = icmp sle i64 1, %t118
  br i1 %t119, label %bb33, label %bb34
bb32:
  call void @__olang_check_failed(ptr @olang_loc_a61f3cd56da1d37e_58843bed9934bc22)
  unreachable
bb33:
  %t121 = load i64, ptr %l58, !tbaa !24
  %t122 = load i64, ptr %l59, !tbaa !24
  %t123 = icmp sle i64 %t121, %t122
  br i1 %t123, label %bb35, label %bb36
bb34:
  call void @__olang_check_failed(ptr @olang_loc_a61f3cd56da1d37e_58843bed9934bc22)
  unreachable
bb35:
  %t125 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t126 = load ptr, ptr %t125, !tbaa !27
  %t127 = load i64, ptr %l58, !tbaa !24
  %t128 = getelementptr i8, ptr %t126, i64 1
  %t129 = sub i64 %t127, 1
  %t130 = insertvalue { i64, ptr } undef, i64 %t129, 0
  %t131 = insertvalue { i64, ptr } %t130, ptr %t128, 1
  %t132 = load ptr, ptr %l54, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %t132, { i64, ptr } %t131)
  br label %bb37
bb36:
  call void @__olang_check_failed(ptr @olang_loc_a61f3cd56da1d37e_58843bed9934bc22)
  unreachable
bb37:
  br label %bb39
bb38:
  br label %bb39
bb39:
  br label %bb40
bb40:
  %t134 = load i64, ptr %l3, !tbaa !24
  %t136 = add i64 %t134, 1
  store i64 %t136, ptr %l3, !tbaa !24
  br label %bb7
bb41:
  call void @__olang_scope_close(ptr %s2)
  %t139 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l1)
  store { i64, ptr } %t139, ptr %l69
  br label %bb42
bb42:
  call void @__olang_scope_close(ptr %s0)
  %t140 = load { i64, ptr }, ptr %l69, !tbaa !27
  store { i64, ptr } %t140, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2ftarget_2eSysroot(ptr %v0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %s0, ptr %v0, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d32, i32 0, i32 1) })
  %t2 = extractvalue { i32, { i64, ptr } } %t1, 1
  %t3 = extractvalue { i32, { i64, ptr } } %t1, 0
  store i32 %t3, ptr %l2
  %t4 = icmp ne i32 %t3, 0
  br i1 %t4, label %bb2, label %ok.5, !prof !99
ok.5:
  store { i64, ptr } %t2, ptr %l1
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t6, ptr %l0, !tbaa !27
  br label %bb6
bb2:
  %t7 = load i32, ptr %l2, !tbaa !23
  %t8 = ashr i32 %t7, 16
  %t10 = icmp eq i32 %t8, 1
  br i1 %t10, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d33, i32 0, i32 1) }, ptr %l0, !tbaa !27
  br label %bb6
bb6:
  %t12 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t12, ptr %l5, !tbaa !27
  %t13 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t13, 0
  store i64 %t14, ptr %l6, !tbaa !24
  %t15 = load i64, ptr %l6, !tbaa !24
  %t16 = mul i64 %t15, 1
  %t17 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t16)
  %t18 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t19 = insertvalue { i64, ptr } %t18, ptr %t17, 1
  store { i64, ptr } %t19, ptr %l7, !tbaa !27
  %t20 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = load i64, ptr %l6, !tbaa !24
  %t25 = mul i64 %t24, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t21, ptr %t23, i64 %t25, i1 false)
  %t26 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t26, ptr %l5, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t27 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t27, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i32, %"compiler/target:Target" } @compiler_2ftarget_2eTarget_2eResolve(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, i1 %a2, ptr %a3, { i64, ptr } %a4) #0 {
entry:
  %l5 = alloca { { i64, ptr }, { i64, ptr } }
  %l8 = alloca { { i64, ptr }, { i64, ptr } }
  %l11 = alloca %"compiler/target:Target"
  %l19 = alloca %"compiler/target:Target"
  %l20 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca { i32, %"compiler/target:Target" }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call { { i64, ptr }, { i64, ptr } } @compiler_2ftarget_2eHost(ptr %s0)
  store { { i64, ptr }, { i64, ptr } } %t1, ptr %l8
  br label %bb1
bb1:
  %t2 = load { { i64, ptr }, { i64, ptr } }, ptr %l8
  store { { i64, ptr }, { i64, ptr } } %t2, ptr %l5
  %t3 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l5, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l5, i32 0, i32 1
  %t7 = load { i64, ptr }, ptr %t6, !tbaa !27
  %t23 = call { i32, %"compiler/target:Target" } @compiler_2ftarget_2eTarget_2eResolveOn(ptr %v0, ptr %v1, ptr %s0, ptr %s0, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, i1 %a2, { i64, ptr } %t4, { i64, ptr } %t7, ptr %a3, { i64, ptr } %a4)
  %t24 = extractvalue { i32, %"compiler/target:Target" } %t23, 1
  %t25 = extractvalue { i32, %"compiler/target:Target" } %t23, 0
  store i32 %t25, ptr %l20
  %t26 = icmp ne i32 %t25, 0
  br i1 %t26, label %bb3, label %ok.27, !prof !99
ok.27:
  store %"compiler/target:Target" %t24, ptr %l19
  br label %bb2
bb2:
  %t28 = load %"compiler/target:Target", ptr %l19
  store %"compiler/target:Target" %t28, ptr %l11
  br label %bb4
bb3:
  %t29 = load i32, ptr %l20, !tbaa !23
  %t30 = lshr i32 %t29, 16
  %t31 = and i32 %t29, 65535
  %t32 = icmp eq i32 %t30, 1
  %t33 = select i1 %t32, i32 1, i32 0
  %t34 = icmp eq i32 %t29, 0
  %t35 = shl i32 %t33, 16
  %t36 = or i32 %t35, %t31
  %t37 = select i1 %t34, i32 0, i32 %t36
  call void @__olang_scope_close(ptr %s0)
  %t39 = insertvalue { i32, %"compiler/target:Target" } zeroinitializer, i32 %t37, 0
  store { i32, %"compiler/target:Target" } %t39, ptr %rv
  br label %ret
bb4:
  call void @__olang_scope_close(ptr %s0)
  %t40 = load %"compiler/target:Target", ptr %l11
  %t41 = insertvalue { i32, %"compiler/target:Target" } zeroinitializer, %"compiler/target:Target" %t40, 1
  store { i32, %"compiler/target:Target" } %t41, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"compiler/target:Target" }, ptr %rv
  ret { i32, %"compiler/target:Target" } %rr
}

define dso_local { i32, %"compiler/target:Target" } @compiler_2ftarget_2eTarget_2eResolveOn(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %v6, { i64, ptr } %a0, { i64, ptr } %a1, i1 %a2, { i64, ptr } %a3, { i64, ptr } %a4, ptr %a5, { i64, ptr } %a6) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i1
  %l4 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca %"compiler/target:Target"
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca i1
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca ptr
  %l16 = alloca i64
  %l17 = alloca i64
  %lp19 = alloca ptr
  %l20 = alloca %"compiler/target:Target"
  %l22 = alloca { i64, ptr }
  %l25 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i32
  %l32 = alloca { i64, ptr }
  %l33 = alloca i64
  %l34 = alloca i64
  %l39 = alloca i64
  %l42 = alloca i64
  %l45 = alloca i64
  %l46 = alloca i32
  %l49 = alloca { i64, ptr }
  %l50 = alloca { i64, ptr }
  %l51 = alloca i64
  %l52 = alloca i64
  %l66 = alloca { i64, ptr }
  %l67 = alloca { i64, ptr }
  %l69 = alloca i64
  %l72 = alloca i64
  %l73 = alloca i64
  %l83 = alloca i1
  %l85 = alloca i1
  %l87 = alloca ptr
  %l89 = alloca %"compiler/diagmsg:Msg"
  %l90 = alloca i32
  %l93 = alloca i1
  %l95 = alloca i1
  %l96 = alloca i1
  %l99 = alloca { i64, ptr }
  %l100 = alloca i1
  %l101 = alloca ptr
  %l103 = alloca %"compiler/diagmsg:Msg"
  %l104 = alloca i32
  %l108 = alloca { i64, ptr }
  %l109 = alloca i1
  %l110 = alloca i1
  %l113 = alloca { i64, ptr }
  %l114 = alloca i1
  %l115 = alloca i1
  %l118 = alloca { i64, ptr }
  %l119 = alloca i1
  %l120 = alloca ptr
  %l122 = alloca %"compiler/diagmsg:Msg"
  %l123 = alloca i32
  %l127 = alloca { i64, ptr }
  %l128 = alloca i1
  %l129 = alloca i1
  %l131 = alloca i1
  %l132 = alloca ptr
  %l134 = alloca %"compiler/diagmsg:Msg"
  %l135 = alloca i32
  %l138 = alloca i64
  %l141 = alloca ptr
  %l143 = alloca %"compiler/diagmsg:Msg"
  %l144 = alloca i32
  %l146 = alloca i64
  %l152 = alloca { i64, ptr }
  %l157 = alloca i1
  %l159 = alloca i1
  %l161 = alloca i1
  %l163 = alloca { i64, ptr }
  %l165 = alloca i1
  %l167 = alloca i1
  %l177 = alloca i1
  %l178 = alloca { i64, ptr }
  %l180 = alloca i1
  %l181 = alloca i1
  %l183 = alloca ptr
  %l185 = alloca %"compiler/diagmsg:Msg"
  %l186 = alloca i32
  %l189 = alloca i1
  %l191 = alloca ptr
  %l193 = alloca %"compiler/diagmsg:Msg"
  %l194 = alloca i32
  %l197 = alloca i1
  %l199 = alloca i1
  %l201 = alloca ptr
  %l204 = alloca %"compiler/diagmsg:Msg"
  %l205 = alloca i32
  %l208 = alloca i1
  %l211 = alloca i1
  %l212 = alloca ptr
  %l213 = alloca { i64, ptr }
  %l214 = alloca { i64, ptr }
  %l217 = alloca i1
  %l219 = alloca ptr
  %l221 = alloca %"compiler/diagmsg:Msg"
  %l222 = alloca i32
  %l225 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l228 = alloca { i64, ptr }
  %l230 = alloca i1
  %l232 = alloca ptr
  %l233 = alloca i64
  %l239 = alloca ptr
  %l240 = alloca i64
  %l262 = alloca %"std/os:Output"
  %l264 = alloca { i64, ptr }
  %l267 = alloca %"std/os:Output"
  %l268 = alloca i32
  %l270 = alloca i1
  %l273 = alloca ptr
  %l275 = alloca %"compiler/diagmsg:Msg"
  %l276 = alloca i32
  %l280 = alloca ptr
  %l282 = alloca %"compiler/diagmsg:Msg"
  %l283 = alloca i32
  %l287 = alloca i32
  %l291 = alloca ptr
  %l293 = alloca %"compiler/diagmsg:Msg"
  %l294 = alloca i32
  %l296 = alloca ptr
  %l298 = alloca %"compiler/diagmsg:Msg"
  %l299 = alloca i32
  %l302 = alloca i1
  %l305 = alloca i1
  %l307 = alloca ptr
  %l309 = alloca %"compiler/diagmsg:Msg"
  %l310 = alloca i32
  %l312 = alloca i64
  %l319 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %s25 = alloca %olang.scope
  %rv = alloca { i32, %"compiler/target:Target" }
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store i1 %a2, ptr %l2
  store { i64, ptr } %a4, ptr %l4
  store ptr %a5, ptr %l5
  store { i64, ptr } %a6, ptr %l6
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"compiler/target:Target" @compiler_2ftarget_3aTarget_2ector(ptr %v6)
  store %"compiler/target:Target" %t1, ptr %l20
  br label %bb1
bb1:
  %t2 = load %"compiler/target:Target", ptr %l20
  store %"compiler/target:Target" %t2, ptr %l7
  %t3 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t4 = getelementptr %"compiler/target:Target", ptr %l7, i32 0, i32 0
  %t5 = load { i64, ptr }, ptr %t4, !tbaa !27
  store { i64, ptr } %t5, ptr %l22, !tbaa !27
  %t7 = getelementptr %"compiler/target:Target", ptr %l7, i32 0, i32 0
  store { i64, ptr } %t3, ptr %t7, !tbaa !27
  %t8 = load i1, ptr @olang_2esole_2ecompiler_2ftarget_3aTarget_2e0
  br i1 %t8, label %bb2, label %bb3
bb2:
  %t10 = load { i64, ptr }, ptr %l22
  %t11 = extractvalue { i64, ptr } %t10, 1
  call void @__olang_region_release(ptr %t11)
  store { i64, ptr } zeroinitializer, ptr %l22
  br label %bb3
bb3:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d34, i32 0, i32 1) }, ptr %l8, !tbaa !27
  %t12 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t12, ptr %l9, !tbaa !27
  store i1 true, ptr %l10, !tbaa !21
  store i64 -1, ptr %l11, !tbaa !24
  %t14 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t17 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v0, { i64, ptr } %t14, i8 45)
  %t18 = extractvalue { i32, i64 } %t17, 1
  %t19 = extractvalue { i32, i64 } %t17, 0
  store i32 %t19, ptr %l29
  %t20 = icmp ne i32 %t19, 0
  br i1 %t20, label %bb5, label %ok.21, !prof !99
ok.21:
  store i64 %t18, ptr %l28
  br label %bb4
bb4:
  %t22 = load i64, ptr %l28, !tbaa !24
  store i64 %t22, ptr %l25, !tbaa !24
  br label %bb7
bb5:
  br label %bb6
bb6:
  store i64 -1, ptr %l25, !tbaa !24
  br label %bb7
bb7:
  %t23 = load i64, ptr %l25, !tbaa !24
  store i64 %t23, ptr %l12, !tbaa !24
  %t24 = load i64, ptr %l12, !tbaa !24
  %t26 = icmp sge i64 %t24, 0
  br i1 %t26, label %bb8, label %bb9
bb8:
  %t28 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t28, ptr %l32, !tbaa !27
  %t29 = load i64, ptr %l12, !tbaa !24
  store i64 %t29, ptr %l33, !tbaa !24
  %t30 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t30, 0
  store i64 %t31, ptr %l34, !tbaa !24
  %t32 = icmp sge i64 0, 0
  br i1 %t32, label %bb10, label %bb11
bb9:
  br label %bb17
bb10:
  %t34 = load i64, ptr %l33, !tbaa !24
  %t35 = icmp sle i64 0, %t34
  br i1 %t35, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_5afbe203adc8766f_c0acc38cff9c62b)
  unreachable
bb12:
  %t37 = load i64, ptr %l33, !tbaa !24
  %t38 = load i64, ptr %l34, !tbaa !24
  %t39 = icmp sle i64 %t37, %t38
  br i1 %t39, label %bb14, label %bb15
bb13:
  call void @__olang_check_failed(ptr @olang_loc_5afbe203adc8766f_c0acc38cff9c62b)
  unreachable
bb14:
  %t41 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !27
  %t43 = load i64, ptr %l33, !tbaa !24
  %t44 = getelementptr i8, ptr %t42, i64 0
  %t45 = sub i64 %t43, 0
  %t46 = insertvalue { i64, ptr } undef, i64 %t45, 0
  %t47 = insertvalue { i64, ptr } %t46, ptr %t44, 1
  %t49 = call i64 @compiler_2ftarget_2earchIndex(ptr %v0, { i64, ptr } %t47)
  store i64 %t49, ptr %l39
  br label %bb16
bb15:
  call void @__olang_check_failed(ptr @olang_loc_5afbe203adc8766f_c0acc38cff9c62b)
  unreachable
bb16:
  %t50 = load i64, ptr %l39, !tbaa !24
  store i64 %t50, ptr %l11, !tbaa !24
  br label %bb17
bb17:
  %t51 = load i64, ptr %l11, !tbaa !24
  %t53 = icmp sge i64 %t51, 0
  br i1 %t53, label %bb18, label %bb19
bb18:
  store %olang.scope zeroinitializer, ptr %s2
  %t55 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t58 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v0, { i64, ptr } %t55, i8 58)
  %t59 = extractvalue { i32, i64 } %t58, 1
  %t60 = extractvalue { i32, i64 } %t58, 0
  store i32 %t60, ptr %l46
  %t61 = icmp ne i32 %t60, 0
  br i1 %t61, label %bb21, label %ok.62, !prof !99
ok.62:
  store i64 %t59, ptr %l45
  br label %bb20
bb19:
  store %olang.scope zeroinitializer, ptr %s8
  %t63 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d35, i32 0, i32 1) }, ptr %l108, !tbaa !27
  %t66 = load { i64, ptr }, ptr %l108, !tbaa !27
  %t67 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %s8, { i64, ptr } %t63, { i64, ptr } %t66)
  store i1 %t67, ptr %l109
  br label %bb68
bb20:
  %t68 = load i64, ptr %l45, !tbaa !24
  store i64 %t68, ptr %l42, !tbaa !24
  br label %bb23
bb21:
  br label %bb22
bb22:
  store i64 -1, ptr %l42, !tbaa !24
  br label %bb23
bb23:
  %t69 = load i64, ptr %l42, !tbaa !24
  store i64 %t69, ptr %l13, !tbaa !24
  %t70 = load i64, ptr %l13, !tbaa !24
  %t72 = icmp sge i64 %t70, 0
  br i1 %t72, label %bb24, label %bb25
bb24:
  %t74 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t74, ptr %l50, !tbaa !27
  %t75 = load i64, ptr %l13, !tbaa !24
  store i64 %t75, ptr %l51, !tbaa !24
  %t76 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t77 = extractvalue { i64, ptr } %t76, 0
  store i64 %t77, ptr %l52, !tbaa !24
  %t78 = icmp sge i64 0, 0
  br i1 %t78, label %bb26, label %bb27
bb25:
  %t80 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t82 = extractvalue { i64, ptr } %t80, 1
  %t83 = extractvalue { i64, ptr } %t80, 0
  %t84 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t83)
  call void @olang_textcopy(ptr %t84, ptr %t82, i64 %t83)
  %t85 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t86 = insertvalue { i64, ptr } %t85, ptr %t84, 1
  %t88 = extractvalue { i64, ptr } %t86, 0
  %t89 = extractvalue { i64, ptr } %t86, 1
  %t90 = mul i64 %t88, 1
  %t91 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t90)
  call void @llvm.memcpy.p0.p0.i64(ptr %t91, ptr %t89, i64 %t90, i1 false)
  %t92 = insertvalue { i64, ptr } undef, i64 %t88, 0
  %t93 = insertvalue { i64, ptr } %t92, ptr %t91, 1
  store { i64, ptr } %t93, ptr %l49, !tbaa !27
  br label %bb32
bb26:
  %t95 = load i64, ptr %l51, !tbaa !24
  %t96 = icmp sle i64 0, %t95
  br i1 %t96, label %bb28, label %bb29
bb27:
  call void @__olang_check_failed(ptr @olang_loc_ccc584ee5db490f2_f240216cb9bcdd2e)
  unreachable
bb28:
  %t98 = load i64, ptr %l51, !tbaa !24
  %t99 = load i64, ptr %l52, !tbaa !24
  %t100 = icmp sle i64 %t98, %t99
  br i1 %t100, label %bb30, label %bb31
bb29:
  call void @__olang_check_failed(ptr @olang_loc_ccc584ee5db490f2_f240216cb9bcdd2e)
  unreachable
bb30:
  %t102 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t103 = load ptr, ptr %t102, !tbaa !27
  %t104 = load i64, ptr %l51, !tbaa !24
  %t105 = getelementptr i8, ptr %t103, i64 0
  %t106 = sub i64 %t104, 0
  %t107 = insertvalue { i64, ptr } undef, i64 %t106, 0
  %t108 = insertvalue { i64, ptr } %t107, ptr %t105, 1
  %t110 = extractvalue { i64, ptr } %t108, 1
  %t111 = extractvalue { i64, ptr } %t108, 0
  %t112 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t111)
  call void @olang_textcopy(ptr %t112, ptr %t110, i64 %t111)
  %t113 = insertvalue { i64, ptr } undef, i64 %t111, 0
  %t114 = insertvalue { i64, ptr } %t113, ptr %t112, 1
  %t116 = extractvalue { i64, ptr } %t114, 0
  %t117 = extractvalue { i64, ptr } %t114, 1
  %t118 = mul i64 %t116, 1
  %t119 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t118)
  call void @llvm.memcpy.p0.p0.i64(ptr %t119, ptr %t117, i64 %t118, i1 false)
  %t120 = insertvalue { i64, ptr } undef, i64 %t116, 0
  %t121 = insertvalue { i64, ptr } %t120, ptr %t119, 1
  store { i64, ptr } %t121, ptr %l49, !tbaa !27
  br label %bb32
bb31:
  call void @__olang_check_failed(ptr @olang_loc_ccc584ee5db490f2_f240216cb9bcdd2e)
  unreachable
bb32:
  %t123 = load { i64, ptr }, ptr %l49, !tbaa !27
  store { i64, ptr } %t123, ptr %l8, !tbaa !27
  %t124 = load i64, ptr %l13, !tbaa !24
  %t126 = icmp sge i64 %t124, 0
  store i1 %t126, ptr %l10, !tbaa !21
  %t128 = load i64, ptr %l13, !tbaa !24
  %t130 = icmp sge i64 %t128, 0
  br i1 %t130, label %bb33, label %bb34
bb33:
  %t132 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t132, ptr %l67, !tbaa !27
  %t133 = load i64, ptr %l13, !tbaa !24
  %t135 = add i64 %t133, 1
  store i64 %t135, ptr %l69, !tbaa !24
  %t136 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t139 = extractvalue { i64, ptr } %t136, 0
  store i64 %t139, ptr %l72, !tbaa !24
  %t140 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t141 = extractvalue { i64, ptr } %t140, 0
  store i64 %t141, ptr %l73, !tbaa !24
  %t142 = load i64, ptr %l69, !tbaa !24
  %t143 = icmp sge i64 %t142, 0
  br i1 %t143, label %bb35, label %bb36
bb34:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d36, i32 0, i32 1) }, ptr %l66, !tbaa !27
  br label %bb41
bb35:
  %t145 = load i64, ptr %l69, !tbaa !24
  %t146 = load i64, ptr %l72, !tbaa !24
  %t147 = icmp sle i64 %t145, %t146
  br i1 %t147, label %bb37, label %bb38
bb36:
  call void @__olang_check_failed(ptr @olang_loc_8b94dd4b00821371_32c50240ce2e918d)
  unreachable
bb37:
  %t149 = load i64, ptr %l72, !tbaa !24
  %t150 = load i64, ptr %l73, !tbaa !24
  %t151 = icmp sle i64 %t149, %t150
  br i1 %t151, label %bb39, label %bb40
bb38:
  call void @__olang_check_failed(ptr @olang_loc_8b94dd4b00821371_32c50240ce2e918d)
  unreachable
bb39:
  %t153 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t154 = load ptr, ptr %t153, !tbaa !27
  %t155 = load i64, ptr %l69, !tbaa !24
  %t156 = load i64, ptr %l72, !tbaa !24
  %t157 = getelementptr i8, ptr %t154, i64 %t155
  %t158 = sub i64 %t156, %t155
  %t159 = insertvalue { i64, ptr } undef, i64 %t158, 0
  %t160 = insertvalue { i64, ptr } %t159, ptr %t157, 1
  %t162 = extractvalue { i64, ptr } %t160, 1
  %t163 = extractvalue { i64, ptr } %t160, 0
  %t164 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t163)
  call void @olang_textcopy(ptr %t164, ptr %t162, i64 %t163)
  %t165 = insertvalue { i64, ptr } undef, i64 %t163, 0
  %t166 = insertvalue { i64, ptr } %t165, ptr %t164, 1
  %t168 = extractvalue { i64, ptr } %t166, 0
  %t169 = extractvalue { i64, ptr } %t166, 1
  %t170 = mul i64 %t168, 1
  %t171 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t170)
  call void @llvm.memcpy.p0.p0.i64(ptr %t171, ptr %t169, i64 %t170, i1 false)
  %t172 = insertvalue { i64, ptr } undef, i64 %t168, 0
  %t173 = insertvalue { i64, ptr } %t172, ptr %t171, 1
  store { i64, ptr } %t173, ptr %l66, !tbaa !27
  br label %bb41
bb40:
  call void @__olang_check_failed(ptr @olang_loc_8b94dd4b00821371_32c50240ce2e918d)
  unreachable
bb41:
  %t175 = load { i64, ptr }, ptr %l66, !tbaa !27
  store { i64, ptr } %t175, ptr %l9, !tbaa !27
  %t176 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t178 = extractvalue { i64, ptr } %t176, 0
  %t180 = icmp sgt i64 %t178, 10
  br i1 %t180, label %bb42, label %bb43
bb42:
  %t182 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t184 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %s0, ptr %s2, { i64, ptr } %t182, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d37, i32 0, i32 1) })
  store i1 %t184, ptr %l85
  br label %bb44
bb43:
  store i1 false, ptr %l83, !tbaa !21
  br label %bb45
bb44:
  %t185 = load i1, ptr %l85, !tbaa !21
  store i1 %t185, ptr %l83, !tbaa !21
  br label %bb45
bb45:
  %t186 = load i1, ptr %l83, !tbaa !21
  %t187 = xor i1 %t186, true
  br i1 %t187, label %bb46, label %bb47
bb46:
  %t189 = load ptr, ptr %l5, !tbaa !29
  store ptr %t189, ptr %l87, !tbaa !29
  %t190 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t192 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTargetUnsupported(ptr %v0, ptr %v4, { i64, ptr } %t190)
  store %"compiler/diagmsg:Msg" %t192, ptr %l89
  br label %bb48
bb47:
  br label %bb52
bb48:
  %t193 = load ptr, ptr %l87, !tbaa !29
  %t194 = load %"compiler/diagmsg:Msg", ptr %l89
  %t195 = call i32 @compiler_2ftarget_2erefuse(ptr %v4, ptr %v4, ptr %t193, %"compiler/diagmsg:Msg" %t194)
  store i32 %t195, ptr %l90
  %t196 = icmp ne i32 %t195, 0
  br i1 %t196, label %bb50, label %ok.197, !prof !99
ok.197:
  br label %bb49
bb49:
  br label %bb51
bb50:
  %t198 = load i32, ptr %l90, !tbaa !23
  %t199 = lshr i32 %t198, 16
  %t200 = and i32 %t198, 65535
  %t201 = icmp eq i32 %t199, 1
  %t202 = select i1 %t201, i32 1, i32 0
  %t203 = icmp eq i32 %t198, 0
  %t204 = shl i32 %t202, 16
  %t205 = or i32 %t204, %t200
  %t206 = select i1 %t203, i32 0, i32 %t205
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t208 = insertvalue { i32, %"compiler/target:Target" } zeroinitializer, i32 %t206, 0
  store { i32, %"compiler/target:Target" } %t208, ptr %rv
  br label %ret
bb51:
  br label %bb52
bb52:
  %t209 = load i1, ptr %l10, !tbaa !21
  br i1 %t209, label %bb53, label %bb54
bb53:
  %t211 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t213 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s2, { i64, ptr } %t211, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d38, i32 0, i32 1) })
  store i1 %t213, ptr %l95
  br label %bb55
bb54:
  store i1 false, ptr %l93, !tbaa !21
  br label %bb60
bb55:
  %t214 = load i1, ptr %l95, !tbaa !21
  br i1 %t214, label %bb56, label %bb57
bb56:
  store i1 true, ptr %l96, !tbaa !21
  br label %bb59
bb57:
  %t215 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d39, i32 0, i32 1) }, ptr %l99, !tbaa !27
  %t218 = load { i64, ptr }, ptr %l99, !tbaa !27
  %t219 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %s0, ptr %s2, { i64, ptr } %t215, { i64, ptr } %t218)
  store i1 %t219, ptr %l100
  br label %bb58
bb58:
  %t220 = load i1, ptr %l100, !tbaa !21
  store i1 %t220, ptr %l96, !tbaa !21
  br label %bb59
bb59:
  %t221 = load i1, ptr %l96, !tbaa !21
  store i1 %t221, ptr %l93, !tbaa !21
  br label %bb60
bb60:
  %t222 = load i1, ptr %l93, !tbaa !21
  br i1 %t222, label %bb61, label %bb62
bb61:
  %t223 = load ptr, ptr %l5, !tbaa !29
  store ptr %t223, ptr %l101, !tbaa !29
  %t224 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t226 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTargetUnknown(ptr %v0, ptr %v4, { i64, ptr } %t224)
  store %"compiler/diagmsg:Msg" %t226, ptr %l103
  br label %bb63
bb62:
  br label %bb67
bb63:
  %t227 = load ptr, ptr %l101, !tbaa !29
  %t228 = load %"compiler/diagmsg:Msg", ptr %l103
  %t229 = call i32 @compiler_2ftarget_2erefuse(ptr %v4, ptr %v4, ptr %t227, %"compiler/diagmsg:Msg" %t228)
  store i32 %t229, ptr %l104
  %t230 = icmp ne i32 %t229, 0
  br i1 %t230, label %bb65, label %ok.231, !prof !99
ok.231:
  br label %bb64
bb64:
  br label %bb66
bb65:
  %t232 = load i32, ptr %l104, !tbaa !23
  %t233 = lshr i32 %t232, 16
  %t234 = and i32 %t232, 65535
  %t235 = icmp eq i32 %t233, 1
  %t236 = select i1 %t235, i32 1, i32 0
  %t237 = icmp eq i32 %t232, 0
  %t238 = shl i32 %t236, 16
  %t239 = or i32 %t238, %t234
  %t240 = select i1 %t237, i32 0, i32 %t239
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t242 = insertvalue { i32, %"compiler/target:Target" } zeroinitializer, i32 %t240, 0
  store { i32, %"compiler/target:Target" } %t242, ptr %rv
  br label %ret
bb66:
  br label %bb67
bb67:
  call void @__olang_scope_close(ptr %s2)
  br label %bb104
bb68:
  %t243 = load i1, ptr %l109, !tbaa !21
  br i1 %t243, label %bb69, label %bb70
bb69:
  store i1 true, ptr %l110, !tbaa !21
  br label %bb72
bb70:
  %t244 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d40, i32 0, i32 1) }, ptr %l113, !tbaa !27
  %t247 = load { i64, ptr }, ptr %l113, !tbaa !27
  %t248 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %s8, { i64, ptr } %t244, { i64, ptr } %t247)
  store i1 %t248, ptr %l114
  br label %bb71
bb71:
  %t249 = load i1, ptr %l114, !tbaa !21
  store i1 %t249, ptr %l110, !tbaa !21
  br label %bb72
bb72:
  %t250 = load i1, ptr %l110, !tbaa !21
  br i1 %t250, label %bb73, label %bb74
bb73:
  store i1 true, ptr %l115, !tbaa !21
  br label %bb76
bb74:
  %t251 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d41, i32 0, i32 1) }, ptr %l118, !tbaa !27
  %t254 = load { i64, ptr }, ptr %l118, !tbaa !27
  %t255 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %s8, { i64, ptr } %t251, { i64, ptr } %t254)
  store i1 %t255, ptr %l119
  br label %bb75
bb75:
  %t256 = load i1, ptr %l119, !tbaa !21
  store i1 %t256, ptr %l115, !tbaa !21
  br label %bb76
bb76:
  %t257 = load i1, ptr %l115, !tbaa !21
  br i1 %t257, label %bb77, label %bb78
bb77:
  %t258 = load ptr, ptr %l5, !tbaa !29
  store ptr %t258, ptr %l120, !tbaa !29
  %t259 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t261 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTargetUnsupported(ptr %v0, ptr %v4, { i64, ptr } %t259)
  store %"compiler/diagmsg:Msg" %t261, ptr %l122
  br label %bb79
bb78:
  br label %bb83
bb79:
  %t262 = load ptr, ptr %l120, !tbaa !29
  %t263 = load %"compiler/diagmsg:Msg", ptr %l122
  %t264 = call i32 @compiler_2ftarget_2erefuse(ptr %v4, ptr %v4, ptr %t262, %"compiler/diagmsg:Msg" %t263)
  store i32 %t264, ptr %l123
  %t265 = icmp ne i32 %t264, 0
  br i1 %t265, label %bb81, label %ok.266, !prof !99
ok.266:
  br label %bb80
bb80:
  br label %bb82
bb81:
  %t267 = load i32, ptr %l123, !tbaa !23
  %t268 = lshr i32 %t267, 16
  %t269 = and i32 %t267, 65535
  %t270 = icmp eq i32 %t268, 1
  %t271 = select i1 %t270, i32 1, i32 0
  %t272 = icmp eq i32 %t267, 0
  %t273 = shl i32 %t271, 16
  %t274 = or i32 %t273, %t269
  %t275 = select i1 %t272, i32 0, i32 %t274
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s0)
  %t277 = insertvalue { i32, %"compiler/target:Target" } zeroinitializer, i32 %t275, 0
  store { i32, %"compiler/target:Target" } %t277, ptr %rv
  br label %ret
bb82:
  br label %bb83
bb83:
  %t278 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d42, i32 0, i32 1) }, ptr %l127, !tbaa !27
  %t281 = load { i64, ptr }, ptr %l127, !tbaa !27
  %t282 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %s8, { i64, ptr } %t278, { i64, ptr } %t281)
  store i1 %t282, ptr %l128
  br label %bb84
bb84:
  %t283 = load i1, ptr %l128, !tbaa !21
  br i1 %t283, label %bb85, label %bb86
bb85:
  store i1 true, ptr %l129, !tbaa !21
  br label %bb88
bb86:
  %t284 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t286 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s8, { i64, ptr } %t284, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d43, i32 0, i32 1) })
  store i1 %t286, ptr %l131
  br label %bb87
bb87:
  %t287 = load i1, ptr %l131, !tbaa !21
  store i1 %t287, ptr %l129, !tbaa !21
  br label %bb88
bb88:
  %t288 = load i1, ptr %l129, !tbaa !21
  br i1 %t288, label %bb89, label %bb90
bb89:
  %t289 = load ptr, ptr %l5, !tbaa !29
  store ptr %t289, ptr %l132, !tbaa !29
  %t290 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t292 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTargetUnknown(ptr %v0, ptr %v4, { i64, ptr } %t290)
  store %"compiler/diagmsg:Msg" %t292, ptr %l134
  br label %bb91
bb90:
  br label %bb95
bb91:
  %t293 = load ptr, ptr %l132, !tbaa !29
  %t294 = load %"compiler/diagmsg:Msg", ptr %l134
  %t295 = call i32 @compiler_2ftarget_2erefuse(ptr %v4, ptr %v4, ptr %t293, %"compiler/diagmsg:Msg" %t294)
  store i32 %t295, ptr %l135
  %t296 = icmp ne i32 %t295, 0
  br i1 %t296, label %bb93, label %ok.297, !prof !99
ok.297:
  br label %bb92
bb92:
  br label %bb94
bb93:
  %t298 = load i32, ptr %l135, !tbaa !23
  %t299 = lshr i32 %t298, 16
  %t300 = and i32 %t298, 65535
  %t301 = icmp eq i32 %t299, 1
  %t302 = select i1 %t301, i32 1, i32 0
  %t303 = icmp eq i32 %t298, 0
  %t304 = shl i32 %t302, 16
  %t305 = or i32 %t304, %t300
  %t306 = select i1 %t303, i32 0, i32 %t305
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s0)
  %t308 = insertvalue { i32, %"compiler/target:Target" } zeroinitializer, i32 %t306, 0
  store { i32, %"compiler/target:Target" } %t308, ptr %rv
  br label %ret
bb94:
  br label %bb95
bb95:
  %t309 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t311 = call i64 @compiler_2ftarget_2earchIndex(ptr %v3, { i64, ptr } %t309)
  store i64 %t311, ptr %l138
  br label %bb96
bb96:
  %t312 = load i64, ptr %l138, !tbaa !24
  store i64 %t312, ptr %l11, !tbaa !24
  %t313 = load i64, ptr %l11, !tbaa !24
  %t315 = icmp slt i64 %t313, 0
  br i1 %t315, label %bb97, label %bb98
bb97:
  %t317 = load ptr, ptr %l5, !tbaa !29
  store ptr %t317, ptr %l141, !tbaa !29
  %t318 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t320 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTargetUnsupported(ptr %v3, ptr %v4, { i64, ptr } %t318)
  store %"compiler/diagmsg:Msg" %t320, ptr %l143
  br label %bb99
bb98:
  br label %bb103
bb99:
  %t321 = load ptr, ptr %l141, !tbaa !29
  %t322 = load %"compiler/diagmsg:Msg", ptr %l143
  %t323 = call i32 @compiler_2ftarget_2erefuse(ptr %v4, ptr %v4, ptr %t321, %"compiler/diagmsg:Msg" %t322)
  store i32 %t323, ptr %l144
  %t324 = icmp ne i32 %t323, 0
  br i1 %t324, label %bb101, label %ok.325, !prof !99
ok.325:
  br label %bb100
bb100:
  br label %bb102
bb101:
  %t326 = load i32, ptr %l144, !tbaa !23
  %t327 = lshr i32 %t326, 16
  %t328 = and i32 %t326, 65535
  %t329 = icmp eq i32 %t327, 1
  %t330 = select i1 %t329, i32 1, i32 0
  %t331 = icmp eq i32 %t326, 0
  %t332 = shl i32 %t330, 16
  %t333 = or i32 %t332, %t328
  %t334 = select i1 %t331, i32 0, i32 %t333
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s0)
  %t336 = insertvalue { i32, %"compiler/target:Target" } zeroinitializer, i32 %t334, 0
  store { i32, %"compiler/target:Target" } %t336, ptr %rv
  br label %ret
bb102:
  br label %bb103
bb103:
  call void @__olang_scope_close(ptr %s8)
  br label %bb104
bb104:
  %t337 = ptrtoint ptr %v6 to i64
  store i64 %t337, ptr %l146, !tbaa !24
  %t338 = load i1, ptr @olang_2esole_2ecompiler_2ftarget_3aTarget_2e2
  br i1 %t338, label %bb105, label %bb106
bb105:
  %t340 = call ptr @__olang_region_make(ptr %v6)
  %t341 = ptrtoint ptr %t340 to i64
  store i64 %t341, ptr %l146, !tbaa !24
  br label %bb106
bb106:
  %t342 = load i64, ptr %l11, !tbaa !24
  %t344 = getelementptr [2 x { i64, ptr }], ptr @G_2ecompiler_2ftarget_2eArchs, i64 0, i64 %t342
  %t345 = load { i64, ptr }, ptr %t344, !tbaa !37
  %t347 = extractvalue { i64, ptr } %t345, 1
  %t348 = extractvalue { i64, ptr } %t345, 0
  %t349 = load i64, ptr %l146
  %t350 = inttoptr i64 %t349 to ptr
  %t351 = call ptr @__olang_scope_alloc(ptr %t350, i64 %t348)
  call void @olang_textcopy(ptr %t351, ptr %t347, i64 %t348)
  %t352 = insertvalue { i64, ptr } undef, i64 %t348, 0
  %t353 = insertvalue { i64, ptr } %t352, ptr %t351, 1
  %t355 = load i64, ptr %l146
  %t356 = inttoptr i64 %t355 to ptr
  %t357 = extractvalue { i64, ptr } %t353, 0
  %t358 = extractvalue { i64, ptr } %t353, 1
  %t359 = mul i64 %t357, 1
  %t360 = call ptr @__olang_scope_alloc(ptr %t356, i64 %t359)
  call void @llvm.memcpy.p0.p0.i64(ptr %t360, ptr %t358, i64 %t359, i1 false)
  %t361 = insertvalue { i64, ptr } undef, i64 %t357, 0
  %t362 = insertvalue { i64, ptr } %t361, ptr %t360, 1
  %t363 = getelementptr %"compiler/target:Target", ptr %l7, i32 0, i32 2
  %t364 = load { i64, ptr }, ptr %t363, !tbaa !27
  store { i64, ptr } %t364, ptr %l152, !tbaa !27
  %t366 = getelementptr %"compiler/target:Target", ptr %l7, i32 0, i32 2
  store { i64, ptr } %t362, ptr %t366, !tbaa !27
  %t367 = load i1, ptr @olang_2esole_2ecompiler_2ftarget_3aTarget_2e2
  br i1 %t367, label %bb107, label %bb108
bb107:
  %t369 = load { i64, ptr }, ptr %l152
  %t370 = extractvalue { i64, ptr } %t369, 1
  call void @__olang_region_release(ptr %t370)
  store { i64, ptr } zeroinitializer, ptr %l152
  br label %bb108
bb108:
  %t371 = load i64, ptr %l11, !tbaa !24
  %t373 = getelementptr [2 x { i64, ptr }], ptr @G_2ecompiler_2ftarget_2eArchs, i64 0, i64 %t371
  %t374 = load { i64, ptr }, ptr %t373, !tbaa !37
  %t375 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t376 = load ptr, ptr @__olang_prog_scope
  %t379 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %t376, ptr %v3, { i64, ptr } %t374, { i64, ptr } %t375)
  store i1 %t379, ptr %l157
  br label %bb109
bb109:
  %t380 = load i1, ptr %l157, !tbaa !21
  %t381 = xor i1 %t380, true
  br i1 %t381, label %bb110, label %bb111
bb110:
  store i1 true, ptr %l159, !tbaa !21
  br label %bb113
bb111:
  %t385 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %a3, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d44, i32 0, i32 1) })
  store i1 %t385, ptr %l161
  br label %bb112
bb112:
  %t386 = load i1, ptr %l161, !tbaa !21
  %t387 = xor i1 %t386, true
  store i1 %t387, ptr %l159, !tbaa !21
  br label %bb113
bb113:
  %t389 = load i1, ptr %l159, !tbaa !21
  %t390 = getelementptr %"compiler/target:Target", ptr %l7, i32 0, i32 9
  store i1 %t389, ptr %t390, !tbaa !21
  %t391 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t391, ptr %l163, !tbaa !27
  %t392 = load { i64, ptr }, ptr %l163, !tbaa !27
  %t393 = extractvalue { i64, ptr } %t392, 1
  %t394 = call ptr @__olang_scope_of(ptr %t393, ptr null)
  %t395 = ptrtoint ptr %t394 to i64
  %t397 = inttoptr i64 %t395 to ptr
  %t398 = load { i64, ptr }, ptr %l163, !tbaa !27
  %t399 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %t397, ptr %s0, { i64, ptr } %t398, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d45, i32 0, i32 1) })
  store i1 %t399, ptr %l165
  br label %bb114
bb114:
  %t400 = load i1, ptr %l165, !tbaa !21
  %t401 = xor i1 %t400, true
  br i1 %t401, label %bb115, label %bb116
bb115:
  %t403 = getelementptr %"compiler/target:Target", ptr %l7, i32 0, i32 9
  %t404 = load i1, ptr %t403, !tbaa !21
  %t406 = xor i1 %t404, true
  store i1 %t406, ptr %l167, !tbaa !21
  br label %bb117
bb116:
  store i1 false, ptr %l167, !tbaa !21
  br label %bb117
bb117:
  %t408 = load i1, ptr %l167, !tbaa !21
  br i1 %t408, label %bb118, label %bb119
bb118:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d46, i32 0, i32 1) }, ptr %l8, !tbaa !27
  %t409 = load i1, ptr %l10, !tbaa !21
  %t411 = xor i1 %t409, true
  br i1 %t411, label %bb120, label %bb121
bb119:
  br label %bb123
bb120:
  %t413 = load i64, ptr %l11, !tbaa !24
  %t415 = getelementptr [2 x { i64, ptr }], ptr @G_2ecompiler_2ftarget_2eArchDefaultCpus, i64 0, i64 %t413
  %t416 = load { i64, ptr }, ptr %t415, !tbaa !37
  %t418 = extractvalue { i64, ptr } %t416, 1
  %t419 = extractvalue { i64, ptr } %t416, 0
  %t420 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t419)
  call void @olang_textcopy(ptr %t420, ptr %t418, i64 %t419)
  %t421 = insertvalue { i64, ptr } undef, i64 %t419, 0
  %t422 = insertvalue { i64, ptr } %t421, ptr %t420, 1
  %t424 = extractvalue { i64, ptr } %t422, 0
  %t425 = extractvalue { i64, ptr } %t422, 1
  %t426 = mul i64 %t424, 1
  %t427 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t426)
  call void @llvm.memcpy.p0.p0.i64(ptr %t427, ptr %t425, i64 %t426, i1 false)
  %t428 = insertvalue { i64, ptr } undef, i64 %t424, 0
  %t429 = insertvalue { i64, ptr } %t428, ptr %t427, 1
  store { i64, ptr } %t429, ptr %l9, !tbaa !27
  store i1 true, ptr %l10, !tbaa !21
  br label %bb122
bb121:
  br label %bb122
bb122:
  br label %bb123
bb123:
  %t431 = load i1, ptr %l10, !tbaa !21
  br i1 %t431, label %bb124, label %bb125
bb124:
  %t433 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t433, ptr %l178, !tbaa !27
  %t434 = load { i64, ptr }, ptr %l178, !tbaa !27
  %t435 = extractvalue { i64, ptr } %t434, 1
  %t436 = call ptr @__olang_scope_of(ptr %t435, ptr null)
  %t437 = ptrtoint ptr %t436 to i64
  %t439 = inttoptr i64 %t437 to ptr
  %t440 = load { i64, ptr }, ptr %l178, !tbaa !27
  %t441 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %t439, ptr %s0, { i64, ptr } %t440, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d47, i32 0, i32 1) })
  store i1 %t441, ptr %l180
  br label %bb126
bb125:
  store i1 false, ptr %l177, !tbaa !21
  br label %bb127
bb126:
  %t442 = load i1, ptr %l180, !tbaa !21
  store i1 %t442, ptr %l177, !tbaa !21
  br label %bb127
bb127:
  %t443 = load i1, ptr %l177, !tbaa !21
  br i1 %t443, label %bb128, label %bb129
bb128:
  %t444 = getelementptr %"compiler/target:Target", ptr %l7, i32 0, i32 9
  %t445 = load i1, ptr %t444, !tbaa !21
  store i1 %t445, ptr %l181, !tbaa !21
  br label %bb130
bb129:
  store i1 false, ptr %l181, !tbaa !21
  br label %bb130
bb130:
  %t447 = load i1, ptr %l181, !tbaa !21
  br i1 %t447, label %bb131, label %bb132
bb131:
  %t448 = load ptr, ptr %l5, !tbaa !29
  store ptr %t448, ptr %l183, !tbaa !29
  %t449 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t451 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTargetNativeForeign(ptr %v0, ptr %v4, { i64, ptr } %t449)
  store %"compiler/diagmsg:Msg" %t451, ptr %l185
  br label %bb133
bb132:
  br label %bb137
bb133:
  %t452 = load ptr, ptr %l183, !tbaa !29
  %t453 = load %"compiler/diagmsg:Msg", ptr %l185
  %t454 = call i32 @compiler_2ftarget_2erefuse(ptr %v4, ptr %v4, ptr %t452, %"compiler/diagmsg:Msg" %t453)
  store i32 %t454, ptr %l186
  %t455 = icmp ne i32 %t454, 0
  br i1 %t455, label %bb135, label %ok.456, !prof !99
ok.456:
  br label %bb134
bb134:
  br label %bb136
bb135:
  %t457 = load i32, ptr %l186, !tbaa !23
  %t458 = lshr i32 %t457, 16
  %t459 = and i32 %t457, 65535
  %t460 = icmp eq i32 %t458, 1
  %t461 = select i1 %t460, i32 1, i32 0
  %t462 = icmp eq i32 %t457, 0
  %t463 = shl i32 %t461, 16
  %t464 = or i32 %t463, %t459
  %t465 = select i1 %t462, i32 0, i32 %t464
  call void @__olang_scope_close(ptr %s0)
  %t467 = insertvalue { i32, %"compiler/target:Target" } zeroinitializer, i32 %t465, 0
  store { i32, %"compiler/target:Target" } %t467, ptr %rv
  br label %ret
bb136:
  br label %bb137
bb137:
  %t468 = getelementptr %"compiler/target:Target", ptr %l7, i32 0, i32 9
  %t469 = load i1, ptr %t468, !tbaa !21
  br i1 %t469, label %bb138, label %bb139
bb138:
  %t471 = load i1, ptr %l2, !tbaa !21
  store i1 %t471, ptr %l189, !tbaa !21
  br label %bb140
bb139:
  store i1 false, ptr %l189, !tbaa !21
  br label %bb140
bb140:
  %t473 = load i1, ptr %l189, !tbaa !21
  br i1 %t473, label %bb141, label %bb142
bb141:
  store %olang.scope zeroinitializer, ptr %s17
  %t474 = load ptr, ptr %l5, !tbaa !29
  store ptr %t474, ptr %l191, !tbaa !29
  %t475 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t477 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTargetForeignMode(ptr %s17, ptr %v0, ptr %v4, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d48, i32 0, i32 1) }, { i64, ptr } %t475)
  store %"compiler/diagmsg:Msg" %t477, ptr %l193
  br label %bb143
bb142:
  br label %bb147
bb143:
  %t478 = load ptr, ptr %l191, !tbaa !29
  %t479 = load %"compiler/diagmsg:Msg", ptr %l193
  %t480 = call i32 @compiler_2ftarget_2erefuse(ptr %v4, ptr %v4, ptr %t478, %"compiler/diagmsg:Msg" %t479)
  store i32 %t480, ptr %l194
  %t481 = icmp ne i32 %t480, 0
  br i1 %t481, label %bb145, label %ok.482, !prof !99
ok.482:
  br label %bb144
bb144:
  br label %bb146
bb145:
  %t483 = load i32, ptr %l194, !tbaa !23
  %t484 = lshr i32 %t483, 16
  %t485 = and i32 %t483, 65535
  %t486 = icmp eq i32 %t484, 1
  %t487 = select i1 %t486, i32 1, i32 0
  %t488 = icmp eq i32 %t483, 0
  %t489 = shl i32 %t487, 16
  %t490 = or i32 %t489, %t485
  %t491 = select i1 %t488, i32 0, i32 %t490
  call void @__olang_scope_close(ptr %s17)
  call void @__olang_scope_close(ptr %s0)
  %t493 = insertvalue { i32, %"compiler/target:Target" } zeroinitializer, i32 %t491, 0
  store { i32, %"compiler/target:Target" } %t493, ptr %rv
  br label %ret
bb146:
  call void @__olang_scope_close(ptr %s17)
  br label %bb147
bb147:
  %t494 = getelementptr %"compiler/target:Target", ptr %l7, i32 0, i32 9
  %t495 = load i1, ptr %t494, !tbaa !21
  br i1 %t495, label %bb148, label %bb149
bb148:
  %t497 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t499 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v5, ptr %s0, { i64, ptr } %t497, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d49, i32 0, i32 1) })
  store i1 %t499, ptr %l199
  br label %bb150
bb149:
  store i1 false, ptr %l197, !tbaa !21
  br label %bb151
bb150:
  %t500 = load i1, ptr %l199, !tbaa !21
  %t501 = xor i1 %t500, true
  store i1 %t501, ptr %l197, !tbaa !21
  br label %bb151
bb151:
  %t503 = load i1, ptr %l197, !tbaa !21
  br i1 %t503, label %bb152, label %bb153
bb152:
  %t504 = load ptr, ptr %l5, !tbaa !29
  store ptr %t504, ptr %l201, !tbaa !29
  %t505 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t506 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t509 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTargetForeignMode(ptr %v5, ptr %v0, ptr %v4, { i64, ptr } %t505, { i64, ptr } %t506)
  store %"compiler/diagmsg:Msg" %t509, ptr %l204
  br label %bb154
bb153:
  br label %bb158
bb154:
  %t510 = load ptr, ptr %l201, !tbaa !29
  %t511 = load %"compiler/diagmsg:Msg", ptr %l204
  %t512 = call i32 @compiler_2ftarget_2erefuse(ptr %v4, ptr %v4, ptr %t510, %"compiler/diagmsg:Msg" %t511)
  store i32 %t512, ptr %l205
  %t513 = icmp ne i32 %t512, 0
  br i1 %t513, label %bb156, label %ok.514, !prof !99
ok.514:
  br label %bb155
bb155:
  br label %bb157
bb156:
  %t515 = load i32, ptr %l205, !tbaa !23
  %t516 = lshr i32 %t515, 16
  %t517 = and i32 %t515, 65535
  %t518 = icmp eq i32 %t516, 1
  %t519 = select i1 %t518, i32 1, i32 0
  %t520 = icmp eq i32 %t515, 0
  %t521 = shl i32 %t519, 16
  %t522 = or i32 %t521, %t517
  %t523 = select i1 %t520, i32 0, i32 %t522
  call void @__olang_scope_close(ptr %s0)
  %t525 = insertvalue { i32, %"compiler/target:Target" } zeroinitializer, i32 %t523, 0
  store { i32, %"compiler/target:Target" } %t525, ptr %rv
  br label %ret
bb157:
  br label %bb158
bb158:
  %t526 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t528 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t526, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d50, i32 0, i32 1) })
  store i1 %t528, ptr %l208
  br label %bb159
bb159:
  %t529 = load i1, ptr %l208, !tbaa !21
  br i1 %t529, label %bb160, label %bb161
bb160:
  store %olang.scope zeroinitializer, ptr %s19
  %t530 = load i1, ptr %l2, !tbaa !21
  %t532 = xor i1 %t530, true
  br i1 %t532, label %bb162, label %bb163
bb161:
  br label %bb174
bb162:
  store i1 true, ptr %l211, !tbaa !21
  br label %bb166
bb163:
  store ptr %l7, ptr %l212, !tbaa !29
  %t534 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t534, ptr %l213, !tbaa !27
  %t535 = call { i64, ptr } @compiler_2ftarget_2ecpuFlags(ptr %s19)
  store { i64, ptr } %t535, ptr %l214
  br label %bb164
bb164:
  %t536 = load { i64, ptr }, ptr %l214, !tbaa !27
  %t537 = extractvalue { i64, ptr } %t536, 0
  %t538 = extractvalue { i64, ptr } %t536, 1
  %t539 = mul i64 %t537, 1
  %t540 = call ptr @__olang_scope_alloc(ptr %s19, i64 %t539)
  call void @llvm.memcpy.p0.p0.i64(ptr %t540, ptr %t538, i64 %t539, i1 false)
  %t541 = insertvalue { i64, ptr } undef, i64 %t537, 0
  %t542 = insertvalue { i64, ptr } %t541, ptr %t540, 1
  %t543 = load { i64, ptr }, ptr %l213, !tbaa !27
  %t544 = extractvalue { i64, ptr } %t543, 1
  %t545 = call ptr @__olang_scope_of(ptr %t544, ptr null)
  %t546 = ptrtoint ptr %t545 to i64
  %t548 = inttoptr i64 %t546 to ptr
  %t549 = load ptr, ptr %l212, !tbaa !29
  %t550 = load { i64, ptr }, ptr %l213, !tbaa !27
  %t552 = call i1 @compiler_2ftarget_2ecompiler_2ftarget_3aTarget_2ewithoutClang(ptr %v6, ptr %t548, ptr %s19, ptr %t549, { i64, ptr } %t550, { i64, ptr } %t542)
  store i1 %t552, ptr %l217
  br label %bb165
bb165:
  %t553 = load i1, ptr %l217, !tbaa !21
  %t554 = xor i1 %t553, true
  store i1 %t554, ptr %l211, !tbaa !21
  br label %bb166
bb166:
  %t556 = load i1, ptr %l211, !tbaa !21
  br i1 %t556, label %bb167, label %bb168
bb167:
  %t557 = load ptr, ptr %l5, !tbaa !29
  store ptr %t557, ptr %l219, !tbaa !29
  %t558 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t560 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTargetNoClang(ptr %v0, ptr %v4, { i64, ptr } %t558)
  store %"compiler/diagmsg:Msg" %t560, ptr %l221
  br label %bb169
bb168:
  br label %bb173
bb169:
  %t561 = load ptr, ptr %l219, !tbaa !29
  %t562 = load %"compiler/diagmsg:Msg", ptr %l221
  %t563 = call i32 @compiler_2ftarget_2erefuse(ptr %v4, ptr %v4, ptr %t561, %"compiler/diagmsg:Msg" %t562)
  store i32 %t563, ptr %l222
  %t564 = icmp ne i32 %t563, 0
  br i1 %t564, label %bb171, label %ok.565, !prof !99
ok.565:
  br label %bb170
bb170:
  br label %bb172
bb171:
  %t566 = load i32, ptr %l222, !tbaa !23
  %t567 = lshr i32 %t566, 16
  %t568 = and i32 %t566, 65535
  %t569 = icmp eq i32 %t567, 1
  %t570 = select i1 %t569, i32 1, i32 0
  %t571 = icmp eq i32 %t566, 0
  %t572 = shl i32 %t570, 16
  %t573 = or i32 %t572, %t568
  %t574 = select i1 %t571, i32 0, i32 %t573
  call void @__olang_scope_close(ptr %s19)
  call void @__olang_scope_close(ptr %s0)
  %t576 = insertvalue { i32, %"compiler/target:Target" } zeroinitializer, i32 %t574, 0
  store { i32, %"compiler/target:Target" } %t576, ptr %rv
  br label %ret
bb172:
  br label %bb173
bb173:
  %t577 = load %"compiler/target:Target", ptr %l7
  call void @__olang_scope_close(ptr %s19)
  call void @__olang_scope_close(ptr %s0)
  %t579 = insertvalue { i32, %"compiler/target:Target" } zeroinitializer, %"compiler/target:Target" %t577, 1
  store { i32, %"compiler/target:Target" } %t579, ptr %rv
  br label %ret
bb174:
  %t580 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t580, ptr %l225
  br label %bb175
bb175:
  %t581 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l225
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t581, ptr %l14
  %t582 = load { i64, ptr }, ptr %l1, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %v1, ptr %l14, { i64, ptr } %t582)
  br label %bb176
bb176:
  %t585 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t585, ptr %l228, !tbaa !27
  %t586 = load { i64, ptr }, ptr %l228, !tbaa !27
  %t587 = extractvalue { i64, ptr } %t586, 1
  %t588 = call ptr @__olang_scope_of(ptr %t587, ptr null)
  %t589 = ptrtoint ptr %t588 to i64
  %t591 = inttoptr i64 %t589 to ptr
  %t592 = load { i64, ptr }, ptr %l228, !tbaa !27
  %t593 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %t591, ptr %s0, { i64, ptr } %t592, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d51, i32 0, i32 1) })
  store i1 %t593, ptr %l230
  br label %bb177
bb177:
  %t594 = load i1, ptr %l230, !tbaa !21
  %t595 = xor i1 %t594, true
  br i1 %t595, label %bb178, label %bb179
bb178:
  store ptr %l14, ptr %l232, !tbaa !29
  %t597 = ptrtoint ptr %s0 to i64
  store i64 %t597, ptr %l233, !tbaa !24
  %t598 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t598, label %bb180, label %bb181
bb179:
  br label %bb183
bb180:
  %t600 = call ptr @__olang_region_make(ptr %s0)
  %t601 = ptrtoint ptr %t600 to i64
  store i64 %t601, ptr %l233, !tbaa !24
  br label %bb181
bb181:
  %t602 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t603 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d52, i32 0, i32 1) }, 1
  %t604 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d52, i32 0, i32 1) }, 0
  %t606 = extractvalue { i64, ptr } %t602, 1
  %t607 = extractvalue { i64, ptr } %t602, 0
  %t608 = add i64 %t604, %t607
  %t609 = load i64, ptr %l233
  %t610 = inttoptr i64 %t609 to ptr
  %t611 = call ptr @__olang_scope_alloc(ptr %t610, i64 %t608)
  call void @olang_textcopy(ptr %t611, ptr %t603, i64 %t604)
  %t612 = getelementptr i8, ptr %t611, i64 %t604
  call void @olang_textcopy(ptr %t612, ptr %t606, i64 %t607)
  %t613 = insertvalue { i64, ptr } undef, i64 %t608, 0
  %t614 = insertvalue { i64, ptr } %t613, ptr %t611, 1
  %t616 = load i64, ptr %l233
  %t617 = inttoptr i64 %t616 to ptr
  %t618 = extractvalue { i64, ptr } %t614, 0
  %t619 = extractvalue { i64, ptr } %t614, 1
  %t620 = mul i64 %t618, 1
  %t621 = call ptr @__olang_scope_alloc(ptr %t617, i64 %t620)
  call void @llvm.memcpy.p0.p0.i64(ptr %t621, ptr %t619, i64 %t620, i1 false)
  %t622 = insertvalue { i64, ptr } undef, i64 %t618, 0
  %t623 = insertvalue { i64, ptr } %t622, ptr %t621, 1
  %t624 = load ptr, ptr %l232, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t624, { i64, ptr } %t623)
  br label %bb182
bb182:
  br label %bb183
bb183:
  %t626 = load i1, ptr %l10, !tbaa !21
  br i1 %t626, label %bb184, label %bb185
bb184:
  store ptr %l14, ptr %l239, !tbaa !29
  %t628 = ptrtoint ptr %s0 to i64
  store i64 %t628, ptr %l240, !tbaa !24
  %t629 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t629, label %bb186, label %bb187
bb185:
  br label %bb189
bb186:
  %t631 = call ptr @__olang_region_make(ptr %s0)
  %t632 = ptrtoint ptr %t631 to i64
  store i64 %t632, ptr %l240, !tbaa !24
  br label %bb187
bb187:
  %t633 = load i64, ptr %l11, !tbaa !24
  %t635 = getelementptr [2 x { i64, ptr }], ptr @G_2ecompiler_2ftarget_2eArchCpuFlags, i64 0, i64 %t633
  %t636 = load { i64, ptr }, ptr %t635, !tbaa !37
  %t637 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t639 = extractvalue { i64, ptr } %t636, 1
  %t640 = extractvalue { i64, ptr } %t636, 0
  %t642 = extractvalue { i64, ptr } %t637, 1
  %t643 = extractvalue { i64, ptr } %t637, 0
  %t644 = add i64 %t640, %t643
  %t645 = load i64, ptr %l240
  %t646 = inttoptr i64 %t645 to ptr
  %t647 = call ptr @__olang_scope_alloc(ptr %t646, i64 %t644)
  call void @olang_textcopy(ptr %t647, ptr %t639, i64 %t640)
  %t648 = getelementptr i8, ptr %t647, i64 %t640
  call void @olang_textcopy(ptr %t648, ptr %t642, i64 %t643)
  %t649 = insertvalue { i64, ptr } undef, i64 %t644, 0
  %t650 = insertvalue { i64, ptr } %t649, ptr %t647, 1
  %t652 = load i64, ptr %l240
  %t653 = inttoptr i64 %t652 to ptr
  %t654 = extractvalue { i64, ptr } %t650, 0
  %t655 = extractvalue { i64, ptr } %t650, 1
  %t656 = mul i64 %t654, 1
  %t657 = call ptr @__olang_scope_alloc(ptr %t653, i64 %t656)
  call void @llvm.memcpy.p0.p0.i64(ptr %t657, ptr %t655, i64 %t656, i1 false)
  %t658 = insertvalue { i64, ptr } undef, i64 %t654, 0
  %t659 = insertvalue { i64, ptr } %t658, ptr %t657, 1
  %t660 = load ptr, ptr %l239, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t660, { i64, ptr } %t659)
  br label %bb188
bb188:
  br label %bb189
bb189:
  store %olang.scope zeroinitializer, ptr %s25
  %t662 = insertvalue [7 x { i64, ptr }] undef, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d53, i32 0, i32 1) }, 0
  %t663 = insertvalue [7 x { i64, ptr }] %t662, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d54, i32 0, i32 1) }, 1
  %t664 = insertvalue [7 x { i64, ptr }] %t663, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d55, i32 0, i32 1) }, 2
  %t665 = insertvalue [7 x { i64, ptr }] %t664, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d56, i32 0, i32 1) }, 3
  %t666 = insertvalue [7 x { i64, ptr }] %t665, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d57, i32 0, i32 1) }, 4
  %t667 = insertvalue [7 x { i64, ptr }] %t666, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d58, i32 0, i32 1) }, 5
  %t668 = insertvalue [7 x { i64, ptr }] %t667, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d59, i32 0, i32 1) }, 6
  %t670 = call ptr @__olang_scope_alloc_a(ptr %s25, i64 112, i64 8)
  store [7 x { i64, ptr }] %t668, ptr %t670
  store ptr %t670, ptr %l15
  store i64 0, ptr %l16, !tbaa !24
  %t672 = load ptr, ptr %l15
  store i64 7, ptr %l17, !tbaa !24
  br label %bb190
bb190:
  %t675 = load i64, ptr %l16, !tbaa !24
  %t676 = load i64, ptr %l17, !tbaa !24
  %t679 = icmp slt i64 %t675, %t676
  %t681 = xor i1 %t679, true
  br i1 %t681, label %bb191, label %bb192
bb191:
  br label %bb196
bb192:
  br label %bb193
bb193:
  %t683 = load ptr, ptr %l15
  %t684 = load i64, ptr %l16, !tbaa !24
  %t687 = getelementptr [7 x { i64, ptr }], ptr %t683, i64 0, i64 %t684
  %t688 = load { i64, ptr }, ptr %t687, !tbaa !37
  %t691 = load ptr, ptr @__olang_prog_scope
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %t691, ptr %l14, { i64, ptr } %t688)
  br label %bb194
bb194:
  br label %bb195
bb195:
  %t694 = load i64, ptr %l16, !tbaa !24
  %t696 = add i64 %t694, 1
  store i64 %t696, ptr %l16, !tbaa !24
  br label %bb190
bb196:
  call void @__olang_scope_close(ptr %s25)
  %t699 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %s0, ptr %s0, ptr %l14)
  store { i64, ptr } %t699, ptr %l264
  br label %bb197
bb197:
  %t700 = load i1, ptr %l2, !tbaa !21
  %t702 = xor i1 %t700, true
  %t703 = load { i64, ptr }, ptr %l264, !tbaa !27
  %t705 = call { i32, %"std/os:Output" } @compiler_2ftarget_2eClangSays(ptr %s0, ptr %s0, ptr %v6, { i64, ptr } %t703, { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d60, i32 0, i32 1) }, i1 %t702)
  %t706 = extractvalue { i32, %"std/os:Output" } %t705, 1
  %t707 = extractvalue { i32, %"std/os:Output" } %t705, 0
  store i32 %t707, ptr %l268
  %t708 = icmp ne i32 %t707, 0
  br i1 %t708, label %bb199, label %ok.709, !prof !99
ok.709:
  store %"std/os:Output" %t706, ptr %l267
  br label %bb198
bb198:
  %t710 = load %"std/os:Output", ptr %l267
  store %"std/os:Output" %t710, ptr %l262
  br label %bb207
bb199:
  %t711 = load i32, ptr %l268, !tbaa !23
  %t712 = ashr i32 %t711, 16
  %t714 = icmp eq i32 %t712, 1
  store i1 %t714, ptr %l270, !tbaa !21
  %t715 = load i32, ptr %l268, !tbaa !23
  %t716 = ashr i32 %t715, 16
  %t718 = icmp eq i32 %t716, 1
  br i1 %t718, label %bb200, label %bb201
bb200:
  call void @__olang_errpay_pop()
  br label %bb201
bb201:
  br label %bb202
bb202:
  %t720 = load ptr, ptr %l5, !tbaa !29
  store ptr %t720, ptr %l273, !tbaa !29
  %t721 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t723 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTargetUnknown(ptr %v0, ptr %v4, { i64, ptr } %t721)
  store %"compiler/diagmsg:Msg" %t723, ptr %l275
  br label %bb203
bb203:
  %t724 = load ptr, ptr %l273, !tbaa !29
  %t725 = load %"compiler/diagmsg:Msg", ptr %l275
  %t726 = call i32 @compiler_2ftarget_2erefuse(ptr %v4, ptr %v4, ptr %t724, %"compiler/diagmsg:Msg" %t725)
  store i32 %t726, ptr %l276
  %t727 = icmp ne i32 %t726, 0
  br i1 %t727, label %bb205, label %ok.728, !prof !99
ok.728:
  br label %bb204
bb204:
  br label %bb206
bb205:
  %t729 = load i32, ptr %l276, !tbaa !23
  %t730 = lshr i32 %t729, 16
  %t731 = and i32 %t729, 65535
  %t732 = icmp eq i32 %t730, 1
  %t733 = select i1 %t732, i32 1, i32 0
  %t734 = icmp eq i32 %t729, 0
  %t735 = shl i32 %t733, 16
  %t736 = or i32 %t735, %t731
  %t737 = select i1 %t734, i32 0, i32 %t736
  call void @__olang_scope_close(ptr %s0)
  %t739 = insertvalue { i32, %"compiler/target:Target" } zeroinitializer, i32 %t737, 0
  store { i32, %"compiler/target:Target" } %t739, ptr %rv
  br label %ret
bb206:
  call void @__olang_check_failed(ptr @olang_loc_49a037191ff00c43_67aff78b8be17eff)
  unreachable
bb207:
  %t740 = call ptr @__olang_scope_alloc_a(ptr %v6, i64 40, i64 8)
  store ptr %t740, ptr %lp19
  %t741 = load %"std/os:Output", ptr %l262
  %t742 = load ptr, ptr %lp19
  store %"std/os:Output" %t741, ptr %t742
  %t743 = load ptr, ptr %lp19
  %t744 = getelementptr %"std/os:Output", ptr %t743, i32 0, i32 0
  %t745 = load i32, ptr %t744, !tbaa !23
  %t747 = icmp ne i32 %t745, 0
  br i1 %t747, label %bb208, label %bb209
bb208:
  %t749 = load ptr, ptr %l5, !tbaa !29
  store ptr %t749, ptr %l280, !tbaa !29
  %t750 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t752 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTargetUnknown(ptr %v0, ptr %v4, { i64, ptr } %t750)
  store %"compiler/diagmsg:Msg" %t752, ptr %l282
  br label %bb210
bb209:
  br label %bb214
bb210:
  %t753 = load ptr, ptr %l280, !tbaa !29
  %t754 = load %"compiler/diagmsg:Msg", ptr %l282
  %t755 = call i32 @compiler_2ftarget_2erefuse(ptr %v4, ptr %v4, ptr %t753, %"compiler/diagmsg:Msg" %t754)
  store i32 %t755, ptr %l283
  %t756 = icmp ne i32 %t755, 0
  br i1 %t756, label %bb212, label %ok.757, !prof !99
ok.757:
  br label %bb211
bb211:
  br label %bb213
bb212:
  %t758 = load i32, ptr %l283, !tbaa !23
  %t759 = lshr i32 %t758, 16
  %t760 = and i32 %t758, 65535
  %t761 = icmp eq i32 %t759, 1
  %t762 = select i1 %t761, i32 1, i32 0
  %t763 = icmp eq i32 %t758, 0
  %t764 = shl i32 %t762, 16
  %t765 = or i32 %t764, %t760
  %t766 = select i1 %t763, i32 0, i32 %t765
  call void @__olang_scope_close(ptr %s0)
  %t768 = insertvalue { i32, %"compiler/target:Target" } zeroinitializer, i32 %t766, 0
  store { i32, %"compiler/target:Target" } %t768, ptr %rv
  br label %ret
bb213:
  br label %bb214
bb214:
  %t769 = load ptr, ptr %lp19
  %t770 = getelementptr %"std/os:Output", ptr %t769, i32 0, i32 1
  %t771 = load { i64, ptr }, ptr %t770, !tbaa !27
  %t774 = call i32 @compiler_2ftarget_2ecompiler_2ftarget_3aTarget_2eFromProbe(ptr %v6, ptr %v6, ptr %l7, { i64, ptr } %t771)
  store i32 %t774, ptr %l287
  %t775 = icmp ne i32 %t774, 0
  br i1 %t775, label %bb216, label %ok.776, !prof !99
ok.776:
  br label %bb215
bb215:
  br label %bb231
bb216:
  %t777 = load i32, ptr %l287, !tbaa !23
  %t778 = icmp eq i32 %t777, 65536
  br i1 %t778, label %bb217, label %bb218
bb217:
  br label %bb219
bb218:
  %t780 = load i32, ptr %l287, !tbaa !23
  %t781 = icmp eq i32 %t780, 65537
  br i1 %t781, label %bb220, label %bb221
bb219:
  %t783 = load ptr, ptr %l5, !tbaa !29
  store ptr %t783, ptr %l291, !tbaa !29
  %t784 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t786 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTargetUnknown(ptr %v0, ptr %v4, { i64, ptr } %t784)
  store %"compiler/diagmsg:Msg" %t786, ptr %l293
  br label %bb223
bb220:
  br label %bb222
bb221:
  %t787 = load i32, ptr %l287, !tbaa !23
  %t788 = lshr i32 %t787, 16
  %t789 = and i32 %t787, 65535
  %t790 = icmp eq i32 %t788, 1
  %t791 = select i1 %t790, i32 0, i32 0
  %t792 = icmp eq i32 %t787, 0
  %t793 = shl i32 %t791, 16
  %t794 = or i32 %t793, %t789
  %t795 = select i1 %t792, i32 0, i32 %t794
  call void @__olang_scope_close(ptr %s0)
  %t797 = insertvalue { i32, %"compiler/target:Target" } zeroinitializer, i32 %t795, 0
  store { i32, %"compiler/target:Target" } %t797, ptr %rv
  br label %ret
bb222:
  %t798 = load ptr, ptr %l5, !tbaa !29
  store ptr %t798, ptr %l296, !tbaa !29
  %t799 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t801 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTargetUnsupported(ptr %v0, ptr %v4, { i64, ptr } %t799)
  store %"compiler/diagmsg:Msg" %t801, ptr %l298
  br label %bb227
bb223:
  %t802 = load ptr, ptr %l291, !tbaa !29
  %t803 = load %"compiler/diagmsg:Msg", ptr %l293
  %t804 = call i32 @compiler_2ftarget_2erefuse(ptr %v4, ptr %v4, ptr %t802, %"compiler/diagmsg:Msg" %t803)
  store i32 %t804, ptr %l294
  %t805 = icmp ne i32 %t804, 0
  br i1 %t805, label %bb225, label %ok.806, !prof !99
ok.806:
  br label %bb224
bb224:
  br label %bb226
bb225:
  %t807 = load i32, ptr %l294, !tbaa !23
  %t808 = lshr i32 %t807, 16
  %t809 = and i32 %t807, 65535
  %t810 = icmp eq i32 %t808, 1
  %t811 = select i1 %t810, i32 1, i32 0
  %t812 = icmp eq i32 %t807, 0
  %t813 = shl i32 %t811, 16
  %t814 = or i32 %t813, %t809
  %t815 = select i1 %t812, i32 0, i32 %t814
  call void @__olang_scope_close(ptr %s0)
  %t817 = insertvalue { i32, %"compiler/target:Target" } zeroinitializer, i32 %t815, 0
  store { i32, %"compiler/target:Target" } %t817, ptr %rv
  br label %ret
bb226:
  br label %bb231
bb227:
  %t818 = load ptr, ptr %l296, !tbaa !29
  %t819 = load %"compiler/diagmsg:Msg", ptr %l298
  %t820 = call i32 @compiler_2ftarget_2erefuse(ptr %v4, ptr %v4, ptr %t818, %"compiler/diagmsg:Msg" %t819)
  store i32 %t820, ptr %l299
  %t821 = icmp ne i32 %t820, 0
  br i1 %t821, label %bb229, label %ok.822, !prof !99
ok.822:
  br label %bb228
bb228:
  br label %bb230
bb229:
  %t823 = load i32, ptr %l299, !tbaa !23
  %t824 = lshr i32 %t823, 16
  %t825 = and i32 %t823, 65535
  %t826 = icmp eq i32 %t824, 1
  %t827 = select i1 %t826, i32 1, i32 0
  %t828 = icmp eq i32 %t823, 0
  %t829 = shl i32 %t827, 16
  %t830 = or i32 %t829, %t825
  %t831 = select i1 %t828, i32 0, i32 %t830
  call void @__olang_scope_close(ptr %s0)
  %t833 = insertvalue { i32, %"compiler/target:Target" } zeroinitializer, i32 %t831, 0
  store { i32, %"compiler/target:Target" } %t833, ptr %rv
  br label %ret
bb230:
  br label %bb231
bb231:
  %t834 = getelementptr %"compiler/target:Target", ptr %l7, i32 0, i32 9
  %t835 = load i1, ptr %t834, !tbaa !21
  br i1 %t835, label %bb232, label %bb233
bb232:
  %t837 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t838 = getelementptr %"compiler/target:Target", ptr %l7, i32 0, i32 1
  %t839 = load { i64, ptr }, ptr %t838, !tbaa !27
  %t842 = call i1 @compiler_2ftarget_2ecanCompileBf16(ptr %v1, ptr %v6, { i64, ptr } %t837, { i64, ptr } %t839)
  store i1 %t842, ptr %l305
  br label %bb234
bb233:
  store i1 false, ptr %l302, !tbaa !21
  br label %bb235
bb234:
  %t843 = load i1, ptr %l305, !tbaa !21
  %t844 = xor i1 %t843, true
  store i1 %t844, ptr %l302, !tbaa !21
  br label %bb235
bb235:
  %t846 = load i1, ptr %l302, !tbaa !21
  br i1 %t846, label %bb236, label %bb237
bb236:
  %t847 = load ptr, ptr %l5, !tbaa !29
  store ptr %t847, ptr %l307, !tbaa !29
  %t848 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t850 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTargetNoBackend(ptr %v0, ptr %v4, { i64, ptr } %t848)
  store %"compiler/diagmsg:Msg" %t850, ptr %l309
  br label %bb238
bb237:
  br label %bb242
bb238:
  %t851 = load ptr, ptr %l307, !tbaa !29
  %t852 = load %"compiler/diagmsg:Msg", ptr %l309
  %t853 = call i32 @compiler_2ftarget_2erefuse(ptr %v4, ptr %v4, ptr %t851, %"compiler/diagmsg:Msg" %t852)
  store i32 %t853, ptr %l310
  %t854 = icmp ne i32 %t853, 0
  br i1 %t854, label %bb240, label %ok.855, !prof !99
ok.855:
  br label %bb239
bb239:
  br label %bb241
bb240:
  %t856 = load i32, ptr %l310, !tbaa !23
  %t857 = lshr i32 %t856, 16
  %t858 = and i32 %t856, 65535
  %t859 = icmp eq i32 %t857, 1
  %t860 = select i1 %t859, i32 1, i32 0
  %t861 = icmp eq i32 %t856, 0
  %t862 = shl i32 %t860, 16
  %t863 = or i32 %t862, %t858
  %t864 = select i1 %t861, i32 0, i32 %t863
  call void @__olang_scope_close(ptr %s0)
  %t866 = insertvalue { i32, %"compiler/target:Target" } zeroinitializer, i32 %t864, 0
  store { i32, %"compiler/target:Target" } %t866, ptr %rv
  br label %ret
bb241:
  br label %bb242
bb242:
  %t867 = ptrtoint ptr %v6 to i64
  store i64 %t867, ptr %l312, !tbaa !24
  %t868 = load i1, ptr @olang_2esole_2ecompiler_2ftarget_3aTarget_2e6
  br i1 %t868, label %bb243, label %bb244
bb243:
  %t870 = call ptr @__olang_region_make(ptr %v6)
  %t871 = ptrtoint ptr %t870 to i64
  store i64 %t871, ptr %l312, !tbaa !24
  br label %bb244
bb244:
  %t872 = load i64, ptr %l11, !tbaa !24
  %t874 = getelementptr [2 x { i64, ptr }], ptr @G_2ecompiler_2ftarget_2eArchCpuFlags, i64 0, i64 %t872
  %t875 = load { i64, ptr }, ptr %t874, !tbaa !37
  %t876 = getelementptr %"compiler/target:Target", ptr %l7, i32 0, i32 4
  %t877 = load { i64, ptr }, ptr %t876, !tbaa !27
  %t879 = extractvalue { i64, ptr } %t875, 1
  %t880 = extractvalue { i64, ptr } %t875, 0
  %t882 = extractvalue { i64, ptr } %t877, 1
  %t883 = extractvalue { i64, ptr } %t877, 0
  %t884 = add i64 %t880, %t883
  %t885 = load i64, ptr %l312
  %t886 = inttoptr i64 %t885 to ptr
  %t887 = call ptr @__olang_scope_alloc(ptr %t886, i64 %t884)
  call void @olang_textcopy(ptr %t887, ptr %t879, i64 %t880)
  %t888 = getelementptr i8, ptr %t887, i64 %t880
  call void @olang_textcopy(ptr %t888, ptr %t882, i64 %t883)
  %t889 = insertvalue { i64, ptr } undef, i64 %t884, 0
  %t890 = insertvalue { i64, ptr } %t889, ptr %t887, 1
  %t892 = load i64, ptr %l312
  %t893 = inttoptr i64 %t892 to ptr
  %t894 = extractvalue { i64, ptr } %t890, 0
  %t895 = extractvalue { i64, ptr } %t890, 1
  %t896 = mul i64 %t894, 1
  %t897 = call ptr @__olang_scope_alloc(ptr %t893, i64 %t896)
  call void @llvm.memcpy.p0.p0.i64(ptr %t897, ptr %t895, i64 %t896, i1 false)
  %t898 = insertvalue { i64, ptr } undef, i64 %t894, 0
  %t899 = insertvalue { i64, ptr } %t898, ptr %t897, 1
  %t900 = getelementptr %"compiler/target:Target", ptr %l7, i32 0, i32 6
  %t901 = load { i64, ptr }, ptr %t900, !tbaa !27
  store { i64, ptr } %t901, ptr %l319, !tbaa !27
  %t903 = getelementptr %"compiler/target:Target", ptr %l7, i32 0, i32 6
  store { i64, ptr } %t899, ptr %t903, !tbaa !27
  %t904 = load i1, ptr @olang_2esole_2ecompiler_2ftarget_3aTarget_2e6
  br i1 %t904, label %bb245, label %bb246
bb245:
  %t906 = load { i64, ptr }, ptr %l319
  %t907 = extractvalue { i64, ptr } %t906, 1
  call void @__olang_region_release(ptr %t907)
  store { i64, ptr } zeroinitializer, ptr %l319
  br label %bb246
bb246:
  %t908 = load %"compiler/target:Target", ptr %l7
  call void @__olang_scope_close(ptr %s0)
  %t910 = insertvalue { i32, %"compiler/target:Target" } zeroinitializer, %"compiler/target:Target" %t908, 1
  store { i32, %"compiler/target:Target" } %t910, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"compiler/target:Target" }, ptr %rv
  ret { i32, %"compiler/target:Target" } %rr
}

define dso_local { i64, ptr } @compiler_2ftarget_2eWhereIs(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call { i64, ptr } @compiler_2ftarget_2ewhereIs(ptr %v0, ptr %v1, { i64, ptr } %a0)
  store { i64, ptr } %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t4, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2ftarget_2eX86Level(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l23 = alloca { i64, ptr }
  %l30 = alloca { i64, ptr }
  %l39 = alloca i1
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  store i64 1, ptr %l1, !tbaa !24
  store ptr @G_2ecompiler_2ftarget_2eLevelFlags, ptr %l2
  store i64 0, ptr %l3, !tbaa !24
  %t2 = load ptr, ptr %l2
  store i64 3, ptr %l4, !tbaa !24
  br label %bb1
bb1:
  %t5 = load i64, ptr %l3, !tbaa !24
  %t6 = load i64, ptr %l4, !tbaa !24
  %t9 = icmp slt i64 %t5, %t6
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb2, label %bb3
bb2:
  br label %bb17
bb3:
  br label %bb4
bb4:
  %t13 = load i64, ptr %l3, !tbaa !24
  store i64 %t13, ptr %l5, !tbaa !24
  %t15 = load ptr, ptr %l2
  %t16 = load i64, ptr %l3, !tbaa !24
  %t19 = getelementptr [3 x { i64, ptr }], ptr %t15, i64 0, i64 %t16
  %t20 = load { i64, ptr }, ptr %t19, !tbaa !37
  store %olang.scope zeroinitializer, ptr %s3
  %t23 = load ptr, ptr @__olang_prog_scope
  %t25 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %t23, ptr %s3, ptr %s3, { i64, ptr } %t20, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d61, i32 0, i32 1) })
  store { i64, ptr } %t25, ptr %l23
  br label %bb5
bb5:
  %t26 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t26, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t27 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t27, 0
  store i64 %t29, ptr %l9, !tbaa !24
  br label %bb6
bb6:
  store %olang.scope zeroinitializer, ptr %s4
  %t31 = load i64, ptr %l8, !tbaa !24
  %t32 = load i64, ptr %l9, !tbaa !24
  %t35 = icmp slt i64 %t31, %t32
  %t37 = xor i1 %t35, true
  br i1 %t37, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s4)
  br label %bb15
bb8:
  br label %bb9
bb9:
  %t39 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t39, ptr %l30, !tbaa !27
  %t40 = load i64, ptr %l8, !tbaa !24
  %t42 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !27
  %t44 = getelementptr { i64, ptr }, ptr %t43, i64 %t40
  %t45 = load { i64, ptr }, ptr %t44, !tbaa !37
  %t50 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d62, i32 0, i32 1) }, 1
  %t51 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d62, i32 0, i32 1) }, 0
  %t53 = extractvalue { i64, ptr } %t45, 1
  %t54 = extractvalue { i64, ptr } %t45, 0
  %t55 = add i64 %t51, %t54
  %t56 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d63, i32 0, i32 1) }, 1
  %t57 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d63, i32 0, i32 1) }, 0
  %t58 = add i64 %t55, %t57
  %t59 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t58)
  call void @olang_textcopy(ptr %t59, ptr %t50, i64 %t51)
  %t60 = getelementptr i8, ptr %t59, i64 %t51
  call void @olang_textcopy(ptr %t60, ptr %t53, i64 %t54)
  %t61 = getelementptr i8, ptr %t60, i64 %t54
  call void @olang_textcopy(ptr %t61, ptr %t56, i64 %t57)
  %t62 = insertvalue { i64, ptr } undef, i64 %t58, 0
  %t63 = insertvalue { i64, ptr } %t62, ptr %t59, 1
  %t66 = extractvalue { i64, ptr } %t63, 0
  %t67 = extractvalue { i64, ptr } %t63, 1
  %t68 = mul i64 %t66, 1
  %t69 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t68)
  call void @llvm.memcpy.p0.p0.i64(ptr %t69, ptr %t67, i64 %t68, i1 false)
  %t70 = insertvalue { i64, ptr } undef, i64 %t66, 0
  %t71 = insertvalue { i64, ptr } %t70, ptr %t69, 1
  %t74 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %s4, { i64, ptr } %a0, { i64, ptr } %t71)
  store i1 %t74, ptr %l39
  br label %bb10
bb10:
  %t75 = load i1, ptr %l39, !tbaa !21
  %t76 = xor i1 %t75, true
  br i1 %t76, label %bb11, label %bb12
bb11:
  %t78 = load i64, ptr %l1, !tbaa !24
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s3)
  store i64 %t78, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s4)
  br label %bb14
bb14:
  %t80 = load i64, ptr %l8, !tbaa !24
  %t82 = add i64 %t80, 1
  store i64 %t82, ptr %l8, !tbaa !24
  br label %bb6
bb15:
  call void @__olang_scope_close(ptr %s3)
  %t84 = load i64, ptr %l5, !tbaa !24
  %t86 = add i64 %t84, 2
  store i64 %t86, ptr %l1, !tbaa !24
  br label %bb16
bb16:
  %t88 = load i64, ptr %l3, !tbaa !24
  %t90 = add i64 %t88, 1
  store i64 %t90, ptr %l3, !tbaa !24
  br label %bb1
bb17:
  %t92 = load i64, ptr %l1, !tbaa !24
  store i64 %t92, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2ftarget_2earchIndex(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l19 = alloca i1
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  store ptr @G_2ecompiler_2ftarget_2eArchs, ptr %l1
  store i64 0, ptr %l2, !tbaa !24
  %t2 = load ptr, ptr %l1
  store i64 2, ptr %l3, !tbaa !24
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
  %t13 = load i64, ptr %l2, !tbaa !24
  store i64 %t13, ptr %l4, !tbaa !24
  %t15 = load ptr, ptr %l1
  %t16 = load i64, ptr %l2, !tbaa !24
  %t19 = getelementptr [2 x { i64, ptr }], ptr %t15, i64 0, i64 %t16
  %t20 = load { i64, ptr }, ptr %t19, !tbaa !37
  %t24 = load ptr, ptr @__olang_prog_scope
  %t27 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %t24, ptr %v0, { i64, ptr } %t20, { i64, ptr } %a0)
  store i1 %t27, ptr %l19
  br label %bb5
bb5:
  %t28 = load i1, ptr %l19, !tbaa !21
  br i1 %t28, label %bb6, label %bb7
bb6:
  %t29 = load i64, ptr %l4, !tbaa !24
  store i64 %t29, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t31 = load i64, ptr %l2, !tbaa !24
  %t33 = add i64 %t31, 1
  store i64 %t33, ptr %l2, !tbaa !24
  br label %bb1
bb10:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i32, { i64, ptr } } @compiler_2ftarget_2eattrValue(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d64, i32 0, i32 1) }, 1
  %t4 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d64, i32 0, i32 1) }, 0
  %t6 = extractvalue { i64, ptr } %a1, 1
  %t7 = extractvalue { i64, ptr } %a1, 0
  %t8 = add i64 %t4, %t7
  %t9 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d65, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d65, i32 0, i32 1) }, 0
  %t11 = add i64 %t8, %t10
  %t12 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t11)
  call void @olang_textcopy(ptr %t12, ptr %t3, i64 %t4)
  %t13 = getelementptr i8, ptr %t12, i64 %t4
  call void @olang_textcopy(ptr %t13, ptr %t6, i64 %t7)
  %t14 = getelementptr i8, ptr %t13, i64 %t7
  call void @olang_textcopy(ptr %t14, ptr %t9, i64 %t10)
  %t15 = insertvalue { i64, ptr } undef, i64 %t11, 0
  %t16 = insertvalue { i64, ptr } %t15, ptr %t12, 1
  %t18 = extractvalue { i64, ptr } %t16, 0
  %t19 = extractvalue { i64, ptr } %t16, 1
  %t20 = mul i64 %t18, 1
  %t21 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t20)
  call void @llvm.memcpy.p0.p0.i64(ptr %t21, ptr %t19, i64 %t20, i1 false)
  %t22 = insertvalue { i64, ptr } undef, i64 %t18, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t21, 1
  %t26 = call { i32, { i64, ptr } } @compiler_2ftarget_2efield(ptr %v0, ptr %s0, ptr %v2, { i64, ptr } %a0, { i64, ptr } %t23)
  %t27 = extractvalue { i32, { i64, ptr } } %t26, 1
  %t28 = extractvalue { i32, { i64, ptr } } %t26, 0
  store i32 %t28, ptr %l8
  %t29 = icmp ne i32 %t28, 0
  br i1 %t29, label %bb2, label %ok.30, !prof !99
ok.30:
  store { i64, ptr } %t27, ptr %l7
  br label %bb1
bb1:
  %t31 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t31, ptr %l2, !tbaa !27
  br label %bb3
bb2:
  %t32 = load i32, ptr %l8, !tbaa !23
  %t33 = lshr i32 %t32, 16
  %t34 = and i32 %t32, 65535
  %t35 = icmp eq i32 %t33, 1
  %t36 = select i1 %t35, i32 1, i32 0
  %t37 = icmp eq i32 %t32, 0
  %t38 = shl i32 %t36, 16
  %t39 = or i32 %t38, %t34
  %t40 = select i1 %t37, i32 0, i32 %t39
  call void @__olang_scope_close(ptr %s0)
  %t42 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t40, 0
  store { i32, { i64, ptr } } %t42, ptr %rv
  br label %ret
bb3:
  call void @__olang_scope_close(ptr %s0)
  %t43 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t44 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t43, 1
  store { i32, { i64, ptr } } %t44, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i64, ptr } @compiler_2ftarget_2ecField(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca %"std/prelude/text:StringBuilder"
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca %"std/prelude/text:StringBuilder"
  %l14 = alloca i64
  %l17 = alloca i64
  %l35 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
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
  store %"std/prelude/text:StringBuilder" %t2, ptr %l1
  store i64 0, ptr %l2, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  store i64 %t5, ptr %l3, !tbaa !24
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
  br label %bb17
bb10:
  br label %bb11
bb11:
  %t43 = load i64, ptr %l2, !tbaa !24
  %t44 = load i64, ptr %l6, !tbaa !24
  %t45 = load i64, ptr %l4, !tbaa !24
  %t48 = mul i64 %t44, %t45
  %t51 = add i64 %t43, %t48
  store i64 %t51, ptr %l7, !tbaa !24
  %t53 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t53, ptr %l35, !tbaa !27
  %t54 = load i64, ptr %l7, !tbaa !24
  %t56 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !27
  %t58 = getelementptr i8, ptr %t57, i64 %t54
  %t59 = load i8, ptr %t58, !tbaa !32
  %t61 = icmp eq i8 %t59, 0
  br i1 %t61, label %bb12, label %bb13
bb12:
  br label %bb17
bb13:
  br label %bb14
bb14:
  %t63 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t63, ptr %l40, !tbaa !27
  %t64 = load i64, ptr %l7, !tbaa !24
  %t66 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !27
  %t68 = getelementptr i8, ptr %t67, i64 %t64
  %t69 = load i8, ptr %t68, !tbaa !32
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 %t69)
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t73 = load i64, ptr %l6, !tbaa !24
  %t75 = add i64 %t73, 1
  store i64 %t75, ptr %l6, !tbaa !24
  br label %bb8
bb17:
  %t78 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l1)
  store { i64, ptr } %t78, ptr %l47
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s0)
  %t79 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t79, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2ftarget_2ecanCompileBf16(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca [9 x { i64, ptr }]
  %l4 = alloca %"std/os:Output"
  %l6 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l16 = alloca [9 x { i64, ptr }]
  %l17 = alloca %"std/os:Output"
  %l21 = alloca %"std/os:Output"
  %l22 = alloca i32
  %l24 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = extractvalue { i64, ptr } { i64 88, ptr getelementptr inbounds (<{ i64, [88 x i8] }>, ptr @.d66, i32 0, i32 1) }, 1
  %t2 = extractvalue { i64, ptr } { i64 88, ptr getelementptr inbounds (<{ i64, [88 x i8] }>, ptr @.d66, i32 0, i32 1) }, 0
  %t3 = extractvalue { i64, ptr } { i64 49, ptr getelementptr inbounds (<{ i64, [49 x i8] }>, ptr @.d67, i32 0, i32 1) }, 1
  %t4 = extractvalue { i64, ptr } { i64 49, ptr getelementptr inbounds (<{ i64, [49 x i8] }>, ptr @.d67, i32 0, i32 1) }, 0
  %t5 = add i64 %t2, %t4
  %t6 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t5)
  call void @olang_textcopy(ptr %t6, ptr %t1, i64 %t2)
  %t7 = getelementptr i8, ptr %t6, i64 %t2
  call void @olang_textcopy(ptr %t7, ptr %t3, i64 %t4)
  %t8 = insertvalue { i64, ptr } undef, i64 %t5, 0
  %t9 = insertvalue { i64, ptr } %t8, ptr %t6, 1
  store { i64, ptr } %t9, ptr %l2, !tbaa !27
  %t11 = ptrtoint ptr %s0 to i64
  store i64 %t11, ptr %l6, !tbaa !24
  %t12 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_209_3e_2e_2d1
  br i1 %t12, label %bb1, label %bb2
bb1:
  %t14 = call ptr @__olang_region_make(ptr %s0)
  %t15 = ptrtoint ptr %t14 to i64
  store i64 %t15, ptr %l6, !tbaa !24
  br label %bb2
bb2:
  %t18 = extractvalue { i64, ptr } %a0, 1
  %t19 = extractvalue { i64, ptr } %a0, 0
  %t20 = load i64, ptr %l6
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t19)
  call void @olang_textcopy(ptr %t22, ptr %t18, i64 %t19)
  %t23 = insertvalue { i64, ptr } undef, i64 %t19, 0
  %t24 = insertvalue { i64, ptr } %t23, ptr %t22, 1
  %t26 = load i64, ptr %l6
  %t27 = inttoptr i64 %t26 to ptr
  %t28 = extractvalue { i64, ptr } %t24, 0
  %t29 = extractvalue { i64, ptr } %t24, 1
  %t30 = mul i64 %t28, 1
  %t31 = call ptr @__olang_scope_alloc(ptr %t27, i64 %t30)
  call void @llvm.memcpy.p0.p0.i64(ptr %t31, ptr %t29, i64 %t30, i1 false)
  %t32 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t33 = insertvalue { i64, ptr } %t32, ptr %t31, 1
  store { i64, ptr } %t33, ptr %l10, !tbaa !27
  %t34 = ptrtoint ptr %s0 to i64
  store i64 %t34, ptr %l11, !tbaa !24
  %t35 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_209_3e_2e_2d1
  br i1 %t35, label %bb3, label %bb4
bb3:
  %t37 = call ptr @__olang_region_make(ptr %s0)
  %t38 = ptrtoint ptr %t37 to i64
  store i64 %t38, ptr %l11, !tbaa !24
  br label %bb4
bb4:
  %t40 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d68, i32 0, i32 1) }, 1
  %t41 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d68, i32 0, i32 1) }, 0
  %t43 = extractvalue { i64, ptr } %a1, 1
  %t44 = extractvalue { i64, ptr } %a1, 0
  %t45 = add i64 %t41, %t44
  %t46 = load i64, ptr %l11
  %t47 = inttoptr i64 %t46 to ptr
  %t48 = call ptr @__olang_scope_alloc(ptr %t47, i64 %t45)
  call void @olang_textcopy(ptr %t48, ptr %t40, i64 %t41)
  %t49 = getelementptr i8, ptr %t48, i64 %t41
  call void @olang_textcopy(ptr %t49, ptr %t43, i64 %t44)
  %t50 = insertvalue { i64, ptr } undef, i64 %t45, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr %t48, 1
  %t53 = load i64, ptr %l11
  %t54 = inttoptr i64 %t53 to ptr
  %t55 = extractvalue { i64, ptr } %t51, 0
  %t56 = extractvalue { i64, ptr } %t51, 1
  %t57 = mul i64 %t55, 1
  %t58 = call ptr @__olang_scope_alloc(ptr %t54, i64 %t57)
  call void @llvm.memcpy.p0.p0.i64(ptr %t58, ptr %t56, i64 %t57, i1 false)
  %t59 = insertvalue { i64, ptr } undef, i64 %t55, 0
  %t60 = insertvalue { i64, ptr } %t59, ptr %t58, 1
  %t61 = getelementptr [9 x { i64, ptr }], ptr %l16, i64 0, i64 0
  %t62 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t62, ptr %t61, !tbaa !37
  %t63 = getelementptr [9 x { i64, ptr }], ptr %l16, i64 0, i64 1
  store { i64, ptr } %t60, ptr %t63, !tbaa !37
  %t65 = getelementptr [9 x { i64, ptr }], ptr %l16, i64 0, i64 2
  store { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d69, i32 0, i32 1) }, ptr %t65, !tbaa !37
  %t66 = getelementptr [9 x { i64, ptr }], ptr %l16, i64 0, i64 3
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d70, i32 0, i32 1) }, ptr %t66, !tbaa !37
  %t67 = getelementptr [9 x { i64, ptr }], ptr %l16, i64 0, i64 4
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d71, i32 0, i32 1) }, ptr %t67, !tbaa !37
  %t68 = getelementptr [9 x { i64, ptr }], ptr %l16, i64 0, i64 5
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d72, i32 0, i32 1) }, ptr %t68, !tbaa !37
  %t69 = getelementptr [9 x { i64, ptr }], ptr %l16, i64 0, i64 6
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d73, i32 0, i32 1) }, ptr %t69, !tbaa !37
  %t70 = getelementptr [9 x { i64, ptr }], ptr %l16, i64 0, i64 7
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d74, i32 0, i32 1) }, ptr %t70, !tbaa !37
  %t71 = getelementptr [9 x { i64, ptr }], ptr %l16, i64 0, i64 8
  store { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d75, i32 0, i32 1) }, ptr %t71, !tbaa !37
  call void @llvm.memmove.p0.p0.i64(ptr %l3, ptr %l16, i64 144, i1 false)
  %t73 = insertvalue { i64, ptr } undef, i64 9, 0
  %t74 = insertvalue { i64, ptr } %t73, ptr %l3, 1
  %t75 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t78 = call { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %s0, ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t74, { i64, ptr } %t75, i1 true, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d6, i32 0, i32 1) })
  %t79 = extractvalue { i32, %"std/os:Output" } %t78, 1
  %t80 = extractvalue { i32, %"std/os:Output" } %t78, 0
  store i32 %t80, ptr %l22
  %t81 = icmp ne i32 %t80, 0
  br i1 %t81, label %bb6, label %ok.82, !prof !99
ok.82:
  store %"std/os:Output" %t79, ptr %l21
  br label %bb5
bb5:
  %t83 = load %"std/os:Output", ptr %l21
  store %"std/os:Output" %t83, ptr %l17
  br label %bb10
bb6:
  %t84 = load i32, ptr %l22, !tbaa !23
  %t85 = ashr i32 %t84, 16
  %t87 = icmp eq i32 %t85, 1
  store i1 %t87, ptr %l24, !tbaa !21
  %t88 = load i32, ptr %l22, !tbaa !23
  %t89 = ashr i32 %t88, 16
  %t91 = icmp eq i32 %t89, 1
  br i1 %t91, label %bb7, label %bb8
bb7:
  call void @__olang_errpay_pop()
  br label %bb8
bb8:
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb10:
  %t94 = load %"std/os:Output", ptr %l17
  store %"std/os:Output" %t94, ptr %l4
  %t95 = getelementptr %"std/os:Output", ptr %l4, i32 0, i32 0
  %t96 = load i32, ptr %t95, !tbaa !23
  %t98 = icmp eq i32 %t96, 0
  call void @__olang_scope_close(ptr %s0)
  store i1 %t98, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2ftarget_2ecompiler_2ftarget_3aTarget_2eFromProbe(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l17 = alloca i32
  %l19 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l22 = alloca i32
  %l24 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i32
  %l29 = alloca i64
  %l30 = alloca { i64, ptr }
  %l31 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i64
  %l41 = alloca i64
  %l42 = alloca i32
  %l47 = alloca { i64, ptr }
  %l48 = alloca i64
  %l51 = alloca i64
  %l52 = alloca i64
  %l60 = alloca i1
  %l61 = alloca { i64, ptr }
  %l64 = alloca i1
  %l67 = alloca { i64, ptr }
  %l68 = alloca i1
  %l69 = alloca i1
  %l72 = alloca { i64, ptr }
  %l73 = alloca i1
  %l75 = alloca ptr
  %l77 = alloca { i64, ptr }
  %l79 = alloca ptr
  %l80 = alloca i64
  %l82 = alloca { i64, ptr }
  %l84 = alloca { i64, ptr }
  %l85 = alloca i32
  %l89 = alloca { i64, ptr }
  %l91 = alloca { i64, ptr }
  %l93 = alloca { i64, ptr }
  %l94 = alloca i32
  %l95 = alloca { i64, ptr }
  %l98 = alloca i1
  %l99 = alloca ptr
  %l101 = alloca i1
  %l102 = alloca i64
  %l104 = alloca ptr
  %l106 = alloca i1
  %l107 = alloca i64
  %l109 = alloca i1
  %l110 = alloca i64
  %l111 = alloca ptr
  %l113 = alloca i1
  %l114 = alloca i1
  %l116 = alloca i1
  %l117 = alloca { i64, ptr }
  %l119 = alloca { i64, ptr }
  %l120 = alloca i32
  %l122 = alloca i1
  %l124 = alloca { i64, ptr }
  %l128 = alloca i64
  %l130 = alloca i64
  %l131 = alloca i32
  %l134 = alloca i64
  %l135 = alloca { i64, ptr }
  %l136 = alloca i64
  %l139 = alloca i64
  %l140 = alloca i64
  %l146 = alloca i64
  %l147 = alloca i32
  %l150 = alloca { i64, ptr }
  %l151 = alloca i64
  %l155 = alloca i64
  %l156 = alloca i64
  %l166 = alloca i64
  %l169 = alloca ptr
  %l170 = alloca i64
  %l180 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = call { i32, { i64, ptr } } @compiler_2ftarget_2efield(ptr %v1, ptr %s0, ptr %v1, { i64, ptr } %t1, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d76, i32 0, i32 1) })
  %t4 = extractvalue { i32, { i64, ptr } } %t3, 1
  %t5 = extractvalue { i32, { i64, ptr } } %t3, 0
  store i32 %t5, ptr %l17
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store { i64, ptr } %t4, ptr %l16
  br label %bb1
bb1:
  %t8 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t8, ptr %l14, !tbaa !27
  br label %bb4
bb2:
  br label %bb3
bb3:
  call void @__olang_scope_close(ptr %s0)
  store i32 65536, ptr %rv
  br label %ret
bb4:
  %t10 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t10, ptr %l2, !tbaa !27
  %t11 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t13 = call { i32, { i64, ptr } } @compiler_2ftarget_2efield(ptr %v1, ptr %s0, ptr %v1, { i64, ptr } %t11, { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d77, i32 0, i32 1) })
  %t14 = extractvalue { i32, { i64, ptr } } %t13, 1
  %t15 = extractvalue { i32, { i64, ptr } } %t13, 0
  store i32 %t15, ptr %l22
  %t16 = icmp ne i32 %t15, 0
  br i1 %t16, label %bb6, label %ok.17, !prof !99
ok.17:
  store { i64, ptr } %t14, ptr %l21
  br label %bb5
bb5:
  %t18 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t18, ptr %l19, !tbaa !27
  br label %bb8
bb6:
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s0)
  store i32 65536, ptr %rv
  br label %ret
bb8:
  %t20 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t20, ptr %l3, !tbaa !27
  %t21 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t23 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v1, ptr %s0, { i64, ptr } %t21, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d78, i32 0, i32 1) })
  %t24 = extractvalue { i32, i64 } %t23, 1
  %t25 = extractvalue { i32, i64 } %t23, 0
  store i32 %t25, ptr %l27
  %t26 = icmp ne i32 %t25, 0
  br i1 %t26, label %bb10, label %ok.27, !prof !99
ok.27:
  store i64 %t24, ptr %l26
  br label %bb9
bb9:
  %t28 = load i64, ptr %l26, !tbaa !24
  store i64 %t28, ptr %l24, !tbaa !24
  br label %bb12
bb10:
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s0)
  store i32 65536, ptr %rv
  br label %ret
bb12:
  %t30 = load i64, ptr %l24, !tbaa !24
  store i64 %t30, ptr %l4, !tbaa !24
  %t31 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t31, ptr %l30, !tbaa !27
  %t32 = load i64, ptr %l4, !tbaa !24
  store i64 %t32, ptr %l31, !tbaa !24
  %t33 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t36 = extractvalue { i64, ptr } %t33, 0
  store i64 %t36, ptr %l34, !tbaa !24
  %t37 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t38 = extractvalue { i64, ptr } %t37, 0
  store i64 %t38, ptr %l35, !tbaa !24
  %t39 = load i64, ptr %l31, !tbaa !24
  %t40 = icmp sge i64 %t39, 0
  br i1 %t40, label %bb13, label %bb14
bb13:
  %t42 = load i64, ptr %l31, !tbaa !24
  %t43 = load i64, ptr %l34, !tbaa !24
  %t44 = icmp sle i64 %t42, %t43
  br i1 %t44, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_2b3d593c994025a_f25bcfc8e3895e8e)
  unreachable
bb15:
  %t46 = load i64, ptr %l34, !tbaa !24
  %t47 = load i64, ptr %l35, !tbaa !24
  %t48 = icmp sle i64 %t46, %t47
  br i1 %t48, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_2b3d593c994025a_f25bcfc8e3895e8e)
  unreachable
bb17:
  %t50 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !27
  %t52 = load i64, ptr %l31, !tbaa !24
  %t53 = load i64, ptr %l34, !tbaa !24
  %t54 = getelementptr i8, ptr %t51, i64 %t52
  %t55 = sub i64 %t53, %t52
  %t56 = insertvalue { i64, ptr } undef, i64 %t55, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t54, 1
  %t60 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v1, { i64, ptr } %t57, i8 10)
  %t61 = extractvalue { i32, i64 } %t60, 1
  %t62 = extractvalue { i32, i64 } %t60, 0
  store i32 %t62, ptr %l42
  %t63 = icmp ne i32 %t62, 0
  br i1 %t63, label %bb20, label %ok.64, !prof !99
ok.64:
  store i64 %t61, ptr %l41
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_2b3d593c994025a_f25bcfc8e3895e8e)
  unreachable
bb19:
  %t65 = load i64, ptr %l41, !tbaa !24
  store i64 %t65, ptr %l29, !tbaa !24
  br label %bb22
bb20:
  br label %bb21
bb21:
  %t66 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t68 = extractvalue { i64, ptr } %t66, 0
  %t69 = load i64, ptr %l4, !tbaa !24
  %t72 = sub i64 %t68, %t69
  store i64 %t72, ptr %l29, !tbaa !24
  br label %bb22
bb22:
  %t74 = load i64, ptr %l29, !tbaa !24
  %t75 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t75, ptr %l47, !tbaa !27
  %t76 = load i64, ptr %l4, !tbaa !24
  store i64 %t76, ptr %l48, !tbaa !24
  %t77 = load i64, ptr %l4, !tbaa !24
  %t81 = add i64 %t77, %t74
  store i64 %t81, ptr %l51, !tbaa !24
  %t82 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t83 = extractvalue { i64, ptr } %t82, 0
  store i64 %t83, ptr %l52, !tbaa !24
  %t84 = load i64, ptr %l48, !tbaa !24
  %t85 = icmp sge i64 %t84, 0
  br i1 %t85, label %bb23, label %bb24
bb23:
  %t87 = load i64, ptr %l48, !tbaa !24
  %t88 = load i64, ptr %l51, !tbaa !24
  %t89 = icmp sle i64 %t87, %t88
  br i1 %t89, label %bb25, label %bb26
bb24:
  call void @__olang_check_failed(ptr @olang_loc_41dcdde6fea423b7_7dcc0ffa4d83aa8b)
  unreachable
bb25:
  %t91 = load i64, ptr %l51, !tbaa !24
  %t92 = load i64, ptr %l52, !tbaa !24
  %t93 = icmp sle i64 %t91, %t92
  br i1 %t93, label %bb27, label %bb28
bb26:
  call void @__olang_check_failed(ptr @olang_loc_41dcdde6fea423b7_7dcc0ffa4d83aa8b)
  unreachable
bb27:
  %t95 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !27
  %t97 = load i64, ptr %l48, !tbaa !24
  %t98 = load i64, ptr %l51, !tbaa !24
  %t99 = getelementptr i8, ptr %t96, i64 %t97
  %t100 = sub i64 %t98, %t97
  %t101 = insertvalue { i64, ptr } undef, i64 %t100, 0
  %t102 = insertvalue { i64, ptr } %t101, ptr %t99, 1
  store { i64, ptr } %t102, ptr %l6, !tbaa !27
  %t104 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t106 = extractvalue { i64, ptr } %t104, 0
  %t108 = icmp eq i64 %t106, 0
  br i1 %t108, label %bb29, label %bb30
bb28:
  call void @__olang_check_failed(ptr @olang_loc_41dcdde6fea423b7_7dcc0ffa4d83aa8b)
  unreachable
bb29:
  store i1 true, ptr %l60, !tbaa !21
  br label %bb31
bb30:
  %t110 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t110, ptr %l61, !tbaa !27
  %t111 = getelementptr { i64, ptr }, ptr %l61, i32 0, i32 1
  %t112 = load ptr, ptr %t111, !tbaa !27
  %t113 = getelementptr i8, ptr %t112, i64 0
  %t114 = load i8, ptr %t113, !tbaa !32
  %t116 = icmp ne i8 %t114, 101
  store i1 %t116, ptr %l60, !tbaa !21
  br label %bb31
bb31:
  %t118 = load i1, ptr %l60, !tbaa !21
  br i1 %t118, label %bb32, label %bb33
bb32:
  store i1 true, ptr %l64, !tbaa !21
  br label %bb35
bb33:
  %t119 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d79, i32 0, i32 1) }, ptr %l67, !tbaa !27
  %t122 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t123 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v1, ptr %s0, { i64, ptr } %t119, { i64, ptr } %t122)
  store i1 %t123, ptr %l68
  br label %bb34
bb34:
  %t124 = load i1, ptr %l68, !tbaa !21
  store i1 %t124, ptr %l64, !tbaa !21
  br label %bb35
bb35:
  %t125 = load i1, ptr %l64, !tbaa !21
  br i1 %t125, label %bb36, label %bb37
bb36:
  store i1 true, ptr %l69, !tbaa !21
  br label %bb39
bb37:
  %t126 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d80, i32 0, i32 1) }, ptr %l72, !tbaa !27
  %t129 = load { i64, ptr }, ptr %l72, !tbaa !27
  %t130 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v1, ptr %s0, { i64, ptr } %t126, { i64, ptr } %t129)
  store i1 %t130, ptr %l73
  br label %bb38
bb38:
  %t131 = load i1, ptr %l73, !tbaa !21
  store i1 %t131, ptr %l69, !tbaa !21
  br label %bb39
bb39:
  %t132 = load i1, ptr %l69, !tbaa !21
  br i1 %t132, label %bb40, label %bb41
bb40:
  call void @__olang_scope_close(ptr %s0)
  store i32 65537, ptr %rv
  br label %ret
bb41:
  br label %bb42
bb42:
  %t134 = load ptr, ptr %l0, !tbaa !29
  store ptr %t134, ptr %l75, !tbaa !29
  %t135 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t136 = load ptr, ptr %l75, !tbaa !29
  %t137 = getelementptr %"compiler/target:Target", ptr %t136, i32 0, i32 1
  %t138 = load { i64, ptr }, ptr %t137, !tbaa !27
  store { i64, ptr } %t138, ptr %l77, !tbaa !27
  %t140 = load ptr, ptr %l75, !tbaa !29
  %t141 = getelementptr %"compiler/target:Target", ptr %t140, i32 0, i32 1
  store { i64, ptr } %t135, ptr %t141, !tbaa !27
  %t142 = load i1, ptr @olang_2esole_2ecompiler_2ftarget_3aTarget_2e1
  br i1 %t142, label %bb43, label %bb44
bb43:
  %t144 = load { i64, ptr }, ptr %l77
  %t145 = extractvalue { i64, ptr } %t144, 1
  call void @__olang_region_release(ptr %t145)
  store { i64, ptr } zeroinitializer, ptr %l77
  br label %bb44
bb44:
  %t146 = load ptr, ptr %l0, !tbaa !29
  store ptr %t146, ptr %l79, !tbaa !29
  %t147 = ptrtoint ptr %v0 to i64
  store i64 %t147, ptr %l80, !tbaa !24
  %t148 = load i1, ptr @olang_2esole_2ecompiler_2ftarget_3aTarget_2e4
  br i1 %t148, label %bb45, label %bb46
bb45:
  %t150 = call ptr @__olang_region_make(ptr %v0)
  %t151 = ptrtoint ptr %t150 to i64
  store i64 %t151, ptr %l80, !tbaa !24
  br label %bb46
bb46:
  %t152 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t154 = call { i32, { i64, ptr } } @compiler_2ftarget_2eattrValue(ptr %v1, ptr %s0, ptr %s0, { i64, ptr } %t152, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d81, i32 0, i32 1) })
  %t155 = extractvalue { i32, { i64, ptr } } %t154, 1
  %t156 = extractvalue { i32, { i64, ptr } } %t154, 0
  store i32 %t156, ptr %l85
  %t157 = icmp ne i32 %t156, 0
  br i1 %t157, label %bb48, label %ok.158, !prof !99
ok.158:
  store { i64, ptr } %t155, ptr %l84
  br label %bb47
bb47:
  %t159 = load { i64, ptr }, ptr %l84, !tbaa !27
  store { i64, ptr } %t159, ptr %l82, !tbaa !27
  br label %bb50
bb48:
  br label %bb49
bb49:
  call void @__olang_scope_close(ptr %s0)
  store i32 65536, ptr %rv
  br label %ret
bb50:
  %t161 = load { i64, ptr }, ptr %l82, !tbaa !27
  %t162 = extractvalue { i64, ptr } %t161, 1
  %t163 = extractvalue { i64, ptr } %t161, 0
  %t164 = load i64, ptr %l80
  %t165 = inttoptr i64 %t164 to ptr
  %t166 = call ptr @__olang_scope_alloc(ptr %t165, i64 %t163)
  call void @olang_textcopy(ptr %t166, ptr %t162, i64 %t163)
  %t167 = insertvalue { i64, ptr } undef, i64 %t163, 0
  %t168 = insertvalue { i64, ptr } %t167, ptr %t166, 1
  %t170 = load i64, ptr %l80
  %t171 = inttoptr i64 %t170 to ptr
  %t172 = extractvalue { i64, ptr } %t168, 0
  %t173 = extractvalue { i64, ptr } %t168, 1
  %t174 = mul i64 %t172, 1
  %t175 = call ptr @__olang_scope_alloc(ptr %t171, i64 %t174)
  call void @llvm.memcpy.p0.p0.i64(ptr %t175, ptr %t173, i64 %t174, i1 false)
  %t176 = insertvalue { i64, ptr } undef, i64 %t172, 0
  %t177 = insertvalue { i64, ptr } %t176, ptr %t175, 1
  %t178 = load ptr, ptr %l79, !tbaa !29
  %t179 = getelementptr %"compiler/target:Target", ptr %t178, i32 0, i32 4
  %t180 = load { i64, ptr }, ptr %t179, !tbaa !27
  store { i64, ptr } %t180, ptr %l89, !tbaa !27
  %t182 = load ptr, ptr %l79, !tbaa !29
  %t183 = getelementptr %"compiler/target:Target", ptr %t182, i32 0, i32 4
  store { i64, ptr } %t177, ptr %t183, !tbaa !27
  %t184 = load i1, ptr @olang_2esole_2ecompiler_2ftarget_3aTarget_2e4
  br i1 %t184, label %bb51, label %bb52
bb51:
  %t186 = load { i64, ptr }, ptr %l89
  %t187 = extractvalue { i64, ptr } %t186, 1
  call void @__olang_region_release(ptr %t187)
  store { i64, ptr } zeroinitializer, ptr %l89
  br label %bb52
bb52:
  %t188 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t190 = call { i32, { i64, ptr } } @compiler_2ftarget_2eattrValue(ptr %v1, ptr %s0, ptr %v1, { i64, ptr } %t188, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d82, i32 0, i32 1) })
  %t191 = extractvalue { i32, { i64, ptr } } %t190, 1
  %t192 = extractvalue { i32, { i64, ptr } } %t190, 0
  store i32 %t192, ptr %l94
  %t193 = icmp ne i32 %t192, 0
  br i1 %t193, label %bb54, label %ok.194, !prof !99
ok.194:
  store { i64, ptr } %t191, ptr %l93
  br label %bb53
bb53:
  %t195 = load { i64, ptr }, ptr %l93, !tbaa !27
  store { i64, ptr } %t195, ptr %l91, !tbaa !27
  br label %bb56
bb54:
  br label %bb55
bb55:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d83, i32 0, i32 1) }, ptr %l91, !tbaa !27
  br label %bb56
bb56:
  %t196 = load { i64, ptr }, ptr %l91, !tbaa !27
  %t197 = call { i64, ptr } @compiler_2ftarget_2eStripUnsafe(ptr %v1, ptr %s0, { i64, ptr } %t196)
  store { i64, ptr } %t197, ptr %l95
  br label %bb57
bb57:
  %t198 = load { i64, ptr }, ptr %l95, !tbaa !27
  store { i64, ptr } %t198, ptr %l7, !tbaa !27
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t201 = getelementptr %"compiler/target:Target", ptr %t199, i32 0, i32 2
  %t202 = load { i64, ptr }, ptr %t201, !tbaa !27
  %t204 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t202, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d84, i32 0, i32 1) })
  store i1 %t204, ptr %l98
  br label %bb58
bb58:
  %t205 = load i1, ptr %l98, !tbaa !21
  br i1 %t205, label %bb59, label %bb60
bb59:
  store %olang.scope zeroinitializer, ptr %s7
  %t206 = load ptr, ptr %l0, !tbaa !29
  store ptr %t206, ptr %l99, !tbaa !29
  %t207 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t209 = call i1 @compiler_2ftarget_2eHasFeature(ptr %s0, ptr %s7, { i64, ptr } %t207, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d85, i32 0, i32 1) })
  store i1 %t209, ptr %l101
  br label %bb61
bb60:
  store %olang.scope zeroinitializer, ptr %s8
  %t210 = load ptr, ptr %l0, !tbaa !29
  store ptr %t210, ptr %l104, !tbaa !29
  %t211 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t213 = call i1 @compiler_2ftarget_2eHasFeature(ptr %s0, ptr %s8, { i64, ptr } %t211, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d86, i32 0, i32 1) })
  store i1 %t213, ptr %l106
  br label %bb65
bb61:
  %t214 = load i1, ptr %l101, !tbaa !21
  br i1 %t214, label %bb62, label %bb63
bb62:
  store i64 128, ptr %l102, !tbaa !24
  br label %bb64
bb63:
  store i64 0, ptr %l102, !tbaa !24
  br label %bb64
bb64:
  %t215 = load i64, ptr %l102, !tbaa !24
  %t216 = load ptr, ptr %l99, !tbaa !29
  %t217 = getelementptr %"compiler/target:Target", ptr %t216, i32 0, i32 7
  store i64 %t215, ptr %t217, !tbaa !24
  %t218 = load ptr, ptr %l0, !tbaa !29
  %t220 = getelementptr %"compiler/target:Target", ptr %t218, i32 0, i32 8
  store i1 true, ptr %t220, !tbaa !21
  call void @__olang_scope_close(ptr %s7)
  br label %bb78
bb65:
  %t221 = load i1, ptr %l106, !tbaa !21
  br i1 %t221, label %bb66, label %bb67
bb66:
  store i64 512, ptr %l107, !tbaa !24
  br label %bb72
bb67:
  %t222 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t224 = call i1 @compiler_2ftarget_2eHasFeature(ptr %s0, ptr %s8, { i64, ptr } %t222, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d87, i32 0, i32 1) })
  store i1 %t224, ptr %l109
  br label %bb68
bb68:
  %t225 = load i1, ptr %l109, !tbaa !21
  br i1 %t225, label %bb69, label %bb70
bb69:
  store i64 256, ptr %l110, !tbaa !24
  br label %bb71
bb70:
  store i64 128, ptr %l110, !tbaa !24
  br label %bb71
bb71:
  %t226 = load i64, ptr %l110, !tbaa !24
  store i64 %t226, ptr %l107, !tbaa !24
  br label %bb72
bb72:
  %t227 = load i64, ptr %l107, !tbaa !24
  %t228 = load ptr, ptr %l104, !tbaa !29
  %t229 = getelementptr %"compiler/target:Target", ptr %t228, i32 0, i32 7
  store i64 %t227, ptr %t229, !tbaa !24
  %t230 = load ptr, ptr %l0, !tbaa !29
  store ptr %t230, ptr %l111, !tbaa !29
  %t231 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t233 = call i1 @compiler_2ftarget_2eHasFeature(ptr %s0, ptr %s8, { i64, ptr } %t231, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d88, i32 0, i32 1) })
  store i1 %t233, ptr %l113
  br label %bb73
bb73:
  %t234 = load i1, ptr %l113, !tbaa !21
  br i1 %t234, label %bb74, label %bb75
bb74:
  store i1 true, ptr %l114, !tbaa !21
  br label %bb77
bb75:
  %t235 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t237 = call i1 @compiler_2ftarget_2eHasFeature(ptr %s0, ptr %s8, { i64, ptr } %t235, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d89, i32 0, i32 1) })
  store i1 %t237, ptr %l116
  br label %bb76
bb76:
  %t238 = load i1, ptr %l116, !tbaa !21
  store i1 %t238, ptr %l114, !tbaa !21
  br label %bb77
bb77:
  %t239 = load i1, ptr %l114, !tbaa !21
  %t240 = load ptr, ptr %l111, !tbaa !29
  %t241 = getelementptr %"compiler/target:Target", ptr %t240, i32 0, i32 8
  store i1 %t239, ptr %t241, !tbaa !21
  call void @__olang_scope_close(ptr %s8)
  br label %bb78
bb78:
  %t242 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t244 = call { i32, { i64, ptr } } @compiler_2ftarget_2eattrValue(ptr %v1, ptr %s0, ptr %v1, { i64, ptr } %t242, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d90, i32 0, i32 1) })
  %t245 = extractvalue { i32, { i64, ptr } } %t244, 1
  %t246 = extractvalue { i32, { i64, ptr } } %t244, 0
  store i32 %t246, ptr %l120
  %t247 = icmp ne i32 %t246, 0
  br i1 %t247, label %bb80, label %ok.248, !prof !99
ok.248:
  store { i64, ptr } %t245, ptr %l119
  br label %bb79
bb79:
  %t249 = load { i64, ptr }, ptr %l119, !tbaa !27
  store { i64, ptr } %t249, ptr %l117, !tbaa !27
  br label %bb82
bb80:
  br label %bb81
bb81:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d91, i32 0, i32 1) }, ptr %l117, !tbaa !27
  br label %bb82
bb82:
  %t250 = load { i64, ptr }, ptr %l117, !tbaa !27
  store { i64, ptr } %t250, ptr %l8, !tbaa !27
  %t251 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t253 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t251, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d92, i32 0, i32 1) })
  store i1 %t253, ptr %l122
  br label %bb83
bb83:
  %t254 = load i1, ptr %l122, !tbaa !21
  %t255 = xor i1 %t254, true
  br i1 %t255, label %bb84, label %bb85
bb84:
  %t257 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t258 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d93, i32 0, i32 1) }, 1
  %t259 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d93, i32 0, i32 1) }, 0
  %t261 = extractvalue { i64, ptr } %t257, 1
  %t262 = extractvalue { i64, ptr } %t257, 0
  %t263 = add i64 %t259, %t262
  %t264 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d94, i32 0, i32 1) }, 1
  %t265 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d94, i32 0, i32 1) }, 0
  %t266 = add i64 %t263, %t265
  %t267 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t266)
  call void @olang_textcopy(ptr %t267, ptr %t258, i64 %t259)
  %t268 = getelementptr i8, ptr %t267, i64 %t259
  call void @olang_textcopy(ptr %t268, ptr %t261, i64 %t262)
  %t269 = getelementptr i8, ptr %t268, i64 %t262
  call void @olang_textcopy(ptr %t269, ptr %t264, i64 %t265)
  %t270 = insertvalue { i64, ptr } undef, i64 %t266, 0
  %t271 = insertvalue { i64, ptr } %t270, ptr %t267, 1
  %t273 = extractvalue { i64, ptr } %t271, 0
  %t274 = extractvalue { i64, ptr } %t271, 1
  %t275 = mul i64 %t273, 1
  %t276 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t275)
  call void @llvm.memcpy.p0.p0.i64(ptr %t276, ptr %t274, i64 %t275, i1 false)
  %t277 = insertvalue { i64, ptr } undef, i64 %t273, 0
  %t278 = insertvalue { i64, ptr } %t277, ptr %t276, 1
  store { i64, ptr } %t278, ptr %l124, !tbaa !27
  br label %bb86
bb85:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d95, i32 0, i32 1) }, ptr %l124, !tbaa !27
  br label %bb86
bb86:
  %t280 = load { i64, ptr }, ptr %l124, !tbaa !27
  store { i64, ptr } %t280, ptr %l9, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d96, i32 0, i32 1) }, ptr %l10, !tbaa !27
  %t281 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t283 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v1, ptr %s0, { i64, ptr } %t281, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d97, i32 0, i32 1) })
  %t284 = extractvalue { i32, i64 } %t283, 1
  %t285 = extractvalue { i32, i64 } %t283, 0
  store i32 %t285, ptr %l131
  %t286 = icmp ne i32 %t285, 0
  br i1 %t286, label %bb88, label %ok.287, !prof !99
ok.287:
  store i64 %t284, ptr %l130
  br label %bb87
bb87:
  %t288 = load i64, ptr %l130, !tbaa !24
  store i64 %t288, ptr %l128, !tbaa !24
  br label %bb90
bb88:
  br label %bb89
bb89:
  store i64 -1, ptr %l128, !tbaa !24
  br label %bb90
bb90:
  %t289 = load i64, ptr %l128, !tbaa !24
  store i64 %t289, ptr %l11, !tbaa !24
  %t290 = load i64, ptr %l11, !tbaa !24
  %t292 = icmp sge i64 %t290, 0
  br i1 %t292, label %bb91, label %bb92
bb91:
  %t294 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t294, ptr %l135, !tbaa !27
  %t295 = load i64, ptr %l11, !tbaa !24
  store i64 %t295, ptr %l136, !tbaa !24
  %t296 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t299 = extractvalue { i64, ptr } %t296, 0
  store i64 %t299, ptr %l139, !tbaa !24
  %t300 = load { i64, ptr }, ptr %l135, !tbaa !27
  %t301 = extractvalue { i64, ptr } %t300, 0
  store i64 %t301, ptr %l140, !tbaa !24
  %t302 = load i64, ptr %l136, !tbaa !24
  %t303 = icmp sge i64 %t302, 0
  br i1 %t303, label %bb93, label %bb94
bb92:
  br label %bb112
bb93:
  %t305 = load i64, ptr %l136, !tbaa !24
  %t306 = load i64, ptr %l139, !tbaa !24
  %t307 = icmp sle i64 %t305, %t306
  br i1 %t307, label %bb95, label %bb96
bb94:
  call void @__olang_check_failed(ptr @olang_loc_e010b40d861556cc_7cbd713015487310)
  unreachable
bb95:
  %t309 = load i64, ptr %l139, !tbaa !24
  %t310 = load i64, ptr %l140, !tbaa !24
  %t311 = icmp sle i64 %t309, %t310
  br i1 %t311, label %bb97, label %bb98
bb96:
  call void @__olang_check_failed(ptr @olang_loc_e010b40d861556cc_7cbd713015487310)
  unreachable
bb97:
  %t313 = getelementptr { i64, ptr }, ptr %l135, i32 0, i32 1
  %t314 = load ptr, ptr %t313, !tbaa !27
  %t315 = load i64, ptr %l136, !tbaa !24
  %t316 = load i64, ptr %l139, !tbaa !24
  %t317 = getelementptr i8, ptr %t314, i64 %t315
  %t318 = sub i64 %t316, %t315
  %t319 = insertvalue { i64, ptr } undef, i64 %t318, 0
  %t320 = insertvalue { i64, ptr } %t319, ptr %t317, 1
  %t323 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v1, { i64, ptr } %t320, i8 41)
  %t324 = extractvalue { i32, i64 } %t323, 1
  %t325 = extractvalue { i32, i64 } %t323, 0
  store i32 %t325, ptr %l147
  %t326 = icmp ne i32 %t325, 0
  br i1 %t326, label %bb100, label %ok.327, !prof !99
ok.327:
  store i64 %t324, ptr %l146
  br label %bb99
bb98:
  call void @__olang_check_failed(ptr @olang_loc_e010b40d861556cc_7cbd713015487310)
  unreachable
bb99:
  %t328 = load i64, ptr %l146, !tbaa !24
  store i64 %t328, ptr %l134, !tbaa !24
  br label %bb102
bb100:
  br label %bb101
bb101:
  store i64 -1, ptr %l134, !tbaa !24
  br label %bb102
bb102:
  %t329 = load i64, ptr %l134, !tbaa !24
  store i64 %t329, ptr %l12, !tbaa !24
  %t330 = load i64, ptr %l12, !tbaa !24
  %t332 = icmp sge i64 %t330, 0
  br i1 %t332, label %bb103, label %bb104
bb103:
  %t334 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t334, ptr %l150, !tbaa !27
  %t335 = load i64, ptr %l11, !tbaa !24
  store i64 %t335, ptr %l151, !tbaa !24
  %t336 = load i64, ptr %l11, !tbaa !24
  %t337 = load i64, ptr %l12, !tbaa !24
  %t340 = add i64 %t336, %t337
  %t342 = add i64 %t340, 1
  store i64 %t342, ptr %l155, !tbaa !24
  %t343 = load { i64, ptr }, ptr %l150, !tbaa !27
  %t344 = extractvalue { i64, ptr } %t343, 0
  store i64 %t344, ptr %l156, !tbaa !24
  %t345 = load i64, ptr %l151, !tbaa !24
  %t346 = icmp sge i64 %t345, 0
  br i1 %t346, label %bb105, label %bb106
bb104:
  br label %bb111
bb105:
  %t348 = load i64, ptr %l151, !tbaa !24
  %t349 = load i64, ptr %l155, !tbaa !24
  %t350 = icmp sle i64 %t348, %t349
  br i1 %t350, label %bb107, label %bb108
bb106:
  call void @__olang_check_failed(ptr @olang_loc_8cdf81df4f8deaf9_3f7b7447e7e110ed)
  unreachable
bb107:
  %t352 = load i64, ptr %l155, !tbaa !24
  %t353 = load i64, ptr %l156, !tbaa !24
  %t354 = icmp sle i64 %t352, %t353
  br i1 %t354, label %bb109, label %bb110
bb108:
  call void @__olang_check_failed(ptr @olang_loc_8cdf81df4f8deaf9_3f7b7447e7e110ed)
  unreachable
bb109:
  %t356 = getelementptr { i64, ptr }, ptr %l150, i32 0, i32 1
  %t357 = load ptr, ptr %t356, !tbaa !27
  %t358 = load i64, ptr %l151, !tbaa !24
  %t359 = load i64, ptr %l155, !tbaa !24
  %t360 = getelementptr i8, ptr %t357, i64 %t358
  %t361 = sub i64 %t359, %t358
  %t362 = insertvalue { i64, ptr } undef, i64 %t361, 0
  %t363 = insertvalue { i64, ptr } %t362, ptr %t360, 1
  %t364 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d98, i32 0, i32 1) }, 1
  %t365 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d98, i32 0, i32 1) }, 0
  %t367 = extractvalue { i64, ptr } %t363, 1
  %t368 = extractvalue { i64, ptr } %t363, 0
  %t369 = add i64 %t365, %t368
  %t370 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t369)
  call void @olang_textcopy(ptr %t370, ptr %t364, i64 %t365)
  %t371 = getelementptr i8, ptr %t370, i64 %t365
  call void @olang_textcopy(ptr %t371, ptr %t367, i64 %t368)
  %t372 = insertvalue { i64, ptr } undef, i64 %t369, 0
  %t373 = insertvalue { i64, ptr } %t372, ptr %t370, 1
  %t375 = extractvalue { i64, ptr } %t373, 0
  %t376 = extractvalue { i64, ptr } %t373, 1
  %t377 = mul i64 %t375, 1
  %t378 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t377)
  call void @llvm.memcpy.p0.p0.i64(ptr %t378, ptr %t376, i64 %t377, i1 false)
  %t379 = insertvalue { i64, ptr } undef, i64 %t375, 0
  %t380 = insertvalue { i64, ptr } %t379, ptr %t378, 1
  store { i64, ptr } %t380, ptr %l10, !tbaa !27
  br label %bb111
bb110:
  call void @__olang_check_failed(ptr @olang_loc_8cdf81df4f8deaf9_3f7b7447e7e110ed)
  unreachable
bb111:
  br label %bb112
bb112:
  %t382 = load ptr, ptr %l0, !tbaa !29
  %t384 = getelementptr %"compiler/target:Target", ptr %t382, i32 0, i32 7
  %t385 = load i64, ptr %t384, !tbaa !24
  %t387 = icmp sgt i64 %t385, 0
  br i1 %t387, label %bb113, label %bb114
bb113:
  %t389 = load ptr, ptr %l0, !tbaa !29
  %t391 = getelementptr %"compiler/target:Target", ptr %t389, i32 0, i32 7
  %t392 = load i64, ptr %t391, !tbaa !24
  store i64 %t392, ptr %l166, !tbaa !24
  br label %bb115
bb114:
  store i64 128, ptr %l166, !tbaa !24
  br label %bb115
bb115:
  %t394 = load i64, ptr %l166, !tbaa !24
  store i64 %t394, ptr %l13, !tbaa !24
  %t395 = load ptr, ptr %l0, !tbaa !29
  store ptr %t395, ptr %l169, !tbaa !29
  %t396 = ptrtoint ptr %v0 to i64
  store i64 %t396, ptr %l170, !tbaa !24
  %t397 = load i1, ptr @olang_2esole_2ecompiler_2ftarget_3aTarget_2e5
  br i1 %t397, label %bb116, label %bb117
bb116:
  %t399 = call ptr @__olang_region_make(ptr %v0)
  %t400 = ptrtoint ptr %t399 to i64
  store i64 %t400, ptr %l170, !tbaa !24
  br label %bb117
bb117:
  %t401 = load ptr, ptr %l0, !tbaa !29
  %t403 = getelementptr %"compiler/target:Target", ptr %t401, i32 0, i32 4
  %t404 = load { i64, ptr }, ptr %t403, !tbaa !27
  %t405 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t406 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t407 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t408 = load i64, ptr %l13, !tbaa !24
  %t409 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d99, i32 0, i32 1) }, 1
  %t410 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d99, i32 0, i32 1) }, 0
  %t412 = extractvalue { i64, ptr } %t404, 1
  %t413 = extractvalue { i64, ptr } %t404, 0
  %t414 = add i64 %t410, %t413
  %t415 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d100, i32 0, i32 1) }, 1
  %t416 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d100, i32 0, i32 1) }, 0
  %t417 = add i64 %t414, %t416
  %t419 = extractvalue { i64, ptr } %t405, 1
  %t420 = extractvalue { i64, ptr } %t405, 0
  %t421 = add i64 %t417, %t420
  %t422 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d101, i32 0, i32 1) }, 1
  %t423 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d101, i32 0, i32 1) }, 0
  %t424 = add i64 %t421, %t423
  %t426 = extractvalue { i64, ptr } %t406, 1
  %t427 = extractvalue { i64, ptr } %t406, 0
  %t428 = add i64 %t424, %t427
  %t430 = extractvalue { i64, ptr } %t407, 1
  %t431 = extractvalue { i64, ptr } %t407, 0
  %t432 = add i64 %t428, %t431
  %t433 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d102, i32 0, i32 1) }, 1
  %t434 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d102, i32 0, i32 1) }, 0
  %t435 = add i64 %t432, %t434
  %t437 = call i64 @__olang_fmt_i64(ptr null, i64 %t408)
  %t438 = add i64 %t435, %t437
  %t439 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d101, i32 0, i32 1) }, 1
  %t440 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d101, i32 0, i32 1) }, 0
  %t441 = add i64 %t438, %t440
  %t442 = load i64, ptr %l170
  %t443 = inttoptr i64 %t442 to ptr
  %t444 = call ptr @__olang_scope_alloc(ptr %t443, i64 %t441)
  call void @olang_textcopy(ptr %t444, ptr %t409, i64 %t410)
  %t445 = getelementptr i8, ptr %t444, i64 %t410
  call void @olang_textcopy(ptr %t445, ptr %t412, i64 %t413)
  %t446 = getelementptr i8, ptr %t445, i64 %t413
  call void @olang_textcopy(ptr %t446, ptr %t415, i64 %t416)
  %t447 = getelementptr i8, ptr %t446, i64 %t416
  call void @olang_textcopy(ptr %t447, ptr %t419, i64 %t420)
  %t448 = getelementptr i8, ptr %t447, i64 %t420
  call void @olang_textcopy(ptr %t448, ptr %t422, i64 %t423)
  %t449 = getelementptr i8, ptr %t448, i64 %t423
  call void @olang_textcopy(ptr %t449, ptr %t426, i64 %t427)
  %t450 = getelementptr i8, ptr %t449, i64 %t427
  call void @olang_textcopy(ptr %t450, ptr %t430, i64 %t431)
  %t451 = getelementptr i8, ptr %t450, i64 %t431
  call void @olang_textcopy(ptr %t451, ptr %t433, i64 %t434)
  %t452 = getelementptr i8, ptr %t451, i64 %t434
  %t453 = call i64 @__olang_fmt_i64(ptr %t452, i64 %t408)
  %t454 = getelementptr i8, ptr %t452, i64 %t437
  call void @olang_textcopy(ptr %t454, ptr %t439, i64 %t440)
  %t455 = insertvalue { i64, ptr } undef, i64 %t441, 0
  %t456 = insertvalue { i64, ptr } %t455, ptr %t444, 1
  %t458 = load i64, ptr %l170
  %t459 = inttoptr i64 %t458 to ptr
  %t460 = extractvalue { i64, ptr } %t456, 0
  %t461 = extractvalue { i64, ptr } %t456, 1
  %t462 = mul i64 %t460, 1
  %t463 = call ptr @__olang_scope_alloc(ptr %t459, i64 %t462)
  call void @llvm.memcpy.p0.p0.i64(ptr %t463, ptr %t461, i64 %t462, i1 false)
  %t464 = insertvalue { i64, ptr } undef, i64 %t460, 0
  %t465 = insertvalue { i64, ptr } %t464, ptr %t463, 1
  %t466 = load ptr, ptr %l169, !tbaa !29
  %t467 = getelementptr %"compiler/target:Target", ptr %t466, i32 0, i32 5
  %t468 = load { i64, ptr }, ptr %t467, !tbaa !27
  store { i64, ptr } %t468, ptr %l180, !tbaa !27
  %t470 = load ptr, ptr %l169, !tbaa !29
  %t471 = getelementptr %"compiler/target:Target", ptr %t470, i32 0, i32 5
  store { i64, ptr } %t465, ptr %t471, !tbaa !27
  %t472 = load i1, ptr @olang_2esole_2ecompiler_2ftarget_3aTarget_2e5
  br i1 %t472, label %bb118, label %bb119
bb118:
  %t474 = load { i64, ptr }, ptr %l180
  %t475 = extractvalue { i64, ptr } %t474, 1
  call void @__olang_region_release(ptr %t475)
  store { i64, ptr } zeroinitializer, ptr %l180
  br label %bb119
bb119:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i32, { i64, ptr } } @compiler_2ftarget_2ecompiler_2ftarget_3aTarget_2eRunner(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %lp1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca i64
  %lp11 = alloca ptr
  %lp12 = alloca ptr
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l18 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l24 = alloca i32
  %l28 = alloca i1
  %l31 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l42 = alloca i1
  %l49 = alloca i64
  %l51 = alloca i1
  %l53 = alloca { i64, ptr }
  %l54 = alloca i1
  %l57 = alloca ptr
  %l58 = alloca i64
  %l61 = alloca { i64, ptr }
  %l62 = alloca { i64, ptr }
  %l65 = alloca { i64, ptr }
  %l66 = alloca { i64, ptr }
  %l67 = alloca i64
  %l68 = alloca { i64, ptr }
  %l69 = alloca i64
  %l74 = alloca { i64, ptr }
  %l75 = alloca i64
  %l93 = alloca { i64, ptr }
  %l95 = alloca i1
  %l98 = alloca { i64, ptr }
  %l100 = alloca i1
  %l101 = alloca i1
  %l106 = alloca i1
  %l107 = alloca i64
  %l111 = alloca { i64, ptr }
  %l113 = alloca { i64, ptr }
  %l116 = alloca i1
  %l122 = alloca { i64, ptr }
  %l123 = alloca { i64, ptr }
  %l124 = alloca i64
  %l125 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l13
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t2, ptr %lp1
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  %t4 = load ptr, ptr %lp1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/target:Target", ptr %t5, i32 0, i32 9
  %t8 = load i1, ptr %t7, !tbaa !21
  %t10 = xor i1 %t8, true
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = load ptr, ptr %lp1
  %t14 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v1, ptr %v1, ptr %t12)
  store { i64, ptr } %t14, ptr %l18
  br label %bb4
bb3:
  br label %bb5
bb4:
  %t15 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t15, ptr %l19, !tbaa !27
  %t16 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t16, 0
  store i64 %t17, ptr %l20, !tbaa !24
  %t18 = load i64, ptr %l20, !tbaa !24
  %t19 = mul i64 %t18, 16
  %t20 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t19)
  %t21 = insertvalue { i64, ptr } undef, i64 %t18, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t20, 1
  store { i64, ptr } %t22, ptr %l21, !tbaa !27
  %t23 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !27
  %t25 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = load i64, ptr %l20, !tbaa !24
  %t28 = mul i64 %t27, 16
  call void @llvm.memmove.p0.p0.i64(ptr %t24, ptr %t26, i64 %t28, i1 false)
  %t29 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t29, ptr %l19, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t30 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t31 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t30, 1
  store { i32, { i64, ptr } } %t31, ptr %rv
  br label %ret
bb5:
  %t32 = call { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %s0, ptr %v1, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d103, i32 0, i32 1) })
  %t33 = extractvalue { i32, { i64, ptr } } %t32, 1
  %t34 = extractvalue { i32, { i64, ptr } } %t32, 0
  store i32 %t34, ptr %l24
  %t35 = icmp ne i32 %t34, 0
  br i1 %t35, label %bb7, label %ok.36, !prof !99
ok.36:
  store { i64, ptr } %t33, ptr %l23
  br label %bb6
bb6:
  %t37 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t37, ptr %l22, !tbaa !27
  br label %bb11
bb7:
  %t38 = load i32, ptr %l24, !tbaa !23
  %t39 = ashr i32 %t38, 16
  %t41 = icmp eq i32 %t39, 1
  br i1 %t41, label %bb8, label %bb9
bb8:
  call void @__olang_errpay_pop()
  br label %bb9
bb9:
  br label %bb10
bb10:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d104, i32 0, i32 1) }, ptr %l22, !tbaa !27
  br label %bb11
bb11:
  %t43 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t43, ptr %l2, !tbaa !27
  %t44 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t46 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t44, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d105, i32 0, i32 1) })
  store i1 %t46, ptr %l28
  br label %bb12
bb12:
  %t47 = load i1, ptr %l28, !tbaa !21
  %t48 = xor i1 %t47, true
  br i1 %t48, label %bb13, label %bb14
bb13:
  store %olang.scope zeroinitializer, ptr %s3
  %t50 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t52 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %v1, ptr %s3, ptr %v1, { i64, ptr } %t50, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d106, i32 0, i32 1) })
  store { i64, ptr } %t52, ptr %l31
  br label %bb15
bb14:
  br label %bb42
bb15:
  %t53 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t53, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t54 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t56 = extractvalue { i64, ptr } %t54, 0
  store i64 %t56, ptr %l5, !tbaa !24
  br label %bb16
bb16:
  store %olang.scope zeroinitializer, ptr %s4
  %t58 = load i64, ptr %l4, !tbaa !24
  %t59 = load i64, ptr %l5, !tbaa !24
  %t62 = icmp slt i64 %t58, %t59
  %t64 = xor i1 %t62, true
  br i1 %t64, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s4)
  br label %bb26
bb18:
  br label %bb19
bb19:
  %t66 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t66, ptr %l38, !tbaa !27
  %t67 = load i64, ptr %l4, !tbaa !24
  %t69 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !27
  %t71 = getelementptr { i64, ptr }, ptr %t70, i64 %t67
  %t72 = load { i64, ptr }, ptr %t71, !tbaa !37
  store { i64, ptr } %t72, ptr %l6, !tbaa !27
  %t74 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t76 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s4, { i64, ptr } %t74, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d107, i32 0, i32 1) })
  store i1 %t76, ptr %l42
  br label %bb20
bb20:
  %t77 = load i1, ptr %l42, !tbaa !21
  %t78 = xor i1 %t77, true
  br i1 %t78, label %bb21, label %bb22
bb21:
  %t80 = load ptr, ptr %lp1
  %t81 = load { i64, ptr }, ptr %l6, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t80, { i64, ptr } %t81)
  br label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s4)
  br label %bb25
bb25:
  %t84 = load i64, ptr %l4, !tbaa !24
  %t86 = add i64 %t84, 1
  store i64 %t86, ptr %l4, !tbaa !24
  br label %bb16
bb26:
  call void @__olang_scope_close(ptr %s3)
  %t88 = load ptr, ptr %lp1
  %t90 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v1, ptr %t88)
  store i64 %t90, ptr %l49
  br label %bb27
bb27:
  %t91 = load i64, ptr %l49, !tbaa !24
  %t92 = icmp eq i64 %t91, 0
  br i1 %t92, label %bb28, label %bb29
bb28:
  store i1 true, ptr %l51, !tbaa !21
  br label %bb32
bb29:
  %t94 = load ptr, ptr %lp1
  %t96 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t94, i64 0)
  store { i64, ptr } %t96, ptr %l53
  br label %bb30
bb30:
  %t97 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t98 = call i1 @compiler_2ftarget_2eexecutable(ptr %v1, { i64, ptr } %t97)
  store i1 %t98, ptr %l54
  br label %bb31
bb31:
  %t99 = load i1, ptr %l54, !tbaa !21
  %t100 = xor i1 %t99, true
  store i1 %t100, ptr %l51, !tbaa !21
  br label %bb32
bb32:
  %t102 = load i1, ptr %l51, !tbaa !21
  br i1 %t102, label %bb33, label %bb34
bb33:
  call void @__olang_scope_close(ptr %s0)
  %t104 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t104, ptr %rv
  br label %ret
bb34:
  br label %bb35
bb35:
  %t105 = load ptr, ptr %lp1
  store ptr %t105, ptr %l57, !tbaa !29
  %t106 = ptrtoint ptr %v1 to i64
  store i64 %t106, ptr %l58, !tbaa !24
  %t107 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t107, label %bb36, label %bb37
bb36:
  %t109 = call ptr @__olang_region_make(ptr %v1)
  %t110 = ptrtoint ptr %t109 to i64
  store i64 %t110, ptr %l58, !tbaa !24
  br label %bb37
bb37:
  %t111 = load ptr, ptr %lp1
  %t113 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t111, i64 0)
  store { i64, ptr } %t113, ptr %l61
  br label %bb38
bb38:
  %t114 = load i64, ptr %l58
  %t115 = inttoptr i64 %t114 to ptr
  %t116 = load i64, ptr %l58
  %t117 = inttoptr i64 %t116 to ptr
  %t118 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t119 = call { i64, ptr } @compiler_2ftarget_2ewhereIs(ptr %t115, ptr %t117, { i64, ptr } %t118)
  store { i64, ptr } %t119, ptr %l62
  br label %bb39
bb39:
  %t120 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t121 = load i64, ptr %l58
  %t122 = inttoptr i64 %t121 to ptr
  %t123 = extractvalue { i64, ptr } %t120, 0
  %t124 = extractvalue { i64, ptr } %t120, 1
  %t125 = mul i64 %t123, 1
  %t126 = call ptr @__olang_scope_alloc(ptr %t122, i64 %t125)
  call void @llvm.memcpy.p0.p0.i64(ptr %t126, ptr %t124, i64 %t125, i1 false)
  %t127 = insertvalue { i64, ptr } undef, i64 %t123, 0
  %t128 = insertvalue { i64, ptr } %t127, ptr %t126, 1
  %t129 = load ptr, ptr %l57, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_Haae4fbc3ba15583a49040d883d2248d1(ptr %v1, ptr %v1, ptr %t129, i64 0, { i64, ptr } %t128)
  br label %bb40
bb40:
  %t131 = load ptr, ptr %lp1
  %t133 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v1, ptr %v1, ptr %t131)
  store { i64, ptr } %t133, ptr %l65
  br label %bb41
bb41:
  %t134 = load { i64, ptr }, ptr %l65, !tbaa !27
  store { i64, ptr } %t134, ptr %l66, !tbaa !27
  %t135 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t136 = extractvalue { i64, ptr } %t135, 0
  store i64 %t136, ptr %l67, !tbaa !24
  %t137 = load i64, ptr %l67, !tbaa !24
  %t138 = mul i64 %t137, 16
  %t139 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t138)
  %t140 = insertvalue { i64, ptr } undef, i64 %t137, 0
  %t141 = insertvalue { i64, ptr } %t140, ptr %t139, 1
  store { i64, ptr } %t141, ptr %l68, !tbaa !27
  %t142 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t143 = load ptr, ptr %t142, !tbaa !27
  %t144 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t145 = load ptr, ptr %t144, !tbaa !27
  %t146 = load i64, ptr %l67, !tbaa !24
  %t147 = mul i64 %t146, 16
  call void @llvm.memmove.p0.p0.i64(ptr %t143, ptr %t145, i64 %t147, i1 false)
  %t148 = load { i64, ptr }, ptr %l68, !tbaa !27
  store { i64, ptr } %t148, ptr %l66, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t149 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t150 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t149, 1
  store { i32, { i64, ptr } } %t150, ptr %rv
  br label %ret
bb42:
  store %olang.scope zeroinitializer, ptr %s8
  %t151 = ptrtoint ptr %s8 to i64
  store i64 %t151, ptr %l69, !tbaa !24
  %t152 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_202_3e_2e_2d1
  br i1 %t152, label %bb43, label %bb44
bb43:
  %t154 = call ptr @__olang_region_make(ptr %s8)
  %t155 = ptrtoint ptr %t154 to i64
  store i64 %t155, ptr %l69, !tbaa !24
  br label %bb44
bb44:
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t158 = getelementptr %"compiler/target:Target", ptr %t156, i32 0, i32 2
  %t159 = load { i64, ptr }, ptr %t158, !tbaa !27
  %t160 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d108, i32 0, i32 1) }, 1
  %t161 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d108, i32 0, i32 1) }, 0
  %t163 = extractvalue { i64, ptr } %t159, 1
  %t164 = extractvalue { i64, ptr } %t159, 0
  %t165 = add i64 %t161, %t164
  %t166 = load i64, ptr %l69
  %t167 = inttoptr i64 %t166 to ptr
  %t168 = call ptr @__olang_scope_alloc(ptr %t167, i64 %t165)
  call void @olang_textcopy(ptr %t168, ptr %t160, i64 %t161)
  %t169 = getelementptr i8, ptr %t168, i64 %t161
  call void @olang_textcopy(ptr %t169, ptr %t163, i64 %t164)
  %t170 = insertvalue { i64, ptr } undef, i64 %t165, 0
  %t171 = insertvalue { i64, ptr } %t170, ptr %t168, 1
  %t173 = load i64, ptr %l69
  %t174 = inttoptr i64 %t173 to ptr
  %t175 = extractvalue { i64, ptr } %t171, 0
  %t176 = extractvalue { i64, ptr } %t171, 1
  %t177 = mul i64 %t175, 1
  %t178 = call ptr @__olang_scope_alloc(ptr %t174, i64 %t177)
  call void @llvm.memcpy.p0.p0.i64(ptr %t178, ptr %t176, i64 %t177, i1 false)
  %t179 = insertvalue { i64, ptr } undef, i64 %t175, 0
  %t180 = insertvalue { i64, ptr } %t179, ptr %t178, 1
  store { i64, ptr } %t180, ptr %l74, !tbaa !27
  %t181 = ptrtoint ptr %s8 to i64
  store i64 %t181, ptr %l75, !tbaa !24
  %t182 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_202_3e_2e_2d1
  br i1 %t182, label %bb45, label %bb46
bb45:
  %t184 = call ptr @__olang_region_make(ptr %s8)
  %t185 = ptrtoint ptr %t184 to i64
  store i64 %t185, ptr %l75, !tbaa !24
  br label %bb46
bb46:
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t188 = getelementptr %"compiler/target:Target", ptr %t186, i32 0, i32 2
  %t189 = load { i64, ptr }, ptr %t188, !tbaa !27
  %t190 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d109, i32 0, i32 1) }, 1
  %t191 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d109, i32 0, i32 1) }, 0
  %t193 = extractvalue { i64, ptr } %t189, 1
  %t194 = extractvalue { i64, ptr } %t189, 0
  %t195 = add i64 %t191, %t194
  %t196 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d110, i32 0, i32 1) }, 1
  %t197 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d110, i32 0, i32 1) }, 0
  %t198 = add i64 %t195, %t197
  %t199 = load i64, ptr %l75
  %t200 = inttoptr i64 %t199 to ptr
  %t201 = call ptr @__olang_scope_alloc(ptr %t200, i64 %t198)
  call void @olang_textcopy(ptr %t201, ptr %t190, i64 %t191)
  %t202 = getelementptr i8, ptr %t201, i64 %t191
  call void @olang_textcopy(ptr %t202, ptr %t193, i64 %t194)
  %t203 = getelementptr i8, ptr %t202, i64 %t194
  call void @olang_textcopy(ptr %t203, ptr %t196, i64 %t197)
  %t204 = insertvalue { i64, ptr } undef, i64 %t198, 0
  %t205 = insertvalue { i64, ptr } %t204, ptr %t201, 1
  %t207 = load i64, ptr %l75
  %t208 = inttoptr i64 %t207 to ptr
  %t209 = extractvalue { i64, ptr } %t205, 0
  %t210 = extractvalue { i64, ptr } %t205, 1
  %t211 = mul i64 %t209, 1
  %t212 = call ptr @__olang_scope_alloc(ptr %t208, i64 %t211)
  call void @llvm.memcpy.p0.p0.i64(ptr %t212, ptr %t210, i64 %t211, i1 false)
  %t213 = insertvalue { i64, ptr } undef, i64 %t209, 0
  %t214 = insertvalue { i64, ptr } %t213, ptr %t212, 1
  %t215 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t216 = insertvalue [2 x { i64, ptr }] undef, { i64, ptr } %t215, 0
  %t218 = insertvalue [2 x { i64, ptr }] %t216, { i64, ptr } %t214, 1
  %t220 = call ptr @__olang_scope_alloc_a(ptr %s8, i64 32, i64 8)
  store [2 x { i64, ptr }] %t218, ptr %t220
  store ptr %t220, ptr %l7
  store i64 0, ptr %l8, !tbaa !24
  %t222 = load ptr, ptr %l7
  store i64 2, ptr %l9, !tbaa !24
  br label %bb47
bb47:
  store %olang.scope zeroinitializer, ptr %s11
  %t225 = load i64, ptr %l8, !tbaa !24
  %t226 = load i64, ptr %l9, !tbaa !24
  %t229 = icmp slt i64 %t225, %t226
  %t231 = xor i1 %t229, true
  br i1 %t231, label %bb48, label %bb49
bb48:
  call void @__olang_scope_close(ptr %s11)
  br label %bb80
bb49:
  br label %bb50
bb50:
  %t233 = load ptr, ptr %l7
  %t234 = load i64, ptr %l8, !tbaa !24
  %t237 = getelementptr [2 x { i64, ptr }], ptr %t233, i64 0, i64 %t234
  %t238 = load { i64, ptr }, ptr %t237, !tbaa !37
  %t242 = call { i64, ptr } @compiler_2ftarget_2ewhereIs(ptr %s8, ptr %v1, { i64, ptr } %t238)
  store { i64, ptr } %t242, ptr %l93
  br label %bb51
bb51:
  %t243 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t243, ptr %lp11
  %t244 = load { i64, ptr }, ptr %l93, !tbaa !27
  %t245 = load ptr, ptr %lp11
  store { i64, ptr } %t244, ptr %t245, !tbaa !27
  %t246 = load ptr, ptr %lp11
  %t247 = load { i64, ptr }, ptr %t246, !tbaa !27
  %t249 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s11, { i64, ptr } %t247, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d111, i32 0, i32 1) })
  store i1 %t249, ptr %l95
  br label %bb52
bb52:
  %t250 = load i1, ptr %l95, !tbaa !21
  br i1 %t250, label %bb53, label %bb54
bb53:
  call void @__olang_scope_close(ptr %s11)
  br label %bb79
bb54:
  br label %bb55
bb55:
  %t251 = load ptr, ptr %lp1
  %t252 = load ptr, ptr %lp11
  %t253 = load { i64, ptr }, ptr %t252, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t251, { i64, ptr } %t253)
  br label %bb56
bb56:
  %t256 = call { i64, ptr } @compiler_2ftarget_2eSysroot(ptr %v1)
  store { i64, ptr } %t256, ptr %l98
  br label %bb57
bb57:
  %t257 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t257, ptr %lp12
  %t258 = load { i64, ptr }, ptr %l98, !tbaa !27
  %t259 = load ptr, ptr %lp12
  store { i64, ptr } %t258, ptr %t259, !tbaa !27
  %t260 = load ptr, ptr %lp12
  %t261 = load { i64, ptr }, ptr %t260, !tbaa !27
  %t263 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s11, { i64, ptr } %t261, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d112, i32 0, i32 1) })
  store i1 %t263, ptr %l100
  br label %bb58
bb58:
  %t264 = load i1, ptr %l100, !tbaa !21
  br i1 %t264, label %bb59, label %bb60
bb59:
  %t265 = load ptr, ptr %l0, !tbaa !29
  %t267 = getelementptr %"compiler/target:Target", ptr %t265, i32 0, i32 2
  %t268 = load { i64, ptr }, ptr %t267, !tbaa !27
  %t269 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d113, i32 0, i32 1) }, 1
  %t270 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d113, i32 0, i32 1) }, 0
  %t272 = extractvalue { i64, ptr } %t268, 1
  %t273 = extractvalue { i64, ptr } %t268, 0
  %t274 = add i64 %t270, %t273
  %t275 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d114, i32 0, i32 1) }, 1
  %t276 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d114, i32 0, i32 1) }, 0
  %t277 = add i64 %t274, %t276
  %t278 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t277)
  call void @olang_textcopy(ptr %t278, ptr %t269, i64 %t270)
  %t279 = getelementptr i8, ptr %t278, i64 %t270
  call void @olang_textcopy(ptr %t279, ptr %t272, i64 %t273)
  %t280 = getelementptr i8, ptr %t279, i64 %t273
  call void @olang_textcopy(ptr %t280, ptr %t275, i64 %t276)
  %t281 = insertvalue { i64, ptr } undef, i64 %t277, 0
  %t282 = insertvalue { i64, ptr } %t281, ptr %t278, 1
  %t284 = extractvalue { i64, ptr } %t282, 0
  %t285 = extractvalue { i64, ptr } %t282, 1
  %t286 = mul i64 %t284, 1
  %t287 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t286)
  call void @llvm.memcpy.p0.p0.i64(ptr %t287, ptr %t285, i64 %t286, i1 false)
  %t288 = insertvalue { i64, ptr } undef, i64 %t284, 0
  %t289 = insertvalue { i64, ptr } %t288, ptr %t287, 1
  %t291 = call i1 @std_2fos_2eIsDir(ptr %s11, { i64, ptr } %t289)
  store i1 %t291, ptr %l106
  br label %bb61
bb60:
  store i1 false, ptr %l101, !tbaa !21
  br label %bb62
bb61:
  %t292 = load i1, ptr %l106, !tbaa !21
  store i1 %t292, ptr %l101, !tbaa !21
  br label %bb62
bb62:
  %t293 = load i1, ptr %l101, !tbaa !21
  br i1 %t293, label %bb63, label %bb64
bb63:
  %t294 = ptrtoint ptr %v1 to i64
  store i64 %t294, ptr %l107, !tbaa !24
  %t295 = load i1, ptr @olang_2esole_2ecompiler__2ftarget__2ecompiler__2ftarget__3aTarget__2eRunner_2elocal_2e12
  br i1 %t295, label %bb65, label %bb66
bb64:
  br label %bb71
bb65:
  %t297 = call ptr @__olang_region_make(ptr %v1)
  %t298 = ptrtoint ptr %t297 to i64
  store i64 %t298, ptr %l107, !tbaa !24
  br label %bb66
bb66:
  %t299 = load ptr, ptr %l0, !tbaa !29
  %t301 = getelementptr %"compiler/target:Target", ptr %t299, i32 0, i32 2
  %t302 = load { i64, ptr }, ptr %t301, !tbaa !27
  %t303 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d115, i32 0, i32 1) }, 1
  %t304 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d115, i32 0, i32 1) }, 0
  %t306 = extractvalue { i64, ptr } %t302, 1
  %t307 = extractvalue { i64, ptr } %t302, 0
  %t308 = add i64 %t304, %t307
  %t309 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d116, i32 0, i32 1) }, 1
  %t310 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d116, i32 0, i32 1) }, 0
  %t311 = add i64 %t308, %t310
  %t312 = load i64, ptr %l107
  %t313 = inttoptr i64 %t312 to ptr
  %t314 = call ptr @__olang_scope_alloc(ptr %t313, i64 %t311)
  call void @olang_textcopy(ptr %t314, ptr %t303, i64 %t304)
  %t315 = getelementptr i8, ptr %t314, i64 %t304
  call void @olang_textcopy(ptr %t315, ptr %t306, i64 %t307)
  %t316 = getelementptr i8, ptr %t315, i64 %t307
  call void @olang_textcopy(ptr %t316, ptr %t309, i64 %t310)
  %t317 = insertvalue { i64, ptr } undef, i64 %t311, 0
  %t318 = insertvalue { i64, ptr } %t317, ptr %t314, 1
  store { i64, ptr } %t318, ptr %l111, !tbaa !27
  %t319 = load i1, ptr @olang_2esole_2ecompiler__2ftarget__2ecompiler__2ftarget__3aTarget__2eRunner_2elocal_2e12
  br i1 %t319, label %bb67, label %bb68
bb67:
  %t321 = load i64, ptr %l107
  %t322 = inttoptr i64 %t321 to ptr
  %t323 = load { i64, ptr }, ptr %l111
  %t324 = extractvalue { i64, ptr } %t323, 1
  %t325 = call ptr @__olang_region_or(ptr %t324, ptr null)
  %t326 = icmp ne ptr %t325, null
  %t327 = select i1 %t326, ptr %t325, ptr null
  %t328 = icmp eq ptr %t327, %t322
  call void @__olang_region_settle(ptr %t322, i1 %t328)
  br label %bb68
bb68:
  %t329 = load ptr, ptr %lp12
  %t330 = load { i64, ptr }, ptr %t329, !tbaa !27
  store { i64, ptr } %t330, ptr %l113, !tbaa !27
  %t331 = load { i64, ptr }, ptr %l111, !tbaa !27
  %t332 = load ptr, ptr %lp12
  store { i64, ptr } %t331, ptr %t332, !tbaa !27
  %t333 = load i1, ptr @olang_2esole_2ecompiler__2ftarget__2ecompiler__2ftarget__3aTarget__2eRunner_2elocal_2e12
  br i1 %t333, label %bb69, label %bb70
bb69:
  %t335 = load { i64, ptr }, ptr %l113
  %t336 = extractvalue { i64, ptr } %t335, 1
  call void @__olang_region_release(ptr %t336)
  store { i64, ptr } zeroinitializer, ptr %l113
  br label %bb70
bb70:
  br label %bb71
bb71:
  %t337 = load ptr, ptr %lp12
  %t338 = load { i64, ptr }, ptr %t337, !tbaa !27
  %t340 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s11, { i64, ptr } %t338, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d117, i32 0, i32 1) })
  store i1 %t340, ptr %l116
  br label %bb72
bb72:
  %t341 = load i1, ptr %l116, !tbaa !21
  %t342 = xor i1 %t341, true
  br i1 %t342, label %bb73, label %bb74
bb73:
  %t344 = load ptr, ptr %lp1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t344, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d118, i32 0, i32 1) })
  br label %bb75
bb74:
  br label %bb77
bb75:
  %t346 = load ptr, ptr %lp1
  %t347 = load ptr, ptr %lp12
  %t348 = load { i64, ptr }, ptr %t347, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t346, { i64, ptr } %t348)
  br label %bb76
bb76:
  br label %bb77
bb77:
  %t351 = load ptr, ptr %lp1
  %t353 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v1, ptr %v1, ptr %t351)
  store { i64, ptr } %t353, ptr %l122
  br label %bb78
bb78:
  %t354 = load { i64, ptr }, ptr %l122, !tbaa !27
  store { i64, ptr } %t354, ptr %l123, !tbaa !27
  %t355 = load { i64, ptr }, ptr %l123, !tbaa !27
  %t356 = extractvalue { i64, ptr } %t355, 0
  store i64 %t356, ptr %l124, !tbaa !24
  %t357 = load i64, ptr %l124, !tbaa !24
  %t358 = mul i64 %t357, 16
  %t359 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t358)
  %t360 = insertvalue { i64, ptr } undef, i64 %t357, 0
  %t361 = insertvalue { i64, ptr } %t360, ptr %t359, 1
  store { i64, ptr } %t361, ptr %l125, !tbaa !27
  %t362 = getelementptr { i64, ptr }, ptr %l125, i32 0, i32 1
  %t363 = load ptr, ptr %t362, !tbaa !27
  %t364 = getelementptr { i64, ptr }, ptr %l123, i32 0, i32 1
  %t365 = load ptr, ptr %t364, !tbaa !27
  %t366 = load i64, ptr %l124, !tbaa !24
  %t367 = mul i64 %t366, 16
  call void @llvm.memmove.p0.p0.i64(ptr %t363, ptr %t365, i64 %t367, i1 false)
  %t368 = load { i64, ptr }, ptr %l125, !tbaa !27
  store { i64, ptr } %t368, ptr %l123, !tbaa !27
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s0)
  %t369 = load { i64, ptr }, ptr %l123, !tbaa !27
  %t370 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t369, 1
  store { i32, { i64, ptr } } %t370, ptr %rv
  br label %ret
bb79:
  %t371 = load i64, ptr %l8, !tbaa !24
  %t373 = add i64 %t371, 1
  store i64 %t373, ptr %l8, !tbaa !24
  br label %bb47
bb80:
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s0)
  %t376 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t376, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local i1 @compiler_2ftarget_2ecompiler_2ftarget_3aTarget_2ewithoutClang(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca i64
  %l11 = alloca { i64, ptr }
  %l15 = alloca i1
  %l17 = alloca i1
  %l19 = alloca i1
  %l21 = alloca i1
  %l24 = alloca ptr
  %l25 = alloca { i64, ptr }
  %l30 = alloca i64
  %l32 = alloca i1
  %l34 = alloca i1
  %l36 = alloca i1
  %l38 = alloca i1
  %l40 = alloca i1
  %l42 = alloca i64
  %l46 = alloca ptr
  %l49 = alloca { i64, ptr }
  %l53 = alloca { i64, ptr }
  %l55 = alloca ptr
  %l58 = alloca i64
  %l61 = alloca i64
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l4, !tbaa !29
  %t2 = ptrtoint ptr %v0 to i64
  store i64 %t2, ptr %l5, !tbaa !24
  %t3 = load i1, ptr @olang_2esole_2ecompiler_2ftarget_3aTarget_2e1
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = call ptr @__olang_region_make(ptr %v0)
  %t6 = ptrtoint ptr %t5 to i64
  store i64 %t6, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/target:Target", ptr %t7, i32 0, i32 2
  %t10 = load { i64, ptr }, ptr %t9, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t10, 1
  %t13 = extractvalue { i64, ptr } %t10, 0
  %t14 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d119, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d119, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t17 = load i64, ptr %l5
  %t18 = inttoptr i64 %t17 to ptr
  %t19 = call ptr @__olang_scope_alloc(ptr %t18, i64 %t16)
  call void @olang_textcopy(ptr %t19, ptr %t12, i64 %t13)
  %t20 = getelementptr i8, ptr %t19, i64 %t13
  call void @olang_textcopy(ptr %t20, ptr %t14, i64 %t15)
  %t21 = insertvalue { i64, ptr } undef, i64 %t16, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t19, 1
  %t24 = load i64, ptr %l5
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = extractvalue { i64, ptr } %t22, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = mul i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t28)
  call void @llvm.memcpy.p0.p0.i64(ptr %t29, ptr %t27, i64 %t28, i1 false)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  %t32 = load ptr, ptr %l4, !tbaa !29
  %t33 = getelementptr %"compiler/target:Target", ptr %t32, i32 0, i32 1
  %t34 = load { i64, ptr }, ptr %t33, !tbaa !27
  store { i64, ptr } %t34, ptr %l11, !tbaa !27
  %t36 = load ptr, ptr %l4, !tbaa !29
  %t37 = getelementptr %"compiler/target:Target", ptr %t36, i32 0, i32 1
  store { i64, ptr } %t31, ptr %t37, !tbaa !27
  %t38 = load i1, ptr @olang_2esole_2ecompiler_2ftarget_3aTarget_2e1
  br i1 %t38, label %bb3, label %bb4
bb3:
  %t40 = load { i64, ptr }, ptr %l11
  %t41 = extractvalue { i64, ptr } %t40, 1
  call void @__olang_region_release(ptr %t41)
  store { i64, ptr } zeroinitializer, ptr %l11
  br label %bb4
bb4:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/target:Target", ptr %t42, i32 0, i32 2
  %t45 = load { i64, ptr }, ptr %t44, !tbaa !27
  %t47 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t45, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d120, i32 0, i32 1) })
  store i1 %t47, ptr %l15
  br label %bb5
bb5:
  %t48 = load i1, ptr %l15, !tbaa !21
  br i1 %t48, label %bb6, label %bb7
bb6:
  store %olang.scope zeroinitializer, ptr %s2
  %t49 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t51 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s2, { i64, ptr } %t49, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d121, i32 0, i32 1) })
  store i1 %t51, ptr %l17
  br label %bb8
bb7:
  br label %bb18
bb8:
  %t52 = load i1, ptr %l17, !tbaa !21
  %t53 = xor i1 %t52, true
  br i1 %t53, label %bb9, label %bb10
bb9:
  %t55 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t57 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s2, { i64, ptr } %t55, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d122, i32 0, i32 1) })
  store i1 %t57, ptr %l21
  br label %bb11
bb10:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb12
bb11:
  %t58 = load i1, ptr %l21, !tbaa !21
  %t59 = xor i1 %t58, true
  store i1 %t59, ptr %l19, !tbaa !21
  br label %bb12
bb12:
  %t61 = load i1, ptr %l19, !tbaa !21
  br i1 %t61, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t63 = load ptr, ptr %l0, !tbaa !29
  store ptr %t63, ptr %l24, !tbaa !29
  %t64 = load ptr, ptr %l24, !tbaa !29
  %t65 = getelementptr %"compiler/target:Target", ptr %t64, i32 0, i32 4
  %t66 = load { i64, ptr }, ptr %t65, !tbaa !27
  store { i64, ptr } %t66, ptr %l25, !tbaa !27
  %t67 = load ptr, ptr %l24, !tbaa !29
  %t68 = getelementptr %"compiler/target:Target", ptr %t67, i32 0, i32 4
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d123, i32 0, i32 1) }, ptr %t68, !tbaa !27
  %t69 = load i1, ptr @olang_2esole_2ecompiler_2ftarget_3aTarget_2e4
  br i1 %t69, label %bb16, label %bb17
bb16:
  %t71 = load { i64, ptr }, ptr %l25
  %t72 = extractvalue { i64, ptr } %t71, 1
  call void @__olang_region_release(ptr %t72)
  store { i64, ptr } zeroinitializer, ptr %l25
  br label %bb17
bb17:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/target:Target", ptr %t73, i32 0, i32 7
  store i64 128, ptr %t75, !tbaa !24
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/target:Target", ptr %t76, i32 0, i32 8
  store i1 true, ptr %t78, !tbaa !21
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb18:
  %t80 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t82 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t80, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d124, i32 0, i32 1) })
  store i1 %t82, ptr %l32
  br label %bb19
bb19:
  %t83 = load i1, ptr %l32, !tbaa !21
  br i1 %t83, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb23
bb22:
  store i64 1, ptr %l30, !tbaa !24
  br label %bb49
bb23:
  %t84 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t86 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t84, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d125, i32 0, i32 1) })
  store i1 %t86, ptr %l34
  br label %bb24
bb24:
  %t87 = load i1, ptr %l34, !tbaa !21
  br i1 %t87, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  store i64 2, ptr %l30, !tbaa !24
  br label %bb49
bb28:
  %t88 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t90 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t88, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d126, i32 0, i32 1) })
  store i1 %t90, ptr %l36
  br label %bb29
bb29:
  %t91 = load i1, ptr %l36, !tbaa !21
  br i1 %t91, label %bb30, label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb33
bb32:
  store i64 3, ptr %l30, !tbaa !24
  br label %bb49
bb33:
  %t92 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t94 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t92, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d127, i32 0, i32 1) })
  store i1 %t94, ptr %l38
  br label %bb34
bb34:
  %t95 = load i1, ptr %l38, !tbaa !21
  br i1 %t95, label %bb35, label %bb36
bb35:
  br label %bb37
bb36:
  br label %bb38
bb37:
  store i64 4, ptr %l30, !tbaa !24
  br label %bb49
bb38:
  %t96 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t98 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t96, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d128, i32 0, i32 1) })
  store i1 %t98, ptr %l40
  br label %bb39
bb39:
  %t99 = load i1, ptr %l40, !tbaa !21
  br i1 %t99, label %bb40, label %bb41
bb40:
  br label %bb42
bb41:
  br label %bb44
bb42:
  %t102 = call i64 @compiler_2ftarget_2eX86Level(ptr %v2, { i64, ptr } %a2)
  store i64 %t102, ptr %l42
  br label %bb43
bb43:
  %t103 = load i64, ptr %l42, !tbaa !24
  store i64 %t103, ptr %l30, !tbaa !24
  br label %bb49
bb44:
  br i1 true, label %bb45, label %bb46
bb45:
  br label %bb47
bb46:
  br label %bb48
bb47:
  store i64 0, ptr %l30, !tbaa !24
  br label %bb49
bb48:
  call void @__olang_check_failed(ptr @olang_loc_85332b5eb98b88c2_ab57175d397d1606)
  unreachable
bb49:
  %t104 = load i64, ptr %l30, !tbaa !24
  store i64 %t104, ptr %l3, !tbaa !24
  %t105 = load i64, ptr %l3, !tbaa !24
  %t107 = icmp eq i64 %t105, 0
  br i1 %t107, label %bb50, label %bb51
bb50:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb51:
  br label %bb52
bb52:
  %t110 = load ptr, ptr %l0, !tbaa !29
  store ptr %t110, ptr %l46, !tbaa !29
  %t111 = load i64, ptr %l3, !tbaa !24
  %t113 = icmp eq i64 %t111, 1
  br i1 %t113, label %bb53, label %bb54
bb53:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d129, i32 0, i32 1) }, ptr %l49, !tbaa !27
  br label %bb55
bb54:
  %t115 = load i64, ptr %l3, !tbaa !24
  %t116 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d130, i32 0, i32 1) }, 1
  %t117 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d130, i32 0, i32 1) }, 0
  %t119 = call i64 @__olang_fmt_i64(ptr null, i64 %t115)
  %t120 = add i64 %t117, %t119
  %t121 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t120)
  call void @olang_textcopy(ptr %t121, ptr %t116, i64 %t117)
  %t122 = getelementptr i8, ptr %t121, i64 %t117
  %t123 = call i64 @__olang_fmt_i64(ptr %t122, i64 %t115)
  %t124 = insertvalue { i64, ptr } undef, i64 %t120, 0
  %t125 = insertvalue { i64, ptr } %t124, ptr %t121, 1
  %t127 = extractvalue { i64, ptr } %t125, 0
  %t128 = extractvalue { i64, ptr } %t125, 1
  %t129 = mul i64 %t127, 1
  %t130 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t129)
  call void @llvm.memcpy.p0.p0.i64(ptr %t130, ptr %t128, i64 %t129, i1 false)
  %t131 = insertvalue { i64, ptr } undef, i64 %t127, 0
  %t132 = insertvalue { i64, ptr } %t131, ptr %t130, 1
  store { i64, ptr } %t132, ptr %l49, !tbaa !27
  br label %bb55
bb55:
  %t134 = load ptr, ptr %l46, !tbaa !29
  %t135 = getelementptr %"compiler/target:Target", ptr %t134, i32 0, i32 4
  %t136 = load { i64, ptr }, ptr %t135, !tbaa !27
  store { i64, ptr } %t136, ptr %l53, !tbaa !27
  %t137 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t138 = load ptr, ptr %l46, !tbaa !29
  %t139 = getelementptr %"compiler/target:Target", ptr %t138, i32 0, i32 4
  store { i64, ptr } %t137, ptr %t139, !tbaa !27
  %t140 = load i1, ptr @olang_2esole_2ecompiler_2ftarget_3aTarget_2e4
  br i1 %t140, label %bb56, label %bb57
bb56:
  %t142 = load { i64, ptr }, ptr %l53
  %t143 = extractvalue { i64, ptr } %t142, 1
  call void @__olang_region_release(ptr %t143)
  store { i64, ptr } zeroinitializer, ptr %l53
  br label %bb57
bb57:
  %t144 = load ptr, ptr %l0, !tbaa !29
  store ptr %t144, ptr %l55, !tbaa !29
  %t145 = load i64, ptr %l3, !tbaa !24
  %t147 = icmp eq i64 %t145, 4
  br i1 %t147, label %bb58, label %bb59
bb58:
  store i64 512, ptr %l58, !tbaa !24
  br label %bb63
bb59:
  %t149 = load i64, ptr %l3, !tbaa !24
  %t151 = icmp eq i64 %t149, 3
  br i1 %t151, label %bb60, label %bb61
bb60:
  store i64 256, ptr %l61, !tbaa !24
  br label %bb62
bb61:
  store i64 128, ptr %l61, !tbaa !24
  br label %bb62
bb62:
  %t153 = load i64, ptr %l61, !tbaa !24
  store i64 %t153, ptr %l58, !tbaa !24
  br label %bb63
bb63:
  %t154 = load i64, ptr %l58, !tbaa !24
  %t155 = load ptr, ptr %l55, !tbaa !29
  %t156 = getelementptr %"compiler/target:Target", ptr %t155, i32 0, i32 7
  store i64 %t154, ptr %t156, !tbaa !24
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t158 = load i64, ptr %l3, !tbaa !24
  %t160 = icmp sge i64 %t158, 3
  %t163 = getelementptr %"compiler/target:Target", ptr %t157, i32 0, i32 8
  store i1 %t160, ptr %t163, !tbaa !21
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2ftarget_2ecpuFlags(ptr %v0) #0 {
entry:
  %l1 = alloca %"std/prelude/text:LineIter"
  %l2 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i32
  %l8 = alloca i1
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca { i64, ptr }
  %l16 = alloca %"std/prelude/text:LineIter"
  %l17 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l20 = alloca i32
  %l22 = alloca i1
  %l24 = alloca i1
  %l25 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i32
  %l30 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l32 = alloca i64
  %l33 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l36 = alloca i64
  %l39 = alloca i64
  %l40 = alloca i64
  %l45 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l49 = alloca i64
  %l50 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %s0, ptr %s0, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d131, i32 0, i32 1) })
  %t2 = extractvalue { i32, { i64, ptr } } %t1, 1
  %t3 = extractvalue { i32, { i64, ptr } } %t1, 0
  store i32 %t3, ptr %l6
  %t4 = icmp ne i32 %t3, 0
  br i1 %t4, label %bb2, label %ok.5, !prof !99
ok.5:
  store { i64, ptr } %t2, ptr %l5
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t6, ptr %l4, !tbaa !27
  br label %bb6
bb2:
  %t7 = load i32, ptr %l6, !tbaa !23
  %t8 = ashr i32 %t7, 16
  %t10 = icmp eq i32 %t8, 1
  store i1 %t10, ptr %l8, !tbaa !21
  %t11 = load i32, ptr %l6, !tbaa !23
  %t12 = ashr i32 %t11, 16
  %t14 = icmp eq i32 %t12, 1
  br i1 %t14, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d132, i32 0, i32 1) }, ptr %l11, !tbaa !27
  %t16 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t16, ptr %l12, !tbaa !27
  %t17 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t17, 0
  store i64 %t18, ptr %l13, !tbaa !24
  %t19 = load i64, ptr %l13, !tbaa !24
  %t20 = mul i64 %t19, 1
  %t21 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t20)
  %t22 = insertvalue { i64, ptr } undef, i64 %t19, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t21, 1
  store { i64, ptr } %t23, ptr %l14, !tbaa !27
  %t24 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = load i64, ptr %l13, !tbaa !24
  %t29 = mul i64 %t28, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t25, ptr %t27, i64 %t29, i1 false)
  %t30 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t30, ptr %l12, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t31 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t31, ptr %rv
  br label %ret
bb6:
  %t32 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t35 = call %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %s0, ptr %s0, { i64, ptr } %t32)
  store %"std/prelude/text:LineIter" %t35, ptr %l16
  br label %bb7
bb7:
  %t36 = load %"std/prelude/text:LineIter", ptr %l16
  store %"std/prelude/text:LineIter" %t36, ptr %l1
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s3
  %t38 = call { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %s0, ptr %s0, ptr %l1)
  %t39 = extractvalue { i32, { i64, ptr } } %t38, 1
  %t40 = extractvalue { i32, { i64, ptr } } %t38, 0
  store i32 %t40, ptr %l20
  %t41 = icmp ne i32 %t40, 0
  br i1 %t41, label %bb10, label %ok.42, !prof !99
ok.42:
  store { i64, ptr } %t39, ptr %l19
  br label %bb9
bb9:
  %t43 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t43, ptr %l17, !tbaa !27
  br label %bb12
bb10:
  %t44 = load i32, ptr %l20, !tbaa !23
  %t45 = ashr i32 %t44, 16
  %t47 = icmp eq i32 %t45, 1
  store i1 %t47, ptr %l22, !tbaa !21
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s3)
  br label %bb29
bb12:
  %t48 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t48, ptr %l2, !tbaa !27
  %t49 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t51 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s3, { i64, ptr } %t49, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d133, i32 0, i32 1) })
  store i1 %t51, ptr %l24
  br label %bb13
bb13:
  %t52 = load i1, ptr %l24, !tbaa !21
  br i1 %t52, label %bb14, label %bb15
bb14:
  store %olang.scope zeroinitializer, ptr %s4
  %t53 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t56 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %s0, { i64, ptr } %t53, i8 58)
  %t57 = extractvalue { i32, i64 } %t56, 1
  %t58 = extractvalue { i32, i64 } %t56, 0
  store i32 %t58, ptr %l29
  %t59 = icmp ne i32 %t58, 0
  br i1 %t59, label %bb17, label %ok.60, !prof !99
ok.60:
  store i64 %t57, ptr %l28
  br label %bb16
bb15:
  br label %bb27
bb16:
  %t61 = load i64, ptr %l28, !tbaa !24
  store i64 %t61, ptr %l25, !tbaa !24
  br label %bb19
bb17:
  br label %bb18
bb18:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d134, i32 0, i32 1) }, ptr %l30, !tbaa !27
  %t62 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t62, ptr %l31, !tbaa !27
  %t63 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t64 = extractvalue { i64, ptr } %t63, 0
  store i64 %t64, ptr %l32, !tbaa !24
  %t65 = load i64, ptr %l32, !tbaa !24
  %t66 = mul i64 %t65, 1
  %t67 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t66)
  %t68 = insertvalue { i64, ptr } undef, i64 %t65, 0
  %t69 = insertvalue { i64, ptr } %t68, ptr %t67, 1
  store { i64, ptr } %t69, ptr %l33, !tbaa !27
  %t70 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !27
  %t72 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = load i64, ptr %l32, !tbaa !24
  %t75 = mul i64 %t74, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t71, ptr %t73, i64 %t75, i1 false)
  %t76 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t76, ptr %l31, !tbaa !27
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t77 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t77, ptr %rv
  br label %ret
bb19:
  %t78 = load i64, ptr %l25, !tbaa !24
  %t79 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t79, ptr %l34, !tbaa !27
  %t82 = add i64 %t78, 1
  store i64 %t82, ptr %l36, !tbaa !24
  %t83 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t86 = extractvalue { i64, ptr } %t83, 0
  store i64 %t86, ptr %l39, !tbaa !24
  %t87 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t88 = extractvalue { i64, ptr } %t87, 0
  store i64 %t88, ptr %l40, !tbaa !24
  %t89 = load i64, ptr %l36, !tbaa !24
  %t90 = icmp sge i64 %t89, 0
  br i1 %t90, label %bb20, label %bb21
bb20:
  %t92 = load i64, ptr %l36, !tbaa !24
  %t93 = load i64, ptr %l39, !tbaa !24
  %t94 = icmp sle i64 %t92, %t93
  br i1 %t94, label %bb22, label %bb23
bb21:
  call void @__olang_check_failed(ptr @olang_loc_85ddc375a30bdeb4_680b0f1997dc0f98)
  unreachable
bb22:
  %t96 = load i64, ptr %l39, !tbaa !24
  %t97 = load i64, ptr %l40, !tbaa !24
  %t98 = icmp sle i64 %t96, %t97
  br i1 %t98, label %bb24, label %bb25
bb23:
  call void @__olang_check_failed(ptr @olang_loc_85ddc375a30bdeb4_680b0f1997dc0f98)
  unreachable
bb24:
  %t100 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t101 = load ptr, ptr %t100, !tbaa !27
  %t102 = load i64, ptr %l36, !tbaa !24
  %t103 = load i64, ptr %l39, !tbaa !24
  %t104 = getelementptr i8, ptr %t101, i64 %t102
  %t105 = sub i64 %t103, %t102
  %t106 = insertvalue { i64, ptr } undef, i64 %t105, 0
  %t107 = insertvalue { i64, ptr } %t106, ptr %t104, 1
  %t109 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %s0, ptr %s4, { i64, ptr } %t107)
  store { i64, ptr } %t109, ptr %l45
  br label %bb26
bb25:
  call void @__olang_check_failed(ptr @olang_loc_85ddc375a30bdeb4_680b0f1997dc0f98)
  unreachable
bb26:
  %t110 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d135, i32 0, i32 1) }, 1
  %t111 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d135, i32 0, i32 1) }, 0
  %t112 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t113 = extractvalue { i64, ptr } %t112, 1
  %t114 = extractvalue { i64, ptr } %t112, 0
  %t115 = add i64 %t111, %t114
  %t116 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d136, i32 0, i32 1) }, 1
  %t117 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d136, i32 0, i32 1) }, 0
  %t118 = add i64 %t115, %t117
  %t119 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t118)
  call void @olang_textcopy(ptr %t119, ptr %t110, i64 %t111)
  %t120 = getelementptr i8, ptr %t119, i64 %t111
  call void @olang_textcopy(ptr %t120, ptr %t113, i64 %t114)
  %t121 = getelementptr i8, ptr %t120, i64 %t114
  call void @olang_textcopy(ptr %t121, ptr %t116, i64 %t117)
  %t122 = insertvalue { i64, ptr } undef, i64 %t118, 0
  %t123 = insertvalue { i64, ptr } %t122, ptr %t119, 1
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t123, ptr %rv
  br label %ret
bb27:
  call void @__olang_scope_close(ptr %s3)
  br label %bb28
bb28:
  br label %bb8
bb29:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d137, i32 0, i32 1) }, ptr %l47, !tbaa !27
  %t125 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t125, ptr %l48, !tbaa !27
  %t126 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t127 = extractvalue { i64, ptr } %t126, 0
  store i64 %t127, ptr %l49, !tbaa !24
  %t128 = load i64, ptr %l49, !tbaa !24
  %t129 = mul i64 %t128, 1
  %t130 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t129)
  %t131 = insertvalue { i64, ptr } undef, i64 %t128, 0
  %t132 = insertvalue { i64, ptr } %t131, ptr %t130, 1
  store { i64, ptr } %t132, ptr %l50, !tbaa !27
  %t133 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t134 = load ptr, ptr %t133, !tbaa !27
  %t135 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t136 = load ptr, ptr %t135, !tbaa !27
  %t137 = load i64, ptr %l49, !tbaa !24
  %t138 = mul i64 %t137, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t134, ptr %t136, i64 %t138, i1 false)
  %t139 = load { i64, ptr }, ptr %l50, !tbaa !27
  store { i64, ptr } %t139, ptr %l48, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t140 = load { i64, ptr }, ptr %l48, !tbaa !27
  store { i64, ptr } %t140, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2ftarget_2ecpuModel(ptr %v0) #0 {
entry:
  %l1 = alloca %"std/prelude/text:LineIter"
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i32
  %l7 = alloca i1
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %l15 = alloca %"std/prelude/text:LineIter"
  %l16 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l19 = alloca i32
  %l21 = alloca i1
  %l23 = alloca i1
  %l26 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l28 = alloca i64
  %l29 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %s0, ptr %s0, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d138, i32 0, i32 1) })
  %t2 = extractvalue { i32, { i64, ptr } } %t1, 1
  %t3 = extractvalue { i32, { i64, ptr } } %t1, 0
  store i32 %t3, ptr %l5
  %t4 = icmp ne i32 %t3, 0
  br i1 %t4, label %bb2, label %ok.5, !prof !99
ok.5:
  store { i64, ptr } %t2, ptr %l4
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t6, ptr %l3, !tbaa !27
  br label %bb6
bb2:
  %t7 = load i32, ptr %l5, !tbaa !23
  %t8 = ashr i32 %t7, 16
  %t10 = icmp eq i32 %t8, 1
  store i1 %t10, ptr %l7, !tbaa !21
  %t11 = load i32, ptr %l5, !tbaa !23
  %t12 = ashr i32 %t11, 16
  %t14 = icmp eq i32 %t12, 1
  br i1 %t14, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d139, i32 0, i32 1) }, ptr %l10, !tbaa !27
  %t16 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t16, ptr %l11, !tbaa !27
  %t17 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t17, 0
  store i64 %t18, ptr %l12, !tbaa !24
  %t19 = load i64, ptr %l12, !tbaa !24
  %t20 = mul i64 %t19, 1
  %t21 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t20)
  %t22 = insertvalue { i64, ptr } undef, i64 %t19, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t21, 1
  store { i64, ptr } %t23, ptr %l13, !tbaa !27
  %t24 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = load i64, ptr %l12, !tbaa !24
  %t29 = mul i64 %t28, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t25, ptr %t27, i64 %t29, i1 false)
  %t30 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t30, ptr %l11, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t31 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t31, ptr %rv
  br label %ret
bb6:
  %t32 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t35 = call %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %s0, ptr %s0, { i64, ptr } %t32)
  store %"std/prelude/text:LineIter" %t35, ptr %l15
  br label %bb7
bb7:
  %t36 = load %"std/prelude/text:LineIter", ptr %l15
  store %"std/prelude/text:LineIter" %t36, ptr %l1
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s3
  %t38 = call { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %s0, ptr %s0, ptr %l1)
  %t39 = extractvalue { i32, { i64, ptr } } %t38, 1
  %t40 = extractvalue { i32, { i64, ptr } } %t38, 0
  store i32 %t40, ptr %l19
  %t41 = icmp ne i32 %t40, 0
  br i1 %t41, label %bb10, label %ok.42, !prof !99
ok.42:
  store { i64, ptr } %t39, ptr %l18
  br label %bb9
bb9:
  %t43 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t43, ptr %l16, !tbaa !27
  br label %bb12
bb10:
  %t44 = load i32, ptr %l19, !tbaa !23
  %t45 = ashr i32 %t44, 16
  %t47 = icmp eq i32 %t45, 1
  store i1 %t47, ptr %l21, !tbaa !21
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s3)
  br label %bb18
bb12:
  %t48 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t48, ptr %l2, !tbaa !27
  %t49 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t51 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s3, { i64, ptr } %t49, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d140, i32 0, i32 1) })
  store i1 %t51, ptr %l23
  br label %bb13
bb13:
  %t52 = load i1, ptr %l23, !tbaa !21
  br i1 %t52, label %bb14, label %bb15
bb14:
  %t53 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t55 = extractvalue { i64, ptr } %t53, 1
  %t56 = extractvalue { i64, ptr } %t53, 0
  %t57 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t56)
  call void @olang_textcopy(ptr %t57, ptr %t55, i64 %t56)
  %t58 = insertvalue { i64, ptr } undef, i64 %t56, 0
  %t59 = insertvalue { i64, ptr } %t58, ptr %t57, 1
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t59, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s3)
  br label %bb17
bb17:
  br label %bb8
bb18:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d141, i32 0, i32 1) }, ptr %l26, !tbaa !27
  %t61 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t61, ptr %l27, !tbaa !27
  %t62 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t63 = extractvalue { i64, ptr } %t62, 0
  store i64 %t63, ptr %l28, !tbaa !24
  %t64 = load i64, ptr %l28, !tbaa !24
  %t65 = mul i64 %t64, 1
  %t66 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t65)
  %t67 = insertvalue { i64, ptr } undef, i64 %t64, 0
  %t68 = insertvalue { i64, ptr } %t67, ptr %t66, 1
  store { i64, ptr } %t68, ptr %l29, !tbaa !27
  %t69 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !27
  %t71 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !27
  %t73 = load i64, ptr %l28, !tbaa !24
  %t74 = mul i64 %t73, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t70, ptr %t72, i64 %t74, i1 false)
  %t75 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t75, ptr %l27, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t76 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t76, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2ftarget_2eexecutable(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l4 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call { i64, ptr } @compiler_2ftarget_2ewhereIs(ptr %v0, ptr %s0, { i64, ptr } %a0)
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
  %t12 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t10, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d142, i32 0, i32 1) })
  store i1 %t12, ptr %l4
  br label %bb2
bb2:
  %t13 = load i1, ptr %l4, !tbaa !21
  %t14 = xor i1 %t13, true
  call void @__olang_scope_close(ptr %s0)
  store i1 %t14, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i32, { i64, ptr } } @compiler_2ftarget_2efield(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l3 = alloca i64
  %l5 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i32
  %l15 = alloca i64
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i32
  %l30 = alloca { i64, ptr }
  %l31 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i64
  %rv = alloca { i32, { i64, ptr } }
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t2 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t5 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v1, { i64, ptr } %t1, { i64, ptr } %t2)
  %t6 = extractvalue { i32, i64 } %t5, 1
  %t7 = extractvalue { i32, i64 } %t5, 0
  store i32 %t7, ptr %l9
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb2, label %ok.9, !prof !99
ok.9:
  store i64 %t6, ptr %l8
  br label %bb1
bb1:
  %t10 = load i64, ptr %l8, !tbaa !24
  store i64 %t10, ptr %l5, !tbaa !24
  br label %bb3
bb2:
  %t11 = load i32, ptr %l9, !tbaa !23
  %t12 = lshr i32 %t11, 16
  %t13 = and i32 %t11, 65535
  %t14 = icmp eq i32 %t12, 1
  %t15 = select i1 %t14, i32 1, i32 0
  %t16 = icmp eq i32 %t11, 0
  %t17 = shl i32 %t15, 16
  %t18 = or i32 %t17, %t13
  %t19 = select i1 %t16, i32 0, i32 %t18
  %t21 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t19, 0
  store { i32, { i64, ptr } } %t21, ptr %rv
  br label %ret
bb3:
  %t22 = load i64, ptr %l5, !tbaa !24
  %t24 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t24, 0
  %t29 = add i64 %t22, %t26
  store i64 %t29, ptr %l3, !tbaa !24
  %t31 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t31, ptr %l16, !tbaa !27
  %t32 = load i64, ptr %l3, !tbaa !24
  store i64 %t32, ptr %l17, !tbaa !24
  %t33 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t36 = extractvalue { i64, ptr } %t33, 0
  store i64 %t36, ptr %l20, !tbaa !24
  %t37 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t38 = extractvalue { i64, ptr } %t37, 0
  store i64 %t38, ptr %l21, !tbaa !24
  %t39 = load i64, ptr %l17, !tbaa !24
  %t40 = icmp sge i64 %t39, 0
  br i1 %t40, label %bb4, label %bb5
bb4:
  %t42 = load i64, ptr %l17, !tbaa !24
  %t43 = load i64, ptr %l20, !tbaa !24
  %t44 = icmp sle i64 %t42, %t43
  br i1 %t44, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_1252e266118faa7_9a8543fc9009ce13)
  unreachable
bb6:
  %t46 = load i64, ptr %l20, !tbaa !24
  %t47 = load i64, ptr %l21, !tbaa !24
  %t48 = icmp sle i64 %t46, %t47
  br i1 %t48, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_1252e266118faa7_9a8543fc9009ce13)
  unreachable
bb8:
  %t50 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !27
  %t52 = load i64, ptr %l17, !tbaa !24
  %t53 = load i64, ptr %l20, !tbaa !24
  %t54 = getelementptr i8, ptr %t51, i64 %t52
  %t55 = sub i64 %t53, %t52
  %t56 = insertvalue { i64, ptr } undef, i64 %t55, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t54, 1
  %t60 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v0, { i64, ptr } %t57, i8 34)
  %t61 = extractvalue { i32, i64 } %t60, 1
  %t62 = extractvalue { i32, i64 } %t60, 0
  store i32 %t62, ptr %l28
  %t63 = icmp ne i32 %t62, 0
  br i1 %t63, label %bb11, label %ok.64, !prof !99
ok.64:
  store i64 %t61, ptr %l27
  br label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_1252e266118faa7_9a8543fc9009ce13)
  unreachable
bb10:
  %t65 = load i64, ptr %l27, !tbaa !24
  store i64 %t65, ptr %l15, !tbaa !24
  br label %bb12
bb11:
  %t66 = load i32, ptr %l28, !tbaa !23
  %t67 = lshr i32 %t66, 16
  %t68 = and i32 %t66, 65535
  %t69 = icmp eq i32 %t67, 1
  %t70 = select i1 %t69, i32 1, i32 0
  %t71 = icmp eq i32 %t66, 0
  %t72 = shl i32 %t70, 16
  %t73 = or i32 %t72, %t68
  %t74 = select i1 %t71, i32 0, i32 %t73
  %t76 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t74, 0
  store { i32, { i64, ptr } } %t76, ptr %rv
  br label %ret
bb12:
  %t77 = load i64, ptr %l15, !tbaa !24
  %t78 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t78, ptr %l30, !tbaa !27
  %t79 = load i64, ptr %l3, !tbaa !24
  store i64 %t79, ptr %l31, !tbaa !24
  %t80 = load i64, ptr %l3, !tbaa !24
  %t84 = add i64 %t80, %t77
  store i64 %t84, ptr %l34, !tbaa !24
  %t85 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t86 = extractvalue { i64, ptr } %t85, 0
  store i64 %t86, ptr %l35, !tbaa !24
  %t87 = load i64, ptr %l31, !tbaa !24
  %t88 = icmp sge i64 %t87, 0
  br i1 %t88, label %bb13, label %bb14
bb13:
  %t90 = load i64, ptr %l31, !tbaa !24
  %t91 = load i64, ptr %l34, !tbaa !24
  %t92 = icmp sle i64 %t90, %t91
  br i1 %t92, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_50955429569277ca_9a744de1378669b6)
  unreachable
bb15:
  %t94 = load i64, ptr %l34, !tbaa !24
  %t95 = load i64, ptr %l35, !tbaa !24
  %t96 = icmp sle i64 %t94, %t95
  br i1 %t96, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_50955429569277ca_9a744de1378669b6)
  unreachable
bb17:
  %t98 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !27
  %t100 = load i64, ptr %l31, !tbaa !24
  %t101 = load i64, ptr %l34, !tbaa !24
  %t102 = getelementptr i8, ptr %t99, i64 %t100
  %t103 = sub i64 %t101, %t100
  %t104 = insertvalue { i64, ptr } undef, i64 %t103, 0
  %t105 = insertvalue { i64, ptr } %t104, ptr %t102, 1
  %t107 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t105, 1
  store { i32, { i64, ptr } } %t107, ptr %rv
  br label %ret
bb18:
  call void @__olang_check_failed(ptr @olang_loc_50955429569277ca_9a744de1378669b6)
  unreachable
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i64, ptr } @compiler_2ftarget_2emistake(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, i1 %a2, { i64, ptr } %a3, { i64, ptr } %a4) #0 {
entry:
  %l5 = alloca %"compiler/diag:Diagnostics"
  %l6 = alloca %"compiler/diag:Diagnostics"
  %l7 = alloca %"compiler/target:Target"
  %l14 = alloca %"compiler/target:Target"
  %l15 = alloca i32
  %l17 = alloca i1
  %l19 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l22 = alloca i64
  %l23 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t1 = alloca %"compiler/diag:Diagnostics", align 8
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  call void @compiler_2ftarget_2equiet(ptr %t1, ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %l6, ptr %t1, i64 704, i1 false)
  br label %bb1
bb1:
  call void @llvm.memmove.p0.p0.i64(ptr %l5, ptr %l6, i64 704, i1 false)
  %t13 = call { i32, %"compiler/target:Target" } @compiler_2ftarget_2eTarget_2eResolveOn(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %a0, { i64, ptr } %a1, i1 %a2, { i64, ptr } %a3, { i64, ptr } %a4, ptr %l5, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d143, i32 0, i32 1) })
  %t14 = extractvalue { i32, %"compiler/target:Target" } %t13, 1
  %t15 = extractvalue { i32, %"compiler/target:Target" } %t13, 0
  store i32 %t15, ptr %l15
  %t16 = icmp ne i32 %t15, 0
  br i1 %t16, label %bb3, label %ok.17, !prof !99
ok.17:
  store %"compiler/target:Target" %t14, ptr %l14
  br label %bb2
bb2:
  %t18 = load %"compiler/target:Target", ptr %l14
  store %"compiler/target:Target" %t18, ptr %l7
  br label %bb6
bb3:
  %t19 = load i32, ptr %l15, !tbaa !23
  %t20 = ashr i32 %t19, 16
  %t22 = icmp eq i32 %t20, 1
  store i1 %t22, ptr %l17, !tbaa !21
  br label %bb4
bb4:
  %t24 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eRender(ptr %s0, ptr %v4, ptr %l5)
  store { i64, ptr } %t24, ptr %l19
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  %t25 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t25, ptr %rv
  br label %ret
bb6:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d144, i32 0, i32 1) }, ptr %l20, !tbaa !27
  %t26 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t26, ptr %l21, !tbaa !27
  %t27 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t28 = extractvalue { i64, ptr } %t27, 0
  store i64 %t28, ptr %l22, !tbaa !24
  %t29 = load i64, ptr %l22, !tbaa !24
  %t30 = mul i64 %t29, 1
  %t31 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t30)
  %t32 = insertvalue { i64, ptr } undef, i64 %t29, 0
  %t33 = insertvalue { i64, ptr } %t32, ptr %t31, 1
  store { i64, ptr } %t33, ptr %l23, !tbaa !27
  %t34 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !27
  %t36 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !27
  %t38 = load i64, ptr %l22, !tbaa !24
  %t39 = mul i64 %t38, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t35, ptr %t37, i64 %t39, i1 false)
  %t40 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t40, ptr %l21, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t41 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t41, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2ftarget_2eprobeDir(ptr %v0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i32
  %l8 = alloca i1
  %l12 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l14 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %s0, ptr %s0, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d145, i32 0, i32 1) })
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d146, i32 0, i32 1) }, ptr %l2, !tbaa !27
  br label %bb6
bb6:
  %t12 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t12, ptr %l0, !tbaa !27
  %t13 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t15 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t13, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d147, i32 0, i32 1) })
  store i1 %t15, ptr %l8
  br label %bb7
bb7:
  %t16 = load i1, ptr %l8, !tbaa !21
  %t17 = xor i1 %t16, true
  br i1 %t17, label %bb8, label %bb9
bb8:
  %t19 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t19, 1
  %t22 = extractvalue { i64, ptr } %t19, 0
  %t23 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d148, i32 0, i32 1) }, 1
  %t24 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d148, i32 0, i32 1) }, 0
  %t25 = add i64 %t22, %t24
  %t26 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t25)
  call void @olang_textcopy(ptr %t26, ptr %t21, i64 %t22)
  %t27 = getelementptr i8, ptr %t26, i64 %t22
  call void @olang_textcopy(ptr %t27, ptr %t23, i64 %t24)
  %t28 = insertvalue { i64, ptr } undef, i64 %t25, 0
  %t29 = insertvalue { i64, ptr } %t28, ptr %t26, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t29, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t31 = call { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %s0, ptr %s0, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d149, i32 0, i32 1) })
  %t32 = extractvalue { i32, { i64, ptr } } %t31, 1
  %t33 = extractvalue { i32, { i64, ptr } } %t31, 0
  store i32 %t33, ptr %l14
  %t34 = icmp ne i32 %t33, 0
  br i1 %t34, label %bb12, label %ok.35, !prof !99
ok.35:
  store { i64, ptr } %t32, ptr %l13
  br label %bb11
bb11:
  %t36 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t36, ptr %l12, !tbaa !27
  br label %bb16
bb12:
  %t37 = load i32, ptr %l14, !tbaa !23
  %t38 = ashr i32 %t37, 16
  %t40 = icmp eq i32 %t38, 1
  br i1 %t40, label %bb13, label %bb14
bb13:
  call void @__olang_errpay_pop()
  br label %bb14
bb14:
  br label %bb15
bb15:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d150, i32 0, i32 1) }, ptr %l12, !tbaa !27
  br label %bb16
bb16:
  %t42 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t42, 1
  %t46 = extractvalue { i64, ptr } %t42, 0
  %t47 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d151, i32 0, i32 1) }, 1
  %t48 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d151, i32 0, i32 1) }, 0
  %t49 = add i64 %t46, %t48
  %t50 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t49)
  call void @olang_textcopy(ptr %t50, ptr %t45, i64 %t46)
  %t51 = getelementptr i8, ptr %t50, i64 %t46
  call void @olang_textcopy(ptr %t51, ptr %t47, i64 %t48)
  %t52 = insertvalue { i64, ptr } undef, i64 %t49, 0
  %t53 = insertvalue { i64, ptr } %t52, ptr %t50, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t53, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2ftarget_2eprobeKey(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca %"std/os:FileInfo"
  %l5 = alloca %"std/prelude/text:StringBuilder"
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l13 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l21 = alloca i1
  %l22 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l24 = alloca i64
  %l25 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l29 = alloca i32
  %l32 = alloca %"std/os:FileInfo"
  %l34 = alloca %"std/os:FileInfo"
  %l35 = alloca i32
  %l37 = alloca i1
  %l40 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  %l42 = alloca i64
  %l43 = alloca { i64, ptr }
  %l44 = alloca %"std/prelude/text:StringBuilder"
  %l51 = alloca { i64, ptr }
  %l54 = alloca i64
  %l55 = alloca i64
  %l66 = alloca { i64, ptr }
  %l75 = alloca ptr
  %l77 = alloca i64
  %l78 = alloca { i64, ptr }
  %l79 = alloca { i64, ptr }
  %l80 = alloca { i64, ptr }
  %l84 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp eq i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d152, i32 0, i32 1) }, ptr %l13, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t7, ptr %l14, !tbaa !27
  %t8 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t8, 0
  store i64 %t9, ptr %l15, !tbaa !24
  %t10 = load i64, ptr %l15, !tbaa !24
  %t11 = mul i64 %t10, 1
  %t12 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t11)
  %t13 = insertvalue { i64, ptr } undef, i64 %t10, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr %t12, 1
  store { i64, ptr } %t14, ptr %l16, !tbaa !27
  %t15 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !27
  %t17 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !27
  %t19 = load i64, ptr %l15, !tbaa !24
  %t20 = mul i64 %t19, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t16, ptr %t18, i64 %t20, i1 false)
  %t21 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t21, ptr %l14, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t22 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t22, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t23 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t23, ptr %l17, !tbaa !27
  %t24 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr { i64, ptr }, ptr %t25, i64 0
  %t27 = load { i64, ptr }, ptr %t26, !tbaa !37
  %t29 = call { i64, ptr } @compiler_2ftarget_2ewhereIs(ptr %v0, ptr %s0, { i64, ptr } %t27)
  store { i64, ptr } %t29, ptr %l19
  br label %bb4
bb4:
  %t30 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t30, ptr %l2, !tbaa !27
  %t31 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t33 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t31, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d153, i32 0, i32 1) })
  store i1 %t33, ptr %l21
  br label %bb5
bb5:
  %t34 = load i1, ptr %l21, !tbaa !21
  br i1 %t34, label %bb6, label %bb7
bb6:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d154, i32 0, i32 1) }, ptr %l22, !tbaa !27
  %t35 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t35, ptr %l23, !tbaa !27
  %t36 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t36, 0
  store i64 %t37, ptr %l24, !tbaa !24
  %t38 = load i64, ptr %l24, !tbaa !24
  %t39 = mul i64 %t38, 1
  %t40 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t39)
  %t41 = insertvalue { i64, ptr } undef, i64 %t38, 0
  %t42 = insertvalue { i64, ptr } %t41, ptr %t40, 1
  store { i64, ptr } %t42, ptr %l25, !tbaa !27
  %t43 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !27
  %t45 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !27
  %t47 = load i64, ptr %l24, !tbaa !24
  %t48 = mul i64 %t47, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t44, ptr %t46, i64 %t48, i1 false)
  %t49 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t49, ptr %l23, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t50 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t50, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t51 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t53 = call { i32, { i64, ptr } } @std_2fos_2eRealPath(ptr %s0, ptr %s0, { i64, ptr } %t51)
  %t54 = extractvalue { i32, { i64, ptr } } %t53, 1
  %t55 = extractvalue { i32, { i64, ptr } } %t53, 0
  store i32 %t55, ptr %l29
  %t56 = icmp ne i32 %t55, 0
  br i1 %t56, label %bb10, label %ok.57, !prof !99
ok.57:
  store { i64, ptr } %t54, ptr %l28
  br label %bb9
bb9:
  %t58 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t58, ptr %l26, !tbaa !27
  br label %bb14
bb10:
  %t59 = load i32, ptr %l29, !tbaa !23
  %t60 = ashr i32 %t59, 16
  %t62 = icmp eq i32 %t60, 1
  br i1 %t62, label %bb11, label %bb12
bb11:
  call void @__olang_errpay_pop()
  br label %bb12
bb12:
  br label %bb13
bb13:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d155, i32 0, i32 1) }, ptr %l26, !tbaa !27
  br label %bb14
bb14:
  %t64 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t64, ptr %l3, !tbaa !27
  %t65 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t67 = call { i32, %"std/os:FileInfo" } @std_2fos_2eFileInfo_2eStat(ptr %s0, { i64, ptr } %t65)
  %t68 = extractvalue { i32, %"std/os:FileInfo" } %t67, 1
  %t69 = extractvalue { i32, %"std/os:FileInfo" } %t67, 0
  store i32 %t69, ptr %l35
  %t70 = icmp ne i32 %t69, 0
  br i1 %t70, label %bb16, label %ok.71, !prof !99
ok.71:
  store %"std/os:FileInfo" %t68, ptr %l34
  br label %bb15
bb15:
  %t72 = load %"std/os:FileInfo", ptr %l34
  store %"std/os:FileInfo" %t72, ptr %l32
  br label %bb20
bb16:
  %t73 = load i32, ptr %l35, !tbaa !23
  %t74 = ashr i32 %t73, 16
  %t76 = icmp eq i32 %t74, 1
  store i1 %t76, ptr %l37, !tbaa !21
  %t77 = load i32, ptr %l35, !tbaa !23
  %t78 = ashr i32 %t77, 16
  %t80 = icmp eq i32 %t78, 1
  br i1 %t80, label %bb17, label %bb18
bb17:
  call void @__olang_errpay_pop()
  br label %bb18
bb18:
  br label %bb19
bb19:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d156, i32 0, i32 1) }, ptr %l40, !tbaa !27
  %t82 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t82, ptr %l41, !tbaa !27
  %t83 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t84 = extractvalue { i64, ptr } %t83, 0
  store i64 %t84, ptr %l42, !tbaa !24
  %t85 = load i64, ptr %l42, !tbaa !24
  %t86 = mul i64 %t85, 1
  %t87 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t86)
  %t88 = insertvalue { i64, ptr } undef, i64 %t85, 0
  %t89 = insertvalue { i64, ptr } %t88, ptr %t87, 1
  store { i64, ptr } %t89, ptr %l43, !tbaa !27
  %t90 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !27
  %t92 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t93 = load ptr, ptr %t92, !tbaa !27
  %t94 = load i64, ptr %l42, !tbaa !24
  %t95 = mul i64 %t94, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t91, ptr %t93, i64 %t95, i1 false)
  %t96 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t96, ptr %l41, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t97 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t97, ptr %rv
  br label %ret
bb20:
  %t98 = load %"std/os:FileInfo", ptr %l32
  store %"std/os:FileInfo" %t98, ptr %l4
  %t99 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t99, ptr %l44
  br label %bb21
bb21:
  %t100 = load %"std/prelude/text:StringBuilder", ptr %l44
  store %"std/prelude/text:StringBuilder" %t100, ptr %l5
  %t101 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t102 = getelementptr %"std/os:FileInfo", ptr %l4, i32 0, i32 1
  %t103 = load i64, ptr %t102, !tbaa !24
  %t104 = getelementptr %"std/os:FileInfo", ptr %l4, i32 0, i32 2
  %t105 = load i64, ptr %t104, !tbaa !24
  %t106 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d157, i32 0, i32 1) }, 1
  %t107 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d157, i32 0, i32 1) }, 0
  %t109 = extractvalue { i64, ptr } %t101, 1
  %t110 = extractvalue { i64, ptr } %t101, 0
  %t111 = add i64 %t107, %t110
  %t112 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d158, i32 0, i32 1) }, 1
  %t113 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d158, i32 0, i32 1) }, 0
  %t114 = add i64 %t111, %t113
  %t116 = call i64 @__olang_fmt_i64(ptr null, i64 %t103)
  %t117 = add i64 %t114, %t116
  %t118 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d158, i32 0, i32 1) }, 1
  %t119 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d158, i32 0, i32 1) }, 0
  %t120 = add i64 %t117, %t119
  %t122 = call i64 @__olang_fmt_i64(ptr null, i64 %t105)
  %t123 = add i64 %t120, %t122
  %t124 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d159, i32 0, i32 1) }, 1
  %t125 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d159, i32 0, i32 1) }, 0
  %t126 = add i64 %t123, %t125
  %t127 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t126)
  call void @olang_textcopy(ptr %t127, ptr %t106, i64 %t107)
  %t128 = getelementptr i8, ptr %t127, i64 %t107
  call void @olang_textcopy(ptr %t128, ptr %t109, i64 %t110)
  %t129 = getelementptr i8, ptr %t128, i64 %t110
  call void @olang_textcopy(ptr %t129, ptr %t112, i64 %t113)
  %t130 = getelementptr i8, ptr %t129, i64 %t113
  %t131 = call i64 @__olang_fmt_i64(ptr %t130, i64 %t103)
  %t132 = getelementptr i8, ptr %t130, i64 %t116
  call void @olang_textcopy(ptr %t132, ptr %t118, i64 %t119)
  %t133 = getelementptr i8, ptr %t132, i64 %t119
  %t134 = call i64 @__olang_fmt_i64(ptr %t133, i64 %t105)
  %t135 = getelementptr i8, ptr %t133, i64 %t122
  call void @olang_textcopy(ptr %t135, ptr %t124, i64 %t125)
  %t136 = insertvalue { i64, ptr } undef, i64 %t126, 0
  %t137 = insertvalue { i64, ptr } %t136, ptr %t127, 1
  %t139 = extractvalue { i64, ptr } %t137, 0
  %t140 = extractvalue { i64, ptr } %t137, 1
  %t141 = mul i64 %t139, 1
  %t142 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t141)
  call void @llvm.memcpy.p0.p0.i64(ptr %t142, ptr %t140, i64 %t141, i1 false)
  %t143 = insertvalue { i64, ptr } undef, i64 %t139, 0
  %t144 = insertvalue { i64, ptr } %t143, ptr %t142, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l5, { i64, ptr } %t144)
  br label %bb22
bb22:
  %t147 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t147, ptr %l51, !tbaa !27
  %t148 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t151 = extractvalue { i64, ptr } %t148, 0
  store i64 %t151, ptr %l54, !tbaa !24
  %t152 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t153 = extractvalue { i64, ptr } %t152, 0
  store i64 %t153, ptr %l55, !tbaa !24
  %t154 = icmp sge i64 1, 0
  br i1 %t154, label %bb23, label %bb24
bb23:
  %t156 = load i64, ptr %l54, !tbaa !24
  %t157 = icmp sle i64 1, %t156
  br i1 %t157, label %bb25, label %bb26
bb24:
  call void @__olang_check_failed(ptr @olang_loc_1bb6927ebf4fa198_42e84c5a8eaa23b4)
  unreachable
bb25:
  %t159 = load i64, ptr %l54, !tbaa !24
  %t160 = load i64, ptr %l55, !tbaa !24
  %t161 = icmp sle i64 %t159, %t160
  br i1 %t161, label %bb27, label %bb28
bb26:
  call void @__olang_check_failed(ptr @olang_loc_1bb6927ebf4fa198_42e84c5a8eaa23b4)
  unreachable
bb27:
  %t163 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t164 = load ptr, ptr %t163, !tbaa !27
  %t165 = load i64, ptr %l54, !tbaa !24
  %t166 = getelementptr { i64, ptr }, ptr %t164, i64 1
  %t167 = sub i64 %t165, 1
  %t168 = insertvalue { i64, ptr } undef, i64 %t167, 0
  %t169 = insertvalue { i64, ptr } %t168, ptr %t166, 1
  store { i64, ptr } %t169, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t171 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t173 = extractvalue { i64, ptr } %t171, 0
  store i64 %t173, ptr %l8, !tbaa !24
  br label %bb29
bb28:
  call void @__olang_check_failed(ptr @olang_loc_1bb6927ebf4fa198_42e84c5a8eaa23b4)
  unreachable
bb29:
  store %olang.scope zeroinitializer, ptr %s6
  %t175 = load i64, ptr %l7, !tbaa !24
  %t176 = load i64, ptr %l8, !tbaa !24
  %t179 = icmp slt i64 %t175, %t176
  %t181 = xor i1 %t179, true
  br i1 %t181, label %bb30, label %bb31
bb30:
  call void @__olang_scope_close(ptr %s6)
  br label %bb35
bb31:
  br label %bb32
bb32:
  %t183 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t183, ptr %l66, !tbaa !27
  %t184 = load i64, ptr %l7, !tbaa !24
  %t186 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t187 = load ptr, ptr %t186, !tbaa !27
  %t188 = getelementptr { i64, ptr }, ptr %t187, i64 %t184
  %t189 = load { i64, ptr }, ptr %t188, !tbaa !37
  %t193 = extractvalue { i64, ptr } %t189, 1
  %t194 = extractvalue { i64, ptr } %t189, 0
  %t195 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d160, i32 0, i32 1) }, 1
  %t196 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d160, i32 0, i32 1) }, 0
  %t197 = add i64 %t194, %t196
  %t198 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t197)
  call void @olang_textcopy(ptr %t198, ptr %t193, i64 %t194)
  %t199 = getelementptr i8, ptr %t198, i64 %t194
  call void @olang_textcopy(ptr %t199, ptr %t195, i64 %t196)
  %t200 = insertvalue { i64, ptr } undef, i64 %t197, 0
  %t201 = insertvalue { i64, ptr } %t200, ptr %t198, 1
  %t203 = extractvalue { i64, ptr } %t201, 0
  %t204 = extractvalue { i64, ptr } %t201, 1
  %t205 = mul i64 %t203, 1
  %t206 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t205)
  call void @llvm.memcpy.p0.p0.i64(ptr %t206, ptr %t204, i64 %t205, i1 false)
  %t207 = insertvalue { i64, ptr } undef, i64 %t203, 0
  %t208 = insertvalue { i64, ptr } %t207, ptr %t206, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s6, ptr %l5, { i64, ptr } %t208)
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s6)
  br label %bb34
bb34:
  %t211 = load i64, ptr %l7, !tbaa !24
  %t213 = add i64 %t211, 1
  store i64 %t213, ptr %l7, !tbaa !24
  br label %bb29
bb35:
  store ptr %l5, ptr %l75, !tbaa !29
  %t215 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t217 = extractvalue { i64, ptr } %t215, 0
  store i64 %t217, ptr %l77, !tbaa !24
  %t218 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t218, ptr %l78, !tbaa !27
  %t219 = call { i64, ptr } @compiler_2ftarget_2ecpuModel(ptr %s0)
  store { i64, ptr } %t219, ptr %l79
  br label %bb36
bb36:
  %t220 = call { i64, ptr } @compiler_2ftarget_2ecpuFlags(ptr %s0)
  store { i64, ptr } %t220, ptr %l80
  br label %bb37
bb37:
  %t221 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d161, i32 0, i32 1) }, 1
  %t222 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d161, i32 0, i32 1) }, 0
  %t223 = load i64, ptr %l77, !tbaa !24
  %t224 = call i64 @__olang_fmt_i64(ptr null, i64 %t223)
  %t225 = add i64 %t222, %t224
  %t226 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d162, i32 0, i32 1) }, 1
  %t227 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d162, i32 0, i32 1) }, 0
  %t228 = add i64 %t225, %t227
  %t229 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t230 = extractvalue { i64, ptr } %t229, 1
  %t231 = extractvalue { i64, ptr } %t229, 0
  %t232 = add i64 %t228, %t231
  %t233 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d162, i32 0, i32 1) }, 1
  %t234 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d162, i32 0, i32 1) }, 0
  %t235 = add i64 %t232, %t234
  %t236 = load { i64, ptr }, ptr %l79, !tbaa !27
  %t237 = extractvalue { i64, ptr } %t236, 1
  %t238 = extractvalue { i64, ptr } %t236, 0
  %t239 = add i64 %t235, %t238
  %t240 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d162, i32 0, i32 1) }, 1
  %t241 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d162, i32 0, i32 1) }, 0
  %t242 = add i64 %t239, %t241
  %t243 = load { i64, ptr }, ptr %l80, !tbaa !27
  %t244 = extractvalue { i64, ptr } %t243, 1
  %t245 = extractvalue { i64, ptr } %t243, 0
  %t246 = add i64 %t242, %t245
  %t247 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d163, i32 0, i32 1) }, 1
  %t248 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d163, i32 0, i32 1) }, 0
  %t249 = add i64 %t246, %t248
  %t250 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t249)
  call void @olang_textcopy(ptr %t250, ptr %t221, i64 %t222)
  %t251 = getelementptr i8, ptr %t250, i64 %t222
  %t252 = call i64 @__olang_fmt_i64(ptr %t251, i64 %t223)
  %t253 = getelementptr i8, ptr %t251, i64 %t224
  call void @olang_textcopy(ptr %t253, ptr %t226, i64 %t227)
  %t254 = getelementptr i8, ptr %t253, i64 %t227
  call void @olang_textcopy(ptr %t254, ptr %t230, i64 %t231)
  %t255 = getelementptr i8, ptr %t254, i64 %t231
  call void @olang_textcopy(ptr %t255, ptr %t233, i64 %t234)
  %t256 = getelementptr i8, ptr %t255, i64 %t234
  call void @olang_textcopy(ptr %t256, ptr %t237, i64 %t238)
  %t257 = getelementptr i8, ptr %t256, i64 %t238
  call void @olang_textcopy(ptr %t257, ptr %t240, i64 %t241)
  %t258 = getelementptr i8, ptr %t257, i64 %t241
  call void @olang_textcopy(ptr %t258, ptr %t244, i64 %t245)
  %t259 = getelementptr i8, ptr %t258, i64 %t245
  call void @olang_textcopy(ptr %t259, ptr %t247, i64 %t248)
  %t260 = insertvalue { i64, ptr } undef, i64 %t249, 0
  %t261 = insertvalue { i64, ptr } %t260, ptr %t250, 1
  %t263 = extractvalue { i64, ptr } %t261, 0
  %t264 = extractvalue { i64, ptr } %t261, 1
  %t265 = mul i64 %t263, 1
  %t266 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t265)
  call void @llvm.memcpy.p0.p0.i64(ptr %t266, ptr %t264, i64 %t265, i1 false)
  %t267 = insertvalue { i64, ptr } undef, i64 %t263, 0
  %t268 = insertvalue { i64, ptr } %t267, ptr %t266, 1
  %t269 = load ptr, ptr %l75, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t269, { i64, ptr } %t268)
  br label %bb38
bb38:
  %t272 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v2, ptr %l5)
  store { i64, ptr } %t272, ptr %l84
  br label %bb39
bb39:
  call void @__olang_scope_close(ptr %s0)
  %t273 = load { i64, ptr }, ptr %l84, !tbaa !27
  store { i64, ptr } %t273, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2ftarget_2eprobeOutcome(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca %"compiler/target:Target"
  %l2 = alloca %"compiler/target:Target"
  %l3 = alloca { i64, ptr }
  %l7 = alloca i32
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca { i64, ptr }
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
  %t1 = call %"compiler/target:Target" @compiler_2ftarget_3aTarget_2ector(ptr %s0)
  store %"compiler/target:Target" %t1, ptr %l2
  br label %bb1
bb1:
  %t2 = load %"compiler/target:Target", ptr %l2
  store %"compiler/target:Target" %t2, ptr %l1
  %t3 = getelementptr %"compiler/target:Target", ptr %l1, i32 0, i32 2
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l3, !tbaa !27
  %t5 = getelementptr %"compiler/target:Target", ptr %l1, i32 0, i32 2
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d164, i32 0, i32 1) }, ptr %t5, !tbaa !27
  %t6 = load i1, ptr @olang_2esole_2ecompiler_2ftarget_3aTarget_2e2
  br i1 %t6, label %bb2, label %bb3
bb2:
  %t8 = load { i64, ptr }, ptr %l3
  %t9 = extractvalue { i64, ptr } %t8, 1
  call void @__olang_region_release(ptr %t9)
  store { i64, ptr } zeroinitializer, ptr %l3
  br label %bb3
bb3:
  %t13 = call i32 @compiler_2ftarget_2ecompiler_2ftarget_3aTarget_2eFromProbe(ptr %s0, ptr %v0, ptr %l1, { i64, ptr } %a0)
  store i32 %t13, ptr %l7
  %t14 = icmp ne i32 %t13, 0
  br i1 %t14, label %bb5, label %ok.15, !prof !99
ok.15:
  br label %bb4
bb4:
  br label %bb12
bb5:
  %t16 = load i32, ptr %l7, !tbaa !23
  %t17 = icmp eq i32 %t16, 65536
  br i1 %t17, label %bb6, label %bb7
bb6:
  br label %bb8
bb7:
  %t19 = load i32, ptr %l7, !tbaa !23
  %t20 = icmp eq i32 %t19, 65537
  br i1 %t20, label %bb9, label %bb10
bb8:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d165, i32 0, i32 1) }, ptr %l10, !tbaa !27
  %t22 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t22, ptr %l11, !tbaa !27
  %t23 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t24 = extractvalue { i64, ptr } %t23, 0
  store i64 %t24, ptr %l12, !tbaa !24
  %t25 = load i64, ptr %l12, !tbaa !24
  %t26 = mul i64 %t25, 1
  %t27 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t26)
  %t28 = insertvalue { i64, ptr } undef, i64 %t25, 0
  %t29 = insertvalue { i64, ptr } %t28, ptr %t27, 1
  store { i64, ptr } %t29, ptr %l13, !tbaa !27
  %t30 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !27
  %t32 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !27
  %t34 = load i64, ptr %l12, !tbaa !24
  %t35 = mul i64 %t34, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t31, ptr %t33, i64 %t35, i1 false)
  %t36 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t36, ptr %l11, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t37 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t37, ptr %rv
  br label %ret
bb9:
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_e8b72cfc84d5e9e6_628031fabfe49ea)
  unreachable
bb11:
  store { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d166, i32 0, i32 1) }, ptr %l14, !tbaa !27
  %t38 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t38, ptr %l15, !tbaa !27
  %t39 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t39, 0
  store i64 %t40, ptr %l16, !tbaa !24
  %t41 = load i64, ptr %l16, !tbaa !24
  %t42 = mul i64 %t41, 1
  %t43 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t42)
  %t44 = insertvalue { i64, ptr } undef, i64 %t41, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t43, 1
  store { i64, ptr } %t45, ptr %l17, !tbaa !27
  %t46 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !27
  %t50 = load i64, ptr %l16, !tbaa !24
  %t51 = mul i64 %t50, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t47, ptr %t49, i64 %t51, i1 false)
  %t52 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t52, ptr %l15, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t53 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t53, ptr %rv
  br label %ret
bb12:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d167, i32 0, i32 1) }, ptr %l18, !tbaa !27
  %t54 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t54, ptr %l19, !tbaa !27
  %t55 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t56 = extractvalue { i64, ptr } %t55, 0
  store i64 %t56, ptr %l20, !tbaa !24
  %t57 = load i64, ptr %l20, !tbaa !24
  %t58 = mul i64 %t57, 1
  %t59 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t58)
  %t60 = insertvalue { i64, ptr } undef, i64 %t57, 0
  %t61 = insertvalue { i64, ptr } %t60, ptr %t59, 1
  store { i64, ptr } %t61, ptr %l21, !tbaa !27
  %t62 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !27
  %t64 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !27
  %t66 = load i64, ptr %l20, !tbaa !24
  %t67 = mul i64 %t66, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t63, ptr %t65, i64 %t67, i1 false)
  %t68 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t68, ptr %l19, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t69 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t69, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2ftarget_2equiet(ptr %out, ptr %v0) #0 {
entry:
  %l0 = alloca %"compiler/diag:Diagnostics"
  %t1 = alloca %"compiler/diag:Diagnostics", align 8
  br label %start
start:
  br label %bb0
bb0:
  call void @compiler_2fdiag_3aDiagnostics_2ector(ptr %t1, ptr %v0, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l0, ptr %t1, i64 704, i1 false)
  br label %bb1
bb1:
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l0, i64 704, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2ftarget_2erefuse(ptr %v0, ptr %v1, ptr %a0, %"compiler/diagmsg:Msg" %a1) #0 {
entry:
  %l5 = alloca i64
  %rv = alloca i32
  %t2 = alloca { i64, [3 x i64] }, align 8
  br label %start
start:
  br label %bb0
bb0:
  store { i64, [3 x i64] } zeroinitializer, ptr %t2
  %t3 = getelementptr { i64, [3 x i64] }, ptr %t2, i32 0, i32 0
  store i64 0, ptr %t3
  %t4 = load { i64, [3 x i64] }, ptr %t2
  %t9 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %t4, %"compiler/diagmsg:Msg" %a1)
  store i64 %t9, ptr %l5
  br label %bb1
bb1:
  store i32 65536, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2ftarget_2ewhereIs(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %lp7 = alloca ptr
  %l10 = alloca { i64, ptr }
  %l11 = alloca i1
  %l16 = alloca i32
  %l18 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l23 = alloca i64
  %l24 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l27 = alloca i32
  %l31 = alloca i1
  %l33 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %l43 = alloca { i64, ptr }
  %l47 = alloca i1
  %l49 = alloca { i64, ptr }
  %l59 = alloca i32
  %l64 = alloca { i64, ptr }
  %l65 = alloca { i64, ptr }
  %l66 = alloca i64
  %l67 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d168, i32 0, i32 1) }, ptr %l10, !tbaa !27
  %t4 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t5 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } %t4)
  store i1 %t5, ptr %l11
  br label %bb1
bb1:
  %t6 = load i1, ptr %l11, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t7 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 1
  %t10 = extractvalue { i64, ptr } %t7, 0
  %t11 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d169, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d169, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t14 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t13)
  call void @olang_textcopy(ptr %t14, ptr %t9, i64 %t10)
  %t15 = getelementptr i8, ptr %t14, i64 %t10
  call void @olang_textcopy(ptr %t15, ptr %t11, i64 %t12)
  %t16 = insertvalue { i64, ptr } undef, i64 %t13, 0
  %t17 = insertvalue { i64, ptr } %t16, ptr %t14, 1
  %t19 = load i32, ptr @G_2e_3cunistd_2eh_3e_2eX__OK, !tbaa !23
  %t21 = extractvalue { i64, ptr } %t17, 1
  %t22 = extractvalue { i64, ptr } %t17, 0
  %t24 = call i32 @access(ptr %t21, i32 %t19)
  store i32 %t24, ptr %l16
  br label %bb4
bb3:
  br label %bb8
bb4:
  %t25 = load i32, ptr %l16, !tbaa !23
  %t26 = icmp eq i32 %t25, 0
  br i1 %t26, label %bb5, label %bb6
bb5:
  %t28 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t28, 1
  %t31 = extractvalue { i64, ptr } %t28, 0
  %t32 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t31)
  call void @olang_textcopy(ptr %t32, ptr %t30, i64 %t31)
  %t33 = insertvalue { i64, ptr } undef, i64 %t31, 0
  %t34 = insertvalue { i64, ptr } %t33, ptr %t32, 1
  store { i64, ptr } %t34, ptr %l18, !tbaa !27
  br label %bb7
bb6:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d170, i32 0, i32 1) }, ptr %l21, !tbaa !27
  %t36 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t36, ptr %l18, !tbaa !27
  br label %bb7
bb7:
  %t38 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t38, 0
  store i64 %t39, ptr %l23, !tbaa !24
  %t40 = load i64, ptr %l23, !tbaa !24
  %t41 = mul i64 %t40, 1
  %t42 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t41)
  %t43 = insertvalue { i64, ptr } undef, i64 %t40, 0
  %t44 = insertvalue { i64, ptr } %t43, ptr %t42, 1
  store { i64, ptr } %t44, ptr %l24, !tbaa !27
  %t45 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !27
  %t47 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !27
  %t49 = load i64, ptr %l23, !tbaa !24
  %t50 = mul i64 %t49, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t46, ptr %t48, i64 %t50, i1 false)
  %t51 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t51, ptr %l18, !tbaa !27
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t52 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t52, ptr %rv
  br label %ret
bb8:
  %t53 = call { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %s0, ptr %s0, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d171, i32 0, i32 1) })
  %t54 = extractvalue { i32, { i64, ptr } } %t53, 1
  %t55 = extractvalue { i32, { i64, ptr } } %t53, 0
  store i32 %t55, ptr %l27
  %t56 = icmp ne i32 %t55, 0
  br i1 %t56, label %bb10, label %ok.57, !prof !99
ok.57:
  store { i64, ptr } %t54, ptr %l26
  br label %bb9
bb9:
  %t58 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t58, ptr %l25, !tbaa !27
  br label %bb14
bb10:
  %t59 = load i32, ptr %l27, !tbaa !23
  %t60 = ashr i32 %t59, 16
  %t62 = icmp eq i32 %t60, 1
  br i1 %t62, label %bb11, label %bb12
bb11:
  call void @__olang_errpay_pop()
  br label %bb12
bb12:
  br label %bb13
bb13:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d172, i32 0, i32 1) }, ptr %l25, !tbaa !27
  br label %bb14
bb14:
  %t64 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t64, ptr %l1, !tbaa !27
  %t65 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t67 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t65, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d173, i32 0, i32 1) })
  store i1 %t67, ptr %l31
  br label %bb15
bb15:
  %t68 = load i1, ptr %l31, !tbaa !21
  %t69 = xor i1 %t68, true
  br i1 %t69, label %bb16, label %bb17
bb16:
  %t71 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t71, ptr %l33, !tbaa !27
  br label %bb18
bb17:
  store { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d174, i32 0, i32 1) }, ptr %l33, !tbaa !27
  br label %bb18
bb18:
  %t73 = load { i64, ptr }, ptr %l33, !tbaa !27
  store %olang.scope zeroinitializer, ptr %s4
  %t76 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %s0, ptr %s4, ptr %s4, { i64, ptr } %t73, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d175, i32 0, i32 1) })
  store { i64, ptr } %t76, ptr %l36
  br label %bb19
bb19:
  %t77 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t77, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t78 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t80 = extractvalue { i64, ptr } %t78, 0
  store i64 %t80, ptr %l5, !tbaa !24
  br label %bb20
bb20:
  store %olang.scope zeroinitializer, ptr %s5
  %t82 = load i64, ptr %l4, !tbaa !24
  %t83 = load i64, ptr %l5, !tbaa !24
  %t86 = icmp slt i64 %t82, %t83
  %t88 = xor i1 %t86, true
  br i1 %t88, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s5)
  br label %bb33
bb22:
  br label %bb23
bb23:
  %t90 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t90, ptr %l43, !tbaa !27
  %t91 = load i64, ptr %l4, !tbaa !24
  %t93 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t94 = load ptr, ptr %t93, !tbaa !27
  %t95 = getelementptr { i64, ptr }, ptr %t94, i64 %t91
  %t96 = load { i64, ptr }, ptr %t95, !tbaa !37
  store { i64, ptr } %t96, ptr %l6, !tbaa !27
  %t98 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t100 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s4, ptr %s5, { i64, ptr } %t98, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d176, i32 0, i32 1) })
  store i1 %t100, ptr %l47
  br label %bb24
bb24:
  %t101 = load i1, ptr %l47, !tbaa !21
  %t102 = xor i1 %t101, true
  br i1 %t102, label %bb25, label %bb26
bb25:
  %t104 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t105 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t107 = extractvalue { i64, ptr } %t104, 1
  %t108 = extractvalue { i64, ptr } %t104, 0
  %t109 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d177, i32 0, i32 1) }, 1
  %t110 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d177, i32 0, i32 1) }, 0
  %t111 = add i64 %t108, %t110
  %t113 = extractvalue { i64, ptr } %t105, 1
  %t114 = extractvalue { i64, ptr } %t105, 0
  %t115 = add i64 %t111, %t114
  %t116 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t115)
  call void @olang_textcopy(ptr %t116, ptr %t107, i64 %t108)
  %t117 = getelementptr i8, ptr %t116, i64 %t108
  call void @olang_textcopy(ptr %t117, ptr %t109, i64 %t110)
  %t118 = getelementptr i8, ptr %t117, i64 %t110
  call void @olang_textcopy(ptr %t118, ptr %t113, i64 %t114)
  %t119 = insertvalue { i64, ptr } undef, i64 %t115, 0
  %t120 = insertvalue { i64, ptr } %t119, ptr %t116, 1
  store { i64, ptr } %t120, ptr %l49, !tbaa !27
  br label %bb27
bb26:
  %t122 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t124 = extractvalue { i64, ptr } %t122, 1
  %t125 = extractvalue { i64, ptr } %t122, 0
  %t126 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t125)
  call void @olang_textcopy(ptr %t126, ptr %t124, i64 %t125)
  %t127 = insertvalue { i64, ptr } undef, i64 %t125, 0
  %t128 = insertvalue { i64, ptr } %t127, ptr %t126, 1
  store { i64, ptr } %t128, ptr %l49, !tbaa !27
  br label %bb27
bb27:
  %t130 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t130, ptr %lp7
  %t131 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t132 = load ptr, ptr %lp7
  store { i64, ptr } %t131, ptr %t132, !tbaa !27
  %t133 = load ptr, ptr %lp7
  %t134 = load { i64, ptr }, ptr %t133, !tbaa !27
  %t136 = extractvalue { i64, ptr } %t134, 1
  %t137 = extractvalue { i64, ptr } %t134, 0
  %t138 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d178, i32 0, i32 1) }, 1
  %t139 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d178, i32 0, i32 1) }, 0
  %t140 = add i64 %t137, %t139
  %t141 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t140)
  call void @olang_textcopy(ptr %t141, ptr %t136, i64 %t137)
  %t142 = getelementptr i8, ptr %t141, i64 %t137
  call void @olang_textcopy(ptr %t142, ptr %t138, i64 %t139)
  %t143 = insertvalue { i64, ptr } undef, i64 %t140, 0
  %t144 = insertvalue { i64, ptr } %t143, ptr %t141, 1
  %t146 = load i32, ptr @G_2e_3cunistd_2eh_3e_2eX__OK, !tbaa !23
  %t148 = extractvalue { i64, ptr } %t144, 1
  %t149 = extractvalue { i64, ptr } %t144, 0
  %t151 = call i32 @access(ptr %t148, i32 %t146)
  store i32 %t151, ptr %l59
  br label %bb28
bb28:
  %t152 = load i32, ptr %l59, !tbaa !23
  %t153 = icmp eq i32 %t152, 0
  br i1 %t153, label %bb29, label %bb30
bb29:
  %t155 = load ptr, ptr %lp7
  %t156 = load { i64, ptr }, ptr %t155, !tbaa !27
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t156, ptr %rv
  br label %ret
bb30:
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s5)
  br label %bb32
bb32:
  %t158 = load i64, ptr %l4, !tbaa !24
  %t160 = add i64 %t158, 1
  store i64 %t160, ptr %l4, !tbaa !24
  br label %bb20
bb33:
  call void @__olang_scope_close(ptr %s4)
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d179, i32 0, i32 1) }, ptr %l64, !tbaa !27
  %t162 = load { i64, ptr }, ptr %l64, !tbaa !27
  store { i64, ptr } %t162, ptr %l65, !tbaa !27
  %t163 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t164 = extractvalue { i64, ptr } %t163, 0
  store i64 %t164, ptr %l66, !tbaa !24
  %t165 = load i64, ptr %l66, !tbaa !24
  %t166 = mul i64 %t165, 1
  %t167 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t166)
  %t168 = insertvalue { i64, ptr } undef, i64 %t165, 0
  %t169 = insertvalue { i64, ptr } %t168, ptr %t167, 1
  store { i64, ptr } %t169, ptr %l67, !tbaa !27
  %t170 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t171 = load ptr, ptr %t170, !tbaa !27
  %t172 = getelementptr { i64, ptr }, ptr %l65, i32 0, i32 1
  %t173 = load ptr, ptr %t172, !tbaa !27
  %t174 = load i64, ptr %l66, !tbaa !24
  %t175 = mul i64 %t174, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t171, ptr %t173, i64 %t175, i1 false)
  %t176 = load { i64, ptr }, ptr %l67, !tbaa !27
  store { i64, ptr } %t176, ptr %l65, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t177 = load { i64, ptr }, ptr %l65, !tbaa !27
  store { i64, ptr } %t177, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"compiler/target:Target" @compiler_2ftarget_3aTarget_2ector(ptr %v0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %rv = alloca %"compiler/target:Target"
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d180, i32 0, i32 1) }, ptr %l0, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d181, i32 0, i32 1) }, ptr %l1, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d182, i32 0, i32 1) }, ptr %l2, !tbaa !27
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d183, i32 0, i32 1) }, ptr %l3, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d184, i32 0, i32 1) }, ptr %l4, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d185, i32 0, i32 1) }, ptr %l5, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d186, i32 0, i32 1) }, ptr %l6, !tbaa !27
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t2 = insertvalue %"compiler/target:Target" undef, { i64, ptr } %t1, 0
  %t3 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t4 = insertvalue %"compiler/target:Target" %t2, { i64, ptr } %t3, 1
  %t5 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t6 = insertvalue %"compiler/target:Target" %t4, { i64, ptr } %t5, 2
  %t7 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t8 = insertvalue %"compiler/target:Target" %t6, { i64, ptr } %t7, 3
  %t9 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t10 = insertvalue %"compiler/target:Target" %t8, { i64, ptr } %t9, 4
  %t11 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t12 = insertvalue %"compiler/target:Target" %t10, { i64, ptr } %t11, 5
  %t13 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t14 = insertvalue %"compiler/target:Target" %t12, { i64, ptr } %t13, 6
  %t16 = insertvalue %"compiler/target:Target" %t14, i64 0, 7
  %t18 = insertvalue %"compiler/target:Target" %t16, i1 false, 8
  %t20 = insertvalue %"compiler/target:Target" %t18, i1 false, 9
  store %"compiler/target:Target" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/target:Target", ptr %rv
  ret %"compiler/target:Target" %rr
}

@.d0 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d1 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare void @__olang_check_failed(ptr) cold noreturn
@.d2 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
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
@.d3 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare void @__olang_errpay_pop()
@.d4 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2estd_2fos_3aOutput_2e1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d5 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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
@.d6 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d7 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare i32 @getpid()
@.d8 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d9 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c".tmp" }>, align 8
@.d10 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"OLANG_CLANG" }>, align 8
@.d11 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d12 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d13 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d14 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"/proc/self/exe" }>, align 8
@.d15 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d16 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d17 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"/../llvm/bin/clang" }>, align 8
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
@.d18 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\00" }>, align 8
declare i32 @access(ptr, i32)
@__olang_prog_scope = external thread_local(initialexec) global ptr
@.d19 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d20 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"," }>, align 8
@.d21 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d22 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"libclang_rt.tsan-" }>, align 8
@.d23 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".a" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_202_3e_2e_2d1 = weak hidden constant i1 false
@.d24 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"-print-file-name=" }>, align 8
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@.d25 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d26 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
define linkonce_odr void @olang_2emir_2eHelperKind_2eZero_2e_3csys_2futsname_2eh_3e_3autsname(ptr %out) #0 {
entry:
  %l0 = alloca %"<sys/utsname.h>:utsname"
  %t1 = alloca %"<sys/utsname.h>:utsname", align 1
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load ptr, ptr @__olang_prog_scope
  call void @_3csys_2futsname_2eh_3e_3autsname_2ector(ptr %t1, ptr %t2)
  call void @llvm.memmove.p0.p0.i64(ptr %l0, ptr %t1, i64 390, i1 false)
  br label %bb1
bb1:
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l0, i64 390, i1 false)
  br label %ret
ret:
  ret void
}

declare i32 @uname(ptr)
@.d27 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"unknown" }>, align 8
@.d28 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"unknown" }>, align 8
@.d29 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d30 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d31 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"," }>, align 8
@.d32 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"OLANG_SYSROOT" }>, align 8
@.d33 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2ftarget_3aTarget_2e0 = weak hidden constant i1 false
declare void @__olang_region_release(ptr) noinline
@.d34 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d35 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"-linux" }>, align 8
@.d36 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d37 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"-linux-gnu" }>, align 8
@.d38 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d39 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d40 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"-apple" }>, align 8
@.d41 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"-windows" }>, align 8
@.d42 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d43 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2ftarget_3aTarget_2e2 = weak hidden constant i1 false
@.d44 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"linux" }>, align 8
declare ptr @__olang_scope_of(ptr, ptr) noinline
@.d45 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d46 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d47 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"native" }>, align 8
@.d48 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"running a file" }>, align 8
@.d49 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d50 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d51 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
@.d52 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"--target=" }>, align 8
@.d53 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-S" }>, align 8
@.d54 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"-emit-llvm" }>, align 8
@.d55 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-o" }>, align 8
@.d56 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"-" }>, align 8
@.d57 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-x" }>, align 8
@.d58 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"c" }>, align 8
@.d59 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"-" }>, align 8
@.d60 = private constant <{ i64, [34 x i8] }> <{ i64 0, [34 x i8] c"void olang_target_probe(void) { }\0A" }>, align 8
@olang_2esole_2ecompiler_2ftarget_3aTarget_2e6 = weak hidden constant i1 false
@.d61 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d62 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d63 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d64 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\22" }>, align 8
@.d65 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"\22=\22" }>, align 8
@.d66 = private constant <{ i64, [88 x i8] }> <{ i64 0, [88 x i8] c"define float @f(float %x) {\0A  %b = fptrunc float %x to bfloat\0A  %c = fadd bfloat %b, %b\0A" }>, align 8
@.d67 = private constant <{ i64, [49 x i8] }> <{ i64 0, [49 x i8] c"  %r = fpext bfloat %c to float\0A  ret float %r\0A}\0A" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_209_3e_2e_2d1 = weak hidden constant i1 false
@.d68 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"--target=" }>, align 8
@.d69 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"-fno-crash-diagnostics" }>, align 8
@.d70 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-c" }>, align 8
@.d71 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-x" }>, align 8
@.d72 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"ir" }>, align 8
@.d73 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"-" }>, align 8
@.d74 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-o" }>, align 8
@.d75 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"/dev/null" }>, align 8
@.d76 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"target triple = \22" }>, align 8
@.d77 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"target datalayout = \22" }>, align 8
@.d78 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"attributes #0 = {" }>, align 8
@.d79 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"-p:32" }>, align 8
@.d80 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"-p:16" }>, align 8
@olang_2esole_2ecompiler_2ftarget_3aTarget_2e1 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftarget_3aTarget_2e4 = weak hidden constant i1 false
@.d81 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"target-cpu" }>, align 8
@.d82 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"target-features" }>, align 8
@.d83 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d84 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"aarch64" }>, align 8
@.d85 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"neon" }>, align 8
@.d86 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"avx512f" }>, align 8
@.d87 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"avx" }>, align 8
@.d88 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"fma" }>, align 8
@.d89 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"fma4" }>, align 8
@.d90 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"tune-cpu" }>, align 8
@.d91 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d92 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d93 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c" \22tune-cpu\22=\22" }>, align 8
@.d94 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\22" }>, align 8
@.d95 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d96 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d97 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"vscale_range(" }>, align 8
@.d98 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@olang_2esole_2ecompiler_2ftarget_3aTarget_2e5 = weak hidden constant i1 false
@.d99 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"\22target-cpu\22=\22" }>, align 8
@.d100 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"\22 \22target-features\22=\22" }>, align 8
@.d101 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\22" }>, align 8
@.d102 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c" \22prefer-vector-width\22=\22" }>, align 8
@.d103 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"OLANG_EMULATOR" }>, align 8
@.d104 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d105 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d106 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d107 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d108 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"qemu-" }>, align 8
@.d109 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"qemu-" }>, align 8
@.d110 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"-static" }>, align 8
@.d111 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d112 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d113 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"/usr/" }>, align 8
@.d114 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"-linux-gnu" }>, align 8
@olang_2esole_2ecompiler__2ftarget__2ecompiler__2ftarget__3aTarget__2eRunner_2elocal_2e12 = weak hidden constant i1 false
@.d115 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"/usr/" }>, align 8
@.d116 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"-linux-gnu" }>, align 8
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
@.d117 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d118 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-L" }>, align 8
@.d119 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"-unknown-linux-gnu" }>, align 8
@.d120 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"aarch64" }>, align 8
@.d121 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"native" }>, align 8
@.d122 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"generic" }>, align 8
@.d123 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"generic" }>, align 8
@.d124 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"x86-64" }>, align 8
@.d125 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"x86-64-v2" }>, align 8
@.d126 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"x86-64-v3" }>, align 8
@.d127 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"x86-64-v4" }>, align 8
@.d128 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"native" }>, align 8
@.d129 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"x86-64" }>, align 8
@.d130 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"x86-64-v" }>, align 8
@.d131 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"/proc/cpuinfo" }>, align 8
@.d132 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d133 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"flags" }>, align 8
@.d134 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d135 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d136 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d137 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d138 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"/proc/cpuinfo" }>, align 8
@.d139 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d140 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"model name" }>, align 8
@.d141 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d142 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d143 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d144 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d145 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"OLANG_CACHE" }>, align 8
@.d146 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d147 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d148 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"/probe" }>, align 8
@.d149 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"HOME" }>, align 8
@.d150 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d151 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"/.cache/olang/probe" }>, align 8
@.d152 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d153 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d154 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d155 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d156 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d157 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"olang probe 1\0A" }>, align 8
@.d158 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d159 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d160 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d161 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"input " }>, align 8
@.d162 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d163 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"\0A=====\0A" }>, align 8
@.d164 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"x86_64" }>, align 8
@.d165 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"unknown" }>, align 8
@.d166 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"unsupported" }>, align 8
@.d167 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"ok" }>, align 8
@.d168 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d169 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\00" }>, align 8
@.d170 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d171 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"PATH" }>, align 8
@.d172 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d173 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d174 = private constant <{ i64, [28 x i8] }> <{ i64 0, [28 x i8] c"/usr/local/bin:/usr/bin:/bin" }>, align 8
@.d175 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d176 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d177 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d178 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\00" }>, align 8
@.d179 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d180 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"native" }>, align 8
@.d181 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d182 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d183 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"linux" }>, align 8
@.d184 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d185 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d186 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eHash(ptr %v0, { i64, ptr } %a0)
declare { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %v0, i64 %a0)
declare { i64, ptr } @std_2fprelude_2ftext_2eU64_2eFormat(ptr %v0, i64 %a0, i64 %a1)
@olang_loc_def72623566706b3_6d1f4e2e8af6f867 = external constant [0 x i8]
declare { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_47a0ad7bede37e81_52b343d343663485 = external constant [0 x i8]
declare %"std/os:Output" @std_2fos_3aOutput_2ector(ptr %v0, ptr %v1, ptr %v2, i32 %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, i1 %a2, { i64, ptr } %a3)
declare i32 @std_2fos_2eMkDirAll(ptr %v0, { i64, ptr } %a0)
declare i32 @std_2fos_2eWriteFile(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @std_2fos_2eRename(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @std_2fos_2eRemove(ptr %v0, { i64, ptr } %a0)
declare { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, { i64, ptr } } @std_2fos_2eReadLink(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_5d60638bbee689af_7a012b3f353868cb = external constant [0 x i8]
@G_2e_3cunistd_2eh_3e_2eX__OK = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_7d2dbc1a64f072ad_c547ba7f55386c9 = external constant [0 x i8]
declare i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eToLower(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
@olang_loc_4b3e93141bb855fb_750a01d3487f499f = external constant [0 x i8]
declare i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eHas_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_a61f3cd56da1d37e_58843bed9934bc22 = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v0, { i64, ptr } %a0, i8 %a1)
@olang_loc_5afbe203adc8766f_c0acc38cff9c62b = external constant [0 x i8]
@olang_loc_ccc584ee5db490f2_f240216cb9bcdd2e = external constant [0 x i8]
@olang_loc_8b94dd4b00821371_32c50240ce2e918d = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTargetUnsupported(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTargetUnknown(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTargetNativeForeign(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTargetForeignMode(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTargetNoClang(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_49a037191ff00c43_67aff78b8be17eff = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTargetNoBackend(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_2b3d593c994025a_f25bcfc8e3895e8e = external constant [0 x i8]
@olang_loc_41dcdde6fea423b7_7dcc0ffa4d83aa8b = external constant [0 x i8]
@olang_loc_e010b40d861556cc_7cbd713015487310 = external constant [0 x i8]
@olang_loc_8cdf81df4f8deaf9_3f7b7447e7e110ed = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_Haae4fbc3ba15583a49040d883d2248d1(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare i1 @std_2fos_2eIsDir(ptr %v0, { i64, ptr } %a0)
@olang_loc_85332b5eb98b88c2_ab57175d397d1606 = external constant [0 x i8]
declare %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_85ddc375a30bdeb4_680b0f1997dc0f98 = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_1252e266118faa7_9a8543fc9009ce13 = external constant [0 x i8]
@olang_loc_50955429569277ca_9a744de1378669b6 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eRender(ptr %v0, ptr %v1, ptr %a0)
declare { i32, { i64, ptr } } @std_2fos_2eRealPath(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, %"std/os:FileInfo" } @std_2fos_2eFileInfo_2eStat(ptr %v0, { i64, ptr } %a0)
@olang_loc_1bb6927ebf4fa198_42e84c5a8eaa23b4 = external constant [0 x i8]
@olang_loc_e8b72cfc84d5e9e6_628031fabfe49ea = external constant [0 x i8]
declare void @compiler_2fdiag_3aDiagnostics_2ector(ptr %out, ptr %v0, i1 %a0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare void @_3csys_2futsname_2eh_3e_3autsname_2ector(ptr %out, ptr %v0)

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
