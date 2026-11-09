source_filename = "compiler_runtime.quick.ll"
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
%"std/prelude/text:LineIter" = type { { i64, ptr }, i64 }
@G_2ecompiler_2fruntime_2eArchs = constant <{ [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fruntime_2eArchs.k1, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fruntime_2eArchs.k2 }>, align 32
@G_2ecompiler_2fruntime_2eArchs.k1 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\78\38\36\5F\36\34" }>, align 8
@G_2ecompiler_2fruntime_2eArchs.k2 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\61\61\72\63\68\36\34" }>, align 8
@G_2ecompiler_2fruntime_2eFactArm = constant <{ [120 x i8] }> <{ [120 x i8] c"\80\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\30\00\00\00\00\00\00\00\58\00\00\00\00\00\00\00\60\00\00\00\00\00\00\00\13\00\00\00\00\00\00\00\50\00\00\00\00\00\00\00\40\00\00\00\00\00\00\00\38\01\00\00\00\00\00\00\98\00\00\00\00\00\00\00\88\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\B8\01\00\00\00\00\00\00\A0\01\00\00\00\00\00\00\B0\01\00\00\00\00\00\00" }>, align 64
@G_2ecompiler_2fruntime_2eFactNames = constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\0A\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fruntime_2eFactNames.k1, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fruntime_2eFactNames.k2, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fruntime_2eFactNames.k3, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fruntime_2eFactNames.k4, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fruntime_2eFactNames.k5, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fruntime_2eFactNames.k6, [8 x i8] c"\18\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fruntime_2eFactNames.k7, [8 x i8] c"\12\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fruntime_2eFactNames.k8, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fruntime_2eFactNames.k9, [8 x i8] c"\0F\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fruntime_2eFactNames.k10, [8 x i8] c"\0F\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fruntime_2eFactNames.k11, [8 x i8] c"\0F\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fruntime_2eFactNames.k12, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fruntime_2eFactNames.k13, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fruntime_2eFactNames.k14, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fruntime_2eFactNames.k15 }>, align 64
@G_2ecompiler_2fruntime_2eFactNames.k1 = internal constant <{ [10 x i8] }> <{ [10 x i8] c"\53\54\41\54\5F\42\59\54\45\53" }>, align 8
@G_2ecompiler_2fruntime_2eFactNames.k2 = internal constant <{ [9 x i8] }> <{ [9 x i8] c"\53\54\41\54\5F\4D\4F\44\45" }>, align 8
@G_2ecompiler_2fruntime_2eFactNames.k3 = internal constant <{ [9 x i8] }> <{ [9 x i8] c"\53\54\41\54\5F\53\49\5A\45" }>, align 8
@G_2ecompiler_2fruntime_2eFactNames.k4 = internal constant <{ [13 x i8] }> <{ [13 x i8] c"\53\54\41\54\5F\4D\54\49\4D\5F\53\45\43" }>, align 8
@G_2ecompiler_2fruntime_2eFactNames.k5 = internal constant <{ [14 x i8] }> <{ [14 x i8] c"\53\54\41\54\5F\4D\54\49\4D\5F\4E\53\45\43" }>, align 8
@G_2ecompiler_2fruntime_2eFactNames.k6 = internal constant <{ [11 x i8] }> <{ [11 x i8] c"\44\49\52\45\4E\54\5F\4E\41\4D\45" }>, align 8
@G_2ecompiler_2fruntime_2eFactNames.k7 = internal constant <{ [24 x i8] }> <{ [24 x i8] c"\53\50\41\57\4E\5F\46\49\4C\45\5F\41\43\54\49\4F\4E\53\5F\42\59\54\45\53" }>, align 8
@G_2ecompiler_2fruntime_2eFactNames.k8 = internal constant <{ [18 x i8] }> <{ [18 x i8] c"\50\54\48\52\45\41\44\5F\41\54\54\52\5F\42\59\54\45\53" }>, align 8
@G_2ecompiler_2fruntime_2eFactNames.k9 = internal constant <{ [13 x i8] }> <{ [13 x i8] c"\4A\4D\50\5F\42\55\46\5F\42\59\54\45\53" }>, align 8
@G_2ecompiler_2fruntime_2eFactNames.k10 = internal constant <{ [15 x i8] }> <{ [15 x i8] c"\53\49\47\41\43\54\49\4F\4E\5F\42\59\54\45\53" }>, align 8
@G_2ecompiler_2fruntime_2eFactNames.k11 = internal constant <{ [15 x i8] }> <{ [15 x i8] c"\53\49\47\41\43\54\49\4F\4E\5F\46\4C\41\47\53" }>, align 8
@G_2ecompiler_2fruntime_2eFactNames.k12 = internal constant <{ [15 x i8] }> <{ [15 x i8] c"\46\46\49\5F\44\45\46\41\55\4C\54\5F\41\42\49" }>, align 8
@G_2ecompiler_2fruntime_2eFactNames.k13 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\55\43\5F\50\43" }>, align 8
@G_2ecompiler_2fruntime_2eFactNames.k14 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\55\43\5F\46\50" }>, align 8
@G_2ecompiler_2fruntime_2eFactNames.k15 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\55\43\5F\53\50" }>, align 8
@G_2ecompiler_2fruntime_2eFactX86 = constant <{ [120 x i8] }> <{ [120 x i8] c"\90\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\30\00\00\00\00\00\00\00\58\00\00\00\00\00\00\00\60\00\00\00\00\00\00\00\13\00\00\00\00\00\00\00\50\00\00\00\00\00\00\00\38\00\00\00\00\00\00\00\C8\00\00\00\00\00\00\00\98\00\00\00\00\00\00\00\88\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\A8\00\00\00\00\00\00\00\78\00\00\00\00\00\00\00\A0\00\00\00\00\00\00\00" }>, align 64
@G_2ecompiler_2fruntime_2eHeaderTbaa = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\74\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fruntime_2eHeaderTbaa.k1 }>, align 8
@G_2ecompiler_2fruntime_2eHeaderTbaa.k1 = internal constant <{ [116 x i8] }> <{ [116 x i8] c"\21\34\39\20\3D\20\21\7B\21\22\73\63\6F\70\65\68\64\72\22\2C\20\21\32\30\2C\20\69\36\34\20\30\7D\0A\21\35\30\20\3D\20\21\7B\21\22\63\68\75\6E\6B\68\64\72\22\2C\20\21\32\30\2C\20\69\36\34\20\30\7D\0A\21\35\39\20\3D\20\21\7B\21\34\39\2C\20\21\34\39\2C\20\69\36\34\20\30\7D\0A\21\36\30\20\3D\20\21\7B\21\35\30\2C\20\21\35\30\2C\20\69\36\34\20\30\7D\0A" }>, align 64
define dso_local { i64, ptr } @compiler_2fruntime_2eDecls(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/text:StringBuilder"
  %l2 = alloca i1
  %l3 = alloca %"std/prelude/text:LineIter"
  %l4 = alloca { i64, ptr }
  %l5 = alloca %"std/prelude/text:StringBuilder"
  %l7 = alloca %"std/prelude/text:LineIter"
  %l8 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca i32
  %l13 = alloca i1
  %l19 = alloca i1
  %l21 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca { i64, ptr }
  %l26 = alloca i64
  %l27 = alloca i64
  %l38 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l5
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l5
  store %"std/prelude/text:StringBuilder" %t2, ptr %l1
  store i1 false, ptr %l2, !tbaa !21
  %t5 = call %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %v0, ptr %v0, { i64, ptr } %a0)
  store %"std/prelude/text:LineIter" %t5, ptr %l7
  br label %bb2
bb2:
  %t6 = load %"std/prelude/text:LineIter", ptr %l7
  store %"std/prelude/text:LineIter" %t6, ptr %l3
  br label %bb3
bb3:
  %t8 = call { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %v0, ptr %v0, ptr %l3)
  %t9 = extractvalue { i32, { i64, ptr } } %t8, 1
  %t10 = extractvalue { i32, { i64, ptr } } %t8, 0
  store i32 %t10, ptr %l11
  %t11 = icmp ne i32 %t10, 0
  br i1 %t11, label %bb5, label %ok.12, !prof !99
ok.12:
  store { i64, ptr } %t9, ptr %l10
  br label %bb4
bb4:
  %t13 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t13, ptr %l8, !tbaa !27
  br label %bb7
bb5:
  %t14 = load i32, ptr %l11, !tbaa !23
  %t15 = ashr i32 %t14, 16
  %t17 = icmp eq i32 %t15, 1
  store i1 %t17, ptr %l13, !tbaa !21
  br label %bb6
bb6:
  br label %bb30
bb7:
  %t18 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t18, ptr %l4, !tbaa !27
  %t19 = load i1, ptr %l2, !tbaa !21
  br i1 %t19, label %bb8, label %bb9
bb8:
  store %olang.scope zeroinitializer, ptr %s3
  %t21 = load { i64, ptr }, ptr %l4, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v0, ptr %l1, { i64, ptr } %t21)
  br label %bb10
bb9:
  %t24 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t26 = call i1 @compiler_2fruntime_2emodulesInline(ptr %v0, { i64, ptr } %t24)
  store i1 %t26, ptr %l21
  br label %bb16
bb10:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 10)
  br label %bb11
bb11:
  %t28 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t30 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s3, { i64, ptr } %t28, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d0, i32 0, i32 1) })
  store i1 %t30, ptr %l19
  br label %bb12
bb12:
  %t31 = load i1, ptr %l19, !tbaa !21
  br i1 %t31, label %bb13, label %bb14
bb13:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb15
bb14:
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s3)
  br label %bb28
bb16:
  %t32 = load i1, ptr %l21, !tbaa !21
  br i1 %t32, label %bb17, label %bb18
bb17:
  store %olang.scope zeroinitializer, ptr %s6
  store ptr %l1, ptr %l22, !tbaa !29
  %t33 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t33, ptr %l23, !tbaa !27
  %t34 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t34, 0
  store i64 %t37, ptr %l26, !tbaa !24
  %t38 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t38, 0
  store i64 %t39, ptr %l27, !tbaa !24
  %t40 = icmp sge i64 7, 0
  br i1 %t40, label %bb19, label %bb20
bb18:
  %t42 = load { i64, ptr }, ptr %l4, !tbaa !27
  call void @compiler_2fruntime_2edeclare(ptr %s0, ptr %v0, ptr %l1, { i64, ptr } %t42)
  br label %bb26
bb19:
  %t45 = load i64, ptr %l26, !tbaa !24
  %t46 = icmp sle i64 7, %t45
  br i1 %t46, label %bb21, label %bb22
bb20:
  call void @__olang_check_failed(ptr @olang_loc_4678f23b07212b71_6204d41da44925a5)
  unreachable
bb21:
  %t48 = load i64, ptr %l26, !tbaa !24
  %t49 = load i64, ptr %l27, !tbaa !24
  %t50 = icmp sle i64 %t48, %t49
  br i1 %t50, label %bb23, label %bb24
bb22:
  call void @__olang_check_failed(ptr @olang_loc_4678f23b07212b71_6204d41da44925a5)
  unreachable
bb23:
  %t52 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !27
  %t54 = load i64, ptr %l26, !tbaa !24
  %t55 = getelementptr i8, ptr %t53, i64 7
  %t56 = sub i64 %t54, 7
  %t57 = insertvalue { i64, ptr } undef, i64 %t56, 0
  %t58 = insertvalue { i64, ptr } %t57, ptr %t55, 1
  %t59 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d1, i32 0, i32 1) }, 1
  %t60 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  %t62 = extractvalue { i64, ptr } %t58, 1
  %t63 = extractvalue { i64, ptr } %t58, 0
  %t64 = add i64 %t60, %t63
  %t65 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t66 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  %t67 = add i64 %t64, %t66
  %t68 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t67)
  call void @olang_textcopy(ptr %t68, ptr %t59, i64 %t60)
  %t69 = getelementptr i8, ptr %t68, i64 %t60
  call void @olang_textcopy(ptr %t69, ptr %t62, i64 %t63)
  %t70 = getelementptr i8, ptr %t69, i64 %t63
  call void @olang_textcopy(ptr %t70, ptr %t65, i64 %t66)
  %t71 = insertvalue { i64, ptr } undef, i64 %t67, 0
  %t72 = insertvalue { i64, ptr } %t71, ptr %t68, 1
  %t74 = extractvalue { i64, ptr } %t72, 0
  %t75 = extractvalue { i64, ptr } %t72, 1
  %t76 = mul i64 %t74, 1
  %t77 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t76)
  call void @llvm.memcpy.p0.p0.i64(ptr %t77, ptr %t75, i64 %t76, i1 false)
  %t78 = insertvalue { i64, ptr } undef, i64 %t74, 0
  %t79 = insertvalue { i64, ptr } %t78, ptr %t77, 1
  %t80 = load ptr, ptr %l22, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s6, ptr %t80, { i64, ptr } %t79)
  br label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_4678f23b07212b71_6204d41da44925a5)
  unreachable
bb25:
  store i1 true, ptr %l2, !tbaa !21
  call void @__olang_scope_close(ptr %s6)
  br label %bb27
bb26:
  br label %bb27
bb27:
  br label %bb28
bb28:
  br label %bb29
bb29:
  br label %bb3
bb30:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 10)
  br label %bb31
bb31:
  %t84 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l1)
  store { i64, ptr } %t84, ptr %l38
  br label %bb32
bb32:
  call void @__olang_scope_close(ptr %s0)
  %t85 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t85, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i32, { i64, ptr } } @compiler_2fruntime_2eDyncallIr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, i1 %a3, i1 %a4, i1 %a5, i1 %a6) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l3 = alloca i1
  %l5 = alloca i1
  %l6 = alloca i1
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l16 = alloca i32
  %l18 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l24 = alloca i32
  %l26 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  store { i64, ptr } %a1, ptr %l1
  store i1 %a3, ptr %l3
  store i1 %a5, ptr %l5
  store i1 %a6, ptr %l6
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t2 = load i1, ptr %l3, !tbaa !21
  %t3 = load i1, ptr %l5, !tbaa !21
  %t4 = load i1, ptr %l6, !tbaa !21
  %t9 = call { i32, { i64, ptr } } @compiler_2fruntime_2eText(ptr %v1, ptr %s0, { i64, ptr } %t1, i1 %t2, i1 false, i1 %t3, i1 %t4)
  %t10 = extractvalue { i32, { i64, ptr } } %t9, 1
  %t11 = extractvalue { i32, { i64, ptr } } %t9, 0
  store i32 %t11, ptr %l16
  %t12 = icmp ne i32 %t11, 0
  br i1 %t12, label %bb2, label %ok.13, !prof !99
ok.13:
  store { i64, ptr } %t10, ptr %l15
  br label %bb1
bb1:
  %t14 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t14, ptr %l10, !tbaa !27
  br label %bb3
bb2:
  %t15 = load i32, ptr %l16, !tbaa !23
  %t16 = lshr i32 %t15, 16
  %t17 = and i32 %t15, 65535
  %t18 = icmp eq i32 %t16, 1
  %t19 = select i1 %t18, i32 1, i32 0
  %t20 = icmp eq i32 %t15, 0
  %t21 = shl i32 %t19, 16
  %t22 = or i32 %t21, %t17
  %t23 = select i1 %t20, i32 0, i32 %t22
  call void @__olang_scope_close(ptr %s0)
  %t25 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t23, 0
  store { i32, { i64, ptr } } %t25, ptr %rv
  br label %ret
bb3:
  %t26 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t26, ptr %l7, !tbaa !27
  %t27 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t28 = load i1, ptr %l3, !tbaa !21
  %t29 = load i1, ptr %l5, !tbaa !21
  %t30 = load i1, ptr %l6, !tbaa !21
  %t35 = call { i32, { i64, ptr } } @compiler_2fruntime_2eText(ptr %v1, ptr %s0, { i64, ptr } %t27, i1 %t28, i1 true, i1 %t29, i1 %t30)
  %t36 = extractvalue { i32, { i64, ptr } } %t35, 1
  %t37 = extractvalue { i32, { i64, ptr } } %t35, 0
  store i32 %t37, ptr %l24
  %t38 = icmp ne i32 %t37, 0
  br i1 %t38, label %bb5, label %ok.39, !prof !99
ok.39:
  store { i64, ptr } %t36, ptr %l23
  br label %bb4
bb4:
  %t40 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t40, ptr %l18, !tbaa !27
  br label %bb6
bb5:
  %t41 = load i32, ptr %l24, !tbaa !23
  %t42 = lshr i32 %t41, 16
  %t43 = and i32 %t41, 65535
  %t44 = icmp eq i32 %t42, 1
  %t45 = select i1 %t44, i32 1, i32 0
  %t46 = icmp eq i32 %t41, 0
  %t47 = shl i32 %t45, 16
  %t48 = or i32 %t47, %t43
  %t49 = select i1 %t46, i32 0, i32 %t48
  call void @__olang_scope_close(ptr %s0)
  %t51 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t49, 0
  store { i32, { i64, ptr } } %t51, ptr %rv
  br label %ret
bb6:
  %t52 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t52, ptr %l8, !tbaa !27
  store { i64, ptr } %a0, ptr %l26, !tbaa !27
  %t54 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t56 = call { i64, ptr } @compiler_2fruntime_2eDecls(ptr %s0, ptr %s0, { i64, ptr } %t54)
  store { i64, ptr } %t56, ptr %l28
  br label %bb7
bb7:
  %t57 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t58 = load { i64, ptr }, ptr @G_2ecompiler_2fruntime_2eHeaderTbaa, !tbaa !27
  %t59 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t60 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  %t61 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t62 = extractvalue { i64, ptr } %t61, 1
  %t63 = extractvalue { i64, ptr } %t61, 0
  %t64 = add i64 %t60, %t63
  %t65 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t66 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  %t67 = add i64 %t64, %t66
  %t68 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t69 = extractvalue { i64, ptr } %t68, 1
  %t70 = extractvalue { i64, ptr } %t68, 0
  %t71 = add i64 %t67, %t70
  %t73 = extractvalue { i64, ptr } %t57, 1
  %t74 = extractvalue { i64, ptr } %t57, 0
  %t75 = add i64 %t71, %t74
  %t76 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t77 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t78 = add i64 %t75, %t77
  %t80 = extractvalue { i64, ptr } %t58, 1
  %t81 = extractvalue { i64, ptr } %t58, 0
  %t82 = add i64 %t78, %t81
  %t83 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t82)
  call void @olang_textcopy(ptr %t83, ptr %t59, i64 %t60)
  %t84 = getelementptr i8, ptr %t83, i64 %t60
  call void @olang_textcopy(ptr %t84, ptr %t62, i64 %t63)
  %t85 = getelementptr i8, ptr %t84, i64 %t63
  call void @olang_textcopy(ptr %t85, ptr %t65, i64 %t66)
  %t86 = getelementptr i8, ptr %t85, i64 %t66
  call void @olang_textcopy(ptr %t86, ptr %t69, i64 %t70)
  %t87 = getelementptr i8, ptr %t86, i64 %t70
  call void @olang_textcopy(ptr %t87, ptr %t73, i64 %t74)
  %t88 = getelementptr i8, ptr %t87, i64 %t74
  call void @olang_textcopy(ptr %t88, ptr %t76, i64 %t77)
  %t89 = getelementptr i8, ptr %t88, i64 %t77
  call void @olang_textcopy(ptr %t89, ptr %t80, i64 %t81)
  %t90 = insertvalue { i64, ptr } undef, i64 %t82, 0
  %t91 = insertvalue { i64, ptr } %t90, ptr %t83, 1
  %t99 = call { i64, ptr } @compiler_2fruntime_2eWithAttributes(ptr %s0, ptr %v2, ptr %v3, { i64, ptr } %t91, { i64, ptr } %a2, i1 %a4)
  store { i64, ptr } %t99, ptr %l35
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s0)
  %t100 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t101 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t100, 1
  store { i32, { i64, ptr } } %t101, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i32, { i64, ptr } } @compiler_2fruntime_2eFill(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1, i1 %a2, i1 %a3, i1 %a4) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca %"std/prelude/text:StringBuilder"
  %l10 = alloca i64
  %l11 = alloca i1
  %l12 = alloca i1
  %l13 = alloca i1
  %l14 = alloca i64
  %l15 = alloca %"std/prelude/text:LineIter"
  %l16 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca { i64, ptr }
  %l20 = alloca i1
  %l21 = alloca i64
  %l24 = alloca { i64, ptr }
  %l25 = alloca i64
  %l26 = alloca { i64, ptr }
  %l27 = alloca i64
  %l29 = alloca { i64, ptr }
  %l32 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l35 = alloca i32
  %l37 = alloca i1
  %l43 = alloca i32
  %l45 = alloca i1
  %l52 = alloca i64
  %l53 = alloca %"std/prelude/text:StringBuilder"
  %l55 = alloca %"std/prelude/text:LineIter"
  %l56 = alloca { i64, ptr }
  %l58 = alloca { i64, ptr }
  %l59 = alloca i32
  %l61 = alloca i1
  %l66 = alloca i1
  %l68 = alloca i1
  %l69 = alloca { i64, ptr }
  %l72 = alloca i64
  %l73 = alloca i64
  %l79 = alloca i1
  %l81 = alloca i1
  %l82 = alloca { i64, ptr }
  %l85 = alloca i64
  %l86 = alloca i64
  %l92 = alloca i64
  %l98 = alloca i32
  %l100 = alloca { i64, ptr }
  %l103 = alloca i64
  %l104 = alloca i64
  %l109 = alloca { i64, ptr }
  %l111 = alloca i1
  %l113 = alloca { i64, ptr }
  %l116 = alloca i64
  %l117 = alloca i64
  %l122 = alloca i64
  %l124 = alloca i64
  %l125 = alloca i32
  %l128 = alloca { i64, ptr }
  %l129 = alloca i64
  %l130 = alloca i64
  %l136 = alloca i1
  %l138 = alloca i1
  %l143 = alloca i1
  %l147 = alloca i32
  %l150 = alloca i1
  %l151 = alloca i1
  %l155 = alloca i1
  %l164 = alloca i1
  %l168 = alloca i32
  %l178 = alloca i32
  %l183 = alloca { i64, ptr }
  %l184 = alloca i1
  %l189 = alloca i64
  %l191 = alloca i64
  %l192 = alloca i32
  %l197 = alloca ptr
  %l198 = alloca { i64, ptr }
  %l199 = alloca i64
  %l200 = alloca i64
  %l205 = alloca { i64, ptr }
  %l207 = alloca i64
  %l210 = alloca i64
  %l211 = alloca i64
  %l216 = alloca i64
  %l218 = alloca i64
  %l219 = alloca i32
  %l224 = alloca i32
  %l226 = alloca i64
  %l227 = alloca { i64, ptr }
  %l228 = alloca i64
  %l229 = alloca i64
  %l235 = alloca i64
  %l236 = alloca i32
  %l238 = alloca i1
  %l241 = alloca i32
  %l247 = alloca { i64, ptr }
  %l249 = alloca i64
  %l252 = alloca i64
  %l253 = alloca i64
  %l262 = alloca i32
  %l265 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %s22 = alloca %olang.scope
  %s23 = alloca %olang.scope
  %s25 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call { i64, ptr } @compiler_2fload_2eStdDir(ptr %s0)
  store { i64, ptr } %t1, ptr %l29
  br label %bb1
bb1:
  %t3 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t4 = extractvalue { i64, ptr } %t3, 1
  %t5 = extractvalue { i64, ptr } %t3, 0
  %t6 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t7 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t8 = add i64 %t5, %t7
  %t10 = extractvalue { i64, ptr } %a0, 1
  %t11 = extractvalue { i64, ptr } %a0, 0
  %t12 = add i64 %t8, %t11
  %t13 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t12)
  call void @olang_textcopy(ptr %t13, ptr %t4, i64 %t5)
  %t14 = getelementptr i8, ptr %t13, i64 %t5
  call void @olang_textcopy(ptr %t14, ptr %t6, i64 %t7)
  %t15 = getelementptr i8, ptr %t14, i64 %t7
  call void @olang_textcopy(ptr %t15, ptr %t10, i64 %t11)
  %t16 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t17 = insertvalue { i64, ptr } %t16, ptr %t13, 1
  store { i64, ptr } %t17, ptr %l5, !tbaa !27
  %t19 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t21 = call { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %s0, ptr %s0, { i64, ptr } %t19)
  %t22 = extractvalue { i32, { i64, ptr } } %t21, 1
  %t23 = extractvalue { i32, { i64, ptr } } %t21, 0
  store i32 %t23, ptr %l35
  %t24 = icmp ne i32 %t23, 0
  br i1 %t24, label %bb3, label %ok.25, !prof !99
ok.25:
  store { i64, ptr } %t22, ptr %l34
  br label %bb2
bb2:
  %t26 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t26, ptr %l32, !tbaa !27
  br label %bb13
bb3:
  %t27 = load i32, ptr %l35, !tbaa !23
  %t28 = ashr i32 %t27, 16
  %t30 = icmp eq i32 %t28, 1
  store i1 %t30, ptr %l37, !tbaa !21
  %t31 = load i32, ptr %l35, !tbaa !23
  %t32 = ashr i32 %t31, 16
  %t34 = icmp eq i32 %t32, 1
  br i1 %t34, label %bb4, label %bb5
bb4:
  call void @__olang_errpay_pop()
  br label %bb5
bb5:
  br label %bb6
bb6:
  store %olang.scope zeroinitializer, ptr %s2
  %t36 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t37 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t38 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  %t40 = extractvalue { i64, ptr } %t36, 1
  %t41 = extractvalue { i64, ptr } %t36, 0
  %t42 = add i64 %t38, %t41
  %t43 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t44 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  %t45 = add i64 %t42, %t44
  %t46 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t45)
  call void @olang_textcopy(ptr %t46, ptr %t37, i64 %t38)
  %t47 = getelementptr i8, ptr %t46, i64 %t38
  call void @olang_textcopy(ptr %t47, ptr %t40, i64 %t41)
  %t48 = getelementptr i8, ptr %t47, i64 %t41
  call void @olang_textcopy(ptr %t48, ptr %t43, i64 %t44)
  %t49 = insertvalue { i64, ptr } undef, i64 %t45, 0
  %t50 = insertvalue { i64, ptr } %t49, ptr %t46, 1
  %t52 = extractvalue { i64, ptr } %t50, 0
  %t53 = extractvalue { i64, ptr } %t50, 1
  %t54 = mul i64 %t52, 1
  %t55 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t54)
  call void @llvm.memcpy.p0.p0.i64(ptr %t55, ptr %t53, i64 %t54, i1 false)
  %t56 = insertvalue { i64, ptr } undef, i64 %t52, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t55, 1
  %t59 = call i32 @std_2fio_2ePrintErrln(ptr %s2, { i64, ptr } %t57)
  store i32 %t59, ptr %l43
  %t60 = icmp ne i32 %t59, 0
  br i1 %t60, label %bb8, label %ok.61, !prof !99
ok.61:
  br label %bb7
bb7:
  br label %bb12
bb8:
  %t62 = load i32, ptr %l43, !tbaa !23
  %t63 = ashr i32 %t62, 16
  %t65 = icmp eq i32 %t63, 1
  store i1 %t65, ptr %l45, !tbaa !21
  %t66 = load i32, ptr %l43, !tbaa !23
  %t67 = ashr i32 %t66, 16
  %t69 = icmp eq i32 %t67, 1
  br i1 %t69, label %bb9, label %bb10
bb9:
  call void @__olang_errpay_pop()
  br label %bb10
bb10:
  br label %bb11
bb11:
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t72 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t72, ptr %rv
  br label %ret
bb13:
  %t73 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t73, ptr %l7, !tbaa !27
  %t77 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t79 = call i64 @compiler_2fruntime_2earchRow(ptr %v1, { i64, ptr } %t77)
  store i64 %t79, ptr %l52
  br label %bb14
bb14:
  %t80 = load i64, ptr %l52, !tbaa !24
  store i64 %t80, ptr %l8, !tbaa !24
  %t81 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t81, ptr %l53
  br label %bb15
bb15:
  %t82 = load %"std/prelude/text:StringBuilder", ptr %l53
  store %"std/prelude/text:StringBuilder" %t82, ptr %l9
  store i64 0, ptr %l10, !tbaa !24
  store i1 false, ptr %l11, !tbaa !21
  store i1 false, ptr %l12, !tbaa !21
  store i1 true, ptr %l13, !tbaa !21
  store i64 0, ptr %l14, !tbaa !24
  %t83 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t85 = call %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %s0, ptr %s0, { i64, ptr } %t83)
  store %"std/prelude/text:LineIter" %t85, ptr %l55
  br label %bb16
bb16:
  %t86 = load %"std/prelude/text:LineIter", ptr %l55
  store %"std/prelude/text:LineIter" %t86, ptr %l15
  br label %bb17
bb17:
  store %olang.scope zeroinitializer, ptr %s6
  %t88 = call { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %s0, ptr %s0, ptr %l15)
  %t89 = extractvalue { i32, { i64, ptr } } %t88, 1
  %t90 = extractvalue { i32, { i64, ptr } } %t88, 0
  store i32 %t90, ptr %l59
  %t91 = icmp ne i32 %t90, 0
  br i1 %t91, label %bb19, label %ok.92, !prof !99
ok.92:
  store { i64, ptr } %t89, ptr %l58
  br label %bb18
bb18:
  %t93 = load { i64, ptr }, ptr %l58, !tbaa !27
  store { i64, ptr } %t93, ptr %l56, !tbaa !27
  br label %bb21
bb19:
  %t94 = load i32, ptr %l59, !tbaa !23
  %t95 = ashr i32 %t94, 16
  %t97 = icmp eq i32 %t95, 1
  store i1 %t97, ptr %l61, !tbaa !21
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s6)
  br label %bb191
bb21:
  %t98 = load { i64, ptr }, ptr %l56, !tbaa !27
  store { i64, ptr } %t98, ptr %l16, !tbaa !27
  %t99 = load i64, ptr %l10, !tbaa !24
  %t101 = add i64 %t99, 1
  store i64 %t101, ptr %l10, !tbaa !24
  %t103 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t103, ptr %l17, !tbaa !27
  br i1 %a3, label %bb22, label %bb23
bb22:
  %t107 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t109 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s6, { i64, ptr } %t107, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d9, i32 0, i32 1) })
  store i1 %t109, ptr %l68
  br label %bb24
bb23:
  store i1 false, ptr %l66, !tbaa !21
  br label %bb25
bb24:
  %t110 = load i1, ptr %l68, !tbaa !21
  store i1 %t110, ptr %l66, !tbaa !21
  br label %bb25
bb25:
  %t111 = load i1, ptr %l66, !tbaa !21
  br i1 %t111, label %bb26, label %bb27
bb26:
  %t112 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t112, ptr %l69, !tbaa !27
  %t113 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t116 = extractvalue { i64, ptr } %t113, 0
  store i64 %t116, ptr %l72, !tbaa !24
  %t117 = load { i64, ptr }, ptr %l69, !tbaa !27
  %t118 = extractvalue { i64, ptr } %t117, 0
  store i64 %t118, ptr %l73, !tbaa !24
  %t119 = icmp sge i64 8, 0
  br i1 %t119, label %bb28, label %bb29
bb27:
  br label %bb34
bb28:
  %t121 = load i64, ptr %l72, !tbaa !24
  %t122 = icmp sle i64 8, %t121
  br i1 %t122, label %bb30, label %bb31
bb29:
  call void @__olang_check_failed(ptr @olang_loc_6e9edb7ac3cc3a13_be559f1d61e4dd6f)
  unreachable
bb30:
  %t124 = load i64, ptr %l72, !tbaa !24
  %t125 = load i64, ptr %l73, !tbaa !24
  %t126 = icmp sle i64 %t124, %t125
  br i1 %t126, label %bb32, label %bb33
bb31:
  call void @__olang_check_failed(ptr @olang_loc_6e9edb7ac3cc3a13_be559f1d61e4dd6f)
  unreachable
bb32:
  %t128 = getelementptr { i64, ptr }, ptr %l69, i32 0, i32 1
  %t129 = load ptr, ptr %t128, !tbaa !27
  %t130 = load i64, ptr %l72, !tbaa !24
  %t131 = getelementptr i8, ptr %t129, i64 8
  %t132 = sub i64 %t130, 8
  %t133 = insertvalue { i64, ptr } undef, i64 %t132, 0
  %t134 = insertvalue { i64, ptr } %t133, ptr %t131, 1
  store { i64, ptr } %t134, ptr %l17, !tbaa !27
  br label %bb34
bb33:
  call void @__olang_check_failed(ptr @olang_loc_6e9edb7ac3cc3a13_be559f1d61e4dd6f)
  unreachable
bb34:
  br i1 %a4, label %bb35, label %bb36
bb35:
  %t138 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t140 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s6, { i64, ptr } %t138, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d10, i32 0, i32 1) })
  store i1 %t140, ptr %l81
  br label %bb37
bb36:
  store i1 false, ptr %l79, !tbaa !21
  br label %bb38
bb37:
  %t141 = load i1, ptr %l81, !tbaa !21
  store i1 %t141, ptr %l79, !tbaa !21
  br label %bb38
bb38:
  %t142 = load i1, ptr %l79, !tbaa !21
  br i1 %t142, label %bb39, label %bb40
bb39:
  %t143 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t143, ptr %l82, !tbaa !27
  %t144 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t147 = extractvalue { i64, ptr } %t144, 0
  store i64 %t147, ptr %l85, !tbaa !24
  %t148 = load { i64, ptr }, ptr %l82, !tbaa !27
  %t149 = extractvalue { i64, ptr } %t148, 0
  store i64 %t149, ptr %l86, !tbaa !24
  %t150 = icmp sge i64 9, 0
  br i1 %t150, label %bb41, label %bb42
bb40:
  br label %bb47
bb41:
  %t152 = load i64, ptr %l85, !tbaa !24
  %t153 = icmp sle i64 9, %t152
  br i1 %t153, label %bb43, label %bb44
bb42:
  call void @__olang_check_failed(ptr @olang_loc_6e8de55f6b48d5b6_301f420811d0f7f2)
  unreachable
bb43:
  %t155 = load i64, ptr %l85, !tbaa !24
  %t156 = load i64, ptr %l86, !tbaa !24
  %t157 = icmp sle i64 %t155, %t156
  br i1 %t157, label %bb45, label %bb46
bb44:
  call void @__olang_check_failed(ptr @olang_loc_6e8de55f6b48d5b6_301f420811d0f7f2)
  unreachable
bb45:
  %t159 = getelementptr { i64, ptr }, ptr %l82, i32 0, i32 1
  %t160 = load ptr, ptr %t159, !tbaa !27
  %t161 = load i64, ptr %l85, !tbaa !24
  %t162 = getelementptr i8, ptr %t160, i64 9
  %t163 = sub i64 %t161, 9
  %t164 = insertvalue { i64, ptr } undef, i64 %t163, 0
  %t165 = insertvalue { i64, ptr } %t164, ptr %t162, 1
  store { i64, ptr } %t165, ptr %l17, !tbaa !27
  br label %bb47
bb46:
  call void @__olang_check_failed(ptr @olang_loc_6e8de55f6b48d5b6_301f420811d0f7f2)
  unreachable
bb47:
  %t167 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t169 = call i64 @compiler_2fruntime_2edirective(ptr %s0, { i64, ptr } %t167)
  store i64 %t169, ptr %l92
  br label %bb48
bb48:
  %t170 = load i64, ptr %l92, !tbaa !24
  store i64 %t170, ptr %l18, !tbaa !24
  %t171 = load i64, ptr %l18, !tbaa !24
  %t173 = icmp eq i64 %t171, 0
  br i1 %t173, label %bb49, label %bb50
bb49:
  store %olang.scope zeroinitializer, ptr %s9
  %t175 = load i1, ptr %l11, !tbaa !21
  br i1 %t175, label %bb51, label %bb52
bb50:
  br label %bb103
bb51:
  store %olang.scope zeroinitializer, ptr %s10
  %t177 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t178 = load i64, ptr %l10, !tbaa !24
  %t181 = call i32 @compiler_2fruntime_2emalformed(ptr %s0, ptr %s10, { i64, ptr } %t177, i64 %t178, { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d11, i32 0, i32 1) })
  store i32 %t181, ptr %l98
  %t182 = icmp ne i32 %t181, 0
  br i1 %t182, label %bb54, label %ok.183, !prof !99
ok.183:
  br label %bb53
bb52:
  br label %bb56
bb53:
  br label %bb55
bb54:
  %t184 = load i32, ptr %l98, !tbaa !23
  %t185 = lshr i32 %t184, 16
  %t186 = and i32 %t184, 65535
  %t187 = icmp eq i32 %t185, 1
  %t188 = select i1 %t187, i32 1, i32 0
  %t189 = icmp eq i32 %t184, 0
  %t190 = shl i32 %t188, 16
  %t191 = or i32 %t190, %t186
  %t192 = select i1 %t189, i32 0, i32 %t191
  call void @__olang_scope_close(ptr %s10)
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  %t194 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t192, 0
  store { i32, { i64, ptr } } %t194, ptr %rv
  br label %ret
bb55:
  call void @__olang_scope_close(ptr %s10)
  br label %bb56
bb56:
  %t195 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t195, ptr %l100, !tbaa !27
  %t196 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t199 = extractvalue { i64, ptr } %t196, 0
  store i64 %t199, ptr %l103, !tbaa !24
  %t200 = load { i64, ptr }, ptr %l100, !tbaa !27
  %t201 = extractvalue { i64, ptr } %t200, 0
  store i64 %t201, ptr %l104, !tbaa !24
  %t202 = icmp sge i64 6, 0
  br i1 %t202, label %bb57, label %bb58
bb57:
  %t204 = load i64, ptr %l103, !tbaa !24
  %t205 = icmp sle i64 6, %t204
  br i1 %t205, label %bb59, label %bb60
bb58:
  call void @__olang_check_failed(ptr @olang_loc_37c6cc80b337eb95_eeee9a64b49e7a71)
  unreachable
bb59:
  %t207 = load i64, ptr %l103, !tbaa !24
  %t208 = load i64, ptr %l104, !tbaa !24
  %t209 = icmp sle i64 %t207, %t208
  br i1 %t209, label %bb61, label %bb62
bb60:
  call void @__olang_check_failed(ptr @olang_loc_37c6cc80b337eb95_eeee9a64b49e7a71)
  unreachable
bb61:
  %t211 = getelementptr { i64, ptr }, ptr %l100, i32 0, i32 1
  %t212 = load ptr, ptr %t211, !tbaa !27
  %t213 = load i64, ptr %l103, !tbaa !24
  %t214 = getelementptr i8, ptr %t212, i64 6
  %t215 = sub i64 %t213, 6
  %t216 = insertvalue { i64, ptr } undef, i64 %t215, 0
  %t217 = insertvalue { i64, ptr } %t216, ptr %t214, 1
  %t219 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrimStart(ptr %s0, ptr %s0, { i64, ptr } %t217)
  store { i64, ptr } %t219, ptr %l109
  br label %bb63
bb62:
  call void @__olang_check_failed(ptr @olang_loc_37c6cc80b337eb95_eeee9a64b49e7a71)
  unreachable
bb63:
  %t220 = load { i64, ptr }, ptr %l109, !tbaa !27
  store { i64, ptr } %t220, ptr %l19, !tbaa !27
  %t221 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t223 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s9, { i64, ptr } %t221, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) })
  store i1 %t223, ptr %l111
  br label %bb64
bb64:
  %t224 = load i1, ptr %l111, !tbaa !21
  store i1 %t224, ptr %l20, !tbaa !21
  %t225 = load i1, ptr %l20, !tbaa !21
  br i1 %t225, label %bb65, label %bb66
bb65:
  %t227 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t227, ptr %l113, !tbaa !27
  %t228 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t231 = extractvalue { i64, ptr } %t228, 0
  store i64 %t231, ptr %l116, !tbaa !24
  %t232 = load { i64, ptr }, ptr %l113, !tbaa !27
  %t233 = extractvalue { i64, ptr } %t232, 0
  store i64 %t233, ptr %l117, !tbaa !24
  %t234 = icmp sge i64 1, 0
  br i1 %t234, label %bb67, label %bb68
bb66:
  br label %bb73
bb67:
  %t236 = load i64, ptr %l116, !tbaa !24
  %t237 = icmp sle i64 1, %t236
  br i1 %t237, label %bb69, label %bb70
bb68:
  call void @__olang_check_failed(ptr @olang_loc_5fea096add1795b8_392858cd9c11d804)
  unreachable
bb69:
  %t239 = load i64, ptr %l116, !tbaa !24
  %t240 = load i64, ptr %l117, !tbaa !24
  %t241 = icmp sle i64 %t239, %t240
  br i1 %t241, label %bb71, label %bb72
bb70:
  call void @__olang_check_failed(ptr @olang_loc_5fea096add1795b8_392858cd9c11d804)
  unreachable
bb71:
  %t243 = getelementptr { i64, ptr }, ptr %l113, i32 0, i32 1
  %t244 = load ptr, ptr %t243, !tbaa !27
  %t245 = load i64, ptr %l116, !tbaa !24
  %t246 = getelementptr i8, ptr %t244, i64 1
  %t247 = sub i64 %t245, 1
  %t248 = insertvalue { i64, ptr } undef, i64 %t247, 0
  %t249 = insertvalue { i64, ptr } %t248, ptr %t246, 1
  store { i64, ptr } %t249, ptr %l19, !tbaa !27
  br label %bb73
bb72:
  call void @__olang_check_failed(ptr @olang_loc_5fea096add1795b8_392858cd9c11d804)
  unreachable
bb73:
  %t251 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t253 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %s0, ptr %s9, { i64, ptr } %t251, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d13, i32 0, i32 1) })
  %t254 = extractvalue { i32, i64 } %t253, 1
  %t255 = extractvalue { i32, i64 } %t253, 0
  store i32 %t255, ptr %l125
  %t256 = icmp ne i32 %t255, 0
  br i1 %t256, label %bb75, label %ok.257, !prof !99
ok.257:
  store i64 %t254, ptr %l124
  br label %bb74
bb74:
  %t258 = load i64, ptr %l124, !tbaa !24
  store i64 %t258, ptr %l122, !tbaa !24
  br label %bb77
bb75:
  br label %bb76
bb76:
  store i64 -1, ptr %l122, !tbaa !24
  br label %bb77
bb77:
  %t259 = load i64, ptr %l122, !tbaa !24
  store i64 %t259, ptr %l21, !tbaa !24
  %t260 = load i64, ptr %l21, !tbaa !24
  %t262 = icmp sge i64 %t260, 0
  br i1 %t262, label %bb78, label %bb79
bb78:
  %t264 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t264, ptr %l128, !tbaa !27
  %t265 = load i64, ptr %l21, !tbaa !24
  store i64 %t265, ptr %l129, !tbaa !24
  %t266 = load { i64, ptr }, ptr %l128, !tbaa !27
  %t267 = extractvalue { i64, ptr } %t266, 0
  store i64 %t267, ptr %l130, !tbaa !24
  %t268 = icmp sge i64 0, 0
  br i1 %t268, label %bb80, label %bb81
bb79:
  br label %bb86
bb80:
  %t270 = load i64, ptr %l129, !tbaa !24
  %t271 = icmp sle i64 0, %t270
  br i1 %t271, label %bb82, label %bb83
bb81:
  call void @__olang_check_failed(ptr @olang_loc_b0282b0bffd0a537_97cbf26a9ab19d0b)
  unreachable
bb82:
  %t273 = load i64, ptr %l129, !tbaa !24
  %t274 = load i64, ptr %l130, !tbaa !24
  %t275 = icmp sle i64 %t273, %t274
  br i1 %t275, label %bb84, label %bb85
bb83:
  call void @__olang_check_failed(ptr @olang_loc_b0282b0bffd0a537_97cbf26a9ab19d0b)
  unreachable
bb84:
  %t277 = getelementptr { i64, ptr }, ptr %l128, i32 0, i32 1
  %t278 = load ptr, ptr %t277, !tbaa !27
  %t279 = load i64, ptr %l129, !tbaa !24
  %t280 = getelementptr i8, ptr %t278, i64 0
  %t281 = sub i64 %t279, 0
  %t282 = insertvalue { i64, ptr } undef, i64 %t281, 0
  %t283 = insertvalue { i64, ptr } %t282, ptr %t280, 1
  store { i64, ptr } %t283, ptr %l19, !tbaa !27
  br label %bb86
bb85:
  call void @__olang_check_failed(ptr @olang_loc_b0282b0bffd0a537_97cbf26a9ab19d0b)
  unreachable
bb86:
  %t285 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t287 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s9, { i64, ptr } %t285, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d14, i32 0, i32 1) })
  store i1 %t287, ptr %l136
  br label %bb87
bb87:
  %t288 = load i1, ptr %l136, !tbaa !21
  %t289 = xor i1 %t288, true
  br i1 %t289, label %bb88, label %bb89
bb88:
  %t291 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t294 = insertvalue { i64, ptr } undef, i64 2, 0
  %t295 = insertvalue { i64, ptr } %t294, ptr @G_2ecompiler_2fruntime_2eArchs, 1
  %t297 = load ptr, ptr @__olang_prog_scope
  %t300 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eHas_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %t297, ptr %s0, { i64, ptr } %t295, { i64, ptr } %t291)
  store i1 %t300, ptr %l143
  br label %bb90
bb89:
  store i1 false, ptr %l138, !tbaa !21
  br label %bb91
bb90:
  %t301 = load i1, ptr %l143, !tbaa !21
  %t302 = xor i1 %t301, true
  store i1 %t302, ptr %l138, !tbaa !21
  br label %bb91
bb91:
  %t304 = load i1, ptr %l138, !tbaa !21
  br i1 %t304, label %bb92, label %bb93
bb92:
  store %olang.scope zeroinitializer, ptr %s13
  %t305 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t306 = load i64, ptr %l10, !tbaa !24
  %t309 = call i32 @compiler_2fruntime_2emalformed(ptr %s0, ptr %s13, { i64, ptr } %t305, i64 %t306, { i64, ptr } { i64 53, ptr getelementptr inbounds (<{ i64, [53 x i8] }>, ptr @.d15, i32 0, i32 1) })
  store i32 %t309, ptr %l147
  %t310 = icmp ne i32 %t309, 0
  br i1 %t310, label %bb95, label %ok.311, !prof !99
ok.311:
  br label %bb94
bb93:
  br label %bb97
bb94:
  br label %bb96
bb95:
  %t312 = load i32, ptr %l147, !tbaa !23
  %t313 = lshr i32 %t312, 16
  %t314 = and i32 %t312, 65535
  %t315 = icmp eq i32 %t313, 1
  %t316 = select i1 %t315, i32 1, i32 0
  %t317 = icmp eq i32 %t312, 0
  %t318 = shl i32 %t316, 16
  %t319 = or i32 %t318, %t314
  %t320 = select i1 %t317, i32 0, i32 %t319
  call void @__olang_scope_close(ptr %s13)
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  %t322 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t320, 0
  store { i32, { i64, ptr } } %t322, ptr %rv
  br label %ret
bb96:
  call void @__olang_scope_close(ptr %s13)
  br label %bb97
bb97:
  %t323 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t325 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s9, { i64, ptr } %t323, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d16, i32 0, i32 1) })
  store i1 %t325, ptr %l150
  br label %bb98
bb98:
  %t326 = load i1, ptr %l150, !tbaa !21
  br i1 %t326, label %bb99, label %bb100
bb99:
  store i1 %a2, ptr %l151, !tbaa !21
  br label %bb102
bb100:
  %t329 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t330 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t333 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %v1, { i64, ptr } %t329, { i64, ptr } %t330)
  store i1 %t333, ptr %l155
  br label %bb101
bb101:
  %t334 = load i1, ptr %l155, !tbaa !21
  store i1 %t334, ptr %l151, !tbaa !21
  br label %bb102
bb102:
  %t335 = load i1, ptr %l151, !tbaa !21
  %t337 = load i1, ptr %l20, !tbaa !21
  %t340 = icmp ne i1 %t335, %t337
  store i1 %t340, ptr %l13, !tbaa !21
  store i1 true, ptr %l11, !tbaa !21
  store i1 false, ptr %l12, !tbaa !21
  %t342 = load i64, ptr %l10, !tbaa !24
  store i64 %t342, ptr %l14, !tbaa !24
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s6)
  br label %bb190
bb103:
  %t344 = load i64, ptr %l18, !tbaa !24
  %t346 = icmp eq i64 %t344, 1
  br i1 %t346, label %bb104, label %bb105
bb104:
  %t348 = load i1, ptr %l11, !tbaa !21
  %t350 = xor i1 %t348, true
  br i1 %t350, label %bb106, label %bb107
bb105:
  br label %bb115
bb106:
  store i1 true, ptr %l164, !tbaa !21
  br label %bb108
bb107:
  %t352 = load i1, ptr %l12, !tbaa !21
  store i1 %t352, ptr %l164, !tbaa !21
  br label %bb108
bb108:
  %t354 = load i1, ptr %l164, !tbaa !21
  br i1 %t354, label %bb109, label %bb110
bb109:
  store %olang.scope zeroinitializer, ptr %s15
  %t355 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t356 = load i64, ptr %l10, !tbaa !24
  %t359 = call i32 @compiler_2fruntime_2emalformed(ptr %s0, ptr %s15, { i64, ptr } %t355, i64 %t356, { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d17, i32 0, i32 1) })
  store i32 %t359, ptr %l168
  %t360 = icmp ne i32 %t359, 0
  br i1 %t360, label %bb112, label %ok.361, !prof !99
ok.361:
  br label %bb111
bb110:
  br label %bb114
bb111:
  br label %bb113
bb112:
  %t362 = load i32, ptr %l168, !tbaa !23
  %t363 = lshr i32 %t362, 16
  %t364 = and i32 %t362, 65535
  %t365 = icmp eq i32 %t363, 1
  %t366 = select i1 %t365, i32 1, i32 0
  %t367 = icmp eq i32 %t362, 0
  %t368 = shl i32 %t366, 16
  %t369 = or i32 %t368, %t364
  %t370 = select i1 %t367, i32 0, i32 %t369
  call void @__olang_scope_close(ptr %s15)
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  %t372 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t370, 0
  store { i32, { i64, ptr } } %t372, ptr %rv
  br label %ret
bb113:
  call void @__olang_scope_close(ptr %s15)
  br label %bb114
bb114:
  %t373 = load i1, ptr %l13, !tbaa !21
  %t375 = xor i1 %t373, true
  store i1 %t375, ptr %l13, !tbaa !21
  store i1 true, ptr %l12, !tbaa !21
  call void @__olang_scope_close(ptr %s6)
  br label %bb190
bb115:
  %t377 = load i64, ptr %l18, !tbaa !24
  %t379 = icmp eq i64 %t377, 2
  br i1 %t379, label %bb116, label %bb117
bb116:
  %t381 = load i1, ptr %l11, !tbaa !21
  %t383 = xor i1 %t381, true
  br i1 %t383, label %bb118, label %bb119
bb117:
  br label %bb124
bb118:
  store %olang.scope zeroinitializer, ptr %s17
  %t385 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t386 = load i64, ptr %l10, !tbaa !24
  %t389 = call i32 @compiler_2fruntime_2emalformed(ptr %s0, ptr %s17, { i64, ptr } %t385, i64 %t386, { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d18, i32 0, i32 1) })
  store i32 %t389, ptr %l178
  %t390 = icmp ne i32 %t389, 0
  br i1 %t390, label %bb121, label %ok.391, !prof !99
ok.391:
  br label %bb120
bb119:
  br label %bb123
bb120:
  br label %bb122
bb121:
  %t392 = load i32, ptr %l178, !tbaa !23
  %t393 = lshr i32 %t392, 16
  %t394 = and i32 %t392, 65535
  %t395 = icmp eq i32 %t393, 1
  %t396 = select i1 %t395, i32 1, i32 0
  %t397 = icmp eq i32 %t392, 0
  %t398 = shl i32 %t396, 16
  %t399 = or i32 %t398, %t394
  %t400 = select i1 %t397, i32 0, i32 %t399
  call void @__olang_scope_close(ptr %s17)
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  %t402 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t400, 0
  store { i32, { i64, ptr } } %t402, ptr %rv
  br label %ret
bb122:
  call void @__olang_scope_close(ptr %s17)
  br label %bb123
bb123:
  store i1 false, ptr %l11, !tbaa !21
  store i1 true, ptr %l13, !tbaa !21
  call void @__olang_scope_close(ptr %s6)
  br label %bb190
bb124:
  %t403 = load i1, ptr %l13, !tbaa !21
  %t405 = xor i1 %t403, true
  br i1 %t405, label %bb125, label %bb126
bb125:
  call void @__olang_scope_close(ptr %s6)
  br label %bb190
bb126:
  br label %bb127
bb127:
  %t407 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t409 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrimStart(ptr %s0, ptr %s0, { i64, ptr } %t407)
  store { i64, ptr } %t409, ptr %l183
  br label %bb128
bb128:
  %t410 = load { i64, ptr }, ptr %l183, !tbaa !27
  %t411 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s6, { i64, ptr } %t410, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) })
  store i1 %t411, ptr %l184
  br label %bb129
bb129:
  %t412 = load i1, ptr %l184, !tbaa !21
  br i1 %t412, label %bb130, label %bb131
bb130:
  %t413 = load { i64, ptr }, ptr %l17, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l9, { i64, ptr } %t413)
  br label %bb132
bb131:
  br label %bb134
bb132:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l9, i8 10)
  br label %bb133
bb133:
  call void @__olang_scope_close(ptr %s6)
  br label %bb190
bb134:
  %t417 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t417, ptr %l24, !tbaa !27
  br label %bb135
bb135:
  store %olang.scope zeroinitializer, ptr %s20
  %t419 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t421 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %s0, ptr %s20, { i64, ptr } %t419, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d20, i32 0, i32 1) })
  %t422 = extractvalue { i32, i64 } %t421, 1
  %t423 = extractvalue { i32, i64 } %t421, 0
  store i32 %t423, ptr %l192
  %t424 = icmp ne i32 %t423, 0
  br i1 %t424, label %bb137, label %ok.425, !prof !99
ok.425:
  store i64 %t422, ptr %l191
  br label %bb136
bb136:
  %t426 = load i64, ptr %l191, !tbaa !24
  store i64 %t426, ptr %l189, !tbaa !24
  br label %bb139
bb137:
  br label %bb138
bb138:
  store i64 -1, ptr %l189, !tbaa !24
  br label %bb139
bb139:
  %t427 = load i64, ptr %l189, !tbaa !24
  store i64 %t427, ptr %l25, !tbaa !24
  %t428 = load i64, ptr %l25, !tbaa !24
  %t430 = icmp slt i64 %t428, 0
  br i1 %t430, label %bb140, label %bb141
bb140:
  %t432 = load { i64, ptr }, ptr %l24, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l9, { i64, ptr } %t432)
  br label %bb142
bb141:
  br label %bb143
bb142:
  call void @__olang_scope_close(ptr %s20)
  br label %bb188
bb143:
  store ptr %l9, ptr %l197, !tbaa !29
  %t435 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t435, ptr %l198, !tbaa !27
  %t436 = load i64, ptr %l25, !tbaa !24
  store i64 %t436, ptr %l199, !tbaa !24
  %t437 = load { i64, ptr }, ptr %l198, !tbaa !27
  %t438 = extractvalue { i64, ptr } %t437, 0
  store i64 %t438, ptr %l200, !tbaa !24
  %t439 = icmp sge i64 0, 0
  br i1 %t439, label %bb144, label %bb145
bb144:
  %t441 = load i64, ptr %l199, !tbaa !24
  %t442 = icmp sle i64 0, %t441
  br i1 %t442, label %bb146, label %bb147
bb145:
  call void @__olang_check_failed(ptr @olang_loc_70ff22b8cac083da_c5bb23930b7510e)
  unreachable
bb146:
  %t444 = load i64, ptr %l199, !tbaa !24
  %t445 = load i64, ptr %l200, !tbaa !24
  %t446 = icmp sle i64 %t444, %t445
  br i1 %t446, label %bb148, label %bb149
bb147:
  call void @__olang_check_failed(ptr @olang_loc_70ff22b8cac083da_c5bb23930b7510e)
  unreachable
bb148:
  %t448 = getelementptr { i64, ptr }, ptr %l198, i32 0, i32 1
  %t449 = load ptr, ptr %t448, !tbaa !27
  %t450 = load i64, ptr %l199, !tbaa !24
  %t451 = getelementptr i8, ptr %t449, i64 0
  %t452 = sub i64 %t450, 0
  %t453 = insertvalue { i64, ptr } undef, i64 %t452, 0
  %t454 = insertvalue { i64, ptr } %t453, ptr %t451, 1
  %t455 = load ptr, ptr %l197, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t455, { i64, ptr } %t454)
  br label %bb150
bb149:
  call void @__olang_check_failed(ptr @olang_loc_70ff22b8cac083da_c5bb23930b7510e)
  unreachable
bb150:
  %t457 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t457, ptr %l205, !tbaa !27
  %t458 = load i64, ptr %l25, !tbaa !24
  %t460 = add i64 %t458, 2
  store i64 %t460, ptr %l207, !tbaa !24
  %t461 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t464 = extractvalue { i64, ptr } %t461, 0
  store i64 %t464, ptr %l210, !tbaa !24
  %t465 = load { i64, ptr }, ptr %l205, !tbaa !27
  %t466 = extractvalue { i64, ptr } %t465, 0
  store i64 %t466, ptr %l211, !tbaa !24
  %t467 = load i64, ptr %l207, !tbaa !24
  %t468 = icmp sge i64 %t467, 0
  br i1 %t468, label %bb151, label %bb152
bb151:
  %t470 = load i64, ptr %l207, !tbaa !24
  %t471 = load i64, ptr %l210, !tbaa !24
  %t472 = icmp sle i64 %t470, %t471
  br i1 %t472, label %bb153, label %bb154
bb152:
  call void @__olang_check_failed(ptr @olang_loc_fb2acf0450ba6c79_597b56b8350f036d)
  unreachable
bb153:
  %t474 = load i64, ptr %l210, !tbaa !24
  %t475 = load i64, ptr %l211, !tbaa !24
  %t476 = icmp sle i64 %t474, %t475
  br i1 %t476, label %bb155, label %bb156
bb154:
  call void @__olang_check_failed(ptr @olang_loc_fb2acf0450ba6c79_597b56b8350f036d)
  unreachable
bb155:
  %t478 = getelementptr { i64, ptr }, ptr %l205, i32 0, i32 1
  %t479 = load ptr, ptr %t478, !tbaa !27
  %t480 = load i64, ptr %l207, !tbaa !24
  %t481 = load i64, ptr %l210, !tbaa !24
  %t482 = getelementptr i8, ptr %t479, i64 %t480
  %t483 = sub i64 %t481, %t480
  %t484 = insertvalue { i64, ptr } undef, i64 %t483, 0
  %t485 = insertvalue { i64, ptr } %t484, ptr %t482, 1
  store { i64, ptr } %t485, ptr %l26, !tbaa !27
  %t487 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t489 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %s0, ptr %s20, { i64, ptr } %t487, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d21, i32 0, i32 1) })
  %t490 = extractvalue { i32, i64 } %t489, 1
  %t491 = extractvalue { i32, i64 } %t489, 0
  store i32 %t491, ptr %l219
  %t492 = icmp ne i32 %t491, 0
  br i1 %t492, label %bb158, label %ok.493, !prof !99
ok.493:
  store i64 %t490, ptr %l218
  br label %bb157
bb156:
  call void @__olang_check_failed(ptr @olang_loc_fb2acf0450ba6c79_597b56b8350f036d)
  unreachable
bb157:
  %t494 = load i64, ptr %l218, !tbaa !24
  store i64 %t494, ptr %l216, !tbaa !24
  br label %bb160
bb158:
  br label %bb159
bb159:
  store i64 -1, ptr %l216, !tbaa !24
  br label %bb160
bb160:
  %t495 = load i64, ptr %l216, !tbaa !24
  store i64 %t495, ptr %l27, !tbaa !24
  %t496 = load i64, ptr %l27, !tbaa !24
  %t498 = icmp slt i64 %t496, 0
  br i1 %t498, label %bb161, label %bb162
bb161:
  store %olang.scope zeroinitializer, ptr %s22
  %t500 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t501 = load i64, ptr %l10, !tbaa !24
  %t504 = call i32 @compiler_2fruntime_2emalformed(ptr %s0, ptr %s22, { i64, ptr } %t500, i64 %t501, { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d22, i32 0, i32 1) })
  store i32 %t504, ptr %l224
  %t505 = icmp ne i32 %t504, 0
  br i1 %t505, label %bb164, label %ok.506, !prof !99
ok.506:
  br label %bb163
bb162:
  br label %bb166
bb163:
  br label %bb165
bb164:
  %t507 = load i32, ptr %l224, !tbaa !23
  %t508 = lshr i32 %t507, 16
  %t509 = and i32 %t507, 65535
  %t510 = icmp eq i32 %t508, 1
  %t511 = select i1 %t510, i32 1, i32 0
  %t512 = icmp eq i32 %t507, 0
  %t513 = shl i32 %t511, 16
  %t514 = or i32 %t513, %t509
  %t515 = select i1 %t512, i32 0, i32 %t514
  call void @__olang_scope_close(ptr %s22)
  call void @__olang_scope_close(ptr %s20)
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  %t517 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t515, 0
  store { i32, { i64, ptr } } %t517, ptr %rv
  br label %ret
bb165:
  call void @__olang_scope_close(ptr %s22)
  br label %bb166
bb166:
  %t518 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t518, ptr %l227, !tbaa !27
  %t519 = load i64, ptr %l27, !tbaa !24
  store i64 %t519, ptr %l228, !tbaa !24
  %t520 = load { i64, ptr }, ptr %l227, !tbaa !27
  %t521 = extractvalue { i64, ptr } %t520, 0
  store i64 %t521, ptr %l229, !tbaa !24
  %t522 = icmp sge i64 0, 0
  br i1 %t522, label %bb167, label %bb168
bb167:
  %t524 = load i64, ptr %l228, !tbaa !24
  %t525 = icmp sle i64 0, %t524
  br i1 %t525, label %bb169, label %bb170
bb168:
  call void @__olang_check_failed(ptr @olang_loc_4e5c01328741d84c_96bd53a062766590)
  unreachable
bb169:
  %t527 = load i64, ptr %l228, !tbaa !24
  %t528 = load i64, ptr %l229, !tbaa !24
  %t529 = icmp sle i64 %t527, %t528
  br i1 %t529, label %bb171, label %bb172
bb170:
  call void @__olang_check_failed(ptr @olang_loc_4e5c01328741d84c_96bd53a062766590)
  unreachable
bb171:
  %t531 = getelementptr { i64, ptr }, ptr %l227, i32 0, i32 1
  %t532 = load ptr, ptr %t531, !tbaa !27
  %t533 = load i64, ptr %l228, !tbaa !24
  %t534 = getelementptr i8, ptr %t532, i64 0
  %t535 = sub i64 %t533, 0
  %t536 = insertvalue { i64, ptr } undef, i64 %t535, 0
  %t537 = insertvalue { i64, ptr } %t536, ptr %t534, 1
  %t538 = load i64, ptr %l8, !tbaa !24
  %t541 = call { i32, i64 } @compiler_2fruntime_2efact(ptr %s0, { i64, ptr } %t537, i64 %t538)
  %t542 = extractvalue { i32, i64 } %t541, 1
  %t543 = extractvalue { i32, i64 } %t541, 0
  store i32 %t543, ptr %l236
  %t544 = icmp ne i32 %t543, 0
  br i1 %t544, label %bb174, label %ok.545, !prof !99
ok.545:
  store i64 %t542, ptr %l235
  br label %bb173
bb172:
  call void @__olang_check_failed(ptr @olang_loc_4e5c01328741d84c_96bd53a062766590)
  unreachable
bb173:
  %t546 = load i64, ptr %l235, !tbaa !24
  store i64 %t546, ptr %l226, !tbaa !24
  br label %bb179
bb174:
  %t547 = load i32, ptr %l236, !tbaa !23
  %t548 = ashr i32 %t547, 16
  %t550 = icmp eq i32 %t548, 1
  store i1 %t550, ptr %l238, !tbaa !21
  br label %bb175
bb175:
  store %olang.scope zeroinitializer, ptr %s23
  %t551 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t552 = load i64, ptr %l10, !tbaa !24
  %t555 = call i32 @compiler_2fruntime_2emalformed(ptr %s0, ptr %s23, { i64, ptr } %t551, i64 %t552, { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d23, i32 0, i32 1) })
  store i32 %t555, ptr %l241
  %t556 = icmp ne i32 %t555, 0
  br i1 %t556, label %bb177, label %ok.557, !prof !99
ok.557:
  br label %bb176
bb176:
  br label %bb178
bb177:
  %t558 = load i32, ptr %l241, !tbaa !23
  %t559 = lshr i32 %t558, 16
  %t560 = and i32 %t558, 65535
  %t561 = icmp eq i32 %t559, 1
  %t562 = select i1 %t561, i32 1, i32 0
  %t563 = icmp eq i32 %t558, 0
  %t564 = shl i32 %t562, 16
  %t565 = or i32 %t564, %t560
  %t566 = select i1 %t563, i32 0, i32 %t565
  call void @__olang_scope_close(ptr %s23)
  call void @__olang_scope_close(ptr %s20)
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  %t568 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t566, 0
  store { i32, { i64, ptr } } %t568, ptr %rv
  br label %ret
bb178:
  call void @__olang_check_failed(ptr @olang_loc_c5a935a141e6de44_d4317e5b19ef6ea0)
  unreachable
bb179:
  %t569 = load i64, ptr %l226, !tbaa !24
  %t572 = call i64 @__olang_fmt_i64(ptr null, i64 %t569)
  %t573 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t572)
  %t574 = call i64 @__olang_fmt_i64(ptr %t573, i64 %t569)
  %t575 = insertvalue { i64, ptr } undef, i64 %t572, 0
  %t576 = insertvalue { i64, ptr } %t575, ptr %t573, 1
  %t578 = extractvalue { i64, ptr } %t576, 0
  %t579 = extractvalue { i64, ptr } %t576, 1
  %t580 = mul i64 %t578, 1
  %t581 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t580)
  call void @llvm.memcpy.p0.p0.i64(ptr %t581, ptr %t579, i64 %t580, i1 false)
  %t582 = insertvalue { i64, ptr } undef, i64 %t578, 0
  %t583 = insertvalue { i64, ptr } %t582, ptr %t581, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s20, ptr %l9, { i64, ptr } %t583)
  br label %bb180
bb180:
  %t586 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t586, ptr %l247, !tbaa !27
  %t587 = load i64, ptr %l27, !tbaa !24
  %t589 = add i64 %t587, 2
  store i64 %t589, ptr %l249, !tbaa !24
  %t590 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t593 = extractvalue { i64, ptr } %t590, 0
  store i64 %t593, ptr %l252, !tbaa !24
  %t594 = load { i64, ptr }, ptr %l247, !tbaa !27
  %t595 = extractvalue { i64, ptr } %t594, 0
  store i64 %t595, ptr %l253, !tbaa !24
  %t596 = load i64, ptr %l249, !tbaa !24
  %t597 = icmp sge i64 %t596, 0
  br i1 %t597, label %bb181, label %bb182
bb181:
  %t599 = load i64, ptr %l249, !tbaa !24
  %t600 = load i64, ptr %l252, !tbaa !24
  %t601 = icmp sle i64 %t599, %t600
  br i1 %t601, label %bb183, label %bb184
bb182:
  call void @__olang_check_failed(ptr @olang_loc_6b7f8dd3ec23cfae_1ccbdaa919c4683a)
  unreachable
bb183:
  %t603 = load i64, ptr %l252, !tbaa !24
  %t604 = load i64, ptr %l253, !tbaa !24
  %t605 = icmp sle i64 %t603, %t604
  br i1 %t605, label %bb185, label %bb186
bb184:
  call void @__olang_check_failed(ptr @olang_loc_6b7f8dd3ec23cfae_1ccbdaa919c4683a)
  unreachable
bb185:
  %t607 = getelementptr { i64, ptr }, ptr %l247, i32 0, i32 1
  %t608 = load ptr, ptr %t607, !tbaa !27
  %t609 = load i64, ptr %l249, !tbaa !24
  %t610 = load i64, ptr %l252, !tbaa !24
  %t611 = getelementptr i8, ptr %t608, i64 %t609
  %t612 = sub i64 %t610, %t609
  %t613 = insertvalue { i64, ptr } undef, i64 %t612, 0
  %t614 = insertvalue { i64, ptr } %t613, ptr %t611, 1
  store { i64, ptr } %t614, ptr %l24, !tbaa !27
  call void @__olang_scope_close(ptr %s20)
  br label %bb187
bb186:
  call void @__olang_check_failed(ptr @olang_loc_6b7f8dd3ec23cfae_1ccbdaa919c4683a)
  unreachable
bb187:
  br label %bb135
bb188:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l9, i8 10)
  br label %bb189
bb189:
  call void @__olang_scope_close(ptr %s6)
  br label %bb190
bb190:
  br label %bb17
bb191:
  %t617 = load i1, ptr %l11, !tbaa !21
  br i1 %t617, label %bb192, label %bb193
bb192:
  store %olang.scope zeroinitializer, ptr %s25
  %t619 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t620 = load i64, ptr %l14, !tbaa !24
  %t623 = call i32 @compiler_2fruntime_2emalformed(ptr %s0, ptr %s25, { i64, ptr } %t619, i64 %t620, { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d24, i32 0, i32 1) })
  store i32 %t623, ptr %l262
  %t624 = icmp ne i32 %t623, 0
  br i1 %t624, label %bb195, label %ok.625, !prof !99
ok.625:
  br label %bb194
bb193:
  br label %bb197
bb194:
  br label %bb196
bb195:
  %t626 = load i32, ptr %l262, !tbaa !23
  %t627 = lshr i32 %t626, 16
  %t628 = and i32 %t626, 65535
  %t629 = icmp eq i32 %t627, 1
  %t630 = select i1 %t629, i32 1, i32 0
  %t631 = icmp eq i32 %t626, 0
  %t632 = shl i32 %t630, 16
  %t633 = or i32 %t632, %t628
  %t634 = select i1 %t631, i32 0, i32 %t633
  call void @__olang_scope_close(ptr %s25)
  call void @__olang_scope_close(ptr %s0)
  %t636 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t634, 0
  store { i32, { i64, ptr } } %t636, ptr %rv
  br label %ret
bb196:
  call void @__olang_scope_close(ptr %s25)
  br label %bb197
bb197:
  %t638 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v2, ptr %l9)
  store { i64, ptr } %t638, ptr %l265
  br label %bb198
bb198:
  call void @__olang_scope_close(ptr %s0)
  %t639 = load { i64, ptr }, ptr %l265, !tbaa !27
  %t640 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t639, 1
  store { i32, { i64, ptr } } %t640, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i32, { i64, ptr } } @compiler_2fruntime_2eIr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, i1 %a3, i1 %a4, i1 %a5, i1 %a6) #0 {
entry:
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l14 = alloca i32
  %l16 = alloca i64
  %l24 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t9 = call { i32, { i64, ptr } } @compiler_2fruntime_2eText(ptr %v1, ptr %s0, { i64, ptr } %a1, i1 %a3, i1 false, i1 %a5, i1 %a6)
  %t10 = extractvalue { i32, { i64, ptr } } %t9, 1
  %t11 = extractvalue { i32, { i64, ptr } } %t9, 0
  store i32 %t11, ptr %l14
  %t12 = icmp ne i32 %t11, 0
  br i1 %t12, label %bb2, label %ok.13, !prof !99
ok.13:
  store { i64, ptr } %t10, ptr %l13
  br label %bb1
bb1:
  %t14 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t14, ptr %l8, !tbaa !27
  br label %bb3
bb2:
  %t15 = load i32, ptr %l14, !tbaa !23
  %t16 = lshr i32 %t15, 16
  %t17 = and i32 %t15, 65535
  %t18 = icmp eq i32 %t16, 1
  %t19 = select i1 %t18, i32 1, i32 0
  %t20 = icmp eq i32 %t15, 0
  %t21 = shl i32 %t19, 16
  %t22 = or i32 %t21, %t17
  %t23 = select i1 %t20, i32 0, i32 %t22
  call void @__olang_scope_close(ptr %s0)
  %t25 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t23, 0
  store { i32, { i64, ptr } } %t25, ptr %rv
  br label %ret
bb3:
  %t26 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t26, ptr %l7, !tbaa !27
  %t27 = ptrtoint ptr %v3 to i64
  store i64 %t27, ptr %l16, !tbaa !24
  %t28 = load i1, ptr @olang_2esole_2estd_2fprelude_2ftext_3aLineIter_2e0
  br i1 %t28, label %bb4, label %bb5
bb4:
  %t30 = call ptr @__olang_region_make(ptr %v3)
  %t31 = ptrtoint ptr %t30 to i64
  store i64 %t31, ptr %l16, !tbaa !24
  br label %bb5
bb5:
  %t33 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t34 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t35 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d25, i32 0, i32 1) }, 0
  %t37 = extractvalue { i64, ptr } %a0, 1
  %t38 = extractvalue { i64, ptr } %a0, 0
  %t39 = add i64 %t35, %t38
  %t40 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t41 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  %t42 = add i64 %t39, %t41
  %t44 = extractvalue { i64, ptr } %t33, 1
  %t45 = extractvalue { i64, ptr } %t33, 0
  %t46 = add i64 %t42, %t45
  %t47 = load i64, ptr %l16
  %t48 = inttoptr i64 %t47 to ptr
  %t49 = call ptr @__olang_scope_alloc(ptr %t48, i64 %t46)
  call void @olang_textcopy(ptr %t49, ptr %t34, i64 %t35)
  %t50 = getelementptr i8, ptr %t49, i64 %t35
  call void @olang_textcopy(ptr %t50, ptr %t37, i64 %t38)
  %t51 = getelementptr i8, ptr %t50, i64 %t38
  call void @olang_textcopy(ptr %t51, ptr %t40, i64 %t41)
  %t52 = getelementptr i8, ptr %t51, i64 %t41
  call void @olang_textcopy(ptr %t52, ptr %t44, i64 %t45)
  %t53 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t54 = insertvalue { i64, ptr } %t53, ptr %t49, 1
  %t56 = load i64, ptr %l16
  %t57 = inttoptr i64 %t56 to ptr
  %t58 = extractvalue { i64, ptr } %t54, 0
  %t59 = extractvalue { i64, ptr } %t54, 1
  %t60 = mul i64 %t58, 1
  %t61 = call ptr @__olang_scope_alloc(ptr %t57, i64 %t60)
  call void @llvm.memcpy.p0.p0.i64(ptr %t61, ptr %t59, i64 %t60, i1 false)
  %t62 = insertvalue { i64, ptr } undef, i64 %t58, 0
  %t63 = insertvalue { i64, ptr } %t62, ptr %t61, 1
  %t69 = call { i64, ptr } @compiler_2fruntime_2eWithAttributes(ptr %v3, ptr %v2, ptr %v3, { i64, ptr } %t63, { i64, ptr } %a2, i1 %a4)
  store { i64, ptr } %t69, ptr %l24
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s0)
  %t70 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t71 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t70, 1
  store { i32, { i64, ptr } } %t71, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i32, { i64, ptr } } @compiler_2fruntime_2eText(ptr %v0, ptr %v1, { i64, ptr } %a0, i1 %a1, i1 %a2, i1 %a3, i1 %a4) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i1
  %l3 = alloca i1
  %l4 = alloca i1
  %lp5 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca i32
  %l15 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l21 = alloca i32
  %l24 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l30 = alloca { i64, ptr }
  %l31 = alloca i32
  %l33 = alloca { i64, ptr }
  %l35 = alloca i64
  %l38 = alloca { i64, ptr }
  %l39 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l45 = alloca i32
  %l47 = alloca { i64, ptr }
  %l49 = alloca i64
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  store { i64, ptr } %a0, ptr %l0
  store i1 %a1, ptr %l1
  store i1 %a3, ptr %l3
  store i1 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  br i1 %a2, label %bb1, label %bb2
bb1:
  %t3 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t4 = load i1, ptr %l1, !tbaa !21
  %t5 = load i1, ptr %l3, !tbaa !21
  %t6 = load i1, ptr %l4, !tbaa !21
  %t11 = call { i32, { i64, ptr } } @compiler_2fruntime_2eFill(ptr %v1, ptr %v0, ptr %v1, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d27, i32 0, i32 1) }, { i64, ptr } %t3, i1 %t4, i1 %t5, i1 %t6)
  %t12 = extractvalue { i32, { i64, ptr } } %t11, 1
  %t13 = extractvalue { i32, { i64, ptr } } %t11, 0
  store i32 %t13, ptr %l13
  %t14 = icmp ne i32 %t13, 0
  br i1 %t14, label %bb4, label %ok.15, !prof !99
ok.15:
  store { i64, ptr } %t12, ptr %l12
  br label %bb3
bb2:
  br label %bb6
bb3:
  %t16 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t16, ptr %l7, !tbaa !27
  br label %bb5
bb4:
  %t17 = load i32, ptr %l13, !tbaa !23
  %t18 = lshr i32 %t17, 16
  %t19 = and i32 %t17, 65535
  %t20 = icmp eq i32 %t18, 1
  %t21 = select i1 %t20, i32 1, i32 0
  %t22 = icmp eq i32 %t17, 0
  %t23 = shl i32 %t21, 16
  %t24 = or i32 %t23, %t19
  %t25 = select i1 %t22, i32 0, i32 %t24
  %t27 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t25, 0
  store { i32, { i64, ptr } } %t27, ptr %rv
  br label %ret
bb5:
  %t28 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t29 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t28, 1
  store { i32, { i64, ptr } } %t29, ptr %rv
  br label %ret
bb6:
  %t30 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t31 = load i1, ptr %l1, !tbaa !21
  %t32 = load i1, ptr %l3, !tbaa !21
  %t33 = load i1, ptr %l4, !tbaa !21
  %t38 = call { i32, { i64, ptr } } @compiler_2fruntime_2eFill(ptr %v1, ptr %v0, ptr %v1, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d28, i32 0, i32 1) }, { i64, ptr } %t30, i1 %t31, i1 %t32, i1 %t33)
  %t39 = extractvalue { i32, { i64, ptr } } %t38, 1
  %t40 = extractvalue { i32, { i64, ptr } } %t38, 0
  store i32 %t40, ptr %l21
  %t41 = icmp ne i32 %t40, 0
  br i1 %t41, label %bb8, label %ok.42, !prof !99
ok.42:
  store { i64, ptr } %t39, ptr %l20
  br label %bb7
bb7:
  %t43 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t43, ptr %l15, !tbaa !27
  br label %bb9
bb8:
  %t44 = load i32, ptr %l21, !tbaa !23
  %t45 = lshr i32 %t44, 16
  %t46 = and i32 %t44, 65535
  %t47 = icmp eq i32 %t45, 1
  %t48 = select i1 %t47, i32 1, i32 0
  %t49 = icmp eq i32 %t44, 0
  %t50 = shl i32 %t48, 16
  %t51 = or i32 %t50, %t46
  %t52 = select i1 %t49, i32 0, i32 %t51
  %t54 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t52, 0
  store { i32, { i64, ptr } } %t54, ptr %rv
  br label %ret
bb9:
  %t55 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t55, ptr %lp5
  %t56 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t57 = load ptr, ptr %lp5
  store { i64, ptr } %t56, ptr %t57, !tbaa !27
  %t58 = load i1, ptr %l1, !tbaa !21
  br i1 %t58, label %bb10, label %bb11
bb10:
  store %olang.scope zeroinitializer, ptr %s2
  %t60 = load ptr, ptr %lp5
  %t61 = load { i64, ptr }, ptr %t60, !tbaa !27
  store { i64, ptr } %t61, ptr %l24, !tbaa !27
  %t62 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t63 = load i1, ptr %l1, !tbaa !21
  %t64 = load i1, ptr %l3, !tbaa !21
  %t65 = load i1, ptr %l4, !tbaa !21
  %t70 = call { i32, { i64, ptr } } @compiler_2fruntime_2eFill(ptr %s2, ptr %v0, ptr %s2, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d29, i32 0, i32 1) }, { i64, ptr } %t62, i1 %t63, i1 %t64, i1 %t65)
  %t71 = extractvalue { i32, { i64, ptr } } %t70, 1
  %t72 = extractvalue { i32, { i64, ptr } } %t70, 0
  store i32 %t72, ptr %l31
  %t73 = icmp ne i32 %t72, 0
  br i1 %t73, label %bb13, label %ok.74, !prof !99
ok.74:
  store { i64, ptr } %t71, ptr %l30
  br label %bb12
bb11:
  br label %bb18
bb12:
  %t75 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t75, ptr %l25, !tbaa !27
  br label %bb14
bb13:
  %t76 = load i32, ptr %l31, !tbaa !23
  %t77 = lshr i32 %t76, 16
  %t78 = and i32 %t76, 65535
  %t79 = icmp eq i32 %t77, 1
  %t80 = select i1 %t79, i32 1, i32 0
  %t81 = icmp eq i32 %t76, 0
  %t82 = shl i32 %t80, 16
  %t83 = or i32 %t82, %t78
  %t84 = select i1 %t81, i32 0, i32 %t83
  call void @__olang_scope_close(ptr %s2)
  %t86 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t84, 0
  store { i32, { i64, ptr } } %t86, ptr %rv
  br label %ret
bb14:
  %t87 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t88 = extractvalue { i64, ptr } %t87, 1
  %t89 = extractvalue { i64, ptr } %t87, 0
  %t90 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 1
  %t91 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 0
  %t92 = add i64 %t89, %t91
  %t93 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t94 = extractvalue { i64, ptr } %t93, 1
  %t95 = extractvalue { i64, ptr } %t93, 0
  %t96 = add i64 %t92, %t95
  %t97 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t96)
  call void @olang_textcopy(ptr %t97, ptr %t88, i64 %t89)
  %t98 = getelementptr i8, ptr %t97, i64 %t89
  call void @olang_textcopy(ptr %t98, ptr %t90, i64 %t91)
  %t99 = getelementptr i8, ptr %t98, i64 %t91
  call void @olang_textcopy(ptr %t99, ptr %t94, i64 %t95)
  %t100 = insertvalue { i64, ptr } undef, i64 %t96, 0
  %t101 = insertvalue { i64, ptr } %t100, ptr %t97, 1
  store { i64, ptr } %t101, ptr %l33, !tbaa !27
  %t102 = load ptr, ptr %lp5
  %t103 = load { i64, ptr }, ptr %t102, !tbaa !27
  %t104 = extractvalue { i64, ptr } %t103, 0
  %t105 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t106 = extractvalue { i64, ptr } %t105, 0
  store i64 %t106, ptr %l35, !tbaa !24
  %t108 = load i64, ptr %l35, !tbaa !24
  %t109 = icmp eq i64 %t104, %t108
  br i1 %t109, label %bb15, label %bb16
bb15:
  %t111 = load ptr, ptr %lp5
  %t112 = getelementptr { i64, ptr }, ptr %t111, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !27
  %t114 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t115 = load ptr, ptr %t114, !tbaa !27
  %t116 = load i64, ptr %l35, !tbaa !24
  %t117 = mul i64 %t116, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t113, ptr %t115, i64 %t117, i1 false)
  br label %bb17
bb16:
  %t118 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t119 = load ptr, ptr %lp5
  store { i64, ptr } %t118, ptr %t119, !tbaa !27
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s2)
  br label %bb18
bb18:
  %t120 = load i1, ptr %l3, !tbaa !21
  br i1 %t120, label %bb19, label %bb20
bb19:
  store %olang.scope zeroinitializer, ptr %s4
  %t122 = load ptr, ptr %lp5
  %t123 = load { i64, ptr }, ptr %t122, !tbaa !27
  store { i64, ptr } %t123, ptr %l38, !tbaa !27
  %t124 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t125 = load i1, ptr %l1, !tbaa !21
  %t126 = load i1, ptr %l3, !tbaa !21
  %t127 = load i1, ptr %l4, !tbaa !21
  %t132 = call { i32, { i64, ptr } } @compiler_2fruntime_2eFill(ptr %s4, ptr %v0, ptr %s4, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d31, i32 0, i32 1) }, { i64, ptr } %t124, i1 %t125, i1 %t126, i1 %t127)
  %t133 = extractvalue { i32, { i64, ptr } } %t132, 1
  %t134 = extractvalue { i32, { i64, ptr } } %t132, 0
  store i32 %t134, ptr %l45
  %t135 = icmp ne i32 %t134, 0
  br i1 %t135, label %bb22, label %ok.136, !prof !99
ok.136:
  store { i64, ptr } %t133, ptr %l44
  br label %bb21
bb20:
  br label %bb27
bb21:
  %t137 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t137, ptr %l39, !tbaa !27
  br label %bb23
bb22:
  %t138 = load i32, ptr %l45, !tbaa !23
  %t139 = lshr i32 %t138, 16
  %t140 = and i32 %t138, 65535
  %t141 = icmp eq i32 %t139, 1
  %t142 = select i1 %t141, i32 1, i32 0
  %t143 = icmp eq i32 %t138, 0
  %t144 = shl i32 %t142, 16
  %t145 = or i32 %t144, %t140
  %t146 = select i1 %t143, i32 0, i32 %t145
  call void @__olang_scope_close(ptr %s4)
  %t148 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t146, 0
  store { i32, { i64, ptr } } %t148, ptr %rv
  br label %ret
bb23:
  %t149 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t150 = extractvalue { i64, ptr } %t149, 1
  %t151 = extractvalue { i64, ptr } %t149, 0
  %t152 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d32, i32 0, i32 1) }, 1
  %t153 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d32, i32 0, i32 1) }, 0
  %t154 = add i64 %t151, %t153
  %t155 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t156 = extractvalue { i64, ptr } %t155, 1
  %t157 = extractvalue { i64, ptr } %t155, 0
  %t158 = add i64 %t154, %t157
  %t159 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t158)
  call void @olang_textcopy(ptr %t159, ptr %t150, i64 %t151)
  %t160 = getelementptr i8, ptr %t159, i64 %t151
  call void @olang_textcopy(ptr %t160, ptr %t152, i64 %t153)
  %t161 = getelementptr i8, ptr %t160, i64 %t153
  call void @olang_textcopy(ptr %t161, ptr %t156, i64 %t157)
  %t162 = insertvalue { i64, ptr } undef, i64 %t158, 0
  %t163 = insertvalue { i64, ptr } %t162, ptr %t159, 1
  store { i64, ptr } %t163, ptr %l47, !tbaa !27
  %t164 = load ptr, ptr %lp5
  %t165 = load { i64, ptr }, ptr %t164, !tbaa !27
  %t166 = extractvalue { i64, ptr } %t165, 0
  %t167 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t168 = extractvalue { i64, ptr } %t167, 0
  store i64 %t168, ptr %l49, !tbaa !24
  %t170 = load i64, ptr %l49, !tbaa !24
  %t171 = icmp eq i64 %t166, %t170
  br i1 %t171, label %bb24, label %bb25
bb24:
  %t173 = load ptr, ptr %lp5
  %t174 = getelementptr { i64, ptr }, ptr %t173, i32 0, i32 1
  %t175 = load ptr, ptr %t174, !tbaa !27
  %t176 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t177 = load ptr, ptr %t176, !tbaa !27
  %t178 = load i64, ptr %l49, !tbaa !24
  %t179 = mul i64 %t178, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t175, ptr %t177, i64 %t179, i1 false)
  br label %bb26
bb25:
  %t180 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t181 = load ptr, ptr %lp5
  store { i64, ptr } %t180, ptr %t181, !tbaa !27
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s4)
  br label %bb27
bb27:
  %t182 = load ptr, ptr %lp5
  %t183 = load { i64, ptr }, ptr %t182, !tbaa !27
  %t185 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t183, 1
  store { i32, { i64, ptr } } %t185, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i64, ptr } @compiler_2fruntime_2eWithAttributes(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1, i1 %a2) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l3 = alloca %"std/prelude/text:StringBuilder"
  %l4 = alloca %"std/prelude/text:LineIter"
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca i1
  %l11 = alloca %"std/prelude/text:StringBuilder"
  %l13 = alloca %"std/prelude/text:LineIter"
  %l14 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l17 = alloca i32
  %l19 = alloca i1
  %l21 = alloca i1
  %l22 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i32
  %l28 = alloca i1
  %l29 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i32
  %l35 = alloca ptr
  %l36 = alloca { i64, ptr }
  %l37 = alloca i64
  %l38 = alloca i64
  %l49 = alloca i1
  %l50 = alloca i1
  %l52 = alloca i1
  %l53 = alloca i64
  %l55 = alloca i64
  %l56 = alloca i32
  %l59 = alloca i64
  %l64 = alloca { i64, ptr }
  %l65 = alloca i64
  %l66 = alloca i64
  %l73 = alloca { i64, ptr }
  %l74 = alloca i1
  %l75 = alloca i1
  %l78 = alloca { i64, ptr }
  %l79 = alloca i1
  %l84 = alloca ptr
  %l86 = alloca { i64, ptr }
  %l87 = alloca ptr
  %l88 = alloca { i64, ptr }
  %l89 = alloca i64
  %l92 = alloca i64
  %l93 = alloca i64
  %l98 = alloca ptr
  %l100 = alloca { i64, ptr }
  %l105 = alloca ptr
  %l107 = alloca { i64, ptr }
  %l116 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a1, ptr %l1
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
  store %"std/prelude/text:StringBuilder" %t2, ptr %l3
  %t5 = call %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %v0, ptr %v0, { i64, ptr } %a0)
  store %"std/prelude/text:LineIter" %t5, ptr %l13
  br label %bb2
bb2:
  %t6 = load %"std/prelude/text:LineIter", ptr %l13
  store %"std/prelude/text:LineIter" %t6, ptr %l4
  br label %bb3
bb3:
  store %olang.scope zeroinitializer, ptr %s2
  %t8 = call { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %v0, ptr %v0, ptr %l4)
  %t9 = extractvalue { i32, { i64, ptr } } %t8, 1
  %t10 = extractvalue { i32, { i64, ptr } } %t8, 0
  store i32 %t10, ptr %l17
  %t11 = icmp ne i32 %t10, 0
  br i1 %t11, label %bb5, label %ok.12, !prof !99
ok.12:
  store { i64, ptr } %t9, ptr %l16
  br label %bb4
bb4:
  %t13 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t13, ptr %l14, !tbaa !27
  br label %bb7
bb5:
  %t14 = load i32, ptr %l17, !tbaa !23
  %t15 = ashr i32 %t14, 16
  %t17 = icmp eq i32 %t15, 1
  store i1 %t17, ptr %l19, !tbaa !21
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s2)
  br label %bb84
bb7:
  %t18 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t18, ptr %l5, !tbaa !27
  %t19 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t21 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s2, { i64, ptr } %t19, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d33, i32 0, i32 1) })
  store i1 %t21, ptr %l21
  br label %bb8
bb8:
  %t22 = load i1, ptr %l21, !tbaa !21
  br i1 %t22, label %bb9, label %bb10
bb9:
  store %olang.scope zeroinitializer, ptr %s3
  %t23 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t25 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %s3, { i64, ptr } %t23, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d34, i32 0, i32 1) })
  %t26 = extractvalue { i32, i64 } %t25, 1
  %t27 = extractvalue { i32, i64 } %t25, 0
  store i32 %t27, ptr %l25
  %t28 = icmp ne i32 %t27, 0
  br i1 %t28, label %bb12, label %ok.29, !prof !99
ok.29:
  store i64 %t26, ptr %l24
  br label %bb11
bb10:
  br label %bb34
bb11:
  %t30 = load i64, ptr %l24, !tbaa !24
  store i64 %t30, ptr %l22, !tbaa !24
  br label %bb14
bb12:
  br label %bb13
bb13:
  store i64 -1, ptr %l22, !tbaa !24
  br label %bb14
bb14:
  %t31 = load i64, ptr %l22, !tbaa !24
  store i64 %t31, ptr %l6, !tbaa !24
  %t32 = load i64, ptr %l6, !tbaa !24
  %t34 = icmp sgt i64 %t32, 0
  br i1 %t34, label %bb15, label %bb16
bb15:
  %t36 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t38 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %s3, { i64, ptr } %t36, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d35, i32 0, i32 1) })
  %t39 = extractvalue { i32, i64 } %t38, 1
  %t40 = extractvalue { i32, i64 } %t38, 0
  store i32 %t40, ptr %l32
  %t41 = icmp ne i32 %t40, 0
  br i1 %t41, label %bb18, label %ok.42, !prof !99
ok.42:
  store i64 %t39, ptr %l31
  br label %bb17
bb16:
  store i1 false, ptr %l28, !tbaa !21
  br label %bb21
bb17:
  %t43 = load i64, ptr %l31, !tbaa !24
  store i64 %t43, ptr %l29, !tbaa !24
  br label %bb20
bb18:
  br label %bb19
bb19:
  store i64 -1, ptr %l29, !tbaa !24
  br label %bb20
bb20:
  %t44 = load i64, ptr %l6, !tbaa !24
  %t45 = load i64, ptr %l29, !tbaa !24
  %t47 = icmp eq i64 %t45, %t44
  store i1 %t47, ptr %l28, !tbaa !21
  br label %bb21
bb21:
  %t49 = load i1, ptr %l28, !tbaa !21
  br i1 %t49, label %bb22, label %bb23
bb22:
  store %olang.scope zeroinitializer, ptr %s4
  store ptr %l3, ptr %l35, !tbaa !29
  %t50 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t50, ptr %l36, !tbaa !27
  %t51 = load i64, ptr %l6, !tbaa !24
  store i64 %t51, ptr %l37, !tbaa !24
  %t52 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t53 = extractvalue { i64, ptr } %t52, 0
  store i64 %t53, ptr %l38, !tbaa !24
  %t54 = icmp sge i64 1, 0
  br i1 %t54, label %bb24, label %bb25
bb23:
  br label %bb33
bb24:
  %t56 = load i64, ptr %l37, !tbaa !24
  %t57 = icmp sle i64 1, %t56
  br i1 %t57, label %bb26, label %bb27
bb25:
  call void @__olang_check_failed(ptr @olang_loc_48912347760bc49b_7f197caf3eb31ff7)
  unreachable
bb26:
  %t59 = load i64, ptr %l37, !tbaa !24
  %t60 = load i64, ptr %l38, !tbaa !24
  %t61 = icmp sle i64 %t59, %t60
  br i1 %t61, label %bb28, label %bb29
bb27:
  call void @__olang_check_failed(ptr @olang_loc_48912347760bc49b_7f197caf3eb31ff7)
  unreachable
bb28:
  %t63 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !27
  %t65 = load i64, ptr %l37, !tbaa !24
  %t66 = getelementptr i8, ptr %t64, i64 1
  %t67 = sub i64 %t65, 1
  %t68 = insertvalue { i64, ptr } undef, i64 %t67, 0
  %t69 = insertvalue { i64, ptr } %t68, ptr %t66, 1
  %t70 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d36, i32 0, i32 1) }, 1
  %t71 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d36, i32 0, i32 1) }, 0
  %t73 = extractvalue { i64, ptr } %t69, 1
  %t74 = extractvalue { i64, ptr } %t69, 0
  %t75 = add i64 %t71, %t74
  %t76 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d37, i32 0, i32 1) }, 1
  %t77 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d37, i32 0, i32 1) }, 0
  %t78 = add i64 %t75, %t77
  %t79 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t78)
  call void @olang_textcopy(ptr %t79, ptr %t70, i64 %t71)
  %t80 = getelementptr i8, ptr %t79, i64 %t71
  call void @olang_textcopy(ptr %t80, ptr %t73, i64 %t74)
  %t81 = getelementptr i8, ptr %t80, i64 %t74
  call void @olang_textcopy(ptr %t81, ptr %t76, i64 %t77)
  %t82 = insertvalue { i64, ptr } undef, i64 %t78, 0
  %t83 = insertvalue { i64, ptr } %t82, ptr %t79, 1
  %t85 = extractvalue { i64, ptr } %t83, 0
  %t86 = extractvalue { i64, ptr } %t83, 1
  %t87 = mul i64 %t85, 1
  %t88 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t87)
  call void @llvm.memcpy.p0.p0.i64(ptr %t88, ptr %t86, i64 %t87, i1 false)
  %t89 = insertvalue { i64, ptr } undef, i64 %t85, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t88, 1
  %t91 = load ptr, ptr %l35, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s4, ptr %t91, { i64, ptr } %t90)
  br label %bb30
bb29:
  call void @__olang_check_failed(ptr @olang_loc_48912347760bc49b_7f197caf3eb31ff7)
  unreachable
bb30:
  %t93 = load { i64, ptr }, ptr %l5, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v0, ptr %l3, { i64, ptr } %t93)
  br label %bb31
bb31:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s4, ptr %l3, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d38, i32 0, i32 1) })
  br label %bb32
bb32:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s2)
  br label %bb83
bb33:
  call void @__olang_scope_close(ptr %s3)
  br label %bb34
bb34:
  %t97 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t99 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s2, { i64, ptr } %t97, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d39, i32 0, i32 1) })
  store i1 %t99, ptr %l49
  br label %bb35
bb35:
  %t100 = load i1, ptr %l49, !tbaa !21
  br i1 %t100, label %bb36, label %bb37
bb36:
  %t101 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t103 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %s2, { i64, ptr } %t101, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d40, i32 0, i32 1) })
  store i1 %t103, ptr %l52
  br label %bb38
bb37:
  store i1 false, ptr %l50, !tbaa !21
  br label %bb39
bb38:
  %t104 = load i1, ptr %l52, !tbaa !21
  store i1 %t104, ptr %l50, !tbaa !21
  br label %bb39
bb39:
  %t105 = load i1, ptr %l50, !tbaa !21
  br i1 %t105, label %bb40, label %bb41
bb40:
  store %olang.scope zeroinitializer, ptr %s6
  %t106 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t108 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %s6, { i64, ptr } %t106, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d41, i32 0, i32 1) })
  %t109 = extractvalue { i32, i64 } %t108, 1
  %t110 = extractvalue { i32, i64 } %t108, 0
  store i32 %t110, ptr %l56
  %t111 = icmp ne i32 %t110, 0
  br i1 %t111, label %bb43, label %ok.112, !prof !99
ok.112:
  store i64 %t109, ptr %l55
  br label %bb42
bb41:
  br label %bb80
bb42:
  %t113 = load i64, ptr %l55, !tbaa !24
  store i64 %t113, ptr %l53, !tbaa !24
  br label %bb45
bb43:
  br label %bb44
bb44:
  store i64 -1, ptr %l53, !tbaa !24
  br label %bb45
bb45:
  %t114 = load i64, ptr %l53, !tbaa !24
  store i64 %t114, ptr %l7, !tbaa !24
  %t115 = load i64, ptr %l7, !tbaa !24
  %t117 = icmp sge i64 %t115, 0
  br i1 %t117, label %bb46, label %bb47
bb46:
  %t119 = load i64, ptr %l7, !tbaa !24
  store i64 %t119, ptr %l59, !tbaa !24
  br label %bb48
bb47:
  %t121 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t123 = extractvalue { i64, ptr } %t121, 0
  %t125 = sub i64 %t123, 1
  store i64 %t125, ptr %l59, !tbaa !24
  br label %bb48
bb48:
  %t127 = load i64, ptr %l59, !tbaa !24
  %t128 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t128, ptr %l64, !tbaa !27
  store i64 %t127, ptr %l65, !tbaa !24
  %t130 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t131 = extractvalue { i64, ptr } %t130, 0
  store i64 %t131, ptr %l66, !tbaa !24
  %t132 = icmp sge i64 0, 0
  br i1 %t132, label %bb49, label %bb50
bb49:
  %t134 = load i64, ptr %l65, !tbaa !24
  %t135 = icmp sle i64 0, %t134
  br i1 %t135, label %bb51, label %bb52
bb50:
  call void @__olang_check_failed(ptr @olang_loc_606763d33345b49e_888ff486d8884e9a)
  unreachable
bb51:
  %t137 = load i64, ptr %l65, !tbaa !24
  %t138 = load i64, ptr %l66, !tbaa !24
  %t139 = icmp sle i64 %t137, %t138
  br i1 %t139, label %bb53, label %bb54
bb52:
  call void @__olang_check_failed(ptr @olang_loc_606763d33345b49e_888ff486d8884e9a)
  unreachable
bb53:
  %t141 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t142 = load ptr, ptr %t141, !tbaa !27
  %t143 = load i64, ptr %l65, !tbaa !24
  %t144 = getelementptr i8, ptr %t142, i64 0
  %t145 = sub i64 %t143, 0
  %t146 = insertvalue { i64, ptr } undef, i64 %t145, 0
  %t147 = insertvalue { i64, ptr } %t146, ptr %t144, 1
  store { i64, ptr } %t147, ptr %l9, !tbaa !27
  %t149 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d42, i32 0, i32 1) }, ptr %l73, !tbaa !27
  %t152 = load { i64, ptr }, ptr %l73, !tbaa !27
  %t153 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %s6, { i64, ptr } %t149, { i64, ptr } %t152)
  store i1 %t153, ptr %l74
  br label %bb55
bb54:
  call void @__olang_check_failed(ptr @olang_loc_606763d33345b49e_888ff486d8884e9a)
  unreachable
bb55:
  %t154 = load i1, ptr %l74, !tbaa !21
  br i1 %t154, label %bb56, label %bb57
bb56:
  store i1 true, ptr %l75, !tbaa !21
  br label %bb59
bb57:
  %t155 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d43, i32 0, i32 1) }, ptr %l78, !tbaa !27
  %t158 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t159 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %s6, { i64, ptr } %t155, { i64, ptr } %t158)
  store i1 %t159, ptr %l79
  br label %bb58
bb58:
  %t160 = load i1, ptr %l79, !tbaa !21
  store i1 %t160, ptr %l75, !tbaa !21
  br label %bb59
bb59:
  %t161 = load i1, ptr %l75, !tbaa !21
  store i1 %t161, ptr %l10, !tbaa !21
  %t162 = load { i64, ptr }, ptr %l9, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v0, ptr %l3, { i64, ptr } %t162)
  br label %bb60
bb60:
  %t165 = load i64, ptr %l7, !tbaa !24
  %t167 = icmp sge i64 %t165, 0
  br i1 %t167, label %bb61, label %bb62
bb61:
  store %olang.scope zeroinitializer, ptr %s7
  store ptr %l3, ptr %l84, !tbaa !29
  %t169 = load i1, ptr %l10, !tbaa !21
  br i1 %t169, label %bb63, label %bb64
bb62:
  store %olang.scope zeroinitializer, ptr %s8
  store ptr %l3, ptr %l98, !tbaa !29
  %t171 = load i1, ptr %l10, !tbaa !21
  br i1 %t171, label %bb74, label %bb75
bb63:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d44, i32 0, i32 1) }, ptr %l86, !tbaa !27
  br label %bb65
bb64:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d45, i32 0, i32 1) }, ptr %l86, !tbaa !27
  br label %bb65
bb65:
  %t173 = load ptr, ptr %l84, !tbaa !29
  %t174 = load { i64, ptr }, ptr %l86, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s7, ptr %t173, { i64, ptr } %t174)
  br label %bb66
bb66:
  store ptr %l3, ptr %l87, !tbaa !29
  %t175 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t175, ptr %l88, !tbaa !27
  %t176 = load i64, ptr %l7, !tbaa !24
  store i64 %t176, ptr %l89, !tbaa !24
  %t177 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t180 = extractvalue { i64, ptr } %t177, 0
  store i64 %t180, ptr %l92, !tbaa !24
  %t181 = load { i64, ptr }, ptr %l88, !tbaa !27
  %t182 = extractvalue { i64, ptr } %t181, 0
  store i64 %t182, ptr %l93, !tbaa !24
  %t183 = load i64, ptr %l89, !tbaa !24
  %t184 = icmp sge i64 %t183, 0
  br i1 %t184, label %bb67, label %bb68
bb67:
  %t186 = load i64, ptr %l89, !tbaa !24
  %t187 = load i64, ptr %l92, !tbaa !24
  %t188 = icmp sle i64 %t186, %t187
  br i1 %t188, label %bb69, label %bb70
bb68:
  call void @__olang_check_failed(ptr @olang_loc_dc19f5cc01bc83fd_c395ac342fa7af39)
  unreachable
bb69:
  %t190 = load i64, ptr %l92, !tbaa !24
  %t191 = load i64, ptr %l93, !tbaa !24
  %t192 = icmp sle i64 %t190, %t191
  br i1 %t192, label %bb71, label %bb72
bb70:
  call void @__olang_check_failed(ptr @olang_loc_dc19f5cc01bc83fd_c395ac342fa7af39)
  unreachable
bb71:
  %t194 = getelementptr { i64, ptr }, ptr %l88, i32 0, i32 1
  %t195 = load ptr, ptr %t194, !tbaa !27
  %t196 = load i64, ptr %l89, !tbaa !24
  %t197 = load i64, ptr %l92, !tbaa !24
  %t198 = getelementptr i8, ptr %t195, i64 %t196
  %t199 = sub i64 %t197, %t196
  %t200 = insertvalue { i64, ptr } undef, i64 %t199, 0
  %t201 = insertvalue { i64, ptr } %t200, ptr %t198, 1
  %t202 = load ptr, ptr %l87, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v0, ptr %t202, { i64, ptr } %t201)
  br label %bb73
bb72:
  call void @__olang_check_failed(ptr @olang_loc_dc19f5cc01bc83fd_c395ac342fa7af39)
  unreachable
bb73:
  call void @__olang_scope_close(ptr %s7)
  br label %bb78
bb74:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d46, i32 0, i32 1) }, ptr %l100, !tbaa !27
  br label %bb76
bb75:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d47, i32 0, i32 1) }, ptr %l100, !tbaa !27
  br label %bb76
bb76:
  %t204 = load ptr, ptr %l98, !tbaa !29
  %t205 = load { i64, ptr }, ptr %l100, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s8, ptr %t204, { i64, ptr } %t205)
  br label %bb77
bb77:
  call void @__olang_scope_close(ptr %s8)
  br label %bb78
bb78:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l3, i8 10)
  br label %bb79
bb79:
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s2)
  br label %bb83
bb80:
  %t207 = load { i64, ptr }, ptr %l5, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v0, ptr %l3, { i64, ptr } %t207)
  br label %bb81
bb81:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l3, i8 10)
  br label %bb82
bb82:
  call void @__olang_scope_close(ptr %s2)
  br label %bb83
bb83:
  br label %bb3
bb84:
  store ptr %l3, ptr %l105, !tbaa !29
  br i1 %a2, label %bb85, label %bb86
bb85:
  store { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d48, i32 0, i32 1) }, ptr %l107, !tbaa !27
  br label %bb87
bb86:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d49, i32 0, i32 1) }, ptr %l107, !tbaa !27
  br label %bb87
bb87:
  %t213 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t214 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d50, i32 0, i32 1) }, 1
  %t215 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d50, i32 0, i32 1) }, 0
  %t216 = load { i64, ptr }, ptr %l107, !tbaa !27
  %t217 = extractvalue { i64, ptr } %t216, 1
  %t218 = extractvalue { i64, ptr } %t216, 0
  %t219 = add i64 %t215, %t218
  %t221 = extractvalue { i64, ptr } %t213, 1
  %t222 = extractvalue { i64, ptr } %t213, 0
  %t223 = add i64 %t219, %t222
  %t224 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d51, i32 0, i32 1) }, 1
  %t225 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d51, i32 0, i32 1) }, 0
  %t226 = add i64 %t223, %t225
  %t227 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t226)
  call void @olang_textcopy(ptr %t227, ptr %t214, i64 %t215)
  %t228 = getelementptr i8, ptr %t227, i64 %t215
  call void @olang_textcopy(ptr %t228, ptr %t217, i64 %t218)
  %t229 = getelementptr i8, ptr %t228, i64 %t218
  call void @olang_textcopy(ptr %t229, ptr %t221, i64 %t222)
  %t230 = getelementptr i8, ptr %t229, i64 %t222
  call void @olang_textcopy(ptr %t230, ptr %t224, i64 %t225)
  %t231 = insertvalue { i64, ptr } undef, i64 %t226, 0
  %t232 = insertvalue { i64, ptr } %t231, ptr %t227, 1
  %t234 = extractvalue { i64, ptr } %t232, 0
  %t235 = extractvalue { i64, ptr } %t232, 1
  %t236 = mul i64 %t234, 1
  %t237 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t236)
  call void @llvm.memcpy.p0.p0.i64(ptr %t237, ptr %t235, i64 %t236, i1 false)
  %t238 = insertvalue { i64, ptr } undef, i64 %t234, 0
  %t239 = insertvalue { i64, ptr } %t238, ptr %t237, 1
  %t240 = load ptr, ptr %l105, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t240, { i64, ptr } %t239)
  br label %bb88
bb88:
  %t242 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t243 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d52, i32 0, i32 1) }, 1
  %t244 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d52, i32 0, i32 1) }, 0
  %t246 = extractvalue { i64, ptr } %t242, 1
  %t247 = extractvalue { i64, ptr } %t242, 0
  %t248 = add i64 %t244, %t247
  %t249 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d53, i32 0, i32 1) }, 1
  %t250 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d53, i32 0, i32 1) }, 0
  %t251 = add i64 %t248, %t250
  %t252 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t251)
  call void @olang_textcopy(ptr %t252, ptr %t243, i64 %t244)
  %t253 = getelementptr i8, ptr %t252, i64 %t244
  call void @olang_textcopy(ptr %t253, ptr %t246, i64 %t247)
  %t254 = getelementptr i8, ptr %t253, i64 %t247
  call void @olang_textcopy(ptr %t254, ptr %t249, i64 %t250)
  %t255 = insertvalue { i64, ptr } undef, i64 %t251, 0
  %t256 = insertvalue { i64, ptr } %t255, ptr %t252, 1
  %t258 = extractvalue { i64, ptr } %t256, 0
  %t259 = extractvalue { i64, ptr } %t256, 1
  %t260 = mul i64 %t258, 1
  %t261 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t260)
  call void @llvm.memcpy.p0.p0.i64(ptr %t261, ptr %t259, i64 %t260, i1 false)
  %t262 = insertvalue { i64, ptr } undef, i64 %t258, 0
  %t263 = insertvalue { i64, ptr } %t262, ptr %t261, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l3, { i64, ptr } %t263)
  br label %bb89
bb89:
  %t267 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v2, ptr %l3)
  store { i64, ptr } %t267, ptr %l116
  br label %bb90
bb90:
  call void @__olang_scope_close(ptr %s0)
  %t268 = load { i64, ptr }, ptr %l116, !tbaa !27
  store { i64, ptr } %t268, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2fruntime_2earchRow(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l12 = alloca i64
  %l15 = alloca i64
  %l36 = alloca i1
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l1, !tbaa !24
  %t1 = load [2 x { i64, ptr }], ptr @G_2ecompiler_2fruntime_2eArchs
  store i64 2, ptr %l2, !tbaa !24
  store i64 1, ptr %l3, !tbaa !24
  %t4 = load i64, ptr %l2, !tbaa !24
  %t5 = load i64, ptr %l1, !tbaa !24
  %t8 = icmp sgt i64 %t4, %t5
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load i64, ptr %l3, !tbaa !24
  %t12 = icmp sgt i64 %t10, 0
  br i1 %t12, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l12, !tbaa !24
  br label %bb6
bb3:
  %t14 = load i64, ptr %l2, !tbaa !24
  %t15 = load i64, ptr %l1, !tbaa !24
  %t18 = sub i64 %t14, %t15
  %t19 = load i64, ptr %l3, !tbaa !24
  %t22 = add i64 %t18, %t19
  %t24 = sub i64 %t22, 1
  %t25 = load i64, ptr %l3, !tbaa !24
  %t28 = sdiv i64 %t24, %t25
  store i64 %t28, ptr %l15, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l15, !tbaa !24
  br label %bb5
bb5:
  %t30 = load i64, ptr %l15, !tbaa !24
  store i64 %t30, ptr %l12, !tbaa !24
  br label %bb6
bb6:
  %t31 = load i64, ptr %l12, !tbaa !24
  store i64 %t31, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb7
bb7:
  %t32 = load i64, ptr %l5, !tbaa !24
  %t33 = load i64, ptr %l4, !tbaa !24
  %t36 = icmp slt i64 %t32, %t33
  %t38 = xor i1 %t36, true
  br i1 %t38, label %bb8, label %bb9
bb8:
  br label %bb16
bb9:
  br label %bb10
bb10:
  %t40 = load i64, ptr %l1, !tbaa !24
  %t41 = load i64, ptr %l5, !tbaa !24
  %t42 = load i64, ptr %l3, !tbaa !24
  %t45 = mul i64 %t41, %t42
  %t48 = add i64 %t40, %t45
  store i64 %t48, ptr %l6, !tbaa !24
  %t50 = load i64, ptr %l6, !tbaa !24
  %t52 = getelementptr [2 x { i64, ptr }], ptr @G_2ecompiler_2fruntime_2eArchs, i64 0, i64 %t50
  %t53 = load { i64, ptr }, ptr %t52, !tbaa !37
  %t55 = load ptr, ptr @__olang_prog_scope
  %t58 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %t55, ptr %v0, { i64, ptr } %t53, { i64, ptr } %a0)
  store i1 %t58, ptr %l36
  br label %bb11
bb11:
  %t59 = load i1, ptr %l36, !tbaa !21
  br i1 %t59, label %bb12, label %bb13
bb12:
  %t60 = load i64, ptr %l6, !tbaa !24
  store i64 %t60, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t62 = load i64, ptr %l5, !tbaa !24
  %t64 = add i64 %t62, 1
  store i64 %t64, ptr %l5, !tbaa !24
  br label %bb7
bb16:
  store i64 0, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fruntime_2edeclare(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i1
  %l6 = alloca i64
  %l7 = alloca i8
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l18 = alloca i1
  %l19 = alloca i1
  %l21 = alloca i1
  %l22 = alloca i1
  %l25 = alloca { i64, ptr }
  %l26 = alloca i1
  %l27 = alloca i1
  %l29 = alloca i1
  %l30 = alloca i1
  %l33 = alloca { i64, ptr }
  %l34 = alloca i1
  %l39 = alloca i1
  %l40 = alloca i1
  %l42 = alloca i1
  %l43 = alloca i1
  %l46 = alloca { i64, ptr }
  %l47 = alloca i1
  %l48 = alloca i1
  %l51 = alloca { i64, ptr }
  %l52 = alloca i1
  %l54 = alloca i1
  %l55 = alloca i64
  %l57 = alloca i64
  %l58 = alloca i32
  %l59 = alloca ptr
  %l60 = alloca { i64, ptr }
  %l61 = alloca i64
  %l62 = alloca i64
  %l78 = alloca { i64, ptr }
  %l83 = alloca i1
  %l86 = alloca i1
  %l89 = alloca i1
  %l96 = alloca i1
  %l99 = alloca i1
  %l106 = alloca i1
  %l113 = alloca i1
  %l116 = alloca i1
  %l119 = alloca { i64, ptr }
  %l120 = alloca i64
  %l121 = alloca i64
  %l122 = alloca i64
  %l127 = alloca { i64, ptr }
  %l128 = alloca i64
  %l130 = alloca i64
  %l131 = alloca i32
  %l134 = alloca i1
  %l135 = alloca { i64, ptr }
  %l140 = alloca { i64, ptr }
  %l141 = alloca i64
  %l142 = alloca i64
  %l147 = alloca { i64, ptr }
  %l155 = alloca { i64, ptr }
  %l163 = alloca { i64, ptr }
  %l165 = alloca i64
  %l168 = alloca i64
  %l169 = alloca i64
  %l174 = alloca i64
  %l176 = alloca i64
  %l177 = alloca i32
  %l180 = alloca ptr
  %l181 = alloca { i64, ptr }
  %l182 = alloca i64
  %l183 = alloca i64
  %l188 = alloca { i64, ptr }
  %l192 = alloca i1
  %l193 = alloca i64
  %l195 = alloca i64
  %l196 = alloca i32
  %l197 = alloca ptr
  %l198 = alloca { i64, ptr }
  %l199 = alloca i64
  %l200 = alloca i64
  %l207 = alloca { i64, ptr }
  %l209 = alloca i64
  %l212 = alloca i64
  %l213 = alloca i64
  %l219 = alloca i1
  %l220 = alloca i64
  %l222 = alloca i64
  %l223 = alloca i32
  %l224 = alloca ptr
  %l225 = alloca { i64, ptr }
  %l227 = alloca i64
  %l228 = alloca i64
  %l235 = alloca { i64, ptr }
  %l237 = alloca i64
  %l240 = alloca i64
  %l241 = alloca i64
  %l247 = alloca i1
  %l248 = alloca { i64, ptr }
  %l251 = alloca i64
  %l252 = alloca i64
  %l257 = alloca i64
  %l259 = alloca i64
  %l260 = alloca i32
  %l268 = alloca i64
  %l272 = alloca i64
  %l275 = alloca ptr
  %l276 = alloca { i64, ptr }
  %l278 = alloca i64
  %l279 = alloca i64
  %l283 = alloca { i64, ptr }
  %l284 = alloca { i64, ptr }
  %l286 = alloca i64
  %l287 = alloca i64
  %l288 = alloca i64
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %s22 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d54, i32 0, i32 1) })
  store i1 %t3, ptr %l18
  br label %bb1
bb1:
  %t4 = load i1, ptr %l18, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l19, !tbaa !21
  br label %bb9
bb3:
  %t5 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t7 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s0, { i64, ptr } %t5, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d55, i32 0, i32 1) })
  store i1 %t7, ptr %l21
  br label %bb4
bb4:
  %t8 = load i1, ptr %l21, !tbaa !21
  br i1 %t8, label %bb5, label %bb6
bb5:
  %t9 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d56, i32 0, i32 1) }, ptr %l25, !tbaa !27
  %t12 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t13 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v1, ptr %s0, { i64, ptr } %t9, { i64, ptr } %t12)
  store i1 %t13, ptr %l26
  br label %bb7
bb6:
  store i1 false, ptr %l22, !tbaa !21
  br label %bb8
bb7:
  %t14 = load i1, ptr %l26, !tbaa !21
  store i1 %t14, ptr %l22, !tbaa !21
  br label %bb8
bb8:
  %t15 = load i1, ptr %l22, !tbaa !21
  store i1 %t15, ptr %l19, !tbaa !21
  br label %bb9
bb9:
  %t16 = load i1, ptr %l19, !tbaa !21
  br i1 %t16, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb17
bb11:
  %t17 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t19 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s0, { i64, ptr } %t17, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d57, i32 0, i32 1) })
  store i1 %t19, ptr %l29
  br label %bb12
bb12:
  %t20 = load i1, ptr %l29, !tbaa !21
  br i1 %t20, label %bb13, label %bb14
bb13:
  %t21 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d58, i32 0, i32 1) }, ptr %l33, !tbaa !27
  %t24 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t25 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v1, ptr %s0, { i64, ptr } %t21, { i64, ptr } %t24)
  store i1 %t25, ptr %l34
  br label %bb15
bb14:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb16
bb15:
  %t26 = load i1, ptr %l34, !tbaa !21
  store i1 %t26, ptr %l30, !tbaa !21
  br label %bb16
bb16:
  %t27 = load i1, ptr %l30, !tbaa !21
  store i1 %t27, ptr %l27, !tbaa !21
  br label %bb17
bb17:
  %t28 = load i1, ptr %l27, !tbaa !21
  br i1 %t28, label %bb18, label %bb19
bb18:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = load { i64, ptr }, ptr %l1, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %t29, { i64, ptr } %t30)
  br label %bb20
bb19:
  br label %bb22
bb20:
  %t33 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %t33, i8 10)
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb22:
  %t35 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t37 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s0, { i64, ptr } %t35, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d59, i32 0, i32 1) })
  store i1 %t37, ptr %l39
  br label %bb23
bb23:
  %t38 = load i1, ptr %l39, !tbaa !21
  br i1 %t38, label %bb24, label %bb25
bb24:
  store i1 true, ptr %l40, !tbaa !21
  br label %bb27
bb25:
  %t39 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t41 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s0, { i64, ptr } %t39, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d60, i32 0, i32 1) })
  store i1 %t41, ptr %l42
  br label %bb26
bb26:
  %t42 = load i1, ptr %l42, !tbaa !21
  store i1 %t42, ptr %l40, !tbaa !21
  br label %bb27
bb27:
  %t43 = load i1, ptr %l40, !tbaa !21
  br i1 %t43, label %bb28, label %bb29
bb28:
  store i1 true, ptr %l43, !tbaa !21
  br label %bb31
bb29:
  %t44 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d61, i32 0, i32 1) }, ptr %l46, !tbaa !27
  %t47 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t48 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v1, ptr %s0, { i64, ptr } %t44, { i64, ptr } %t47)
  store i1 %t48, ptr %l47
  br label %bb30
bb30:
  %t49 = load i1, ptr %l47, !tbaa !21
  store i1 %t49, ptr %l43, !tbaa !21
  br label %bb31
bb31:
  %t50 = load i1, ptr %l43, !tbaa !21
  br i1 %t50, label %bb32, label %bb33
bb32:
  store i1 true, ptr %l48, !tbaa !21
  br label %bb35
bb33:
  %t51 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d62, i32 0, i32 1) }, ptr %l51, !tbaa !27
  %t54 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t55 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v1, ptr %s0, { i64, ptr } %t51, { i64, ptr } %t54)
  store i1 %t55, ptr %l52
  br label %bb34
bb34:
  %t56 = load i1, ptr %l52, !tbaa !21
  store i1 %t56, ptr %l48, !tbaa !21
  br label %bb35
bb35:
  %t57 = load i1, ptr %l48, !tbaa !21
  br i1 %t57, label %bb36, label %bb37
bb36:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb37:
  br label %bb38
bb38:
  %t58 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t60 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s0, { i64, ptr } %t58, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d63, i32 0, i32 1) })
  store i1 %t60, ptr %l54
  br label %bb39
bb39:
  %t61 = load i1, ptr %l54, !tbaa !21
  br i1 %t61, label %bb40, label %bb41
bb40:
  store %olang.scope zeroinitializer, ptr %s3
  %t62 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t64 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v1, ptr %s3, { i64, ptr } %t62, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d64, i32 0, i32 1) })
  %t65 = extractvalue { i32, i64 } %t64, 1
  %t66 = extractvalue { i32, i64 } %t64, 0
  store i32 %t66, ptr %l58
  %t67 = icmp ne i32 %t66, 0
  br i1 %t67, label %bb43, label %ok.68, !prof !99
ok.68:
  store i64 %t65, ptr %l57
  br label %bb42
bb41:
  br label %bb148
bb42:
  %t69 = load i64, ptr %l57, !tbaa !24
  store i64 %t69, ptr %l55, !tbaa !24
  br label %bb45
bb43:
  br label %bb44
bb44:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb45:
  %t70 = load i64, ptr %l55, !tbaa !24
  store i64 %t70, ptr %l2, !tbaa !24
  %t71 = load ptr, ptr %l0, !tbaa !29
  store ptr %t71, ptr %l59, !tbaa !29
  %t72 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t72, ptr %l60, !tbaa !27
  %t73 = load i64, ptr %l2, !tbaa !24
  store i64 %t73, ptr %l61, !tbaa !24
  %t74 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t75 = extractvalue { i64, ptr } %t74, 0
  store i64 %t75, ptr %l62, !tbaa !24
  %t76 = icmp sge i64 7, 0
  br i1 %t76, label %bb46, label %bb47
bb46:
  %t78 = load i64, ptr %l61, !tbaa !24
  %t79 = icmp sle i64 7, %t78
  br i1 %t79, label %bb48, label %bb49
bb47:
  call void @__olang_check_failed(ptr @olang_loc_ea39e132cd3efa0c_1aef6a820179ae38)
  unreachable
bb48:
  %t81 = load i64, ptr %l61, !tbaa !24
  %t82 = load i64, ptr %l62, !tbaa !24
  %t83 = icmp sle i64 %t81, %t82
  br i1 %t83, label %bb50, label %bb51
bb49:
  call void @__olang_check_failed(ptr @olang_loc_ea39e132cd3efa0c_1aef6a820179ae38)
  unreachable
bb50:
  %t85 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !27
  %t87 = load i64, ptr %l61, !tbaa !24
  %t88 = getelementptr i8, ptr %t86, i64 7
  %t89 = sub i64 %t87, 7
  %t90 = insertvalue { i64, ptr } undef, i64 %t89, 0
  %t91 = insertvalue { i64, ptr } %t90, ptr %t88, 1
  %t92 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d65, i32 0, i32 1) }, 1
  %t93 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d65, i32 0, i32 1) }, 0
  %t95 = extractvalue { i64, ptr } %t91, 1
  %t96 = extractvalue { i64, ptr } %t91, 0
  %t97 = add i64 %t93, %t96
  %t98 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d66, i32 0, i32 1) }, 1
  %t99 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d66, i32 0, i32 1) }, 0
  %t100 = add i64 %t97, %t99
  %t101 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t100)
  call void @olang_textcopy(ptr %t101, ptr %t92, i64 %t93)
  %t102 = getelementptr i8, ptr %t101, i64 %t93
  call void @olang_textcopy(ptr %t102, ptr %t95, i64 %t96)
  %t103 = getelementptr i8, ptr %t102, i64 %t96
  call void @olang_textcopy(ptr %t103, ptr %t98, i64 %t99)
  %t104 = insertvalue { i64, ptr } undef, i64 %t100, 0
  %t105 = insertvalue { i64, ptr } %t104, ptr %t101, 1
  %t107 = extractvalue { i64, ptr } %t105, 0
  %t108 = extractvalue { i64, ptr } %t105, 1
  %t109 = mul i64 %t107, 1
  %t110 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t109)
  call void @llvm.memcpy.p0.p0.i64(ptr %t110, ptr %t108, i64 %t109, i1 false)
  %t111 = insertvalue { i64, ptr } undef, i64 %t107, 0
  %t112 = insertvalue { i64, ptr } %t111, ptr %t110, 1
  %t113 = load ptr, ptr %l59, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s3, ptr %t113, { i64, ptr } %t112)
  br label %bb52
bb51:
  call void @__olang_check_failed(ptr @olang_loc_ea39e132cd3efa0c_1aef6a820179ae38)
  unreachable
bb52:
  store i64 0, ptr %l3, !tbaa !24
  %t115 = load i64, ptr %l2, !tbaa !24
  %t117 = add i64 %t115, 1
  store i64 %t117, ptr %l4, !tbaa !24
  store i1 true, ptr %l5, !tbaa !21
  %t119 = load i64, ptr %l2, !tbaa !24
  %t121 = add i64 %t119, 1
  store i64 %t121, ptr %l6, !tbaa !24
  br label %bb53
bb53:
  %t123 = load i64, ptr %l6, !tbaa !24
  %t124 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t126 = extractvalue { i64, ptr } %t124, 0
  %t129 = icmp slt i64 %t123, %t126
  %t131 = xor i1 %t129, true
  br i1 %t131, label %bb54, label %bb55
bb54:
  br label %bb129
bb55:
  br label %bb56
bb56:
  %t133 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t133, ptr %l78, !tbaa !27
  %t134 = load i64, ptr %l6, !tbaa !24
  %t136 = getelementptr { i64, ptr }, ptr %l78, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !27
  %t138 = getelementptr i8, ptr %t137, i64 %t134
  %t139 = load i8, ptr %t138, !tbaa !32
  store i8 %t139, ptr %l7, !tbaa !22
  %t141 = load i8, ptr %l7, !tbaa !22
  %t143 = icmp eq i8 %t141, 40
  br i1 %t143, label %bb57, label %bb58
bb57:
  store i1 true, ptr %l83, !tbaa !21
  br label %bb59
bb58:
  %t145 = load i8, ptr %l7, !tbaa !22
  %t147 = icmp eq i8 %t145, 91
  store i1 %t147, ptr %l83, !tbaa !21
  br label %bb59
bb59:
  %t149 = load i1, ptr %l83, !tbaa !21
  br i1 %t149, label %bb60, label %bb61
bb60:
  store i1 true, ptr %l86, !tbaa !21
  br label %bb62
bb61:
  %t150 = load i8, ptr %l7, !tbaa !22
  %t152 = icmp eq i8 %t150, 123
  store i1 %t152, ptr %l86, !tbaa !21
  br label %bb62
bb62:
  %t154 = load i1, ptr %l86, !tbaa !21
  br i1 %t154, label %bb63, label %bb64
bb63:
  store i1 true, ptr %l89, !tbaa !21
  br label %bb65
bb64:
  %t155 = load i8, ptr %l7, !tbaa !22
  %t157 = icmp eq i8 %t155, 60
  store i1 %t157, ptr %l89, !tbaa !21
  br label %bb65
bb65:
  %t159 = load i1, ptr %l89, !tbaa !21
  br i1 %t159, label %bb66, label %bb67
bb66:
  %t160 = load i64, ptr %l3, !tbaa !24
  %t162 = add i64 %t160, 1
  store i64 %t162, ptr %l3, !tbaa !24
  br label %bb127
bb67:
  %t164 = load i8, ptr %l7, !tbaa !22
  %t166 = icmp eq i8 %t164, 93
  br i1 %t166, label %bb68, label %bb69
bb68:
  store i1 true, ptr %l96, !tbaa !21
  br label %bb70
bb69:
  %t168 = load i8, ptr %l7, !tbaa !22
  %t170 = icmp eq i8 %t168, 125
  store i1 %t170, ptr %l96, !tbaa !21
  br label %bb70
bb70:
  %t172 = load i1, ptr %l96, !tbaa !21
  br i1 %t172, label %bb71, label %bb72
bb71:
  store i1 true, ptr %l99, !tbaa !21
  br label %bb73
bb72:
  %t173 = load i8, ptr %l7, !tbaa !22
  %t175 = icmp eq i8 %t173, 62
  store i1 %t175, ptr %l99, !tbaa !21
  br label %bb73
bb73:
  %t177 = load i1, ptr %l99, !tbaa !21
  br i1 %t177, label %bb74, label %bb75
bb74:
  %t178 = load i64, ptr %l3, !tbaa !24
  %t180 = sub i64 %t178, 1
  store i64 %t180, ptr %l3, !tbaa !24
  br label %bb126
bb75:
  %t182 = load i8, ptr %l7, !tbaa !22
  %t184 = icmp eq i8 %t182, 41
  br i1 %t184, label %bb76, label %bb77
bb76:
  %t186 = load i64, ptr %l3, !tbaa !24
  %t188 = icmp sgt i64 %t186, 0
  store i1 %t188, ptr %l106, !tbaa !21
  br label %bb78
bb77:
  store i1 false, ptr %l106, !tbaa !21
  br label %bb78
bb78:
  %t190 = load i1, ptr %l106, !tbaa !21
  br i1 %t190, label %bb79, label %bb80
bb79:
  %t191 = load i64, ptr %l3, !tbaa !24
  %t193 = sub i64 %t191, 1
  store i64 %t193, ptr %l3, !tbaa !24
  br label %bb125
bb80:
  %t195 = load i8, ptr %l7, !tbaa !22
  %t197 = icmp eq i8 %t195, 44
  br i1 %t197, label %bb81, label %bb82
bb81:
  store i1 true, ptr %l113, !tbaa !21
  br label %bb83
bb82:
  %t199 = load i8, ptr %l7, !tbaa !22
  %t201 = icmp eq i8 %t199, 41
  store i1 %t201, ptr %l113, !tbaa !21
  br label %bb83
bb83:
  %t203 = load i1, ptr %l113, !tbaa !21
  br i1 %t203, label %bb84, label %bb85
bb84:
  %t204 = load i64, ptr %l3, !tbaa !24
  %t206 = icmp eq i64 %t204, 0
  store i1 %t206, ptr %l116, !tbaa !21
  br label %bb86
bb85:
  store i1 false, ptr %l116, !tbaa !21
  br label %bb86
bb86:
  %t208 = load i1, ptr %l116, !tbaa !21
  br i1 %t208, label %bb87, label %bb88
bb87:
  store %olang.scope zeroinitializer, ptr %s13
  %t209 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t209, ptr %l119, !tbaa !27
  %t210 = load i64, ptr %l4, !tbaa !24
  store i64 %t210, ptr %l120, !tbaa !24
  %t211 = load i64, ptr %l6, !tbaa !24
  store i64 %t211, ptr %l121, !tbaa !24
  %t212 = load { i64, ptr }, ptr %l119, !tbaa !27
  %t213 = extractvalue { i64, ptr } %t212, 0
  store i64 %t213, ptr %l122, !tbaa !24
  %t214 = load i64, ptr %l120, !tbaa !24
  %t215 = icmp sge i64 %t214, 0
  br i1 %t215, label %bb89, label %bb90
bb88:
  br label %bb124
bb89:
  %t217 = load i64, ptr %l120, !tbaa !24
  %t218 = load i64, ptr %l121, !tbaa !24
  %t219 = icmp sle i64 %t217, %t218
  br i1 %t219, label %bb91, label %bb92
bb90:
  call void @__olang_check_failed(ptr @olang_loc_d8a12b6fe56d9e39_f2cc2d97d79a0415)
  unreachable
bb91:
  %t221 = load i64, ptr %l121, !tbaa !24
  %t222 = load i64, ptr %l122, !tbaa !24
  %t223 = icmp sle i64 %t221, %t222
  br i1 %t223, label %bb93, label %bb94
bb92:
  call void @__olang_check_failed(ptr @olang_loc_d8a12b6fe56d9e39_f2cc2d97d79a0415)
  unreachable
bb93:
  %t225 = getelementptr { i64, ptr }, ptr %l119, i32 0, i32 1
  %t226 = load ptr, ptr %t225, !tbaa !27
  %t227 = load i64, ptr %l120, !tbaa !24
  %t228 = load i64, ptr %l121, !tbaa !24
  %t229 = getelementptr i8, ptr %t226, i64 %t227
  %t230 = sub i64 %t228, %t227
  %t231 = insertvalue { i64, ptr } undef, i64 %t230, 0
  %t232 = insertvalue { i64, ptr } %t231, ptr %t229, 1
  %t234 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v1, ptr %v1, { i64, ptr } %t232)
  store { i64, ptr } %t234, ptr %l127
  br label %bb95
bb94:
  call void @__olang_check_failed(ptr @olang_loc_d8a12b6fe56d9e39_f2cc2d97d79a0415)
  unreachable
bb95:
  %t235 = load { i64, ptr }, ptr %l127, !tbaa !27
  store { i64, ptr } %t235, ptr %l8, !tbaa !27
  %t236 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t238 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %v1, ptr %s13, { i64, ptr } %t236, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d67, i32 0, i32 1) })
  %t239 = extractvalue { i32, i64 } %t238, 1
  %t240 = extractvalue { i32, i64 } %t238, 0
  store i32 %t240, ptr %l131
  %t241 = icmp ne i32 %t240, 0
  br i1 %t241, label %bb97, label %ok.242, !prof !99
ok.242:
  store i64 %t239, ptr %l130
  br label %bb96
bb96:
  %t243 = load i64, ptr %l130, !tbaa !24
  store i64 %t243, ptr %l128, !tbaa !24
  br label %bb99
bb97:
  br label %bb98
bb98:
  store i64 -1, ptr %l128, !tbaa !24
  br label %bb99
bb99:
  %t244 = load i64, ptr %l128, !tbaa !24
  store i64 %t244, ptr %l9, !tbaa !24
  %t245 = load i64, ptr %l9, !tbaa !24
  %t247 = icmp sge i64 %t245, 0
  br i1 %t247, label %bb100, label %bb101
bb100:
  %t249 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t249, ptr %l135, !tbaa !27
  %t250 = load i64, ptr %l9, !tbaa !24
  %t252 = add i64 %t250, 1
  %t254 = getelementptr { i64, ptr }, ptr %l135, i32 0, i32 1
  %t255 = load ptr, ptr %t254, !tbaa !27
  %t256 = getelementptr i8, ptr %t255, i64 %t252
  %t257 = load i8, ptr %t256, !tbaa !32
  %t259 = icmp eq i8 %t257, 37
  store i1 %t259, ptr %l134, !tbaa !21
  br label %bb102
bb101:
  store i1 false, ptr %l134, !tbaa !21
  br label %bb102
bb102:
  %t261 = load i1, ptr %l134, !tbaa !21
  br i1 %t261, label %bb103, label %bb104
bb103:
  %t262 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t262, ptr %l140, !tbaa !27
  %t263 = load i64, ptr %l9, !tbaa !24
  store i64 %t263, ptr %l141, !tbaa !24
  %t264 = load { i64, ptr }, ptr %l140, !tbaa !27
  %t265 = extractvalue { i64, ptr } %t264, 0
  store i64 %t265, ptr %l142, !tbaa !24
  %t266 = icmp sge i64 0, 0
  br i1 %t266, label %bb105, label %bb106
bb104:
  br label %bb112
bb105:
  %t268 = load i64, ptr %l141, !tbaa !24
  %t269 = icmp sle i64 0, %t268
  br i1 %t269, label %bb107, label %bb108
bb106:
  call void @__olang_check_failed(ptr @olang_loc_9d9b73c28e4e3d9a_299346768faaee36)
  unreachable
bb107:
  %t271 = load i64, ptr %l141, !tbaa !24
  %t272 = load i64, ptr %l142, !tbaa !24
  %t273 = icmp sle i64 %t271, %t272
  br i1 %t273, label %bb109, label %bb110
bb108:
  call void @__olang_check_failed(ptr @olang_loc_9d9b73c28e4e3d9a_299346768faaee36)
  unreachable
bb109:
  %t275 = getelementptr { i64, ptr }, ptr %l140, i32 0, i32 1
  %t276 = load ptr, ptr %t275, !tbaa !27
  %t277 = load i64, ptr %l141, !tbaa !24
  %t278 = getelementptr i8, ptr %t276, i64 0
  %t279 = sub i64 %t277, 0
  %t280 = insertvalue { i64, ptr } undef, i64 %t279, 0
  %t281 = insertvalue { i64, ptr } %t280, ptr %t278, 1
  %t283 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrimEnd(ptr %v1, ptr %s13, { i64, ptr } %t281)
  store { i64, ptr } %t283, ptr %l147
  br label %bb111
bb110:
  call void @__olang_check_failed(ptr @olang_loc_9d9b73c28e4e3d9a_299346768faaee36)
  unreachable
bb111:
  %t284 = load { i64, ptr }, ptr %l147, !tbaa !27
  store { i64, ptr } %t284, ptr %l8, !tbaa !27
  br label %bb112
bb112:
  %t285 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t287 = extractvalue { i64, ptr } %t285, 0
  %t289 = icmp sgt i64 %t287, 0
  br i1 %t289, label %bb113, label %bb114
bb113:
  %t291 = load i1, ptr %l5, !tbaa !21
  %t293 = xor i1 %t291, true
  br i1 %t293, label %bb115, label %bb116
bb114:
  br label %bb120
bb115:
  store %olang.scope zeroinitializer, ptr %s16
  %t295 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s16, ptr %t295, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d68, i32 0, i32 1) })
  br label %bb117
bb116:
  br label %bb118
bb117:
  call void @__olang_scope_close(ptr %s16)
  br label %bb118
bb118:
  %t297 = load ptr, ptr %l0, !tbaa !29
  %t298 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t298, ptr %l155, !tbaa !27
  %t299 = load { i64, ptr }, ptr %l155, !tbaa !27
  %t300 = extractvalue { i64, ptr } %t299, 1
  %t301 = call ptr @__olang_scope_of(ptr %t300, ptr null)
  %t302 = ptrtoint ptr %t301 to i64
  %t304 = inttoptr i64 %t302 to ptr
  %t306 = load { i64, ptr }, ptr %l155, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %t304, ptr %t297, { i64, ptr } %t306)
  br label %bb119
bb119:
  br label %bb120
bb120:
  store i1 false, ptr %l5, !tbaa !21
  %t307 = load i64, ptr %l6, !tbaa !24
  %t309 = add i64 %t307, 1
  store i64 %t309, ptr %l4, !tbaa !24
  %t311 = load i8, ptr %l7, !tbaa !22
  %t313 = icmp eq i8 %t311, 41
  br i1 %t313, label %bb121, label %bb122
bb121:
  call void @__olang_scope_close(ptr %s13)
  br label %bb129
bb122:
  br label %bb123
bb123:
  call void @__olang_scope_close(ptr %s13)
  br label %bb124
bb124:
  br label %bb125
bb125:
  br label %bb126
bb126:
  br label %bb127
bb127:
  %t315 = load i64, ptr %l6, !tbaa !24
  %t317 = add i64 %t315, 1
  store i64 %t317, ptr %l6, !tbaa !24
  br label %bb128
bb128:
  br label %bb53
bb129:
  %t319 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t319, ptr %l163, !tbaa !27
  %t320 = load i64, ptr %l6, !tbaa !24
  %t322 = add i64 %t320, 1
  store i64 %t322, ptr %l165, !tbaa !24
  %t323 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t326 = extractvalue { i64, ptr } %t323, 0
  store i64 %t326, ptr %l168, !tbaa !24
  %t327 = load { i64, ptr }, ptr %l163, !tbaa !27
  %t328 = extractvalue { i64, ptr } %t327, 0
  store i64 %t328, ptr %l169, !tbaa !24
  %t329 = load i64, ptr %l165, !tbaa !24
  %t330 = icmp sge i64 %t329, 0
  br i1 %t330, label %bb130, label %bb131
bb130:
  %t332 = load i64, ptr %l165, !tbaa !24
  %t333 = load i64, ptr %l168, !tbaa !24
  %t334 = icmp sle i64 %t332, %t333
  br i1 %t334, label %bb132, label %bb133
bb131:
  call void @__olang_check_failed(ptr @olang_loc_9424fbeaf4790ef7_29a43c91e82e5293)
  unreachable
bb132:
  %t336 = load i64, ptr %l168, !tbaa !24
  %t337 = load i64, ptr %l169, !tbaa !24
  %t338 = icmp sle i64 %t336, %t337
  br i1 %t338, label %bb134, label %bb135
bb133:
  call void @__olang_check_failed(ptr @olang_loc_9424fbeaf4790ef7_29a43c91e82e5293)
  unreachable
bb134:
  %t340 = getelementptr { i64, ptr }, ptr %l163, i32 0, i32 1
  %t341 = load ptr, ptr %t340, !tbaa !27
  %t342 = load i64, ptr %l165, !tbaa !24
  %t343 = load i64, ptr %l168, !tbaa !24
  %t344 = getelementptr i8, ptr %t341, i64 %t342
  %t345 = sub i64 %t343, %t342
  %t346 = insertvalue { i64, ptr } undef, i64 %t345, 0
  %t347 = insertvalue { i64, ptr } %t346, ptr %t344, 1
  store { i64, ptr } %t347, ptr %l10, !tbaa !27
  %t349 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t351 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %v1, ptr %s3, { i64, ptr } %t349, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d69, i32 0, i32 1) })
  %t352 = extractvalue { i32, i64 } %t351, 1
  %t353 = extractvalue { i32, i64 } %t351, 0
  store i32 %t353, ptr %l177
  %t354 = icmp ne i32 %t353, 0
  br i1 %t354, label %bb137, label %ok.355, !prof !99
ok.355:
  store i64 %t352, ptr %l176
  br label %bb136
bb135:
  call void @__olang_check_failed(ptr @olang_loc_9424fbeaf4790ef7_29a43c91e82e5293)
  unreachable
bb136:
  %t356 = load i64, ptr %l176, !tbaa !24
  store i64 %t356, ptr %l174, !tbaa !24
  br label %bb139
bb137:
  br label %bb138
bb138:
  %t357 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t359 = extractvalue { i64, ptr } %t357, 0
  store i64 %t359, ptr %l174, !tbaa !24
  br label %bb139
bb139:
  %t361 = load i64, ptr %l174, !tbaa !24
  %t362 = load ptr, ptr %l0, !tbaa !29
  store ptr %t362, ptr %l180, !tbaa !29
  %t363 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t363, ptr %l181, !tbaa !27
  store i64 %t361, ptr %l182, !tbaa !24
  %t365 = load { i64, ptr }, ptr %l181, !tbaa !27
  %t366 = extractvalue { i64, ptr } %t365, 0
  store i64 %t366, ptr %l183, !tbaa !24
  %t367 = icmp sge i64 0, 0
  br i1 %t367, label %bb140, label %bb141
bb140:
  %t369 = load i64, ptr %l182, !tbaa !24
  %t370 = icmp sle i64 0, %t369
  br i1 %t370, label %bb142, label %bb143
bb141:
  call void @__olang_check_failed(ptr @olang_loc_15c1087a8dcee578_9616249aba3f0cc)
  unreachable
bb142:
  %t372 = load i64, ptr %l182, !tbaa !24
  %t373 = load i64, ptr %l183, !tbaa !24
  %t374 = icmp sle i64 %t372, %t373
  br i1 %t374, label %bb144, label %bb145
bb143:
  call void @__olang_check_failed(ptr @olang_loc_15c1087a8dcee578_9616249aba3f0cc)
  unreachable
bb144:
  %t376 = getelementptr { i64, ptr }, ptr %l181, i32 0, i32 1
  %t377 = load ptr, ptr %t376, !tbaa !27
  %t378 = load i64, ptr %l182, !tbaa !24
  %t379 = getelementptr i8, ptr %t377, i64 0
  %t380 = sub i64 %t378, 0
  %t381 = insertvalue { i64, ptr } undef, i64 %t380, 0
  %t382 = insertvalue { i64, ptr } %t381, ptr %t379, 1
  %t384 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrimEnd(ptr %v1, ptr %s3, { i64, ptr } %t382)
  store { i64, ptr } %t384, ptr %l188
  br label %bb146
bb145:
  call void @__olang_check_failed(ptr @olang_loc_15c1087a8dcee578_9616249aba3f0cc)
  unreachable
bb146:
  %t385 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d70, i32 0, i32 1) }, 1
  %t386 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d70, i32 0, i32 1) }, 0
  %t387 = load { i64, ptr }, ptr %l188, !tbaa !27
  %t388 = extractvalue { i64, ptr } %t387, 1
  %t389 = extractvalue { i64, ptr } %t387, 0
  %t390 = add i64 %t386, %t389
  %t391 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d71, i32 0, i32 1) }, 1
  %t392 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d71, i32 0, i32 1) }, 0
  %t393 = add i64 %t390, %t392
  %t394 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t393)
  call void @olang_textcopy(ptr %t394, ptr %t385, i64 %t386)
  %t395 = getelementptr i8, ptr %t394, i64 %t386
  call void @olang_textcopy(ptr %t395, ptr %t388, i64 %t389)
  %t396 = getelementptr i8, ptr %t395, i64 %t389
  call void @olang_textcopy(ptr %t396, ptr %t391, i64 %t392)
  %t397 = insertvalue { i64, ptr } undef, i64 %t393, 0
  %t398 = insertvalue { i64, ptr } %t397, ptr %t394, 1
  %t400 = extractvalue { i64, ptr } %t398, 0
  %t401 = extractvalue { i64, ptr } %t398, 1
  %t402 = mul i64 %t400, 1
  %t403 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t402)
  call void @llvm.memcpy.p0.p0.i64(ptr %t403, ptr %t401, i64 %t402, i1 false)
  %t404 = insertvalue { i64, ptr } undef, i64 %t400, 0
  %t405 = insertvalue { i64, ptr } %t404, ptr %t403, 1
  %t406 = load ptr, ptr %l180, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s3, ptr %t406, { i64, ptr } %t405)
  br label %bb147
bb147:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb148:
  %t408 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t410 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s0, { i64, ptr } %t408, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d72, i32 0, i32 1) })
  store i1 %t410, ptr %l192
  br label %bb149
bb149:
  %t411 = load i1, ptr %l192, !tbaa !21
  br i1 %t411, label %bb150, label %bb151
bb150:
  store %olang.scope zeroinitializer, ptr %s19
  %t412 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t414 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v1, ptr %s19, { i64, ptr } %t412, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d73, i32 0, i32 1) })
  %t415 = extractvalue { i32, i64 } %t414, 1
  %t416 = extractvalue { i32, i64 } %t414, 0
  store i32 %t416, ptr %l196
  %t417 = icmp ne i32 %t416, 0
  br i1 %t417, label %bb153, label %ok.418, !prof !99
ok.418:
  store i64 %t415, ptr %l195
  br label %bb152
bb151:
  br label %bb221
bb152:
  %t419 = load i64, ptr %l195, !tbaa !24
  store i64 %t419, ptr %l193, !tbaa !24
  br label %bb155
bb153:
  br label %bb154
bb154:
  call void @__olang_scope_close(ptr %s19)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb155:
  %t420 = load i64, ptr %l193, !tbaa !24
  store i64 %t420, ptr %l12, !tbaa !24
  %t421 = load ptr, ptr %l0, !tbaa !29
  store ptr %t421, ptr %l197, !tbaa !29
  %t422 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t422, ptr %l198, !tbaa !27
  %t423 = load i64, ptr %l12, !tbaa !24
  store i64 %t423, ptr %l199, !tbaa !24
  %t424 = load { i64, ptr }, ptr %l198, !tbaa !27
  %t425 = extractvalue { i64, ptr } %t424, 0
  store i64 %t425, ptr %l200, !tbaa !24
  %t426 = icmp sge i64 0, 0
  br i1 %t426, label %bb156, label %bb157
bb156:
  %t428 = load i64, ptr %l199, !tbaa !24
  %t429 = icmp sle i64 0, %t428
  br i1 %t429, label %bb158, label %bb159
bb157:
  call void @__olang_check_failed(ptr @olang_loc_37b9d9dde30c0555_b630301b751c84f9)
  unreachable
bb158:
  %t431 = load i64, ptr %l199, !tbaa !24
  %t432 = load i64, ptr %l200, !tbaa !24
  %t433 = icmp sle i64 %t431, %t432
  br i1 %t433, label %bb160, label %bb161
bb159:
  call void @__olang_check_failed(ptr @olang_loc_37b9d9dde30c0555_b630301b751c84f9)
  unreachable
bb160:
  %t435 = getelementptr { i64, ptr }, ptr %l198, i32 0, i32 1
  %t436 = load ptr, ptr %t435, !tbaa !27
  %t437 = load i64, ptr %l199, !tbaa !24
  %t438 = getelementptr i8, ptr %t436, i64 0
  %t439 = sub i64 %t437, 0
  %t440 = insertvalue { i64, ptr } undef, i64 %t439, 0
  %t441 = insertvalue { i64, ptr } %t440, ptr %t438, 1
  %t443 = extractvalue { i64, ptr } %t441, 1
  %t444 = extractvalue { i64, ptr } %t441, 0
  %t445 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d74, i32 0, i32 1) }, 1
  %t446 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d74, i32 0, i32 1) }, 0
  %t447 = add i64 %t444, %t446
  %t448 = call ptr @__olang_scope_alloc(ptr %s19, i64 %t447)
  call void @olang_textcopy(ptr %t448, ptr %t443, i64 %t444)
  %t449 = getelementptr i8, ptr %t448, i64 %t444
  call void @olang_textcopy(ptr %t449, ptr %t445, i64 %t446)
  %t450 = insertvalue { i64, ptr } undef, i64 %t447, 0
  %t451 = insertvalue { i64, ptr } %t450, ptr %t448, 1
  %t453 = extractvalue { i64, ptr } %t451, 0
  %t454 = extractvalue { i64, ptr } %t451, 1
  %t455 = mul i64 %t453, 1
  %t456 = call ptr @__olang_scope_alloc(ptr %s19, i64 %t455)
  call void @llvm.memcpy.p0.p0.i64(ptr %t456, ptr %t454, i64 %t455, i1 false)
  %t457 = insertvalue { i64, ptr } undef, i64 %t453, 0
  %t458 = insertvalue { i64, ptr } %t457, ptr %t456, 1
  %t459 = load ptr, ptr %l197, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s19, ptr %t459, { i64, ptr } %t458)
  br label %bb162
bb161:
  call void @__olang_check_failed(ptr @olang_loc_37b9d9dde30c0555_b630301b751c84f9)
  unreachable
bb162:
  %t461 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t461, ptr %l207, !tbaa !27
  %t462 = load i64, ptr %l12, !tbaa !24
  %t464 = add i64 %t462, 3
  store i64 %t464, ptr %l209, !tbaa !24
  %t465 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t468 = extractvalue { i64, ptr } %t465, 0
  store i64 %t468, ptr %l212, !tbaa !24
  %t469 = load { i64, ptr }, ptr %l207, !tbaa !27
  %t470 = extractvalue { i64, ptr } %t469, 0
  store i64 %t470, ptr %l213, !tbaa !24
  %t471 = load i64, ptr %l209, !tbaa !24
  %t472 = icmp sge i64 %t471, 0
  br i1 %t472, label %bb163, label %bb164
bb163:
  %t474 = load i64, ptr %l209, !tbaa !24
  %t475 = load i64, ptr %l212, !tbaa !24
  %t476 = icmp sle i64 %t474, %t475
  br i1 %t476, label %bb165, label %bb166
bb164:
  call void @__olang_check_failed(ptr @olang_loc_2446b89a84efdb76_2c0483cfef229c5a)
  unreachable
bb165:
  %t478 = load i64, ptr %l212, !tbaa !24
  %t479 = load i64, ptr %l213, !tbaa !24
  %t480 = icmp sle i64 %t478, %t479
  br i1 %t480, label %bb167, label %bb168
bb166:
  call void @__olang_check_failed(ptr @olang_loc_2446b89a84efdb76_2c0483cfef229c5a)
  unreachable
bb167:
  %t482 = getelementptr { i64, ptr }, ptr %l207, i32 0, i32 1
  %t483 = load ptr, ptr %t482, !tbaa !27
  %t484 = load i64, ptr %l209, !tbaa !24
  %t485 = load i64, ptr %l212, !tbaa !24
  %t486 = getelementptr i8, ptr %t483, i64 %t484
  %t487 = sub i64 %t485, %t484
  %t488 = insertvalue { i64, ptr } undef, i64 %t487, 0
  %t489 = insertvalue { i64, ptr } %t488, ptr %t486, 1
  store { i64, ptr } %t489, ptr %l13, !tbaa !27
  %t491 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t493 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s19, { i64, ptr } %t491, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d75, i32 0, i32 1) })
  store i1 %t493, ptr %l219
  br label %bb169
bb168:
  call void @__olang_check_failed(ptr @olang_loc_2446b89a84efdb76_2c0483cfef229c5a)
  unreachable
bb169:
  %t494 = load i1, ptr %l219, !tbaa !21
  br i1 %t494, label %bb170, label %bb171
bb170:
  store %olang.scope zeroinitializer, ptr %s22
  %t495 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t497 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v1, ptr %s22, { i64, ptr } %t495, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d76, i32 0, i32 1) })
  %t498 = extractvalue { i32, i64 } %t497, 1
  %t499 = extractvalue { i32, i64 } %t497, 0
  store i32 %t499, ptr %l223
  %t500 = icmp ne i32 %t499, 0
  br i1 %t500, label %bb173, label %ok.501, !prof !99
ok.501:
  store i64 %t498, ptr %l222
  br label %bb172
bb171:
  br label %bb189
bb172:
  %t502 = load i64, ptr %l222, !tbaa !24
  store i64 %t502, ptr %l220, !tbaa !24
  br label %bb175
bb173:
  br label %bb174
bb174:
  call void @__olang_scope_close(ptr %s22)
  call void @__olang_scope_close(ptr %s19)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb175:
  %t503 = load i64, ptr %l220, !tbaa !24
  store i64 %t503, ptr %l14, !tbaa !24
  %t504 = load ptr, ptr %l0, !tbaa !29
  store ptr %t504, ptr %l224, !tbaa !29
  %t505 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t505, ptr %l225, !tbaa !27
  %t506 = load i64, ptr %l14, !tbaa !24
  %t508 = add i64 %t506, 1
  store i64 %t508, ptr %l227, !tbaa !24
  %t509 = load { i64, ptr }, ptr %l225, !tbaa !27
  %t510 = extractvalue { i64, ptr } %t509, 0
  store i64 %t510, ptr %l228, !tbaa !24
  %t511 = icmp sge i64 0, 0
  br i1 %t511, label %bb176, label %bb177
bb176:
  %t513 = load i64, ptr %l227, !tbaa !24
  %t514 = icmp sle i64 0, %t513
  br i1 %t514, label %bb178, label %bb179
bb177:
  call void @__olang_check_failed(ptr @olang_loc_d4a9c3df34bd8bd3_6b2d8c232432bdb7)
  unreachable
bb178:
  %t516 = load i64, ptr %l227, !tbaa !24
  %t517 = load i64, ptr %l228, !tbaa !24
  %t518 = icmp sle i64 %t516, %t517
  br i1 %t518, label %bb180, label %bb181
bb179:
  call void @__olang_check_failed(ptr @olang_loc_d4a9c3df34bd8bd3_6b2d8c232432bdb7)
  unreachable
bb180:
  %t520 = getelementptr { i64, ptr }, ptr %l225, i32 0, i32 1
  %t521 = load ptr, ptr %t520, !tbaa !27
  %t522 = load i64, ptr %l227, !tbaa !24
  %t523 = getelementptr i8, ptr %t521, i64 0
  %t524 = sub i64 %t522, 0
  %t525 = insertvalue { i64, ptr } undef, i64 %t524, 0
  %t526 = insertvalue { i64, ptr } %t525, ptr %t523, 1
  %t528 = extractvalue { i64, ptr } %t526, 1
  %t529 = extractvalue { i64, ptr } %t526, 0
  %t530 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 1
  %t531 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 0
  %t532 = add i64 %t529, %t531
  %t533 = call ptr @__olang_scope_alloc(ptr %s22, i64 %t532)
  call void @olang_textcopy(ptr %t533, ptr %t528, i64 %t529)
  %t534 = getelementptr i8, ptr %t533, i64 %t529
  call void @olang_textcopy(ptr %t534, ptr %t530, i64 %t531)
  %t535 = insertvalue { i64, ptr } undef, i64 %t532, 0
  %t536 = insertvalue { i64, ptr } %t535, ptr %t533, 1
  %t538 = extractvalue { i64, ptr } %t536, 0
  %t539 = extractvalue { i64, ptr } %t536, 1
  %t540 = mul i64 %t538, 1
  %t541 = call ptr @__olang_scope_alloc(ptr %s22, i64 %t540)
  call void @llvm.memcpy.p0.p0.i64(ptr %t541, ptr %t539, i64 %t540, i1 false)
  %t542 = insertvalue { i64, ptr } undef, i64 %t538, 0
  %t543 = insertvalue { i64, ptr } %t542, ptr %t541, 1
  %t544 = load ptr, ptr %l224, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s22, ptr %t544, { i64, ptr } %t543)
  br label %bb182
bb181:
  call void @__olang_check_failed(ptr @olang_loc_d4a9c3df34bd8bd3_6b2d8c232432bdb7)
  unreachable
bb182:
  %t546 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t546, ptr %l235, !tbaa !27
  %t547 = load i64, ptr %l14, !tbaa !24
  %t549 = add i64 %t547, 2
  store i64 %t549, ptr %l237, !tbaa !24
  %t550 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t553 = extractvalue { i64, ptr } %t550, 0
  store i64 %t553, ptr %l240, !tbaa !24
  %t554 = load { i64, ptr }, ptr %l235, !tbaa !27
  %t555 = extractvalue { i64, ptr } %t554, 0
  store i64 %t555, ptr %l241, !tbaa !24
  %t556 = load i64, ptr %l237, !tbaa !24
  %t557 = icmp sge i64 %t556, 0
  br i1 %t557, label %bb183, label %bb184
bb183:
  %t559 = load i64, ptr %l237, !tbaa !24
  %t560 = load i64, ptr %l240, !tbaa !24
  %t561 = icmp sle i64 %t559, %t560
  br i1 %t561, label %bb185, label %bb186
bb184:
  call void @__olang_check_failed(ptr @olang_loc_885af16d4a3d8d64_d0eb96c61f9dafb0)
  unreachable
bb185:
  %t563 = load i64, ptr %l240, !tbaa !24
  %t564 = load i64, ptr %l241, !tbaa !24
  %t565 = icmp sle i64 %t563, %t564
  br i1 %t565, label %bb187, label %bb188
bb186:
  call void @__olang_check_failed(ptr @olang_loc_885af16d4a3d8d64_d0eb96c61f9dafb0)
  unreachable
bb187:
  %t567 = getelementptr { i64, ptr }, ptr %l235, i32 0, i32 1
  %t568 = load ptr, ptr %t567, !tbaa !27
  %t569 = load i64, ptr %l237, !tbaa !24
  %t570 = load i64, ptr %l240, !tbaa !24
  %t571 = getelementptr i8, ptr %t568, i64 %t569
  %t572 = sub i64 %t570, %t569
  %t573 = insertvalue { i64, ptr } undef, i64 %t572, 0
  %t574 = insertvalue { i64, ptr } %t573, ptr %t571, 1
  store { i64, ptr } %t574, ptr %l13, !tbaa !27
  call void @__olang_scope_close(ptr %s22)
  br label %bb189
bb188:
  call void @__olang_check_failed(ptr @olang_loc_885af16d4a3d8d64_d0eb96c61f9dafb0)
  unreachable
bb189:
  %t576 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t578 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s19, { i64, ptr } %t576, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d78, i32 0, i32 1) })
  store i1 %t578, ptr %l247
  br label %bb190
bb190:
  %t579 = load i1, ptr %l247, !tbaa !21
  br i1 %t579, label %bb191, label %bb192
bb191:
  %t580 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t580, ptr %l248, !tbaa !27
  %t581 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t584 = extractvalue { i64, ptr } %t581, 0
  store i64 %t584, ptr %l251, !tbaa !24
  %t585 = load { i64, ptr }, ptr %l248, !tbaa !27
  %t586 = extractvalue { i64, ptr } %t585, 0
  store i64 %t586, ptr %l252, !tbaa !24
  %t587 = icmp sge i64 13, 0
  br i1 %t587, label %bb193, label %bb194
bb192:
  br label %bb199
bb193:
  %t589 = load i64, ptr %l251, !tbaa !24
  %t590 = icmp sle i64 13, %t589
  br i1 %t590, label %bb195, label %bb196
bb194:
  call void @__olang_check_failed(ptr @olang_loc_383c318151cd7051_6709cfbf24f79c8d)
  unreachable
bb195:
  %t592 = load i64, ptr %l251, !tbaa !24
  %t593 = load i64, ptr %l252, !tbaa !24
  %t594 = icmp sle i64 %t592, %t593
  br i1 %t594, label %bb197, label %bb198
bb196:
  call void @__olang_check_failed(ptr @olang_loc_383c318151cd7051_6709cfbf24f79c8d)
  unreachable
bb197:
  %t596 = getelementptr { i64, ptr }, ptr %l248, i32 0, i32 1
  %t597 = load ptr, ptr %t596, !tbaa !27
  %t598 = load i64, ptr %l251, !tbaa !24
  %t599 = getelementptr i8, ptr %t597, i64 13
  %t600 = sub i64 %t598, 13
  %t601 = insertvalue { i64, ptr } undef, i64 %t600, 0
  %t602 = insertvalue { i64, ptr } %t601, ptr %t599, 1
  store { i64, ptr } %t602, ptr %l13, !tbaa !27
  br label %bb199
bb198:
  call void @__olang_check_failed(ptr @olang_loc_383c318151cd7051_6709cfbf24f79c8d)
  unreachable
bb199:
  %t604 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t606 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v1, ptr %s19, { i64, ptr } %t604, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d79, i32 0, i32 1) })
  %t607 = extractvalue { i32, i64 } %t606, 1
  %t608 = extractvalue { i32, i64 } %t606, 0
  store i32 %t608, ptr %l260
  %t609 = icmp ne i32 %t608, 0
  br i1 %t609, label %bb201, label %ok.610, !prof !99
ok.610:
  store i64 %t607, ptr %l259
  br label %bb200
bb200:
  %t611 = load i64, ptr %l259, !tbaa !24
  store i64 %t611, ptr %l257, !tbaa !24
  br label %bb203
bb201:
  br label %bb202
bb202:
  %t612 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t614 = extractvalue { i64, ptr } %t612, 0
  store i64 %t614, ptr %l257, !tbaa !24
  br label %bb203
bb203:
  %t616 = load i64, ptr %l257, !tbaa !24
  store i64 %t616, ptr %l15, !tbaa !24
  %t617 = load i64, ptr %l15, !tbaa !24
  %t619 = add i64 %t617, 1
  %t620 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t622 = extractvalue { i64, ptr } %t620, 0
  %t625 = icmp slt i64 %t619, %t622
  br i1 %t625, label %bb204, label %bb205
bb204:
  %t627 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t628 = load i64, ptr %l15, !tbaa !24
  %t630 = add i64 %t628, 1
  %t633 = call i64 @compiler_2fruntime_2etypeEnd(ptr %v1, { i64, ptr } %t627, i64 %t630)
  store i64 %t633, ptr %l272
  br label %bb206
bb205:
  %t634 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t636 = extractvalue { i64, ptr } %t634, 0
  store i64 %t636, ptr %l268, !tbaa !24
  br label %bb207
bb206:
  %t638 = load i64, ptr %l272, !tbaa !24
  store i64 %t638, ptr %l268, !tbaa !24
  br label %bb207
bb207:
  %t639 = load i64, ptr %l268, !tbaa !24
  store i64 %t639, ptr %l16, !tbaa !24
  %t640 = load ptr, ptr %l0, !tbaa !29
  store ptr %t640, ptr %l275, !tbaa !29
  %t641 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t641, ptr %l276, !tbaa !27
  %t642 = load i64, ptr %l15, !tbaa !24
  %t644 = add i64 %t642, 1
  store i64 %t644, ptr %l278, !tbaa !24
  %t645 = load { i64, ptr }, ptr %l276, !tbaa !27
  %t646 = extractvalue { i64, ptr } %t645, 0
  store i64 %t646, ptr %l279, !tbaa !24
  %t647 = icmp sge i64 0, 0
  br i1 %t647, label %bb208, label %bb209
bb208:
  %t649 = load i64, ptr %l278, !tbaa !24
  %t650 = icmp sle i64 0, %t649
  br i1 %t650, label %bb210, label %bb211
bb209:
  call void @__olang_check_failed(ptr @olang_loc_b26c87ed9711b455_3749eb6f37e52fe9)
  unreachable
bb210:
  %t652 = load i64, ptr %l278, !tbaa !24
  %t653 = load i64, ptr %l279, !tbaa !24
  %t654 = icmp sle i64 %t652, %t653
  br i1 %t654, label %bb212, label %bb213
bb211:
  call void @__olang_check_failed(ptr @olang_loc_b26c87ed9711b455_3749eb6f37e52fe9)
  unreachable
bb212:
  %t656 = getelementptr { i64, ptr }, ptr %l276, i32 0, i32 1
  %t657 = load ptr, ptr %t656, !tbaa !27
  %t658 = load i64, ptr %l278, !tbaa !24
  %t659 = getelementptr i8, ptr %t657, i64 0
  %t660 = sub i64 %t658, 0
  %t661 = insertvalue { i64, ptr } undef, i64 %t660, 0
  %t662 = insertvalue { i64, ptr } %t661, ptr %t659, 1
  store { i64, ptr } %t662, ptr %l283, !tbaa !27
  %t663 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t663, ptr %l284, !tbaa !27
  %t664 = load i64, ptr %l15, !tbaa !24
  %t666 = add i64 %t664, 1
  store i64 %t666, ptr %l286, !tbaa !24
  %t667 = load i64, ptr %l16, !tbaa !24
  store i64 %t667, ptr %l287, !tbaa !24
  %t668 = load { i64, ptr }, ptr %l284, !tbaa !27
  %t669 = extractvalue { i64, ptr } %t668, 0
  store i64 %t669, ptr %l288, !tbaa !24
  %t670 = load i64, ptr %l286, !tbaa !24
  %t671 = icmp sge i64 %t670, 0
  br i1 %t671, label %bb214, label %bb215
bb213:
  call void @__olang_check_failed(ptr @olang_loc_b26c87ed9711b455_3749eb6f37e52fe9)
  unreachable
bb214:
  %t673 = load i64, ptr %l286, !tbaa !24
  %t674 = load i64, ptr %l287, !tbaa !24
  %t675 = icmp sle i64 %t673, %t674
  br i1 %t675, label %bb216, label %bb217
bb215:
  call void @__olang_check_failed(ptr @olang_loc_b26c87ed9711b455_3749eb6f37e52fe9)
  unreachable
bb216:
  %t677 = load i64, ptr %l287, !tbaa !24
  %t678 = load i64, ptr %l288, !tbaa !24
  %t679 = icmp sle i64 %t677, %t678
  br i1 %t679, label %bb218, label %bb219
bb217:
  call void @__olang_check_failed(ptr @olang_loc_b26c87ed9711b455_3749eb6f37e52fe9)
  unreachable
bb218:
  %t681 = getelementptr { i64, ptr }, ptr %l284, i32 0, i32 1
  %t682 = load ptr, ptr %t681, !tbaa !27
  %t683 = load i64, ptr %l286, !tbaa !24
  %t684 = load i64, ptr %l287, !tbaa !24
  %t685 = getelementptr i8, ptr %t682, i64 %t683
  %t686 = sub i64 %t684, %t683
  %t687 = insertvalue { i64, ptr } undef, i64 %t686, 0
  %t688 = insertvalue { i64, ptr } %t687, ptr %t685, 1
  %t689 = load { i64, ptr }, ptr %l283, !tbaa !27
  %t690 = extractvalue { i64, ptr } %t689, 1
  %t691 = extractvalue { i64, ptr } %t689, 0
  %t693 = extractvalue { i64, ptr } %t688, 1
  %t694 = extractvalue { i64, ptr } %t688, 0
  %t695 = add i64 %t691, %t694
  %t696 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d80, i32 0, i32 1) }, 1
  %t697 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d80, i32 0, i32 1) }, 0
  %t698 = add i64 %t695, %t697
  %t699 = call ptr @__olang_scope_alloc(ptr %s19, i64 %t698)
  call void @olang_textcopy(ptr %t699, ptr %t690, i64 %t691)
  %t700 = getelementptr i8, ptr %t699, i64 %t691
  call void @olang_textcopy(ptr %t700, ptr %t693, i64 %t694)
  %t701 = getelementptr i8, ptr %t700, i64 %t694
  call void @olang_textcopy(ptr %t701, ptr %t696, i64 %t697)
  %t702 = insertvalue { i64, ptr } undef, i64 %t698, 0
  %t703 = insertvalue { i64, ptr } %t702, ptr %t699, 1
  %t705 = extractvalue { i64, ptr } %t703, 0
  %t706 = extractvalue { i64, ptr } %t703, 1
  %t707 = mul i64 %t705, 1
  %t708 = call ptr @__olang_scope_alloc(ptr %s19, i64 %t707)
  call void @llvm.memcpy.p0.p0.i64(ptr %t708, ptr %t706, i64 %t707, i1 false)
  %t709 = insertvalue { i64, ptr } undef, i64 %t705, 0
  %t710 = insertvalue { i64, ptr } %t709, ptr %t708, 1
  %t711 = load ptr, ptr %l275, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s19, ptr %t711, { i64, ptr } %t710)
  br label %bb220
bb219:
  call void @__olang_check_failed(ptr @olang_loc_b26c87ed9711b455_3749eb6f37e52fe9)
  unreachable
bb220:
  call void @__olang_scope_close(ptr %s19)
  br label %bb221
bb221:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fruntime_2edirective(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l5 = alloca i1
  %l8 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l18 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i32
  %l24 = alloca { i64, ptr }
  %l25 = alloca i64
  %l26 = alloca i64
  %l32 = alloca i1
  %l35 = alloca i1
  %l38 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d81, i32 0, i32 1) })
  store i1 %t3, ptr %l5
  br label %bb1
bb1:
  %t4 = load i1, ptr %l5, !tbaa !21
  %t5 = xor i1 %t4, true
  br i1 %t5, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t8 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t8, ptr %l8, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t9, 0
  store i64 %t12, ptr %l11, !tbaa !24
  %t13 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t13, 0
  store i64 %t14, ptr %l12, !tbaa !24
  %t15 = icmp sge i64 3, 0
  br i1 %t15, label %bb5, label %bb6
bb5:
  %t17 = load i64, ptr %l11, !tbaa !24
  %t18 = icmp sle i64 3, %t17
  br i1 %t18, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_6a493f8daef1bb51_6724bcad8f2aca45)
  unreachable
bb7:
  %t20 = load i64, ptr %l11, !tbaa !24
  %t21 = load i64, ptr %l12, !tbaa !24
  %t22 = icmp sle i64 %t20, %t21
  br i1 %t22, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_6a493f8daef1bb51_6724bcad8f2aca45)
  unreachable
bb9:
  %t24 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = load i64, ptr %l11, !tbaa !24
  %t27 = getelementptr i8, ptr %t25, i64 3
  %t28 = sub i64 %t26, 3
  %t29 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t30 = insertvalue { i64, ptr } %t29, ptr %t27, 1
  store { i64, ptr } %t30, ptr %l1, !tbaa !27
  %t32 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t32, ptr %l2, !tbaa !27
  %t34 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t36 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %s0, { i64, ptr } %t34, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d82, i32 0, i32 1) })
  %t37 = extractvalue { i32, i64 } %t36, 1
  %t38 = extractvalue { i32, i64 } %t36, 0
  store i32 %t38, ptr %l21
  %t39 = icmp ne i32 %t38, 0
  br i1 %t39, label %bb12, label %ok.40, !prof !99
ok.40:
  store i64 %t37, ptr %l20
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_6a493f8daef1bb51_6724bcad8f2aca45)
  unreachable
bb11:
  %t41 = load i64, ptr %l20, !tbaa !24
  store i64 %t41, ptr %l18, !tbaa !24
  br label %bb14
bb12:
  br label %bb13
bb13:
  store i64 -1, ptr %l18, !tbaa !24
  br label %bb14
bb14:
  %t42 = load i64, ptr %l18, !tbaa !24
  store i64 %t42, ptr %l3, !tbaa !24
  %t43 = load i64, ptr %l3, !tbaa !24
  %t45 = icmp sge i64 %t43, 0
  br i1 %t45, label %bb15, label %bb16
bb15:
  %t47 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t47, ptr %l24, !tbaa !27
  %t48 = load i64, ptr %l3, !tbaa !24
  store i64 %t48, ptr %l25, !tbaa !24
  %t49 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t50 = extractvalue { i64, ptr } %t49, 0
  store i64 %t50, ptr %l26, !tbaa !24
  %t51 = icmp sge i64 0, 0
  br i1 %t51, label %bb17, label %bb18
bb16:
  br label %bb23
bb17:
  %t53 = load i64, ptr %l25, !tbaa !24
  %t54 = icmp sle i64 0, %t53
  br i1 %t54, label %bb19, label %bb20
bb18:
  call void @__olang_check_failed(ptr @olang_loc_ba67ff79a761d864_bc768279035b5e68)
  unreachable
bb19:
  %t56 = load i64, ptr %l25, !tbaa !24
  %t57 = load i64, ptr %l26, !tbaa !24
  %t58 = icmp sle i64 %t56, %t57
  br i1 %t58, label %bb21, label %bb22
bb20:
  call void @__olang_check_failed(ptr @olang_loc_ba67ff79a761d864_bc768279035b5e68)
  unreachable
bb21:
  %t60 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !27
  %t62 = load i64, ptr %l25, !tbaa !24
  %t63 = getelementptr i8, ptr %t61, i64 0
  %t64 = sub i64 %t62, 0
  %t65 = insertvalue { i64, ptr } undef, i64 %t64, 0
  %t66 = insertvalue { i64, ptr } %t65, ptr %t63, 1
  store { i64, ptr } %t66, ptr %l2, !tbaa !27
  br label %bb23
bb22:
  call void @__olang_check_failed(ptr @olang_loc_ba67ff79a761d864_bc768279035b5e68)
  unreachable
bb23:
  %t68 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t70 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t68, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d83, i32 0, i32 1) })
  store i1 %t70, ptr %l32
  br label %bb24
bb24:
  %t71 = load i1, ptr %l32, !tbaa !21
  br i1 %t71, label %bb25, label %bb26
bb25:
  call void @__olang_scope_close(ptr %s0)
  store i64 0, ptr %rv
  br label %ret
bb26:
  br label %bb27
bb27:
  %t73 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t75 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t73, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d84, i32 0, i32 1) })
  store i1 %t75, ptr %l35
  br label %bb28
bb28:
  %t76 = load i1, ptr %l35, !tbaa !21
  br i1 %t76, label %bb29, label %bb30
bb29:
  call void @__olang_scope_close(ptr %s0)
  store i64 1, ptr %rv
  br label %ret
bb30:
  br label %bb31
bb31:
  %t78 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t80 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t78, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d85, i32 0, i32 1) })
  store i1 %t80, ptr %l38
  br label %bb32
bb32:
  %t81 = load i1, ptr %l38, !tbaa !21
  br i1 %t81, label %bb33, label %bb34
bb33:
  call void @__olang_scope_close(ptr %s0)
  store i64 2, ptr %rv
  br label %ret
bb34:
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i32, i64 } @compiler_2fruntime_2efact(ptr %v0, { i64, ptr } %a0, i64 %a1) #0 {
entry:
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca [15 x { i64, ptr }]
  %l13 = alloca i64
  %l16 = alloca i64
  %l37 = alloca i1
  %l40 = alloca i64
  %rv = alloca { i32, i64 }
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  call void @llvm.memmove.p0.p0.i64(ptr %l8, ptr @G_2ecompiler_2fruntime_2eFactNames, i64 240, i1 false)
  %t1 = load [15 x { i64, ptr }], ptr %l8
  store i64 15, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t3 = load i64, ptr %l3, !tbaa !24
  %t4 = load i64, ptr %l2, !tbaa !24
  %t7 = icmp sgt i64 %t3, %t4
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load i64, ptr %l4, !tbaa !24
  %t11 = icmp sgt i64 %t9, 0
  br i1 %t11, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l13, !tbaa !24
  br label %bb6
bb3:
  %t13 = load i64, ptr %l3, !tbaa !24
  %t14 = load i64, ptr %l2, !tbaa !24
  %t17 = sub i64 %t13, %t14
  %t18 = load i64, ptr %l4, !tbaa !24
  %t21 = add i64 %t17, %t18
  %t23 = sub i64 %t21, 1
  %t24 = load i64, ptr %l4, !tbaa !24
  %t27 = sdiv i64 %t23, %t24
  store i64 %t27, ptr %l16, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l16, !tbaa !24
  br label %bb5
bb5:
  %t29 = load i64, ptr %l16, !tbaa !24
  store i64 %t29, ptr %l13, !tbaa !24
  br label %bb6
bb6:
  %t30 = load i64, ptr %l13, !tbaa !24
  store i64 %t30, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb7
bb7:
  %t31 = load i64, ptr %l6, !tbaa !24
  %t32 = load i64, ptr %l5, !tbaa !24
  %t35 = icmp slt i64 %t31, %t32
  %t37 = xor i1 %t35, true
  br i1 %t37, label %bb8, label %bb9
bb8:
  br label %bb19
bb9:
  br label %bb10
bb10:
  %t39 = load i64, ptr %l2, !tbaa !24
  %t40 = load i64, ptr %l6, !tbaa !24
  %t41 = load i64, ptr %l4, !tbaa !24
  %t44 = mul i64 %t40, %t41
  %t47 = add i64 %t39, %t44
  store i64 %t47, ptr %l7, !tbaa !24
  %t49 = load i64, ptr %l7, !tbaa !24
  %t51 = getelementptr [15 x { i64, ptr }], ptr @G_2ecompiler_2fruntime_2eFactNames, i64 0, i64 %t49
  %t52 = load { i64, ptr }, ptr %t51, !tbaa !37
  %t54 = load ptr, ptr @__olang_prog_scope
  %t57 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %t54, ptr %v0, { i64, ptr } %t52, { i64, ptr } %a0)
  store i1 %t57, ptr %l37
  br label %bb11
bb11:
  %t58 = load i1, ptr %l37, !tbaa !21
  br i1 %t58, label %bb12, label %bb13
bb12:
  %t61 = icmp eq i64 %a1, 0
  br i1 %t61, label %bb14, label %bb15
bb13:
  br label %bb17
bb14:
  %t63 = load i64, ptr %l7, !tbaa !24
  %t65 = getelementptr [15 x i64], ptr @G_2ecompiler_2fruntime_2eFactX86, i64 0, i64 %t63
  %t66 = load i64, ptr %t65, !tbaa !34
  store i64 %t66, ptr %l40, !tbaa !24
  br label %bb16
bb15:
  %t68 = load i64, ptr %l7, !tbaa !24
  %t70 = getelementptr [15 x i64], ptr @G_2ecompiler_2fruntime_2eFactArm, i64 0, i64 %t68
  %t71 = load i64, ptr %t70, !tbaa !34
  store i64 %t71, ptr %l40, !tbaa !24
  br label %bb16
bb16:
  %t73 = load i64, ptr %l40, !tbaa !24
  %t74 = insertvalue { i32, i64 } zeroinitializer, i64 %t73, 1
  store { i32, i64 } %t74, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t75 = load i64, ptr %l6, !tbaa !24
  %t77 = add i64 %t75, 1
  store i64 %t77, ptr %l6, !tbaa !24
  br label %bb7
bb19:
  %t80 = insertvalue { i32, i64 } zeroinitializer, i32 65536, 0
  store { i32, i64 } %t80, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i64 }, ptr %rv
  ret { i32, i64 } %rr
}

define dso_local i32 @compiler_2fruntime_2emalformed(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l8 = alloca i32
  %l10 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t4 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d86, i32 0, i32 1) }, 1
  %t5 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d86, i32 0, i32 1) }, 0
  %t7 = extractvalue { i64, ptr } %a0, 1
  %t8 = extractvalue { i64, ptr } %a0, 0
  %t9 = add i64 %t5, %t8
  %t10 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d87, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d87, i32 0, i32 1) }, 0
  %t12 = add i64 %t9, %t11
  %t14 = call i64 @__olang_fmt_i64(ptr null, i64 %a1)
  %t15 = add i64 %t12, %t14
  %t16 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d88, i32 0, i32 1) }, 1
  %t17 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d88, i32 0, i32 1) }, 0
  %t18 = add i64 %t15, %t17
  %t20 = extractvalue { i64, ptr } %a2, 1
  %t21 = extractvalue { i64, ptr } %a2, 0
  %t22 = add i64 %t18, %t21
  %t23 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t22)
  call void @olang_textcopy(ptr %t23, ptr %t4, i64 %t5)
  %t24 = getelementptr i8, ptr %t23, i64 %t5
  call void @olang_textcopy(ptr %t24, ptr %t7, i64 %t8)
  %t25 = getelementptr i8, ptr %t24, i64 %t8
  call void @olang_textcopy(ptr %t25, ptr %t10, i64 %t11)
  %t26 = getelementptr i8, ptr %t25, i64 %t11
  %t27 = call i64 @__olang_fmt_i64(ptr %t26, i64 %a1)
  %t28 = getelementptr i8, ptr %t26, i64 %t14
  call void @olang_textcopy(ptr %t28, ptr %t16, i64 %t17)
  %t29 = getelementptr i8, ptr %t28, i64 %t17
  call void @olang_textcopy(ptr %t29, ptr %t20, i64 %t21)
  %t30 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t23, 1
  %t33 = extractvalue { i64, ptr } %t31, 0
  %t34 = extractvalue { i64, ptr } %t31, 1
  %t35 = mul i64 %t33, 1
  %t36 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t35)
  call void @llvm.memcpy.p0.p0.i64(ptr %t36, ptr %t34, i64 %t35, i1 false)
  %t37 = insertvalue { i64, ptr } undef, i64 %t33, 0
  %t38 = insertvalue { i64, ptr } %t37, ptr %t36, 1
  %t40 = call i32 @std_2fio_2ePrintErrln(ptr %s0, { i64, ptr } %t38)
  store i32 %t40, ptr %l8
  %t41 = icmp ne i32 %t40, 0
  br i1 %t41, label %bb2, label %ok.42, !prof !99
ok.42:
  br label %bb1
bb1:
  br label %bb6
bb2:
  %t43 = load i32, ptr %l8, !tbaa !23
  %t44 = ashr i32 %t43, 16
  %t46 = icmp eq i32 %t44, 1
  store i1 %t46, ptr %l10, !tbaa !21
  %t47 = load i32, ptr %l8, !tbaa !23
  %t48 = ashr i32 %t47, 16
  %t50 = icmp eq i32 %t48, 1
  br i1 %t50, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s0)
  store i32 65536, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fruntime_2emodulesInline(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca i1
  %l4 = alloca i1
  %l6 = alloca i1
  %l7 = alloca i1
  %l9 = alloca i1
  %l13 = alloca { i64, ptr }
  %l14 = alloca i1
  %l15 = alloca i1
  %l18 = alloca { i64, ptr }
  %l19 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d89, i32 0, i32 1) })
  store i1 %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load i1, ptr %l2, !tbaa !21
  %t5 = xor i1 %t4, true
  br i1 %t5, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l4, !tbaa !21
  br label %bb5
bb3:
  %t7 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t9 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t7, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d90, i32 0, i32 1) })
  store i1 %t9, ptr %l6
  br label %bb4
bb4:
  %t10 = load i1, ptr %l6, !tbaa !21
  store i1 %t10, ptr %l4, !tbaa !21
  br label %bb5
bb5:
  %t11 = load i1, ptr %l4, !tbaa !21
  br i1 %t11, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb9
bb7:
  %t12 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t14 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t12, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d91, i32 0, i32 1) })
  store i1 %t14, ptr %l9
  br label %bb8
bb8:
  %t15 = load i1, ptr %l9, !tbaa !21
  store i1 %t15, ptr %l7, !tbaa !21
  br label %bb9
bb9:
  %t16 = load i1, ptr %l7, !tbaa !21
  br i1 %t16, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t18 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d92, i32 0, i32 1) }, ptr %l13, !tbaa !27
  %t21 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t22 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %s0, { i64, ptr } %t18, { i64, ptr } %t21)
  store i1 %t22, ptr %l14
  br label %bb13
bb13:
  %t23 = load i1, ptr %l14, !tbaa !21
  br i1 %t23, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb17
bb15:
  %t24 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d93, i32 0, i32 1) }, ptr %l18, !tbaa !27
  %t27 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t28 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %s0, { i64, ptr } %t24, { i64, ptr } %t27)
  store i1 %t28, ptr %l19
  br label %bb16
bb16:
  %t29 = load i1, ptr %l19, !tbaa !21
  store i1 %t29, ptr %l15, !tbaa !21
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s0)
  %t30 = load i1, ptr %l15, !tbaa !21
  store i1 %t30, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fruntime_2etypeEnd(ptr %v0, { i64, ptr } %a0, i64 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca i8
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
  %l16 = alloca i8
  %l17 = alloca { i64, ptr }
  %l22 = alloca i1
  %l25 = alloca i1
  %l34 = alloca i64
  %l37 = alloca i64
  %l55 = alloca { i64, ptr }
  %l59 = alloca i1
  %l60 = alloca { i64, ptr }
  %l75 = alloca i64
  %l78 = alloca i64
  %l96 = alloca { i64, ptr }
  %l101 = alloca i1
  %l104 = alloca i1
  %l111 = alloca i1
  %l114 = alloca i1
  %rv = alloca i64
  store { i64, ptr } %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t1, ptr %l17, !tbaa !27
  %t2 = load i64, ptr %l1, !tbaa !24
  %t4 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t5 = load ptr, ptr %t4, !tbaa !27
  %t6 = getelementptr i8, ptr %t5, i64 %t2
  %t7 = load i8, ptr %t6, !tbaa !32
  store i8 %t7, ptr %l2, !tbaa !22
  %t9 = load i8, ptr %l2, !tbaa !22
  %t11 = icmp ne i8 %t9, 91
  br i1 %t11, label %bb1, label %bb2
bb1:
  %t13 = load i8, ptr %l2, !tbaa !22
  %t15 = icmp ne i8 %t13, 123
  store i1 %t15, ptr %l22, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l22, !tbaa !21
  br label %bb3
bb3:
  %t17 = load i1, ptr %l22, !tbaa !21
  br i1 %t17, label %bb4, label %bb5
bb4:
  %t18 = load i8, ptr %l2, !tbaa !22
  %t20 = icmp ne i8 %t18, 60
  store i1 %t20, ptr %l25, !tbaa !21
  br label %bb6
bb5:
  store i1 false, ptr %l25, !tbaa !21
  br label %bb6
bb6:
  %t22 = load i1, ptr %l25, !tbaa !21
  br i1 %t22, label %bb7, label %bb8
bb7:
  %t23 = load i64, ptr %l1, !tbaa !24
  store i64 %t23, ptr %l3, !tbaa !24
  %t25 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t27 = extractvalue { i64, ptr } %t25, 0
  store i64 %t27, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t29 = load i64, ptr %l4, !tbaa !24
  %t30 = load i64, ptr %l3, !tbaa !24
  %t33 = icmp sgt i64 %t29, %t30
  br i1 %t33, label %bb9, label %bb10
bb8:
  br label %bb27
bb9:
  %t35 = load i64, ptr %l5, !tbaa !24
  %t37 = icmp sgt i64 %t35, 0
  br i1 %t37, label %bb11, label %bb12
bb10:
  store i64 0, ptr %l34, !tbaa !24
  br label %bb14
bb11:
  %t39 = load i64, ptr %l4, !tbaa !24
  %t40 = load i64, ptr %l3, !tbaa !24
  %t43 = sub i64 %t39, %t40
  %t44 = load i64, ptr %l5, !tbaa !24
  %t47 = add i64 %t43, %t44
  %t49 = sub i64 %t47, 1
  %t50 = load i64, ptr %l5, !tbaa !24
  %t53 = sdiv i64 %t49, %t50
  store i64 %t53, ptr %l37, !tbaa !24
  br label %bb13
bb12:
  store i64 0, ptr %l37, !tbaa !24
  br label %bb13
bb13:
  %t55 = load i64, ptr %l37, !tbaa !24
  store i64 %t55, ptr %l34, !tbaa !24
  br label %bb14
bb14:
  %t56 = load i64, ptr %l34, !tbaa !24
  store i64 %t56, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb15
bb15:
  %t57 = load i64, ptr %l7, !tbaa !24
  %t58 = load i64, ptr %l6, !tbaa !24
  %t61 = icmp slt i64 %t57, %t58
  %t63 = xor i1 %t61, true
  br i1 %t63, label %bb16, label %bb17
bb16:
  br label %bb26
bb17:
  br label %bb18
bb18:
  %t65 = load i64, ptr %l3, !tbaa !24
  %t66 = load i64, ptr %l7, !tbaa !24
  %t67 = load i64, ptr %l5, !tbaa !24
  %t70 = mul i64 %t66, %t67
  %t73 = add i64 %t65, %t70
  store i64 %t73, ptr %l8, !tbaa !24
  %t75 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t75, ptr %l55, !tbaa !27
  %t76 = load i64, ptr %l8, !tbaa !24
  %t78 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !27
  %t80 = getelementptr i8, ptr %t79, i64 %t76
  %t81 = load i8, ptr %t80, !tbaa !32
  %t83 = icmp eq i8 %t81, 32
  br i1 %t83, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l59, !tbaa !21
  br label %bb21
bb20:
  %t85 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t85, ptr %l60, !tbaa !27
  %t86 = load i64, ptr %l8, !tbaa !24
  %t88 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !27
  %t90 = getelementptr i8, ptr %t89, i64 %t86
  %t91 = load i8, ptr %t90, !tbaa !32
  %t93 = icmp eq i8 %t91, 44
  store i1 %t93, ptr %l59, !tbaa !21
  br label %bb21
bb21:
  %t95 = load i1, ptr %l59, !tbaa !21
  br i1 %t95, label %bb22, label %bb23
bb22:
  %t96 = load i64, ptr %l8, !tbaa !24
  store i64 %t96, ptr %rv
  br label %ret
bb23:
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t98 = load i64, ptr %l7, !tbaa !24
  %t100 = add i64 %t98, 1
  store i64 %t100, ptr %l7, !tbaa !24
  br label %bb15
bb26:
  %t102 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t104 = extractvalue { i64, ptr } %t102, 0
  store i64 %t104, ptr %rv
  br label %ret
bb27:
  store i64 0, ptr %l9, !tbaa !24
  %t106 = load i64, ptr %l1, !tbaa !24
  store i64 %t106, ptr %l10, !tbaa !24
  %t108 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t110 = extractvalue { i64, ptr } %t108, 0
  store i64 %t110, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t112 = load i64, ptr %l11, !tbaa !24
  %t113 = load i64, ptr %l10, !tbaa !24
  %t116 = icmp sgt i64 %t112, %t113
  br i1 %t116, label %bb28, label %bb29
bb28:
  %t118 = load i64, ptr %l12, !tbaa !24
  %t120 = icmp sgt i64 %t118, 0
  br i1 %t120, label %bb30, label %bb31
bb29:
  store i64 0, ptr %l75, !tbaa !24
  br label %bb33
bb30:
  %t122 = load i64, ptr %l11, !tbaa !24
  %t123 = load i64, ptr %l10, !tbaa !24
  %t126 = sub i64 %t122, %t123
  %t127 = load i64, ptr %l12, !tbaa !24
  %t130 = add i64 %t126, %t127
  %t132 = sub i64 %t130, 1
  %t133 = load i64, ptr %l12, !tbaa !24
  %t136 = sdiv i64 %t132, %t133
  store i64 %t136, ptr %l78, !tbaa !24
  br label %bb32
bb31:
  store i64 0, ptr %l78, !tbaa !24
  br label %bb32
bb32:
  %t138 = load i64, ptr %l78, !tbaa !24
  store i64 %t138, ptr %l75, !tbaa !24
  br label %bb33
bb33:
  %t139 = load i64, ptr %l75, !tbaa !24
  store i64 %t139, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb34
bb34:
  %t140 = load i64, ptr %l14, !tbaa !24
  %t141 = load i64, ptr %l13, !tbaa !24
  %t144 = icmp slt i64 %t140, %t141
  %t146 = xor i1 %t144, true
  br i1 %t146, label %bb35, label %bb36
bb35:
  br label %bb60
bb36:
  br label %bb37
bb37:
  %t148 = load i64, ptr %l10, !tbaa !24
  %t149 = load i64, ptr %l14, !tbaa !24
  %t150 = load i64, ptr %l12, !tbaa !24
  %t153 = mul i64 %t149, %t150
  %t156 = add i64 %t148, %t153
  store i64 %t156, ptr %l15, !tbaa !24
  %t158 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t158, ptr %l96, !tbaa !27
  %t159 = load i64, ptr %l15, !tbaa !24
  %t161 = getelementptr { i64, ptr }, ptr %l96, i32 0, i32 1
  %t162 = load ptr, ptr %t161, !tbaa !27
  %t163 = getelementptr i8, ptr %t162, i64 %t159
  %t164 = load i8, ptr %t163, !tbaa !32
  store i8 %t164, ptr %l16, !tbaa !22
  %t166 = load i8, ptr %l16, !tbaa !22
  %t168 = icmp eq i8 %t166, 91
  br i1 %t168, label %bb38, label %bb39
bb38:
  store i1 true, ptr %l101, !tbaa !21
  br label %bb40
bb39:
  %t170 = load i8, ptr %l16, !tbaa !22
  %t172 = icmp eq i8 %t170, 123
  store i1 %t172, ptr %l101, !tbaa !21
  br label %bb40
bb40:
  %t174 = load i1, ptr %l101, !tbaa !21
  br i1 %t174, label %bb41, label %bb42
bb41:
  store i1 true, ptr %l104, !tbaa !21
  br label %bb43
bb42:
  %t175 = load i8, ptr %l16, !tbaa !22
  %t177 = icmp eq i8 %t175, 60
  store i1 %t177, ptr %l104, !tbaa !21
  br label %bb43
bb43:
  %t179 = load i1, ptr %l104, !tbaa !21
  br i1 %t179, label %bb44, label %bb45
bb44:
  %t180 = load i64, ptr %l9, !tbaa !24
  %t182 = add i64 %t180, 1
  store i64 %t182, ptr %l9, !tbaa !24
  br label %bb58
bb45:
  %t184 = load i8, ptr %l16, !tbaa !22
  %t186 = icmp eq i8 %t184, 93
  br i1 %t186, label %bb46, label %bb47
bb46:
  store i1 true, ptr %l111, !tbaa !21
  br label %bb48
bb47:
  %t188 = load i8, ptr %l16, !tbaa !22
  %t190 = icmp eq i8 %t188, 125
  store i1 %t190, ptr %l111, !tbaa !21
  br label %bb48
bb48:
  %t192 = load i1, ptr %l111, !tbaa !21
  br i1 %t192, label %bb49, label %bb50
bb49:
  store i1 true, ptr %l114, !tbaa !21
  br label %bb51
bb50:
  %t193 = load i8, ptr %l16, !tbaa !22
  %t195 = icmp eq i8 %t193, 62
  store i1 %t195, ptr %l114, !tbaa !21
  br label %bb51
bb51:
  %t197 = load i1, ptr %l114, !tbaa !21
  br i1 %t197, label %bb52, label %bb53
bb52:
  %t198 = load i64, ptr %l9, !tbaa !24
  %t200 = sub i64 %t198, 1
  store i64 %t200, ptr %l9, !tbaa !24
  %t202 = load i64, ptr %l9, !tbaa !24
  %t204 = icmp eq i64 %t202, 0
  br i1 %t204, label %bb54, label %bb55
bb53:
  br label %bb57
bb54:
  %t206 = load i64, ptr %l15, !tbaa !24
  %t208 = add i64 %t206, 1
  store i64 %t208, ptr %rv
  br label %ret
bb55:
  br label %bb56
bb56:
  br label %bb57
bb57:
  br label %bb58
bb58:
  br label %bb59
bb59:
  %t210 = load i64, ptr %l14, !tbaa !24
  %t212 = add i64 %t210, 1
  store i64 %t212, ptr %l14, !tbaa !24
  br label %bb34
bb60:
  %t214 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t216 = extractvalue { i64, ptr } %t214, 0
  store i64 %t216, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

@.d0 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"}" }>, align 8
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
@.d1 = private constant <{ i64, [28 x i8] }> <{ i64 0, [28 x i8] c"define available_externally " }>, align 8
@.d2 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
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
@.d3 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"target triple = \22" }>, align 8
@.d4 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"\22\0A\0A" }>, align 8
@.d5 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"\0A!20 = !{!\22olang\22}\0A" }>, align 8
@.d6 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"/runtime/" }>, align 8
declare void @__olang_errpay_pop()
@.d7 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"olang: " }>, align 8
@.d8 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c": cannot open this file" }>, align 8
@.d9 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"; @prof " }>, align 8
@.d10 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"; @bench " }>, align 8
@.d11 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"\22; @if\22 inside another" }>, align 8
@.d12 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"!" }>, align 8
@.d13 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d14 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"san" }>, align 8
@__olang_prog_scope = external thread_local(initialexec) global ptr
@.d15 = private constant <{ i64, [53 x i8] }> <{ i64 0, [53 x i8] c"a condition that is neither \22san\22 nor an architecture" }>, align 8
@.d16 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"san" }>, align 8
@.d17 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"\22; @else\22 with no \22; @if\22 open" }>, align 8
@.d18 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c"\22; @end\22 with no \22; @if\22 open" }>, align 8
@.d19 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c";" }>, align 8
@.d20 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"@@" }>, align 8
@.d21 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"@@" }>, align 8
@.d22 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"an \22@@\22 with no \22@@\22 closing it" }>, align 8
@.d23 = private constant <{ i64, [42 x i8] }> <{ i64 0, [42 x i8] c"an @@NAME@@ the compiler knows no fact for" }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d24 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"\22; @if\22 with no \22; @end\22" }>, align 8
@olang_2esole_2estd_2fprelude_2ftext_3aLineIter_2e0 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d25 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"target triple = \22" }>, align 8
@.d26 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"\22\0A\0A" }>, align 8
@.d27 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"dyncall.ll" }>, align 8
@.d28 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"runtime.ll" }>, align 8
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
@.d29 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"san.ll" }>, align 8
@.d30 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d31 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"prof.ll" }>, align 8
@.d32 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d33 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"@" }>, align 8
@.d34 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c" = linkonce_odr " }>, align 8
@.d35 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d36 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"$" }>, align 8
@.d37 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c" = comdat any\0A" }>, align 8
@.d38 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c", comdat\0A" }>, align 8
@.d39 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"define " }>, align 8
@.d40 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"{" }>, align 8
@.d41 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" !dbg " }>, align 8
@.d42 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"@__olang_crash_handler(" }>, align 8
@.d43 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"@__olang_san_handler(" }>, align 8
@.d44 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" #1" }>, align 8
@.d45 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" #0" }>, align 8
@.d46 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"#1 {" }>, align 8
@.d47 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"#0 {" }>, align 8
@.d48 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"sanitize_thread " }>, align 8
@.d49 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d50 = private constant <{ i64, [41 x i8] }> <{ i64 0, [41 x i8] c"\0Aattributes #0 = { null_pointer_is_valid " }>, align 8
@.d51 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c" nounwind }\0A" }>, align 8
@.d52 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c"attributes #1 = { null_pointer_is_valid " }>, align 8
@.d53 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c" nounwind }\0A" }>, align 8
@.d54 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"declare " }>, align 8
@.d55 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"%" }>, align 8
@.d56 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" = type " }>, align 8
@.d57 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"@" }>, align 8
@.d58 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c" = external " }>, align 8
@.d59 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"define internal " }>, align 8
@.d60 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"define private " }>, align 8
@.d61 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c" = internal " }>, align 8
@.d62 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c" = private " }>, align 8
@.d63 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"define " }>, align 8
@.d64 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d65 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"declare " }>, align 8
@.d66 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d67 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d68 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
declare ptr @__olang_scope_of(ptr, ptr) noinline
@.d69 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"{" }>, align 8
@.d70 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d71 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d72 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"@" }>, align 8
@.d73 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" = " }>, align 8
@.d74 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c" = external " }>, align 8
@.d75 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"thread_local(" }>, align 8
@.d76 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d77 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d78 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"unnamed_addr " }>, align 8
@.d79 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d80 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d81 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"; @" }>, align 8
@.d82 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d83 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"if" }>, align 8
@.d84 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"else" }>, align 8
@.d85 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"end" }>, align 8
@.d86 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"olang: " }>, align 8
@.d87 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d88 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d89 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"define " }>, align 8
@.d90 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"define internal " }>, align 8
@.d91 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"define private " }>, align 8
@.d92 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"alwaysinline" }>, align 8
@.d93 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"inlinehint" }>, align 8
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
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_4678f23b07212b71_6204d41da44925a5 = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @compiler_2fload_2eStdDir(ptr %v0)
declare { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i32 @std_2fio_2ePrintErrln(ptr %v0, { i64, ptr } %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_6e9edb7ac3cc3a13_be559f1d61e4dd6f = external constant [0 x i8]
@olang_loc_6e8de55f6b48d5b6_301f420811d0f7f2 = external constant [0 x i8]
@olang_loc_37c6cc80b337eb95_eeee9a64b49e7a71 = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrimStart(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_5fea096add1795b8_392858cd9c11d804 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_b0282b0bffd0a537_97cbf26a9ab19d0b = external constant [0 x i8]
declare i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eHas_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_70ff22b8cac083da_c5bb23930b7510e = external constant [0 x i8]
@olang_loc_fb2acf0450ba6c79_597b56b8350f036d = external constant [0 x i8]
@olang_loc_4e5c01328741d84c_96bd53a062766590 = external constant [0 x i8]
@olang_loc_c5a935a141e6de44_d4317e5b19ef6ea0 = external constant [0 x i8]
@olang_loc_6b7f8dd3ec23cfae_1ccbdaa919c4683a = external constant [0 x i8]
@olang_loc_48912347760bc49b_7f197caf3eb31ff7 = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_606763d33345b49e_888ff486d8884e9a = external constant [0 x i8]
declare i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_dc19f5cc01bc83fd_c395ac342fa7af39 = external constant [0 x i8]
@olang_loc_ea39e132cd3efa0c_1aef6a820179ae38 = external constant [0 x i8]
@olang_loc_d8a12b6fe56d9e39_f2cc2d97d79a0415 = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_9d9b73c28e4e3d9a_299346768faaee36 = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrimEnd(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_9424fbeaf4790ef7_29a43c91e82e5293 = external constant [0 x i8]
@olang_loc_15c1087a8dcee578_9616249aba3f0cc = external constant [0 x i8]
@olang_loc_37b9d9dde30c0555_b630301b751c84f9 = external constant [0 x i8]
@olang_loc_2446b89a84efdb76_2c0483cfef229c5a = external constant [0 x i8]
@olang_loc_d4a9c3df34bd8bd3_6b2d8c232432bdb7 = external constant [0 x i8]
@olang_loc_885af16d4a3d8d64_d0eb96c61f9dafb0 = external constant [0 x i8]
@olang_loc_383c318151cd7051_6709cfbf24f79c8d = external constant [0 x i8]
@olang_loc_b26c87ed9711b455_3749eb6f37e52fe9 = external constant [0 x i8]
@olang_loc_6a493f8daef1bb51_6724bcad8f2aca45 = external constant [0 x i8]
@olang_loc_ba67ff79a761d864_bc768279035b5e68 = external constant [0 x i8]

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
