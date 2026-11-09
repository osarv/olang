source_filename = "compiler_build.quick.ll"
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
%"compiler/build:Sha256" = type { [8 x i32], [64 x i8], i64, i64 }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/os:Output" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/build:Config" = type { { i64, ptr }, { i64, ptr }, %"compiler/target:Target", %"compiler/cond:Consts", i1, i1, i1, i1, i1, i1, { i64, ptr }, i64, i1, i1, i1, { i64, ptr }, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i1, { i64, ptr }, { i64, ptr }, i64, i64, i1, { i64, ptr }, { i64, ptr } }
%"compiler/target:Target" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i1, i1 }
%"compiler/cond:Consts" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/os:FileInfo" = type { i32, i64, i64 }
%"compiler/build:Unit" = type { { i64, ptr }, i32, { i64, ptr }, { i64, ptr } }
%"compiler/build:compiles" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/build:Program" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/build:stubFrontend" = type { i64, i64 }
%"compiler/build:Listed" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
@G_2ecompiler_2fbuild_2eImportLimit = constant <{ [8 x i8] }> <{ [8 x i8] c"\46\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fbuild_2ePhaseAt = global <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fbuild_2eRemarkPasses = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\BB\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fbuild_2eRemarkPasses.k1 }>, align 8
@G_2ecompiler_2fbuild_2eRemarkPasses.k1 = internal constant <{ [187 x i8] }> <{ [187 x i8] c"\5E\28\69\6E\6C\69\6E\65\7C\6C\6F\6F\70\2D\76\65\63\74\6F\72\69\7A\65\7C\73\6C\70\2D\76\65\63\74\6F\72\69\7A\65\72\7C\6C\6F\6F\70\2D\75\6E\72\6F\6C\6C\7C\6C\6F\6F\70\2D\75\6E\72\6F\6C\6C\2D\61\6E\64\2D\6A\61\6D\7C\6C\69\63\6D\7C\67\76\6E\7C\6C\6F\6F\70\2D\69\64\69\6F\6D\7C\6C\6F\6F\70\2D\64\65\6C\65\74\65\7C\74\61\69\6C\63\61\6C\6C\65\6C\69\6D\7C\6C\6F\6F\70\2D\64\69\73\74\72\69\62\75\74\65\7C\6C\6F\6F\70\2D\69\6E\74\65\72\63\68\61\6E\67\65\7C\6C\6F\6F\70\2D\6C\6F\61\64\2D\65\6C\69\6D\7C\72\65\67\61\6C\6C\6F\63\7C\70\72\6F\6C\6F\67\65\70\69\6C\6F\67\29\24" }>, align 64
@G_2ecompiler_2fbuild_2eShaK = constant <{ [256 x i8] }> <{ [256 x i8] c"\98\2F\8A\42\91\44\37\71\CF\FB\C0\B5\A5\DB\B5\E9\5B\C2\56\39\F1\11\F1\59\A4\82\3F\92\D5\5E\1C\AB\98\AA\07\D8\01\5B\83\12\BE\85\31\24\C3\7D\0C\55\74\5D\BE\72\FE\B1\DE\80\A7\06\DC\9B\74\F1\9B\C1\C1\69\9B\E4\86\47\BE\EF\C6\9D\C1\0F\CC\A1\0C\24\6F\2C\E9\2D\AA\84\74\4A\DC\A9\B0\5C\DA\88\F9\76\52\51\3E\98\6D\C6\31\A8\C8\27\03\B0\C7\7F\59\BF\F3\0B\E0\C6\47\91\A7\D5\51\63\CA\06\67\29\29\14\85\0A\B7\27\38\21\1B\2E\FC\6D\2C\4D\13\0D\38\53\54\73\0A\65\BB\0A\6A\76\2E\C9\C2\81\85\2C\72\92\A1\E8\BF\A2\4B\66\1A\A8\70\8B\4B\C2\A3\51\6C\C7\19\E8\92\D1\24\06\99\D6\85\35\0E\F4\70\A0\6A\10\16\C1\A4\19\08\6C\37\1E\4C\77\48\27\B5\BC\B0\34\B3\0C\1C\39\4A\AA\D8\4E\4F\CA\9C\5B\F3\6F\2E\68\EE\82\8F\74\6F\63\A5\78\14\78\C8\84\08\02\C7\8C\FA\FF\BE\90\EB\6C\50\A4\F7\A3\F9\BE\F2\78\71\C6" }>, align 64
@G_2ecompiler_2fbuild_2eThinFrom = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\80\00\00\00\00\00" }>, align 8
define dso_local i32 @compiler_2fbuild_2eFinish(ptr %v0, ptr %a0) #0 {
entry:
  %l2 = alloca i32
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call i32 @compiler_2fbuild_2efinish(ptr %v0, ptr %a0)
  store i32 %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load i32, ptr %l2, !tbaa !23
  store i32 %t4, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2fbuild_2eHashOf(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/build:Sha256"
  %l2 = alloca ptr
  %l3 = alloca i64
  %l5 = alloca %"compiler/build:Sha256"
  %l7 = alloca i64
  %l9 = alloca i64
  %l14 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"compiler/build:Sha256" @compiler_2fbuild_3aSha256_2ector(ptr %s0)
  store %"compiler/build:Sha256" %t1, ptr %l5
  br label %bb1
bb1:
  %t2 = load %"compiler/build:Sha256", ptr %l5
  store %"compiler/build:Sha256" %t2, ptr %l1
  store ptr %a0, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  store %olang.scope zeroinitializer, ptr %s2
  %t5 = load i64, ptr %l3, !tbaa !24
  store i64 %t5, ptr %l7, !tbaa !24
  %t6 = load ptr, ptr %l2, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l9
  br label %bb3
bb3:
  %t9 = load i64, ptr %l7, !tbaa !24
  %t10 = load i64, ptr %l9, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s2)
  br label %bb11
bb5:
  br label %bb6
bb6:
  %t15 = load ptr, ptr %l2, !tbaa !29
  %t16 = load i64, ptr %l3, !tbaa !24
  %t19 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t15, i64 %t16)
  store { i64, ptr } %t19, ptr %l14
  br label %bb7
bb7:
  %t20 = load { i64, ptr }, ptr %l14, !tbaa !27
  call void @compiler_2fbuild_2ecompiler_2fbuild_3aSha256_2eWrite(ptr %s0, ptr %v0, ptr %l1, { i64, ptr } %t20)
  br label %bb8
bb8:
  call void @compiler_2fbuild_2ecompiler_2fbuild_3aSha256_2eWrite(ptr %s0, ptr %s2, ptr %l1, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d0, i32 0, i32 1) })
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb10
bb10:
  %t26 = load i64, ptr %l3, !tbaa !24
  %t28 = add i64 %t26, 1
  store i64 %t28, ptr %l3, !tbaa !24
  br label %bb2
bb11:
  %t31 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aSha256_2eSum(ptr %s0, ptr %v1, ptr %l1)
  store { i64, ptr } %t31, ptr %l22
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s0)
  %t32 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t32, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fbuild_2eIrHash(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca %"compiler/build:Sha256"
  %l2 = alloca %"compiler/build:Sha256"
  %l7 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"compiler/build:Sha256" @compiler_2fbuild_3aSha256_2ector(ptr %s0)
  store %"compiler/build:Sha256" %t1, ptr %l2
  br label %bb1
bb1:
  %t2 = load %"compiler/build:Sha256", ptr %l2
  store %"compiler/build:Sha256" %t2, ptr %l1
  call void @compiler_2fbuild_2ecompiler_2fbuild_3aSha256_2eWrite(ptr %s0, ptr %v0, ptr %l1, { i64, ptr } %a0)
  br label %bb2
bb2:
  %t8 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aSha256_2eSum(ptr %s0, ptr %v1, ptr %l1)
  store { i64, ptr } %t8, ptr %l7
  br label %bb3
bb3:
  call void @__olang_scope_close(ptr %s0)
  %t9 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t9, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fbuild_2ePhase(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i32
  %l7 = alloca i1
  %l10 = alloca i64
  %l22 = alloca i1
  %l23 = alloca i1
  %l25 = alloca i1
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %s0, ptr %s0, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d1, i32 0, i32 1) })
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
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb6:
  %t16 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t16, ptr %l1, !tbaa !27
  %t17 = call i64 @std_2ftime_2eNow()
  store i64 %t17, ptr %l10
  br label %bb7
bb7:
  %t18 = load i64, ptr %l10, !tbaa !24
  store i64 %t18, ptr %l2, !tbaa !24
  %t19 = load i64, ptr @G_2ecompiler_2fbuild_2ePhaseAt, !tbaa !24
  %t21 = icmp ne i64 %t19, 0
  br i1 %t21, label %bb8, label %bb9
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t23 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t24 = load i64, ptr %l2, !tbaa !24
  %t25 = load i64, ptr @G_2ecompiler_2fbuild_2ePhaseAt, !tbaa !24
  %t28 = sub i64 %t24, %t25
  %t30 = sdiv i64 %t28, 1000000
  %t31 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t32 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  %t34 = extractvalue { i64, ptr } %t23, 1
  %t35 = extractvalue { i64, ptr } %t23, 0
  %t36 = add i64 %t32, %t35
  %t37 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t38 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  %t39 = add i64 %t36, %t38
  %t41 = call i64 @__olang_fmt_i64(ptr null, i64 %t30)
  %t42 = add i64 %t39, %t41
  %t43 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t44 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  %t45 = add i64 %t42, %t44
  %t46 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t45)
  call void @olang_textcopy(ptr %t46, ptr %t31, i64 %t32)
  %t47 = getelementptr i8, ptr %t46, i64 %t32
  call void @olang_textcopy(ptr %t47, ptr %t34, i64 %t35)
  %t48 = getelementptr i8, ptr %t47, i64 %t35
  call void @olang_textcopy(ptr %t48, ptr %t37, i64 %t38)
  %t49 = getelementptr i8, ptr %t48, i64 %t38
  %t50 = call i64 @__olang_fmt_i64(ptr %t49, i64 %t30)
  %t51 = getelementptr i8, ptr %t49, i64 %t41
  call void @olang_textcopy(ptr %t51, ptr %t43, i64 %t44)
  %t52 = insertvalue { i64, ptr } undef, i64 %t45, 0
  %t53 = insertvalue { i64, ptr } %t52, ptr %t46, 1
  %t55 = extractvalue { i64, ptr } %t53, 0
  %t56 = extractvalue { i64, ptr } %t53, 1
  %t57 = mul i64 %t55, 1
  %t58 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t57)
  call void @llvm.memcpy.p0.p0.i64(ptr %t58, ptr %t56, i64 %t57, i1 false)
  %t59 = insertvalue { i64, ptr } undef, i64 %t55, 0
  %t60 = insertvalue { i64, ptr } %t59, ptr %t58, 1
  call void @compiler_2fbuild_2esayErr(ptr %s2, { i64, ptr } %t60)
  br label %bb10
bb9:
  br label %bb11
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb11
bb11:
  %t62 = load i64, ptr %l2, !tbaa !24
  store i64 %t62, ptr @G_2ecompiler_2fbuild_2ePhaseAt, !tbaa !24
  %t64 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t66 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t64, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d5, i32 0, i32 1) })
  store i1 %t66, ptr %l22
  br label %bb12
bb12:
  %t67 = load i1, ptr %l22, !tbaa !21
  br i1 %t67, label %bb13, label %bb14
bb13:
  %t68 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t70 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t68, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d6, i32 0, i32 1) })
  store i1 %t70, ptr %l25
  br label %bb15
bb14:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb16
bb15:
  %t71 = load i1, ptr %l25, !tbaa !21
  store i1 %t71, ptr %l23, !tbaa !21
  br label %bb16
bb16:
  %t72 = load i1, ptr %l23, !tbaa !21
  br i1 %t72, label %bb17, label %bb18
bb17:
  call void @std_2fos_2eExit(i32 0)
  unreachable
bb18:
  br label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_1a0af222d89a1264_6ae848cde6020298)
  unreachable
bb20:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fbuild_2ePid() #0 {
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

define dso_local { i64, ptr } @compiler_2fbuild_2eShown(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca i1
  %l3 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d7, i32 0, i32 1) })
  store i1 %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load i1, ptr %l2, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  %t5 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 1
  %t8 = extractvalue { i64, ptr } %t5, 0
  %t9 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t8)
  call void @olang_textcopy(ptr %t9, ptr %t7, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t8, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l3, !tbaa !27
  br label %bb4
bb3:
  %t13 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t14 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  %t17 = extractvalue { i64, ptr } %t13, 1
  %t18 = extractvalue { i64, ptr } %t13, 0
  %t19 = add i64 %t15, %t18
  %t20 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t19)
  call void @olang_textcopy(ptr %t20, ptr %t14, i64 %t15)
  %t21 = getelementptr i8, ptr %t20, i64 %t15
  call void @olang_textcopy(ptr %t21, ptr %t17, i64 %t18)
  %t22 = insertvalue { i64, ptr } undef, i64 %t19, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t20, 1
  store { i64, ptr } %t23, ptr %l3, !tbaa !27
  br label %bb4
bb4:
  call void @__olang_scope_close(ptr %s0)
  %t25 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t25, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fbuild_2eSignalName(ptr %v0, i32 %a0) #0 {
entry:
  %l0 = alloca i32
  %l1 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l32 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l52 = alloca { i64, ptr }
  %l56 = alloca i64
  %l57 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store i32 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l0, !tbaa !23
  %t3 = icmp eq i32 %t1, 1
  br i1 %t3, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d9, i32 0, i32 1) }, ptr %l4, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t5, ptr %l1, !tbaa !27
  br label %bb57
bb4:
  %t7 = load i32, ptr %l0, !tbaa !23
  %t9 = icmp eq i32 %t7, 2
  br i1 %t9, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  store { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d10, i32 0, i32 1) }, ptr %l8, !tbaa !27
  %t11 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t11, ptr %l1, !tbaa !27
  br label %bb57
bb8:
  %t13 = load i32, ptr %l0, !tbaa !23
  %t15 = icmp eq i32 %t13, 3
  br i1 %t15, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d11, i32 0, i32 1) }, ptr %l12, !tbaa !27
  %t17 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t17, ptr %l1, !tbaa !27
  br label %bb57
bb12:
  %t19 = load i32, ptr %l0, !tbaa !23
  %t21 = icmp eq i32 %t19, 4
  br i1 %t21, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d12, i32 0, i32 1) }, ptr %l16, !tbaa !27
  %t23 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t23, ptr %l1, !tbaa !27
  br label %bb57
bb16:
  %t25 = load i32, ptr %l0, !tbaa !23
  %t27 = icmp eq i32 %t25, 5
  br i1 %t27, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d13, i32 0, i32 1) }, ptr %l20, !tbaa !27
  %t29 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t29, ptr %l1, !tbaa !27
  br label %bb57
bb20:
  %t31 = load i32, ptr %l0, !tbaa !23
  %t33 = icmp eq i32 %t31, 6
  br i1 %t33, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d14, i32 0, i32 1) }, ptr %l24, !tbaa !27
  %t35 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t35, ptr %l1, !tbaa !27
  br label %bb57
bb24:
  %t37 = load i32, ptr %l0, !tbaa !23
  %t39 = icmp eq i32 %t37, 7
  br i1 %t39, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  store { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d15, i32 0, i32 1) }, ptr %l28, !tbaa !27
  %t41 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t41, ptr %l1, !tbaa !27
  br label %bb57
bb28:
  %t43 = load i32, ptr %l0, !tbaa !23
  %t45 = icmp eq i32 %t43, 8
  br i1 %t45, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  store { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d16, i32 0, i32 1) }, ptr %l32, !tbaa !27
  %t47 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t47, ptr %l1, !tbaa !27
  br label %bb57
bb32:
  %t49 = load i32, ptr %l0, !tbaa !23
  %t51 = icmp eq i32 %t49, 9
  br i1 %t51, label %bb33, label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb36
bb35:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d17, i32 0, i32 1) }, ptr %l36, !tbaa !27
  %t53 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t53, ptr %l1, !tbaa !27
  br label %bb57
bb36:
  %t55 = load i32, ptr %l0, !tbaa !23
  %t57 = icmp eq i32 %t55, 11
  br i1 %t57, label %bb37, label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb40
bb39:
  store { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d18, i32 0, i32 1) }, ptr %l40, !tbaa !27
  %t59 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t59, ptr %l1, !tbaa !27
  br label %bb57
bb40:
  %t61 = load i32, ptr %l0, !tbaa !23
  %t63 = icmp eq i32 %t61, 13
  br i1 %t63, label %bb41, label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb44
bb43:
  store { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d19, i32 0, i32 1) }, ptr %l44, !tbaa !27
  %t65 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t65, ptr %l1, !tbaa !27
  br label %bb57
bb44:
  %t67 = load i32, ptr %l0, !tbaa !23
  %t69 = icmp eq i32 %t67, 14
  br i1 %t69, label %bb45, label %bb46
bb45:
  br label %bb47
bb46:
  br label %bb48
bb47:
  store { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d20, i32 0, i32 1) }, ptr %l48, !tbaa !27
  %t71 = load { i64, ptr }, ptr %l48, !tbaa !27
  store { i64, ptr } %t71, ptr %l1, !tbaa !27
  br label %bb57
bb48:
  %t73 = load i32, ptr %l0, !tbaa !23
  %t75 = icmp eq i32 %t73, 15
  br i1 %t75, label %bb49, label %bb50
bb49:
  br label %bb51
bb50:
  br label %bb52
bb51:
  store { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d21, i32 0, i32 1) }, ptr %l52, !tbaa !27
  %t77 = load { i64, ptr }, ptr %l52, !tbaa !27
  store { i64, ptr } %t77, ptr %l1, !tbaa !27
  br label %bb57
bb52:
  br i1 true, label %bb53, label %bb54
bb53:
  br label %bb55
bb54:
  br label %bb56
bb55:
  %t79 = load i32, ptr %l0, !tbaa !23
  %t80 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t81 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  %t83 = sext i32 %t79 to i64
  %t84 = call i64 @__olang_fmt_i64(ptr null, i64 %t83)
  %t85 = add i64 %t81, %t84
  %t86 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t85)
  call void @olang_textcopy(ptr %t86, ptr %t80, i64 %t81)
  %t87 = getelementptr i8, ptr %t86, i64 %t81
  %t88 = call i64 @__olang_fmt_i64(ptr %t87, i64 %t83)
  %t89 = insertvalue { i64, ptr } undef, i64 %t85, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t86, 1
  store { i64, ptr } %t90, ptr %l1, !tbaa !27
  br label %bb57
bb56:
  call void @__olang_check_failed(ptr @olang_loc_84eba90bdad5d702_427cd4b75eaf1c36)
  unreachable
bb57:
  %t92 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t93 = extractvalue { i64, ptr } %t92, 0
  store i64 %t93, ptr %l56, !tbaa !24
  %t94 = load i64, ptr %l56, !tbaa !24
  %t95 = mul i64 %t94, 1
  %t96 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t95)
  %t97 = insertvalue { i64, ptr } undef, i64 %t94, 0
  %t98 = insertvalue { i64, ptr } %t97, ptr %t96, 1
  store { i64, ptr } %t98, ptr %l57, !tbaa !27
  %t99 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !27
  %t101 = getelementptr { i64, ptr }, ptr %l1, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !27
  %t103 = load i64, ptr %l56, !tbaa !24
  %t104 = mul i64 %t103, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t100, ptr %t102, i64 %t104, i1 false)
  %t105 = load { i64, ptr }, ptr %l57, !tbaa !27
  store { i64, ptr } %t105, ptr %l1, !tbaa !27
  %t106 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t106, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2fbuild_2eTestFiles(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, { i64, ptr } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i1
  %l6 = alloca i1
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca i64
  %l20 = alloca %"std/os:Output"
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l22 = alloca { i64, ptr }
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  %l36 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l47 = alloca { i64, ptr }
  %l63 = alloca { i64, ptr }
  %l70 = alloca %"std/os:Output"
  %l72 = alloca { i64, ptr }
  %l73 = alloca { i64, ptr }
  %l74 = alloca %"std/os:Output"
  %l75 = alloca i32
  %l77 = alloca i1
  %l84 = alloca { i64, ptr }
  %l88 = alloca ptr
  %l89 = alloca { i64, ptr }
  %l92 = alloca { i64, ptr }
  %l95 = alloca { i64, ptr }
  %l101 = alloca i1
  %l108 = alloca i1
  %l112 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l120 = alloca { i64, ptr }
  %l123 = alloca ptr
  %l124 = alloca i64
  %l131 = alloca ptr
  %l133 = alloca { i64, ptr }
  %l136 = alloca { i64, ptr }
  %l140 = alloca i32
  %s2 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store { i64, ptr } %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store i1 false, ptr %l5, !tbaa !21
  store i1 false, ptr %l6, !tbaa !21
  store { i64, ptr } %a3, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  store i64 %t5, ptr %l9, !tbaa !24
  br label %bb1
bb1:
  store %olang.scope zeroinitializer, ptr %s2
  %t7 = load i64, ptr %l8, !tbaa !24
  %t8 = load i64, ptr %l9, !tbaa !24
  %t11 = icmp slt i64 %t7, %t8
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s2)
  br label %bb48
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t15, ptr %l33, !tbaa !27
  %t16 = load i64, ptr %l8, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr { i64, ptr }, ptr %t19, i64 %t16
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !37
  store { i64, ptr } %t21, ptr %l10, !tbaa !27
  %t23 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t23, ptr %l36
  br label %bb5
bb5:
  %t24 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l36
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t24, ptr %l11
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s2, ptr %v1, ptr %l11, { i64, ptr } %a1)
  br label %bb6
bb6:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s2, ptr %s2, ptr %l11, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d23, i32 0, i32 1) })
  br label %bb7
bb7:
  store { i64, ptr } %a2, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t31 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t33 = extractvalue { i64, ptr } %t31, 0
  store i64 %t33, ptr %l14, !tbaa !24
  br label %bb8
bb8:
  %t35 = load i64, ptr %l13, !tbaa !24
  %t36 = load i64, ptr %l14, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb9, label %bb10
bb9:
  br label %bb14
bb10:
  br label %bb11
bb11:
  %t43 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t43, ptr %l47, !tbaa !27
  %t44 = load i64, ptr %l13, !tbaa !24
  %t46 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = getelementptr { i64, ptr }, ptr %t47, i64 %t44
  %t49 = load { i64, ptr }, ptr %t48, !tbaa !37
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s2, ptr %v2, ptr %l11, { i64, ptr } %t49)
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t54 = load i64, ptr %l13, !tbaa !24
  %t56 = add i64 %t54, 1
  store i64 %t56, ptr %l13, !tbaa !24
  br label %bb8
bb14:
  %t58 = load { i64, ptr }, ptr %l10, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s2, ptr %v3, ptr %l11, { i64, ptr } %t58)
  br label %bb15
bb15:
  %t61 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t61, ptr %l16, !tbaa !27
  store i64 0, ptr %l17, !tbaa !24
  %t63 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t65 = extractvalue { i64, ptr } %t63, 0
  store i64 %t65, ptr %l18, !tbaa !24
  br label %bb16
bb16:
  %t67 = load i64, ptr %l17, !tbaa !24
  %t68 = load i64, ptr %l18, !tbaa !24
  %t71 = icmp slt i64 %t67, %t68
  %t73 = xor i1 %t71, true
  br i1 %t73, label %bb17, label %bb18
bb17:
  br label %bb22
bb18:
  br label %bb19
bb19:
  %t75 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t75, ptr %l63, !tbaa !27
  %t76 = load i64, ptr %l17, !tbaa !24
  %t78 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !27
  %t80 = getelementptr { i64, ptr }, ptr %t79, i64 %t76
  %t81 = load { i64, ptr }, ptr %t80, !tbaa !37
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s2, ptr %v4, ptr %l11, { i64, ptr } %t81)
  br label %bb20
bb20:
  br label %bb21
bb21:
  %t86 = load i64, ptr %l17, !tbaa !24
  %t88 = add i64 %t86, 1
  store i64 %t88, ptr %l17, !tbaa !24
  br label %bb16
bb22:
  %t91 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %s2, ptr %s2, ptr %l11)
  store { i64, ptr } %t91, ptr %l72
  br label %bb23
bb23:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d24, i32 0, i32 1) }, ptr %l73, !tbaa !27
  %t92 = load { i64, ptr }, ptr %l72, !tbaa !27
  %t93 = load { i64, ptr }, ptr %l73, !tbaa !27
  %t94 = call { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %s2, ptr %s2, ptr %s2, ptr %s2, { i64, ptr } %t92, { i64, ptr } %t93, i1 false, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d25, i32 0, i32 1) })
  %t95 = extractvalue { i32, %"std/os:Output" } %t94, 1
  %t96 = extractvalue { i32, %"std/os:Output" } %t94, 0
  store i32 %t96, ptr %l75
  %t97 = icmp ne i32 %t96, 0
  br i1 %t97, label %bb25, label %ok.98, !prof !99
ok.98:
  store %"std/os:Output" %t95, ptr %l74
  br label %bb24
bb24:
  %t99 = load %"std/os:Output", ptr %l74
  store %"std/os:Output" %t99, ptr %l70
  br label %bb31
bb25:
  %t100 = load i32, ptr %l75, !tbaa !23
  %t101 = ashr i32 %t100, 16
  %t103 = icmp eq i32 %t101, 1
  store i1 %t103, ptr %l77, !tbaa !21
  %t104 = load i32, ptr %l75, !tbaa !23
  %t105 = ashr i32 %t104, 16
  %t107 = icmp eq i32 %t105, 1
  br i1 %t107, label %bb26, label %bb27
bb26:
  call void @__olang_errpay_pop()
  br label %bb27
bb27:
  br label %bb28
bb28:
  store %olang.scope zeroinitializer, ptr %s9
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t110 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t112 = extractvalue { i64, ptr } %t110, 1
  %t113 = extractvalue { i64, ptr } %t110, 0
  %t114 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t115 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  %t116 = add i64 %t113, %t115
  %t117 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t116)
  call void @olang_textcopy(ptr %t117, ptr %t112, i64 %t113)
  %t118 = getelementptr i8, ptr %t117, i64 %t113
  call void @olang_textcopy(ptr %t118, ptr %t114, i64 %t115)
  %t119 = insertvalue { i64, ptr } undef, i64 %t116, 0
  %t120 = insertvalue { i64, ptr } %t119, ptr %t117, 1
  %t122 = extractvalue { i64, ptr } %t120, 0
  %t123 = extractvalue { i64, ptr } %t120, 1
  %t124 = mul i64 %t122, 1
  %t125 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t124)
  call void @llvm.memcpy.p0.p0.i64(ptr %t125, ptr %t123, i64 %t124, i1 false)
  %t126 = insertvalue { i64, ptr } undef, i64 %t122, 0
  %t127 = insertvalue { i64, ptr } %t126, ptr %t125, 1
  %t130 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2epaint(ptr %v0, ptr %s9, ptr %s9, ptr %s9, ptr %t109, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d27, i32 0, i32 1) }, { i64, ptr } %t127)
  store { i64, ptr } %t130, ptr %l84
  br label %bb29
bb29:
  %t131 = load { i64, ptr }, ptr %l84, !tbaa !27
  %t132 = extractvalue { i64, ptr } %t131, 0
  %t133 = extractvalue { i64, ptr } %t131, 1
  %t134 = mul i64 %t132, 1
  %t135 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t134)
  call void @llvm.memcpy.p0.p0.i64(ptr %t135, ptr %t133, i64 %t134, i1 false)
  %t136 = insertvalue { i64, ptr } undef, i64 %t132, 0
  %t137 = insertvalue { i64, ptr } %t136, ptr %t135, 1
  call void @compiler_2fbuild_2esayln(ptr %s9, { i64, ptr } %t137)
  br label %bb30
bb30:
  store i1 true, ptr %l5, !tbaa !21
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s2)
  br label %bb47
bb31:
  %t139 = load %"std/os:Output", ptr %l70
  store %"std/os:Output" %t139, ptr %l20
  %t140 = getelementptr %"std/os:Output", ptr %l20, i32 0, i32 0
  %t141 = load i32, ptr %t140, !tbaa !23
  %t143 = icmp sgt i32 %t141, 128
  br i1 %t143, label %bb32, label %bb33
bb32:
  store %olang.scope zeroinitializer, ptr %s11
  %t145 = load ptr, ptr %l0, !tbaa !29
  store ptr %t145, ptr %l88, !tbaa !29
  %t146 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t146, ptr %l89, !tbaa !27
  %t147 = getelementptr %"std/os:Output", ptr %l20, i32 0, i32 0
  %t148 = load i32, ptr %t147, !tbaa !23
  %t150 = sub i32 %t148, 128
  %t152 = call { i64, ptr } @compiler_2fbuild_2eSignalName(ptr %s11, i32 %t150)
  store { i64, ptr } %t152, ptr %l92
  br label %bb34
bb33:
  br label %bb37
bb34:
  %t153 = load { i64, ptr }, ptr %l89, !tbaa !27
  %t154 = extractvalue { i64, ptr } %t153, 1
  %t155 = extractvalue { i64, ptr } %t153, 0
  %t156 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t157 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  %t158 = add i64 %t155, %t157
  %t159 = load { i64, ptr }, ptr %l92, !tbaa !27
  %t160 = extractvalue { i64, ptr } %t159, 1
  %t161 = extractvalue { i64, ptr } %t159, 0
  %t162 = add i64 %t158, %t161
  %t163 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d29, i32 0, i32 1) }, 1
  %t164 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d29, i32 0, i32 1) }, 0
  %t165 = add i64 %t162, %t164
  %t166 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t165)
  call void @olang_textcopy(ptr %t166, ptr %t154, i64 %t155)
  %t167 = getelementptr i8, ptr %t166, i64 %t155
  call void @olang_textcopy(ptr %t167, ptr %t156, i64 %t157)
  %t168 = getelementptr i8, ptr %t167, i64 %t157
  call void @olang_textcopy(ptr %t168, ptr %t160, i64 %t161)
  %t169 = getelementptr i8, ptr %t168, i64 %t161
  call void @olang_textcopy(ptr %t169, ptr %t163, i64 %t164)
  %t170 = insertvalue { i64, ptr } undef, i64 %t165, 0
  %t171 = insertvalue { i64, ptr } %t170, ptr %t166, 1
  %t173 = extractvalue { i64, ptr } %t171, 0
  %t174 = extractvalue { i64, ptr } %t171, 1
  %t175 = mul i64 %t173, 1
  %t176 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t175)
  call void @llvm.memcpy.p0.p0.i64(ptr %t176, ptr %t174, i64 %t175, i1 false)
  %t177 = insertvalue { i64, ptr } undef, i64 %t173, 0
  %t178 = insertvalue { i64, ptr } %t177, ptr %t176, 1
  %t179 = load ptr, ptr %l88, !tbaa !29
  %t181 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2epaint(ptr %v0, ptr %s11, ptr %s11, ptr %s11, ptr %t179, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d30, i32 0, i32 1) }, { i64, ptr } %t178)
  store { i64, ptr } %t181, ptr %l95
  br label %bb35
bb35:
  %t182 = load { i64, ptr }, ptr %l95, !tbaa !27
  %t183 = extractvalue { i64, ptr } %t182, 0
  %t184 = extractvalue { i64, ptr } %t182, 1
  %t185 = mul i64 %t183, 1
  %t186 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t185)
  call void @llvm.memcpy.p0.p0.i64(ptr %t186, ptr %t184, i64 %t185, i1 false)
  %t187 = insertvalue { i64, ptr } undef, i64 %t183, 0
  %t188 = insertvalue { i64, ptr } %t187, ptr %t186, 1
  call void @compiler_2fbuild_2esayln(ptr %s11, { i64, ptr } %t188)
  br label %bb36
bb36:
  call void @__olang_scope_close(ptr %s11)
  br label %bb37
bb37:
  %t190 = getelementptr %"std/os:Output", ptr %l20, i32 0, i32 0
  %t191 = load i32, ptr %t190, !tbaa !23
  %t193 = icmp ne i32 %t191, 3
  br i1 %t193, label %bb38, label %bb39
bb38:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb40
bb39:
  br label %bb40
bb40:
  %t195 = getelementptr %"std/os:Output", ptr %l20, i32 0, i32 0
  %t196 = load i32, ptr %t195, !tbaa !23
  %t198 = icmp ne i32 %t196, 0
  br i1 %t198, label %bb41, label %bb42
bb41:
  %t200 = getelementptr %"std/os:Output", ptr %l20, i32 0, i32 0
  %t201 = load i32, ptr %t200, !tbaa !23
  %t203 = icmp ne i32 %t201, 3
  store i1 %t203, ptr %l101, !tbaa !21
  br label %bb43
bb42:
  store i1 false, ptr %l101, !tbaa !21
  br label %bb43
bb43:
  %t205 = load i1, ptr %l101, !tbaa !21
  br i1 %t205, label %bb44, label %bb45
bb44:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb46
bb45:
  br label %bb46
bb46:
  call void @__olang_scope_close(ptr %s2)
  br label %bb47
bb47:
  %t206 = load i64, ptr %l8, !tbaa !24
  %t208 = add i64 %t206, 1
  store i64 %t208, ptr %l8, !tbaa !24
  br label %bb1
bb48:
  %t210 = load i1, ptr %l6, !tbaa !21
  %t212 = xor i1 %t210, true
  br i1 %t212, label %bb49, label %bb50
bb49:
  %t214 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t216 = extractvalue { i64, ptr } %t214, 0
  %t218 = icmp sgt i64 %t216, 0
  store i1 %t218, ptr %l108, !tbaa !21
  br label %bb51
bb50:
  store i1 false, ptr %l108, !tbaa !21
  br label %bb51
bb51:
  %t220 = load i1, ptr %l108, !tbaa !21
  br i1 %t220, label %bb52, label %bb53
bb52:
  store %olang.scope zeroinitializer, ptr %s16
  %t221 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s16, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t221, ptr %l112
  br label %bb54
bb53:
  br label %bb67
bb54:
  %t222 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l112
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t222, ptr %l21
  %t223 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t223, ptr %l22, !tbaa !27
  store i64 0, ptr %l23, !tbaa !24
  %t225 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t227 = extractvalue { i64, ptr } %t225, 0
  store i64 %t227, ptr %l24, !tbaa !24
  br label %bb55
bb55:
  %t229 = load i64, ptr %l23, !tbaa !24
  %t230 = load i64, ptr %l24, !tbaa !24
  %t233 = icmp slt i64 %t229, %t230
  %t235 = xor i1 %t233, true
  br i1 %t235, label %bb56, label %bb57
bb56:
  br label %bb63
bb57:
  br label %bb58
bb58:
  %t237 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t237, ptr %l120, !tbaa !27
  %t238 = load i64, ptr %l23, !tbaa !24
  %t240 = getelementptr { i64, ptr }, ptr %l120, i32 0, i32 1
  %t241 = load ptr, ptr %t240, !tbaa !27
  %t242 = getelementptr { i64, ptr }, ptr %t241, i64 %t238
  %t243 = load { i64, ptr }, ptr %t242, !tbaa !37
  store { i64, ptr } %t243, ptr %l25, !tbaa !27
  store ptr %l21, ptr %l123, !tbaa !29
  %t245 = ptrtoint ptr %s16 to i64
  store i64 %t245, ptr %l124, !tbaa !24
  %t246 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t246, label %bb59, label %bb60
bb59:
  %t248 = call ptr @__olang_region_make(ptr %s16)
  %t249 = ptrtoint ptr %t248 to i64
  store i64 %t249, ptr %l124, !tbaa !24
  br label %bb60
bb60:
  %t250 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t251 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d31, i32 0, i32 1) }, 1
  %t252 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d31, i32 0, i32 1) }, 0
  %t254 = extractvalue { i64, ptr } %t250, 1
  %t255 = extractvalue { i64, ptr } %t250, 0
  %t256 = add i64 %t252, %t255
  %t257 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d32, i32 0, i32 1) }, 1
  %t258 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d32, i32 0, i32 1) }, 0
  %t259 = add i64 %t256, %t258
  %t260 = load i64, ptr %l124
  %t261 = inttoptr i64 %t260 to ptr
  %t262 = call ptr @__olang_scope_alloc(ptr %t261, i64 %t259)
  call void @olang_textcopy(ptr %t262, ptr %t251, i64 %t252)
  %t263 = getelementptr i8, ptr %t262, i64 %t252
  call void @olang_textcopy(ptr %t263, ptr %t254, i64 %t255)
  %t264 = getelementptr i8, ptr %t263, i64 %t255
  call void @olang_textcopy(ptr %t264, ptr %t257, i64 %t258)
  %t265 = insertvalue { i64, ptr } undef, i64 %t259, 0
  %t266 = insertvalue { i64, ptr } %t265, ptr %t262, 1
  %t268 = load i64, ptr %l124
  %t269 = inttoptr i64 %t268 to ptr
  %t270 = extractvalue { i64, ptr } %t266, 0
  %t271 = extractvalue { i64, ptr } %t266, 1
  %t272 = mul i64 %t270, 1
  %t273 = call ptr @__olang_scope_alloc(ptr %t269, i64 %t272)
  call void @llvm.memcpy.p0.p0.i64(ptr %t273, ptr %t271, i64 %t272, i1 false)
  %t274 = insertvalue { i64, ptr } undef, i64 %t270, 0
  %t275 = insertvalue { i64, ptr } %t274, ptr %t273, 1
  %t276 = load ptr, ptr %l123, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s16, ptr %s16, ptr %t276, { i64, ptr } %t275)
  br label %bb61
bb61:
  br label %bb62
bb62:
  %t278 = load i64, ptr %l23, !tbaa !24
  %t280 = add i64 %t278, 1
  store i64 %t280, ptr %l23, !tbaa !24
  br label %bb55
bb63:
  %t282 = load ptr, ptr %l0, !tbaa !29
  store ptr %t282, ptr %l131, !tbaa !29
  %t284 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %s16, ptr %s16, ptr %s16, ptr %l21, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d33, i32 0, i32 1) })
  store { i64, ptr } %t284, ptr %l133
  br label %bb64
bb64:
  %t285 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t286 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  %t287 = load { i64, ptr }, ptr %l133, !tbaa !27
  %t288 = extractvalue { i64, ptr } %t287, 1
  %t289 = extractvalue { i64, ptr } %t287, 0
  %t290 = add i64 %t286, %t289
  %t291 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t290)
  call void @olang_textcopy(ptr %t291, ptr %t285, i64 %t286)
  %t292 = getelementptr i8, ptr %t291, i64 %t286
  call void @olang_textcopy(ptr %t292, ptr %t288, i64 %t289)
  %t293 = insertvalue { i64, ptr } undef, i64 %t290, 0
  %t294 = insertvalue { i64, ptr } %t293, ptr %t291, 1
  %t296 = extractvalue { i64, ptr } %t294, 0
  %t297 = extractvalue { i64, ptr } %t294, 1
  %t298 = mul i64 %t296, 1
  %t299 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t298)
  call void @llvm.memcpy.p0.p0.i64(ptr %t299, ptr %t297, i64 %t298, i1 false)
  %t300 = insertvalue { i64, ptr } undef, i64 %t296, 0
  %t301 = insertvalue { i64, ptr } %t300, ptr %t299, 1
  %t302 = load ptr, ptr %l131, !tbaa !29
  %t304 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2epaint(ptr %v0, ptr %s16, ptr %s16, ptr %s16, ptr %t302, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d35, i32 0, i32 1) }, { i64, ptr } %t301)
  store { i64, ptr } %t304, ptr %l136
  br label %bb65
bb65:
  %t305 = load { i64, ptr }, ptr %l136, !tbaa !27
  %t306 = extractvalue { i64, ptr } %t305, 0
  %t307 = extractvalue { i64, ptr } %t305, 1
  %t308 = mul i64 %t306, 1
  %t309 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t308)
  call void @llvm.memcpy.p0.p0.i64(ptr %t309, ptr %t307, i64 %t308, i1 false)
  %t310 = insertvalue { i64, ptr } undef, i64 %t306, 0
  %t311 = insertvalue { i64, ptr } %t310, ptr %t309, 1
  call void @compiler_2fbuild_2esayln(ptr %s16, { i64, ptr } %t311)
  br label %bb66
bb66:
  call void @__olang_scope_close(ptr %s16)
  store i32 1, ptr %rv
  br label %ret
bb67:
  %t314 = load i1, ptr %l5, !tbaa !21
  br i1 %t314, label %bb68, label %bb69
bb68:
  store i32 1, ptr %l140, !tbaa !23
  br label %bb70
bb69:
  store i32 0, ptr %l140, !tbaa !23
  br label %bb70
bb70:
  %t316 = load i32, ptr %l140, !tbaa !23
  store i32 %t316, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fbuild_2eUnbuildable(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %s0 = alloca %olang.scope
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t2 = extractvalue { i64, ptr } { i64 62, ptr getelementptr inbounds (<{ i64, [62 x i8] }>, ptr @.d36, i32 0, i32 1) }, 1
  %t3 = extractvalue { i64, ptr } { i64 62, ptr getelementptr inbounds (<{ i64, [62 x i8] }>, ptr @.d36, i32 0, i32 1) }, 0
  %t5 = extractvalue { i64, ptr } %a0, 1
  %t6 = extractvalue { i64, ptr } %a0, 0
  %t7 = add i64 %t3, %t6
  %t8 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t7)
  call void @olang_textcopy(ptr %t8, ptr %t2, i64 %t3)
  %t9 = getelementptr i8, ptr %t8, i64 %t3
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
  call void @compiler_2fbuild_2esayln(ptr %s0, { i64, ptr } %t18)
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fbuild_2eafresh(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l3 = alloca i32
  %l5 = alloca i1
  %l9 = alloca i32
  %l11 = alloca i1
  %l14 = alloca { i64, ptr }
  %l15 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca i32
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call i32 @std_2fos_2eRemoveAll(ptr %v0, { i64, ptr } %t1)
  store i32 %t3, ptr %l3
  %t4 = icmp ne i32 %t3, 0
  br i1 %t4, label %bb2, label %ok.5, !prof !99
ok.5:
  br label %bb1
bb1:
  br label %bb6
bb2:
  %t6 = load i32, ptr %l3, !tbaa !23
  %t7 = ashr i32 %t6, 16
  %t9 = icmp eq i32 %t7, 1
  store i1 %t9, ptr %l5, !tbaa !21
  %t10 = load i32, ptr %l3, !tbaa !23
  %t11 = ashr i32 %t10, 16
  %t13 = icmp eq i32 %t11, 1
  br i1 %t13, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  br label %bb6
bb6:
  %t15 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t17 = call i32 @std_2fos_2eMkDirAll(ptr %v0, { i64, ptr } %t15)
  store i32 %t17, ptr %l9
  %t18 = icmp ne i32 %t17, 0
  br i1 %t18, label %bb8, label %ok.19, !prof !99
ok.19:
  br label %bb7
bb7:
  br label %bb14
bb8:
  %t20 = load i32, ptr %l9, !tbaa !23
  %t21 = ashr i32 %t20, 16
  %t23 = icmp eq i32 %t21, 1
  store i1 %t23, ptr %l11, !tbaa !21
  %t24 = load i32, ptr %l9, !tbaa !23
  %t25 = ashr i32 %t24, 16
  %t27 = icmp eq i32 %t25, 1
  br i1 %t27, label %bb9, label %bb10
bb9:
  call void @__olang_errpay_pop()
  br label %bb10
bb10:
  br label %bb11
bb11:
  %t29 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t29, ptr %l14, !tbaa !27
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCannotOpen(ptr %v1)
  store %"compiler/diagmsg:Msg" %t30, ptr %l15
  br label %bb12
bb12:
  %t32 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t33 = load %"compiler/diagmsg:Msg", ptr %l15
  call void @compiler_2fbuild_2efileFatal(ptr %v0, ptr %v1, ptr %v1, { i64, ptr } %t32, %"compiler/diagmsg:Msg" %t33, ptr %a1)
  br label %bb13
bb13:
  store i32 65536, ptr %rv
  br label %ret
bb14:
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i64 @compiler_2fbuild_2ecloseness(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l12 = alloca i64
  %l27 = alloca i64
  %l30 = alloca i64
  %l48 = alloca { i64, ptr }
  %l49 = alloca { i64, ptr }
  %l50 = alloca i64
  %l54 = alloca i64
  %l55 = alloca i64
  %l60 = alloca i64
  %rv = alloca i64
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t2 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t5 = call i64 @compiler_2fmsgs_2eDistance(ptr %v0, ptr %v1, { i64, ptr } %t1, { i64, ptr } %t2)
  store i64 %t5, ptr %l12
  br label %bb1
bb1:
  %t6 = load i64, ptr %l12, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  %t7 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  %t10 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t10, 0
  %t15 = icmp sgt i64 %t9, %t12
  br i1 %t15, label %bb2, label %bb3
bb2:
  store i64 0, ptr %l3, !tbaa !24
  %t17 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t17, 0
  %t20 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t22 = extractvalue { i64, ptr } %t20, 0
  %t25 = sub i64 %t19, %t22
  %t27 = add i64 %t25, 1
  store i64 %t27, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t29 = load i64, ptr %l4, !tbaa !24
  %t30 = load i64, ptr %l3, !tbaa !24
  %t33 = icmp sgt i64 %t29, %t30
  br i1 %t33, label %bb4, label %bb5
bb3:
  br label %bb26
bb4:
  %t35 = load i64, ptr %l5, !tbaa !24
  %t37 = icmp sgt i64 %t35, 0
  br i1 %t37, label %bb6, label %bb7
bb5:
  store i64 0, ptr %l27, !tbaa !24
  br label %bb9
bb6:
  %t39 = load i64, ptr %l4, !tbaa !24
  %t40 = load i64, ptr %l3, !tbaa !24
  %t43 = sub i64 %t39, %t40
  %t44 = load i64, ptr %l5, !tbaa !24
  %t47 = add i64 %t43, %t44
  %t49 = sub i64 %t47, 1
  %t50 = load i64, ptr %l5, !tbaa !24
  %t53 = sdiv i64 %t49, %t50
  store i64 %t53, ptr %l30, !tbaa !24
  br label %bb8
bb7:
  store i64 0, ptr %l30, !tbaa !24
  br label %bb8
bb8:
  %t55 = load i64, ptr %l30, !tbaa !24
  store i64 %t55, ptr %l27, !tbaa !24
  br label %bb9
bb9:
  %t56 = load i64, ptr %l27, !tbaa !24
  store i64 %t56, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb10
bb10:
  %t57 = load i64, ptr %l7, !tbaa !24
  %t58 = load i64, ptr %l6, !tbaa !24
  %t61 = icmp slt i64 %t57, %t58
  %t63 = xor i1 %t61, true
  br i1 %t63, label %bb11, label %bb12
bb11:
  br label %bb25
bb12:
  br label %bb13
bb13:
  %t65 = load i64, ptr %l3, !tbaa !24
  %t66 = load i64, ptr %l7, !tbaa !24
  %t67 = load i64, ptr %l5, !tbaa !24
  %t70 = mul i64 %t66, %t67
  %t73 = add i64 %t65, %t70
  store i64 %t73, ptr %l8, !tbaa !24
  %t75 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t75, ptr %l48, !tbaa !27
  %t76 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t76, ptr %l49, !tbaa !27
  %t77 = load i64, ptr %l8, !tbaa !24
  store i64 %t77, ptr %l50, !tbaa !24
  %t78 = load i64, ptr %l8, !tbaa !24
  %t79 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t81 = extractvalue { i64, ptr } %t79, 0
  %t84 = add i64 %t78, %t81
  store i64 %t84, ptr %l54, !tbaa !24
  %t85 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t86 = extractvalue { i64, ptr } %t85, 0
  store i64 %t86, ptr %l55, !tbaa !24
  %t87 = load i64, ptr %l50, !tbaa !24
  %t88 = icmp sge i64 %t87, 0
  br i1 %t88, label %bb14, label %bb15
bb14:
  %t90 = load i64, ptr %l50, !tbaa !24
  %t91 = load i64, ptr %l54, !tbaa !24
  %t92 = icmp sle i64 %t90, %t91
  br i1 %t92, label %bb16, label %bb17
bb15:
  call void @__olang_check_failed(ptr @olang_loc_7d17f382592ac8ef_3cd22268ed245003)
  unreachable
bb16:
  %t94 = load i64, ptr %l54, !tbaa !24
  %t95 = load i64, ptr %l55, !tbaa !24
  %t96 = icmp sle i64 %t94, %t95
  br i1 %t96, label %bb18, label %bb19
bb17:
  call void @__olang_check_failed(ptr @olang_loc_7d17f382592ac8ef_3cd22268ed245003)
  unreachable
bb18:
  %t98 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !27
  %t100 = load i64, ptr %l50, !tbaa !24
  %t101 = load i64, ptr %l54, !tbaa !24
  %t102 = getelementptr i8, ptr %t99, i64 %t100
  %t103 = sub i64 %t101, %t100
  %t104 = insertvalue { i64, ptr } undef, i64 %t103, 0
  %t105 = insertvalue { i64, ptr } %t104, ptr %t102, 1
  %t106 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t108 = call i64 @compiler_2fmsgs_2eDistance(ptr %v0, ptr %v1, { i64, ptr } %t106, { i64, ptr } %t105)
  store i64 %t108, ptr %l60
  br label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_7d17f382592ac8ef_3cd22268ed245003)
  unreachable
bb20:
  %t109 = load i64, ptr %l60, !tbaa !24
  store i64 %t109, ptr %l9, !tbaa !24
  %t110 = load i64, ptr %l9, !tbaa !24
  %t111 = load i64, ptr %l2, !tbaa !24
  %t114 = icmp slt i64 %t110, %t111
  br i1 %t114, label %bb21, label %bb22
bb21:
  %t116 = load i64, ptr %l9, !tbaa !24
  store i64 %t116, ptr %l2, !tbaa !24
  br label %bb23
bb22:
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t118 = load i64, ptr %l7, !tbaa !24
  %t120 = add i64 %t118, 1
  store i64 %t120, ptr %l7, !tbaa !24
  br label %bb10
bb25:
  br label %bb26
bb26:
  %t122 = load i64, ptr %l2, !tbaa !24
  store i64 %t122, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eCFlags(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %lp1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca ptr
  %l7 = alloca i64
  %l13 = alloca { i64, ptr }
  %l15 = alloca i1
  %l17 = alloca ptr
  %l18 = alloca i64
  %l25 = alloca i1
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l3
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t2, ptr %lp1
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t4 = load ptr, ptr %lp1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/build:Config", ptr %t5, i32 0, i32 2
  %t8 = getelementptr %"compiler/target:Target", ptr %t7, i32 0, i32 9
  %t9 = load i1, ptr %t8, !tbaa !21
  br i1 %t9, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t11 = load ptr, ptr %lp1
  store ptr %t11, ptr %l6, !tbaa !29
  %t12 = ptrtoint ptr %v1 to i64
  store i64 %t12, ptr %l7, !tbaa !24
  %t13 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t13, label %bb4, label %bb5
bb3:
  br label %bb15
bb4:
  %t15 = call ptr @__olang_region_make(ptr %v1)
  %t16 = ptrtoint ptr %t15 to i64
  store i64 %t16, ptr %l7, !tbaa !24
  br label %bb5
bb5:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/build:Config", ptr %t17, i32 0, i32 2
  %t20 = getelementptr %"compiler/target:Target", ptr %t19, i32 0, i32 1
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !27
  %t22 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d37, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d37, i32 0, i32 1) }, 0
  %t25 = extractvalue { i64, ptr } %t21, 1
  %t26 = extractvalue { i64, ptr } %t21, 0
  %t27 = add i64 %t23, %t26
  %t28 = load i64, ptr %l7
  %t29 = inttoptr i64 %t28 to ptr
  %t30 = call ptr @__olang_scope_alloc(ptr %t29, i64 %t27)
  call void @olang_textcopy(ptr %t30, ptr %t22, i64 %t23)
  %t31 = getelementptr i8, ptr %t30, i64 %t23
  call void @olang_textcopy(ptr %t31, ptr %t25, i64 %t26)
  %t32 = insertvalue { i64, ptr } undef, i64 %t27, 0
  %t33 = insertvalue { i64, ptr } %t32, ptr %t30, 1
  %t35 = load i64, ptr %l7
  %t36 = inttoptr i64 %t35 to ptr
  %t37 = extractvalue { i64, ptr } %t33, 0
  %t38 = extractvalue { i64, ptr } %t33, 1
  %t39 = mul i64 %t37, 1
  %t40 = call ptr @__olang_scope_alloc(ptr %t36, i64 %t39)
  call void @llvm.memcpy.p0.p0.i64(ptr %t40, ptr %t38, i64 %t39, i1 false)
  %t41 = insertvalue { i64, ptr } undef, i64 %t37, 0
  %t42 = insertvalue { i64, ptr } %t41, ptr %t40, 1
  %t43 = load ptr, ptr %l6, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t43, { i64, ptr } %t42)
  br label %bb6
bb6:
  %t45 = call { i64, ptr } @compiler_2ftarget_2eSysroot(ptr %s1)
  store { i64, ptr } %t45, ptr %l13
  br label %bb7
bb7:
  %t46 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t46, ptr %l2, !tbaa !27
  %t47 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t49 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s1, ptr %s1, { i64, ptr } %t47, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d38, i32 0, i32 1) })
  store i1 %t49, ptr %l15
  br label %bb8
bb8:
  %t50 = load i1, ptr %l15, !tbaa !21
  %t51 = xor i1 %t50, true
  br i1 %t51, label %bb9, label %bb10
bb9:
  %t53 = load ptr, ptr %lp1
  store ptr %t53, ptr %l17, !tbaa !29
  %t54 = ptrtoint ptr %v1 to i64
  store i64 %t54, ptr %l18, !tbaa !24
  %t55 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t55, label %bb11, label %bb12
bb10:
  br label %bb14
bb11:
  %t57 = call ptr @__olang_region_make(ptr %v1)
  %t58 = ptrtoint ptr %t57 to i64
  store i64 %t58, ptr %l18, !tbaa !24
  br label %bb12
bb12:
  %t59 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t60 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d39, i32 0, i32 1) }, 1
  %t61 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d39, i32 0, i32 1) }, 0
  %t63 = extractvalue { i64, ptr } %t59, 1
  %t64 = extractvalue { i64, ptr } %t59, 0
  %t65 = add i64 %t61, %t64
  %t66 = load i64, ptr %l18
  %t67 = inttoptr i64 %t66 to ptr
  %t68 = call ptr @__olang_scope_alloc(ptr %t67, i64 %t65)
  call void @olang_textcopy(ptr %t68, ptr %t60, i64 %t61)
  %t69 = getelementptr i8, ptr %t68, i64 %t61
  call void @olang_textcopy(ptr %t69, ptr %t63, i64 %t64)
  %t70 = insertvalue { i64, ptr } undef, i64 %t65, 0
  %t71 = insertvalue { i64, ptr } %t70, ptr %t68, 1
  %t73 = load i64, ptr %l18
  %t74 = inttoptr i64 %t73 to ptr
  %t75 = extractvalue { i64, ptr } %t71, 0
  %t76 = extractvalue { i64, ptr } %t71, 1
  %t77 = mul i64 %t75, 1
  %t78 = call ptr @__olang_scope_alloc(ptr %t74, i64 %t77)
  call void @llvm.memcpy.p0.p0.i64(ptr %t78, ptr %t76, i64 %t77, i1 false)
  %t79 = insertvalue { i64, ptr } undef, i64 %t75, 0
  %t80 = insertvalue { i64, ptr } %t79, ptr %t78, 1
  %t81 = load ptr, ptr %l17, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t81, { i64, ptr } %t80)
  br label %bb13
bb13:
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s1)
  br label %bb15
bb15:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/build:Config", ptr %t83, i32 0, i32 2
  %t86 = getelementptr %"compiler/target:Target", ptr %t85, i32 0, i32 6
  %t87 = load { i64, ptr }, ptr %t86, !tbaa !27
  %t89 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t87, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d40, i32 0, i32 1) })
  store i1 %t89, ptr %l25
  br label %bb16
bb16:
  %t90 = load i1, ptr %l25, !tbaa !21
  %t91 = xor i1 %t90, true
  br i1 %t91, label %bb17, label %bb18
bb17:
  %t93 = load ptr, ptr %lp1
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/build:Config", ptr %t94, i32 0, i32 2
  %t97 = getelementptr %"compiler/target:Target", ptr %t96, i32 0, i32 6
  %t98 = load { i64, ptr }, ptr %t97, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v0, ptr %t93, { i64, ptr } %t98)
  br label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb20
bb20:
  %t101 = load ptr, ptr %lp1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t101, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d41, i32 0, i32 1) })
  br label %bb21
bb21:
  %t103 = load ptr, ptr %lp1
  %t104 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t103
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t104, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eCompileFlags(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %lp2 = alloca ptr
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca i1
  %l14 = alloca { i64, ptr }
  %l15 = alloca i1
  %l21 = alloca ptr
  %l22 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eModeFlags(ptr %v0, ptr %v2, ptr %t1)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %l4
  br label %bb1
bb1:
  %t4 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t4, ptr %lp2
  %t5 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l4
  %t6 = load ptr, ptr %lp2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %t6
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/build:Config", ptr %t7, i32 0, i32 12
  %t10 = load i1, ptr %t9, !tbaa !21
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = load ptr, ptr %lp2
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v2, ptr %v2, ptr %t12, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d42, i32 0, i32 1) })
  br label %bb4
bb3:
  br label %bb6
bb4:
  %t14 = load ptr, ptr %lp2
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v2, ptr %v2, ptr %t14, { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d43, i32 0, i32 1) })
  br label %bb5
bb5:
  br label %bb6
bb6:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/build:Config", ptr %t16, i32 0, i32 4
  %t19 = load i1, ptr %t18, !tbaa !21
  br i1 %t19, label %bb7, label %bb8
bb7:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d44, i32 0, i32 1) }, ptr %l14, !tbaa !27
  %t24 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t25 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v1, ptr %s0, { i64, ptr } %a1, { i64, ptr } %t24)
  store i1 %t25, ptr %l15
  br label %bb9
bb8:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb10
bb9:
  %t26 = load i1, ptr %l15, !tbaa !21
  store i1 %t26, ptr %l11, !tbaa !21
  br label %bb10
bb10:
  %t27 = load i1, ptr %l11, !tbaa !21
  br i1 %t27, label %bb11, label %bb12
bb11:
  %t28 = load ptr, ptr %lp2
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v2, ptr %v2, ptr %t28, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d45, i32 0, i32 1) })
  br label %bb13
bb12:
  br label %bb15
bb13:
  %t30 = load ptr, ptr %lp2
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v2, ptr %v2, ptr %t30, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d46, i32 0, i32 1) })
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/build:Config", ptr %t32, i32 0, i32 14
  %t35 = load i1, ptr %t34, !tbaa !21
  br i1 %t35, label %bb16, label %bb17
bb16:
  %t37 = load ptr, ptr %lp2
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v2, ptr %v2, ptr %t37, { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d47, i32 0, i32 1) })
  br label %bb18
bb17:
  br label %bb22
bb18:
  %t39 = load ptr, ptr %lp2
  store ptr %t39, ptr %l21, !tbaa !29
  %t40 = ptrtoint ptr %v2 to i64
  store i64 %t40, ptr %l22, !tbaa !24
  %t41 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t41, label %bb19, label %bb20
bb19:
  %t43 = call ptr @__olang_region_make(ptr %v2)
  %t44 = ptrtoint ptr %t43 to i64
  store i64 %t44, ptr %l22, !tbaa !24
  br label %bb20
bb20:
  %t45 = load { i64, ptr }, ptr @G_2ecompiler_2fbuild_2eRemarkPasses, !tbaa !27
  %t46 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d48, i32 0, i32 1) }, 1
  %t47 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d48, i32 0, i32 1) }, 0
  %t49 = extractvalue { i64, ptr } %t45, 1
  %t50 = extractvalue { i64, ptr } %t45, 0
  %t51 = add i64 %t47, %t50
  %t52 = load i64, ptr %l22
  %t53 = inttoptr i64 %t52 to ptr
  %t54 = call ptr @__olang_scope_alloc(ptr %t53, i64 %t51)
  call void @olang_textcopy(ptr %t54, ptr %t46, i64 %t47)
  %t55 = getelementptr i8, ptr %t54, i64 %t47
  call void @olang_textcopy(ptr %t55, ptr %t49, i64 %t50)
  %t56 = insertvalue { i64, ptr } undef, i64 %t51, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t54, 1
  %t59 = load i64, ptr %l22
  %t60 = inttoptr i64 %t59 to ptr
  %t61 = extractvalue { i64, ptr } %t57, 0
  %t62 = extractvalue { i64, ptr } %t57, 1
  %t63 = mul i64 %t61, 1
  %t64 = call ptr @__olang_scope_alloc(ptr %t60, i64 %t63)
  call void @llvm.memcpy.p0.p0.i64(ptr %t64, ptr %t62, i64 %t63, i1 false)
  %t65 = insertvalue { i64, ptr } undef, i64 %t61, 0
  %t66 = insertvalue { i64, ptr } %t65, ptr %t64, 1
  %t67 = load ptr, ptr %l21, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v2, ptr %v2, ptr %t67, { i64, ptr } %t66)
  br label %bb21
bb21:
  br label %bb22
bb22:
  %t69 = load ptr, ptr %lp2
  %t70 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t69
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t70, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eFnAttrs(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/build:Config", ptr %t1, i32 0, i32 2
  %t4 = getelementptr %"compiler/target:Target", ptr %t3, i32 0, i32 5
  %t5 = load { i64, ptr }, ptr %t4, !tbaa !27
  store { i64, ptr } %t5, ptr %l2, !tbaa !27
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/build:Config", ptr %t6, i32 0, i32 12
  %t9 = load i1, ptr %t8, !tbaa !21
  br i1 %t9, label %bb1, label %bb2
bb1:
  store { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d49, i32 0, i32 1) }, ptr %l5, !tbaa !27
  br label %bb3
bb2:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d50, i32 0, i32 1) }, ptr %l5, !tbaa !27
  br label %bb3
bb3:
  %t11 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t11, 1
  %t13 = extractvalue { i64, ptr } %t11, 0
  %t14 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t15 = extractvalue { i64, ptr } %t14, 1
  %t16 = extractvalue { i64, ptr } %t14, 0
  %t17 = add i64 %t13, %t16
  %t18 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t17)
  call void @olang_textcopy(ptr %t18, ptr %t12, i64 %t13)
  %t19 = getelementptr i8, ptr %t18, i64 %t13
  call void @olang_textcopy(ptr %t19, ptr %t15, i64 %t16)
  %t20 = insertvalue { i64, ptr } undef, i64 %t17, 0
  %t21 = insertvalue { i64, ptr } %t20, ptr %t18, 1
  store { i64, ptr } %t21, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eLink(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, { i64, ptr } %a2, i1 %a3, ptr %a4, ptr %a5) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca ptr
  %l8 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca %"std/prelude/text:StringBuilder"
  %l12 = alloca ptr
  %l13 = alloca i64
  %l15 = alloca ptr
  %l16 = alloca i64
  %l18 = alloca ptr
  %l19 = alloca i64
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l22 = alloca ptr
  %l23 = alloca i64
  %l25 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l27 = alloca %"std/os:Output"
  %l28 = alloca %"std/os:FileInfo"
  %l29 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l34 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l36 = alloca i64
  %l38 = alloca i64
  %l43 = alloca { i64, ptr }
  %l50 = alloca ptr
  %l51 = alloca i64
  %l57 = alloca ptr
  %l58 = alloca i64
  %l69 = alloca %"std/prelude/text:StringBuilder"
  %l72 = alloca i64
  %l74 = alloca i64
  %l79 = alloca { i64, ptr }
  %l87 = alloca { i64, ptr }
  %l89 = alloca { i64, ptr }
  %l92 = alloca i32
  %l94 = alloca i1
  %l98 = alloca ptr
  %l99 = alloca i64
  %l104 = alloca ptr
  %l105 = alloca i64
  %l108 = alloca { i64, ptr }
  %l115 = alloca i64
  %l117 = alloca i64
  %l122 = alloca { i64, ptr }
  %l128 = alloca i64
  %l130 = alloca i64
  %l135 = alloca { i64, ptr }
  %l149 = alloca i1
  %l156 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l158 = alloca i64
  %l160 = alloca i64
  %l165 = alloca { i64, ptr }
  %l170 = alloca ptr
  %l172 = alloca { i64, ptr }
  %l174 = alloca { i64, ptr }
  %l180 = alloca i1
  %l182 = alloca i32
  %l184 = alloca i1
  %l189 = alloca i1
  %l191 = alloca %"std/os:Output"
  %l193 = alloca { i64, ptr }
  %l194 = alloca { i64, ptr }
  %l195 = alloca %"std/os:Output"
  %l196 = alloca i32
  %l198 = alloca i1
  %l205 = alloca ptr
  %l208 = alloca %"std/os:FileInfo"
  %l210 = alloca %"std/os:FileInfo"
  %l211 = alloca i32
  %l213 = alloca i1
  %l223 = alloca i32
  %l225 = alloca i1
  %s0 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store { i64, ptr } %a2, ptr %l2
  store ptr %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l29
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l29
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l6
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/build:Config", ptr %t3, i32 0, i32 1
  %t6 = load { i64, ptr }, ptr %t5, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %v0, ptr %l6, { i64, ptr } %t6)
  br label %bb2
bb2:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eModeFlags(ptr %v0, ptr %s0, ptr %t9)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t11, ptr %l34
  br label %bb3
bb3:
  %t12 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l34
  %t13 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t12, ptr %t13
  store ptr %t13, ptr %l7, !tbaa !29
  store i64 0, ptr %l8, !tbaa !24
  br label %bb4
bb4:
  %t15 = load i64, ptr %l8, !tbaa !24
  store i64 %t15, ptr %l36, !tbaa !24
  %t16 = load ptr, ptr %l7, !tbaa !29
  %t18 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %t16)
  store i64 %t18, ptr %l38
  br label %bb5
bb5:
  %t19 = load i64, ptr %l36, !tbaa !24
  %t20 = load i64, ptr %l38, !tbaa !24
  %t21 = icmp slt i64 %t19, %t20
  %t23 = xor i1 %t21, true
  br i1 %t23, label %bb6, label %bb7
bb6:
  br label %bb12
bb7:
  br label %bb8
bb8:
  %t25 = load ptr, ptr %l7, !tbaa !29
  %t26 = load i64, ptr %l8, !tbaa !24
  %t29 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %t25, i64 %t26)
  store { i64, ptr } %t29, ptr %l43
  br label %bb9
bb9:
  %t30 = load { i64, ptr }, ptr %l43, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l6, { i64, ptr } %t30)
  br label %bb10
bb10:
  br label %bb11
bb11:
  %t34 = load i64, ptr %l8, !tbaa !24
  %t36 = add i64 %t34, 1
  store i64 %t36, ptr %l8, !tbaa !24
  br label %bb4
bb12:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/build:Config", ptr %t38, i32 0, i32 27
  %t41 = load i1, ptr %t40, !tbaa !21
  br i1 %t41, label %bb13, label %bb14
bb13:
  store ptr %l6, ptr %l50, !tbaa !29
  %t43 = ptrtoint ptr %s0 to i64
  store i64 %t43, ptr %l51, !tbaa !24
  %t44 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t44, label %bb15, label %bb16
bb14:
  br label %bb21
bb15:
  %t46 = call ptr @__olang_region_make(ptr %s0)
  %t47 = ptrtoint ptr %t46 to i64
  store i64 %t47, ptr %l51, !tbaa !24
  br label %bb16
bb16:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/build:Config", ptr %t48, i32 0, i32 0
  %t51 = load { i64, ptr }, ptr %t50, !tbaa !27
  %t52 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d51, i32 0, i32 1) }, 1
  %t53 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d51, i32 0, i32 1) }, 0
  %t55 = extractvalue { i64, ptr } %t51, 1
  %t56 = extractvalue { i64, ptr } %t51, 0
  %t57 = add i64 %t53, %t56
  %t58 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d52, i32 0, i32 1) }, 1
  %t59 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d52, i32 0, i32 1) }, 0
  %t60 = add i64 %t57, %t59
  %t61 = load i64, ptr %l51
  %t62 = inttoptr i64 %t61 to ptr
  %t63 = call ptr @__olang_scope_alloc(ptr %t62, i64 %t60)
  call void @olang_textcopy(ptr %t63, ptr %t52, i64 %t53)
  %t64 = getelementptr i8, ptr %t63, i64 %t53
  call void @olang_textcopy(ptr %t64, ptr %t55, i64 %t56)
  %t65 = getelementptr i8, ptr %t64, i64 %t56
  call void @olang_textcopy(ptr %t65, ptr %t58, i64 %t59)
  %t66 = insertvalue { i64, ptr } undef, i64 %t60, 0
  %t67 = insertvalue { i64, ptr } %t66, ptr %t63, 1
  %t69 = load i64, ptr %l51
  %t70 = inttoptr i64 %t69 to ptr
  %t71 = extractvalue { i64, ptr } %t67, 0
  %t72 = extractvalue { i64, ptr } %t67, 1
  %t73 = mul i64 %t71, 1
  %t74 = call ptr @__olang_scope_alloc(ptr %t70, i64 %t73)
  call void @llvm.memcpy.p0.p0.i64(ptr %t74, ptr %t72, i64 %t73, i1 false)
  %t75 = insertvalue { i64, ptr } undef, i64 %t71, 0
  %t76 = insertvalue { i64, ptr } %t75, ptr %t74, 1
  %t77 = load ptr, ptr %l50, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t77, { i64, ptr } %t76)
  br label %bb17
bb17:
  store ptr %l6, ptr %l57, !tbaa !29
  %t79 = ptrtoint ptr %s0 to i64
  store i64 %t79, ptr %l58, !tbaa !24
  %t80 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t80, label %bb18, label %bb19
bb18:
  %t82 = call ptr @__olang_region_make(ptr %s0)
  %t83 = ptrtoint ptr %t82 to i64
  store i64 %t83, ptr %l58, !tbaa !24
  br label %bb19
bb19:
  %t84 = load i64, ptr @G_2ecompiler_2fbuild_2eImportLimit, !tbaa !24
  %t85 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d53, i32 0, i32 1) }, 1
  %t86 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d53, i32 0, i32 1) }, 0
  %t88 = call i64 @__olang_fmt_i64(ptr null, i64 %t84)
  %t89 = add i64 %t86, %t88
  %t90 = load i64, ptr %l58
  %t91 = inttoptr i64 %t90 to ptr
  %t92 = call ptr @__olang_scope_alloc(ptr %t91, i64 %t89)
  call void @olang_textcopy(ptr %t92, ptr %t85, i64 %t86)
  %t93 = getelementptr i8, ptr %t92, i64 %t86
  %t94 = call i64 @__olang_fmt_i64(ptr %t93, i64 %t84)
  %t95 = insertvalue { i64, ptr } undef, i64 %t89, 0
  %t96 = insertvalue { i64, ptr } %t95, ptr %t92, 1
  %t98 = load i64, ptr %l58
  %t99 = inttoptr i64 %t98 to ptr
  %t100 = extractvalue { i64, ptr } %t96, 0
  %t101 = extractvalue { i64, ptr } %t96, 1
  %t102 = mul i64 %t100, 1
  %t103 = call ptr @__olang_scope_alloc(ptr %t99, i64 %t102)
  call void @llvm.memcpy.p0.p0.i64(ptr %t103, ptr %t101, i64 %t102, i1 false)
  %t104 = insertvalue { i64, ptr } undef, i64 %t100, 0
  %t105 = insertvalue { i64, ptr } %t104, ptr %t103, 1
  %t106 = load ptr, ptr %l57, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t106, { i64, ptr } %t105)
  br label %bb20
bb20:
  br label %bb21
bb21:
  %t108 = load ptr, ptr %l5, !tbaa !29
  %t110 = icmp eq ptr %t108, null
  %t112 = xor i1 %t110, true
  br i1 %t112, label %bb22, label %bb23
bb22:
  store %olang.scope zeroinitializer, ptr %s7
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l6, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d54, i32 0, i32 1) })
  br label %bb24
bb23:
  br label %bb51
bb24:
  %t115 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t117 = extractvalue { i64, ptr } %t115, 1
  %t118 = extractvalue { i64, ptr } %t115, 0
  %t119 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d55, i32 0, i32 1) }, 1
  %t120 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d55, i32 0, i32 1) }, 0
  %t121 = add i64 %t118, %t120
  %t122 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t121)
  call void @olang_textcopy(ptr %t122, ptr %t117, i64 %t118)
  %t123 = getelementptr i8, ptr %t122, i64 %t118
  call void @olang_textcopy(ptr %t123, ptr %t119, i64 %t120)
  %t124 = insertvalue { i64, ptr } undef, i64 %t121, 0
  %t125 = insertvalue { i64, ptr } %t124, ptr %t122, 1
  store { i64, ptr } %t125, ptr %l10, !tbaa !27
  %t127 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s7)
  store %"std/prelude/text:StringBuilder" %t127, ptr %l69
  br label %bb25
bb25:
  %t128 = load %"std/prelude/text:StringBuilder", ptr %l69
  store %"std/prelude/text:StringBuilder" %t128, ptr %l11
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s7, ptr %s7, ptr %l11, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d56, i32 0, i32 1) })
  br label %bb26
bb26:
  %t130 = load ptr, ptr %l5, !tbaa !29
  store ptr %t130, ptr %l12, !tbaa !29
  store i64 0, ptr %l13, !tbaa !24
  br label %bb27
bb27:
  store %olang.scope zeroinitializer, ptr %s10
  %t132 = load i64, ptr %l13, !tbaa !24
  store i64 %t132, ptr %l72, !tbaa !24
  %t133 = load ptr, ptr %l12, !tbaa !29
  %t135 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v4, ptr %t133)
  store i64 %t135, ptr %l74
  br label %bb28
bb28:
  %t136 = load i64, ptr %l72, !tbaa !24
  %t137 = load i64, ptr %l74, !tbaa !24
  %t138 = icmp slt i64 %t136, %t137
  %t140 = xor i1 %t138, true
  br i1 %t140, label %bb29, label %bb30
bb29:
  call void @__olang_scope_close(ptr %s10)
  br label %bb35
bb30:
  br label %bb31
bb31:
  %t142 = load ptr, ptr %l12, !tbaa !29
  %t143 = load i64, ptr %l13, !tbaa !24
  %t146 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v4, ptr %v4, ptr %t142, i64 %t143)
  store { i64, ptr } %t146, ptr %l79
  br label %bb32
bb32:
  %t147 = load { i64, ptr }, ptr %l79, !tbaa !27
  %t149 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d57, i32 0, i32 1) }, 1
  %t150 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d57, i32 0, i32 1) }, 0
  %t152 = extractvalue { i64, ptr } %t147, 1
  %t153 = extractvalue { i64, ptr } %t147, 0
  %t154 = add i64 %t150, %t153
  %t155 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d58, i32 0, i32 1) }, 1
  %t156 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d58, i32 0, i32 1) }, 0
  %t157 = add i64 %t154, %t156
  %t158 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t157)
  call void @olang_textcopy(ptr %t158, ptr %t149, i64 %t150)
  %t159 = getelementptr i8, ptr %t158, i64 %t150
  call void @olang_textcopy(ptr %t159, ptr %t152, i64 %t153)
  %t160 = getelementptr i8, ptr %t159, i64 %t153
  call void @olang_textcopy(ptr %t160, ptr %t155, i64 %t156)
  %t161 = insertvalue { i64, ptr } undef, i64 %t157, 0
  %t162 = insertvalue { i64, ptr } %t161, ptr %t158, 1
  %t164 = extractvalue { i64, ptr } %t162, 0
  %t165 = extractvalue { i64, ptr } %t162, 1
  %t166 = mul i64 %t164, 1
  %t167 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t166)
  call void @llvm.memcpy.p0.p0.i64(ptr %t167, ptr %t165, i64 %t166, i1 false)
  %t168 = insertvalue { i64, ptr } undef, i64 %t164, 0
  %t169 = insertvalue { i64, ptr } %t168, ptr %t167, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s7, ptr %s10, ptr %l11, { i64, ptr } %t169)
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s10)
  br label %bb34
bb34:
  %t172 = load i64, ptr %l13, !tbaa !24
  %t174 = add i64 %t172, 1
  store i64 %t174, ptr %l13, !tbaa !24
  br label %bb27
bb35:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s7, ptr %s7, ptr %l11, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d59, i32 0, i32 1) })
  br label %bb36
bb36:
  %t177 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t177, ptr %l87, !tbaa !27
  %t179 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s7, ptr %s7, ptr %l11)
  store { i64, ptr } %t179, ptr %l89
  br label %bb37
bb37:
  %t180 = load { i64, ptr }, ptr %l89, !tbaa !27
  %t182 = extractvalue { i64, ptr } %t180, 0
  %t183 = extractvalue { i64, ptr } %t180, 1
  %t184 = mul i64 %t182, 1
  %t185 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t184)
  call void @llvm.memcpy.p0.p0.i64(ptr %t185, ptr %t183, i64 %t184, i1 false)
  %t186 = insertvalue { i64, ptr } undef, i64 %t182, 0
  %t187 = insertvalue { i64, ptr } %t186, ptr %t185, 1
  %t188 = load { i64, ptr }, ptr %l87, !tbaa !27
  %t190 = call i32 @std_2fos_2eWriteFile(ptr %s7, ptr %s7, { i64, ptr } %t188, { i64, ptr } %t187)
  store i32 %t190, ptr %l92
  %t191 = icmp ne i32 %t190, 0
  br i1 %t191, label %bb39, label %ok.192, !prof !99
ok.192:
  br label %bb38
bb38:
  br label %bb43
bb39:
  %t193 = load i32, ptr %l92, !tbaa !23
  %t194 = ashr i32 %t193, 16
  %t196 = icmp eq i32 %t194, 1
  store i1 %t196, ptr %l94, !tbaa !21
  %t197 = load i32, ptr %l92, !tbaa !23
  %t198 = ashr i32 %t197, 16
  %t200 = icmp eq i32 %t198, 1
  br i1 %t200, label %bb40, label %bb41
bb40:
  call void @__olang_errpay_pop()
  br label %bb41
bb41:
  br label %bb42
bb42:
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s0)
  store i32 65536, ptr %rv
  br label %ret
bb43:
  store ptr %l6, ptr %l98, !tbaa !29
  %t203 = ptrtoint ptr %s0 to i64
  store i64 %t203, ptr %l99, !tbaa !24
  %t204 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t204, label %bb44, label %bb45
bb44:
  %t206 = call ptr @__olang_region_make(ptr %s0)
  %t207 = ptrtoint ptr %t206 to i64
  store i64 %t207, ptr %l99, !tbaa !24
  br label %bb45
bb45:
  %t208 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t209 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d60, i32 0, i32 1) }, 1
  %t210 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d60, i32 0, i32 1) }, 0
  %t212 = extractvalue { i64, ptr } %t208, 1
  %t213 = extractvalue { i64, ptr } %t208, 0
  %t214 = add i64 %t210, %t213
  %t215 = load i64, ptr %l99
  %t216 = inttoptr i64 %t215 to ptr
  %t217 = call ptr @__olang_scope_alloc(ptr %t216, i64 %t214)
  call void @olang_textcopy(ptr %t217, ptr %t209, i64 %t210)
  %t218 = getelementptr i8, ptr %t217, i64 %t210
  call void @olang_textcopy(ptr %t218, ptr %t212, i64 %t213)
  %t219 = insertvalue { i64, ptr } undef, i64 %t214, 0
  %t220 = insertvalue { i64, ptr } %t219, ptr %t217, 1
  %t222 = load i64, ptr %l99
  %t223 = inttoptr i64 %t222 to ptr
  %t224 = extractvalue { i64, ptr } %t220, 0
  %t225 = extractvalue { i64, ptr } %t220, 1
  %t226 = mul i64 %t224, 1
  %t227 = call ptr @__olang_scope_alloc(ptr %t223, i64 %t226)
  call void @llvm.memcpy.p0.p0.i64(ptr %t227, ptr %t225, i64 %t226, i1 false)
  %t228 = insertvalue { i64, ptr } undef, i64 %t224, 0
  %t229 = insertvalue { i64, ptr } %t228, ptr %t227, 1
  %t230 = load ptr, ptr %l98, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t230, { i64, ptr } %t229)
  br label %bb46
bb46:
  store ptr %l6, ptr %l104, !tbaa !29
  %t232 = ptrtoint ptr %s0 to i64
  store i64 %t232, ptr %l105, !tbaa !24
  %t233 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t233, label %bb47, label %bb48
bb47:
  %t235 = call ptr @__olang_region_make(ptr %s0)
  %t236 = ptrtoint ptr %t235 to i64
  store i64 %t236, ptr %l105, !tbaa !24
  br label %bb48
bb48:
  %t237 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t239 = call { i64, ptr } @std_2ffilepath_2eBase(ptr %v2, ptr %s7, { i64, ptr } %t237)
  store { i64, ptr } %t239, ptr %l108
  br label %bb49
bb49:
  %t240 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d61, i32 0, i32 1) }, 1
  %t241 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d61, i32 0, i32 1) }, 0
  %t242 = load { i64, ptr }, ptr %l108, !tbaa !27
  %t243 = extractvalue { i64, ptr } %t242, 1
  %t244 = extractvalue { i64, ptr } %t242, 0
  %t245 = add i64 %t241, %t244
  %t246 = load i64, ptr %l105
  %t247 = inttoptr i64 %t246 to ptr
  %t248 = call ptr @__olang_scope_alloc(ptr %t247, i64 %t245)
  call void @olang_textcopy(ptr %t248, ptr %t240, i64 %t241)
  %t249 = getelementptr i8, ptr %t248, i64 %t241
  call void @olang_textcopy(ptr %t249, ptr %t243, i64 %t244)
  %t250 = insertvalue { i64, ptr } undef, i64 %t245, 0
  %t251 = insertvalue { i64, ptr } %t250, ptr %t248, 1
  %t253 = load i64, ptr %l105
  %t254 = inttoptr i64 %t253 to ptr
  %t255 = extractvalue { i64, ptr } %t251, 0
  %t256 = extractvalue { i64, ptr } %t251, 1
  %t257 = mul i64 %t255, 1
  %t258 = call ptr @__olang_scope_alloc(ptr %t254, i64 %t257)
  call void @llvm.memcpy.p0.p0.i64(ptr %t258, ptr %t256, i64 %t257, i1 false)
  %t259 = insertvalue { i64, ptr } undef, i64 %t255, 0
  %t260 = insertvalue { i64, ptr } %t259, ptr %t258, 1
  %t261 = load ptr, ptr %l104, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t261, { i64, ptr } %t260)
  br label %bb50
bb50:
  call void @__olang_scope_close(ptr %s7)
  br label %bb51
bb51:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l6, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d62, i32 0, i32 1) })
  br label %bb52
bb52:
  %t264 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %v2, ptr %l6, { i64, ptr } %t264)
  br label %bb53
bb53:
  store ptr %a1, ptr %l15, !tbaa !29
  store i64 0, ptr %l16, !tbaa !24
  br label %bb54
bb54:
  %t269 = load i64, ptr %l16, !tbaa !24
  store i64 %t269, ptr %l115, !tbaa !24
  %t270 = load ptr, ptr %l15, !tbaa !29
  %t272 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v1, ptr %t270)
  store i64 %t272, ptr %l117
  br label %bb55
bb55:
  %t273 = load i64, ptr %l115, !tbaa !24
  %t274 = load i64, ptr %l117, !tbaa !24
  %t275 = icmp slt i64 %t273, %t274
  %t277 = xor i1 %t275, true
  br i1 %t277, label %bb56, label %bb57
bb56:
  br label %bb62
bb57:
  br label %bb58
bb58:
  %t279 = load ptr, ptr %l15, !tbaa !29
  %t280 = load i64, ptr %l16, !tbaa !24
  %t283 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t279, i64 %t280)
  store { i64, ptr } %t283, ptr %l122
  br label %bb59
bb59:
  %t284 = load { i64, ptr }, ptr %l122, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %v1, ptr %l6, { i64, ptr } %t284)
  br label %bb60
bb60:
  br label %bb61
bb61:
  %t288 = load i64, ptr %l16, !tbaa !24
  %t290 = add i64 %t288, 1
  store i64 %t290, ptr %l16, !tbaa !24
  br label %bb54
bb62:
  store ptr %a4, ptr %l18, !tbaa !29
  store i64 0, ptr %l19, !tbaa !24
  br label %bb63
bb63:
  %t294 = load i64, ptr %l19, !tbaa !24
  store i64 %t294, ptr %l128, !tbaa !24
  %t295 = load ptr, ptr %l18, !tbaa !29
  %t297 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v3, ptr %t295)
  store i64 %t297, ptr %l130
  br label %bb64
bb64:
  %t298 = load i64, ptr %l128, !tbaa !24
  %t299 = load i64, ptr %l130, !tbaa !24
  %t300 = icmp slt i64 %t298, %t299
  %t302 = xor i1 %t300, true
  br i1 %t302, label %bb65, label %bb66
bb65:
  br label %bb71
bb66:
  br label %bb67
bb67:
  %t304 = load ptr, ptr %l18, !tbaa !29
  %t305 = load i64, ptr %l19, !tbaa !24
  %t308 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v3, ptr %v3, ptr %t304, i64 %t305)
  store { i64, ptr } %t308, ptr %l135
  br label %bb68
bb68:
  %t309 = load { i64, ptr }, ptr %l135, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %v3, ptr %l6, { i64, ptr } %t309)
  br label %bb69
bb69:
  br label %bb70
bb70:
  %t313 = load i64, ptr %l19, !tbaa !24
  %t315 = add i64 %t313, 1
  store i64 %t315, ptr %l19, !tbaa !24
  br label %bb63
bb71:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l6, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d63, i32 0, i32 1) })
  br label %bb72
bb72:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l6, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d64, i32 0, i32 1) })
  br label %bb73
bb73:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l6, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d65, i32 0, i32 1) })
  br label %bb74
bb74:
  %t320 = load ptr, ptr %l0, !tbaa !29
  %t322 = getelementptr %"compiler/build:Config", ptr %t320, i32 0, i32 12
  %t323 = load i1, ptr %t322, !tbaa !21
  br i1 %t323, label %bb75, label %bb76
bb75:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l6, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d66, i32 0, i32 1) })
  br label %bb77
bb76:
  br label %bb85
bb77:
  %t326 = load ptr, ptr %l0, !tbaa !29
  %t328 = getelementptr %"compiler/build:Config", ptr %t326, i32 0, i32 5
  %t329 = load i1, ptr %t328, !tbaa !21
  %t331 = xor i1 %t329, true
  br i1 %t331, label %bb78, label %bb79
bb78:
  %t333 = load ptr, ptr %l0, !tbaa !29
  %t335 = getelementptr %"compiler/build:Config", ptr %t333, i32 0, i32 4
  %t336 = load i1, ptr %t335, !tbaa !21
  %t338 = xor i1 %t336, true
  store i1 %t338, ptr %l149, !tbaa !21
  br label %bb80
bb79:
  store i1 false, ptr %l149, !tbaa !21
  br label %bb80
bb80:
  %t340 = load i1, ptr %l149, !tbaa !21
  br i1 %t340, label %bb81, label %bb82
bb81:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l6, { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d67, i32 0, i32 1) })
  br label %bb83
bb82:
  br label %bb84
bb83:
  br label %bb84
bb84:
  br label %bb85
bb85:
  br i1 %a3, label %bb86, label %bb87
bb86:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l6, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d68, i32 0, i32 1) })
  br label %bb88
bb87:
  br label %bb89
bb88:
  br label %bb89
bb89:
  %t345 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t345, ptr %l156
  br label %bb90
bb90:
  %t346 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l156
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t346, ptr %l21
  store ptr %l6, ptr %l22, !tbaa !29
  store i64 0, ptr %l23, !tbaa !24
  br label %bb91
bb91:
  %t348 = load i64, ptr %l23, !tbaa !24
  store i64 %t348, ptr %l158, !tbaa !24
  %t349 = load ptr, ptr %l22, !tbaa !29
  %t351 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %t349)
  store i64 %t351, ptr %l160
  br label %bb92
bb92:
  %t352 = load i64, ptr %l158, !tbaa !24
  %t353 = load i64, ptr %l160, !tbaa !24
  %t354 = icmp slt i64 %t352, %t353
  %t356 = xor i1 %t354, true
  br i1 %t356, label %bb93, label %bb94
bb93:
  br label %bb99
bb94:
  br label %bb95
bb95:
  %t358 = load ptr, ptr %l22, !tbaa !29
  %t359 = load i64, ptr %l23, !tbaa !24
  %t362 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %t358, i64 %t359)
  store { i64, ptr } %t362, ptr %l165
  br label %bb96
bb96:
  %t363 = load { i64, ptr }, ptr %l165, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l21, { i64, ptr } %t363)
  br label %bb97
bb97:
  br label %bb98
bb98:
  %t367 = load i64, ptr %l23, !tbaa !24
  %t369 = add i64 %t367, 1
  store i64 %t369, ptr %l23, !tbaa !24
  br label %bb91
bb99:
  store ptr %l21, ptr %l170, !tbaa !29
  %t371 = load ptr, ptr %l0, !tbaa !29
  %t373 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eclangVersion(ptr %v0, ptr %v0, ptr %t371)
  store { i64, ptr } %t373, ptr %l172
  br label %bb100
bb100:
  %t374 = load ptr, ptr %l170, !tbaa !29
  %t375 = load { i64, ptr }, ptr %l172, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %v0, ptr %t374, { i64, ptr } %t375)
  br label %bb101
bb101:
  %t377 = call { i64, ptr } @compiler_2fbuild_2eHashOf(ptr %s0, ptr %s0, ptr %l21)
  store { i64, ptr } %t377, ptr %l174
  br label %bb102
bb102:
  %t378 = load { i64, ptr }, ptr %l174, !tbaa !27
  store { i64, ptr } %t378, ptr %l25, !tbaa !27
  %t379 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t381 = extractvalue { i64, ptr } %t379, 1
  %t382 = extractvalue { i64, ptr } %t379, 0
  %t383 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d69, i32 0, i32 1) }, 1
  %t384 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d69, i32 0, i32 1) }, 0
  %t385 = add i64 %t382, %t384
  %t386 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t385)
  call void @olang_textcopy(ptr %t386, ptr %t381, i64 %t382)
  %t387 = getelementptr i8, ptr %t386, i64 %t382
  call void @olang_textcopy(ptr %t387, ptr %t383, i64 %t384)
  %t388 = insertvalue { i64, ptr } undef, i64 %t385, 0
  %t389 = insertvalue { i64, ptr } %t388, ptr %t386, 1
  store { i64, ptr } %t389, ptr %l26, !tbaa !27
  %t391 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t392 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t393 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t397 = call i1 @compiler_2fbuild_2elinkCurrent(ptr %v2, ptr %s0, ptr %s0, { i64, ptr } %t391, { i64, ptr } %t392, { i64, ptr } %t393)
  store i1 %t397, ptr %l180
  br label %bb103
bb103:
  %t398 = load i1, ptr %l180, !tbaa !21
  br i1 %t398, label %bb104, label %bb105
bb104:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
bb105:
  br label %bb106
bb106:
  %t399 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t401 = call i32 @std_2fos_2eRemove(ptr %s0, { i64, ptr } %t399)
  store i32 %t401, ptr %l182
  %t402 = icmp ne i32 %t401, 0
  br i1 %t402, label %bb108, label %ok.403, !prof !99
ok.403:
  br label %bb107
bb107:
  br label %bb112
bb108:
  %t404 = load i32, ptr %l182, !tbaa !23
  %t405 = ashr i32 %t404, 16
  %t407 = icmp eq i32 %t405, 1
  store i1 %t407, ptr %l184, !tbaa !21
  %t408 = load i32, ptr %l182, !tbaa !23
  %t409 = ashr i32 %t408, 16
  %t411 = icmp eq i32 %t409, 1
  br i1 %t411, label %bb109, label %bb110
bb109:
  call void @__olang_errpay_pop()
  br label %bb110
bb110:
  br label %bb111
bb111:
  br label %bb112
bb112:
  %t413 = load ptr, ptr %l0, !tbaa !29
  %t415 = getelementptr %"compiler/build:Config", ptr %t413, i32 0, i32 1
  %t416 = load { i64, ptr }, ptr %t415, !tbaa !27
  %t418 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t416, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d70, i32 0, i32 1) })
  store i1 %t418, ptr %l189
  br label %bb113
bb113:
  %t419 = load i1, ptr %l189, !tbaa !21
  br i1 %t419, label %bb114, label %bb115
bb114:
  call void @__olang_scope_close(ptr %s0)
  store i32 65537, ptr %rv
  br label %ret
bb115:
  br label %bb116
bb116:
  %t422 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %s0, ptr %s0, ptr %l6)
  store { i64, ptr } %t422, ptr %l193
  br label %bb117
bb117:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d24, i32 0, i32 1) }, ptr %l194, !tbaa !27
  %t423 = load { i64, ptr }, ptr %l193, !tbaa !27
  %t424 = load { i64, ptr }, ptr %l194, !tbaa !27
  %t425 = call { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %s0, ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t423, { i64, ptr } %t424, i1 false, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d25, i32 0, i32 1) })
  %t426 = extractvalue { i32, %"std/os:Output" } %t425, 1
  %t427 = extractvalue { i32, %"std/os:Output" } %t425, 0
  store i32 %t427, ptr %l196
  %t428 = icmp ne i32 %t427, 0
  br i1 %t428, label %bb119, label %ok.429, !prof !99
ok.429:
  store %"std/os:Output" %t426, ptr %l195
  br label %bb118
bb118:
  %t430 = load %"std/os:Output", ptr %l195
  store %"std/os:Output" %t430, ptr %l191
  br label %bb123
bb119:
  %t431 = load i32, ptr %l196, !tbaa !23
  %t432 = ashr i32 %t431, 16
  %t434 = icmp eq i32 %t432, 1
  store i1 %t434, ptr %l198, !tbaa !21
  %t435 = load i32, ptr %l196, !tbaa !23
  %t436 = ashr i32 %t435, 16
  %t438 = icmp eq i32 %t436, 1
  br i1 %t438, label %bb120, label %bb121
bb120:
  call void @__olang_errpay_pop()
  br label %bb121
bb121:
  br label %bb122
bb122:
  call void @__olang_scope_close(ptr %s0)
  store i32 65536, ptr %rv
  br label %ret
bb123:
  %t441 = load %"std/os:Output", ptr %l191
  store %"std/os:Output" %t441, ptr %l27
  %t442 = getelementptr %"std/os:Output", ptr %l27, i32 0, i32 0
  %t443 = load i32, ptr %t442, !tbaa !23
  %t445 = icmp ne i32 %t443, 0
  br i1 %t445, label %bb124, label %bb125
bb124:
  call void @__olang_scope_close(ptr %s0)
  store i32 65536, ptr %rv
  br label %ret
bb125:
  br label %bb126
bb126:
  %t448 = load ptr, ptr %l0, !tbaa !29
  store ptr %t448, ptr %l205, !tbaa !29
  %t449 = load ptr, ptr %l205, !tbaa !29
  %t450 = getelementptr %"compiler/build:Config", ptr %t449, i32 0, i32 26
  %t451 = load i64, ptr %t450, !tbaa !24
  %t453 = add i64 %t451, 1
  %t455 = load ptr, ptr %l205, !tbaa !29
  %t456 = getelementptr %"compiler/build:Config", ptr %t455, i32 0, i32 26
  store i64 %t453, ptr %t456, !tbaa !24
  %t457 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t459 = call { i32, %"std/os:FileInfo" } @std_2fos_2eFileInfo_2eStat(ptr %v2, { i64, ptr } %t457)
  %t460 = extractvalue { i32, %"std/os:FileInfo" } %t459, 1
  %t461 = extractvalue { i32, %"std/os:FileInfo" } %t459, 0
  store i32 %t461, ptr %l211
  %t462 = icmp ne i32 %t461, 0
  br i1 %t462, label %bb128, label %ok.463, !prof !99
ok.463:
  store %"std/os:FileInfo" %t460, ptr %l210
  br label %bb127
bb127:
  %t464 = load %"std/os:FileInfo", ptr %l210
  store %"std/os:FileInfo" %t464, ptr %l208
  br label %bb132
bb128:
  %t465 = load i32, ptr %l211, !tbaa !23
  %t466 = ashr i32 %t465, 16
  %t468 = icmp eq i32 %t466, 1
  store i1 %t468, ptr %l213, !tbaa !21
  %t469 = load i32, ptr %l211, !tbaa !23
  %t470 = ashr i32 %t469, 16
  %t472 = icmp eq i32 %t470, 1
  br i1 %t472, label %bb129, label %bb130
bb129:
  call void @__olang_errpay_pop()
  br label %bb130
bb130:
  br label %bb131
bb131:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
bb132:
  %t474 = load %"std/os:FileInfo", ptr %l208
  store %"std/os:FileInfo" %t474, ptr %l28
  %t475 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t476 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t477 = getelementptr %"std/os:FileInfo", ptr %l28, i32 0, i32 1
  %t478 = load i64, ptr %t477, !tbaa !24
  %t479 = getelementptr %"std/os:FileInfo", ptr %l28, i32 0, i32 2
  %t480 = load i64, ptr %t479, !tbaa !24
  %t482 = extractvalue { i64, ptr } %t476, 1
  %t483 = extractvalue { i64, ptr } %t476, 0
  %t484 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d71, i32 0, i32 1) }, 1
  %t485 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d71, i32 0, i32 1) }, 0
  %t486 = add i64 %t483, %t485
  %t488 = call i64 @__olang_fmt_i64(ptr null, i64 %t478)
  %t489 = add i64 %t486, %t488
  %t490 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d71, i32 0, i32 1) }, 1
  %t491 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d71, i32 0, i32 1) }, 0
  %t492 = add i64 %t489, %t491
  %t494 = call i64 @__olang_fmt_i64(ptr null, i64 %t480)
  %t495 = add i64 %t492, %t494
  %t496 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d72, i32 0, i32 1) }, 1
  %t497 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d72, i32 0, i32 1) }, 0
  %t498 = add i64 %t495, %t497
  %t499 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t498)
  call void @olang_textcopy(ptr %t499, ptr %t482, i64 %t483)
  %t500 = getelementptr i8, ptr %t499, i64 %t483
  call void @olang_textcopy(ptr %t500, ptr %t484, i64 %t485)
  %t501 = getelementptr i8, ptr %t500, i64 %t485
  %t502 = call i64 @__olang_fmt_i64(ptr %t501, i64 %t478)
  %t503 = getelementptr i8, ptr %t501, i64 %t488
  call void @olang_textcopy(ptr %t503, ptr %t490, i64 %t491)
  %t504 = getelementptr i8, ptr %t503, i64 %t491
  %t505 = call i64 @__olang_fmt_i64(ptr %t504, i64 %t480)
  %t506 = getelementptr i8, ptr %t504, i64 %t494
  call void @olang_textcopy(ptr %t506, ptr %t496, i64 %t497)
  %t507 = insertvalue { i64, ptr } undef, i64 %t498, 0
  %t508 = insertvalue { i64, ptr } %t507, ptr %t499, 1
  %t511 = extractvalue { i64, ptr } %t508, 0
  %t512 = extractvalue { i64, ptr } %t508, 1
  %t513 = mul i64 %t511, 1
  %t514 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t513)
  call void @llvm.memcpy.p0.p0.i64(ptr %t514, ptr %t512, i64 %t513, i1 false)
  %t515 = insertvalue { i64, ptr } undef, i64 %t511, 0
  %t516 = insertvalue { i64, ptr } %t515, ptr %t514, 1
  %t519 = call i32 @std_2fos_2eWriteFile(ptr %s0, ptr %s0, { i64, ptr } %t475, { i64, ptr } %t516)
  store i32 %t519, ptr %l223
  %t520 = icmp ne i32 %t519, 0
  br i1 %t520, label %bb134, label %ok.521, !prof !99
ok.521:
  br label %bb133
bb133:
  br label %bb138
bb134:
  %t522 = load i32, ptr %l223, !tbaa !23
  %t523 = ashr i32 %t522, 16
  %t525 = icmp eq i32 %t523, 1
  store i1 %t525, ptr %l225, !tbaa !21
  %t526 = load i32, ptr %l223, !tbaa !23
  %t527 = ashr i32 %t526, 16
  %t529 = icmp eq i32 %t527, 1
  br i1 %t529, label %bb135, label %bb136
bb135:
  call void @__olang_errpay_pop()
  br label %bb136
bb136:
  br label %bb137
bb137:
  br label %bb138
bb138:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eModeFlags(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %lp1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca ptr
  %l7 = alloca i64
  %l13 = alloca { i64, ptr }
  %l15 = alloca i1
  %l17 = alloca ptr
  %l18 = alloca i64
  %l25 = alloca i1
  %l35 = alloca i1
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l3
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t2, ptr %lp1
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t4 = load ptr, ptr %lp1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/build:Config", ptr %t5, i32 0, i32 2
  %t8 = getelementptr %"compiler/target:Target", ptr %t7, i32 0, i32 9
  %t9 = load i1, ptr %t8, !tbaa !21
  br i1 %t9, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t11 = load ptr, ptr %lp1
  store ptr %t11, ptr %l6, !tbaa !29
  %t12 = ptrtoint ptr %v1 to i64
  store i64 %t12, ptr %l7, !tbaa !24
  %t13 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t13, label %bb4, label %bb5
bb3:
  br label %bb15
bb4:
  %t15 = call ptr @__olang_region_make(ptr %v1)
  %t16 = ptrtoint ptr %t15 to i64
  store i64 %t16, ptr %l7, !tbaa !24
  br label %bb5
bb5:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/build:Config", ptr %t17, i32 0, i32 2
  %t20 = getelementptr %"compiler/target:Target", ptr %t19, i32 0, i32 1
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !27
  %t22 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d73, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d73, i32 0, i32 1) }, 0
  %t25 = extractvalue { i64, ptr } %t21, 1
  %t26 = extractvalue { i64, ptr } %t21, 0
  %t27 = add i64 %t23, %t26
  %t28 = load i64, ptr %l7
  %t29 = inttoptr i64 %t28 to ptr
  %t30 = call ptr @__olang_scope_alloc(ptr %t29, i64 %t27)
  call void @olang_textcopy(ptr %t30, ptr %t22, i64 %t23)
  %t31 = getelementptr i8, ptr %t30, i64 %t23
  call void @olang_textcopy(ptr %t31, ptr %t25, i64 %t26)
  %t32 = insertvalue { i64, ptr } undef, i64 %t27, 0
  %t33 = insertvalue { i64, ptr } %t32, ptr %t30, 1
  %t35 = load i64, ptr %l7
  %t36 = inttoptr i64 %t35 to ptr
  %t37 = extractvalue { i64, ptr } %t33, 0
  %t38 = extractvalue { i64, ptr } %t33, 1
  %t39 = mul i64 %t37, 1
  %t40 = call ptr @__olang_scope_alloc(ptr %t36, i64 %t39)
  call void @llvm.memcpy.p0.p0.i64(ptr %t40, ptr %t38, i64 %t39, i1 false)
  %t41 = insertvalue { i64, ptr } undef, i64 %t37, 0
  %t42 = insertvalue { i64, ptr } %t41, ptr %t40, 1
  %t43 = load ptr, ptr %l6, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t43, { i64, ptr } %t42)
  br label %bb6
bb6:
  %t45 = call { i64, ptr } @compiler_2ftarget_2eSysroot(ptr %s1)
  store { i64, ptr } %t45, ptr %l13
  br label %bb7
bb7:
  %t46 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t46, ptr %l2, !tbaa !27
  %t47 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t49 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s1, ptr %s1, { i64, ptr } %t47, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d74, i32 0, i32 1) })
  store i1 %t49, ptr %l15
  br label %bb8
bb8:
  %t50 = load i1, ptr %l15, !tbaa !21
  %t51 = xor i1 %t50, true
  br i1 %t51, label %bb9, label %bb10
bb9:
  %t53 = load ptr, ptr %lp1
  store ptr %t53, ptr %l17, !tbaa !29
  %t54 = ptrtoint ptr %v1 to i64
  store i64 %t54, ptr %l18, !tbaa !24
  %t55 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t55, label %bb11, label %bb12
bb10:
  br label %bb14
bb11:
  %t57 = call ptr @__olang_region_make(ptr %v1)
  %t58 = ptrtoint ptr %t57 to i64
  store i64 %t58, ptr %l18, !tbaa !24
  br label %bb12
bb12:
  %t59 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t60 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d75, i32 0, i32 1) }, 1
  %t61 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d75, i32 0, i32 1) }, 0
  %t63 = extractvalue { i64, ptr } %t59, 1
  %t64 = extractvalue { i64, ptr } %t59, 0
  %t65 = add i64 %t61, %t64
  %t66 = load i64, ptr %l18
  %t67 = inttoptr i64 %t66 to ptr
  %t68 = call ptr @__olang_scope_alloc(ptr %t67, i64 %t65)
  call void @olang_textcopy(ptr %t68, ptr %t60, i64 %t61)
  %t69 = getelementptr i8, ptr %t68, i64 %t61
  call void @olang_textcopy(ptr %t69, ptr %t63, i64 %t64)
  %t70 = insertvalue { i64, ptr } undef, i64 %t65, 0
  %t71 = insertvalue { i64, ptr } %t70, ptr %t68, 1
  %t73 = load i64, ptr %l18
  %t74 = inttoptr i64 %t73 to ptr
  %t75 = extractvalue { i64, ptr } %t71, 0
  %t76 = extractvalue { i64, ptr } %t71, 1
  %t77 = mul i64 %t75, 1
  %t78 = call ptr @__olang_scope_alloc(ptr %t74, i64 %t77)
  call void @llvm.memcpy.p0.p0.i64(ptr %t78, ptr %t76, i64 %t77, i1 false)
  %t79 = insertvalue { i64, ptr } undef, i64 %t75, 0
  %t80 = insertvalue { i64, ptr } %t79, ptr %t78, 1
  %t81 = load ptr, ptr %l17, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t81, { i64, ptr } %t80)
  br label %bb13
bb13:
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s1)
  br label %bb15
bb15:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/build:Config", ptr %t83, i32 0, i32 2
  %t86 = getelementptr %"compiler/target:Target", ptr %t85, i32 0, i32 6
  %t87 = load { i64, ptr }, ptr %t86, !tbaa !27
  %t89 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t87, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d76, i32 0, i32 1) })
  store i1 %t89, ptr %l25
  br label %bb16
bb16:
  %t90 = load i1, ptr %l25, !tbaa !21
  %t91 = xor i1 %t90, true
  br i1 %t91, label %bb17, label %bb18
bb17:
  %t93 = load ptr, ptr %lp1
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/build:Config", ptr %t94, i32 0, i32 2
  %t97 = getelementptr %"compiler/target:Target", ptr %t96, i32 0, i32 6
  %t98 = load { i64, ptr }, ptr %t97, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v0, ptr %t93, { i64, ptr } %t98)
  br label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb20
bb20:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = getelementptr %"compiler/build:Config", ptr %t101, i32 0, i32 9
  %t104 = load i1, ptr %t103, !tbaa !21
  br i1 %t104, label %bb21, label %bb22
bb21:
  %t106 = load ptr, ptr %lp1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t106, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d77, i32 0, i32 1) })
  br label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb24
bb24:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/build:Config", ptr %t108, i32 0, i32 10
  %t111 = load { i64, ptr }, ptr %t110, !tbaa !27
  %t113 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t111, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d78, i32 0, i32 1) })
  store i1 %t113, ptr %l35
  br label %bb25
bb25:
  %t114 = load i1, ptr %l35, !tbaa !21
  %t115 = xor i1 %t114, true
  br i1 %t115, label %bb26, label %bb27
bb26:
  %t117 = load ptr, ptr %lp1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t117, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d79, i32 0, i32 1) })
  br label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb29
bb29:
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr %"compiler/build:Config", ptr %t119, i32 0, i32 4
  %t122 = load i1, ptr %t121, !tbaa !21
  br i1 %t122, label %bb30, label %bb31
bb30:
  %t124 = load ptr, ptr %lp1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t124, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d80, i32 0, i32 1) })
  br label %bb32
bb31:
  br label %bb38
bb32:
  %t126 = load ptr, ptr %lp1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t126, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d81, i32 0, i32 1) })
  br label %bb33
bb33:
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t130 = getelementptr %"compiler/build:Config", ptr %t128, i32 0, i32 6
  %t131 = load i1, ptr %t130, !tbaa !21
  br i1 %t131, label %bb34, label %bb35
bb34:
  %t133 = load ptr, ptr %lp1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t133, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d82, i32 0, i32 1) })
  br label %bb36
bb35:
  br label %bb37
bb36:
  br label %bb37
bb37:
  %t135 = load ptr, ptr %lp1
  %t136 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t135
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t136, ptr %rv
  br label %ret
bb38:
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t140 = getelementptr %"compiler/build:Config", ptr %t138, i32 0, i32 6
  %t141 = load i1, ptr %t140, !tbaa !21
  br i1 %t141, label %bb39, label %bb40
bb39:
  %t143 = load ptr, ptr %lp1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t143, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d83, i32 0, i32 1) })
  br label %bb41
bb40:
  br label %bb43
bb41:
  %t145 = load ptr, ptr %lp1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t145, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d84, i32 0, i32 1) })
  br label %bb42
bb42:
  %t147 = load ptr, ptr %lp1
  %t148 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t147
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t148, ptr %rv
  br label %ret
bb43:
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t152 = getelementptr %"compiler/build:Config", ptr %t150, i32 0, i32 5
  %t153 = load i1, ptr %t152, !tbaa !21
  br i1 %t153, label %bb44, label %bb45
bb44:
  %t155 = load ptr, ptr %lp1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t155, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d85, i32 0, i32 1) })
  br label %bb46
bb45:
  br label %bb47
bb46:
  %t157 = load ptr, ptr %lp1
  %t158 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t157
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t158, ptr %rv
  br label %ret
bb47:
  %t160 = load ptr, ptr %lp1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t160, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d86, i32 0, i32 1) })
  br label %bb48
bb48:
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t164 = getelementptr %"compiler/build:Config", ptr %t162, i32 0, i32 27
  %t165 = load i1, ptr %t164, !tbaa !21
  br i1 %t165, label %bb49, label %bb50
bb49:
  %t167 = load ptr, ptr %lp1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t167, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d87, i32 0, i32 1) })
  br label %bb51
bb50:
  %t169 = load ptr, ptr %lp1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t169, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d88, i32 0, i32 1) })
  br label %bb52
bb51:
  br label %bb53
bb52:
  br label %bb53
bb53:
  %t171 = load ptr, ptr %lp1
  %t172 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t171
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t172, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eObjectPath(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, i32 %a2, { i64, ptr } %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca ptr
  %l7 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca i64
  %l16 = alloca i64
  %l21 = alloca { i64, ptr }
  %l26 = alloca ptr
  %l28 = alloca { i64, ptr }
  %l30 = alloca { i64, ptr }
  %l32 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  %l34 = alloca i64
  %l38 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l42 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l10
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l5
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %v2, ptr %l5, { i64, ptr } %a3)
  br label %bb2
bb2:
  store ptr %a4, ptr %l6, !tbaa !29
  store i64 0, ptr %l7, !tbaa !24
  br label %bb3
bb3:
  %t8 = load i64, ptr %l7, !tbaa !24
  store i64 %t8, ptr %l14, !tbaa !24
  %t9 = load ptr, ptr %l6, !tbaa !29
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v3, ptr %t9)
  store i64 %t11, ptr %l16
  br label %bb4
bb4:
  %t12 = load i64, ptr %l14, !tbaa !24
  %t13 = load i64, ptr %l16, !tbaa !24
  %t14 = icmp slt i64 %t12, %t13
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb5, label %bb6
bb5:
  br label %bb11
bb6:
  br label %bb7
bb7:
  %t18 = load ptr, ptr %l6, !tbaa !29
  %t19 = load i64, ptr %l7, !tbaa !24
  %t22 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v3, ptr %v3, ptr %t18, i64 %t19)
  store { i64, ptr } %t22, ptr %l21
  br label %bb8
bb8:
  %t23 = load { i64, ptr }, ptr %l21, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %v3, ptr %l5, { i64, ptr } %t23)
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t27 = load i64, ptr %l7, !tbaa !24
  %t29 = add i64 %t27, 1
  store i64 %t29, ptr %l7, !tbaa !24
  br label %bb3
bb11:
  store ptr %l5, ptr %l26, !tbaa !29
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eclangVersion(ptr %v0, ptr %v0, ptr %t31)
  store { i64, ptr } %t33, ptr %l28
  br label %bb12
bb12:
  %t34 = load ptr, ptr %l26, !tbaa !29
  %t35 = load { i64, ptr }, ptr %l28, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %v0, ptr %t34, { i64, ptr } %t35)
  br label %bb13
bb13:
  %t37 = call { i64, ptr } @compiler_2fbuild_2eHashOf(ptr %s0, ptr %s0, ptr %l5)
  store { i64, ptr } %t37, ptr %l30
  br label %bb14
bb14:
  %t38 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t38, ptr %l9, !tbaa !27
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/build:Config", ptr %t39, i32 0, i32 0
  %t42 = load { i64, ptr }, ptr %t41, !tbaa !27
  store { i64, ptr } %t42, ptr %l32, !tbaa !27
  store { i64, ptr } %a1, ptr %l33, !tbaa !27
  %t44 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t44, 0
  store i64 %t45, ptr %l34, !tbaa !24
  %t46 = icmp sge i64 0, 0
  br i1 %t46, label %bb15, label %bb16
bb15:
  %t48 = icmp sle i64 0, 16
  br i1 %t48, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_4cf283899a273ea5_54dbe84ebef87a69)
  unreachable
bb17:
  %t50 = load i64, ptr %l34, !tbaa !24
  %t51 = icmp sle i64 16, %t50
  br i1 %t51, label %bb19, label %bb20
bb18:
  call void @__olang_check_failed(ptr @olang_loc_4cf283899a273ea5_54dbe84ebef87a69)
  unreachable
bb19:
  %t53 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !27
  %t55 = getelementptr i8, ptr %t54, i64 0
  %t56 = sub i64 16, 0
  %t57 = insertvalue { i64, ptr } undef, i64 %t56, 0
  %t58 = insertvalue { i64, ptr } %t57, ptr %t55, 1
  store { i64, ptr } %t58, ptr %l38, !tbaa !27
  %t61 = call { i64, ptr } @compiler_2fbuild_2ekindSuffix(ptr %s0, i32 %a2)
  store { i64, ptr } %t61, ptr %l40
  br label %bb21
bb20:
  call void @__olang_check_failed(ptr @olang_loc_4cf283899a273ea5_54dbe84ebef87a69)
  unreachable
bb21:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2emodeSuffix(ptr %v0, ptr %s0, ptr %t62)
  store { i64, ptr } %t64, ptr %l42
  br label %bb22
bb22:
  %t65 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t66 = extractvalue { i64, ptr } %t65, 1
  %t67 = extractvalue { i64, ptr } %t65, 0
  %t68 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d89, i32 0, i32 1) }, 1
  %t69 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d89, i32 0, i32 1) }, 0
  %t70 = add i64 %t67, %t69
  %t71 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t72 = extractvalue { i64, ptr } %t71, 1
  %t73 = extractvalue { i64, ptr } %t71, 0
  %t74 = add i64 %t70, %t73
  %t75 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d90, i32 0, i32 1) }, 1
  %t76 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d90, i32 0, i32 1) }, 0
  %t77 = add i64 %t74, %t76
  %t78 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t79 = extractvalue { i64, ptr } %t78, 1
  %t80 = extractvalue { i64, ptr } %t78, 0
  %t81 = add i64 %t77, %t80
  %t82 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t83 = extractvalue { i64, ptr } %t82, 1
  %t84 = extractvalue { i64, ptr } %t82, 0
  %t85 = add i64 %t81, %t84
  %t86 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t87 = extractvalue { i64, ptr } %t86, 1
  %t88 = extractvalue { i64, ptr } %t86, 0
  %t89 = add i64 %t85, %t88
  %t90 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d91, i32 0, i32 1) }, 1
  %t91 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d91, i32 0, i32 1) }, 0
  %t92 = add i64 %t89, %t91
  %t93 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t92)
  call void @olang_textcopy(ptr %t93, ptr %t66, i64 %t67)
  %t94 = getelementptr i8, ptr %t93, i64 %t67
  call void @olang_textcopy(ptr %t94, ptr %t68, i64 %t69)
  %t95 = getelementptr i8, ptr %t94, i64 %t69
  call void @olang_textcopy(ptr %t95, ptr %t72, i64 %t73)
  %t96 = getelementptr i8, ptr %t95, i64 %t73
  call void @olang_textcopy(ptr %t96, ptr %t75, i64 %t76)
  %t97 = getelementptr i8, ptr %t96, i64 %t76
  call void @olang_textcopy(ptr %t97, ptr %t79, i64 %t80)
  %t98 = getelementptr i8, ptr %t97, i64 %t80
  call void @olang_textcopy(ptr %t98, ptr %t83, i64 %t84)
  %t99 = getelementptr i8, ptr %t98, i64 %t84
  call void @olang_textcopy(ptr %t99, ptr %t87, i64 %t88)
  %t100 = getelementptr i8, ptr %t99, i64 %t88
  call void @olang_textcopy(ptr %t100, ptr %t90, i64 %t91)
  %t101 = insertvalue { i64, ptr } undef, i64 %t92, 0
  %t102 = insertvalue { i64, ptr } %t101, ptr %t93, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t102, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eObjects(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca %"compiler/build:Unit"
  %lp7 = alloca ptr
  %lp8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca %"compiler/build:Unit"
  %l13 = alloca i64
  %lp14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca { i64, ptr }
  %l19 = alloca %"compiler/build:Unit"
  %l22 = alloca i64
  %l24 = alloca i64
  %l29 = alloca %"compiler/build:Unit"
  %l36 = alloca ptr
  %l40 = alloca i1
  %l44 = alloca i1
  %l48 = alloca i1
  %l52 = alloca %"compiler/build:compiles"
  %l53 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l56 = alloca i64
  %l58 = alloca i64
  %l64 = alloca %"compiler/build:Unit"
  %l65 = alloca ptr
  %l66 = alloca i64
  %l68 = alloca { i64, ptr }
  %l69 = alloca ptr
  %l70 = alloca ptr
  %l72 = alloca { i64, ptr }
  %l79 = alloca { i64, ptr }
  %l80 = alloca i32
  %l87 = alloca i64
  %l90 = alloca i1
  %l92 = alloca ptr
  %l93 = alloca i64
  %l95 = alloca { i64, ptr }
  %l103 = alloca { i64, ptr }
  %l104 = alloca i32
  %l109 = alloca i1
  %l111 = alloca ptr
  %l112 = alloca i64
  %l114 = alloca { i64, ptr }
  %l123 = alloca { i64, ptr }
  %l124 = alloca i32
  %l130 = alloca i32
  %l133 = alloca i64
  %l135 = alloca %"compiler/build:compiles"
  %l137 = alloca i64
  %l139 = alloca i64
  %l144 = alloca i64
  %l149 = alloca i1
  %l152 = alloca i1
  %l154 = alloca { i64, ptr }
  %l157 = alloca { i64, ptr }
  %l160 = alloca { i64, ptr }
  %l162 = alloca i1
  %l164 = alloca i1
  %l168 = alloca i1
  %l170 = alloca i32
  %l172 = alloca i1
  %l179 = alloca %"compiler/build:Unit"
  %l180 = alloca { i64, ptr }
  %l181 = alloca ptr
  %l182 = alloca ptr
  %l184 = alloca { i64, ptr }
  %l190 = alloca { i64, ptr }
  %l191 = alloca i32
  %l196 = alloca { i64, ptr }
  %l203 = alloca { i64, ptr }
  %l204 = alloca i32
  %l206 = alloca { i64, ptr }
  %l213 = alloca { i64, ptr }
  %l214 = alloca i32
  %l221 = alloca i32
  %s0 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %rv = alloca { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
  %t67 = alloca %"compiler/build:compiles", align 8
  %t312 = alloca %"compiler/build:compiles", align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store i64 0, ptr %l3, !tbaa !24
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/build:Program", ptr %t1, i32 0, i32 0
  store ptr %t3, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb1
bb1:
  %t5 = load i64, ptr %l5, !tbaa !24
  store i64 %t5, ptr %l22, !tbaa !24
  %t6 = load ptr, ptr %l4, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aUnit_3e_2eLen_3ccompiler_2fbuild_3aUnit_3e(ptr %v1, ptr %t6)
  store i64 %t8, ptr %l24
  br label %bb2
bb2:
  %t9 = load i64, ptr %l22, !tbaa !24
  %t10 = load i64, ptr %l24, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  br label %bb8
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l4, !tbaa !29
  %t16 = load i64, ptr %l5, !tbaa !24
  %t19 = call %"compiler/build:Unit" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aUnit_3e_2eAt_3ccompiler_2fbuild_3aUnit_3e(ptr %v1, ptr %v1, ptr %t15, i64 %t16)
  store %"compiler/build:Unit" %t19, ptr %l29
  br label %bb6
bb6:
  %t20 = load %"compiler/build:Unit", ptr %l29
  store %"compiler/build:Unit" %t20, ptr %l6
  %t21 = load i64, ptr %l3, !tbaa !24
  %t22 = getelementptr %"compiler/build:Unit", ptr %l6, i32 0, i32 2
  %t23 = load { i64, ptr }, ptr %t22, !tbaa !27
  %t25 = extractvalue { i64, ptr } %t23, 0
  %t28 = add i64 %t21, %t25
  store i64 %t28, ptr %l3, !tbaa !24
  br label %bb7
bb7:
  %t30 = load i64, ptr %l5, !tbaa !24
  %t32 = add i64 %t30, 1
  store i64 %t32, ptr %l5, !tbaa !24
  br label %bb1
bb8:
  %t34 = load ptr, ptr %l0, !tbaa !29
  store ptr %t34, ptr %l36, !tbaa !29
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/build:Config", ptr %t35, i32 0, i32 4
  %t38 = load i1, ptr %t37, !tbaa !21
  %t40 = xor i1 %t38, true
  br i1 %t40, label %bb9, label %bb10
bb9:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/build:Config", ptr %t42, i32 0, i32 6
  %t45 = load i1, ptr %t44, !tbaa !21
  %t47 = xor i1 %t45, true
  store i1 %t47, ptr %l40, !tbaa !21
  br label %bb11
bb10:
  store i1 false, ptr %l40, !tbaa !21
  br label %bb11
bb11:
  %t49 = load i1, ptr %l40, !tbaa !21
  br i1 %t49, label %bb12, label %bb13
bb12:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/build:Config", ptr %t50, i32 0, i32 5
  %t53 = load i1, ptr %t52, !tbaa !21
  %t55 = xor i1 %t53, true
  store i1 %t55, ptr %l44, !tbaa !21
  br label %bb14
bb13:
  store i1 false, ptr %l44, !tbaa !21
  br label %bb14
bb14:
  %t57 = load i1, ptr %l44, !tbaa !21
  br i1 %t57, label %bb15, label %bb16
bb15:
  %t58 = load i64, ptr %l3, !tbaa !24
  %t59 = load i64, ptr @G_2ecompiler_2fbuild_2eThinFrom, !tbaa !24
  %t62 = icmp sge i64 %t58, %t59
  store i1 %t62, ptr %l48, !tbaa !21
  br label %bb17
bb16:
  store i1 false, ptr %l48, !tbaa !21
  br label %bb17
bb17:
  %t64 = load i1, ptr %l48, !tbaa !21
  %t65 = load ptr, ptr %l36, !tbaa !29
  %t66 = getelementptr %"compiler/build:Config", ptr %t65, i32 0, i32 27
  store i1 %t64, ptr %t66, !tbaa !21
  call void @compiler_2fbuild_3acompiles_2ector(ptr %t67, ptr %v2)
  call void @llvm.memmove.p0.p0.i64(ptr %l52, ptr %t67, i64 288, i1 false)
  br label %bb18
bb18:
  %t68 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 288, i64 8)
  store ptr %t68, ptr %lp7
  %t69 = load ptr, ptr %lp7
  call void @llvm.memmove.p0.p0.i64(ptr %t69, ptr %l52, i64 288, i1 false)
  %t70 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v3, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t70, ptr %l53
  br label %bb19
bb19:
  %t71 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 32, i64 8)
  store ptr %t71, ptr %lp8
  %t72 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l53
  %t73 = load ptr, ptr %lp8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t72, ptr %t73
  %t74 = load ptr, ptr %l1, !tbaa !29
  %t76 = getelementptr %"compiler/build:Program", ptr %t74, i32 0, i32 0
  store ptr %t76, ptr %l9, !tbaa !29
  store i64 0, ptr %l10, !tbaa !24
  br label %bb20
bb20:
  %t78 = load i64, ptr %l10, !tbaa !24
  store i64 %t78, ptr %l56, !tbaa !24
  %t79 = load ptr, ptr %l9, !tbaa !29
  %t81 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aUnit_3e_2eLen_3ccompiler_2fbuild_3aUnit_3e(ptr %v1, ptr %t79)
  store i64 %t81, ptr %l58
  br label %bb21
bb21:
  %t82 = load i64, ptr %l56, !tbaa !24
  %t83 = load i64, ptr %l58, !tbaa !24
  %t84 = icmp slt i64 %t82, %t83
  %t86 = xor i1 %t84, true
  br i1 %t86, label %bb22, label %bb23
bb22:
  br label %bb34
bb23:
  br label %bb24
bb24:
  %t88 = load i64, ptr %l10, !tbaa !24
  store i64 %t88, ptr %l11, !tbaa !24
  %t90 = load ptr, ptr %l9, !tbaa !29
  %t91 = load i64, ptr %l10, !tbaa !24
  %t94 = call %"compiler/build:Unit" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aUnit_3e_2eAt_3ccompiler_2fbuild_3aUnit_3e(ptr %v1, ptr %v1, ptr %t90, i64 %t91)
  store %"compiler/build:Unit" %t94, ptr %l64
  br label %bb25
bb25:
  %t95 = load %"compiler/build:Unit", ptr %l64
  store %"compiler/build:Unit" %t95, ptr %l12
  %t96 = load ptr, ptr %lp8
  store ptr %t96, ptr %l65, !tbaa !29
  %t97 = ptrtoint ptr %v3 to i64
  store i64 %t97, ptr %l66, !tbaa !24
  %t98 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t98, label %bb26, label %bb27
bb26:
  %t100 = call ptr @__olang_region_make(ptr %v3)
  %t101 = ptrtoint ptr %t100 to i64
  store i64 %t101, ptr %l66, !tbaa !24
  br label %bb27
bb27:
  %t102 = load ptr, ptr %l0, !tbaa !29
  store ptr %t102, ptr %l69, !tbaa !29
  %t103 = load ptr, ptr %lp7
  store ptr %t103, ptr %l70, !tbaa !29
  %t104 = getelementptr %"compiler/build:Unit", ptr %l12, i32 0, i32 0
  %t105 = load { i64, ptr }, ptr %t104, !tbaa !27
  %t107 = call { i64, ptr } @compiler_2fbuild_2eReadable(ptr %v1, ptr %v3, { i64, ptr } %t105)
  store { i64, ptr } %t107, ptr %l72
  br label %bb28
bb28:
  %t108 = load { i64, ptr }, ptr %l72, !tbaa !27
  %t109 = extractvalue { i64, ptr } %t108, 0
  %t110 = extractvalue { i64, ptr } %t108, 1
  %t111 = mul i64 %t109, 1
  %t112 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t111)
  call void @llvm.memcpy.p0.p0.i64(ptr %t112, ptr %t110, i64 %t111, i1 false)
  %t113 = insertvalue { i64, ptr } undef, i64 %t109, 0
  %t114 = insertvalue { i64, ptr } %t113, ptr %t112, 1
  %t115 = getelementptr %"compiler/build:Unit", ptr %l12, i32 0, i32 1
  %t116 = load i32, ptr %t115, !range !{i32 0, i32 5}
  %t117 = getelementptr %"compiler/build:Unit", ptr %l12, i32 0, i32 2
  %t118 = load { i64, ptr }, ptr %t117, !tbaa !27
  %t119 = load ptr, ptr %l2, !tbaa !29
  %t120 = getelementptr %"compiler/build:Unit", ptr %l12, i32 0, i32 3
  %t121 = load { i64, ptr }, ptr %t120, !tbaa !27
  %t122 = load i64, ptr %l11, !tbaa !24
  %t123 = load ptr, ptr %l69, !tbaa !29
  %t124 = load ptr, ptr %l70, !tbaa !29
  %t131 = call { i32, { i64, ptr } } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2ewant(ptr %v0, ptr %v2, ptr %v3, ptr %v1, ptr %v2, ptr %v1, ptr %v3, ptr %t123, ptr %t124, { i64, ptr } %t114, i32 %t116, { i64, ptr } %t118, ptr %t119, { i64, ptr } %t121, i64 %t122)
  %t132 = extractvalue { i32, { i64, ptr } } %t131, 1
  %t133 = extractvalue { i32, { i64, ptr } } %t131, 0
  store i32 %t133, ptr %l80
  %t134 = icmp ne i32 %t133, 0
  br i1 %t134, label %bb30, label %ok.135, !prof !99
ok.135:
  store { i64, ptr } %t132, ptr %l79
  br label %bb29
bb29:
  %t136 = load { i64, ptr }, ptr %l79, !tbaa !27
  store { i64, ptr } %t136, ptr %l68, !tbaa !27
  br label %bb31
bb30:
  %t137 = load i32, ptr %l80, !tbaa !23
  %t138 = lshr i32 %t137, 16
  %t139 = and i32 %t137, 65535
  %t140 = icmp eq i32 %t138, 1
  %t141 = select i1 %t140, i32 1, i32 0
  %t142 = icmp eq i32 %t137, 0
  %t143 = shl i32 %t141, 16
  %t144 = or i32 %t143, %t139
  %t145 = select i1 %t142, i32 0, i32 %t144
  call void @__olang_scope_close(ptr %s0)
  %t147 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, i32 %t145, 0
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t147, ptr %rv
  br label %ret
bb31:
  %t148 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t149 = load i64, ptr %l66
  %t150 = inttoptr i64 %t149 to ptr
  %t151 = extractvalue { i64, ptr } %t148, 0
  %t152 = extractvalue { i64, ptr } %t148, 1
  %t153 = mul i64 %t151, 1
  %t154 = call ptr @__olang_scope_alloc(ptr %t150, i64 %t153)
  call void @llvm.memcpy.p0.p0.i64(ptr %t154, ptr %t152, i64 %t153, i1 false)
  %t155 = insertvalue { i64, ptr } undef, i64 %t151, 0
  %t156 = insertvalue { i64, ptr } %t155, ptr %t154, 1
  %t157 = load ptr, ptr %l65, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v3, ptr %v3, ptr %t157, { i64, ptr } %t156)
  br label %bb32
bb32:
  br label %bb33
bb33:
  %t159 = load i64, ptr %l10, !tbaa !24
  %t161 = add i64 %t159, 1
  store i64 %t161, ptr %l10, !tbaa !24
  br label %bb20
bb34:
  %t163 = load ptr, ptr %l1, !tbaa !29
  %t165 = getelementptr %"compiler/build:Program", ptr %t163, i32 0, i32 0
  %t167 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aUnit_3e_2eLen_3ccompiler_2fbuild_3aUnit_3e(ptr %v1, ptr %t165)
  store i64 %t167, ptr %l87
  br label %bb35
bb35:
  %t168 = load i64, ptr %l87, !tbaa !24
  store i64 %t168, ptr %l13, !tbaa !24
  %t169 = load ptr, ptr %l1, !tbaa !29
  %t171 = getelementptr %"compiler/build:Program", ptr %t169, i32 0, i32 1
  %t172 = load { i64, ptr }, ptr %t171, !tbaa !27
  %t174 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t172, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d92, i32 0, i32 1) })
  store i1 %t174, ptr %l90
  br label %bb36
bb36:
  %t175 = load i1, ptr %l90, !tbaa !21
  %t176 = xor i1 %t175, true
  br i1 %t176, label %bb37, label %bb38
bb37:
  %t178 = load ptr, ptr %lp8
  store ptr %t178, ptr %l92, !tbaa !29
  %t179 = ptrtoint ptr %v3 to i64
  store i64 %t179, ptr %l93, !tbaa !24
  %t180 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t180, label %bb39, label %bb40
bb38:
  br label %bb45
bb39:
  %t182 = call ptr @__olang_region_make(ptr %v3)
  %t183 = ptrtoint ptr %t182 to i64
  store i64 %t183, ptr %l93, !tbaa !24
  br label %bb40
bb40:
  %t184 = load ptr, ptr %l0, !tbaa !29
  %t185 = load ptr, ptr %lp7
  %t186 = load ptr, ptr %l1, !tbaa !29
  %t188 = getelementptr %"compiler/build:Program", ptr %t186, i32 0, i32 1
  %t189 = load { i64, ptr }, ptr %t188, !tbaa !27
  %t190 = load ptr, ptr %l2, !tbaa !29
  %t191 = load i64, ptr %l13, !tbaa !24
  %t198 = call { i32, { i64, ptr } } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2ewant(ptr %v0, ptr %v2, ptr %v3, ptr %v1, ptr %v2, ptr %v3, ptr %v3, ptr %t184, ptr %t185, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d93, i32 0, i32 1) }, i32 0, { i64, ptr } %t189, ptr %t190, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d94, i32 0, i32 1) }, i64 %t191)
  %t199 = extractvalue { i32, { i64, ptr } } %t198, 1
  %t200 = extractvalue { i32, { i64, ptr } } %t198, 0
  store i32 %t200, ptr %l104
  %t201 = icmp ne i32 %t200, 0
  br i1 %t201, label %bb42, label %ok.202, !prof !99
ok.202:
  store { i64, ptr } %t199, ptr %l103
  br label %bb41
bb41:
  %t203 = load { i64, ptr }, ptr %l103, !tbaa !27
  store { i64, ptr } %t203, ptr %l95, !tbaa !27
  br label %bb43
bb42:
  %t204 = load i32, ptr %l104, !tbaa !23
  %t205 = lshr i32 %t204, 16
  %t206 = and i32 %t204, 65535
  %t207 = icmp eq i32 %t205, 1
  %t208 = select i1 %t207, i32 1, i32 0
  %t209 = icmp eq i32 %t204, 0
  %t210 = shl i32 %t208, 16
  %t211 = or i32 %t210, %t206
  %t212 = select i1 %t209, i32 0, i32 %t211
  call void @__olang_scope_close(ptr %s0)
  %t214 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, i32 %t212, 0
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t214, ptr %rv
  br label %ret
bb43:
  %t215 = load { i64, ptr }, ptr %l95, !tbaa !27
  %t216 = load i64, ptr %l93
  %t217 = inttoptr i64 %t216 to ptr
  %t218 = extractvalue { i64, ptr } %t215, 0
  %t219 = extractvalue { i64, ptr } %t215, 1
  %t220 = mul i64 %t218, 1
  %t221 = call ptr @__olang_scope_alloc(ptr %t217, i64 %t220)
  call void @llvm.memcpy.p0.p0.i64(ptr %t221, ptr %t219, i64 %t220, i1 false)
  %t222 = insertvalue { i64, ptr } undef, i64 %t218, 0
  %t223 = insertvalue { i64, ptr } %t222, ptr %t221, 1
  %t224 = load ptr, ptr %l92, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v3, ptr %v3, ptr %t224, { i64, ptr } %t223)
  br label %bb44
bb44:
  br label %bb45
bb45:
  %t226 = load ptr, ptr %l1, !tbaa !29
  %t228 = getelementptr %"compiler/build:Program", ptr %t226, i32 0, i32 2
  %t229 = load { i64, ptr }, ptr %t228, !tbaa !27
  %t231 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t229, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d95, i32 0, i32 1) })
  store i1 %t231, ptr %l109
  br label %bb46
bb46:
  %t232 = load i1, ptr %l109, !tbaa !21
  %t233 = xor i1 %t232, true
  br i1 %t233, label %bb47, label %bb48
bb47:
  %t235 = load ptr, ptr %lp8
  store ptr %t235, ptr %l111, !tbaa !29
  %t236 = ptrtoint ptr %v3 to i64
  store i64 %t236, ptr %l112, !tbaa !24
  %t237 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t237, label %bb49, label %bb50
bb48:
  br label %bb55
bb49:
  %t239 = call ptr @__olang_region_make(ptr %v3)
  %t240 = ptrtoint ptr %t239 to i64
  store i64 %t240, ptr %l112, !tbaa !24
  br label %bb50
bb50:
  %t241 = load ptr, ptr %l0, !tbaa !29
  %t242 = load ptr, ptr %lp7
  %t243 = load ptr, ptr %l1, !tbaa !29
  %t245 = getelementptr %"compiler/build:Program", ptr %t243, i32 0, i32 2
  %t246 = load { i64, ptr }, ptr %t245, !tbaa !27
  %t247 = load ptr, ptr %l2, !tbaa !29
  %t248 = load i64, ptr %l13, !tbaa !24
  %t250 = add i64 %t248, 1
  %t257 = call { i32, { i64, ptr } } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2ewant(ptr %v0, ptr %v2, ptr %v3, ptr %v1, ptr %v2, ptr %v3, ptr %v3, ptr %t241, ptr %t242, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d96, i32 0, i32 1) }, i32 0, { i64, ptr } %t246, ptr %t247, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d97, i32 0, i32 1) }, i64 %t250)
  %t258 = extractvalue { i32, { i64, ptr } } %t257, 1
  %t259 = extractvalue { i32, { i64, ptr } } %t257, 0
  store i32 %t259, ptr %l124
  %t260 = icmp ne i32 %t259, 0
  br i1 %t260, label %bb52, label %ok.261, !prof !99
ok.261:
  store { i64, ptr } %t258, ptr %l123
  br label %bb51
bb51:
  %t262 = load { i64, ptr }, ptr %l123, !tbaa !27
  store { i64, ptr } %t262, ptr %l114, !tbaa !27
  br label %bb53
bb52:
  %t263 = load i32, ptr %l124, !tbaa !23
  %t264 = lshr i32 %t263, 16
  %t265 = and i32 %t263, 65535
  %t266 = icmp eq i32 %t264, 1
  %t267 = select i1 %t266, i32 1, i32 0
  %t268 = icmp eq i32 %t263, 0
  %t269 = shl i32 %t267, 16
  %t270 = or i32 %t269, %t265
  %t271 = select i1 %t268, i32 0, i32 %t270
  call void @__olang_scope_close(ptr %s0)
  %t273 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, i32 %t271, 0
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t273, ptr %rv
  br label %ret
bb53:
  %t274 = load { i64, ptr }, ptr %l114, !tbaa !27
  %t275 = load i64, ptr %l112
  %t276 = inttoptr i64 %t275 to ptr
  %t277 = extractvalue { i64, ptr } %t274, 0
  %t278 = extractvalue { i64, ptr } %t274, 1
  %t279 = mul i64 %t277, 1
  %t280 = call ptr @__olang_scope_alloc(ptr %t276, i64 %t279)
  call void @llvm.memcpy.p0.p0.i64(ptr %t280, ptr %t278, i64 %t279, i1 false)
  %t281 = insertvalue { i64, ptr } undef, i64 %t277, 0
  %t282 = insertvalue { i64, ptr } %t281, ptr %t280, 1
  %t283 = load ptr, ptr %l111, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v3, ptr %v3, ptr %t283, { i64, ptr } %t282)
  br label %bb54
bb54:
  br label %bb55
bb55:
  %t285 = load ptr, ptr %l0, !tbaa !29
  %t286 = load ptr, ptr %lp7
  %t287 = load ptr, ptr %l2, !tbaa !29
  %t291 = call i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2ecompile(ptr %v0, ptr %v2, ptr %v2, ptr %t285, ptr %t286, ptr %t287)
  store i32 %t291, ptr %l130
  %t292 = icmp ne i32 %t291, 0
  br i1 %t292, label %bb57, label %ok.293, !prof !99
ok.293:
  br label %bb56
bb56:
  br label %bb58
bb57:
  %t294 = load i32, ptr %l130, !tbaa !23
  %t295 = lshr i32 %t294, 16
  %t296 = and i32 %t294, 65535
  %t297 = icmp eq i32 %t295, 1
  %t298 = select i1 %t297, i32 1, i32 0
  %t299 = icmp eq i32 %t294, 0
  %t300 = shl i32 %t298, 16
  %t301 = or i32 %t300, %t296
  %t302 = select i1 %t299, i32 0, i32 %t301
  call void @__olang_scope_close(ptr %s0)
  %t304 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, i32 %t302, 0
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t304, ptr %rv
  br label %ret
bb58:
  %t305 = load ptr, ptr %lp7
  %t306 = getelementptr %"compiler/build:compiles", ptr %t305, i32 0, i32 8
  %t308 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v2, ptr %t306)
  store i64 %t308, ptr %l133
  br label %bb59
bb59:
  %t309 = load i64, ptr %l133, !tbaa !24
  %t310 = icmp sgt i64 %t309, 0
  br i1 %t310, label %bb60, label %bb61
bb60:
  call void @compiler_2fbuild_3acompiles_2ector(ptr %t312, ptr %v2)
  call void @llvm.memmove.p0.p0.i64(ptr %l135, ptr %t312, i64 288, i1 false)
  br label %bb62
bb61:
  br label %bb116
bb62:
  %t313 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 288, i64 8)
  store ptr %t313, ptr %lp14
  %t314 = load ptr, ptr %lp14
  call void @llvm.memmove.p0.p0.i64(ptr %t314, ptr %l135, i64 288, i1 false)
  %t315 = load ptr, ptr %lp7
  %t316 = getelementptr %"compiler/build:compiles", ptr %t315, i32 0, i32 8
  store ptr %t316, ptr %l15, !tbaa !29
  store i64 0, ptr %l16, !tbaa !24
  br label %bb63
bb63:
  store %olang.scope zeroinitializer, ptr %s11
  %t318 = load i64, ptr %l16, !tbaa !24
  store i64 %t318, ptr %l137, !tbaa !24
  %t319 = load ptr, ptr %l15, !tbaa !29
  %t321 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v2, ptr %t319)
  store i64 %t321, ptr %l139
  br label %bb64
bb64:
  %t322 = load i64, ptr %l137, !tbaa !24
  %t323 = load i64, ptr %l139, !tbaa !24
  %t324 = icmp slt i64 %t322, %t323
  %t326 = xor i1 %t324, true
  br i1 %t326, label %bb65, label %bb66
bb65:
  call void @__olang_scope_close(ptr %s11)
  br label %bb112
bb66:
  br label %bb67
bb67:
  %t328 = load ptr, ptr %l15, !tbaa !29
  %t329 = load i64, ptr %l16, !tbaa !24
  %t332 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t328, i64 %t329)
  store i64 %t332, ptr %l144
  br label %bb68
bb68:
  %t333 = load i64, ptr %l144, !tbaa !24
  store i64 %t333, ptr %l17, !tbaa !24
  %t334 = load i64, ptr %l17, !tbaa !24
  %t335 = load i64, ptr %l13, !tbaa !24
  %t337 = add i64 %t335, 1
  %t340 = icmp slt i64 %t334, %t337
  br i1 %t340, label %bb69, label %bb70
bb69:
  store i1 true, ptr %l149, !tbaa !21
  br label %bb72
bb70:
  %t342 = load ptr, ptr %l1, !tbaa !29
  %t344 = getelementptr %"compiler/build:Program", ptr %t342, i32 0, i32 1
  %t345 = load { i64, ptr }, ptr %t344, !tbaa !27
  %t347 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s11, { i64, ptr } %t345, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d98, i32 0, i32 1) })
  store i1 %t347, ptr %l152
  br label %bb71
bb71:
  %t348 = load i1, ptr %l152, !tbaa !21
  %t349 = xor i1 %t348, true
  store i1 %t349, ptr %l149, !tbaa !21
  br label %bb72
bb72:
  %t351 = load i1, ptr %l149, !tbaa !21
  br i1 %t351, label %bb73, label %bb74
bb73:
  %t352 = load ptr, ptr %lp8
  %t353 = load i64, ptr %l17, !tbaa !24
  %t356 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v3, ptr %s11, ptr %t352, i64 %t353)
  store { i64, ptr } %t356, ptr %l157
  br label %bb75
bb74:
  %t357 = load ptr, ptr %lp8
  %t358 = load i64, ptr %l13, !tbaa !24
  %t361 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v3, ptr %s11, ptr %t357, i64 %t358)
  store { i64, ptr } %t361, ptr %l160
  br label %bb76
bb75:
  %t362 = load { i64, ptr }, ptr %l157, !tbaa !27
  store { i64, ptr } %t362, ptr %l154, !tbaa !27
  br label %bb77
bb76:
  %t363 = load { i64, ptr }, ptr %l160, !tbaa !27
  store { i64, ptr } %t363, ptr %l154, !tbaa !27
  br label %bb77
bb77:
  %t364 = load { i64, ptr }, ptr %l154, !tbaa !27
  store { i64, ptr } %t364, ptr %l18, !tbaa !27
  br label %bb78
bb78:
  store %olang.scope zeroinitializer, ptr %s12
  %t365 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t367 = call i1 @std_2fos_2eExists(ptr %s11, { i64, ptr } %t365)
  store i1 %t367, ptr %l162
  br label %bb79
bb79:
  %t368 = load i1, ptr %l162, !tbaa !21
  %t369 = xor i1 %t368, true
  br i1 %t369, label %bb80, label %bb81
bb80:
  %t371 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t373 = extractvalue { i64, ptr } %t371, 1
  %t374 = extractvalue { i64, ptr } %t371, 0
  %t375 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d99, i32 0, i32 1) }, 1
  %t376 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d99, i32 0, i32 1) }, 0
  %t377 = add i64 %t374, %t376
  %t378 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t377)
  call void @olang_textcopy(ptr %t378, ptr %t373, i64 %t374)
  %t379 = getelementptr i8, ptr %t378, i64 %t374
  call void @olang_textcopy(ptr %t379, ptr %t375, i64 %t376)
  %t380 = insertvalue { i64, ptr } undef, i64 %t377, 0
  %t381 = insertvalue { i64, ptr } %t380, ptr %t378, 1
  %t383 = extractvalue { i64, ptr } %t381, 0
  %t384 = extractvalue { i64, ptr } %t381, 1
  %t385 = mul i64 %t383, 1
  %t386 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t385)
  call void @llvm.memcpy.p0.p0.i64(ptr %t386, ptr %t384, i64 %t385, i1 false)
  %t387 = insertvalue { i64, ptr } undef, i64 %t383, 0
  %t388 = insertvalue { i64, ptr } %t387, ptr %t386, 1
  %t390 = call i1 @compiler_2fbuild_2eholderAlive(ptr %s12, { i64, ptr } %t388)
  store i1 %t390, ptr %l168
  br label %bb82
bb81:
  store i1 false, ptr %l164, !tbaa !21
  br label %bb83
bb82:
  %t391 = load i1, ptr %l168, !tbaa !21
  store i1 %t391, ptr %l164, !tbaa !21
  br label %bb83
bb83:
  %t392 = load i1, ptr %l164, !tbaa !21
  %t393 = xor i1 %t392, true
  br i1 %t393, label %bb84, label %bb85
bb84:
  call void @__olang_scope_close(ptr %s12)
  br label %bb89
bb85:
  br label %bb86
bb86:
  %t395 = call i32 @usleep(i32 20000)
  store i32 %t395, ptr %l170
  br label %bb87
bb87:
  call void @__olang_scope_close(ptr %s12)
  br label %bb88
bb88:
  br label %bb78
bb89:
  %t396 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t398 = call i1 @std_2fos_2eExists(ptr %s11, { i64, ptr } %t396)
  store i1 %t398, ptr %l172
  br label %bb90
bb90:
  %t399 = load i1, ptr %l172, !tbaa !21
  br i1 %t399, label %bb91, label %bb92
bb91:
  call void @__olang_scope_close(ptr %s11)
  br label %bb111
bb92:
  br label %bb93
bb93:
  %t400 = load i64, ptr %l17, !tbaa !24
  %t401 = load i64, ptr %l13, !tbaa !24
  %t404 = icmp slt i64 %t400, %t401
  br i1 %t404, label %bb94, label %bb95
bb94:
  %t406 = load ptr, ptr %l1, !tbaa !29
  %t408 = getelementptr %"compiler/build:Program", ptr %t406, i32 0, i32 0
  %t409 = load i64, ptr %l17, !tbaa !24
  %t412 = call %"compiler/build:Unit" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aUnit_3e_2eAt_3ccompiler_2fbuild_3aUnit_3e(ptr %v1, ptr %v1, ptr %t408, i64 %t409)
  store %"compiler/build:Unit" %t412, ptr %l179
  br label %bb96
bb95:
  %t413 = load i64, ptr %l17, !tbaa !24
  %t414 = load i64, ptr %l13, !tbaa !24
  %t417 = icmp eq i64 %t413, %t414
  br i1 %t417, label %bb101, label %bb102
bb96:
  %t419 = load %"compiler/build:Unit", ptr %l179
  store %"compiler/build:Unit" %t419, ptr %l19
  %t420 = load ptr, ptr %l0, !tbaa !29
  store ptr %t420, ptr %l181, !tbaa !29
  %t421 = load ptr, ptr %lp14
  store ptr %t421, ptr %l182, !tbaa !29
  %t422 = getelementptr %"compiler/build:Unit", ptr %l19, i32 0, i32 0
  %t423 = load { i64, ptr }, ptr %t422, !tbaa !27
  %t425 = call { i64, ptr } @compiler_2fbuild_2eReadable(ptr %v1, ptr %v2, { i64, ptr } %t423)
  store { i64, ptr } %t425, ptr %l184
  br label %bb97
bb97:
  %t426 = load { i64, ptr }, ptr %l184, !tbaa !27
  %t427 = extractvalue { i64, ptr } %t426, 0
  %t428 = extractvalue { i64, ptr } %t426, 1
  %t429 = mul i64 %t427, 1
  %t430 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t429)
  call void @llvm.memcpy.p0.p0.i64(ptr %t430, ptr %t428, i64 %t429, i1 false)
  %t431 = insertvalue { i64, ptr } undef, i64 %t427, 0
  %t432 = insertvalue { i64, ptr } %t431, ptr %t430, 1
  %t433 = getelementptr %"compiler/build:Unit", ptr %l19, i32 0, i32 1
  %t434 = load i32, ptr %t433, !range !{i32 0, i32 5}
  %t435 = getelementptr %"compiler/build:Unit", ptr %l19, i32 0, i32 2
  %t436 = load { i64, ptr }, ptr %t435, !tbaa !27
  %t437 = load ptr, ptr %l2, !tbaa !29
  %t438 = getelementptr %"compiler/build:Unit", ptr %l19, i32 0, i32 3
  %t439 = load { i64, ptr }, ptr %t438, !tbaa !27
  %t440 = load ptr, ptr %l181, !tbaa !29
  %t441 = load ptr, ptr %l182, !tbaa !29
  %t447 = call { i32, { i64, ptr } } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2ewant(ptr %v0, ptr %v2, ptr %v2, ptr %v1, ptr %v2, ptr %v1, ptr %v2, ptr %t440, ptr %t441, { i64, ptr } %t432, i32 %t434, { i64, ptr } %t436, ptr %t437, { i64, ptr } %t439, i64 -1)
  %t448 = extractvalue { i32, { i64, ptr } } %t447, 1
  %t449 = extractvalue { i32, { i64, ptr } } %t447, 0
  store i32 %t449, ptr %l191
  %t450 = icmp ne i32 %t449, 0
  br i1 %t450, label %bb99, label %ok.451, !prof !99
ok.451:
  store { i64, ptr } %t448, ptr %l190
  br label %bb98
bb98:
  %t452 = load { i64, ptr }, ptr %l190, !tbaa !27
  store { i64, ptr } %t452, ptr %l180, !tbaa !27
  br label %bb100
bb99:
  %t453 = load i32, ptr %l191, !tbaa !23
  %t454 = lshr i32 %t453, 16
  %t455 = and i32 %t453, 65535
  %t456 = icmp eq i32 %t454, 1
  %t457 = select i1 %t456, i32 1, i32 0
  %t458 = icmp eq i32 %t453, 0
  %t459 = shl i32 %t457, 16
  %t460 = or i32 %t459, %t455
  %t461 = select i1 %t458, i32 0, i32 %t460
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s0)
  %t463 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, i32 %t461, 0
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t463, ptr %rv
  br label %ret
bb100:
  br label %bb110
bb101:
  %t464 = load ptr, ptr %l0, !tbaa !29
  %t465 = load ptr, ptr %lp14
  %t466 = load ptr, ptr %l1, !tbaa !29
  %t468 = getelementptr %"compiler/build:Program", ptr %t466, i32 0, i32 1
  %t469 = load { i64, ptr }, ptr %t468, !tbaa !27
  %t470 = load ptr, ptr %l2, !tbaa !29
  %t476 = call { i32, { i64, ptr } } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2ewant(ptr %v0, ptr %v2, ptr %v2, ptr %v1, ptr %v2, ptr %v2, ptr %v2, ptr %t464, ptr %t465, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d100, i32 0, i32 1) }, i32 0, { i64, ptr } %t469, ptr %t470, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d101, i32 0, i32 1) }, i64 -1)
  %t477 = extractvalue { i32, { i64, ptr } } %t476, 1
  %t478 = extractvalue { i32, { i64, ptr } } %t476, 0
  store i32 %t478, ptr %l204
  %t479 = icmp ne i32 %t478, 0
  br i1 %t479, label %bb104, label %ok.480, !prof !99
ok.480:
  store { i64, ptr } %t477, ptr %l203
  br label %bb103
bb102:
  %t481 = load ptr, ptr %l0, !tbaa !29
  %t482 = load ptr, ptr %lp14
  %t483 = load ptr, ptr %l1, !tbaa !29
  %t485 = getelementptr %"compiler/build:Program", ptr %t483, i32 0, i32 2
  %t486 = load { i64, ptr }, ptr %t485, !tbaa !27
  %t487 = load ptr, ptr %l2, !tbaa !29
  %t493 = call { i32, { i64, ptr } } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2ewant(ptr %v0, ptr %v2, ptr %v2, ptr %v1, ptr %v2, ptr %v2, ptr %v2, ptr %t481, ptr %t482, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d102, i32 0, i32 1) }, i32 0, { i64, ptr } %t486, ptr %t487, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d101, i32 0, i32 1) }, i64 -1)
  %t494 = extractvalue { i32, { i64, ptr } } %t493, 1
  %t495 = extractvalue { i32, { i64, ptr } } %t493, 0
  store i32 %t495, ptr %l214
  %t496 = icmp ne i32 %t495, 0
  br i1 %t496, label %bb107, label %ok.497, !prof !99
ok.497:
  store { i64, ptr } %t494, ptr %l213
  br label %bb106
bb103:
  %t498 = load { i64, ptr }, ptr %l203, !tbaa !27
  store { i64, ptr } %t498, ptr %l196, !tbaa !27
  br label %bb105
bb104:
  %t499 = load i32, ptr %l204, !tbaa !23
  %t500 = lshr i32 %t499, 16
  %t501 = and i32 %t499, 65535
  %t502 = icmp eq i32 %t500, 1
  %t503 = select i1 %t502, i32 1, i32 0
  %t504 = icmp eq i32 %t499, 0
  %t505 = shl i32 %t503, 16
  %t506 = or i32 %t505, %t501
  %t507 = select i1 %t504, i32 0, i32 %t506
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s0)
  %t509 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, i32 %t507, 0
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t509, ptr %rv
  br label %ret
bb105:
  br label %bb109
bb106:
  %t510 = load { i64, ptr }, ptr %l213, !tbaa !27
  store { i64, ptr } %t510, ptr %l206, !tbaa !27
  br label %bb108
bb107:
  %t511 = load i32, ptr %l214, !tbaa !23
  %t512 = lshr i32 %t511, 16
  %t513 = and i32 %t511, 65535
  %t514 = icmp eq i32 %t512, 1
  %t515 = select i1 %t514, i32 1, i32 0
  %t516 = icmp eq i32 %t511, 0
  %t517 = shl i32 %t515, 16
  %t518 = or i32 %t517, %t513
  %t519 = select i1 %t516, i32 0, i32 %t518
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s0)
  %t521 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, i32 %t519, 0
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t521, ptr %rv
  br label %ret
bb108:
  br label %bb109
bb109:
  br label %bb110
bb110:
  call void @__olang_scope_close(ptr %s11)
  br label %bb111
bb111:
  %t522 = load i64, ptr %l16, !tbaa !24
  %t524 = add i64 %t522, 1
  store i64 %t524, ptr %l16, !tbaa !24
  br label %bb63
bb112:
  %t526 = load ptr, ptr %l0, !tbaa !29
  %t527 = load ptr, ptr %lp14
  %t528 = load ptr, ptr %l2, !tbaa !29
  %t532 = call i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2ecompile(ptr %v0, ptr %v2, ptr %v2, ptr %t526, ptr %t527, ptr %t528)
  store i32 %t532, ptr %l221
  %t533 = icmp ne i32 %t532, 0
  br i1 %t533, label %bb114, label %ok.534, !prof !99
ok.534:
  br label %bb113
bb113:
  br label %bb115
bb114:
  %t535 = load i32, ptr %l221, !tbaa !23
  %t536 = lshr i32 %t535, 16
  %t537 = and i32 %t535, 65535
  %t538 = icmp eq i32 %t536, 1
  %t539 = select i1 %t538, i32 1, i32 0
  %t540 = icmp eq i32 %t535, 0
  %t541 = shl i32 %t539, 16
  %t542 = or i32 %t541, %t537
  %t543 = select i1 %t540, i32 0, i32 %t542
  call void @__olang_scope_close(ptr %s0)
  %t545 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, i32 %t543, 0
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t545, ptr %rv
  br label %ret
bb115:
  br label %bb116
bb116:
  %t546 = load ptr, ptr %lp8
  %t547 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t546
  call void @__olang_scope_close(ptr %s0)
  %t549 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t547, 1
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t549, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }, ptr %rv
  ret { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %rr
}

define dso_local i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2efuzzRun(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"std/os:Output"
  %l7 = alloca ptr
  %l8 = alloca i64
  %l21 = alloca { i64, ptr }
  %l23 = alloca %"std/os:Output"
  %l25 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l27 = alloca %"std/os:Output"
  %l28 = alloca i32
  %l30 = alloca i1
  %l41 = alloca { i64, ptr }
  %l51 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/build:Config", ptr %t1, i32 0, i32 11
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp sgt i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load ptr, ptr %l1, !tbaa !29
  store ptr %t8, ptr %l7, !tbaa !29
  %t9 = ptrtoint ptr %v1 to i64
  store i64 %t9, ptr %l8, !tbaa !24
  %t10 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t10, label %bb3, label %bb4
bb2:
  br label %bb6
bb3:
  %t12 = call ptr @__olang_region_make(ptr %v1)
  %t13 = ptrtoint ptr %t12 to i64
  store i64 %t13, ptr %l8, !tbaa !24
  br label %bb4
bb4:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/build:Config", ptr %t14, i32 0, i32 11
  %t17 = load i64, ptr %t16, !tbaa !24
  %t18 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d103, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d103, i32 0, i32 1) }, 0
  %t21 = call i64 @__olang_fmt_i64(ptr null, i64 %t17)
  %t22 = add i64 %t19, %t21
  %t23 = load i64, ptr %l8
  %t24 = inttoptr i64 %t23 to ptr
  %t25 = call ptr @__olang_scope_alloc(ptr %t24, i64 %t22)
  call void @olang_textcopy(ptr %t25, ptr %t18, i64 %t19)
  %t26 = getelementptr i8, ptr %t25, i64 %t19
  %t27 = call i64 @__olang_fmt_i64(ptr %t26, i64 %t17)
  %t28 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t29 = insertvalue { i64, ptr } %t28, ptr %t25, 1
  %t31 = load i64, ptr %l8
  %t32 = inttoptr i64 %t31 to ptr
  %t33 = extractvalue { i64, ptr } %t29, 0
  %t34 = extractvalue { i64, ptr } %t29, 1
  %t35 = mul i64 %t33, 1
  %t36 = call ptr @__olang_scope_alloc(ptr %t32, i64 %t35)
  call void @llvm.memcpy.p0.p0.i64(ptr %t36, ptr %t34, i64 %t35, i1 false)
  %t37 = insertvalue { i64, ptr } undef, i64 %t33, 0
  %t38 = insertvalue { i64, ptr } %t37, ptr %t36, 1
  %t39 = load ptr, ptr %l7, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t39, { i64, ptr } %t38)
  br label %bb5
bb5:
  br label %bb6
bb6:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/build:Config", ptr %t42, i32 0, i32 10
  %t45 = load { i64, ptr }, ptr %t44, !tbaa !27
  %t46 = load ptr, ptr %l2, !tbaa !29
  %t48 = getelementptr %"compiler/build:Program", ptr %t46, i32 0, i32 6
  %t49 = load { i64, ptr }, ptr %t48, !tbaa !27
  %t50 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d104, i32 0, i32 1) }, 1
  %t51 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d104, i32 0, i32 1) }, 0
  %t53 = extractvalue { i64, ptr } %t45, 1
  %t54 = extractvalue { i64, ptr } %t45, 0
  %t55 = add i64 %t51, %t54
  %t56 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d105, i32 0, i32 1) }, 1
  %t57 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d105, i32 0, i32 1) }, 0
  %t58 = add i64 %t55, %t57
  %t60 = extractvalue { i64, ptr } %t49, 1
  %t61 = extractvalue { i64, ptr } %t49, 0
  %t62 = add i64 %t58, %t61
  %t63 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d106, i32 0, i32 1) }, 1
  %t64 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d106, i32 0, i32 1) }, 0
  %t65 = add i64 %t62, %t64
  %t66 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t65)
  call void @olang_textcopy(ptr %t66, ptr %t50, i64 %t51)
  %t67 = getelementptr i8, ptr %t66, i64 %t51
  call void @olang_textcopy(ptr %t67, ptr %t53, i64 %t54)
  %t68 = getelementptr i8, ptr %t67, i64 %t54
  call void @olang_textcopy(ptr %t68, ptr %t56, i64 %t57)
  %t69 = getelementptr i8, ptr %t68, i64 %t57
  call void @olang_textcopy(ptr %t69, ptr %t60, i64 %t61)
  %t70 = getelementptr i8, ptr %t69, i64 %t61
  call void @olang_textcopy(ptr %t70, ptr %t63, i64 %t64)
  %t71 = insertvalue { i64, ptr } undef, i64 %t65, 0
  %t72 = insertvalue { i64, ptr } %t71, ptr %t66, 1
  %t74 = extractvalue { i64, ptr } %t72, 0
  %t75 = extractvalue { i64, ptr } %t72, 1
  %t76 = mul i64 %t74, 1
  %t77 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t76)
  call void @llvm.memcpy.p0.p0.i64(ptr %t77, ptr %t75, i64 %t76, i1 false)
  %t78 = insertvalue { i64, ptr } undef, i64 %t74, 0
  %t79 = insertvalue { i64, ptr } %t78, ptr %t77, 1
  %t82 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2epaint(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %t41, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d107, i32 0, i32 1) }, { i64, ptr } %t79)
  store { i64, ptr } %t82, ptr %l21
  br label %bb7
bb7:
  %t83 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t84 = extractvalue { i64, ptr } %t83, 0
  %t85 = extractvalue { i64, ptr } %t83, 1
  %t86 = mul i64 %t84, 1
  %t87 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t86)
  call void @llvm.memcpy.p0.p0.i64(ptr %t87, ptr %t85, i64 %t86, i1 false)
  %t88 = insertvalue { i64, ptr } undef, i64 %t84, 0
  %t89 = insertvalue { i64, ptr } %t88, ptr %t87, 1
  call void @compiler_2fbuild_2esayln(ptr %s0, { i64, ptr } %t89)
  br label %bb8
bb8:
  %t91 = load ptr, ptr %l1, !tbaa !29
  %t93 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v1, ptr %v1, ptr %t91)
  store { i64, ptr } %t93, ptr %l25
  br label %bb9
bb9:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d24, i32 0, i32 1) }, ptr %l26, !tbaa !27
  %t94 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t95 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t96 = call { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %v1, ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t94, { i64, ptr } %t95, i1 false, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d25, i32 0, i32 1) })
  %t97 = extractvalue { i32, %"std/os:Output" } %t96, 1
  %t98 = extractvalue { i32, %"std/os:Output" } %t96, 0
  store i32 %t98, ptr %l28
  %t99 = icmp ne i32 %t98, 0
  br i1 %t99, label %bb11, label %ok.100, !prof !99
ok.100:
  store %"std/os:Output" %t97, ptr %l27
  br label %bb10
bb10:
  %t101 = load %"std/os:Output", ptr %l27
  store %"std/os:Output" %t101, ptr %l23
  br label %bb15
bb11:
  %t102 = load i32, ptr %l28, !tbaa !23
  %t103 = ashr i32 %t102, 16
  %t105 = icmp eq i32 %t103, 1
  store i1 %t105, ptr %l30, !tbaa !21
  %t106 = load i32, ptr %l28, !tbaa !23
  %t107 = ashr i32 %t106, 16
  %t109 = icmp eq i32 %t107, 1
  br i1 %t109, label %bb12, label %bb13
bb12:
  call void @__olang_errpay_pop()
  br label %bb13
bb13:
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s0)
  store i32 1, ptr %rv
  br label %ret
bb15:
  %t112 = load %"std/os:Output", ptr %l23
  store %"std/os:Output" %t112, ptr %l3
  %t113 = getelementptr %"std/os:Output", ptr %l3, i32 0, i32 0
  %t114 = load i32, ptr %t113, !tbaa !23
  %t116 = icmp eq i32 %t114, 0
  br i1 %t116, label %bb16, label %bb17
bb16:
  store %olang.scope zeroinitializer, ptr %s5
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr %"compiler/build:Config", ptr %t119, i32 0, i32 10
  %t122 = load { i64, ptr }, ptr %t121, !tbaa !27
  %t123 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d108, i32 0, i32 1) }, 1
  %t124 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d108, i32 0, i32 1) }, 0
  %t126 = extractvalue { i64, ptr } %t122, 1
  %t127 = extractvalue { i64, ptr } %t122, 0
  %t128 = add i64 %t124, %t127
  %t129 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d109, i32 0, i32 1) }, 1
  %t130 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d109, i32 0, i32 1) }, 0
  %t131 = add i64 %t128, %t130
  %t132 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t131)
  call void @olang_textcopy(ptr %t132, ptr %t123, i64 %t124)
  %t133 = getelementptr i8, ptr %t132, i64 %t124
  call void @olang_textcopy(ptr %t133, ptr %t126, i64 %t127)
  %t134 = getelementptr i8, ptr %t133, i64 %t127
  call void @olang_textcopy(ptr %t134, ptr %t129, i64 %t130)
  %t135 = insertvalue { i64, ptr } undef, i64 %t131, 0
  %t136 = insertvalue { i64, ptr } %t135, ptr %t132, 1
  %t138 = extractvalue { i64, ptr } %t136, 0
  %t139 = extractvalue { i64, ptr } %t136, 1
  %t140 = mul i64 %t138, 1
  %t141 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t140)
  call void @llvm.memcpy.p0.p0.i64(ptr %t141, ptr %t139, i64 %t140, i1 false)
  %t142 = insertvalue { i64, ptr } undef, i64 %t138, 0
  %t143 = insertvalue { i64, ptr } %t142, ptr %t141, 1
  %t146 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2epaint(ptr %v0, ptr %s5, ptr %s5, ptr %s5, ptr %t118, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d110, i32 0, i32 1) }, { i64, ptr } %t143)
  store { i64, ptr } %t146, ptr %l41
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t147 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t148 = extractvalue { i64, ptr } %t147, 0
  %t149 = extractvalue { i64, ptr } %t147, 1
  %t150 = mul i64 %t148, 1
  %t151 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t150)
  call void @llvm.memcpy.p0.p0.i64(ptr %t151, ptr %t149, i64 %t150, i1 false)
  %t152 = insertvalue { i64, ptr } undef, i64 %t148, 0
  %t153 = insertvalue { i64, ptr } %t152, ptr %t151, 1
  call void @compiler_2fbuild_2esayln(ptr %s5, { i64, ptr } %t153)
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
bb20:
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t159 = getelementptr %"compiler/build:Config", ptr %t157, i32 0, i32 10
  %t160 = load { i64, ptr }, ptr %t159, !tbaa !27
  %t161 = load ptr, ptr %l2, !tbaa !29
  %t163 = getelementptr %"compiler/build:Program", ptr %t161, i32 0, i32 6
  %t164 = load { i64, ptr }, ptr %t163, !tbaa !27
  %t165 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d111, i32 0, i32 1) }, 1
  %t166 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d111, i32 0, i32 1) }, 0
  %t168 = extractvalue { i64, ptr } %t160, 1
  %t169 = extractvalue { i64, ptr } %t160, 0
  %t170 = add i64 %t166, %t169
  %t171 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d112, i32 0, i32 1) }, 1
  %t172 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d112, i32 0, i32 1) }, 0
  %t173 = add i64 %t170, %t172
  %t175 = extractvalue { i64, ptr } %t164, 1
  %t176 = extractvalue { i64, ptr } %t164, 0
  %t177 = add i64 %t173, %t176
  %t178 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d113, i32 0, i32 1) }, 1
  %t179 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d113, i32 0, i32 1) }, 0
  %t180 = add i64 %t177, %t179
  %t181 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t180)
  call void @olang_textcopy(ptr %t181, ptr %t165, i64 %t166)
  %t182 = getelementptr i8, ptr %t181, i64 %t166
  call void @olang_textcopy(ptr %t182, ptr %t168, i64 %t169)
  %t183 = getelementptr i8, ptr %t182, i64 %t169
  call void @olang_textcopy(ptr %t183, ptr %t171, i64 %t172)
  %t184 = getelementptr i8, ptr %t183, i64 %t172
  call void @olang_textcopy(ptr %t184, ptr %t175, i64 %t176)
  %t185 = getelementptr i8, ptr %t184, i64 %t176
  call void @olang_textcopy(ptr %t185, ptr %t178, i64 %t179)
  %t186 = insertvalue { i64, ptr } undef, i64 %t180, 0
  %t187 = insertvalue { i64, ptr } %t186, ptr %t181, 1
  %t189 = extractvalue { i64, ptr } %t187, 0
  %t190 = extractvalue { i64, ptr } %t187, 1
  %t191 = mul i64 %t189, 1
  %t192 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t191)
  call void @llvm.memcpy.p0.p0.i64(ptr %t192, ptr %t190, i64 %t191, i1 false)
  %t193 = insertvalue { i64, ptr } undef, i64 %t189, 0
  %t194 = insertvalue { i64, ptr } %t193, ptr %t192, 1
  %t197 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2epaint(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %t156, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d114, i32 0, i32 1) }, { i64, ptr } %t194)
  store { i64, ptr } %t197, ptr %l51
  br label %bb21
bb21:
  %t198 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t199 = extractvalue { i64, ptr } %t198, 0
  %t200 = extractvalue { i64, ptr } %t198, 1
  %t201 = mul i64 %t199, 1
  %t202 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t201)
  call void @llvm.memcpy.p0.p0.i64(ptr %t202, ptr %t200, i64 %t201, i1 false)
  %t203 = insertvalue { i64, ptr } undef, i64 %t199, 0
  %t204 = insertvalue { i64, ptr } %t203, ptr %t202, 1
  call void @compiler_2fbuild_2esayln(ptr %s0, { i64, ptr } %t204)
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s0)
  store i32 1, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2elistLink(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, ptr %a1, ptr %a2, { i64, ptr } %a3, i1 %a4, ptr %a5, ptr %a6) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i1
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca ptr
  %l9 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca i64
  %l14 = alloca ptr
  %l15 = alloca i64
  %l17 = alloca ptr
  %l18 = alloca i64
  %l19 = alloca i64
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l22 = alloca ptr
  %l23 = alloca i64
  %l25 = alloca { i64, ptr }
  %l26 = alloca %"std/os:Output"
  %l27 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l32 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l34 = alloca i64
  %l36 = alloca i64
  %l41 = alloca { i64, ptr }
  %l48 = alloca ptr
  %l49 = alloca i64
  %l54 = alloca ptr
  %l55 = alloca i64
  %l58 = alloca { i64, ptr }
  %l59 = alloca { i64, ptr }
  %l61 = alloca { i64, ptr }
  %l64 = alloca ptr
  %l65 = alloca i64
  %l70 = alloca ptr
  %l71 = alloca i64
  %l77 = alloca ptr
  %l78 = alloca i64
  %l84 = alloca i64
  %l86 = alloca i64
  %l91 = alloca { i64, ptr }
  %l98 = alloca i64
  %l100 = alloca i64
  %l105 = alloca { i64, ptr }
  %l127 = alloca i1
  %l132 = alloca i1
  %l134 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l136 = alloca i64
  %l138 = alloca i64
  %l143 = alloca { i64, ptr }
  %l148 = alloca ptr
  %l150 = alloca { i64, ptr }
  %l152 = alloca { i64, ptr }
  %l155 = alloca i1
  %l161 = alloca i32
  %l163 = alloca %"std/os:Output"
  %l165 = alloca { i64, ptr }
  %l166 = alloca { i64, ptr }
  %l167 = alloca %"std/os:Output"
  %l168 = alloca i32
  %l170 = alloca i1
  %l173 = alloca %"std/os:Output"
  %l180 = alloca ptr
  %l181 = alloca { i64, [3 x i64] }
  %l185 = alloca %"compiler/diagmsg:Msg"
  %l187 = alloca ptr
  %l194 = alloca i32
  %l203 = alloca i32
  %l205 = alloca i1
  %s0 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s24 = alloca %olang.scope
  %rv = alloca i32
  %t402 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  store i1 %a4, ptr %l4
  store ptr %a5, ptr %l5
  store ptr %a6, ptr %l6
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l27
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l7
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/build:Config", ptr %t3, i32 0, i32 1
  %t6 = load { i64, ptr }, ptr %t5, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %v0, ptr %l7, { i64, ptr } %t6)
  br label %bb2
bb2:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eModeFlags(ptr %v0, ptr %s0, ptr %t9)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t11, ptr %l32
  br label %bb3
bb3:
  %t12 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l32
  %t13 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t12, ptr %t13
  store ptr %t13, ptr %l8, !tbaa !29
  store i64 0, ptr %l9, !tbaa !24
  br label %bb4
bb4:
  %t15 = load i64, ptr %l9, !tbaa !24
  store i64 %t15, ptr %l34, !tbaa !24
  %t16 = load ptr, ptr %l8, !tbaa !29
  %t18 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %t16)
  store i64 %t18, ptr %l36
  br label %bb5
bb5:
  %t19 = load i64, ptr %l34, !tbaa !24
  %t20 = load i64, ptr %l36, !tbaa !24
  %t21 = icmp slt i64 %t19, %t20
  %t23 = xor i1 %t21, true
  br i1 %t23, label %bb6, label %bb7
bb6:
  br label %bb12
bb7:
  br label %bb8
bb8:
  %t25 = load ptr, ptr %l8, !tbaa !29
  %t26 = load i64, ptr %l9, !tbaa !24
  %t29 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %t25, i64 %t26)
  store { i64, ptr } %t29, ptr %l41
  br label %bb9
bb9:
  %t30 = load { i64, ptr }, ptr %l41, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l7, { i64, ptr } %t30)
  br label %bb10
bb10:
  br label %bb11
bb11:
  %t34 = load i64, ptr %l9, !tbaa !24
  %t36 = add i64 %t34, 1
  store i64 %t36, ptr %l9, !tbaa !24
  br label %bb4
bb12:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/build:Config", ptr %t38, i32 0, i32 27
  %t41 = load i1, ptr %t40, !tbaa !21
  br i1 %t41, label %bb13, label %bb14
bb13:
  store ptr %l7, ptr %l48, !tbaa !29
  %t43 = ptrtoint ptr %s0 to i64
  store i64 %t43, ptr %l49, !tbaa !24
  %t44 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t44, label %bb15, label %bb16
bb14:
  br label %bb18
bb15:
  %t46 = call ptr @__olang_region_make(ptr %s0)
  %t47 = ptrtoint ptr %t46 to i64
  store i64 %t47, ptr %l49, !tbaa !24
  br label %bb16
bb16:
  %t48 = load i64, ptr @G_2ecompiler_2fbuild_2eImportLimit, !tbaa !24
  %t49 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d115, i32 0, i32 1) }, 1
  %t50 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d115, i32 0, i32 1) }, 0
  %t52 = call i64 @__olang_fmt_i64(ptr null, i64 %t48)
  %t53 = add i64 %t50, %t52
  %t54 = load i64, ptr %l49
  %t55 = inttoptr i64 %t54 to ptr
  %t56 = call ptr @__olang_scope_alloc(ptr %t55, i64 %t53)
  call void @olang_textcopy(ptr %t56, ptr %t49, i64 %t50)
  %t57 = getelementptr i8, ptr %t56, i64 %t50
  %t58 = call i64 @__olang_fmt_i64(ptr %t57, i64 %t48)
  %t59 = insertvalue { i64, ptr } undef, i64 %t53, 0
  %t60 = insertvalue { i64, ptr } %t59, ptr %t56, 1
  %t62 = load i64, ptr %l49
  %t63 = inttoptr i64 %t62 to ptr
  %t64 = extractvalue { i64, ptr } %t60, 0
  %t65 = extractvalue { i64, ptr } %t60, 1
  %t66 = mul i64 %t64, 1
  %t67 = call ptr @__olang_scope_alloc(ptr %t63, i64 %t66)
  call void @llvm.memcpy.p0.p0.i64(ptr %t67, ptr %t65, i64 %t66, i1 false)
  %t68 = insertvalue { i64, ptr } undef, i64 %t64, 0
  %t69 = insertvalue { i64, ptr } %t68, ptr %t67, 1
  %t70 = load ptr, ptr %l48, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t70, { i64, ptr } %t69)
  br label %bb17
bb17:
  br label %bb18
bb18:
  store ptr %l7, ptr %l54, !tbaa !29
  %t72 = ptrtoint ptr %s0 to i64
  store i64 %t72, ptr %l55, !tbaa !24
  %t73 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t73, label %bb19, label %bb20
bb19:
  %t75 = call ptr @__olang_region_make(ptr %s0)
  %t76 = ptrtoint ptr %t75 to i64
  store i64 %t76, ptr %l55, !tbaa !24
  br label %bb20
bb20:
  %t77 = load i1, ptr %l4, !tbaa !21
  br i1 %t77, label %bb21, label %bb22
bb21:
  store { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d116, i32 0, i32 1) }, ptr %l59, !tbaa !27
  %t79 = load { i64, ptr }, ptr %l59, !tbaa !27
  store { i64, ptr } %t79, ptr %l58, !tbaa !27
  br label %bb23
bb22:
  store { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d117, i32 0, i32 1) }, ptr %l61, !tbaa !27
  %t81 = load { i64, ptr }, ptr %l61, !tbaa !27
  store { i64, ptr } %t81, ptr %l58, !tbaa !27
  br label %bb23
bb23:
  %t83 = load { i64, ptr }, ptr %l58, !tbaa !27
  %t84 = load i64, ptr %l55
  %t85 = inttoptr i64 %t84 to ptr
  %t86 = extractvalue { i64, ptr } %t83, 0
  %t87 = extractvalue { i64, ptr } %t83, 1
  %t88 = mul i64 %t86, 1
  %t89 = call ptr @__olang_scope_alloc(ptr %t85, i64 %t88)
  call void @llvm.memcpy.p0.p0.i64(ptr %t89, ptr %t87, i64 %t88, i1 false)
  %t90 = insertvalue { i64, ptr } undef, i64 %t86, 0
  %t91 = insertvalue { i64, ptr } %t90, ptr %t89, 1
  %t92 = load ptr, ptr %l54, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t92, { i64, ptr } %t91)
  br label %bb24
bb24:
  store ptr %l7, ptr %l64, !tbaa !29
  %t94 = ptrtoint ptr %s0 to i64
  store i64 %t94, ptr %l65, !tbaa !24
  %t95 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t95, label %bb25, label %bb26
bb25:
  %t97 = call ptr @__olang_region_make(ptr %s0)
  %t98 = ptrtoint ptr %t97 to i64
  store i64 %t98, ptr %l65, !tbaa !24
  br label %bb26
bb26:
  %t99 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t100 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d118, i32 0, i32 1) }, 1
  %t101 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d118, i32 0, i32 1) }, 0
  %t103 = extractvalue { i64, ptr } %t99, 1
  %t104 = extractvalue { i64, ptr } %t99, 0
  %t105 = add i64 %t101, %t104
  %t106 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d119, i32 0, i32 1) }, 1
  %t107 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d119, i32 0, i32 1) }, 0
  %t108 = add i64 %t105, %t107
  %t109 = load i64, ptr %l65
  %t110 = inttoptr i64 %t109 to ptr
  %t111 = call ptr @__olang_scope_alloc(ptr %t110, i64 %t108)
  call void @olang_textcopy(ptr %t111, ptr %t100, i64 %t101)
  %t112 = getelementptr i8, ptr %t111, i64 %t101
  call void @olang_textcopy(ptr %t112, ptr %t103, i64 %t104)
  %t113 = getelementptr i8, ptr %t112, i64 %t104
  call void @olang_textcopy(ptr %t113, ptr %t106, i64 %t107)
  %t114 = insertvalue { i64, ptr } undef, i64 %t108, 0
  %t115 = insertvalue { i64, ptr } %t114, ptr %t111, 1
  %t117 = load i64, ptr %l65
  %t118 = inttoptr i64 %t117 to ptr
  %t119 = extractvalue { i64, ptr } %t115, 0
  %t120 = extractvalue { i64, ptr } %t115, 1
  %t121 = mul i64 %t119, 1
  %t122 = call ptr @__olang_scope_alloc(ptr %t118, i64 %t121)
  call void @llvm.memcpy.p0.p0.i64(ptr %t122, ptr %t120, i64 %t121, i1 false)
  %t123 = insertvalue { i64, ptr } undef, i64 %t119, 0
  %t124 = insertvalue { i64, ptr } %t123, ptr %t122, 1
  %t125 = load ptr, ptr %l64, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t125, { i64, ptr } %t124)
  br label %bb27
bb27:
  store ptr %l7, ptr %l70, !tbaa !29
  %t127 = ptrtoint ptr %s0 to i64
  store i64 %t127, ptr %l71, !tbaa !24
  %t128 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t128, label %bb28, label %bb29
bb28:
  %t130 = call ptr @__olang_region_make(ptr %s0)
  %t131 = ptrtoint ptr %t130 to i64
  store i64 %t131, ptr %l71, !tbaa !24
  br label %bb29
bb29:
  %t132 = load { i64, ptr }, ptr @G_2ecompiler_2fbuild_2eRemarkPasses, !tbaa !27
  %t133 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d120, i32 0, i32 1) }, 1
  %t134 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d120, i32 0, i32 1) }, 0
  %t136 = extractvalue { i64, ptr } %t132, 1
  %t137 = extractvalue { i64, ptr } %t132, 0
  %t138 = add i64 %t134, %t137
  %t139 = load i64, ptr %l71
  %t140 = inttoptr i64 %t139 to ptr
  %t141 = call ptr @__olang_scope_alloc(ptr %t140, i64 %t138)
  call void @olang_textcopy(ptr %t141, ptr %t133, i64 %t134)
  %t142 = getelementptr i8, ptr %t141, i64 %t134
  call void @olang_textcopy(ptr %t142, ptr %t136, i64 %t137)
  %t143 = insertvalue { i64, ptr } undef, i64 %t138, 0
  %t144 = insertvalue { i64, ptr } %t143, ptr %t141, 1
  %t146 = load i64, ptr %l71
  %t147 = inttoptr i64 %t146 to ptr
  %t148 = extractvalue { i64, ptr } %t144, 0
  %t149 = extractvalue { i64, ptr } %t144, 1
  %t150 = mul i64 %t148, 1
  %t151 = call ptr @__olang_scope_alloc(ptr %t147, i64 %t150)
  call void @llvm.memcpy.p0.p0.i64(ptr %t151, ptr %t149, i64 %t150, i1 false)
  %t152 = insertvalue { i64, ptr } undef, i64 %t148, 0
  %t153 = insertvalue { i64, ptr } %t152, ptr %t151, 1
  %t154 = load ptr, ptr %l70, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t154, { i64, ptr } %t153)
  br label %bb30
bb30:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l7, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d121, i32 0, i32 1) })
  br label %bb31
bb31:
  store ptr %l7, ptr %l77, !tbaa !29
  %t157 = ptrtoint ptr %s0 to i64
  store i64 %t157, ptr %l78, !tbaa !24
  %t158 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t158, label %bb32, label %bb33
bb32:
  %t160 = call ptr @__olang_region_make(ptr %s0)
  %t161 = ptrtoint ptr %t160 to i64
  store i64 %t161, ptr %l78, !tbaa !24
  br label %bb33
bb33:
  %t162 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t164 = extractvalue { i64, ptr } %t162, 1
  %t165 = extractvalue { i64, ptr } %t162, 0
  %t166 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d122, i32 0, i32 1) }, 1
  %t167 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d122, i32 0, i32 1) }, 0
  %t168 = add i64 %t165, %t167
  %t169 = load i64, ptr %l78
  %t170 = inttoptr i64 %t169 to ptr
  %t171 = call ptr @__olang_scope_alloc(ptr %t170, i64 %t168)
  call void @olang_textcopy(ptr %t171, ptr %t164, i64 %t165)
  %t172 = getelementptr i8, ptr %t171, i64 %t165
  call void @olang_textcopy(ptr %t172, ptr %t166, i64 %t167)
  %t173 = insertvalue { i64, ptr } undef, i64 %t168, 0
  %t174 = insertvalue { i64, ptr } %t173, ptr %t171, 1
  %t176 = load i64, ptr %l78
  %t177 = inttoptr i64 %t176 to ptr
  %t178 = extractvalue { i64, ptr } %t174, 0
  %t179 = extractvalue { i64, ptr } %t174, 1
  %t180 = mul i64 %t178, 1
  %t181 = call ptr @__olang_scope_alloc(ptr %t177, i64 %t180)
  call void @llvm.memcpy.p0.p0.i64(ptr %t181, ptr %t179, i64 %t180, i1 false)
  %t182 = insertvalue { i64, ptr } undef, i64 %t178, 0
  %t183 = insertvalue { i64, ptr } %t182, ptr %t181, 1
  %t184 = load ptr, ptr %l77, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t184, { i64, ptr } %t183)
  br label %bb34
bb34:
  store ptr %a1, ptr %l11, !tbaa !29
  store i64 0, ptr %l12, !tbaa !24
  br label %bb35
bb35:
  %t188 = load i64, ptr %l12, !tbaa !24
  store i64 %t188, ptr %l84, !tbaa !24
  %t189 = load ptr, ptr %l11, !tbaa !29
  %t191 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v1, ptr %t189)
  store i64 %t191, ptr %l86
  br label %bb36
bb36:
  %t192 = load i64, ptr %l84, !tbaa !24
  %t193 = load i64, ptr %l86, !tbaa !24
  %t194 = icmp slt i64 %t192, %t193
  %t196 = xor i1 %t194, true
  br i1 %t196, label %bb37, label %bb38
bb37:
  br label %bb43
bb38:
  br label %bb39
bb39:
  %t198 = load ptr, ptr %l11, !tbaa !29
  %t199 = load i64, ptr %l12, !tbaa !24
  %t202 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t198, i64 %t199)
  store { i64, ptr } %t202, ptr %l91
  br label %bb40
bb40:
  %t203 = load { i64, ptr }, ptr %l91, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %v1, ptr %l7, { i64, ptr } %t203)
  br label %bb41
bb41:
  br label %bb42
bb42:
  %t207 = load i64, ptr %l12, !tbaa !24
  %t209 = add i64 %t207, 1
  store i64 %t209, ptr %l12, !tbaa !24
  br label %bb35
bb43:
  %t211 = load ptr, ptr %l2, !tbaa !29
  %t213 = getelementptr %"compiler/build:Program", ptr %t211, i32 0, i32 3
  store ptr %t213, ptr %l14, !tbaa !29
  store i64 0, ptr %l15, !tbaa !24
  br label %bb44
bb44:
  %t215 = load i64, ptr %l15, !tbaa !24
  store i64 %t215, ptr %l98, !tbaa !24
  %t216 = load ptr, ptr %l14, !tbaa !29
  %t218 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v2, ptr %t216)
  store i64 %t218, ptr %l100
  br label %bb45
bb45:
  %t219 = load i64, ptr %l98, !tbaa !24
  %t220 = load i64, ptr %l100, !tbaa !24
  %t221 = icmp slt i64 %t219, %t220
  %t223 = xor i1 %t221, true
  br i1 %t223, label %bb46, label %bb47
bb46:
  br label %bb52
bb47:
  br label %bb48
bb48:
  %t225 = load ptr, ptr %l14, !tbaa !29
  %t226 = load i64, ptr %l15, !tbaa !24
  %t229 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v2, ptr %v2, ptr %t225, i64 %t226)
  store { i64, ptr } %t229, ptr %l105
  br label %bb49
bb49:
  %t230 = load { i64, ptr }, ptr %l105, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %v2, ptr %l7, { i64, ptr } %t230)
  br label %bb50
bb50:
  br label %bb51
bb51:
  %t234 = load i64, ptr %l15, !tbaa !24
  %t236 = add i64 %t234, 1
  store i64 %t236, ptr %l15, !tbaa !24
  br label %bb44
bb52:
  store %olang.scope zeroinitializer, ptr %s15
  %t238 = insertvalue [3 x { i64, ptr }] undef, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d123, i32 0, i32 1) }, 0
  %t239 = insertvalue [3 x { i64, ptr }] %t238, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d124, i32 0, i32 1) }, 1
  %t240 = insertvalue [3 x { i64, ptr }] %t239, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d125, i32 0, i32 1) }, 2
  %t242 = call ptr @__olang_scope_alloc_a(ptr %s15, i64 48, i64 8)
  store [3 x { i64, ptr }] %t240, ptr %t242
  store ptr %t242, ptr %l17
  store i64 0, ptr %l18, !tbaa !24
  %t244 = load ptr, ptr %l17
  store i64 3, ptr %l19, !tbaa !24
  br label %bb53
bb53:
  %t247 = load i64, ptr %l18, !tbaa !24
  %t248 = load i64, ptr %l19, !tbaa !24
  %t251 = icmp slt i64 %t247, %t248
  %t253 = xor i1 %t251, true
  br i1 %t253, label %bb54, label %bb55
bb54:
  br label %bb59
bb55:
  br label %bb56
bb56:
  %t255 = load ptr, ptr %l17
  %t256 = load i64, ptr %l18, !tbaa !24
  %t259 = getelementptr [3 x { i64, ptr }], ptr %t255, i64 0, i64 %t256
  %t260 = load { i64, ptr }, ptr %t259, !tbaa !37
  %t263 = load ptr, ptr @__olang_prog_scope
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %t263, ptr %l7, { i64, ptr } %t260)
  br label %bb57
bb57:
  br label %bb58
bb58:
  %t266 = load i64, ptr %l18, !tbaa !24
  %t268 = add i64 %t266, 1
  store i64 %t268, ptr %l18, !tbaa !24
  br label %bb53
bb59:
  call void @__olang_scope_close(ptr %s15)
  %t270 = load ptr, ptr %l2, !tbaa !29
  %t272 = getelementptr %"compiler/build:Program", ptr %t270, i32 0, i32 2
  %t273 = load { i64, ptr }, ptr %t272, !tbaa !27
  %t275 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t273, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d126, i32 0, i32 1) })
  store i1 %t275, ptr %l127
  br label %bb60
bb60:
  %t276 = load i1, ptr %l127, !tbaa !21
  %t277 = xor i1 %t276, true
  br i1 %t277, label %bb61, label %bb62
bb61:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l7, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d127, i32 0, i32 1) })
  br label %bb63
bb62:
  br label %bb64
bb63:
  br label %bb64
bb64:
  %t280 = load ptr, ptr %l0, !tbaa !29
  %t282 = getelementptr %"compiler/build:Config", ptr %t280, i32 0, i32 1
  %t283 = load { i64, ptr }, ptr %t282, !tbaa !27
  %t285 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t283, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d128, i32 0, i32 1) })
  store i1 %t285, ptr %l132
  br label %bb65
bb65:
  %t286 = load i1, ptr %l132, !tbaa !21
  br i1 %t286, label %bb66, label %bb67
bb66:
  call void @__olang_scope_close(ptr %s0)
  store i32 65537, ptr %rv
  br label %ret
bb67:
  br label %bb68
bb68:
  %t288 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t288, ptr %l134
  br label %bb69
bb69:
  %t289 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l134
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t289, ptr %l21
  store ptr %l7, ptr %l22, !tbaa !29
  store i64 0, ptr %l23, !tbaa !24
  br label %bb70
bb70:
  %t291 = load i64, ptr %l23, !tbaa !24
  store i64 %t291, ptr %l136, !tbaa !24
  %t292 = load ptr, ptr %l22, !tbaa !29
  %t294 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %t292)
  store i64 %t294, ptr %l138
  br label %bb71
bb71:
  %t295 = load i64, ptr %l136, !tbaa !24
  %t296 = load i64, ptr %l138, !tbaa !24
  %t297 = icmp slt i64 %t295, %t296
  %t299 = xor i1 %t297, true
  br i1 %t299, label %bb72, label %bb73
bb72:
  br label %bb78
bb73:
  br label %bb74
bb74:
  %t301 = load ptr, ptr %l22, !tbaa !29
  %t302 = load i64, ptr %l23, !tbaa !24
  %t305 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %t301, i64 %t302)
  store { i64, ptr } %t305, ptr %l143
  br label %bb75
bb75:
  %t306 = load { i64, ptr }, ptr %l143, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l21, { i64, ptr } %t306)
  br label %bb76
bb76:
  br label %bb77
bb77:
  %t310 = load i64, ptr %l23, !tbaa !24
  %t312 = add i64 %t310, 1
  store i64 %t312, ptr %l23, !tbaa !24
  br label %bb70
bb78:
  store ptr %l21, ptr %l148, !tbaa !29
  %t314 = load ptr, ptr %l0, !tbaa !29
  %t316 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eclangVersion(ptr %v0, ptr %v0, ptr %t314)
  store { i64, ptr } %t316, ptr %l150
  br label %bb79
bb79:
  %t317 = load ptr, ptr %l148, !tbaa !29
  %t318 = load { i64, ptr }, ptr %l150, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %v0, ptr %t317, { i64, ptr } %t318)
  br label %bb80
bb80:
  %t320 = call { i64, ptr } @compiler_2fbuild_2eHashOf(ptr %s0, ptr %s0, ptr %l21)
  store { i64, ptr } %t320, ptr %l152
  br label %bb81
bb81:
  %t321 = load { i64, ptr }, ptr %l152, !tbaa !27
  store { i64, ptr } %t321, ptr %l25, !tbaa !27
  %t322 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t323 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t326 = call i1 @compiler_2fbuild_2emadeBefore(ptr %v3, ptr %s0, { i64, ptr } %t322, { i64, ptr } %t323)
  store i1 %t326, ptr %l155
  br label %bb82
bb82:
  %t327 = load i1, ptr %l155, !tbaa !21
  br i1 %t327, label %bb83, label %bb84
bb83:
  %t328 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t329 = load i1, ptr %l4, !tbaa !21
  %t330 = load ptr, ptr %l5, !tbaa !29
  call void @compiler_2fbuild_2elistFiles(ptr %v3, ptr %v4, { i64, ptr } %t328, i1 %t329, ptr %t330)
  br label %bb85
bb84:
  br label %bb86
bb85:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
bb86:
  %t334 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t335 = load ptr, ptr %l6, !tbaa !29
  %t338 = call i32 @compiler_2fbuild_2eafresh(ptr %v3, ptr %v5, { i64, ptr } %t334, ptr %t335)
  store i32 %t338, ptr %l161
  %t339 = icmp ne i32 %t338, 0
  br i1 %t339, label %bb88, label %ok.340, !prof !99
ok.340:
  br label %bb87
bb87:
  br label %bb89
bb88:
  %t341 = load i32, ptr %l161, !tbaa !23
  %t342 = lshr i32 %t341, 16
  %t343 = and i32 %t341, 65535
  %t344 = icmp eq i32 %t342, 1
  %t345 = select i1 %t344, i32 1, i32 0
  %t346 = icmp eq i32 %t341, 0
  %t347 = shl i32 %t345, 16
  %t348 = or i32 %t347, %t343
  %t349 = select i1 %t346, i32 0, i32 %t348
  call void @__olang_scope_close(ptr %s0)
  store i32 %t349, ptr %rv
  br label %ret
bb89:
  %t352 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %s0, ptr %s0, ptr %l7)
  store { i64, ptr } %t352, ptr %l165
  br label %bb90
bb90:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d24, i32 0, i32 1) }, ptr %l166, !tbaa !27
  %t353 = load { i64, ptr }, ptr %l165, !tbaa !27
  %t354 = load { i64, ptr }, ptr %l166, !tbaa !27
  %t355 = call { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %s0, ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t353, { i64, ptr } %t354, i1 true, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d25, i32 0, i32 1) })
  %t356 = extractvalue { i32, %"std/os:Output" } %t355, 1
  %t357 = extractvalue { i32, %"std/os:Output" } %t355, 0
  store i32 %t357, ptr %l168
  %t358 = icmp ne i32 %t357, 0
  br i1 %t358, label %bb92, label %ok.359, !prof !99
ok.359:
  store %"std/os:Output" %t356, ptr %l167
  br label %bb91
bb91:
  %t360 = load %"std/os:Output", ptr %l167
  store %"std/os:Output" %t360, ptr %l163
  br label %bb97
bb92:
  %t361 = load i32, ptr %l168, !tbaa !23
  %t362 = ashr i32 %t361, 16
  %t364 = icmp eq i32 %t362, 1
  store i1 %t364, ptr %l170, !tbaa !21
  %t365 = load i32, ptr %l168, !tbaa !23
  %t366 = ashr i32 %t365, 16
  %t368 = icmp eq i32 %t366, 1
  br i1 %t368, label %bb93, label %bb94
bb93:
  call void @__olang_errpay_pop()
  br label %bb94
bb94:
  br label %bb95
bb95:
  %t370 = call %"std/os:Output" @std_2fos_3aOutput_2ector(ptr %s0, ptr %s0, ptr %s0, i32 127, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d129, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d130, i32 0, i32 1) })
  store %"std/os:Output" %t370, ptr %l173
  br label %bb96
bb96:
  %t371 = load %"std/os:Output", ptr %l173
  store %"std/os:Output" %t371, ptr %l163
  br label %bb97
bb97:
  %t372 = load %"std/os:Output", ptr %l163
  store %"std/os:Output" %t372, ptr %l26
  %t373 = getelementptr %"std/os:Output", ptr %l26, i32 0, i32 0
  %t374 = load i32, ptr %t373, !tbaa !23
  %t376 = icmp ne i32 %t374, 0
  br i1 %t376, label %bb98, label %bb99
bb98:
  store %olang.scope zeroinitializer, ptr %s24
  %t378 = getelementptr %"std/os:Output", ptr %l26, i32 0, i32 1
  %t379 = load { i64, ptr }, ptr %t378, !tbaa !27
  %t380 = getelementptr %"std/os:Output", ptr %l26, i32 0, i32 2
  %t381 = load { i64, ptr }, ptr %t380, !tbaa !27
  %t383 = extractvalue { i64, ptr } %t379, 1
  %t384 = extractvalue { i64, ptr } %t379, 0
  %t386 = extractvalue { i64, ptr } %t381, 1
  %t387 = extractvalue { i64, ptr } %t381, 0
  %t388 = add i64 %t384, %t387
  %t389 = call ptr @__olang_scope_alloc(ptr %s24, i64 %t388)
  call void @olang_textcopy(ptr %t389, ptr %t383, i64 %t384)
  %t390 = getelementptr i8, ptr %t389, i64 %t384
  call void @olang_textcopy(ptr %t390, ptr %t386, i64 %t387)
  %t391 = insertvalue { i64, ptr } undef, i64 %t388, 0
  %t392 = insertvalue { i64, ptr } %t391, ptr %t389, 1
  %t394 = extractvalue { i64, ptr } %t392, 0
  %t395 = extractvalue { i64, ptr } %t392, 1
  %t396 = mul i64 %t394, 1
  %t397 = call ptr @__olang_scope_alloc(ptr %s24, i64 %t396)
  call void @llvm.memcpy.p0.p0.i64(ptr %t397, ptr %t395, i64 %t396, i1 false)
  %t398 = insertvalue { i64, ptr } undef, i64 %t394, 0
  %t399 = insertvalue { i64, ptr } %t398, ptr %t397, 1
  call void @compiler_2fbuild_2esayErr(ptr %s24, { i64, ptr } %t399)
  br label %bb100
bb99:
  br label %bb103
bb100:
  %t401 = load ptr, ptr %l6, !tbaa !29
  store ptr %t401, ptr %l180, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t402
  %t403 = getelementptr { i64, [3 x i64] }, ptr %t402, i32 0, i32 0
  store i64 0, ptr %t403
  %t404 = load { i64, [3 x i64] }, ptr %t402
  store { i64, [3 x i64] } %t404, ptr %l181
  %t405 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t407 = extractvalue { i64, ptr } %t405, 1
  %t408 = extractvalue { i64, ptr } %t405, 0
  %t409 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d131, i32 0, i32 1) }, 1
  %t410 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d131, i32 0, i32 1) }, 0
  %t411 = add i64 %t408, %t410
  %t412 = call ptr @__olang_scope_alloc(ptr %v5, i64 %t411)
  call void @olang_textcopy(ptr %t412, ptr %t407, i64 %t408)
  %t413 = getelementptr i8, ptr %t412, i64 %t408
  call void @olang_textcopy(ptr %t413, ptr %t409, i64 %t410)
  %t414 = insertvalue { i64, ptr } undef, i64 %t411, 0
  %t415 = insertvalue { i64, ptr } %t414, ptr %t412, 1
  %t417 = extractvalue { i64, ptr } %t415, 0
  %t418 = extractvalue { i64, ptr } %t415, 1
  %t419 = mul i64 %t417, 1
  %t420 = call ptr @__olang_scope_alloc(ptr %v5, i64 %t419)
  call void @llvm.memcpy.p0.p0.i64(ptr %t420, ptr %t418, i64 %t419, i1 false)
  %t421 = insertvalue { i64, ptr } undef, i64 %t417, 0
  %t422 = insertvalue { i64, ptr } %t421, ptr %t420, 1
  %t424 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLinkFailed(ptr %v5, ptr %v5, { i64, ptr } %t422)
  store %"compiler/diagmsg:Msg" %t424, ptr %l185
  br label %bb101
bb101:
  %t425 = load ptr, ptr %l180, !tbaa !29
  %t426 = load { i64, [3 x i64] }, ptr %l181
  %t427 = load %"compiler/diagmsg:Msg", ptr %l185
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eFatal(ptr %v5, ptr %v5, ptr %t425, { i64, [3 x i64] } %t426, %"compiler/diagmsg:Msg" %t427)
  br label %bb102
bb102:
  call void @__olang_scope_close(ptr %s24)
  call void @__olang_scope_close(ptr %s0)
  store i32 65536, ptr %rv
  br label %ret
bb103:
  call void @compiler_2fbuild_2ePhase(ptr %s0, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d132, i32 0, i32 1) })
  br label %bb104
bb104:
  %t429 = load ptr, ptr %l0, !tbaa !29
  store ptr %t429, ptr %l187, !tbaa !29
  %t430 = load ptr, ptr %l187, !tbaa !29
  %t431 = getelementptr %"compiler/build:Config", ptr %t430, i32 0, i32 26
  %t432 = load i64, ptr %t431, !tbaa !24
  %t434 = add i64 %t432, 1
  %t436 = load ptr, ptr %l187, !tbaa !29
  %t437 = getelementptr %"compiler/build:Config", ptr %t436, i32 0, i32 26
  store i64 %t434, ptr %t437, !tbaa !24
  %t438 = load i1, ptr %l4, !tbaa !21
  br i1 %t438, label %bb105, label %bb106
bb105:
  %t440 = load ptr, ptr %l0, !tbaa !29
  %t441 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t442 = load ptr, ptr %l6, !tbaa !29
  %t446 = call i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2ebitcodeText(ptr %v0, ptr %v3, ptr %v5, ptr %t440, { i64, ptr } %t441, ptr %t442)
  store i32 %t446, ptr %l194
  %t447 = icmp ne i32 %t446, 0
  br i1 %t447, label %bb108, label %ok.448, !prof !99
ok.448:
  br label %bb107
bb106:
  br label %bb110
bb107:
  br label %bb109
bb108:
  %t449 = load i32, ptr %l194, !tbaa !23
  %t450 = lshr i32 %t449, 16
  %t451 = and i32 %t449, 65535
  %t452 = icmp eq i32 %t450, 1
  %t453 = select i1 %t452, i32 1, i32 0
  %t454 = icmp eq i32 %t449, 0
  %t455 = shl i32 %t453, 16
  %t456 = or i32 %t455, %t451
  %t457 = select i1 %t454, i32 0, i32 %t456
  call void @__olang_scope_close(ptr %s0)
  store i32 %t457, ptr %rv
  br label %ret
bb109:
  br label %bb110
bb110:
  %t459 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t461 = extractvalue { i64, ptr } %t459, 1
  %t462 = extractvalue { i64, ptr } %t459, 0
  %t463 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d133, i32 0, i32 1) }, 1
  %t464 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d133, i32 0, i32 1) }, 0
  %t465 = add i64 %t462, %t464
  %t466 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t465)
  call void @olang_textcopy(ptr %t466, ptr %t461, i64 %t462)
  %t467 = getelementptr i8, ptr %t466, i64 %t462
  call void @olang_textcopy(ptr %t467, ptr %t463, i64 %t464)
  %t468 = insertvalue { i64, ptr } undef, i64 %t465, 0
  %t469 = insertvalue { i64, ptr } %t468, ptr %t466, 1
  %t471 = extractvalue { i64, ptr } %t469, 0
  %t472 = extractvalue { i64, ptr } %t469, 1
  %t473 = mul i64 %t471, 1
  %t474 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t473)
  call void @llvm.memcpy.p0.p0.i64(ptr %t474, ptr %t472, i64 %t473, i1 false)
  %t475 = insertvalue { i64, ptr } undef, i64 %t471, 0
  %t476 = insertvalue { i64, ptr } %t475, ptr %t474, 1
  %t477 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t479 = extractvalue { i64, ptr } %t477, 1
  %t480 = extractvalue { i64, ptr } %t477, 0
  %t481 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d134, i32 0, i32 1) }, 1
  %t482 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d134, i32 0, i32 1) }, 0
  %t483 = add i64 %t480, %t482
  %t484 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t483)
  call void @olang_textcopy(ptr %t484, ptr %t479, i64 %t480)
  %t485 = getelementptr i8, ptr %t484, i64 %t480
  call void @olang_textcopy(ptr %t485, ptr %t481, i64 %t482)
  %t486 = insertvalue { i64, ptr } undef, i64 %t483, 0
  %t487 = insertvalue { i64, ptr } %t486, ptr %t484, 1
  %t490 = extractvalue { i64, ptr } %t487, 0
  %t491 = extractvalue { i64, ptr } %t487, 1
  %t492 = mul i64 %t490, 1
  %t493 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t492)
  call void @llvm.memcpy.p0.p0.i64(ptr %t493, ptr %t491, i64 %t492, i1 false)
  %t494 = insertvalue { i64, ptr } undef, i64 %t490, 0
  %t495 = insertvalue { i64, ptr } %t494, ptr %t493, 1
  %t498 = call i32 @std_2fos_2eWriteFile(ptr %s0, ptr %s0, { i64, ptr } %t476, { i64, ptr } %t495)
  store i32 %t498, ptr %l203
  %t499 = icmp ne i32 %t498, 0
  br i1 %t499, label %bb112, label %ok.500, !prof !99
ok.500:
  br label %bb111
bb111:
  br label %bb116
bb112:
  %t501 = load i32, ptr %l203, !tbaa !23
  %t502 = ashr i32 %t501, 16
  %t504 = icmp eq i32 %t502, 1
  store i1 %t504, ptr %l205, !tbaa !21
  %t505 = load i32, ptr %l203, !tbaa !23
  %t506 = ashr i32 %t505, 16
  %t508 = icmp eq i32 %t506, 1
  br i1 %t508, label %bb113, label %bb114
bb113:
  call void @__olang_errpay_pop()
  br label %bb114
bb114:
  br label %bb115
bb115:
  br label %bb116
bb116:
  %t510 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t511 = load i1, ptr %l4, !tbaa !21
  %t512 = load ptr, ptr %l5, !tbaa !29
  call void @compiler_2fbuild_2elistFiles(ptr %v3, ptr %v4, { i64, ptr } %t510, i1 %t511, ptr %t512)
  br label %bb117
bb117:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2emodeSuffix(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l18 = alloca i1
  %l20 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/build:Config", ptr %t1, i32 0, i32 6
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d135, i32 0, i32 1) }, ptr %l3, !tbaa !27
  br label %bb3
bb2:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d136, i32 0, i32 1) }, ptr %l3, !tbaa !27
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/build:Config", ptr %t6, i32 0, i32 4
  %t9 = load i1, ptr %t8, !tbaa !21
  br i1 %t9, label %bb4, label %bb5
bb4:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d137, i32 0, i32 1) }, ptr %l6, !tbaa !27
  br label %bb6
bb5:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d138, i32 0, i32 1) }, ptr %l6, !tbaa !27
  br label %bb6
bb6:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/build:Config", ptr %t11, i32 0, i32 5
  %t14 = load i1, ptr %t13, !tbaa !21
  br i1 %t14, label %bb7, label %bb8
bb7:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d139, i32 0, i32 1) }, ptr %l9, !tbaa !27
  br label %bb9
bb8:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d140, i32 0, i32 1) }, ptr %l9, !tbaa !27
  br label %bb9
bb9:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/build:Config", ptr %t16, i32 0, i32 7
  %t19 = load i1, ptr %t18, !tbaa !21
  br i1 %t19, label %bb10, label %bb11
bb10:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d141, i32 0, i32 1) }, ptr %l12, !tbaa !27
  br label %bb12
bb11:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d142, i32 0, i32 1) }, ptr %l12, !tbaa !27
  br label %bb12
bb12:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/build:Config", ptr %t21, i32 0, i32 9
  %t24 = load i1, ptr %t23, !tbaa !21
  br i1 %t24, label %bb13, label %bb14
bb13:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d143, i32 0, i32 1) }, ptr %l15, !tbaa !27
  br label %bb15
bb14:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d144, i32 0, i32 1) }, ptr %l15, !tbaa !27
  br label %bb15
bb15:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/build:Config", ptr %t26, i32 0, i32 10
  %t29 = load { i64, ptr }, ptr %t28, !tbaa !27
  %t31 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t29, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d145, i32 0, i32 1) })
  store i1 %t31, ptr %l18
  br label %bb16
bb16:
  %t32 = load i1, ptr %l18, !tbaa !21
  %t33 = xor i1 %t32, true
  br i1 %t33, label %bb17, label %bb18
bb17:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d146, i32 0, i32 1) }, ptr %l20, !tbaa !27
  br label %bb19
bb18:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d147, i32 0, i32 1) }, ptr %l20, !tbaa !27
  br label %bb19
bb19:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/build:Config", ptr %t35, i32 0, i32 12
  %t38 = load i1, ptr %t37, !tbaa !21
  br i1 %t38, label %bb20, label %bb21
bb20:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d148, i32 0, i32 1) }, ptr %l23, !tbaa !27
  br label %bb22
bb21:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d149, i32 0, i32 1) }, ptr %l23, !tbaa !27
  br label %bb22
bb22:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/build:Config", ptr %t40, i32 0, i32 14
  %t43 = load i1, ptr %t42, !tbaa !21
  br i1 %t43, label %bb23, label %bb24
bb23:
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d150, i32 0, i32 1) }, ptr %l26, !tbaa !27
  br label %bb25
bb24:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d151, i32 0, i32 1) }, ptr %l26, !tbaa !27
  br label %bb25
bb25:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/build:Config", ptr %t45, i32 0, i32 13
  %t48 = load i1, ptr %t47, !tbaa !21
  br i1 %t48, label %bb26, label %bb27
bb26:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d152, i32 0, i32 1) }, ptr %l29, !tbaa !27
  br label %bb28
bb27:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d153, i32 0, i32 1) }, ptr %l29, !tbaa !27
  br label %bb28
bb28:
  %t50 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t51 = extractvalue { i64, ptr } %t50, 1
  %t52 = extractvalue { i64, ptr } %t50, 0
  %t53 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t54 = extractvalue { i64, ptr } %t53, 1
  %t55 = extractvalue { i64, ptr } %t53, 0
  %t56 = add i64 %t52, %t55
  %t57 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t58 = extractvalue { i64, ptr } %t57, 1
  %t59 = extractvalue { i64, ptr } %t57, 0
  %t60 = add i64 %t56, %t59
  %t61 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t62 = extractvalue { i64, ptr } %t61, 1
  %t63 = extractvalue { i64, ptr } %t61, 0
  %t64 = add i64 %t60, %t63
  %t65 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t66 = extractvalue { i64, ptr } %t65, 1
  %t67 = extractvalue { i64, ptr } %t65, 0
  %t68 = add i64 %t64, %t67
  %t69 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t70 = extractvalue { i64, ptr } %t69, 1
  %t71 = extractvalue { i64, ptr } %t69, 0
  %t72 = add i64 %t68, %t71
  %t73 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t74 = extractvalue { i64, ptr } %t73, 1
  %t75 = extractvalue { i64, ptr } %t73, 0
  %t76 = add i64 %t72, %t75
  %t77 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t78 = extractvalue { i64, ptr } %t77, 1
  %t79 = extractvalue { i64, ptr } %t77, 0
  %t80 = add i64 %t76, %t79
  %t81 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t82 = extractvalue { i64, ptr } %t81, 1
  %t83 = extractvalue { i64, ptr } %t81, 0
  %t84 = add i64 %t80, %t83
  %t85 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t84)
  call void @olang_textcopy(ptr %t85, ptr %t51, i64 %t52)
  %t86 = getelementptr i8, ptr %t85, i64 %t52
  call void @olang_textcopy(ptr %t86, ptr %t54, i64 %t55)
  %t87 = getelementptr i8, ptr %t86, i64 %t55
  call void @olang_textcopy(ptr %t87, ptr %t58, i64 %t59)
  %t88 = getelementptr i8, ptr %t87, i64 %t59
  call void @olang_textcopy(ptr %t88, ptr %t62, i64 %t63)
  %t89 = getelementptr i8, ptr %t88, i64 %t63
  call void @olang_textcopy(ptr %t89, ptr %t66, i64 %t67)
  %t90 = getelementptr i8, ptr %t89, i64 %t67
  call void @olang_textcopy(ptr %t90, ptr %t70, i64 %t71)
  %t91 = getelementptr i8, ptr %t90, i64 %t71
  call void @olang_textcopy(ptr %t91, ptr %t74, i64 %t75)
  %t92 = getelementptr i8, ptr %t91, i64 %t75
  call void @olang_textcopy(ptr %t92, ptr %t78, i64 %t79)
  %t93 = getelementptr i8, ptr %t92, i64 %t79
  call void @olang_textcopy(ptr %t93, ptr %t82, i64 %t83)
  %t94 = insertvalue { i64, ptr } undef, i64 %t84, 0
  %t95 = insertvalue { i64, ptr } %t94, ptr %t85, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t95, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2epaint(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca %"std/prelude/text:StringBuilder"
  %l9 = alloca %"std/prelude/text:StringBuilder"
  %l20 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"compiler/build:Config", ptr %a0, i32 0, i32 21
  %t4 = load i1, ptr %t3, !tbaa !21
  %t6 = xor i1 %t4, true
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 1
  %t11 = extractvalue { i64, ptr } %t8, 0
  %t12 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t11)
  call void @olang_textcopy(ptr %t12, ptr %t10, i64 %t11)
  %t13 = insertvalue { i64, ptr } undef, i64 %t11, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr %t12, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t14, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t16 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t16, ptr %l9
  br label %bb4
bb4:
  %t17 = load %"std/prelude/text:StringBuilder", ptr %l9
  store %"std/prelude/text:StringBuilder" %t17, ptr %l3
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l3, i8 27)
  br label %bb5
bb5:
  %t20 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d154, i32 0, i32 1) }, 1
  %t21 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d154, i32 0, i32 1) }, 0
  %t23 = extractvalue { i64, ptr } %a1, 1
  %t24 = extractvalue { i64, ptr } %a1, 0
  %t25 = add i64 %t21, %t24
  %t26 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d155, i32 0, i32 1) }, 1
  %t27 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d155, i32 0, i32 1) }, 0
  %t28 = add i64 %t25, %t27
  %t29 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t28)
  call void @olang_textcopy(ptr %t29, ptr %t20, i64 %t21)
  %t30 = getelementptr i8, ptr %t29, i64 %t21
  call void @olang_textcopy(ptr %t30, ptr %t23, i64 %t24)
  %t31 = getelementptr i8, ptr %t30, i64 %t24
  call void @olang_textcopy(ptr %t31, ptr %t26, i64 %t27)
  %t32 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t33 = insertvalue { i64, ptr } %t32, ptr %t29, 1
  %t35 = extractvalue { i64, ptr } %t33, 0
  %t36 = extractvalue { i64, ptr } %t33, 1
  %t37 = mul i64 %t35, 1
  %t38 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t37)
  call void @llvm.memcpy.p0.p0.i64(ptr %t38, ptr %t36, i64 %t37, i1 false)
  %t39 = insertvalue { i64, ptr } undef, i64 %t35, 0
  %t40 = insertvalue { i64, ptr } %t39, ptr %t38, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l3, { i64, ptr } %t40)
  br label %bb6
bb6:
  %t43 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v2, ptr %l3, { i64, ptr } %t43)
  br label %bb7
bb7:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l3, i8 27)
  br label %bb8
bb8:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l3, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d156, i32 0, i32 1) })
  br label %bb9
bb9:
  %t49 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v3, ptr %l3)
  store { i64, ptr } %t49, ptr %l20
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s0)
  %t50 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t50, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i32, { i64, ptr } } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2erunner(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i32
  %l8 = alloca i1
  %l9 = alloca ptr
  %l10 = alloca { i64, [3 x i64] }
  %l13 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca { i32, { i64, ptr } }
  %t16 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/build:Config", ptr %t1, i32 0, i32 2
  %t5 = call { i32, { i64, ptr } } @compiler_2ftarget_2ecompiler_2ftarget_3aTarget_2eRunner(ptr %v0, ptr %v2, ptr %t3)
  %t6 = extractvalue { i32, { i64, ptr } } %t5, 1
  %t7 = extractvalue { i32, { i64, ptr } } %t5, 0
  store i32 %t7, ptr %l6
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb2, label %ok.9, !prof !99
ok.9:
  store { i64, ptr } %t6, ptr %l5
  br label %bb1
bb1:
  %t10 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t10, ptr %l2, !tbaa !27
  br label %bb6
bb2:
  %t11 = load i32, ptr %l6, !tbaa !23
  %t12 = ashr i32 %t11, 16
  %t14 = icmp eq i32 %t12, 1
  store i1 %t14, ptr %l8, !tbaa !21
  br label %bb3
bb3:
  store ptr %a1, ptr %l9, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t16
  %t17 = getelementptr { i64, [3 x i64] }, ptr %t16, i32 0, i32 0
  store i64 0, ptr %t17
  %t18 = load { i64, [3 x i64] }, ptr %t16
  store { i64, [3 x i64] } %t18, ptr %l10
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/build:Config", ptr %t19, i32 0, i32 2
  %t22 = getelementptr %"compiler/target:Target", ptr %t21, i32 0, i32 2
  %t23 = load { i64, ptr }, ptr %t22, !tbaa !27
  %t25 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTargetNoEmulator(ptr %v0, ptr %v1, { i64, ptr } %t23)
  store %"compiler/diagmsg:Msg" %t25, ptr %l13
  br label %bb4
bb4:
  %t26 = load ptr, ptr %l9, !tbaa !29
  %t27 = load { i64, [3 x i64] }, ptr %l10
  %t28 = load %"compiler/diagmsg:Msg", ptr %l13
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eFatal(ptr %v1, ptr %v1, ptr %t26, { i64, [3 x i64] } %t27, %"compiler/diagmsg:Msg" %t28)
  br label %bb5
bb5:
  %t30 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t30, ptr %rv
  br label %ret
bb6:
  %t31 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t32 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t31, 1
  store { i32, { i64, ptr } } %t32, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eskipped(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, ptr %a2) #0 {
entry:
  %l4 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eRender(ptr %v2, ptr %s0, ptr %a2)
  store { i64, ptr } %t3, ptr %l4
  br label %bb1
bb1:
  %t4 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t4, 0
  %t6 = extractvalue { i64, ptr } %t4, 1
  %t7 = mul i64 %t5, 1
  %t8 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t7)
  call void @llvm.memcpy.p0.p0.i64(ptr %t8, ptr %t6, i64 %t7, i1 false)
  %t9 = insertvalue { i64, ptr } undef, i64 %t5, 0
  %t10 = insertvalue { i64, ptr } %t9, ptr %t8, 1
  call void @compiler_2fbuild_2esay(ptr %s0, { i64, ptr } %t10)
  br label %bb2
bb2:
  %t15 = extractvalue { i64, ptr } %a1, 1
  %t16 = extractvalue { i64, ptr } %a1, 0
  %t17 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d157, i32 0, i32 1) }, 1
  %t18 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d157, i32 0, i32 1) }, 0
  %t19 = add i64 %t16, %t18
  %t20 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t19)
  call void @olang_textcopy(ptr %t20, ptr %t15, i64 %t16)
  %t21 = getelementptr i8, ptr %t20, i64 %t16
  call void @olang_textcopy(ptr %t21, ptr %t17, i64 %t18)
  %t22 = insertvalue { i64, ptr } undef, i64 %t19, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t20, 1
  %t25 = extractvalue { i64, ptr } %t23, 0
  %t26 = extractvalue { i64, ptr } %t23, 1
  %t27 = mul i64 %t25, 1
  %t28 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t27)
  call void @llvm.memcpy.p0.p0.i64(ptr %t28, ptr %t26, i64 %t27, i1 false)
  %t29 = insertvalue { i64, ptr } undef, i64 %t25, 0
  %t30 = insertvalue { i64, ptr } %t29, ptr %t28, 1
  %t33 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2epaint(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %a0, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d158, i32 0, i32 1) }, { i64, ptr } %t30)
  store { i64, ptr } %t33, ptr %l10
  br label %bb3
bb3:
  %t34 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t34, 0
  %t36 = extractvalue { i64, ptr } %t34, 1
  %t37 = mul i64 %t35, 1
  %t38 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t37)
  call void @llvm.memcpy.p0.p0.i64(ptr %t38, ptr %t36, i64 %t37, i1 false)
  %t39 = insertvalue { i64, ptr } undef, i64 %t35, 0
  %t40 = insertvalue { i64, ptr } %t39, ptr %t38, 1
  call void @compiler_2fbuild_2esayln(ptr %s0, { i64, ptr } %t40)
  br label %bb4
bb4:
  call void @__olang_scope_close(ptr %s0)
  store i32 1, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i32, { i64, ptr } } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2ewant(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %v6, ptr %a0, ptr %a1, { i64, ptr } %a2, i32 %a3, { i64, ptr } %a4, ptr %a5, { i64, ptr } %a6, i64 %a7) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %lp9 = alloca ptr
  %l10 = alloca i1
  %lp12 = alloca ptr
  %l13 = alloca { i64, ptr }
  %lp15 = alloca ptr
  %lp18 = alloca ptr
  %l19 = alloca ptr
  %l20 = alloca ptr
  %l21 = alloca i64
  %l25 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l27 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l30 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l31 = alloca ptr
  %l32 = alloca { i64, ptr }
  %l33 = alloca i32
  %l35 = alloca i1
  %l37 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l43 = alloca { i64, ptr }
  %l46 = alloca i1
  %l50 = alloca { i64, ptr }
  %l51 = alloca i64
  %l52 = alloca { i64, ptr }
  %l56 = alloca i1
  %l57 = alloca i1
  %l59 = alloca i1
  %l60 = alloca i1
  %l63 = alloca i1
  %l65 = alloca { i64, ptr }
  %l67 = alloca i1
  %l68 = alloca { i64, ptr }
  %l69 = alloca i64
  %l70 = alloca { i64, ptr }
  %l73 = alloca i1
  %l77 = alloca { i64, ptr }
  %l79 = alloca { i64, ptr }
  %l83 = alloca i64
  %l85 = alloca { i64, ptr }
  %l87 = alloca i64
  %l88 = alloca i64
  %l94 = alloca { i64, ptr }
  %l96 = alloca { i64, ptr }
  %l98 = alloca i32
  %l100 = alloca i1
  %l105 = alloca i1
  %l107 = alloca { i64, ptr }
  %l109 = alloca i1
  %l111 = alloca { i64, ptr }
  %l115 = alloca i64
  %l117 = alloca i64
  %l118 = alloca i64
  %l126 = alloca i32
  %l128 = alloca i1
  %l132 = alloca i1
  %l133 = alloca { i64, ptr }
  %l134 = alloca i64
  %l135 = alloca { i64, ptr }
  %l138 = alloca i1
  %l141 = alloca i1
  %l146 = alloca { i64, ptr }
  %l147 = alloca i64
  %l148 = alloca { i64, ptr }
  %l151 = alloca i64
  %l152 = alloca i64
  %l159 = alloca { i64, ptr }
  %l160 = alloca { i64, ptr }
  %l162 = alloca { i64, ptr }
  %l164 = alloca { i64, ptr }
  %l167 = alloca i1
  %l169 = alloca i1
  %l174 = alloca i1
  %l176 = alloca { i64, ptr }
  %l178 = alloca i64
  %l180 = alloca i64
  %l181 = alloca { i64, ptr }
  %l184 = alloca i64
  %l185 = alloca i64
  %l189 = alloca { i64, ptr }
  %l190 = alloca i32
  %l193 = alloca i1
  %l194 = alloca i1
  %l197 = alloca { i64, ptr }
  %l198 = alloca i1
  %l200 = alloca { i64, ptr }
  %l204 = alloca { i64, ptr }
  %l209 = alloca i32
  %l211 = alloca i1
  %l214 = alloca { i64, ptr }
  %l215 = alloca %"compiler/diagmsg:Msg"
  %l220 = alloca i1
  %l223 = alloca i32
  %l225 = alloca i1
  %l228 = alloca ptr
  %l229 = alloca { i64, [3 x i64] }
  %l231 = alloca %"compiler/diagmsg:Msg"
  %l233 = alloca { i64, ptr }
  %l234 = alloca i32
  %l236 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l242 = alloca i64
  %l244 = alloca i64
  %l249 = alloca { i64, ptr }
  %l261 = alloca ptr
  %l262 = alloca i64
  %l268 = alloca ptr
  %l269 = alloca i64
  %l272 = alloca { i64, ptr }
  %l277 = alloca ptr
  %l278 = alloca i64
  %l281 = alloca { i64, ptr }
  %l284 = alloca { i64, ptr }
  %l300 = alloca { i64, ptr }
  %l301 = alloca i64
  %l302 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  %t668 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store i32 %a3, ptr %l3
  store { i64, ptr } %a4, ptr %l4
  store ptr %a5, ptr %l5
  store { i64, ptr } %a6, ptr %l6
  store i64 %a7, ptr %l7
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i32, ptr %l3, !range !{i32 0, i32 5}
  %t3 = trunc i64 4 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eDataFlags(ptr %v0, ptr %v1, ptr %t6)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %l27
  br label %bb3
bb2:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t13 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eCompileFlags(ptr %v0, ptr %v3, ptr %v1, ptr %t9, { i64, ptr } %t10)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t13, ptr %l30
  br label %bb4
bb3:
  %t14 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l25
  br label %bb5
bb4:
  %t15 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l30
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %l25
  br label %bb5
bb5:
  %t16 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l25
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t16, ptr %l8
  %t17 = load ptr, ptr %l0, !tbaa !29
  store ptr %t17, ptr %l31, !tbaa !29
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %l32, !tbaa !27
  %t19 = load i32, ptr %l3, !range !{i32 0, i32 5}
  store i32 %t19, ptr %l33
  %t20 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t22 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v5, ptr %s0, { i64, ptr } %t20, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d159, i32 0, i32 1) })
  store i1 %t22, ptr %l35
  br label %bb6
bb6:
  %t23 = load i1, ptr %l35, !tbaa !21
  %t24 = xor i1 %t23, true
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t26 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t26, ptr %l37, !tbaa !27
  br label %bb10
bb8:
  %t28 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t30 = call { i64, ptr } @compiler_2fbuild_2eIrHash(ptr %v3, ptr %v5, { i64, ptr } %t28)
  store { i64, ptr } %t30, ptr %l40
  br label %bb9
bb9:
  %t31 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t31, 0
  %t33 = extractvalue { i64, ptr } %t31, 1
  %t34 = mul i64 %t32, 1
  %t35 = call ptr @__olang_scope_alloc(ptr %v5, i64 %t34)
  call void @llvm.memcpy.p0.p0.i64(ptr %t35, ptr %t33, i64 %t34, i1 false)
  %t36 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t35, 1
  store { i64, ptr } %t37, ptr %l37, !tbaa !27
  br label %bb10
bb10:
  %t39 = load ptr, ptr %l31, !tbaa !29
  %t40 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t41 = load i32, ptr %l33, !range !{i32 0, i32 5}
  %t42 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t44 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eObjectPath(ptr %v0, ptr %v2, ptr %v5, ptr %v1, ptr %v6, ptr %t39, { i64, ptr } %t40, i32 %t41, { i64, ptr } %t42, ptr %l8)
  store { i64, ptr } %t44, ptr %l43
  br label %bb11
bb11:
  %t45 = call ptr @__olang_scope_alloc_a(ptr %v6, i64 16, i64 8)
  store ptr %t45, ptr %lp9
  %t46 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t47 = load ptr, ptr %lp9
  store { i64, ptr } %t46, ptr %t47, !tbaa !27
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/build:Config", ptr %t48, i32 0, i32 14
  %t51 = load i1, ptr %t50, !tbaa !21
  br i1 %t51, label %bb12, label %bb13
bb12:
  %t53 = load i32, ptr %l3, !range !{i32 0, i32 5}
  %t55 = trunc i64 4 to i32
  %t56 = icmp eq i32 %t53, %t55
  %t58 = xor i1 %t56, true
  store i1 %t58, ptr %l46, !tbaa !21
  br label %bb14
bb13:
  store i1 false, ptr %l46, !tbaa !21
  br label %bb14
bb14:
  %t60 = load i1, ptr %l46, !tbaa !21
  store i1 %t60, ptr %l10, !tbaa !21
  %t61 = load ptr, ptr %lp9
  %t62 = load { i64, ptr }, ptr %t61, !tbaa !27
  store { i64, ptr } %t62, ptr %l50, !tbaa !27
  %t63 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t64 = extractvalue { i64, ptr } %t63, 0
  store i64 %t64, ptr %l51, !tbaa !24
  %t65 = load i64, ptr %l51, !tbaa !24
  %t66 = mul i64 %t65, 1
  %t67 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t66)
  %t68 = insertvalue { i64, ptr } undef, i64 %t65, 0
  %t69 = insertvalue { i64, ptr } %t68, ptr %t67, 1
  store { i64, ptr } %t69, ptr %l52, !tbaa !27
  %t70 = getelementptr { i64, ptr }, ptr %l52, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !27
  %t72 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = load i64, ptr %l51, !tbaa !24
  %t75 = mul i64 %t74, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t71, ptr %t73, i64 %t75, i1 false)
  %t76 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t77 = load ptr, ptr %l1, !tbaa !29
  %t79 = getelementptr %"compiler/build:compiles", ptr %t77, i32 0, i32 2
  %t83 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H0127831368543eff3b7740d7d3240080(ptr %v1, ptr %s0, ptr %t79, { i64, ptr } %t76)
  store i1 %t83, ptr %l56
  br label %bb15
bb15:
  %t84 = load i1, ptr %l56, !tbaa !21
  br i1 %t84, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l57, !tbaa !21
  br label %bb27
bb17:
  %t85 = load ptr, ptr %lp9
  %t86 = load { i64, ptr }, ptr %t85, !tbaa !27
  %t88 = call i1 @std_2fos_2eExists(ptr %v6, { i64, ptr } %t86)
  store i1 %t88, ptr %l59
  br label %bb18
bb18:
  %t89 = load i1, ptr %l59, !tbaa !21
  br i1 %t89, label %bb19, label %bb20
bb19:
  %t90 = load i1, ptr %l10, !tbaa !21
  %t92 = xor i1 %t90, true
  br i1 %t92, label %bb21, label %bb22
bb20:
  store i1 false, ptr %l60, !tbaa !21
  br label %bb26
bb21:
  store i1 true, ptr %l63, !tbaa !21
  br label %bb25
bb22:
  %t94 = load ptr, ptr %lp9
  %t95 = load { i64, ptr }, ptr %t94, !tbaa !27
  %t97 = call { i64, ptr } @compiler_2fbuild_2eRemarksOf(ptr %v6, ptr %s0, { i64, ptr } %t95)
  store { i64, ptr } %t97, ptr %l65
  br label %bb23
bb23:
  %t98 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t99 = extractvalue { i64, ptr } %t98, 0
  %t100 = extractvalue { i64, ptr } %t98, 1
  %t101 = mul i64 %t99, 1
  %t102 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t101)
  call void @llvm.memcpy.p0.p0.i64(ptr %t102, ptr %t100, i64 %t101, i1 false)
  %t103 = insertvalue { i64, ptr } undef, i64 %t99, 0
  %t104 = insertvalue { i64, ptr } %t103, ptr %t102, 1
  %t106 = call i1 @std_2fos_2eExists(ptr %s0, { i64, ptr } %t104)
  store i1 %t106, ptr %l67
  br label %bb24
bb24:
  %t107 = load i1, ptr %l67, !tbaa !21
  store i1 %t107, ptr %l63, !tbaa !21
  br label %bb25
bb25:
  %t108 = load i1, ptr %l63, !tbaa !21
  store i1 %t108, ptr %l60, !tbaa !21
  br label %bb26
bb26:
  %t109 = load i1, ptr %l60, !tbaa !21
  store i1 %t109, ptr %l57, !tbaa !21
  br label %bb27
bb27:
  %t110 = load i1, ptr %l57, !tbaa !21
  br i1 %t110, label %bb28, label %bb29
bb28:
  %t111 = load ptr, ptr %lp9
  %t112 = load { i64, ptr }, ptr %t111, !tbaa !27
  store { i64, ptr } %t112, ptr %l68, !tbaa !27
  %t113 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t114 = extractvalue { i64, ptr } %t113, 0
  store i64 %t114, ptr %l69, !tbaa !24
  %t115 = load i64, ptr %l69, !tbaa !24
  %t116 = mul i64 %t115, 1
  %t117 = call ptr @__olang_scope_alloc(ptr %v6, i64 %t116)
  %t118 = insertvalue { i64, ptr } undef, i64 %t115, 0
  %t119 = insertvalue { i64, ptr } %t118, ptr %t117, 1
  store { i64, ptr } %t119, ptr %l70, !tbaa !27
  %t120 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t121 = load ptr, ptr %t120, !tbaa !27
  %t122 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t123 = load ptr, ptr %t122, !tbaa !27
  %t124 = load i64, ptr %l69, !tbaa !24
  %t125 = mul i64 %t124, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t121, ptr %t123, i64 %t125, i1 false)
  %t126 = load { i64, ptr }, ptr %l70, !tbaa !27
  store { i64, ptr } %t126, ptr %l68, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t127 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t128 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t127, 1
  store { i32, { i64, ptr } } %t128, ptr %rv
  br label %ret
bb29:
  br label %bb30
bb30:
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t131 = getelementptr %"compiler/build:Config", ptr %t129, i32 0, i32 28
  %t132 = load { i64, ptr }, ptr %t131, !tbaa !27
  %t134 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t132, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d160, i32 0, i32 1) })
  store i1 %t134, ptr %l73
  br label %bb31
bb31:
  %t135 = load i1, ptr %l73, !tbaa !21
  %t136 = xor i1 %t135, true
  br i1 %t136, label %bb32, label %bb33
bb32:
  store %olang.scope zeroinitializer, ptr %s2
  %t138 = load i1, ptr %l10, !tbaa !21
  br i1 %t138, label %bb34, label %bb35
bb33:
  br label %bb76
bb34:
  store %olang.scope zeroinitializer, ptr %s3
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t142 = getelementptr %"compiler/build:Config", ptr %t140, i32 0, i32 28
  %t143 = load { i64, ptr }, ptr %t142, !tbaa !27
  store { i64, ptr } %t143, ptr %l77, !tbaa !27
  %t144 = load ptr, ptr %lp9
  %t145 = load { i64, ptr }, ptr %t144, !tbaa !27
  %t147 = call { i64, ptr } @compiler_2fbuild_2eRemarksOf(ptr %v6, ptr %s3, { i64, ptr } %t145)
  store { i64, ptr } %t147, ptr %l79
  br label %bb36
bb35:
  br label %bb51
bb36:
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t150 = getelementptr %"compiler/build:Config", ptr %t148, i32 0, i32 0
  %t151 = load { i64, ptr }, ptr %t150, !tbaa !27
  %t153 = extractvalue { i64, ptr } %t151, 0
  %t155 = add i64 %t153, 1
  store i64 %t155, ptr %l83, !tbaa !24
  %t156 = load ptr, ptr %lp9
  %t157 = load { i64, ptr }, ptr %t156, !tbaa !27
  %t159 = call { i64, ptr } @compiler_2fbuild_2eRemarksOf(ptr %v6, ptr %s3, { i64, ptr } %t157)
  store { i64, ptr } %t159, ptr %l85
  br label %bb37
bb37:
  %t160 = load { i64, ptr }, ptr %l85, !tbaa !27
  %t162 = extractvalue { i64, ptr } %t160, 0
  store i64 %t162, ptr %l87, !tbaa !24
  %t163 = load { i64, ptr }, ptr %l79, !tbaa !27
  %t164 = extractvalue { i64, ptr } %t163, 0
  store i64 %t164, ptr %l88, !tbaa !24
  %t165 = load i64, ptr %l83, !tbaa !24
  %t166 = icmp sge i64 %t165, 0
  br i1 %t166, label %bb38, label %bb39
bb38:
  %t168 = load i64, ptr %l83, !tbaa !24
  %t169 = load i64, ptr %l87, !tbaa !24
  %t170 = icmp sle i64 %t168, %t169
  br i1 %t170, label %bb40, label %bb41
bb39:
  call void @__olang_check_failed(ptr @olang_loc_81dfa638548de3d7_ab0731b6a5acba3)
  unreachable
bb40:
  %t172 = load i64, ptr %l87, !tbaa !24
  %t173 = load i64, ptr %l88, !tbaa !24
  %t174 = icmp sle i64 %t172, %t173
  br i1 %t174, label %bb42, label %bb43
bb41:
  call void @__olang_check_failed(ptr @olang_loc_81dfa638548de3d7_ab0731b6a5acba3)
  unreachable
bb42:
  %t176 = getelementptr { i64, ptr }, ptr %l79, i32 0, i32 1
  %t177 = load ptr, ptr %t176, !tbaa !27
  %t178 = load i64, ptr %l83, !tbaa !24
  %t179 = load i64, ptr %l87, !tbaa !24
  %t180 = getelementptr i8, ptr %t177, i64 %t178
  %t181 = sub i64 %t179, %t178
  %t182 = insertvalue { i64, ptr } undef, i64 %t181, 0
  %t183 = insertvalue { i64, ptr } %t182, ptr %t180, 1
  %t184 = load { i64, ptr }, ptr %l77, !tbaa !27
  %t185 = extractvalue { i64, ptr } %t184, 1
  %t186 = extractvalue { i64, ptr } %t184, 0
  %t187 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d161, i32 0, i32 1) }, 1
  %t188 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d161, i32 0, i32 1) }, 0
  %t189 = add i64 %t186, %t188
  %t191 = extractvalue { i64, ptr } %t183, 1
  %t192 = extractvalue { i64, ptr } %t183, 0
  %t193 = add i64 %t189, %t192
  %t194 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t193)
  call void @olang_textcopy(ptr %t194, ptr %t185, i64 %t186)
  %t195 = getelementptr i8, ptr %t194, i64 %t186
  call void @olang_textcopy(ptr %t195, ptr %t187, i64 %t188)
  %t196 = getelementptr i8, ptr %t195, i64 %t188
  call void @olang_textcopy(ptr %t196, ptr %t191, i64 %t192)
  %t197 = insertvalue { i64, ptr } undef, i64 %t193, 0
  %t198 = insertvalue { i64, ptr } %t197, ptr %t194, 1
  %t200 = extractvalue { i64, ptr } %t198, 0
  %t201 = extractvalue { i64, ptr } %t198, 1
  %t202 = mul i64 %t200, 1
  %t203 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t202)
  call void @llvm.memcpy.p0.p0.i64(ptr %t203, ptr %t201, i64 %t202, i1 false)
  %t204 = insertvalue { i64, ptr } undef, i64 %t200, 0
  %t205 = insertvalue { i64, ptr } %t204, ptr %t203, 1
  store { i64, ptr } %t205, ptr %l94, !tbaa !27
  %t206 = load ptr, ptr %lp9
  %t207 = load { i64, ptr }, ptr %t206, !tbaa !27
  %t209 = call { i64, ptr } @compiler_2fbuild_2eRemarksOf(ptr %v6, ptr %s3, { i64, ptr } %t207)
  store { i64, ptr } %t209, ptr %l96
  br label %bb44
bb43:
  call void @__olang_check_failed(ptr @olang_loc_81dfa638548de3d7_ab0731b6a5acba3)
  unreachable
bb44:
  %t210 = load { i64, ptr }, ptr %l96, !tbaa !27
  %t211 = extractvalue { i64, ptr } %t210, 0
  %t212 = extractvalue { i64, ptr } %t210, 1
  %t213 = mul i64 %t211, 1
  %t214 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t213)
  call void @llvm.memcpy.p0.p0.i64(ptr %t214, ptr %t212, i64 %t213, i1 false)
  %t215 = insertvalue { i64, ptr } undef, i64 %t211, 0
  %t216 = insertvalue { i64, ptr } %t215, ptr %t214, 1
  %t217 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t219 = call i32 @std_2fos_2eLink(ptr %s3, ptr %s3, { i64, ptr } %t217, { i64, ptr } %t216)
  store i32 %t219, ptr %l98
  %t220 = icmp ne i32 %t219, 0
  br i1 %t220, label %bb46, label %ok.221, !prof !99
ok.221:
  br label %bb45
bb45:
  br label %bb50
bb46:
  %t222 = load i32, ptr %l98, !tbaa !23
  %t223 = ashr i32 %t222, 16
  %t225 = icmp eq i32 %t223, 1
  store i1 %t225, ptr %l100, !tbaa !21
  %t226 = load i32, ptr %l98, !tbaa !23
  %t227 = ashr i32 %t226, 16
  %t229 = icmp eq i32 %t227, 1
  br i1 %t229, label %bb47, label %bb48
bb47:
  call void @__olang_errpay_pop()
  br label %bb48
bb48:
  br label %bb49
bb49:
  br label %bb50
bb50:
  call void @__olang_scope_close(ptr %s3)
  br label %bb51
bb51:
  %t231 = load i1, ptr %l10, !tbaa !21
  %t233 = xor i1 %t231, true
  br i1 %t233, label %bb52, label %bb53
bb52:
  store i1 true, ptr %l105, !tbaa !21
  br label %bb56
bb53:
  %t235 = load ptr, ptr %lp9
  %t236 = load { i64, ptr }, ptr %t235, !tbaa !27
  %t238 = call { i64, ptr } @compiler_2fbuild_2eRemarksOf(ptr %v6, ptr %s2, { i64, ptr } %t236)
  store { i64, ptr } %t238, ptr %l107
  br label %bb54
bb54:
  %t239 = load { i64, ptr }, ptr %l107, !tbaa !27
  %t240 = extractvalue { i64, ptr } %t239, 0
  %t241 = extractvalue { i64, ptr } %t239, 1
  %t242 = mul i64 %t240, 1
  %t243 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t242)
  call void @llvm.memcpy.p0.p0.i64(ptr %t243, ptr %t241, i64 %t242, i1 false)
  %t244 = insertvalue { i64, ptr } undef, i64 %t240, 0
  %t245 = insertvalue { i64, ptr } %t244, ptr %t243, 1
  %t247 = call i1 @std_2fos_2eExists(ptr %s2, { i64, ptr } %t245)
  store i1 %t247, ptr %l109
  br label %bb55
bb55:
  %t248 = load i1, ptr %l109, !tbaa !21
  store i1 %t248, ptr %l105, !tbaa !21
  br label %bb56
bb56:
  %t249 = load i1, ptr %l105, !tbaa !21
  br i1 %t249, label %bb57, label %bb58
bb57:
  store %olang.scope zeroinitializer, ptr %s6
  %t250 = load ptr, ptr %l0, !tbaa !29
  %t252 = getelementptr %"compiler/build:Config", ptr %t250, i32 0, i32 28
  %t253 = load { i64, ptr }, ptr %t252, !tbaa !27
  store { i64, ptr } %t253, ptr %l111, !tbaa !27
  %t254 = load ptr, ptr %l0, !tbaa !29
  %t256 = getelementptr %"compiler/build:Config", ptr %t254, i32 0, i32 0
  %t257 = load { i64, ptr }, ptr %t256, !tbaa !27
  %t259 = extractvalue { i64, ptr } %t257, 0
  %t261 = add i64 %t259, 1
  store i64 %t261, ptr %l115, !tbaa !24
  %t262 = load ptr, ptr %lp9
  %t263 = load { i64, ptr }, ptr %t262, !tbaa !27
  %t265 = extractvalue { i64, ptr } %t263, 0
  store i64 %t265, ptr %l117, !tbaa !24
  %t266 = load ptr, ptr %lp9
  %t267 = load { i64, ptr }, ptr %t266, !tbaa !27
  %t268 = extractvalue { i64, ptr } %t267, 0
  store i64 %t268, ptr %l118, !tbaa !24
  %t269 = load i64, ptr %l115, !tbaa !24
  %t270 = icmp sge i64 %t269, 0
  br i1 %t270, label %bb59, label %bb60
bb58:
  br label %bb71
bb59:
  %t272 = load i64, ptr %l115, !tbaa !24
  %t273 = load i64, ptr %l117, !tbaa !24
  %t274 = icmp sle i64 %t272, %t273
  br i1 %t274, label %bb61, label %bb62
bb60:
  call void @__olang_check_failed(ptr @olang_loc_64cef890f5e30dfa_ab05d47f854753c6)
  unreachable
bb61:
  %t276 = load i64, ptr %l117, !tbaa !24
  %t277 = load i64, ptr %l118, !tbaa !24
  %t278 = icmp sle i64 %t276, %t277
  br i1 %t278, label %bb63, label %bb64
bb62:
  call void @__olang_check_failed(ptr @olang_loc_64cef890f5e30dfa_ab05d47f854753c6)
  unreachable
bb63:
  %t280 = load ptr, ptr %lp9
  %t281 = getelementptr { i64, ptr }, ptr %t280, i32 0, i32 1
  %t282 = load ptr, ptr %t281, !tbaa !27
  %t283 = load i64, ptr %l115, !tbaa !24
  %t284 = load i64, ptr %l117, !tbaa !24
  %t285 = getelementptr i8, ptr %t282, i64 %t283
  %t286 = sub i64 %t284, %t283
  %t287 = insertvalue { i64, ptr } undef, i64 %t286, 0
  %t288 = insertvalue { i64, ptr } %t287, ptr %t285, 1
  %t289 = load { i64, ptr }, ptr %l111, !tbaa !27
  %t290 = extractvalue { i64, ptr } %t289, 1
  %t291 = extractvalue { i64, ptr } %t289, 0
  %t292 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d162, i32 0, i32 1) }, 1
  %t293 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d162, i32 0, i32 1) }, 0
  %t294 = add i64 %t291, %t293
  %t296 = extractvalue { i64, ptr } %t288, 1
  %t297 = extractvalue { i64, ptr } %t288, 0
  %t298 = add i64 %t294, %t297
  %t299 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t298)
  call void @olang_textcopy(ptr %t299, ptr %t290, i64 %t291)
  %t300 = getelementptr i8, ptr %t299, i64 %t291
  call void @olang_textcopy(ptr %t300, ptr %t292, i64 %t293)
  %t301 = getelementptr i8, ptr %t300, i64 %t293
  call void @olang_textcopy(ptr %t301, ptr %t296, i64 %t297)
  %t302 = insertvalue { i64, ptr } undef, i64 %t298, 0
  %t303 = insertvalue { i64, ptr } %t302, ptr %t299, 1
  %t305 = extractvalue { i64, ptr } %t303, 0
  %t306 = extractvalue { i64, ptr } %t303, 1
  %t307 = mul i64 %t305, 1
  %t308 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t307)
  call void @llvm.memcpy.p0.p0.i64(ptr %t308, ptr %t306, i64 %t307, i1 false)
  %t309 = insertvalue { i64, ptr } undef, i64 %t305, 0
  %t310 = insertvalue { i64, ptr } %t309, ptr %t308, 1
  %t311 = load ptr, ptr %lp9
  %t312 = load { i64, ptr }, ptr %t311, !tbaa !27
  %t315 = call i32 @std_2fos_2eLink(ptr %s6, ptr %v6, { i64, ptr } %t310, { i64, ptr } %t312)
  store i32 %t315, ptr %l126
  %t316 = icmp ne i32 %t315, 0
  br i1 %t316, label %bb66, label %ok.317, !prof !99
ok.317:
  br label %bb65
bb64:
  call void @__olang_check_failed(ptr @olang_loc_64cef890f5e30dfa_ab05d47f854753c6)
  unreachable
bb65:
  br label %bb70
bb66:
  %t318 = load i32, ptr %l126, !tbaa !23
  %t319 = ashr i32 %t318, 16
  %t321 = icmp eq i32 %t319, 1
  store i1 %t321, ptr %l128, !tbaa !21
  %t322 = load i32, ptr %l126, !tbaa !23
  %t323 = ashr i32 %t322, 16
  %t325 = icmp eq i32 %t323, 1
  br i1 %t325, label %bb67, label %bb68
bb67:
  call void @__olang_errpay_pop()
  br label %bb68
bb68:
  br label %bb69
bb69:
  br label %bb70
bb70:
  call void @__olang_scope_close(ptr %s6)
  br label %bb71
bb71:
  %t327 = load ptr, ptr %lp9
  %t328 = load { i64, ptr }, ptr %t327, !tbaa !27
  %t330 = call i1 @std_2fos_2eExists(ptr %v6, { i64, ptr } %t328)
  store i1 %t330, ptr %l132
  br label %bb72
bb72:
  %t331 = load i1, ptr %l132, !tbaa !21
  br i1 %t331, label %bb73, label %bb74
bb73:
  %t332 = load ptr, ptr %lp9
  %t333 = load { i64, ptr }, ptr %t332, !tbaa !27
  store { i64, ptr } %t333, ptr %l133, !tbaa !27
  %t334 = load { i64, ptr }, ptr %l133, !tbaa !27
  %t335 = extractvalue { i64, ptr } %t334, 0
  store i64 %t335, ptr %l134, !tbaa !24
  %t336 = load i64, ptr %l134, !tbaa !24
  %t337 = mul i64 %t336, 1
  %t338 = call ptr @__olang_scope_alloc(ptr %v6, i64 %t337)
  %t339 = insertvalue { i64, ptr } undef, i64 %t336, 0
  %t340 = insertvalue { i64, ptr } %t339, ptr %t338, 1
  store { i64, ptr } %t340, ptr %l135, !tbaa !27
  %t341 = getelementptr { i64, ptr }, ptr %l135, i32 0, i32 1
  %t342 = load ptr, ptr %t341, !tbaa !27
  %t343 = getelementptr { i64, ptr }, ptr %l133, i32 0, i32 1
  %t344 = load ptr, ptr %t343, !tbaa !27
  %t345 = load i64, ptr %l134, !tbaa !24
  %t346 = mul i64 %t345, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t342, ptr %t344, i64 %t346, i1 false)
  %t347 = load { i64, ptr }, ptr %l135, !tbaa !27
  store { i64, ptr } %t347, ptr %l133, !tbaa !27
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t348 = load { i64, ptr }, ptr %l133, !tbaa !27
  %t349 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t348, 1
  store { i32, { i64, ptr } } %t349, ptr %rv
  br label %ret
bb74:
  br label %bb75
bb75:
  call void @__olang_scope_close(ptr %s2)
  br label %bb76
bb76:
  %t350 = load i64, ptr %l7, !tbaa !24
  %t352 = icmp sge i64 %t350, 0
  br i1 %t352, label %bb77, label %bb78
bb77:
  %t354 = load ptr, ptr %l1, !tbaa !29
  %t355 = load ptr, ptr %lp9
  %t356 = load { i64, ptr }, ptr %t355, !tbaa !27
  %t359 = call i1 @compiler_2fbuild_2ecompiler_2fbuild_3acompiles_2eclaim(ptr %v1, ptr %v6, ptr %t354, { i64, ptr } %t356)
  store i1 %t359, ptr %l141
  br label %bb79
bb78:
  store i1 false, ptr %l138, !tbaa !21
  br label %bb80
bb79:
  %t360 = load i1, ptr %l141, !tbaa !21
  %t361 = xor i1 %t360, true
  store i1 %t361, ptr %l138, !tbaa !21
  br label %bb80
bb80:
  %t363 = load i1, ptr %l138, !tbaa !21
  br i1 %t363, label %bb81, label %bb82
bb81:
  %t364 = load ptr, ptr %l1, !tbaa !29
  %t366 = getelementptr %"compiler/build:compiles", ptr %t364, i32 0, i32 8
  %t367 = load i64, ptr %l7, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t366, i64 %t367)
  br label %bb83
bb82:
  br label %bb84
bb83:
  %t370 = load ptr, ptr %lp9
  %t371 = load { i64, ptr }, ptr %t370, !tbaa !27
  store { i64, ptr } %t371, ptr %l146, !tbaa !27
  %t372 = load { i64, ptr }, ptr %l146, !tbaa !27
  %t373 = extractvalue { i64, ptr } %t372, 0
  store i64 %t373, ptr %l147, !tbaa !24
  %t374 = load i64, ptr %l147, !tbaa !24
  %t375 = mul i64 %t374, 1
  %t376 = call ptr @__olang_scope_alloc(ptr %v6, i64 %t375)
  %t377 = insertvalue { i64, ptr } undef, i64 %t374, 0
  %t378 = insertvalue { i64, ptr } %t377, ptr %t376, 1
  store { i64, ptr } %t378, ptr %l148, !tbaa !27
  %t379 = getelementptr { i64, ptr }, ptr %l148, i32 0, i32 1
  %t380 = load ptr, ptr %t379, !tbaa !27
  %t381 = getelementptr { i64, ptr }, ptr %l146, i32 0, i32 1
  %t382 = load ptr, ptr %t381, !tbaa !27
  %t383 = load i64, ptr %l147, !tbaa !24
  %t384 = mul i64 %t383, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t380, ptr %t382, i64 %t384, i1 false)
  %t385 = load { i64, ptr }, ptr %l148, !tbaa !27
  store { i64, ptr } %t385, ptr %l146, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t386 = load { i64, ptr }, ptr %l146, !tbaa !27
  %t387 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t386, 1
  store { i32, { i64, ptr } } %t387, ptr %rv
  br label %ret
bb84:
  %t388 = load ptr, ptr %lp9
  %t389 = load { i64, ptr }, ptr %t388, !tbaa !27
  %t391 = extractvalue { i64, ptr } %t389, 0
  %t393 = sub i64 %t391, 2
  store i64 %t393, ptr %l151, !tbaa !24
  %t394 = load ptr, ptr %lp9
  %t395 = load { i64, ptr }, ptr %t394, !tbaa !27
  %t396 = extractvalue { i64, ptr } %t395, 0
  store i64 %t396, ptr %l152, !tbaa !24
  %t397 = icmp sge i64 0, 0
  br i1 %t397, label %bb85, label %bb86
bb85:
  %t399 = load i64, ptr %l151, !tbaa !24
  %t400 = icmp sle i64 0, %t399
  br i1 %t400, label %bb87, label %bb88
bb86:
  call void @__olang_check_failed(ptr @olang_loc_adf83e678ec27f19_e5a5f2a4f92e5ce5)
  unreachable
bb87:
  %t402 = load i64, ptr %l151, !tbaa !24
  %t403 = load i64, ptr %l152, !tbaa !24
  %t404 = icmp sle i64 %t402, %t403
  br i1 %t404, label %bb89, label %bb90
bb88:
  call void @__olang_check_failed(ptr @olang_loc_adf83e678ec27f19_e5a5f2a4f92e5ce5)
  unreachable
bb89:
  %t406 = load ptr, ptr %lp9
  %t407 = getelementptr { i64, ptr }, ptr %t406, i32 0, i32 1
  %t408 = load ptr, ptr %t407, !tbaa !27
  %t409 = load i64, ptr %l151, !tbaa !24
  %t410 = getelementptr i8, ptr %t408, i64 0
  %t411 = sub i64 %t409, 0
  %t412 = insertvalue { i64, ptr } undef, i64 %t411, 0
  %t413 = insertvalue { i64, ptr } %t412, ptr %t410, 1
  %t415 = extractvalue { i64, ptr } %t413, 1
  %t416 = extractvalue { i64, ptr } %t413, 0
  %t417 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d163, i32 0, i32 1) }, 1
  %t418 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d163, i32 0, i32 1) }, 0
  %t419 = add i64 %t416, %t418
  %t420 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t419)
  call void @olang_textcopy(ptr %t420, ptr %t415, i64 %t416)
  %t421 = getelementptr i8, ptr %t420, i64 %t416
  call void @olang_textcopy(ptr %t421, ptr %t417, i64 %t418)
  %t422 = insertvalue { i64, ptr } undef, i64 %t419, 0
  %t423 = insertvalue { i64, ptr } %t422, ptr %t420, 1
  %t424 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 16, i64 8)
  store ptr %t424, ptr %lp12
  %t426 = load ptr, ptr %lp12
  store { i64, ptr } %t423, ptr %t426, !tbaa !27
  %t427 = load ptr, ptr %l0, !tbaa !29
  %t429 = getelementptr %"compiler/build:Config", ptr %t427, i32 0, i32 0
  %t430 = load { i64, ptr }, ptr %t429, !tbaa !27
  store { i64, ptr } %t430, ptr %l159, !tbaa !27
  %t431 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t431, ptr %l160, !tbaa !27
  %t432 = load i32, ptr %l3, !range !{i32 0, i32 5}
  %t434 = call { i64, ptr } @compiler_2fbuild_2ekindSuffix(ptr %s0, i32 %t432)
  store { i64, ptr } %t434, ptr %l162
  br label %bb91
bb90:
  call void @__olang_check_failed(ptr @olang_loc_adf83e678ec27f19_e5a5f2a4f92e5ce5)
  unreachable
bb91:
  %t435 = load ptr, ptr %l0, !tbaa !29
  %t437 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2emodeSuffix(ptr %v0, ptr %s0, ptr %t435)
  store { i64, ptr } %t437, ptr %l164
  br label %bb92
bb92:
  %t438 = load { i64, ptr }, ptr %l159, !tbaa !27
  %t439 = extractvalue { i64, ptr } %t438, 1
  %t440 = extractvalue { i64, ptr } %t438, 0
  %t441 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d164, i32 0, i32 1) }, 1
  %t442 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d164, i32 0, i32 1) }, 0
  %t443 = add i64 %t440, %t442
  %t444 = load { i64, ptr }, ptr %l160, !tbaa !27
  %t445 = extractvalue { i64, ptr } %t444, 1
  %t446 = extractvalue { i64, ptr } %t444, 0
  %t447 = add i64 %t443, %t446
  %t448 = load { i64, ptr }, ptr %l162, !tbaa !27
  %t449 = extractvalue { i64, ptr } %t448, 1
  %t450 = extractvalue { i64, ptr } %t448, 0
  %t451 = add i64 %t447, %t450
  %t452 = load { i64, ptr }, ptr %l164, !tbaa !27
  %t453 = extractvalue { i64, ptr } %t452, 1
  %t454 = extractvalue { i64, ptr } %t452, 0
  %t455 = add i64 %t451, %t454
  %t456 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d165, i32 0, i32 1) }, 1
  %t457 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d165, i32 0, i32 1) }, 0
  %t458 = add i64 %t455, %t457
  %t459 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t458)
  call void @olang_textcopy(ptr %t459, ptr %t439, i64 %t440)
  %t460 = getelementptr i8, ptr %t459, i64 %t440
  call void @olang_textcopy(ptr %t460, ptr %t441, i64 %t442)
  %t461 = getelementptr i8, ptr %t460, i64 %t442
  call void @olang_textcopy(ptr %t461, ptr %t445, i64 %t446)
  %t462 = getelementptr i8, ptr %t461, i64 %t446
  call void @olang_textcopy(ptr %t462, ptr %t449, i64 %t450)
  %t463 = getelementptr i8, ptr %t462, i64 %t450
  call void @olang_textcopy(ptr %t463, ptr %t453, i64 %t454)
  %t464 = getelementptr i8, ptr %t463, i64 %t454
  call void @olang_textcopy(ptr %t464, ptr %t456, i64 %t457)
  %t465 = insertvalue { i64, ptr } undef, i64 %t458, 0
  %t466 = insertvalue { i64, ptr } %t465, ptr %t459, 1
  store { i64, ptr } %t466, ptr %l13, !tbaa !27
  %t468 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t470 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v2, ptr %s0, { i64, ptr } %t468, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d166, i32 0, i32 1) })
  store i1 %t470, ptr %l167
  br label %bb93
bb93:
  %t471 = load i1, ptr %l167, !tbaa !21
  %t472 = xor i1 %t471, true
  br i1 %t472, label %bb94, label %bb95
bb94:
  %t474 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t476 = load ptr, ptr %l1, !tbaa !29
  %t478 = getelementptr %"compiler/build:compiles", ptr %t476, i32 0, i32 3
  %t482 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H0127831368543eff3b7740d7d3240080(ptr %v1, ptr %s0, ptr %t478, { i64, ptr } %t474)
  store i1 %t482, ptr %l174
  br label %bb96
bb95:
  store i1 false, ptr %l169, !tbaa !21
  br label %bb97
bb96:
  %t483 = load i1, ptr %l174, !tbaa !21
  %t484 = xor i1 %t483, true
  store i1 %t484, ptr %l169, !tbaa !21
  br label %bb97
bb97:
  %t486 = load i1, ptr %l169, !tbaa !21
  br i1 %t486, label %bb98, label %bb99
bb98:
  %t487 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t487, ptr %l176, !tbaa !27
  %t488 = load ptr, ptr %lp12
  %t489 = load { i64, ptr }, ptr %t488, !tbaa !27
  %t490 = extractvalue { i64, ptr } %t489, 0
  %t491 = load { i64, ptr }, ptr %l176, !tbaa !27
  %t492 = extractvalue { i64, ptr } %t491, 0
  store i64 %t492, ptr %l178, !tbaa !24
  %t494 = load i64, ptr %l178, !tbaa !24
  %t495 = icmp eq i64 %t490, %t494
  br i1 %t495, label %bb100, label %bb101
bb99:
  br label %bb103
bb100:
  %t497 = load ptr, ptr %lp12
  %t498 = getelementptr { i64, ptr }, ptr %t497, i32 0, i32 1
  %t499 = load ptr, ptr %t498, !tbaa !27
  %t500 = getelementptr { i64, ptr }, ptr %l176, i32 0, i32 1
  %t501 = load ptr, ptr %t500, !tbaa !27
  %t502 = load i64, ptr %l178, !tbaa !24
  %t503 = mul i64 %t502, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t499, ptr %t501, i64 %t503, i1 false)
  br label %bb102
bb101:
  %t504 = load { i64, ptr }, ptr %l176, !tbaa !27
  %t505 = extractvalue { i64, ptr } %t504, 0
  store i64 %t505, ptr %l180, !tbaa !24
  %t506 = load i64, ptr %l180, !tbaa !24
  %t507 = mul i64 %t506, 1
  %t508 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t507)
  %t509 = insertvalue { i64, ptr } undef, i64 %t506, 0
  %t510 = insertvalue { i64, ptr } %t509, ptr %t508, 1
  store { i64, ptr } %t510, ptr %l181, !tbaa !27
  %t511 = getelementptr { i64, ptr }, ptr %l181, i32 0, i32 1
  %t512 = load ptr, ptr %t511, !tbaa !27
  %t513 = getelementptr { i64, ptr }, ptr %l176, i32 0, i32 1
  %t514 = load ptr, ptr %t513, !tbaa !27
  %t515 = load i64, ptr %l180, !tbaa !24
  %t516 = mul i64 %t515, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t512, ptr %t514, i64 %t516, i1 false)
  %t517 = load { i64, ptr }, ptr %l181, !tbaa !27
  %t518 = load ptr, ptr %lp12
  store { i64, ptr } %t517, ptr %t518, !tbaa !27
  br label %bb102
bb102:
  br label %bb103
bb103:
  %t519 = load ptr, ptr %lp12
  %t520 = load { i64, ptr }, ptr %t519, !tbaa !27
  %t522 = extractvalue { i64, ptr } %t520, 0
  %t524 = sub i64 %t522, 3
  store i64 %t524, ptr %l184, !tbaa !24
  %t525 = load ptr, ptr %lp12
  %t526 = load { i64, ptr }, ptr %t525, !tbaa !27
  %t527 = extractvalue { i64, ptr } %t526, 0
  store i64 %t527, ptr %l185, !tbaa !24
  %t528 = icmp sge i64 0, 0
  br i1 %t528, label %bb104, label %bb105
bb104:
  %t530 = load i64, ptr %l184, !tbaa !24
  %t531 = icmp sle i64 0, %t530
  br i1 %t531, label %bb106, label %bb107
bb105:
  call void @__olang_check_failed(ptr @olang_loc_d790d12bf07ae06c_96ebe5e6b28bd688)
  unreachable
bb106:
  %t533 = load i64, ptr %l184, !tbaa !24
  %t534 = load i64, ptr %l185, !tbaa !24
  %t535 = icmp sle i64 %t533, %t534
  br i1 %t535, label %bb108, label %bb109
bb107:
  call void @__olang_check_failed(ptr @olang_loc_d790d12bf07ae06c_96ebe5e6b28bd688)
  unreachable
bb108:
  %t537 = load ptr, ptr %lp12
  %t538 = getelementptr { i64, ptr }, ptr %t537, i32 0, i32 1
  %t539 = load ptr, ptr %t538, !tbaa !27
  %t540 = load i64, ptr %l184, !tbaa !24
  %t541 = getelementptr i8, ptr %t539, i64 0
  %t542 = sub i64 %t540, 0
  %t543 = insertvalue { i64, ptr } undef, i64 %t542, 0
  %t544 = insertvalue { i64, ptr } %t543, ptr %t541, 1
  store { i64, ptr } %t544, ptr %l189, !tbaa !27
  %t545 = call i32 @getpid()
  store i32 %t545, ptr %l190
  br label %bb110
bb109:
  call void @__olang_check_failed(ptr @olang_loc_d790d12bf07ae06c_96ebe5e6b28bd688)
  unreachable
bb110:
  %t546 = load { i64, ptr }, ptr %l189, !tbaa !27
  %t547 = extractvalue { i64, ptr } %t546, 1
  %t548 = extractvalue { i64, ptr } %t546, 0
  %t549 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d167, i32 0, i32 1) }, 1
  %t550 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d167, i32 0, i32 1) }, 0
  %t551 = add i64 %t548, %t550
  %t552 = load i32, ptr %l190, !tbaa !23
  %t553 = sext i32 %t552 to i64
  %t554 = call i64 @__olang_fmt_i64(ptr null, i64 %t553)
  %t555 = add i64 %t551, %t554
  %t556 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d168, i32 0, i32 1) }, 1
  %t557 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d168, i32 0, i32 1) }, 0
  %t558 = add i64 %t555, %t557
  %t559 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t558)
  call void @olang_textcopy(ptr %t559, ptr %t547, i64 %t548)
  %t560 = getelementptr i8, ptr %t559, i64 %t548
  call void @olang_textcopy(ptr %t560, ptr %t549, i64 %t550)
  %t561 = getelementptr i8, ptr %t560, i64 %t550
  %t562 = call i64 @__olang_fmt_i64(ptr %t561, i64 %t553)
  %t563 = getelementptr i8, ptr %t561, i64 %t554
  call void @olang_textcopy(ptr %t563, ptr %t556, i64 %t557)
  %t564 = insertvalue { i64, ptr } undef, i64 %t558, 0
  %t565 = insertvalue { i64, ptr } %t564, ptr %t559, 1
  %t566 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t566, ptr %lp15
  %t568 = load ptr, ptr %lp15
  store { i64, ptr } %t565, ptr %t568, !tbaa !27
  %t569 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t571 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v3, ptr %s0, { i64, ptr } %t569, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d169, i32 0, i32 1) })
  store i1 %t571, ptr %l193
  br label %bb111
bb111:
  %t572 = load i1, ptr %l193, !tbaa !21
  br i1 %t572, label %bb112, label %bb113
bb112:
  store i1 true, ptr %l194, !tbaa !21
  br label %bb115
bb113:
  %t573 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d170, i32 0, i32 1) }, ptr %l197, !tbaa !27
  %t576 = load { i64, ptr }, ptr %l197, !tbaa !27
  %t577 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v3, ptr %s0, { i64, ptr } %t573, { i64, ptr } %t576)
  store i1 %t577, ptr %l198
  br label %bb114
bb114:
  %t578 = load i1, ptr %l198, !tbaa !21
  store i1 %t578, ptr %l194, !tbaa !21
  br label %bb115
bb115:
  %t579 = load i1, ptr %l194, !tbaa !21
  br i1 %t579, label %bb116, label %bb117
bb116:
  %t582 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t584 = extractvalue { i64, ptr } %t582, 1
  %t585 = extractvalue { i64, ptr } %t582, 0
  %t586 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t585)
  call void @olang_textcopy(ptr %t586, ptr %t584, i64 %t585)
  %t587 = insertvalue { i64, ptr } undef, i64 %t585, 0
  %t588 = insertvalue { i64, ptr } %t587, ptr %t586, 1
  store { i64, ptr } %t588, ptr %l200, !tbaa !27
  br label %bb119
bb117:
  %t590 = load ptr, ptr %lp12
  %t591 = load { i64, ptr }, ptr %t590, !tbaa !27
  %t593 = call { i64, ptr } @std_2ffilepath_2eBase(ptr %v4, ptr %s0, { i64, ptr } %t591)
  store { i64, ptr } %t593, ptr %l204
  br label %bb118
bb118:
  %t594 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t595 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d171, i32 0, i32 1) }, 1
  %t596 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d171, i32 0, i32 1) }, 0
  %t597 = load { i64, ptr }, ptr %l204, !tbaa !27
  %t598 = extractvalue { i64, ptr } %t597, 1
  %t599 = extractvalue { i64, ptr } %t597, 0
  %t600 = add i64 %t596, %t599
  %t601 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d172, i32 0, i32 1) }, 1
  %t602 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d172, i32 0, i32 1) }, 0
  %t603 = add i64 %t600, %t602
  %t605 = extractvalue { i64, ptr } %t594, 1
  %t606 = extractvalue { i64, ptr } %t594, 0
  %t607 = add i64 %t603, %t606
  %t608 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t607)
  call void @olang_textcopy(ptr %t608, ptr %t595, i64 %t596)
  %t609 = getelementptr i8, ptr %t608, i64 %t596
  call void @olang_textcopy(ptr %t609, ptr %t598, i64 %t599)
  %t610 = getelementptr i8, ptr %t609, i64 %t599
  call void @olang_textcopy(ptr %t610, ptr %t601, i64 %t602)
  %t611 = getelementptr i8, ptr %t610, i64 %t602
  call void @olang_textcopy(ptr %t611, ptr %t605, i64 %t606)
  %t612 = insertvalue { i64, ptr } undef, i64 %t607, 0
  %t613 = insertvalue { i64, ptr } %t612, ptr %t608, 1
  store { i64, ptr } %t613, ptr %l200, !tbaa !27
  br label %bb119
bb119:
  %t615 = load { i64, ptr }, ptr %l200, !tbaa !27
  %t616 = load ptr, ptr %lp15
  %t617 = load { i64, ptr }, ptr %t616, !tbaa !27
  %t621 = call i32 @std_2fos_2eWriteFile(ptr %v1, ptr %s0, { i64, ptr } %t617, { i64, ptr } %t615)
  store i32 %t621, ptr %l209
  %t622 = icmp ne i32 %t621, 0
  br i1 %t622, label %bb121, label %ok.623, !prof !99
ok.623:
  br label %bb120
bb120:
  br label %bb127
bb121:
  %t624 = load i32, ptr %l209, !tbaa !23
  %t625 = ashr i32 %t624, 16
  %t627 = icmp eq i32 %t625, 1
  store i1 %t627, ptr %l211, !tbaa !21
  %t628 = load i32, ptr %l209, !tbaa !23
  %t629 = ashr i32 %t628, 16
  %t631 = icmp eq i32 %t629, 1
  br i1 %t631, label %bb122, label %bb123
bb122:
  call void @__olang_errpay_pop()
  br label %bb123
bb123:
  br label %bb124
bb124:
  %t633 = load ptr, ptr %lp12
  %t634 = load { i64, ptr }, ptr %t633, !tbaa !27
  store { i64, ptr } %t634, ptr %l214, !tbaa !27
  %t635 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCannotOpen(ptr %v4)
  store %"compiler/diagmsg:Msg" %t635, ptr %l215
  br label %bb125
bb125:
  %t636 = load ptr, ptr %l5, !tbaa !29
  %t637 = load { i64, ptr }, ptr %l214, !tbaa !27
  %t638 = load %"compiler/diagmsg:Msg", ptr %l215
  call void @compiler_2fbuild_2efileFatal(ptr %v4, ptr %v4, ptr %v4, { i64, ptr } %t637, %"compiler/diagmsg:Msg" %t638, ptr %t636)
  br label %bb126
bb126:
  call void @__olang_scope_close(ptr %s0)
  %t641 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t641, ptr %rv
  br label %ret
bb127:
  %t642 = load ptr, ptr %l0, !tbaa !29
  %t644 = getelementptr %"compiler/build:Config", ptr %t642, i32 0, i32 1
  %t645 = load { i64, ptr }, ptr %t644, !tbaa !27
  %t647 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t645, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d173, i32 0, i32 1) })
  store i1 %t647, ptr %l220
  br label %bb128
bb128:
  %t648 = load i1, ptr %l220, !tbaa !21
  br i1 %t648, label %bb129, label %bb130
bb129:
  %t649 = load ptr, ptr %lp15
  %t650 = load { i64, ptr }, ptr %t649, !tbaa !27
  %t651 = load ptr, ptr %lp12
  %t652 = load { i64, ptr }, ptr %t651, !tbaa !27
  %t655 = call i32 @std_2fos_2eRename(ptr %v1, ptr %v4, { i64, ptr } %t650, { i64, ptr } %t652)
  store i32 %t655, ptr %l223
  %t656 = icmp ne i32 %t655, 0
  br i1 %t656, label %bb132, label %ok.657, !prof !99
ok.657:
  br label %bb131
bb130:
  br label %bb139
bb131:
  br label %bb136
bb132:
  %t658 = load i32, ptr %l223, !tbaa !23
  %t659 = ashr i32 %t658, 16
  %t661 = icmp eq i32 %t659, 1
  store i1 %t661, ptr %l225, !tbaa !21
  %t662 = load i32, ptr %l223, !tbaa !23
  %t663 = ashr i32 %t662, 16
  %t665 = icmp eq i32 %t663, 1
  br i1 %t665, label %bb133, label %bb134
bb133:
  call void @__olang_errpay_pop()
  br label %bb134
bb134:
  br label %bb135
bb135:
  br label %bb136
bb136:
  %t667 = load ptr, ptr %l5, !tbaa !29
  store ptr %t667, ptr %l228, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t668
  %t669 = getelementptr { i64, [3 x i64] }, ptr %t668, i32 0, i32 0
  store i64 0, ptr %t669
  %t670 = load { i64, [3 x i64] }, ptr %t668
  store { i64, [3 x i64] } %t670, ptr %l229
  %t671 = load ptr, ptr %lp12
  %t672 = load { i64, ptr }, ptr %t671, !tbaa !27
  %t674 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoClang(ptr %v4, ptr %v4, { i64, ptr } %t672)
  store %"compiler/diagmsg:Msg" %t674, ptr %l231
  br label %bb137
bb137:
  %t675 = load ptr, ptr %l228, !tbaa !29
  %t676 = load { i64, [3 x i64] }, ptr %l229
  %t677 = load %"compiler/diagmsg:Msg", ptr %l231
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eFatal(ptr %v4, ptr %v4, ptr %t675, { i64, [3 x i64] } %t676, %"compiler/diagmsg:Msg" %t677)
  br label %bb138
bb138:
  call void @__olang_scope_close(ptr %s0)
  %t679 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t679, ptr %rv
  br label %ret
bb139:
  %t680 = load ptr, ptr %lp9
  %t681 = load { i64, ptr }, ptr %t680, !tbaa !27
  store { i64, ptr } %t681, ptr %l233, !tbaa !27
  %t682 = call i32 @getpid()
  store i32 %t682, ptr %l234
  br label %bb140
bb140:
  %t683 = load { i64, ptr }, ptr %l233, !tbaa !27
  %t684 = extractvalue { i64, ptr } %t683, 1
  %t685 = extractvalue { i64, ptr } %t683, 0
  %t686 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d174, i32 0, i32 1) }, 1
  %t687 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d174, i32 0, i32 1) }, 0
  %t688 = add i64 %t685, %t687
  %t689 = load i32, ptr %l234, !tbaa !23
  %t690 = sext i32 %t689 to i64
  %t691 = call i64 @__olang_fmt_i64(ptr null, i64 %t690)
  %t692 = add i64 %t688, %t691
  %t693 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d175, i32 0, i32 1) }, 1
  %t694 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d175, i32 0, i32 1) }, 0
  %t695 = add i64 %t692, %t694
  %t696 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t695)
  call void @olang_textcopy(ptr %t696, ptr %t684, i64 %t685)
  %t697 = getelementptr i8, ptr %t696, i64 %t685
  call void @olang_textcopy(ptr %t697, ptr %t686, i64 %t687)
  %t698 = getelementptr i8, ptr %t697, i64 %t687
  %t699 = call i64 @__olang_fmt_i64(ptr %t698, i64 %t690)
  %t700 = getelementptr i8, ptr %t698, i64 %t691
  call void @olang_textcopy(ptr %t700, ptr %t693, i64 %t694)
  %t701 = insertvalue { i64, ptr } undef, i64 %t695, 0
  %t702 = insertvalue { i64, ptr } %t701, ptr %t696, 1
  %t703 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t703, ptr %lp18
  %t705 = load ptr, ptr %lp18
  store { i64, ptr } %t702, ptr %t705, !tbaa !27
  %t706 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t706, ptr %l236
  br label %bb141
bb141:
  %t707 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l236
  %t708 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t707, ptr %t708
  store ptr %t708, ptr %l19, !tbaa !29
  %t710 = load ptr, ptr %l19, !tbaa !29
  %t711 = load ptr, ptr %l0, !tbaa !29
  %t713 = getelementptr %"compiler/build:Config", ptr %t711, i32 0, i32 1
  %t714 = load { i64, ptr }, ptr %t713, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v0, ptr %t710, { i64, ptr } %t714)
  br label %bb142
bb142:
  store ptr %l8, ptr %l20, !tbaa !29
  store i64 0, ptr %l21, !tbaa !24
  br label %bb143
bb143:
  %t718 = load i64, ptr %l21, !tbaa !24
  store i64 %t718, ptr %l242, !tbaa !24
  %t719 = load ptr, ptr %l20, !tbaa !29
  %t721 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v1, ptr %t719)
  store i64 %t721, ptr %l244
  br label %bb144
bb144:
  %t722 = load i64, ptr %l242, !tbaa !24
  %t723 = load i64, ptr %l244, !tbaa !24
  %t724 = icmp slt i64 %t722, %t723
  %t726 = xor i1 %t724, true
  br i1 %t726, label %bb145, label %bb146
bb145:
  br label %bb151
bb146:
  br label %bb147
bb147:
  %t728 = load ptr, ptr %l20, !tbaa !29
  %t729 = load i64, ptr %l21, !tbaa !24
  %t732 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t728, i64 %t729)
  store { i64, ptr } %t732, ptr %l249
  br label %bb148
bb148:
  %t733 = load { i64, ptr }, ptr %l249, !tbaa !27
  %t734 = load ptr, ptr %l19, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t734, { i64, ptr } %t733)
  br label %bb149
bb149:
  br label %bb150
bb150:
  %t738 = load i64, ptr %l21, !tbaa !24
  %t740 = add i64 %t738, 1
  store i64 %t740, ptr %l21, !tbaa !24
  br label %bb143
bb151:
  %t742 = load ptr, ptr %l19, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t742, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d176, i32 0, i32 1) })
  br label %bb152
bb152:
  %t744 = load ptr, ptr %l19, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t744, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d177, i32 0, i32 1) })
  br label %bb153
bb153:
  %t746 = load ptr, ptr %l19, !tbaa !29
  %t747 = load ptr, ptr %lp18
  %t748 = load { i64, ptr }, ptr %t747, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t746, { i64, ptr } %t748)
  br label %bb154
bb154:
  %t751 = load ptr, ptr %l19, !tbaa !29
  %t752 = load ptr, ptr %lp15
  %t753 = load { i64, ptr }, ptr %t752, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t751, { i64, ptr } %t753)
  br label %bb155
bb155:
  %t756 = load i1, ptr %l10, !tbaa !21
  br i1 %t756, label %bb156, label %bb157
bb156:
  %t758 = load ptr, ptr %l19, !tbaa !29
  store ptr %t758, ptr %l261, !tbaa !29
  %t759 = ptrtoint ptr %v1 to i64
  store i64 %t759, ptr %l262, !tbaa !24
  %t760 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t760, label %bb158, label %bb159
bb157:
  br label %bb161
bb158:
  %t762 = call ptr @__olang_region_make(ptr %v1)
  %t763 = ptrtoint ptr %t762 to i64
  store i64 %t763, ptr %l262, !tbaa !24
  br label %bb159
bb159:
  %t764 = load ptr, ptr %lp18
  %t765 = load { i64, ptr }, ptr %t764, !tbaa !27
  %t766 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d178, i32 0, i32 1) }, 1
  %t767 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d178, i32 0, i32 1) }, 0
  %t769 = extractvalue { i64, ptr } %t765, 1
  %t770 = extractvalue { i64, ptr } %t765, 0
  %t771 = add i64 %t767, %t770
  %t772 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d179, i32 0, i32 1) }, 1
  %t773 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d179, i32 0, i32 1) }, 0
  %t774 = add i64 %t771, %t773
  %t775 = load i64, ptr %l262
  %t776 = inttoptr i64 %t775 to ptr
  %t777 = call ptr @__olang_scope_alloc(ptr %t776, i64 %t774)
  call void @olang_textcopy(ptr %t777, ptr %t766, i64 %t767)
  %t778 = getelementptr i8, ptr %t777, i64 %t767
  call void @olang_textcopy(ptr %t778, ptr %t769, i64 %t770)
  %t779 = getelementptr i8, ptr %t778, i64 %t770
  call void @olang_textcopy(ptr %t779, ptr %t772, i64 %t773)
  %t780 = insertvalue { i64, ptr } undef, i64 %t774, 0
  %t781 = insertvalue { i64, ptr } %t780, ptr %t777, 1
  %t783 = load i64, ptr %l262
  %t784 = inttoptr i64 %t783 to ptr
  %t785 = extractvalue { i64, ptr } %t781, 0
  %t786 = extractvalue { i64, ptr } %t781, 1
  %t787 = mul i64 %t785, 1
  %t788 = call ptr @__olang_scope_alloc(ptr %t784, i64 %t787)
  call void @llvm.memcpy.p0.p0.i64(ptr %t788, ptr %t786, i64 %t787, i1 false)
  %t789 = insertvalue { i64, ptr } undef, i64 %t785, 0
  %t790 = insertvalue { i64, ptr } %t789, ptr %t788, 1
  %t791 = load ptr, ptr %l261, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t791, { i64, ptr } %t790)
  br label %bb160
bb160:
  br label %bb161
bb161:
  %t793 = load ptr, ptr %l1, !tbaa !29
  %t795 = getelementptr %"compiler/build:compiles", ptr %t793, i32 0, i32 0
  store ptr %t795, ptr %l268, !tbaa !29
  %t796 = ptrtoint ptr %v1 to i64
  store i64 %t796, ptr %l269, !tbaa !24
  %t797 = load i1, ptr @olang_2esole_2eArray_3cArray_3cstd_2fprelude_2ftext_3aString_26_3e_26_3e_2e_2d1
  br i1 %t797, label %bb162, label %bb163
bb162:
  %t799 = call ptr @__olang_region_make(ptr %v1)
  %t800 = ptrtoint ptr %t799 to i64
  store i64 %t800, ptr %l269, !tbaa !24
  br label %bb163
bb163:
  %t801 = load ptr, ptr %l19, !tbaa !29
  %t802 = load i64, ptr %l269
  %t803 = inttoptr i64 %t802 to ptr
  %t805 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v1, ptr %t803, ptr %t801)
  store { i64, ptr } %t805, ptr %l272
  br label %bb164
bb164:
  %t806 = load ptr, ptr %l268, !tbaa !29
  %t807 = load { i64, ptr }, ptr %l272, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__Hdba28025cac729fb3c994cc5728b4c22(ptr %v1, ptr %v1, ptr %t806, { i64, ptr } %t807)
  br label %bb165
bb165:
  %t808 = load ptr, ptr %l1, !tbaa !29
  %t810 = getelementptr %"compiler/build:compiles", ptr %t808, i32 0, i32 1
  %t811 = load ptr, ptr %lp18
  %t812 = load { i64, ptr }, ptr %t811, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t810, { i64, ptr } %t812)
  br label %bb166
bb166:
  %t815 = load ptr, ptr %l1, !tbaa !29
  %t817 = getelementptr %"compiler/build:compiles", ptr %t815, i32 0, i32 5
  store ptr %t817, ptr %l277, !tbaa !29
  %t818 = ptrtoint ptr %v1 to i64
  store i64 %t818, ptr %l278, !tbaa !24
  %t819 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t819, label %bb167, label %bb168
bb167:
  %t821 = call ptr @__olang_region_make(ptr %v1)
  %t822 = ptrtoint ptr %t821 to i64
  store i64 %t822, ptr %l278, !tbaa !24
  br label %bb168
bb168:
  %t823 = load i1, ptr %l10, !tbaa !21
  br i1 %t823, label %bb169, label %bb170
bb169:
  %t825 = load ptr, ptr %lp18
  %t826 = load { i64, ptr }, ptr %t825, !tbaa !27
  %t828 = extractvalue { i64, ptr } %t826, 1
  %t829 = extractvalue { i64, ptr } %t826, 0
  %t830 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d180, i32 0, i32 1) }, 1
  %t831 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d180, i32 0, i32 1) }, 0
  %t832 = add i64 %t829, %t831
  %t833 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t832)
  call void @olang_textcopy(ptr %t833, ptr %t828, i64 %t829)
  %t834 = getelementptr i8, ptr %t833, i64 %t829
  call void @olang_textcopy(ptr %t834, ptr %t830, i64 %t831)
  %t835 = insertvalue { i64, ptr } undef, i64 %t832, 0
  %t836 = insertvalue { i64, ptr } %t835, ptr %t833, 1
  store { i64, ptr } %t836, ptr %l281, !tbaa !27
  br label %bb171
bb170:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d181, i32 0, i32 1) }, ptr %l284, !tbaa !27
  %t838 = load { i64, ptr }, ptr %l284, !tbaa !27
  store { i64, ptr } %t838, ptr %l281, !tbaa !27
  br label %bb171
bb171:
  %t840 = load { i64, ptr }, ptr %l281, !tbaa !27
  %t841 = load i64, ptr %l278
  %t842 = inttoptr i64 %t841 to ptr
  %t843 = extractvalue { i64, ptr } %t840, 0
  %t844 = extractvalue { i64, ptr } %t840, 1
  %t845 = mul i64 %t843, 1
  %t846 = call ptr @__olang_scope_alloc(ptr %t842, i64 %t845)
  call void @llvm.memcpy.p0.p0.i64(ptr %t846, ptr %t844, i64 %t845, i1 false)
  %t847 = insertvalue { i64, ptr } undef, i64 %t843, 0
  %t848 = insertvalue { i64, ptr } %t847, ptr %t846, 1
  %t849 = load ptr, ptr %l277, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t849, { i64, ptr } %t848)
  br label %bb172
bb172:
  %t851 = load ptr, ptr %l1, !tbaa !29
  %t853 = getelementptr %"compiler/build:compiles", ptr %t851, i32 0, i32 2
  %t854 = load ptr, ptr %lp9
  %t855 = load { i64, ptr }, ptr %t854, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v6, ptr %t853, { i64, ptr } %t855)
  br label %bb173
bb173:
  %t858 = load ptr, ptr %l1, !tbaa !29
  %t860 = getelementptr %"compiler/build:compiles", ptr %t858, i32 0, i32 3
  %t861 = load ptr, ptr %lp12
  %t862 = load { i64, ptr }, ptr %t861, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v4, ptr %t860, { i64, ptr } %t862)
  br label %bb174
bb174:
  %t865 = load ptr, ptr %l1, !tbaa !29
  %t867 = getelementptr %"compiler/build:compiles", ptr %t865, i32 0, i32 4
  %t868 = load ptr, ptr %lp15
  %t869 = load { i64, ptr }, ptr %t868, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t867, { i64, ptr } %t869)
  br label %bb175
bb175:
  %t872 = load ptr, ptr %l1, !tbaa !29
  %t874 = getelementptr %"compiler/build:compiles", ptr %t872, i32 0, i32 6
  %t875 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t877 = extractvalue { i64, ptr } %t875, 0
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t874, i64 %t877)
  br label %bb176
bb176:
  %t880 = load ptr, ptr %lp9
  %t881 = load { i64, ptr }, ptr %t880, !tbaa !27
  store { i64, ptr } %t881, ptr %l300, !tbaa !27
  %t882 = load { i64, ptr }, ptr %l300, !tbaa !27
  %t883 = extractvalue { i64, ptr } %t882, 0
  store i64 %t883, ptr %l301, !tbaa !24
  %t884 = load i64, ptr %l301, !tbaa !24
  %t885 = mul i64 %t884, 1
  %t886 = call ptr @__olang_scope_alloc(ptr %v6, i64 %t885)
  %t887 = insertvalue { i64, ptr } undef, i64 %t884, 0
  %t888 = insertvalue { i64, ptr } %t887, ptr %t886, 1
  store { i64, ptr } %t888, ptr %l302, !tbaa !27
  %t889 = getelementptr { i64, ptr }, ptr %l302, i32 0, i32 1
  %t890 = load ptr, ptr %t889, !tbaa !27
  %t891 = getelementptr { i64, ptr }, ptr %l300, i32 0, i32 1
  %t892 = load ptr, ptr %t891, !tbaa !27
  %t893 = load i64, ptr %l301, !tbaa !24
  %t894 = mul i64 %t893, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t890, ptr %t892, i64 %t894, i1 false)
  %t895 = load { i64, ptr }, ptr %l302, !tbaa !27
  store { i64, ptr } %t895, ptr %l300, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t896 = load { i64, ptr }, ptr %l300, !tbaa !27
  %t897 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t896, 1
  store { i32, { i64, ptr } } %t897, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local i64 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2ewidth(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l7 = alloca i64
  %l10 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/build:Config", ptr %t1, i32 0, i32 20
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp sgt i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/build:Config", ptr %t8, i32 0, i32 20
  %t11 = load i64, ptr %t10, !tbaa !24
  store i64 %t11, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t13 = call i64 @sysconf(i32 84)
  store i64 %t13, ptr %l7
  br label %bb4
bb4:
  %t14 = load i64, ptr %l7, !tbaa !24
  store i64 %t14, ptr %l1, !tbaa !24
  %t15 = load i64, ptr %l1, !tbaa !24
  %t17 = icmp sgt i64 %t15, 0
  br i1 %t17, label %bb5, label %bb6
bb5:
  %t19 = load i64, ptr %l1, !tbaa !24
  store i64 %t19, ptr %l10, !tbaa !24
  br label %bb7
bb6:
  store i64 1, ptr %l10, !tbaa !24
  br label %bb7
bb7:
  %t21 = load i64, ptr %l10, !tbaa !24
  store i64 %t21, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aProgram_2erootIdentity(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca %"compiler/build:Unit"
  %l6 = alloca i64
  %l8 = alloca i64
  %l13 = alloca %"compiler/build:Unit"
  %l16 = alloca i1
  %l25 = alloca i64
  %l27 = alloca { i64, ptr }
  %l30 = alloca %"compiler/build:Unit"
  %l33 = alloca { i64, ptr }
  %l35 = alloca i64
  %l36 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/build:Program", ptr %t1, i32 0, i32 0
  store ptr %t3, ptr %l1, !tbaa !29
  store i64 0, ptr %l2, !tbaa !24
  br label %bb1
bb1:
  %t5 = load i64, ptr %l2, !tbaa !24
  store i64 %t5, ptr %l6, !tbaa !24
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aUnit_3e_2eLen_3ccompiler_2fbuild_3aUnit_3e(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l8
  br label %bb2
bb2:
  %t9 = load i64, ptr %l6, !tbaa !24
  %t10 = load i64, ptr %l8, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  br label %bb14
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t16 = load i64, ptr %l2, !tbaa !24
  %t19 = call %"compiler/build:Unit" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aUnit_3e_2eAt_3ccompiler_2fbuild_3aUnit_3e(ptr %v0, ptr %v0, ptr %t15, i64 %t16)
  store %"compiler/build:Unit" %t19, ptr %l13
  br label %bb6
bb6:
  %t20 = load %"compiler/build:Unit", ptr %l13
  store %"compiler/build:Unit" %t20, ptr %l3
  %t21 = getelementptr %"compiler/build:Unit", ptr %l3, i32 0, i32 1
  %t22 = load i32, ptr %t21, !range !{i32 0, i32 5}
  %t24 = trunc i64 1 to i32
  %t25 = icmp eq i32 %t22, %t24
  br i1 %t25, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb9
bb8:
  %t27 = getelementptr %"compiler/build:Unit", ptr %l3, i32 0, i32 1
  %t28 = load i32, ptr %t27, !range !{i32 0, i32 5}
  %t30 = trunc i64 2 to i32
  %t31 = icmp eq i32 %t28, %t30
  store i1 %t31, ptr %l16, !tbaa !21
  br label %bb9
bb9:
  %t33 = load i1, ptr %l16, !tbaa !21
  br i1 %t33, label %bb10, label %bb11
bb10:
  %t34 = getelementptr %"compiler/build:Unit", ptr %l3, i32 0, i32 0
  %t35 = load { i64, ptr }, ptr %t34, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t35, 1
  %t38 = extractvalue { i64, ptr } %t35, 0
  %t39 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t38)
  call void @olang_textcopy(ptr %t39, ptr %t37, i64 %t38)
  %t40 = insertvalue { i64, ptr } undef, i64 %t38, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t39, 1
  store { i64, ptr } %t41, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t43 = load i64, ptr %l2, !tbaa !24
  %t45 = add i64 %t43, 1
  store i64 %t45, ptr %l2, !tbaa !24
  br label %bb1
bb14:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/build:Program", ptr %t47, i32 0, i32 0
  %t51 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aUnit_3e_2eLen_3ccompiler_2fbuild_3aUnit_3e(ptr %v0, ptr %t49)
  store i64 %t51, ptr %l25
  br label %bb15
bb15:
  %t52 = load i64, ptr %l25, !tbaa !24
  %t53 = icmp sgt i64 %t52, 0
  br i1 %t53, label %bb16, label %bb17
bb16:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/build:Program", ptr %t55, i32 0, i32 0
  %t59 = call %"compiler/build:Unit" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aUnit_3e_2eAt_3ccompiler_2fbuild_3aUnit_3e(ptr %v0, ptr %v0, ptr %t57, i64 0)
  store %"compiler/build:Unit" %t59, ptr %l30
  br label %bb18
bb17:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d182, i32 0, i32 1) }, ptr %l33, !tbaa !27
  %t60 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t60, ptr %l27, !tbaa !27
  br label %bb19
bb18:
  %t62 = getelementptr %"compiler/build:Unit", ptr %l30, i32 0, i32 0
  %t63 = load { i64, ptr }, ptr %t62, !tbaa !27
  %t65 = extractvalue { i64, ptr } %t63, 1
  %t66 = extractvalue { i64, ptr } %t63, 0
  %t67 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t66)
  call void @olang_textcopy(ptr %t67, ptr %t65, i64 %t66)
  %t68 = insertvalue { i64, ptr } undef, i64 %t66, 0
  %t69 = insertvalue { i64, ptr } %t68, ptr %t67, 1
  store { i64, ptr } %t69, ptr %l27, !tbaa !27
  br label %bb19
bb19:
  %t71 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t72 = extractvalue { i64, ptr } %t71, 0
  store i64 %t72, ptr %l35, !tbaa !24
  %t73 = load i64, ptr %l35, !tbaa !24
  %t74 = mul i64 %t73, 1
  %t75 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t74)
  %t76 = insertvalue { i64, ptr } undef, i64 %t73, 0
  %t77 = insertvalue { i64, ptr } %t76, ptr %t75, 1
  store { i64, ptr } %t77, ptr %l36, !tbaa !27
  %t78 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !27
  %t80 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !27
  %t82 = load i64, ptr %l35, !tbaa !24
  %t83 = mul i64 %t82, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t79, ptr %t81, i64 %t83, i1 false)
  %t84 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t84, ptr %l27, !tbaa !27
  %t85 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t85, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aSha256_2eSum(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca [8 x i8]
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca %"std/prelude/text:StringBuilder"
  %l10 = alloca ptr
  %l11 = alloca i64
  %l12 = alloca i64
  %l27 = alloca i64
  %l30 = alloca i64
  %l53 = alloca i64
  %l61 = alloca %"std/prelude/text:StringBuilder"
  %l73 = alloca ptr
  %l74 = alloca i32
  %l75 = alloca i64
  %l76 = alloca i32
  %l77 = alloca { i64, ptr }
  %l79 = alloca { i64, ptr }
  %l84 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/build:Sha256", ptr %t1, i32 0, i32 3
  %t4 = load i64, ptr %t3, !tbaa !24
  %t7 = mul i64 %t4, 8
  store i64 %t7, ptr %l1, !tbaa !65
  %t9 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fbuild_2ecompiler_2fbuild_3aSha256_2eWrite(ptr %v0, ptr %s0, ptr %t9, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d183, i32 0, i32 1) })
  br label %bb1
bb1:
  br label %bb2
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/build:Sha256", ptr %t11, i32 0, i32 2
  %t14 = load i64, ptr %t13, !tbaa !24
  %t16 = icmp ne i64 %t14, 56
  %t18 = xor i1 %t16, true
  br i1 %t18, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s1)
  br label %bb8
bb4:
  br label %bb5
bb5:
  %t20 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fbuild_2ecompiler_2fbuild_3aSha256_2eWrite(ptr %v0, ptr %s1, ptr %t20, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d184, i32 0, i32 1) })
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s1)
  br label %bb7
bb7:
  br label %bb2
bb8:
  store i64 0, ptr %l3, !tbaa !24
  store i64 8, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t22 = load i64, ptr %l4, !tbaa !24
  %t23 = load i64, ptr %l3, !tbaa !24
  %t26 = icmp sgt i64 %t22, %t23
  br i1 %t26, label %bb9, label %bb10
bb9:
  %t28 = load i64, ptr %l5, !tbaa !24
  %t30 = icmp sgt i64 %t28, 0
  br i1 %t30, label %bb11, label %bb12
bb10:
  store i64 0, ptr %l27, !tbaa !24
  br label %bb14
bb11:
  %t32 = load i64, ptr %l4, !tbaa !24
  %t33 = load i64, ptr %l3, !tbaa !24
  %t36 = sub i64 %t32, %t33
  %t37 = load i64, ptr %l5, !tbaa !24
  %t40 = add i64 %t36, %t37
  %t42 = sub i64 %t40, 1
  %t43 = load i64, ptr %l5, !tbaa !24
  %t46 = sdiv i64 %t42, %t43
  store i64 %t46, ptr %l30, !tbaa !24
  br label %bb13
bb12:
  store i64 0, ptr %l30, !tbaa !24
  br label %bb13
bb13:
  %t48 = load i64, ptr %l30, !tbaa !24
  store i64 %t48, ptr %l27, !tbaa !24
  br label %bb14
bb14:
  %t49 = load i64, ptr %l27, !tbaa !24
  store i64 %t49, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb15
bb15:
  %t50 = load i64, ptr %l7, !tbaa !24
  %t51 = load i64, ptr %l6, !tbaa !24
  %t54 = icmp slt i64 %t50, %t51
  %t56 = xor i1 %t54, true
  br i1 %t56, label %bb16, label %bb17
bb16:
  br label %bb20
bb17:
  br label %bb18
bb18:
  %t58 = load i64, ptr %l3, !tbaa !24
  %t59 = load i64, ptr %l7, !tbaa !24
  %t60 = load i64, ptr %l5, !tbaa !24
  %t63 = mul i64 %t59, %t60
  %t66 = add i64 %t58, %t63
  store i64 %t66, ptr %l8, !tbaa !24
  %t68 = load i64, ptr %l8, !tbaa !24
  %t69 = load i64, ptr %l1, !tbaa !65
  %t70 = load i64, ptr %l8, !tbaa !24
  %t72 = mul i64 8, %t70
  %t74 = sub i64 56, %t72
  store i64 %t74, ptr %l53, !tbaa !65
  %t77 = load i64, ptr %l53, !tbaa !65
  %t78 = load i64, ptr %l53, !tbaa !65
  %t79 = lshr i64 %t69, %t78
  %t81 = trunc i64 %t79 to i8
  %t84 = getelementptr [8 x i8], ptr %l2, i64 0, i64 %t68
  store i8 %t81, ptr %t84, !tbaa !32
  br label %bb19
bb19:
  %t85 = load i64, ptr %l7, !tbaa !24
  %t87 = add i64 %t85, 1
  store i64 %t87, ptr %l7, !tbaa !24
  br label %bb15
bb20:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = insertvalue { i64, ptr } undef, i64 8, 0
  %t92 = insertvalue { i64, ptr } %t91, ptr %l2, 1
  call void @compiler_2fbuild_2ecompiler_2fbuild_3aSha256_2eWrite(ptr %v0, ptr %s0, ptr %t89, { i64, ptr } %t92)
  br label %bb21
bb21:
  %t95 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t95, ptr %l61
  br label %bb22
bb22:
  %t96 = load %"std/prelude/text:StringBuilder", ptr %l61
  store %"std/prelude/text:StringBuilder" %t96, ptr %l9
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/build:Sha256", ptr %t97, i32 0, i32 0
  store ptr %t99, ptr %l10
  store i64 0, ptr %l11, !tbaa !24
  %t101 = load ptr, ptr %l10
  store i64 8, ptr %l12, !tbaa !24
  br label %bb23
bb23:
  store %olang.scope zeroinitializer, ptr %s6
  %t104 = load i64, ptr %l11, !tbaa !24
  %t105 = load i64, ptr %l12, !tbaa !24
  %t108 = icmp slt i64 %t104, %t105
  %t110 = xor i1 %t108, true
  br i1 %t110, label %bb24, label %bb25
bb24:
  call void @__olang_scope_close(ptr %s6)
  br label %bb33
bb25:
  br label %bb26
bb26:
  %t112 = load ptr, ptr %l10
  %t113 = load i64, ptr %l11, !tbaa !24
  %t116 = getelementptr [8 x i32], ptr %t112, i64 0, i64 %t113
  %t117 = load i32, ptr %t116, !tbaa !84
  store ptr %l9, ptr %l73, !tbaa !29
  store i32 %t117, ptr %l74, !tbaa !64
  %t120 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s6, i64 16)
  %t121 = extractvalue { i32, i64 } %t120, 1
  %t122 = extractvalue { i32, i64 } %t120, 0
  store i32 %t122, ptr %l76
  %t123 = icmp ne i32 %t122, 0
  br i1 %t123, label %bb28, label %ok.124, !prof !99
ok.124:
  store i64 %t121, ptr %l75
  br label %bb27
bb27:
  %t125 = load i32, ptr %l74, !tbaa !64
  %t126 = load i64, ptr %l75, !tbaa !24
  %t127 = call { i64, ptr } @std_2fprelude_2ftext_2eU32_2eFormat(ptr %s6, i32 %t125, i64 %t126)
  store { i64, ptr } %t127, ptr %l77
  br label %bb29
bb28:
  call void @__olang_check_failed(ptr @olang_loc_8179dc362f2d1bfc_fef952a35fe3ad58)
  unreachable
bb29:
  %t128 = load { i64, ptr }, ptr %l77, !tbaa !27
  %t129 = extractvalue { i64, ptr } %t128, 0
  %t130 = extractvalue { i64, ptr } %t128, 1
  %t131 = mul i64 %t129, 1
  %t132 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t131)
  call void @llvm.memcpy.p0.p0.i64(ptr %t132, ptr %t130, i64 %t131, i1 false)
  %t133 = insertvalue { i64, ptr } undef, i64 %t129, 0
  %t134 = insertvalue { i64, ptr } %t133, ptr %t132, 1
  %t136 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2ePadStart(ptr %s6, ptr %s6, { i64, ptr } %t134, i64 8, i8 48)
  store { i64, ptr } %t136, ptr %l79
  br label %bb30
bb30:
  %t137 = load { i64, ptr }, ptr %l79, !tbaa !27
  %t138 = extractvalue { i64, ptr } %t137, 0
  %t139 = extractvalue { i64, ptr } %t137, 1
  %t140 = mul i64 %t138, 1
  %t141 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t140)
  call void @llvm.memcpy.p0.p0.i64(ptr %t141, ptr %t139, i64 %t140, i1 false)
  %t142 = insertvalue { i64, ptr } undef, i64 %t138, 0
  %t143 = insertvalue { i64, ptr } %t142, ptr %t141, 1
  %t144 = load ptr, ptr %l73, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s6, ptr %t144, { i64, ptr } %t143)
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s6)
  br label %bb32
bb32:
  %t146 = load i64, ptr %l11, !tbaa !24
  %t148 = add i64 %t146, 1
  store i64 %t148, ptr %l11, !tbaa !24
  br label %bb23
bb33:
  %t151 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l9)
  store { i64, ptr } %t151, ptr %l84
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s0)
  %t152 = load { i64, ptr }, ptr %l84, !tbaa !27
  store { i64, ptr } %t152, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fbuild_2ecompiler_2fbuild_3aSha256_2eWrite(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l6 = alloca ptr
  %l16 = alloca i1
  %l24 = alloca { i64, ptr }
  %l27 = alloca ptr
  %l57 = alloca { i64, ptr }
  %l60 = alloca ptr
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l3, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  store ptr %t5, ptr %l6, !tbaa !29
  %t6 = load ptr, ptr %l6, !tbaa !29
  %t7 = getelementptr %"compiler/build:Sha256", ptr %t6, i32 0, i32 3
  %t8 = load i64, ptr %t7, !tbaa !24
  %t9 = load i64, ptr %l3, !tbaa !24
  %t12 = add i64 %t8, %t9
  %t14 = load ptr, ptr %l6, !tbaa !29
  %t15 = getelementptr %"compiler/build:Sha256", ptr %t14, i32 0, i32 3
  store i64 %t12, ptr %t15, !tbaa !24
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/build:Sha256", ptr %t16, i32 0, i32 2
  %t19 = load i64, ptr %t18, !tbaa !24
  %t21 = icmp sgt i64 %t19, 0
  br i1 %t21, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb16
bb3:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/build:Sha256", ptr %t23, i32 0, i32 2
  %t26 = load i64, ptr %t25, !tbaa !24
  %t28 = icmp slt i64 %t26, 64
  br i1 %t28, label %bb4, label %bb5
bb4:
  %t30 = load i64, ptr %l2, !tbaa !24
  %t31 = load i64, ptr %l3, !tbaa !24
  %t34 = icmp slt i64 %t30, %t31
  store i1 %t34, ptr %l16, !tbaa !21
  br label %bb6
bb5:
  store i1 false, ptr %l16, !tbaa !21
  br label %bb6
bb6:
  %t36 = load i1, ptr %l16, !tbaa !21
  %t37 = xor i1 %t36, true
  br i1 %t37, label %bb7, label %bb8
bb7:
  br label %bb11
bb8:
  br label %bb9
bb9:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/build:Sha256", ptr %t40, i32 0, i32 2
  %t43 = load i64, ptr %t42, !tbaa !24
  %t44 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t44, ptr %l24, !tbaa !27
  %t45 = load i64, ptr %l2, !tbaa !24
  %t47 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !27
  %t49 = getelementptr i8, ptr %t48, i64 %t45
  %t50 = load i8, ptr %t49, !tbaa !32
  %t53 = getelementptr %"compiler/build:Sha256", ptr %t39, i32 0, i32 1
  %t55 = getelementptr [64 x i8], ptr %t53, i64 0, i64 %t43
  store i8 %t50, ptr %t55, !tbaa !32
  %t56 = load ptr, ptr %l0, !tbaa !29
  store ptr %t56, ptr %l27, !tbaa !29
  %t57 = load ptr, ptr %l27, !tbaa !29
  %t58 = getelementptr %"compiler/build:Sha256", ptr %t57, i32 0, i32 2
  %t59 = load i64, ptr %t58, !tbaa !24
  %t61 = add i64 %t59, 1
  %t63 = load ptr, ptr %l27, !tbaa !29
  %t64 = getelementptr %"compiler/build:Sha256", ptr %t63, i32 0, i32 2
  store i64 %t61, ptr %t64, !tbaa !24
  %t65 = load i64, ptr %l2, !tbaa !24
  %t67 = add i64 %t65, 1
  store i64 %t67, ptr %l2, !tbaa !24
  br label %bb10
bb10:
  br label %bb3
bb11:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/build:Sha256", ptr %t69, i32 0, i32 2
  %t72 = load i64, ptr %t71, !tbaa !24
  %t74 = icmp slt i64 %t72, 64
  br i1 %t74, label %bb12, label %bb13
bb12:
  br label %ret
bb13:
  br label %bb14
bb14:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/build:Sha256", ptr %t77, i32 0, i32 1
  %t81 = insertvalue { i64, ptr } undef, i64 64, 0
  %t82 = insertvalue { i64, ptr } %t81, ptr %t79, 1
  call void @compiler_2fbuild_2ecompiler_2fbuild_3aSha256_2ecompress(ptr %v0, ptr %v0, ptr %t76, { i64, ptr } %t82, i64 0)
  br label %bb15
bb15:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/build:Sha256", ptr %t85, i32 0, i32 2
  store i64 0, ptr %t87, !tbaa !24
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t88 = load i64, ptr %l2, !tbaa !24
  %t90 = add i64 %t88, 64
  %t91 = load i64, ptr %l3, !tbaa !24
  %t94 = icmp sle i64 %t90, %t91
  %t96 = xor i1 %t94, true
  br i1 %t96, label %bb18, label %bb19
bb18:
  br label %bb23
bb19:
  br label %bb20
bb20:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t99 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t100 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fbuild_2ecompiler_2fbuild_3aSha256_2ecompress(ptr %v0, ptr %v1, ptr %t98, { i64, ptr } %t99, i64 %t100)
  br label %bb21
bb21:
  %t104 = load i64, ptr %l2, !tbaa !24
  %t106 = add i64 %t104, 64
  store i64 %t106, ptr %l2, !tbaa !24
  br label %bb22
bb22:
  br label %bb17
bb23:
  br label %bb24
bb24:
  %t108 = load i64, ptr %l2, !tbaa !24
  %t109 = load i64, ptr %l3, !tbaa !24
  %t112 = icmp slt i64 %t108, %t109
  %t114 = xor i1 %t112, true
  br i1 %t114, label %bb25, label %bb26
bb25:
  br label %bb29
bb26:
  br label %bb27
bb27:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/build:Sha256", ptr %t117, i32 0, i32 2
  %t120 = load i64, ptr %t119, !tbaa !24
  %t121 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t121, ptr %l57, !tbaa !27
  %t122 = load i64, ptr %l2, !tbaa !24
  %t124 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t125 = load ptr, ptr %t124, !tbaa !27
  %t126 = getelementptr i8, ptr %t125, i64 %t122
  %t127 = load i8, ptr %t126, !tbaa !32
  %t130 = getelementptr %"compiler/build:Sha256", ptr %t116, i32 0, i32 1
  %t132 = getelementptr [64 x i8], ptr %t130, i64 0, i64 %t120
  store i8 %t127, ptr %t132, !tbaa !32
  %t133 = load ptr, ptr %l0, !tbaa !29
  store ptr %t133, ptr %l60, !tbaa !29
  %t134 = load ptr, ptr %l60, !tbaa !29
  %t135 = getelementptr %"compiler/build:Sha256", ptr %t134, i32 0, i32 2
  %t136 = load i64, ptr %t135, !tbaa !24
  %t138 = add i64 %t136, 1
  %t140 = load ptr, ptr %l60, !tbaa !29
  %t141 = getelementptr %"compiler/build:Sha256", ptr %t140, i32 0, i32 2
  store i64 %t138, ptr %t141, !tbaa !24
  %t142 = load i64, ptr %l2, !tbaa !24
  %t144 = add i64 %t142, 1
  store i64 %t144, ptr %l2, !tbaa !24
  br label %bb28
bb28:
  br label %bb24
bb29:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fbuild_2ecompiler_2fbuild_3acompiles_2eclaim(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %lp2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i1
  %l15 = alloca i64
  %l18 = alloca i64
  %l37 = alloca i32
  %l42 = alloca i1
  %l49 = alloca { i64, ptr }
  %l50 = alloca i32
  %l54 = alloca i32
  %l56 = alloca i1
  %l64 = alloca i1
  %l67 = alloca i32
  %l69 = alloca i1
  %s6 = alloca %olang.scope
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = extractvalue { i64, ptr } %a1, 1
  %t4 = extractvalue { i64, ptr } %a1, 0
  %t5 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d185, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d185, i32 0, i32 1) }, 0
  %t7 = add i64 %t4, %t6
  %t8 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t7)
  call void @olang_textcopy(ptr %t8, ptr %t3, i64 %t4)
  %t9 = getelementptr i8, ptr %t8, i64 %t4
  call void @olang_textcopy(ptr %t9, ptr %t5, i64 %t6)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t8, 1
  %t12 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 16, i64 8)
  store ptr %t12, ptr %lp2
  %t14 = load ptr, ptr %lp2
  store { i64, ptr } %t11, ptr %t14, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  store i64 2, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t15 = load i64, ptr %l4, !tbaa !24
  %t16 = load i64, ptr %l3, !tbaa !24
  %t19 = icmp sgt i64 %t15, %t16
  br i1 %t19, label %bb1, label %bb2
bb1:
  %t21 = load i64, ptr %l5, !tbaa !24
  %t23 = icmp sgt i64 %t21, 0
  br i1 %t23, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l15, !tbaa !24
  br label %bb6
bb3:
  %t25 = load i64, ptr %l4, !tbaa !24
  %t26 = load i64, ptr %l3, !tbaa !24
  %t29 = sub i64 %t25, %t26
  %t30 = load i64, ptr %l5, !tbaa !24
  %t33 = add i64 %t29, %t30
  %t35 = sub i64 %t33, 1
  %t36 = load i64, ptr %l5, !tbaa !24
  %t39 = sdiv i64 %t35, %t36
  store i64 %t39, ptr %l18, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb5
bb5:
  %t41 = load i64, ptr %l18, !tbaa !24
  store i64 %t41, ptr %l15, !tbaa !24
  br label %bb6
bb6:
  %t42 = load i64, ptr %l15, !tbaa !24
  store i64 %t42, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb7
bb7:
  %t43 = load i64, ptr %l7, !tbaa !24
  %t44 = load i64, ptr %l6, !tbaa !24
  %t47 = icmp slt i64 %t43, %t44
  %t49 = xor i1 %t47, true
  br i1 %t49, label %bb8, label %bb9
bb8:
  br label %bb44
bb9:
  br label %bb10
bb10:
  %t51 = load i64, ptr %l3, !tbaa !24
  %t52 = load i64, ptr %l7, !tbaa !24
  %t53 = load i64, ptr %l5, !tbaa !24
  %t56 = mul i64 %t52, %t53
  %t59 = add i64 %t51, %t56
  store i64 %t59, ptr %l8, !tbaa !24
  store i1 true, ptr %l9, !tbaa !21
  %t61 = load ptr, ptr %lp2
  %t62 = load { i64, ptr }, ptr %t61, !tbaa !27
  %t64 = call i32 @std_2fos_2eMkDir(ptr %v0, { i64, ptr } %t62)
  store i32 %t64, ptr %l37
  %t65 = icmp ne i32 %t64, 0
  br i1 %t65, label %bb12, label %ok.66, !prof !99
ok.66:
  br label %bb11
bb11:
  br label %bb21
bb12:
  %t67 = load i32, ptr %l37, !tbaa !23
  %t68 = icmp eq i32 %t67, 65537
  br i1 %t68, label %bb13, label %bb14
bb13:
  %t70 = load i32, ptr %l37, !tbaa !23
  %t71 = ashr i32 %t70, 16
  %t73 = icmp eq i32 %t71, 1
  br i1 %t73, label %bb15, label %bb16
bb14:
  %t75 = load i32, ptr %l37, !tbaa !23
  %t76 = ashr i32 %t75, 16
  %t78 = icmp eq i32 %t76, 1
  store i1 %t78, ptr %l42, !tbaa !21
  %t79 = load i32, ptr %l37, !tbaa !23
  %t80 = ashr i32 %t79, 16
  %t82 = icmp eq i32 %t80, 1
  br i1 %t82, label %bb18, label %bb19
bb15:
  call void @__olang_errpay_pop()
  br label %bb16
bb16:
  br label %bb17
bb17:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb21
bb18:
  call void @__olang_errpay_pop()
  br label %bb19
bb19:
  br label %bb20
bb20:
  store i1 true, ptr %rv
  br label %ret
bb21:
  %t85 = load i1, ptr %l9, !tbaa !21
  br i1 %t85, label %bb22, label %bb23
bb22:
  store %olang.scope zeroinitializer, ptr %s6
  %t87 = load ptr, ptr %lp2
  %t88 = load { i64, ptr }, ptr %t87, !tbaa !27
  %t90 = extractvalue { i64, ptr } %t88, 1
  %t91 = extractvalue { i64, ptr } %t88, 0
  %t92 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d186, i32 0, i32 1) }, 1
  %t93 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d186, i32 0, i32 1) }, 0
  %t94 = add i64 %t91, %t93
  %t95 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t94)
  call void @olang_textcopy(ptr %t95, ptr %t90, i64 %t91)
  %t96 = getelementptr i8, ptr %t95, i64 %t91
  call void @olang_textcopy(ptr %t96, ptr %t92, i64 %t93)
  %t97 = insertvalue { i64, ptr } undef, i64 %t94, 0
  %t98 = insertvalue { i64, ptr } %t97, ptr %t95, 1
  %t100 = extractvalue { i64, ptr } %t98, 0
  %t101 = extractvalue { i64, ptr } %t98, 1
  %t102 = mul i64 %t100, 1
  %t103 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t102)
  call void @llvm.memcpy.p0.p0.i64(ptr %t103, ptr %t101, i64 %t102, i1 false)
  %t104 = insertvalue { i64, ptr } undef, i64 %t100, 0
  %t105 = insertvalue { i64, ptr } %t104, ptr %t103, 1
  store { i64, ptr } %t105, ptr %l49, !tbaa !27
  %t106 = call i32 @getpid()
  store i32 %t106, ptr %l50
  br label %bb24
bb23:
  br label %bb32
bb24:
  %t107 = load i32, ptr %l50, !tbaa !23
  %t108 = sext i32 %t107 to i64
  %t109 = call i64 @__olang_fmt_i64(ptr null, i64 %t108)
  %t110 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t109)
  %t111 = call i64 @__olang_fmt_i64(ptr %t110, i64 %t108)
  %t112 = insertvalue { i64, ptr } undef, i64 %t109, 0
  %t113 = insertvalue { i64, ptr } %t112, ptr %t110, 1
  %t116 = extractvalue { i64, ptr } %t113, 0
  %t117 = extractvalue { i64, ptr } %t113, 1
  %t118 = mul i64 %t116, 1
  %t119 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t118)
  call void @llvm.memcpy.p0.p0.i64(ptr %t119, ptr %t117, i64 %t118, i1 false)
  %t120 = insertvalue { i64, ptr } undef, i64 %t116, 0
  %t121 = insertvalue { i64, ptr } %t120, ptr %t119, 1
  %t122 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t124 = call i32 @std_2fos_2eWriteFile(ptr %s6, ptr %s6, { i64, ptr } %t122, { i64, ptr } %t121)
  store i32 %t124, ptr %l54
  %t125 = icmp ne i32 %t124, 0
  br i1 %t125, label %bb26, label %ok.126, !prof !99
ok.126:
  br label %bb25
bb25:
  br label %bb30
bb26:
  %t127 = load i32, ptr %l54, !tbaa !23
  %t128 = ashr i32 %t127, 16
  %t130 = icmp eq i32 %t128, 1
  store i1 %t130, ptr %l56, !tbaa !21
  %t131 = load i32, ptr %l54, !tbaa !23
  %t132 = ashr i32 %t131, 16
  %t134 = icmp eq i32 %t132, 1
  br i1 %t134, label %bb27, label %bb28
bb27:
  call void @__olang_errpay_pop()
  br label %bb28
bb28:
  br label %bb29
bb29:
  br label %bb30
bb30:
  %t138 = getelementptr %"compiler/build:compiles", ptr %a0, i32 0, i32 7
  %t139 = load ptr, ptr %lp2
  %t140 = load { i64, ptr }, ptr %t139, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t138, { i64, ptr } %t140)
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s6)
  store i1 true, ptr %rv
  br label %ret
bb32:
  %t144 = load ptr, ptr %lp2
  %t145 = load { i64, ptr }, ptr %t144, !tbaa !27
  %t147 = call i1 @compiler_2fbuild_2eholderAlive(ptr %v0, { i64, ptr } %t145)
  store i1 %t147, ptr %l64
  br label %bb33
bb33:
  %t148 = load i1, ptr %l64, !tbaa !21
  br i1 %t148, label %bb34, label %bb35
bb34:
  store i1 false, ptr %rv
  br label %ret
bb35:
  br label %bb36
bb36:
  %t150 = load ptr, ptr %lp2
  %t151 = load { i64, ptr }, ptr %t150, !tbaa !27
  %t153 = call i32 @std_2fos_2eRemoveAll(ptr %v0, { i64, ptr } %t151)
  store i32 %t153, ptr %l67
  %t154 = icmp ne i32 %t153, 0
  br i1 %t154, label %bb38, label %ok.155, !prof !99
ok.155:
  br label %bb37
bb37:
  br label %bb42
bb38:
  %t156 = load i32, ptr %l67, !tbaa !23
  %t157 = ashr i32 %t156, 16
  %t159 = icmp eq i32 %t157, 1
  store i1 %t159, ptr %l69, !tbaa !21
  %t160 = load i32, ptr %l67, !tbaa !23
  %t161 = ashr i32 %t160, 16
  %t163 = icmp eq i32 %t161, 1
  br i1 %t163, label %bb39, label %bb40
bb39:
  call void @__olang_errpay_pop()
  br label %bb40
bb40:
  br label %bb41
bb41:
  br label %bb42
bb42:
  br label %bb43
bb43:
  %t165 = load i64, ptr %l7, !tbaa !24
  %t167 = add i64 %t165, 1
  store i64 %t167, ptr %l7, !tbaa !24
  br label %bb7
bb44:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fbuild_2ecompiler_2fbuild_3astubFrontend_2eAnalyze(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, i32 %a2, ptr %a3, ptr %a4, ptr %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca ptr
  %l15 = alloca i1
  %l16 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l28 = alloca ptr
  %l29 = alloca i32
  %l30 = alloca i64
  %l37 = alloca %"compiler/build:Unit"
  %l39 = alloca ptr
  %l40 = alloca i32
  %l41 = alloca i64
  %l49 = alloca %"compiler/build:Unit"
  %l55 = alloca ptr
  %l58 = alloca i32
  %l62 = alloca %"compiler/build:Unit"
  %l64 = alloca ptr
  %l65 = alloca i32
  %l66 = alloca i64
  %l72 = alloca %"compiler/build:Unit"
  %l73 = alloca ptr
  %l74 = alloca i64
  %l80 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store ptr %a3, ptr %l3
  store ptr %a4, ptr %l4
  store ptr %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l10, !tbaa !29
  %t2 = load ptr, ptr %l10, !tbaa !29
  %t3 = getelementptr %"compiler/build:stubFrontend", ptr %t2, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = add i64 %t4, 1
  %t8 = load ptr, ptr %l10, !tbaa !29
  %t9 = getelementptr %"compiler/build:stubFrontend", ptr %t8, i32 0, i32 1
  store i64 %t6, ptr %t9, !tbaa !24
  %t10 = load ptr, ptr %l3, !tbaa !29
  %t12 = getelementptr %"compiler/build:Config", ptr %t10, i32 0, i32 3
  %t14 = call i1 @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eHas(ptr %v2, ptr %s0, ptr %t12, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d187, i32 0, i32 1) })
  store i1 %t14, ptr %l15
  br label %bb1
bb1:
  %t15 = load i1, ptr %l15, !tbaa !21
  br i1 %t15, label %bb2, label %bb3
bb2:
  %t16 = load ptr, ptr %l3, !tbaa !29
  %t18 = getelementptr %"compiler/build:Config", ptr %t16, i32 0, i32 3
  %t20 = call { i64, ptr } @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eRaw(ptr %v2, ptr %s0, ptr %s0, ptr %t18, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d188, i32 0, i32 1) })
  store { i64, ptr } %t20, ptr %l19
  br label %bb4
bb3:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d189, i32 0, i32 1) }, ptr %l16, !tbaa !27
  br label %bb5
bb4:
  %t21 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t22 = extractvalue { i64, ptr } %t21, 0
  %t23 = extractvalue { i64, ptr } %t21, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  store { i64, ptr } %t27, ptr %l16, !tbaa !27
  br label %bb5
bb5:
  %t29 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t29, ptr %l6, !tbaa !27
  %t30 = load ptr, ptr %l3, !tbaa !29
  %t32 = getelementptr %"compiler/build:Config", ptr %t30, i32 0, i32 2
  %t33 = getelementptr %"compiler/target:Target", ptr %t32, i32 0, i32 5
  %t34 = load { i64, ptr }, ptr %t33, !tbaa !27
  %t35 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d190, i32 0, i32 1) }, 1
  %t36 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d190, i32 0, i32 1) }, 0
  %t38 = extractvalue { i64, ptr } %t34, 1
  %t39 = extractvalue { i64, ptr } %t34, 0
  %t40 = add i64 %t36, %t39
  %t41 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d191, i32 0, i32 1) }, 1
  %t42 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d191, i32 0, i32 1) }, 0
  %t43 = add i64 %t40, %t42
  %t44 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t43)
  call void @olang_textcopy(ptr %t44, ptr %t35, i64 %t36)
  %t45 = getelementptr i8, ptr %t44, i64 %t36
  call void @olang_textcopy(ptr %t45, ptr %t38, i64 %t39)
  %t46 = getelementptr i8, ptr %t45, i64 %t39
  call void @olang_textcopy(ptr %t46, ptr %t41, i64 %t42)
  %t47 = insertvalue { i64, ptr } undef, i64 %t43, 0
  %t48 = insertvalue { i64, ptr } %t47, ptr %t44, 1
  store { i64, ptr } %t48, ptr %l7, !tbaa !27
  %t50 = load ptr, ptr %l3, !tbaa !29
  %t52 = getelementptr %"compiler/build:Config", ptr %t50, i32 0, i32 2
  %t53 = getelementptr %"compiler/target:Target", ptr %t52, i32 0, i32 1
  %t54 = load { i64, ptr }, ptr %t53, !tbaa !27
  %t55 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d192, i32 0, i32 1) }, 1
  %t56 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d192, i32 0, i32 1) }, 0
  %t58 = extractvalue { i64, ptr } %t54, 1
  %t59 = extractvalue { i64, ptr } %t54, 0
  %t60 = add i64 %t56, %t59
  %t61 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d193, i32 0, i32 1) }, 1
  %t62 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d193, i32 0, i32 1) }, 0
  %t63 = add i64 %t60, %t62
  %t64 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t63)
  call void @olang_textcopy(ptr %t64, ptr %t55, i64 %t56)
  %t65 = getelementptr i8, ptr %t64, i64 %t56
  call void @olang_textcopy(ptr %t65, ptr %t58, i64 %t59)
  %t66 = getelementptr i8, ptr %t65, i64 %t59
  call void @olang_textcopy(ptr %t66, ptr %t61, i64 %t62)
  %t67 = insertvalue { i64, ptr } undef, i64 %t63, 0
  %t68 = insertvalue { i64, ptr } %t67, ptr %t64, 1
  store { i64, ptr } %t68, ptr %l8, !tbaa !27
  %t70 = load ptr, ptr %l4, !tbaa !29
  %t72 = getelementptr %"compiler/build:Program", ptr %t70, i32 0, i32 0
  store ptr %t72, ptr %l28, !tbaa !29
  store i32 0, ptr %l29
  %t73 = ptrtoint ptr %v3 to i64
  store i64 %t73, ptr %l30, !tbaa !24
  %t74 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3aUnit_2e2
  br i1 %t74, label %bb6, label %bb7
bb6:
  %t76 = call ptr @__olang_region_make(ptr %v3)
  %t77 = ptrtoint ptr %t76 to i64
  store i64 %t77, ptr %l30, !tbaa !24
  br label %bb7
bb7:
  %t78 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t79 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t80 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t82 = extractvalue { i64, ptr } %t78, 1
  %t83 = extractvalue { i64, ptr } %t78, 0
  %t84 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d194, i32 0, i32 1) }, 1
  %t85 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d194, i32 0, i32 1) }, 0
  %t86 = add i64 %t83, %t85
  %t88 = extractvalue { i64, ptr } %t79, 1
  %t89 = extractvalue { i64, ptr } %t79, 0
  %t90 = add i64 %t86, %t89
  %t91 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d195, i32 0, i32 1) }, 1
  %t92 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d195, i32 0, i32 1) }, 0
  %t93 = add i64 %t90, %t92
  %t95 = extractvalue { i64, ptr } %t80, 1
  %t96 = extractvalue { i64, ptr } %t80, 0
  %t97 = add i64 %t93, %t96
  %t98 = load i64, ptr %l30
  %t99 = inttoptr i64 %t98 to ptr
  %t100 = call ptr @__olang_scope_alloc(ptr %t99, i64 %t97)
  call void @olang_textcopy(ptr %t100, ptr %t82, i64 %t83)
  %t101 = getelementptr i8, ptr %t100, i64 %t83
  call void @olang_textcopy(ptr %t101, ptr %t84, i64 %t85)
  %t102 = getelementptr i8, ptr %t101, i64 %t85
  call void @olang_textcopy(ptr %t102, ptr %t88, i64 %t89)
  %t103 = getelementptr i8, ptr %t102, i64 %t89
  call void @olang_textcopy(ptr %t103, ptr %t91, i64 %t92)
  %t104 = getelementptr i8, ptr %t103, i64 %t92
  call void @olang_textcopy(ptr %t104, ptr %t95, i64 %t96)
  %t105 = insertvalue { i64, ptr } undef, i64 %t97, 0
  %t106 = insertvalue { i64, ptr } %t105, ptr %t100, 1
  %t108 = load i64, ptr %l30
  %t109 = inttoptr i64 %t108 to ptr
  %t110 = extractvalue { i64, ptr } %t106, 0
  %t111 = extractvalue { i64, ptr } %t106, 1
  %t112 = mul i64 %t110, 1
  %t113 = call ptr @__olang_scope_alloc(ptr %t109, i64 %t112)
  call void @llvm.memcpy.p0.p0.i64(ptr %t113, ptr %t111, i64 %t112, i1 false)
  %t114 = insertvalue { i64, ptr } undef, i64 %t110, 0
  %t115 = insertvalue { i64, ptr } %t114, ptr %t113, 1
  %t116 = load i32, ptr %l29, !range !{i32 0, i32 5}
  %t118 = call %"compiler/build:Unit" @compiler_2fbuild_3aUnit_2ector(ptr %v3, ptr %v3, ptr %v3, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d196, i32 0, i32 1) }, i32 %t116, { i64, ptr } %t115)
  store %"compiler/build:Unit" %t118, ptr %l37
  br label %bb8
bb8:
  %t119 = load ptr, ptr %l28, !tbaa !29
  %t120 = load %"compiler/build:Unit", ptr %l37
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aUnit_3e_2ePush_3ccompiler_2fbuild_3aUnit_3e(ptr %v3, ptr %v3, ptr %t119, %"compiler/build:Unit" %t120)
  br label %bb9
bb9:
  %t121 = load ptr, ptr %l4, !tbaa !29
  %t123 = getelementptr %"compiler/build:Program", ptr %t121, i32 0, i32 0
  store ptr %t123, ptr %l39, !tbaa !29
  store i32 0, ptr %l40
  %t124 = ptrtoint ptr %v3 to i64
  store i64 %t124, ptr %l41, !tbaa !24
  %t125 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3aUnit_2e2
  br i1 %t125, label %bb10, label %bb11
bb10:
  %t127 = call ptr @__olang_region_make(ptr %v3)
  %t128 = ptrtoint ptr %t127 to i64
  store i64 %t128, ptr %l41, !tbaa !24
  br label %bb11
bb11:
  %t129 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t132 = getelementptr %"compiler/build:stubFrontend", ptr %t130, i32 0, i32 0
  %t133 = load i64, ptr %t132, !tbaa !24
  %t134 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t136 = extractvalue { i64, ptr } %t129, 1
  %t137 = extractvalue { i64, ptr } %t129, 0
  %t138 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d197, i32 0, i32 1) }, 1
  %t139 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d197, i32 0, i32 1) }, 0
  %t140 = add i64 %t137, %t139
  %t142 = call i64 @__olang_fmt_i64(ptr null, i64 %t133)
  %t143 = add i64 %t140, %t142
  %t144 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d198, i32 0, i32 1) }, 1
  %t145 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d198, i32 0, i32 1) }, 0
  %t146 = add i64 %t143, %t145
  %t148 = extractvalue { i64, ptr } %t134, 1
  %t149 = extractvalue { i64, ptr } %t134, 0
  %t150 = add i64 %t146, %t149
  %t151 = load i64, ptr %l41
  %t152 = inttoptr i64 %t151 to ptr
  %t153 = call ptr @__olang_scope_alloc(ptr %t152, i64 %t150)
  call void @olang_textcopy(ptr %t153, ptr %t136, i64 %t137)
  %t154 = getelementptr i8, ptr %t153, i64 %t137
  call void @olang_textcopy(ptr %t154, ptr %t138, i64 %t139)
  %t155 = getelementptr i8, ptr %t154, i64 %t139
  %t156 = call i64 @__olang_fmt_i64(ptr %t155, i64 %t133)
  %t157 = getelementptr i8, ptr %t155, i64 %t142
  call void @olang_textcopy(ptr %t157, ptr %t144, i64 %t145)
  %t158 = getelementptr i8, ptr %t157, i64 %t145
  call void @olang_textcopy(ptr %t158, ptr %t148, i64 %t149)
  %t159 = insertvalue { i64, ptr } undef, i64 %t150, 0
  %t160 = insertvalue { i64, ptr } %t159, ptr %t153, 1
  %t162 = load i64, ptr %l41
  %t163 = inttoptr i64 %t162 to ptr
  %t164 = extractvalue { i64, ptr } %t160, 0
  %t165 = extractvalue { i64, ptr } %t160, 1
  %t166 = mul i64 %t164, 1
  %t167 = call ptr @__olang_scope_alloc(ptr %t163, i64 %t166)
  call void @llvm.memcpy.p0.p0.i64(ptr %t167, ptr %t165, i64 %t166, i1 false)
  %t168 = insertvalue { i64, ptr } undef, i64 %t164, 0
  %t169 = insertvalue { i64, ptr } %t168, ptr %t167, 1
  %t170 = load i32, ptr %l40, !range !{i32 0, i32 5}
  %t172 = call %"compiler/build:Unit" @compiler_2fbuild_3aUnit_2ector(ptr %v3, ptr %v3, ptr %v3, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d199, i32 0, i32 1) }, i32 %t170, { i64, ptr } %t169)
  store %"compiler/build:Unit" %t172, ptr %l49
  br label %bb12
bb12:
  %t173 = load ptr, ptr %l39, !tbaa !29
  %t174 = load %"compiler/build:Unit", ptr %l49
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aUnit_3e_2ePush_3ccompiler_2fbuild_3aUnit_3e(ptr %v3, ptr %v3, ptr %t173, %"compiler/build:Unit" %t174)
  br label %bb13
bb13:
  %t175 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t176 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t178 = extractvalue { i64, ptr } %t175, 1
  %t179 = extractvalue { i64, ptr } %t175, 0
  %t180 = extractvalue { i64, ptr } { i64 90, ptr getelementptr inbounds (<{ i64, [90 x i8] }>, ptr @.d200, i32 0, i32 1) }, 1
  %t181 = extractvalue { i64, ptr } { i64 90, ptr getelementptr inbounds (<{ i64, [90 x i8] }>, ptr @.d200, i32 0, i32 1) }, 0
  %t182 = add i64 %t179, %t181
  %t183 = extractvalue { i64, ptr } { i64 73, ptr getelementptr inbounds (<{ i64, [73 x i8] }>, ptr @.d201, i32 0, i32 1) }, 1
  %t184 = extractvalue { i64, ptr } { i64 73, ptr getelementptr inbounds (<{ i64, [73 x i8] }>, ptr @.d201, i32 0, i32 1) }, 0
  %t185 = add i64 %t182, %t184
  %t186 = extractvalue { i64, ptr } { i64 96, ptr getelementptr inbounds (<{ i64, [96 x i8] }>, ptr @.d202, i32 0, i32 1) }, 1
  %t187 = extractvalue { i64, ptr } { i64 96, ptr getelementptr inbounds (<{ i64, [96 x i8] }>, ptr @.d202, i32 0, i32 1) }, 0
  %t188 = add i64 %t185, %t187
  %t189 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d203, i32 0, i32 1) }, 1
  %t190 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d203, i32 0, i32 1) }, 0
  %t191 = add i64 %t188, %t190
  %t193 = extractvalue { i64, ptr } %t176, 1
  %t194 = extractvalue { i64, ptr } %t176, 0
  %t195 = add i64 %t191, %t194
  %t196 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t195)
  call void @olang_textcopy(ptr %t196, ptr %t178, i64 %t179)
  %t197 = getelementptr i8, ptr %t196, i64 %t179
  call void @olang_textcopy(ptr %t197, ptr %t180, i64 %t181)
  %t198 = getelementptr i8, ptr %t197, i64 %t181
  call void @olang_textcopy(ptr %t198, ptr %t183, i64 %t184)
  %t199 = getelementptr i8, ptr %t198, i64 %t184
  call void @olang_textcopy(ptr %t199, ptr %t186, i64 %t187)
  %t200 = getelementptr i8, ptr %t199, i64 %t187
  call void @olang_textcopy(ptr %t200, ptr %t189, i64 %t190)
  %t201 = getelementptr i8, ptr %t200, i64 %t190
  call void @olang_textcopy(ptr %t201, ptr %t193, i64 %t194)
  %t202 = insertvalue { i64, ptr } undef, i64 %t195, 0
  %t203 = insertvalue { i64, ptr } %t202, ptr %t196, 1
  %t205 = extractvalue { i64, ptr } %t203, 0
  %t206 = extractvalue { i64, ptr } %t203, 1
  %t207 = mul i64 %t205, 1
  %t208 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t207)
  call void @llvm.memcpy.p0.p0.i64(ptr %t208, ptr %t206, i64 %t207, i1 false)
  %t209 = insertvalue { i64, ptr } undef, i64 %t205, 0
  %t210 = insertvalue { i64, ptr } %t209, ptr %t208, 1
  store { i64, ptr } %t210, ptr %l9, !tbaa !27
  %t212 = load ptr, ptr %l4, !tbaa !29
  %t214 = getelementptr %"compiler/build:Program", ptr %t212, i32 0, i32 0
  store ptr %t214, ptr %l55, !tbaa !29
  %t217 = trunc i64 1 to i32
  %t218 = icmp eq i32 %a2, %t217
  br i1 %t218, label %bb14, label %bb15
bb14:
  store i32 1, ptr %l58
  br label %bb16
bb15:
  store i32 2, ptr %l58
  br label %bb16
bb16:
  %t222 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t223 = load i32, ptr %l58, !range !{i32 0, i32 5}
  %t225 = call %"compiler/build:Unit" @compiler_2fbuild_3aUnit_2ector(ptr %v3, ptr %v3, ptr %v3, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d204, i32 0, i32 1) }, i32 %t223, { i64, ptr } %t222)
  store %"compiler/build:Unit" %t225, ptr %l62
  br label %bb17
bb17:
  %t226 = load ptr, ptr %l55, !tbaa !29
  %t227 = load %"compiler/build:Unit", ptr %l62
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aUnit_3e_2ePush_3ccompiler_2fbuild_3aUnit_3e(ptr %v3, ptr %v3, ptr %t226, %"compiler/build:Unit" %t227)
  br label %bb18
bb18:
  %t228 = load ptr, ptr %l4, !tbaa !29
  %t230 = getelementptr %"compiler/build:Program", ptr %t228, i32 0, i32 0
  store ptr %t230, ptr %l64, !tbaa !29
  store i32 3, ptr %l65
  %t231 = ptrtoint ptr %v3 to i64
  store i64 %t231, ptr %l66, !tbaa !24
  %t232 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3aUnit_2e2
  br i1 %t232, label %bb19, label %bb20
bb19:
  %t234 = call ptr @__olang_region_make(ptr %v3)
  %t235 = ptrtoint ptr %t234 to i64
  store i64 %t235, ptr %l66, !tbaa !24
  br label %bb20
bb20:
  %t236 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t237 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t239 = extractvalue { i64, ptr } %t236, 1
  %t240 = extractvalue { i64, ptr } %t236, 0
  %t241 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d205, i32 0, i32 1) }, 1
  %t242 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d205, i32 0, i32 1) }, 0
  %t243 = add i64 %t240, %t242
  %t245 = extractvalue { i64, ptr } %t237, 1
  %t246 = extractvalue { i64, ptr } %t237, 0
  %t247 = add i64 %t243, %t246
  %t248 = load i64, ptr %l66
  %t249 = inttoptr i64 %t248 to ptr
  %t250 = call ptr @__olang_scope_alloc(ptr %t249, i64 %t247)
  call void @olang_textcopy(ptr %t250, ptr %t239, i64 %t240)
  %t251 = getelementptr i8, ptr %t250, i64 %t240
  call void @olang_textcopy(ptr %t251, ptr %t241, i64 %t242)
  %t252 = getelementptr i8, ptr %t251, i64 %t242
  call void @olang_textcopy(ptr %t252, ptr %t245, i64 %t246)
  %t253 = insertvalue { i64, ptr } undef, i64 %t247, 0
  %t254 = insertvalue { i64, ptr } %t253, ptr %t250, 1
  %t256 = load i64, ptr %l66
  %t257 = inttoptr i64 %t256 to ptr
  %t258 = extractvalue { i64, ptr } %t254, 0
  %t259 = extractvalue { i64, ptr } %t254, 1
  %t260 = mul i64 %t258, 1
  %t261 = call ptr @__olang_scope_alloc(ptr %t257, i64 %t260)
  call void @llvm.memcpy.p0.p0.i64(ptr %t261, ptr %t259, i64 %t260, i1 false)
  %t262 = insertvalue { i64, ptr } undef, i64 %t258, 0
  %t263 = insertvalue { i64, ptr } %t262, ptr %t261, 1
  %t264 = load i32, ptr %l65, !range !{i32 0, i32 5}
  %t266 = call %"compiler/build:Unit" @compiler_2fbuild_3aUnit_2ector(ptr %v3, ptr %v3, ptr %v3, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d206, i32 0, i32 1) }, i32 %t264, { i64, ptr } %t263)
  store %"compiler/build:Unit" %t266, ptr %l72
  br label %bb21
bb21:
  %t267 = load ptr, ptr %l64, !tbaa !29
  %t268 = load %"compiler/build:Unit", ptr %l72
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aUnit_3e_2ePush_3ccompiler_2fbuild_3aUnit_3e(ptr %v3, ptr %v3, ptr %t267, %"compiler/build:Unit" %t268)
  br label %bb22
bb22:
  %t269 = load ptr, ptr %l4, !tbaa !29
  store ptr %t269, ptr %l73, !tbaa !29
  %t270 = ptrtoint ptr %v3 to i64
  store i64 %t270, ptr %l74, !tbaa !24
  %t271 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3aProgram_2e1
  br i1 %t271, label %bb23, label %bb24
bb23:
  %t273 = call ptr @__olang_region_make(ptr %v3)
  %t274 = ptrtoint ptr %t273 to i64
  store i64 %t274, ptr %l74, !tbaa !24
  br label %bb24
bb24:
  %t275 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t276 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t278 = extractvalue { i64, ptr } %t275, 1
  %t279 = extractvalue { i64, ptr } %t275, 0
  %t280 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d207, i32 0, i32 1) }, 1
  %t281 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d207, i32 0, i32 1) }, 0
  %t282 = add i64 %t279, %t281
  %t284 = extractvalue { i64, ptr } %t276, 1
  %t285 = extractvalue { i64, ptr } %t276, 0
  %t286 = add i64 %t282, %t285
  %t287 = load i64, ptr %l74
  %t288 = inttoptr i64 %t287 to ptr
  %t289 = call ptr @__olang_scope_alloc(ptr %t288, i64 %t286)
  call void @olang_textcopy(ptr %t289, ptr %t278, i64 %t279)
  %t290 = getelementptr i8, ptr %t289, i64 %t279
  call void @olang_textcopy(ptr %t290, ptr %t280, i64 %t281)
  %t291 = getelementptr i8, ptr %t290, i64 %t281
  call void @olang_textcopy(ptr %t291, ptr %t284, i64 %t285)
  %t292 = insertvalue { i64, ptr } undef, i64 %t286, 0
  %t293 = insertvalue { i64, ptr } %t292, ptr %t289, 1
  %t295 = load i64, ptr %l74
  %t296 = inttoptr i64 %t295 to ptr
  %t297 = extractvalue { i64, ptr } %t293, 0
  %t298 = extractvalue { i64, ptr } %t293, 1
  %t299 = mul i64 %t297, 1
  %t300 = call ptr @__olang_scope_alloc(ptr %t296, i64 %t299)
  call void @llvm.memcpy.p0.p0.i64(ptr %t300, ptr %t298, i64 %t299, i1 false)
  %t301 = insertvalue { i64, ptr } undef, i64 %t297, 0
  %t302 = insertvalue { i64, ptr } %t301, ptr %t300, 1
  %t303 = load ptr, ptr %l73, !tbaa !29
  %t304 = getelementptr %"compiler/build:Program", ptr %t303, i32 0, i32 1
  %t305 = load { i64, ptr }, ptr %t304, !tbaa !27
  store { i64, ptr } %t305, ptr %l80, !tbaa !27
  %t307 = load ptr, ptr %l73, !tbaa !29
  %t308 = getelementptr %"compiler/build:Program", ptr %t307, i32 0, i32 1
  store { i64, ptr } %t302, ptr %t308, !tbaa !27
  %t309 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3aProgram_2e1
  br i1 %t309, label %bb25, label %bb26
bb25:
  %t311 = load { i64, ptr }, ptr %l80
  %t312 = extractvalue { i64, ptr } %t311, 1
  call void @__olang_region_release(ptr %t312)
  store { i64, ptr } zeroinitializer, ptr %l80
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fbuild_2efinish(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eRender(ptr %v0, ptr %s0, ptr %t1)
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
  call void @compiler_2fbuild_2esay(ptr %s0, { i64, ptr } %t10)
  br label %bb2
bb2:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eSummary(ptr %v0, ptr %s0, ptr %t12)
  store { i64, ptr } %t14, ptr %l5
  br label %bb3
bb3:
  %t15 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t15, 0
  %t17 = extractvalue { i64, ptr } %t15, 1
  %t18 = mul i64 %t16, 1
  %t19 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t18)
  call void @llvm.memcpy.p0.p0.i64(ptr %t19, ptr %t17, i64 %t18, i1 false)
  %t20 = insertvalue { i64, ptr } undef, i64 %t16, 0
  %t21 = insertvalue { i64, ptr } %t20, ptr %t19, 1
  call void @compiler_2fbuild_2esay(ptr %s0, { i64, ptr } %t21)
  br label %bb4
bb4:
  call void @__olang_scope_close(ptr %s0)
  store i32 1, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fbuild_2eholderAlive(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca %"std/os:FileInfo"
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca %"std/os:FileInfo"
  %l6 = alloca %"std/os:FileInfo"
  %l7 = alloca i32
  %l9 = alloca i1
  %l13 = alloca i64
  %l19 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l24 = alloca i32
  %l26 = alloca i1
  %l32 = alloca i1
  %l38 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call { i32, %"std/os:FileInfo" } @std_2fos_2eFileInfo_2eStat(ptr %v0, { i64, ptr } %t1)
  %t4 = extractvalue { i32, %"std/os:FileInfo" } %t3, 1
  %t5 = extractvalue { i32, %"std/os:FileInfo" } %t3, 0
  store i32 %t5, ptr %l7
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store %"std/os:FileInfo" %t4, ptr %l6
  br label %bb1
bb1:
  %t8 = load %"std/os:FileInfo", ptr %l6
  store %"std/os:FileInfo" %t8, ptr %l4
  br label %bb6
bb2:
  %t9 = load i32, ptr %l7, !tbaa !23
  %t10 = ashr i32 %t9, 16
  %t12 = icmp eq i32 %t10, 1
  store i1 %t12, ptr %l9, !tbaa !21
  %t13 = load i32, ptr %l7, !tbaa !23
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
  store i1 false, ptr %rv
  br label %ret
bb6:
  %t19 = load %"std/os:FileInfo", ptr %l4
  store %"std/os:FileInfo" %t19, ptr %l1
  %t20 = call i64 @std_2ftime_2eWall()
  store i64 %t20, ptr %l13
  br label %bb7
bb7:
  %t21 = getelementptr %"std/os:FileInfo", ptr %l1, i32 0, i32 2
  %t22 = load i64, ptr %t21, !tbaa !24
  %t23 = load i64, ptr %l13, !tbaa !24
  %t25 = sub i64 %t23, %t22
  store i64 %t25, ptr %l2, !tbaa !24
  %t27 = load i64, ptr %l2, !tbaa !24
  %t29 = icmp sgt i64 %t27, 1800000000000
  br i1 %t29, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t32 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t32, 1
  %t35 = extractvalue { i64, ptr } %t32, 0
  %t36 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d208, i32 0, i32 1) }, 1
  %t37 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d208, i32 0, i32 1) }, 0
  %t38 = add i64 %t35, %t37
  %t39 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t38)
  call void @olang_textcopy(ptr %t39, ptr %t34, i64 %t35)
  %t40 = getelementptr i8, ptr %t39, i64 %t35
  call void @olang_textcopy(ptr %t40, ptr %t36, i64 %t37)
  %t41 = insertvalue { i64, ptr } undef, i64 %t38, 0
  %t42 = insertvalue { i64, ptr } %t41, ptr %t39, 1
  %t44 = extractvalue { i64, ptr } %t42, 0
  %t45 = extractvalue { i64, ptr } %t42, 1
  %t46 = mul i64 %t44, 1
  %t47 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t46)
  call void @llvm.memcpy.p0.p0.i64(ptr %t47, ptr %t45, i64 %t46, i1 false)
  %t48 = insertvalue { i64, ptr } undef, i64 %t44, 0
  %t49 = insertvalue { i64, ptr } %t48, ptr %t47, 1
  %t51 = call { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %s0, ptr %s0, { i64, ptr } %t49)
  %t52 = extractvalue { i32, { i64, ptr } } %t51, 1
  %t53 = extractvalue { i32, { i64, ptr } } %t51, 0
  store i32 %t53, ptr %l24
  %t54 = icmp ne i32 %t53, 0
  br i1 %t54, label %bb12, label %ok.55, !prof !99
ok.55:
  store { i64, ptr } %t52, ptr %l23
  br label %bb11
bb11:
  %t56 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t56, ptr %l19, !tbaa !27
  br label %bb16
bb12:
  %t57 = load i32, ptr %l24, !tbaa !23
  %t58 = ashr i32 %t57, 16
  %t60 = icmp eq i32 %t58, 1
  store i1 %t60, ptr %l26, !tbaa !21
  %t61 = load i32, ptr %l24, !tbaa !23
  %t62 = ashr i32 %t61, 16
  %t64 = icmp eq i32 %t62, 1
  br i1 %t64, label %bb13, label %bb14
bb13:
  call void @__olang_errpay_pop()
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t66 = load i64, ptr %l2, !tbaa !24
  %t68 = icmp slt i64 %t66, 60000000000
  call void @__olang_scope_close(ptr %s0)
  store i1 %t68, ptr %rv
  br label %ret
bb16:
  %t70 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t70, ptr %l3, !tbaa !27
  %t71 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t73 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t71, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d209, i32 0, i32 1) })
  store i1 %t73, ptr %l32
  br label %bb17
bb17:
  %t74 = load i1, ptr %l32, !tbaa !21
  br i1 %t74, label %bb18, label %bb19
bb18:
  %t75 = load i64, ptr %l2, !tbaa !24
  %t77 = icmp slt i64 %t75, 60000000000
  call void @__olang_scope_close(ptr %s0)
  store i1 %t77, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  %t79 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t80 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d210, i32 0, i32 1) }, 1
  %t81 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d210, i32 0, i32 1) }, 0
  %t83 = extractvalue { i64, ptr } %t79, 1
  %t84 = extractvalue { i64, ptr } %t79, 0
  %t85 = add i64 %t81, %t84
  %t86 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t85)
  call void @olang_textcopy(ptr %t86, ptr %t80, i64 %t81)
  %t87 = getelementptr i8, ptr %t86, i64 %t81
  call void @olang_textcopy(ptr %t87, ptr %t83, i64 %t84)
  %t88 = insertvalue { i64, ptr } undef, i64 %t85, 0
  %t89 = insertvalue { i64, ptr } %t88, ptr %t86, 1
  %t91 = extractvalue { i64, ptr } %t89, 0
  %t92 = extractvalue { i64, ptr } %t89, 1
  %t93 = mul i64 %t91, 1
  %t94 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t93)
  call void @llvm.memcpy.p0.p0.i64(ptr %t94, ptr %t92, i64 %t93, i1 false)
  %t95 = insertvalue { i64, ptr } undef, i64 %t91, 0
  %t96 = insertvalue { i64, ptr } %t95, ptr %t94, 1
  %t98 = call i1 @std_2fos_2eExists(ptr %s0, { i64, ptr } %t96)
  store i1 %t98, ptr %l38
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s0)
  %t99 = load i1, ptr %l38, !tbaa !21
  store i1 %t99, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fbuild_2ekindSuffix(ptr %v0, i32 %a0) #0 {
entry:
  %l0 = alloca i32
  %l1 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l22 = alloca i64
  %l23 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store i32 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l0, !range !{i32 0, i32 5}
  %t3 = trunc i64 0 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d211, i32 0, i32 1) }, ptr %l4, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t6, ptr %l1, !tbaa !27
  br label %bb21
bb4:
  %t8 = load i32, ptr %l0, !range !{i32 0, i32 5}
  %t10 = trunc i64 1 to i32
  %t11 = icmp eq i32 %t8, %t10
  br i1 %t11, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d212, i32 0, i32 1) }, ptr %l8, !tbaa !27
  %t13 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t13, ptr %l1, !tbaa !27
  br label %bb21
bb8:
  %t15 = load i32, ptr %l0, !range !{i32 0, i32 5}
  %t17 = trunc i64 2 to i32
  %t18 = icmp eq i32 %t15, %t17
  br i1 %t18, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d213, i32 0, i32 1) }, ptr %l12, !tbaa !27
  %t20 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t20, ptr %l1, !tbaa !27
  br label %bb21
bb12:
  %t22 = load i32, ptr %l0, !range !{i32 0, i32 5}
  %t24 = trunc i64 3 to i32
  %t25 = icmp eq i32 %t22, %t24
  br i1 %t25, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d214, i32 0, i32 1) }, ptr %l16, !tbaa !27
  %t27 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t27, ptr %l1, !tbaa !27
  br label %bb21
bb16:
  %t29 = load i32, ptr %l0, !range !{i32 0, i32 5}
  %t31 = trunc i64 4 to i32
  %t32 = icmp eq i32 %t29, %t31
  br i1 %t32, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d215, i32 0, i32 1) }, ptr %l20, !tbaa !27
  %t34 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t34, ptr %l1, !tbaa !27
  br label %bb21
bb20:
  call void @__olang_check_failed(ptr @olang_loc_7cb1cbeb873878be_a9deaf72b78184ba)
  unreachable
bb21:
  %t36 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t36, 0
  store i64 %t37, ptr %l22, !tbaa !24
  %t38 = load i64, ptr %l22, !tbaa !24
  %t39 = mul i64 %t38, 1
  %t40 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t39)
  %t41 = insertvalue { i64, ptr } undef, i64 %t38, 0
  %t42 = insertvalue { i64, ptr } %t41, ptr %t40, 1
  store { i64, ptr } %t42, ptr %l23, !tbaa !27
  %t43 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !27
  %t45 = getelementptr { i64, ptr }, ptr %l1, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !27
  %t47 = load i64, ptr %l22, !tbaa !24
  %t48 = mul i64 %t47, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t44, ptr %t46, i64 %t48, i1 false)
  %t49 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t49, ptr %l1, !tbaa !27
  %t50 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t50, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fbuild_2elinkCurrent(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca { i64, ptr }
  %l4 = alloca %"std/os:FileInfo"
  %l5 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i32
  %l10 = alloca i1
  %l14 = alloca %"std/os:FileInfo"
  %l16 = alloca %"std/os:FileInfo"
  %l17 = alloca i32
  %l19 = alloca i1
  %l29 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %v1, ptr %s0, { i64, ptr } %a1)
  %t4 = extractvalue { i32, { i64, ptr } } %t3, 1
  %t5 = extractvalue { i32, { i64, ptr } } %t3, 0
  store i32 %t5, ptr %l8
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store { i64, ptr } %t4, ptr %l7
  br label %bb1
bb1:
  %t8 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t8, ptr %l5, !tbaa !27
  br label %bb6
bb2:
  %t9 = load i32, ptr %l8, !tbaa !23
  %t10 = ashr i32 %t9, 16
  %t12 = icmp eq i32 %t10, 1
  store i1 %t12, ptr %l10, !tbaa !21
  %t13 = load i32, ptr %l8, !tbaa !23
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
  store i1 false, ptr %rv
  br label %ret
bb6:
  %t19 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t19, ptr %l3, !tbaa !27
  %t22 = call { i32, %"std/os:FileInfo" } @std_2fos_2eFileInfo_2eStat(ptr %v0, { i64, ptr } %a0)
  %t23 = extractvalue { i32, %"std/os:FileInfo" } %t22, 1
  %t24 = extractvalue { i32, %"std/os:FileInfo" } %t22, 0
  store i32 %t24, ptr %l17
  %t25 = icmp ne i32 %t24, 0
  br i1 %t25, label %bb8, label %ok.26, !prof !99
ok.26:
  store %"std/os:FileInfo" %t23, ptr %l16
  br label %bb7
bb7:
  %t27 = load %"std/os:FileInfo", ptr %l16
  store %"std/os:FileInfo" %t27, ptr %l14
  br label %bb12
bb8:
  %t28 = load i32, ptr %l17, !tbaa !23
  %t29 = ashr i32 %t28, 16
  %t31 = icmp eq i32 %t29, 1
  store i1 %t31, ptr %l19, !tbaa !21
  %t32 = load i32, ptr %l17, !tbaa !23
  %t33 = ashr i32 %t32, 16
  %t35 = icmp eq i32 %t33, 1
  br i1 %t35, label %bb9, label %bb10
bb9:
  call void @__olang_errpay_pop()
  br label %bb10
bb10:
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb12:
  %t38 = load %"std/os:FileInfo", ptr %l14
  store %"std/os:FileInfo" %t38, ptr %l4
  %t39 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t41 = getelementptr %"std/os:FileInfo", ptr %l4, i32 0, i32 1
  %t42 = load i64, ptr %t41, !tbaa !24
  %t43 = getelementptr %"std/os:FileInfo", ptr %l4, i32 0, i32 2
  %t44 = load i64, ptr %t43, !tbaa !24
  %t46 = extractvalue { i64, ptr } %a2, 1
  %t47 = extractvalue { i64, ptr } %a2, 0
  %t48 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d216, i32 0, i32 1) }, 1
  %t49 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d216, i32 0, i32 1) }, 0
  %t50 = add i64 %t47, %t49
  %t52 = call i64 @__olang_fmt_i64(ptr null, i64 %t42)
  %t53 = add i64 %t50, %t52
  %t54 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d216, i32 0, i32 1) }, 1
  %t55 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d216, i32 0, i32 1) }, 0
  %t56 = add i64 %t53, %t55
  %t58 = call i64 @__olang_fmt_i64(ptr null, i64 %t44)
  %t59 = add i64 %t56, %t58
  %t60 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d217, i32 0, i32 1) }, 1
  %t61 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d217, i32 0, i32 1) }, 0
  %t62 = add i64 %t59, %t61
  %t63 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t62)
  call void @olang_textcopy(ptr %t63, ptr %t46, i64 %t47)
  %t64 = getelementptr i8, ptr %t63, i64 %t47
  call void @olang_textcopy(ptr %t64, ptr %t48, i64 %t49)
  %t65 = getelementptr i8, ptr %t64, i64 %t49
  %t66 = call i64 @__olang_fmt_i64(ptr %t65, i64 %t42)
  %t67 = getelementptr i8, ptr %t65, i64 %t52
  call void @olang_textcopy(ptr %t67, ptr %t54, i64 %t55)
  %t68 = getelementptr i8, ptr %t67, i64 %t55
  %t69 = call i64 @__olang_fmt_i64(ptr %t68, i64 %t44)
  %t70 = getelementptr i8, ptr %t68, i64 %t58
  call void @olang_textcopy(ptr %t70, ptr %t60, i64 %t61)
  %t71 = insertvalue { i64, ptr } undef, i64 %t62, 0
  %t72 = insertvalue { i64, ptr } %t71, ptr %t63, 1
  %t74 = extractvalue { i64, ptr } %t72, 0
  %t75 = extractvalue { i64, ptr } %t72, 1
  %t76 = mul i64 %t74, 1
  %t77 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t76)
  call void @llvm.memcpy.p0.p0.i64(ptr %t77, ptr %t75, i64 %t76, i1 false)
  %t78 = insertvalue { i64, ptr } undef, i64 %t74, 0
  %t79 = insertvalue { i64, ptr } %t78, ptr %t77, 1
  %t82 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t39, { i64, ptr } %t79)
  store i1 %t82, ptr %l29
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s0)
  %t83 = load i1, ptr %l29, !tbaa !21
  store i1 %t83, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fbuild_2elistFiles(ptr %v0, ptr %v1, { i64, ptr } %a0, i1 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca ptr
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca { i64, ptr }
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l16 = alloca i32
  %l18 = alloca i1
  %l31 = alloca { i64, ptr }
  %l41 = alloca i64
  %l43 = alloca i64
  %l48 = alloca { i64, ptr }
  %l51 = alloca { i64, ptr }
  %l52 = alloca i1
  %l54 = alloca ptr
  %l55 = alloca i64
  %l62 = alloca i1
  %l63 = alloca i1
  %l66 = alloca { i64, ptr }
  %l67 = alloca i1
  %l68 = alloca i1
  %l70 = alloca i1
  %l71 = alloca i1
  %l73 = alloca i1
  %l76 = alloca ptr
  %l77 = alloca i64
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  store { i64, ptr } %a0, ptr %l0
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l12
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l3
  %t3 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t5 = call { i32, { i64, ptr } } @std_2fos_2eReadDir(ptr %v0, ptr %s0, { i64, ptr } %t3)
  %t6 = extractvalue { i32, { i64, ptr } } %t5, 1
  %t7 = extractvalue { i32, { i64, ptr } } %t5, 0
  store i32 %t7, ptr %l16
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb3, label %ok.9, !prof !99
ok.9:
  store { i64, ptr } %t6, ptr %l15
  br label %bb2
bb2:
  %t10 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t10, ptr %l13, !tbaa !27
  br label %bb11
bb3:
  %t11 = load i32, ptr %l16, !tbaa !23
  %t12 = ashr i32 %t11, 16
  %t14 = icmp eq i32 %t12, 1
  store i1 %t14, ptr %l18, !tbaa !21
  %t15 = load i32, ptr %l16, !tbaa !23
  %t16 = ashr i32 %t15, 16
  %t18 = icmp eq i32 %t16, 1
  br i1 %t18, label %bb4, label %bb5
bb4:
  call void @__olang_errpay_pop()
  br label %bb5
bb5:
  br label %bb6
bb6:
  %t20 = icmp sge i64 0, 0
  br i1 %t20, label %bb7, label %bb8
bb7:
  %t22 = icmp sle i64 0, 576460752303423487
  br i1 %t22, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_46572e8a3ed1f877_752b2fa47e3744e3)
  unreachable
bb9:
  %t24 = mul i64 0, 16
  %t25 = insertvalue { i64, ptr } undef, i64 0, 0
  %t26 = insertvalue { i64, ptr } %t25, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t26, ptr %l13, !tbaa !27
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_46572e8a3ed1f877_752b2fa47e3744e3)
  unreachable
bb11:
  %t28 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t28, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t31 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t33 = extractvalue { i64, ptr } %t31, 0
  store i64 %t33, ptr %l7, !tbaa !24
  br label %bb12
bb12:
  %t35 = load i64, ptr %l6, !tbaa !24
  %t36 = load i64, ptr %l7, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb13, label %bb14
bb13:
  br label %bb18
bb14:
  br label %bb15
bb15:
  %t43 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t43, ptr %l31, !tbaa !27
  %t44 = load i64, ptr %l6, !tbaa !24
  %t46 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = getelementptr { i64, ptr }, ptr %t47, i64 %t44
  %t49 = load { i64, ptr }, ptr %t48, !tbaa !37
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l3, { i64, ptr } %t49)
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t54 = load i64, ptr %l6, !tbaa !24
  %t56 = add i64 %t54, 1
  store i64 %t56, ptr %l6, !tbaa !24
  br label %bb12
bb18:
  %t58 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_218, 0
  %t59 = insertvalue { ptr, ptr } %t58, ptr null, 1
  %t62 = extractvalue { ptr, ptr } %t59, 0
  %t63 = extractvalue { ptr, ptr } %t59, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H1642129570dad448bb7dcc47c334de83(ptr %s0, ptr %s0, ptr %l3, ptr %t62, ptr %t63)
  br label %bb19
bb19:
  store ptr %l3, ptr %l9, !tbaa !29
  store i64 0, ptr %l10, !tbaa !24
  br label %bb20
bb20:
  store %olang.scope zeroinitializer, ptr %s5
  %t65 = load i64, ptr %l10, !tbaa !24
  store i64 %t65, ptr %l41, !tbaa !24
  %t66 = load ptr, ptr %l9, !tbaa !29
  %t68 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %t66)
  store i64 %t68, ptr %l43
  br label %bb21
bb21:
  %t69 = load i64, ptr %l41, !tbaa !24
  %t70 = load i64, ptr %l43, !tbaa !24
  %t71 = icmp slt i64 %t69, %t70
  %t73 = xor i1 %t71, true
  br i1 %t73, label %bb22, label %bb23
bb22:
  call void @__olang_scope_close(ptr %s5)
  br label %bb53
bb23:
  br label %bb24
bb24:
  %t75 = load ptr, ptr %l9, !tbaa !29
  %t76 = load i64, ptr %l10, !tbaa !24
  %t79 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %t75, i64 %t76)
  store { i64, ptr } %t79, ptr %l48
  br label %bb25
bb25:
  %t80 = load { i64, ptr }, ptr %l48, !tbaa !27
  store { i64, ptr } %t80, ptr %l11, !tbaa !27
  %t81 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d219, i32 0, i32 1) }, ptr %l51, !tbaa !27
  %t84 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t85 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %s0, ptr %s5, { i64, ptr } %t81, { i64, ptr } %t84)
  store i1 %t85, ptr %l52
  br label %bb26
bb26:
  %t86 = load i1, ptr %l52, !tbaa !21
  br i1 %t86, label %bb27, label %bb28
bb27:
  %t87 = load ptr, ptr %l2, !tbaa !29
  %t89 = getelementptr %"compiler/build:Listed", ptr %t87, i32 0, i32 1
  store ptr %t89, ptr %l54, !tbaa !29
  %t90 = ptrtoint ptr %v1 to i64
  store i64 %t90, ptr %l55, !tbaa !24
  %t91 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t91, label %bb29, label %bb30
bb28:
  br label %bb32
bb29:
  %t93 = call ptr @__olang_region_make(ptr %v1)
  %t94 = ptrtoint ptr %t93 to i64
  store i64 %t94, ptr %l55, !tbaa !24
  br label %bb30
bb30:
  %t95 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t96 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t98 = extractvalue { i64, ptr } %t95, 1
  %t99 = extractvalue { i64, ptr } %t95, 0
  %t100 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d220, i32 0, i32 1) }, 1
  %t101 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d220, i32 0, i32 1) }, 0
  %t102 = add i64 %t99, %t101
  %t104 = extractvalue { i64, ptr } %t96, 1
  %t105 = extractvalue { i64, ptr } %t96, 0
  %t106 = add i64 %t102, %t105
  %t107 = load i64, ptr %l55
  %t108 = inttoptr i64 %t107 to ptr
  %t109 = call ptr @__olang_scope_alloc(ptr %t108, i64 %t106)
  call void @olang_textcopy(ptr %t109, ptr %t98, i64 %t99)
  %t110 = getelementptr i8, ptr %t109, i64 %t99
  call void @olang_textcopy(ptr %t110, ptr %t100, i64 %t101)
  %t111 = getelementptr i8, ptr %t110, i64 %t101
  call void @olang_textcopy(ptr %t111, ptr %t104, i64 %t105)
  %t112 = insertvalue { i64, ptr } undef, i64 %t106, 0
  %t113 = insertvalue { i64, ptr } %t112, ptr %t109, 1
  %t115 = load i64, ptr %l55
  %t116 = inttoptr i64 %t115 to ptr
  %t117 = extractvalue { i64, ptr } %t113, 0
  %t118 = extractvalue { i64, ptr } %t113, 1
  %t119 = mul i64 %t117, 1
  %t120 = call ptr @__olang_scope_alloc(ptr %t116, i64 %t119)
  call void @llvm.memcpy.p0.p0.i64(ptr %t120, ptr %t118, i64 %t119, i1 false)
  %t121 = insertvalue { i64, ptr } undef, i64 %t117, 0
  %t122 = insertvalue { i64, ptr } %t121, ptr %t120, 1
  %t123 = load ptr, ptr %l54, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t123, { i64, ptr } %t122)
  br label %bb31
bb31:
  br label %bb32
bb32:
  %t125 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t127 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s5, { i64, ptr } %t125, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d221, i32 0, i32 1) })
  store i1 %t127, ptr %l62
  br label %bb33
bb33:
  %t128 = load i1, ptr %l62, !tbaa !21
  br i1 %t128, label %bb34, label %bb35
bb34:
  store i1 true, ptr %l63, !tbaa !21
  br label %bb37
bb35:
  %t129 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d222, i32 0, i32 1) }, ptr %l66, !tbaa !27
  %t132 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t133 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %s0, ptr %s5, { i64, ptr } %t129, { i64, ptr } %t132)
  store i1 %t133, ptr %l67
  br label %bb36
bb36:
  %t134 = load i1, ptr %l67, !tbaa !21
  store i1 %t134, ptr %l63, !tbaa !21
  br label %bb37
bb37:
  %t135 = load i1, ptr %l63, !tbaa !21
  br i1 %t135, label %bb38, label %bb39
bb38:
  store i1 true, ptr %l68, !tbaa !21
  br label %bb41
bb39:
  %t136 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t138 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %s0, ptr %s5, { i64, ptr } %t136, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d223, i32 0, i32 1) })
  store i1 %t138, ptr %l70
  br label %bb40
bb40:
  %t139 = load i1, ptr %l70, !tbaa !21
  store i1 %t139, ptr %l68, !tbaa !21
  br label %bb41
bb41:
  %t140 = load i1, ptr %l68, !tbaa !21
  br i1 %t140, label %bb42, label %bb43
bb42:
  call void @__olang_scope_close(ptr %s5)
  br label %bb52
bb43:
  br label %bb44
bb44:
  store i1 %a1, ptr %l71, !tbaa !21
  %t142 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t144 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %s0, ptr %s5, { i64, ptr } %t142, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d224, i32 0, i32 1) })
  store i1 %t144, ptr %l73
  br label %bb45
bb45:
  %t145 = load i1, ptr %l71, !tbaa !21
  %t146 = load i1, ptr %l73, !tbaa !21
  %t147 = icmp eq i1 %t145, %t146
  br i1 %t147, label %bb46, label %bb47
bb46:
  %t149 = load ptr, ptr %l2, !tbaa !29
  %t151 = getelementptr %"compiler/build:Listed", ptr %t149, i32 0, i32 0
  store ptr %t151, ptr %l76, !tbaa !29
  %t152 = ptrtoint ptr %v1 to i64
  store i64 %t152, ptr %l77, !tbaa !24
  %t153 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t153, label %bb48, label %bb49
bb47:
  br label %bb51
bb48:
  %t155 = call ptr @__olang_region_make(ptr %v1)
  %t156 = ptrtoint ptr %t155 to i64
  store i64 %t156, ptr %l77, !tbaa !24
  br label %bb49
bb49:
  %t157 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t158 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t160 = extractvalue { i64, ptr } %t157, 1
  %t161 = extractvalue { i64, ptr } %t157, 0
  %t162 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d225, i32 0, i32 1) }, 1
  %t163 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d225, i32 0, i32 1) }, 0
  %t164 = add i64 %t161, %t163
  %t166 = extractvalue { i64, ptr } %t158, 1
  %t167 = extractvalue { i64, ptr } %t158, 0
  %t168 = add i64 %t164, %t167
  %t169 = load i64, ptr %l77
  %t170 = inttoptr i64 %t169 to ptr
  %t171 = call ptr @__olang_scope_alloc(ptr %t170, i64 %t168)
  call void @olang_textcopy(ptr %t171, ptr %t160, i64 %t161)
  %t172 = getelementptr i8, ptr %t171, i64 %t161
  call void @olang_textcopy(ptr %t172, ptr %t162, i64 %t163)
  %t173 = getelementptr i8, ptr %t172, i64 %t163
  call void @olang_textcopy(ptr %t173, ptr %t166, i64 %t167)
  %t174 = insertvalue { i64, ptr } undef, i64 %t168, 0
  %t175 = insertvalue { i64, ptr } %t174, ptr %t171, 1
  %t177 = load i64, ptr %l77
  %t178 = inttoptr i64 %t177 to ptr
  %t179 = extractvalue { i64, ptr } %t175, 0
  %t180 = extractvalue { i64, ptr } %t175, 1
  %t181 = mul i64 %t179, 1
  %t182 = call ptr @__olang_scope_alloc(ptr %t178, i64 %t181)
  call void @llvm.memcpy.p0.p0.i64(ptr %t182, ptr %t180, i64 %t181, i1 false)
  %t183 = insertvalue { i64, ptr } undef, i64 %t179, 0
  %t184 = insertvalue { i64, ptr } %t183, ptr %t182, 1
  %t185 = load ptr, ptr %l76, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t185, { i64, ptr } %t184)
  br label %bb50
bb50:
  br label %bb51
bb51:
  call void @__olang_scope_close(ptr %s5)
  br label %bb52
bb52:
  %t187 = load i64, ptr %l10, !tbaa !24
  %t189 = add i64 %t187, 1
  store i64 %t189, ptr %l10, !tbaa !24
  br label %bb20
bb53:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fbuild_2erotr(i32 %a0, i32 %a1) #0 {
entry:
  %l0 = alloca i32
  %l1 = alloca i32
  %l3 = alloca i32
  %l7 = alloca i32
  %rv = alloca i32
  store i32 %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l0, !tbaa !64
  %t2 = load i32, ptr %l1, !tbaa !64
  store i32 %t2, ptr %l3, !tbaa !64
  %t4 = load i32, ptr %l3, !tbaa !64
  %t5 = load i32, ptr %l3, !tbaa !64
  %t6 = lshr i32 %t1, %t5
  %t7 = load i32, ptr %l0, !tbaa !64
  %t8 = load i32, ptr %l1, !tbaa !64
  %t10 = sub i32 32, %t8
  store i32 %t10, ptr %l7, !tbaa !64
  %t12 = load i32, ptr %l7, !tbaa !64
  %t13 = load i32, ptr %l7, !tbaa !64
  %t14 = shl i32 %t7, %t13
  %t17 = or i32 %t6, %t14
  store i32 %t17, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fbuild_2esay(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l2 = alloca i32
  %l4 = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call i32 @std_2fio_2ePrint(ptr %v0, { i64, ptr } %a0)
  store i32 %t3, ptr %l2
  %t4 = icmp ne i32 %t3, 0
  br i1 %t4, label %bb2, label %ok.5, !prof !99
ok.5:
  br label %bb1
bb1:
  br label %bb6
bb2:
  %t6 = load i32, ptr %l2, !tbaa !23
  %t7 = ashr i32 %t6, 16
  %t9 = icmp eq i32 %t7, 1
  store i1 %t9, ptr %l4, !tbaa !21
  %t10 = load i32, ptr %l2, !tbaa !23
  %t11 = ashr i32 %t10, 16
  %t13 = icmp eq i32 %t11, 1
  br i1 %t13, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  br label %bb6
bb6:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fbuild_2esayln(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l2 = alloca i32
  %l4 = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call i32 @std_2fio_2ePrintln(ptr %v0, { i64, ptr } %a0)
  store i32 %t3, ptr %l2
  %t4 = icmp ne i32 %t3, 0
  br i1 %t4, label %bb2, label %ok.5, !prof !99
ok.5:
  br label %bb1
bb1:
  br label %bb6
bb2:
  %t6 = load i32, ptr %l2, !tbaa !23
  %t7 = ashr i32 %t6, 16
  %t9 = icmp eq i32 %t7, 1
  store i1 %t9, ptr %l4, !tbaa !21
  %t10 = load i32, ptr %l2, !tbaa !23
  %t11 = ashr i32 %t10, 16
  %t13 = icmp eq i32 %t11, 1
  br i1 %t13, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  br label %bb6
bb6:
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fbuild_2estatusOf(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca [1 x { i64, ptr }]
  %l2 = alloca %"std/os:Output"
  %l3 = alloca %"std/os:Output"
  %l8 = alloca { i64, ptr }
  %l9 = alloca %"std/os:Output"
  %l10 = alloca i32
  %l12 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = insertvalue [1 x { i64, ptr }] undef, { i64, ptr } %a0, 0
  store [1 x { i64, ptr }] %t3, ptr %l1
  %t6 = insertvalue { i64, ptr } undef, i64 1, 0
  %t7 = insertvalue { i64, ptr } %t6, ptr %l1, 1
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d24, i32 0, i32 1) }, ptr %l8, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t10 = call { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %s0, ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t7, { i64, ptr } %t9, i1 true, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d25, i32 0, i32 1) })
  %t11 = extractvalue { i32, %"std/os:Output" } %t10, 1
  %t12 = extractvalue { i32, %"std/os:Output" } %t10, 0
  store i32 %t12, ptr %l10
  %t13 = icmp ne i32 %t12, 0
  br i1 %t13, label %bb2, label %ok.14, !prof !99
ok.14:
  store %"std/os:Output" %t11, ptr %l9
  br label %bb1
bb1:
  %t15 = load %"std/os:Output", ptr %l9
  store %"std/os:Output" %t15, ptr %l3
  br label %bb6
bb2:
  %t16 = load i32, ptr %l10, !tbaa !23
  %t17 = ashr i32 %t16, 16
  %t19 = icmp eq i32 %t17, 1
  store i1 %t19, ptr %l12, !tbaa !21
  %t20 = load i32, ptr %l10, !tbaa !23
  %t21 = ashr i32 %t20, 16
  %t23 = icmp eq i32 %t21, 1
  br i1 %t23, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  store i32 -1, ptr %rv
  br label %ret
bb6:
  %t26 = load %"std/os:Output", ptr %l3
  store %"std/os:Output" %t26, ptr %l2
  %t27 = getelementptr %"std/os:Output", ptr %l2, i32 0, i32 0
  %t28 = load i32, ptr %t27, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t28, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fbuild_2eunbuilt() #0 {
entry:
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  store i32 1, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fbuild_3aConfig_2ector(ptr %out, ptr %v0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca %"compiler/target:Target"
  %l3 = alloca %"compiler/cond:Consts"
  %l4 = alloca i1
  %l5 = alloca i1
  %l6 = alloca i1
  %l7 = alloca i1
  %l8 = alloca i1
  %l9 = alloca i1
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i1
  %l13 = alloca i1
  %l14 = alloca i1
  %l15 = alloca { i64, ptr }
  %l16 = alloca i1
  %l17 = alloca i1
  %l18 = alloca i1
  %l23 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %l30 = alloca %"compiler/target:Target"
  %l31 = alloca %"compiler/cond:Consts"
  %l32 = alloca i64
  %l34 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l36 = alloca %"compiler/build:Config"
  %t3 = alloca %"compiler/cond:Consts", align 8
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d226, i32 0, i32 1) }, ptr %l0, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d227, i32 0, i32 1) }, ptr %l1, !tbaa !27
  %t1 = call %"compiler/target:Target" @compiler_2ftarget_3aTarget_2ector(ptr %v0)
  store %"compiler/target:Target" %t1, ptr %l30
  br label %bb1
bb1:
  %t2 = load %"compiler/target:Target", ptr %l30
  store %"compiler/target:Target" %t2, ptr %l2
  call void @compiler_2fcond_3aConsts_2ector(ptr %t3, ptr %v0)
  call void @llvm.memmove.p0.p0.i64(ptr %l31, ptr %t3, i64 224, i1 false)
  br label %bb2
bb2:
  call void @llvm.memmove.p0.p0.i64(ptr %l3, ptr %l31, i64 224, i1 false)
  store i1 false, ptr %l4, !tbaa !21
  store i1 false, ptr %l5, !tbaa !21
  store i1 false, ptr %l6, !tbaa !21
  store i1 false, ptr %l7, !tbaa !21
  store i1 false, ptr %l8, !tbaa !21
  store i1 false, ptr %l9, !tbaa !21
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d228, i32 0, i32 1) }, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  store i1 false, ptr %l12, !tbaa !21
  store i1 false, ptr %l13, !tbaa !21
  store i1 false, ptr %l14, !tbaa !21
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d229, i32 0, i32 1) }, ptr %l15, !tbaa !27
  store i1 false, ptr %l16, !tbaa !21
  store i1 false, ptr %l17, !tbaa !21
  store i1 false, ptr %l18, !tbaa !21
  %t4 = ptrtoint ptr %v0 to i64
  store i64 %t4, ptr %l32, !tbaa !24
  %t5 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3aConfig_2e19
  br i1 %t5, label %bb3, label %bb4
bb3:
  %t7 = call ptr @__olang_region_make(ptr %v0)
  %t8 = ptrtoint ptr %t7 to i64
  store i64 %t8, ptr %l32, !tbaa !24
  br label %bb4
bb4:
  %t9 = load i64, ptr %l32
  %t10 = inttoptr i64 %t9 to ptr
  %t11 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t10, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t11, ptr %l34
  br label %bb5
bb5:
  %t12 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3aConfig_2e19
  br i1 %t12, label %bb6, label %bb7
bb6:
  %t14 = load i64, ptr %l32
  %t15 = inttoptr i64 %t14 to ptr
  %t16 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l34, i32 0, i32 0
  %t17 = load { i64, ptr }, ptr %t16
  %t18 = extractvalue { i64, ptr } %t17, 1
  %t19 = call ptr @__olang_region_or(ptr %t18, ptr null)
  %t20 = icmp ne ptr %t19, null
  %t21 = select i1 %t20, ptr %t19, ptr null
  %t22 = icmp eq ptr %t21, %t15
  call void @__olang_region_settle(ptr %t15, i1 %t22)
  br label %bb7
bb7:
  %t23 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l34
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d230, i32 0, i32 1) }, ptr %l23, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d231, i32 0, i32 1) }, ptr %l24, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d232, i32 0, i32 1) }, ptr %l28, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d233, i32 0, i32 1) }, ptr %l29, !tbaa !27
  %t24 = getelementptr %"compiler/build:Config", ptr %l36, i32 0, i32 0
  %t25 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t25, ptr %t24, !tbaa !27
  %t26 = getelementptr %"compiler/build:Config", ptr %l36, i32 0, i32 1
  %t27 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t27, ptr %t26, !tbaa !27
  %t28 = getelementptr %"compiler/build:Config", ptr %l36, i32 0, i32 2
  %t29 = load %"compiler/target:Target", ptr %l2
  store %"compiler/target:Target" %t29, ptr %t28
  %t30 = getelementptr %"compiler/build:Config", ptr %l36, i32 0, i32 3
  call void @llvm.memmove.p0.p0.i64(ptr %t30, ptr %l3, i64 224, i1 false)
  %t31 = getelementptr %"compiler/build:Config", ptr %l36, i32 0, i32 4
  %t32 = load i1, ptr %l4, !tbaa !21
  store i1 %t32, ptr %t31, !tbaa !21
  %t33 = getelementptr %"compiler/build:Config", ptr %l36, i32 0, i32 5
  %t34 = load i1, ptr %l5, !tbaa !21
  store i1 %t34, ptr %t33, !tbaa !21
  %t35 = getelementptr %"compiler/build:Config", ptr %l36, i32 0, i32 6
  %t36 = load i1, ptr %l6, !tbaa !21
  store i1 %t36, ptr %t35, !tbaa !21
  %t37 = getelementptr %"compiler/build:Config", ptr %l36, i32 0, i32 7
  %t38 = load i1, ptr %l7, !tbaa !21
  store i1 %t38, ptr %t37, !tbaa !21
  %t39 = getelementptr %"compiler/build:Config", ptr %l36, i32 0, i32 8
  %t40 = load i1, ptr %l8, !tbaa !21
  store i1 %t40, ptr %t39, !tbaa !21
  %t41 = getelementptr %"compiler/build:Config", ptr %l36, i32 0, i32 9
  %t42 = load i1, ptr %l9, !tbaa !21
  store i1 %t42, ptr %t41, !tbaa !21
  %t43 = getelementptr %"compiler/build:Config", ptr %l36, i32 0, i32 10
  %t44 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t44, ptr %t43, !tbaa !27
  %t45 = getelementptr %"compiler/build:Config", ptr %l36, i32 0, i32 11
  %t46 = load i64, ptr %l11, !tbaa !24
  store i64 %t46, ptr %t45, !tbaa !24
  %t47 = getelementptr %"compiler/build:Config", ptr %l36, i32 0, i32 12
  %t48 = load i1, ptr %l12, !tbaa !21
  store i1 %t48, ptr %t47, !tbaa !21
  %t49 = getelementptr %"compiler/build:Config", ptr %l36, i32 0, i32 13
  %t50 = load i1, ptr %l13, !tbaa !21
  store i1 %t50, ptr %t49, !tbaa !21
  %t51 = getelementptr %"compiler/build:Config", ptr %l36, i32 0, i32 14
  %t52 = load i1, ptr %l14, !tbaa !21
  store i1 %t52, ptr %t51, !tbaa !21
  %t53 = getelementptr %"compiler/build:Config", ptr %l36, i32 0, i32 15
  %t54 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t54, ptr %t53, !tbaa !27
  %t55 = getelementptr %"compiler/build:Config", ptr %l36, i32 0, i32 16
  %t56 = load i1, ptr %l16, !tbaa !21
  store i1 %t56, ptr %t55, !tbaa !21
  %t57 = getelementptr %"compiler/build:Config", ptr %l36, i32 0, i32 17
  %t58 = load i1, ptr %l17, !tbaa !21
  store i1 %t58, ptr %t57, !tbaa !21
  %t59 = getelementptr %"compiler/build:Config", ptr %l36, i32 0, i32 18
  %t60 = load i1, ptr %l18, !tbaa !21
  store i1 %t60, ptr %t59, !tbaa !21
  %t61 = getelementptr %"compiler/build:Config", ptr %l36, i32 0, i32 19
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t23, ptr %t61
  %t63 = getelementptr %"compiler/build:Config", ptr %l36, i32 0, i32 20
  store i64 0, ptr %t63, !tbaa !24
  %t65 = getelementptr %"compiler/build:Config", ptr %l36, i32 0, i32 21
  store i1 false, ptr %t65, !tbaa !21
  %t67 = getelementptr %"compiler/build:Config", ptr %l36, i32 0, i32 22
  store i1 false, ptr %t67, !tbaa !21
  %t69 = getelementptr %"compiler/build:Config", ptr %l36, i32 0, i32 23
  %t70 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t70, ptr %t69, !tbaa !27
  %t71 = getelementptr %"compiler/build:Config", ptr %l36, i32 0, i32 24
  %t72 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t72, ptr %t71, !tbaa !27
  %t73 = getelementptr %"compiler/build:Config", ptr %l36, i32 0, i32 25
  store i64 0, ptr %t73, !tbaa !24
  %t75 = getelementptr %"compiler/build:Config", ptr %l36, i32 0, i32 26
  store i64 0, ptr %t75, !tbaa !24
  %t77 = getelementptr %"compiler/build:Config", ptr %l36, i32 0, i32 27
  store i1 false, ptr %t77, !tbaa !21
  %t79 = getelementptr %"compiler/build:Config", ptr %l36, i32 0, i32 28
  %t80 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t80, ptr %t79, !tbaa !27
  %t81 = getelementptr %"compiler/build:Config", ptr %l36, i32 0, i32 29
  %t82 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t82, ptr %t81, !tbaa !27
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l36, i64 584, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fbuild_3aProgram_2ector(ptr %out, ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca i64
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca i64
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l18 = alloca i64
  %l20 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l22 = alloca i64
  %l24 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l26 = alloca %"compiler/build:Program"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aUnit_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l9
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l0
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d234, i32 0, i32 1) }, ptr %l1, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d235, i32 0, i32 1) }, ptr %l2, !tbaa !27
  %t3 = ptrtoint ptr %v0 to i64
  store i64 %t3, ptr %l10, !tbaa !24
  %t4 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3aProgram_2e3
  br i1 %t4, label %bb2, label %bb3
bb2:
  %t6 = call ptr @__olang_region_make(ptr %v0)
  %t7 = ptrtoint ptr %t6 to i64
  store i64 %t7, ptr %l10, !tbaa !24
  br label %bb3
bb3:
  %t8 = load i64, ptr %l10
  %t9 = inttoptr i64 %t8 to ptr
  %t10 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t9, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %l12
  br label %bb4
bb4:
  %t11 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3aProgram_2e3
  br i1 %t11, label %bb5, label %bb6
bb5:
  %t13 = load i64, ptr %l10
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12, i32 0, i32 0
  %t16 = load { i64, ptr }, ptr %t15
  %t17 = extractvalue { i64, ptr } %t16, 1
  %t18 = call ptr @__olang_region_or(ptr %t17, ptr null)
  %t19 = icmp ne ptr %t18, null
  %t20 = select i1 %t19, ptr %t18, ptr null
  %t21 = icmp eq ptr %t20, %t14
  call void @__olang_region_settle(ptr %t14, i1 %t21)
  br label %bb6
bb6:
  %t22 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t22, ptr %l3
  %t23 = ptrtoint ptr %v0 to i64
  store i64 %t23, ptr %l14, !tbaa !24
  %t24 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3aProgram_2e4
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t26 = call ptr @__olang_region_make(ptr %v0)
  %t27 = ptrtoint ptr %t26 to i64
  store i64 %t27, ptr %l14, !tbaa !24
  br label %bb8
bb8:
  %t28 = load i64, ptr %l14
  %t29 = inttoptr i64 %t28 to ptr
  %t30 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t29, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t30, ptr %l16
  br label %bb9
bb9:
  %t31 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3aProgram_2e4
  br i1 %t31, label %bb10, label %bb11
bb10:
  %t33 = load i64, ptr %l14
  %t34 = inttoptr i64 %t33 to ptr
  %t35 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16, i32 0, i32 0
  %t36 = load { i64, ptr }, ptr %t35
  %t37 = extractvalue { i64, ptr } %t36, 1
  %t38 = call ptr @__olang_region_or(ptr %t37, ptr null)
  %t39 = icmp ne ptr %t38, null
  %t40 = select i1 %t39, ptr %t38, ptr null
  %t41 = icmp eq ptr %t40, %t34
  call void @__olang_region_settle(ptr %t34, i1 %t41)
  br label %bb11
bb11:
  %t42 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t42, ptr %l4
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d236, i32 0, i32 1) }, ptr %l5, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d237, i32 0, i32 1) }, ptr %l6, !tbaa !27
  %t43 = ptrtoint ptr %v0 to i64
  store i64 %t43, ptr %l18, !tbaa !24
  %t44 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3aProgram_2e7
  br i1 %t44, label %bb12, label %bb13
bb12:
  %t46 = call ptr @__olang_region_make(ptr %v0)
  %t47 = ptrtoint ptr %t46 to i64
  store i64 %t47, ptr %l18, !tbaa !24
  br label %bb13
bb13:
  %t48 = load i64, ptr %l18
  %t49 = inttoptr i64 %t48 to ptr
  %t50 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t49, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t50, ptr %l20
  br label %bb14
bb14:
  %t51 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3aProgram_2e7
  br i1 %t51, label %bb15, label %bb16
bb15:
  %t53 = load i64, ptr %l18
  %t54 = inttoptr i64 %t53 to ptr
  %t55 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l20, i32 0, i32 0
  %t56 = load { i64, ptr }, ptr %t55
  %t57 = extractvalue { i64, ptr } %t56, 1
  %t58 = call ptr @__olang_region_or(ptr %t57, ptr null)
  %t59 = icmp ne ptr %t58, null
  %t60 = select i1 %t59, ptr %t58, ptr null
  %t61 = icmp eq ptr %t60, %t54
  call void @__olang_region_settle(ptr %t54, i1 %t61)
  br label %bb16
bb16:
  %t62 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t62, ptr %l7
  %t63 = ptrtoint ptr %v0 to i64
  store i64 %t63, ptr %l22, !tbaa !24
  %t64 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3aProgram_2e8
  br i1 %t64, label %bb17, label %bb18
bb17:
  %t66 = call ptr @__olang_region_make(ptr %v0)
  %t67 = ptrtoint ptr %t66 to i64
  store i64 %t67, ptr %l22, !tbaa !24
  br label %bb18
bb18:
  %t68 = load i64, ptr %l22
  %t69 = inttoptr i64 %t68 to ptr
  %t70 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aCode_3e_2ector(ptr %t69, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t70, ptr %l24
  br label %bb19
bb19:
  %t71 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3aProgram_2e8
  br i1 %t71, label %bb20, label %bb21
bb20:
  %t73 = load i64, ptr %l22
  %t74 = inttoptr i64 %t73 to ptr
  %t75 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l24, i32 0, i32 0
  %t76 = load { i64, ptr }, ptr %t75
  %t77 = extractvalue { i64, ptr } %t76, 1
  %t78 = call ptr @__olang_region_or(ptr %t77, ptr null)
  %t79 = icmp ne ptr %t78, null
  %t80 = select i1 %t79, ptr %t78, ptr null
  %t81 = icmp eq ptr %t80, %t74
  call void @__olang_region_settle(ptr %t74, i1 %t81)
  br label %bb21
bb21:
  %t82 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l24
  %t83 = getelementptr %"compiler/build:Program", ptr %l26, i32 0, i32 0
  %t84 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t84, ptr %t83
  %t85 = getelementptr %"compiler/build:Program", ptr %l26, i32 0, i32 1
  %t86 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t86, ptr %t85, !tbaa !27
  %t87 = getelementptr %"compiler/build:Program", ptr %l26, i32 0, i32 2
  %t88 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t88, ptr %t87, !tbaa !27
  %t89 = getelementptr %"compiler/build:Program", ptr %l26, i32 0, i32 3
  %t90 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t90, ptr %t89
  %t91 = getelementptr %"compiler/build:Program", ptr %l26, i32 0, i32 4
  %t92 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t92, ptr %t91
  %t93 = getelementptr %"compiler/build:Program", ptr %l26, i32 0, i32 5
  %t94 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t94, ptr %t93, !tbaa !27
  %t95 = getelementptr %"compiler/build:Program", ptr %l26, i32 0, i32 6
  %t96 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t96, ptr %t95, !tbaa !27
  %t97 = getelementptr %"compiler/build:Program", ptr %l26, i32 0, i32 7
  %t98 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t98, ptr %t97
  %t99 = getelementptr %"compiler/build:Program", ptr %l26, i32 0, i32 8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t82, ptr %t99
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l26, i64 224, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/build:Unit" @compiler_2fbuild_3aUnit_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, i32 %a1, { i64, ptr } %a2) #0 {
entry:
  %l6 = alloca { i64, ptr }
  %rv = alloca %"compiler/build:Unit"
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d238, i32 0, i32 1) }, ptr %l6, !tbaa !27
  %t8 = insertvalue %"compiler/build:Unit" undef, { i64, ptr } %a0, 0
  %t10 = insertvalue %"compiler/build:Unit" %t8, i32 %a1, 1
  %t12 = insertvalue %"compiler/build:Unit" %t10, { i64, ptr } %a2, 2
  %t13 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t14 = insertvalue %"compiler/build:Unit" %t12, { i64, ptr } %t13, 3
  store %"compiler/build:Unit" %t14, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/build:Unit", ptr %rv
  ret %"compiler/build:Unit" %rr
}

define dso_local void @compiler_2fbuild_3acompiles_2ector(ptr %out, ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca i64
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca i64
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca i64
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l21 = alloca i64
  %l23 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l25 = alloca i64
  %l27 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l29 = alloca i64
  %l31 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l33 = alloca i64
  %l35 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l37 = alloca i64
  %l39 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l41 = alloca i64
  %l43 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l45 = alloca %"compiler/build:compiles"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = ptrtoint ptr %v0 to i64
  store i64 %t1, ptr %l9, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3acompiles_2e0
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v0)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l9, !tbaa !24
  br label %bb2
bb2:
  %t6 = load i64, ptr %l9
  %t7 = inttoptr i64 %t6 to ptr
  %t8 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString_26_3e_26_3e_2ector(ptr %t7, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %l11
  br label %bb3
bb3:
  %t9 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3acompiles_2e0
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t11 = load i64, ptr %l9
  %t12 = inttoptr i64 %t11 to ptr
  %t13 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11, i32 0, i32 0
  %t14 = load { i64, ptr }, ptr %t13
  %t15 = extractvalue { i64, ptr } %t14, 1
  %t16 = call ptr @__olang_region_or(ptr %t15, ptr null)
  %t17 = icmp ne ptr %t16, null
  %t18 = select i1 %t17, ptr %t16, ptr null
  %t19 = icmp eq ptr %t18, %t12
  call void @__olang_region_settle(ptr %t12, i1 %t19)
  br label %bb5
bb5:
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %l0
  %t21 = ptrtoint ptr %v0 to i64
  store i64 %t21, ptr %l13, !tbaa !24
  %t22 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3acompiles_2e1
  br i1 %t22, label %bb6, label %bb7
bb6:
  %t24 = call ptr @__olang_region_make(ptr %v0)
  %t25 = ptrtoint ptr %t24 to i64
  store i64 %t25, ptr %l13, !tbaa !24
  br label %bb7
bb7:
  %t26 = load i64, ptr %l13
  %t27 = inttoptr i64 %t26 to ptr
  %t28 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t27, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t28, ptr %l15
  br label %bb8
bb8:
  %t29 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3acompiles_2e1
  br i1 %t29, label %bb9, label %bb10
bb9:
  %t31 = load i64, ptr %l13
  %t32 = inttoptr i64 %t31 to ptr
  %t33 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15, i32 0, i32 0
  %t34 = load { i64, ptr }, ptr %t33
  %t35 = extractvalue { i64, ptr } %t34, 1
  %t36 = call ptr @__olang_region_or(ptr %t35, ptr null)
  %t37 = icmp ne ptr %t36, null
  %t38 = select i1 %t37, ptr %t36, ptr null
  %t39 = icmp eq ptr %t38, %t32
  call void @__olang_region_settle(ptr %t32, i1 %t39)
  br label %bb10
bb10:
  %t40 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t40, ptr %l1
  %t41 = ptrtoint ptr %v0 to i64
  store i64 %t41, ptr %l17, !tbaa !24
  %t42 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3acompiles_2e2
  br i1 %t42, label %bb11, label %bb12
bb11:
  %t44 = call ptr @__olang_region_make(ptr %v0)
  %t45 = ptrtoint ptr %t44 to i64
  store i64 %t45, ptr %l17, !tbaa !24
  br label %bb12
bb12:
  %t46 = load i64, ptr %l17
  %t47 = inttoptr i64 %t46 to ptr
  %t48 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t47, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t48, ptr %l19
  br label %bb13
bb13:
  %t49 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3acompiles_2e2
  br i1 %t49, label %bb14, label %bb15
bb14:
  %t51 = load i64, ptr %l17
  %t52 = inttoptr i64 %t51 to ptr
  %t53 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19, i32 0, i32 0
  %t54 = load { i64, ptr }, ptr %t53
  %t55 = extractvalue { i64, ptr } %t54, 1
  %t56 = call ptr @__olang_region_or(ptr %t55, ptr null)
  %t57 = icmp ne ptr %t56, null
  %t58 = select i1 %t57, ptr %t56, ptr null
  %t59 = icmp eq ptr %t58, %t52
  call void @__olang_region_settle(ptr %t52, i1 %t59)
  br label %bb15
bb15:
  %t60 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t60, ptr %l2
  %t61 = ptrtoint ptr %v0 to i64
  store i64 %t61, ptr %l21, !tbaa !24
  %t62 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3acompiles_2e3
  br i1 %t62, label %bb16, label %bb17
bb16:
  %t64 = call ptr @__olang_region_make(ptr %v0)
  %t65 = ptrtoint ptr %t64 to i64
  store i64 %t65, ptr %l21, !tbaa !24
  br label %bb17
bb17:
  %t66 = load i64, ptr %l21
  %t67 = inttoptr i64 %t66 to ptr
  %t68 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t67, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t68, ptr %l23
  br label %bb18
bb18:
  %t69 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3acompiles_2e3
  br i1 %t69, label %bb19, label %bb20
bb19:
  %t71 = load i64, ptr %l21
  %t72 = inttoptr i64 %t71 to ptr
  %t73 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l23, i32 0, i32 0
  %t74 = load { i64, ptr }, ptr %t73
  %t75 = extractvalue { i64, ptr } %t74, 1
  %t76 = call ptr @__olang_region_or(ptr %t75, ptr null)
  %t77 = icmp ne ptr %t76, null
  %t78 = select i1 %t77, ptr %t76, ptr null
  %t79 = icmp eq ptr %t78, %t72
  call void @__olang_region_settle(ptr %t72, i1 %t79)
  br label %bb20
bb20:
  %t80 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l23
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t80, ptr %l3
  %t81 = ptrtoint ptr %v0 to i64
  store i64 %t81, ptr %l25, !tbaa !24
  %t82 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3acompiles_2e4
  br i1 %t82, label %bb21, label %bb22
bb21:
  %t84 = call ptr @__olang_region_make(ptr %v0)
  %t85 = ptrtoint ptr %t84 to i64
  store i64 %t85, ptr %l25, !tbaa !24
  br label %bb22
bb22:
  %t86 = load i64, ptr %l25
  %t87 = inttoptr i64 %t86 to ptr
  %t88 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t87, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t88, ptr %l27
  br label %bb23
bb23:
  %t89 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3acompiles_2e4
  br i1 %t89, label %bb24, label %bb25
bb24:
  %t91 = load i64, ptr %l25
  %t92 = inttoptr i64 %t91 to ptr
  %t93 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27, i32 0, i32 0
  %t94 = load { i64, ptr }, ptr %t93
  %t95 = extractvalue { i64, ptr } %t94, 1
  %t96 = call ptr @__olang_region_or(ptr %t95, ptr null)
  %t97 = icmp ne ptr %t96, null
  %t98 = select i1 %t97, ptr %t96, ptr null
  %t99 = icmp eq ptr %t98, %t92
  call void @__olang_region_settle(ptr %t92, i1 %t99)
  br label %bb25
bb25:
  %t100 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t100, ptr %l4
  %t101 = ptrtoint ptr %v0 to i64
  store i64 %t101, ptr %l29, !tbaa !24
  %t102 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3acompiles_2e5
  br i1 %t102, label %bb26, label %bb27
bb26:
  %t104 = call ptr @__olang_region_make(ptr %v0)
  %t105 = ptrtoint ptr %t104 to i64
  store i64 %t105, ptr %l29, !tbaa !24
  br label %bb27
bb27:
  %t106 = load i64, ptr %l29
  %t107 = inttoptr i64 %t106 to ptr
  %t108 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t107, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t108, ptr %l31
  br label %bb28
bb28:
  %t109 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3acompiles_2e5
  br i1 %t109, label %bb29, label %bb30
bb29:
  %t111 = load i64, ptr %l29
  %t112 = inttoptr i64 %t111 to ptr
  %t113 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l31, i32 0, i32 0
  %t114 = load { i64, ptr }, ptr %t113
  %t115 = extractvalue { i64, ptr } %t114, 1
  %t116 = call ptr @__olang_region_or(ptr %t115, ptr null)
  %t117 = icmp ne ptr %t116, null
  %t118 = select i1 %t117, ptr %t116, ptr null
  %t119 = icmp eq ptr %t118, %t112
  call void @__olang_region_settle(ptr %t112, i1 %t119)
  br label %bb30
bb30:
  %t120 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l31
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t120, ptr %l5
  %t121 = ptrtoint ptr %v0 to i64
  store i64 %t121, ptr %l33, !tbaa !24
  %t122 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3acompiles_2e6
  br i1 %t122, label %bb31, label %bb32
bb31:
  %t124 = call ptr @__olang_region_make(ptr %v0)
  %t125 = ptrtoint ptr %t124 to i64
  store i64 %t125, ptr %l33, !tbaa !24
  br label %bb32
bb32:
  %t126 = load i64, ptr %l33
  %t127 = inttoptr i64 %t126 to ptr
  %t128 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t127, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t128, ptr %l35
  br label %bb33
bb33:
  %t129 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3acompiles_2e6
  br i1 %t129, label %bb34, label %bb35
bb34:
  %t131 = load i64, ptr %l33
  %t132 = inttoptr i64 %t131 to ptr
  %t133 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l35, i32 0, i32 0
  %t134 = load { i64, ptr }, ptr %t133
  %t135 = extractvalue { i64, ptr } %t134, 1
  %t136 = call ptr @__olang_region_or(ptr %t135, ptr null)
  %t137 = icmp ne ptr %t136, null
  %t138 = select i1 %t137, ptr %t136, ptr null
  %t139 = icmp eq ptr %t138, %t132
  call void @__olang_region_settle(ptr %t132, i1 %t139)
  br label %bb35
bb35:
  %t140 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l35
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t140, ptr %l6
  %t141 = ptrtoint ptr %v0 to i64
  store i64 %t141, ptr %l37, !tbaa !24
  %t142 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3acompiles_2e7
  br i1 %t142, label %bb36, label %bb37
bb36:
  %t144 = call ptr @__olang_region_make(ptr %v0)
  %t145 = ptrtoint ptr %t144 to i64
  store i64 %t145, ptr %l37, !tbaa !24
  br label %bb37
bb37:
  %t146 = load i64, ptr %l37
  %t147 = inttoptr i64 %t146 to ptr
  %t148 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t147, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t148, ptr %l39
  br label %bb38
bb38:
  %t149 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3acompiles_2e7
  br i1 %t149, label %bb39, label %bb40
bb39:
  %t151 = load i64, ptr %l37
  %t152 = inttoptr i64 %t151 to ptr
  %t153 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l39, i32 0, i32 0
  %t154 = load { i64, ptr }, ptr %t153
  %t155 = extractvalue { i64, ptr } %t154, 1
  %t156 = call ptr @__olang_region_or(ptr %t155, ptr null)
  %t157 = icmp ne ptr %t156, null
  %t158 = select i1 %t157, ptr %t156, ptr null
  %t159 = icmp eq ptr %t158, %t152
  call void @__olang_region_settle(ptr %t152, i1 %t159)
  br label %bb40
bb40:
  %t160 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l39
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t160, ptr %l7
  %t161 = ptrtoint ptr %v0 to i64
  store i64 %t161, ptr %l41, !tbaa !24
  %t162 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3acompiles_2e8
  br i1 %t162, label %bb41, label %bb42
bb41:
  %t164 = call ptr @__olang_region_make(ptr %v0)
  %t165 = ptrtoint ptr %t164 to i64
  store i64 %t165, ptr %l41, !tbaa !24
  br label %bb42
bb42:
  %t166 = load i64, ptr %l41
  %t167 = inttoptr i64 %t166 to ptr
  %t168 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t167, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t168, ptr %l43
  br label %bb43
bb43:
  %t169 = load i1, ptr @olang_2esole_2ecompiler_2fbuild_3acompiles_2e8
  br i1 %t169, label %bb44, label %bb45
bb44:
  %t171 = load i64, ptr %l41
  %t172 = inttoptr i64 %t171 to ptr
  %t173 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l43, i32 0, i32 0
  %t174 = load { i64, ptr }, ptr %t173
  %t175 = extractvalue { i64, ptr } %t174, 1
  %t176 = call ptr @__olang_region_or(ptr %t175, ptr null)
  %t177 = icmp ne ptr %t176, null
  %t178 = select i1 %t177, ptr %t176, ptr null
  %t179 = icmp eq ptr %t178, %t172
  call void @__olang_region_settle(ptr %t172, i1 %t179)
  br label %bb45
bb45:
  %t180 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l43
  %t181 = getelementptr %"compiler/build:compiles", ptr %l45, i32 0, i32 0
  %t182 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t182, ptr %t181
  %t183 = getelementptr %"compiler/build:compiles", ptr %l45, i32 0, i32 1
  %t184 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t184, ptr %t183
  %t185 = getelementptr %"compiler/build:compiles", ptr %l45, i32 0, i32 2
  %t186 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t186, ptr %t185
  %t187 = getelementptr %"compiler/build:compiles", ptr %l45, i32 0, i32 3
  %t188 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t188, ptr %t187
  %t189 = getelementptr %"compiler/build:compiles", ptr %l45, i32 0, i32 4
  %t190 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t190, ptr %t189
  %t191 = getelementptr %"compiler/build:compiles", ptr %l45, i32 0, i32 5
  %t192 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t192, ptr %t191
  %t193 = getelementptr %"compiler/build:compiles", ptr %l45, i32 0, i32 6
  %t194 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t194, ptr %t193
  %t195 = getelementptr %"compiler/build:compiles", ptr %l45, i32 0, i32 7
  %t196 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t196, ptr %t195
  %t197 = getelementptr %"compiler/build:compiles", ptr %l45, i32 0, i32 8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t180, ptr %t197
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l45, i64 288, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/build:stubFrontend" @compiler_2fbuild_3astubFrontend_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"compiler/build:stubFrontend"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"compiler/build:stubFrontend" undef, i64 0, 0
  %t4 = insertvalue %"compiler/build:stubFrontend" %t2, i64 0, 1
  store %"compiler/build:stubFrontend" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/build:stubFrontend", ptr %rv
  ret %"compiler/build:stubFrontend" %rr
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
@.d0 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] [i8 0] }>, align 8
@.d1 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"OLANG_TIMES" }>, align 8
declare void @__olang_errpay_pop()
@.d2 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"olang: " }>, align 8
@.d3 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d4 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" ms\0A" }>, align 8
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
@.d5 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"front" }>, align 8
@.d6 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"lower+emit" }>, align 8
declare void @__olang_check_failed(ptr) cold noreturn
declare i32 @getpid()
@.d7 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d8 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"./" }>, align 8
@.d9 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Hangup" }>, align 8
@.d10 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"Interrupt" }>, align 8
@.d11 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Quit" }>, align 8
@.d12 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"Illegal instruction" }>, align 8
@.d13 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"Trace/breakpoint trap" }>, align 8
@.d14 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"Aborted" }>, align 8
@.d15 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"Bus error" }>, align 8
@.d16 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"Floating point exception" }>, align 8
@.d17 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Killed" }>, align 8
@.d18 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"Segmentation fault" }>, align 8
@.d19 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"Broken pipe" }>, align 8
@.d20 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"Alarm clock" }>, align 8
@.d21 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"Terminated" }>, align 8
@.d22 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"Unknown signal " }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d23 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"test" }>, align 8
@.d24 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d25 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d26 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c": lost track of its build, skipping" }>, align 8
@.d27 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"31" }>, align 8
@.d28 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c": the compiler ended (" }>, align 8
@.d29 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"), skipping" }>, align 8
@.d30 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"31" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d31 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d32 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d33 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d34 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c"no listed file has a test named by " }>, align 8
@.d35 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"31" }>, align 8
@.d36 = private constant <{ i64, [62 x i8] }> <{ i64 0, [62 x i8] c"olang: error: the self-hosted compiler cannot build this yet: " }>, align 8
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
@.d37 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"--target=" }>, align 8
@.d38 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d39 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"--sysroot=" }>, align 8
@.d40 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d41 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"-D_GNU_SOURCE" }>, align 8
@.d42 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"-mllvm" }>, align 8
@.d43 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"-enable-shrink-wrap=false" }>, align 8
@.d44 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"bfloat" }>, align 8
@.d45 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"-mllvm" }>, align 8
@.d46 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"-fast-isel=false" }>, align 8
@.d47 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"-fsave-optimization-record" }>, align 8
@.d48 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c"-foptimization-record-passes=" }>, align 8
@.d49 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c" \22frame-pointer\22=\22all\22" }>, align 8
@.d50 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d51 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"-Wl,-plugin-opt,cache-dir=" }>, align 8
@.d52 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"/thinlto" }>, align 8
@.d53 = private constant <{ i64, [36 x i8] }> <{ i64 0, [36 x i8] c"-Wl,-plugin-opt,-import-instr-limit=" }>, align 8
@.d54 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"-shared" }>, align 8
@.d55 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c".map" }>, align 8
@.d56 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"{\0A  global:\0A" }>, align 8
@.d57 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"    " }>, align 8
@.d58 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c";\0A" }>, align 8
@.d59 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"  local: *;\0A};\0A" }>, align 8
@.d60 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"-Wl,--version-script=" }>, align 8
@.d61 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"-Wl,-soname," }>, align 8
@.d62 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-o" }>, align 8
@.d63 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"-lm" }>, align 8
@.d64 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"-lpthread" }>, align 8
@.d65 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"-ldl" }>, align 8
@.d66 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"-lrt" }>, align 8
@.d67 = private constant <{ i64, [41 x i8] }> <{ i64 0, [41 x i8] c"-Wl,-plugin-opt=-enable-shrink-wrap=false" }>, align 8
@.d68 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"-lffi" }>, align 8
@.d69 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".link" }>, align 8
@.d70 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d71 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d72 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d73 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"--target=" }>, align 8
@.d74 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d75 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"--sysroot=" }>, align 8
@.d76 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d77 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"-fPIC" }>, align 8
@.d78 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d79 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"-fsanitize=fuzzer" }>, align 8
@.d80 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"-O0" }>, align 8
@.d81 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-g" }>, align 8
@.d82 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"-fsanitize=thread" }>, align 8
@.d83 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"-O1" }>, align 8
@.d84 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"-fsanitize=thread" }>, align 8
@.d85 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"-O2" }>, align 8
@.d86 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"-O3" }>, align 8
@.d87 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"-flto=thin" }>, align 8
@.d88 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"-flto" }>, align 8
@.d89 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d90 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d91 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".o" }>, align 8
@.d92 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d93 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"olang_runtime" }>, align 8
@.d94 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d95 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d96 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"olang_dyncall" }>, align 8
@.d97 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d98 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d99 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".lock" }>, align 8
declare i32 @usleep(i32)
@.d100 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"olang_runtime" }>, align 8
@.d101 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d102 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"olang_dyncall" }>, align 8
@.d103 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"-max_total_time=" }>, align 8
@.d104 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"fuzzing " }>, align 8
@.d105 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c": failing inputs go to " }>, align 8
@.d106 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d107 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"36" }>, align 8
@.d108 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"fuzzing " }>, align 8
@.d109 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c": nothing failed" }>, align 8
@.d110 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"32" }>, align 8
@.d111 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"fuzzing " }>, align 8
@.d112 = private constant <{ i64, [28 x i8] }> <{ i64 0, [28 x i8] c": an input failed, saved in " }>, align 8
@.d113 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"/ - 'olang test' replays it" }>, align 8
@.d114 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"31" }>, align 8
@.d115 = private constant <{ i64, [36 x i8] }> <{ i64 0, [36 x i8] c"-Wl,-plugin-opt,-import-instr-limit=" }>, align 8
@.d116 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"-Wl,-plugin-opt=emit-llvm" }>, align 8
@.d117 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"-Wl,-plugin-opt=emit-asm" }>, align 8
@.d118 = private constant <{ i64, [37 x i8] }> <{ i64 0, [37 x i8] c"-Wl,-plugin-opt=opt-remarks-filename=" }>, align 8
@.d119 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"/link.yaml" }>, align 8
@.d120 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c"-Wl,-plugin-opt=opt-remarks-passes=" }>, align 8
@.d121 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-o" }>, align 8
@.d122 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"/code" }>, align 8
@.d123 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"-lm" }>, align 8
@.d124 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"-lpthread" }>, align 8
@.d125 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"-ldl" }>, align 8
@__olang_prog_scope = external thread_local(initialexec) global ptr
@.d126 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d127 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"-lffi" }>, align 8
@.d128 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d129 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d130 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d131 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"/code" }>, align 8
@.d132 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"link" }>, align 8
@.d133 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"/made" }>, align 8
@.d134 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d135 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".race" }>, align 8
@.d136 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d137 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".debug" }>, align 8
@.d138 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d139 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".quick" }>, align 8
@.d140 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d141 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c".san" }>, align 8
@.d142 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d143 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c".lib" }>, align 8
@.d144 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d145 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d146 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".fuzz" }>, align 8
@.d147 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d148 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".prof" }>, align 8
@.d149 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d150 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c".listing" }>, align 8
@.d151 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d152 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".bench" }>, align 8
@.d153 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d154 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"[" }>, align 8
@.d155 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"m" }>, align 8
@.d156 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"[0m" }>, align 8
@.d157 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c": semantic errors, skipping" }>, align 8
@.d158 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"31" }>, align 8
@.d159 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d160 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d161 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d162 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d163 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c".ll" }>, align 8
@.d164 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d165 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c".ll" }>, align 8
@.d166 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"olang_" }>, align 8
@.d167 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d168 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c".tmp.ll" }>, align 8
@.d169 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"source_filename" }>, align 8
@.d170 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"\0Asource_filename" }>, align 8
@.d171 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"source_filename = \22" }>, align 8
@.d172 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"\22\0A" }>, align 8
@.d173 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d174 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d175 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c".tmp" }>, align 8
@.d176 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-c" }>, align 8
@.d177 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-o" }>, align 8
@.d178 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"-foptimization-record-file=" }>, align 8
@.d179 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".yaml" }>, align 8
@olang_2esole_2eArray_3cArray_3cstd_2fprelude_2ftext_3aString_26_3e_26_3e_2e_2d1 = weak hidden constant i1 false
@.d180 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".yaml" }>, align 8
@.d181 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare i64 @sysconf(i32)
@.d182 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"a" }>, align 8
@.d183 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] [i8 -128] }>, align 8
@.d184 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] [i8 0] }>, align 8
@.d185 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".lock" }>, align 8
@.d186 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"/pid" }>, align 8
@.d187 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"N" }>, align 8
@.d188 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"N" }>, align 8
@.d189 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"41" }>, align 8
@.d190 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"attributes #0 = { nounwind " }>, align 8
@.d191 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" }\0A" }>, align 8
@.d192 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"target triple = \22" }>, align 8
@.d193 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"\22\0A" }>, align 8
@olang_2esole_2ecompiler_2fbuild_3aUnit_2e2 = weak hidden constant i1 false
@.d194 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c"define i32 @lib_n() #0 {\0A  ret i32 " }>, align 8
@.d195 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"\0A}\0A" }>, align 8
@.d196 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"lib" }>, align 8
@.d197 = private constant <{ i64, [36 x i8] }> <{ i64 0, [36 x i8] c"define i32 @util_k() #0 {\0A  ret i32 " }>, align 8
@.d198 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"\0A}\0A" }>, align 8
@.d199 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"util" }>, align 8
@.d200 = private constant <{ i64, [90 x i8] }> <{ i64 0, [90 x i8] c"declare i32 @lib_n()\0Adeclare i32 @util_k()\0Adeclare i32 @inst_z()\0Adeclare void @olang_rt()\0A" }>, align 8
@.d201 = private constant <{ i64, [73 x i8] }> <{ i64 0, [73 x i8] c"define i32 @main() #0 {\0A  call void @olang_rt()\0A  %a = call i32 @lib_n()\0A" }>, align 8
@.d202 = private constant <{ i64, [96 x i8] }> <{ i64 0, [96 x i8] c"  %b = call i32 @util_k()\0A  %c = call i32 @inst_z()\0A  %s = add i32 %a, %b\0A  %t = add i32 %s, %c\0A" }>, align 8
@.d203 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"  ret i32 %t\0A}\0A" }>, align 8
@.d204 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"app" }>, align 8
@.d205 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c"define i32 @inst_z() #0 {\0A  ret i32 0\0A}\0A" }>, align 8
@.d206 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"app" }>, align 8
@olang_2esole_2ecompiler_2fbuild_3aProgram_2e1 = weak hidden constant i1 false
@.d207 = private constant <{ i64, [42 x i8] }> <{ i64 0, [42 x i8] c"define void @olang_rt() #0 {\0A  ret void\0A}\0A" }>, align 8
declare void @__olang_region_release(ptr) noinline
@.d208 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"/pid" }>, align 8
@.d209 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d210 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"/proc/" }>, align 8
@.d211 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d212 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".main" }>, align 8
@.d213 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".test" }>, align 8
@.d214 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".inst" }>, align 8
@.d215 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c".loc" }>, align 8
@.d216 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d217 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@__olang_empty_array = external constant [16 x i64]
define internal i1 @olang_lambda_218(ptr %env, ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l7 = alloca i1
  %l13 = alloca i1
  %l16 = alloca i1
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t4 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t9 = icmp slt i64 %t3, %t6
  br i1 %t9, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb7
bb2:
  %t11 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t11, 0
  %t14 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t14, 0
  %t19 = icmp eq i64 %t13, %t16
  br i1 %t19, label %bb3, label %bb4
bb3:
  %t21 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t22 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t25 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLess(ptr %v0, ptr %v1, { i64, ptr } %t21, { i64, ptr } %t22)
  store i1 %t25, ptr %l16
  br label %bb5
bb4:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb6
bb5:
  %t26 = load i1, ptr %l16, !tbaa !21
  store i1 %t26, ptr %l13, !tbaa !21
  br label %bb6
bb6:
  %t27 = load i1, ptr %l13, !tbaa !21
  store i1 %t27, ptr %l7, !tbaa !21
  br label %bb7
bb7:
  %t28 = load i1, ptr %l7, !tbaa !21
  store i1 %t28, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@.d219 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".yaml" }>, align 8
@.d220 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d221 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"made" }>, align 8
@.d222 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".yaml" }>, align 8
@.d223 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".in.ll" }>, align 8
@.d224 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c".ll" }>, align 8
@.d225 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d226 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"build" }>, align 8
@.d227 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d228 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d229 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fbuild_3aConfig_2e19 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
@.d230 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d231 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d232 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d233 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d234 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d235 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fbuild_3aProgram_2e3 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbuild_3aProgram_2e4 = weak hidden constant i1 false
@.d236 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d237 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fbuild_3aProgram_2e7 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbuild_3aProgram_2e8 = weak hidden constant i1 false
@.d238 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fbuild_3acompiles_2e0 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbuild_3acompiles_2e1 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbuild_3acompiles_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbuild_3acompiles_2e3 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbuild_3acompiles_2e4 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbuild_3acompiles_2e5 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbuild_3acompiles_2e6 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbuild_3acompiles_2e7 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbuild_3acompiles_2e8 = weak hidden constant i1 false
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
declare %"compiler/build:Sha256" @compiler_2fbuild_3aSha256_2ector(ptr %v0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @std_2ftime_2eNow()
declare void @compiler_2fbuild_2esayErr(ptr %v0, { i64, ptr } %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @std_2fos_2eExit(i32 %a0)
@olang_loc_1a0af222d89a1264_6ae848cde6020298 = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_84eba90bdad5d702_427cd4b75eaf1c36 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v0, ptr %v1, ptr %a0)
declare { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, i1 %a2, { i64, ptr } %a3)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare i32 @std_2fos_2eRemoveAll(ptr %v0, { i64, ptr } %a0)
declare i32 @std_2fos_2eMkDirAll(ptr %v0, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCannotOpen(ptr %v0)
declare void @compiler_2fbuild_2efileFatal(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, %"compiler/diagmsg:Msg" %a1, ptr %a2)
declare i64 @compiler_2fmsgs_2eDistance(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_7d17f382592ac8ef_3cd22268ed245003 = external constant [0 x i8]
declare { i64, ptr } @compiler_2ftarget_2eSysroot(ptr %v0)
declare i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare i32 @std_2fos_2eWriteFile(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2ffilepath_2eBase(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eclangVersion(ptr %v0, ptr %v1, ptr %a0)
declare i32 @std_2fos_2eRemove(ptr %v0, { i64, ptr } %a0)
declare { i32, %"std/os:FileInfo" } @std_2fos_2eFileInfo_2eStat(ptr %v0, { i64, ptr } %a0)
@olang_loc_4cf283899a273ea5_54dbe84ebef87a69 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aUnit_3e_2eLen_3ccompiler_2fbuild_3aUnit_3e(ptr %v0, ptr %a0)
declare %"compiler/build:Unit" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aUnit_3e_2eAt_3ccompiler_2fbuild_3aUnit_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fbuild_2eReadable(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2ecompile(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fos_2eExists(ptr %v0, { i64, ptr } %a0)
declare i1 @compiler_2fbuild_2emadeBefore(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"std/os:Output" @std_2fos_3aOutput_2ector(ptr %v0, ptr %v1, ptr %v2, i32 %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLinkFailed(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eFatal(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2ebitcodeText(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, ptr %a2)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare { i32, { i64, ptr } } @compiler_2ftarget_2ecompiler_2ftarget_3aTarget_2eRunner(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTargetNoEmulator(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eRender(ptr %v0, ptr %v1, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eDataFlags(ptr %v0, ptr %v1, ptr %a0)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H0127831368543eff3b7740d7d3240080(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fbuild_2eRemarksOf(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_81dfa638548de3d7_ab0731b6a5acba3 = external constant [0 x i8]
declare i32 @std_2fos_2eLink(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_64cef890f5e30dfa_ab05d47f854753c6 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_adf83e678ec27f19_e5a5f2a4f92e5ce5 = external constant [0 x i8]
@olang_loc_d790d12bf07ae06c_96ebe5e6b28bd688 = external constant [0 x i8]
declare i32 @std_2fos_2eRename(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoClang(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__Hdba28025cac729fb3c994cc5728b4c22(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %v0, i64 %a0)
declare { i64, ptr } @std_2fprelude_2ftext_2eU32_2eFormat(ptr %v0, i32 %a0, i64 %a1)
@olang_loc_8179dc362f2d1bfc_fef952a35fe3ad58 = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2ePadStart(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i8 %a2)
declare void @compiler_2fbuild_2ecompiler_2fbuild_3aSha256_2ecompress(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2)
declare i32 @std_2fos_2eMkDir(ptr %v0, { i64, ptr } %a0)
declare i1 @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eHas(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eRaw(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aUnit_3e_2ePush_3ccompiler_2fbuild_3aUnit_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/build:Unit" %a1)
declare { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eSummary(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2ftime_2eWall()
declare { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_7cb1cbeb873878be_a9deaf72b78184ba = external constant [0 x i8]
declare { i32, { i64, ptr } } @std_2fos_2eReadDir(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_46572e8a3ed1f877_752b2fa47e3744e3 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H1642129570dad448bb7dcc47c334de83(ptr %v0, ptr %v1, ptr %a0, ptr %a1c, ptr %a1e)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @std_2fio_2ePrint(ptr %v0, { i64, ptr } %a0)
declare i32 @std_2fio_2ePrintln(ptr %v0, { i64, ptr } %a0)
declare %"compiler/target:Target" @compiler_2ftarget_3aTarget_2ector(ptr %v0)
declare void @compiler_2fcond_3aConsts_2ector(ptr %out, ptr %v0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aUnit_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aCode_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString_26_3e_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
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

attributes #0 = { null_pointer_is_valid "target-cpu"="sapphirerapids" "target-features"="+64bit,+adx,+aes,+amx-bf16,+amx-int8,+amx-tile,+avx,+avx2,-avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512fp16,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+cldemote,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+rtm,+sahf,+serialize,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+tsxldtrk,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-complex,-amx-fp16,-avx10.1-256,-avx10.1-512,-avx512er,-avx512pf,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnniint16,-avxvnniint8,-clzero,-cmpccxadd,-enqcmd,-fma4,-hreset,-kl,-lwp,-mwaitx,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rdpru,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-uintr,-usermsr,-waitpkg,-widekl,-xop" "prefer-vector-width"="512" nounwind }
