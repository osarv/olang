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
%"std/os:Output" = type { i32, { i64, ptr }, { i64, ptr } }
%"<sys/utsname.h>:utsname" = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/target:Target" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i1, i1 }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"std/prelude/text:LineIter" = type { { i64, ptr }, i64 }
%"compiler/diag:Diagnostics" = type { i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, [3 x i64] }, { i64, ptr }, { i64, ptr }, i1, i1 }
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
  %lp6 = alloca ptr
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
  %t147 = call { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %v0, ptr %v1, ptr %v2, ptr %v2, { i64, ptr } %t142, { i64, ptr } %t143, i1 true, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d6, i32 0, i32 1) })
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
  %t164 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store ptr %t164, ptr %lp6
  %t165 = load %"std/os:Output", ptr %l58
  %t166 = load ptr, ptr %lp6
  store %"std/os:Output" %t165, ptr %t166
  %t167 = load ptr, ptr %lp6
  %t168 = getelementptr %"std/os:Output", ptr %t167, i32 0, i32 0
  %t169 = load i32, ptr %t168, !tbaa !23
  %t171 = icmp eq i32 %t169, 0
  br i1 %t171, label %bb40, label %bb41
bb40:
  %t173 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t175 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t173, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d7, i32 0, i32 1) })
  store i1 %t175, ptr %l69
  br label %bb42
bb41:
  store i1 false, ptr %l67, !tbaa !21
  br label %bb43
bb42:
  %t176 = load i1, ptr %l69, !tbaa !21
  %t177 = xor i1 %t176, true
  store i1 %t177, ptr %l67, !tbaa !21
  br label %bb43
bb43:
  %t179 = load i1, ptr %l67, !tbaa !21
  br i1 %t179, label %bb44, label %bb45
bb44:
  store i1 %a2, ptr %l71, !tbaa !21
  br label %bb46
bb45:
  store i1 false, ptr %l71, !tbaa !21
  br label %bb46
bb46:
  %t182 = load i1, ptr %l71, !tbaa !21
  br i1 %t182, label %bb47, label %bb48
bb47:
  store %olang.scope zeroinitializer, ptr %s5
  %t183 = call { i64, ptr } @compiler_2ftarget_2eprobeDir(ptr %s5)
  store { i64, ptr } %t183, ptr %l73
  br label %bb49
bb48:
  br label %bb75
bb49:
  %t184 = load { i64, ptr }, ptr %l73, !tbaa !27
  %t185 = extractvalue { i64, ptr } %t184, 0
  %t186 = extractvalue { i64, ptr } %t184, 1
  %t187 = mul i64 %t185, 1
  %t188 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t187)
  call void @llvm.memcpy.p0.p0.i64(ptr %t188, ptr %t186, i64 %t187, i1 false)
  %t189 = insertvalue { i64, ptr } undef, i64 %t185, 0
  %t190 = insertvalue { i64, ptr } %t189, ptr %t188, 1
  %t192 = call i32 @std_2fos_2eMkDirAll(ptr %s5, { i64, ptr } %t190)
  store i32 %t192, ptr %l75
  %t193 = icmp ne i32 %t192, 0
  br i1 %t193, label %bb51, label %ok.194, !prof !99
ok.194:
  br label %bb50
bb50:
  br label %bb55
bb51:
  %t195 = load i32, ptr %l75, !tbaa !23
  %t196 = ashr i32 %t195, 16
  %t198 = icmp eq i32 %t196, 1
  store i1 %t198, ptr %l77, !tbaa !21
  %t199 = load i32, ptr %l75, !tbaa !23
  %t200 = ashr i32 %t199, 16
  %t202 = icmp eq i32 %t200, 1
  br i1 %t202, label %bb52, label %bb53
bb52:
  call void @__olang_errpay_pop()
  br label %bb53
bb53:
  br label %bb54
bb54:
  %t204 = load ptr, ptr %lp6
  %t205 = load %"std/os:Output", ptr %t204
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  %t207 = insertvalue { i32, %"std/os:Output" } zeroinitializer, %"std/os:Output" %t205, 1
  store { i32, %"std/os:Output" } %t207, ptr %rv
  br label %ret
bb55:
  %t208 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t208, ptr %l81, !tbaa !27
  %t209 = call i32 @getpid()
  store i32 %t209, ptr %l82
  br label %bb56
bb56:
  %t210 = load { i64, ptr }, ptr %l81, !tbaa !27
  %t211 = extractvalue { i64, ptr } %t210, 1
  %t212 = extractvalue { i64, ptr } %t210, 0
  %t213 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t214 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  %t215 = add i64 %t212, %t214
  %t216 = load i32, ptr %l82, !tbaa !23
  %t217 = sext i32 %t216 to i64
  %t218 = call i64 @__olang_fmt_i64(ptr null, i64 %t217)
  %t219 = add i64 %t215, %t218
  %t220 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t221 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  %t222 = add i64 %t219, %t221
  %t223 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t222)
  call void @olang_textcopy(ptr %t223, ptr %t211, i64 %t212)
  %t224 = getelementptr i8, ptr %t223, i64 %t212
  call void @olang_textcopy(ptr %t224, ptr %t213, i64 %t214)
  %t225 = getelementptr i8, ptr %t224, i64 %t214
  %t226 = call i64 @__olang_fmt_i64(ptr %t225, i64 %t217)
  %t227 = getelementptr i8, ptr %t225, i64 %t218
  call void @olang_textcopy(ptr %t227, ptr %t220, i64 %t221)
  %t228 = insertvalue { i64, ptr } undef, i64 %t222, 0
  %t229 = insertvalue { i64, ptr } %t228, ptr %t223, 1
  store { i64, ptr } %t229, ptr %l7, !tbaa !27
  %t231 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t232 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t233 = load ptr, ptr %lp6
  %t234 = getelementptr %"std/os:Output", ptr %t233, i32 0, i32 1
  %t235 = load { i64, ptr }, ptr %t234, !tbaa !27
  %t237 = extractvalue { i64, ptr } %t232, 1
  %t238 = extractvalue { i64, ptr } %t232, 0
  %t240 = extractvalue { i64, ptr } %t235, 1
  %t241 = extractvalue { i64, ptr } %t235, 0
  %t242 = add i64 %t238, %t241
  %t243 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t242)
  call void @olang_textcopy(ptr %t243, ptr %t237, i64 %t238)
  %t244 = getelementptr i8, ptr %t243, i64 %t238
  call void @olang_textcopy(ptr %t244, ptr %t240, i64 %t241)
  %t245 = insertvalue { i64, ptr } undef, i64 %t242, 0
  %t246 = insertvalue { i64, ptr } %t245, ptr %t243, 1
  %t249 = extractvalue { i64, ptr } %t246, 0
  %t250 = extractvalue { i64, ptr } %t246, 1
  %t251 = mul i64 %t249, 1
  %t252 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t251)
  call void @llvm.memcpy.p0.p0.i64(ptr %t252, ptr %t250, i64 %t251, i1 false)
  %t253 = insertvalue { i64, ptr } undef, i64 %t249, 0
  %t254 = insertvalue { i64, ptr } %t253, ptr %t252, 1
  %t257 = call i32 @std_2fos_2eWriteFile(ptr %s5, ptr %s5, { i64, ptr } %t231, { i64, ptr } %t254)
  store i32 %t257, ptr %l90
  %t258 = icmp ne i32 %t257, 0
  br i1 %t258, label %bb58, label %ok.259, !prof !99
ok.259:
  br label %bb57
bb57:
  br label %bb62
bb58:
  %t260 = load i32, ptr %l90, !tbaa !23
  %t261 = ashr i32 %t260, 16
  %t263 = icmp eq i32 %t261, 1
  store i1 %t263, ptr %l92, !tbaa !21
  %t264 = load i32, ptr %l90, !tbaa !23
  %t265 = ashr i32 %t264, 16
  %t267 = icmp eq i32 %t265, 1
  br i1 %t267, label %bb59, label %bb60
bb59:
  call void @__olang_errpay_pop()
  br label %bb60
bb60:
  br label %bb61
bb61:
  %t269 = load ptr, ptr %lp6
  %t270 = load %"std/os:Output", ptr %t269
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  %t272 = insertvalue { i32, %"std/os:Output" } zeroinitializer, %"std/os:Output" %t270, 1
  store { i32, %"std/os:Output" } %t272, ptr %rv
  br label %ret
bb62:
  %t273 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t274 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t277 = call i32 @std_2fos_2eRename(ptr %s5, ptr %s0, { i64, ptr } %t273, { i64, ptr } %t274)
  store i32 %t277, ptr %l98
  %t278 = icmp ne i32 %t277, 0
  br i1 %t278, label %bb64, label %ok.279, !prof !99
ok.279:
  br label %bb63
bb63:
  br label %bb74
bb64:
  %t280 = load i32, ptr %l98, !tbaa !23
  %t281 = ashr i32 %t280, 16
  %t283 = icmp eq i32 %t281, 1
  store i1 %t283, ptr %l100, !tbaa !21
  %t284 = load i32, ptr %l98, !tbaa !23
  %t285 = ashr i32 %t284, 16
  %t287 = icmp eq i32 %t285, 1
  br i1 %t287, label %bb65, label %bb66
bb65:
  call void @__olang_errpay_pop()
  br label %bb66
bb66:
  br label %bb67
bb67:
  %t289 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t291 = call i32 @std_2fos_2eRemove(ptr %s5, { i64, ptr } %t289)
  store i32 %t291, ptr %l104
  %t292 = icmp ne i32 %t291, 0
  br i1 %t292, label %bb69, label %ok.293, !prof !99
ok.293:
  br label %bb68
bb68:
  br label %bb73
bb69:
  %t294 = load i32, ptr %l104, !tbaa !23
  %t295 = ashr i32 %t294, 16
  %t297 = icmp eq i32 %t295, 1
  store i1 %t297, ptr %l106, !tbaa !21
  %t298 = load i32, ptr %l104, !tbaa !23
  %t299 = ashr i32 %t298, 16
  %t301 = icmp eq i32 %t299, 1
  br i1 %t301, label %bb70, label %bb71
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
  %t303 = load ptr, ptr %lp6
  %t304 = load %"std/os:Output", ptr %t303
  call void @__olang_scope_close(ptr %s0)
  %t306 = insertvalue { i32, %"std/os:Output" } zeroinitializer, %"std/os:Output" %t304, 1
  store { i32, %"std/os:Output" } %t306, ptr %rv
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
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d21, i32 0, i32 1) }, ptr %l5, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d22, i32 0, i32 1) }, ptr %l7, !tbaa !27
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
  %t53 = call { i64, ptr } @compiler_2ftarget_2ecField(ptr %s0, ptr %v0, { i64, ptr } %t51)
  store { i64, ptr } %t53, ptr %l18
  br label %bb6
bb6:
  %t54 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t55 = extractvalue { i64, ptr } %t54, 0
  %t56 = extractvalue { i64, ptr } %t54, 1
  %t57 = mul i64 %t55, 1
  %t58 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t57)
  call void @llvm.memcpy.p0.p0.i64(ptr %t58, ptr %t56, i64 %t57, i1 false)
  %t59 = insertvalue { i64, ptr } undef, i64 %t55, 0
  %t60 = insertvalue { i64, ptr } %t59, ptr %t58, 1
  %t62 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eToLower(ptr %v0, ptr %v0, { i64, ptr } %t60)
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
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d23, i32 0, i32 1) })
  store i1 %t3, ptr %l10
  br label %bb1
bb1:
  %t4 = load i1, ptr %l10, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d24, i32 0, i32 1) }, ptr %l11, !tbaa !27
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
  %t25 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %v0, ptr %s2, ptr %s2, { i64, ptr } %t23, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d25, i32 0, i32 1) })
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
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %v0, ptr %v0, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d26, i32 0, i32 1) })
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d27, i32 0, i32 1) }, ptr %l0, !tbaa !27
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
  %lp7 = alloca ptr
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
  %l19 = alloca %"std/os:Output"
  %l20 = alloca %"compiler/target:Target"
  %l21 = alloca i64
  %l26 = alloca { i64, ptr }
  %l31 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i32
  %l38 = alloca { i64, ptr }
  %l39 = alloca i64
  %l40 = alloca i64
  %l45 = alloca i64
  %l48 = alloca i64
  %l51 = alloca i64
  %l52 = alloca i32
  %l55 = alloca { i64, ptr }
  %l56 = alloca { i64, ptr }
  %l57 = alloca i64
  %l58 = alloca i64
  %l72 = alloca { i64, ptr }
  %l73 = alloca { i64, ptr }
  %l75 = alloca i64
  %l78 = alloca i64
  %l79 = alloca i64
  %l89 = alloca i1
  %l91 = alloca i1
  %l93 = alloca ptr
  %l95 = alloca %"compiler/diagmsg:Msg"
  %l96 = alloca i32
  %l99 = alloca i1
  %l101 = alloca i1
  %l102 = alloca i1
  %l105 = alloca { i64, ptr }
  %l106 = alloca i1
  %l107 = alloca ptr
  %l109 = alloca %"compiler/diagmsg:Msg"
  %l110 = alloca i32
  %l114 = alloca { i64, ptr }
  %l115 = alloca i1
  %l116 = alloca i1
  %l119 = alloca { i64, ptr }
  %l120 = alloca i1
  %l121 = alloca i1
  %l124 = alloca { i64, ptr }
  %l125 = alloca i1
  %l126 = alloca ptr
  %l128 = alloca %"compiler/diagmsg:Msg"
  %l129 = alloca i32
  %l133 = alloca { i64, ptr }
  %l134 = alloca i1
  %l135 = alloca i1
  %l137 = alloca i1
  %l138 = alloca ptr
  %l140 = alloca %"compiler/diagmsg:Msg"
  %l141 = alloca i32
  %l144 = alloca i64
  %l147 = alloca ptr
  %l149 = alloca %"compiler/diagmsg:Msg"
  %l150 = alloca i32
  %l152 = alloca i64
  %l158 = alloca { i64, ptr }
  %l163 = alloca i1
  %l165 = alloca i1
  %l167 = alloca i1
  %l169 = alloca { i64, ptr }
  %l171 = alloca i1
  %l173 = alloca i1
  %l183 = alloca i1
  %l185 = alloca i1
  %l186 = alloca i1
  %l188 = alloca ptr
  %l190 = alloca %"compiler/diagmsg:Msg"
  %l191 = alloca i32
  %l194 = alloca i1
  %l196 = alloca ptr
  %l198 = alloca %"compiler/diagmsg:Msg"
  %l199 = alloca i32
  %l202 = alloca i1
  %l204 = alloca i1
  %l206 = alloca ptr
  %l209 = alloca %"compiler/diagmsg:Msg"
  %l210 = alloca i32
  %l213 = alloca i1
  %l216 = alloca i1
  %l217 = alloca ptr
  %l218 = alloca { i64, ptr }
  %l219 = alloca { i64, ptr }
  %l221 = alloca i1
  %l223 = alloca ptr
  %l225 = alloca %"compiler/diagmsg:Msg"
  %l226 = alloca i32
  %l229 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l230 = alloca ptr
  %l231 = alloca i64
  %l236 = alloca { i64, ptr }
  %l238 = alloca i1
  %l240 = alloca ptr
  %l241 = alloca i64
  %l247 = alloca ptr
  %l248 = alloca i64
  %l270 = alloca %"std/os:Output"
  %l272 = alloca { i64, ptr }
  %l275 = alloca %"std/os:Output"
  %l276 = alloca i32
  %l278 = alloca i1
  %l281 = alloca ptr
  %l283 = alloca %"compiler/diagmsg:Msg"
  %l284 = alloca i32
  %l288 = alloca ptr
  %l290 = alloca %"compiler/diagmsg:Msg"
  %l291 = alloca i32
  %l295 = alloca i32
  %l299 = alloca ptr
  %l301 = alloca %"compiler/diagmsg:Msg"
  %l302 = alloca i32
  %l304 = alloca ptr
  %l306 = alloca %"compiler/diagmsg:Msg"
  %l307 = alloca i32
  %l310 = alloca i1
  %l313 = alloca i1
  %l315 = alloca ptr
  %l317 = alloca %"compiler/diagmsg:Msg"
  %l318 = alloca i32
  %l320 = alloca i64
  %l327 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %s21 = alloca %olang.scope
  %s22 = alloca %olang.scope
  %s28 = alloca %olang.scope
  %s31 = alloca %olang.scope
  %s32 = alloca %olang.scope
  %s33 = alloca %olang.scope
  %s34 = alloca %olang.scope
  %s35 = alloca %olang.scope
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
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v6, i64 128, i64 8)
  store ptr %t2, ptr %lp7
  %t3 = load %"compiler/target:Target", ptr %l20
  %t4 = load ptr, ptr %lp7
  store %"compiler/target:Target" %t3, ptr %t4
  %t5 = ptrtoint ptr %v6 to i64
  store i64 %t5, ptr %l21, !tbaa !24
  %t6 = load i1, ptr @olang_2esole_2ecompiler_2ftarget_3aTarget_2e0
  br i1 %t6, label %bb2, label %bb3
bb2:
  %t8 = call ptr @__olang_region_make(ptr %v6)
  %t9 = ptrtoint ptr %t8 to i64
  store i64 %t9, ptr %l21, !tbaa !24
  br label %bb3
bb3:
  %t10 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t10, 1
  %t13 = extractvalue { i64, ptr } %t10, 0
  %t14 = load i64, ptr %l21
  %t15 = inttoptr i64 %t14 to ptr
  %t16 = call ptr @__olang_scope_alloc(ptr %t15, i64 %t13)
  call void @olang_textcopy(ptr %t16, ptr %t12, i64 %t13)
  %t17 = insertvalue { i64, ptr } undef, i64 %t13, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t16, 1
  %t20 = load i64, ptr %l21
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load ptr, ptr %lp7
  %t29 = getelementptr %"compiler/target:Target", ptr %t28, i32 0, i32 0
  %t30 = load { i64, ptr }, ptr %t29, !tbaa !27
  store { i64, ptr } %t30, ptr %l26, !tbaa !27
  %t32 = load ptr, ptr %lp7
  %t33 = getelementptr %"compiler/target:Target", ptr %t32, i32 0, i32 0
  store { i64, ptr } %t27, ptr %t33, !tbaa !27
  %t34 = load i1, ptr @olang_2esole_2ecompiler_2ftarget_3aTarget_2e0
  br i1 %t34, label %bb4, label %bb5
bb4:
  %t36 = load { i64, ptr }, ptr %l26
  %t37 = extractvalue { i64, ptr } %t36, 1
  call void @__olang_region_release(ptr %t37)
  store { i64, ptr } zeroinitializer, ptr %l26
  br label %bb5
bb5:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d28, i32 0, i32 1) }, ptr %l8, !tbaa !27
  %t38 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t38, 1
  %t41 = extractvalue { i64, ptr } %t38, 0
  %t42 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t41)
  call void @olang_textcopy(ptr %t42, ptr %t40, i64 %t41)
  %t43 = insertvalue { i64, ptr } undef, i64 %t41, 0
  %t44 = insertvalue { i64, ptr } %t43, ptr %t42, 1
  %t46 = extractvalue { i64, ptr } %t44, 0
  %t47 = extractvalue { i64, ptr } %t44, 1
  %t48 = mul i64 %t46, 1
  %t49 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t48)
  call void @llvm.memcpy.p0.p0.i64(ptr %t49, ptr %t47, i64 %t48, i1 false)
  %t50 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr %t49, 1
  store { i64, ptr } %t51, ptr %l9, !tbaa !27
  store i1 true, ptr %l10, !tbaa !21
  store i64 -1, ptr %l11, !tbaa !24
  %t53 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t56 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v0, { i64, ptr } %t53, i8 45)
  %t57 = extractvalue { i32, i64 } %t56, 1
  %t58 = extractvalue { i32, i64 } %t56, 0
  store i32 %t58, ptr %l35
  %t59 = icmp ne i32 %t58, 0
  br i1 %t59, label %bb7, label %ok.60, !prof !99
ok.60:
  store i64 %t57, ptr %l34
  br label %bb6
bb6:
  %t61 = load i64, ptr %l34, !tbaa !24
  store i64 %t61, ptr %l31, !tbaa !24
  br label %bb9
bb7:
  br label %bb8
bb8:
  store i64 -1, ptr %l31, !tbaa !24
  br label %bb9
bb9:
  %t62 = load i64, ptr %l31, !tbaa !24
  store i64 %t62, ptr %l12, !tbaa !24
  %t63 = load i64, ptr %l12, !tbaa !24
  %t65 = icmp sge i64 %t63, 0
  br i1 %t65, label %bb10, label %bb11
bb10:
  %t67 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t67, ptr %l38, !tbaa !27
  %t68 = load i64, ptr %l12, !tbaa !24
  store i64 %t68, ptr %l39, !tbaa !24
  %t69 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t70 = extractvalue { i64, ptr } %t69, 0
  store i64 %t70, ptr %l40, !tbaa !24
  %t71 = icmp sge i64 0, 0
  br i1 %t71, label %bb12, label %bb13
bb11:
  br label %bb19
bb12:
  %t73 = load i64, ptr %l39, !tbaa !24
  %t74 = icmp sle i64 0, %t73
  br i1 %t74, label %bb14, label %bb15
bb13:
  call void @__olang_check_failed(ptr @olang_loc_5afbe203adc8766f_c0acc38cff9c62b)
  unreachable
bb14:
  %t76 = load i64, ptr %l39, !tbaa !24
  %t77 = load i64, ptr %l40, !tbaa !24
  %t78 = icmp sle i64 %t76, %t77
  br i1 %t78, label %bb16, label %bb17
bb15:
  call void @__olang_check_failed(ptr @olang_loc_5afbe203adc8766f_c0acc38cff9c62b)
  unreachable
bb16:
  %t80 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !27
  %t82 = load i64, ptr %l39, !tbaa !24
  %t83 = getelementptr i8, ptr %t81, i64 0
  %t84 = sub i64 %t82, 0
  %t85 = insertvalue { i64, ptr } undef, i64 %t84, 0
  %t86 = insertvalue { i64, ptr } %t85, ptr %t83, 1
  %t88 = call i64 @compiler_2ftarget_2earchIndex(ptr %v0, { i64, ptr } %t86)
  store i64 %t88, ptr %l45
  br label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_5afbe203adc8766f_c0acc38cff9c62b)
  unreachable
bb18:
  %t89 = load i64, ptr %l45, !tbaa !24
  store i64 %t89, ptr %l11, !tbaa !24
  br label %bb19
bb19:
  %t90 = load i64, ptr %l11, !tbaa !24
  %t92 = icmp sge i64 %t90, 0
  br i1 %t92, label %bb20, label %bb21
bb20:
  store %olang.scope zeroinitializer, ptr %s4
  %t94 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t97 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v0, { i64, ptr } %t94, i8 58)
  %t98 = extractvalue { i32, i64 } %t97, 1
  %t99 = extractvalue { i32, i64 } %t97, 0
  store i32 %t99, ptr %l52
  %t100 = icmp ne i32 %t99, 0
  br i1 %t100, label %bb23, label %ok.101, !prof !99
ok.101:
  store i64 %t98, ptr %l51
  br label %bb22
bb21:
  store %olang.scope zeroinitializer, ptr %s10
  %t102 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d29, i32 0, i32 1) }, ptr %l114, !tbaa !27
  %t105 = load { i64, ptr }, ptr %l114, !tbaa !27
  %t106 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %s10, { i64, ptr } %t102, { i64, ptr } %t105)
  store i1 %t106, ptr %l115
  br label %bb70
bb22:
  %t107 = load i64, ptr %l51, !tbaa !24
  store i64 %t107, ptr %l48, !tbaa !24
  br label %bb25
bb23:
  br label %bb24
bb24:
  store i64 -1, ptr %l48, !tbaa !24
  br label %bb25
bb25:
  %t108 = load i64, ptr %l48, !tbaa !24
  store i64 %t108, ptr %l13, !tbaa !24
  %t109 = load i64, ptr %l13, !tbaa !24
  %t111 = icmp sge i64 %t109, 0
  br i1 %t111, label %bb26, label %bb27
bb26:
  %t113 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t113, ptr %l56, !tbaa !27
  %t114 = load i64, ptr %l13, !tbaa !24
  store i64 %t114, ptr %l57, !tbaa !24
  %t115 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t116 = extractvalue { i64, ptr } %t115, 0
  store i64 %t116, ptr %l58, !tbaa !24
  %t117 = icmp sge i64 0, 0
  br i1 %t117, label %bb28, label %bb29
bb27:
  %t119 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t121 = extractvalue { i64, ptr } %t119, 1
  %t122 = extractvalue { i64, ptr } %t119, 0
  %t123 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t122)
  call void @olang_textcopy(ptr %t123, ptr %t121, i64 %t122)
  %t124 = insertvalue { i64, ptr } undef, i64 %t122, 0
  %t125 = insertvalue { i64, ptr } %t124, ptr %t123, 1
  %t127 = extractvalue { i64, ptr } %t125, 0
  %t128 = extractvalue { i64, ptr } %t125, 1
  %t129 = mul i64 %t127, 1
  %t130 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t129)
  call void @llvm.memcpy.p0.p0.i64(ptr %t130, ptr %t128, i64 %t129, i1 false)
  %t131 = insertvalue { i64, ptr } undef, i64 %t127, 0
  %t132 = insertvalue { i64, ptr } %t131, ptr %t130, 1
  store { i64, ptr } %t132, ptr %l55, !tbaa !27
  br label %bb34
bb28:
  %t134 = load i64, ptr %l57, !tbaa !24
  %t135 = icmp sle i64 0, %t134
  br i1 %t135, label %bb30, label %bb31
bb29:
  call void @__olang_check_failed(ptr @olang_loc_ccc584ee5db490f2_f240216cb9bcdd2e)
  unreachable
bb30:
  %t137 = load i64, ptr %l57, !tbaa !24
  %t138 = load i64, ptr %l58, !tbaa !24
  %t139 = icmp sle i64 %t137, %t138
  br i1 %t139, label %bb32, label %bb33
bb31:
  call void @__olang_check_failed(ptr @olang_loc_ccc584ee5db490f2_f240216cb9bcdd2e)
  unreachable
bb32:
  %t141 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t142 = load ptr, ptr %t141, !tbaa !27
  %t143 = load i64, ptr %l57, !tbaa !24
  %t144 = getelementptr i8, ptr %t142, i64 0
  %t145 = sub i64 %t143, 0
  %t146 = insertvalue { i64, ptr } undef, i64 %t145, 0
  %t147 = insertvalue { i64, ptr } %t146, ptr %t144, 1
  %t149 = extractvalue { i64, ptr } %t147, 1
  %t150 = extractvalue { i64, ptr } %t147, 0
  %t151 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t150)
  call void @olang_textcopy(ptr %t151, ptr %t149, i64 %t150)
  %t152 = insertvalue { i64, ptr } undef, i64 %t150, 0
  %t153 = insertvalue { i64, ptr } %t152, ptr %t151, 1
  %t155 = extractvalue { i64, ptr } %t153, 0
  %t156 = extractvalue { i64, ptr } %t153, 1
  %t157 = mul i64 %t155, 1
  %t158 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t157)
  call void @llvm.memcpy.p0.p0.i64(ptr %t158, ptr %t156, i64 %t157, i1 false)
  %t159 = insertvalue { i64, ptr } undef, i64 %t155, 0
  %t160 = insertvalue { i64, ptr } %t159, ptr %t158, 1
  store { i64, ptr } %t160, ptr %l55, !tbaa !27
  br label %bb34
bb33:
  call void @__olang_check_failed(ptr @olang_loc_ccc584ee5db490f2_f240216cb9bcdd2e)
  unreachable
bb34:
  %t162 = load { i64, ptr }, ptr %l55, !tbaa !27
  store { i64, ptr } %t162, ptr %l8, !tbaa !27
  %t163 = load i64, ptr %l13, !tbaa !24
  %t165 = icmp sge i64 %t163, 0
  store i1 %t165, ptr %l10, !tbaa !21
  %t167 = load i64, ptr %l13, !tbaa !24
  %t169 = icmp sge i64 %t167, 0
  br i1 %t169, label %bb35, label %bb36
bb35:
  %t171 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t171, ptr %l73, !tbaa !27
  %t172 = load i64, ptr %l13, !tbaa !24
  %t174 = add i64 %t172, 1
  store i64 %t174, ptr %l75, !tbaa !24
  %t175 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t178 = extractvalue { i64, ptr } %t175, 0
  store i64 %t178, ptr %l78, !tbaa !24
  %t179 = load { i64, ptr }, ptr %l73, !tbaa !27
  %t180 = extractvalue { i64, ptr } %t179, 0
  store i64 %t180, ptr %l79, !tbaa !24
  %t181 = load i64, ptr %l75, !tbaa !24
  %t182 = icmp sge i64 %t181, 0
  br i1 %t182, label %bb37, label %bb38
bb36:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d30, i32 0, i32 1) }, ptr %l72, !tbaa !27
  br label %bb43
bb37:
  %t184 = load i64, ptr %l75, !tbaa !24
  %t185 = load i64, ptr %l78, !tbaa !24
  %t186 = icmp sle i64 %t184, %t185
  br i1 %t186, label %bb39, label %bb40
bb38:
  call void @__olang_check_failed(ptr @olang_loc_8b94dd4b00821371_32c50240ce2e918d)
  unreachable
bb39:
  %t188 = load i64, ptr %l78, !tbaa !24
  %t189 = load i64, ptr %l79, !tbaa !24
  %t190 = icmp sle i64 %t188, %t189
  br i1 %t190, label %bb41, label %bb42
bb40:
  call void @__olang_check_failed(ptr @olang_loc_8b94dd4b00821371_32c50240ce2e918d)
  unreachable
bb41:
  %t192 = getelementptr { i64, ptr }, ptr %l73, i32 0, i32 1
  %t193 = load ptr, ptr %t192, !tbaa !27
  %t194 = load i64, ptr %l75, !tbaa !24
  %t195 = load i64, ptr %l78, !tbaa !24
  %t196 = getelementptr i8, ptr %t193, i64 %t194
  %t197 = sub i64 %t195, %t194
  %t198 = insertvalue { i64, ptr } undef, i64 %t197, 0
  %t199 = insertvalue { i64, ptr } %t198, ptr %t196, 1
  %t201 = extractvalue { i64, ptr } %t199, 1
  %t202 = extractvalue { i64, ptr } %t199, 0
  %t203 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t202)
  call void @olang_textcopy(ptr %t203, ptr %t201, i64 %t202)
  %t204 = insertvalue { i64, ptr } undef, i64 %t202, 0
  %t205 = insertvalue { i64, ptr } %t204, ptr %t203, 1
  %t207 = extractvalue { i64, ptr } %t205, 0
  %t208 = extractvalue { i64, ptr } %t205, 1
  %t209 = mul i64 %t207, 1
  %t210 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t209)
  call void @llvm.memcpy.p0.p0.i64(ptr %t210, ptr %t208, i64 %t209, i1 false)
  %t211 = insertvalue { i64, ptr } undef, i64 %t207, 0
  %t212 = insertvalue { i64, ptr } %t211, ptr %t210, 1
  store { i64, ptr } %t212, ptr %l72, !tbaa !27
  br label %bb43
bb42:
  call void @__olang_check_failed(ptr @olang_loc_8b94dd4b00821371_32c50240ce2e918d)
  unreachable
bb43:
  %t214 = load { i64, ptr }, ptr %l72, !tbaa !27
  store { i64, ptr } %t214, ptr %l9, !tbaa !27
  %t215 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t217 = extractvalue { i64, ptr } %t215, 0
  %t219 = icmp sgt i64 %t217, 10
  br i1 %t219, label %bb44, label %bb45
bb44:
  %t221 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t223 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %s0, ptr %s4, { i64, ptr } %t221, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d31, i32 0, i32 1) })
  store i1 %t223, ptr %l91
  br label %bb46
bb45:
  store i1 false, ptr %l89, !tbaa !21
  br label %bb47
bb46:
  %t224 = load i1, ptr %l91, !tbaa !21
  store i1 %t224, ptr %l89, !tbaa !21
  br label %bb47
bb47:
  %t225 = load i1, ptr %l89, !tbaa !21
  %t226 = xor i1 %t225, true
  br i1 %t226, label %bb48, label %bb49
bb48:
  store %olang.scope zeroinitializer, ptr %s8
  %t228 = load ptr, ptr %l5, !tbaa !29
  store ptr %t228, ptr %l93, !tbaa !29
  %t229 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t231 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTargetUnsupported(ptr %v0, ptr %s8, { i64, ptr } %t229)
  store %"compiler/diagmsg:Msg" %t231, ptr %l95
  br label %bb50
bb49:
  br label %bb54
bb50:
  %t232 = load ptr, ptr %l93, !tbaa !29
  %t233 = load %"compiler/diagmsg:Msg", ptr %l95
  %t234 = call i32 @compiler_2ftarget_2erefuse(ptr %v4, ptr %s8, ptr %t232, %"compiler/diagmsg:Msg" %t233)
  store i32 %t234, ptr %l96
  %t235 = icmp ne i32 %t234, 0
  br i1 %t235, label %bb52, label %ok.236, !prof !99
ok.236:
  br label %bb51
bb51:
  br label %bb53
bb52:
  %t237 = load i32, ptr %l96, !tbaa !23
  %t238 = lshr i32 %t237, 16
  %t239 = and i32 %t237, 65535
  %t240 = icmp eq i32 %t238, 1
  %t241 = select i1 %t240, i32 1, i32 0
  %t242 = icmp eq i32 %t237, 0
  %t243 = shl i32 %t241, 16
  %t244 = or i32 %t243, %t239
  %t245 = select i1 %t242, i32 0, i32 %t244
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  %t247 = insertvalue { i32, %"compiler/target:Target" } zeroinitializer, i32 %t245, 0
  store { i32, %"compiler/target:Target" } %t247, ptr %rv
  br label %ret
bb53:
  call void @__olang_scope_close(ptr %s8)
  br label %bb54
bb54:
  %t248 = load i1, ptr %l10, !tbaa !21
  br i1 %t248, label %bb55, label %bb56
bb55:
  %t250 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t252 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s4, { i64, ptr } %t250, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d32, i32 0, i32 1) })
  store i1 %t252, ptr %l101
  br label %bb57
bb56:
  store i1 false, ptr %l99, !tbaa !21
  br label %bb62
bb57:
  %t253 = load i1, ptr %l101, !tbaa !21
  br i1 %t253, label %bb58, label %bb59
bb58:
  store i1 true, ptr %l102, !tbaa !21
  br label %bb61
bb59:
  %t254 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d33, i32 0, i32 1) }, ptr %l105, !tbaa !27
  %t257 = load { i64, ptr }, ptr %l105, !tbaa !27
  %t258 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %s0, ptr %s4, { i64, ptr } %t254, { i64, ptr } %t257)
  store i1 %t258, ptr %l106
  br label %bb60
bb60:
  %t259 = load i1, ptr %l106, !tbaa !21
  store i1 %t259, ptr %l102, !tbaa !21
  br label %bb61
bb61:
  %t260 = load i1, ptr %l102, !tbaa !21
  store i1 %t260, ptr %l99, !tbaa !21
  br label %bb62
bb62:
  %t261 = load i1, ptr %l99, !tbaa !21
  br i1 %t261, label %bb63, label %bb64
bb63:
  store %olang.scope zeroinitializer, ptr %s9
  %t262 = load ptr, ptr %l5, !tbaa !29
  store ptr %t262, ptr %l107, !tbaa !29
  %t263 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t265 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTargetUnknown(ptr %v0, ptr %s9, { i64, ptr } %t263)
  store %"compiler/diagmsg:Msg" %t265, ptr %l109
  br label %bb65
bb64:
  br label %bb69
bb65:
  %t266 = load ptr, ptr %l107, !tbaa !29
  %t267 = load %"compiler/diagmsg:Msg", ptr %l109
  %t268 = call i32 @compiler_2ftarget_2erefuse(ptr %v4, ptr %s9, ptr %t266, %"compiler/diagmsg:Msg" %t267)
  store i32 %t268, ptr %l110
  %t269 = icmp ne i32 %t268, 0
  br i1 %t269, label %bb67, label %ok.270, !prof !99
ok.270:
  br label %bb66
bb66:
  br label %bb68
bb67:
  %t271 = load i32, ptr %l110, !tbaa !23
  %t272 = lshr i32 %t271, 16
  %t273 = and i32 %t271, 65535
  %t274 = icmp eq i32 %t272, 1
  %t275 = select i1 %t274, i32 1, i32 0
  %t276 = icmp eq i32 %t271, 0
  %t277 = shl i32 %t275, 16
  %t278 = or i32 %t277, %t273
  %t279 = select i1 %t276, i32 0, i32 %t278
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  %t281 = insertvalue { i32, %"compiler/target:Target" } zeroinitializer, i32 %t279, 0
  store { i32, %"compiler/target:Target" } %t281, ptr %rv
  br label %ret
bb68:
  call void @__olang_scope_close(ptr %s9)
  br label %bb69
bb69:
  call void @__olang_scope_close(ptr %s4)
  br label %bb106
bb70:
  %t282 = load i1, ptr %l115, !tbaa !21
  br i1 %t282, label %bb71, label %bb72
bb71:
  store i1 true, ptr %l116, !tbaa !21
  br label %bb74
bb72:
  %t283 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d34, i32 0, i32 1) }, ptr %l119, !tbaa !27
  %t286 = load { i64, ptr }, ptr %l119, !tbaa !27
  %t287 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %s10, { i64, ptr } %t283, { i64, ptr } %t286)
  store i1 %t287, ptr %l120
  br label %bb73
bb73:
  %t288 = load i1, ptr %l120, !tbaa !21
  store i1 %t288, ptr %l116, !tbaa !21
  br label %bb74
bb74:
  %t289 = load i1, ptr %l116, !tbaa !21
  br i1 %t289, label %bb75, label %bb76
bb75:
  store i1 true, ptr %l121, !tbaa !21
  br label %bb78
bb76:
  %t290 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d35, i32 0, i32 1) }, ptr %l124, !tbaa !27
  %t293 = load { i64, ptr }, ptr %l124, !tbaa !27
  %t294 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %s10, { i64, ptr } %t290, { i64, ptr } %t293)
  store i1 %t294, ptr %l125
  br label %bb77
bb77:
  %t295 = load i1, ptr %l125, !tbaa !21
  store i1 %t295, ptr %l121, !tbaa !21
  br label %bb78
bb78:
  %t296 = load i1, ptr %l121, !tbaa !21
  br i1 %t296, label %bb79, label %bb80
bb79:
  store %olang.scope zeroinitializer, ptr %s11
  %t297 = load ptr, ptr %l5, !tbaa !29
  store ptr %t297, ptr %l126, !tbaa !29
  %t298 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t300 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTargetUnsupported(ptr %v0, ptr %s11, { i64, ptr } %t298)
  store %"compiler/diagmsg:Msg" %t300, ptr %l128
  br label %bb81
bb80:
  br label %bb85
bb81:
  %t301 = load ptr, ptr %l126, !tbaa !29
  %t302 = load %"compiler/diagmsg:Msg", ptr %l128
  %t303 = call i32 @compiler_2ftarget_2erefuse(ptr %v4, ptr %s11, ptr %t301, %"compiler/diagmsg:Msg" %t302)
  store i32 %t303, ptr %l129
  %t304 = icmp ne i32 %t303, 0
  br i1 %t304, label %bb83, label %ok.305, !prof !99
ok.305:
  br label %bb82
bb82:
  br label %bb84
bb83:
  %t306 = load i32, ptr %l129, !tbaa !23
  %t307 = lshr i32 %t306, 16
  %t308 = and i32 %t306, 65535
  %t309 = icmp eq i32 %t307, 1
  %t310 = select i1 %t309, i32 1, i32 0
  %t311 = icmp eq i32 %t306, 0
  %t312 = shl i32 %t310, 16
  %t313 = or i32 %t312, %t308
  %t314 = select i1 %t311, i32 0, i32 %t313
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s10)
  call void @__olang_scope_close(ptr %s0)
  %t316 = insertvalue { i32, %"compiler/target:Target" } zeroinitializer, i32 %t314, 0
  store { i32, %"compiler/target:Target" } %t316, ptr %rv
  br label %ret
bb84:
  call void @__olang_scope_close(ptr %s11)
  br label %bb85
bb85:
  %t317 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d36, i32 0, i32 1) }, ptr %l133, !tbaa !27
  %t320 = load { i64, ptr }, ptr %l133, !tbaa !27
  %t321 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %s10, { i64, ptr } %t317, { i64, ptr } %t320)
  store i1 %t321, ptr %l134
  br label %bb86
bb86:
  %t322 = load i1, ptr %l134, !tbaa !21
  br i1 %t322, label %bb87, label %bb88
bb87:
  store i1 true, ptr %l135, !tbaa !21
  br label %bb90
bb88:
  %t323 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t325 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s10, { i64, ptr } %t323, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d37, i32 0, i32 1) })
  store i1 %t325, ptr %l137
  br label %bb89
bb89:
  %t326 = load i1, ptr %l137, !tbaa !21
  store i1 %t326, ptr %l135, !tbaa !21
  br label %bb90
bb90:
  %t327 = load i1, ptr %l135, !tbaa !21
  br i1 %t327, label %bb91, label %bb92
bb91:
  store %olang.scope zeroinitializer, ptr %s12
  %t328 = load ptr, ptr %l5, !tbaa !29
  store ptr %t328, ptr %l138, !tbaa !29
  %t329 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t331 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTargetUnknown(ptr %v0, ptr %s12, { i64, ptr } %t329)
  store %"compiler/diagmsg:Msg" %t331, ptr %l140
  br label %bb93
bb92:
  br label %bb97
bb93:
  %t332 = load ptr, ptr %l138, !tbaa !29
  %t333 = load %"compiler/diagmsg:Msg", ptr %l140
  %t334 = call i32 @compiler_2ftarget_2erefuse(ptr %v4, ptr %s12, ptr %t332, %"compiler/diagmsg:Msg" %t333)
  store i32 %t334, ptr %l141
  %t335 = icmp ne i32 %t334, 0
  br i1 %t335, label %bb95, label %ok.336, !prof !99
ok.336:
  br label %bb94
bb94:
  br label %bb96
bb95:
  %t337 = load i32, ptr %l141, !tbaa !23
  %t338 = lshr i32 %t337, 16
  %t339 = and i32 %t337, 65535
  %t340 = icmp eq i32 %t338, 1
  %t341 = select i1 %t340, i32 1, i32 0
  %t342 = icmp eq i32 %t337, 0
  %t343 = shl i32 %t341, 16
  %t344 = or i32 %t343, %t339
  %t345 = select i1 %t342, i32 0, i32 %t344
  call void @__olang_scope_close(ptr %s12)
  call void @__olang_scope_close(ptr %s10)
  call void @__olang_scope_close(ptr %s0)
  %t347 = insertvalue { i32, %"compiler/target:Target" } zeroinitializer, i32 %t345, 0
  store { i32, %"compiler/target:Target" } %t347, ptr %rv
  br label %ret
bb96:
  call void @__olang_scope_close(ptr %s12)
  br label %bb97
bb97:
  %t348 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t350 = call i64 @compiler_2ftarget_2earchIndex(ptr %v3, { i64, ptr } %t348)
  store i64 %t350, ptr %l144
  br label %bb98
bb98:
  %t351 = load i64, ptr %l144, !tbaa !24
  store i64 %t351, ptr %l11, !tbaa !24
  %t352 = load i64, ptr %l11, !tbaa !24
  %t354 = icmp slt i64 %t352, 0
  br i1 %t354, label %bb99, label %bb100
bb99:
  store %olang.scope zeroinitializer, ptr %s13
  %t356 = load ptr, ptr %l5, !tbaa !29
  store ptr %t356, ptr %l147, !tbaa !29
  %t357 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t359 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTargetUnsupported(ptr %v3, ptr %s13, { i64, ptr } %t357)
  store %"compiler/diagmsg:Msg" %t359, ptr %l149
  br label %bb101
bb100:
  br label %bb105
bb101:
  %t360 = load ptr, ptr %l147, !tbaa !29
  %t361 = load %"compiler/diagmsg:Msg", ptr %l149
  %t362 = call i32 @compiler_2ftarget_2erefuse(ptr %v4, ptr %s13, ptr %t360, %"compiler/diagmsg:Msg" %t361)
  store i32 %t362, ptr %l150
  %t363 = icmp ne i32 %t362, 0
  br i1 %t363, label %bb103, label %ok.364, !prof !99
ok.364:
  br label %bb102
bb102:
  br label %bb104
bb103:
  %t365 = load i32, ptr %l150, !tbaa !23
  %t366 = lshr i32 %t365, 16
  %t367 = and i32 %t365, 65535
  %t368 = icmp eq i32 %t366, 1
  %t369 = select i1 %t368, i32 1, i32 0
  %t370 = icmp eq i32 %t365, 0
  %t371 = shl i32 %t369, 16
  %t372 = or i32 %t371, %t367
  %t373 = select i1 %t370, i32 0, i32 %t372
  call void @__olang_scope_close(ptr %s13)
  call void @__olang_scope_close(ptr %s10)
  call void @__olang_scope_close(ptr %s0)
  %t375 = insertvalue { i32, %"compiler/target:Target" } zeroinitializer, i32 %t373, 0
  store { i32, %"compiler/target:Target" } %t375, ptr %rv
  br label %ret
bb104:
  call void @__olang_scope_close(ptr %s13)
  br label %bb105
bb105:
  call void @__olang_scope_close(ptr %s10)
  br label %bb106
bb106:
  %t376 = ptrtoint ptr %v6 to i64
  store i64 %t376, ptr %l152, !tbaa !24
  %t377 = load i1, ptr @olang_2esole_2ecompiler_2ftarget_3aTarget_2e2
  br i1 %t377, label %bb107, label %bb108
bb107:
  %t379 = call ptr @__olang_region_make(ptr %v6)
  %t380 = ptrtoint ptr %t379 to i64
  store i64 %t380, ptr %l152, !tbaa !24
  br label %bb108
bb108:
  %t381 = load i64, ptr %l11, !tbaa !24
  %t383 = getelementptr [2 x { i64, ptr }], ptr @G_2ecompiler_2ftarget_2eArchs, i64 0, i64 %t381
  %t384 = load { i64, ptr }, ptr %t383, !tbaa !37
  %t386 = extractvalue { i64, ptr } %t384, 1
  %t387 = extractvalue { i64, ptr } %t384, 0
  %t388 = load i64, ptr %l152
  %t389 = inttoptr i64 %t388 to ptr
  %t390 = call ptr @__olang_scope_alloc(ptr %t389, i64 %t387)
  call void @olang_textcopy(ptr %t390, ptr %t386, i64 %t387)
  %t391 = insertvalue { i64, ptr } undef, i64 %t387, 0
  %t392 = insertvalue { i64, ptr } %t391, ptr %t390, 1
  %t394 = load i64, ptr %l152
  %t395 = inttoptr i64 %t394 to ptr
  %t396 = extractvalue { i64, ptr } %t392, 0
  %t397 = extractvalue { i64, ptr } %t392, 1
  %t398 = mul i64 %t396, 1
  %t399 = call ptr @__olang_scope_alloc(ptr %t395, i64 %t398)
  call void @llvm.memcpy.p0.p0.i64(ptr %t399, ptr %t397, i64 %t398, i1 false)
  %t400 = insertvalue { i64, ptr } undef, i64 %t396, 0
  %t401 = insertvalue { i64, ptr } %t400, ptr %t399, 1
  %t402 = load ptr, ptr %lp7
  %t403 = getelementptr %"compiler/target:Target", ptr %t402, i32 0, i32 2
  %t404 = load { i64, ptr }, ptr %t403, !tbaa !27
  store { i64, ptr } %t404, ptr %l158, !tbaa !27
  %t406 = load ptr, ptr %lp7
  %t407 = getelementptr %"compiler/target:Target", ptr %t406, i32 0, i32 2
  store { i64, ptr } %t401, ptr %t407, !tbaa !27
  %t408 = load i1, ptr @olang_2esole_2ecompiler_2ftarget_3aTarget_2e2
  br i1 %t408, label %bb109, label %bb110
bb109:
  %t410 = load { i64, ptr }, ptr %l158
  %t411 = extractvalue { i64, ptr } %t410, 1
  call void @__olang_region_release(ptr %t411)
  store { i64, ptr } zeroinitializer, ptr %l158
  br label %bb110
bb110:
  %t412 = load i64, ptr %l11, !tbaa !24
  %t414 = getelementptr [2 x { i64, ptr }], ptr @G_2ecompiler_2ftarget_2eArchs, i64 0, i64 %t412
  %t415 = load { i64, ptr }, ptr %t414, !tbaa !37
  %t416 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t417 = load ptr, ptr @__olang_prog_scope
  %t420 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %t417, ptr %v3, { i64, ptr } %t415, { i64, ptr } %t416)
  store i1 %t420, ptr %l163
  br label %bb111
bb111:
  %t421 = load i1, ptr %l163, !tbaa !21
  %t422 = xor i1 %t421, true
  br i1 %t422, label %bb112, label %bb113
bb112:
  store i1 true, ptr %l165, !tbaa !21
  br label %bb115
bb113:
  %t426 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %a3, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d38, i32 0, i32 1) })
  store i1 %t426, ptr %l167
  br label %bb114
bb114:
  %t427 = load i1, ptr %l167, !tbaa !21
  %t428 = xor i1 %t427, true
  store i1 %t428, ptr %l165, !tbaa !21
  br label %bb115
bb115:
  %t430 = load i1, ptr %l165, !tbaa !21
  %t431 = load ptr, ptr %lp7
  %t432 = getelementptr %"compiler/target:Target", ptr %t431, i32 0, i32 9
  store i1 %t430, ptr %t432, !tbaa !21
  %t433 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t433, ptr %l169, !tbaa !27
  %t434 = load { i64, ptr }, ptr %l169, !tbaa !27
  %t435 = extractvalue { i64, ptr } %t434, 1
  %t436 = call ptr @__olang_scope_of(ptr %t435, ptr null)
  %t437 = ptrtoint ptr %t436 to i64
  %t439 = inttoptr i64 %t437 to ptr
  %t440 = load { i64, ptr }, ptr %l169, !tbaa !27
  %t441 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %t439, ptr %s0, { i64, ptr } %t440, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d39, i32 0, i32 1) })
  store i1 %t441, ptr %l171
  br label %bb116
bb116:
  %t442 = load i1, ptr %l171, !tbaa !21
  %t443 = xor i1 %t442, true
  br i1 %t443, label %bb117, label %bb118
bb117:
  %t445 = load ptr, ptr %lp7
  %t446 = getelementptr %"compiler/target:Target", ptr %t445, i32 0, i32 9
  %t447 = load i1, ptr %t446, !tbaa !21
  %t449 = xor i1 %t447, true
  store i1 %t449, ptr %l173, !tbaa !21
  br label %bb119
bb118:
  store i1 false, ptr %l173, !tbaa !21
  br label %bb119
bb119:
  %t451 = load i1, ptr %l173, !tbaa !21
  br i1 %t451, label %bb120, label %bb121
bb120:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d40, i32 0, i32 1) }, ptr %l8, !tbaa !27
  %t452 = load i1, ptr %l10, !tbaa !21
  %t454 = xor i1 %t452, true
  br i1 %t454, label %bb122, label %bb123
bb121:
  br label %bb125
bb122:
  %t456 = load i64, ptr %l11, !tbaa !24
  %t458 = getelementptr [2 x { i64, ptr }], ptr @G_2ecompiler_2ftarget_2eArchDefaultCpus, i64 0, i64 %t456
  %t459 = load { i64, ptr }, ptr %t458, !tbaa !37
  %t461 = extractvalue { i64, ptr } %t459, 1
  %t462 = extractvalue { i64, ptr } %t459, 0
  %t463 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t462)
  call void @olang_textcopy(ptr %t463, ptr %t461, i64 %t462)
  %t464 = insertvalue { i64, ptr } undef, i64 %t462, 0
  %t465 = insertvalue { i64, ptr } %t464, ptr %t463, 1
  %t467 = extractvalue { i64, ptr } %t465, 0
  %t468 = extractvalue { i64, ptr } %t465, 1
  %t469 = mul i64 %t467, 1
  %t470 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t469)
  call void @llvm.memcpy.p0.p0.i64(ptr %t470, ptr %t468, i64 %t469, i1 false)
  %t471 = insertvalue { i64, ptr } undef, i64 %t467, 0
  %t472 = insertvalue { i64, ptr } %t471, ptr %t470, 1
  store { i64, ptr } %t472, ptr %l9, !tbaa !27
  store i1 true, ptr %l10, !tbaa !21
  br label %bb124
bb123:
  br label %bb124
bb124:
  br label %bb125
bb125:
  %t474 = load i1, ptr %l10, !tbaa !21
  br i1 %t474, label %bb126, label %bb127
bb126:
  %t476 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t478 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t476, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d41, i32 0, i32 1) })
  store i1 %t478, ptr %l185
  br label %bb128
bb127:
  store i1 false, ptr %l183, !tbaa !21
  br label %bb129
bb128:
  %t479 = load i1, ptr %l185, !tbaa !21
  store i1 %t479, ptr %l183, !tbaa !21
  br label %bb129
bb129:
  %t480 = load i1, ptr %l183, !tbaa !21
  br i1 %t480, label %bb130, label %bb131
bb130:
  %t481 = load ptr, ptr %lp7
  %t482 = getelementptr %"compiler/target:Target", ptr %t481, i32 0, i32 9
  %t483 = load i1, ptr %t482, !tbaa !21
  store i1 %t483, ptr %l186, !tbaa !21
  br label %bb132
bb131:
  store i1 false, ptr %l186, !tbaa !21
  br label %bb132
bb132:
  %t485 = load i1, ptr %l186, !tbaa !21
  br i1 %t485, label %bb133, label %bb134
bb133:
  store %olang.scope zeroinitializer, ptr %s18
  %t486 = load ptr, ptr %l5, !tbaa !29
  store ptr %t486, ptr %l188, !tbaa !29
  %t487 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t489 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTargetNativeForeign(ptr %v0, ptr %s18, { i64, ptr } %t487)
  store %"compiler/diagmsg:Msg" %t489, ptr %l190
  br label %bb135
bb134:
  br label %bb139
bb135:
  %t490 = load ptr, ptr %l188, !tbaa !29
  %t491 = load %"compiler/diagmsg:Msg", ptr %l190
  %t492 = call i32 @compiler_2ftarget_2erefuse(ptr %v4, ptr %s18, ptr %t490, %"compiler/diagmsg:Msg" %t491)
  store i32 %t492, ptr %l191
  %t493 = icmp ne i32 %t492, 0
  br i1 %t493, label %bb137, label %ok.494, !prof !99
ok.494:
  br label %bb136
bb136:
  br label %bb138
bb137:
  %t495 = load i32, ptr %l191, !tbaa !23
  %t496 = lshr i32 %t495, 16
  %t497 = and i32 %t495, 65535
  %t498 = icmp eq i32 %t496, 1
  %t499 = select i1 %t498, i32 1, i32 0
  %t500 = icmp eq i32 %t495, 0
  %t501 = shl i32 %t499, 16
  %t502 = or i32 %t501, %t497
  %t503 = select i1 %t500, i32 0, i32 %t502
  call void @__olang_scope_close(ptr %s18)
  call void @__olang_scope_close(ptr %s0)
  %t505 = insertvalue { i32, %"compiler/target:Target" } zeroinitializer, i32 %t503, 0
  store { i32, %"compiler/target:Target" } %t505, ptr %rv
  br label %ret
bb138:
  call void @__olang_scope_close(ptr %s18)
  br label %bb139
bb139:
  %t506 = load ptr, ptr %lp7
  %t507 = getelementptr %"compiler/target:Target", ptr %t506, i32 0, i32 9
  %t508 = load i1, ptr %t507, !tbaa !21
  br i1 %t508, label %bb140, label %bb141
bb140:
  %t510 = load i1, ptr %l2, !tbaa !21
  store i1 %t510, ptr %l194, !tbaa !21
  br label %bb142
bb141:
  store i1 false, ptr %l194, !tbaa !21
  br label %bb142
bb142:
  %t512 = load i1, ptr %l194, !tbaa !21
  br i1 %t512, label %bb143, label %bb144
bb143:
  store %olang.scope zeroinitializer, ptr %s19
  %t513 = load ptr, ptr %l5, !tbaa !29
  store ptr %t513, ptr %l196, !tbaa !29
  %t514 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t516 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTargetForeignMode(ptr %s19, ptr %v0, ptr %s19, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d42, i32 0, i32 1) }, { i64, ptr } %t514)
  store %"compiler/diagmsg:Msg" %t516, ptr %l198
  br label %bb145
bb144:
  br label %bb149
bb145:
  %t517 = load ptr, ptr %l196, !tbaa !29
  %t518 = load %"compiler/diagmsg:Msg", ptr %l198
  %t519 = call i32 @compiler_2ftarget_2erefuse(ptr %v4, ptr %s19, ptr %t517, %"compiler/diagmsg:Msg" %t518)
  store i32 %t519, ptr %l199
  %t520 = icmp ne i32 %t519, 0
  br i1 %t520, label %bb147, label %ok.521, !prof !99
ok.521:
  br label %bb146
bb146:
  br label %bb148
bb147:
  %t522 = load i32, ptr %l199, !tbaa !23
  %t523 = lshr i32 %t522, 16
  %t524 = and i32 %t522, 65535
  %t525 = icmp eq i32 %t523, 1
  %t526 = select i1 %t525, i32 1, i32 0
  %t527 = icmp eq i32 %t522, 0
  %t528 = shl i32 %t526, 16
  %t529 = or i32 %t528, %t524
  %t530 = select i1 %t527, i32 0, i32 %t529
  call void @__olang_scope_close(ptr %s19)
  call void @__olang_scope_close(ptr %s0)
  %t532 = insertvalue { i32, %"compiler/target:Target" } zeroinitializer, i32 %t530, 0
  store { i32, %"compiler/target:Target" } %t532, ptr %rv
  br label %ret
bb148:
  call void @__olang_scope_close(ptr %s19)
  br label %bb149
bb149:
  %t533 = load ptr, ptr %lp7
  %t534 = getelementptr %"compiler/target:Target", ptr %t533, i32 0, i32 9
  %t535 = load i1, ptr %t534, !tbaa !21
  br i1 %t535, label %bb150, label %bb151
bb150:
  %t537 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t539 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v5, ptr %s0, { i64, ptr } %t537, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d43, i32 0, i32 1) })
  store i1 %t539, ptr %l204
  br label %bb152
bb151:
  store i1 false, ptr %l202, !tbaa !21
  br label %bb153
bb152:
  %t540 = load i1, ptr %l204, !tbaa !21
  %t541 = xor i1 %t540, true
  store i1 %t541, ptr %l202, !tbaa !21
  br label %bb153
bb153:
  %t543 = load i1, ptr %l202, !tbaa !21
  br i1 %t543, label %bb154, label %bb155
bb154:
  store %olang.scope zeroinitializer, ptr %s20
  %t544 = load ptr, ptr %l5, !tbaa !29
  store ptr %t544, ptr %l206, !tbaa !29
  %t545 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t546 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t549 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTargetForeignMode(ptr %v5, ptr %v0, ptr %s20, { i64, ptr } %t545, { i64, ptr } %t546)
  store %"compiler/diagmsg:Msg" %t549, ptr %l209
  br label %bb156
bb155:
  br label %bb160
bb156:
  %t550 = load ptr, ptr %l206, !tbaa !29
  %t551 = load %"compiler/diagmsg:Msg", ptr %l209
  %t552 = call i32 @compiler_2ftarget_2erefuse(ptr %v4, ptr %s20, ptr %t550, %"compiler/diagmsg:Msg" %t551)
  store i32 %t552, ptr %l210
  %t553 = icmp ne i32 %t552, 0
  br i1 %t553, label %bb158, label %ok.554, !prof !99
ok.554:
  br label %bb157
bb157:
  br label %bb159
bb158:
  %t555 = load i32, ptr %l210, !tbaa !23
  %t556 = lshr i32 %t555, 16
  %t557 = and i32 %t555, 65535
  %t558 = icmp eq i32 %t556, 1
  %t559 = select i1 %t558, i32 1, i32 0
  %t560 = icmp eq i32 %t555, 0
  %t561 = shl i32 %t559, 16
  %t562 = or i32 %t561, %t557
  %t563 = select i1 %t560, i32 0, i32 %t562
  call void @__olang_scope_close(ptr %s20)
  call void @__olang_scope_close(ptr %s0)
  %t565 = insertvalue { i32, %"compiler/target:Target" } zeroinitializer, i32 %t563, 0
  store { i32, %"compiler/target:Target" } %t565, ptr %rv
  br label %ret
bb159:
  call void @__olang_scope_close(ptr %s20)
  br label %bb160
bb160:
  %t566 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t568 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t566, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d44, i32 0, i32 1) })
  store i1 %t568, ptr %l213
  br label %bb161
bb161:
  %t569 = load i1, ptr %l213, !tbaa !21
  br i1 %t569, label %bb162, label %bb163
bb162:
  store %olang.scope zeroinitializer, ptr %s21
  %t570 = load i1, ptr %l2, !tbaa !21
  %t572 = xor i1 %t570, true
  br i1 %t572, label %bb164, label %bb165
bb163:
  br label %bb176
bb164:
  store i1 true, ptr %l216, !tbaa !21
  br label %bb168
bb165:
  %t574 = load ptr, ptr %lp7
  store ptr %t574, ptr %l217, !tbaa !29
  %t575 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t575, ptr %l218, !tbaa !27
  %t576 = call { i64, ptr } @compiler_2ftarget_2ecpuFlags(ptr %s21)
  store { i64, ptr } %t576, ptr %l219
  br label %bb166
bb166:
  %t577 = load { i64, ptr }, ptr %l219, !tbaa !27
  %t578 = extractvalue { i64, ptr } %t577, 0
  %t579 = extractvalue { i64, ptr } %t577, 1
  %t580 = mul i64 %t578, 1
  %t581 = call ptr @__olang_scope_alloc(ptr %s21, i64 %t580)
  call void @llvm.memcpy.p0.p0.i64(ptr %t581, ptr %t579, i64 %t580, i1 false)
  %t582 = insertvalue { i64, ptr } undef, i64 %t578, 0
  %t583 = insertvalue { i64, ptr } %t582, ptr %t581, 1
  %t584 = load ptr, ptr %l217, !tbaa !29
  %t585 = load { i64, ptr }, ptr %l218, !tbaa !27
  %t587 = call i1 @compiler_2ftarget_2ecompiler_2ftarget_3aTarget_2ewithoutClang(ptr %v6, ptr %s0, ptr %s21, ptr %t584, { i64, ptr } %t585, { i64, ptr } %t583)
  store i1 %t587, ptr %l221
  br label %bb167
bb167:
  %t588 = load i1, ptr %l221, !tbaa !21
  %t589 = xor i1 %t588, true
  store i1 %t589, ptr %l216, !tbaa !21
  br label %bb168
bb168:
  %t591 = load i1, ptr %l216, !tbaa !21
  br i1 %t591, label %bb169, label %bb170
bb169:
  store %olang.scope zeroinitializer, ptr %s22
  %t592 = load ptr, ptr %l5, !tbaa !29
  store ptr %t592, ptr %l223, !tbaa !29
  %t593 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t595 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTargetNoClang(ptr %v0, ptr %s22, { i64, ptr } %t593)
  store %"compiler/diagmsg:Msg" %t595, ptr %l225
  br label %bb171
bb170:
  br label %bb175
bb171:
  %t596 = load ptr, ptr %l223, !tbaa !29
  %t597 = load %"compiler/diagmsg:Msg", ptr %l225
  %t598 = call i32 @compiler_2ftarget_2erefuse(ptr %v4, ptr %s22, ptr %t596, %"compiler/diagmsg:Msg" %t597)
  store i32 %t598, ptr %l226
  %t599 = icmp ne i32 %t598, 0
  br i1 %t599, label %bb173, label %ok.600, !prof !99
ok.600:
  br label %bb172
bb172:
  br label %bb174
bb173:
  %t601 = load i32, ptr %l226, !tbaa !23
  %t602 = lshr i32 %t601, 16
  %t603 = and i32 %t601, 65535
  %t604 = icmp eq i32 %t602, 1
  %t605 = select i1 %t604, i32 1, i32 0
  %t606 = icmp eq i32 %t601, 0
  %t607 = shl i32 %t605, 16
  %t608 = or i32 %t607, %t603
  %t609 = select i1 %t606, i32 0, i32 %t608
  call void @__olang_scope_close(ptr %s22)
  call void @__olang_scope_close(ptr %s21)
  call void @__olang_scope_close(ptr %s0)
  %t611 = insertvalue { i32, %"compiler/target:Target" } zeroinitializer, i32 %t609, 0
  store { i32, %"compiler/target:Target" } %t611, ptr %rv
  br label %ret
bb174:
  call void @__olang_scope_close(ptr %s22)
  br label %bb175
bb175:
  %t612 = load ptr, ptr %lp7
  %t613 = load %"compiler/target:Target", ptr %t612
  call void @__olang_scope_close(ptr %s21)
  call void @__olang_scope_close(ptr %s0)
  %t615 = insertvalue { i32, %"compiler/target:Target" } zeroinitializer, %"compiler/target:Target" %t613, 1
  store { i32, %"compiler/target:Target" } %t615, ptr %rv
  br label %ret
bb176:
  %t616 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t616, ptr %l229
  br label %bb177
bb177:
  %t617 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l229
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t617, ptr %l14
  store ptr %l14, ptr %l230, !tbaa !29
  %t618 = ptrtoint ptr %s0 to i64
  store i64 %t618, ptr %l231, !tbaa !24
  %t619 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t619, label %bb178, label %bb179
bb178:
  %t621 = call ptr @__olang_region_make(ptr %s0)
  %t622 = ptrtoint ptr %t621 to i64
  store i64 %t622, ptr %l231, !tbaa !24
  br label %bb179
bb179:
  %t623 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t625 = extractvalue { i64, ptr } %t623, 1
  %t626 = extractvalue { i64, ptr } %t623, 0
  %t627 = load i64, ptr %l231
  %t628 = inttoptr i64 %t627 to ptr
  %t629 = call ptr @__olang_scope_alloc(ptr %t628, i64 %t626)
  call void @olang_textcopy(ptr %t629, ptr %t625, i64 %t626)
  %t630 = insertvalue { i64, ptr } undef, i64 %t626, 0
  %t631 = insertvalue { i64, ptr } %t630, ptr %t629, 1
  %t633 = load i64, ptr %l231
  %t634 = inttoptr i64 %t633 to ptr
  %t635 = extractvalue { i64, ptr } %t631, 0
  %t636 = extractvalue { i64, ptr } %t631, 1
  %t637 = mul i64 %t635, 1
  %t638 = call ptr @__olang_scope_alloc(ptr %t634, i64 %t637)
  call void @llvm.memcpy.p0.p0.i64(ptr %t638, ptr %t636, i64 %t637, i1 false)
  %t639 = insertvalue { i64, ptr } undef, i64 %t635, 0
  %t640 = insertvalue { i64, ptr } %t639, ptr %t638, 1
  %t641 = load ptr, ptr %l230, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t641, { i64, ptr } %t640)
  br label %bb180
bb180:
  %t643 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t643, ptr %l236, !tbaa !27
  %t644 = load { i64, ptr }, ptr %l236, !tbaa !27
  %t645 = extractvalue { i64, ptr } %t644, 1
  %t646 = call ptr @__olang_scope_of(ptr %t645, ptr null)
  %t647 = ptrtoint ptr %t646 to i64
  %t649 = inttoptr i64 %t647 to ptr
  %t650 = load { i64, ptr }, ptr %l236, !tbaa !27
  %t651 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %t649, ptr %s0, { i64, ptr } %t650, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d45, i32 0, i32 1) })
  store i1 %t651, ptr %l238
  br label %bb181
bb181:
  %t652 = load i1, ptr %l238, !tbaa !21
  %t653 = xor i1 %t652, true
  br i1 %t653, label %bb182, label %bb183
bb182:
  store ptr %l14, ptr %l240, !tbaa !29
  %t655 = ptrtoint ptr %s0 to i64
  store i64 %t655, ptr %l241, !tbaa !24
  %t656 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t656, label %bb184, label %bb185
bb183:
  br label %bb187
bb184:
  %t658 = call ptr @__olang_region_make(ptr %s0)
  %t659 = ptrtoint ptr %t658 to i64
  store i64 %t659, ptr %l241, !tbaa !24
  br label %bb185
bb185:
  %t660 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t661 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d46, i32 0, i32 1) }, 1
  %t662 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d46, i32 0, i32 1) }, 0
  %t664 = extractvalue { i64, ptr } %t660, 1
  %t665 = extractvalue { i64, ptr } %t660, 0
  %t666 = add i64 %t662, %t665
  %t667 = load i64, ptr %l241
  %t668 = inttoptr i64 %t667 to ptr
  %t669 = call ptr @__olang_scope_alloc(ptr %t668, i64 %t666)
  call void @olang_textcopy(ptr %t669, ptr %t661, i64 %t662)
  %t670 = getelementptr i8, ptr %t669, i64 %t662
  call void @olang_textcopy(ptr %t670, ptr %t664, i64 %t665)
  %t671 = insertvalue { i64, ptr } undef, i64 %t666, 0
  %t672 = insertvalue { i64, ptr } %t671, ptr %t669, 1
  %t674 = load i64, ptr %l241
  %t675 = inttoptr i64 %t674 to ptr
  %t676 = extractvalue { i64, ptr } %t672, 0
  %t677 = extractvalue { i64, ptr } %t672, 1
  %t678 = mul i64 %t676, 1
  %t679 = call ptr @__olang_scope_alloc(ptr %t675, i64 %t678)
  call void @llvm.memcpy.p0.p0.i64(ptr %t679, ptr %t677, i64 %t678, i1 false)
  %t680 = insertvalue { i64, ptr } undef, i64 %t676, 0
  %t681 = insertvalue { i64, ptr } %t680, ptr %t679, 1
  %t682 = load ptr, ptr %l240, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t682, { i64, ptr } %t681)
  br label %bb186
bb186:
  br label %bb187
bb187:
  %t684 = load i1, ptr %l10, !tbaa !21
  br i1 %t684, label %bb188, label %bb189
bb188:
  store ptr %l14, ptr %l247, !tbaa !29
  %t686 = ptrtoint ptr %s0 to i64
  store i64 %t686, ptr %l248, !tbaa !24
  %t687 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t687, label %bb190, label %bb191
bb189:
  br label %bb193
bb190:
  %t689 = call ptr @__olang_region_make(ptr %s0)
  %t690 = ptrtoint ptr %t689 to i64
  store i64 %t690, ptr %l248, !tbaa !24
  br label %bb191
bb191:
  %t691 = load i64, ptr %l11, !tbaa !24
  %t693 = getelementptr [2 x { i64, ptr }], ptr @G_2ecompiler_2ftarget_2eArchCpuFlags, i64 0, i64 %t691
  %t694 = load { i64, ptr }, ptr %t693, !tbaa !37
  %t695 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t697 = extractvalue { i64, ptr } %t694, 1
  %t698 = extractvalue { i64, ptr } %t694, 0
  %t700 = extractvalue { i64, ptr } %t695, 1
  %t701 = extractvalue { i64, ptr } %t695, 0
  %t702 = add i64 %t698, %t701
  %t703 = load i64, ptr %l248
  %t704 = inttoptr i64 %t703 to ptr
  %t705 = call ptr @__olang_scope_alloc(ptr %t704, i64 %t702)
  call void @olang_textcopy(ptr %t705, ptr %t697, i64 %t698)
  %t706 = getelementptr i8, ptr %t705, i64 %t698
  call void @olang_textcopy(ptr %t706, ptr %t700, i64 %t701)
  %t707 = insertvalue { i64, ptr } undef, i64 %t702, 0
  %t708 = insertvalue { i64, ptr } %t707, ptr %t705, 1
  %t710 = load i64, ptr %l248
  %t711 = inttoptr i64 %t710 to ptr
  %t712 = extractvalue { i64, ptr } %t708, 0
  %t713 = extractvalue { i64, ptr } %t708, 1
  %t714 = mul i64 %t712, 1
  %t715 = call ptr @__olang_scope_alloc(ptr %t711, i64 %t714)
  call void @llvm.memcpy.p0.p0.i64(ptr %t715, ptr %t713, i64 %t714, i1 false)
  %t716 = insertvalue { i64, ptr } undef, i64 %t712, 0
  %t717 = insertvalue { i64, ptr } %t716, ptr %t715, 1
  %t718 = load ptr, ptr %l247, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t718, { i64, ptr } %t717)
  br label %bb192
bb192:
  br label %bb193
bb193:
  store %olang.scope zeroinitializer, ptr %s28
  %t720 = insertvalue [7 x { i64, ptr }] undef, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d47, i32 0, i32 1) }, 0
  %t721 = insertvalue [7 x { i64, ptr }] %t720, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d48, i32 0, i32 1) }, 1
  %t722 = insertvalue [7 x { i64, ptr }] %t721, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d49, i32 0, i32 1) }, 2
  %t723 = insertvalue [7 x { i64, ptr }] %t722, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d50, i32 0, i32 1) }, 3
  %t724 = insertvalue [7 x { i64, ptr }] %t723, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d51, i32 0, i32 1) }, 4
  %t725 = insertvalue [7 x { i64, ptr }] %t724, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d52, i32 0, i32 1) }, 5
  %t726 = insertvalue [7 x { i64, ptr }] %t725, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d53, i32 0, i32 1) }, 6
  %t728 = call ptr @__olang_scope_alloc_a(ptr %s28, i64 112, i64 8)
  store [7 x { i64, ptr }] %t726, ptr %t728
  store ptr %t728, ptr %l15
  store i64 0, ptr %l16, !tbaa !24
  %t730 = load ptr, ptr %l15
  store i64 7, ptr %l17, !tbaa !24
  br label %bb194
bb194:
  %t733 = load i64, ptr %l16, !tbaa !24
  %t734 = load i64, ptr %l17, !tbaa !24
  %t737 = icmp slt i64 %t733, %t734
  %t739 = xor i1 %t737, true
  br i1 %t739, label %bb195, label %bb196
bb195:
  br label %bb200
bb196:
  br label %bb197
bb197:
  %t741 = load ptr, ptr %l15
  %t742 = load i64, ptr %l16, !tbaa !24
  %t745 = getelementptr [7 x { i64, ptr }], ptr %t741, i64 0, i64 %t742
  %t746 = load { i64, ptr }, ptr %t745, !tbaa !37
  %t749 = load ptr, ptr @__olang_prog_scope
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %t749, ptr %l14, { i64, ptr } %t746)
  br label %bb198
bb198:
  br label %bb199
bb199:
  %t752 = load i64, ptr %l16, !tbaa !24
  %t754 = add i64 %t752, 1
  store i64 %t754, ptr %l16, !tbaa !24
  br label %bb194
bb200:
  call void @__olang_scope_close(ptr %s28)
  %t757 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %s0, ptr %s0, ptr %l14)
  store { i64, ptr } %t757, ptr %l272
  br label %bb201
bb201:
  %t758 = load i1, ptr %l2, !tbaa !21
  %t760 = xor i1 %t758, true
  %t761 = load { i64, ptr }, ptr %l272, !tbaa !27
  %t763 = call { i32, %"std/os:Output" } @compiler_2ftarget_2eClangSays(ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t761, { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d54, i32 0, i32 1) }, i1 %t760)
  %t764 = extractvalue { i32, %"std/os:Output" } %t763, 1
  %t765 = extractvalue { i32, %"std/os:Output" } %t763, 0
  store i32 %t765, ptr %l276
  %t766 = icmp ne i32 %t765, 0
  br i1 %t766, label %bb203, label %ok.767, !prof !99
ok.767:
  store %"std/os:Output" %t764, ptr %l275
  br label %bb202
bb202:
  %t768 = load %"std/os:Output", ptr %l275
  store %"std/os:Output" %t768, ptr %l270
  br label %bb211
bb203:
  %t769 = load i32, ptr %l276, !tbaa !23
  %t770 = ashr i32 %t769, 16
  %t772 = icmp eq i32 %t770, 1
  store i1 %t772, ptr %l278, !tbaa !21
  %t773 = load i32, ptr %l276, !tbaa !23
  %t774 = ashr i32 %t773, 16
  %t776 = icmp eq i32 %t774, 1
  br i1 %t776, label %bb204, label %bb205
bb204:
  call void @__olang_errpay_pop()
  br label %bb205
bb205:
  br label %bb206
bb206:
  store %olang.scope zeroinitializer, ptr %s31
  %t778 = load ptr, ptr %l5, !tbaa !29
  store ptr %t778, ptr %l281, !tbaa !29
  %t779 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t781 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTargetUnknown(ptr %v0, ptr %s31, { i64, ptr } %t779)
  store %"compiler/diagmsg:Msg" %t781, ptr %l283
  br label %bb207
bb207:
  %t782 = load ptr, ptr %l281, !tbaa !29
  %t783 = load %"compiler/diagmsg:Msg", ptr %l283
  %t784 = call i32 @compiler_2ftarget_2erefuse(ptr %v4, ptr %s31, ptr %t782, %"compiler/diagmsg:Msg" %t783)
  store i32 %t784, ptr %l284
  %t785 = icmp ne i32 %t784, 0
  br i1 %t785, label %bb209, label %ok.786, !prof !99
ok.786:
  br label %bb208
bb208:
  br label %bb210
bb209:
  %t787 = load i32, ptr %l284, !tbaa !23
  %t788 = lshr i32 %t787, 16
  %t789 = and i32 %t787, 65535
  %t790 = icmp eq i32 %t788, 1
  %t791 = select i1 %t790, i32 1, i32 0
  %t792 = icmp eq i32 %t787, 0
  %t793 = shl i32 %t791, 16
  %t794 = or i32 %t793, %t789
  %t795 = select i1 %t792, i32 0, i32 %t794
  call void @__olang_scope_close(ptr %s31)
  call void @__olang_scope_close(ptr %s0)
  %t797 = insertvalue { i32, %"compiler/target:Target" } zeroinitializer, i32 %t795, 0
  store { i32, %"compiler/target:Target" } %t797, ptr %rv
  br label %ret
bb210:
  call void @__olang_check_failed(ptr @olang_loc_49a037191ff00c43_67aff78b8be17eff)
  unreachable
bb211:
  %t798 = load %"std/os:Output", ptr %l270
  store %"std/os:Output" %t798, ptr %l19
  %t799 = getelementptr %"std/os:Output", ptr %l19, i32 0, i32 0
  %t800 = load i32, ptr %t799, !tbaa !23
  %t802 = icmp ne i32 %t800, 0
  br i1 %t802, label %bb212, label %bb213
bb212:
  store %olang.scope zeroinitializer, ptr %s32
  %t804 = load ptr, ptr %l5, !tbaa !29
  store ptr %t804, ptr %l288, !tbaa !29
  %t805 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t807 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTargetUnknown(ptr %v0, ptr %s32, { i64, ptr } %t805)
  store %"compiler/diagmsg:Msg" %t807, ptr %l290
  br label %bb214
bb213:
  br label %bb218
bb214:
  %t808 = load ptr, ptr %l288, !tbaa !29
  %t809 = load %"compiler/diagmsg:Msg", ptr %l290
  %t810 = call i32 @compiler_2ftarget_2erefuse(ptr %v4, ptr %s32, ptr %t808, %"compiler/diagmsg:Msg" %t809)
  store i32 %t810, ptr %l291
  %t811 = icmp ne i32 %t810, 0
  br i1 %t811, label %bb216, label %ok.812, !prof !99
ok.812:
  br label %bb215
bb215:
  br label %bb217
bb216:
  %t813 = load i32, ptr %l291, !tbaa !23
  %t814 = lshr i32 %t813, 16
  %t815 = and i32 %t813, 65535
  %t816 = icmp eq i32 %t814, 1
  %t817 = select i1 %t816, i32 1, i32 0
  %t818 = icmp eq i32 %t813, 0
  %t819 = shl i32 %t817, 16
  %t820 = or i32 %t819, %t815
  %t821 = select i1 %t818, i32 0, i32 %t820
  call void @__olang_scope_close(ptr %s32)
  call void @__olang_scope_close(ptr %s0)
  %t823 = insertvalue { i32, %"compiler/target:Target" } zeroinitializer, i32 %t821, 0
  store { i32, %"compiler/target:Target" } %t823, ptr %rv
  br label %ret
bb217:
  call void @__olang_scope_close(ptr %s32)
  br label %bb218
bb218:
  %t824 = load ptr, ptr %lp7
  %t825 = getelementptr %"std/os:Output", ptr %l19, i32 0, i32 1
  %t826 = load { i64, ptr }, ptr %t825, !tbaa !27
  %t829 = call i32 @compiler_2ftarget_2ecompiler_2ftarget_3aTarget_2eFromProbe(ptr %v6, ptr %s0, ptr %t824, { i64, ptr } %t826)
  store i32 %t829, ptr %l295
  %t830 = icmp ne i32 %t829, 0
  br i1 %t830, label %bb220, label %ok.831, !prof !99
ok.831:
  br label %bb219
bb219:
  br label %bb235
bb220:
  %t832 = load i32, ptr %l295, !tbaa !23
  %t833 = icmp eq i32 %t832, 65536
  br i1 %t833, label %bb221, label %bb222
bb221:
  br label %bb223
bb222:
  %t835 = load i32, ptr %l295, !tbaa !23
  %t836 = icmp eq i32 %t835, 65537
  br i1 %t836, label %bb224, label %bb225
bb223:
  store %olang.scope zeroinitializer, ptr %s33
  %t838 = load ptr, ptr %l5, !tbaa !29
  store ptr %t838, ptr %l299, !tbaa !29
  %t839 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t841 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTargetUnknown(ptr %v0, ptr %s33, { i64, ptr } %t839)
  store %"compiler/diagmsg:Msg" %t841, ptr %l301
  br label %bb227
bb224:
  br label %bb226
bb225:
  %t842 = load i32, ptr %l295, !tbaa !23
  %t843 = lshr i32 %t842, 16
  %t844 = and i32 %t842, 65535
  %t845 = icmp eq i32 %t843, 1
  %t846 = select i1 %t845, i32 0, i32 0
  %t847 = icmp eq i32 %t842, 0
  %t848 = shl i32 %t846, 16
  %t849 = or i32 %t848, %t844
  %t850 = select i1 %t847, i32 0, i32 %t849
  call void @__olang_scope_close(ptr %s0)
  %t852 = insertvalue { i32, %"compiler/target:Target" } zeroinitializer, i32 %t850, 0
  store { i32, %"compiler/target:Target" } %t852, ptr %rv
  br label %ret
bb226:
  store %olang.scope zeroinitializer, ptr %s34
  %t853 = load ptr, ptr %l5, !tbaa !29
  store ptr %t853, ptr %l304, !tbaa !29
  %t854 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t856 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTargetUnsupported(ptr %v0, ptr %s34, { i64, ptr } %t854)
  store %"compiler/diagmsg:Msg" %t856, ptr %l306
  br label %bb231
bb227:
  %t857 = load ptr, ptr %l299, !tbaa !29
  %t858 = load %"compiler/diagmsg:Msg", ptr %l301
  %t859 = call i32 @compiler_2ftarget_2erefuse(ptr %v4, ptr %s33, ptr %t857, %"compiler/diagmsg:Msg" %t858)
  store i32 %t859, ptr %l302
  %t860 = icmp ne i32 %t859, 0
  br i1 %t860, label %bb229, label %ok.861, !prof !99
ok.861:
  br label %bb228
bb228:
  br label %bb230
bb229:
  %t862 = load i32, ptr %l302, !tbaa !23
  %t863 = lshr i32 %t862, 16
  %t864 = and i32 %t862, 65535
  %t865 = icmp eq i32 %t863, 1
  %t866 = select i1 %t865, i32 1, i32 0
  %t867 = icmp eq i32 %t862, 0
  %t868 = shl i32 %t866, 16
  %t869 = or i32 %t868, %t864
  %t870 = select i1 %t867, i32 0, i32 %t869
  call void @__olang_scope_close(ptr %s33)
  call void @__olang_scope_close(ptr %s0)
  %t872 = insertvalue { i32, %"compiler/target:Target" } zeroinitializer, i32 %t870, 0
  store { i32, %"compiler/target:Target" } %t872, ptr %rv
  br label %ret
bb230:
  call void @__olang_scope_close(ptr %s33)
  br label %bb235
bb231:
  %t873 = load ptr, ptr %l304, !tbaa !29
  %t874 = load %"compiler/diagmsg:Msg", ptr %l306
  %t875 = call i32 @compiler_2ftarget_2erefuse(ptr %v4, ptr %s34, ptr %t873, %"compiler/diagmsg:Msg" %t874)
  store i32 %t875, ptr %l307
  %t876 = icmp ne i32 %t875, 0
  br i1 %t876, label %bb233, label %ok.877, !prof !99
ok.877:
  br label %bb232
bb232:
  br label %bb234
bb233:
  %t878 = load i32, ptr %l307, !tbaa !23
  %t879 = lshr i32 %t878, 16
  %t880 = and i32 %t878, 65535
  %t881 = icmp eq i32 %t879, 1
  %t882 = select i1 %t881, i32 1, i32 0
  %t883 = icmp eq i32 %t878, 0
  %t884 = shl i32 %t882, 16
  %t885 = or i32 %t884, %t880
  %t886 = select i1 %t883, i32 0, i32 %t885
  call void @__olang_scope_close(ptr %s34)
  call void @__olang_scope_close(ptr %s0)
  %t888 = insertvalue { i32, %"compiler/target:Target" } zeroinitializer, i32 %t886, 0
  store { i32, %"compiler/target:Target" } %t888, ptr %rv
  br label %ret
bb234:
  call void @__olang_scope_close(ptr %s34)
  br label %bb235
bb235:
  %t889 = load ptr, ptr %lp7
  %t890 = getelementptr %"compiler/target:Target", ptr %t889, i32 0, i32 9
  %t891 = load i1, ptr %t890, !tbaa !21
  br i1 %t891, label %bb236, label %bb237
bb236:
  %t893 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t894 = load ptr, ptr %lp7
  %t895 = getelementptr %"compiler/target:Target", ptr %t894, i32 0, i32 1
  %t896 = load { i64, ptr }, ptr %t895, !tbaa !27
  %t899 = call i1 @compiler_2ftarget_2ecanCompileBf16(ptr %v1, ptr %v6, { i64, ptr } %t893, { i64, ptr } %t896)
  store i1 %t899, ptr %l313
  br label %bb238
bb237:
  store i1 false, ptr %l310, !tbaa !21
  br label %bb239
bb238:
  %t900 = load i1, ptr %l313, !tbaa !21
  %t901 = xor i1 %t900, true
  store i1 %t901, ptr %l310, !tbaa !21
  br label %bb239
bb239:
  %t903 = load i1, ptr %l310, !tbaa !21
  br i1 %t903, label %bb240, label %bb241
bb240:
  store %olang.scope zeroinitializer, ptr %s35
  %t904 = load ptr, ptr %l5, !tbaa !29
  store ptr %t904, ptr %l315, !tbaa !29
  %t905 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t907 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTargetNoBackend(ptr %v0, ptr %s35, { i64, ptr } %t905)
  store %"compiler/diagmsg:Msg" %t907, ptr %l317
  br label %bb242
bb241:
  br label %bb246
bb242:
  %t908 = load ptr, ptr %l315, !tbaa !29
  %t909 = load %"compiler/diagmsg:Msg", ptr %l317
  %t910 = call i32 @compiler_2ftarget_2erefuse(ptr %v4, ptr %s35, ptr %t908, %"compiler/diagmsg:Msg" %t909)
  store i32 %t910, ptr %l318
  %t911 = icmp ne i32 %t910, 0
  br i1 %t911, label %bb244, label %ok.912, !prof !99
ok.912:
  br label %bb243
bb243:
  br label %bb245
bb244:
  %t913 = load i32, ptr %l318, !tbaa !23
  %t914 = lshr i32 %t913, 16
  %t915 = and i32 %t913, 65535
  %t916 = icmp eq i32 %t914, 1
  %t917 = select i1 %t916, i32 1, i32 0
  %t918 = icmp eq i32 %t913, 0
  %t919 = shl i32 %t917, 16
  %t920 = or i32 %t919, %t915
  %t921 = select i1 %t918, i32 0, i32 %t920
  call void @__olang_scope_close(ptr %s35)
  call void @__olang_scope_close(ptr %s0)
  %t923 = insertvalue { i32, %"compiler/target:Target" } zeroinitializer, i32 %t921, 0
  store { i32, %"compiler/target:Target" } %t923, ptr %rv
  br label %ret
bb245:
  call void @__olang_scope_close(ptr %s35)
  br label %bb246
bb246:
  %t924 = ptrtoint ptr %v6 to i64
  store i64 %t924, ptr %l320, !tbaa !24
  %t925 = load i1, ptr @olang_2esole_2ecompiler_2ftarget_3aTarget_2e6
  br i1 %t925, label %bb247, label %bb248
bb247:
  %t927 = call ptr @__olang_region_make(ptr %v6)
  %t928 = ptrtoint ptr %t927 to i64
  store i64 %t928, ptr %l320, !tbaa !24
  br label %bb248
bb248:
  %t929 = load i64, ptr %l11, !tbaa !24
  %t931 = getelementptr [2 x { i64, ptr }], ptr @G_2ecompiler_2ftarget_2eArchCpuFlags, i64 0, i64 %t929
  %t932 = load { i64, ptr }, ptr %t931, !tbaa !37
  %t933 = load ptr, ptr %lp7
  %t934 = getelementptr %"compiler/target:Target", ptr %t933, i32 0, i32 4
  %t935 = load { i64, ptr }, ptr %t934, !tbaa !27
  %t937 = extractvalue { i64, ptr } %t932, 1
  %t938 = extractvalue { i64, ptr } %t932, 0
  %t940 = extractvalue { i64, ptr } %t935, 1
  %t941 = extractvalue { i64, ptr } %t935, 0
  %t942 = add i64 %t938, %t941
  %t943 = load i64, ptr %l320
  %t944 = inttoptr i64 %t943 to ptr
  %t945 = call ptr @__olang_scope_alloc(ptr %t944, i64 %t942)
  call void @olang_textcopy(ptr %t945, ptr %t937, i64 %t938)
  %t946 = getelementptr i8, ptr %t945, i64 %t938
  call void @olang_textcopy(ptr %t946, ptr %t940, i64 %t941)
  %t947 = insertvalue { i64, ptr } undef, i64 %t942, 0
  %t948 = insertvalue { i64, ptr } %t947, ptr %t945, 1
  %t950 = load i64, ptr %l320
  %t951 = inttoptr i64 %t950 to ptr
  %t952 = extractvalue { i64, ptr } %t948, 0
  %t953 = extractvalue { i64, ptr } %t948, 1
  %t954 = mul i64 %t952, 1
  %t955 = call ptr @__olang_scope_alloc(ptr %t951, i64 %t954)
  call void @llvm.memcpy.p0.p0.i64(ptr %t955, ptr %t953, i64 %t954, i1 false)
  %t956 = insertvalue { i64, ptr } undef, i64 %t952, 0
  %t957 = insertvalue { i64, ptr } %t956, ptr %t955, 1
  %t958 = load ptr, ptr %lp7
  %t959 = getelementptr %"compiler/target:Target", ptr %t958, i32 0, i32 6
  %t960 = load { i64, ptr }, ptr %t959, !tbaa !27
  store { i64, ptr } %t960, ptr %l327, !tbaa !27
  %t962 = load ptr, ptr %lp7
  %t963 = getelementptr %"compiler/target:Target", ptr %t962, i32 0, i32 6
  store { i64, ptr } %t957, ptr %t963, !tbaa !27
  %t964 = load i1, ptr @olang_2esole_2ecompiler_2ftarget_3aTarget_2e6
  br i1 %t964, label %bb249, label %bb250
bb249:
  %t966 = load { i64, ptr }, ptr %l327
  %t967 = extractvalue { i64, ptr } %t966, 1
  call void @__olang_region_release(ptr %t967)
  store { i64, ptr } zeroinitializer, ptr %l327
  br label %bb250
bb250:
  %t968 = load ptr, ptr %lp7
  %t969 = load %"compiler/target:Target", ptr %t968
  call void @__olang_scope_close(ptr %s0)
  %t971 = insertvalue { i32, %"compiler/target:Target" } zeroinitializer, %"compiler/target:Target" %t969, 1
  store { i32, %"compiler/target:Target" } %t971, ptr %rv
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
  %t25 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %t23, ptr %s3, ptr %s3, { i64, ptr } %t20, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d55, i32 0, i32 1) })
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
  %t50 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d56, i32 0, i32 1) }, 1
  %t51 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d56, i32 0, i32 1) }, 0
  %t53 = extractvalue { i64, ptr } %t45, 1
  %t54 = extractvalue { i64, ptr } %t45, 0
  %t55 = add i64 %t51, %t54
  %t56 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d57, i32 0, i32 1) }, 1
  %t57 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d57, i32 0, i32 1) }, 0
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
  %rv = alloca { i32, { i64, ptr } }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d58, i32 0, i32 1) }, 1
  %t4 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d58, i32 0, i32 1) }, 0
  %t6 = extractvalue { i64, ptr } %a1, 1
  %t7 = extractvalue { i64, ptr } %a1, 0
  %t8 = add i64 %t4, %t7
  %t9 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d59, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d59, i32 0, i32 1) }, 0
  %t11 = add i64 %t8, %t10
  %t12 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t11)
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
  %t21 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t20)
  call void @llvm.memcpy.p0.p0.i64(ptr %t21, ptr %t19, i64 %t20, i1 false)
  %t22 = insertvalue { i64, ptr } undef, i64 %t18, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t21, 1
  %t26 = call { i32, { i64, ptr } } @compiler_2ftarget_2efield(ptr %v0, ptr %v2, ptr %v2, { i64, ptr } %a0, { i64, ptr } %t23)
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
  %t42 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t40, 0
  store { i32, { i64, ptr } } %t42, ptr %rv
  br label %ret
bb3:
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
  %t1 = extractvalue { i64, ptr } { i64 88, ptr getelementptr inbounds (<{ i64, [88 x i8] }>, ptr @.d60, i32 0, i32 1) }, 1
  %t2 = extractvalue { i64, ptr } { i64 88, ptr getelementptr inbounds (<{ i64, [88 x i8] }>, ptr @.d60, i32 0, i32 1) }, 0
  %t3 = extractvalue { i64, ptr } { i64 49, ptr getelementptr inbounds (<{ i64, [49 x i8] }>, ptr @.d61, i32 0, i32 1) }, 1
  %t4 = extractvalue { i64, ptr } { i64 49, ptr getelementptr inbounds (<{ i64, [49 x i8] }>, ptr @.d61, i32 0, i32 1) }, 0
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
  %t40 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d62, i32 0, i32 1) }, 1
  %t41 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d62, i32 0, i32 1) }, 0
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
  store { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d63, i32 0, i32 1) }, ptr %t65, !tbaa !37
  %t66 = getelementptr [9 x { i64, ptr }], ptr %l16, i64 0, i64 3
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d64, i32 0, i32 1) }, ptr %t66, !tbaa !37
  %t67 = getelementptr [9 x { i64, ptr }], ptr %l16, i64 0, i64 4
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d65, i32 0, i32 1) }, ptr %t67, !tbaa !37
  %t68 = getelementptr [9 x { i64, ptr }], ptr %l16, i64 0, i64 5
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d66, i32 0, i32 1) }, ptr %t68, !tbaa !37
  %t69 = getelementptr [9 x { i64, ptr }], ptr %l16, i64 0, i64 6
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d67, i32 0, i32 1) }, ptr %t69, !tbaa !37
  %t70 = getelementptr [9 x { i64, ptr }], ptr %l16, i64 0, i64 7
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d68, i32 0, i32 1) }, ptr %t70, !tbaa !37
  %t71 = getelementptr [9 x { i64, ptr }], ptr %l16, i64 0, i64 8
  store { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d69, i32 0, i32 1) }, ptr %t71, !tbaa !37
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
  %l76 = alloca i64
  %l81 = alloca { i64, ptr }
  %l83 = alloca ptr
  %l84 = alloca i64
  %l86 = alloca { i64, ptr }
  %l88 = alloca { i64, ptr }
  %l89 = alloca i32
  %l93 = alloca { i64, ptr }
  %l95 = alloca { i64, ptr }
  %l97 = alloca { i64, ptr }
  %l98 = alloca i32
  %l99 = alloca { i64, ptr }
  %l102 = alloca i1
  %l103 = alloca ptr
  %l105 = alloca i1
  %l106 = alloca i64
  %l108 = alloca ptr
  %l110 = alloca i1
  %l111 = alloca i64
  %l113 = alloca i1
  %l114 = alloca i64
  %l115 = alloca ptr
  %l117 = alloca i1
  %l118 = alloca i1
  %l120 = alloca i1
  %l121 = alloca { i64, ptr }
  %l123 = alloca { i64, ptr }
  %l124 = alloca i32
  %l126 = alloca i1
  %l128 = alloca { i64, ptr }
  %l132 = alloca i64
  %l134 = alloca i64
  %l135 = alloca i32
  %l138 = alloca i64
  %l139 = alloca { i64, ptr }
  %l140 = alloca i64
  %l143 = alloca i64
  %l144 = alloca i64
  %l150 = alloca i64
  %l151 = alloca i32
  %l154 = alloca { i64, ptr }
  %l155 = alloca i64
  %l159 = alloca i64
  %l160 = alloca i64
  %l170 = alloca i64
  %l173 = alloca ptr
  %l174 = alloca i64
  %l184 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = call { i32, { i64, ptr } } @compiler_2ftarget_2efield(ptr %v1, ptr %v1, ptr %v1, { i64, ptr } %t1, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d70, i32 0, i32 1) })
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
  %t13 = call { i32, { i64, ptr } } @compiler_2ftarget_2efield(ptr %v1, ptr %v1, ptr %v1, { i64, ptr } %t11, { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d71, i32 0, i32 1) })
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
  %t23 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v1, ptr %s0, { i64, ptr } %t21, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d72, i32 0, i32 1) })
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
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d73, i32 0, i32 1) }, ptr %l67, !tbaa !27
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
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d74, i32 0, i32 1) }, ptr %l72, !tbaa !27
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
  %t135 = ptrtoint ptr %v0 to i64
  store i64 %t135, ptr %l76, !tbaa !24
  %t136 = load i1, ptr @olang_2esole_2ecompiler_2ftarget_3aTarget_2e1
  br i1 %t136, label %bb43, label %bb44
bb43:
  %t138 = call ptr @__olang_region_make(ptr %v0)
  %t139 = ptrtoint ptr %t138 to i64
  store i64 %t139, ptr %l76, !tbaa !24
  br label %bb44
bb44:
  %t140 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t142 = extractvalue { i64, ptr } %t140, 1
  %t143 = extractvalue { i64, ptr } %t140, 0
  %t144 = load i64, ptr %l76
  %t145 = inttoptr i64 %t144 to ptr
  %t146 = call ptr @__olang_scope_alloc(ptr %t145, i64 %t143)
  call void @olang_textcopy(ptr %t146, ptr %t142, i64 %t143)
  %t147 = insertvalue { i64, ptr } undef, i64 %t143, 0
  %t148 = insertvalue { i64, ptr } %t147, ptr %t146, 1
  %t150 = load i64, ptr %l76
  %t151 = inttoptr i64 %t150 to ptr
  %t152 = extractvalue { i64, ptr } %t148, 0
  %t153 = extractvalue { i64, ptr } %t148, 1
  %t154 = mul i64 %t152, 1
  %t155 = call ptr @__olang_scope_alloc(ptr %t151, i64 %t154)
  call void @llvm.memcpy.p0.p0.i64(ptr %t155, ptr %t153, i64 %t154, i1 false)
  %t156 = insertvalue { i64, ptr } undef, i64 %t152, 0
  %t157 = insertvalue { i64, ptr } %t156, ptr %t155, 1
  %t158 = load ptr, ptr %l75, !tbaa !29
  %t159 = getelementptr %"compiler/target:Target", ptr %t158, i32 0, i32 1
  %t160 = load { i64, ptr }, ptr %t159, !tbaa !27
  store { i64, ptr } %t160, ptr %l81, !tbaa !27
  %t162 = load ptr, ptr %l75, !tbaa !29
  %t163 = getelementptr %"compiler/target:Target", ptr %t162, i32 0, i32 1
  store { i64, ptr } %t157, ptr %t163, !tbaa !27
  %t164 = load i1, ptr @olang_2esole_2ecompiler_2ftarget_3aTarget_2e1
  br i1 %t164, label %bb45, label %bb46
bb45:
  %t166 = load { i64, ptr }, ptr %l81
  %t167 = extractvalue { i64, ptr } %t166, 1
  call void @__olang_region_release(ptr %t167)
  store { i64, ptr } zeroinitializer, ptr %l81
  br label %bb46
bb46:
  %t168 = load ptr, ptr %l0, !tbaa !29
  store ptr %t168, ptr %l83, !tbaa !29
  %t169 = ptrtoint ptr %v0 to i64
  store i64 %t169, ptr %l84, !tbaa !24
  %t170 = load i1, ptr @olang_2esole_2ecompiler_2ftarget_3aTarget_2e4
  br i1 %t170, label %bb47, label %bb48
bb47:
  %t172 = call ptr @__olang_region_make(ptr %v0)
  %t173 = ptrtoint ptr %t172 to i64
  store i64 %t173, ptr %l84, !tbaa !24
  br label %bb48
bb48:
  %t174 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t176 = call { i32, { i64, ptr } } @compiler_2ftarget_2eattrValue(ptr %v1, ptr %s0, ptr %s0, { i64, ptr } %t174, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d75, i32 0, i32 1) })
  %t177 = extractvalue { i32, { i64, ptr } } %t176, 1
  %t178 = extractvalue { i32, { i64, ptr } } %t176, 0
  store i32 %t178, ptr %l89
  %t179 = icmp ne i32 %t178, 0
  br i1 %t179, label %bb50, label %ok.180, !prof !99
ok.180:
  store { i64, ptr } %t177, ptr %l88
  br label %bb49
bb49:
  %t181 = load { i64, ptr }, ptr %l88, !tbaa !27
  store { i64, ptr } %t181, ptr %l86, !tbaa !27
  br label %bb52
bb50:
  br label %bb51
bb51:
  call void @__olang_scope_close(ptr %s0)
  store i32 65536, ptr %rv
  br label %ret
bb52:
  %t183 = load { i64, ptr }, ptr %l86, !tbaa !27
  %t184 = extractvalue { i64, ptr } %t183, 1
  %t185 = extractvalue { i64, ptr } %t183, 0
  %t186 = load i64, ptr %l84
  %t187 = inttoptr i64 %t186 to ptr
  %t188 = call ptr @__olang_scope_alloc(ptr %t187, i64 %t185)
  call void @olang_textcopy(ptr %t188, ptr %t184, i64 %t185)
  %t189 = insertvalue { i64, ptr } undef, i64 %t185, 0
  %t190 = insertvalue { i64, ptr } %t189, ptr %t188, 1
  %t192 = load i64, ptr %l84
  %t193 = inttoptr i64 %t192 to ptr
  %t194 = extractvalue { i64, ptr } %t190, 0
  %t195 = extractvalue { i64, ptr } %t190, 1
  %t196 = mul i64 %t194, 1
  %t197 = call ptr @__olang_scope_alloc(ptr %t193, i64 %t196)
  call void @llvm.memcpy.p0.p0.i64(ptr %t197, ptr %t195, i64 %t196, i1 false)
  %t198 = insertvalue { i64, ptr } undef, i64 %t194, 0
  %t199 = insertvalue { i64, ptr } %t198, ptr %t197, 1
  %t200 = load ptr, ptr %l83, !tbaa !29
  %t201 = getelementptr %"compiler/target:Target", ptr %t200, i32 0, i32 4
  %t202 = load { i64, ptr }, ptr %t201, !tbaa !27
  store { i64, ptr } %t202, ptr %l93, !tbaa !27
  %t204 = load ptr, ptr %l83, !tbaa !29
  %t205 = getelementptr %"compiler/target:Target", ptr %t204, i32 0, i32 4
  store { i64, ptr } %t199, ptr %t205, !tbaa !27
  %t206 = load i1, ptr @olang_2esole_2ecompiler_2ftarget_3aTarget_2e4
  br i1 %t206, label %bb53, label %bb54
bb53:
  %t208 = load { i64, ptr }, ptr %l93
  %t209 = extractvalue { i64, ptr } %t208, 1
  call void @__olang_region_release(ptr %t209)
  store { i64, ptr } zeroinitializer, ptr %l93
  br label %bb54
bb54:
  %t210 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t212 = call { i32, { i64, ptr } } @compiler_2ftarget_2eattrValue(ptr %v1, ptr %v1, ptr %v1, { i64, ptr } %t210, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d76, i32 0, i32 1) })
  %t213 = extractvalue { i32, { i64, ptr } } %t212, 1
  %t214 = extractvalue { i32, { i64, ptr } } %t212, 0
  store i32 %t214, ptr %l98
  %t215 = icmp ne i32 %t214, 0
  br i1 %t215, label %bb56, label %ok.216, !prof !99
ok.216:
  store { i64, ptr } %t213, ptr %l97
  br label %bb55
bb55:
  %t217 = load { i64, ptr }, ptr %l97, !tbaa !27
  store { i64, ptr } %t217, ptr %l95, !tbaa !27
  br label %bb58
bb56:
  br label %bb57
bb57:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d77, i32 0, i32 1) }, ptr %l95, !tbaa !27
  br label %bb58
bb58:
  %t218 = load { i64, ptr }, ptr %l95, !tbaa !27
  %t219 = call { i64, ptr } @compiler_2ftarget_2eStripUnsafe(ptr %v1, ptr %s0, { i64, ptr } %t218)
  store { i64, ptr } %t219, ptr %l99
  br label %bb59
bb59:
  %t220 = load { i64, ptr }, ptr %l99, !tbaa !27
  store { i64, ptr } %t220, ptr %l7, !tbaa !27
  %t221 = load ptr, ptr %l0, !tbaa !29
  %t223 = getelementptr %"compiler/target:Target", ptr %t221, i32 0, i32 2
  %t224 = load { i64, ptr }, ptr %t223, !tbaa !27
  %t226 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t224, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d78, i32 0, i32 1) })
  store i1 %t226, ptr %l102
  br label %bb60
bb60:
  %t227 = load i1, ptr %l102, !tbaa !21
  br i1 %t227, label %bb61, label %bb62
bb61:
  store %olang.scope zeroinitializer, ptr %s8
  %t228 = load ptr, ptr %l0, !tbaa !29
  store ptr %t228, ptr %l103, !tbaa !29
  %t229 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t231 = call i1 @compiler_2ftarget_2eHasFeature(ptr %s0, ptr %s8, { i64, ptr } %t229, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d79, i32 0, i32 1) })
  store i1 %t231, ptr %l105
  br label %bb63
bb62:
  store %olang.scope zeroinitializer, ptr %s9
  %t232 = load ptr, ptr %l0, !tbaa !29
  store ptr %t232, ptr %l108, !tbaa !29
  %t233 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t235 = call i1 @compiler_2ftarget_2eHasFeature(ptr %s0, ptr %s9, { i64, ptr } %t233, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d80, i32 0, i32 1) })
  store i1 %t235, ptr %l110
  br label %bb67
bb63:
  %t236 = load i1, ptr %l105, !tbaa !21
  br i1 %t236, label %bb64, label %bb65
bb64:
  store i64 128, ptr %l106, !tbaa !24
  br label %bb66
bb65:
  store i64 0, ptr %l106, !tbaa !24
  br label %bb66
bb66:
  %t237 = load i64, ptr %l106, !tbaa !24
  %t238 = load ptr, ptr %l103, !tbaa !29
  %t239 = getelementptr %"compiler/target:Target", ptr %t238, i32 0, i32 7
  store i64 %t237, ptr %t239, !tbaa !24
  %t240 = load ptr, ptr %l0, !tbaa !29
  %t242 = getelementptr %"compiler/target:Target", ptr %t240, i32 0, i32 8
  store i1 true, ptr %t242, !tbaa !21
  call void @__olang_scope_close(ptr %s8)
  br label %bb80
bb67:
  %t243 = load i1, ptr %l110, !tbaa !21
  br i1 %t243, label %bb68, label %bb69
bb68:
  store i64 512, ptr %l111, !tbaa !24
  br label %bb74
bb69:
  %t244 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t246 = call i1 @compiler_2ftarget_2eHasFeature(ptr %s0, ptr %s9, { i64, ptr } %t244, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d81, i32 0, i32 1) })
  store i1 %t246, ptr %l113
  br label %bb70
bb70:
  %t247 = load i1, ptr %l113, !tbaa !21
  br i1 %t247, label %bb71, label %bb72
bb71:
  store i64 256, ptr %l114, !tbaa !24
  br label %bb73
bb72:
  store i64 128, ptr %l114, !tbaa !24
  br label %bb73
bb73:
  %t248 = load i64, ptr %l114, !tbaa !24
  store i64 %t248, ptr %l111, !tbaa !24
  br label %bb74
bb74:
  %t249 = load i64, ptr %l111, !tbaa !24
  %t250 = load ptr, ptr %l108, !tbaa !29
  %t251 = getelementptr %"compiler/target:Target", ptr %t250, i32 0, i32 7
  store i64 %t249, ptr %t251, !tbaa !24
  %t252 = load ptr, ptr %l0, !tbaa !29
  store ptr %t252, ptr %l115, !tbaa !29
  %t253 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t255 = call i1 @compiler_2ftarget_2eHasFeature(ptr %s0, ptr %s9, { i64, ptr } %t253, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d82, i32 0, i32 1) })
  store i1 %t255, ptr %l117
  br label %bb75
bb75:
  %t256 = load i1, ptr %l117, !tbaa !21
  br i1 %t256, label %bb76, label %bb77
bb76:
  store i1 true, ptr %l118, !tbaa !21
  br label %bb79
bb77:
  %t257 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t259 = call i1 @compiler_2ftarget_2eHasFeature(ptr %s0, ptr %s9, { i64, ptr } %t257, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d83, i32 0, i32 1) })
  store i1 %t259, ptr %l120
  br label %bb78
bb78:
  %t260 = load i1, ptr %l120, !tbaa !21
  store i1 %t260, ptr %l118, !tbaa !21
  br label %bb79
bb79:
  %t261 = load i1, ptr %l118, !tbaa !21
  %t262 = load ptr, ptr %l115, !tbaa !29
  %t263 = getelementptr %"compiler/target:Target", ptr %t262, i32 0, i32 8
  store i1 %t261, ptr %t263, !tbaa !21
  call void @__olang_scope_close(ptr %s9)
  br label %bb80
bb80:
  %t264 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t266 = call { i32, { i64, ptr } } @compiler_2ftarget_2eattrValue(ptr %v1, ptr %s0, ptr %s0, { i64, ptr } %t264, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d84, i32 0, i32 1) })
  %t267 = extractvalue { i32, { i64, ptr } } %t266, 1
  %t268 = extractvalue { i32, { i64, ptr } } %t266, 0
  store i32 %t268, ptr %l124
  %t269 = icmp ne i32 %t268, 0
  br i1 %t269, label %bb82, label %ok.270, !prof !99
ok.270:
  store { i64, ptr } %t267, ptr %l123
  br label %bb81
bb81:
  %t271 = load { i64, ptr }, ptr %l123, !tbaa !27
  store { i64, ptr } %t271, ptr %l121, !tbaa !27
  br label %bb84
bb82:
  br label %bb83
bb83:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d85, i32 0, i32 1) }, ptr %l121, !tbaa !27
  br label %bb84
bb84:
  %t272 = load { i64, ptr }, ptr %l121, !tbaa !27
  store { i64, ptr } %t272, ptr %l8, !tbaa !27
  %t273 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t275 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t273, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d86, i32 0, i32 1) })
  store i1 %t275, ptr %l126
  br label %bb85
bb85:
  %t276 = load i1, ptr %l126, !tbaa !21
  %t277 = xor i1 %t276, true
  br i1 %t277, label %bb86, label %bb87
bb86:
  %t279 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t280 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d87, i32 0, i32 1) }, 1
  %t281 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d87, i32 0, i32 1) }, 0
  %t283 = extractvalue { i64, ptr } %t279, 1
  %t284 = extractvalue { i64, ptr } %t279, 0
  %t285 = add i64 %t281, %t284
  %t286 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d88, i32 0, i32 1) }, 1
  %t287 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d88, i32 0, i32 1) }, 0
  %t288 = add i64 %t285, %t287
  %t289 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t288)
  call void @olang_textcopy(ptr %t289, ptr %t280, i64 %t281)
  %t290 = getelementptr i8, ptr %t289, i64 %t281
  call void @olang_textcopy(ptr %t290, ptr %t283, i64 %t284)
  %t291 = getelementptr i8, ptr %t290, i64 %t284
  call void @olang_textcopy(ptr %t291, ptr %t286, i64 %t287)
  %t292 = insertvalue { i64, ptr } undef, i64 %t288, 0
  %t293 = insertvalue { i64, ptr } %t292, ptr %t289, 1
  %t295 = extractvalue { i64, ptr } %t293, 0
  %t296 = extractvalue { i64, ptr } %t293, 1
  %t297 = mul i64 %t295, 1
  %t298 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t297)
  call void @llvm.memcpy.p0.p0.i64(ptr %t298, ptr %t296, i64 %t297, i1 false)
  %t299 = insertvalue { i64, ptr } undef, i64 %t295, 0
  %t300 = insertvalue { i64, ptr } %t299, ptr %t298, 1
  store { i64, ptr } %t300, ptr %l128, !tbaa !27
  br label %bb88
bb87:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d89, i32 0, i32 1) }, ptr %l128, !tbaa !27
  br label %bb88
bb88:
  %t302 = load { i64, ptr }, ptr %l128, !tbaa !27
  store { i64, ptr } %t302, ptr %l9, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d90, i32 0, i32 1) }, ptr %l10, !tbaa !27
  %t303 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t305 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v1, ptr %s0, { i64, ptr } %t303, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d91, i32 0, i32 1) })
  %t306 = extractvalue { i32, i64 } %t305, 1
  %t307 = extractvalue { i32, i64 } %t305, 0
  store i32 %t307, ptr %l135
  %t308 = icmp ne i32 %t307, 0
  br i1 %t308, label %bb90, label %ok.309, !prof !99
ok.309:
  store i64 %t306, ptr %l134
  br label %bb89
bb89:
  %t310 = load i64, ptr %l134, !tbaa !24
  store i64 %t310, ptr %l132, !tbaa !24
  br label %bb92
bb90:
  br label %bb91
bb91:
  store i64 -1, ptr %l132, !tbaa !24
  br label %bb92
bb92:
  %t311 = load i64, ptr %l132, !tbaa !24
  store i64 %t311, ptr %l11, !tbaa !24
  %t312 = load i64, ptr %l11, !tbaa !24
  %t314 = icmp sge i64 %t312, 0
  br i1 %t314, label %bb93, label %bb94
bb93:
  %t316 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t316, ptr %l139, !tbaa !27
  %t317 = load i64, ptr %l11, !tbaa !24
  store i64 %t317, ptr %l140, !tbaa !24
  %t318 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t321 = extractvalue { i64, ptr } %t318, 0
  store i64 %t321, ptr %l143, !tbaa !24
  %t322 = load { i64, ptr }, ptr %l139, !tbaa !27
  %t323 = extractvalue { i64, ptr } %t322, 0
  store i64 %t323, ptr %l144, !tbaa !24
  %t324 = load i64, ptr %l140, !tbaa !24
  %t325 = icmp sge i64 %t324, 0
  br i1 %t325, label %bb95, label %bb96
bb94:
  br label %bb114
bb95:
  %t327 = load i64, ptr %l140, !tbaa !24
  %t328 = load i64, ptr %l143, !tbaa !24
  %t329 = icmp sle i64 %t327, %t328
  br i1 %t329, label %bb97, label %bb98
bb96:
  call void @__olang_check_failed(ptr @olang_loc_e010b40d861556cc_7cbd713015487310)
  unreachable
bb97:
  %t331 = load i64, ptr %l143, !tbaa !24
  %t332 = load i64, ptr %l144, !tbaa !24
  %t333 = icmp sle i64 %t331, %t332
  br i1 %t333, label %bb99, label %bb100
bb98:
  call void @__olang_check_failed(ptr @olang_loc_e010b40d861556cc_7cbd713015487310)
  unreachable
bb99:
  %t335 = getelementptr { i64, ptr }, ptr %l139, i32 0, i32 1
  %t336 = load ptr, ptr %t335, !tbaa !27
  %t337 = load i64, ptr %l140, !tbaa !24
  %t338 = load i64, ptr %l143, !tbaa !24
  %t339 = getelementptr i8, ptr %t336, i64 %t337
  %t340 = sub i64 %t338, %t337
  %t341 = insertvalue { i64, ptr } undef, i64 %t340, 0
  %t342 = insertvalue { i64, ptr } %t341, ptr %t339, 1
  %t345 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v1, { i64, ptr } %t342, i8 41)
  %t346 = extractvalue { i32, i64 } %t345, 1
  %t347 = extractvalue { i32, i64 } %t345, 0
  store i32 %t347, ptr %l151
  %t348 = icmp ne i32 %t347, 0
  br i1 %t348, label %bb102, label %ok.349, !prof !99
ok.349:
  store i64 %t346, ptr %l150
  br label %bb101
bb100:
  call void @__olang_check_failed(ptr @olang_loc_e010b40d861556cc_7cbd713015487310)
  unreachable
bb101:
  %t350 = load i64, ptr %l150, !tbaa !24
  store i64 %t350, ptr %l138, !tbaa !24
  br label %bb104
bb102:
  br label %bb103
bb103:
  store i64 -1, ptr %l138, !tbaa !24
  br label %bb104
bb104:
  %t351 = load i64, ptr %l138, !tbaa !24
  store i64 %t351, ptr %l12, !tbaa !24
  %t352 = load i64, ptr %l12, !tbaa !24
  %t354 = icmp sge i64 %t352, 0
  br i1 %t354, label %bb105, label %bb106
bb105:
  %t356 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t356, ptr %l154, !tbaa !27
  %t357 = load i64, ptr %l11, !tbaa !24
  store i64 %t357, ptr %l155, !tbaa !24
  %t358 = load i64, ptr %l11, !tbaa !24
  %t359 = load i64, ptr %l12, !tbaa !24
  %t362 = add i64 %t358, %t359
  %t364 = add i64 %t362, 1
  store i64 %t364, ptr %l159, !tbaa !24
  %t365 = load { i64, ptr }, ptr %l154, !tbaa !27
  %t366 = extractvalue { i64, ptr } %t365, 0
  store i64 %t366, ptr %l160, !tbaa !24
  %t367 = load i64, ptr %l155, !tbaa !24
  %t368 = icmp sge i64 %t367, 0
  br i1 %t368, label %bb107, label %bb108
bb106:
  br label %bb113
bb107:
  %t370 = load i64, ptr %l155, !tbaa !24
  %t371 = load i64, ptr %l159, !tbaa !24
  %t372 = icmp sle i64 %t370, %t371
  br i1 %t372, label %bb109, label %bb110
bb108:
  call void @__olang_check_failed(ptr @olang_loc_8cdf81df4f8deaf9_3f7b7447e7e110ed)
  unreachable
bb109:
  %t374 = load i64, ptr %l159, !tbaa !24
  %t375 = load i64, ptr %l160, !tbaa !24
  %t376 = icmp sle i64 %t374, %t375
  br i1 %t376, label %bb111, label %bb112
bb110:
  call void @__olang_check_failed(ptr @olang_loc_8cdf81df4f8deaf9_3f7b7447e7e110ed)
  unreachable
bb111:
  %t378 = getelementptr { i64, ptr }, ptr %l154, i32 0, i32 1
  %t379 = load ptr, ptr %t378, !tbaa !27
  %t380 = load i64, ptr %l155, !tbaa !24
  %t381 = load i64, ptr %l159, !tbaa !24
  %t382 = getelementptr i8, ptr %t379, i64 %t380
  %t383 = sub i64 %t381, %t380
  %t384 = insertvalue { i64, ptr } undef, i64 %t383, 0
  %t385 = insertvalue { i64, ptr } %t384, ptr %t382, 1
  %t386 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d92, i32 0, i32 1) }, 1
  %t387 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d92, i32 0, i32 1) }, 0
  %t389 = extractvalue { i64, ptr } %t385, 1
  %t390 = extractvalue { i64, ptr } %t385, 0
  %t391 = add i64 %t387, %t390
  %t392 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t391)
  call void @olang_textcopy(ptr %t392, ptr %t386, i64 %t387)
  %t393 = getelementptr i8, ptr %t392, i64 %t387
  call void @olang_textcopy(ptr %t393, ptr %t389, i64 %t390)
  %t394 = insertvalue { i64, ptr } undef, i64 %t391, 0
  %t395 = insertvalue { i64, ptr } %t394, ptr %t392, 1
  %t397 = extractvalue { i64, ptr } %t395, 0
  %t398 = extractvalue { i64, ptr } %t395, 1
  %t399 = mul i64 %t397, 1
  %t400 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t399)
  call void @llvm.memcpy.p0.p0.i64(ptr %t400, ptr %t398, i64 %t399, i1 false)
  %t401 = insertvalue { i64, ptr } undef, i64 %t397, 0
  %t402 = insertvalue { i64, ptr } %t401, ptr %t400, 1
  store { i64, ptr } %t402, ptr %l10, !tbaa !27
  br label %bb113
bb112:
  call void @__olang_check_failed(ptr @olang_loc_8cdf81df4f8deaf9_3f7b7447e7e110ed)
  unreachable
bb113:
  br label %bb114
bb114:
  %t404 = load ptr, ptr %l0, !tbaa !29
  %t406 = getelementptr %"compiler/target:Target", ptr %t404, i32 0, i32 7
  %t407 = load i64, ptr %t406, !tbaa !24
  %t409 = icmp sgt i64 %t407, 0
  br i1 %t409, label %bb115, label %bb116
bb115:
  %t411 = load ptr, ptr %l0, !tbaa !29
  %t413 = getelementptr %"compiler/target:Target", ptr %t411, i32 0, i32 7
  %t414 = load i64, ptr %t413, !tbaa !24
  store i64 %t414, ptr %l170, !tbaa !24
  br label %bb117
bb116:
  store i64 128, ptr %l170, !tbaa !24
  br label %bb117
bb117:
  %t416 = load i64, ptr %l170, !tbaa !24
  store i64 %t416, ptr %l13, !tbaa !24
  %t417 = load ptr, ptr %l0, !tbaa !29
  store ptr %t417, ptr %l173, !tbaa !29
  %t418 = ptrtoint ptr %v0 to i64
  store i64 %t418, ptr %l174, !tbaa !24
  %t419 = load i1, ptr @olang_2esole_2ecompiler_2ftarget_3aTarget_2e5
  br i1 %t419, label %bb118, label %bb119
bb118:
  %t421 = call ptr @__olang_region_make(ptr %v0)
  %t422 = ptrtoint ptr %t421 to i64
  store i64 %t422, ptr %l174, !tbaa !24
  br label %bb119
bb119:
  %t423 = load ptr, ptr %l0, !tbaa !29
  %t425 = getelementptr %"compiler/target:Target", ptr %t423, i32 0, i32 4
  %t426 = load { i64, ptr }, ptr %t425, !tbaa !27
  %t427 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t428 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t429 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t430 = load i64, ptr %l13, !tbaa !24
  %t431 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d93, i32 0, i32 1) }, 1
  %t432 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d93, i32 0, i32 1) }, 0
  %t434 = extractvalue { i64, ptr } %t426, 1
  %t435 = extractvalue { i64, ptr } %t426, 0
  %t436 = add i64 %t432, %t435
  %t437 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d94, i32 0, i32 1) }, 1
  %t438 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d94, i32 0, i32 1) }, 0
  %t439 = add i64 %t436, %t438
  %t441 = extractvalue { i64, ptr } %t427, 1
  %t442 = extractvalue { i64, ptr } %t427, 0
  %t443 = add i64 %t439, %t442
  %t444 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d95, i32 0, i32 1) }, 1
  %t445 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d95, i32 0, i32 1) }, 0
  %t446 = add i64 %t443, %t445
  %t448 = extractvalue { i64, ptr } %t428, 1
  %t449 = extractvalue { i64, ptr } %t428, 0
  %t450 = add i64 %t446, %t449
  %t452 = extractvalue { i64, ptr } %t429, 1
  %t453 = extractvalue { i64, ptr } %t429, 0
  %t454 = add i64 %t450, %t453
  %t455 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d96, i32 0, i32 1) }, 1
  %t456 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d96, i32 0, i32 1) }, 0
  %t457 = add i64 %t454, %t456
  %t459 = call i64 @__olang_fmt_i64(ptr null, i64 %t430)
  %t460 = add i64 %t457, %t459
  %t461 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d95, i32 0, i32 1) }, 1
  %t462 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d95, i32 0, i32 1) }, 0
  %t463 = add i64 %t460, %t462
  %t464 = load i64, ptr %l174
  %t465 = inttoptr i64 %t464 to ptr
  %t466 = call ptr @__olang_scope_alloc(ptr %t465, i64 %t463)
  call void @olang_textcopy(ptr %t466, ptr %t431, i64 %t432)
  %t467 = getelementptr i8, ptr %t466, i64 %t432
  call void @olang_textcopy(ptr %t467, ptr %t434, i64 %t435)
  %t468 = getelementptr i8, ptr %t467, i64 %t435
  call void @olang_textcopy(ptr %t468, ptr %t437, i64 %t438)
  %t469 = getelementptr i8, ptr %t468, i64 %t438
  call void @olang_textcopy(ptr %t469, ptr %t441, i64 %t442)
  %t470 = getelementptr i8, ptr %t469, i64 %t442
  call void @olang_textcopy(ptr %t470, ptr %t444, i64 %t445)
  %t471 = getelementptr i8, ptr %t470, i64 %t445
  call void @olang_textcopy(ptr %t471, ptr %t448, i64 %t449)
  %t472 = getelementptr i8, ptr %t471, i64 %t449
  call void @olang_textcopy(ptr %t472, ptr %t452, i64 %t453)
  %t473 = getelementptr i8, ptr %t472, i64 %t453
  call void @olang_textcopy(ptr %t473, ptr %t455, i64 %t456)
  %t474 = getelementptr i8, ptr %t473, i64 %t456
  %t475 = call i64 @__olang_fmt_i64(ptr %t474, i64 %t430)
  %t476 = getelementptr i8, ptr %t474, i64 %t459
  call void @olang_textcopy(ptr %t476, ptr %t461, i64 %t462)
  %t477 = insertvalue { i64, ptr } undef, i64 %t463, 0
  %t478 = insertvalue { i64, ptr } %t477, ptr %t466, 1
  %t480 = load i64, ptr %l174
  %t481 = inttoptr i64 %t480 to ptr
  %t482 = extractvalue { i64, ptr } %t478, 0
  %t483 = extractvalue { i64, ptr } %t478, 1
  %t484 = mul i64 %t482, 1
  %t485 = call ptr @__olang_scope_alloc(ptr %t481, i64 %t484)
  call void @llvm.memcpy.p0.p0.i64(ptr %t485, ptr %t483, i64 %t484, i1 false)
  %t486 = insertvalue { i64, ptr } undef, i64 %t482, 0
  %t487 = insertvalue { i64, ptr } %t486, ptr %t485, 1
  %t488 = load ptr, ptr %l173, !tbaa !29
  %t489 = getelementptr %"compiler/target:Target", ptr %t488, i32 0, i32 5
  %t490 = load { i64, ptr }, ptr %t489, !tbaa !27
  store { i64, ptr } %t490, ptr %l184, !tbaa !27
  %t492 = load ptr, ptr %l173, !tbaa !29
  %t493 = getelementptr %"compiler/target:Target", ptr %t492, i32 0, i32 5
  store { i64, ptr } %t487, ptr %t493, !tbaa !27
  %t494 = load i1, ptr @olang_2esole_2ecompiler_2ftarget_3aTarget_2e5
  br i1 %t494, label %bb120, label %bb121
bb120:
  %t496 = load { i64, ptr }, ptr %l184
  %t497 = extractvalue { i64, ptr } %t496, 1
  call void @__olang_region_release(ptr %t497)
  store { i64, ptr } zeroinitializer, ptr %l184
  br label %bb121
bb121:
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
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
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
  %l44 = alloca ptr
  %l45 = alloca i64
  %l53 = alloca i64
  %l55 = alloca i1
  %l57 = alloca { i64, ptr }
  %l58 = alloca i1
  %l61 = alloca ptr
  %l62 = alloca i64
  %l65 = alloca { i64, ptr }
  %l66 = alloca { i64, ptr }
  %l69 = alloca { i64, ptr }
  %l70 = alloca { i64, ptr }
  %l71 = alloca i64
  %l72 = alloca { i64, ptr }
  %l73 = alloca i64
  %l78 = alloca { i64, ptr }
  %l79 = alloca i64
  %l97 = alloca { i64, ptr }
  %l99 = alloca i1
  %l100 = alloca ptr
  %l101 = alloca i64
  %l106 = alloca { i64, ptr }
  %l108 = alloca i1
  %l109 = alloca i1
  %l114 = alloca i1
  %l117 = alloca { i64, ptr }
  %l119 = alloca i64
  %l122 = alloca i1
  %l125 = alloca ptr
  %l126 = alloca i64
  %l132 = alloca { i64, ptr }
  %l133 = alloca { i64, ptr }
  %l134 = alloca i64
  %l135 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s12 = alloca %olang.scope
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
  %t32 = call { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %s0, ptr %s0, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d97, i32 0, i32 1) })
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d98, i32 0, i32 1) }, ptr %l22, !tbaa !27
  br label %bb11
bb11:
  %t43 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t43, ptr %l2, !tbaa !27
  %t44 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t46 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t44, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d99, i32 0, i32 1) })
  store i1 %t46, ptr %l28
  br label %bb12
bb12:
  %t47 = load i1, ptr %l28, !tbaa !21
  %t48 = xor i1 %t47, true
  br i1 %t48, label %bb13, label %bb14
bb13:
  store %olang.scope zeroinitializer, ptr %s3
  %t50 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t52 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %s0, ptr %s3, ptr %s3, { i64, ptr } %t50, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d100, i32 0, i32 1) })
  store { i64, ptr } %t52, ptr %l31
  br label %bb15
bb14:
  br label %bb44
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
  br label %bb28
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
  %t76 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s3, ptr %s4, { i64, ptr } %t74, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d101, i32 0, i32 1) })
  store i1 %t76, ptr %l42
  br label %bb20
bb20:
  %t77 = load i1, ptr %l42, !tbaa !21
  %t78 = xor i1 %t77, true
  br i1 %t78, label %bb21, label %bb22
bb21:
  %t80 = load ptr, ptr %lp1
  store ptr %t80, ptr %l44, !tbaa !29
  %t81 = ptrtoint ptr %v1 to i64
  store i64 %t81, ptr %l45, !tbaa !24
  %t82 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t82, label %bb23, label %bb24
bb22:
  br label %bb26
bb23:
  %t84 = call ptr @__olang_region_make(ptr %v1)
  %t85 = ptrtoint ptr %t84 to i64
  store i64 %t85, ptr %l45, !tbaa !24
  br label %bb24
bb24:
  %t86 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t88 = extractvalue { i64, ptr } %t86, 1
  %t89 = extractvalue { i64, ptr } %t86, 0
  %t90 = load i64, ptr %l45
  %t91 = inttoptr i64 %t90 to ptr
  %t92 = call ptr @__olang_scope_alloc(ptr %t91, i64 %t89)
  call void @olang_textcopy(ptr %t92, ptr %t88, i64 %t89)
  %t93 = insertvalue { i64, ptr } undef, i64 %t89, 0
  %t94 = insertvalue { i64, ptr } %t93, ptr %t92, 1
  %t96 = load i64, ptr %l45
  %t97 = inttoptr i64 %t96 to ptr
  %t98 = extractvalue { i64, ptr } %t94, 0
  %t99 = extractvalue { i64, ptr } %t94, 1
  %t100 = mul i64 %t98, 1
  %t101 = call ptr @__olang_scope_alloc(ptr %t97, i64 %t100)
  call void @llvm.memcpy.p0.p0.i64(ptr %t101, ptr %t99, i64 %t100, i1 false)
  %t102 = insertvalue { i64, ptr } undef, i64 %t98, 0
  %t103 = insertvalue { i64, ptr } %t102, ptr %t101, 1
  %t104 = load ptr, ptr %l44, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t104, { i64, ptr } %t103)
  br label %bb25
bb25:
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s4)
  br label %bb27
bb27:
  %t106 = load i64, ptr %l4, !tbaa !24
  %t108 = add i64 %t106, 1
  store i64 %t108, ptr %l4, !tbaa !24
  br label %bb16
bb28:
  call void @__olang_scope_close(ptr %s3)
  %t110 = load ptr, ptr %lp1
  %t112 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v1, ptr %t110)
  store i64 %t112, ptr %l53
  br label %bb29
bb29:
  %t113 = load i64, ptr %l53, !tbaa !24
  %t114 = icmp eq i64 %t113, 0
  br i1 %t114, label %bb30, label %bb31
bb30:
  store i1 true, ptr %l55, !tbaa !21
  br label %bb34
bb31:
  %t116 = load ptr, ptr %lp1
  %t118 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t116, i64 0)
  store { i64, ptr } %t118, ptr %l57
  br label %bb32
bb32:
  %t119 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t120 = call i1 @compiler_2ftarget_2eexecutable(ptr %v1, { i64, ptr } %t119)
  store i1 %t120, ptr %l58
  br label %bb33
bb33:
  %t121 = load i1, ptr %l58, !tbaa !21
  %t122 = xor i1 %t121, true
  store i1 %t122, ptr %l55, !tbaa !21
  br label %bb34
bb34:
  %t124 = load i1, ptr %l55, !tbaa !21
  br i1 %t124, label %bb35, label %bb36
bb35:
  call void @__olang_scope_close(ptr %s0)
  %t126 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t126, ptr %rv
  br label %ret
bb36:
  br label %bb37
bb37:
  %t127 = load ptr, ptr %lp1
  store ptr %t127, ptr %l61, !tbaa !29
  %t128 = ptrtoint ptr %v1 to i64
  store i64 %t128, ptr %l62, !tbaa !24
  %t129 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t129, label %bb38, label %bb39
bb38:
  %t131 = call ptr @__olang_region_make(ptr %v1)
  %t132 = ptrtoint ptr %t131 to i64
  store i64 %t132, ptr %l62, !tbaa !24
  br label %bb39
bb39:
  %t133 = load ptr, ptr %lp1
  %t135 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t133, i64 0)
  store { i64, ptr } %t135, ptr %l65
  br label %bb40
bb40:
  %t136 = load i64, ptr %l62
  %t137 = inttoptr i64 %t136 to ptr
  %t138 = load i64, ptr %l62
  %t139 = inttoptr i64 %t138 to ptr
  %t140 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t141 = call { i64, ptr } @compiler_2ftarget_2ewhereIs(ptr %t137, ptr %t139, { i64, ptr } %t140)
  store { i64, ptr } %t141, ptr %l66
  br label %bb41
bb41:
  %t142 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t143 = load i64, ptr %l62
  %t144 = inttoptr i64 %t143 to ptr
  %t145 = extractvalue { i64, ptr } %t142, 0
  %t146 = extractvalue { i64, ptr } %t142, 1
  %t147 = mul i64 %t145, 1
  %t148 = call ptr @__olang_scope_alloc(ptr %t144, i64 %t147)
  call void @llvm.memcpy.p0.p0.i64(ptr %t148, ptr %t146, i64 %t147, i1 false)
  %t149 = insertvalue { i64, ptr } undef, i64 %t145, 0
  %t150 = insertvalue { i64, ptr } %t149, ptr %t148, 1
  %t151 = load ptr, ptr %l61, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_Haae4fbc3ba15583a49040d883d2248d1(ptr %v1, ptr %v1, ptr %t151, i64 0, { i64, ptr } %t150)
  br label %bb42
bb42:
  %t153 = load ptr, ptr %lp1
  %t155 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v1, ptr %v1, ptr %t153)
  store { i64, ptr } %t155, ptr %l69
  br label %bb43
bb43:
  %t156 = load { i64, ptr }, ptr %l69, !tbaa !27
  store { i64, ptr } %t156, ptr %l70, !tbaa !27
  %t157 = load { i64, ptr }, ptr %l70, !tbaa !27
  %t158 = extractvalue { i64, ptr } %t157, 0
  store i64 %t158, ptr %l71, !tbaa !24
  %t159 = load i64, ptr %l71, !tbaa !24
  %t160 = mul i64 %t159, 16
  %t161 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t160)
  %t162 = insertvalue { i64, ptr } undef, i64 %t159, 0
  %t163 = insertvalue { i64, ptr } %t162, ptr %t161, 1
  store { i64, ptr } %t163, ptr %l72, !tbaa !27
  %t164 = getelementptr { i64, ptr }, ptr %l72, i32 0, i32 1
  %t165 = load ptr, ptr %t164, !tbaa !27
  %t166 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t167 = load ptr, ptr %t166, !tbaa !27
  %t168 = load i64, ptr %l71, !tbaa !24
  %t169 = mul i64 %t168, 16
  call void @llvm.memmove.p0.p0.i64(ptr %t165, ptr %t167, i64 %t169, i1 false)
  %t170 = load { i64, ptr }, ptr %l72, !tbaa !27
  store { i64, ptr } %t170, ptr %l70, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t171 = load { i64, ptr }, ptr %l70, !tbaa !27
  %t172 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t171, 1
  store { i32, { i64, ptr } } %t172, ptr %rv
  br label %ret
bb44:
  store %olang.scope zeroinitializer, ptr %s9
  %t173 = ptrtoint ptr %s9 to i64
  store i64 %t173, ptr %l73, !tbaa !24
  %t174 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_202_3e_2e_2d1
  br i1 %t174, label %bb45, label %bb46
bb45:
  %t176 = call ptr @__olang_region_make(ptr %s9)
  %t177 = ptrtoint ptr %t176 to i64
  store i64 %t177, ptr %l73, !tbaa !24
  br label %bb46
bb46:
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t180 = getelementptr %"compiler/target:Target", ptr %t178, i32 0, i32 2
  %t181 = load { i64, ptr }, ptr %t180, !tbaa !27
  %t182 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d102, i32 0, i32 1) }, 1
  %t183 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d102, i32 0, i32 1) }, 0
  %t185 = extractvalue { i64, ptr } %t181, 1
  %t186 = extractvalue { i64, ptr } %t181, 0
  %t187 = add i64 %t183, %t186
  %t188 = load i64, ptr %l73
  %t189 = inttoptr i64 %t188 to ptr
  %t190 = call ptr @__olang_scope_alloc(ptr %t189, i64 %t187)
  call void @olang_textcopy(ptr %t190, ptr %t182, i64 %t183)
  %t191 = getelementptr i8, ptr %t190, i64 %t183
  call void @olang_textcopy(ptr %t191, ptr %t185, i64 %t186)
  %t192 = insertvalue { i64, ptr } undef, i64 %t187, 0
  %t193 = insertvalue { i64, ptr } %t192, ptr %t190, 1
  %t195 = load i64, ptr %l73
  %t196 = inttoptr i64 %t195 to ptr
  %t197 = extractvalue { i64, ptr } %t193, 0
  %t198 = extractvalue { i64, ptr } %t193, 1
  %t199 = mul i64 %t197, 1
  %t200 = call ptr @__olang_scope_alloc(ptr %t196, i64 %t199)
  call void @llvm.memcpy.p0.p0.i64(ptr %t200, ptr %t198, i64 %t199, i1 false)
  %t201 = insertvalue { i64, ptr } undef, i64 %t197, 0
  %t202 = insertvalue { i64, ptr } %t201, ptr %t200, 1
  store { i64, ptr } %t202, ptr %l78, !tbaa !27
  %t203 = ptrtoint ptr %s9 to i64
  store i64 %t203, ptr %l79, !tbaa !24
  %t204 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_202_3e_2e_2d1
  br i1 %t204, label %bb47, label %bb48
bb47:
  %t206 = call ptr @__olang_region_make(ptr %s9)
  %t207 = ptrtoint ptr %t206 to i64
  store i64 %t207, ptr %l79, !tbaa !24
  br label %bb48
bb48:
  %t208 = load ptr, ptr %l0, !tbaa !29
  %t210 = getelementptr %"compiler/target:Target", ptr %t208, i32 0, i32 2
  %t211 = load { i64, ptr }, ptr %t210, !tbaa !27
  %t212 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d103, i32 0, i32 1) }, 1
  %t213 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d103, i32 0, i32 1) }, 0
  %t215 = extractvalue { i64, ptr } %t211, 1
  %t216 = extractvalue { i64, ptr } %t211, 0
  %t217 = add i64 %t213, %t216
  %t218 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d104, i32 0, i32 1) }, 1
  %t219 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d104, i32 0, i32 1) }, 0
  %t220 = add i64 %t217, %t219
  %t221 = load i64, ptr %l79
  %t222 = inttoptr i64 %t221 to ptr
  %t223 = call ptr @__olang_scope_alloc(ptr %t222, i64 %t220)
  call void @olang_textcopy(ptr %t223, ptr %t212, i64 %t213)
  %t224 = getelementptr i8, ptr %t223, i64 %t213
  call void @olang_textcopy(ptr %t224, ptr %t215, i64 %t216)
  %t225 = getelementptr i8, ptr %t224, i64 %t216
  call void @olang_textcopy(ptr %t225, ptr %t218, i64 %t219)
  %t226 = insertvalue { i64, ptr } undef, i64 %t220, 0
  %t227 = insertvalue { i64, ptr } %t226, ptr %t223, 1
  %t229 = load i64, ptr %l79
  %t230 = inttoptr i64 %t229 to ptr
  %t231 = extractvalue { i64, ptr } %t227, 0
  %t232 = extractvalue { i64, ptr } %t227, 1
  %t233 = mul i64 %t231, 1
  %t234 = call ptr @__olang_scope_alloc(ptr %t230, i64 %t233)
  call void @llvm.memcpy.p0.p0.i64(ptr %t234, ptr %t232, i64 %t233, i1 false)
  %t235 = insertvalue { i64, ptr } undef, i64 %t231, 0
  %t236 = insertvalue { i64, ptr } %t235, ptr %t234, 1
  %t237 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t238 = insertvalue [2 x { i64, ptr }] undef, { i64, ptr } %t237, 0
  %t240 = insertvalue [2 x { i64, ptr }] %t238, { i64, ptr } %t236, 1
  %t242 = call ptr @__olang_scope_alloc_a(ptr %s9, i64 32, i64 8)
  store [2 x { i64, ptr }] %t240, ptr %t242
  store ptr %t242, ptr %l7
  store i64 0, ptr %l8, !tbaa !24
  %t244 = load ptr, ptr %l7
  store i64 2, ptr %l9, !tbaa !24
  br label %bb49
bb49:
  store %olang.scope zeroinitializer, ptr %s12
  %t247 = load i64, ptr %l8, !tbaa !24
  %t248 = load i64, ptr %l9, !tbaa !24
  %t251 = icmp slt i64 %t247, %t248
  %t253 = xor i1 %t251, true
  br i1 %t253, label %bb50, label %bb51
bb50:
  call void @__olang_scope_close(ptr %s12)
  br label %bb83
bb51:
  br label %bb52
bb52:
  %t255 = load ptr, ptr %l7
  %t256 = load i64, ptr %l8, !tbaa !24
  %t259 = getelementptr [2 x { i64, ptr }], ptr %t255, i64 0, i64 %t256
  %t260 = load { i64, ptr }, ptr %t259, !tbaa !37
  %t264 = call { i64, ptr } @compiler_2ftarget_2ewhereIs(ptr %s9, ptr %s12, { i64, ptr } %t260)
  store { i64, ptr } %t264, ptr %l97
  br label %bb53
bb53:
  %t265 = load { i64, ptr }, ptr %l97, !tbaa !27
  store { i64, ptr } %t265, ptr %l11, !tbaa !27
  %t266 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t268 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s12, ptr %s12, { i64, ptr } %t266, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d105, i32 0, i32 1) })
  store i1 %t268, ptr %l99
  br label %bb54
bb54:
  %t269 = load i1, ptr %l99, !tbaa !21
  br i1 %t269, label %bb55, label %bb56
bb55:
  call void @__olang_scope_close(ptr %s12)
  br label %bb82
bb56:
  br label %bb57
bb57:
  %t270 = load ptr, ptr %lp1
  store ptr %t270, ptr %l100, !tbaa !29
  %t271 = ptrtoint ptr %v1 to i64
  store i64 %t271, ptr %l101, !tbaa !24
  %t272 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t272, label %bb58, label %bb59
bb58:
  %t274 = call ptr @__olang_region_make(ptr %v1)
  %t275 = ptrtoint ptr %t274 to i64
  store i64 %t275, ptr %l101, !tbaa !24
  br label %bb59
bb59:
  %t276 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t278 = extractvalue { i64, ptr } %t276, 1
  %t279 = extractvalue { i64, ptr } %t276, 0
  %t280 = load i64, ptr %l101
  %t281 = inttoptr i64 %t280 to ptr
  %t282 = call ptr @__olang_scope_alloc(ptr %t281, i64 %t279)
  call void @olang_textcopy(ptr %t282, ptr %t278, i64 %t279)
  %t283 = insertvalue { i64, ptr } undef, i64 %t279, 0
  %t284 = insertvalue { i64, ptr } %t283, ptr %t282, 1
  %t286 = load i64, ptr %l101
  %t287 = inttoptr i64 %t286 to ptr
  %t288 = extractvalue { i64, ptr } %t284, 0
  %t289 = extractvalue { i64, ptr } %t284, 1
  %t290 = mul i64 %t288, 1
  %t291 = call ptr @__olang_scope_alloc(ptr %t287, i64 %t290)
  call void @llvm.memcpy.p0.p0.i64(ptr %t291, ptr %t289, i64 %t290, i1 false)
  %t292 = insertvalue { i64, ptr } undef, i64 %t288, 0
  %t293 = insertvalue { i64, ptr } %t292, ptr %t291, 1
  %t294 = load ptr, ptr %l100, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t294, { i64, ptr } %t293)
  br label %bb60
bb60:
  %t296 = call { i64, ptr } @compiler_2ftarget_2eSysroot(ptr %s12)
  store { i64, ptr } %t296, ptr %l106
  br label %bb61
bb61:
  %t297 = load { i64, ptr }, ptr %l106, !tbaa !27
  store { i64, ptr } %t297, ptr %l12, !tbaa !27
  %t298 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t300 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s12, ptr %s12, { i64, ptr } %t298, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d106, i32 0, i32 1) })
  store i1 %t300, ptr %l108
  br label %bb62
bb62:
  %t301 = load i1, ptr %l108, !tbaa !21
  br i1 %t301, label %bb63, label %bb64
bb63:
  %t302 = load ptr, ptr %l0, !tbaa !29
  %t304 = getelementptr %"compiler/target:Target", ptr %t302, i32 0, i32 2
  %t305 = load { i64, ptr }, ptr %t304, !tbaa !27
  %t306 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d107, i32 0, i32 1) }, 1
  %t307 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d107, i32 0, i32 1) }, 0
  %t309 = extractvalue { i64, ptr } %t305, 1
  %t310 = extractvalue { i64, ptr } %t305, 0
  %t311 = add i64 %t307, %t310
  %t312 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d108, i32 0, i32 1) }, 1
  %t313 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d108, i32 0, i32 1) }, 0
  %t314 = add i64 %t311, %t313
  %t315 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t314)
  call void @olang_textcopy(ptr %t315, ptr %t306, i64 %t307)
  %t316 = getelementptr i8, ptr %t315, i64 %t307
  call void @olang_textcopy(ptr %t316, ptr %t309, i64 %t310)
  %t317 = getelementptr i8, ptr %t316, i64 %t310
  call void @olang_textcopy(ptr %t317, ptr %t312, i64 %t313)
  %t318 = insertvalue { i64, ptr } undef, i64 %t314, 0
  %t319 = insertvalue { i64, ptr } %t318, ptr %t315, 1
  %t321 = extractvalue { i64, ptr } %t319, 0
  %t322 = extractvalue { i64, ptr } %t319, 1
  %t323 = mul i64 %t321, 1
  %t324 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t323)
  call void @llvm.memcpy.p0.p0.i64(ptr %t324, ptr %t322, i64 %t323, i1 false)
  %t325 = insertvalue { i64, ptr } undef, i64 %t321, 0
  %t326 = insertvalue { i64, ptr } %t325, ptr %t324, 1
  %t328 = call i1 @std_2fos_2eIsDir(ptr %s12, { i64, ptr } %t326)
  store i1 %t328, ptr %l114
  br label %bb65
bb64:
  store i1 false, ptr %l109, !tbaa !21
  br label %bb66
bb65:
  %t329 = load i1, ptr %l114, !tbaa !21
  store i1 %t329, ptr %l109, !tbaa !21
  br label %bb66
bb66:
  %t330 = load i1, ptr %l109, !tbaa !21
  br i1 %t330, label %bb67, label %bb68
bb67:
  %t331 = load ptr, ptr %l0, !tbaa !29
  %t333 = getelementptr %"compiler/target:Target", ptr %t331, i32 0, i32 2
  %t334 = load { i64, ptr }, ptr %t333, !tbaa !27
  %t335 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d109, i32 0, i32 1) }, 1
  %t336 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d109, i32 0, i32 1) }, 0
  %t338 = extractvalue { i64, ptr } %t334, 1
  %t339 = extractvalue { i64, ptr } %t334, 0
  %t340 = add i64 %t336, %t339
  %t341 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d110, i32 0, i32 1) }, 1
  %t342 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d110, i32 0, i32 1) }, 0
  %t343 = add i64 %t340, %t342
  %t344 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t343)
  call void @olang_textcopy(ptr %t344, ptr %t335, i64 %t336)
  %t345 = getelementptr i8, ptr %t344, i64 %t336
  call void @olang_textcopy(ptr %t345, ptr %t338, i64 %t339)
  %t346 = getelementptr i8, ptr %t345, i64 %t339
  call void @olang_textcopy(ptr %t346, ptr %t341, i64 %t342)
  %t347 = insertvalue { i64, ptr } undef, i64 %t343, 0
  %t348 = insertvalue { i64, ptr } %t347, ptr %t344, 1
  store { i64, ptr } %t348, ptr %l117, !tbaa !27
  %t349 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t350 = extractvalue { i64, ptr } %t349, 0
  %t351 = load { i64, ptr }, ptr %l117, !tbaa !27
  %t352 = extractvalue { i64, ptr } %t351, 0
  store i64 %t352, ptr %l119, !tbaa !24
  %t354 = load i64, ptr %l119, !tbaa !24
  %t355 = icmp eq i64 %t350, %t354
  br i1 %t355, label %bb69, label %bb70
bb68:
  br label %bb72
bb69:
  %t357 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t358 = load ptr, ptr %t357, !tbaa !27
  %t359 = getelementptr { i64, ptr }, ptr %l117, i32 0, i32 1
  %t360 = load ptr, ptr %t359, !tbaa !27
  %t361 = load i64, ptr %l119, !tbaa !24
  %t362 = mul i64 %t361, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t358, ptr %t360, i64 %t362, i1 false)
  br label %bb71
bb70:
  %t363 = load { i64, ptr }, ptr %l117, !tbaa !27
  store { i64, ptr } %t363, ptr %l12, !tbaa !27
  br label %bb71
bb71:
  br label %bb72
bb72:
  %t364 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t366 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s12, ptr %s12, { i64, ptr } %t364, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d111, i32 0, i32 1) })
  store i1 %t366, ptr %l122
  br label %bb73
bb73:
  %t367 = load i1, ptr %l122, !tbaa !21
  %t368 = xor i1 %t367, true
  br i1 %t368, label %bb74, label %bb75
bb74:
  %t370 = load ptr, ptr %lp1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t370, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d112, i32 0, i32 1) })
  br label %bb76
bb75:
  br label %bb80
bb76:
  %t372 = load ptr, ptr %lp1
  store ptr %t372, ptr %l125, !tbaa !29
  %t373 = ptrtoint ptr %v1 to i64
  store i64 %t373, ptr %l126, !tbaa !24
  %t374 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t374, label %bb77, label %bb78
bb77:
  %t376 = call ptr @__olang_region_make(ptr %v1)
  %t377 = ptrtoint ptr %t376 to i64
  store i64 %t377, ptr %l126, !tbaa !24
  br label %bb78
bb78:
  %t378 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t380 = extractvalue { i64, ptr } %t378, 1
  %t381 = extractvalue { i64, ptr } %t378, 0
  %t382 = load i64, ptr %l126
  %t383 = inttoptr i64 %t382 to ptr
  %t384 = call ptr @__olang_scope_alloc(ptr %t383, i64 %t381)
  call void @olang_textcopy(ptr %t384, ptr %t380, i64 %t381)
  %t385 = insertvalue { i64, ptr } undef, i64 %t381, 0
  %t386 = insertvalue { i64, ptr } %t385, ptr %t384, 1
  %t388 = load i64, ptr %l126
  %t389 = inttoptr i64 %t388 to ptr
  %t390 = extractvalue { i64, ptr } %t386, 0
  %t391 = extractvalue { i64, ptr } %t386, 1
  %t392 = mul i64 %t390, 1
  %t393 = call ptr @__olang_scope_alloc(ptr %t389, i64 %t392)
  call void @llvm.memcpy.p0.p0.i64(ptr %t393, ptr %t391, i64 %t392, i1 false)
  %t394 = insertvalue { i64, ptr } undef, i64 %t390, 0
  %t395 = insertvalue { i64, ptr } %t394, ptr %t393, 1
  %t396 = load ptr, ptr %l125, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t396, { i64, ptr } %t395)
  br label %bb79
bb79:
  br label %bb80
bb80:
  %t398 = load ptr, ptr %lp1
  %t400 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v1, ptr %v1, ptr %t398)
  store { i64, ptr } %t400, ptr %l132
  br label %bb81
bb81:
  %t401 = load { i64, ptr }, ptr %l132, !tbaa !27
  store { i64, ptr } %t401, ptr %l133, !tbaa !27
  %t402 = load { i64, ptr }, ptr %l133, !tbaa !27
  %t403 = extractvalue { i64, ptr } %t402, 0
  store i64 %t403, ptr %l134, !tbaa !24
  %t404 = load i64, ptr %l134, !tbaa !24
  %t405 = mul i64 %t404, 16
  %t406 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t405)
  %t407 = insertvalue { i64, ptr } undef, i64 %t404, 0
  %t408 = insertvalue { i64, ptr } %t407, ptr %t406, 1
  store { i64, ptr } %t408, ptr %l135, !tbaa !27
  %t409 = getelementptr { i64, ptr }, ptr %l135, i32 0, i32 1
  %t410 = load ptr, ptr %t409, !tbaa !27
  %t411 = getelementptr { i64, ptr }, ptr %l133, i32 0, i32 1
  %t412 = load ptr, ptr %t411, !tbaa !27
  %t413 = load i64, ptr %l134, !tbaa !24
  %t414 = mul i64 %t413, 16
  call void @llvm.memmove.p0.p0.i64(ptr %t410, ptr %t412, i64 %t414, i1 false)
  %t415 = load { i64, ptr }, ptr %l135, !tbaa !27
  store { i64, ptr } %t415, ptr %l133, !tbaa !27
  call void @__olang_scope_close(ptr %s12)
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s0)
  %t416 = load { i64, ptr }, ptr %l133, !tbaa !27
  %t417 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t416, 1
  store { i32, { i64, ptr } } %t417, ptr %rv
  br label %ret
bb82:
  %t418 = load i64, ptr %l8, !tbaa !24
  %t420 = add i64 %t418, 1
  store i64 %t420, ptr %l8, !tbaa !24
  br label %bb49
bb83:
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s0)
  %t423 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t423, ptr %rv
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
  %t14 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d113, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d113, i32 0, i32 1) }, 0
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
  %t47 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t45, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d114, i32 0, i32 1) })
  store i1 %t47, ptr %l15
  br label %bb5
bb5:
  %t48 = load i1, ptr %l15, !tbaa !21
  br i1 %t48, label %bb6, label %bb7
bb6:
  store %olang.scope zeroinitializer, ptr %s2
  %t49 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t51 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s2, { i64, ptr } %t49, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d115, i32 0, i32 1) })
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
  %t57 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s2, { i64, ptr } %t55, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d116, i32 0, i32 1) })
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
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d117, i32 0, i32 1) }, ptr %t68, !tbaa !27
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
  %t82 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t80, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d118, i32 0, i32 1) })
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
  %t86 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t84, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d119, i32 0, i32 1) })
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
  %t90 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t88, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d120, i32 0, i32 1) })
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
  %t94 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t92, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d121, i32 0, i32 1) })
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
  %t98 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t96, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d122, i32 0, i32 1) })
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
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d123, i32 0, i32 1) }, ptr %l49, !tbaa !27
  br label %bb55
bb54:
  %t115 = load i64, ptr %l3, !tbaa !24
  %t116 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d124, i32 0, i32 1) }, 1
  %t117 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d124, i32 0, i32 1) }, 0
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
  %t1 = call { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %s0, ptr %s0, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d125, i32 0, i32 1) })
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d126, i32 0, i32 1) }, ptr %l11, !tbaa !27
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
  %t51 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s3, { i64, ptr } %t49, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d127, i32 0, i32 1) })
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d128, i32 0, i32 1) }, ptr %l30, !tbaa !27
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
  %t110 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d129, i32 0, i32 1) }, 1
  %t111 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d129, i32 0, i32 1) }, 0
  %t112 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t113 = extractvalue { i64, ptr } %t112, 1
  %t114 = extractvalue { i64, ptr } %t112, 0
  %t115 = add i64 %t111, %t114
  %t116 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d130, i32 0, i32 1) }, 1
  %t117 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d130, i32 0, i32 1) }, 0
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d131, i32 0, i32 1) }, ptr %l47, !tbaa !27
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
  %t1 = call { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %s0, ptr %s0, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d132, i32 0, i32 1) })
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d133, i32 0, i32 1) }, ptr %l10, !tbaa !27
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
  %t51 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s3, { i64, ptr } %t49, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d134, i32 0, i32 1) })
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d135, i32 0, i32 1) }, ptr %l26, !tbaa !27
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
  %t12 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t10, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d136, i32 0, i32 1) })
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
  call void @llvm.memmove.p0.p0.i64(ptr %l6, ptr %t1, i64 544, i1 false)
  br label %bb1
bb1:
  call void @llvm.memmove.p0.p0.i64(ptr %l5, ptr %l6, i64 544, i1 false)
  %t13 = call { i32, %"compiler/target:Target" } @compiler_2ftarget_2eTarget_2eResolveOn(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %a0, { i64, ptr } %a1, i1 %a2, { i64, ptr } %a3, { i64, ptr } %a4, ptr %l5, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d137, i32 0, i32 1) })
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d138, i32 0, i32 1) }, ptr %l20, !tbaa !27
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
  %t1 = call { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %s0, ptr %s0, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d139, i32 0, i32 1) })
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d140, i32 0, i32 1) }, ptr %l2, !tbaa !27
  br label %bb6
bb6:
  %t12 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t12, ptr %l0, !tbaa !27
  %t13 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t15 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t13, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d141, i32 0, i32 1) })
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
  %t23 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d142, i32 0, i32 1) }, 1
  %t24 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d142, i32 0, i32 1) }, 0
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
  %t31 = call { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %s0, ptr %s0, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d143, i32 0, i32 1) })
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
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d144, i32 0, i32 1) }, ptr %l12, !tbaa !27
  br label %bb16
bb16:
  %t42 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t42, 1
  %t46 = extractvalue { i64, ptr } %t42, 0
  %t47 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d145, i32 0, i32 1) }, 1
  %t48 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d145, i32 0, i32 1) }, 0
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d146, i32 0, i32 1) }, ptr %l13, !tbaa !27
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
  %t33 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t31, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d147, i32 0, i32 1) })
  store i1 %t33, ptr %l21
  br label %bb5
bb5:
  %t34 = load i1, ptr %l21, !tbaa !21
  br i1 %t34, label %bb6, label %bb7
bb6:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d148, i32 0, i32 1) }, ptr %l22, !tbaa !27
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d149, i32 0, i32 1) }, ptr %l26, !tbaa !27
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d150, i32 0, i32 1) }, ptr %l40, !tbaa !27
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
  %t106 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d151, i32 0, i32 1) }, 1
  %t107 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d151, i32 0, i32 1) }, 0
  %t109 = extractvalue { i64, ptr } %t101, 1
  %t110 = extractvalue { i64, ptr } %t101, 0
  %t111 = add i64 %t107, %t110
  %t112 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d152, i32 0, i32 1) }, 1
  %t113 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d152, i32 0, i32 1) }, 0
  %t114 = add i64 %t111, %t113
  %t116 = call i64 @__olang_fmt_i64(ptr null, i64 %t103)
  %t117 = add i64 %t114, %t116
  %t118 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d152, i32 0, i32 1) }, 1
  %t119 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d152, i32 0, i32 1) }, 0
  %t120 = add i64 %t117, %t119
  %t122 = call i64 @__olang_fmt_i64(ptr null, i64 %t105)
  %t123 = add i64 %t120, %t122
  %t124 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d153, i32 0, i32 1) }, 1
  %t125 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d153, i32 0, i32 1) }, 0
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
  %t195 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d154, i32 0, i32 1) }, 1
  %t196 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d154, i32 0, i32 1) }, 0
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
  %t221 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d155, i32 0, i32 1) }, 1
  %t222 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d155, i32 0, i32 1) }, 0
  %t223 = load i64, ptr %l77, !tbaa !24
  %t224 = call i64 @__olang_fmt_i64(ptr null, i64 %t223)
  %t225 = add i64 %t222, %t224
  %t226 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d156, i32 0, i32 1) }, 1
  %t227 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d156, i32 0, i32 1) }, 0
  %t228 = add i64 %t225, %t227
  %t229 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t230 = extractvalue { i64, ptr } %t229, 1
  %t231 = extractvalue { i64, ptr } %t229, 0
  %t232 = add i64 %t228, %t231
  %t233 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d156, i32 0, i32 1) }, 1
  %t234 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d156, i32 0, i32 1) }, 0
  %t235 = add i64 %t232, %t234
  %t236 = load { i64, ptr }, ptr %l79, !tbaa !27
  %t237 = extractvalue { i64, ptr } %t236, 1
  %t238 = extractvalue { i64, ptr } %t236, 0
  %t239 = add i64 %t235, %t238
  %t240 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d156, i32 0, i32 1) }, 1
  %t241 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d156, i32 0, i32 1) }, 0
  %t242 = add i64 %t239, %t241
  %t243 = load { i64, ptr }, ptr %l80, !tbaa !27
  %t244 = extractvalue { i64, ptr } %t243, 1
  %t245 = extractvalue { i64, ptr } %t243, 0
  %t246 = add i64 %t242, %t245
  %t247 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d157, i32 0, i32 1) }, 1
  %t248 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d157, i32 0, i32 1) }, 0
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
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d158, i32 0, i32 1) }, ptr %t5, !tbaa !27
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
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d159, i32 0, i32 1) }, ptr %l10, !tbaa !27
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
  store { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d160, i32 0, i32 1) }, ptr %l14, !tbaa !27
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
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d161, i32 0, i32 1) }, ptr %l18, !tbaa !27
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
  call void @llvm.memmove.p0.p0.i64(ptr %l0, ptr %t1, i64 544, i1 false)
  br label %bb1
bb1:
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l0, i64 544, i1 false)
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
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d162, i32 0, i32 1) }, ptr %l10, !tbaa !27
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
  %t11 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d163, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d163, i32 0, i32 1) }, 0
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d164, i32 0, i32 1) }, ptr %l21, !tbaa !27
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
  %t53 = call { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %s0, ptr %s0, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d165, i32 0, i32 1) })
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d166, i32 0, i32 1) }, ptr %l25, !tbaa !27
  br label %bb14
bb14:
  %t64 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t64, ptr %l1, !tbaa !27
  %t65 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t67 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t65, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d167, i32 0, i32 1) })
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
  store { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d168, i32 0, i32 1) }, ptr %l33, !tbaa !27
  br label %bb18
bb18:
  %t73 = load { i64, ptr }, ptr %l33, !tbaa !27
  store %olang.scope zeroinitializer, ptr %s4
  %t76 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %s0, ptr %s4, ptr %s4, { i64, ptr } %t73, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d169, i32 0, i32 1) })
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
  %t100 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s4, ptr %s5, { i64, ptr } %t98, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d170, i32 0, i32 1) })
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
  %t109 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d171, i32 0, i32 1) }, 1
  %t110 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d171, i32 0, i32 1) }, 0
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
  %t138 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d172, i32 0, i32 1) }, 1
  %t139 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d172, i32 0, i32 1) }, 0
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d173, i32 0, i32 1) }, ptr %l64, !tbaa !27
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
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d174, i32 0, i32 1) }, ptr %l0, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d175, i32 0, i32 1) }, ptr %l1, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d176, i32 0, i32 1) }, ptr %l2, !tbaa !27
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d177, i32 0, i32 1) }, ptr %l3, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d178, i32 0, i32 1) }, ptr %l4, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d179, i32 0, i32 1) }, ptr %l5, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d180, i32 0, i32 1) }, ptr %l6, !tbaa !27
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
@.d18 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\00" }>, align 8
declare i32 @access(ptr, i32)
@__olang_prog_scope = external thread_local(initialexec) global ptr
@.d19 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d20 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"," }>, align 8
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
@.d21 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"unknown" }>, align 8
@.d22 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"unknown" }>, align 8
@.d23 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d24 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d25 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"," }>, align 8
@.d26 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"OLANG_SYSROOT" }>, align 8
@.d27 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2ftarget_3aTarget_2e0 = weak hidden constant i1 false
declare void @__olang_region_release(ptr) noinline
@.d28 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d29 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"-linux" }>, align 8
@.d30 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d31 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"-linux-gnu" }>, align 8
@.d32 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d33 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d34 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"-apple" }>, align 8
@.d35 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"-windows" }>, align 8
@.d36 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d37 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2ftarget_3aTarget_2e2 = weak hidden constant i1 false
@.d38 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"linux" }>, align 8
declare ptr @__olang_scope_of(ptr, ptr) noinline
@.d39 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d40 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d41 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"native" }>, align 8
@.d42 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"interpret" }>, align 8
@.d43 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d44 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
@.d45 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d46 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"--target=" }>, align 8
@.d47 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-S" }>, align 8
@.d48 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"-emit-llvm" }>, align 8
@.d49 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-o" }>, align 8
@.d50 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"-" }>, align 8
@.d51 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-x" }>, align 8
@.d52 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"c" }>, align 8
@.d53 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"-" }>, align 8
@.d54 = private constant <{ i64, [34 x i8] }> <{ i64 0, [34 x i8] c"void olang_target_probe(void) { }\0A" }>, align 8
@olang_2esole_2ecompiler_2ftarget_3aTarget_2e6 = weak hidden constant i1 false
@.d55 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d56 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d57 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d58 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\22" }>, align 8
@.d59 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"\22=\22" }>, align 8
@.d60 = private constant <{ i64, [88 x i8] }> <{ i64 0, [88 x i8] c"define float @f(float %x) {\0A  %b = fptrunc float %x to bfloat\0A  %c = fadd bfloat %b, %b\0A" }>, align 8
@.d61 = private constant <{ i64, [49 x i8] }> <{ i64 0, [49 x i8] c"  %r = fpext bfloat %c to float\0A  ret float %r\0A}\0A" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_209_3e_2e_2d1 = weak hidden constant i1 false
@.d62 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"--target=" }>, align 8
@.d63 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"-fno-crash-diagnostics" }>, align 8
@.d64 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-c" }>, align 8
@.d65 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-x" }>, align 8
@.d66 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"ir" }>, align 8
@.d67 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"-" }>, align 8
@.d68 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-o" }>, align 8
@.d69 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"/dev/null" }>, align 8
@.d70 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"target triple = \22" }>, align 8
@.d71 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"target datalayout = \22" }>, align 8
@.d72 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"attributes #0 = {" }>, align 8
@.d73 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"-p:32" }>, align 8
@.d74 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"-p:16" }>, align 8
@olang_2esole_2ecompiler_2ftarget_3aTarget_2e1 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftarget_3aTarget_2e4 = weak hidden constant i1 false
@.d75 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"target-cpu" }>, align 8
@.d76 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"target-features" }>, align 8
@.d77 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d78 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"aarch64" }>, align 8
@.d79 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"neon" }>, align 8
@.d80 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"avx512f" }>, align 8
@.d81 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"avx" }>, align 8
@.d82 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"fma" }>, align 8
@.d83 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"fma4" }>, align 8
@.d84 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"tune-cpu" }>, align 8
@.d85 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d86 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d87 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c" \22tune-cpu\22=\22" }>, align 8
@.d88 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\22" }>, align 8
@.d89 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d90 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d91 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"vscale_range(" }>, align 8
@.d92 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@olang_2esole_2ecompiler_2ftarget_3aTarget_2e5 = weak hidden constant i1 false
@.d93 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"\22target-cpu\22=\22" }>, align 8
@.d94 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"\22 \22target-features\22=\22" }>, align 8
@.d95 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\22" }>, align 8
@.d96 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c" \22prefer-vector-width\22=\22" }>, align 8
@.d97 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"OLANG_EMULATOR" }>, align 8
@.d98 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d99 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d100 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d101 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_202_3e_2e_2d1 = weak hidden constant i1 false
@.d102 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"qemu-" }>, align 8
@.d103 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"qemu-" }>, align 8
@.d104 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"-static" }>, align 8
@.d105 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d106 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d107 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"/usr/" }>, align 8
@.d108 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"-linux-gnu" }>, align 8
@.d109 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"/usr/" }>, align 8
@.d110 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"-linux-gnu" }>, align 8
@.d111 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d112 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-L" }>, align 8
@.d113 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"-unknown-linux-gnu" }>, align 8
@.d114 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"aarch64" }>, align 8
@.d115 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"native" }>, align 8
@.d116 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"generic" }>, align 8
@.d117 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"generic" }>, align 8
@.d118 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"x86-64" }>, align 8
@.d119 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"x86-64-v2" }>, align 8
@.d120 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"x86-64-v3" }>, align 8
@.d121 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"x86-64-v4" }>, align 8
@.d122 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"native" }>, align 8
@.d123 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"x86-64" }>, align 8
@.d124 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"x86-64-v" }>, align 8
@.d125 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"/proc/cpuinfo" }>, align 8
@.d126 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d127 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"flags" }>, align 8
@.d128 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d129 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d130 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d131 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d132 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"/proc/cpuinfo" }>, align 8
@.d133 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d134 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"model name" }>, align 8
@.d135 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d136 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d137 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d138 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d139 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"OLANG_CACHE" }>, align 8
@.d140 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d141 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d142 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"/probe" }>, align 8
@.d143 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"HOME" }>, align 8
@.d144 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d145 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"/.cache/olang/probe" }>, align 8
@.d146 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d147 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d148 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d149 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d150 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d151 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"olang probe 1\0A" }>, align 8
@.d152 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d153 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d154 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d155 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"input " }>, align 8
@.d156 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d157 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"\0A=====\0A" }>, align 8
@.d158 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"x86_64" }>, align 8
@.d159 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"unknown" }>, align 8
@.d160 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"unsupported" }>, align 8
@.d161 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"ok" }>, align 8
@.d162 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d163 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\00" }>, align 8
@.d164 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d165 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"PATH" }>, align 8
@.d166 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d167 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d168 = private constant <{ i64, [28 x i8] }> <{ i64 0, [28 x i8] c"/usr/local/bin:/usr/bin:/bin" }>, align 8
@.d169 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d170 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d171 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d172 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\00" }>, align 8
@.d173 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d174 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"native" }>, align 8
@.d175 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d176 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d177 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"linux" }>, align 8
@.d178 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d179 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d180 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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
declare i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
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

attributes #0 = { null_pointer_is_valid "target-cpu"="sapphirerapids" "target-features"="+64bit,+adx,+aes,+amx-bf16,+amx-int8,+amx-tile,+avx,+avx2,-avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512fp16,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+cldemote,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+rtm,+sahf,+serialize,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+tsxldtrk,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-complex,-amx-fp16,-avx10.1-256,-avx10.1-512,-avx512er,-avx512pf,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnniint16,-avxvnniint8,-clzero,-cmpccxadd,-enqcmd,-fma4,-hreset,-kl,-lwp,-mwaitx,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rdpru,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-uintr,-usermsr,-waitpkg,-widekl,-xop" "prefer-vector-width"="512" nounwind }
